module SqlContent
  LESSONS = {
    1 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-sql">SQL</div>
          <h1 class="lc-title">Introduction to SQL</h1>
        </div>
        <p class="lc-lead">SQL (Structured Query Language) is the standard language for working with <strong>relational databases</strong>. You use it to create tables and add data. You also use it to ask questions about that data and to change it safely. Banks, railway booking systems, shopping apps and hospitals all keep their data in SQL databases.</p>

        <div class="lc-card">
          <h3>What Is a Relational Database?</h3>
          <p>A relational database stores data in <strong>tables</strong>. A table looks like a spreadsheet, but it has strict rules:</p>
          <ul class="lc-list">
            <li><strong>Columns</strong> have a name and a data type (the kind of value they hold, for example <code>name TEXT</code>, <code>marks INTEGER</code>).</li>
            <li><strong>Rows</strong> are single records: one student, one order, one payment.</li>
            <li>Each table usually has a <strong>primary key</strong>. This is a column whose value points to exactly one row.</li>
            <li>Tables are <strong>related</strong> (linked) when one table stores the key of another table (for example a student's <code>city_id</code>, an order's <code>customer_id</code>).</li>
          </ul>
          <p>A <strong>DBMS</strong> (database management system) is the software that stores the tables and runs your SQL. Popular ones are PostgreSQL, MySQL, SQLite, Microsoft SQL Server and Oracle.</p>
        </div>

        <div class="lc-card">
          <h3>SQL Is Declarative</h3>
          <p>Declarative means you say what you want, not how to get it. In Python or Java you write the <em>steps</em>: loop over the list, check each item, add it to a result. In SQL you describe <em>what</em> you want. The database decides <em>how</em> to get it (which index to use, and in what order to read tables).</p>
        <div class="lc-code">-- "Give me the names and marks of students with 80 or more, best first"<br>SELECT name, marks<br>FROM students<br>WHERE marks &gt;= 80<br>ORDER BY marks DESC;</div>
          <p>Expected output (with the table from the starter code):</p>
        <div class="lc-code">name&nbsp;&nbsp;&nbsp;marks<br>-----&nbsp;&nbsp;-----<br>Priya&nbsp;&nbsp;92<br>Kiran&nbsp;&nbsp;85<br>Arjun&nbsp;&nbsp;81</div>
        </div>

        <div class="lc-card">
          <h3>The Main Groups of SQL Statements</h3>
          <table class="lc-table">
            <thead><tr><th>Group</th><th>Statements</th><th>What they do</th></tr></thead>
            <tbody>
              <tr><td>DDL: Data Definition</td><td><code>CREATE</code>, <code>ALTER</code>, <code>DROP</code></td><td>Define tables, indexes, views</td></tr>
              <tr><td>DML: Data Manipulation</td><td><code>INSERT</code>, <code>UPDATE</code>, <code>DELETE</code></td><td>Add, change and remove rows</td></tr>
              <tr><td>DQL: Query</td><td><code>SELECT</code></td><td>Read data (often counted as part of DML)</td></tr>
              <tr><td>TCL: Transaction Control</td><td><code>BEGIN</code>, <code>COMMIT</code>, <code>ROLLBACK</code></td><td>Group changes so they all succeed or all fail together</td></tr>
              <tr><td>DCL: Data Control</td><td><code>GRANT</code>, <code>REVOKE</code></td><td>Give or take away permissions (who can read or change which tables). Server databases such as PostgreSQL and MySQL have them. SQLite has no users, so it has no DCL</td></tr>
            </tbody>
          </table>
          <p>INSERT / SELECT / UPDATE / DELETE together are often called <strong>CRUD</strong>: Create, Read, Update, Delete.</p>
        </div>

        <div class="lc-card">
          <h3>Standard SQL and Dialects</h3>
          <p>SQL is an ISO standard. But every database adds its own extra features. This version of SQL is called a <strong>dialect</strong>. The core you learn here (SELECT, WHERE, JOIN, GROUP BY, window functions, transactions) works almost everywhere.</p>
          <table class="lc-table">
            <thead><tr><th>Database</th><th>Runs as</th><th>Typical use</th></tr></thead>
            <tbody>
              <tr><td>SQLite</td><td>A library inside your app. The whole database is one file</td><td>Mobile apps, browsers, small tools, learning</td></tr>
              <tr><td>PostgreSQL</td><td>A server you connect to over the network</td><td>Web apps, analytics, most new projects</td></tr>
              <tr><td>MySQL</td><td>A server you connect to over the network</td><td>Web apps (WordPress, many PHP/Node sites)</td></tr>
            </tbody>
          </table>
          <p><strong>This course's editor runs real SQLite</strong> in your browser. When SQLite is different from PostgreSQL or MySQL, the lesson tells you.</p>
        </div>

        <div class="lc-card">
          <h3>How to Read a Query</h3>
          <ul class="lc-list">
            <li>A statement ends with a semicolon <code>;</code>.</li>
            <li>Keywords are not case-sensitive (<code>select</code> = <code>SELECT</code>). But most people write them in UPPERCASE.</li>
            <li>Text values go in <strong>single quotes</strong>: <code>'Kerala'</code>. Double quotes are for identifiers (names of columns or tables).</li>
            <li><code>--</code> starts a comment (a note the database ignores). It goes to the end of the line.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Writing text in double quotes. <code>WHERE state = "Kerala"</code> is wrong in standard SQL. Use <code>'Kerala'</code>.</li>
            <li>Forgetting the semicolon between two statements.</li>
            <li>Thinking rows come back in a fixed order. Without <code>ORDER BY</code>, the order can change.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Try It</h3>
          <p>In the starter code, add a sixth student from your own state. Then write a query that shows only students from <code>'Punjab'</code>. How many rows do you get?</p>
        </div>

        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Read a SELECT in this order: <em>FROM</em> (which table?) → <em>WHERE</em> (which rows?) → <em>SELECT</em> (which columns?) → <em>ORDER BY</em> (in what order?). This is close to the order in which the database works through it.
        </div>
      HTML
      starter_code: <<~'SQL'
        -- Introduction to SQL
        -- 1. DDL: define a table
        CREATE TABLE students (
            id    INTEGER PRIMARY KEY,
            name  TEXT    NOT NULL,
            state  TEXT,
            marks INTEGER
        );

        -- 2. DML: add rows
        INSERT INTO students (id, name, state, marks) VALUES
            (1, 'Priya', 'Punjab', 92),
            (2, 'Arjun', 'Kerala',      81),
            (3, 'Meera', 'Assam',     74),
            (4, 'Kiran', 'Punjab', 85),
            (5, 'Rahul', 'Odisha',  67);

        -- 3. Query: every row and column
        SELECT * FROM students;

        -- 4. Query: a declarative question
        --    "names and marks of students with 80+, best first"
        SELECT name, marks
        FROM students
        WHERE marks >= 80
        ORDER BY marks DESC;

        -- 5. Query: a quick summary
        SELECT COUNT(*)   AS total_students,
               MAX(marks) AS top_marks,
               MIN(marks) AS lowest_marks
        FROM students;
      SQL
    },

    2 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-sql">SQL</div>
          <h1 class="lc-title">CREATE TABLE and Data Types</h1>
        </div>
        <p class="lc-lead"><code>CREATE TABLE</code> makes a new table. It sets the table's columns, their data types and their rules. Good types keep bad data out. They also make calculations correct, mainly for money and dates.</p>

        <div class="lc-card">
          <h3>CREATE TABLE Syntax</h3>
        <div class="lc-code">CREATE TABLE products (<br>&nbsp;&nbsp;&nbsp;&nbsp;id&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;INTEGER PRIMARY KEY,&nbsp;&nbsp;&nbsp;-- unique id for each row<br>&nbsp;&nbsp;&nbsp;&nbsp;name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;TEXT&nbsp;&nbsp;&nbsp;&nbsp;NOT NULL,&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-- must have a value<br>&nbsp;&nbsp;&nbsp;&nbsp;category&nbsp;&nbsp;&nbsp;&nbsp;TEXT,&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-- may be NULL (unknown)<br>&nbsp;&nbsp;&nbsp;&nbsp;price_paise INTEGER NOT NULL,&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-- money as whole paise: 49900 = Rs 499.00<br>&nbsp;&nbsp;&nbsp;&nbsp;in_stock&nbsp;&nbsp;&nbsp;&nbsp;INTEGER DEFAULT 1,&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-- 1 = true, 0 = false<br>&nbsp;&nbsp;&nbsp;&nbsp;added_on&nbsp;&nbsp;&nbsp;&nbsp;TEXT&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-- ISO date 'YYYY-MM-DD'<br>);</div>
          <ul class="lc-list">
            <li><code>PRIMARY KEY</code>: each row's key value must be unique and not NULL (empty).</li>
            <li><code>NOT NULL</code>: the column must always have a value.</li>
            <li><code>DEFAULT</code>: the value used when an INSERT does not give one.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Common Types in Different Databases</h3>
          <table class="lc-table">
            <thead><tr><th>Kind of data</th><th>Standard / PostgreSQL / MySQL</th><th>SQLite</th></tr></thead>
            <tbody>
              <tr><td>Whole numbers</td><td><code>INTEGER</code>, <code>BIGINT</code></td><td><code>INTEGER</code></td></tr>
              <tr><td>Exact decimals (money)</td><td><code>DECIMAL(10,2)</code> / <code>NUMERIC(10,2)</code></td><td><code>INTEGER</code> holding paise/cents</td></tr>
              <tr><td>Approximate decimals (measurements)</td><td><code>REAL</code>, <code>DOUBLE PRECISION</code></td><td><code>REAL</code></td></tr>
              <tr><td>Text</td><td><code>VARCHAR(n)</code>, <code>TEXT</code></td><td><code>TEXT</code></td></tr>
              <tr><td>True/false</td><td><code>BOOLEAN</code></td><td><code>INTEGER</code> 0 / 1 (TRUE and FALSE are other names for 1 and 0)</td></tr>
              <tr><td>Dates and times</td><td><code>DATE</code>, <code>TIMESTAMP</code></td><td><code>TEXT</code> in ISO format <code>'2026-09-25'</code></td></tr>
            </tbody>
          </table>
        </div>

        <div class="lc-card">
          <h3>Why Money Is Never REAL or FLOAT</h3>
          <p><code>REAL</code>/<code>FLOAT</code> store numbers in binary, so they are only close to the real value. <code>0.1</code> cannot be stored exactly. So small errors slowly get into totals.</p>
        <div class="lc-code">SELECT 0.1 + 0.2 = 0.3 AS is_equal;&nbsp;&nbsp;&nbsp;-- 0 (false!)<br>SELECT 10 + 20 = 30&nbsp;&nbsp;&nbsp;AS is_equal;&nbsp;&nbsp;&nbsp;-- 1 (integers are exact)</div>
          <p>There are two safe options. In PostgreSQL or MySQL, use <code>DECIMAL(10,2)</code>, an exact decimal type. In SQLite, <code>DECIMAL</code> is only a label (values may still be stored as REAL). So store <strong>whole paise as INTEGER</strong>. Divide by 100 only when you show the value: <code>printf('%.2f', price_paise / 100.0)</code>.</p>
        </div>

        <div class="lc-card">
          <h3>SQLite's Flexible Typing and STRICT Tables</h3>
          <p>SQLite uses <strong>type affinity</strong>: a column's type is a preference, not a rule. A normal <code>INTEGER</code> column will accept the text <code>'abc'</code> without any error. Since SQLite 3.37 you can add <code>STRICT</code> to reject wrong types. This works more like PostgreSQL:</p>
        <div class="lc-code">CREATE TABLE payments (<br>&nbsp;&nbsp;&nbsp;&nbsp;id&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;INTEGER PRIMARY KEY,<br>&nbsp;&nbsp;&nbsp;&nbsp;amount_paise INTEGER NOT NULL<br>) STRICT;<br>-- INSERT INTO payments VALUES (1, 'abc');&nbsp;&nbsp;-- error: cannot store TEXT in INTEGER column</div>
          <p><code>typeof(x)</code> shows how a value is actually stored: <code>integer</code>, <code>real</code>, <code>text</code>, <code>blob</code> or <code>null</code>.</p>
        </div>

        <div class="lc-card">
          <h3>A Primary Key Stops Duplicate Keys, Not Duplicate Data</h3>
          <p>If <code>id</code> is the primary key, two rows cannot have the same id. But two rows <em>can</em> have the same name and price, with ids 5 and 6. To stop duplicate products, add a <code>UNIQUE</code> constraint (a rule that no two rows can share a value). Put it on the column that must be unique (for example <code>sku TEXT UNIQUE</code>). You will see this in the Constraints lesson.</p>
        </div>

        <div class="lc-card">
          <h3>Changing and Removing Tables</h3>
        <div class="lc-code">ALTER TABLE products ADD COLUMN brand TEXT;&nbsp;&nbsp;&nbsp;-- add a column<br>ALTER TABLE products RENAME TO items;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-- rename the table<br>DROP TABLE IF EXISTS old_products;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-- delete a table (no error if missing)</div>
        </div>

        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Storing prices as <code>REAL</code> and then comparing totals with <code>=</code>.</li>
            <li>Storing dates as <code>'25/09/2026'</code>. They will not sort or compare correctly. Use <code>'2026-09-25'</code>.</li>
            <li>Thinking a primary key stops duplicate records. It only stops duplicate key values.</li>
            <li>Running <code>DROP TABLE</code> on the wrong table. There is no undo outside a transaction.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Try It</h3>
          <p>Create a STRICT table <code>fees</code> with <code>student_id INTEGER</code>, <code>amount_paise INTEGER</code> and <code>paid_on TEXT</code>. Insert a fee of Rs 12,500.50. Show it as <code>12500.50</code> with <code>printf</code>.</p>
        </div>

        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Name money columns with their unit (<code>price_paise</code>, <code>amount_cents</code>). Then anyone who reads the schema (the table design) knows that 49900 means Rs 499.00, not Rs 49,900.
        </div>
      HTML
      starter_code: <<~'SQL'
        -- CREATE TABLE and Data Types
        CREATE TABLE products (
            id          INTEGER PRIMARY KEY,
            name        TEXT    NOT NULL,
            category    TEXT,
            price_paise INTEGER NOT NULL,   -- whole paise: exact money
            in_stock    INTEGER DEFAULT 1,  -- 1 = true, 0 = false
            added_on    TEXT                -- ISO date
        ) STRICT;

        INSERT INTO products (id, name, category, price_paise, added_on) VALUES
            (1, 'Notebook', 'Stationery',  4950, '2026-01-10'),
            (2, 'Backpack', 'Bags',       89900, '2026-02-03'),
            (3, 'Pen Set',  'Stationery', 12050, '2026-03-15');

        -- in_stock was not given, so DEFAULT 1 was used
        SELECT id, name, in_stock,
               printf('%.2f', price_paise / 100.0) AS price_rupees
        FROM products;

        -- How are values really stored?
        SELECT typeof(price_paise) AS price_type,
               typeof(added_on)    AS date_type,
               typeof(category)    AS category_type
        FROM products WHERE id = 1;

        -- Floating point is approximate; integers are exact
        SELECT 0.1 + 0.2 = 0.3 AS float_equal,
               10 + 20 = 30    AS integer_equal;

        -- A primary key stops duplicate KEYS, not duplicate data:
        INSERT INTO products (id, name, category, price_paise) VALUES
            (4, 'Pen Set', 'Stationery', 12050);
        SELECT id, name, price_paise FROM products WHERE name = 'Pen Set';

        -- Total stock value, exact to the paisa
        SELECT printf('%.2f', SUM(price_paise) / 100.0) AS total_rupees FROM products;
      SQL
    },

    3 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-sql">SQL</div>
          <h1 class="lc-title">Inserting Data</h1>
        </div>
        <p class="lc-lead"><code>INSERT</code> adds new rows to a table. You will learn the safe form (always list the columns) and how to insert many rows at once. You will also learn about defaults and automatic ids. Finally, you will copy rows with <code>INSERT ... SELECT</code> and get new values back with <code>RETURNING</code>.</p>

        <div class="lc-card">
          <h3>The Safe Form: Name Your Columns</h3>
        <div class="lc-code">INSERT INTO books (title, author, price_paise)<br>VALUES ('Wings of Fire', 'A. P. J. Abdul Kalam', 39900);</div>
          <p>When you list the columns, the statement still works if someone later adds a column or changes the column order. The short form <code>INSERT INTO books VALUES (...)</code> must give every column in the exact table order. It breaks as soon as the table changes.</p>
        </div>

        <div class="lc-card">
          <h3>Automatic IDs</h3>
          <p>In SQLite, a column set as <code>INTEGER PRIMARY KEY</code> gets the next number automatically when you leave it out. (PostgreSQL uses <code>GENERATED ALWAYS AS IDENTITY</code>; MySQL uses <code>AUTO_INCREMENT</code>.)</p>
        <div class="lc-code">CREATE TABLE books (<br>&nbsp;&nbsp;&nbsp;&nbsp;id&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;INTEGER PRIMARY KEY,<br>&nbsp;&nbsp;&nbsp;&nbsp;title&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;TEXT NOT NULL,<br>&nbsp;&nbsp;&nbsp;&nbsp;author&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;TEXT NOT NULL,<br>&nbsp;&nbsp;&nbsp;&nbsp;price_paise INTEGER NOT NULL,<br>&nbsp;&nbsp;&nbsp;&nbsp;copies&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;INTEGER DEFAULT 1<br>);<br>INSERT INTO books (title, author, price_paise) VALUES ('Godan', 'Premchand', 25000);<br>SELECT id, title, copies FROM books;</div>
        <div class="lc-code">id&nbsp;&nbsp;title&nbsp;&nbsp;copies<br>--&nbsp;&nbsp;-----&nbsp;&nbsp;------<br>1&nbsp;&nbsp;&nbsp;Godan&nbsp;&nbsp;1</div>
          <p>Both <code>id</code> (automatic) and <code>copies</code> (DEFAULT) were filled in for you.</p>
        </div>

        <div class="lc-card">
          <h3>Many Rows in One Statement</h3>
        <div class="lc-code">INSERT INTO books (title, author, price_paise, copies) VALUES<br>&nbsp;&nbsp;&nbsp;&nbsp;('The Guide',&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;'R. K. Narayan', 29900, 3),<br>&nbsp;&nbsp;&nbsp;&nbsp;('Train to Pakistan', 'Khushwant Singh', 35000, 2),<br>&nbsp;&nbsp;&nbsp;&nbsp;('Malgudi Days',&nbsp;&nbsp;&nbsp;&nbsp;'R. K. Narayan', 19900, 5);</div>
          <p>One multi-row insert is faster than many single inserts. SQLite, PostgreSQL and MySQL all support it.</p>
        </div>

        <div class="lc-card">
          <h3>Quotes Inside Text, and NULL</h3>
        <div class="lc-code">INSERT INTO books (title, author, price_paise) VALUES ('Don''t Stop', 'Anon', 10000);<br>-- Two single quotes '' inside a string mean one literal quote.<br>INSERT INTO reviews (book_id, stars, comment) VALUES (1, 5, NULL);<br>-- NULL means "no value / unknown". It is not the text 'NULL' and not 0.</div>
        </div>

        <div class="lc-card">
          <h3>INSERT ... SELECT and RETURNING</h3>
        <div class="lc-code">-- Copy the results of a query into another table<br>INSERT INTO bestsellers (book_id, title)<br>SELECT id, title FROM books WHERE copies &gt;= 3;<br><br>-- Get the generated id straight back (SQLite 3.35+, PostgreSQL; not MySQL)<br>INSERT INTO books (title, author, price_paise)<br>VALUES ('Gitanjali', 'Rabindranath Tagore', 15000)<br>RETURNING id, title;</div>
          <table class="lc-table">
            <thead><tr><th>Form</th><th>Use it when</th></tr></thead>
            <tbody>
              <tr><td><code>INSERT ... VALUES (...)</code></td><td>You have literal values</td></tr>
              <tr><td><code>INSERT ... VALUES (...), (...)</code></td><td>You load several rows at once</td></tr>
              <tr><td><code>INSERT ... SELECT</code></td><td>You copy or summarise existing rows</td></tr>
              <tr><td><code>... RETURNING</code></td><td>You need the new id or default values right away</td></tr>
            </tbody>
          </table>
        </div>

        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Leaving out the column list, so values go into the wrong columns.</li>
            <li>Writing <code>'NULL'</code> in quotes. That stores the four-letter text, not a missing value.</li>
            <li>Building INSERT strings by pasting user input into SQL. In application code, always use <strong>parameters</strong> (<code>?</code> placeholders). They stop SQL injection (an attack where user input changes your SQL).</li>
            <li>Giving a different number of values than columns. The database rejects the row.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Try It</h3>
          <p>Add two books by Ruskin Bond in one INSERT, with <code>RETURNING id, title</code>. Then insert every book priced under Rs 200 into <code>budget_books</code> with <code>INSERT ... SELECT</code>.</p>
        </div>

        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> When you load thousands of rows, put all the inserts in one transaction (<code>BEGIN; ... COMMIT;</code>). Each separate commit forces a write to disk. So one transaction can be many times faster.
        </div>
      HTML
      starter_code: <<~'SQL'
        -- Inserting Data
        CREATE TABLE books (
            id          INTEGER PRIMARY KEY,   -- filled automatically
            title       TEXT    NOT NULL,
            author      TEXT    NOT NULL,
            price_paise INTEGER NOT NULL,
            copies      INTEGER DEFAULT 1
        );
        CREATE TABLE budget_books (book_id INTEGER, title TEXT);

        -- One row, columns named, id and copies left to the database
        INSERT INTO books (title, author, price_paise)
        VALUES ('Godan', 'Premchand', 25000);

        -- Several rows at once
        INSERT INTO books (title, author, price_paise, copies) VALUES
            ('The Guide',         'R. K. Narayan',   29900, 3),
            ('Train to Pakistan', 'Khushwant Singh', 35000, 2),
            ('Malgudi Days',      'R. K. Narayan',   19900, 5);

        -- A quote inside text is written as two quotes
        INSERT INTO books (title, author, price_paise)
        VALUES ('Don''t Stop Dreaming', 'Anon', 10000);

        -- RETURNING gives back the generated id
        INSERT INTO books (title, author, price_paise)
        VALUES ('Gitanjali', 'Rabindranath Tagore', 15000)
        RETURNING id AS new_id, title, copies;

        -- Copy rows with INSERT ... SELECT (books under Rs 200)
        INSERT INTO budget_books (book_id, title)
        SELECT id, title FROM books WHERE price_paise < 20000;

        SELECT id, title, author, price_paise, copies FROM books;
        SELECT * FROM budget_books;
      SQL
    },

    4 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-sql">SQL</div>
          <h1 class="lc-title">SELECT Queries</h1>
        </div>
        <p class="lc-lead"><code>SELECT</code> reads data. It can pick columns and calculate new values. It can rename results with aliases and remove duplicates with <code>DISTINCT</code>. A SELECT never changes the table. It only makes a result set (the rows it returns).</p>

        <div class="lc-card">
          <h3>Choosing Columns</h3>
        <div class="lc-code">SELECT * FROM employees;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-- every column (fine for exploring)<br>SELECT name, department FROM employees; -- only what you need (use this in apps)</div>
          <p><code>SELECT *</code> is useful while you explore. But in application code, list the columns. This sends less data. Your code also will not break or quietly change when someone adds, removes or reorders columns.</p>
        </div>

        <div class="lc-card">
          <h3>Expressions and Aliases</h3>
          <p>A column in the SELECT list can be any expression (a calculation or value). <code>AS</code> gives the result column an easy-to-read name (an <strong>alias</strong>).</p>
        <div class="lc-code">SELECT name,<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;monthly_salary * 12&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;AS annual_salary,<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;name || ' (' || department || ')' AS label<br>FROM employees<br>WHERE id &lt;= 2;</div>
        <div class="lc-code">name&nbsp;&nbsp;&nbsp;&nbsp;annual_salary&nbsp;&nbsp;label<br>------&nbsp;&nbsp;-------------&nbsp;&nbsp;------------------<br>Asha&nbsp;&nbsp;&nbsp;&nbsp;1080000&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Asha (Engineering)<br>Vikram&nbsp;&nbsp;720000&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Vikram (Sales)</div>
          <p><code>||</code> joins text in standard SQL, SQLite and PostgreSQL. (MySQL uses <code>CONCAT()</code> instead.) If an alias has spaces, put it in double quotes: <code>AS "Annual Salary"</code>.</p>
        </div>

        <div class="lc-card">
          <h3>Integer Division Surprise</h3>
        <div class="lc-code">SELECT 7 / 2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;AS int_div,&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-- 3&nbsp;&nbsp;&nbsp;(both integers: result is truncated)<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;7 / 2.0&nbsp;&nbsp;&nbsp;&nbsp;AS real_div,&nbsp;&nbsp;&nbsp;&nbsp;-- 3.5<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;7 % 2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;AS remainder;&nbsp;&nbsp;&nbsp;-- 1</div>
          <p>SQLite and PostgreSQL truncate (cut off the decimal part) when both sides are integers. MySQL returns 3.5000. Multiply by <code>1.0</code> or divide by <code>2.0</code> when you want a decimal answer.</p>
        </div>

        <div class="lc-card">
          <h3>DISTINCT: Unique Rows Only</h3>
        <div class="lc-code">SELECT DISTINCT department FROM employees;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-- each department once<br>SELECT DISTINCT department, state FROM employees;&nbsp;&nbsp;&nbsp;-- each unique PAIR once<br>SELECT COUNT(DISTINCT state) AS states FROM employees;</div>
          <p><code>DISTINCT</code> works on the <strong>whole row</strong> of selected columns, not just the first column.</p>
        </div>

        <div class="lc-card">
          <h3>How SELECT Is Processed</h3>
          <table class="lc-table">
            <thead><tr><th>Order you write it</th><th>Order the database works</th></tr></thead>
            <tbody>
              <tr><td>1. SELECT</td><td>1. FROM (and JOINs)</td></tr>
              <tr><td>2. FROM</td><td>2. WHERE</td></tr>
              <tr><td>3. WHERE</td><td>3. GROUP BY / HAVING</td></tr>
              <tr><td>4. GROUP BY / HAVING</td><td>4. SELECT (expressions, aliases, DISTINCT)</td></tr>
              <tr><td>5. ORDER BY / LIMIT</td><td>5. ORDER BY, then LIMIT</td></tr>
            </tbody>
          </table>
          <p>This explains a well-known rule. You can use a SELECT alias in <code>ORDER BY</code> (it runs later). But standard SQL does not let you use it in <code>WHERE</code> (it runs earlier). SQLite allows it, but do not depend on this. PostgreSQL gives an error.</p>
        </div>

        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Forgetting a comma between columns: <code>SELECT name department</code> quietly makes <code>department</code> an alias of <code>name</code>.</li>
            <li>Using <code>SELECT *</code> in production code.</li>
            <li>Expecting <code>7 / 2</code> to be 3.5 in SQLite or PostgreSQL.</li>
            <li>Thinking <code>DISTINCT a, b</code> means "distinct a" only.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Try It</h3>
          <p>Show each employee's name and a <code>daily_rate</code> column. It should be the monthly salary divided by 30, as a decimal. Round it to 2 places with <code>ROUND(..., 2)</code>. Then list the distinct states.</p>
        </div>

        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> <code>SELECT</code> works without a table. This makes it a useful calculator: <code>SELECT 18 * 1.5, upper('sql'), date('2026-09-25', '+7 days');</code>
        </div>
      HTML
      starter_code: <<~'SQL'
        -- SELECT Queries
        CREATE TABLE employees (
            id             INTEGER PRIMARY KEY,
            name           TEXT NOT NULL,
            department     TEXT NOT NULL,
            state           TEXT,
            monthly_salary INTEGER NOT NULL   -- whole rupees
        );
        INSERT INTO employees (name, department, state, monthly_salary) VALUES
            ('Asha',   'Engineering', 'Karnataka', 90000),
            ('Vikram', 'Sales',       'Gujarat',      60000),
            ('Neha',   'Engineering', 'Karnataka', 95000),
            ('Imran',  'Sales',       'Assam',       55000),
            ('Divya',  'HR',          'Gujarat',      50000);

        -- Chosen columns
        SELECT name, department FROM employees;

        -- Expressions and aliases
        SELECT name,
               monthly_salary * 12               AS annual_salary,
               name || ' (' || department || ')' AS label
        FROM employees
        WHERE id <= 2;

        -- Integer vs decimal division
        SELECT 7 / 2 AS int_div, 7 / 2.0 AS real_div, 7 % 2 AS remainder;

        -- DISTINCT works on the whole row of selected columns
        SELECT DISTINCT department FROM employees;
        SELECT DISTINCT department, state FROM employees;
        SELECT COUNT(DISTINCT state) AS states FROM employees;

        -- Alias used in ORDER BY (allowed: ORDER BY runs after SELECT)
        SELECT name, monthly_salary * 12 AS annual_salary
        FROM employees
        ORDER BY annual_salary DESC;
      SQL
    },

    5 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-sql">SQL</div>
          <h1 class="lc-title">Filtering with WHERE</h1>
        </div>
        <p class="lc-lead"><code>WHERE</code> keeps only the rows where a condition is true. You join comparisons with <code>AND</code>, <code>OR</code> and <code>NOT</code>. You can also use shortcuts like <code>IN</code>, <code>BETWEEN</code> and <code>LIKE</code>.</p>

        <div class="lc-card">
          <h3>Comparison Operators</h3>
          <table class="lc-table">
            <thead><tr><th>Operator</th><th>Meaning</th><th>Example</th></tr></thead>
            <tbody>
              <tr><td><code>=</code></td><td>equal</td><td><code>state = 'Kerala'</code></td></tr>
              <tr><td><code>&lt;&gt;</code> or <code>!=</code></td><td>not equal</td><td><code>status &lt;&gt; 'cancelled'</code></td></tr>
              <tr><td><code>&lt;  &lt;=  &gt;  &gt;=</code></td><td>less / greater</td><td><code>amount &gt;= 1000</code></td></tr>
              <tr><td><code>BETWEEN a AND b</code></td><td>a ≤ value ≤ b (both ends included)</td><td><code>amount BETWEEN 500 AND 2000</code></td></tr>
              <tr><td><code>IN (...)</code></td><td>matches any value in a list</td><td><code>state IN ('Kerala', 'Goa')</code></td></tr>
              <tr><td><code>LIKE</code></td><td>matches a text pattern</td><td><code>name LIKE 'A%'</code></td></tr>
              <tr><td><code>IS NULL</code></td><td>value is missing</td><td><code>coupon IS NULL</code></td></tr>
            </tbody>
          </table>
        </div>

        <div class="lc-card">
          <h3>AND Runs Before OR</h3>
          <p>Multiplication comes before addition in maths. In the same way, <code>AND</code> is worked out before <code>OR</code>. Use brackets (parentheses) to say what you mean.</p>
        <div class="lc-code">-- Intended: Kerala orders that are either large OR paid by UPI<br>SELECT id, state, amount, method FROM orders<br>WHERE state = 'Kerala' AND amount &gt; 2000 OR method = 'UPI';&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-- WRONG<br>-- Read as: (state = 'Kerala' AND amount &gt; 2000) OR method = 'UPI'<br><br>SELECT id, state, amount, method FROM orders<br>WHERE state = 'Kerala' AND (amount &gt; 2000 OR method = 'UPI');&nbsp;&nbsp;&nbsp;&nbsp;-- RIGHT</div>
          <p>With the starter data, the first query returns 4 rows (it includes UPI orders from every state). The second returns 3, all from Kerala.</p>
        </div>

        <div class="lc-card">
          <h3>LIKE Patterns</h3>
          <table class="lc-table">
            <thead><tr><th>Pattern</th><th>Matches</th><th>Does not match</th></tr></thead>
            <tbody>
              <tr><td><code>'A%'</code></td><td>Anil, Asha, A</td><td>Kavya</td></tr>
              <tr><td><code>'%an'</code></td><td>Karan, Rohan</td><td>Anand</td></tr>
              <tr><td><code>'_ohan'</code></td><td>Rohan, Mohan</td><td>Sohana, Trohan</td></tr>
              <tr><td><code>'%sh%'</code></td><td>Asha, Harshit, Shreya (SQLite)</td><td>Kavya</td></tr>
            </tbody>
          </table>
          <p><code>%</code> = any number of characters (even zero). <code>_</code> = exactly one character. In SQLite, <code>LIKE</code> ignores upper and lower case for English letters. In PostgreSQL it is case-sensitive (use <code>ILIKE</code> there).</p>
        </div>

        <div class="lc-card">
          <h3>Filtering Dates Stored as ISO Text</h3>
        <div class="lc-code">SELECT id, order_date FROM orders<br>WHERE order_date &gt;= '2026-09-01' AND order_date &lt; '2026-10-01';&nbsp;&nbsp;&nbsp;-- all of September</div>
          <p><code>'YYYY-MM-DD'</code> text sorts in date order, so normal comparisons work. A half-open range (<code>&gt;=</code> start, <code>&lt;</code> next start) is safer than <code>BETWEEN</code>. This matters when values also have a time, such as <code>'2026-09-30 18:45'</code>.</p>
        </div>

        <div class="lc-card">
          <h3>Values From Users: Always Use Parameters</h3>
          <p>In a real app, the value in WHERE usually comes from a form or a URL. Never join it directly into the SQL text. That is how <strong>SQL injection</strong> (an attack where user input changes your query) happens:</p>
        <div class="lc-code">-- The app builds: "SELECT * FROM orders WHERE customer = '" + name + "'"<br>-- An attacker types:&nbsp;&nbsp;x' OR '1'='1<br>SELECT * FROM orders WHERE customer = 'x' OR '1'='1';&nbsp;&nbsp;&nbsp;-- returns EVERY order<br><br>-- Safe: the SQL has a placeholder; the driver sends the value separately<br>SELECT * FROM orders WHERE customer = ?;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-- value: x' OR '1'='1 -&gt; 0 rows</div>
          <p>Every driver (the library your app uses to talk to the database) supports this: <code>?</code> in SQLite, MySQL and JDBC, <code>$1</code> in PostgreSQL, <code>%s</code> in Python's psycopg. The value is always treated only as data. So it cannot change the query.</p>
        </div>

        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Mixing AND and OR without brackets.</li>
            <li>Writing <code>WHERE coupon = NULL</code>. This is never true. Use <code>IS NULL</code> (next lesson).</li>
            <li>Forgetting that <code>BETWEEN</code> includes both ends.</li>
            <li>Using <code>LIKE '%text%'</code> on very large tables and expecting it to be fast. A <code>%</code> at the start cannot use a normal index.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Try It</h3>
          <p>Find all orders from Assam or Gujarat (use <code>IN</code>) with an amount between 1000 and 3000, placed in September 2026. Then find customers whose name ends in <code>'a'</code>.</p>
        </div>

        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> When a WHERE clause gets long, put each condition on its own line. Add brackets even when they are not really needed. This makes the query easier for others (and for you later) to read.
        </div>
      HTML
      starter_code: <<~'SQL'
        -- Filtering with WHERE
        CREATE TABLE orders (
            id         INTEGER PRIMARY KEY,
            customer   TEXT NOT NULL,
            state       TEXT NOT NULL,
            amount     INTEGER NOT NULL,   -- whole rupees
            method     TEXT NOT NULL,      -- UPI / Card / Cash
            order_date TEXT NOT NULL
        );
        INSERT INTO orders (customer, state, amount, method, order_date) VALUES
            ('Asha',  'Kerala',   2500, 'Card', '2026-08-28'),
            ('Rohan', 'Kerala',    800, 'UPI',  '2026-09-02'),
            ('Kavya', 'Assam',  1500, 'UPI',  '2026-09-05'),
            ('Mohan', 'Kerala',   3200, 'Cash', '2026-09-10'),
            ('Shreya','Gujarat', 1200, 'Card', '2026-09-18'),
            ('Anand', 'Assam',  4100, 'Card', '2026-10-01');

        -- AND before OR: this is (Kerala AND > 2000) OR UPI
        SELECT id, customer, state, amount, method FROM orders
        WHERE state = 'Kerala' AND amount > 2000 OR method = 'UPI';

        -- Parentheses express the real intent
        SELECT id, customer, state, amount, method FROM orders
        WHERE state = 'Kerala' AND (amount > 2000 OR method = 'UPI');

        -- IN and BETWEEN (inclusive)
        SELECT customer, state, amount FROM orders
        WHERE state IN ('Assam', 'Gujarat') AND amount BETWEEN 1200 AND 4100;

        -- LIKE: _ is one character, % is any number
        SELECT customer FROM orders WHERE customer LIKE '_ohan';
        SELECT customer FROM orders WHERE customer LIKE '%a';

        -- September 2026 with a half-open date range
        SELECT id, customer, order_date FROM orders
        WHERE order_date >= '2026-09-01' AND order_date < '2026-10-01';
      SQL
    },

    6 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-sql">SQL</div>
          <h1 class="lc-title">NULL and Three-Valued Logic</h1>
        </div>
        <p class="lc-lead"><code>NULL</code> means <strong>"unknown or missing"</strong>. It is not zero and not an empty string. An unknown value cannot be equal to anything. So SQL uses <strong>three-valued logic</strong>: a condition can be TRUE, FALSE or UNKNOWN. Many real bugs happen when people forget this.</p>

        <div class="lc-card">
          <h3>Comparisons With NULL Are UNKNOWN</h3>
        <div class="lc-code">SELECT NULL = NULL&nbsp;&nbsp;&nbsp;AS a,&nbsp;&nbsp;&nbsp;-- NULL (unknown), not true!<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;NULL &lt;&gt; 5&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;AS b,&nbsp;&nbsp;&nbsp;-- NULL<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;NULL + 10&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;AS c,&nbsp;&nbsp;&nbsp;-- NULL (arithmetic with unknown is unknown)<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;NULL IS NULL&nbsp;&nbsp;AS d;&nbsp;&nbsp;&nbsp;-- 1 (true)</div>
          <p><code>WHERE</code> keeps a row only when the condition is <strong>TRUE</strong>. UNKNOWN rows are removed, just like FALSE ones. So <code>WHERE phone = NULL</code> always returns nothing. Use <code>IS NULL</code> / <code>IS NOT NULL</code>.</p>
        </div>

        <div class="lc-card">
          <h3>Truth Table</h3>
          <table class="lc-table">
            <thead><tr><th>A</th><th>B</th><th>A AND B</th><th>A OR B</th><th>NOT A</th></tr></thead>
            <tbody>
              <tr><td>TRUE</td><td>UNKNOWN</td><td>UNKNOWN</td><td>TRUE</td><td>FALSE</td></tr>
              <tr><td>FALSE</td><td>UNKNOWN</td><td>FALSE</td><td>UNKNOWN</td><td>TRUE</td></tr>
              <tr><td>UNKNOWN</td><td>UNKNOWN</td><td>UNKNOWN</td><td>UNKNOWN</td><td>UNKNOWN</td></tr>
            </tbody>
          </table>
          <p>See that <code>NOT UNKNOWN</code> is still UNKNOWN. That is why <code>WHERE NOT (discount &gt; 10)</code> also skips rows where discount is NULL.</p>
        </div>

        <div class="lc-card">
          <h3>Tools for NULL</h3>
          <table class="lc-table">
            <thead><tr><th>Expression</th><th>Result</th><th>Use</th></tr></thead>
            <tbody>
              <tr><td><code>x IS NULL</code> / <code>x IS NOT NULL</code></td><td>TRUE or FALSE, never unknown</td><td>Test for missing values</td></tr>
              <tr><td><code>COALESCE(x, y, 0)</code></td><td>First non-NULL argument</td><td>Replace a missing value with a default</td></tr>
              <tr><td><code>NULLIF(x, 0)</code></td><td>NULL if x = 0, else x</td><td>Stop divide-by-zero errors: <code>total / NULLIF(count, 0)</code></td></tr>
              <tr><td><code>a IS DISTINCT FROM b</code></td><td>Treats two NULLs as equal</td><td>A "not equal" that works with NULL (standard SQL, PostgreSQL, SQLite 3.39+)</td></tr>
            </tbody>
          </table>
        </div>

        <div class="lc-card">
          <h3>Aggregates Skip NULL</h3>
        <div class="lc-code">-- bonus values: 5000, NULL, 3000, NULL<br>SELECT COUNT(*)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;AS all_rows,&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-- 4<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;COUNT(bonus)&nbsp;&nbsp;AS with_bonus,&nbsp;&nbsp;&nbsp;-- 2<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;SUM(bonus)&nbsp;&nbsp;&nbsp;&nbsp;AS total,&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-- 8000<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;AVG(bonus)&nbsp;&nbsp;&nbsp;&nbsp;AS avg_known,&nbsp;&nbsp;&nbsp;&nbsp;-- 4000 (average of 2 known values)<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;AVG(COALESCE(bonus, 0)) AS avg_all;&nbsp;&nbsp;-- 2000 (NULL counted as 0; the sqlite3 CLI prints 4000.0 / 2000.0)</div>
          <p>Decide which average is right for your question. "Average bonus of people who got one" and "average bonus per employee" are different numbers.</p>
        </div>

        <div class="lc-card">
          <h3>The NOT IN Trap</h3>
        <div class="lc-code">-- Which employees are nobody's mentor?<br>SELECT name FROM staff<br>WHERE id NOT IN (SELECT mentor_id FROM staff);&nbsp;&nbsp;&nbsp;-- returns NO rows if any mentor_id is NULL!</div>
          <p><code>x NOT IN (1, 2, NULL)</code> means <code>x &lt;&gt; 1 AND x &lt;&gt; 2 AND x &lt;&gt; NULL</code>. The last part is UNKNOWN, so the whole condition can never be TRUE. To fix it, remove NULLs in the subquery (a query inside another query) with <code>WHERE mentor_id IS NOT NULL</code>. Or use <code>NOT EXISTS</code> (lesson 14).</p>
        </div>

        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li><code>= NULL</code> instead of <code>IS NULL</code>.</li>
            <li><code>NOT IN</code> against a column that can contain NULL.</li>
            <li>Joining text with a NULL: <code>'Mr ' || NULL</code> is NULL. Wrap with <code>COALESCE(x, '')</code>.</li>
            <li>Using an empty string <code>''</code> to mean "unknown". Choose NULL and use it every time.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Try It</h3>
          <p>In the starter code, list staff whose bonus is <em>not</em> greater than 4000. Use <code>COALESCE</code> to make sure people with a NULL bonus are included. Then fix the NOT IN query so it returns the staff who mentor nobody.</p>
        </div>

        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> When a query returns fewer rows than you expect, first ask: "Could any of these columns be NULL?"
        </div>
      HTML
      starter_code: <<~'SQL'
        -- NULL and Three-Valued Logic
        CREATE TABLE staff (
            id        INTEGER PRIMARY KEY,
            name      TEXT NOT NULL,
            bonus     INTEGER,      -- NULL = no bonus decided yet
            mentor_id INTEGER       -- NULL = has no mentor
        );
        INSERT INTO staff (id, name, bonus, mentor_id) VALUES
            (1, 'Farah', 5000, NULL),
            (2, 'Gopal', NULL, 1),
            (3, 'Hema',  3000, 1),
            (4, 'Ishaan', NULL, 3);

        -- Comparisons with NULL give NULL (unknown)
        SELECT NULL = NULL AS eq, NULL + 10 AS plus, NULL IS NULL AS is_null;

        -- '= NULL' finds nothing; 'IS NULL' works
        SELECT COUNT(*) AS eq_null_rows FROM staff WHERE bonus = NULL;
        SELECT name AS no_bonus_yet FROM staff WHERE bonus IS NULL;

        -- Aggregates skip NULLs
        SELECT COUNT(*) AS all_rows, COUNT(bonus) AS with_bonus,
               SUM(bonus) AS total, AVG(bonus) AS avg_known,
               AVG(COALESCE(bonus, 0)) AS avg_all
        FROM staff;

        -- COALESCE for display, NULLIF to avoid dividing by zero
        SELECT name, COALESCE(bonus, 0) AS bonus_or_zero,
               15000.0 / NULLIF(COALESCE(bonus, 0), 0) AS target_ratio
        FROM staff;

        -- The NOT IN trap: mentor_id contains a NULL, so this returns no rows
        SELECT COUNT(*) AS not_in_rows FROM staff
        WHERE id NOT IN (SELECT mentor_id FROM staff);

        -- Fixed: remove NULLs from the list
        SELECT name AS mentors_nobody FROM staff
        WHERE id NOT IN (SELECT mentor_id FROM staff WHERE mentor_id IS NOT NULL);
      SQL
    },

    7 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-sql">SQL</div>
          <h1 class="lc-title">ORDER BY, LIMIT and Pagination</h1>
        </div>
        <p class="lc-lead">A table has no built-in order. <code>ORDER BY</code> sorts the result. <code>LIMIT</code> / <code>OFFSET</code> take only a part of it. This is how "top 10" lists and pages 1, 2, 3 of search results work.</p>

        <div class="lc-card">
          <h3>Sorting</h3>
        <div class="lc-code">SELECT name, state, score FROM players<br>ORDER BY score DESC;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-- highest first (ASC is the default)<br><br>SELECT name, state, score FROM players<br>ORDER BY state ASC, score DESC;&nbsp;&nbsp;&nbsp;&nbsp;-- by state, then best score within each state</div>
          <p>Each column in <code>ORDER BY</code> has its own direction (ascending or descending). <code>ORDER BY state, score DESC</code> sorts state ascending and score descending.</p>
        </div>

        <div class="lc-card">
          <h3>Where Do NULLs Go?</h3>
          <table class="lc-table">
            <thead><tr><th>Database</th><th>ASC puts NULLs</th><th>Control it with</th></tr></thead>
            <tbody>
              <tr><td>SQLite</td><td>first</td><td><code>NULLS FIRST</code> / <code>NULLS LAST</code> (3.30+)</td></tr>
              <tr><td>PostgreSQL</td><td>last</td><td><code>NULLS FIRST</code> / <code>NULLS LAST</code></td></tr>
              <tr><td>MySQL</td><td>first</td><td><code>ORDER BY col IS NULL, col</code></td></tr>
            </tbody>
          </table>
        </div>

        <div class="lc-card">
          <h3>Top-N With LIMIT</h3>
        <div class="lc-code">SELECT name, score FROM players<br>ORDER BY score DESC, id<br>LIMIT 3;</div>
        <div class="lc-code">name&nbsp;&nbsp;score<br>----&nbsp;&nbsp;-----<br>Zoya&nbsp;&nbsp;980<br>Dev&nbsp;&nbsp;&nbsp;950<br>Tara&nbsp;&nbsp;950</div>
          <p>Dev and Tara both have 950. Adding <code>id</code> as a <strong>tie-breaker</strong> (a second sort for equal values) fixes the order. Then the same query always returns the same rows. Without it, the database may return the tied rows in any order.</p>
        </div>

        <div class="lc-card">
          <h3>Pagination: OFFSET vs Keyset</h3>
        <div class="lc-code">-- Page 2 with 3 rows per page (OFFSET style)<br>SELECT id, name, score FROM players<br>ORDER BY score DESC, id<br>LIMIT 3 OFFSET 3;<br><br>-- Keyset ("seek") style: continue after the last row you showed<br>-- last row on page 1 was (score 950, id 7)<br>SELECT id, name, score FROM players<br>WHERE score &lt; 950 OR (score = 950 AND id &gt; 7)<br>ORDER BY score DESC, id<br>LIMIT 3;</div>
          <table class="lc-table">
            <thead><tr><th></th><th>LIMIT / OFFSET</th><th>Keyset (WHERE after last row)</th></tr></thead>
            <tbody>
              <tr><td>Easy to write</td><td>Yes</td><td>A little harder</td></tr>
              <tr><td>Jump to page 50</td><td>Yes</td><td>No, only next/previous</td></tr>
              <tr><td>Speed on deep pages</td><td>Gets slower: it still reads and skips every earlier row</td><td>Stays fast with an index on the sort columns</td></tr>
              <tr><td>New rows added while you page</td><td>Rows can repeat or be missed</td><td>Stable</td></tr>
            </tbody>
          </table>
        </div>

        <div class="lc-card">
          <h3>Dialect Note</h3>
          <p><code>LIMIT n OFFSET m</code> works in SQLite, PostgreSQL and MySQL. The ISO standard form is <code>OFFSET m ROWS FETCH FIRST n ROWS ONLY</code> (PostgreSQL, Oracle, SQL Server). SQL Server also has <code>SELECT TOP n</code>.</p>
        </div>

        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Using <code>LIMIT</code> without <code>ORDER BY</code>. Then "the first 10 rows" has no clear meaning.</li>
            <li>Sorting only by a column with equal values and then splitting into pages. Rows then move between pages.</li>
            <li>Sorting numbers stored as TEXT: <code>'100'</code> sorts before <code>'20'</code>. Store numbers in numeric columns.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Try It</h3>
          <p>Show the lowest two scores from Punjab. Then write page 3 (rows 7–8) of the full leaderboard. Use both the OFFSET style and the keyset style (page 2 ended at score 610, id 4). Kabir appears in one version but not the other. Explain why. (Hint: what is <code>NULL &lt; 610</code>?)</p>
        </div>

        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> When you use ORDER BY for pages, always end it with a unique column (usually the primary key). It costs nothing. It also stops a whole group of "why did this row appear twice?" bugs.
        </div>
      HTML
      starter_code: <<~'SQL'
        -- ORDER BY, LIMIT and Pagination
        CREATE TABLE players (
            id    INTEGER PRIMARY KEY,
            name  TEXT NOT NULL,
            state  TEXT NOT NULL,
            score INTEGER            -- NULL = has not played yet
        );
        INSERT INTO players (id, name, state, score) VALUES
            (1, 'Aman',  'Punjab',  720),
            (2, 'Zoya',  'Rajasthan', 980),
            (3, 'Dev',   'Punjab',  950),
            (4, 'Riya',  'Rajasthan', 610),
            (5, 'Kabir', 'Punjab',  NULL),
            (6, 'Lina',  'Rajasthan', 830),
            (7, 'Tara',  'Punjab',  950),
            (8, 'Om',    'Rajasthan', 500);

        -- Two-level sort, NULL scores pushed to the end
        SELECT state, name, score FROM players
        ORDER BY state ASC, score DESC NULLS LAST;

        -- Top 3 with a tie-breaker (Dev and Tara both have 950)
        SELECT name, score FROM players
        ORDER BY score DESC, id
        LIMIT 3;

        -- Page 2 (3 rows per page), OFFSET style
        SELECT id, name, score FROM players
        ORDER BY score DESC, id
        LIMIT 3 OFFSET 3;

        -- The same page, keyset style: page 1 ended at (score 950, id 7)
        SELECT id, name, score FROM players
        WHERE score < 950 OR (score = 950 AND id > 7)
        ORDER BY score DESC, id
        LIMIT 3;
      SQL
    },

    8 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-sql">SQL</div>
          <h1 class="lc-title">UPDATE, DELETE and Upserts</h1>
        </div>
        <p class="lc-lead"><code>UPDATE</code> changes existing rows. <code>DELETE</code> removes rows. An <strong>upsert</strong> means "insert this row, or update it if it already exists". These statements change real data. So the safe habits in this lesson are more important than the syntax.</p>

        <div class="lc-card">
          <h3>UPDATE</h3>
        <div class="lc-code">UPDATE inventory<br>SET price_paise = price_paise * 110 / 100,&nbsp;&nbsp;&nbsp;-- 10% increase<br>&nbsp;&nbsp;&nbsp;&nbsp;updated_on&nbsp;&nbsp;= '2026-09-25'<br>WHERE category = 'Snacks';</div>
          <p>You can set several columns at once. The right-hand side can use the row's current values. <strong>Without <code>WHERE</code>, every row in the table is updated.</strong></p>
        </div>

        <div class="lc-card">
          <h3>DELETE</h3>
        <div class="lc-code">DELETE FROM inventory WHERE qty = 0;&nbsp;&nbsp;&nbsp;-- only out-of-stock rows<br>DELETE FROM inventory;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-- ALL rows (table stays, empty)<br>DROP TABLE inventory;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-- the table itself is gone</div>
        </div>

        <div class="lc-card">
          <h3>The Safe Workflow</h3>
          <ol class="lc-list">
            <li>First write the <code>WHERE</code> clause in a <code>SELECT</code> and check the rows: <code>SELECT * FROM inventory WHERE qty = 0;</code></li>
            <li>Start a transaction (a group of changes you can still undo): <code>BEGIN;</code></li>
            <li>Run the UPDATE or DELETE with exactly the same WHERE.</li>
            <li>Check the result (or use <code>RETURNING</code> to see changed rows). Then run <code>COMMIT;</code>. Or run <code>ROLLBACK;</code> if something looks wrong.</li>
          </ol>
        <div class="lc-code">DELETE FROM inventory WHERE qty = 0<br>RETURNING sku, name;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-- SQLite 3.35+ and PostgreSQL show the deleted rows</div>
        </div>

        <div class="lc-card">
          <h3>Upsert: INSERT ... ON CONFLICT</h3>
          <p>A delivery arrives. If the SKU (product code) is new, insert it. If it exists, add to its quantity. The conflict target (the column you check) must have a <code>UNIQUE</code> or <code>PRIMARY KEY</code> constraint.</p>
        <div class="lc-code">INSERT INTO inventory (sku, name, category, qty, price_paise)<br>VALUES ('CHAI-250', 'Tea 250g', 'Beverages', 20, 14000)<br>ON CONFLICT (sku) DO UPDATE<br>SET qty = inventory.qty + excluded.qty;</div>
          <p><code>excluded</code> is the row you tried to insert. <code>ON CONFLICT (sku) DO NOTHING</code> skips duplicates without any message instead.</p>
        <div class="lc-code">sku&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;qty<br>--------&nbsp;&nbsp;--------&nbsp;&nbsp;---<br>CHAI-250&nbsp;&nbsp;Tea 250g&nbsp;&nbsp;32&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-- was 12, +20 delivered</div>
        </div>

        <div class="lc-card">
          <h3>Upsert Syntax by Database</h3>
          <table class="lc-table">
            <thead><tr><th>Database</th><th>Syntax</th></tr></thead>
            <tbody>
              <tr><td>SQLite, PostgreSQL</td><td><code>INSERT ... ON CONFLICT (col) DO UPDATE SET ...</code></td></tr>
              <tr><td>MySQL</td><td><code>INSERT ... ON DUPLICATE KEY UPDATE ...</code></td></tr>
              <tr><td>SQL standard (PostgreSQL 15+, SQL Server, Oracle)</td><td><code>MERGE INTO ... WHEN MATCHED ... WHEN NOT MATCHED ...</code></td></tr>
            </tbody>
          </table>
          <p>Do not use <code>INSERT OR REPLACE</code> / <code>REPLACE</code> for upserts. On a conflict it <strong>deletes</strong> the old row and inserts a new one. So any column you did not give is reset to its default.</p>
        </div>

        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Running UPDATE or DELETE without WHERE (or with a WHERE you never tested).</li>
            <li>Using REPLACE and losing columns you did not mention.</li>
            <li>Checking "does it exist?" with a SELECT and then inserting. Two users can do this at the same moment. A single upsert statement is atomic (it runs as one step that cannot be split).</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Try It</h3>
          <p>Upsert a delivery of 15 units of a <em>new</em> SKU <code>'POHA-1KG'</code> and 5 more units of <code>'MAGGI-12'</code>. Do it in one INSERT with two rows. Then delete every product with <code>qty = 0</code>. Use <code>RETURNING</code> to see what was removed.</p>
        </div>

        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Many teams never fully delete important rows. They add a column such as <code>deleted_at TEXT</code> and set it instead (a "soft delete"). This way data can be brought back and checked later.
        </div>
      HTML
      starter_code: <<~'SQL'
        -- UPDATE, DELETE and Upserts
        CREATE TABLE inventory (
            sku         TEXT PRIMARY KEY,
            name        TEXT NOT NULL,
            category    TEXT NOT NULL,
            qty         INTEGER NOT NULL DEFAULT 0,
            price_paise INTEGER NOT NULL,
            updated_on  TEXT
        );
        INSERT INTO inventory (sku, name, category, qty, price_paise) VALUES
            ('CHAI-250', 'Tea 250g',      'Beverages', 12, 14000),
            ('MAGGI-12', 'Noodles x12',   'Snacks',    30, 16800),
            ('BHUJIA-1', 'Bhujia 1kg',    'Snacks',     0, 32000),
            ('COFFEE-1', 'Coffee 200g',   'Beverages',  0, 45000);

        -- 1. Preview, then UPDATE with the same WHERE (10% price rise)
        SELECT sku, price_paise FROM inventory WHERE category = 'Snacks';
        UPDATE inventory
        SET price_paise = price_paise * 110 / 100, updated_on = '2026-09-25'
        WHERE category = 'Snacks';
        SELECT sku, price_paise, updated_on FROM inventory WHERE category = 'Snacks';

        -- 2. Upsert: existing SKU gets its qty increased, new SKU is inserted
        INSERT INTO inventory (sku, name, category, qty, price_paise) VALUES
            ('CHAI-250', 'Tea 250g',    'Beverages', 20, 14000),
            ('RUSK-300', 'Rusk 300g',   'Snacks',    40,  6000)
        ON CONFLICT (sku) DO UPDATE
        SET qty = inventory.qty + excluded.qty;

        -- 3. DELETE out-of-stock rows and show what was removed
        DELETE FROM inventory WHERE qty = 0
        RETURNING sku AS deleted_sku, name;

        SELECT sku, name, qty, price_paise FROM inventory ORDER BY sku;
      SQL
    },

    9 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-sql">SQL</div>
          <h1 class="lc-title">Aggregates, GROUP BY and HAVING</h1>
        </div>
        <p class="lc-lead">Aggregate functions turn many rows into one summary value. <code>GROUP BY</code> makes one summary <em>per group</em>, such as sales per state or students per class. <code>HAVING</code> filters those groups.</p>

        <div class="lc-card">
          <h3>The Five Core Aggregates</h3>
          <table class="lc-table">
            <thead><tr><th>Function</th><th>Returns</th><th>NULL handling</th></tr></thead>
            <tbody>
              <tr><td><code>COUNT(*)</code></td><td>number of rows</td><td>counts every row</td></tr>
              <tr><td><code>COUNT(col)</code></td><td>number of non-NULL values</td><td>skips NULL</td></tr>
              <tr><td><code>SUM(col)</code></td><td>total</td><td>skips NULL; NULL if no rows</td></tr>
              <tr><td><code>AVG(col)</code></td><td>average</td><td>skips NULL</td></tr>
              <tr><td><code>MIN(col)</code> / <code>MAX(col)</code></td><td>smallest / largest</td><td>skips NULL</td></tr>
            </tbody>
          </table>
        </div>

        <div class="lc-card">
          <h3>GROUP BY: One Row per Group</h3>
        <div class="lc-code">SELECT state,<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;COUNT(*)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;AS orders,<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;SUM(amount)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;AS revenue,<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ROUND(AVG(amount))&nbsp;&nbsp;AS avg_order<br>FROM sales<br>GROUP BY state<br>ORDER BY revenue DESC;</div>
        <div class="lc-code">state&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;orders&nbsp;&nbsp;revenue&nbsp;&nbsp;avg_order<br>---------&nbsp;&nbsp;------&nbsp;&nbsp;-------&nbsp;&nbsp;---------<br>Karnataka&nbsp;&nbsp;3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;9500&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3167<br>Punjab&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4300&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1433<br>Goa&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1900&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;950</div>
          <p>The rule: every column in SELECT must be either <strong>in GROUP BY</strong> or <strong>inside an aggregate</strong>. <code>SELECT state, product, SUM(amount) ... GROUP BY state</code> is an error in PostgreSQL and in MySQL's default mode. This is because each state has many products. SQLite allows it, but it picks a product from a random row. Do not depend on it.</p>
        </div>

        <div class="lc-card">
          <h3>WHERE vs HAVING</h3>
          <table class="lc-table">
            <thead><tr><th></th><th>WHERE</th><th>HAVING</th></tr></thead>
            <tbody>
              <tr><td>Filters</td><td>individual rows</td><td>whole groups</td></tr>
              <tr><td>Runs</td><td>before grouping</td><td>after grouping</td></tr>
              <tr><td>Can use aggregates?</td><td>No</td><td>Yes (<code>HAVING SUM(amount) &gt; 5000</code>)</td></tr>
            </tbody>
          </table>
        <div class="lc-code">SELECT state, SUM(amount) AS revenue<br>FROM sales<br>WHERE status = 'paid'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-- 1. throw away unpaid rows<br>GROUP BY state&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-- 2. group what is left<br>HAVING SUM(amount) &gt;= 3000;&nbsp;&nbsp;&nbsp;&nbsp;-- 3. keep only big groups</div>
        </div>

        <div class="lc-card">
          <h3>Grouping by an Expression, and Conditional Counts</h3>
        <div class="lc-code">SELECT substr(sale_date, 1, 7)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;AS month,&nbsp;&nbsp;&nbsp;-- '2026-09'<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;COUNT(*)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;AS orders,<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;SUM(CASE WHEN status = 'paid' THEN 1 ELSE 0 END) AS paid_orders<br>FROM sales<br>GROUP BY month;</div>
          <p>Grouping by the first 7 characters of an ISO date gives monthly totals. <code>SUM(CASE WHEN ... THEN 1 ELSE 0 END)</code> counts only the rows that match a condition. You will use this pattern very often in reports.</p>
        </div>

        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Putting an aggregate in WHERE: <code>WHERE SUM(amount) &gt; 100</code> is an error. Use HAVING.</li>
            <li>Selecting a column that is neither grouped nor aggregated.</li>
            <li>Using HAVING for a plain row filter like <code>HAVING state = 'Punjab'</code>. It works, but WHERE is clearer and filters earlier.</li>
            <li>Forgetting that <code>AVG</code> of integers is a decimal. Put it inside <code>ROUND(..., 2)</code> to show it.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Try It</h3>
          <p>For each product, show the number of paid sales and the total paid revenue. Show only products with at least 2 paid sales. Sort by revenue, highest first.</p>
        </div>

        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Before you write a GROUP BY, say the sentence "one row per ___". The word in the blank goes in GROUP BY. Everything else in SELECT must be inside an aggregate.
        </div>
      HTML
      starter_code: <<~'SQL'
        -- Aggregates, GROUP BY and HAVING
        CREATE TABLE sales (
            id        INTEGER PRIMARY KEY,
            state      TEXT NOT NULL,
            product   TEXT NOT NULL,
            amount    INTEGER NOT NULL,     -- whole rupees
            status    TEXT NOT NULL,        -- 'paid' or 'pending'
            sale_date TEXT NOT NULL
        );
        INSERT INTO sales (state, product, amount, status, sale_date) VALUES
            ('Karnataka', 'Biryani Kit', 4000, 'paid',    '2026-08-12'),
            ('Punjab',  'Spices',      1200, 'paid',    '2026-08-20'),
            ('Karnataka', 'Spices',      2500, 'pending', '2026-09-01'),
            ('Goa',   'Namkeen',      700, 'paid',    '2026-09-03'),
            ('Punjab',  'Banana Chips',1600, 'paid',    '2026-09-07'),
            ('Karnataka', 'Biryani Kit', 3000, 'paid',    '2026-09-15'),
            ('Punjab',  'Spices',      1500, 'pending', '2026-09-20'),
            ('Goa',   'Namkeen',     1200, 'paid',    '2026-09-22');

        -- Whole-table summary
        SELECT COUNT(*) AS orders, SUM(amount) AS revenue,
               MIN(amount) AS smallest, MAX(amount) AS largest
        FROM sales;

        -- One row per state
        SELECT state, COUNT(*) AS orders, SUM(amount) AS revenue,
               ROUND(AVG(amount)) AS avg_order
        FROM sales
        GROUP BY state
        ORDER BY revenue DESC;

        -- WHERE (rows) then GROUP BY then HAVING (groups)
        SELECT state, SUM(amount) AS paid_revenue
        FROM sales
        WHERE status = 'paid'
        GROUP BY state
        HAVING SUM(amount) >= 2000;

        -- Group by month, with a conditional count
        SELECT substr(sale_date, 1, 7) AS month,
               COUNT(*) AS orders,
               SUM(CASE WHEN status = 'paid' THEN 1 ELSE 0 END) AS paid_orders
        FROM sales
        GROUP BY month
        ORDER BY month;
      SQL
    },

    10 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-sql">SQL</div>
          <h1 class="lc-title">Constraints and Keys</h1>
        </div>
        <p class="lc-lead">Constraints are rules the database checks on every insert and update. They stop bad data before it is saved. Examples are a negative price, a duplicate email, or an order for a customer who does not exist. This works no matter which app or script writes the data.</p>

        <div class="lc-card">
          <h3>The Main Constraints</h3>
          <table class="lc-table">
            <thead><tr><th>Constraint</th><th>Rule</th><th>Example</th></tr></thead>
            <tbody>
              <tr><td><code>NOT NULL</code></td><td>a value is required</td><td><code>name TEXT NOT NULL</code></td></tr>
              <tr><td><code>UNIQUE</code></td><td>no two rows share this value</td><td><code>email TEXT UNIQUE</code></td></tr>
              <tr><td><code>PRIMARY KEY</code></td><td>unique + points to one row (+ NOT NULL in most databases)</td><td><code>id INTEGER PRIMARY KEY</code></td></tr>
              <tr><td><code>CHECK</code></td><td>a condition must be true</td><td><code>CHECK (price_paise &gt; 0)</code></td></tr>
              <tr><td><code>DEFAULT</code></td><td>value used when none is given (not really a rule)</td><td><code>status TEXT DEFAULT 'new'</code></td></tr>
              <tr><td><code>FOREIGN KEY</code></td><td>value must exist in another table</td><td><code>REFERENCES customers(id)</code></td></tr>
            </tbody>
          </table>
          <p>Note: <code>UNIQUE</code> allows many NULLs (NULL is not equal to NULL). Add <code>NOT NULL</code> if the value is required.</p>
        </div>

        <div class="lc-card">
          <h3>Keys and Relationships</h3>
        <div class="lc-code">CREATE TABLE customers (<br>&nbsp;&nbsp;&nbsp;&nbsp;id&nbsp;&nbsp;&nbsp;&nbsp;INTEGER PRIMARY KEY,<br>&nbsp;&nbsp;&nbsp;&nbsp;email TEXT NOT NULL UNIQUE,<br>&nbsp;&nbsp;&nbsp;&nbsp;name&nbsp;&nbsp;TEXT NOT NULL<br>);<br>CREATE TABLE orders (<br>&nbsp;&nbsp;&nbsp;&nbsp;id&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;INTEGER PRIMARY KEY,<br>&nbsp;&nbsp;&nbsp;&nbsp;customer_id INTEGER NOT NULL<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;REFERENCES customers(id) ON DELETE CASCADE,<br>&nbsp;&nbsp;&nbsp;&nbsp;total_paise INTEGER NOT NULL CHECK (total_paise &gt; 0)<br>);</div>
          <ul class="lc-list">
            <li><strong>Primary key</strong> (<code>customers.id</code>): points to one customer.</li>
            <li><strong>Foreign key</strong> (<code>orders.customer_id</code>): points to a primary key in another table. This is a <em>one-to-many</em> relationship: one customer, many orders.</li>
            <li><strong>Natural vs surrogate key</strong>: <code>email</code> is a natural key (real-world data). <code>id</code> is a surrogate key (a number with no real meaning). Use a surrogate primary key and a UNIQUE constraint on the natural key. Emails can change, but ids should not.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>What Happens When the Parent Is Deleted?</h3>
          <table class="lc-table">
            <thead><tr><th>Action</th><th>Effect on child rows</th><th>Good for</th></tr></thead>
            <tbody>
              <tr><td><code>ON DELETE RESTRICT</code> / <code>NO ACTION</code> (default)</td><td>the delete is refused while child rows exist</td><td>invoices, payments</td></tr>
              <tr><td><code>ON DELETE CASCADE</code></td><td>child rows are deleted too</td><td>a cart's items, a post's likes</td></tr>
              <tr><td><code>ON DELETE SET NULL</code></td><td>child's foreign key becomes NULL</td><td>"assigned_to" when a staff member leaves</td></tr>
            </tbody>
          </table>
          <p><strong>SQLite detail:</strong> foreign keys are only checked after <code>PRAGMA foreign_keys = ON;</code>. This setting is per connection. PostgreSQL and MySQL (InnoDB) always check them.</p>
        </div>

        <div class="lc-card">
          <h3>Seeing a Constraint Work</h3>
          <p>An INSERT that breaks a rule usually fails with an error such as <code>UNIQUE constraint failed: customers.email</code>. The starter code uses SQLite's <code>INSERT OR IGNORE</code>. It skips the bad row instead of stopping the script. It also uses <code>changes()</code> to show how many rows were really inserted:</p>
        <div class="lc-code">INSERT OR IGNORE INTO customers (email, name) VALUES ('ravi@example.com', 'Ravi Again');<br>SELECT changes() AS rows_inserted;&nbsp;&nbsp;&nbsp;-- 0: duplicate email rejected</div>
        </div>

        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Forgetting <code>PRAGMA foreign_keys = ON</code> in SQLite and thinking the foreign keys protect you.</li>
            <li>Checking rules only in application code. A second app, a script or a manual fix will skip them. The database will not.</li>
            <li>Using <code>ON DELETE CASCADE</code> on financial records. Then deleting a customer also deletes their invoices, with no warning.</li>
            <li>Choosing a phone number or name as the primary key. These can change.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Try It</h3>
          <p>Add a <code>CHECK (email LIKE '%@%')</code> rule to <code>customers</code>. Try inserting <code>'not-an-email'</code> with <code>INSERT OR IGNORE</code>. Then change the foreign key to <code>ON DELETE SET NULL</code> (remember to remove <code>NOT NULL</code>). See what happens to Ravi's orders.</p>
        </div>

        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Give important constraints a name: <code>CONSTRAINT price_positive CHECK (price_paise &gt; 0)</code>. Then error messages say exactly which rule was broken.
        </div>
      HTML
      starter_code: <<~'SQL'
        -- Constraints and Keys
        PRAGMA foreign_keys = ON;   -- SQLite: turn on foreign key enforcement

        CREATE TABLE customers (
            id    INTEGER PRIMARY KEY,
            email TEXT NOT NULL UNIQUE,
            name  TEXT NOT NULL
        );
        CREATE TABLE orders (
            id          INTEGER PRIMARY KEY,
            customer_id INTEGER NOT NULL
                        REFERENCES customers(id) ON DELETE CASCADE,
            total_paise INTEGER NOT NULL
                        CONSTRAINT total_positive CHECK (total_paise > 0)
        );

        INSERT INTO customers (id, email, name) VALUES
            (1, 'ravi@example.com', 'Ravi'),
            (2, 'sana@example.com', 'Sana');
        INSERT INTO orders (customer_id, total_paise) VALUES (1, 49900), (1, 12000), (2, 75000);

        -- UNIQUE: a second customer with the same email is rejected
        INSERT OR IGNORE INTO customers (email, name) VALUES ('ravi@example.com', 'Ravi Again');
        SELECT changes() AS dup_email_inserted;

        -- CHECK: a zero total is rejected
        INSERT OR IGNORE INTO orders (customer_id, total_paise) VALUES (2, 0);
        SELECT changes() AS zero_total_inserted;

        -- NOT NULL: a customer without a name is rejected
        INSERT OR IGNORE INTO customers (email, name) VALUES ('x@example.com', NULL);
        SELECT changes() AS null_name_inserted;

        SELECT customer_id, COUNT(*) AS orders FROM orders GROUP BY customer_id;

        -- FOREIGN KEY with ON DELETE CASCADE: Ravi's orders go with him
        DELETE FROM customers WHERE id = 1;
        SELECT id, customer_id, total_paise FROM orders;
      SQL
    },

    11 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-sql">SQL</div>
          <h1 class="lc-title">INNER JOIN</h1>
        </div>
        <p class="lc-lead">Good databases split data into several tables that are linked by keys. A <strong>JOIN</strong> puts them back together in a query. <code>INNER JOIN</code> returns only the pairs of rows that match on both sides.</p>

        <div class="lc-card">
          <h3>The Tables</h3>
          <p>A college stores students, courses, and an <code>enrollments</code> table that links them. A student takes many courses, and a course has many students. This is a <em>many-to-many</em> relationship:</p>
        <div class="lc-code">students(id, name, state)<br>courses(id, code, title, credits)<br>enrollments(student_id -&gt; students.id, course_id -&gt; courses.id, grade)</div>
        </div>

        <div class="lc-card">
          <h3>Joining Two Tables</h3>
        <div class="lc-code">SELECT s.name, e.grade<br>FROM enrollments AS e<br>INNER JOIN students AS s ON s.id = e.student_id<br>ORDER BY s.name, e.grade;</div>
          <ul class="lc-list">
            <li><code>ON</code> gives the matching condition. It is almost always foreign key = primary key.</li>
            <li><code>AS e</code>, <code>AS s</code> are <strong>table aliases</strong> (short names for tables). They keep queries short. <code>INNER</code> is optional: plain <code>JOIN</code> means the same thing.</li>
            <li>If a column name is in both tables (like <code>id</code>), you must put the table alias before it: <code>s.id</code>. If you do not, you get an "ambiguous column name" error.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Three Tables Through a Junction Table</h3>
        <div class="lc-code">SELECT s.name, c.code, e.grade<br>FROM enrollments e<br>JOIN students s ON s.id = e.student_id<br>JOIN courses&nbsp;&nbsp;c ON c.id = e.course_id<br>WHERE c.code = 'CS101'<br>ORDER BY s.name;</div>
        <div class="lc-code">name&nbsp;&nbsp;&nbsp;&nbsp;code&nbsp;&nbsp;&nbsp;grade<br>------&nbsp;&nbsp;-----&nbsp;&nbsp;-----<br>Aditi&nbsp;&nbsp;&nbsp;CS101&nbsp;&nbsp;A<br>Bhavna&nbsp;&nbsp;CS101&nbsp;&nbsp;B<br>Chetan&nbsp;&nbsp;CS101&nbsp;&nbsp;A</div>
          <p>Each JOIN adds one table. Read it like this: start from enrollments, find the student for each row, then find the course.</p>
        </div>

        <div class="lc-card">
          <h3>Joins Can Multiply Rows</h3>
          <p>An inner join returns <strong>one output row for each matching pair</strong>. Aditi has 2 enrollments, so she appears twice. That is correct. But if you then <code>SUM</code> a column from <code>students</code> (like a fee), you would count her fee twice. Aggregate at the right level, or aggregate before you join.</p>
        <div class="lc-code">SELECT s.name, COUNT(*) AS courses, SUM(c.credits) AS total_credits<br>FROM students s<br>JOIN enrollments e ON e.student_id = s.id<br>JOIN courses c&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ON c.id = e.course_id<br>GROUP BY s.id, s.name;</div>
        </div>

        <div class="lc-card">
          <h3>Who Is Missing From an INNER JOIN?</h3>
          <table class="lc-table">
            <thead><tr><th>Row</th><th>In INNER JOIN result?</th></tr></thead>
            <tbody>
              <tr><td>Student with enrollments</td><td>Yes, once per enrollment</td></tr>
              <tr><td>Student with no enrollments (Dinesh)</td><td>No</td></tr>
              <tr><td>Course nobody took (MA201)</td><td>No</td></tr>
            </tbody>
          </table>
          <p>To keep rows with no match, you need an outer join. You will learn it in the next lesson.</p>
        </div>

        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Forgetting the <code>ON</code> condition (or joining on the wrong columns). You then get every combination of rows, called a <em>Cartesian product</em>.</li>
            <li>Joining <code>s.id = e.course_id</code> by mistake. Match the foreign key to the table it points to.</li>
            <li>Adding up values from the "one" side after joining to the "many" side.</li>
            <li>Using the old comma style <code>FROM a, b WHERE a.id = b.a_id</code>. It works, but a clear <code>JOIN ... ON</code> is easier to read and harder to get wrong.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Try It</h3>
          <p>List every enrollment with grade <code>'A'</code>. Show the student name, state and course title. Then show each course's code with the number of students enrolled.</p>
        </div>

        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> When a join result looks too big, run <code>SELECT COUNT(*)</code> on each table and on the join. If the join has more rows than you expect, one of your ON conditions is wrong. Or a relationship is many-to-many.
        </div>
      HTML
      starter_code: <<~'SQL'
        -- INNER JOIN
        CREATE TABLE students (id INTEGER PRIMARY KEY, name TEXT NOT NULL, state TEXT);
        CREATE TABLE courses  (id INTEGER PRIMARY KEY, code TEXT NOT NULL UNIQUE,
                               title TEXT NOT NULL, credits INTEGER NOT NULL);
        CREATE TABLE enrollments (
            student_id INTEGER NOT NULL REFERENCES students(id),
            course_id  INTEGER NOT NULL REFERENCES courses(id),
            grade      TEXT,
            PRIMARY KEY (student_id, course_id)   -- a student enrols once per course
        );
        INSERT INTO students VALUES (1,'Aditi','Assam'), (2,'Bhavna','Bihar'),
                                    (3,'Chetan','Assam'), (4,'Dinesh','Goa');
        INSERT INTO courses VALUES (1,'CS101','Programming',4), (2,'DB201','Databases',3),
                                   (3,'MA201','Statistics',3);
        INSERT INTO enrollments VALUES (1,1,'A'), (1,2,'B'), (2,1,'B'),
                                       (3,1,'A'), (3,2,'A');

        -- Two tables
        SELECT s.name, e.grade
        FROM enrollments AS e
        INNER JOIN students AS s ON s.id = e.student_id
        ORDER BY s.name, e.grade;

        -- Three tables through the junction table
        SELECT s.name, c.code, e.grade
        FROM enrollments e
        JOIN students s ON s.id = e.student_id
        JOIN courses  c ON c.id = e.course_id
        WHERE c.code = 'CS101'
        ORDER BY s.name;

        -- Aggregate after joining: courses and credits per student
        -- (Dinesh has no enrollments, so INNER JOIN leaves him out)
        SELECT s.name, COUNT(*) AS courses, SUM(c.credits) AS total_credits
        FROM students s
        JOIN enrollments e ON e.student_id = s.id
        JOIN courses c     ON c.id = e.course_id
        GROUP BY s.id, s.name
        ORDER BY s.name;
      SQL
    },

    12 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-sql">SQL</div>
          <h1 class="lc-title">Outer Joins and Self Joins</h1>
        </div>
        <p class="lc-lead">An <strong>outer join</strong> keeps rows even when they have no match. It fills the missing side with NULL (no value). It answers questions like "which customers have never ordered?". A <strong>self join</strong> joins a table to itself. For example, you can match employees with their managers.</p>

        <div class="lc-card">
          <h3>Join Types at a Glance</h3>
          <table class="lc-table">
            <thead><tr><th>Join</th><th>Keeps</th><th>Support</th></tr></thead>
            <tbody>
              <tr><td><code>INNER JOIN</code></td><td>only matching pairs</td><td>everywhere</td></tr>
              <tr><td><code>LEFT JOIN</code></td><td>all left rows + matches (NULL if no match)</td><td>everywhere</td></tr>
              <tr><td><code>RIGHT JOIN</code></td><td>all right rows + matches</td><td>PostgreSQL, MySQL, SQLite 3.39+</td></tr>
              <tr><td><code>FULL OUTER JOIN</code></td><td>all rows from both sides</td><td>PostgreSQL, SQLite 3.39+ (not MySQL)</td></tr>
              <tr><td><code>CROSS JOIN</code></td><td>every combination (rows × rows)</td><td>everywhere</td></tr>
            </tbody>
          </table>
          <p>A RIGHT JOIN is just a LEFT JOIN with the tables swapped. So most people only write LEFT JOIN.</p>
        </div>

        <div class="lc-card">
          <h3>LEFT JOIN</h3>
        <div class="lc-code">SELECT c.name, o.id AS order_id, o.amount<br>FROM customers c<br>LEFT JOIN orders o ON o.customer_id = c.id<br>ORDER BY c.name, o.id;</div>
        <div class="lc-code">name&nbsp;&nbsp;&nbsp;&nbsp;order_id&nbsp;&nbsp;amount<br>------&nbsp;&nbsp;--------&nbsp;&nbsp;------<br>Farhan&nbsp;&nbsp;3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;900<br>Gauri&nbsp;&nbsp;&nbsp;1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1500<br>Gauri&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;700<br>Harsh</div>
          <p>Harsh has no orders, but he still appears. His order columns show NULL.</p>
        </div>

        <div class="lc-card">
          <h3>Finding Rows With No Match (Anti-Join)</h3>
        <div class="lc-code">SELECT c.name<br>FROM customers c<br>LEFT JOIN orders o ON o.customer_id = c.id<br>WHERE o.id IS NULL;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-- keep only customers with no order</div>
          <p>This is called an anti-join: it finds rows that have no match. When you count orders per customer, use <code>COUNT(o.id)</code>, not <code>COUNT(*)</code>. <code>COUNT(*)</code> would count Harsh's NULL row as 1 order.</p>
        </div>

        <div class="lc-card">
          <h3>ON vs WHERE in a LEFT JOIN</h3>
        <div class="lc-code">-- Want: every customer, with their orders over 1000 (if any)<br>SELECT c.name, o.amount FROM customers c<br>LEFT JOIN orders o ON o.customer_id = c.id<br>WHERE o.amount &gt; 1000;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-- WRONG: drops Farhan and Harsh<br><br>SELECT c.name, o.amount FROM customers c<br>LEFT JOIN orders o ON o.customer_id = c.id AND o.amount &gt; 1000;&nbsp;&nbsp;&nbsp;-- RIGHT</div>
          <p>A WHERE condition on the right-hand table removes the NULL rows. Your LEFT JOIN then works like an INNER JOIN, and SQL gives no warning. Put conditions about the <em>optional</em> table in <code>ON</code>.</p>
        </div>

        <div class="lc-card">
          <h3>Self Join: Employees and Managers</h3>
        <div class="lc-code">SELECT e.name AS employee, m.name AS manager<br>FROM staff e<br>LEFT JOIN staff m ON m.id = e.manager_id;</div>
          <p>The same table appears twice with different aliases (short names): <code>e</code> for the employee, <code>m</code> for the manager. LEFT JOIN keeps the boss, whose <code>manager_id</code> is NULL.</p>
        </div>

        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Filtering the right-hand table in WHERE after a LEFT JOIN.</li>
            <li><code>COUNT(*)</code> instead of <code>COUNT(right_table.id)</code> after a LEFT JOIN.</li>
            <li>Using <code>CROSS JOIN</code> by mistake on big tables: 10,000 × 10,000 = 100 million rows.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Try It</h3>
          <p>Show every customer with their number of orders and total spent. Show 0 for customers with no orders, using <code>COALESCE</code>. Then create <code>sizes</code> and <code>colours</code> tables. Use a CROSS JOIN between them to list every T-shirt variant.</p>
        </div>

        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Put the table whose rows you must keep <em>first</em>. Then LEFT JOIN the optional data onto it. "All customers, plus their orders if any" → <code>FROM customers LEFT JOIN orders</code>.
        </div>
      HTML
      starter_code: <<~'SQL'
        -- Outer Joins and Self Joins
        CREATE TABLE customers (id INTEGER PRIMARY KEY, name TEXT NOT NULL);
        CREATE TABLE orders (
            id          INTEGER PRIMARY KEY,
            customer_id INTEGER NOT NULL REFERENCES customers(id),
            amount      INTEGER NOT NULL
        );
        INSERT INTO customers VALUES (1, 'Gauri'), (2, 'Farhan'), (3, 'Harsh');
        INSERT INTO orders VALUES (1, 1, 1500), (2, 1, 700), (3, 2, 900);

        -- LEFT JOIN keeps Harsh even though he has no orders
        SELECT c.name, o.id AS order_id, o.amount
        FROM customers c
        LEFT JOIN orders o ON o.customer_id = c.id
        ORDER BY c.name, o.id;

        -- Anti-join: customers with no orders
        SELECT c.name AS never_ordered
        FROM customers c
        LEFT JOIN orders o ON o.customer_id = c.id
        WHERE o.id IS NULL;

        -- COUNT(o.id) gives 0 for Harsh; COUNT(*) would wrongly give 1
        SELECT c.name, COUNT(o.id) AS orders, COUNT(*) AS wrong_count,
               COALESCE(SUM(o.amount), 0) AS total
        FROM customers c
        LEFT JOIN orders o ON o.customer_id = c.id
        GROUP BY c.id, c.name
        ORDER BY c.name;

        -- Condition on the optional table belongs in ON
        SELECT c.name, o.amount AS big_order
        FROM customers c
        LEFT JOIN orders o ON o.customer_id = c.id AND o.amount > 1000
        ORDER BY c.name;

        -- Self join: each employee with their manager
        CREATE TABLE staff (id INTEGER PRIMARY KEY, name TEXT, manager_id INTEGER);
        INSERT INTO staff VALUES (1, 'Leela', NULL), (2, 'Manoj', 1), (3, 'Nisha', 2);
        SELECT e.name AS employee, COALESCE(m.name, '(none)') AS manager
        FROM staff e
        LEFT JOIN staff m ON m.id = e.manager_id;
      SQL
    },

    13 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-sql">SQL</div>
          <h1 class="lc-title">Normalisation and Schema Design</h1>
        </div>
        <p class="lc-lead"><strong>Normalisation</strong> means organising tables so that each fact is stored in exactly one place. It stops the data from disagreeing with itself, for example two different phone numbers for the same customer. It also makes updates simple. You design the tables once, but you use them for years.</p>

        <div class="lc-card">
          <h3>The Problem: One Big Flat Table</h3>
        <div class="lc-code">order_id&nbsp;&nbsp;customer&nbsp;&nbsp;phone&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;items&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;state<br>--------&nbsp;&nbsp;--------&nbsp;&nbsp;----------&nbsp;&nbsp;-----------------------&nbsp;&nbsp;------<br>1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Pooja&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;9800000001&nbsp;&nbsp;Rice 5kg, Dal 1kg&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Kerala<br>2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Pooja&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;9800000001&nbsp;&nbsp;Oil 1L&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Kerala<br>3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Kunal&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;9800000002&nbsp;&nbsp;Rice 5kg&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Gujarat</div>
          <ul class="lc-list">
            <li><strong>Update anomaly</strong> (an update problem): Pooja changes her phone. You must update every one of her orders, or the data disagrees with itself.</li>
            <li><strong>Insert anomaly</strong>: you cannot store a new customer until they place an order.</li>
            <li><strong>Delete anomaly</strong>: if you delete Kunal's only order, you lose all data about Kunal.</li>
            <li><strong>Non-atomic values</strong> (many values in one cell): you cannot count, sum or join <code>'Rice 5kg, Dal 1kg'</code>.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>The First Three Normal Forms</h3>
          <table class="lc-table">
            <thead><tr><th>Form</th><th>Rule (in plain words)</th><th>Fix in our example</th></tr></thead>
            <tbody>
              <tr><td>1NF</td><td>One value per cell. No lists or repeating columns (<code>item1, item2, item3</code>)</td><td>Move items to an <code>order_items</code> table, one row per item</td></tr>
              <tr><td>2NF</td><td>Every non-key column depends on the <em>whole</em> key, not just part of it</td><td>In <code>order_items(order_id, product_id, ...)</code>, the product name depends only on <code>product_id</code> → move it to <code>products</code></td></tr>
              <tr><td>3NF</td><td>Non-key columns depend only on the key, not on other non-key columns</td><td><code>phone</code> and <code>state</code> depend on the customer, not the order → move them to <code>customers</code></td></tr>
            </tbody>
          </table>
          <p>A popular way to remember it: every column should depend on "the key, the whole key, and nothing but the key".</p>
        </div>

        <div class="lc-card">
          <h3>The Normalised Design</h3>
        <div class="lc-code">customers(id PK, name, phone UNIQUE, state)<br>products(id PK, name UNIQUE, price_paise)<br>orders(id PK, customer_id FK -&gt; customers, order_date)<br>order_items(order_id FK -&gt; orders, product_id FK -&gt; products, qty,<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;unit_price_paise,&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-- price at the time of sale<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;PRIMARY KEY (order_id, product_id))</div>
          <p>Notice <code>unit_price_paise</code> in <code>order_items</code>. It looks like a copy, but it is a <em>different fact</em>: the price the customer actually paid. The product's current price may change next month. Old bills must not change.</p>
        </div>

        <div class="lc-card">
          <h3>Relationship Types</h3>
          <table class="lc-table">
            <thead><tr><th>Type</th><th>Example</th><th>How to store it</th></tr></thead>
            <tbody>
              <tr><td>One-to-many</td><td>customer → orders</td><td>foreign key (a column that points to a row in another table) on the "many" side (<code>orders.customer_id</code>)</td></tr>
              <tr><td>Many-to-many</td><td>orders ↔ products</td><td>a junction table (a table that links two tables, here <code>order_items</code>) with two foreign keys</td></tr>
              <tr><td>One-to-one</td><td>user → user_profile</td><td>foreign key that is also UNIQUE (or the primary key)</td></tr>
            </tbody>
          </table>
        </div>

        <div class="lc-card">
          <h3>When to Denormalise</h3>
          <p>Normalise first. Later, you may copy some data on purpose to make queries faster. Examples: a <code>total_paise</code> column on <code>orders</code>, or a report table that is rebuilt every night. Do it on purpose and write it down. Keep one main place where the true value lives.</p>
        </div>

        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Comma-separated lists in a column (<code>'tag1,tag2'</code>). Use a separate table instead.</li>
            <li>Columns like <code>phone1, phone2, phone3</code>. This is also a repeating group.</li>
            <li>Over-normalising: splitting tiny lookups into dozens of tables, so every query needs a 10-way join.</li>
            <li>Not storing old values (the price at time of sale) because "it is already in products".</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Try It</h3>
          <p>The starter code moves data from a flat table into normalised tables. Add a query that shows each customer's total spending from the normalised tables. Then change Pooja's phone number with a <em>single-row</em> UPDATE.</p>
        </div>

        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Before you write any CREATE TABLE, draw your tables on paper. Draw boxes for tables and arrows for foreign keys. If you cannot explain what one row of a table means in one sentence, the design is not ready.
        </div>
      HTML
      starter_code: <<~'SQL'
        -- Normalisation and Schema Design
        -- A flat, un-normalised table (one row per order line)
        CREATE TABLE flat_orders (
            order_id INTEGER, customer TEXT, phone TEXT, state TEXT,
            product TEXT, price_paise INTEGER, qty INTEGER
        );
        INSERT INTO flat_orders VALUES
            (1, 'Pooja', '9800000001', 'Kerala', 'Rice 5kg', 42000, 1),
            (1, 'Pooja', '9800000001', 'Kerala', 'Dal 1kg',  14000, 2),
            (2, 'Pooja', '9800000001', 'Kerala', 'Oil 1L',   18000, 1),
            (3, 'Kunal', '9800000002', 'Gujarat', 'Rice 5kg', 42000, 2);

        -- Normalised tables
        CREATE TABLE customers (id INTEGER PRIMARY KEY, name TEXT NOT NULL,
                                phone TEXT NOT NULL UNIQUE, state TEXT);
        CREATE TABLE products  (id INTEGER PRIMARY KEY, name TEXT NOT NULL UNIQUE,
                                price_paise INTEGER NOT NULL);
        CREATE TABLE orders    (id INTEGER PRIMARY KEY,
                                customer_id INTEGER NOT NULL REFERENCES customers(id));
        CREATE TABLE order_items (
            order_id INTEGER REFERENCES orders(id),
            product_id INTEGER REFERENCES products(id),
            qty INTEGER NOT NULL, unit_price_paise INTEGER NOT NULL,
            PRIMARY KEY (order_id, product_id));

        -- Migrate: each fact goes to exactly one place
        INSERT INTO customers (name, phone, state)
            SELECT DISTINCT customer, phone, state FROM flat_orders;
        INSERT INTO products (name, price_paise)
            SELECT DISTINCT product, price_paise FROM flat_orders;
        INSERT INTO orders (id, customer_id)
            SELECT DISTINCT f.order_id, c.id FROM flat_orders f JOIN customers c ON c.phone = f.phone;
        INSERT INTO order_items (order_id, product_id, qty, unit_price_paise)
            SELECT f.order_id, p.id, f.qty, f.price_paise
            FROM flat_orders f JOIN products p ON p.name = f.product;

        SELECT (SELECT COUNT(*) FROM customers) AS customers,
               (SELECT COUNT(*) FROM products)  AS products,
               (SELECT COUNT(*) FROM orders)    AS orders,
               (SELECT COUNT(*) FROM order_items) AS order_lines;

        -- Rebuild the bills with joins
        SELECT o.id AS order_id, c.name, SUM(i.qty * i.unit_price_paise) AS bill_paise
        FROM orders o
        JOIN customers c   ON c.id = o.customer_id
        JOIN order_items i ON i.order_id = o.id
        GROUP BY o.id, c.name ORDER BY o.id;
      SQL
    },

    14 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-sql">SQL</div>
          <h1 class="lc-title">Subqueries and Set Operations</h1>
        </div>
        <p class="lc-lead">A <strong>subquery</strong> is a SELECT inside another statement. It lets you ask a question that depends on the answer to another question, like "who earns more than the average?". <strong>Set operations</strong> (<code>UNION</code>, <code>INTERSECT</code>, <code>EXCEPT</code>) combine the results of two whole queries.</p>

        <div class="lc-card">
          <h3>Where Subqueries Can Go</h3>
          <table class="lc-table">
            <thead><tr><th>Kind</th><th>Returns</th><th>Example use</th></tr></thead>
            <tbody>
              <tr><td>Scalar subquery</td><td>one value</td><td><code>WHERE salary &gt; (SELECT AVG(salary) FROM emp)</code></td></tr>
              <tr><td>List subquery</td><td>one column, many rows</td><td><code>WHERE dept_id IN (SELECT id FROM dept WHERE state = 'Kerala')</code></td></tr>
              <tr><td>Correlated subquery</td><td>runs again for each outer row</td><td>"above the average of <em>their own</em> department"</td></tr>
              <tr><td>Derived table</td><td>a whole table in FROM</td><td><code>FROM (SELECT ...) AS t</code></td></tr>
            </tbody>
          </table>
          <p>If a subquery returns several rows, use it with <code>IN</code>, <code>EXISTS</code>, <code>ANY</code> or <code>ALL</code>. Do not use it with <code>=</code>.</p>
        </div>

        <div class="lc-card">
          <h3>Scalar and Correlated Subqueries</h3>
        <div class="lc-code">-- Above the company average<br>SELECT name, salary FROM emp<br>WHERE salary &gt; (SELECT AVG(salary) FROM emp);<br><br>-- Above the average of their OWN department (correlated: uses e.dept)<br>SELECT e.name, e.dept, e.salary FROM emp e<br>WHERE e.salary &gt; (SELECT AVG(salary) FROM emp WHERE dept = e.dept);</div>
        <div class="lc-code">name&nbsp;&nbsp;&nbsp;dept&nbsp;&nbsp;salary<br>-----&nbsp;&nbsp;----&nbsp;&nbsp;------<br>Ojas&nbsp;&nbsp;&nbsp;IT&nbsp;&nbsp;&nbsp;&nbsp;120000<br>Rekha&nbsp;&nbsp;Ops&nbsp;&nbsp;&nbsp;70000</div>
        </div>

        <div class="lc-card">
          <h3>EXISTS and NOT EXISTS</h3>
        <div class="lc-code">-- Departments that have at least one employee<br>SELECT d.name FROM dept d<br>WHERE EXISTS (SELECT 1 FROM emp e WHERE e.dept = d.name);<br><br>-- Departments with no employees (safe even when columns contain NULL)<br>SELECT d.name FROM dept d<br>WHERE NOT EXISTS (SELECT 1 FROM emp e WHERE e.dept = d.name);</div>
          <p><code>EXISTS</code> only asks "is there at least one row?". So people usually write <code>SELECT 1</code> inside it. Use <code>NOT EXISTS</code> instead of <code>NOT IN</code> when the subquery column can be NULL (see the NULL lesson). For <code>IN</code> vs <code>EXISTS</code>, modern optimisers (the part of the database that plans how to run a query) usually make the same plan. Choose the one that is easiest to read.</p>
        </div>

        <div class="lc-card">
          <h3>Derived Tables</h3>
        <div class="lc-code">SELECT dept, avg_salary<br>FROM (SELECT dept, AVG(salary) AS avg_salary FROM emp GROUP BY dept) AS t<br>WHERE avg_salary &gt; 80000;</div>
          <p>Give derived tables an alias (<code>AS t</code>). PostgreSQL and MySQL require it. Long chains of derived tables are easier to read as CTEs (lesson 16).</p>
        </div>

        <div class="lc-card">
          <h3>UNION, INTERSECT, EXCEPT</h3>
          <table class="lc-table">
            <thead><tr><th>Operator</th><th>Result</th></tr></thead>
            <tbody>
              <tr><td><code>A UNION B</code></td><td>rows in A or B, duplicates removed</td></tr>
              <tr><td><code>A UNION ALL B</code></td><td>rows in A or B, duplicates kept (faster)</td></tr>
              <tr><td><code>A INTERSECT B</code></td><td>rows in both</td></tr>
              <tr><td><code>A EXCEPT B</code></td><td>rows in A but not in B</td></tr>
            </tbody>
          </table>
          <p>Both queries must return the same number of columns, with matching types. Column names come from the first query. One <code>ORDER BY</code> at the end sorts the combined result. MySQL supports INTERSECT and EXCEPT from version 8.0.31.</p>
        </div>

        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li><code>WHERE id = (SELECT id FROM ...)</code> when the subquery can return several rows. Use <code>IN</code> instead.</li>
            <li>Using <code>UNION</code> when you meant <code>UNION ALL</code>. You lose real duplicate rows without any warning, and the extra sorting makes it slower.</li>
            <li>Writing a correlated subquery in SELECT that runs for every row of a huge table. A JOIN with GROUP BY would do the work only once.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Try It</h3>
          <p>Find the highest-paid employee in each department. Use a correlated subquery (<code>salary = (SELECT MAX(...) ...)</code>). Then list the states that appear in both the <code>dept</code> table and a new <code>branches</code> table. Use <code>INTERSECT</code> for this.</p>
        </div>

        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Build subqueries from the inside out. First run the inner SELECT alone and check its result. Then write the outer query around it.
        </div>
      HTML
      starter_code: <<~'SQL'
        -- Subqueries and Set Operations
        CREATE TABLE dept (name TEXT PRIMARY KEY, state TEXT);
        CREATE TABLE emp (id INTEGER PRIMARY KEY, name TEXT, dept TEXT, salary INTEGER);
        INSERT INTO dept VALUES ('IT','Kerala'), ('Ops','Odisha'), ('Legal','Gujarat');
        INSERT INTO emp (name, dept, salary) VALUES
            ('Ojas',  'IT',  120000), ('Pallavi', 'IT', 90000),
            ('Qadir', 'Ops',  60000), ('Rekha',  'Ops', 70000);

        -- Scalar subquery: above the company average (85000)
        SELECT name, salary FROM emp
        WHERE salary > (SELECT AVG(salary) FROM emp);

        -- Correlated subquery: above their own department's average
        SELECT e.name, e.dept, e.salary FROM emp e
        WHERE e.salary > (SELECT AVG(salary) FROM emp WHERE dept = e.dept);

        -- IN with a list subquery
        SELECT name FROM emp
        WHERE dept IN (SELECT name FROM dept WHERE state = 'Kerala');

        -- NOT EXISTS: departments with nobody in them
        SELECT d.name AS empty_dept FROM dept d
        WHERE NOT EXISTS (SELECT 1 FROM emp e WHERE e.dept = d.name);

        -- Derived table
        SELECT dept, avg_salary
        FROM (SELECT dept, AVG(salary) AS avg_salary FROM emp GROUP BY dept) AS t
        WHERE avg_salary > 80000;

        -- Set operations
        CREATE TABLE interns (name TEXT, dept TEXT);
        INSERT INTO interns VALUES ('Sahil','IT'), ('Pallavi','IT');
        SELECT name FROM emp UNION     SELECT name FROM interns ORDER BY name;
        SELECT COUNT(*) AS union_all_rows FROM
            (SELECT name FROM emp UNION ALL SELECT name FROM interns);
        SELECT name AS in_both FROM emp INTERSECT SELECT name FROM interns;
        SELECT name AS only_interns FROM interns EXCEPT SELECT name FROM emp;
      SQL
    },

    15 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-sql">SQL</div>
          <h1 class="lc-title">CASE and Built-in Functions</h1>
        </div>
        <p class="lc-lead"><code>CASE</code> is SQL's if/else. SQL also has built-in functions for text, numbers and dates. With these, you can clean, label and reshape data inside the query. Function names change between databases more than anything else in SQL. So this lesson shows each dialect (database version of SQL) clearly.</p>

        <div class="lc-card">
          <h3>CASE Expressions</h3>
        <div class="lc-code">SELECT name, marks,<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;CASE<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;WHEN marks &gt;= 90 THEN 'A'<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;WHEN marks &gt;= 75 THEN 'B'<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;WHEN marks &gt;= 50 THEN 'C'<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ELSE 'Fail'<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;END AS grade<br>FROM results;</div>
          <p>SQL checks the conditions from top to bottom, and the first true one wins. So the order matters. Without <code>ELSE</code>, rows that match nothing get NULL. The short form <code>CASE status WHEN 'P' THEN 'Paid' WHEN 'U' THEN 'Unpaid' END</code> compares one value against a list.</p>
        </div>

        <div class="lc-card">
          <h3>String Functions</h3>
          <table class="lc-table">
            <thead><tr><th>Task</th><th>SQLite</th><th>PostgreSQL</th><th>MySQL</th></tr></thead>
            <tbody>
              <tr><td>Join text</td><td><code>a || b</code></td><td><code>a || b</code></td><td><code>CONCAT(a, b)</code></td></tr>
              <tr><td>Upper / lower case</td><td><code>upper(s)</code>, <code>lower(s)</code></td><td>same</td><td>same</td></tr>
              <tr><td>Length in characters</td><td><code>length(s)</code></td><td><code>length(s)</code></td><td><code>CHAR_LENGTH(s)</code> (<code>LENGTH</code> counts bytes)</td></tr>
              <tr><td>Part of a string</td><td><code>substr(s, start, len)</code></td><td><code>substr</code> / <code>substring</code></td><td><code>SUBSTRING(s, start, len)</code></td></tr>
              <tr><td>Position of text</td><td><code>instr(s, 'x')</code></td><td><code>strpos(s, 'x')</code></td><td><code>INSTR(s, 'x')</code></td></tr>
              <tr><td>Remove spaces</td><td><code>trim(s)</code></td><td>same</td><td>same</td></tr>
              <tr><td>Replace</td><td><code>replace(s, 'a', 'b')</code></td><td>same</td><td>same</td></tr>
            </tbody>
          </table>
          <p>Positions start at <strong>1</strong>, not 0: <code>substr('Gujarat', 1, 3)</code> is <code>'Guj'</code>.</p>
        </div>

        <div class="lc-card">
          <h3>Date Functions in SQLite</h3>
          <p>SQLite stores dates as ISO text (like 2026-09-25). It gives you functions to work with them:</p>
        <div class="lc-code">SELECT date('2026-09-25', '+30 days')&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;AS due,&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-- 2026-10-25<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;date('2026-09-25', 'start of month')&nbsp;&nbsp;&nbsp;&nbsp;AS month_start, -- 2026-09-01<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;strftime('%d/%m/%Y', '2026-09-25')&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;AS indian_fmt,&nbsp;&nbsp;-- 25/09/2026<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;julianday('2026-12-25') - julianday('2026-09-25') AS days_to_xmas; -- 91 (the sqlite3 CLI prints 91.0)</div>
          <table class="lc-table">
            <thead><tr><th>Task</th><th>SQLite</th><th>PostgreSQL</th><th>MySQL</th></tr></thead>
            <tbody>
              <tr><td>Today</td><td><code>date('now')</code></td><td><code>CURRENT_DATE</code></td><td><code>CURDATE()</code></td></tr>
              <tr><td>Add 30 days</td><td><code>date(d, '+30 days')</code></td><td><code>d + INTERVAL '30 days'</code></td><td><code>DATE_ADD(d, INTERVAL 30 DAY)</code></td></tr>
              <tr><td>Days between</td><td><code>julianday(a) - julianday(b)</code></td><td><code>a - b</code> (DATE values)</td><td><code>DATEDIFF(a, b)</code></td></tr>
              <tr><td>Year of a date</td><td><code>strftime('%Y', d)</code></td><td><code>EXTRACT(YEAR FROM d)</code></td><td><code>YEAR(d)</code></td></tr>
            </tbody>
          </table>
        </div>

        <div class="lc-card">
          <h3>Calculating Age Correctly</h3>
          <p>You might subtract the birth year from the current year. But this is wrong if the person's birthday has not come yet this year. Subtract one more when today's month-day is before the birthday's month-day:</p>
        <div class="lc-code">SELECT name, dob,<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(strftime('%Y', '2026-09-25') - strftime('%Y', dob))<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- (strftime('%m-%d', '2026-09-25') &lt; strftime('%m-%d', dob)) AS age<br>FROM people;</div>
        <div class="lc-code">name&nbsp;&nbsp;&nbsp;dob&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;age<br>-----&nbsp;&nbsp;----------&nbsp;&nbsp;---<br>Tanvi&nbsp;&nbsp;2000-03-10&nbsp;&nbsp;26<br>Uday&nbsp;&nbsp;&nbsp;2000-12-01&nbsp;&nbsp;25</div>
          <p>Uday is born in 2000 but turns 26 only in December, so he is still 25. The comparison <code>(...) &lt; (...)</code> gives 1 when true and 0 when false. That number fixes the age. We use a fixed date here so the output never changes. In real code, use <code>date('now')</code>.</p>
        </div>

        <div class="lc-card">
          <h3>JSON Values in a Column</h3>
          <p>Modern databases can store JSON text and read values inside it. In SQLite, <code>-&gt;&gt;</code> returns a plain SQL value, and <code>-&gt;</code> returns JSON text:</p>
        <div class="lc-code">CREATE TABLE gadgets (name TEXT, specs TEXT);&nbsp;&nbsp;&nbsp;-- specs holds JSON<br>INSERT INTO gadgets VALUES<br>&nbsp;&nbsp;('Earbuds', '{"brand":"Boat","tags":["audio","wireless"]}');<br><br>SELECT specs -&gt;&gt; '$.brand'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;AS brand,&nbsp;&nbsp;&nbsp;&nbsp;-- Boat<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;specs -&gt;&gt; '$.tags[1]'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;AS second_tag, -- wireless<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;json_array_length(specs, '$.tags') AS tag_count&nbsp;&nbsp;-- 2<br>FROM gadgets;</div>
          <p>PostgreSQL (<code>jsonb</code>) and MySQL (<code>JSON</code>) use the same <code>-&gt;</code>/<code>-&gt;&gt;</code> idea, with slightly different path rules. Use JSON for flexible extras that you rarely filter on. Keep values that you filter, join or sum in normal columns.</p>
        </div>

        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Putting a broad CASE condition first (<code>WHEN marks &gt;= 50</code>). Then the later conditions never match.</li>
            <li>Age = year difference only. This is 1 too high before the birthday.</li>
            <li>Using <code>LENGTH</code> in MySQL to count characters. Hindi or emoji text has more bytes than characters.</li>
            <li>Comparing strings like <code>'25/09/2026'</code>. They do not sort in date order.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Try It</h3>
          <p>Add a column that shows <code>'Minor'</code> or <code>'Adult'</code> based on the calculated age. Then make a short code from each name: the first three letters in capitals plus the birth year, like <code>TAN2000</code>.</p>
        </div>

        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Clean data once, when you insert it (trim spaces, fix case). Do not clean it again in every query. Also, a function in WHERE, such as <code>WHERE lower(email) = ...</code>, stops the database from using a normal index on that column.
        </div>
      HTML
      starter_code: <<~'SQL'
        -- CASE and Built-in Functions
        CREATE TABLE people (
            id    INTEGER PRIMARY KEY,
            name  TEXT NOT NULL,
            state  TEXT,
            dob   TEXT NOT NULL,     -- ISO date
            marks INTEGER
        );
        INSERT INTO people (name, state, dob, marks) VALUES
            ('  tanvi ', 'gujarat',   '2000-03-10', 93),
            ('Uday',     'Maharashtra', '2000-12-01', 78),
            ('Vani',     'Punjab',    '2010-09-25', 49),
            ('Wasim',    'Assam',     '2008-10-02', 64);

        -- CASE: first true condition wins
        SELECT trim(name) AS name, marks,
               CASE WHEN marks >= 90 THEN 'A'
                    WHEN marks >= 75 THEN 'B'
                    WHEN marks >= 50 THEN 'C'
                    ELSE 'Fail' END AS grade
        FROM people;

        -- String functions: tidy names and states
        SELECT upper(substr(trim(name), 1, 1)) || substr(trim(name), 2) AS clean_name,
               upper(state) AS state_caps,
               length(trim(name)) AS name_len,
               instr(state, 'rashtra') AS pos_of_rashtra
        FROM people;

        -- Dates (fixed "today" = 2026-09-25 so the output never changes)
        SELECT date('2026-09-25', '+30 days') AS due,
               strftime('%d/%m/%Y', '2026-09-25') AS indian_fmt,
               julianday('2026-12-25') - julianday('2026-09-25') AS days_to_xmas;

        -- Correct age: subtract 1 if the birthday has not happened yet this year
        SELECT trim(name) AS name, dob,
               (strftime('%Y', '2026-09-25') - strftime('%Y', dob))
               - (strftime('%m-%d', '2026-09-25') < strftime('%m-%d', dob)) AS age
        FROM people;
      SQL
    },

    16 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-sql">SQL</div>
          <h1 class="lc-title">CTEs and Views</h1>
        </div>
        <p class="lc-lead">Both CTEs and views give a <strong>name to a query</strong>, so you can build on it. A <strong>CTE</strong> (Common Table Expression, written <code>WITH ...</code>) exists only inside one statement. A <strong>view</strong> is saved in the database. Any later query can use it, like a virtual table.</p>

        <div class="lc-card">
          <h3>Common Table Expressions (WITH)</h3>
        <div class="lc-code">WITH monthly AS (<br>&nbsp;&nbsp;&nbsp;&nbsp;SELECT substr(paid_on, 1, 7) AS month, SUM(amount) AS revenue<br>&nbsp;&nbsp;&nbsp;&nbsp;FROM payments<br>&nbsp;&nbsp;&nbsp;&nbsp;GROUP BY month<br>),<br>best AS (<br>&nbsp;&nbsp;&nbsp;&nbsp;SELECT MAX(revenue) AS top FROM monthly<br>)<br>SELECT m.month, m.revenue<br>FROM monthly m JOIN best b ON m.revenue = b.top;</div>
        <div class="lc-code">month&nbsp;&nbsp;&nbsp;&nbsp;revenue<br>-------&nbsp;&nbsp;-------<br>2026-08&nbsp;&nbsp;7300</div>
          <p>Each CTE is a named step. Later CTEs and the final SELECT can use earlier ones. Nested derived tables are hard to follow. CTEs read from top to bottom, step by step.</p>
        </div>

        <div class="lc-card">
          <h3>Recursive CTEs</h3>
          <p>A recursive CTE has a <strong>starting query</strong>, then <code>UNION ALL</code>, then a query that uses the CTE itself. It repeats until no new rows appear. It is very useful for hierarchies (org charts, category trees) and number series.</p>
        <div class="lc-code">WITH RECURSIVE chain(id, name, level) AS (<br>&nbsp;&nbsp;&nbsp;&nbsp;SELECT id, name, 1 FROM staff WHERE manager_id IS NULL&nbsp;&nbsp;&nbsp;-- start: the boss<br>&nbsp;&nbsp;&nbsp;&nbsp;UNION ALL<br>&nbsp;&nbsp;&nbsp;&nbsp;SELECT s.id, s.name, c.level + 1<br>&nbsp;&nbsp;&nbsp;&nbsp;FROM staff s JOIN chain c ON s.manager_id = c.id&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-- step: their reports<br>)<br>SELECT level, name FROM chain ORDER BY level, name;</div>
          <p>Always make sure the recursion stops. Use a condition like <code>WHERE n &lt; 10</code>, or a hierarchy without cycles (loops). PostgreSQL, MySQL 8.0+ and SQLite all use <code>WITH RECURSIVE</code>.</p>
        </div>

        <div class="lc-card">
          <h3>Views</h3>
        <div class="lc-code">CREATE VIEW paid_summary AS<br>SELECT customer, COUNT(*) AS payments, SUM(amount) AS total<br>FROM payments<br>GROUP BY customer;<br><br>SELECT * FROM paid_summary WHERE total &gt; 5000;&nbsp;&nbsp;&nbsp;-- use it like a table<br>DROP VIEW IF EXISTS paid_summary;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-- remove it</div>
          <ul class="lc-list">
            <li>A normal view stores <strong>the query, not the data</strong>. Every time you select from it, the query runs again on the current data. So it is always up to date.</li>
            <li>Views hide complex queries: a 5-table join becomes <code>SELECT * FROM order_report</code>. They can also hide columns, such as salaries or phone numbers, from some users.</li>
            <li>PostgreSQL also has <strong>materialised views</strong>. These store the result, and you must refresh them. SQLite and MySQL do not have them.</li>
            <li>To change a view in SQLite, drop it and create it again. PostgreSQL and MySQL support <code>CREATE OR REPLACE VIEW</code>.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>CTE, View or Subquery?</h3>
          <table class="lc-table">
            <thead><tr><th>Tool</th><th>Lifetime</th><th>Best for</th></tr></thead>
            <tbody>
              <tr><td>Subquery</td><td>one spot in one statement</td><td>small, one-off conditions</td></tr>
              <tr><td>CTE</td><td>one statement</td><td>multi-step logic, recursion</td></tr>
              <tr><td>View</td><td>stored until dropped</td><td>logic reused by many queries or people</td></tr>
            </tbody>
          </table>
        </div>

        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Forgetting the comma between two CTEs, or adding one after the last CTE.</li>
            <li>A recursive CTE with no stopping condition. It runs until it hits an error or a limit.</li>
            <li>Thinking a view is a copy of the data, or that it makes queries faster by itself. It is only a saved query.</li>
            <li>Building views on top of views on top of views. Soon nobody can tell what a query really does.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Try It</h3>
          <p>Write a recursive CTE that makes the numbers 1 to 12. LEFT JOIN it to the payments to show revenue for <em>every</em> month of 2026, including months with 0. Then save the final query as a view named <code>revenue_2026</code>.</p>
        </div>

        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> When a query grows past about 20 lines, rewrite it as CTEs with clear names (<code>paid_orders</code>, <code>per_customer</code>, <code>ranked</code>). You can run each step alone to find bugs.
        </div>
      HTML
      starter_code: <<~'SQL'
        -- CTEs and Views
        CREATE TABLE payments (id INTEGER PRIMARY KEY, customer TEXT, amount INTEGER, paid_on TEXT);
        INSERT INTO payments (customer, amount, paid_on) VALUES
            ('Yash', 2500, '2026-07-04'), ('Zara', 4000, '2026-08-09'),
            ('Yash', 3300, '2026-08-21'), ('Anu',  1800, '2026-09-02'),
            ('Zara', 2200, '2026-09-15');

        -- Two CTEs: monthly totals, then the best month
        WITH monthly AS (
            SELECT substr(paid_on, 1, 7) AS month, SUM(amount) AS revenue
            FROM payments GROUP BY month
        ),
        best AS (SELECT MAX(revenue) AS top FROM monthly)
        SELECT m.month, m.revenue AS best_revenue
        FROM monthly m JOIN best b ON m.revenue = b.top;

        -- Recursive CTE: walk an org chart from the top
        CREATE TABLE staff (id INTEGER PRIMARY KEY, name TEXT, manager_id INTEGER);
        INSERT INTO staff VALUES (1,'Bina',NULL), (2,'Chirag',1), (3,'Deepa',1), (4,'Eshan',2);
        WITH RECURSIVE chain(id, name, level) AS (
            SELECT id, name, 1 FROM staff WHERE manager_id IS NULL
            UNION ALL
            SELECT s.id, s.name, c.level + 1
            FROM staff s JOIN chain c ON s.manager_id = c.id
        )
        SELECT level, name FROM chain ORDER BY level, name;

        -- A view stores the query, not the data
        CREATE VIEW paid_summary AS
        SELECT customer, COUNT(*) AS payments, SUM(amount) AS total
        FROM payments GROUP BY customer;

        SELECT * FROM paid_summary ORDER BY total DESC;

        -- New data appears in the view automatically
        INSERT INTO payments (customer, amount, paid_on) VALUES ('Anu', 5000, '2026-09-20');
        SELECT * FROM paid_summary WHERE customer = 'Anu';
      SQL
    },

    17 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-sql">SQL</div>
          <h1 class="lc-title">Window Functions</h1>
        </div>
        <p class="lc-lead">A <strong>window function</strong> calculates across a set of related rows <em>without merging them into one row</em>. GROUP BY gives one row per group. A window function keeps every row and adds a value, such as a rank, a running total or the previous row's value.</p>

        <div class="lc-card">
          <h3>GROUP BY vs Window</h3>
        <div class="lc-code">-- GROUP BY: one row per region<br>SELECT region, SUM(sales) FROM reps GROUP BY region;<br><br>-- Window: every rep, plus their region's total alongside<br>SELECT name, region, sales,<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;SUM(sales) OVER (PARTITION BY region) AS region_total<br>FROM reps;</div>
          <p><code>OVER (...)</code> turns an aggregate (like SUM or COUNT) into a window function. <code>PARTITION BY</code> splits rows into groups (like GROUP BY, but the rows are kept). <code>ORDER BY</code> inside OVER sets the order inside each partition (group).</p>
        </div>

        <div class="lc-card">
          <h3>Ranking: ROW_NUMBER, RANK, DENSE_RANK</h3>
        <div class="lc-code">SELECT name, sales,<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ROW_NUMBER() OVER (ORDER BY sales DESC, name) AS row_num,<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;RANK()&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;OVER (ORDER BY sales DESC) AS rnk,<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;DENSE_RANK() OVER (ORDER BY sales DESC) AS dense<br>FROM reps<br>ORDER BY sales DESC, name;</div>
        <div class="lc-code">name&nbsp;&nbsp;&nbsp;sales&nbsp;&nbsp;row_num&nbsp;&nbsp;rnk&nbsp;&nbsp;dense<br>-----&nbsp;&nbsp;-----&nbsp;&nbsp;-------&nbsp;&nbsp;---&nbsp;&nbsp;-----<br>Gita&nbsp;&nbsp;&nbsp;900&nbsp;&nbsp;&nbsp;&nbsp;1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1&nbsp;&nbsp;&nbsp;&nbsp;1<br>Hari&nbsp;&nbsp;&nbsp;700&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;2<br>Ila&nbsp;&nbsp;&nbsp;&nbsp;700&nbsp;&nbsp;&nbsp;&nbsp;3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;2<br>Kiran&nbsp;&nbsp;650&nbsp;&nbsp;&nbsp;&nbsp;4&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4&nbsp;&nbsp;&nbsp;&nbsp;3<br>Jai&nbsp;&nbsp;&nbsp;&nbsp;500&nbsp;&nbsp;&nbsp;&nbsp;5&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;5&nbsp;&nbsp;&nbsp;&nbsp;4</div>
          <table class="lc-table">
            <thead><tr><th>Function</th><th>Ties</th><th>Next number after a tie</th></tr></thead>
            <tbody>
              <tr><td><code>ROW_NUMBER()</code></td><td>different numbers (random order among ties)</td><td>continues</td></tr>
              <tr><td><code>RANK()</code></td><td>same number</td><td>skips (1, 2, 2, 4)</td></tr>
              <tr><td><code>DENSE_RANK()</code></td><td>same number</td><td>no gap (1, 2, 2, 3)</td></tr>
            </tbody>
          </table>
        </div>

        <div class="lc-card">
          <h3>Top-N per Group</h3>
          <p>You cannot use window functions in <code>WHERE</code>, because WHERE runs before them. Calculate the rank in a CTE, then filter:</p>
        <div class="lc-code">WITH ranked AS (<br>&nbsp;&nbsp;&nbsp;&nbsp;SELECT name, region, sales,<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ROW_NUMBER() OVER (PARTITION BY region ORDER BY sales DESC, name) AS rn<br>&nbsp;&nbsp;&nbsp;&nbsp;FROM reps<br>)<br>SELECT region, name, sales FROM ranked WHERE rn = 1;&nbsp;&nbsp;&nbsp;-- best rep per region</div>
        </div>

        <div class="lc-card">
          <h3>Running Totals, Moving Averages, LAG and LEAD</h3>
        <div class="lc-code">SELECT day, amount,<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;SUM(amount) OVER (ORDER BY day)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;AS running_total,<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;AVG(amount) OVER (ORDER BY day<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ROWS BETWEEN 2 PRECEDING AND CURRENT ROW) AS moving_avg_3,<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;LAG(amount) OVER (ORDER BY day)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;AS prev_day,<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;amount - LAG(amount) OVER (ORDER BY day)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;AS change<br>FROM daily;</div>
          <ul class="lc-list">
            <li><code>LAG(x)</code> = value from the previous row. <code>LEAD(x)</code> = value from the next row. The first row's LAG is NULL.</li>
            <li>The <strong>frame</strong> (the rows used for each calculation) <code>ROWS BETWEEN 2 PRECEDING AND CURRENT ROW</code> means "this row and the two before it".</li>
            <li>With <code>ORDER BY</code> and no frame, the default frame goes from the first row to the current row, <em>including rows tied with it</em>. Add <code>ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW</code> when the order column can have ties.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li><code>WHERE ROW_NUMBER() OVER (...) = 1</code>. This is not allowed. Filter in an outer query or CTE.</li>
            <li>Forgetting <code>PARTITION BY</code>. Then ranks run across the whole table instead of per group.</li>
            <li>Using ROW_NUMBER when ties should share a place (use RANK or DENSE_RANK).</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Try It</h3>
          <p>For each region, show each rep's share of the region's sales as a percentage: <code>ROUND(100.0 * sales / SUM(sales) OVER (PARTITION BY region), 1)</code>. Then use <code>LEAD</code> to show the next day's amount next to each day.</p>
        </div>

        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> If you use the same window several times, name it once: <code>... OVER w FROM daily WINDOW w AS (ORDER BY day)</code>. SQLite, PostgreSQL and MySQL 8.0+ support this.
        </div>
      HTML
      starter_code: <<~'SQL'
        -- Window Functions
        CREATE TABLE reps (name TEXT, region TEXT, sales INTEGER);
        INSERT INTO reps VALUES ('Gita','North',900), ('Hari','South',700),
                                ('Ila','North',700), ('Jai','South',500), ('Kiran','South',650);

        -- Keep every row, add the region total and a rank within the region
        SELECT name, region, sales,
               SUM(sales) OVER (PARTITION BY region) AS region_total,
               RANK()     OVER (PARTITION BY region ORDER BY sales DESC) AS rank_in_region
        FROM reps
        ORDER BY region, rank_in_region;

        -- Three ranking functions side by side (Hari and Ila tie on 700)
        SELECT name, sales,
               ROW_NUMBER() OVER (ORDER BY sales DESC, name) AS row_num,
               RANK()       OVER (ORDER BY sales DESC) AS rnk,
               DENSE_RANK() OVER (ORDER BY sales DESC) AS dense
        FROM reps
        ORDER BY sales DESC, name;

        -- Top rep per region: rank in a CTE, filter outside
        WITH ranked AS (
            SELECT name, region, sales,
                   ROW_NUMBER() OVER (PARTITION BY region ORDER BY sales DESC, name) AS rn
            FROM reps
        )
        SELECT region, name, sales FROM ranked WHERE rn = 1 ORDER BY region;

        -- Running total, 3-day moving average, day-over-day change
        CREATE TABLE daily (day TEXT PRIMARY KEY, amount INTEGER);
        INSERT INTO daily VALUES ('2026-09-01',100), ('2026-09-02',160),
                                 ('2026-09-03',130), ('2026-09-04',190);
        SELECT day, amount,
               SUM(amount) OVER (ORDER BY day) AS running_total,
               ROUND(AVG(amount) OVER (ORDER BY day
                     ROWS BETWEEN 2 PRECEDING AND CURRENT ROW), 1) AS moving_avg_3,
               amount - LAG(amount) OVER (ORDER BY day) AS change
        FROM daily;
      SQL
    },

    18 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-sql">SQL</div>
          <h1 class="lc-title">Indexes and Query Plans</h1>
        </div>
        <p class="lc-lead">An <strong>index</strong> is a sorted lookup structure, usually a B-tree (a sorted tree of values). It lets the database find rows without reading the whole table. It works like the index at the back of a textbook. A <strong>query plan</strong> shows whether your query really uses an index.</p>

        <div class="lc-card">
          <h3>Scan vs Search</h3>
          <p>Without an index, finding one customer's orders needs a <strong>full table scan</strong>: the database reads every row and checks it. With an index on <code>customer_id</code>, the database goes straight to the matching rows. That is about the difference between reading 1,000,000 rows and about 20 steps down a tree.</p>
        <div class="lc-code">CREATE INDEX idx_orders_customer ON orders (customer_id);<br>CREATE UNIQUE INDEX idx_users_email ON users (email);&nbsp;&nbsp;&nbsp;-- also enforces uniqueness<br>DROP INDEX idx_orders_customer;</div>
          <p>Primary keys and UNIQUE constraints get an index automatically.</p>
        </div>

        <div class="lc-card">
          <h3>Reading EXPLAIN QUERY PLAN (SQLite)</h3>
        <div class="lc-code">EXPLAIN QUERY PLAN<br>SELECT * FROM orders WHERE customer_id = 42;</div>
          <table class="lc-table">
            <thead><tr><th>Plan detail</th><th>Meaning</th></tr></thead>
            <tbody>
              <tr><td><code>SCAN orders</code></td><td>reads every row: fine for tiny tables, slow for big ones</td></tr>
              <tr><td><code>SEARCH orders USING INDEX idx_orders_customer (customer_id=?)</code></td><td>uses the index to go straight to matching rows</td></tr>
              <tr><td><code>SEARCH orders USING COVERING INDEX ...</code></td><td>the index alone has every column needed, so the table is not read</td></tr>
              <tr><td><code>USE TEMP B-TREE FOR ORDER BY</code></td><td>an extra sort step. An index in the right order can remove it.</td></tr>
            </tbody>
          </table>
          <p>Other databases: PostgreSQL uses <code>EXPLAIN</code> / <code>EXPLAIN ANALYZE</code> (Seq Scan vs Index Scan). MySQL uses <code>EXPLAIN</code> (look at the <code>type</code> and <code>key</code> columns). The idea is the same.</p>
        </div>

        <div class="lc-card">
          <h3>Composite Indexes and the Leftmost Rule</h3>
        <div class="lc-code">CREATE INDEX idx_orders_status_date ON orders (status, order_date);</div>
          <table class="lc-table">
            <thead><tr><th>WHERE clause</th><th>Can use the index?</th></tr></thead>
            <tbody>
              <tr><td><code>status = 'paid'</code></td><td>Yes: leftmost column</td></tr>
              <tr><td><code>status = 'paid' AND order_date &gt;= '2026-09-01'</code></td><td>Yes: both columns, in order</td></tr>
              <tr><td><code>order_date &gt;= '2026-09-01'</code> alone</td><td>Not for a normal search: the first column is missing</td></tr>
            </tbody>
          </table>
          <p>A composite index is an index on more than one column. Think of a phone book sorted by (surname, first name). It is easy to find all "Sharma"s. It does not help you find every "Rahul".</p>
        </div>

        <div class="lc-card">
          <h3>Indexes Are Not Free</h3>
          <ul class="lc-list">
            <li>Every INSERT, UPDATE and DELETE must also update every index on the table. More indexes means slower writes.</li>
            <li>Indexes use disk space and memory.</li>
            <li>Low-selectivity columns (columns with few different values, like a yes/no flag that is 50% yes) rarely get faster.</li>
            <li>Index the columns you <strong>filter, join or sort by often</strong>. Foreign keys are the most common example.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Things That Stop an Index Being Used</h3>
          <ul class="lc-list">
            <li>Putting the column inside a function: <code>WHERE lower(email) = 'a@b.com'</code>. Fix: store clean data, or create an <em>expression index</em> (an index on a calculated value) <code>ON users (lower(email))</code>.</li>
            <li>A wildcard at the start: <code>LIKE '%kumar'</code>.</li>
            <li>Skipping the first column of a composite index.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Indexing every column "just in case".</li>
            <li>Adding indexes without checking the plan before and after.</li>
            <li>Forgetting to index foreign key columns used in joins.</li>
            <li>Creating both <code>(a)</code> and <code>(a, b)</code>. The second one already works for queries on <code>a</code>.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Try It</h3>
          <p>Run <code>EXPLAIN QUERY PLAN</code> on <code>SELECT * FROM orders WHERE order_date = '2026-09-10'</code>. Is the composite index used? Create an index that fixes it, and check the plan again.</p>
        </div>

        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> On a tiny table, an index makes almost no difference, and some databases (such as PostgreSQL) may choose a full scan anyway because reading a few pages is fast. SQLite usually still uses the index. Test speed ideas on data of a realistic size. That is why the starter code builds 10,000 rows with a recursive CTE.
        </div>
      HTML
      starter_code: <<~'SQL'
        -- Indexes and Query Plans
        CREATE TABLE orders (
            id          INTEGER PRIMARY KEY,
            customer_id INTEGER NOT NULL,
            status      TEXT    NOT NULL,
            order_date  TEXT    NOT NULL,
            amount      INTEGER NOT NULL
        );
        -- 10,000 rows generated with a recursive CTE
        WITH RECURSIVE n(i) AS (SELECT 1 UNION ALL SELECT i + 1 FROM n WHERE i < 10000)
        INSERT INTO orders (customer_id, status, order_date, amount)
        SELECT i % 500,
               CASE i % 3 WHEN 0 THEN 'paid' WHEN 1 THEN 'pending' ELSE 'cancelled' END,
               date('2026-01-01', '+' || (i % 270) || ' days'),
               (i * 37) % 5000
        FROM n;
        SELECT COUNT(*) AS total_rows FROM orders;

        -- 1. No index on customer_id yet: full table SCAN
        EXPLAIN QUERY PLAN SELECT * FROM orders WHERE customer_id = 42;

        -- 2. Add an index: now a SEARCH using the index
        CREATE INDEX idx_orders_customer ON orders (customer_id);
        EXPLAIN QUERY PLAN SELECT * FROM orders WHERE customer_id = 42;

        -- 3. Composite index (status, order_date): leftmost column first
        CREATE INDEX idx_orders_status_date ON orders (status, order_date);
        EXPLAIN QUERY PLAN
        SELECT id FROM orders WHERE status = 'paid' AND order_date >= '2026-09-01';

        -- 4. Covering: every needed column is in the index
        EXPLAIN QUERY PLAN
        SELECT status, order_date FROM orders WHERE status = 'paid';

        -- 5. Any expression on the column (even + 0) hides it from the index
        EXPLAIN QUERY PLAN SELECT * FROM orders WHERE customer_id + 0 = 42;

        -- The actual answer
        SELECT COUNT(*) AS paid_since_sept, SUM(amount) AS revenue
        FROM orders WHERE status = 'paid' AND order_date >= '2026-09-01';
      SQL
    },

    19 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-sql">SQL</div>
          <h1 class="lc-title">Transactions and ACID</h1>
        </div>
        <p class="lc-lead">A <strong>transaction</strong> groups several statements into one unit of work. Either all of them happen, or none of them do. Sending Rs 500 by UPI must take money from one account <em>and</em> add it to another. It must never do just one of the two.</p>

        <div class="lc-card">
          <h3>BEGIN, COMMIT, ROLLBACK</h3>
        <div class="lc-code">BEGIN;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-- start<br>UPDATE accounts SET balance = balance - 500 WHERE id = 1; -- debit<br>UPDATE accounts SET balance = balance + 500 WHERE id = 2; -- credit<br>COMMIT;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-- make it permanent</div>
          <p>If anything goes wrong before <code>COMMIT</code>, run <code>ROLLBACK;</code>. This undoes every change since <code>BEGIN</code>. If you do not write BEGIN, most databases run in <strong>autocommit</strong> mode: each statement is its own tiny transaction. (PostgreSQL and MySQL also accept <code>START TRANSACTION</code>.)</p>
        </div>

        <div class="lc-card">
          <h3>ACID</h3>
          <table class="lc-table">
            <thead><tr><th>Letter</th><th>Property</th><th>Meaning</th></tr></thead>
            <tbody>
              <tr><td>A</td><td>Atomicity</td><td>all or nothing</td></tr>
              <tr><td>C</td><td>Consistency</td><td>after every commit, the data follows all constraints (rules)</td></tr>
              <tr><td>I</td><td>Isolation</td><td>transactions running at the same time do not see each other's half-done work</td></tr>
              <tr><td>D</td><td>Durability</td><td>once committed, the change is kept even after a crash or power cut</td></tr>
            </tbody>
          </table>
        </div>

        <div class="lc-card">
          <h3>Savepoints: Partial Undo</h3>
        <div class="lc-code">BEGIN;<br>INSERT INTO ledger (note) VALUES ('order placed');<br>SAVEPOINT before_coupon;<br>UPDATE orders SET total = total - 200 WHERE id = 7;&nbsp;&nbsp;&nbsp;-- apply coupon<br>ROLLBACK TO SAVEPOINT before_coupon;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-- coupon was invalid: undo only this<br>COMMIT;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-- the ledger row is kept</div>
        </div>

        <div class="lc-card">
          <h3>Isolation Levels</h3>
          <p>Stronger isolation prevents more problems. But fewer transactions can then run at the same time.</p>
          <table class="lc-table">
            <thead><tr><th>Level</th><th>Dirty read</th><th>Non-repeatable read</th><th>Phantom rows</th></tr></thead>
            <tbody>
              <tr><td>READ UNCOMMITTED</td><td>possible</td><td>possible</td><td>possible</td></tr>
              <tr><td>READ COMMITTED (PostgreSQL default)</td><td>prevented</td><td>possible</td><td>possible</td></tr>
              <tr><td>REPEATABLE READ (MySQL InnoDB default)</td><td>prevented</td><td>prevented</td><td>possible in the standard*</td></tr>
              <tr><td>SERIALIZABLE (SQLite's behaviour)</td><td>prevented</td><td>prevented</td><td>prevented</td></tr>
            </tbody>
          </table>
          <p>* PostgreSQL's and InnoDB's REPEATABLE READ also avoid phantom rows for plain reads. They use snapshots (a saved view of the data) to do this. SQLite allows only one writer at a time, so its transactions are serializable.</p>
        </div>

        <div class="lc-card">
          <h3>Avoiding the Lost Update</h3>
        <div class="lc-code">-- Risky: read in the app, compute, write back (two users can overwrite each other)<br>-- SELECT balance ... ; app computes 1000 - 500 ; UPDATE ... SET balance = 500<br><br>-- Safe: let the database do the arithmetic and the check in one statement<br>UPDATE accounts SET balance = balance - 500<br>WHERE id = 1 AND balance &gt;= 500;<br>-- then check how many rows changed: 0 means "insufficient funds" -&gt; ROLLBACK</div>
        </div>

        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Forgetting COMMIT. The changes are lost when the connection closes. Until then, the database may keep locks on the rows.</li>
            <li>Keeping a transaction open while you wait for user input or a slow API call.</li>
            <li>Running multi-step money operations without a transaction.</li>
            <li>Thinking ROLLBACK can undo a committed transaction. It cannot. Use backups, or add new entries that reverse the change.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Try It</h3>
          <p>Write a transfer of Rs 3,000 from Kavin to Lata. Kavin has Rs 2,000 after the starter code runs. Use the safe UPDATE with <code>balance &gt;= 3000</code>. Check <code>changes()</code>, and ROLLBACK when it is 0. Check that both balances did not change.</p>
        </div>

        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> In application code, use your library's transaction helper (for example, a <code>with</code> block or <code>transaction do ... end</code>). It commits when everything works. It rolls back by itself when an exception (error) happens.
        </div>
      HTML
      starter_code: <<~'SQL'
        -- Transactions and ACID
        CREATE TABLE accounts (
            id      INTEGER PRIMARY KEY,
            owner   TEXT NOT NULL,
            balance INTEGER NOT NULL CHECK (balance >= 0)   -- whole rupees
        );
        CREATE TABLE ledger (id INTEGER PRIMARY KEY, note TEXT);
        INSERT INTO accounts VALUES (1, 'Kavin', 2500), (2, 'Lata', 1000);

        -- 1. A successful transfer of Rs 500
        BEGIN;
        UPDATE accounts SET balance = balance - 500 WHERE id = 1 AND balance >= 500;
        SELECT changes() AS debited_rows;          -- 1: enough money
        UPDATE accounts SET balance = balance + 500 WHERE id = 2;
        INSERT INTO ledger (note) VALUES ('Kavin -> Lata 500');
        COMMIT;
        SELECT owner, balance FROM accounts;

        -- 2. A transfer we decide to cancel: ROLLBACK undoes everything
        BEGIN;
        UPDATE accounts SET balance = balance - 1000 WHERE id = 1;
        UPDATE accounts SET balance = balance + 1000 WHERE id = 2;
        SELECT owner, balance AS inside_txn FROM accounts;
        ROLLBACK;
        SELECT owner, balance AS after_rollback FROM accounts;

        -- 3. Savepoint: undo only part of a transaction
        BEGIN;
        INSERT INTO ledger (note) VALUES ('monthly fee');
        SAVEPOINT before_bonus;
        UPDATE accounts SET balance = balance + 9999 WHERE id = 2;
        ROLLBACK TO SAVEPOINT before_bonus;
        COMMIT;
        SELECT owner, balance FROM accounts;
        SELECT note FROM ledger;
      SQL
    },

    20 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-sql">SQL</div>
          <h1 class="lc-title">Triggers</h1>
        </div>
        <p class="lc-lead">A <strong>trigger</strong> is SQL that the database runs by itself when a row is inserted, updated or deleted. You can use it to keep an audit log (a record of changes). You can also reject a change that no CHECK constraint can describe, or keep a stock count matched with orders. Then you do not need to trust every app to remember these jobs.</p>

        <div class="lc-card">
          <h3>Anatomy of a Trigger</h3>
        <div class="lc-code">CREATE TRIGGER log_price_change&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-- a name, so you can DROP TRIGGER it later<br>AFTER UPDATE OF price_paise ON products&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-- WHEN it fires: timing + event + table<br>WHEN OLD.price_paise &lt;&gt; NEW.price_paise&nbsp;&nbsp;&nbsp;&nbsp;-- optional condition<br>BEGIN<br>&nbsp;&nbsp;&nbsp;&nbsp;INSERT INTO price_log (product_id, old_price, new_price)<br>&nbsp;&nbsp;&nbsp;&nbsp;VALUES (NEW.id, OLD.price_paise, NEW.price_paise);<br>END;</div>
          <ul class="lc-list">
            <li><strong>Timing:</strong> <code>BEFORE</code> (check or stop the change), <code>AFTER</code> (respond to it), or <code>INSTEAD OF</code> (only on views).</li>
            <li><strong>Event:</strong> <code>INSERT</code>, <code>UPDATE</code> (optionally <code>UPDATE OF col</code>) or <code>DELETE</code>.</li>
            <li><strong>Body:</strong> one or more statements between <code>BEGIN</code> and <code>END</code>. Each one ends with a semicolon.</li>
          </ul>
          <p>The trigger runs once <strong>for each changed row</strong>. An UPDATE that changes 500 rows fires (runs) it 500 times.</p>
        </div>

        <div class="lc-card">
          <h3>NEW and OLD</h3>
          <p>Inside the body, <code>NEW</code> is the row as it will be saved. <code>OLD</code> is the row as it was before.</p>
          <table class="lc-table">
            <thead><tr><th>Event</th><th>OLD</th><th>NEW</th></tr></thead>
            <tbody>
              <tr><td>INSERT</td><td>not available</td><td>the row being added</td></tr>
              <tr><td>UPDATE</td><td>values before the change</td><td>values after the change</td></tr>
              <tr><td>DELETE</td><td>the row being removed</td><td>not available</td></tr>
            </tbody>
          </table>
        </div>

        <div class="lc-card">
          <h3>Worked Example: an Audit Log</h3>
          <p>With the trigger above in place, run three updates:</p>
        <div class="lc-code">UPDATE products SET price_paise = 119900 WHERE id = 1;&nbsp;&nbsp;&nbsp;-- 129900 -&gt; 119900: logged<br>UPDATE products SET price_paise = 49900&nbsp;&nbsp;WHERE id = 2;&nbsp;&nbsp;&nbsp;-- same price: WHEN is false<br>UPDATE products SET name = 'Mechanical Keyboard' WHERE id = 1; -- other column: does not fire<br><br>SELECT product_id, old_price, new_price FROM price_log;</div>
        <div class="lc-code">product_id&nbsp;&nbsp;old_price&nbsp;&nbsp;new_price<br>----------&nbsp;&nbsp;---------&nbsp;&nbsp;---------<br>1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;129900&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;119900</div>
          <p>Only one row was logged. <code>UPDATE OF price_paise</code> ignores updates to other columns. The <code>WHEN</code> clause skips "changes" that keep the same value.</p>
          <p>Next, the starter code places three orders (3 keyboards, 5 mice, 2 keyboards). The <code>reduce_stock</code> trigger takes each quantity out of stock. So the last query shows:</p>
        <div class="lc-code">SELECT id, name, stock FROM products;</div>
        <div class="lc-code">id&nbsp;&nbsp;name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;stock<br>--&nbsp;&nbsp;-------------------&nbsp;&nbsp;-----<br>1&nbsp;&nbsp;&nbsp;Mechanical Keyboard&nbsp;&nbsp;5<br>2&nbsp;&nbsp;&nbsp;Mouse&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;20</div>
          <p>Keyboard stock went from 10 to 5 and Mouse stock from 25 to 20.</p>
        </div>

        <div class="lc-card">
          <h3>BEFORE Triggers: Reject a Bad Change</h3>
          <p>A CHECK constraint can only look at the row itself. A trigger can look at <em>other</em> tables. In SQLite, <code>RAISE(ABORT, 'message')</code> stops the statement and undoes all its changes:</p>
        <div class="lc-code">CREATE TRIGGER check_stock<br>BEFORE INSERT ON orders<br>WHEN NEW.qty &gt; (SELECT stock FROM products WHERE id = NEW.product_id)<br>BEGIN<br>&nbsp;&nbsp;&nbsp;&nbsp;SELECT RAISE(ABORT, 'not enough stock');<br>END;<br><br>INSERT INTO orders (product_id, qty) VALUES (1, 50);<br>-- Error: not enough stock</div>
          <p>A trigger runs inside the same transaction as the statement that fired it (Lesson 19). If the statement fails, the trigger's changes are rolled back too. So you never get a log row for an order that was refused.</p>
        </div>

        <div class="lc-card">
          <h3>Trigger, Constraint or App Code?</h3>
          <table class="lc-table">
            <thead><tr><th>Need</th><th>Best tool</th><th>Why</th></tr></thead>
            <tbody>
              <tr><td>Price must be positive</td><td>CHECK constraint</td><td>simpler, faster, easy to see in the schema</td></tr>
              <tr><td>Order must point to a real product</td><td>FOREIGN KEY</td><td>built in, no code to look after</td></tr>
              <tr><td>Keep a history of every price change</td><td>AFTER UPDATE trigger</td><td>works no matter which app or script made the change</td></tr>
              <tr><td>Rule that reads another table</td><td>BEFORE trigger</td><td>constraints cannot see other tables</td></tr>
              <tr><td>Send an email or call an API</td><td>app code</td><td>triggers cannot (and should not) talk to the outside world</td></tr>
            </tbody>
          </table>
        </div>

        <div class="lc-card">
          <h3>Dialect Note</h3>
          <table class="lc-table">
            <thead><tr><th>Database</th><th>How triggers look</th></tr></thead>
            <tbody>
              <tr><td>SQLite</td><td>body written directly between BEGIN and END. Row-level only. Stop with <code>RAISE(ABORT, '...')</code></td></tr>
              <tr><td>PostgreSQL</td><td>write a PL/pgSQL function that <code>RETURNS trigger</code> (a BEFORE row trigger returns <code>NEW</code>). Then use <code>CREATE TRIGGER ... FOR EACH ROW EXECUTE FUNCTION fn()</code>. It also has statement-level triggers. Stop with <code>RAISE EXCEPTION</code></td></tr>
              <tr><td>MySQL</td><td><code>CREATE TRIGGER ... FOR EACH ROW</code>. Change values with <code>SET NEW.col = ...</code> in a BEFORE trigger. Stop with <code>SIGNAL SQLSTATE '45000'</code></td></tr>
            </tbody>
          </table>
        </div>

        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Using a trigger where a CHECK or FOREIGN KEY would work. Hidden logic is harder to find and fix.</li>
            <li>Writing <code>OLD</code> in an INSERT trigger or <code>NEW</code> in a DELETE trigger. That row does not exist.</li>
            <li>Forgetting that a trigger fires once per row. A slow body makes big UPDATEs very slow.</li>
            <li>Chains of triggers that fire other triggers. The order becomes hard to understand.</li>
            <li>Forgetting the trigger exists, and then asking why a table changes "by itself". List all triggers with <code>SELECT name FROM sqlite_master WHERE type = 'trigger';</code></li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Try It</h3>
          <p>In the starter code, uncomment the order for 50 keyboards and run it. You should see <code>Error: not enough stock</code>. Comment it out again. Then write an <code>AFTER DELETE ON orders</code> trigger that puts <code>OLD.qty</code> back into stock. Delete order 2 and check that the Mouse stock goes back to 25.</p>
        </div>

        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Keep trigger bodies short and simple: log a row, change a counter, or reject a change. Put business decisions, emails and payments in application code. There, they are easy to test and to see.
        </div>
      HTML
      starter_code: <<~'SQL'
        -- Triggers
        PRAGMA foreign_keys = ON;
        CREATE TABLE products (
            id          INTEGER PRIMARY KEY,
            name        TEXT    NOT NULL,
            price_paise INTEGER NOT NULL,
            stock       INTEGER NOT NULL CHECK (stock >= 0)
        );
        CREATE TABLE price_log (id INTEGER PRIMARY KEY, product_id INTEGER, old_price INTEGER,
            new_price INTEGER, changed_at TEXT DEFAULT (datetime('now')));
        CREATE TABLE orders (id INTEGER PRIMARY KEY, qty INTEGER NOT NULL CHECK (qty > 0),
            product_id INTEGER NOT NULL REFERENCES products (id));
        INSERT INTO products VALUES (1, 'Keyboard', 129900, 10), (2, 'Mouse', 49900, 25);

        -- 1. AFTER UPDATE: write an audit row, but only when the price really changed
        CREATE TRIGGER log_price_change
        AFTER UPDATE OF price_paise ON products
        WHEN OLD.price_paise <> NEW.price_paise
        BEGIN
            INSERT INTO price_log (product_id, old_price, new_price)
            VALUES (NEW.id, OLD.price_paise, NEW.price_paise);
        END;

        -- 2. BEFORE INSERT: reject an order when there is not enough stock
        CREATE TRIGGER check_stock
        BEFORE INSERT ON orders
        WHEN NEW.qty > (SELECT stock FROM products WHERE id = NEW.product_id)
        BEGIN
            SELECT RAISE(ABORT, 'not enough stock');
        END;

        -- 3. AFTER INSERT: take the ordered quantity out of stock
        CREATE TRIGGER reduce_stock
        AFTER INSERT ON orders
        BEGIN
            UPDATE products SET stock = stock - NEW.qty WHERE id = NEW.product_id;
        END;

        UPDATE products SET price_paise = 119900 WHERE id = 1;   -- logged
        UPDATE products SET price_paise = 49900  WHERE id = 2;   -- same price: not logged
        UPDATE products SET name = 'Mechanical Keyboard' WHERE id = 1;  -- other column: not logged
        SELECT product_id, old_price, new_price FROM price_log;

        INSERT INTO orders (product_id, qty) VALUES (1, 3), (2, 5), (1, 2);
        -- INSERT INTO orders (product_id, qty) VALUES (1, 50);   -- Try it: fails with 'not enough stock'
        SELECT id, name, stock FROM products;
      SQL
    },

    21 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-sql">SQL</div>
          <h1 class="lc-title">Capstone: Online Store Analytics</h1>
        </div>
        <p class="lc-lead">Now you will use everything together. You will design a small online-store database for a shop called <em>Kirana Online</em>. You will load the data safely inside a transaction. Then you will answer the questions a real business owner asks every week.</p>

        <div class="lc-card">
          <h3>The Brief</h3>
          <ul class="lc-list">
            <li>Customers (with state), products (with category and price), orders and order lines.</li>
            <li>Money is stored as <strong>INTEGER paise</strong>. Each order line keeps the <strong>price paid</strong>.</li>
            <li>The owner wants four things: revenue by category, the best customer in each state, monthly revenue with a running total, and a list of customers who have never ordered.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Step 1: Schema With Constraints (Lessons 2, 10, 13)</h3>
        <div class="lc-code">customers(id PK, name NOT NULL, state NOT NULL)<br>products(id PK, name UNIQUE, category, price_paise CHECK &gt; 0)<br>orders(id PK, customer_id FK, order_date)<br>order_items(order_id FK, product_id FK, qty CHECK &gt; 0, unit_price_paise,<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;PRIMARY KEY (order_id, product_id))</div>
        </div>

        <div class="lc-card">
          <h3>Step 2: Load Data in a Transaction (Lessons 3, 19)</h3>
          <p>All inserts go between <code>BEGIN</code> and <code>COMMIT</code>. So if a mistake happens halfway, no data is half-loaded. An index on the foreign key <code>order_items(product_id)</code> keeps category joins fast (lesson 18).</p>
        </div>

        <div class="lc-card">
          <h3>Step 3: The Business Questions</h3>
          <table class="lc-table">
            <thead><tr><th>Question</th><th>Techniques</th></tr></thead>
            <tbody>
              <tr><td>Revenue per category</td><td>JOIN + GROUP BY + SUM (lessons 9, 11)</td></tr>
              <tr><td>Best customer in each state</td><td>CTE + RANK() OVER (PARTITION BY state) (lessons 16, 17)</td></tr>
              <tr><td>Monthly revenue and running total</td><td>GROUP BY month + SUM() OVER (ORDER BY month)</td></tr>
              <tr><td>Customers who never ordered</td><td>NOT EXISTS / LEFT JOIN anti-join (lessons 12, 14)</td></tr>
              <tr><td>A reusable report</td><td>CREATE VIEW (lesson 16)</td></tr>
            </tbody>
          </table>
          <p>Expected result for revenue per category (from the starter data):</p>
        <div class="lc-code">category&nbsp;&nbsp;revenue_rupees<br>--------&nbsp;&nbsp;--------------<br>Staples&nbsp;&nbsp;&nbsp;1260.00<br>Snacks&nbsp;&nbsp;&nbsp;&nbsp;300.00</div>
        </div>

        <div class="lc-card">
          <h3>Clause Order Cheat Sheet</h3>
        <div class="lc-code">WITH ...&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-- optional named steps<br>SELECT ... , win() OVER (...)&nbsp;&nbsp;&nbsp;&nbsp;-- 5. choose / compute columns<br>FROM ... JOIN ... ON ...&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-- 1. gather rows<br>WHERE ...&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-- 2. filter rows<br>GROUP BY ...&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-- 3. make groups<br>HAVING ...&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-- 4. filter groups<br>ORDER BY ... LIMIT ...&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-- 6. sort and slice</div>
        </div>

        <div class="lc-card">
          <h3>Common Mistakes to Check Before You Submit</h3>
          <ul class="lc-list">
            <li>Summing <code>products.price_paise</code> instead of <code>order_items.qty * unit_price_paise</code>.</li>
            <li>Using <code>COUNT(*)</code> after a LEFT JOIN when counting orders.</li>
            <li>Forgetting a tie-breaker (an extra sort column for equal values) when ranking or paginating.</li>
            <li>Displaying paise as rupees without dividing by 100.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Try It: Extend the Project</h3>
          <ol class="lc-list">
            <li>Add a <code>status</code> column to <code>orders</code> with <code>CHECK (status IN ('placed','shipped','cancelled'))</code>. Leave cancelled orders out of every report.</li>
            <li>Find each customer's first order date and the number of days since then (use <code>julianday</code>).</li>
            <li>Show the top product per category by quantity sold, using <code>ROW_NUMBER()</code>.</li>
            <li>Run <code>EXPLAIN QUERY PLAN</code> on your category report before and after dropping the index.</li>
            <li>Add an <code>AFTER UPDATE OF price_paise ON products</code> trigger that writes old and new prices to a <code>price_history</code> table (Lesson 20).</li>
          </ol>
        </div>

        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Keep this capstone as a portfolio project. Write a short README with the schema diagram and 5 business questions answered in SQL. Interviewers for data analyst and backend jobs like to see exactly this.
        </div>
      HTML
      starter_code: <<~'SQL'
        -- Capstone: Online Store Analytics ("Kirana Online")
        CREATE TABLE customers (id INTEGER PRIMARY KEY, name TEXT NOT NULL, state TEXT NOT NULL);
        CREATE TABLE products  (id INTEGER PRIMARY KEY, name TEXT NOT NULL UNIQUE, category TEXT NOT NULL,
                                price_paise INTEGER NOT NULL CHECK (price_paise > 0));
        CREATE TABLE orders    (id INTEGER PRIMARY KEY, customer_id INTEGER NOT NULL REFERENCES customers(id),
                                order_date TEXT NOT NULL);
        CREATE TABLE order_items (order_id INTEGER REFERENCES orders(id), product_id INTEGER REFERENCES products(id),
                                  qty INTEGER NOT NULL CHECK (qty > 0), unit_price_paise INTEGER NOT NULL,
                                  PRIMARY KEY (order_id, product_id));
        CREATE INDEX idx_items_product ON order_items (product_id);

        BEGIN;
        INSERT INTO customers VALUES (1,'Anjali','Kerala'), (2,'Bilal','Kerala'), (3,'Charu','Goa'), (4,'Dhruv','Goa');
        INSERT INTO products VALUES (1,'Atta 5kg','Staples',26000), (2,'Toor Dal 1kg','Staples',15000),
                                    (3,'Chakli Pack','Snacks',6000);
        INSERT INTO orders VALUES (1,1,'2026-07-03'), (2,2,'2026-07-19'), (3,1,'2026-08-11'), (4,3,'2026-09-02');
        INSERT INTO order_items VALUES (1,1,1,25000), (1,3,2,6000), (2,2,2,15000),
                                       (3,1,1,26000), (3,2,1,15000), (4,2,2,15000), (4,3,3,6000);
        COMMIT;

        -- Q1. Revenue per category (uses the price actually paid)
        SELECT p.category, printf('%.2f', SUM(i.qty * i.unit_price_paise) / 100.0) AS revenue_rupees
        FROM order_items i JOIN products p ON p.id = i.product_id
        GROUP BY p.category ORDER BY SUM(i.qty * i.unit_price_paise) DESC;

        -- Q2. Best customer in each state
        WITH spend AS (
            SELECT c.state, c.name, SUM(i.qty * i.unit_price_paise) AS paise
            FROM customers c JOIN orders o ON o.customer_id = c.id
            JOIN order_items i ON i.order_id = o.id
            GROUP BY c.id, c.state, c.name),
        ranked AS (SELECT *, RANK() OVER (PARTITION BY state ORDER BY paise DESC) AS rnk FROM spend)
        SELECT state, name, paise / 100 AS rupees FROM ranked WHERE rnk = 1 ORDER BY state;

        -- Q3. Monthly revenue with a running total, saved as a view
        CREATE VIEW monthly_revenue AS
        SELECT substr(o.order_date, 1, 7) AS month, SUM(i.qty * i.unit_price_paise) / 100 AS rupees
        FROM orders o JOIN order_items i ON i.order_id = o.id GROUP BY month;
        SELECT month, rupees, SUM(rupees) OVER (ORDER BY month) AS running_total FROM monthly_revenue;

        -- Q4. Customers who have never ordered
        SELECT name AS never_ordered FROM customers c
        WHERE NOT EXISTS (SELECT 1 FROM orders o WHERE o.customer_id = c.id);
      SQL
    }
  }.freeze
end

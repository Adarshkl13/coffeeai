module SqlContent
  LESSONS = {
    1 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-sql">SQL</div>
          <h1 class="lc-title">Introduction to SQL</h1>
        </div>
        <p class="lc-lead">SQL (Structured Query Language) is the standard language for working with <strong>relational databases</strong>. You use it to create tables, add data, ask questions of that data, and change it safely. Banks, railway booking systems, shopping apps and hospitals all keep their data in SQL databases.</p>

        <div class="lc-card">
          <h3>What Is a Relational Database?</h3>
          <p>A relational database stores data in <strong>tables</strong>. A table looks like a spreadsheet, but with strict rules:</p>
          <ul class="lc-list">
            <li><strong>Columns</strong> have a name and a data type (for example <code>name TEXT</code>, <code>marks INTEGER</code>).</li>
            <li><strong>Rows</strong> are individual records — one student, one order, one payment.</li>
            <li>Each table normally has a <strong>primary key</strong> — a column whose value identifies exactly one row.</li>
            <li>Tables are <strong>related</strong> by storing one table's key in another (a student's <code>city_id</code>, an order's <code>customer_id</code>).</li>
          </ul>
          <p>The software that stores the tables and runs your SQL is a <strong>DBMS</strong> (database management system). Popular ones: PostgreSQL, MySQL, SQLite, Microsoft SQL Server and Oracle.</p>
        </div>

        <div class="lc-card">
          <h3>SQL Is Declarative</h3>
          <p>In Python or Java you write the <em>steps</em>: loop over the list, check each item, append to a result. In SQL you describe <em>what</em> you want and the database decides <em>how</em> to fetch it (which index to use, in what order to read tables).</p>
        <div class="lc-code">-- "Give me the names and marks of students with 80 or more, best first"<br>SELECT name, marks<br>FROM students<br>WHERE marks &gt;= 80<br>ORDER BY marks DESC;</div>
          <p>Expected output (using the table from the starter code):</p>
        <div class="lc-code">name&nbsp;&nbsp;&nbsp;marks<br>-----&nbsp;&nbsp;-----<br>Priya&nbsp;&nbsp;92<br>Kiran&nbsp;&nbsp;85<br>Arjun&nbsp;&nbsp;81</div>
        </div>

        <div class="lc-card">
          <h3>The Main Families of SQL Statements</h3>
          <table class="lc-table">
            <thead><tr><th>Family</th><th>Statements</th><th>What they do</th></tr></thead>
            <tbody>
              <tr><td>DDL — Data Definition</td><td><code>CREATE</code>, <code>ALTER</code>, <code>DROP</code></td><td>Define tables, indexes, views</td></tr>
              <tr><td>DML — Data Manipulation</td><td><code>INSERT</code>, <code>UPDATE</code>, <code>DELETE</code></td><td>Add, change and remove rows</td></tr>
              <tr><td>DQL — Query</td><td><code>SELECT</code></td><td>Read data (often grouped with DML)</td></tr>
              <tr><td>TCL — Transaction Control</td><td><code>BEGIN</code>, <code>COMMIT</code>, <code>ROLLBACK</code></td><td>Group changes so they succeed or fail together</td></tr>
              <tr><td>DCL — Data Control</td><td><code>GRANT</code>, <code>REVOKE</code></td><td>Give or take away permissions (who may read or change which tables). Server databases such as PostgreSQL and MySQL have them; SQLite has no users, so it has no DCL</td></tr>
            </tbody>
          </table>
          <p>Together, INSERT / SELECT / UPDATE / DELETE are often called <strong>CRUD</strong>: Create, Read, Update, Delete.</p>
        </div>

        <div class="lc-card">
          <h3>Standard SQL and Dialects</h3>
          <p>SQL is an ISO standard, but every database adds its own extras — called a <strong>dialect</strong>. The core you learn here (SELECT, WHERE, JOIN, GROUP BY, window functions, transactions) works almost everywhere.</p>
          <table class="lc-table">
            <thead><tr><th>Database</th><th>Runs as</th><th>Typical use</th></tr></thead>
            <tbody>
              <tr><td>SQLite</td><td>A library inside your app; the whole database is one file</td><td>Mobile apps, browsers, small tools, learning</td></tr>
              <tr><td>PostgreSQL</td><td>A server you connect to over the network</td><td>Web apps, analytics, most new projects</td></tr>
              <tr><td>MySQL</td><td>A server you connect to over the network</td><td>Web apps (WordPress, many PHP/Node sites)</td></tr>
            </tbody>
          </table>
          <p><strong>This course's editor runs real SQLite</strong> in your browser. Where SQLite differs from PostgreSQL or MySQL, the lesson says so.</p>
        </div>

        <div class="lc-card">
          <h3>How to Read a Query</h3>
          <ul class="lc-list">
            <li>A statement ends with a semicolon <code>;</code>.</li>
            <li>Keywords are not case-sensitive (<code>select</code> = <code>SELECT</code>), but writing them in UPPERCASE is the common style.</li>
            <li>Text values go in <strong>single quotes</strong>: <code>'Pune'</code>. Double quotes are for identifiers (column or table names).</li>
            <li><code>--</code> starts a comment that runs to the end of the line.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Writing text in double quotes — <code>WHERE city = "Pune"</code> is wrong in standard SQL; use <code>'Pune'</code>.</li>
            <li>Forgetting the semicolon between two statements.</li>
            <li>Assuming rows come back in a fixed order. Without <code>ORDER BY</code>, the order is not guaranteed.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Try It</h3>
          <p>In the starter code, add a sixth student from your own city, then write a query that shows only students from <code>'Chennai'</code>. How many rows do you get?</p>
        </div>

        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Read a SELECT in this order: <em>FROM</em> (which table?) → <em>WHERE</em> (which rows?) → <em>SELECT</em> (which columns?) → <em>ORDER BY</em> (in what order?). That is close to the order the database logically processes it.
        </div>
      HTML
      starter_code: <<~'SQL'
        -- Introduction to SQL
        -- 1. DDL: define a table
        CREATE TABLE students (
            id    INTEGER PRIMARY KEY,
            name  TEXT    NOT NULL,
            city  TEXT,
            marks INTEGER
        );

        -- 2. DML: add rows
        INSERT INTO students (id, name, city, marks) VALUES
            (1, 'Priya', 'Chennai', 92),
            (2, 'Arjun', 'Pune',    81),
            (3, 'Meera', 'Delhi',   74),
            (4, 'Kiran', 'Chennai', 85),
            (5, 'Rahul', 'Jaipur',  67);

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
        <p class="lc-lead"><code>CREATE TABLE</code> defines a table's columns, their data types and their rules. Good types keep bad data out and make calculations correct — especially for money and dates.</p>

        <div class="lc-card">
          <h3>CREATE TABLE Syntax</h3>
        <div class="lc-code">CREATE TABLE products (<br>&nbsp;&nbsp;&nbsp;&nbsp;id&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;INTEGER PRIMARY KEY,&nbsp;&nbsp;&nbsp;-- unique id for each row<br>&nbsp;&nbsp;&nbsp;&nbsp;name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;TEXT&nbsp;&nbsp;&nbsp;&nbsp;NOT NULL,&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-- must have a value<br>&nbsp;&nbsp;&nbsp;&nbsp;category&nbsp;&nbsp;&nbsp;&nbsp;TEXT,&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-- may be NULL (unknown)<br>&nbsp;&nbsp;&nbsp;&nbsp;price_paise INTEGER NOT NULL,&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-- money as whole paise: 49900 = Rs 499.00<br>&nbsp;&nbsp;&nbsp;&nbsp;in_stock&nbsp;&nbsp;&nbsp;&nbsp;INTEGER DEFAULT 1,&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-- 1 = true, 0 = false<br>&nbsp;&nbsp;&nbsp;&nbsp;added_on&nbsp;&nbsp;&nbsp;&nbsp;TEXT&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-- ISO date 'YYYY-MM-DD'<br>);</div>
          <ul class="lc-list">
            <li><code>PRIMARY KEY</code> — each row's key value must be unique and not NULL.</li>
            <li><code>NOT NULL</code> — the column must always have a value.</li>
            <li><code>DEFAULT</code> — the value used when an INSERT does not give one.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Common Types Across Databases</h3>
          <table class="lc-table">
            <thead><tr><th>Kind of data</th><th>Standard / PostgreSQL / MySQL</th><th>SQLite</th></tr></thead>
            <tbody>
              <tr><td>Whole numbers</td><td><code>INTEGER</code>, <code>BIGINT</code></td><td><code>INTEGER</code></td></tr>
              <tr><td>Exact decimals (money)</td><td><code>DECIMAL(10,2)</code> / <code>NUMERIC(10,2)</code></td><td><code>INTEGER</code> holding paise/cents</td></tr>
              <tr><td>Approximate decimals (measurements)</td><td><code>REAL</code>, <code>DOUBLE PRECISION</code></td><td><code>REAL</code></td></tr>
              <tr><td>Text</td><td><code>VARCHAR(n)</code>, <code>TEXT</code></td><td><code>TEXT</code></td></tr>
              <tr><td>True/false</td><td><code>BOOLEAN</code></td><td><code>INTEGER</code> 0 / 1 (TRUE and FALSE are aliases)</td></tr>
              <tr><td>Dates and times</td><td><code>DATE</code>, <code>TIMESTAMP</code></td><td><code>TEXT</code> in ISO format <code>'2026-09-25'</code></td></tr>
            </tbody>
          </table>
        </div>

        <div class="lc-card">
          <h3>Why Money Is Never REAL or FLOAT</h3>
          <p><code>REAL</code>/<code>FLOAT</code> store binary approximations. <code>0.1</code> cannot be stored exactly, so small errors creep into totals.</p>
        <div class="lc-code">SELECT 0.1 + 0.2 = 0.3 AS is_equal;&nbsp;&nbsp;&nbsp;-- 0 (false!)<br>SELECT 10 + 20 = 30&nbsp;&nbsp;&nbsp;AS is_equal;&nbsp;&nbsp;&nbsp;-- 1 (integers are exact)</div>
          <p>Two safe options: in PostgreSQL or MySQL use <code>DECIMAL(10,2)</code>, an exact decimal type. In SQLite, <code>DECIMAL</code> is only a label (values may still be stored as REAL), so store <strong>whole paise as INTEGER</strong> and divide by 100 only when displaying: <code>printf('%.2f', price_paise / 100.0)</code>.</p>
        </div>

        <div class="lc-card">
          <h3>SQLite's Flexible Typing and STRICT Tables</h3>
          <p>SQLite uses <strong>type affinity</strong>: a column's type is a preference, not a rule. An ordinary <code>INTEGER</code> column will quietly accept the text <code>'abc'</code>. Since SQLite 3.37 you can add <code>STRICT</code> to reject wrong types, which behaves more like PostgreSQL:</p>
        <div class="lc-code">CREATE TABLE payments (<br>&nbsp;&nbsp;&nbsp;&nbsp;id&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;INTEGER PRIMARY KEY,<br>&nbsp;&nbsp;&nbsp;&nbsp;amount_paise INTEGER NOT NULL<br>) STRICT;<br>-- INSERT INTO payments VALUES (1, 'abc');&nbsp;&nbsp;-- error: cannot store TEXT in INTEGER column</div>
          <p><code>typeof(x)</code> shows how a value is actually stored: <code>integer</code>, <code>real</code>, <code>text</code>, <code>blob</code> or <code>null</code>.</p>
        </div>

        <div class="lc-card">
          <h3>A Primary Key Stops Duplicate Keys — Not Duplicate Data</h3>
          <p>If <code>id</code> is the primary key, two rows cannot share an id. But two rows <em>can</em> have identical names and prices with ids 5 and 6. To stop duplicate products, add a <code>UNIQUE</code> constraint on the column that must be unique (for example <code>sku TEXT UNIQUE</code>). You will see this in the Constraints lesson.</p>
        </div>

        <div class="lc-card">
          <h3>Changing and Removing Tables</h3>
        <div class="lc-code">ALTER TABLE products ADD COLUMN brand TEXT;&nbsp;&nbsp;&nbsp;-- add a column<br>ALTER TABLE products RENAME TO items;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-- rename the table<br>DROP TABLE IF EXISTS old_products;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-- delete a table (no error if missing)</div>
        </div>

        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Storing prices as <code>REAL</code> and then comparing totals with <code>=</code>.</li>
            <li>Storing dates as <code>'25/09/2026'</code> — they will not sort or compare correctly. Use <code>'2026-09-25'</code>.</li>
            <li>Thinking a primary key prevents duplicate records. It only prevents duplicate key values.</li>
            <li>Running <code>DROP TABLE</code> on the wrong table — there is no undo outside a transaction.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Try It</h3>
          <p>Create a STRICT table <code>fees</code> with <code>student_id INTEGER</code>, <code>amount_paise INTEGER</code> and <code>paid_on TEXT</code>. Insert a fee of Rs 12,500.50 and display it as <code>12500.50</code> using <code>printf</code>.</p>
        </div>

        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Name money columns with their unit (<code>price_paise</code>, <code>amount_cents</code>). Anyone reading the schema then knows that 49900 means Rs 499.00, not Rs 49,900.
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
        <p class="lc-lead"><code>INSERT</code> adds new rows to a table. You will learn the safe form (always list the columns), multi-row inserts, defaults, automatic ids, copying rows with <code>INSERT ... SELECT</code>, and getting new values back with <code>RETURNING</code>.</p>

        <div class="lc-card">
          <h3>The Safe Form: Name Your Columns</h3>
        <div class="lc-code">INSERT INTO books (title, author, price_paise)<br>VALUES ('Wings of Fire', 'A. P. J. Abdul Kalam', 39900);</div>
          <p>Listing the columns means the statement still works if someone later adds a column or changes the column order. The short form <code>INSERT INTO books VALUES (...)</code> must supply every column in exact table order — it breaks the day the table changes.</p>
        </div>

        <div class="lc-card">
          <h3>Automatic IDs</h3>
          <p>In SQLite, a column declared <code>INTEGER PRIMARY KEY</code> gets the next number automatically when you leave it out. (PostgreSQL uses <code>GENERATED ALWAYS AS IDENTITY</code>; MySQL uses <code>AUTO_INCREMENT</code>.)</p>
        <div class="lc-code">CREATE TABLE books (<br>&nbsp;&nbsp;&nbsp;&nbsp;id&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;INTEGER PRIMARY KEY,<br>&nbsp;&nbsp;&nbsp;&nbsp;title&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;TEXT NOT NULL,<br>&nbsp;&nbsp;&nbsp;&nbsp;author&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;TEXT NOT NULL,<br>&nbsp;&nbsp;&nbsp;&nbsp;price_paise INTEGER NOT NULL,<br>&nbsp;&nbsp;&nbsp;&nbsp;copies&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;INTEGER DEFAULT 1<br>);<br>INSERT INTO books (title, author, price_paise) VALUES ('Godan', 'Premchand', 25000);<br>SELECT id, title, copies FROM books;</div>
        <div class="lc-code">id&nbsp;&nbsp;title&nbsp;&nbsp;copies<br>--&nbsp;&nbsp;-----&nbsp;&nbsp;------<br>1&nbsp;&nbsp;&nbsp;Godan&nbsp;&nbsp;1</div>
          <p>Both <code>id</code> (automatic) and <code>copies</code> (DEFAULT) were filled in for us.</p>
        </div>

        <div class="lc-card">
          <h3>Many Rows in One Statement</h3>
        <div class="lc-code">INSERT INTO books (title, author, price_paise, copies) VALUES<br>&nbsp;&nbsp;&nbsp;&nbsp;('The Guide',&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;'R. K. Narayan', 29900, 3),<br>&nbsp;&nbsp;&nbsp;&nbsp;('Train to Pakistan', 'Khushwant Singh', 35000, 2),<br>&nbsp;&nbsp;&nbsp;&nbsp;('Malgudi Days',&nbsp;&nbsp;&nbsp;&nbsp;'R. K. Narayan', 19900, 5);</div>
          <p>One multi-row insert is faster than many single inserts and is supported by SQLite, PostgreSQL and MySQL.</p>
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
              <tr><td><code>INSERT ... VALUES (...), (...)</code></td><td>Loading several rows at once</td></tr>
              <tr><td><code>INSERT ... SELECT</code></td><td>Copying or summarising existing rows</td></tr>
              <tr><td><code>... RETURNING</code></td><td>You need the new id or defaults immediately</td></tr>
            </tbody>
          </table>
        </div>

        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Leaving out the column list, so values land in the wrong columns.</li>
            <li>Writing <code>'NULL'</code> in quotes — that stores the four-letter text, not a missing value.</li>
            <li>Building INSERT strings by pasting user input into SQL. In application code always use <strong>parameters</strong> (<code>?</code> placeholders) to prevent SQL injection.</li>
            <li>Giving a value count that does not match the column count — the database rejects the row.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Try It</h3>
          <p>Add two books by Ruskin Bond in a single INSERT, using <code>RETURNING id, title</code>. Then insert every book priced under Rs 200 into <code>budget_books</code> using <code>INSERT ... SELECT</code>.</p>
        </div>

        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> When loading thousands of rows, wrap the inserts in one transaction (<code>BEGIN; ... COMMIT;</code>). Each separate commit forces a write to disk, so one transaction can be many times faster.
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
        <p class="lc-lead"><code>SELECT</code> reads data. It can pick columns, calculate new values, rename results with aliases and remove duplicates with <code>DISTINCT</code>. A SELECT never changes the table — it only produces a result set.</p>

        <div class="lc-card">
          <h3>Choosing Columns</h3>
        <div class="lc-code">SELECT * FROM employees;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-- every column (fine for exploring)<br>SELECT name, department FROM employees; -- only what you need (use this in apps)</div>
          <p><code>SELECT *</code> is handy while exploring, but in application code list the columns. It sends less data, and your code will not break or silently change when someone adds, removes or reorders columns.</p>
        </div>

        <div class="lc-card">
          <h3>Expressions and Aliases</h3>
          <p>A column in the SELECT list can be any expression. <code>AS</code> gives the result column a readable name (an <strong>alias</strong>).</p>
        <div class="lc-code">SELECT name,<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;monthly_salary * 12&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;AS annual_salary,<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;name || ' (' || department || ')' AS label<br>FROM employees<br>WHERE id &lt;= 2;</div>
        <div class="lc-code">name&nbsp;&nbsp;&nbsp;&nbsp;annual_salary&nbsp;&nbsp;label<br>------&nbsp;&nbsp;-------------&nbsp;&nbsp;------------------<br>Asha&nbsp;&nbsp;&nbsp;&nbsp;1080000&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Asha (Engineering)<br>Vikram&nbsp;&nbsp;720000&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Vikram (Sales)</div>
          <p><code>||</code> joins text in standard SQL, SQLite and PostgreSQL. (MySQL uses <code>CONCAT()</code> instead.) If an alias contains spaces, quote it with double quotes: <code>AS "Annual Salary"</code>.</p>
        </div>

        <div class="lc-card">
          <h3>Integer Division Surprise</h3>
        <div class="lc-code">SELECT 7 / 2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;AS int_div,&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-- 3&nbsp;&nbsp;&nbsp;(both integers: result is truncated)<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;7 / 2.0&nbsp;&nbsp;&nbsp;&nbsp;AS real_div,&nbsp;&nbsp;&nbsp;&nbsp;-- 3.5<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;7 % 2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;AS remainder;&nbsp;&nbsp;&nbsp;-- 1</div>
          <p>SQLite and PostgreSQL truncate when both sides are integers; MySQL returns 3.5000. Multiply by <code>1.0</code> or divide by <code>2.0</code> when you want a decimal answer.</p>
        </div>

        <div class="lc-card">
          <h3>DISTINCT — Unique Rows Only</h3>
        <div class="lc-code">SELECT DISTINCT department FROM employees;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-- each department once<br>SELECT DISTINCT department, city FROM employees;&nbsp;&nbsp;&nbsp;-- each unique PAIR once<br>SELECT COUNT(DISTINCT city) AS cities FROM employees;</div>
          <p><code>DISTINCT</code> applies to the <strong>whole row</strong> of selected columns, not just the first column.</p>
        </div>

        <div class="lc-card">
          <h3>How SELECT Is Processed</h3>
          <table class="lc-table">
            <thead><tr><th>Written order</th><th>Logical processing order</th></tr></thead>
            <tbody>
              <tr><td>1. SELECT</td><td>1. FROM (and JOINs)</td></tr>
              <tr><td>2. FROM</td><td>2. WHERE</td></tr>
              <tr><td>3. WHERE</td><td>3. GROUP BY / HAVING</td></tr>
              <tr><td>4. GROUP BY / HAVING</td><td>4. SELECT (expressions, aliases, DISTINCT)</td></tr>
              <tr><td>5. ORDER BY / LIMIT</td><td>5. ORDER BY, then LIMIT</td></tr>
            </tbody>
          </table>
          <p>This explains a classic rule: you can use a SELECT alias in <code>ORDER BY</code> (it runs later), but standard SQL does not let you use it in <code>WHERE</code> (it runs earlier). SQLite is lenient here, but do not rely on it — PostgreSQL rejects it.</p>
        </div>

        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Forgetting a comma between columns: <code>SELECT name department</code> silently makes <code>department</code> an alias of <code>name</code>.</li>
            <li>Using <code>SELECT *</code> in production code.</li>
            <li>Expecting <code>7 / 2</code> to be 3.5 in SQLite or PostgreSQL.</li>
            <li>Thinking <code>DISTINCT a, b</code> means "distinct a" only.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Try It</h3>
          <p>Show each employee's name and a <code>daily_rate</code> column equal to monthly salary divided by 30, as a decimal rounded to 2 places with <code>ROUND(..., 2)</code>. Then list the distinct cities.</p>
        </div>

        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> <code>SELECT</code> works without a table, which makes it a handy calculator: <code>SELECT 18 * 1.5, upper('sql'), date('2026-09-25', '+7 days');</code>
        </div>
      HTML
      starter_code: <<~'SQL'
        -- SELECT Queries
        CREATE TABLE employees (
            id             INTEGER PRIMARY KEY,
            name           TEXT NOT NULL,
            department     TEXT NOT NULL,
            city           TEXT,
            monthly_salary INTEGER NOT NULL   -- whole rupees
        );
        INSERT INTO employees (name, department, city, monthly_salary) VALUES
            ('Asha',   'Engineering', 'Bengaluru', 90000),
            ('Vikram', 'Sales',       'Mumbai',    60000),
            ('Neha',   'Engineering', 'Bengaluru', 95000),
            ('Imran',  'Sales',       'Delhi',     55000),
            ('Divya',  'HR',          'Mumbai',    50000);

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
        SELECT DISTINCT department, city FROM employees;
        SELECT COUNT(DISTINCT city) AS cities FROM employees;

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
        <p class="lc-lead"><code>WHERE</code> keeps only the rows for which a condition is true. You combine comparisons with <code>AND</code>, <code>OR</code> and <code>NOT</code>, and use shortcuts like <code>IN</code>, <code>BETWEEN</code> and <code>LIKE</code>.</p>

        <div class="lc-card">
          <h3>Comparison Operators</h3>
          <table class="lc-table">
            <thead><tr><th>Operator</th><th>Meaning</th><th>Example</th></tr></thead>
            <tbody>
              <tr><td><code>=</code></td><td>equal</td><td><code>city = 'Pune'</code></td></tr>
              <tr><td><code>&lt;&gt;</code> or <code>!=</code></td><td>not equal</td><td><code>status &lt;&gt; 'cancelled'</code></td></tr>
              <tr><td><code>&lt;  &lt;=  &gt;  &gt;=</code></td><td>less / greater</td><td><code>amount &gt;= 1000</code></td></tr>
              <tr><td><code>BETWEEN a AND b</code></td><td>a ≤ value ≤ b (both ends included)</td><td><code>amount BETWEEN 500 AND 2000</code></td></tr>
              <tr><td><code>IN (...)</code></td><td>matches any value in a list</td><td><code>city IN ('Pune', 'Goa')</code></td></tr>
              <tr><td><code>LIKE</code></td><td>pattern match</td><td><code>name LIKE 'A%'</code></td></tr>
              <tr><td><code>IS NULL</code></td><td>value is missing</td><td><code>coupon IS NULL</code></td></tr>
            </tbody>
          </table>
        </div>

        <div class="lc-card">
          <h3>AND Binds Tighter Than OR</h3>
          <p>Like multiplication before addition, <code>AND</code> is evaluated before <code>OR</code>. Use parentheses to say what you mean.</p>
        <div class="lc-code">-- Intended: Pune orders that are either large OR paid by UPI<br>SELECT id, city, amount, method FROM orders<br>WHERE city = 'Pune' AND amount &gt; 2000 OR method = 'UPI';&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-- WRONG<br>-- Read as: (city = 'Pune' AND amount &gt; 2000) OR method = 'UPI'<br><br>SELECT id, city, amount, method FROM orders<br>WHERE city = 'Pune' AND (amount &gt; 2000 OR method = 'UPI');&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-- RIGHT</div>
          <p>With the starter data, the first query returns 4 rows (it includes UPI orders from every city); the second returns 3, all from Pune.</p>
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
          <p><code>%</code> = any number of characters (even zero). <code>_</code> = exactly one character. In SQLite, <code>LIKE</code> ignores case for English letters; in PostgreSQL it is case-sensitive (use <code>ILIKE</code> there).</p>
        </div>

        <div class="lc-card">
          <h3>Filtering Dates Stored as ISO Text</h3>
        <div class="lc-code">SELECT id, order_date FROM orders<br>WHERE order_date &gt;= '2026-09-01' AND order_date &lt; '2026-10-01';&nbsp;&nbsp;&nbsp;-- all of September</div>
          <p>Because <code>'YYYY-MM-DD'</code> text sorts in date order, normal comparisons work. A half-open range (<code>&gt;=</code> start, <code>&lt;</code> next start) is safer than <code>BETWEEN</code> when values also contain a time, such as <code>'2026-09-30 18:45'</code>.</p>
        </div>

        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Mixing AND and OR without parentheses.</li>
            <li>Writing <code>WHERE coupon = NULL</code> — this is never true. Use <code>IS NULL</code> (next lesson).</li>
            <li>Forgetting that <code>BETWEEN</code> includes both ends.</li>
            <li>Using <code>LIKE '%text%'</code> on huge tables and expecting it to be fast — a leading <code>%</code> cannot use a normal index.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Try It</h3>
          <p>Find all orders from Delhi or Mumbai (use <code>IN</code>) with amount between 1000 and 3000, placed in September 2026. Then find customers whose name ends in <code>'a'</code>.</p>
        </div>

        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> When a WHERE clause gets long, put each condition on its own line and add parentheses even when they are not strictly needed. Readers (and your future self) will thank you.
        </div>
      HTML
      starter_code: <<~'SQL'
        -- Filtering with WHERE
        CREATE TABLE orders (
            id         INTEGER PRIMARY KEY,
            customer   TEXT NOT NULL,
            city       TEXT NOT NULL,
            amount     INTEGER NOT NULL,   -- whole rupees
            method     TEXT NOT NULL,      -- UPI / Card / Cash
            order_date TEXT NOT NULL
        );
        INSERT INTO orders (customer, city, amount, method, order_date) VALUES
            ('Asha',  'Pune',   2500, 'Card', '2026-08-28'),
            ('Rohan', 'Pune',    800, 'UPI',  '2026-09-02'),
            ('Kavya', 'Delhi',  1500, 'UPI',  '2026-09-05'),
            ('Mohan', 'Pune',   3200, 'Cash', '2026-09-10'),
            ('Shreya','Mumbai', 1200, 'Card', '2026-09-18'),
            ('Anand', 'Delhi',  4100, 'Card', '2026-10-01');

        -- AND before OR: this is (Pune AND > 2000) OR UPI
        SELECT id, customer, city, amount, method FROM orders
        WHERE city = 'Pune' AND amount > 2000 OR method = 'UPI';

        -- Parentheses express the real intent
        SELECT id, customer, city, amount, method FROM orders
        WHERE city = 'Pune' AND (amount > 2000 OR method = 'UPI');

        -- IN and BETWEEN (inclusive)
        SELECT customer, city, amount FROM orders
        WHERE city IN ('Delhi', 'Mumbai') AND amount BETWEEN 1200 AND 4100;

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
        <p class="lc-lead"><code>NULL</code> means <strong>"unknown or missing"</strong>. It is not zero and not an empty string. Because an unknown value cannot be equal to anything, SQL uses <strong>three-valued logic</strong>: a condition can be TRUE, FALSE or UNKNOWN. Many real bugs come from forgetting this.</p>

        <div class="lc-card">
          <h3>Comparisons With NULL Are UNKNOWN</h3>
        <div class="lc-code">SELECT NULL = NULL&nbsp;&nbsp;&nbsp;AS a,&nbsp;&nbsp;&nbsp;-- NULL (unknown), not true!<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;NULL &lt;&gt; 5&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;AS b,&nbsp;&nbsp;&nbsp;-- NULL<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;NULL + 10&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;AS c,&nbsp;&nbsp;&nbsp;-- NULL (arithmetic with unknown is unknown)<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;NULL IS NULL&nbsp;&nbsp;AS d;&nbsp;&nbsp;&nbsp;-- 1 (true)</div>
          <p><code>WHERE</code> keeps a row only when the condition is <strong>TRUE</strong>. UNKNOWN rows are dropped, just like FALSE ones. So <code>WHERE phone = NULL</code> returns nothing, always. Use <code>IS NULL</code> / <code>IS NOT NULL</code>.</p>
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
          <p>Notice <code>NOT UNKNOWN</code> is still UNKNOWN. That is why <code>WHERE NOT (discount &gt; 10)</code> also skips rows where discount is NULL.</p>
        </div>

        <div class="lc-card">
          <h3>Tools for NULL</h3>
          <table class="lc-table">
            <thead><tr><th>Expression</th><th>Result</th><th>Use</th></tr></thead>
            <tbody>
              <tr><td><code>x IS NULL</code> / <code>x IS NOT NULL</code></td><td>TRUE or FALSE, never unknown</td><td>Test for missing values</td></tr>
              <tr><td><code>COALESCE(x, y, 0)</code></td><td>First non-NULL argument</td><td>Replace missing with a default</td></tr>
              <tr><td><code>NULLIF(x, 0)</code></td><td>NULL if x = 0, else x</td><td>Avoid divide-by-zero: <code>total / NULLIF(count, 0)</code></td></tr>
              <tr><td><code>a IS DISTINCT FROM b</code></td><td>Treats two NULLs as equal</td><td>Null-safe "not equal" (standard SQL, PostgreSQL, SQLite 3.39+)</td></tr>
            </tbody>
          </table>
        </div>

        <div class="lc-card">
          <h3>Aggregates Skip NULL</h3>
        <div class="lc-code">-- bonus values: 5000, NULL, 3000, NULL<br>SELECT COUNT(*)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;AS all_rows,&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-- 4<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;COUNT(bonus)&nbsp;&nbsp;AS with_bonus,&nbsp;&nbsp;&nbsp;-- 2<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;SUM(bonus)&nbsp;&nbsp;&nbsp;&nbsp;AS total,&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-- 8000<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;AVG(bonus)&nbsp;&nbsp;&nbsp;&nbsp;AS avg_known,&nbsp;&nbsp;&nbsp;&nbsp;-- 4000.0 (average of 2 known values)<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;AVG(COALESCE(bonus, 0)) AS avg_all;&nbsp;&nbsp;-- 2000.0 (NULL counted as 0)</div>
          <p>Decide which average is correct for your question. "Average bonus of people who got one" and "average bonus per employee" are different numbers.</p>
        </div>

        <div class="lc-card">
          <h3>The NOT IN Trap</h3>
        <div class="lc-code">-- Which employees are nobody's mentor?<br>SELECT name FROM staff<br>WHERE id NOT IN (SELECT mentor_id FROM staff);&nbsp;&nbsp;&nbsp;-- returns NO rows if any mentor_id is NULL!</div>
          <p><code>x NOT IN (1, 2, NULL)</code> means <code>x &lt;&gt; 1 AND x &lt;&gt; 2 AND x &lt;&gt; NULL</code>. The last part is UNKNOWN, so the whole condition can never be TRUE. Fix it by filtering NULLs in the subquery (<code>WHERE mentor_id IS NOT NULL</code>) or by using <code>NOT EXISTS</code> (lesson 14).</p>
        </div>

        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li><code>= NULL</code> instead of <code>IS NULL</code>.</li>
            <li><code>NOT IN</code> against a column that can contain NULL.</li>
            <li>Concatenating a NULL: <code>'Mr ' || NULL</code> is NULL. Wrap with <code>COALESCE(x, '')</code>.</li>
            <li>Using an empty string <code>''</code> to mean "unknown" — pick NULL and be consistent.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Try It</h3>
          <p>In the starter code, list staff whose bonus is <em>not</em> greater than 4000 — make sure people with a NULL bonus are included, using <code>COALESCE</code>. Then fix the NOT IN query so it returns the staff who mentor nobody.</p>
        </div>

        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> When a query returns fewer rows than you expect, ask "could any of these columns be NULL?" before anything else.
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
        <p class="lc-lead">A table has no built-in order. <code>ORDER BY</code> sorts the result, and <code>LIMIT</code> / <code>OFFSET</code> take a slice of it — the basis of "top 10" lists and page 1, 2, 3 of search results.</p>

        <div class="lc-card">
          <h3>Sorting</h3>
        <div class="lc-code">SELECT name, city, score FROM players<br>ORDER BY score DESC;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-- highest first (ASC is the default)<br><br>SELECT name, city, score FROM players<br>ORDER BY city ASC, score DESC;&nbsp;&nbsp;&nbsp;&nbsp;-- by city, then best score within each city</div>
          <p>Each column in <code>ORDER BY</code> has its own direction. <code>ORDER BY city, score DESC</code> sorts city ascending and score descending.</p>
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
          <p>Dev and Tara are tied on 950. Adding <code>id</code> as a <strong>tie-breaker</strong> makes the order deterministic, so the same query always returns the same rows. Without it the database may return the tied rows in any order.</p>
        </div>

        <div class="lc-card">
          <h3>Pagination: OFFSET vs Keyset</h3>
        <div class="lc-code">-- Page 2 with 3 rows per page (OFFSET style)<br>SELECT id, name, score FROM players<br>ORDER BY score DESC, id<br>LIMIT 3 OFFSET 3;<br><br>-- Keyset ("seek") style: continue after the last row you showed<br>-- last row on page 1 was (score 950, id 7)<br>SELECT id, name, score FROM players<br>WHERE score &lt; 950 OR (score = 950 AND id &gt; 7)<br>ORDER BY score DESC, id<br>LIMIT 3;</div>
          <table class="lc-table">
            <thead><tr><th></th><th>LIMIT / OFFSET</th><th>Keyset (WHERE after last row)</th></tr></thead>
            <tbody>
              <tr><td>Easy to write</td><td>Yes</td><td>A little harder</td></tr>
              <tr><td>Jump to page 50</td><td>Yes</td><td>No — only next/previous</td></tr>
              <tr><td>Speed on deep pages</td><td>Slows down: it still reads and skips every earlier row</td><td>Stays fast with an index on the sort columns</td></tr>
              <tr><td>New rows inserted while paging</td><td>Rows can repeat or be skipped</td><td>Stable</td></tr>
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
            <li>Using <code>LIMIT</code> without <code>ORDER BY</code> — "the first 10 rows" is then meaningless.</li>
            <li>Sorting only by a column with ties and then paginating — rows jump between pages.</li>
            <li>Sorting numbers stored as TEXT: <code>'100'</code> sorts before <code>'20'</code>. Store numbers in numeric columns.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Try It</h3>
          <p>Show the lowest two scores from Chennai. Then write page 3 (rows 7–8) of the full leaderboard using both the OFFSET style and the keyset style (page 2 ended at score 610, id 4). Kabir appears in one version but not the other — explain why. (Hint: what is <code>NULL &lt; 610</code>?)</p>
        </div>

        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Always finish an ORDER BY used for paging with a unique column (usually the primary key). It costs nothing and removes a whole class of "why did this row appear twice?" bugs.
        </div>
      HTML
      starter_code: <<~'SQL'
        -- ORDER BY, LIMIT and Pagination
        CREATE TABLE players (
            id    INTEGER PRIMARY KEY,
            name  TEXT NOT NULL,
            city  TEXT NOT NULL,
            score INTEGER            -- NULL = has not played yet
        );
        INSERT INTO players (id, name, city, score) VALUES
            (1, 'Aman',  'Chennai', 720),
            (2, 'Zoya',  'Kolkata', 980),
            (3, 'Dev',   'Chennai', 950),
            (4, 'Riya',  'Kolkata', 610),
            (5, 'Kabir', 'Chennai', NULL),
            (6, 'Lina',  'Kolkata', 830),
            (7, 'Tara',  'Chennai', 950),
            (8, 'Om',    'Kolkata', 500);

        -- Two-level sort, NULL scores pushed to the end
        SELECT city, name, score FROM players
        ORDER BY city ASC, score DESC NULLS LAST;

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
        <p class="lc-lead"><code>UPDATE</code> changes existing rows, <code>DELETE</code> removes rows, and an <strong>upsert</strong> means "insert this row, or update it if it already exists". These statements change real data, so the safe habits in this lesson matter more than the syntax.</p>

        <div class="lc-card">
          <h3>UPDATE</h3>
        <div class="lc-code">UPDATE inventory<br>SET price_paise = price_paise * 110 / 100,&nbsp;&nbsp;&nbsp;-- 10% increase<br>&nbsp;&nbsp;&nbsp;&nbsp;updated_on&nbsp;&nbsp;= '2026-09-25'<br>WHERE category = 'Snacks';</div>
          <p>You can set several columns at once, and the right-hand side can use the row's current values. <strong>Without <code>WHERE</code>, every row in the table is updated.</strong></p>
        </div>

        <div class="lc-card">
          <h3>DELETE</h3>
        <div class="lc-code">DELETE FROM inventory WHERE qty = 0;&nbsp;&nbsp;&nbsp;-- only out-of-stock rows<br>DELETE FROM inventory;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-- ALL rows (table stays, empty)<br>DROP TABLE inventory;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-- the table itself is gone</div>
        </div>

        <div class="lc-card">
          <h3>The Safe Workflow</h3>
          <ol class="lc-list">
            <li>Write the <code>WHERE</code> clause as a <code>SELECT</code> first and check the rows: <code>SELECT * FROM inventory WHERE qty = 0;</code></li>
            <li>Start a transaction: <code>BEGIN;</code></li>
            <li>Run the UPDATE or DELETE with exactly the same WHERE.</li>
            <li>Check the result (or use <code>RETURNING</code> to see changed rows). Then <code>COMMIT;</code> — or <code>ROLLBACK;</code> if something looks wrong.</li>
          </ol>
        <div class="lc-code">DELETE FROM inventory WHERE qty = 0<br>RETURNING sku, name;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-- SQLite 3.35+ and PostgreSQL show the deleted rows</div>
        </div>

        <div class="lc-card">
          <h3>Upsert: INSERT ... ON CONFLICT</h3>
          <p>A delivery arrives. If the SKU is new, insert it; if it exists, add to its quantity. The conflict target must have a <code>UNIQUE</code> or <code>PRIMARY KEY</code> constraint.</p>
        <div class="lc-code">INSERT INTO inventory (sku, name, category, qty, price_paise)<br>VALUES ('CHAI-250', 'Tea 250g', 'Beverages', 20, 14000)<br>ON CONFLICT (sku) DO UPDATE<br>SET qty = inventory.qty + excluded.qty;</div>
          <p><code>excluded</code> is the row you tried to insert. <code>ON CONFLICT (sku) DO NOTHING</code> skips duplicates silently instead.</p>
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
          <p>Avoid <code>INSERT OR REPLACE</code> / <code>REPLACE</code> for upserts: on a conflict it <strong>deletes</strong> the old row and inserts a new one, so any column you did not supply is reset to its default.</p>
        </div>

        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Running UPDATE or DELETE without WHERE (or with a WHERE you never tested).</li>
            <li>Using REPLACE and losing columns you did not mention.</li>
            <li>Checking "does it exist?" with a SELECT and then inserting — two users can do this at the same moment. A single upsert statement is atomic.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Try It</h3>
          <p>Upsert a delivery of 15 units of a <em>new</em> SKU <code>'POHA-1KG'</code> and 5 more units of <code>'MAGGI-12'</code> in one INSERT with two rows. Then delete every product with <code>qty = 0</code> using <code>RETURNING</code> to see what was removed.</p>
        </div>

        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Many teams never hard-delete important rows. They add a column such as <code>deleted_at TEXT</code> and set it instead (a "soft delete"), so data can be restored and audited.
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
        <p class="lc-lead">Aggregate functions turn many rows into one summary value. <code>GROUP BY</code> makes one summary <em>per group</em> — sales per city, students per class — and <code>HAVING</code> filters those groups.</p>

        <div class="lc-card">
          <h3>The Five Core Aggregates</h3>
          <table class="lc-table">
            <thead><tr><th>Function</th><th>Returns</th><th>NULL handling</th></tr></thead>
            <tbody>
              <tr><td><code>COUNT(*)</code></td><td>number of rows</td><td>counts every row</td></tr>
              <tr><td><code>COUNT(col)</code></td><td>number of non-NULL values</td><td>skips NULL</td></tr>
              <tr><td><code>SUM(col)</code></td><td>total</td><td>skips NULL; NULL if no rows</td></tr>
              <tr><td><code>AVG(col)</code></td><td>mean</td><td>skips NULL</td></tr>
              <tr><td><code>MIN(col)</code> / <code>MAX(col)</code></td><td>smallest / largest</td><td>skips NULL</td></tr>
            </tbody>
          </table>
        </div>

        <div class="lc-card">
          <h3>GROUP BY: One Row per Group</h3>
        <div class="lc-code">SELECT city,<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;COUNT(*)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;AS orders,<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;SUM(amount)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;AS revenue,<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ROUND(AVG(amount))&nbsp;&nbsp;AS avg_order<br>FROM sales<br>GROUP BY city<br>ORDER BY revenue DESC;</div>
        <div class="lc-code">city&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;orders&nbsp;&nbsp;revenue&nbsp;&nbsp;avg_order<br>---------&nbsp;&nbsp;------&nbsp;&nbsp;-------&nbsp;&nbsp;---------<br>Hyderabad&nbsp;&nbsp;3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;9500&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3167.0<br>Kochi&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4300&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1433.0<br>Indore&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1900&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;950.0</div>
          <p>The rule: every column in SELECT must either be <strong>in GROUP BY</strong> or <strong>inside an aggregate</strong>. <code>SELECT city, product, SUM(amount) ... GROUP BY city</code> is an error in PostgreSQL and in MySQL's default mode, because there are many products per city. SQLite allows it but picks a product from an arbitrary row — do not rely on it.</p>
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
        <div class="lc-code">SELECT city, SUM(amount) AS revenue<br>FROM sales<br>WHERE status = 'paid'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-- 1. throw away unpaid rows<br>GROUP BY city&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-- 2. group what is left<br>HAVING SUM(amount) &gt;= 3000;&nbsp;&nbsp;&nbsp;&nbsp;-- 3. keep only big groups</div>
        </div>

        <div class="lc-card">
          <h3>Grouping by an Expression, and Conditional Counts</h3>
        <div class="lc-code">SELECT substr(sale_date, 1, 7)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;AS month,&nbsp;&nbsp;&nbsp;-- '2026-09'<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;COUNT(*)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;AS orders,<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;SUM(CASE WHEN status = 'paid' THEN 1 ELSE 0 END) AS paid_orders<br>FROM sales<br>GROUP BY month;</div>
          <p>Grouping by the first 7 characters of an ISO date gives monthly totals. <code>SUM(CASE WHEN ... THEN 1 ELSE 0 END)</code> counts only the rows that meet a condition — a pattern you will use constantly in reports.</p>
        </div>

        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Putting an aggregate in WHERE: <code>WHERE SUM(amount) &gt; 100</code> is an error — use HAVING.</li>
            <li>Selecting a column that is neither grouped nor aggregated.</li>
            <li>Using HAVING for a plain row filter like <code>HAVING city = 'Kochi'</code>. It works, but WHERE is clearer and filters earlier.</li>
            <li>Forgetting that <code>AVG</code> of integers is a decimal; wrap it in <code>ROUND(..., 2)</code> for display.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Try It</h3>
          <p>For each product, show the number of paid sales and total paid revenue, but only products with at least 2 paid sales. Sort by revenue, highest first.</p>
        </div>

        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Before writing a GROUP BY, say the sentence "one row per ___". Whatever fills the blank goes in GROUP BY; everything else in SELECT must be aggregated.
        </div>
      HTML
      starter_code: <<~'SQL'
        -- Aggregates, GROUP BY and HAVING
        CREATE TABLE sales (
            id        INTEGER PRIMARY KEY,
            city      TEXT NOT NULL,
            product   TEXT NOT NULL,
            amount    INTEGER NOT NULL,     -- whole rupees
            status    TEXT NOT NULL,        -- 'paid' or 'pending'
            sale_date TEXT NOT NULL
        );
        INSERT INTO sales (city, product, amount, status, sale_date) VALUES
            ('Hyderabad', 'Biryani Kit', 4000, 'paid',    '2026-08-12'),
            ('Kochi',     'Spices',      1200, 'paid',    '2026-08-20'),
            ('Hyderabad', 'Spices',      2500, 'pending', '2026-09-01'),
            ('Indore',    'Namkeen',      700, 'paid',    '2026-09-03'),
            ('Kochi',     'Banana Chips',1600, 'paid',    '2026-09-07'),
            ('Hyderabad', 'Biryani Kit', 3000, 'paid',    '2026-09-15'),
            ('Kochi',     'Spices',      1500, 'pending', '2026-09-20'),
            ('Indore',    'Namkeen',     1200, 'paid',    '2026-09-22');

        -- Whole-table summary
        SELECT COUNT(*) AS orders, SUM(amount) AS revenue,
               MIN(amount) AS smallest, MAX(amount) AS largest
        FROM sales;

        -- One row per city
        SELECT city, COUNT(*) AS orders, SUM(amount) AS revenue,
               ROUND(AVG(amount)) AS avg_order
        FROM sales
        GROUP BY city
        ORDER BY revenue DESC;

        -- WHERE (rows) then GROUP BY then HAVING (groups)
        SELECT city, SUM(amount) AS paid_revenue
        FROM sales
        WHERE status = 'paid'
        GROUP BY city
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
        <p class="lc-lead">Constraints are rules the database enforces on every insert and update. They stop bad data at the door — a negative price, a duplicate email, an order for a customer who does not exist — no matter which app or script writes the data.</p>

        <div class="lc-card">
          <h3>The Main Constraints</h3>
          <table class="lc-table">
            <thead><tr><th>Constraint</th><th>Rule</th><th>Example</th></tr></thead>
            <tbody>
              <tr><td><code>NOT NULL</code></td><td>a value is required</td><td><code>name TEXT NOT NULL</code></td></tr>
              <tr><td><code>UNIQUE</code></td><td>no two rows share this value</td><td><code>email TEXT UNIQUE</code></td></tr>
              <tr><td><code>PRIMARY KEY</code></td><td>unique + identifies the row (+ NOT NULL in most databases)</td><td><code>id INTEGER PRIMARY KEY</code></td></tr>
              <tr><td><code>CHECK</code></td><td>a condition must be true</td><td><code>CHECK (price_paise &gt; 0)</code></td></tr>
              <tr><td><code>DEFAULT</code></td><td>value when none is given (not really a rule)</td><td><code>status TEXT DEFAULT 'new'</code></td></tr>
              <tr><td><code>FOREIGN KEY</code></td><td>value must exist in another table</td><td><code>REFERENCES customers(id)</code></td></tr>
            </tbody>
          </table>
          <p>Note: <code>UNIQUE</code> allows several NULLs (NULL is not equal to NULL). Add <code>NOT NULL</code> if the value is required.</p>
        </div>

        <div class="lc-card">
          <h3>Keys and Relationships</h3>
        <div class="lc-code">CREATE TABLE customers (<br>&nbsp;&nbsp;&nbsp;&nbsp;id&nbsp;&nbsp;&nbsp;&nbsp;INTEGER PRIMARY KEY,<br>&nbsp;&nbsp;&nbsp;&nbsp;email TEXT NOT NULL UNIQUE,<br>&nbsp;&nbsp;&nbsp;&nbsp;name&nbsp;&nbsp;TEXT NOT NULL<br>);<br>CREATE TABLE orders (<br>&nbsp;&nbsp;&nbsp;&nbsp;id&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;INTEGER PRIMARY KEY,<br>&nbsp;&nbsp;&nbsp;&nbsp;customer_id INTEGER NOT NULL<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;REFERENCES customers(id) ON DELETE CASCADE,<br>&nbsp;&nbsp;&nbsp;&nbsp;total_paise INTEGER NOT NULL CHECK (total_paise &gt; 0)<br>);</div>
          <ul class="lc-list">
            <li><strong>Primary key</strong> (<code>customers.id</code>) — identifies a customer.</li>
            <li><strong>Foreign key</strong> (<code>orders.customer_id</code>) — points at a primary key. This is a <em>one-to-many</em> relationship: one customer, many orders.</li>
            <li><strong>Natural vs surrogate key</strong> — <code>email</code> is a natural key (real-world data), <code>id</code> is a surrogate key (a meaningless number). Use a surrogate primary key and a UNIQUE constraint on the natural key: emails can change, ids should not.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>What Happens When the Parent Is Deleted?</h3>
          <table class="lc-table">
            <thead><tr><th>Action</th><th>Effect on child rows</th><th>Good for</th></tr></thead>
            <tbody>
              <tr><td><code>ON DELETE RESTRICT</code> / <code>NO ACTION</code> (default)</td><td>delete is refused while children exist</td><td>invoices, payments</td></tr>
              <tr><td><code>ON DELETE CASCADE</code></td><td>children are deleted too</td><td>a cart's items, a post's likes</td></tr>
              <tr><td><code>ON DELETE SET NULL</code></td><td>child's foreign key becomes NULL</td><td>"assigned_to" when a staff member leaves</td></tr>
            </tbody>
          </table>
          <p><strong>SQLite detail:</strong> foreign keys are only enforced after <code>PRAGMA foreign_keys = ON;</code>, and the setting is per connection. PostgreSQL and MySQL (InnoDB) always enforce them.</p>
        </div>

        <div class="lc-card">
          <h3>Seeing a Constraint Work</h3>
          <p>A violating INSERT normally fails with an error such as <code>UNIQUE constraint failed: customers.email</code>. In the starter we use SQLite's <code>INSERT OR IGNORE</code>, which skips the bad row instead of stopping the script, and <code>changes()</code> to show how many rows were really inserted:</p>
        <div class="lc-code">INSERT OR IGNORE INTO customers (email, name) VALUES ('ravi@example.com', 'Ravi Again');<br>SELECT changes() AS rows_inserted;&nbsp;&nbsp;&nbsp;-- 0: duplicate email rejected</div>
        </div>

        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Forgetting <code>PRAGMA foreign_keys = ON</code> in SQLite and believing the foreign keys are protecting you.</li>
            <li>Checking rules only in application code. A second app, a script or a manual fix will skip them — the database will not.</li>
            <li>Using <code>ON DELETE CASCADE</code> on financial records, so deleting a customer silently deletes their invoices.</li>
            <li>Choosing a phone number or name as the primary key — those change.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Try It</h3>
          <p>Add a <code>CHECK (email LIKE '%@%')</code> rule to <code>customers</code> and try inserting <code>'not-an-email'</code> with <code>INSERT OR IGNORE</code>. Then change the foreign key to <code>ON DELETE SET NULL</code> (remember to drop <code>NOT NULL</code>) and see what happens to Ravi's orders.</p>
        </div>

        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Name important constraints: <code>CONSTRAINT price_positive CHECK (price_paise &gt; 0)</code>. Error messages then say exactly which rule was broken.
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
        <p class="lc-lead">Well-designed databases split data into several tables linked by keys. A <strong>JOIN</strong> puts them back together in a query. <code>INNER JOIN</code> returns only the row pairs that match on both sides.</p>

        <div class="lc-card">
          <h3>The Tables</h3>
          <p>A college stores students, courses, and an <code>enrollments</code> table that links them (a student takes many courses; a course has many students — a <em>many-to-many</em> relationship):</p>
        <div class="lc-code">students(id, name, city)<br>courses(id, code, title, credits)<br>enrollments(student_id -&gt; students.id, course_id -&gt; courses.id, grade)</div>
        </div>

        <div class="lc-card">
          <h3>Joining Two Tables</h3>
        <div class="lc-code">SELECT s.name, e.grade<br>FROM enrollments AS e<br>INNER JOIN students AS s ON s.id = e.student_id<br>ORDER BY s.name, e.grade;</div>
          <ul class="lc-list">
            <li><code>ON</code> gives the matching condition — almost always foreign key = primary key.</li>
            <li><code>AS e</code>, <code>AS s</code> are <strong>table aliases</strong>; they keep queries short. <code>INNER</code> is optional: plain <code>JOIN</code> means the same thing.</li>
            <li>If a column name exists in both tables (like <code>id</code>), you must prefix it: <code>s.id</code>, otherwise you get an "ambiguous column name" error.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Three Tables Through a Junction Table</h3>
        <div class="lc-code">SELECT s.name, c.code, e.grade<br>FROM enrollments e<br>JOIN students s ON s.id = e.student_id<br>JOIN courses&nbsp;&nbsp;c ON c.id = e.course_id<br>WHERE c.code = 'CS101'<br>ORDER BY s.name;</div>
        <div class="lc-code">name&nbsp;&nbsp;&nbsp;&nbsp;code&nbsp;&nbsp;&nbsp;grade<br>------&nbsp;&nbsp;-----&nbsp;&nbsp;-----<br>Aditi&nbsp;&nbsp;&nbsp;CS101&nbsp;&nbsp;A<br>Bhavna&nbsp;&nbsp;CS101&nbsp;&nbsp;B<br>Chetan&nbsp;&nbsp;CS101&nbsp;&nbsp;A</div>
          <p>Each JOIN adds one table. Read it as: start from enrollments, look up the student for each row, then look up the course.</p>
        </div>

        <div class="lc-card">
          <h3>Joins Can Multiply Rows</h3>
          <p>An inner join returns <strong>one output row per matching pair</strong>. Aditi has 2 enrollments, so she appears twice. That is correct — but if you then <code>SUM</code> a column from <code>students</code> (like a fee), you would count her fee twice. Aggregate at the right level, or aggregate before joining.</p>
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
          <p>To keep unmatched rows, you need an outer join — the next lesson.</p>
        </div>

        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Forgetting the <code>ON</code> condition (or joining on the wrong columns) — you get every combination of rows, a <em>Cartesian product</em>.</li>
            <li>Joining <code>s.id = e.course_id</code> by mistake. Match the foreign key to the table it references.</li>
            <li>Summing values from the "one" side after joining to the "many" side.</li>
            <li>Using the old comma style <code>FROM a, b WHERE a.id = b.a_id</code>. It works, but explicit <code>JOIN ... ON</code> is clearer and harder to get wrong.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Try It</h3>
          <p>List every enrollment with grade <code>'A'</code>, showing student name, city and course title. Then show each course's code with the number of students enrolled.</p>
        </div>

        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> When a join result looks too big, run <code>SELECT COUNT(*)</code> on each table and on the join. If the join has more rows than you expect, one of your ON conditions is wrong or a relationship is many-to-many.
        </div>
      HTML
      starter_code: <<~'SQL'
        -- INNER JOIN
        CREATE TABLE students (id INTEGER PRIMARY KEY, name TEXT NOT NULL, city TEXT);
        CREATE TABLE courses  (id INTEGER PRIMARY KEY, code TEXT NOT NULL UNIQUE,
                               title TEXT NOT NULL, credits INTEGER NOT NULL);
        CREATE TABLE enrollments (
            student_id INTEGER NOT NULL REFERENCES students(id),
            course_id  INTEGER NOT NULL REFERENCES courses(id),
            grade      TEXT,
            PRIMARY KEY (student_id, course_id)   -- a student enrols once per course
        );
        INSERT INTO students VALUES (1,'Aditi','Nagpur'), (2,'Bhavna','Surat'),
                                    (3,'Chetan','Nagpur'), (4,'Dinesh','Patna');
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
        <p class="lc-lead">An <strong>outer join</strong> keeps rows even when they have no match, filling the missing side with NULL. It answers questions like "which customers have never ordered?". A <strong>self join</strong> joins a table to itself — for example, employees and their managers.</p>

        <div class="lc-card">
          <h3>Join Types at a Glance</h3>
          <table class="lc-table">
            <thead><tr><th>Join</th><th>Keeps</th><th>Support</th></tr></thead>
            <tbody>
              <tr><td><code>INNER JOIN</code></td><td>only matching pairs</td><td>everywhere</td></tr>
              <tr><td><code>LEFT JOIN</code></td><td>all left rows + matches (NULL if none)</td><td>everywhere</td></tr>
              <tr><td><code>RIGHT JOIN</code></td><td>all right rows + matches</td><td>PostgreSQL, MySQL, SQLite 3.39+</td></tr>
              <tr><td><code>FULL OUTER JOIN</code></td><td>all rows from both sides</td><td>PostgreSQL, SQLite 3.39+ (not MySQL)</td></tr>
              <tr><td><code>CROSS JOIN</code></td><td>every combination (rows × rows)</td><td>everywhere</td></tr>
            </tbody>
          </table>
          <p>A RIGHT JOIN is just a LEFT JOIN with the tables swapped, so most people write LEFT JOIN only.</p>
        </div>

        <div class="lc-card">
          <h3>LEFT JOIN</h3>
        <div class="lc-code">SELECT c.name, o.id AS order_id, o.amount<br>FROM customers c<br>LEFT JOIN orders o ON o.customer_id = c.id<br>ORDER BY c.name, o.id;</div>
        <div class="lc-code">name&nbsp;&nbsp;&nbsp;&nbsp;order_id&nbsp;&nbsp;amount<br>------&nbsp;&nbsp;--------&nbsp;&nbsp;------<br>Farhan&nbsp;&nbsp;3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;900<br>Gauri&nbsp;&nbsp;&nbsp;1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1500<br>Gauri&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;700<br>Harsh</div>
          <p>Harsh has no orders, but he still appears, with NULL in the order columns.</p>
        </div>

        <div class="lc-card">
          <h3>Finding Rows With No Match (Anti-Join)</h3>
        <div class="lc-code">SELECT c.name<br>FROM customers c<br>LEFT JOIN orders o ON o.customer_id = c.id<br>WHERE o.id IS NULL;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-- keep only customers with no order</div>
          <p>When counting per customer, use <code>COUNT(o.id)</code>, not <code>COUNT(*)</code>. <code>COUNT(*)</code> would count Harsh's NULL-filled row as 1 order.</p>
        </div>

        <div class="lc-card">
          <h3>ON vs WHERE in a LEFT JOIN</h3>
        <div class="lc-code">-- Want: every customer, with their orders over 1000 (if any)<br>SELECT c.name, o.amount FROM customers c<br>LEFT JOIN orders o ON o.customer_id = c.id<br>WHERE o.amount &gt; 1000;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-- WRONG: drops Farhan and Harsh<br><br>SELECT c.name, o.amount FROM customers c<br>LEFT JOIN orders o ON o.customer_id = c.id AND o.amount &gt; 1000;&nbsp;&nbsp;&nbsp;-- RIGHT</div>
          <p>A WHERE condition on the right-hand table removes the NULL rows, quietly turning your LEFT JOIN back into an INNER JOIN. Conditions about the <em>optional</em> table belong in <code>ON</code>.</p>
        </div>

        <div class="lc-card">
          <h3>Self Join: Employees and Managers</h3>
        <div class="lc-code">SELECT e.name AS employee, m.name AS manager<br>FROM staff e<br>LEFT JOIN staff m ON m.id = e.manager_id;</div>
          <p>The same table appears twice with different aliases: <code>e</code> for the employee, <code>m</code> for the manager. LEFT JOIN keeps the boss, whose <code>manager_id</code> is NULL.</p>
        </div>

        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Filtering the right-hand table in WHERE after a LEFT JOIN.</li>
            <li><code>COUNT(*)</code> instead of <code>COUNT(right_table.id)</code> after a LEFT JOIN.</li>
            <li>Using <code>CROSS JOIN</code> by accident on big tables: 10,000 × 10,000 = 100 million rows.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Try It</h3>
          <p>Show every customer with their number of orders and total spent (0 for nobody, using <code>COALESCE</code>). Then use a CROSS JOIN between <code>sizes</code> and <code>colours</code> tables you create, to list every T-shirt variant.</p>
        </div>

        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Put the table whose rows you must keep <em>first</em>, then LEFT JOIN the optional data onto it. "All customers, plus their orders if any" → <code>FROM customers LEFT JOIN orders</code>.
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
          <h1 class="lc-title">Normalization and Schema Design</h1>
        </div>
        <p class="lc-lead"><strong>Normalization</strong> means organising tables so that each fact is stored in exactly one place. It prevents contradictions (two different phone numbers for the same customer) and makes updates simple. You design the tables once; you live with them for years.</p>

        <div class="lc-card">
          <h3>The Problem: One Big Flat Table</h3>
        <div class="lc-code">order_id&nbsp;&nbsp;customer&nbsp;&nbsp;phone&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;items&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;city<br>--------&nbsp;&nbsp;--------&nbsp;&nbsp;----------&nbsp;&nbsp;-----------------------&nbsp;&nbsp;------<br>1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Pooja&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;9800000001&nbsp;&nbsp;Rice 5kg, Dal 1kg&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Mysuru<br>2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Pooja&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;9800000001&nbsp;&nbsp;Oil 1L&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Mysuru<br>3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Kunal&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;9800000002&nbsp;&nbsp;Rice 5kg&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Ranchi</div>
          <ul class="lc-list">
            <li><strong>Update anomaly</strong> — Pooja changes her phone; you must update every one of her orders or the data contradicts itself.</li>
            <li><strong>Insert anomaly</strong> — you cannot store a new customer until they place an order.</li>
            <li><strong>Delete anomaly</strong> — delete Kunal's only order and you lose Kunal entirely.</li>
            <li><strong>Non-atomic values</strong> — <code>'Rice 5kg, Dal 1kg'</code> cannot be counted, summed or joined.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>The First Three Normal Forms</h3>
          <table class="lc-table">
            <thead><tr><th>Form</th><th>Rule (in plain words)</th><th>Fix in our example</th></tr></thead>
            <tbody>
              <tr><td>1NF</td><td>One value per cell; no lists or repeating columns (<code>item1, item2, item3</code>)</td><td>Move items to an <code>order_items</code> table, one row per item</td></tr>
              <tr><td>2NF</td><td>Every non-key column depends on the <em>whole</em> key, not part of it</td><td>In <code>order_items(order_id, product_id, ...)</code>, the product name depends only on <code>product_id</code> → move it to <code>products</code></td></tr>
              <tr><td>3NF</td><td>Non-key columns depend only on the key, not on other non-key columns</td><td><code>phone</code> and <code>city</code> depend on the customer, not the order → move them to <code>customers</code></td></tr>
            </tbody>
          </table>
          <p>A popular summary: every column should depend on "the key, the whole key, and nothing but the key".</p>
        </div>

        <div class="lc-card">
          <h3>The Normalized Design</h3>
        <div class="lc-code">customers(id PK, name, phone UNIQUE, city)<br>products(id PK, name UNIQUE, price_paise)<br>orders(id PK, customer_id FK -&gt; customers, order_date)<br>order_items(order_id FK -&gt; orders, product_id FK -&gt; products, qty,<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;unit_price_paise,&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-- price at the time of sale<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;PRIMARY KEY (order_id, product_id))</div>
          <p>Notice <code>unit_price_paise</code> in <code>order_items</code>. It looks like duplication, but it is a <em>different fact</em>: the price the customer actually paid. The product's current price may change next month; old bills must not.</p>
        </div>

        <div class="lc-card">
          <h3>Relationship Types</h3>
          <table class="lc-table">
            <thead><tr><th>Type</th><th>Example</th><th>How to store it</th></tr></thead>
            <tbody>
              <tr><td>One-to-many</td><td>customer → orders</td><td>foreign key on the "many" side (<code>orders.customer_id</code>)</td></tr>
              <tr><td>Many-to-many</td><td>orders ↔ products</td><td>a junction table (<code>order_items</code>) with two foreign keys</td></tr>
              <tr><td>One-to-one</td><td>user → user_profile</td><td>foreign key that is also UNIQUE (or the primary key)</td></tr>
            </tbody>
          </table>
        </div>

        <div class="lc-card">
          <h3>When to Denormalize</h3>
          <p>Normalize first. Later, for speed, you may deliberately copy data — a <code>total_paise</code> column on <code>orders</code>, or a reporting table rebuilt every night. Do it on purpose, document it, and keep one source of truth.</p>
        </div>

        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Comma-separated lists in a column (<code>'tag1,tag2'</code>) — use a separate table.</li>
            <li>Columns like <code>phone1, phone2, phone3</code> — also a repeating group.</li>
            <li>Over-normalizing tiny lookups into dozens of tables that make every query a 10-way join.</li>
            <li>Not storing historical values (the price at time of sale) because "it is already in products".</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Try It</h3>
          <p>The starter migrates a flat table into normalized tables. Add a query that shows each customer's total spending from the normalized tables, and then change Pooja's phone number with a <em>single-row</em> UPDATE.</p>
        </div>

        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Sketch your tables on paper as boxes with arrows for foreign keys before writing any CREATE TABLE. If you cannot explain what one row of a table means in one sentence, the design is not ready.
        </div>
      HTML
      starter_code: <<~'SQL'
        -- Normalization and Schema Design
        -- A flat, un-normalized table (one row per order line)
        CREATE TABLE flat_orders (
            order_id INTEGER, customer TEXT, phone TEXT, city TEXT,
            product TEXT, price_paise INTEGER, qty INTEGER
        );
        INSERT INTO flat_orders VALUES
            (1, 'Pooja', '9800000001', 'Mysuru', 'Rice 5kg', 42000, 1),
            (1, 'Pooja', '9800000001', 'Mysuru', 'Dal 1kg',  14000, 2),
            (2, 'Pooja', '9800000001', 'Mysuru', 'Oil 1L',   18000, 1),
            (3, 'Kunal', '9800000002', 'Ranchi', 'Rice 5kg', 42000, 2);

        -- Normalized tables
        CREATE TABLE customers (id INTEGER PRIMARY KEY, name TEXT NOT NULL,
                                phone TEXT NOT NULL UNIQUE, city TEXT);
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
        INSERT INTO customers (name, phone, city)
            SELECT DISTINCT customer, phone, city FROM flat_orders;
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
        <p class="lc-lead">A <strong>subquery</strong> is a SELECT inside another statement. It lets you ask a question that depends on the answer to another question: "who earns more than the average?". <strong>Set operations</strong> (<code>UNION</code>, <code>INTERSECT</code>, <code>EXCEPT</code>) combine the results of two whole queries.</p>

        <div class="lc-card">
          <h3>Where Subqueries Can Go</h3>
          <table class="lc-table">
            <thead><tr><th>Kind</th><th>Returns</th><th>Example use</th></tr></thead>
            <tbody>
              <tr><td>Scalar subquery</td><td>one value</td><td><code>WHERE salary &gt; (SELECT AVG(salary) FROM emp)</code></td></tr>
              <tr><td>List subquery</td><td>one column, many rows</td><td><code>WHERE dept_id IN (SELECT id FROM dept WHERE city = 'Pune')</code></td></tr>
              <tr><td>Correlated subquery</td><td>re-evaluated per outer row</td><td>"above the average of <em>their own</em> department"</td></tr>
              <tr><td>Derived table</td><td>a whole table in FROM</td><td><code>FROM (SELECT ...) AS t</code></td></tr>
            </tbody>
          </table>
          <p>A subquery that returns several rows must be used with <code>IN</code>, <code>EXISTS</code>, <code>ANY</code> or <code>ALL</code> — not with <code>=</code>.</p>
        </div>

        <div class="lc-card">
          <h3>Scalar and Correlated Subqueries</h3>
        <div class="lc-code">-- Above the company average<br>SELECT name, salary FROM emp<br>WHERE salary &gt; (SELECT AVG(salary) FROM emp);<br><br>-- Above the average of their OWN department (correlated: uses e.dept)<br>SELECT e.name, e.dept, e.salary FROM emp e<br>WHERE e.salary &gt; (SELECT AVG(salary) FROM emp WHERE dept = e.dept);</div>
        <div class="lc-code">name&nbsp;&nbsp;&nbsp;dept&nbsp;&nbsp;salary<br>-----&nbsp;&nbsp;----&nbsp;&nbsp;------<br>Ojas&nbsp;&nbsp;&nbsp;IT&nbsp;&nbsp;&nbsp;&nbsp;120000<br>Rekha&nbsp;&nbsp;Ops&nbsp;&nbsp;&nbsp;70000</div>
        </div>

        <div class="lc-card">
          <h3>EXISTS and NOT EXISTS</h3>
        <div class="lc-code">-- Departments that have at least one employee<br>SELECT d.name FROM dept d<br>WHERE EXISTS (SELECT 1 FROM emp e WHERE e.dept = d.name);<br><br>-- Departments with no employees (safe even when columns contain NULL)<br>SELECT d.name FROM dept d<br>WHERE NOT EXISTS (SELECT 1 FROM emp e WHERE e.dept = d.name);</div>
          <p><code>EXISTS</code> only asks "is there at least one row?", so <code>SELECT 1</code> is conventional. Prefer <code>NOT EXISTS</code> over <code>NOT IN</code> when the subquery column can be NULL (see the NULL lesson). For <code>IN</code> vs <code>EXISTS</code>, modern optimizers usually produce the same plan — choose the one that reads most clearly.</p>
        </div>

        <div class="lc-card">
          <h3>Derived Tables</h3>
        <div class="lc-code">SELECT dept, avg_salary<br>FROM (SELECT dept, AVG(salary) AS avg_salary FROM emp GROUP BY dept) AS t<br>WHERE avg_salary &gt; 80000;</div>
          <p>Give derived tables an alias (<code>AS t</code>); PostgreSQL and MySQL require it. Long chains of derived tables are easier to read as CTEs (lesson 16).</p>
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
          <p>Both queries must return the same number of columns with compatible types. Column names come from the first query, and a single <code>ORDER BY</code> at the end sorts the combined result. MySQL supports INTERSECT and EXCEPT from version 8.0.31.</p>
        </div>

        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li><code>WHERE id = (SELECT id FROM ...)</code> when the subquery can return several rows — use <code>IN</code>.</li>
            <li>Using <code>UNION</code> when you meant <code>UNION ALL</code> — you silently lose genuine duplicate rows and pay for sorting.</li>
            <li>Writing a correlated subquery in SELECT for every row of a huge table, when a JOIN with GROUP BY would do the work once.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Try It</h3>
          <p>Find the highest-paid employee in each department using a correlated subquery (<code>salary = (SELECT MAX(...) ...)</code>). Then list cities that appear in both the <code>dept</code> table and a new <code>branches</code> table using <code>INTERSECT</code>.</p>
        </div>

        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Build subqueries inside-out. Run the inner SELECT alone first, check its result, then wrap the outer query around it.
        </div>
      HTML
      starter_code: <<~'SQL'
        -- Subqueries and Set Operations
        CREATE TABLE dept (name TEXT PRIMARY KEY, city TEXT);
        CREATE TABLE emp (id INTEGER PRIMARY KEY, name TEXT, dept TEXT, salary INTEGER);
        INSERT INTO dept VALUES ('IT','Pune'), ('Ops','Nashik'), ('Legal','Mumbai');
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
        WHERE dept IN (SELECT name FROM dept WHERE city = 'Pune');

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
        <p class="lc-lead"><code>CASE</code> is SQL's if/else. Together with built-in string, number and date functions it lets you clean, label and reshape data inside the query. Function names differ between databases more than anything else in SQL, so this lesson shows each dialect clearly.</p>

        <div class="lc-card">
          <h3>CASE Expressions</h3>
        <div class="lc-code">SELECT name, marks,<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;CASE<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;WHEN marks &gt;= 90 THEN 'A'<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;WHEN marks &gt;= 75 THEN 'B'<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;WHEN marks &gt;= 50 THEN 'C'<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ELSE 'Fail'<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;END AS grade<br>FROM results;</div>
          <p>Conditions are checked top to bottom and the first true one wins, so order matters. Without <code>ELSE</code>, unmatched rows get NULL. The short form <code>CASE status WHEN 'P' THEN 'Paid' WHEN 'U' THEN 'Unpaid' END</code> compares one value against a list.</p>
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
          <p>Positions start at <strong>1</strong>, not 0: <code>substr('Mumbai', 1, 3)</code> is <code>'Mum'</code>.</p>
        </div>

        <div class="lc-card">
          <h3>Date Functions in SQLite</h3>
          <p>SQLite stores dates as ISO text and gives you functions to work with them:</p>
        <div class="lc-code">SELECT date('2026-09-25', '+30 days')&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;AS due,&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-- 2026-10-25<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;date('2026-09-25', 'start of month')&nbsp;&nbsp;&nbsp;&nbsp;AS month_start, -- 2026-09-01<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;strftime('%d/%m/%Y', '2026-09-25')&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;AS indian_fmt,&nbsp;&nbsp;-- 25/09/2026<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;julianday('2026-12-25') - julianday('2026-09-25') AS days_to_xmas; -- 91.0</div>
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
          <p>Subtracting birth year from the current year is wrong for anyone whose birthday has not come yet this year. Subtract one more when today's month-day is before the birthday's month-day:</p>
        <div class="lc-code">SELECT name, dob,<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(strftime('%Y', '2026-09-25') - strftime('%Y', dob))<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- (strftime('%m-%d', '2026-09-25') &lt; strftime('%m-%d', dob)) AS age<br>FROM people;</div>
        <div class="lc-code">name&nbsp;&nbsp;&nbsp;dob&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;age<br>-----&nbsp;&nbsp;----------&nbsp;&nbsp;---<br>Tanvi&nbsp;&nbsp;2000-03-10&nbsp;&nbsp;26<br>Uday&nbsp;&nbsp;&nbsp;2000-12-01&nbsp;&nbsp;25</div>
          <p>Uday is born in 2000 but turns 26 only in December, so he is still 25. The comparison <code>(...) &lt; (...)</code> is 1 when true and 0 when false, which does the adjustment. We use a fixed date here so the output never changes; in real code use <code>date('now')</code>.</p>
        </div>

        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Putting a broad CASE condition first (<code>WHEN marks &gt;= 50</code>) so later ones never match.</li>
            <li>Age = year difference only (off by one before the birthday).</li>
            <li>Using <code>LENGTH</code> in MySQL for characters — Hindi or emoji text has more bytes than characters.</li>
            <li>Comparing <code>'25/09/2026'</code>-style strings: they do not sort as dates.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Try It</h3>
          <p>Add a column that shows <code>'Minor'</code> or <code>'Adult'</code> based on the computed age. Then create a short code from each name: first three letters in capitals plus the birth year, like <code>TAN2000</code>.</p>
        </div>

        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Clean data once, when it is inserted (trim spaces, fix case), rather than in every query. Functions in WHERE, such as <code>WHERE lower(email) = ...</code>, also stop a normal index on that column from being used.
        </div>
      HTML
      starter_code: <<~'SQL'
        -- CASE and Built-in Functions
        CREATE TABLE people (
            id    INTEGER PRIMARY KEY,
            name  TEXT NOT NULL,
            city  TEXT,
            dob   TEXT NOT NULL,     -- ISO date
            marks INTEGER
        );
        INSERT INTO people (name, city, dob, marks) VALUES
            ('  tanvi ', 'mumbai',  '2000-03-10', 93),
            ('Uday',     'Lucknow', '2000-12-01', 78),
            ('Vani',     'Kochi',   '2010-09-25', 49),
            ('Wasim',    'Srinagar','2008-10-02', 64);

        -- CASE: first true condition wins
        SELECT trim(name) AS name, marks,
               CASE WHEN marks >= 90 THEN 'A'
                    WHEN marks >= 75 THEN 'B'
                    WHEN marks >= 50 THEN 'C'
                    ELSE 'Fail' END AS grade
        FROM people;

        -- String functions: tidy names and cities
        SELECT upper(substr(trim(name), 1, 1)) || substr(trim(name), 2) AS clean_name,
               upper(city) AS city_caps,
               length(trim(name)) AS name_len,
               instr(city, 'now') AS pos_of_now
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
        <p class="lc-lead">Both CTEs and views give a <strong>name to a query</strong> so you can build on it. A <strong>CTE</strong> (<code>WITH ...</code>) lives only inside one statement. A <strong>view</strong> is saved in the database and can be used by any later query, like a virtual table.</p>

        <div class="lc-card">
          <h3>Common Table Expressions (WITH)</h3>
        <div class="lc-code">WITH monthly AS (<br>&nbsp;&nbsp;&nbsp;&nbsp;SELECT substr(paid_on, 1, 7) AS month, SUM(amount) AS revenue<br>&nbsp;&nbsp;&nbsp;&nbsp;FROM payments<br>&nbsp;&nbsp;&nbsp;&nbsp;GROUP BY month<br>),<br>best AS (<br>&nbsp;&nbsp;&nbsp;&nbsp;SELECT MAX(revenue) AS top FROM monthly<br>)<br>SELECT m.month, m.revenue<br>FROM monthly m JOIN best b ON m.revenue = b.top;</div>
        <div class="lc-code">month&nbsp;&nbsp;&nbsp;&nbsp;revenue<br>-------&nbsp;&nbsp;-------<br>2026-08&nbsp;&nbsp;7300</div>
          <p>Each CTE is a named step. Later CTEs and the final SELECT can use earlier ones. Compared with nested derived tables, CTEs read top-to-bottom like a recipe.</p>
        </div>

        <div class="lc-card">
          <h3>Recursive CTEs</h3>
          <p>A recursive CTE has a <strong>starting query</strong>, then <code>UNION ALL</code>, then a query that refers to the CTE itself. It repeats until no new rows appear. Perfect for hierarchies (org charts, category trees) and number series.</p>
        <div class="lc-code">WITH RECURSIVE chain(id, name, level) AS (<br>&nbsp;&nbsp;&nbsp;&nbsp;SELECT id, name, 1 FROM staff WHERE manager_id IS NULL&nbsp;&nbsp;&nbsp;-- start: the boss<br>&nbsp;&nbsp;&nbsp;&nbsp;UNION ALL<br>&nbsp;&nbsp;&nbsp;&nbsp;SELECT s.id, s.name, c.level + 1<br>&nbsp;&nbsp;&nbsp;&nbsp;FROM staff s JOIN chain c ON s.manager_id = c.id&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-- step: their reports<br>)<br>SELECT level, name FROM chain ORDER BY level, name;</div>
          <p>Always make sure the recursion stops — a condition like <code>WHERE n &lt; 10</code> or a hierarchy without cycles. PostgreSQL, MySQL 8.0+ and SQLite all use <code>WITH RECURSIVE</code>.</p>
        </div>

        <div class="lc-card">
          <h3>Views</h3>
        <div class="lc-code">CREATE VIEW paid_summary AS<br>SELECT customer, COUNT(*) AS payments, SUM(amount) AS total<br>FROM payments<br>GROUP BY customer;<br><br>SELECT * FROM paid_summary WHERE total &gt; 5000;&nbsp;&nbsp;&nbsp;-- use it like a table<br>DROP VIEW IF EXISTS paid_summary;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-- remove it</div>
          <ul class="lc-list">
            <li>A normal view stores <strong>the query, not the data</strong>. Every time you select from it, the query runs again on the current data, so it is always up to date.</li>
            <li>Views hide complexity (a 5-table join becomes <code>SELECT * FROM order_report</code>) and can hide columns such as salaries or phone numbers from some users.</li>
            <li>PostgreSQL also has <strong>materialized views</strong>, which store the result and must be refreshed. SQLite and MySQL do not.</li>
            <li>To change a view in SQLite, drop and recreate it. PostgreSQL and MySQL support <code>CREATE OR REPLACE VIEW</code>.</li>
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
            <li>A recursive CTE with no stopping condition — it runs until an error or a limit.</li>
            <li>Believing a view is a copy of the data or makes queries faster by itself. It is a saved query.</li>
            <li>Stacking views on views on views until nobody can tell what a query really does.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Try It</h3>
          <p>Write a recursive CTE that produces the numbers 1 to 12, then LEFT JOIN it to the payments to show revenue for <em>every</em> month of 2026, including months with 0. Then save the final query as a view named <code>revenue_2026</code>.</p>
        </div>

        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> When a query grows past ~20 lines, rewrite it as CTEs with meaningful names (<code>paid_orders</code>, <code>per_customer</code>, <code>ranked</code>). You can run each step alone to debug it.
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
        <p class="lc-lead">A <strong>window function</strong> calculates across a set of related rows <em>without collapsing them</em>. GROUP BY gives one row per group; a window function keeps every row and adds a value such as a rank, a running total or the previous row's value.</p>

        <div class="lc-card">
          <h3>GROUP BY vs Window</h3>
        <div class="lc-code">-- GROUP BY: one row per region<br>SELECT region, SUM(sales) FROM reps GROUP BY region;<br><br>-- Window: every rep, plus their region's total alongside<br>SELECT name, region, sales,<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;SUM(sales) OVER (PARTITION BY region) AS region_total<br>FROM reps;</div>
          <p><code>OVER (...)</code> turns an aggregate into a window function. <code>PARTITION BY</code> splits rows into groups (like GROUP BY, but rows are kept). <code>ORDER BY</code> inside OVER sets the order within each partition.</p>
        </div>

        <div class="lc-card">
          <h3>Ranking: ROW_NUMBER, RANK, DENSE_RANK</h3>
        <div class="lc-code">SELECT name, sales,<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ROW_NUMBER() OVER (ORDER BY sales DESC, name) AS row_num,<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;RANK()&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;OVER (ORDER BY sales DESC) AS rnk,<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;DENSE_RANK() OVER (ORDER BY sales DESC) AS dense<br>FROM reps<br>ORDER BY sales DESC, name;</div>
        <div class="lc-code">name&nbsp;&nbsp;&nbsp;sales&nbsp;&nbsp;row_num&nbsp;&nbsp;rnk&nbsp;&nbsp;dense<br>-----&nbsp;&nbsp;-----&nbsp;&nbsp;-------&nbsp;&nbsp;---&nbsp;&nbsp;-----<br>Gita&nbsp;&nbsp;&nbsp;900&nbsp;&nbsp;&nbsp;&nbsp;1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1&nbsp;&nbsp;&nbsp;&nbsp;1<br>Hari&nbsp;&nbsp;&nbsp;700&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;2<br>Ila&nbsp;&nbsp;&nbsp;&nbsp;700&nbsp;&nbsp;&nbsp;&nbsp;3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;2<br>Kiran&nbsp;&nbsp;650&nbsp;&nbsp;&nbsp;&nbsp;4&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4&nbsp;&nbsp;&nbsp;&nbsp;3<br>Jai&nbsp;&nbsp;&nbsp;&nbsp;500&nbsp;&nbsp;&nbsp;&nbsp;5&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;5&nbsp;&nbsp;&nbsp;&nbsp;4</div>
          <table class="lc-table">
            <thead><tr><th>Function</th><th>Ties</th><th>Next number after a tie</th></tr></thead>
            <tbody>
              <tr><td><code>ROW_NUMBER()</code></td><td>different numbers (arbitrary order among ties)</td><td>continues</td></tr>
              <tr><td><code>RANK()</code></td><td>same number</td><td>skips (1, 2, 2, 4)</td></tr>
              <tr><td><code>DENSE_RANK()</code></td><td>same number</td><td>no gap (1, 2, 2, 3)</td></tr>
            </tbody>
          </table>
        </div>

        <div class="lc-card">
          <h3>Top-N per Group</h3>
          <p>Window functions cannot appear in <code>WHERE</code> (WHERE runs before them). Compute the rank in a CTE, then filter:</p>
        <div class="lc-code">WITH ranked AS (<br>&nbsp;&nbsp;&nbsp;&nbsp;SELECT name, region, sales,<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ROW_NUMBER() OVER (PARTITION BY region ORDER BY sales DESC, name) AS rn<br>&nbsp;&nbsp;&nbsp;&nbsp;FROM reps<br>)<br>SELECT region, name, sales FROM ranked WHERE rn = 1;&nbsp;&nbsp;&nbsp;-- best rep per region</div>
        </div>

        <div class="lc-card">
          <h3>Running Totals, Moving Averages, LAG and LEAD</h3>
        <div class="lc-code">SELECT day, amount,<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;SUM(amount) OVER (ORDER BY day)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;AS running_total,<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;AVG(amount) OVER (ORDER BY day<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ROWS BETWEEN 2 PRECEDING AND CURRENT ROW) AS moving_avg_3,<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;LAG(amount) OVER (ORDER BY day)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;AS prev_day,<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;amount - LAG(amount) OVER (ORDER BY day)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;AS change<br>FROM daily;</div>
          <ul class="lc-list">
            <li><code>LAG(x)</code> = value from the previous row; <code>LEAD(x)</code> = the next row. The first row's LAG is NULL.</li>
            <li>The <strong>frame</strong> <code>ROWS BETWEEN 2 PRECEDING AND CURRENT ROW</code> means "this row and the two before it".</li>
            <li>With <code>ORDER BY</code> and no frame, the default frame runs from the first row to the current row <em>including rows tied with it</em>. Add <code>ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW</code> when the order column can have ties.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li><code>WHERE ROW_NUMBER() OVER (...) = 1</code> — not allowed; filter in an outer query or CTE.</li>
            <li>Forgetting <code>PARTITION BY</code>, so ranks run across the whole table instead of per group.</li>
            <li>Using ROW_NUMBER when ties should share a place (use RANK or DENSE_RANK).</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Try It</h3>
          <p>For each region, show each rep's share of the region's sales as a percentage: <code>ROUND(100.0 * sales / SUM(sales) OVER (PARTITION BY region), 1)</code>. Then use <code>LEAD</code> to show the next day's amount beside each day.</p>
        </div>

        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> If you reuse the same window several times, name it once: <code>... OVER w FROM daily WINDOW w AS (ORDER BY day)</code>. Supported by SQLite, PostgreSQL and MySQL 8.0+.
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
        <p class="lc-lead">An <strong>index</strong> is a sorted lookup structure (usually a B-tree) that lets the database find rows without reading the whole table — like the index at the back of a textbook. A <strong>query plan</strong> shows whether your query actually uses one.</p>

        <div class="lc-card">
          <h3>Scan vs Search</h3>
          <p>Without an index, finding one customer's orders means a <strong>full table scan</strong>: read every row and check it. With an index on <code>customer_id</code>, the database jumps straight to the matching rows — roughly the difference between reading 1,000,000 rows and about 20 steps down a tree.</p>
        <div class="lc-code">CREATE INDEX idx_orders_customer ON orders (customer_id);<br>CREATE UNIQUE INDEX idx_users_email ON users (email);&nbsp;&nbsp;&nbsp;-- also enforces uniqueness<br>DROP INDEX idx_orders_customer;</div>
          <p>Primary keys and UNIQUE constraints get an index automatically.</p>
        </div>

        <div class="lc-card">
          <h3>Reading EXPLAIN QUERY PLAN (SQLite)</h3>
        <div class="lc-code">EXPLAIN QUERY PLAN<br>SELECT * FROM orders WHERE customer_id = 42;</div>
          <table class="lc-table">
            <thead><tr><th>Plan detail</th><th>Meaning</th></tr></thead>
            <tbody>
              <tr><td><code>SCAN orders</code></td><td>reads every row — fine for tiny tables, slow for big ones</td></tr>
              <tr><td><code>SEARCH orders USING INDEX idx_orders_customer (customer_id=?)</code></td><td>uses the index to jump to matching rows</td></tr>
              <tr><td><code>SEARCH orders USING COVERING INDEX ...</code></td><td>the index alone has every column needed — the table is not touched</td></tr>
              <tr><td><code>USE TEMP B-TREE FOR ORDER BY</code></td><td>an extra sort step; an index in the right order can remove it</td></tr>
            </tbody>
          </table>
          <p>Other databases: PostgreSQL uses <code>EXPLAIN</code> / <code>EXPLAIN ANALYZE</code> (Seq Scan vs Index Scan); MySQL uses <code>EXPLAIN</code> (look at the <code>type</code> and <code>key</code> columns). The idea is identical.</p>
        </div>

        <div class="lc-card">
          <h3>Composite Indexes and the Leftmost Rule</h3>
        <div class="lc-code">CREATE INDEX idx_orders_status_date ON orders (status, order_date);</div>
          <table class="lc-table">
            <thead><tr><th>WHERE clause</th><th>Can use the index?</th></tr></thead>
            <tbody>
              <tr><td><code>status = 'paid'</code></td><td>Yes — leftmost column</td></tr>
              <tr><td><code>status = 'paid' AND order_date &gt;= '2026-09-01'</code></td><td>Yes — both columns, in order</td></tr>
              <tr><td><code>order_date &gt;= '2026-09-01'</code> alone</td><td>Not for a normal search — the first column is missing</td></tr>
            </tbody>
          </table>
          <p>Think of a phone book sorted by (surname, first name): easy to find all "Sharma"s, useless for finding every "Rahul".</p>
        </div>

        <div class="lc-card">
          <h3>Indexes Are Not Free</h3>
          <ul class="lc-list">
            <li>Every INSERT, UPDATE and DELETE must also update every index on the table — more indexes, slower writes.</li>
            <li>Indexes use disk space and memory.</li>
            <li>Low-selectivity columns (like a yes/no flag on a table that is 50% yes) rarely benefit.</li>
            <li>Index columns you <strong>filter, join or sort by often</strong> — foreign keys are the classic example.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Things That Stop an Index Being Used</h3>
          <ul class="lc-list">
            <li>Wrapping the column in a function: <code>WHERE lower(email) = 'a@b.com'</code>. Fix: store clean data, or create an <em>expression index</em> <code>ON users (lower(email))</code>.</li>
            <li>A leading wildcard: <code>LIKE '%kumar'</code>.</li>
            <li>Skipping the first column of a composite index.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Indexing every column "just in case".</li>
            <li>Adding indexes without checking the plan before and after.</li>
            <li>Forgetting to index foreign key columns used in joins.</li>
            <li>Creating both <code>(a)</code> and <code>(a, b)</code> — the second already serves queries on <code>a</code>.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Try It</h3>
          <p>Run <code>EXPLAIN QUERY PLAN</code> on <code>SELECT * FROM orders WHERE order_date = '2026-09-10'</code>. Is the composite index used? Create an index that fixes it and check the plan again.</p>
        </div>

        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Tiny tables are always scanned, even when an index exists, because scanning a few pages is cheaper. Test performance ideas on realistic data sizes — the starter builds 10,000 rows with a recursive CTE for exactly this reason.
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
        <p class="lc-lead">A <strong>transaction</strong> groups several statements into one unit of work: either all of them happen, or none do. Sending Rs 500 by UPI must debit one account <em>and</em> credit another — never just one of the two.</p>

        <div class="lc-card">
          <h3>BEGIN, COMMIT, ROLLBACK</h3>
        <div class="lc-code">BEGIN;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-- start<br>UPDATE accounts SET balance = balance - 500 WHERE id = 1; -- debit<br>UPDATE accounts SET balance = balance + 500 WHERE id = 2; -- credit<br>COMMIT;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-- make it permanent</div>
          <p>If anything goes wrong before <code>COMMIT</code>, run <code>ROLLBACK;</code> and every change since <code>BEGIN</code> is undone. Without an explicit BEGIN, most databases run in <strong>autocommit</strong> mode: each statement is its own tiny transaction. (PostgreSQL and MySQL also accept <code>START TRANSACTION</code>.)</p>
        </div>

        <div class="lc-card">
          <h3>ACID</h3>
          <table class="lc-table">
            <thead><tr><th>Letter</th><th>Property</th><th>Meaning</th></tr></thead>
            <tbody>
              <tr><td>A</td><td>Atomicity</td><td>all or nothing</td></tr>
              <tr><td>C</td><td>Consistency</td><td>every commit leaves the data obeying all constraints</td></tr>
              <tr><td>I</td><td>Isolation</td><td>concurrent transactions do not see each other's half-done work</td></tr>
              <tr><td>D</td><td>Durability</td><td>once committed, it survives a crash or power cut</td></tr>
            </tbody>
          </table>
        </div>

        <div class="lc-card">
          <h3>Savepoints: Partial Undo</h3>
        <div class="lc-code">BEGIN;<br>INSERT INTO ledger (note) VALUES ('order placed');<br>SAVEPOINT before_coupon;<br>UPDATE orders SET total = total - 200 WHERE id = 7;&nbsp;&nbsp;&nbsp;-- apply coupon<br>ROLLBACK TO SAVEPOINT before_coupon;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-- coupon was invalid: undo only this<br>COMMIT;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-- the ledger row is kept</div>
        </div>

        <div class="lc-card">
          <h3>Isolation Levels</h3>
          <p>Stronger isolation prevents more anomalies but allows less concurrency.</p>
          <table class="lc-table">
            <thead><tr><th>Level</th><th>Dirty read</th><th>Non-repeatable read</th><th>Phantom rows</th></tr></thead>
            <tbody>
              <tr><td>READ UNCOMMITTED</td><td>possible</td><td>possible</td><td>possible</td></tr>
              <tr><td>READ COMMITTED (PostgreSQL default)</td><td>prevented</td><td>possible</td><td>possible</td></tr>
              <tr><td>REPEATABLE READ (MySQL InnoDB default)</td><td>prevented</td><td>prevented</td><td>possible in the standard*</td></tr>
              <tr><td>SERIALIZABLE (SQLite's behaviour)</td><td>prevented</td><td>prevented</td><td>prevented</td></tr>
            </tbody>
          </table>
          <p>* PostgreSQL's and InnoDB's REPEATABLE READ also avoid phantoms for plain reads, using snapshots. SQLite allows only one writer at a time, so its transactions are serializable.</p>
        </div>

        <div class="lc-card">
          <h3>Avoiding the Lost Update</h3>
        <div class="lc-code">-- Risky: read in the app, compute, write back (two users can overwrite each other)<br>-- SELECT balance ... ; app computes 1000 - 500 ; UPDATE ... SET balance = 500<br><br>-- Safe: let the database do the arithmetic and the check in one statement<br>UPDATE accounts SET balance = balance - 500<br>WHERE id = 1 AND balance &gt;= 500;<br>-- then check how many rows changed: 0 means "insufficient funds" -&gt; ROLLBACK</div>
        </div>

        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Forgetting COMMIT — the changes vanish when the connection closes, and locks may be held meanwhile.</li>
            <li>Keeping a transaction open while waiting for user input or a slow API call.</li>
            <li>Running multi-step money operations without a transaction.</li>
            <li>Assuming ROLLBACK can undo a committed transaction. It cannot; use backups or compensating entries.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Try It</h3>
          <p>Write a transfer of Rs 3,000 from Kavin (who has Rs 2,000 after the starter runs) to Lata. Use the safe UPDATE with <code>balance &gt;= 3000</code>, check <code>changes()</code>, and ROLLBACK when it is 0. Confirm both balances are unchanged.</p>
        </div>

        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> In application code, use your library's transaction helper (for example, a <code>with</code> block or <code>transaction do ... end</code>). It commits on success and rolls back automatically on an exception.
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
          <h1 class="lc-title">Capstone: Online Store Analytics</h1>
        </div>
        <p class="lc-lead">Time to use everything together. You will design a small online-store database for a shop called <em>Kirana Online</em>, load it safely inside a transaction, and answer the questions a real business owner asks every week.</p>

        <div class="lc-card">
          <h3>The Brief</h3>
          <ul class="lc-list">
            <li>Customers (with city), products (with category and price), orders and order lines.</li>
            <li>Money is stored as <strong>INTEGER paise</strong>; each order line keeps the <strong>price paid</strong>.</li>
            <li>The owner wants: revenue by category, best customer in each city, month-by-month revenue with a running total, and a list of customers who have never ordered.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Step 1 — Schema With Constraints (Lessons 2, 10, 13)</h3>
        <div class="lc-code">customers(id PK, name NOT NULL, city NOT NULL)<br>products(id PK, name UNIQUE, category, price_paise CHECK &gt; 0)<br>orders(id PK, customer_id FK, order_date)<br>order_items(order_id FK, product_id FK, qty CHECK &gt; 0, unit_price_paise,<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;PRIMARY KEY (order_id, product_id))</div>
        </div>

        <div class="lc-card">
          <h3>Step 2 — Load Data in a Transaction (Lessons 3, 19)</h3>
          <p>All inserts go between <code>BEGIN</code> and <code>COMMIT</code>, so a mistake halfway leaves nothing half-loaded. A foreign key index on <code>order_items(product_id)</code> keeps category joins fast (lesson 18).</p>
        </div>

        <div class="lc-card">
          <h3>Step 3 — The Business Questions</h3>
          <table class="lc-table">
            <thead><tr><th>Question</th><th>Techniques</th></tr></thead>
            <tbody>
              <tr><td>Revenue per category</td><td>JOIN + GROUP BY + SUM (lessons 9, 11)</td></tr>
              <tr><td>Best customer in each city</td><td>CTE + RANK() OVER (PARTITION BY city) (lessons 16, 17)</td></tr>
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
            <li>Forgetting a tie-breaker when ranking or paginating.</li>
            <li>Displaying paise as rupees without dividing by 100.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Try It — Extend the Project</h3>
          <ol class="lc-list">
            <li>Add a <code>status</code> column to <code>orders</code> with <code>CHECK (status IN ('placed','shipped','cancelled'))</code> and exclude cancelled orders from every report.</li>
            <li>Find each customer's first order date and days since then (use <code>julianday</code>).</li>
            <li>Show the top product per category by quantity sold, using <code>ROW_NUMBER()</code>.</li>
            <li>Run <code>EXPLAIN QUERY PLAN</code> on your category report before and after dropping the index.</li>
          </ol>
        </div>

        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Keep this capstone as a portfolio piece. A short README with the schema diagram and 5 business questions answered in SQL is exactly what interviewers for data analyst and backend roles like to see.
        </div>
      HTML
      starter_code: <<~'SQL'
        -- Capstone: Online Store Analytics ("Kirana Online")
        CREATE TABLE customers (id INTEGER PRIMARY KEY, name TEXT NOT NULL, city TEXT NOT NULL);
        CREATE TABLE products  (id INTEGER PRIMARY KEY, name TEXT NOT NULL UNIQUE, category TEXT NOT NULL,
                                price_paise INTEGER NOT NULL CHECK (price_paise > 0));
        CREATE TABLE orders    (id INTEGER PRIMARY KEY, customer_id INTEGER NOT NULL REFERENCES customers(id),
                                order_date TEXT NOT NULL);
        CREATE TABLE order_items (order_id INTEGER REFERENCES orders(id), product_id INTEGER REFERENCES products(id),
                                  qty INTEGER NOT NULL CHECK (qty > 0), unit_price_paise INTEGER NOT NULL,
                                  PRIMARY KEY (order_id, product_id));
        CREATE INDEX idx_items_product ON order_items (product_id);

        BEGIN;
        INSERT INTO customers VALUES (1,'Anjali','Bhopal'), (2,'Bilal','Bhopal'), (3,'Charu','Goa'), (4,'Dhruv','Goa');
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

        -- Q2. Best customer in each city
        WITH spend AS (
            SELECT c.city, c.name, SUM(i.qty * i.unit_price_paise) AS paise
            FROM customers c JOIN orders o ON o.customer_id = c.id
            JOIN order_items i ON i.order_id = o.id
            GROUP BY c.id, c.city, c.name),
        ranked AS (SELECT *, RANK() OVER (PARTITION BY city ORDER BY paise DESC) AS rnk FROM spend)
        SELECT city, name, paise / 100 AS rupees FROM ranked WHERE rnk = 1 ORDER BY city;

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

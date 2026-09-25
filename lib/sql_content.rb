module SqlContent
  LESSONS = {
    1 => {
      body: <<~'HTML',
        <div class="lc-intro">
          <p>SQL (Structured Query Language) is the standard language for working with <strong>relational databases</strong>. Created in 1974 at IBM, SQL is used to store, retrieve, update, and manage data. It powers every major application — from banking systems to social media.</p>
        </div>
        <div class="lc-section">
          <h2>What Is a Relational Database?</h2>
          <p>Data is organised into <strong>tables</strong> (like spreadsheets) with rows and columns. Tables can be linked together through relationships. Examples: MySQL, PostgreSQL, SQLite, Oracle, Microsoft SQL Server.</p>
        </div>
        <div class="lc-section">
          <h2>The Four Core SQL Operations (CRUD)</h2>
          <table class="lc-table">
            <thead><tr><th>Operation</th><th>SQL Statement</th><th>Action</th></tr></thead>
            <tbody>
              <tr><td><strong>Create</strong></td><td><code>INSERT INTO</code></td><td>Add new rows of data</td></tr>
              <tr><td><strong>Read</strong></td><td><code>SELECT</code></td><td>Query and retrieve data</td></tr>
              <tr><td><strong>Update</strong></td><td><code>UPDATE</code></td><td>Modify existing data</td></tr>
              <tr><td><strong>Delete</strong></td><td><code>DELETE</code></td><td>Remove data</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-section">
          <h2>SQL is Declarative</h2>
          <p>Unlike Python or Java where you tell the computer <em>how</em> to do something, SQL is <strong>declarative</strong> — you tell it <em>what</em> you want, and the database figures out how to get it efficiently.</p>
          <div class="lc-code-block"><pre><code>-- Get all students with GPA above 3.5, sorted by name
SELECT name, gpa
FROM students
WHERE gpa > 3.5
ORDER BY name;</code></pre></div>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>SQL keywords are conventionally written in <strong>UPPERCASE</strong> (SELECT, FROM, WHERE) and table/column names in lowercase. SQL is <em>not</em> case-sensitive, but this convention makes queries much easier to read.</p></div>
      HTML
      starter_code: <<~'SQL'
        -- Introduction to SQL
        -- SQL uses tables to store data

        -- Create our first table
        CREATE TABLE students (
            id      INTEGER,
            name    TEXT,
            age     INTEGER,
            gpa     REAL,
            major   TEXT
        );

        -- Add some students
        INSERT INTO students VALUES (1, 'Alice',  20, 3.9, 'Computer Science');
        INSERT INTO students VALUES (2, 'Bob',    22, 3.4, 'Mathematics');
        INSERT INTO students VALUES (3, 'Carol',  21, 3.7, 'Physics');
        INSERT INTO students VALUES (4, 'Dave',   23, 2.8, 'History');
        INSERT INTO students VALUES (5, 'Eve',    20, 3.95, 'Computer Science');

        -- Read all data (the most basic query)
        SELECT * FROM students;
      SQL
    },

    2 => {
      body: <<~'HTML',
        <div class="lc-intro">
          <p><code>CREATE TABLE</code> defines the structure of a new table. You specify each <strong>column name</strong> and its <strong>data type</strong>. Choosing the right data types is crucial for data integrity and storage efficiency.</p>
        </div>
        <div class="lc-section">
          <h2>Common SQL Data Types</h2>
          <table class="lc-table">
            <thead><tr><th>Type</th><th>Use For</th><th>Example</th></tr></thead>
            <tbody>
              <tr><td><code>INTEGER</code> / <code>INT</code></td><td>Whole numbers</td><td>age, quantity, id</td></tr>
              <tr><td><code>REAL</code> / <code>FLOAT</code></td><td>Decimal numbers</td><td>gpa, price, weight</td></tr>
              <tr><td><code>TEXT</code> / <code>VARCHAR(n)</code></td><td>Text strings</td><td>name, email, city</td></tr>
              <tr><td><code>BOOLEAN</code></td><td>True/False</td><td>is_active, has_paid</td></tr>
              <tr><td><code>DATE</code></td><td>Date values</td><td>hire_date, birthday</td></tr>
              <tr><td><code>DATETIME</code></td><td>Date + time</td><td>created_at, updated_at</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-section">
          <h2>CREATE TABLE Syntax</h2>
          <div class="lc-code-block"><pre><code>CREATE TABLE employees (
    id         INTEGER PRIMARY KEY,
    name       TEXT         NOT NULL,
    department TEXT         NOT NULL,
    salary     REAL         NOT NULL,
    hire_date  TEXT,
    is_active  INTEGER DEFAULT 1
);

-- PRIMARY KEY: unique identifier for each row
-- NOT NULL: this field cannot be empty
-- DEFAULT: value used when none is provided</code></pre></div>
        </div>
        <div class="lc-section">
          <h2>DROP TABLE</h2>
          <div class="lc-code-block"><pre><code>-- Delete a table permanently (careful!)
DROP TABLE employees;

-- Safer version — only drops if it exists
DROP TABLE IF EXISTS employees;</code></pre></div>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>Always define a <strong>PRIMARY KEY</strong> for every table. It uniquely identifies each row and prevents duplicate records. Usually an auto-incrementing integer column named <code>id</code>.</p></div>
      HTML
      starter_code: <<~'SQL'
        -- CREATE TABLE and Data Types

        -- Table 1: employees
        CREATE TABLE employees (
            id         INTEGER PRIMARY KEY,
            name       TEXT    NOT NULL,
            department TEXT    NOT NULL,
            salary     REAL    NOT NULL,
            hire_year  INTEGER
        );

        -- Table 2: products
        CREATE TABLE products (
            id       INTEGER PRIMARY KEY,
            name     TEXT NOT NULL,
            category TEXT,
            price    REAL NOT NULL,
            stock    INTEGER DEFAULT 0
        );

        -- Insert employees
        INSERT INTO employees VALUES (1, 'Alice',  'Engineering', 95000, 2020);
        INSERT INTO employees VALUES (2, 'Bob',    'Marketing',   72000, 2019);
        INSERT INTO employees VALUES (3, 'Carol',  'Engineering', 105000, 2018);
        INSERT INTO employees VALUES (4, 'Dave',   'HR',          65000, 2021);
        INSERT INTO employees VALUES (5, 'Eve',    'Engineering', 98000, 2020);

        -- Insert products
        INSERT INTO products VALUES (1, 'Laptop',  'Electronics', 75000, 50);
        INSERT INTO products VALUES (2, 'Phone',   'Electronics', 25000, 200);
        INSERT INTO products VALUES (3, 'Desk',    'Furniture',   12000, 30);
        INSERT INTO products VALUES (4, 'Chair',   'Furniture',    8000, 45);
        INSERT INTO products VALUES (5, 'Monitor', 'Electronics', 22000, 80);

        -- See the tables
        SELECT * FROM employees;
        SELECT * FROM products;
      SQL
    },

    3 => {
      body: <<~'HTML',
        <div class="lc-intro">
          <p><code>INSERT INTO</code> adds new rows of data to a table. You can insert one row at a time or multiple rows in a single statement. Matching column names explicitly is a best practice that prevents bugs when the table schema changes.</p>
        </div>
        <div class="lc-section">
          <h2>INSERT Syntax</h2>
          <div class="lc-code-block"><pre><code>-- Named columns (recommended — safer)
INSERT INTO students (id, name, age, gpa, major)
VALUES (1, 'Alice', 20, 3.9, 'Computer Science');

-- Without column names (must match table order exactly)
INSERT INTO students
VALUES (2, 'Bob', 22, 3.4, 'Mathematics');

-- Multiple rows in one statement
INSERT INTO students (id, name, age, gpa, major)
VALUES
    (3, 'Carol', 21, 3.7, 'Physics'),
    (4, 'Dave',  23, 2.8, 'History'),
    (5, 'Eve',   20, 3.95,'Computer Science');</code></pre></div>
        </div>
        <div class="lc-section">
          <h2>INSERT with Default Values</h2>
          <div class="lc-code-block"><pre><code>-- If a column has a DEFAULT, you can omit it
CREATE TABLE products (
    id    INTEGER PRIMARY KEY,
    name  TEXT NOT NULL,
    stock INTEGER DEFAULT 0
);

-- stock will be 0 automatically
INSERT INTO products (id, name) VALUES (1, 'Laptop');</code></pre></div>
        </div>
        <div class="lc-section">
          <h2>INSERT SELECT — Copy Data Between Tables</h2>
          <div class="lc-code-block"><pre><code>-- Insert results of a SELECT into another table
INSERT INTO top_students (name, gpa)
SELECT name, gpa FROM students
WHERE gpa >= 3.8;</code></pre></div>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>Always specify column names in INSERT statements. If someone adds a new column to the table later, <code>INSERT INTO table VALUES (...)</code> without column names will break — but named inserts will still work correctly.</p></div>
      HTML
      starter_code: <<~'SQL'
        -- INSERT INTO

        CREATE TABLE books (
            id        INTEGER PRIMARY KEY,
            title     TEXT    NOT NULL,
            author    TEXT    NOT NULL,
            genre     TEXT,
            price     REAL    NOT NULL,
            year      INTEGER,
            in_stock  INTEGER DEFAULT 1
        );

        -- Insert one row with named columns
        INSERT INTO books (id, title, author, genre, price, year)
        VALUES (1, 'The Pragmatic Programmer', 'Hunt & Thomas', 'Tech', 1499, 1999);

        -- Insert multiple rows at once
        INSERT INTO books (id, title, author, genre, price, year)
        VALUES
            (2, 'Clean Code',          'Robert Martin',  'Tech',     1299, 2008),
            (3, 'Harry Potter 1',      'J.K. Rowling',   'Fantasy',   799, 1997),
            (4, 'The Alchemist',       'Paulo Coelho',   'Fiction',   499, 1988),
            (5, 'Atomic Habits',       'James Clear',    'Self-Help', 899, 2018),
            (6, 'Deep Work',           'Cal Newport',    'Self-Help', 799, 2016),
            (7, 'Dune',                'Frank Herbert',  'Sci-Fi',    599, 1965),
            (8, 'Design Patterns',     'Gang of Four',   'Tech',     1599, 1994);

        -- Verify the inserts
        SELECT * FROM books;
      SQL
    },

    4 => {
      body: <<~'HTML',
        <div class="lc-intro">
          <p><code>SELECT</code> is the most powerful and most-used SQL statement. It retrieves data from one or more tables. You can select specific columns, all columns (<code>*</code>), computed values, and apply dozens of clauses to shape the result.</p>
        </div>
        <div class="lc-section">
          <h2>SELECT Syntax</h2>
          <div class="lc-code-block"><pre><code>-- All columns
SELECT * FROM students;

-- Specific columns
SELECT name, gpa FROM students;

-- Computed column
SELECT name, salary * 12 AS annual_salary
FROM employees;

-- Rename columns with AS
SELECT name AS student_name, gpa AS grade_point
FROM students;</code></pre></div>
        </div>
        <div class="lc-section">
          <h2>SELECT Clause Order</h2>
          <div class="lc-flow">
            <div class="lc-flow-step"><code>SELECT</code><br><small>Columns</small></div>
            <div class="lc-flow-arrow">→</div>
            <div class="lc-flow-step"><code>FROM</code><br><small>Table</small></div>
            <div class="lc-flow-arrow">→</div>
            <div class="lc-flow-step"><code>WHERE</code><br><small>Filter</small></div>
            <div class="lc-flow-arrow">→</div>
            <div class="lc-flow-step"><code>ORDER BY</code><br><small>Sort</small></div>
            <div class="lc-flow-arrow">→</div>
            <div class="lc-flow-step"><code>LIMIT</code><br><small>Cap</small></div>
          </div>
        </div>
        <div class="lc-section">
          <h2>Selecting Computed Values</h2>
          <div class="lc-code-block"><pre><code>SELECT
    name,
    salary,
    salary * 0.18 AS tax,
    salary - (salary * 0.18) AS take_home
FROM employees;</code></pre></div>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>Use <code>SELECT *</code> only for exploration — in production code, always name your columns explicitly. This makes queries faster, prevents breaks when columns are added/reordered, and documents what data your code actually needs.</p></div>
      HTML
      starter_code: <<~'SQL'
        -- SELECT Queries

        CREATE TABLE employees (
            id         INTEGER PRIMARY KEY,
            name       TEXT,
            department TEXT,
            salary     REAL,
            hire_year  INTEGER
        );

        INSERT INTO employees VALUES
            (1, 'Alice',   'Engineering', 95000, 2020),
            (2, 'Bob',     'Marketing',   72000, 2019),
            (3, 'Carol',   'Engineering', 105000, 2018),
            (4, 'Dave',    'HR',          65000, 2021),
            (5, 'Eve',     'Engineering', 98000, 2020),
            (6, 'Frank',   'Marketing',   78000, 2017),
            (7, 'Grace',   'HR',          70000, 2022),
            (8, 'Henry',   'Engineering', 112000, 2015);

        -- Select all columns
        SELECT * FROM employees;

        -- Select specific columns
        SELECT name, department, salary FROM employees;

        -- Computed columns with aliases
        SELECT
            name,
            salary,
            salary * 0.18   AS tax_amount,
            salary * 0.82   AS take_home,
            2025 - hire_year AS years_at_company
        FROM employees;
      SQL
    },

    5 => {
      body: <<~'HTML',
        <div class="lc-intro">
          <p>The <code>WHERE</code> clause <strong>filters rows</strong> based on a condition. Only rows where the condition is <code>TRUE</code> are included in the result. Mastering WHERE is essential — it is how you find exactly the data you need from millions of rows.</p>
        </div>
        <div class="lc-section">
          <h2>Comparison Operators</h2>
          <table class="lc-table">
            <thead><tr><th>Operator</th><th>Meaning</th><th>Example</th></tr></thead>
            <tbody>
              <tr><td><code>=</code></td><td>Equal to</td><td><code>WHERE dept = 'HR'</code></td></tr>
              <tr><td><code>!=</code> or <code>&lt;&gt;</code></td><td>Not equal</td><td><code>WHERE dept != 'HR'</code></td></tr>
              <tr><td><code>&gt;</code></td><td>Greater than</td><td><code>WHERE salary &gt; 80000</code></td></tr>
              <tr><td><code>&lt;</code></td><td>Less than</td><td><code>WHERE age &lt; 30</code></td></tr>
              <tr><td><code>&gt;=</code> / <code>&lt;=</code></td><td>Greater/Less or equal</td><td><code>WHERE gpa &gt;= 3.5</code></td></tr>
              <tr><td><code>BETWEEN a AND b</code></td><td>Inclusive range</td><td><code>WHERE age BETWEEN 20 AND 25</code></td></tr>
              <tr><td><code>IN (a, b, c)</code></td><td>Matches any in list</td><td><code>WHERE dept IN ('HR','IT')</code></td></tr>
              <tr><td><code>LIKE 'pattern'</code></td><td>Pattern matching</td><td><code>WHERE name LIKE 'A%'</code></td></tr>
              <tr><td><code>IS NULL</code></td><td>Value is null</td><td><code>WHERE email IS NULL</code></td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-section">
          <h2>Logical Operators</h2>
          <div class="lc-code-block"><pre><code>-- AND: both conditions must be true
SELECT * FROM employees
WHERE department = 'Engineering' AND salary > 90000;

-- OR: at least one condition must be true
SELECT * FROM employees
WHERE department = 'HR' OR department = 'Marketing';

-- NOT: inverts the condition
SELECT * FROM employees WHERE NOT department = 'HR';</code></pre></div>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p><code>LIKE</code> uses two wildcards: <code>%</code> matches any number of characters (<code>'A%'</code> = starts with A), and <code>_</code> matches exactly one character (<code>'_ob'</code> matches "Bob", "Rob"). Use <code>ILIKE</code> for case-insensitive matching in PostgreSQL.</p></div>
      HTML
      starter_code: <<~'SQL'
        -- WHERE Clause — Filtering Data

        CREATE TABLE employees (
            id         INTEGER,
            name       TEXT,
            department TEXT,
            salary     REAL,
            hire_year  INTEGER
        );

        INSERT INTO employees VALUES
            (1, 'Alice',   'Engineering', 95000, 2020),
            (2, 'Bob',     'Marketing',   72000, 2019),
            (3, 'Carol',   'Engineering', 105000, 2018),
            (4, 'Dave',    'HR',          65000, 2021),
            (5, 'Eve',     'Engineering', 98000, 2020),
            (6, 'Frank',   'Marketing',   78000, 2017),
            (7, 'Grace',   'HR',          70000, 2022),
            (8, 'Henry',   'Engineering', 112000, 2015);

        -- Basic WHERE
        SELECT * FROM employees WHERE department = 'Engineering';

        -- Comparison
        SELECT name, salary FROM employees WHERE salary > 90000;

        -- BETWEEN
        SELECT name, salary FROM employees WHERE salary BETWEEN 70000 AND 100000;

        -- IN list
        SELECT name, department FROM employees
        WHERE department IN ('HR', 'Marketing');

        -- LIKE pattern (starts with 'A' or 'E')
        SELECT name FROM employees WHERE name LIKE 'A%';

        -- AND / OR
        SELECT name, department, salary FROM employees
        WHERE department = 'Engineering' AND salary >= 100000;

        SELECT name, department FROM employees
        WHERE department = 'HR' OR hire_year <= 2018;
      SQL
    },

    6 => {
      body: <<~'HTML',
        <div class="lc-intro">
          <p><code>ORDER BY</code> sorts your query results. <code>LIMIT</code> caps the number of rows returned. Together they are essential for ranked lists, pagination, and finding top/bottom records efficiently.</p>
        </div>
        <div class="lc-section">
          <h2>ORDER BY</h2>
          <div class="lc-code-block"><pre><code>-- Sort ascending (default — A→Z, 0→9)
SELECT name, salary FROM employees ORDER BY salary;

-- Sort descending (Z→A, 9→0)
SELECT name, salary FROM employees ORDER BY salary DESC;

-- Sort by multiple columns
SELECT name, department, salary
FROM employees
ORDER BY department ASC, salary DESC;</code></pre></div>
        </div>
        <div class="lc-section">
          <h2>LIMIT and OFFSET</h2>
          <div class="lc-code-block"><pre><code>-- Top 3 highest-paid employees
SELECT name, salary FROM employees
ORDER BY salary DESC
LIMIT 3;

-- OFFSET — skip first N rows (useful for pagination)
-- Page 2: rows 4-6
SELECT name, salary FROM employees
ORDER BY salary DESC
LIMIT 3 OFFSET 3;</code></pre></div>
        </div>
        <div class="lc-section">
          <h2>Common Patterns</h2>
          <table class="lc-table">
            <thead><tr><th>Goal</th><th>SQL Pattern</th></tr></thead>
            <tbody>
              <tr><td>Top 5 records</td><td><code>ORDER BY col DESC LIMIT 5</code></td></tr>
              <tr><td>Bottom 5 records</td><td><code>ORDER BY col ASC LIMIT 5</code></td></tr>
              <tr><td>Alphabetical list</td><td><code>ORDER BY name ASC</code></td></tr>
              <tr><td>Most recent first</td><td><code>ORDER BY date DESC</code></td></tr>
              <tr><td>Page 2 (5 per page)</td><td><code>LIMIT 5 OFFSET 5</code></td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>Without <code>ORDER BY</code>, SQL results have <strong>no guaranteed order</strong> — the database can return rows in any sequence. Never rely on "natural" order. Always explicitly sort when the order matters to your application.</p></div>
      HTML
      starter_code: <<~'SQL'
        -- ORDER BY and LIMIT

        CREATE TABLE students (
            id    INTEGER,
            name  TEXT,
            major TEXT,
            gpa   REAL,
            age   INTEGER
        );

        INSERT INTO students VALUES
            (1,  'Alice',   'CS',       3.95, 20),
            (2,  'Bob',     'Math',     3.40, 22),
            (3,  'Carol',   'Physics',  3.75, 21),
            (4,  'Dave',    'History',  2.80, 23),
            (5,  'Eve',     'CS',       3.90, 20),
            (6,  'Frank',   'Biology',  3.60, 22),
            (7,  'Grace',   'CS',       3.85, 21),
            (8,  'Henry',   'Math',     3.20, 24),
            (9,  'Ivy',     'Physics',  3.70, 20),
            (10, 'Jack',    'History',  3.10, 22);

        -- All students sorted A-Z by name
        SELECT name, major, gpa FROM students ORDER BY name ASC;

        -- Top 5 by GPA (highest first)
        SELECT name, gpa FROM students ORDER BY gpa DESC LIMIT 5;

        -- Sort by major then GPA descending within each major
        SELECT name, major, gpa FROM students
        ORDER BY major ASC, gpa DESC;

        -- Youngest 3 students
        SELECT name, age FROM students ORDER BY age ASC LIMIT 3;

        -- Page 2 (rows 4-6) sorted by GPA
        SELECT name, gpa FROM students ORDER BY gpa DESC LIMIT 3 OFFSET 3;
      SQL
    },

    7 => {
      body: <<~'HTML',
        <div class="lc-intro">
          <p><code>UPDATE</code> modifies existing rows and <code>DELETE</code> removes them. Both use <code>WHERE</code> to specify which rows to affect. <strong>Always include WHERE</strong> — without it, you update or delete every single row!</p>
        </div>
        <div class="lc-section">
          <h2>UPDATE Syntax</h2>
          <div class="lc-code-block"><pre><code>-- Update one column for matching rows
UPDATE employees SET salary = 100000 WHERE name = 'Alice';

-- Update multiple columns at once
UPDATE employees
SET salary = 85000, department = 'Engineering'
WHERE id = 3;

-- Update using current value
UPDATE employees
SET salary = salary * 1.10    -- 10% raise
WHERE department = 'Engineering';</code></pre></div>
        </div>
        <div class="lc-section">
          <h2>DELETE Syntax</h2>
          <div class="lc-code-block"><pre><code>-- Delete specific rows
DELETE FROM employees WHERE id = 5;

-- Delete with condition
DELETE FROM students WHERE gpa < 2.0;

-- DELETE ALL ROWS (dangerous! keeps table structure)
DELETE FROM temp_logs;

-- DROP TABLE removes the table entirely
DROP TABLE temp_logs;</code></pre></div>
        </div>
        <div class="lc-section">
          <h2>Safe Update/Delete Pattern</h2>
          <div class="lc-code-block"><pre><code>-- First: check what will be affected
SELECT * FROM employees WHERE department = 'HR';

-- Then: run the update/delete
UPDATE employees SET salary = salary * 1.05
WHERE department = 'HR';</code></pre></div>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p><strong>The #1 SQL mistake:</strong> Running <code>UPDATE employees SET salary = 0</code> without a WHERE clause — this zeros out every employee's salary! Always write and verify your WHERE clause first. In production, use transactions so you can roll back mistakes.</p></div>
      HTML
      starter_code: <<~'SQL'
        -- UPDATE and DELETE

        CREATE TABLE products (
            id       INTEGER,
            name     TEXT,
            category TEXT,
            price    REAL,
            stock    INTEGER
        );

        INSERT INTO products VALUES
            (1, 'Laptop',   'Electronics', 75000, 50),
            (2, 'Phone',    'Electronics', 25000, 200),
            (3, 'Desk',     'Furniture',   12000, 30),
            (4, 'Chair',    'Furniture',    8000, 45),
            (5, 'Monitor',  'Electronics', 22000, 80),
            (6, 'Keyboard', 'Electronics',  3000, 150),
            (7, 'Lamp',     'Furniture',    2500, 60);

        -- View before changes
        SELECT * FROM products;

        -- UPDATE: give 10% discount on Electronics
        UPDATE products
        SET price = price * 0.90
        WHERE category = 'Electronics';

        -- UPDATE: restock a specific product
        UPDATE products SET stock = 100 WHERE id = 3;

        -- DELETE: remove out-of-stock items (stock = 0)
        -- (none are 0 here, so delete lowest priced furniture)
        DELETE FROM products WHERE category = 'Furniture' AND price < 3000;

        -- View after changes
        SELECT * FROM products;
      SQL
    },

    8 => {
      body: <<~'HTML',
        <div class="lc-intro">
          <p><strong>Aggregate functions</strong> perform calculations across multiple rows and return a single summary value. They are the foundation of reporting and analytics in SQL — telling you totals, averages, counts, and extremes.</p>
        </div>
        <div class="lc-section">
          <h2>The Five Core Aggregate Functions</h2>
          <table class="lc-table">
            <thead><tr><th>Function</th><th>Returns</th><th>Example</th></tr></thead>
            <tbody>
              <tr><td><code>COUNT(*)</code></td><td>Number of rows</td><td><code>COUNT(*)</code> → 5</td></tr>
              <tr><td><code>COUNT(col)</code></td><td>Non-null values in column</td><td><code>COUNT(email)</code> → 4</td></tr>
              <tr><td><code>SUM(col)</code></td><td>Total of numeric column</td><td><code>SUM(salary)</code> → 485000</td></tr>
              <tr><td><code>AVG(col)</code></td><td>Average of numeric column</td><td><code>AVG(gpa)</code> → 3.58</td></tr>
              <tr><td><code>MIN(col)</code></td><td>Smallest value</td><td><code>MIN(price)</code> → 499</td></tr>
              <tr><td><code>MAX(col)</code></td><td>Largest value</td><td><code>MAX(salary)</code> → 112000</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-section">
          <h2>Using Aggregates</h2>
          <div class="lc-code-block"><pre><code>-- How many employees?
SELECT COUNT(*) AS total_employees FROM employees;

-- Total payroll
SELECT SUM(salary) AS total_payroll FROM employees;

-- Average salary
SELECT AVG(salary) AS avg_salary FROM employees;

-- Salary range
SELECT MIN(salary) AS lowest, MAX(salary) AS highest
FROM employees;

-- All stats at once
SELECT COUNT(*) AS count,
       ROUND(AVG(salary), 2) AS avg,
       SUM(salary) AS total,
       MIN(salary) AS min,
       MAX(salary) AS max
FROM employees;</code></pre></div>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p><code>COUNT(*)</code> counts all rows including those with NULL values. <code>COUNT(column_name)</code> only counts rows where that specific column is NOT NULL. Use <code>ROUND(AVG(col), 2)</code> to control decimal places in your average.</p></div>
      HTML
      starter_code: <<~'SQL'
        -- Aggregate Functions

        CREATE TABLE employees (
            id         INTEGER,
            name       TEXT,
            department TEXT,
            salary     REAL,
            hire_year  INTEGER
        );

        INSERT INTO employees VALUES
            (1, 'Alice',   'Engineering', 95000, 2020),
            (2, 'Bob',     'Marketing',   72000, 2019),
            (3, 'Carol',   'Engineering', 105000, 2018),
            (4, 'Dave',    'HR',          65000, 2021),
            (5, 'Eve',     'Engineering', 98000, 2020),
            (6, 'Frank',   'Marketing',   78000, 2017),
            (7, 'Grace',   'HR',          70000, 2022),
            (8, 'Henry',   'Engineering', 112000, 2015);

        -- Total count
        SELECT COUNT(*) AS total_employees FROM employees;

        -- Payroll summary
        SELECT
            SUM(salary)           AS total_payroll,
            ROUND(AVG(salary), 2) AS avg_salary,
            MIN(salary)           AS lowest_salary,
            MAX(salary)           AS highest_salary
        FROM employees;

        -- Only Engineering stats
        SELECT
            COUNT(*)              AS eng_count,
            ROUND(AVG(salary), 2) AS eng_avg,
            SUM(salary)           AS eng_total
        FROM employees
        WHERE department = 'Engineering';

        -- Hired before 2020
        SELECT COUNT(*) AS pre_2020_hires
        FROM employees WHERE hire_year < 2020;
      SQL
    },

    9 => {
      body: <<~'HTML',
        <div class="lc-intro">
          <p><code>GROUP BY</code> splits rows into groups and applies aggregate functions to each group separately. <code>HAVING</code> then filters those groups — it is like <code>WHERE</code> but for groups, applied after aggregation.</p>
        </div>
        <div class="lc-section">
          <h2>GROUP BY Example</h2>
          <div class="lc-code-block"><pre><code>-- Average salary PER department
SELECT department,
       COUNT(*)              AS headcount,
       ROUND(AVG(salary), 2) AS avg_salary,
       SUM(salary)           AS total_salary
FROM employees
GROUP BY department
ORDER BY avg_salary DESC;</code></pre></div>
        </div>
        <div class="lc-section">
          <h2>WHERE vs HAVING</h2>
          <table class="lc-table">
            <thead><tr><th></th><th>WHERE</th><th>HAVING</th></tr></thead>
            <tbody>
              <tr><td><strong>Filters</strong></td><td>Individual rows</td><td>Groups (after aggregation)</td></tr>
              <tr><td><strong>Applied</strong></td><td>Before GROUP BY</td><td>After GROUP BY</td></tr>
              <tr><td><strong>Can use</strong></td><td>Column values</td><td>Aggregate functions</td></tr>
              <tr><td><strong>Example</strong></td><td><code>WHERE salary &gt; 50000</code></td><td><code>HAVING AVG(salary) &gt; 80000</code></td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-section">
          <h2>GROUP BY + HAVING</h2>
          <div class="lc-code-block"><pre><code>-- Departments with more than 2 employees
-- AND average salary above 80,000
SELECT department,
       COUNT(*) AS headcount,
       AVG(salary) AS avg_salary
FROM employees
GROUP BY department
HAVING COUNT(*) > 2 AND AVG(salary) > 80000;</code></pre></div>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>In SQL execution order: <code>WHERE</code> runs <strong>before</strong> GROUP BY, <code>HAVING</code> runs <strong>after</strong>. The full order is: FROM → WHERE → GROUP BY → HAVING → SELECT → ORDER BY → LIMIT.</p></div>
      HTML
      starter_code: <<~'SQL'
        -- GROUP BY and HAVING

        CREATE TABLE orders (
            id           INTEGER,
            customer     TEXT,
            product      TEXT,
            category     TEXT,
            amount       REAL,
            order_year   INTEGER
        );

        INSERT INTO orders VALUES
            (1,  'Alice', 'Laptop',     'Electronics', 75000, 2023),
            (2,  'Bob',   'Phone',      'Electronics', 25000, 2023),
            (3,  'Alice', 'Desk',       'Furniture',   12000, 2023),
            (4,  'Carol', 'Laptop',     'Electronics', 75000, 2022),
            (5,  'Dave',  'Chair',      'Furniture',    8000, 2022),
            (6,  'Alice', 'Monitor',    'Electronics', 22000, 2023),
            (7,  'Bob',   'Keyboard',   'Electronics',  3000, 2023),
            (8,  'Carol', 'Phone',      'Electronics', 25000, 2023),
            (9,  'Dave',  'Laptop',     'Electronics', 75000, 2022),
            (10, 'Eve',   'Desk',       'Furniture',   12000, 2023);

        -- Total orders and revenue by category
        SELECT
            category,
            COUNT(*)       AS order_count,
            SUM(amount)    AS total_revenue,
            ROUND(AVG(amount), 2) AS avg_order
        FROM orders
        GROUP BY category
        ORDER BY total_revenue DESC;

        -- Revenue per customer
        SELECT customer, COUNT(*) AS orders, SUM(amount) AS spent
        FROM orders
        GROUP BY customer
        ORDER BY spent DESC;

        -- HAVING: customers who spent more than 50000
        SELECT customer, SUM(amount) AS total_spent
        FROM orders
        GROUP BY customer
        HAVING SUM(amount) > 50000;

        -- Revenue by year and category
        SELECT order_year, category, SUM(amount) AS revenue
        FROM orders
        GROUP BY order_year, category
        ORDER BY order_year DESC, revenue DESC;
      SQL
    },

    10 => {
      body: <<~'HTML',
        <div class="lc-intro">
          <p><code>JOIN</code> combines rows from two or more tables based on a related column. This is what makes relational databases powerful — instead of duplicating data, you link tables together. <code>INNER JOIN</code> is the most common type.</p>
        </div>
        <div class="lc-section">
          <h2>Why JOINs?</h2>
          <p>Instead of storing a student's full course details in the enrollments table, we store just the <code>course_id</code>. A JOIN combines both tables to get complete information.</p>
        </div>
        <div class="lc-section">
          <h2>INNER JOIN Syntax</h2>
          <div class="lc-code-block"><pre><code>-- Returns rows that have a match in BOTH tables
SELECT s.name, c.course_name, e.grade
FROM students s
INNER JOIN enrollments e ON s.id = e.student_id
INNER JOIN courses c     ON e.course_id = c.id;

-- Table aliases (s, e, c) make queries shorter
-- ON specifies the matching condition</code></pre></div>
        </div>
        <div class="lc-section">
          <h2>INNER JOIN Venn Diagram</h2>
          <div class="lc-flow">
            <div class="lc-flow-step">Table A<br><small>students</small></div>
            <div class="lc-flow-arrow">⋂</div>
            <div class="lc-flow-step" style="background:var(--purple);color:#fff">Only matching<br>rows returned</div>
            <div class="lc-flow-arrow">⋂</div>
            <div class="lc-flow-step">Table B<br><small>enrollments</small></div>
          </div>
          <p style="margin-top:10px">Rows with no match in the other table are <strong>excluded</strong>.</p>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>Always use <strong>table aliases</strong> (short names) when joining tables: <code>FROM students s INNER JOIN enrollments e</code>. This makes queries readable and lets you reference columns unambiguously: <code>s.name</code> vs <code>e.student_id</code>.</p></div>
      HTML
      starter_code: <<~'SQL'
        -- INNER JOIN

        CREATE TABLE students (
            id    INTEGER,
            name  TEXT,
            major TEXT
        );

        CREATE TABLE courses (
            id          INTEGER,
            course_name TEXT,
            credits     INTEGER,
            instructor  TEXT
        );

        CREATE TABLE enrollments (
            student_id INTEGER,
            course_id  INTEGER,
            grade      TEXT
        );

        INSERT INTO students VALUES
            (1, 'Alice', 'CS'), (2, 'Bob', 'Math'),
            (3, 'Carol', 'Physics'), (4, 'Dave', 'CS');

        INSERT INTO courses VALUES
            (101, 'Database Design', 3, 'Dr. Smith'),
            (102, 'Algorithms',      4, 'Dr. Jones'),
            (103, 'Linear Algebra',  3, 'Dr. Lee');

        INSERT INTO enrollments VALUES
            (1, 101, 'A'), (1, 102, 'B+'),
            (2, 102, 'A-'),(2, 103, 'A'),
            (3, 101, 'B'), (3, 103, 'A+'),
            (4, 101, 'A'), (4, 102, 'A-');

        -- Join all three tables
        SELECT
            s.name        AS student,
            s.major,
            c.course_name AS course,
            c.instructor,
            e.grade
        FROM students s
        INNER JOIN enrollments e ON s.id = e.student_id
        INNER JOIN courses c     ON e.course_id = c.id
        ORDER BY s.name, c.course_name;

        -- How many courses each student is taking?
        SELECT s.name, COUNT(*) AS courses_taken
        FROM students s
        INNER JOIN enrollments e ON s.id = e.student_id
        GROUP BY s.name
        ORDER BY courses_taken DESC;
      SQL
    },

    11 => {
      body: <<~'HTML',
        <div class="lc-intro">
          <p><code>LEFT JOIN</code> returns <strong>all rows from the left table</strong>, plus matching rows from the right table. If there is no match, right-side columns are <code>NULL</code>. This is essential for finding records that don't have a related entry.</p>
        </div>
        <div class="lc-section">
          <h2>JOIN Types Compared</h2>
          <table class="lc-table">
            <thead><tr><th>JOIN Type</th><th>Returns</th></tr></thead>
            <tbody>
              <tr><td><code>INNER JOIN</code></td><td>Only rows with matches in BOTH tables</td></tr>
              <tr><td><code>LEFT JOIN</code></td><td>All left rows + matching right rows (NULL if no match)</td></tr>
              <tr><td><code>RIGHT JOIN</code></td><td>All right rows + matching left rows (NULL if no match)</td></tr>
              <tr><td><code>FULL JOIN</code></td><td>All rows from both tables</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-section">
          <h2>LEFT JOIN — Finding Missing Data</h2>
          <div class="lc-code-block"><pre><code>-- Find students who have NOT enrolled in any course
SELECT s.name, e.course_id
FROM students s
LEFT JOIN enrollments e ON s.id = e.student_id
WHERE e.course_id IS NULL;
-- e.course_id is NULL when there's no matching enrollment</code></pre></div>
        </div>
        <div class="lc-section">
          <h2>LEFT JOIN vs INNER JOIN</h2>
          <div class="lc-code-block"><pre><code>-- INNER JOIN: only enrolled students (excludes unenrolled)
SELECT s.name, e.grade
FROM students s INNER JOIN enrollments e ON s.id = e.student_id;

-- LEFT JOIN: ALL students, NULL grade if not enrolled
SELECT s.name, e.grade
FROM students s LEFT JOIN enrollments e ON s.id = e.student_id;</code></pre></div>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p><code>LEFT JOIN ... WHERE right_table.col IS NULL</code> is a classic pattern for finding records that have <strong>no related entry</strong> — e.g., "customers who have never placed an order" or "products that have never been sold."</p></div>
      HTML
      starter_code: <<~'SQL'
        -- LEFT JOIN

        CREATE TABLE customers (
            id   INTEGER,
            name TEXT,
            city TEXT
        );

        CREATE TABLE orders (
            id          INTEGER,
            customer_id INTEGER,
            product     TEXT,
            amount      REAL
        );

        INSERT INTO customers VALUES
            (1, 'Alice',  'Mumbai'),
            (2, 'Bob',    'Delhi'),
            (3, 'Carol',  'Bangalore'),
            (4, 'Dave',   'Chennai'),
            (5, 'Eve',    'Pune');

        INSERT INTO orders VALUES
            (1, 1, 'Laptop',  75000),
            (2, 1, 'Phone',   25000),
            (3, 2, 'Monitor', 22000),
            (4, 3, 'Laptop',  75000),
            (5, 1, 'Desk',    12000);
        -- Note: Dave (4) and Eve (5) have NO orders!

        -- INNER JOIN: only customers WITH orders
        SELECT c.name, o.product, o.amount
        FROM customers c
        INNER JOIN orders o ON c.id = o.customer_id;

        -- LEFT JOIN: ALL customers, NULL if no orders
        SELECT c.name, c.city, o.product, o.amount
        FROM customers c
        LEFT JOIN orders o ON c.id = o.customer_id
        ORDER BY c.name;

        -- Find customers who have NEVER ordered
        SELECT c.name, c.city
        FROM customers c
        LEFT JOIN orders o ON c.id = o.customer_id
        WHERE o.id IS NULL;

        -- Total spent per customer (including 0 for no orders)
        SELECT c.name, COUNT(o.id) AS order_count,
               COALESCE(SUM(o.amount), 0) AS total_spent
        FROM customers c
        LEFT JOIN orders o ON c.id = o.customer_id
        GROUP BY c.name
        ORDER BY total_spent DESC;
      SQL
    },

    12 => {
      body: <<~'HTML',
        <div class="lc-intro">
          <p>A <strong>subquery</strong> (or nested query) is a SELECT statement embedded inside another SQL statement. They let you use the result of one query as input to another — enabling powerful multi-step data retrieval in a single statement.</p>
        </div>
        <div class="lc-section">
          <h2>Subquery in WHERE</h2>
          <div class="lc-code-block"><pre><code>-- Find employees earning more than the average salary
SELECT name, salary
FROM employees
WHERE salary > (SELECT AVG(salary) FROM employees);
--             └── Subquery returns a single value</code></pre></div>
        </div>
        <div class="lc-section">
          <h2>Subquery with IN</h2>
          <div class="lc-code-block"><pre><code>-- Find students enrolled in the Algorithms course
SELECT name FROM students
WHERE id IN (
    SELECT student_id FROM enrollments
    WHERE course_id = (
        SELECT id FROM courses WHERE course_name = 'Algorithms'
    )
);</code></pre></div>
        </div>
        <div class="lc-section">
          <h2>Subquery in FROM (Derived Table)</h2>
          <div class="lc-code-block"><pre><code>-- Average of department averages
SELECT AVG(dept_avg) AS company_avg
FROM (
    SELECT department, AVG(salary) AS dept_avg
    FROM employees
    GROUP BY department
) AS dept_stats;</code></pre></div>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>Subqueries that return a <strong>single value</strong> can use <code>=</code>. Subqueries that return <strong>multiple values</strong> must use <code>IN</code>. For very large datasets, subqueries can sometimes be replaced with JOINs for better performance.</p></div>
      HTML
      starter_code: <<~'SQL'
        -- Subqueries

        CREATE TABLE employees (
            id         INTEGER,
            name       TEXT,
            department TEXT,
            salary     REAL
        );

        INSERT INTO employees VALUES
            (1, 'Alice',   'Engineering', 95000),
            (2, 'Bob',     'Marketing',   72000),
            (3, 'Carol',   'Engineering', 105000),
            (4, 'Dave',    'HR',          65000),
            (5, 'Eve',     'Engineering', 98000),
            (6, 'Frank',   'Marketing',   78000),
            (7, 'Grace',   'HR',          70000),
            (8, 'Henry',   'Engineering', 112000);

        -- Subquery: employees above average salary
        SELECT name, salary
        FROM employees
        WHERE salary > (SELECT AVG(salary) FROM employees)
        ORDER BY salary DESC;

        -- Subquery: employees in departments with avg salary > 80k
        SELECT name, department, salary
        FROM employees
        WHERE department IN (
            SELECT department
            FROM employees
            GROUP BY department
            HAVING AVG(salary) > 80000
        );

        -- Subquery in SELECT: compare to company average
        SELECT
            name,
            salary,
            ROUND((SELECT AVG(salary) FROM employees), 2) AS company_avg,
            salary - (SELECT AVG(salary) FROM employees)  AS diff_from_avg
        FROM employees
        ORDER BY diff_from_avg DESC;
      SQL
    },

    13 => {
      body: <<~'HTML',
        <div class="lc-intro">
          <p><code>DISTINCT</code> removes duplicate values from results. <strong>Aliases</strong> (<code>AS</code>) rename columns and tables in the output — making results readable and enabling computed columns. <code>COALESCE</code> handles NULL values gracefully.</p>
        </div>
        <div class="lc-section">
          <h2>DISTINCT</h2>
          <div class="lc-code-block"><pre><code>-- Get unique departments (no duplicates)
SELECT DISTINCT department FROM employees;

-- Unique combinations
SELECT DISTINCT department, hire_year
FROM employees
ORDER BY department;</code></pre></div>
        </div>
        <div class="lc-section">
          <h2>Column Aliases with AS</h2>
          <div class="lc-code-block"><pre><code>SELECT
    name                          AS employee_name,
    salary                        AS annual_salary,
    salary / 12                   AS monthly_salary,
    salary * 0.18                 AS tax_amount,
    ROUND(salary * 0.82, 2)       AS take_home
FROM employees;</code></pre></div>
        </div>
        <div class="lc-section">
          <h2>COALESCE — Handle NULL Values</h2>
          <div class="lc-code-block"><pre><code>-- Replace NULL with a default value
SELECT
    name,
    COALESCE(email, 'No email provided') AS contact,
    COALESCE(bonus, 0)                   AS bonus_amount
FROM employees;</code></pre></div>
        </div>
        <div class="lc-section">
          <h2>CASE Expression</h2>
          <div class="lc-code-block"><pre><code>SELECT name, salary,
    CASE
        WHEN salary >= 100000 THEN 'Senior'
        WHEN salary >= 75000  THEN 'Mid-level'
        ELSE                       'Junior'
    END AS level
FROM employees;</code></pre></div>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p><code>CASE WHEN ... THEN ... ELSE ... END</code> is SQL's if-else expression. It is incredibly powerful — you can use it in SELECT, WHERE, ORDER BY, and GROUP BY to add conditional logic directly to your queries.</p></div>
      HTML
      starter_code: <<~'SQL'
        -- DISTINCT, Aliases, COALESCE, CASE

        CREATE TABLE employees (
            id         INTEGER,
            name       TEXT,
            department TEXT,
            salary     REAL,
            hire_year  INTEGER
        );

        INSERT INTO employees VALUES
            (1, 'Alice',   'Engineering', 95000, 2020),
            (2, 'Bob',     'Marketing',   72000, 2019),
            (3, 'Carol',   'Engineering', 105000, 2018),
            (4, 'Dave',    'HR',          65000, 2021),
            (5, 'Eve',     'Engineering', 98000, 2020),
            (6, 'Frank',   'Marketing',   78000, 2017),
            (7, 'Grace',   'HR',          70000, 2022),
            (8, 'Henry',   'Engineering', 112000, 2015);

        -- DISTINCT departments
        SELECT DISTINCT department FROM employees ORDER BY department;

        -- Aliases and computed columns
        SELECT
            name                    AS employee_name,
            department,
            salary                  AS annual_salary,
            ROUND(salary / 12, 2)   AS monthly_salary,
            2025 - hire_year        AS years_experience
        FROM employees
        ORDER BY annual_salary DESC;

        -- CASE: salary bands
        SELECT
            name,
            department,
            salary,
            CASE
                WHEN salary >= 100000 THEN 'Senior Level'
                WHEN salary >= 80000  THEN 'Mid Level'
                ELSE                       'Junior Level'
            END AS level
        FROM employees
        ORDER BY salary DESC;
      SQL
    },

    14 => {
      body: <<~'HTML',
        <div class="lc-intro">
          <p>SQL provides built-in <strong>string functions</strong> for manipulating text data directly in your queries — without having to process results in application code. These are essential for cleaning, formatting, and searching text data.</p>
        </div>
        <div class="lc-section">
          <h2>Common String Functions</h2>
          <table class="lc-table">
            <thead><tr><th>Function</th><th>Example</th><th>Result</th></tr></thead>
            <tbody>
              <tr><td><code>UPPER()</code></td><td><code>UPPER('hello')</code></td><td>'HELLO'</td></tr>
              <tr><td><code>LOWER()</code></td><td><code>LOWER('HELLO')</code></td><td>'hello'</td></tr>
              <tr><td><code>LENGTH()</code></td><td><code>LENGTH('hello')</code></td><td>5</td></tr>
              <tr><td><code>TRIM()</code></td><td><code>TRIM('  hi  ')</code></td><td>'hi'</td></tr>
              <tr><td><code>REPLACE()</code></td><td><code>REPLACE('cat','c','b')</code></td><td>'bat'</td></tr>
              <tr><td><code>SUBSTR()</code></td><td><code>SUBSTR('hello',1,3)</code></td><td>'hel'</td></tr>
              <tr><td><code>INSTR()</code></td><td><code>INSTR('hello','ll')</code></td><td>3</td></tr>
              <tr><td><code>||</code></td><td><code>'Hello' || ' ' || 'World'</code></td><td>'Hello World'</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-section">
          <h2>String Functions in Practice</h2>
          <div class="lc-code-block"><pre><code>SELECT
    name,
    UPPER(name)          AS name_upper,
    LENGTH(name)         AS name_length,
    SUBSTR(name, 1, 3)   AS first_3,
    name || '@company.com' AS email
FROM employees;</code></pre></div>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>In SQL, string concatenation uses <code>||</code> (double pipe), not <code>+</code>. Note: MySQL uses <code>CONCAT()</code> function instead. SQLite, PostgreSQL, and standard SQL use <code>||</code>.</p></div>
      HTML
      starter_code: <<~'SQL'
        -- String Functions

        CREATE TABLE contacts (
            id         INTEGER,
            first_name TEXT,
            last_name  TEXT,
            email      TEXT,
            city       TEXT
        );

        INSERT INTO contacts VALUES
            (1, 'alice',   'SMITH',    'alice@gmail.com',   'mumbai'),
            (2, 'BOB',     'johnson',  'bob@yahoo.com',     'DELHI'),
            (3, 'Carol',   'Williams', 'carol@outlook.com', 'Bangalore'),
            (4, 'DAVE',    'BROWN',    'dave@gmail.com',    'chennai'),
            (5, 'eve',     'JONES',    'eve@company.com',   'PUNE');

        -- Normalize casing
        SELECT
            UPPER(first_name)                      AS first_name,
            UPPER(SUBSTR(last_name,1,1)) ||
                LOWER(SUBSTR(last_name,2))          AS last_name,
            email,
            UPPER(SUBSTR(city,1,1)) ||
                LOWER(SUBSTR(city,2))               AS city
        FROM contacts;

        -- Full name and email domain
        SELECT
            UPPER(first_name) || ' ' || UPPER(last_name) AS full_name,
            LENGTH(email)                                  AS email_length,
            REPLACE(email, 'gmail.com', 'company.com')     AS company_email
        FROM contacts;

        -- Find Gmail users
        SELECT first_name, email
        FROM contacts
        WHERE LOWER(email) LIKE '%gmail.com';

        -- Name stats
        SELECT
            first_name,
            LENGTH(first_name) AS name_length,
            SUBSTR(first_name, 1, 1) AS initial
        FROM contacts
        ORDER BY name_length DESC;
      SQL
    },

    15 => {
      body: <<~'HTML',
        <div class="lc-intro">
          <p>SQL provides <strong>date and time functions</strong> for working with temporal data. These vary slightly between database systems (MySQL, PostgreSQL, SQLite), but the concepts are the same. Date operations are essential for any application with historical data.</p>
        </div>
        <div class="lc-section">
          <h2>Common Date Functions (SQLite / Standard)</h2>
          <table class="lc-table">
            <thead><tr><th>Function</th><th>Returns</th></tr></thead>
            <tbody>
              <tr><td><code>DATE('now')</code></td><td>Current date: '2024-01-15'</td></tr>
              <tr><td><code>DATETIME('now')</code></td><td>Current datetime</td></tr>
              <tr><td><code>STRFTIME('%Y', date)</code></td><td>Extract year: '2024'</td></tr>
              <tr><td><code>STRFTIME('%m', date)</code></td><td>Extract month: '01'</td></tr>
              <tr><td><code>STRFTIME('%d', date)</code></td><td>Extract day: '15'</td></tr>
              <tr><td><code>DATE(date, '+30 days')</code></td><td>Add 30 days</td></tr>
              <tr><td><code>DATE(date, '-1 year')</code></td><td>Subtract 1 year</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-section">
          <h2>Date Calculations</h2>
          <div class="lc-code-block"><pre><code>-- Age in years from birthdate
SELECT name,
       birthdate,
       STRFTIME('%Y', 'now') - STRFTIME('%Y', birthdate) AS age
FROM employees;

-- Orders from the last 30 days
SELECT * FROM orders
WHERE order_date >= DATE('now', '-30 days');

-- Group by month
SELECT STRFTIME('%Y-%m', order_date) AS month,
       COUNT(*) AS orders
FROM orders
GROUP BY month
ORDER BY month;</code></pre></div>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>Store dates as <code>TEXT</code> in ISO format <code>'YYYY-MM-DD'</code> in SQLite. This allows correct sorting and comparison using standard string comparisons. Never store dates as unformatted numbers like <code>15012024</code>.</p></div>
      HTML
      starter_code: <<~'SQL'
        -- Date and Time Functions

        CREATE TABLE employees (
            id         INTEGER,
            name       TEXT,
            department TEXT,
            hire_date  TEXT,
            salary     REAL
        );

        INSERT INTO employees VALUES
            (1, 'Alice',   'Engineering', '2020-03-15', 95000),
            (2, 'Bob',     'Marketing',   '2019-07-01', 72000),
            (3, 'Carol',   'Engineering', '2018-11-20', 105000),
            (4, 'Dave',    'HR',          '2021-02-28', 65000),
            (5, 'Eve',     'Engineering', '2020-09-10', 98000),
            (6, 'Frank',   'Marketing',   '2017-04-05', 78000),
            (7, 'Grace',   'HR',          '2022-01-17', 70000);

        -- Years at company
        SELECT
            name,
            hire_date,
            2025 - CAST(SUBSTR(hire_date, 1, 4) AS INTEGER) AS years_at_company
        FROM employees
        ORDER BY hire_date ASC;

        -- Extract year and month from hire_date
        SELECT
            name,
            SUBSTR(hire_date, 1, 4) AS hire_year,
            SUBSTR(hire_date, 6, 2) AS hire_month
        FROM employees;

        -- Employees hired before 2020
        SELECT name, hire_date, department
        FROM employees
        WHERE hire_date < '2020-01-01'
        ORDER BY hire_date;

        -- Headcount by hire year
        SELECT
            SUBSTR(hire_date, 1, 4) AS year,
            COUNT(*) AS hires
        FROM employees
        GROUP BY year
        ORDER BY year;
      SQL
    },

    16 => {
      body: <<~'HTML',
        <div class="lc-intro">
          <p>An <strong>index</strong> is a data structure that speeds up queries by allowing the database to find rows without scanning the entire table — like a book index. Without indexes, every query is a full table scan: <em>O(n)</em> instead of <em>O(log n)</em>.</p>
        </div>
        <div class="lc-section">
          <h2>Creating Indexes</h2>
          <div class="lc-code-block"><pre><code>-- Create an index on a frequently searched column
CREATE INDEX idx_employees_department
ON employees(department);

-- Composite index (multiple columns)
CREATE INDEX idx_orders_date_customer
ON orders(order_date, customer_id);

-- Unique index (prevents duplicates too)
CREATE UNIQUE INDEX idx_users_email
ON users(email);

-- Remove an index
DROP INDEX idx_employees_department;</code></pre></div>
        </div>
        <div class="lc-section">
          <h2>When to Use Indexes</h2>
          <table class="lc-table">
            <thead><tr><th>Index this when…</th><th>Don't index when…</th></tr></thead>
            <tbody>
              <tr><td>Column is in WHERE clause often</td><td>Table has very few rows</td></tr>
              <tr><td>Column is used in JOIN conditions</td><td>Column has many duplicates (e.g., boolean)</td></tr>
              <tr><td>Column is used in ORDER BY</td><td>Table is updated very frequently</td></tr>
              <tr><td>Column needs uniqueness</td><td>Column is rarely searched</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-section">
          <h2>EXPLAIN — Query Planner</h2>
          <div class="lc-code-block"><pre><code>-- See HOW the database will execute a query
EXPLAIN SELECT * FROM employees WHERE department = 'HR';</code></pre></div>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p><strong>PRIMARY KEY</strong> columns are automatically indexed. Every table with a primary key already has an index. Foreign key columns (used in JOINs) are strong candidates for additional indexes.</p></div>
      HTML
      starter_code: <<~'SQL'
        -- Indexes and Query Performance

        -- Creating tables
        CREATE TABLE employees (
            id         INTEGER PRIMARY KEY,  -- Auto-indexed!
            name       TEXT,
            department TEXT,
            salary     REAL,
            email      TEXT
        );

        INSERT INTO employees VALUES
            (1, 'Alice',  'Engineering', 95000,  'alice@co.com'),
            (2, 'Bob',    'Marketing',   72000,  'bob@co.com'),
            (3, 'Carol',  'Engineering', 105000, 'carol@co.com'),
            (4, 'Dave',   'HR',          65000,  'dave@co.com'),
            (5, 'Eve',    'Engineering', 98000,  'eve@co.com');

        -- Create index on department (frequently queried)
        CREATE INDEX idx_dept ON employees(department);

        -- Create unique index on email (must be unique)
        CREATE UNIQUE INDEX idx_email ON employees(email);

        -- These queries now use the index
        SELECT * FROM employees WHERE department = 'Engineering';
        SELECT * FROM employees WHERE email = 'alice@co.com';

        -- Composite index example
        CREATE INDEX idx_dept_salary ON employees(department, salary);

        -- This benefits from the composite index
        SELECT name, salary FROM employees
        WHERE department = 'Engineering' AND salary > 90000;

        -- View all data
        SELECT * FROM employees ORDER BY department, salary DESC;
      SQL
    },

    17 => {
      body: <<~'HTML',
        <div class="lc-intro">
          <p><strong>Constraints</strong> are rules enforced at the database level to maintain data integrity. They prevent bad data from entering the database — regardless of what the application code does. Constraints are your last line of defence.</p>
        </div>
        <div class="lc-section">
          <h2>Common Constraints</h2>
          <table class="lc-table">
            <thead><tr><th>Constraint</th><th>Meaning</th></tr></thead>
            <tbody>
              <tr><td><code>PRIMARY KEY</code></td><td>Unique + NOT NULL — identifies each row</td></tr>
              <tr><td><code>NOT NULL</code></td><td>Column cannot be empty</td></tr>
              <tr><td><code>UNIQUE</code></td><td>No two rows can have the same value</td></tr>
              <tr><td><code>DEFAULT value</code></td><td>Auto-fills when not provided</td></tr>
              <tr><td><code>CHECK (condition)</code></td><td>Value must pass the condition</td></tr>
              <tr><td><code>FOREIGN KEY</code></td><td>Value must exist in another table</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-section">
          <h2>Using Constraints</h2>
          <div class="lc-code-block"><pre><code>CREATE TABLE students (
    id     INTEGER PRIMARY KEY,
    name   TEXT    NOT NULL,
    email  TEXT    UNIQUE,
    age    INTEGER CHECK (age >= 16 AND age <= 100),
    gpa    REAL    CHECK (gpa >= 0.0 AND gpa <= 4.0),
    status TEXT    DEFAULT 'active'
);

CREATE TABLE enrollments (
    student_id INTEGER REFERENCES students(id),
    course_id  INTEGER NOT NULL,
    -- student_id must exist in students table (FOREIGN KEY)
);</code></pre></div>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p><code>FOREIGN KEY</code> constraints ensure <strong>referential integrity</strong> — you can't add an enrollment for a student who doesn't exist, and you can't delete a student who still has enrollments. This prevents orphaned records.</p></div>
      HTML
      starter_code: <<~'SQL'
        -- Constraints

        -- Table with multiple constraints
        CREATE TABLE students (
            id     INTEGER PRIMARY KEY,
            name   TEXT    NOT NULL,
            email  TEXT    NOT NULL UNIQUE,
            age    INTEGER CHECK (age >= 16 AND age <= 100),
            gpa    REAL    DEFAULT 0.0 CHECK (gpa >= 0.0 AND gpa <= 4.0),
            status TEXT    DEFAULT 'active'
        );

        CREATE TABLE courses (
            id       INTEGER PRIMARY KEY,
            name     TEXT NOT NULL UNIQUE,
            credits  INTEGER CHECK (credits > 0)
        );

        -- Valid inserts
        INSERT INTO students VALUES (1, 'Alice', 'alice@uni.edu', 20, 3.9, 'active');
        INSERT INTO students VALUES (2, 'Bob',   'bob@uni.edu',   22, 3.4, 'active');
        INSERT INTO students VALUES (3, 'Carol', 'carol@uni.edu', 21, 3.7, 'active');

        INSERT INTO courses VALUES (101, 'Database Design', 3);
        INSERT INTO courses VALUES (102, 'Algorithms',      4);
        INSERT INTO courses VALUES (103, 'Linear Algebra',  3);

        -- View the data
        SELECT * FROM students;
        SELECT * FROM courses;

        -- Update using CHECK constraint boundary
        UPDATE students SET gpa = 4.0 WHERE name = 'Alice';
        SELECT * FROM students WHERE name = 'Alice';

        -- Stats with constraints in mind
        SELECT
            COUNT(*) AS total,
            COUNT(CASE WHEN status = 'active' THEN 1 END) AS active,
            ROUND(AVG(gpa), 2) AS avg_gpa,
            MIN(age) AS youngest,
            MAX(age) AS oldest
        FROM students;
      SQL
    },

    18 => {
      body: <<~'HTML',
        <div class="lc-intro">
          <p>A <strong>transaction</strong> is a group of SQL statements that execute as a single unit — either all succeed (<code>COMMIT</code>) or all fail (<code>ROLLBACK</code>). Transactions ensure data consistency even when errors or system failures occur.</p>
        </div>
        <div class="lc-section">
          <h2>ACID Properties</h2>
          <table class="lc-table">
            <thead><tr><th>Property</th><th>Meaning</th></tr></thead>
            <tbody>
              <tr><td><strong>Atomicity</strong></td><td>All operations succeed or all are rolled back</td></tr>
              <tr><td><strong>Consistency</strong></td><td>Database stays in a valid state</td></tr>
              <tr><td><strong>Isolation</strong></td><td>Transactions don't interfere with each other</td></tr>
              <tr><td><strong>Durability</strong></td><td>Committed data survives system crashes</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-section">
          <h2>Transaction Syntax</h2>
          <div class="lc-code-block"><pre><code>BEGIN TRANSACTION;   -- or just BEGIN;

-- Transfer $500 from Alice to Bob
UPDATE accounts SET balance = balance - 500 WHERE name = 'Alice';
UPDATE accounts SET balance = balance + 500 WHERE name = 'Bob';

-- If both succeeded:
COMMIT;

-- If something went wrong:
ROLLBACK;    -- Undo everything since BEGIN</code></pre></div>
        </div>
        <div class="lc-section">
          <h2>SAVEPOINT</h2>
          <div class="lc-code-block"><pre><code>BEGIN;
UPDATE accounts SET balance = balance - 500 WHERE id = 1;
SAVEPOINT after_debit;     -- Checkpoint

UPDATE accounts SET balance = balance + 500 WHERE id = 2;
-- Oops! Roll back just to the savepoint
ROLLBACK TO after_debit;  -- Undo only the second update
COMMIT;</code></pre></div>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>The classic example: a bank transfer. If you debit Account A but the system crashes before crediting Account B, the money disappears. Transactions prevent this — either both the debit AND credit happen, or neither does.</p></div>
      HTML
      starter_code: <<~'SQL'
        -- Transactions

        CREATE TABLE accounts (
            id      INTEGER PRIMARY KEY,
            name    TEXT NOT NULL,
            balance REAL NOT NULL CHECK (balance >= 0)
        );

        INSERT INTO accounts VALUES
            (1, 'Alice', 50000),
            (2, 'Bob',   30000),
            (3, 'Carol', 75000);

        -- View initial balances
        SELECT * FROM accounts;

        -- Successful transaction: transfer 10000 from Alice to Bob
        BEGIN;
            UPDATE accounts SET balance = balance - 10000 WHERE name = 'Alice';
            UPDATE accounts SET balance = balance + 10000 WHERE name = 'Bob';
        COMMIT;

        -- View after first transfer
        SELECT * FROM accounts;
        SELECT 'Alice: ' || balance FROM accounts WHERE name = 'Alice';
        SELECT 'Bob:   ' || balance FROM accounts WHERE name = 'Bob';

        -- Another transfer: Carol to Alice
        BEGIN;
            UPDATE accounts SET balance = balance - 5000  WHERE name = 'Carol';
            UPDATE accounts SET balance = balance + 5000  WHERE name = 'Alice';
        COMMIT;

        -- Final balances
        SELECT name, balance FROM accounts ORDER BY name;

        -- Calculate total (should be unchanged = 155000)
        SELECT SUM(balance) AS total_money FROM accounts;
      SQL
    },

    19 => {
      body: <<~'HTML',
        <div class="lc-intro">
          <p>A <strong>VIEW</strong> is a saved SELECT query that acts like a virtual table. It simplifies complex queries by giving them a name, helps enforce security by hiding sensitive columns, and keeps your code DRY (Don't Repeat Yourself).</p>
        </div>
        <div class="lc-section">
          <h2>Creating Views</h2>
          <div class="lc-code-block"><pre><code>-- Create a view
CREATE VIEW high_earners AS
SELECT name, department, salary
FROM employees
WHERE salary > 90000;

-- Use it like a table
SELECT * FROM high_earners;
SELECT name FROM high_earners WHERE department = 'Engineering';

-- Drop a view
DROP VIEW high_earners;</code></pre></div>
        </div>
        <div class="lc-section">
          <h2>Why Use Views?</h2>
          <table class="lc-table">
            <thead><tr><th>Benefit</th><th>Example</th></tr></thead>
            <tbody>
              <tr><td>Simplify complex queries</td><td>A view that joins 4 tables</td></tr>
              <tr><td>Security</td><td>Hide salary column from some users</td></tr>
              <tr><td>Consistency</td><td>Everyone uses the same logic</td></tr>
              <tr><td>Readability</td><td><code>SELECT * FROM sales_summary</code></td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-section">
          <h2>Views with Aggregates</h2>
          <div class="lc-code-block"><pre><code>CREATE VIEW dept_summary AS
SELECT
    department,
    COUNT(*)              AS headcount,
    ROUND(AVG(salary), 2) AS avg_salary,
    SUM(salary)           AS total_cost
FROM employees
GROUP BY department;

SELECT * FROM dept_summary ORDER BY avg_salary DESC;</code></pre></div>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>Views don't store data — they store the query definition. Every time you query a view, the underlying SELECT runs fresh. In MySQL/PostgreSQL, <strong>Materialized Views</strong> cache the results for faster access (refreshed periodically).</p></div>
      HTML
      starter_code: <<~'SQL'
        -- Views

        CREATE TABLE employees (
            id         INTEGER,
            name       TEXT,
            department TEXT,
            salary     REAL,
            hire_year  INTEGER
        );

        INSERT INTO employees VALUES
            (1, 'Alice',   'Engineering', 95000, 2020),
            (2, 'Bob',     'Marketing',   72000, 2019),
            (3, 'Carol',   'Engineering', 105000, 2018),
            (4, 'Dave',    'HR',          65000, 2021),
            (5, 'Eve',     'Engineering', 98000, 2020),
            (6, 'Frank',   'Marketing',   78000, 2017),
            (7, 'Grace',   'HR',          70000, 2022),
            (8, 'Henry',   'Engineering', 112000, 2015);

        -- View 1: High earners (salary > 90k)
        CREATE VIEW high_earners AS
        SELECT name, department, salary
        FROM employees
        WHERE salary > 90000;

        SELECT * FROM high_earners ORDER BY salary DESC;

        -- View 2: Department summary
        CREATE VIEW dept_summary AS
        SELECT
            department,
            COUNT(*)              AS headcount,
            ROUND(AVG(salary), 2) AS avg_salary,
            MAX(salary)           AS top_salary,
            SUM(salary)           AS total_cost
        FROM employees
        GROUP BY department;

        SELECT * FROM dept_summary ORDER BY avg_salary DESC;

        -- Query the view like a table
        SELECT department FROM dept_summary WHERE avg_salary > 80000;

        -- View 3: Senior employees (hired before 2020)
        CREATE VIEW senior_staff AS
        SELECT name, department, salary, hire_year
        FROM employees
        WHERE hire_year < 2020
        ORDER BY hire_year;

        SELECT * FROM senior_staff;
      SQL
    },

    20 => {
      body: <<~'HTML',
        <div class="lc-intro">
          <p>Congratulations on completing the SQL course! You now know the language that powers virtually every application in existence. SQL is one of the most valuable skills in tech — used by developers, data analysts, data scientists, and business intelligence teams every day.</p>
        </div>
        <div class="lc-section">
          <h2>Data Definition Language (DDL) ✓</h2>
          <ul class="lc-list lc-list-check">
            <li><code>CREATE TABLE</code> with data types, constraints (PRIMARY KEY, NOT NULL, UNIQUE, CHECK)</li>
            <li><code>DROP TABLE</code> and <code>DROP TABLE IF EXISTS</code></li>
            <li><code>CREATE INDEX</code> and <code>CREATE VIEW</code></li>
          </ul>
        </div>
        <div class="lc-section">
          <h2>Data Manipulation Language (DML) ✓</h2>
          <ul class="lc-list lc-list-check">
            <li><code>INSERT INTO</code> — single and multi-row inserts</li>
            <li><code>SELECT</code> with WHERE, ORDER BY, LIMIT, DISTINCT, aliases</li>
            <li><code>UPDATE</code> with WHERE clause</li>
            <li><code>DELETE FROM</code> with WHERE clause</li>
          </ul>
        </div>
        <div class="lc-section">
          <h2>Advanced SQL ✓</h2>
          <ul class="lc-list lc-list-check">
            <li>Aggregates: <code>COUNT, SUM, AVG, MIN, MAX</code></li>
            <li><code>GROUP BY</code> and <code>HAVING</code></li>
            <li><code>INNER JOIN</code>, <code>LEFT JOIN</code></li>
            <li>Subqueries and derived tables</li>
            <li>String and date functions</li>
            <li><code>CASE WHEN</code> expressions and <code>COALESCE</code></li>
            <li>Transactions: <code>BEGIN / COMMIT / ROLLBACK</code></li>
          </ul>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">🎉</span><p><strong>What's Next?</strong> Learn a specific database: <strong>PostgreSQL</strong> (most feature-rich, open source), <strong>MySQL</strong> (most popular web database), or <strong>SQLite</strong> (embedded, zero-config). Then explore ORMs like <strong>Active Record</strong> (Rails), <strong>SQLAlchemy</strong> (Python), or <strong>Hibernate</strong> (Java).</p></div>
      HTML
      starter_code: <<~'SQL'
        -- SQL Review — Complete Mini Project
        -- E-commerce Analytics Dashboard

        CREATE TABLE customers (
            id     INTEGER PRIMARY KEY,
            name   TEXT NOT NULL,
            city   TEXT,
            email  TEXT UNIQUE
        );

        CREATE TABLE products (
            id       INTEGER PRIMARY KEY,
            name     TEXT NOT NULL,
            category TEXT,
            price    REAL NOT NULL CHECK (price > 0)
        );

        CREATE TABLE orders (
            id          INTEGER PRIMARY KEY,
            customer_id INTEGER NOT NULL,
            product_id  INTEGER NOT NULL,
            quantity    INTEGER DEFAULT 1,
            order_date  TEXT
        );

        -- Seed data
        INSERT INTO customers VALUES
            (1,'Alice','Mumbai','alice@email.com'),
            (2,'Bob','Delhi','bob@email.com'),
            (3,'Carol','Bangalore','carol@email.com'),
            (4,'Dave','Chennai','dave@email.com'),
            (5,'Eve','Pune','eve@email.com');

        INSERT INTO products VALUES
            (1,'Laptop','Electronics',75000),
            (2,'Phone','Electronics',25000),
            (3,'Desk','Furniture',12000),
            (4,'Chair','Furniture',8000),
            (5,'Monitor','Electronics',22000),
            (6,'Keyboard','Electronics',3000);

        INSERT INTO orders VALUES
            (1,1,1,1,'2024-01-15'),(2,1,2,2,'2024-01-20'),
            (3,2,3,1,'2024-02-01'),(4,3,1,1,'2024-02-10'),
            (5,1,5,1,'2024-02-15'),(6,4,2,3,'2024-03-01'),
            (7,3,4,2,'2024-03-05'),(8,2,6,5,'2024-03-10'),
            (9,5,1,1,'2024-03-15'),(10,1,3,1,'2024-03-20');

        -- 1. Total revenue per customer
        SELECT c.name, COUNT(o.id) AS orders,
               SUM(p.price * o.quantity) AS total_spent
        FROM customers c
        LEFT JOIN orders o  ON c.id = o.customer_id
        LEFT JOIN products p ON o.product_id = p.id
        GROUP BY c.name
        ORDER BY total_spent DESC;

        -- 2. Revenue by category
        SELECT p.category,
               COUNT(*) AS items_sold,
               SUM(p.price * o.quantity) AS revenue
        FROM orders o
        JOIN products p ON o.product_id = p.id
        GROUP BY p.category
        ORDER BY revenue DESC;

        -- 3. Best selling products
        SELECT p.name, SUM(o.quantity) AS units_sold,
               SUM(p.price * o.quantity) AS revenue
        FROM orders o
        JOIN products p ON o.product_id = p.id
        GROUP BY p.name
        ORDER BY units_sold DESC
        LIMIT 3;

        -- 4. Monthly revenue trend
        SELECT SUBSTR(order_date,1,7) AS month,
               COUNT(*) AS orders,
               SUM(p.price * o.quantity) AS revenue
        FROM orders o
        JOIN products p ON o.product_id = p.id
        GROUP BY month
        ORDER BY month;
      SQL
    }
  }.freeze
end

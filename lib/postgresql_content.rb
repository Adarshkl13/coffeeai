module PostgresqlContent
  LESSONS = {
    1 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-postgresql">PostgreSQL</div>
          <h1 class="lc-title">Introduction to PostgreSQL</h1>
        </div>
        <p class="lc-lead">PostgreSQL is the world's most advanced open-source relational database. It extends SQL with powerful features like complex types, full-text search, JSON support, and robust concurrency — making it the go-to choice for modern applications.</p>

        <div class="lc-card">
          <h3>What Makes PostgreSQL Special?</h3>
          <ul class="lc-list">
            <li>ACID-compliant with multi-version concurrency control (MVCC)</li>
            <li>Supports JSON, arrays, hstore, and custom data types</li>
            <li>Advanced indexing: B-tree, Hash, GIN, GiST, BRIN</li>
            <li>Powerful window functions and CTEs</li>
            <li>Runs on port <strong>5432</strong> by default</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>PostgreSQL vs MySQL</h3>
          <table class="lc-table">
            <thead><tr><th>Feature</th><th>PostgreSQL</th><th>MySQL</th></tr></thead>
            <tbody>
              <tr><td>JSON support</td><td>JSONB (binary, indexed)</td><td>JSON (text)</td></tr>
              <tr><td>Full outer join</td><td>Yes</td><td>No (emulated)</td></tr>
              <tr><td>Arrays</td><td>Native array type</td><td>No</td></tr>
              <tr><td>Default port</td><td>5432</td><td>3306</td></tr>
            </tbody>
          </table>
        </div>

        <div class="lc-card">
          <h3>Your First PostgreSQL Queries</h3>
          <div class="lc-code">SELECT version();<br>SELECT current_database();<br>SELECT current_user;<br>SELECT NOW();</div>
        </div>

        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> PostgreSQL uses <code>psql</code> as its command-line client. In this simulator you can write standard SQL plus PostgreSQL-specific syntax.
        </div>
      HTML
      starter_code: <<~'SQL'
        -- Welcome to PostgreSQL!
        -- Let's create our first table and query it.

        CREATE TABLE students (
          id SERIAL PRIMARY KEY,
          name VARCHAR(100) NOT NULL,
          grade INTEGER,
          enrolled_at DATE DEFAULT CURRENT_DATE
        );

        INSERT INTO students (name, grade) VALUES
          ('Alice', 95),
          ('Bob', 82),
          ('Carol', 91);

        SELECT * FROM students;
      SQL
    },

    2 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-postgresql">PostgreSQL</div>
          <h1 class="lc-title">PostgreSQL Data Types</h1>
        </div>
        <p class="lc-lead">PostgreSQL has a richer type system than most databases. Beyond standard types, it includes arrays, ranges, network addresses, geometric types, and more.</p>

        <div class="lc-card">
          <h3>Numeric Types</h3>
          <table class="lc-table">
            <thead><tr><th>Type</th><th>Description</th></tr></thead>
            <tbody>
              <tr><td>SMALLINT</td><td>2-byte integer (-32768 to 32767)</td></tr>
              <tr><td>INTEGER / INT</td><td>4-byte integer</td></tr>
              <tr><td>BIGINT</td><td>8-byte integer</td></tr>
              <tr><td>SERIAL</td><td>Auto-incrementing 4-byte integer</td></tr>
              <tr><td>BIGSERIAL</td><td>Auto-incrementing 8-byte integer</td></tr>
              <tr><td>NUMERIC(p,s)</td><td>Exact decimal (for money)</td></tr>
              <tr><td>REAL / FLOAT4</td><td>4-byte floating point</td></tr>
              <tr><td>DOUBLE PRECISION</td><td>8-byte floating point</td></tr>
            </tbody>
          </table>
        </div>

        <div class="lc-card">
          <h3>String and Special Types</h3>
          <table class="lc-table">
            <thead><tr><th>Type</th><th>Description</th></tr></thead>
            <tbody>
              <tr><td>VARCHAR(n)</td><td>Variable-length string up to n chars</td></tr>
              <tr><td>CHAR(n)</td><td>Fixed-length string</td></tr>
              <tr><td>TEXT</td><td>Unlimited-length string</td></tr>
              <tr><td>BOOLEAN</td><td>true/false/null</td></tr>
              <tr><td>DATE</td><td>Calendar date (YYYY-MM-DD)</td></tr>
              <tr><td>TIMESTAMP</td><td>Date and time without timezone</td></tr>
              <tr><td>TIMESTAMPTZ</td><td>Date and time with timezone</td></tr>
              <tr><td>UUID</td><td>Universally unique identifier</td></tr>
            </tbody>
          </table>
        </div>

        <div class="lc-card">
          <h3>Type Casting with ::</h3>
          <p>PostgreSQL uses <code>::</code> for type casting:</p>
          <div class="lc-code">SELECT '42'::INTEGER;<br>SELECT '2024-01-15'::DATE;<br>SELECT 3.14::NUMERIC(5,2);<br>SELECT 'true'::BOOLEAN;</div>
        </div>

        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> SERIAL is shorthand for creating a sequence and setting a default. In PostgreSQL 10+, you can also use <code>GENERATED ALWAYS AS IDENTITY</code>.
        </div>
      HTML
      starter_code: <<~'SQL'
        -- PostgreSQL Data Types Demo

        CREATE TABLE products (
          id         SERIAL PRIMARY KEY,
          name       VARCHAR(100) NOT NULL,
          price      NUMERIC(10,2),
          in_stock   BOOLEAN DEFAULT true,
          created_at TIMESTAMP DEFAULT NOW()
        );

        INSERT INTO products (name, price, in_stock) VALUES
          ('Widget', 9.99, true),
          ('Gadget', 24.99, false),
          ('Doohickey', 4.50, true);

        -- Type casting examples
        SELECT name, price,
               price::INTEGER AS rounded_price,
               in_stock::TEXT AS stock_text
        FROM products;
      SQL
    },

    3 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-postgresql">PostgreSQL</div>
          <h1 class="lc-title">SERIAL, PRIMARY KEY, and IDENTITY</h1>
        </div>
        <p class="lc-lead">PostgreSQL offers several ways to auto-generate primary keys. Understanding SERIAL, BIGSERIAL, and the modern IDENTITY column helps you choose the right approach.</p>

        <div class="lc-card">
          <h3>SERIAL — Classic Auto-Increment</h3>
          <p>SERIAL creates an integer column with an auto-incrementing sequence:</p>
          <div class="lc-code">CREATE TABLE users (<br>  id SERIAL PRIMARY KEY,<br>  username TEXT NOT NULL<br>);</div>
          <p>This is equivalent to:</p>
          <div class="lc-code">CREATE SEQUENCE users_id_seq;<br>CREATE TABLE users (<br>  id INTEGER DEFAULT nextval('users_id_seq') PRIMARY KEY,<br>  username TEXT NOT NULL<br>);</div>
        </div>

        <div class="lc-card">
          <h3>BIGSERIAL</h3>
          <p>For large tables expecting billions of rows, use <code>BIGSERIAL</code>:</p>
          <div class="lc-code">CREATE TABLE events (<br>  id BIGSERIAL PRIMARY KEY,<br>  event_name TEXT<br>);</div>
        </div>

        <div class="lc-card">
          <h3>GENERATED ALWAYS AS IDENTITY (PostgreSQL 10+)</h3>
          <p>The SQL-standard way to define identity columns:</p>
          <div class="lc-code">CREATE TABLE orders (<br>  id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,<br>  amount NUMERIC<br>);</div>
          <p>With <code>GENERATED ALWAYS</code>, PostgreSQL won't let you override the value without <code>OVERRIDING SYSTEM VALUE</code>.</p>
        </div>

        <div class="lc-card">
          <h3>Composite Primary Keys</h3>
          <div class="lc-code">CREATE TABLE order_items (<br>  order_id INTEGER,<br>  product_id INTEGER,<br>  quantity INTEGER,<br>  PRIMARY KEY (order_id, product_id)<br>);</div>
        </div>

        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> For new projects, prefer <code>GENERATED ALWAYS AS IDENTITY</code> over SERIAL as it follows the SQL standard and is more predictable.
        </div>
      HTML
      starter_code: <<~'SQL'
        -- SERIAL and auto-increment demo

        CREATE TABLE customers (
          id       SERIAL PRIMARY KEY,
          name     VARCHAR(100) NOT NULL,
          email    VARCHAR(150) UNIQUE NOT NULL
        );

        INSERT INTO customers (name, email) VALUES
          ('Alice Smith', 'alice@example.com'),
          ('Bob Jones', 'bob@example.com'),
          ('Carol White', 'carol@example.com');

        -- See the auto-generated IDs
        SELECT id, name, email FROM customers;

        -- Composite key example
        CREATE TABLE enrollments (
          customer_id INTEGER REFERENCES customers(id),
          course_code VARCHAR(10),
          enrolled_on DATE DEFAULT CURRENT_DATE,
          PRIMARY KEY (customer_id, course_code)
        );

        INSERT INTO enrollments (customer_id, course_code) VALUES (1, 'PG101'), (1, 'PG201'), (2, 'PG101');
        SELECT * FROM enrollments;
      SQL
    },

    4 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-postgresql">PostgreSQL</div>
          <h1 class="lc-title">String Functions and Operators</h1>
        </div>
        <p class="lc-lead">PostgreSQL provides extensive string manipulation functions. The <code>||</code> operator concatenates strings, and functions like <code>INITCAP</code>, <code>REGEXP_REPLACE</code>, and <code>FORMAT</code> offer powerful text processing.</p>

        <div class="lc-card">
          <h3>The || Concatenation Operator</h3>
          <p>PostgreSQL uses <code>||</code> to join strings (unlike MySQL's CONCAT):</p>
          <div class="lc-code">SELECT 'Hello' || ' ' || 'World';  -- Hello World<br>SELECT first_name || ' ' || last_name AS full_name FROM employees;</div>
        </div>

        <div class="lc-card">
          <h3>Key String Functions</h3>
          <table class="lc-table">
            <thead><tr><th>Function</th><th>Example</th><th>Result</th></tr></thead>
            <tbody>
              <tr><td>LENGTH(s)</td><td>LENGTH('hello')</td><td>5</td></tr>
              <tr><td>UPPER(s)</td><td>UPPER('hello')</td><td>HELLO</td></tr>
              <tr><td>LOWER(s)</td><td>LOWER('HELLO')</td><td>hello</td></tr>
              <tr><td>INITCAP(s)</td><td>INITCAP('hello world')</td><td>Hello World</td></tr>
              <tr><td>TRIM(s)</td><td>TRIM('  hi  ')</td><td>hi</td></tr>
              <tr><td>LTRIM/RTRIM</td><td>LTRIM('  hi')</td><td>hi</td></tr>
              <tr><td>SUBSTRING(s,p,n)</td><td>SUBSTRING('hello',2,3)</td><td>ell</td></tr>
              <tr><td>REPLACE(s,f,t)</td><td>REPLACE('hello','l','r')</td><td>herro</td></tr>
              <tr><td>POSITION(s IN t)</td><td>POSITION('ell' IN 'hello')</td><td>2</td></tr>
              <tr><td>REPEAT(s,n)</td><td>REPEAT('ab',3)</td><td>ababab</td></tr>
              <tr><td>REVERSE(s)</td><td>REVERSE('hello')</td><td>olleh</td></tr>
            </tbody>
          </table>
        </div>

        <div class="lc-card">
          <h3>ILIKE — Case-Insensitive LIKE</h3>
          <p>PostgreSQL's ILIKE is a case-insensitive version of LIKE:</p>
          <div class="lc-code">SELECT * FROM products WHERE name ILIKE '%widget%';<br>-- Matches Widget, WIDGET, widget, wIdGeT</div>
        </div>

        <div class="lc-card">
          <h3>FORMAT Function</h3>
          <div class="lc-code">SELECT FORMAT('Hello, %s! You have %s messages.', name, count);</div>
        </div>

        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Use ILIKE for user-facing search features — it's much more user-friendly than forcing exact case matches.
        </div>
      HTML
      starter_code: <<~'SQL'
        -- String functions in PostgreSQL

        CREATE TABLE employees (
          id         SERIAL PRIMARY KEY,
          first_name VARCHAR(50),
          last_name  VARCHAR(50),
          email      VARCHAR(100),
          department VARCHAR(50)
        );

        INSERT INTO employees (first_name, last_name, email, department) VALUES
          ('alice', 'smith', 'ALICE@EXAMPLE.COM', 'Engineering'),
          ('bob', 'jones', 'bob@example.com', 'Marketing'),
          ('carol', 'white', 'carol@example.com', 'Engineering'),
          ('dave', 'brown', 'DAVE@EXAMPLE.COM', 'HR');

        -- Concatenation and string functions
        SELECT
          INITCAP(first_name) || ' ' || INITCAP(last_name) AS full_name,
          LOWER(email) AS normalized_email,
          LENGTH(first_name) AS name_length,
          REVERSE(first_name) AS reversed
        FROM employees;

        -- ILIKE case-insensitive search
        SELECT first_name, email FROM employees
        WHERE email ILIKE '%@example.com%';
      SQL
    },

    5 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-postgresql">PostgreSQL</div>
          <h1 class="lc-title">Date and Time Functions</h1>
        </div>
        <p class="lc-lead">PostgreSQL has outstanding date and time support including time zones, intervals, EXTRACT, DATE_TRUNC, and TO_CHAR for flexible date formatting.</p>

        <div class="lc-card">
          <h3>Current Date/Time Functions</h3>
          <table class="lc-table">
            <thead><tr><th>Function</th><th>Returns</th></tr></thead>
            <tbody>
              <tr><td>NOW()</td><td>Current timestamp with timezone</td></tr>
              <tr><td>CURRENT_DATE</td><td>Today's date</td></tr>
              <tr><td>CURRENT_TIME</td><td>Current time</td></tr>
              <tr><td>CURRENT_TIMESTAMP</td><td>Same as NOW()</td></tr>
              <tr><td>LOCALTIME</td><td>Current time without timezone</td></tr>
              <tr><td>LOCALTIMESTAMP</td><td>Current timestamp without timezone</td></tr>
            </tbody>
          </table>
        </div>

        <div class="lc-card">
          <h3>EXTRACT — Get Date Parts</h3>
          <div class="lc-code">SELECT EXTRACT(YEAR  FROM '2024-06-15'::DATE);  -- 2024<br>SELECT EXTRACT(MONTH FROM '2024-06-15'::DATE);  -- 6<br>SELECT EXTRACT(DAY   FROM '2024-06-15'::DATE);  -- 15<br>SELECT EXTRACT(DOW   FROM '2024-06-15'::DATE);  -- 6 (Saturday)<br>SELECT EXTRACT(WEEK  FROM '2024-06-15'::DATE);  -- 24</div>
        </div>

        <div class="lc-card">
          <h3>DATE_TRUNC — Truncate to Precision</h3>
          <div class="lc-code">SELECT DATE_TRUNC('month', '2024-06-15'::DATE);  -- 2024-06-01<br>SELECT DATE_TRUNC('year',  '2024-06-15'::DATE);  -- 2024-01-01<br>SELECT DATE_TRUNC('week',  '2024-06-15'::DATE);  -- 2024-06-10</div>
        </div>

        <div class="lc-card">
          <h3>Date Arithmetic with INTERVAL</h3>
          <div class="lc-code">SELECT CURRENT_DATE + INTERVAL '30 days';<br>SELECT CURRENT_DATE - INTERVAL '1 year';<br>SELECT '2024-12-31'::DATE - '2024-01-01'::DATE;  -- 365 (days)</div>
        </div>

        <div class="lc-card">
          <h3>TO_CHAR — Format Dates as Strings</h3>
          <div class="lc-code">SELECT TO_CHAR(NOW(), 'YYYY-MM-DD');<br>SELECT TO_CHAR(NOW(), 'Month DD, YYYY');<br>SELECT TO_CHAR(NOW(), 'Day, DD Mon YYYY HH24:MI');</div>
        </div>

        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> DATE_TRUNC is incredibly useful for grouping time series data by day, week, or month in reports.
        </div>
      HTML
      starter_code: <<~'SQL'
        -- Date and time functions

        CREATE TABLE orders (
          id         SERIAL PRIMARY KEY,
          product    VARCHAR(100),
          amount     NUMERIC(10,2),
          ordered_at DATE
        );

        INSERT INTO orders (product, amount, ordered_at) VALUES
          ('Widget', 29.99, '2024-01-15'),
          ('Gadget', 49.99, '2024-03-22'),
          ('Widget', 19.99, '2024-03-30'),
          ('Doohickey', 9.99, '2024-06-10'),
          ('Gadget', 49.99, '2024-06-28');

        -- Extract date parts
        SELECT product, ordered_at,
               EXTRACT(YEAR  FROM ordered_at) AS yr,
               EXTRACT(MONTH FROM ordered_at) AS mo,
               EXTRACT(DOW   FROM ordered_at) AS day_of_week
        FROM orders;

        -- Group by month using DATE_TRUNC
        SELECT DATE_TRUNC('month', ordered_at) AS month,
               COUNT(*) AS num_orders,
               SUM(amount) AS total_revenue
        FROM orders
        GROUP BY DATE_TRUNC('month', ordered_at)
        ORDER BY month;
      SQL
    },

    6 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-postgresql">PostgreSQL</div>
          <h1 class="lc-title">Aggregate Functions and string_agg</h1>
        </div>
        <p class="lc-lead">PostgreSQL supports all standard aggregate functions plus powerful extras like <code>string_agg</code>, <code>array_agg</code>, and statistical aggregates for data analysis.</p>

        <div class="lc-card">
          <h3>Standard Aggregates</h3>
          <table class="lc-table">
            <thead><tr><th>Function</th><th>Description</th></tr></thead>
            <tbody>
              <tr><td>COUNT(*)</td><td>Count all rows</td></tr>
              <tr><td>COUNT(col)</td><td>Count non-NULL values</td></tr>
              <tr><td>SUM(col)</td><td>Sum of values</td></tr>
              <tr><td>AVG(col)</td><td>Average value</td></tr>
              <tr><td>MIN(col)</td><td>Minimum value</td></tr>
              <tr><td>MAX(col)</td><td>Maximum value</td></tr>
            </tbody>
          </table>
        </div>

        <div class="lc-card">
          <h3>string_agg — Like GROUP_CONCAT</h3>
          <p><code>string_agg(expression, delimiter)</code> concatenates strings within a group:</p>
          <div class="lc-code">SELECT department,<br>       string_agg(name, ', ' ORDER BY name) AS members<br>FROM employees<br>GROUP BY department;</div>
          <p>Result: <code>Engineering | Alice, Carol</code></p>
        </div>

        <div class="lc-card">
          <h3>array_agg — Aggregate into Array</h3>
          <p><code>array_agg</code> collects values into a PostgreSQL array:</p>
          <div class="lc-code">SELECT department,<br>       array_agg(name ORDER BY name) AS member_array<br>FROM employees<br>GROUP BY department;<br>-- Result: {Alice,Carol}</div>
        </div>

        <div class="lc-card">
          <h3>Statistical Aggregates</h3>
          <div class="lc-code">SELECT STDDEV(salary)    AS std_deviation,<br>       VARIANCE(salary)  AS variance,<br>       PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY salary) AS median<br>FROM employees;</div>
        </div>

        <div class="lc-card">
          <h3>FILTER Clause</h3>
          <p>Filter rows within an aggregate (PostgreSQL 9.4+):</p>
          <div class="lc-code">SELECT<br>  COUNT(*) FILTER (WHERE salary > 50000) AS high_earners,<br>  COUNT(*) FILTER (WHERE salary <= 50000) AS low_earners<br>FROM employees;</div>
        </div>

        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> string_agg is PostgreSQL's equivalent to MySQL's GROUP_CONCAT. The ORDER BY inside the aggregate controls the order of concatenation.
        </div>
      HTML
      starter_code: <<~'SQL'
        -- Aggregate functions and string_agg

        CREATE TABLE employees (
          id         SERIAL PRIMARY KEY,
          name       VARCHAR(100),
          department VARCHAR(50),
          salary     NUMERIC(10,2)
        );

        INSERT INTO employees (name, department, salary) VALUES
          ('Alice', 'Engineering', 85000),
          ('Bob', 'Marketing', 62000),
          ('Carol', 'Engineering', 92000),
          ('Dave', 'HR', 55000),
          ('Eve', 'Marketing', 71000),
          ('Frank', 'Engineering', 78000);

        -- Standard aggregates
        SELECT department,
               COUNT(*) AS headcount,
               ROUND(AVG(salary), 2) AS avg_salary,
               MIN(salary) AS min_sal,
               MAX(salary) AS max_sal
        FROM employees
        GROUP BY department
        ORDER BY avg_salary DESC;

        -- string_agg: list team members
        SELECT department,
               string_agg(name, ', ' ORDER BY name) AS team_members
        FROM employees
        GROUP BY department;
      SQL
    },

    7 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-postgresql">PostgreSQL</div>
          <h1 class="lc-title">JOINs Including FULL OUTER JOIN</h1>
        </div>
        <p class="lc-lead">PostgreSQL supports all JOIN types including FULL OUTER JOIN — which MySQL lacks natively. Understanding all join types is essential for complex data retrieval.</p>

        <div class="lc-card">
          <h3>JOIN Types</h3>
          <table class="lc-table">
            <thead><tr><th>JOIN Type</th><th>Returns</th></tr></thead>
            <tbody>
              <tr><td>INNER JOIN</td><td>Only rows with matches in BOTH tables</td></tr>
              <tr><td>LEFT JOIN</td><td>All left rows + matched right rows (NULL for no match)</td></tr>
              <tr><td>RIGHT JOIN</td><td>All right rows + matched left rows (NULL for no match)</td></tr>
              <tr><td>FULL OUTER JOIN</td><td>All rows from both tables (NULL where no match)</td></tr>
              <tr><td>CROSS JOIN</td><td>Every combination of rows (Cartesian product)</td></tr>
              <tr><td>SELF JOIN</td><td>Table joined to itself</td></tr>
            </tbody>
          </table>
        </div>

        <div class="lc-card">
          <h3>FULL OUTER JOIN</h3>
          <p>Returns all rows from both tables. Rows without a match get NULLs on the other side:</p>
          <div class="lc-code">SELECT e.name, d.department_name<br>FROM employees e<br>FULL OUTER JOIN departments d ON e.dept_id = d.id;</div>
          <p>This returns employees without departments AND departments without employees.</p>
        </div>

        <div class="lc-card">
          <h3>DISTINCT ON</h3>
          <p>A PostgreSQL-specific feature to get one row per group:</p>
          <div class="lc-code">SELECT DISTINCT ON (department_id)<br>  department_id, name, salary<br>FROM employees<br>ORDER BY department_id, salary DESC;<br>-- Returns the highest-paid employee per department</div>
        </div>

        <div class="lc-card">
          <h3>NATURAL JOIN</h3>
          <div class="lc-code">SELECT * FROM employees NATURAL JOIN departments;<br>-- Automatically joins on columns with the same name</div>
        </div>

        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> DISTINCT ON is a PostgreSQL gem — it's much more efficient than using a subquery or window function to get "first per group" results.
        </div>
      HTML
      starter_code: <<~'SQL'
        -- PostgreSQL JOINs

        CREATE TABLE departments (
          id   SERIAL PRIMARY KEY,
          name VARCHAR(50)
        );

        CREATE TABLE staff (
          id      SERIAL PRIMARY KEY,
          name    VARCHAR(100),
          dept_id INTEGER REFERENCES departments(id),
          salary  NUMERIC(10,2)
        );

        INSERT INTO departments (name) VALUES ('Engineering'), ('Marketing'), ('HR'), ('Finance');

        INSERT INTO staff (name, dept_id, salary) VALUES
          ('Alice', 1, 90000),
          ('Bob', 2, 65000),
          ('Carol', 1, 85000),
          ('Dave', 3, 55000),
          ('Eve', NULL, 72000);  -- No department (contractor)

        -- FULL OUTER JOIN: see all staff AND all departments
        SELECT s.name AS staff_name, d.name AS department
        FROM staff s
        FULL OUTER JOIN departments d ON s.dept_id = d.id
        ORDER BY department;

        -- DISTINCT ON: highest paid per department
        SELECT DISTINCT ON (dept_id)
          dept_id, name, salary
        FROM staff
        WHERE dept_id IS NOT NULL
        ORDER BY dept_id, salary DESC;
      SQL
    },

    8 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-postgresql">PostgreSQL</div>
          <h1 class="lc-title">Common Table Expressions (CTEs)</h1>
        </div>
        <p class="lc-lead">Common Table Expressions (CTEs) use the <code>WITH</code> clause to define temporary named result sets. They make complex queries readable and enable recursive queries.</p>

        <div class="lc-card">
          <h3>Basic CTE Syntax</h3>
          <div class="lc-code">WITH cte_name AS (<br>  SELECT ...<br>)<br>SELECT * FROM cte_name;</div>
          <p>Think of a CTE as a named subquery that you can reference multiple times in the main query.</p>
        </div>

        <div class="lc-card">
          <h3>Multiple CTEs</h3>
          <div class="lc-code">WITH<br>  high_earners AS (<br>    SELECT * FROM employees WHERE salary > 80000<br>  ),<br>  engineering AS (<br>    SELECT * FROM high_earners WHERE department = 'Engineering'<br>  )<br>SELECT * FROM engineering;</div>
        </div>

        <div class="lc-card">
          <h3>CTEs vs Subqueries</h3>
          <table class="lc-table">
            <thead><tr><th>Feature</th><th>CTE</th><th>Subquery</th></tr></thead>
            <tbody>
              <tr><td>Readability</td><td>High — named and separated</td><td>Lower — nested inline</td></tr>
              <tr><td>Reusability</td><td>Can reference multiple times</td><td>Must repeat each time</td></tr>
              <tr><td>Recursion</td><td>Yes (WITH RECURSIVE)</td><td>No</td></tr>
              <tr><td>Performance</td><td>Similar to subqueries in PostgreSQL 12+</td><td>Optimizer has more freedom</td></tr>
            </tbody>
          </table>
        </div>

        <div class="lc-card">
          <h3>Recursive CTEs</h3>
          <p>Recursive CTEs can traverse hierarchical data like org charts or trees:</p>
          <div class="lc-code">WITH RECURSIVE subordinates AS (<br>  SELECT id, name, manager_id FROM employees WHERE manager_id IS NULL<br>  UNION ALL<br>  SELECT e.id, e.name, e.manager_id<br>  FROM employees e<br>  INNER JOIN subordinates s ON e.manager_id = s.id<br>)<br>SELECT * FROM subordinates;</div>
        </div>

        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> CTEs dramatically improve SQL readability. When your query has 3+ levels of nesting, CTEs are almost always the right choice.
        </div>
      HTML
      starter_code: <<~'SQL'
        -- Common Table Expressions (CTEs)

        CREATE TABLE sales (
          id         SERIAL PRIMARY KEY,
          rep        VARCHAR(50),
          region     VARCHAR(50),
          amount     NUMERIC(10,2),
          sale_date  DATE
        );

        INSERT INTO sales (rep, region, amount, sale_date) VALUES
          ('Alice', 'North', 5200, '2024-01-10'),
          ('Bob', 'South', 3100, '2024-01-15'),
          ('Alice', 'North', 4800, '2024-02-05'),
          ('Carol', 'East', 6700, '2024-02-12'),
          ('Bob', 'South', 4200, '2024-03-01'),
          ('Carol', 'East', 5500, '2024-03-20');

        -- CTE: total sales per rep, then filter top performers
        WITH rep_totals AS (
          SELECT rep,
                 SUM(amount)  AS total_sales,
                 COUNT(*)     AS num_deals
          FROM sales
          GROUP BY rep
        ),
        top_performers AS (
          SELECT * FROM rep_totals WHERE total_sales > 9000
        )
        SELECT rep, total_sales, num_deals,
               ROUND(total_sales / num_deals, 2) AS avg_deal
        FROM top_performers
        ORDER BY total_sales DESC;
      SQL
    },

    9 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-postgresql">PostgreSQL</div>
          <h1 class="lc-title">Window Functions</h1>
        </div>
        <p class="lc-lead">Window functions perform calculations across a set of rows related to the current row — without collapsing rows like GROUP BY. They're essential for ranking, running totals, and moving averages.</p>

        <div class="lc-card">
          <h3>Window Function Syntax</h3>
          <div class="lc-code">SELECT<br>  name, salary,<br>  function_name() OVER (PARTITION BY dept ORDER BY salary DESC)<br>FROM employees;</div>
          <ul class="lc-list">
            <li><code>OVER</code> — defines the window (set of rows)</li>
            <li><code>PARTITION BY</code> — divides rows into groups (like GROUP BY but keeps all rows)</li>
            <li><code>ORDER BY</code> inside OVER — determines the row order within each partition</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Ranking Functions</h3>
          <table class="lc-table">
            <thead><tr><th>Function</th><th>Description</th></tr></thead>
            <tbody>
              <tr><td>ROW_NUMBER()</td><td>Unique sequential number (no ties)</td></tr>
              <tr><td>RANK()</td><td>Rank with gaps (1,1,3 for ties)</td></tr>
              <tr><td>DENSE_RANK()</td><td>Rank without gaps (1,1,2 for ties)</td></tr>
              <tr><td>NTILE(n)</td><td>Divides rows into n equal buckets</td></tr>
              <tr><td>PERCENT_RANK()</td><td>Relative rank as 0.0 to 1.0</td></tr>
            </tbody>
          </table>
        </div>

        <div class="lc-card">
          <h3>Value Functions</h3>
          <table class="lc-table">
            <thead><tr><th>Function</th><th>Description</th></tr></thead>
            <tbody>
              <tr><td>LAG(col, n)</td><td>Value from n rows before current</td></tr>
              <tr><td>LEAD(col, n)</td><td>Value from n rows after current</td></tr>
              <tr><td>FIRST_VALUE(col)</td><td>First value in the window</td></tr>
              <tr><td>LAST_VALUE(col)</td><td>Last value in the window</td></tr>
              <tr><td>NTH_VALUE(col, n)</td><td>nth value in the window</td></tr>
            </tbody>
          </table>
        </div>

        <div class="lc-card">
          <h3>Running Totals with SUM OVER</h3>
          <div class="lc-code">SELECT date, amount,<br>  SUM(amount) OVER (ORDER BY date) AS running_total<br>FROM sales;</div>
        </div>

        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> NULLS FIRST / NULLS LAST can be added to ORDER BY inside window functions to control where NULLs appear: <code>ORDER BY salary DESC NULLS LAST</code>
        </div>
      HTML
      starter_code: <<~'SQL'
        -- Window Functions

        CREATE TABLE employees (
          id         SERIAL PRIMARY KEY,
          name       VARCHAR(100),
          department VARCHAR(50),
          salary     NUMERIC(10,2)
        );

        INSERT INTO employees (name, department, salary) VALUES
          ('Alice', 'Engineering', 92000),
          ('Bob', 'Marketing', 65000),
          ('Carol', 'Engineering', 85000),
          ('Dave', 'HR', 55000),
          ('Eve', 'Marketing', 72000),
          ('Frank', 'Engineering', 78000),
          ('Grace', 'HR', 61000);

        -- Ranking within department
        SELECT name, department, salary,
               RANK()       OVER (PARTITION BY department ORDER BY salary DESC) AS rank_in_dept,
               DENSE_RANK() OVER (PARTITION BY department ORDER BY salary DESC) AS dense_rank,
               ROW_NUMBER() OVER (PARTITION BY department ORDER BY salary DESC) AS row_num
        FROM employees
        ORDER BY department, salary DESC;

        -- Running total
        SELECT name, salary,
               SUM(salary) OVER (ORDER BY salary) AS running_total
        FROM employees;
      SQL
    },

    10 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-postgresql">PostgreSQL</div>
          <h1 class="lc-title">Subqueries and the RETURNING Clause</h1>
        </div>
        <p class="lc-lead">PostgreSQL's RETURNING clause lets you get data back from INSERT, UPDATE, and DELETE statements — eliminating the need for a separate SELECT after modifications.</p>

        <div class="lc-card">
          <h3>RETURNING — Get Data from DML Statements</h3>
          <div class="lc-code">-- INSERT with RETURNING<br>INSERT INTO users (name, email)<br>VALUES ('Alice', 'alice@example.com')<br>RETURNING id, name;<br><br>-- UPDATE with RETURNING<br>UPDATE products SET price = price * 1.1<br>WHERE category = 'Electronics'<br>RETURNING id, name, price;<br><br>-- DELETE with RETURNING<br>DELETE FROM sessions WHERE expired = true<br>RETURNING user_id, expired_at;</div>
        </div>

        <div class="lc-card">
          <h3>Subquery Types</h3>
          <table class="lc-table">
            <thead><tr><th>Type</th><th>Example</th></tr></thead>
            <tbody>
              <tr><td>Scalar subquery</td><td><code>SELECT (SELECT MAX(salary) FROM emp)</code></td></tr>
              <tr><td>Row subquery</td><td><code>WHERE (id, dept) = (SELECT ...)</code></td></tr>
              <tr><td>Table subquery</td><td><code>FROM (SELECT ...) AS sub</code></td></tr>
              <tr><td>Correlated</td><td>References outer query column</td></tr>
            </tbody>
          </table>
        </div>

        <div class="lc-card">
          <h3>EXISTS and NOT EXISTS</h3>
          <div class="lc-code">-- Find customers with orders<br>SELECT c.name FROM customers c<br>WHERE EXISTS (<br>  SELECT 1 FROM orders o WHERE o.customer_id = c.id<br>);<br><br>-- Find customers without orders<br>SELECT c.name FROM customers c<br>WHERE NOT EXISTS (<br>  SELECT 1 FROM orders o WHERE o.customer_id = c.id<br>);</div>
        </div>

        <div class="lc-card">
          <h3>Lateral Subqueries</h3>
          <p>LATERAL allows a subquery to reference columns from preceding tables in FROM:</p>
          <div class="lc-code">SELECT c.name, recent.amount<br>FROM customers c,<br>LATERAL (<br>  SELECT amount FROM orders<br>  WHERE customer_id = c.id<br>  ORDER BY created_at DESC LIMIT 1<br>) AS recent;</div>
        </div>

        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> RETURNING is extremely useful in APIs — after inserting a record, you need the auto-generated ID without a round-trip SELECT.
        </div>
      HTML
      starter_code: <<~'SQL'
        -- RETURNING clause and subqueries

        CREATE TABLE inventory (
          id       SERIAL PRIMARY KEY,
          product  VARCHAR(100),
          quantity INTEGER,
          price    NUMERIC(10,2)
        );

        INSERT INTO inventory (product, quantity, price) VALUES
          ('Widget', 100, 9.99),
          ('Gadget', 50, 24.99),
          ('Doohickey', 200, 4.99);

        -- INSERT with RETURNING
        INSERT INTO inventory (product, quantity, price)
        VALUES ('Thingamajig', 75, 14.99)
        RETURNING id, product, price;

        -- UPDATE with RETURNING (10% price increase)
        UPDATE inventory
        SET price = ROUND(price * 1.10, 2)
        WHERE quantity > 60
        RETURNING product, price AS new_price;

        -- Subquery: find items above average price
        SELECT product, price
        FROM inventory
        WHERE price > (SELECT AVG(price) FROM inventory)
        ORDER BY price DESC;
      SQL
    },

    11 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-postgresql">PostgreSQL</div>
          <h1 class="lc-title">Views and Materialized Views</h1>
        </div>
        <p class="lc-lead">PostgreSQL supports both standard views (virtual tables) and materialized views (physically stored query results that can be indexed and refreshed).</p>

        <div class="lc-card">
          <h3>Regular Views</h3>
          <p>A view is a saved SELECT query. It's always up-to-date but re-executes the query each time:</p>
          <div class="lc-code">CREATE VIEW active_users AS<br>SELECT id, name, email<br>FROM users<br>WHERE active = true;<br><br>-- Use it like a table<br>SELECT * FROM active_users WHERE name ILIKE '%alice%';<br><br>-- Replace a view<br>CREATE OR REPLACE VIEW active_users AS<br>SELECT id, name, email, created_at<br>FROM users WHERE active = true;</div>
        </div>

        <div class="lc-card">
          <h3>Materialized Views</h3>
          <p>A materialized view stores the query results physically, making reads much faster:</p>
          <div class="lc-code">CREATE MATERIALIZED VIEW monthly_sales AS<br>SELECT DATE_TRUNC('month', sale_date) AS month,<br>       SUM(amount) AS total<br>FROM sales<br>GROUP BY DATE_TRUNC('month', sale_date);<br><br>-- Must refresh manually<br>REFRESH MATERIALIZED VIEW monthly_sales;<br><br>-- Refresh without locking (keeps old data readable)<br>REFRESH MATERIALIZED VIEW CONCURRENTLY monthly_sales;</div>
        </div>

        <div class="lc-card">
          <h3>Views vs Materialized Views</h3>
          <table class="lc-table">
            <thead><tr><th>Feature</th><th>View</th><th>Materialized View</th></tr></thead>
            <tbody>
              <tr><td>Data freshness</td><td>Always current</td><td>Stale until refreshed</td></tr>
              <tr><td>Read performance</td><td>Executes query each time</td><td>Pre-computed, very fast</td></tr>
              <tr><td>Can be indexed</td><td>No</td><td>Yes</td></tr>
              <tr><td>Storage</td><td>None (just a query)</td><td>Uses disk space</td></tr>
              <tr><td>Best for</td><td>Frequently changing data</td><td>Expensive queries on large data</td></tr>
            </tbody>
          </table>
        </div>

        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Materialized views are perfect for dashboards and reports that run heavy aggregations — refresh them nightly or on a schedule.
        </div>
      HTML
      starter_code: <<~'SQL'
        -- Views in PostgreSQL

        CREATE TABLE orders (
          id         SERIAL PRIMARY KEY,
          customer   VARCHAR(100),
          product    VARCHAR(100),
          amount     NUMERIC(10,2),
          status     VARCHAR(20) DEFAULT 'pending',
          order_date DATE DEFAULT CURRENT_DATE
        );

        INSERT INTO orders (customer, product, amount, status, order_date) VALUES
          ('Alice', 'Widget', 29.99, 'completed', '2024-01-10'),
          ('Bob', 'Gadget', 49.99, 'completed', '2024-02-15'),
          ('Alice', 'Doohickey', 9.99, 'pending', '2024-03-01'),
          ('Carol', 'Widget', 29.99, 'completed', '2024-03-10'),
          ('Bob', 'Widget', 29.99, 'cancelled', '2024-04-05');

        -- Create a view for completed orders
        CREATE VIEW completed_orders AS
        SELECT customer, product, amount, order_date
        FROM orders
        WHERE status = 'completed';

        -- Query the view
        SELECT * FROM completed_orders ORDER BY order_date;

        -- Aggregate via view
        SELECT customer, COUNT(*) AS purchases, SUM(amount) AS total_spent
        FROM completed_orders
        GROUP BY customer
        ORDER BY total_spent DESC;
      SQL
    },

    12 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-postgresql">PostgreSQL</div>
          <h1 class="lc-title">Indexes and EXPLAIN ANALYZE</h1>
        </div>
        <p class="lc-lead">PostgreSQL offers multiple index types. The EXPLAIN ANALYZE command reveals exactly how queries execute and which indexes are used — crucial for performance tuning.</p>

        <div class="lc-card">
          <h3>Index Types</h3>
          <table class="lc-table">
            <thead><tr><th>Type</th><th>Best For</th></tr></thead>
            <tbody>
              <tr><td>B-tree</td><td>Default — equality, ranges, ORDER BY, most cases</td></tr>
              <tr><td>Hash</td><td>Exact equality only (fast, smaller than B-tree)</td></tr>
              <tr><td>GIN</td><td>Full-text search, arrays, JSONB containment</td></tr>
              <tr><td>GiST</td><td>Geometric data, ranges, nearest-neighbor</td></tr>
              <tr><td>BRIN</td><td>Very large tables with physical correlation (e.g., time series)</td></tr>
              <tr><td>SP-GiST</td><td>Partitioned search trees (IP addresses, ranges)</td></tr>
            </tbody>
          </table>
        </div>

        <div class="lc-card">
          <h3>Creating Indexes</h3>
          <div class="lc-code">-- Standard B-tree<br>CREATE INDEX idx_users_email ON users(email);<br><br>-- Unique index<br>CREATE UNIQUE INDEX idx_users_email_unique ON users(email);<br><br>-- Multi-column<br>CREATE INDEX idx_orders_customer_date ON orders(customer_id, order_date DESC);<br><br>-- Partial index (only index active users)<br>CREATE INDEX idx_active_users ON users(email) WHERE active = true;<br><br>-- Expression index<br>CREATE INDEX idx_lower_email ON users(LOWER(email));<br><br>-- GIN index for arrays/JSONB<br>CREATE INDEX idx_tags ON articles USING GIN(tags);</div>
        </div>

        <div class="lc-card">
          <h3>EXPLAIN ANALYZE</h3>
          <div class="lc-code">EXPLAIN ANALYZE<br>SELECT * FROM orders WHERE customer_id = 5;<br><br>-- Key output terms:<br>-- Seq Scan — full table scan (no index used)<br>-- Index Scan — uses an index<br>-- Bitmap Index Scan — efficient for many matching rows<br>-- cost=X..Y — estimated cost (lower is better)<br>-- actual time=X..Y rows=N loops=N</div>
        </div>

        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Partial indexes are one of PostgreSQL's most underused features. If you always query <code>WHERE active = true</code>, index only those rows — much smaller and faster.
        </div>
      HTML
      starter_code: <<~'SQL'
        -- Indexes in PostgreSQL

        CREATE TABLE articles (
          id         SERIAL PRIMARY KEY,
          title      VARCHAR(200) NOT NULL,
          author     VARCHAR(100),
          category   VARCHAR(50),
          published  BOOLEAN DEFAULT false,
          views      INTEGER DEFAULT 0,
          created_at DATE DEFAULT CURRENT_DATE
        );

        INSERT INTO articles (title, author, category, published, views) VALUES
          ('Getting Started with PostgreSQL', 'Alice', 'Database', true, 1250),
          ('Advanced Window Functions', 'Bob', 'Database', true, 890),
          ('Python for Data Science', 'Carol', 'Python', true, 2100),
          ('Draft: PostgreSQL Tips', 'Alice', 'Database', false, 0),
          ('Machine Learning Basics', 'Dave', 'ML', true, 3400);

        -- Create indexes
        CREATE INDEX idx_articles_category ON articles(category);
        CREATE INDEX idx_articles_author ON articles(author);
        CREATE INDEX idx_published_articles ON articles(views DESC) WHERE published = true;

        -- Queries that benefit from indexes
        SELECT title, views FROM articles
        WHERE category = 'Database' AND published = true
        ORDER BY views DESC;

        SELECT author, COUNT(*) AS article_count, SUM(views) AS total_views
        FROM articles
        WHERE published = true
        GROUP BY author
        ORDER BY total_views DESC;
      SQL
    },

    13 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-postgresql">PostgreSQL</div>
          <h1 class="lc-title">Transactions and Savepoints</h1>
        </div>
        <p class="lc-lead">PostgreSQL has first-class transaction support. Every statement runs in a transaction by default, and you can use savepoints for fine-grained control within a transaction.</p>

        <div class="lc-card">
          <h3>Transaction Basics</h3>
          <div class="lc-code">BEGIN;<br>  UPDATE accounts SET balance = balance - 500 WHERE id = 1;<br>  UPDATE accounts SET balance = balance + 500 WHERE id = 2;<br>COMMIT;  -- Both updates saved<br><br>-- Or roll back on error<br>BEGIN;<br>  DELETE FROM orders WHERE id = 999;<br>ROLLBACK;  -- Nothing changed</div>
        </div>

        <div class="lc-card">
          <h3>Savepoints — Partial Rollback</h3>
          <p>Savepoints let you roll back to a point within a transaction without losing everything:</p>
          <div class="lc-code">BEGIN;<br>  INSERT INTO orders (product) VALUES ('Widget');<br>  SAVEPOINT sp1;<br>  INSERT INTO orders (product) VALUES ('Gadget');<br>  -- Oops, roll back only the Gadget insert<br>  ROLLBACK TO SAVEPOINT sp1;<br>  -- Widget insert is still there<br>  INSERT INTO orders (product) VALUES ('Doohickey');<br>COMMIT;  -- Widget + Doohickey saved</div>
        </div>

        <div class="lc-card">
          <h3>Isolation Levels</h3>
          <table class="lc-table">
            <thead><tr><th>Level</th><th>Prevents</th></tr></thead>
            <tbody>
              <tr><td>READ COMMITTED (default)</td><td>Dirty reads</td></tr>
              <tr><td>REPEATABLE READ</td><td>Dirty + non-repeatable reads</td></tr>
              <tr><td>SERIALIZABLE</td><td>All anomalies (strictest)</td></tr>
            </tbody>
          </table>
          <div class="lc-code">BEGIN TRANSACTION ISOLATION LEVEL SERIALIZABLE;<br>  -- Your queries here<br>COMMIT;</div>
        </div>

        <div class="lc-card">
          <h3>Transaction Status Functions</h3>
          <div class="lc-code">SELECT txid_current();    -- Current transaction ID<br>SELECT pg_current_xact_id();  -- PostgreSQL 13+</div>
        </div>

        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> PostgreSQL DDL (CREATE TABLE, DROP TABLE, ALTER TABLE) is transactional — you can roll back schema changes! This is unlike MySQL where DDL causes an implicit commit.
        </div>
      HTML
      starter_code: <<~'SQL'
        -- Transactions and Savepoints

        CREATE TABLE accounts (
          id      SERIAL PRIMARY KEY,
          name    VARCHAR(100),
          balance NUMERIC(12,2)
        );

        INSERT INTO accounts (name, balance) VALUES
          ('Alice', 5000.00),
          ('Bob', 3000.00),
          ('Carol', 1500.00);

        SELECT name, balance FROM accounts;

        -- Simulate a bank transfer with transaction
        BEGIN;
          UPDATE accounts SET balance = balance - 1000 WHERE name = 'Alice';
          UPDATE accounts SET balance = balance + 1000 WHERE name = 'Bob';
        COMMIT;

        SELECT name, balance FROM accounts;

        -- Test rollback
        BEGIN;
          UPDATE accounts SET balance = balance - 9999 WHERE name = 'Carol';
          -- This would overdraft! Roll it back
        ROLLBACK;

        SELECT name, balance FROM accounts;
      SQL
    },

    14 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-postgresql">PostgreSQL</div>
          <h1 class="lc-title">PostgreSQL JSON and JSONB</h1>
        </div>
        <p class="lc-lead">PostgreSQL's JSONB type stores JSON as binary — it's faster to query than JSON, supports indexing (including GIN indexes), and is the recommended type for JSON data.</p>

        <div class="lc-card">
          <h3>JSON vs JSONB</h3>
          <table class="lc-table">
            <thead><tr><th>Feature</th><th>JSON</th><th>JSONB</th></tr></thead>
            <tbody>
              <tr><td>Storage</td><td>Text (exact copy)</td><td>Binary (parsed)</td></tr>
              <tr><td>Indexing</td><td>No</td><td>Yes (GIN)</td></tr>
              <tr><td>Query speed</td><td>Slower (parses each time)</td><td>Faster</td></tr>
              <tr><td>Key order</td><td>Preserved</td><td>Not preserved</td></tr>
              <tr><td>Duplicate keys</td><td>Allowed</td><td>Last value wins</td></tr>
            </tbody>
          </table>
        </div>

        <div class="lc-card">
          <h3>JSONB Operators</h3>
          <table class="lc-table">
            <thead><tr><th>Operator</th><th>Description</th><th>Example</th></tr></thead>
            <tbody>
              <tr><td>-&gt;</td><td>Get value as JSON</td><td><code>data-&gt;'name'</code></td></tr>
              <tr><td>-&gt;&gt;</td><td>Get value as text</td><td><code>data-&gt;&gt;'name'</code></td></tr>
              <tr><td>#&gt;</td><td>Get nested value as JSON</td><td><code>data#&gt;'{addr,city}'</code></td></tr>
              <tr><td>#&gt;&gt;</td><td>Get nested value as text</td><td><code>data#&gt;&gt;'{addr,city}'</code></td></tr>
              <tr><td>@&gt;</td><td>Does left contain right?</td><td><code>data @&gt; '{"role":"admin"}'</code></td></tr>
              <tr><td>&lt;@</td><td>Is left contained by right?</td><td></td></tr>
              <tr><td>?</td><td>Does key exist?</td><td><code>data ? 'email'</code></td></tr>
            </tbody>
          </table>
        </div>

        <div class="lc-card">
          <h3>Querying JSONB</h3>
          <div class="lc-code">-- Get field as text<br>SELECT data->>'name' AS name FROM users;<br><br>-- Filter by JSON value<br>SELECT * FROM users WHERE data->>'role' = 'admin';<br><br>-- Containment check<br>SELECT * FROM users WHERE data @> '{"active": true}';</div>
        </div>

        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Always use JSONB over JSON unless you specifically need to preserve key order or duplicate keys. The performance difference is significant on large tables.
        </div>
      HTML
      starter_code: <<~'SQL'
        -- JSONB in PostgreSQL (simulated)

        CREATE TABLE users (
          id       SERIAL PRIMARY KEY,
          username VARCHAR(50),
          role     VARCHAR(20),
          metadata TEXT
        );

        -- We'll simulate JSONB with structured columns
        -- In real PostgreSQL you'd use JSONB columns
        INSERT INTO users (username, role, metadata) VALUES
          ('alice', 'admin', '{"active": true, "plan": "pro", "logins": 150}'),
          ('bob', 'user', '{"active": true, "plan": "free", "logins": 23}'),
          ('carol', 'user', '{"active": false, "plan": "pro", "logins": 5}'),
          ('dave', 'admin', '{"active": true, "plan": "enterprise", "logins": 890}');

        SELECT * FROM users;

        -- Filter by role
        SELECT username, role, metadata
        FROM users
        WHERE role = 'admin'
        ORDER BY username;

        -- Count by role
        SELECT role, COUNT(*) AS count
        FROM users
        GROUP BY role
        ORDER BY count DESC;
      SQL
    },

    15 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-postgresql">PostgreSQL</div>
          <h1 class="lc-title">Roles and User Management</h1>
        </div>
        <p class="lc-lead">PostgreSQL uses a unified "role" concept for both users and groups. Roles can own objects, have privileges, and be members of other roles — enabling flexible permission management.</p>

        <div class="lc-card">
          <h3>Creating Roles</h3>
          <div class="lc-code">-- Create a login role (user)<br>CREATE ROLE alice LOGIN PASSWORD 'secret123';<br><br>-- Create with privileges<br>CREATE ROLE alice LOGIN PASSWORD 'secret' CREATEDB CREATEROLE;<br><br>-- Create a group role (no login)<br>CREATE ROLE readonly_group;<br><br>-- Add user to a group<br>GRANT readonly_group TO alice;</div>
        </div>

        <div class="lc-card">
          <h3>Granting Privileges</h3>
          <div class="lc-code">-- Grant on a specific table<br>GRANT SELECT, INSERT ON orders TO alice;<br><br>-- Grant all on a table<br>GRANT ALL PRIVILEGES ON orders TO alice;<br><br>-- Grant on all tables in schema<br>GRANT SELECT ON ALL TABLES IN SCHEMA public TO readonly_group;<br><br>-- Revoke<br>REVOKE INSERT ON orders FROM alice;</div>
        </div>

        <div class="lc-card">
          <h3>Column-Level Privileges</h3>
          <p>PostgreSQL can restrict access to specific columns:</p>
          <div class="lc-code">GRANT SELECT (name, email) ON users TO reporting_role;<br>-- reporting_role can only SELECT name and email, not password_hash</div>
        </div>

        <div class="lc-card">
          <h3>Row-Level Security (RLS)</h3>
          <div class="lc-code">ALTER TABLE orders ENABLE ROW LEVEL SECURITY;<br><br>CREATE POLICY user_own_orders ON orders<br>  USING (user_id = current_user_id());<br>-- Each user can only see their own orders</div>
        </div>

        <div class="lc-card">
          <h3>Useful System Views</h3>
          <div class="lc-code">SELECT * FROM pg_roles;         -- All roles<br>SELECT * FROM information_schema.role_table_grants;  -- Privileges</div>
        </div>

        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Never run applications as the <code>postgres</code> superuser. Create a role with only the privileges your application needs — principle of least privilege.
        </div>
      HTML
      starter_code: <<~'SQL'
        -- Roles and permissions demo

        CREATE TABLE products (
          id       SERIAL PRIMARY KEY,
          name     VARCHAR(100),
          price    NUMERIC(10,2),
          cost     NUMERIC(10,2),
          category VARCHAR(50)
        );

        INSERT INTO products (name, price, cost, category) VALUES
          ('Widget', 29.99, 8.50, 'Hardware'),
          ('Gadget', 49.99, 15.00, 'Electronics'),
          ('Doohickey', 9.99, 2.25, 'Hardware'),
          ('Thingamajig', 79.99, 22.00, 'Electronics');

        -- Simulating what a read-only role would see:
        -- (Only price, not cost — cost is sensitive)
        SELECT name, price, category FROM products;

        -- Calculate margin (only admins would see this)
        SELECT name, price, cost,
               ROUND((price - cost) / price * 100, 1) AS margin_pct
        FROM products
        ORDER BY margin_pct DESC;
      SQL
    },

    16 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-postgresql">PostgreSQL</div>
          <h1 class="lc-title">Full-Text Search</h1>
        </div>
        <p class="lc-lead">PostgreSQL has built-in full-text search with support for stemming, ranking, and highlighting. It uses <code>tsvector</code> and <code>tsquery</code> types with the <code>@@</code> match operator.</p>

        <div class="lc-card">
          <h3>How Full-Text Search Works</h3>
          <ul class="lc-list">
            <li><code>tsvector</code> — a preprocessed document (tokenized + stemmed)</li>
            <li><code>tsquery</code> — a search query with AND (&amp;), OR (|), NOT (!)</li>
            <li><code>@@</code> — the match operator (does this document match this query?)</li>
            <li><code>to_tsvector(text)</code> — converts text to tsvector</li>
            <li><code>to_tsquery(text)</code> — converts a search string to tsquery</li>
            <li><code>plainto_tsquery(text)</code> — plain text version (spaces = AND)</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Basic Full-Text Search</h3>
          <div class="lc-code">-- Find articles containing 'postgresql' and 'index'<br>SELECT title FROM articles<br>WHERE to_tsvector('english', content) @@ to_tsquery('postgresql & index');<br><br>-- Plain text query<br>WHERE to_tsvector('english', content) @@ plainto_tsquery('postgresql index');</div>
        </div>

        <div class="lc-card">
          <h3>Ranking Results with ts_rank</h3>
          <div class="lc-code">SELECT title,<br>       ts_rank(to_tsvector('english', content),<br>               to_tsquery('postgresql'))<br>       AS relevance<br>FROM articles<br>WHERE to_tsvector('english', content) @@ to_tsquery('postgresql')<br>ORDER BY relevance DESC;</div>
        </div>

        <div class="lc-card">
          <h3>Adding a GIN Index for Speed</h3>
          <div class="lc-code">-- Add a generated column<br>ALTER TABLE articles ADD COLUMN search_vector tsvector<br>  GENERATED ALWAYS AS (to_tsvector('english', content)) STORED;<br><br>-- Index it<br>CREATE INDEX idx_articles_fts ON articles USING GIN(search_vector);</div>
        </div>

        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> PostgreSQL full-text search handles plurals, tenses, and stop words automatically. "running" matches "run", "runs", "ran" — perfect for site search.
        </div>
      HTML
      starter_code: <<~'SQL'
        -- Full-Text Search simulation

        CREATE TABLE articles (
          id      SERIAL PRIMARY KEY,
          title   VARCHAR(200),
          summary TEXT,
          tags    VARCHAR(200)
        );

        INSERT INTO articles (title, summary, tags) VALUES
          ('Getting Started with PostgreSQL', 'Learn database fundamentals, tables, queries, and indexes in PostgreSQL', 'postgresql database beginner'),
          ('Window Functions Explained', 'Master ROW_NUMBER, RANK, DENSE_RANK and running totals', 'postgresql advanced window functions'),
          ('Indexing Strategies for Performance', 'B-tree GIN GiST BRIN index types and when to use them', 'postgresql performance indexes'),
          ('Python and PostgreSQL Integration', 'Connect Python applications to PostgreSQL using psycopg2 and SQLAlchemy', 'python postgresql integration'),
          ('SQL for Data Analysis', 'Use SQL aggregates and window functions for data insights', 'sql analytics data');

        -- Simulate full-text search with ILIKE (in real PG use tsvector/tsquery)
        SELECT title, summary FROM articles
        WHERE summary ILIKE '%postgresql%' OR tags ILIKE '%postgresql%'
        ORDER BY title;

        -- Search by multiple terms
        SELECT title FROM articles
        WHERE (title ILIKE '%index%' OR summary ILIKE '%index%')
          AND (title ILIKE '%performance%' OR summary ILIKE '%performance%' OR tags ILIKE '%performance%');
      SQL
    },

    17 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-postgresql">PostgreSQL</div>
          <h1 class="lc-title">Stored Procedures and Functions</h1>
        </div>
        <p class="lc-lead">PostgreSQL supports functions in multiple languages (SQL, PL/pgSQL, Python, JavaScript) and stored procedures (PostgreSQL 11+) that can manage transactions.</p>

        <div class="lc-card">
          <h3>SQL Functions</h3>
          <div class="lc-code">CREATE OR REPLACE FUNCTION get_discount(price NUMERIC, pct NUMERIC)<br>RETURNS NUMERIC AS $$<br>  SELECT price - (price * pct / 100);<br>$$ LANGUAGE SQL;<br><br>SELECT get_discount(100.00, 20);  -- Returns 80.00</div>
        </div>

        <div class="lc-card">
          <h3>PL/pgSQL Functions</h3>
          <p>PL/pgSQL is PostgreSQL's procedural language with variables, conditionals, and loops:</p>
          <div class="lc-code">CREATE OR REPLACE FUNCTION fibonacci(n INTEGER)<br>RETURNS INTEGER AS $$<br>DECLARE<br>  a INTEGER := 0;<br>  b INTEGER := 1;<br>  temp INTEGER;<br>  i INTEGER;<br>BEGIN<br>  FOR i IN 1..n LOOP<br>    temp := a + b;<br>    a := b;<br>    b := temp;<br>  END LOOP;<br>  RETURN a;<br>END;<br>$$ LANGUAGE plpgsql;</div>
        </div>

        <div class="lc-card">
          <h3>Procedures vs Functions</h3>
          <table class="lc-table">
            <thead><tr><th>Feature</th><th>Function</th><th>Procedure</th></tr></thead>
            <tbody>
              <tr><td>Returns value</td><td>Yes (required)</td><td>Optional (OUT params)</td></tr>
              <tr><td>Transaction control</td><td>No (inherits caller's tx)</td><td>Yes (COMMIT/ROLLBACK)</td></tr>
              <tr><td>Called with</td><td>SELECT function()</td><td>CALL procedure()</td></tr>
              <tr><td>Added in</td><td>Always supported</td><td>PostgreSQL 11</td></tr>
            </tbody>
          </table>
        </div>

        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> PostgreSQL functions are extremely powerful — you can even write them in Python (<code>plpython3u</code>) or JavaScript (<code>plv8</code>) if installed.
        </div>
      HTML
      starter_code: <<~'SQL'
        -- Stored functions in PostgreSQL (simulated with SQL)

        CREATE TABLE orders (
          id         SERIAL PRIMARY KEY,
          customer   VARCHAR(100),
          amount     NUMERIC(10,2),
          discount   NUMERIC(5,2) DEFAULT 0,
          status     VARCHAR(20) DEFAULT 'pending'
        );

        INSERT INTO orders (customer, amount, discount, status) VALUES
          ('Alice', 500.00, 10, 'completed'),
          ('Bob', 1200.00, 15, 'completed'),
          ('Carol', 300.00, 0, 'pending'),
          ('Dave', 850.00, 5, 'completed'),
          ('Eve', 2100.00, 20, 'completed');

        -- Simulate function: calculate discounted total
        SELECT customer,
               amount,
               discount,
               ROUND(amount * (1 - discount / 100.0), 2) AS discounted_amount
        FROM orders
        WHERE status = 'completed'
        ORDER BY discounted_amount DESC;

        -- Summary stats
        SELECT
          COUNT(*) AS total_orders,
          ROUND(AVG(amount), 2) AS avg_order,
          SUM(ROUND(amount * (1 - discount / 100.0), 2)) AS total_revenue
        FROM orders
        WHERE status = 'completed';
      SQL
    },

    18 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-postgresql">PostgreSQL</div>
          <h1 class="lc-title">PostgreSQL Array Types</h1>
        </div>
        <p class="lc-lead">PostgreSQL natively supports arrays as a column type — you can store multiple values in a single column and query them with array operators and functions.</p>

        <div class="lc-card">
          <h3>Defining Array Columns</h3>
          <div class="lc-code">CREATE TABLE articles (<br>  id    SERIAL PRIMARY KEY,<br>  title TEXT,<br>  tags  TEXT[]       -- Array of text<br>);</div>
        </div>

        <div class="lc-card">
          <h3>Inserting Arrays</h3>
          <div class="lc-code">INSERT INTO articles (title, tags) VALUES<br>  ('PostgreSQL Guide', ARRAY['postgresql', 'database', 'sql']),<br>  ('Python Tips', ARRAY['python', 'programming']),<br>  ('Data Science', ARRAY['python', 'ml', 'statistics']);</div>
        </div>

        <div class="lc-card">
          <h3>Array Operators</h3>
          <table class="lc-table">
            <thead><tr><th>Operator</th><th>Description</th><th>Example</th></tr></thead>
            <tbody>
              <tr><td>@&gt;</td><td>Array contains</td><td><code>tags @&gt; ARRAY['sql']</code></td></tr>
              <tr><td>&lt;@</td><td>Array is contained by</td><td></td></tr>
              <tr><td>&amp;&amp;</td><td>Arrays overlap (share elements)</td><td><code>tags &amp;&amp; ARRAY['python','ml']</code></td></tr>
              <tr><td>=</td><td>Arrays are equal</td><td></td></tr>
              <tr><td>||</td><td>Concatenate arrays</td><td><code>ARRAY[1,2] || ARRAY[3,4]</code></td></tr>
            </tbody>
          </table>
        </div>

        <div class="lc-card">
          <h3>Array Functions</h3>
          <div class="lc-code">array_length(tags, 1)        -- Length of 1st dimension<br>array_append(tags, 'new')   -- Add element<br>array_remove(tags, 'old')   -- Remove element<br>unnest(tags)                 -- Expand to rows<br>array_to_string(tags, ',')  -- Join to string</div>
        </div>

        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Create a GIN index on array columns for fast containment queries: <code>CREATE INDEX ON articles USING GIN(tags);</code>
        </div>
      HTML
      starter_code: <<~'SQL'
        -- PostgreSQL Arrays (simulated with VARCHAR)

        CREATE TABLE courses (
          id         SERIAL PRIMARY KEY,
          title      VARCHAR(200),
          instructor VARCHAR(100),
          skills     VARCHAR(500),
          level      VARCHAR(20)
        );

        INSERT INTO courses (title, instructor, skills, level) VALUES
          ('PostgreSQL Mastery', 'Alice', 'sql,postgresql,databases,performance', 'advanced'),
          ('Python for Everyone', 'Bob', 'python,programming,automation', 'beginner'),
          ('Data Science Bootcamp', 'Carol', 'python,sql,statistics,ml,pandas', 'intermediate'),
          ('Web Dev with Rails', 'Dave', 'ruby,html,css,sql,javascript', 'beginner'),
          ('Machine Learning Deep Dive', 'Eve', 'python,ml,statistics,tensorflow', 'advanced');

        SELECT * FROM courses;

        -- Find courses that teach SQL
        SELECT title, instructor, level
        FROM courses
        WHERE skills LIKE '%sql%'
        ORDER BY level;

        -- Find courses that teach both Python and ML
        SELECT title, instructor
        FROM courses
        WHERE skills LIKE '%python%' AND skills LIKE '%ml%';

        -- Count courses by level
        SELECT level, COUNT(*) AS course_count
        FROM courses
        GROUP BY level
        ORDER BY course_count DESC;
      SQL
    },

    19 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-postgresql">PostgreSQL</div>
          <h1 class="lc-title">PostgreSQL with Applications</h1>
        </div>
        <p class="lc-lead">PostgreSQL integrates with modern applications through ORMs, connection poolers (PgBouncer), and drivers for every language. Understanding connection patterns and best practices is essential.</p>

        <div class="lc-card">
          <h3>Connecting from Python</h3>
          <div class="lc-code">import psycopg2<br><br>conn = psycopg2.connect(<br>    host="localhost",<br>    database="myapp",<br>    user="app_user",<br>    password="secret",<br>    port=5432<br>)<br>cur = conn.cursor()<br>cur.execute("SELECT * FROM users WHERE id = %s", (user_id,))<br>rows = cur.fetchall()</div>
        </div>

        <div class="lc-card">
          <h3>Connecting from Ruby (Rails)</h3>
          <div class="lc-code"># config/database.yml<br>production:<br>  adapter: postgresql<br>  host: localhost<br>  database: myapp_production<br>  username: app_user<br>  password: &lt;%= ENV['DATABASE_PASSWORD'] %&gt;<br>  pool: 5</div>
        </div>

        <div class="lc-card">
          <h3>Connection Pooling</h3>
          <p>PostgreSQL creates a process per connection — expensive at scale. Use PgBouncer to pool connections:</p>
          <ul class="lc-list">
            <li><strong>Session mode</strong> — one server connection per client session</li>
            <li><strong>Transaction mode</strong> — pool connections at transaction boundaries</li>
            <li><strong>Statement mode</strong> — pool at statement level (most efficient)</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Prepared Statements (Prevent SQL Injection)</h3>
          <div class="lc-code">-- Always use parameterized queries<br>PREPARE get_user(INTEGER) AS<br>  SELECT * FROM users WHERE id = $1;<br><br>EXECUTE get_user(42);</div>
        </div>

        <div class="lc-card">
          <h3>Useful Extensions</h3>
          <table class="lc-table">
            <thead><tr><th>Extension</th><th>Purpose</th></tr></thead>
            <tbody>
              <tr><td>pg_stat_statements</td><td>Query performance tracking</td></tr>
              <tr><td>uuid-ossp</td><td>UUID generation functions</td></tr>
              <tr><td>postgis</td><td>Geographic/spatial data</td></tr>
              <tr><td>pg_trgm</td><td>Trigram similarity (fuzzy search)</td></tr>
              <tr><td>hstore</td><td>Key-value store column type</td></tr>
            </tbody>
          </table>
        </div>

        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Never use string concatenation to build SQL queries — always use parameterized queries (<code>%s</code> in Python, <code>$1</code> in SQL) to prevent SQL injection.
        </div>
      HTML
      starter_code: <<~'SQL'
        -- Application integration patterns

        CREATE TABLE api_keys (
          id         SERIAL PRIMARY KEY,
          user_id    INTEGER NOT NULL,
          key_name   VARCHAR(100),
          created_at DATE DEFAULT CURRENT_DATE,
          expires_at DATE,
          active     BOOLEAN DEFAULT true
        );

        CREATE TABLE audit_log (
          id         SERIAL PRIMARY KEY,
          user_id    INTEGER,
          action     VARCHAR(100),
          table_name VARCHAR(50),
          created_at DATE DEFAULT CURRENT_DATE
        );

        INSERT INTO api_keys (user_id, key_name, expires_at, active) VALUES
          (1, 'Production Key', '2025-12-31', true),
          (1, 'Dev Key', '2024-06-30', false),
          (2, 'Analytics Key', '2025-06-30', true),
          (3, 'Mobile App Key', '2025-03-31', true);

        INSERT INTO audit_log (user_id, action, table_name) VALUES
          (1, 'SELECT', 'users'),
          (1, 'INSERT', 'orders'),
          (2, 'UPDATE', 'products'),
          (3, 'DELETE', 'sessions'),
          (1, 'SELECT', 'products');

        -- Active API keys
        SELECT ak.key_name, ak.expires_at, ak.active
        FROM api_keys ak
        WHERE ak.active = true
        ORDER BY ak.expires_at;

        -- Audit log summary
        SELECT user_id, action, COUNT(*) AS times
        FROM audit_log
        GROUP BY user_id, action
        ORDER BY user_id, times DESC;
      SQL
    },

    20 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-postgresql">PostgreSQL</div>
          <h1 class="lc-title">PostgreSQL Review</h1>
        </div>
        <p class="lc-lead">You've completed the PostgreSQL course! Let's review the key PostgreSQL features that set it apart from other databases.</p>

        <div class="lc-card">
          <h3>Core PostgreSQL Concepts</h3>
          <table class="lc-table">
            <thead><tr><th>Feature</th><th>Key Points</th></tr></thead>
            <tbody>
              <tr><td>SERIAL / IDENTITY</td><td>Auto-increment PKs; prefer GENERATED ALWAYS AS IDENTITY in PG10+</td></tr>
              <tr><td>Type casting (::)</td><td>'42'::INTEGER, '2024-01-15'::DATE — clean PostgreSQL syntax</td></tr>
              <tr><td>String ops</td><td>|| for concatenation; ILIKE for case-insensitive search</td></tr>
              <tr><td>CTEs (WITH)</td><td>Named subqueries; WITH RECURSIVE for hierarchical data</td></tr>
              <tr><td>Window functions</td><td>ROW_NUMBER, RANK, DENSE_RANK, LAG, LEAD — all in PG</td></tr>
              <tr><td>RETURNING</td><td>Get data back from INSERT/UPDATE/DELETE</td></tr>
              <tr><td>FULL OUTER JOIN</td><td>Returns all rows from both tables — native in PostgreSQL</td></tr>
              <tr><td>DISTINCT ON</td><td>Get one row per group efficiently</td></tr>
              <tr><td>string_agg</td><td>Aggregate rows to a string (like GROUP_CONCAT)</td></tr>
              <tr><td>JSONB</td><td>Binary JSON with indexing — use over JSON</td></tr>
              <tr><td>Arrays</td><td>Native array columns with GIN indexing</td></tr>
              <tr><td>Index types</td><td>B-tree, GIN (arrays/JSONB), GiST (geo), BRIN (time series)</td></tr>
              <tr><td>EXPLAIN ANALYZE</td><td>Actual execution plan with timing</td></tr>
              <tr><td>Materialized views</td><td>Stored query results; refresh with REFRESH MATERIALIZED VIEW</td></tr>
              <tr><td>Full-text search</td><td>tsvector, tsquery, @@ operator, GIN indexes</td></tr>
              <tr><td>Roles</td><td>Unified users+groups; grant column-level and RLS policies</td></tr>
              <tr><td>Savepoints</td><td>Partial rollback within a transaction</td></tr>
              <tr><td>Transactional DDL</td><td>CREATE TABLE, ALTER TABLE can be rolled back!</td></tr>
            </tbody>
          </table>
        </div>

        <div class="lc-card">
          <h3>PostgreSQL vs MySQL Quick Reference</h3>
          <table class="lc-table">
            <thead><tr><th>Task</th><th>PostgreSQL</th><th>MySQL</th></tr></thead>
            <tbody>
              <tr><td>String concat</td><td>'a' || 'b'</td><td>CONCAT('a','b')</td></tr>
              <tr><td>Case-insensitive search</td><td>ILIKE</td><td>LIKE (case-insensitive by default)</td></tr>
              <tr><td>Auto-increment</td><td>SERIAL / IDENTITY</td><td>AUTO_INCREMENT</td></tr>
              <tr><td>Group concat</td><td>string_agg(col, ',')</td><td>GROUP_CONCAT(col)</td></tr>
              <tr><td>Full outer join</td><td>FULL OUTER JOIN</td><td>Not supported natively</td></tr>
              <tr><td>JSON type</td><td>JSONB (indexed)</td><td>JSON (text)</td></tr>
              <tr><td>Rollback DDL</td><td>Yes</td><td>No</td></tr>
            </tbody>
          </table>
        </div>

        <div class="lc-card lc-card--tip">
          <strong>Congratulations!</strong> You now know PostgreSQL's most powerful features. Next steps: explore PostGIS for spatial data, pg_stat_statements for query monitoring, or logical replication for high availability.
        </div>
      HTML
      starter_code: <<~'SQL'
        -- PostgreSQL Review: Comprehensive Example

        CREATE TABLE departments (
          id   SERIAL PRIMARY KEY,
          name VARCHAR(50) UNIQUE NOT NULL
        );

        CREATE TABLE employees (
          id        SERIAL PRIMARY KEY,
          name      VARCHAR(100) NOT NULL,
          dept_id   INTEGER REFERENCES departments(id),
          salary    NUMERIC(10,2),
          hire_date DATE DEFAULT CURRENT_DATE,
          active    BOOLEAN DEFAULT true
        );

        INSERT INTO departments (name) VALUES
          ('Engineering'), ('Marketing'), ('HR'), ('Finance');

        INSERT INTO employees (name, dept_id, salary, hire_date, active) VALUES
          ('Alice Chen',   1, 95000, '2021-03-15', true),
          ('Bob Smith',    2, 68000, '2020-07-22', true),
          ('Carol White',  1, 88000, '2022-01-10', true),
          ('Dave Brown',   3, 57000, '2019-11-05', true),
          ('Eve Davis',    2, 74000, '2023-04-18', true),
          ('Frank Wilson', 1, 82000, '2021-09-30', false),
          ('Grace Lee',    4, 91000, '2020-02-14', true);

        -- CTE + Window Function + FULL OUTER JOIN review
        WITH dept_stats AS (
          SELECT d.name AS dept,
                 COUNT(e.id)       AS headcount,
                 ROUND(AVG(e.salary), 2) AS avg_salary,
                 MAX(e.salary)     AS top_salary,
                 string_agg(e.name, ', ' ORDER BY e.name) AS team
          FROM departments d
          LEFT JOIN employees e ON e.dept_id = d.id AND e.active = true
          GROUP BY d.name
        )
        SELECT dept,
               headcount,
               avg_salary,
               top_salary,
               RANK() OVER (ORDER BY avg_salary DESC) AS salary_rank,
               team
        FROM dept_stats
        ORDER BY salary_rank;
      SQL
    }
  }
end

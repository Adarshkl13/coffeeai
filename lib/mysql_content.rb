module MysqlContent
  LESSONS = {
    1 => {
      body: <<~'HTML',
        <div class="lc-intro">
          <p>MySQL is the world's most popular <strong>open-source relational database management system</strong>. Created in 1995 by MySQL AB (now owned by Oracle), it powers some of the internet's largest applications — Wikipedia, Twitter (early), Airbnb, Uber, and most WordPress sites.</p>
        </div>
        <div class="lc-section">
          <h2>Why MySQL?</h2>
          <ul class="lc-list">
            <li><strong>Free and open-source</strong> — Community Edition is completely free</li>
            <li><strong>Proven at scale</strong> — handles billions of rows at companies like Facebook</li>
            <li><strong>The LAMP stack</strong> — Linux + Apache + MySQL + PHP powers most of the web</li>
            <li><strong>Excellent tooling</strong> — MySQL Workbench, phpMyAdmin, DBeaver</li>
          </ul>
        </div>
        <div class="lc-section">
          <h2>MySQL vs Other Databases</h2>
          <table class="lc-table">
            <thead><tr><th>Database</th><th>Type</th><th>Best For</th></tr></thead>
            <tbody>
              <tr><td><strong>MySQL</strong></td><td>Relational, open-source</td><td>Web apps, e-commerce, CMS</td></tr>
              <tr><td>PostgreSQL</td><td>Relational, advanced</td><td>Complex queries, analytics</td></tr>
              <tr><td>SQLite</td><td>Embedded, file-based</td><td>Local apps, mobile, testing</td></tr>
              <tr><td>MongoDB</td><td>Document (NoSQL)</td><td>Flexible schema, big data</td></tr>
              <tr><td>Redis</td><td>Key-Value, in-memory</td><td>Caching, sessions, queues</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-section">
          <h2>Connecting to MySQL</h2>
          <div class="lc-code-block"><pre><code>-- Command line client
mysql -u root -p
mysql -u username -p database_name

-- Show all databases
SHOW DATABASES;

-- Select and use a database
USE my_database;

-- Show tables in current database
SHOW TABLES;</code></pre></div>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>MySQL uses <strong>port 3306</strong> by default. The most important distinction: MySQL is a <em>server</em> — it runs as a background service on your machine and you connect to it with a client. SQLite is a file; MySQL is a service.</p></div>
      HTML
      starter_code: <<~'SQL'
        -- Introduction to MySQL
        -- MySQL uses standard SQL with powerful extensions

        -- Create our first MySQL database table
        CREATE TABLE employees (
            id         INT AUTO_INCREMENT PRIMARY KEY,
            name       VARCHAR(100) NOT NULL,
            department VARCHAR(50)  NOT NULL,
            salary     DECIMAL(10,2) NOT NULL,
            hire_date  DATE
        );

        -- Insert employees
        INSERT INTO employees (name, department, salary, hire_date) VALUES
            ('Alice Kumar',  'Engineering', 95000.00, '2020-03-15'),
            ('Bob Singh',    'Marketing',   72000.00, '2019-07-01'),
            ('Carol Patel',  'Engineering', 105000.00,'2018-11-20'),
            ('Dave Shah',    'HR',          65000.00, '2021-02-28'),
            ('Eve Sharma',   'Engineering', 98000.00, '2020-09-10');

        -- Basic queries
        SELECT * FROM employees;
        SELECT name, department, salary FROM employees ORDER BY salary DESC;
        SELECT CONCAT('Total employees: ', COUNT(*)) AS info FROM employees;
      SQL
    },

    2 => {
      body: <<~'HTML',
        <div class="lc-intro">
          <p>MySQL has a rich type system with <strong>specific numeric sizes, string lengths, and temporal types</strong>. Choosing the right data type is crucial — it affects storage size, performance, and what values are valid for each column.</p>
        </div>
        <div class="lc-section">
          <h2>Numeric Types</h2>
          <table class="lc-table">
            <thead><tr><th>Type</th><th>Size</th><th>Range</th><th>Use When</th></tr></thead>
            <tbody>
              <tr><td><code>TINYINT</code></td><td>1 byte</td><td>0 to 255 (unsigned)</td><td>Flags, status codes</td></tr>
              <tr><td><code>SMALLINT</code></td><td>2 bytes</td><td>0 to 65,535</td><td>Small counts</td></tr>
              <tr><td><code>INT</code></td><td>4 bytes</td><td>0 to ~4.3 billion</td><td>Standard IDs, counts</td></tr>
              <tr><td><code>BIGINT</code></td><td>8 bytes</td><td>Huge numbers</td><td>Large IDs, timestamps</td></tr>
              <tr><td><code>DECIMAL(p,s)</code></td><td>Varies</td><td>Exact precision</td><td>Money, prices ✅</td></tr>
              <tr><td><code>FLOAT</code></td><td>4 bytes</td><td>Approx decimal</td><td>Scientific data (not money!)</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-section">
          <h2>String Types</h2>
          <table class="lc-table">
            <thead><tr><th>Type</th><th>Max Size</th><th>Use When</th></tr></thead>
            <tbody>
              <tr><td><code>CHAR(n)</code></td><td>255 chars</td><td>Fixed length (country codes, status)</td></tr>
              <tr><td><code>VARCHAR(n)</code></td><td>65,535 chars</td><td>✅ Variable text (names, emails)</td></tr>
              <tr><td><code>TEXT</code></td><td>65,535 chars</td><td>Long text (articles, descriptions)</td></tr>
              <tr><td><code>MEDIUMTEXT</code></td><td>16 MB</td><td>Large text (blog posts)</td></tr>
              <tr><td><code>LONGTEXT</code></td><td>4 GB</td><td>Very large content</td></tr>
              <tr><td><code>ENUM('a','b')</code></td><td>1-2 bytes</td><td>Fixed set of values</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-section">
          <h2>Date & Time Types</h2>
          <div class="lc-code-block"><pre><code>DATE          -- '2024-01-15'         — date only
TIME          -- '14:30:00'           — time only
DATETIME      -- '2024-01-15 14:30:00'— date + time (no timezone)
TIMESTAMP     -- auto-updates on row change
YEAR          -- 1901 to 2155</code></pre></div>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>Always use <code>DECIMAL(10,2)</code> for money — <em>never</em> <code>FLOAT</code> or <code>DOUBLE</code>. Floating-point types have rounding errors: <code>0.1 + 0.2 = 0.30000000000000004</code>. DECIMAL stores exact values, which is critical for financial calculations.</p></div>
      HTML
      starter_code: <<~'SQL'
        -- MySQL Data Types

        CREATE TABLE products (
            id          INT AUTO_INCREMENT PRIMARY KEY,
            name        VARCHAR(200) NOT NULL,
            description TEXT,
            category    ENUM('Electronics','Clothing','Food','Books') NOT NULL,
            price       DECIMAL(10,2) NOT NULL,
            stock       SMALLINT UNSIGNED DEFAULT 0,
            is_active   TINYINT(1) DEFAULT 1,
            weight_kg   FLOAT,
            created_at  DATETIME DEFAULT CURRENT_TIMESTAMP
        );

        INSERT INTO products (name, description, category, price, stock, weight_kg) VALUES
            ('MacBook Pro',  '14-inch laptop with M3 chip',  'Electronics', 175000.00, 25, 1.6),
            ('iPhone 15',    'Latest Apple smartphone',       'Electronics',  79900.00, 150, 0.17),
            ('Clean Code',   'Book by Robert C. Martin',     'Books',         1299.50, 200, 0.45),
            ('Python T-Shirt','Programmer merchandise',       'Clothing',       899.00, 500, 0.20),
            ('Chai Pack',    'Premium Assam tea 500g',        'Food',           299.99, 1000, 0.50);

        SELECT * FROM products;

        SELECT name, price, stock,
               price * stock AS inventory_value,
               CASE WHEN stock > 100 THEN 'Well Stocked'
                    WHEN stock > 0   THEN 'Low Stock'
                    ELSE 'Out of Stock' END AS stock_status
        FROM products
        ORDER BY inventory_value DESC;
      SQL
    },

    3 => {
      body: <<~'HTML',
        <div class="lc-intro">
          <p><code>AUTO_INCREMENT</code> is MySQL's built-in mechanism for automatically generating unique IDs. Combined with keys (PRIMARY, UNIQUE, INDEX, FOREIGN), it forms the backbone of relational database design.</p>
        </div>
        <div class="lc-section">
          <h2>AUTO_INCREMENT</h2>
          <div class="lc-code-block"><pre><code>CREATE TABLE users (
    id    INT AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(255) NOT NULL
);

-- You never provide the id — MySQL sets it automatically
INSERT INTO users (email) VALUES ('alice@example.com');
INSERT INTO users (email) VALUES ('bob@example.com');

-- Get the last inserted ID
SELECT LAST_INSERT_ID();  -- Returns the last auto-generated ID</code></pre></div>
        </div>
        <div class="lc-section">
          <h2>Key Types in MySQL</h2>
          <table class="lc-table">
            <thead><tr><th>Key Type</th><th>Purpose</th></tr></thead>
            <tbody>
              <tr><td><code>PRIMARY KEY</code></td><td>Unique + NOT NULL — identifies each row. Automatically indexed.</td></tr>
              <tr><td><code>UNIQUE KEY</code></td><td>Value must be unique across all rows (can be NULL)</td></tr>
              <tr><td><code>INDEX</code> / <code>KEY</code></td><td>Speeds up queries (not enforced for uniqueness)</td></tr>
              <tr><td><code>FOREIGN KEY</code></td><td>Links to another table — enforces referential integrity</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-section">
          <h2>FOREIGN KEY with ON DELETE</h2>
          <div class="lc-code-block"><pre><code>CREATE TABLE orders (
    id          INT AUTO_INCREMENT PRIMARY KEY,
    user_id     INT NOT NULL,
    total       DECIMAL(10,2),
    FOREIGN KEY (user_id) REFERENCES users(id)
        ON DELETE CASCADE    -- Delete orders if user is deleted
        ON UPDATE CASCADE    -- Update user_id if users.id changes
);</code></pre></div>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>AUTO_INCREMENT starts at 1 and always increases — even if rows are deleted, the counter doesn't reset. So gaps in IDs are normal. Set the starting value with: <code>ALTER TABLE t AUTO_INCREMENT = 1000;</code></p></div>
      HTML
      starter_code: <<~'SQL'
        -- AUTO_INCREMENT and Keys

        CREATE TABLE users (
            id         INT AUTO_INCREMENT PRIMARY KEY,
            username   VARCHAR(50) NOT NULL UNIQUE,
            email      VARCHAR(255) NOT NULL UNIQUE,
            role       ENUM('admin','teacher','student') DEFAULT 'student',
            created_at DATETIME DEFAULT CURRENT_TIMESTAMP
        );

        CREATE TABLE courses (
            id          INT AUTO_INCREMENT PRIMARY KEY,
            title       VARCHAR(200) NOT NULL,
            instructor  VARCHAR(100),
            price       DECIMAL(8,2) DEFAULT 0.00,
            INDEX idx_instructor (instructor)
        );

        CREATE TABLE enrollments (
            id         INT AUTO_INCREMENT PRIMARY KEY,
            user_id    INT NOT NULL,
            course_id  INT NOT NULL,
            enrolled_at DATETIME DEFAULT CURRENT_TIMESTAMP,
            UNIQUE KEY uq_enrollment (user_id, course_id)
        );

        -- Insert without specifying IDs
        INSERT INTO users (username, email, role) VALUES
            ('alice',  'alice@example.com',  'teacher'),
            ('bob',    'bob@example.com',    'student'),
            ('carol',  'carol@example.com',  'student'),
            ('admin1', 'admin@example.com',  'admin');

        INSERT INTO courses (title, instructor, price) VALUES
            ('Python Basics', 'alice', 999.00),
            ('MySQL Deep Dive', 'alice', 1499.00),
            ('Web Development', 'alice', 1299.00);

        INSERT INTO enrollments (user_id, course_id) VALUES
            (2, 1), (2, 2), (3, 1), (3, 3);

        SELECT * FROM users;
        SELECT * FROM courses;
        SELECT * FROM enrollments;
      SQL
    },

    4 => {
      body: <<~'HTML',
        <div class="lc-intro">
          <p>MySQL provides powerful <strong>string functions</strong> that go far beyond generic SQL. <code>CONCAT()</code> is MySQL's standard string joiner (unlike the <code>||</code> operator used in SQLite/PostgreSQL), and functions like <code>REGEXP</code> enable pattern matching with regular expressions.</p>
        </div>
        <div class="lc-section">
          <h2>Core MySQL String Functions</h2>
          <table class="lc-table">
            <thead><tr><th>Function</th><th>Example</th><th>Result</th></tr></thead>
            <tbody>
              <tr><td><code>CONCAT(a, b, ...)</code></td><td><code>CONCAT('Hi', ' ', 'Alice')</code></td><td>'Hi Alice'</td></tr>
              <tr><td><code>CONCAT_WS(sep, ...)</code></td><td><code>CONCAT_WS(', ','Alice','25')</code></td><td>'Alice, 25'</td></tr>
              <tr><td><code>CHAR_LENGTH(s)</code></td><td><code>CHAR_LENGTH('hello')</code></td><td>5</td></tr>
              <tr><td><code>SUBSTRING(s,pos,len)</code></td><td><code>SUBSTRING('Hello',1,3)</code></td><td>'Hel'</td></tr>
              <tr><td><code>LOCATE(sub, s)</code></td><td><code>LOCATE('@','a@b.com')</code></td><td>2</td></tr>
              <tr><td><code>LPAD(s, n, pad)</code></td><td><code>LPAD('42', 5, '0')</code></td><td>'00042'</td></tr>
              <tr><td><code>RPAD(s, n, pad)</code></td><td><code>RPAD('hi', 5, '-')</code></td><td>'hi---'</td></tr>
              <tr><td><code>REVERSE(s)</code></td><td><code>REVERSE('hello')</code></td><td>'olleh'</td></tr>
              <tr><td><code>FORMAT(n, d)</code></td><td><code>FORMAT(1234567.89, 2)</code></td><td>'1,234,567.89'</td></tr>
              <tr><td><code>REPEAT(s, n)</code></td><td><code>REPEAT('ab', 3)</code></td><td>'ababab'</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-section">
          <h2>Pattern Matching with REGEXP</h2>
          <div class="lc-code-block"><pre><code>-- LIKE (simple wildcards)
SELECT name FROM users WHERE email LIKE '%@gmail.com';

-- REGEXP (full regular expressions)
SELECT name FROM users WHERE email REGEXP '^[a-z]+@gmail\\.com$';
SELECT phone FROM contacts WHERE phone REGEXP '^[0-9]{10}$';</code></pre></div>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>In MySQL, use <code>CONCAT()</code> for string joining — not <code>||</code>. The <code>||</code> operator in MySQL is actually logical OR by default (unlike PostgreSQL/SQLite where it concatenates). Use <code>CONCAT_WS(separator, ...)</code> to join with a separator and automatically skip NULLs.</p></div>
      HTML
      starter_code: <<~'SQL'
        -- MySQL String Functions

        CREATE TABLE employees (
            id         INT AUTO_INCREMENT PRIMARY KEY,
            first_name VARCHAR(50),
            last_name  VARCHAR(50),
            email      VARCHAR(100),
            department VARCHAR(50),
            salary     DECIMAL(10,2)
        );

        INSERT INTO employees (first_name, last_name, email, department, salary) VALUES
            ('Alice',  'Kumar',   'alice.kumar@company.com',  'Engineering', 95000),
            ('Bob',    'Singh',   'bob.singh@company.com',    'Marketing',   72000),
            ('carol',  'patel',   'carol.patel@gmail.com',    'Engineering', 105000),
            ('Dave',   'Shah',    'dave.shah@company.com',    'HR',          65000),
            ('EVE',    'SHARMA',  'eve.sharma@company.com',   'Engineering', 98000);

        -- CONCAT: full name
        SELECT CONCAT(first_name, ' ', last_name) AS full_name, email
        FROM employees;

        -- String manipulation
        SELECT
            UPPER(CONCAT(first_name, ' ', last_name))   AS full_name_upper,
            LOWER(email)                                 AS email_lower,
            CHAR_LENGTH(email)                           AS email_length,
            LOCATE('@', email)                           AS at_position,
            SUBSTRING(email, 1, LOCATE('@', email) - 1) AS username
        FROM employees;

        -- Padding for formatted output
        SELECT
            RPAD(CONCAT(first_name, ' ', last_name), 20, ' ') AS name_padded,
            LPAD(CONCAT('$', FORMAT(salary, 0)), 15, ' ')     AS salary_padded
        FROM employees
        ORDER BY last_name;

        -- REGEXP: find company emails
        SELECT first_name, email FROM employees
        WHERE email REGEXP '@company\\.com$';
      SQL
    },

    5 => {
      body: <<~'HTML',
        <div class="lc-intro">
          <p>MySQL's date and time functions are among its most powerful features. <code>DATE_FORMAT()</code> is especially important — it formats dates in any pattern you need for display. Understanding these functions is essential for any report or analytics query.</p>
        </div>
        <div class="lc-section">
          <h2>Core Date Functions</h2>
          <table class="lc-table">
            <thead><tr><th>Function</th><th>Returns</th></tr></thead>
            <tbody>
              <tr><td><code>NOW()</code></td><td>Current date and time: '2024-01-15 14:30:00'</td></tr>
              <tr><td><code>CURDATE()</code></td><td>Current date: '2024-01-15'</td></tr>
              <tr><td><code>CURTIME()</code></td><td>Current time: '14:30:00'</td></tr>
              <tr><td><code>YEAR(date)</code></td><td>Year: 2024</td></tr>
              <tr><td><code>MONTH(date)</code></td><td>Month: 1-12</td></tr>
              <tr><td><code>DAY(date)</code></td><td>Day of month: 1-31</td></tr>
              <tr><td><code>DAYNAME(date)</code></td><td>'Monday', 'Tuesday', …</td></tr>
              <tr><td><code>MONTHNAME(date)</code></td><td>'January', 'February', …</td></tr>
              <tr><td><code>DATEDIFF(d1, d2)</code></td><td>Days between two dates</td></tr>
              <tr><td><code>DATE_ADD(date, INTERVAL n unit)</code></td><td>Add time to a date</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-section">
          <h2>DATE_FORMAT() — Format Strings</h2>
          <div class="lc-code-block"><pre><code>DATE_FORMAT(date, '%Y-%m-%d')   -- '2024-01-15'
DATE_FORMAT(date, '%d/%m/%Y')   -- '15/01/2024'
DATE_FORMAT(date, '%D %M %Y')   -- '15th January 2024'
DATE_FORMAT(date, '%b %Y')      -- 'Jan 2024'
DATE_FORMAT(date, '%H:%i')      -- '14:30'</code></pre></div>
        </div>
        <div class="lc-section">
          <h2>Date Arithmetic</h2>
          <div class="lc-code-block"><pre><code>-- Add/subtract intervals
DATE_ADD('2024-01-15', INTERVAL 30 DAY)   -- '2024-02-14'
DATE_ADD('2024-01-15', INTERVAL 1 MONTH)  -- '2024-02-15'
DATE_SUB('2024-01-15', INTERVAL 1 YEAR)   -- '2023-01-15'

-- Days between dates
DATEDIFF('2024-12-31', '2024-01-01')     -- 365</code></pre></div>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p><code>TIMESTAMPDIFF(YEAR, birthdate, NOW())</code> calculates the exact age in years — much more accurate than just subtracting years, because it accounts for whether the birthday has passed yet this year.</p></div>
      HTML
      starter_code: <<~'SQL'
        -- MySQL Date & Time Functions

        CREATE TABLE employees (
            id        INT AUTO_INCREMENT PRIMARY KEY,
            name      VARCHAR(100),
            hire_date DATE,
            birthdate DATE,
            salary    DECIMAL(10,2)
        );

        INSERT INTO employees (name, hire_date, birthdate, salary) VALUES
            ('Alice Kumar', '2020-03-15', '1998-06-15', 95000),
            ('Bob Singh',   '2019-07-01', '1995-11-22', 72000),
            ('Carol Patel', '2018-11-20', '1990-04-08', 105000),
            ('Dave Shah',   '2021-02-28', '1997-09-30', 65000),
            ('Eve Sharma',  '2020-09-10', '1999-01-15', 98000);

        -- Date formatting
        SELECT
            name,
            hire_date,
            DATE_FORMAT(hire_date, '%D %M %Y')  AS hire_date_formatted,
            DATE_FORMAT(hire_date, '%b %Y')      AS hire_month_year
        FROM employees;

        -- Calculate tenure and age
        SELECT
            name,
            hire_date,
            DATEDIFF('2025-01-01', hire_date)   AS days_employed,
            2025 - YEAR(hire_date)               AS years_at_company,
            2025 - YEAR(birthdate)               AS age
        FROM employees
        ORDER BY hire_date;

        -- Group by hire year
        SELECT
            YEAR(hire_date)  AS hire_year,
            COUNT(*)         AS hires,
            SUM(salary)      AS payroll_added
        FROM employees
        GROUP BY hire_year
        ORDER BY hire_year;

        -- Date arithmetic
        SELECT
            name,
            hire_date,
            DATE_ADD(hire_date, INTERVAL 1 YEAR) AS one_year_mark,
            DATE_ADD(hire_date, INTERVAL 5 YEAR) AS five_year_mark
        FROM employees;
      SQL
    },

    6 => {
      body: <<~'HTML',
        <div class="lc-intro">
          <p>MySQL extends standard SQL aggregates with powerful features like <code>GROUP_CONCAT()</code> — which aggregates multiple values into a single comma-separated string — and <code>WITH ROLLUP</code> for automatic subtotals.</p>
        </div>
        <div class="lc-section">
          <h2>GROUP_CONCAT() — Aggregate into String</h2>
          <div class="lc-code-block"><pre><code>-- List all employees per department in one row
SELECT department,
       COUNT(*) AS headcount,
       GROUP_CONCAT(name ORDER BY name SEPARATOR ', ') AS members,
       SUM(salary) AS total_cost
FROM employees
GROUP BY department;</code></pre></div>
        </div>
        <div class="lc-section">
          <h2>WITH ROLLUP — Automatic Subtotals</h2>
          <div class="lc-code-block"><pre><code>-- Shows totals for each group + grand total at the end
SELECT department,
       COUNT(*) AS headcount,
       SUM(salary) AS total_salary
FROM employees
GROUP BY department WITH ROLLUP;
-- The NULL row at the end = grand total</code></pre></div>
        </div>
        <div class="lc-section">
          <h2>IF() and CASE in Aggregates</h2>
          <div class="lc-code-block"><pre><code>-- Count by condition using IF inside COUNT
SELECT department,
       COUNT(*) AS total,
       COUNT(IF(salary >= 90000, 1, NULL)) AS senior_count,
       COUNT(IF(salary  < 90000, 1, NULL)) AS junior_count
FROM employees
GROUP BY department;</code></pre></div>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p><code>GROUP_CONCAT</code> has a default maximum length of <strong>1024 characters</strong>. For longer results, increase it: <code>SET group_concat_max_len = 65535;</code>. Also note that GROUP_CONCAT ignores NULL values automatically.</p></div>
      HTML
      starter_code: <<~'SQL'
        -- MySQL Aggregate Functions & GROUP_CONCAT

        CREATE TABLE employees (
            id         INT AUTO_INCREMENT PRIMARY KEY,
            name       VARCHAR(100),
            department VARCHAR(50),
            salary     DECIMAL(10,2),
            hire_year  INT
        );

        INSERT INTO employees (name, department, salary, hire_year) VALUES
            ('Alice',   'Engineering', 95000, 2020),
            ('Bob',     'Marketing',   72000, 2019),
            ('Carol',   'Engineering', 105000, 2018),
            ('Dave',    'HR',          65000, 2021),
            ('Eve',     'Engineering', 98000, 2020),
            ('Frank',   'Marketing',   78000, 2017),
            ('Grace',   'HR',          70000, 2022),
            ('Henry',   'Engineering', 112000, 2015);

        -- GROUP_CONCAT: list members per department
        SELECT
            department,
            COUNT(*) AS headcount,
            GROUP_CONCAT(name ORDER BY name SEPARATOR ', ') AS members,
            ROUND(AVG(salary), 0) AS avg_salary
        FROM employees
        GROUP BY department
        ORDER BY headcount DESC;

        -- IF() inside aggregate: count by salary band
        SELECT
            department,
            COUNT(*)                                           AS total,
            COUNT(IF(salary >= 90000, 1, NULL))               AS senior,
            COUNT(IF(salary < 90000, 1, NULL))                AS junior,
            FORMAT(SUM(salary), 0)                             AS total_payroll
        FROM employees
        GROUP BY department;

        -- WITH ROLLUP: subtotals
        SELECT
            department,
            hire_year,
            COUNT(*) AS staff
        FROM employees
        GROUP BY department, hire_year WITH ROLLUP
        ORDER BY department, hire_year;
      SQL
    },

    7 => {
      body: <<~'HTML',
        <div class="lc-intro">
          <p>MySQL supports all standard JOIN types plus <strong>CROSS JOIN</strong> and <strong>SELF JOIN</strong>. A self join links a table to itself — useful for hierarchical data like employees and their managers, or category trees.</p>
        </div>
        <div class="lc-section">
          <h2>MySQL JOIN Syntax</h2>
          <div class="lc-code-block"><pre><code>-- INNER JOIN (rows matching in both tables)
SELECT u.name, o.total FROM users u
INNER JOIN orders o ON u.id = o.user_id;

-- LEFT JOIN (all left rows + matching right)
SELECT u.name, o.total FROM users u
LEFT JOIN orders o ON u.id = o.user_id;

-- CROSS JOIN (every combination)
SELECT colors.name, sizes.label
FROM colors CROSS JOIN sizes;

-- SELF JOIN (table joins itself)
SELECT e.name AS employee, m.name AS manager
FROM employees e
LEFT JOIN employees m ON e.manager_id = m.id;</code></pre></div>
        </div>
        <div class="lc-section">
          <h2>JOIN Type Summary</h2>
          <table class="lc-table">
            <thead><tr><th>Join Type</th><th>Returns</th></tr></thead>
            <tbody>
              <tr><td><code>INNER JOIN</code></td><td>Only matching rows from both tables</td></tr>
              <tr><td><code>LEFT JOIN</code></td><td>All left rows + matching right (NULL if no match)</td></tr>
              <tr><td><code>RIGHT JOIN</code></td><td>All right rows + matching left (NULL if no match)</td></tr>
              <tr><td><code>CROSS JOIN</code></td><td>Cartesian product (every combination)</td></tr>
              <tr><td>SELF JOIN</td><td>Table joined to itself using aliases</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>MySQL does NOT natively support <code>FULL OUTER JOIN</code>. To simulate it, combine <code>LEFT JOIN</code> and <code>RIGHT JOIN</code> with <code>UNION</code>: <code>SELECT ... LEFT JOIN ... UNION SELECT ... RIGHT JOIN ...</code></p></div>
      HTML
      starter_code: <<~'SQL'
        -- MySQL JOINs

        CREATE TABLE customers (
            id   INT AUTO_INCREMENT PRIMARY KEY,
            name VARCHAR(100),
            city VARCHAR(50)
        );

        CREATE TABLE orders (
            id          INT AUTO_INCREMENT PRIMARY KEY,
            customer_id INT,
            product     VARCHAR(100),
            amount      DECIMAL(10,2),
            order_date  DATE
        );

        INSERT INTO customers (name, city) VALUES
            ('Alice', 'Mumbai'), ('Bob', 'Delhi'),
            ('Carol', 'Bangalore'), ('Dave', 'Chennai'), ('Eve', 'Pune');

        INSERT INTO orders (customer_id, product, amount, order_date) VALUES
            (1, 'Laptop',  75000, '2024-01-10'),
            (1, 'Phone',   25000, '2024-02-15'),
            (2, 'Monitor', 22000, '2024-01-20'),
            (3, 'Laptop',  75000, '2024-03-05'),
            (1, 'Desk',    12000, '2024-03-20');
        -- Dave(4) and Eve(5) have NO orders

        -- INNER JOIN: only customers with orders
        SELECT c.name, o.product, o.amount
        FROM customers c
        INNER JOIN orders o ON c.id = o.customer_id
        ORDER BY c.name;

        -- LEFT JOIN: all customers + orders (NULL if none)
        SELECT c.name, c.city,
               COUNT(o.id)                  AS order_count,
               COALESCE(SUM(o.amount), 0)   AS total_spent
        FROM customers c
        LEFT JOIN orders o ON c.id = o.customer_id
        GROUP BY c.id, c.name, c.city
        ORDER BY total_spent DESC;

        -- Customers who never ordered
        SELECT c.name, c.city
        FROM customers c
        LEFT JOIN orders o ON c.id = o.customer_id
        WHERE o.id IS NULL;
      SQL
    },

    8 => {
      body: <<~'HTML',
        <div class="lc-intro">
          <p>Subqueries in MySQL allow queries inside queries. The <code>EXISTS</code> and <code>NOT EXISTS</code> operators are particularly powerful — they check for the <em>existence</em> of matching rows without returning data. In modern MySQL (8.0+), the optimizer often turns <code>IN</code> and <code>EXISTS</code> subqueries into the same plan, so choose the one that reads most clearly and check with <code>EXPLAIN</code>.</p>
        </div>
        <div class="lc-section">
          <h2>Subquery Types</h2>
          <table class="lc-table">
            <thead><tr><th>Type</th><th>Returns</th><th>Used With</th></tr></thead>
            <tbody>
              <tr><td>Scalar</td><td>Single value</td><td><code>=</code>, <code>&gt;</code>, etc.</td></tr>
              <tr><td>Row</td><td>One row</td><td><code>= (row)</code></td></tr>
              <tr><td>Column</td><td>Multiple rows, one col</td><td><code>IN</code>, <code>EXISTS</code></td></tr>
              <tr><td>Derived Table</td><td>Virtual table</td><td><code>FROM (subquery)</code></td></tr>
              <tr><td>Correlated</td><td>References outer query</td><td><code>EXISTS</code></td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-section">
          <h2>EXISTS vs IN</h2>
          <div class="lc-code-block"><pre><code>-- IN: works well for small lists
SELECT name FROM customers
WHERE id IN (SELECT customer_id FROM orders WHERE amount > 50000);

-- EXISTS: checks whether at least one matching row exists
SELECT name FROM customers c
WHERE EXISTS (
    SELECT 1 FROM orders o
    WHERE o.customer_id = c.id AND o.amount > 50000
);</code></pre></div>
        </div>
        <div class="lc-section">
          <h2>Derived Tables</h2>
          <div class="lc-code-block"><pre><code>-- Subquery in FROM creates a "derived table"
SELECT dept, avg_sal
FROM (
    SELECT department AS dept, AVG(salary) AS avg_sal
    FROM employees GROUP BY department
) AS dept_avgs
WHERE avg_sal > 80000;</code></pre></div>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p><code>EXISTS</code> reads naturally for "is there any matching row?" checks, and <code>NOT EXISTS</code> is safer than <code>NOT IN</code> when the subquery can return <code>NULL</code>. For speed, don't guess — MySQL 8 often optimises both the same way, so compare them with <code>EXPLAIN</code>.</p></div>
      HTML
      starter_code: <<~'SQL'
        -- Subqueries in MySQL

        CREATE TABLE employees (
            id         INT AUTO_INCREMENT PRIMARY KEY,
            name       VARCHAR(100),
            department VARCHAR(50),
            salary     DECIMAL(10,2),
            manager_id INT
        );

        INSERT INTO employees (name, department, salary, manager_id) VALUES
            ('Henry',   'Engineering', 120000, NULL),
            ('Alice',   'Engineering', 95000,  1),
            ('Carol',   'Engineering', 105000, 1),
            ('Bob',     'Marketing',   72000,  NULL),
            ('Frank',   'Marketing',   78000,  4),
            ('Dave',    'HR',          65000,  NULL),
            ('Grace',   'HR',          70000,  6),
            ('Eve',     'Engineering', 98000,  1);

        -- Scalar subquery: above average salary
        SELECT name, salary
        FROM employees
        WHERE salary > (SELECT AVG(salary) FROM employees)
        ORDER BY salary DESC;

        -- IN with subquery: departments with avg > 80k
        SELECT name, department, salary
        FROM employees
        WHERE department IN (
            SELECT department FROM employees
            GROUP BY department
            HAVING AVG(salary) > 80000
        );

        -- Derived table: department stats
        SELECT dept_stats.department, dept_stats.avg_sal, dept_stats.headcount
        FROM (
            SELECT department,
                   ROUND(AVG(salary), 0) AS avg_sal,
                   COUNT(*) AS headcount
            FROM employees
            GROUP BY department
        ) AS dept_stats
        ORDER BY avg_sal DESC;

        -- Find managers (employees who manage someone)
        SELECT name, department FROM employees e
        WHERE id IN (SELECT DISTINCT manager_id FROM employees WHERE manager_id IS NOT NULL);
      SQL
    },

    9 => {
      body: <<~'HTML',
        <div class="lc-intro">
          <p>MySQL <strong>Views</strong> are named, saved SELECT queries that act as virtual tables. They simplify complex queries, enable security (hiding columns), and provide a stable interface even when the underlying table structure changes.</p>
        </div>
        <div class="lc-section">
          <h2>Creating Views</h2>
          <div class="lc-code-block"><pre><code>-- Create a view
CREATE VIEW active_employees AS
SELECT id, name, department, salary
FROM employees
WHERE is_active = 1;

-- Use like a table
SELECT * FROM active_employees;
SELECT department, COUNT(*) FROM active_employees GROUP BY department;

-- Replace an existing view
CREATE OR REPLACE VIEW active_employees AS ...;

-- Remove a view
DROP VIEW IF EXISTS active_employees;</code></pre></div>
        </div>
        <div class="lc-section">
          <h2>Views for Security</h2>
          <div class="lc-code-block"><pre><code>-- Hide sensitive columns
CREATE VIEW employee_public AS
SELECT id, name, department, title
FROM employees;
-- salary and SSN are NOT exposed in this view

-- Grant access to the view but NOT the base table
GRANT SELECT ON mydb.employee_public TO 'app_user'@'localhost';</code></pre></div>
        </div>
        <div class="lc-section">
          <h2>Updatable Views</h2>
          <div class="lc-code-block"><pre><code>-- Simple views (no GROUP BY, DISTINCT, subqueries) are updatable
UPDATE active_employees SET salary = 100000 WHERE id = 1;
-- This updates the underlying employees table!</code></pre></div>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>Views don't store data — they store the query. Every <code>SELECT * FROM my_view</code> reruns the underlying SQL. If performance matters and the view is complex, consider a <strong>materialized view</strong> (stored as a table, refreshed periodically).</p></div>
      HTML
      starter_code: <<~'SQL'
        -- MySQL Views

        CREATE TABLE employees (
            id         INT AUTO_INCREMENT PRIMARY KEY,
            name       VARCHAR(100),
            department VARCHAR(50),
            salary     DECIMAL(10,2),
            hire_year  INT,
            is_active  TINYINT DEFAULT 1
        );

        INSERT INTO employees (name, department, salary, hire_year, is_active) VALUES
            ('Alice',   'Engineering', 95000,  2020, 1),
            ('Bob',     'Marketing',   72000,  2019, 1),
            ('Carol',   'Engineering', 105000, 2018, 1),
            ('Dave',    'HR',          65000,  2021, 1),
            ('Eve',     'Engineering', 98000,  2020, 1),
            ('Frank',   'Marketing',   78000,  2017, 0),
            ('Grace',   'HR',          70000,  2022, 1),
            ('Henry',   'Engineering', 112000, 2015, 1);

        -- View 1: Active high earners (no sensitive data exposed)
        CREATE VIEW high_earners AS
        SELECT name, department, salary
        FROM employees
        WHERE salary > 90000 AND is_active = 1;

        SELECT * FROM high_earners ORDER BY salary DESC;

        -- View 2: Department summary
        CREATE VIEW dept_summary AS
        SELECT
            department,
            COUNT(*) AS headcount,
            ROUND(AVG(salary), 0) AS avg_salary,
            MAX(salary) AS top_salary,
            GROUP_CONCAT(name ORDER BY name SEPARATOR ', ') AS members
        FROM employees
        WHERE is_active = 1
        GROUP BY department;

        SELECT * FROM dept_summary ORDER BY avg_salary DESC;

        -- Use view in query
        SELECT department FROM dept_summary WHERE avg_salary > 85000;
      SQL
    },

    10 => {
      body: <<~'HTML',
        <div class="lc-intro">
          <p>MySQL <strong>Stored Procedures</strong> are named, precompiled SQL programs stored in the database. They encapsulate business logic, reduce network traffic (only the call travels to the server), and can be reused by multiple applications.</p>
        </div>
        <div class="lc-section">
          <h2>Creating a Stored Procedure</h2>
          <div class="lc-code-block"><pre><code>-- Change delimiter to avoid conflict with semicolons inside
DELIMITER //

CREATE PROCEDURE GetHighEarners(IN min_salary DECIMAL(10,2))
BEGIN
    SELECT name, department, salary
    FROM employees
    WHERE salary >= min_salary
    ORDER BY salary DESC;
END //

DELIMITER ;

-- Call the procedure
CALL GetHighEarners(90000);</code></pre></div>
        </div>
        <div class="lc-section">
          <h2>Parameter Types</h2>
          <table class="lc-table">
            <thead><tr><th>Type</th><th>Direction</th><th>Use</th></tr></thead>
            <tbody>
              <tr><td><code>IN</code></td><td>Caller → Procedure</td><td>Input value (default)</td></tr>
              <tr><td><code>OUT</code></td><td>Procedure → Caller</td><td>Return a single value</td></tr>
              <tr><td><code>INOUT</code></td><td>Both directions</td><td>Modify a caller's variable</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-section">
          <h2>Procedure with OUT Parameter</h2>
          <div class="lc-code-block"><pre><code>DELIMITER //
CREATE PROCEDURE GetDeptCount(
    IN dept_name VARCHAR(50),
    OUT emp_count INT
)
BEGIN
    SELECT COUNT(*) INTO emp_count
    FROM employees WHERE department = dept_name;
END //
DELIMITER ;

-- Call and retrieve output
CALL GetDeptCount('Engineering', @cnt);
SELECT @cnt AS engineering_count;</code></pre></div>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>The <code>DELIMITER</code> command temporarily changes MySQL's statement separator. Inside a stored procedure, semicolons end individual statements. Without changing the delimiter, MySQL would end the CREATE PROCEDURE at the first semicolon inside the body!</p></div>
      HTML
      starter_code: <<~'SQL'
        -- Stored Procedures (simulated with regular SQL)
        -- In real MySQL: DELIMITER // ... DELIMITER ;

        CREATE TABLE employees (
            id         INT AUTO_INCREMENT PRIMARY KEY,
            name       VARCHAR(100),
            department VARCHAR(50),
            salary     DECIMAL(10,2)
        );

        INSERT INTO employees (name, department, salary) VALUES
            ('Alice',  'Engineering', 95000),
            ('Bob',    'Marketing',   72000),
            ('Carol',  'Engineering', 105000),
            ('Dave',   'HR',          65000),
            ('Eve',    'Engineering', 98000),
            ('Frank',  'Marketing',   78000),
            ('Grace',  'HR',          70000),
            ('Henry',  'Engineering', 112000);

        -- Simulating procedure: GetHighEarners(90000)
        SELECT name, department, salary
        FROM employees
        WHERE salary >= 90000
        ORDER BY salary DESC;

        -- Simulating procedure: GetDeptStats('Engineering')
        SELECT
            department,
            COUNT(*)                   AS headcount,
            ROUND(AVG(salary), 0)      AS avg_salary,
            MIN(salary)                AS min_salary,
            MAX(salary)                AS max_salary,
            SUM(salary)                AS total_payroll
        FROM employees
        WHERE department = 'Engineering';

        -- Simulating procedure: GiveRaise(dept, pct)
        -- Give Engineering a 10% raise
        UPDATE employees
        SET salary = salary * 1.10
        WHERE department = 'Engineering';

        SELECT name, department, salary FROM employees ORDER BY department, salary DESC;
      SQL
    },

    11 => {
      body: <<~'HTML',
        <div class="lc-intro">
          <p>MySQL <strong>Stored Functions</strong> are like stored procedures but they return a single value and can be used directly inside SQL expressions — just like built-in functions. They are perfect for encapsulating complex calculations.</p>
        </div>
        <div class="lc-section">
          <h2>Creating a Function</h2>
          <div class="lc-code-block"><pre><code>DELIMITER //

CREATE FUNCTION CalculateTax(salary DECIMAL(10,2))
RETURNS DECIMAL(10,2)
DETERMINISTIC
BEGIN
    DECLARE tax DECIMAL(10,2);
    IF salary > 100000 THEN
        SET tax = salary * 0.30;
    ELSEIF salary > 60000 THEN
        SET tax = salary * 0.20;
    ELSE
        SET tax = salary * 0.10;
    END IF;
    RETURN tax;
END //

DELIMITER ;

-- Use in a SELECT like any function!
SELECT name, salary, CalculateTax(salary) AS tax FROM employees;</code></pre></div>
        </div>
        <div class="lc-section">
          <h2>Procedure vs Function</h2>
          <table class="lc-table">
            <thead><tr><th></th><th>Procedure</th><th>Function</th></tr></thead>
            <tbody>
              <tr><td>Called with</td><td><code>CALL proc()</code></td><td>In SELECT, WHERE, etc.</td></tr>
              <tr><td>Returns</td><td>Result sets / OUT params</td><td>A single value</td></tr>
              <tr><td>IN/OUT params</td><td>✅ Yes</td><td>IN only</td></tr>
              <tr><td>Use in SQL</td><td>❌ Cannot</td><td>✅ Yes</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-section">
          <h2>Variables and IF in Procedures</h2>
          <div class="lc-code-block"><pre><code>DECLARE @variable_name datatype;   -- Declare
SET @variable = value;             -- Assign

IF condition THEN
    -- statements
ELSEIF other_condition THEN
    -- statements
ELSE
    -- statements
END IF;</code></pre></div>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>Mark functions as <code>DETERMINISTIC</code> if they always return the same output for the same input (like a tax calculation). This hint allows MySQL to cache and optimise calls. If the result depends on the current time or random values, do NOT use DETERMINISTIC.</p></div>
      HTML
      starter_code: <<~'SQL'
        -- Stored Functions (simulated with CASE expressions)

        CREATE TABLE employees (
            id         INT AUTO_INCREMENT PRIMARY KEY,
            name       VARCHAR(100),
            department VARCHAR(50),
            salary     DECIMAL(10,2)
        );

        INSERT INTO employees (name, department, salary) VALUES
            ('Alice',  'Engineering', 95000),
            ('Bob',    'Marketing',   55000),
            ('Carol',  'Engineering', 115000),
            ('Dave',   'HR',          48000),
            ('Eve',    'Engineering', 98000),
            ('Frank',  'Marketing',   72000),
            ('Grace',  'HR',          65000),
            ('Henry',  'Engineering', 125000);

        -- Simulate CalculateTax() function using CASE
        SELECT
            name,
            salary,
            CASE
                WHEN salary > 100000 THEN ROUND(salary * 0.30, 2)
                WHEN salary > 60000  THEN ROUND(salary * 0.20, 2)
                ELSE                      ROUND(salary * 0.10, 2)
            END AS tax_amount,
            CASE
                WHEN salary > 100000 THEN salary - ROUND(salary * 0.30, 2)
                WHEN salary > 60000  THEN salary - ROUND(salary * 0.20, 2)
                ELSE                      salary - ROUND(salary * 0.10, 2)
            END AS take_home
        FROM employees
        ORDER BY salary DESC;

        -- Simulate GetGrade() function
        SELECT
            name,
            salary,
            CASE
                WHEN salary >= 110000 THEN 'L5 - Principal'
                WHEN salary >= 90000  THEN 'L4 - Senior'
                WHEN salary >= 65000  THEN 'L3 - Mid'
                ELSE                       'L2 - Junior'
            END AS level
        FROM employees
        ORDER BY salary DESC;
      SQL
    },

    12 => {
      body: <<~'HTML',
        <div class="lc-intro">
          <p>MySQL <strong>Triggers</strong> are SQL code that automatically executes <em>before</em> or <em>after</em> a specific event (INSERT, UPDATE, DELETE) on a table. They enforce business rules, maintain audit logs, and keep data consistent.</p>
        </div>
        <div class="lc-section">
          <h2>Trigger Syntax</h2>
          <div class="lc-code-block"><pre><code>DELIMITER //

CREATE TRIGGER before_salary_update
BEFORE UPDATE ON employees
FOR EACH ROW
BEGIN
    -- OLD.salary is the value before update
    -- NEW.salary is the value after update
    IF NEW.salary < 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Salary cannot be negative';
    END IF;
END //

DELIMITER ;</code></pre></div>
        </div>
        <div class="lc-section">
          <h2>Trigger Types</h2>
          <table class="lc-table">
            <thead><tr><th>Timing</th><th>Event</th><th>Use Case</th></tr></thead>
            <tbody>
              <tr><td><code>BEFORE INSERT</code></td><td>Before row added</td><td>Validate data, set defaults</td></tr>
              <tr><td><code>AFTER INSERT</code></td><td>After row added</td><td>Audit log, update stats</td></tr>
              <tr><td><code>BEFORE UPDATE</code></td><td>Before row changed</td><td>Prevent invalid changes</td></tr>
              <tr><td><code>AFTER UPDATE</code></td><td>After row changed</td><td>Log changes, cascade</td></tr>
              <tr><td><code>BEFORE DELETE</code></td><td>Before row removed</td><td>Archive, prevent delete</td></tr>
              <tr><td><code>AFTER DELETE</code></td><td>After row removed</td><td>Cleanup, audit</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>Triggers are powerful but can cause <strong>hidden side effects</strong> — your INSERT might silently trigger 3 other queries. Use them sparingly. For audit logging (a great use case), name them clearly: <code>after_employees_salary_update</code>.</p></div>
      HTML
      starter_code: <<~'SQL'
        -- Triggers (simulated with audit log table)

        CREATE TABLE employees (
            id        INT AUTO_INCREMENT PRIMARY KEY,
            name      VARCHAR(100),
            salary    DECIMAL(10,2),
            updated_at DATETIME DEFAULT CURRENT_TIMESTAMP
        );

        CREATE TABLE salary_audit (
            id          INT AUTO_INCREMENT PRIMARY KEY,
            employee_id INT,
            old_salary  DECIMAL(10,2),
            new_salary  DECIMAL(10,2),
            changed_at  DATETIME DEFAULT CURRENT_TIMESTAMP,
            change_pct  DECIMAL(5,2)
        );

        INSERT INTO employees (name, salary) VALUES
            ('Alice',  95000), ('Bob',  72000),
            ('Carol', 105000), ('Dave', 65000);

        -- Simulate AFTER UPDATE trigger: log salary changes
        -- Step 1: View current salaries
        SELECT * FROM employees;

        -- Step 2: Give raises (normally a trigger would auto-log this)
        UPDATE employees SET salary = salary * 1.10 WHERE name = 'Alice';
        UPDATE employees SET salary = salary * 1.05 WHERE name = 'Carol';

        -- Step 3: Manually log what the trigger would capture
        INSERT INTO salary_audit (employee_id, old_salary, new_salary, change_pct)
        VALUES (1, 95000, 104500, 10.00),
               (3, 105000, 110250, 5.00);

        SELECT * FROM employees;
        SELECT * FROM salary_audit;

        -- Trigger use case: validate salary > 0
        SELECT
            name,
            salary,
            CASE WHEN salary <= 0 THEN 'INVALID - trigger would block!'
                 ELSE 'Valid' END AS validation
        FROM employees;
      SQL
    },

    13 => {
      body: <<~'HTML',
        <div class="lc-intro">
          <p>MySQL transactions ensure that a group of SQL operations either <strong>all succeed or all fail together</strong>. This is critical for financial operations, inventory management, and any operation where data consistency is required across multiple tables.</p>
        </div>
        <div class="lc-section">
          <h2>Transaction Control Commands</h2>
          <div class="lc-code-block"><pre><code>START TRANSACTION;  -- Begin a transaction (also: BEGIN;)

-- Database operations...
UPDATE accounts SET balance = balance - 5000 WHERE id = 1;
UPDATE accounts SET balance = balance + 5000 WHERE id = 2;

COMMIT;      -- Save all changes permanently
-- OR
ROLLBACK;    -- Undo ALL changes since START TRANSACTION

SAVEPOINT my_point;          -- Create a checkpoint
ROLLBACK TO SAVEPOINT my_point;  -- Roll back to checkpoint</code></pre></div>
        </div>
        <div class="lc-section">
          <h2>MySQL Storage Engine and Transactions</h2>
          <div class="lc-code-block"><pre><code>-- InnoDB supports transactions (DEFAULT in MySQL 5.5+)
CREATE TABLE accounts (
    id      INT PRIMARY KEY,
    balance DECIMAL(10,2)
) ENGINE = InnoDB;

-- MyISAM does NOT support transactions
-- Always use InnoDB for transactional tables!</code></pre></div>
        </div>
        <div class="lc-section">
          <h2>Auto-commit</h2>
          <div class="lc-code-block"><pre><code>-- By default, each statement is its own transaction (auto-commit ON)
SHOW VARIABLES LIKE 'autocommit';

-- Turn off auto-commit for the session
SET autocommit = 0;</code></pre></div>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>In MySQL, <code>InnoDB</code> is the default storage engine and the one to use for transactions, foreign keys, and row-level locking. Always create tables with <code>ENGINE=InnoDB</code> (or rely on the default). <code>MyISAM</code> tables cannot be rolled back!</p></div>
      HTML
      starter_code: <<~'SQL'
        -- MySQL Transactions

        CREATE TABLE bank_accounts (
            id      INT PRIMARY KEY,
            owner   VARCHAR(100),
            balance DECIMAL(10,2) NOT NULL CHECK (balance >= 0)
        );

        INSERT INTO bank_accounts VALUES
            (1, 'Alice', 50000),
            (2, 'Bob',   30000),
            (3, 'Carol', 75000);

        SELECT * FROM bank_accounts;
        SELECT 'Total money in system:' AS label, SUM(balance) AS total FROM bank_accounts;

        -- Transaction 1: Alice sends 10000 to Bob
        BEGIN;
            UPDATE bank_accounts SET balance = balance - 10000 WHERE id = 1;
            UPDATE bank_accounts SET balance = balance + 10000 WHERE id = 2;
        COMMIT;

        SELECT * FROM bank_accounts;

        -- Transaction 2: Carol sends 5000 to Alice
        BEGIN;
            UPDATE bank_accounts SET balance = balance - 5000  WHERE id = 3;
            UPDATE bank_accounts SET balance = balance + 5000  WHERE id = 1;
        COMMIT;

        -- Final state
        SELECT owner, balance FROM bank_accounts ORDER BY owner;
        SELECT 'Total (should be 155000):' AS label, SUM(balance) AS total FROM bank_accounts;
      SQL
    },

    14 => {
      body: <<~'HTML',
        <div class="lc-intro">
          <p>MySQL <strong>indexes</strong> dramatically speed up queries by allowing the database to find rows without scanning the entire table. The <code>EXPLAIN</code> statement reveals how MySQL executes a query — essential for finding and fixing performance bottlenecks.</p>
        </div>
        <div class="lc-section">
          <h2>Index Types in MySQL</h2>
          <table class="lc-table">
            <thead><tr><th>Type</th><th>Description</th></tr></thead>
            <tbody>
              <tr><td><code>PRIMARY KEY</code></td><td>Clustered index — data physically ordered by this</td></tr>
              <tr><td><code>INDEX</code> / <code>KEY</code></td><td>B-tree index — speeds up equality and range queries</td></tr>
              <tr><td><code>UNIQUE INDEX</code></td><td>Like INDEX but enforces uniqueness</td></tr>
              <tr><td><code>FULLTEXT</code></td><td>For full-text search with MATCH...AGAINST</td></tr>
              <tr><td><code>SPATIAL</code></td><td>For geographic data types</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-section">
          <h2>Creating Indexes</h2>
          <div class="lc-code-block"><pre><code>-- At table creation
CREATE TABLE employees (
    id    INT PRIMARY KEY,
    email VARCHAR(255) UNIQUE,
    dept  VARCHAR(50),
    INDEX idx_dept (dept),
    INDEX idx_dept_salary (dept, salary)  -- Composite index
);

-- After table creation
CREATE INDEX idx_name ON employees(last_name);
ALTER TABLE employees ADD INDEX idx_hire (hire_date);

-- Remove an index
DROP INDEX idx_name ON employees;
ALTER TABLE employees DROP INDEX idx_name;</code></pre></div>
        </div>
        <div class="lc-section">
          <h2>EXPLAIN — See the Query Plan</h2>
          <div class="lc-code-block"><pre><code>EXPLAIN SELECT * FROM employees WHERE department = 'Engineering';
-- Look at: type (ALL=bad, ref/eq_ref/const=good), key (index used), rows (est. scanned)</code></pre></div>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>MySQL can only use an index if the <strong>leftmost column</strong> of a composite index is in your WHERE clause. Index <code>(dept, salary)</code> helps <code>WHERE dept = 'HR'</code> but NOT <code>WHERE salary &gt; 80000</code> alone. This is called the "leftmost prefix rule."</p></div>
      HTML
      starter_code: <<~'SQL'
        -- MySQL Indexes and Performance

        CREATE TABLE employees (
            id         INT AUTO_INCREMENT PRIMARY KEY,
            name       VARCHAR(100),
            department VARCHAR(50),
            salary     DECIMAL(10,2),
            hire_date  DATE,
            email      VARCHAR(150) UNIQUE,
            INDEX idx_department (department),
            INDEX idx_dept_salary (department, salary)
        );

        INSERT INTO employees (name, department, salary, hire_date, email) VALUES
            ('Alice',  'Engineering', 95000,  '2020-03-15', 'alice@co.com'),
            ('Bob',    'Marketing',   72000,  '2019-07-01', 'bob@co.com'),
            ('Carol',  'Engineering', 105000, '2018-11-20', 'carol@co.com'),
            ('Dave',   'HR',          65000,  '2021-02-28', 'dave@co.com'),
            ('Eve',    'Engineering', 98000,  '2020-09-10', 'eve@co.com'),
            ('Frank',  'Marketing',   78000,  '2017-04-05', 'frank@co.com'),
            ('Grace',  'HR',          70000,  '2022-01-17', 'grace@co.com'),
            ('Henry',  'Engineering', 112000, '2015-06-22', 'henry@co.com');

        -- These queries use the idx_department index
        SELECT * FROM employees WHERE department = 'Engineering';

        -- This uses the composite idx_dept_salary index
        SELECT name, salary FROM employees
        WHERE department = 'Engineering' AND salary > 90000;

        -- This uses the UNIQUE index on email
        SELECT * FROM employees WHERE email = 'alice@co.com';

        -- Check index effectiveness with EXPLAIN (MySQL specific)
        -- EXPLAIN SELECT * FROM employees WHERE department = 'Engineering';

        -- Query without index benefit (no index on salary alone)
        SELECT name, salary FROM employees
        WHERE salary BETWEEN 70000 AND 100000
        ORDER BY salary;
      SQL
    },

    15 => {
      body: <<~'HTML',
        <div class="lc-intro">
          <p>MySQL has a robust <strong>user and permission system</strong>. You can create database users, grant specific privileges on specific databases/tables, and revoke them. This is essential for securing production databases.</p>
        </div>
        <div class="lc-section">
          <h2>Creating Users</h2>
          <div class="lc-code-block"><pre><code>-- Create a user (who can connect from any host)
CREATE USER 'appuser'@'%' IDENTIFIED BY 'secure_password_123';

-- Create a user (only from localhost)
CREATE USER 'admin'@'localhost' IDENTIFIED BY 'admin_pass';

-- Change password
ALTER USER 'appuser'@'%' IDENTIFIED BY 'new_password';

-- Delete user
DROP USER 'appuser'@'%';</code></pre></div>
        </div>
        <div class="lc-section">
          <h2>GRANT — Assigning Permissions</h2>
          <div class="lc-code-block"><pre><code>-- Read-only access to one database
GRANT SELECT ON myapp.* TO 'readonly_user'@'%';

-- Full access to one database
GRANT ALL PRIVILEGES ON myapp.* TO 'appuser'@'%';

-- Specific permissions on one table
GRANT SELECT, INSERT, UPDATE ON myapp.orders TO 'app'@'localhost';

-- Super admin (all databases)
GRANT ALL PRIVILEGES ON *.* TO 'admin'@'localhost' WITH GRANT OPTION;

-- Apply changes
FLUSH PRIVILEGES;</code></pre></div>
        </div>
        <div class="lc-section">
          <h2>REVOKE and SHOW</h2>
          <div class="lc-code-block"><pre><code>REVOKE DELETE ON myapp.* FROM 'appuser'@'%';
SHOW GRANTS FOR 'appuser'@'%';
SHOW PROCESSLIST;   -- Active connections
SHOW VARIABLES LIKE 'max_connections';</code></pre></div>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>Follow the <strong>principle of least privilege</strong> — never give an application user more permissions than it needs. A web app only needs SELECT/INSERT/UPDATE/DELETE on its own database. Never connect your app with the <code>root</code> user!</p></div>
      HTML
      starter_code: <<~'SQL'
        -- MySQL User Security (simulated queries)

        -- In real MySQL, you would run:
        -- CREATE USER 'webuser'@'localhost' IDENTIFIED BY 'SecurePass!1';
        -- GRANT SELECT, INSERT, UPDATE ON myapp.* TO 'webuser'@'localhost';
        -- FLUSH PRIVILEGES;

        -- Simulate permission levels with a permissions table
        CREATE TABLE db_users (
            id         INT AUTO_INCREMENT PRIMARY KEY,
            username   VARCHAR(50) NOT NULL UNIQUE,
            host       VARCHAR(50) DEFAULT '%',
            role       VARCHAR(30),
            created_at DATE
        );

        CREATE TABLE user_grants (
            user_id    INT,
            db_name    VARCHAR(50),
            privilege  VARCHAR(50)
        );

        INSERT INTO db_users (username, host, role, created_at) VALUES
            ('root',        'localhost', 'super_admin',   '2020-01-01'),
            ('appuser',     '%',         'application',   '2021-03-15'),
            ('readonly',    '%',         'reporting',     '2021-06-01'),
            ('backup_user', 'localhost', 'backup',        '2022-01-10');

        INSERT INTO user_grants VALUES
            (1, '*.*',     'ALL PRIVILEGES'),
            (2, 'myapp.*', 'SELECT'),
            (2, 'myapp.*', 'INSERT'),
            (2, 'myapp.*', 'UPDATE'),
            (3, 'myapp.*', 'SELECT'),
            (4, 'myapp.*', 'SELECT');

        -- View user permissions
        SELECT u.username, u.role, g.db_name,
               GROUP_CONCAT(g.privilege ORDER BY g.privilege SEPARATOR ', ') AS grants
        FROM db_users u
        LEFT JOIN user_grants g ON u.id = g.user_id
        GROUP BY u.username, u.role, g.db_name
        ORDER BY u.id;
      SQL
    },

    16 => {
      body: <<~'HTML',
        <div class="lc-intro">
          <p>MySQL 5.7+ supports a native <strong>JSON column type</strong> that stores JSON documents with validation, indexing, and rich query functions. This bridges the gap between relational and document databases.</p>
        </div>
        <div class="lc-section">
          <h2>JSON Column</h2>
          <div class="lc-code-block"><pre><code>CREATE TABLE products (
    id       INT PRIMARY KEY,
    name     VARCHAR(100),
    metadata JSON    -- Stores any valid JSON
);

INSERT INTO products VALUES
(1, 'Laptop', '{"brand":"Apple","ram":16,"ssd":512,"color":"Silver"}'),
(2, 'Phone',  '{"brand":"Samsung","ram":8,"5g":true}');</code></pre></div>
        </div>
        <div class="lc-section">
          <h2>JSON Functions</h2>
          <table class="lc-table">
            <thead><tr><th>Function</th><th>Purpose</th></tr></thead>
            <tbody>
              <tr><td><code>JSON_EXTRACT(col, path)</code></td><td>Get value at JSON path</td></tr>
              <tr><td><code>col-&gt;'$.key'</code></td><td>Shorthand for JSON_EXTRACT</td></tr>
              <tr><td><code>col-&gt;&gt;'$.key'</code></td><td>Unquoted value (for strings)</td></tr>
              <tr><td><code>JSON_OBJECT(k,v,...)</code></td><td>Create JSON object</td></tr>
              <tr><td><code>JSON_ARRAY(v,...)</code></td><td>Create JSON array</td></tr>
              <tr><td><code>JSON_KEYS(col)</code></td><td>Get all keys</td></tr>
              <tr><td><code>JSON_SET(col, path, val)</code></td><td>Update a value</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-section">
          <h2>Querying JSON</h2>
          <div class="lc-code-block"><pre><code>-- Extract a value
SELECT name, metadata->>'$.brand' AS brand
FROM products;

-- Filter on JSON value
SELECT name FROM products
WHERE metadata->>'$.brand' = 'Apple';</code></pre></div>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>For frequently queried JSON fields, create a <strong>generated column</strong> and index it: <code>brand VARCHAR(50) AS (metadata->>'$.brand') STORED, INDEX(brand)</code>. This gives you JSON flexibility with relational query speed.</p></div>
      HTML
      starter_code: <<~'SQL'
        -- MySQL JSON Support

        CREATE TABLE products (
            id       INT AUTO_INCREMENT PRIMARY KEY,
            name     VARCHAR(100) NOT NULL,
            category VARCHAR(50),
            price    DECIMAL(10,2),
            specs    TEXT   -- Storing JSON as TEXT for simulator
        );

        INSERT INTO products (name, category, price, specs) VALUES
            ('MacBook Pro M3',  'Laptop',  175000, '{"brand":"Apple","ram_gb":16,"ssd_gb":512,"display":"14-inch","weight_kg":1.6}'),
            ('iPhone 15 Pro',   'Phone',   134900, '{"brand":"Apple","storage_gb":256,"camera_mp":48,"5g":true,"color":"Titanium"}'),
            ('Samsung S24',     'Phone',    89999, '{"brand":"Samsung","storage_gb":128,"camera_mp":50,"5g":true,"color":"Phantom Black"}'),
            ('Dell XPS 15',     'Laptop',  142000, '{"brand":"Dell","ram_gb":32,"ssd_gb":1024,"display":"15.6-inch","weight_kg":1.86}'),
            ('iPad Pro M2',     'Tablet',   92000, '{"brand":"Apple","ram_gb":8,"storage_gb":256,"display":"12.9-inch","5g":false}');

        -- View all products
        SELECT id, name, category, price FROM products;

        -- Simulate JSON extraction with SUBSTRING/LOCATE
        SELECT
            name,
            price,
            CASE WHEN specs LIKE '%"brand":"Apple"%' THEN 'Apple'
                 WHEN specs LIKE '%"brand":"Samsung"%' THEN 'Samsung'
                 WHEN specs LIKE '%"brand":"Dell"%' THEN 'Dell'
                 ELSE 'Other' END AS brand
        FROM products;

        -- Products with 5G support
        SELECT name, category, price
        FROM products
        WHERE specs LIKE '%"5g":true%'
        ORDER BY price;

        -- Summary by brand
        SELECT
            CASE WHEN specs LIKE '%"brand":"Apple"%' THEN 'Apple'
                 WHEN specs LIKE '%"brand":"Samsung"%' THEN 'Samsung'
                 ELSE 'Other' END AS brand,
            COUNT(*) AS products,
            ROUND(AVG(price), 0) AS avg_price
        FROM products
        GROUP BY brand
        ORDER BY avg_price DESC;
      SQL
    },

    17 => {
      body: <<~'HTML',
        <div class="lc-intro">
          <p>MySQL 8.0 introduced <strong>Window Functions</strong> — one of the most powerful SQL features. They perform calculations across a set of related rows (a "window") without collapsing them into groups like GROUP BY. <code>ROW_NUMBER()</code>, <code>RANK()</code>, <code>LAG()</code>, and <code>LEAD()</code> enable analytics that were previously impossible without complex self-joins.</p>
        </div>
        <div class="lc-section">
          <h2>Window Function Syntax</h2>
          <div class="lc-code-block"><pre><code>function_name() OVER (
    [PARTITION BY column]    -- Group rows (like GROUP BY but keeps all rows)
    [ORDER BY column]        -- Define order within the window
    [ROWS/RANGE BETWEEN ...] -- Frame specification
)</code></pre></div>
        </div>
        <div class="lc-section">
          <h2>Common Window Functions</h2>
          <table class="lc-table">
            <thead><tr><th>Function</th><th>Returns</th></tr></thead>
            <tbody>
              <tr><td><code>ROW_NUMBER()</code></td><td>Sequential row number (1, 2, 3, …)</td></tr>
              <tr><td><code>RANK()</code></td><td>Rank with gaps (1, 2, 2, 4)</td></tr>
              <tr><td><code>DENSE_RANK()</code></td><td>Rank without gaps (1, 2, 2, 3)</td></tr>
              <tr><td><code>LAG(col, n)</code></td><td>Value from n rows before</td></tr>
              <tr><td><code>LEAD(col, n)</code></td><td>Value from n rows after</td></tr>
              <tr><td><code>SUM/AVG OVER()</code></td><td>Running total/average</td></tr>
              <tr><td><code>FIRST_VALUE(col)</code></td><td>First value in window</td></tr>
              <tr><td><code>NTILE(n)</code></td><td>Divide rows into n buckets</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>Window functions require <strong>MySQL 8.0+</strong>. Check your version with <code>SELECT VERSION();</code>. Unlike GROUP BY, window functions don't reduce the number of rows — every input row appears in the output, each with its window calculation.</p></div>
      HTML
      starter_code: <<~'SQL'
        -- MySQL Window Functions (MySQL 8.0+)
        -- Simulated with subqueries for compatibility

        CREATE TABLE monthly_sales (
            id         INT AUTO_INCREMENT PRIMARY KEY,
            sales_rep  VARCHAR(100),
            month      VARCHAR(7),
            revenue    DECIMAL(10,2)
        );

        INSERT INTO monthly_sales (sales_rep, month, revenue) VALUES
            ('Alice', '2024-01', 85000),  ('Alice', '2024-02', 92000),
            ('Alice', '2024-03', 78000),  ('Alice', '2024-04', 110000),
            ('Bob',   '2024-01', 62000),  ('Bob',   '2024-02', 75000),
            ('Bob',   '2024-03', 88000),  ('Bob',   '2024-04', 71000),
            ('Carol', '2024-01', 95000),  ('Carol', '2024-02', 102000),
            ('Carol', '2024-03', 89000),  ('Carol', '2024-04', 115000);

        -- All sales with rankings per month
        SELECT month, sales_rep, revenue FROM monthly_sales ORDER BY month, revenue DESC;

        -- Best performer each month (simulate RANK OVER PARTITION BY month)
        SELECT ms.month, ms.sales_rep, ms.revenue AS top_revenue
        FROM monthly_sales ms
        WHERE ms.revenue = (
            SELECT MAX(revenue) FROM monthly_sales
            WHERE month = ms.month
        )
        ORDER BY month;

        -- Running total per sales rep (simulate SUM OVER)
        SELECT
            s1.sales_rep,
            s1.month,
            s1.revenue,
            SUM(s2.revenue) AS running_total
        FROM monthly_sales s1
        JOIN monthly_sales s2 ON s1.sales_rep = s2.sales_rep
            AND s2.month <= s1.month
        GROUP BY s1.sales_rep, s1.month, s1.revenue
        ORDER BY s1.sales_rep, s1.month;

        -- Overall total per rep
        SELECT sales_rep, SUM(revenue) AS total, ROUND(AVG(revenue),0) AS avg_monthly
        FROM monthly_sales GROUP BY sales_rep ORDER BY total DESC;
      SQL
    },

    18 => {
      body: <<~'HTML',
        <div class="lc-intro">
          <p>MySQL <strong>FULLTEXT search</strong> enables fast, relevance-ranked text searches — far more powerful than <code>LIKE '%word%'</code>. It searches for words, phrases, and near-matches across large text columns and returns results ranked by relevance score.</p>
        </div>
        <div class="lc-section">
          <h2>Setting Up FULLTEXT</h2>
          <div class="lc-code-block"><pre><code>CREATE TABLE articles (
    id      INT PRIMARY KEY AUTO_INCREMENT,
    title   VARCHAR(200),
    body    TEXT,
    FULLTEXT ft_title_body (title, body)  -- FULLTEXT index
);

-- Or add after creation
ALTER TABLE articles ADD FULLTEXT INDEX ft_content (title, body);</code></pre></div>
        </div>
        <div class="lc-section">
          <h2>MATCH...AGAINST</h2>
          <div class="lc-code-block"><pre><code>-- Natural language search (default)
SELECT *, MATCH(title, body) AGAINST ('python tutorial') AS score
FROM articles
WHERE MATCH(title, body) AGAINST ('python tutorial');

-- Boolean mode (precise control)
SELECT * FROM articles
WHERE MATCH(title, body) AGAINST ('+python -beginner' IN BOOLEAN MODE);
-- + must include word, - must exclude word

-- Phrase search
WHERE MATCH(title) AGAINST ('"machine learning"' IN BOOLEAN MODE);</code></pre></div>
        </div>
        <div class="lc-section">
          <h2>Boolean Mode Operators</h2>
          <table class="lc-table">
            <thead><tr><th>Operator</th><th>Meaning</th></tr></thead>
            <tbody>
              <tr><td><code>+word</code></td><td>Word MUST be present</td></tr>
              <tr><td><code>-word</code></td><td>Word MUST NOT be present</td></tr>
              <tr><td><code>word*</code></td><td>Wildcard: starts with "word"</td></tr>
              <tr><td><code>"exact phrase"</code></td><td>Exact phrase match</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>FULLTEXT ignores words shorter than 4 characters (configurable with <code>ft_min_word_len</code>) and very common words (stopwords). For searches on small tables or with short words, <code>LIKE</code> may work better. For large content tables, FULLTEXT is orders of magnitude faster.</p></div>
      HTML
      starter_code: <<~'SQL'
        -- MySQL FULLTEXT Search (simulated with LIKE)

        CREATE TABLE articles (
            id          INT AUTO_INCREMENT PRIMARY KEY,
            title       VARCHAR(200) NOT NULL,
            body        TEXT,
            author      VARCHAR(100),
            published   DATE,
            views       INT DEFAULT 0
        );

        INSERT INTO articles (title, body, author, published, views) VALUES
            ('Introduction to MySQL', 'MySQL is the most popular open-source relational database. Learn MySQL basics including SELECT, INSERT, UPDATE, DELETE.', 'Alice', '2024-01-10', 1200),
            ('Python for Beginners', 'Python is a beginner-friendly programming language. This tutorial covers Python basics, variables, loops, and functions.', 'Bob', '2024-01-15', 2500),
            ('Machine Learning with Python', 'Learn machine learning using Python and scikit-learn. Topics include classification, regression, and neural networks.', 'Carol', '2024-02-01', 3200),
            ('MySQL Performance Tuning', 'Advanced MySQL optimization techniques including indexing strategies, EXPLAIN, and query optimization for large databases.', 'Alice', '2024-02-10', 980),
            ('Deep Learning Fundamentals', 'Deep learning and neural networks explained. Covers CNN, RNN, transformers, and practical Python implementations.', 'Dave', '2024-02-20', 4100),
            ('SQL vs NoSQL Databases', 'Comparing relational MySQL with NoSQL databases like MongoDB. When to use each type of database for your application.', 'Bob', '2024-03-01', 1800);

        -- Simulate MATCH AGAINST with LIKE
        SELECT id, title, author, views
        FROM articles
        WHERE title LIKE '%MySQL%' OR body LIKE '%MySQL%'
        ORDER BY views DESC;

        -- Simulate boolean search: Python AND machine learning
        SELECT title, author FROM articles
        WHERE (body LIKE '%Python%' OR title LIKE '%Python%')
          AND (body LIKE '%machine learning%' OR title LIKE '%machine learning%');

        -- Exclude beginners content
        SELECT title, author, views FROM articles
        WHERE (title LIKE '%Python%' OR body LIKE '%Python%')
          AND title NOT LIKE '%Beginner%'
        ORDER BY views DESC;

        -- Top articles by views
        SELECT title, author, views FROM articles ORDER BY views DESC LIMIT 3;
      SQL
    },

    19 => {
      body: <<~'HTML',
        <div class="lc-intro">
          <p>MySQL is most powerful when used <strong>from application code</strong>. PHP's PDO and MySQLi extensions, Python's mysql-connector, and Node.js's mysql2 library all connect to MySQL. The key is always using <strong>prepared statements</strong> to prevent SQL injection.</p>
        </div>
        <div class="lc-section">
          <h2>PHP PDO Connection</h2>
          <div class="lc-code-block"><pre><code>&lt;?php
$pdo = new PDO(
    'mysql:host=localhost;dbname=myapp;charset=utf8mb4',
    'username',
    'password'
);
$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

// Prepared statement — prevents SQL injection!
$stmt = $pdo->prepare("SELECT * FROM users WHERE email = ?");
$stmt->execute([$email]);
$user = $stmt->fetch(PDO::FETCH_ASSOC);</code></pre></div>
        </div>
        <div class="lc-section">
          <h2>Python mysql-connector</h2>
          <div class="lc-code-block"><pre><code>import mysql.connector

conn = mysql.connector.connect(
    host="localhost", database="myapp",
    user="username", password="password"
)
cursor = conn.cursor(dictionary=True)

# Prepared statement
cursor.execute("SELECT * FROM users WHERE id = %s", (user_id,))
user = cursor.fetchone()

# Insert
cursor.execute("INSERT INTO users (name, email) VALUES (%s, %s)", (name, email))
conn.commit()</code></pre></div>
        </div>
        <div class="lc-section">
          <h2>Common MySQL + App Patterns</h2>
          <table class="lc-table">
            <thead><tr><th>Pattern</th><th>Implementation</th></tr></thead>
            <tbody>
              <tr><td>Connection pooling</td><td>Reuse connections (never reconnect per request)</td></tr>
              <tr><td>Prepared statements</td><td>Always use for user input — prevents SQL injection</td></tr>
              <tr><td>Error handling</td><td>Catch exceptions, log errors, show safe messages</td></tr>
              <tr><td>Pagination</td><td><code>LIMIT 20 OFFSET (page-1)*20</code></td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p><strong>SQL Injection</strong> is one of the most common and dangerous web vulnerabilities (it is part of the OWASP Top 10). <code>"SELECT * FROM users WHERE name = '$input'"</code> — if <code>$input</code> is <code>' OR '1'='1</code>, it returns all users! Prepared statements stop this by sending the SQL and the data separately. They can't protect table or column names built from user input — whitelist those instead.</p></div>
      HTML
      starter_code: <<~'SQL'
        -- MySQL with Applications (Connection patterns)

        CREATE TABLE api_keys (
            id         INT AUTO_INCREMENT PRIMARY KEY,
            user_id    INT NOT NULL,
            api_key    VARCHAR(64) NOT NULL UNIQUE,
            created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
            last_used  DATETIME,
            requests   INT DEFAULT 0
        );

        CREATE TABLE app_users (
            id            INT AUTO_INCREMENT PRIMARY KEY,
            email         VARCHAR(255) NOT NULL UNIQUE,
            password_hash VARCHAR(255) NOT NULL,
            name          VARCHAR(100),
            is_active     TINYINT(1) DEFAULT 1,
            last_login    DATETIME,
            login_count   INT DEFAULT 0,
            created_at    DATETIME DEFAULT CURRENT_TIMESTAMP
        );

        INSERT INTO app_users (email, password_hash, name, login_count, last_login) VALUES
            ('alice@app.com', '$2y$10$hash1...', 'Alice Kumar', 45, '2024-03-15'),
            ('bob@app.com',   '$2y$10$hash2...', 'Bob Singh',   12, '2024-03-10'),
            ('carol@app.com', '$2y$10$hash3...', 'Carol Patel', 89, '2024-03-16'),
            ('dave@app.com',  '$2y$10$hash4...', 'Dave Shah',    3, '2024-02-20');

        -- Simulate: SELECT user for login
        SELECT id, name, email, is_active FROM app_users
        WHERE email = 'alice@app.com' AND is_active = 1;

        -- Simulate: Update last login on successful auth
        UPDATE app_users
        SET last_login = CURRENT_TIMESTAMP, login_count = login_count + 1
        WHERE email = 'alice@app.com';

        -- Simulate: Paginate users (page 1, 2 per page)
        SELECT id, name, email, login_count
        FROM app_users WHERE is_active = 1
        ORDER BY name LIMIT 2 OFFSET 0;

        -- Active users and their stats
        SELECT name, email, login_count,
               CASE WHEN login_count > 50 THEN 'Power User'
                    WHEN login_count > 10 THEN 'Regular'
                    ELSE 'Occasional' END AS user_type
        FROM app_users
        WHERE is_active = 1
        ORDER BY login_count DESC;
      SQL
    },

    20 => {
      body: <<~'HTML',
        <div class="lc-intro">
          <p>Congratulations on completing the MySQL course! You now understand one of the most powerful and widely-deployed database systems in the world. MySQL is the backbone of millions of web applications — and the skills you've learned transfer directly to MariaDB, Amazon RDS, Google Cloud SQL, and Azure MySQL.</p>
        </div>
        <div class="lc-section">
          <h2>MySQL-Specific Features Mastered ✓</h2>
          <ul class="lc-list lc-list-check">
            <li>Data types: <code>INT</code> sizes, <code>DECIMAL</code> for money, <code>ENUM</code>, <code>VARCHAR</code> vs <code>TEXT</code></li>
            <li><code>AUTO_INCREMENT</code>, <code>PRIMARY KEY</code>, <code>FOREIGN KEY</code> with <code>ON DELETE CASCADE</code></li>
            <li>String functions: <code>CONCAT()</code>, <code>CONCAT_WS()</code>, <code>LPAD()</code>, <code>FORMAT()</code>, <code>REGEXP</code></li>
            <li>Date functions: <code>DATE_FORMAT()</code>, <code>DATEDIFF()</code>, <code>DATE_ADD()</code>, <code>TIMESTAMPDIFF()</code></li>
            <li>MySQL aggregates: <code>GROUP_CONCAT()</code>, <code>WITH ROLLUP</code>, <code>IF()</code> in aggregates</li>
          </ul>
        </div>
        <div class="lc-section">
          <h2>Advanced MySQL ✓</h2>
          <ul class="lc-list lc-list-check">
            <li>Views: <code>CREATE VIEW</code>, <code>CREATE OR REPLACE VIEW</code></li>
            <li>Stored Procedures: <code>DELIMITER</code>, <code>IN/OUT</code> parameters, <code>CALL</code></li>
            <li>Stored Functions: reusable logic in SELECT statements</li>
            <li>Triggers: <code>BEFORE/AFTER INSERT/UPDATE/DELETE</code>, <code>OLD</code>/<code>NEW</code> references</li>
            <li>Transactions: <code>START TRANSACTION</code>, <code>COMMIT</code>, <code>ROLLBACK</code>, <code>SAVEPOINT</code></li>
            <li>Indexes and <code>EXPLAIN</code> for query optimisation</li>
            <li>User management: <code>CREATE USER</code>, <code>GRANT</code>, <code>REVOKE</code></li>
            <li>JSON support, Window functions, FULLTEXT search</li>
          </ul>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">🎉</span><p><strong>What's Next?</strong> Learn a web framework that uses MySQL: <strong>Laravel</strong> (PHP + Eloquent ORM), <strong>Django</strong> (Python), or <strong>Ruby on Rails</strong>. Or go deeper into database administration with topics like <strong>replication</strong>, <strong>sharding</strong>, and <strong>performance monitoring</strong>.</p></div>
      HTML
      starter_code: <<~'SQL'
        -- MySQL Review — E-Commerce Database

        CREATE TABLE customers (
            id         INT AUTO_INCREMENT PRIMARY KEY,
            name       VARCHAR(100) NOT NULL,
            email      VARCHAR(150) NOT NULL UNIQUE,
            city       VARCHAR(50),
            created_at DATE
        );

        CREATE TABLE products (
            id       INT AUTO_INCREMENT PRIMARY KEY,
            name     VARCHAR(200) NOT NULL,
            category VARCHAR(50),
            price    DECIMAL(10,2) NOT NULL,
            stock    INT DEFAULT 0
        );

        CREATE TABLE orders (
            id           INT AUTO_INCREMENT PRIMARY KEY,
            customer_id  INT NOT NULL,
            product_id   INT NOT NULL,
            quantity     INT DEFAULT 1,
            order_date   DATE,
            status       ENUM('pending','shipped','delivered','cancelled') DEFAULT 'pending'
        );

        INSERT INTO customers (name, email, city, created_at) VALUES
            ('Alice Kumar',  'alice@email.com',  'Mumbai',    '2023-01-15'),
            ('Bob Singh',    'bob@email.com',    'Delhi',     '2023-03-20'),
            ('Carol Patel',  'carol@email.com',  'Bangalore', '2023-06-10'),
            ('Dave Shah',    'dave@email.com',   'Chennai',   '2024-01-05'),
            ('Eve Sharma',   'eve@email.com',    'Pune',      '2024-02-14');

        INSERT INTO products (name, category, price, stock) VALUES
            ('Laptop Pro',   'Electronics', 75000, 50),
            ('Phone X',      'Electronics', 25000, 200),
            ('Python Book',  'Books',        1299, 500),
            ('Desk Chair',   'Furniture',    8000, 30),
            ('Wireless Mouse','Electronics', 2500, 300);

        INSERT INTO orders (customer_id, product_id, quantity, order_date, status) VALUES
            (1, 1, 1, '2024-01-10', 'delivered'),
            (1, 3, 2, '2024-01-15', 'delivered'),
            (2, 2, 1, '2024-02-01', 'delivered'),
            (3, 1, 1, '2024-02-10', 'shipped'),
            (1, 5, 2, '2024-02-20', 'delivered'),
            (4, 2, 3, '2024-03-01', 'delivered'),
            (3, 4, 2, '2024-03-05', 'pending'),
            (2, 5, 1, '2024-03-10', 'delivered'),
            (5, 1, 1, '2024-03-15', 'shipped'),
            (1, 4, 1, '2024-03-20', 'pending');

        -- Customer order summary
        SELECT
            c.name,
            c.city,
            COUNT(o.id) AS orders,
            SUM(p.price * o.quantity) AS total_spent,
            GROUP_CONCAT(DISTINCT p.name ORDER BY p.name SEPARATOR ', ') AS products_bought
        FROM customers c
        LEFT JOIN orders o  ON c.id = o.customer_id
        LEFT JOIN products p ON o.product_id = p.id
        GROUP BY c.id, c.name, c.city
        ORDER BY total_spent DESC;

        -- Revenue by category and month
        SELECT
            p.category,
            SUBSTR(o.order_date, 1, 7) AS month,
            COUNT(*) AS orders,
            SUM(p.price * o.quantity) AS revenue
        FROM orders o
        JOIN products p ON o.product_id = p.id
        WHERE o.status != 'cancelled'
        GROUP BY p.category, month
        ORDER BY month, revenue DESC;

        -- Top products
        SELECT p.name, p.category,
               SUM(o.quantity) AS units_sold,
               SUM(p.price * o.quantity) AS revenue
        FROM orders o JOIN products p ON o.product_id = p.id
        GROUP BY p.id, p.name, p.category
        ORDER BY revenue DESC;
      SQL
    }
  }.freeze
end

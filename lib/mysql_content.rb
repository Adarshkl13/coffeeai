module MysqlContent
  LESSONS = {
    1 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mysql">MySQL</div>
          <h1 class="lc-title">Introduction to MySQL</h1>
        </div>
        <p class="lc-lead">MySQL is one of the most popular open-source relational databases. A relational database stores data in tables with rows and columns. MySQL runs WordPress and many PHP, Node.js and Python web apps. Some large sites run thousands of MySQL servers. This course expects you to know basic SQL (from the SQL course). It teaches <strong>what is special about MySQL</strong>.</p>

        <div class="lc-card">
          <h3>A Client–Server Database</h3>
          <ul class="lc-list">
            <li>The <strong>server</strong> (<code>mysqld</code>) runs in the background as a service. By default, it listens on port <strong>3306</strong>.</li>
            <li><strong>Clients</strong> (programs that talk to the server) connect over the network. Examples: the <code>mysql</code> command-line client, MySQL Workbench, or your app's driver.</li>
            <li>One server holds many <strong>databases</strong>. MySQL also calls them <em>schemas</em>. Each database holds tables.</li>
            <li>Every connection logs in as a <strong>user</strong>. Each user has its own privileges (permissions), see lesson 17.</li>
          </ul>
          <p>SQLite is different. It is a library inside your program. The whole database is one file, and there is no server.</p>
        </div>

        <div class="lc-card">
          <h3>Versions in 2026</h3>
          <table class="lc-table">
            <thead><tr><th>Series</th><th>Type</th><th>Status (September 2026)</th></tr></thead>
            <tbody>
              <tr><td>MySQL 9.7</td><td>LTS (long-term support)</td><td>Released April 2026. The newest LTS. A good choice for new projects.</td></tr>
              <tr><td>MySQL 8.4</td><td>LTS</td><td>Supported (premier support until 2029). Very common in production.</td></tr>
              <tr><td>Innovation releases</td><td>Innovation</td><td>New features come out every few months. Each one is supported only until the next one. Check the official MySQL release notes for the newest number.</td></tr>
              <tr><td>MySQL 8.0</td><td>Old</td><td>End of life (April 2026). You should upgrade.</td></tr>
            </tbody>
          </table>
          <p><strong>Version numbers:</strong> the way innovation releases are numbered can change after 9.7 LTS. Check the official MySQL release notes for the newest version. The LTS lines 8.4 and 9.7 keep their names.</p>
          <p>Everything in this course works on MySQL 8.4 and 9.7. MariaDB is a separate fork (a copy that grew into its own project) of MySQL. Much is the same, but some features are different, such as JSON and authentication.</p>
        </div>

        <div class="lc-card">
          <h3>A First Session in the mysql Client</h3>
        <div class="lc-code">$ mysql -u root -p<br>mysql&gt; CREATE DATABASE school CHARACTER SET utf8mb4;<br>mysql&gt; USE school;<br>mysql&gt; CREATE TABLE `students` (<br>&nbsp;&nbsp;&nbsp;&nbsp;-&gt;&nbsp;&nbsp;&nbsp;`id`&nbsp;&nbsp;&nbsp;INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,<br>&nbsp;&nbsp;&nbsp;&nbsp;-&gt;&nbsp;&nbsp;&nbsp;`name` VARCHAR(100) NOT NULL,<br>&nbsp;&nbsp;&nbsp;&nbsp;-&gt;&nbsp;&nbsp;&nbsp;`state` VARCHAR(50)<br>&nbsp;&nbsp;&nbsp;&nbsp;-&gt; ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;<br>mysql&gt; SHOW TABLES;<br>+------------------+<br>| Tables_in_school |<br>+------------------+<br>| students&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|<br>+------------------+<br>mysql&gt; DESCRIBE students;<br>+-------+--------------+------+-----+---------+----------------+<br>| Field | Type&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;| Null | Key | Default | Extra&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|<br>+-------+--------------+------+-----+---------+----------------+<br>| id&nbsp;&nbsp;&nbsp;&nbsp;| int unsigned | NO&nbsp;&nbsp;&nbsp;| PRI | NULL&nbsp;&nbsp;&nbsp;&nbsp;| auto_increment |<br>| name&nbsp;&nbsp;| varchar(100) | NO&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;| NULL&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|<br>| state&nbsp;| varchar(50)&nbsp;&nbsp;| YES&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;| NULL&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|<br>+-------+--------------+------+-----+---------+----------------+</div>
          <ul class="lc-list">
            <li>In MySQL, <strong>backticks</strong> <code>`name`</code> quote identifiers (names of tables and columns). Standard SQL uses double quotes. You only need them when a name is also a keyword or has spaces.</li>
            <li><code>ENGINE=InnoDB</code> picks the storage engine (the part that stores the data). InnoDB is the default. It is the right choice for almost everything (lesson 13).</li>
            <li>Use <code>SHOW DATABASES;</code>, <code>SHOW TABLES;</code>, <code>DESCRIBE t;</code> and <code>SHOW CREATE TABLE t;</code> to explore a server.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>MySQL vs Standard SQL: Quick Differences</h3>
          <table class="lc-table">
            <thead><tr><th>Task</th><th>MySQL</th><th>Standard / PostgreSQL</th></tr></thead>
            <tbody>
              <tr><td>Auto id</td><td><code>AUTO_INCREMENT</code></td><td><code>GENERATED ... AS IDENTITY</code></td></tr>
              <tr><td>Join strings</td><td><code>CONCAT(a, b)</code></td><td><code>a || b</code></td></tr>
              <tr><td>Quote identifiers</td><td><code>`col`</code></td><td><code>"col"</code></td></tr>
              <tr><td>Paging</td><td><code>LIMIT 10 OFFSET 20</code> or <code>LIMIT 20, 10</code></td><td><code>LIMIT 10 OFFSET 20</code></td></tr>
              <tr><td>Upsert</td><td><code>ON DUPLICATE KEY UPDATE</code></td><td><code>ON CONFLICT ... DO UPDATE</code></td></tr>
            </tbody>
          </table>
        </div>

        <div class="lc-card">
          <h3>About This Course's Editor</h3>
          <p>The Run button runs <strong>real SQLite with a MySQL compatibility layer</strong>. This layer makes SQLite understand most everyday MySQL syntax: AUTO_INCREMENT, backticks, <code>ENGINE=</code>/<code>CHARSET=</code> options, <code>SHOW TABLES</code>, <code>DESCRIBE</code>, <code>LIMIT a, b</code>, <code>CONCAT</code>, <code>IFNULL</code>, <code>DATE_FORMAT</code>, <code>INSERT IGNORE</code>, <code>ON DUPLICATE KEY UPDATE</code>, simple triggers, JSON <code>-&gt;</code>/<code>-&gt;&gt;</code> and window functions. Some features only work on a real server: users and privileges, stored procedures and replication. For these, the editor prints "Not supported in the browser sandbox". The lessons show them with real MySQL output. Try them on a real server (a local install or the Docker image <code>mysql:8.4</code>). There are two visible differences. DECIMAL values print without trailing zeros (<code>499</code> instead of <code>499.00</code>). <code>EXPLAIN</code> shows SQLite's plan format.</p>
        </div>

        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Forgetting <code>USE dbname;</code>. You then get the error "No database selected".</li>
            <li>Putting single quotes around table names. <code>'students'</code> is a string. Use backticks or nothing.</li>
            <li>Learning from old tutorials written for MySQL 5.x. They use old <code>utf8</code>, <code>mysql_native_password</code> and MyISAM tables.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Try It</h3>
          <p>In the starter code, add a <code>`courses`</code> table with an AUTO_INCREMENT id and a title. Then run <code>SHOW TABLES;</code> again and <code>DESCRIBE courses;</code>.</p>
        </div>

        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> In the mysql client, <code>SHOW CREATE TABLE students\G</code> prints the full, exact table definition that MySQL stored. It even shows defaults you did not type. <code>\G</code> prints results vertically (top to bottom). This is easier to read for wide rows.
        </div>
      HTML
      starter_code: <<~'SQL'
        -- Introduction to MySQL
        -- Backticks, AUTO_INCREMENT and table options are MySQL syntax
        CREATE TABLE `students` (
            `id`   INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
            `name` VARCHAR(100) NOT NULL,
            `state` VARCHAR(50),
            `marks` INT
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

        -- id is generated automatically
        INSERT INTO `students` (`name`, `state`, `marks`) VALUES
            ('Asha',   'Kerala', 88),
            ('Bharat', 'Punjab', 72),
            ('Chitra', 'Kerala', 95),
            ('Deepak', 'Assam',  64);

        -- Explore the database
        SHOW TABLES;
        DESCRIBE students;

        -- Quick SQL review: filter, sort, limit
        SELECT id, name, marks
        FROM students
        WHERE state = 'Kerala'
        ORDER BY marks DESC;

        -- MySQL-style LIMIT offset, count: skip 1 row, return 2
        SELECT name, marks FROM students ORDER BY marks DESC LIMIT 1, 2;

        -- CONCAT joins strings in MySQL
        SELECT CONCAT(name, ' from ', state) AS intro FROM students ORDER BY id;
      SQL
    },

    2 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mysql">MySQL</div>
          <h1 class="lc-title">MySQL Data Types</h1>
        </div>
        <p class="lc-lead">MySQL has many exact data types. A data type says what kind of value a column can hold. SQLite is loose about types, but MySQL really enforces them. A <code>TINYINT</code> cannot hold 1000. A <code>VARCHAR(20)</code> cannot hold 25 characters. Good choices save space, keep data valid and make indexes faster.</p>

        <div class="lc-card">
          <h3>Integers</h3>
          <table class="lc-table">
            <thead><tr><th>Type</th><th>Bytes</th><th>Signed range</th><th>UNSIGNED range</th></tr></thead>
            <tbody>
              <tr><td><code>TINYINT</code></td><td>1</td><td>-128 to 127</td><td>0 to 255</td></tr>
              <tr><td><code>SMALLINT</code></td><td>2</td><td>-32,768 to 32,767</td><td>0 to 65,535</td></tr>
              <tr><td><code>MEDIUMINT</code></td><td>3</td><td>about ±8.4 million</td><td>0 to 16,777,215</td></tr>
              <tr><td><code>INT</code></td><td>4</td><td>about ±2.1 billion</td><td>0 to 4,294,967,295</td></tr>
              <tr><td><code>BIGINT</code></td><td>8</td><td>about ±9.2 × 10<sup>18</sup></td><td>0 to about 1.8 × 10<sup>19</sup></td></tr>
            </tbody>
          </table>
          <p><code>UNSIGNED</code> does not allow negative numbers. It doubles the positive range. This is good for ids and counts. The number in <code>INT(11)</code> is only a display width. It is deprecated (no longer recommended) since 8.0.17, so write plain <code>INT</code>. <code>BOOLEAN</code> is another name for <code>TINYINT(1)</code>: <code>TRUE</code> is 1 and <code>FALSE</code> is 0.</p>
        </div>

        <div class="lc-card">
          <h3>Exact vs Approximate Numbers</h3>
        <div class="lc-code">price&nbsp;&nbsp;&nbsp;&nbsp;DECIMAL(10,2)&nbsp;&nbsp;&nbsp;-- exact: up to 99999999.99 (10 digits, 2 after the point)<br>rating&nbsp;&nbsp;&nbsp;FLOAT&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-- approximate, 4 bytes<br>distance DOUBLE&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-- approximate, 8 bytes</div>
          <p>Use <code>DECIMAL</code> for money and anything that must add up exactly. <code>FLOAT</code>/<code>DOUBLE</code> store close guesses in binary, not exact values. Store <code>0.1</code> and <code>0.2</code> in <code>FLOAT</code> columns and add them. You get something like <code>0.30000000447</code>, not <code>0.30</code>. (In MySQL, a number like <code>0.1</code> typed in a query is an exact DECIMAL. The problem comes from FLOAT/DOUBLE columns.)</p>
        </div>

        <div class="lc-card">
          <h3>Strings</h3>
          <table class="lc-table">
            <thead><tr><th>Type</th><th>Stores</th><th>Use for</th></tr></thead>
            <tbody>
              <tr><td><code>CHAR(n)</code></td><td>exactly n characters (padded)</td><td>fixed codes: <code>CHAR(2)</code> state code, <code>CHAR(6)</code> PIN code</td></tr>
              <tr><td><code>VARCHAR(n)</code></td><td>up to n <em>characters</em></td><td>names, emails, titles</td></tr>
              <tr><td><code>TEXT</code> (also TINY/MEDIUM/LONG)</td><td>up to 64 KB (16 MB / 4 GB for MEDIUM/LONG)</td><td>descriptions, articles</td></tr>
              <tr><td><code>ENUM('a','b','c')</code></td><td>one value from a fixed list</td><td>short, stable lists like <code>'S','M','L'</code></td></tr>
              <tr><td><code>BLOB</code> family</td><td>raw bytes</td><td>small binary data (put big files in object storage instead)</td></tr>
            </tbody>
          </table>
          <p>ENUM uses little space. But to add a value, you need an <code>ALTER TABLE</code>. ENUM also sorts by position in the list, not in alphabetical order. For lists that change, use a lookup table. Or use a <code>VARCHAR</code> with a <code>CHECK</code> constraint (a rule on allowed values).</p>
        </div>

        <div class="lc-card">
          <h3>Dates and Times</h3>
          <table class="lc-table">
            <thead><tr><th>Type</th><th>Range</th><th>Time zone behaviour</th></tr></thead>
            <tbody>
              <tr><td><code>DATE</code></td><td>1000-01-01 to 9999-12-31</td><td>none</td></tr>
              <tr><td><code>DATETIME</code></td><td>1000-01-01 00:00:00 to 9999-12-31 23:59:59</td><td>stored exactly as given</td></tr>
              <tr><td><code>TIMESTAMP</code></td><td>1970-01-01 to 2038-01-19 (UTC)</td><td>converted to UTC on save, back to the session time zone on read</td></tr>
              <tr><td><code>TIME</code>, <code>YEAR</code></td><td>time of day / durations; a year</td><td>none</td></tr>
            </tbody>
          </table>
        <div class="lc-code">created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,<br>updated_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP</div>
          <p><code>ON UPDATE CURRENT_TIMESTAMP</code> is a MySQL feature. It sets the column to the current time on every update. Add <code>(3)</code> or <code>(6)</code> for parts of a second: <code>DATETIME(3)</code>. TIMESTAMP ends in 2038. So use <code>DATETIME</code> for dates like expiry dates or dates of birth.</p>
        </div>

        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Using <code>FLOAT</code> for prices or balances.</li>
            <li>Using <code>VARCHAR(255)</code> for everything without a reason. Pick realistic limits. They show what your data looks like.</li>
            <li>Storing phone numbers or PIN codes as <code>INT</code>. Leading zeros are lost, and you never do maths on them. Use <code>VARCHAR</code>/<code>CHAR</code>.</li>
            <li>Using <code>TIMESTAMP</code> for dates that may be after 2038.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Try It</h3>
          <p>Design a <code>trains</code> table with these columns: train number (5-digit text like <code>'12951'</code>), name, distance in km (integer), base fare (DECIMAL), and a <code>has_pantry</code> BOOLEAN. Insert two trains. Then find the trains with a pantry.</p>
        </div>

        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Choose the smallest type that will <em>safely</em> fit future data. <code>TINYINT UNSIGNED</code> for age is fine. <code>INT</code> is not fine for a primary key that may pass 2 billion rows. Use <code>BIGINT UNSIGNED</code> for big tables that grow fast.
        </div>
      HTML
      starter_code: <<~'SQL'
        -- MySQL Data Types
        -- (Simulator notes: it may print DECIMAL 499.00 as 499, and DESCRIBE shows
        --  is_active as boolean with default TRUE; real MySQL shows tinyint(1) and 1)
        CREATE TABLE products (
            id          INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
            sku         CHAR(8)          NOT NULL,        -- fixed-length code
            name        VARCHAR(80)      NOT NULL,
            price       DECIMAL(10,2)    NOT NULL,        -- exact money
            stock       SMALLINT UNSIGNED NOT NULL DEFAULT 0,
            rating      FLOAT,                            -- approximate is fine here
            is_active   BOOLEAN          NOT NULL DEFAULT TRUE,
            launched_on DATE,
            created_at  DATETIME         NOT NULL DEFAULT CURRENT_TIMESTAMP
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

        INSERT INTO products (sku, name, price, stock, rating, is_active, launched_on) VALUES
            ('KB-00012', 'Keyboard',  1299.50, 40, 4.4, TRUE,  '2025-11-01'),
            ('MS-00007', 'Mouse',      499.00, 150, 4.1, TRUE,  '2026-01-15'),
            ('HD-00003', 'Headphones', 2499.00, 0, 3.9, FALSE, '2024-06-20');

        DESCRIBE products;

        -- BOOLEAN is really TINYINT(1): TRUE = 1, FALSE = 0
        SELECT name, is_active FROM products WHERE is_active = TRUE;

        -- Exact money arithmetic with DECIMAL
        SELECT name, price, stock, price * stock AS stock_value
        FROM products
        ORDER BY stock_value DESC;

        -- Dates stored as DATE compare and sort correctly
        SELECT name, launched_on FROM products
        WHERE launched_on >= '2025-01-01'
        ORDER BY launched_on;
      SQL
    },

    3 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mysql">MySQL</div>
          <h1 class="lc-title">Strict Mode and sql_mode</h1>
        </div>
        <p class="lc-lead">MySQL has a setting called <code>sql_mode</code>. It decides how strict the server is with bad data and unclear SQL. With <strong>strict mode</strong> on, invalid values cause an error. Strict mode is the default since MySQL 5.7. Old tutorials and old servers ran without it. They changed your data without telling you. You must know both behaviours.</p>

        <div class="lc-card">
          <h3>The Default sql_mode (MySQL 8.4 and later)</h3>
        <div class="lc-code">mysql&gt; SELECT @@SESSION.sql_mode\G<br>@@SESSION.sql_mode: ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION</div>
          <table class="lc-table">
            <thead><tr><th>Mode</th><th>Effect</th></tr></thead>
            <tbody>
              <tr><td><code>STRICT_TRANS_TABLES</code></td><td>invalid or out-of-range values are errors, not warnings (for transactional tables, such as InnoDB)</td></tr>
              <tr><td><code>ONLY_FULL_GROUP_BY</code></td><td>rejects SELECT columns that are not grouped and not aggregated (not inside a function like COUNT or SUM)</td></tr>
              <tr><td><code>NO_ZERO_DATE</code>, <code>NO_ZERO_IN_DATE</code></td><td>rejects <code>'0000-00-00'</code> and dates like <code>'2026-00-10'</code></td></tr>
              <tr><td><code>ERROR_FOR_DIVISION_BY_ZERO</code></td><td>division by zero in INSERT/UPDATE is an error (in SELECT it still returns NULL)</td></tr>
              <tr><td><code>NO_ENGINE_SUBSTITUTION</code></td><td>error if the requested storage engine is not available</td></tr>
            </tbody>
          </table>
        </div>

        <div class="lc-card">
          <h3>Strict vs Non-Strict, Side by Side</h3>
        <div class="lc-code">CREATE TABLE t (name VARCHAR(5), qty TINYINT UNSIGNED, d DATE);<br>INSERT INTO t VALUES ('Karthik', 300, '2026-02-30');</div>
          <table class="lc-table">
            <thead><tr><th>Value</th><th>Strict mode (default)</th><th>Non-strict (old behaviour)</th></tr></thead>
            <tbody>
              <tr><td><code>'Karthik'</code> into VARCHAR(5)</td><td>ERROR 1406: Data too long for column 'name'</td><td>stored as <code>'Karth'</code> + warning</td></tr>
              <tr><td><code>300</code> into TINYINT UNSIGNED</td><td>ERROR 1264: Out of range value</td><td>stored as <code>255</code> + warning</td></tr>
              <tr><td><code>'2026-02-30'</code> into DATE</td><td>ERROR 1292: Incorrect date value</td><td>stored as <code>'0000-00-00'</code> + warning</td></tr>
              <tr><td><code>'abc'</code> into INT</td><td>ERROR 1366: Incorrect integer value</td><td>stored as <code>0</code> + warning</td></tr>
            </tbody>
          </table>
          <p>In non-strict mode, run <code>SHOW WARNINGS;</code> after a statement. It shows what MySQL changed. In strict mode, the whole statement fails and nothing is inserted.</p>
        </div>

        <div class="lc-card">
          <h3>ONLY_FULL_GROUP_BY</h3>
        <div class="lc-code">SELECT state, name, COUNT(*) FROM customers GROUP BY state;<br>-- ERROR 1055: Expression #2 of SELECT list is not in GROUP BY clause and contains<br>-- nonaggregated column 'shop.customers.name' ...<br><br>SELECT state, COUNT(*), ANY_VALUE(name) AS example_name<br>FROM customers GROUP BY state;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-- OK: you say "any name is fine"</div>
          <p>Fix the query. Do not switch the mode off. You have three choices. Group by the column. Or aggregate it (<code>MIN(name)</code>, <code>GROUP_CONCAT(name)</code>). Or use <code>ANY_VALUE()</code> when any value really is fine. MySQL also allows a column that is <em>functionally dependent</em> on the grouped primary key. This means the key decides the column's value.</p>
        </div>

        <div class="lc-card">
          <h3>Changing sql_mode (and Why You Usually Should Not)</h3>
        <div class="lc-code">SET SESSION sql_mode = CONCAT(@@SESSION.sql_mode, ',PIPES_AS_CONCAT');&nbsp;&nbsp;-- this connection only<br>SET GLOBAL&nbsp;&nbsp;sql_mode = '...';&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-- new connections (needs privilege; lost on restart)<br>-- permanent: sql_mode = ... under [mysqld] in my.cnf, or SET PERSIST sql_mode = '...';</div>
          <p>People often copy a bad "fix" from forums: <code>SET GLOBAL sql_mode = ''</code>. It turns off strict mode everywhere. The errors go away, but your data starts to get damaged. Fix the data or the query instead.</p>
        </div>

        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Turning off strict mode to make an old app "work".</li>
            <li>Using <code>INSERT IGNORE</code> to load data. It turns strict-mode errors back into warnings. Values then get cut short without any error.</li>
            <li>Testing on a local server with one sql_mode, then deploying to a server with another. Check <code>SELECT @@sql_mode;</code> on both.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Try It</h3>
          <p>The starter code loads raw data into a staging table (a temporary holding table). It finds the rows that strict mode would reject. Then it copies only the valid rows. Add a staging row with a 12-character customer name and a quantity of 256. Check that both rules catch it.</p>
        </div>

        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> For bulk imports (CSV files, old systems), first load the data into a <strong>staging table</strong> with loose types. Check it with SELECT queries. Then use <code>INSERT ... SELECT</code> to copy the good rows into the real table. You get a clear report of bad rows instead of a failed import.
        </div>
      HTML
      starter_code: <<~'SQL'
        -- Strict Mode and sql_mode
        -- The real table: strict mode would reject bad values here
        CREATE TABLE orders (
            id       INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
            customer VARCHAR(10)      NOT NULL,
            qty      TINYINT UNSIGNED NOT NULL      -- 0 to 255
        ) ENGINE=InnoDB;

        -- A loose staging table for raw imported data
        CREATE TABLE staging_orders (
            line_no  INT,
            customer VARCHAR(100),
            qty      INT
        );
        INSERT INTO staging_orders VALUES
            (1, 'Farida',        4),
            (2, 'Gurpreet Kaur', 2),      -- 13 characters: too long for VARCHAR(10)
            (3, 'Harish',      300),      -- out of range for TINYINT UNSIGNED
            (4, 'Indu',         -1),      -- negative: UNSIGNED rejects it
            (5, NULL,            1),      -- NOT NULL rejects it
            (6, 'Jatin',        12);

        -- Report: which lines would strict mode reject, and why?
        -- CHAR_LENGTH counts characters (LENGTH counts bytes in MySQL)
        SELECT line_no, customer, qty,
               CASE
                   WHEN customer IS NULL        THEN 'customer is NULL'
                   WHEN CHAR_LENGTH(customer) > 10   THEN 'customer too long'
                   WHEN qty < 0 OR qty > 255    THEN 'qty out of range'
               END AS problem
        FROM staging_orders
        WHERE customer IS NULL OR CHAR_LENGTH(customer) > 10 OR qty < 0 OR qty > 255;

        -- Load only the valid rows
        INSERT INTO orders (customer, qty)
        SELECT customer, qty FROM staging_orders
        WHERE customer IS NOT NULL AND CHAR_LENGTH(customer) <= 10 AND qty BETWEEN 0 AND 255;

        SELECT id, customer, qty FROM orders;

        -- In a SELECT, division by zero returns NULL (it is an error only in INSERT/UPDATE)
        SELECT 10 / 0 AS div_by_zero;
      SQL
    },

    4 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mysql">MySQL</div>
          <h1 class="lc-title">Character Sets and Collations</h1>
        </div>
        <p class="lc-lead">A <strong>character set</strong> decides which characters a column can store. It also decides how they are stored as bytes. A <strong>collation</strong> decides how text is compared and sorted. For example: is <code>'Ravi' = 'ravi'</code>? Does <code>'é'</code> equal <code>'e'</code>? You must get these right for Indian languages, names and emoji.</p>

        <div class="lc-card">
          <h3>Always Use utf8mb4</h3>
          <table class="lc-table">
            <thead><tr><th>Character set</th><th>Bytes per character</th><th>Emoji and all of Unicode?</th><th>Status</th></tr></thead>
            <tbody>
              <tr><td><code>utf8mb4</code></td><td>1–4</td><td>Yes</td><td>Default since MySQL 8.0. Use it.</td></tr>
              <tr><td><code>utf8mb3</code> (old name <code>utf8</code>)</td><td>1–3</td><td>No. 😀 fails with "Incorrect string value"</td><td>Deprecated</td></tr>
              <tr><td><code>latin1</code></td><td>1</td><td>No. Western European only</td><td>Legacy</td></tr>
            </tbody>
          </table>
          <p>MySQL's old <code>utf8</code> is <em>not</em> full UTF-8. It is the 3-byte <code>utf8mb3</code>. Devanagari, Tamil and Bengali letters fit in 3 bytes. But emoji and some rare characters need 4 bytes. Always write <code>utf8mb4</code> yourself.</p>
        </div>

        <div class="lc-card">
          <h3>Reading a Collation Name</h3>
        <div class="lc-code">utf8mb4_0900_ai_ci<br>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;|<br>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;+-- ci&nbsp;&nbsp;= case-insensitive&nbsp;&nbsp;&nbsp;(cs = case-sensitive)<br>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;+----- ai&nbsp;&nbsp;= accent-insensitive (as = accent-sensitive)<br>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;+--------- 0900 = Unicode Collation Algorithm 9.0.0 rules<br>&nbsp;&nbsp;&nbsp;+---------------- the character set<br>utf8mb4_bin&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-- compares raw code points: case- and accent-sensitive</div>
          <p>The default collation for utf8mb4 is <code>utf8mb4_0900_ai_ci</code>. So by default:</p>
        <div class="lc-code">SELECT 'Ravi' = 'ravi';&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-- 1 (case-insensitive)<br>SELECT 'Café' = 'cafe';&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-- 1 (accent-insensitive)<br>SELECT 'Ravi' = 'ravi' COLLATE utf8mb4_bin;&nbsp;&nbsp;&nbsp;&nbsp;-- 0 (exact comparison)</div>
        </div>

        <div class="lc-card">
          <h3>Setting Charset and Collation</h3>
        <div class="lc-code">CREATE DATABASE shop CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;<br><br>CREATE TABLE users (<br>&nbsp;&nbsp;&nbsp;&nbsp;id&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,<br>&nbsp;&nbsp;&nbsp;&nbsp;email&nbsp;&nbsp;&nbsp;&nbsp;VARCHAR(255) NOT NULL UNIQUE,&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-- inherits ai_ci<br>&nbsp;&nbsp;&nbsp;&nbsp;password_hash VARBINARY(60) NOT NULL,&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-- bytes, not text<br>&nbsp;&nbsp;&nbsp;&nbsp;api_key&nbsp;&nbsp;VARCHAR(64) COLLATE utf8mb4_bin&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-- must match exactly<br>) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;</div>
          <p>Settings pass down: server → database → table → column. A UNIQUE index uses the column's collation. So with <code>_ci</code>, the emails <code>'Ravi@x.com'</code> and <code>'ravi@x.com'</code> count as duplicates. This is usually what you want for emails. It is <em>not</em> what you want for case-sensitive tokens.</p>
        </div>

        <div class="lc-card">
          <h3>Bytes vs Characters</h3>
        <div class="lc-code">SELECT CHAR_LENGTH('नमस्ते') AS chars, LENGTH('नमस्ते') AS bytes;&nbsp;&nbsp;&nbsp;-- 6, 18<br>SELECT CHAR_LENGTH('😀')&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;AS chars, LENGTH('😀')&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;AS bytes;&nbsp;&nbsp;&nbsp;-- 1, 4</div>
          <p><code>VARCHAR(n)</code> limits <em>characters</em>. But row size and index limits are in <em>bytes</em>. (InnoDB index keys can be up to 3072 bytes. So an indexed utf8mb4 VARCHAR can have at most 768 characters.)</p>
        </div>

        <div class="lc-card">
          <h3>The Connection Matters Too</h3>
          <p>Text is also encoded on its way between your app and the server. If the connection uses a different charset, you get <em>mojibake</em> (broken, garbled text). For example, <code>à¤¨à¤®</code> instead of नम. Set the charset in the driver (for example <code>charset=utf8mb4</code> in the connection string). Or run <code>SET NAMES utf8mb4;</code>.</p>
        </div>

        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Creating tables with <code>utf8</code> (really utf8mb3). Then emoji fail.</li>
            <li>Joining two columns with different collations. You get the error "Illegal mix of collations".</li>
            <li>Using a <code>_ci</code> collation for passwords, tokens or case-sensitive codes.</li>
            <li>Fixing the table charset but not the connection charset.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Try It</h3>
          <p>Add a row with your name in your own script (Devanagari, Tamil, Bengali, Gurmukhi...) and an emoji. Then search for it. On a real MySQL server, try <code>WHERE name = 'ananya'</code> with and without <code>COLLATE utf8mb4_bin</code>. Compare the results.</p>
        </div>

        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> To convert an old table, use <code>ALTER TABLE t CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;</code>. Test it on a copy first. It rewrites the whole table. It can also change which values count as duplicates.
        </div>
      HTML
      starter_code: <<~'SQL'
        -- Character Sets and Collations
        CREATE TABLE greetings (
            id       INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
            language VARCHAR(30)  NOT NULL,
            name     VARCHAR(50)  NOT NULL,
            message  VARCHAR(100) NOT NULL
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

        -- utf8mb4 stores every script, and 4-byte emoji too
        INSERT INTO greetings (language, name, message) VALUES
            ('Hindi',   'Ananya', 'नमस्ते 🙏'),
            ('Tamil',   'ananya', 'வணக்கம்'),
            ('Bengali', 'Rahul',  'নমস্কার'),
            ('English', 'Zoe',    'Hello 👋'),
            ('Punjabi', 'bhavya', 'ਸਤ ਸ੍ਰੀ ਅਕਾਲ');

        SELECT language, name, message FROM greetings ORDER BY id;

        -- utf8mb4_0900_ai_ci is case-insensitive: 'ANANYA' matches both rows
        SELECT language, name FROM greetings WHERE name = 'ANANYA';

        -- _ci collations also sort without caring about case
        SELECT name FROM greetings ORDER BY name, id;

        -- DISTINCT and GROUP BY treat 'Ananya' and 'ananya' as the same value
        SELECT COUNT(DISTINCT name) AS distinct_names FROM greetings;

        -- Searching inside non-Latin text works the same way
        SELECT language, message FROM greetings WHERE message LIKE '%🙏%';
      SQL
    },

    5 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mysql">MySQL</div>
          <h1 class="lc-title">AUTO_INCREMENT and LAST_INSERT_ID</h1>
        </div>
        <p class="lc-lead"><code>AUTO_INCREMENT</code> makes MySQL create a new number for each inserted row. This is the usual way to create primary keys. <code>LAST_INSERT_ID()</code> tells your connection which number it just got. Then you can safely insert related rows.</p>

        <div class="lc-card">
          <h3>Declaring It</h3>
        <div class="lc-code">CREATE TABLE customers (<br>&nbsp;&nbsp;&nbsp;&nbsp;id&nbsp;&nbsp;&nbsp;BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,<br>&nbsp;&nbsp;&nbsp;&nbsp;name VARCHAR(100) NOT NULL<br>) ENGINE=InnoDB AUTO_INCREMENT=1001;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-- optional: first id will be 1001</div>
          <ul class="lc-list">
            <li>A table can have only one AUTO_INCREMENT column. It must be indexed (normally it is the primary key).</li>
            <li>To get the next number, leave the column out of the INSERT (or insert <code>NULL</code>).</li>
            <li>Use <code>INT UNSIGNED</code> (up to ~4.29 billion) or <code>BIGINT UNSIGNED</code> for tables that grow fast. If you run out of ids, all inserts stop.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>LAST_INSERT_ID(): the Safe Way to Get the New Id</h3>
        <div class="lc-code">INSERT INTO customers (name) VALUES ('Meenakshi');<br>SET @cid = LAST_INSERT_ID();&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-- e.g. 1001<br>INSERT INTO orders (customer_id, total) VALUES (@cid, 1499.00);<br>SELECT @cid AS customer_id;</div>
        <div class="lc-code">+-------------+<br>| customer_id |<br>+-------------+<br>|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1001 |<br>+-------------+</div>
          <ul class="lc-list">
            <li>It works <strong>per connection</strong>. Another user may insert at the same moment, but your value does not change. That is why it is safe.</li>
            <li>After a <em>multi-row</em> INSERT, it returns the id of the <strong>first</strong> inserted row.</li>
            <li>If you insert your own id (<code>VALUES (500, 'X')</code>), it does not change.</li>
            <li>In application code, use the driver's value: <code>cursor.lastrowid</code> (Python), <code>result.insertId</code> (Node mysql2), <code>$pdo-&gt;lastInsertId()</code> (PHP).</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Never Use SELECT MAX(id)</h3>
          <table class="lc-table">
            <thead><tr><th>Approach</th><th>Problem</th></tr></thead>
            <tbody>
              <tr><td><code>SELECT MAX(id) FROM customers</code> after inserting</td><td>another connection may insert in between. Then you get <em>their</em> id</td></tr>
              <tr><td><code>SELECT MAX(id) + 1</code> before inserting</td><td>two users get the same number. One insert fails or overwrites the other</td></tr>
              <tr><td><code>LAST_INSERT_ID()</code></td><td>correct even when many users insert at once</td></tr>
            </tbody>
          </table>
        </div>

        <div class="lc-card">
          <h3>Gaps Are Normal</h3>
          <p>AUTO_INCREMENT values are unique and always go up. But they are <strong>not gap-free</strong>. Numbers are skipped when:</p>
          <ul class="lc-list">
            <li>rows are deleted (ids are never reused);</li>
            <li>a transaction that inserted rows is rolled back (undone);</li>
            <li>an insert fails or is ignored (for example, a duplicate with <code>INSERT IGNORE</code>);</li>
            <li>you insert your own larger id. The counter jumps above it.</li>
          </ul>
          <p>Since MySQL 8.0, the counter is kept after a restart. (In 5.7, InnoDB set it again to <code>MAX(id) + 1</code> after a restart. So deleted top ids could be reused. This is old behaviour.) Does the business need invoice numbers with no gaps? Then create them separately inside a transaction. Do not depend on AUTO_INCREMENT.</p>
        </div>

        <div class="lc-card">
          <h3>Useful Commands</h3>
        <div class="lc-code">ALTER TABLE customers AUTO_INCREMENT = 5000;&nbsp;&nbsp;&nbsp;-- next id (must be above current max)<br>SHOW TABLE STATUS LIKE 'customers'\G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-- see Auto_increment: 5000<br>SELECT UUID();&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-- alternative: globally unique ids</div>
          <p>UUIDs (long random ids) are useful when ids are created on many servers or in the browser. Store them in a small form as <code>BINARY(16)</code> with <code>UUID_TO_BIN(UUID(), 1)</code>. The <code>1</code> moves the time part to the front. New values then stay roughly in order. This is better for InnoDB's clustered index (the index that stores the rows in key order).</p>
        </div>

        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Using <code>MAX(id)</code> to find the id you just inserted.</li>
            <li>Thinking gaps are missing data and "fixing" them by renumbering. Other places may use those ids (URLs, other tables, logs).</li>
            <li>Using signed <code>INT</code> ids on tables that will pass 2.1 billion rows.</li>
            <li>Showing ids in order in public URLs. Anyone can then guess how many orders you have.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Try It</h3>
          <p>Insert a new customer. Store <code>LAST_INSERT_ID()</code> in <code>@new_cust</code>. Give that customer two orders. Then delete the newest order and insert another one. Which id does it get, and why?</p>
        </div>

        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> <code>LAST_INSERT_ID()</code> belongs to the connection. So call it on the <em>same</em> connection that did the INSERT. With connection pools (shared sets of connections), run both statements inside one transaction. Or use the driver's insert id.
        </div>
      HTML
      starter_code: <<~'SQL'
        -- AUTO_INCREMENT and LAST_INSERT_ID
        CREATE TABLE customers (
            id   INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
            name VARCHAR(100) NOT NULL
        ) ENGINE=InnoDB AUTO_INCREMENT=1001;

        CREATE TABLE orders (
            id          INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
            customer_id INT UNSIGNED NOT NULL,
            total       DECIMAL(10,2) NOT NULL
        ) ENGINE=InnoDB;

        -- Parent row first, then remember its id for the child rows
        INSERT INTO customers (name) VALUES ('Meenakshi');
        SET @cid = LAST_INSERT_ID();
        INSERT INTO orders (customer_id, total) VALUES (@cid, 1499.00);
        INSERT INTO orders (customer_id, total) VALUES (@cid, 250.00);
        SELECT @cid AS meenakshi_id;

        INSERT INTO customers (name) VALUES ('Nikhil');
        SET @cid = LAST_INSERT_ID();
        INSERT INTO orders (customer_id, total) VALUES (@cid, 999.00);

        SELECT c.id, c.name, o.id AS order_id, o.total
        FROM customers c JOIN orders o ON o.customer_id = c.id
        ORDER BY o.id;

        -- Deleting the newest row leaves a gap: ids are never reused
        DELETE FROM orders WHERE id = 3;
        INSERT INTO orders (customer_id, total) VALUES (1002, 120.00);
        SELECT id, customer_id, total FROM orders ORDER BY id;

        -- An explicit larger id makes the counter jump past it
        INSERT INTO orders (id, customer_id, total) VALUES (100, 1001, 75.00);
        INSERT INTO orders (customer_id, total) VALUES (1001, 60.00);
        SELECT id, total FROM orders WHERE id >= 100;
      SQL
    },

    6 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mysql">MySQL</div>
          <h1 class="lc-title">Constraints and Foreign Keys in InnoDB</h1>
        </div>
        <p class="lc-lead">You learned about constraints (rules on your data) in the SQL course. This lesson shows how <strong>MySQL</strong> handles them. You will see what InnoDB enforces and the exact error messages. You will learn the rules foreign keys must follow. You will also see the version history that makes old tutorials wrong.</p>

        <div class="lc-card">
          <h3>What MySQL Enforces</h3>
          <table class="lc-table">
            <thead><tr><th>Constraint</th><th>MySQL behaviour</th><th>Error when violated</th></tr></thead>
            <tbody>
              <tr><td><code>PRIMARY KEY</code>, <code>UNIQUE</code></td><td>enforced (uses an index)</td><td>1062 Duplicate entry 'ravi@x.com' for key 'users.email'</td></tr>
              <tr><td><code>NOT NULL</code></td><td>enforced</td><td>1048 Column 'name' cannot be null</td></tr>
              <tr><td><code>CHECK</code></td><td>enforced since <strong>8.0.16</strong> (older versions read it and then ignored it!)</td><td>3819 Check constraint 'price_positive' is violated</td></tr>
              <tr><td><code>FOREIGN KEY</code></td><td>enforced by InnoDB only (MyISAM ignores it without any warning)</td><td>1452 Cannot add or update a child row / 1451 Cannot delete or update a parent row</td></tr>
            </tbody>
          </table>
        </div>

        <div class="lc-card">
          <h3>Foreign Key Syntax</h3>
        <div class="lc-code">CREATE TABLE orders (<br>&nbsp;&nbsp;&nbsp;&nbsp;id&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,<br>&nbsp;&nbsp;&nbsp;&nbsp;customer_id INT UNSIGNED NOT NULL,<br>&nbsp;&nbsp;&nbsp;&nbsp;total&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;DECIMAL(10,2) NOT NULL,<br>&nbsp;&nbsp;&nbsp;&nbsp;CONSTRAINT fk_orders_customer<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;FOREIGN KEY (customer_id) REFERENCES customers (id)<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ON DELETE RESTRICT<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ON UPDATE CASCADE,<br>&nbsp;&nbsp;&nbsp;&nbsp;CONSTRAINT total_positive CHECK (total &gt; 0)<br>) ENGINE=InnoDB;</div>
          <p>Here you try to insert an order for customer 99, who does not exist:</p>
        <div class="lc-code">ERROR 1452 (23000): Cannot add or update a child row: a foreign key constraint fails<br>(`shop`.`orders`, CONSTRAINT `fk_orders_customer` FOREIGN KEY (`customer_id`)<br>REFERENCES `customers` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE)</div>
        </div>

        <div class="lc-card">
          <h3>InnoDB's Foreign Key Rules</h3>
          <ul class="lc-list">
            <li>Both tables must be <strong>InnoDB</strong>.</li>
            <li>The columns must have <strong>matching types</strong>. <code>INT UNSIGNED</code> cannot reference <code>INT</code>. String columns need the same character set and collation. If they do not match, you get <em>ERROR 3780</em> ("Referencing column ... and referenced column ... are incompatible").</li>
            <li>The referenced column (in the parent table) must be indexed. Usually it is the primary key. If the child column has no index, MySQL creates one for you.</li>
            <li>Actions: <code>RESTRICT</code> / <code>NO ACTION</code> (the default; in InnoDB both check right away), <code>CASCADE</code>, <code>SET NULL</code>. InnoDB reads <code>SET DEFAULT</code> but rejects it.</li>
            <li>Rows changed by a cascade (an automatic follow-on change) do <strong>not</strong> fire triggers on the child table.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Managing Constraints</h3>
        <div class="lc-code">ALTER TABLE orders ADD CONSTRAINT fk_orders_customer<br>&nbsp;&nbsp;&nbsp;&nbsp;FOREIGN KEY (customer_id) REFERENCES customers (id);<br>ALTER TABLE orders DROP FOREIGN KEY fk_orders_customer;<br>ALTER TABLE orders DROP CHECK total_positive;<br><br>-- List constraints<br>SELECT CONSTRAINT_NAME, CONSTRAINT_TYPE<br>FROM information_schema.TABLE_CONSTRAINTS<br>WHERE TABLE_SCHEMA = 'shop' AND TABLE_NAME = 'orders';<br><br>-- Bulk loading tables in any order (use with great care!)<br>SET FOREIGN_KEY_CHECKS = 0;&nbsp;&nbsp;&nbsp;-- ... load ...&nbsp;&nbsp;&nbsp;SET FOREIGN_KEY_CHECKS = 1;</div>
          <p>Turning <code>FOREIGN_KEY_CHECKS</code> off lets <code>mysqldump</code> files load tables in any order. Rows inserted while it is off are <strong>not checked again</strong> when you turn it back on. So orphans (child rows with no parent) can get in.</p>
        </div>

        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Trusting CHECK constraints on a server older than 8.0.16 (they did nothing).</li>
            <li>A child column <code>INT</code> that references a parent <code>INT UNSIGNED</code>.</li>
            <li>Leaving <code>FOREIGN_KEY_CHECKS = 0</code> on in a session after an import.</li>
            <li>Constraints with no name. MySQL then makes names like <code>orders_ibfk_1</code>. These make errors and migrations harder to read.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Try It</h3>
          <p>In the starter code, change <code>ON DELETE SET NULL</code> on <code>tickets.assignee_id</code> to <code>ON DELETE CASCADE</code>. Run it again. What happens to Omkar's tickets now? Which choice is right for a support-ticket system?</p>
        </div>

        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Name constraints with a pattern: <code>fk_child_parent</code>, <code>chk_table_rule</code>, <code>uq_table_column</code>. Say error 1452 appears in production logs at 2 a.m. The name alone tells you what went wrong.
        </div>
      HTML
      starter_code: <<~'SQL'
        -- Constraints and Foreign Keys in InnoDB
        CREATE TABLE agents (
            id    INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
            name  VARCHAR(50) NOT NULL,
            email VARCHAR(100) NOT NULL,
            CONSTRAINT uq_agents_email UNIQUE (email)
        ) ENGINE=InnoDB;

        CREATE TABLE tickets (
            id          INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
            title       VARCHAR(100) NOT NULL,
            priority    TINYINT UNSIGNED NOT NULL,
            assignee_id INT UNSIGNED NULL,
            CONSTRAINT chk_tickets_priority CHECK (priority BETWEEN 1 AND 3),
            CONSTRAINT fk_tickets_agent FOREIGN KEY (assignee_id)
                REFERENCES agents (id) ON DELETE SET NULL
        ) ENGINE=InnoDB;

        CREATE TABLE ticket_comments (
            id        INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
            ticket_id INT UNSIGNED NOT NULL,
            body      VARCHAR(200) NOT NULL,
            CONSTRAINT fk_comments_ticket FOREIGN KEY (ticket_id)
                REFERENCES tickets (id) ON DELETE CASCADE
        ) ENGINE=InnoDB;

        INSERT INTO agents (name, email) VALUES ('Omkar', 'omkar@help.in'), ('Pari', 'pari@help.in');
        INSERT INTO tickets (title, priority, assignee_id) VALUES
            ('Login fails', 1, 1), ('Refund request', 2, 1), ('Typo on page', 3, 2);
        INSERT INTO ticket_comments (ticket_id, body) VALUES
            (1, 'Checked logs'), (1, 'Reset password'), (2, 'Sent to finance');

        -- Omkar leaves: ON DELETE SET NULL keeps his tickets, unassigned
        DELETE FROM agents WHERE name = 'Omkar';
        SELECT id, title, assignee_id FROM tickets;

        -- Deleting a ticket: ON DELETE CASCADE removes its comments too
        DELETE FROM tickets WHERE id = 1;
        SELECT ticket_id, body FROM ticket_comments;

        -- Which rows are unassigned? (a report the SET NULL rule makes possible)
        SELECT t.title, IFNULL(a.name, '(unassigned)') AS agent
        FROM tickets t LEFT JOIN agents a ON a.id = t.assignee_id
        ORDER BY t.id;
      SQL
    },

    7 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mysql">MySQL</div>
          <h1 class="lc-title">Upserts and Duplicate Keys</h1>
        </div>
        <p class="lc-lead">You insert a row, but its key already exists. What should happen? MySQL gives you three tools: <code>INSERT IGNORE</code>, <code>REPLACE</code> and <code>INSERT ... ON DUPLICATE KEY UPDATE</code>. They look alike but work very differently. One of them can delete data without telling you.</p>

        <div class="lc-card">
          <h3>The Three Options</h3>
          <table class="lc-table">
            <thead><tr><th>Statement</th><th>On a duplicate PRIMARY KEY / UNIQUE value</th><th>Risk</th></tr></thead>
            <tbody>
              <tr><td><code>INSERT IGNORE</code></td><td>skips the row and gives a warning</td><td>also turns <em>other</em> errors (too-long strings, NULL in NOT NULL) into warnings. Bad data gets in</td></tr>
              <tr><td><code>REPLACE</code></td><td><strong>deletes</strong> the old row, then inserts the new one</td><td>columns you did not list go back to defaults. The row gets a new AUTO_INCREMENT id. <code>ON DELETE CASCADE</code> children are deleted</td></tr>
              <tr><td><code>INSERT ... ON DUPLICATE KEY UPDATE</code></td><td>updates the existing row with the expressions you give</td><td>the safe, exact choice</td></tr>
            </tbody>
          </table>
        </div>

        <div class="lc-card">
          <h3>ON DUPLICATE KEY UPDATE (Modern Syntax)</h3>
        <div class="lc-code">INSERT INTO stock (sku, name, qty)<br>VALUES ('TEA-1', 'Tea 250g', 20),<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;('JAM-1', 'Mango Jam', 4)<br>AS new<br>ON DUPLICATE KEY UPDATE<br>&nbsp;&nbsp;&nbsp;&nbsp;qty&nbsp;&nbsp;= stock.qty + new.qty,&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-- add the delivered quantity<br>&nbsp;&nbsp;&nbsp;&nbsp;name = new.name;</div>
          <p><code>AS new</code> (MySQL 8.0.19+) gives a name to the row you tried to insert. It is like <code>excluded</code> in PostgreSQL/SQLite. The old form <code>qty = qty + VALUES(qty)</code> still works. But it is <strong>deprecated since 8.0.20</strong>. It is the old way, so do not use it in new code. Why is it deprecated? Since 8.0.19, <code>VALUES</code> is also a statement of its own (<code>VALUES ROW(1, 'a')</code>). So a <code>VALUES()</code> <em>function</em> with a different meaning in the same INSERT is confusing. The row alias works the same way as standard SQL table aliases. MySQL plans to remove <code>VALUES()</code> here.</p>
          <p><strong>In this sandbox:</strong> the compatibility layer does not understand the <code>AS new</code> row alias. So the starter code repeats the delivered number as a fixed value (<code>qty = qty + 7</code>). A comment next to each upsert (update-or-insert) shows the <code>AS new</code> form for a real server.</p>
          <p>The "affected rows" count tells you what happened to each row: <strong>1</strong> = inserted, <strong>2</strong> = an existing row was updated, <strong>0</strong> = the existing row already had those values.</p>
        </div>

        <div class="lc-card">
          <h3>Why REPLACE Is Dangerous</h3>
        <div class="lc-code">-- products(id, sku UNIQUE, name, qty, price); reviews has ON DELETE CASCADE<br>REPLACE INTO products (sku, name) VALUES ('TEA-1', 'Tea (new pack)');</div>
        <div class="lc-code">Query OK, 2 rows affected&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-- 1 delete + 1 insert<br>-- qty is back to 0, price is NULL, the row has a NEW id,<br>-- and every review of the old TEA-1 row was cascade-deleted.</div>
          <p>Use REPLACE only when you really want to throw the old row away completely. A cache table is one example.</p>
        </div>

        <div class="lc-card">
          <h3>Which Key Counts as a Duplicate?</h3>
          <ul class="lc-list">
            <li><strong>Any</strong> PRIMARY KEY or UNIQUE index can start ON DUPLICATE KEY UPDATE. Say a table has two unique keys, <code>sku</code> and <code>barcode</code>. A row may clash with a <em>different</em> existing row than you expect. Keep one natural unique key per upsert table.</li>
            <li>Upserts can use up AUTO_INCREMENT values even when they only update. So expect gaps in ids.</li>
            <li>With a <code>_ci</code> collation, <code>'tea-1'</code> and <code>'TEA-1'</code> are duplicates.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Using <code>INSERT IGNORE</code> for imports. Data is then lost or cut short without any error.</li>
            <li>Using <code>REPLACE</code> as "update or insert". It wipes columns and child rows.</li>
            <li>Running <code>SELECT</code> and then <code>INSERT</code> or <code>UPDATE</code> in application code. Two requests can run at the same time and clash. One upsert statement is atomic (it runs as one step).</li>
            <li>Writing <code>VALUES(col)</code> in new code instead of a row alias.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Try It</h3>
          <p>A second delivery brings 5 Soap and 12 Tea. Write the two upserts so the quantities add up. Then use <code>INSERT IGNORE</code> to add a new agent. Use an email that already exists, but with different capital letters. Was it inserted?</p>
        </div>

        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Design the UNIQUE key first ("one row per sku", "one row per user per day"). Then write the upsert for that key. Without a matching unique key, an upsert is just a normal insert. It creates duplicates.
        </div>
      HTML
      starter_code: <<~'SQL'
        -- Upserts and Duplicate Keys
        CREATE TABLE products (
            id    INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
            sku   VARCHAR(20) NOT NULL UNIQUE,
            name  VARCHAR(50) NOT NULL,
            qty   INT NOT NULL DEFAULT 0,
            price DECIMAL(10,2)
        ) ENGINE=InnoDB;
        CREATE TABLE reviews (
            id         INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
            product_id INT UNSIGNED NOT NULL,
            stars      TINYINT NOT NULL,
            FOREIGN KEY (product_id) REFERENCES products (id) ON DELETE CASCADE
        ) ENGINE=InnoDB;

        INSERT INTO products (sku, name, qty, price) VALUES
            ('TEA-1', 'Tea 250g', 10, 120.00), ('SOAP-1', 'Neem Soap', 5, 40.00);
        INSERT INTO reviews (product_id, stars) VALUES (1, 5), (1, 4);

        -- 1. INSERT IGNORE: the duplicate sku is skipped (lowercase still clashes: _ci collation)
        INSERT IGNORE INTO products (sku, name, qty) VALUES ('tea-1', 'Tea again', 99);
        SELECT sku, name, qty FROM products;

        -- 2. ON DUPLICATE KEY UPDATE: a delivery of 7 adds to the existing row
        --    The sandbox cannot read the row alias, so it repeats the constant 7.
        --    On a real server write the modern form:
        --      INSERT INTO products (sku, name, qty, price) VALUES ('TEA-1', 'Tea 250g', 7, 120.00) AS new
        --      ON DUPLICATE KEY UPDATE qty = products.qty + new.qty;
        INSERT INTO products (sku, name, qty, price) VALUES ('TEA-1', 'Tea 250g', 7, 120.00)
        ON DUPLICATE KEY UPDATE qty = qty + 7;
        --    ...and a new sku is simply inserted
        --    Real server: ... VALUES ('JAM-1', 'Mango Jam', 4, 90.00) AS new
        --                 ON DUPLICATE KEY UPDATE qty = products.qty + new.qty;
        INSERT INTO products (sku, name, qty, price) VALUES ('JAM-1', 'Mango Jam', 4, 90.00)
        ON DUPLICATE KEY UPDATE qty = qty + 4;
        SELECT sku, name, qty, price FROM products ORDER BY sku;
        SELECT COUNT(*) AS tea_reviews FROM reviews;

        -- 3. REPLACE deletes the old row: qty resets, price is lost,
        --    and ON DELETE CASCADE removes its reviews!
        REPLACE INTO products (sku, name) VALUES ('TEA-1', 'Tea (new pack)');
        SELECT sku, name, qty, price FROM products ORDER BY sku;
        SELECT COUNT(*) AS tea_reviews_after_replace FROM reviews;
      SQL
    },

    8 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mysql">MySQL</div>
          <h1 class="lc-title">String, Date and GROUP_CONCAT Functions</h1>
        </div>
        <p class="lc-lead">MySQL has its own set of very useful functions. This lesson covers the ones you will use every week. For text: <code>CONCAT</code> and similar functions. For dates: <code>DATE_FORMAT</code>, <code>DATE_ADD</code> and <code>TIMESTAMPDIFF</code>. And <code>GROUP_CONCAT</code> joins many rows into one string.</p>

        <div class="lc-card">
          <h3>Joining and Cutting Text</h3>
          <table class="lc-table">
            <thead><tr><th>Function</th><th>Example</th><th>Result</th></tr></thead>
            <tbody>
              <tr><td><code>CONCAT(a, b, ...)</code></td><td><code>CONCAT('Ram', ' ', 'Kumar')</code></td><td><code>'Ram Kumar'</code> (NULL if any argument is NULL)</td></tr>
              <tr><td><code>CONCAT_WS(sep, ...)</code></td><td><code>CONCAT_WS(' ', 'Ram', NULL, 'Kumar')</code></td><td><code>'Ram Kumar'</code> (skips NULLs)</td></tr>
              <tr><td><code>SUBSTRING_INDEX(s, delim, n)</code></td><td><code>SUBSTRING_INDEX('priya@gmail.com', '@', -1)</code></td><td><code>'gmail.com'</code></td></tr>
              <tr><td><code>LEFT</code> / <code>RIGHT</code></td><td><code>LEFT('Kerala', 3)</code></td><td><code>'Ker'</code></td></tr>
              <tr><td><code>LPAD(s, n, pad)</code></td><td><code>LPAD('42', 5, '0')</code></td><td><code>'00042'</code></td></tr>
              <tr><td><code>LOCATE(sub, s)</code></td><td><code>LOCATE('@', 'a@b.com')</code></td><td><code>2</code></td></tr>
              <tr><td><code>FORMAT(n, d)</code></td><td><code>FORMAT(1234567.891, 2)</code></td><td><code>'1,234,567.89'</code> (a string, for display only)</td></tr>
            </tbody>
          </table>
          <p>Remember: in MySQL, <code>||</code> means logical OR by default. It does not join strings. (This use of <code>||</code> is also deprecated.) Always use <code>CONCAT()</code>.</p>
        </div>

        <div class="lc-card">
          <h3>Formatting Dates With DATE_FORMAT</h3>
        <div class="lc-code">SELECT DATE_FORMAT('2026-09-25 14:05:00', '%d/%m/%Y')&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;AS indian,<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;DATE_FORMAT('2026-09-25 14:05:00', '%W, %d %M %Y %h:%i %p') AS long_form;</div>
        <div class="lc-code">+------------+-------------------------------------+<br>| indian&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;| long_form&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|<br>+------------+-------------------------------------+<br>| 25/09/2026 | Friday, 25 September 2026 02:05 PM&nbsp;&nbsp;|<br>+------------+-------------------------------------+</div>
          <table class="lc-table">
            <thead><tr><th>Specifier</th><th>Meaning</th><th>Specifier</th><th>Meaning</th></tr></thead>
            <tbody>
              <tr><td><code>%Y</code></td><td>2026</td><td><code>%H</code></td><td>hour 00–23</td></tr>
              <tr><td><code>%m</code></td><td>month 01–12</td><td><code>%h</code></td><td>hour 01–12</td></tr>
              <tr><td><code>%d</code></td><td>day 01–31</td><td><code>%i</code></td><td>minutes (not <code>%M</code>!)</td></tr>
              <tr><td><code>%M</code> / <code>%b</code></td><td>September / Sep</td><td><code>%p</code></td><td>AM / PM</td></tr>
              <tr><td><code>%W</code> / <code>%a</code></td><td>Friday / Fri</td><td><code>%s</code></td><td>seconds</td></tr>
            </tbody>
          </table>
          <p>To go the other way, from text to date, use <code>STR_TO_DATE('25/09/2026', '%d/%m/%Y')</code> → <code>2026-09-25</code>.</p>
        </div>

        <div class="lc-card">
          <h3>Date Arithmetic</h3>
        <div class="lc-code">SELECT DATE_ADD('2026-09-25', INTERVAL 30 DAY)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;AS due_date,&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-- 2026-10-25<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;DATE_ADD('2026-01-31', INTERVAL 1 MONTH)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;AS month_later,&nbsp;&nbsp;&nbsp;-- 2026-02-28<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;DATEDIFF('2026-12-25', '2026-09-25')&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;AS days_left,&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-- 91<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;TIMESTAMPDIFF(YEAR, '2000-12-01', '2026-09-25')&nbsp;&nbsp;&nbsp;&nbsp;AS age,&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-- 25<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;LAST_DAY('2026-02-10')&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;AS month_end;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-- 2026-02-28</div>
          <p><code>TIMESTAMPDIFF(YEAR, dob, today)</code> counts <em>complete</em> years. So it gives the correct age, even before this year's birthday. <code>NOW()</code> gives the current date and time. <code>CURDATE()</code> gives today's date. Both use the session time zone.</p>
        </div>

        <div class="lc-card">
          <h3>GROUP_CONCAT</h3>
        <div class="lc-code">SELECT batch,<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;GROUP_CONCAT(name ORDER BY name SEPARATOR ', ') AS students,<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;COUNT(*) AS total<br>FROM students<br>GROUP BY batch;</div>
          <p>It is an aggregate (a function over many rows) like <code>COUNT</code>. It supports <code>DISTINCT</code>, <code>ORDER BY</code> and <code>SEPARATOR</code> (the default is a comma). The result is cut off at <code>group_concat_max_len</code> bytes. This is <strong>1024 by default</strong>, and you only get a warning. Raise it for long lists: <code>SET SESSION group_concat_max_len = 100000;</code></p>
        </div>

        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Writing <code>'a' || 'b'</code> in MySQL. It returns 0, not <code>'ab'</code>.</li>
            <li>Using <code>%M</code> for minutes in DATE_FORMAT. It is the month name. Minutes are <code>%i</code>.</li>
            <li>Finding age with <code>YEAR(CURDATE()) - YEAR(dob)</code>. It is wrong by one year before the birthday. Use <code>TIMESTAMPDIFF</code>.</li>
            <li>Sorting or comparing <code>FORMAT()</code> output. It is text with commas.</li>
            <li>GROUP_CONCAT cutting results at 1024 bytes without an error.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Try It</h3>
          <p>Show each student's email domain using <code>SUBSTRING_INDEX</code>. Then list the students in each batch whose fees are due in the 15 days after <code>'2026-09-25'</code>. Format the due date as <code>'Sat 10 Oct'</code> (<code>'%a %e %b'</code>).</p>
        </div>

        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Keep dates as real <code>DATE</code>/<code>DATETIME</code> values in tables. Format them only in the final SELECT (or in the app). Formatted strings like <code>'25/09/2026'</code> cannot be sorted or compared as dates.
        </div>
      HTML
      starter_code: <<~'SQL'
        -- String, Date and GROUP_CONCAT Functions
        CREATE TABLE students (
            id       INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
            first    VARCHAR(30) NOT NULL,
            middle   VARCHAR(30),
            last     VARCHAR(30) NOT NULL,
            email    VARCHAR(80) NOT NULL,
            batch    VARCHAR(10) NOT NULL,
            dob      DATE NOT NULL,
            fee_due  DATE NOT NULL
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

        INSERT INTO students (first, middle, last, email, batch, dob, fee_due) VALUES
            ('Riya',   NULL,     'Sen',    'riya.sen@gmail.com',   'B1', '2004-02-14', '2026-10-01'),
            ('Arjun',  'Kumar',  'Nair',   'arjun@college.edu.in', 'B1', '2003-11-30', '2026-09-28'),
            ('Sneha',  NULL,     'Patil',  'sneha.p@yahoo.com',    'B2', '2004-09-25', '2026-11-15'),
            ('Tushar', 'Vijay',  'Joshi',  'tushar@college.edu.in','B2', '2005-01-05', '2026-10-05');

        -- Text: CONCAT_WS skips the NULL middle names; CONCAT would give NULL
        SELECT CONCAT_WS(' ', first, middle, last)   AS full_name,
               CONCAT(first, ' ', middle, ' ', last) AS concat_result,
               SUBSTRING_INDEX(email, '@', -1)       AS domain,
               CONCAT('STU', LPAD(id, 4, '0'))       AS roll_no
        FROM students;

        -- Dates ("today" fixed at 2026-09-25 so the output never changes)
        SELECT first,
               DATE_FORMAT(dob, '%d/%m/%Y')                   AS dob_indian,
               TIMESTAMPDIFF(YEAR, dob, '2026-09-25')         AS age,
               DATEDIFF(fee_due, '2026-09-25')                AS days_to_fee,
               DATE_FORMAT(DATE_ADD(fee_due, INTERVAL 7 DAY), '%a %e %b') AS late_after
        FROM students
        ORDER BY fee_due;

        -- GROUP_CONCAT: one row per batch
        SELECT batch,
               GROUP_CONCAT(first ORDER BY first SEPARATOR ', ') AS students,
               COUNT(*) AS total
        FROM students
        GROUP BY batch;
      SQL
    },

    9 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mysql">MySQL</div>
          <h1 class="lc-title">JOINs and Multi-Table Changes</h1>
        </div>
        <p class="lc-lead">First, a quick review of joins. Then the parts that are <strong>specific to MySQL</strong>. MySQL has no <code>FULL OUTER JOIN</code>, and you will learn how to get the same result. You will see MySQL's multi-table <code>UPDATE</code> and <code>DELETE</code> syntax. You will also see how MySQL 8's optimizer (the part that plans queries) handles <code>IN</code> and <code>EXISTS</code>.</p>

        <div class="lc-card">
          <h3>Quick Review</h3>
          <table class="lc-table">
            <thead><tr><th>Join</th><th>Returns</th><th>In MySQL?</th></tr></thead>
            <tbody>
              <tr><td><code>[INNER] JOIN</code></td><td>matching pairs only</td><td>Yes</td></tr>
              <tr><td><code>LEFT [OUTER] JOIN</code></td><td>all left rows + matches</td><td>Yes</td></tr>
              <tr><td><code>RIGHT [OUTER] JOIN</code></td><td>all right rows + matches</td><td>Yes</td></tr>
              <tr><td><code>CROSS JOIN</code></td><td>every combination</td><td>Yes (in MySQL, <code>JOIN</code> without <code>ON</code> is also a cross join)</td></tr>
              <tr><td><code>FULL [OUTER] JOIN</code></td><td>all rows from both sides</td><td><strong>No</strong>. Build it with UNION</td></tr>
            </tbody>
          </table>
        </div>

        <div class="lc-card">
          <h3>Emulating FULL OUTER JOIN</h3>
        <div class="lc-code">SELECT s.name, c.title<br>FROM students s LEFT JOIN clubs c ON c.id = s.club_id<br>UNION<br>SELECT s.name, c.title<br>FROM students s RIGHT JOIN clubs c ON c.id = s.club_id;</div>
          <p><code>UNION</code> removes the matched rows that appear in both halves. But real duplicate rows may exist in your data. In that case, use <code>UNION ALL</code>. Add <code>WHERE s.id IS NULL</code> to the second half. Then it returns only the right-side rows with no match.</p>
        </div>

        <div class="lc-card">
          <h3>Multi-Table UPDATE and DELETE (MySQL Syntax)</h3>
        <div class="lc-code">-- Give a 10% fee discount to students in the Robotics club<br>UPDATE students s<br>JOIN clubs c ON c.id = s.club_id<br>SET s.fee = s.fee * 0.90<br>WHERE c.title = 'Robotics';<br><br>-- Delete students who belong to a club that has been closed<br>DELETE s<br>FROM students s<br>JOIN clubs c ON c.id = s.club_id<br>WHERE c.is_closed = 1;</div>
          <p>This syntax works only in MySQL. PostgreSQL writes <code>UPDATE ... FROM</code>. Standard SQL uses a subquery. In <code>DELETE s FROM ...</code>, the table name(s) right after DELETE say <em>which</em> table loses rows. The portable version works everywhere (and in this course's editor). It uses a subquery (a query inside another query):</p>
        <div class="lc-code">UPDATE students<br>SET fee = fee * 0.90<br>WHERE club_id IN (SELECT id FROM clubs WHERE title = 'Robotics');</div>
        </div>

        <div class="lc-card">
          <h3>IN vs EXISTS in MySQL 8</h3>
          <p>Old advice said "EXISTS is always faster than IN", or the opposite. In MySQL 8, the optimizer rewrites both <code>IN (subquery)</code> and <code>EXISTS (subquery)</code> into <strong>semijoins</strong>. It rewrites <code>NOT IN</code> / <code>NOT EXISTS</code> into <strong>antijoins</strong> (8.0.17+). So they usually get the same plan. Choose the one that is clearer to read. Check with <code>EXPLAIN</code> when speed matters. The one real difference is <strong>NULL</strong>. <code>NOT IN</code> returns no rows if the subquery has a NULL. <code>NOT EXISTS</code> does not have this problem.</p>
        </div>

        <div class="lc-card">
          <h3>Other MySQL Join Notes</h3>
          <ul class="lc-list">
            <li><code>JOIN ... USING (club_id)</code> works when both columns have the same name.</li>
            <li>Avoid <code>NATURAL JOIN</code>. It joins on every column with the same name. If you add a column like <code>updated_at</code> to both tables, the result changes without warning.</li>
            <li>Joining text columns with different collations can fail with "Illegal mix of collations". Keep collations the same (lesson 4).</li>
            <li>Index the columns you join on. In InnoDB, foreign keys get an index automatically.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Writing <code>FULL OUTER JOIN</code> in MySQL. It is a syntax error. <code>a FULL JOIN b</code> is worse. MySQL reads <code>FULL</code> as an alias for <code>a</code>. It then runs an INNER JOIN without any warning.</li>
            <li>Running a multi-table UPDATE without first running the same JOIN as a SELECT.</li>
            <li>Forgetting the table name after <code>DELETE</code> in a join delete.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Try It</h3>
          <p>Rewrite the "students with no club" query in the starter code using <code>NOT EXISTS</code>. Then write a multi-table UPDATE in your notes, for a real server. It should set <code>clubs.member_count</code> by joining a derived table (a subquery in FROM) of counts.</p>
        </div>

        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Before any UPDATE or DELETE with a JOIN, run it as <code>SELECT s.*, c.* FROM ... JOIN ... WHERE ...</code>. The rows you see are exactly the rows that will change.
        </div>
      HTML
      starter_code: <<~'SQL'
        -- JOINs and Multi-Table Changes
        CREATE TABLE clubs (
            id    INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
            title VARCHAR(40) NOT NULL
        ) ENGINE=InnoDB;
        CREATE TABLE students (
            id      INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
            name    VARCHAR(40) NOT NULL,
            club_id INT UNSIGNED NULL,
            fee     DECIMAL(8,2) NOT NULL
        ) ENGINE=InnoDB;
        INSERT INTO clubs (title) VALUES ('Robotics'), ('Drama'), ('Chess');
        INSERT INTO students (name, club_id, fee) VALUES
            ('Ali', 1, 2000.00), ('Bela', 1, 2000.00), ('Charu', 2, 1500.00), ('Dev', NULL, 1800.00);

        -- Emulated FULL OUTER JOIN: Dev (no club) and Chess (no students) both appear
        SELECT s.name, c.title
        FROM students s LEFT JOIN clubs c ON c.id = s.club_id
        UNION
        SELECT s.name, c.title
        FROM students s RIGHT JOIN clubs c ON c.id = s.club_id
        ORDER BY name, title;

        -- Clubs that have members (EXISTS) and students without a club (anti-join)
        SELECT c.title AS active_club FROM clubs c
        WHERE EXISTS (SELECT 1 FROM students s WHERE s.club_id = c.id);
        SELECT s.name AS no_club FROM students s
        LEFT JOIN clubs c ON c.id = s.club_id
        WHERE c.id IS NULL;

        -- Preview, then apply a 10% discount to Robotics members
        -- (MySQL can also write: UPDATE students s JOIN clubs c ... SET ... - see lesson)
        SELECT s.name, s.fee FROM students s JOIN clubs c ON c.id = s.club_id
        WHERE c.title = 'Robotics';
        UPDATE students
        SET fee = fee * 0.90
        WHERE club_id IN (SELECT id FROM clubs WHERE title = 'Robotics');
        SELECT name, fee FROM students ORDER BY id;
      SQL
    },

    10 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mysql">MySQL</div>
          <h1 class="lc-title">CTEs and Window Functions in MySQL</h1>
        </div>
        <p class="lc-lead">Common table expressions (<code>WITH</code>) and window functions (<code>OVER (...)</code>) came in <strong>MySQL 8.0</strong>. The SQL course taught how they work. This lesson covers the MySQL details: recursion limits, column types in recursive CTEs, <code>WITH ROLLUP</code>, and the old 5.7 workarounds you should replace.</p>

        <div class="lc-card">
          <h3>Same Syntax as Standard SQL</h3>
        <div class="lc-code">WITH monthly AS (<br>&nbsp;&nbsp;&nbsp;&nbsp;SELECT DATE_FORMAT(paid_on, '%Y-%m') AS month, SUM(amount) AS revenue<br>&nbsp;&nbsp;&nbsp;&nbsp;FROM payments GROUP BY month<br>)<br>SELECT month, revenue,<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;SUM(revenue) OVER (ORDER BY month)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;AS running_total,<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;revenue - LAG(revenue) OVER (ORDER BY month) AS change_vs_last<br>FROM monthly;</div>
          <p>All the standard window functions exist: <code>ROW_NUMBER</code>, <code>RANK</code>, <code>DENSE_RANK</code>, <code>NTILE</code>, <code>LAG</code>, <code>LEAD</code>, <code>FIRST_VALUE</code>, <code>LAST_VALUE</code>, <code>NTH_VALUE</code>, <code>PERCENT_RANK</code>, <code>CUME_DIST</code>, and also aggregates with <code>OVER</code>. Named windows (<code>WINDOW w AS (...)</code>) work too.</p>
        </div>

        <div class="lc-card">
          <h3>Recursive CTEs: Two MySQL Rules</h3>
        <div class="lc-code">WITH RECURSIVE days (d) AS (<br>&nbsp;&nbsp;&nbsp;&nbsp;SELECT DATE('2026-09-01')<br>&nbsp;&nbsp;&nbsp;&nbsp;UNION ALL<br>&nbsp;&nbsp;&nbsp;&nbsp;SELECT DATE_ADD(d, INTERVAL 1 DAY) FROM days WHERE d &lt; '2026-09-07'<br>)<br>SELECT d FROM days;</div>
          <ol class="lc-list">
            <li><strong>Recursion limit.</strong> <code>cte_max_recursion_depth</code> is 1000 by default. A CTE that repeats more times fails with <em>ERROR 3636: Recursive query aborted after 1001 iterations</em>. You can raise it for one session with <code>SET SESSION cte_max_recursion_depth = 10000;</code>. But first check that your stop condition is right.</li>
            <li><strong>Column types come from the first (anchor) SELECT.</strong> Say the anchor gives <code>'1'</code> and later rows build <code>'1 &gt; 2 &gt; 3'</code>. Strict mode then gives the error <em>Data too long</em>. Make the column wider in the anchor: <code>CAST(name AS CHAR(200))</code>.</li>
          </ol>
        </div>

        <div class="lc-card">
          <h3>WITH ROLLUP: Subtotals the MySQL Way</h3>
        <div class="lc-code">SELECT IFNULL(state, 'ALL STATES') AS state, SUM(amount) AS revenue<br>FROM payments<br>GROUP BY state WITH ROLLUP;</div>
        <div class="lc-code">+------------+---------+<br>| state&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;| revenue |<br>+------------+---------+<br>| Gujarat&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;9000 |<br>| Kerala&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;12000 |<br>| ALL STATES |&nbsp;&nbsp;&nbsp;21000 |<br>+------------+---------+</div>
          <p><code>WITH ROLLUP</code> adds a total row (a super-aggregate row). In that row, the grouped column is NULL. <code>GROUPING(state)</code> (8.0+) returns 1 on those rows. This is safer than IFNULL when the data itself can have NULL states.</p>
        </div>

        <div class="lc-card">
          <h3>Old Way (MySQL 5.7): Don't Use</h3>
        <div class="lc-code">-- Ranking with user variables, common in old answers online:<br>SELECT name, score, @r := @r + 1 AS rnk<br>FROM players, (SELECT @r := 0) init<br>ORDER BY score DESC;</div>
          <p>Setting user variables inside expressions is <strong>deprecated</strong>. Also, the order of evaluation was never guaranteed. Replace it with <code>ROW_NUMBER() OVER (ORDER BY score DESC)</code>.</p>
        </div>

        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Filtering on a window function in WHERE. Put it in a CTE and filter outside.</li>
            <li>Forgetting that <code>LAST_VALUE</code> with the default frame returns the <em>current</em> row. Add <code>ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING</code>.</li>
            <li>Raising <code>cte_max_recursion_depth</code> to hide a recursion that never stops.</li>
            <li>Using these features on a server older than 8.0. They do not exist there.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Try It</h3>
          <p>Make a recursive CTE of dates for September 2026. LEFT JOIN it to <code>payments</code>, so every day appears with its revenue (0 when there is none). Then use <code>NTILE(2)</code> to split the days into "busy" and "quiet" halves.</p>
        </div>

        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Window functions run after WHERE, GROUP BY and HAVING, but before ORDER BY and LIMIT. So <code>SUM(SUM(amount)) OVER (...)</code> is allowed. It is a window over a grouped aggregate. It is very useful for "share of total" reports.
        </div>
      HTML
      starter_code: <<~'SQL'
        -- CTEs and Window Functions in MySQL
        CREATE TABLE payments (
            id      INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
            state    VARCHAR(20) NOT NULL,
            amount  INT UNSIGNED NOT NULL,
            paid_on DATE NOT NULL
        ) ENGINE=InnoDB;
        INSERT INTO payments (state, amount, paid_on) VALUES
            ('Kerala', 5000, '2026-07-10'), ('Gujarat', 3000, '2026-07-22'),
            ('Kerala', 4000, '2026-08-05'), ('Gujarat', 6000, '2026-08-18'),
            ('Kerala', 3000, '2026-09-02');

        -- CTE + running total + month-over-month change
        WITH monthly AS (
            SELECT DATE_FORMAT(paid_on, '%Y-%m') AS month, SUM(amount) AS revenue
            FROM payments GROUP BY month
        )
        SELECT month, revenue,
               SUM(revenue) OVER (ORDER BY month) AS running_total,
               revenue - LAG(revenue) OVER (ORDER BY month) AS change_vs_last
        FROM monthly ORDER BY month;

        -- Rank payments inside each state, and each state's share of all revenue
        SELECT state, paid_on, amount,
               RANK() OVER (PARTITION BY state ORDER BY amount DESC) AS rank_in_state,
               ROUND(100 * amount / SUM(amount) OVER (), 1) AS pct_of_total
        FROM payments ORDER BY state, rank_in_state;

        -- WITH ROLLUP adds a grand-total row; its state is NULL
        -- (on a real server, wrap it: IFNULL(state, 'ALL STATES') or use GROUPING(state))
        SELECT state, SUM(amount) AS revenue
        FROM payments GROUP BY state WITH ROLLUP;

        -- Recursive CTE: a calendar of the first 7 days of September
        WITH RECURSIVE days (d) AS (
            SELECT DATE('2026-09-01')
            UNION ALL
            SELECT DATE_ADD(d, INTERVAL 1 DAY) FROM days WHERE d < '2026-09-07'
        )
        SELECT d AS day, DAYNAME(d) AS weekday FROM days;
      SQL
    },

    11 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mysql">MySQL</div>
          <h1 class="lc-title">The JSON Data Type</h1>
        </div>
        <p class="lc-lead">MySQL has a built-in <code>JSON</code> column type. It refuses invalid JSON. It stores each document (one JSON value) in a fast binary format. It also gives you operators (special symbols) to read and change parts of a document. Use it next to normal columns for data whose shape changes from row to row, such as product attributes, settings and API payloads.</p>

        <div class="lc-card">
          <h3>A JSON Column</h3>
        <div class="lc-code">CREATE TABLE products (<br>&nbsp;&nbsp;&nbsp;&nbsp;id&nbsp;&nbsp;&nbsp;&nbsp;INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,<br>&nbsp;&nbsp;&nbsp;&nbsp;name&nbsp;&nbsp;VARCHAR(80) NOT NULL,<br>&nbsp;&nbsp;&nbsp;&nbsp;price DECIMAL(10,2) NOT NULL,<br>&nbsp;&nbsp;&nbsp;&nbsp;attrs JSON NOT NULL<br>);<br>INSERT INTO products (name, price, attrs) VALUES<br>('Phone X', 19999.00, '{"brand": "Lava", "ram_gb": 8, "colors": ["black", "blue"]}');<br><br>INSERT INTO products (name, price, attrs) VALUES ('Bad', 1, '{brand: Lava}');<br>-- ERROR 3140 (22032): Invalid JSON text: "Missing a name for object member."</div>
        </div>

        <div class="lc-card">
          <h3>Reading Values: -&gt; and -&gt;&gt;</h3>
          <table class="lc-table">
            <thead><tr><th>Expression</th><th>Result</th><th>Type</th></tr></thead>
            <tbody>
              <tr><td><code>attrs-&gt;'$.brand'</code></td><td><code>"Lava"</code> (with quotes)</td><td>JSON, same as <code>JSON_EXTRACT(attrs, '$.brand')</code></td></tr>
              <tr><td><code>attrs-&gt;&gt;'$.brand'</code></td><td><code>Lava</code></td><td>text, same as <code>JSON_UNQUOTE(JSON_EXTRACT(...))</code></td></tr>
              <tr><td><code>attrs-&gt;&gt;'$.colors[0]'</code></td><td><code>black</code></td><td>array element (counting starts at 0)</td></tr>
              <tr><td><code>attrs-&gt;'$.colors'</code></td><td><code>["black", "blue"]</code></td><td>the whole array as JSON</td></tr>
            </tbody>
          </table>
          <p>Use <code>-&gt;&gt;</code> in WHERE clauses and in output. Use <code>-&gt;</code> when you need JSON back. A path (the address of a value inside the document) that does not exist returns NULL.</p>
        <div class="lc-code">SELECT name, attrs-&gt;&gt;'$.brand' AS brand<br>FROM products<br>WHERE attrs-&gt;&gt;'$.brand' = 'Lava' AND attrs-&gt;&gt;'$.ram_gb' &gt;= 8;</div>
        </div>

        <div class="lc-card">
          <h3>Building and Changing JSON</h3>
        <div class="lc-code">SELECT JSON_OBJECT('sku', 'PH-1', 'price', 19999);&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-- {"sku": "PH-1", "price": 19999}<br>SELECT JSON_ARRAY('a', 1, NULL);&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-- ["a", 1, null]<br><br>UPDATE products SET attrs = JSON_SET(attrs, '$.ram_gb', 12, '$.has_5g', true) WHERE id = 1;<br>UPDATE products SET attrs = JSON_REMOVE(attrs, '$.colors[1]') WHERE id = 1;</div>
          <p><code>JSON_SET</code> adds or replaces, <code>JSON_INSERT</code> only adds, <code>JSON_REPLACE</code> only replaces, <code>JSON_REMOVE</code> deletes. InnoDB can change just that part of the document. It does not need to rewrite the whole document.</p>
        </div>

        <div class="lc-card">
          <h3>More Useful Tools (MySQL 8.0+)</h3>
        <div class="lc-code">-- Search inside arrays<br>SELECT name FROM products WHERE 'blue' MEMBER OF (attrs-&gt;'$.colors');<br>SELECT name FROM products WHERE JSON_CONTAINS(attrs-&gt;'$.colors', '"blue"');<br><br>-- Rows -&gt; JSON<br>SELECT JSON_ARRAYAGG(name) FROM products;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-- ["Phone X", ...]<br><br>-- JSON -&gt; rows: JSON_TABLE turns an array into a table<br>SELECT p.name, c.color<br>FROM products p,<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;JSON_TABLE(p.attrs, '$.colors[*]' COLUMNS (color VARCHAR(20) PATH '$')) AS c;</div>
          <p>You cannot index a JSON column directly. Instead, index a <strong>generated column</strong> that pulls out one value (see the next lesson). For arrays, use a <strong>multi-valued index</strong>: <code>INDEX ((CAST(attrs-&gt;'$.colors' AS CHAR(20) ARRAY)))</code>. This makes <code>MEMBER OF</code> and <code>JSON_CONTAINS</code> faster.</p>
        </div>

        <div class="lc-card">
          <h3>JSON Column or Normal Columns?</h3>
          <table class="lc-table">
            <thead><tr><th>Use normal columns when...</th><th>Use JSON when...</th></tr></thead>
            <tbody>
              <tr><td>every row has the value (name, price)</td><td>attributes are different for each category (RAM for phones, fabric for shirts)</td></tr>
              <tr><td>you filter, join or sort on it often</td><td>you mostly save it and read it back as one whole piece</td></tr>
              <tr><td>you need foreign keys or CHECK rules</td><td>the shape comes from an outside API</td></tr>
            </tbody>
          </table>
        </div>

        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Comparing with <code>-&gt;</code> instead of <code>-&gt;&gt;</code>: <code>attrs-&gt;'$.brand' = 'Lava'</code> compares the JSON value <code>"Lava"</code> with text.</li>
            <li>Sorting by <code>attrs-&gt;&gt;'$.ram_gb'</code>. The value is text, so "16" comes before "8". Use <code>CAST(attrs-&gt;&gt;'$.ram_gb' AS UNSIGNED)</code>.</li>
            <li>Putting everything in one JSON column. You then lose types, constraints (rules on the data) and indexes.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Try It</h3>
          <p>Add a laptop with <code>{"brand": "Acer", "ram_gb": 16, "colors": ["silver"]}</code>. List the products with at least 8 GB RAM. Show the brand and the first colour. Then use <code>JSON_SET</code> to add <code>"warranty_years": 2</code> to the laptop.</p>
        </div>

        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> MySQL tidies JSON when it stores it. Extra spaces are removed. If a key appears twice, only the last value is kept. Keys may also change order. So do not depend on the key order you inserted.
        </div>
      HTML
      starter_code: <<~'SQL'
        -- The JSON Data Type
        CREATE TABLE products (
            id    INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
            name  VARCHAR(80)   NOT NULL,
            price DECIMAL(10,2) NOT NULL,
            attrs JSON          NOT NULL
        ) ENGINE=InnoDB;

        INSERT INTO products (name, price, attrs) VALUES
            ('Phone X',   19999.00, '{"brand": "Lava", "ram_gb": 8, "colors": ["black", "blue"]}'),
            ('Phone Lite', 9999.00, '{"brand": "Lava", "ram_gb": 4, "colors": ["red"]}'),
            ('Kurta',       899.00, '{"fabric": "cotton", "sizes": ["M", "L", "XL"]}');

        -- -> returns JSON (quoted), ->> returns plain text
        SELECT name,
               attrs->'$.brand'      AS brand_json,
               attrs->>'$.brand'     AS brand_text,
               attrs->>'$.colors[0]' AS first_color,
               attrs->>'$.fabric'    AS fabric        -- NULL when the path is missing
        FROM products;

        -- Filter on values inside the document
        SELECT name, price FROM products
        WHERE attrs->>'$.brand' = 'Lava' AND attrs->>'$.ram_gb' >= 8;

        -- Change part of a document with JSON_SET, then read it back
        UPDATE products SET attrs = JSON_SET(attrs, '$.ram_gb', 12) WHERE name = 'Phone X';
        SELECT name, attrs->>'$.ram_gb' AS ram_after_update FROM products WHERE name = 'Phone X';

        -- Build JSON from columns
        --   MySQL prints:   {"name": "Kurta", "price": 899.00}
        --   sandbox prints: {"name":"Kurta","price":899.0}  (no spaces; 899.0, not 899.00)
        SELECT JSON_OBJECT('name', name, 'price', price) AS api_row
        FROM products WHERE name = 'Kurta';

        -- JSON_VALID checks text before you store it
        SELECT JSON_VALID('{"ok": true}') AS good, JSON_VALID('{brand: Lava}') AS bad;
      SQL
    },

    12 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mysql">MySQL</div>
          <h1 class="lc-title">Generated Columns</h1>
        </div>
        <p class="lc-lead">A <strong>generated column</strong> gets its value from other columns in the same row. You give the formula (an expression). MySQL keeps the value correct by itself, so nobody can forget to update it. You can also index it. This is the usual way to make JSON fields and calculated values fast to search.</p>

        <div class="lc-card">
          <h3>Syntax</h3>
        <div class="lc-code">CREATE TABLE order_lines (<br>&nbsp;&nbsp;&nbsp;&nbsp;id&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,<br>&nbsp;&nbsp;&nbsp;&nbsp;qty&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;INT UNSIGNED&nbsp;&nbsp;NOT NULL,<br>&nbsp;&nbsp;&nbsp;&nbsp;unit_price&nbsp;&nbsp;&nbsp;DECIMAL(10,2) NOT NULL,<br>&nbsp;&nbsp;&nbsp;&nbsp;discount_pct TINYINT UNSIGNED NOT NULL DEFAULT 0,<br>&nbsp;&nbsp;&nbsp;&nbsp;line_total&nbsp;&nbsp;&nbsp;DECIMAL(12,2)<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;GENERATED ALWAYS AS (qty * unit_price * (100 - discount_pct) / 100) STORED<br>);<br>INSERT INTO order_lines (qty, unit_price, discount_pct) VALUES (3, 250.00, 10);<br>SELECT line_total FROM order_lines;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-- 675.00</div>
          <p><code>GENERATED ALWAYS</code> is optional; <code>total DECIMAL(12,2) AS (...)</code> means the same. You never insert a value into this column. MySQL refuses a value you give (only <code>DEFAULT</code> is allowed).</p>
        </div>

        <div class="lc-card">
          <h3>VIRTUAL vs STORED</h3>
          <table class="lc-table">
            <thead><tr><th></th><th>VIRTUAL (default)</th><th>STORED</th></tr></thead>
            <tbody>
              <tr><td>Saved on disk?</td><td>No, calculated when you read it</td><td>Yes, calculated on INSERT/UPDATE</td></tr>
              <tr><td>Space</td><td>none (except in indexes)</td><td>like a normal column</td></tr>
              <tr><td>Can be indexed?</td><td>Yes (InnoDB secondary index)</td><td>Yes, including as primary key</td></tr>
              <tr><td>Adding with ALTER TABLE</td><td>usually instant</td><td>rebuilds the table</td></tr>
              <tr><td>Good for</td><td>quick expressions, JSON values you index</td><td>slow expressions that are read very often</td></tr>
            </tbody>
          </table>
        </div>

        <div class="lc-card">
          <h3>Indexing a Value Inside JSON</h3>
        <div class="lc-code">CREATE TABLE devices (<br>&nbsp;&nbsp;&nbsp;&nbsp;id&nbsp;&nbsp;&nbsp;&nbsp;INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,<br>&nbsp;&nbsp;&nbsp;&nbsp;specs JSON NOT NULL,<br>&nbsp;&nbsp;&nbsp;&nbsp;brand VARCHAR(30) AS (specs-&gt;&gt;'$.brand') VIRTUAL,<br>&nbsp;&nbsp;&nbsp;&nbsp;INDEX idx_devices_brand (brand)<br>);<br>SELECT id FROM devices WHERE brand = 'Lava';&nbsp;&nbsp;&nbsp;-- uses idx_devices_brand</div>
          <p>This is the common MySQL way to search JSON fast. The optimizer (the part of MySQL that plans a query) can also use the index if you write the same expression: <code>WHERE specs-&gt;&gt;'$.brand' = 'Lava'</code>. But using the column name is clearer.</p>
        </div>

        <div class="lc-card">
          <h3>Functional Indexes (8.0.13+)</h3>
        <div class="lc-code">CREATE INDEX idx_users_email_domain<br>&nbsp;&nbsp;&nbsp;&nbsp;ON users ((SUBSTRING_INDEX(email, '@', -1)));&nbsp;&nbsp;&nbsp;-- note the double parentheses<br>SELECT COUNT(*) FROM users WHERE SUBSTRING_INDEX(email, '@', -1) = 'gmail.com';</div>
          <p>A functional index is a shortcut. MySQL creates a hidden virtual generated column for you. Your query must use <strong>exactly the same expression</strong>, or the index will not help.</p>
        </div>

        <div class="lc-card">
          <h3>Rules for the Expression</h3>
          <ul class="lc-list">
            <li>It must be <strong>deterministic</strong> (same inputs always give the same result): no <code>NOW()</code>, <code>RAND()</code>, <code>UUID()</code>, user variables or stored functions.</li>
            <li>No subqueries. It can only use columns of the <em>same row</em>.</li>
            <li>It can use other generated columns defined before it. It cannot use the AUTO_INCREMENT column.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Trying to <code>INSERT</code> a value into a generated column.</li>
            <li>Using a generated column for something that depends on time, like "age". <code>NOW()</code> is not allowed, and the value would become out of date anyway. Calculate age in the query.</li>
            <li>Using VIRTUAL for a slow expression on a column that is read millions of times.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Try It</h3>
          <p>Add a generated column <code>full_name</code> = <code>CONCAT_WS(' ', first_name, last_name)</code> to a new <code>members</code> table, and index it. Then add a STORED column <code>gst_amount</code> = 18% of <code>line_total</code> to <code>order_lines</code>.</p>
        </div>

        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Use generated columns instead of triggers to keep a calculated value up to date. There is no code to forget and no trigger to debug.
        </div>
      HTML
      starter_code: <<~'SQL'
        -- Generated Columns
        CREATE TABLE order_lines (
            id           INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
            item         VARCHAR(40)      NOT NULL,
            qty          INT UNSIGNED     NOT NULL,
            unit_price   DECIMAL(10,2)    NOT NULL,
            discount_pct TINYINT UNSIGNED NOT NULL DEFAULT 0,
            line_total   DECIMAL(12,2)
                GENERATED ALWAYS AS (qty * unit_price * (100 - discount_pct) / 100) STORED
        ) ENGINE=InnoDB;

        -- We never insert line_total: MySQL calculates it
        INSERT INTO order_lines (item, qty, unit_price, discount_pct) VALUES
            ('Notebook', 3, 250.00, 10),
            ('Pen pack', 2, 120.00, 0),
            ('Bag',      1, 1500.00, 20);
        SELECT item, qty, unit_price, discount_pct, line_total FROM order_lines;

        -- Change an input column: the generated column follows automatically
        UPDATE order_lines SET qty = 5 WHERE item = 'Pen pack';
        SELECT item, qty, line_total FROM order_lines WHERE item = 'Pen pack';

        -- A VIRTUAL column that extracts a JSON value, with an index on it
        CREATE TABLE devices (
            id    INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
            specs JSON NOT NULL,
            brand VARCHAR(30) AS (specs->>'$.brand') VIRTUAL
        ) ENGINE=InnoDB;
        CREATE INDEX idx_devices_brand ON devices (brand);

        INSERT INTO devices (specs) VALUES
            ('{"brand": "Lava", "type": "phone"}'),
            ('{"brand": "boAt", "type": "earbuds"}'),
            ('{"brand": "Lava", "type": "tablet"}');

        SELECT id, brand, specs->>'$.type' AS type FROM devices WHERE brand = 'Lava';
        SELECT SUM(line_total) AS order_total FROM order_lines;
      SQL
    },

    13 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mysql">MySQL</div>
          <h1 class="lc-title">InnoDB Transactions and Locking</h1>
        </div>
        <p class="lc-lead"><strong>InnoDB</strong> is MySQL's default storage engine (the part that stores and reads the data). It gives you ACID transactions, row-level locking, crash recovery and foreign keys. This lesson shows how InnoDB transactions work in MySQL. It covers autocommit, implicit commits, the default isolation level, and locking reads for tasks like seat booking.</p>

        <div class="lc-card">
          <h3>InnoDB vs MyISAM</h3>
          <table class="lc-table">
            <thead><tr><th>Feature</th><th>InnoDB (default)</th><th>MyISAM (legacy)</th></tr></thead>
            <tbody>
              <tr><td>Transactions, ROLLBACK</td><td>Yes</td><td>No, each statement is final</td></tr>
              <tr><td>Locking</td><td>row-level</td><td>whole table</td></tr>
              <tr><td>Crash recovery</td><td>automatic (redo log)</td><td>may need <code>REPAIR TABLE</code></td></tr>
              <tr><td>Foreign keys</td><td>Yes</td><td>ignored</td></tr>
            </tbody>
          </table>
          <p>Use InnoDB for application tables. (Other engines exist, such as MEMORY, ARCHIVE and NDB for MySQL Cluster, but they are for special cases.) To see a table's engine, use <code>SHOW TABLE STATUS LIKE 'orders'</code>.</p>
        </div>

        <div class="lc-card">
          <h3>Autocommit and Explicit Transactions</h3>
        <div class="lc-code">SELECT @@autocommit;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-- 1: every statement commits on its own<br>START TRANSACTION;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-- or BEGIN<br>UPDATE wallets SET balance = balance - 500 WHERE user_id = 1 AND balance &gt;= 500;<br>UPDATE wallets SET balance = balance + 500 WHERE user_id = 2;<br>COMMIT;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-- or ROLLBACK</div>
          <p><strong>Implicit commits:</strong> DDL statements (statements that change table structure) such as <code>CREATE TABLE</code>, <code>ALTER TABLE</code>, <code>DROP TABLE</code> and <code>TRUNCATE</code> commit the current transaction by themselves. You cannot roll them back. Never put schema changes in a transaction that you might need to undo.</p>
        </div>

        <div class="lc-card">
          <h3>Isolation: REPEATABLE READ by Default</h3>
          <p>InnoDB uses <strong>MVCC</strong> (multi-version concurrency control). Readers see a fixed <em>snapshot</em> (a copy of the data at one moment), and they do not block writers. With the default <code>REPEATABLE READ</code>, every plain SELECT in a transaction sees the data as it was at the transaction's first read.</p>
          <table class="lc-table">
            <thead><tr><th>Time</th><th>Session A</th><th>Session B</th></tr></thead>
            <tbody>
              <tr><td>1</td><td><code>START TRANSACTION; SELECT seats_left FROM shows WHERE id=1;</code> → 2</td><td></td></tr>
              <tr><td>2</td><td></td><td><code>UPDATE shows SET seats_left = 1 WHERE id=1;</code> (autocommit)</td></tr>
              <tr><td>3</td><td><code>SELECT seats_left ...;</code> → still 2 (snapshot)</td><td></td></tr>
              <tr><td>4</td><td><code>SELECT seats_left ... FOR UPDATE;</code> → 1 (locking read sees latest)</td><td></td></tr>
            </tbody>
          </table>
          <p>You can change the level for one session with <code>SET SESSION TRANSACTION ISOLATION LEVEL READ COMMITTED;</code>. Many busy apps use READ COMMITTED to reduce locking.</p>
        </div>

        <div class="lc-card">
          <h3>Locking Reads: Booking the Last Seat</h3>
        <div class="lc-code">START TRANSACTION;<br>SELECT seats_left FROM shows WHERE id = 1 FOR UPDATE;&nbsp;&nbsp;&nbsp;-- locks this row<br>-- app checks seats_left &gt; 0 ...<br>UPDATE shows SET seats_left = seats_left - 1 WHERE id = 1;<br>INSERT INTO bookings (show_id, user_id) VALUES (1, 42);<br>COMMIT;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-- lock released</div>
          <ul class="lc-list">
            <li><code>FOR UPDATE</code>: an exclusive lock. Other <code>FOR UPDATE</code> readers and all writers must wait.</li>
            <li><code>FOR SHARE</code>: a shared lock. Others can also lock the row for reading, but they cannot change it.</li>
            <li><code>NOWAIT</code>: fail at once if the row is locked. <code>SKIP LOCKED</code>: skip locked rows. This is very useful for job queues where many workers pick tasks.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Deadlocks and Lock Waits</h3>
          <p>Sometimes two transactions each hold a lock that the other one needs. This is a <strong>deadlock</strong>. InnoDB finds it, rolls one transaction back and returns <em>ERROR 1213: Deadlock found when trying to get lock; try restarting transaction</em>. If a lock is just held for too long, you get <em>ERROR 1205: Lock wait timeout exceeded</em> (<code>innodb_lock_wait_timeout</code>, 50 seconds by default). Your application should catch error 1213 and <strong>retry</strong> the whole transaction. Keep transactions short. Always change rows in the same order. This makes deadlocks rare.</p>
        </div>

        <div class="lc-card">
          <h3>Changing a Live Table: Online DDL</h3>
          <p>Running <code>ALTER TABLE</code> on a busy production table also involves locks. InnoDB picks the cheapest <strong>algorithm</strong> (method). You can name one yourself. Then MySQL fails at once instead of quietly copying a huge table:</p>
        <div class="lc-code">ALTER TABLE orders ADD COLUMN coupon VARCHAR(20), ALGORITHM=INSTANT;&nbsp;&nbsp;&nbsp;-- metadata only, any size<br>ALTER TABLE orders ADD INDEX idx_status (status), ALGORITHM=INPLACE, LOCK=NONE;&nbsp;&nbsp;-- reads and writes continue<br>ALTER TABLE orders MODIFY total BIGINT, ALGORITHM=COPY;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-- type change: full table copy</div>
          <table class="lc-table">
            <thead><tr><th>Algorithm</th><th>What happens</th><th>Typical operations</th></tr></thead>
            <tbody>
              <tr><td>INSTANT (default when possible)</td><td>only the table definition changes</td><td>add or drop a column, rename a column, change a default</td></tr>
              <tr><td>INPLACE</td><td>rebuilt inside InnoDB; DML (INSERT, UPDATE, DELETE) usually allowed</td><td>add a secondary index, add a foreign key (with <code>foreign_key_checks=0</code>)</td></tr>
              <tr><td>COPY</td><td>a new table is built row by row; writes blocked</td><td>change a column's data type</td></tr>
            </tbody>
          </table>
          <p>Every ALTER also needs a short <strong>metadata lock</strong> (a lock on the table definition). If one long transaction has used <code>orders</code>, the ALTER must wait. Then every new query on <code>orders</code> waits in line behind it. So first check <code>SHOW PROCESSLIST</code> for long transactions. Instant add/drop is limited to 64 row versions per table in 8.4 (255 from 9.1). After that, use INPLACE or COPY.</p>
        </div>

        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Expecting ROLLBACK to undo a <code>CREATE</code> or <code>ALTER</code>. They cause an implicit commit.</li>
            <li>Checking free seats with a plain SELECT and then updating. Two users can both see "1 seat left". Use <code>FOR UPDATE</code> or a conditional UPDATE.</li>
            <li>Leaving a transaction open in a console session. This blocks everyone else's updates.</li>
            <li>Not retrying after a deadlock error.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Try It</h3>
          <p>In the starter, try to book 3 seats for show 2 (only 2 left) with <code>UPDATE shows SET seats_left = seats_left - 3 WHERE id = 2 AND seats_left &gt;= 3</code> inside a transaction. The output shows <em>0 rows updated</em> (the mysql client says <code>Rows matched: 0  Changed: 0</code>). So use ROLLBACK instead of inserting the booking. Check both tables afterwards.</p>
        </div>

        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> One conditional statement, <code>UPDATE shows SET seats_left = seats_left - 1 WHERE id = 1 AND seats_left &gt; 0</code>, is atomic (it runs fully or not at all). It needs no extra lock. Check how many rows it changed (1 = booked, 0 = sold out). Use <code>SELECT ... FOR UPDATE</code> when the decision needs more logic than one WHERE clause.
        </div>
      HTML
      starter_code: <<~'SQL'
        -- InnoDB Transactions and Locking
        CREATE TABLE shows (
            id         INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
            movie      VARCHAR(50) NOT NULL,
            seats_left INT UNSIGNED NOT NULL
        ) ENGINE=InnoDB;
        CREATE TABLE bookings (
            id      INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
            show_id INT UNSIGNED NOT NULL,
            user_id INT UNSIGNED NOT NULL
        ) ENGINE=InnoDB;
        INSERT INTO shows (movie, seats_left) VALUES ('RRR (re-release)', 3), ('Lagaan', 2);

        -- 1. Book one seat with a locking read inside a transaction
        START TRANSACTION;
        SELECT seats_left FROM shows WHERE id = 1 FOR UPDATE;
        UPDATE shows SET seats_left = seats_left - 1 WHERE id = 1 AND seats_left > 0;
        INSERT INTO bookings (show_id, user_id) VALUES (1, 42);
        COMMIT;

        -- 2. A booking we cancel halfway: ROLLBACK undoes both changes
        START TRANSACTION;
        UPDATE shows SET seats_left = seats_left - 1 WHERE id = 2 AND seats_left > 0;
        INSERT INTO bookings (show_id, user_id) VALUES (2, 7);
        SELECT movie, seats_left AS inside_txn FROM shows WHERE id = 2;
        ROLLBACK;
        SELECT movie, seats_left AS after_rollback FROM shows WHERE id = 2;

        -- 3. SAVEPOINT: keep the first booking, undo the second
        START TRANSACTION;
        UPDATE shows SET seats_left = seats_left - 1 WHERE id = 1 AND seats_left > 0;
        INSERT INTO bookings (show_id, user_id) VALUES (1, 8);
        SAVEPOINT after_first;
        UPDATE shows SET seats_left = seats_left - 1 WHERE id = 1 AND seats_left > 0;
        INSERT INTO bookings (show_id, user_id) VALUES (1, 9);
        ROLLBACK TO SAVEPOINT after_first;
        COMMIT;

        SELECT id, movie, seats_left FROM shows;
        SELECT show_id, user_id FROM bookings ORDER BY id;
      SQL
    },

    14 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mysql">MySQL</div>
          <h1 class="lc-title">Indexes and EXPLAIN</h1>
        </div>
        <p class="lc-lead">An index (a sorted list that helps MySQL find rows fast) decides if a query reads 5 rows or 5 million. In InnoDB the <strong>primary key is the table</strong>. Rows are stored in primary-key order, and every other index points back to it. <code>EXPLAIN</code> shows which index MySQL chose. <code>EXPLAIN ANALYZE</code> shows what really happened.</p>

        <div class="lc-card">
          <h3>How InnoDB Stores Indexes</h3>
          <ul class="lc-list">
            <li><strong>Clustered index</strong> = the primary key (PK). The table's rows are stored inside this B-tree (a sorted tree structure), in PK order. Finding a row by PK is the fastest way.</li>
            <li><strong>Secondary indexes</strong> store the indexed columns <em>plus the primary key</em>. MySQL first finds the PK in the secondary index. Then it gets the row from the clustered index.</li>
            <li>So keep the PK <strong>short and increasing</strong> (an <code>INT</code>/<code>BIGINT</code> AUTO_INCREMENT). A random UUID string as PK makes every secondary index bigger. It also spreads inserts all over the table.</li>
            <li>A table without a PK gets a hidden 6-byte row id. Always define a PK.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Creating Indexes</h3>
        <div class="lc-code">CREATE INDEX idx_orders_customer ON orders (customer_id);<br>CREATE INDEX idx_orders_status_date ON orders (status, created_at);&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-- composite<br>CREATE UNIQUE INDEX uq_users_email ON users (email);<br>CREATE INDEX idx_users_name_prefix ON users (name(10));&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-- prefix of a long string<br>CREATE INDEX idx_orders_recent ON orders (created_at DESC);&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-- descending (8.0+)<br>ALTER TABLE orders ALTER INDEX idx_orders_customer INVISIBLE;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-- test before dropping<br>SHOW INDEX FROM orders;</div>
          <p>An <strong>invisible index</strong> (8.0+) is still kept up to date, but the optimizer does not use it. Make an index invisible and watch performance. Only then use <code>DROP INDEX</code>. Switching it back to VISIBLE is instant.</p>
        </div>

        <div class="lc-card">
          <h3>Reading EXPLAIN</h3>
        <div class="lc-code">EXPLAIN SELECT * FROM orders WHERE customer_id = 42;</div>
        <div class="lc-code">-- before the index:<br>+----+-------------+--------+------+---------------+------+------+------+----------+-------------+<br>| id | select_type | table&nbsp;&nbsp;| type | possible_keys | key&nbsp;&nbsp;| ref&nbsp;&nbsp;| rows | filtered | Extra&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|<br>+----+-------------+--------+------+---------------+------+------+------+----------+-------------+<br>|&nbsp;&nbsp;1 | SIMPLE&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;| orders | ALL&nbsp;&nbsp;| NULL&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;| NULL | NULL | 1000 |&nbsp;&nbsp;&nbsp;&nbsp;10.00 | Using where |<br>-- after CREATE INDEX idx_orders_customer:<br>|&nbsp;&nbsp;1 | SIMPLE&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;| orders | ref&nbsp;&nbsp;| idx_orders_customer | idx_orders_customer | const | 2 | 100.00 | NULL |</div>
          <table class="lc-table">
            <thead><tr><th><code>type</code> (best → worst)</th><th>Meaning</th></tr></thead>
            <tbody>
              <tr><td><code>const</code> / <code>eq_ref</code></td><td>at most one row, found with the PK or a UNIQUE index</td></tr>
              <tr><td><code>ref</code></td><td>several rows, found with a non-unique index</td></tr>
              <tr><td><code>range</code></td><td>an index range: <code>BETWEEN</code>, <code>&gt;</code>, <code>IN (...)</code></td></tr>
              <tr><td><code>index</code></td><td>reads the whole index</td></tr>
              <tr><td><code>ALL</code></td><td>full table scan (reads every row); a problem on big tables</td></tr>
            </tbody>
          </table>
          <p>In <code>Extra</code>: <em>Using index</em> = a covering index (the index has all needed columns, so no table lookup; good). <em>Using filesort</em> = an extra sort step. <em>Using temporary</em> = a temporary table (common with GROUP BY on columns without an index). <code>rows</code> is only an estimate. If the estimates look very wrong, run <code>ANALYZE TABLE orders;</code>.</p>
        </div>

        <div class="lc-card">
          <h3>EXPLAIN ANALYZE (8.0.18+)</h3>
        <div class="lc-code">EXPLAIN ANALYZE SELECT * FROM orders WHERE customer_id = 42;<br>-&gt; Index lookup on orders using idx_orders_customer (customer_id=42)<br>&nbsp;&nbsp;&nbsp;(cost=0.7 rows=2) (actual time=0.031..0.036 rows=2 loops=1)</div>
          <p>It <strong>runs</strong> the query. Then it prints the plan as a tree, with real times and row counts next to the estimates. It works with <code>SELECT</code>, <code>TABLE</code> and <strong>multi-table</strong> <code>UPDATE</code>/<code>DELETE</code> statements. A single-table UPDATE or DELETE gives an error. It really runs the statement. So try it on a multi-table UPDATE/DELETE only inside <code>START TRANSACTION; ... ROLLBACK;</code>. <code>EXPLAIN FORMAT=TREE</code> shows the same tree without running the query.</p>
        </div>

        <div class="lc-card">
          <h3>FULLTEXT Search</h3>
        <div class="lc-code">CREATE FULLTEXT INDEX ft_articles ON articles (title, body);<br><br>SELECT title, MATCH(title, body) AGAINST ('monsoon farming') AS score<br>FROM articles<br>WHERE MATCH(title, body) AGAINST ('monsoon farming')&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-- natural language mode<br>ORDER BY score DESC;<br><br>SELECT title FROM articles<br>WHERE MATCH(title, body) AGAINST ('+monsoon -flood' IN BOOLEAN MODE);&nbsp;&nbsp;&nbsp;-- must / must not</div>
          <p><code>LIKE '%monsoon%'</code> cannot use a B-tree index, so it reads every row. A FULLTEXT index can help here. InnoDB ignores words shorter than 3 characters (<code>innodb_ft_min_token_size</code>). It also ignores common stopwords (very common words like "the"). For Chinese, Japanese or Korean text, create the index <code>WITH PARSER ngram</code>. For very large search that also handles spelling mistakes, teams often add a separate search engine such as OpenSearch.</p>
        </div>

        <div class="lc-card">
          <h3>Partitioning Very Large Tables</h3>
          <p><strong>Partitioning</strong> splits one table into pieces that are stored separately. Queries still see one table. It helps mostly with <em>data lifecycle</em> (removing old data). Dropping a whole month of old logs is instant. A <code>DELETE</code> of millions of rows is slow.</p>
        <div class="lc-code">CREATE TABLE page_views (<br>&nbsp;&nbsp;id&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,<br>&nbsp;&nbsp;viewed_on DATE NOT NULL,<br>&nbsp;&nbsp;url&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;VARCHAR(255) NOT NULL,<br>&nbsp;&nbsp;PRIMARY KEY (id, viewed_on)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-- must include the partitioning column<br>)<br>PARTITION BY RANGE COLUMNS (viewed_on) (<br>&nbsp;&nbsp;PARTITION p2026_08 VALUES LESS THAN ('2026-09-01'),<br>&nbsp;&nbsp;PARTITION p2026_09 VALUES LESS THAN ('2026-10-01'),<br>&nbsp;&nbsp;PARTITION pmax&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;VALUES LESS THAN (MAXVALUE)<br>);<br><br>ALTER TABLE page_views DROP PARTITION p2026_08;&nbsp;&nbsp;&nbsp;-- removes August in a moment<br>EXPLAIN SELECT COUNT(*) FROM page_views WHERE viewed_on &gt;= '2026-09-10';<br>-- partitions: p2026_09,pmax&nbsp;&nbsp;&nbsp;(partition pruning)</div>
          <p>Rules: every PRIMARY KEY and UNIQUE key must contain all partitioning columns. Partitioned InnoDB tables cannot have <strong>foreign keys</strong>, and no foreign key can point to them. Queries that do not filter on the partition column must check every partition. Partitioning does not replace a good index. Use it only for tables with hundreds of millions of rows, or for cleanup by date. (The browser sandbox cannot run PARTITION BY. Try it on a real server.)</p>
        </div>

        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Putting indexed columns inside functions: <code>WHERE DATE(created_at) = '2026-09-25'</code> cannot use an index on <code>created_at</code>. Write a range instead: <code>created_at &gt;= '2026-09-25' AND created_at &lt; '2026-09-26'</code> (or add a functional index).</li>
            <li>A composite index (an index on several columns) in the wrong order: <code>(created_at, status)</code> does not help <code>WHERE status = 'paid'</code>.</li>
            <li>Comparing a string column with a number (<code>WHERE phone = 9800000001</code>). MySQL converts every row and does not use the index. Put the number in quotes.</li>
            <li>Dropping an index without making it invisible first.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Try It</h3>
          <p>In the starter, look at the plan for <code>WHERE status = 'paid' AND created_at &gt;= '2026-09-01'</code> before and after you add the composite index. Then rewrite the <code>DATE(created_at)</code> query as a range and compare the plans.</p>
        </div>

        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Turn on the <strong>slow query log</strong> (<code>slow_query_log = ON</code>, <code>long_query_time = 1</code>) in staging and production. It shows you which queries need an index, so you do not have to guess.
        </div>
      HTML
      starter_code: <<~'SQL'
        -- Indexes and EXPLAIN
        -- (The browser simulator prints SQLite's plan: "SCAN" = full scan, like
        --  MySQL type ALL; "SEARCH ... USING INDEX" = index lookup, like type ref/range.)
        CREATE TABLE orders (
            id          INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
            customer_id INT UNSIGNED NOT NULL,
            status      VARCHAR(10)  NOT NULL,
            created_at  DATETIME     NOT NULL,
            amount      DECIMAL(10,2) NOT NULL
        ) ENGINE=InnoDB;

        -- 1000 rows from a recursive CTE (stays under cte_max_recursion_depth = 1000)
        INSERT INTO orders (customer_id, status, created_at, amount)
        WITH RECURSIVE n (i) AS (SELECT 1 UNION ALL SELECT i + 1 FROM n WHERE i < 1000)
        SELECT i % 200,
               CASE i % 3 WHEN 0 THEN 'paid' WHEN 1 THEN 'pending' ELSE 'failed' END,
               DATE_ADD('2026-06-01 10:00:00', INTERVAL (i * 3) HOUR),
               (i * 37) % 5000
        FROM n;
        SELECT COUNT(*) AS total_rows FROM orders;

        -- No index on customer_id yet: full scan
        EXPLAIN SELECT * FROM orders WHERE customer_id = 42;

        CREATE INDEX idx_orders_customer ON orders (customer_id);
        EXPLAIN SELECT * FROM orders WHERE customer_id = 42;

        -- Composite index: leftmost column (status) first, then the range column
        CREATE INDEX idx_orders_status_date ON orders (status, created_at);
        EXPLAIN SELECT id, created_at FROM orders
        WHERE status = 'paid' AND created_at >= '2026-09-01';

        -- A function on the column: the index can only be scanned, not searched
        EXPLAIN SELECT id FROM orders WHERE DATE(created_at) = '2026-09-01';

        SHOW INDEX FROM orders;

        SELECT COUNT(*) AS paid_since_sept, SUM(amount) AS revenue
        FROM orders WHERE status = 'paid' AND created_at >= '2026-09-01';
      SQL
    },

    15 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mysql">MySQL</div>
          <h1 class="lc-title">Views and Stored Procedures</h1>
        </div>
        <p class="lc-lead">A <strong>view</strong> saves a SELECT under a name. A <strong>stored procedure</strong> saves a whole program inside the MySQL server: several statements, variables, IF/ELSE and error handling. You run it with <code>CALL</code>. Both let many apps share one trusted piece of SQL.</p>

        <div class="lc-card">
          <h3>Views in MySQL</h3>
        <div class="lc-code">CREATE OR REPLACE VIEW v_active_customers AS<br>SELECT id, name, state&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-- phone and email deliberately left out<br>FROM customers<br>WHERE is_active = 1<br>WITH CHECK OPTION;</div>
          <ul class="lc-list">
            <li><code>CREATE OR REPLACE VIEW</code> changes a view in one step. You can also use <code>ALTER VIEW</code>.</li>
            <li>Simple views (one table, no GROUP BY / DISTINCT / aggregates) are <strong>updatable</strong>. An UPDATE on the view changes the base table (the real table under it).</li>
            <li><code>WITH CHECK OPTION</code> refuses inserts or updates through the view if they would create rows the view cannot see (here, <code>is_active = 0</code>).</li>
            <li><code>SQL SECURITY DEFINER</code> (the default) runs the view with the privileges (permissions) of the person who created it. With <code>INVOKER</code> it uses the caller's privileges. To hide columns, give users SELECT on the view but not on the table.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Your First Stored Procedure</h3>
        <div class="lc-code">DELIMITER //<br>CREATE PROCEDURE place_order(IN p_customer INT, IN p_amount DECIMAL(10,2),<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;OUT p_order_id INT)<br>BEGIN<br>&nbsp;&nbsp;&nbsp;&nbsp;DECLARE EXIT HANDLER FOR SQLEXCEPTION<br>&nbsp;&nbsp;&nbsp;&nbsp;BEGIN<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ROLLBACK;<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;RESIGNAL;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-- pass the error to the caller<br>&nbsp;&nbsp;&nbsp;&nbsp;END;<br><br>&nbsp;&nbsp;&nbsp;&nbsp;IF p_amount &lt;= 0 THEN<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Amount must be positive';<br>&nbsp;&nbsp;&nbsp;&nbsp;END IF;<br><br>&nbsp;&nbsp;&nbsp;&nbsp;START TRANSACTION;<br>&nbsp;&nbsp;&nbsp;&nbsp;INSERT INTO orders (customer_id, amount) VALUES (p_customer, p_amount);<br>&nbsp;&nbsp;&nbsp;&nbsp;SET p_order_id = LAST_INSERT_ID();<br>&nbsp;&nbsp;&nbsp;&nbsp;UPDATE customers SET total_spent = total_spent + p_amount WHERE id = p_customer;<br>&nbsp;&nbsp;&nbsp;&nbsp;COMMIT;<br>END //<br>DELIMITER ;<br><br>CALL place_order(1, 499.00, @new_id);<br>SELECT @new_id;</div>
        </div>

        <div class="lc-card">
          <h3>The Pieces Explained</h3>
          <table class="lc-table">
            <thead><tr><th>Piece</th><th>Purpose</th></tr></thead>
            <tbody>
              <tr><td><code>DELIMITER //</code></td><td>tells the <em>mysql client</em> that <code>;</code> no longer ends the statement. So the semicolons in the body reach the server unchanged. It is a client command, not SQL. GUI tools and drivers do not need it.</td></tr>
              <tr><td><code>IN</code> / <code>OUT</code> / <code>INOUT</code></td><td>input parameters, output parameters (read back through a <code>@variable</code>), or both</td></tr>
              <tr><td><code>DECLARE</code></td><td>local variables, cursors and handlers; must come first in a BEGIN block</td></tr>
              <tr><td><code>DECLARE ... HANDLER</code></td><td>what to do when an error or warning happens</td></tr>
              <tr><td><code>SIGNAL SQLSTATE '45000'</code></td><td>create your own error with a message</td></tr>
              <tr><td><code>IF</code>, <code>CASE</code>, <code>WHILE</code>, <code>LOOP</code>, <code>REPEAT</code></td><td>control flow (decisions and loops)</td></tr>
            </tbody>
          </table>
        <div class="lc-code">SHOW PROCEDURE STATUS WHERE Db = 'shop';<br>SHOW CREATE PROCEDURE place_order\G<br>DROP PROCEDURE IF EXISTS place_order;</div>
        </div>

        <div class="lc-card">
          <h3>Should Logic Live in the Database?</h3>
          <table class="lc-table">
            <thead><tr><th>Pros</th><th>Cons</th></tr></thead>
            <tbody>
              <tr><td>One round trip for many statements</td><td>Harder to track versions, test and debug than app code</td></tr>
              <tr><td>Same rules for every app and script</td><td>Locks you into MySQL's own programming language</td></tr>
              <tr><td>Users can get EXECUTE without access to the tables</td><td>Adding power to the database is harder than adding app servers</td></tr>
            </tbody>
          </table>
          <p>Many teams today keep business logic in the application. They use procedures for maintenance jobs that work on a lot of data. In both cases, keep procedures in version control as migration files.</p>
        </div>

        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Forgetting <code>DELIMITER</code> in the mysql client. The CREATE then stops at the first <code>;</code> with a syntax error.</li>
            <li>Giving parameters the same names as columns (<code>customer_id</code>). Inside queries, MySQL uses the parameter. Add a prefix: <code>p_customer</code>.</li>
            <li>No error handler. Then a failure leaves a transaction half-done.</li>
            <li>Building SQL strings from parameters with <code>PREPARE</code> and <code>CONCAT</code>. That brings back the risk of SQL injection.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Try It</h3>
          <p>The browser sandbox cannot store procedures. So the starter runs the procedure's steps one by one with user variables. Change <code>@amount</code> to <code>0</code> and write down what the real procedure would do. On a real server, create <code>place_order</code> and call it.</p>
        </div>

        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Name views with a prefix like <code>v_</code> and procedures with a verb (<code>place_order</code>, <code>archive_old_logs</code>). Without this, views and tables look the same in <code>SHOW TABLES</code> output.
        </div>
      HTML
      starter_code: <<~'SQL'
        -- Views and Stored Procedures
        CREATE TABLE customers (
            id          INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
            name        VARCHAR(50)  NOT NULL,
            phone       VARCHAR(15)  NOT NULL,
            state        VARCHAR(30)  NOT NULL,
            is_active   BOOLEAN      NOT NULL DEFAULT TRUE,
            total_spent DECIMAL(10,2) NOT NULL DEFAULT 0
        ) ENGINE=InnoDB;
        CREATE TABLE orders (
            id          INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
            customer_id INT UNSIGNED NOT NULL,
            amount      DECIMAL(10,2) NOT NULL
        ) ENGINE=InnoDB;
        INSERT INTO customers (name, phone, state, is_active) VALUES
            ('Esha', '9800011111', 'Gujarat', TRUE), ('Faisal', '9800022222', 'Goa', TRUE),
            ('Gita', '9800033333', 'Gujarat', FALSE);

        -- A view that hides phone numbers and inactive customers
        CREATE VIEW v_active_customers AS
        SELECT id, name, state, total_spent FROM customers WHERE is_active = 1;

        -- What CALL place_order(1, 499.00, @new_id) does inside, step by step:
        SET @customer = 1;
        SET @amount = 499.00;
        START TRANSACTION;
        INSERT INTO orders (customer_id, amount) VALUES (@customer, @amount);
        SET @new_id = LAST_INSERT_ID();
        UPDATE customers SET total_spent = total_spent + @amount WHERE id = @customer;
        COMMIT;
        SELECT @new_id AS new_order_id;

        -- A reporting view built on a join
        CREATE VIEW v_state_sales AS
        SELECT c.state, COUNT(o.id) AS orders, IFNULL(SUM(o.amount), 0) AS revenue
        FROM customers c LEFT JOIN orders o ON o.customer_id = c.id
        GROUP BY c.state;

        SELECT * FROM v_active_customers;
        SELECT * FROM v_state_sales ORDER BY state;
      SQL
    },

    16 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mysql">MySQL</div>
          <h1 class="lc-title">Stored Functions and Triggers</h1>
        </div>
        <p class="lc-lead">A <strong>stored function</strong> returns one value. You can use it inside any SQL expression, like a built-in function. A <strong>trigger</strong> runs by itself when a row is inserted, updated or deleted. It is very good for audit logs (records of changes) and for a final check on data. <strong>Events</strong> run SQL on a schedule.</p>

        <div class="lc-card">
          <h3>Stored Functions</h3>
        <div class="lc-code">DELIMITER //<br>CREATE FUNCTION gst_amount(p_amount DECIMAL(10,2), p_rate DECIMAL(4,2))<br>RETURNS DECIMAL(10,2)<br>DETERMINISTIC NO SQL<br>BEGIN<br>&nbsp;&nbsp;&nbsp;&nbsp;RETURN ROUND(p_amount * p_rate / 100, 2);<br>END //<br>DELIMITER ;<br><br>SELECT item, price, gst_amount(price, 18) AS gst FROM products;</div>
          <p>Binary logging is on by default in MySQL 8+. So a function must say what kind it is: <code>DETERMINISTIC</code> (same inputs → same result), <code>NO SQL</code> or <code>READS SQL DATA</code>. If not, CREATE FUNCTION fails with <em>ERROR 1418</em>. Be honest here. A wrong DETERMINISTIC can give wrong results on replicas (copy servers).</p>
          <table class="lc-table">
            <thead><tr><th></th><th>Procedure</th><th>Function</th></tr></thead>
            <tbody>
              <tr><td>Called with</td><td><code>CALL proc(...)</code></td><td>inside an expression: <code>SELECT f(x)</code></td></tr>
              <tr><td>Returns</td><td>OUT parameters, result sets, or both</td><td>exactly one value (<code>RETURN</code>)</td></tr>
              <tr><td>Transactions inside</td><td>allowed</td><td>not allowed</td></tr>
            </tbody>
          </table>
        </div>

        <div class="lc-card">
          <h3>Triggers</h3>
        <div class="lc-code">CREATE TRIGGER trg_products_price_audit<br>AFTER UPDATE ON products<br>FOR EACH ROW<br>INSERT INTO price_log (product_id, old_price, new_price)<br>VALUES (OLD.id, OLD.price, NEW.price);</div>
          <table class="lc-table">
            <thead><tr><th>Event</th><th><code>OLD</code></th><th><code>NEW</code></th></tr></thead>
            <tbody>
              <tr><td>INSERT</td><td>n/a</td><td>the new row (changeable in BEFORE)</td></tr>
              <tr><td>UPDATE</td><td>row before</td><td>row after (changeable in BEFORE)</td></tr>
              <tr><td>DELETE</td><td>the deleted row</td><td>n/a</td></tr>
            </tbody>
          </table>
          <p>A trigger with one statement needs no <code>BEGIN ... END</code> or DELIMITER. MySQL triggers are always <code>FOR EACH ROW</code> (there are no statement-level triggers). You can have several triggers for the same event. Set their order with <code>FOLLOWS</code> / <code>PRECEDES</code>.</p>
        </div>

        <div class="lc-card">
          <h3>BEFORE Triggers: Fix or Reject Data</h3>
        <div class="lc-code">DELIMITER //<br>CREATE TRIGGER trg_products_before_update<br>BEFORE UPDATE ON products<br>FOR EACH ROW<br>BEGIN<br>&nbsp;&nbsp;&nbsp;&nbsp;IF NEW.price &lt; 0 THEN<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Price cannot be negative';<br>&nbsp;&nbsp;&nbsp;&nbsp;END IF;<br>&nbsp;&nbsp;&nbsp;&nbsp;SET NEW.name = TRIM(NEW.name);&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-- clean the value before it is saved<br>END //<br>DELIMITER ;</div>
          <p>For simple rules, a <code>CHECK</code> constraint is clearer. Use a trigger when the rule needs logic or other tables.</p>
        </div>

        <div class="lc-card">
          <h3>Trigger Limits to Know</h3>
          <ul class="lc-list">
            <li>A trigger cannot use UPDATE/INSERT on its own table (<em>ERROR 1442</em>). Change <code>NEW</code> in a BEFORE trigger instead.</li>
            <li>Rows changed by foreign key cascades do <strong>not</strong> fire triggers.</li>
            <li>Triggers run inside the same transaction. If the trigger fails, the whole statement fails and is rolled back.</li>
            <li>You cannot see them in application code. Write them down in your docs, and list them with <code>SHOW TRIGGERS;</code>.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Events: Scheduled SQL</h3>
        <div class="lc-code">CREATE EVENT ev_purge_sessions<br>ON SCHEDULE EVERY 1 DAY STARTS '2026-09-26 02:00:00'<br>DO DELETE FROM sessions WHERE expires_at &lt; NOW();</div>
          <p>The event scheduler is on by default since MySQL 8.0 (<code>SHOW VARIABLES LIKE 'event_scheduler';</code>). It is useful for cleanup jobs. For jobs that need retries, alerts or logs, use an outside scheduler (cron, a job queue). It is easier to watch.</p>
        </div>

        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Putting slow queries in triggers on busy tables. Every insert or update then becomes slower.</li>
            <li>Long chains of triggers that start other triggers. Nobody can follow them.</li>
            <li>Declaring a function <code>DETERMINISTIC</code> when it reads changing data.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Try It</h3>
          <p>Add an <code>AFTER DELETE</code> trigger. It should write the deleted product's id and name into a <code>deleted_products</code> table. Then delete one product and check the table.</p>
        </div>

        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Audit triggers are one of the best uses of triggers. They record <em>who changed what and when</em>, for every app, script or admin that makes a change. Add <code>changed_at DATETIME DEFAULT CURRENT_TIMESTAMP</code> to the log table. Make the trigger store <code>USER()</code> in a <code>changed_by</code> column. (Inside a trigger, <code>CURRENT_USER()</code> returns the trigger's <em>definer</em>, not the person who made the change.)
        </div>
      HTML
      starter_code: <<~'SQL'
        -- Stored Functions and Triggers
        CREATE TABLE products (
            id    INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
            name  VARCHAR(50) NOT NULL,
            price DECIMAL(10,2) NOT NULL
        ) ENGINE=InnoDB;
        CREATE TABLE price_log (
            id         INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
            product_id INT UNSIGNED NOT NULL,
            old_price  DECIMAL(10,2),
            new_price  DECIMAL(10,2)
        ) ENGINE=InnoDB;
        CREATE TABLE stock_moves (product_id INT UNSIGNED, note VARCHAR(60)) ENGINE=InnoDB;

        -- Audit every price change (single-statement trigger: no DELIMITER needed)
        CREATE TRIGGER trg_products_price_audit
        AFTER UPDATE ON products
        FOR EACH ROW
        INSERT INTO price_log (product_id, old_price, new_price)
        VALUES (OLD.id, OLD.price, NEW.price);

        -- Record every new product
        CREATE TRIGGER trg_products_after_insert
        AFTER INSERT ON products
        FOR EACH ROW
        INSERT INTO stock_moves (product_id, note) VALUES (NEW.id, CONCAT('added: ', NEW.name));

        INSERT INTO products (name, price) VALUES ('Pressure Cooker', 1800.00), ('Tawa', 650.00);
        UPDATE products SET price = price * 1.10 WHERE name = 'Tawa';
        UPDATE products SET price = 1750.00 WHERE name = 'Pressure Cooker';

        SELECT product_id, old_price, new_price FROM price_log ORDER BY id;
        SELECT product_id, note FROM stock_moves;

        -- What a gst_amount(price, 18) stored function would return (see lesson):
        SELECT name, price, ROUND(price * 18 / 100, 2) AS gst FROM products;
      SQL
    },

    17 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mysql">MySQL</div>
          <h1 class="lc-title">Users, Roles and Privileges</h1>
        </div>
        <p class="lc-lead">Every connection to MySQL logs in as an <strong>account</strong>. Each account has only the <strong>privileges</strong> (permissions) you grant it. If your web app uses the root password, any attacker who breaks into the app gets full control of the database. This lesson shows how to set up accounts correctly in MySQL 8.4 and later.</p>

        <div class="lc-card">
          <h3>Accounts Are 'user'@'host'</h3>
        <div class="lc-code">CREATE USER 'shop_app'@'10.0.1.%' IDENTIFIED BY 'a-long-random-password';<br>CREATE USER 'report'@'localhost'&nbsp;&nbsp;IDENTIFIED BY '...';<br>CREATE USER 'admin_asha'@'%'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;IDENTIFIED BY '...' REQUIRE SSL;</div>
          <ul class="lc-list">
            <li>An account is a user name <strong>plus</strong> the host (computer) it can connect from. <code>'report'@'localhost'</code> can only connect from the database machine itself.</li>
            <li><code>%</code> is a wildcard (it matches anything): <code>'10.0.1.%'</code> = any machine in that subnet; <code>'%'</code> = anywhere. Choose the smallest host range that works.</li>
            <li>Passwords are stored hashed (scrambled so they cannot be read). The default authentication plugin is <code>caching_sha2_password</code>. The old <code>mysql_native_password</code> is deprecated (going away), <strong>disabled by default in 8.4</strong> and <strong>removed in 9.0</strong>. Old drivers that only support it must be upgraded.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Granting Privileges</h3>
        <div class="lc-code">GRANT SELECT, INSERT, UPDATE, DELETE ON shop.* TO 'shop_app'@'10.0.1.%';&nbsp;&nbsp;&nbsp;-- one database<br>GRANT SELECT ON shop.orders TO 'report'@'localhost';&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-- one table<br>GRANT SELECT (id, name, state) ON shop.customers TO 'report'@'localhost';&nbsp;&nbsp;&nbsp;-- some columns<br>GRANT EXECUTE ON PROCEDURE shop.place_order TO 'shop_app'@'10.0.1.%';<br><br>SHOW GRANTS FOR 'report'@'localhost';<br>REVOKE DELETE ON shop.* FROM 'shop_app'@'10.0.1.%';</div>
          <table class="lc-table">
            <thead><tr><th>Level</th><th>Syntax</th><th>Typical user</th></tr></thead>
            <tbody>
              <tr><td>Global</td><td><code>ON *.*</code></td><td>DBAs only</td></tr>
              <tr><td>Database</td><td><code>ON shop.*</code></td><td>the application</td></tr>
              <tr><td>Table / column</td><td><code>ON shop.orders</code>, <code>SELECT (col)</code></td><td>reporting, analysts</td></tr>
              <tr><td>Routine</td><td><code>ON PROCEDURE shop.x</code></td><td>apps that can only call procedures</td></tr>
            </tbody>
          </table>
          <p>Since MySQL 8.0, <code>GRANT</code> does not create accounts. Run <code>CREATE USER</code> first. You do not need <code>FLUSH PRIVILEGES</code> after GRANT, REVOKE or CREATE USER. It only matters if someone edits the grant tables directly (do not do this).</p>
        </div>

        <div class="lc-card">
          <h3>Roles (MySQL 8.0+)</h3>
        <div class="lc-code">CREATE ROLE 'app_read', 'app_write';<br>GRANT SELECT ON shop.* TO 'app_read';<br>GRANT INSERT, UPDATE, DELETE ON shop.* TO 'app_write';<br><br>GRANT 'app_read', 'app_write' TO 'shop_app'@'10.0.1.%';<br>GRANT 'app_read' TO 'report'@'localhost';<br>SET DEFAULT ROLE ALL TO 'shop_app'@'10.0.1.%', 'report'@'localhost';</div>
          <p>A role is a named group of privileges. Grant privileges to roles, and grant roles to people. When someone changes team, you change only one line. Granted roles are <strong>inactive until activated</strong>. <code>SET DEFAULT ROLE</code> turns them on at login.</p>
        </div>

        <div class="lc-card">
          <h3>Password and Login Policies</h3>
        <div class="lc-code">ALTER USER 'admin_asha'@'%' PASSWORD EXPIRE INTERVAL 90 DAY;<br>ALTER USER 'admin_asha'@'%' FAILED_LOGIN_ATTEMPTS 5 PASSWORD_LOCK_TIME 1;&nbsp;&nbsp;&nbsp;-- lock 1 day<br>ALTER USER 'shop_app'@'10.0.1.%' IDENTIFIED BY 'new-long-random-password';<br>DROP USER 'old_intern'@'%';</div>
        </div>

        <div class="lc-card">
          <h3>Least-Privilege Checklist</h3>
          <ul class="lc-list">
            <li>One account per application (and per environment), never <code>root</code>.</li>
            <li>Apps get only DML (data commands: <code>SELECT, INSERT, UPDATE, DELETE</code>) on their own database. Schema changes run from a separate migration account.</li>
            <li>No <code>GRANT OPTION</code>, <code>SUPER</code>, <code>FILE</code> or <code>*.*</code> for apps.</li>
            <li>Do not expose MySQL to the public internet. Use <code>bind-address</code> on a private network interface, a firewall, and TLS (encryption) for remote connections.</li>
            <li>Keep passwords in a secrets manager or in environment variables, not in the code repository.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Thinking <code>'app'@'localhost'</code> and <code>'app'@'%'</code> are the same account. They are two different accounts, with separate passwords and grants.</li>
            <li>Using <code>GRANT ALL ON *.*</code> "just to make it work".</li>
            <li>Forgetting <code>SET DEFAULT ROLE</code>. Then the user seems to have no privileges.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Try It</h3>
          <p>User management needs a real server. So the starter runs an <em>access review</em> (a check of who can do what) on a small copy of grant data. Add a query that finds accounts with any privilege on <code>*.*</code>. Then write the REVOKE statements that would fix them on a real server.</p>
        </div>

        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> On a real server, <code>SELECT user, host, plugin FROM mysql.user;</code> quickly shows every account and where it can log in from. It also shows if any account still uses an old authentication plugin.
        </div>
      HTML
      starter_code: <<~'SQL'
        -- Users, Roles and Privileges: an access review
        -- (Real CREATE USER / GRANT need a MySQL server; this is a copy of grant data.)
        CREATE TABLE accounts (
            user_name VARCHAR(32) NOT NULL,
            host      VARCHAR(64) NOT NULL,
            plugin    VARCHAR(40) NOT NULL,
            PRIMARY KEY (user_name, host)
        ) ENGINE=InnoDB;
        CREATE TABLE grants (
            user_name VARCHAR(32) NOT NULL,
            host      VARCHAR(64) NOT NULL,
            privilege VARCHAR(20) NOT NULL,
            scope     VARCHAR(40) NOT NULL          -- '*.*', 'shop.*', 'shop.orders'
        ) ENGINE=InnoDB;

        INSERT INTO accounts VALUES
            ('shop_app', '10.0.1.%',  'caching_sha2_password'),
            ('report',   'localhost', 'caching_sha2_password'),
            ('legacy',   '%',         'mysql_native_password'),
            ('intern',   '%',         'caching_sha2_password');
        INSERT INTO grants VALUES
            ('shop_app', '10.0.1.%',  'SELECT', 'shop.*'), ('shop_app', '10.0.1.%', 'INSERT', 'shop.*'),
            ('shop_app', '10.0.1.%',  'UPDATE', 'shop.*'), ('report', 'localhost', 'SELECT', 'shop.orders'),
            ('legacy',   '%',         'ALL',    '*.*'),    ('intern', '%', 'DELETE', 'shop.*');

        -- 1. Accounts that can connect from anywhere
        SELECT CONCAT('''', user_name, '''@''', host, '''') AS account
        FROM accounts WHERE host = '%' ORDER BY user_name;

        -- 2. Accounts using the old plugin (removed in MySQL 9.0)
        SELECT user_name, host FROM accounts WHERE plugin = 'mysql_native_password';

        -- 3. Who can DELETE in the shop database?
        SELECT user_name, host, privilege, scope FROM grants
        WHERE scope IN ('shop.*', '*.*') AND privilege IN ('DELETE', 'ALL');

        -- 4. Privileges per account, as one line each
        SELECT user_name, host, GROUP_CONCAT(CONCAT(privilege, ' ON ', scope) ORDER BY privilege SEPARATOR ', ') AS privileges
        FROM grants GROUP BY user_name, host ORDER BY user_name;
      SQL
    },

    18 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mysql">MySQL</div>
          <h1 class="lc-title">Backups and Replication</h1>
        </div>
        <p class="lc-lead">Disks fail. People run <code>DELETE</code> without WHERE. Servers get hacked. The only real protection is a <strong>backup</strong> that you have actually restored and tested. <strong>Replication</strong> copies every change to other servers. This keeps the database available and spreads the reads. But it is <em>not</em> a backup.</p>

        <div class="lc-card">
          <h3>Backup Types</h3>
          <table class="lc-table">
            <thead><tr><th>Type</th><th>Tools</th><th>Good for</th></tr></thead>
            <tbody>
              <tr><td>Logical (SQL statements)</td><td><code>mysqldump</code>, MySQL Shell <code>util.dumpInstance()</code></td><td>small or medium databases, moving between versions, restoring one table</td></tr>
              <tr><td>Physical (copies data files)</td><td>Percona XtraBackup, MySQL Enterprise Backup, the CLONE plugin</td><td>large databases, fast full restores</td></tr>
              <tr><td>Point-in-time recovery</td><td>a full backup + the <strong>binary log</strong> replayed with <code>mysqlbinlog</code></td><td>"restore to 10:41, just before the wrong DELETE"</td></tr>
            </tbody>
          </table>
        </div>

        <div class="lc-card">
          <h3>mysqldump</h3>
        <div class="lc-code"># Consistent backup of one database without locking InnoDB tables<br>mysqldump -u backup -p --single-transaction --routines --events \<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;--databases shop &gt; shop_2026-09-25.sql<br><br># Restore<br>mysql -u root -p &lt; shop_2026-09-25.sql<br><br># One table only<br>mysqldump -u backup -p --single-transaction shop orders &gt; orders.sql</div>
          <ul class="lc-list">
            <li><code>--single-transaction</code> takes a consistent snapshot (a copy of all tables at one moment) of InnoDB tables. It does not block writes.</li>
            <li>Triggers are included by default. <strong>Stored procedures/functions (<code>--routines</code>) and events (<code>--events</code>) are not</strong>, so add these flags.</li>
            <li><code>mysqlpump</code> was deprecated and is removed in MySQL 8.4. For big databases, use MySQL Shell's <code>util.dumpInstance()</code> / <code>util.loadDump()</code>. They dump and load in parallel and are much faster.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>The Binary Log and Point-in-Time Recovery</h3>
          <p>The binary log records every change. It is on by default since MySQL 8.0, in <code>ROW</code> format. Restore last night's backup, then replay the log on top of it. Stop just before the mistake:</p>
        <div class="lc-code">mysqlbinlog --stop-datetime="2026-09-25 10:41:00" binlog.000042 binlog.000043 | mysql -u root -p</div>
          <p>Binary logs are kept for 30 days by default (<code>binlog_expire_logs_seconds</code>). Copy them to another place, together with your backups.</p>
        </div>

        <div class="lc-card">
          <h3>Replication Overview</h3>
        <div class="lc-code">[source]&nbsp;&nbsp;--binary log--&gt;&nbsp;&nbsp;[replica 1]&nbsp;&nbsp;(reads, reports)<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\--&gt;&nbsp;&nbsp;[replica 2]&nbsp;&nbsp;(standby for failover)</div>
        <div class="lc-code">-- on the replica (MySQL 8.4 and later syntax, with GTIDs)<br>CHANGE REPLICATION SOURCE TO<br>&nbsp;&nbsp;&nbsp;&nbsp;SOURCE_HOST = '10.0.1.10', SOURCE_USER = 'repl', SOURCE_PASSWORD = '...',<br>&nbsp;&nbsp;&nbsp;&nbsp;SOURCE_AUTO_POSITION = 1, SOURCE_SSL = 1;<br>START REPLICA;<br>SHOW REPLICA STATUS\G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-- check Replica_IO_Running, Replica_SQL_Running, Seconds_Behind_Source</div>
          <ul class="lc-list">
            <li>Replication is <strong>asynchronous</strong> by default. This means a replica (copy server) can be some seconds behind. This delay is called replication lag. If you read from a replica right after writing to the source, you may see old data.</li>
            <li><strong>GTIDs</strong> (global transaction ids) let replicas keep track of their position by themselves. Use them.</li>
            <li>The old commands <code>CHANGE MASTER TO</code>, <code>START SLAVE</code> and <code>SHOW SLAVE STATUS</code> were <strong>removed in MySQL 8.4</strong>. Old tutorials still show them.</li>
            <li>For automatic failover (switching to a standby server when the main one fails), MySQL offers <strong>Group Replication</strong> and <strong>InnoDB Cluster</strong> (Group Replication + MySQL Router + MySQL Shell).</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Replication Is Not a Backup</h3>
          <p>If someone runs <code>DROP TABLE orders</code> on the source, every replica drops it within a second. Replication protects you when a <em>server</em> fails. It does not protect you from a <em>mistake</em>. You need both.</p>
        </div>

        <div class="lc-card">
          <h3>Watching a Running Server</h3>
          <table class="lc-table">
            <thead><tr><th>Tool</th><th>What it tells you</th></tr></thead>
            <tbody>
              <tr><td><code>my.cnf</code> / <code>SET PERSIST</code></td><td>server settings; <code>SET PERSIST max_connections = 300;</code> changes a setting now and keeps it after a restart</td></tr>
              <tr><td>Error log</td><td>startup problems, crashes and replication errors; the first place to look (<code>SELECT @@log_error;</code>)</td></tr>
              <tr><td>Slow query log</td><td>every query slower than <code>long_query_time</code>; get a summary with <code>mysqldumpslow</code></td></tr>
              <tr><td><code>SHOW PROCESSLIST</code></td><td>who is connected and what each connection is running right now</td></tr>
              <tr><td><code>information_schema</code></td><td>metadata (data about your tables) as tables: <code>SELECT table_name, table_rows FROM information_schema.tables WHERE table_schema = 'shop';</code></td></tr>
              <tr><td><code>performance_schema</code> and <code>sys</code></td><td>live statistics; for example <code>SELECT * FROM sys.statement_analysis LIMIT 5;</code> (heaviest queries) and <code>sys.schema_unused_indexes</code></td></tr>
            </tbody>
          </table>
        </div>

        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Never testing a restore. Many teams find out a backup is broken on the day they need it.</li>
            <li>Forgetting <code>--routines --events</code>. The restored database then has no procedures.</li>
            <li>Keeping backups only on the same server as the database (or in the same cloud account).</li>
            <li>Sending all reads to replicas without handling replication lag.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Try It</h3>
          <p>The starter is a short <code>mysqldump</code> file. Run it to "restore" the database. Then write more queries to check it: orders per customer and the newest <code>created_at</code>. In a real restore, you compare these numbers with the source server.</p>
        </div>

        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Follow the <strong>3-2-1 rule</strong>: keep 3 copies of your data, on 2 different kinds of storage, with 1 copy in another place. Then test a restore every month and write down how long it took. That is your real recovery time.
        </div>
      HTML
      starter_code: <<~'SQL'
        -- Backups and Replication: restoring a (trimmed) mysqldump file
        -- MySQL dump 10.13  Distrib 8.4.6, for Linux (x86_64)   Database: shop
        /*!40101 SET NAMES utf8mb4 */;
        SET FOREIGN_KEY_CHECKS = 0;

        DROP TABLE IF EXISTS `customers`;
        CREATE TABLE `customers` (
          `id` int unsigned NOT NULL AUTO_INCREMENT,
          `name` varchar(50) NOT NULL,
          `state` varchar(30) NOT NULL,
          PRIMARY KEY (`id`)
        ) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

        INSERT INTO `customers` VALUES (1,'Kavya','Kerala'),(2,'Laksh','Punjab'),(3,'Manav','Kerala');

        DROP TABLE IF EXISTS `orders`;
        CREATE TABLE `orders` (
          `id` int unsigned NOT NULL AUTO_INCREMENT,
          `customer_id` int unsigned NOT NULL,
          `amount` decimal(10,2) NOT NULL,
          `created_at` datetime NOT NULL,
          PRIMARY KEY (`id`),
          KEY `fk_orders_customer` (`customer_id`),
          CONSTRAINT `fk_orders_customer` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`)
        ) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

        INSERT INTO `orders` VALUES (1,1,1200.00,'2026-09-20 11:05:00'),(2,2,450.00,'2026-09-21 09:30:00'),
        (3,1,799.00,'2026-09-22 18:12:00'),(4,3,2300.00,'2026-09-24 14:00:00'),(5,2,150.00,'2026-09-25 08:45:00');

        SET FOREIGN_KEY_CHECKS = 1;
        -- Dump completed on 2026-09-25  2:00:01

        -- Verify the restore
        SHOW TABLES;
        SELECT (SELECT COUNT(*) FROM customers) AS customers, (SELECT COUNT(*) FROM orders) AS orders,
               (SELECT SUM(amount) FROM orders) AS total_amount;
        -- Orphan check: every order must point at a real customer
        SELECT COUNT(*) AS orphan_orders FROM orders o
        LEFT JOIN customers c ON c.id = o.customer_id WHERE c.id IS NULL;
      SQL
    },

    19 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mysql">MySQL</div>
          <h1 class="lc-title">MySQL in Applications</h1>
        </div>
        <p class="lc-lead">Most SQL is sent by programs, not typed by people. This lesson shows good habits that help an application use MySQL safely and quickly. They are: <strong>parameterised queries</strong> to stop SQL injection, connection pools, correct charset and time zone settings, fast pagination, and avoiding the N+1 query problem.</p>

        <div class="lc-card">
          <h3>SQL Injection in One Example</h3>
        <div class="lc-code"># DANGEROUS: user input pasted into the SQL text<br>email = request.form["email"]&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;# attacker types:&nbsp;&nbsp;' OR '1'='1<br>sql = "SELECT id, name FROM users WHERE email = '" + email + "'"<br># becomes: SELECT id, name FROM users WHERE email = '' OR '1'='1'&nbsp;&nbsp;&nbsp;-&gt; every user!</div>
          <p>The attacker's text became part of the SQL <em>code</em>. The fix is not "escape quotes carefully". The fix is to send the SQL and the values <strong>separately</strong>. Then input is always treated as data. Injection has been in every edition of the OWASP Top 10, a list of the main web security risks.</p>
        </div>

        <div class="lc-card">
          <h3>Parameterised Queries in Popular Drivers</h3>
        <div class="lc-code"># Python (mysql-connector-python / PyMySQL)<br>cur.execute("SELECT id, name FROM users WHERE email = %s", (email,))<br><br>// Node.js (mysql2)<br>const [rows] = await pool.execute("SELECT id, name FROM users WHERE email = ?", [email]);<br><br>// PHP (PDO)<br>$stmt = $pdo-&gt;prepare("SELECT id, name FROM users WHERE email = ?");<br>$stmt-&gt;execute([$email]);<br><br>// Java (JDBC)<br>PreparedStatement ps = conn.prepareStatement("SELECT id, name FROM users WHERE email = ?");<br>ps.setString(1, email);</div>
          <p>Placeholders work for <strong>values</strong> only. Table names, column names and <code>ASC</code>/<code>DESC</code> cannot be parameters. Choose them from a fixed allow-list (a list of allowed values) in code (<code>sort = "price" if choice == "price" else "name"</code>). Inside MySQL itself, the same idea is <code>PREPARE stmt FROM '... WHERE email = ?'; EXECUTE stmt USING @email;</code>.</p>
        </div>

        <div class="lc-card">
          <h3>Connections: Pools, Charset, Time Zone, TLS</h3>
          <table class="lc-table">
            <thead><tr><th>Setting</th><th>Recommendation</th></tr></thead>
            <tbody>
              <tr><td>Connection pool</td><td>reuse a small pool of open connections (e.g. 5–20 per app server). Opening a new connection for each request is slow. Server limit: <code>max_connections</code> (151 by default).</td></tr>
              <tr><td>Charset</td><td><code>utf8mb4</code> in the connection options (lesson 4)</td></tr>
              <tr><td>Time zone</td><td>store UTC; set the session time zone to <code>'+00:00'</code>, and convert the time for display in the app</td></tr>
              <tr><td>TLS</td><td>needed for every connection that goes outside the machine</td></tr>
              <tr><td>Credentials</td><td>keep them in environment variables or a secrets manager, never in the repository</td></tr>
            </tbody>
          </table>
        </div>

        <div class="lc-card">
          <h3>The N+1 Query Problem</h3>
        <div class="lc-code"># 1 query for the orders, then 1 more query PER order = N+1 round trips<br>orders = query("SELECT id, customer_id FROM orders LIMIT 50")<br>for o in orders:<br>&nbsp;&nbsp;&nbsp;&nbsp;o.customer = query("SELECT name FROM customers WHERE id = %s", (o.customer_id,))<br><br># Better: one JOIN (or one WHERE id IN (...) query)<br>query("""SELECT o.id, c.name FROM orders o<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;JOIN customers c ON c.id = o.customer_id LIMIT 50""")</div>
          <p>ORMs (Django ORM, SQLAlchemy, Sequelize, Eloquent, Hibernate) make it easy to write N+1 by mistake. Use their eager-loading options, which load related rows in one go (<code>select_related</code>, <code>joinedload</code>, <code>include</code>, <code>with</code>).</p>
        </div>

        <div class="lc-card">
          <h3>Pagination</h3>
        <div class="lc-code">SELECT id, title FROM posts ORDER BY id DESC LIMIT 20 OFFSET 40;&nbsp;&nbsp;&nbsp;-- page 3<br>SELECT id, title FROM posts ORDER BY id DESC LIMIT 40, 20;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-- same, MySQL form<br>SELECT id, title FROM posts WHERE id &lt; 1234 ORDER BY id DESC LIMIT 20;&nbsp;&nbsp;-- keyset: after id 1234</div>
          <p>OFFSET must read and throw away all earlier rows, so page 5,000 is slow. Keyset pagination (starting after the last id you saw) stays fast with an index on the sort column.</p>
        </div>

        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Building SQL strings with user input, even "just for an internal tool".</li>
            <li>Connecting as <code>root</code> from the app.</li>
            <li>Opening a new connection for every query, or using a pool bigger than the server can handle.</li>
            <li>Not retrying after deadlock errors (1213) in code that uses transactions.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Try It</h3>
          <p>In the starter, set <code>@email</code> to another attack string such as <code>x' OR 1=1 -- </code> and check that the parameterised query still returns no rows. Then get page 2 of the posts with keyset pagination.</p>
        </div>

        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Log slow queries <em>from the app side</em> too (query text + parameters + time). When a page is slow, you can see at once if it ran one heavy query or 200 small ones.
        </div>
      HTML
      starter_code: <<~'SQL'
        -- MySQL in Applications
        CREATE TABLE users (
            id    INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
            email VARCHAR(100) NOT NULL UNIQUE,
            name  VARCHAR(50)  NOT NULL
        ) ENGINE=InnoDB;
        INSERT INTO users (email, name) VALUES
            ('neel@example.com', 'Neel'), ('ojaswi@example.com', 'Ojaswi'), ('pranav@example.com', 'Pranav');

        -- 1. What string-building produces when the attacker types:  ' OR '1'='1
        SELECT id, name AS leaked FROM users WHERE email = '' OR '1'='1';

        -- 2. A parameter keeps the same input as plain data (user variable = bound value)
        SET @email = ''' OR ''1''=''1';
        SELECT @email AS input_received;
        SELECT id, name FROM users WHERE email = @email;      -- no rows: nobody has that email

        SET @email = 'ojaswi@example.com';
        SELECT id, name AS found FROM users WHERE email = @email;

        -- 3. Pagination: LIMIT offset, count vs keyset
        CREATE TABLE posts (id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY, title VARCHAR(50)) ENGINE=InnoDB;
        INSERT INTO posts (title) VALUES ('Monsoon tips'), ('Diwali recipes'), ('Exam prep'),
            ('Budget travel'), ('Learn MySQL'), ('Cricket stats'), ('Home gardening');
        SELECT id, title FROM posts ORDER BY id DESC LIMIT 0, 3;             -- page 1
        SELECT id, title FROM posts WHERE id < 5 ORDER BY id DESC LIMIT 3;   -- page 2 (after id 5)

        -- 4. Avoid N+1: one JOIN instead of a query per post
        CREATE TABLE comments (post_id INT UNSIGNED, body VARCHAR(50)) ENGINE=InnoDB;
        INSERT INTO comments VALUES (7, 'Nice'), (7, 'Thanks'), (6, 'Great stats');
        SELECT p.id, p.title, COUNT(c.post_id) AS comments
        FROM posts p LEFT JOIN comments c ON c.post_id = p.id
        WHERE p.id >= 5 GROUP BY p.id, p.title ORDER BY p.id DESC;
      SQL
    },

    20 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mysql">MySQL</div>
          <h1 class="lc-title">Capstone: A MySQL Shop Database</h1>
        </div>
        <p class="lc-lead">Build the database for <em>Desi Bazaar</em>, a small online shop. Use the MySQL features from this course: correct types and charset, InnoDB constraints, JSON attributes with an indexed generated column, a transaction that places an order, an upsert (insert or update), an audit trigger, and a window-function report. Then write the production checklist that a real team would review.</p>

        <div class="lc-card">
          <h3>Requirements</h3>
          <table class="lc-table">
            <thead><tr><th>Requirement</th><th>MySQL feature</th><th>Lesson</th></tr></thead>
            <tbody>
              <tr><td>Names in any language, emoji in reviews</td><td><code>utf8mb4</code>, <code>utf8mb4_0900_ai_ci</code></td><td>4</td></tr>
              <tr><td>Exact prices, no negative stock</td><td><code>DECIMAL(10,2)</code>, <code>UNSIGNED</code>, <code>CHECK</code></td><td>2, 6</td></tr>
              <tr><td>Orders belong to real customers</td><td>InnoDB foreign keys</td><td>6</td></tr>
              <tr><td>Different attributes per product type</td><td><code>JSON</code> + generated column + index</td><td>11, 12</td></tr>
              <tr><td>Placing an order fully succeeds or fully fails</td><td><code>START TRANSACTION</code>, <code>LAST_INSERT_ID()</code></td><td>5, 13</td></tr>
              <tr><td>Adding new stock updates existing rows</td><td><code>ON DUPLICATE KEY UPDATE</code></td><td>7</td></tr>
              <tr><td>Every stock change is recorded</td><td><code>AFTER UPDATE</code> trigger</td><td>16</td></tr>
              <tr><td>Monthly revenue with running total</td><td>CTE + <code>SUM() OVER</code></td><td>10</td></tr>
            </tbody>
          </table>
        </div>

        <div class="lc-card">
          <h3>Placing an Order Safely</h3>
        <div class="lc-code">START TRANSACTION;<br>UPDATE products SET stock = stock - 2 WHERE id = 1 AND stock &gt;= 2;&nbsp;&nbsp;&nbsp;-- 0 rows? -&gt; ROLLBACK<br>INSERT INTO orders (customer_id, ordered_at) VALUES (1, '2026-09-25 10:00:00');<br>SET @order_id = LAST_INSERT_ID();<br>INSERT INTO order_items (order_id, product_id, qty, unit_price)<br>SELECT @order_id, id, 2, price FROM products WHERE id = 1;<br>COMMIT;</div>
          <p>The conditional UPDATE checks the stock and reserves it in one atomic statement. The order line copies the <em>current</em> price, so old bills never change.</p>
        </div>

        <div class="lc-card">
          <h3>Expected Report Output</h3>
        <div class="lc-code">+---------+---------+---------------+<br>| month&nbsp;&nbsp;&nbsp;| revenue | running_total |<br>+---------+---------+---------------+<br>| 2026-08 | 1797.00 |&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1797.00 |<br>| 2026-09 | 2499.00 |&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4296.00 |<br>+---------+---------+---------------+</div>
        </div>

        <div class="lc-card">
          <h3>Going to Production: Checklist</h3>
          <ul class="lc-list">
            <li><strong>Accounts (lesson 17):</strong> <code>shop_app</code> with only SELECT/INSERT/UPDATE/DELETE on <code>shop.*</code>. Use a separate migration account. Nobody uses root.</li>
            <li><strong>Indexes (lesson 14):</strong> run <code>EXPLAIN</code> on the five most common queries. Make sure foreign keys and <code>brand</code> have indexes.</li>
            <li><strong>Backups (lesson 18):</strong> nightly <code>mysqldump --single-transaction --routines --events</code> (or a MySQL Shell dump). Keep the binary logs, and test a restore.</li>
            <li><strong>Server:</strong> MySQL 8.4 or 9.7 LTS, strict <code>sql_mode</code> left on, TLS for remote connections.</li>
            <li><strong>Application (lesson 19):</strong> parameterised queries, a connection pool, and a retry after a deadlock.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Common Mistakes to Check</h3>
          <ul class="lc-list">
            <li>Calculating revenue from <code>products.price</code> instead of <code>order_items.unit_price</code>.</li>
            <li>Placing an order without checking that the stock UPDATE changed a row.</li>
            <li>Using <code>REPLACE</code> to add stock. This wipes the product's other columns.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Try It: Extend the Project</h3>
          <ol class="lc-list">
            <li>Add a <code>reviews</code> table (1–5 stars with CHECK, text in utf8mb4). Show the average rating for each product.</li>
            <li>Place a second order for Anika inside a transaction. Check that the stock audit trigger recorded it.</li>
            <li>Rank customers by total spend with <code>DENSE_RANK()</code>.</li>
            <li>On a real server: create the <code>shop_app</code> account and role. Take a mysqldump and restore it into a new database.</li>
          </ol>
        </div>

        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Save the final script as <code>schema.sql</code> and <code>seed.sql</code> in a Git repository with a short README. A clean MySQL schema with comments and a working order transaction is a strong project to show in backend job interviews.
        </div>
      HTML
      starter_code: <<~'SQL'
        -- Capstone: Desi Bazaar shop database
        CREATE TABLE customers (
            id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY, name VARCHAR(60) NOT NULL, state VARCHAR(40) NOT NULL
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
        CREATE TABLE products (
            id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY, sku VARCHAR(20) NOT NULL UNIQUE,
            name VARCHAR(60) NOT NULL, price DECIMAL(10,2) NOT NULL CHECK (price > 0),
            stock INT UNSIGNED NOT NULL DEFAULT 0, attrs JSON,
            brand VARCHAR(30) AS (attrs->>'$.brand') VIRTUAL
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
        CREATE INDEX idx_products_brand ON products (brand);
        CREATE TABLE orders (
            id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY, customer_id INT UNSIGNED NOT NULL, ordered_at DATETIME NOT NULL,
            CONSTRAINT fk_orders_customer FOREIGN KEY (customer_id) REFERENCES customers (id)
        ) ENGINE=InnoDB;
        CREATE TABLE order_items (
            order_id INT UNSIGNED NOT NULL, product_id INT UNSIGNED NOT NULL, qty INT UNSIGNED NOT NULL,
            unit_price DECIMAL(10,2) NOT NULL, PRIMARY KEY (order_id, product_id),
            CONSTRAINT fk_items_order FOREIGN KEY (order_id) REFERENCES orders (id),
            CONSTRAINT fk_items_product FOREIGN KEY (product_id) REFERENCES products (id)
        ) ENGINE=InnoDB;
        CREATE TABLE stock_log (product_id INT UNSIGNED, old_stock INT, new_stock INT) ENGINE=InnoDB;
        CREATE TRIGGER trg_stock_audit AFTER UPDATE ON products FOR EACH ROW
        INSERT INTO stock_log VALUES (NEW.id, OLD.stock, NEW.stock);

        INSERT INTO customers (name, state) VALUES ('Anika', 'Kerala'), ('Bhuvan', 'Goa');
        INSERT INTO products (sku, name, price, stock, attrs) VALUES
            ('SAREE-01', 'Silk Saree',  2499.00, 5, '{"brand": "Kanchi", "fabric": "silk"}'),
            ('KETTLE-1', 'Kettle 1.5L',  599.00, 8, '{"brand": "Prestige", "watts": 1500}');
        -- Restock with an upsert: the SKU exists, so stock is added
        -- (sandbox uses the constant 4; real server: ... VALUES (...) AS new
        --  ON DUPLICATE KEY UPDATE stock = products.stock + new.stock;)
        INSERT INTO products (sku, name, price, stock) VALUES ('KETTLE-1', 'Kettle 1.5L', 599.00, 4)
        ON DUPLICATE KEY UPDATE stock = stock + 4;
        INSERT INTO orders (customer_id, ordered_at) VALUES (2, '2026-08-14 12:30:00');  -- past order
        INSERT INTO order_items VALUES (1, 2, 3, 599.00);

        -- Place an order atomically
        START TRANSACTION;
        UPDATE products SET stock = stock - 1 WHERE id = 1 AND stock >= 1;
        INSERT INTO orders (customer_id, ordered_at) VALUES (1, '2026-09-25 10:00:00');
        SET @order_id = LAST_INSERT_ID();
        INSERT INTO order_items (order_id, product_id, qty, unit_price)
        SELECT @order_id, id, 1, price FROM products WHERE id = 1;
        COMMIT;

        SELECT sku, brand, stock FROM products WHERE brand IN ('Kanchi', 'Prestige');  -- reports
        SELECT product_id, old_stock, new_stock FROM stock_log;
        WITH monthly AS (
            SELECT DATE_FORMAT(o.ordered_at, '%Y-%m') AS month, SUM(i.qty * i.unit_price) AS revenue
            FROM orders o JOIN order_items i ON i.order_id = o.id GROUP BY month)
        SELECT month, revenue, SUM(revenue) OVER (ORDER BY month) AS running_total FROM monthly;
      SQL
    }
  }.freeze
end

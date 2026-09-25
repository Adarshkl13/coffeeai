module MysqlContent
  LESSONS = {
    1 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mysql">MySQL</div>
          <h1 class="lc-title">Introduction to MySQL</h1>
        </div>
        <p class="lc-lead">MySQL is one of the most widely used open-source relational databases. It powers WordPress, countless PHP, Node.js and Python web apps, and large sites that run thousands of MySQL servers. This course assumes you know basic SQL (from the SQL course) and focuses on <strong>what is special about MySQL</strong>.</p>

        <div class="lc-card">
          <h3>A Client–Server Database</h3>
          <ul class="lc-list">
            <li>The <strong>server</strong> (<code>mysqld</code>) runs as a background service, listening on port <strong>3306</strong> by default.</li>
            <li><strong>Clients</strong> connect to it over the network: the <code>mysql</code> command-line client, MySQL Workbench, or your app's driver.</li>
            <li>One server holds many <strong>databases</strong> (MySQL also calls them <em>schemas</em>); each database holds tables.</li>
            <li>Every connection logs in as a <strong>user</strong> with specific privileges (lesson 17).</li>
          </ul>
          <p>Compare SQLite, which is a library inside your program with the whole database in one file and no server at all.</p>
        </div>

        <div class="lc-card">
          <h3>Versions in 2026</h3>
          <table class="lc-table">
            <thead><tr><th>Series</th><th>Type</th><th>Status (September 2026)</th></tr></thead>
            <tbody>
              <tr><td>MySQL 9.7</td><td>LTS (long-term support)</td><td>Released April 2026 — the newest LTS; good choice for new projects</td></tr>
              <tr><td>MySQL 8.4</td><td>LTS</td><td>Supported (premier support to 2029); very common in production</td></tr>
              <tr><td>MySQL 26.7</td><td>Innovation</td><td>Released 28 July 2026 (26.7.0). New features about every quarter; each supported only until the next (26.10 is due in October 2026)</td></tr>
              <tr><td>MySQL 8.0</td><td>Old</td><td>End of life (April 2026) — upgrade</td></tr>
            </tbody>
          </table>
          <p><strong>New version numbers:</strong> after 9.7 LTS, innovation releases use calendar versions <code>YY.M.P</code> — 26.7.0 means 2026, July, patch 0. There is no 9.8. The LTS lines 8.4 and 9.7 keep their names.</p>
          <p>Everything in this course works on MySQL 8.4 and 9.7. MariaDB is a separate fork of MySQL; much is similar, but features like JSON and authentication differ.</p>
        </div>

        <div class="lc-card">
          <h3>A First Session in the mysql Client</h3>
        <div class="lc-code">$ mysql -u root -p<br>mysql&gt; CREATE DATABASE school CHARACTER SET utf8mb4;<br>mysql&gt; USE school;<br>mysql&gt; CREATE TABLE `students` (<br>&nbsp;&nbsp;&nbsp;&nbsp;-&gt;&nbsp;&nbsp;&nbsp;`id`&nbsp;&nbsp;&nbsp;INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,<br>&nbsp;&nbsp;&nbsp;&nbsp;-&gt;&nbsp;&nbsp;&nbsp;`name` VARCHAR(100) NOT NULL,<br>&nbsp;&nbsp;&nbsp;&nbsp;-&gt;&nbsp;&nbsp;&nbsp;`city` VARCHAR(50)<br>&nbsp;&nbsp;&nbsp;&nbsp;-&gt; ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;<br>mysql&gt; SHOW TABLES;<br>+------------------+<br>| Tables_in_school |<br>+------------------+<br>| students&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|<br>+------------------+<br>mysql&gt; DESCRIBE students;<br>+-------+--------------+------+-----+---------+----------------+<br>| Field | Type&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;| Null | Key | Default | Extra&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|<br>+-------+--------------+------+-----+---------+----------------+<br>| id&nbsp;&nbsp;&nbsp;&nbsp;| int unsigned | NO&nbsp;&nbsp;&nbsp;| PRI | NULL&nbsp;&nbsp;&nbsp;&nbsp;| auto_increment |<br>| name&nbsp;&nbsp;| varchar(100) | NO&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;| NULL&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|<br>| city&nbsp;&nbsp;| varchar(50)&nbsp;&nbsp;| YES&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;| NULL&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|<br>+-------+--------------+------+-----+---------+----------------+</div>
          <ul class="lc-list">
            <li><strong>Backticks</strong> <code>`name`</code> quote identifiers in MySQL (standard SQL uses double quotes). You only need them for names that clash with keywords or contain spaces.</li>
            <li><code>ENGINE=InnoDB</code> picks the storage engine. InnoDB is the default and the right choice for almost everything (lesson 13).</li>
            <li><code>SHOW DATABASES;</code>, <code>SHOW TABLES;</code>, <code>DESCRIBE t;</code> and <code>SHOW CREATE TABLE t;</code> are how you explore a server.</li>
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
          <p>The Run button runs <strong>real SQLite with a MySQL compatibility layer</strong>. It understands most everyday MySQL syntax: AUTO_INCREMENT, backticks, <code>ENGINE=</code>/<code>CHARSET=</code> options, <code>SHOW TABLES</code>, <code>DESCRIBE</code>, <code>LIMIT a, b</code>, <code>CONCAT</code>, <code>IFNULL</code>, <code>DATE_FORMAT</code>, <code>INSERT IGNORE</code>, <code>ON DUPLICATE KEY UPDATE</code>, simple triggers, JSON <code>-&gt;</code>/<code>-&gt;&gt;</code> and window functions. Server-only features — users and privileges, stored procedures, replication — print "Not supported in the browser sandbox"; the lessons show them with real MySQL output, and you should try them on a real server (a local install or the Docker image <code>mysql:8.4</code>). Visible differences: DECIMAL values print without trailing zeros (<code>499</code> instead of <code>499.00</code>) and <code>EXPLAIN</code> shows SQLite's plan format.</p>
        </div>

        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Forgetting <code>USE dbname;</code> and getting "No database selected".</li>
            <li>Using single quotes around table names (<code>'students'</code> is a string); use backticks or nothing.</li>
            <li>Learning from tutorials written for MySQL 5.x (old <code>utf8</code>, <code>mysql_native_password</code>, MyISAM tables).</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Try It</h3>
          <p>In the starter code, add a <code>`courses`</code> table with an AUTO_INCREMENT id and a title, run <code>SHOW TABLES;</code> again and <code>DESCRIBE courses;</code>.</p>
        </div>

        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> <code>SHOW CREATE TABLE students\G</code> in the mysql client prints the complete, exact definition MySQL stored — including defaults you did not type. <code>\G</code> prints results vertically, which is easier to read for wide rows.
        </div>
      HTML
      starter_code: <<~'SQL'
        -- Introduction to MySQL
        -- Backticks, AUTO_INCREMENT and table options are MySQL syntax
        CREATE TABLE `students` (
            `id`   INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
            `name` VARCHAR(100) NOT NULL,
            `city` VARCHAR(50),
            `marks` INT
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

        -- id is generated automatically
        INSERT INTO `students` (`name`, `city`, `marks`) VALUES
            ('Asha',   'Indore',   88),
            ('Bharat', 'Nagpur',   72),
            ('Chitra', 'Indore',   95),
            ('Deepak', 'Varanasi', 64);

        -- Explore the database
        SHOW TABLES;
        DESCRIBE students;

        -- Quick SQL review: filter, sort, limit
        SELECT id, name, marks
        FROM students
        WHERE city = 'Indore'
        ORDER BY marks DESC;

        -- MySQL-style LIMIT offset, count: skip 1 row, return 2
        SELECT name, marks FROM students ORDER BY marks DESC LIMIT 1, 2;

        -- CONCAT joins strings in MySQL
        SELECT CONCAT(name, ' from ', city) AS intro FROM students ORDER BY id;
      SQL
    },

    2 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mysql">MySQL</div>
          <h1 class="lc-title">MySQL Data Types</h1>
        </div>
        <p class="lc-lead">MySQL has a large set of precise data types. Unlike SQLite, MySQL really enforces them: a <code>TINYINT</code> cannot hold 1000, a <code>VARCHAR(20)</code> cannot hold 25 characters. Choosing well saves space, keeps data valid and makes indexes faster.</p>

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
          <p><code>UNSIGNED</code> forbids negatives and doubles the positive range — good for ids and counts. The number in <code>INT(11)</code> is only a display width, deprecated since 8.0.17 — write plain <code>INT</code>. <code>BOOLEAN</code> is a synonym for <code>TINYINT(1)</code>: <code>TRUE</code> is 1 and <code>FALSE</code> is 0.</p>
        </div>

        <div class="lc-card">
          <h3>Exact vs Approximate Numbers</h3>
        <div class="lc-code">price&nbsp;&nbsp;&nbsp;&nbsp;DECIMAL(10,2)&nbsp;&nbsp;&nbsp;-- exact: up to 99999999.99 (10 digits, 2 after the point)<br>rating&nbsp;&nbsp;&nbsp;FLOAT&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-- approximate, 4 bytes<br>distance DOUBLE&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-- approximate, 8 bytes</div>
          <p>Use <code>DECIMAL</code> for money and anything that must add up exactly. <code>FLOAT</code>/<code>DOUBLE</code> are binary approximations: summing <code>0.1</code> and <code>0.2</code> stored in <code>FLOAT</code> columns gives something like <code>0.30000000447</code>, not <code>0.30</code>. (In MySQL a literal like <code>0.1</code> typed in a query is exact DECIMAL; the problem comes from FLOAT/DOUBLE columns.)</p>
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
              <tr><td><code>BLOB</code> family</td><td>raw bytes</td><td>small binary data (store big files in object storage instead)</td></tr>
            </tbody>
          </table>
          <p>ENUM is compact, but adding a value needs an <code>ALTER TABLE</code>, and it sorts by list position, not alphabetically. For lists that change, use a lookup table or a <code>VARCHAR</code> with a <code>CHECK</code> constraint.</p>
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
          <p><code>ON UPDATE CURRENT_TIMESTAMP</code> is a MySQL feature that refreshes the column on every update. Add <code>(3)</code> or <code>(6)</code> for fractions of a second: <code>DATETIME(3)</code>. Because TIMESTAMP ends in 2038, prefer <code>DATETIME</code> for dates like expiry dates or dates of birth.</p>
        </div>

        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li><code>FLOAT</code> for prices or balances.</li>
            <li><code>VARCHAR(255)</code> for everything "just because" — pick realistic limits; they document your data.</li>
            <li>Storing phone numbers or PIN codes as <code>INT</code> — leading zeros vanish and you never do arithmetic on them. Use <code>VARCHAR</code>/<code>CHAR</code>.</li>
            <li>Using <code>TIMESTAMP</code> for dates that may be after 2038.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Try It</h3>
          <p>Design a <code>trains</code> table: train number (5-digit text like <code>'12951'</code>), name, distance in km (integer), base fare (DECIMAL), and a <code>has_pantry</code> BOOLEAN. Insert two trains and find those with a pantry.</p>
        </div>

        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Choose the smallest type that will <em>safely</em> fit future data. <code>TINYINT UNSIGNED</code> for age is fine; <code>INT</code> for a primary key that may pass 2 billion rows is not — use <code>BIGINT UNSIGNED</code> for big, fast-growing tables.
        </div>
      HTML
      starter_code: <<~'SQL'
        -- MySQL Data Types
        -- (Simulator note: it may print DECIMAL 499.00 as 499)
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
        <p class="lc-lead">MySQL's <code>sql_mode</code> setting decides how strictly the server treats bad data and ambiguous SQL. With <strong>strict mode</strong> on (the default since MySQL 5.7), invalid values cause an error. Old tutorials and old servers ran without it, silently changing your data — you must recognise both behaviours.</p>

        <div class="lc-card">
          <h3>The Default sql_mode (MySQL 8.4 and later)</h3>
        <div class="lc-code">mysql&gt; SELECT @@SESSION.sql_mode\G<br>@@SESSION.sql_mode: ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION</div>
          <table class="lc-table">
            <thead><tr><th>Mode</th><th>Effect</th></tr></thead>
            <tbody>
              <tr><td><code>STRICT_TRANS_TABLES</code></td><td>invalid or out-of-range values are errors, not warnings (for transactional tables such as InnoDB)</td></tr>
              <tr><td><code>ONLY_FULL_GROUP_BY</code></td><td>rejects SELECT columns that are neither grouped nor aggregated</td></tr>
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
          <p>In non-strict mode, run <code>SHOW WARNINGS;</code> after a statement to see what MySQL changed. In strict mode the whole statement fails and nothing is inserted.</p>
        </div>

        <div class="lc-card">
          <h3>ONLY_FULL_GROUP_BY</h3>
        <div class="lc-code">SELECT city, name, COUNT(*) FROM customers GROUP BY city;<br>-- ERROR 1055: Expression #2 of SELECT list is not in GROUP BY clause and contains<br>-- nonaggregated column 'shop.customers.name' ...<br><br>SELECT city, COUNT(*), ANY_VALUE(name) AS example_name<br>FROM customers GROUP BY city;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-- OK: you say "any name is fine"</div>
          <p>Fix the query, do not switch the mode off. Either group by the column, aggregate it (<code>MIN(name)</code>, <code>GROUP_CONCAT(name)</code>), or use <code>ANY_VALUE()</code> when any value really is acceptable. MySQL also allows a column that is <em>functionally dependent</em> on the grouped primary key.</p>
        </div>

        <div class="lc-card">
          <h3>Changing sql_mode (and Why You Usually Should Not)</h3>
        <div class="lc-code">SET SESSION sql_mode = CONCAT(@@SESSION.sql_mode, ',PIPES_AS_CONCAT');&nbsp;&nbsp;-- this connection only<br>SET GLOBAL&nbsp;&nbsp;sql_mode = '...';&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-- new connections (needs privilege; lost on restart)<br>-- permanent: sql_mode = ... under [mysqld] in my.cnf, or SET PERSIST sql_mode = '...';</div>
          <p>A common bad "fix" copied from forums is <code>SET GLOBAL sql_mode = ''</code>, which turns off strict mode everywhere. The errors disappear but the data corruption starts. Fix the data or the query instead.</p>
        </div>

        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Disabling strict mode to make an old app "work".</li>
            <li>Using <code>INSERT IGNORE</code> to load data — it turns strict-mode errors back into warnings, so values get truncated silently.</li>
            <li>Testing on a local server with one sql_mode and deploying to a server with another. Check <code>SELECT @@sql_mode;</code> on both.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Try It</h3>
          <p>The starter loads raw data into a staging table, finds the rows strict mode would reject, and copies only valid rows. Add a staging row with a customer name of 12 characters and a quantity of 256 and check that both rules catch it.</p>
        </div>

        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> For bulk imports (CSV files, old systems), load into a <strong>staging table</strong> with loose types first, validate with SELECT queries, then <code>INSERT ... SELECT</code> the good rows into the real table. You get a clear report of bad rows instead of a failed import.
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
        <p class="lc-lead">A <strong>character set</strong> decides which characters a column can store and how they are encoded as bytes. A <strong>collation</strong> decides how text is compared and sorted — whether <code>'Ravi' = 'ravi'</code>, and whether <code>'é'</code> equals <code>'e'</code>. Getting these right is essential for Indian languages, names and emoji.</p>

        <div class="lc-card">
          <h3>Always Use utf8mb4</h3>
          <table class="lc-table">
            <thead><tr><th>Character set</th><th>Bytes per character</th><th>Emoji and all of Unicode?</th><th>Status</th></tr></thead>
            <tbody>
              <tr><td><code>utf8mb4</code></td><td>1–4</td><td>Yes</td><td>Default since MySQL 8.0 — use it</td></tr>
              <tr><td><code>utf8mb3</code> (old name <code>utf8</code>)</td><td>1–3</td><td>No — 😀 fails with "Incorrect string value"</td><td>Deprecated</td></tr>
              <tr><td><code>latin1</code></td><td>1</td><td>No — Western European only</td><td>Legacy</td></tr>
            </tbody>
          </table>
          <p>MySQL's old <code>utf8</code> is <em>not</em> full UTF-8; it is 3-byte <code>utf8mb3</code>. Devanagari, Tamil and Bengali letters fit in 3 bytes, but emoji and some rare characters need 4. Always write <code>utf8mb4</code> explicitly.</p>
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
          <p>Settings cascade: server → database → table → column. A UNIQUE index uses the column's collation, so with <code>_ci</code> the emails <code>'Ravi@x.com'</code> and <code>'ravi@x.com'</code> count as duplicates — usually exactly what you want for emails, and exactly what you do <em>not</em> want for case-sensitive tokens.</p>
        </div>

        <div class="lc-card">
          <h3>Bytes vs Characters</h3>
        <div class="lc-code">SELECT CHAR_LENGTH('नमस्ते') AS chars, LENGTH('नमस्ते') AS bytes;&nbsp;&nbsp;&nbsp;-- 6, 18<br>SELECT CHAR_LENGTH('😀')&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;AS chars, LENGTH('😀')&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;AS bytes;&nbsp;&nbsp;&nbsp;-- 1, 4</div>
          <p><code>VARCHAR(n)</code> limits <em>characters</em>, but row size and index limits are in <em>bytes</em> (InnoDB index keys can be up to 3072 bytes, so an indexed utf8mb4 VARCHAR can be at most 768 characters).</p>
        </div>

        <div class="lc-card">
          <h3>The Connection Matters Too</h3>
          <p>Text is also encoded between your app and the server. If the connection uses a different charset you get <em>mojibake</em> such as <code>à¤¨à¤®</code> instead of नम. Set it in the driver (for example <code>charset=utf8mb4</code> in the connection string) or run <code>SET NAMES utf8mb4;</code>.</p>
        </div>

        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Creating tables with <code>utf8</code> (really utf8mb3) and then failing on emoji.</li>
            <li>Joining two columns with different collations and getting "Illegal mix of collations".</li>
            <li>Using a <code>_ci</code> collation for passwords, tokens or case-sensitive codes.</li>
            <li>Fixing only the table charset but not the connection charset.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Try It</h3>
          <p>Add a row with your name in your own script (Devanagari, Tamil, Bengali, Gurmukhi...) plus an emoji, and search for it. On a real MySQL server, compare <code>WHERE name = 'ananya'</code> with and without <code>COLLATE utf8mb4_bin</code>.</p>
        </div>

        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> To convert an old table: <code>ALTER TABLE t CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;</code> — test on a copy first, because it rewrites the whole table and can change which values count as duplicates.
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
        <p class="lc-lead"><code>AUTO_INCREMENT</code> makes MySQL generate a new number for each inserted row — the usual way to create primary keys. <code>LAST_INSERT_ID()</code> tells your connection which number it just got, so you can insert related rows safely.</p>

        <div class="lc-card">
          <h3>Declaring It</h3>
        <div class="lc-code">CREATE TABLE customers (<br>&nbsp;&nbsp;&nbsp;&nbsp;id&nbsp;&nbsp;&nbsp;BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,<br>&nbsp;&nbsp;&nbsp;&nbsp;name VARCHAR(100) NOT NULL<br>) ENGINE=InnoDB AUTO_INCREMENT=1001;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-- optional: first id will be 1001</div>
          <ul class="lc-list">
            <li>Only one AUTO_INCREMENT column per table, and it must be indexed (normally it is the primary key).</li>
            <li>Leave the column out of the INSERT (or insert <code>NULL</code>) to get the next number.</li>
            <li>Use <code>INT UNSIGNED</code> (up to ~4.29 billion) or <code>BIGINT UNSIGNED</code> for tables that grow fast. Running out of ids stops all inserts.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>LAST_INSERT_ID(): the Safe Way to Get the New Id</h3>
        <div class="lc-code">INSERT INTO customers (name) VALUES ('Meenakshi');<br>SET @cid = LAST_INSERT_ID();&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-- e.g. 1001<br>INSERT INTO orders (customer_id, total) VALUES (@cid, 1499.00);<br>SELECT @cid AS customer_id;</div>
        <div class="lc-code">+-------------+<br>| customer_id |<br>+-------------+<br>|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1001 |<br>+-------------+</div>
          <ul class="lc-list">
            <li>It is <strong>per connection</strong>: another user inserting at the same moment does not change your value. That is why it is safe.</li>
            <li>After a <em>multi-row</em> INSERT it returns the id of the <strong>first</strong> row inserted.</li>
            <li>Inserting an explicit id (<code>VALUES (500, 'X')</code>) does not change it.</li>
            <li>In application code use the driver's value: <code>cursor.lastrowid</code> (Python), <code>result.insertId</code> (Node mysql2), <code>$pdo-&gt;lastInsertId()</code> (PHP).</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Never Use SELECT MAX(id)</h3>
          <table class="lc-table">
            <thead><tr><th>Approach</th><th>Problem</th></tr></thead>
            <tbody>
              <tr><td><code>SELECT MAX(id) FROM customers</code> after inserting</td><td>another connection may have inserted in between — you get <em>their</em> id</td></tr>
              <tr><td><code>SELECT MAX(id) + 1</code> before inserting</td><td>two users compute the same number; one insert fails or overwrites</td></tr>
              <tr><td><code>LAST_INSERT_ID()</code></td><td>correct under concurrency</td></tr>
            </tbody>
          </table>
        </div>

        <div class="lc-card">
          <h3>Gaps Are Normal</h3>
          <p>AUTO_INCREMENT values are unique and increasing, but <strong>not gap-free</strong>. Numbers are skipped when:</p>
          <ul class="lc-list">
            <li>rows are deleted (ids are never reused);</li>
            <li>a transaction that inserted rows is rolled back;</li>
            <li>an insert fails or is ignored (for example a duplicate with <code>INSERT IGNORE</code>);</li>
            <li>you insert an explicit larger id — the counter jumps above it.</li>
          </ul>
          <p>Since MySQL 8.0 the counter is saved across restarts. (In 5.7, InnoDB recalculated it as <code>MAX(id) + 1</code> after a restart, so deleted top ids could be reused — old behaviour.) If the business needs gap-free invoice numbers, generate them separately inside a transaction; do not rely on AUTO_INCREMENT.</p>
        </div>

        <div class="lc-card">
          <h3>Useful Commands</h3>
        <div class="lc-code">ALTER TABLE customers AUTO_INCREMENT = 5000;&nbsp;&nbsp;&nbsp;-- next id (must be above current max)<br>SHOW TABLE STATUS LIKE 'customers'\G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-- see Auto_increment: 5000<br>SELECT UUID();&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-- alternative: globally unique ids</div>
          <p>UUIDs are handy when ids are created on many servers or in the browser. Store them compactly as <code>BINARY(16)</code> with <code>UUID_TO_BIN(UUID(), 1)</code> — the <code>1</code> reorders the time part so new values stay roughly sequential, which is kinder to InnoDB's clustered index.</p>
        </div>

        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Using <code>MAX(id)</code> to find the id you just inserted.</li>
            <li>Treating gaps as missing data and "fixing" them by renumbering — ids may be referenced elsewhere (URLs, other tables, logs).</li>
            <li><code>INT</code> signed ids on tables that will pass 2.1 billion rows.</li>
            <li>Showing sequential ids in public URLs, letting anyone guess how many orders you have.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Try It</h3>
          <p>Insert a new customer, store <code>LAST_INSERT_ID()</code> in <code>@new_cust</code>, and give that customer two orders. Then delete the newest order and insert another — which id does it get, and why?</p>
        </div>

        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> <code>LAST_INSERT_ID()</code> belongs to the connection, so call it on the <em>same</em> connection that did the INSERT. With connection pools, run both statements inside one transaction or use the driver's insert id.
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
        <p class="lc-lead">You met constraints in the SQL course. This lesson covers how <strong>MySQL</strong> implements them: what InnoDB enforces, the exact error messages you will see, the rules foreign keys must follow, and the version history that makes old tutorials misleading.</p>

        <div class="lc-card">
          <h3>What MySQL Enforces</h3>
          <table class="lc-table">
            <thead><tr><th>Constraint</th><th>MySQL behaviour</th><th>Error when violated</th></tr></thead>
            <tbody>
              <tr><td><code>PRIMARY KEY</code>, <code>UNIQUE</code></td><td>enforced (uses an index)</td><td>1062 Duplicate entry 'ravi@x.com' for key 'users.email'</td></tr>
              <tr><td><code>NOT NULL</code></td><td>enforced</td><td>1048 Column 'name' cannot be null</td></tr>
              <tr><td><code>CHECK</code></td><td>enforced since <strong>8.0.16</strong> (older versions parsed and ignored it!)</td><td>3819 Check constraint 'price_positive' is violated</td></tr>
              <tr><td><code>FOREIGN KEY</code></td><td>enforced by InnoDB only (MyISAM silently ignores it)</td><td>1452 Cannot add or update a child row / 1451 Cannot delete or update a parent row</td></tr>
            </tbody>
          </table>
        </div>

        <div class="lc-card">
          <h3>Foreign Key Syntax</h3>
        <div class="lc-code">CREATE TABLE orders (<br>&nbsp;&nbsp;&nbsp;&nbsp;id&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,<br>&nbsp;&nbsp;&nbsp;&nbsp;customer_id INT UNSIGNED NOT NULL,<br>&nbsp;&nbsp;&nbsp;&nbsp;total&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;DECIMAL(10,2) NOT NULL,<br>&nbsp;&nbsp;&nbsp;&nbsp;CONSTRAINT fk_orders_customer<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;FOREIGN KEY (customer_id) REFERENCES customers (id)<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ON DELETE RESTRICT<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ON UPDATE CASCADE,<br>&nbsp;&nbsp;&nbsp;&nbsp;CONSTRAINT total_positive CHECK (total &gt; 0)<br>) ENGINE=InnoDB;</div>
          <p>Trying to insert an order for customer 99 who does not exist:</p>
        <div class="lc-code">ERROR 1452 (23000): Cannot add or update a child row: a foreign key constraint fails<br>(`shop`.`orders`, CONSTRAINT `fk_orders_customer` FOREIGN KEY (`customer_id`)<br>REFERENCES `customers` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE)</div>
        </div>

        <div class="lc-card">
          <h3>InnoDB's Foreign Key Rules</h3>
          <ul class="lc-list">
            <li>Both tables must be <strong>InnoDB</strong>.</li>
            <li>The columns must have <strong>matching types</strong> — <code>INT UNSIGNED</code> cannot reference <code>INT</code>; string columns need the same character set and collation. Mismatches give <em>ERROR 3780</em> ("Referencing column ... and referenced column ... are incompatible").</li>
            <li>The referenced column must be indexed (usually the primary key). MySQL creates an index on the child column automatically if none exists.</li>
            <li>Actions: <code>RESTRICT</code> / <code>NO ACTION</code> (the default — both check immediately in InnoDB), <code>CASCADE</code>, <code>SET NULL</code>. <code>SET DEFAULT</code> is parsed but rejected by InnoDB.</li>
            <li>Rows changed by a cascade do <strong>not</strong> fire triggers on the child table.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Managing Constraints</h3>
        <div class="lc-code">ALTER TABLE orders ADD CONSTRAINT fk_orders_customer<br>&nbsp;&nbsp;&nbsp;&nbsp;FOREIGN KEY (customer_id) REFERENCES customers (id);<br>ALTER TABLE orders DROP FOREIGN KEY fk_orders_customer;<br>ALTER TABLE orders DROP CHECK total_positive;<br><br>-- List constraints<br>SELECT CONSTRAINT_NAME, CONSTRAINT_TYPE<br>FROM information_schema.TABLE_CONSTRAINTS<br>WHERE TABLE_SCHEMA = 'shop' AND TABLE_NAME = 'orders';<br><br>-- Bulk loading tables in any order (use with great care!)<br>SET FOREIGN_KEY_CHECKS = 0;&nbsp;&nbsp;&nbsp;-- ... load ...&nbsp;&nbsp;&nbsp;SET FOREIGN_KEY_CHECKS = 1;</div>
          <p>Turning <code>FOREIGN_KEY_CHECKS</code> off is how <code>mysqldump</code> files load tables in any order. Rows inserted while it is off are <strong>not re-checked</strong> when you turn it back on, so orphans can slip in.</p>
        </div>

        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Trusting CHECK constraints on a pre-8.0.16 server (they did nothing).</li>
            <li>A child column <code>INT</code> referencing a parent <code>INT UNSIGNED</code>.</li>
            <li>Leaving <code>FOREIGN_KEY_CHECKS = 0</code> on in a session after an import.</li>
            <li>Unnamed constraints — MySQL generates names like <code>orders_ibfk_1</code>, which make errors and migrations harder to read.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Try It</h3>
          <p>In the starter, change <code>ON DELETE SET NULL</code> on <code>tickets.assignee_id</code> to <code>ON DELETE CASCADE</code> and run it again. What happens to Omkar's tickets now? Which choice is right for a support-ticket system?</p>
        </div>

        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Name constraints with a pattern — <code>fk_child_parent</code>, <code>chk_table_rule</code>, <code>uq_table_column</code>. When error 1452 appears in production logs at 2 a.m., the name alone tells you what went wrong.
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
        <p class="lc-lead">What should happen when you insert a row whose key already exists? MySQL gives you three tools: <code>INSERT IGNORE</code>, <code>REPLACE</code> and <code>INSERT ... ON DUPLICATE KEY UPDATE</code>. They look similar but behave very differently — one of them can silently delete data.</p>

        <div class="lc-card">
          <h3>The Three Options</h3>
          <table class="lc-table">
            <thead><tr><th>Statement</th><th>On a duplicate PRIMARY KEY / UNIQUE value</th><th>Risk</th></tr></thead>
            <tbody>
              <tr><td><code>INSERT IGNORE</code></td><td>skips the row, raises a warning</td><td>also turns <em>other</em> errors (too-long strings, NULL in NOT NULL) into warnings — bad data slips in</td></tr>
              <tr><td><code>REPLACE</code></td><td><strong>deletes</strong> the old row, inserts the new one</td><td>unlisted columns reset to defaults; new AUTO_INCREMENT id; <code>ON DELETE CASCADE</code> children are deleted</td></tr>
              <tr><td><code>INSERT ... ON DUPLICATE KEY UPDATE</code></td><td>updates the existing row with the expressions you give</td><td>the safe, precise choice</td></tr>
            </tbody>
          </table>
        </div>

        <div class="lc-card">
          <h3>ON DUPLICATE KEY UPDATE (Modern Syntax)</h3>
        <div class="lc-code">INSERT INTO stock (sku, name, qty)<br>VALUES ('TEA-1', 'Tea 250g', 20),<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;('JAM-1', 'Mango Jam', 4)<br>AS new<br>ON DUPLICATE KEY UPDATE<br>&nbsp;&nbsp;&nbsp;&nbsp;qty&nbsp;&nbsp;= stock.qty + new.qty,&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-- add the delivered quantity<br>&nbsp;&nbsp;&nbsp;&nbsp;name = new.name;</div>
          <p><code>AS new</code> (MySQL 8.0.19+) names the row you tried to insert, like <code>excluded</code> in PostgreSQL/SQLite. The old form <code>qty = qty + VALUES(qty)</code> still works but is <strong>deprecated since 8.0.20</strong> — old way, don't use it in new code. Why deprecated? Since 8.0.19, <code>VALUES</code> is also a statement of its own (<code>VALUES ROW(1, 'a')</code>), so a <code>VALUES()</code> <em>function</em> with a different meaning inside the same INSERT is confusing, and the row alias works the same way as standard SQL table aliases. MySQL plans to remove <code>VALUES()</code> here.</p>
          <p><strong>In this sandbox:</strong> the compatibility layer does not understand the <code>AS new</code> row alias, so the starter code repeats the delivered number as a constant (<code>qty = qty + 7</code>). A comment next to each upsert shows the <code>AS new</code> form to use on a real server.</p>
          <p>The "affected rows" count tells you what happened per row: <strong>1</strong> = inserted, <strong>2</strong> = an existing row was updated, <strong>0</strong> = the existing row already had those values.</p>
        </div>

        <div class="lc-card">
          <h3>Why REPLACE Is Dangerous</h3>
        <div class="lc-code">-- products(id, sku UNIQUE, name, qty, price); reviews has ON DELETE CASCADE<br>REPLACE INTO products (sku, name) VALUES ('TEA-1', 'Tea (new pack)');</div>
        <div class="lc-code">Query OK, 2 rows affected&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-- 1 delete + 1 insert<br>-- qty is back to 0, price is NULL, the row has a NEW id,<br>-- and every review of the old TEA-1 row was cascade-deleted.</div>
          <p>Use REPLACE only for tables where "throw the old row away completely" is really what you want, such as a cache table.</p>
        </div>

        <div class="lc-card">
          <h3>Which Key Counts as a Duplicate?</h3>
          <ul class="lc-list">
            <li><strong>Any</strong> PRIMARY KEY or UNIQUE index can trigger ON DUPLICATE KEY UPDATE. If a table has two unique keys (say <code>sku</code> and <code>barcode</code>), a row may clash with a <em>different</em> existing row than you expect. Keep one natural unique key per upsert target.</li>
            <li>Upserts can consume AUTO_INCREMENT values even when they end up updating, so expect gaps in ids.</li>
            <li>Under a <code>_ci</code> collation, <code>'tea-1'</code> and <code>'TEA-1'</code> are duplicates.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Using <code>INSERT IGNORE</code> for imports and silently losing or truncating data.</li>
            <li>Using <code>REPLACE</code> as an "update or insert" and wiping columns and child rows.</li>
            <li>Doing <code>SELECT</code> then <code>INSERT</code> or <code>UPDATE</code> in application code — two requests can race. One upsert statement is atomic.</li>
            <li>Writing <code>VALUES(col)</code> in new code instead of a row alias.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Try It</h3>
          <p>A second delivery brings 5 Soap and 12 Tea. Write the two upserts so the quantities add up. Then use <code>INSERT IGNORE</code> to add a new agent whose email already exists with different capital letters — was it inserted?</p>
        </div>

        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Design the UNIQUE key first ("one row per sku", "one row per user per day"), then write the upsert against it. An upsert without a matching unique key is just a normal insert that creates duplicates.
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
        <p class="lc-lead">MySQL has its own, very practical function library. This lesson covers the ones you will use every week: <code>CONCAT</code> and friends for text, <code>DATE_FORMAT</code>, <code>DATE_ADD</code> and <code>TIMESTAMPDIFF</code> for dates, and <code>GROUP_CONCAT</code> to roll many rows into one string.</p>

        <div class="lc-card">
          <h3>Joining and Cutting Text</h3>
          <table class="lc-table">
            <thead><tr><th>Function</th><th>Example</th><th>Result</th></tr></thead>
            <tbody>
              <tr><td><code>CONCAT(a, b, ...)</code></td><td><code>CONCAT('Ram', ' ', 'Kumar')</code></td><td><code>'Ram Kumar'</code> (NULL if any argument is NULL)</td></tr>
              <tr><td><code>CONCAT_WS(sep, ...)</code></td><td><code>CONCAT_WS(' ', 'Ram', NULL, 'Kumar')</code></td><td><code>'Ram Kumar'</code> (skips NULLs)</td></tr>
              <tr><td><code>SUBSTRING_INDEX(s, delim, n)</code></td><td><code>SUBSTRING_INDEX('priya@gmail.com', '@', -1)</code></td><td><code>'gmail.com'</code></td></tr>
              <tr><td><code>LEFT</code> / <code>RIGHT</code></td><td><code>LEFT('Hyderabad', 3)</code></td><td><code>'Hyd'</code></td></tr>
              <tr><td><code>LPAD(s, n, pad)</code></td><td><code>LPAD('42', 5, '0')</code></td><td><code>'00042'</code></td></tr>
              <tr><td><code>LOCATE(sub, s)</code></td><td><code>LOCATE('@', 'a@b.com')</code></td><td><code>2</code></td></tr>
              <tr><td><code>FORMAT(n, d)</code></td><td><code>FORMAT(1234567.891, 2)</code></td><td><code>'1,234,567.89'</code> (a string, for display only)</td></tr>
            </tbody>
          </table>
          <p>Remember: in MySQL <code>||</code> means logical OR by default, not concatenation (and that use of <code>||</code> is deprecated). Always use <code>CONCAT()</code>.</p>
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
          <p>The reverse, text to date, is <code>STR_TO_DATE('25/09/2026', '%d/%m/%Y')</code> → <code>2026-09-25</code>.</p>
        </div>

        <div class="lc-card">
          <h3>Date Arithmetic</h3>
        <div class="lc-code">SELECT DATE_ADD('2026-09-25', INTERVAL 30 DAY)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;AS due_date,&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-- 2026-10-25<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;DATE_ADD('2026-01-31', INTERVAL 1 MONTH)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;AS month_later,&nbsp;&nbsp;&nbsp;-- 2026-02-28<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;DATEDIFF('2026-12-25', '2026-09-25')&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;AS days_left,&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-- 91<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;TIMESTAMPDIFF(YEAR, '2000-12-01', '2026-09-25')&nbsp;&nbsp;&nbsp;&nbsp;AS age,&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-- 25<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;LAST_DAY('2026-02-10')&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;AS month_end;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-- 2026-02-28</div>
          <p><code>TIMESTAMPDIFF(YEAR, dob, today)</code> counts <em>complete</em> years, so it gives the correct age even before this year's birthday. <code>NOW()</code> gives the current date and time, <code>CURDATE()</code> today's date; both use the session time zone.</p>
        </div>

        <div class="lc-card">
          <h3>GROUP_CONCAT</h3>
        <div class="lc-code">SELECT batch,<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;GROUP_CONCAT(name ORDER BY name SEPARATOR ', ') AS students,<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;COUNT(*) AS total<br>FROM students<br>GROUP BY batch;</div>
          <p>It is an aggregate like <code>COUNT</code>, supporting <code>DISTINCT</code>, <code>ORDER BY</code> and <code>SEPARATOR</code> (default is a comma). The result is cut off at <code>group_concat_max_len</code> bytes — <strong>1024 by default</strong> — with only a warning. Raise it for long lists: <code>SET SESSION group_concat_max_len = 100000;</code></p>
        </div>

        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li><code>'a' || 'b'</code> in MySQL — returns 0, not <code>'ab'</code>.</li>
            <li><code>%M</code> for minutes in DATE_FORMAT (it is the month name; minutes are <code>%i</code>).</li>
            <li>Age as <code>YEAR(CURDATE()) - YEAR(dob)</code> — off by one before the birthday. Use <code>TIMESTAMPDIFF</code>.</li>
            <li>Sorting or comparing <code>FORMAT()</code> output — it is text with commas.</li>
            <li>Silent GROUP_CONCAT truncation at 1024 bytes.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Try It</h3>
          <p>Show each student's email domain using <code>SUBSTRING_INDEX</code>, then list the students in each batch whose fees are due in the next 15 days after <code>'2026-09-25'</code>, with the due date formatted as <code>'Fri 10 Oct'</code> (<code>'%a %e %b'</code>).</p>
        </div>

        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Keep dates as real <code>DATE</code>/<code>DATETIME</code> values in tables and format only in the final SELECT (or in the app). Formatted strings like <code>'25/09/2026'</code> cannot be sorted or compared as dates.
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
        <p class="lc-lead">A quick review of joins, then the parts that are <strong>specific to MySQL</strong>: no <code>FULL OUTER JOIN</code> (and how to emulate it), MySQL's multi-table <code>UPDATE</code> and <code>DELETE</code> syntax, and how MySQL 8's optimizer treats <code>IN</code> and <code>EXISTS</code>.</p>

        <div class="lc-card">
          <h3>Quick Review</h3>
          <table class="lc-table">
            <thead><tr><th>Join</th><th>Returns</th><th>In MySQL?</th></tr></thead>
            <tbody>
              <tr><td><code>[INNER] JOIN</code></td><td>matching pairs only</td><td>Yes</td></tr>
              <tr><td><code>LEFT [OUTER] JOIN</code></td><td>all left rows + matches</td><td>Yes</td></tr>
              <tr><td><code>RIGHT [OUTER] JOIN</code></td><td>all right rows + matches</td><td>Yes</td></tr>
              <tr><td><code>CROSS JOIN</code></td><td>every combination</td><td>Yes (in MySQL, <code>JOIN</code> without <code>ON</code> is also a cross join)</td></tr>
              <tr><td><code>FULL [OUTER] JOIN</code></td><td>all rows from both sides</td><td><strong>No</strong> — emulate with UNION</td></tr>
            </tbody>
          </table>
        </div>

        <div class="lc-card">
          <h3>Emulating FULL OUTER JOIN</h3>
        <div class="lc-code">SELECT s.name, c.title<br>FROM students s LEFT JOIN clubs c ON c.id = s.club_id<br>UNION<br>SELECT s.name, c.title<br>FROM students s RIGHT JOIN clubs c ON c.id = s.club_id;</div>
          <p><code>UNION</code> removes the matched rows that appear in both halves. If genuine duplicate rows are possible, use <code>UNION ALL</code> and add <code>WHERE s.id IS NULL</code> to the second half so it returns only the unmatched right-side rows.</p>
        </div>

        <div class="lc-card">
          <h3>Multi-Table UPDATE and DELETE (MySQL Syntax)</h3>
        <div class="lc-code">-- Give a 10% fee discount to students in the Robotics club<br>UPDATE students s<br>JOIN clubs c ON c.id = s.club_id<br>SET s.fee = s.fee * 0.90<br>WHERE c.title = 'Robotics';<br><br>-- Delete students who belong to a club that has been closed<br>DELETE s<br>FROM students s<br>JOIN clubs c ON c.id = s.club_id<br>WHERE c.is_closed = 1;</div>
          <p>This is MySQL-specific. PostgreSQL writes <code>UPDATE ... FROM</code>; standard SQL uses a subquery. In <code>DELETE s FROM ...</code>, the table name(s) right after DELETE say <em>which</em> table loses rows. The portable version, which works everywhere (and in this course's editor), uses a subquery:</p>
        <div class="lc-code">UPDATE students<br>SET fee = fee * 0.90<br>WHERE club_id IN (SELECT id FROM clubs WHERE title = 'Robotics');</div>
        </div>

        <div class="lc-card">
          <h3>IN vs EXISTS in MySQL 8</h3>
          <p>Old advice said "EXISTS is always faster than IN" or the opposite. In MySQL 8 the optimizer rewrites both <code>IN (subquery)</code> and <code>EXISTS (subquery)</code> into <strong>semijoins</strong>, and <code>NOT IN</code> / <code>NOT EXISTS</code> into <strong>antijoins</strong> (8.0.17+), so they usually get the same plan. Choose by meaning and readability, and check with <code>EXPLAIN</code> when it matters. The one real difference is <strong>NULL</strong>: <code>NOT IN</code> returns no rows if the subquery contains a NULL; <code>NOT EXISTS</code> does not have that trap.</p>
        </div>

        <div class="lc-card">
          <h3>Other MySQL Join Notes</h3>
          <ul class="lc-list">
            <li><code>JOIN ... USING (club_id)</code> works when both columns have the same name.</li>
            <li>Avoid <code>NATURAL JOIN</code>: it joins on every same-named column, and adding a column like <code>updated_at</code> to both tables silently changes the result.</li>
            <li>Joining text columns with different collations can fail with "Illegal mix of collations" — keep collations consistent (lesson 4).</li>
            <li>Index the columns you join on; foreign keys in InnoDB get one automatically.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Writing <code>FULL OUTER JOIN</code> in MySQL — a syntax error. <code>a FULL JOIN b</code> is worse: MySQL reads <code>FULL</code> as an alias for <code>a</code> and silently runs an INNER JOIN.</li>
            <li>Running a multi-table UPDATE without first running the same JOIN as a SELECT.</li>
            <li>Forgetting the table name after <code>DELETE</code> in a join delete.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Try It</h3>
          <p>Rewrite the "students with no club" query in the starter using <code>NOT EXISTS</code>. Then write (in your notes, for a real server) a multi-table UPDATE that sets <code>clubs.member_count</code> using a joined derived table of counts.</p>
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
        -- (MySQL can also write: UPDATE students s JOIN clubs c ... SET ... — see lesson)
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
        <p class="lc-lead">Common table expressions (<code>WITH</code>) and window functions (<code>OVER (...)</code>) arrived in <strong>MySQL 8.0</strong>. The SQL course taught how they work; this lesson covers MySQL's details — recursion limits, column types in recursive CTEs, <code>WITH ROLLUP</code>, and the old 5.7 workarounds you should replace.</p>

        <div class="lc-card">
          <h3>Same Syntax as Standard SQL</h3>
        <div class="lc-code">WITH monthly AS (<br>&nbsp;&nbsp;&nbsp;&nbsp;SELECT DATE_FORMAT(paid_on, '%Y-%m') AS month, SUM(amount) AS revenue<br>&nbsp;&nbsp;&nbsp;&nbsp;FROM payments GROUP BY month<br>)<br>SELECT month, revenue,<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;SUM(revenue) OVER (ORDER BY month)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;AS running_total,<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;revenue - LAG(revenue) OVER (ORDER BY month) AS change_vs_last<br>FROM monthly;</div>
          <p>All the standard window functions exist: <code>ROW_NUMBER</code>, <code>RANK</code>, <code>DENSE_RANK</code>, <code>NTILE</code>, <code>LAG</code>, <code>LEAD</code>, <code>FIRST_VALUE</code>, <code>LAST_VALUE</code>, <code>NTH_VALUE</code>, <code>PERCENT_RANK</code>, <code>CUME_DIST</code>, plus aggregates with <code>OVER</code>. Named windows (<code>WINDOW w AS (...)</code>) are supported too.</p>
        </div>

        <div class="lc-card">
          <h3>Recursive CTEs: Two MySQL Rules</h3>
        <div class="lc-code">WITH RECURSIVE days (d) AS (<br>&nbsp;&nbsp;&nbsp;&nbsp;SELECT DATE('2026-09-01')<br>&nbsp;&nbsp;&nbsp;&nbsp;UNION ALL<br>&nbsp;&nbsp;&nbsp;&nbsp;SELECT DATE_ADD(d, INTERVAL 1 DAY) FROM days WHERE d &lt; '2026-09-07'<br>)<br>SELECT d FROM days;</div>
          <ol class="lc-list">
            <li><strong>Recursion limit.</strong> <code>cte_max_recursion_depth</code> is 1000 by default. A CTE that recurses more fails with <em>ERROR 3636: Recursive query aborted after 1001 iterations</em>. Raise it for one session with <code>SET SESSION cte_max_recursion_depth = 10000;</code> — but first check that your stop condition is right.</li>
            <li><strong>Column types come from the first (anchor) SELECT.</strong> If the anchor produces <code>'1'</code> and later rows build <code>'1 &gt; 2 &gt; 3'</code>, strict mode raises <em>Data too long</em>. Widen the column in the anchor: <code>CAST(name AS CHAR(200))</code>.</li>
          </ol>
        </div>

        <div class="lc-card">
          <h3>WITH ROLLUP: Subtotals the MySQL Way</h3>
        <div class="lc-code">SELECT IFNULL(city, 'ALL CITIES') AS city, SUM(amount) AS revenue<br>FROM payments<br>GROUP BY city WITH ROLLUP;</div>
        <div class="lc-code">+------------+---------+<br>| city&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;| revenue |<br>+------------+---------+<br>| Jaipur&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;12000 |<br>| Surat&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;9000 |<br>| ALL CITIES |&nbsp;&nbsp;&nbsp;21000 |<br>+------------+---------+</div>
          <p><code>WITH ROLLUP</code> adds a super-aggregate row where the grouped column is NULL. <code>GROUPING(city)</code> (8.0+) returns 1 on those rows, which is safer than IFNULL when the data itself can contain NULL cities.</p>
        </div>

        <div class="lc-card">
          <h3>Old Way (MySQL 5.7) — Don't Use</h3>
        <div class="lc-code">-- Ranking with user variables, common in old answers online:<br>SELECT name, score, @r := @r + 1 AS rnk<br>FROM players, (SELECT @r := 0) init<br>ORDER BY score DESC;</div>
          <p>Setting user variables inside expressions is <strong>deprecated</strong>, and the evaluation order was never guaranteed. Replace it with <code>ROW_NUMBER() OVER (ORDER BY score DESC)</code>.</p>
        </div>

        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Filtering on a window function in WHERE — wrap it in a CTE and filter outside.</li>
            <li>Forgetting that <code>LAST_VALUE</code> with the default frame returns the <em>current</em> row; add <code>ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING</code>.</li>
            <li>Raising <code>cte_max_recursion_depth</code> to hide an infinite recursion.</li>
            <li>Using these features on a server older than 8.0 — they do not exist there.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Try It</h3>
          <p>Use a recursive CTE of dates for September 2026 and LEFT JOIN it to <code>payments</code> so every day appears with its revenue (0 when none). Then use <code>NTILE(2)</code> to split days into "busy" and "quiet" halves.</p>
        </div>

        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Window functions are computed after WHERE, GROUP BY and HAVING, but before ORDER BY and LIMIT. So <code>SUM(SUM(amount)) OVER (...)</code> — a window over a grouped aggregate — is legal and very handy for "share of total" reports.
        </div>
      HTML
      starter_code: <<~'SQL'
        -- CTEs and Window Functions in MySQL
        CREATE TABLE payments (
            id      INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
            city    VARCHAR(20) NOT NULL,
            amount  INT UNSIGNED NOT NULL,
            paid_on DATE NOT NULL
        ) ENGINE=InnoDB;
        INSERT INTO payments (city, amount, paid_on) VALUES
            ('Jaipur', 5000, '2026-07-10'), ('Surat', 3000, '2026-07-22'),
            ('Jaipur', 4000, '2026-08-05'), ('Surat', 6000, '2026-08-18'),
            ('Jaipur', 3000, '2026-09-02');

        -- CTE + running total + month-over-month change
        WITH monthly AS (
            SELECT DATE_FORMAT(paid_on, '%Y-%m') AS month, SUM(amount) AS revenue
            FROM payments GROUP BY month
        )
        SELECT month, revenue,
               SUM(revenue) OVER (ORDER BY month) AS running_total,
               revenue - LAG(revenue) OVER (ORDER BY month) AS change_vs_last
        FROM monthly ORDER BY month;

        -- Rank payments inside each city, and each city's share of all revenue
        SELECT city, paid_on, amount,
               RANK() OVER (PARTITION BY city ORDER BY amount DESC) AS rank_in_city,
               ROUND(100 * amount / SUM(amount) OVER (), 1) AS pct_of_total
        FROM payments ORDER BY city, rank_in_city;

        -- WITH ROLLUP adds a grand-total row; its city is NULL
        -- (on a real server, wrap it: IFNULL(city, 'ALL CITIES') or use GROUPING(city))
        SELECT city, SUM(amount) AS revenue
        FROM payments GROUP BY city WITH ROLLUP;

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
        <p class="lc-lead">MySQL has a native <code>JSON</code> column type. It rejects invalid JSON, stores documents in a fast binary format, and gives you operators to read and change parts of a document. It is ideal for data whose shape varies — product attributes, settings, API payloads — alongside normal columns.</p>

        <div class="lc-card">
          <h3>A JSON Column</h3>
        <div class="lc-code">CREATE TABLE products (<br>&nbsp;&nbsp;&nbsp;&nbsp;id&nbsp;&nbsp;&nbsp;&nbsp;INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,<br>&nbsp;&nbsp;&nbsp;&nbsp;name&nbsp;&nbsp;VARCHAR(80) NOT NULL,<br>&nbsp;&nbsp;&nbsp;&nbsp;price DECIMAL(10,2) NOT NULL,<br>&nbsp;&nbsp;&nbsp;&nbsp;attrs JSON NOT NULL<br>);<br>INSERT INTO products (name, price, attrs) VALUES<br>('Phone X', 19999.00, '{"brand": "Lava", "ram_gb": 8, "colors": ["black", "blue"]}');<br><br>INSERT INTO products (name, price, attrs) VALUES ('Bad', 1, '{brand: Lava}');<br>-- ERROR 3140 (22032): Invalid JSON text: "Missing a name for object member."</div>
        </div>

        <div class="lc-card">
          <h3>Reading Values: -&gt; and -&gt;&gt;</h3>
          <table class="lc-table">
            <thead><tr><th>Expression</th><th>Result</th><th>Type</th></tr></thead>
            <tbody>
              <tr><td><code>attrs-&gt;'$.brand'</code></td><td><code>"Lava"</code> (with quotes)</td><td>JSON — same as <code>JSON_EXTRACT(attrs, '$.brand')</code></td></tr>
              <tr><td><code>attrs-&gt;&gt;'$.brand'</code></td><td><code>Lava</code></td><td>text — same as <code>JSON_UNQUOTE(JSON_EXTRACT(...))</code></td></tr>
              <tr><td><code>attrs-&gt;&gt;'$.colors[0]'</code></td><td><code>black</code></td><td>array element (0-based)</td></tr>
              <tr><td><code>attrs-&gt;'$.colors'</code></td><td><code>["black", "blue"]</code></td><td>the whole array as JSON</td></tr>
            </tbody>
          </table>
          <p>Use <code>-&gt;&gt;</code> in WHERE clauses and output; <code>-&gt;</code> when you need JSON back. A path that does not exist returns NULL.</p>
        <div class="lc-code">SELECT name, attrs-&gt;&gt;'$.brand' AS brand<br>FROM products<br>WHERE attrs-&gt;&gt;'$.brand' = 'Lava' AND attrs-&gt;&gt;'$.ram_gb' &gt;= 8;</div>
        </div>

        <div class="lc-card">
          <h3>Building and Changing JSON</h3>
        <div class="lc-code">SELECT JSON_OBJECT('sku', 'PH-1', 'price', 19999);&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-- {"sku": "PH-1", "price": 19999}<br>SELECT JSON_ARRAY('a', 1, NULL);&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-- ["a", 1, null]<br><br>UPDATE products SET attrs = JSON_SET(attrs, '$.ram_gb', 12, '$.has_5g', true) WHERE id = 1;<br>UPDATE products SET attrs = JSON_REMOVE(attrs, '$.colors[1]') WHERE id = 1;</div>
          <p><code>JSON_SET</code> adds or replaces, <code>JSON_INSERT</code> only adds, <code>JSON_REPLACE</code> only replaces, <code>JSON_REMOVE</code> deletes. InnoDB can apply these as partial in-place updates instead of rewriting the whole document.</p>
        </div>

        <div class="lc-card">
          <h3>More Powerful Tools (MySQL 8.0+)</h3>
        <div class="lc-code">-- Search inside arrays<br>SELECT name FROM products WHERE 'blue' MEMBER OF (attrs-&gt;'$.colors');<br>SELECT name FROM products WHERE JSON_CONTAINS(attrs-&gt;'$.colors', '"blue"');<br><br>-- Rows -&gt; JSON<br>SELECT JSON_ARRAYAGG(name) FROM products;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-- ["Phone X", ...]<br><br>-- JSON -&gt; rows: JSON_TABLE turns an array into a table<br>SELECT p.name, c.color<br>FROM products p,<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;JSON_TABLE(p.attrs, '$.colors[*]' COLUMNS (color VARCHAR(20) PATH '$')) AS c;</div>
          <p>A JSON column cannot be indexed directly. Index a <strong>generated column</strong> that extracts a value (next lesson), or use a <strong>multi-valued index</strong> for arrays: <code>INDEX ((CAST(attrs-&gt;'$.colors' AS CHAR(20) ARRAY)))</code>, which speeds up <code>MEMBER OF</code> and <code>JSON_CONTAINS</code>.</p>
        </div>

        <div class="lc-card">
          <h3>JSON Column or Normal Columns?</h3>
          <table class="lc-table">
            <thead><tr><th>Use normal columns when...</th><th>Use JSON when...</th></tr></thead>
            <tbody>
              <tr><td>every row has the value (name, price)</td><td>attributes differ by category (RAM for phones, fabric for shirts)</td></tr>
              <tr><td>you filter, join or sort on it often</td><td>you mostly store and return it as a whole</td></tr>
              <tr><td>you need foreign keys or CHECK rules</td><td>the shape comes from an external API</td></tr>
            </tbody>
          </table>
        </div>

        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Comparing with <code>-&gt;</code> instead of <code>-&gt;&gt;</code>: <code>attrs-&gt;'$.brand' = 'Lava'</code> compares JSON <code>"Lava"</code> to text.</li>
            <li>Sorting by <code>attrs-&gt;&gt;'$.ram_gb'</code> — it is text, so "16" sorts before "8". Use <code>CAST(attrs-&gt;&gt;'$.ram_gb' AS UNSIGNED)</code>.</li>
            <li>Putting everything in one JSON column and losing types, constraints and indexes.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Try It</h3>
          <p>Add a laptop with <code>{"brand": "Acer", "ram_gb": 16, "colors": ["silver"]}</code>. List products with at least 8 GB RAM, showing brand and first colour. Then use <code>JSON_SET</code> to add <code>"warranty_years": 2</code> to the laptop.</p>
        </div>

        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> MySQL normalises JSON when storing it: extra spaces vanish, duplicate keys keep the last value, and keys are re-ordered. Do not rely on the key order you inserted.
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
        <p class="lc-lead">A <strong>generated column</strong> is calculated from other columns in the same row by an expression you define. MySQL keeps it correct automatically — nobody can forget to update it — and you can index it, which is the standard way to make JSON fields and computed values fast to search.</p>

        <div class="lc-card">
          <h3>Syntax</h3>
        <div class="lc-code">CREATE TABLE order_lines (<br>&nbsp;&nbsp;&nbsp;&nbsp;id&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,<br>&nbsp;&nbsp;&nbsp;&nbsp;qty&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;INT UNSIGNED&nbsp;&nbsp;NOT NULL,<br>&nbsp;&nbsp;&nbsp;&nbsp;unit_price&nbsp;&nbsp;&nbsp;DECIMAL(10,2) NOT NULL,<br>&nbsp;&nbsp;&nbsp;&nbsp;discount_pct TINYINT UNSIGNED NOT NULL DEFAULT 0,<br>&nbsp;&nbsp;&nbsp;&nbsp;line_total&nbsp;&nbsp;&nbsp;DECIMAL(12,2)<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;GENERATED ALWAYS AS (qty * unit_price * (100 - discount_pct) / 100) STORED<br>);<br>INSERT INTO order_lines (qty, unit_price, discount_pct) VALUES (3, 250.00, 10);<br>SELECT line_total FROM order_lines;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-- 675.00</div>
          <p><code>GENERATED ALWAYS</code> is optional; <code>total DECIMAL(12,2) AS (...)</code> means the same. You never insert into the column — MySQL rejects an explicit value (only <code>DEFAULT</code> is allowed).</p>
        </div>

        <div class="lc-card">
          <h3>VIRTUAL vs STORED</h3>
          <table class="lc-table">
            <thead><tr><th></th><th>VIRTUAL (default)</th><th>STORED</th></tr></thead>
            <tbody>
              <tr><td>Saved on disk?</td><td>No — computed when read</td><td>Yes — computed on INSERT/UPDATE</td></tr>
              <tr><td>Space</td><td>none (except in indexes)</td><td>like a normal column</td></tr>
              <tr><td>Can be indexed?</td><td>Yes (InnoDB secondary index)</td><td>Yes, including as primary key</td></tr>
              <tr><td>Adding with ALTER TABLE</td><td>usually instant</td><td>rebuilds the table</td></tr>
              <tr><td>Good for</td><td>cheap expressions, JSON extraction you index</td><td>expensive expressions read very often</td></tr>
            </tbody>
          </table>
        </div>

        <div class="lc-card">
          <h3>Indexing a Value Inside JSON</h3>
        <div class="lc-code">CREATE TABLE devices (<br>&nbsp;&nbsp;&nbsp;&nbsp;id&nbsp;&nbsp;&nbsp;&nbsp;INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,<br>&nbsp;&nbsp;&nbsp;&nbsp;specs JSON NOT NULL,<br>&nbsp;&nbsp;&nbsp;&nbsp;brand VARCHAR(30) AS (specs-&gt;&gt;'$.brand') VIRTUAL,<br>&nbsp;&nbsp;&nbsp;&nbsp;INDEX idx_devices_brand (brand)<br>);<br>SELECT id FROM devices WHERE brand = 'Lava';&nbsp;&nbsp;&nbsp;-- uses idx_devices_brand</div>
          <p>This is the classic MySQL pattern for fast JSON search. The optimizer can also use the index when you write the same expression, <code>WHERE specs-&gt;&gt;'$.brand' = 'Lava'</code>, but querying the named column is clearer.</p>
        </div>

        <div class="lc-card">
          <h3>Functional Indexes (8.0.13+)</h3>
        <div class="lc-code">CREATE INDEX idx_users_email_domain<br>&nbsp;&nbsp;&nbsp;&nbsp;ON users ((SUBSTRING_INDEX(email, '@', -1)));&nbsp;&nbsp;&nbsp;-- note the double parentheses<br>SELECT COUNT(*) FROM users WHERE SUBSTRING_INDEX(email, '@', -1) = 'gmail.com';</div>
          <p>A functional index is a shortcut: MySQL creates a hidden virtual generated column for you. The query must use <strong>exactly the same expression</strong> for the index to help.</p>
        </div>

        <div class="lc-card">
          <h3>Rules for the Expression</h3>
          <ul class="lc-list">
            <li>Must be <strong>deterministic</strong>: no <code>NOW()</code>, <code>RAND()</code>, <code>UUID()</code>, user variables or stored functions.</li>
            <li>No subqueries; it can only use columns of the <em>same row</em>.</li>
            <li>It may use other generated columns defined before it, but not the AUTO_INCREMENT column.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Trying to <code>INSERT</code> a value into a generated column.</li>
            <li>Using a generated column for something time-based like "age" — <code>NOW()</code> is not allowed, and the value would go stale anyway. Compute age in the query.</li>
            <li>Making a slow expression VIRTUAL on a column that is read millions of times.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Try It</h3>
          <p>Add a generated column <code>full_name</code> = <code>CONCAT_WS(' ', first_name, last_name)</code> to a new <code>members</code> table and index it. Then add a STORED column <code>gst_amount</code> = 18% of <code>line_total</code> to <code>order_lines</code>.</p>
        </div>

        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Generated columns are a clean alternative to triggers for "keep this derived value in sync" — there is no code to forget and no trigger to debug.
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
        <p class="lc-lead"><strong>InnoDB</strong> is MySQL's default storage engine. It gives you ACID transactions, row-level locking, crash recovery and foreign keys. This lesson shows how InnoDB transactions behave in MySQL — autocommit, implicit commits, the default isolation level, and locking reads for things like seat booking.</p>

        <div class="lc-card">
          <h3>InnoDB vs MyISAM</h3>
          <table class="lc-table">
            <thead><tr><th>Feature</th><th>InnoDB (default)</th><th>MyISAM (legacy)</th></tr></thead>
            <tbody>
              <tr><td>Transactions, ROLLBACK</td><td>Yes</td><td>No — each statement is final</td></tr>
              <tr><td>Locking</td><td>row-level</td><td>whole table</td></tr>
              <tr><td>Crash recovery</td><td>automatic (redo log)</td><td>may need <code>REPAIR TABLE</code></td></tr>
              <tr><td>Foreign keys</td><td>Yes</td><td>ignored</td></tr>
            </tbody>
          </table>
          <p>Use InnoDB for application tables. (Other engines exist — MEMORY, ARCHIVE, NDB for MySQL Cluster — but they are for special cases.) Check a table's engine with <code>SHOW TABLE STATUS LIKE 'orders'</code>.</p>
        </div>

        <div class="lc-card">
          <h3>Autocommit and Explicit Transactions</h3>
        <div class="lc-code">SELECT @@autocommit;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-- 1: every statement commits on its own<br>START TRANSACTION;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-- or BEGIN<br>UPDATE wallets SET balance = balance - 500 WHERE user_id = 1 AND balance &gt;= 500;<br>UPDATE wallets SET balance = balance + 500 WHERE user_id = 2;<br>COMMIT;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-- or ROLLBACK</div>
          <p><strong>Implicit commits:</strong> DDL statements such as <code>CREATE TABLE</code>, <code>ALTER TABLE</code>, <code>DROP TABLE</code> and <code>TRUNCATE</code> commit the current transaction automatically and cannot be rolled back. Never mix schema changes into a transaction you might need to undo.</p>
        </div>

        <div class="lc-card">
          <h3>Isolation: REPEATABLE READ by Default</h3>
          <p>InnoDB uses <strong>MVCC</strong> (multi-version concurrency control): readers see a consistent <em>snapshot</em> and do not block writers. Under the default <code>REPEATABLE READ</code>, every plain SELECT in a transaction sees the data as it was at the transaction's first read.</p>
          <table class="lc-table">
            <thead><tr><th>Time</th><th>Session A</th><th>Session B</th></tr></thead>
            <tbody>
              <tr><td>1</td><td><code>START TRANSACTION; SELECT seats_left FROM shows WHERE id=1;</code> → 2</td><td></td></tr>
              <tr><td>2</td><td></td><td><code>UPDATE shows SET seats_left = 1 WHERE id=1;</code> (autocommit)</td></tr>
              <tr><td>3</td><td><code>SELECT seats_left ...;</code> → still 2 (snapshot)</td><td></td></tr>
              <tr><td>4</td><td><code>SELECT seats_left ... FOR UPDATE;</code> → 1 (locking read sees latest)</td><td></td></tr>
            </tbody>
          </table>
          <p>Change the level per session with <code>SET SESSION TRANSACTION ISOLATION LEVEL READ COMMITTED;</code> — many high-traffic apps use READ COMMITTED to reduce locking.</p>
        </div>

        <div class="lc-card">
          <h3>Locking Reads: Booking the Last Seat</h3>
        <div class="lc-code">START TRANSACTION;<br>SELECT seats_left FROM shows WHERE id = 1 FOR UPDATE;&nbsp;&nbsp;&nbsp;-- locks this row<br>-- app checks seats_left &gt; 0 ...<br>UPDATE shows SET seats_left = seats_left - 1 WHERE id = 1;<br>INSERT INTO bookings (show_id, user_id) VALUES (1, 42);<br>COMMIT;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-- lock released</div>
          <ul class="lc-list">
            <li><code>FOR UPDATE</code> — exclusive lock; other <code>FOR UPDATE</code> readers and writers wait.</li>
            <li><code>FOR SHARE</code> — shared lock; others can read-lock but not change the row.</li>
            <li><code>NOWAIT</code> — fail immediately if the row is locked. <code>SKIP LOCKED</code> — skip locked rows; ideal for job queues where many workers pick tasks.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Deadlocks and Lock Waits</h3>
          <p>If two transactions each hold a lock the other needs, InnoDB detects the <strong>deadlock</strong>, rolls one back and returns <em>ERROR 1213: Deadlock found when trying to get lock; try restarting transaction</em>. If a lock is simply held too long you get <em>ERROR 1205: Lock wait timeout exceeded</em> (<code>innodb_lock_wait_timeout</code>, 50 seconds by default). Your application should catch 1213 and <strong>retry</strong> the whole transaction. Keep transactions short and touch rows in a consistent order to make deadlocks rare.</p>
        </div>

        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Expecting ROLLBACK to undo a <code>CREATE</code> or <code>ALTER</code> (implicit commit).</li>
            <li>Checking availability with a plain SELECT and then updating — two users can both see "1 seat left". Use <code>FOR UPDATE</code> or a conditional UPDATE.</li>
            <li>Leaving a transaction open in a console session and blocking everyone else's updates.</li>
            <li>Not retrying after a deadlock error.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Try It</h3>
          <p>In the starter, try to book 3 seats for show 2 (only 2 left) with <code>UPDATE shows SET seats_left = seats_left - 3 WHERE id = 2 AND seats_left &gt;= 3</code> inside a transaction. The output shows <em>0 rows updated</em> (the mysql client says <code>Rows matched: 0  Changed: 0</code>) — so ROLLBACK instead of inserting the booking. Check both tables afterwards.</p>
        </div>

        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> A single conditional statement — <code>UPDATE shows SET seats_left = seats_left - 1 WHERE id = 1 AND seats_left &gt; 0</code> — is atomic and needs no explicit lock. Check its affected-row count (1 = booked, 0 = sold out). Reach for <code>SELECT ... FOR UPDATE</code> when the decision needs more logic than one WHERE clause.
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
        <p class="lc-lead">Indexes decide whether a query touches 5 rows or 5 million. In InnoDB the <strong>primary key is the table</strong> — rows are stored in primary-key order — and every other index points back to it. <code>EXPLAIN</code> shows which index MySQL chose; <code>EXPLAIN ANALYZE</code> shows what really happened.</p>

        <div class="lc-card">
          <h3>How InnoDB Stores Indexes</h3>
          <ul class="lc-list">
            <li><strong>Clustered index</strong> = the primary key. The table's rows live inside this B-tree, sorted by PK. Lookups by PK are the fastest possible.</li>
            <li><strong>Secondary indexes</strong> store the indexed columns <em>plus the primary key</em>. A lookup finds the PK in the secondary index, then fetches the row from the clustered index.</li>
            <li>So keep the PK <strong>short and increasing</strong> (an <code>INT</code>/<code>BIGINT</code> AUTO_INCREMENT). A random UUID string PK makes every secondary index bigger and inserts scattered.</li>
            <li>A table without a PK gets a hidden 6-byte row id — always define one.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Creating Indexes</h3>
        <div class="lc-code">CREATE INDEX idx_orders_customer ON orders (customer_id);<br>CREATE INDEX idx_orders_status_date ON orders (status, created_at);&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-- composite<br>CREATE UNIQUE INDEX uq_users_email ON users (email);<br>CREATE INDEX idx_users_name_prefix ON users (name(10));&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-- prefix of a long string<br>CREATE INDEX idx_orders_recent ON orders (created_at DESC);&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-- descending (8.0+)<br>ALTER TABLE orders ALTER INDEX idx_orders_customer INVISIBLE;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-- test before dropping<br>SHOW INDEX FROM orders;</div>
          <p>An <strong>invisible index</strong> (8.0+) is still maintained but ignored by the optimizer. Make an index invisible, watch performance, and only then <code>DROP INDEX</code> — switching it back to VISIBLE is instant.</p>
        </div>

        <div class="lc-card">
          <h3>Reading EXPLAIN</h3>
        <div class="lc-code">EXPLAIN SELECT * FROM orders WHERE customer_id = 42;</div>
        <div class="lc-code">-- before the index:<br>+----+-------------+--------+------+---------------+------+------+------+----------+-------------+<br>| id | select_type | table&nbsp;&nbsp;| type | possible_keys | key&nbsp;&nbsp;| ref&nbsp;&nbsp;| rows | filtered | Extra&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|<br>+----+-------------+--------+------+---------------+------+------+------+----------+-------------+<br>|&nbsp;&nbsp;1 | SIMPLE&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;| orders | ALL&nbsp;&nbsp;| NULL&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;| NULL | NULL | 1000 |&nbsp;&nbsp;&nbsp;&nbsp;10.00 | Using where |<br>-- after CREATE INDEX idx_orders_customer:<br>|&nbsp;&nbsp;1 | SIMPLE&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;| orders | ref&nbsp;&nbsp;| idx_orders_customer | idx_orders_customer | const | 2 | 100.00 | NULL |</div>
          <table class="lc-table">
            <thead><tr><th><code>type</code> (best → worst)</th><th>Meaning</th></tr></thead>
            <tbody>
              <tr><td><code>const</code> / <code>eq_ref</code></td><td>at most one row via PK or UNIQUE index</td></tr>
              <tr><td><code>ref</code></td><td>several rows via a non-unique index</td></tr>
              <tr><td><code>range</code></td><td>an index range: <code>BETWEEN</code>, <code>&gt;</code>, <code>IN (...)</code></td></tr>
              <tr><td><code>index</code></td><td>reads the whole index</td></tr>
              <tr><td><code>ALL</code></td><td>full table scan — the one to worry about on big tables</td></tr>
            </tbody>
          </table>
          <p>In <code>Extra</code>: <em>Using index</em> = covering index (no table lookup, good); <em>Using filesort</em> = an extra sort step; <em>Using temporary</em> = a temporary table (common with GROUP BY on unindexed columns). <code>rows</code> is an estimate; run <code>ANALYZE TABLE orders;</code> if estimates look badly wrong.</p>
        </div>

        <div class="lc-card">
          <h3>EXPLAIN ANALYZE (8.0.18+)</h3>
        <div class="lc-code">EXPLAIN ANALYZE SELECT * FROM orders WHERE customer_id = 42;<br>-&gt; Index lookup on orders using idx_orders_customer (customer_id=42)<br>&nbsp;&nbsp;&nbsp;(cost=0.7 rows=2) (actual time=0.031..0.036 rows=2 loops=1)</div>
          <p>It <strong>runs</strong> the query and prints the plan as a tree with real timings and row counts next to the estimates. It works with <code>SELECT</code>, <code>TABLE</code> and <strong>multi-table</strong> <code>UPDATE</code>/<code>DELETE</code> statements (a single-table UPDATE or DELETE gives an error). Because it really runs the statement, try it on a multi-table UPDATE/DELETE only inside <code>START TRANSACTION; ... ROLLBACK;</code>. <code>EXPLAIN FORMAT=TREE</code> shows the same tree without running the query.</p>
        </div>

        <div class="lc-card">
          <h3>FULLTEXT Search</h3>
        <div class="lc-code">CREATE FULLTEXT INDEX ft_articles ON articles (title, body);<br><br>SELECT title, MATCH(title, body) AGAINST ('monsoon farming') AS score<br>FROM articles<br>WHERE MATCH(title, body) AGAINST ('monsoon farming')&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-- natural language mode<br>ORDER BY score DESC;<br><br>SELECT title FROM articles<br>WHERE MATCH(title, body) AGAINST ('+monsoon -flood' IN BOOLEAN MODE);&nbsp;&nbsp;&nbsp;-- must / must not</div>
          <p><code>LIKE '%monsoon%'</code> cannot use a B-tree index and scans every row; a FULLTEXT index can. InnoDB ignores words shorter than 3 characters (<code>innodb_ft_min_token_size</code>) and common stopwords. For Chinese, Japanese or Korean text, create the index <code>WITH PARSER ngram</code>. For large-scale search with typo tolerance, teams often add a dedicated engine such as OpenSearch.</p>
        </div>

        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Wrapping indexed columns in functions: <code>WHERE DATE(created_at) = '2026-09-25'</code> cannot use an index on <code>created_at</code>. Write a range: <code>created_at &gt;= '2026-09-25' AND created_at &lt; '2026-09-26'</code> (or add a functional index).</li>
            <li>Composite index in the wrong order: <code>(created_at, status)</code> does not help <code>WHERE status = 'paid'</code>.</li>
            <li>Comparing a string column to a number (<code>WHERE phone = 9800000001</code>) — MySQL converts every row and skips the index. Quote it.</li>
            <li>Dropping an index without making it invisible first.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Try It</h3>
          <p>In the starter, look at the plan for <code>WHERE status = 'paid' AND created_at &gt;= '2026-09-01'</code> before and after adding the composite index. Then rewrite the <code>DATE(created_at)</code> query as a range and compare plans.</p>
        </div>

        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Turn on the <strong>slow query log</strong> (<code>slow_query_log = ON</code>, <code>long_query_time = 1</code>) in staging and production. It tells you which queries deserve an index, instead of guessing.
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
        <p class="lc-lead">A <strong>view</strong> saves a SELECT under a name. A <strong>stored procedure</strong> saves a whole program — several statements, variables, IF/ELSE, error handling — inside the MySQL server, run with <code>CALL</code>. Both let many apps share one trusted piece of SQL.</p>

        <div class="lc-card">
          <h3>Views in MySQL</h3>
        <div class="lc-code">CREATE OR REPLACE VIEW v_active_customers AS<br>SELECT id, name, city&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-- phone and email deliberately left out<br>FROM customers<br>WHERE is_active = 1<br>WITH CHECK OPTION;</div>
          <ul class="lc-list">
            <li><code>CREATE OR REPLACE VIEW</code> changes a view in one step (or use <code>ALTER VIEW</code>).</li>
            <li>Simple views (one table, no GROUP BY / DISTINCT / aggregates) are <strong>updatable</strong>: an UPDATE on the view changes the base table.</li>
            <li><code>WITH CHECK OPTION</code> rejects inserts or updates through the view that would create rows the view cannot see (here, <code>is_active = 0</code>).</li>
            <li><code>SQL SECURITY DEFINER</code> (default) runs the view with its creator's privileges; with <code>INVOKER</code> it uses the caller's. Grant users SELECT on the view but not the table to hide columns.</li>
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
              <tr><td><code>DELIMITER //</code></td><td>tells the <em>mysql client</em> that <code>;</code> no longer ends the statement, so the body's semicolons reach the server intact. It is a client command, not SQL; GUI tools and drivers do not need it.</td></tr>
              <tr><td><code>IN</code> / <code>OUT</code> / <code>INOUT</code></td><td>input parameters, output parameters (read back through a <code>@variable</code>), or both</td></tr>
              <tr><td><code>DECLARE</code></td><td>local variables, cursors and handlers — must come first in a BEGIN block</td></tr>
              <tr><td><code>DECLARE ... HANDLER</code></td><td>what to do when an error or warning occurs</td></tr>
              <tr><td><code>SIGNAL SQLSTATE '45000'</code></td><td>raise your own error with a message</td></tr>
              <tr><td><code>IF</code>, <code>CASE</code>, <code>WHILE</code>, <code>LOOP</code>, <code>REPEAT</code></td><td>control flow</td></tr>
            </tbody>
          </table>
        <div class="lc-code">SHOW PROCEDURE STATUS WHERE Db = 'shop';<br>SHOW CREATE PROCEDURE place_order\G<br>DROP PROCEDURE IF EXISTS place_order;</div>
        </div>

        <div class="lc-card">
          <h3>Should Logic Live in the Database?</h3>
          <table class="lc-table">
            <thead><tr><th>Pros</th><th>Cons</th></tr></thead>
            <tbody>
              <tr><td>One round trip for many statements</td><td>Harder to version, test and debug than app code</td></tr>
              <tr><td>Same rules for every app and script</td><td>Ties you to MySQL's procedural language</td></tr>
              <tr><td>Users can be granted EXECUTE without table access</td><td>Scaling the database is harder than scaling app servers</td></tr>
            </tbody>
          </table>
          <p>Many modern teams keep business logic in the application and use procedures for data-heavy maintenance jobs. Either way, keep procedures in version control as migration files.</p>
        </div>

        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Forgetting <code>DELIMITER</code> in the mysql client — the CREATE stops at the first <code>;</code> with a syntax error.</li>
            <li>Parameter names equal to column names (<code>customer_id</code>) — inside queries MySQL uses the parameter. Prefix them: <code>p_customer</code>.</li>
            <li>No error handler, so a failure leaves a transaction half-done.</li>
            <li>Building SQL strings from parameters with <code>PREPARE</code> and <code>CONCAT</code> — that reintroduces SQL injection.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Try It</h3>
          <p>The browser sandbox cannot store procedures, so the starter runs the procedure's steps by hand with user variables. Change <code>@amount</code> to <code>0</code> and write down what the real procedure would do. On a real server, create <code>place_order</code> and call it.</p>
        </div>

        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Name views with a prefix like <code>v_</code> and procedures with a verb (<code>place_order</code>, <code>archive_old_logs</code>). In <code>SHOW TABLES</code> output, views and tables otherwise look identical.
        </div>
      HTML
      starter_code: <<~'SQL'
        -- Views and Stored Procedures
        CREATE TABLE customers (
            id          INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
            name        VARCHAR(50)  NOT NULL,
            phone       VARCHAR(15)  NOT NULL,
            city        VARCHAR(30)  NOT NULL,
            is_active   BOOLEAN      NOT NULL DEFAULT TRUE,
            total_spent DECIMAL(10,2) NOT NULL DEFAULT 0
        ) ENGINE=InnoDB;
        CREATE TABLE orders (
            id          INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
            customer_id INT UNSIGNED NOT NULL,
            amount      DECIMAL(10,2) NOT NULL
        ) ENGINE=InnoDB;
        INSERT INTO customers (name, phone, city, is_active) VALUES
            ('Esha', '9800011111', 'Kanpur', TRUE), ('Faisal', '9800022222', 'Mysuru', TRUE),
            ('Gita', '9800033333', 'Kanpur', FALSE);

        -- A view that hides phone numbers and inactive customers
        CREATE VIEW v_active_customers AS
        SELECT id, name, city, total_spent FROM customers WHERE is_active = 1;

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
        CREATE VIEW v_city_sales AS
        SELECT c.city, COUNT(o.id) AS orders, IFNULL(SUM(o.amount), 0) AS revenue
        FROM customers c LEFT JOIN orders o ON o.customer_id = c.id
        GROUP BY c.city;

        SELECT * FROM v_active_customers;
        SELECT * FROM v_city_sales ORDER BY city;
      SQL
    },

    16 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mysql">MySQL</div>
          <h1 class="lc-title">Stored Functions and Triggers</h1>
        </div>
        <p class="lc-lead">A <strong>stored function</strong> returns one value and can be used inside any SQL expression, like a built-in function. A <strong>trigger</strong> runs automatically when a row is inserted, updated or deleted — perfect for audit logs and last-line-of-defence validation. <strong>Events</strong> run SQL on a schedule.</p>

        <div class="lc-card">
          <h3>Stored Functions</h3>
        <div class="lc-code">DELIMITER //<br>CREATE FUNCTION gst_amount(p_amount DECIMAL(10,2), p_rate DECIMAL(4,2))<br>RETURNS DECIMAL(10,2)<br>DETERMINISTIC NO SQL<br>BEGIN<br>&nbsp;&nbsp;&nbsp;&nbsp;RETURN ROUND(p_amount * p_rate / 100, 2);<br>END //<br>DELIMITER ;<br><br>SELECT item, price, gst_amount(price, 18) AS gst FROM products;</div>
          <p>Binary logging is on by default in MySQL 8+, so a function must declare its nature: <code>DETERMINISTIC</code> (same inputs → same result), <code>NO SQL</code> or <code>READS SQL DATA</code>. Otherwise CREATE FUNCTION fails with <em>ERROR 1418</em>. Declare honestly — a wrong DETERMINISTIC can give wrong results on replicas.</p>
          <table class="lc-table">
            <thead><tr><th></th><th>Procedure</th><th>Function</th></tr></thead>
            <tbody>
              <tr><td>Called with</td><td><code>CALL proc(...)</code></td><td>inside an expression: <code>SELECT f(x)</code></td></tr>
              <tr><td>Returns</td><td>OUT parameters and/or result sets</td><td>exactly one value (<code>RETURN</code>)</td></tr>
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
              <tr><td>INSERT</td><td>—</td><td>the new row (changeable in BEFORE)</td></tr>
              <tr><td>UPDATE</td><td>row before</td><td>row after (changeable in BEFORE)</td></tr>
              <tr><td>DELETE</td><td>the deleted row</td><td>—</td></tr>
            </tbody>
          </table>
          <p>A single-statement trigger needs no <code>BEGIN ... END</code> or DELIMITER. MySQL triggers are always <code>FOR EACH ROW</code> (there are no statement-level triggers). You can have several triggers for the same event; order them with <code>FOLLOWS</code> / <code>PRECEDES</code>.</p>
        </div>

        <div class="lc-card">
          <h3>BEFORE Triggers: Fix or Reject Data</h3>
        <div class="lc-code">DELIMITER //<br>CREATE TRIGGER trg_products_before_update<br>BEFORE UPDATE ON products<br>FOR EACH ROW<br>BEGIN<br>&nbsp;&nbsp;&nbsp;&nbsp;IF NEW.price &lt; 0 THEN<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Price cannot be negative';<br>&nbsp;&nbsp;&nbsp;&nbsp;END IF;<br>&nbsp;&nbsp;&nbsp;&nbsp;SET NEW.name = TRIM(NEW.name);&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-- clean the value before it is saved<br>END //<br>DELIMITER ;</div>
          <p>For simple rules a <code>CHECK</code> constraint is clearer; use a trigger when the rule needs logic or other tables.</p>
        </div>

        <div class="lc-card">
          <h3>Trigger Limits to Know</h3>
          <ul class="lc-list">
            <li>A trigger cannot modify the table it is defined on with UPDATE/INSERT (<em>ERROR 1442</em>) — change <code>NEW</code> in a BEFORE trigger instead.</li>
            <li>Rows changed by foreign key cascades do <strong>not</strong> fire triggers.</li>
            <li>Triggers run inside the same transaction: if the trigger fails, the whole statement fails and is rolled back.</li>
            <li>They are invisible in application code — document them, and list them with <code>SHOW TRIGGERS;</code>.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Events: Scheduled SQL</h3>
        <div class="lc-code">CREATE EVENT ev_purge_sessions<br>ON SCHEDULE EVERY 1 DAY STARTS '2026-09-26 02:00:00'<br>DO DELETE FROM sessions WHERE expires_at &lt; NOW();</div>
          <p>The event scheduler is on by default since MySQL 8.0 (<code>SHOW VARIABLES LIKE 'event_scheduler';</code>). It is handy for cleanup jobs; for anything that needs retries, alerts or logs, an external scheduler (cron, a job queue) is easier to monitor.</p>
        </div>

        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Putting slow queries in triggers on busy tables — every single insert or update pays the cost.</li>
            <li>Chains of triggers firing triggers that nobody can follow.</li>
            <li>Declaring a function <code>DETERMINISTIC</code> when it reads changing data.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Try It</h3>
          <p>Add an <code>AFTER DELETE</code> trigger that writes the deleted product's id and name into a <code>deleted_products</code> table, then delete one product and check the table.</p>
        </div>

        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Audit triggers are one of the best uses of triggers: they record <em>who changed what and when</em> no matter which app, script or admin made the change. Add <code>changed_at DATETIME DEFAULT CURRENT_TIMESTAMP</code> to the log table and have the trigger store <code>USER()</code> in a <code>changed_by</code> column. (Inside a trigger, <code>CURRENT_USER()</code> returns the trigger's <em>definer</em>, not the person who made the change.)
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
        <p class="lc-lead">Every connection to MySQL logs in as an <strong>account</strong>, and each account has exactly the <strong>privileges</strong> you grant it. Giving your web app the root password is like giving every visitor the keys to the server room. This lesson shows how to set up accounts properly in MySQL 8.4 and later.</p>

        <div class="lc-card">
          <h3>Accounts Are 'user'@'host'</h3>
        <div class="lc-code">CREATE USER 'shop_app'@'10.0.1.%' IDENTIFIED BY 'a-long-random-password';<br>CREATE USER 'report'@'localhost'&nbsp;&nbsp;IDENTIFIED BY '...';<br>CREATE USER 'admin_asha'@'%'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;IDENTIFIED BY '...' REQUIRE SSL;</div>
          <ul class="lc-list">
            <li>An account is a user name <strong>plus</strong> the host it may connect from. <code>'report'@'localhost'</code> can only connect from the database machine itself.</li>
            <li><code>%</code> is a wildcard: <code>'10.0.1.%'</code> = any machine in that subnet; <code>'%'</code> = anywhere. Prefer the narrowest host that works.</li>
            <li>Passwords are stored hashed. The default authentication plugin is <code>caching_sha2_password</code>. The old <code>mysql_native_password</code> is deprecated, <strong>disabled by default in 8.4</strong> and <strong>removed in 9.0</strong> — old drivers that only support it must be upgraded.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Granting Privileges</h3>
        <div class="lc-code">GRANT SELECT, INSERT, UPDATE, DELETE ON shop.* TO 'shop_app'@'10.0.1.%';&nbsp;&nbsp;&nbsp;-- one database<br>GRANT SELECT ON shop.orders TO 'report'@'localhost';&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-- one table<br>GRANT SELECT (id, name, city) ON shop.customers TO 'report'@'localhost';&nbsp;&nbsp;&nbsp;-- some columns<br>GRANT EXECUTE ON PROCEDURE shop.place_order TO 'shop_app'@'10.0.1.%';<br><br>SHOW GRANTS FOR 'report'@'localhost';<br>REVOKE DELETE ON shop.* FROM 'shop_app'@'10.0.1.%';</div>
          <table class="lc-table">
            <thead><tr><th>Level</th><th>Syntax</th><th>Typical user</th></tr></thead>
            <tbody>
              <tr><td>Global</td><td><code>ON *.*</code></td><td>DBAs only</td></tr>
              <tr><td>Database</td><td><code>ON shop.*</code></td><td>the application</td></tr>
              <tr><td>Table / column</td><td><code>ON shop.orders</code>, <code>SELECT (col)</code></td><td>reporting, analysts</td></tr>
              <tr><td>Routine</td><td><code>ON PROCEDURE shop.x</code></td><td>apps that may only call procedures</td></tr>
            </tbody>
          </table>
          <p>Since MySQL 8.0, <code>GRANT</code> no longer creates accounts — run <code>CREATE USER</code> first. <code>FLUSH PRIVILEGES</code> is not needed after GRANT, REVOKE or CREATE USER; it only matters if someone edits the grant tables directly (don't).</p>
        </div>

        <div class="lc-card">
          <h3>Roles (MySQL 8.0+)</h3>
        <div class="lc-code">CREATE ROLE 'app_read', 'app_write';<br>GRANT SELECT ON shop.* TO 'app_read';<br>GRANT INSERT, UPDATE, DELETE ON shop.* TO 'app_write';<br><br>GRANT 'app_read', 'app_write' TO 'shop_app'@'10.0.1.%';<br>GRANT 'app_read' TO 'report'@'localhost';<br>SET DEFAULT ROLE ALL TO 'shop_app'@'10.0.1.%', 'report'@'localhost';</div>
          <p>A role is a named bundle of privileges. Grant privileges to roles and roles to people; when someone changes team you change one line. Granted roles are <strong>inactive until activated</strong> — <code>SET DEFAULT ROLE</code> activates them at login.</p>
        </div>

        <div class="lc-card">
          <h3>Password and Login Policies</h3>
        <div class="lc-code">ALTER USER 'admin_asha'@'%' PASSWORD EXPIRE INTERVAL 90 DAY;<br>ALTER USER 'admin_asha'@'%' FAILED_LOGIN_ATTEMPTS 5 PASSWORD_LOCK_TIME 1;&nbsp;&nbsp;&nbsp;-- lock 1 day<br>ALTER USER 'shop_app'@'10.0.1.%' IDENTIFIED BY 'new-long-random-password';<br>DROP USER 'old_intern'@'%';</div>
        </div>

        <div class="lc-card">
          <h3>Least-Privilege Checklist</h3>
          <ul class="lc-list">
            <li>One account per application (and per environment), never <code>root</code>.</li>
            <li>Apps get only DML (<code>SELECT, INSERT, UPDATE, DELETE</code>) on their own database. Schema changes run from a separate migration account.</li>
            <li>No <code>GRANT OPTION</code>, <code>SUPER</code>, <code>FILE</code> or <code>*.*</code> for apps.</li>
            <li>Keep MySQL off the public internet: <code>bind-address</code> on a private interface, a firewall, and TLS for remote connections.</li>
            <li>Store passwords in a secrets manager or environment variables, not in the code repository.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Thinking <code>'app'@'localhost'</code> and <code>'app'@'%'</code> are the same account — they are two different accounts with separate passwords and grants.</li>
            <li><code>GRANT ALL ON *.*</code> "just to make it work".</li>
            <li>Forgetting <code>SET DEFAULT ROLE</code>, then wondering why the user has no privileges.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Try It</h3>
          <p>User management needs a real server, so the starter runs an <em>access review</em> on a small copy of grant data. Add a query that finds accounts holding any privilege on <code>*.*</code>, then write (for a real server) the REVOKE statements to fix them.</p>
        </div>

        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> On a real server, <code>SELECT user, host, plugin FROM mysql.user;</code> quickly shows every account, where it can log in from, and whether any still use an old authentication plugin.
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
        <p class="lc-lead">Disks fail, people run <code>DELETE</code> without WHERE, and servers get hacked. A <strong>backup</strong> you have actually restored is the only real protection. <strong>Replication</strong> copies every change to other servers for high availability and read scaling — but it is <em>not</em> a backup.</p>

        <div class="lc-card">
          <h3>Backup Types</h3>
          <table class="lc-table">
            <thead><tr><th>Type</th><th>Tools</th><th>Good for</th></tr></thead>
            <tbody>
              <tr><td>Logical (SQL statements)</td><td><code>mysqldump</code>, MySQL Shell <code>util.dumpInstance()</code></td><td>small/medium databases, moving between versions, restoring one table</td></tr>
              <tr><td>Physical (copies data files)</td><td>Percona XtraBackup, MySQL Enterprise Backup, the CLONE plugin</td><td>large databases, fast full restores</td></tr>
              <tr><td>Point-in-time recovery</td><td>a full backup + the <strong>binary log</strong> replayed with <code>mysqlbinlog</code></td><td>"restore to 10:41, just before the bad DELETE"</td></tr>
            </tbody>
          </table>
        </div>

        <div class="lc-card">
          <h3>mysqldump</h3>
        <div class="lc-code"># Consistent backup of one database without locking InnoDB tables<br>mysqldump -u backup -p --single-transaction --routines --events \<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;--databases shop &gt; shop_2026-09-25.sql<br><br># Restore<br>mysql -u root -p &lt; shop_2026-09-25.sql<br><br># One table only<br>mysqldump -u backup -p --single-transaction shop orders &gt; orders.sql</div>
          <ul class="lc-list">
            <li><code>--single-transaction</code> takes a consistent snapshot of InnoDB tables without blocking writes.</li>
            <li>Triggers are dumped by default; <strong>stored procedures/functions (<code>--routines</code>) and events (<code>--events</code>) are not</strong> — add the flags.</li>
            <li><code>mysqlpump</code> was deprecated and is removed in MySQL 8.4. For big databases, MySQL Shell's <code>util.dumpInstance()</code> / <code>util.loadDump()</code> dump and load in parallel and are much faster.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>The Binary Log and Point-in-Time Recovery</h3>
          <p>The binary log (on by default since MySQL 8.0, in <code>ROW</code> format) records every change. Replay it on top of last night's backup, stopping just before the mistake:</p>
        <div class="lc-code">mysqlbinlog --stop-datetime="2026-09-25 10:41:00" binlog.000042 binlog.000043 | mysql -u root -p</div>
          <p>Binary logs are kept for 30 days by default (<code>binlog_expire_logs_seconds</code>). Copy them off the server along with your backups.</p>
        </div>

        <div class="lc-card">
          <h3>Replication Overview</h3>
        <div class="lc-code">[source]&nbsp;&nbsp;--binary log--&gt;&nbsp;&nbsp;[replica 1]&nbsp;&nbsp;(reads, reports)<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\--&gt;&nbsp;&nbsp;[replica 2]&nbsp;&nbsp;(standby for failover)</div>
        <div class="lc-code">-- on the replica (MySQL 8.4 and later syntax, with GTIDs)<br>CHANGE REPLICATION SOURCE TO<br>&nbsp;&nbsp;&nbsp;&nbsp;SOURCE_HOST = '10.0.1.10', SOURCE_USER = 'repl', SOURCE_PASSWORD = '...',<br>&nbsp;&nbsp;&nbsp;&nbsp;SOURCE_AUTO_POSITION = 1, SOURCE_SSL = 1;<br>START REPLICA;<br>SHOW REPLICA STATUS\G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-- check Replica_IO_Running, Replica_SQL_Running, Seconds_Behind_Source</div>
          <ul class="lc-list">
            <li>Replication is <strong>asynchronous</strong> by default: a replica may be seconds behind (replication lag). Reading from a replica right after writing to the source can show old data.</li>
            <li><strong>GTIDs</strong> (global transaction ids) let replicas track their position automatically — use them.</li>
            <li>The old commands <code>CHANGE MASTER TO</code>, <code>START SLAVE</code> and <code>SHOW SLAVE STATUS</code> were <strong>removed in MySQL 8.4</strong>. Old tutorials still show them.</li>
            <li>For automatic failover, MySQL offers <strong>Group Replication</strong> and <strong>InnoDB Cluster</strong> (Group Replication + MySQL Router + MySQL Shell).</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Replication Is Not a Backup</h3>
          <p>If someone runs <code>DROP TABLE orders</code> on the source, every replica drops it within a second. Replication protects you from a <em>server</em> failing, not from a <em>mistake</em>. You need both.</p>
        </div>

        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Never testing a restore — many teams discover a broken backup on the day they need it.</li>
            <li>Forgetting <code>--routines --events</code>, then restoring a database with no procedures.</li>
            <li>Keeping backups only on the same server (or the same cloud account) as the database.</li>
            <li>Sending all reads to replicas without handling lag.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Try It</h3>
          <p>The starter is a trimmed <code>mysqldump</code> file. Run it to "restore" the database, then write more verification queries: orders per customer and the newest <code>created_at</code>. In a real restore you compare these numbers with the source server.</p>
        </div>

        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Follow the <strong>3-2-1 rule</strong>: 3 copies of your data, on 2 different kinds of storage, with 1 copy off-site. Then schedule a monthly restore test and record how long it took — that is your real recovery time.
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
          `city` varchar(30) NOT NULL,
          PRIMARY KEY (`id`)
        ) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

        INSERT INTO `customers` VALUES (1,'Kavya','Madurai'),(2,'Laksh','Bhopal'),(3,'Manav','Madurai');

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
        <p class="lc-lead">Most SQL is sent by programs, not typed by people. This lesson covers the habits that make an application talk to MySQL safely and quickly: <strong>parameterised queries</strong> against SQL injection, connection pools, correct charset and time zone settings, efficient pagination, and avoiding the N+1 query problem.</p>

        <div class="lc-card">
          <h3>SQL Injection in One Example</h3>
        <div class="lc-code"># DANGEROUS: user input pasted into the SQL text<br>email = request.form["email"]&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;# attacker types:&nbsp;&nbsp;' OR '1'='1<br>sql = "SELECT id, name FROM users WHERE email = '" + email + "'"<br># becomes: SELECT id, name FROM users WHERE email = '' OR '1'='1'&nbsp;&nbsp;&nbsp;-&gt; every user!</div>
          <p>The attacker's text became part of the SQL <em>code</em>. The fix is not "escape quotes carefully" — it is to send the SQL and the values <strong>separately</strong>, so input is always treated as data. Injection has appeared in every edition of the OWASP Top 10 list of web security risks.</p>
        </div>

        <div class="lc-card">
          <h3>Parameterised Queries in Popular Drivers</h3>
        <div class="lc-code"># Python (mysql-connector-python / PyMySQL)<br>cur.execute("SELECT id, name FROM users WHERE email = %s", (email,))<br><br>// Node.js (mysql2)<br>const [rows] = await pool.execute("SELECT id, name FROM users WHERE email = ?", [email]);<br><br>// PHP (PDO)<br>$stmt = $pdo-&gt;prepare("SELECT id, name FROM users WHERE email = ?");<br>$stmt-&gt;execute([$email]);<br><br>// Java (JDBC)<br>PreparedStatement ps = conn.prepareStatement("SELECT id, name FROM users WHERE email = ?");<br>ps.setString(1, email);</div>
          <p>Placeholders work for <strong>values</strong> only. Table names, column names and <code>ASC</code>/<code>DESC</code> cannot be parameters — pick them from a fixed allow-list in code (<code>sort = "price" if choice == "price" else "name"</code>). Inside MySQL itself the same idea is <code>PREPARE stmt FROM '... WHERE email = ?'; EXECUTE stmt USING @email;</code>.</p>
        </div>

        <div class="lc-card">
          <h3>Connections: Pools, Charset, Time Zone, TLS</h3>
          <table class="lc-table">
            <thead><tr><th>Setting</th><th>Recommendation</th></tr></thead>
            <tbody>
              <tr><td>Connection pool</td><td>reuse a small pool (e.g. 5–20 per app server); opening a connection per request is slow. Server limit: <code>max_connections</code> (151 by default).</td></tr>
              <tr><td>Charset</td><td><code>utf8mb4</code> in the connection options (lesson 4)</td></tr>
              <tr><td>Time zone</td><td>store UTC; set the session time zone to <code>'+00:00'</code> and convert for display in the app</td></tr>
              <tr><td>TLS</td><td>required for any connection that leaves the machine</td></tr>
              <tr><td>Credentials</td><td>from environment variables or a secrets manager, never in the repository</td></tr>
            </tbody>
          </table>
        </div>

        <div class="lc-card">
          <h3>The N+1 Query Problem</h3>
        <div class="lc-code"># 1 query for the orders, then 1 more query PER order = N+1 round trips<br>orders = query("SELECT id, customer_id FROM orders LIMIT 50")<br>for o in orders:<br>&nbsp;&nbsp;&nbsp;&nbsp;o.customer = query("SELECT name FROM customers WHERE id = %s", (o.customer_id,))<br><br># Better: one JOIN (or one WHERE id IN (...) query)<br>query("""SELECT o.id, c.name FROM orders o<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;JOIN customers c ON c.id = o.customer_id LIMIT 50""")</div>
          <p>ORMs (Django ORM, SQLAlchemy, Sequelize, Eloquent, Hibernate) make N+1 easy to write by accident; use their eager-loading options (<code>select_related</code>, <code>joinedload</code>, <code>include</code>, <code>with</code>).</p>
        </div>

        <div class="lc-card">
          <h3>Pagination</h3>
        <div class="lc-code">SELECT id, title FROM posts ORDER BY id DESC LIMIT 20 OFFSET 40;&nbsp;&nbsp;&nbsp;-- page 3<br>SELECT id, title FROM posts ORDER BY id DESC LIMIT 40, 20;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-- same, MySQL form<br>SELECT id, title FROM posts WHERE id &lt; 1234 ORDER BY id DESC LIMIT 20;&nbsp;&nbsp;-- keyset: after id 1234</div>
          <p>OFFSET must read and throw away all earlier rows, so page 5,000 is slow. Keyset pagination stays fast with an index on the sort column.</p>
        </div>

        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>String-building SQL with user input, even "just for an internal tool".</li>
            <li>Connecting as <code>root</code> from the app.</li>
            <li>A new connection for every query, or a pool bigger than the server can handle.</li>
            <li>No retry for deadlock errors (1213) in transactional code.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Try It</h3>
          <p>In the starter, set <code>@email</code> to another attack string such as <code>x' OR 1=1 -- </code> and confirm the parameterised query still returns no rows. Then fetch page 2 of the posts with keyset pagination.</p>
        </div>

        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Log slow queries <em>from the app side</em> too (query text + parameters + time). When a page is slow, you can see immediately whether it ran one heavy query or 200 small ones.
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
        <p class="lc-lead">Build the database for <em>Desi Bazaar</em>, a small online shop, using the MySQL features from this course: correct types and charset, InnoDB constraints, JSON attributes with an indexed generated column, a transaction that places an order, an upsert, an audit trigger, and a window-function report. Then write the production checklist a real team would review.</p>

        <div class="lc-card">
          <h3>Requirements</h3>
          <table class="lc-table">
            <thead><tr><th>Requirement</th><th>MySQL feature</th><th>Lesson</th></tr></thead>
            <tbody>
              <tr><td>Names in any language, emoji in reviews</td><td><code>utf8mb4</code>, <code>utf8mb4_0900_ai_ci</code></td><td>4</td></tr>
              <tr><td>Exact prices, no negative stock</td><td><code>DECIMAL(10,2)</code>, <code>UNSIGNED</code>, <code>CHECK</code></td><td>2, 6</td></tr>
              <tr><td>Orders belong to real customers</td><td>InnoDB foreign keys</td><td>6</td></tr>
              <tr><td>Different attributes per product type</td><td><code>JSON</code> + generated column + index</td><td>11, 12</td></tr>
              <tr><td>Placing an order is all-or-nothing</td><td><code>START TRANSACTION</code>, <code>LAST_INSERT_ID()</code></td><td>5, 13</td></tr>
              <tr><td>Restocking adds to existing rows</td><td><code>ON DUPLICATE KEY UPDATE</code></td><td>7</td></tr>
              <tr><td>Every stock change is audited</td><td><code>AFTER UPDATE</code> trigger</td><td>16</td></tr>
              <tr><td>Monthly revenue with running total</td><td>CTE + <code>SUM() OVER</code></td><td>10</td></tr>
            </tbody>
          </table>
        </div>

        <div class="lc-card">
          <h3>Placing an Order Safely</h3>
        <div class="lc-code">START TRANSACTION;<br>UPDATE products SET stock = stock - 2 WHERE id = 1 AND stock &gt;= 2;&nbsp;&nbsp;&nbsp;-- 0 rows? -&gt; ROLLBACK<br>INSERT INTO orders (customer_id, ordered_at) VALUES (1, '2026-09-25 10:00:00');<br>SET @order_id = LAST_INSERT_ID();<br>INSERT INTO order_items (order_id, product_id, qty, unit_price)<br>SELECT @order_id, id, 2, price FROM products WHERE id = 1;<br>COMMIT;</div>
          <p>The conditional UPDATE both checks and reserves the stock in one atomic statement; the order line copies the <em>current</em> price so old bills never change.</p>
        </div>

        <div class="lc-card">
          <h3>Expected Report Output</h3>
        <div class="lc-code">+---------+---------+---------------+<br>| month&nbsp;&nbsp;&nbsp;| revenue | running_total |<br>+---------+---------+---------------+<br>| 2026-08 | 1797.00 |&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1797.00 |<br>| 2026-09 | 2499.00 |&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4296.00 |<br>+---------+---------+---------------+</div>
        </div>

        <div class="lc-card">
          <h3>Going to Production: Checklist</h3>
          <ul class="lc-list">
            <li><strong>Accounts (lesson 17):</strong> <code>shop_app</code> with only SELECT/INSERT/UPDATE/DELETE on <code>shop.*</code>; a separate migration account; nobody uses root.</li>
            <li><strong>Indexes (lesson 14):</strong> run <code>EXPLAIN</code> on the five most frequent queries; foreign keys and <code>brand</code> are indexed.</li>
            <li><strong>Backups (lesson 18):</strong> nightly <code>mysqldump --single-transaction --routines --events</code> (or MySQL Shell dump), binary logs kept, a tested restore.</li>
            <li><strong>Server:</strong> MySQL 8.4 or 9.7 LTS, strict <code>sql_mode</code> left on, TLS for remote connections.</li>
            <li><strong>Application (lesson 19):</strong> parameterised queries, a connection pool, retry on deadlock.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Common Mistakes to Check</h3>
          <ul class="lc-list">
            <li>Revenue computed from <code>products.price</code> instead of <code>order_items.unit_price</code>.</li>
            <li>Placing an order without checking that the stock UPDATE changed a row.</li>
            <li>Using <code>REPLACE</code> for restocking and wiping the product's other columns.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Try It — Extend the Project</h3>
          <ol class="lc-list">
            <li>Add a <code>reviews</code> table (1–5 stars with CHECK, text in utf8mb4) and show the average rating per product.</li>
            <li>Place a second order for Anika inside a transaction and check that the stock audit trigger logged it.</li>
            <li>Rank customers by total spend with <code>DENSE_RANK()</code>.</li>
            <li>On a real server: create the <code>shop_app</code> account and role, take a mysqldump, and restore it into a new database.</li>
          </ol>
        </div>

        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Save the final script as <code>schema.sql</code> and <code>seed.sql</code> in a Git repository with a short README. A clean, commented MySQL schema with a working order transaction is a strong portfolio piece for backend interviews.
        </div>
      HTML
      starter_code: <<~'SQL'
        -- Capstone: Desi Bazaar shop database
        CREATE TABLE customers (
            id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY, name VARCHAR(60) NOT NULL, city VARCHAR(40) NOT NULL
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

        INSERT INTO customers (name, city) VALUES ('Anika', 'Pune'), ('Bhuvan', 'Kochi');
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

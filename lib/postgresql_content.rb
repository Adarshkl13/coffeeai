module PostgresqlContent
  LESSONS = {
    1 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-postgresql">PostgreSQL</div>
          <h1 class="lc-title">Introduction to PostgreSQL</h1>
        </div>
        <p class="lc-lead">PostgreSQL (often called "Postgres") is a free, open-source relational database. It is fast, follows the SQL standard and is very reliable. Companies of every size use it. In this course you will write real PostgreSQL. The editor runs a real PostgreSQL 17 server inside your browser.</p>

        <div class="lc-card">
          <h3>What Is PostgreSQL?</h3>
          <p>A <strong>relational database</strong> stores data in <strong>tables</strong> (rows and columns). You talk to it with <strong>SQL</strong> (the language for asking a database for data). PostgreSQL adds many extras on top of standard SQL:</p>
          <ul class="lc-list">
            <li><strong>Reliable transactions</strong> (ACID): a group of changes happens fully or not at all. A money transfer never stops halfway.</li>
            <li><strong>MVCC</strong>: people reading data never block people changing it. So many users can work at the same time.</li>
            <li><strong>Rich types</strong>: <code>jsonb</code>, arrays, ranges, <code>uuid</code>, and correct handling of time zones.</li>
            <li><strong>Powerful SQL</strong>: CTEs, window functions, <code>RETURNING</code>, upserts, <code>MERGE</code>.</li>
            <li><strong>Built-in full-text search</strong> and many index types (B-tree, GIN, GiST, BRIN).</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>How You Connect</h3>
          <p>PostgreSQL is a <strong>client–server</strong> system. The server holds the data. Its default port (network door number) is <strong>5432</strong>. Clients (programs you use) send SQL to the server. Common clients:</p>
          <ul class="lc-list">
            <li><code>psql</code>: the official command-line client.</li>
            <li>GUI tools such as pgAdmin or DBeaver.</li>
            <li>Your application, through a driver (a library that talks to the database). For example psycopg for Python, node-postgres for Node.js, and the <code>pg</code> gem for Rails.</li>
          </ul>
          <p>Useful <code>psql</code> commands. They start with a backslash and are not SQL. This editor understands <code>\dt</code> and <code>\d table</code>. The others work in the real <code>psql</code> client:</p>
          <table class="lc-table">
            <thead><tr><th>Command</th><th>What it does</th></tr></thead>
            <tbody>
              <tr><td><code>\l</code></td><td>List databases</td></tr>
              <tr><td><code>\c shop</code></td><td>Connect to the database <code>shop</code></td></tr>
              <tr><td><code>\dt</code></td><td>List tables</td></tr>
              <tr><td><code>\d students</code></td><td>Show details of one table (columns, indexes, constraints)</td></tr>
              <tr><td><code>\x</code></td><td>Turn expanded display on or off (helps with wide rows)</td></tr>
              <tr><td><code>\q</code></td><td>Quit</td></tr>
            </tbody>
          </table>
        </div>

        <div class="lc-card">
          <h3>Parts of a Query</h3>
          <p>SQL is <strong>declarative</strong>. You say <em>what</em> you want, and PostgreSQL decides <em>how</em> to get it.</p>
        <div class="lc-code">SELECT name, marks        -- 3. which columns<br>FROM students             -- 1. which table<br>WHERE city = 'London'       -- 2. which rows<br>ORDER BY marks DESC       -- 4. sort<br>LIMIT 2;                  -- 5. keep the first 2</div>
          <ul class="lc-list">
            <li>End each statement with a semicolon <code>;</code>.</li>
            <li>Keywords are not case-sensitive. Writing them in UPPERCASE is just a habit that makes code easier to read.</li>
            <li><code>'single quotes'</code> make a <strong>text value</strong>. <code>"double quotes"</code> name an <strong>identifier</strong> (the name of a table or column). So <code>WHERE city = "London"</code> looks for a column called London, and it fails.</li>
            <li><code>--</code> starts a comment.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Worked Example</h3>
          <p>The starter code creates a <code>students</code> table, adds five rows and runs four queries. Query 3 sorts by marks. Two students both have 93, so it uses <code>name</code> to decide their order:</p>
        <div class="lc-code">SELECT name, marks<br>FROM students<br>ORDER BY marks DESC, name<br>LIMIT 3;</div>
          <p><strong>Output:</strong></p>
        <div class="lc-code">&nbsp;name  | marks<br>-------+------<br>&nbsp;Diya  |    93<br>&nbsp;Rohan |    93<br>&nbsp;Aarav |    88<br>(3 rows)</div>
          <p>Query 4 prints <code>total_students = 5</code> and <code>average_marks = 86.2</code>. The first query prints the server's major version (17 in this editor).</p>
        </div>

        <div class="lc-card">
          <h3>PostgreSQL vs Other Databases</h3>
          <table class="lc-table">
            <thead><tr><th>Feature</th><th>PostgreSQL</th><th>MySQL</th><th>SQLite</th></tr></thead>
            <tbody>
              <tr><td>Runs as</td><td>Server</td><td>Server</td><td>A file inside your app</td></tr>
              <tr><td>JSON</td><td><code>jsonb</code> (binary, indexable)</td><td><code>JSON</code> type</td><td>JSON functions on text</td></tr>
              <tr><td>Array columns</td><td>Yes</td><td>No</td><td>No</td></tr>
              <tr><td>Roll back <code>CREATE TABLE</code></td><td>Yes (transactional DDL)</td><td>No</td><td>Yes</td></tr>
              <tr><td>Default port</td><td>5432</td><td>3306</td><td>n/a</td></tr>
            </tbody>
          </table>
        </div>

        <div class="lc-card">
          <h3>Versions in 2026</h3>
          <p>A new major version comes out every year, usually in September. Each version gets bug fixes for five years. <strong>PostgreSQL 18</strong> (September 2025) is the newest stable release at the time of writing. A new major version follows each year, so check postgresql.org for the latest one. This editor runs PostgreSQL 17. Everything in this course works on 17 and 18. Features that need a newer version are marked.</p>
        </div>

        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Using double quotes for text: <code>WHERE city = "London"</code> gives <em>column "London" does not exist</em>. Use <code>'London'</code>.</li>
            <li>Forgetting the semicolon between statements. Then two statements run together as one.</li>
            <li>Expecting rows in a fixed order without <code>ORDER BY</code>. Without it, the order can change.</li>
            <li>Sending backslash commands like <code>\dt</code> from application code. They are <code>psql</code> commands, not SQL. So the server rejects them.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>Add <code>\d students</code> on its own line at the end and run it. Read the column names and types. See which columns are NOT NULL.</li>
            <li>Add yourself to <code>students</code> with your own city and marks.</li>
            <li>Show only students with marks of 85 or more, highest first.</li>
            <li>Change query 4 to also show <code>max(marks)</code> and <code>min(marks)</code>.</li>
          </ol>
        </div>

        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Run the starter code first. Read every result table. Only then start changing things. Make a small change, run again and compare. This is the fastest way to learn SQL.
        </div>
      HTML
      starter_code: <<~'SQL'
        -- Lesson 1: Your first PostgreSQL session
        -- Which server am I talking to?
        SELECT current_setting('server_version_num')::int / 10000 AS major_version;

        -- Create a table (you will learn every keyword in Lessons 2-3)
        CREATE TABLE students (
          id    integer GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
          name  text    NOT NULL,
          city  text    NOT NULL,
          marks integer NOT NULL
        );

        INSERT INTO students (name, city, marks) VALUES
          ('Aarav', 'London',      88),
          ('Diya',  'Los Angeles', 93),
          ('Kabir', 'Chicago',     76),
          ('Meera', 'London',      81),
          ('Rohan', 'Boston',      93);

        -- 1. Every row, every column
        SELECT * FROM students;

        -- 2. Pick columns, filter rows, sort
        SELECT name, marks
        FROM students
        WHERE city = 'London'
        ORDER BY marks DESC;

        -- 3. Top 3 (name breaks the tie between 93s)
        SELECT name, marks
        FROM students
        ORDER BY marks DESC, name
        LIMIT 3;

        -- 4. Compute a summary
        SELECT count(*) AS total_students,
               round(avg(marks), 1) AS average_marks
        FROM students;
      SQL
    },

    2 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-postgresql">PostgreSQL</div>
          <h1 class="lc-title">Data Types and Casting</h1>
        </div>
        <p class="lc-lead">Every column has a data type (the kind of value it can hold). The right type keeps bad data out, saves space and gives correct results. Three choices matter most: <code>numeric</code> for money, <code>text</code> for strings and <code>timestamptz</code> for moments in time.</p>

        <div class="lc-card">
          <h3>Numbers</h3>
          <table class="lc-table">
            <thead><tr><th>Type</th><th>Size</th><th>Use for</th></tr></thead>
            <tbody>
              <tr><td><code>smallint</code></td><td>2 bytes</td><td>-32,768 to 32,767</td></tr>
              <tr><td><code>integer</code> (<code>int</code>)</td><td>4 bytes</td><td>Counts, quantities, most IDs (up to about 2.1 billion)</td></tr>
              <tr><td><code>bigint</code></td><td>8 bytes</td><td>IDs of very large tables, big counters</td></tr>
              <tr><td><code>numeric(p,s)</code></td><td>variable</td><td><strong>Exact</strong> decimals: money, marks, and measurements that must add up exactly</td></tr>
              <tr><td><code>real</code> / <code>double precision</code></td><td>4 / 8 bytes</td><td><strong>Approximate</strong> floats (decimal numbers that are not exact): science, sensor data, ML features</td></tr>
            </tbody>
          </table>
          <p><code>numeric(10,2)</code> means up to 10 digits in total, with 2 of them after the decimal point. So the largest value is 99,999,999.99.</p>
        </div>

        <div class="lc-card">
          <h3>Why You Never Use Float for Money</h3>
          <p>Floats store numbers in binary. The number 0.1 cannot be stored exactly in binary. <code>numeric</code> stores decimal digits exactly.</p>
        <div class="lc-code">SELECT (0.1::float8 + 0.2::float8)::text AS float_sum,<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;0.1::numeric + 0.2::numeric       AS numeric_sum;</div>
          <p><strong>Output:</strong></p>
        <div class="lc-code">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;float_sum      | numeric_sum<br>---------------------+------------<br>&nbsp;0.30000000000000004 |         0.3</div>
          <p>Also avoid the old <code>money</code> type. Its output depends on the server's locale (language and region) setting. Use <code>numeric(12,2)</code> instead. If you need a currency code, store it in its own column.</p>
        </div>

        <div class="lc-card">
          <h3>Text, Booleans, IDs</h3>
          <table class="lc-table">
            <thead><tr><th>Type</th><th>Notes</th></tr></thead>
            <tbody>
              <tr><td><code>text</code></td><td>Any length. The usual choice in PostgreSQL.</td></tr>
              <tr><td><code>varchar(n)</code></td><td>Same storage and speed as <code>text</code>, plus a length limit. Use it only when the limit is a real business rule.</td></tr>
              <tr><td><code>char(n)</code></td><td>Fills extra space with spaces. Avoid it.</td></tr>
              <tr><td><code>boolean</code></td><td><code>true</code>, <code>false</code> or <code>NULL</code>. Accepts <code>'yes'</code>, <code>'no'</code>, <code>'t'</code>, <code>'f'</code>, <code>'1'</code>, <code>'0'</code>.</td></tr>
              <tr><td><code>uuid</code></td><td>A 128-bit ID. <code>gen_random_uuid()</code> makes a random one. PostgreSQL 18 adds <code>uuidv7()</code>, which makes IDs in time order.</td></tr>
              <tr><td><code>jsonb</code>, arrays</td><td>Covered in Lessons 15 and 16.</td></tr>
            </tbody>
          </table>
        </div>

        <div class="lc-card">
          <h3>Dates and Times: Use timestamptz</h3>
          <table class="lc-table">
            <thead><tr><th>Type</th><th>Stores</th><th>Example</th></tr></thead>
            <tbody>
              <tr><td><code>date</code></td><td>A calendar day</td><td>2026-09-25</td></tr>
              <tr><td><code>timestamp</code></td><td>Date and clock time with <strong>no</strong> time zone</td><td>2026-09-25 10:30:00</td></tr>
              <tr><td><code>timestamptz</code></td><td>An exact <strong>moment</strong>. It is stored in UTC and shown in the session's time zone.</td><td>2026-09-25 10:30:00-04</td></tr>
              <tr><td><code>interval</code></td><td>A length of time</td><td>2 hours 30 minutes</td></tr>
            </tbody>
          </table>
          <p>For "when did this happen" columns (<code>created_at</code>, <code>paid_at</code>), always use <code>timestamptz</code>. A plain <code>timestamp</code> cannot tell 10:30 in Chicago from 10:30 in London. Note: <code>timestamptz</code> does not remember which zone you typed. It converts to UTC when you save a value. It converts to your session's zone when you read it.</p>
        </div>

        <div class="lc-card">
          <h3>Casting</h3>
          <p>Casting means changing a value to another type. Use <code>value::type</code> (PostgreSQL style) or <code>CAST(value AS type)</code> (standard SQL). Both do the same thing.</p>
        <div class="lc-code">SELECT '42'::integer + 1          AS cast_int,<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;CAST('2026-09-25' AS date) + 7 AS week_later,<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3.14159::numeric(5,2)      AS rounded,<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;'yes'::boolean             AS cast_bool,<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;pg_typeof(3.14)            AS type_of_literal;</div>
          <p><strong>Output:</strong></p>
        <div class="lc-code">&nbsp;cast_int | week_later | rounded | cast_bool | type_of_literal<br>----------+------------+---------+-----------+----------------<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;43 | 2026-10-02 |    3.14 | t         | numeric</div>
          <p>Be careful with integer division. <code>7 / 2</code> is <code>3</code> because both sides are integers. Write <code>7 / 2.0</code> or <code>7::numeric / 2</code> to get a decimal answer. But numeric division keeps many digits, so round it before you show it:</p>
        <div class="lc-code">SELECT 7 / 2 AS int_division, 7 / 2.0 AS numeric_division, round(7 / 2.0, 1) AS rounded;<br><br>&nbsp;int_division |&nbsp;&nbsp;numeric_division&nbsp;&nbsp;| rounded<br>--------------+--------------------+---------<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3 | 3.5000000000000000 |     3.5</div>
        </div>

        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Storing prices in <code>real</code> or <code>double precision</code>. Totals become wrong by tiny amounts, and checks for equal values fail.</li>
            <li>Using <code>timestamp</code> (no zone) for events from users in different time zones.</li>
            <li>Storing dates or numbers as <code>text</code>. You lose correct sorting, maths and checks. For example, <code>'10' &lt; '9'</code> is true for text.</li>
            <li>Expecting <code>5 / 2</code> to be 2.5.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>Insert a payment with <code>paid_at = '2026-03-04 02:30:00+00'</code>. What date does it show in New York? Why?</li>
            <li>Try <code>SELECT 1.005::float8 * 1000, 1.005::numeric * 1000;</code> and compare.</li>
            <li>Try inserting <code>amount = 123456789.00</code> into <code>numeric(10,2)</code>. Read the error.</li>
          </ol>
        </div>

        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> <code>pg_typeof(expr)</code> tells you the type of any expression. Use it when a result looks strange.
        </div>
      HTML
      starter_code: <<~'SQL'
        -- Lesson 2: Data types and casting
        CREATE TABLE payments (
          id        bigint GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
          payer     text          NOT NULL,
          amount    numeric(10,2) NOT NULL,   -- exact: use for money
          is_refund boolean       NOT NULL DEFAULT false,
          paid_at   timestamptz   NOT NULL    -- an exact moment in time
        );

        INSERT INTO payments (payer, amount, is_refund, paid_at) VALUES
          ('Asha',  199.99, false, '2026-03-01 10:30:00-05'),
          ('Vikram', 0.10,  false, '2026-03-01 09:00:00+00'),
          ('Asha',   0.20,  true,  '2026-03-02 18:45:00-05');

        -- 1. Float vs numeric: never use float for money
        SELECT (0.1::float8 + 0.2::float8)::text     AS float_sum,
               0.1::float8 + 0.2::float8 = 0.3        AS float_equals_03,
               0.1::numeric + 0.2::numeric            AS numeric_sum,
               0.1::numeric + 0.2::numeric = 0.3      AS numeric_equals_03;

        -- 2. Integer division surprise
        --    7 / 2.0 prints 3.5000000000000000; round() tidies it to 3.5
        SELECT 7 / 2 AS int_division, 7 / 2.0 AS numeric_division,
               round(7 / 2.0, 1) AS rounded_division, 7 % 2 AS remainder;

        -- 3. Casting with :: and CAST()
        SELECT '42'::integer + 1          AS cast_int,
               CAST('2026-09-25' AS date) + 7 AS week_later,
               3.14159::numeric(5,2)      AS rounded,
               'yes'::boolean             AS cast_bool,
               pg_typeof(3.14)            AS type_of_literal;

        -- 4. timestamptz is stored in UTC and shown in YOUR time zone
        SET TIME ZONE 'America/New_York';
        SELECT payer, amount, paid_at AS paid_at_new_york FROM payments ORDER BY paid_at;
        SET TIME ZONE 'UTC';
        SELECT payer, paid_at AS paid_at_utc FROM payments ORDER BY paid_at;

        -- 5. Exact money totals
        SELECT sum(amount) FILTER (WHERE NOT is_refund) AS received,
               sum(amount) FILTER (WHERE is_refund)     AS refunded
        FROM payments;
      SQL
    },

    3 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-postgresql">PostgreSQL</div>
          <h1 class="lc-title">Tables, Identity Columns and Constraints</h1>
        </div>
        <p class="lc-lead">A good table does more than store data. It also refuses bad data. In this lesson you create tables with auto-generated IDs. You also add constraints (rules the data must follow): PRIMARY KEY, NOT NULL, UNIQUE, CHECK, FOREIGN KEY. Then the database itself protects your data.</p>

        <div class="lc-card">
          <h3>Identity Columns: The Modern Way to Auto-Number</h3>
        <div class="lc-code">CREATE TABLE customers (<br>&nbsp;&nbsp;id    integer GENERATED ALWAYS AS IDENTITY PRIMARY KEY,<br>&nbsp;&nbsp;email text NOT NULL UNIQUE,<br>&nbsp;&nbsp;name  text NOT NULL<br>);<br>INSERT INTO customers (email, name) VALUES ('priya@example.com', 'Priya');  -- id = 1</div>
          <table class="lc-table">
            <thead><tr><th>Option</th><th>Behaviour</th></tr></thead>
            <tbody>
              <tr><td><code>GENERATED ALWAYS AS IDENTITY</code></td><td>PostgreSQL always makes the ID. If you give one yourself, you get an error, unless you write <code>OVERRIDING SYSTEM VALUE</code>. Recommended.</td></tr>
              <tr><td><code>GENERATED BY DEFAULT AS IDENTITY</code></td><td>Makes an ID only when you don't give one. Useful when you import old data.</td></tr>
              <tr><td><code>serial</code> / <code>bigserial</code></td><td>The old way: an <code>integer</code> column that gets its default from a sequence (a number counter). It still works. But identity is the SQL standard and is easier to manage (permissions, copying tables). Don't use it in new tables.</td></tr>
            </tbody>
          </table>
          <p>Use <code>bigint</code> instead of <code>integer</code> for tables that may grow past 2 billion rows (logs, events).</p>
        </div>

        <div class="lc-card">
          <h3>The Constraints</h3>
          <table class="lc-table">
            <thead><tr><th>Constraint</th><th>Rule</th><th>Example</th></tr></thead>
            <tbody>
              <tr><td><code>PRIMARY KEY</code></td><td>Unique and not null. One per table</td><td><code>id ... PRIMARY KEY</code></td></tr>
              <tr><td><code>NOT NULL</code></td><td>Value is required</td><td><code>name text NOT NULL</code></td></tr>
              <tr><td><code>UNIQUE</code></td><td>No two rows have the same value (NULLs are allowed, and there can be many NULLs)</td><td><code>email text UNIQUE</code></td></tr>
              <tr><td><code>CHECK</code></td><td>Any true/false rule on the row</td><td><code>CHECK (quantity &gt; 0)</code></td></tr>
              <tr><td><code>FOREIGN KEY</code></td><td>Value must exist in another table</td><td><code>REFERENCES customers (id)</code></td></tr>
              <tr><td><code>DEFAULT</code></td><td>Value used when you give none (not really a constraint, but similar)</td><td><code>status text DEFAULT 'new'</code></td></tr>
              <tr><td><code>EXCLUDE</code></td><td>No two rows may "clash", tested with an operator</td><td>No overlapping room bookings (below)</td></tr>
            </tbody>
          </table>
          <p>A composite key uses several columns together. <code>PRIMARY KEY (student_id, course_code)</code> means each student can join each course only once.</p>
        </div>

        <div class="lc-card">
          <h3>Foreign Key Actions</h3>
          <p>What should happen to orders when you delete their customer? You decide with <code>ON DELETE</code>:</p>
          <table class="lc-table">
            <thead><tr><th>Action</th><th>Effect when the parent row is deleted</th></tr></thead>
            <tbody>
              <tr><td><code>NO ACTION</code> (default) / <code>RESTRICT</code></td><td>Refuse the delete while child rows (rows that point to it) exist</td></tr>
              <tr><td><code>CASCADE</code></td><td>Delete the child rows too</td></tr>
              <tr><td><code>SET NULL</code></td><td>Set the child's foreign key to NULL</td></tr>
              <tr><td><code>SET DEFAULT</code></td><td>Set it to the column default</td></tr>
            </tbody>
          </table>
          <p><code>ON UPDATE</code> accepts the same actions. PostgreSQL does <strong>not</strong> create an index on the foreign key column for you. Add one yourself (<code>CREATE INDEX ON orders (customer_id)</code>). Then joins and cascading deletes are fast.</p>
        </div>

        <div class="lc-card">
          <h3>Worked Example: Watching Constraints Say No</h3>
          <p>The starter uses a small helper called <code>try_sql()</code>. It runs a statement and returns the error text instead of stopping. (You will learn how to write it in Lesson 19.)</p>
        <div class="lc-code">SELECT 'quantity = 0' AS test,<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;try_sql('INSERT INTO orders (customer_id, quantity) VALUES (1, 0)') AS result;</div>
          <p><strong>Output (all five tests):</strong></p>
        <div class="lc-code">&nbsp;duplicate email  | REJECTED: duplicate key value violates unique constraint "customers_email_key"<br>&nbsp;quantity = 0     | REJECTED: new row for relation "orders" violates check constraint "orders_quantity_check"<br>&nbsp;unknown customer | REJECTED: insert or update on table "orders" violates foreign key constraint "orders_customer_id_fkey"<br>&nbsp;bad status       | REJECTED: new row for relation "orders" violates check constraint "orders_status_check"<br>&nbsp;manual id        | REJECTED: cannot insert a non-DEFAULT value into column "id"</div>
          <p>Then you run <code>DELETE FROM customers WHERE email = 'priya@example.com'</code>. <code>ON DELETE CASCADE</code> also removes Priya's two orders. So only order 3 (Arjun's) is left.</p>
        </div>

        <div class="lc-card">
          <h3>EXCLUDE in One Minute</h3>
          <p>An exclusion constraint is a more general form of UNIQUE. This one stops two bookings from overlapping in time. For ranges, <code>&amp;&amp;</code> means "overlaps":</p>
        <div class="lc-code">CREATE TABLE bookings (<br>&nbsp;&nbsp;id     integer GENERATED ALWAYS AS IDENTITY PRIMARY KEY,<br>&nbsp;&nbsp;during tstzrange NOT NULL,<br>&nbsp;&nbsp;EXCLUDE USING gist (during WITH &amp;&amp;)<br>);</div>
          <p>To add "per room" (<code>room_id WITH =</code>), you need the <code>btree_gist</code> extension. PostgreSQL 18 also adds <code>WITHOUT OVERLAPS</code> for primary keys and unique constraints. It does the same job in standard SQL.</p>
        </div>

        <div class="lc-card">
          <h3>Changing a Table Later</h3>
        <div class="lc-code">ALTER TABLE customers ADD COLUMN phone text;<br>ALTER TABLE customers ALTER COLUMN name SET NOT NULL;<br>ALTER TABLE orders ADD CONSTRAINT qty_limit CHECK (quantity &lt;= 100);<br>ALTER TABLE customers DROP COLUMN phone;<br>DROP TABLE IF EXISTS old_orders;</div>
          <p>Give your constraints names (<code>CONSTRAINT qty_limit ...</code>). Then error messages are clear, and you can drop them later.</p>
        </div>

        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Checking rules only in application code. Another script or a bug will skip them. Constraints can't be skipped.</li>
            <li>Using <code>ON DELETE CASCADE</code> everywhere. One delete can remove much more data than you wanted. Use it only for child rows that truly belong to the parent (order → order items).</li>
            <li>Forgetting to index foreign key columns.</li>
            <li>Thinking <code>UNIQUE</code> blocks two NULLs. By default it doesn't. Add <code>NOT NULL</code>, or use <code>UNIQUE NULLS NOT DISTINCT</code> (PostgreSQL 15+).</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>Add a test for <code>status = 'paid'</code>. It should return <code>OK</code>.</li>
            <li>Change <code>ON DELETE CASCADE</code> to <code>ON DELETE RESTRICT</code> and run again. What happens to the final <code>DELETE</code>?</li>
            <li>Add a <code>CHECK</code> that email contains <code>'@'</code> and test it. Hint: <code>position('@' IN email) &gt; 0</code>.</li>
          </ol>
        </div>

        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> A simple design rule: every table gets a primary key. Every "must have" column gets <code>NOT NULL</code>. Every link to another table gets a foreign key plus an index.
        </div>
      HTML
      starter_code: <<~'SQL'
        -- Lesson 3: Tables, identity columns and constraints
        -- Helper: runs a statement and returns OK or the error text
        -- (PL/pgSQL is taught in Lesson 19 - just use it here)
        CREATE FUNCTION try_sql(stmt text) RETURNS text
        LANGUAGE plpgsql AS $$
        BEGIN
          EXECUTE stmt;
          RETURN 'OK';
        EXCEPTION WHEN others THEN
          RETURN 'REJECTED: ' || SQLERRM;
        END $$;

        CREATE TABLE customers (
          id    integer GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
          email text NOT NULL UNIQUE,
          name  text NOT NULL
        );

        CREATE TABLE orders (
          id          integer GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
          customer_id integer NOT NULL REFERENCES customers (id) ON DELETE CASCADE,
          quantity    integer NOT NULL CHECK (quantity > 0),
          status      text    NOT NULL DEFAULT 'new'
                      CHECK (status IN ('new', 'paid', 'shipped'))
        );

        INSERT INTO customers (email, name) VALUES
          ('priya@example.com', 'Priya'), ('arjun@example.com', 'Arjun');
        INSERT INTO orders (customer_id, quantity) VALUES (1, 2), (1, 1), (2, 5);

        SELECT * FROM orders;

        -- Each constraint protects the data
        SELECT 'duplicate email' AS test,
               try_sql($q$INSERT INTO customers (email, name) VALUES ('priya@example.com', 'P2')$q$) AS result
        UNION ALL
        SELECT 'quantity = 0',  try_sql('INSERT INTO orders (customer_id, quantity) VALUES (1, 0)')
        UNION ALL
        SELECT 'unknown customer', try_sql('INSERT INTO orders (customer_id, quantity) VALUES (99, 1)')
        UNION ALL
        SELECT 'bad status', try_sql($q$UPDATE orders SET status = 'lost' WHERE id = 1$q$)
        UNION ALL
        SELECT 'manual id', try_sql($q$INSERT INTO customers (id, email, name) VALUES (50, 'x@example.com', 'X')$q$);

        -- ON DELETE CASCADE: deleting Priya deletes her orders too
        DELETE FROM customers WHERE email = 'priya@example.com';
        SELECT id, customer_id, quantity FROM orders;
      SQL
    },

    4 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-postgresql">PostgreSQL</div>
          <h1 class="lc-title">Filtering, Sorting and Text</h1>
        </div>
        <p class="lc-lead">Most queries pick some rows (<code>WHERE</code>) and put them in order (<code>ORDER BY</code>). They often clean up text too. This lesson covers comparison operators and <code>NULL</code> handling. It also covers pattern matching with <code>LIKE</code>/<code>ILIKE</code>/regex, and common string functions.</p>

        <div class="lc-card">
          <h3>Filtering Rows</h3>
          <table class="lc-table">
            <thead><tr><th>Operator</th><th>Example</th></tr></thead>
            <tbody>
              <tr><td><code>= &lt;&gt; &lt; &lt;= &gt; &gt;=</code></td><td><code>marks &gt;= 80</code></td></tr>
              <tr><td><code>AND</code>, <code>OR</code>, <code>NOT</code></td><td><code>city = 'London' AND marks &gt; 80</code></td></tr>
              <tr><td><code>IN (...)</code></td><td><code>city IN ('London', 'Chicago')</code></td></tr>
              <tr><td><code>BETWEEN a AND b</code></td><td><code>marks BETWEEN 60 AND 80</code> (both ends included)</td></tr>
              <tr><td><code>IS NULL</code> / <code>IS NOT NULL</code></td><td><code>email IS NULL</code></td></tr>
              <tr><td><code>IS DISTINCT FROM</code></td><td>Like <code>&lt;&gt;</code>, but treats NULL as a normal value</td></tr>
            </tbody>
          </table>
          <p><code>AND</code> runs before <code>OR</code>. Use brackets when you mix them: <code>WHERE (city = 'London' OR city = 'Chicago') AND marks &gt; 80</code>.</p>
        </div>

        <div class="lc-card">
          <h3>NULL Means "Unknown"</h3>
          <p>Any comparison with NULL gives NULL (unknown). <code>WHERE</code> keeps only rows where the condition is <strong>true</strong>. So <code>email = NULL</code> never matches anything. It does not even match rows where email is NULL.</p>
        <div class="lc-code">SELECT (SELECT count(*) FROM contacts WHERE email = NULL)  AS eq_null,<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(SELECT count(*) FROM contacts WHERE email IS NULL) AS is_null;</div>
          <p><strong>Output:</strong></p>
        <div class="lc-code">&nbsp;eq_null | is_null<br>---------+--------<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;0 |       1</div>
          <p><code>coalesce(a, b, ...)</code> returns the first non-NULL value: <code>coalesce(email, 'no email')</code>.</p>
        </div>

        <div class="lc-card">
          <h3>Pattern Matching</h3>
          <table class="lc-table">
            <thead><tr><th>Operator</th><th>Meaning</th><th>Example</th></tr></thead>
            <tbody>
              <tr><td><code>LIKE</code></td><td>Case-sensitive. <code>%</code> = any text, <code>_</code> = one character</td><td><code>name LIKE 'A%'</code></td></tr>
              <tr><td><code>ILIKE</code></td><td>Same, but ignores case (PostgreSQL extra)</td><td><code>email ILIKE '%@gmail.com'</code></td></tr>
              <tr><td><code>~</code> / <code>~*</code></td><td>Regular expression, a text pattern (case-sensitive / not)</td><td><code>phone ~ '^9[0-9]{4}-'</code></td></tr>
            </tbody>
          </table>
        </div>

        <div class="lc-card">
          <h3>Common String Functions</h3>
          <table class="lc-table">
            <thead><tr><th>Expression</th><th>Result</th></tr></thead>
            <tbody>
              <tr><td><code>'Hello' || ' ' || 'World'</code></td><td>Hello World</td></tr>
              <tr><td><code>'Hi ' || NULL</code></td><td>NULL (any NULL part makes the whole result NULL)</td></tr>
              <tr><td><code>concat_ws(' - ', 'Amit', NULL)</code></td><td>Amit (NULLs skipped)</td></tr>
              <tr><td><code>upper('london')</code>, <code>lower('LONDON')</code>, <code>initcap('rahul VERMA')</code></td><td>LONDON, london, Rahul Verma</td></tr>
              <tr><td><code>trim('  neha ')</code>, <code>length('neha')</code></td><td>neha, 4</td></tr>
              <tr><td><code>substring('PostgreSQL' FROM 1 FOR 4)</code>, <code>left('PostgreSQL', 4)</code></td><td>Post, Post</td></tr>
              <tr><td><code>split_part('neha@gmail.com', '@', 2)</code></td><td>gmail.com</td></tr>
              <tr><td><code>replace('98200-11111', '-', '')</code></td><td>9820011111</td></tr>
              <tr><td><code>format('%s scored %s', 'Diya', 93)</code></td><td>Diya scored 93</td></tr>
            </tbody>
          </table>
        </div>

        <div class="lc-card">
          <h3>Worked Example: Clean, Then Query</h3>
          <p>The starter first <em>previews</em> a clean-up with <code>SELECT</code>. Then it saves it with <code>UPDATE contacts SET name = initcap(trim(name)), email = lower(email);</code>. After that, query 4 shows how <code>||</code> behaves with NULL:</p>
        <div class="lc-code">SELECT name || ' - ' || city        AS with_pipes,<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;concat_ws(' - ', name, city) AS with_concat_ws<br>FROM contacts ORDER BY id;</div>
          <p><strong>Output:</strong></p>
        <div class="lc-code">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;with_pipes          |       with_concat_ws<br>-----------------------------+-----------------------------<br>&nbsp;Neha Sharma - New York      | Neha Sharma - New York<br>&nbsp;Rahul Verma - San Francisco | Rahul Verma - San Francisco<br>&nbsp;Sneha Iyer - Los Angeles    | Sneha Iyer - Los Angeles<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;| Amit Patel<br>&nbsp;Kavya Nair - Boston         | Kavya Nair - Boston</div>
          <p>Amit's city is NULL. So <code>||</code> returns NULL (shown as an empty cell), but <code>concat_ws</code> skips it.</p>
        </div>

        <div class="lc-card">
          <h3>CASE: If-Then Logic Inside a Query</h3>
          <p><code>CASE</code> picks a value for each row. The first <code>WHEN</code> that is true wins. <code>ELSE</code> is used when none is true. Without <code>ELSE</code> you get NULL:</p>
        <div class="lc-code">SELECT name, marks,<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;CASE<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;WHEN marks IS NULL THEN 'Absent'<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;WHEN marks &gt;= 75&nbsp;&nbsp;THEN 'Distinction'<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;WHEN marks &gt;= 40&nbsp;&nbsp;THEN 'Pass'<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ELSE 'Fail'<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;END AS result<br>FROM results ORDER BY name;</div>
          <p><strong>Output:</strong></p>
        <div class="lc-code">&nbsp;name | marks |&nbsp;&nbsp;&nbsp;result<br>------+-------+-------------<br>&nbsp;Asha |&nbsp;&nbsp;&nbsp;&nbsp;91 | Distinction<br>&nbsp;Ravi |&nbsp;&nbsp;&nbsp;&nbsp;67 | Pass<br>&nbsp;Tara |&nbsp;&nbsp;&nbsp;&nbsp;38 | Fail<br>&nbsp;Zoya |&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;| Absent</div>
          <p>Put the <code>WHEN</code>s in order from most specific to least. If <code>&gt;= 40</code> came first, Asha would get "Pass". Two NULL helpers are useful here. <code>COALESCE(a, b)</code> returns the first non-NULL value. <code>NULLIF(a, b)</code> returns NULL when <code>a = b</code>. So <code>total / NULLIF(count, 0)</code> gives NULL instead of a division-by-zero error. You can use <code>CASE</code> in <code>SELECT</code>, <code>WHERE</code>, <code>ORDER BY</code> and <code>UPDATE ... SET</code>.</p>
        </div>

        <div class="lc-card">
          <h3>Sorting and Paging</h3>
          <ul class="lc-list">
            <li><code>ORDER BY city, name</code> sorts by city, then by name inside each city.</li>
            <li>In ascending order, NULLs come <strong>last</strong>. In <code>DESC</code> order, they come first. Control this with <code>NULLS FIRST</code> / <code>NULLS LAST</code>.</li>
            <li><code>LIMIT 10 OFFSET 20</code> gives page 3, with 10 rows per page. Always use it with <code>ORDER BY</code>. If not, pages may repeat or skip rows.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Writing <code>= NULL</code> instead of <code>IS NULL</code>.</li>
            <li>Using <code>LIKE</code> for case-insensitive search. <code>'Neha@Gmail.com' LIKE '%gmail%'</code> is false. Use <code>ILIKE</code> or <code>lower()</code>.</li>
            <li>Mixing <code>AND</code> and <code>OR</code> without brackets.</li>
            <li>Using <code>||</code> on columns that may be NULL, and then getting empty results.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>List contacts with no phone number. Use <code>coalesce</code> to print "call later".</li>
            <li>Show each phone number without the dash. Use <code>replace()</code>.</li>
            <li>Use <code>format()</code> to print sentences like <code>Kavya Nair lives in Boston</code>.</li>
          </ol>
        </div>

        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Before an <code>UPDATE</code>, run the same expressions in a <code>SELECT</code> first and check the result. Then turn it into an <code>UPDATE</code> with the same <code>WHERE</code>.
        </div>
      HTML
      starter_code: <<~'SQL'
        -- Lesson 4: Filtering, sorting and text
        CREATE TABLE contacts (
          id    integer GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
          name  text NOT NULL,
          email text,
          city  text,
          phone text
        );

        INSERT INTO contacts (name, email, city, phone) VALUES
          ('  neha sharma ', 'Neha@Gmail.com',   'New York',      '98200-11111'),
          ('rahul VERMA',    'rahul@yahoo.in',   'San Francisco', NULL),
          ('Sneha Iyer',     NULL,               'Los Angeles',   '94440-22222'),
          ('Amit Patel',     'AMIT@gmail.com',   NULL,            '99090-33333'),
          ('Kavya Nair',     'kavya@outlook.com','Boston',        '80000-44444');

        -- 1. Preview the clean-up, then save it with UPDATE
        SELECT name AS raw_name, initcap(trim(name)) AS clean_name,
               length(name) AS raw_len, length(trim(name)) AS clean_len
        FROM contacts ORDER BY id;

        UPDATE contacts SET name = initcap(trim(name)), email = lower(email);

        -- 2. Split and search text
        SELECT name, split_part(email, '@', 2) AS domain, left(name, 1) AS initial
        FROM contacts ORDER BY id;

        SELECT name FROM contacts WHERE email ILIKE '%@GMAIL.com' ORDER BY name;

        -- 3. NULL needs IS NULL (= NULL never matches anything)
        SELECT (SELECT count(*) FROM contacts WHERE email = NULL)  AS eq_null,
               (SELECT count(*) FROM contacts WHERE email IS NULL) AS is_null;

        -- 4. || gives NULL if any part is NULL; concat_ws skips NULLs
        SELECT name || ' - ' || city        AS with_pipes,
               concat_ws(' - ', name, city) AS with_concat_ws,
               coalesce(email, 'no email')  AS email
        FROM contacts ORDER BY id;

        -- 5. IN, NULLS LAST and paging with LIMIT/OFFSET
        SELECT name, city
        FROM contacts
        WHERE city IN ('New York', 'Los Angeles', 'Boston') OR city IS NULL
        ORDER BY city NULLS LAST
        LIMIT 2 OFFSET 1;          -- skip the first row, then take 2

        -- 6. Regular expression: numbers that start with 9
        SELECT name, phone FROM contacts WHERE phone ~ '^9[0-9]{4}-' ORDER BY name;
      SQL
    },

    5 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-postgresql">PostgreSQL</div>
          <h1 class="lc-title">Dates, Times and Time Zones</h1>
        </div>
        <p class="lc-lead">PostgreSQL has very good support for dates and times. You will store moments with <code>timestamptz</code> and convert between time zones. You will do date maths with <code>interval</code> (a length of time). You will also group data by day, week or month with <code>date_trunc</code>.</p>

        <div class="lc-card">
          <h3>The Session Time Zone</h3>
          <p><code>timestamptz</code> values are stored in UTC. When you read them, PostgreSQL shows them in the session's <code>TimeZone</code> setting:</p>
        <div class="lc-code">SET TIME ZONE 'America/New_York';<br>SHOW TimeZone;                          -- America/New_York<br>SELECT '2026-09-30 13:30:00+00'::timestamptz;  -- 2026-09-30 09:30:00-04</div>
          <p>Use full zone names like <code>'America/New_York'</code> or <code>'Europe/London'</code>. They handle daylight saving time. New York is <code>-04</code> in summer (EDT) and <code>-05</code> in winter (EST). A fixed offset like <code>-04</code> never changes, so it is wrong for half the year.</p>
        </div>

        <div class="lc-card">
          <h3>Current Date and Time</h3>
          <table class="lc-table">
            <thead><tr><th>Function</th><th>Returns</th></tr></thead>
            <tbody>
              <tr><td><code>now()</code> / <code>current_timestamp</code></td><td><code>timestamptz</code> at the <strong>start of the transaction</strong> (the same value for every row)</td></tr>
              <tr><td><code>clock_timestamp()</code></td><td>The real time right now. It changes while a statement runs</td></tr>
              <tr><td><code>current_date</code></td><td>Today's <code>date</code> in the session time zone</td></tr>
              <tr><td><code>localtimestamp</code></td><td>Current <code>timestamp</code> without a time zone</td></tr>
            </tbody>
          </table>
        </div>

        <div class="lc-card">
          <h3>AT TIME ZONE</h3>
          <p><code>ts AT TIME ZONE 'zone'</code> changes a <code>timestamptz</code> into the local clock time in that zone. The result is a plain <code>timestamp</code>:</p>
        <div class="lc-code">SELECT title,<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;starts_at                              AS new_york_time,<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;starts_at AT TIME ZONE 'UTC'           AS utc_clock,<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;starts_at AT TIME ZONE 'Europe/London' AS london_clock<br>FROM classes ORDER BY starts_at;</div>
          <p><strong>Output:</strong></p>
        <div class="lc-code">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;title      |     new_york_time      |      utc_clock      |    london_clock<br>----------------+------------------------+---------------------+---------------------<br>&nbsp;SQL Basics     | 2026-09-28 18:00:00-04 | 2026-09-28 22:00:00 | 2026-09-28 23:00:00<br>&nbsp;Joins Workshop | 2026-09-30 09:30:00-04 | 2026-09-30 13:30:00 | 2026-09-30 14:30:00<br>&nbsp;Window Fns     | 2026-10-05 19:00:00-04 | 2026-10-05 23:00:00 | 2026-10-06 00:00:00<br>&nbsp;JSONB Clinic   | 2026-10-06 07:00:00-04 | 2026-10-06 11:00:00 | 2026-10-06 12:00:00</div>
          <p>The first line of the starter is <code>SET TIME ZONE 'America/New_York'</code>. It makes this output the same on every computer. The JSONB Clinic was entered as <code>12:00+01</code> (London summer time). PostgreSQL stored the moment correctly, so New York sees 07:00.</p>
        </div>

        <div class="lc-card">
          <h3>Date Maths</h3>
          <table class="lc-table">
            <thead><tr><th>Expression</th><th>Result</th></tr></thead>
            <tbody>
              <tr><td><code>date '2026-10-06' - date '2026-09-28'</code></td><td><code>8</code> (an integer number of days)</td></tr>
              <tr><td><code>date '2026-01-31' + interval '1 month'</code></td><td>2026-02-28 00:00:00 (moved back to the last day of the month)</td></tr>
              <tr><td><code>starts_at + interval '90 minutes'</code></td><td>A new <code>timestamptz</code></td></tr>
              <tr><td><code>age(date '2026-09-25', date '2004-05-10')</code></td><td>22 years 4 mons 15 days</td></tr>
              <tr><td><code>extract(year FROM d)</code>, <code>extract(isodow FROM d)</code></td><td>Parts of a date. <code>isodow</code>: Monday = 1 … Sunday = 7 (<code>dow</code>: Sunday = 0)</td></tr>
              <tr><td><code>date_trunc('month', ts)</code></td><td>The first moment of that month</td></tr>
              <tr><td><code>to_char(ts, 'DD Mon YYYY, HH12:MI AM')</code></td><td>Formatted text, e.g. 28 Sep 2026, 06:00 PM</td></tr>
            </tbody>
          </table>
        </div>

        <div class="lc-card">
          <h3>Worked Example: A Calendar With No Gaps</h3>
          <p>A plain <code>GROUP BY</code> skips days with no classes. <code>generate_series</code> makes one row per day. A <code>LEFT JOIN</code> then keeps the empty days:</p>
        <div class="lc-code">SELECT d::date AS day, count(c.id) AS classes<br>FROM generate_series(date '2026-09-28', date '2026-10-02', interval '1 day') AS d<br>LEFT JOIN classes c ON c.starts_at::date = d::date<br>GROUP BY d ORDER BY d;</div>
          <p><strong>Output:</strong></p>
        <div class="lc-code">&nbsp;&nbsp;&nbsp;&nbsp;day     | classes<br>------------+--------<br>&nbsp;2026-09-28 |       1<br>&nbsp;2026-09-29 |       0<br>&nbsp;2026-09-30 |       1<br>&nbsp;2026-10-01 |       0<br>&nbsp;2026-10-02 |       0</div>
        </div>

        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Storing times as <code>timestamp</code> or text and losing the time zone.</li>
            <li>Using <code>BETWEEN '2026-09-01' AND '2026-09-30'</code> on a timestamp column. It stops at 30 Sep 00:00. Use <code>ts &gt;= '2026-09-01' AND ts &lt; '2026-10-01'</code>.</li>
            <li>Forgetting that <code>starts_at::date</code> uses the <strong>session</strong> time zone. The same moment can be a different date in UTC.</li>
            <li>Mixing up <code>dow</code> (Sunday = 0) and <code>isodow</code> (Sunday = 7).</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>Add a column showing each class time in <code>'Asia/Tokyo'</code>.</li>
            <li>Change <code>SET TIME ZONE</code> to <code>'UTC'</code> and run again. Which outputs change? Which stay the same?</li>
            <li>Group classes by month using <code>date_trunc('month', starts_at)</code>.</li>
          </ol>
        </div>

        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Store times in <code>timestamptz</code> and do the maths in SQL. Convert to the user's local time only when you show it.
        </div>
      HTML
      starter_code: <<~'SQL'
        -- Lesson 5: Dates, times and time zones
        SET TIME ZONE 'America/New_York';   -- this session shows New York time (EDT, -04, on these dates)

        CREATE TABLE classes (
          id        integer GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
          title     text        NOT NULL,
          starts_at timestamptz NOT NULL,
          duration  interval    NOT NULL
        );

        INSERT INTO classes (title, starts_at, duration) VALUES
          ('SQL Basics',     '2026-09-28 18:00:00-04', '90 minutes'),
          ('Joins Workshop', '2026-09-30 13:30:00+00', '2 hours'),
          ('Window Fns',     '2026-10-05 19:00:00-04', '1 hour 15 minutes'),
          ('JSONB Clinic',   '2026-10-06 12:00:00+01', '45 minutes');

        -- 1. Same moment, shown in different zones
        SELECT title,
               starts_at                              AS new_york_time,
               starts_at AT TIME ZONE 'UTC'           AS utc_clock,
               starts_at AT TIME ZONE 'Europe/London' AS london_clock
        FROM classes ORDER BY starts_at;

        -- 2. Interval arithmetic and formatting
        SELECT title,
               to_char(starts_at + duration, 'HH24:MI')       AS ends_at,
               to_char(starts_at, 'Dy DD Mon YYYY, HH12:MI AM') AS pretty,
               extract(isodow FROM starts_at)                 AS iso_weekday
        FROM classes ORDER BY starts_at;

        -- 3. Date maths
        SELECT date '2026-10-06' - date '2026-09-28'           AS days_between,
               date '2026-01-31' + interval '1 month'          AS one_month_later,
               age(date '2026-09-25', date '2004-05-10')        AS age_of_student;

        -- 4. Group by week with date_trunc
        SELECT date_trunc('week', starts_at)::date AS week_starting,
               count(*)                            AS classes
        FROM classes
        GROUP BY 1 ORDER BY 1;

        -- 5. A calendar with no gaps using generate_series
        SELECT d::date AS day, count(c.id) AS classes
        FROM generate_series(date '2026-09-28', date '2026-10-02', interval '1 day') AS d
        LEFT JOIN classes c ON c.starts_at::date = d::date
        GROUP BY d ORDER BY d;
      SQL
    },

    6 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-postgresql">PostgreSQL</div>
          <h1 class="lc-title">Aggregates and GROUP BY</h1>
        </div>
        <p class="lc-lead">Aggregate functions turn many rows into one value, such as a count, a total or an average. With <code>GROUP BY</code> you get one result row per group. <code>HAVING</code> filters those groups. PostgreSQL extras like <code>FILTER</code>, <code>string_agg</code> and <code>ROLLUP</code> make reports much shorter.</p>

        <div class="lc-card">
          <h3>The Main Aggregates</h3>
          <table class="lc-table">
            <thead><tr><th>Function</th><th>Returns</th><th>NULLs</th></tr></thead>
            <tbody>
              <tr><td><code>count(*)</code></td><td>Number of rows</td><td>Counted</td></tr>
              <tr><td><code>count(col)</code></td><td>Number of non-NULL values</td><td>Skipped</td></tr>
              <tr><td><code>count(DISTINCT col)</code></td><td>Number of different values</td><td>Skipped</td></tr>
              <tr><td><code>sum</code>, <code>avg</code>, <code>min</code>, <code>max</code></td><td>Total, average, smallest, largest</td><td>Skipped</td></tr>
              <tr><td><code>string_agg(col, ', ' ORDER BY col)</code></td><td>Values joined into one text</td><td>Skipped</td></tr>
              <tr><td><code>array_agg(col ORDER BY col)</code></td><td>Values collected into an array</td><td>Kept</td></tr>
              <tr><td><code>percentile_cont(0.5) WITHIN GROUP (ORDER BY col)</code></td><td>Median</td><td>Skipped</td></tr>
            </tbody>
          </table>
          <p>When there are no rows, <code>count</code> returns 0, but <code>sum</code> and <code>avg</code> return NULL. Use <code>coalesce(sum(x), 0)</code> when you need 0.</p>
        </div>

        <div class="lc-card">
          <h3>GROUP BY: One Row Per Group</h3>
          <p>Every column in <code>SELECT</code> must be in <code>GROUP BY</code> or inside an aggregate. If not, PostgreSQL can't know which value to show. It gives the error <em>column must appear in the GROUP BY clause or be used in an aggregate function</em>.</p>
        <div class="lc-code">SELECT region,<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;count(*)              AS orders,<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;count(coupon)         AS with_coupon,<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;sum(amount)           AS revenue,<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;round(avg(amount), 2) AS avg_order<br>FROM sales<br>GROUP BY region<br>ORDER BY revenue DESC;</div>
          <p><strong>Output:</strong></p>
        <div class="lc-code">&nbsp;region | orders | with_coupon |  revenue  | avg_order<br>--------+--------+-------------+-----------+----------<br>&nbsp;North  |      3 |           1 | 107800.00 |  35933.33<br>&nbsp;South  |      3 |           2 |  79750.00 |  26583.33<br>&nbsp;West   |      1 |           0 |  21000.00 |  21000.00</div>
        </div>

        <div class="lc-card">
          <h3>WHERE vs HAVING</h3>
          <table class="lc-table">
            <thead><tr><th></th><th>WHERE</th><th>HAVING</th></tr></thead>
            <tbody>
              <tr><td>Filters</td><td>Individual rows</td><td>Whole groups</td></tr>
              <tr><td>Runs</td><td>Before grouping</td><td>After grouping</td></tr>
              <tr><td>Can use aggregates?</td><td>No</td><td>Yes: <code>HAVING sum(amount) &gt; 50000</code></td></tr>
            </tbody>
          </table>
          <p>The order in which the parts of a query run: <code>FROM</code> → <code>WHERE</code> → <code>GROUP BY</code> → <code>HAVING</code> → <code>SELECT</code> → <code>ORDER BY</code> → <code>LIMIT</code>.</p>
        </div>

        <div class="lc-card">
          <h3>FILTER: Several Counts at Once</h3>
          <p>The <code>FILTER (WHERE ...)</code> clause adds a condition to one aggregate only:</p>
        <div class="lc-code">SELECT region,<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;count(*) FILTER (WHERE product = 'Laptop')  AS laptops,<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;string_agg(DISTINCT rep, ', ' ORDER BY rep) AS reps<br>FROM sales<br>GROUP BY region ORDER BY region;</div>
          <p><strong>Output:</strong></p>
        <div class="lc-code">&nbsp;region | laptops |     reps<br>--------+---------+--------------<br>&nbsp;North  |       2 | Anil, Bina<br>&nbsp;South  |       1 | Chetan, Divya<br>&nbsp;West   |       0 | Esha</div>
        </div>

        <div class="lc-card">
          <h3>Subtotals with ROLLUP</h3>
          <p><code>GROUP BY ROLLUP (region)</code> adds a grand-total row where <code>region</code> is NULL. <code>GROUPING(region)</code> is 1 on that total row. So you can use it to sort that row last:</p>
        <div class="lc-code">SELECT coalesce(region, 'ALL REGIONS') AS region, sum(amount) AS revenue<br>FROM sales<br>GROUP BY ROLLUP (region)<br>ORDER BY GROUPING(region), region;</div>
          <p>The last row is <code>ALL REGIONS | 208550.00</code>. <code>GROUPING SETS</code> and <code>CUBE</code> give other combinations of subtotals.</p>
        </div>

        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Putting an aggregate in <code>WHERE</code> (<code>WHERE sum(amount) &gt; 100</code>). Use <code>HAVING</code> instead.</li>
            <li>Selecting a column that is not grouped or aggregated.</li>
            <li>Using <code>count(col)</code> when you meant <code>count(*)</code>. They give different results when <code>col</code> has NULLs.</li>
            <li>Forgetting that <code>avg</code> ignores NULLs. It finds the average of the known values only.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>Show revenue per product, only for products that sold more than once.</li>
            <li>Add a column <code>coupon_revenue</code> using <code>sum(amount) FILTER (WHERE coupon IS NOT NULL)</code>.</li>
            <li>Try <code>GROUP BY ROLLUP (region, rep)</code>. Explain each NULL in the result.</li>
          </ol>
        </div>

        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> <code>string_agg</code> is PostgreSQL's version of MySQL's <code>GROUP_CONCAT</code>. Put <code>ORDER BY</code> inside it. If not, the order of the joined values can change.
        </div>
      HTML
      starter_code: <<~'SQL'
        -- Lesson 6: Aggregates and GROUP BY
        CREATE TABLE sales (
          id      integer GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
          region  text          NOT NULL,
          rep     text          NOT NULL,
          product text          NOT NULL,
          amount  numeric(10,2) NOT NULL,
          coupon  text
        );

        INSERT INTO sales (region, rep, product, amount, coupon) VALUES
          ('North', 'Anil',  'Laptop', 55000, 'DIWALI'),
          ('North', 'Anil',  'Mouse',    800, NULL),    ('North', 'Bina', 'Laptop', 52000, NULL),
          ('South', 'Chetan','Phone',  18000, 'DIWALI'),
          ('South', 'Chetan','Laptop', 61000, NULL),
          ('South', 'Divya', 'Mouse',    750, 'NEWUSER'),
          ('West',  'Esha',  'Phone',  21000, NULL);

        -- 1. One row per region
        SELECT region,
               count(*)              AS orders,
               count(coupon)         AS with_coupon,   -- NULLs not counted
               sum(amount)           AS revenue,
               round(avg(amount), 2) AS avg_order
        FROM sales
        GROUP BY region
        ORDER BY revenue DESC;

        -- 2. HAVING filters groups (WHERE filters rows)
        SELECT rep, sum(amount) AS revenue
        FROM sales
        WHERE product <> 'Mouse'
        GROUP BY rep
        HAVING sum(amount) > 50000
        ORDER BY revenue DESC;

        -- 3. FILTER, string_agg and array_agg
        SELECT region,
               count(*) FILTER (WHERE product = 'Laptop')  AS laptops,
               string_agg(DISTINCT rep, ', ' ORDER BY rep) AS reps,
               array_agg(product ORDER BY amount DESC)     AS products_by_value
        FROM sales
        GROUP BY region
        ORDER BY region;

        -- 4. Subtotals with ROLLUP (the NULL region row is the grand total)
        SELECT coalesce(region, 'ALL REGIONS') AS region, sum(amount) AS revenue
        FROM sales
        GROUP BY ROLLUP (region)
        ORDER BY GROUPING(region), region;
      SQL
    },

    7 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-postgresql">PostgreSQL</div>
          <h1 class="lc-title">JOINs and DISTINCT ON</h1>
        </div>
        <p class="lc-lead">Good table design spreads data over several tables. JOINs bring it back together. You will use inner, left, full and self joins. You will find rows with no match. You will also pick "the top row per group" with PostgreSQL's <code>DISTINCT ON</code>.</p>

        <div class="lc-card">
          <h3>The Join Types</h3>
          <table class="lc-table">
            <thead><tr><th>Join</th><th>Keeps</th></tr></thead>
            <tbody>
              <tr><td><code>[INNER] JOIN</code></td><td>Only pairs that match on both sides</td></tr>
              <tr><td><code>LEFT [OUTER] JOIN</code></td><td>Every left row. Right columns are NULL when there is no match</td></tr>
              <tr><td><code>RIGHT [OUTER] JOIN</code></td><td>Every right row (you can usually rewrite it as a LEFT JOIN)</td></tr>
              <tr><td><code>FULL [OUTER] JOIN</code></td><td>Every row from both sides, matched where possible</td></tr>
              <tr><td><code>CROSS JOIN</code></td><td>Every combination (rows × rows)</td></tr>
            </tbody>
          </table>
          <p>Write the join condition with <code>ON a.col = b.col</code>. When both columns have the same name, you can use <code>USING (col)</code>.</p>
        </div>

        <div class="lc-card">
          <h3>Picture It</h3>
        <div class="lc-code">employees (dept_id)      departments (id)<br>&nbsp;&nbsp;Lakshmi  1  --------&gt;  1 Engineering<br>&nbsp;&nbsp;Harsh    2  --------&gt;  2 Sales<br>&nbsp;&nbsp;Joel     NULL           3 Legal   (nobody)<br><br>INNER JOIN : Lakshmi-Engineering, Harsh-Sales<br>LEFT JOIN  : + Joel with dept NULL<br>FULL JOIN  : + Joel with NULL  and  NULL with Legal</div>
        </div>

        <div class="lc-card">
          <h3>Worked Example: Find What Is Missing</h3>
          <p>Use a <code>LEFT JOIN</code> plus <code>WHERE right.id IS NULL</code>. It keeps only the left rows that had no match. This is called an "anti-join":</p>
        <div class="lc-code">SELECT d.name AS empty_department<br>FROM departments d<br>LEFT JOIN employees e ON e.dept_id = d.id<br>WHERE e.id IS NULL;</div>
          <p><strong>Output:</strong></p>
        <div class="lc-code">&nbsp;empty_department<br>------------------<br>&nbsp;Legal</div>
          <p>The <code>FULL JOIN</code> version in the starter finds unmatched rows on <em>both</em> sides: Joel (no department) and Legal (no employees).</p>
        </div>

        <div class="lc-card">
          <h3>Self Join</h3>
          <p>A table can join to itself. Give each copy its own alias (a short name):</p>
        <div class="lc-code">SELECT e.name AS employee, m.name AS manager<br>FROM employees e<br>LEFT JOIN employees m ON m.id = e.manager_id;</div>
          <p>It is a <code>LEFT JOIN</code>. So Lakshmi, who has no manager, still appears (with NULL).</p>
        </div>

        <div class="lc-card">
          <h3>DISTINCT ON: Top Row Per Group</h3>
          <p><code>DISTINCT ON (expr)</code> keeps the <strong>first</strong> row of each group. <code>ORDER BY</code> decides which row is "first". The <code>ORDER BY</code> must start with the same expression:</p>
        <div class="lc-code">SELECT DISTINCT ON (d.name) d.name AS dept, e.name, e.salary<br>FROM employees e<br>JOIN departments d ON d.id = e.dept_id<br>ORDER BY d.name, e.salary DESC;</div>
          <p><strong>Output:</strong></p>
        <div class="lc-code">&nbsp;&nbsp;&nbsp;&nbsp;dept     |  name   |  salary<br>-------------+---------+-----------<br>&nbsp;Engineering | Lakshmi | 250000.00<br>&nbsp;Sales       | Ishita  |  98000.00</div>
          <p>Two people may have the same salary. Then add another column to <code>ORDER BY</code> (for example <code>e.name</code>). This makes the result always the same.</p>
        </div>

        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Putting a filter on the right table in <code>WHERE</code> after a <code>LEFT JOIN</code> (<code>WHERE d.name = 'Sales'</code>). It removes the NULL rows, so it works like an inner join. To keep unmatched rows, put such conditions in <code>ON</code>.</li>
            <li>Forgetting the join condition. Then you get a huge cross product (every row paired with every row).</li>
            <li>Using <code>NATURAL JOIN</code>. It joins on every column with the same name. It breaks without any error when someone adds a column. Name the columns yourself.</li>
            <li>Using <code>DISTINCT ON</code> with an <code>ORDER BY</code> that doesn't start with the same expressions. That is an error.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>Count employees per department. Include Legal with 0. Hint: <code>LEFT JOIN</code> from departments, <code>count(e.id)</code>.</li>
            <li>Show the <em>lowest</em>-paid employee in each department with <code>DISTINCT ON</code>.</li>
            <li>List each employee with their manager's manager (join <code>employees</code> three times).</li>
          </ol>
        </div>

        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> In joins, always use table aliases (<code>e</code>, <code>d</code>). Put the alias before every column name. This stops "column reference is ambiguous" errors and makes queries easier to read.
        </div>
      HTML
      starter_code: <<~'SQL'
        -- Lesson 7: JOINs and DISTINCT ON
        CREATE TABLE departments (
          id   integer PRIMARY KEY,
          name text NOT NULL
        );

        CREATE TABLE employees (
          id         integer PRIMARY KEY,
          name       text NOT NULL,
          dept_id    integer REFERENCES departments (id),
          manager_id integer REFERENCES employees (id),
          salary     numeric(10,2) NOT NULL
        );

        INSERT INTO departments VALUES (1, 'Engineering'), (2, 'Sales'), (3, 'Legal');
        INSERT INTO employees VALUES
          (1, 'Lakshmi', 1, NULL, 250000), (2, 'Farhan', 1, 1, 140000),
          (3, 'Gita',    1, 1,    155000), (4, 'Harsh',  2, 1,  90000),
          (5, 'Ishita',  2, 4,     98000),
          (6, 'Joel', NULL, 1,     60000);   -- contractor, no department

        -- 1. INNER JOIN: only employees that have a department
        SELECT e.name, d.name AS dept
        FROM employees e
        JOIN departments d ON d.id = e.dept_id
        ORDER BY e.id;

        -- 2. LEFT JOIN + IS NULL: departments with nobody in them
        SELECT d.name AS empty_department
        FROM departments d
        LEFT JOIN employees e ON e.dept_id = d.id
        WHERE e.id IS NULL;

        -- 3. FULL OUTER JOIN: unmatched rows from BOTH sides
        SELECT e.name AS employee, d.name AS dept
        FROM employees e
        FULL JOIN departments d ON d.id = e.dept_id
        WHERE e.id IS NULL OR d.id IS NULL;

        -- 4. SELF JOIN: who reports to whom
        SELECT e.name AS employee, m.name AS manager
        FROM employees e
        LEFT JOIN employees m ON m.id = e.manager_id
        ORDER BY e.id;

        -- 5. DISTINCT ON: highest-paid person in each department
        SELECT DISTINCT ON (d.name) d.name AS dept, e.name, e.salary
        FROM employees e
        JOIN departments d ON d.id = e.dept_id
        ORDER BY d.name, e.salary DESC;
      SQL
    },

    8 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-postgresql">PostgreSQL</div>
          <h1 class="lc-title">Database Design and Normalisation</h1>
        </div>
        <p class="lc-lead">Before you write any query, you decide which tables exist and how they link. Good design stores every fact exactly once. Then the data can't disagree with itself. In this lesson you model one-to-many and many-to-many relationships. You split a messy "spreadsheet" table using the first three normal forms. You also choose between CHECK, ENUM and a lookup table.</p>

        <div class="lc-card">
          <h3>Three Kinds of Relationship</h3>
          <table class="lc-table">
            <thead><tr><th>Relationship</th><th>Example</th><th>How to build it</th></tr></thead>
            <tbody>
              <tr><td>One-to-many (1:N)</td><td>One customer has many orders</td><td>Foreign key on the "many" side: <code>orders.customer_id REFERENCES customers (id)</code></td></tr>
              <tr><td>Many-to-many (M:N)</td><td>An order has many products. A product is in many orders</td><td>A <strong>junction table</strong> (a table that links two tables) with two foreign keys: <code>order_items (order_id, product_id)</code></td></tr>
              <tr><td>One-to-one (1:1)</td><td>A user has one private profile</td><td>Foreign key that is also <code>UNIQUE</code> (or the primary key): <code>profiles.user_id ... PRIMARY KEY REFERENCES users (id)</code></td></tr>
            </tbody>
          </table>
          <p>A junction table often has its own facts too. <code>order_items.qty</code> does not belong to the order or the product. It belongs to the pair. Its primary key is usually the pair: <code>PRIMARY KEY (order_id, product_id)</code>.</p>
        </div>

        <div class="lc-card">
          <h3>Picture It</h3>
        <div class="lc-code">customers (id, name, city)<br>&nbsp;&nbsp;1 ----&lt; orders (id, customer_id, status)<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1 ----&lt; order_items (order_id, product_id, qty) &gt;---- 1 products (id, name, price)<br><br>1 ----&lt;  means "one ... to many"</div>
          <p>Draw this kind of diagram (an ER diagram) on paper first. Each box becomes a table. Each crow's foot (<code>&lt;</code>) becomes a foreign key.</p>
        </div>

        <div class="lc-card">
          <h3>Normalisation: The First Three Normal Forms</h3>
          <p>Normalisation is a list of steps for removing repeated data. Each form fixes one kind of problem:</p>
          <table class="lc-table">
            <thead><tr><th>Form</th><th>Rule in plain words</th><th>Warning sign</th><th>Fix</th></tr></thead>
            <tbody>
              <tr><td>1NF</td><td>One value per cell. No repeating columns</td><td><code>products = 'Pen, Notebook'</code>, or columns <code>phone1, phone2, phone3</code></td><td>One row per item in a child table</td></tr>
              <tr><td>2NF</td><td>With a composite key, every column depends on the <em>whole</em> key</td><td><code>order_items (order_id, product_id, qty, product_name)</code>: the name depends only on <code>product_id</code></td><td>Move <code>product_name</code> to <code>products</code></td></tr>
              <tr><td>3NF</td><td>Non-key columns depend only on the key. They do not depend on each other</td><td><code>orders (id, customer_id, customer_city)</code>: city depends on the customer, not the order</td><td>Keep <code>city</code> in <code>customers</code> only</td></tr>
            </tbody>
          </table>
          <p>A short way to remember it: every column must depend on "the key, the whole key, and nothing but the key".</p>
        </div>

        <div class="lc-card">
          <h3>Worked Example: Fixing the Spreadsheet Table</h3>
          <p>The starter begins with <code>orders_flat</code>. In it, Meera's city is typed on every order. If you update only one of her rows, the data disagrees with itself. This is an <strong>update anomaly</strong>:</p>
        <div class="lc-code">UPDATE orders_flat SET city = 'Los Angeles' WHERE order_id = 1;<br>SELECT DISTINCT city AS meera_lives_in FROM orders_flat WHERE customer = 'Meera' ORDER BY city;</div>
          <p><strong>Output:</strong></p>
        <div class="lc-code">&nbsp;meera_lives_in<br>----------------<br>&nbsp;Boston<br>&nbsp;Los Angeles</div>
          <p>Then you split it into <code>customers</code>, <code>products</code>, <code>orders</code> and <code>order_items</code>. Now the city is stored once. One <code>UPDATE</code> fixes it everywhere. Joins rebuild the old view when you need it:</p>
        <div class="lc-code">&nbsp;order_id | name  |    city     | status  |        items        | total<br>----------+-------+-------------+---------+---------------------+--------<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1 | Meera | Los Angeles | paid    | Notebook x1, Pen x3 | 120.00<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2 | Meera | Los Angeles | new     | Pen x2              |  40.00<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3 | Rohan | London      | shipped | Notebook x4         | 240.00</div>
          <p>Notice that the total is <em>calculated</em>, not stored. A stored total could stop matching the items.</p>
        </div>

        <div class="lc-card">
          <h3>Keys: Surrogate or Natural?</h3>
          <ul class="lc-list">
            <li><strong>Surrogate key</strong>: a number with no meaning, such as <code>id integer GENERATED ALWAYS AS IDENTITY</code>. It never changes, so it is the usual choice.</li>
            <li><strong>Natural key</strong>: a real-world value such as an email or a course code (<code>DB101</code>). It is fine when it is short and truly never changes. Emails and phone numbers do change. So keep them as <code>UNIQUE</code> columns instead.</li>
            <li>Whatever you pick as the primary key, still add <code>UNIQUE</code> on any real-world value that must not repeat.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>A Fixed List of Values: CHECK, ENUM or Lookup Table?</h3>
        <div class="lc-code">CREATE TYPE order_status AS ENUM ('new', 'paid', 'shipped');<br>SELECT enum_range(NULL::order_status) AS allowed,<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;min(status) AS earliest_stage, max(status) AS latest_stage FROM orders;</div>
          <p><strong>Output:</strong></p>
        <div class="lc-code">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;allowed&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;| earliest_stage | latest_stage<br>--------------------+----------------+--------------<br>&nbsp;{new,paid,shipped} | new            | shipped</div>
          <p>An ENUM (a type with a fixed list of values) sorts in the order you listed the values. It does not sort alphabetically. Inserting <code>'lost'</code> fails with <em>invalid input value for enum order_status: "lost"</em>.</p>
          <table class="lc-table">
            <thead><tr><th>Option</th><th>Good for</th><th>Drawback</th></tr></thead>
            <tbody>
              <tr><td><code>CHECK (status IN (...))</code></td><td>Short lists that rarely change (Lesson 3)</td><td>To change the list, you must drop the constraint and add it again</td></tr>
              <tr><td><code>CREATE TYPE ... AS ENUM</code></td><td>Lists that don't change and have a natural order (stages, sizes)</td><td>You can add values (<code>ALTER TYPE ... ADD VALUE</code>), but you can't easily remove them</td></tr>
              <tr><td>Lookup table + foreign key</td><td>Lists that users edit, or values with extra data (a label, a price)</td><td>One more join</td></tr>
            </tbody>
          </table>
        </div>

        <div class="lc-card">
          <h3>When to Break the Rules (Denormalise)</h3>
          <p>Normalise first. Copy data on purpose only when you have a clear reason. For example:</p>
          <ul class="lc-list">
            <li><strong>History</strong>: store the <code>unit_price</code> in <code>order_items</code> at the moment of sale. The product's price will change later. So this is a different fact, not a duplicate.</li>
            <li><strong>Speed</strong>: first measure a slow report with <code>EXPLAIN ANALYZE</code> (Lesson 14). Then you can save its result in a materialized view (Lesson 18). This is better than copying columns into tables.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Storing lists in one text cell (<code>'Pen, Notebook'</code>). You can't join, count or add rules to them. Use a child table (or, for simple tags, an array: Lesson 16).</li>
            <li>Building many-to-many with a foreign key on one side. Then a product can belong to only one order. You need a junction table.</li>
            <li>Forgetting the composite primary key on the junction table. Then the same product can appear twice in one order.</li>
            <li>Storing values you can calculate (order total, age from birth date). They become out of date. Calculate them in the query or a view.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>Add a product <code>Stapler</code> (price 150) and put 1 of it in order 3. Run again. Which rows of the report change?</li>
            <li>Add <code>'cancelled'</code> to the enum with <code>ALTER TYPE order_status ADD VALUE 'cancelled';</code>. Then mark order 2 as cancelled.</li>
            <li>Design on paper: students, courses and teachers. A course has one teacher and many students. Which tables and foreign keys do you need? (The final project in Lesson 21 uses the same idea.)</li>
          </ol>
        </div>

        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> For every column, ask "is this a fact about <em>this row's key</em>?" The answer may be "no, it's about the customer" (or the product, or the city). Then it belongs in another table.
        </div>
      HTML
      starter_code: <<~'SQL'
        -- Lesson 8: Database design and normalisation
        -- BEFORE: one spreadsheet-style table
        CREATE TABLE orders_flat (order_id integer, customer text, city text, products text);
        INSERT INTO orders_flat VALUES
          (1, 'Meera', 'Boston', 'Pen, Notebook'),
          (2, 'Meera', 'Boston', 'Pen'),
          (3, 'Rohan', 'London', 'Notebook');

        -- 1. Update anomaly: Meera moves, but only one of her rows is changed
        UPDATE orders_flat SET city = 'Los Angeles' WHERE order_id = 1;
        SELECT DISTINCT city AS meera_lives_in FROM orders_flat WHERE customer = 'Meera' ORDER BY city;

        -- AFTER: every fact is stored once
        CREATE TYPE order_status AS ENUM ('new', 'paid', 'shipped');
        CREATE TABLE customers (id integer GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
                                name text NOT NULL, city text NOT NULL);
        CREATE TABLE products  (id integer GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
                                name text NOT NULL UNIQUE, price numeric(10,2) NOT NULL);
        CREATE TABLE orders (
          id          integer GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
          customer_id integer NOT NULL REFERENCES customers (id),
          status      order_status NOT NULL DEFAULT 'new'
        );
        CREATE TABLE order_items (              -- junction table (many-to-many)
          order_id   integer REFERENCES orders (id) ON DELETE CASCADE,
          product_id integer REFERENCES products (id),
          qty        integer NOT NULL CHECK (qty > 0),
          PRIMARY KEY (order_id, product_id)
        );
        INSERT INTO customers (name, city) VALUES ('Meera', 'Boston'), ('Rohan', 'London');
        INSERT INTO products (name, price) VALUES ('Pen', 20), ('Notebook', 60);
        INSERT INTO orders (customer_id, status) VALUES (1, 'paid'), (1, 'new'), (2, 'shipped');
        INSERT INTO order_items VALUES (1, 1, 3), (1, 2, 1), (2, 1, 2), (3, 2, 4);

        -- 2. Meera moves: ONE row changes, and every order sees it
        UPDATE customers SET city = 'Los Angeles' WHERE name = 'Meera';
        -- 3. JOINs rebuild the "spreadsheet" whenever you need it
        SELECT o.id AS order_id, c.name, c.city, o.status,
               string_agg(p.name || ' x' || oi.qty, ', ' ORDER BY p.name) AS items,
               sum(oi.qty * p.price) AS total
        FROM orders o
        JOIN customers c    ON c.id = o.customer_id
        JOIN order_items oi ON oi.order_id = o.id
        JOIN products p     ON p.id = oi.product_id
        GROUP BY o.id, c.name, c.city, o.status
        ORDER BY o.id;

        -- 4. An ENUM allows only its values, and sorts in the order you declared
        SELECT enum_range(NULL::order_status) AS allowed,
               min(status) AS earliest_stage, max(status) AS latest_stage FROM orders;
      SQL
    },

    9 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-postgresql">PostgreSQL</div>
          <h1 class="lc-title">Subqueries, EXISTS and LATERAL</h1>
        </div>
        <p class="lc-lead">A subquery is a query inside another query. You will use scalar subqueries, <code>IN</code>, <code>EXISTS</code> and correlated subqueries. You will learn to avoid the well-known <code>NOT IN</code> + NULL trap. You will also use <code>LATERAL</code> to get the "top N per group".</p>

        <div class="lc-card">
          <h3>Kinds of Subquery</h3>
          <table class="lc-table">
            <thead><tr><th>Kind</th><th>Returns</th><th>Example</th></tr></thead>
            <tbody>
              <tr><td>Scalar</td><td>One value</td><td><code>WHERE amount &gt; (SELECT avg(amount) FROM orders)</code></td></tr>
              <tr><td>List</td><td>One column, many rows</td><td><code>WHERE id IN (SELECT customer_id FROM orders)</code></td></tr>
              <tr><td>Table</td><td>Rows and columns</td><td><code>FROM (SELECT ...) AS t</code></td></tr>
              <tr><td>Correlated</td><td>Runs once "for each outer row"</td><td><code>(SELECT max(amount) FROM orders o WHERE o.customer_id = c.id)</code></td></tr>
            </tbody>
          </table>
        </div>

        <div class="lc-card">
          <h3>EXISTS and NOT EXISTS</h3>
          <p><code>EXISTS (subquery)</code> is true if the subquery returns at least one row. What it selects does not matter. So people write <code>SELECT 1</code>:</p>
        <div class="lc-code">SELECT name FROM customers c<br>WHERE NOT EXISTS (SELECT 1 FROM orders o WHERE o.customer_id = c.id);</div>
          <p><strong>Output:</strong> <code>Dev</code>, the only customer with no orders.</p>
        </div>

        <div class="lc-card">
          <h3>Worked Example: The NOT IN Trap</h3>
          <p>The orders table has a guest order with <code>customer_id = NULL</code>. See what happens:</p>
        <div class="lc-code">SELECT count(*) AS no_orders_not_in<br>FROM customers<br>WHERE id NOT IN (SELECT customer_id FROM orders);</div>
          <p><strong>Output:</strong></p>
        <div class="lc-code">&nbsp;no_orders_not_in<br>------------------<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;0</div>
          <p>Why? <code>4 NOT IN (1, 2, 1, 3, NULL)</code> means <code>4 &lt;&gt; 1 AND ... AND 4 &lt;&gt; NULL</code>. The last part is NULL (unknown), so the whole condition is never true. <code>NOT EXISTS</code> doesn't have this problem. So use it instead.</p>
        </div>

        <div class="lc-card">
          <h3>LATERAL: A Subquery That Can See the Row Before It</h3>
          <p>A normal subquery in <code>FROM</code> can't use other tables in the same <code>FROM</code>. <code>LATERAL</code> removes that limit. The subquery then runs once for each outer row. It is the clearest way to get the top N rows per group:</p>
        <div class="lc-code">SELECT c.name, recent.id AS order_id, recent.ordered_on<br>FROM customers c<br>CROSS JOIN LATERAL (<br>&nbsp;&nbsp;SELECT o.id, o.ordered_on FROM orders o<br>&nbsp;&nbsp;WHERE o.customer_id = c.id<br>&nbsp;&nbsp;ORDER BY o.ordered_on DESC<br>&nbsp;&nbsp;LIMIT 2<br>) AS recent<br>ORDER BY c.name, recent.ordered_on DESC;</div>
          <p><strong>Output:</strong></p>
        <div class="lc-code">&nbsp;&nbsp;name  | order_id | ordered_on<br>--------+----------+-----------<br>&nbsp;Ananya |      104 | 2026-09-02<br>&nbsp;Ananya |      102 | 2026-08-20<br>&nbsp;Bharat |      103 | 2026-08-05<br>&nbsp;Chitra |      105 | 2026-09-10</div>
          <p>Dev has no orders, so <code>CROSS JOIN LATERAL</code> leaves him out. Use <code>LEFT JOIN LATERAL (...) ON true</code> to keep him with NULLs.</p>
        </div>

        <div class="lc-card">
          <h3>Combining Results: UNION, INTERSECT, EXCEPT</h3>
          <p>Set operators put the results of two queries together. Both queries must return the same number of columns, with matching types:</p>
          <table class="lc-table">
            <thead><tr><th>Operator</th><th>Returns</th><th>Example result (online: Asha, Ravi, Zoya; shop: Ravi, Tara, Zoya, Zoya)</th></tr></thead>
            <tbody>
              <tr><td><code>UNION</code></td><td>Rows from either query, with duplicates removed</td><td>Asha, Ravi, Tara, Zoya</td></tr>
              <tr><td><code>UNION ALL</code></td><td>All rows, with duplicates kept (faster, because it does not remove duplicates)</td><td>7 rows</td></tr>
              <tr><td><code>INTERSECT</code></td><td>Rows found in both</td><td>Ravi, Zoya</td></tr>
              <tr><td><code>EXCEPT</code></td><td>Rows in the first but not the second</td><td>Asha</td></tr>
            </tbody>
          </table>
        <div class="lc-code">SELECT name AS online_only FROM online_buyers<br>EXCEPT<br>SELECT name FROM shop_buyers<br>ORDER BY 1;&nbsp;&nbsp;&nbsp;-- one ORDER BY at the end sorts the combined result</div>
          <p><code>EXCEPT</code> is another way to answer "which ones have no match?". It is safe with NULLs. Column names come from the first query. Use <code>UNION ALL</code> unless you really need duplicates removed.</p>
        </div>

        <div class="lc-card">
          <h3>Which Tool When?</h3>
          <table class="lc-table">
            <thead><tr><th>Question</th><th>Good choice</th></tr></thead>
            <tbody>
              <tr><td>"Rows that have a match"</td><td><code>EXISTS</code> or <code>IN</code></td></tr>
              <tr><td>"Rows that have no match"</td><td><code>NOT EXISTS</code> or <code>LEFT JOIN ... IS NULL</code> (not <code>NOT IN</code>)</td></tr>
              <tr><td>"Compare with an overall number"</td><td>Scalar subquery</td></tr>
              <tr><td>"Top N per group"</td><td><code>LATERAL</code> or a window function (Lesson 11)</td></tr>
            </tbody>
          </table>
        </div>

        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Using <code>NOT IN</code> with a subquery that can return NULL. You get zero rows, with no error.</li>
            <li>A "scalar" subquery that returns more than one row. You get the error <em>more than one row returned by a subquery used as an expression</em>.</li>
            <li>Forgetting the alias on a subquery in <code>FROM</code>. It is optional only from PostgreSQL 16. So add one anyway.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>Fix the <code>NOT IN</code> query by adding <code>WHERE customer_id IS NOT NULL</code> inside the subquery.</li>
            <li>Change the LATERAL query to <code>LEFT JOIN LATERAL ... ON true</code>. Then Dev appears.</li>
            <li>List customers whose total spend is above the average order amount.</li>
          </ol>
        </div>

        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> PostgreSQL's planner (the part that decides how to run a query) usually turns <code>EXISTS</code>, <code>IN</code> and joins into the same fast plan. Choose the form that is easiest to read. If speed matters, check with <code>EXPLAIN</code> (Lesson 14).
        </div>
      HTML
      starter_code: <<~'SQL'
        -- Lesson 9: Subqueries, EXISTS and LATERAL
        CREATE TABLE customers (
          id   integer PRIMARY KEY,
          name text NOT NULL
        );

        CREATE TABLE orders (
          id          integer PRIMARY KEY,
          customer_id integer REFERENCES customers (id),
          amount      numeric(10,2) NOT NULL,
          ordered_on  date NOT NULL
        );

        INSERT INTO customers VALUES (1, 'Ananya'), (2, 'Bharat'), (3, 'Chitra'), (4, 'Dev');
        INSERT INTO orders VALUES
          (101, 1, 1200, '2026-08-01'), (102, 1, 450, '2026-08-20'),
          (103, 2, 3000, '2026-08-05'), (104, 1, 2200, '2026-09-02'),
          (105, 3,  300, '2026-09-10'), (106, NULL, 999, '2026-09-11');  -- guest order

        -- 1. Scalar subquery: orders above the average
        SELECT id, amount
        FROM orders
        WHERE amount > (SELECT avg(amount) FROM orders)
        ORDER BY amount DESC;

        -- 2. NOT EXISTS: customers with no orders
        SELECT name AS no_orders_not_exists FROM customers c
        WHERE NOT EXISTS (SELECT 1 FROM orders o WHERE o.customer_id = c.id);

        -- 3. The NOT IN trap: one NULL in the list = zero rows
        SELECT count(*) AS no_orders_not_in
        FROM customers
        WHERE id NOT IN (SELECT customer_id FROM orders);

        -- 4. Correlated subquery: each customer's biggest order
        SELECT name,
               (SELECT max(amount) FROM orders o WHERE o.customer_id = c.id) AS biggest
        FROM customers c ORDER BY c.id;

        -- 5. LATERAL: the 2 latest orders per customer
        SELECT c.name, recent.id AS order_id, recent.ordered_on
        FROM customers c
        CROSS JOIN LATERAL (
          SELECT o.id, o.ordered_on FROM orders o
          WHERE o.customer_id = c.id
          ORDER BY o.ordered_on DESC
          LIMIT 2
        ) AS recent
        ORDER BY c.name, recent.ordered_on DESC;
      SQL
    },

    10 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-postgresql">PostgreSQL</div>
          <h1 class="lc-title">CTEs and Recursive Queries</h1>
        </div>
        <p class="lc-lead">A Common Table Expression (CTE) gives a subquery a name with <code>WITH</code>. Then a long query reads like a list of steps. <code>WITH RECURSIVE</code> does even more. It can go through trees and graphs, such as org charts, category menus or folder structures.</p>

        <div class="lc-card">
          <h3>Basic CTE</h3>
        <div class="lc-code">WITH team_size AS (<br>&nbsp;&nbsp;SELECT manager_id, count(*) AS direct_reports<br>&nbsp;&nbsp;FROM staff<br>&nbsp;&nbsp;WHERE manager_id IS NOT NULL<br>&nbsp;&nbsp;GROUP BY manager_id<br>),<br>managers AS (<br>&nbsp;&nbsp;SELECT s.name, t.direct_reports<br>&nbsp;&nbsp;FROM staff s JOIN team_size t ON t.manager_id = s.id<br>)<br>SELECT * FROM managers ORDER BY direct_reports DESC, name;</div>
          <p>Each CTE can use the ones before it. The CTEs exist only while this one statement runs.</p>
        </div>

        <div class="lc-card">
          <h3>CTE vs Subquery vs View</h3>
          <table class="lc-table">
            <thead><tr><th></th><th>Subquery</th><th>CTE</th><th>View (Lesson 18)</th></tr></thead>
            <tbody>
              <tr><td>Named</td><td>No</td><td>Yes</td><td>Yes</td></tr>
              <tr><td>Reuse in same query</td><td>Copy it</td><td>Use its name</td><td>Use its name</td></tr>
              <tr><td>Lives after the query</td><td>No</td><td>No</td><td>Yes, saved in the database</td></tr>
              <tr><td>Recursion</td><td>No</td><td>Yes</td><td>Yes (it can contain a recursive CTE)</td></tr>
            </tbody>
          </table>
          <p>Speed: since PostgreSQL 12, a simple CTE that is used once is inlined (merged into the main query). So it is as fast as a subquery. Add <code>AS MATERIALIZED</code> to make it run once and store its result. Add <code>AS NOT MATERIALIZED</code> to force inlining.</p>
        </div>

        <div class="lc-card">
          <h3>How WITH RECURSIVE Works</h3>
        <div class="lc-code">WITH RECURSIVE org AS (<br>&nbsp;&nbsp;SELECT ... WHERE manager_id IS NULL      -- 1. anchor: starting rows<br>&nbsp;&nbsp;UNION ALL<br>&nbsp;&nbsp;SELECT ... FROM staff s<br>&nbsp;&nbsp;JOIN org o ON s.manager_id = o.id        -- 2. recursive step: uses org itself<br>)<br>SELECT * FROM org;</div>
          <ol class="lc-list">
            <li>Run the anchor query (the starting query). Its rows are the first "working set".</li>
            <li>Run the recursive step on the working set only. The new rows become the next working set.</li>
            <li>Repeat until the recursive step returns <strong>no new rows</strong>. The result is all rows from every round.</li>
          </ol>
        </div>

        <div class="lc-card">
          <h3>Worked Example: The Org Chart</h3>
        <div class="lc-code">WITH RECURSIVE org AS (<br>&nbsp;&nbsp;SELECT id, name, title, 1 AS level, name::text AS path<br>&nbsp;&nbsp;FROM staff WHERE manager_id IS NULL<br>&nbsp;&nbsp;UNION ALL<br>&nbsp;&nbsp;SELECT s.id, s.name, s.title, o.level + 1, o.path || ' &gt; ' || s.name<br>&nbsp;&nbsp;FROM staff s JOIN org o ON s.manager_id = o.id<br>)<br>SELECT level, repeat('  ', level - 1) || name AS person, title, path<br>FROM org ORDER BY path;</div>
          <p><strong>Output:</strong></p>
        <div class="lc-code">&nbsp;level |   person    |     title     |              path<br>-------+-------------+---------------+--------------------------------<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1 | Radhika     | CEO           | Radhika<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2 |   Sameer    | CTO           | Radhika &gt; Sameer<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3 |     Uday    | Lead Engineer | Radhika &gt; Sameer &gt; Uday<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4 |       Vani  | Engineer      | Radhika &gt; Sameer &gt; Uday &gt; Vani<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4 |       Wasim | Engineer      | Radhika &gt; Sameer &gt; Uday &gt; Wasim<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2 |   Tanvi     | CFO           | Radhika &gt; Tanvi<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3 |     Yamini  | Accountant    | Radhika &gt; Tanvi &gt; Yamini</div>
          <p>Sorting by <code>path</code> prints each person under their manager, like a tree. The <code>name::text</code> cast is important. The anchor and recursive parts must produce the same column types.</p>
        </div>

        <div class="lc-card">
          <h3>Stopping Infinite Loops</h3>
          <p>Your data may have a cycle (A manages B, B manages A). Then the recursion never ends. Protect your query:</p>
          <ul class="lc-list">
            <li>Add a depth limit in the recursive step: <code>WHERE o.level &lt; 20</code>.</li>
            <li>Use <code>UNION</code> instead of <code>UNION ALL</code> to remove exact duplicate rows.</li>
            <li>PostgreSQL 14+ has <code>CYCLE id SET is_cycle USING route</code>. It marks and stops cycles for you.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Forgetting the word <code>RECURSIVE</code>. You get <em>relation "org" does not exist</em>.</li>
            <li>Using different column types in the anchor and the recursive part (for example <code>varchar</code> vs <code>text</code>). Cast in the anchor.</li>
            <li>Having no stop condition on data that has cycles.</li>
            <li>Thinking a CTE is a temporary table you can use in the next statement. It exists for one statement only.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>Change query 3 to list everyone under Tanvi.</li>
            <li>In the org chart, add a column that counts how many managers are above each person.</li>
            <li>Write a recursive CTE that prints the dates from 1 to 7 October 2026.</li>
          </ol>
        </div>

        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Build a recursive CTE in two steps. First, run the anchor query alone and check it. Then add the recursive part with a small depth limit.
        </div>
      HTML
      starter_code: <<~'SQL'
        -- Lesson 10: CTEs and recursive queries
        CREATE TABLE staff (
          id         integer PRIMARY KEY,
          name       text NOT NULL,
          title      text NOT NULL,
          manager_id integer REFERENCES staff (id)
        );

        INSERT INTO staff VALUES
          (1, 'Radhika', 'CEO', NULL),         (2, 'Sameer', 'CTO', 1),
          (3, 'Tanvi',   'CFO', 1),            (4, 'Uday',   'Lead Engineer', 2),
          (5, 'Vani',    'Engineer', 4),       (6, 'Wasim',  'Engineer', 4),
          (7, 'Yamini',  'Accountant', 3);

        -- 1. Two named steps instead of nested subqueries
        WITH team_size AS (
          SELECT manager_id, count(*) AS direct_reports
          FROM staff
          WHERE manager_id IS NOT NULL
          GROUP BY manager_id
        ),
        managers AS (
          SELECT s.name, t.direct_reports
          FROM staff s JOIN team_size t ON t.manager_id = s.id
        )
        SELECT * FROM managers ORDER BY direct_reports DESC, name;

        -- 2. Recursive CTE: walk the whole org chart from the CEO
        WITH RECURSIVE org AS (
          SELECT id, name, title, 1 AS level, name::text AS path
          FROM staff
          WHERE manager_id IS NULL                 -- anchor: the root
          UNION ALL
          SELECT s.id, s.name, s.title, o.level + 1, o.path || ' > ' || s.name
          FROM staff s
          JOIN org o ON s.manager_id = o.id        -- recursive step
        )
        SELECT level, repeat('  ', level - 1) || name AS person, title, path
        FROM org
        ORDER BY path;

        -- 3. Everyone under Sameer (any depth)
        WITH RECURSIVE reports AS (
          SELECT id, name FROM staff WHERE name = 'Sameer'
          UNION ALL
          SELECT s.id, s.name FROM staff s JOIN reports r ON s.manager_id = r.id
        )
        SELECT string_agg(name, ', ' ORDER BY id) AS sameer_and_team FROM reports;
      SQL
    },

    11 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-postgresql">PostgreSQL</div>
          <h1 class="lc-title">Window Functions</h1>
        </div>
        <p class="lc-lead">A window function calculates over a set of related rows <strong>without joining them into one row</strong>. This is different from <code>GROUP BY</code>. Every row stays. Each row gets extra columns, like its rank, a running total or the previous row's value.</p>

        <div class="lc-card">
          <h3>The OVER Clause</h3>
        <div class="lc-code">function(...) OVER (<br>&nbsp;&nbsp;PARTITION BY house        -- restart for each group (optional)<br>&nbsp;&nbsp;ORDER BY points DESC      -- order inside the group (optional)<br>&nbsp;&nbsp;ROWS BETWEEN 2 PRECEDING AND CURRENT ROW   -- frame (optional)<br>)</div>
          <table class="lc-table">
            <thead><tr><th></th><th>GROUP BY</th><th>Window function</th></tr></thead>
            <tbody>
              <tr><td>Rows in result</td><td>One per group</td><td>All rows kept</td></tr>
              <tr><td>Can show row details next to group totals</td><td>No</td><td>Yes</td></tr>
              <tr><td>Allowed in WHERE</td><td>n/a</td><td>No. Filter in an outer query</td></tr>
            </tbody>
          </table>
        </div>

        <div class="lc-card">
          <h3>Ranking Functions</h3>
          <table class="lc-table">
            <thead><tr><th>Function</th><th>Ties 92, 92, 85</th></tr></thead>
            <tbody>
              <tr><td><code>row_number()</code></td><td>1, 2, 3. Always unique. The order of tied rows is random unless you add a tie-breaker (an extra sort column)</td></tr>
              <tr><td><code>rank()</code></td><td>1, 1, 3. Tied rows get the same rank, then there is a gap</td></tr>
              <tr><td><code>dense_rank()</code></td><td>1, 1, 2. Tied rows get the same rank, with no gap</td></tr>
              <tr><td><code>ntile(4)</code></td><td>Splits rows into 4 groups of about the same size</td></tr>
              <tr><td><code>percent_rank()</code></td><td>Relative rank from 0 to 1</td></tr>
            </tbody>
          </table>
        </div>

        <div class="lc-card">
          <h3>Worked Example: Three Rankings Side by Side</h3>
        <div class="lc-code">SELECT house, student, points,<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;row_number() OVER (PARTITION BY house ORDER BY points DESC, student) AS row_num,<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;rank()       OVER w AS rank,<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dense_rank() OVER w AS dense_rank<br>FROM scores<br>WINDOW w AS (PARTITION BY house ORDER BY points DESC)<br>ORDER BY house, points DESC, student;</div>
          <p><strong>Output:</strong></p>
        <div class="lc-code">&nbsp;house | student | points | row_num | rank | dense_rank<br>-------+---------+--------+---------+------+-----------<br>&nbsp;Blue  | Esha    |     88 |       1 |    1 |          1<br>&nbsp;Blue  | Deepak  |     78 |       2 |    2 |          2<br>&nbsp;Blue  | Faizal  |     70 |       3 |    3 |          3<br>&nbsp;Red   | Aditi   |     92 |       1 |    1 |          1<br>&nbsp;Red   | Charu   |     92 |       2 |    1 |          1<br>&nbsp;Red   | Bhavesh |     85 |       3 |    3 |          2<br>&nbsp;Red   | Gauri   |     60 |       4 |    4 |          3</div>
          <p><code>WINDOW w AS (...)</code> gives a window a name, so you don't have to repeat it.</p>
        </div>

        <div class="lc-card">
          <h3>Value and Aggregate Windows</h3>
          <table class="lc-table">
            <thead><tr><th>Expression</th><th>Gives</th></tr></thead>
            <tbody>
              <tr><td><code>lag(amount) OVER (ORDER BY day)</code></td><td>Previous row's value (NULL on the first row)</td></tr>
              <tr><td><code>lead(amount) OVER (ORDER BY day)</code></td><td>Next row's value</td></tr>
              <tr><td><code>sum(amount) OVER (ORDER BY day)</code></td><td>Running total</td></tr>
              <tr><td><code>avg(points) OVER (PARTITION BY house)</code></td><td>Group average on every row</td></tr>
              <tr><td><code>avg(amount) OVER (ORDER BY day ROWS BETWEEN 2 PRECEDING AND CURRENT ROW)</code></td><td>3-day moving average</td></tr>
              <tr><td><code>first_value(x)</code>, <code>last_value(x)</code>, <code>nth_value(x, n)</code></td><td>Values from the frame (the rows the window looks at)</td></tr>
            </tbody>
          </table>
          <p>The starter's daily sales query prints running totals 100, 240, 330, 530, 690. It also prints a moving average of 143.3 on 4 September ((90 + 200 + 140) / 3).</p>
        </div>

        <div class="lc-card">
          <h3>A Common Frame Problem</h3>
          <p>If you use <code>ORDER BY</code> with no frame, the default frame is <code>RANGE BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW</code>. Here "current row" includes all rows that <strong>tie</strong> with it (its peers). So a running total over values 1, 2, 2, 3 gives 1, 5, 5, 8, not 1, 3, 5, 8. Use a unique <code>ORDER BY</code>, or write <code>ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW</code>.</p>
          <p>For the same reason, <code>last_value(x) OVER (ORDER BY ...)</code> usually returns the current row. Give it the frame <code>ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING</code>.</p>
        </div>

        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Writing <code>WHERE rank() OVER (...) &lt;= 2</code>. Window functions run after <code>WHERE</code>. Put the query inside another query and filter there (starter query 3).</li>
            <li>Using <code>row_number()</code> for "top 2" when ties matter. If tied students should both be included, use <code>rank()</code>.</li>
            <li>Leaving out the tie-breaker. Then <code>row_number()</code> can give different answers each time you run it.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>Show each student's share of their house total: <code>round(100.0 * points / sum(points) OVER (PARTITION BY house), 1)</code>.</li>
            <li>Change query 3 to use <code>rank()</code> and keep ranks up to 1. How many Red students appear?</li>
            <li>Add <code>lead(amount)</code> to the daily sales query.</li>
          </ol>
        </div>

        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Use window functions for most "compare a row with its group" questions. For example: top N per group, change since yesterday, percentage of total, running balance.
        </div>
      HTML
      starter_code: <<~'SQL'
        -- Lesson 11: Window functions
        CREATE TABLE scores (
          student text    NOT NULL,
          house   text    NOT NULL,
          points  integer NOT NULL
        );

        INSERT INTO scores VALUES
          ('Aditi', 'Red',  92), ('Bhavesh', 'Red',  85), ('Charu', 'Red',  92),
          ('Deepak','Blue', 78), ('Esha',    'Blue', 88), ('Faizal','Blue', 70),
          ('Gauri', 'Red',  60);

        -- 1. ROW_NUMBER vs RANK vs DENSE_RANK inside each house
        SELECT house, student, points,
               row_number() OVER (PARTITION BY house ORDER BY points DESC, student) AS row_num,
               rank()       OVER w AS rank,
               dense_rank() OVER w AS dense_rank
        FROM scores
        WINDOW w AS (PARTITION BY house ORDER BY points DESC)
        ORDER BY house, points DESC, student;

        -- 2. Compare each row with its group - rows are NOT collapsed
        SELECT student, house, points,
               round(avg(points) OVER (PARTITION BY house), 1) AS house_avg,
               points - max(points) OVER (PARTITION BY house)  AS behind_leader
        FROM scores
        ORDER BY house, points DESC, student;

        -- 3. Top 2 per house (filter window results in an outer query)
        SELECT house, student, points
        FROM (
          SELECT *, row_number() OVER (PARTITION BY house ORDER BY points DESC, student) AS rn
          FROM scores
        ) ranked
        WHERE rn <= 2
        ORDER BY house, rn;

        -- 4. Daily sales: running total, LAG and 3-day moving average
        CREATE TABLE daily_sales (day date PRIMARY KEY, amount integer NOT NULL);
        INSERT INTO daily_sales VALUES
          ('2026-09-01', 100), ('2026-09-02', 140), ('2026-09-03', 90),
          ('2026-09-04', 200), ('2026-09-05', 160);

        SELECT day, amount,
               sum(amount) OVER (ORDER BY day)                   AS running_total,
               amount - lag(amount) OVER (ORDER BY day)          AS change,
               round(avg(amount) OVER (ORDER BY day
                     ROWS BETWEEN 2 PRECEDING AND CURRENT ROW), 1) AS moving_avg_3
        FROM daily_sales
        ORDER BY day;
      SQL
    },

    12 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-postgresql">PostgreSQL</div>
          <h1 class="lc-title">Changing Data: RETURNING, Upserts and MERGE</h1>
        </div>
        <p class="lc-lead">Reading data is only half the work. In this lesson you learn to write data: <code>INSERT</code>, <code>UPDATE</code> and <code>DELETE</code> with <code>RETURNING</code>. You also learn upserts ("insert or update") with <code>ON CONFLICT</code>. Last, you use <code>MERGE</code> to sync (copy changes from) one table into another.</p>

        <div class="lc-card">
          <h3>The Three Write Statements</h3>
        <div class="lc-code">INSERT INTO stock (sku, name, qty, price) VALUES ('PEN-01', 'Gel pen', 100, 20.00);<br>INSERT INTO archive SELECT * FROM stock WHERE qty = 0;       -- insert from a query<br><br>UPDATE stock SET price = price * 1.10 WHERE qty &lt; 50;<br>UPDATE stock s SET qty = s.qty + d.qty                       -- update using another table<br>FROM delivery d WHERE d.sku = s.sku;<br><br>DELETE FROM stock WHERE qty = 0;<br>DELETE FROM stock s USING recalls r WHERE r.sku = s.sku;     -- delete using another table</div>
          <p>An <code>UPDATE</code> or <code>DELETE</code> without <code>WHERE</code> changes <strong>every row</strong>. So first run the same <code>WHERE</code> in a <code>SELECT</code> to check which rows match.</p>
        </div>

        <div class="lc-card">
          <h3>RETURNING: Get the Changed Rows Back</h3>
          <p>Add <code>RETURNING</code> to any <code>INSERT</code>, <code>UPDATE</code>, <code>DELETE</code> or (from PostgreSQL 17) <code>MERGE</code>. It gives you back the rows it wrote. This includes generated IDs and default values. You do not need a second query:</p>
        <div class="lc-code">UPDATE stock SET price = round(price * 1.10, 2)<br>WHERE qty &lt; 50<br>RETURNING sku, price AS new_price;</div>
          <p><strong>Output:</strong></p>
        <div class="lc-code">&nbsp;&nbsp;sku   | new_price<br>--------+----------<br>&nbsp;NB-A5  |     60.50<br>&nbsp;BAG-01 |    988.90</div>
          <p>PostgreSQL 18 adds <code>old</code> and <code>new</code> in <code>RETURNING</code>. For example: <code>RETURNING old.price, new.price</code>.</p>
        </div>

        <div class="lc-card">
          <h3>Upsert with INSERT ... ON CONFLICT</h3>
          <p>An upsert means "insert this row, but if it already exists, update it instead". It needs a <code>UNIQUE</code> or <code>PRIMARY KEY</code> constraint (a rule that stops duplicate values). This is how PostgreSQL finds the conflict. Inside <code>DO UPDATE</code>, <code>EXCLUDED</code> is the row you tried to insert. The table name means the row that is already stored:</p>
        <div class="lc-code">INSERT INTO stock (sku, name, qty, price) VALUES<br>&nbsp;&nbsp;('PEN-01', 'Gel pen', 50, 20.00),   -- exists: qty goes up<br>&nbsp;&nbsp;('ERS-01', 'Eraser',  30,  5.00)    -- new: inserted<br>ON CONFLICT (sku) DO UPDATE<br>&nbsp;&nbsp;SET qty = stock.qty + EXCLUDED.qty<br>RETURNING sku, qty;</div>
          <p><strong>Output:</strong></p>
        <div class="lc-code">&nbsp;&nbsp;sku   | qty<br>--------+-----<br>&nbsp;PEN-01 | 150<br>&nbsp;ERS-01 |  30</div>
          <p><code>ON CONFLICT (sku) DO NOTHING</code> just skips duplicates. <code>ON CONFLICT</code> is safe when many users upsert at the same time. PostgreSQL always does an insert or an update. You never get a duplicate-key error.</p>
        </div>

        <div class="lc-card">
          <h3>MERGE: Sync From a Source (PostgreSQL 15+)</h3>
          <p><code>MERGE</code> compares a target table with a source. Then it runs a different action for each case:</p>
        <div class="lc-code">MERGE INTO stock s<br>USING delivery d ON s.sku = d.sku<br>WHEN MATCHED AND d.qty &lt; 0 THEN DELETE<br>WHEN MATCHED THEN UPDATE SET qty = s.qty + d.qty<br>WHEN NOT MATCHED THEN INSERT (sku, name, qty, price)<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;VALUES (d.sku, d.name, d.qty, d.price)<br>RETURNING merge_action() AS action, s.sku, s.qty;   -- RETURNING needs 17+</div>
          <p><strong>Output:</strong></p>
        <div class="lc-code">&nbsp;action |  sku   | qty<br>--------+--------+-----<br>&nbsp;UPDATE | NB-A5  |  60<br>&nbsp;DELETE | BAG-01 |   5<br>&nbsp;INSERT | GLU-01 |  25</div>
          <p>PostgreSQL checks the <code>WHEN</code> clauses in order. The first one that matches is used. PostgreSQL 17 also added <code>WHEN NOT MATCHED BY SOURCE</code>. It handles target rows that are missing from the source.</p>
        </div>

        <div class="lc-card">
          <h3>ON CONFLICT or MERGE?</h3>
          <table class="lc-table">
            <thead><tr><th></th><th>INSERT ... ON CONFLICT</th><th>MERGE</th></tr></thead>
            <tbody>
              <tr><td>Available</td><td>PostgreSQL 9.5+</td><td>PostgreSQL 15+ (SQL standard)</td></tr>
              <tr><td>Actions</td><td>Insert, or update / do nothing</td><td>Insert, update, delete or do nothing, for each condition</td></tr>
              <tr><td>Needs a unique constraint</td><td>Yes</td><td>No (any join condition)</td></tr>
              <tr><td>Many users at once</td><td>Safe: never a duplicate-key error</td><td>You can get a unique violation error if two sessions insert the same key</td></tr>
              <tr><td>Best for</td><td>App upserts (one row, many users)</td><td>Syncing many rows at once, and ETL jobs (jobs that move data between systems)</td></tr>
            </tbody>
          </table>
        </div>

        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li><code>UPDATE</code> or <code>DELETE</code> with no <code>WHERE</code>.</li>
            <li>Using <code>ON CONFLICT (email)</code> when <code>email</code> has no unique constraint. You get this error: <em>there is no unique or exclusion constraint matching the ON CONFLICT specification</em>.</li>
            <li>Listing the same key twice in one upsert. You get this error: <em>ON CONFLICT DO UPDATE command cannot affect row a second time</em>. Remove duplicates from the input first.</li>
            <li>Doing "SELECT, then INSERT if missing" in your application code. Two users can both see "missing" at the same time. Use <code>ON CONFLICT</code> instead.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>Upsert <code>('NB-A5', 'Notebook', 10, 50.00)</code>. It should add 10 to qty and also set the new price.</li>
            <li>Add a <code>WHERE</code> to the <code>DO UPDATE</code> so it only updates when <code>EXCLUDED.qty &gt; 0</code>.</li>
            <li>Add a <code>WHEN MATCHED AND d.qty = 0 THEN DO NOTHING</code> branch to the MERGE. Put it before the others, then test it.</li>
          </ol>
        </div>

        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Web apps use <code>INSERT ... RETURNING id</code> to get the ID of a row they just created. It needs only one trip to the database. There are no race conditions (bugs when two users act at the same time).
        </div>
      HTML
      starter_code: <<~'SQL'
        -- Lesson 12: INSERT, UPDATE, DELETE, RETURNING, upserts and MERGE
        CREATE TABLE stock (
          sku     text PRIMARY KEY,
          name    text          NOT NULL,
          qty     integer       NOT NULL CHECK (qty >= 0),
          price   numeric(10,2) NOT NULL
        );

        -- 1. INSERT ... RETURNING gives back what was written
        INSERT INTO stock (sku, name, qty, price) VALUES
          ('PEN-01', 'Gel pen',   100, 20.00),
          ('NB-A5',  'Notebook',   40, 55.00),
          ('BAG-01', 'Backpack',    5, 899.00)
        RETURNING sku, qty;

        -- 2. UPDATE ... RETURNING: 10% price rise on low-stock items
        UPDATE stock SET price = round(price * 1.10, 2)
        WHERE qty < 50
        RETURNING sku, price AS new_price;

        -- 3. Upsert: insert new SKUs, add to qty for existing ones
        INSERT INTO stock (sku, name, qty, price) VALUES
          ('PEN-01', 'Gel pen', 50, 20.00),      -- exists: qty goes up
          ('ERS-01', 'Eraser',  30,  5.00)       -- new: inserted
        ON CONFLICT (sku) DO UPDATE
          SET qty = stock.qty + EXCLUDED.qty
        RETURNING sku, qty;

        -- 4. ON CONFLICT DO NOTHING: skip duplicates silently (returns no rows)
        INSERT INTO stock VALUES ('NB-A5', 'Dup', 1, 1) ON CONFLICT (sku) DO NOTHING RETURNING sku;

        -- 5. MERGE (PostgreSQL 15+; RETURNING needs 17+) syncs from a delivery list
        CREATE TABLE delivery (sku text, name text, qty integer, price numeric(10,2));
        INSERT INTO delivery VALUES
          ('NB-A5',  'Notebook', 20, 55.00),
          ('BAG-01', 'Backpack', -5, 899.00),     -- negative = recall all
          ('GLU-01', 'Glue',     25, 30.00);

        MERGE INTO stock s
        USING delivery d ON s.sku = d.sku
        WHEN MATCHED AND d.qty < 0 THEN DELETE
        WHEN MATCHED THEN UPDATE SET qty = s.qty + d.qty
        WHEN NOT MATCHED THEN INSERT (sku, name, qty, price)
                              VALUES (d.sku, d.name, d.qty, d.price)
        RETURNING merge_action() AS action, s.sku, s.qty;

        -- 6. DELETE ... RETURNING and the final state
        DELETE FROM stock WHERE qty < 35 RETURNING sku AS removed;
        SELECT sku, name, qty, price FROM stock ORDER BY sku;
      SQL
    },

    13 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-postgresql">PostgreSQL</div>
          <h1 class="lc-title">Transactions, MVCC and Isolation</h1>
        </div>
        <p class="lc-lead">A transaction groups statements so they succeed or fail <strong>together</strong>. You will use <code>BEGIN</code>, <code>COMMIT</code>, <code>ROLLBACK</code> and savepoints. You will see how PostgreSQL's MVCC lets readers and writers work without blocking each other. You will also learn to choose the right isolation level.</p>

        <div class="lc-card">
          <h3>ACID in Plain Words</h3>
          <table class="lc-table">
            <thead><tr><th>Letter</th><th>Meaning</th></tr></thead>
            <tbody>
              <tr><td><strong>A</strong>tomic</td><td>All statements happen, or none do</td></tr>
              <tr><td><strong>C</strong>onsistent</td><td>Constraints hold before and after</td></tr>
              <tr><td><strong>I</strong>solated</td><td>Transactions running at the same time don't see each other's half-done work</td></tr>
              <tr><td><strong>D</strong>urable</td><td>After <code>COMMIT</code>, the data survives a crash</td></tr>
            </tbody>
          </table>
          <p>Without <code>BEGIN</code>, each statement is its own transaction. This is called autocommit.</p>
        </div>

        <div class="lc-card">
          <h3>BEGIN, COMMIT, ROLLBACK, SAVEPOINT</h3>
        <div class="lc-code">BEGIN;<br>&nbsp;&nbsp;UPDATE accounts SET balance = balance - 1500 WHERE id = 1;<br>&nbsp;&nbsp;UPDATE accounts SET balance = balance + 1500 WHERE id = 2;<br>COMMIT;                                 -- both saved<br><br>BEGIN;<br>&nbsp;&nbsp;UPDATE accounts SET balance = balance + 100 WHERE id = 3;<br>&nbsp;&nbsp;SAVEPOINT before_bonus;<br>&nbsp;&nbsp;UPDATE accounts SET balance = balance + 9999 WHERE id = 3;<br>&nbsp;&nbsp;ROLLBACK TO SAVEPOINT before_bonus;   -- undo only the +9999<br>COMMIT;                                 -- Kiran: 300 + 100 = 400</div>
          <p>If any statement inside a transaction fails, PostgreSQL marks the whole transaction as failed. You see: <em>current transaction is aborted, commands ignored until end of transaction block</em>. You must run <code>ROLLBACK</code> (or roll back to a savepoint).</p>
          <p>DDL (statements that create or change tables) also works inside transactions. <code>BEGIN; CREATE TABLE ...; ROLLBACK;</code> leaves no table behind. MySQL can't do that.</p>
        </div>

        <div class="lc-card">
          <h3>MVCC: How PostgreSQL Handles Many Users</h3>
          <p>MVCC stands for Multi-Version Concurrency Control. An <code>UPDATE</code> doesn't overwrite a row. It writes a <strong>new version</strong> and marks the old one as expired. Each transaction reads from a <strong>snapshot</strong> (a saved view of the data at one moment). It sees the versions that were committed when its snapshot was taken.</p>
          <ul class="lc-list">
            <li>Readers never wait for writers, and writers never wait for readers.</li>
            <li>Two writers updating the <strong>same row</strong> do wait. The second one waits until the first commits or rolls back.</li>
            <li><code>VACUUM</code> cleans up old row versions later. The <strong>autovacuum</strong> background process runs it for you.</li>
          </ul>
          <p>The starter code shows this with <code>ctid</code> (where a row is physically stored):</p>
        <div class="lc-code">&nbsp;id | physical_location                  id | physical_location_after_update<br>----+-------------------                 ----+-------------------------------<br>&nbsp;&nbsp;1 | (0,1)                                1 | (0,4)</div>
          <p>The update changed nothing, but it still wrote a new version at slot 4.</p>
        </div>

        <div class="lc-card">
          <h3>Two Sessions, One Row</h3>
        <div class="lc-code">Session A                              Session B<br>BEGIN;<br>UPDATE accounts SET balance = 0<br>&nbsp;&nbsp;WHERE id = 1;       (not committed)<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;SELECT balance FROM accounts WHERE id = 1;<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-&gt; 3500   (old version: no dirty read)<br>COMMIT;<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;SELECT balance FROM accounts WHERE id = 1;<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-&gt; 0      (READ COMMITTED sees new commits)</div>
        </div>

        <div class="lc-card">
          <h3>Isolation Levels in PostgreSQL</h3>
          <table class="lc-table">
            <thead><tr><th>Level</th><th>Dirty read</th><th>Non-repeatable read</th><th>Phantom read</th><th>Serialization anomaly</th></tr></thead>
            <tbody>
              <tr><td><code>READ COMMITTED</code> (default)</td><td>Prevented</td><td>Possible</td><td>Possible</td><td>Possible</td></tr>
              <tr><td><code>REPEATABLE READ</code></td><td>Prevented</td><td>Prevented</td><td><strong>Prevented</strong> (in PostgreSQL)</td><td>Possible</td></tr>
              <tr><td><code>SERIALIZABLE</code></td><td>Prevented</td><td>Prevented</td><td>Prevented</td><td>Prevented</td></tr>
            </tbody>
          </table>
          <ul class="lc-list">
            <li><strong>READ COMMITTED</strong>: each <em>statement</em> gets a new snapshot.</li>
            <li><strong>REPEATABLE READ</strong>: the whole <em>transaction</em> uses one snapshot. So if you run a query again, you get the same rows. New matching rows (phantoms) don't appear either. The SQL standard allows phantoms here, but PostgreSQL is stricter. It can still allow "write skew". This is when two transactions each read, then write different rows.</li>
            <li><strong>SERIALIZABLE</strong>: the result is the same as if transactions ran one at a time.</li>
            <li>At REPEATABLE READ and SERIALIZABLE, PostgreSQL may cancel a transaction with a serialization error (SQLSTATE <code>40001</code>). Your application must <strong>retry</strong> (run again) the transaction.</li>
            <li>PostgreSQL accepts <code>READ UNCOMMITTED</code>, but it works like READ COMMITTED. PostgreSQL never shows dirty reads (data that is not yet committed).</li>
          </ul>
        <div class="lc-code">BEGIN ISOLATION LEVEL REPEATABLE READ;   -- must come before the first query<br>&nbsp;&nbsp;SELECT sum(balance) FROM accounts;     -- 6400.00, and it stays 6400.00 until COMMIT<br>COMMIT;</div>
        </div>

        <div class="lc-card">
          <h3>Locking a Row You Will Change</h3>
          <p><code>SELECT ... FOR UPDATE</code> locks the selected rows until the transaction ends. So nobody else can change them between your read and your write:</p>
        <div class="lc-code">BEGIN;<br>SELECT balance FROM accounts WHERE id = 1 FOR UPDATE;<br>-- check the balance in your code, then:<br>UPDATE accounts SET balance = balance - 500 WHERE id = 1;<br>COMMIT;</div>
        </div>

        <div class="lc-card">
          <h3>Deadlocks</h3>
          <p>A deadlock happens when two transactions each hold a lock that the other one needs:</p>
        <div class="lc-code">Session A                                  Session B<br>BEGIN;                                     BEGIN;<br>UPDATE accounts ... WHERE id = 1;          UPDATE accounts ... WHERE id = 2;<br>UPDATE accounts ... WHERE id = 2;  (waits for B)<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;UPDATE accounts ... WHERE id = 1;  (waits for A)<br>-&gt; after about 1 second (deadlock_timeout) PostgreSQL cancels one of them:<br>&nbsp;&nbsp;&nbsp;ERROR:&nbsp;&nbsp;deadlock detected   (SQLSTATE 40P01)</div>
          <p>PostgreSQL finds this by itself, so it never waits forever. It rolls back the cancelled transaction, and your application should retry it. The best way to prevent deadlocks is to lock rows in the <strong>same order</strong> everywhere. For example, always lock by <code>id</code> from smallest to largest (<code>SELECT ... WHERE id IN (1, 2) ORDER BY id FOR UPDATE</code>).</p>
        </div>

        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Leaving a transaction open ("idle in transaction"). It keeps its locks and stops VACUUM from cleaning up.</li>
            <li>Using SERIALIZABLE without retry code. Serialization errors are normal at this level. They are not bugs.</li>
            <li>Reading a value, doing the maths in the app, and writing it back without <code>FOR UPDATE</code> or <code>SET balance = balance - 500</code>. Two users can overwrite each other's change. This is called a "lost update".</li>
            <li>Thinking REPEATABLE READ allows phantom reads in PostgreSQL. It doesn't.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>Inside a transaction, try to set Kiran's balance to -1. The <code>CHECK</code> fails. Then run <code>SELECT 1;</code>. Which error do you get? End with <code>ROLLBACK</code>.</li>
            <li>Add a second savepoint and roll back to the first one. Which changes survive?</li>
            <li>Print <code>ctid</code> for all three accounts at the end of the script. Which rows moved, and why?</li>
          </ol>
        </div>

        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Keep transactions short: begin, do the writes, then commit. Never wait for user input or a slow API call while a transaction is open.
        </div>
      HTML
      starter_code: <<~'SQL'
        -- Lesson 13: Transactions, MVCC and isolation
        CREATE TABLE accounts (
          id      integer PRIMARY KEY,
          owner   text          NOT NULL,
          balance numeric(12,2) NOT NULL CHECK (balance >= 0)
        );
        INSERT INTO accounts VALUES (1, 'Isha', 5000), (2, 'Jay', 1000), (3, 'Kiran', 300);

        -- 1. MVCC: an UPDATE writes a NEW row version (look at ctid)
        SELECT id, ctid AS physical_location FROM accounts WHERE id = 1;
        UPDATE accounts SET balance = balance WHERE id = 1;
        SELECT id, ctid AS physical_location_after_update FROM accounts WHERE id = 1;

        -- 2. A transfer: both updates happen, or neither does
        BEGIN;
          UPDATE accounts SET balance = balance - 1500 WHERE id = 1;
          UPDATE accounts SET balance = balance + 1500 WHERE id = 2;
        COMMIT;
        SELECT owner, balance AS after_commit FROM accounts ORDER BY id;

        -- 3. ROLLBACK undoes everything since BEGIN
        BEGIN;
          UPDATE accounts SET balance = 0;
        ROLLBACK;
        SELECT owner, balance AS after_rollback FROM accounts ORDER BY id;

        -- 4. SAVEPOINT: undo only part of a transaction
        BEGIN;
          UPDATE accounts SET balance = balance + 100 WHERE id = 3;   -- keep
          SAVEPOINT before_bonus;
          UPDATE accounts SET balance = balance + 9999 WHERE id = 3;  -- mistake
          ROLLBACK TO SAVEPOINT before_bonus;
          SELECT owner, balance AS after_savepoint FROM accounts WHERE id = 3;
        COMMIT;

        -- 5. Choosing an isolation level (must be set before the first query)
        BEGIN ISOLATION LEVEL REPEATABLE READ;
          SELECT current_setting('transaction_isolation') AS level_inside;
          SELECT sum(balance) AS total_money FROM accounts;  -- one snapshot for the whole transaction
        COMMIT;

        -- 6. DDL is transactional too
        BEGIN;
          CREATE TABLE temp_report (x integer);
        ROLLBACK;
        SELECT to_regclass('temp_report') IS NULL AS table_was_rolled_back,
               current_setting('transaction_isolation') AS default_level;
      SQL
    },

    14 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-postgresql">PostgreSQL</div>
          <h1 class="lc-title">Indexes and EXPLAIN ANALYZE</h1>
        </div>
        <p class="lc-lead">An index is a sorted list that helps PostgreSQL find rows fast, like the index at the back of a book. The right index can make a query take milliseconds instead of seconds. <code>EXPLAIN</code> shows the plan PostgreSQL chose. <code>EXPLAIN ANALYZE</code> runs the query and shows what really happened.</p>

        <div class="lc-card">
          <h3>Index Types</h3>
          <table class="lc-table">
            <thead><tr><th>Type</th><th>Good for</th></tr></thead>
            <tbody>
              <tr><td><strong>B-tree</strong> (default)</td><td><code>=</code>, <code>&lt;</code>, <code>&gt;</code>, <code>BETWEEN</code>, <code>ORDER BY</code>, <code>LIKE 'abc%'</code> (with the C collation or a <code>text_pattern_ops</code> index)</td></tr>
              <tr><td><strong>GIN</strong></td><td>Values with many parts: <code>jsonb</code> (<code>@&gt;</code>, <code>?</code>), arrays (<code>@&gt;</code>, <code>&amp;&amp;</code>), full-text search (<code>@@</code>)</td></tr>
              <tr><td><strong>GiST</strong></td><td>Ranges, geometry, "overlaps" and nearest-neighbour searches, <code>EXCLUDE</code> constraints</td></tr>
              <tr><td><strong>BRIN</strong></td><td>Huge tables whose rows are stored in order, for example logs that only get new rows, sorted by time. The index is tiny.</td></tr>
              <tr><td><strong>Hash</strong></td><td>Only <code>=</code>. Rarely better than B-tree.</td></tr>
            </tbody>
          </table>
          <p>PostgreSQL automatically creates a B-tree index for every <code>PRIMARY KEY</code> and <code>UNIQUE</code> constraint. It does <strong>not</strong> index foreign keys for you.</p>
        </div>

        <div class="lc-card">
          <h3>Special B-tree Indexes</h3>
        <div class="lc-code">CREATE INDEX users_email_idx ON users (email);                       -- plain<br>CREATE INDEX orders_cust_day_idx ON orders (customer_id, order_day);  -- multi-column<br>CREATE INDEX users_email_lower_idx ON users (lower(email));           -- expression<br>CREATE INDEX users_active_signup_idx ON users (signup_day) WHERE is_active;  -- partial<br>CREATE UNIQUE INDEX users_email_uniq ON users (lower(email));         -- case-insensitive unique</div>
          <ul class="lc-list">
            <li><strong>Multi-column</strong>: works best when the query filters on the <em>first</em> column(s). An index on <code>(customer_id, order_day)</code> helps <code>WHERE customer_id = 5</code>. It usually does not help <code>WHERE order_day = ...</code> alone. The "skip scan" in PostgreSQL 18 can sometimes use it anyway.</li>
            <li><strong>Expression</strong>: the query must use the same expression. <code>WHERE lower(email) = ...</code> can't use a plain <code>email</code> index.</li>
            <li><strong>Partial</strong>: indexes only the rows that match its <code>WHERE</code>. It is smaller and faster when you always query that part of the table.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Reading EXPLAIN Output</h3>
        <div class="lc-code">EXPLAIN ANALYZE SELECT id FROM users WHERE email = 'User777@Example.com';<br><br>Index Scan using users_email_idx on users  (cost=0.29..8.30 rows=1 width=4)<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(actual time=0.031..0.032 rows=1 loops=1)<br>&nbsp;&nbsp;Index Cond: (email = 'User777@Example.com'::text)<br>Planning Time: 0.110 ms<br>Execution Time: 0.050 ms</div>
          <table class="lc-table">
            <thead><tr><th>Part</th><th>Meaning</th></tr></thead>
            <tbody>
              <tr><td><code>Seq Scan</code></td><td>Reads every row. Fine for small tables or when most rows match.</td></tr>
              <tr><td><code>Index Scan</code> / <code>Index Only Scan</code></td><td>Uses the index to find a few rows. Index Only does not even visit the table.</td></tr>
              <tr><td><code>Bitmap Index Scan</code> + <code>Bitmap Heap Scan</code></td><td>Gets the locations of matching rows from the index, then reads them in page order. Used when "some" rows match.</td></tr>
              <tr><td><code>Nested Loop</code>, <code>Hash Join</code>, <code>Merge Join</code></td><td>How two tables are joined.</td></tr>
              <tr><td><code>cost=0.29..8.30</code></td><td>The planner's guess (startup..total) in its own units, not seconds. Use it to compare plans.</td></tr>
              <tr><td><code>rows=1</code> vs <code>actual ... rows=1</code></td><td>Guessed vs real row count. A big difference means the statistics are old. Run <code>ANALYZE</code>.</td></tr>
              <tr><td><code>loops</code></td><td>How many times this step ran. Multiply its time and rows by loops to get the total.</td></tr>
            </tbody>
          </table>
          <p>Your timing numbers will be different from these. PostgreSQL 18 also shows buffer (I/O) counts by default with <code>ANALYZE</code>.</p>
        </div>

        <div class="lc-card">
          <h3>Worked Example: Before and After</h3>
          <p>The starter code fills <code>users</code> with 20,000 rows. It runs <code>EXPLAIN (COSTS OFF)</code> so the output is the same every time. Before the index:</p>
        <div class="lc-code">Seq Scan on users<br>&nbsp;&nbsp;Filter: (email = 'User777@Example.com'::text)</div>
          <p>After <code>CREATE INDEX users_email_idx ON users (email)</code>:</p>
        <div class="lc-code">Index Scan using users_email_idx on users<br>&nbsp;&nbsp;Index Cond: (email = 'User777@Example.com'::text)</div>
          <p>Run <code>EXPLAIN (ANALYZE, COSTS OFF, TIMING OFF, SUMMARY OFF)</code> on the <code>lower(email)</code> query. You see the real row counts:</p>
        <div class="lc-code">Bitmap Heap Scan on users (actual rows=1 loops=1)<br>&nbsp;&nbsp;Recheck Cond: (lower(email) = 'user777@example.com'::text)<br>&nbsp;&nbsp;Heap Blocks: exact=1<br>&nbsp;&nbsp;-&gt;  Bitmap Index Scan on users_email_lower_idx (actual rows=1 loops=1)<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Index Cond: (lower(email) = 'user777@example.com'::text)</div>
          <p>Last, the sizes: the full <code>email</code> index is about 800 kB. The partial index is only 16 kB.</p>
        </div>

        <div class="lc-card">
          <h3>Indexes Are Not Free</h3>
          <ul class="lc-list">
            <li>Every <code>INSERT</code>/<code>UPDATE</code>/<code>DELETE</code> must also update every index on the table.</li>
            <li>Indexes use disk and memory. Drop the ones you don't use (check <code>pg_stat_user_indexes.idx_scan</code>).</li>
            <li>On a live production table, use <code>CREATE INDEX CONCURRENTLY</code>. It doesn't block writes. It can't run inside a transaction block.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Declarative Partitioning for Very Big Tables</h3>
          <p>Sometimes one table grows to hundreds of millions of rows (orders, logs, sensor readings). Then you can split it into <strong>partitions</strong> (smaller child tables). You still query the parent table. PostgreSQL stores each row in the right child table. It also skips partitions that cannot match. This is called <strong>partition pruning</strong>. To remove a whole old year, you run <code>DROP TABLE orders_2025</code> instead of a slow <code>DELETE</code>.</p>
        <div class="lc-code">CREATE TABLE orders (<br>&nbsp;&nbsp;id&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;bigint GENERATED ALWAYS AS IDENTITY,<br>&nbsp;&nbsp;order_day date&nbsp;&nbsp;&nbsp;&nbsp;NOT NULL,<br>&nbsp;&nbsp;amount&nbsp;&nbsp;&nbsp;&nbsp;numeric(10,2) NOT NULL<br>) PARTITION BY RANGE (order_day);<br><br>CREATE TABLE orders_2025 PARTITION OF orders FOR VALUES FROM ('2025-01-01') TO ('2026-01-01');<br>CREATE TABLE orders_2026 PARTITION OF orders FOR VALUES FROM ('2026-01-01') TO ('2027-01-01');<br><br>INSERT INTO orders (order_day, amount)<br>VALUES ('2025-11-03', 499), ('2026-02-14', 1299), ('2026-09-25', 250);<br><br>SELECT tableoid::regclass AS partition, order_day, amount FROM orders ORDER BY order_day;<br>EXPLAIN (COSTS OFF) SELECT sum(amount) FROM orders WHERE order_day &gt;= '2026-06-01';</div>
          <p><strong>Output:</strong></p>
        <div class="lc-code">&nbsp;&nbsp;partition&nbsp;&nbsp;| order_day&nbsp;&nbsp;| amount<br>-------------+------------+---------<br>&nbsp;orders_2025 | 2025-11-03 |&nbsp;&nbsp;499.00<br>&nbsp;orders_2026 | 2026-02-14 | 1299.00<br>&nbsp;orders_2026 | 2026-09-25 |&nbsp;&nbsp;250.00<br><br>&nbsp;Aggregate<br>&nbsp;&nbsp;&nbsp;-&gt;&nbsp;&nbsp;Seq Scan on orders_2026 orders<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Filter: (order_day &gt;= '2026-06-01'::date)</div>
          <p>The plan reads only <code>orders_2026</code>. Each range includes the <em>from</em> value but not the <em>to</em> value. Inserting a 2027 order fails with <code>ERROR: no partition of relation "orders" found for row</code>. So create next year's partition early (or add a <code>DEFAULT</code> partition). You can also partition <code>BY LIST (state)</code> or <code>BY HASH (id)</code>. Partitioning helps only when most queries filter on the partition key. For a few million rows, a good index is usually enough.</p>
        </div>

        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Running <code>EXPLAIN ANALYZE</code> on a <code>DELETE</code> or <code>UPDATE</code>. It really runs the statement! Put it inside <code>BEGIN; ... ROLLBACK;</code>.</li>
            <li>Putting an indexed column inside a function (<code>WHERE lower(email) = ...</code>, <code>WHERE date(created_at) = ...</code>) without a matching expression index.</li>
            <li>Testing on a 10-row table. The planner correctly chooses a Seq Scan there. Test with real-sized data.</li>
            <li>Adding an index for every column "just in case".</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>Run <code>EXPLAIN (COSTS OFF) SELECT count(*) FROM users WHERE city = 'London';</code>. A quarter of all rows match. Would an index on <code>city</code> help? Try it.</li>
            <li>Create an index on <code>(city, signup_day)</code> and explain <code>WHERE city = 'Chicago' AND signup_day = '2024-03-01'</code>.</li>
            <li>Remove <code>COSTS OFF</code> from one <code>EXPLAIN</code> and read the cost and row estimates.</li>
          </ol>
        </div>

        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Base your changes on measurements. Find the slow query (the <code>pg_stat_statements</code> extension is the standard tool on real servers). Run <code>EXPLAIN ANALYZE</code>, add one index, and measure again.
        </div>
      HTML
      starter_code: <<~'SQL'
        -- Lesson 14: Indexes and EXPLAIN ANALYZE
        CREATE TABLE users (
          id         integer GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
          email      text    NOT NULL,
          city       text    NOT NULL,
          is_active  boolean NOT NULL,
          signup_day date    NOT NULL
        );

        -- 20,000 predictable rows
        INSERT INTO users (email, city, is_active, signup_day)
        SELECT 'User' || g || '@Example.com',
               (ARRAY['Chicago','New York','London','Manchester'])[1 + g % 4],
               g % 50 = 0,                             -- only 2% are active
               date '2024-01-01' + (g % 700)
        FROM generate_series(1, 20000) AS g;
        ANALYZE users;   -- refresh planner statistics

        -- 1. No index on email yet: a full table scan
        EXPLAIN (COSTS OFF)
        SELECT id FROM users WHERE email = 'User777@Example.com';

        -- 2. B-tree index: now an Index Scan
        CREATE INDEX users_email_idx ON users (email);
        EXPLAIN (COSTS OFF)
        SELECT id FROM users WHERE email = 'User777@Example.com';

        -- 3. lower(email) cannot use that index... add an expression index
        CREATE INDEX users_email_lower_idx ON users (lower(email));
        EXPLAIN (COSTS OFF)
        SELECT id FROM users WHERE lower(email) = 'user777@example.com';

        -- 4. Partial index: only the 2% of rows we query often
        CREATE INDEX users_active_signup_idx ON users (signup_day) WHERE is_active;
        EXPLAIN (COSTS OFF)
        SELECT count(*) FROM users WHERE is_active AND signup_day >= '2025-06-01';

        -- 5. EXPLAIN ANALYZE really runs the query and shows actual rows
        EXPLAIN (ANALYZE, COSTS OFF, TIMING OFF, SUMMARY OFF)
        SELECT id FROM users WHERE lower(email) = 'user777@example.com';

        -- 6. Sizes: the partial index is tiny
        SELECT relname AS index_name,
               pg_relation_size(oid) / 1024 AS size_kb
        FROM pg_class
        WHERE relname IN ('users_email_idx', 'users_active_signup_idx')
        ORDER BY relname;
      SQL
    },

    15 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-postgresql">PostgreSQL</div>
          <h1 class="lc-title">JSON and JSONB</h1>
        </div>
        <p class="lc-lead">PostgreSQL can store JSON documents in a column. You can query inside them with operators and indexes. Use <code>jsonb</code> for data whose shape can change, such as settings, event payloads or API responses. Keep regular columns for the fields you always filter and join on.</p>

        <div class="lc-card">
          <h3>json vs jsonb</h3>
          <table class="lc-table">
            <thead><tr><th></th><th><code>json</code></th><th><code>jsonb</code></th></tr></thead>
            <tbody>
              <tr><td>Stored as</td><td>The exact input text</td><td>A parsed binary form (already read and converted)</td></tr>
              <tr><td>Whitespace, key order</td><td>Kept</td><td>Not kept (keys are re-ordered)</td></tr>
              <tr><td>Duplicate keys</td><td>Kept</td><td>Last one wins</td></tr>
              <tr><td>Operators like <code>@&gt;</code>, <code>?</code></td><td>No</td><td>Yes</td></tr>
              <tr><td>GIN indexing</td><td>No</td><td>Yes</td></tr>
            </tbody>
          </table>
          <p>Use <code>jsonb</code> unless you must keep the exact original text.</p>
        </div>

        <div class="lc-card">
          <h3>Operators</h3>
          <table class="lc-table">
            <thead><tr><th>Operator</th><th>Meaning</th><th>Example</th></tr></thead>
            <tbody>
              <tr><td><code>-&gt;</code></td><td>Get key/element as <code>jsonb</code></td><td><code>payload -&gt; 'device'</code></td></tr>
              <tr><td><code>-&gt;&gt;</code></td><td>Get key/element as <code>text</code></td><td><code>payload -&gt;&gt; 'user'</code></td></tr>
              <tr><td><code>#&gt;</code>, <code>#&gt;&gt;</code></td><td>Follow a path (jsonb / text)</td><td><code>payload #&gt;&gt; '{device,os}'</code></td></tr>
              <tr><td><code>@&gt;</code></td><td>Contains</td><td><code>payload @&gt; '{"plan": "pro"}'</code></td></tr>
              <tr><td><code>?</code>, <code>?|</code>, <code>?&amp;</code></td><td>Key exists / any exist / all exist</td><td><code>payload ? 'ref'</code></td></tr>
              <tr><td><code>||</code></td><td>Merge two objects</td><td><code>payload || '{"verified": true}'</code></td></tr>
              <tr><td><code>-</code>, <code>#-</code></td><td>Remove a key / a path</td><td><code>payload - 'plan'</code></td></tr>
            </tbody>
          </table>
          <p>Since PostgreSQL 14 you can also write <code>payload['user']</code> (subscripting). It returns <code>jsonb</code>, like <code>-&gt;</code>.</p>
        </div>

        <div class="lc-card">
          <h3>Worked Example: Querying Inside Documents</h3>
        <div class="lc-code">SELECT pg_typeof(payload -&gt; 'user')  AS arrow_type,<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;pg_typeof(payload -&gt;&gt; 'user') AS double_arrow_type,<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;payload -&gt;&gt; 'user'            AS user_text,<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;payload #&gt;&gt; '{device,os}'     AS os,<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(payload -&gt;&gt; 'amount')::int   AS amount<br>FROM events ORDER BY id;</div>
          <p><strong>Output:</strong></p>
        <div class="lc-code">&nbsp;arrow_type | double_arrow_type | user_text |   os    | amount<br>------------+-------------------+-----------+---------+-------<br>&nbsp;jsonb      | text              | meena     | android |<br>&nbsp;jsonb      | text              | meena     |         |    499<br>&nbsp;jsonb      | text              | nikhil    | ios     |<br>&nbsp;jsonb      | text              | nikhil    |         |    999</div>
          <p>A missing key gives NULL, not an error. To do maths, get the value as text with <code>-&gt;&gt;</code>. Then cast it (convert its type) with <code>::int</code> or <code>::numeric</code>.</p>
        </div>

        <div class="lc-card">
          <h3>Changing and Building JSON</h3>
        <div class="lc-code">SELECT jsonb_set(payload, '{device,ver}', '15') - 'plan' || '{"verified": true}' AS changed<br>FROM events WHERE id = 1;<br>-- {"user": "meena", "device": {"os": "android", "ver": 15}, "verified": true}</div>
          <table class="lc-table">
            <thead><tr><th>Function</th><th>Does</th></tr></thead>
            <tbody>
              <tr><td><code>jsonb_set(doc, path, value)</code></td><td>Replace (or add) a value at a path</td></tr>
              <tr><td><code>jsonb_build_object('k', v, ...)</code></td><td>Build an object from values</td></tr>
              <tr><td><code>jsonb_agg(expr)</code></td><td>Combine rows into one JSON array</td></tr>
              <tr><td><code>jsonb_array_elements(_text)(arr)</code></td><td>Turn an array into rows</td></tr>
              <tr><td><code>jsonb_each_text(obj)</code></td><td>Turn an object into key/value rows</td></tr>
              <tr><td><code>jsonb_path_query(doc, '$.items[*]')</code></td><td>SQL/JSON path queries</td></tr>
            </tbody>
          </table>
          <p>PostgreSQL 17 added the SQL-standard functions <code>JSON_VALUE</code>, <code>JSON_QUERY</code>, <code>JSON_EXISTS</code> and <code>JSON_TABLE</code>. The last one turns JSON into rows and columns:</p>
        <div class="lc-code">SELECT jt.* FROM events,<br>&nbsp;&nbsp;JSON_TABLE(payload, '$' COLUMNS (usr text PATH '$.user', amount int PATH '$.amount')) AS jt;</div>
        </div>

        <div class="lc-card">
          <h3>Indexing jsonb</h3>
        <div class="lc-code">CREATE INDEX events_payload_gin ON events USING gin (payload);                 -- supports @&gt;, ?, ?|, ?&amp;<br>CREATE INDEX events_payload_path ON events USING gin (payload jsonb_path_ops); -- smaller; @&gt; only (and jsonpath)<br>CREATE INDEX events_user_idx ON events ((payload -&gt;&gt; 'user'));                -- B-tree on one key</div>
          <p>A GIN index helps <code>payload @&gt; '{"plan": "pro"}'</code>. It does not help <code>payload -&gt;&gt; 'plan' = 'pro'</code>. For that, use an expression index on the key.</p>
        </div>

        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Writing <code>payload -&gt; 'user' = 'meena'</code>. The left side is jsonb. So PostgreSQL tries to read <code>'meena'</code> as JSON and fails (<em>invalid input syntax for type json</em>). Use <code>payload -&gt;&gt; 'user' = 'meena'</code>.</li>
            <li>Putting everything in one jsonb column. Some keys you always filter, join or add rules to. Put those in real columns with types and constraints.</li>
            <li>Writing JSON with single quotes inside, like <code>'{'plan': 'pro'}'</code>. JSON needs double quotes: <code>'{"plan": "pro"}'</code>.</li>
            <li>Expecting a GIN index to make <code>-&gt;&gt;</code> comparisons faster.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>Find all events from Android devices using <code>@&gt;</code>.</li>
            <li>Use <code>jsonb_each_text(payload)</code> on event 3 to list its keys and values.</li>
            <li>Build one JSON array of all users with <code>jsonb_agg(DISTINCT payload -&gt;&gt; 'user')</code>.</li>
          </ol>
        </div>

        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> A good pattern is "columns for structure, jsonb for extras". Make <code>id</code>, <code>user_id</code> and <code>created_at</code> columns. Put the details that change in a <code>jsonb</code> payload.
        </div>
      HTML
      starter_code: <<~'SQL'
        -- Lesson 15: JSON and JSONB
        CREATE TABLE events (
          id      integer GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
          kind    text  NOT NULL,
          payload jsonb NOT NULL
        );

        INSERT INTO events (kind, payload) VALUES
          ('signup',   '{"user": "meena", "plan": "free", "device": {"os": "android", "ver": 14}}'),
          ('purchase', '{"user": "meena", "plan": "pro",  "amount": 499, "items": ["course", "ebook"]}'),
          ('signup',   '{"user": "nikhil", "plan": "pro", "device": {"os": "ios", "ver": 17}, "ref": "yt"}'),
          ('purchase', '{"user": "nikhil", "plan": "pro", "amount": 999, "items": ["course"]}');

        -- 1. -> returns jsonb, ->> returns text, #>> follows a path
        SELECT pg_typeof(payload -> 'user')  AS arrow_type,
               pg_typeof(payload ->> 'user') AS double_arrow_type,
               payload ->> 'user'            AS user_text,
               payload #>> '{device,os}'     AS os,
               (payload ->> 'amount')::int   AS amount
        FROM events ORDER BY id;

        -- 2. Containment @> and key-exists ?
        SELECT id, kind FROM events WHERE payload @> '{"plan": "pro"}' ORDER BY id;
        SELECT id, payload ->> 'ref' AS ref FROM events WHERE payload ? 'ref';

        -- 3. Unpack an array into rows
        SELECT e.payload ->> 'user' AS buyer, item
        FROM events e, jsonb_array_elements_text(e.payload -> 'items') AS item
        ORDER BY buyer, item;

        -- 4. Modify: jsonb_set, || (merge) and - (remove key)
        SELECT jsonb_set(payload, '{device,ver}', '15') - 'plan' || '{"verified": true}' AS changed
        FROM events WHERE id = 1;

        -- 5. Build JSON from rows
        SELECT jsonb_build_object('user', payload ->> 'user',
                                  'spent', sum((payload ->> 'amount')::int)) AS summary
        FROM events WHERE kind = 'purchase'
        GROUP BY payload ->> 'user' ORDER BY 1;

        -- 6. GIN index makes @> fast on big tables
        CREATE INDEX events_payload_gin ON events USING gin (payload);
        SET enable_seqscan = off;   -- tiny table: force the planner to show the index
        EXPLAIN (COSTS OFF) SELECT id FROM events WHERE payload @> '{"plan": "pro"}';
        RESET enable_seqscan;
      SQL
    },

    16 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-postgresql">PostgreSQL</div>
          <h1 class="lc-title">Arrays</h1>
        </div>
        <p class="lc-lead">An array is a list of values stored in one column. Any PostgreSQL type can be an array: <code>text[]</code>, <code>integer[]</code>, even <code>date[]</code>. Arrays are good for short lists that belong to one row, such as tags or ratings. They have their own operators and index support.</p>

        <div class="lc-card">
          <h3>Creating and Reading Arrays</h3>
        <div class="lc-code">CREATE TABLE courses (<br>&nbsp;&nbsp;id     integer GENERATED ALWAYS AS IDENTITY PRIMARY KEY,<br>&nbsp;&nbsp;title  text   NOT NULL,<br>&nbsp;&nbsp;tags   text[] NOT NULL DEFAULT '{}'<br>);<br>INSERT INTO courses (title, tags) VALUES<br>&nbsp;&nbsp;('PostgreSQL Mastery', ARRAY['sql', 'postgres', 'backend']),   -- ARRAY[...] syntax<br>&nbsp;&nbsp;('Python Basics',      '{python,beginner}');                   -- literal syntax</div>
          <ul class="lc-list">
            <li>Arrays are <strong>1-indexed</strong> (counting starts at 1): <code>tags[1]</code> is the first element. A position past the end returns NULL, not an error.</li>
            <li>Slices (parts of an array): <code>tags[2:3]</code> returns an array of elements 2 and 3.</li>
            <li><code>cardinality(tags)</code> counts the elements (0 for an empty array). <code>array_length(tags, 1)</code> returns NULL for an empty array.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Operators</h3>
          <table class="lc-table">
            <thead><tr><th>Expression</th><th>True when</th><th>GIN index?</th></tr></thead>
            <tbody>
              <tr><td><code>tags @&gt; ARRAY['python','sql']</code></td><td>tags contains all of these</td><td>Yes</td></tr>
              <tr><td><code>tags &lt;@ ARRAY['sql','python','ml']</code></td><td>every tag is in this list</td><td>Yes</td></tr>
              <tr><td><code>tags &amp;&amp; ARRAY['frontend','ml']</code></td><td>they share at least one element</td><td>Yes</td></tr>
              <tr><td><code>'sql' = ANY (tags)</code></td><td>'sql' is one of the elements</td><td>No (use <code>@&gt;</code> for big tables)</td></tr>
              <tr><td><code>ARRAY[1,2] || ARRAY[3]</code></td><td>(joins the arrays) → <code>{1,2,3}</code></td><td>n/a</td></tr>
            </tbody>
          </table>
        </div>

        <div class="lc-card">
          <h3>Worked Example: unnest and array_agg</h3>
          <p><code>unnest</code> turns an array into rows. Then you can group, count and join them. <code>array_agg</code> does the opposite.</p>
        <div class="lc-code">SELECT tag, count(*) AS courses<br>FROM courses, unnest(tags) AS tag<br>GROUP BY tag<br>HAVING count(*) &gt; 1<br>ORDER BY tag;</div>
          <p><strong>Output:</strong></p>
        <div class="lc-code">&nbsp;&nbsp;tag   | courses<br>--------+--------<br>&nbsp;python |       2<br>&nbsp;sql    |       2</div>
          <p>The average-rating query uses <code>LEFT JOIN LATERAL unnest(scores) AS s ON true</code>. So "React Apps" still appears with NULL, even though it has no ratings.</p>
        </div>

        <div class="lc-card">
          <h3>Changing Arrays</h3>
          <table class="lc-table">
            <thead><tr><th>Function</th><th>Example → result</th></tr></thead>
            <tbody>
              <tr><td><code>array_append(a, x)</code></td><td><code>array_append('{sql}', 'popular')</code> → <code>{sql,popular}</code></td></tr>
              <tr><td><code>array_remove(a, x)</code></td><td>removes every element that equals x</td></tr>
              <tr><td><code>array_position(a, x)</code></td><td>position of x, or NULL</td></tr>
              <tr><td><code>array_to_string(a, ' | ')</code></td><td><code>sql | postgres | backend</code></td></tr>
              <tr><td><code>string_to_array('a,b', ',')</code></td><td><code>{a,b}</code></td></tr>
            </tbody>
          </table>
        </div>

        <div class="lc-card">
          <h3>Array Column or Separate Table?</h3>
          <table class="lc-table">
            <thead><tr><th>Use an array when…</th><th>Use a separate table when…</th></tr></thead>
            <tbody>
              <tr><td>The list is short and belongs only to this row (tags, phone numbers)</td><td>Each element needs its own columns (a tag's colour, created date)</td></tr>
              <tr><td>You read and write the list as a whole</td><td>You need foreign keys to another table</td></tr>
              <tr><td>Queries are "contains" / "overlaps"</td><td>You often update single elements or count across all rows</td></tr>
            </tbody>
          </table>
          <p>Array elements can't have foreign keys (links to rows in another table). Maybe each tag must exist in a <code>tags</code> table. Then use a join table like <code>course_tags(course_id, tag_id)</code>.</p>
        </div>

        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Using <code>tags[0]</code>. PostgreSQL arrays start at 1, so this returns NULL.</li>
            <li>Writing <code>WHERE tags = 'sql'</code>. That compares the whole array. Use <code>'sql' = ANY (tags)</code> or <code>tags @&gt; '{sql}'</code>.</li>
            <li>Using <code>= ANY</code> and expecting the GIN index to help. Write it with <code>@&gt;</code> instead.</li>
            <li>Storing lists as comma-separated text (<code>'sql,python'</code>). You lose the operators, the index support and type checking. Use a real array.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>Find courses tagged <code>python</code> but not <code>ml</code>.</li>
            <li>Add the tag <code>'bestseller'</code> to every course that has an average rating of 4.5 or more.</li>
            <li>Use <code>array_agg(title ORDER BY title)</code> to list the course titles for each tag.</li>
          </ol>
        </div>

        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> <code>unnest</code> is the most useful array tool. When an array problem feels hard, unnest the array into rows. Then use the normal SQL you already know.
        </div>
      HTML
      starter_code: <<~'SQL'
        -- Lesson 16: Arrays
        CREATE TABLE courses (
          id     integer GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
          title  text      NOT NULL,
          tags   text[]    NOT NULL DEFAULT '{}',
          scores integer[] NOT NULL DEFAULT '{}'
        );
        CREATE INDEX courses_tags_gin ON courses USING gin (tags);   -- for @> and &&

        INSERT INTO courses (title, tags, scores) VALUES
          ('PostgreSQL Mastery', ARRAY['sql', 'postgres', 'backend'], ARRAY[4, 5, 5]),
          ('Python Basics',      '{python,beginner}',                  '{5,4}'),
          ('Data Science',       '{python,sql,ml}',                    '{3,4,5,4}'),
          ('React Apps',         '{javascript,frontend}',              '{}');

        -- 1. Arrays are 1-indexed; slices and length
        SELECT title, tags[1] AS first_tag, tags[2:3] AS next_tags,
               cardinality(tags) AS n_tags
        FROM courses ORDER BY id;

        -- 2. Search: ANY, @> (contains) and && (overlaps)
        SELECT title FROM courses WHERE 'sql' = ANY (tags) ORDER BY id;
        SELECT title FROM courses WHERE tags @> ARRAY['python', 'sql'];
        SELECT title FROM courses WHERE tags && ARRAY['frontend', 'ml'] ORDER BY id;

        -- 3. unnest turns an array into rows (and back with array_agg)
        SELECT tag, count(*) AS courses
        FROM courses, unnest(tags) AS tag
        GROUP BY tag
        HAVING count(*) > 1
        ORDER BY tag;

        SELECT title, round(avg(s), 2) AS avg_rating
        FROM courses LEFT JOIN LATERAL unnest(scores) AS s ON true
        GROUP BY id, title ORDER BY id;

        -- 4. Change arrays
        UPDATE courses SET tags = array_append(tags, 'popular') WHERE id = 1;
        UPDATE courses SET tags = array_remove(tags, 'beginner') WHERE id = 2;
        SELECT title, tags, array_to_string(tags, ' | ') AS as_text,
               array_position(tags, 'sql') AS pos_of_sql
        FROM courses WHERE id IN (1, 2) ORDER BY id;

        -- 5. The GIN index (created above) serves @> / && queries
        SET enable_seqscan = off;   -- tiny table: force the planner to show the index
        EXPLAIN (COSTS OFF) SELECT title FROM courses WHERE tags @> '{sql}';
        RESET enable_seqscan;
      SQL
    },

    17 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-postgresql">PostgreSQL</div>
          <h1 class="lc-title">Full-Text Search</h1>
        </div>
        <p class="lc-lead"><code>LIKE '%word%'</code> finds exact strings only. It can't rank results and can't use a normal index. PostgreSQL's built-in full-text search understands words. It cuts words down to their stems (base forms). It ignores stop words (common words like "the"). It ranks matches, and you can index it with GIN.</p>

        <div class="lc-card">
          <h3>The Two Types and the Match Operator</h3>
          <ul class="lc-list">
            <li><code>tsvector</code>: a document turned into a sorted list of stemmed words with their positions.</li>
            <li><code>tsquery</code>: a search with <code>&amp;</code> (and), <code>|</code> (or), <code>!</code> (not) and <code>&lt;-&gt;</code> (followed by).</li>
            <li><code>tsvector @@ tsquery</code>: true if the document matches.</li>
          </ul>
        <div class="lc-code">SELECT to_tsvector('english', 'The runners were running quickly') AS tsv;</div>
          <p><strong>Output:</strong></p>
        <div class="lc-code">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;tsv<br>------------------------------<br>&nbsp;'quick':5 'run':4 'runner':2</div>
          <p>"The" and "were" are stop words, so they are removed. "running" became <code>run</code> and "quickly" became <code>quick</code>. The stemmer only changes word endings. So it will not link irregular forms like "ran" to "run".</p>
        </div>

        <div class="lc-card">
          <h3>Turning User Input into a Query</h3>
          <table class="lc-table">
            <thead><tr><th>Function</th><th>Input</th><th>Result</th></tr></thead>
            <tbody>
              <tr><td><code>to_tsquery</code></td><td><code>'index &amp; !cooking'</code></td><td>Uses the operators as written. Gives an error on bad syntax, so don't pass it text typed by users.</td></tr>
              <tr><td><code>plainto_tsquery</code></td><td><code>'fast indexes'</code></td><td><code>'fast' &amp; 'index'</code></td></tr>
              <tr><td><code>phraseto_tsquery</code></td><td><code>'full text search'</code></td><td><code>'full' &lt;-&gt; 'text' &lt;-&gt; 'search'</code></td></tr>
              <tr><td><code>websearch_to_tsquery</code></td><td><code>'"full text" or explain -biryani'</code></td><td><code>'full' &lt;-&gt; 'text' | 'explain' &amp; !'biryani'</code></td></tr>
            </tbody>
          </table>
          <p><code>websearch_to_tsquery</code> accepts Google-style input (quotes, <code>or</code>, <code>-</code>). It never gives a syntax error. So it is the best choice for a search box.</p>
        </div>

        <div class="lc-card">
          <h3>A Search Column with a GIN Index</h3>
          <p>Running <code>to_tsvector</code> on every row for every search is slow. Store it in a generated column (a column PostgreSQL fills in for you) and index it:</p>
        <div class="lc-code">CREATE TABLE articles (<br>&nbsp;&nbsp;id     integer GENERATED ALWAYS AS IDENTITY PRIMARY KEY,<br>&nbsp;&nbsp;title  text NOT NULL,<br>&nbsp;&nbsp;body   text NOT NULL,<br>&nbsp;&nbsp;search tsvector GENERATED ALWAYS AS (<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;setweight(to_tsvector('english', title), 'A') ||<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;setweight(to_tsvector('english', body),  'B')<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;) STORED<br>);<br>CREATE INDEX articles_search_idx ON articles USING gin (search);</div>
          <p><code>setweight</code> marks title words as more important (A) than body words (B). This gives title matches a higher rank. The generated column updates itself on every insert and update.</p>
        </div>

        <div class="lc-card">
          <h3>Worked Example: Ranked Results with Snippets</h3>
        <div class="lc-code">SELECT title,<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;round(ts_rank(search, q)::numeric, 4) AS rank,<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ts_headline('english', body, q, 'StartSel=[, StopSel=]') AS snippet<br>FROM articles, websearch_to_tsquery('english', 'index or search') AS q<br>WHERE search @@ q<br>ORDER BY rank DESC, id;</div>
          <p><strong>Output:</strong></p>
        <div class="lc-code">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;title          |  rank  |                          snippet<br>------------------------+--------+-----------------------------------------------------------<br>&nbsp;Indexing in PostgreSQL | 0.4559 | B-tree and GIN [indexes] make [searching] tables fast.<br>&nbsp;Search Made Simple     | 0.3479 | Full-text [search] finds words, not just exact strings. [Searches] rank results.<br>&nbsp;Running Queries Faster | 0.1216 | Use EXPLAIN to see why a query runs slowly, then add an [index].</div>
          <p>"Indexing", "indexes" and "index" all match the stem <code>index</code>. "searching" and "Searches" match <code>search</code>. The first article ranks highest because "Indexing" is in its title (weight A). Earlier in the starter code, <code>ILIKE '%indexes%'</code> finds 1 row. The FTS (full-text search) query for "indexes" finds 2.</p>
        </div>

        <div class="lc-card">
          <h3>LIKE vs Full-Text Search</h3>
          <table class="lc-table">
            <thead><tr><th></th><th><code>ILIKE '%word%'</code></th><th>Full-text search</th></tr></thead>
            <tbody>
              <tr><td>Word forms (index / indexes / indexing)</td><td>No</td><td>Yes</td></tr>
              <tr><td>Ranking</td><td>No</td><td><code>ts_rank</code>, <code>ts_rank_cd</code></td></tr>
              <tr><td>Index support</td><td>Not with a leading <code>%</code> (needs the <code>pg_trgm</code> extension)</td><td>GIN on <code>tsvector</code></td></tr>
              <tr><td>Typos, partial words</td><td>Partial words yes, typos no</td><td>No (prefix search with <code>'post:*'</code> works)</td></tr>
            </tbody>
          </table>
          <p>For "fuzzy" search that still works with typos, real servers use the <code>pg_trgm</code> extension. It is not available in this editor.</p>
        </div>

        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Mixing languages, for example indexing with <code>'english'</code> but searching with the default configuration. Always pass the same configuration name to both.</li>
            <li>Passing text typed by users straight to <code>to_tsquery</code>. One extra <code>&amp;</code> causes a syntax error. Use <code>websearch_to_tsquery</code>.</li>
            <li>Calling <code>ts_headline</code> on thousands of rows. It is slow. Use it only on the top results (use a subquery with <code>LIMIT</code>).</li>
            <li>Expecting English stemming to work on Hindi or other languages. Use the <code>'simple'</code> configuration (no stemming) or a dictionary for that language.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>Search for articles about <code>query</code> but not <code>biryani</code>, using <code>websearch_to_tsquery</code>.</li>
            <li>Try a prefix search: <code>search @@ to_tsquery('english', 'post:*')</code>.</li>
            <li>Compare <code>to_tsvector('simple', 'The runners')</code> with the English version.</li>
          </ol>
        </div>

        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> For a site search box, you need four things: a generated <code>tsvector</code> column with weights, a GIN index, <code>websearch_to_tsquery</code>, and <code>ORDER BY ts_rank(...) DESC LIMIT 20</code>.
        </div>
      HTML
      starter_code: <<~'SQL'
        -- Lesson 17: Full-text search
        CREATE TABLE articles (
          id     integer GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
          title  text NOT NULL,
          body   text NOT NULL,
          search tsvector GENERATED ALWAYS AS (
                   setweight(to_tsvector('english', title), 'A') ||
                   setweight(to_tsvector('english', body),  'B')
                 ) STORED
        );

        INSERT INTO articles (title, body) VALUES
          ('Indexing in PostgreSQL',  'B-tree and GIN indexes make searching tables fast.'),
          ('Running Queries Faster',  'Use EXPLAIN to see why a query runs slowly, then add an index.'),
          ('Cooking Biryani',         'Rice, spices and patience. Not a database article!'),
          ('Search Made Simple',      'Full-text search finds words, not just exact strings. Searches rank results.');

        CREATE INDEX articles_search_idx ON articles USING gin (search);

        -- 1. What a tsvector looks like: stemmed words, no stop words
        SELECT to_tsvector('english', 'The runners were running quickly') AS tsv;

        -- 2. LIKE finds the exact string only; FTS matches word forms
        SELECT (SELECT count(*) FROM articles WHERE body ILIKE '%indexes%')                    AS like_matches,
               (SELECT count(*) FROM articles WHERE search @@ to_tsquery('english', 'indexes')) AS fts_matches;

        -- 3. Boolean queries: & (and), | (or), ! (not)
        SELECT title FROM articles
        WHERE search @@ to_tsquery('english', 'index & !cooking')
        ORDER BY id;

        -- 4. User-typed text: websearch_to_tsquery understands quotes, OR and -
        SELECT websearch_to_tsquery('english', '"full text" or explain -biryani') AS parsed_query;

        -- 5. Ranked results with highlighted snippets
        SELECT title,
               round(ts_rank(search, q)::numeric, 4) AS rank,
               ts_headline('english', body, q, 'StartSel=[, StopSel=]') AS snippet
        FROM articles, websearch_to_tsquery('english', 'index or search') AS q
        WHERE search @@ q
        ORDER BY rank DESC, id;
      SQL
    },

    18 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-postgresql">PostgreSQL</div>
          <h1 class="lc-title">Views and Materialized Views</h1>
        </div>
        <p class="lc-lead">A view is a saved query with a name. You query it like a table, and it always shows current data. A materialized view saves the <em>result</em> instead. This makes reads fast. But the data gets stale (out of date) until you refresh it.</p>

        <div class="lc-card">
          <h3>Views</h3>
        <div class="lc-code">CREATE VIEW paid_orders AS<br>SELECT id, customer, city, amount FROM orders WHERE status = 'paid';<br><br>SELECT * FROM paid_orders ORDER BY id;         -- runs the saved query each time<br><br>CREATE OR REPLACE VIEW paid_orders AS          -- change it later<br>SELECT id, customer, city, amount, status FROM orders WHERE status = 'paid';<br><br>DROP VIEW paid_orders;</div>
          <p>Why use views? They hide complex joins. They give every team the same meaning of "paid order". They can also show only some columns (for example, hide <code>phone</code> from a reporting user). <code>CREATE OR REPLACE VIEW</code> can add new columns at the end. It can't remove or rename existing columns. For that, drop the view and create it again.</p>
        </div>

        <div class="lc-card">
          <h3>Updatable Views and WITH CHECK OPTION</h3>
          <p>A simple view uses one table and has no <code>GROUP BY</code>, <code>DISTINCT</code>, aggregates or window functions. You can update data through it automatically. <code>WITH CHECK OPTION</code> blocks changes that would move a row outside the view:</p>
        <div class="lc-code">CREATE VIEW seattle_orders AS<br>SELECT id, customer, city, amount, status FROM orders WHERE city = 'Seattle'<br>WITH CHECK OPTION;<br><br>UPDATE seattle_orders SET amount = amount + 100 WHERE customer = 'Sunil';  -- OK: 900.00<br>UPDATE seattle_orders SET city = 'Philadelphia' WHERE customer = 'Sunil';<br>-- ERROR: new row violates check option for view "seattle_orders"</div>
        </div>

        <div class="lc-card">
          <h3>Materialized Views</h3>
        <div class="lc-code">CREATE MATERIALIZED VIEW city_revenue AS<br>SELECT city, count(*) AS orders, sum(amount) AS revenue<br>FROM orders WHERE status = 'paid'<br>GROUP BY city;<br><br>REFRESH MATERIALIZED VIEW city_revenue;               -- rebuild; blocks reads while it runs<br>CREATE UNIQUE INDEX city_revenue_city_idx ON city_revenue (city);<br>REFRESH MATERIALIZED VIEW CONCURRENTLY city_revenue;  -- readers keep working; needs the unique index</div>
          <p>PostgreSQL never refreshes a materialized view by itself. Run <code>REFRESH</code> on a schedule (for example with cron or the <code>pg_cron</code> extension on a server). Or run it after you load new data.</p>
        </div>

        <div class="lc-card">
          <h3>Worked Example: Stale Until Refreshed</h3>
          <p>The starter code creates both. Then it inserts a new Philadelphia order of 2000 and compares them:</p>
        <div class="lc-code">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;source      |     city     | revenue<br>------------------+--------------+---------<br>&nbsp;mat view (stale) | Philadelphia |  650.00<br>&nbsp;mat view (stale) | Seattle      | 2000.00<br>&nbsp;view             | Philadelphia | 2650.00<br>&nbsp;view             | Seattle      | 2000.00</div>
          <p>After <code>REFRESH MATERIALIZED VIEW city_revenue</code>, Philadelphia shows <code>2 | 2650.00</code> in the materialized view too.</p>
        </div>

        <div class="lc-card">
          <h3>View or Materialized View?</h3>
          <table class="lc-table">
            <thead><tr><th></th><th>View</th><th>Materialized view</th></tr></thead>
            <tbody>
              <tr><td>Stores</td><td>Only the query</td><td>The query and its result</td></tr>
              <tr><td>Freshness</td><td>Always current</td><td>As of the last <code>REFRESH</code></td></tr>
              <tr><td>Read speed</td><td>Same as running the query</td><td>Fast (it's a table)</td></tr>
              <tr><td>Own indexes</td><td>No (it uses the indexes of the base tables)</td><td>Yes</td></tr>
              <tr><td>Can be updated</td><td>Simple ones, yes</td><td>No</td></tr>
              <tr><td>Best for</td><td>Reusable logic, hiding columns</td><td>Heavy dashboards and reports</td></tr>
            </tbody>
          </table>
        </div>

        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Expecting a materialized view to update when the base table changes.</li>
            <li>Running <code>REFRESH ... CONCURRENTLY</code> without a unique index on the materialized view. It fails.</li>
            <li>Thinking a view is faster than its query. A plain view runs the same query. It only saves typing.</li>
            <li>Building views on top of views on top of views. Many layers are hard to debug and to change.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>Create a view <code>big_orders</code> for paid orders above 1000 and query it.</li>
            <li>Try to move Sunil to Philadelphia through <code>seattle_orders</code> and read the error.</li>
            <li>Add an <code>avg_order</code> column to the materialized view. (You need <code>DROP MATERIALIZED VIEW</code> first.)</li>
          </ol>
        </div>

        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Start with a normal view. Switch to a materialized view only when you have measured that the query is too slow <em>and</em> slightly old data is OK.
        </div>
      HTML
      starter_code: <<~'SQL'
        -- Lesson 18: Views and materialized views
        CREATE TABLE orders (
          id       integer GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
          customer text          NOT NULL,
          city     text          NOT NULL,
          amount   numeric(10,2) NOT NULL,
          status   text          NOT NULL
        );

        INSERT INTO orders (customer, city, amount, status) VALUES
          ('Rekha', 'Seattle',      1200, 'paid'),
          ('Sunil', 'Seattle',       800, 'paid'),
          ('Tara',  'Philadelphia', 1500, 'cancelled'),
          ('Uma',   'Philadelphia',  650, 'paid');

        -- 1. A view is a saved query: always shows current data
        CREATE VIEW paid_orders AS
        SELECT id, customer, city, amount FROM orders WHERE status = 'paid';

        SELECT * FROM paid_orders ORDER BY id;

        -- 2. A materialized view stores the result (a snapshot)
        CREATE MATERIALIZED VIEW city_revenue AS
        SELECT city, count(*) AS orders, sum(amount) AS revenue
        FROM orders WHERE status = 'paid'
        GROUP BY city;

        CREATE UNIQUE INDEX city_revenue_city_idx ON city_revenue (city);

        -- 3. New data arrives...
        INSERT INTO orders (customer, city, amount, status) VALUES ('Varun', 'Philadelphia', 2000, 'paid');

        SELECT 'view' AS source, city, sum(amount) AS revenue
        FROM paid_orders GROUP BY city
        UNION ALL
        SELECT 'mat view (stale)', city, revenue FROM city_revenue
        ORDER BY source, city;

        -- 4. ...so refresh the snapshot
        REFRESH MATERIALIZED VIEW city_revenue;
        SELECT city, orders, revenue AS revenue_after_refresh FROM city_revenue ORDER BY city;

        -- 5. Simple views are updatable; WITH CHECK OPTION guards the filter
        CREATE VIEW seattle_orders AS
        SELECT id, customer, city, amount, status FROM orders WHERE city = 'Seattle'
        WITH CHECK OPTION;

        UPDATE seattle_orders SET amount = amount + 100 WHERE customer = 'Sunil'
        RETURNING customer, amount;
      SQL
    },

    19 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-postgresql">PostgreSQL</div>
          <h1 class="lc-title">Functions, Procedures and Triggers</h1>
        </div>
        <p class="lc-lead">PostgreSQL can run your own code inside the database. Functions calculate values. Procedures run jobs with many steps. Triggers run a function automatically whenever rows change. They are very useful for audit logs (records of changes) and for keeping columns up to date.</p>

        <div class="lc-card">
          <h3>SQL Functions</h3>
          <p>This is the simplest kind: one SQL expression or query. The <code>RETURN</code> body style below needs PostgreSQL 14+. Older code uses <code>AS $$ SELECT ... $$</code>.</p>
        <div class="lc-code">CREATE FUNCTION with_gst(amount numeric, rate numeric DEFAULT 18)<br>RETURNS numeric LANGUAGE sql IMMUTABLE<br>RETURN round(amount * (1 + rate / 100), 2);<br><br>SELECT with_gst(1500);      -- 1770.00<br>SELECT with_gst(1500, 5);   -- 1575.00</div>
          <p><code>$$ ... $$</code> is called dollar quoting. It lets you write a string that contains single quotes, without escaping them.</p>
        </div>

        <div class="lc-card">
          <h3>PL/pgSQL Functions</h3>
          <p>PL/pgSQL adds variables, <code>IF</code>, loops and error handling:</p>
        <div class="lc-code">CREATE FUNCTION price_band(p numeric) RETURNS text<br>LANGUAGE plpgsql IMMUTABLE AS $$<br>BEGIN<br>&nbsp;&nbsp;IF p IS NULL OR p &lt; 0 THEN<br>&nbsp;&nbsp;&nbsp;&nbsp;RAISE EXCEPTION 'invalid price: %', p;<br>&nbsp;&nbsp;ELSIF p &lt; 1000 THEN<br>&nbsp;&nbsp;&nbsp;&nbsp;RETURN 'budget';<br>&nbsp;&nbsp;ELSIF p &lt; 5000 THEN<br>&nbsp;&nbsp;&nbsp;&nbsp;RETURN 'mid';<br>&nbsp;&nbsp;END IF;<br>&nbsp;&nbsp;RETURN 'premium';<br>END $$;</div>
          <p>Other useful parts are: <code>DECLARE total numeric := 0;</code>, <code>FOR r IN SELECT ... LOOP ... END LOOP;</code>, <code>RETURNS TABLE (name text, total numeric)</code> with <code>RETURN QUERY SELECT ...</code>, and <code>EXCEPTION WHEN unique_violation THEN ...</code>. (The <code>try_sql</code> helper in Lesson 3 uses <code>EXCEPTION WHEN others</code>.)</p>
        </div>

        <div class="lc-card">
          <h3>Volatility: Tell the Planner How Your Function Behaves</h3>
          <table class="lc-table">
            <thead><tr><th>Label</th><th>Promise</th><th>Example</th></tr></thead>
            <tbody>
              <tr><td><code>IMMUTABLE</code></td><td>Same inputs always give the same output. It reads no tables.</td><td><code>with_gst</code>, <code>lower()</code>. Expression indexes need this.</td></tr>
              <tr><td><code>STABLE</code></td><td>Same output within one statement. It may read tables.</td><td>Look up a tax rate from a table</td></tr>
              <tr><td><code>VOLATILE</code> (default)</td><td>Output can change at any time</td><td><code>random()</code>, anything that writes</td></tr>
            </tbody>
          </table>
        </div>

        <div class="lc-card">
          <h3>Procedures</h3>
        <div class="lc-code">CREATE PROCEDURE apply_discount(pct numeric)<br>LANGUAGE sql AS $$<br>&nbsp;&nbsp;UPDATE products SET price = round(price * (1 - pct / 100), 2) WHERE price &gt;= 1000;<br>$$;<br><br>CALL apply_discount(10);</div>
          <table class="lc-table">
            <thead><tr><th></th><th>Function</th><th>Procedure (PostgreSQL 11+)</th></tr></thead>
            <tbody>
              <tr><td>How you call it</td><td><code>SELECT f(...)</code>, inside any expression</td><td><code>CALL p(...)</code></td></tr>
              <tr><td>Returns a value</td><td>Yes</td><td>Only through <code>OUT</code>/<code>INOUT</code> parameters</td></tr>
              <tr><td><code>COMMIT</code> inside</td><td>No</td><td>Yes (PL/pgSQL, when not called inside an outer transaction block)</td></tr>
            </tbody>
          </table>
        </div>

        <div class="lc-card">
          <h3>Triggers</h3>
          <p>A trigger has two parts. The first is a function that <code>RETURNS trigger</code>. The second is a <code>CREATE TRIGGER</code> that says when to run it. Inside the function, <code>NEW</code> is the new row and <code>OLD</code> is the old row.</p>
        <div class="lc-code">CREATE FUNCTION log_price_change() RETURNS trigger<br>LANGUAGE plpgsql AS $$<br>BEGIN<br>&nbsp;&nbsp;IF NEW.price IS DISTINCT FROM OLD.price THEN<br>&nbsp;&nbsp;&nbsp;&nbsp;INSERT INTO price_log VALUES (OLD.id, OLD.price, NEW.price);<br>&nbsp;&nbsp;END IF;<br>&nbsp;&nbsp;RETURN NEW;<br>END $$;<br><br>CREATE TRIGGER products_price_audit<br>AFTER UPDATE ON products<br>FOR EACH ROW EXECUTE FUNCTION log_price_change();</div>
          <table class="lc-table">
            <thead><tr><th>Choice</th><th>Options</th></tr></thead>
            <tbody>
              <tr><td>When</td><td><code>BEFORE</code> (can change <code>NEW</code>, or cancel the row by returning NULL), <code>AFTER</code> (the row is final), <code>INSTEAD OF</code> (on views)</td></tr>
              <tr><td>Event</td><td><code>INSERT</code>, <code>UPDATE</code> (optionally <code>UPDATE OF price</code>), <code>DELETE</code>, <code>TRUNCATE</code></td></tr>
              <tr><td>Level</td><td><code>FOR EACH ROW</code> or <code>FOR EACH STATEMENT</code></td></tr>
            </tbody>
          </table>
          <p>A very common <code>BEFORE UPDATE</code> trigger: <code>NEW.updated_at := now(); RETURN NEW;</code></p>
        </div>

        <div class="lc-card">
          <h3>Worked Example: Automatic Audit Log</h3>
          <p>First we run <code>CALL apply_discount(10)</code>. Then we change only the cable's name. The log now has only the real price changes:</p>
        <div class="lc-code">&nbsp;&nbsp;&nbsp;name   | old_price | new_price<br>----------+-----------+----------<br>&nbsp;Keyboard |   1500.00 |   1350.00<br>&nbsp;Monitor  |   9000.00 |   8100.00</div>
          <p>The cable (250.00) was below 1000, so the procedure did not change its price. The rename ran the trigger, but <code>IS DISTINCT FROM</code> found no price change.</p>
        </div>

        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Forgetting <code>RETURN NEW</code> in a <code>BEFORE</code> row trigger. The function reaches its end with no return. The statement fails with <code>ERROR: control reached end of trigger procedure without RETURN</code>.</li>
            <li>Writing <code>RETURN NULL</code> in a <code>BEFORE</code> row trigger by mistake. This is allowed. But it <strong>silently skips</strong> the insert or update of that row, with no error. Return <code>NULL</code> only when you want to skip the row.</li>
            <li>Marking a function <code>IMMUTABLE</code> when it reads a table or <code>now()</code>. PostgreSQL may then save and reuse wrong results.</li>
            <li>Putting a lot of business logic in triggers. It hides what the code does and slows every write. Keep triggers small.</li>
            <li>Writing <code>EXECUTE PROCEDURE</code> in <code>CREATE TRIGGER</code>. It still works, but it is the old form. Use <code>EXECUTE FUNCTION</code>.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>Run <code>SELECT price_band(-5);</code> and read your custom error.</li>
            <li>Add an <code>updated_at timestamptz</code> column and a <code>BEFORE UPDATE</code> trigger that sets it.</li>
            <li>Write a function <code>RETURNS TABLE (band text, items bigint)</code> that counts the products in each band.</li>
          </ol>
        </div>

        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Use <code>CREATE OR REPLACE FUNCTION</code> while you develop. Then you can edit and run it again without dropping the function first.
        </div>
      HTML
      starter_code: <<~'SQL'
        -- Lesson 19: Functions, procedures and triggers
        CREATE TABLE products (
          id integer GENERATED ALWAYS AS IDENTITY PRIMARY KEY, name text NOT NULL, price numeric(10,2) NOT NULL
        );
        CREATE TABLE price_log (product_id integer, old_price numeric(10,2), new_price numeric(10,2));
        INSERT INTO products (name, price) VALUES ('Keyboard', 1500), ('Monitor', 9000), ('Cable', 250);

        -- 1. SQL function: one expression, IMMUTABLE (same input -> same output)
        CREATE FUNCTION with_gst(amount numeric, rate numeric DEFAULT 18)
        RETURNS numeric LANGUAGE sql IMMUTABLE
        RETURN round(amount * (1 + rate / 100), 2);

        -- 2. PL/pgSQL function: IF / ELSIF and RAISE
        CREATE FUNCTION price_band(p numeric) RETURNS text
        LANGUAGE plpgsql IMMUTABLE AS $$
        BEGIN
          IF p IS NULL OR p < 0 THEN RAISE EXCEPTION 'invalid price: %', p;
          ELSIF p < 1000 THEN RETURN 'budget';
          ELSIF p < 5000 THEN RETURN 'mid';
          END IF;
          RETURN 'premium';
        END $$;

        SELECT name, price, with_gst(price) AS price_with_gst, with_gst(price, 5) AS at_5_percent,
               price_band(price) AS band
        FROM products ORDER BY id;

        -- 3. Trigger: log every price change automatically
        CREATE FUNCTION log_price_change() RETURNS trigger
        LANGUAGE plpgsql AS $$
        BEGIN
          IF NEW.price IS DISTINCT FROM OLD.price THEN
            INSERT INTO price_log VALUES (OLD.id, OLD.price, NEW.price);
          END IF;
          RETURN NEW;
        END $$;

        CREATE TRIGGER products_price_audit AFTER UPDATE ON products
        FOR EACH ROW EXECUTE FUNCTION log_price_change();

        -- 4. Procedure: run with CALL
        CREATE PROCEDURE apply_discount(pct numeric) LANGUAGE sql AS $$
          UPDATE products SET price = round(price * (1 - pct / 100), 2) WHERE price >= 1000;
        $$;
        CALL apply_discount(10);
        UPDATE products SET name = 'USB-C Cable' WHERE id = 3;   -- name only: not logged

        SELECT p.name, l.old_price, l.new_price
        FROM price_log l JOIN products p ON p.id = l.product_id ORDER BY l.product_id;
      SQL
    },

    20 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-postgresql">PostgreSQL</div>
          <h1 class="lc-title">Roles, Security and Backups</h1>
        </div>
        <p class="lc-lead">A production database needs three things besides good SQL. It needs users that can do only what they must. It needs safe connections from your application. And it needs backups you have really tested. This lesson also lists what's new in recent PostgreSQL versions.</p>

        <div class="lc-card">
          <h3>Roles: Users and Groups Are the Same Thing</h3>
          <p>In PostgreSQL a <strong>role</strong> is both a user and a group. A role with <code>LOGIN</code> can connect. A role without it is used as a group.</p>
        <div class="lc-code">CREATE ROLE readonly NOLOGIN;                         -- a group<br>CREATE ROLE report_bot LOGIN PASSWORD 'change-me';   -- a user (CREATE USER = CREATE ROLE ... LOGIN)<br>GRANT readonly TO report_bot;                         -- report_bot is now in the group<br><br>GRANT USAGE ON SCHEMA public TO readonly;<br>GRANT SELECT ON ALL TABLES IN SCHEMA public TO readonly;<br>ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT SELECT ON TABLES TO readonly;  -- future tables too<br><br>GRANT SELECT (name, email) ON customers TO support;   -- column-level<br>REVOKE DELETE ON marks FROM school_app;</div>
          <ul class="lc-list">
            <li>Roles belong to the whole server, not to one database.</li>
            <li>Built-in roles save you work: <code>pg_read_all_data</code>, <code>pg_write_all_data</code> (14+), <code>pg_maintain</code> (17+).</li>
            <li>Since PostgreSQL 15, normal users can't create tables in the <code>public</code> schema, unless you give them that right.</li>
            <li>Passwords are stored with SCRAM-SHA-256. MD5 passwords are deprecated (planned for removal) in PostgreSQL 18.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Row-Level Security (RLS)</h3>
          <p>RLS filters rows for each user, inside the database. So a bug in one query can't show another customer's data:</p>
        <div class="lc-code">ALTER TABLE marks ENABLE ROW LEVEL SECURITY;<br>CREATE POLICY school_isolation ON marks<br>&nbsp;&nbsp;USING (school = current_setting('app.school', true));        -- which rows you can see/change<br>-- add  WITH CHECK (...)  to control which rows you may INSERT or UPDATE to</div>
          <ul class="lc-list">
            <li>If RLS is on and there is <strong>no</strong> policy, normal users see nothing. Everything is blocked by default.</li>
            <li>The table owner and superusers skip RLS. Use <code>ALTER TABLE ... FORCE ROW LEVEL SECURITY</code> to apply it to the owner too. Superusers and <code>BYPASSRLS</code> roles still skip it.</li>
            <li>A common pattern: the app runs <code>SET app.school = 'KV'</code> (or <code>set_config</code>) after login. Then the policies read it with <code>current_setting</code>.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Worked Example: The App Sees Only Its School</h3>
        <div class="lc-code">SET app.school = 'KV';<br>SET ROLE school_app;<br>SELECT current_user AS acting_as, count(*) AS visible_rows, max(score) AS top_score FROM marks;<br>RESET ROLE;</div>
          <p><strong>Output:</strong></p>
        <div class="lc-code">&nbsp;acting_as  | visible_rows | top_score<br>------------+--------------+----------<br>&nbsp;school_app |            3 |        95</div>
          <p>The table has 5 rows, but <code>school_app</code> sees only the 3 KV rows. After <code>RESET ROLE</code> the owner sees all 5. The starter code also checks privileges (permissions) with <code>has_table_privilege</code>: <code>can_select = t</code>, <code>can_delete = f</code>.</p>
        </div>

        <div class="lc-card">
          <h3>Schemas and search_path</h3>
          <p>A database contains <strong>schemas</strong>. A schema is a named folder for tables, views and functions. Every new database has a schema called <code>public</code>. Use schemas to keep parts of an app apart, or to give a team its own space:</p>
        <div class="lc-code">CREATE SCHEMA billing;<br>CREATE TABLE billing.invoices (id integer, amount numeric(10,2));<br>SELECT to_regclass('invoices') AS without_schema;   -- NULL: not found in public<br>SET search_path = billing, public;<br>SELECT * FROM invoices;                             -- now found in billing</div>
          <p><code>search_path</code> is the list of schemas PostgreSQL searches when a name has no schema in front of it. The default is <code>"$user", public</code>. Security notes:</p>
          <ul class="lc-list">
            <li>Normal users can't create objects in <code>public</code> any more (PostgreSQL 15+, see above). So give each app its own schema: <code>GRANT USAGE, CREATE ON SCHEMA app TO app_owner;</code></li>
            <li>In <code>SECURITY DEFINER</code> functions, always set a fixed path (<code>SET search_path = app, pg_temp</code>). Then nobody can sneak in a fake table or function with the same name.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Connecting Safely from an Application</h3>
          <p>Never join user input into SQL text. Send it as a <strong>parameter</strong>. Then the database treats it only as data:</p>
        <div class="lc-code"># Python (psycopg 3)<br>cur.execute("SELECT student, score FROM marks WHERE student = %s", (name,))<br><br>// Node.js (node-postgres)<br>await client.query("SELECT student, score FROM marks WHERE student = $1", [name]);</div>
          <p>In the starter code, <code>EXECUTE find_student($$Dia' OR '1'='1$$)</code> returns no rows. The whole string is compared as a name. If you built the SQL by joining strings, the same input would return every row.</p>
          <ul class="lc-list">
            <li>Each connection is a separate server process. Use a pool (a set of reused connections, built into most drivers). For many app servers, also use <strong>PgBouncer</strong>. Its <em>transaction</em> mode is the usual choice.</li>
            <li>Connect with a least-privilege role (one with only the rights it needs), never as <code>postgres</code>. Keep passwords in environment variables or a secrets manager, not in code.</li>
            <li>Use TLS (<code>sslmode=verify-full</code>) when the database is on another machine.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Backups and Restore</h3>
          <table class="lc-table">
            <thead><tr><th>Tool</th><th>What it does</th></tr></thead>
            <tbody>
              <tr><td><code>pg_dump -Fc -d shop -f shop.dump</code></td><td>Logical backup of one database in the compressed custom format. The copy is consistent, and it doesn't block normal reads and writes.</td></tr>
              <tr><td><code>pg_restore -d shop_copy shop.dump</code></td><td>Restores a custom/directory dump. It can restore single tables and run in parallel (<code>-j 4</code>).</td></tr>
              <tr><td><code>pg_dump -d shop &gt; shop.sql</code></td><td>Plain SQL script. Restore it with <code>psql -f shop.sql</code>.</td></tr>
              <tr><td><code>pg_dumpall --globals-only</code></td><td>Roles and tablespaces, which <code>pg_dump</code> does not include.</td></tr>
              <tr><td><code>pg_basebackup</code> + WAL archiving</td><td>Physical copy of the whole server. It allows point-in-time recovery (restore to "5 minutes before the mistake"). PostgreSQL 17 adds incremental backups (<code>--incremental</code> and <code>pg_combinebackup</code>).</td></tr>
            </tbody>
          </table>
          <p>If you have never restored a backup, you don't know that it works. Restore to a test server regularly.</p>
        </div>

        <div class="lc-card">
          <h3>Bulk Loading with COPY</h3>
          <p>Sometimes you load thousands or millions of rows (a CSV export, a data import). Don't run one <code>INSERT</code> per row. <code>COPY</code> sends the whole file in one command. It is many times faster.</p>
        <div class="lc-code">CREATE TABLE marks (student text, score integer);<br><br>COPY marks FROM STDIN WITH (FORMAT csv, HEADER true);<br>student,score<br>Asha,91<br>Meena,78<br>\.</div>
          <p><strong>Output (in psql):</strong> <code>COPY 2</code>, which means two rows were loaded. Export works the other way round:</p>
        <div class="lc-code">COPY (SELECT student, score FROM marks ORDER BY score DESC)<br>TO STDOUT WITH (FORMAT csv, HEADER true);<br><br>student,score<br>Asha,91<br>Meena,78</div>
          <table class="lc-table">
            <thead><tr><th>Form</th><th>Where the file lives</th></tr></thead>
            <tbody>
              <tr><td><code>COPY marks FROM '/data/marks.csv' ...</code></td><td>On the <strong>database server</strong>. Needs superuser or the <code>pg_read_server_files</code> role.</td></tr>
              <tr><td><code>\copy marks FROM 'marks.csv' WITH (FORMAT csv, HEADER true)</code></td><td>On <strong>your computer</strong>. psql reads it and sends it over the connection. Use this with cloud databases.</td></tr>
              <tr><td><code>COPY ... FROM STDIN</code></td><td>Sent by your program. Drivers such as psycopg (<code>cursor.copy()</code>) use this.</td></tr>
            </tbody>
          </table>
          <p>Since PostgreSQL 17, <code>WITH (FORMAT csv, ON_ERROR ignore)</code> skips rows with bad values. The whole load does not fail. It reports <code>NOTICE: 1 row was skipped due to data type incompatibility</code>. <code>COPY</code> does not run in this browser sandbox (there is no file system or STDIN). Try it with psql on a real server.</p>
        </div>

        <div class="lc-card">
          <h3>What's New in PostgreSQL 17 and 18</h3>
          <table class="lc-table">
            <thead><tr><th>Version</th><th>Highlights for developers</th></tr></thead>
            <tbody>
              <tr><td><strong>17</strong> (Sept 2024)</td><td><code>MERGE ... RETURNING</code> with <code>merge_action()</code> and <code>WHEN NOT MATCHED BY SOURCE</code>. SQL/JSON <code>JSON_TABLE</code>, <code>JSON_VALUE</code>, <code>JSON_QUERY</code>, <code>JSON_EXISTS</code>. Incremental backups. <code>COPY ... ON_ERROR</code>. The <code>pg_maintain</code> role.</td></tr>
              <tr><td><strong>18</strong> (Sept 2025)</td><td>Asynchronous I/O (faster scans). <code>uuidv7()</code>. Virtual generated columns (now the default). <code>old</code>/<code>new</code> in <code>RETURNING</code>. B-tree skip scan. Temporal <code>WITHOUT OVERLAPS</code> constraints. OAuth login. <code>EXPLAIN ANALYZE</code> shows buffers by default. Data checksums are on by default.</td></tr>
            </tbody>
          </table>
          <p>Newer versions keep adding features. Check the release notes on postgresql.org before you rely on a new feature.</p>
        </div>

        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Letting the application connect as a superuser. Superusers skip RLS and every permission check.</li>
            <li>Turning on RLS, testing as the table owner, and then believing it "works". Test as the app role.</li>
            <li>Forgetting that <code>pg_dump</code> does not include roles. Also back up globals with <code>pg_dumpall --globals-only</code>.</li>
            <li>Building SQL with string concatenation or f-strings.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>Change <code>app.school</code> to <code>'DPS'</code>. How many rows does <code>school_app</code> see now?</li>
            <li>As <code>school_app</code>, try <code>DELETE FROM marks;</code>. Read the error, then end with <code>RESET ROLE</code>.</li>
            <li>Add a <code>WITH CHECK</code> clause so the app can only insert rows for its own school.</li>
          </ol>
        </div>

        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Security checklist: least-privilege roles, RLS for multi-tenant tables (tables shared by many customers), parameterised queries everywhere, TLS, and a planned date for your next restore test.
        </div>
      HTML
      starter_code: <<~'SQL'
        -- Lesson 20: Roles, security and backups
        DROP ROLE IF EXISTS school_app;      -- roles belong to the whole server
        CREATE ROLE school_app NOLOGIN;      -- in real life: LOGIN PASSWORD '...'

        CREATE TABLE marks (
          id      integer GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
          school  text    NOT NULL,
          student text    NOT NULL,
          score   integer NOT NULL
        );
        INSERT INTO marks (school, student, score) VALUES
          ('DPS', 'Arnav', 91), ('DPS', 'Bela', 84),
          ('KV',  'Chirag', 77), ('KV', 'Dia', 95), ('KV', 'Eshan', 68);

        -- 1. Least privilege: the app may read marks, but not delete them
        GRANT SELECT, INSERT ON marks TO school_app;
        SELECT has_table_privilege('school_app', 'marks', 'SELECT') AS can_select,
               has_table_privilege('school_app', 'marks', 'DELETE') AS can_delete;

        -- 2. Row-level security: each school sees only its own rows
        ALTER TABLE marks ENABLE ROW LEVEL SECURITY;
        CREATE POLICY school_isolation ON marks
          USING (school = current_setting('app.school', true));

        SELECT policyname, cmd, qual FROM pg_policies WHERE tablename = 'marks';

        -- 3. Act as the app, logged in for school KV
        SET app.school = 'KV';
        SET ROLE school_app;
        SELECT current_user AS acting_as, count(*) AS visible_rows, max(score) AS top_score FROM marks;
        RESET ROLE;
        SELECT count(*) AS table_owner_sees FROM marks;   -- owners bypass RLS

        -- 4. Parameterised statement: user input is DATA, never SQL
        PREPARE find_student(text) AS
          SELECT student, score FROM marks WHERE student = $1;
        EXECUTE find_student('Dia');
        EXECUTE find_student($$Dia' OR '1'='1$$);   -- injection attempt finds nothing
        DEALLOCATE find_student;

        -- Clean up the server-wide role
        DROP POLICY school_isolation ON marks;
        REVOKE ALL ON marks FROM school_app;
        DROP ROLE school_app;
      SQL
    },

    21 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-postgresql">PostgreSQL</div>
          <h1 class="lc-title">Capstone: Course Registration Database</h1>
        </div>
        <p class="lc-lead">Now you will use everything together. You will build the database for a small college's course registration system. It has a clean schema with constraints and realistic data. It also has reports that use joins, CTEs, window functions, JSONB, arrays, upserts, views and triggers.</p>

        <div class="lc-card">
          <h3>The Task</h3>
          <ul class="lc-list">
            <li>Students have a name, a unique email and a flexible <code>profile</code> (city, year). The profile is stored as <code>jsonb</code>.</li>
            <li>Courses have a code, a title, a number of seats, a fee (an exact money value) and a list of tags.</li>
            <li>A student can enrol in a course only once, and grades must be between 0 and 100.</li>
            <li>If a student is deleted, their enrolments are deleted too. You can't delete a course that has enrolments.</li>
            <li>The office needs three reports: seats left in each course, class rank in each course, and fees for each student.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>The Schema</h3>
        <div class="lc-code">students (id PK identity, name, email UNIQUE, profile jsonb)<br>&nbsp;&nbsp;&nbsp;&nbsp;|  1<br>&nbsp;&nbsp;&nbsp;&nbsp;|                 enrollments<br>&nbsp;&nbsp;&nbsp;&nbsp;+------------&lt; (student_id FK ON DELETE CASCADE,<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;course_code FK,              PK (student_id, course_code)<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;grade CHECK 0..100)<br>&nbsp;&nbsp;&nbsp;&nbsp;+------------&lt;<br>&nbsp;&nbsp;&nbsp;&nbsp;|  1<br>courses (code PK, title, seats CHECK &gt; 0, fee numeric(10,2) CHECK &gt;= 0, tags text[])</div>
          <table class="lc-table">
            <thead><tr><th>Requirement</th><th>Where it lives</th><th>Lesson</th></tr></thead>
            <tbody>
              <tr><td>Exact fees</td><td><code>numeric(10,2)</code></td><td>2</td></tr>
              <tr><td>Many-to-many: students and courses</td><td>Junction table (a table that links two tables) <code>enrollments</code></td><td>8</td></tr>
              <tr><td>Enrol once only</td><td>Composite <code>PRIMARY KEY</code></td><td>3</td></tr>
              <tr><td>Delete student → delete enrolments</td><td><code>ON DELETE CASCADE</code></td><td>3</td></tr>
              <tr><td>Can't delete a course in use</td><td>Default FK action (<code>NO ACTION</code>)</td><td>3</td></tr>
              <tr><td>Re-registering updates the grade</td><td><code>ON CONFLICT ... DO UPDATE</code></td><td>12</td></tr>
              <tr><td>Seats report everyone shares</td><td>A view</td><td>18</td></tr>
              <tr><td>Class rank</td><td><code>rank() OVER (PARTITION BY ...)</code></td><td>11</td></tr>
            </tbody>
          </table>
        </div>

        <div class="lc-card">
          <h3>Worked Example: The Three Reports</h3>
          <p>Seats left (from the <code>course_seats</code> view):</p>
        <div class="lc-code">&nbsp;code  | seats | taken | free<br>-------+-------+-------+-----<br>&nbsp;DB101 |     2 |     2 |    0<br>&nbsp;ML201 |     2 |     1 |    1<br>&nbsp;PY101 |     3 |     2 |    1</div>
          <p>Class rank with the student's city from JSONB:</p>
        <div class="lc-code">&nbsp;course_code |  name  |    city    | grade | class_rank<br>-------------+--------+------------+-------+------------<br>&nbsp;DB101       | Anjali | Manchester |    88 |          1<br>&nbsp;DB101       | Bilal  | Edinburgh  |    75 |          2<br>&nbsp;ML201       | Bilal  | Edinburgh  |    81 |          1<br>&nbsp;PY101       | Anjali | Manchester |    92 |          1<br>&nbsp;PY101       | Charvi | Manchester |    79 |          2</div>
          <p>Fees for courses tagged <code>core</code>: Anjali 7998.00 (DB101, PY101), Bilal 4999.00, Charvi 2999.00. Charvi's grade is 79, not NULL, because the upsert replaced it.</p>
        </div>

        <div class="lc-card">
          <h3>Your Tasks</h3>
          <p>Add to the starter code step by step. Run it after each step.</p>
          <ol class="lc-list">
            <li><strong>Data</strong>: add 3 more students (from your own city) and one more course. Enrol them with a multi-row <code>INSERT</code>.</li>
            <li><strong>Seat limit trigger</strong>: write a <code>BEFORE INSERT</code> trigger on <code>enrollments</code>. It should raise an exception (an error) when <code>course_seats.free</code> is 0. Test it by enrolling a third student in DB101.</li>
            <li><strong>CTE report</strong>: use <code>WITH</code> to find each course's average grade. Then list the students who scored above their course average.</li>
            <li><strong>JSONB</strong>: count the students in each city with <code>profile -&gt;&gt; 'city'</code>. Then add a <code>"scholarship": true</code> key to one student with <code>||</code>.</li>
            <li><strong>Arrays</strong>: list courses that share at least one tag with ML201 (<code>&amp;&amp;</code>).</li>
            <li><strong>Transaction</strong>: move Bilal from ML201 to PY101 inside <code>BEGIN ... COMMIT</code>. This way he is never in both courses, and never in neither.</li>
            <li><strong>Performance</strong>: add an index on <code>enrollments (course_code)</code> and check a query with <code>EXPLAIN</code>.</li>
            <li><strong>Extra challenge</strong>: build a materialized view of revenue for each tag. Or add a generated <code>tsvector</code> column on course titles. Or add an RLS policy so a student sees only their own enrolments.</li>
          </ol>
        </div>

        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Creating <code>enrollments</code> before <code>students</code> and <code>courses</code>. A foreign key needs its parent table to exist first.</li>
            <li>Counting seats with <code>count(*)</code> after a <code>LEFT JOIN</code>. Empty courses would show 1 seat taken. Count <code>e.student_id</code> instead.</li>
            <li>Checking the seat limit only in application code. Two students can take the last seat at the same moment. The database must enforce the limit. Under heavy load, also lock the course row with <code>SELECT ... FOR UPDATE</code>.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Try It: Check Yourself</h3>
          <p>You are done when you can explain why each of these is in the schema, without looking back at the lessons: the composite primary key, <code>ON DELETE CASCADE</code>, <code>numeric</code> instead of <code>float</code>, the <code>CHECK</code> on grade, and <code>count(e.student_id)</code> in the view.</p>
        </div>

        <div class="lc-card lc-card--tip">
          <strong>Congratulations!</strong> You can now design, query, secure and tune a real PostgreSQL database. Next steps: install PostgreSQL 18 on your computer. Connect to it from a Python or Node.js app with a connection pool. Then explore extensions like <code>pg_stat_statements</code> and PostGIS.
        </div>
      HTML
      starter_code: <<~'SQL'
        -- Lesson 21 Capstone: a mini course-registration database
        CREATE TABLE students (
          id      integer GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
          name    text NOT NULL,
          email   text NOT NULL UNIQUE,
          profile jsonb NOT NULL DEFAULT '{}'
        );
        CREATE TABLE courses (
          code  text PRIMARY KEY,
          title text NOT NULL,
          seats integer NOT NULL CHECK (seats > 0),
          fee   numeric(10,2) NOT NULL CHECK (fee >= 0),
          tags  text[] NOT NULL DEFAULT '{}'
        );
        CREATE TABLE enrollments (
          student_id  integer REFERENCES students (id) ON DELETE CASCADE,
          course_code text    REFERENCES courses (code),
          grade       integer CHECK (grade BETWEEN 0 AND 100),
          PRIMARY KEY (student_id, course_code)
        );
        INSERT INTO students (name, email, profile) VALUES
          ('Anjali', 'anjali@uni.in', '{"city": "Manchester", "year": 2}'),
          ('Bilal',  'bilal@uni.in',  '{"city": "Edinburgh", "year": 3}'),
          ('Charvi', 'charvi@uni.in', '{"city": "Manchester", "year": 1}');
        INSERT INTO courses VALUES
          ('DB101', 'Databases', 2, 4999, '{sql,core}'), ('PY101', 'Python', 3, 2999, '{python,core}'),
          ('ML201', 'Machine Learning', 2, 7999, '{python,ml}');
        INSERT INTO enrollments VALUES
          (1, 'DB101', 88), (1, 'PY101', 92), (2, 'DB101', 75), (2, 'ML201', 81), (3, 'PY101', NULL);

        -- Upsert: re-registering updates the grade instead of failing
        INSERT INTO enrollments VALUES (3, 'PY101', 79)
        ON CONFLICT (student_id, course_code) DO UPDATE SET grade = EXCLUDED.grade;

        -- Report 1: seats left per course (view)
        CREATE VIEW course_seats AS
        SELECT c.code, c.seats, count(e.student_id) AS taken, c.seats - count(e.student_id) AS free
        FROM courses c LEFT JOIN enrollments e ON e.course_code = c.code GROUP BY c.code;
        SELECT * FROM course_seats ORDER BY code;

        -- Report 2: class rank per course (window) with student city (JSONB)
        SELECT e.course_code, s.name, s.profile ->> 'city' AS city, e.grade,
               rank() OVER (PARTITION BY e.course_code ORDER BY e.grade DESC) AS class_rank
        FROM enrollments e JOIN students s ON s.id = e.student_id ORDER BY e.course_code, class_rank;

        -- Report 3: fees per student for 'core' courses (arrays + aggregates)
        SELECT s.name, string_agg(c.code, ', ' ORDER BY c.code) AS core_courses, sum(c.fee) AS fees
        FROM students s JOIN enrollments e ON e.student_id = s.id
        JOIN courses c ON c.code = e.course_code AND 'core' = ANY (c.tags)
        GROUP BY s.name ORDER BY fees DESC, s.name;
      SQL
    }
  }
end

module BootstrapContent
  CDN = <<~'HTML'
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"></script>
  HTML

  LESSONS = {
    1 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-bootstrap">Bootstrap</div>
          <h1 class="lc-title">Introduction to Bootstrap</h1>
        </div>
        <p class="lc-lead">Bootstrap is a free, open-source CSS framework. It is a big stylesheet full of ready-made classes, plus an optional JavaScript file. You do not write CSS for every button, grid and spacing rule yourself. Instead, you add class names such as <code>btn btn-primary</code> or <code>col-md-6</code> to your HTML. In this lesson you will set up Bootstrap 5.3. You will learn how its breakpoints and containers work. You will also see how it compares with hand-written CSS and Tailwind.</p>

        <div class="lc-card">
          <h3>What is a CSS framework?</h3>
          <p>A CSS framework is CSS that someone has already written and tested. It solves common layout and styling problems. You still write the HTML. The framework gives you the looks and the responsive behaviour (how the page changes on different screen sizes) through class names.</p>
          <ul class="lc-list">
            <li><strong>Consistency</strong>: every button, form and heading follows one design scale.</li>
            <li><strong>Speed</strong>: you can build a responsive layout in minutes, not hours.</li>
            <li><strong>Tested in all modern browsers</strong>: you get fewer surprises between different browsers.</li>
            <li><strong>Team-friendly</strong>: another developer who knows Bootstrap can read your markup (HTML code) right away.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Bootstrap 5.3 at a glance</h3>
          <ul class="lc-list">
            <li>The current stable release at the time of writing is <strong>5.3.8</strong>. This course uses it everywhere.</li>
            <li><strong>No jQuery.</strong> Bootstrap 4 needed jQuery. Bootstrap 5 is written in plain (vanilla) JavaScript.</li>
            <li><strong>Mobile-first.</strong> Base classes are for small screens. Breakpoint classes add changes for wider screens.</li>
            <li>It is built on flexbox and uses CSS custom properties (<code>--bs-*</code>). From 5.3, it supports colour modes (light/dark).</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Setting up with the CDN</h3>
          <p>The quickest setup uses two tags from the jsDelivr CDN (a network of servers that host files for you). Put the CSS in the <code>&lt;head&gt;</code>. Put the JavaScript bundle just before <code>&lt;/body&gt;</code>.</p>
          <div class="lc-code">&lt;!DOCTYPE html&gt;<br>&lt;html lang="en"&gt;<br>&lt;head&gt;<br>  &lt;meta charset="UTF-8"&gt;<br>  &lt;meta name="viewport" content="width=device-width, initial-scale=1.0"&gt;<br>  &lt;title&gt;My first Bootstrap page&lt;/title&gt;<br>  &lt;link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet"&gt;<br>&lt;/head&gt;<br>&lt;body&gt;<br>  &lt;div class="container py-4"&gt;<br>    &lt;h1&gt;Namaste, Bootstrap!&lt;/h1&gt;<br>    &lt;button type="button" class="btn btn-primary"&gt;Order chai&lt;/button&gt;<br>  &lt;/div&gt;<br>  &lt;script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"&gt;&lt;/script&gt;<br>&lt;/body&gt;<br>&lt;/html&gt;</div>
          <p><strong>What you will see:</strong> a heading in Bootstrap's system font, with space on the left and right from the container. You will also see a blue button with white text and rounded corners. It gets a little darker when you hover over it.</p>
          <ul class="lc-list">
            <li><strong>Viewport meta</strong>: without it, phones act as if they are about 980px wide and zoom out. Then the responsive classes do not work as expected.</li>
            <li><strong>CSS in the head</strong>: the page gets its styles before it is shown.</li>
            <li><strong>Bundle before <code>&lt;/body&gt;</code></strong>: <code>bootstrap.bundle.min.js</code> contains Bootstrap's JavaScript <em>and</em> Popper. Dropdowns, tooltips and popovers need Popper to position themselves. The HTML is already loaded when the script runs.</li>
            <li>Some pages use no interactive components (modals, dropdowns, collapse…). These pages can skip the script, but including it does no harm.</li>
          </ul>
          <p><strong>npm option (real projects):</strong> run <code>npm install bootstrap@5.3.8</code>. Then import it through a bundler (a tool that joins your files) such as Vite: <code>import 'bootstrap/dist/css/bootstrap.min.css';</code> and <code>import * as bootstrap from 'bootstrap';</code>. This also lets you customise Bootstrap with Sass (lesson 19).</p>
        </div>

        <div class="lc-card">
          <h3>Reboot: a clean starting point</h3>
          <p>The Bootstrap CSS starts with <strong>Reboot</strong>. Reboot is a set of base styles that makes all browsers behave the same way. For example, it:</p>
          <ul class="lc-list">
            <li>sets <code>box-sizing: border-box</code> on every element, so padding does not make boxes wider;</li>
            <li>removes the default <code>body</code> margin and uses the system's own fonts with <code>line-height: 1.5</code>;</li>
            <li>removes the top margin of headings and paragraphs but keeps a bottom margin, so space is added in one direction only.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Components vs utilities</h3>
          <table class="lc-table">
            <thead><tr><th></th><th>Components</th><th>Utilities</th></tr></thead>
            <tbody>
              <tr><td>What they are</td><td>Complete UI pieces made of several classes</td><td>Small classes that each set one or two CSS properties</td></tr>
              <tr><td>Examples</td><td><code>btn</code>, <code>card</code>, <code>navbar</code>, <code>modal</code></td><td><code>mt-3</code>, <code>text-center</code>, <code>d-flex</code>, <code>fw-bold</code></td></tr>
              <tr><td>Use them to…</td><td>build buttons, menus and dialogs quickly</td><td>change spacing, colour and alignment without writing CSS</td></tr>
            </tbody>
          </table>
        </div>

        <div class="lc-card">
          <h3>Breakpoints and the infix naming</h3>
          <p>Bootstrap has six breakpoints (screen widths where the layout can change). A short breakpoint name (the <em>infix</em>) goes <strong>inside</strong> the class name. The class then works from that width <strong>and up</strong>.</p>
          <table class="lc-table">
            <thead><tr><th>Breakpoint</th><th>Infix</th><th>Screen width</th><th>Example</th></tr></thead>
            <tbody>
              <tr><td>Extra small</td><td>none</td><td>&lt;576px (class applies at all widths)</td><td><code>col-6</code></td></tr>
              <tr><td>Small</td><td><code>sm</code></td><td>≥576px</td><td><code>col-sm-6</code></td></tr>
              <tr><td>Medium</td><td><code>md</code></td><td>≥768px</td><td><code>col-md-6</code></td></tr>
              <tr><td>Large</td><td><code>lg</code></td><td>≥992px</td><td><code>d-lg-none</code></td></tr>
              <tr><td>Extra large</td><td><code>xl</code></td><td>≥1200px</td><td><code>text-xl-center</code></td></tr>
              <tr><td>Extra extra large</td><td><code>xxl</code></td><td>≥1400px</td><td><code>col-xxl-3</code></td></tr>
            </tbody>
          </table>
          <p><code>col-md-6</code> means "half width from 768px up". <code>d-lg-none</code> means "hidden from 992px up". It is still visible on phones and tablets.</p>
        </div>

        <div class="lc-card">
          <h3>Containers</h3>
          <p>A container puts your content in the centre and adds padding on the left and right (0.75rem on each side). Almost every page starts with one.</p>
          <table class="lc-table">
            <thead><tr><th>Class</th><th>&lt;576px</th><th>≥576</th><th>≥768</th><th>≥992</th><th>≥1200</th><th>≥1400</th></tr></thead>
            <tbody>
              <tr><td><code>container</code></td><td>100%</td><td>540px</td><td>720px</td><td>960px</td><td>1140px</td><td>1320px</td></tr>
              <tr><td><code>container-md</code></td><td>100%</td><td>100%</td><td>720px</td><td>960px</td><td>1140px</td><td>1320px</td></tr>
              <tr><td><code>container-fluid</code></td><td>100%</td><td>100%</td><td>100%</td><td>100%</td><td>100%</td><td>100%</td></tr>
            </tbody>
          </table>
          <p><strong>Worked example:</strong> on a 1300px laptop, <code>container</code> is 1140px wide. It is centred, with 80px of space on each side. <code>container-md</code> is also 1140px. <code>container-fluid</code> is the full 1300px. On a 375px phone, all three are 100% wide.</p>
        </div>

        <div class="lc-card">
          <h3>Bootstrap vs hand-written CSS vs Tailwind</h3>
          <table class="lc-table">
            <thead><tr><th></th><th>Hand-written CSS</th><th>Bootstrap</th><th>Tailwind CSS</th></tr></thead>
            <tbody>
              <tr><td>Style</td><td>You write every rule</td><td>Components + utilities</td><td>Utilities first, no ready components</td></tr>
              <tr><td>Responsive syntax</td><td><code>@media</code> queries</td><td>Infix: <code>col-md-6</code></td><td>Prefix: <code>md:w-1/2</code></td></tr>
              <tr><td>Setup</td><td>None</td><td>One CDN link works</td><td>Usually a build step</td></tr>
              <tr><td>Interactive JS</td><td>You write it</td><td>Included (modals, dropdowns…)</td><td>Not included</td></tr>
              <tr><td>Best for</td><td>Unique designs, learning</td><td>Fast, consistent apps and admin panels</td><td>Custom designs built from utilities</td></tr>
            </tbody>
          </table>
        </div>

        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Forgetting the viewport meta tag → the phone zooms out and your <code>col-md-*</code> layout looks like the desktop one. Always include it.</li>
            <li>Writing Tailwind-style <code>md:col-6</code> → Bootstrap ignores it. Put the infix inside: <code>col-md-6</code>.</li>
            <li>Loading <code>bootstrap.min.js</code> without Popper, so dropdowns do not work → use <code>bootstrap.bundle.min.js</code>.</li>
            <li>Putting the script in the head without <code>defer</code> → load it just before <code>&lt;/body&gt;</code>.</li>
            <li>Mixing versions (CSS 5.3.8, JS 4.x) → keep both links on the same version number.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>Run the starter. Drag the preview narrower and wider. Watch the width counter and the three coloured container bars. The <code>container</code> bar jumps between fixed widths. The <code>container-fluid</code> bar always fills the preview.</li>
            <li>Change the middle bar from <code>container-md</code> to <code>container-lg</code>. Now it stays 100% wide until the counter reaches 992.</li>
            <li>Change the button's <code>btn-primary</code> to <code>btn-success</code>. It turns green, and you wrote no CSS.</li>
          </ol>
        </div>

        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Keep the official docs open at <code>getbootstrap.com/docs/5.3</code>. Every page shows live examples you can copy. The version number in the URL makes sure you read the docs for the version you actually load.
        </div>
      HTML
      starter_code: <<~'HTML'
        <!DOCTYPE html>
        <html lang="en">
        <head>
          <meta charset="UTF-8">
          <meta name="viewport" content="width=device-width, initial-scale=1.0">
          <title>Hello Bootstrap</title>
          <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet">
          <style>
            .bar { padding: 0.5rem 0.75rem; margin-bottom: 0.75rem; border-radius: 0.375rem; }
          </style>
        </head>
        <body class="py-4">
          <div class="container">
            <h1 class="h3">Chai Point: Hello, Bootstrap!</h1>
            <p class="text-body-secondary">Preview width: <strong id="w"></strong>px</p>
          </div>

          <!-- 1. Containers: resize the preview and compare the bars -->
          <div class="container-fluid"><div class="bar text-bg-primary">container-fluid: always 100%</div></div>
          <div class="container-md"><div class="bar text-bg-success">container-md: 100% below 768px, then fixed</div></div>
          <div class="container"><div class="bar text-bg-warning">container: fixed width from 576px up</div></div>

          <div class="container mt-3">
            <!-- 2. A component: a styled button -->
            <button type="button" class="btn btn-primary">Order masala chai: ₹30</button>

            <!-- 3. Utilities: one class, one job -->
            <p class="mt-3 fw-bold text-center">fw-bold + text-center + mt-3</p>

            <!-- 4. Infix naming: this text shows only below 992px (d-lg-none) -->
            <p class="d-lg-none text-danger">You are below the lg breakpoint (992px).</p>
          </div>

          <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"></script>
          <script>
            const show = () => { document.getElementById('w').textContent = window.innerWidth; };
            show();
            window.addEventListener('resize', show);
          </script>
        </body>
        </html>
      HTML
    },

    2 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-bootstrap">Bootstrap</div>
          <h1 class="lc-title">The Grid System</h1>
        </div>
        <p class="lc-lead">The grid is the Bootstrap feature people use most. It splits each row into 12 equal columns. You say how many columns an element should take up at each screen size. The grid is built on flexbox. It gives you responsive layouts with only class names: one column on phones, two on tablets and three on laptops.</p>

        <div class="lc-card">
          <h3>Container → row → column</h3>
          <p>Every grid has three layers, always in this order:</p>
          <ul class="lc-list">
            <li><strong>Container</strong> (<code>container</code>, <code>container-fluid</code>…): puts the content in the centre and adds padding.</li>
            <li><strong>Row</strong> (<code>row</code>): a flex container that wraps. Its negative side margins cancel the column padding at the edges.</li>
            <li><strong>Column</strong> (<code>col-*</code>): the direct children of a row. Your content goes <em>inside</em> columns. The space between columns (the <em>gutter</em>) comes from column padding. It is 1.5rem in total by default.</li>
          </ul>
          <div class="lc-code">&lt;div class="container"&gt;<br>  &lt;div class="row"&gt;<br>    &lt;div class="col-8"&gt;Main (8 of 12)&lt;/div&gt;<br>    &lt;div class="col-4"&gt;Sidebar (4 of 12)&lt;/div&gt;<br>  &lt;/div&gt;<br>&lt;/div&gt;</div>
          <p><strong>What you will see:</strong> two boxes side by side on every screen size. The first is two-thirds wide. The second is one-third wide.</p>
        </div>

        <div class="lc-card">
          <h3>Six tiers</h3>
          <table class="lc-table">
            <thead><tr><th>Tier</th><th>Screen width</th><th>Column class</th><th><code>container</code> max-width</th></tr></thead>
            <tbody>
              <tr><td>xs</td><td>&lt;576px</td><td><code>col-*</code> (no infix)</td><td>100%</td></tr>
              <tr><td>sm</td><td>≥576px</td><td><code>col-sm-*</code></td><td>540px</td></tr>
              <tr><td>md</td><td>≥768px</td><td><code>col-md-*</code></td><td>720px</td></tr>
              <tr><td>lg</td><td>≥992px</td><td><code>col-lg-*</code></td><td>960px</td></tr>
              <tr><td>xl</td><td>≥1200px</td><td><code>col-xl-*</code></td><td>1140px</td></tr>
              <tr><td>xxl</td><td>≥1400px</td><td><code>col-xxl-*</code></td><td>1320px</td></tr>
            </tbody>
          </table>
          <p>A tier class works at its width <strong>and every wider width</strong>. It stops only when a class for a larger tier replaces it.</p>
        </div>

        <div class="lc-card">
          <h3>Worked example: mobile-first stacking</h3>
          <div class="lc-code">&lt;div class="container"&gt;<br>  &lt;div class="row"&gt;<br>    &lt;div class="col-12 col-md-6 col-lg-4"&gt;Maharashtra&lt;/div&gt;<br>    &lt;div class="col-12 col-md-6 col-lg-4"&gt;Gujarat&lt;/div&gt;<br>    &lt;div class="col-12 col-md-6 col-lg-4"&gt;Kerala&lt;/div&gt;<br>  &lt;/div&gt;<br>&lt;/div&gt;</div>
          <table class="lc-table">
            <thead><tr><th>Screen</th><th>Class that wins</th><th>Layout</th><th>Each column</th></tr></thead>
            <tbody>
              <tr><td>375px phone</td><td><code>col-12</code></td><td>3 stacked rows</td><td>375px (full width)</td></tr>
              <tr><td>800px tablet</td><td><code>col-md-6</code></td><td>2 + 1 (Kerala wraps)</td><td>720 ÷ 2 = 360px</td></tr>
              <tr><td>1024px laptop</td><td><code>col-lg-4</code></td><td>3 in one row</td><td>960 ÷ 3 = 320px</td></tr>
            </tbody>
          </table>
          <p><strong>What you will see:</strong> the widths above include 12px of padding on both sides of each column. So the text area of a 360px column is 336px. Kerala wraps to a new line on the tablet because 6 + 6 + 6 = 18 &gt; 12.</p>
        </div>

        <div class="lc-card">
          <h3>Equal columns, auto columns, fixed spans</h3>
          <table class="lc-table">
            <thead><tr><th>Class</th><th>Width</th></tr></thead>
            <tbody>
              <tr><td><code>col</code></td><td>Shares the space equally with other <code>col</code> siblings (3 × <code>col</code> = thirds)</td></tr>
              <tr><td><code>col-auto</code></td><td>As wide as its content</td></tr>
              <tr><td><code>col-4</code></td><td>Exactly 4 of 12 columns (33.33%) on all screens</td></tr>
              <tr><td><code>col-md</code></td><td>Stacked below 768px, equal widths from 768px up</td></tr>
            </tbody>
          </table>
        </div>

        <div class="lc-card">
          <h3>Gutters and row-cols</h3>
          <ul class="lc-list">
            <li><code>g-*</code> (0–5) sets both horizontal and vertical gutters on a row. <code>g-0</code> removes them. <code>g-4</code> makes them 1.5rem.</li>
            <li><code>gx-*</code> sets only horizontal gutters. <code>gy-*</code> sets only vertical ones (useful when columns wrap).</li>
            <li><code>row-cols-*</code> goes on the <em>row</em> and sets how many columns fit on each line. Then the children just use <code>col</code>. For example, <code>row row-cols-1 row-cols-md-3</code> = 1 per line on phones, 3 per line from 768px.</li>
          </ul>
          <div class="lc-code">&lt;div class="row row-cols-2 row-cols-lg-4 g-3"&gt;<br>  &lt;div class="col"&gt;...&lt;/div&gt;  &lt;!-- repeat 8 times --&gt;<br>&lt;/div&gt;</div>
          <p><strong>What you will see:</strong> 8 boxes. On small screens they show as 4 lines of 2. From 992px up they show as 2 lines of 4. There is 1rem of space between boxes in both directions.</p>
        </div>

        <div class="lc-card">
          <h3>Offsets, order and nesting</h3>
          <ul class="lc-list">
            <li><code>offset-md-2</code> adds a left margin of 2 columns from 768px up. <code>col-md-8 offset-md-2</code> puts an 8-column block in the centre.</li>
            <li><code>order-first</code>, <code>order-last</code>, <code>order-0</code>…<code>order-5</code> (and <code>order-md-*</code>) change only the order you <em>see</em>. Screen readers and the Tab key still follow the HTML order. So keep the order in your HTML logical.</li>
            <li><strong>Nesting:</strong> put a new <code>row</code> inside a column. That inner row has its own 12 columns.</li>
          </ul>
          <div class="lc-code">&lt;div class="row"&gt;<br>  &lt;div class="col-md-8"&gt;<br>    &lt;div class="row"&gt;<br>      &lt;div class="col-6"&gt;Half of the 8&lt;/div&gt;<br>      &lt;div class="col-6"&gt;Half of the 8&lt;/div&gt;<br>    &lt;/div&gt;<br>  &lt;/div&gt;<br>  &lt;div class="col-md-4"&gt;Sidebar&lt;/div&gt;<br>&lt;/div&gt;</div>
        </div>

        <div class="lc-card">
          <h3>Alignment</h3>
          <table class="lc-table">
            <thead><tr><th>Class</th><th>Goes on</th><th>Effect</th></tr></thead>
            <tbody>
              <tr><td><code>align-items-start / center / end</code></td><td>row</td><td>Vertical position of all columns (the row needs extra height for you to see it)</td></tr>
              <tr><td><code>align-self-center</code></td><td>column</td><td>Vertical position of one column</td></tr>
              <tr><td><code>justify-content-center / between / around / evenly</code></td><td>row</td><td>How columns are spread across when they add up to less than 12</td></tr>
            </tbody>
          </table>
        </div>

        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Putting content directly in a <code>row</code> → wrap it in a <code>col-*</code>. Only columns should be the row's children.</li>
            <li>Writing <code>col-md-6</code> alone and expecting half width on phones → below 768px it becomes full width. Add <code>col-6</code> if you want half width everywhere.</li>
            <li>Adding margins to columns for spacing → the columns will wrap. Use gutters (<code>g-3</code>) on the row instead.</li>
            <li>Using <code>order-*</code> to fix a confusing HTML order → fix the HTML instead. Order only changes what you see.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>Run the starter and resize the preview. In section 3, watch the cards change from 1 → 2 → 3 per line at 768px and 992px.</li>
            <li>In section 2, change <code>col-auto</code> to <code>col</code>. The "Order now" box grows and shares the space equally.</li>
            <li>In section 4, change <code>g-3</code> to <code>g-0</code>. The gaps between cards disappear.</li>
          </ol>
        </div>

        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Design for the phone first. Start with <code>col-12</code> (or no column class at all on small screens). Then add <code>col-md-*</code> and <code>col-lg-*</code> only where the layout should change.
        </div>
      HTML
      starter_code: <<~'HTML'
        <!DOCTYPE html>
        <html lang="en">
        <head>
          <meta charset="UTF-8">
          <meta name="viewport" content="width=device-width, initial-scale=1.0">
          <title>Bootstrap Grid</title>
          <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet">
          <style>
            .box { background: #6f42c1; color: #fff; padding: 0.75rem; border-radius: 0.375rem; text-align: center; }
          </style>
        </head>
        <body class="bg-body-tertiary py-4">
          <div class="container">
            <h2 class="h5">1. Fixed spans: col-8 + col-4</h2>
            <div class="row g-3 mb-4">
              <div class="col-8"><div class="box">col-8</div></div>
              <div class="col-4"><div class="box">col-4</div></div>
            </div>

            <h2 class="h5">2. Equal col + col-auto</h2>
            <div class="row g-3 mb-4">
              <div class="col"><div class="box">col</div></div>
              <div class="col"><div class="box">col</div></div>
              <div class="col-auto"><div class="box">Order now</div></div>
            </div>

            <h2 class="h5">3. Mobile-first: col-12 col-md-6 col-lg-4</h2>
            <div class="row g-3 mb-4">
              <div class="col-12 col-md-6 col-lg-4"><div class="box">Maharashtra</div></div>
              <div class="col-12 col-md-6 col-lg-4"><div class="box">Gujarat</div></div>
              <div class="col-12 col-md-6 col-lg-4"><div class="box">Kerala</div></div>
            </div>

            <h2 class="h5">4. row-cols-2 row-cols-md-4 with g-3</h2>
            <div class="row row-cols-2 row-cols-md-4 g-3 mb-4">
              <div class="col"><div class="box">Chai</div></div>
              <div class="col"><div class="box">Samosa</div></div>
              <div class="col"><div class="box">Vada pav</div></div>
              <div class="col"><div class="box">Lassi</div></div>
            </div>

            <h2 class="h5">5. Centred with offset: col-md-6 offset-md-3</h2>
            <div class="row">
              <div class="col-md-6 offset-md-3"><div class="box">Centred from 768px up</div></div>
            </div>
          </div>
          <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"></script>
        </body>
        </html>
      HTML
    },

    3 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-bootstrap">Bootstrap</div>
          <h1 class="lc-title">Typography and Text Utilities</h1>
        </div>
        <p class="lc-lead">Bootstrap gives your text good defaults: a system font stack (the phone's or computer's own fonts), a 16px base size and a comfortable line height. It also has utility classes to change size, weight, alignment, wrapping and link style without writing CSS. This lesson covers the classes you will use on almost every page.</p>

        <div class="lc-card">
          <h3>Headings: meaning vs looks</h3>
          <p>Choose the heading <em>element</em> (<code>h1</code>–<code>h6</code>) based on the page outline. Then use a class to change how it <em>looks</em>.</p>
          <ul class="lc-list">
            <li><code>.h1</code>–<code>.h6</code>: give any element heading styles. <code>&lt;h2 class="h4"&gt;</code> is still an h2 for screen readers, but it looks smaller.</li>
            <li><code>.display-1</code>–<code>.display-6</code>: extra-large, lighter headings for hero sections (the big banner at the top of a page). They go from 5rem down to 2.5rem on wide screens.</li>
            <li><code>.lead</code>: a larger (1.25rem), lighter intro paragraph.</li>
            <li><code>fs-1</code>–<code>fs-6</code>: change only the font size. They match the h1–h6 sizes (2.5rem → 1rem).</li>
          </ul>
          <p>The h1–h4 sizes, the display classes and <code>fs-1</code>–<code>fs-4</code> use responsive font sizes (RFS). This means they are a little smaller below 1200px. They reach their full size from 1200px up.</p>
        </div>

        <div class="lc-card">
          <h3>Weight, style and transform</h3>
          <table class="lc-table">
            <thead><tr><th>Class</th><th>CSS</th></tr></thead>
            <tbody>
              <tr><td><code>fw-bold</code> / <code>fw-semibold</code> / <code>fw-medium</code></td><td>font-weight 700 / 600 / 500</td></tr>
              <tr><td><code>fw-normal</code> / <code>fw-light</code></td><td>font-weight 400 / 300</td></tr>
              <tr><td><code>fst-italic</code> / <code>fst-normal</code></td><td>font-style italic / normal</td></tr>
              <tr><td><code>text-uppercase</code> / <code>text-lowercase</code> / <code>text-capitalize</code></td><td>text-transform</td></tr>
              <tr><td><code>text-decoration-underline</code> / <code>-line-through</code> / <code>-none</code></td><td>text-decoration</td></tr>
              <tr><td><code>font-monospace</code></td><td>monospace font stack (for codes and IDs)</td></tr>
              <tr><td><code>lh-1</code> / <code>lh-sm</code> / <code>lh-base</code> / <code>lh-lg</code></td><td>line-height 1 / 1.25 / 1.5 / 2</td></tr>
              <tr><td><code>small</code> / <code>mark</code></td><td>0.875em text / highlighted background</td></tr>
            </tbody>
          </table>
        </div>

        <div class="lc-card">
          <h3>Alignment and wrapping</h3>
          <ul class="lc-list">
            <li><code>text-start</code>, <code>text-center</code>, <code>text-end</code>, and responsive versions such as <code>text-center text-md-start</code> (centred on phones, left-aligned from 768px).</li>
            <li><code>text-nowrap</code> keeps text on one line. <code>text-wrap</code> allows wrapping again (useful inside buttons or badges).</li>
            <li><code>text-truncate</code> cuts one line of text that is too long and adds "…". The element must be <code>display: block</code> or <code>inline-block</code>, and it must have a limited width.</li>
            <li><code>text-break</code> lets very long words or URLs break onto the next line, so they do not overflow.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Worked example: an event hero</h3>
          <div class="lc-code">&lt;div class="text-center text-md-start"&gt;<br>  &lt;h1 class="display-5 fw-bold"&gt;TechFest 2026&lt;/h1&gt;<br>  &lt;p class="lead"&gt;Two days of hackathons, talks and robots.&lt;/p&gt;<br>  &lt;p class="text-body-secondary small text-uppercase"&gt;City Tech Campus · 14–15 March&lt;/p&gt;<br>&lt;/div&gt;</div>
          <p><strong>What you will see:</strong> on a phone, all three lines are centred. From 768px, they are left-aligned. "TechFest 2026" is a large bold display heading. The lead line is bigger and lighter than normal text. The last line is small, grey and in capital letters ("CITY TECH CAMPUS · 14–15 MARCH").</p>
        </div>

        <div class="lc-card">
          <h3>Grey text: use text-body-secondary</h3>
          <p>For less important text, use <code>text-body-secondary</code> (or <code>text-body-tertiary</code> for even lighter text). The old <code>text-muted</code> is <strong>deprecated since 5.3.0</strong>. This means it is the old way, so do not use it. Fixed greys stay the same, but <code>text-body-secondary</code> changes to suit dark mode.</p>
        </div>

        <div class="lc-card">
          <h3>Quotes and lists</h3>
          <div class="lc-code">&lt;figure&gt;<br>  &lt;blockquote class="blockquote"&gt;<br>    &lt;p&gt;Arise, awake, and stop not till the goal is reached.&lt;/p&gt;<br>  &lt;/blockquote&gt;<br>  &lt;figcaption class="blockquote-footer"&gt;Swami Vivekananda&lt;/figcaption&gt;<br>&lt;/figure&gt;</div>
          <p><strong>What you will see:</strong> the quote in larger text. Below it is a small grey line that starts with an em dash: "— Swami Vivekananda".</p>
          <ul class="lc-list">
            <li><code>list-unstyled</code> on a <code>ul</code>/<code>ol</code> removes bullets and left padding. It works only on direct children, so nested lists keep their bullets.</li>
            <li>Put <code>list-inline</code> on the list and <code>list-inline-item</code> on each <code>li</code>. This puts the items on one line.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Link utilities</h3>
          <table class="lc-table">
            <thead><tr><th>Class</th><th>Effect</th></tr></thead>
            <tbody>
              <tr><td><code>link-primary</code>, <code>link-success</code>, … <code>link-body-emphasis</code></td><td>Colours the link (and its hover state)</td></tr>
              <tr><td><code>link-offset-2</code></td><td>Moves the underline further from the text</td></tr>
              <tr><td><code>link-underline-opacity-25</code> + <code>link-underline-opacity-100-hover</code></td><td>A light underline that becomes solid on hover</td></tr>
              <tr><td><code>icon-link</code> (+ <code>icon-link-hover</code>)</td><td>Lines up text and an icon. With <code>-hover</code>, the icon moves on hover</td></tr>
            </tbody>
          </table>
        </div>

        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Choosing <code>&lt;h4&gt;</code> because it "looks right" → use the correct level, and add <code>class="h4"</code> for the look.</li>
            <li>Using <code>text-muted</code> from old tutorials → use <code>text-body-secondary</code>.</li>
            <li>Adding <code>text-truncate</code> to an inline <code>&lt;span&gt;</code> with no width → nothing is cut. Use a block element (or <code>d-inline-block</code>) that has a width.</li>
            <li>Writing <code>font-weight-bold</code> or <code>text-left</code> (Bootstrap 4 names) → in 5.3 they are <code>fw-bold</code> and <code>text-start</code>.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>Run the starter. In section 1, change <code>display-5</code> to <code>display-2</code>. The heading gets much bigger.</li>
            <li>In section 3, change the <code>max-width</code> of the truncated line from <code>260px</code> to <code>600px</code>. More of the sentence appears before the "…".</li>
            <li>Resize the preview past 768px. Watch section 1 switch from centred to left-aligned (<code>text-md-start</code>).</li>
          </ol>
        </div>

        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> You can use many utilities together, like <code>class="fs-5 fw-semibold text-uppercase text-body-secondary"</code>. But if you repeat the same long list of classes many times, make one custom class in your own CSS instead.
        </div>
      HTML
      starter_code: <<~'HTML'
        <!DOCTYPE html>
        <html lang="en">
        <head>
          <meta charset="UTF-8">
          <meta name="viewport" content="width=device-width, initial-scale=1.0">
          <title>Bootstrap Typography</title>
          <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet">
        </head>
        <body>
          <div class="container py-4">
            <!-- 1. Display heading, lead, responsive alignment -->
            <section class="text-center text-md-start mb-4">
              <h1 class="display-5 fw-bold">TechFest 2026</h1>
              <p class="lead">Two days of hackathons, talks and robots.</p>
              <p class="text-body-secondary small text-uppercase">City Tech Campus · 14–15 March</p>
            </section>

            <!-- 2. Heading level vs looks -->
            <h2 class="h5">2. This is an h2 that looks like an h5</h2>
            <p><span class="fw-semibold">fw-semibold</span> · <span class="fst-italic">fst-italic</span> · <span class="mark">mark</span> · <span class="font-monospace">TF-2026-0042</span></p>

            <!-- 3. Truncate (needs a block element with a width) -->
            <h2 class="h5">3. text-truncate</h2>
            <p class="text-truncate" style="max-width: 260px;">Registration closes soon, so book your hackathon slot before all teams are full.</p>

            <!-- 4. Quote with footer -->
            <figure class="mt-4">
              <blockquote class="blockquote"><p>Arise, awake, and stop not till the goal is reached.</p></blockquote>
              <figcaption class="blockquote-footer">Swami Vivekananda</figcaption>
            </figure>

            <!-- 5. Inline list and link utilities -->
            <ul class="list-inline">
              <li class="list-inline-item">Robotics</li>
              <li class="list-inline-item">Coding</li>
              <li class="list-inline-item">Quiz</li>
            </ul>
            <a href="#" class="link-primary link-offset-2 link-underline-opacity-25 link-underline-opacity-100-hover">Faint underline, solid on hover</a>
          </div>
          <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"></script>
        </body>
        </html>
      HTML
    },

    4 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-bootstrap">Bootstrap</div>
          <h1 class="lc-title">Colours and Backgrounds</h1>
        </div>
        <p class="lc-lead">Bootstrap uses a small set of named theme colours, such as primary, success and danger. You use them for text, backgrounds, borders, buttons and alerts. You use names instead of hex codes (like #0d6efd). So your whole site stays consistent, and you can change the theme in one place. This lesson covers the colour and background utilities in Bootstrap 5.3.</p>

        <div class="lc-card">
          <h3>Theme colours</h3>
          <table class="lc-table">
            <thead><tr><th>Name</th><th>Default</th><th>Typical meaning</th></tr></thead>
            <tbody>
              <tr><td><code>primary</code></td><td>#0d6efd blue</td><td>Main action, brand</td></tr>
              <tr><td><code>secondary</code></td><td>#6c757d grey</td><td>Less important actions</td></tr>
              <tr><td><code>success</code></td><td>#198754 green</td><td>Done, paid, saved</td></tr>
              <tr><td><code>danger</code></td><td>#dc3545 red</td><td>Errors, delete</td></tr>
              <tr><td><code>warning</code></td><td>#ffc107 yellow</td><td>Caution</td></tr>
              <tr><td><code>info</code></td><td>#0dcaf0 cyan</td><td>Neutral information</td></tr>
              <tr><td><code>light</code> / <code>dark</code></td><td>#f8f9fa / #212529</td><td>Very light / very dark surfaces</td></tr>
            </tbody>
          </table>
          <p>There are also <strong>body</strong> colours that follow the page theme (light or dark): <code>text-body</code>, <code>text-body-emphasis</code>, <code>text-body-secondary</code>, <code>text-body-tertiary</code>, <code>bg-body</code>, <code>bg-body-secondary</code>, <code>bg-body-tertiary</code>.</p>
        </div>

        <div class="lc-card">
          <h3>The colour class families</h3>
          <table class="lc-table">
            <thead><tr><th>Class</th><th>What it sets</th><th>Example</th></tr></thead>
            <tbody>
              <tr><td><code>text-{color}</code></td><td>Text colour only</td><td><code>text-danger</code></td></tr>
              <tr><td><code>bg-{color}</code></td><td>Background only (text colour is NOT changed)</td><td><code>bg-dark</code></td></tr>
              <tr><td><code>text-bg-{color}</code></td><td>Background + a text colour that is easy to read, chosen for you</td><td><code>text-bg-warning</code> (black text)</td></tr>
              <tr><td><code>bg-{color}-subtle</code></td><td>Very pale background colour</td><td><code>bg-success-subtle</code></td></tr>
              <tr><td><code>text-{color}-emphasis</code></td><td>Darker text that goes with the pale background</td><td><code>text-success-emphasis</code></td></tr>
              <tr><td><code>border-{color}-subtle</code></td><td>Pale border colour (add <code>border</code> too)</td><td><code>border border-success-subtle</code></td></tr>
              <tr><td><code>bg-gradient</code></td><td>Adds a soft gradient (white fading to see-through) over the background colour</td><td><code>bg-primary bg-gradient</code></td></tr>
            </tbody>
          </table>
        </div>

        <div class="lc-card">
          <h3>Worked example: a payment message</h3>
          <div class="lc-code">&lt;div class="p-3 rounded bg-success-subtle text-success-emphasis border border-success-subtle"&gt;<br>  ✔ Payment successful: ₹499 received for the college fest pass.<br>&lt;/div&gt;<br><br>&lt;span class="p-2 rounded text-bg-danger"&gt;Error: seat not available&lt;/span&gt;</div>
          <p><strong>What you will see:</strong> a pale green box with dark green text, a thin light-green border, rounded corners and 1rem of padding. Below it is a solid red label with white text. <code>text-bg-danger</code> chose white because it is easy to read on red.</p>
        </div>

        <div class="lc-card">
          <h3>Opacity helpers</h3>
          <p>In 5.3, <code>text-*</code> and <code>bg-*</code> are made from an RGB variable plus an opacity variable (opacity means how see-through something is). For example: <code>rgba(var(--bs-primary-rgb), var(--bs-text-opacity))</code>. That is why you can fade them:</p>
          <ul class="lc-list">
            <li><code>text-opacity-75</code>, <code>-50</code>, <code>-25</code>, <code>-100</code>: use them together with a <code>text-{color}</code> class.</li>
            <li><code>bg-opacity-10</code>, <code>-25</code>, <code>-50</code>, <code>-75</code>, <code>-100</code>: use them together with a <code>bg-{color}</code> class.</li>
          </ul>
          <div class="lc-code">&lt;div class="bg-primary bg-opacity-25 p-2"&gt;Light blue box&lt;/div&gt;<br>&lt;p class="text-primary text-opacity-50"&gt;Half-transparent blue text&lt;/p&gt;</div>
          <p>The CSS <code>opacity</code> property fades everything. These classes fade only the colour. The content inside stays fully visible.</p>
        </div>

        <div class="lc-card">
          <h3>Deprecated and non-adaptive classes</h3>
          <table class="lc-table">
            <thead><tr><th>Instead of</th><th>Use</th><th>Why</th></tr></thead>
            <tbody>
              <tr><td><code>text-muted</code></td><td><code>text-body-secondary</code></td><td>Deprecated in 5.3.0. This is the old way, so do not use it</td></tr>
              <tr><td><code>text-black-50</code>, <code>text-white-50</code></td><td><code>text-black text-opacity-50</code>, <code>text-white text-opacity-50</code></td><td>Deprecated in 5.1.0. This is the old way, so do not use it</td></tr>
              <tr><td><code>bg-light</code> for page sections</td><td><code>bg-body-tertiary</code></td><td>Not deprecated, but <code>bg-light</code> stays light in dark mode</td></tr>
            </tbody>
          </table>
          <p>Colour modes (light/dark with <code>data-bs-theme</code>) are covered in lesson 19. For now, remember this: <code>body</code>-based classes change with the mode. Fixed classes such as <code>bg-white</code> do not.</p>
        </div>

        <div class="lc-card">
          <h3>Accessibility: never rely on colour alone</h3>
          <p>About 1 in 12 men has some colour blindness. Screen readers also do not read colours out loud. So a red box must also <em>say</em> "Error". A green one should say "Success" or show ✔. If the meaning is only in the colour, add text (visible, or inside <code>visually-hidden</code>). Also check contrast: yellow text on white (<code>text-warning</code>) is hard to read.</p>
        </div>

        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Using <code>bg-dark</code> alone → the text stays dark and you cannot read it. Use <code>text-bg-dark</code>.</li>
            <li>Making up names like <code>bg-green</code> or <code>text-red</code> → they do not exist. Use theme names: <code>bg-success</code>, <code>text-danger</code>.</li>
            <li>Adding <code>border-primary-subtle</code> without <code>border</code> → no border appears. Add <code>border</code> to draw it.</li>
            <li>Using <code>bg-opacity-50</code> alone → there is nothing to fade. Use it with a <code>bg-{color}</code> class.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>Run the starter. In section 1, change the last box from <code>text-bg-warning</code> to <code>bg-warning</code> plus <code>text-white</code>. See how hard white text on yellow is to read. Then change it back.</li>
            <li>In section 2, change <code>success</code> to <code>danger</code> in all three classes. Edit the text so it starts with "Error:". The box turns pale red with dark red text.</li>
            <li>In section 3, change <code>bg-opacity-25</code> to <code>bg-opacity-75</code>. The blue gets stronger, but the text stays solid.</li>
          </ol>
        </div>

        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> For friendly status messages, use these three together: a <code>-subtle</code> background, <code>-emphasis</code> text and <code>border-*-subtle</code>. For small, strong labels, use <code>text-bg-*</code>. Both give good contrast without any custom CSS.
        </div>
      HTML
      starter_code: <<~'HTML'
        <!DOCTYPE html>
        <html lang="en">
        <head>
          <meta charset="UTF-8">
          <meta name="viewport" content="width=device-width, initial-scale=1.0">
          <title>Bootstrap Colours</title>
          <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet">
        </head>
        <body class="bg-body-tertiary">
          <div class="container py-4">
            <!-- 1. text-bg-*: background + auto-contrast text -->
            <h2 class="h5">1. text-bg-*</h2>
            <div class="row g-2 mb-4 text-center fw-semibold">
              <div class="col-6 col-md-3"><div class="p-3 rounded text-bg-primary">primary</div></div>
              <div class="col-6 col-md-3"><div class="p-3 rounded text-bg-success">success</div></div>
              <div class="col-6 col-md-3"><div class="p-3 rounded text-bg-danger">danger</div></div>
              <div class="col-6 col-md-3"><div class="p-3 rounded text-bg-warning">warning</div></div>
            </div>

            <!-- 2. subtle background + emphasis text + subtle border -->
            <h2 class="h5">2. Subtle trio</h2>
            <div class="p-3 mb-4 rounded bg-success-subtle text-success-emphasis border border-success-subtle">
              ✔ Payment successful: ₹499 received for the college fest pass.
            </div>

            <!-- 3. Opacity helpers fade only the colour -->
            <h2 class="h5">3. Opacity</h2>
            <div class="bg-primary bg-opacity-25 p-3 rounded mb-2">bg-primary bg-opacity-25 (text stays solid)</div>
            <p class="text-primary text-opacity-50 fw-bold">text-primary text-opacity-50</p>

            <!-- 4. Gradient and body colours -->
            <h2 class="h5">4. Gradient and body colours</h2>
            <div class="p-3 rounded text-bg-primary bg-gradient mb-2">text-bg-primary bg-gradient</div>
            <p class="text-body-secondary mb-0">text-body-secondary: the modern grey text</p>
          </div>
          <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"></script>
        </body>
        </html>
      HTML
    },

    5 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-bootstrap">Bootstrap</div>
          <h1 class="lc-title">Spacing Utilities</h1>
        </div>
        <p class="lc-lead">Spacing is the margin (space outside an element) and the padding (space inside it). Good spacing makes a page look clean. Too little makes it look crowded. Bootstrap's spacing utilities set margin, padding and gaps from one fixed scale. They can change at different screen sizes. They use short class names like <code>mt-3</code> and <code>px-md-5</code>.</p>

        <div class="lc-card">
          <h3>The naming formula</h3>
          <div class="lc-code">{property}{sides}-{size}            e.g. mt-3<br>{property}{sides}-{breakpoint}-{size}   e.g. px-md-5</div>
          <table class="lc-table">
            <thead><tr><th>Part</th><th>Options</th></tr></thead>
            <tbody>
              <tr><td>Property</td><td><code>m</code> = margin, <code>p</code> = padding</td></tr>
              <tr><td>Sides</td><td><code>t</code> top, <code>b</code> bottom, <code>s</code> start, <code>e</code> end, <code>x</code> start + end, <code>y</code> top + bottom, blank = all four</td></tr>
              <tr><td>Breakpoint</td><td>none, <code>sm</code>, <code>md</code>, <code>lg</code>, <code>xl</code>, <code>xxl</code>: works from that width up</td></tr>
              <tr><td>Size</td><td><code>0</code>–<code>5</code>, or <code>auto</code> (margin only)</td></tr>
            </tbody>
          </table>
          <p><strong>Start/end</strong> is used instead of left/right. In left-to-right languages, start = left. Some right-to-left pages (Arabic, Urdu) load Bootstrap's RTL stylesheet (<code>bootstrap.rtl.min.css</code>). On those pages, start = right. Bootstrap 5 uses <code>ms-*</code>/<code>me-*</code>. The Bootstrap 4 names <code>ml-*</code>/<code>mr-*</code> no longer exist.</p>
        </div>

        <div class="lc-card">
          <h3>The spacing scale</h3>
          <table class="lc-table">
            <thead><tr><th>Size</th><th>Value</th><th>Pixels (16px root)</th></tr></thead>
            <tbody>
              <tr><td>0</td><td>0</td><td>0</td></tr>
              <tr><td>1</td><td>0.25rem</td><td>4px</td></tr>
              <tr><td>2</td><td>0.5rem</td><td>8px</td></tr>
              <tr><td>3</td><td>1rem</td><td>16px</td></tr>
              <tr><td>4</td><td>1.5rem</td><td>24px</td></tr>
              <tr><td>5</td><td>3rem</td><td>48px</td></tr>
            </tbody>
          </table>
          <p>These values come from the Sass <code>$spacer</code> variable (1rem by default). Note the big jump from 4 (1.5rem) to 5 (3rem).</p>
        </div>

        <div class="lc-card">
          <h3>Worked example: a centred price box</h3>
          <div class="lc-code">&lt;div style="width: 600px"&gt;<br>  &lt;div class="w-50 mx-auto px-4 py-2 mb-3 border rounded"&gt;<br>    Masala dosa: ₹80<br>  &lt;/div&gt;<br>&lt;/div&gt;</div>
          <p><strong>What you will see:</strong> a box with a border and rounded corners. It is 300px wide (<code>w-50</code> of 600px). <code>mx-auto</code> centres it, with 150px of empty space on each side. Inside, it has 24px of padding on the left and right (<code>px-4</code>) and 8px on top and bottom (<code>py-2</code>). Bootstrap uses <code>box-sizing: border-box</code>, so the box stays 300px wide. The text area is 300 − 24 − 24 − 2 (the 1px borders) = 250px. Anything after the box starts 16px lower (<code>mb-3</code>).</p>
        </div>

        <div class="lc-card">
          <h3>Common classes</h3>
          <table class="lc-table">
            <thead><tr><th>Class</th><th>CSS it applies</th></tr></thead>
            <tbody>
              <tr><td><code>p-3</code></td><td>padding: 1rem (all sides)</td></tr>
              <tr><td><code>py-2</code></td><td>padding-top and padding-bottom: 0.5rem</td></tr>
              <tr><td><code>mt-5</code></td><td>margin-top: 3rem</td></tr>
              <tr><td><code>mb-0</code></td><td>margin-bottom: 0 (for example, to remove a paragraph's default margin)</td></tr>
              <tr><td><code>mx-auto</code></td><td>margin-left and margin-right: auto (centres a block that has a width)</td></tr>
              <tr><td><code>ms-auto</code></td><td>margin-left: auto (margin-right in the RTL stylesheet). It pushes an item to the far end of a flex row</td></tr>
              <tr><td><code>p-2 p-md-4 p-lg-5</code></td><td>8px on phones, 24px from 768px, 48px from 992px</td></tr>
            </tbody>
          </table>
        </div>

        <div class="lc-card">
          <h3>Gap utilities</h3>
          <p>To add space <em>between</em> the children of a flex or grid container, use gap. Do not add margins to each child. Gaps add no extra space at the outer edges.</p>
          <ul class="lc-list">
            <li><code>gap-3</code>: 1rem between items in both directions.</li>
            <li><code>row-gap-3</code>: vertical space only. <code>column-gap-3</code>: horizontal space only.</li>
            <li>All of them are responsive: <code>gap-2 gap-md-4</code>.</li>
          </ul>
          <div class="lc-code">&lt;div class="d-flex gap-3"&gt;<br>  &lt;span class="p-2 border"&gt;Chai&lt;/span&gt;<br>  &lt;span class="p-2 border"&gt;Coffee&lt;/span&gt;<br>&lt;/div&gt;</div>
          <p><strong>What you will see:</strong> two bordered boxes side by side with exactly 16px between them.</p>
        </div>

        <div class="lc-card">
          <h3>Negative margins are off by default</h3>
          <p>Classes like <code>mt-n2</code> are <strong>not</strong> in the default Bootstrap 5.3 CSS. They only exist if you compile (build) Bootstrap from Sass with <code>$enable-negative-margins: true</code>. If you use the CDN file and really need one, write your own CSS (for example <code>margin-top: -0.5rem</code>).</p>
        </div>

        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Using <code>mx-auto</code> on a block with no width → it is already full width, so nothing moves. Give it a width (<code>w-50</code>, <code>style="max-width: 400px"</code>).</li>
            <li>Writing <code>ml-3</code> or <code>pr-2</code> (Bootstrap 4) → use <code>ms-3</code> and <code>pe-2</code>.</li>
            <li>Expecting <code>p-6</code> or <code>m-10</code> to work → the scale stops at 5. Write custom CSS for bigger values.</li>
            <li>Putting <code>me-3</code> on every item in a row → the last item gets extra space too. Use <code>gap-3</code> on the parent.</li>
            <li>Using <code>p-auto</code> → padding has no auto value. <code>auto</code> is only for margins.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>Run the starter. In section 1, change <code>p-3</code> to <code>p-5</code>. The purple box's inner space grows from 16px to 48px.</li>
            <li>In section 2, remove <code>w-50</code>. The box becomes full width, and <code>mx-auto</code> has no visible effect.</li>
            <li>In section 3, change <code>gap-3</code> to <code>gap-5</code>. Then resize the preview past 768px. You will see <code>p-md-4</code> in section 4 replace <code>p-2</code>.</li>
          </ol>
        </div>

        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Choose a spacing pattern and use it everywhere. For example: <code>mb-3</code> between elements in a card, <code>mb-4</code> between sections and <code>py-5</code> for page bands. Using one scale consistently makes a layout look "designed".
        </div>
      HTML
      starter_code: <<~'HTML'
        <!DOCTYPE html>
        <html lang="en">
        <head>
          <meta charset="UTF-8">
          <meta name="viewport" content="width=device-width, initial-scale=1.0">
          <title>Bootstrap Spacing</title>
          <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet">
          <style>
            .demo { background: #6f42c1; color: #fff; border-radius: 0.375rem; }
          </style>
        </head>
        <body class="bg-body-tertiary">
          <div class="container py-4">
            <!-- 1. Padding: p-3 = 1rem on all sides -->
            <h2 class="h5">1. p-3 (padding) and mb-4 (margin below)</h2>
            <div class="demo p-3 mb-4">p-3 mb-4</div>

            <!-- 2. Centring: w-50 + mx-auto; px-4 py-2 inside -->
            <h2 class="h5">2. w-50 mx-auto px-4 py-2</h2>
            <div class="w-50 mx-auto px-4 py-2 mb-4 border rounded bg-body">Masala dosa: ₹80</div>

            <!-- 3. Gap between flex children -->
            <h2 class="h5">3. d-flex gap-3</h2>
            <div class="d-flex gap-3 mb-4">
              <span class="demo p-2">Chai</span>
              <span class="demo p-2">Coffee</span>
              <span class="demo p-2">Lassi</span>
            </div>

            <!-- 4. Responsive padding: 8px on phones, 24px from 768px -->
            <h2 class="h5">4. p-2 p-md-4</h2>
            <div class="demo p-2 p-md-4 mb-4">Resize past 768px to see the padding grow</div>

            <!-- 5. ms-auto pushes the last item to the end -->
            <h2 class="h5">5. ms-auto in a flex row</h2>
            <div class="d-flex border rounded p-2 bg-body">
              <span>Cart: 2 items</span>
              <span class="ms-auto fw-bold">₹160</span>
            </div>
          </div>
          <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"></script>
        </body>
        </html>
      HTML
    },

    6 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-bootstrap">Bootstrap</div>
          <h1 class="lc-title">Flexbox Utilities</h1>
        </div>
        <p class="lc-lead">Flexbox is the CSS layout mode for lining up items in one direction: a row or a column. Bootstrap turns the flexbox properties into ready-made classes. With them, you can build a header row, centre a login box, or put an avatar (a small profile picture) next to some text. You do not need any custom CSS.</p>

        <div class="lc-card">
          <h3>Step 1: Turn the container into a flex container</h3>
          <p>Flex utilities only work on a <strong>flex container</strong> (or its direct children). You create one with a display class:</p>
          <ul class="lc-list">
            <li><code>d-flex</code>: <code>display: flex</code>. The children become flex items and sit side by side in a row.</li>
            <li><code>d-inline-flex</code>: the same, but the container itself sits inline, like a word in a sentence.</li>
            <li>Responsive versions: <code>d-sm-flex</code>, <code>d-md-flex</code>, <code>d-lg-flex</code>, <code>d-xl-flex</code>, <code>d-xxl-flex</code>. For example, <code>d-md-flex</code> means "flex from 768px and wider".</li>
          </ul>
          <p>Every flex class also has a responsive version. The breakpoint goes <em>inside</em> the class name: <code>justify-content-md-between</code>, <code>flex-lg-row</code>, <code>order-md-1</code>.</p>
        </div>

        <div class="lc-card">
          <h3>Main axis and cross axis</h3>
          <p>The <strong>main axis</strong> is the direction the items flow in. The <strong>cross axis</strong> goes across it. With <code>flex-row</code> (the default), the main axis is horizontal. With <code>flex-column</code>, it is vertical. So <code>justify-content-*</code> now moves items up and down.</p>
          <table class="lc-table">
            <thead><tr><th>Classes</th><th>Controls</th><th>Values</th></tr></thead>
            <tbody>
              <tr><td><code>flex-row</code>, <code>flex-row-reverse</code>, <code>flex-column</code>, <code>flex-column-reverse</code></td><td>Direction (sets the main axis)</td><td>Responsive too: <code>flex-md-row</code></td></tr>
              <tr><td><code>justify-content-*</code></td><td>Spacing along the <strong>main</strong> axis</td><td>start, end, center, between, around, evenly</td></tr>
              <tr><td><code>align-items-*</code></td><td>Alignment on the <strong>cross</strong> axis (all items)</td><td>start, end, center, baseline, stretch (default)</td></tr>
              <tr><td><code>align-self-*</code></td><td>Cross-axis alignment of <strong>one</strong> item</td><td>start, end, center, baseline, stretch</td></tr>
              <tr><td><code>flex-wrap</code>, <code>flex-nowrap</code>, <code>flex-wrap-reverse</code></td><td>Whether items can move onto a new line</td><td>nowrap is the default</td></tr>
              <tr><td><code>align-content-*</code></td><td>Spacing between wrapped <em>lines</em> (only when wrapping)</td><td>start, end, center, between, around, stretch</td></tr>
            </tbody>
          </table>
        </div>

        <div class="lc-card">
          <h3>Grow, shrink, order and gaps</h3>
          <table class="lc-table">
            <thead><tr><th>Class</th><th>CSS</th><th>Use it for</th></tr></thead>
            <tbody>
              <tr><td><code>flex-fill</code></td><td><code>flex: 1 1 auto</code></td><td>Items share the width, starting from the size of their content</td></tr>
              <tr><td><code>flex-grow-1</code></td><td><code>flex-grow: 1</code></td><td>One item takes all the leftover space (for example a search box)</td></tr>
              <tr><td><code>flex-shrink-0</code></td><td><code>flex-shrink: 0</code></td><td>Stops an avatar or icon from being squashed</td></tr>
              <tr><td><code>order-0</code> to <code>order-5</code>, <code>order-first</code>, <code>order-last</code></td><td><code>order: …</code></td><td>Changing the order you <em>see</em> (for example <code>order-md-last</code>)</td></tr>
              <tr><td><code>gap-0</code> to <code>gap-5</code>, <code>row-gap-*</code>, <code>column-gap-*</code></td><td><code>gap: 0 … 3rem</code></td><td>Even space between items, with no extra margin on the outer edges</td></tr>
              <tr><td><code>ms-auto</code> / <code>me-auto</code></td><td><code>margin-left/right: auto</code></td><td>Pushing items apart inside a flex row</td></tr>
            </tbody>
          </table>
          <p><strong>The ms-auto push trick:</strong> in a flex row, put <code>ms-auto</code> on an item. It takes up all the free space to its left. That item, and everything after it, moves to the far end. This is how navbars put a Login button on the right.</p>
        </div>

        <div class="lc-card">
          <h3>Worked example 1: a shop header</h3>
          <div class="lc-code">&lt;div class="d-flex align-items-center gap-3 p-3 border rounded"&gt;<br>  &lt;strong&gt;☕ Chai Point&lt;/strong&gt;<br>  &lt;a href="#menu"&gt;Menu&lt;/a&gt;<br>  &lt;a href="#offers"&gt;Offers&lt;/a&gt;<br>  &lt;button type="button" class="btn btn-primary ms-auto"&gt;Order&lt;/button&gt;<br>&lt;/div&gt;</div>
          <p><strong>What you will see:</strong> a single row with a border. "☕ Chai Point", "Menu" and "Offers" are on the left, 1rem apart (<code>gap-3</code>). The blue Order button stays at the right edge (<code>ms-auto</code>). Everything is centred vertically (<code>align-items-center</code>). If you remove <code>ms-auto</code>, the button jumps back next to "Offers".</p>
        </div>

        <div class="lc-card">
          <h3>Worked example 2: perfect centring and a media object</h3>
          <div class="lc-code">&lt;!-- Centre a box both ways: the container needs a height --&gt;<br>&lt;div class="d-flex justify-content-center align-items-center bg-body-tertiary" style="height: 200px"&gt;<br>  &lt;div class="p-3 border rounded"&gt;Centred&lt;/div&gt;<br>&lt;/div&gt;<br><br>&lt;!-- Media object: fixed avatar + flexible text --&gt;<br>&lt;div class="d-flex gap-3"&gt;<br>  &lt;div class="flex-shrink-0 fs-1" aria-hidden="true"&gt;👩‍🎓&lt;/div&gt;<br>  &lt;div class="flex-grow-1"&gt;<br>    &lt;h5 class="mb-1"&gt;Priya, Maharashtra&lt;/h5&gt;<br>    &lt;p class="mb-0"&gt;Loved the college fest workshop!&lt;/p&gt;<br>  &lt;/div&gt;<br>&lt;/div&gt;</div>
          <p><strong>What you will see:</strong> first, a grey panel 200px tall, with the "Centred" box exactly in its middle. Second, a large emoji avatar on the left, and the name and review on the right. The avatar keeps its size even on a narrow screen (<code>flex-shrink-0</code>). The text takes the rest of the width (<code>flex-grow-1</code>).</p>
        </div>

        <div class="lc-card">
          <h3>Responsive direction</h3>
          <div class="lc-code">&lt;div class="d-flex flex-column flex-md-row gap-3"&gt;<br>  &lt;div class="p-3 border"&gt;Step 1&lt;/div&gt;<br>  &lt;div class="p-3 border"&gt;Step 2&lt;/div&gt;<br>  &lt;div class="p-3 border"&gt;Step 3&lt;/div&gt;<br>&lt;/div&gt;</div>
          <p><strong>What you will see:</strong> below 768px, the three steps are stacked on top of each other. From 768px up (<code>flex-md-row</code>), they sit side by side. This is mobile-first: the class without an infix is the phone layout. The <code>-md-</code> class changes it for bigger screens.</p>
          <p><strong>Flex utilities or the grid?</strong> Use <code>row</code>/<code>col-*</code> for page columns with fixed sizes (for example 8 + 4 of 12). Use flex utilities to line up items <em>inside</em> a component: header rows, button bars, icon + text, centring.</p>
        </div>

        <div class="lc-card">
          <h3>Shortcut: stacks (vstack and hstack)</h3>
          <p>Bootstrap's <strong>stack helpers</strong> are ready-made sets of flex classes. <code>vstack</code> = <code>d-flex flex-column</code>. <code>hstack</code> = <code>d-flex flex-row align-items-center</code>. Add <code>gap-*</code> for spacing.</p>
          <div class="lc-code">&lt;div class="hstack gap-2"&gt;<br>  &lt;span class="fw-bold"&gt;Order #1042&lt;/span&gt;<br>  &lt;span class="badge text-bg-success"&gt;Paid&lt;/span&gt;<br>  &lt;button type="button" class="btn btn-sm btn-outline-secondary ms-auto"&gt;Details&lt;/button&gt;<br>&lt;/div&gt;<br>&lt;div class="vstack gap-2 col-md-4 mx-auto mt-3"&gt;<br>  &lt;button type="button" class="btn btn-primary"&gt;Pay with UPI&lt;/button&gt;<br>  &lt;button type="button" class="btn btn-outline-secondary"&gt;Pay by card&lt;/button&gt;<br>&lt;/div&gt;</div>
          <p><strong>What you will see:</strong> one row with the order number and a green "Paid" badge right next to it. A "Details" button is pushed to the far right by <code>ms-auto</code>. Below this are two full-width buttons, one on top of the other, with a small gap. From 768px up, they sit in a centred column one-third wide.</p>
        </div>

        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li><strong>Adding <code>justify-content-center</code> without <code>d-flex</code>.</strong> Nothing happens because the div is not a flex container. Add <code>d-flex</code> to the same element.</li>
            <li><strong>Vertical centring in a container with no height.</strong> The container is only as tall as its content, so there is no room to centre. Give it a height (<code>min-vh-100</code>, <code>h-100</code> inside a parent that has a height, or a style).</li>
            <li><strong>Using Bootstrap 4's <code>ml-auto</code> / <code>mr-auto</code>.</strong> They do not exist in v5. Use <code>ms-auto</code> / <code>me-auto</code> (start/end). These also work for right-to-left languages.</li>
            <li><strong>Using <code>order-*</code> to fix the reading order.</strong> Screen readers and the Tab key still follow the HTML order. Change the HTML, and use <code>order-*</code> only for small visual changes.</li>
            <li><strong>Writing Tailwind-style <code>md:flex</code>.</strong> Bootstrap puts the breakpoint inside the class: <code>d-md-flex</code>.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>In demo 1, delete <code>ms-auto</code> from the Order button. The button moves next to "Offers". Put it back and it jumps to the right edge again.</li>
            <li>In demo 2, change <code>justify-content-center</code> to <code>justify-content-end</code> and <code>align-items-center</code> to <code>align-items-end</code>. The box moves to the bottom-right corner.</li>
            <li>In demo 3, change <code>flex-md-row</code> to <code>flex-lg-row</code>. Resize the preview: the steps now stay stacked until the width reaches 992px.</li>
            <li>In demo 4, remove <code>flex-shrink-0</code> from the blue "P" circle. Then make the preview narrow. The circle gets squeezed into an oval.</li>
          </ol>
        </div>

        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Use <code>gap-*</code> instead of margins on each child. <code>gap</code> only adds space <em>between</em> items. So the first and last items stay right against the container edges. You also do not need <code>me-2</code> on every item except the last.
        </div>
      HTML
      starter_code: <<~'HTML'
        <!DOCTYPE html>
        <html lang="en">
        <head>
          <meta charset="UTF-8">
          <meta name="viewport" content="width=device-width, initial-scale=1.0">
          <title>Flexbox Utilities</title>
          <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet">
        </head>
        <body class="p-3">
          <h1 class="h4 mb-3">Flexbox Utilities</h1>

          <h2 class="h6">1. Header row: ms-auto pushes the button right</h2>
          <div class="d-flex align-items-center gap-3 p-3 border rounded mb-4">
            <strong>☕ Chai Point</strong>
            <a href="#menu">Menu</a>
            <a href="#offers">Offers</a>
            <button type="button" class="btn btn-primary ms-auto">Order</button>
          </div>

          <h2 class="h6">2. Centring (the container has a height)</h2>
          <div class="d-flex justify-content-center align-items-center bg-body-tertiary border rounded mb-4" style="height: 160px">
            <div class="p-3 bg-primary-subtle border border-primary-subtle rounded">Centred</div>
          </div>

          <h2 class="h6">3. Stacked on phones, a row from md (768px)</h2>
          <div class="d-flex flex-column flex-md-row gap-3 mb-4">
            <div class="p-3 border rounded flex-fill">Step 1: Register</div>
            <div class="p-3 border rounded flex-fill">Step 2: Pay ₹199</div>
            <div class="p-3 border rounded flex-fill">Step 3: Attend fest</div>
          </div>

          <h2 class="h6">4. Media object: flex-shrink-0 + flex-grow-1</h2>
          <div class="d-flex gap-3 p-3 border rounded">
            <div class="flex-shrink-0 rounded-circle text-bg-primary d-flex align-items-center justify-content-center fw-bold" style="width: 56px; height: 56px" aria-hidden="true">P</div>
            <div class="flex-grow-1">
              <h3 class="h6 mb-1">Priya, Maharashtra</h3>
              <p class="mb-0 text-body-secondary">Loved the web design workshop at the college fest. The mentors were super helpful!</p>
            </div>
          </div>

          <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"></script>
        </body>
        </html>
      HTML
    },

    7 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-bootstrap">Bootstrap</div>
          <h1 class="lc-title">Display, Sizing, and Borders</h1>
        </div>
        <p class="lc-lead">You will use these utilities every day. You can show or hide elements at certain screen sizes. You can set widths and heights, add borders, round corners and add shadows. You can also place a badge on a corner. Each one is a single class, and most of them are responsive.</p>

        <div class="lc-card">
          <h3>Display utilities</h3>
          <p>The pattern is <code>d-{value}</code> or <code>d-{breakpoint}-{value}</code>. The values are <code>none</code>, <code>inline</code>, <code>inline-block</code>, <code>block</code>, <code>grid</code>, <code>inline-grid</code>, <code>table</code>, <code>table-row</code>, <code>table-cell</code>, <code>flex</code> and <code>inline-flex</code>.</p>
          <p>Remember that Bootstrap is mobile-first. <code>d-md-none</code> means "hidden from md (768px) <em>and wider</em>". It does not mean "hidden only on md".</p>
          <table class="lc-table">
            <thead><tr><th>Goal</th><th>Classes</th></tr></thead>
            <tbody>
              <tr><td>Hidden on all screens</td><td><code>d-none</code></td></tr>
              <tr><td>Hidden only on xs (&lt;576px)</td><td><code>d-none d-sm-block</code></td></tr>
              <tr><td>Hidden only on sm (576–767px)</td><td><code>d-sm-none d-md-block</code></td></tr>
              <tr><td>Visible only below md (phones)</td><td><code>d-md-none</code></td></tr>
              <tr><td>Hidden below lg, visible from 992px</td><td><code>d-none d-lg-block</code></td></tr>
              <tr><td>Visible only on lg (992–1199px)</td><td><code>d-none d-lg-block d-xl-none</code></td></tr>
              <tr><td>Hide when printing (for example, a Print button)</td><td><code>d-print-none</code></td></tr>
              <tr><td>Show only when printing</td><td><code>d-none d-print-block</code></td></tr>
            </tbody>
          </table>
        </div>

        <div class="lc-card">
          <h3>Hidden vs visually hidden</h3>
          <ul class="lc-list">
            <li><code>d-none</code> removes the element for <strong>everyone</strong>, including screen-reader users.</li>
            <li><code>visually-hidden</code> hides it from the screen but <strong>keeps it for screen readers</strong>. Use it for extra meaning, such as "unread messages" next to a number.</li>
            <li><code>visually-hidden-focusable</code> stays hidden until it gets keyboard focus. This is perfect for a "Skip to main content" link.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Sizing</h3>
          <table class="lc-table">
            <thead><tr><th>Class</th><th>CSS</th><th>Note</th></tr></thead>
            <tbody>
              <tr><td><code>w-25</code> <code>w-50</code> <code>w-75</code> <code>w-100</code> <code>w-auto</code></td><td><code>width: 25% … 100% / auto</code></td><td>A percentage of the parent's width</td></tr>
              <tr><td><code>h-25</code> … <code>h-100</code>, <code>h-auto</code></td><td><code>height: …%</code></td><td>Only works if the parent has a set height</td></tr>
              <tr><td><code>mw-100</code> / <code>mh-100</code></td><td><code>max-width / max-height: 100%</code></td><td>Stops the element from overflowing</td></tr>
              <tr><td><code>vw-100</code> / <code>vh-100</code></td><td><code>width: 100vw / height: 100vh</code></td><td>Based on the viewport (the visible browser window)</td></tr>
              <tr><td><code>min-vw-100</code> / <code>min-vh-100</code></td><td><code>min-width: 100vw / min-height: 100vh</code></td><td>A full-screen hero section that can still grow</td></tr>
            </tbody>
          </table>
          <p><strong>Worked calculation:</strong> the parent is 400px wide. A child with <code>w-50 p-3 border</code> is <strong>200px</strong> wide in total. Bootstrap sets <code>box-sizing: border-box</code> on every element. So the 16px padding on each side and the 1px borders fit <em>inside</em> the 200px. The content area is 200 − 32 − 2 = <strong>166px</strong>.</p>
        </div>

        <div class="lc-card">
          <h3>Borders, rounded corners and shadows</h3>
          <table class="lc-table">
            <thead><tr><th>Group</th><th>Classes</th></tr></thead>
            <tbody>
              <tr><td>Add</td><td><code>border</code> (all sides, 1px), <code>border-top</code>, <code>border-end</code>, <code>border-bottom</code>, <code>border-start</code></td></tr>
              <tr><td>Remove</td><td><code>border-0</code>, <code>border-top-0</code>, <code>border-end-0</code>, …</td></tr>
              <tr><td>Colour</td><td><code>border-primary</code> … <code>border-dark</code>, <code>border-primary-subtle</code>, <code>border-opacity-50</code></td></tr>
              <tr><td>Width</td><td><code>border-1</code> … <code>border-5</code> (1px to 5px)</td></tr>
              <tr><td>Radius</td><td><code>rounded</code> (0.375rem), <code>rounded-0</code> … <code>rounded-5</code> (0 to 2rem), <code>rounded-circle</code>, <code>rounded-pill</code>, sides: <code>rounded-top</code>, <code>rounded-end-3</code></td></tr>
              <tr><td>Shadow</td><td><code>shadow-none</code>, <code>shadow-sm</code>, <code>shadow</code>, <code>shadow-lg</code></td></tr>
            </tbody>
          </table>
          <p>Colour and width classes only change a border that already exists. <code>border-primary</code> on its own shows nothing. So write <code>border border-primary</code>.</p>
        </div>

        <div class="lc-card">
          <h3>Worked example: a notification badge on a corner</h3>
          <div class="lc-code">&lt;button type="button" class="btn btn-primary position-relative"&gt;<br>  Inbox<br>  &lt;span class="position-absolute top-0 start-100 translate-middle badge rounded-pill bg-danger"&gt;<br>    5 &lt;span class="visually-hidden"&gt;unread messages&lt;/span&gt;<br>  &lt;/span&gt;<br>&lt;/button&gt;</div>
          <p><strong>What you will see:</strong> a blue "Inbox" button with a small red pill showing "5". The centre of the pill sits exactly on the button's top-right corner. Here is how it works. <code>top-0 start-100</code> puts the badge's top-left corner on the button's top-right corner. Then <code>translate-middle</code> (<code>transform: translate(-50%, -50%)</code>) moves it back by half its own size. A screen reader reads out "Inbox 5 unread messages".</p>
          <p>Other position classes: <code>position-static</code>, <code>-relative</code>, <code>-absolute</code>, <code>-fixed</code>, <code>-sticky</code>, and the edges <code>top-</code>/<code>bottom-</code>/<code>start-</code>/<code>end-</code> with 0, 50 or 100.</p>
        </div>

        <div class="lc-card">
          <h3>Ratio and object-fit</h3>
          <div class="lc-code">&lt;div class="ratio ratio-16x9"&gt;<br>  &lt;iframe src="https://www.youtube.com/embed/VIDEO_ID" title="Fest highlights" allowfullscreen&gt;&lt;/iframe&gt;<br>&lt;/div&gt;<br>&lt;img src="team.jpg" alt="Our team" class="w-100 object-fit-cover" style="height: 200px"&gt;</div>
          <p><code>ratio</code> keeps any child (an iframe, video or div) at a fixed shape. The built-in ratios are <code>ratio-1x1</code>, <code>ratio-4x3</code>, <code>ratio-16x9</code> and <code>ratio-21x9</code>. For your own shape, set <code>style="--bs-aspect-ratio: 50%"</code> (the height as a percentage of the width). <code>object-fit-cover</code> cuts off the edges of an image so it fills its box without stretching. <code>object-fit-contain</code> fits the whole image inside the box.</p>
        </div>

        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li><strong><code>border-danger</code> but no border appears.</strong> The colour class only changes the colour of a border that already exists. Add <code>border</code> as well.</li>
            <li><strong><code>h-100</code> does nothing.</strong> The parent has <code>height: auto</code>. Give the parent a height, or use <code>min-vh-100</code>.</li>
            <li><strong>Hiding screen-reader text with <code>d-none</code>.</strong> That hides it from everyone. Use <code>visually-hidden</code>.</li>
            <li><strong>Using <code>d-sm-none</code> to hide something "only on phones".</strong> It hides from 576px <em>and up</em>. To hide only on xs, use <code>d-none d-sm-block</code>.</li>
            <li><strong>The badge flies to the corner of the page.</strong> The parent is missing <code>position-relative</code>. So the absolute badge positions itself against an ancestor (a parent further up) far away. Add <code>position-relative</code> to the parent.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>In demo 1, resize the preview across 576px and 768px. Watch which of the three coloured labels appear and disappear. Compare them with the table above.</li>
            <li>In demo 2, change <code>w-50</code> to <code>w-75</code>. The bar grows to three-quarters of the parent's width.</li>
            <li>In demo 3, remove the word <code>border</code> from the first box (leaving <code>border-primary border-3</code>). The border disappears. This shows that the colour and width classes need <code>border</code>.</li>
            <li>In demo 4, remove <code>position-relative</code> from the button. The red badge jumps to the top-right corner of the whole page, because no ancestor is positioned. Then put it back.</li>
          </ol>
        </div>

        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Bootstrap utilities use <code>!important</code>, so <code>d-none</code> or <code>w-100</code> will win over your own CSS rules. That is useful for quick fixes. If a style "won't change", open DevTools and look for a utility class.
        </div>
      HTML
      starter_code: <<~'HTML'
        <!DOCTYPE html>
        <html lang="en">
        <head>
          <meta charset="UTF-8">
          <meta name="viewport" content="width=device-width, initial-scale=1.0">
          <title>Display, Sizing, and Borders</title>
          <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet">
        </head>
        <body class="p-3">
          <h1 class="h4 mb-3">Display, Sizing, and Borders</h1>

          <h2 class="h6">1. Responsive display (resize the preview)</h2>
          <div class="mb-4">
            <span class="badge text-bg-success d-none d-sm-inline-block">Hidden only on xs</span>
            <span class="badge text-bg-warning d-md-none">Visible only below md</span>
            <span class="badge text-bg-info d-none d-lg-inline-block">Visible from lg</span>
          </div>

          <h2 class="h6">2. Width: w-50 of a grey parent</h2>
          <div class="bg-body-tertiary border rounded mb-4">
            <div class="w-50 p-2 text-bg-primary rounded">w-50</div>
          </div>

          <h2 class="h6">3. Borders, radius and shadows</h2>
          <div class="d-flex flex-wrap gap-3 mb-4">
            <div class="p-3 border border-primary border-3 rounded-3">border-3</div>
            <div class="p-3 border border-success-subtle rounded-pill shadow-sm">rounded-pill</div>
            <div class="p-3 bg-body shadow-lg rounded-4">shadow-lg</div>
            <div class="border border-danger rounded-circle d-flex align-items-center justify-content-center" style="width: 64px; height: 64px">⭕</div>
          </div>

          <h2 class="h6">4. Positioned badge</h2>
          <button type="button" class="btn btn-primary position-relative mb-4">
            Inbox
            <span class="position-absolute top-0 start-100 translate-middle badge rounded-pill bg-danger">
              5 <span class="visually-hidden">unread messages</span>
            </span>
          </button>

          <h2 class="h6">5. ratio-16x9 box</h2>
          <div class="ratio ratio-16x9 w-50">
            <div class="d-flex align-items-center justify-content-center text-bg-dark rounded">16 : 9</div>
          </div>

          <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"></script>
        </body>
        </html>
      HTML
    },

    8 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-bootstrap">Bootstrap</div>
          <h1 class="lc-title">Buttons and Icons</h1>
        </div>
        <p class="lc-lead">People click buttons more than any other part of a page. Bootstrap gives you consistent, accessible button styles in every theme colour and size. It also gives you button groups and toolbars. Bootstrap Icons adds more than 2,000 free icons that you can put on buttons. This lesson shows the right markup, so your buttons also work for keyboard and screen-reader users.</p>

        <div class="lc-card">
          <h3>The base: btn + a variant</h3>
          <div class="lc-code">&lt;button type="button" class="btn btn-primary"&gt;Primary&lt;/button&gt;<br>&lt;button type="button" class="btn btn-outline-danger"&gt;Delete&lt;/button&gt;<br>&lt;a class="btn btn-success" href="/menu" role="button"&gt;View menu&lt;/a&gt;</div>
          <p>Every button needs <code>btn</code> plus one variant. The solid variants are <code>btn-primary</code>, <code>-secondary</code>, <code>-success</code>, <code>-danger</code>, <code>-warning</code>, <code>-info</code>, <code>-light</code>, <code>-dark</code> and <code>btn-link</code>. Every colour also has an outline version: <code>btn-outline-primary</code>, and so on.</p>
          <ul class="lc-list">
            <li>Always write <code>type="button"</code> on a <code>&lt;button&gt;</code> that is not meant to submit a form. Inside a form, the default type is <code>submit</code>.</li>
            <li>Use <code>&lt;a class="btn"&gt;</code> for <strong>navigation</strong> (it takes you to another page). Use <code>&lt;button&gt;</code> for <strong>actions</strong> (it does something). Add <code>role="button"</code> to the link only when it acts like a button.</li>
          </ul>
          <table class="lc-table">
            <thead><tr><th>Variant</th><th>Typical meaning</th></tr></thead>
            <tbody>
              <tr><td><code>btn-primary</code></td><td>The main action on the page (only one per area)</td></tr>
              <tr><td><code>btn-secondary</code> / <code>btn-outline-*</code></td><td>Less important actions (Cancel, Back)</td></tr>
              <tr><td><code>btn-success</code> / <code>btn-danger</code></td><td>Positive action (Pay) / action that removes or destroys something (Delete)</td></tr>
              <tr><td><code>btn-link</code></td><td>Looks like a link but keeps the button's padding and behaviour</td></tr>
            </tbody>
          </table>
          <p>Colour alone does not tell users what a button does. The label must say it too, for example "Delete" and not just a red button.</p>
        </div>

        <div class="lc-card">
          <h3>Sizes and custom sizes</h3>
          <p>Use <code>btn-lg</code> or <code>btn-sm</code>. For any other size, set the button's CSS variables inline (in its style attribute):</p>
          <div class="lc-code">&lt;button type="button" class="btn btn-primary"<br>        style="--bs-btn-padding-y: .25rem; --bs-btn-padding-x: .5rem; --bs-btn-font-size: .75rem;"&gt;<br>  Tiny<br>&lt;/button&gt;</div>
          <p>The defaults are padding 0.375rem × 0.75rem with a font size of 1rem. <code>btn-lg</code> uses 0.5rem × 1rem at 1.25rem.</p>
        </div>

        <div class="lc-card">
          <h3>States: disabled and active</h3>
          <ul class="lc-list">
            <li><code>&lt;button disabled&gt;</code>: the real <code>disabled</code> attribute. The button is greyed out. You cannot click it, and it cannot get focus.</li>
            <li>Links cannot use <code>disabled</code>. Write <code>&lt;a class="btn btn-primary disabled" role="button" aria-disabled="true"&gt;</code> and leave out <code>href</code>. If you must keep <code>href</code>, add <code>tabindex="-1"</code>, so keyboard users cannot reach it.</li>
            <li><code>active</code> gives the button a pressed look. For a toggle (a button that switches on and off), use <code>data-bs-toggle="button"</code>. It switches <code>active</code> for you. Add <code>aria-pressed="true"</code> when it starts pressed.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Full-width, groups and toolbars</h3>
          <div class="lc-code">&lt;!-- Full width (btn-block was removed in v5) --&gt;<br>&lt;div class="d-grid gap-2"&gt;<br>  &lt;button type="button" class="btn btn-primary"&gt;Pay ₹249&lt;/button&gt;<br>&lt;/div&gt;<br><br>&lt;!-- Full width on phones, normal from md --&gt;<br>&lt;div class="d-grid gap-2 d-md-block"&gt;…&lt;/div&gt;<br><br>&lt;div class="btn-group" role="group" aria-label="Cup size"&gt;<br>  &lt;button type="button" class="btn btn-outline-primary"&gt;Small&lt;/button&gt;<br>  &lt;button type="button" class="btn btn-outline-primary active" aria-pressed="true"&gt;Medium&lt;/button&gt;<br>  &lt;button type="button" class="btn btn-outline-primary"&gt;Large&lt;/button&gt;<br>&lt;/div&gt;</div>
          <p>A <code>btn-group</code> joins buttons into one bar. Change the size of the whole group with <code>btn-group-sm</code> / <code>btn-group-lg</code>. Or stack the buttons with <code>btn-group-vertical</code>. Put several groups in a <code>btn-toolbar</code> with <code>role="toolbar"</code>. Give each group an <code>aria-label</code>.</p>
          <p>The close button is <code>&lt;button type="button" class="btn-close" aria-label="Close"&gt;&lt;/button&gt;</code>. On a dark background, put <code>data-bs-theme="dark"</code> on it or on its parent. The old <code>btn-close-white</code> is deprecated.</p>
        </div>

        <div class="lc-card">
          <h3>Bootstrap Icons (1.13.1 at the time of writing)</h3>
          <div class="lc-code">&lt;link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.13.1/font/bootstrap-icons.min.css"&gt;<br><br>&lt;!-- Icon + text: hide the icon from screen readers --&gt;<br>&lt;button type="button" class="btn btn-success"&gt;<br>  &lt;i class="bi bi-cart-plus me-1" aria-hidden="true"&gt;&lt;/i&gt; Add to cart<br>&lt;/button&gt;<br><br>&lt;!-- Icon only: the button needs a name --&gt;<br>&lt;button type="button" class="btn btn-outline-danger" aria-label="Add to wishlist"&gt;<br>  &lt;i class="bi bi-heart" aria-hidden="true"&gt;&lt;/i&gt;<br>&lt;/button&gt;</div>
          <p><strong>What you will see:</strong> a green "Add to cart" button with a cart-plus icon before the text. You will also see a small button with a red outline and a heart. A screen reader reads the first as "Add to cart, button". It reads the second as "Add to wishlist, button".</p>
          <ul class="lc-list">
            <li>Icons are font glyphs (characters in a font), so they behave like text. Resize them with <code>fs-1</code> … <code>fs-6</code>. Colour them with <code>text-danger</code> and similar classes.</li>
            <li>Browse the names at icons.getbootstrap.com (for example <code>bi-trash</code>, <code>bi-search</code>, <code>bi-star-fill</code>).</li>
            <li>SVG option: copy an icon's inline <code>&lt;svg&gt;</code> code from that site. Then nothing extra is downloaded. Add <code>aria-hidden="true"</code> when it is only for decoration. Add <code>role="img"</code> + <code>aria-label</code> when it has meaning.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Radio and checkbox buttons (btn-check)</h3>
          <p>You can build a single-choice group, such as a cup size, with real radio inputs that look like buttons. This needs no JavaScript. It is fully accessible, because the browser handles the checked state and the arrow keys:</p>
          <div class="lc-code">&lt;div class="btn-group" role="group" aria-label="Cup size"&gt;<br>  &lt;input type="radio" class="btn-check" name="cup" id="cup-s" autocomplete="off"&gt;<br>  &lt;label class="btn btn-outline-primary" for="cup-s"&gt;Small&lt;/label&gt;<br>  &lt;input type="radio" class="btn-check" name="cup" id="cup-m" autocomplete="off" checked&gt;<br>  &lt;label class="btn btn-outline-primary" for="cup-m"&gt;Medium&lt;/label&gt;<br>&lt;/div&gt;</div>
          <p><strong>What you will see:</strong> two joined outline buttons, with "Medium" filled blue. Click "Small" and it fills, while "Medium" empties. The <code>btn-check</code> class hides the radio circle. The <code>&lt;label&gt;</code> gets the button look. Use <code>type="checkbox"</code> for separate on/off toggles.</p>
        </div>

        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li><strong>Using <code>btn-block</code>.</strong> It was removed in Bootstrap 5. Wrap the button in <code>&lt;div class="d-grid"&gt;</code> (or give it <code>w-100</code>).</li>
            <li><strong>An icon-only button with no label.</strong> A screen reader just says "button". Add <code>aria-label</code> or a <code>visually-hidden</code> span.</li>
            <li><strong><code>&lt;a class="btn" disabled&gt;</code>.</strong> Links ignore the <code>disabled</code> attribute. Use the <code>disabled</code> class, <code>aria-disabled="true"</code>, and no <code>href</code>.</li>
            <li><strong>A <code>&lt;div class="btn"&gt;</code> with a click handler.</strong> You cannot reach it with Tab or press it with Enter or Space. Use a real <code>&lt;button&gt;</code>.</li>
            <li><strong>Leaving out <code>type="button"</code> inside a form.</strong> The button submits the form. Always set the type yourself.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>In demo 1, change <code>btn-outline-danger</code> to <code>btn-danger</code>. Then add <code>btn-lg</code>. The button becomes solid red and larger.</li>
            <li>In demo 2, click "Medium" and the other sizes. Only the clicked one should look active. Look at the small script that moves <code>active</code> and <code>aria-pressed</code>.</li>
            <li>In demo 3, add <code>d-md-block</code> to the <code>d-grid</code> div. Make the preview wider than 768px. The Pay button shrinks to its normal width.</li>
            <li>In demo 4, change <code>bi-heart</code> to <code>bi-heart-fill</code> and add <code>fs-4</code> to the icon. You get a bigger, filled heart.</li>
          </ol>
        </div>

        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Use only one <code>btn-primary</code> in each section. If every button is bright and strong, none of them stands out. Use <code>btn-outline-secondary</code> or <code>btn-link</code> for the others.
        </div>
      HTML
      starter_code: <<~'HTML'
        <!DOCTYPE html>
        <html lang="en">
        <head>
          <meta charset="UTF-8">
          <meta name="viewport" content="width=device-width, initial-scale=1.0">
          <title>Buttons and Icons</title>
          <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet">
          <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.13.1/font/bootstrap-icons.min.css">
        </head>
        <body class="p-3">
          <h1 class="h4 mb-3">Buttons and Icons</h1>

          <h2 class="h6">1. Variants and sizes</h2>
          <div class="d-flex flex-wrap gap-2 mb-4">
            <button type="button" class="btn btn-primary">Primary</button>
            <button type="button" class="btn btn-outline-danger">Delete</button>
            <button type="button" class="btn btn-link">Link style</button>
            <button type="button" class="btn btn-secondary btn-sm" disabled>Disabled</button>
          </div>

          <h2 class="h6">2. Button group (cup size)</h2>
          <div class="btn-group mb-4" role="group" aria-label="Cup size" id="sizes">
            <button type="button" class="btn btn-outline-primary" aria-pressed="false">Small</button>
            <button type="button" class="btn btn-outline-primary active" aria-pressed="true">Medium</button>
            <button type="button" class="btn btn-outline-primary" aria-pressed="false">Large</button>
          </div>

          <h2 class="h6">3. Full width with d-grid</h2>
          <div class="d-grid gap-2 mb-4">
            <button type="button" class="btn btn-success"><i class="bi bi-cart-plus me-1" aria-hidden="true"></i> Pay ₹249</button>
          </div>

          <h2 class="h6">4. Icon-only buttons need a label</h2>
          <div class="d-flex gap-2">
            <button type="button" class="btn btn-outline-danger" aria-label="Add to wishlist"><i class="bi bi-heart" aria-hidden="true"></i></button>
            <button type="button" class="btn btn-outline-secondary" aria-label="Share"><i class="bi bi-share" aria-hidden="true"></i></button>
            <button type="button" class="btn-close" aria-label="Close"></button>
          </div>

          <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"></script>
          <script>
            // Only one size can be active at a time
            document.querySelectorAll('#sizes .btn').forEach(btn => {
              btn.addEventListener('click', () => {
                document.querySelectorAll('#sizes .btn').forEach(b => { b.classList.remove('active'); b.setAttribute('aria-pressed', 'false'); });
                btn.classList.add('active');
                btn.setAttribute('aria-pressed', 'true');
              });
            });
          </script>
        </body>
        </html>
      HTML
    },

    9 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-bootstrap">Bootstrap</div>
          <h1 class="lc-title">Cards</h1>
        </div>
        <p class="lc-lead">A card is a flexible box with a border, rounded corners and padding. It holds one "thing": a product, a course, an event or a profile. Most dashboards and landing pages are built from cards. In this lesson you will learn the parts of a card. You will learn how to place cards in a responsive grid where they all have the same height. You will also learn how to make a whole card clickable.</p>

        <div class="lc-card">
          <h3>Anatomy of a card</h3>
          <div class="lc-code">&lt;div class="card" style="width: 18rem;"&gt;<br>  &lt;img src="fest.jpg" class="card-img-top" alt="Students dancing at the fest"&gt;<br>  &lt;div class="card-body"&gt;<br>    &lt;h5 class="card-title"&gt;TechFest 2026&lt;/h5&gt;<br>    &lt;h6 class="card-subtitle mb-2 text-body-secondary"&gt;City Tech Campus · 12 Dec&lt;/h6&gt;<br>    &lt;p class="card-text"&gt;Hackathon, robotics and a DJ night.&lt;/p&gt;<br>    &lt;a href="#register" class="btn btn-primary"&gt;Register&lt;/a&gt;<br>  &lt;/div&gt;<br>&lt;/div&gt;</div>
          <p><strong>What you will see:</strong> a box 18rem (288px) wide, with a thin light border and rounded corners. The image fills the top edge. Its top corners are rounded to match the card. Below it is an area with padding. It has a bold title, a grey subtitle, one line of text and a blue Register button.</p>
          <table class="lc-table">
            <thead><tr><th>Part</th><th>Class</th><th>Typical element</th></tr></thead>
            <tbody>
              <tr><td>Wrapper</td><td><code>card</code></td><td><code>div</code> or <code>article</code></td></tr>
              <tr><td>Padded content area</td><td><code>card-body</code></td><td><code>div</code></td></tr>
              <tr><td>Title / subtitle</td><td><code>card-title</code> / <code>card-subtitle</code></td><td><code>h5</code> / <code>h6</code> (choose levels that fit your page outline)</td></tr>
              <tr><td>Text / links</td><td><code>card-text</code> / <code>card-link</code></td><td><code>p</code> / <code>a</code></td></tr>
              <tr><td>Image</td><td><code>card-img-top</code>, <code>card-img-bottom</code>, <code>card-img</code> + <code>card-img-overlay</code></td><td><code>img</code> with a real <code>alt</code> text</td></tr>
              <tr><td>Header / footer strip</td><td><code>card-header</code> / <code>card-footer</code></td><td><code>div</code></td></tr>
              <tr><td>List inside a card</td><td><code>list-group list-group-flush</code></td><td><code>ul</code> with <code>li.list-group-item</code></td></tr>
            </tbody>
          </table>
          <p>Cards have <strong>no fixed width</strong>. They fill their parent. Set the width with the grid, with <code>w-*</code> classes, or with a style, as shown above.</p>
        </div>

        <div class="lc-card">
          <h3>Header, footer and list groups</h3>
          <div class="lc-code">&lt;div class="card"&gt;<br>  &lt;div class="card-header"&gt;Most popular&lt;/div&gt;<br>  &lt;ul class="list-group list-group-flush"&gt;<br>    &lt;li class="list-group-item"&gt;Masala chai – ₹30&lt;/li&gt;<br>    &lt;li class="list-group-item"&gt;Filter coffee – ₹40&lt;/li&gt;<br>  &lt;/ul&gt;<br>  &lt;div class="card-footer text-body-secondary"&gt;Updated today&lt;/div&gt;<br>&lt;/div&gt;</div>
          <p><code>list-group-flush</code> removes the list's outer borders and rounded corners. So the rows fit neatly from edge to edge inside the card.</p>
        </div>

        <div class="lc-card">
          <h3>A responsive card grid with equal heights</h3>
          <div class="lc-code">&lt;div class="row row-cols-1 row-cols-md-3 g-4"&gt;<br>  &lt;div class="col"&gt;<br>    &lt;div class="card h-100"&gt;…&lt;/div&gt;<br>  &lt;/div&gt;<br>  &lt;div class="col"&gt;&lt;div class="card h-100"&gt;…&lt;/div&gt;&lt;/div&gt;<br>  &lt;div class="col"&gt;&lt;div class="card h-100"&gt;…&lt;/div&gt;&lt;/div&gt;<br>&lt;/div&gt;</div>
          <p><strong>What you will see:</strong> below 768px, one card per row. From 768px up, three cards side by side with a 1.5rem gap (<code>g-4</code>). All three have the same height, even when their text is a different length. Why? Grid columns stretch to match the tallest column in the row. And <code>h-100</code> makes each card fill its column. Without <code>h-100</code>, the bottoms of the cards do not line up.</p>
          <p>Old way (do not use): <code>card-deck</code> was removed in Bootstrap 5. Use the grid as shown above. <code>card-group</code> still exists, but it joins cards edge to edge with no gap.</p>
        </div>

        <div class="lc-card">
          <h3>Horizontal cards, coloured cards and stretched links</h3>
          <div class="lc-code">&lt;div class="card mb-3"&gt;<br>  &lt;div class="row g-0"&gt;<br>    &lt;div class="col-md-4"&gt;<br>      &lt;img src="dosa.jpg" class="img-fluid rounded-start" alt="Masala dosa"&gt;<br>    &lt;/div&gt;<br>    &lt;div class="col-md-8"&gt;<br>      &lt;div class="card-body"&gt;…&lt;/div&gt;<br>    &lt;/div&gt;<br>  &lt;/div&gt;<br>&lt;/div&gt;<br><br>&lt;div class="card text-bg-success"&gt;…&lt;/div&gt;           &lt;!-- solid green, white text --&gt;<br>&lt;div class="card border-warning"&gt;…&lt;/div&gt;          &lt;!-- only the border is yellow --&gt;<br><br>&lt;a href="/events/42" class="btn btn-primary stretched-link"&gt;Details&lt;/a&gt;</div>
          <ul class="lc-list">
            <li><strong>Horizontal card:</strong> put a <code>row g-0</code> inside the card. From md up, the image sits on the left. On phones, it sits on top. <code>img-fluid</code> (<code>max-width: 100%; height: auto</code>) makes the image shrink to fit its column. Lesson 17 covers image classes in detail.</li>
            <li><strong>Colour:</strong> <code>text-bg-*</code> sets the background and an easy-to-read text colour together. <code>border-*</code> only colours the border.</li>
            <li><strong><code>stretched-link</code></strong> adds an invisible <code>::after</code> layer. It covers the nearest positioned ancestor (a parent element with a position set). <code>.card</code> already has <code>position: relative</code>, so the whole card becomes clickable. Use only one stretched link per card.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Which card layout should I use?</h3>
          <table class="lc-table">
            <thead><tr><th>Layout</th><th>Markup</th><th>Best for</th></tr></thead>
            <tbody>
              <tr><td>Responsive grid</td><td><code>row row-cols-1 row-cols-md-3 g-4</code> + <code>card h-100</code></td><td>Lists of products, courses or events (the usual choice)</td></tr>
              <tr><td>Card group</td><td><code>card-group</code> around the cards</td><td>Joined panels with no gap, stacked on phones</td></tr>
              <tr><td>Horizontal card</td><td><code>row g-0</code> inside one card</td><td>Search results, a blog post preview</td></tr>
              <tr><td>Image overlay</td><td><code>card-img</code> + <code>card-img-overlay</code></td><td>A banner with text on top of the picture (check the contrast)</td></tr>
            </tbody>
          </table>
        </div>

        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li><strong>Using <code>card-deck</code> from old tutorials.</strong> It was removed in v5. Use <code>row row-cols-* g-*</code> with a <code>col</code> around each card.</li>
            <li><strong>Card bottoms do not line up in the grid.</strong> Add <code>h-100</code> to each <code>.card</code> (not to the <code>col</code>).</li>
            <li><strong>Setting <code>style="width: 18rem"</code> on cards inside a grid.</strong> The column should decide the width. Remove the fixed width.</li>
            <li><strong>Images without <code>alt</code>.</strong> Write a short description. Use <code>alt=""</code> if the image is only for decoration.</li>
            <li><strong>Other links inside a stretched-link card stop working.</strong> The invisible layer covers them. Keep only one link per card. Or give the other links <code>position-relative z-2</code>, so they sit above the layer (it has <code>z-index: 1</code>).</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>Run the starter and make the preview wider than 768px. The three event cards sit side by side, and they all have the same height.</li>
            <li>Remove <code>h-100</code> from the middle card. Its bottom edge is now higher than the others. Then put it back.</li>
            <li>Change <code>row-cols-md-3</code> to <code>row-cols-md-2</code>. Now you get two cards per row from 768px. The third card moves to a new row.</li>
            <li>Click anywhere on the first card (not just the button). The whole card is a link because of <code>stretched-link</code>. The "Clicked:" line below updates.</li>
          </ol>
        </div>

        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Keep all cards in a set the same shape: the same image height, the same number of lines, and the button in the same place. Add <code>mt-auto</code> to the button. The card body can be a flex column: <code>card-body d-flex flex-column</code>. Then the buttons stay at the bottom of every card, even when the text is a different length.
        </div>
      HTML
      starter_code: <<~'HTML'
        <!DOCTYPE html>
        <html lang="en">
        <head>
          <meta charset="UTF-8">
          <meta name="viewport" content="width=device-width, initial-scale=1.0">
          <title>Cards</title>
          <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet">
        </head>
        <body class="p-3">
          <h1 class="h4 mb-3">College Fest Events (card grid)</h1>

          <div class="row row-cols-1 row-cols-md-3 g-4">
            <div class="col">
              <div class="card h-100">
                <!-- A coloured div stands in for card-img-top (no external images) -->
                <div class="card-img-top text-bg-primary d-flex align-items-center justify-content-center fs-1" style="height: 110px" aria-hidden="true">💻</div>
                <div class="card-body d-flex flex-column">
                  <h2 class="card-title h5">Hackathon</h2>
                  <p class="card-subtitle mb-2 text-body-secondary">12 Dec · Lab 3</p>
                  <p class="card-text">24 hours, teams of four. 1. stretched-link: click anywhere.</p>
                  <a href="#hackathon" class="btn btn-primary mt-auto stretched-link">Details</a>
                </div>
              </div>
            </div>
            <div class="col">
              <div class="card h-100">
                <div class="card-header">2. Header + list group</div>
                <ul class="list-group list-group-flush">
                  <li class="list-group-item">Robo race – ₹150</li>
                  <li class="list-group-item">Line follower – ₹100</li>
                </ul>
                <div class="card-footer text-body-secondary">Prizes worth ₹50,000</div>
              </div>
            </div>
            <div class="col">
              <div class="card h-100 text-bg-success">
                <div class="card-body">
                  <h2 class="card-title h5">3. DJ Night (text-bg-success)</h2>
                  <p class="card-text">A longer description, to show that h-100 keeps every card the same height even when one has much more text than the others.</p>
                </div>
              </div>
            </div>
          </div>

          <p class="mt-3 mb-0" id="out">Clicked: nothing yet</p>

          <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"></script>
          <script>
            document.querySelector('.stretched-link').addEventListener('click', e => {
              e.preventDefault();
              document.getElementById('out').textContent = 'Clicked: Hackathon card (whole card is the link)';
            });
          </script>
        </body>
        </html>
      HTML
    },

    10 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-bootstrap">Bootstrap</div>
          <h1 class="lc-title">Navigation and Navbar</h1>
        </div>
        <p class="lc-lead">Every site needs a way to move between pages. Bootstrap has two tools for this. The <strong>nav</strong> component gives you simple link bars, tabs and pills. The <strong>navbar</strong> is a full responsive header with a brand, links, and a "hamburger" button (☰). On small screens, this button hides the links until you click it. Two smaller helpers are also useful. <strong>Breadcrumbs</strong> show where you are in the site. <strong>Pagination</strong> lets you move between pages of results.</p>

        <div class="lc-card">
          <h3>The base nav: links, tabs, pills, underline</h3>
          <div class="lc-code">&lt;ul class="nav nav-tabs"&gt;<br>  &lt;li class="nav-item"&gt;&lt;a class="nav-link active" aria-current="page" href="#"&gt;Overview&lt;/a&gt;&lt;/li&gt;<br>  &lt;li class="nav-item"&gt;&lt;a class="nav-link" href="#"&gt;Schedule&lt;/a&gt;&lt;/li&gt;<br>  &lt;li class="nav-item"&gt;&lt;a class="nav-link disabled" aria-disabled="true"&gt;Results&lt;/a&gt;&lt;/li&gt;<br>&lt;/ul&gt;</div>
          <p><strong>What you will see:</strong> three tabs on a thin grey line. "Overview" looks like an open folder tab (white with a border). "Schedule" is a normal blue link. "Results" is greyed out, and you cannot click it.</p>
          <table class="lc-table">
            <thead><tr><th>Class on .nav</th><th>Look</th></tr></thead>
            <tbody>
              <tr><td>(none)</td><td>Plain row of links</td></tr>
              <tr><td><code>nav-tabs</code></td><td>Folder-style tabs</td></tr>
              <tr><td><code>nav-pills</code></td><td>The active link is a filled, rounded pill</td></tr>
              <tr><td><code>nav-underline</code></td><td>The active link is bold with a 2px underline (new in 5.3)</td></tr>
              <tr><td><code>nav-fill</code></td><td>Items stretch to fill the width. Each one's width depends on <em>the length of its text</em></td></tr>
              <tr><td><code>nav-justified</code></td><td>Items stretch to fill the width, and all have <em>equal</em> width</td></tr>
              <tr><td><code>justify-content-center</code> / <code>-end</code></td><td>Centre or right-align the links</td></tr>
              <tr><td><code>flex-column</code></td><td>Vertical nav (for example a sidebar)</td></tr>
            </tbody>
          </table>
          <p>Mark the current page with <code>active</code> <strong>and</strong> <code>aria-current="page"</code>. The class changes the look. The attribute tells screen readers. The nav classes only style the links. Tabs that really switch between content panels also need Bootstrap's tab JavaScript: <code>data-bs-toggle="tab"</code> plus <code>tab-content</code>/<code>tab-pane</code>.</p>
        </div>

        <div class="lc-card">
          <h3>Navbar anatomy</h3>
          <div class="lc-code">&lt;nav class="navbar navbar-expand-lg bg-body-tertiary"&gt;<br>  &lt;div class="container-fluid"&gt;<br>    &lt;a class="navbar-brand" href="#"&gt;TechFest&lt;/a&gt;<br>    &lt;button class="navbar-toggler" type="button" data-bs-toggle="collapse"<br>            data-bs-target="#mainNav" aria-controls="mainNav"<br>            aria-expanded="false" aria-label="Toggle navigation"&gt;<br>      &lt;span class="navbar-toggler-icon"&gt;&lt;/span&gt;<br>    &lt;/button&gt;<br>    &lt;div class="collapse navbar-collapse" id="mainNav"&gt;<br>      &lt;ul class="navbar-nav ms-auto mb-2 mb-lg-0"&gt;<br>        &lt;li class="nav-item"&gt;&lt;a class="nav-link active" aria-current="page" href="#"&gt;Home&lt;/a&gt;&lt;/li&gt;<br>        &lt;li class="nav-item"&gt;&lt;a class="nav-link" href="#events"&gt;Events&lt;/a&gt;&lt;/li&gt;<br>        &lt;li class="nav-item"&gt;&lt;a class="nav-link" href="#contact"&gt;Contact&lt;/a&gt;&lt;/li&gt;<br>      &lt;/ul&gt;<br>    &lt;/div&gt;<br>  &lt;/div&gt;<br>&lt;/nav&gt;</div>
          <p><strong>What you will see:</strong> at 992px and wider, a light grey bar. "TechFest" is on the left. Home, Events and Contact are on the right (<code>ms-auto</code>). Home is darker because it is active. Below 992px, the links disappear and a ☰ button appears on the right. Click it and the links slide down as a vertical list. It also changes <code>aria-expanded</code> to <code>"true"</code>.</p>
          <ul class="lc-list">
            <li><code>navbar-brand</code>: your logo or name. <code>navbar-nav</code>: the list of links. <code>navbar-text</code>: plain text inside the bar.</li>
            <li>The toggler's <code>data-bs-target="#mainNav"</code> and <code>aria-controls="mainNav"</code> must match the collapse's <code>id</code>.</li>
            <li>The toggler needs <code>bootstrap.bundle.min.js</code> (the collapse plugin). Without it, the button does nothing.</li>
            <li><code>mb-2 mb-lg-0</code> adds space under the links in the collapsed mobile menu. It removes that space when the bar is horizontal.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>When does it collapse?</h3>
          <table class="lc-table">
            <thead><tr><th>Class</th><th>Horizontal (expanded) from</th></tr></thead>
            <tbody>
              <tr><td><code>navbar-expand-sm</code></td><td>576px</td></tr>
              <tr><td><code>navbar-expand-md</code></td><td>768px</td></tr>
              <tr><td><code>navbar-expand-lg</code></td><td>992px (the most common choice)</td></tr>
              <tr><td><code>navbar-expand-xl</code> / <code>-xxl</code></td><td>1200px / 1400px</td></tr>
              <tr><td><code>navbar-expand</code></td><td>Always horizontal, never collapses</td></tr>
              <tr><td>no expand class</td><td>Always collapsed (hamburger at every size)</td></tr>
            </tbody>
          </table>
        </div>

        <div class="lc-card">
          <h3>Colour and placement</h3>
          <ul class="lc-list">
            <li><strong>Light:</strong> <code>bg-body-tertiary</code> (it also changes for dark mode). <strong>Dark:</strong> <code>&lt;nav class="navbar bg-dark" data-bs-theme="dark"&gt;</code>. You can also use <code>bg-primary</code> with <code>data-bs-theme="dark"</code> for a blue bar with light text.</li>
            <li>Old way (do not use): <code>navbar-light</code> is no longer in Bootstrap 5.3's CSS, because the light look is the default. <code>navbar-dark</code> is deprecated since 5.3.0. Use <code>data-bs-theme="dark"</code> instead.</li>
          </ul>
          <table class="lc-table">
            <thead><tr><th>Class</th><th>Behaviour</th><th>Watch out</th></tr></thead>
            <tbody>
              <tr><td>(none)</td><td>Scrolls away with the page</td><td>-</td></tr>
              <tr><td><code>sticky-top</code></td><td>Scrolls normally until it reaches the top, then stays there</td><td>Keeps its space in the layout, so nothing is hidden</td></tr>
              <tr><td><code>fixed-top</code></td><td>Always fixed to the top of the viewport</td><td>It is taken out of the normal page flow, so it covers content. Add <code>padding-top</code> to <code>body</code> (about 56px for a default navbar; measure yours)</td></tr>
              <tr><td><code>fixed-bottom</code></td><td>Always fixed to the bottom</td><td>Needs <code>padding-bottom</code> on <code>body</code></td></tr>
            </tbody>
          </table>
        </div>

        <div class="lc-card">
          <h3>Breadcrumbs</h3>
          <div class="lc-code">&lt;nav aria-label="breadcrumb"&gt;<br>  &lt;ol class="breadcrumb"&gt;<br>    &lt;li class="breadcrumb-item"&gt;&lt;a href="#"&gt;Home&lt;/a&gt;&lt;/li&gt;<br>    &lt;li class="breadcrumb-item"&gt;&lt;a href="#"&gt;Courses&lt;/a&gt;&lt;/li&gt;<br>    &lt;li class="breadcrumb-item active" aria-current="page"&gt;Bootstrap&lt;/li&gt;<br>  &lt;/ol&gt;<br>&lt;/nav&gt;</div>
          <ul class="lc-list">
            <li><strong>Output:</strong> Home / Courses / Bootstrap. The first two are links. The last is plain grey text.</li>
            <li>The <code>/</code> separators are added by CSS. Change them with a CSS variable: <code>&lt;nav style="--bs-breadcrumb-divider: '&gt;';" aria-label="breadcrumb"&gt;</code> (note the quotes inside).</li>
            <li>The current page is not a link and gets <code>aria-current="page"</code>.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Pagination</h3>
          <div class="lc-code">&lt;nav aria-label="Search results pages"&gt;<br>  &lt;ul class="pagination justify-content-center"&gt;<br>    &lt;li class="page-item disabled"&gt;&lt;a class="page-link"&gt;Previous&lt;/a&gt;&lt;/li&gt;<br>    &lt;li class="page-item active" aria-current="page"&gt;&lt;a class="page-link" href="#"&gt;1&lt;/a&gt;&lt;/li&gt;<br>    &lt;li class="page-item"&gt;&lt;a class="page-link" href="#"&gt;2&lt;/a&gt;&lt;/li&gt;<br>    &lt;li class="page-item"&gt;&lt;a class="page-link" href="#"&gt;Next&lt;/a&gt;&lt;/li&gt;<br>  &lt;/ul&gt;<br>&lt;/nav&gt;</div>
          <ul class="lc-list">
            <li>Put <code>.active</code> + <code>aria-current="page"</code> on the current page item. Put <code>.disabled</code> on Previous when you are on page 1.</li>
            <li>A disabled link has no <code>href</code>. So you cannot click it or focus it.</li>
            <li>Sizes: <code>.pagination-lg</code>, <code>.pagination-sm</code>. To align it, use flex utilities: <code>justify-content-center</code> / <code>-end</code>.</li>
            <li>Give each <code>&lt;nav&gt;</code> its own <code>aria-label</code>. Then screen reader users can tell the navigation areas apart.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Which Navigation Helper?</h3>
          <table class="lc-table">
            <thead><tr><th>Component</th><th>Answers the question</th><th>Example</th></tr></thead>
            <tbody>
              <tr><td>Breadcrumb</td><td>"Where am I?"</td><td>Home / Electronics / Phones</td></tr>
              <tr><td>Pagination</td><td>"Which page of results?"</td><td>« 1 2 3 »</td></tr>
              <tr><td>Navbar / nav</td><td>"Where can I go?"</td><td>Home · Events · Contact</td></tr>
            </tbody>
          </table>
        </div>

        <div class="lc-card">
          <h3>Scrollspy: highlight where the reader is</h3>
          <p>A long one-page site can use <strong>scrollspy</strong>. It adds <code>.active</code> to the nav link for the section that is on screen now. Put <code>data-bs-spy="scroll"</code> and <code>data-bs-target</code> (the nav's id) on the element that scrolls. Give every section the id that its link points to.</p>
          <div class="lc-code">&lt;nav id="fest-nav" class="nav nav-pills mb-2"&gt;<br>  &lt;a class="nav-link" href="#day1"&gt;Day 1&lt;/a&gt;<br>  &lt;a class="nav-link" href="#day2"&gt;Day 2&lt;/a&gt;<br>&lt;/nav&gt;<br>&lt;div data-bs-spy="scroll" data-bs-target="#fest-nav" data-bs-smooth-scroll="true"<br>     class="overflow-y-scroll border rounded p-3" style="height: 200px" tabindex="0"&gt;<br>  &lt;h4 id="day1"&gt;Day 1&lt;/h4&gt;&lt;p&gt;…long text…&lt;/p&gt;<br>  &lt;h4 id="day2"&gt;Day 2&lt;/h4&gt;&lt;p&gt;…long text…&lt;/p&gt;<br>&lt;/div&gt;</div>
          <p><strong>What you will see:</strong> the pill for the section you are reading is filled blue. At the top it is "Day 1". When the "Day 2" heading scrolls into view, the highlight moves to "Day 2". For a whole page, put the two attributes on <code>&lt;body&gt;</code> instead. A scrolling box needs a fixed height, <code>overflow-y-scroll</code> and <code>tabindex="0"</code>, so keyboard users can scroll it. Scrollspy needs the JS bundle. It only works when each link's <code>href</code> matches the id of a visible element.</p>
        </div>

        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li><strong>The hamburger does nothing.</strong> Either the bundle JS is missing, or <code>data-bs-target</code> does not match the collapse <code>id</code>. Load <code>bootstrap.bundle.min.js</code> and make the two match exactly.</li>
            <li><strong>Copying Bootstrap 4's <code>data-toggle</code> / <code>data-target</code>.</strong> Version 5 needs the <code>bs</code> prefix: <code>data-bs-toggle</code>, <code>data-bs-target</code>.</li>
            <li><strong>Using <code>navbar-dark bg-dark</code>.</strong> It still works, but it is deprecated. Use <code>data-bs-theme="dark"</code>.</li>
            <li><strong>A <code>fixed-top</code> navbar hides the page heading.</strong> Add top padding to <code>body</code>, or use <code>sticky-top</code> instead.</li>
            <li><strong>Only the <code>active</code> class on the current link, breadcrumb or page number.</strong> Screen readers do not notice it. Add <code>aria-current="page"</code>.</li>
            <li><strong>Writing <code>--bs-breadcrumb-divider: &gt;;</code> without inner quotes.</strong> The divider disappears. The value is a CSS string, so it needs quotes: <code>'&gt;'</code>.</li>
            <li><strong>Making the last breadcrumb a link to the page you are already on.</strong> Make it plain text.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>Make the preview narrower than 992px. The links are hidden. Click ☰ to open and close them.</li>
            <li>Change <code>navbar-expand-lg</code> to <code>navbar-expand-sm</code>. Now the bar stays horizontal down to 576px.</li>
            <li>Change <code>bg-body-tertiary</code> to <code>bg-dark</code>. Add <code>data-bs-theme="dark"</code> to the <code>&lt;nav&gt;</code>. You get a dark bar with light links and a light hamburger icon.</li>
            <li>In demo 2, change <code>nav-pills</code> to <code>nav-underline</code>. Then add <code>nav-justified</code>. The active item is underlined, and the three items share the width equally.</li>
            <li>In demo 4, change the breadcrumb divider to <code>'›'</code> by editing the <code>style</code> attribute.</li>
            <li>In demo 5, move <code>active</code> and <code>aria-current="page"</code> from page 1 to page 2. Remove <code>disabled</code> from Previous and give it <code>href="#"</code>.</li>
          </ol>
        </div>

        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Use a <code>&lt;nav&gt;</code> element for the navbar (or add <code>role="navigation"</code> to a div). If a page has more than one nav, give each one an <code>aria-label</code>, such as "Main" or "Event sections". Then screen-reader users can jump straight to the one they want.
        </div>
      HTML
      starter_code: <<~'HTML'
        <!DOCTYPE html>
        <html lang="en">
        <head>
          <meta charset="UTF-8">
          <meta name="viewport" content="width=device-width, initial-scale=1.0">
          <title>Navigation and Navbar</title>
          <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet">
        </head>
        <body>
          <!-- 1. Responsive navbar: collapses below 992px (navbar-expand-lg) -->
          <nav class="navbar navbar-expand-lg bg-body-tertiary sticky-top" aria-label="Main">
            <div class="container-fluid">
              <a class="navbar-brand" href="#">🎉 TechFest</a>
              <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#mainNav" aria-controls="mainNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
              </button>
              <div class="collapse navbar-collapse" id="mainNav">
                <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                  <li class="nav-item"><a class="nav-link active" aria-current="page" href="#">Home</a></li>
                  <li class="nav-item"><a class="nav-link" href="#events">Events</a></li>
                  <li class="nav-item"><a class="nav-link" href="#contact">Contact</a></li>
                </ul>
              </div>
            </div>
          </nav>

          <main class="container py-4">
            <h1 class="h4">Navigation and Navbar</h1>
            <p class="text-body-secondary">Resize the preview below 992px to see the ☰ toggler.</p>

            <h2 class="h6 mt-4">2. Pills nav</h2>
            <ul class="nav nav-pills mb-4" aria-label="Event sections">
              <li class="nav-item"><a class="nav-link active" aria-current="page" href="#">Overview</a></li>
              <li class="nav-item"><a class="nav-link" href="#">Schedule</a></li>
              <li class="nav-item"><a class="nav-link disabled" aria-disabled="true">Results</a></li>
            </ul>

            <h2 class="h6">3. Tabs, centred</h2>
            <nav class="nav nav-tabs justify-content-center" aria-label="Days">
              <a class="nav-link active" aria-current="page" href="#">Day 1</a>
              <a class="nav-link" href="#">Day 2</a>
              <a class="nav-link" href="#">Day 3</a>
            </nav>

            <h2 class="h6 mt-4">4. Breadcrumb with a custom divider</h2>
            <nav style="--bs-breadcrumb-divider: '>';" aria-label="breadcrumb">
              <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="#">Home</a></li>
                <li class="breadcrumb-item"><a href="#">Events</a></li>
                <li class="breadcrumb-item active" aria-current="page">Hackathon</li>
              </ol>
            </nav>

            <h2 class="h6">5. Pagination</h2>
            <nav aria-label="Results pages">
              <ul class="pagination">
                <li class="page-item disabled"><a class="page-link">Previous</a></li>
                <li class="page-item active" aria-current="page"><a class="page-link" href="#">1</a></li>
                <li class="page-item"><a class="page-link" href="#">2</a></li>
                <li class="page-item"><a class="page-link" href="#">Next</a></li>
              </ul>
            </nav>
          </main>

          <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"></script>
        </body>
        </html>
      HTML
    },

    11 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-bootstrap">Bootstrap</div>
          <h1 class="lc-title">Offcanvas</h1>
        </div>
        <p class="lc-lead">An <strong>offcanvas</strong> is a panel that slides in from the edge of the screen. Examples are a mobile menu, a shopping cart or a filter sidebar. It stays hidden outside the page until a button opens it. Bootstrap does the sliding for you. It also adds the dark backdrop (the dim layer behind the panel), closes the panel when you press <kbd>Esc</kbd>, and moves keyboard focus into the panel. You only write HTML and data attributes (plus <code>bootstrap.bundle.min.js</code>).</p>

        <div class="lc-card">
          <h3>Parts: Trigger + Panel</h3>
          <div class="lc-code">&lt;!-- Trigger --&gt;<br>&lt;button class="btn btn-primary" type="button"<br>        data-bs-toggle="offcanvas" data-bs-target="#menu" aria-controls="menu"&gt;<br>  Open menu<br>&lt;/button&gt;<br><br>&lt;!-- Panel --&gt;<br>&lt;div class="offcanvas offcanvas-start" tabindex="-1" id="menu" aria-labelledby="menuLabel"&gt;<br>  &lt;div class="offcanvas-header"&gt;<br>    &lt;h5 class="offcanvas-title" id="menuLabel"&gt;Chai Point Menu&lt;/h5&gt;<br>    &lt;button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"&gt;&lt;/button&gt;<br>  &lt;/div&gt;<br>  &lt;div class="offcanvas-body"&gt;<br>    Masala Chai: ₹30 ...<br>  &lt;/div&gt;<br>&lt;/div&gt;</div>
          <p><strong>What you will see:</strong> a blue "Open menu" button. When you click it, a white panel slides in from the <strong>left</strong>. The panel is 400px wide, or the full width on a narrow phone. A dark backdrop dims the rest of the page. The panel has the title "Chai Point Menu" and a ✕ button. To close it, click ✕, click the backdrop or press <kbd>Esc</kbd>.</p>
          <ul class="lc-list">
            <li><code>data-bs-toggle="offcanvas"</code> + <code>data-bs-target="#menu"</code> connect the button to the panel. A link can use <code>href="#menu"</code> with <code>role="button"</code> instead.</li>
            <li><code>tabindex="-1"</code> lets Bootstrap move focus into the panel when it opens.</li>
            <li><code>aria-labelledby</code> points to the title's <code>id</code>. So screen readers (tools that read the page aloud) say "Chai Point Menu". Bootstrap adds <code>role="dialog"</code> for you.</li>
            <li><code>data-bs-dismiss="offcanvas"</code> closes the panel. It works on any button inside the panel, not only the ✕. For example, a "Checkout" button can use it.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Placement</h3>
          <p>There is no default side. So always add one placement class next to <code>.offcanvas</code>:</p>
          <table class="lc-table">
            <thead><tr><th>Class</th><th>Slides in from</th><th>Size</th></tr></thead>
            <tbody>
              <tr><td><code>.offcanvas-start</code></td><td>Left (right in RTL languages)</td><td>400px wide</td></tr>
              <tr><td><code>.offcanvas-end</code></td><td>Right (left in RTL)</td><td>400px wide</td></tr>
              <tr><td><code>.offcanvas-top</code></td><td>Top</td><td>30vh tall</td></tr>
              <tr><td><code>.offcanvas-bottom</code></td><td>Bottom</td><td>30vh tall</td></tr>
            </tbody>
          </table>
          <p>The sizes come from the CSS variables <code>--bs-offcanvas-width</code> and <code>--bs-offcanvas-height</code>. For a dark panel, add <code>data-bs-theme="dark"</code> to the <code>.offcanvas</code>. The old way of making a dark panel with <code>.btn-close-white</code> is deprecated (no longer recommended) in 5.3.</p>
        </div>

        <div class="lc-card">
          <h3>Options: Backdrop, Scrolling, Keyboard</h3>
          <table class="lc-table">
            <thead><tr><th>Attribute on <code>.offcanvas</code></th><th>Default</th><th>What it does</th></tr></thead>
            <tbody>
              <tr><td><code>data-bs-backdrop="true"</code></td><td>true</td><td>Dark backdrop. Clicking it closes the panel</td></tr>
              <tr><td><code>data-bs-backdrop="false"</code></td><td>n/a</td><td>No backdrop. The page stays bright</td></tr>
              <tr><td><code>data-bs-backdrop="static"</code></td><td>n/a</td><td>Backdrop is shown, but clicking it does <strong>not</strong> close the panel</td></tr>
              <tr><td><code>data-bs-scroll="true"</code></td><td>false</td><td>You can still scroll the page behind while the panel is open</td></tr>
              <tr><td><code>data-bs-keyboard="false"</code></td><td>true</td><td><kbd>Esc</kbd> no longer closes the panel</td></tr>
            </tbody>
          </table>
          <p>A common "side note" panel uses <code>data-bs-scroll="true" data-bs-backdrop="false"</code>. This way the reader can keep scrolling the article.</p>
        </div>

        <div class="lc-card">
          <h3>Responsive Offcanvas and the Offcanvas Navbar</h3>
          <p>Replace <code>.offcanvas</code> with <code>.offcanvas-sm</code>, <code>-md</code>, <code>-lg</code>, <code>-xl</code> or <code>-xxl</code>. <code>.offcanvas-lg</code> is an offcanvas <strong>below</strong> 992px. From 992px up, it is normal content that is always visible. This works well for a filter sidebar.</p>
          <div class="lc-code">&lt;button class="btn btn-primary d-lg-none" type="button"<br>        data-bs-toggle="offcanvas" data-bs-target="#filters" aria-controls="filters"&gt;Filters&lt;/button&gt;<br><br>&lt;div class="offcanvas-lg offcanvas-start" tabindex="-1" id="filters" aria-labelledby="filtersLabel"&gt;<br>  &lt;div class="offcanvas-header"&gt;<br>    &lt;h5 class="offcanvas-title" id="filtersLabel"&gt;Filters&lt;/h5&gt;<br>    &lt;button type="button" class="btn-close" data-bs-dismiss="offcanvas"<br>            data-bs-target="#filters" aria-label="Close"&gt;&lt;/button&gt;<br>  &lt;/div&gt;<br>  &lt;div class="offcanvas-body"&gt;Price, brand, rating...&lt;/div&gt;<br>&lt;/div&gt;</div>
          <p>Note two extra details from the docs. The trigger button is hidden on large screens with <code>d-lg-none</code>. The close button has its own <code>data-bs-target</code>. From 992px up, the header (with its ✕) is hidden and the body shows as normal page content.</p>
          <p><strong>Navbar menu:</strong> inside a <code>.navbar.navbar-expand-lg</code>, point the <code>.navbar-toggler</code> at an offcanvas instead of a collapse:</p>
          <div class="lc-code">&lt;button class="navbar-toggler" type="button" data-bs-toggle="offcanvas"<br>        data-bs-target="#navMenu" aria-controls="navMenu" aria-label="Toggle navigation"&gt;<br>  &lt;span class="navbar-toggler-icon"&gt;&lt;/span&gt;<br>&lt;/button&gt;<br>&lt;div class="offcanvas offcanvas-end" tabindex="-1" id="navMenu" aria-labelledby="navMenuLabel"&gt;<br>  ...offcanvas-header + offcanvas-body with &lt;ul class="navbar-nav"&gt;...<br>&lt;/div&gt;</div>
          <p>Below <code>lg</code>, the links are in a drawer that slides in. From <code>lg</code> up, they sit in the navbar as normal. If you leave out <code>navbar-expand-*</code>, the menu is a drawer at every screen size.</p>
        </div>

        <div class="lc-card">
          <h3>JavaScript API and Events</h3>
          <div class="lc-code">const panel = document.getElementById('menu');<br>const oc = bootstrap.Offcanvas.getOrCreateInstance(panel);<br>oc.show();   // also: oc.hide(), oc.toggle()<br><br>panel.addEventListener('shown.bs.offcanvas', () =&gt; {<br>  console.log('Menu is fully open');<br>});</div>
          <p>Events (signals that something happened): <code>show.bs.offcanvas</code> (starting to open), <code>shown.bs.offcanvas</code> (finished opening), <code>hide.bs.offcanvas</code>, <code>hidden.bs.offcanvas</code>, and <code>hidePrevented.bs.offcanvas</code>. The last one fires on a click on a static backdrop, or on <kbd>Esc</kbd> with <code>data-bs-keyboard="false"</code>. Like modals, only one offcanvas can be open at a time.</p>
        </div>

        <div class="lc-card">
          <h3>Offcanvas vs Modal vs Collapse</h3>
          <table class="lc-table">
            <thead><tr><th></th><th>Offcanvas</th><th>Modal</th><th>Collapse</th></tr></thead>
            <tbody>
              <tr><td>Appears</td><td>Slides in from an edge</td><td>Box in the centre/top</td><td>Opens in place and pushes content down</td></tr>
              <tr><td>Covers the page?</td><td>Yes, with a backdrop (optional)</td><td>Yes, with a backdrop</td><td>No</td></tr>
              <tr><td>Best for</td><td>Menus, carts, filters</td><td>Confirmations, short forms</td><td>"Read more", FAQ answers, navbar links</td></tr>
              <tr><td>Toggle attribute</td><td><code>data-bs-toggle="offcanvas"</code></td><td><code>data-bs-toggle="modal"</code></td><td><code>data-bs-toggle="collapse"</code></td></tr>
            </tbody>
          </table>
        </div>

        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Only <code>class="offcanvas"</code> with no placement class → the panel just appears stuck to the bottom of the screen. It does not slide. Add <code>offcanvas-start</code>, <code>-end</code>, <code>-top</code> or <code>-bottom</code>.</li>
            <li><code>data-bs-target="menu"</code> (no <code>#</code>) → nothing opens. The value is a CSS selector: <code>"#menu"</code>.</li>
            <li>Loading only the CSS → the button does nothing. Offcanvas needs <code>bootstrap.bundle.min.js</code> before <code>&lt;/body&gt;</code>.</li>
            <li>Forgetting <code>aria-labelledby</code> on the panel → screen readers say it is a dialog with no name. Point it to the title's <code>id</code>.</li>
            <li>A responsive <code>.offcanvas-lg</code> whose close button has no <code>data-bs-target</code> → the ✕ may not close it. Add <code>data-bs-target="#id"</code>, as the docs show.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>Run the starter code and open the menu. Close it with ✕. Then close it with the backdrop. Then close it with <kbd>Esc</kbd>.</li>
            <li>Open the cart. Click the dark backdrop. The panel stays open because it is <code>static</code>. Close it with ✕.</li>
            <li>Change the menu's <code>offcanvas-start</code> to <code>offcanvas-bottom</code> and run again. Now it comes up from the bottom, 30vh tall.</li>
            <li>Click "Open menu with JS". Watch the status line change to "menu open". It changes back to "closed" when you close the panel.</li>
          </ol>
        </div>

        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> For a mobile menu on the whole site, use the offcanvas navbar pattern (<code>navbar-expand-lg</code> + <code>offcanvas offcanvas-end</code>). You write the links once. Bootstrap shows them as a drawer on phones and as a normal navbar on laptops.
        </div>
      HTML
      starter_code: <<~'HTML'
        <!DOCTYPE html>
        <html lang="en">
        <head>
          <meta charset="UTF-8">
          <meta name="viewport" content="width=device-width, initial-scale=1.0">
          <title>Offcanvas</title>
          <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet">
        </head>
        <body class="p-4">
          <h2 class="h5">1. Menu from the left (data attributes)</h2>
          <button class="btn btn-primary mb-4" type="button" data-bs-toggle="offcanvas" data-bs-target="#menu" aria-controls="menu">Open menu</button>

          <h2 class="h5">2. Cart from the right (static backdrop)</h2>
          <button class="btn btn-outline-primary mb-4" type="button" data-bs-toggle="offcanvas" data-bs-target="#cart" aria-controls="cart">View cart (2)</button>

          <h2 class="h5">3. Opened with JavaScript</h2>
          <button class="btn btn-secondary" type="button" id="jsBtn">Open menu with JS</button>
          <p class="mt-2 text-body-secondary" id="statusLine">Status: closed</p>

          <div class="offcanvas offcanvas-start" tabindex="-1" id="menu" aria-labelledby="menuLabel">
            <div class="offcanvas-header">
              <h5 class="offcanvas-title" id="menuLabel">Chai Point Menu</h5>
              <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
            </div>
            <div class="offcanvas-body">
              <ul class="list-unstyled">
                <li>Masala Chai: ₹30</li>
                <li>Ginger Chai: ₹35</li>
                <li>Samosa: ₹20</li>
              </ul>
            </div>
          </div>

          <div class="offcanvas offcanvas-end" data-bs-backdrop="static" tabindex="-1" id="cart" aria-labelledby="cartLabel">
            <div class="offcanvas-header">
              <h5 class="offcanvas-title" id="cartLabel">Your cart</h5>
              <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
            </div>
            <div class="offcanvas-body">
              <p>2 × Masala Chai = ₹60</p>
              <p class="small text-body-secondary">Clicking outside will not close this panel. Use ✕ or Checkout.</p>
              <button type="button" class="btn btn-success w-100" data-bs-dismiss="offcanvas">Checkout</button>
            </div>
          </div>

          <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"></script>
          <script>
            const menuEl = document.getElementById('menu');
            const statusLine = document.getElementById('statusLine');
            document.getElementById('jsBtn').addEventListener('click', () => {
              bootstrap.Offcanvas.getOrCreateInstance(menuEl).show();
            });
            menuEl.addEventListener('shown.bs.offcanvas', () => { statusLine.textContent = 'Status: menu open'; });
            menuEl.addEventListener('hidden.bs.offcanvas', () => { statusLine.textContent = 'Status: closed'; });
          </script>
        </body>
        </html>
      HTML
    },
    12 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-bootstrap">Bootstrap</div>
          <h1 class="lc-title">Forms</h1>
        </div>
        <p class="lc-lead">Each browser draws form controls in its own way, and plain inputs look crowded. Bootstrap gives every input, select, checkbox and slider one clean style that is easy to tap. It also lays out forms with the grid and adds green/red validation messages (messages that say if a value is right or wrong). The HTML rules from the HTML course still apply. Every control needs a <code>&lt;label&gt;</code> and a <code>name</code>. Bootstrap only adds classes.</p>

        <div class="lc-card">
          <h3>The Main Classes</h3>
          <table class="lc-table">
            <thead><tr><th>Element</th><th>Class</th><th>Notes</th></tr></thead>
            <tbody>
              <tr><td><code>&lt;label&gt;</code></td><td><code>.form-label</code></td><td>Adds a small bottom margin</td></tr>
              <tr><td><code>&lt;input&gt;</code>, <code>&lt;textarea&gt;</code></td><td><code>.form-control</code></td><td>Full width, rounded, blue focus ring. Sizes: <code>.form-control-lg</code> / <code>-sm</code></td></tr>
              <tr><td><code>&lt;select&gt;</code></td><td><code>.form-select</code></td><td>Custom arrow. Sizes: <code>.form-select-lg</code> / <code>-sm</code></td></tr>
              <tr><td>Checkbox / radio</td><td><code>.form-check</code> wrapper, <code>.form-check-input</code>, <code>.form-check-label</code></td><td>Add <code>.form-check-inline</code> to put them side by side</td></tr>
              <tr><td>Switch</td><td><code>.form-check.form-switch</code></td><td>A checkbox with <code>role="switch"</code></td></tr>
              <tr><td><code>&lt;input type="range"&gt;</code></td><td><code>.form-range</code></td><td>Styled slider. Use <code>min</code>, <code>max</code>, <code>step</code></td></tr>
              <tr><td>Help text</td><td><code>.form-text</code></td><td>Link it with <code>aria-describedby</code> on the input</td></tr>
            </tbody>
          </table>
          <div class="lc-code">&lt;div class="mb-3"&gt;<br>  &lt;label for="email" class="form-label"&gt;College email&lt;/label&gt;<br>  &lt;input type="email" class="form-control" id="email" name="email" aria-describedby="emailHelp"&gt;<br>  &lt;div id="emailHelp" class="form-text"&gt;We'll send your fest pass here.&lt;/div&gt;<br>&lt;/div&gt;<br><br>&lt;div class="form-check form-switch"&gt;<br>  &lt;input class="form-check-input" type="checkbox" role="switch" id="hostel" name="hostel"&gt;<br>  &lt;label class="form-check-label" for="hostel"&gt;Need hostel stay&lt;/label&gt;<br>&lt;/div&gt;</div>
          <p><strong>What you will see:</strong> the label "College email" above a full-width input with rounded corners. Small grey help text sits under it. A blue glow appears around the input when you click into it. Below it is a pill-shaped switch labelled "Need hostel stay". When you click it, it slides right and turns blue.</p>
        </div>

        <div class="lc-card">
          <h3>Input Groups and Floating Labels</h3>
          <p><strong>Input group:</strong> attach text or buttons to the side of an input.</p>
          <div class="lc-code">&lt;div class="input-group"&gt;<br>  &lt;span class="input-group-text"&gt;₹&lt;/span&gt;<br>  &lt;input type="number" class="form-control" aria-label="Amount in rupees"&gt;<br>  &lt;span class="input-group-text"&gt;.00&lt;/span&gt;<br>&lt;/div&gt;</div>
          <p><strong>Floating label:</strong> the label sits inside the box. When you type, it gets smaller and moves to the top.</p>
          <div class="lc-code">&lt;div class="form-floating"&gt;<br>  &lt;input type="email" class="form-control" id="fEmail" placeholder="you@college.edu"&gt;<br>  &lt;label for="fEmail"&gt;Email address&lt;/label&gt;<br>&lt;/div&gt;</div>
          <ul class="lc-list">
            <li>The <code>&lt;input&gt;</code> must come <strong>before</strong> the <code>&lt;label&gt;</code>. This is because the CSS uses the sibling selector <code>~</code>.</li>
            <li>A <code>placeholder</code> that is not empty is <strong>required</strong>. The effect uses <code>:placeholder-shown</code>. The placeholder text itself stays hidden.</li>
            <li>With <code>.form-select</code>, the label always shows in its small position at the top.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Layout with the Grid</h3>
          <div class="lc-code">&lt;form class="row g-3"&gt;<br>  &lt;div class="col-md-6"&gt; ...name... &lt;/div&gt;<br>  &lt;div class="col-md-6"&gt; ...email... &lt;/div&gt;<br>  &lt;div class="col-12"&gt; ...address... &lt;/div&gt;<br>  &lt;div class="col-12"&gt;&lt;button class="btn btn-primary" type="submit"&gt;Register&lt;/button&gt;&lt;/div&gt;<br>&lt;/form&gt;</div>
          <p><strong>What you will see:</strong> on a phone, every field takes the full width, one under another. From 768px (<code>md</code>) up, name and email sit side by side, each half width. Address and the button stay full width. <code>g-3</code> puts a 1rem gap between fields in both directions.</p>
        </div>

        <div class="lc-card">
          <h3>Validation Styles</h3>
          <p>Bootstrap uses the browser's own rules (<code>required</code>, <code>type="email"</code>, <code>minlength</code>, <code>min</code>/<code>max</code>, <code>pattern</code>). It only changes how errors <em>look</em>:</p>
          <ol class="lc-list">
            <li>Add <code>novalidate</code> to the <code>&lt;form&gt;</code>. This turns off the browser's default pop-up messages.</li>
            <li>Put a <code>.invalid-feedback</code> element right after each control. You can also add a <code>.valid-feedback</code>. They stay hidden until needed.</li>
            <li>On submit, run <code>form.checkValidity()</code>. If it is <code>false</code>, call <code>event.preventDefault()</code>. Then add <code>.was-validated</code> to the form so the red/green styles appear.</li>
          </ol>
          <div class="lc-code">form.addEventListener('submit', event =&gt; {<br>  if (!form.checkValidity()) {<br>    event.preventDefault();<br>    event.stopPropagation();<br>  }<br>  form.classList.add('was-validated');<br>});</div>
          <p><strong>What you will see:</strong> before the first submit, nothing is red. Now click "Register" with an empty required field. That field gets a red border and a red (!) icon. Its red <code>.invalid-feedback</code> message appears below it. Correct fields turn green with a ✓.</p>
          <table class="lc-table">
            <thead><tr><th>Way</th><th>How</th><th>When</th></tr></thead>
            <tbody>
              <tr><td>Client-side (in the browser)</td><td><code>.was-validated</code> on the form (uses <code>:valid</code>/<code>:invalid</code>)</td><td>Instant feedback in the browser</td></tr>
              <tr><td>Server-side (on your server)</td><td><code>.is-invalid</code> / <code>.is-valid</code> on the control itself, plus <code>aria-describedby</code> pointing to the feedback</td><td>After your server (e.g. Rails, Django) rejects a value, like "email already registered"</td></tr>
            </tbody>
          </table>
          <p>Inside an <code>.input-group</code>, add <code>.has-validation</code> to the group. This keeps the rounded corners correct. The docs say that screen readers do not read out the client-side custom styles. So for important forms, use server-side messages or the browser's default validation.</p>
        </div>

        <div class="lc-card">
          <h3>Disabled, Readonly, Plaintext</h3>
          <ul class="lc-list">
            <li><code>disabled</code> attribute: greyed out, you cannot focus it, and it is <strong>not sent</strong> with the form. <code>&lt;fieldset disabled&gt;</code> disables every control inside it.</li>
            <li><code>readonly</code>: you cannot change the value, but you can focus and copy it. It <strong>is sent</strong> with the form. (In 5.3 it looks like a normal input. Only <code>disabled</code> turns grey.)</li>
            <li><code>.form-control-plaintext</code> + <code>readonly</code>: shows a value as plain text but keeps the same spacing as an input. Use it for things like "Roll number: 21CS045".</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Using <code>placeholder</code> instead of a label → the hint disappears when you type, and screen readers may miss it. Always add a <code>&lt;label for&gt;</code> (or <code>aria-label</code> in an input group).</li>
            <li>Floating label with the label first, or no placeholder → the label never moves up and covers the text. Put the input first, then the label, and add a placeholder.</li>
            <li>Adding <code>.was-validated</code> in the HTML from the start → every empty required field is red before the user types. Add it only on submit.</li>
            <li>Putting <code>.invalid-feedback</code> far away from its input (e.g. in another <code>div</code>) → it never shows. It must be a sibling that comes after the control. This is also true for <code>.is-invalid</code>.</li>
            <li>Using <code>.form-control</code> on a <code>&lt;select&gt;</code> → no dropdown arrow. Use <code>.form-select</code>.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Try It</h3>
          <p>In this editor's preview, the sandbox (a safe, locked-down area) blocks real form submission before the <code>submit</code> event runs. So the starter code listens for the button's <code>click</code> instead. Pressing <kbd>Enter</kbd> in a field also "clicks" it. On a real website, use the <code>submit</code> listener shown above.</p>
          <ol class="lc-list">
            <li>Run the starter code and click "Register" with everything empty. Red borders and messages appear. The result line says "Fix the red fields".</li>
            <li>Enter a name of 3+ letters and a valid email. Pick an event and tick the rules box. Click again. Every field turns green and the result says "registered".</li>
            <li>Type <code>7</code> in Team size. It turns red because of <code>max="4"</code>.</li>
            <li>Change the email input to <code>form-control form-control-lg</code> and see the bigger box.</li>
          </ol>
        </div>

        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Browser validation only makes the form nicer to use. Anyone can turn off JavaScript or send a request directly. So your server must always check the data again.
        </div>
      HTML
      starter_code: <<~'HTML'
        <!DOCTYPE html>
        <html lang="en">
        <head>
          <meta charset="UTF-8">
          <meta name="viewport" content="width=device-width, initial-scale=1.0">
          <title>Forms</title>
          <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet">
        </head>
        <body class="p-4">
          <h2 class="h5 mb-3">TechFest 2026 Registration</h2>
          <form id="regForm" class="row g-3" novalidate>
            <div class="col-md-6"> <!-- 1. label + input + feedback -->
              <label for="name" class="form-label">Full name</label>
              <input type="text" class="form-control" id="name" name="name" minlength="3" required>
              <div class="invalid-feedback">Please enter at least 3 letters.</div>
            </div>
            <div class="col-md-6"> <!-- 2. floating label: input first, placeholder required -->
              <div class="form-floating">
                <input type="email" class="form-control" id="email" name="email" placeholder="you@college.edu" required>
                <label for="email">College email</label>
                <div class="invalid-feedback">Enter a valid email address.</div>
              </div></div>
            <div class="col-md-6"> <!-- 3. select -->
              <label for="event" class="form-label">Event</label>
              <select class="form-select" id="event" name="event" required>
                <option value="" selected>Choose...</option><option>Hackathon (₹200)</option><option>Robo Race (₹150)</option>
              </select>
              <div class="invalid-feedback">Pick an event.</div>
            </div>
            <div class="col-md-6"> <!-- 4. input group (label as addon) + help text -->
              <div class="input-group has-validation">
                <label class="input-group-text" for="team">Team size</label>
                <input type="number" class="form-control" id="team" name="team" min="1" max="4" value="2" required aria-describedby="teamHelp">
                <span class="input-group-text">members</span>
                <div class="invalid-feedback">Teams have 1 to 4 members.</div>
              </div>
              <div id="teamHelp" class="form-text">Maximum 4 per team.</div>
            </div>
            <div class="col-12"><div class="form-check form-switch"> <!-- 5. switch + required checkbox -->
                <input class="form-check-input" type="checkbox" role="switch" id="hostel" name="hostel">
                <label class="form-check-label" for="hostel">Need hostel stay</label>
              </div><div class="form-check">
                <input class="form-check-input" type="checkbox" id="rules" name="rules" required>
                <label class="form-check-label" for="rules">I accept the fest rules</label>
                <div class="invalid-feedback">You must accept the rules.</div>
              </div></div>
            <div class="col-12"><button class="btn btn-primary" type="submit" id="submitBtn">Register</button></div>
          </form>
          <p id="result" class="mt-3 fw-semibold"></p>
          <script>
            const form = document.getElementById('regForm');
            document.getElementById('submitBtn').addEventListener('click', event => {
              event.preventDefault();              // preview sandbox blocks submit, so validate on click
              form.classList.add('was-validated'); // show Bootstrap's red/green styles
              document.getElementById('result').textContent = form.checkValidity() ? '✅ All fields valid. Registered!' : '❌ Fix the red fields.';
            });
          </script>
        </body>
        </html>
      HTML
    },
    13 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-bootstrap">Bootstrap</div>
          <h1 class="lc-title">Tables</h1>
        </div>
        <p class="lc-lead">A plain HTML table has no padding and no lines, so the numbers run together. Add one class, <code>.table</code>. Bootstrap then gives the table padding, lines between rows and full width. Extra modifier classes (classes that change the base style) add stripes, hover highlights, borders, colours and sideways scrolling on phones. You still write normal, accessible table HTML: <code>&lt;caption&gt;</code>, <code>&lt;thead&gt;</code>, <code>&lt;th scope&gt;</code>. Bootstrap only styles it.</p>

        <div class="lc-card">
          <h3>The Base Table</h3>
          <div class="lc-code">&lt;table class="table"&gt;<br>  &lt;caption&gt;College Cricket League 2026 (top 3)&lt;/caption&gt;<br>  &lt;thead&gt;<br>    &lt;tr&gt;&lt;th scope="col"&gt;#&lt;/th&gt;&lt;th scope="col"&gt;Team&lt;/th&gt;&lt;th scope="col"&gt;Played&lt;/th&gt;&lt;th scope="col"&gt;Points&lt;/th&gt;&lt;/tr&gt;<br>  &lt;/thead&gt;<br>  &lt;tbody&gt;<br>    &lt;tr&gt;&lt;th scope="row"&gt;1&lt;/th&gt;&lt;td&gt;CSE Strikers&lt;/td&gt;&lt;td&gt;14&lt;/td&gt;&lt;td&gt;20&lt;/td&gt;&lt;/tr&gt;<br>    &lt;tr&gt;&lt;th scope="row"&gt;2&lt;/th&gt;&lt;td&gt;Mech Titans&lt;/td&gt;&lt;td&gt;14&lt;/td&gt;&lt;td&gt;18&lt;/td&gt;&lt;/tr&gt;<br>    &lt;tr&gt;&lt;th scope="row"&gt;3&lt;/th&gt;&lt;td&gt;ECE Chargers&lt;/td&gt;&lt;td&gt;14&lt;/td&gt;&lt;td&gt;16&lt;/td&gt;&lt;/tr&gt;<br>  &lt;/tbody&gt;<br>&lt;/table&gt;</div>
          <p><strong>What you will see:</strong> a full-width table with good padding in every cell and bold header cells. There is a thin grey line under each row and no vertical lines. The caption "College Cricket League 2026 (top 3)" shows in grey text <strong>under</strong> the table. To move it above, add <code>.caption-top</code> to the table.</p>
          <p>Every modifier below needs <code>.table</code> too. Write <code>class="table table-striped"</code>, never <code>table-striped</code> alone.</p>
        </div>

        <div class="lc-card">
          <h3>Modifier Classes (on the &lt;table&gt;)</h3>
          <table class="lc-table">
            <thead><tr><th>Class</th><th>What it does</th></tr></thead>
            <tbody>
              <tr><td><code>.table-striped</code></td><td>Zebra stripes (rows in two shades) on the rows inside <code>&lt;tbody&gt;</code></td></tr>
              <tr><td><code>.table-striped-columns</code></td><td>Zebra stripes on columns instead of rows</td></tr>
              <tr><td><code>.table-hover</code></td><td>Highlights the <code>&lt;tbody&gt;</code> row under the mouse</td></tr>
              <tr><td><code>.table-bordered</code></td><td>Borders on all sides of the table and every cell. Change the colour with <code>.border-primary</code> etc.</td></tr>
              <tr><td><code>.table-borderless</code></td><td>Removes all borders</td></tr>
              <tr><td><code>.table-sm</code></td><td>Compact: cell padding is cut in half (0.25rem)</td></tr>
              <tr><td><code>.align-middle</code></td><td>Centres cell content from top to bottom (good with buttons or avatars in cells)</td></tr>
              <tr><td><code>.caption-top</code></td><td>Puts the <code>&lt;caption&gt;</code> above the table</td></tr>
            </tbody>
          </table>
        </div>

        <div class="lc-card">
          <h3>Colours, Active Rows and Group Dividers</h3>
          <ul class="lc-list">
            <li><strong>Variants</strong> (colour versions): <code>.table-primary</code>, <code>-secondary</code>, <code>-success</code>, <code>-danger</code>, <code>-warning</code>, <code>-info</code>, <code>-light</code>, <code>-dark</code>. They work on the whole <code>&lt;table&gt;</code>, a <code>&lt;tr&gt;</code> or a single <code>&lt;td&gt;</code>. Example: <code>&lt;tr class="table-success"&gt;</code> for a team that qualified.</li>
            <li><strong>Header colour:</strong> <code>&lt;thead class="table-dark"&gt;</code> (dark header) or <code>&lt;thead class="table-light"&gt;</code> (light grey header).</li>
            <li><strong><code>.table-active</code></strong> on a row or cell highlights it, like a hover that never goes away. Use it for "your team" or the selected row.</li>
            <li><strong><code>.table-group-divider</code></strong> on a <code>&lt;tbody&gt;</code> or <code>&lt;tfoot&gt;</code> draws a thicker line above it. This separates the header from the data.</li>
          </ul>
          <div class="lc-code">&lt;table class="table table-striped table-hover align-middle"&gt;<br>  &lt;thead class="table-dark"&gt; ... &lt;/thead&gt;<br>  &lt;tbody class="table-group-divider"&gt;<br>    &lt;tr class="table-success"&gt; ...CSE Strikers (qualified)... &lt;/tr&gt;<br>    &lt;tr class="table-active"&gt; ...Mech Titans (your team)... &lt;/tr&gt;<br>    &lt;tr&gt; ...ECE Chargers... &lt;/tr&gt;<br>  &lt;/tbody&gt;<br>&lt;/table&gt;</div>
          <p><strong>What you will see:</strong> a black header row with white text, then a thick line, then the data rows. The CSE Strikers row is light green. The Mech Titans row is grey (active). When you move the mouse over any row, it gets a little darker.</p>
        </div>

        <div class="lc-card">
          <h3>Responsive Tables</h3>
          <p>Wide tables break the layout on phones. Put the table inside a <code>&lt;div&gt;</code> with a responsive class. The <strong>wrapper</strong> div scrolls sideways, but the page does not.</p>
          <div class="lc-code">&lt;div class="table-responsive"&gt;<br>  &lt;table class="table"&gt; ...8 columns... &lt;/table&gt;<br>&lt;/div&gt;</div>
          <table class="lc-table">
            <thead><tr><th>Wrapper class</th><th>Scrolls horizontally when the screen is...</th></tr></thead>
            <tbody>
              <tr><td><code>.table-responsive</code></td><td>any width (whenever the table is too wide)</td></tr>
              <tr><td><code>.table-responsive-sm</code></td><td>below 576px</td></tr>
              <tr><td><code>.table-responsive-md</code></td><td>below 768px</td></tr>
              <tr><td><code>.table-responsive-lg</code></td><td>below 992px</td></tr>
              <tr><td><code>.table-responsive-xl</code> / <code>-xxl</code></td><td>below 1200px / 1400px</td></tr>
            </tbody>
          </table>
        </div>

        <div class="lc-card">
          <h3>Accessibility</h3>
          <ul class="lc-list">
            <li>A <code>&lt;caption&gt;</code> gives the table a name for screen-reader users (people who use a tool that reads the page aloud). It works like a heading for the table.</li>
            <li>Use <code>&lt;th scope="col"&gt;</code> for column headers and <code>&lt;th scope="row"&gt;</code> for the first cell of a row. Then each number is read with its header ("Points, 20").</li>
            <li>Screen-reader users cannot see colour. If a green row means "qualified", also write "Q" or "(qualified)" in the text. Or add <code>&lt;span class="visually-hidden"&gt;qualified&lt;/span&gt;</code>.</li>
            <li>Use tables only for data, never for page layout. Use the grid for layout.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li><code>&lt;table class="table-striped"&gt;</code> without <code>.table</code> → no padding and no stripes. Always include the base <code>table</code> class.</li>
            <li>Putting <code>.table-responsive</code> on the <code>&lt;table&gt;</code> → nothing scrolls and the page overflows on phones. Put it on a wrapping <code>&lt;div&gt;</code>.</li>
            <li>Header cells written as <code>&lt;td&gt;</code> with bold text → screen readers do not know they are headers. Use <code>&lt;th scope="col"&gt;</code>.</li>
            <li>Expecting <code>.table-striped</code> to add stripes to the <code>&lt;thead&gt;</code> → it only adds stripes to <code>&lt;tbody&gt;</code> rows. Colour the header with <code>table-dark</code>/<code>table-light</code>.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>Run the starter code. Move the mouse over the rows of table 1 and see the highlight from <code>table-hover</code>.</li>
            <li>Replace <code>table-striped</code> with <code>table-striped-columns</code>. The stripes now run down the columns.</li>
            <li>Add <code>table-bordered border-primary</code> to table 2. You will see blue lines around every cell.</li>
            <li>Make the preview narrow. Table 3 (inside <code>.table-responsive</code>) scrolls sideways by itself. The rest of the page does not move.</li>
          </ol>
        </div>

        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> For number columns, add <code>.text-end</code> to the <code>&lt;th&gt;</code> and <code>&lt;td&gt;</code> cells. Then the digits line up on the right. This makes "₹1,250" and "₹80" much easier to compare.
        </div>
      HTML
      starter_code: <<~'HTML'
        <!DOCTYPE html>
        <html lang="en">
        <head>
          <meta charset="UTF-8">
          <meta name="viewport" content="width=device-width, initial-scale=1.0">
          <title>Tables</title>
          <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet">
        </head>
        <body class="p-4">
          <h2 class="h5">1. Striped + hover + dark header + group divider</h2>
          <table class="table table-striped table-hover align-middle caption-top">
            <caption>College Cricket League 2026 (top 4)</caption>
            <thead class="table-dark">
              <tr><th scope="col">#</th><th scope="col">Team</th><th scope="col" class="text-end">Played</th><th scope="col" class="text-end">Points</th></tr>
            </thead>
            <tbody class="table-group-divider">
              <tr class="table-success"><th scope="row">1</th><td>CSE Strikers (Q)</td><td class="text-end">14</td><td class="text-end">20</td></tr>
              <tr class="table-active"><th scope="row">2</th><td>Mech Titans (your team)</td><td class="text-end">14</td><td class="text-end">18</td></tr>
              <tr><th scope="row">3</th><td>ECE Chargers</td><td class="text-end">14</td><td class="text-end">16</td></tr>
              <tr><th scope="row">4</th><td>Civil Warriors</td><td class="text-end">14</td><td class="text-end">14</td></tr>
            </tbody>
          </table>

          <h2 class="h5 mt-4">2. Small table with a light header</h2>
          <table class="table table-sm">
            <caption>Chai Point orders today</caption>
            <thead class="table-light">
              <tr><th scope="col">Item</th><th scope="col" class="text-end">Qty</th><th scope="col" class="text-end">Total</th></tr>
            </thead>
            <tbody>
              <tr><td>Masala Chai</td><td class="text-end">42</td><td class="text-end">₹1,260</td></tr>
              <tr><td>Samosa</td><td class="text-end">4</td><td class="text-end">₹80</td></tr>
              <tr class="table-warning"><td>Ginger Chai (low stock)</td><td class="text-end">9</td><td class="text-end">₹315</td></tr>
            </tbody>
          </table>

          <h2 class="h5 mt-4">3. Wide table inside .table-responsive</h2>
          <div class="table-responsive">
            <table class="table table-bordered text-nowrap">
              <thead><tr><th scope="col">Match</th><th scope="col">Venue</th><th scope="col">Date</th><th scope="col">Toss</th><th scope="col">Result</th><th scope="col">Player of the match</th></tr></thead>
              <tbody>
                <tr><td>CSE vs Mech</td><td>Main Ground</td><td>12 Feb 2026</td><td>Mech</td><td>CSE won by 6 wickets</td><td>Ananya Rao (CSE)</td></tr>
              </tbody>
            </table>
          </div>
        </body>
        </html>
      HTML
    },
    14 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-bootstrap">Bootstrap</div>
          <h1 class="lc-title">Alerts, Badges, and Progress</h1>
        </div>
        <p class="lc-lead">Apps often tell users what is happening: "Payment successful", "3 new messages", "Upload 60% done", "Loading…". Bootstrap has a small component for each case. Use <strong>alerts</strong> for messages and <strong>badges</strong> for counts and labels. Use <strong>progress bars</strong> when you know how much is done, and <strong>spinners</strong> when you do not know how long the wait is. Use <strong>placeholders</strong> for content that is still loading.</p>

        <div class="lc-card">
          <h3>Alerts</h3>
          <div class="lc-code">&lt;div class="alert alert-success" role="alert"&gt;<br>  &lt;h4 class="alert-heading"&gt;Order placed!&lt;/h4&gt;<br>  2 × Masala Chai, ₹60. &lt;a href="#" class="alert-link"&gt;Track your order&lt;/a&gt;.<br>&lt;/div&gt;<br><br>&lt;div class="alert alert-warning alert-dismissible fade show" role="alert"&gt;<br>  Your fest pass expires in 2 days.<br>  &lt;button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"&gt;&lt;/button&gt;<br>&lt;/div&gt;</div>
          <p><strong>What you will see:</strong> a light-green box with dark-green text, a heading "Order placed!" and a bold link. Below it is a light-yellow box with a ✕ in its top-right corner. When you click ✕, the yellow box fades out and is removed from the page.</p>
          <ul class="lc-list">
            <li>Colours: <code>alert-primary</code>, <code>-secondary</code>, <code>-success</code>, <code>-danger</code>, <code>-warning</code>, <code>-info</code>, <code>-light</code>, <code>-dark</code>.</li>
            <li><code>.alert-link</code> gives links inside an alert a bold colour that matches the alert. <code>.alert-heading</code> keeps a heading in the alert's colour.</li>
            <li>Dismissible (can be closed) = <code>.alert-dismissible</code> (makes room for the ✕) + <code>.fade .show</code> (fade-out animation) + a <code>.btn-close</code> with <code>data-bs-dismiss="alert"</code>. This needs the Bootstrap JS bundle.</li>
            <li>Add an icon to make the meaning clearer: <code>&lt;i class="bi bi-check-circle-fill me-2" aria-hidden="true"&gt;&lt;/i&gt;</code> with Bootstrap Icons, inside a <code>d-flex align-items-center</code> alert.</li>
            <li><code>role="alert"</code> makes screen readers read the message out as soon as it appears. Use it for important messages, mainly ones you add with JavaScript.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Badges</h3>
          <div class="lc-code">&lt;h5&gt;Hackathon &lt;span class="badge text-bg-secondary"&gt;New&lt;/span&gt;&lt;/h5&gt;<br>&lt;span class="badge rounded-pill text-bg-success"&gt;Paid&lt;/span&gt;<br><br>&lt;button type="button" class="btn btn-primary position-relative"&gt;<br>  Inbox<br>  &lt;span class="position-absolute top-0 start-100 translate-middle badge rounded-pill bg-danger"&gt;<br>    3 &lt;span class="visually-hidden"&gt;unread messages&lt;/span&gt;<br>  &lt;/span&gt;<br>&lt;/button&gt;</div>
          <p><strong>What you will see:</strong> a small grey "New" label next to the heading. Badges grow or shrink with the parent's font size. There is also a green pill "Paid", and a blue "Inbox" button with a red round "3" on its top-right corner. A screen reader says "Inbox 3 unread messages".</p>
          <ul class="lc-list">
            <li>Badges are plain inline labels, not buttons. If a badge must be clickable, put it inside a real <code>&lt;button&gt;</code> or <code>&lt;a&gt;</code>.</li>
            <li>Use <code>text-bg-*</code> (5.3). It sets the background <em>and</em> a text colour that is easy to read, in one class.</li>
            <li>Put <code>position-relative</code> on the button and <code>position-absolute top-0 start-100 translate-middle</code> on the badge. This puts the centre of the badge exactly on the corner.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Progress Bars (5.3 markup)</h3>
          <p>Since v5.3.0, the <strong>outer</strong> <code>.progress</code> element has <code>role="progressbar"</code> and the <code>aria-*</code> values. The inner <code>.progress-bar</code> only shows the fill, using a <code>width</code>. (The older markup, with the role on <code>.progress-bar</code>, is deprecated but still works until v6.)</p>
          <div class="lc-code">&lt;div class="progress" role="progressbar" aria-label="Upload"<br>     aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"&gt;<br>  &lt;div class="progress-bar" style="width: 60%"&gt;60%&lt;/div&gt;<br>&lt;/div&gt;<br><br>&lt;div class="progress" role="progressbar" aria-label="Fest fund" aria-valuenow="75"<br>     aria-valuemin="0" aria-valuemax="100" style="height: 20px"&gt;<br>  &lt;div class="progress-bar progress-bar-striped progress-bar-animated bg-success" style="width: 75%"&gt;&lt;/div&gt;<br>&lt;/div&gt;</div>
          <p><strong>What you will see:</strong> a grey track 1rem tall. A blue fill covers 60% of it, with the white text "60%" inside the fill. Below it is a taller (20px) track with a green fill over 75% of the width. The fill has diagonal stripes that move. If the user has "reduce motion" turned on, Bootstrap stops the animation.</p>
          <p><strong>Several parts in one bar:</strong> wrap several <code>.progress</code> elements in <code>.progress-stacked</code>. Here the width goes on each <code>.progress</code>, not on the <code>.progress-bar</code>:</p>
          <div class="lc-code">&lt;div class="progress-stacked"&gt;<br>  &lt;div class="progress" role="progressbar" aria-label="Tickets" aria-valuenow="40"<br>       aria-valuemin="0" aria-valuemax="100" style="width: 40%"&gt;<br>    &lt;div class="progress-bar"&gt;&lt;/div&gt;<br>  &lt;/div&gt;<br>  &lt;div class="progress" role="progressbar" aria-label="Sponsors" aria-valuenow="25"<br>       aria-valuemin="0" aria-valuemax="100" style="width: 25%"&gt;<br>    &lt;div class="progress-bar bg-warning"&gt;&lt;/div&gt;<br>  &lt;/div&gt;<br>&lt;/div&gt;</div>
          <p>Remember: set the height on <code>.progress</code>. When you change the progress with JavaScript, update both the bar's <code>style.width</code> and the wrapper's <code>aria-valuenow</code>.</p>
        </div>

        <div class="lc-card">
          <h3>Spinners and Placeholders</h3>
          <div class="lc-code">&lt;div class="spinner-border text-primary" role="status"&gt;<br>  &lt;span class="visually-hidden"&gt;Loading...&lt;/span&gt;<br>&lt;/div&gt;<br><br>&lt;button class="btn btn-primary" type="button" disabled&gt;<br>  &lt;span class="spinner-border spinner-border-sm" aria-hidden="true"&gt;&lt;/span&gt;<br>  &lt;span role="status"&gt;Paying...&lt;/span&gt;<br>&lt;/button&gt;<br><br>&lt;p class="placeholder-glow" aria-hidden="true"&gt;<br>  &lt;span class="placeholder col-7"&gt;&lt;/span&gt; &lt;span class="placeholder col-4"&gt;&lt;/span&gt;<br>&lt;/p&gt;</div>
          <p><strong>What you will see:</strong> a spinning blue ring. Next is a faded (disabled) blue button with a small spinning ring and the text "Paying...". Last are two grey bars (about 7/12 and 4/12 of the width) that slowly pulse. They are a "skeleton" (an outline) of text that has not loaded yet.</p>
          <ul class="lc-list">
            <li><code>spinner-grow</code> is a dot that grows and fades, instead of a ring. Small sizes: <code>spinner-border-sm</code>, <code>spinner-grow-sm</code>.</li>
            <li>Placeholders: use <code>.placeholder</code> with a width (<code>col-*</code> or <code>w-*</code>). Animate them with <code>.placeholder-glow</code> or <code>.placeholder-wave</code> on the parent. Hide them from screen readers with <code>aria-hidden="true"</code>.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Which One Should I Use?</h3>
          <table class="lc-table">
            <thead><tr><th>Situation</th><th>Component</th></tr></thead>
            <tbody>
              <tr><td>"Password changed" / "Card declined"</td><td>Alert (<code>alert-success</code> / <code>alert-danger</code>)</td></tr>
              <tr><td>Unread count, "New", "Paid" status</td><td>Badge</td></tr>
              <tr><td>You know how much is done (upload 60%, profile 3 of 5 steps)</td><td>Progress bar</td></tr>
              <tr><td>You do not know how long it will take</td><td>Spinner</td></tr>
              <tr><td>A card or list is loading and you know its shape</td><td>Placeholder</td></tr>
            </tbody>
          </table>
        </div>

        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Putting <code>role="progressbar"</code> and <code>aria-valuenow</code> on <code>.progress-bar</code> → that is the old, deprecated markup from before 5.3. Put them on the outer <code>.progress</code>.</li>
            <li>In a <code>.progress-stacked</code>, setting <code>width</code> on each <code>.progress-bar</code> → the parts do not get the right size. Set it on each <code>.progress</code>.</li>
            <li>A dismissible alert without the JS bundle → the ✕ does nothing. Load <code>bootstrap.bundle.min.js</code>.</li>
            <li>A notification badge that shows only "3" → screen readers say just "3". Add <code>&lt;span class="visually-hidden"&gt;unread messages&lt;/span&gt;</code>.</li>
            <li>Showing meaning with colour only (red alert = error) → also add clear words or an icon, e.g. "Error: card declined".</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>Run the starter code and close the yellow alert with ✕. It fades out and is removed.</li>
            <li>Click "Upload +20%" three times. The bar grows from 20% to 80% and the label updates. Click once more. At 100%, the bar turns green and "✅ Upload complete" replaces the spinner.</li>
            <li>In DevTools, inspect the <code>.progress</code> element after each click. Watch <code>aria-valuenow</code> change.</li>
            <li>Change the Inbox badge from <code>bg-danger</code> to <code>text-bg-warning</code> and the number from 3 to 12.</li>
          </ol>
        </div>

        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Do not show a spinner for things that take less than about a second. A quick flash of a spinner feels slower than no spinner. For longer waits, use a progress bar if you can measure progress. Users wait more patiently when they can see how much is done.
        </div>
      HTML
      starter_code: <<~'HTML'
        <!DOCTYPE html>
        <html lang="en">
        <head>
          <meta charset="UTF-8">
          <meta name="viewport" content="width=device-width, initial-scale=1.0">
          <title>Alerts, Badges, and Progress</title>
          <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet">
        </head>
        <body class="p-4">
          <h2 class="h5">1. Alerts</h2>
          <div class="alert alert-success" role="alert">
            <h4 class="alert-heading h6">Order placed!</h4>
            2 × Masala Chai, ₹60. <a href="#" class="alert-link">Track your order</a>.
          </div>
          <div class="alert alert-warning alert-dismissible fade show" role="alert">
            Your fest pass expires in 2 days.
            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
          </div>

          <h2 class="h5 mt-4">2. Badges</h2>
          <p>Hackathon <span class="badge text-bg-secondary">New</span> <span class="badge rounded-pill text-bg-success">Paid</span></p>
          <button type="button" class="btn btn-primary position-relative">
            Inbox
            <span class="position-absolute top-0 start-100 translate-middle badge rounded-pill bg-danger">3 <span class="visually-hidden">unread messages</span></span>
          </button>

          <h2 class="h5 mt-4">3. Progress (role and aria on .progress)</h2>
          <div class="progress mb-2" id="upload" role="progressbar" aria-label="Upload" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100" style="height: 20px">
            <div class="progress-bar progress-bar-striped progress-bar-animated" id="uploadBar" style="width: 20%">20%</div>
          </div>
          <button type="button" class="btn btn-outline-primary btn-sm" id="stepBtn">Upload +20%</button>
          <span id="waiting" class="ms-2"><span class="spinner-border spinner-border-sm text-primary" aria-hidden="true"></span> <span role="status">Uploading...</span></span>

          <h2 class="h5 mt-4">4. Placeholder (loading skeleton)</h2>
          <p class="placeholder-glow" aria-hidden="true"><span class="placeholder col-7"></span> <span class="placeholder col-4"></span></p>

          <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"></script>
          <script>
            let percent = 20;
            document.getElementById('stepBtn').addEventListener('click', () => {
              percent = Math.min(percent + 20, 100);
              const bar = document.getElementById('uploadBar');
              bar.style.width = percent + '%';
              bar.textContent = percent + '%';
              document.getElementById('upload').setAttribute('aria-valuenow', percent);
              if (percent === 100) {
                bar.classList.add('bg-success');
                document.getElementById('waiting').textContent = '✅ Upload complete';
              }
            });
          </script>
        </body>
        </html>
      HTML
    },
    15 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-bootstrap">Bootstrap</div>
          <h1 class="lc-title">Modals</h1>
        </div>
        <p class="lc-lead">A <strong>modal</strong> is a dialog box that appears on top of the page. It blocks the page until the user responds. Examples: "Delete this post?", a quick login form, an order confirmation. Bootstrap's modal adds the backdrop and keeps keyboard focus inside the dialog. It closes when you press <kbd>Esc</kbd>. It then moves focus back to the button that opened it. It needs <code>bootstrap.bundle.min.js</code>.</p>

        <div class="lc-card">
          <h3>Parts of a Modal</h3>
          <div class="lc-code">&lt;button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#orderModal"&gt;<br>  Order chai<br>&lt;/button&gt;<br><br>&lt;div class="modal fade" id="orderModal" tabindex="-1" aria-labelledby="orderTitle" aria-hidden="true"&gt;<br>  &lt;div class="modal-dialog"&gt;<br>    &lt;div class="modal-content"&gt;<br>      &lt;div class="modal-header"&gt;<br>        &lt;h1 class="modal-title fs-5" id="orderTitle"&gt;Confirm order&lt;/h1&gt;<br>        &lt;button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"&gt;&lt;/button&gt;<br>      &lt;/div&gt;<br>      &lt;div class="modal-body"&gt;2 × Masala Chai = ₹60&lt;/div&gt;<br>      &lt;div class="modal-footer"&gt;<br>        &lt;button type="button" class="btn btn-secondary" data-bs-dismiss="modal"&gt;Cancel&lt;/button&gt;<br>        &lt;button type="button" class="btn btn-primary"&gt;Place order&lt;/button&gt;<br>      &lt;/div&gt;<br>    &lt;/div&gt;<br>  &lt;/div&gt;<br>&lt;/div&gt;</div>
          <p><strong>What you will see:</strong> click "Order chai". A dark backdrop fades in, and a white box slides down near the top of the screen. The box is 500px wide on screens 576px and wider. It shows the title "Confirm order" with a ✕ and the text "2 × Masala Chai = ₹60". At the bottom right are a grey "Cancel" button and a blue "Place order" button. To close it, use ✕, Cancel, a click on the backdrop or <kbd>Esc</kbd>.</p>
          <table class="lc-table">
            <thead><tr><th>Part</th><th>What it does</th></tr></thead>
            <tbody>
              <tr><td><code>.modal.fade</code></td><td>The full-screen wrapper. <code>.fade</code> adds the fade/slide animation</td></tr>
              <tr><td><code>tabindex="-1"</code>, <code>aria-labelledby</code></td><td>Let focus move into the dialog, and name it after the title. When it opens, Bootstrap adds <code>role="dialog"</code> and replaces <code>aria-hidden</code> with <code>aria-modal</code></td></tr>
              <tr><td><code>.modal-dialog</code></td><td>Sets the width and position (size classes go here)</td></tr>
              <tr><td><code>.modal-content</code></td><td>The white box with border and shadow</td></tr>
              <tr><td><code>.modal-header</code> / <code>-body</code> / <code>-footer</code></td><td>Title row, main content, action buttons</td></tr>
              <tr><td><code>data-bs-dismiss="modal"</code></td><td>Any button inside with this attribute closes the modal</td></tr>
            </tbody>
          </table>
        </div>

        <div class="lc-card">
          <h3>Size and Position Classes (on .modal-dialog)</h3>
          <table class="lc-table">
            <thead><tr><th>Class</th><th>Result</th></tr></thead>
            <tbody>
              <tr><td><code>.modal-sm</code></td><td>300px max width</td></tr>
              <tr><td>(none)</td><td>500px max width</td></tr>
              <tr><td><code>.modal-lg</code></td><td>800px max width (from 992px screens)</td></tr>
              <tr><td><code>.modal-xl</code></td><td>1140px max width (from 1200px screens)</td></tr>
              <tr><td><code>.modal-fullscreen</code></td><td>Covers the whole viewport (visible screen area) at every size</td></tr>
              <tr><td><code>.modal-fullscreen-md-down</code></td><td>Full screen only below 768px (also <code>-sm-down</code>, <code>-lg-down</code>, <code>-xl-down</code>, <code>-xxl-down</code>)</td></tr>
              <tr><td><code>.modal-dialog-centered</code></td><td>Centred from top to bottom, instead of near the top</td></tr>
              <tr><td><code>.modal-dialog-scrollable</code></td><td>Long content scrolls inside <code>.modal-body</code>. Header and footer stay visible</td></tr>
            </tbody>
          </table>
          <p>Below 576px, every modal is as wide as the screen minus a small margin.</p>
        </div>

        <div class="lc-card">
          <h3>Static Backdrop: Force a Choice</h3>
          <div class="lc-code">&lt;div class="modal fade" id="cancelModal" data-bs-backdrop="static" data-bs-keyboard="false"<br>     tabindex="-1" aria-labelledby="cancelTitle" aria-hidden="true"&gt;<br>  &lt;div class="modal-dialog modal-dialog-centered"&gt; ... &lt;/div&gt;<br>&lt;/div&gt;</div>
          <p><strong>What you will see:</strong> the dialog sits in the middle of the screen. Clicking the backdrop or pressing <kbd>Esc</kbd> does <strong>not</strong> close it. Instead, the dialog does a small "bounce": it quickly grows by about 2%. This shows it wants an answer. Only its own buttons close it. Use this for important decisions, and always give a clear "Cancel" button.</p>
        </div>

        <div class="lc-card">
          <h3>JavaScript API and Events</h3>
          <div class="lc-code">const modalEl = document.getElementById('orderModal');<br>const modal = bootstrap.Modal.getOrCreateInstance(modalEl);<br>modal.show();   // also modal.hide(), modal.toggle()<br><br>// Which button opened it? (only when opened by a click)<br>modalEl.addEventListener('show.bs.modal', event =&gt; {<br>  const item = event.relatedTarget.dataset.item;   // from data-item="Ginger Chai"<br>  modalEl.querySelector('.modal-title').textContent = 'Order ' + item;<br>});<br><br>// autofocus doesn't work in modals, so focus after it is visible<br>modalEl.addEventListener('shown.bs.modal', () =&gt; {<br>  document.getElementById('qty').focus();<br>});</div>
          <table class="lc-table">
            <thead><tr><th>Event</th><th>Happens when</th></tr></thead>
            <tbody>
              <tr><td><code>show.bs.modal</code></td><td>Opening starts (<code>event.relatedTarget</code> = the clicked button). <code>event.preventDefault()</code> stops it from opening</td></tr>
              <tr><td><code>shown.bs.modal</code></td><td>Fully visible and the animation is done. This is the place to focus an input</td></tr>
              <tr><td><code>hide.bs.modal</code></td><td>Closing starts. You can prevent it</td></tr>
              <tr><td><code>hidden.bs.modal</code></td><td>Fully hidden. Reset the form here</td></tr>
              <tr><td><code>hidePrevented.bs.modal</code></td><td>User clicked a static backdrop or pressed <kbd>Esc</kbd> with <code>keyboard: false</code></td></tr>
            </tbody>
          </table>
          <p><code>show()</code> and <code>hide()</code> return <em>before</em> the animation ends. So put code that must run "after it opened" in <code>shown.bs.modal</code>, not on the next line.</p>
        </div>

        <div class="lc-card">
          <h3>Rules from the Docs</h3>
          <ul class="lc-list">
            <li><strong>One modal at a time.</strong> Bootstrap does not support nested modals (a modal inside a modal). Close the first before you open another, or change the content of one modal.</li>
            <li><strong>Place modal HTML at the top level</strong> (e.g. just before <code>&lt;/body&gt;</code>). Do not put it inside a <code>fixed-top</code> navbar or other fixed element, because modals use <code>position: fixed</code>.</li>
            <li>Keep modals short. Long forms or pages of text should go on a real page (or use <code>modal-dialog-scrollable</code>).</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Forgetting <code>.modal-dialog</code> or <code>.modal-content</code> → the modal has no white box or width. Keep all three layers: <code>.modal</code> &gt; <code>.modal-dialog</code> &gt; <code>.modal-content</code>.</li>
            <li>Putting <code>modal-lg</code> or <code>modal-dialog-centered</code> on <code>.modal</code> → no effect. They go on <code>.modal-dialog</code>.</li>
            <li>Using <code>autofocus</code> on an input inside the modal → it is ignored. Focus the input in <code>shown.bs.modal</code>.</li>
            <li>Opening a second modal from inside the first → the backdrop and focus break. Only one modal at a time.</li>
            <li>A static-backdrop modal with no close or cancel button → users are stuck. Always give them a way out.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>Run the starter code and click "Order Ginger Chai". The title says "Order Ginger Chai" and the cursor is already in the quantity box. Try the other button too.</li>
            <li>Close it with <kbd>Esc</kbd> and read the status line (set by <code>hidden.bs.modal</code>).</li>
            <li>Open "Cancel registration". Click the backdrop and press <kbd>Esc</kbd>. It does not close. Use "Keep it".</li>
            <li>Add <code>modal-dialog-centered modal-sm</code> to the order modal's <code>.modal-dialog</code> and compare.</li>
          </ol>
        </div>

        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Name buttons after the action, not "Yes/No". This dialog is itself about cancelling. So "Cancel registration" and "Keep it" are much clearer than "OK" and "Cancel".
        </div>
      HTML
      starter_code: <<~'HTML'
        <!DOCTYPE html>
        <html lang="en">
        <head>
          <meta charset="UTF-8">
          <meta name="viewport" content="width=device-width, initial-scale=1.0">
          <title>Modals</title>
          <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet">
        </head>
        <body class="p-4">
          <h2 class="h5">1. One modal, two triggers (relatedTarget)</h2>
          <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#orderModal" data-item="Masala Chai">Order Masala Chai</button>
          <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#orderModal" data-item="Ginger Chai">Order Ginger Chai</button>

          <h2 class="h5 mt-4">2. Static backdrop, centred</h2>
          <button type="button" class="btn btn-outline-danger" data-bs-toggle="modal" data-bs-target="#cancelModal">Cancel registration</button>
          <p class="mt-3 text-body-secondary" id="statusLine">Status: no modal opened yet</p>

          <div class="modal fade" id="orderModal" tabindex="-1" aria-labelledby="orderTitle" aria-hidden="true">
            <div class="modal-dialog">
              <div class="modal-content">
                <div class="modal-header">
                  <h1 class="modal-title fs-5" id="orderTitle">Order</h1>
                  <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                  <label for="qty" class="form-label">How many cups? (₹30 each)</label>
                  <input type="number" class="form-control" id="qty" min="1" value="1">
                </div>
                <div class="modal-footer">
                  <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
                  <button type="button" class="btn btn-primary" data-bs-dismiss="modal">Place order</button>
                </div>
              </div>
            </div>
          </div>

          <div class="modal fade" id="cancelModal" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="cancelTitle" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered">
              <div class="modal-content">
                <div class="modal-header"><h1 class="modal-title fs-5" id="cancelTitle">Cancel your TechFest registration?</h1></div>
                <div class="modal-body">Your ₹200 fee will not be refunded.</div>
                <div class="modal-footer">
                  <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Keep it</button>
                  <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Cancel registration</button>
                </div>
              </div>
            </div>
          </div>

          <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"></script>
          <script>
            const orderEl = document.getElementById('orderModal');
            orderEl.addEventListener('show.bs.modal', e => { orderEl.querySelector('.modal-title').textContent = 'Order ' + e.relatedTarget.dataset.item; });
            orderEl.addEventListener('shown.bs.modal', () => document.getElementById('qty').focus());
            orderEl.addEventListener('hidden.bs.modal', () => {
              document.getElementById('statusLine').textContent = 'Status: order modal closed (hidden.bs.modal fired)';
            });
          </script>
        </body>
        </html>
      HTML
    },

    16 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-bootstrap">Bootstrap</div>
          <h1 class="lc-title">Dropdowns, Collapse, and Accordion</h1>
        </div>
        <p class="lc-lead">These three components show and hide content when the user asks. A <strong>dropdown</strong> opens a small menu. <strong>Collapse</strong> shows or hides any block. An <strong>accordion</strong> is a stack of collapse panels, and it works well for FAQs. All three need <code>bootstrap.bundle.min.js</code>. They work with data attributes, so you write no JavaScript.</p>

        <div class="lc-card">
          <h3>Parts of a Dropdown</h3>
          <div class="lc-code">&lt;div class="dropdown"&gt;<br>  &lt;button class="btn btn-primary dropdown-toggle" type="button"<br>          data-bs-toggle="dropdown" aria-expanded="false"&gt;<br>    My Account<br>  &lt;/button&gt;<br>  &lt;ul class="dropdown-menu"&gt;<br>    &lt;li&gt;&lt;h6 class="dropdown-header"&gt;Signed in as Riya&lt;/h6&gt;&lt;/li&gt;<br>    &lt;li&gt;&lt;a class="dropdown-item" href="#"&gt;Profile&lt;/a&gt;&lt;/li&gt;<br>    &lt;li&gt;&lt;a class="dropdown-item active" href="#" aria-current="true"&gt;Orders&lt;/a&gt;&lt;/li&gt;<br>    &lt;li&gt;&lt;hr class="dropdown-divider"&gt;&lt;/li&gt;<br>    &lt;li&gt;&lt;a class="dropdown-item" href="#"&gt;Sign out&lt;/a&gt;&lt;/li&gt;<br>  &lt;/ul&gt;<br>&lt;/div&gt;</div>
          <p><strong>What you will see:</strong> a blue "My Account ▾" button. When you click it, a white menu opens under the button. It has a grey header, three links and a divider line. "Orders" is highlighted in blue. Click outside or press <kbd>Esc</kbd> to close it. Arrow keys move between items.</p>
          <ul class="lc-list">
            <li>The wrapper needs <code>.dropdown</code> (or <code>.btn-group</code>). The menu is placed based on this wrapper.</li>
            <li>Bootstrap updates <code>aria-expanded</code> for you. Start it at <code>"false"</code>.</li>
            <li>A library called <strong>Popper</strong> places the dropdowns on the screen. Popper is included in <code>bootstrap.bundle.min.js</code> (not in <code>bootstrap.min.js</code>).</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Dropdown Options</h3>
          <table class="lc-table">
            <thead><tr><th>Class / attribute</th><th>What it does</th></tr></thead>
            <tbody>
              <tr><td><code>.dropdown-menu-end</code> (on the menu)</td><td>Lines up the menu's right edge with the button. Useful at the right end of a navbar</td></tr>
              <tr><td><code>.dropup</code>, <code>.dropend</code>, <code>.dropstart</code> (instead of <code>.dropdown</code>)</td><td>Opens upwards, to the right, or to the left</td></tr>
              <tr><td><code>.dropdown-center</code></td><td>Centres the menu under the button</td></tr>
              <tr><td><code>.btn-group</code> + <code>.dropdown-toggle-split</code></td><td>Split button: a main action + a separate arrow button</td></tr>
              <tr><td><code>data-bs-auto-close="outside"</code></td><td>Closes only when you click outside (useful for a form inside the menu)</td></tr>
              <tr><td><code>data-bs-theme="dark"</code> on the wrapper</td><td>Dark menu (the old <code>.dropdown-menu-dark</code> is deprecated in 5.3)</td></tr>
            </tbody>
          </table>
        </div>

        <div class="lc-card">
          <h3>Collapse: Show and Hide Anything</h3>
          <div class="lc-code">&lt;button class="btn btn-outline-primary" type="button"<br>        data-bs-toggle="collapse" data-bs-target="#filters"<br>        aria-expanded="false" aria-controls="filters"&gt;<br>  Show filters<br>&lt;/button&gt;<br><br>&lt;div class="collapse" id="filters"&gt;<br>  &lt;div class="card card-body mt-2"&gt;Price, brand, rating...&lt;/div&gt;<br>&lt;/div&gt;</div>
          <ul class="lc-list">
            <li><code>.collapse</code> hides the element. Bootstrap adds <code>.show</code> when it opens. Add <code>show</code> yourself to start it open.</li>
            <li>A link can also be the trigger: <code>&lt;a href="#filters" data-bs-toggle="collapse" role="button"&gt;</code>.</li>
            <li><code>data-bs-target=".multi"</code> (a class selector) shows or hides several elements at once.</li>
            <li><code>.collapse-horizontal</code> animates the width instead of the height. Give the inner element a fixed width.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Accordion</h3>
          <div class="lc-code">&lt;div class="accordion" id="faq"&gt;<br>  &lt;div class="accordion-item"&gt;<br>    &lt;h2 class="accordion-header"&gt;<br>      &lt;button class="accordion-button" type="button" data-bs-toggle="collapse"<br>              data-bs-target="#q1" aria-expanded="true" aria-controls="q1"&gt;<br>        When is the fest?<br>      &lt;/button&gt;<br>    &lt;/h2&gt;<br>    &lt;div id="q1" class="accordion-collapse collapse show" data-bs-parent="#faq"&gt;<br>      &lt;div class="accordion-body"&gt;14–16 February.&lt;/div&gt;<br>    &lt;/div&gt;<br>  &lt;/div&gt;<br>  &lt;!-- more .accordion-item blocks: button gets .collapsed + aria-expanded="false", panel has no .show --&gt;<br>&lt;/div&gt;</div>
          <ul class="lc-list">
            <li><code>data-bs-parent="#faq"</code> goes on each <strong>panel</strong> (<code>.accordion-collapse</code>), not on the button. When you open one panel, it closes the others.</li>
            <li>Leave out <code>data-bs-parent</code> for an "always open" accordion. Then many panels can be open at once.</li>
            <li>Closed items need <code>.collapsed</code> on the button, so the arrow points down.</li>
            <li><code>.accordion-flush</code> removes the outer borders and rounded corners (for use inside cards).</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Which One Do I Need?</h3>
          <table class="lc-table">
            <thead><tr><th>Need</th><th>Use</th></tr></thead>
            <tbody>
              <tr><td>A short list of actions or links from one button</td><td>Dropdown</td></tr>
              <tr><td>Show or hide one block (filters, "read more")</td><td>Collapse</td></tr>
              <tr><td>A list of questions where only one answer shows at a time</td><td>Accordion (with <code>data-bs-parent</code>)</td></tr>
              <tr><td>A mobile navbar menu</td><td>Collapse (built into the navbar) or offcanvas</td></tr>
            </tbody>
          </table>
        </div>

        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Loading <code>bootstrap.min.js</code> without Popper → dropdowns throw an error. Use <code>bootstrap.bundle.min.js</code>.</li>
            <li>Putting <code>data-bs-parent</code> on the accordion button → panels no longer close each other. Put it on <code>.accordion-collapse</code>.</li>
            <li><code>data-bs-target="faq1"</code> without <code>#</code> → nothing happens. The value is a CSS selector.</li>
            <li>The same <code>id</code> on two panels → the button opens the wrong one. Every panel id must be unique.</li>
            <li>Forgetting <code>type="button"</code> on buttons inside a form → the click also submits the form.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>Run the starter code. Open the dropdown, then press <kbd>Esc</kbd> to close it.</li>
            <li>Add <code>dropdown-menu-end</code> to the menu. See how it lines up with the button's right edge.</li>
            <li>Open FAQ question 2. Question 1 closes. Now delete every <code>data-bs-parent</code>. Check that several panels can stay open.</li>
            <li>Click "Show filters" twice. Watch <code>aria-expanded</code> change in DevTools.</li>
          </ol>
        </div>

        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Accordions hide content. So do not put the most important information inside a closed panel. Keep answers short, and make the question text clear.
        </div>
      HTML
      starter_code: <<~'HTML'
        <!DOCTYPE html>
        <html lang="en">
        <head>
          <meta charset="UTF-8">
          <meta name="viewport" content="width=device-width, initial-scale=1.0">
          <title>Dropdowns, Collapse, and Accordion</title>
          <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet">
        </head>
        <body class="p-4">
          <h2 class="h5">1. Dropdown</h2>
          <div class="dropdown mb-4">
            <button class="btn btn-primary dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">My Account</button>
            <ul class="dropdown-menu">
              <li><h6 class="dropdown-header">Signed in as Riya</h6></li>
              <li><a class="dropdown-item" href="#">Profile</a></li>
              <li><a class="dropdown-item active" href="#" aria-current="true">Orders</a></li>
              <li><hr class="dropdown-divider"></li>
              <li><a class="dropdown-item" href="#">Sign out</a></li>
            </ul>
          </div>

          <h2 class="h5">2. Collapse</h2>
          <button class="btn btn-outline-primary" type="button" data-bs-toggle="collapse" data-bs-target="#filters" aria-expanded="false" aria-controls="filters">Show filters</button>
          <div class="collapse" id="filters">
            <div class="card card-body mt-2">Price: under ₹500 · Brand: any · Rating: 4★ and up</div>
          </div>

          <h2 class="h5 mt-4">3. Accordion (one panel open at a time)</h2>
          <div class="accordion" id="faq">
            <div class="accordion-item">
              <h3 class="accordion-header">
                <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#q1" aria-expanded="true" aria-controls="q1">When is TechFest?</button>
              </h3>
              <div id="q1" class="accordion-collapse collapse show" data-bs-parent="#faq">
                <div class="accordion-body text-body-secondary">14–16 February, main auditorium.</div>
              </div>
            </div>
            <div class="accordion-item">
              <h3 class="accordion-header">
                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#q2" aria-expanded="false" aria-controls="q2">Is entry free?</button>
              </h3>
              <div id="q2" class="accordion-collapse collapse" data-bs-parent="#faq">
                <div class="accordion-body text-body-secondary">Yes for students with a college ID; ₹200 for visitors.</div>
              </div>
            </div>
          </div>
          <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"></script>
        </body>
        </html>
      HTML
    },

    17 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-bootstrap">Bootstrap</div>
          <h1 class="lc-title">List Groups, Images, and Carousel</h1>
        </div>
        <p class="lc-lead">Here are three ways to <strong>show groups of content</strong>. List groups show lists of items or settings. Responsive image classes stop photos from breaking your layout. The <strong>carousel</strong> is a slideshow that moves through images. List groups and images need no JavaScript. The carousel needs the bundle.</p>

        <div class="lc-card">
          <h3>List Groups</h3>
          <div class="lc-code">&lt;ul class="list-group"&gt;<br>  &lt;li class="list-group-item active" aria-current="true"&gt;Inbox&lt;/li&gt;<br>  &lt;li class="list-group-item d-flex justify-content-between align-items-center"&gt;<br>    Assignments &lt;span class="badge text-bg-primary rounded-pill"&gt;4&lt;/span&gt;<br>  &lt;/li&gt;<br>  &lt;li class="list-group-item list-group-item-success"&gt;Fee paid&lt;/li&gt;<br>  &lt;li class="list-group-item disabled" aria-disabled="true"&gt;Archived&lt;/li&gt;<br>&lt;/ul&gt;</div>
          <p><strong>What you will see:</strong> a box with a border and four rows. "Inbox" is white text on blue. "Assignments" has a blue pill badge "4" pushed to the right edge. "Fee paid" is light green, and "Archived" is greyed out.</p>
          <table class="lc-table">
            <thead><tr><th>Class</th><th>Use</th></tr></thead>
            <tbody>
              <tr><td><code>.list-group-item-action</code></td><td>On <code>&lt;a&gt;</code> or <code>&lt;button&gt;</code> items: adds hover and focus styles (a clickable list)</td></tr>
              <tr><td><code>.list-group-flush</code></td><td>Removes the outer borders and corners. Use it for lists inside cards</td></tr>
              <tr><td><code>.list-group-numbered</code></td><td>On an <code>&lt;ol&gt;</code>: adds 1, 2, 3 numbers</td></tr>
              <tr><td><code>.list-group-horizontal</code> / <code>-md</code></td><td>Puts items in a row (from a breakpoint up)</td></tr>
              <tr><td><code>.list-group-item-{color}</code></td><td>Colours with a meaning: success, danger, warning…</td></tr>
            </tbody>
          </table>
          <p>For a clickable list, use <code>&lt;div class="list-group"&gt;</code> with <code>&lt;a class="list-group-item list-group-item-action"&gt;</code> children. Do not use <code>&lt;ul&gt;</code>, because the links are the items.</p>
        </div>

        <div class="lc-card">
          <h3>Responsive Images and Figures</h3>
          <p>A 1200px-wide photo inside a 360px phone column is too wide. It makes the page scroll sideways. Bootstrap's image classes fix that.</p>
          <table class="lc-table">
            <thead><tr><th>Class</th><th>What it does</th></tr></thead>
            <tbody>
              <tr><td><code>.img-fluid</code></td><td><code>max-width: 100%; height: auto;</code>. The image shrinks to fit its column but never grows bigger than its real size. It also keeps its shape</td></tr>
              <tr><td><code>.img-thumbnail</code></td><td>Also responsive. It adds a 1px border, small padding and rounded corners (like a printed photo)</td></tr>
              <tr><td><code>.rounded</code> / <code>.rounded-circle</code></td><td>Rounded corners / a circle (use it on a square image for avatars)</td></tr>
              <tr><td><code>.figure</code>, <code>.figure-img</code>, <code>.figure-caption</code></td><td>Style a <code>&lt;figure&gt;</code>, its image and its <code>&lt;figcaption&gt;</code> (small grey caption text)</td></tr>
              <tr><td><code>.object-fit-cover</code></td><td>Crops the image to fill a fixed-size box without squashing it</td></tr>
            </tbody>
          </table>
          <div class="lc-code">&lt;figure class="figure"&gt;<br>  &lt;img src="building.jpg" class="figure-img img-fluid rounded" alt="Main college building at sunrise"&gt;<br>  &lt;figcaption class="figure-caption text-end"&gt;Main building, 2026.&lt;/figcaption&gt;<br>&lt;/figure&gt;</div>
          <p><strong>What you will see:</strong> the photo fills the column width (or its own width, if smaller) with rounded corners. A small grey caption sits under it, on the right. Resize the preview. The image gets smaller smoothly instead of going past the edge.</p>
        </div>

        <div class="lc-card">
          <h3>Carousel</h3>
          <div class="lc-code">&lt;div id="campus" class="carousel slide carousel-fade"&gt;<br>  &lt;div class="carousel-indicators"&gt;<br>    &lt;button type="button" data-bs-target="#campus" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"&gt;&lt;/button&gt;<br>    &lt;button type="button" data-bs-target="#campus" data-bs-slide-to="1" aria-label="Slide 2"&gt;&lt;/button&gt;<br>  &lt;/div&gt;<br>  &lt;div class="carousel-inner"&gt;<br>    &lt;div class="carousel-item active"&gt;<br>      &lt;img src="fest.jpg" class="d-block w-100" alt="Students dancing at the campus fest"&gt;<br>      &lt;div class="carousel-caption d-none d-md-block"&gt;&lt;h5&gt;Campus Fest&lt;/h5&gt;&lt;/div&gt;<br>    &lt;/div&gt;<br>    &lt;div class="carousel-item"&gt;...&lt;/div&gt;<br>  &lt;/div&gt;<br>  &lt;button class="carousel-control-prev" type="button" data-bs-target="#campus" data-bs-slide="prev"&gt;<br>    &lt;span class="carousel-control-prev-icon" aria-hidden="true"&gt;&lt;/span&gt;<br>    &lt;span class="visually-hidden"&gt;Previous&lt;/span&gt;<br>  &lt;/button&gt;<br>  &lt;button class="carousel-control-next" type="button" data-bs-target="#campus" data-bs-slide="next"&gt;<br>    &lt;span class="carousel-control-next-icon" aria-hidden="true"&gt;&lt;/span&gt;<br>    &lt;span class="visually-hidden"&gt;Next&lt;/span&gt;<br>  &lt;/button&gt;<br>&lt;/div&gt;</div>
          <p><strong>What you will see:</strong> one full-width image with its caption. There are small bars (indicators) at the bottom and ‹ › arrows on the left and right. Click › or a bar, and it fades to that slide (<code>carousel-fade</code>; without it, slides move sideways). Screen readers read the arrows as "Previous" and "Next" because of the <code>visually-hidden</code> text. The arrow icons themselves are hidden with <code>aria-hidden</code>.</p>
          <table class="lc-table">
            <thead><tr><th>Piece</th><th>Rule</th></tr></thead>
            <tbody>
              <tr><td><code>.carousel-item.active</code></td><td><strong>Exactly one</strong> slide must start with <code>active</code>, or nothing shows</td></tr>
              <tr><td><code>data-bs-target="#campus"</code></td><td>Arrows and indicators point to the carousel's <code>id</code></td></tr>
              <tr><td><code>d-block w-100</code> on images</td><td>Removes the small gap under images and makes every slide the same width</td></tr>
              <tr><td><code>data-bs-ride="carousel"</code></td><td>Plays automatically when the page loads (every 5s; change it with <code>data-bs-interval</code> on an item). Leave it out, as here, so users control the slides</td></tr>
            </tbody>
          </table>
          <p>Slides that play by themselves are hard to read and take attention away. For accessibility, users must be able to pause moving content. So it is better to let users move the slides. Bootstrap pauses on hover and follows <code>prefers-reduced-motion</code>. But that does not help keyboard or screen-reader users much.</p>
        </div>

        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Using <code>.active</code> without <code>aria-current</code> in a list group → only users who can see the screen know which item is current.</li>
            <li>Putting <code>&lt;a&gt;</code> tags inside <code>&lt;li class="list-group-item"&gt;</code> for a clickable list → use <code>.list-group-item-action</code> on the <code>&lt;a&gt;</code> itself.</li>
            <li>Big photos without <code>.img-fluid</code> → the page scrolls sideways on phones.</li>
            <li>No slide has <code>active</code>, or two slides have it → the carousel is blank or shows two slides, one on top of the other.</li>
            <li>Carousel arrows with only an icon and no <code>visually-hidden</code> text → screen readers just say "button".</li>
            <li>Carousel arrows do nothing → the bundle JS is missing, or <code>data-bs-target</code> does not match the <code>id</code>.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>Run the starter code. In demo 1, click › and the indicator bars. The slides fade. Delete <code>carousel-fade</code>, and they slide sideways instead.</li>
            <li>Add <code>data-bs-ride="carousel"</code> to the carousel <code>div</code> and wait 5 seconds. Now it moves by itself. Move the mouse over it to pause it.</li>
            <li>In demo 2, make the preview narrow. Both images shrink to fit. Remove <code>img-fluid</code> from the figure image and see it go past the edge.</li>
            <li>In demo 3, move the mouse over the "Settings" list. The rows highlight because of <code>list-group-item-action</code>. Add <code>list-group-flush</code> to the Notifications list and compare the borders.</li>
          </ol>
        </div>

        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Write <code>alt</code> text that says what each slide or figure <em>shows</em> ("Students dancing at the campus fest"), not "slide 1". If an image is only for decoration, use <code>alt=""</code>.
        </div>
      HTML
      starter_code: <<~'HTML'
        <!DOCTYPE html>
        <html lang="en">
        <head>
          <meta charset="UTF-8">
          <meta name="viewport" content="width=device-width, initial-scale=1.0">
          <title>List Groups, Images, and Carousel</title>
          <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet">
        </head>
        <body class="p-4">
          <h2 class="h6">1. Carousel (fade, indicators, prev/next)</h2>
          <div id="campus" class="carousel slide carousel-fade mb-4" style="max-width: 800px;">
            <div class="carousel-indicators">
              <button type="button" data-bs-target="#campus" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
              <button type="button" data-bs-target="#campus" data-bs-slide-to="1" aria-label="Slide 2"></button>
              <button type="button" data-bs-target="#campus" data-bs-slide-to="2" aria-label="Slide 3"></button>
            </div>
            <div class="carousel-inner rounded">
              <div class="carousel-item active"><img src="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='800' height='400'%3E%3Crect width='800' height='400' fill='%236f42c1'/%3E%3Ctext x='50%25' y='50%25' fill='white' font-family='sans-serif' font-size='50' text-anchor='middle' dominant-baseline='middle'%3ECampus Fest%3C/text%3E%3C/svg%3E" class="d-block w-100" alt="Purple banner reading Campus Fest"></div>
              <div class="carousel-item"><img src="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='800' height='400'%3E%3Crect width='800' height='400' fill='%23198754'/%3E%3Ctext x='50%25' y='50%25' fill='white' font-family='sans-serif' font-size='50' text-anchor='middle' dominant-baseline='middle'%3ELibrary%3C/text%3E%3C/svg%3E" class="d-block w-100" alt="Green banner reading Library"></div>
              <div class="carousel-item"><img src="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='800' height='400'%3E%3Crect width='800' height='400' fill='%230d6efd'/%3E%3Ctext x='50%25' y='50%25' fill='white' font-family='sans-serif' font-size='50' text-anchor='middle' dominant-baseline='middle'%3ESports Day%3C/text%3E%3C/svg%3E" class="d-block w-100" alt="Blue banner reading Sports Day"></div>
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#campus" data-bs-slide="prev">
              <span class="carousel-control-prev-icon" aria-hidden="true"></span><span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#campus" data-bs-slide="next">
              <span class="carousel-control-next-icon" aria-hidden="true"></span><span class="visually-hidden">Next</span>
            </button>
          </div>
          <h2 class="h6">2. Responsive images</h2>
          <div class="row g-3 mb-4 align-items-start">
            <div class="col-6 col-md-4"><img src="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='300' height='200'%3E%3Crect width='300' height='200' fill='%23fd7e14'/%3E%3Ctext x='50%25' y='50%25' fill='white' font-family='sans-serif' font-size='25' text-anchor='middle' dominant-baseline='middle'%3ECanteen%3C/text%3E%3C/svg%3E" class="img-thumbnail" alt="Orange tile reading Canteen"></div>
            <div class="col-6 col-md-8">
              <figure class="figure">
                <img src="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='600' height='300'%3E%3Crect width='600' height='300' fill='%2320c997'/%3E%3Ctext x='50%25' y='50%25' fill='white' font-family='sans-serif' font-size='37' text-anchor='middle' dominant-baseline='middle'%3EMain Building%3C/text%3E%3C/svg%3E" class="figure-img img-fluid rounded" alt="Teal banner reading Main Building">
                <figcaption class="figure-caption text-end">Main building, 2026.</figcaption>
              </figure>
            </div>
          </div>
          <div class="row g-4">
            <div class="col-md-6">
              <h2 class="h6">3. Settings (actionable list group)</h2>
              <div class="list-group">
                <a href="#" class="list-group-item list-group-item-action active" aria-current="true">Profile</a>
                <a href="#" class="list-group-item list-group-item-action">Settings</a>
                <button type="button" class="list-group-item list-group-item-action" disabled>Delete account</button>
              </div>
            </div>
            <div class="col-md-6">
              <h2 class="h6">Notifications (badges and colours)</h2>
              <ul class="list-group">
                <li class="list-group-item d-flex justify-content-between align-items-center">Assignments <span class="badge text-bg-primary rounded-pill">4</span></li>
                <li class="list-group-item d-flex justify-content-between align-items-center">Messages <span class="badge text-bg-danger rounded-pill">12</span></li>
                <li class="list-group-item list-group-item-success">Fee paid for semester 3</li>
              </ul>
            </div>
          </div>
          <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"></script>
        </body>
        </html>
      HTML
    },

    18 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-bootstrap">Bootstrap</div>
          <h1 class="lc-title">Tooltips, Popovers, and Toasts</h1>
        </div>
        <p class="lc-lead">These components show small, extra messages. A <strong>tooltip</strong> is a label that appears on hover or focus. A <strong>popover</strong> shows a small box of content when you click. A <strong>toast</strong> is a short notification like "Added to cart". Most components work on their own, but tooltips and popovers are <strong>opt-in</strong>. This means they do nothing until you initialise (set up) them with JavaScript.</p>

        <div class="lc-card">
          <h3>Tooltips</h3>
          <div class="lc-code">&lt;button type="button" class="btn btn-secondary"<br>        data-bs-toggle="tooltip" data-bs-placement="top"<br>        data-bs-title="Saves a draft, not published"&gt;<br>  Save<br>&lt;/button&gt;<br><br>&lt;script&gt;<br>  // after bootstrap.bundle.min.js<br>  document.querySelectorAll('[data-bs-toggle="tooltip"]')<br>    .forEach(el =&gt; new bootstrap.Tooltip(el));<br>&lt;/script&gt;</div>
          <p><strong>What you will see:</strong> hover over "Save", or reach it with Tab. A small dark label appears above it: "Saves a draft, not published". Without the script, nothing happens. This is the most common reason why "tooltips don't work".</p>
          <ul class="lc-list">
            <li>Placement: <code>top</code> (default), <code>bottom</code>, <code>left</code>, <code>right</code> or <code>auto</code>. If there is no room, Popper moves it to the opposite side.</li>
            <li>Tooltips need Popper, which is inside <code>bootstrap.bundle.min.js</code>.</li>
            <li>A <strong>disabled</strong> button gets no mouse or focus events. Put it inside a wrapper: <code>&lt;span class="d-inline-block" tabindex="0" data-bs-toggle="tooltip" data-bs-title="…"&gt;&lt;button disabled&gt;…&lt;/button&gt;&lt;/span&gt;</code>.</li>
            <li>Keep tooltip text short. Never put important information only in a tooltip, because touch users cannot hover.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Popovers</h3>
          <div class="lc-code">&lt;a tabindex="0" class="btn btn-info" role="button"<br>   data-bs-toggle="popover" data-bs-trigger="focus"<br>   data-bs-title="Delivery"<br>   data-bs-content="Free delivery on orders above ₹499."&gt;Delivery info&lt;/a&gt;<br><br>&lt;script&gt;<br>  document.querySelectorAll('[data-bs-toggle="popover"]')<br>    .forEach(el =&gt; new bootstrap.Popover(el));<br>&lt;/script&gt;</div>
          <ul class="lc-list">
            <li>A popover has a title and a body (<code>data-bs-content</code>). By default, it opens and closes when you click the trigger.</li>
            <li><code>data-bs-trigger="focus"</code> makes it close when the user clicks anywhere else. For this, Bootstrap's docs suggest an <code>&lt;a&gt;</code> with <code>tabindex="0"</code> and <code>role="button"</code>. This makes it work the same in all browsers.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Toasts</h3>
          <div class="lc-code">&lt;div class="toast-container position-fixed bottom-0 end-0 p-3"&gt;<br>  &lt;div id="cartToast" class="toast" role="status" aria-live="polite" aria-atomic="true"&gt;<br>    &lt;div class="toast-header"&gt;<br>      &lt;strong class="me-auto"&gt;ShopKart&lt;/strong&gt;<br>      &lt;small&gt;just now&lt;/small&gt;<br>      &lt;button type="button" class="btn-close" data-bs-dismiss="toast" aria-label="Close"&gt;&lt;/button&gt;<br>    &lt;/div&gt;<br>    &lt;div class="toast-body"&gt;Added to cart.&lt;/div&gt;<br>  &lt;/div&gt;<br>&lt;/div&gt;<br><br>&lt;script&gt;<br>  const toast = bootstrap.Toast.getOrCreateInstance(document.getElementById('cartToast'));<br>  document.getElementById('addBtn').addEventListener('click', () =&gt; toast.show());<br>&lt;/script&gt;</div>
          <ul class="lc-list">
            <li>Toasts are hidden until you call <code>.show()</code>. They hide themselves after 5 seconds (<code>data-bs-delay="5000"</code> is the default). <code>data-bs-autohide="false"</code> keeps them open.</li>
            <li><code>.toast-container</code> with <code>position-fixed bottom-0 end-0 p-3</code> stacks toasts in the bottom-right corner.</li>
            <li>Accessibility: use <code>role="status" aria-live="polite"</code> for normal messages. Use <code>role="alert" aria-live="assertive"</code> only for urgent ones. Screen readers read toasts out without moving focus.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Compare the Three</h3>
          <table class="lc-table">
            <thead><tr><th></th><th>Tooltip</th><th>Popover</th><th>Toast</th></tr></thead>
            <tbody>
              <tr><td>Opens on</td><td>Hover / focus</td><td>Click (or focus)</td><td>Your JavaScript (<code>.show()</code>)</td></tr>
              <tr><td>Content</td><td>A few words of text</td><td>Title + short content</td><td>Header + message</td></tr>
              <tr><td>Attached to an element?</td><td>Yes</td><td>Yes</td><td>No, it floats in a corner</td></tr>
              <tr><td>Needs JS setup?</td><td>Yes (opt-in)</td><td>Yes (opt-in)</td><td>Yes, to show it</td></tr>
              <tr><td>Example</td><td>Icon button label</td><td>"What's this?" help</td><td>"Message sent"</td></tr>
            </tbody>
          </table>
        </div>

        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Adding <code>data-bs-toggle="tooltip"</code> and expecting it to work → you must create <code>new bootstrap.Tooltip(el)</code> for each element.</li>
            <li>Running the setup script <em>before</em> the Bootstrap bundle loads → <code>bootstrap is not defined</code>. Put your script after the bundle.</li>
            <li>A tooltip on a <code>disabled</code> button → put the button inside a <code>&lt;span&gt;</code> that can get focus.</li>
            <li>A toast with no <code>.toast-container</code> → it appears in the normal page flow, instead of floating in the corner.</li>
            <li>Using <code>role="alert"</code> on every toast → screen readers interrupt the user all the time. Use it only for errors.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>Run the starter code. Hover over the buttons, and then reach them with Tab, to see the tooltips (keyboard focus works too).</li>
            <li>Click "Delivery info", then click somewhere else on the page. The popover closes because of <code>data-bs-trigger="focus"</code>.</li>
            <li>Click "Add to cart" to show the toast. Add <code>data-bs-autohide="false"</code> to the toast. Check that it stays until you close it.</li>
            <li>Change one tooltip's placement to <code>bottom</code>.</li>
          </ol>
        </div>

        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Use <code>bootstrap.Toast.getOrCreateInstance(el)</code> instead of <code>new</code> when your code may run more than once. The same method exists on Tooltip, Popover, Modal… It reuses the existing instance instead of making copies.
        </div>
      HTML
      starter_code: <<~'HTML'
        <!DOCTYPE html>
        <html lang="en">
        <head>
          <meta charset="UTF-8">
          <meta name="viewport" content="width=device-width, initial-scale=1.0">
          <title>Tooltips, Popovers, and Toasts</title>
          <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet">
        </head>
        <body class="p-4">
          <h2 class="h6">1. Tooltips (hover or Tab to them)</h2>
          <button type="button" class="btn btn-secondary" data-bs-toggle="tooltip" data-bs-placement="top" data-bs-title="Saves a draft, not published">Save</button>
          <span class="d-inline-block" tabindex="0" data-bs-toggle="tooltip" data-bs-title="Fill in all fields first">
            <button type="button" class="btn btn-primary" disabled>Publish</button>
          </span>

          <h2 class="h6 mt-4">2. Popover (closes when you click elsewhere)</h2>
          <a tabindex="0" class="btn btn-info" role="button" data-bs-toggle="popover" data-bs-trigger="focus"
             data-bs-title="Delivery" data-bs-content="Free delivery on orders above ₹499.">Delivery info</a>

          <h2 class="h6 mt-4">3. Toast</h2>
          <button type="button" class="btn btn-success" id="addBtn">Add to cart</button>

          <div class="toast-container position-fixed bottom-0 end-0 p-3">
            <div id="cartToast" class="toast" role="status" aria-live="polite" aria-atomic="true">
              <div class="toast-header">
                <strong class="me-auto">ShopKart</strong>
                <small>just now</small>
                <button type="button" class="btn-close" data-bs-dismiss="toast" aria-label="Close"></button>
              </div>
              <div class="toast-body">Wireless earbuds (₹1,299) added to your cart.</div>
            </div>
          </div>

          <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"></script>
          <script>
            // Tooltips and popovers are opt-in: initialise them yourself
            document.querySelectorAll('[data-bs-toggle="tooltip"]').forEach(el => new bootstrap.Tooltip(el));
            document.querySelectorAll('[data-bs-toggle="popover"]').forEach(el => new bootstrap.Popover(el));
            // Toasts are shown from JavaScript
            const toast = bootstrap.Toast.getOrCreateInstance(document.getElementById('cartToast'));
            document.getElementById('addBtn').addEventListener('click', () => toast.show());
          </script>
        </body>
        </html>
      HTML
    },

    19 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-bootstrap">Bootstrap</div>
          <h1 class="lc-title">Colour Modes and Customisation</h1>
        </div>
        <p class="lc-lead">Every Bootstrap site looks like "a Bootstrap site" until you customise it. In this lesson, you add <strong>dark mode</strong> with Bootstrap 5.3's color modes. Then you change the look with <strong>CSS variables</strong> and <strong>Sass</strong> (a language that compiles to CSS). With Sass you can add new theme colours and new utilities, and make smaller files. You also learn which variables change which parts. This is where most people get stuck.</p>

        <div class="lc-card">
          <h3>Colour Modes with data-bs-theme</h3>
          <div class="lc-code">&lt;!-- whole page dark --&gt;<br>&lt;html lang="en" data-bs-theme="dark"&gt;<br><br>&lt;!-- or just one component --&gt;<br>&lt;div class="card" data-bs-theme="dark"&gt;...&lt;/div&gt;<br>&lt;nav class="navbar bg-body-tertiary" data-bs-theme="dark"&gt;...&lt;/nav&gt;</div>
          <p><strong>What you will see:</strong> put <code>data-bs-theme="dark"</code> on <code>&lt;html&gt;</code>. The page background becomes almost black (<code>#212529</code>) and the text turns light. Cards, forms, dropdowns and tables all switch to dark versions by themselves.</p>
          <ul class="lc-list">
            <li>This works because 5.3 components use CSS variables like <code>--bs-body-bg</code>, <code>--bs-body-color</code>, <code>--bs-border-color</code>. <code>[data-bs-theme=dark]</code> gives them new values.</li>
            <li>This replaces the deprecated <code>.navbar-dark</code>, <code>.btn-close-white</code> and <code>.dropdown-menu-dark</code>.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>A Light / Dark / Auto Toggle</h3>
          <div class="lc-code">function setTheme(mode) {<br>  const theme = mode === 'auto'<br>    ? (matchMedia('(prefers-color-scheme: dark)').matches ? 'dark' : 'light')<br>    : mode;<br>  document.documentElement.setAttribute('data-bs-theme', theme);<br>}<br>setTheme('auto');   // follow the phone / laptop setting</div>
          <p>Bootstrap does not include a theme switcher. Its docs give a small script like this. Real sites also save the choice with <code>localStorage.setItem('theme', mode)</code> and read it on the next visit. (The editor's preview runs in a sandbox that blocks <code>localStorage</code>, so the starter code skips that step.)</p>
        </div>

        <div class="lc-card">
          <h3>Adaptive vs Fixed Classes</h3>
          <table class="lc-table">
            <thead><tr><th>Changes for dark mode ✓</th><th>Stays the same ✗</th></tr></thead>
            <tbody>
              <tr><td><code>bg-body</code>, <code>bg-body-secondary</code>, <code>bg-body-tertiary</code></td><td><code>bg-white</code>, <code>bg-light</code>, <code>bg-dark</code></td></tr>
              <tr><td><code>text-body</code>, <code>text-body-emphasis</code>, <code>text-body-secondary</code></td><td><code>text-dark</code>, <code>text-black</code>, <code>text-white</code></td></tr>
              <tr><td><code>bg-primary-subtle</code>, <code>text-primary-emphasis</code>, <code>border</code></td><td>Fixed colours written in your own CSS</td></tr>
            </tbody>
          </table>
          <p>If a section stays white in dark mode, look for <code>bg-white</code> or <code>bg-light</code>. Change it to <code>bg-body</code> or <code>bg-body-tertiary</code>.</p>
        </div>

        <div class="lc-card">
          <h3>Customising with CSS Variables</h3>
          <div class="lc-code">:root {<br>  --bs-body-font-family: "Segoe UI", system-ui, sans-serif;<br>  --bs-border-radius: 0.75rem;          /* cards, inputs, buttons get rounder */<br>  --bs-link-color-rgb: 121, 82, 179;    /* links: purple */<br>  --bs-primary-rgb: 121, 82, 179;       /* .text-primary, .bg-primary, .border-primary */<br>}<br>[data-bs-theme=dark] {<br>  --bs-link-color-rgb: 183, 156, 230;   /* lighter purple: readable on a dark background */<br>}</div>
          <p>Look at the <strong>-rgb</strong> variables. Utilities like <code>.text-primary</code> are written as <code>rgba(var(--bs-primary-rgb), var(--bs-text-opacity))</code>. This lets the opacity helpers work. If you change only <code>--bs-primary</code> (the hex version), they do not change.</p>
        </div>

        <div class="lc-card">
          <h3>Why --bs-primary Doesn't Change the Colour of .btn-primary</h3>
          <p>Buttons use their <strong>own</strong> local variables. In the compiled CSS, these are fixed hex values:</p>
          <div class="lc-code">/* inside bootstrap.css */<br>.btn-primary {<br>  --bs-btn-bg: #0d6efd;<br>  --bs-btn-border-color: #0d6efd;<br>  --bs-btn-hover-bg: #0b5ed7;<br>  ...<br>}</div>
          <p>So <code>:root { --bs-primary: purple; }</code> leaves every <code>.btn-primary</code> blue. The fix is to set the button variables. Do it on a new class, so <code>.btn-primary</code> is not changed:</p>
          <div class="lc-code">.btn-brand {<br>  --bs-btn-color: #fff;<br>  --bs-btn-bg: #7952b3;<br>  --bs-btn-border-color: #7952b3;<br>  --bs-btn-hover-color: #fff;<br>  --bs-btn-hover-bg: #61428f;<br>  --bs-btn-hover-border-color: #61428f;<br>  --bs-btn-active-bg: #553a7d;<br>  --bs-btn-active-border-color: #553a7d;<br>  --bs-btn-focus-shadow-rgb: 121, 82, 179;<br>}<br>&lt;button class="btn btn-brand"&gt;Enrol now&lt;/button&gt;</div>
          <p>Other components work the same way. Cards read <code>--bs-card-*</code> and navbars read <code>--bs-navbar-*</code>, e.g. <code>.card { --bs-card-border-radius: 1rem; }</code>.</p>
        </div>

        <div class="lc-card">
          <h3>The Professional Way: Sass</h3>
          <div class="lc-code">// custom.scss (npm install bootstrap sass)<br>$primary: #7952b3;          // 1. variable overrides FIRST<br>$border-radius: .75rem;<br><br>@import "../node_modules/bootstrap/scss/bootstrap";   // 2. then the rest</div>
          <p>When you compile again, <strong>everything</strong> is rebuilt from <code>$primary</code>. This includes <code>.btn-primary</code> and its hover/active shades, <code>.text-primary</code>, <code>.bg-primary-subtle</code>, focus rings and the dark-mode values. (Bootstrap 5.3 still uses Sass <code>@import</code>. Newer Dart Sass shows deprecation warnings. The docs say you can ignore them for now.)</p>
          <table class="lc-table">
            <thead><tr><th></th><th>CSS variables</th><th>Sass variables</th></tr></thead>
            <tbody>
              <tr><td>Setup</td><td>None. Works with the CDN</td><td>Node + a Sass build step</td></tr>
              <tr><td>Can change while the page runs (e.g. dark mode)</td><td>Yes</td><td>No</td></tr>
              <tr><td>Changes the colour of buttons and all shades</td><td>Only if you set every <code>--bs-btn-*</code> value</td><td>Yes, automatically</td></tr>
              <tr><td>Best for</td><td>Small tweaks, themes, prototypes</td><td>A real brand across a whole project</td></tr>
            </tbody>
          </table>
        </div>

        <div class="lc-card">
          <h3>Sass: Add a Brand Colour, a Utility, and Import Only What You Need</h3>
          <p>The full <code>@import "bootstrap"</code> gives you every component. For a smaller CSS file, import the parts one by one. The <strong>order matters</strong>: functions → your variable overrides → variables → your map changes → maps and mixins → the parts you use → the Utilities API last.</p>
          <div class="lc-code">// custom.scss — "Option B" from the Bootstrap 5.3 docs<br>@import "../node_modules/bootstrap/scss/functions";   // 1. functions first<br><br>$primary: #7952b3;                                    // 2. variable overrides<br><br>@import "../node_modules/bootstrap/scss/variables";   // 3. required<br>@import "../node_modules/bootstrap/scss/variables-dark";<br><br>$theme-colors: map-merge($theme-colors, ("brand": #e8590c));  // 4. map changes<br><br>@import "../node_modules/bootstrap/scss/maps";        // 5. required<br>@import "../node_modules/bootstrap/scss/mixins";<br>@import "../node_modules/bootstrap/scss/root";<br><br>@import "../node_modules/bootstrap/scss/utilities";   // 6. only the parts you use<br>@import "../node_modules/bootstrap/scss/reboot";<br>@import "../node_modules/bootstrap/scss/type";<br>@import "../node_modules/bootstrap/scss/containers";<br>@import "../node_modules/bootstrap/scss/grid";<br>@import "../node_modules/bootstrap/scss/buttons";<br>@import "../node_modules/bootstrap/scss/helpers";<br><br>$utilities: map-merge($utilities, (                  // 7. extend the Utilities API<br>  "cursor": (<br>    property: cursor,<br>    class: cursor,<br>    responsive: true,<br>    values: auto pointer grab,<br>  )<br>));<br>@import "../node_modules/bootstrap/scss/utilities/api";  // 8. generates utility classes LAST</div>
          <p><strong>What you get after compiling:</strong></p>
          <table class="lc-table">
            <thead><tr><th>Change</th><th>New classes generated</th></tr></thead>
            <tbody>
              <tr><td><code>"brand"</code> merged into <code>$theme-colors</code></td><td><code>.btn-brand</code>, <code>.btn-outline-brand</code>, <code>.text-bg-brand</code> (and <code>.bg-brand</code>, <code>.text-brand</code>, <code>.border-brand</code>, <code>.link-brand</code>). They have correct hover shades, and you do not write any <code>--bs-btn-*</code> by hand</td></tr>
              <tr><td><code>"cursor"</code> merged into <code>$utilities</code></td><td><code>.cursor-auto</code>, <code>.cursor-pointer</code>, <code>.cursor-grab</code>, plus responsive ones like <code>.cursor-md-pointer</code> (because <code>responsive: true</code>)</td></tr>
            </tbody>
          </table>
          <p>Components you did not import (for example <code>modal</code>, <code>carousel</code>) are not in the CSS, so the file is smaller. The Utilities API reads the <code>$utilities</code> map only when <code>utilities/api</code> is imported. So any change to that map must come before that last line.</p>
        </div>

        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Overriding <code>--bs-primary</code> and expecting buttons to change → set <code>--bs-btn-*</code> on a custom class, or use Sass <code>$primary</code>.</li>
            <li>Setting <code>--bs-primary-rgb: #7952b3</code> → it must be three numbers: <code>121, 82, 179</code>.</li>
            <li>Loading your custom CSS <em>before</em> bootstrap.min.css → Bootstrap's rules come later, so they win. Link your file after it.</li>
            <li>Using <code>bg-white</code>/<code>bg-light</code>/<code>text-dark</code> everywhere → those areas look wrong in dark mode. Use <code>bg-body</code>, <code>bg-body-tertiary</code>, <code>text-body</code>.</li>
            <li>Putting Sass overrides after <code>@import "bootstrap"</code> → they do nothing. Overrides must come first.</li>
            <li>Merging <code>$theme-colors</code> after importing <code>maps</code>, or <code>$utilities</code> after <code>utilities/api</code> → no new classes appear. Follow the numbered order above.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>Run the starter code and click Light, Dark and Auto. Watch the page, card, form control and footer change.</li>
            <li>Look at the "Experiment" box. <code>--bs-primary-rgb</code> is purple there, so the text and badge turned purple. But the <code>.btn-primary</code> inside is still blue.</li>
            <li>Change <code>--bs-btn-bg</code> and <code>--bs-btn-border-color</code> in <code>.btn-brand</code> to <code>#198754</code>. The brand button turns green.</li>
            <li>Replace <code>bg-body-tertiary</code> on the footer with <code>bg-light</code>. See how it stays light in dark mode.</li>
          </ol>
        </div>

        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Always test both colour modes before you publish. Most dark-mode bugs come from one <code>bg-white</code> or a fixed <code>color: #333</code> in your own CSS.
        </div>
      HTML
      starter_code: <<~'HTML'
        <!DOCTYPE html>
        <html lang="en" data-bs-theme="light">
        <head>
          <meta charset="UTF-8">
          <meta name="viewport" content="width=device-width, initial-scale=1.0">
          <title>Colour Modes and Customisation</title>
          <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet">
          <style>
            /* Your CSS goes AFTER bootstrap.min.css */
            :root { --bs-border-radius: 0.75rem; --bs-link-color-rgb: 121, 82, 179; }
            .btn-brand {
              --bs-btn-color: #fff; --bs-btn-bg: #7952b3; --bs-btn-border-color: #7952b3;
              --bs-btn-hover-color: #fff; --bs-btn-hover-bg: #61428f; --bs-btn-hover-border-color: #61428f;
              --bs-btn-active-bg: #553a7d; --bs-btn-active-border-color: #553a7d;
              --bs-btn-focus-shadow-rgb: 121, 82, 179;
            }
            [data-bs-theme=dark] { --bs-link-color-rgb: 183, 156, 230; }  /* lighter link in dark mode */
            .experiment { --bs-primary-rgb: 121, 82, 179; }
          </style>
        </head>
        <body class="p-4">
          <div class="btn-group mb-3" role="group" aria-label="Colour mode">
            <button type="button" class="btn btn-outline-secondary" data-mode="light">Light</button>
            <button type="button" class="btn btn-outline-secondary" data-mode="dark">Dark</button>
            <button type="button" class="btn btn-outline-secondary" data-mode="auto">Auto</button>
          </div>
          <p>Current mode: <strong id="modeLabel">light</strong> · <a href="#">A themed link</a></p>
          <div class="card mb-3"><div class="card-body">
            <h2 class="h5 card-title">Adaptive card</h2>
            <input class="form-control mb-2" placeholder="Form controls adapt too" aria-label="Sample text field">
            <button class="btn btn-brand">Custom .btn-brand</button>
          </div></div>
          <div class="experiment border rounded p-3 mb-3">
            <p class="text-primary fw-bold mb-2">Experiment: --bs-primary-rgb is purple here</p>
            <span class="badge bg-primary">bg-primary badge</span>
            <button class="btn btn-primary btn-sm">.btn-primary stays blue</button>
          </div>
          <footer class="bg-body-tertiary p-3 rounded text-body-secondary">bg-body-tertiary footer adapts</footer>
          <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"></script>
          <script>
            function setTheme(mode) {
              const dark = window.matchMedia('(prefers-color-scheme: dark)').matches;
              const theme = mode === 'auto' ? (dark ? 'dark' : 'light') : mode;
              document.documentElement.setAttribute('data-bs-theme', theme);
              document.getElementById('modeLabel').textContent = mode + (mode === 'auto' ? ' → ' + theme : '');
            }
            document.querySelectorAll('[data-mode]').forEach(btn =>
              btn.addEventListener('click', () => setTheme(btn.dataset.mode)));
          </script>
        </body>
        </html>
      HTML
    },

    20 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-bootstrap">Bootstrap</div>
          <h1 class="lc-title">Capstone: Landing Page</h1>
        </div>
        <p class="lc-lead">Now you build a full, responsive landing page for <strong>"CodeYatra"</strong>, a coding bootcamp. You use only Bootstrap 5.3 classes and a few lines of JavaScript. The page uses the grid, utilities, a navbar with offcanvas, cards, icons, an accordion, a form with validation, and a dark-mode toggle.</p>

        <div class="lc-card">
          <h3>Page Plan</h3>
          <table class="lc-table">
            <thead><tr><th>Section</th><th>Bootstrap parts</th><th>Lesson</th></tr></thead>
            <tbody>
              <tr><td>Navbar (menu becomes an offcanvas on phones)</td><td><code>navbar navbar-expand-lg sticky-top</code> with an <code>offcanvas offcanvas-end</code> inside it</td><td>10, 11</td></tr>
              <tr><td>Hero</td><td><code>container</code>, <code>display-5</code>, <code>lead</code>, <code>btn-lg</code>, spacing utilities</td><td>3, 5, 8</td></tr>
              <tr><td>Features with icons</td><td><code>row row-cols-1 row-cols-md-3 g-4</code>, Bootstrap Icons</td><td>2, 8</td></tr>
              <tr><td>Pricing</td><td><code>card h-100</code>, <code>badge</code>, <code>list-unstyled</code>, <code>d-grid</code></td><td>9, 14</td></tr>
              <tr><td>FAQ</td><td><code>accordion</code> with <code>data-bs-parent</code></td><td>16</td></tr>
              <tr><td>Contact form</td><td><code>form-floating</code>, <code>needs-validation</code> + <code>was-validated</code></td><td>12</td></tr>
              <tr><td>Dark-mode toggle</td><td><code>data-bs-theme</code> on <code>&lt;html&gt;</code></td><td>19</td></tr>
            </tbody>
          </table>
        </div>

        <div class="lc-card">
          <h3>Navbar with an Offcanvas Menu</h3>
          <div class="lc-code">&lt;nav class="navbar navbar-expand-lg bg-body-tertiary sticky-top"&gt;<br>  &lt;div class="container"&gt;<br>    &lt;a class="navbar-brand fw-bold" href="#"&gt;CodeYatra&lt;/a&gt;<br>    &lt;button class="navbar-toggler" type="button" data-bs-toggle="offcanvas"<br>            data-bs-target="#menu" aria-controls="menu" aria-label="Open menu"&gt;<br>      &lt;span class="navbar-toggler-icon"&gt;&lt;/span&gt;<br>    &lt;/button&gt;<br>    &lt;div class="offcanvas offcanvas-end" tabindex="-1" id="menu" aria-labelledby="menuTitle"&gt;<br>      &lt;div class="offcanvas-header"&gt;<br>        &lt;h5 class="offcanvas-title" id="menuTitle"&gt;Menu&lt;/h5&gt;<br>        &lt;button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"&gt;&lt;/button&gt;<br>      &lt;/div&gt;<br>      &lt;div class="offcanvas-body flex-grow-1"&gt;<br>        &lt;ul class="navbar-nav ms-auto"&gt; ...links... &lt;/ul&gt;<br>      &lt;/div&gt;<br>    &lt;/div&gt;<br>  &lt;/div&gt;<br>&lt;/nav&gt;</div>
          <p><strong>What you will see:</strong> below 992px, only the brand and a ☰ button show. Tap it, and the menu slides in from the right. From 992px (<code>lg</code>) up, <code>navbar-expand-lg</code> turns the offcanvas into normal page content. The links sit in a row on the right. (At <code>lg</code>, Bootstrap sets the offcanvas body to <code>flex-grow: 0</code>. So we add <code>flex-grow-1</code> to let <code>ms-auto</code> push the links right.)</p>
          <p><strong>sticky-top vs fixed-top:</strong> <code>sticky-top</code> keeps its place in the page. It sticks to the top once you scroll to it, so nothing is hidden under it. <code>fixed-top</code> is taken out of the page flow and always stays at the top. So you must add top padding to <code>&lt;body&gt;</code>, or the hero goes under it.</p>
        </div>

        <div class="lc-card">
          <h3>Equal-Height Pricing Cards</h3>
          <div class="lc-code">&lt;div class="row row-cols-1 row-cols-md-3 g-4"&gt;<br>  &lt;div class="col"&gt;<br>    &lt;div class="card h-100"&gt;<br>      &lt;div class="card-body d-flex flex-column"&gt;<br>        &lt;h3 class="h5"&gt;Basic&lt;/h3&gt;<br>        &lt;p class="display-6"&gt;₹999&lt;/p&gt;<br>        &lt;ul class="list-unstyled"&gt;&lt;li&gt;Recorded lessons&lt;/li&gt;&lt;/ul&gt;<br>        &lt;div class="d-grid mt-auto"&gt;<br>          &lt;a href="#contact" class="btn btn-outline-primary"&gt;Choose&lt;/a&gt;<br>        &lt;/div&gt;<br>      &lt;/div&gt;<br>    &lt;/div&gt;<br>  &lt;/div&gt;<br>&lt;/div&gt;</div>
          <p><code>h-100</code> makes all cards in the row as tall as the tallest one. <code>mt-auto</code> pushes each button to the bottom of a <code>d-flex flex-column</code> body, so the buttons line up. <code>list-unstyled</code> removes the bullets and left padding from the feature list. The <code>d-grid</code> wrapper stretches the button to the full width of the card.</p>
        </div>

        <div class="lc-card">
          <h3>Build Steps</h3>
          <ol class="lc-list">
            <li>Boilerplate (the basic page setup): <code>lang</code>, viewport meta, Bootstrap CSS and Icons in <code>&lt;head&gt;</code>, and the bundle before <code>&lt;/body&gt;</code>.</li>
            <li>Navbar + offcanvas. Test at phone width first.</li>
            <li>Hero, then the features row with <code>row-cols-*</code>.</li>
            <li>Pricing cards with <code>h-100</code>. Highlight the middle plan with <code>border-primary</code> and a badge.</li>
            <li>FAQ accordion, and a contact form with <code>novalidate</code> + a small validation script.</li>
            <li>Dark-mode toggle. Check every section in both modes (use <code>bg-body-tertiary</code>, not <code>bg-light</code>).</li>
            <li>Keyboard test: move through the page with Tab. Open and close the menu with Enter and Esc.</li>
          </ol>
        </div>

        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Forgetting the JS bundle → the toggler, offcanvas and accordion do not respond.</li>
            <li>Putting <code>.row</code> directly inside <code>&lt;body&gt;</code> without a container → the row's negative margins make the page scroll sideways.</li>
            <li>Using <code>fixed-top</code> without body padding → the hero heading hides under the navbar.</li>
            <li>Buttons with only an icon and no text → add <code>aria-label</code> or a <code>visually-hidden</code> label.</li>
            <li>Copying ids (two <code>id="q1"</code>) when you duplicate accordion items → each panel needs its own id.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Try It: Extend the Project</h3>
          <ol class="lc-list">
            <li>Run the starter code at phone width and open the menu. Then make the preview wider than 992px.</li>
            <li>Add a fourth feature card. <code>row-cols-md-3</code> moves it to a new row automatically. Then try <code>row-cols-lg-4</code>.</li>
            <li>Submit the empty form to see red validation messages. Fill it in to see green ticks and the "Thanks!" status line.</li>
            <li>Open the second FAQ question. The first one closes, because every panel has <code>data-bs-parent="#faq"</code>. Remove that attribute from all three, and several panels can stay open.</li>
            <li>After a valid submit, show a toast instead of the "Thanks!" status text (Lesson 18).</li>
          </ol>
        </div>

        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> When the page works, open DevTools → Lighthouse. Run the Accessibility and Performance checks and fix what it reports. Then deploy (publish) the page to GitHub Pages or Netlify, and add the link to your portfolio.
        </div>
      HTML
      starter_code: <<~'HTML'
        <!DOCTYPE html>
        <html lang="en" data-bs-theme="light">
        <head>
          <meta charset="UTF-8">
          <meta name="viewport" content="width=device-width, initial-scale=1.0">
          <title>CodeYatra: Coding Bootcamp</title>
          <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet">
          <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.13.1/font/bootstrap-icons.min.css">
        </head>
        <body>
          <nav class="navbar navbar-expand-lg bg-body-tertiary sticky-top">
            <div class="container">
              <a class="navbar-brand fw-bold" href="#"><i class="bi bi-code-slash" aria-hidden="true"></i> CodeYatra</a>
              <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#menu" aria-controls="menu" aria-label="Open menu"><span class="navbar-toggler-icon"></span></button>
              <div class="offcanvas offcanvas-end" tabindex="-1" id="menu" aria-labelledby="menuTitle">
                <div class="offcanvas-header">
                  <h5 class="offcanvas-title" id="menuTitle">Menu</h5>
                  <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
                </div>
                <div class="offcanvas-body flex-grow-1 align-items-lg-center">
                  <ul class="navbar-nav ms-auto">
                    <li class="nav-item"><a class="nav-link" href="#features">Features</a></li>
                    <li class="nav-item"><a class="nav-link" href="#pricing">Pricing</a></li>
                    <li class="nav-item"><a class="nav-link" href="#faq">FAQ</a></li>
                    <li class="nav-item"><a class="nav-link" href="#contact">Contact</a></li>
                  </ul>
                  <button id="themeBtn" type="button" class="btn btn-outline-secondary ms-lg-3 mt-3 mt-lg-0" aria-label="Toggle dark mode"><i class="bi bi-moon-stars" aria-hidden="true"></i></button>
                </div>
              </div>
            </div>
          </nav>
          <header class="container py-5 text-center">
            <h1 class="display-5 fw-bold">Become a Web Developer in 16 Weeks</h1>
            <p class="lead text-body-secondary">Live classes in English and Hindi · Projects · Placement support</p>
            <a href="#pricing" class="btn btn-primary btn-lg">See plans</a>
          </header>
          <main class="container">
            <section id="features" class="row row-cols-1 row-cols-md-3 g-4 mb-5 text-center">
              <div class="col"><i class="bi bi-laptop fs-1 text-primary" aria-hidden="true"></i><h2 class="h5 mt-2">Real Projects</h2><p class="text-body-secondary">Build 6 portfolio apps.</p></div>
              <div class="col"><i class="bi bi-people fs-1 text-primary" aria-hidden="true"></i><h2 class="h5 mt-2">Mentors</h2><p class="text-body-secondary">1:1 help from engineers.</p></div>
              <div class="col"><i class="bi bi-briefcase fs-1 text-primary" aria-hidden="true"></i><h2 class="h5 mt-2">Placements</h2><p class="text-body-secondary">Mock interviews and referrals.</p></div>
            </section>
            <section id="pricing" class="row row-cols-1 row-cols-md-3 g-4 mb-5">
              <div class="col"><div class="card h-100"><div class="card-body d-flex flex-column">
                <h2 class="h5">Self-paced</h2><p class="display-6">₹4,999</p>
                <ul class="list-unstyled text-body-secondary"><li><i class="bi bi-check2 text-success" aria-hidden="true"></i> Recorded lessons</li><li><i class="bi bi-check2 text-success" aria-hidden="true"></i> Community forum</li></ul>
                <div class="d-grid mt-auto"><a href="#contact" class="btn btn-outline-primary">Choose</a></div>
              </div></div></div>
              <div class="col"><div class="card h-100 border-primary border-2"><div class="card-body d-flex flex-column">
                <h2 class="h5">Live Bootcamp <span class="badge text-bg-primary">Popular</span></h2><p class="display-6">₹24,999</p>
                <ul class="list-unstyled text-body-secondary"><li><i class="bi bi-check2 text-success" aria-hidden="true"></i> Live classes</li><li><i class="bi bi-check2 text-success" aria-hidden="true"></i> Mentor + placement help</li></ul>
                <div class="d-grid mt-auto"><a href="#contact" class="btn btn-primary">Choose</a></div>
              </div></div></div>
              <div class="col"><div class="card h-100"><div class="card-body d-flex flex-column">
                <h2 class="h5">Pro</h2><p class="display-6">₹39,999</p>
                <ul class="list-unstyled text-body-secondary"><li><i class="bi bi-check2 text-success" aria-hidden="true"></i> Everything in Live</li><li><i class="bi bi-check2 text-success" aria-hidden="true"></i> Weekly 1:1 calls</li></ul>
                <div class="d-grid mt-auto"><a href="#contact" class="btn btn-outline-primary">Choose</a></div>
              </div></div></div>
            </section>
            <section class="mb-5" aria-labelledby="faqTitle">
              <h2 id="faqTitle" class="h4">FAQ</h2>
              <div class="accordion" id="faq">
                <div class="accordion-item">
                  <h3 class="accordion-header"><button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#q1" aria-expanded="true" aria-controls="q1">Do I need a powerful laptop?</button></h3>
                  <div id="q1" class="accordion-collapse collapse show" data-bs-parent="#faq"><div class="accordion-body">No. Any laptop with 8 GB RAM and a modern browser is enough.</div></div>
                </div>
                <div class="accordion-item">
                  <h3 class="accordion-header"><button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#q2" aria-expanded="false" aria-controls="q2">Can I pay in instalments?</button></h3>
                  <div id="q2" class="accordion-collapse collapse" data-bs-parent="#faq"><div class="accordion-body">Yes. Live and Pro plans can be paid in 3 monthly parts.</div></div>
                </div>
                <div class="accordion-item">
                  <h3 class="accordion-header"><button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#q3" aria-expanded="false" aria-controls="q3">Are classes recorded?</button></h3>
                  <div id="q3" class="accordion-collapse collapse" data-bs-parent="#faq"><div class="accordion-body">Yes. Every live class is recorded and shared the same day.</div></div>
                </div>
              </div>
            </section>
            <section id="contact" class="mb-5">
              <h2 class="h4">Request a callback</h2>
              <form id="contactForm" class="row g-3 needs-validation" novalidate>
                <div class="col-md-6"><div class="form-floating"><input id="name" name="name" class="form-control" placeholder="Name" required><label for="name">Name</label><div class="invalid-feedback">Please enter your name.</div></div></div>
                <div class="col-md-6"><div class="form-floating"><input id="phone" name="phone" type="tel" class="form-control" placeholder="Phone" pattern="[0-9]{10}" required><label for="phone">Mobile (10 digits)</label><div class="invalid-feedback">Enter a 10-digit number.</div></div></div>
                <div class="col-12"><button id="callBtn" class="btn btn-primary" type="submit">Call me</button> <span id="formStatus" class="ms-2 text-success" role="status"></span></div>
              </form>
            </section>
          </main>
          <footer class="bg-body-tertiary py-3 text-center text-body-secondary">&copy; 2026 CodeYatra</footer>
          <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"></script>
          <script>
            document.getElementById('themeBtn').addEventListener('click', () => {
              const html = document.documentElement;
              html.setAttribute('data-bs-theme', html.getAttribute('data-bs-theme') === 'dark' ? 'light' : 'dark');
            });
            // The sandboxed preview blocks form submission (no submit event fires), so listen for the click.
            // On a real site use the form's 'submit' event instead.
            document.getElementById('callBtn').addEventListener('click', e => {
              e.preventDefault();                 // stay on the page
              const form = document.getElementById('contactForm');
              form.classList.add('was-validated');   // show red/green feedback
              document.getElementById('formStatus').textContent = form.checkValidity() ? 'Thanks! We will call you soon.' : '';
            });
          </script>
        </body>
        </html>
      HTML
    }
  }.freeze
end

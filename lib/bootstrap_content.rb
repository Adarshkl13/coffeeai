module BootstrapContent
  CDN = <<~'HTML'
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
  HTML

  LESSONS = {
    1 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-bootstrap">Bootstrap</div>
          <h1 class="lc-title">Introduction to Bootstrap</h1>
        </div>
        <p class="lc-lead">Bootstrap is the world's most popular CSS framework. It gives you a ready-made collection of responsive components, utility classes, and a powerful grid system — so you can build beautiful UIs in minutes instead of hours.</p>

        <div class="lc-card">
          <h3>Why Bootstrap?</h3>
          <ul class="lc-list">
            <li>Mobile-first responsive design out of the box</li>
            <li>Pre-built components: buttons, cards, modals, navbars, forms</li>
            <li>Powerful 12-column grid system</li>
            <li>Consistent cross-browser styling</li>
            <li>Huge ecosystem and community</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Adding Bootstrap via CDN</h3>
          <p>The easiest way to use Bootstrap is via CDN in your HTML <code>&lt;head&gt;</code>:</p>
          <div class="lc-code">&lt;!-- CSS (put in &lt;head&gt;) --&gt;<br>&lt;link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"&gt;<br><br>&lt;!-- JS bundle (put before &lt;/body&gt;) --&gt;<br>&lt;script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"&gt;&lt;/script&gt;</div>
        </div>

        <div class="lc-card">
          <h3>Bootstrap 5 vs Previous Versions</h3>
          <table class="lc-table">
            <thead><tr><th>Change</th><th>Bootstrap 5</th></tr></thead>
            <tbody>
              <tr><td>jQuery</td><td>Removed — pure vanilla JS</td></tr>
              <tr><td>Grid breakpoints</td><td>Added xxl (≥1400px)</td></tr>
              <tr><td>RTL support</td><td>Built-in</td></tr>
              <tr><td>Utilities</td><td>Massively expanded</td></tr>
            </tbody>
          </table>
        </div>

        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Bootstrap uses a "mobile-first" approach — styles are designed for small screens first, then enhanced for larger screens using breakpoint prefixes like <code>md:</code> and <code>lg:</code>.
        </div>
      HTML
      starter_code: <<~'HTML'
        <!DOCTYPE html>
        <html lang="en">
        <head>
          <meta charset="UTF-8">
          <meta name="viewport" content="width=device-width, initial-scale=1.0">
          <title>Hello Bootstrap</title>
          <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
        </head>
        <body>
          <!-- Bootstrap container keeps content centered with max-width -->
          <div class="container mt-5">
            <h1 class="display-4 fw-bold text-primary">Hello, Bootstrap!</h1>
            <p class="lead text-muted">Bootstrap makes building beautiful UIs fast and easy.</p>
            <hr>
            <p>This page is already using Bootstrap — notice the clean typography and spacing.</p>
            <a href="#" class="btn btn-primary me-2">Primary Button</a>
            <a href="#" class="btn btn-outline-secondary">Secondary Button</a>
          </div>
          <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
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
        <p class="lc-lead">Bootstrap's grid system uses a series of containers, rows, and columns to layout and align content. It's built with flexbox and is fully responsive across 6 breakpoints.</p>

        <div class="lc-card">
          <h3>Grid Structure</h3>
          <div class="lc-code">&lt;div class="container"&gt;<br>  &lt;div class="row"&gt;<br>    &lt;div class="col-md-6"&gt;Half width on medium+&lt;/div&gt;<br>    &lt;div class="col-md-6"&gt;Half width on medium+&lt;/div&gt;<br>  &lt;/div&gt;<br>&lt;/div&gt;</div>
        </div>

        <div class="lc-card">
          <h3>Breakpoints</h3>
          <table class="lc-table">
            <thead><tr><th>Class prefix</th><th>Breakpoint</th><th>Width</th></tr></thead>
            <tbody>
              <tr><td>col-</td><td>xs (default)</td><td>&lt;576px</td></tr>
              <tr><td>col-sm-</td><td>sm</td><td>≥576px</td></tr>
              <tr><td>col-md-</td><td>md</td><td>≥768px</td></tr>
              <tr><td>col-lg-</td><td>lg</td><td>≥992px</td></tr>
              <tr><td>col-xl-</td><td>xl</td><td>≥1200px</td></tr>
              <tr><td>col-xxl-</td><td>xxl</td><td>≥1400px</td></tr>
            </tbody>
          </table>
        </div>

        <div class="lc-card">
          <h3>Column Tips</h3>
          <ul class="lc-list">
            <li><code>col</code> — equal-width columns (auto-split)</li>
            <li><code>col-6</code> — takes 6 of 12 columns (50%)</li>
            <li><code>col-md-4</code> — 4 columns (33%) on medium+ screens</li>
            <li><code>col-auto</code> — column width = content width</li>
            <li>Columns in a row always total 12</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Alignment Utilities</h3>
          <div class="lc-code">&lt;!-- Vertical --&gt;<br>&lt;div class="row align-items-center"&gt;<br><br>&lt;!-- Horizontal --&gt;<br>&lt;div class="row justify-content-center"&gt;<br>&lt;div class="row justify-content-between"&gt;</div>
        </div>

        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Use <code>container-fluid</code> for a full-width container, or <code>container</code> for a fixed-width centered container.
        </div>
      HTML
      starter_code: <<~'HTML'
        <!DOCTYPE html>
        <html lang="en">
        <head>
          <meta charset="UTF-8">
          <meta name="viewport" content="width=device-width, initial-scale=1.0">
          <title>Bootstrap Grid</title>
          <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
          <style>
            .box { background:#6366f1; color:white; padding:20px; text-align:center; border-radius:6px; margin-bottom:10px; }
            .box-light { background:#a5b4fc; color:#1e1b4b; }
          </style>
        </head>
        <body class="bg-light p-3">
          <div class="container">
            <h2 class="mb-4">Bootstrap 12-Column Grid</h2>

            <!-- Equal columns -->
            <div class="row g-3 mb-4">
              <div class="col"><div class="box">col</div></div>
              <div class="col"><div class="box">col</div></div>
              <div class="col"><div class="box">col</div></div>
            </div>

            <!-- Specific widths -->
            <div class="row g-3 mb-4">
              <div class="col-8"><div class="box">col-8</div></div>
              <div class="col-4"><div class="box box-light">col-4</div></div>
            </div>

            <!-- Responsive: stack on mobile, side-by-side on md+ -->
            <div class="row g-3">
              <div class="col-12 col-md-4"><div class="box">col-12 col-md-4</div></div>
              <div class="col-12 col-md-4"><div class="box">col-12 col-md-4</div></div>
              <div class="col-12 col-md-4"><div class="box">col-12 col-md-4</div></div>
            </div>
          </div>
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
        <p class="lc-lead">Bootstrap provides beautiful default typography and dozens of utility classes for text size, weight, alignment, color, and transformation.</p>

        <div class="lc-card">
          <h3>Display Headings</h3>
          <p>For large hero text, use display classes:</p>
          <div class="lc-code">&lt;h1 class="display-1"&gt;Display 1&lt;/h1&gt; &lt;!-- largest --&gt;<br>&lt;h1 class="display-6"&gt;Display 6&lt;/h1&gt; &lt;!-- smallest display --&gt;</div>
        </div>

        <div class="lc-card">
          <h3>Text Utilities</h3>
          <table class="lc-table">
            <thead><tr><th>Class</th><th>Effect</th></tr></thead>
            <tbody>
              <tr><td>fw-bold</td><td>Bold text</td></tr>
              <tr><td>fw-light</td><td>Light weight</td></tr>
              <tr><td>fst-italic</td><td>Italic text</td></tr>
              <tr><td>text-decoration-underline</td><td>Underline</td></tr>
              <tr><td>text-uppercase</td><td>UPPERCASE</td></tr>
              <tr><td>text-lowercase</td><td>lowercase</td></tr>
              <tr><td>text-capitalize</td><td>Capitalize Each Word</td></tr>
              <tr><td>text-truncate</td><td>Truncate with ellipsis…</td></tr>
              <tr><td>text-center / text-end</td><td>Alignment</td></tr>
              <tr><td>lead</td><td>Larger intro paragraph</td></tr>
              <tr><td>small</td><td>Smaller text (85%)</td></tr>
              <tr><td>text-muted</td><td>Grey/subdued text</td></tr>
            </tbody>
          </table>
        </div>

        <div class="lc-card">
          <h3>Font Size Utilities</h3>
          <div class="lc-code">&lt;p class="fs-1"&gt;Largest&lt;/p&gt; &lt;!-- fs-1 to fs-6 --&gt;<br>&lt;p class="fs-6"&gt;Smallest&lt;/p&gt;</div>
        </div>

        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Combine utilities freely: <code>class="fw-bold text-primary fs-4 text-uppercase"</code>
        </div>
      HTML
      starter_code: <<~'HTML'
        <!DOCTYPE html>
        <html lang="en">
        <head>
          <meta charset="UTF-8">
          <meta name="viewport" content="width=device-width, initial-scale=1.0">
          <title>Bootstrap Typography</title>
          <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
        </head>
        <body class="p-4">
          <h1 class="display-3 fw-bold">Display Heading</h1>
          <p class="lead text-muted">A lead paragraph stands out from regular text.</p>
          <hr>

          <h2 class="fs-4 text-uppercase text-primary fw-bold mb-3">Text Utilities</h2>

          <p class="fw-bold">fw-bold — Bold text</p>
          <p class="fst-italic text-muted">fst-italic text-muted — Italic and grey</p>
          <p class="text-decoration-underline">text-decoration-underline</p>
          <p class="text-capitalize">text-capitalize makes each word start with uppercase</p>

          <div class="bg-dark text-white p-3 rounded mt-3">
            <p class="fs-5 fw-light mb-1">fs-5 fw-light — Light large text</p>
            <p class="small text-warning mb-0">small text-warning — Small yellow text</p>
          </div>

          <p class="mt-3 text-truncate" style="max-width:300px;">
            text-truncate: This very long sentence will be cut off with an ellipsis when it overflows the container.
          </p>
        </body>
        </html>
      HTML
    },

    4 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-bootstrap">Bootstrap</div>
          <h1 class="lc-title">Colors and Backgrounds</h1>
        </div>
        <p class="lc-lead">Bootstrap's color system is built around a set of semantic color names. These same names apply consistently to text, backgrounds, borders, buttons, alerts, and more.</p>

        <div class="lc-card">
          <h3>Theme Colors</h3>
          <table class="lc-table">
            <thead><tr><th>Color</th><th>Text class</th><th>Background class</th></tr></thead>
            <tbody>
              <tr><td>Primary (blue)</td><td>text-primary</td><td>bg-primary</td></tr>
              <tr><td>Secondary (grey)</td><td>text-secondary</td><td>bg-secondary</td></tr>
              <tr><td>Success (green)</td><td>text-success</td><td>bg-success</td></tr>
              <tr><td>Danger (red)</td><td>text-danger</td><td>bg-danger</td></tr>
              <tr><td>Warning (yellow)</td><td>text-warning</td><td>bg-warning</td></tr>
              <tr><td>Info (cyan)</td><td>text-info</td><td>bg-info</td></tr>
              <tr><td>Light</td><td>text-light</td><td>bg-light</td></tr>
              <tr><td>Dark</td><td>text-dark</td><td>bg-dark</td></tr>
              <tr><td>White</td><td>text-white</td><td>bg-white</td></tr>
            </tbody>
          </table>
        </div>

        <div class="lc-card">
          <h3>Subtle Backgrounds (Bootstrap 5.3+)</h3>
          <div class="lc-code">&lt;div class="bg-primary-subtle text-primary-emphasis"&gt;<br>  Subtle primary tint with emphasis text<br>&lt;/div&gt;</div>
          <p>Available for all theme colors: <code>bg-{color}-subtle</code> and <code>text-{color}-emphasis</code></p>
        </div>

        <div class="lc-card">
          <h3>Opacity Utilities</h3>
          <div class="lc-code">&lt;div class="bg-primary bg-opacity-25"&gt;25% opacity&lt;/div&gt;<br>&lt;p class="text-primary text-opacity-75"&gt;75% opacity text&lt;/p&gt;</div>
        </div>

        <div class="lc-card">
          <h3>Gradient</h3>
          <div class="lc-code">&lt;div class="bg-primary bg-gradient"&gt;Gradient background&lt;/div&gt;</div>
        </div>

        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Use semantic color names (primary, success, danger) rather than raw hex values — this makes your UI consistent and easy to retheme.
        </div>
      HTML
      starter_code: <<~'HTML'
        <!DOCTYPE html>
        <html lang="en">
        <head>
          <meta charset="UTF-8">
          <meta name="viewport" content="width=device-width, initial-scale=1.0">
          <title>Bootstrap Colors</title>
          <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
        </head>
        <body class="p-4">
          <h2 class="mb-4">Bootstrap Color System</h2>

          <!-- Background colors with text -->
          <div class="row g-2 mb-4">
            <div class="col-6 col-md-3">
              <div class="bg-primary text-white p-3 rounded text-center fw-bold">primary</div>
            </div>
            <div class="col-6 col-md-3">
              <div class="bg-success text-white p-3 rounded text-center fw-bold">success</div>
            </div>
            <div class="col-6 col-md-3">
              <div class="bg-danger text-white p-3 rounded text-center fw-bold">danger</div>
            </div>
            <div class="col-6 col-md-3">
              <div class="bg-warning text-dark p-3 rounded text-center fw-bold">warning</div>
            </div>
          </div>

          <!-- Subtle backgrounds -->
          <h5>Subtle tints (Bootstrap 5.3+)</h5>
          <div class="row g-2 mb-4">
            <div class="col-md-4">
              <div class="bg-primary-subtle text-primary-emphasis p-3 rounded">bg-primary-subtle</div>
            </div>
            <div class="col-md-4">
              <div class="bg-success-subtle text-success-emphasis p-3 rounded">bg-success-subtle</div>
            </div>
            <div class="col-md-4">
              <div class="bg-danger-subtle text-danger-emphasis p-3 rounded">bg-danger-subtle</div>
            </div>
          </div>

          <!-- Text colors -->
          <p class="text-primary fw-bold">text-primary</p>
          <p class="text-success fw-bold">text-success</p>
          <p class="text-danger fw-bold">text-danger</p>
          <p class="text-muted">text-muted (subdued grey)</p>
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
        <p class="lc-lead">Bootstrap's spacing utilities give you fine-grained control over margin and padding using a consistent scale — no writing custom CSS for basic spacing.</p>

        <div class="lc-card">
          <h3>Spacing Syntax</h3>
          <div class="lc-code">{property}{sides}-{size}</div>
          <p><strong>Property:</strong> <code>m</code> = margin, <code>p</code> = padding</p>
          <p><strong>Sides:</strong></p>
          <ul class="lc-list">
            <li><code>t</code> = top, <code>b</code> = bottom</li>
            <li><code>s</code> = start (left), <code>e</code> = end (right)</li>
            <li><code>x</code> = horizontal (left + right)</li>
            <li><code>y</code> = vertical (top + bottom)</li>
            <li>(blank) = all 4 sides</li>
          </ul>
          <p><strong>Size:</strong> 0, 1, 2, 3, 4, 5, or auto</p>
        </div>

        <div class="lc-card">
          <h3>Examples</h3>
          <table class="lc-table">
            <thead><tr><th>Class</th><th>Meaning</th></tr></thead>
            <tbody>
              <tr><td>m-3</td><td>margin on all sides, size 3 (1rem)</td></tr>
              <tr><td>mt-5</td><td>margin-top, size 5 (3rem)</td></tr>
              <tr><td>px-4</td><td>padding-left + padding-right, size 4 (1.5rem)</td></tr>
              <tr><td>py-2</td><td>padding-top + padding-bottom, size 2 (0.5rem)</td></tr>
              <tr><td>ms-auto</td><td>margin-start: auto (pushes to right)</td></tr>
              <tr><td>mx-auto</td><td>horizontal margin auto (centers a block)</td></tr>
              <tr><td>mb-0</td><td>margin-bottom: 0</td></tr>
            </tbody>
          </table>
        </div>

        <div class="lc-card">
          <h3>Responsive Spacing</h3>
          <div class="lc-code">&lt;div class="p-2 p-md-4 p-lg-5"&gt;<br>  Padding increases at each breakpoint<br>&lt;/div&gt;</div>
        </div>

        <div class="lc-card">
          <h3>Gap Utility (for flex/grid)</h3>
          <div class="lc-code">&lt;div class="d-flex gap-3"&gt;<br>  &lt;div&gt;Item 1&lt;/div&gt;<br>  &lt;div&gt;Item 2&lt;/div&gt;<br>&lt;/div&gt;</div>
        </div>

        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Bootstrap's spacing scale: 0=0, 1=0.25rem, 2=0.5rem, 3=1rem, 4=1.5rem, 5=3rem.
        </div>
      HTML
      starter_code: <<~'HTML'
        <!DOCTYPE html>
        <html lang="en">
        <head>
          <meta charset="UTF-8">
          <meta name="viewport" content="width=device-width, initial-scale=1.0">
          <title>Bootstrap Spacing</title>
          <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
        </head>
        <body class="bg-light">

          <div class="container py-5">
            <h2 class="mb-4">Spacing Utilities Demo</h2>

            <!-- Margin examples -->
            <div class="bg-primary-subtle border border-primary rounded p-3 mb-2">p-3 (1rem padding all sides)</div>
            <div class="bg-success-subtle border border-success rounded px-5 py-2 mb-2">px-5 py-2 (large horizontal, small vertical)</div>
            <div class="bg-danger-subtle border border-danger rounded p-4 mt-4 mb-0">p-4 mt-4 mb-0</div>

            <hr class="my-4">

            <!-- mx-auto centering -->
            <div class="bg-primary text-white p-3 rounded text-center mx-auto" style="width:50%">
              mx-auto — centered block
            </div>

            <hr class="my-4">

            <!-- Gap utility -->
            <h5>gap-3 with d-flex</h5>
            <div class="d-flex gap-3">
              <div class="bg-warning p-3 rounded">Item 1</div>
              <div class="bg-warning p-3 rounded">Item 2</div>
              <div class="bg-warning p-3 rounded">Item 3</div>
            </div>
          </div>

        </body>
        </html>
      HTML
    },

    6 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-bootstrap">Bootstrap</div>
          <h1 class="lc-title">Buttons</h1>
        </div>
        <p class="lc-lead">Bootstrap buttons are versatile and come in many styles, sizes, and states. They use the same semantic color system as the rest of Bootstrap.</p>

        <div class="lc-card">
          <h3>Button Variants</h3>
          <div class="lc-code">&lt;button class="btn btn-primary"&gt;Primary&lt;/button&gt;<br>&lt;button class="btn btn-outline-danger"&gt;Outline Danger&lt;/button&gt;</div>
          <p>Available: primary, secondary, success, danger, warning, info, light, dark, link</p>
        </div>

        <div class="lc-card">
          <h3>Button Sizes</h3>
          <div class="lc-code">&lt;button class="btn btn-primary btn-lg"&gt;Large&lt;/button&gt;<br>&lt;button class="btn btn-primary"&gt;Default&lt;/button&gt;<br>&lt;button class="btn btn-primary btn-sm"&gt;Small&lt;/button&gt;</div>
        </div>

        <div class="lc-card">
          <h3>Button States</h3>
          <div class="lc-code">&lt;!-- Disabled --&gt;<br>&lt;button class="btn btn-primary" disabled&gt;Disabled&lt;/button&gt;<br><br>&lt;!-- Loading state (with spinner) --&gt;<br>&lt;button class="btn btn-primary" disabled&gt;<br>  &lt;span class="spinner-border spinner-border-sm me-2"&gt;&lt;/span&gt;<br>  Loading...<br>&lt;/button&gt;</div>
        </div>

        <div class="lc-card">
          <h3>Full-Width Button</h3>
          <div class="lc-code">&lt;button class="btn btn-success w-100"&gt;Full Width&lt;/button&gt;</div>
        </div>

        <div class="lc-card">
          <h3>Button Group</h3>
          <div class="lc-code">&lt;div class="btn-group"&gt;<br>  &lt;button class="btn btn-outline-primary"&gt;Left&lt;/button&gt;<br>  &lt;button class="btn btn-outline-primary"&gt;Middle&lt;/button&gt;<br>  &lt;button class="btn btn-outline-primary"&gt;Right&lt;/button&gt;<br>&lt;/div&gt;</div>
        </div>

        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Use <code>&lt;a&gt;</code> tags with the btn class for link-styled buttons: <code>&lt;a href="#" class="btn btn-primary"&gt;</code>
        </div>
      HTML
      starter_code: <<~'HTML'
        <!DOCTYPE html>
        <html lang="en">
        <head>
          <meta charset="UTF-8">
          <meta name="viewport" content="width=device-width, initial-scale=1.0">
          <title>Bootstrap Buttons</title>
          <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
        </head>
        <body class="p-4">
          <h2 class="mb-4">Bootstrap Buttons</h2>

          <!-- Solid variants -->
          <h5 class="text-muted">Solid</h5>
          <div class="d-flex flex-wrap gap-2 mb-4">
            <button class="btn btn-primary">Primary</button>
            <button class="btn btn-secondary">Secondary</button>
            <button class="btn btn-success">Success</button>
            <button class="btn btn-danger">Danger</button>
            <button class="btn btn-warning">Warning</button>
            <button class="btn btn-info">Info</button>
            <button class="btn btn-dark">Dark</button>
          </div>

          <!-- Outline variants -->
          <h5 class="text-muted">Outline</h5>
          <div class="d-flex flex-wrap gap-2 mb-4">
            <button class="btn btn-outline-primary">Primary</button>
            <button class="btn btn-outline-success">Success</button>
            <button class="btn btn-outline-danger">Danger</button>
            <button class="btn btn-outline-warning">Warning</button>
          </div>

          <!-- Sizes -->
          <h5 class="text-muted">Sizes</h5>
          <div class="d-flex align-items-center gap-2 mb-4">
            <button class="btn btn-primary btn-lg">Large</button>
            <button class="btn btn-primary">Default</button>
            <button class="btn btn-primary btn-sm">Small</button>
          </div>

          <!-- States -->
          <h5 class="text-muted">States &amp; full-width</h5>
          <button class="btn btn-primary" disabled>Disabled</button>
          <button class="btn btn-primary w-100 mt-2">
            Full-Width Button
          </button>

          <!-- Button group -->
          <div class="btn-group mt-3">
            <button class="btn btn-outline-primary">Left</button>
            <button class="btn btn-outline-primary">Middle</button>
            <button class="btn btn-outline-primary">Right</button>
          </div>
        </body>
        </html>
      HTML
    },

    7 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-bootstrap">Bootstrap</div>
          <h1 class="lc-title">Cards</h1>
        </div>
        <p class="lc-lead">Cards are Bootstrap's flexible content containers. They support headers, footers, images, lists, and body content — perfect for product listings, blog posts, dashboards, and more.</p>

        <div class="lc-card">
          <h3>Basic Card</h3>
          <div class="lc-code">&lt;div class="card"&gt;<br>  &lt;div class="card-body"&gt;<br>    &lt;h5 class="card-title"&gt;Card Title&lt;/h5&gt;<br>    &lt;p class="card-text"&gt;Some content.&lt;/p&gt;<br>    &lt;a href="#" class="btn btn-primary"&gt;Action&lt;/a&gt;<br>  &lt;/div&gt;<br>&lt;/div&gt;</div>
        </div>

        <div class="lc-card">
          <h3>Card with Image</h3>
          <div class="lc-code">&lt;div class="card"&gt;<br>  &lt;img src="..." class="card-img-top" alt="..."&gt;<br>  &lt;div class="card-body"&gt;<br>    &lt;h5 class="card-title"&gt;Title&lt;/h5&gt;<br>    &lt;p class="card-text"&gt;Text&lt;/p&gt;<br>  &lt;/div&gt;<br>&lt;/div&gt;</div>
        </div>

        <div class="lc-card">
          <h3>Card Variants</h3>
          <ul class="lc-list">
            <li><code>card-header</code> / <code>card-footer</code> — header and footer sections</li>
            <li><code>bg-primary text-white</code> — colored card</li>
            <li><code>border-success</code> — colored border</li>
            <li><code>card-img-overlay</code> — text over image</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Card Deck (Grid of Cards)</h3>
          <div class="lc-code">&lt;div class="row row-cols-1 row-cols-md-3 g-4"&gt;<br>  &lt;div class="col"&gt;&lt;div class="card h-100"&gt;...&lt;/div&gt;&lt;/div&gt;<br>  &lt;div class="col"&gt;&lt;div class="card h-100"&gt;...&lt;/div&gt;&lt;/div&gt;<br>&lt;/div&gt;</div>
        </div>

        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Add <code>h-100</code> to cards inside a grid row to make all cards the same height regardless of content length.
        </div>
      HTML
      starter_code: <<~'HTML'
        <!DOCTYPE html>
        <html lang="en">
        <head>
          <meta charset="UTF-8">
          <meta name="viewport" content="width=device-width, initial-scale=1.0">
          <title>Bootstrap Cards</title>
          <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
        </head>
        <body class="bg-light p-4">
          <h2 class="mb-4">Bootstrap Cards</h2>

          <div class="row row-cols-1 row-cols-md-3 g-4">

            <!-- Basic card -->
            <div class="col">
              <div class="card h-100 shadow-sm">
                <div class="card-body">
                  <h5 class="card-title">📦 Basic Card</h5>
                  <p class="card-text text-muted">This is a simple card with a title, text, and action button.</p>
                  <a href="#" class="btn btn-primary btn-sm">Learn More</a>
                </div>
              </div>
            </div>

            <!-- Card with header/footer -->
            <div class="col">
              <div class="card h-100 shadow-sm">
                <div class="card-header fw-bold bg-primary text-white">Featured</div>
                <div class="card-body">
                  <h5 class="card-title">Card with Header</h5>
                  <p class="card-text">Cards can have headers and footers for extra structure.</p>
                </div>
                <div class="card-footer text-muted small">Last updated 3 mins ago</div>
              </div>
            </div>

            <!-- Colored card -->
            <div class="col">
              <div class="card h-100 bg-success text-white shadow-sm">
                <div class="card-body">
                  <h5 class="card-title">✅ Success Card</h5>
                  <p class="card-text">Cards can use any Bootstrap background color.</p>
                  <a href="#" class="btn btn-light btn-sm">Action</a>
                </div>
              </div>
            </div>

          </div>
        </body>
        </html>
      HTML
    },

    8 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-bootstrap">Bootstrap</div>
          <h1 class="lc-title">Navigation and Navbar</h1>
        </div>
        <p class="lc-lead">Bootstrap's Navbar component creates responsive navigation bars that collapse into a hamburger menu on small screens — a must-have for every website.</p>

        <div class="lc-card">
          <h3>Navbar Structure</h3>
          <div class="lc-code">&lt;nav class="navbar navbar-expand-lg bg-dark navbar-dark"&gt;<br>  &lt;div class="container"&gt;<br>    &lt;a class="navbar-brand" href="#"&gt;Logo&lt;/a&gt;<br>    &lt;button class="navbar-toggler" data-bs-toggle="collapse" data-bs-target="#nav"&gt;<br>      &lt;span class="navbar-toggler-icon"&gt;&lt;/span&gt;<br>    &lt;/button&gt;<br>    &lt;div class="collapse navbar-collapse" id="nav"&gt;<br>      &lt;ul class="navbar-nav ms-auto"&gt;<br>        &lt;li class="nav-item"&gt;&lt;a class="nav-link active" href="#"&gt;Home&lt;/a&gt;&lt;/li&gt;<br>        &lt;li class="nav-item"&gt;&lt;a class="nav-link" href="#"&gt;About&lt;/a&gt;&lt;/li&gt;<br>      &lt;/ul&gt;<br>    &lt;/div&gt;<br>  &lt;/div&gt;<br>&lt;/nav&gt;</div>
        </div>

        <div class="lc-card">
          <h3>Key Navbar Classes</h3>
          <table class="lc-table">
            <thead><tr><th>Class</th><th>Purpose</th></tr></thead>
            <tbody>
              <tr><td>navbar-expand-lg</td><td>Collapse below lg breakpoint</td></tr>
              <tr><td>navbar-dark</td><td>Light text (for dark backgrounds)</td></tr>
              <tr><td>navbar-light</td><td>Dark text (for light backgrounds)</td></tr>
              <tr><td>navbar-brand</td><td>Logo/brand link</td></tr>
              <tr><td>ms-auto</td><td>Push nav links to the right</td></tr>
              <tr><td>fixed-top</td><td>Stick navbar to top</td></tr>
              <tr><td>sticky-top</td><td>Sticky (scrolls, then sticks)</td></tr>
            </tbody>
          </table>
        </div>

        <div class="lc-card">
          <h3>Nav Pills and Tabs</h3>
          <div class="lc-code">&lt;ul class="nav nav-pills"&gt;<br>  &lt;li class="nav-item"&gt;&lt;a class="nav-link active" href="#"&gt;Home&lt;/a&gt;&lt;/li&gt;<br>&lt;/ul&gt;<br>&lt;ul class="nav nav-tabs"&gt;...&lt;/ul&gt;</div>
        </div>

        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> The <code>navbar-toggler</code> button needs <code>data-bs-toggle="collapse"</code> and <code>data-bs-target="#navId"</code> matching the collapse div's id.
        </div>
      HTML
      starter_code: <<~'HTML'
        <!DOCTYPE html>
        <html lang="en">
        <head>
          <meta charset="UTF-8">
          <meta name="viewport" content="width=device-width, initial-scale=1.0">
          <title>Bootstrap Navbar</title>
          <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
        </head>
        <body>

          <!-- Dark navbar -->
          <nav class="navbar navbar-expand-lg bg-dark navbar-dark">
            <div class="container">
              <a class="navbar-brand fw-bold" href="#">🚀 MyBrand</a>
              <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#mainNav">
                <span class="navbar-toggler-icon"></span>
              </button>
              <div class="collapse navbar-collapse" id="mainNav">
                <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                  <li class="nav-item"><a class="nav-link active" href="#">Home</a></li>
                  <li class="nav-item"><a class="nav-link" href="#">About</a></li>
                  <li class="nav-item"><a class="nav-link" href="#">Services</a></li>
                  <li class="nav-item"><a class="nav-link" href="#">Contact</a></li>
                </ul>
                <a href="#" class="btn btn-primary ms-3">Sign Up</a>
              </div>
            </div>
          </nav>

          <!-- Page content -->
          <div class="container mt-5">
            <h1>Welcome!</h1>
            <p class="text-muted">Resize the window to see the navbar collapse into a hamburger menu.</p>

            <!-- Nav pills -->
            <h5 class="mt-4">Nav Pills</h5>
            <ul class="nav nav-pills">
              <li class="nav-item"><a class="nav-link active" href="#">All</a></li>
              <li class="nav-item"><a class="nav-link" href="#">Active</a></li>
              <li class="nav-item"><a class="nav-link" href="#">Archived</a></li>
            </ul>
          </div>

          <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
        </body>
        </html>
      HTML
    },

    9 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-bootstrap">Bootstrap</div>
          <h1 class="lc-title">Forms</h1>
        </div>
        <p class="lc-lead">Bootstrap transforms plain HTML forms into polished, accessible interfaces. It styles inputs, labels, selects, checkboxes, radio buttons, and validation states beautifully.</p>

        <div class="lc-card">
          <h3>Basic Form Structure</h3>
          <div class="lc-code">&lt;div class="mb-3"&gt;<br>  &lt;label for="email" class="form-label"&gt;Email&lt;/label&gt;<br>  &lt;input type="email" class="form-control" id="email" placeholder="you@example.com"&gt;<br>  &lt;div class="form-text"&gt;We'll never share your email.&lt;/div&gt;<br>&lt;/div&gt;</div>
        </div>

        <div class="lc-card">
          <h3>Form Controls</h3>
          <table class="lc-table">
            <thead><tr><th>Class</th><th>Element</th></tr></thead>
            <tbody>
              <tr><td>form-control</td><td>input, textarea</td></tr>
              <tr><td>form-select</td><td>select dropdown</td></tr>
              <tr><td>form-check-input</td><td>checkbox, radio</td></tr>
              <tr><td>form-check-label</td><td>label for checkbox/radio</td></tr>
              <tr><td>form-range</td><td>range slider</td></tr>
            </tbody>
          </table>
        </div>

        <div class="lc-card">
          <h3>Validation States</h3>
          <div class="lc-code">&lt;input class="form-control is-valid"&gt;<br>&lt;div class="valid-feedback"&gt;Looks good!&lt;/div&gt;<br><br>&lt;input class="form-control is-invalid"&gt;<br>&lt;div class="invalid-feedback"&gt;Please enter a valid email.&lt;/div&gt;</div>
        </div>

        <div class="lc-card">
          <h3>Inline / Floating Labels</h3>
          <div class="lc-code">&lt;div class="form-floating mb-3"&gt;<br>  &lt;input type="email" class="form-control" id="floatEmail" placeholder="x"&gt;<br>  &lt;label for="floatEmail"&gt;Email address&lt;/label&gt;<br>&lt;/div&gt;</div>
        </div>

        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> For horizontal forms, use the grid system: <code>&lt;div class="row"&gt;</code> with <code>col-*</code> labels and inputs.
        </div>
      HTML
      starter_code: <<~'HTML'
        <!DOCTYPE html>
        <html lang="en">
        <head>
          <meta charset="UTF-8">
          <meta name="viewport" content="width=device-width, initial-scale=1.0">
          <title>Bootstrap Forms</title>
          <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
        </head>
        <body class="p-4">
          <div class="container" style="max-width:500px">
            <h2 class="mb-4">Sign Up</h2>
            <form>
              <!-- Text input -->
              <div class="mb-3">
                <label for="name" class="form-label">Full Name</label>
                <input type="text" class="form-control is-valid" id="name" value="Alice Smith">
                <div class="valid-feedback">Looks good!</div>
              </div>

              <!-- Email with invalid state -->
              <div class="mb-3">
                <label for="email" class="form-label">Email address</label>
                <input type="email" class="form-control is-invalid" id="email" placeholder="you@example.com">
                <div class="invalid-feedback">Please enter a valid email address.</div>
              </div>

              <!-- Select -->
              <div class="mb-3">
                <label for="role" class="form-label">Role</label>
                <select class="form-select" id="role">
                  <option>Developer</option>
                  <option>Designer</option>
                  <option>Manager</option>
                </select>
              </div>

              <!-- Floating label -->
              <div class="form-floating mb-3">
                <input type="password" class="form-control" id="pwd" placeholder="x">
                <label for="pwd">Password</label>
              </div>

              <!-- Checkbox -->
              <div class="form-check mb-3">
                <input class="form-check-input" type="checkbox" id="terms" checked>
                <label class="form-check-label" for="terms">I agree to the terms</label>
              </div>

              <button type="submit" class="btn btn-primary w-100">Create Account</button>
            </form>
          </div>
        </body>
        </html>
      HTML
    },

    10 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-bootstrap">Bootstrap</div>
          <h1 class="lc-title">Tables</h1>
        </div>
        <p class="lc-lead">Bootstrap's table classes add clean styling, striped rows, hover effects, responsive scrolling, and color variants to standard HTML tables.</p>

        <div class="lc-card">
          <h3>Basic Table</h3>
          <div class="lc-code">&lt;table class="table"&gt;<br>  &lt;thead class="table-dark"&gt;&lt;tr&gt;&lt;th&gt;Name&lt;/th&gt;&lt;th&gt;Score&lt;/th&gt;&lt;/tr&gt;&lt;/thead&gt;<br>  &lt;tbody&gt;<br>    &lt;tr&gt;&lt;td&gt;Alice&lt;/td&gt;&lt;td&gt;95&lt;/td&gt;&lt;/tr&gt;<br>  &lt;/tbody&gt;<br>&lt;/table&gt;</div>
        </div>

        <div class="lc-card">
          <h3>Table Modifiers</h3>
          <table class="lc-table">
            <thead><tr><th>Class</th><th>Effect</th></tr></thead>
            <tbody>
              <tr><td>table-striped</td><td>Alternating row shading</td></tr>
              <tr><td>table-bordered</td><td>Borders on all cells</td></tr>
              <tr><td>table-borderless</td><td>No borders</td></tr>
              <tr><td>table-hover</td><td>Highlight row on hover</td></tr>
              <tr><td>table-sm</td><td>Compact padding</td></tr>
              <tr><td>table-responsive</td><td>Horizontal scroll on small screens</td></tr>
              <tr><td>caption-top</td><td>Show &lt;caption&gt; above table</td></tr>
            </tbody>
          </table>
        </div>

        <div class="lc-card">
          <h3>Row / Cell Color Variants</h3>
          <div class="lc-code">&lt;tr class="table-success"&gt;...&lt;/tr&gt;<br>&lt;td class="table-danger"&gt;...&lt;/td&gt;</div>
          <p>Available on rows and cells: table-primary, secondary, success, danger, warning, info, light, dark.</p>
        </div>

        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Wrap a table in <code>&lt;div class="table-responsive"&gt;</code> to prevent layout breaking on small screens.
        </div>
      HTML
      starter_code: <<~'HTML'
        <!DOCTYPE html>
        <html lang="en">
        <head>
          <meta charset="UTF-8">
          <meta name="viewport" content="width=device-width, initial-scale=1.0">
          <title>Bootstrap Tables</title>
          <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
        </head>
        <body class="p-4">
          <h2 class="mb-4">Student Grades</h2>

          <div class="table-responsive">
            <table class="table table-striped table-hover table-bordered align-middle">
              <caption class="caption-top text-muted">Q1 2024 Results</caption>
              <thead class="table-dark">
                <tr>
                  <th>#</th>
                  <th>Student</th>
                  <th>Grade</th>
                  <th>Status</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td>1</td><td>Alice Smith</td><td>95</td>
                  <td><span class="badge bg-success">Pass</span></td>
                </tr>
                <tr class="table-warning">
                  <td>2</td><td>Bob Jones</td><td>62</td>
                  <td><span class="badge bg-warning text-dark">At Risk</span></td>
                </tr>
                <tr>
                  <td>3</td><td>Carol White</td><td>88</td>
                  <td><span class="badge bg-success">Pass</span></td>
                </tr>
                <tr class="table-danger">
                  <td>4</td><td>Dave Brown</td><td>45</td>
                  <td><span class="badge bg-danger">Fail</span></td>
                </tr>
                <tr>
                  <td>5</td><td>Eve Davis</td><td>91</td>
                  <td><span class="badge bg-primary">Honours</span></td>
                </tr>
              </tbody>
            </table>
          </div>
        </body>
        </html>
      HTML
    },

    11 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-bootstrap">Bootstrap</div>
          <h1 class="lc-title">Alerts and Badges</h1>
        </div>
        <p class="lc-lead">Alerts provide contextual feedback messages. Badges display counts, statuses, and labels inline with text or other elements.</p>

        <div class="lc-card">
          <h3>Alerts</h3>
          <div class="lc-code">&lt;div class="alert alert-success" role="alert"&gt;<br>  ✅ Your form was submitted successfully!<br>&lt;/div&gt;<br><br>&lt;!-- Dismissible alert --&gt;<br>&lt;div class="alert alert-warning alert-dismissible fade show" role="alert"&gt;<br>  ⚠️ Warning message here.<br>  &lt;button type="button" class="btn-close" data-bs-dismiss="alert"&gt;&lt;/button&gt;<br>&lt;/div&gt;</div>
        </div>

        <div class="lc-card">
          <h3>Alert Variants</h3>
          <p>All theme colors work: alert-primary, alert-secondary, alert-success, alert-danger, alert-warning, alert-info, alert-light, alert-dark</p>
        </div>

        <div class="lc-card">
          <h3>Badges</h3>
          <div class="lc-code">&lt;!-- Inline badge --&gt;<br>&lt;span class="badge bg-primary"&gt;New&lt;/span&gt;<br>&lt;span class="badge bg-danger"&gt;99+&lt;/span&gt;<br><br>&lt;!-- Badge on button --&gt;<br>&lt;button class="btn btn-primary"&gt;<br>  Notifications &lt;span class="badge bg-light text-dark"&gt;4&lt;/span&gt;<br>&lt;/button&gt;<br><br>&lt;!-- Rounded pill badge --&gt;<br>&lt;span class="badge rounded-pill bg-success"&gt;Active&lt;/span&gt;</div>
        </div>

        <div class="lc-card">
          <h3>Positioned Badge</h3>
          <div class="lc-code">&lt;button class="btn btn-primary position-relative"&gt;<br>  Inbox<br>  &lt;span class="position-absolute top-0 start-100 translate-middle badge rounded-pill bg-danger"&gt;3&lt;/span&gt;<br>&lt;/button&gt;</div>
        </div>

        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Always add <code>role="alert"</code> to alert divs for accessibility — screen readers will announce the message.
        </div>
      HTML
      starter_code: <<~'HTML'
        <!DOCTYPE html>
        <html lang="en">
        <head>
          <meta charset="UTF-8">
          <meta name="viewport" content="width=device-width, initial-scale=1.0">
          <title>Alerts and Badges</title>
          <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
        </head>
        <body class="p-4">
          <h2 class="mb-4">Alerts</h2>

          <div class="alert alert-success" role="alert">✅ <strong>Success!</strong> Your changes have been saved.</div>
          <div class="alert alert-danger" role="alert">❌ <strong>Error!</strong> Something went wrong. Please try again.</div>
          <div class="alert alert-warning alert-dismissible fade show" role="alert">
            ⚠️ <strong>Warning!</strong> Your subscription expires in 3 days.
            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
          </div>
          <div class="alert alert-info" role="alert">ℹ️ <strong>Tip:</strong> You can use Ctrl+Z to undo.</div>

          <h2 class="mt-4 mb-3">Badges</h2>

          <!-- Inline badges -->
          <div class="mb-3">
            <span class="badge bg-primary me-1">Primary</span>
            <span class="badge bg-success me-1">Success</span>
            <span class="badge bg-danger me-1">Danger</span>
            <span class="badge rounded-pill bg-warning text-dark me-1">Pill</span>
          </div>

          <!-- Badge on button -->
          <div class="mb-3">
            <button class="btn btn-dark">
              Messages <span class="badge bg-danger ms-1">7</span>
            </button>
          </div>

          <!-- Positioned badge -->
          <button class="btn btn-primary position-relative">
            Inbox
            <span class="position-absolute top-0 start-100 translate-middle badge rounded-pill bg-danger">
              12
            </span>
          </button>

          <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
        </body>
        </html>
      HTML
    },

    12 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-bootstrap">Bootstrap</div>
          <h1 class="lc-title">Modals</h1>
        </div>
        <p class="lc-lead">Modals are dialog overlays that appear on top of the page. Bootstrap modals are fully accessible, support keyboard navigation, and require no extra JavaScript setup.</p>

        <div class="lc-card">
          <h3>Modal Structure</h3>
          <div class="lc-code">&lt;!-- Trigger button --&gt;<br>&lt;button data-bs-toggle="modal" data-bs-target="#myModal"&gt;Open&lt;/button&gt;<br><br>&lt;!-- Modal HTML --&gt;<br>&lt;div class="modal fade" id="myModal" tabindex="-1"&gt;<br>  &lt;div class="modal-dialog"&gt;<br>    &lt;div class="modal-content"&gt;<br>      &lt;div class="modal-header"&gt;<br>        &lt;h5 class="modal-title"&gt;Title&lt;/h5&gt;<br>        &lt;button class="btn-close" data-bs-dismiss="modal"&gt;&lt;/button&gt;<br>      &lt;/div&gt;<br>      &lt;div class="modal-body"&gt;Content here&lt;/div&gt;<br>      &lt;div class="modal-footer"&gt;<br>        &lt;button class="btn btn-secondary" data-bs-dismiss="modal"&gt;Close&lt;/button&gt;<br>        &lt;button class="btn btn-primary"&gt;Save&lt;/button&gt;<br>      &lt;/div&gt;<br>    &lt;/div&gt;<br>  &lt;/div&gt;<br>&lt;/div&gt;</div>
        </div>

        <div class="lc-card">
          <h3>Modal Sizes</h3>
          <div class="lc-code">&lt;div class="modal-dialog modal-sm"&gt;   &lt;!-- Small --&gt;<br>&lt;div class="modal-dialog"&gt;          &lt;!-- Default --&gt;<br>&lt;div class="modal-dialog modal-lg"&gt;   &lt;!-- Large --&gt;<br>&lt;div class="modal-dialog modal-xl"&gt;   &lt;!-- Extra large --&gt;<br>&lt;div class="modal-dialog modal-fullscreen"&gt; &lt;!-- Full screen --&gt;</div>
        </div>

        <div class="lc-card">
          <h3>Scrollable & Centered Modals</h3>
          <div class="lc-code">&lt;!-- Vertically centered --&gt;<br>&lt;div class="modal-dialog modal-dialog-centered"&gt;<br><br>&lt;!-- Scrollable content --&gt;<br>&lt;div class="modal-dialog modal-dialog-scrollable"&gt;</div>
        </div>

        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> The <code>data-bs-target</code> on the trigger button must match the <code>id</code> on the modal div exactly (including the <code>#</code> in the target).
        </div>
      HTML
      starter_code: <<~'HTML'
        <!DOCTYPE html>
        <html lang="en">
        <head>
          <meta charset="UTF-8">
          <meta name="viewport" content="width=device-width, initial-scale=1.0">
          <title>Bootstrap Modal</title>
          <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
        </head>
        <body class="p-5">

          <h2 class="mb-4">Bootstrap Modals</h2>

          <!-- Trigger buttons -->
          <div class="d-flex gap-3 flex-wrap">
            <button class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#basicModal">
              Open Modal
            </button>
            <button class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#confirmModal">
              Delete Item
            </button>
          </div>

          <!-- Basic modal -->
          <div class="modal fade" id="basicModal" tabindex="-1">
            <div class="modal-dialog modal-dialog-centered">
              <div class="modal-content">
                <div class="modal-header bg-primary text-white">
                  <h5 class="modal-title">👋 Hello, Modal!</h5>
                  <button type="button" class="btn-close btn-close-white" data-bs-dismiss="modal"></button>
                </div>
                <div class="modal-body">
                  <p>This is a Bootstrap modal dialog. It blocks interaction with the page behind it.</p>
                  <p class="text-muted">Press <kbd>Esc</kbd> or click outside to close.</p>
                </div>
                <div class="modal-footer">
                  <button class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
                  <button class="btn btn-primary">Save Changes</button>
                </div>
              </div>
            </div>
          </div>

          <!-- Confirm delete modal -->
          <div class="modal fade" id="confirmModal" tabindex="-1">
            <div class="modal-dialog modal-dialog-centered modal-sm">
              <div class="modal-content">
                <div class="modal-header border-0 pb-0">
                  <h5 class="modal-title text-danger">⚠️ Confirm Delete</h5>
                </div>
                <div class="modal-body">Are you sure you want to delete this item? This cannot be undone.</div>
                <div class="modal-footer border-0">
                  <button class="btn btn-outline-secondary btn-sm" data-bs-dismiss="modal">Cancel</button>
                  <button class="btn btn-danger btn-sm">Yes, Delete</button>
                </div>
              </div>
            </div>
          </div>

          <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
        </body>
        </html>
      HTML
    },

    13 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-bootstrap">Bootstrap</div>
          <h1 class="lc-title">Flexbox Utilities</h1>
        </div>
        <p class="lc-lead">Bootstrap exposes CSS Flexbox through utility classes — no writing custom flexbox CSS. Arrange, align, wrap, and space elements with simple class names.</p>

        <div class="lc-card">
          <h3>Enabling Flexbox</h3>
          <div class="lc-code">&lt;div class="d-flex"&gt;    &lt;!-- display: flex --&gt;<br>&lt;div class="d-inline-flex"&gt; &lt;!-- display: inline-flex --&gt;</div>
        </div>

        <div class="lc-card">
          <h3>Direction</h3>
          <div class="lc-code">flex-row          &lt;!-- default: left to right --&gt;<br>flex-row-reverse  &lt;!-- right to left --&gt;<br>flex-column       &lt;!-- top to bottom --&gt;<br>flex-column-reverse</div>
        </div>

        <div class="lc-card">
          <h3>Justify Content (main axis)</h3>
          <div class="lc-code">justify-content-start    (default)<br>justify-content-center<br>justify-content-end<br>justify-content-between  (space between items)<br>justify-content-around<br>justify-content-evenly</div>
        </div>

        <div class="lc-card">
          <h3>Align Items (cross axis)</h3>
          <div class="lc-code">align-items-start<br>align-items-center<br>align-items-end<br>align-items-stretch  (default)<br>align-items-baseline</div>
        </div>

        <div class="lc-card">
          <h3>Other Flex Utilities</h3>
          <table class="lc-table">
            <thead><tr><th>Class</th><th>CSS</th></tr></thead>
            <tbody>
              <tr><td>flex-wrap</td><td>flex-wrap: wrap</td></tr>
              <tr><td>flex-nowrap</td><td>flex-wrap: nowrap</td></tr>
              <tr><td>flex-grow-1</td><td>flex-grow: 1</td></tr>
              <tr><td>flex-shrink-0</td><td>flex-shrink: 0</td></tr>
              <tr><td>me-auto</td><td>margin-right: auto (push right)</td></tr>
              <tr><td>order-1 to order-5</td><td>flex order</td></tr>
              <tr><td>gap-3</td><td>gap: 1rem</td></tr>
            </tbody>
          </table>
        </div>

        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> All flex utilities support responsive prefixes: <code>d-md-flex</code>, <code>justify-content-lg-between</code>, etc.
        </div>
      HTML
      starter_code: <<~'HTML'
        <!DOCTYPE html>
        <html lang="en">
        <head>
          <meta charset="UTF-8">
          <meta name="viewport" content="width=device-width, initial-scale=1.0">
          <title>Bootstrap Flexbox</title>
          <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
          <style>.box{background:#6366f1;color:white;padding:12px 18px;border-radius:6px;font-weight:bold;}</style>
        </head>
        <body class="p-4">
          <h2 class="mb-4">Flexbox Utilities</h2>

          <!-- justify-content -->
          <h5>justify-content-between</h5>
          <div class="d-flex justify-content-between bg-light p-2 rounded mb-3">
            <div class="box">A</div><div class="box">B</div><div class="box">C</div>
          </div>

          <h5>justify-content-center gap-3</h5>
          <div class="d-flex justify-content-center gap-3 bg-light p-2 rounded mb-3">
            <div class="box">A</div><div class="box">B</div><div class="box">C</div>
          </div>

          <!-- align-items -->
          <h5>align-items-center (different heights)</h5>
          <div class="d-flex align-items-center gap-2 bg-light p-2 rounded mb-3" style="height:80px">
            <div class="box">Short</div>
            <div class="box" style="height:60px;">Tall</div>
            <div class="box">Short</div>
          </div>

          <!-- flex-column -->
          <h5>flex-column gap-2</h5>
          <div class="d-flex flex-column gap-2 bg-light p-2 rounded" style="width:180px">
            <div class="box">Top</div>
            <div class="box">Middle</div>
            <div class="box">Bottom</div>
          </div>
        </body>
        </html>
      HTML
    },

    14 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-bootstrap">Bootstrap</div>
          <h1 class="lc-title">Display, Sizing, and Borders</h1>
        </div>
        <p class="lc-lead">Bootstrap provides utility classes for controlling display, sizing, overflow, borders, border-radius, and shadows — all without writing custom CSS.</p>

        <div class="lc-card">
          <h3>Display Utilities</h3>
          <div class="lc-code">d-none           &lt;!-- display: none --&gt;<br>d-block          &lt;!-- display: block --&gt;<br>d-inline         &lt;!-- display: inline --&gt;<br>d-inline-block   &lt;!-- display: inline-block --&gt;<br>d-flex           &lt;!-- display: flex --&gt;<br>d-grid           &lt;!-- display: grid --&gt;<br><br>&lt;!-- Responsive: show only on md+ --&gt;<br>d-none d-md-block</div>
        </div>

        <div class="lc-card">
          <h3>Sizing Utilities</h3>
          <div class="lc-code">&lt;!-- Width --&gt;<br>w-25  w-50  w-75  w-100  w-auto<br><br>&lt;!-- Height --&gt;<br>h-25  h-50  h-75  h-100  h-auto<br><br>&lt;!-- Min/Max --&gt;<br>mw-100   &lt;!-- max-width: 100% --&gt;<br>vw-100   &lt;!-- width: 100vw --&gt;<br>min-vw-100</div>
        </div>

        <div class="lc-card">
          <h3>Borders</h3>
          <div class="lc-code">&lt;!-- Add border --&gt;<br>&lt;div class="border"&gt;All sides&lt;/div&gt;<br>&lt;div class="border-top border-primary"&gt;Top, primary color&lt;/div&gt;<br><br>&lt;!-- Remove border --&gt;<br>&lt;div class="border border-0"&gt;No border&lt;/div&gt;<br><br>&lt;!-- Border radius --&gt;<br>rounded       &lt;!-- slight radius --&gt;<br>rounded-circle &lt;!-- perfect circle --&gt;<br>rounded-pill   &lt;!-- pill shape --&gt;<br>rounded-0     &lt;!-- square corners --&gt;</div>
        </div>

        <div class="lc-card">
          <h3>Shadows</h3>
          <div class="lc-code">shadow-none  shadow-sm  shadow  shadow-lg</div>
        </div>

        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Combine <code>rounded-circle</code> with <code>w-25</code> on an image to create a circular avatar.
        </div>
      HTML
      starter_code: <<~'HTML'
        <!DOCTYPE html>
        <html lang="en">
        <head>
          <meta charset="UTF-8">
          <meta name="viewport" content="width=device-width, initial-scale=1.0">
          <title>Display, Sizing, Borders</title>
          <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
        </head>
        <body class="p-4">
          <h2 class="mb-4">Display, Sizing &amp; Borders</h2>

          <!-- Sizing -->
          <h5>Width utilities</h5>
          <div class="bg-primary w-25 text-white p-2 rounded mb-2">w-25</div>
          <div class="bg-info w-50 text-white p-2 rounded mb-2">w-50</div>
          <div class="bg-success w-75 text-white p-2 rounded mb-4">w-75</div>

          <!-- Borders -->
          <h5>Borders</h5>
          <div class="d-flex gap-3 flex-wrap mb-4">
            <div class="border p-3 text-center" style="width:90px">border</div>
            <div class="border border-primary border-3 p-3 text-center" style="width:90px">border-primary</div>
            <div class="border-top border-danger border-3 p-3 text-center" style="width:90px">border-top</div>
            <div class="border rounded-pill px-4 py-3">rounded-pill</div>
          </div>

          <!-- Shadows + border-radius -->
          <h5>Shadows</h5>
          <div class="d-flex gap-3 flex-wrap mb-4">
            <div class="bg-white p-3 rounded shadow-sm" style="width:100px">shadow-sm</div>
            <div class="bg-white p-3 rounded shadow" style="width:100px">shadow</div>
            <div class="bg-white p-3 rounded shadow-lg" style="width:100px">shadow-lg</div>
          </div>

          <!-- Circular avatar -->
          <h5>Circular avatar</h5>
          <div class="bg-primary text-white d-flex align-items-center justify-content-center rounded-circle shadow"
               style="width:80px;height:80px;font-size:2rem">A</div>
        </body>
        </html>
      HTML
    },

    15 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-bootstrap">Bootstrap</div>
          <h1 class="lc-title">Progress Bars and Spinners</h1>
        </div>
        <p class="lc-lead">Progress bars visualize task completion. Spinners indicate loading states. Both are essential UI components for interactive applications.</p>

        <div class="lc-card">
          <h3>Progress Bar</h3>
          <div class="lc-code">&lt;div class="progress" style="height: 20px"&gt;<br>  &lt;div class="progress-bar bg-success" style="width: 75%"&gt;75%&lt;/div&gt;<br>&lt;/div&gt;</div>
        </div>

        <div class="lc-card">
          <h3>Progress Bar Variants</h3>
          <div class="lc-code">&lt;!-- Striped and animated --&gt;<br>&lt;div class="progress-bar progress-bar-striped progress-bar-animated bg-info" style="width:60%"&gt;&lt;/div&gt;<br><br>&lt;!-- Stacked bars --&gt;<br>&lt;div class="progress"&gt;<br>  &lt;div class="progress-bar bg-success" style="width:40%"&gt;&lt;/div&gt;<br>  &lt;div class="progress-bar bg-warning" style="width:30%"&gt;&lt;/div&gt;<br>  &lt;div class="progress-bar bg-danger"  style="width:15%"&gt;&lt;/div&gt;<br>&lt;/div&gt;</div>
        </div>

        <div class="lc-card">
          <h3>Spinners</h3>
          <div class="lc-code">&lt;!-- Border spinner --&gt;<br>&lt;div class="spinner-border text-primary" role="status"&gt;<br>  &lt;span class="visually-hidden"&gt;Loading...&lt;/span&gt;<br>&lt;/div&gt;<br><br>&lt;!-- Growing spinner --&gt;<br>&lt;div class="spinner-grow text-success" role="status"&gt;&lt;/div&gt;<br><br>&lt;!-- Small spinner in button --&gt;<br>&lt;button class="btn btn-primary" disabled&gt;<br>  &lt;span class="spinner-border spinner-border-sm"&gt;&lt;/span&gt;<br>  Loading...<br>&lt;/button&gt;</div>
        </div>

        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Always add <code>role="status"</code> and <code>&lt;span class="visually-hidden"&gt;Loading...&lt;/span&gt;</code> to spinners for screen reader accessibility.
        </div>
      HTML
      starter_code: <<~'HTML'
        <!DOCTYPE html>
        <html lang="en">
        <head>
          <meta charset="UTF-8">
          <meta name="viewport" content="width=device-width, initial-scale=1.0">
          <title>Progress &amp; Spinners</title>
          <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
        </head>
        <body class="p-4">
          <h2 class="mb-4">Progress Bars</h2>

          <!-- Basic -->
          <label class="form-label">Storage (75%)</label>
          <div class="progress mb-3" style="height:20px">
            <div class="progress-bar bg-primary fw-bold" style="width:75%">75%</div>
          </div>

          <!-- Striped animated -->
          <label class="form-label">Uploading...</label>
          <div class="progress mb-3">
            <div class="progress-bar progress-bar-striped progress-bar-animated bg-info" style="width:55%"></div>
          </div>

          <!-- Stacked -->
          <label class="form-label">Survey Results</label>
          <div class="progress mb-4" style="height:24px">
            <div class="progress-bar bg-success" style="width:45%" title="Yes">Yes 45%</div>
            <div class="progress-bar bg-danger" style="width:30%" title="No">No 30%</div>
            <div class="progress-bar bg-secondary" style="width:25%" title="Unsure">? 25%</div>
          </div>

          <h2 class="mt-2 mb-3">Spinners</h2>

          <!-- Border spinners -->
          <div class="d-flex gap-3 align-items-center mb-3">
            <div class="spinner-border text-primary" role="status"><span class="visually-hidden">Loading...</span></div>
            <div class="spinner-border text-success" role="status"><span class="visually-hidden">Loading...</span></div>
            <div class="spinner-border text-danger" role="status"><span class="visually-hidden">Loading...</span></div>
            <div class="spinner-grow text-warning" role="status"><span class="visually-hidden">Loading...</span></div>
          </div>

          <!-- Loading button -->
          <button class="btn btn-primary" disabled>
            <span class="spinner-border spinner-border-sm me-2" role="status"></span>
            Saving...
          </button>
        </body>
        </html>
      HTML
    },

    16 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-bootstrap">Bootstrap</div>
          <h1 class="lc-title">Dropdowns and Collapse</h1>
        </div>
        <p class="lc-lead">Dropdowns show a menu of options. Collapse toggles the visibility of content — useful for accordions, FAQs, and expandable sections. Both require Bootstrap's JavaScript bundle.</p>

        <div class="lc-card">
          <h3>Dropdown</h3>
          <div class="lc-code">&lt;div class="dropdown"&gt;<br>  &lt;button class="btn btn-primary dropdown-toggle" data-bs-toggle="dropdown"&gt;<br>    Options<br>  &lt;/button&gt;<br>  &lt;ul class="dropdown-menu"&gt;<br>    &lt;li&gt;&lt;a class="dropdown-item" href="#"&gt;Action 1&lt;/a&gt;&lt;/li&gt;<br>    &lt;li&gt;&lt;hr class="dropdown-divider"&gt;&lt;/li&gt;<br>    &lt;li&gt;&lt;a class="dropdown-item text-danger" href="#"&gt;Delete&lt;/a&gt;&lt;/li&gt;<br>  &lt;/ul&gt;<br>&lt;/div&gt;</div>
        </div>

        <div class="lc-card">
          <h3>Collapse</h3>
          <div class="lc-code">&lt;button class="btn btn-info" data-bs-toggle="collapse" data-bs-target="#faq1"&gt;<br>  Toggle Answer<br>&lt;/button&gt;<br>&lt;div class="collapse" id="faq1"&gt;<br>  &lt;div class="card card-body mt-2"&gt;The answer text here.&lt;/div&gt;<br>&lt;/div&gt;</div>
        </div>

        <div class="lc-card">
          <h3>Accordion (built-in)</h3>
          <div class="lc-code">&lt;div class="accordion" id="myAccordion"&gt;<br>  &lt;div class="accordion-item"&gt;<br>    &lt;h2 class="accordion-header"&gt;<br>      &lt;button class="accordion-button" data-bs-toggle="collapse" data-bs-target="#item1"&gt;<br>        Question 1<br>      &lt;/button&gt;<br>    &lt;/h2&gt;<br>    &lt;div id="item1" class="accordion-collapse collapse show" data-bs-parent="#myAccordion"&gt;<br>      &lt;div class="accordion-body"&gt;Answer 1&lt;/div&gt;<br>    &lt;/div&gt;<br>  &lt;/div&gt;<br>&lt;/div&gt;</div>
        </div>

        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Add <code>data-bs-parent="#accordionId"</code> to each collapse panel to make only one panel open at a time.
        </div>
      HTML
      starter_code: <<~'HTML'
        <!DOCTYPE html>
        <html lang="en">
        <head>
          <meta charset="UTF-8">
          <meta name="viewport" content="width=device-width, initial-scale=1.0">
          <title>Dropdowns &amp; Collapse</title>
          <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
        </head>
        <body class="p-4">
          <h2 class="mb-4">Dropdown</h2>
          <div class="dropdown mb-5">
            <button class="btn btn-primary dropdown-toggle" type="button" data-bs-toggle="dropdown">
              My Account
            </button>
            <ul class="dropdown-menu">
              <li><a class="dropdown-item" href="#">👤 Profile</a></li>
              <li><a class="dropdown-item" href="#">⚙️ Settings</a></li>
              <li><hr class="dropdown-divider"></li>
              <li><a class="dropdown-item text-danger" href="#">🚪 Sign Out</a></li>
            </ul>
          </div>

          <h2 class="mb-3">Accordion (FAQ)</h2>
          <div class="accordion" id="faqAccordion">
            <div class="accordion-item">
              <h2 class="accordion-header">
                <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#q1" data-bs-parent="#faqAccordion">
                  What is Bootstrap?
                </button>
              </h2>
              <div id="q1" class="accordion-collapse collapse show">
                <div class="accordion-body text-muted">
                  Bootstrap is the world's most popular CSS framework for building responsive, mobile-first sites.
                </div>
              </div>
            </div>
            <div class="accordion-item">
              <h2 class="accordion-header">
                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#q2" data-bs-parent="#faqAccordion">
                  Is Bootstrap free?
                </button>
              </h2>
              <div id="q2" class="accordion-collapse collapse">
                <div class="accordion-body text-muted">
                  Yes! Bootstrap is open-source and free to use under the MIT license.
                </div>
              </div>
            </div>
            <div class="accordion-item">
              <h2 class="accordion-header">
                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#q3" data-bs-parent="#faqAccordion">
                  Does Bootstrap 5 require jQuery?
                </button>
              </h2>
              <div id="q3" class="accordion-collapse collapse">
                <div class="accordion-body text-muted">
                  No! Bootstrap 5 dropped the jQuery dependency and uses vanilla JavaScript.
                </div>
              </div>
            </div>
          </div>

          <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
        </body>
        </html>
      HTML
    },

    17 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-bootstrap">Bootstrap</div>
          <h1 class="lc-title">List Groups and Breadcrumbs</h1>
        </div>
        <p class="lc-lead">List groups display a series of content in a visually connected list. Breadcrumbs show navigation hierarchy. Both are clean, accessible Bootstrap components.</p>

        <div class="lc-card">
          <h3>Basic List Group</h3>
          <div class="lc-code">&lt;ul class="list-group"&gt;<br>  &lt;li class="list-group-item"&gt;Item 1&lt;/li&gt;<br>  &lt;li class="list-group-item active"&gt;Active Item&lt;/li&gt;<br>  &lt;li class="list-group-item disabled"&gt;Disabled&lt;/li&gt;<br>&lt;/ul&gt;</div>
        </div>

        <div class="lc-card">
          <h3>Actionable List Group</h3>
          <div class="lc-code">&lt;div class="list-group"&gt;<br>  &lt;a href="#" class="list-group-item list-group-item-action"&gt;Link Item&lt;/a&gt;<br>  &lt;button class="list-group-item list-group-item-action list-group-item-success"&gt;<br>    Success Variant<br>  &lt;/button&gt;<br>&lt;/div&gt;</div>
        </div>

        <div class="lc-card">
          <h3>List Group with Badges</h3>
          <div class="lc-code">&lt;li class="list-group-item d-flex justify-content-between align-items-center"&gt;<br>  Messages<br>  &lt;span class="badge bg-primary rounded-pill"&gt;14&lt;/span&gt;<br>&lt;/li&gt;</div>
        </div>

        <div class="lc-card">
          <h3>Breadcrumb</h3>
          <div class="lc-code">&lt;nav aria-label="breadcrumb"&gt;<br>  &lt;ol class="breadcrumb"&gt;<br>    &lt;li class="breadcrumb-item"&gt;&lt;a href="#"&gt;Home&lt;/a&gt;&lt;/li&gt;<br>    &lt;li class="breadcrumb-item"&gt;&lt;a href="#"&gt;Library&lt;/a&gt;&lt;/li&gt;<br>    &lt;li class="breadcrumb-item active"&gt;Current Page&lt;/li&gt;<br>  &lt;/ol&gt;<br>&lt;/nav&gt;</div>
        </div>

        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Use <code>list-group-flush</code> to remove outer borders for embedding inside cards.
        </div>
      HTML
      starter_code: <<~'HTML'
        <!DOCTYPE html>
        <html lang="en">
        <head>
          <meta charset="UTF-8">
          <meta name="viewport" content="width=device-width, initial-scale=1.0">
          <title>List Groups &amp; Breadcrumbs</title>
          <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
        </head>
        <body class="p-4">

          <!-- Breadcrumb -->
          <nav aria-label="breadcrumb">
            <ol class="breadcrumb">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item"><a href="#">Courses</a></li>
              <li class="breadcrumb-item active">Bootstrap</li>
            </ol>
          </nav>

          <div class="row mt-3 g-4">
            <!-- List group with badges -->
            <div class="col-md-6">
              <h5 class="mb-3">Inbox</h5>
              <ul class="list-group">
                <li class="list-group-item d-flex justify-content-between align-items-center list-group-item-action">
                  📬 Messages
                  <span class="badge bg-primary rounded-pill">14</span>
                </li>
                <li class="list-group-item d-flex justify-content-between align-items-center list-group-item-action active">
                  🔔 Notifications
                  <span class="badge bg-light text-dark rounded-pill">3</span>
                </li>
                <li class="list-group-item d-flex justify-content-between align-items-center list-group-item-action">
                  ⭐ Starred
                  <span class="badge bg-warning text-dark rounded-pill">7</span>
                </li>
                <li class="list-group-item disabled">🗑️ Trash (disabled)</li>
              </ul>
            </div>

            <!-- Color variants -->
            <div class="col-md-6">
              <h5 class="mb-3">Status List</h5>
              <ul class="list-group">
                <li class="list-group-item list-group-item-success">✅ Completed</li>
                <li class="list-group-item list-group-item-warning">⏳ In Progress</li>
                <li class="list-group-item list-group-item-danger">❌ Failed</li>
                <li class="list-group-item list-group-item-info">📋 Pending Review</li>
              </ul>
            </div>
          </div>
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
        <p class="lc-lead">Tooltips appear on hover to provide hints. Popovers offer richer content on click. Toasts are lightweight non-blocking notifications — perfect for "saved", "error", or "copied" messages.</p>

        <div class="lc-card">
          <h3>Tooltips</h3>
          <div class="lc-code">&lt;button data-bs-toggle="tooltip" data-bs-title="I'm a tooltip!"&gt;<br>  Hover me<br>&lt;/button&gt;<br><br>&lt;!-- Must initialize tooltips with JS --&gt;<br>&lt;script&gt;<br>  const tooltips = document.querySelectorAll('[data-bs-toggle="tooltip"]')<br>  tooltips.forEach(el =&gt; new bootstrap.Tooltip(el))<br>&lt;/script&gt;</div>
        </div>

        <div class="lc-card">
          <h3>Popovers</h3>
          <div class="lc-code">&lt;button data-bs-toggle="popover"<br>  data-bs-title="Popover Title"<br>  data-bs-content="This is the popover body content."&gt;<br>  Click for Popover<br>&lt;/button&gt;<br><br>&lt;!-- Initialize --&gt;<br>&lt;script&gt;<br>  document.querySelectorAll('[data-bs-toggle="popover"]')<br>    .forEach(el =&gt; new bootstrap.Popover(el))<br>&lt;/script&gt;</div>
        </div>

        <div class="lc-card">
          <h3>Toast</h3>
          <div class="lc-code">&lt;div class="toast show" role="alert"&gt;<br>  &lt;div class="toast-header"&gt;<br>    &lt;strong class="me-auto"&gt;Notification&lt;/strong&gt;<br>    &lt;small&gt;Just now&lt;/small&gt;<br>    &lt;button class="btn-close" data-bs-dismiss="toast"&gt;&lt;/button&gt;<br>  &lt;/div&gt;<br>  &lt;div class="toast-body"&gt;Your file was saved successfully.&lt;/div&gt;<br>&lt;/div&gt;</div>
        </div>

        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Position toasts using a <code>&lt;div class="toast-container position-fixed bottom-0 end-0 p-3"&gt;</code> wrapper.
        </div>
      HTML
      starter_code: <<~'HTML'
        <!DOCTYPE html>
        <html lang="en">
        <head>
          <meta charset="UTF-8">
          <meta name="viewport" content="width=device-width, initial-scale=1.0">
          <title>Tooltips, Popovers, Toasts</title>
          <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
        </head>
        <body class="p-4">
          <h2 class="mb-4">Tooltips</h2>
          <div class="d-flex gap-3 mb-5">
            <button class="btn btn-secondary" data-bs-toggle="tooltip" data-bs-title="Tooltip on top" data-bs-placement="top">Top</button>
            <button class="btn btn-secondary" data-bs-toggle="tooltip" data-bs-title="Tooltip on right" data-bs-placement="right">Right</button>
            <button class="btn btn-secondary" data-bs-toggle="tooltip" data-bs-title="Tooltip on bottom" data-bs-placement="bottom">Bottom</button>
          </div>

          <h2 class="mb-3">Popovers</h2>
          <button class="btn btn-info mb-5" data-bs-toggle="popover"
            data-bs-title="💡 Did you know?"
            data-bs-content="Bootstrap 5 removed jQuery and now runs on pure vanilla JavaScript!">
            Click for Popover
          </button>

          <h2 class="mb-3">Toast</h2>
          <button class="btn btn-success" id="showToast">Show Toast</button>

          <!-- Toast container -->
          <div class="toast-container position-fixed bottom-0 end-0 p-3">
            <div id="myToast" class="toast" role="alert">
              <div class="toast-header bg-success text-white">
                <strong class="me-auto">✅ Saved</strong>
                <small>Just now</small>
                <button type="button" class="btn-close btn-close-white" data-bs-dismiss="toast"></button>
              </div>
              <div class="toast-body">Your changes have been saved successfully!</div>
            </div>
          </div>

          <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
          <script>
            // Init tooltips
            document.querySelectorAll('[data-bs-toggle="tooltip"]').forEach(el => new bootstrap.Tooltip(el))
            // Init popovers
            document.querySelectorAll('[data-bs-toggle="popover"]').forEach(el => new bootstrap.Popover(el))
            // Toast trigger
            document.getElementById('showToast').addEventListener('click', () => {
              new bootstrap.Toast(document.getElementById('myToast')).show()
            })
          </script>
        </body>
        </html>
      HTML
    },

    19 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-bootstrap">Bootstrap</div>
          <h1 class="lc-title">Bootstrap Icons and Customization</h1>
        </div>
        <p class="lc-lead">Bootstrap Icons is a free icon library with 2000+ icons. Bootstrap can also be customized via CSS variables, Sass, or by overriding defaults to match your brand.</p>

        <div class="lc-card">
          <h3>Bootstrap Icons CDN</h3>
          <div class="lc-code">&lt;link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css"&gt;<br><br>&lt;!-- Usage --&gt;<br>&lt;i class="bi bi-house"&gt;&lt;/i&gt;          Home icon<br>&lt;i class="bi bi-star-fill text-warning"&gt;&lt;/i&gt; Filled star<br>&lt;i class="bi bi-envelope fs-1"&gt;&lt;/i&gt;   Large email icon</div>
        </div>

        <div class="lc-card">
          <h3>Popular Icons</h3>
          <table class="lc-table">
            <thead><tr><th>Class</th><th>Icon</th></tr></thead>
            <tbody>
              <tr><td>bi-house</td><td>Home</td></tr>
              <tr><td>bi-person</td><td>Person/User</td></tr>
              <tr><td>bi-gear</td><td>Settings</td></tr>
              <tr><td>bi-search</td><td>Search</td></tr>
              <tr><td>bi-heart / bi-heart-fill</td><td>Heart</td></tr>
              <tr><td>bi-check-circle-fill</td><td>Check circle</td></tr>
              <tr><td>bi-x-circle</td><td>X/Close</td></tr>
              <tr><td>bi-arrow-right</td><td>Arrow right</td></tr>
              <tr><td>bi-github / bi-twitter-x</td><td>Social icons</td></tr>
            </tbody>
          </table>
        </div>

        <div class="lc-card">
          <h3>CSS Variable Customization</h3>
          <div class="lc-code">:root {<br>  --bs-primary: #7c3aed;    /* Override primary to purple */<br>  --bs-font-sans-serif: 'Inter', sans-serif;<br>  --bs-border-radius: 0.75rem;<br>}</div>
        </div>

        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Bootstrap Icons work as inline SVGs, icon fonts, or img tags. The icon font approach (shown above) is the easiest to use.
        </div>
      HTML
      starter_code: <<~'HTML'
        <!DOCTYPE html>
        <html lang="en">
        <head>
          <meta charset="UTF-8">
          <meta name="viewport" content="width=device-width, initial-scale=1.0">
          <title>Bootstrap Icons</title>
          <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
          <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
          <!-- Custom CSS variables override -->
          <style>
            :root { --bs-primary: #7c3aed; --bs-primary-rgb: 124, 58, 237; }
          </style>
        </head>
        <body class="p-4">
          <h2 class="mb-4">Bootstrap Icons (custom primary color)</h2>

          <!-- Icon buttons -->
          <div class="d-flex gap-2 flex-wrap mb-4">
            <button class="btn btn-primary"><i class="bi bi-house me-2"></i>Home</button>
            <button class="btn btn-outline-primary"><i class="bi bi-person me-2"></i>Profile</button>
            <button class="btn btn-success"><i class="bi bi-check-circle me-2"></i>Confirm</button>
            <button class="btn btn-danger"><i class="bi bi-trash me-2"></i>Delete</button>
          </div>

          <!-- Cards with icons -->
          <div class="row g-3 mb-4">
            <div class="col-md-4">
              <div class="card text-center p-3 border-0 shadow-sm">
                <i class="bi bi-stars text-warning fs-1 mb-2"></i>
                <h6>Top Rated</h6>
                <p class="text-muted small mb-0">Highly recommended</p>
              </div>
            </div>
            <div class="col-md-4">
              <div class="card text-center p-3 border-0 shadow-sm">
                <i class="bi bi-shield-check text-success fs-1 mb-2"></i>
                <h6>Secure</h6>
                <p class="text-muted small mb-0">256-bit encryption</p>
              </div>
            </div>
            <div class="col-md-4">
              <div class="card text-center p-3 border-0 shadow-sm">
                <i class="bi bi-lightning-charge text-primary fs-1 mb-2"></i>
                <h6>Fast</h6>
                <p class="text-muted small mb-0">Blazing fast performance</p>
              </div>
            </div>
          </div>

          <!-- Social icons -->
          <div class="d-flex gap-3">
            <a href="#" class="text-dark fs-4"><i class="bi bi-github"></i></a>
            <a href="#" class="text-primary fs-4"><i class="bi bi-linkedin"></i></a>
            <a href="#" class="text-danger fs-4"><i class="bi bi-youtube"></i></a>
            <a href="#" class="text-info fs-4"><i class="bi bi-twitter-x"></i></a>
          </div>
        </body>
        </html>
      HTML
    },

    20 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-bootstrap">Bootstrap</div>
          <h1 class="lc-title">Bootstrap Review — Full Landing Page</h1>
        </div>
        <p class="lc-lead">You've completed the Bootstrap course! Build a complete, professional landing page using everything you've learned — navbar, hero, cards, features, and footer.</p>

        <div class="lc-card">
          <h3>What You've Learned</h3>
          <table class="lc-table">
            <thead><tr><th>Topic</th><th>Key Classes</th></tr></thead>
            <tbody>
              <tr><td>Grid</td><td>container, row, col-md-6, g-4</td></tr>
              <tr><td>Typography</td><td>display-4, lead, fw-bold, text-muted, fs-*</td></tr>
              <tr><td>Colors</td><td>bg-primary, text-success, bg-*-subtle</td></tr>
              <tr><td>Spacing</td><td>m-3, p-4, px-5, py-2, gap-3, mx-auto</td></tr>
              <tr><td>Buttons</td><td>btn, btn-primary, btn-outline-*, btn-sm/lg</td></tr>
              <tr><td>Cards</td><td>card, card-body, card-title, h-100</td></tr>
              <tr><td>Navbar</td><td>navbar-expand-lg, navbar-dark, ms-auto</td></tr>
              <tr><td>Forms</td><td>form-control, form-label, form-floating</td></tr>
              <tr><td>Tables</td><td>table-striped, table-hover, table-responsive</td></tr>
              <tr><td>Alerts &amp; Badges</td><td>alert-success, badge, rounded-pill</td></tr>
              <tr><td>Modal</td><td>modal, modal-dialog, data-bs-toggle</td></tr>
              <tr><td>Flexbox</td><td>d-flex, justify-content-*, align-items-*</td></tr>
              <tr><td>Icons</td><td>bi bi-*, Bootstrap Icons CDN</td></tr>
            </tbody>
          </table>
        </div>

        <div class="lc-card lc-card--tip">
          <strong>What's next?</strong> Explore Bootstrap's Sass variables for deep customization, or try Bootstrap themes from <code>bootswatch.com</code> for instant style changes.
        </div>
      HTML
      starter_code: <<~'HTML'
        <!DOCTYPE html>
        <html lang="en">
        <head>
          <meta charset="UTF-8">
          <meta name="viewport" content="width=device-width, initial-scale=1.0">
          <title>Bootstrap Landing Page</title>
          <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
          <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
          <style>
            .hero { background: linear-gradient(135deg, #6366f1, #8b5cf6); }
          </style>
        </head>
        <body>

          <!-- Navbar -->
          <nav class="navbar navbar-expand-lg navbar-dark bg-dark sticky-top">
            <div class="container">
              <a class="navbar-brand fw-bold" href="#"><i class="bi bi-lightning-charge-fill text-warning"></i> LaunchKit</a>
              <button class="navbar-toggler" data-bs-toggle="collapse" data-bs-target="#nav">
                <span class="navbar-toggler-icon"></span>
              </button>
              <div class="collapse navbar-collapse" id="nav">
                <ul class="navbar-nav ms-auto">
                  <li class="nav-item"><a class="nav-link" href="#">Features</a></li>
                  <li class="nav-item"><a class="nav-link" href="#">Pricing</a></li>
                  <li class="nav-item"><a class="nav-link" href="#">Docs</a></li>
                </ul>
                <a href="#" class="btn btn-primary ms-3 btn-sm">Get Started</a>
              </div>
            </div>
          </nav>

          <!-- Hero -->
          <section class="hero text-white py-5">
            <div class="container text-center py-4">
              <span class="badge bg-light text-primary mb-3">🚀 New: Version 2.0 Released</span>
              <h1 class="display-4 fw-bold mb-3">Build Faster with Bootstrap</h1>
              <p class="lead mb-4 opacity-75">The world's most popular CSS framework for responsive, mobile-first projects.</p>
              <div class="d-flex gap-3 justify-content-center flex-wrap">
                <a href="#" class="btn btn-light btn-lg fw-bold px-4">Get Started Free</a>
                <a href="#" class="btn btn-outline-light btn-lg px-4">View Docs</a>
              </div>
            </div>
          </section>

          <!-- Features -->
          <section class="py-5 bg-light">
            <div class="container">
              <h2 class="text-center fw-bold mb-5">Why LaunchKit?</h2>
              <div class="row g-4">
                <div class="col-md-4">
                  <div class="card h-100 border-0 shadow-sm text-center p-3">
                    <i class="bi bi-grid-3x3-gap text-primary fs-1 mb-3"></i>
                    <h5>Grid System</h5>
                    <p class="text-muted small">12-column responsive grid that works on every device.</p>
                  </div>
                </div>
                <div class="col-md-4">
                  <div class="card h-100 border-0 shadow-sm text-center p-3">
                    <i class="bi bi-palette text-success fs-1 mb-3"></i>
                    <h5>Utility Classes</h5>
                    <p class="text-muted small">Hundreds of utilities for spacing, color, and typography.</p>
                  </div>
                </div>
                <div class="col-md-4">
                  <div class="card h-100 border-0 shadow-sm text-center p-3">
                    <i class="bi bi-box2-heart text-danger fs-1 mb-3"></i>
                    <h5>Components</h5>
                    <p class="text-muted small">Modals, navbars, forms, cards — all ready to use.</p>
                  </div>
                </div>
              </div>
            </div>
          </section>

          <!-- Footer -->
          <footer class="bg-dark text-white py-4">
            <div class="container text-center">
              <p class="mb-1">Built with <i class="bi bi-heart-fill text-danger"></i> using Bootstrap 5</p>
              <div class="d-flex justify-content-center gap-3 mt-2">
                <a href="#" class="text-secondary"><i class="bi bi-github fs-5"></i></a>
                <a href="#" class="text-secondary"><i class="bi bi-twitter-x fs-5"></i></a>
                <a href="#" class="text-secondary"><i class="bi bi-linkedin fs-5"></i></a>
              </div>
            </div>
          </footer>

          <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
        </body>
        </html>
      HTML
    }
  }
end

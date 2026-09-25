module HtmlCssContent
  LESSONS = {
    1 => {
      body: <<~'HTML',
        <div class="lc-intro">
          <p>HTML stands for <strong>HyperText Markup Language</strong>. It is the standard language used to create and structure content on the web. Every website you visit — Google, YouTube, Instagram — is built with HTML at its foundation.</p>
        </div>
        <div class="lc-section">
          <h2>What Does HTML Do?</h2>
          <ul class="lc-list">
            <li>Defines the <strong>structure</strong> of a webpage</li>
            <li>Tells the browser what each piece of content <em>is</em> (a heading, a paragraph, an image, a link)</li>
            <li>Creates the skeleton that CSS (styling) and JavaScript (behavior) are built on top of</li>
          </ul>
        </div>
        <div class="lc-section">
          <h2>How a Browser Reads HTML</h2>
          <div class="lc-flow">
            <div class="lc-flow-step">You write HTML</div>
            <div class="lc-flow-arrow">→</div>
            <div class="lc-flow-step">Browser reads it</div>
            <div class="lc-flow-arrow">→</div>
            <div class="lc-flow-step">Page is displayed</div>
          </div>
        </div>
        <div class="lc-section">
          <h2>Your First HTML Tags</h2>
          <div class="lc-code-block"><pre><code>&lt;h1&gt;Hello, World!&lt;/h1&gt;
&lt;p&gt;This is my first web page.&lt;/p&gt;
&lt;p&gt;HTML is &lt;strong&gt;easy&lt;/strong&gt; to learn!&lt;/p&gt;</code></pre></div>
          <p>Notice how tags come in pairs: an opening tag <code>&lt;h1&gt;</code> and a closing tag <code>&lt;/h1&gt;</code>. The content goes in between.</p>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p><strong>Key Takeaway:</strong> HTML is the skeleton of every web page. It defines structure and content — not appearance. That is CSS's job.</p></div>
      HTML
      starter_code: "<!DOCTYPE html>\n<html>\n<head>\n  <title>My First Page</title>\n</head>\n<body>\n\n  <h1>Hello, World!</h1>\n  <p>This is my first HTML page.</p>\n  <p>HTML is <strong>fun</strong> to learn!</p>\n\n</body>\n</html>"
    },

    2 => {
      body: <<~'HTML',
        <div class="lc-intro">
          <p>Every HTML file follows a <strong>standard structure</strong>. This structure tells the browser what kind of document it is reading and how to display it correctly.</p>
        </div>
        <div class="lc-section">
          <h2>The 4 Core Parts</h2>
          <table class="lc-table">
            <thead><tr><th>Tag</th><th>Purpose</th></tr></thead>
            <tbody>
              <tr><td><code>&lt;!DOCTYPE html&gt;</code></td><td>Tells browser this is an HTML5 document</td></tr>
              <tr><td><code>&lt;html&gt;</code></td><td>The root element — wraps everything</td></tr>
              <tr><td><code>&lt;head&gt;</code></td><td>Contains metadata (title, CSS links, charset) — NOT visible on page</td></tr>
              <tr><td><code>&lt;body&gt;</code></td><td>Contains all visible page content</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-section">
          <h2>The Standard Template</h2>
          <div class="lc-code-block"><pre><code>&lt;!DOCTYPE html&gt;
&lt;html lang="en"&gt;
&lt;head&gt;
  &lt;meta charset="UTF-8"&gt;
  &lt;meta name="viewport" content="width=device-width, initial-scale=1.0"&gt;
  &lt;title&gt;Page Title&lt;/title&gt;
&lt;/head&gt;
&lt;body&gt;

  &lt;h1&gt;My Heading&lt;/h1&gt;
  &lt;p&gt;My paragraph.&lt;/p&gt;

&lt;/body&gt;
&lt;/html&gt;</code></pre></div>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p><strong>Remember:</strong> The <code>&lt;head&gt;</code> is for the browser; the <code>&lt;body&gt;</code> is for the user. Only content inside <code>&lt;body&gt;</code> appears on screen.</p></div>
      HTML
      starter_code: "<!DOCTYPE html>\n<html lang=\"en\">\n<head>\n  <meta charset=\"UTF-8\">\n  <title>My Page</title>\n</head>\n<body>\n\n  <!-- Add your content here -->\n  <h1>Welcome to My Page</h1>\n  <p>This is the body section.</p>\n\n</body>\n</html>"
    },

    3 => {
      body: <<~'HTML',
        <div class="lc-intro">
          <p>HTML elements are made up of <strong>tags</strong>. Most tags have an opening tag, some content, and a closing tag. Learning the most common tags is the foundation of HTML.</p>
        </div>
        <div class="lc-section">
          <h2>Anatomy of an HTML Element</h2>
          <div class="lc-anatomy">
            <div class="lc-anatomy-row">
              <span class="lc-tag-open">&lt;p&gt;</span>
              <span class="lc-tag-content">Hello World</span>
              <span class="lc-tag-close">&lt;/p&gt;</span>
            </div>
            <div class="lc-anatomy-labels">
              <span>Opening tag</span><span>Content</span><span>Closing tag</span>
            </div>
          </div>
        </div>
        <div class="lc-section">
          <h2>Essential HTML Tags</h2>
          <table class="lc-table">
            <thead><tr><th>Tag</th><th>Meaning</th><th>Example</th></tr></thead>
            <tbody>
              <tr><td><code>&lt;h1&gt; – &lt;h6&gt;</code></td><td>Headings (large to small)</td><td><code>&lt;h1&gt;Main Title&lt;/h1&gt;</code></td></tr>
              <tr><td><code>&lt;p&gt;</code></td><td>Paragraph</td><td><code>&lt;p&gt;Some text&lt;/p&gt;</code></td></tr>
              <tr><td><code>&lt;strong&gt;</code></td><td>Bold / important text</td><td><code>&lt;strong&gt;Bold&lt;/strong&gt;</code></td></tr>
              <tr><td><code>&lt;em&gt;</code></td><td>Italic / emphasized text</td><td><code>&lt;em&gt;Italic&lt;/em&gt;</code></td></tr>
              <tr><td><code>&lt;br&gt;</code></td><td>Line break (self-closing)</td><td><code>&lt;br&gt;</code></td></tr>
              <tr><td><code>&lt;div&gt;</code></td><td>Generic block container</td><td><code>&lt;div&gt;...&lt;/div&gt;</code></td></tr>
              <tr><td><code>&lt;span&gt;</code></td><td>Generic inline container</td><td><code>&lt;span&gt;text&lt;/span&gt;</code></td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-section">
          <h2>Self-Closing Tags</h2>
          <p>Some elements have no content and no closing tag — they are <strong>self-closing</strong>:</p>
          <ul class="lc-list">
            <li><code>&lt;br&gt;</code> — line break</li>
            <li><code>&lt;img&gt;</code> — image</li>
            <li><code>&lt;input&gt;</code> — form input</li>
            <li><code>&lt;hr&gt;</code> — horizontal rule</li>
          </ul>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>Try all the tags in the editor. Use <code>&lt;h1&gt;</code> through <code>&lt;h6&gt;</code> to see how heading sizes change!</p></div>
      HTML
      starter_code: "<!DOCTYPE html>\n<html>\n<head><title>HTML Tags</title></head>\n<body>\n\n  <h1>Heading 1 (largest)</h1>\n  <h2>Heading 2</h2>\n  <h3>Heading 3</h3>\n\n  <p>This is a <strong>bold</strong> word and this is <em>italic</em>.</p>\n  <p>Line one.<br>Line two after a break.</p>\n\n  <hr>\n  <p>Below the horizontal rule.</p>\n\n</body>\n</html>"
    },

    4 => {
      body: <<~'HTML',
        <div class="lc-intro">
          <p>HTML provides tags for <strong>text formatting</strong> — making text bold, italic, highlighted, or marked as important. Some are purely visual; others carry semantic meaning that helps screen readers and search engines.</p>
        </div>
        <div class="lc-section">
          <h2>Text Formatting Tags</h2>
          <table class="lc-table">
            <thead><tr><th>Tag</th><th>Result</th><th>Meaning</th></tr></thead>
            <tbody>
              <tr><td><code>&lt;strong&gt;</code></td><td><strong>Bold text</strong></td><td>Semantically important</td></tr>
              <tr><td><code>&lt;b&gt;</code></td><td><b>Bold text</b></td><td>Visually bold only</td></tr>
              <tr><td><code>&lt;em&gt;</code></td><td><em>Italic text</em></td><td>Emphasized (semantic)</td></tr>
              <tr><td><code>&lt;i&gt;</code></td><td><i>Italic text</i></td><td>Visually italic only</td></tr>
              <tr><td><code>&lt;mark&gt;</code></td><td><mark>Highlighted</mark></td><td>Highlighted text</td></tr>
              <tr><td><code>&lt;del&gt;</code></td><td><del>Strikethrough</del></td><td>Deleted text</td></tr>
              <tr><td><code>&lt;ins&gt;</code></td><td><ins>Underlined</ins></td><td>Inserted text</td></tr>
              <tr><td><code>&lt;small&gt;</code></td><td><small>Smaller text</small></td><td>Fine print</td></tr>
              <tr><td><code>&lt;sup&gt;</code></td><td>x<sup>2</sup></td><td>Superscript</td></tr>
              <tr><td><code>&lt;sub&gt;</code></td><td>H<sub>2</sub>O</td><td>Subscript</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-section">
          <h2>Headings: h1 → h6</h2>
          <p>Headings create hierarchy. There should only be <strong>one &lt;h1&gt;</strong> per page (the main title). Subheadings use h2, h3, etc.</p>
          <div class="lc-code-block"><pre><code>&lt;h1&gt;Main Page Title&lt;/h1&gt;
&lt;h2&gt;Section Heading&lt;/h2&gt;
&lt;h3&gt;Subsection Heading&lt;/h3&gt;</code></pre></div>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>Prefer <code>&lt;strong&gt;</code> over <code>&lt;b&gt;</code> and <code>&lt;em&gt;</code> over <code>&lt;i&gt;</code> — they carry <strong>semantic meaning</strong> which helps accessibility and SEO.</p></div>
      HTML
      starter_code: "<!DOCTYPE html>\n<html>\n<head><title>Text Formatting</title></head>\n<body>\n\n  <h1>Text Formatting Examples</h1>\n\n  <p>This is <strong>bold and important</strong> text.</p>\n  <p>This is <em>emphasized italic</em> text.</p>\n  <p>This is <mark>highlighted</mark> text.</p>\n  <p>Price: <del>$100</del> Now: $75</p>\n  <p>Water formula: H<sub>2</sub>O</p>\n  <p>Math: x<sup>2</sup> + y<sup>2</sup> = z<sup>2</sup></p>\n\n</body>\n</html>"
    },

    5 => {
      body: <<~'HTML',
        <div class="lc-intro">
          <p>Links are what make the web a <strong>web</strong>. The <code>&lt;a&gt;</code> (anchor) tag creates clickable hyperlinks to other pages, sections, files, or email addresses.</p>
        </div>
        <div class="lc-section">
          <h2>Basic Link Syntax</h2>
          <div class="lc-code-block"><pre><code>&lt;a href="https://google.com"&gt;Visit Google&lt;/a&gt;</code></pre></div>
          <ul class="lc-list">
            <li><code>href</code> — the destination URL (required)</li>
            <li>The text between the tags becomes the clickable link text</li>
          </ul>
        </div>
        <div class="lc-section">
          <h2>Types of Links</h2>
          <table class="lc-table">
            <thead><tr><th>Type</th><th>Example</th><th>Use Case</th></tr></thead>
            <tbody>
              <tr><td>External</td><td><code>href="https://site.com"</code></td><td>Links to another website</td></tr>
              <tr><td>Internal</td><td><code>href="/about.html"</code></td><td>Links to another page on same site</td></tr>
              <tr><td>Anchor</td><td><code>href="#section1"</code></td><td>Jumps to element with id="section1"</td></tr>
              <tr><td>Email</td><td><code>href="mailto:hi@email.com"</code></td><td>Opens email app</td></tr>
              <tr><td>Phone</td><td><code>href="tel:+1234567890"</code></td><td>Calls on mobile</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-section">
          <h2>Opening in a New Tab</h2>
          <div class="lc-code-block"><pre><code>&lt;a href="https://google.com" target="_blank" rel="noopener"&gt;
  Open Google in new tab
&lt;/a&gt;</code></pre></div>
          <p><code>target="_blank"</code> opens in a new tab. Always add <code>rel="noopener"</code> for security.</p>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>Make link text descriptive — "Click here" is bad; "Download the PDF guide" is good. Screen readers read link text aloud!</p></div>
      HTML
      starter_code: "<!DOCTYPE html>\n<html>\n<head><title>Links</title></head>\n<body>\n\n  <h1>Types of Links</h1>\n\n  <h2>External Link</h2>\n  <a href=\"https://google.com\" target=\"_blank\" rel=\"noopener\">Visit Google</a>\n\n  <h2>Email Link</h2>\n  <a href=\"mailto:hello@example.com\">Email Us</a>\n\n  <h2>Jump to Section</h2>\n  <a href=\"#footer\">Go to Footer</a>\n\n  <br><br><br><br><br><br>\n\n  <div id=\"footer\">\n    <p>This is the footer section.</p>\n  </div>\n\n</body>\n</html>"
    },

    6 => {
      body: <<~'HTML',
        <div class="lc-intro">
          <p>The <code>&lt;img&gt;</code> tag embeds images into a webpage. It is a <strong>self-closing element</strong> — it has no closing tag. Images make pages more engaging and informative.</p>
        </div>
        <div class="lc-section">
          <h2>Basic Image Syntax</h2>
          <div class="lc-code-block"><pre><code>&lt;img src="photo.jpg" alt="A beautiful sunset"&gt;</code></pre></div>
          <table class="lc-table">
            <thead><tr><th>Attribute</th><th>Purpose</th><th>Required?</th></tr></thead>
            <tbody>
              <tr><td><code>src</code></td><td>Path or URL to the image file</td><td>✅ Yes</td></tr>
              <tr><td><code>alt</code></td><td>Descriptive text if image fails to load (accessibility)</td><td>✅ Yes</td></tr>
              <tr><td><code>width</code></td><td>Image width in pixels or %</td><td>Optional</td></tr>
              <tr><td><code>height</code></td><td>Image height in pixels or %</td><td>Optional</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-section">
          <h2>Image Sources</h2>
          <div class="lc-code-block"><pre><code>&lt;!-- Local image file --&gt;
&lt;img src="images/cat.jpg" alt="A cat"&gt;

&lt;!-- External image URL --&gt;
&lt;img src="https://picsum.photos/300/200" alt="Random photo"&gt;

&lt;!-- With size control --&gt;
&lt;img src="logo.png" alt="Logo" width="200"&gt;</code></pre></div>
        </div>
        <div class="lc-section">
          <h2>Common Image Formats</h2>
          <ul class="lc-list">
            <li><strong>JPG/JPEG</strong> — Photos (compressed, small file size)</li>
            <li><strong>PNG</strong> — Graphics with transparency</li>
            <li><strong>SVG</strong> — Vector graphics (scales perfectly)</li>
            <li><strong>WebP</strong> — Modern format, best compression</li>
            <li><strong>GIF</strong> — Animated images</li>
          </ul>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>Always write meaningful <code>alt</code> text. Screen readers use it to describe images to visually impaired users. Bad: <code>alt="img1"</code> — Good: <code>alt="A golden retriever puppy"</code></p></div>
      HTML
      starter_code: "<!DOCTYPE html>\n<html>\n<head><title>Images</title></head>\n<body>\n\n  <h1>Images in HTML</h1>\n\n  <!-- Using a free placeholder image service -->\n  <img src=\"https://picsum.photos/400/200\" alt=\"A random placeholder image\">\n\n  <br>\n\n  <!-- Control the size -->\n  <img src=\"https://picsum.photos/150/150\" alt=\"Small square image\" width=\"150\" height=\"150\">\n\n  <p>Images can be placed inline with text too: <img src=\"https://picsum.photos/40/40\" alt=\"tiny\"> like this!</p>\n\n</body>\n</html>"
    },

    7 => {
      body: <<~'HTML',
        <div class="lc-intro">
          <p>HTML lists organize content into readable, structured groups. There are three types: <strong>unordered</strong> (bullets), <strong>ordered</strong> (numbers), and <strong>description</strong> lists.</p>
        </div>
        <div class="lc-section">
          <h2>Unordered List (Bullets)</h2>
          <div class="lc-code-block"><pre><code>&lt;ul&gt;
  &lt;li&gt;Apples&lt;/li&gt;
  &lt;li&gt;Bananas&lt;/li&gt;
  &lt;li&gt;Oranges&lt;/li&gt;
&lt;/ul&gt;</code></pre></div>
          <p>Use <code>&lt;ul&gt;</code> when the <em>order doesn't matter</em> — like a shopping list or features list.</p>
        </div>
        <div class="lc-section">
          <h2>Ordered List (Numbers)</h2>
          <div class="lc-code-block"><pre><code>&lt;ol&gt;
  &lt;li&gt;Preheat oven to 180°C&lt;/li&gt;
  &lt;li&gt;Mix ingredients&lt;/li&gt;
  &lt;li&gt;Bake for 30 minutes&lt;/li&gt;
&lt;/ol&gt;</code></pre></div>
          <p>Use <code>&lt;ol&gt;</code> when <em>order matters</em> — like steps or rankings.</p>
        </div>
        <div class="lc-section">
          <h2>Nested Lists</h2>
          <div class="lc-code-block"><pre><code>&lt;ul&gt;
  &lt;li&gt;Fruits
    &lt;ul&gt;
      &lt;li&gt;Apple&lt;/li&gt;
      &lt;li&gt;Mango&lt;/li&gt;
    &lt;/ul&gt;
  &lt;/li&gt;
  &lt;li&gt;Vegetables&lt;/li&gt;
&lt;/ul&gt;</code></pre></div>
        </div>
        <div class="lc-section">
          <h2>Ordered List Attributes</h2>
          <table class="lc-table">
            <thead><tr><th>Attribute</th><th>Value</th><th>Result</th></tr></thead>
            <tbody>
              <tr><td><code>type</code></td><td>"1"</td><td>1, 2, 3 (default)</td></tr>
              <tr><td><code>type</code></td><td>"A"</td><td>A, B, C</td></tr>
              <tr><td><code>type</code></td><td>"i"</td><td>i, ii, iii</td></tr>
              <tr><td><code>start</code></td><td>5</td><td>Starts at 5</td></tr>
              <tr><td><code>reversed</code></td><td>(no value)</td><td>Counts down</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>Navigation menus are usually built with <code>&lt;ul&gt;</code> lists styled with CSS — the bullets are hidden. Almost every website's navigation is an <code>&lt;ul&gt;</code> underneath!</p></div>
      HTML
      starter_code: "<!DOCTYPE html>\n<html>\n<head><title>Lists</title></head>\n<body>\n\n  <h1>HTML Lists</h1>\n\n  <h2>My Favourite Foods (unordered)</h2>\n  <ul>\n    <li>Pizza</li>\n    <li>Sushi</li>\n    <li>Ice Cream</li>\n  </ul>\n\n  <h2>How to Make Tea (ordered)</h2>\n  <ol>\n    <li>Boil water</li>\n    <li>Add tea bag to cup</li>\n    <li>Pour hot water</li>\n    <li>Wait 3 minutes</li>\n    <li>Add milk and enjoy!</li>\n  </ol>\n\n  <h2>Nested List</h2>\n  <ul>\n    <li>Fruits\n      <ul>\n        <li>Apple</li>\n        <li>Mango</li>\n      </ul>\n    </li>\n    <li>Vegetables\n      <ul>\n        <li>Carrot</li>\n        <li>Broccoli</li>\n      </ul>\n    </li>\n  </ul>\n\n</body>\n</html>"
    },

    8 => {
      body: <<~'HTML',
        <div class="lc-intro">
          <p>HTML tables display data in a <strong>grid of rows and columns</strong>. Tables are perfect for structured data like schedules, price lists, and comparison charts.</p>
        </div>
        <div class="lc-section">
          <h2>Table Structure</h2>
          <table class="lc-table">
            <thead><tr><th>Tag</th><th>Purpose</th></tr></thead>
            <tbody>
              <tr><td><code>&lt;table&gt;</code></td><td>The table container</td></tr>
              <tr><td><code>&lt;thead&gt;</code></td><td>Table header group (optional but recommended)</td></tr>
              <tr><td><code>&lt;tbody&gt;</code></td><td>Table body group</td></tr>
              <tr><td><code>&lt;tr&gt;</code></td><td>Table Row</td></tr>
              <tr><td><code>&lt;th&gt;</code></td><td>Table Header cell (bold + centered by default)</td></tr>
              <tr><td><code>&lt;td&gt;</code></td><td>Table Data cell</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-section">
          <h2>Basic Table Example</h2>
          <div class="lc-code-block"><pre><code>&lt;table border="1"&gt;
  &lt;thead&gt;
    &lt;tr&gt;
      &lt;th&gt;Name&lt;/th&gt;
      &lt;th&gt;Age&lt;/th&gt;
      &lt;th&gt;City&lt;/th&gt;
    &lt;/tr&gt;
  &lt;/thead&gt;
  &lt;tbody&gt;
    &lt;tr&gt;
      &lt;td&gt;Alice&lt;/td&gt;
      &lt;td&gt;25&lt;/td&gt;
      &lt;td&gt;London&lt;/td&gt;
    &lt;/tr&gt;
    &lt;tr&gt;
      &lt;td&gt;Bob&lt;/td&gt;
      &lt;td&gt;30&lt;/td&gt;
      &lt;td&gt;New York&lt;/td&gt;
    &lt;/tr&gt;
  &lt;/tbody&gt;
&lt;/table&gt;</code></pre></div>
        </div>
        <div class="lc-section">
          <h2>Spanning Columns &amp; Rows</h2>
          <div class="lc-code-block"><pre><code>&lt;!-- Spans across 2 columns --&gt;
&lt;td colspan="2"&gt;Merged cell&lt;/td&gt;

&lt;!-- Spans across 2 rows --&gt;
&lt;td rowspan="2"&gt;Tall cell&lt;/td&gt;</code></pre></div>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>Add <code>border="1"</code> to <code>&lt;table&gt;</code> while learning to see the grid clearly. In real projects, use CSS to style tables instead.</p></div>
      HTML
      starter_code: "<!DOCTYPE html>\n<html>\n<head>\n<title>Tables</title>\n<style>\n  table { border-collapse: collapse; width: 100%; }\n  th, td { border: 1px solid #ccc; padding: 8px 12px; text-align: left; }\n  th { background: #4f46e5; color: white; }\n  tr:nth-child(even) { background: #f3f4f6; }\n</style>\n</head>\n<body>\n\n  <h1>Course Schedule</h1>\n\n  <table>\n    <thead>\n      <tr>\n        <th>Day</th>\n        <th>Subject</th>\n        <th>Time</th>\n        <th>Room</th>\n      </tr>\n    </thead>\n    <tbody>\n      <tr>\n        <td>Monday</td>\n        <td>HTML & CSS</td>\n        <td>9:00 AM</td>\n        <td>Lab A</td>\n      </tr>\n      <tr>\n        <td>Tuesday</td>\n        <td>JavaScript</td>\n        <td>10:00 AM</td>\n        <td>Lab B</td>\n      </tr>\n      <tr>\n        <td>Wednesday</td>\n        <td>Python</td>\n        <td>9:00 AM</td>\n        <td>Lab A</td>\n      </tr>\n    </tbody>\n  </table>\n\n</body>\n</html>"
    },

    9 => {
      body: <<~'HTML',
        <div class="lc-intro">
          <p>HTML forms collect <strong>user input</strong>. Every login page, search bar, and checkout form is built with HTML form elements. The <code>&lt;form&gt;</code> element wraps all the input fields.</p>
        </div>
        <div class="lc-section">
          <h2>Common Input Types</h2>
          <table class="lc-table">
            <thead><tr><th>Type</th><th>Code</th><th>Result</th></tr></thead>
            <tbody>
              <tr><td>Text</td><td><code>type="text"</code></td><td>Single-line text box</td></tr>
              <tr><td>Password</td><td><code>type="password"</code></td><td>Hidden characters</td></tr>
              <tr><td>Email</td><td><code>type="email"</code></td><td>Email validation built in</td></tr>
              <tr><td>Number</td><td><code>type="number"</code></td><td>Numeric keyboard on mobile</td></tr>
              <tr><td>Checkbox</td><td><code>type="checkbox"</code></td><td>Tick boxes (multiple select)</td></tr>
              <tr><td>Radio</td><td><code>type="radio"</code></td><td>Select one from group</td></tr>
              <tr><td>Submit</td><td><code>type="submit"</code></td><td>Submit button</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-section">
          <h2>Always Use Labels</h2>
          <div class="lc-code-block"><pre><code>&lt;!-- The for attribute links to input's id --&gt;
&lt;label for="username"&gt;Username:&lt;/label&gt;
&lt;input type="text" id="username" name="username"&gt;</code></pre></div>
          <p>Labels improve accessibility — clicking the label focuses the input field.</p>
        </div>
        <div class="lc-section">
          <h2>Other Form Elements</h2>
          <div class="lc-code-block"><pre><code>&lt;!-- Dropdown menu --&gt;
&lt;select name="country"&gt;
  &lt;option value="uk"&gt;United Kingdom&lt;/option&gt;
  &lt;option value="us"&gt;United States&lt;/option&gt;
&lt;/select&gt;

&lt;!-- Multi-line text --&gt;
&lt;textarea name="message" rows="4"&gt;&lt;/textarea&gt;</code></pre></div>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>Always add <code>name</code> attributes to inputs — without them, the data won't be sent when the form is submitted!</p></div>
      HTML
      starter_code: "<!DOCTYPE html>\n<html>\n<head>\n<title>HTML Form</title>\n<style>\n  body { font-family: sans-serif; max-width: 400px; margin: 20px auto; }\n  label { display: block; margin-top: 12px; font-weight: bold; }\n  input, select, textarea { width: 100%; padding: 8px; margin-top: 4px; border: 1px solid #ccc; border-radius: 4px; }\n  button { margin-top: 16px; padding: 10px 24px; background: #4f46e5; color: white; border: none; border-radius: 4px; cursor: pointer; }\n</style>\n</head>\n<body>\n\n  <h1>Sign Up Form</h1>\n\n  <form>\n    <label for=\"name\">Full Name:</label>\n    <input type=\"text\" id=\"name\" name=\"name\" placeholder=\"Your name\">\n\n    <label for=\"email\">Email:</label>\n    <input type=\"email\" id=\"email\" name=\"email\" placeholder=\"you@example.com\">\n\n    <label for=\"password\">Password:</label>\n    <input type=\"password\" id=\"password\" name=\"password\">\n\n    <label for=\"country\">Country:</label>\n    <select id=\"country\" name=\"country\">\n      <option>India</option>\n      <option>USA</option>\n      <option>UK</option>\n    </select>\n\n    <label for=\"message\">About You:</label>\n    <textarea id=\"message\" name=\"message\" rows=\"3\" placeholder=\"Tell us about yourself...\"></textarea>\n\n    <button type=\"submit\">Create Account</button>\n  </form>\n\n</body>\n</html>"
    },

    10 => {
      body: <<~'HTML',
        <div class="lc-intro">
          <p>HTML5 introduced <strong>semantic elements</strong> — tags that describe their <em>meaning</em>, not just their appearance. They make your code readable and improve accessibility and SEO.</p>
        </div>
        <div class="lc-section">
          <h2>Semantic vs Non-Semantic</h2>
          <div class="lc-two-col">
            <div class="lc-col">
              <p class="lc-col-label lc-bad">❌ Non-Semantic (old way)</p>
              <div class="lc-code-block"><pre><code>&lt;div id="header"&gt;...&lt;/div&gt;
&lt;div id="nav"&gt;...&lt;/div&gt;
&lt;div id="main"&gt;...&lt;/div&gt;
&lt;div id="footer"&gt;...&lt;/div&gt;</code></pre></div>
            </div>
            <div class="lc-col">
              <p class="lc-col-label lc-good">✅ Semantic (modern way)</p>
              <div class="lc-code-block"><pre><code>&lt;header&gt;...&lt;/header&gt;
&lt;nav&gt;...&lt;/nav&gt;
&lt;main&gt;...&lt;/main&gt;
&lt;footer&gt;...&lt;/footer&gt;</code></pre></div>
            </div>
          </div>
        </div>
        <div class="lc-section">
          <h2>Key Semantic Elements</h2>
          <table class="lc-table">
            <thead><tr><th>Tag</th><th>Used For</th></tr></thead>
            <tbody>
              <tr><td><code>&lt;header&gt;</code></td><td>Page or section header (logo, nav)</td></tr>
              <tr><td><code>&lt;nav&gt;</code></td><td>Navigation links</td></tr>
              <tr><td><code>&lt;main&gt;</code></td><td>The primary content of the page (use once)</td></tr>
              <tr><td><code>&lt;section&gt;</code></td><td>A themed group of content with a heading</td></tr>
              <tr><td><code>&lt;article&gt;</code></td><td>Self-contained content (blog post, card)</td></tr>
              <tr><td><code>&lt;aside&gt;</code></td><td>Side content (sidebar, related links)</td></tr>
              <tr><td><code>&lt;footer&gt;</code></td><td>Page or section footer</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>Semantic HTML helps <strong>screen readers</strong> navigate your page and helps <strong>Google</strong> understand your content. It is a simple habit with a big impact.</p></div>
      HTML
      starter_code: "<!DOCTYPE html>\n<html lang=\"en\">\n<head>\n<title>Semantic HTML</title>\n<style>\n  * { box-sizing: border-box; }\n  body { font-family: sans-serif; margin: 0; }\n  header { background: #4f46e5; color: white; padding: 16px 24px; }\n  nav { background: #312e81; padding: 10px 24px; }\n  nav a { color: white; margin-right: 16px; text-decoration: none; }\n  main { padding: 24px; }\n  article { background: #f3f4f6; border-radius: 8px; padding: 16px; margin-bottom: 16px; }\n  aside { background: #ede9fe; border-radius: 8px; padding: 16px; }\n  footer { background: #1e1b4b; color: white; padding: 16px 24px; text-align: center; }\n</style>\n</head>\n<body>\n\n  <header>\n    <h1>AI Academy</h1>\n  </header>\n\n  <nav>\n    <a href=\"#\">Home</a>\n    <a href=\"#\">Courses</a>\n    <a href=\"#\">About</a>\n  </nav>\n\n  <main>\n    <section>\n      <h2>Latest Articles</h2>\n      <article>\n        <h3>What is HTML?</h3>\n        <p>HTML is the standard markup language for web pages.</p>\n      </article>\n      <article>\n        <h3>CSS Basics</h3>\n        <p>CSS styles and layouts HTML elements beautifully.</p>\n      </article>\n    </section>\n    <aside>\n      <h3>Related Links</h3>\n      <ul><li><a href=\"#\">MDN Web Docs</a></li></ul>\n    </aside>\n  </main>\n\n  <footer>\n    <p>&copy; 2025 AI Academy</p>\n  </footer>\n\n</body>\n</html>"
    },

    11 => {
      body: <<~'HTML',
        <div class="lc-intro">
          <p>CSS (Cascading Style Sheets) controls <strong>how HTML elements look</strong>. Without CSS, every webpage would be plain black text on a white background. CSS adds color, layout, fonts, and spacing.</p>
        </div>
        <div class="lc-section">
          <h2>3 Ways to Add CSS</h2>
          <table class="lc-table">
            <thead><tr><th>Method</th><th>Where</th><th>Best For</th></tr></thead>
            <tbody>
              <tr><td><strong>Inline</strong></td><td>style attribute on element</td><td>One-off overrides (avoid for large projects)</td></tr>
              <tr><td><strong>Internal</strong></td><td>&lt;style&gt; tag in &lt;head&gt;</td><td>Single-page prototyping</td></tr>
              <tr><td><strong>External</strong></td><td>Separate .css file, linked with &lt;link&gt;</td><td>✅ Best practice for real projects</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-section">
          <h2>CSS Syntax</h2>
          <div class="lc-code-block"><pre><code>selector {
  property: value;
  property: value;
}

/* Example */
h1 {
  color: blue;
  font-size: 32px;
  text-align: center;
}</code></pre></div>
          <ul class="lc-list">
            <li>The <strong>selector</strong> targets the HTML element(s)</li>
            <li>The <strong>property</strong> is what you want to change</li>
            <li>The <strong>value</strong> is what you set it to</li>
            <li>Each rule ends with a semicolon <code>;</code></li>
          </ul>
        </div>
        <div class="lc-section">
          <h2>Common CSS Properties</h2>
          <div class="lc-code-block"><pre><code>p {
  color: #333;          /* Text color */
  background: #f0f0f0;  /* Background */
  font-size: 16px;      /* Font size */
  font-family: sans-serif; /* Font */
  padding: 10px;        /* Inner space */
  margin: 20px 0;       /* Outer space */
  border: 1px solid #ccc; /* Border */
  border-radius: 8px;   /* Rounded corners */
}</code></pre></div>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>Use the <code>&lt;style&gt;</code> tag inside <code>&lt;head&gt;</code> for these exercises. In real projects, always use an external .css file linked with <code>&lt;link rel="stylesheet" href="style.css"&gt;</code></p></div>
      HTML
      starter_code: "<!DOCTYPE html>\n<html>\n<head>\n<title>Intro to CSS</title>\n<style>\n\n  body {\n    font-family: sans-serif;\n    background: #1a1a2e;\n    color: white;\n    padding: 24px;\n  }\n\n  h1 {\n    color: #818cf8;\n    text-align: center;\n    font-size: 36px;\n  }\n\n  p {\n    background: #16213e;\n    padding: 16px;\n    border-radius: 8px;\n    border-left: 4px solid #818cf8;\n    line-height: 1.6;\n  }\n\n  .highlight {\n    color: #10b981;\n    font-weight: bold;\n  }\n\n</style>\n</head>\n<body>\n\n  <h1>Welcome to CSS!</h1>\n\n  <p>CSS makes web pages <span class=\"highlight\">beautiful</span>. \n  Without CSS, every page would just be plain text on a white background.</p>\n\n  <p>Try changing the colors, sizes, and styles above!</p>\n\n</body>\n</html>"
    },

    12 => {
      body: <<~'HTML',
        <div class="lc-intro">
          <p>CSS selectors <strong>target specific HTML elements</strong> to apply styles. Mastering selectors gives you precise control over exactly which elements get styled.</p>
        </div>
        <div class="lc-section">
          <h2>The 3 Core Selectors</h2>
          <table class="lc-table">
            <thead><tr><th>Selector</th><th>Syntax</th><th>Targets</th><th>Example</th></tr></thead>
            <tbody>
              <tr><td><strong>Element</strong></td><td><code>p { }</code></td><td>All &lt;p&gt; tags</td><td>Every paragraph</td></tr>
              <tr><td><strong>Class</strong></td><td><code>.card { }</code></td><td>class="card"</td><td>Multiple elements</td></tr>
              <tr><td><strong>ID</strong></td><td><code>#header { }</code></td><td>id="header"</td><td>One unique element</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-section">
          <h2>Combining Selectors</h2>
          <div class="lc-code-block"><pre><code>/* Descendant: p inside .container */
.container p { color: blue; }

/* Multiple: style both h1 and h2 */
h1, h2 { font-family: Georgia; }

/* Pseudo-class: on hover */
a:hover { color: red; }

/* Pseudo-class: first child */
li:first-child { font-weight: bold; }

/* Pseudo-class: nth child */
tr:nth-child(even) { background: #f0f0f0; }</code></pre></div>
        </div>
        <div class="lc-section">
          <h2>Specificity (Which Rule Wins?)</h2>
          <div class="lc-flow">
            <div class="lc-flow-step">Element <code>p</code><br><small>Lowest priority</small></div>
            <div class="lc-flow-arrow">→</div>
            <div class="lc-flow-step">Class <code>.card</code><br><small>Medium priority</small></div>
            <div class="lc-flow-arrow">→</div>
            <div class="lc-flow-step">ID <code>#main</code><br><small>High priority</small></div>
            <div class="lc-flow-arrow">→</div>
            <div class="lc-flow-step">Inline style<br><small>Highest priority</small></div>
          </div>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>Prefer <strong>classes</strong> over IDs for CSS. Classes can be reused on multiple elements; IDs must be unique on the page.</p></div>
      HTML
      starter_code: "<!DOCTYPE html>\n<html>\n<head>\n<title>CSS Selectors</title>\n<style>\n\n  /* Element selector */\n  body { font-family: sans-serif; padding: 20px; }\n\n  /* Class selector */\n  .card {\n    background: #f3f4f6;\n    border-radius: 8px;\n    padding: 16px;\n    margin: 10px 0;\n    border-left: 4px solid #4f46e5;\n  }\n\n  /* ID selector */\n  #special {\n    background: #4f46e5;\n    color: white;\n  }\n\n  /* Pseudo-class */\n  .card:hover {\n    background: #e0e7ff;\n    cursor: pointer;\n  }\n\n  /* Descendant selector */\n  .card p {\n    margin: 0;\n    color: #374151;\n  }\n\n</style>\n</head>\n<body>\n\n  <h1>CSS Selectors Demo</h1>\n\n  <div class=\"card\">\n    <h3>Card 1 (class)</h3>\n    <p>Styled with the .card class selector</p>\n  </div>\n\n  <div class=\"card\" id=\"special\">\n    <h3>Card 2 (class + ID)</h3>\n    <p>ID overrides the background color</p>\n  </div>\n\n  <div class=\"card\">\n    <h3>Card 3 (hover me!)</h3>\n    <p>Hover to see the :hover pseudo-class</p>\n  </div>\n\n</body>\n</html>"
    },

    13 => {
      body: <<~'HTML',
        <div class="lc-intro">
          <p>Color brings web pages to life. CSS supports <strong>five color formats</strong> and gives you full control over text color, background color, and border color.</p>
        </div>
        <div class="lc-section">
          <h2>CSS Color Formats</h2>
          <table class="lc-table">
            <thead><tr><th>Format</th><th>Example</th><th>Description</th></tr></thead>
            <tbody>
              <tr><td>Named</td><td><code>red</code>, <code>blue</code>, <code>tomato</code></td><td>140+ CSS named colors</td></tr>
              <tr><td>Hex</td><td><code>#ff6600</code></td><td>Red, Green, Blue in hexadecimal</td></tr>
              <tr><td>RGB</td><td><code>rgb(255, 102, 0)</code></td><td>Red, Green, Blue 0–255</td></tr>
              <tr><td>RGBA</td><td><code>rgba(255, 0, 0, 0.5)</code></td><td>RGB + Alpha (transparency 0–1)</td></tr>
              <tr><td>HSL</td><td><code>hsl(24, 100%, 50%)</code></td><td>Hue, Saturation, Lightness</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-section">
          <h2>Background Properties</h2>
          <div class="lc-code-block"><pre><code>div {
  /* Solid color */
  background-color: #4f46e5;

  /* Gradient */
  background: linear-gradient(135deg, #4f46e5, #06b6d4);

  /* Image */
  background-image: url('photo.jpg');
  background-size: cover;
  background-position: center;
}</code></pre></div>
        </div>
        <div class="lc-section">
          <h2>Opacity vs RGBA</h2>
          <div class="lc-code-block"><pre><code>/* opacity affects the whole element + children */
.box { opacity: 0.5; }

/* rgba only makes the background transparent */
.box { background: rgba(79, 70, 229, 0.3); }</code></pre></div>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>Use a contrast checker to ensure text is readable on colored backgrounds. Dark text on light bg or light text on dark bg — aim for a contrast ratio of at least 4.5:1.</p></div>
      HTML
      starter_code: "<!DOCTYPE html>\n<html>\n<head>\n<title>CSS Colors</title>\n<style>\n  body { font-family: sans-serif; padding: 20px; }\n  .box {\n    padding: 20px;\n    margin: 10px 0;\n    border-radius: 8px;\n    color: white;\n    font-weight: bold;\n    font-size: 14px;\n  }\n  .named    { background-color: tomato; }\n  .hex      { background-color: #4f46e5; }\n  .rgb      { background-color: rgb(16, 185, 129); }\n  .rgba     { background-color: rgba(245, 158, 11, 0.8); color: #1a1a1a; }\n  .gradient { background: linear-gradient(135deg, #667eea, #764ba2); }\n  .hsl      { background-color: hsl(210, 80%, 50%); }\n</style>\n</head>\n<body>\n\n  <h1>CSS Color Formats</h1>\n\n  <div class=\"box named\">Named color: tomato</div>\n  <div class=\"box hex\">Hex: #4f46e5</div>\n  <div class=\"box rgb\">RGB: rgb(16, 185, 129)</div>\n  <div class=\"box rgba\">RGBA (semi-transparent): rgba(245, 158, 11, 0.8)</div>\n  <div class=\"box gradient\">Linear Gradient</div>\n  <div class=\"box hsl\">HSL: hsl(210, 80%, 50%)</div>\n\n</body>\n</html>"
    },

    14 => {
      body: <<~'HTML',
        <div class="lc-intro">
          <p>The <strong>CSS Box Model</strong> describes how every HTML element is rendered as a rectangular box. Understanding it is essential for controlling spacing and layout in CSS.</p>
        </div>
        <div class="lc-section">
          <h2>The 4 Layers</h2>
          <div class="lc-box-model">
            <div class="lc-bm-margin"><span>Margin</span>
              <div class="lc-bm-border"><span>Border</span>
                <div class="lc-bm-padding"><span>Padding</span>
                  <div class="lc-bm-content">Content</div>
                </div>
              </div>
            </div>
          </div>
          <table class="lc-table" style="margin-top:16px">
            <thead><tr><th>Layer</th><th>Description</th></tr></thead>
            <tbody>
              <tr><td><strong>Content</strong></td><td>The actual text or image</td></tr>
              <tr><td><strong>Padding</strong></td><td>Space between content and border (inside the element)</td></tr>
              <tr><td><strong>Border</strong></td><td>A line around the padding</td></tr>
              <tr><td><strong>Margin</strong></td><td>Space outside the border (pushes other elements away)</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-section">
          <h2>Shorthand Syntax</h2>
          <div class="lc-code-block"><pre><code>/* 4 values: top right bottom left (clockwise) */
margin: 10px 20px 10px 20px;

/* 2 values: top/bottom  left/right */
padding: 16px 24px;

/* 1 value: all sides equal */
margin: 8px;</code></pre></div>
        </div>
        <div class="lc-section">
          <h2>box-sizing: border-box</h2>
          <div class="lc-code-block"><pre><code>/* Always add this to avoid sizing surprises */
* {
  box-sizing: border-box;
}</code></pre></div>
          <p>With <code>border-box</code>, padding and border are <em>included</em> in the element's total width — making sizing predictable.</p>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p><strong>Padding vs Margin:</strong> Use <em>padding</em> when you want space inside the element (inside the background). Use <em>margin</em> to push elements away from each other.</p></div>
      HTML
      starter_code: "<!DOCTYPE html>\n<html>\n<head>\n<title>Box Model</title>\n<style>\n  * { box-sizing: border-box; }\n  body { font-family: sans-serif; background: #f9fafb; padding: 30px; }\n\n  .box {\n    background: #4f46e5;\n    color: white;\n    width: 300px;\n\n    /* Content is 300px wide total (border-box) */\n    padding: 20px;          /* Space inside */\n    border: 4px solid #312e81; /* Border */\n    margin: 30px auto;      /* Outside space */\n\n    border-radius: 8px;\n    text-align: center;\n    font-size: 16px;\n  }\n\n  .outer {\n    background: rgba(79,70,229,0.1);\n    border: 2px dashed #4f46e5;\n    padding: 20px;\n    margin-bottom: 20px;\n    border-radius: 8px;\n  }\n</style>\n</head>\n<body>\n\n  <h1>CSS Box Model</h1>\n\n  <div class=\"outer\">\n    <p>This outer div shows the margin zone.</p>\n    <div class=\"box\">\n      Content Area<br>\n      <small>padding: 20px | border: 4px | margin: 30px</small>\n    </div>\n  </div>\n\n  <p>Try changing the padding, border, and margin values above!</p>\n\n</body>\n</html>"
    },

    15 => {
      body: <<~'HTML',
        <div class="lc-intro">
          <p>CSS typography controls how text looks on your page. From choosing fonts to setting line height, good typography makes content <strong>readable, beautiful, and professional</strong>.</p>
        </div>
        <div class="lc-section">
          <h2>Essential Typography Properties</h2>
          <table class="lc-table">
            <thead><tr><th>Property</th><th>Example</th><th>Effect</th></tr></thead>
            <tbody>
              <tr><td><code>font-family</code></td><td><code>'Georgia', serif</code></td><td>Chooses the font</td></tr>
              <tr><td><code>font-size</code></td><td><code>18px</code> / <code>1.2rem</code></td><td>Sets text size</td></tr>
              <tr><td><code>font-weight</code></td><td><code>bold</code> / <code>400</code>–<code>900</code></td><td>Thickness of font</td></tr>
              <tr><td><code>font-style</code></td><td><code>italic</code></td><td>Italicises text</td></tr>
              <tr><td><code>line-height</code></td><td><code>1.6</code></td><td>Space between lines</td></tr>
              <tr><td><code>letter-spacing</code></td><td><code>0.05em</code></td><td>Space between letters</td></tr>
              <tr><td><code>text-align</code></td><td><code>center</code></td><td>Aligns text</td></tr>
              <tr><td><code>text-transform</code></td><td><code>uppercase</code></td><td>Changes case</td></tr>
              <tr><td><code>text-decoration</code></td><td><code>underline</code> / <code>none</code></td><td>Underline, strikethrough</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-section">
          <h2>Google Fonts (Free Web Fonts)</h2>
          <div class="lc-code-block"><pre><code>&lt;!-- Add to &lt;head&gt; --&gt;
&lt;link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;700&display=swap" rel="stylesheet"&gt;

&lt;style&gt;
  body { font-family: 'Inter', sans-serif; }
&lt;/style&gt;</code></pre></div>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>Use <code>rem</code> for font sizes instead of <code>px</code>. <code>1rem</code> = browser default size (16px). This respects user accessibility settings and scales better across devices.</p></div>
      HTML
      starter_code: "<!DOCTYPE html>\n<html>\n<head>\n<title>CSS Typography</title>\n<link href=\"https://fonts.googleapis.com/css2?family=Inter:wght@400;600;800&family=Georgia&display=swap\" rel=\"stylesheet\">\n<style>\n\n  body {\n    font-family: 'Inter', sans-serif;\n    padding: 32px;\n    background: #0f0f1a;\n    color: #e2e0f0;\n    line-height: 1.6;\n  }\n\n  h1 {\n    font-size: 2.5rem;\n    font-weight: 800;\n    letter-spacing: -0.02em;\n    color: #818cf8;\n  }\n\n  h2 {\n    font-family: 'Georgia', serif;\n    font-style: italic;\n    color: #a5f3fc;\n  }\n\n  .uppercase { text-transform: uppercase; letter-spacing: 0.1em; font-size: 0.75rem; color: #6b7280; }\n  .body-text { font-size: 1rem; max-width: 600px; color: #9ca3af; }\n  .big-quote { font-size: 1.5rem; font-weight: 600; border-left: 4px solid #818cf8; padding-left: 16px; }\n\n</style>\n</head>\n<body>\n\n  <p class=\"uppercase\">AI Academy — Lesson 15</p>\n  <h1>CSS Typography</h1>\n  <h2>Good typography makes text readable</h2>\n\n  <p class=\"body-text\">\n    Typography is the art of arranging text. The right font, size, and spacing \n    transforms raw text into a pleasant reading experience.\n  </p>\n\n  <blockquote class=\"big-quote\">\n    \"Typography is what language looks like.\"\n  </blockquote>\n\n</body>\n</html>"
    },

    16 => {
      body: <<~'HTML',
        <div class="lc-intro">
          <p><strong>Flexbox</strong> is a one-dimensional CSS layout system that makes it incredibly easy to align, distribute, and reorder elements in a row or column. It solves most common layout challenges.</p>
        </div>
        <div class="lc-section">
          <h2>Enabling Flexbox</h2>
          <div class="lc-code-block"><pre><code>.container {
  display: flex; /* All children become flex items */
}</code></pre></div>
        </div>
        <div class="lc-section">
          <h2>Container Properties (parent)</h2>
          <table class="lc-table">
            <thead><tr><th>Property</th><th>Values</th><th>Effect</th></tr></thead>
            <tbody>
              <tr><td><code>flex-direction</code></td><td>row | column</td><td>Direction of items</td></tr>
              <tr><td><code>justify-content</code></td><td>flex-start | center | flex-end | space-between | space-around</td><td>Aligns on main axis (horizontal in row)</td></tr>
              <tr><td><code>align-items</code></td><td>flex-start | center | flex-end | stretch</td><td>Aligns on cross axis (vertical in row)</td></tr>
              <tr><td><code>gap</code></td><td>16px</td><td>Space between items</td></tr>
              <tr><td><code>flex-wrap</code></td><td>wrap | nowrap</td><td>Allows items to wrap to next line</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-section">
          <h2>Item Properties (children)</h2>
          <div class="lc-code-block"><pre><code>.item {
  flex: 1;        /* Grows to fill available space */
  flex: 0 0 200px; /* Fixed 200px, no grow/shrink */
  align-self: center; /* Override align-items for this item */
}</code></pre></div>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p><strong>Most useful combo:</strong> <code>display: flex; justify-content: center; align-items: center;</code> — this perfectly centers content horizontally and vertically with just 3 lines!</p></div>
      HTML
      starter_code: "<!DOCTYPE html>\n<html>\n<head>\n<title>CSS Flexbox</title>\n<style>\n  * { box-sizing: border-box; }\n  body { font-family: sans-serif; padding: 20px; background: #f9fafb; }\n  h2 { margin-top: 24px; color: #374151; font-size: 14px; text-transform: uppercase; letter-spacing: 1px; }\n\n  .box { background: #4f46e5; color: white; padding: 12px 16px; border-radius: 6px; font-weight: bold; }\n\n  /* Example 1: Row with spacing */\n  .row { display: flex; gap: 12px; margin-bottom: 24px; }\n\n  /* Example 2: Space between */\n  .spaced { display: flex; justify-content: space-between; background: #e0e7ff; padding: 12px; border-radius: 8px; margin-bottom: 24px; }\n\n  /* Example 3: Centered content */\n  .centered { display: flex; justify-content: center; align-items: center; height: 120px; background: #312e81; border-radius: 8px; margin-bottom: 24px; }\n  .centered .box { background: #818cf8; }\n\n  /* Example 4: Column */\n  .column { display: flex; flex-direction: column; gap: 8px; max-width: 200px; }\n</style>\n</head>\n<body>\n\n  <h1>CSS Flexbox</h1>\n\n  <h2>flex-direction: row (default)</h2>\n  <div class=\"row\">\n    <div class=\"box\">Item 1</div>\n    <div class=\"box\">Item 2</div>\n    <div class=\"box\">Item 3</div>\n  </div>\n\n  <h2>justify-content: space-between</h2>\n  <div class=\"spaced\">\n    <div class=\"box\">Left</div>\n    <div class=\"box\">Center</div>\n    <div class=\"box\">Right</div>\n  </div>\n\n  <h2>justify-content: center + align-items: center</h2>\n  <div class=\"centered\">\n    <div class=\"box\">Perfectly Centered!</div>\n  </div>\n\n  <h2>flex-direction: column</h2>\n  <div class=\"column\">\n    <div class=\"box\">Top</div>\n    <div class=\"box\">Middle</div>\n    <div class=\"box\">Bottom</div>\n  </div>\n\n</body>\n</html>"
    },

    17 => {
      body: <<~'HTML',
        <div class="lc-intro">
          <p><strong>CSS Grid</strong> is a two-dimensional layout system — it handles both rows AND columns simultaneously. It is ideal for building complex page layouts like dashboards, galleries, and magazine-style designs.</p>
        </div>
        <div class="lc-section">
          <h2>Enabling Grid</h2>
          <div class="lc-code-block"><pre><code>.container {
  display: grid;
  grid-template-columns: 1fr 1fr 1fr; /* 3 equal columns */
  grid-template-columns: 200px 1fr;   /* Sidebar + content */
  grid-template-columns: repeat(3, 1fr); /* Same as first */
  gap: 16px;                          /* Space between cells */
}</code></pre></div>
        </div>
        <div class="lc-section">
          <h2>Key Grid Properties</h2>
          <table class="lc-table">
            <thead><tr><th>Property</th><th>Example</th><th>Effect</th></tr></thead>
            <tbody>
              <tr><td><code>grid-template-columns</code></td><td><code>repeat(3, 1fr)</code></td><td>Defines column widths</td></tr>
              <tr><td><code>grid-template-rows</code></td><td><code>auto 1fr auto</code></td><td>Defines row heights</td></tr>
              <tr><td><code>gap</code></td><td><code>16px</code></td><td>Gap between rows and columns</td></tr>
              <tr><td><code>grid-column</code></td><td><code>1 / 3</code></td><td>Span across 2 columns</td></tr>
              <tr><td><code>grid-row</code></td><td><code>1 / 3</code></td><td>Span across 2 rows</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-section">
          <h2>The fr Unit</h2>
          <p><code>fr</code> means "fraction of available space". <code>repeat(3, 1fr)</code> creates 3 equal columns. <code>1fr 2fr</code> creates a 1:2 ratio.</p>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p><strong>Grid vs Flexbox:</strong> Use Flexbox for one-dimensional layouts (a row of nav links). Use Grid for two-dimensional layouts (a card grid or full page layout).</p></div>
      HTML
      starter_code: "<!DOCTYPE html>\n<html>\n<head>\n<title>CSS Grid</title>\n<style>\n  * { box-sizing: border-box; }\n  body { font-family: sans-serif; padding: 20px; background: #0f172a; color: white; }\n\n  h2 { color: #94a3b8; font-size: 13px; text-transform: uppercase; letter-spacing: 1px; margin-top: 24px; }\n\n  /* 3-column card grid */\n  .card-grid {\n    display: grid;\n    grid-template-columns: repeat(3, 1fr);\n    gap: 16px;\n    margin-bottom: 32px;\n  }\n\n  .card {\n    background: #1e293b;\n    border-radius: 10px;\n    padding: 20px;\n    border: 1px solid #334155;\n  }\n\n  .card h3 { margin: 0 0 8px; color: #818cf8; }\n  .card p  { margin: 0; font-size: 14px; color: #94a3b8; }\n\n  /* Full page layout */\n  .page-layout {\n    display: grid;\n    grid-template-columns: 200px 1fr;\n    grid-template-rows: auto 1fr auto;\n    gap: 12px;\n    height: 200px;\n  }\n\n  .pg-header { grid-column: 1 / -1; background: #4f46e5; padding: 10px; border-radius: 6px; text-align: center; }\n  .pg-sidebar { background: #1e293b; padding: 10px; border-radius: 6px; font-size: 13px; }\n  .pg-main { background: #1e293b; padding: 10px; border-radius: 6px; font-size: 13px; }\n  .pg-footer { grid-column: 1 / -1; background: #334155; padding: 8px; border-radius: 6px; text-align: center; font-size: 12px; color: #94a3b8; }\n</style>\n</head>\n<body>\n\n  <h1>CSS Grid</h1>\n\n  <h2>3-Column Card Grid</h2>\n  <div class=\"card-grid\">\n    <div class=\"card\"><h3>HTML</h3><p>Structure</p></div>\n    <div class=\"card\"><h3>CSS</h3><p>Styling</p></div>\n    <div class=\"card\"><h3>JavaScript</h3><p>Behavior</p></div>\n    <div class=\"card\"><h3>Python</h3><p>Backend</p></div>\n    <div class=\"card\"><h3>SQL</h3><p>Database</p></div>\n    <div class=\"card\"><h3>Git</h3><p>Version Control</p></div>\n  </div>\n\n  <h2>Page Layout (sidebar + main)</h2>\n  <div class=\"page-layout\">\n    <div class=\"pg-header\">Header (spans full width)</div>\n    <div class=\"pg-sidebar\">Sidebar</div>\n    <div class=\"pg-main\">Main Content</div>\n    <div class=\"pg-footer\">Footer (spans full width)</div>\n  </div>\n\n</body>\n</html>"
    },

    18 => {
      body: <<~'HTML',
        <div class="lc-intro">
          <p><strong>Responsive design</strong> makes your website look great on all screen sizes — from mobile phones to 4K monitors. The key tool is the <strong>CSS media query</strong>.</p>
        </div>
        <div class="lc-section">
          <h2>Media Query Syntax</h2>
          <div class="lc-code-block"><pre><code>/* Apply styles ONLY when screen is 768px or less */
@media (max-width: 768px) {
  .grid {
    grid-template-columns: 1fr; /* Stack to one column */
  }
  .sidebar {
    display: none; /* Hide sidebar on mobile */
  }
}

/* Apply styles ONLY for screens wider than 1200px */
@media (min-width: 1200px) {
  .container {
    max-width: 1200px;
    margin: 0 auto;
  }
}</code></pre></div>
        </div>
        <div class="lc-section">
          <h2>Common Breakpoints</h2>
          <table class="lc-table">
            <thead><tr><th>Device</th><th>Breakpoint</th><th>Common Use</th></tr></thead>
            <tbody>
              <tr><td>Mobile</td><td><code>max-width: 480px</code></td><td>Small phones</td></tr>
              <tr><td>Tablet</td><td><code>max-width: 768px</code></td><td>Tablets, landscape phones</td></tr>
              <tr><td>Desktop</td><td><code>min-width: 1024px</code></td><td>Laptops</td></tr>
              <tr><td>Large</td><td><code>min-width: 1280px</code></td><td>Wide monitors</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-section">
          <h2>The Viewport Meta Tag</h2>
          <div class="lc-code-block"><pre><code>&lt;!-- Required in &lt;head&gt; for mobile responsiveness --&gt;
&lt;meta name="viewport" content="width=device-width, initial-scale=1.0"&gt;</code></pre></div>
          <p>Without this, mobile browsers zoom out to show the desktop layout. Always include it!</p>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p><strong>Mobile-first approach:</strong> Write your default CSS for mobile, then use <code>min-width</code> media queries to add styles for larger screens. This is considered best practice.</p></div>
      HTML
      starter_code: "<!DOCTYPE html>\n<html>\n<head>\n<title>Responsive Design</title>\n<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n<style>\n  * { box-sizing: border-box; }\n  body { font-family: sans-serif; margin: 0; padding: 16px; background: #f9fafb; }\n\n  .header { background: #4f46e5; color: white; padding: 16px 24px; border-radius: 8px; margin-bottom: 16px; }\n\n  /* Default: 3 columns */\n  .grid {\n    display: grid;\n    grid-template-columns: repeat(3, 1fr);\n    gap: 12px;\n  }\n\n  .card { background: white; border-radius: 8px; padding: 16px; border: 1px solid #e5e7eb; }\n  .card h3 { margin: 0 0 6px; color: #4f46e5; }\n  .card p  { margin: 0; font-size: 13px; color: #6b7280; }\n\n  /* Tablet: 2 columns */\n  @media (max-width: 768px) {\n    .grid {\n      grid-template-columns: repeat(2, 1fr);\n    }\n  }\n\n  /* Mobile: 1 column */\n  @media (max-width: 480px) {\n    .grid {\n      grid-template-columns: 1fr;\n    }\n    .header h1 { font-size: 20px; }\n  }\n\n</style>\n</head>\n<body>\n\n  <div class=\"header\">\n    <h1>Responsive Grid</h1>\n    <p>Resize the preview to see the layout change!</p>\n  </div>\n\n  <div class=\"grid\">\n    <div class=\"card\"><h3>HTML & CSS</h3><p>Structure and Style</p></div>\n    <div class=\"card\"><h3>JavaScript</h3><p>Interactivity</p></div>\n    <div class=\"card\"><h3>Python</h3><p>Backend Logic</p></div>\n    <div class=\"card\"><h3>Machine Learning</h3><p>AI & Predictions</p></div>\n    <div class=\"card\"><h3>Data Science</h3><p>Insights from Data</p></div>\n    <div class=\"card\"><h3>AI</h3><p>The Future</p></div>\n  </div>\n\n</body>\n</html>"
    },

    19 => {
      body: <<~'HTML',
        <div class="lc-intro">
          <p>CSS <strong>transitions</strong> and <strong>animations</strong> add movement and life to web pages. Instead of changes happening instantly, they happen <em>smoothly over time</em>.</p>
        </div>
        <div class="lc-section">
          <h2>CSS Transitions</h2>
          <p>Transitions animate a change from one CSS state to another (like on hover):</p>
          <div class="lc-code-block"><pre><code>.button {
  background: #4f46e5;
  transition: background 0.3s ease, transform 0.2s ease;
}

.button:hover {
  background: #7c3aed;
  transform: translateY(-3px); /* Move up 3px */
}</code></pre></div>
          <p>The <code>transition</code> property has 3 parts: <code>property duration timing-function</code></p>
        </div>
        <div class="lc-section">
          <h2>CSS Keyframe Animations</h2>
          <div class="lc-code-block"><pre><code>/* Define the animation */
@keyframes pulse {
  0%   { transform: scale(1); }
  50%  { transform: scale(1.1); }
  100% { transform: scale(1); }
}

/* Apply it */
.icon {
  animation: pulse 2s ease-in-out infinite;
}</code></pre></div>
        </div>
        <div class="lc-section">
          <h2>Common Transform Functions</h2>
          <table class="lc-table">
            <thead><tr><th>Transform</th><th>Effect</th></tr></thead>
            <tbody>
              <tr><td><code>translateX(20px)</code></td><td>Move right 20px</td></tr>
              <tr><td><code>translateY(-10px)</code></td><td>Move up 10px</td></tr>
              <tr><td><code>scale(1.2)</code></td><td>Scale to 120%</td></tr>
              <tr><td><code>rotate(45deg)</code></td><td>Rotate 45 degrees</td></tr>
              <tr><td><code>skewX(10deg)</code></td><td>Skew horizontally</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>Only animate <code>transform</code> and <code>opacity</code> for the smoothest performance — the browser can GPU-accelerate these. Avoid animating properties like <code>width</code>, <code>height</code>, or <code>top</code>.</p></div>
      HTML
      starter_code: "<!DOCTYPE html>\n<html>\n<head>\n<title>CSS Animations</title>\n<style>\n  * { box-sizing: border-box; }\n  body { font-family: sans-serif; background: #0f0f1a; color: white; padding: 30px; }\n\n  /* Transition on hover */\n  .btn {\n    display: inline-block;\n    padding: 14px 28px;\n    background: #4f46e5;\n    color: white;\n    border-radius: 8px;\n    font-size: 16px;\n    font-weight: bold;\n    cursor: pointer;\n    border: none;\n    transition: background 0.3s ease, transform 0.2s ease, box-shadow 0.3s ease;\n    margin: 8px;\n  }\n  .btn:hover {\n    background: #7c3aed;\n    transform: translateY(-4px);\n    box-shadow: 0 8px 25px rgba(124, 58, 237, 0.5);\n  }\n\n  /* Keyframe animation */\n  @keyframes fadeInUp {\n    from { opacity: 0; transform: translateY(20px); }\n    to   { opacity: 1; transform: translateY(0); }\n  }\n\n  @keyframes spin {\n    from { transform: rotate(0deg); }\n    to   { transform: rotate(360deg); }\n  }\n\n  @keyframes pulse {\n    0%, 100% { transform: scale(1); }\n    50%       { transform: scale(1.15); }\n  }\n\n  .fade-in { animation: fadeInUp 0.8s ease forwards; }\n  .spinner { width: 40px; height: 40px; border: 4px solid #4f46e5; border-top-color: transparent; border-radius: 50%; animation: spin 1s linear infinite; margin: 20px auto; }\n  .pulse-box { width: 80px; height: 80px; background: #4f46e5; border-radius: 50%; animation: pulse 2s ease-in-out infinite; margin: 20px auto; display: flex; align-items: center; justify-content: center; font-size: 24px; }\n\n</style>\n</head>\n<body>\n\n  <div class=\"fade-in\">\n    <h1>CSS Animations</h1>\n    <p>This heading faded in using @keyframes!</p>\n  </div>\n\n  <h2>Hover Buttons (transition)</h2>\n  <button class=\"btn\">Hover Me!</button>\n  <button class=\"btn\">And Me!</button>\n\n  <h2>Loading Spinner (@keyframes + animation)</h2>\n  <div class=\"spinner\"></div>\n\n  <h2>Pulse Animation</h2>\n  <div class=\"pulse-box\">🧠</div>\n\n</body>\n</html>"
    },

    20 => {
      body: <<~'HTML',
        <div class="lc-intro">
          <p>Congratulations on completing the HTML &amp; CSS course! This final lesson reviews every key concept you have learned and shows how they work together to build a complete web page.</p>
        </div>
        <div class="lc-section">
          <h2>HTML Concepts Covered</h2>
          <ul class="lc-list lc-list-check">
            <li>Document structure: DOCTYPE, html, head, body</li>
            <li>Text tags: headings, paragraphs, strong, em</li>
            <li>Links with &lt;a href&gt; and images with &lt;img src&gt;</li>
            <li>Lists: &lt;ul&gt;, &lt;ol&gt;, &lt;li&gt;</li>
            <li>Tables: &lt;table&gt;, &lt;tr&gt;, &lt;th&gt;, &lt;td&gt;</li>
            <li>Forms: &lt;form&gt;, &lt;input&gt;, &lt;label&gt;, &lt;select&gt;</li>
            <li>Semantic HTML5: header, nav, main, section, article, footer</li>
          </ul>
        </div>
        <div class="lc-section">
          <h2>CSS Concepts Covered</h2>
          <ul class="lc-list lc-list-check">
            <li>Adding CSS: inline, internal &lt;style&gt;, external .css file</li>
            <li>Selectors: element, class, ID, pseudo-classes</li>
            <li>Colors: named, hex, rgb, rgba, hsl</li>
            <li>The Box Model: content, padding, border, margin</li>
            <li>Typography: font-family, font-size, line-height</li>
            <li>Flexbox: display: flex, justify-content, align-items</li>
            <li>Grid: grid-template-columns, repeat(), fr unit</li>
            <li>Responsive Design: media queries, breakpoints</li>
            <li>Animations: transition, @keyframes</li>
          </ul>
        </div>
        <div class="lc-section">
          <h2>The Editor Below: Your Final Challenge</h2>
          <p>The starter code is a <strong>complete mini website</strong> combining everything you have learned. Study it, customize it, and make it your own!</p>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">🎉</span><p><strong>What's Next?</strong> Take the JavaScript course to add interactivity, or dive into Python for backend development. The web stack is: HTML → CSS → JavaScript → Backend!</p></div>
      HTML
      starter_code: "<!DOCTYPE html>\n<html lang=\"en\">\n<head>\n<meta charset=\"UTF-8\">\n<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n<title>My Portfolio</title>\n<style>\n  * { box-sizing: border-box; margin: 0; padding: 0; }\n  body { font-family: sans-serif; background: #0f0f1a; color: #e2e0f0; }\n\n  header { background: linear-gradient(135deg, #4f46e5, #7c3aed); padding: 60px 24px; text-align: center; }\n  header h1 { font-size: 2.5rem; font-weight: 800; margin-bottom: 8px; }\n  header p { font-size: 1.1rem; opacity: 0.85; }\n\n  nav { background: #1a1a2e; padding: 12px 24px; display: flex; justify-content: center; gap: 24px; }\n  nav a { color: #818cf8; text-decoration: none; font-weight: 600; transition: color 0.2s; }\n  nav a:hover { color: white; }\n\n  main { max-width: 960px; margin: 40px auto; padding: 0 24px; }\n  section { margin-bottom: 48px; }\n  section h2 { font-size: 1.5rem; color: #818cf8; margin-bottom: 20px; border-bottom: 2px solid #2a2a4a; padding-bottom: 8px; }\n\n  .skills-grid { display: grid; grid-template-columns: repeat(3, 1fr); gap: 16px; }\n  .skill-card { background: #1e1e3a; border-radius: 10px; padding: 20px; text-align: center; border: 1px solid #2a2a4a; transition: transform 0.2s, border-color 0.2s; }\n  .skill-card:hover { transform: translateY(-4px); border-color: #4f46e5; }\n  .skill-icon { font-size: 2rem; margin-bottom: 8px; }\n  .skill-card h3 { font-size: 1rem; color: #c4b5fd; }\n\n  .about-text { background: #1e1e3a; border-radius: 10px; padding: 24px; border-left: 4px solid #4f46e5; line-height: 1.7; color: #9b99b8; }\n\n  footer { background: #0a0a15; padding: 24px; text-align: center; color: #4b4b6b; font-size: 14px; }\n\n  @media (max-width: 600px) {\n    .skills-grid { grid-template-columns: 1fr; }\n  }\n</style>\n</head>\n<body>\n\n  <header>\n    <h1>Hi, I'm a Web Developer 👋</h1>\n    <p>I build beautiful websites with HTML, CSS & JavaScript</p>\n  </header>\n\n  <nav>\n    <a href=\"#about\">About</a>\n    <a href=\"#skills\">Skills</a>\n    <a href=\"#contact\">Contact</a>\n  </nav>\n\n  <main>\n    <section id=\"about\">\n      <h2>About Me</h2>\n      <div class=\"about-text\">\n        <p>I completed the HTML & CSS course at AI Academy and I'm passionate about creating beautiful web experiences. I love the combination of creativity and logic that web development offers.</p>\n      </div>\n    </section>\n\n    <section id=\"skills\">\n      <h2>My Skills</h2>\n      <div class=\"skills-grid\">\n        <div class=\"skill-card\"><div class=\"skill-icon\">🌐</div><h3>HTML</h3></div>\n        <div class=\"skill-card\"><div class=\"skill-icon\">🎨</div><h3>CSS</h3></div>\n        <div class=\"skill-card\"><div class=\"skill-icon\">⚡</div><h3>JavaScript</h3></div>\n        <div class=\"skill-card\"><div class=\"skill-icon\">🐍</div><h3>Python</h3></div>\n        <div class=\"skill-card\"><div class=\"skill-icon\">🤖</div><h3>AI</h3></div>\n        <div class=\"skill-card\"><div class=\"skill-icon\">📊</div><h3>Data Science</h3></div>\n      </div>\n    </section>\n  </main>\n\n  <footer>\n    <p>Built with HTML & CSS — AI Academy Graduate 🎓</p>\n  </footer>\n\n</body>\n</html>"
    }
  }.freeze
end

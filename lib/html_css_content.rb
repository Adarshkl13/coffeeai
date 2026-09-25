module HtmlCssContent
  LESSONS = {
    1 => {
      body: <<~'HTML',
        <div class="lc-intro">
          <p><strong>HTML</strong> (HyperText Markup Language) is the language that describes the <strong>structure and meaning</strong> of a web page: "this is a heading", "this is a paragraph", "this is a link". It does not decide how things look — the browser gives each element a plain default look, and CSS changes it. Every site you use, from IRCTC to YouTube, is HTML underneath. In this lesson you will learn how an element is built, how to nest elements, and the standard boilerplate every page starts with.</p>
        </div>
        <div class="lc-section">
          <h2>HTML, CSS and JavaScript: Three Jobs</h2>
          <p>A web page is usually built from three languages. Each one has a separate job, and keeping them separate makes pages easier to build and fix.</p>
          <table class="lc-table">
            <thead><tr><th>Language</th><th>Job</th><th>Example</th><th>House analogy</th></tr></thead>
            <tbody>
              <tr><td>HTML</td><td>Structure and meaning of content</td><td><code>&lt;h1&gt;Chai Menu&lt;/h1&gt;</code></td><td>Walls and rooms</td></tr>
              <tr><td>CSS</td><td>Presentation: colours, fonts, layout</td><td><code>h1 { color: brown; }</code></td><td>Paint and furniture</td></tr>
              <tr><td>JavaScript</td><td>Behaviour: reacting to clicks, loading data</td><td><code>button.onclick = order;</code></td><td>Electricity and switches</td></tr>
            </tbody>
          </table>
          <p>So when you choose an HTML element, ask "what <em>is</em> this content?", not "how big or bold should it look?". Looks are CSS's job.</p>
        </div>
        <div class="lc-section">
          <h2>Anatomy of an Element</h2>
          <div class="lc-anatomy">
            <div class="lc-anatomy-row">
              <span class="lc-tag-open">&lt;a href="menu.html"&gt;</span>
              <span class="lc-tag-content">Chai Menu</span>
              <span class="lc-tag-close">&lt;/a&gt;</span>
            </div>
            <div class="lc-anatomy-labels">
              <span>Opening tag + attribute</span><span>Content</span><span>Closing tag</span>
            </div>
          </div>
          <ul class="lc-list">
            <li><strong>Opening tag</strong> <code>&lt;a&gt;</code> — the element's name inside angle brackets.</li>
            <li><strong>Content</strong> — text or other elements between the tags.</li>
            <li><strong>Closing tag</strong> <code>&lt;/a&gt;</code> — the same name with a forward slash.</li>
            <li><strong>Attributes</strong> — extra information written only in the opening tag as <code>name="value"</code>, separated by spaces: <code>&lt;a href="menu.html" title="Our menu"&gt;</code>.</li>
            <li>Always put attribute values in quotes. Quotes are sometimes optional, but a value with a space breaks without them.</li>
            <li>Some attributes are <strong>boolean</strong>: just writing the name switches them on, e.g. <code>&lt;input required&gt;</code>.</li>
            <li>Tag names are not case-sensitive, but the convention is lowercase.</li>
          </ul>
        </div>
        <div class="lc-section">
          <h2>Nesting Elements Correctly</h2>
          <p>Elements can contain other elements. The outer one is the <strong>parent</strong>, the inner one is the <strong>child</strong>. The rule: <strong>the last tag you opened is the first one you close</strong> — like boxes inside boxes.</p>
          <div class="lc-two-col">
            <div>
              <div class="lc-col-label lc-bad">✗ Avoid: tags overlap</div>
              <div class="lc-code-block"><pre><code>&lt;p&gt;Try our &lt;strong&gt;masala chai&lt;/p&gt;&lt;/strong&gt;</code></pre></div>
            </div>
            <div>
              <div class="lc-col-label lc-good">✓ Correct: inner closes first</div>
              <div class="lc-code-block"><pre><code>&lt;p&gt;Try our &lt;strong&gt;masala chai&lt;/strong&gt;&lt;/p&gt;</code></pre></div>
            </div>
          </div>
          <p>Browsers "repair" broken nesting using fixed rules, but the repaired page is often not what you meant — text can end up bold or outside the paragraph. Indent child elements by two spaces so the structure is easy to see.</p>
        </div>
        <div class="lc-section">
          <h2>Void Elements (No Closing Tag)</h2>
          <p>A few elements can never have content, so they have <strong>no closing tag</strong>. They are called <strong>void elements</strong>.</p>
          <table class="lc-table">
            <thead><tr><th>Element</th><th>What it does</th><th>Example</th></tr></thead>
            <tbody>
              <tr><td><code>&lt;br&gt;</code></td><td>Line break inside text</td><td><code>MG Road&lt;br&gt;Bengaluru</code></td></tr>
              <tr><td><code>&lt;hr&gt;</code></td><td>Thematic break between topics</td><td><code>&lt;hr&gt;</code></td></tr>
              <tr><td><code>&lt;img&gt;</code></td><td>Embeds an image</td><td><code>&lt;img src="cup.png" alt="Cup of chai"&gt;</code></td></tr>
              <tr><td><code>&lt;input&gt;</code></td><td>Form field</td><td><code>&lt;input type="email"&gt;</code></td></tr>
              <tr><td><code>&lt;meta&gt;</code></td><td>Information about the page (in head)</td><td><code>&lt;meta charset="UTF-8"&gt;</code></td></tr>
              <tr><td><code>&lt;link&gt;</code></td><td>Connects an external file, e.g. CSS</td><td><code>&lt;link rel="stylesheet" href="style.css"&gt;</code></td></tr>
            </tbody>
          </table>
          <p>You may see <code>&lt;br /&gt;</code> with a slash. In HTML that slash is allowed on void elements but does nothing, so it is not needed. Never write a closing tag like <code>&lt;/img&gt;</code>.</p>
        </div>
        <div class="lc-section">
          <h2>Comments</h2>
          <p>A comment is a note for humans. The browser does not display it.</p>
          <div class="lc-code-block"><pre><code>&lt;!-- Menu section starts here --&gt;<br>&lt;h2&gt;Menu&lt;/h2&gt;</code></pre></div>
          <p>Comments are still visible to anyone who uses "View Source", so never put passwords or private notes in them.</p>
        </div>
        <div class="lc-section">
          <h2>The Standard Boilerplate</h2>
          <p>Every HTML page starts with the same skeleton. Here is a complete, valid page:</p>
          <div class="lc-code-block"><pre><code>&lt;!DOCTYPE html&gt;<br>&lt;html lang="en"&gt;<br>  &lt;head&gt;<br>    &lt;meta charset="UTF-8"&gt;<br>    &lt;meta name="viewport" content="width=device-width, initial-scale=1.0"&gt;<br>    &lt;title&gt;Sharma Chai Point – Menu&lt;/title&gt;<br>  &lt;/head&gt;<br>  &lt;body&gt;<br>    &lt;h1&gt;Sharma Chai Point&lt;/h1&gt;<br>    &lt;p&gt;Cutting chai for just ₹15.&lt;/p&gt;<br>  &lt;/body&gt;<br>&lt;/html&gt;</code></pre></div>
          <p><strong>What you will see:</strong> a white page with a large bold heading "Sharma Chai Point" and one line of normal text below it, "Cutting chai for just ₹15." with the ₹ sign shown correctly. The browser tab reads "Sharma Chai Point – Menu". Nothing from the <code>&lt;head&gt;</code> appears on the page itself.</p>
          <table class="lc-table">
            <thead><tr><th>Part</th><th>What it does</th></tr></thead>
            <tbody>
              <tr><td><code>&lt;!DOCTYPE html&gt;</code></td><td>Tells the browser this is modern HTML, so it uses <strong>standards mode</strong>. Without it, browsers fall back to "quirks mode", which copies old browser bugs.</td></tr>
              <tr><td><code>&lt;html lang="en"&gt;</code></td><td>The root element that wraps everything. <code>lang</code> tells screen readers and translation tools the page language (use <code>lang="hi"</code> for a Hindi page).</td></tr>
              <tr><td><code>&lt;head&gt;</code></td><td>Information <em>about</em> the page. Not shown on the page.</td></tr>
              <tr><td><code>&lt;meta charset="UTF-8"&gt;</code></td><td>Sets the character encoding so ₹, emoji and हिन्दी display correctly. Keep it as the first thing in the head.</td></tr>
              <tr><td><code>&lt;meta name="viewport" …&gt;</code></td><td>Makes phones lay out the page at the device's real width, instead of a wide desktop-sized page shrunk down to tiny text.</td></tr>
              <tr><td><code>&lt;title&gt;</code></td><td>Text for the browser tab, bookmarks and search results.</td></tr>
              <tr><td><code>&lt;body&gt;</code></td><td>Everything the visitor sees.</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-section">
          <h2>Checking Your HTML: DevTools and the Validator</h2>
          <ul class="lc-list lc-list-check">
            <li><strong>DevTools "Inspect":</strong> right-click any part of a page and choose <em>Inspect</em> (or press F12, Ctrl+Shift+I on Windows, Cmd+Option+I on Mac). The Elements panel shows the page's element tree as the browser understood it.</li>
            <li>Browsers quietly fix many mistakes, so a page can look fine and still be broken. Inspect shows you the repaired version, which helps you spot where a tag was closed in the wrong place.</li>
            <li><strong>W3C Validator:</strong> go to <code>validator.w3.org/nu</code>, choose "Text input", paste your code and click Check. It lists every error with its line number.</li>
          </ul>
        </div>
        <div class="lc-section">
          <h2>Common Mistakes</h2>
          <ul class="lc-list">
            <li><strong>Forgetting a closing tag</strong>, e.g. <code>&lt;strong&gt;</code> without <code>&lt;/strong&gt;</code> → the rest of the paragraph turns bold. Fix: close every non-void element.</li>
            <li><strong>Overlapping tags</strong> like <code>&lt;p&gt;&lt;em&gt;…&lt;/p&gt;&lt;/em&gt;</code> → close the inner element first: <code>&lt;/em&gt;&lt;/p&gt;</code>.</li>
            <li><strong>Unquoted values with spaces</strong>: <code>title=Chai Menu</code> makes the title just "Chai" → write <code>title="Chai Menu"</code>.</li>
            <li><strong>Missing <code>meta charset</code></strong> → ₹ may show as garbage like "â‚¹". Fix: put <code>&lt;meta charset="UTF-8"&gt;</code> first in the head.</li>
            <li><strong>Choosing an element for its looks</strong>, e.g. <code>&lt;h1&gt;</code> just to make text big → choose by meaning and use CSS for size.</li>
          </ul>
        </div>
        <div class="lc-section">
          <h2>Try It</h2>
          <ol class="lc-list">
            <li>In the starter, find the paragraph under "2. Nesting". Delete its <code>&lt;/strong&gt;</code> tag and watch the preview: the rest of the text becomes bold. Put the tag back.</li>
            <li>Under "3. Void elements", add another <code>&lt;br&gt;</code> after "Pune" and type a PIN code such as 411001. It appears on a new line.</li>
            <li>Add a comment <code>&lt;!-- my note --&gt;</code> anywhere in the body. Nothing changes in the preview.</li>
            <li>Right-click the heading in the preview and choose Inspect. Find the <code>&lt;h1&gt;</code> in the Elements panel and see how the body's children are nested.</li>
          </ol>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p><strong>Tip:</strong> Most code editors type the boilerplate for you: in VS Code, type <code>!</code> in an empty .html file and press Tab. Still learn what each line does, because you will need to edit the <code>lang</code> and <code>title</code> on every page.</p></div>
      HTML
      starter_code: <<~'HTML'
        <!DOCTYPE html>
        <html lang="en">
        <head>
          <meta charset="UTF-8">
          <meta name="viewport" content="width=device-width, initial-scale=1.0">
          <title>Sharma Chai Point</title>
          <style>
            body { font-family: system-ui, sans-serif; margin: 1.5rem; line-height: 1.5; }
            .label { color: #9a3412; font-size: 0.8rem; text-transform: uppercase; margin-top: 1.5rem; }
          </style>
        </head>
        <body>
          <h1>Sharma Chai Point</h1>

          <p class="label">1. An element with an attribute</p>
          <p>See our <a href="#menu" title="Jump to the menu">chai menu</a> below.</p>

          <p class="label">2. Nesting (inner tag closes first)</p>
          <p>Try our <strong>masala chai</strong> with fresh ginger.</p>

          <p class="label">3. Void elements: br and hr (no closing tag)</p>
          <p>FC Road<br>Pune</p>
          <hr>

          <p class="label">4. A comment (you will not see it below)</p>
          <!-- This note is only visible in the code, not on the page. -->

          <h2 id="menu">Menu</h2>
          <p>Cutting chai: ₹15</p>
          <p>Masala chai: ₹25</p>
        </body>
        </html>
      HTML
    },

    2 => {
      body: <<~'HTML',
        <div class="lc-intro">
          <p>Most of the web is text. HTML gives you elements to mark what each piece of text <strong>means</strong>: a heading, a paragraph, an important warning, a keyboard shortcut, a quotation. Screen readers, search engines and browser "reader mode" all use this meaning. In this lesson you will build a clear heading outline, format text with the right elements, and show special characters like <code>&lt;</code> and ₹.</p>
        </div>
        <div class="lc-section">
          <h2>Headings Are an Outline</h2>
          <p>There are six heading levels, <code>&lt;h1&gt;</code> to <code>&lt;h6&gt;</code>. Treat them like the outline of a report, not as font sizes.</p>
          <div class="lc-code-block"><pre><code>&lt;h1&gt;TechFest 2026&lt;/h1&gt;<br>  &lt;h2&gt;Events&lt;/h2&gt;<br>    &lt;h3&gt;Hackathon&lt;/h3&gt;<br>    &lt;h3&gt;Robo Race&lt;/h3&gt;<br>  &lt;h2&gt;Registration&lt;/h2&gt;</code></pre></div>
          <p><strong>What you will see:</strong> "TechFest 2026" as the biggest bold heading, "Events" and "Registration" a size smaller, and "Hackathon" and "Robo Race" smaller again. (The indentation in the code is only for readability; the browser ignores it.)</p>
          <ul class="lc-list lc-list-check">
            <li>Use <strong>one <code>&lt;h1&gt;</code></strong> per page for its main topic (a strong convention that helps users and search engines).</li>
            <li><strong>Don't skip levels</strong> going down: after an <code>&lt;h2&gt;</code> comes an <code>&lt;h3&gt;</code>, not an <code>&lt;h5&gt;</code>. Screen-reader users jump between headings, and gaps make them think content is missing.</li>
            <li><strong>Don't pick a level for its size.</strong> If a heading looks too big, keep the correct level and change its size with CSS.</li>
          </ul>
        </div>
        <div class="lc-section">
          <h2>Paragraphs, Whitespace and Line Breaks</h2>
          <p>A <code>&lt;p&gt;</code> holds one paragraph. Inside normal text, the browser <strong>collapses whitespace</strong>: any run of spaces, tabs and new lines becomes a single space.</p>
          <div class="lc-code-block"><pre><code>&lt;p&gt;Chai      is<br><br>      ready.&lt;/p&gt;<br>&lt;p&gt;Chai is ready.&lt;/p&gt;</code></pre></div>
          <p><strong>What you will see:</strong> two identical lines, both reading "Chai is ready." The extra spaces and blank line in the first one disappear.</p>
          <table class="lc-table">
            <thead><tr><th>You want…</th><th>Use</th><th>Why</th></tr></thead>
            <tbody>
              <tr><td>A new idea or topic</td><td>A new <code>&lt;p&gt;</code></td><td>Paragraphs get spacing and are separate blocks of meaning</td></tr>
              <tr><td>A line break <em>inside</em> one thing (address, poem)</td><td><code>&lt;br&gt;</code></td><td>The lines belong together</td></tr>
              <tr><td>More space between blocks</td><td>CSS <code>margin</code></td><td>Stacking <code>&lt;br&gt;&lt;br&gt;&lt;br&gt;</code> for spacing is a layout hack</td></tr>
              <tr><td>A change of topic within a section</td><td><code>&lt;hr&gt;</code></td><td>A thematic break, drawn as a line by default</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-section">
          <h2>Inline Text Elements: Choose by Meaning</h2>
          <p>Some pairs look the same by default but mean different things. Screen readers and search engines care about the meaning.</p>
          <table class="lc-table">
            <thead><tr><th>Element</th><th>Meaning</th><th>Default look</th></tr></thead>
            <tbody>
              <tr><td><code>&lt;strong&gt;</code></td><td>Strong importance, seriousness or urgency: "Do <strong>not</strong> share your OTP"</td><td>Bold</td></tr>
              <tr><td><code>&lt;b&gt;</code></td><td>Draws attention without extra importance (keywords, product names)</td><td>Bold</td></tr>
              <tr><td><code>&lt;em&gt;</code></td><td>Stress emphasis that changes the meaning of a sentence: "I <em>said</em> chai"</td><td>Italic</td></tr>
              <tr><td><code>&lt;i&gt;</code></td><td>Different voice: technical terms, foreign words, a thought: <i>jugaad</i></td><td>Italic</td></tr>
              <tr><td><code>&lt;mark&gt;</code></td><td>Highlighted because it is relevant (e.g. a search match)</td><td>Yellow background</td></tr>
              <tr><td><code>&lt;small&gt;</code></td><td>Side comments and fine print: "*T&amp;C apply"</td><td>Smaller text</td></tr>
              <tr><td><code>&lt;del&gt;</code> / <code>&lt;ins&gt;</code></td><td>Text removed / added in an edit: <del>₹30</del> <ins>₹25</ins></td><td>Strikethrough / underline</td></tr>
              <tr><td><code>&lt;sub&gt;</code> / <code>&lt;sup&gt;</code></td><td>Subscript / superscript: H<sub>2</sub>O, x<sup>2</sup></td><td>Lowered / raised</td></tr>
              <tr><td><code>&lt;code&gt;</code></td><td>A piece of computer code</td><td>Monospace</td></tr>
              <tr><td><code>&lt;kbd&gt;</code></td><td>Keys the user presses: <kbd>Ctrl</kbd> + <kbd>S</kbd></td><td>Monospace</td></tr>
              <tr><td><code>&lt;abbr title="…"&gt;</code></td><td>Abbreviation; the title gives the full form on hover</td><td>Often dotted underline</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-section">
          <h2>Quotations and Citations</h2>
          <ul class="lc-list">
            <li><code>&lt;blockquote&gt;</code> — a long quotation shown as its own block (indented by default). Its optional <code>cite</code> attribute holds the source URL.</li>
            <li><code>&lt;q&gt;</code> — a short quotation inside a sentence. The browser adds the quotation marks for you.</li>
            <li><code>&lt;cite&gt;</code> — the <strong>title of a work</strong> (a book, film, song, article), shown in italics.</li>
          </ul>
          <div class="lc-code-block"><pre><code>&lt;p&gt;In &lt;cite&gt;Wings of Fire&lt;/cite&gt;, Kalam writes about his childhood.&lt;/p&gt;<br>&lt;p&gt;My coach says &lt;q&gt;Watch the ball&lt;/q&gt; every day.&lt;/p&gt;</code></pre></div>
          <p><strong>What you will see:</strong> "Wings of Fire" in italics, and the words Watch the ball surrounded by quotation marks that you did not type.</p>
        </div>
        <div class="lc-section">
          <h2>Block vs Inline (a Preview)</h2>
          <p><strong>Block</strong> elements (<code>h1</code>–<code>h6</code>, <code>p</code>, <code>blockquote</code>, <code>hr</code>) start on a new line and take the full width. <strong>Inline</strong> elements (<code>strong</code>, <code>em</code>, <code>a</code>, <code>code</code>, <code>mark</code>) sit inside a line of text. So a <code>&lt;strong&gt;</code> never pushes text onto a new line, but a <code>&lt;p&gt;</code> always does. You will control this with CSS in the Box Model lesson.</p>
        </div>
        <div class="lc-section">
          <h2>Character Entities</h2>
          <p>Some characters have special meaning in HTML. To show them as text, write an <strong>entity</strong>: it starts with <code>&amp;</code> and ends with <code>;</code>.</p>
          <table class="lc-table">
            <thead><tr><th>You write</th><th>You see</th><th>When to use</th></tr></thead>
            <tbody>
              <tr><td><code>&amp;lt;</code> and <code>&amp;gt;</code></td><td>&lt; and &gt;</td><td>Showing tags or maths as text</td></tr>
              <tr><td><code>&amp;amp;</code></td><td>&amp;</td><td>Any literal ampersand</td></tr>
              <tr><td><code>&amp;nbsp;</code></td><td>(a space)</td><td>A non-breaking space, so "₹&amp;nbsp;500" never splits across two lines</td></tr>
              <tr><td><code>&amp;copy;</code></td><td>&copy;</td><td>Copyright notices</td></tr>
              <tr><td><code>&amp;#8377;</code></td><td>&#8377;</td><td>Rupee sign by its number (with UTF-8 you can also type ₹ directly)</td></tr>
            </tbody>
          </table>
          <div class="lc-code-block"><pre><code>&lt;p&gt;Use &amp;lt;p&amp;gt; for paragraphs. Tea &amp;amp; snacks: &amp;#8377;40&lt;/p&gt;</code></pre></div>
          <p><strong>What you will see:</strong> Use &lt;p&gt; for paragraphs. Tea &amp; snacks: ₹40</p>
        </div>
        <div class="lc-section">
          <h2>Common Mistakes</h2>
          <ul class="lc-list">
            <li><strong>Using <code>&lt;h3&gt;</code> because <code>&lt;h2&gt;</code> looks too big</strong> → keep the correct level and resize it with CSS.</li>
            <li><strong>Pressing Enter or Space many times for layout</strong> → whitespace collapses. Use new paragraphs, and CSS for spacing.</li>
            <li><strong>Using <code>&lt;b&gt;</code> for a warning</strong> → use <code>&lt;strong&gt;</code> when the text is truly important.</li>
            <li><strong>Typing <code>&lt;</code> in text</strong> like "if a &lt;b then", which the browser may read as the start of a tag → write <code>&amp;lt;</code>.</li>
            <li><strong>Using <code>&lt;cite&gt;</code> for a person's name</strong> → <code>&lt;cite&gt;</code> is for the title of a work.</li>
          </ul>
        </div>
        <div class="lc-section">
          <h2>Try It</h2>
          <ol class="lc-list">
            <li>In section 1 of the starter, add an <code>&lt;h3&gt;Quiz Night&lt;/h3&gt;</code> under "Events". It appears smaller than "Events" and larger than normal text.</li>
            <li>In section 2, add ten spaces between two words of the first paragraph. The preview still shows one space.</li>
            <li>In section 3, wrap "last date is 30 September" in <code>&lt;mark&gt;</code>. It gets a yellow highlight.</li>
            <li>In section 4, add <code>&amp;copy; 2026 TechFest</code>. You see "© 2026 TechFest".</li>
          </ol>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p><strong>Tip:</strong> To check your heading outline, read only the headings from top to bottom. If they make sense as a table of contents, your structure is good.</p></div>
      HTML
      starter_code: <<~'HTML'
        <!DOCTYPE html>
        <html lang="en">
        <head>
          <meta charset="UTF-8">
          <meta name="viewport" content="width=device-width, initial-scale=1.0">
          <title>TechFest 2026</title>
          <style>
            body { font-family: system-ui, sans-serif; margin: 1.5rem; line-height: 1.5; }
            .label { color: #9a3412; font-size: 0.8rem; text-transform: uppercase; margin-top: 1.5rem; }
          </style>
        </head>
        <body>
          <h1>TechFest 2026</h1>

          <p class="label">1. Heading outline (h1 → h2 → h3)</p>
          <h2>Events</h2>
          <h3>Hackathon</h3>

          <p class="label">2. Whitespace collapses; br keeps lines together</p>
          <p>Doors     open
             at 9 am.</p>
          <p>Main Auditorium<br>IIT Madras<br>Chennai</p>

          <p class="label">3. Meaning, not looks</p>
          <p><strong>Carry your college ID.</strong> The last date is 30 September.</p>
          <p>Entry fee: <del>₹300</del> <ins>₹200</ins> <small>(early bird)</small></p>
          <p>Save your code with <kbd>Ctrl</kbd> + <kbd>S</kbd>. Formula: E = mc<sup>2</sup>.</p>
          <p>Organised by the <abbr title="Computer Science and Engineering">CSE</abbr> department.</p>
          <blockquote>Code is read much more often than it is written.</blockquote>
          <hr>

          <p class="label">4. Character entities</p>
          <p>Write &lt;h1&gt; only once. Tea &amp; samosa: &#8377;40</p>
        </body>
        </html>
      HTML
    },

    3 => {
      body: <<~'HTML',
        <div class="lc-intro">
          <p>Links connect pages into a <strong>web</strong>, and images make them visual. In this lesson you will write links with the right kind of path, jump to a section of the same page, open email and phone apps, and add images that are accessible, fast and don't make the page jump while it loads.</p>
        </div>
        <div class="lc-section">
          <h2>The Anchor Element</h2>
          <div class="lc-code-block"><pre><code>&lt;a href="https://www.bcci.tv"&gt;Official BCCI website&lt;/a&gt;</code></pre></div>
          <p>The <code>href</code> attribute is the destination. The content between the tags is the clickable <strong>link text</strong>.</p>
        </div>
        <div class="lc-section">
          <h2>Absolute vs Relative Paths</h2>
          <p>Imagine this website folder:</p>
          <div class="lc-code-block"><pre><code>site/<br>  index.html<br>  about.html<br>  pages/<br>    contact.html<br>  images/<br>    logo.png</code></pre></div>
          <table class="lc-table">
            <thead><tr><th>Type</th><th>Example href</th><th>Meaning</th></tr></thead>
            <tbody>
              <tr><td>Absolute URL</td><td><code>https://example.com/menu.html</code></td><td>Full address, including the site. Use for other websites.</td></tr>
              <tr><td>Relative, same folder</td><td><code>about.html</code> or <code>./about.html</code></td><td>A file next to the current page</td></tr>
              <tr><td>Relative, into a folder</td><td><code>pages/contact.html</code></td><td>Go down into <code>pages</code></td></tr>
              <tr><td>Relative, up a folder</td><td><code>../index.html</code></td><td><code>..</code> means "the parent folder"</td></tr>
              <tr><td>Root-relative</td><td><code>/images/logo.png</code></td><td>Starts from the root of the website, wherever the page is</td></tr>
              <tr><td>Fragment</td><td><code>#fees</code></td><td>Jump to the element with <code>id="fees"</code> on this page</td></tr>
              <tr><td>Email / phone</td><td><code>mailto:fest@college.edu</code>, <code>tel:+919876543210</code></td><td>Opens the email app / the phone dialler</td></tr>
            </tbody>
          </table>
          <p><strong>Worked example:</strong> you are editing <code>pages/contact.html</code>. To link to the home page you write <code>href="../index.html"</code> (up one folder, then the file). To show the logo you write <code>src="../images/logo.png"</code>. Writing <code>href="index.html"</code> would look for <code>pages/index.html</code>, which doesn't exist, so the visitor gets a "404 Not Found" page.</p>
        </div>
        <div class="lc-section">
          <h2>Fragment Links, Downloads and New Tabs</h2>
          <div class="lc-code-block"><pre><code>&lt;a href="#fees"&gt;See the fees&lt;/a&gt;<br>...<br>&lt;h2 id="fees"&gt;Fees&lt;/h2&gt;<br><br>&lt;a href="/files/brochure.pdf" download&gt;Download the brochure (PDF, 2 MB)&lt;/a&gt;<br><br>&lt;a href="https://maps.google.com" target="_blank" rel="noopener noreferrer"&gt;<br>  Open the venue map (new tab)<br>&lt;/a&gt;</code></pre></div>
          <p><strong>What you will see:</strong> three underlined blue links. Clicking "See the fees" scrolls the page so the "Fees" heading is at the top. You can also link to a section of another page: <code>about.html#team</code>.</p>
          <ul class="lc-list">
            <li><code>download</code> asks the browser to save the file instead of opening it. It only works for files on the same site (and for <code>data:</code>/<code>blob:</code> URLs).</li>
            <li><code>target="_blank"</code> opens a new tab. <code>rel="noopener"</code> stops the new page from controlling your page through <code>window.opener</code>. Modern browsers already apply noopener to <code>target="_blank"</code> links by default, but writing it is harmless and protects older browsers. <code>noreferrer</code> also hides which page the visitor came from.</li>
            <li>Use new tabs rarely, and say "(new tab)" in the link text so users are not surprised.</li>
          </ul>
        </div>
        <div class="lc-section">
          <h2>Write Descriptive Link Text</h2>
          <div class="lc-two-col">
            <div>
              <div class="lc-col-label lc-bad">✗ Avoid</div>
              <div class="lc-code-block"><pre><code>For the timetable, &lt;a href="tt.pdf"&gt;click here&lt;/a&gt;.</code></pre></div>
            </div>
            <div>
              <div class="lc-col-label lc-good">✓ Better</div>
              <div class="lc-code-block"><pre><code>&lt;a href="tt.pdf"&gt;Download the exam timetable (PDF)&lt;/a&gt;</code></pre></div>
            </div>
          </div>
          <p>Screen-reader users often list all the links on a page. Ten links called "click here" tell them nothing.</p>
        </div>
        <div class="lc-section">
          <h2>Images</h2>
          <div class="lc-code-block"><pre><code>&lt;img src="images/samosa.webp" alt="Two samosas with green chutney"<br>     width="600" height="400" loading="lazy"&gt;</code></pre></div>
          <ul class="lc-list">
            <li><code>src</code> — path to the image file (same path rules as links).</li>
            <li><code>alt</code> — text that replaces the image for screen readers and when the image fails to load. Describe what matters in the image. For a purely decorative image, write <code>alt=""</code> (empty) so screen readers skip it. Leaving <code>alt</code> out completely is an error: some screen readers then read the file name aloud.</li>
            <li><code>width</code> and <code>height</code> — the image's size in pixels, as plain numbers. The browser uses them to <strong>reserve space</strong> before the image downloads, so the text below doesn't jump down (called <em>layout shift</em>). CSS such as <code>max-width: 100%; height: auto;</code> can still resize the image and keep its shape.</li>
            <li><code>loading="lazy"</code> — delays loading until the image is close to the screen. Use it for images further down the page, not for the main image at the top.</li>
          </ul>
          <p>Wrap an image with a caption in <code>&lt;figure&gt;</code>:</p>
          <div class="lc-code-block"><pre><code>&lt;figure&gt;<br>  &lt;img src="team.jpg" alt="Our fest team on the main stage" width="800" height="500"&gt;<br>  &lt;figcaption&gt;TechFest 2026 volunteers&lt;/figcaption&gt;<br>&lt;/figure&gt;</code></pre></div>
          <p><strong>What you will see:</strong> the image, with the caption "TechFest 2026 volunteers" in normal text right below it. Browsers indent a figure slightly by default.</p>
        </div>
        <div class="lc-section">
          <h2>Image Formats</h2>
          <table class="lc-table">
            <thead><tr><th>Format</th><th>Best for</th><th>Notes</th></tr></thead>
            <tbody>
              <tr><td>JPEG</td><td>Photos</td><td>Small files, no transparency</td></tr>
              <tr><td>PNG</td><td>Screenshots, graphics with transparency</td><td>Sharp edges, larger files for photos</td></tr>
              <tr><td>SVG</td><td>Logos, icons, simple drawings</td><td>Vector: sharp at any size; it is text, so it can even be written inside HTML</td></tr>
              <tr><td>WebP</td><td>Photos and graphics</td><td>Usually smaller than JPEG/PNG; supports transparency</td></tr>
              <tr><td>AVIF</td><td>Photos</td><td>Often the smallest; supported by all current major browsers</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-section">
          <h2>Responsive Images (Briefly)</h2>
          <p><code>srcset</code> lists the same image at different widths, and <code>sizes</code> tells the browser how wide the image will be shown. The browser then downloads the smallest file that looks sharp, so a phone doesn't download a huge desktop image.</p>
          <div class="lc-code-block"><pre><code>&lt;img src="hall-800.jpg" alt="College auditorium"<br>     srcset="hall-400.jpg 400w, hall-800.jpg 800w, hall-1600.jpg 1600w"<br>     sizes="(min-width: 800px) 800px, 100vw"<br>     width="800" height="450"&gt;</code></pre></div>
          <p><code>&lt;picture&gt;</code> lets you offer newer formats with a fallback. The browser uses the first <code>&lt;source&gt;</code> it supports, otherwise the <code>&lt;img&gt;</code>:</p>
          <div class="lc-code-block"><pre><code>&lt;picture&gt;<br>  &lt;source srcset="hall.avif" type="image/avif"&gt;<br>  &lt;source srcset="hall.webp" type="image/webp"&gt;<br>  &lt;img src="hall.jpg" alt="College auditorium" width="800" height="450"&gt;<br>&lt;/picture&gt;</code></pre></div>
        </div>
        <div class="lc-section">
          <h2>Video and Audio</h2>
          <div class="lc-code-block"><pre><code>&lt;video src="highlights.mp4" controls width="640" poster="thumb.jpg"&gt;&lt;/video&gt;<br>&lt;audio src="anthem.mp3" controls&gt;&lt;/audio&gt;</code></pre></div>
          <p><code>controls</code> shows play, pause and volume buttons. <code>poster</code> is the picture shown before the video plays. Browsers block autoplay with sound, so <code>autoplay</code> usually needs <code>muted</code> too. Add captions with a <code>&lt;track kind="captions"&gt;</code> inside the video.</p>
        </div>
        <div class="lc-section">
          <h2>Common Mistakes</h2>
          <ul class="lc-list">
            <li><strong>Wrong relative path</strong> (forgetting <code>../</code> from a subfolder) → broken link or image. Fix: count the folders from the <em>current page</em>.</li>
            <li><strong>Missing or useless alt</strong> like <code>alt="image"</code> → describe the content, or use <code>alt=""</code> if it is decorative.</li>
            <li><strong>No width/height on images</strong> → the page jumps as images load. Fix: add the real pixel size.</li>
            <li><strong>Lazy-loading the top image</strong> → it appears later than it should. Fix: only lazy-load images below the first screen.</li>
            <li><strong>Fragment link with no matching id</strong>, e.g. <code>href="#Fees"</code> but <code>id="fees"</code> → ids are case-sensitive, so make them match exactly.</li>
          </ul>
        </div>
        <div class="lc-section">
          <h2>Try It</h2>
          <p>The starter uses images made from inline SVG and a <code>data:</code> URL, so nothing needs to download. In this editor's preview, new tabs and email links are blocked, and clicking <em>any</em> link — even a <code>#</code> link — navigates the preview away, because the preview resolves links against the lesson page's address (press Run again to get it back). To test the jump links, save the starter as <code>links.html</code> on your computer and open it in your browser.</p>
          <ol class="lc-list">
            <li>In your saved <code>links.html</code>, click "Jump to contact". The page scrolls down to the "Contact" heading, and the address bar ends in <code>#contact</code>.</li>
            <li>Change the second image's <code>src</code> to <code>missing.png</code>. The picture is replaced by its alt text "Orange ticket for TechFest". Change it back.</li>
            <li>Change the first image's <code>width</code> to <code>80</code> and <code>height</code> to <code>50</code>. It shrinks and keeps its shape.</li>
            <li>Add a new link <code>&lt;a href="#top"&gt;Back to top&lt;/a&gt;</code> at the bottom, save, reload <code>links.html</code> and click it.</li>
          </ol>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p><strong>Tip:</strong> A quick alt-text test: imagine reading the page to a friend over the phone. Whatever you would say about the image is your alt text. If you would skip it, use <code>alt=""</code>.</p></div>
      HTML
      starter_code: <<~'HTML'
        <!DOCTYPE html>
        <html lang="en">
        <head>
          <meta charset="UTF-8">
          <meta name="viewport" content="width=device-width, initial-scale=1.0">
          <title>Links and Images</title>
          <style>
            body { font-family: system-ui, sans-serif; margin: 1.5rem; line-height: 1.6; }
            img, svg { max-width: 100%; height: auto; }
            .label { color: #9a3412; font-size: 0.8rem; text-transform: uppercase; margin-top: 1.5rem; }
            .spacer { height: 60vh; }
          </style>
        </head>
        <body>
          <h1 id="top">TechFest 2026</h1>

          <p class="label">1. Fragment link (same page)</p>
          <a href="#contact">Jump to contact</a>

          <p class="label">2. Inline SVG image inside a figure</p>
          <figure>
            <svg width="160" height="100" viewBox="0 0 160 100" role="img" aria-label="Blue stage with a yellow spotlight">
              <rect width="160" height="100" fill="#1e3a8a"></rect>
              <circle cx="80" cy="40" r="25" fill="#facc15"></circle>
            </svg>
            <figcaption>Main stage (drawn with SVG)</figcaption>
          </figure>

          <p class="label">3. img with alt, width and height (data: URL)</p>
          <img src="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='160' height='80'%3E%3Crect width='160' height='80' rx='12' fill='%23f97316'/%3E%3C/svg%3E"
               alt="Orange ticket for TechFest" width="160" height="80">

          <p class="label">4. External link in a new tab (blocked in this preview)</p>
          <a href="https://www.wikipedia.org" target="_blank" rel="noopener noreferrer">Read about hackathons on Wikipedia (new tab)</a>

          <div class="spacer"></div>
          <h2 id="contact">Contact</h2>
          <p>Email: <a href="mailto:fest@example.com">fest@example.com</a></p>
          <p>Phone: <a href="tel:+919876543210">+91 98765 43210</a></p>
        </body>
        </html>
      HTML
    },

    4 => {
      body: <<~'HTML',
        <div class="lc-intro">
          <p>Lists and tables organise information so people can scan it. Lists group related items (a menu, steps, a glossary). Tables show <strong>data in rows and columns</strong> (a timetable, a scorecard). Using the right elements lets screen readers announce "list, 5 items" or "row 2, column Runs", which makes the content usable for everyone.</p>
        </div>
        <div class="lc-section">
          <h2>Unordered and Ordered Lists</h2>
          <p>Use <code>&lt;ul&gt;</code> when order doesn't matter and <code>&lt;ol&gt;</code> when it does. Every item is an <code>&lt;li&gt;</code>, and <code>&lt;li&gt;</code> must be a direct child of the list.</p>
          <div class="lc-code-block"><pre><code>&lt;ul&gt;<br>  &lt;li&gt;Masala chai&lt;/li&gt;<br>  &lt;li&gt;Filter coffee&lt;/li&gt;<br>&lt;/ul&gt;<br><br>&lt;ol start="3"&gt;<br>  &lt;li&gt;Boil water&lt;/li&gt;<br>  &lt;li&gt;Add tea leaves&lt;/li&gt;<br>&lt;/ol&gt;</code></pre></div>
          <p><strong>What you will see:</strong> two bulleted items, then a numbered list that starts at 3: "3. Boil water", "4. Add tea leaves".</p>
          <table class="lc-table">
            <thead><tr><th>Attribute (on ol)</th><th>Example</th><th>Result</th></tr></thead>
            <tbody>
              <tr><td><code>type</code></td><td><code>type="a"</code>, <code>"A"</code>, <code>"i"</code>, <code>"I"</code>, <code>"1"</code></td><td>a, b, c… / A, B, C… / i, ii, iii… / I, II, III… / 1, 2, 3…</td></tr>
              <tr><td><code>start</code></td><td><code>start="5"</code></td><td>Numbering begins at 5</td></tr>
              <tr><td><code>reversed</code></td><td><code>&lt;ol reversed&gt;</code></td><td>Counts down, e.g. a "Top 3" list: 3, 2, 1</td></tr>
            </tbody>
          </table>
          <p>Use <code>type</code> when the marker style is part of the meaning (for example, rules referred to as "clause b"). For purely visual changes, use CSS <code>list-style-type</code>.</p>
        </div>
        <div class="lc-section">
          <h2>Nested Lists</h2>
          <p>A sub-list goes <strong>inside an <code>&lt;li&gt;</code></strong>, after that item's text — never directly inside the <code>&lt;ul&gt;</code>.</p>
          <div class="lc-code-block"><pre><code>&lt;ul&gt;<br>  &lt;li&gt;Hot drinks<br>    &lt;ul&gt;<br>      &lt;li&gt;Chai&lt;/li&gt;<br>      &lt;li&gt;Coffee&lt;/li&gt;<br>    &lt;/ul&gt;<br>  &lt;/li&gt;<br>  &lt;li&gt;Snacks&lt;/li&gt;<br>&lt;/ul&gt;</code></pre></div>
          <p><strong>What you will see:</strong> "Hot drinks" with an indented sub-list (Chai, Coffee) using a different bullet style (hollow circles), then "Snacks" back at the first level.</p>
        </div>
        <div class="lc-section">
          <h2>Description Lists</h2>
          <p><code>&lt;dl&gt;</code> holds term–description pairs: a glossary, an FAQ, or product details. <code>&lt;dt&gt;</code> is the term, <code>&lt;dd&gt;</code> is its description (indented by default).</p>
          <div class="lc-code-block"><pre><code>&lt;dl&gt;<br>  &lt;dt&gt;Cutting chai&lt;/dt&gt;<br>  &lt;dd&gt;Half a glass of strong tea, popular in Mumbai.&lt;/dd&gt;<br>  &lt;dt&gt;Kulhad&lt;/dt&gt;<br>  &lt;dd&gt;A clay cup.&lt;/dd&gt;<br>&lt;/dl&gt;</code></pre></div>
        </div>
        <div class="lc-section">
          <h2>Navigation Menus Are Lists of Links</h2>
          <p>A site menu is a list of links, so mark it up that way inside <code>&lt;nav&gt;</code>. CSS will later remove the bullets and place the items in a row.</p>
          <div class="lc-code-block"><pre><code>&lt;nav&gt;<br>  &lt;ul&gt;<br>    &lt;li&gt;&lt;a href="/"&gt;Home&lt;/a&gt;&lt;/li&gt;<br>    &lt;li&gt;&lt;a href="/menu.html"&gt;Menu&lt;/a&gt;&lt;/li&gt;<br>    &lt;li&gt;&lt;a href="/contact.html"&gt;Contact&lt;/a&gt;&lt;/li&gt;<br>  &lt;/ul&gt;<br>&lt;/nav&gt;</code></pre></div>
          <p>A screen reader can then announce "navigation, list, 3 items", so users know how big the menu is before they explore it.</p>
        </div>
        <div class="lc-section">
          <h2>Which One Should I Use?</h2>
          <table class="lc-table">
            <thead><tr><th>Content</th><th>Element</th><th>Example</th></tr></thead>
            <tbody>
              <tr><td>Items where order doesn't matter</td><td><code>&lt;ul&gt;</code></td><td>Things to pack for a trip to Manali</td></tr>
              <tr><td>Steps or rankings where order matters</td><td><code>&lt;ol&gt;</code></td><td>Recipe steps, top 10 run-scorers</td></tr>
              <tr><td>Terms with descriptions</td><td><code>&lt;dl&gt;</code></td><td>Glossary, FAQ, product specifications</td></tr>
              <tr><td>Data compared across rows and columns</td><td><code>&lt;table&gt;</code></td><td>Timetable, scorecard, price comparison</td></tr>
              <tr><td>Placing page parts side by side</td><td>None of these — use CSS</td><td>Sidebar next to content</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-section">
          <h2>Tables: The Parts</h2>
          <table class="lc-table">
            <thead><tr><th>Element</th><th>Role</th></tr></thead>
            <tbody>
              <tr><td><code>&lt;table&gt;</code></td><td>Wraps the whole table</td></tr>
              <tr><td><code>&lt;caption&gt;</code></td><td>The table's title; must be the first child of the table</td></tr>
              <tr><td><code>&lt;thead&gt;</code> / <code>&lt;tbody&gt;</code> / <code>&lt;tfoot&gt;</code></td><td>Header rows / main data rows / summary rows such as totals</td></tr>
              <tr><td><code>&lt;tr&gt;</code></td><td>One table row</td></tr>
              <tr><td><code>&lt;th&gt;</code></td><td>A header cell (bold and centred by default)</td></tr>
              <tr><td><code>&lt;td&gt;</code></td><td>A data cell</td></tr>
            </tbody>
          </table>
          <p><code>scope="col"</code> on a <code>&lt;th&gt;</code> says it labels a column; <code>scope="row"</code> says it labels a row. Screen readers use this to read each cell with its headers, e.g. "Rohit, Runs, 57".</p>
          <div class="lc-code-block"><pre><code>&lt;table&gt;<br>  &lt;caption&gt;India batting, 1st innings&lt;/caption&gt;<br>  &lt;thead&gt;<br>    &lt;tr&gt;&lt;th scope="col"&gt;Batter&lt;/th&gt;&lt;th scope="col"&gt;Runs&lt;/th&gt;&lt;th scope="col"&gt;Balls&lt;/th&gt;&lt;/tr&gt;<br>  &lt;/thead&gt;<br>  &lt;tbody&gt;<br>    &lt;tr&gt;&lt;th scope="row"&gt;Rohit&lt;/th&gt;&lt;td&gt;57&lt;/td&gt;&lt;td&gt;41&lt;/td&gt;&lt;/tr&gt;<br>    &lt;tr&gt;&lt;th scope="row"&gt;Shubman&lt;/th&gt;&lt;td&gt;33&lt;/td&gt;&lt;td&gt;29&lt;/td&gt;&lt;/tr&gt;<br>  &lt;/tbody&gt;<br>  &lt;tfoot&gt;<br>    &lt;tr&gt;&lt;th scope="row"&gt;Total&lt;/th&gt;&lt;td colspan="2"&gt;90 runs&lt;/td&gt;&lt;/tr&gt;<br>  &lt;/tfoot&gt;<br>&lt;/table&gt;</code></pre></div>
          <p><strong>What you will see:</strong> the caption centred above a 3-column table. The header row and the names in the first column are bold. In the last row, "90 runs" stretches across the Runs and Balls columns. Without CSS there are no borders at all.</p>
        </div>
        <div class="lc-section">
          <h2>colspan and rowspan</h2>
          <p><code>colspan="2"</code> makes a cell two columns wide; <code>rowspan="2"</code> makes it two rows tall. <strong>Check your maths:</strong> every row must add up to the same number of columns. In the example above each row has 3 columns: the Total row has 1 <code>th</code> + 1 <code>td</code> spanning 2 = 3. With <code>rowspan="2"</code> on a cell, the row below it must have one fewer cell, because that space is already taken.</p>
        </div>
        <div class="lc-section">
          <h2>Tables Are for Data, Never for Layout</h2>
          <p>Years ago, people used tables to place page parts side by side. Don't. Screen readers announce layout tables as data ("table, 3 columns"), and they are hard to make responsive. Use CSS Flexbox and Grid (Lessons 15–16) for layout. Basic table styling needs only a few lines of CSS:</p>
          <div class="lc-code-block"><pre><code>table { border-collapse: collapse; }<br>th, td { border: 1px solid #ccc; padding: 0.5rem 0.75rem; }</code></pre></div>
          <p><code>border-collapse: collapse</code> merges the neighbouring cell borders into single lines. Without it, each cell draws its own border and you see double lines with gaps.</p>
        </div>
        <div class="lc-section">
          <h2>Common Mistakes</h2>
          <ul class="lc-list">
            <li><strong>Putting a nested <code>&lt;ul&gt;</code> directly inside a <code>&lt;ul&gt;</code></strong> → place it inside an <code>&lt;li&gt;</code>.</li>
            <li><strong>Text or <code>&lt;p&gt;</code> directly inside <code>&lt;ul&gt;</code></strong> → only <code>&lt;li&gt;</code> may be a child of <code>ul</code>/<code>ol</code>.</li>
            <li><strong>Using <code>&lt;td&gt;</code> with bold text for headers</strong> → use <code>&lt;th scope="col"&gt;</code> so the header is real.</li>
            <li><strong>Rows with different column counts</strong> after adding colspan/rowspan → count columns row by row.</li>
            <li><strong>Double borders</strong> on tables → add <code>border-collapse: collapse</code>.</li>
          </ul>
        </div>
        <div class="lc-section">
          <h2>Try It</h2>
          <ol class="lc-list">
            <li>In section 2 of the starter, add <code>reversed</code> to the <code>&lt;ol&gt;</code>. The numbers now count down 3, 2, 1.</li>
            <li>In section 3, add a third item "Bengaluru" inside the nested city list. It appears indented with a hollow bullet.</li>
            <li>In the table, remove <code>border-collapse: collapse;</code> from the CSS. You now see double borders. Put it back.</li>
            <li>Add a new day-1 row for "Quiz" at "4 pm". Because "Day 1" has <code>rowspan="2"</code>, change it to <code>rowspan="3"</code> and give your new row only two cells.</li>
          </ol>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p><strong>Tip:</strong> Wide tables break small screens. Wrap a table in <code>&lt;div style="overflow-x: auto"&gt;</code> so it scrolls sideways on phones instead of pushing the whole page wider.</p></div>
      HTML
      starter_code: <<~'HTML'
        <!DOCTYPE html>
        <html lang="en">
        <head>
          <meta charset="UTF-8">
          <meta name="viewport" content="width=device-width, initial-scale=1.0">
          <title>Lists and Tables</title>
          <style>
            body { font-family: system-ui, sans-serif; margin: 1.5rem; line-height: 1.5; }
            .label { color: #9a3412; font-size: 0.8rem; text-transform: uppercase; margin-top: 1.5rem; }
            table { border-collapse: collapse; }
            th, td { border: 1px solid #ccc; padding: 0.4rem 0.7rem; text-align: left; }
            thead th { background: #fff7ed; }
          </style>
        </head>
        <body>
          <p class="label">1. Navigation = a list of links</p>
          <nav>
            <ul>
              <li><a href="#schedule">Schedule</a></li>
              <li><a href="#rules">Rules</a></li>
            </ul>
          </nav>

          <p class="label">2. Ordered list (try adding reversed)</p>
          <ol>
            <li>Register online</li>
            <li>Collect your ID card</li>
            <li>Reach the venue</li>
          </ol>

          <p class="label">3. Nested list and description list</p>
          <ul id="rules">
            <li>Teams of 2–4 from these cities:
              <ul>
                <li>Pune</li>
                <li>Kochi</li>
              </ul>
            </li>
          </ul>
          <dl>
            <dt>Hackathon</dt>
            <dd>Build a project in 24 hours.</dd>
          </dl>

          <p class="label">4. Data table with caption, scope and rowspan</p>
          <table id="schedule">
            <caption>TechFest schedule</caption>
            <thead>
              <tr><th scope="col">Day</th><th scope="col">Event</th><th scope="col">Time</th></tr>
            </thead>
            <tbody>
              <tr><th scope="row" rowspan="2">Day 1</th><td>Hackathon</td><td>10 am</td></tr>
              <tr><td>Robo Race</td><td>2 pm</td></tr>
              <tr><th scope="row">Day 2</th><td colspan="2">Prize ceremony, all day</td></tr>
            </tbody>
          </table>
        </body>
        </html>
      HTML
    },

    5 => {
      body: <<~'HTML',
        <div class="lc-intro">
          <p>Forms are how people talk back to a website: signing up, searching, paying, giving feedback. HTML gives you ready-made controls (text boxes, checkboxes, dropdowns, date pickers) and even basic checks such as "this field is required", with no JavaScript. In this lesson you will build an accessible registration form and learn exactly what data the browser sends.</p>
        </div>
        <div class="lc-section">
          <h2>The form Element: action and method</h2>
          <div class="lc-code-block"><pre><code>&lt;form action="/search" method="get"&gt;<br>  &lt;label for="q"&gt;Search the menu&lt;/label&gt;<br>  &lt;input type="search" id="q" name="q"&gt;<br>  &lt;button type="submit"&gt;Search&lt;/button&gt;<br>&lt;/form&gt;</code></pre></div>
          <p><strong>What you will see:</strong> the label "Search the menu", a text box and a "Search" button on one line. If you type <code>masala chai</code> and press the button, the browser goes to <code>/search?q=masala+chai</code> — the field's <code>name</code> becomes the key, and the space becomes <code>+</code>.</p>
          <ul class="lc-list">
            <li><code>action</code> — the URL that receives the data. If you leave it out, the form sends to the current page.</li>
            <li><code>method</code> — <code>get</code> (the default) or <code>post</code>.</li>
          </ul>
          <table class="lc-table">
            <thead><tr><th></th><th>GET</th><th>POST</th></tr></thead>
            <tbody>
              <tr><td>Where the data goes</td><td>In the URL: <code>?q=chai&amp;city=Pune</code></td><td>In the request body, not the URL</td></tr>
              <tr><td>Can be bookmarked or shared</td><td>Yes</td><td>No</td></tr>
              <tr><td>Use for</td><td>Searches and filters that only read data</td><td>Sign-ups, logins, orders, file uploads — anything that changes data</td></tr>
              <tr><td>Passwords?</td><td>Never (they would appear in the URL and history)</td><td>Yes, over HTTPS</td></tr>
            </tbody>
          </table>
          <p>POST is not encrypted by itself. Only HTTPS protects the data on the way to the server.</p>
        </div>
        <div class="lc-section">
          <h2>Labels and the name Attribute</h2>
          <p>Every control needs a <strong>label</strong>. Connect them with <code>for</code> on the label and the same <code>id</code> on the input, or wrap the input inside the label. Clicking the label then focuses the input (or ticks the checkbox), and screen readers read the label aloud.</p>
          <div class="lc-code-block"><pre><code>&lt;label for="email"&gt;Email&lt;/label&gt;<br>&lt;input type="email" id="email" name="email"&gt;<br><br>&lt;label&gt;&lt;input type="checkbox" name="veg" value="yes"&gt; Veg food only&lt;/label&gt;</code></pre></div>
          <p><strong>The <code>name</code> attribute is what gets sent.</strong> The data is sent as <code>name=value</code> pairs. An input without a <code>name</code> is not sent at all, even if the user typed in it. The <code>id</code> is only for the label, CSS and JavaScript.</p>
          <p><strong>Worked example:</strong> a GET form has a name box (<code>name="student"</code>), a box with no name, and an unticked checkbox <code>name="veg"</code>. The user types "Asha" in both boxes. The URL becomes <code>?student=Asha</code> only: the unnamed box is skipped, and unticked checkboxes are never sent.</p>
        </div>
        <div class="lc-section">
          <h2>Input Types</h2>
          <table class="lc-table">
            <thead><tr><th>type</th><th>What you get</th></tr></thead>
            <tbody>
              <tr><td><code>text</code></td><td>A one-line text box (the default)</td></tr>
              <tr><td><code>email</code></td><td>Checks the value looks like an email; phones show an @ keyboard</td></tr>
              <tr><td><code>password</code></td><td>Hides the characters as dots</td></tr>
              <tr><td><code>number</code></td><td>Numbers only, with up/down arrows; use <code>min</code>, <code>max</code>, <code>step</code></td></tr>
              <tr><td><code>tel</code></td><td>Phone number; shows a number pad on phones (no format check by itself)</td></tr>
              <tr><td><code>date</code></td><td>A date picker; the value is sent as <code>YYYY-MM-DD</code></td></tr>
              <tr><td><code>checkbox</code></td><td>On/off; several can be ticked. Sends its <code>value</code> only when ticked</td></tr>
              <tr><td><code>radio</code></td><td>Pick exactly one from a group. All radios in a group share the <strong>same <code>name</code></strong></td></tr>
              <tr><td><code>range</code></td><td>A slider between <code>min</code> and <code>max</code></td></tr>
              <tr><td><code>file</code></td><td>Choose a file; the form needs <code>method="post"</code> and <code>enctype="multipart/form-data"</code></td></tr>
            </tbody>
          </table>
          <p>Other controls: <code>&lt;textarea&gt;</code> for multi-line text (it has a closing tag), and <code>&lt;select&gt;</code> with <code>&lt;option value="…"&gt;</code> items for a dropdown. Group related controls in a <code>&lt;fieldset&gt;</code> with a <code>&lt;legend&gt;</code> caption — essential for radio groups, so screen readers announce the question ("Event: Hackathon, radio button").</p>
          <div class="lc-code-block"><pre><code>&lt;fieldset&gt;<br>  &lt;legend&gt;Choose one event&lt;/legend&gt;<br>  &lt;label&gt;&lt;input type="radio" name="event" value="hack" required&gt; Hackathon&lt;/label&gt;<br>  &lt;label&gt;&lt;input type="radio" name="event" value="robo"&gt; Robo Race&lt;/label&gt;<br>&lt;/fieldset&gt;<br>&lt;label for="city"&gt;City&lt;/label&gt;<br>&lt;select id="city" name="city"&gt;<br>  &lt;option value="pune"&gt;Pune&lt;/option&gt;<br>  &lt;option value="kochi"&gt;Kochi&lt;/option&gt;<br>&lt;/select&gt;</code></pre></div>
          <p><strong>What you will see:</strong> a box with the caption "Choose one event" on its border and two radio buttons. Selecting Robo Race automatically unselects Hackathon, because they share <code>name="event"</code>. Below it, a dropdown showing "Pune". If Robo Race and Kochi are chosen, the data sent is <code>event=robo&amp;city=kochi</code>.</p>
        </div>
        <div class="lc-section">
          <h2>Buttons</h2>
          <ul class="lc-list">
            <li><code>&lt;button type="submit"&gt;</code> — sends the form. <strong>This is the default</strong> for a button inside a form, so a button you meant for something else will also submit the form.</li>
            <li><code>&lt;button type="button"&gt;</code> — does nothing by itself; use it for JavaScript actions.</li>
            <li><code>&lt;button type="reset"&gt;</code> — clears every field back to its starting value. Users often click it by mistake, so it is rarely a good idea.</li>
          </ul>
        </div>
        <div class="lc-section">
          <h2>Built-in Validation</h2>
          <p>The browser can check fields before sending, and shows a message next to the first problem.</p>
          <div class="lc-code-block"><pre><code>&lt;input type="text" name="name" required minlength="2" maxlength="40" autocomplete="name"&gt;<br>&lt;input type="tel" name="mobile" pattern="[0-9]{10}" autocomplete="tel"&gt;<br>&lt;input type="number" name="tickets" min="1" max="5" value="1"&gt;</code></pre></div>
          <ul class="lc-list">
            <li><code>required</code> — the field can't be empty (for radios, one in the group must be chosen).</li>
            <li><code>min</code> / <code>max</code> — the smallest and largest number or date.</li>
            <li><code>minlength</code> / <code>maxlength</code> — the number of characters allowed.</li>
            <li><code>pattern</code> — a regular expression the <em>whole</em> value must match. <code>[0-9]{10}</code> means exactly 10 digits: "9876543210" passes, "98765" fails. An empty field passes unless it is also <code>required</code>.</li>
            <li><code>placeholder</code> — faint example text that disappears when you type. It is <strong>not a label</strong>: it vanishes, often has low contrast and is not reliably read by screen readers. Use it only for a hint like "e.g. 98765 43210".</li>
            <li><code>autocomplete</code> — tells the browser what the field is, so it can fill it in: <code>name</code>, <code>email</code>, <code>tel</code>, <code>postal-code</code>, <code>current-password</code>, <code>new-password</code>.</li>
          </ul>
          <p>Browser checks only help the user. Anyone can skip them, so the server must <strong>always check the data again</strong>.</p>
          <p><strong>Note for this editor:</strong> the preview runs in a sandbox that blocks form submission, so pressing Submit here does nothing and the browser's error pop-ups may not appear. The starter uses CSS to draw red borders on invalid fields so you can still see validation working.</p>
        </div>
        <div class="lc-section">
          <h2>Common Mistakes</h2>
          <ul class="lc-list">
            <li><strong>No <code>name</code> on an input</strong> → its value is never sent. Give every field a name.</li>
            <li><strong>Radio buttons with different names</strong> → the user can select all of them. Give the whole group the same <code>name</code>.</li>
            <li><strong>Using placeholder instead of a label</strong> → add a real <code>&lt;label&gt;</code> and keep placeholder for hints.</li>
            <li><strong><code>for</code> not matching the <code>id</code></strong> (e.g. <code>for="mail"</code>, <code>id="email"</code>) → clicking the label does nothing. Make them identical.</li>
            <li><strong>A plain <code>&lt;button&gt;</code> inside a form for a JavaScript action</strong> → it submits the form. Add <code>type="button"</code>.</li>
          </ul>
        </div>
        <div class="lc-section">
          <h2>Try It</h2>
          <ol class="lc-list">
            <li>Click the word "Mobile" in the starter. The cursor jumps into the mobile box, because the label's <code>for</code> matches the input's <code>id</code>.</li>
            <li>Type <code>12345</code> in Mobile and click outside it. Its border turns red, because it doesn't match <code>pattern="[0-9]{10}"</code>. Type 10 digits and it turns green.</li>
            <li>Change the second radio's <code>name</code> to <code>event2</code>. Now you can select both events. Change it back.</li>
            <li>Set Tickets to 9 with the keyboard and click away. It turns red because of <code>max="5"</code>.</li>
          </ol>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p><strong>Tip:</strong> Choose the most specific input type. <code>type="email"</code>, <code>tel</code> and <code>number</code> show the right keyboard on phones, which makes forms much faster to fill in on mobile.</p></div>
      HTML
      starter_code: <<~'HTML'
        <!DOCTYPE html>
        <html lang="en">
        <head>
          <meta charset="UTF-8">
          <meta name="viewport" content="width=device-width, initial-scale=1.0">
          <title>TechFest Registration</title>
          <style>
            body { font-family: system-ui, sans-serif; margin: 1.5rem; max-width: 30rem; }
            label, legend { display: block; margin-top: 0.8rem; font-weight: 600; }
            fieldset label { font-weight: 400; }
            input, select, textarea { font: inherit; padding: 0.3rem; border: 2px solid #999; }
            /* :user-invalid / :user-valid match after the user edits a field (Lesson 10) */
            :user-invalid { border-color: #dc2626; }
            :user-valid { border-color: #16a34a; }
          </style>
        </head>
        <body>
          <h1>TechFest Registration</h1>
          <!-- Submission is blocked in this preview; watch the borders instead. -->
          <form action="/register" method="post">
            <!-- 1. label for + id, name, required, minlength, autocomplete -->
            <label for="name">Full name</label>
            <input type="text" id="name" name="name" required minlength="2" autocomplete="name">

            <!-- 2. pattern: exactly 10 digits; placeholder is only a hint -->
            <label for="mobile">Mobile</label>
            <input type="tel" id="mobile" name="mobile" pattern="[0-9]{10}" placeholder="e.g. 9876543210" autocomplete="tel">

            <!-- 3. number with min and max -->
            <label for="tickets">Tickets (1 to 5)</label>
            <input type="number" id="tickets" name="tickets" min="1" max="5" value="1">

            <!-- 4. radio group: same name, wrapped in fieldset + legend -->
            <fieldset>
              <legend>Choose one event</legend>
              <label><input type="radio" name="event" value="hack" required> Hackathon</label>
              <label><input type="radio" name="event" value="robo"> Robo Race</label>
            </fieldset>

            <!-- 5. select, checkbox and textarea -->
            <label for="city">City</label>
            <select id="city" name="city">
              <option value="pune">Pune</option>
              <option value="kochi">Kochi</option>
            </select>
            <label><input type="checkbox" name="veg" value="yes"> Veg food only</label>
            <label for="note">Anything else?</label>
            <textarea id="note" name="note" rows="3" maxlength="200"></textarea>

            <p><button type="submit">Register</button></p>
          </form>
        </body>
        </html>
      HTML
    },

    6 => {
      body: <<~'HTML',
        <div class="lc-intro">
          <p><strong>Semantic HTML</strong> means choosing elements for what the content <em>is</em>, not for how it looks. A <code>&lt;nav&gt;</code> says "these are navigation links"; a <code>&lt;div&gt;</code> says nothing at all. Browsers, screen readers and search engines read that meaning. In this lesson you will learn the page-structure elements, when to use each one, and when a plain <code>&lt;div&gt;</code> or <code>&lt;span&gt;</code> is still the right choice.</p>
        </div>
        <div class="lc-section">
          <h2>Meaning, Not Looks</h2>
          <p>Visually, a <code>&lt;header&gt;</code> and a <code>&lt;div&gt;</code> look identical — both are plain block boxes until you add CSS. The difference is the information they carry. Compare these two versions of the same page:</p>
          <div class="lc-two-col">
            <div>
              <div class="lc-col-label lc-bad">✗ Avoid: "div soup"</div>
              <div class="lc-code-block"><pre><code>&lt;div class="header"&gt;...&lt;/div&gt;<br>&lt;div class="menu"&gt;...&lt;/div&gt;<br>&lt;div class="content"&gt;<br>  &lt;div class="post"&gt;...&lt;/div&gt;<br>&lt;/div&gt;<br>&lt;div class="footer"&gt;...&lt;/div&gt;</code></pre></div>
            </div>
            <div>
              <div class="lc-col-label lc-good">✓ Prefer: semantic elements</div>
              <div class="lc-code-block"><pre><code>&lt;header&gt;...&lt;/header&gt;<br>&lt;nav&gt;...&lt;/nav&gt;<br>&lt;main&gt;<br>  &lt;article&gt;...&lt;/article&gt;<br>&lt;/main&gt;<br>&lt;footer&gt;...&lt;/footer&gt;</code></pre></div>
            </div>
          </div>
          <p>Both render the same, but only the second one tells a screen reader "here is the navigation, here is the main content".</p>
          <p>There are over a hundred HTML elements, and most of them carry meaning. You already know several: <code>&lt;h1&gt;</code>–<code>&lt;h6&gt;</code>, <code>&lt;p&gt;</code>, <code>&lt;ul&gt;</code>, <code>&lt;table&gt;</code>, <code>&lt;form&gt;</code>. This lesson adds the elements that describe the <em>regions</em> of a page.</p>
        </div>
        <div class="lc-section">
          <h2>The Page-Structure Elements</h2>
          <table class="lc-table">
            <thead><tr><th>Element</th><th>Use it for</th><th>Landmark for screen readers</th></tr></thead>
            <tbody>
              <tr><td><code>&lt;header&gt;</code></td><td>Introductory content: logo, site title, often the main nav. Can also be the header of an article.</td><td>"banner" — only when it is the page header (not inside article, aside, main, nav or section)</td></tr>
              <tr><td><code>&lt;nav&gt;</code></td><td>A block of <em>major</em> navigation links (main menu, table of contents)</td><td>"navigation"</td></tr>
              <tr><td><code>&lt;main&gt;</code></td><td>The unique main content of the page. Only <strong>one visible</strong> <code>&lt;main&gt;</code> per page.</td><td>"main"</td></tr>
              <tr><td><code>&lt;article&gt;</code></td><td>Self-contained content that makes sense on its own: blog post, news story, product card, comment</td><td>none (but announced as an article)</td></tr>
              <tr><td><code>&lt;section&gt;</code></td><td>A thematic group of content that has its own heading</td><td>"region" — only if it has an accessible name (e.g. <code>aria-labelledby</code>)</td></tr>
              <tr><td><code>&lt;aside&gt;</code></td><td>Content related to the main content but separate from it: sidebar, "related posts", a pull-out box</td><td>"complementary" — when it sits directly in body or main (or has an accessible name)</td></tr>
              <tr><td><code>&lt;footer&gt;</code></td><td>Closing info: copyright, contact, links. Can also be an article's footer.</td><td>"contentinfo" — only when it is the page footer</td></tr>
            </tbody>
          </table>
          <p>A typical page layout sketch:</p>
          <div class="lc-code-block"><pre><code>+---------------- &lt;header&gt; -----------------+<br>|  logo            &lt;nav&gt; Home  Menu  About  |<br>+---------------------------+---------------+<br>| &lt;main&gt;                    | &lt;aside&gt;       |<br>|   &lt;article&gt;               |  Related      |<br>|     &lt;header&gt; title, date  |  posts        |<br>|     &lt;section&gt; + &lt;h2&gt;      |               |<br>|     &lt;footer&gt; author       |               |<br>+---------------------------+---------------+<br>| &lt;footer&gt;  (c) 2026, contact &lt;address&gt;     |<br>+-------------------------------------------+</code></pre></div>
        </div>
        <div class="lc-section">
          <h2>article vs section vs div</h2>
          <p>These three confuse everyone at first. Ask yourself one question for each:</p>
          <table class="lc-table">
            <thead><tr><th>Element</th><th>Ask yourself</th><th>Example</th></tr></thead>
            <tbody>
              <tr><td><code>&lt;article&gt;</code></td><td>Could this be shared or reused on its own and still make sense?</td><td>A blog post, a review, one product card</td></tr>
              <tr><td><code>&lt;section&gt;</code></td><td>Is this a chapter of something bigger, with its own heading?</td><td>"Ingredients" and "Method" inside a recipe</td></tr>
              <tr><td><code>&lt;div&gt;</code></td><td>Do I only need a box for styling or layout?</td><td>A flex wrapper, a card grid container</td></tr>
            </tbody>
          </table>
          <p>A <code>&lt;section&gt;</code> without a heading is a warning sign: if you cannot name it, it is probably just a <code>&lt;div&gt;</code>.</p>
          <p><code>&lt;div&gt;</code> (block) and <code>&lt;span&gt;</code> (inline) are not "bad" — they are the correct choice when <strong>no</strong> semantic element fits. Use them for styling hooks, not for page landmarks.</p>
        </div>
        <div class="lc-section">
          <h2>figure, time and address</h2>
          <ul class="lc-list">
            <li><code>&lt;figure&gt;</code> + <code>&lt;figcaption&gt;</code> — an image, chart, code sample or quote with a caption, referenced from the main text.</li>
            <li><code>&lt;time datetime="2026-10-03"&gt;3 October 2026&lt;/time&gt;</code> — people read the text; machines read the <code>datetime</code> value (format <code>YYYY-MM-DD</code>, optionally with a time like <code>2026-10-03T18:30+05:30</code>).</li>
            <li><code>&lt;address&gt;</code> — <em>contact details</em> for the page or for the nearest article's author (email, phone, office). It is not meant for any random postal address in your text.</li>
          </ul>
          <h3>Worked example: a blog post</h3>
          <div class="lc-code-block"><pre><code>&lt;article&gt;<br>  &lt;header&gt;<br>    &lt;h2&gt;Best Chai Spots in Pune&lt;/h2&gt;<br>    &lt;p&gt;Posted &lt;time datetime="2026-10-03"&gt;3 Oct 2026&lt;/time&gt;&lt;/p&gt;<br>  &lt;/header&gt;<br>  &lt;p&gt;Five stalls worth the queue...&lt;/p&gt;<br>  &lt;figure&gt;<br>    &lt;div class="photo"&gt;☕&lt;/div&gt;<br>    &lt;figcaption&gt;Cutting chai, ₹15&lt;/figcaption&gt;<br>  &lt;/figure&gt;<br>  &lt;footer&gt;<br>    &lt;address&gt;Written by &lt;a href="mailto:riya@example.com"&gt;Riya&lt;/a&gt;&lt;/address&gt;<br>  &lt;/footer&gt;<br>&lt;/article&gt;</code></pre></div>
          <p><strong>What you will see:</strong> a heading "Best Chai Spots in Pune", the line "Posted 3 Oct 2026", a paragraph, a ☕ box with the caption "Cutting chai, ₹15" under it, and "Written by Riya" in <em>italics</em> (browsers style <code>&lt;address&gt;</code> as italic by default). Nothing looks special — the value is in the meaning. Note that this <code>&lt;header&gt;</code> and <code>&lt;footer&gt;</code> belong to the article, so they are not page landmarks.</p>
        </div>
        <div class="lc-section">
          <h2>Why It Matters</h2>
          <ul class="lc-list lc-list-check">
            <li><strong>Accessibility:</strong> screen reader users can list the landmarks (banner, navigation, main…) and jump straight to "main" instead of listening to the whole menu every time.</li>
            <li><strong>Search engines:</strong> clear structure helps crawlers understand which part is the main content. It is not a magic ranking trick, but it helps them read your page correctly.</li>
            <li><strong>Readable code:</strong> <code>&lt;/nav&gt;</code> is easier to follow than the fifth <code>&lt;/div&gt;</code> in a row — for you and your team.</li>
            <li><strong>Free features:</strong> reader modes and browser tools use these elements to find the article text.</li>
          </ul>
        </div>
        <div class="lc-section">
          <h2>Common Mistakes</h2>
          <ul class="lc-list">
            <li>Two visible <code>&lt;main&gt;</code> elements on one page → keep exactly one, holding the content unique to that page (not the header, nav or footer).</li>
            <li>Wrapping every group in <code>&lt;section&gt;</code> just for styling → if there is no heading and no theme, use a <code>&lt;div&gt;</code>.</li>
            <li>Putting every link in a <code>&lt;nav&gt;</code> (e.g. three links in a footer paragraph) → reserve <code>&lt;nav&gt;</code> for major navigation blocks.</li>
            <li>Choosing <code>&lt;aside&gt;</code> because something sits on the right side → <code>&lt;aside&gt;</code> is about meaning (related but separate), not position.</li>
            <li>Writing dates as plain text only → wrap them in <code>&lt;time datetime="…"&gt;</code> so the machine-readable value is available.</li>
          </ul>
        </div>
        <div class="lc-section">
          <h2>Try It</h2>
          <p>The starter shows a small "Chai Point" blog page built with semantic elements. Each box is labelled with its tag name.</p>
          <ol>
            <li>Right-click the page and choose <strong>Inspect</strong>. Find <code>&lt;main&gt;</code> and confirm the header, nav and footer are <em>outside</em> it.</li>
            <li>Add a second <code>&lt;article&gt;</code> inside <code>&lt;main&gt;</code> for a new post, with its own <code>&lt;h2&gt;</code> and a <code>&lt;time datetime="2026-10-10"&gt;</code>. You should see a second grey card appear under the first.</li>
            <li>In Chrome DevTools, select the <code>&lt;aside&gt;</code> and open the <strong>Accessibility</strong> tab next to Styles. Its role shows as <em>complementary</em>. Select the page <code>&lt;header&gt;</code>: <em>banner</em>. A <code>&lt;div&gt;</code> would show only <em>generic</em>.</li>
          </ol>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p><strong>Tip:</strong> Before writing any markup, sketch your page as boxes and label each one: header, nav, main, article, aside, footer. If a box has no fitting label, it is a <code>&lt;div&gt;</code>. This two-minute habit gives you clean, semantic HTML from the start.</p></div>
      HTML
      starter_code: <<~'HTML'
        <!DOCTYPE html>
        <html lang="en">
        <head>
          <meta charset="UTF-8">
          <meta name="viewport" content="width=device-width, initial-scale=1.0">
          <title>Semantic HTML</title>
          <style>
            body { font-family: system-ui, sans-serif; margin: 0; color: #1f2937; }
            header, nav, main, article, aside, footer { border: 2px dashed #6366f1; padding: 8px 12px; margin: 6px; }
            .tag { font: 12px monospace; color: #4f46e5; }
            .layout { display: flex; gap: 6px; flex-wrap: wrap; }
            main { flex: 3; min-width: 220px; }
            aside { flex: 1; min-width: 140px; background: #eef2ff; }
            article { background: #f3f4f6; }
            .photo { font-size: 40px; background: #fde68a; width: 80px; text-align: center; }
          </style>
        </head>
        <body>
          <header>
            <span class="tag">&lt;header&gt;</span>
            <h1>Chai Point Blog</h1>
            <nav><span class="tag">&lt;nav&gt;</span> <a href="#">Home</a> | <a href="#">Menu</a> | <a href="#">About</a></nav>
          </header>
          <div class="layout">
            <main>
              <span class="tag">&lt;main&gt; (only one per page)</span>
              <article>
                <span class="tag">&lt;article&gt;</span>
                <h2>Best Chai Spots in Pune</h2>
                <p>Posted <time datetime="2026-10-03">3 Oct 2026</time></p>
                <figure>
                  <div class="photo">☕</div>
                  <figcaption>Cutting chai, ₹15</figcaption>
                </figure>
              </article>
            </main>
            <aside>
              <span class="tag">&lt;aside&gt;</span>
              <h2>Related posts</h2>
              <p>Masala vs ginger chai</p>
            </aside>
          </div>
          <footer>
            <span class="tag">&lt;footer&gt;</span>
            <address>Contact: <a href="mailto:hello@example.com">hello@example.com</a></address>
            <p>&copy; 2026 Chai Point</p>
          </footer>
        </body>
        </html>
      HTML
    },
    7 => {
      body: <<~'HTML',
        <div class="lc-intro">
          <p><strong>Accessibility</strong> (often written <strong>a11y</strong>) means building pages that everyone can use — including people who use a screen reader, only a keyboard, zoom, voice control, or captions. Most of it comes free when you write good semantic HTML. This lesson covers the WCAG principles, the everyday checks, keyboard access, and <strong>ARIA</strong> — the attributes you add only when HTML alone is not enough.</p>
        </div>
        <div class="lc-section">
          <h2>Who Benefits?</h2>
          <ul class="lc-list">
            <li>Blind and low-vision users (screen readers such as NVDA, JAWS, VoiceOver, TalkBack; screen magnifiers; high zoom).</li>
            <li>People who cannot use a mouse (motor disabilities, or a power user who prefers the keyboard).</li>
            <li>Deaf and hard-of-hearing users (captions and transcripts for video/audio).</li>
            <li>People with cognitive or learning disabilities (clear headings, simple language, predictable layout).</li>
            <li>Everyone in a tough situation: bright sunlight on a phone, a broken arm, a slow connection, an older parent using the site.</li>
          </ul>
        </div>
        <div class="lc-section">
          <h2>WCAG in One Table</h2>
          <p>The <strong>Web Content Accessibility Guidelines</strong> (WCAG, current version 2.2) are the global standard. Levels are A, AA and AAA; most laws and companies target <strong>AA</strong>. Every guideline fits under four principles — <strong>POUR</strong>:</p>
          <table class="lc-table">
            <thead><tr><th>Principle</th><th>Meaning</th><th>Everyday example</th></tr></thead>
            <tbody>
              <tr><td>Perceivable</td><td>Users can see or hear the content somehow</td><td>alt text on images, captions, enough colour contrast</td></tr>
              <tr><td>Operable</td><td>Users can use every control</td><td>everything works with the keyboard; visible focus</td></tr>
              <tr><td>Understandable</td><td>Content and behaviour make sense</td><td>form labels, clear error messages, <code>lang</code> attribute</td></tr>
              <tr><td>Robust</td><td>Works with browsers and assistive tech, now and later</td><td>valid HTML, native elements, correct ARIA</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-section">
          <h2>The Everyday Checklist</h2>
          <ul class="lc-list lc-list-check">
            <li><strong>Alt text:</strong> describe the purpose of an image; use <code>alt=""</code> for purely decorative ones.</li>
            <li><strong>Headings in order:</strong> one <code>&lt;h1&gt;</code>, then <code>&lt;h2&gt;</code>, <code>&lt;h3&gt;</code>… without skipping levels. Screen reader users navigate by headings.</li>
            <li><strong>Labels:</strong> every input has a <code>&lt;label for="…"&gt;</code>. A placeholder is not a label.</li>
            <li><strong>Language:</strong> <code>&lt;html lang="en"&gt;</code> so screen readers use the right pronunciation (use <code>lang="hi"</code> on a Hindi phrase).</li>
            <li><strong>Colour contrast (AA):</strong> at least <strong>4.5:1</strong> for normal text, <strong>3:1</strong> for large text (24px, or about 18.7px bold) and for UI parts like input borders and icons.</li>
            <li><strong>Not colour alone:</strong> an error shown only in red fails colour-blind users — add an icon or text like "Error:".</li>
            <li><strong>Landmarks:</strong> <code>&lt;header&gt;</code>, <code>&lt;nav&gt;</code>, <code>&lt;main&gt;</code>, <code>&lt;footer&gt;</code> from the last lesson.</li>
          </ul>
        </div>
        <div class="lc-section">
          <h2>Keyboard Access</h2>
          <p>Keyboard users press <strong>Tab</strong> / <strong>Shift+Tab</strong> to move between links and controls, <strong>Enter</strong> to follow links, and <strong>Enter</strong> or <strong>Space</strong> to press buttons. Native elements do all of this automatically; a <code>&lt;div&gt;</code> does none of it.</p>
          <div class="lc-two-col">
            <div>
              <div class="lc-col-label lc-bad">✗ Avoid</div>
              <div class="lc-code-block"><pre><code>&lt;div class="btn" onclick="buy()"&gt;<br>  Buy now<br>&lt;/div&gt;<br>&lt;!-- not focusable, no Enter/Space,<br>     not announced as a button --&gt;</code></pre></div>
            </div>
            <div>
              <div class="lc-col-label lc-good">✓ Prefer</div>
              <div class="lc-code-block"><pre><code>&lt;button type="button" onclick="buy()"&gt;<br>  Buy now<br>&lt;/button&gt;<br>&lt;!-- focusable, Enter/Space work,<br>     announced as "Buy now, button" --&gt;</code></pre></div>
            </div>
          </div>
          <ul class="lc-list">
            <li><strong>Tab order</strong> follows the source order of the HTML. Keep the source in a logical order instead of fixing it with CSS.</li>
            <li><code>tabindex="0"</code> adds a custom element to the tab order; <code>tabindex="-1"</code> makes it focusable by script (or a click) but skips it when tabbing. Avoid positive values like <code>tabindex="5"</code> — they scramble the order.</li>
            <li><strong>Never</strong> write <code>outline: none</code> without a replacement. Style focus with <code>:focus-visible</code> (full details in lesson 10), which shows the ring for keyboard users:</li>
          </ul>
          <div class="lc-code-block"><pre><code>a:focus-visible, button:focus-visible {<br>  outline: 3px solid #f59e0b;<br>  outline-offset: 2px;<br>}</code></pre></div>
          <p>A <strong>skip link</strong> is the first link on the page. It lets keyboard users jump past the menu:</p>
          <div class="lc-code-block"><pre><code>&lt;a class="skip-link" href="#main"&gt;Skip to main content&lt;/a&gt;<br>...<br>&lt;main id="main"&gt;...&lt;/main&gt;</code></pre></div>
        </div>
        <div class="lc-section">
          <h2>ARIA: Only When HTML Is Not Enough</h2>
          <p><strong>ARIA</strong> (Accessible Rich Internet Applications) attributes change what assistive technology <em>announces</em>. They do <strong>not</strong> add behaviour: <code>role="button"</code> on a div does not make it focusable or clickable with the keyboard. The <strong>first rule of ARIA</strong>: if a native HTML element does the job, use it instead. As the W3C authoring guide puts it, "No ARIA is better than bad ARIA."</p>
          <table class="lc-table">
            <thead><tr><th>Attribute</th><th>What it does</th><th>Example</th></tr></thead>
            <tbody>
              <tr><td><code>aria-label</code></td><td>Gives a name when there is no visible text</td><td><code>&lt;button aria-label="Close"&gt;✕&lt;/button&gt;</code></td></tr>
              <tr><td><code>aria-labelledby</code></td><td>Uses another element's text (by id) as the name</td><td><code>&lt;section aria-labelledby="menu-h"&gt;</code></td></tr>
              <tr><td><code>aria-describedby</code></td><td>Links extra help text, read after the name</td><td>password rules under an input</td></tr>
              <tr><td><code>aria-expanded</code></td><td>Says whether a toggle's panel is open (<code>true</code>/<code>false</code>)</td><td>a "Menu" button</td></tr>
              <tr><td><code>aria-hidden="true"</code></td><td>Hides decorative content from screen readers</td><td>an icon next to text. Never on focusable elements.</td></tr>
              <tr><td><code>aria-live="polite"</code></td><td>Announces changes to this area when the user is idle</td><td>"Added to cart" status message</td></tr>
              <tr><td><code>role</code></td><td>Sets the element's role — only when no native element exists</td><td><code>role="status"</code>, <code>role="alert"</code></td></tr>
            </tbody>
          </table>
          <h3>Worked example: a menu toggle</h3>
          <div class="lc-code-block"><pre><code>&lt;button type="button" aria-expanded="false" aria-controls="menu"&gt;<br>  &lt;span aria-hidden="true"&gt;☰&lt;/span&gt; Menu<br>&lt;/button&gt;<br>&lt;ul id="menu" hidden&gt;...&lt;/ul&gt;</code></pre></div>
          <p><strong>What you will hear:</strong> a screen reader says something like "Menu, button, collapsed" (the ☰ icon is skipped). When your JavaScript shows the list, it must also set <code>aria-expanded="true"</code>; the reader then says "expanded".</p>
        </div>
        <div class="lc-section">
          <h2>Native Interactive Elements (No ARIA Needed)</h2>
          <p>Three HTML features give you common widgets with keyboard support, focus handling and screen-reader roles already built in. Reach for them before writing your own with <code>div</code>s and ARIA.</p>
          <table class="lc-table">
            <thead><tr><th>Element</th><th>Use for</th><th>Opens with</th><th>Baseline</th></tr></thead>
            <tbody>
              <tr><td><code>&lt;details&gt;</code> + <code>&lt;summary&gt;</code></td><td>Show/hide sections, FAQs</td><td>Click, Enter or Space on the summary — no JavaScript</td><td>2020</td></tr>
              <tr><td><code>&lt;dialog&gt;</code></td><td>Modal pop-ups (confirm, sign-up)</td><td><code>dialog.showModal()</code> in JavaScript</td><td>2022</td></tr>
              <tr><td><code>popover</code> attribute</td><td>Menus, tooltips-like panels, toasts</td><td>A button with <code>popovertarget="id"</code> — no JavaScript</td><td>2024</td></tr>
            </tbody>
          </table>
          <h3>Worked example: details / summary</h3>
          <div class="lc-code-block"><pre><code>&lt;details&gt;<br>  &lt;summary&gt;Allergy info&lt;/summary&gt;<br>  &lt;p&gt;Contains milk. Ask for oat milk.&lt;/p&gt;<br>&lt;/details&gt;</code></pre></div>
          <p><strong>What you will see:</strong> only "▸ Allergy info" with a small triangle. Click it (or Tab to it and press Enter) and the triangle turns down and the paragraph appears. A screen reader announces it as a collapsed or expanded button. Add the <code>open</code> attribute to start it open.</p>
          <h3>dialog and popover</h3>
          <div class="lc-code-block"><pre><code>&lt;dialog id="confirm"&gt;<br>  &lt;p&gt;Cancel your order?&lt;/p&gt;<br>  &lt;form method="dialog"&gt;&lt;button&gt;Close&lt;/button&gt;&lt;/form&gt;<br>&lt;/dialog&gt;<br>&lt;button type="button" onclick="document.getElementById('confirm').showModal()"&gt;Cancel order&lt;/button&gt;<br><br>&lt;button type="button" popovertarget="help"&gt;Help&lt;/button&gt;<br>&lt;div id="help" popover&gt;Call 98765 43210 for help.&lt;/div&gt;</code></pre></div>
          <p><strong>What you will see:</strong> <code>showModal()</code> opens the dialog in the centre, dims the page behind it (the <code>::backdrop</code>), moves focus inside and makes the rest of the page inert. <strong>Esc</strong> or the Close button (a <code>form method="dialog"</code> closes it) shuts it and focus returns to the button. The Help button toggles the popover on top of everything; clicking outside or pressing Esc closes it. Use <code>showModal()</code>, not <code>show()</code>, for a true modal — <code>show()</code> opens it without trapping focus or the backdrop.</p>
        </div>
        <div class="lc-section">
          <h2>Testing</h2>
          <ul class="lc-list">
            <li><strong>Keyboard test:</strong> put the mouse away and Tab through the page. Can you reach and use everything? Can you always see where focus is?</li>
            <li><strong>Automated:</strong> Chrome DevTools → Lighthouse → Accessibility, or the axe DevTools extension. They catch many problems (missing alt, low contrast, missing labels) but not all — a passing score does not mean the page is fully accessible.</li>
            <li><strong>Screen reader:</strong> try NVDA (free, Windows), VoiceOver (built into Mac and iPhone) or TalkBack (Android) for a few minutes.</li>
          </ul>
        </div>
        <div class="lc-section">
          <h2>Common Mistakes</h2>
          <ul class="lc-list">
            <li>Clickable <code>&lt;div&gt;</code>s and <code>&lt;span&gt;</code>s → use <code>&lt;button&gt;</code> for actions and <code>&lt;a href&gt;</code> for navigation.</li>
            <li><code>*:focus { outline: none; }</code> in a reset → remove it, or add a clear <code>:focus-visible</code> style.</li>
            <li>Icon-only buttons with no name (screen reader just says "button") → add <code>aria-label</code> or visually hidden text.</li>
            <li>Adding ARIA that repeats or contradicts HTML, like <code>&lt;button role="button"&gt;</code> or <code>&lt;nav role="navigation"&gt;</code> → delete it; native elements already have these roles.</li>
            <li>Light grey text (#aaa on white is about 2.3:1) → use a darker shade that reaches 4.5:1; check in DevTools' colour picker.</li>
          </ul>
        </div>
        <div class="lc-section">
          <h2>Try It</h2>
          <ol>
            <li>Click inside the preview, then press <strong>Tab</strong> repeatedly. The first stop is the "Skip to main content" link (it appears at the top), then the menu button, and so on. Each focused item shows an orange ring.</li>
            <li>Press <strong>Enter</strong> on the "Menu" button. The list appears and <code>aria-expanded</code> flips to <code>true</code> — check it in DevTools (Inspect the button).</li>
            <li>Press the ➕ ☕ button (its accessible name is "Add chai to cart"). The status line changes to "Added: 1 chai". Because it has <code>aria-live="polite"</code>, a screen reader would announce it.</li>
            <li>Delete the <code>:focus-visible</code> rule and Tab again. Notice how much harder it is to follow — then put it back.</li>
            <li>Tab to "Allergy info" at the bottom and press <strong>Enter</strong>: the <code>&lt;details&gt;</code> opens with no JavaScript. Then paste the <code>popover</code> example above into the page and try its Help button.</li>
          </ol>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p><strong>Tip:</strong> Fix accessibility in this order: semantic HTML first, then CSS (contrast, focus styles), and ARIA last. If you find yourself adding lots of <code>role</code> attributes, stop and check whether a native element (<code>&lt;button&gt;</code>, <code>&lt;nav&gt;</code>, <code>&lt;details&gt;</code>, <code>&lt;dialog&gt;</code>) already does the job.</p></div>
      HTML
      starter_code: <<~'HTML'
        <!DOCTYPE html>
        <html lang="en">
        <head>
          <meta charset="UTF-8">
          <meta name="viewport" content="width=device-width, initial-scale=1.0">
          <title>Accessibility and ARIA</title>
          <style>
            body { font-family: system-ui, sans-serif; color: #1f2937; margin: 0; padding: 16px; }
            /* 1. Skip link: hidden off-screen until it gets focus */
            .skip-link { position: absolute; left: -999px; top: 8px; background: #1f2937; color: #fff; padding: 8px; }
            .skip-link:focus { left: 8px; }
            /* 2. Visible focus ring for keyboard users */
            a:focus-visible, button:focus-visible, input:focus-visible { outline: 3px solid #f59e0b; outline-offset: 2px; }
            button { font-size: 1rem; padding: 8px 14px; margin: 4px 0; }
            .hint { color: #4b5563; font-size: 0.9rem; } /* #4b5563 on white passes 4.5:1 */
          </style>
        </head>
        <body>
          <a class="skip-link" href="#main">Skip to main content</a>
          <header>
            <nav aria-label="Main">
              <!-- 3. Toggle button: aria-expanded tells screen readers open/closed -->
              <button type="button" id="menu-btn" aria-expanded="false" aria-controls="menu">
                <span aria-hidden="true">☰</span> Menu
              </button>
              <ul id="menu" hidden>
                <li><a href="#">Home</a></li>
                <li><a href="#">Chai menu</a></li>
              </ul>
            </nav>
          </header>
          <main id="main">
            <h1>Chai Point Order</h1>
            <!-- 4. Label + aria-describedby hint -->
            <label for="phone">Phone number</label>
            <input id="phone" type="tel" aria-describedby="phone-hint">
            <p id="phone-hint" class="hint">10 digits, no spaces.</p>
            <!-- 5. Icon-only button needs a name -->
            <button type="button" aria-label="Add chai to cart" id="add">➕ ☕</button>
            <!-- 6. Live region: changes are announced politely -->
            <p id="status" aria-live="polite">Cart is empty.</p>
            <!-- 7. Native disclosure widget: keyboard + screen reader support built in -->
            <details>
              <summary>Allergy info</summary>
              <p>Contains milk. Ask for oat milk.</p>
            </details>
          </main>
          <script>
            const btn = document.getElementById('menu-btn');
            btn.addEventListener('click', () => {
              const open = btn.getAttribute('aria-expanded') === 'true';
              btn.setAttribute('aria-expanded', String(!open));
              document.getElementById('menu').hidden = open;
            });
            let count = 0;
            document.getElementById('add').addEventListener('click', () => {
              count++;
              document.getElementById('status').textContent = 'Added: ' + count + ' chai';
            });
          </script>
        </body>
        </html>
      HTML
    },
    8 => {
      body: <<~'HTML',
        <div class="lc-intro">
          <p><strong>CSS</strong> (Cascading Style Sheets) controls how HTML looks: colours, fonts, spacing, layout, and how the page adapts to phones and laptops. HTML says <em>what</em> the content is; CSS says <em>how it should look</em>. In this lesson you will learn how a CSS rule is built, the three ways to add CSS, and two ideas that explain most "why is my style not working?" moments: the <strong>cascade</strong> and <strong>inheritance</strong>.</p>
        </div>
        <div class="lc-section">
          <h2>Anatomy of a CSS Rule</h2>
          <div class="lc-anatomy">
            <div class="lc-anatomy-row"><span class="lc-tag-open">h1 {</span><span class="lc-tag-content">color: teal; font-size: 2rem;</span><span class="lc-tag-close">}</span></div>
            <div class="lc-anatomy-labels"><span>selector</span><span>declarations (property: value;)</span><span>end of block</span></div>
          </div>
          <ul class="lc-list">
            <li><strong>Selector</strong> — which elements to style (<code>h1</code>, <code>.card</code>, <code>#logo</code>…).</li>
            <li><strong>Declaration block</strong> — everything inside <code>{ }</code>.</li>
            <li><strong>Declaration</strong> — one <code>property: value;</code> pair. The property is <em>what</em> to change, the value is <em>how</em>.</li>
            <li><strong>Semicolon</strong> — separates declarations. It is optional after the last one, but always adding it prevents bugs when you add more lines.</li>
          </ul>
          <p>Comments use <code>/* … */</code>. CSS has no <code>//</code> line comments — a <code>//</code> will silently break the next declaration or rule.</p>
        </div>
        <div class="lc-section">
          <h2>Three Ways to Add CSS</h2>
          <div class="lc-code-block"><pre><code>&lt;!-- 1. Inline: a style attribute on one element --&gt;<br>&lt;p style="color: crimson;"&gt;Sale today!&lt;/p&gt;<br><br>&lt;!-- 2. Internal: a &lt;style&gt; block in the &lt;head&gt; --&gt;<br>&lt;style&gt;<br>  p { color: crimson; }<br>&lt;/style&gt;<br><br>&lt;!-- 3. External: a separate file linked in the &lt;head&gt; --&gt;<br>&lt;link rel="stylesheet" href="styles.css"&gt;</code></pre></div>
          <table class="lc-table">
            <thead><tr><th>Method</th><th>Applies to</th><th>Good for</th><th>Downside</th></tr></thead>
            <tbody>
              <tr><td>Inline <code>style=""</code></td><td>One element</td><td>Quick tests; values set by JavaScript</td><td>Repeats everywhere, hard to maintain, beats most other rules</td></tr>
              <tr><td>Internal <code>&lt;style&gt;</code></td><td>One page</td><td>Single-page demos (like this editor)</td><td>Cannot be shared by other pages</td></tr>
              <tr><td>External <code>.css</code> file</td><td>Every page that links it</td><td><strong>Real websites — recommended</strong></td><td>One extra file to load (the browser caches it)</td></tr>
            </tbody>
          </table>
          <p>With an external file, changing one line in <code>styles.css</code> restyles the whole site, and the browser downloads it once and reuses it on every page. Note: the <code>.css</code> file contains only CSS rules — no <code>&lt;style&gt;</code> tags.</p>
        </div>
        <div class="lc-section">
          <h2>Worked Example: Before and After</h2>
          <div class="lc-code-block"><pre><code>&lt;h1&gt;Campus Fest 2026&lt;/h1&gt;<br>&lt;p&gt;Entry: ₹100. Bring your ID card.&lt;/p&gt;<br><br>&lt;style&gt;<br>  body { font-family: system-ui, sans-serif; background: #fff7ed; }<br>  h1   { color: #c2410c; text-align: center; }<br>  p    { color: #374151; line-height: 1.6; }<br>&lt;/style&gt;</code></pre></div>
          <p><strong>What you will see:</strong> before the CSS, a black serif heading on the left and a plain paragraph on white — the browser's default styles. After it, the whole page has a light peach background, the heading is dark orange and centred, all text uses a clean sans-serif font, and the paragraph is dark grey with more space between lines. The HTML did not change at all.</p>
        </div>
        <div class="lc-section">
          <h2>The Cascade (Who Wins?)</h2>
          <p>When several rules set the same property on the same element, the browser picks a winner. In one sentence: <strong>it compares origin and importance first, then specificity, then source order — the later rule wins a tie.</strong></p>
          <div class="lc-flow">
            <div class="lc-flow-step">1. Origin &amp; importance<small>your CSS beats browser defaults; !important changes this</small></div>
            <div class="lc-flow-arrow">→</div>
            <div class="lc-flow-step">2. Specificity<small>#id &gt; .class &gt; element (next lesson)</small></div>
            <div class="lc-flow-arrow">→</div>
            <div class="lc-flow-step">3. Order<small>last one written wins</small></div>
          </div>
          <div class="lc-code-block"><pre><code>p { color: blue; }<br>p { color: green; }   /* same selector, written later → wins */</code></pre></div>
          <p><strong>Result:</strong> paragraphs are green. (Modern CSS also has cascade layers, <code>@layer</code>, which let you control this order on purpose — covered in Lesson 18.)</p>
        </div>
        <div class="lc-section">
          <h2>Inheritance</h2>
          <p>Some properties pass from a parent to its children automatically. Mostly <strong>text</strong> properties inherit; <strong>box</strong> properties do not. That is why setting <code>font-family</code> on <code>body</code> changes the whole page, but a border on <code>body</code> does not put a border on every paragraph.</p>
          <table class="lc-table">
            <thead><tr><th>Inherits ✓</th><th>Does not inherit ✗</th></tr></thead>
            <tbody>
              <tr><td><code>color</code>, <code>font-family</code>, <code>font-size</code>, <code>font-weight</code></td><td><code>border</code>, <code>padding</code>, <code>margin</code></td></tr>
              <tr><td><code>line-height</code>, <code>text-align</code>, <code>letter-spacing</code></td><td><code>background</code>, <code>width</code>, <code>height</code></td></tr>
              <tr><td><code>visibility</code>, <code>cursor</code>, <code>list-style</code></td><td><code>display</code>, <code>position</code></td></tr>
            </tbody>
          </table>
          <p>You can control this with keywords that work on any property:</p>
          <ul class="lc-list">
            <li><code>inherit</code> — take the parent's value. Example: <code>a { color: inherit; }</code> makes links match the surrounding text.</li>
            <li><code>initial</code> — use the property's <em>CSS-spec</em> starting value, not the browser's default for that element. Careful: <code>display: initial</code> gives <code>inline</code>, even on a <code>&lt;div&gt;</code>.</li>
            <li><code>unset</code> — acts like <code>inherit</code> for inherited properties, <code>initial</code> for the rest.</li>
          </ul>
        </div>
        <div class="lc-section">
          <h2>DevTools: Your CSS Debugger</h2>
          <p>Right-click any element → <strong>Inspect</strong>. The <strong>Styles</strong> panel lists every rule that matches, with the winner at the top. Overridden declarations are shown <s>struck through</s>, invalid ones get a warning icon, and you can tick checkboxes or edit values live. The <strong>Computed</strong> tab shows the final value of each property and which rule set it.</p>
        </div>
        <div class="lc-section">
          <h2>Common Mistakes</h2>
          <ul class="lc-list">
            <li>Missing semicolon: <code>color: red font-size: 20px;</code> → the browser drops the whole broken declaration, so both values are lost. Add <code>;</code> after every value.</li>
            <li>Missing units: <code>width: 200;</code> is ignored → write <code>width: 200px;</code> (for lengths, only <code>0</code> may skip the unit).</li>
            <li>Quoting values: <code>color: "red";</code> is invalid → write <code>color: red;</code>. Quotes are for strings, such as font names with spaces or <code>content</code> text.</li>
            <li>Using <code>//</code> comments → use <code>/* … */</code>.</li>
            <li>Wrong path in <code>&lt;link href&gt;</code>, so nothing is styled → check the Network tab in DevTools for a 404 on the CSS file.</li>
          </ul>
        </div>
        <div class="lc-section">
          <h2>Try It</h2>
          <ol>
            <li>Look at card 1: the <code>&lt;strong&gt;</code> text is purple even though no rule targets <code>strong</code> — it <em>inherits</em> <code>color</code> from <code>.card</code>. But it has no dashed border of its own, because <code>border</code> does not inherit.</li>
            <li>In the <code>&lt;style&gt;</code> block, add <code>p { color: green; }</code> <em>below</em> the existing <code>p</code> rule. Paragraph 2 turns green: same selector, later rule wins.</li>
            <li>Paragraph 3 has an inline style. Try making it blue from the <code>&lt;style&gt;</code> block with <code>p { color: blue; }</code> — it stays crimson. Inline styles beat normal selectors.</li>
            <li>Remove the <code>color: inherit;</code> line from the <code>a</code> rule. The link turns the browser's default blue.</li>
          </ol>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p><strong>Tip:</strong> Set your fonts, text colour and line-height once on <code>body</code> and let inheritance do the rest. You will write far less CSS and your pages will look consistent.</p></div>
      HTML
      starter_code: <<~'HTML'
        <!DOCTYPE html>
        <html lang="en">
        <head>
          <meta charset="UTF-8">
          <meta name="viewport" content="width=device-width, initial-scale=1.0">
          <title>Introduction to CSS</title>
          <!-- On a real site: <link rel="stylesheet" href="styles.css"> -->
          <style>
            /* Internal CSS: applies to this page only */
            body {
              font-family: system-ui, sans-serif;  /* inherited by everything */
              line-height: 1.6;
              background: #fff7ed;
              padding: 16px;
            }
            h1 { color: #c2410c; text-align: center; }
            p { color: #374151; }
            /* 1. Inheritance demo */
            .card {
              color: #6d28d9;              /* inherits into children */
              border: 2px dashed #6d28d9;  /* does NOT inherit */
              padding: 12px;
              margin-bottom: 12px;
            }
            /* 2. The inherit keyword */
            a { color: inherit; }
          </style>
        </head>
        <body>
          <h1>Campus Fest 2026</h1>
          <div class="card">
            1. This card is purple. The <strong>bold word</strong> inherits the purple colour
            but not the dashed border. <a href="#">This link</a> uses color: inherit.
          </div>
          <p>2. A normal paragraph styled by the p rule (dark grey).</p>
          <!-- 3. Inline style: beats the p rule above -->
          <p style="color: crimson;">3. Inline style: this paragraph is crimson.</p>
          <p>Entry: ₹100. Bring your ID card.</p>
        </body>
        </html>
      HTML
    },
    9 => {
      body: <<~'HTML',
        <div class="lc-intro">
          <p><strong>Selectors</strong> decide which elements a CSS rule styles. <strong>Specificity</strong> decides which rule wins when two rules disagree. Master both and you will stop guessing — you will be able to look at any conflict and <em>calculate</em> the winner. This lesson covers every basic selector type, the four combinators, and how to score specificity.</p>
        </div>
        <div class="lc-section">
          <h2>Basic Selectors</h2>
          <table class="lc-table">
            <thead><tr><th>Selector</th><th>Example</th><th>Matches</th></tr></thead>
            <tbody>
              <tr><td>Type (element)</td><td><code>p</code></td><td>every <code>&lt;p&gt;</code></td></tr>
              <tr><td>Class</td><td><code>.price</code></td><td>every element with <code>class="price"</code> (an element can have many classes)</td></tr>
              <tr><td>ID</td><td><code>#cart</code></td><td>the one element with <code>id="cart"</code> (ids must be unique per page)</td></tr>
              <tr><td>Universal</td><td><code>*</code></td><td>every element</td></tr>
              <tr><td>Compound</td><td><code>p.price</code> / <code>.btn.primary</code></td><td>a <code>&lt;p&gt;</code> that has class <code>price</code> / an element with both classes (no space!)</td></tr>
              <tr><td>Grouping</td><td><code>h1, h2, h3</code></td><td>all three — one rule, several selectors, separated by commas</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-section">
          <h2>Attribute Selectors</h2>
          <p>Select elements by their attributes — great for forms and links without adding extra classes.</p>
          <table class="lc-table">
            <thead><tr><th>Selector</th><th>Matches</th></tr></thead>
            <tbody>
              <tr><td><code>[required]</code></td><td>has the attribute at all</td></tr>
              <tr><td><code>input[type="email"]</code></td><td>attribute equals exactly <code>email</code></td></tr>
              <tr><td><code>a[href^="https"]</code></td><td>value <strong>starts with</strong> <code>https</code></td></tr>
              <tr><td><code>a[href$=".pdf"]</code></td><td>value <strong>ends with</strong> <code>.pdf</code></td></tr>
              <tr><td><code>a[href*="youtube"]</code></td><td>value <strong>contains</strong> <code>youtube</code></td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-section">
          <h2>Combinators: Selecting by Relationship</h2>
          <div class="lc-code-block"><pre><code>&lt;div class="menu"&gt;<br>  &lt;h2&gt;Snacks&lt;/h2&gt;<br>  &lt;p&gt;A&lt;/p&gt;              &lt;!-- direct child of .menu --&gt;<br>  &lt;section&gt;&lt;p&gt;B&lt;/p&gt;&lt;/section&gt;  &lt;!-- grandchild --&gt;<br>  &lt;p&gt;C&lt;/p&gt;<br>&lt;/div&gt;</code></pre></div>
          <table class="lc-table">
            <thead><tr><th>Combinator</th><th>Selector</th><th>Meaning</th><th>Matches</th></tr></thead>
            <tbody>
              <tr><td>Descendant (space)</td><td><code>.menu p</code></td><td>any <code>p</code> anywhere inside <code>.menu</code></td><td>A, B, C</td></tr>
              <tr><td>Child <code>&gt;</code></td><td><code>.menu &gt; p</code></td><td>only direct children</td><td>A, C</td></tr>
              <tr><td>Adjacent sibling <code>+</code></td><td><code>h2 + p</code></td><td>the <code>p</code> <em>immediately</em> after an <code>h2</code></td><td>A</td></tr>
              <tr><td>General sibling <code>~</code></td><td><code>h2 ~ p</code></td><td>every <code>p</code> after the <code>h2</code>, same parent</td><td>A, C</td></tr>
            </tbody>
          </table>
          <p>B is not matched by <code>h2 ~ p</code> because B's parent is the <code>&lt;section&gt;</code>, not <code>.menu</code>.</p>
        </div>
        <div class="lc-section">
          <h2>Specificity: Scoring a Selector</h2>
          <p>Write every selector's score as three numbers <strong>(IDs, classes, types)</strong>:</p>
          <ul class="lc-list">
            <li><strong>IDs</strong> column: each <code>#id</code>.</li>
            <li><strong>Classes</strong> column: each <code>.class</code>, attribute selector <code>[type="email"]</code>, and pseudo-class like <code>:hover</code>.</li>
            <li><strong>Types</strong> column: each element name like <code>p</code>, and pseudo-element like <code>::before</code>.</li>
            <li>Worth <strong>zero</strong>: <code>*</code> and the combinators (space, <code>&gt;</code>, <code>+</code>, <code>~</code>).</li>
          </ul>
          <table class="lc-table">
            <thead><tr><th>Selector</th><th>IDs</th><th>Classes</th><th>Types</th><th>Score</th></tr></thead>
            <tbody>
              <tr><td><code>p</code></td><td>0</td><td>0</td><td>1</td><td>(0,0,1)</td></tr>
              <tr><td><code>nav a</code></td><td>0</td><td>0</td><td>2</td><td>(0,0,2)</td></tr>
              <tr><td><code>.card</code></td><td>0</td><td>1</td><td>0</td><td>(0,1,0)</td></tr>
              <tr><td><code>.card p</code></td><td>0</td><td>1</td><td>1</td><td>(0,1,1)</td></tr>
              <tr><td><code>a[href^="https"]</code></td><td>0</td><td>1</td><td>1</td><td>(0,1,1)</td></tr>
              <tr><td><code>.btn.btn-primary</code></td><td>0</td><td>2</td><td>0</td><td>(0,2,0)</td></tr>
              <tr><td><code>#cart</code></td><td>1</td><td>0</td><td>0</td><td>(1,0,0)</td></tr>
              <tr><td><code>ul#menu li.active &gt; a</code></td><td>1</td><td>1</td><td>3</td><td>(1,1,3)</td></tr>
            </tbody>
          </table>
          <p><strong>Compare left to right</strong>, like comparing version numbers (2.0.0 is newer than 1.11.0): the first column that differs decides. So <code>#cart</code> (1,0,0) beats <code>.a.b.c.d.e.f.g.h.i.j.k</code> (0,11,0) — classes never "add up" to an ID.</p>
          <h3>Worked example</h3>
          <div class="lc-code-block"><pre><code>&lt;p id="offer" class="note"&gt;Samosa ₹20&lt;/p&gt;<br><br>#offer       { color: green; }  /* (1,0,0) */<br>p.note       { color: blue;  }  /* (0,1,1) */<br>p            { color: red;   }  /* (0,0,1), written last */</code></pre></div>
          <p><strong>What you will see:</strong> the text is <strong>green</strong>. <code>#offer</code> has the highest score, so writing <code>p</code> last does not help — source order only breaks a tie between <em>equal</em> scores.</p>
        </div>
        <div class="lc-section">
          <h2>Beyond Selectors: Inline Styles and !important</h2>
          <table class="lc-table">
            <thead><tr><th>Source</th><th>Strength</th><th>Advice</th></tr></thead>
            <tbody>
              <tr><td>Equal specificity</td><td>Later rule wins</td><td>Normal and expected</td></tr>
              <tr><td>Inline <code>style=""</code></td><td>Beats any selector in a stylesheet</td><td>Avoid in real CSS; it is hard to override</td></tr>
              <tr><td><code>!important</code></td><td>Beats all normal declarations, including inline styles</td><td>Last resort only (e.g. overriding third-party CSS) — it starts an "important war"</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-section">
          <h2>Prefer Classes (and a Naming Pattern)</h2>
          <p>Style mostly with <strong>single classes</strong>. They are reusable, easy to override, and keep specificity low and flat. Keep IDs for fragment links (<code>#contact</code>) and JavaScript/labels. Many teams use <strong>BEM</strong> naming — <em>Block__Element--Modifier</em>:</p>
          <div class="lc-code-block"><pre><code>.card { }            /* block */<br>.card__title { }     /* element inside the block */<br>.card--featured { }  /* a variation of the block */</code></pre></div>
          <p>Every rule is one class (0,1,0), so conflicts are rare and easy to reason about. <em>Pseudo-classes like <code>:hover</code> are the next lesson.</em></p>
        </div>
        <div class="lc-section">
          <h2>Common Mistakes</h2>
          <ul class="lc-list">
            <li>Confusing <code>.btn.primary</code> (one element with both classes) with <code>.btn .primary</code> (a <code>.primary</code> <em>inside</em> a <code>.btn</code>) → the space matters.</li>
            <li>Thinking the last rule always wins → it only wins when specificity is equal. Calculate the scores first.</li>
            <li>Fixing conflicts with <code>!important</code> → lower the specificity of the other rule, or use one more class.</li>
            <li>Long chains like <code>body div.main ul li a</code> → they are fragile and hard to override. Use a class such as <code>.nav-link</code>.</li>
            <li>Reusing an id on several elements → ids must be unique; use a class instead.</li>
          </ul>
        </div>
        <div class="lc-section">
          <h2>Try It</h2>
          <ol>
            <li>Read each numbered line in the preview: it tells you which selector styled it. Check the colours match.</li>
            <li>Line 4 is green because <code>#special</code> (1,0,0) beats <code>.menu p</code> (0,1,1). Add <code>.menu p.item { color: purple; }</code> at the end — it is still green, because (0,2,1) is still lower than (1,0,0).</li>
            <li>Change <code>.menu &gt; p</code> to <code>.menu p</code> (a space instead of <code>&gt;</code>). The nested line 3 now gets the underline too.</li>
          </ol>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p><strong>Tip:</strong> In DevTools, hover over a selector in the Styles panel — Chrome shows its specificity score as a tooltip, such as "Specificity: (0,1,1)". Use it to check your own calculations.</p></div>
      HTML
      starter_code: <<~'HTML'
        <!DOCTYPE html>
        <html lang="en">
        <head>
          <meta charset="UTF-8">
          <meta name="viewport" content="width=device-width, initial-scale=1.0">
          <title>CSS Selectors and Specificity</title>
          <style>
            body { font-family: system-ui, sans-serif; padding: 16px; color: #1f2937; }
            /* Type selector (0,0,1) */
            p { margin: 6px 0; }
            /* Descendant (0,1,1): any p inside .menu */
            .menu p { color: #2563eb; }
            /* Child (0,1,1): only direct children of .menu */
            .menu > p { text-decoration: underline; }
            /* Adjacent sibling (0,0,2): the p right after an h2 */
            h2 + p { font-weight: bold; }
            /* ID (1,0,0): beats .menu p */
            #special { color: #16a34a; }
            /* Attribute selectors (0,1,1) */
            a[href^="https"] { color: #c2410c; }
            input[type="email"] { border: 2px solid #7c3aed; }
            /* Grouping */
            h1, h2 { font-family: Georgia, serif; }
          </style>
        </head>
        <body>
          <h1>Snack Menu</h1>
          <div class="menu">
            <h2>Snacks</h2>
            <p class="item">1. Blue + underline + bold (.menu p, .menu &gt; p, h2 + p)</p>
            <p class="item">2. Blue + underline (.menu p, .menu &gt; p)</p>
            <section>
              <p class="item">3. Blue only: nested, so .menu &gt; p does not match</p>
            </section>
            <p class="item" id="special">4. Green: #special (1,0,0) beats .menu p (0,1,1)</p>
          </div>
          <p>5. <a href="https://example.com">Orange link</a> via a[href^="https"]</p>
          <label for="em">6. Email (purple border via input[type="email"]):</label>
          <input id="em" type="email">
        </body>
        </html>
      HTML
    },
    10 => {
      body: <<~'HTML',
        <div class="lc-intro">
          <p>A <strong>pseudo-class</strong> (one colon, like <code>:hover</code>) selects an element when it is in a certain <em>state</em> or <em>position</em> — hovered, focused, checked, the first child. A <strong>pseudo-element</strong> (two colons, like <code>::before</code>) styles a <em>part</em> of an element, or adds content that is not in the HTML. Together they let you build hover effects, zebra-striped tables, form feedback and decorative details with no extra classes or JavaScript.</p>
        </div>
        <div class="lc-section">
          <h2>User-Action Pseudo-classes</h2>
          <table class="lc-table">
            <thead><tr><th>Pseudo-class</th><th>Matches when…</th></tr></thead>
            <tbody>
              <tr><td><code>:hover</code></td><td>the mouse pointer is over it (touch screens have no real hover — never hide important things behind it)</td></tr>
              <tr><td><code>:focus</code></td><td>it has focus (clicked input, tabbed link)</td></tr>
              <tr><td><code>:focus-visible</code></td><td>it has focus <em>and</em> the browser thinks a focus ring should show — e.g. keyboard Tab. Clicking a button with the mouse usually does not match; clicking into a text input usually does.</td></tr>
              <tr><td><code>:active</code></td><td>it is being pressed right now</td></tr>
              <tr><td><code>:visited</code></td><td>a link the user has already visited. For privacy, browsers only allow <strong>colour</strong> changes here (no size, no background images) and scripts cannot read the result.</td></tr>
            </tbody>
          </table>
          <div class="lc-code-block"><pre><code>a:visited      { color: #6b21a8; }<br>a:hover        { text-decoration-thickness: 3px; }<br>a:focus-visible { outline: 3px solid #f59e0b; outline-offset: 2px; }<br>a:active       { color: #b91c1c; }</code></pre></div>
          <p>For links, keep the order <strong>:link → :visited → :hover → :active</strong> ("LoVe HAte"). They have the same specificity, so a later rule overrides an earlier one — if both set <code>color</code> and you put <code>:visited</code> after <code>:hover</code>, visited links stop showing the hover colour.</p>
        </div>
        <div class="lc-section">
          <h2>Structural Pseudo-classes</h2>
          <p>These select by position among siblings. For a list of six <code>&lt;li&gt;</code> items:</p>
          <table class="lc-table">
            <thead><tr><th>Selector</th><th>Items matched</th></tr></thead>
            <tbody>
              <tr><td><code>li:first-child</code></td><td>1</td></tr>
              <tr><td><code>li:last-child</code></td><td>6</td></tr>
              <tr><td><code>li:nth-child(odd)</code> = <code>li:nth-child(2n+1)</code></td><td>1, 3, 5</td></tr>
              <tr><td><code>li:nth-child(even)</code> = <code>li:nth-child(2n)</code></td><td>2, 4, 6</td></tr>
              <tr><td><code>li:nth-child(3)</code></td><td>3 only</td></tr>
              <tr><td><code>li:nth-child(3n)</code></td><td>3, 6</td></tr>
              <tr><td><code>li:not(:last-child)</code></td><td>1, 2, 3, 4, 5</td></tr>
            </tbody>
          </table>
          <p>Important: <code>p:first-child</code> means "a <code>p</code> that is the first child of its parent". If an <code>&lt;h2&gt;</code> comes first, <strong>no</strong> <code>p</code> matches. Use <code>p:first-of-type</code> for "the first <code>p</code>". A classic use of <code>:not()</code>: <code>li:not(:last-child) { border-bottom: 1px solid #ddd; }</code> — dividers between items, but none after the last.</p>
        </div>
        <div class="lc-section">
          <h2>Form-State Pseudo-classes</h2>
          <ul class="lc-list">
            <li><code>:checked</code> — a ticked checkbox or selected radio/option.</li>
            <li><code>:disabled</code> / <code>:enabled</code> — controls with or without the <code>disabled</code> attribute.</li>
            <li><code>:required</code> / <code>:optional</code> — has or lacks the <code>required</code> attribute.</li>
            <li><code>:valid</code> / <code>:invalid</code> — passes or fails built-in validation. Note: an empty required field is <code>:invalid</code> as soon as the page loads, so red borders appear before the user types anything.</li>
            <li><code>:user-invalid</code> — invalid <em>and</em> the user has interacted with it (edited and left the field, or tried to submit). Baseline since late 2023, so safe in current browsers. Use this for error styles.</li>
          </ul>
          <div class="lc-code-block"><pre><code>input:user-invalid { border-color: #dc2626; }<br>input:disabled     { opacity: 0.6; cursor: not-allowed; }</code></pre></div>
        </div>
        <div class="lc-section">
          <h2>:has() — the "Parent" Selector</h2>
          <p><code>A:has(B)</code> selects <strong>A</strong> if it contains something matching <strong>B</strong>. For years CSS could not style a parent based on its children; <code>:has()</code> has been Baseline since December 2023 and works in all current browsers.</p>
          <div class="lc-code-block"><pre><code>.card:has(img) { padding-top: 0; }             /* cards that contain an image */<br>label:has(input:checked) { background: #dcfce7; } /* label of a ticked box */<br>form:has(:user-invalid) .error-note { display: block; }</code></pre></div>
          <p><strong>What you will see</strong> with the second rule: when you tick a checkbox inside a label, the whole label turns light green; untick it and the green disappears — no JavaScript involved.</p>
        </div>
        <div class="lc-section">
          <h2>Pseudo-elements</h2>
          <table class="lc-table">
            <thead><tr><th>Pseudo-element</th><th>Styles</th></tr></thead>
            <tbody>
              <tr><td><code>::before</code> / <code>::after</code></td><td>generated content inserted as the first / last child. <strong>Needs a <code>content</code> property</strong> (use <code>content: ""</code> for pure decoration).</td></tr>
              <tr><td><code>::first-letter</code></td><td>the first letter of a block (drop caps)</td></tr>
              <tr><td><code>::first-line</code></td><td>the first rendered line of a block (changes when the width changes)</td></tr>
              <tr><td><code>::placeholder</code></td><td>the placeholder text of an input</td></tr>
              <tr><td><code>::selection</code></td><td>text the user highlights</td></tr>
              <tr><td><code>::marker</code></td><td>the bullet or number of a list item (colour, font)</td></tr>
            </tbody>
          </table>
          <h3>Worked example: required-field star</h3>
          <div class="lc-code-block"><pre><code>&lt;label for="name" class="req"&gt;Name&lt;/label&gt;<br><br>.req::after {<br>  content: " *";<br>  color: #dc2626;<br>}</code></pre></div>
          <p><strong>What you will see:</strong> "Name *" with a red star, although the star is not in the HTML. <code>::before</code> and <code>::after</code> do not reliably work on <code>&lt;img&gt;</code> or <code>&lt;input&gt;</code>, because those elements have no content of their own to insert into. Screen readers usually read generated text, but it cannot be selected or copied — keep essential information in the HTML (here, the input should also have the <code>required</code> attribute).</p>
          <p><strong>One colon or two?</strong> CSS3 introduced <code>::</code> to separate pseudo-elements from pseudo-classes. Browsers still accept the old single-colon form for the four original ones (<code>:before</code>, <code>:after</code>, <code>:first-line</code>, <code>:first-letter</code>), but write <code>::</code> in new code; newer ones like <code>::placeholder</code> only work with two colons.</p>
        </div>
        <div class="lc-section">
          <h2>Specificity Recap</h2>
          <table class="lc-table">
            <thead><tr><th>Selector</th><th>Score</th><th>Why</th></tr></thead>
            <tbody>
              <tr><td><code>a:hover</code></td><td>(0,1,1)</td><td>pseudo-class counts as a class</td></tr>
              <tr><td><code>li:nth-child(odd)</code></td><td>(0,1,1)</td><td>same</td></tr>
              <tr><td><code>p::first-line</code></td><td>(0,0,2)</td><td>pseudo-element counts as a type</td></tr>
              <tr><td><code>.card:has(img)</code></td><td>(0,1,1)</td><td><code>:has()</code> and <code>:not()</code> count their most specific argument (<code>img</code>), not themselves</td></tr>
              <tr><td><code>li:not(#top)</code></td><td>(1,0,1)</td><td>the <code>#top</code> argument counts as an ID</td></tr>
              <tr><td><code>:is(#a, .b) p</code></td><td>(1,0,1)</td><td><code>:is()</code> also takes its most specific argument (<code>#a</code>), even when the element only matches <code>.b</code></td></tr>
              <tr><td><code>:where(.card) p</code></td><td>(0,0,1)</td><td><code>:where()</code> always counts as <strong>zero</strong>, whatever is inside it</td></tr>
            </tbody>
          </table>
          <p><code>:is()</code> and <code>:where()</code> both match "any of these selectors" and save typing: <code>:is(h1, h2, h3) a</code> is the same as <code>h1 a, h2 a, h3 a</code>. The only difference is specificity. Use <code>:where()</code> in resets and library defaults, so any later simple rule can override them:</p>
          <div class="lc-code-block"><pre><code>:where(ul[class], ol[class]) { list-style: none; padding: 0; }  /* (0,0,0) */<br>.steps { padding-left: 1.5rem; }                        /* (0,1,0) → wins easily */</code></pre></div>
          <p><strong>Result:</strong> lists with a class lose their bullets and padding, but <code>.steps</code> still gets its <code>1.5rem</code> padding, because the reset scores zero. With <code>:is(ul[class], ol[class])</code> the reset would score (0,1,1) and beat <code>.steps</code>, even though <code>.steps</code> comes later.</p>
        </div>
        <div class="lc-section">
          <h2>Common Mistakes</h2>
          <ul class="lc-list">
            <li><code>::before</code> shows nothing → you forgot <code>content</code>. Add <code>content: "";</code> (or some text).</li>
            <li>Expecting <code>p:first-child</code> to find the first paragraph after a heading → use <code>p:first-of-type</code>.</li>
            <li><code>button:focus { outline: none; }</code> → keep a visible <code>:focus-visible</code> style for keyboard users.</li>
            <li>Showing menus or info only on <code>:hover</code> → phone users cannot hover; make it work on click/focus too.</li>
            <li>Styling errors with <code>:invalid</code> so empty forms look red on load → use <code>:user-invalid</code>.</li>
          </ul>
        </div>
        <div class="lc-section">
          <h2>Try It</h2>
          <ol>
            <li>Hover the button (it darkens), then click in the preview and press <strong>Tab</strong> until it gets an orange focus ring (<code>:focus-visible</code>). Hold the mouse down on it to see <code>:active</code> shrink it slightly.</li>
            <li>The team list is striped with <code>:nth-child(odd)</code>. Change it to <code>:nth-child(3n)</code> — only Dhoni and Pandya stay shaded.</li>
            <li>Tick "Extra ginger". The whole label turns green thanks to <code>label:has(input:checked)</code>.</li>
            <li>Type "abc" in the email field and click outside it. The border turns red (<code>:user-invalid</code>). Also notice the red star from <code>::after</code> and the big first letter from <code>::first-letter</code>.</li>
          </ol>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p><strong>Tip:</strong> In Chrome DevTools, select an element and click <strong>:hov</strong> in the Styles panel to force states like <code>:hover</code>, <code>:focus-visible</code> or <code>:active</code>. You can then edit those styles without keeping your mouse in place.</p></div>
      HTML
      starter_code: <<~'HTML'
        <!DOCTYPE html>
        <html lang="en">
        <head>
          <meta charset="UTF-8">
          <meta name="viewport" content="width=device-width, initial-scale=1.0">
          <title>Pseudo-classes and Pseudo-elements</title>
          <style>
            body { font-family: system-ui, sans-serif; padding: 16px; color: #1f2937; }
            /* 1. User actions */
            .btn { background: #4f46e5; color: #fff; border: 0; padding: 10px 18px; border-radius: 6px; font-size: 1rem; }
            .btn:hover { background: #3730a3; }
            .btn:focus-visible { outline: 3px solid #f59e0b; outline-offset: 2px; }
            .btn:active { transform: scale(0.95); }
            /* 2. Structure */
            .team li { padding: 4px 8px; }
            .team li:nth-child(odd) { background: #e0e7ff; }
            .team li:last-child { font-weight: bold; }
            .team li::marker { color: #db2777; }
            /* 3. Forms and :has() */
            label:has(input:checked) { background: #dcfce7; }
            input[type="email"]:user-invalid { border: 2px solid #dc2626; }
            .req::after { content: " *"; color: #dc2626; }
            input::placeholder { color: #6b7280; font-style: italic; }
            /* 4. Pseudo-elements on text */
            .intro::first-letter { font-size: 2.2em; color: #4f46e5; font-weight: bold; }
            ::selection { background: #fde68a; }
          </style>
        </head>
        <body>
          <p class="intro">Select this text to see ::selection. The first letter is styled by ::first-letter.</p>
          <h2>1. Button states</h2>
          <button class="btn" type="button">Hover, Tab to me, press me</button>
          <h2>2. Playing XI (partial)</h2>
          <ol class="team">
            <li>Rohit</li><li>Gill</li><li>Dhoni</li>
            <li>Rahul</li><li>Jadeja</li><li>Pandya</li>
          </ol>
          <h2>3. Chai order form</h2>
          <label><input type="checkbox"> Extra ginger</label>
          <p>
            <label for="email" class="req">Email</label><br>
            <input id="email" type="email" required placeholder="you@example.com">
          </p>
        </body>
        </html>
      HTML
    },

    11 => {
      body: <<~'HTML',
        <div class="lc-intro">
          <p>Colour and space are what turn plain HTML into a designed page. In this lesson you will learn the colour formats CSS understands, how to paint backgrounds with colours, gradients and images, and which <strong>units</strong> to use for sizes. Choosing the right unit (for example <code>rem</code> instead of <code>px</code> for text) makes your page respect the reader's own settings and work on every screen.</p>
        </div>
        <div class="lc-section">
          <h2>Colour Formats</h2>
          <p>CSS accepts many ways to write a colour. They all end up as a colour on screen; they differ in how easy they are to read and adjust. The same indigo (<code>#4f46e5</code>) is shown in several formats below.</p>
          <table class="lc-table">
            <thead><tr><th>Format</th><th>Example</th><th>Notes</th></tr></thead>
            <tbody>
              <tr><td>Named</td><td><code>tomato</code>, <code>teal</code></td><td>About 150 keywords. Handy for quick tests.</td></tr>
              <tr><td>Hex</td><td><code>#4f46e5</code>, <code>#fff</code>, <code>#4f46e580</code></td><td><code>#rrggbb</code>, short <code>#rgb</code>, and <code>#rrggbbaa</code> with alpha (<code>80</code> ≈ 50%).</td></tr>
              <tr><td>rgb()</td><td><code>rgb(79 70 229 / 50%)</code></td><td>Modern space syntax; alpha after a slash. Old comma syntax <code>rgb(79, 70, 229)</code> and <code>rgba(79, 70, 229, 0.5)</code> still work.</td></tr>
              <tr><td>hsl()</td><td><code>hsl(243 75% 59%)</code></td><td>Hue (0–360°), saturation, lightness. Easy to make lighter/darker shades.</td></tr>
              <tr><td>oklch()</td><td><code>oklch(51% 0.23 277)</code></td><td>Lightness, chroma, hue. Modern: Baseline 2023, widely available since late 2025. Equal lightness numbers look about equally light to the eye.</td></tr>
              <tr><td>Keywords</td><td><code>currentColor</code>, <code>transparent</code></td><td><code>currentColor</code> = the element's own <code>color</code> value; <code>transparent</code> = fully see-through.</td></tr>
            </tbody>
          </table>
          <div class="lc-code-block"><pre><code>.btn {<br>  color: #4f46e5;<br>  border: 2px solid currentColor;   /* border matches the text colour */<br>  background: transparent;<br>}<br>.btn:hover { background: rgb(79 70 229 / 10%); }  /* 10% tint */</code></pre></div>
          <h3>opacity vs an alpha colour</h3>
          <p><code>opacity: 0.5</code> fades the <strong>whole element</strong>: background, text, borders and every child. An alpha colour such as <code>rgb(0 0 0 / 50%)</code> fades <strong>only that one colour</strong>, so text on top stays crisp.</p>
          <div class="lc-two-col">
            <div><div class="lc-col-label lc-bad">✗ Avoid (text fades too)</div><div class="lc-code-block"><pre><code>.banner { background: #4f46e5; opacity: 0.5; }</code></pre></div></div>
            <div><div class="lc-col-label lc-good">✓ Better (only background fades)</div><div class="lc-code-block"><pre><code>.banner { background: rgb(79 70 229 / 50%); }</code></pre></div></div>
          </div>
        </div>
        <div class="lc-section">
          <h2>Backgrounds</h2>
          <ul class="lc-list">
            <li><code>background-color</code> — a solid colour; always set one as a fallback under images.</li>
            <li><code>background-image</code> — <code>url(...)</code> or a gradient: <code>linear-gradient(135deg, #4f46e5, #06b6d4)</code> or <code>radial-gradient(circle, #fde68a, #f59e0b)</code>.</li>
            <li><code>background-size</code> — <code>cover</code> fills the box (may crop the image); <code>contain</code> shows the whole image (may leave empty space).</li>
            <li><code>background-position</code> — e.g. <code>center</code>, <code>top right</code>, <code>50% 20%</code>.</li>
            <li><code>background-repeat</code> — images repeat (tile) by default; use <code>no-repeat</code> to stop it.</li>
          </ul>
          <p>You can stack several backgrounds, separated by commas. The <strong>first one listed is drawn on top</strong>:</p>
          <div class="lc-code-block"><pre><code>.hero {<br>  background-color: #1e1b4b;                       /* fallback */<br>  background-image:<br>    linear-gradient(rgb(0 0 0 / 40%), rgb(0 0 0 / 40%)),  /* dark layer on top */<br>    url("chai-stall.jpg");                         /* photo underneath */<br>  background-size: cover;<br>  background-position: center;<br>}</code></pre></div>
          <p><strong>What you will see:</strong> the photo fills the hero and is centred; a 40% black layer darkens it so white heading text is easy to read. If the image fails to load, the dark <code>#1e1b4b</code> colour shows instead.</p>
        </div>
        <div class="lc-section">
          <h2>Gradients in More Detail</h2>
          <p>Gradients are images made by the browser, so they go in <code>background-image</code> (or the <code>background</code> shorthand) and need no file download.</p>
          <div class="lc-code-block"><pre><code>linear-gradient(to right, #f97316, #facc15)          /* left → right */<br>linear-gradient(135deg, #4f46e5, #06b6d4)            /* diagonal */<br>linear-gradient(#ff9933 0 33%, white 33% 66%, #138808 66%)  /* hard stripes */<br>radial-gradient(circle at center, #fde68a, #f59e0b)  /* glow from the middle */</code></pre></div>
          <p><strong>What you will see:</strong> the third one has no blending at all: each colour starts exactly where the previous one ends, giving three flat stripes (saffron at the top, white, green at the bottom). Repeating a stop position like <code>33%</code> is how you make hard edges.</p>
          <h3>Which colour format should I use?</h3>
          <ul class="lc-list">
            <li><strong>Hex</strong> — what designers usually hand you (Figma, brand guides). Fine for fixed colours.</li>
            <li><strong>hsl()</strong> — when you want shades of one colour: keep the hue, change the lightness.</li>
            <li><strong>oklch()</strong> — for modern design systems: lightness changes look even across different hues.</li>
            <li><strong>Alpha</strong> (<code>/ 50%</code> or <code>#rrggbbaa</code>) — for tints, overlays and shadows.</li>
          </ul>
        </div>
        <div class="lc-section">
          <h2>CSS Units</h2>
          <table class="lc-table">
            <thead><tr><th>Unit</th><th>Relative to</th><th>Good for</th></tr></thead>
            <tbody>
              <tr><td><code>px</code></td><td>Fixed CSS pixel</td><td>Hairline borders (<code>1px</code>), small shadows</td></tr>
              <tr><td><code>%</code></td><td>The parent (for <code>width</code>: parent's content width)</td><td>Fluid widths</td></tr>
              <tr><td><code>em</code></td><td>The element's own font size</td><td>Padding that should grow with a button's text</td></tr>
              <tr><td><code>rem</code></td><td>The root (<code>html</code>) font size, 16px by default</td><td>Font sizes and most spacing</td></tr>
              <tr><td><code>vw</code> / <code>vh</code></td><td>1% of the viewport width / height</td><td>Full-width sections, fluid type</td></tr>
              <tr><td><code>dvh</code></td><td>1% of the <em>dynamic</em> viewport height</td><td>Full-screen sections on mobile (adjusts as the address bar shows/hides)</td></tr>
              <tr><td><code>ch</code></td><td>Width of the "0" character in the current font</td><td>Readable line lengths, e.g. <code>max-width: 65ch</code></td></tr>
            </tbody>
          </table>
          <h3>Why rem beats px for text</h3>
          <p>Many readers increase the default font size in their browser settings. Sizes in <code>rem</code> grow with that setting; font sizes in <code>px</code> ignore it. So use <code>rem</code> for font sizes and most spacing, and keep <code>px</code> for things that should stay thin, like a <code>1px</code> border.</p>
          <h3>Worked example: the em compounding trap</h3>
          <p><code>em</code> is relative to the <strong>parent's</strong> font size when used for <code>font-size</code>, so nesting multiplies it:</p>
          <div class="lc-code-block"><pre><code>/* html font size = 16px */<br>.menu { font-size: 1.25em; }<br><br>&lt;ul class="menu"&gt;              &lt;!-- 16 × 1.25 = 20px    --&gt;<br>  &lt;li&gt;&lt;ul class="menu"&gt;        &lt;!-- 20 × 1.25 = 25px    --&gt;<br>    &lt;li&gt;&lt;ul class="menu"&gt;      &lt;!-- 25 × 1.25 = 31.25px --&gt;</code></pre></div>
          <p><strong>What you will see:</strong> each nested menu gets bigger: 20px, then 25px, then 31.25px. With <code>font-size: 1.25rem</code> every level is exactly 20px, because <code>rem</code> always looks at the root.</p>
        </div>
        <div class="lc-section">
          <h2>Sizing Images: aspect-ratio and object-fit</h2>
          <p>Photos come in every shape. To show them in neat, equal boxes (product cards, avatars) you fix the <strong>box shape</strong> with <code>aspect-ratio</code> and decide how the picture fills it with <code>object-fit</code>. These are the <code>&lt;img&gt;</code> versions of <code>background-size: cover</code> / <code>contain</code>.</p>
          <div class="lc-code-block"><pre><code>.thumb {<br>  width: 100%;<br>  aspect-ratio: 1 / 1;   /* square box; height is worked out from the width */<br>  object-fit: cover;     /* fill the box, crop the edges */<br>}<br>.logo { aspect-ratio: 16 / 9; object-fit: contain; background: #f3f4f6; }</code></pre></div>
          <table class="lc-table">
            <thead><tr><th><code>object-fit</code></th><th>What happens to a wide 2:1 photo in a square box</th></tr></thead>
            <tbody>
              <tr><td><code>fill</code> (default)</td><td>Stretched to fit — looks squashed</td></tr>
              <tr><td><code>cover</code></td><td>Fills the whole square, keeps its shape, left and right edges are cropped</td></tr>
              <tr><td><code>contain</code></td><td>Whole photo visible, keeps its shape, empty bands above and below</td></tr>
            </tbody>
          </table>
          <p><strong>What you will see</strong> in section 5 of the starter: the same wide picture three times. <code>fill</code> squashes the circle into an oval, <code>cover</code> keeps the circle round but cuts off the left and right parts of the picture, and <code>contain</code> shows the whole picture with grey bands above and below. Use <code>object-position</code> (e.g. <code>top</code>) to choose which part stays visible with <code>cover</code>.</p>
        </div>
        <div class="lc-section">
          <h2>Common Mistakes</h2>
          <ul class="lc-list">
            <li>Using <code>opacity</code> to make a background see-through → the text fades too. Use an alpha colour like <code>rgb(79 70 229 / 50%)</code>.</li>
            <li>A background image with no fallback colour → white text becomes unreadable while the image loads. Always set <code>background-color</code> too.</li>
            <li>Nesting <code>em</code> font sizes and getting huge text → use <code>rem</code> for font sizes.</li>
            <li><code>height: 100vh</code> on mobile, with content hidden behind the browser toolbar → use <code>100dvh</code>.</li>
            <li>Setting all font sizes in <code>px</code> → text ignores the user's browser font-size setting. Use <code>rem</code>.</li>
          </ul>
        </div>
        <div class="lc-section">
          <h2>Try It</h2>
          <ol class="lc-list">
            <li>In section 1 of the starter, change the <code>.hsl</code> lightness from <code>59%</code> to <code>30%</code>. You should see a much darker indigo — same hue, less light.</li>
            <li>In section 2, compare the two banners: the <code>opacity</code> one has faded text, the alpha one does not. Change the alpha to <code>20%</code> and see the background get lighter while the text stays solid.</li>
            <li>In section 4, change <code>.em-nest</code> from <code>1.25em</code> to <code>1.25rem</code>. All three lines should become the same size (20px).</li>
            <li>In section 5, change <code>aspect-ratio</code> on <code>.pic</code> to <code>3 / 4</code> (a tall box). Watch how much more <code>cover</code> crops and how the bands in <code>contain</code> grow.</li>
          </ol>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p><strong>Tip:</strong> In DevTools, click the small colour square next to any colour in the Styles panel. The colour picker lets you switch formats (hex, rgb, hsl, oklch) and shows the contrast ratio, so you can check text meets 4.5:1.</p></div>
      HTML
      starter_code: <<~'HTML'
        <!DOCTYPE html>
        <html lang="en">
        <head>
          <meta charset="UTF-8">
          <meta name="viewport" content="width=device-width, initial-scale=1.0">
          <title>Colors, Backgrounds, and Units</title>
          <style>
            body { font-family: system-ui, sans-serif; padding: 1rem; color: #1f2937; }
            .row { display: flex; flex-wrap: wrap; gap: 0.5rem; }
            .swatch { padding: 1rem; border-radius: 0.5rem; color: white; font-size: 0.875rem; }
            /* 1. Colour formats (slateblue is a named colour close to, not equal to, #4f46e5) */
            .named { background: slateblue; }
            .hex   { background: #4f46e5; }
            .rgb   { background: rgb(79 70 229); }
            .hsl   { background: hsl(243 75% 59%); }
            .oklch { background: oklch(51% 0.23 277); }
            /* 2. opacity vs alpha colour */
            .banner { padding: 1rem; margin: 0.5rem 0; font-weight: bold; }
            .faded  { background: #4f46e5; color: white; opacity: 0.5; }
            .alpha  { background: rgb(79 70 229 / 50%); color: white; }
            /* 3. Backgrounds: gradients and layers (first layer is on top) */
            .hero {
              height: 8rem; border-radius: 0.5rem; color: white; padding: 1rem;
              background-color: #1e1b4b;
              background-image: radial-gradient(circle at 80% 30%, #fde68a 0 15%, transparent 16%),
                                linear-gradient(135deg, #4f46e5, #06b6d4);
            }
            /* 4. em compounds, rem does not */
            .em-nest { font-size: 1.25em; }
            /* 5. aspect-ratio + object-fit for images */
            .pic { width: 7rem; aspect-ratio: 1 / 1; background: #e5e7eb; border-radius: 0.5rem; }
          </style>
        </head>
        <body>
          <h2>1. Colour formats</h2>
          <div class="row">
            <div class="swatch named">slateblue</div>
            <div class="swatch hex">#4f46e5</div>
            <div class="swatch rgb">rgb(79 70 229)</div>
            <div class="swatch hsl">hsl(243 75% 59%)</div>
            <div class="swatch oklch">oklch(51% 0.23 277)</div>
          </div>
          <h2>2. opacity vs alpha</h2>
          <div class="banner faded">opacity: 0.5 (text fades too)</div>
          <div class="banner alpha">rgb(... / 50%) (text stays solid)</div>
          <h2>3. Layered background</h2>
          <div class="hero">Sunset over the college fest (gradient + "sun")</div>
          <h2>4. em compounding</h2>
          <div class="em-nest">Level 1: 20px
            <div class="em-nest">Level 2: 25px
              <div class="em-nest">Level 3: 31.25px</div>
            </div>
          </div>
          <h2>5. object-fit on a wide (2:1) image</h2>
          <div class="row">
            <img class="pic" style="object-fit: fill" src="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='200' height='100'%3E%3Crect width='200' height='100' fill='%234f46e5'/%3E%3Ccircle cx='100' cy='50' r='40' fill='%23fde68a'/%3E%3C/svg%3E" alt="fill: yellow circle squashed into an oval">
            <img class="pic" style="object-fit: cover" src="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='200' height='100'%3E%3Crect width='200' height='100' fill='%234f46e5'/%3E%3Ccircle cx='100' cy='50' r='40' fill='%23fde68a'/%3E%3C/svg%3E" alt="cover: circle kept round, sides cropped">
            <img class="pic" style="object-fit: contain" src="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='200' height='100'%3E%3Crect width='200' height='100' fill='%234f46e5'/%3E%3Ccircle cx='100' cy='50' r='40' fill='%23fde68a'/%3E%3C/svg%3E" alt="contain: whole image with grey bands">
          </div>
        </body>
        </html>
      HTML
    },

    12 => {
      body: <<~'HTML',
        <div class="lc-intro">
          <p>Every element on a page is drawn as a rectangle. The <strong>box model</strong> describes the four layers of that rectangle and how they add up to its final size. Once you can do the box-model arithmetic in your head, spacing and layout bugs become easy to fix.</p>
        </div>
        <div class="lc-section">
          <h2>The Four Layers</h2>
          <div class="lc-box-model">
            <div class="lc-bm-margin"><span>Margin (outside, transparent)</span>
              <div class="lc-bm-border"><span>Border</span>
                <div class="lc-bm-padding"><span>Padding (inside, shows background)</span>
                  <div class="lc-bm-content">Content (width × height)</div>
                </div>
              </div>
            </div>
          </div>
          <table class="lc-table">
            <thead><tr><th>Layer</th><th>What it is</th><th>Shows the background?</th></tr></thead>
            <tbody>
              <tr><td><strong>Content</strong></td><td>Text, images, child elements</td><td>Yes</td></tr>
              <tr><td><strong>Padding</strong></td><td>Space between content and border</td><td>Yes</td></tr>
              <tr><td><strong>Border</strong></td><td>A line around the padding</td><td>Its own border colour</td></tr>
              <tr><td><strong>Margin</strong></td><td>Space outside the border that pushes neighbours away</td><td>No (always transparent)</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-section">
          <h2>Worked Example: content-box vs border-box</h2>
          <div class="lc-code-block"><pre><code>.card {<br>  width: 300px;<br>  padding: 20px;<br>  border: 4px solid #312e81;<br>  margin: 16px;<br>}</code></pre></div>
          <h3>1. Default: <code>box-sizing: content-box</code></h3>
          <p><code>width</code> sets the <strong>content</strong> only. Padding and border are added on top:</p>
          <div class="lc-code-block"><pre><code>total width = 300 (content) + 20 + 20 (padding) + 4 + 4 (border)<br>            = 348px</code></pre></div>
          <h3>2. With <code>box-sizing: border-box</code></h3>
          <p><code>width</code> sets the <strong>border box</strong>. Padding and border fit inside it, so the content shrinks:</p>
          <div class="lc-code-block"><pre><code>total width   = 300px<br>content width = 300 − 40 (padding) − 8 (border) = 252px</code></pre></div>
          <p><strong>What you will see:</strong> in the starter, the content-box card is 348px wide and the border-box card is exactly 300px wide with a 252px content area. In both cases the 16px margin is extra space <em>outside</em> the box; it is never part of the width.</p>
          <p>Because border-box is so much easier to reason about, almost every modern project starts with this reset:</p>
          <div class="lc-code-block"><pre><code>*, *::before, *::after {<br>  box-sizing: border-box;<br>}</code></pre></div>
        </div>
        <div class="lc-section">
          <h2>Margin and Padding Shorthand</h2>
          <p>Values go <strong>clockwise from the top</strong>: top, right, bottom, left.</p>
          <table class="lc-table">
            <thead><tr><th>Shorthand</th><th>Means</th></tr></thead>
            <tbody>
              <tr><td><code>margin: 10px;</code></td><td>All four sides 10px</td></tr>
              <tr><td><code>margin: 10px 20px;</code></td><td>Top &amp; bottom 10px, left &amp; right 20px</td></tr>
              <tr><td><code>margin: 10px 20px 30px;</code></td><td>Top 10px, left &amp; right 20px, bottom 30px</td></tr>
              <tr><td><code>margin: 10px 20px 30px 40px;</code></td><td>Top 10, right 20, bottom 30, left 40</td></tr>
            </tbody>
          </table>
          <p><strong>Centering a block:</strong> <code>margin: 0 auto;</code> centres a block element horizontally, but only when it has a width smaller than its parent (e.g. <code>max-width: 40rem</code>). The browser splits the leftover space equally between left and right.</p>
          <h3>Vertical margin collapsing</h3>
          <p>When two block elements sit one above the other, their vertical margins <strong>collapse</strong> into one: the larger margin wins; they do not add up.</p>
          <div class="lc-code-block"><pre><code>.a { margin-bottom: 30px; }<br>.b { margin-top: 20px; }<br>/* gap between .a and .b = 30px, not 50px */</code></pre></div>
          <p>Horizontal margins never collapse, and margins of items inside a flex or grid container do not collapse either. Using <code>gap</code> in flex/grid avoids the surprise completely.</p>
        </div>
        <div class="lc-section">
          <h2>display: block, inline, inline-block</h2>
          <table class="lc-table">
            <thead><tr><th></th><th>block</th><th>inline</th><th>inline-block</th></tr></thead>
            <tbody>
              <tr><td>Starts on a new line?</td><td>Yes</td><td>No</td><td>No</td></tr>
              <tr><td>Respects width/height?</td><td>Yes</td><td>No (ignored)</td><td>Yes</td></tr>
              <tr><td>Vertical margin/padding push other lines?</td><td>Yes</td><td>No (vertical margins ignored; padding paints but doesn't push)</td><td>Yes</td></tr>
              <tr><td>Examples</td><td><code>div</code>, <code>p</code>, <code>h1</code>, <code>section</code></td><td><code>span</code>, <code>a</code>, <code>strong</code></td><td>badges, tags, buttons</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-section">
          <h2>Borders, Rounded Corners and Shadows</h2>
          <p>The <code>border</code> shorthand takes a <strong>width</strong>, a <strong>style</strong> and a <strong>colour</strong>, in any order. The style is required: without it (e.g. <code>border: 2px red;</code>) no border is drawn, because the default style is <code>none</code>.</p>
          <table class="lc-table">
            <thead><tr><th>Code</th><th>What you get</th></tr></thead>
            <tbody>
              <tr><td><code>border: 2px solid #312e81;</code></td><td>2px dark-indigo line on all four sides</td></tr>
              <tr><td><code>border-bottom: 3px dashed #f97316;</code></td><td>Only a bottom line (also <code>-top</code>, <code>-left</code>, <code>-right</code>)</td></tr>
              <tr><td><code>border-radius: 12px;</code></td><td>All corners rounded by 12px</td></tr>
              <tr><td><code>border-radius: 50%;</code></td><td>A <strong>circle</strong> if the box is square (avatars); an oval if not</td></tr>
              <tr><td><code>border-radius: 999px;</code></td><td>A <strong>pill</strong>: fully round ends at any width (tags, buttons)</td></tr>
            </tbody>
          </table>
          <p><code>box-shadow</code> syntax: <code>offset-x offset-y blur spread colour</code>. Blur and spread are optional. Add <code>inset</code> for an inner shadow, and separate several shadows with commas.</p>
          <div class="lc-code-block"><pre><code>.card   { box-shadow: 0 4px 12px rgb(0 0 0 / 15%); }  /* soft shadow below */<br>.raised { box-shadow: 0 1px 2px rgb(0 0 0 / 20%), 0 8px 24px rgb(0 0 0 / 12%); }<br>.pressed { box-shadow: inset 0 2px 4px rgb(0 0 0 / 25%); }</code></pre></div>
          <p><strong>What you will see:</strong> the card seems to float a little, with a soft grey shadow 4px below it and 12px of blur. Like <code>outline</code>, a shadow <strong>takes no space</strong>: it never changes the box size or pushes neighbours. <code>border-radius</code> also rounds the shadow and the background.</p>
        </div>
        <div class="lc-section">
          <h2>overflow and outline</h2>
          <ul class="lc-list">
            <li><code>overflow</code> decides what happens when content is bigger than its box: <code>visible</code> (default, spills out), <code>hidden</code> (clipped), <code>scroll</code> (always scrollbars), <code>auto</code> (scrollbars only when needed).</li>
            <li><code>outline</code> looks like a border but <strong>takes up no space</strong> and does not change the box size. That is why focus rings use outline: they never make the layout jump.</li>
          </ul>
        </div>
        <div class="lc-section">
          <h2>Common Mistakes</h2>
          <ul class="lc-list">
            <li>Setting <code>width: 100%</code> plus padding and getting a horizontal scrollbar → add the <code>box-sizing: border-box</code> reset.</li>
            <li>Expecting 30px + 20px vertical margins to make a 50px gap → they collapse to 30px. Use one margin direction, or <code>gap</code>.</li>
            <li>Giving a <code>&lt;span&gt;</code> a width or top margin and nothing happens → make it <code>display: inline-block</code> or <code>block</code>.</li>
            <li><code>margin: 0 auto</code> not centring → the element has no width (or is inline). Give it a <code>width</code>/<code>max-width</code>.</li>
            <li>Adding a <code>border</code> on hover and the layout jumps → use <code>outline</code>, or keep a transparent border of the same width all the time.</li>
            <li><code>border: 2px #312e81;</code> shows nothing → the style is missing. Write <code>border: 2px solid #312e81;</code>.</li>
          </ul>
        </div>
        <div class="lc-section">
          <h2>Try It</h2>
          <ol class="lc-list">
            <li>Right-click each card in section 1 → Inspect. Hover each one in the Elements panel: the page tooltip shows 348 × … for the content-box card and 300 × … for the border-box card. In the Computed tab's box-model diagram, the centre (content) shows 300 vs 252.</li>
            <li>Change <code>padding</code> in <code>.card</code> to <code>30px</code>. Predict first: content-box total = 300 + 60 + 8 = 368px; border-box content = 300 − 60 − 8 = 232px. Check in DevTools.</li>
            <li>In section 2, the gap between the two boxes is 30px (collapsed). Add <code>display: flex; flex-direction: column;</code> to <code>.stack</code> and watch it grow to 50px, because flex items don't collapse margins.</li>
            <li>In section 5, change the avatar's <code>border-radius</code> from <code>50%</code> to <code>12px</code> (rounded square), and the shadow blur from <code>12px</code> to <code>0</code> (a hard shadow). Then delete <code>solid</code> from the pill's <code>border</code> and see the border disappear.</li>
          </ol>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p><strong>Tip:</strong> Use <em>padding</em> for space inside a box (it gets the background colour), and <em>margin</em> or <code>gap</code> for space between boxes. When in doubt, open DevTools: the coloured box-model diagram in the Computed tab shows every number.</p></div>
      HTML
      starter_code: <<~'HTML'
        <!DOCTYPE html>
        <html lang="en">
        <head>
          <meta charset="UTF-8">
          <meta name="viewport" content="width=device-width, initial-scale=1.0">
          <title>The CSS Box Model</title>
          <style>
            body { font-family: system-ui, sans-serif; padding: 1rem; color: #1f2937; }
            /* 1. content-box vs border-box: same width, padding and border */
            .card {
              width: 300px;
              padding: 20px;
              border: 4px solid #312e81;
              margin: 16px 0;
              background: #e0e7ff;
            }
            .content-box { box-sizing: content-box; } /* 300 + 40 + 8 = 348px wide */
            .border-box  { box-sizing: border-box; }  /* 300px wide, content 252px */
            /* 2. Vertical margin collapsing */
            .stack .a { margin-bottom: 30px; background: #fde68a; padding: 0.5rem; }
            .stack .b { margin-top: 20px; background: #a7f3d0; padding: 0.5rem; }
            /* 3. inline vs inline-block */
            .tag { width: 120px; margin: 12px; padding: 4px 8px; background: #fecaca; }
            .inline-block { display: inline-block; }
            /* 4. outline takes no space */
            .focus-demo { outline: 4px solid #f59e0b; outline-offset: 4px; padding: 0.5rem; }
            /* 5. border shorthand, border-radius, box-shadow */
            .avatar { width: 64px; height: 64px; border-radius: 50%; background: #f97316; box-shadow: 0 4px 12px rgb(0 0 0 / 25%); }
            .pill { display: inline-block; padding: 4px 14px; border: 2px solid #4f46e5; border-radius: 999px; }
          </style>
        </head>
        <body>
          <h2>1. Box sizing</h2>
          <div class="card content-box">content-box: total 348px wide</div>
          <div class="card border-box">border-box: total 300px, content 252px</div>
          <h2>2. Margin collapsing</h2>
          <div class="stack">
            <div class="a">margin-bottom: 30px</div>
            <div class="b">margin-top: 20px (gap is 30px, not 50px)</div>
          </div>
          <h2>3. inline vs inline-block</h2>
          <p>Inline: <span class="tag">width ignored</span> text continues.</p>
          <p>Inline-block: <span class="tag inline-block">120px wide</span> text continues.</p>
          <h2>4. outline</h2>
          <p class="focus-demo">This outline does not change the layout.</p>
          <h2>5. Borders, radius and shadow</h2>
          <div class="avatar"></div>
          <p><span class="pill">Pill tag</span></p>
        </body>
        </html>
      HTML
    },

    13 => {
      body: <<~'HTML',
        <div class="lc-intro">
          <p>Most of the web is text, so typography is most of design. Good typography means the right font stack, comfortable size and line spacing, and lines that are not too long to read. In this lesson you will set up fonts that load fast, sizes that scale with the screen using <code>clamp()</code>, and a few text tricks you will use on every project.</p>
        </div>
        <div class="lc-section">
          <h2>Font Families and Stacks</h2>
          <p><code>font-family</code> takes a <strong>list</strong> of fonts. The browser uses the first one that is available and falls back down the list. Always end with a <strong>generic family</strong>.</p>
          <div class="lc-code-block"><pre><code>body { font-family: system-ui, -apple-system, "Segoe UI", Roboto, sans-serif; }<br>h1   { font-family: Georgia, "Times New Roman", serif; }<br>code { font-family: ui-monospace, Consolas, "Courier New", monospace; }</code></pre></div>
          <table class="lc-table">
            <thead><tr><th>Generic family</th><th>Looks like</th><th>Use for</th></tr></thead>
            <tbody>
              <tr><td><code>system-ui</code></td><td>The device's own UI font (Segoe UI, San Francisco, Roboto…)</td><td>Fast, familiar app-style text</td></tr>
              <tr><td><code>sans-serif</code></td><td>No little "feet" on letters</td><td>Body text on screens</td></tr>
              <tr><td><code>serif</code></td><td>Letters with small strokes ("feet")</td><td>Headings, long-form reading</td></tr>
              <tr><td><code>monospace</code></td><td>Every character the same width</td><td>Code, numbers in tables</td></tr>
            </tbody>
          </table>
          <p>Font names with spaces need quotes: <code>"Segoe UI"</code>.</p>
          <h3>Web fonts</h3>
          <p>To use a font the user may not have, load it. The easy way is Google Fonts (a <code>&lt;link&gt;</code> in the <code>&lt;head&gt;</code>); the self-hosted way is <code>@font-face</code>. Either way, use <code>font-display: swap</code> so text appears straight away in a fallback font and swaps when the web font arrives.</p>
          <div class="lc-code-block"><pre><code>&lt;link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Inter:wght@400;700&amp;display=swap"&gt;<br><br>/* or self-hosted */<br>@font-face {<br>  font-family: "Inter";<br>  src: url("/fonts/inter.woff2") format("woff2");<br>  font-weight: 400 700;<br>  font-display: swap;<br>}</code></pre></div>
          <p>(The editor preview here uses system fonts only, so the starter loads nothing external.)</p>
        </div>
        <div class="lc-section">
          <h2>Size, Weight and Line Height</h2>
          <ul class="lc-list">
            <li><code>font-size</code> in <code>rem</code>: <code>1rem</code> body text (16px by default), <code>2rem</code> headings. It respects the user's browser font setting.</li>
            <li><code>font-weight</code> as a number: <code>400</code> = normal, <code>700</code> = bold; <code>100</code>–<code>900</code> in steps of 100 (variable fonts accept any value in between). If the font lacks a weight, the browser uses the nearest one it has (and may fake bold).</li>
            <li><code>line-height</code> <strong>unitless</strong>, e.g. <code>1.5</code>. It means "1.5 × this element's font size", and children inherit the ratio, not a fixed pixel value.</li>
          </ul>
          <h3>Worked example: fluid headings with clamp()</h3>
          <p><code>clamp(MIN, PREFERRED, MAX)</code> uses the preferred value but never goes below the minimum or above the maximum.</p>
          <div class="lc-code-block"><pre><code>h1 { font-size: clamp(1.5rem, 1rem + 2vw, 2.5rem); }</code></pre></div>
          <table class="lc-table">
            <thead><tr><th>Viewport width</th><th>1rem + 2vw</th><th>Final size</th></tr></thead>
            <tbody>
              <tr><td>320px (small phone)</td><td>16 + 6.4 = 22.4px</td><td><strong>24px</strong> (min 1.5rem wins)</td></tr>
              <tr><td>800px (tablet)</td><td>16 + 16 = 32px</td><td><strong>32px</strong></td></tr>
              <tr><td>1440px (laptop)</td><td>16 + 28.8 = 44.8px</td><td><strong>40px</strong> (max 2.5rem wins)</td></tr>
            </tbody>
          </table>
          <p><strong>What you will see:</strong> as you resize the preview, the heading grows smoothly between 24px and 40px with no media queries. Mixing <code>rem</code> into the preferred value keeps it responsive to the user's font setting too.</p>
        </div>
        <div class="lc-section">
          <h2>Worked Example: Why line-height Should Be Unitless</h2>
          <div class="lc-two-col">
            <div><div class="lc-col-label lc-bad">✗ Avoid</div><div class="lc-code-block"><pre><code>body { font-size: 1rem; line-height: 24px; }<br>h1   { font-size: 2.5rem; }  /* 40px text, 24px lines */</code></pre></div></div>
            <div><div class="lc-col-label lc-good">✓ Better</div><div class="lc-code-block"><pre><code>body { font-size: 1rem; line-height: 1.5; }<br>h1   { font-size: 2.5rem; }  /* 40 × 1.5 = 60px lines */</code></pre></div></div>
          </div>
          <p><strong>What you will see:</strong> on the left, a two-line <code>h1</code> has 40px letters squeezed into 24px lines, so the lines overlap. On the right, the ratio 1.5 is inherited and recalculated for the heading: 60px lines, no overlap. (Headings usually look best a little tighter, around <code>1.1</code>–<code>1.25</code>, which you can set on <code>h1</code> directly.)</p>
          <table class="lc-table">
            <thead><tr><th>Text</th><th>Typical line-height</th></tr></thead>
            <tbody>
              <tr><td>Body paragraphs</td><td><code>1.5</code>–<code>1.7</code></td></tr>
              <tr><td>Headings</td><td><code>1.1</code>–<code>1.25</code></td></tr>
              <tr><td>Buttons, labels (one line)</td><td><code>1</code>–<code>1.2</code></td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-section">
          <h2>Text Styling</h2>
          <table class="lc-table">
            <thead><tr><th>Property</th><th>Example</th><th>Effect</th></tr></thead>
            <tbody>
              <tr><td><code>letter-spacing</code></td><td><code>0.08em</code></td><td>Space between letters (nice for small uppercase labels)</td></tr>
              <tr><td><code>text-transform</code></td><td><code>uppercase</code></td><td>Changes case visually; the HTML text stays the same</td></tr>
              <tr><td><code>text-align</code></td><td><code>center</code>, <code>start</code></td><td>Horizontal alignment of lines</td></tr>
              <tr><td><code>text-decoration</code></td><td><code>underline wavy #ef4444</code></td><td>Underline, line-through, none; style and colour</td></tr>
              <tr><td><code>max-width</code></td><td><code>65ch</code></td><td>Readable line length (aim for 45–75 characters)</td></tr>
              <tr><td><code>text-wrap</code></td><td><code>balance</code></td><td>Evens out heading line lengths (Baseline 2024, newly available; older browsers simply wrap normally)</td></tr>
            </tbody>
          </table>
          <h3>The ellipsis pattern</h3>
          <p>To cut a long single line with "…", you need all three properties together, on a box with a limited width:</p>
          <div class="lc-code-block"><pre><code>.title {<br>  white-space: nowrap;      /* keep on one line */<br>  overflow: hidden;         /* hide what doesn't fit */<br>  text-overflow: ellipsis;  /* show … at the cut */<br>}</code></pre></div>
        </div>
        <div class="lc-section">
          <h2>Common Mistakes</h2>
          <ul class="lc-list">
            <li>No generic family at the end, e.g. <code>font-family: "Inter";</code> → if Inter fails, you get the browser default (often Times). End with <code>sans-serif</code>.</li>
            <li><code>line-height: 20px</code> on body → headings inherit 20px and their lines overlap. Use a unitless value like <code>1.5</code>.</li>
            <li>Paragraphs stretching across a wide screen → add <code>max-width: 65ch</code>.</li>
            <li><code>text-overflow: ellipsis</code> alone does nothing → it also needs <code>white-space: nowrap</code> and <code>overflow: hidden</code>.</li>
            <li>Typing headings in CAPS in the HTML → write normal text and use <code>text-transform: uppercase</code>, because some screen readers read ALL-CAPS words letter by letter.</li>
          </ul>
        </div>
        <div class="lc-section">
          <h2>Try It</h2>
          <ol class="lc-list">
            <li>Drag the preview narrower and wider. The section 1 heading should stop shrinking at 24px and stop growing at 40px.</li>
            <li>In section 2, change <code>.readable</code> from <code>max-width: 65ch</code> to <code>none</code>. On a wide screen, the lines become long and hard to follow. Put it back.</li>
            <li>In section 3, remove <code>white-space: nowrap</code> from <code>.ellipsis</code>. The text wraps and the "…" disappears. Add it back to restore it.</li>
          </ol>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p><strong>Tip:</strong> Set your base styles once on <code>body</code> (<code>font-family</code>, <code>line-height: 1.5</code>, <code>color</code>). Text elements inherit them, so you only override what's different, like heading sizes.</p></div>
      HTML
      starter_code: <<~'HTML'
        <!DOCTYPE html>
        <html lang="en">
        <head>
          <meta charset="UTF-8">
          <meta name="viewport" content="width=device-width, initial-scale=1.0">
          <title>CSS Typography</title>
          <style>
            body {
              font-family: system-ui, -apple-system, "Segoe UI", Roboto, sans-serif;
              line-height: 1.5;  /* unitless: children inherit the ratio */
              color: #1f2937;
              padding: 1rem;
            }
            .label {
              font-size: 0.75rem;
              font-weight: 700;
              text-transform: uppercase;
              letter-spacing: 0.08em;
              color: #4f46e5;
            }
            /* 1. Fluid heading: never below 24px, never above 40px */
            h1 {
              font-family: Georgia, "Times New Roman", serif;
              font-size: clamp(1.5rem, 1rem + 2vw, 2.5rem);
              line-height: 1.2;
              text-wrap: balance;
            }
            /* 2. Readable line length */
            .readable { max-width: 65ch; }
            /* 3. Ellipsis: all three lines are needed */
            .ellipsis {
              width: 16rem;
              white-space: nowrap;
              overflow: hidden;
              text-overflow: ellipsis;
              border: 1px solid #d1d5db;
              padding: 0.25rem 0.5rem;
            }
            code { font-family: ui-monospace, Consolas, "Courier New", monospace; }
          </style>
        </head>
        <body>
          <p class="label">1. Fluid heading</p>
          <h1>Mumbai Tech Fest 2026: Workshops, Hackathons and Chai</h1>
          <p class="label">2. Readable width (65ch)</p>
          <p class="readable">This paragraph stops at about 65 characters per line. Long lines make the eye lose its place when jumping back to the start of the next line, so limiting width makes reading more comfortable on big screens.</p>
          <p class="label">3. Ellipsis</p>
          <p class="ellipsis">Registration closes on 30 October for the robotics event</p>
          <p class="label">4. Monospace</p>
          <p>Run <code>font-size: clamp(...)</code> to scale text.</p>
        </body>
        </html>
      HTML
    },

    14 => {
      body: <<~'HTML',
        <div class="lc-intro">
          <p>Normally elements sit in the <strong>normal flow</strong>: blocks stack top to bottom, inline content flows left to right. The <code>position</code> property lets you nudge an element, pin it to a corner of another element, fix it to the screen, or make it stick while scrolling. Together with <code>z-index</code>, it controls what sits on top when things overlap: badges, sticky headers, dropdowns and overlays.</p>
        </div>
        <div class="lc-section">
          <h2>The Five Position Values</h2>
          <table class="lc-table">
            <thead><tr><th>Value</th><th>Offsets are measured from</th><th>Keeps its space in the flow?</th><th>Typical use</th></tr></thead>
            <tbody>
              <tr><td><code>static</code> (default)</td><td>— (top/left etc. are ignored)</td><td>Yes</td><td>Everything, by default</td></tr>
              <tr><td><code>relative</code></td><td>Its own normal position</td><td>Yes (a gap stays behind)</td><td>Small nudges; anchor for absolute children</td></tr>
              <tr><td><code>absolute</code></td><td>Nearest <strong>positioned</strong> ancestor (any position except static)</td><td>No (removed from flow)</td><td>Badges, icons on a card corner, dropdowns</td></tr>
              <tr><td><code>fixed</code></td><td>The viewport (the screen), unless an ancestor has a <code>transform</code> or <code>filter</code></td><td>No</td><td>Chat button, cookie bar, modal overlay</td></tr>
              <tr><td><code>sticky</code></td><td>Acts relative until it reaches the <code>top</code> value inside its scroll container, then sticks, but only while its parent is still on screen</td><td>Yes</td><td>Sticky headers, table headings</td></tr>
            </tbody>
          </table>
          <p>Offsets are <code>top</code>, <code>right</code>, <code>bottom</code>, <code>left</code>. The shorthand <code>inset</code> sets all four, clockwise like margin: <code>inset: 0;</code> equals <code>top: 0; right: 0; bottom: 0; left: 0;</code>.</p>
        </div>
        <div class="lc-section">
          <h2>Worked Examples</h2>
          <h3>1. Relative: move, but keep the space</h3>
          <div class="lc-code-block"><pre><code>.nudge { position: relative; top: 10px; left: 20px; }</code></pre></div>
          <p><strong>What you will see:</strong> the box shifts 10px down and 20px right. The elements around it do not move, because the box's original space is still reserved.</p>
          <h3>2. Absolute: a "NEW" badge on a card corner</h3>
          <div class="lc-code-block"><pre><code>.card  { position: relative; }          /* the anchor */<br>.badge {<br>  position: absolute;<br>  top: -10px;<br>  right: -10px;                          /* hangs off the top-right corner */<br>}</code></pre></div>
          <p><strong>What you will see:</strong> the badge sits 10px above and 10px to the right of the card's top-right corner. Without <code>position: relative</code> on <code>.card</code>, the badge would look further up for a positioned ancestor and, finding none, jump to the corner of the page.</p>
          <h3>3. Sticky header</h3>
          <div class="lc-code-block"><pre><code>header { position: sticky; top: 0; z-index: 10; background: white; }</code></pre></div>
          <p>Sticky is the most fragile value. Check these three things when it "doesn't work":</p>
          <ul class="lc-list">
            <li>It needs a threshold such as <code>top: 0</code>; without one, nothing sticks.</li>
            <li>It only sticks inside its parent: when the parent scrolls out of view, the sticky element leaves with it.</li>
            <li>An ancestor with <code>overflow: hidden</code> (or <code>auto</code>) becomes its scroll container, so it sticks inside that box instead of the page.</li>
          </ul>
          <h3>4. Full-screen overlay</h3>
          <div class="lc-code-block"><pre><code>.overlay { position: fixed; inset: 0; background: rgb(0 0 0 / 60%); z-index: 100; }</code></pre></div>
          <p><strong>What you will see:</strong> a 60% black layer covers the whole screen and stays put while the page scrolls underneath. <code>inset: 0</code> stretches it to all four edges without setting a width or height.</p>
        </div>
        <div class="lc-section">
          <h2>How an Absolute Element Finds Its Anchor</h2>
          <div class="lc-flow">
            <div class="lc-flow-step">Look at the parent<br><small>Is it relative, absolute, fixed or sticky?</small></div>
            <div class="lc-flow-arrow">→</div>
            <div class="lc-flow-step">No? Go up one level<br><small>and ask again</small></div>
            <div class="lc-flow-arrow">→</div>
            <div class="lc-flow-step">Found one<br><small>offsets measure from its padding edge</small></div>
            <div class="lc-flow-arrow">→</div>
            <div class="lc-flow-step">None at all<br><small>the initial containing block (page corner)</small></div>
          </div>
          <p>That is why the pattern is always the same: <strong>parent <code>relative</code>, child <code>absolute</code></strong>. <code>position: relative</code> with no offsets doesn't move the parent at all; it just makes it the anchor.</p>
          <h3>Who is on top when there is no z-index?</h3>
          <ul class="lc-list">
            <li>Positioned elements are painted above non-positioned ones.</li>
            <li>Among equals, the one that comes <strong>later in the HTML</strong> is painted on top.</li>
            <li>A negative <code>z-index</code> can push a positioned element behind its normal-flow neighbours.</li>
          </ul>
        </div>
        <div class="lc-section">
          <h2>z-index and Stacking Contexts</h2>
          <p><code>z-index</code> decides which overlapping element is in front: higher numbers come forward. It only works on <strong>positioned</strong> elements (relative, absolute, fixed, sticky) and on flex or grid items. On a plain static block it does nothing.</p>
          <p>A <strong>stacking context</strong> is a group that is layered as one unit. Children can reorder only <em>inside</em> their group; they can never escape it. A new stacking context is created by, for example:</p>
          <ul class="lc-list">
            <li><code>position: relative</code> or <code>absolute</code> with a <code>z-index</code> other than <code>auto</code>; <code>position: fixed</code> or <code>sticky</code> always</li>
            <li><code>opacity</code> less than 1</li>
            <li><code>transform</code>, <code>filter</code> (any value other than none)</li>
            <li>a flex/grid item with a <code>z-index</code>; <code>isolation: isolate</code></li>
          </ul>
          <h3>Why z-index: 9999 "doesn't work"</h3>
          <div class="lc-code-block"><pre><code>.card-a  { position: relative; z-index: 1; }<br>.tooltip { position: absolute; z-index: 9999; }  /* inside .card-a */<br>.card-b  { position: relative; z-index: 2; }     /* overlaps card-a */</code></pre></div>
          <p><strong>What you will see:</strong> <code>.card-b</code> covers the tooltip. The 9999 only competes inside <code>.card-a</code>'s group, and that whole group sits at level 1, below <code>.card-b</code> at level 2. The fix is to raise the parent (<code>.card-a</code>), not the child.</p>
        </div>
        <div class="lc-section">
          <h2>Common Mistakes</h2>
          <ul class="lc-list">
            <li>Absolute child flies to the page corner → add <code>position: relative</code> to the parent you want as the anchor.</li>
            <li>Adding <code>z-index</code> to a static element → give it <code>position: relative</code> (or make it a flex/grid item).</li>
            <li>Making z-index bigger and bigger (9999, 99999…) → find the parent that created a stacking context and adjust that.</li>
            <li>Sticky header not sticking → add <code>top: 0</code>, and check no ancestor has <code>overflow: hidden</code>.</li>
            <li>Fixed header covering the first lines of the page → add matching <code>padding-top</code> to the body, or use <code>sticky</code> instead, which keeps its space.</li>
          </ul>
        </div>
        <div class="lc-section">
          <h2>Try It</h2>
          <ol class="lc-list">
            <li>In section 2 of the starter, delete <code>position: relative;</code> from <code>.card</code>. The badge jumps to the top-right of the page. Put it back.</li>
            <li>Scroll inside the section 3 box. The heading sticks to the top. Remove <code>top: 0</code> and it scrolls away like normal text.</li>
            <li>In section 4, the orange tooltip (z-index 9999) is mostly hidden behind the blue card. Change <code>.card-a</code> to <code>z-index: 3</code>. Now the tooltip appears in front.</li>
          </ol>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p><strong>Tip:</strong> Keep a small, planned z-index scale in your project (for example 1 for raised cards, 10 for sticky headers, 100 for overlays, 1000 for toasts). Put <code>isolation: isolate</code> on a component to give it its own stacking context so its internal z-index values can't leak out.</p></div>
      HTML
      starter_code: <<~'HTML'
        <!DOCTYPE html>
        <html lang="en">
        <head>
          <meta charset="UTF-8">
          <meta name="viewport" content="width=device-width, initial-scale=1.0">
          <title>Positioning and z-index</title>
          <style>
            body { font-family: system-ui, sans-serif; padding: 1rem; color: #1f2937; }
            .box { padding: 0.75rem; background: #e0e7ff; border: 2px solid #4f46e5; margin: 0.5rem 0; }
            /* 1. Relative: moves, but its space stays */
            .nudge { position: relative; top: 10px; left: 20px; background: #fde68a; }
            /* 2. Absolute badge anchored to the card */
            .card { position: relative; width: 14rem; margin-top: 1.5rem; }
            .badge { position: absolute; top: -10px; right: -10px; background: #ef4444; color: white;
                     padding: 2px 8px; border-radius: 999px; font-size: 0.75rem; }
            /* 3. Sticky inside a scrolling box */
            .scroller { height: 8rem; overflow: auto; border: 1px solid #9ca3af; }
            .scroller h3 { position: sticky; top: 0; margin: 0; padding: 0.5rem; background: #a7f3d0; }
            .scroller p { margin: 0.5rem; }
            /* 4. Stacking context trap */
            .stage { position: relative; height: 7rem; }
            .card-a, .card-b { position: absolute; width: 10rem; height: 5rem; padding: 0.5rem; color: white; }
            .card-a { top: 0; left: 0; background: #6b7280; z-index: 1; }
            .card-b { top: 1.5rem; left: 6rem; background: #2563eb; z-index: 2; }
            .tooltip { position: absolute; top: 2.5rem; left: 5rem; z-index: 9999;
                       background: #f59e0b; color: #1f2937; padding: 0.25rem 0.5rem; }
          </style>
        </head>
        <body>
          <h2>1. Relative</h2>
          <div class="box">Before</div>
          <div class="box nudge">Nudged 10px down, 20px right</div>
          <div class="box">After (did not move)</div>
          <h2>2. Absolute badge</h2>
          <div class="box card">Masala chai – ₹30 <span class="badge">NEW</span></div>
          <h2>3. Sticky</h2>
          <div class="scroller">
            <h3>Scoreboard (sticky)</h3>
            <p>Over 1: 6 runs</p><p>Over 2: 4 runs</p><p>Over 3: 11 runs</p>
            <p>Over 4: 2 runs</p><p>Over 5: 9 runs</p><p>Over 6: 7 runs</p>
          </div>
          <h2>4. z-index: 9999 trapped</h2>
          <div class="stage">
            <div class="card-a">Card A (z 1)<span class="tooltip">Tooltip z 9999</span></div>
            <div class="card-b">Card B (z 2)</div>
          </div>
        </body>
        </html>
      HTML
    },

    15 => {
      body: <<~'HTML',
        <div class="lc-intro">
          <p><strong>Flexbox</strong> is a layout system for arranging items in <strong>one dimension</strong>: a row or a column. It makes navbars, button groups, card rows and perfect centring easy, and it handles leftover space for you. You turn it on with one line, <code>display: flex</code>, on the parent.</p>
        </div>
        <div class="lc-section">
          <h2>Container and Items</h2>
          <p>The element with <code>display: flex</code> is the <strong>flex container</strong>; its direct children become <strong>flex items</strong>. Some properties go on the container, others on the items.</p>
          <table class="lc-table">
            <thead><tr><th>On the container</th><th>On the items</th></tr></thead>
            <tbody>
              <tr><td><code>flex-direction</code> (row, column)</td><td><code>flex-grow</code> (share of extra space)</td></tr>
              <tr><td><code>justify-content</code> (main axis)</td><td><code>flex-shrink</code> (share of shrinking)</td></tr>
              <tr><td><code>align-items</code> (cross axis)</td><td><code>flex-basis</code> (starting size)</td></tr>
              <tr><td><code>flex-wrap</code> (nowrap, wrap)</td><td><code>flex</code> (shorthand for the three above)</td></tr>
              <tr><td><code>gap</code> (space between items)</td><td><code>align-self</code>, <code>order</code></td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-section">
          <h2>Main Axis and Cross Axis</h2>
          <div class="lc-flow">
            <div class="lc-flow-step"><code>flex-direction: row</code><br><small>main axis → horizontal<br>cross axis ↓ vertical</small></div>
            <div class="lc-flow-arrow">vs</div>
            <div class="lc-flow-step"><code>flex-direction: column</code><br><small>main axis ↓ vertical<br>cross axis → horizontal</small></div>
          </div>
          <p><code>justify-content</code> always works along the <strong>main</strong> axis and <code>align-items</code> along the <strong>cross</strong> axis. So when you switch to <code>column</code>, their jobs swap on screen: <code>align-items: center</code> now centres items horizontally.</p>
          <table class="lc-table">
            <thead><tr><th>Property</th><th>Common values</th><th>Default</th></tr></thead>
            <tbody>
              <tr><td><code>justify-content</code></td><td><code>flex-start</code>, <code>center</code>, <code>flex-end</code>, <code>space-between</code>, <code>space-around</code>, <code>space-evenly</code></td><td><code>normal</code> (acts like <code>flex-start</code>)</td></tr>
              <tr><td><code>align-items</code></td><td><code>stretch</code>, <code>flex-start</code>, <code>center</code>, <code>flex-end</code>, <code>baseline</code></td><td><code>normal</code> (acts like <code>stretch</code>: items fill the cross axis)</td></tr>
              <tr><td><code>align-self</code></td><td>Same as align-items, for one item</td><td><code>auto</code></td></tr>
              <tr><td><code>flex-wrap</code></td><td><code>nowrap</code>, <code>wrap</code></td><td><code>nowrap</code> (items squeeze onto one line)</td></tr>
            </tbody>
          </table>
          <h3>Perfect centring</h3>
          <div class="lc-code-block"><pre><code>.center {<br>  display: flex;<br>  justify-content: center;  /* horizontal (main axis) */<br>  align-items: center;      /* vertical (cross axis) */<br>  min-height: 10rem;        /* needs height to centre within */<br>}</code></pre></div>
        </div>
        <div class="lc-section">
          <h2>flex-grow, flex-shrink, flex-basis</h2>
          <p>Each item starts at its <code>flex-basis</code>. If there is extra space, it is shared out in proportion to <code>flex-grow</code>. If there is too little, items shrink in proportion to <code>flex-shrink</code>. The default is <code>flex: 0 1 auto</code>: don't grow, may shrink, start from the content/width size.</p>
          <h3>Worked example</h3>
          <div class="lc-code-block"><pre><code>.row  { display: flex; width: 400px; }   /* no gap, no padding */<br>.item { flex-basis: 100px; }<br>.one, .two { flex-grow: 1; }<br>.three     { flex-grow: 2; }</code></pre></div>
          <p>Leftover space = 400 − (3 × 100) = 100px. Total grow = 1 + 1 + 2 = 4, so each grow unit gets 25px.</p>
          <p><strong>What you will see:</strong> <code>.one</code> = 100 + 25 = <strong>125px</strong>, <code>.two</code> = <strong>125px</strong>, <code>.three</code> = 100 + 50 = <strong>150px</strong>. Grow shares the <em>extra</em> space; it does not make item three twice as wide as the others.</p>
          <p><code>flex: 1</code> is shorthand for <code>flex: 1 1 0%</code> (grow 1, shrink 1, basis 0). Because every item starts from 0, <code>flex: 1</code> on all items makes them <strong>equal widths</strong>, as long as no item's content is too wide to fit its share.</p>
        </div>
        <div class="lc-section">
          <h2>Common flex Shorthand Values</h2>
          <table class="lc-table">
            <thead><tr><th>Shorthand</th><th>Expands to</th><th>Behaviour</th></tr></thead>
            <tbody>
              <tr><td><code>flex: initial</code> (default)</td><td><code>0 1 auto</code></td><td>Content size; can shrink, won't grow</td></tr>
              <tr><td><code>flex: 1</code></td><td><code>1 1 0%</code></td><td>Equal shares of the whole row</td></tr>
              <tr><td><code>flex: auto</code></td><td><code>1 1 auto</code></td><td>Grows and shrinks, but bigger content gets more room</td></tr>
              <tr><td><code>flex: none</code></td><td><code>0 0 auto</code></td><td>Fixed at content size; never grows or shrinks</td></tr>
              <tr><td><code>flex: 0 0 200px</code></td><td>grow 0, shrink 0, basis 200px</td><td>A rigid 200px sidebar</td></tr>
            </tbody>
          </table>
          <h3>align-self: one item breaks the rule</h3>
          <div class="lc-code-block"><pre><code>.toolbar       { display: flex; align-items: flex-start; }<br>.toolbar .help { align-self: flex-end; }   /* only this item moves to the bottom */</code></pre></div>
          <p><strong>What you will see:</strong> every button in the toolbar sits at the top, except <code>.help</code>, which drops to the bottom edge of the container.</p>
        </div>
        <div class="lc-section">
          <h2>Real Patterns</h2>
          <h3>Navbar: logo left, links right</h3>
          <div class="lc-code-block"><pre><code>.nav  { display: flex; align-items: center; gap: 1rem; }<br>.logo { margin-right: auto; }   /* eats all free space, pushes links right */</code></pre></div>
          <h3>Wrapping card row</h3>
          <div class="lc-code-block"><pre><code>.cards { display: flex; flex-wrap: wrap; gap: 1rem; }<br>.card  { flex: 1 1 12rem; }     /* at least ~12rem, grow to fill the row */</code></pre></div>
          <h3>order: visual only</h3>
          <p><code>order: -1</code> moves an item earlier <em>on screen</em>, but keyboard Tab order and screen readers still follow the HTML order. Change the HTML if the real order should change.</p>
        </div>
        <div class="lc-section">
          <h2>Common Mistakes</h2>
          <ul class="lc-list">
            <li>Putting <code>display: flex</code> on the items instead of their parent → it goes on the <strong>container</strong>.</li>
            <li>Switching to <code>flex-direction: column</code> and still using <code>justify-content: center</code> to centre horizontally → in a column the main axis is vertical, so use <code>align-items: center</code> for horizontal centring.</li>
            <li>Vertical centring "not working" → the container has no extra height. Give it <code>min-height</code>.</li>
            <li>Long text refuses to shrink or truncate inside a flex item → flex items default to <code>min-width: auto</code>; set <code>min-width: 0</code> on the item.</li>
            <li>Using margins between every item → use <code>gap</code> on the container; there is no extra space at the ends.</li>
          </ul>
        </div>
        <div class="lc-section">
          <h2>Try It</h2>
          <ol class="lc-list">
            <li>In section 2 of the starter, change <code>.center</code>'s <code>justify-content</code> to <code>flex-end</code>. The chai cup moves to the right edge but stays vertically centred.</li>
            <li>In section 3, use DevTools to check the widths: 125px, 125px, 150px. Change <code>.three</code> to <code>flex-grow: 1</code> and all three become 133.33px.</li>
            <li>In section 4, narrow the preview. The cards wrap onto new lines instead of squeezing. Remove <code>flex-wrap: wrap</code> and they squeeze onto one line.</li>
          </ol>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p><strong>Tip:</strong> Use Flexbox for one direction (a row of links, a toolbar, a list of cards that wraps). When you need rows <em>and</em> columns to line up together, reach for CSS Grid, the next lesson. In DevTools, click the "flex" badge next to a container to see its axes and gaps drawn on the page.</p></div>
      HTML
      starter_code: <<~'HTML'
        <!DOCTYPE html>
        <html lang="en">
        <head>
          <meta charset="UTF-8">
          <meta name="viewport" content="width=device-width, initial-scale=1.0">
          <title>CSS Flexbox</title>
          <style>
            * { box-sizing: border-box; }
            body { font-family: system-ui, sans-serif; padding: 1rem; color: #1f2937; }
            /* 1. Navbar: logo left, links pushed right */
            .nav { display: flex; align-items: center; gap: 1rem; padding: 0.75rem 1rem; background: #1e1b4b; }
            .nav a { color: white; text-decoration: none; }
            .logo { margin-right: auto; font-weight: 700; color: #fde68a; }
            /* 2. Perfect centring */
            .center { display: flex; justify-content: center; align-items: center;
                      min-height: 8rem; background: #e0e7ff; font-size: 2.5rem; }
            /* 3. flex-grow arithmetic: 400px row, three 100px items */
            .row { display: flex; width: 400px; background: #f3f4f6; }
            .item { flex-basis: 100px; padding: 0.5rem; color: white; }
            .one   { flex-grow: 1; background: #4f46e5; }  /* 125px */
            .two   { flex-grow: 1; background: #0891b2; }  /* 125px */
            .three { flex-grow: 2; background: #059669; }  /* 150px */
            /* 4. Wrapping card row */
            .cards { display: flex; flex-wrap: wrap; gap: 1rem; }
            .card { flex: 1 1 10rem; padding: 1rem; border: 1px solid #d1d5db; border-radius: 0.5rem; }
          </style>
        </head>
        <body>
          <h2>1. Navbar</h2>
          <nav class="nav">
            <span class="logo">Chai Point</span>
            <a href="#menu">Menu</a>
            <a href="#about">About</a>
            <a href="#contact">Contact</a>
          </nav>
          <h2>2. Centring</h2>
          <div class="center">☕</div>
          <h2>3. flex-grow 1 : 1 : 2</h2>
          <div class="row">
            <div class="item one">125px</div>
            <div class="item two">125px</div>
            <div class="item three">150px</div>
          </div>
          <h2>4. Wrapping cards</h2>
          <div class="cards">
            <div class="card">Masala chai – ₹30</div>
            <div class="card">Filter coffee – ₹40</div>
            <div class="card">Samosa – ₹20</div>
          </div>
        </body>
        </html>
      HTML
    },

    16 => {
      body: <<~'HTML',
        <div class="lc-intro">
          <p><strong>CSS Grid</strong> is a two-dimensional layout system: you control <strong>rows and columns at the same time</strong>. Flexbox lines items up in one direction; Grid lets you draw a whole page or a card gallery on a grid of tracks, like a spreadsheet.</p>
        </div>
        <div class="lc-section">
          <h2>Grid Container and Grid Items</h2>
          <p>Put <code>display: grid</code> on a parent. Its direct children become <strong>grid items</strong> and are placed into the tracks you define.</p>
          <div class="lc-code-block"><pre><code>.gallery {<br>  display: grid;<br>  grid-template-columns: 200px 1fr 2fr;  /* 3 columns */<br>  grid-template-rows: auto 150px;        /* 2 rows */<br>  gap: 1rem;                             /* space between tracks */<br>}</code></pre></div>
          <ul class="lc-list">
            <li><strong>Track</strong> — one row or one column.</li>
            <li><strong>Cell</strong> — where one row and one column cross.</li>
            <li><strong>Grid line</strong> — the numbered lines between tracks. 3 columns have lines 1, 2, 3 and 4 (and <code>-1</code> is always the last line).</li>
            <li><strong>gap</strong> — space between tracks (never on the outside edges).</li>
          </ul>
        </div>
        <div class="lc-section">
          <h2>The fr Unit, repeat() and minmax()</h2>
          <p><code>fr</code> means "one fraction of the <em>leftover</em> space". Fixed sizes and gaps are taken out first; the rest is shared by the fr tracks.</p>
          <p><strong>Worked example:</strong> a 900px-wide container with <code>grid-template-columns: 200px 1fr 2fr; gap: 20px;</code></p>
          <ul class="lc-list">
            <li>Space used by fixed parts: 200px + two gaps of 20px = 240px.</li>
            <li>Leftover: 900 − 240 = 660px, split into 1 + 2 = 3 fractions → 1fr = 220px.</li>
            <li><strong>Result:</strong> the columns are 200px, 220px and 440px wide.</li>
          </ul>
          <table class="lc-table">
            <thead><tr><th>You write</th><th>Meaning</th></tr></thead>
            <tbody>
              <tr><td><code>repeat(4, 1fr)</code></td><td>Four equal columns (same as <code>1fr 1fr 1fr 1fr</code>)</td></tr>
              <tr><td><code>minmax(200px, 1fr)</code></td><td>Never narrower than 200px, grow up to 1fr</td></tr>
              <tr><td><code>repeat(auto-fit, minmax(200px, 1fr))</code></td><td>As many 200px+ columns as fit; they stretch to fill the row</td></tr>
              <tr><td><code>repeat(auto-fill, minmax(200px, 1fr))</code></td><td>Same, but keeps empty column slots when there are few items</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-section">
          <h2>Responsive Cards Without a Media Query</h2>
          <div class="lc-code-block"><pre><code>.cards {<br>  display: grid;<br>  grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));<br>  gap: 1rem;<br>}</code></pre></div>
          <p><strong>What you will see:</strong> when the container is about 360px wide (a phone) there is room for only one 200px column, so cards stack. At about 650px you get three columns, at about 1100px five. The browser works out the number of columns for you.</p>
          <p><strong>auto-fit vs auto-fill:</strong> with only two cards on a wide screen, <code>auto-fit</code> collapses the empty tracks so the two cards stretch across the row; <code>auto-fill</code> keeps the empty tracks, so the two cards stay narrow on the left.</p>
        </div>
        <div class="lc-section">
          <h2>Placing Items: Lines and span</h2>
          <div class="lc-code-block"><pre><code>.banner   { grid-column: 1 / -1; }      /* from first line to last line: full width */<br>.featured { grid-column: span 2; }      /* take two columns */<br>.tall     { grid-row: 1 / 3; }          /* rows 1 and 2 */</code></pre></div>
          <p><code>grid-column: start / end</code> uses line numbers, not column numbers. <code>1 / -1</code> is the trick for "stretch across every column", whatever the column count.</p>
        </div>
        <div class="lc-section">
          <h2>Named Areas: a Page Layout You Can Read</h2>
          <div class="lc-code-block"><pre><code>.page {<br>  display: grid;<br>  grid-template-columns: 220px 1fr;<br>  grid-template-areas:<br>    "header  header"<br>    "sidebar main"<br>    "footer  footer";<br>}<br>.page &gt; header { grid-area: header; }<br>.page &gt; aside  { grid-area: sidebar; }<br>.page &gt; main   { grid-area: main; }<br>.page &gt; footer { grid-area: footer; }</code></pre></div>
          <p>Each string is one row; repeating a name makes an area span cells. The areas must be rectangles. To change the layout on mobile, you only rewrite <code>grid-template-areas</code> inside a media query.</p>
        </div>
        <div class="lc-section">
          <h2>Aligning Items Inside Their Cells</h2>
          <table class="lc-table">
            <thead><tr><th>Property (on the container)</th><th>Aligns</th><th>Example</th></tr></thead>
            <tbody>
              <tr><td><code>justify-items</code></td><td>Items horizontally inside their cells</td><td><code>justify-items: start;</code></td></tr>
              <tr><td><code>align-items</code></td><td>Items vertically inside their cells</td><td><code>align-items: center;</code></td></tr>
              <tr><td><code>place-items</code></td><td>Both at once (shorthand)</td><td><code>place-items: center;</code> — perfect centring</td></tr>
              <tr><td><code>justify-content</code></td><td>The whole set of tracks, when they are smaller than the container</td><td><code>justify-content: center;</code></td></tr>
            </tbody>
          </table>
          <p>For one item only, use <code>justify-self</code>, <code>align-self</code> or <code>place-self</code> on that item. By default items behave like <code>stretch</code>, which is why grid items fill their cells.</p>
        </div>
        <div class="lc-section">
          <h2>Grid or Flexbox?</h2>
          <table class="lc-table">
            <thead><tr><th>Question</th><th>Flexbox</th><th>Grid</th></tr></thead>
            <tbody>
              <tr><td>Dimensions</td><td>One (a row <em>or</em> a column)</td><td>Two (rows <em>and</em> columns)</td></tr>
              <tr><td>Who decides sizes?</td><td>Mostly the content</td><td>Mostly the layout you define</td></tr>
              <tr><td>Best for</td><td>Navbars, button rows, centring, a row of tags</td><td>Page layouts, galleries, dashboards, forms in columns</td></tr>
              <tr><td>Items line up in both directions?</td><td>No — each line is independent</td><td>Yes — columns stay aligned across rows</td></tr>
            </tbody>
          </table>
          <p>Real pages use both: Grid for the page and card gallery, Flexbox inside each card or navbar. <code>subgrid</code> (Baseline 2023) lets a nested grid reuse its parent's tracks, useful for lining up card titles and buttons across cards.</p>
        </div>
        <div class="lc-section">
          <h2>Common Mistakes</h2>
          <ul class="lc-list">
            <li>Putting <code>display: grid</code> on the items instead of their parent → set it on the container.</li>
            <li>Thinking <code>grid-column: 1 / 3</code> covers three columns → it runs from line 1 to line 3, which is <strong>two</strong> columns.</li>
            <li>Using percentages plus gaps (<code>33.33% 33.33% 33.33%</code> with <code>gap</code>) → it overflows; use <code>1fr</code>, which subtracts the gaps first.</li>
            <li>Making an L-shaped (non-rectangular) area in <code>grid-template-areas</code> → the whole declaration is invalid and ignored. Also double-check spelling: a typo in <code>grid-area</code> puts the item in the wrong place.</li>
            <li>Using Grid for a single row of buttons → Flexbox is simpler there.</li>
          </ul>
        </div>
        <div class="lc-section">
          <h2>Try It</h2>
          <ol class="lc-list">
            <li>Run the starter and make the preview narrower and wider. Watch the menu cards change from 1 to 2 to 3+ columns.</li>
            <li>Change <code>minmax(160px, 1fr)</code> to <code>minmax(260px, 1fr)</code>. You should get fewer, wider columns.</li>
            <li>Give the "Special Thali" card <code>grid-column: span 2;</code> and see it take two columns.</li>
            <li>In the page layout, swap <code>"sidebar main"</code> to <code>"main sidebar"</code> — the sidebar moves to the right without touching the HTML.</li>
          </ol>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p><strong>Tip:</strong> In browser DevTools, click the small <code>grid</code> badge next to a grid container in the Elements panel. It draws the lines, line numbers and area names on the page — the fastest way to debug a grid.</p></div>
      HTML
      starter_code: <<~'HTML'
        <!DOCTYPE html>
        <html lang="en">
        <head>
          <meta charset="UTF-8">
          <meta name="viewport" content="width=device-width, initial-scale=1.0">
          <title>CSS Grid</title>
          <style>
            * { box-sizing: border-box; }
            body { margin: 0; font-family: system-ui, sans-serif; background: #f1f5f9; }
            /* 1. Page layout with named areas */
            .page {
              display: grid;
              grid-template-columns: 180px 1fr;
              grid-template-areas:
                "header  header"
                "sidebar main"
                "footer  footer";
              gap: 12px;
              padding: 12px;
            }
            .page > header { grid-area: header; background: #4f46e5; color: white; }
            .page > aside  { grid-area: sidebar; background: #e0e7ff; }
            .page > main   { grid-area: main; }
            .page > footer { grid-area: footer; background: #1e293b; color: white; }
            header, aside, footer { padding: 12px; border-radius: 8px; }
            /* 2. Responsive cards: no media query needed */
            .menu {
              display: grid;
              grid-template-columns: repeat(auto-fit, minmax(160px, 1fr));
              gap: 12px;
            }
            .item { background: white; padding: 16px; border-radius: 8px; border: 1px solid #cbd5e1; }
            .item strong { display: block; color: #4f46e5; }
            /* 3. Full-width row using line numbers */
            .notice { grid-column: 1 / -1; background: #fef3c7; }
          </style>
        </head>
        <body>
          <div class="page">
            <header><strong>Annapurna Canteen</strong> — grid-template-areas</header>
            <aside>Sidebar<br>(sidebar area)</aside>
            <main>
              <div class="menu">
                <div class="item notice">Notice spans every column: grid-column: 1 / -1</div>
                <div class="item"><strong>Masala Dosa</strong>₹60</div>
                <div class="item"><strong>Idli Vada</strong>₹45</div>
                <div class="item"><strong>Special Thali</strong>₹120</div>
                <div class="item"><strong>Filter Coffee</strong>₹20</div>
                <div class="item"><strong>Pav Bhaji</strong>₹70</div>
              </div>
            </main>
            <footer>Footer area — resize the preview to see the menu reflow</footer>
          </div>
        </body>
        </html>
      HTML
    },

    17 => {
      body: <<~'HTML',
        <div class="lc-intro">
          <p><strong>Responsive design</strong> means one page that works on every screen — a ₹8,000 phone, a tablet and a wide monitor. Most people in India browse on phones, so the phone layout is not an afterthought: it is the <strong>starting point</strong>.</p>
        </div>
        <div class="lc-section">
          <h2>Step 0: the Viewport Meta Tag</h2>
          <div class="lc-code-block"><pre><code>&lt;meta name="viewport" content="width=device-width, initial-scale=1.0"&gt;</code></pre></div>
          <p>Without it, mobile browsers pretend the screen is about 980px wide and shrink the whole page, so phones get the tiny zoomed-out desktop layout and your phone styles never apply. Every responsive page needs this line in the <code>&lt;head&gt;</code>.</p>
        </div>
        <div class="lc-section">
          <h2>Media Queries</h2>
          <p>A media query applies CSS only when a condition is true:</p>
          <div class="lc-code-block"><pre><code>@media (min-width: 768px) {<br>  .cards { grid-template-columns: 1fr 1fr; }<br>}</code></pre></div>
          <p>Newer <strong>range syntax</strong> (Baseline since 2023) reads like maths and means the same thing: <code>@media (width &gt;= 768px) { … }</code>. Both work; <code>min-width</code> is still the most common in tutorials and frameworks.</p>
        </div>
        <div class="lc-section">
          <h2>Mobile-First vs Desktop-First</h2>
          <div class="lc-two-col">
            <div>
              <div class="lc-col-label lc-good">✓ Mobile-first (recommended)</div>
              <div class="lc-code-block"><pre><code>/* base = phones */<br>.cards { display: grid; gap: 1rem; }<br><br>@media (min-width: 768px) {<br>  .cards { grid-template-columns: 1fr 1fr; }<br>}<br>@media (min-width: 1024px) {<br>  .cards { grid-template-columns: repeat(3, 1fr); }<br>}</code></pre></div>
            </div>
            <div>
              <div class="lc-col-label lc-bad">✗ Desktop-first (older style)</div>
              <div class="lc-code-block"><pre><code>/* base = desktop */<br>.cards { display: grid;<br>  grid-template-columns: repeat(3, 1fr); }<br><br>@media (max-width: 1023px) {<br>  .cards { grid-template-columns: 1fr 1fr; }<br>}<br>@media (max-width: 767px) {<br>  .cards { grid-template-columns: 1fr; }<br>}</code></pre></div>
            </div>
          </div>
          <p>Mobile-first writes the simple one-column layout as the <strong>default</strong> and uses <code>min-width</code> queries to <em>add</em> columns as space grows. Phones get the simple layout with no overrides, and you rarely need to undo styles. Desktop-first uses <code>max-width</code> queries to take things away; it works, but tends to pile up overrides.</p>
        </div>
        <div class="lc-section">
          <h2>Where Should Breakpoints Go?</h2>
          <p>Choose breakpoints where <strong>your content</strong> starts to look wrong, not for specific phone models. Common starting values:</p>
          <table class="lc-table">
            <thead><tr><th>Query</th><th>Typical screens</th><th>Typical change</th></tr></thead>
            <tbody>
              <tr><td>(no query)</td><td>Phones, 320–767px</td><td>One column, stacked nav</td></tr>
              <tr><td><code>(min-width: 768px)</code></td><td>Tablets, small laptops</td><td>Two columns, nav in a row</td></tr>
              <tr><td><code>(min-width: 1024px)</code></td><td>Laptops, desktops</td><td>Three columns, sidebar</td></tr>
              <tr><td><code>(min-width: 1280px)</code></td><td>Wide monitors</td><td>Cap width with <code>max-width</code> and centre</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-section">
          <h2>Fluid by Default</h2>
          <ul class="lc-list">
            <li><strong>Images:</strong> <code>img { max-width: 100%; height: auto; }</code> — never wider than their box, and never stretched.</li>
            <li><strong>Widths:</strong> prefer <code>%</code>, <code>fr</code> and <code>max-width</code> over fixed <code>width: 1200px</code>.</li>
            <li><strong>Sizes:</strong> <code>clamp(min, preferred, max)</code> grows smoothly between breakpoints: <code>padding: clamp(1rem, 4vw, 3rem);</code></li>
            <li><strong>Layouts:</strong> <code>repeat(auto-fit, minmax(220px, 1fr))</code> and <code>flex-wrap: wrap</code> adapt without any query.</li>
          </ul>
        </div>
        <div class="lc-section">
          <h2>Worked Example: One Stylesheet, Three Widths</h2>
          <p>With the mobile-first CSS above (base, then <code>min-width: 768px</code>, then <code>min-width: 1024px</code>), this is what applies:</p>
          <table class="lc-table">
            <thead><tr><th>Viewport width</th><th>Rules that apply</th><th>Card columns</th></tr></thead>
            <tbody>
              <tr><td>375px (phone)</td><td>Base only</td><td>1</td></tr>
              <tr><td>800px (tablet)</td><td>Base + 768px query</td><td>2</td></tr>
              <tr><td>1280px (laptop)</td><td>Base + 768px + 1024px queries (the later one wins where they overlap)</td><td>3</td></tr>
            </tbody>
          </table>
          <p>Every <code>min-width</code> query whose condition is true applies at the same time. That is why the queries go from small to large: the larger one comes later in the file and overrides the smaller one.</p>
        </div>
        <div class="lc-section">
          <h2>User-Preference Media Features</h2>
          <div class="lc-code-block"><pre><code>@media (prefers-color-scheme: dark) {<br>  body { background: #0f172a; color: #e2e8f0; }<br>}<br>@media (prefers-reduced-motion: reduce) {<br>  * { animation: none !important; transition: none !important; }<br>}</code></pre></div>
          <p>These respond to the user's operating-system settings (dark mode, "reduce motion"), not to screen size.</p>
        </div>
        <div class="lc-section">
          <h2>Common Mistakes</h2>
          <ul class="lc-list">
            <li>Forgetting the viewport meta tag → media queries seem "broken" on real phones.</li>
            <li>Randomly mixing <code>min-width</code> and <code>max-width</code> queries → the order of overrides becomes hard to follow. Pick one direction (mobile-first, <code>min-width</code>) and stay with it.</li>
            <li>Writing <code>@media (min-width: 768px)</code> <em>before</em> the base rule → the base rule comes later and wins. Base styles first, queries after.</li>
            <li>Fixed widths like <code>width: 600px</code> on boxes → horizontal scrolling on phones. Use <code>max-width</code>.</li>
            <li>Testing only by shrinking a desktop window → also use DevTools device mode (Ctrl+Shift+M / Cmd+Shift+M) and a real phone.</li>
          </ul>
        </div>
        <div class="lc-section">
          <h2>Try It</h2>
          <ol class="lc-list">
            <li>Run the starter. In a narrow preview the badge says "Phone layout" and cards stack in one column.</li>
            <li>Widen the preview past 768px: the badge changes, the nav becomes a row and cards form two columns. Past 1024px you get three.</li>
            <li>Add a rule inside the 1024px query: <code>.hero h1 { font-size: 3rem; }</code> and check it only applies on wide screens.</li>
          </ol>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p><strong>Tip:</strong> Before adding a new media query, ask "can a flexible tool do this instead?" — <code>flex-wrap</code>, <code>auto-fit</code> grids and <code>clamp()</code> often remove the need for a breakpoint entirely.</p></div>
      HTML
      starter_code: <<~'HTML'
        <!DOCTYPE html>
        <html lang="en">
        <head>
          <meta charset="UTF-8">
          <meta name="viewport" content="width=device-width, initial-scale=1.0">
          <title>Mobile-First Responsive Page</title>
          <style>
            /* BASE STYLES = PHONES (mobile-first) */
            * { box-sizing: border-box; }
            body { margin: 0; font-family: system-ui, sans-serif; color: #1e293b; }
            nav ul { list-style: none; margin: 0; padding: 0; background: #0f766e; }
            nav a { display: block; padding: 12px 16px; color: white; text-decoration: none; }
            .hero { padding: clamp(1rem, 5vw, 3rem); background: #ccfbf1; }
            .hero h1 { margin: 0 0 8px; font-size: 1.75rem; }
            .badge { display: inline-block; padding: 4px 10px; border-radius: 999px; background: #0f766e; color: white; }
            .badge::after { content: "Phone layout (< 768px)"; }
            .cards { display: grid; gap: 1rem; padding: 1rem; }
            .card { padding: 1rem; border: 1px solid #99f6e4; border-radius: 8px; }
            /* TABLET: 768px and up — add, don't undo */
            @media (min-width: 768px) {
              nav ul { display: flex; }
              .cards { grid-template-columns: 1fr 1fr; }
              .badge::after { content: "Tablet layout (768px+)"; }
            }
            /* DESKTOP: 1024px and up */
            @media (min-width: 1024px) {
              .cards { grid-template-columns: repeat(3, 1fr); max-width: 1100px; margin: 0 auto; }
              .badge::after { content: "Desktop layout (1024px+)"; }
            }
          </style>
        </head>
        <body>
          <nav>
            <ul>
              <li><a href="#">Home</a></li>
              <li><a href="#">Courses</a></li>
              <li><a href="#">Contact</a></li>
            </ul>
          </nav>
          <section class="hero">
            <h1>Learn Web Design</h1>
            <p>Resize the preview to see the layout change.</p>
            <span class="badge"></span>
          </section>
          <section class="cards">
            <div class="card">HTML</div>
            <div class="card">CSS</div>
            <div class="card">Responsive</div>
          </section>
        </body>
        </html>
      HTML
    },

    18 => {
      body: <<~'HTML',
        <div class="lc-intro">
          <p>CSS has grown a lot. Features that once needed Sass or JavaScript are now built in and supported by every modern browser: <strong>custom properties</strong> (CSS variables), <strong>nesting</strong>, <strong>container queries</strong>, <strong>cascade layers</strong> and the <strong>:has()</strong> selector. This lesson shows how professionals use them.</p>
        </div>
        <div class="lc-section">
          <h2>Custom Properties (CSS Variables)</h2>
          <p>A custom property is a name that starts with <code>--</code>. You read it with <code>var()</code>.</p>
          <div class="lc-code-block"><pre><code>:root {<br>  --brand: #4f46e5;<br>  --radius: 12px;<br>  --space: 1rem;<br>}<br>.button {<br>  background: var(--brand);<br>  border-radius: var(--radius);<br>  padding: var(--space) calc(var(--space) * 2);<br>  color: var(--button-text, white);   /* fallback if --button-text is not set */<br>}</code></pre></div>
          <ul class="lc-list">
            <li><code>:root</code> is the <code>&lt;html&gt;</code> element, so variables defined there are available everywhere.</li>
            <li>Custom properties <strong>inherit</strong> and follow the cascade. Redefine one on a class and every child using it changes.</li>
            <li>Names are case-sensitive: <code>--Brand</code> and <code>--brand</code> are different.</li>
          </ul>
          <p><strong>Theming example:</strong></p>
          <div class="lc-code-block"><pre><code>.card        { background: var(--card-bg, white); }<br>.theme-dark  { --card-bg: #1e293b; color: #e2e8f0; }<br><br>@media (prefers-color-scheme: dark) {<br>  :root { --brand: #818cf8; }<br>}</code></pre></div>
          <p><strong>What you will see:</strong> any <code>.card</code> inside an element with class <code>theme-dark</code> turns dark blue; all other cards stay white. One variable change restyles a whole section.</p>
        </div>
        <div class="lc-section">
          <h2>CSS Variables vs Sass Variables</h2>
          <table class="lc-table">
            <thead><tr><th></th><th>CSS custom property</th><th>Sass variable</th></tr></thead>
            <tbody>
              <tr><td>Syntax</td><td><code>--brand: red;</code> / <code>var(--brand)</code></td><td><code>$brand: red;</code></td></tr>
              <tr><td>When it exists</td><td>Live in the browser (runtime)</td><td>Only while compiling; gone in the final CSS</td></tr>
              <tr><td>Change in a media query or class?</td><td>Yes — the page updates</td><td>No</td></tr>
              <tr><td>Change from JavaScript?</td><td>Yes: <code>el.style.setProperty('--brand', 'teal')</code></td><td>No</td></tr>
              <tr><td>Needs a build tool?</td><td>No</td><td>Yes</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-section">
          <h2>Native CSS Nesting</h2>
          <p>You can now write rules inside rules, like Sass. Baseline Newly available since December 2023 and <strong>Widely available since June 2026</strong>.</p>
          <div class="lc-code-block"><pre><code>.card {<br>  padding: 1rem;<br><br>  &amp;:hover { box-shadow: 0 4px 12px rgb(0 0 0 / 15%); }   /* .card:hover */<br>  .title  { font-weight: 700; }                          /* .card .title */<br>  &amp;.featured { border: 2px solid var(--brand); }        /* .card.featured */<br><br>  @media (min-width: 768px) { padding: 2rem; }<br>}</code></pre></div>
          <ul class="lc-list">
            <li><code>&amp;</code> means "the parent selector". <code>&amp;:hover</code> and <code>&amp;.featured</code> attach to the card itself.</li>
            <li>A nested selector without <code>&amp;</code> (like <code>.title</code>) is a descendant: <code>.card .title</code>.</li>
            <li>Don't nest more than 2–3 levels — deep nesting creates long, high-specificity selectors that are hard to override.</li>
          </ul>
        </div>
        <div class="lc-section">
          <h2>Container Queries</h2>
          <p>A media query asks "how wide is the <em>screen</em>?". A container query asks "how wide is <em>my box</em>?". That lets a component adapt wherever you drop it — a wide main column or a narrow sidebar.</p>
          <div class="lc-code-block"><pre><code>.card-wrap { container-type: inline-size; }   /* 1. mark the container */<br><br>.profile { display: grid; gap: 1rem; }        /* narrow: stacked */<br><br>@container (min-width: 400px) {                /* 2. query it */<br>  .profile { grid-template-columns: 80px 1fr; } /* wide: side by side */<br>}</code></pre></div>
          <p><strong>What you will see:</strong> the same <code>.profile</code> card is side by side in a 600px column but stacked in a 250px sidebar — on the same screen. Size container queries are Baseline since February 2023 (widely available since 2025).</p>
        </div>
        <div class="lc-section">
          <h2>Cascade Layers (@layer)</h2>
          <p>In Lesson 8 you learned that specificity decides most conflicts. On a big project that becomes a fight: a library's <code>#nav .menu a</code> beats your simple <code>.link</code>, so people add more IDs or <code>!important</code>. <strong>Cascade layers</strong> let you decide the winner by <em>group</em> instead. Layers are compared <strong>before</strong> specificity.</p>
          <div class="lc-code-block"><pre><code>@layer reset, base, components;   /* 1. declare the order: later = stronger */<br><br>@layer base {<br>  #buy.btn { background: gray; }  /* specificity (1,1,0) */<br>}<br>@layer components {<br>  .btn { background: green; }     /* specificity (0,1,0) */<br>}</code></pre></div>
          <p><strong>Result:</strong> the button is <strong>green</strong>. <code>components</code> is declared after <code>base</code>, so it wins even though its selector is far less specific. Specificity only matters between rules <em>in the same layer</em>.</p>
          <div class="lc-code-block"><pre><code>.btn { background: orange; }      /* not in any layer */</code></pre></div>
          <p><strong>Result:</strong> now the button is <strong>orange</strong>. Styles that are <strong>not in any layer beat all layered styles</strong>. A common setup is to put resets and third-party CSS (for example Bootstrap) into early layers, so your own plain CSS always wins without <code>!important</code>. (One twist: for <code>!important</code> declarations the order is reversed, so an early layer's <code>!important</code> wins. Rarely needed.)</p>
          <table class="lc-table">
            <thead><tr><th>Conflict between…</th><th>Winner</th></tr></thead>
            <tbody>
              <tr><td>Two different layers</td><td>The layer declared <strong>later</strong> in <code>@layer a, b, c;</code></td></tr>
              <tr><td>Layered vs unlayered</td><td>The <strong>unlayered</strong> rule</td></tr>
              <tr><td>Same layer</td><td>Normal rules: specificity, then source order</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-section">
          <h2>:has() and clamp() — Quick Recap</h2>
          <ul class="lc-list">
            <li><code>.card:has(img) { padding-top: 0; }</code> — style a parent based on what it contains (Lesson 10).</li>
            <li><code>font-size: clamp(1.5rem, 1rem + 2vw, 2.5rem);</code> — fluid size with a minimum and maximum (Lesson 13).</li>
          </ul>
          <table class="lc-table">
            <thead><tr><th>Feature</th><th>Replaces</th><th>Baseline (newly available)</th></tr></thead>
            <tbody>
              <tr><td>Custom properties</td><td>Sass variables for runtime values</td><td>2017</td></tr>
              <tr><td><code>clamp()</code></td><td>Many font-size media queries</td><td>2020</td></tr>
              <tr><td>Cascade layers (<code>@layer</code>)</td><td>Specificity wars and <code>!important</code></td><td>March 2022</td></tr>
              <tr><td>Size container queries</td><td>JS resize observers for components</td><td>February 2023</td></tr>
              <tr><td>Nesting</td><td>Sass nesting</td><td>December 2023</td></tr>
              <tr><td><code>:has()</code></td><td>JS that adds classes to parents</td><td>December 2023</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-section">
          <h2>Common Mistakes</h2>
          <ul class="lc-list">
            <li>Forgetting <code>var()</code>: <code>color: --brand;</code> is invalid → write <code>color: var(--brand);</code></li>
            <li>Using a variable inside a media query condition: <code>@media (min-width: var(--bp))</code> does not work → media conditions need real values.</li>
            <li>Writing <code>@container</code> without setting <code>container-type</code> on an ancestor → the query never matches.</li>
            <li>Querying the element itself: a container query styles the container's <em>descendants</em>, not the container.</li>
            <li>Nesting five levels deep → keep nesting shallow and prefer simple class names.</li>
            <li>Forgetting that unlayered CSS beats every layer → if a layered rule "does nothing", look for an unlayered rule setting the same property.</li>
          </ul>
        </div>
        <div class="lc-section">
          <h2>Try It</h2>
          <ol class="lc-list">
            <li>Run the starter. The two profile cards use identical HTML and CSS, but the one in the wide column is side by side and the sidebar one is stacked. (If your preview is very narrow, widen it: the main column must be at least 400px. On a very wide preview, over about 1250px, the sidebar reaches 400px too and its card also goes side by side.)</li>
            <li>Change <code>--brand</code> in <code>:root</code> to <code>#db2777</code>; every button and border updates.</li>
            <li>The note under the cards is green: the <code>components</code> layer beats the more specific <code>base</code> rule. Swap the order in <code>@layer base, components;</code> to <code>@layer components, base;</code> — it turns red.</li>
            <li>Theme one area: add the class <code>theme-dark</code> to the <code>&lt;main&gt;</code> element and watch only the card in that column turn dark.</li>
          </ol>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p><strong>Tip:</strong> Put your design decisions — colours, spacing, radius, font sizes — into a small set of custom properties on <code>:root</code>. These are called <em>design tokens</em>, and they make a redesign a five-minute job.</p></div>
      HTML
      starter_code: <<~'HTML'
        <!DOCTYPE html>
        <html lang="en">
        <head>
          <meta charset="UTF-8">
          <meta name="viewport" content="width=device-width, initial-scale=1.0">
          <title>Modern CSS</title>
          <style>
            /* 1. Custom properties (design tokens) */
            :root { --brand: #4f46e5; --radius: 10px; --space: 1rem; --card-bg: white; }
            .theme-dark { --card-bg: #1e293b; color: #e2e8f0; }
            body { margin: 0; font-family: system-ui, sans-serif; background: #f1f5f9; }
            .layout { display: grid; grid-template-columns: 2fr 1fr; gap: var(--space); padding: var(--space); }
            /* 2. Container query setup */
            .column { container-type: inline-size; }
            /* 3. Native nesting */
            .profile {
              display: grid;
              gap: var(--space);
              padding: var(--space);
              background: var(--card-bg);
              border: 2px solid var(--brand);
              border-radius: var(--radius);
              .avatar { width: 64px; height: 64px; border-radius: 50%; background: var(--brand); }
              button { background: var(--brand); color: white; border: 0; padding: 8px 14px; border-radius: var(--radius); }
              &:hover { box-shadow: 0 4px 14px rgb(0 0 0 / 15%); }
            }
            /* The card adapts to its COLUMN width, not the screen */
            @container (min-width: 400px) {
              .profile { grid-template-columns: 64px 1fr auto; align-items: center; }
            }
            /* 4. Cascade layers: the later layer wins, whatever the specificity */
            @layer base, components;
            @layer components { .note { background: #dcfce7; padding: 0.5rem; } }
            @layer base { p#layer-demo.note { background: #fecaca; } }
          </style>
        </head>
        <body>
          <div class="layout">
            <main class="column">
              <p>Wide column (container query: side by side)</p>
              <div class="profile"><div class="avatar"></div><div><strong>Priya Nair</strong><br>Frontend Developer</div><button>Follow</button></div>
            </main>
            <aside class="column">
              <p>Narrow sidebar (stacked)</p>
              <div class="profile"><div class="avatar"></div><div><strong>Arjun Rao</strong><br>UI Designer</div><button>Follow</button></div>
            </aside>
          </div>
          <p class="note" id="layer-demo">@layer demo: green = the components layer won over a more specific base rule.</p>
        </body>
        </html>
      HTML
    },

    19 => {
      body: <<~'HTML',
        <div class="lc-intro">
          <p>Motion helps users notice what changed: a button that lifts on hover, a menu that slides in, a spinner while data loads. CSS gives you two tools: <strong>transitions</strong> (animate from one state to another) and <strong>keyframe animations</strong> (multi-step, can run on their own).</p>
        </div>
        <div class="lc-section">
          <h2>Transitions: A to B</h2>
          <p>A transition animates a property when its value <strong>changes</strong> — usually because of <code>:hover</code>, <code>:focus-visible</code> or a class added by JavaScript.</p>
          <div class="lc-code-block"><pre><code>.btn {<br>  background: #4f46e5;<br>  transition: background-color 0.3s ease, transform 0.2s ease-out;<br>}<br>.btn:hover {<br>  background: #3730a3;<br>  transform: translateY(-3px);<br>}</code></pre></div>
          <p><strong>What you will see:</strong> on hover the button darkens over 0.3s and rises 3px over 0.2s; when the mouse leaves it smoothly goes back. The <code>transition</code> is on the normal state, so it runs in both directions.</p>
          <table class="lc-table">
            <thead><tr><th>Part</th><th>Example</th><th>Meaning</th></tr></thead>
            <tbody>
              <tr><td>property</td><td><code>transform</code></td><td>What to animate (avoid <code>all</code>)</td></tr>
              <tr><td>duration</td><td><code>0.3s</code> or <code>300ms</code></td><td>How long; 150–400ms feels natural for UI</td></tr>
              <tr><td>timing-function</td><td><code>ease</code>, <code>linear</code>, <code>ease-in-out</code>, <code>cubic-bezier(…)</code></td><td>Speed curve</td></tr>
              <tr><td>delay</td><td><code>0.1s</code></td><td>Wait before starting</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-section">
          <h2>Timing Functions</h2>
          <table class="lc-table">
            <thead><tr><th>Value</th><th>Feels like</th><th>Good for</th></tr></thead>
            <tbody>
              <tr><td><code>ease</code> (default)</td><td>Quick start, gentle finish</td><td>General hover effects</td></tr>
              <tr><td><code>linear</code></td><td>Constant speed, a bit mechanical</td><td>Spinners, progress bars</td></tr>
              <tr><td><code>ease-out</code></td><td>Fast, then slows down</td><td>Things entering the screen</td></tr>
              <tr><td><code>ease-in</code></td><td>Slow, then speeds up</td><td>Things leaving the screen</td></tr>
              <tr><td><code>ease-in-out</code></td><td>Slow – fast – slow</td><td>Moving from one place to another</td></tr>
              <tr><td><code>steps(4)</code></td><td>Jumps in 4 steps, no smoothness</td><td>Typewriter or sprite effects</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-section">
          <h2>Transforms</h2>
          <div class="lc-code-block"><pre><code>transform: translateX(20px);    /* move */<br>transform: scale(1.1);          /* grow 10% */<br>transform: rotate(45deg);       /* turn */<br>transform: translateY(-4px) scale(1.05);   /* combine in ONE declaration; order matters */<br><br>/* modern individual properties (Baseline 2022) */<br>translate: 0 -4px;<br>scale: 1.05;<br>rotate: 45deg;</code></pre></div>
          <p>Transforms change how an element is <em>drawn</em>, not its layout: neighbours don't move.</p>
        </div>
        <div class="lc-section">
          <h2>Keyframe Animations</h2>
          <div class="lc-code-block"><pre><code>@keyframes spin {<br>  from { transform: rotate(0deg); }<br>  to   { transform: rotate(360deg); }<br>}<br>@keyframes fade-up {<br>  0%   { opacity: 0; transform: translateY(20px); }<br>  100% { opacity: 1; transform: translateY(0); }<br>}<br>.spinner { animation: spin 1s linear infinite; }<br>.card    { animation: fade-up 0.6s ease-out 0.2s backwards; }</code></pre></div>
          <p>The <code>animation</code> shorthand: <strong>name, duration, timing-function, delay, iteration-count, direction, fill-mode</strong>. Useful values:</p>
          <ul class="lc-list">
            <li><code>infinite</code> — loop forever (spinners, pulses).</li>
            <li><code>alternate</code> — play forwards, then backwards.</li>
            <li>Fill-mode: <code>backwards</code> applies the first keyframe during the delay (so the card doesn't flash visible first); <code>forwards</code> keeps the last keyframe after the end; <code>both</code> does both. Without <code>forwards</code>, an element returns to its normal styles when the animation ends.</li>
          </ul>
        </div>
        <div class="lc-section">
          <h2>Transition or Animation?</h2>
          <table class="lc-table">
            <thead><tr><th></th><th>transition</th><th>@keyframes animation</th></tr></thead>
            <tbody>
              <tr><td>Needs a trigger?</td><td>Yes — a value must change</td><td>No — can start on page load</td></tr>
              <tr><td>Steps</td><td>Start and end only</td><td>Any number (0%, 50%, 100%…)</td></tr>
              <tr><td>Loop</td><td>No</td><td>Yes (<code>infinite</code>)</td></tr>
              <tr><td>Typical use</td><td>Hover, focus, open/close</td><td>Spinners, attention pulses, entrance effects</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-section">
          <h2>Performance and Accessibility</h2>
          <ul class="lc-list">
            <li><strong>Animate <code>transform</code> and <code>opacity</code>.</strong> Browsers can usually animate these on the GPU without recalculating layout. Animating <code>width</code>, <code>height</code>, <code>top</code> or <code>margin</code> forces layout work on every frame and can stutter on low-end phones.</li>
            <li><strong>Respect "reduce motion".</strong> Some users get dizzy or distracted by motion.</li>
          </ul>
          <div class="lc-code-block"><pre><code>@media (prefers-reduced-motion: reduce) {<br>  *, *::before, *::after {<br>    animation-duration: 0.01ms !important;<br>    animation-iteration-count: 1 !important;<br>    transition-duration: 0.01ms !important;<br>  }<br>}</code></pre></div>
        </div>
        <div class="lc-section">
          <h2>Common Mistakes</h2>
          <ul class="lc-list">
            <li>Putting <code>transition</code> only on <code>:hover</code> → it animates in but snaps back. Put it on the base rule.</li>
            <li><code>transition: all</code> → animates things you didn't intend (and costs performance). List the properties.</li>
            <li>Trying to transition <code>display: none</code> → by default it just jumps. Transition <code>opacity</code> (and <code>visibility</code>) instead.</li>
            <li>Forgetting the duration: <code>animation: spin;</code> has a 0s duration, so nothing visible happens.</li>
            <li>Writing two <code>transform</code> declarations → the second replaces the first. Combine them in one line.</li>
          </ul>
        </div>
        <div class="lc-section">
          <h2>Try It</h2>
          <ol class="lc-list">
            <li>Run the starter and hover the cards: they lift and get a shadow. Hover the button: it scales.</li>
            <li>Change the card transition to <code>0.8s</code> to feel how slow motion becomes annoying, then set it back.</li>
            <li>Change the spinner's <code>linear</code> to <code>ease-in-out</code> and notice it now speeds up and slows down each turn.</li>
            <li>Add <code>alternate</code> to the spinner animation (<code>spin 1s linear infinite alternate</code>): it now turns one way, then back the other way.</li>
          </ol>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p><strong>Tip:</strong> Good UI motion is short and purposeful. If a user notices the animation more than the content, it is too much.</p></div>
      HTML
      starter_code: <<~'HTML'
        <!DOCTYPE html>
        <html lang="en">
        <head>
          <meta charset="UTF-8">
          <meta name="viewport" content="width=device-width, initial-scale=1.0">
          <title>Transitions and Animations</title>
          <style>
            body { font-family: system-ui, sans-serif; padding: 24px; background: #f8fafc; }
            .row { display: flex; gap: 16px; flex-wrap: wrap; align-items: center; margin-bottom: 24px; }
            /* 1. Transition: hover lift (transition is on the BASE rule) */
            .card {
              width: 160px; padding: 16px; background: white; border-radius: 10px;
              box-shadow: 0 1px 3px rgb(0 0 0 / 15%);
              transition: transform 0.25s ease-out, box-shadow 0.25s ease-out;
              animation: fade-up 0.6s ease-out backwards;   /* 3. entrance animation */
            }
            .card:nth-child(2) { animation-delay: 0.15s; }
            .card:nth-child(3) { animation-delay: 0.3s; }
            .card:hover { transform: translateY(-6px); box-shadow: 0 10px 20px rgb(0 0 0 / 15%); }
            .btn { padding: 10px 18px; border: 0; border-radius: 8px; background: #4f46e5; color: white; transition: scale 0.2s ease; }
            .btn:hover, .btn:focus-visible { scale: 1.08; }
            /* 2. Keyframes: spinner and pulse */
            @keyframes spin { to { transform: rotate(360deg); } }
            @keyframes pulse { 50% { opacity: 0.4; } }
            @keyframes fade-up { from { opacity: 0; transform: translateY(20px); } }
            .spinner { width: 32px; height: 32px; border: 4px solid #c7d2fe; border-top-color: #4f46e5; border-radius: 50%; animation: spin 1s linear infinite; }
            .live { color: #dc2626; font-weight: 700; animation: pulse 1.5s ease-in-out infinite; }
            /* 4. Respect users who prefer less motion */
            @media (prefers-reduced-motion: reduce) {
              *, *::before, *::after { animation-duration: 0.01ms !important; animation-iteration-count: 1 !important; transition-duration: 0.01ms !important; }
            }
          </style>
        </head>
        <body>
          <h1>Motion Demo</h1>
          <div class="row">
            <div class="card">Hover me: lift</div>
            <div class="card">Fade-up on load</div>
            <div class="card">Delay 0.3s</div>
          </div>
          <div class="row">
            <button class="btn">Hover to scale</button>
            <div class="spinner" role="status" aria-label="Loading"></div>
            <span class="live">● LIVE: India vs Australia</span>
          </div>
        </body>
        </html>
      HTML
    },

    20 => {
      body: <<~'HTML',
        <div class="lc-intro">
          <p>Time to put everything together. In this capstone you build a complete <strong>landing page for "Chai Point", a college café</strong>: semantic HTML, an accessible form, a mobile-first layout with Flexbox and Grid, design tokens with custom properties, fluid type with <code>clamp()</code>, and gentle motion. The starter is a working first version you will extend.</p>
        </div>
        <div class="lc-section">
          <h2>What You Are Building</h2>
          <div class="lc-flow">
            <div class="lc-flow-step">Header + nav<small>Flexbox</small></div>
            <div class="lc-flow-arrow">→</div>
            <div class="lc-flow-step">Hero<small>clamp()</small></div>
            <div class="lc-flow-arrow">→</div>
            <div class="lc-flow-step">Menu cards<small>Grid auto-fit</small></div>
            <div class="lc-flow-arrow">→</div>
            <div class="lc-flow-step">Order form<small>labels + validation</small></div>
            <div class="lc-flow-arrow">→</div>
            <div class="lc-flow-step">Footer<small>semantic</small></div>
          </div>
        </div>
        <div class="lc-section">
          <h2>Project Checklist</h2>
          <table class="lc-table">
            <thead><tr><th>Part of the page</th><th>Skill used</th><th>Lesson</th></tr></thead>
            <tbody>
              <tr><td>Boilerplate, <code>lang</code>, viewport meta</td><td>Document structure</td><td>1</td></tr>
              <tr><td><code>header</code>, <code>nav</code>, <code>main</code>, <code>section</code>, <code>footer</code></td><td>Semantic HTML</td><td>6</td></tr>
              <tr><td>Skip link, hero image with real <code>alt</code> text, one <code>h1</code>, focus styles</td><td>Accessibility</td><td>7</td></tr>
              <tr><td>Order form with <code>label</code>, <code>required</code>, <code>type="email"</code></td><td>Forms</td><td>5</td></tr>
              <tr><td><code>:root</code> tokens: colours, radius, spacing</td><td>Custom properties</td><td>18</td></tr>
              <tr><td>Nav stacked on phones, a row from 768px; logo and links pushed apart</td><td>Flexbox</td><td>15</td></tr>
              <tr><td>Menu cards that reflow</td><td>Grid <code>auto-fit</code> + <code>minmax()</code></td><td>16</td></tr>
              <tr><td>Base styles for phones, <code>min-width</code> query for wider</td><td>Responsive design</td><td>17</td></tr>
              <tr><td>Heading size that grows with the screen</td><td><code>clamp()</code></td><td>13</td></tr>
              <tr><td>Sticky header</td><td><code>position: sticky</code></td><td>14</td></tr>
              <tr><td>Card hover lift, reduced-motion support</td><td>Transitions</td><td>19</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-section">
          <h2>Build It Step by Step</h2>
          <ol class="lc-list">
            <li><strong>Structure first.</strong> Write only the HTML: header with nav, a hero section with one <code>h1</code>, a menu section, an order section with a form, a footer. Check it reads sensibly with no CSS at all.</li>
            <li><strong>Tokens.</strong> Add <code>:root { --brand: …; --accent: …; --radius: …; --space: …; }</code> and use <code>var()</code> everywhere instead of repeating values.</li>
            <li><strong>Mobile layout.</strong> Style for a 360px phone: nav links stacked in a column (<code>flex-direction: column</code>), full-width buttons, one-column cards, images with <code>max-width: 100%</code>.</li>
            <li><strong>Enhance.</strong> Add a <code>@media (min-width: 768px)</code> block: nav links in a row (<code>flex-direction: row</code>), two-column order section.</li>
            <li><strong>Polish.</strong> Hover and <code>:focus-visible</code> states, a short transition, and the <code>prefers-reduced-motion</code> block.</li>
            <li><strong>Check.</strong> Tab through the whole page with the keyboard; run Lighthouse (Accessibility) in Chrome DevTools; test at 360px, 768px and 1280px.</li>
          </ol>
        </div>
        <div class="lc-section">
          <h2>Key Pattern: Sticky Header with Flexbox</h2>
          <div class="lc-code-block"><pre><code>.site-header {<br>  position: sticky;<br>  top: 0;<br>  z-index: 10;<br>  display: flex;<br>  flex-wrap: wrap;<br>  justify-content: space-between;<br>  align-items: center;<br>}</code></pre></div>
          <p><strong>What you will see:</strong> the logo sits on the left and the links on the right; when you scroll, the header stays pinned to the top. In the starter the links are stacked in a column on phones and switch to a row inside the <code>min-width: 768px</code> query; <code>flex-wrap</code> lets the nav drop below the logo if a long menu does not fit.</p>
        </div>
        <div class="lc-section">
          <h2>Common Mistakes</h2>
          <ul class="lc-list">
            <li>Styling before the HTML is complete → you end up adding <code>div</code>s just to hook CSS on. Finish the semantic structure first.</li>
            <li>Hard-coding the same colour in ten places → use a custom property so one change updates the page.</li>
            <li>Starting from the desktop design and squeezing it down → start with the phone layout and add.</li>
            <li>Using placeholder text instead of <code>&lt;label&gt;</code> → placeholders disappear while typing and are not reliable labels.</li>
            <li>Forgetting focus styles after removing outlines → keyboard users get lost. Keep or improve <code>:focus-visible</code>.</li>
          </ul>
        </div>
        <div class="lc-section">
          <h2>Try It: Extend the Project</h2>
          <ol class="lc-list">
            <li>Add a fourth menu card ("Bun Maska ₹30"). The grid should place it without any CSS change.</li>
            <li>Add a "Today's Special" badge to one card using <code>position: absolute</code> inside a <code>position: relative</code> card.</li>
            <li>Add a dark theme: inside <code>@media (prefers-color-scheme: dark)</code>, redefine only the custom properties.</li>
            <li>Make the form turn its border red only after the user has typed an invalid email, using <code>:user-invalid</code>.</li>
          </ol>
        </div>
        <div class="lc-section">
          <h2>What to Learn Next</h2>
          <ul class="lc-list">
            <li><strong>JavaScript</strong> — make the page interactive (menus, form handling, fetching data).</li>
            <li><strong>Bootstrap</strong> — build pages faster with a ready-made component library.</li>
            <li><strong>Publishing</strong> — put your page online for free with GitHub Pages or Netlify and add it to your portfolio.</li>
          </ul>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p><strong>Tip:</strong> Recruiters love seeing small, finished, well-built projects. A clean, responsive, accessible landing page like this one is a strong first portfolio piece — deploy it and put the link on your CV.</p></div>
      HTML
      starter_code: <<~'HTML'
        <!DOCTYPE html>
        <html lang="en">
        <head>
          <meta charset="UTF-8">
          <meta name="viewport" content="width=device-width, initial-scale=1.0">
          <title>Chai Point — College Café</title>
          <style>
            :root { --brand: #9a3412; --accent: #fed7aa; --text: #1c1917; --radius: 12px; --space: 1rem; }
            *, *::before, *::after { box-sizing: border-box; }
            body { margin: 0; font-family: system-ui, sans-serif; color: var(--text); line-height: 1.6; }
            .skip { position: absolute; left: -999px; }
            .skip:focus { left: var(--space); top: var(--space); background: white; padding: 8px; z-index: 20; }
            .site-header { position: sticky; top: 0; z-index: 10; display: flex; flex-wrap: wrap; justify-content: space-between; align-items: center; gap: var(--space); padding: var(--space); background: var(--brand); color: white; }
            .site-header ul { display: flex; flex-direction: column; gap: 0.25rem; list-style: none; margin: 0; padding: 0; } /* phone: stacked */
            .site-header a { color: white; }
            a:focus-visible, button:focus-visible, input:focus-visible { outline: 3px solid #f59e0b; outline-offset: 2px; }
            .hero { padding: clamp(2rem, 8vw, 5rem) var(--space); background: var(--accent); text-align: center; }
            .hero h1 { margin: 0; font-size: clamp(1.8rem, 1rem + 4vw, 3.5rem); }
            .hero img { max-width: 100%; height: auto; }
            section { padding: var(--space); max-width: 1000px; margin: 0 auto; }
            .menu { display: grid; grid-template-columns: repeat(auto-fit, minmax(180px, 1fr)); gap: var(--space); }
            .card { padding: var(--space); border: 2px solid var(--accent); border-radius: var(--radius); transition: transform 0.2s ease-out; }
            .card:hover { transform: translateY(-4px); }
            .price { color: var(--brand); font-weight: 700; }
            form { display: grid; gap: 0.5rem; }
            input, button { font: inherit; padding: 10px; border-radius: 8px; border: 1px solid #a8a29e; }
            button { background: var(--brand); color: white; border: 0; }
            footer { text-align: center; padding: var(--space); background: var(--text); color: white; }
            @media (min-width: 768px) {
              .site-header ul { flex-direction: row; gap: var(--space); } /* wider: nav in a row */
              form { grid-template-columns: 1fr 1fr; }
              form button { grid-column: 1 / -1; }
            }
            @media (prefers-reduced-motion: reduce) { .card { transition: none; } }
          </style>
        </head>
        <body>
          <a class="skip" href="#main">Skip to content</a>
          <header class="site-header">
            <strong>☕ Chai Point</strong>
            <nav aria-label="Main">
              <ul><li><a href="#menu">Menu</a></li><li><a href="#order">Order</a></li></ul>
            </nav>
          </header>
          <main id="main">
            <div class="hero">
              <img src="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='120' height='100'%3E%3Cpath d='M30 20q5-10 0-18M60 20q5-10 0-18M90 20q5-10 0-18' stroke='%239a3412' stroke-width='4' fill='none'/%3E%3Cpath d='M20 30h80l-10 65H30z' fill='%239a3412'/%3E%3C/svg%3E" width="120" height="100" alt="Drawing of a clay cup of chai with steam rising">
              <h1>Fresh Chai, Every Break</h1>
              <p>Between lectures, next to the library. Open 8 am – 8 pm.</p>
            </div>
            <section id="menu" aria-labelledby="menu-title">
              <h2 id="menu-title">Menu</h2>
              <div class="menu">
                <article class="card"><h3>Masala Chai</h3><p class="price">₹15</p></article>
                <article class="card"><h3>Samosa</h3><p class="price">₹20</p></article>
                <article class="card"><h3>Cold Coffee</h3><p class="price">₹40</p></article>
              </div>
            </section>
            <section id="order" aria-labelledby="order-title">
              <h2 id="order-title">Pre-order</h2>
              <form>
                <label for="name">Name <input id="name" name="name" required autocomplete="name"></label>
                <label for="email">Email <input id="email" name="email" type="email" required autocomplete="email"></label>
                <button type="submit">Place order</button>
              </form>
            </section>
          </main>
          <footer><p>&copy; 2026 Chai Point · Made with HTML &amp; CSS</p></footer>
        </body>
        </html>
      HTML
    }
  }.freeze
end

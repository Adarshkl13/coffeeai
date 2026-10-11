module AiForSeoContent
  # Units (sidebar dividers): 1–4 SEO and AI Basics · 5–9 Research and Planning · 10–14 On-Page, Technical and AI Search · 15 Capstone
  # Widgets: sequence, sorter, stepper. No code editor: each Try It is an ai-try prompt box.
  LESSONS = {
    1 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mkt">Digital Marketing</div>
          <h1 class="lc-title">How Search and SEO Work</h1>
        </div>
        <p class="lc-lead">Every day, people type questions into Google and other search engines. <strong>SEO</strong> (search engine optimisation: making your pages easy to find in search results) helps your business show up for those searches. In this lesson, you will learn how a search engine finds, stores and ranks pages. You will also learn the difference between free and paid results, and why SEO takes time. This makes every AI task later in the course easier to understand.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 262" role="img" aria-label="Five steps from left to right: crawl, index, rank, results and click. Below, paid results cost money for each click, while organic results are free but slow to build.">
            <defs><marker id="seo1a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="380" y="24" font-weight="700">How a page gets from your website to a searcher</text>
              <rect x="15" y="40" width="120" height="90" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="75" y="68" font-weight="700" fill="#c4b5fd">1. Crawl</text>
              <text x="75" y="92" font-size="11" fill="#9b99b8">Googlebot visits</text>
              <text x="75" y="108" font-size="11" fill="#9b99b8">and reads pages</text>
              <rect x="165" y="40" width="120" height="90" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="225" y="68" font-weight="700" fill="#93c5fd">2. Index</text>
              <text x="225" y="92" font-size="11" fill="#9b99b8">Pages saved in</text>
              <text x="225" y="108" font-size="11" fill="#9b99b8">Google's library</text>
              <rect x="315" y="40" width="120" height="90" rx="10" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="375" y="68" font-weight="700" fill="#67e8f9">3. Rank</text>
              <text x="375" y="92" font-size="11" fill="#9b99b8">Best answers</text>
              <text x="375" y="108" font-size="11" fill="#9b99b8">sorted for a query</text>
              <rect x="465" y="40" width="120" height="90" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="525" y="68" font-weight="700" fill="#fcd34d">4. Results</text>
              <text x="525" y="92" font-size="11" fill="#9b99b8">Ads and organic</text>
              <text x="525" y="108" font-size="11" fill="#9b99b8">links shown</text>
              <rect x="615" y="40" width="130" height="90" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="680" y="68" font-weight="700" fill="#6ee7b7">5. Click</text>
              <text x="680" y="92" font-size="11" fill="#9b99b8">Visitor reaches</text>
              <text x="680" y="108" font-size="11" fill="#9b99b8">your website</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#seo1a)">
                <line x1="137" y1="85" x2="161" y2="85"/>
                <line x1="287" y1="85" x2="311" y2="85"/>
                <line x1="437" y1="85" x2="461" y2="85"/>
                <line x1="587" y1="85" x2="611" y2="85"/>
              </g>
              <rect x="15" y="158" width="355" height="70" rx="10" fill="#27274e" stroke="#ec4899"/>
              <text x="192" y="186" font-weight="700" fill="#f9a8d4">Paid results: you pay per click</text>
              <text x="192" y="210" font-size="12" fill="#9b99b8">Traffic stops when the budget stops</text>
              <rect x="390" y="158" width="355" height="70" rx="10" fill="#27274e" stroke="#10b981"/>
              <text x="567" y="186" font-weight="700" fill="#6ee7b7">Organic results: free clicks</text>
              <text x="567" y="210" font-size="12" fill="#9b99b8">Slow to build, but keeps working</text>
              <text x="380" y="250" font-size="11.5" fill="#9b99b8">SEO works on the organic results. Good results often take months.</text>
            </g>
          </svg>
          <figcaption>A search engine crawls, indexes and ranks pages. SEO helps your page do well at each step.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Crawling, indexing and ranking</h3>
          <p>A search engine does three main jobs. Here they are in simple words.</p>
          <table class="lc-table">
            <thead><tr><th>Step</th><th>What happens</th><th>What can go wrong</th></tr></thead>
            <tbody>
              <tr><td><strong>Crawling</strong></td><td>A program called a crawler (Google's is Googlebot) follows links and reads pages.</td><td>No links point to your page, so the crawler never finds it.</td></tr>
              <tr><td><strong>Indexing</strong></td><td>The search engine saves the page in its index (a huge library of pages it knows).</td><td>The page is blocked, copied from elsewhere or too thin, so it is not saved.</td></tr>
              <tr><td><strong>Ranking</strong></td><td>When someone searches, the engine picks the most useful pages and puts them in order.</td><td>Other pages answer the question better, so yours appears low.</td></tr>
            </tbody>
          </table>
          <p>Nobody outside Google knows the exact ranking rules. Google's public guidance says it wants to show helpful, reliable pages written for people. Relevance, quality, page experience and trust all matter.</p>
        </div>
        <div class="lc-card">
          <h3>Organic vs paid results</h3>
          <p>A results page often has two kinds of links:</p>
          <ul class="lc-list">
            <li><strong>Paid results</strong> are ads. They are marked "Sponsored". You usually pay when someone clicks.</li>
            <li><strong>Organic results</strong> are the free listings. Google picks them. You cannot pay to move up here.</li>
          </ul>
          <p>Many results pages also show extra parts. For example: a map with local shops, a "People also ask" box or an AI-written summary at the top. Google calls these summaries AI Overviews. You will learn about them later in this course.</p>
          <p><strong>Example:</strong> Sweet Crumbs is a made-up home bakery in London. It can run Google Ads for "birthday cake London" today and get clicks tomorrow. Or it can write a helpful page about its eggless birthday cakes. That page may take months to rank, but the clicks are free once it does.</p>
        </div>
        <div class="lc-card">
          <h3>Why SEO takes time</h3>
          <ul class="lc-list">
            <li>The crawler must find your new page first. This can take days or weeks.</li>
            <li>Google needs time to learn if people find your page useful.</li>
            <li>Other websites need time to find your page and link to it.</li>
            <li>Competitors keep improving their pages too.</li>
          </ul>
          <p>Be careful with anyone who promises "page one in 7 days". No one can promise a ranking. AI can make the work faster. It cannot make Google rank you faster.</p>
          <p><strong>What you must still check:</strong> use Google Search Console (a free Google tool for site owners) to see if your pages are indexed. Do not trust an AI assistant's guess about this. It cannot see Google's index.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: from new page to first visitor</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Sweet Crumbs publishes a new page about eggless cakes. Put the steps in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">The bakery publishes the page and links to it from the home page.</li>
              <li data-order="2">Googlebot follows the link and reads the page.</li>
              <li data-order="3">Google saves the page in its index.</li>
              <li data-order="4">A person searches "eggless cake London".</li>
              <li data-order="5">Google ranks the pages it has saved for that search.</li>
              <li data-order="6">The person sees the bakery's page in the organic results and clicks it.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask the AI to explain SEO for your own business in plain words. Change the details in brackets first.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a friendly SEO teacher for small business owners who are new to SEO.

        My business: [Sweet Crumbs, a home bakery in London that sells eggless cakes and cookies].
        My website: [a small site with 5 pages: home, menu, about, order form, contact].

        Explain in simple English, with short sentences:
        1. How Google crawls, indexes and ranks a page, using my business as the example.
        2. The difference between organic results and paid ads, with one example search my customers might type.
        3. Three reasons why my pages may take months to rank.
        4. Three simple things I can check this week in Google Search Console.

        Rules: Do not promise any ranking or timeline. Do not invent numbers or statistics. If a step depends on tool details that may change, say "check the tool's help pages".
        Format: four short sections with headings, then a 3-line summary.</pre>
            <ul class="ai-try-checks">
              <li>The answer does not promise rankings or a fixed number of days.</li>
              <li>Crawling, indexing and ranking are described as separate steps.</li>
              <li>There are no made-up statistics or percentages.</li>
              <li>The Search Console checks are simple and match what the tool really shows.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A page must be crawled and indexed before it can rank. SEO helps your page at each step. It builds free traffic slowly, while ads bring paid traffic fast.
        </div>
      HTML
      starter_code: nil
    },
    2 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mkt">Digital Marketing</div>
          <h1 class="lc-title">Where AI Helps in SEO</h1>
        </div>
        <p class="lc-lead">AI assistants such as Claude or ChatGPT can save you hours of SEO work. They are good at ideas, outlines, first drafts and explanations. But they can also hurt your site. They can write thin, copied-sounding pages and state facts that are not true. In this lesson, you will learn where AI helps, where it hurts, and what "people-first content" means.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 290" role="img" aria-label="Two panels. Left: where AI helps, such as keyword ideas, briefs, drafts, title options and explaining reports. Right: where AI can hurt, such as thin pages, made-up facts, fake experience, mass pages and keyword stuffing. Below, a box says a person adds experience, checks facts and decides.">
            <defs><marker id="seo2a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="15" y="15" width="340" height="190" rx="12" fill="#1f1f44" stroke="#10b981"/>
              <text x="185" y="42" font-weight="700" fill="#6ee7b7">AI helps with</text>
              <text x="185" y="74">Keyword and topic ideas</text>
              <text x="185" y="100">Content briefs and outlines</text>
              <text x="185" y="126">First drafts to edit</text>
              <text x="185" y="152">Many title and meta options</text>
              <text x="185" y="178">Explaining audit reports</text>
              <rect x="405" y="15" width="340" height="190" rx="12" fill="#1f1f44" stroke="#ec4899"/>
              <text x="575" y="42" font-weight="700" fill="#f9a8d4">AI can hurt when it makes</text>
              <text x="575" y="74">Thin pages that add nothing new</text>
              <text x="575" y="100">Made-up facts and numbers</text>
              <text x="575" y="126">Fake reviews or fake experience</text>
              <text x="575" y="152">Hundreds of low-value pages</text>
              <text x="575" y="178">Text stuffed with keywords</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#seo2a)">
                <line x1="185" y1="207" x2="185" y2="228"/>
                <line x1="575" y1="207" x2="575" y2="228"/>
              </g>
              <rect x="15" y="232" width="730" height="46" rx="10" fill="#27274e" stroke="#f59e0b"/>
              <text x="380" y="260" fill="#fcd34d">You: add real experience, check every fact, decide what to publish</text>
            </g>
          </svg>
          <figcaption>AI is a fast assistant. You stay the editor who checks and decides.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Tasks where AI saves time</h3>
          <table class="lc-table">
            <thead><tr><th>SEO task</th><th>How AI helps</th><th>What you must still do</th></tr></thead>
            <tbody>
              <tr><td>Keyword research</td><td>Lists ideas, related phrases and questions people ask</td><td>Check real search data in tools like Google Search Console</td></tr>
              <tr><td>Content briefs</td><td>Suggests an outline and questions to answer</td><td>Remove points that do not fit your business</td></tr>
              <tr><td>Drafts</td><td>Writes a first version quickly</td><td>Add your own experience, photos and examples. Check facts.</td></tr>
              <tr><td>Titles and meta descriptions</td><td>Writes 10 options in seconds</td><td>Pick the best one. Make sure it is honest.</td></tr>
              <tr><td>Audits</td><td>Explains a technical report in plain words</td><td>Confirm the problem really exists before you fix it</td></tr>
            </tbody>
          </table>
          <p>A meta description is the short summary under a page's title in search results. You will write these later in the course.</p>
        </div>
        <div class="lc-card">
          <h3>Where AI can hurt your site</h3>
          <ul class="lc-list">
            <li><strong>Thin content:</strong> a page that repeats what every other page says. It gives Google no reason to rank it.</li>
            <li><strong>Made-up facts:</strong> AI can invent prices, dates, laws or statistics that sound real. One wrong fact can hurt customer trust.</li>
            <li><strong>Fake experience:</strong> "I tested 20 cakes" when nobody did. This is dishonest.</li>
            <li><strong>Mass pages:</strong> using AI to publish hundreds of pages only to get search traffic. Google's spam policies describe this as scaled content abuse.</li>
          </ul>
          <p><strong>Example:</strong> Rangrez Crafts is a made-up handicrafts store in Rajasthan. It asked AI for a page on "block print bedsheets". The draft said "Rajasthan block print dates back 2,000 years" and "our cotton is 100% organic". The owner did not know if either claim was true. She removed both and added real details from her own printers.</p>
        </div>
        <div class="lc-card">
          <h3>People-first content</h3>
          <p>Google's guidance says it rewards helpful, reliable content made for people. It does not say AI content is banned. What matters is whether the page helps the reader. Ask these questions before you publish:</p>
          <ul class="lc-list">
            <li>Would a real customer find this useful, even if Google did not exist?</li>
            <li>Does it show first-hand experience, such as your own photos, prices or tips?</li>
            <li>Did a person check every fact and number?</li>
            <li>Does the reader leave with the answer they came for?</li>
          </ul>
          <p>Also, never paste private customer data (names, phone numbers, orders) into a public AI tool.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: good use or risky use?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each way of using AI for SEO.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="good" data-label="Good use"></div>
              <div data-sorter-target="bucket" data-bucket="risky" data-label="Risky or harmful"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="good" data-why="AI is good at ideas. You then check them with real tools.">Asking AI for 30 keyword ideas for a Kerala travel agency</li>
              <li data-bucket="risky" data-why="Mass pages made only for search traffic can count as spam. They also give readers little value.">Publishing 500 AI pages, one for each Indian city, with only the city name changed</li>
              <li data-bucket="good" data-why="Explaining a report is a strong use of AI. You still confirm the problem before fixing it.">Asking AI to explain a Search Console error message in simple words</li>
              <li data-bucket="risky" data-why="AI can invent numbers. Unchecked statistics damage trust.">Copying AI-written statistics into a blog post without checking them</li>
              <li data-bucket="good" data-why="AI gives you options quickly. You pick and edit the best one.">Getting 10 title options and choosing the most honest, clear one</li>
              <li data-bucket="risky" data-why="Fake reviews and fake experience are dishonest and can break platform rules.">Asking AI to write customer reviews for your own products</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask the AI to make a plan that splits SEO work between AI and you. Change the details in brackets.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an honest SEO adviser for small businesses.

        My business: [Rangrez Crafts, an online handicrafts store in Rajasthan selling block print bedsheets and cushion covers].
        My team: [just me and one part-time helper, about 5 hours a week for SEO].

        Make a table with 6 common SEO tasks. Columns:
        1. Task
        2. What AI can do well for this task
        3. What a person must check or add (facts, experience, photos, decisions)
        4. One risk if we trust AI too much

        After the table, write 5 rules for using AI safely on our website. Include a rule about checking facts and a rule about not pasting private customer data into AI tools.

        Use simple English and short sentences. Do not promise rankings. Do not invent statistics.</pre>
            <ul class="ai-try-checks">
              <li>Every task has a clear job for a person, not only for AI.</li>
              <li>The risks include made-up facts and thin or copied content.</li>
              <li>The safety rules mention private customer data.</li>
              <li>The answer does not promise rankings or use made-up numbers.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Use AI for speed: ideas, outlines, drafts and explanations. Add what only you have: real experience, checked facts and good judgement. That mix makes people-first content.
        </div>
      HTML
      starter_code: nil
    },
    3 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mkt">Digital Marketing</div>
          <h1 class="lc-title">Search Intent</h1>
        </div>
        <p class="lc-lead"><strong>Search intent</strong> is the reason behind a search: what the person really wants. Two searches can use similar words but want very different things. If your page does not match the intent, it will struggle to rank, even if it is well written. In this lesson, you will learn the four main types of intent and how to match each one with the right page type.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 262" role="img" aria-label="Four cards for the four intent types. Informational: learn something, example how to store cake, best page a guide. Navigational: find a site, example Sweet Crumbs London, best page home or contact. Commercial: compare options, example best bakery in London, best page a comparison. Transactional: buy now, example order cake online, best page a product or order page.">
            <g font-family="inherit" font-size="12" fill="#e2e0f0" text-anchor="middle">
              <rect x="15" y="15" width="170" height="205" rx="12" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="100" y="42" font-size="13" font-weight="700" fill="#93c5fd">Informational</text>
              <text x="100" y="72" font-size="11" fill="#9b99b8">Wants to:</text>
              <text x="100" y="90">learn something</text>
              <text x="100" y="122" font-size="11" fill="#9b99b8">Example search:</text>
              <text x="100" y="140">"how to store cake"</text>
              <text x="100" y="172" font-size="11" fill="#9b99b8">Best page:</text>
              <text x="100" y="190">Guide or blog post</text>
              <rect x="201" y="15" width="170" height="205" rx="12" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="286" y="42" font-size="13" font-weight="700" fill="#c4b5fd">Navigational</text>
              <text x="286" y="72" font-size="11" fill="#9b99b8">Wants to:</text>
              <text x="286" y="90">find a certain site</text>
              <text x="286" y="122" font-size="11" fill="#9b99b8">Example search:</text>
              <text x="286" y="140">"Sweet Crumbs London"</text>
              <text x="286" y="172" font-size="11" fill="#9b99b8">Best page:</text>
              <text x="286" y="190">Home or contact page</text>
              <rect x="387" y="15" width="170" height="205" rx="12" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="472" y="42" font-size="13" font-weight="700" fill="#fcd34d">Commercial</text>
              <text x="472" y="72" font-size="11" fill="#9b99b8">Wants to:</text>
              <text x="472" y="90">compare options</text>
              <text x="472" y="122" font-size="11" fill="#9b99b8">Example search:</text>
              <text x="472" y="140">"best bakery in London"</text>
              <text x="472" y="172" font-size="11" fill="#9b99b8">Best page:</text>
              <text x="472" y="190">Comparison or review</text>
              <rect x="573" y="15" width="172" height="205" rx="12" fill="#1f1f44" stroke="#10b981"/>
              <text x="659" y="42" font-size="13" font-weight="700" fill="#6ee7b7">Transactional</text>
              <text x="659" y="72" font-size="11" fill="#9b99b8">Wants to:</text>
              <text x="659" y="90">buy or book now</text>
              <text x="659" y="122" font-size="11" fill="#9b99b8">Example search:</text>
              <text x="659" y="140">"order cake online"</text>
              <text x="659" y="172" font-size="11" fill="#9b99b8">Best page:</text>
              <text x="659" y="190">Product or order page</text>
              <text x="380" y="248" font-size="12" fill="#9b99b8">Same topic, different intent: each intent needs a different kind of page.</text>
            </g>
          </svg>
          <figcaption>The four main types of search intent, with an example search and the page type that fits best.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The four types of intent</h3>
          <table class="lc-table">
            <thead><tr><th>Intent</th><th>The searcher wants to…</th><th>Clue words</th><th>Kerala travel agency example</th></tr></thead>
            <tbody>
              <tr><td><strong>Informational</strong></td><td>Learn or understand something</td><td>how, what, why, tips, guide</td><td>"best time to visit the Western Ghats"</td></tr>
              <tr><td><strong>Navigational</strong></td><td>Reach a certain brand or website</td><td>brand names, login, contact</td><td>"Backwater Trails Kerala contact"</td></tr>
              <tr><td><strong>Commercial</strong></td><td>Compare before they decide</td><td>best, top, review, vs, price</td><td>"best backwater houseboat packages"</td></tr>
              <tr><td><strong>Transactional</strong></td><td>Buy, book or sign up now</td><td>buy, book, order, near me</td><td>"book houseboat Kerala"</td></tr>
            </tbody>
          </table>
          <p>Backwater Trails is a made-up agency. Clue words help, but they are not perfect. Some searches have mixed intent.</p>
        </div>
        <div class="lc-card">
          <h3>Check intent by looking at the results</h3>
          <p>The best way to learn the intent is simple. Search the keyword yourself and look at the top results. Google has already tested what people want.</p>
          <ul class="lc-list">
            <li>Top results are blog guides? The intent is informational.</li>
            <li>Top results are "top 10" lists and reviews? The intent is commercial.</li>
            <li>Top results are shop pages and booking forms? The intent is transactional.</li>
            <li>You see a map with local businesses? People want a nearby place.</li>
          </ul>
          <p><strong>Example:</strong> Sweet Crumbs wanted to rank for "chocolate truffle cake". The owner made a product page. But the top results were all recipes. People searching that phrase mostly wanted to bake, not buy. So she targeted "chocolate truffle cake delivery London" with the product page instead.</p>
          <p>Results change by country, city and time. Search from your target area when you can.</p>
        </div>
        <div class="lc-card">
          <h3>How AI helps with intent</h3>
          <p>AI can label a long keyword list by intent in seconds. Compare these two prompts:</p>
          <pre><code>Weak: What is the intent of these keywords?</code></pre>
          <pre><code>Better: You are an SEO specialist. My business is a home bakery in London that delivers cakes.
        Label each keyword below as informational, navigational, commercial or transactional.
        Add one short reason and the best page type for each.
        If a keyword has mixed intent, say so. Give the answer as a table.
        Keywords: eggless cake recipe, cake delivery London, best bakery Notting Hill, Sweet Crumbs menu</code></pre>
          <p>The AI guesses from the words. It cannot see today's results page. For your most important keywords, always check the real results yourself.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: sort the searches by intent</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">These searches are about a Rajasthan handicrafts store. Sort each one by its main intent.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="info" data-label="Informational"></div>
              <div data-sorter-target="bucket" data-bucket="nav" data-label="Navigational"></div>
              <div data-sorter-target="bucket" data-bucket="comm" data-label="Commercial"></div>
              <div data-sorter-target="bucket" data-bucket="trans" data-label="Transactional"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="info" data-why="The person wants to learn a skill. A guide fits best.">how to wash block print bedsheets</li>
              <li data-bucket="nav" data-why="The person already knows the brand and wants its website.">Rangrez Crafts website</li>
              <li data-bucket="comm" data-why="Best and top words show the person is comparing before buying.">best block print bedsheet brands</li>
              <li data-bucket="trans" data-why="Buy and online show the person is ready to purchase.">buy king size block print bedsheet online</li>
              <li data-bucket="comm" data-why="A versus search means the person is comparing two options.">block print vs screen print bedsheets</li>
              <li data-bucket="info" data-why="The person wants to understand something. There is no sign they want to buy yet.">what is Sanganeri print</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Paste your own keyword list, or use the sample list, and ask the AI to label intent and page type.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an SEO specialist who explains things simply.

        My business: [Backwater Trails, a Kerala travel agency that sells tour packages and houseboat trips].

        Here is my keyword list:
        [best time to visit the Western Ghats
        Kerala houseboat price
        book houseboat Kerala
        Backwater Trails reviews
        Kerala 5 day itinerary
        best Kerala tour packages from Maharashtra
        what to pack for Kerala in monsoon]

        For each keyword, give a table with these columns:
        1. Keyword
        2. Main intent (informational, navigational, commercial or transactional)
        3. One short reason
        4. Best page type for my website (for example: guide, comparison page, package page, booking page)

        Mark any keyword with mixed intent. After the table, list the 3 keywords I should check first by searching them myself, and say why.</pre>
            <ul class="ai-try-checks">
              <li>Each keyword has one main intent and a short reason.</li>
              <li>The page types make sense for the intent (a guide for "how" searches, a booking page for "book").</li>
              <li>Mixed-intent keywords, such as a price search, are marked.</li>
              <li>You still search the top keywords yourself to see the real results.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Match the page type to what the searcher wants. A great product page will not rank for a "how to" search. Use AI to label intent quickly, then check the real results for your key searches.
        </div>
      HTML
      starter_code: nil
    },
    4 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mkt">Digital Marketing</div>
          <h1 class="lc-title">Prompts for SEO Work</h1>
        </div>
        <p class="lc-lead">A <strong>prompt</strong> is the message you give an AI assistant. A short, vague prompt gives a generic answer that could fit any business. A clear prompt gives an answer you can use. In this lesson, you will learn the five parts of a strong SEO prompt. You will also learn how to give the AI your own data safely.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 256" role="img" aria-label="Five prompt blocks stacked on the left: role, context, audience, task with data, and format. An arrow leads to a box on the right: useful SEO output that is specific, uses your data and is ready to use.">
            <defs><marker id="seo4a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <rect x="15" y="15" width="300" height="38" rx="8" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="30" y="39"><tspan font-weight="700" fill="#c4b5fd">Role:</tspan> SEO strategist</text>
              <rect x="15" y="62" width="300" height="38" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="30" y="86"><tspan font-weight="700" fill="#93c5fd">Context:</tspan> London home bakery</text>
              <rect x="15" y="109" width="300" height="38" rx="8" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="30" y="133"><tspan font-weight="700" fill="#67e8f9">Audience:</tspan> busy parents in London</text>
              <rect x="15" y="156" width="300" height="38" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="30" y="180"><tspan font-weight="700" fill="#fcd34d">Task + data:</tspan> your keyword list</text>
              <rect x="15" y="203" width="300" height="38" rx="8" fill="#1f1f44" stroke="#ec4899"/>
              <text x="30" y="227"><tspan font-weight="700" fill="#f9a8d4">Format:</tspan> table, 4 columns</text>
              <line x1="325" y1="128" x2="455" y2="128" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#seo4a)"/>
              <text x="390" y="118" text-anchor="middle" font-size="11" fill="#9b99b8">all together</text>
              <rect x="465" y="68" width="280" height="120" rx="12" fill="#27274e" stroke="#10b981"/>
              <g text-anchor="middle">
                <text x="605" y="96" font-weight="700" fill="#6ee7b7">Useful SEO output</text>
                <text x="605" y="124" font-size="12">Specific to your business</text>
                <text x="605" y="146" font-size="12">Uses your real data</text>
                <text x="605" y="168" font-size="12">Ready to copy and use</text>
              </g>
            </g>
          </svg>
          <figcaption>A strong SEO prompt has five parts. Each part removes guesswork for the AI.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The five parts of a strong SEO prompt</h3>
          <table class="lc-table">
            <thead><tr><th>Part</th><th>What to write</th><th>Example</th></tr></thead>
            <tbody>
              <tr><td><strong>Role</strong></td><td>Who the AI should act as</td><td>"You are an SEO strategist for small local businesses."</td></tr>
              <tr><td><strong>Business context</strong></td><td>What you sell, where, and what makes you different</td><td>"Home bakery in London. Eggless cakes. Delivery in Islington and Camden."</td></tr>
              <tr><td><strong>Audience</strong></td><td>Who you want to reach</td><td>"Parents ordering birthday cakes for children."</td></tr>
              <tr><td><strong>Task + data</strong></td><td>The exact job, plus your own facts or lists</td><td>"Suggest 5 blog topics. Here are my top 10 search queries."</td></tr>
              <tr><td><strong>Format</strong></td><td>How the answer should look</td><td>"A table with topic, intent, target keyword and reason."</td></tr>
            </tbody>
          </table>
          <p>You can also add <strong>rules</strong>. For example: "Do not invent statistics" or "Use simple English".</p>
        </div>
        <div class="lc-card">
          <h3>A weak prompt vs a strong prompt</h3>
          <pre><code>Weak: Give me blog ideas for SEO.</code></pre>
          <p>This gives 20 generic ideas, like "10 Tips for Success". They could fit any website.</p>
          <pre><code>Strong: You are an SEO strategist for small local businesses.
        My business: Sweet Crumbs, a home bakery in London. We sell eggless cakes and
        deliver in Islington, Camden and Hackney.
        Audience: parents planning children's birthday parties.
        Task: suggest 5 blog post ideas that could bring these parents to our site.
        Here are search queries that already bring visitors (from Search Console):
        eggless birthday cake, cake for 1 year old, cake delivery Camden.
        Format: a table with columns: title idea, search intent, main keyword, why it fits.
        Rules: simple English. Do not invent search volumes or statistics.</code></pre>
          <p>The strong prompt gets ideas like "How to choose a cake for a first birthday". This topic fits both the business and the data.</p>
        </div>
        <div class="lc-card">
          <h3>Giving the AI your data</h3>
          <p>AI does not know your website's real numbers. You can paste them in. Useful data for SEO:</p>
          <ul class="lc-list">
            <li>Search queries, clicks and impressions from Google Search Console. Impressions are how many times your page appeared in results.</li>
            <li>Your current page titles and headings.</li>
            <li>Questions customers ask you on WhatsApp or by phone. Write them down without names.</li>
          </ul>
          <p><strong>Stay safe:</strong> remove customer names, phone numbers, emails and addresses first. Do not paste private company data into a public AI tool. Check your company's AI policy.</p>
          <p><strong>Still check:</strong> AI can misread a table or do the maths wrong. Check any totals or percentages in a spreadsheet.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: improve a weak SEO prompt</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Weak prompt">Write a meta description for my cake page.</li>
              <li data-kind="answer" data-label="AI reply">"Discover delicious cakes for every occasion. Order now for the best quality!"</li>
              <li data-kind="warn" data-label="Problem">The reply is generic. It does not mention eggless, London or delivery. Any bakery in the world could use it.</li>
              <li data-kind="thought" data-label="Plan">Add a role, the business context, the audience, the page's main keyword and a format with a length limit.</li>
              <li data-kind="user" data-label="Strong prompt">You are an SEO copywriter. Page: eggless birthday cakes from Sweet Crumbs, a London home bakery. Delivery in Islington, Camden and Hackney. Audience: parents. Main keyword: eggless birthday cake London. Write 3 meta descriptions of about 150 characters each. Be honest. No made-up offers.</li>
              <li data-kind="answer" data-label="AI reply">Option 1: "Eggless birthday cakes baked fresh at home in London. Custom designs for kids, with delivery in Islington, Camden and Hackney. Order today."</li>
              <li data-kind="check" data-label="You check">The length looks right. Delivery areas match the real service. "Order today" is fine, because the bakery really takes online orders. You pick option 1.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Use this prompt template. Fill in your business and paste some real data, or run it as it is.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">Role: You are an SEO strategist who helps small businesses in India.

        Business context: [Sweet Crumbs, a home bakery in London. We sell eggless cakes, cupcakes and cookies. We deliver in Islington, Camden and Hackney.]

        Audience: [parents planning birthday parties, and office teams ordering celebration cakes]

        My data (search queries that already bring visitors, from Search Console):
        [eggless birthday cake - 40 clicks
        cake delivery Camden - 25 clicks
        cupcakes for office party - 8 clicks
        eggless chocolate cake recipe - 5 clicks]

        Task: Suggest 5 new pages or blog posts that could bring more of the right visitors. Base your ideas on my data.

        Format: a table with columns: page idea, search intent, main keyword, why it fits my data.

        Rules: Use simple English. Do not invent search volumes, prices or statistics. If you are not sure about something, say so.</pre>
            <ul class="ai-try-checks">
              <li>The ideas clearly use your data, not generic tips.</li>
              <li>Each idea has a search intent and one main keyword.</li>
              <li>The AI did not invent search volumes or other numbers.</li>
              <li>No private customer details were in your prompt.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Role, context, audience, task with data, and format turn a generic answer into a useful one. Your own data is the most valuable part. Remove private details before you paste it.
        </div>
      HTML
      starter_code: nil
    },
    5 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mkt">Digital Marketing</div>
          <h1 class="lc-title">Keyword Research with AI</h1>
        </div>
        <p class="lc-lead"><strong>Keyword research</strong> means finding the words and questions people type when they look for what you offer. It tells you which pages to create and what to put on them. AI is great at finding many keyword ideas quickly. But AI does not know real search numbers. In this lesson, you will learn to use AI for ideas and real tools for the numbers.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 250" role="img" aria-label="Five steps: seed words, AI expands them into long-tail phrases and questions, sort ideas by intent and topic, check data in Search Console and Keyword Planner, and make a shortlist. Below, a warning says AI does not know real search volumes.">
            <defs><marker id="seo5a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="15" y="20" width="130" height="96" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="80" y="50" font-weight="700" fill="#c4b5fd">1. Seed words</text>
              <text x="80" y="76" font-size="11" fill="#9b99b8">eggless cake</text>
              <text x="80" y="94" font-size="11" fill="#9b99b8">birthday cake</text>
              <rect x="165" y="20" width="130" height="96" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="230" y="50" font-weight="700" fill="#93c5fd">2. AI expands</text>
              <text x="230" y="76" font-size="11" fill="#9b99b8">long-tail phrases</text>
              <text x="230" y="94" font-size="11" fill="#9b99b8">and questions</text>
              <rect x="315" y="20" width="130" height="96" rx="10" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="380" y="50" font-weight="700" fill="#67e8f9">3. Sort ideas</text>
              <text x="380" y="76" font-size="11" fill="#9b99b8">by intent</text>
              <text x="380" y="94" font-size="11" fill="#9b99b8">and by topic</text>
              <rect x="465" y="20" width="130" height="96" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="530" y="50" font-weight="700" fill="#fcd34d">4. Check data</text>
              <text x="530" y="76" font-size="11" fill="#9b99b8">Search Console</text>
              <text x="530" y="94" font-size="11" fill="#9b99b8">Keyword Planner</text>
              <rect x="615" y="20" width="130" height="96" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="680" y="50" font-weight="700" fill="#6ee7b7">5. Shortlist</text>
              <text x="680" y="76" font-size="11" fill="#9b99b8">best keywords</text>
              <text x="680" y="94" font-size="11" fill="#9b99b8">to plan pages</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#seo5a)">
                <line x1="147" y1="68" x2="161" y2="68"/>
                <line x1="297" y1="68" x2="311" y2="68"/>
                <line x1="447" y1="68" x2="461" y2="68"/>
                <line x1="597" y1="68" x2="611" y2="68"/>
              </g>
              <rect x="15" y="140" width="220" height="40" rx="8" fill="#27274e" stroke="#8b5cf6"/>
              <text x="125" y="165">Seed: "cake London"</text>
              <line x1="237" y1="160" x2="271" y2="160" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#seo5a)"/>
              <rect x="275" y="140" width="470" height="40" rx="8" fill="#27274e" stroke="#10b981"/>
              <text x="510" y="165">Long-tail: "eggless chocolate cake delivery Islington"</text>
              <rect x="15" y="196" width="730" height="40" rx="8" fill="#1f1f44" stroke="#ec4899"/>
              <text x="380" y="221" fill="#f9a8d4">AI does not know real search volumes. Check numbers in real tools.</text>
            </g>
          </svg>
          <figcaption>Use AI to find many ideas. Use real tools to check which ideas people actually search.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Seed keywords, long-tail keywords and questions</h3>
          <ul class="lc-list">
            <li><strong>Seed keywords</strong> are short, broad words that describe your business. Example: "cake", "birthday cake", "eggless cake".</li>
            <li><strong>Long-tail keywords</strong> are longer, more specific phrases. Example: "eggless chocolate cake delivery Islington". Each one gets fewer searches. But the people searching know exactly what they want, and there is often less competition.</li>
            <li><strong>Questions</strong> are what people ask. Example: "how long does an eggless cake stay fresh?" These make good guide pages and FAQ sections.</li>
          </ul>
          <p>Small businesses usually do better with long-tail keywords. Big brands already hold the top spots for short words like "cake".</p>
        </div>
        <div class="lc-card">
          <h3>Using AI to find ideas</h3>
          <pre><code>Weak: Give me keywords for a bakery.</code></pre>
          <pre><code>Better: You are an SEO keyword researcher. My business is a home bakery in London.
        We sell eggless cakes and deliver in Islington, Camden and Hackney.
        Seed keywords: eggless cake, birthday cake, cupcakes.
        List 30 long-tail keywords and 10 questions that local customers might search.
        Group them by intent. Do not guess search volumes.</code></pre>
          <p>AI is good at variety. It thinks of occasions (anniversary, baby shower), types (photo cake, jar cake) and places (area names). You might forget these yourself.</p>
          <p><strong>Warning:</strong> if an AI gives you exact monthly search numbers, do not trust them. It may simply make them up. Some AI tools can search the web, but they still do not have Google's real data.</p>
        </div>
        <div class="lc-card">
          <h3>Checking ideas with real tools</h3>
          <table class="lc-table">
            <thead><tr><th>Tool</th><th>What it shows</th><th>How to use it</th></tr></thead>
            <tbody>
              <tr><td><strong>Google Search Console</strong> (free)</td><td>The real searches that already show your site, with clicks and impressions</td><td>Find queries with many impressions but few clicks. These are chances to improve a page.</td></tr>
              <tr><td><strong>Google Keyword Planner</strong> (inside Google Ads)</td><td>Rough search volumes and related ideas</td><td>Check if people search your AI ideas at all. It may show ranges, not exact numbers.</td></tr>
              <tr><td><strong>Google search itself</strong></td><td>Autocomplete, "People also ask" and related searches</td><td>See real phrases and check the intent of the top results.</td></tr>
            </tbody>
          </table>
          <p>Tool features change often. Check each tool's current help pages. Paid SEO tools also exist. Their numbers are estimates, so treat them as rough guides.</p>
          <p><strong>Worked example (made-up numbers):</strong> AI suggested "photo cake London". Keyword Planner showed a medium range of monthly searches. Search Console showed Sweet Crumbs already got 300 impressions for "photo cake Camden" but only 4 clicks. The owner added it to the shortlist and planned a photo cake page.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: a keyword research session</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Prompt">You are a keyword researcher. My business: Backwater Trails, a Kerala travel agency. Seed keywords: Kerala tour package, houseboat. List 20 long-tail keywords and 8 questions. Group them by intent. Do not guess search volumes.</li>
              <li data-kind="answer" data-label="AI reply">Ideas include "Kerala houseboat overnight package", "Kerala honeymoon package 5 days", "are the Western Ghats good in monsoon" and "houseboat with AC Vembanad Lake".</li>
              <li data-kind="tool" data-label="Search Console">You open the Performance report and filter queries that contain "houseboat".</li>
              <li data-kind="result" data-label="What it shows">"houseboat Kerala one night" has 520 impressions and only 6 clicks. Your site shows up, but few people click.</li>
              <li data-kind="tool" data-label="Keyword Planner">You paste the AI's 20 ideas to see rough monthly searches.</li>
              <li data-kind="warn" data-label="Catch this">Three AI ideas show almost no searches. For example, "luxury eco houseboat Kerala sunrise tour" is not a phrase people really search. Remove those three.</li>
              <li data-kind="check" data-label="You decide">You shortlist 8 keywords. First task: improve the one-night houseboat page, because people already see it.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask the AI for keyword ideas for your business, grouped and ready to check in real tools.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an SEO keyword researcher for small businesses in India.

        My business: [Backwater Trails, a Kerala travel agency selling tour packages and houseboat trips]
        Main customers: [families and couples from Maharashtra, Karnataka and north India]
        Seed keywords: [Kerala tour package, Kerala houseboat, Western Ghats trip]

        Tasks:
        1. List 25 long-tail keyword ideas based on my seed keywords.
        2. List 10 questions my customers might type into Google.
        3. Put everything in a table with columns: keyword or question, search intent, page type that fits, and why a customer might search it.
        4. Mark the 5 ideas you think are most useful for a small business, and explain why.

        Rules: Do NOT give search volumes or difficulty scores, because you cannot see real search data. At the end, tell me how to check these ideas in Google Search Console and Google Keyword Planner, in 4 simple steps.</pre>
            <ul class="ai-try-checks">
              <li>The keywords are specific (places, trip lengths, occasions), not just short words.</li>
              <li>The AI did not invent search volumes or scores.</li>
              <li>Each keyword has a sensible intent and page type.</li>
              <li>You plan to check the ideas in real tools before you use them.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> AI is a fast idea machine for keywords, long-tail phrases and questions. Real tools like Search Console tell you what people actually search. Use both, and trust the real data for numbers.
        </div>
      HTML
      starter_code: nil
    },
    6 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mkt">Digital Marketing</div>
          <h1 class="lc-title">Keyword Clusters and Topic Maps</h1>
        </div>
        <p class="lc-lead">A long keyword list is hard to use. You cannot write one page for every keyword. In this lesson, you will learn to group keywords into <strong>clusters</strong> (groups of keywords that one page can answer). You will then join the clusters into a <strong>topic map</strong> (a plan of pillar pages and cluster pages). AI is fast at the first grouping. You still check each group, because only real search results show which keywords belong together.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="A topic map for a made-up London bakery. A pillar page called Eggless cakes guide sits in the centre. Four cluster pages link to it and it links back: eggless chocolate cake, eggless cake price London, egg substitutes in cakes and eggless cake delivery.">
            <defs><marker id="seo6a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto-start-reverse"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="380" y="40" font-weight="700" fill="#fda4af">Topic map: eggless cakes</text>
              <text x="380" y="62" font-size="11" fill="#9b99b8">one page for each cluster</text>
              <rect x="20" y="20" width="220" height="60" rx="10" fill="#27274e" stroke="#3b82f6"/>
              <text x="130" y="45">Eggless chocolate cake</text><text x="130" y="66" font-size="11" fill="#9b99b8">cluster page · recipe</text>
              <rect x="520" y="20" width="220" height="60" rx="10" fill="#27274e" stroke="#10b981"/>
              <text x="630" y="45">Eggless cake price London</text><text x="630" y="66" font-size="11" fill="#9b99b8">cluster page · buying</text>
              <rect x="270" y="120" width="220" height="64" rx="12" fill="#1f1f44" stroke="#f43f5e" stroke-width="2"/>
              <text x="380" y="146" font-weight="700">Pillar page</text><text x="380" y="168">Eggless cakes guide</text>
              <rect x="20" y="220" width="220" height="60" rx="10" fill="#27274e" stroke="#f59e0b"/>
              <text x="130" y="245">Egg substitutes in cakes</text><text x="130" y="266" font-size="11" fill="#9b99b8">cluster page · learning</text>
              <rect x="520" y="220" width="220" height="60" rx="10" fill="#27274e" stroke="#8b5cf6"/>
              <text x="630" y="245">Eggless cake delivery</text><text x="630" y="266" font-size="11" fill="#9b99b8">cluster page · ordering</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-start="url(#seo6a)" marker-end="url(#seo6a)">
                <line x1="244" y1="74" x2="292" y2="116"/>
                <line x1="516" y1="74" x2="468" y2="116"/>
                <line x1="244" y1="226" x2="292" y2="188"/>
                <line x1="516" y1="226" x2="468" y2="188"/>
              </g>
              <text x="380" y="240" font-size="11" fill="#9b99b8">arrows = internal links</text>
              <text x="380" y="258" font-size="11" fill="#9b99b8">(both ways)</text>
            </g>
          </svg>
          <figcaption>The pillar page gives the big picture. Each cluster page goes deep on one smaller need. Internal links join them.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Clusters, pillars and topic maps</h3>
          <table class="lc-table">
            <thead><tr><th>Word</th><th>Plain meaning</th><th>Example (made-up London bakery)</th></tr></thead>
            <tbody>
              <tr><td><strong>Keyword cluster</strong></td><td>Keywords with the same meaning and the same intent. One page can answer all of them.</td><td>"eggless cake", "cake without egg", "egg free cake"</td></tr>
              <tr><td><strong>Pillar page</strong></td><td>A broad page that covers the whole topic in short sections</td><td>"Eggless Cakes: A Complete Guide"</td></tr>
              <tr><td><strong>Cluster page</strong></td><td>A focused page on one smaller part of the topic</td><td>"Eggless Chocolate Cake Recipe"</td></tr>
              <tr><td><strong>Internal link</strong></td><td>A link from one page on your site to another page on your site</td><td>The guide links to the recipe. The recipe links back to the guide.</td></tr>
              <tr><td><strong>Topic map</strong></td><td>The full plan: pillars, clusters and the links between them</td><td>The diagram above</td></tr>
            </tbody>
          </table>
          <p>Why does this help? Search engines and readers can see that you cover a topic well. Readers also find the next page they need. It does not promise higher rankings. It gives your site a clear shape.</p>
        </div>
        <div class="lc-card">
          <h3>How AI helps: a weak and a better prompt</h3>
          <p>A weak prompt gives the AI no data and no rules:</p>
          <pre><code>Make keyword clusters for a bakery.</code></pre>
          <p>The AI will invent keywords and guess the groups. A better prompt gives your real list and clear rules:</p>
          <pre><code>You are an SEO planner for Sweet Crumbs, a home bakery in London.
        Below are 30 keywords from my Search Console and a keyword tool.
        1. Group them into clusters. One cluster = one page.
        2. Put keywords in the same cluster only if they have the same meaning AND the same intent.
        3. For each cluster give: a page name, the main keyword, the intent, and pillar or cluster page.
        4. List any keyword you are unsure about in a separate "check" group.
        Output a table. Do not add new keywords.
        [paste your keywords here]</code></pre>
          <p>The rule "same meaning and same intent" matters. "eggless cake recipe" and "eggless cake delivery London" share words. But one person wants to bake, and the other wants to buy. They need two different pages.</p>
        </div>
        <div class="lc-card">
          <h3>What you must check</h3>
          <ul class="lc-list">
            <li><strong>Search the main keywords yourself.</strong> If two keywords show mostly the same top pages, they usually belong in one cluster. If the results are very different, split them.</li>
            <li><strong>Avoid keyword cannibalisation.</strong> This means two of your own pages try to rank for the same search. They then compete with each other. Plan one page for each cluster.</li>
            <li><strong>Check the numbers.</strong> The AI cannot see real search volumes. Use Search Console or a keyword planner for real data.</li>
            <li><strong>Keep your business in view.</strong> Drop clusters you cannot serve, such as delivery to cities you do not cover.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Activity: where does each keyword go?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">The bakery already has a page for the main keyword "eggless cake". Sort each new keyword.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="same" data-label="Same page"></div>
              <div data-sorter-target="bucket" data-bucket="new" data-label="New cluster page"></div>
              <div data-sorter-target="bucket" data-bucket="off" data-label="Not our topic"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="same" data-why="Same meaning and same intent as &quot;eggless cake&quot;. Add it to the existing page.">cake without egg</li>
              <li data-bucket="same" data-why="This is just another way to say eggless cake.">egg free cake</li>
              <li data-bucket="new" data-why="The person wants to bake at home. That is a different intent, so it needs its own page.">eggless cake recipe at home</li>
              <li data-bucket="new" data-why="The person wants to buy and get it delivered. A focused ordering page fits best.">eggless birthday cake delivery London</li>
              <li data-bucket="off" data-why="Job seekers are not cake buyers. This does not fit the topic map.">bakery jobs in London</li>
              <li data-bucket="off" data-why="An oven buying guide is a different topic. The bakery does not sell ovens.">best oven for baking</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask the AI to group a keyword list into clusters and a simple topic map. Paste your own keywords, or keep the sample list.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an SEO content planner for [Sweet Crumbs, a home bakery in London that sells eggless cakes and cupcakes].

        Here is my keyword list:
        [eggless cake, cake without egg, eggless cake near me, eggless chocolate cake recipe, eggless cake delivery london, birthday cake london, egg substitute for cake, eggless cupcakes, eggless cake price, how to bake cake without oven, custom cake london, eggless red velvet cake]

        Tasks:
        1. Group the keywords into clusters. One cluster = one page. Only group keywords with the same meaning and the same search intent.
        2. For each cluster, give: page name, main keyword, other keywords, intent (informational, commercial, transactional), and "pillar" or "cluster page".
        3. Suggest one pillar page and show which cluster pages link to it.
        4. Put keywords that could fit two clusters in a "Check" list, with a reason.

        Rules: do not add new keywords. Do not give search volumes. Output a table, then the topic map as a short list.</pre>
            <ul class="ai-try-checks">
              <li>Every keyword from the list is used once, and no new keywords were added.</li>
              <li>Buying keywords and learning keywords are in different clusters.</li>
              <li>No two clusters would need the same page.</li>
              <li>Search the unsure keywords yourself before you decide.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> One cluster means one page. AI can make the first grouping in seconds. You decide the final groups by looking at real search results and at what your business can offer.
        </div>
      HTML
      starter_code: nil
    },
    7 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mkt">Digital Marketing</div>
          <h1 class="lc-title">Competitor Content Gaps</h1>
        </div>
        <p class="lc-lead">Before you write a page, look at the pages that already rank for your keyword. A <strong>content gap</strong> is a useful topic or question that those pages miss or cover badly. In this lesson, you will collect the top results, use AI to compare them, and find the gaps. The goal is not to copy anyone. The goal is to make a page that helps the reader more, often by adding your own experience.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="A comparison grid for the keyword Kerala houseboat booking. Rows are subtopics. Columns are three top results and your planned page. Price range and best season are covered by most results. Food on board, safety and first-hand photos are gaps that your page plans to cover.">
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="20" y="28" text-anchor="start" font-weight="700" fill="#fda4af">Keyword: "Kerala houseboat booking"</text>
              <rect x="20" y="42" width="720" height="36" rx="6" fill="#1f1f44"/>
              <text x="36" y="65" text-anchor="start" font-weight="700">Subtopic</text>
              <text x="325" y="65" font-weight="700">Result 1</text>
              <text x="435" y="65" font-weight="700">Result 2</text>
              <text x="545" y="65" font-weight="700">Result 3</text>
              <text x="665" y="65" font-weight="700" fill="#6ee7b7">Your page</text>
              <g font-size="12.5">
                <text x="36" y="102" text-anchor="start">Price range</text>
                <text x="325" y="102" fill="#6ee7b7">✓</text><text x="435" y="102" fill="#6ee7b7">✓</text><text x="545" y="102" fill="#fca5a5">✗</text><text x="665" y="102" fill="#6ee7b7">✓</text>
                <text x="36" y="134" text-anchor="start">Best season to go</text>
                <text x="325" y="134" fill="#6ee7b7">✓</text><text x="435" y="134" fill="#6ee7b7">✓</text><text x="545" y="134" fill="#6ee7b7">✓</text><text x="665" y="134" fill="#6ee7b7">✓</text>
                <text x="36" y="166" text-anchor="start">Day trip vs overnight</text>
                <text x="325" y="166" fill="#6ee7b7">✓</text><text x="435" y="166" fill="#fca5a5">✗</text><text x="545" y="166" fill="#6ee7b7">✓</text><text x="665" y="166" fill="#6ee7b7">✓</text>
              </g>
              <rect x="20" y="178" width="720" height="96" rx="6" fill="#27274e" stroke="#f59e0b" stroke-dasharray="5 4"/>
              <g font-size="12.5">
                <text x="36" y="202" text-anchor="start">Food on board</text>
                <text x="325" y="202" fill="#fca5a5">✗</text><text x="435" y="202" fill="#fca5a5">✗</text><text x="545" y="202" fill="#fca5a5">✗</text><text x="665" y="202" fill="#fcd34d">add</text>
                <text x="36" y="232" text-anchor="start">Safety checks for families</text>
                <text x="325" y="232" fill="#fca5a5">✗</text><text x="435" y="232" fill="#fca5a5">✗</text><text x="545" y="232" fill="#6ee7b7">✓</text><text x="665" y="232" fill="#fcd34d">add</text>
                <text x="36" y="262" text-anchor="start">Our own photos and trip notes</text>
                <text x="325" y="262" fill="#fca5a5">✗</text><text x="435" y="262" fill="#fca5a5">✗</text><text x="545" y="262" fill="#fca5a5">✗</text><text x="665" y="262" fill="#fcd34d">add</text>
              </g>
              <text x="380" y="292" font-size="11" fill="#fcd34d">gaps: few or no top results cover these well</text>
            </g>
          </svg>
          <figcaption>A gap grid for a made-up Kerala travel agency. The yellow box shows the gaps your page can fill.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Step 1: collect the top results yourself</h3>
          <p>Search your main keyword in a private browser window. This reduces the effect of your own search history. Note the top 3 to 5 pages that match your intent. Skip ads, big marketplaces and pages of a different type.</p>
          <p>For each page, write down:</p>
          <ul class="lc-list">
            <li>The page title and the main headings (H2s)</li>
            <li>The type of page: guide, list, product page, video</li>
            <li>Questions from the "People also ask" box, if your search shows one</li>
            <li>Anything special, such as a price table or a map</li>
          </ul>
          <p>Some AI tools can browse the web. Others cannot, or they may give old results. So collect the headings yourself and paste them in. Paste short notes and headings, not whole articles. The content belongs to other people.</p>
        </div>
        <div class="lc-card">
          <h3>Step 2: ask AI to compare</h3>
          <p>A weak prompt asks the AI to guess:</p>
          <pre><code>What are my competitors missing for Kerala houseboat booking?</code></pre>
          <p>The AI has not seen the pages, so it will make things up. A better prompt gives it your notes:</p>
          <pre><code>You are an SEO content strategist for Backwater Trails, a travel agency in Kerala.
        Keyword: "Kerala houseboat booking". Reader: a family planning a first trip.
        Below are the headings of the top 3 results, which I copied myself.
        1. Make a table: subtopics in rows, the 3 results in columns, ✓ or ✗ in each cell.
        2. List the gaps: useful subtopics or questions that 0 or 1 result covers.
        3. For each gap, say what first-hand detail we could add.
        Only use my notes. If you are not sure, say "not sure".
        [paste your notes here]</code></pre>
        </div>
        <div class="lc-card">
          <h3>Step 3: check and decide</h3>
          <table class="lc-table">
            <thead><tr><th>AI finding</th><th>What you check</th><th>Decision</th></tr></thead>
            <tbody>
              <tr><td>"No result covers food on board"</td><td>Open the pages again. Is it really missing?</td><td>Yes, missing. Add a section with a sample menu from your own trips.</td></tr>
              <tr><td>"No result gives prices"</td><td>Result 1 and 2 do show price ranges</td><td>AI was wrong. Not a gap, but still include current prices.</td></tr>
              <tr><td>"Add a history of houseboats"</td><td>Does a family booking a trip need this?</td><td>Not for this page. Maybe a short line only.</td></tr>
            </tbody>
          </table>
          <p>Not every gap is worth filling. Add a gap only if it helps your reader with <em>this</em> search. Your best gaps are often things only you know: real trip notes, your own photos, and common questions from your customers.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: a gap analysis session</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="tool" data-label="Search">You search "Kerala houseboat booking" in a private window.</li>
              <li data-kind="result" data-label="Top results">You see 3 guide pages, 1 marketplace and a "People also ask" box. You copy the headings of the 3 guides into a note.</li>
              <li data-kind="user" data-label="Your prompt">"Compare these 3 pages. Make a ✓/✗ table of subtopics and list the gaps. Only use my notes."</li>
              <li data-kind="answer" data-label="AI reply">The AI gives a table. It lists 4 gaps: food on board, safety for families, prices and our own photos.</li>
              <li data-kind="warn" data-label="Mistake">"Prices" is not a real gap. Two results show a price range. The AI misread your notes.</li>
              <li data-kind="check" data-label="You check">You open each page again. You remove "prices" from the gap list. You keep the other 3.</li>
              <li data-kind="thought" data-label="Your plan">Your page will cover the basics well. It will also add a food section, a family safety checklist and real trip photos.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Paste the headings of the top results for your keyword, and let the AI find the gaps. If you leave the brackets, the AI will use sample notes.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an SEO content strategist for [Backwater Trails, a small travel agency in Kerala].
        My keyword: [Kerala houseboat booking]
        My reader: [a family from Karnataka planning their first houseboat trip]

        Here are the main headings of the top 3 search results. I copied them myself:
        Result 1: [What is a houseboat / Price range / Best time to visit / Day vs overnight]
        Result 2: [Top 10 houseboats / Prices / How to book]
        Result 3: [Best season / Day trips / Safety tips / FAQs]

        Tasks:
        1. Make a table: subtopics in rows, Result 1 to 3 in columns, ✓ or ✗ in each cell.
        2. List the gaps: useful subtopics or questions that 0 or 1 result covers.
        3. For each gap, suggest what first-hand detail we could add (photos, a checklist, real examples).
        4. Suggest 3 questions a family might still have after reading all 3 pages.

        Rules: only use my notes. Do not copy wording. Say "not sure" when my notes do not show it.</pre>
            <ul class="ai-try-checks">
              <li>Every ✓ and ✗ matches your notes. Check any gap the AI claims.</li>
              <li>The gaps help your reader with this search, not just add length.</li>
              <li>The ideas use your own experience, not copied text.</li>
              <li>Invented facts, such as prices or rules, are removed or checked.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A gap analysis tells you what readers still need. AI makes the comparison fast, but it can misread. Open the pages again to check, and fill the gaps with your own knowledge, not with copied content.
        </div>
      HTML
      starter_code: nil
    },
    8 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mkt">Digital Marketing</div>
          <h1 class="lc-title">Content Briefs with AI</h1>
        </div>
        <p class="lc-lead">A <strong>content brief</strong> is a short plan for one page. It tells the writer who the page is for, what it must cover and how to structure it. A good brief saves hours of rewriting. In this lesson, you will use a simple brief template and let AI fill in the first draft. Then you will check and improve it before you give it to a writer, or to yourself.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="A five-step workflow: keyword and intent, your research notes, AI draft brief, you edit and check, writer drafts the page. Below is a brief with eight parts: title, intent and reader, outline, questions to answer, sources to check, internal links, your experience, and length and format.">
            <defs><marker id="seo8a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12.5" fill="#e2e0f0" text-anchor="middle">
              <rect x="15" y="20" width="128" height="56" rx="10" fill="#27274e" stroke="#3b82f6"/><text x="79" y="44">Keyword</text><text x="79" y="62">+ intent</text>
              <rect x="165" y="20" width="128" height="56" rx="10" fill="#27274e" stroke="#22d3ee"/><text x="229" y="44">Your research</text><text x="229" y="62">notes</text>
              <rect x="315" y="20" width="128" height="56" rx="10" fill="#27274e" stroke="#8b5cf6"/><text x="379" y="44">AI drafts</text><text x="379" y="62">the brief</text>
              <rect x="465" y="20" width="128" height="56" rx="10" fill="#27274e" stroke="#f59e0b"/><text x="529" y="44">You edit</text><text x="529" y="62">and check</text>
              <rect x="615" y="20" width="128" height="56" rx="10" fill="#27274e" stroke="#10b981"/><text x="679" y="44">Writer drafts</text><text x="679" y="62">the page</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#seo8a)"><line x1="145" y1="48" x2="162" y2="48"/><line x1="295" y1="48" x2="312" y2="48"/><line x1="445" y1="48" x2="462" y2="48"/><line x1="595" y1="48" x2="612" y2="48"/></g>
              <rect x="15" y="100" width="728" height="186" rx="12" fill="#1f1f44" stroke="#f43f5e"/>
              <text x="379" y="126" font-weight="700" fill="#fda4af">A one-page content brief</text>
              <g text-anchor="start">
                <rect x="35" y="142" width="160" height="56" rx="8" fill="#27274e"/><text x="47" y="166">1. Title idea</text><text x="47" y="186" font-size="11" fill="#9b99b8">and main keyword</text>
                <rect x="210" y="142" width="160" height="56" rx="8" fill="#27274e"/><text x="222" y="166">2. Intent + reader</text><text x="222" y="186" font-size="11" fill="#9b99b8">who, and what they want</text>
                <rect x="385" y="142" width="160" height="56" rx="8" fill="#27274e"/><text x="397" y="166">3. Outline</text><text x="397" y="186" font-size="11" fill="#9b99b8">H1 and H2 headings</text>
                <rect x="560" y="142" width="165" height="56" rx="8" fill="#27274e"/><text x="572" y="166">4. Questions</text><text x="572" y="186" font-size="11" fill="#9b99b8">the page must answer</text>
                <rect x="35" y="212" width="160" height="56" rx="8" fill="#27274e"/><text x="47" y="236">5. Sources</text><text x="47" y="256" font-size="11" fill="#9b99b8">facts to check</text>
                <rect x="210" y="212" width="160" height="56" rx="8" fill="#27274e"/><text x="222" y="236">6. Internal links</text><text x="222" y="256" font-size="11" fill="#9b99b8">to and from this page</text>
                <rect x="385" y="212" width="160" height="56" rx="8" fill="#27274e"/><text x="397" y="236">7. Your experience</text><text x="397" y="256" font-size="11" fill="#9b99b8">examples only you have</text>
                <rect x="560" y="212" width="165" height="56" rx="8" fill="#27274e"/><text x="572" y="236">8. Length + format</text><text x="572" y="256" font-size="11" fill="#9b99b8">tables, steps, images</text>
              </g>
            </g>
          </svg>
          <figcaption>AI drafts the brief from your notes. You check it before anyone writes the page.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>A simple brief template</h3>
          <p>Copy this template. Use the same one for every page, so your briefs are easy to compare.</p>
          <pre><code>CONTENT BRIEF
        Page title (idea):
        Main keyword:            Other keywords:
        Search intent:           (informational / commercial / transactional)
        Reader:                  (who they are, what they already know)
        Goal of the page:        (what the reader should do next)
        Outline:                 H1, then H2s, with 1 line about each
        Questions to answer:
        Facts to check + sources:
        Internal links:          (pages to link to, pages that should link here)
        Our experience to add:   (photos, examples, numbers from our work)
        Format + length guide:
        Do not:                  (claims we cannot make, topics to avoid)</code></pre>
        </div>
        <div class="lc-card">
          <h3>Weak and better prompts</h3>
          <p>A weak prompt:</p>
          <pre><code>Write a content brief for "payment reminder email".</code></pre>
          <p>The AI does not know your business, your reader or your site. A better prompt gives the template and your notes:</p>
          <pre><code>You are an SEO content editor for LedgerLeaf, an invoicing app for freelancers in India.
        Fill in the brief template below for the keyword "payment reminder email to client".
        Intent: informational. Reader: a freelancer whose client paid late.
        Use my research notes and gap list (below). Our existing pages are:
        /invoice-template, /late-payment-tips, /pricing.
        Mark every fact that needs checking with [CHECK].
        Do not invent statistics, laws or URLs.
        [template]
        [notes]</code></pre>
          <p>LedgerLeaf is a made-up Indian startup. Notice two safety rules in the prompt: "[CHECK]" marks, and "do not invent URLs". AI often invents sources and links that do not exist.</p>
        </div>
        <div class="lc-card">
          <h3>What you check in the AI's brief</h3>
          <table class="lc-table">
            <thead><tr><th>Part</th><th>Common AI problem</th><th>Your fix</th></tr></thead>
            <tbody>
              <tr><td>Intent</td><td>Plans a sales page for a "how to" search</td><td>Match the page type to what the top results show</td></tr>
              <tr><td>Outline</td><td>Too many H2s, some off-topic</td><td>Keep only what this reader needs</td></tr>
              <tr><td>Sources</td><td>Invented reports or broken links</td><td>Open every source. Delete any you cannot find.</td></tr>
              <tr><td>Internal links</td><td>Links to pages you do not have</td><td>Use only real URLs from your site</td></tr>
              <tr><td>Experience</td><td>Empty or generic ideas</td><td>Add your real examples, screenshots or customer questions</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Activity: build a brief in the right order</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put these steps in the order you would follow to make one content brief.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Choose the main keyword and check its search intent</li>
              <li data-order="2">Collect notes: top results, gaps and customer questions</li>
              <li data-order="3">Give the AI your template, notes and rules, and ask for a draft brief</li>
              <li data-order="4">Check the intent, outline, sources and internal links</li>
              <li data-order="5">Add your own experience and the "Do not" list</li>
              <li data-order="6">Send the final brief to the writer</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask the AI to fill in a full content brief for one page. Change the business, keyword and notes to your own.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an SEO content editor for [LedgerLeaf, an invoicing app for freelancers in India].
        Write a content brief for one page.

        Main keyword: [payment reminder email to client]
        Search intent: [informational]
        Reader: [a freelance designer whose client is 20 days late with payment]
        Our existing pages for internal links: [/invoice-template, /late-payment-tips, /pricing]
        My notes on top results and gaps: [top pages give email templates but few give a polite follow-up schedule or phone call tips]

        Use this template:
        Page title idea / Main keyword / Other keywords / Search intent / Reader / Goal of the page / Outline (H1 and H2s, one line each) / Questions to answer / Facts to check + sources / Internal links / Our experience to add / Format + length guide / Do not

        Rules:
        - Mark any fact that needs checking with [CHECK].
        - Do not invent statistics, laws or URLs. Only use the internal links I gave.
        - Keep the brief to one page.</pre>
            <ul class="ai-try-checks">
              <li>The page type matches the search intent.</li>
              <li>Internal links are only the pages you listed.</li>
              <li>Facts are marked [CHECK], and no sources are made up.</li>
              <li>The "Our experience to add" part has ideas only you can supply.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A brief is where you decide what the page is for. Let AI fill in the template fast, then spend your time on the parts it cannot do: the right intent, real sources, real links and your own experience.
        </div>
      HTML
      starter_code: nil
    },
    9 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mkt">Digital Marketing</div>
          <h1 class="lc-title">Writing Helpful SEO Content</h1>
        </div>
        <p class="lc-lead">Search engines try to show pages that really help people. Google calls this <strong>people-first content</strong>: content made mainly to help a reader, not mainly to rank. In this lesson, you will use AI for a first draft, then add what only you can add: experience, real examples and checked facts. You will also learn which AI habits look like spam and should be avoided.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 280" role="img" aria-label="Top row: the four parts of E-E-A-T: experience, expertise, authoritativeness and trust. Bottom row: AI draft plus your experience plus checked facts leads to a helpful page.">
            <defs><marker id="seo9a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="380" y="26" font-weight="700" fill="#fda4af">E-E-A-T: signs that a page can be trusted</text>
              <rect x="20" y="40" width="170" height="64" rx="10" fill="#27274e" stroke="#3b82f6"/><text x="105" y="66">Experience</text><text x="105" y="88" font-size="11" fill="#9b99b8">you did it yourself</text>
              <rect x="200" y="40" width="170" height="64" rx="10" fill="#27274e" stroke="#8b5cf6"/><text x="285" y="66">Expertise</text><text x="285" y="88" font-size="11" fill="#9b99b8">you know the subject</text>
              <rect x="380" y="40" width="170" height="64" rx="10" fill="#27274e" stroke="#22d3ee"/><text x="465" y="66">Authoritativeness</text><text x="465" y="88" font-size="11" fill="#9b99b8">others cite you</text>
              <rect x="560" y="40" width="170" height="64" rx="10" fill="#27274e" stroke="#10b981" stroke-width="2"/><text x="645" y="66" font-weight="700">Trust</text><text x="645" y="88" font-size="11" fill="#9b99b8">accurate and honest</text>
              <text x="380" y="140" font-weight="700" fill="#fda4af">How to build a helpful page</text>
              <rect x="20" y="160" width="150" height="70" rx="10" fill="#27274e" stroke="#8b5cf6"/><text x="95" y="190">AI draft</text><text x="95" y="212" font-size="11" fill="#9b99b8">structure, first pass</text>
              <text x="185" y="200" font-size="20" fill="#9b99b8">+</text>
              <rect x="200" y="160" width="150" height="70" rx="10" fill="#27274e" stroke="#f59e0b"/><text x="275" y="190">Your experience</text><text x="275" y="212" font-size="11" fill="#9b99b8">photos, tips, cases</text>
              <text x="365" y="200" font-size="20" fill="#9b99b8">+</text>
              <rect x="380" y="160" width="150" height="70" rx="10" fill="#27274e" stroke="#ec4899"/><text x="455" y="190">Checked facts</text><text x="455" y="212" font-size="11" fill="#9b99b8">prices, claims, dates</text>
              <line x1="534" y1="195" x2="576" y2="195" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#seo9a)"/>
              <rect x="580" y="160" width="160" height="70" rx="10" fill="#1f1f44" stroke="#10b981" stroke-width="2"/><text x="660" y="190" font-weight="700">Helpful page</text><text x="660" y="212" font-size="11" fill="#9b99b8">made for people first</text>
              <text x="380" y="262" font-size="11" fill="#9b99b8">An AI draft alone is only the start.</text>
            </g>
          </svg>
          <figcaption>Trust is the centre of E-E-A-T. You build it by adding real experience and checking every fact.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>What search engines want</h3>
          <p>Google's public guidance describes the idea of <strong>E-E-A-T</strong>: experience, expertise, authoritativeness and trust. It is not one score or a setting. It is a way to think about quality. Pages that show these signs tend to be more useful to readers.</p>
          <ul class="lc-list">
            <li><strong>Using AI is not against the rules by itself.</strong> Google has said it cares about the quality of content, not how it was made.</li>
            <li><strong>Mass-produced pages are a problem.</strong> Google's spam policies say that making many low-value pages mainly to rank is spam. This is true whether a person or AI makes them.</li>
            <li><strong>No trick guarantees a ranking.</strong> Helpful content improves your chances. It does not promise a position.</li>
          </ul>
          <p>Rules and wording change over time. Read Google Search Central's current pages on helpful content and spam policies.</p>
        </div>
        <div class="lc-card">
          <h3>Draft with AI, but leave room for you</h3>
          <p>A weak prompt gets a generic article that anyone could publish:</p>
          <pre><code>Write a 1500-word SEO blog on how to wash block print bedsheets.</code></pre>
          <p>A better prompt asks for a draft with gaps for your own knowledge:</p>
          <pre><code>You are a writer for Rangrez Crafts, a small block-print textile shop in Rajasthan.
        Use the brief below to write a first draft.
        - Where our own experience would help, write [ADD: …] with a hint.
        - Mark every fact, number or claim with [CHECK].
        - Use short sentences and plain words. No keyword stuffing.
        - Do not invent customer stories, reviews or test results.
        [paste brief]</code></pre>
          <p>Rangrez Crafts is a made-up business. The [ADD] and [CHECK] marks turn the draft into a to-do list for you.</p>
        </div>
        <div class="lc-card">
          <h3>From AI draft to helpful page</h3>
          <table class="lc-table">
            <thead><tr><th>AI draft says</th><th>Helpful version says</th><th>What was added</th></tr></thead>
            <tbody>
              <tr><td>"Wash gently to keep colours bright."</td><td>"We wash every new sheet once before we ship it. Cold water and a mild soap keep the natural dyes from fading."</td><td>First-hand experience</td></tr>
              <tr><td>"Many people love hand-block prints."</td><td>A photo of the printing blocks, with the printer's name and years of work</td><td>Real people and proof</td></tr>
              <tr><td>"Dry in direct sunlight."</td><td>"Dry in shade. Strong sun can fade natural dyes. [checked with our dyer]"</td><td>A corrected fact</td></tr>
            </tbody>
          </table>
          <p>Before you publish, check four things. Every fact is correct. Every [ADD] is filled. The page answers the questions in the brief. A real person is named as the author or reviewer.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: helpful or risky?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each writing practice. Does it make the page more helpful, or is it risky or spam-like?</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="good" data-label="Helpful"></div>
              <div data-sorter-target="bucket" data-bucket="bad" data-label="Risky or spam-like"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="good" data-why="Real photos and notes from your own work show first-hand experience.">Add your own photos of a washing test, with notes on what happened</li>
              <li data-bucket="bad" data-why="Many near-copy pages made mainly to rank are a typical example of scaled, low-value content.">Make 200 city pages where only the city name changes</li>
              <li data-bucket="bad" data-why="AI can make mistakes. Unchecked drafts can spread wrong facts and hurt trust.">Publish the AI draft without reading it</li>
              <li data-bucket="bad" data-why="Fake reviews are dishonest and break trust. They can also break platform rules and the law.">Ask AI to write five customer reviews for the page</li>
              <li data-bucket="good" data-why="A named, real author with relevant experience helps readers trust the page.">Add a short author box about the real textile maker</li>
              <li data-bucket="bad" data-why="Repeating the keyword again and again makes the page worse to read. It is keyword stuffing.">Use the main keyword in every sentence</li>
              <li data-bucket="good" data-why="Checked facts with a source make the page more accurate and trustworthy.">Check dye care advice with your dyer before you publish</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask the AI for a first draft that marks where your experience is needed and which facts to check.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a content writer for [Rangrez Crafts, a small block-print textile shop in Rajasthan].
        Write a first draft of a web page.

        Topic and main keyword: [how to wash block print cotton bedsheets]
        Reader: [a first-time buyer who is worried the colours will fade]
        Outline: [H1, then H2s: Before the first wash / Washing step by step / Drying and ironing / Common mistakes / FAQs]

        Rules:
        1. Use short sentences and plain words. Aim for about [700] words.
        2. Where our own experience would make the page better, write [ADD: hint]. For example: [ADD: photo of our washing test].
        3. Mark every fact, number or claim that needs checking with [CHECK].
        4. Do not invent customer stories, reviews, statistics or test results.
        5. Do not repeat the main keyword more than it sounds natural.
        6. At the end, list all [ADD] and [CHECK] items as a to-do list.</pre>
            <ul class="ai-try-checks">
              <li>The draft has [ADD] marks where your experience belongs.</li>
              <li>Every care tip or claim is marked [CHECK]. Check each one before you publish.</li>
              <li>There are no made-up reviews, stories or numbers.</li>
              <li>It reads naturally, with no keyword stuffing.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> AI can write a clean draft, but any site can do that. Your first-hand experience and checked facts make the page helpful and trusted. Publish only pages you would be proud to show a customer.
        </div>
      HTML
      starter_code: nil
    },
    10 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mkt">Digital Marketing</div>
          <h1 class="lc-title">Titles, Meta Descriptions and Headings</h1>
        </div>
        <p class="lc-lead">The title and the description are often the first things a person sees in search results. They help decide if the person clicks. Headings then help the reader find their way on the page. In this lesson, you will use AI to write many title and description options, check them, and pick the best. You will also plan a clear heading structure.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 260" role="img" aria-label="Left: a mock search result with a URL line, a blue title and a two-line description, with notes on what each part does. Right: a page heading outline with one H1, four H2s and two H3s under the first H2.">
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <rect x="20" y="20" width="420" height="140" rx="12" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="40" y="48" font-size="11.5" fill="#9b99b8">sweetcrumbs.in › eggless-cakes</text>
              <text x="40" y="76" font-size="15" fill="#93c5fd">Eggless Cakes in London | Same-Day Delivery</text>
              <text x="40" y="104" font-size="12" fill="#c7c5dc">Order fresh eggless cakes in London. 25 flavours,</text>
              <text x="40" y="122" font-size="12" fill="#c7c5dc">custom birthday designs and delivery from 10 am.</text>
              <text x="40" y="146" font-size="11" fill="#9b99b8">A made-up search result</text>
              <rect x="20" y="176" width="200" height="64" rx="10" fill="#27274e" stroke="#f43f5e"/>
              <text x="120" y="200" text-anchor="middle">Title tag</text>
              <text x="120" y="222" text-anchor="middle" font-size="11" fill="#9b99b8">main words first</text>
              <rect x="240" y="176" width="200" height="64" rx="10" fill="#27274e" stroke="#f59e0b"/>
              <text x="340" y="200" text-anchor="middle">Meta description</text>
              <text x="340" y="222" text-anchor="middle" font-size="11" fill="#9b99b8">a clear reason to click</text>
              <rect x="460" y="20" width="280" height="220" rx="12" fill="#1f1f44" stroke="#10b981"/>
              <text x="600" y="44" text-anchor="middle" font-weight="700" fill="#6ee7b7">Headings on the page</text>
              <text x="478" y="74" font-weight="700">H1 Eggless Cakes in London</text>
              <text x="494" y="100" fill="#c4b5fd">H2 Popular flavours</text>
              <text x="512" y="124" font-size="12" fill="#9b99b8">H3 Chocolate truffle</text>
              <text x="512" y="148" font-size="12" fill="#9b99b8">H3 Rasmalai cake</text>
              <text x="494" y="174" fill="#c4b5fd">H2 Prices and sizes</text>
              <text x="494" y="200" fill="#c4b5fd">H2 How delivery works</text>
              <text x="494" y="226" fill="#c4b5fd">H2 Questions and answers</text>
            </g>
          </svg>
          <figcaption>The title and description win the click. The headings help the reader after the click.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The three parts, in plain words</h3>
          <table class="lc-table">
            <thead><tr><th>Part</th><th>What it is</th><th>Good practice</th></tr></thead>
            <tbody>
              <tr><td><strong>Title tag</strong></td><td>The page name in the page's code. Search results often show it as the blue link.</td><td>Unique for each page. Main words near the start. Long titles get cut off in results.</td></tr>
              <tr><td><strong>Meta description</strong></td><td>A short summary of the page, also in the page's code</td><td>Say what the reader gets and why to click. Keep it short enough to show in full.</td></tr>
              <tr><td><strong>Headings (H1, H2, H3)</strong></td><td>The titles and subtitles on the page itself</td><td>Usually one H1 that matches the topic. H2s for main sections, H3s inside them.</td></tr>
            </tbody>
          </table>
          <p>Search engines may show a different title or description if they think it fits the search better. So write clear, honest text that matches the page. Your website tool or SEO plugin usually has fields for the title and meta description.</p>
        </div>
        <div class="lc-card">
          <h3>Ask for many options, then pick</h3>
          <p>A weak prompt gives you one average title:</p>
          <pre><code>Write an SEO title for my cake page.</code></pre>
          <p>A better prompt asks for options with different angles:</p>
          <pre><code>You are an SEO copywriter for Sweet Crumbs, a home bakery in London.
        Page: eggless cakes, with same-day delivery in London. Main keyword: "eggless cake London".
        Write 8 title options and 5 meta description options.
        Use different angles: flavour, speed, occasion, trust.
        Put the main keyword near the start of each title.
        Only use these facts: 25 flavours, custom designs, delivery from 10 am.
        No claims like "best" or "No. 1".</code></pre>
          <p>AI tools often count characters wrongly. Paste the options into a spreadsheet and count them yourself. If a title is in cell A2, this formula gives its length:</p>
          <pre><code>=LEN(A2)</code></pre>
          <p>Many SEO tools also show a preview of how a title may look in results. Use one if you have it.</p>
        </div>
        <div class="lc-card">
          <h3>How to pick the winner</h3>
          <ul class="lc-list">
            <li><strong>Matches the intent.</strong> A buyer wants delivery and price. A learner wants a recipe.</li>
            <li><strong>Is true.</strong> Every promise must be real. "Same-day delivery" must work every day you say it does.</li>
            <li><strong>Stands out.</strong> Look at the other results for the same search. Pick a title that gives a clear reason to choose you.</li>
            <li><strong>Is unique.</strong> No two pages on your site should share a title.</li>
          </ul>
          <p>After a few weeks, check the page in Google Search Console. Look at impressions (how often it was shown) and CTR (click-through rate: the share of people who saw it and clicked). If the CTR is low, try another title from your list.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: a title-writing session</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Your prompt">You ask for 8 titles and 5 meta descriptions for the eggless cake page, with your 3 real facts.</li>
              <li data-kind="answer" data-label="AI reply">The AI gives 8 titles. It says every title is "under 60 characters".</li>
              <li data-kind="tool" data-label="Spreadsheet">You paste the titles into column A and use =LEN(A2) in column B.</li>
              <li data-kind="result" data-label="Counts">Two titles are much longer than the others. The AI's count was wrong.</li>
              <li data-kind="warn" data-label="Mistake">One title says "London's No. 1 Eggless Bakery". You cannot prove this claim.</li>
              <li data-kind="check" data-label="You check">You remove the long and false titles. You compare the rest with the top search results.</li>
              <li data-kind="thought" data-label="Your choice">You pick "Eggless Cakes in London | Same-Day Delivery". You save two others to test later.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask the AI for title options, meta descriptions and a heading outline for one page. Then check the length and the facts yourself.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an SEO copywriter for [Sweet Crumbs, a home bakery in London].
        Page: [eggless cakes with same-day delivery in London]
        Main keyword: [eggless cake London]
        Search intent: [transactional: the reader wants to order a cake]
        Facts you may use (use no others): [25 flavours, custom birthday designs, delivery from 10 am, prices start at Rs 550]

        Tasks:
        1. Write 8 title options. Put the main keyword near the start. Use different angles: flavour, speed, occasion, trust.
        2. Write 5 meta descriptions. Each one says what the reader gets and gives a reason to click.
        3. Suggest a heading outline: one H1, then H2s and H3s, for this page.
        4. Pick your top title and top description, and explain why in one line each.

        Rules: no claims like "best", "No. 1" or "cheapest". Do not invent facts. Output as numbered lists.</pre>
            <ul class="ai-try-checks">
              <li>Count title and description lengths yourself, for example with =LEN() in a spreadsheet.</li>
              <li>Every promise uses only the facts you gave.</li>
              <li>The outline has one H1 and clear H2 sections that match the intent.</li>
              <li>The top title is different from your other pages' titles.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Let AI write many options, because the first idea is rarely the best. You pick the one that is true, matches the intent and stands out. Then let real click data from Search Console guide your next change.
        </div>
      HTML
      starter_code: nil
    },
    11 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mkt">Digital Marketing</div>
          <h1 class="lc-title">On-Page SEO Checks</h1>
        </div>
        <p class="lc-lead"><strong>On-page SEO</strong> means the things you control on the page itself: the words, headings, images and links. Small fixes here help search engines understand your page. They also help visitors find what they need fast. In this lesson, you will build a simple checklist. You will ask AI to apply it to a page and list what to fix. Then you will check its advice before you change anything.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="A web page mock-up with a title tag, H1, paragraphs, a photo, an H2 and an internal link. Arrows point from each part to a check: keyword in title, one clear H1, short paragraphs, alt text, headings that match questions, and clear link words.">
            <defs><marker id="seo11a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="20" y="15" width="320" height="272" rx="12" fill="#1f1f44" stroke="#4b4a78"/>
              <text x="180" y="38" font-weight="700" fill="#c4b5fd">Your page</text>
              <rect x="40" y="50" width="280" height="28" rx="6" fill="#27274e" stroke="#3b82f6"/><text x="180" y="69">Title: Eggless Cakes in London</text>
              <rect x="40" y="86" width="280" height="28" rx="6" fill="#27274e" stroke="#8b5cf6"/><text x="180" y="105">H1: Eggless Birthday Cakes</text>
              <rect x="40" y="124" width="280" height="8" rx="3" fill="#3a3a66"/>
              <rect x="40" y="138" width="250" height="8" rx="3" fill="#3a3a66"/>
              <rect x="40" y="152" width="265" height="8" rx="3" fill="#3a3a66"/>
              <rect x="40" y="168" width="120" height="50" rx="6" fill="#27274e" stroke="#10b981"/><text x="100" y="190">photo</text><text x="100" y="207" font-size="11" fill="#9b99b8">alt text?</text>
              <rect x="172" y="176" width="148" height="8" rx="3" fill="#3a3a66"/>
              <rect x="172" y="192" width="130" height="8" rx="3" fill="#3a3a66"/>
              <rect x="172" y="208" width="140" height="8" rx="3" fill="#3a3a66"/>
              <rect x="40" y="228" width="280" height="24" rx="6" fill="#27274e" stroke="#f59e0b"/><text x="180" y="245">H2: Prices and Delivery</text>
              <text x="40" y="273" text-anchor="start" fill="#22d3ee" text-decoration="underline">see our cupcakes</text>
              <text x="590" y="38" font-weight="700" fill="#fcd34d">What to check</text>
              <g stroke="#9b99b8" stroke-width="1.4" marker-end="url(#seo11a)">
                <line x1="324" y1="64" x2="436" y2="64"/><line x1="324" y1="100" x2="436" y2="100"/><line x1="324" y1="138" x2="436" y2="138"/>
                <line x1="324" y1="193" x2="436" y2="193"/><line x1="324" y1="240" x2="436" y2="240"/><line x1="170" y1="268" x2="436" y2="268"/>
              </g>
              <rect x="440" y="51" width="300" height="26" rx="6" fill="#27274e" stroke="#3b82f6"/><text x="590" y="69">Keyword in title, used naturally</text>
              <rect x="440" y="87" width="300" height="26" rx="6" fill="#27274e" stroke="#8b5cf6"/><text x="590" y="105">One clear H1 about the topic</text>
              <rect x="440" y="125" width="300" height="26" rx="6" fill="#27274e" stroke="#9b99b8"/><text x="590" y="143">Short, easy paragraphs</text>
              <rect x="440" y="180" width="300" height="26" rx="6" fill="#27274e" stroke="#10b981"/><text x="590" y="198">Alt text describes the image</text>
              <rect x="440" y="227" width="300" height="26" rx="6" fill="#27274e" stroke="#f59e0b"/><text x="590" y="245">Headings match real questions</text>
              <rect x="440" y="255" width="300" height="26" rx="6" fill="#27274e" stroke="#22d3ee"/><text x="590" y="273">Links use clear words</text>
            </g>
          </svg>
          <figcaption>Each part of a page has one simple check. AI can run the checklist. You decide what to change.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>What an on-page check looks at</h3>
          <p>A good check covers a few basic items. You do not need to be a developer for any of them.</p>
          <table class="lc-table">
            <thead><tr><th>Item</th><th>What good looks like</th><th>What you must still check</th></tr></thead>
            <tbody>
              <tr><td><strong>Title tag</strong> (often shown as the blue link in search results)</td><td>Says what the page is about. Uses the main keyword once, near the start.</td><td>It is true and not stuffed with keywords.</td></tr>
              <tr><td><strong>H1 and H2 headings</strong></td><td>One H1 for the topic. H2s follow the questions buyers ask.</td><td>The headings match what the page really offers.</td></tr>
              <tr><td><strong>Keyword use</strong></td><td>The main keyword and close versions appear in natural sentences.</td><td>It reads well aloud. No repeated phrases.</td></tr>
              <tr><td><strong>Internal links</strong> (links to other pages on your own site)</td><td>2 to 4 links with clear link text, such as "eggless cupcakes".</td><td>Each link opens the right, live page.</td></tr>
              <tr><td><strong>Images and alt text</strong> (a short text that describes an image)</td><td>Every useful image has alt text that says what is in it.</td><td>The alt text matches the real photo.</td></tr>
              <tr><td><strong>Readability</strong> (how easy the text is to read)</td><td>Short paragraphs, simple words, clear next step.</td><td>Prices, timings and claims are correct.</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>A weak prompt and a better prompt</h3>
          <p>A weak prompt gives the AI nothing to check against. It will give general tips.</p>
          <pre><code>Check my page for SEO.</code></pre>
          <p>A better prompt gives the keyword, the intent, the checklist and the output format.</p>
          <pre><code>You are an on-page SEO editor.
        Keyword: eggless birthday cake London. Intent: people want to order.
        Check the page text below against my 6-point checklist.
        Give a table: Check | Pass or Fix | What to change | Suggested text.
        Do not invent prices or facts. List what you could not check.
        [page text]</code></pre>
          <p>Paste only the public page text. Do not paste customer names, orders or private notes.</p>
        </div>
        <div class="lc-card">
          <h3>Worked example: a London bakery page</h3>
          <p>Sweet Crumbs (a made-up home bakery in London) ran the better prompt on its "Eggless cakes" page. Here is part of the AI's answer, with the owner's notes.</p>
          <table class="lc-table">
            <thead><tr><th>Check</th><th>AI said</th><th>Owner's decision</th></tr></thead>
            <tbody>
              <tr><td>Title tag</td><td>Fix: "Home" is the title. Suggest "Eggless Birthday Cakes in London | Sweet Crumbs".</td><td>Accept.</td></tr>
              <tr><td>Alt text</td><td>Fix: image "IMG_2041.jpg" has no alt text. Suggest "Two-tier eggless chocolate birthday cake".</td><td>Change. The photo shows a one-tier cake.</td></tr>
              <tr><td>Internal links</td><td>Fix: no links. Link to the cupcakes and delivery pages.</td><td>Accept. The delivery page exists. Check the link after publishing.</td></tr>
              <tr><td>Readability</td><td>Fix: first paragraph has 70 words. Split it into three short ones.</td><td>Accept.</td></tr>
              <tr><td>Next step</td><td>Suggest "Free delivery across London".</td><td>Reject. The bakery delivers only in Islington, Camden and Hackney, and delivery is not free.</td></tr>
            </tbody>
          </table>
          <p>The AI found real problems fast. But it also guessed about the photo and the delivery offer. You are the one who knows the facts.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: Who checks what?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each on-page check. Can AI do it well from the page text, or must a person check it?</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="ai" data-label="AI can check well"></div>
              <div data-sorter-target="bucket" data-bucket="person" data-label="A person must check"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="ai" data-why="This is a text match. AI does it well when you paste the title and H1.">Is the keyword in the title tag and H1?</li>
              <li data-bucket="ai" data-why="AI can count words and spot long sentences and paragraphs quickly.">Are some paragraphs too long to read on a phone?</li>
              <li data-bucket="ai" data-why="If you paste the image list, AI can see which images have no alt text.">Which images are missing alt text?</li>
              <li data-bucket="person" data-why="AI cannot know your current prices. Only you can confirm them.">Are the prices on the page still correct?</li>
              <li data-bucket="person" data-why="AI usually cannot open and test your links. Click them yourself.">Does each internal link open the right, live page?</li>
              <li data-bucket="person" data-why="AI cannot see the photo from its file name. It may guess wrong.">Does the alt text match what the photo really shows?</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Paste the text of one of your pages, or leave the brackets as they are. The AI will apply a 6-point on-page checklist and suggest fixes.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an on-page SEO editor for a small business website.
        Business: [Sweet Crumbs, a home bakery in London]
        Target keyword: [eggless birthday cake London]
        Search intent: [transactional: people want to order a cake]

        Check the page below against this checklist:
        1. The keyword or a close version is in the title tag, the H1 and the first 100 words, used naturally.
        2. There is one H1. The H2s follow the questions a buyer asks.
        3. Paragraphs are 2 to 4 short sentences.
        4. Every image has alt text that describes the image.
        5. There are at least 2 internal links with clear link text (not "click here").
        6. There is a clear next step (order, call or WhatsApp).

        Page:
        [Paste your title tag, headings, page text and image file names here. If this is empty, invent a short sample page and say it is a sample.]

        Output: a table with the columns Check, Pass or Fix, What to change, Suggested text. Then list anything you could not check from the text alone. Do not invent prices, awards or facts. Use simple English.</pre>
            <ul class="ai-try-checks">
              <li>Suggested titles and headings use the keyword once, not again and again.</li>
              <li>Suggested alt text matches what your real photo shows.</li>
              <li>Internal links point to pages that really exist on your site.</li>
              <li>No new prices, delivery promises or awards were added.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A short, fixed checklist makes AI useful for on-page SEO. The AI finds the gaps quickly. You check every suggestion against the real facts, photos and links before you publish.
        </div>
      HTML
      starter_code: nil
    },
    12 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mkt">Digital Marketing</div>
          <h1 class="lc-title">Technical SEO Basics with AI</h1>
        </div>
        <p class="lc-lead"><strong>Technical SEO</strong> is about making sure search engines can find, read and store your pages. It covers page speed, mobile use, indexing, broken links, sitemaps and robots.txt. The reports can look scary. AI is very good at explaining them in plain words. In this lesson, you will learn the basic terms. You will also learn how to use AI to read an audit report and decide what to fix first.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 290" role="img" aria-label="Three stages: crawl, index, rank and show. Under each stage are common problems. Crawl: robots.txt block, broken links, server errors, no links to the page. Index: noindex tag, duplicate pages, low-value page, soft 404. Rank: slow page, hard to use on mobile, wrong intent, not helpful enough.">
            <defs><marker id="seo12a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="20" y="20" width="220" height="48" rx="10" fill="#27274e" stroke="#3b82f6"/><text x="130" y="41" font-weight="700">1. Crawl</text><text x="130" y="58" font-size="11" fill="#9b99b8">Google finds and reads it</text>
              <rect x="270" y="20" width="220" height="48" rx="10" fill="#27274e" stroke="#8b5cf6"/><text x="380" y="41" font-weight="700">2. Index</text><text x="380" y="58" font-size="11" fill="#9b99b8">Google stores it</text>
              <rect x="520" y="20" width="220" height="48" rx="10" fill="#27274e" stroke="#10b981"/><text x="630" y="41" font-weight="700">3. Rank and show</text><text x="630" y="58" font-size="11" fill="#9b99b8">it appears in results</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#seo12a)"><line x1="242" y1="44" x2="266" y2="44"/><line x1="492" y1="44" x2="516" y2="44"/></g>
              <g font-size="12">
                <rect x="20" y="86" width="220" height="150" rx="10" fill="#1f1f44" stroke="#4b4a78"/>
                <text x="130" y="108" fill="#fca5a5" font-weight="700">What can block it</text>
                <text x="130" y="136">robots.txt blocks it</text><text x="130" y="160">broken links (404)</text><text x="130" y="184">server errors (5xx)</text><text x="130" y="208">no links to the page</text>
                <rect x="270" y="86" width="220" height="150" rx="10" fill="#1f1f44" stroke="#4b4a78"/>
                <text x="380" y="108" fill="#fca5a5" font-weight="700">What can block it</text>
                <text x="380" y="136">noindex tag</text><text x="380" y="160">duplicate pages</text><text x="380" y="184">thin, low-value page</text><text x="380" y="208">soft 404</text>
                <rect x="520" y="86" width="220" height="150" rx="10" fill="#1f1f44" stroke="#4b4a78"/>
                <text x="630" y="108" fill="#fca5a5" font-weight="700">What can hold it back</text>
                <text x="630" y="136">slow page (Core Web Vitals)</text><text x="630" y="160">hard to use on mobile</text><text x="630" y="184">does not match intent</text><text x="630" y="208">not helpful enough</text>
              </g>
              <text x="380" y="268" font-size="12" fill="#9b99b8">Where to look: Search Console (Page indexing, Core Web Vitals, URL Inspection) and site audit tools</text>
            </g>
          </svg>
          <figcaption>A page must be crawled and indexed before it can rank. Each stage has its own common problems.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The basic terms in plain words</h3>
          <table class="lc-table">
            <thead><tr><th>Term</th><th>What it means</th><th>Good to know</th></tr></thead>
            <tbody>
              <tr><td><strong>Indexing</strong></td><td>Google stores a page so it can show it in results.</td><td>Not every page gets indexed. That can be normal.</td></tr>
              <tr><td><strong>Sitemap</strong></td><td>A file that lists the pages you want search engines to find.</td><td>It helps discovery. It does not promise that every page gets indexed.</td></tr>
              <tr><td><strong>robots.txt</strong></td><td>A file that tells crawlers which URLs they may visit.</td><td>It controls crawling, not indexing. To keep a page out of Google, use a <code>noindex</code> tag or a password.</td></tr>
              <tr><td><strong>noindex</strong></td><td>A tag that asks search engines not to show a page.</td><td>Check that important pages do not have it by mistake.</td></tr>
              <tr><td><strong>Broken link (404)</strong></td><td>A link to a page that does not exist.</td><td>Fix the link, or redirect the old URL to the best new page.</td></tr>
              <tr><td><strong>Canonical</strong></td><td>A tag that says which version of a similar page is the main one.</td><td>Useful when the same content has several URLs.</td></tr>
              <tr><td><strong>Core Web Vitals</strong></td><td>Google's measures of real user experience: loading (LCP), response to taps (INP) and layout jumps (CLS).</td><td>Google's help pages give the "good" targets. Check them there.</td></tr>
              <tr><td><strong>Mobile-friendly</strong></td><td>The page is easy to read and use on a phone.</td><td>Google mainly uses the mobile version of your site for indexing.</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Using AI to explain an audit report</h3>
          <p>An <strong>audit report</strong> is a list of issues from a tool. Google Search Console is free. Its Page indexing report shows why some pages are not indexed. Site audit tools crawl your site and list broken links, slow pages and more.</p>
          <p>These reports use short technical labels. Copy the labels and counts into an AI assistant. Ask it to explain each one, say if it is a real problem, and suggest a fix order.</p>
          <pre><code>Weak:   What does this report mean? [paste]

        Better: Explain each line of this Search Console Page indexing
                summary in 2 plain sentences. Say if it is usually a real
                problem or often normal. Give the first thing to check and a
                priority (High, Medium, Low). Mark fixes that need a developer.
                [paste the labels and counts]</code></pre>
          <p>AI explains well, but it cannot see your site. It may also mix up facts. For example, some AI answers wrongly say robots.txt removes a page from Google. Always confirm with the <strong>URL Inspection</strong> tool in Search Console before you change anything.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: Walk through an audit with AI</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="tool" data-label="Open Search Console">Meera runs Backwater Trails, a made-up travel agency in Kerala. She opens the Page indexing report in Google Search Console.</li>
              <li data-kind="result" data-label="Report">Not found (404): 14 pages. Crawled - currently not indexed: 22 pages. URL blocked by robots.txt: 1 page (/tours/). Duplicate without user-selected canonical: 6 pages.</li>
              <li data-kind="user" data-label="Prompt">"Explain each line in plain English. Say if it is a real problem, what to check first, and the priority. Mark developer tasks."</li>
              <li data-kind="answer" data-label="AI reply">The AI says the /tours/ block is High priority, because it is her main sales section. The 404s are Medium: fix links or redirect old URLs. Some "not indexed" pages can be normal, such as tag pages.</li>
              <li data-kind="warn" data-label="Catch the mistake">The AI also says "robots.txt will remove the old pages from Google". That is wrong. robots.txt only controls crawling. Meera ignores this advice.</li>
              <li data-kind="check" data-label="Confirm">Meera uses URL Inspection on /tours/. It confirms the page is blocked by robots.txt. She asks her web developer to remove that line.</li>
              <li data-kind="check" data-label="Follow up">After the fix, she clicks "Validate fix" in the report. She checks again in a few weeks, because re-crawling takes time.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Paste a summary from your own Search Console or audit tool, or use the sample. The AI will explain each issue and suggest a fix order.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a technical SEO helper. You explain things in simple English to a small business owner who does not code.
        Website: [a travel agency website in Kerala]

        Below is a summary from my Google Search Console Page indexing report and a site audit tool. Do not guess about anything that is not shown.
        [Not found (404): 14 pages
        Crawled - currently not indexed: 22 pages
        URL blocked by robots.txt: 1 page (/tours/)
        Duplicate without user-selected canonical: 6 pages
        Core Web Vitals (mobile): 9 URLs poor, issue: LCP too slow]

        For each line:
        1. Explain what it means in 2 plain sentences.
        2. Say if it is usually a real problem or often normal.
        3. Give the first thing to check, and where to check it.
        4. Give a priority: High, Medium or Low.

        Output a table with the columns Issue, Meaning, Problem or normal?, First check, Priority. Then give a 5-step fix order. Mark which fixes need a web developer.</pre>
            <ul class="ai-try-checks">
              <li>It does not say robots.txt removes pages from Google.</li>
              <li>It says some "not indexed" pages can be normal.</li>
              <li>It tells you to confirm issues with URL Inspection before changing things.</li>
              <li>The priorities make sense for your business (sales pages first).</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> You do not need to code to understand technical SEO. Let AI translate the report into plain words. Then confirm each issue in Search Console, and hand code changes to a developer.
        </div>
      HTML
      starter_code: nil
    },
    13 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mkt">Digital Marketing</div>
          <h1 class="lc-title">Local SEO</h1>
        </div>
        <p class="lc-lead"><strong>Local SEO</strong> helps nearby people find your business when they search "near me" or add a city name. For shops, clinics, cafés and service businesses, it is often the fastest way to get calls and visits. In this lesson, you will learn the main parts: your Google Business Profile, reviews and replies, local pages and NAP consistency. You will also use AI to write review replies and local content, while you follow Google's rules.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 280" role="img" aria-label="In the centre is the business with its name, address and phone. Arrows go to four places: Google Business Profile, website footer and directory listing show the same phone. The social page shows an old phone number, marked as a mismatch to fix.">
            <defs><marker id="seo13a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="280" y="105" width="200" height="70" rx="12" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="380" y="133" font-weight="700" fill="#fcd34d">Your business</text>
              <text x="380" y="155" font-size="12">Same name, address, phone</text>
              <rect x="20" y="20" width="210" height="56" rx="10" fill="#27274e" stroke="#10b981"/><text x="125" y="43">Google Business Profile</text><text x="125" y="63" font-size="11" fill="#6ee7b7">Ph: 0141-555-0101</text>
              <rect x="530" y="20" width="210" height="56" rx="10" fill="#27274e" stroke="#10b981"/><text x="635" y="43">Website footer</text><text x="635" y="63" font-size="11" fill="#6ee7b7">Ph: 0141-555-0101</text>
              <rect x="20" y="200" width="210" height="56" rx="10" fill="#27274e" stroke="#10b981"/><text x="125" y="223">Directory listing</text><text x="125" y="243" font-size="11" fill="#6ee7b7">Ph: 0141-555-0101</text>
              <rect x="530" y="200" width="210" height="56" rx="10" fill="#27274e" stroke="#ec4899"/><text x="635" y="223">Social media page</text><text x="635" y="243" font-size="11" fill="#fca5a5">Ph: 0141-555-0199 (old)</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#seo13a)">
                <line x1="280" y1="115" x2="234" y2="80"/><line x1="480" y1="115" x2="526" y2="80"/>
                <line x1="280" y1="165" x2="234" y2="197"/><line x1="480" y1="165" x2="526" y2="197"/>
              </g>
              <text x="380" y="222" font-size="12" fill="#fca5a5">Old number on social page: fix it</text>
            </g>
          </svg>
          <figcaption>NAP consistency: your name, address and phone should be the same everywhere. One old number can send customers to the wrong place.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>How local results are chosen</h3>
          <p>Google's help pages say local results depend mainly on three things:</p>
          <ul class="lc-list">
            <li><strong>Relevance:</strong> how well your profile matches what the person searched.</li>
            <li><strong>Distance:</strong> how far your business is from the searcher.</li>
            <li><strong>Prominence:</strong> how well known your business is, for example from reviews and links.</li>
          </ul>
          <p>You cannot pay Google for a better local ranking. You can make your profile complete, correct and active.</p>
          <table class="lc-table">
            <thead><tr><th>Part</th><th>What to do</th><th>How AI helps</th></tr></thead>
            <tbody>
              <tr><td><strong>Google Business Profile</strong> (your free listing on Google Search and Maps)</td><td>Verify it. Choose the right category. Add hours, photos, services and products.</td><td>Drafts the business description and service lists.</td></tr>
              <tr><td><strong>Business name</strong></td><td>Use your real-world name, as on your shop sign. Do not add extra keywords.</td><td>Nothing. Do not let AI "optimise" your name.</td></tr>
              <tr><td><strong>Reviews</strong></td><td>Ask all customers. Reply to good and bad reviews politely.</td><td>Drafts replies that you edit and post.</td></tr>
              <tr><td><strong>Local pages</strong></td><td>One useful page per real location or service area, with real details.</td><td>Drafts outlines. You add local facts and photos.</td></tr>
              <tr><td><strong>NAP consistency</strong> (name, address, phone)</td><td>Use the same details on your site, profile, directories and social pages.</td><td>Compares a list of your listings and flags mismatches.</td></tr>
            </tbody>
          </table>
          <p>Rules change. Check the current Google Business Profile help pages for the full guidelines.</p>
        </div>
        <div class="lc-card">
          <h3>Reviews and replies: the rules</h3>
          <p>Reviews help new customers decide. Google's policies ban fake reviews. They also ban offering discounts, gifts or payment in return for a review. Breaking these rules can lead to removed reviews or limits on your profile.</p>
          <p>AI can help you reply faster. Give it clear rules:</p>
          <pre><code>Weak:   Reply to this review.

        Better: Reply to this 2-star review in 60 words, warm and polite.
                Say sorry, mention the delay they described, do not argue.
                Give our contact: [phone]. Do not share any order details
                or offer a discount for changing the review.</code></pre>
          <p>Read each reply before you post it. Do not let the AI promise a fix you have not made. Never paste customers' phone numbers or addresses into a public AI tool.</p>
        </div>
        <div class="lc-card">
          <h3>Worked example: local pages for a Rajasthan shop</h3>
          <p>Rangrez Crafts (a made-up store in Rajasthan) wanted pages for 20 cities. The AI suggested one template with only the city name changed. That makes near-copy pages with no real value. Google's spam policies warn against this kind of "doorway" page.</p>
          <p>The owner chose a better plan instead:</p>
          <ul class="lc-list">
            <li>One strong page for the shop itself: address, map, hours, parking, photos of the real store.</li>
            <li>One "Delivery across India" page with real delivery times by region, checked with the courier.</li>
            <li>AI drafted FAQs from real customer questions. The owner checked every answer.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Activity: Good practice or against the rules?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each local SEO action.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="good" data-label="Good practice"></div>
              <div data-sorter-target="bucket" data-bucket="bad" data-label="Against the rules or risky"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="good" data-why="Asking all customers, with an easy link or QR code, is allowed. Do not pressure anyone or offer a reward.">Show a QR code at the counter that links to your review page</li>
              <li data-bucket="bad" data-why="Offering a discount or gift in return for a review is against Google's policies.">Give 10% off to anyone who leaves a 5-star review</li>
              <li data-bucket="good" data-why="A calm, helpful reply shows new customers that you care.">Reply politely to a 1-star review and offer a way to contact you</li>
              <li data-bucket="bad" data-why="Your profile name must be your real-world business name, without extra keywords.">Change the profile name to "Rangrez Crafts Best Cheap Handicrafts Rajasthan"</li>
              <li data-bucket="bad" data-why="Near-copy pages with only the city changed give no real value and can count as spam.">Publish 20 city pages where only the city name changes</li>
              <li data-bucket="good" data-why="The same name, address and phone everywhere avoids confusion.">Update the old phone number on your social media page</li>
              <li data-bucket="bad" data-why="Fake reviews break Google's rules, even if AI writes them and friends post them.">Ask AI to write reviews for friends to post</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Use AI to draft replies to three reviews. Change the business and reviews to your own, or keep the sample.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a friendly customer care writer for a local shop.
        Business: [Rangrez Crafts, a block-print and handicrafts store in Rajasthan]
        Tone: [warm, polite, simple English]
        Contact for problems: [our phone or email]

        Write a reply to each review below. Rules:
        - 40 to 80 words each.
        - Thank the person and mention one detail from their review.
        - For a bad review: say sorry, do not argue, and give our contact.
        - Do not share order numbers, staff names or any private customer details.
        - Do not offer discounts or gifts in return for changing a review.
        - Do not promise fixes. Write [CHECK] where I must confirm a fact.
        - Do not stuff keywords like "best handicrafts Rajasthan".

        Reviews:
        1. 5 stars: "Lovely cotton quilts. The staff explained the block printing process to us."
        2. 2 stars: "Nice products but delivery to Karnataka took 12 days and nobody answered calls."
        3. 4 stars: "Good range of bedsheets. Parking is difficult."

        Then suggest 3 honest ways to ask happy customers for reviews, with no rewards.</pre>
            <ul class="ai-try-checks">
              <li>No reply offers a discount or gift linked to a review.</li>
              <li>No reply promises a change you have not really made.</li>
              <li>No private customer details appear in the replies.</li>
              <li>The replies sound human, not full of keywords.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Local SEO rewards real, correct and active businesses. Keep your name, address and phone the same everywhere. Use AI to write faster, but never to fake reviews, stuff keywords or copy city pages.
        </div>
      HTML
      starter_code: nil
    },
    14 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mkt">Digital Marketing</div>
          <h1 class="lc-title">SEO for AI Search Answers</h1>
        </div>
        <p class="lc-lead">Many searches now show an AI-written answer, such as Google's AI Overviews or AI Mode. People also ask AI assistants like ChatGPT or Claude, which can search the web and link to sources. In this lesson, you will learn how these tools pick sources in general. You will learn how to write clear, well-structured pages that are easy to quote. You will also learn how to measure the results.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="A person asks a question, the AI searches the web index, picks sources, and writes an answer with source links. Below: what helps a page get picked: a clear answer, an easy structure and trust signals. Measure with Search Console and GA4.">
            <defs><marker id="seo14a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="20" y="20" width="160" height="54" rx="10" fill="#27274e" stroke="#3b82f6"/><text x="100" y="43" font-weight="700">Person asks</text><text x="100" y="62" font-size="11" fill="#9b99b8">a question</text>
              <rect x="210" y="20" width="160" height="54" rx="10" fill="#27274e" stroke="#8b5cf6"/><text x="290" y="43" font-weight="700">AI searches</text><text x="290" y="62" font-size="11" fill="#9b99b8">the web index</text>
              <rect x="400" y="20" width="160" height="54" rx="10" fill="#27274e" stroke="#10b981"/><text x="480" y="43" font-weight="700">Picks sources</text><text x="480" y="62" font-size="11" fill="#9b99b8">helpful, indexed pages</text>
              <rect x="590" y="20" width="150" height="54" rx="10" fill="#27274e" stroke="#f59e0b"/><text x="665" y="43" font-weight="700">Writes answer</text><text x="665" y="62" font-size="11" fill="#9b99b8">with source links</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#seo14a)"><line x1="182" y1="47" x2="206" y2="47"/><line x1="372" y1="47" x2="396" y2="47"/><line x1="562" y1="47" x2="586" y2="47"/></g>
              <rect x="20" y="96" width="720" height="146" rx="12" fill="#1f1f44" stroke="#4b4a78"/>
              <text x="380" y="120" font-weight="700" fill="#fcd34d">What helps your page get picked (no guarantee)</text>
              <g font-size="12">
                <rect x="35" y="136" width="220" height="92" rx="8" fill="#27274e" stroke="#22d3ee"/>
                <text x="145" y="158" font-size="13" font-weight="700">Clear answer</text><text x="145" y="182">Answer first, in 1 or 2</text><text x="145" y="200">sentences, under a</text><text x="145" y="218">question heading</text>
                <rect x="270" y="136" width="220" height="92" rx="8" fill="#27274e" stroke="#8b5cf6"/>
                <text x="380" y="158" font-size="13" font-weight="700">Easy structure</text><text x="380" y="182">Short sections, lists,</text><text x="380" y="200">tables and steps</text>
                <rect x="505" y="136" width="220" height="92" rx="8" fill="#27274e" stroke="#10b981"/>
                <text x="615" y="158" font-size="13" font-weight="700">Trust signals</text><text x="615" y="182">Real experience, checked</text><text x="615" y="200">facts, author, reviews,</text><text x="615" y="218">mentions on other sites</text>
              </g>
              <text x="380" y="272" font-size="12" fill="#9b99b8">Measure: Search Console Performance report (Web search type), GA4 referrals, customer answers</text>
            </g>
          </svg>
          <figcaption>AI answers are built from web pages. Clear, trusted, indexed pages are easier for them to use and link to.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>How AI answers pick sources</h3>
          <p>Each AI tool works in its own way, and they change often. But the general pattern is similar. The tool reads the question, searches an index of web pages, picks some helpful pages, and writes an answer. Many answers show links to the sources.</p>
          <p>Google's own guidance for AI Overviews and AI Mode says:</p>
          <ul class="lc-list">
            <li>There are no extra requirements or special tricks to appear.</li>
            <li>The page must be indexed and allowed to show a snippet (the short text under a result).</li>
            <li>You do not need special "AI files" or special structured data for these features.</li>
            <li>Normal SEO basics still apply: crawl access, internal links, a good page experience and helpful text.</li>
          </ul>
          <p>Be careful with people who sell "secret AI ranking" services. No one can promise that an AI tool will quote your page. Check Google Search Central for the current guidance.</p>
        </div>
        <div class="lc-card">
          <h3>Write pages that are easy to quote</h3>
          <p>Write for people first. The same habits make a page easy for AI tools to understand.</p>
          <table class="lc-table">
            <thead><tr><th>Habit</th><th>Before</th><th>After</th></tr></thead>
            <tbody>
              <tr><td><strong>Answer first</strong></td><td>A long story about Kerala, with the answer in paragraph five.</td><td>"How long is a houseboat trip? A day cruise takes about 8 hours. An overnight trip is 1 night."</td></tr>
              <tr><td><strong>Question headings</strong></td><td>"Our Offerings"</td><td>"Day cruise or overnight: which is better for families?"</td></tr>
              <tr><td><strong>Structure</strong></td><td>One big block of text.</td><td>A small table comparing trip types, then short steps to book.</td></tr>
              <tr><td><strong>Trust</strong></td><td>No author, no date, no details.</td><td>Author name, last-updated date, real photos, your own experience.</td></tr>
            </tbody>
          </table>
          <p>The examples come from Backwater Trails, a made-up travel agency in Kerala. The trip times are sample data. Use your own checked facts.</p>
          <p><strong>Brand mentions</strong> also help people and AI tools trust you. A brand mention is when other sites, news pages or reviews name your business. Earn them honestly: good service, useful guides, local news, partner pages. Do not buy fake mentions or reviews.</p>
        </div>
        <div class="lc-card">
          <h3>How to measure results</h3>
          <ul class="lc-list">
            <li><strong>Google Search Console:</strong> Google says clicks from AI features are counted in the Performance report, under the "Web" search type. They are not shown as a separate line. Watch clicks and impressions for your question-style queries.</li>
            <li><strong>Google Analytics 4:</strong> visits from some AI assistants can appear as referral traffic (a visit from a link on another site). Check the traffic acquisition report for their names.</li>
            <li><strong>Spot checks:</strong> ask a few AI tools your main customer questions each month. Note if your site is linked. Answers change often, so treat this as a rough sign only.</li>
            <li><strong>Ask customers:</strong> add "AI assistant" as an option in "How did you hear about us?"</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Activity: Make a page ready for AI answers</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put these steps in a sensible order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">List the real questions customers ask you</li>
              <li data-order="2">Check the page is indexed with URL Inspection in Search Console</li>
              <li data-order="3">Add a question heading with a short, direct answer under it</li>
              <li data-order="4">Add details, a table and your own experience below each answer</li>
              <li data-order="5">Check every fact and add the author and last-updated date</li>
              <li data-order="6">Track clicks and impressions for those questions for a few months</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to rewrite a page section in an answer-first format. Use your own questions and facts, or keep the sample.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an SEO editor. You make web pages easy for people and AI search tools to understand and quote.
        Business: [Backwater Trails, a travel agency in Kerala]
        Page topic: [Kerala houseboat trips]
        Real customer questions: [How long is a houseboat trip? Day cruise or overnight? What is included? When is the best time to go?]
        My facts (use only these for facts): [Day cruise about 8 hours. Overnight trip is 1 night. Meals are included on overnight trips. We have run trips since 2015.]

        Tasks:
        1. For each question, write an H2 that is the question. Under it, give a direct answer in 1 or 2 sentences, then 2 to 4 sentences of detail.
        2. Add one small comparison table where it helps.
        3. Mark any fact that is not in my facts with [CHECK].
        4. Suggest a page title and a one-line summary for the top of the page.

        Do not invent prices, rules, awards or statistics. Write in simple English.</pre>
            <ul class="ai-try-checks">
              <li>Each section starts with a short, direct answer.</li>
              <li>Every fact comes from your list or is marked [CHECK].</li>
              <li>No prices, awards or statistics were invented.</li>
              <li>You can add your own experience and photos before publishing.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> There is no secret trick for AI search. Get indexed, answer real questions clearly, show real experience and earn trust. Then measure in Search Console and GA4, and never promise anyone a place in AI answers.
        </div>
      HTML
      starter_code: nil
    },
    15 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mkt">Digital Marketing</div>
          <h1 class="lc-title">Capstone: An SEO Plan for a Small Business</h1>
        </div>
        <p class="lc-lead">In this capstone, you will put the whole course together. You will make a simple 3-month SEO plan for one small business. It will include keyword research, clusters, 5 content briefs, an on-page checklist, local SEO tasks and a measurement plan. AI will do much of the drafting. You will check the facts, choose the priorities and make the plan fit your real time and budget.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 280" role="img" aria-label="Six plan steps in a row: research, clusters, five briefs, on-page checks, local SEO and measure. Below, a three-month timeline: month 1 fix and set up, month 2 publish, month 3 measure and plan again.">
            <defs><marker id="seo15a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="20" y="20" width="108" height="50" rx="8" fill="#27274e" stroke="#3b82f6"/><text x="74" y="41" font-weight="700">Research</text><text x="74" y="59" font-size="10.5" fill="#9b99b8">keywords, intent</text>
              <rect x="142" y="20" width="108" height="50" rx="8" fill="#27274e" stroke="#8b5cf6"/><text x="196" y="41" font-weight="700">Clusters</text><text x="196" y="59" font-size="10.5" fill="#9b99b8">pillar + cluster</text>
              <rect x="264" y="20" width="108" height="50" rx="8" fill="#27274e" stroke="#ec4899"/><text x="318" y="41" font-weight="700">5 briefs</text><text x="318" y="59" font-size="10.5" fill="#9b99b8">then write</text>
              <rect x="386" y="20" width="108" height="50" rx="8" fill="#27274e" stroke="#22d3ee"/><text x="440" y="41" font-weight="700">On-page</text><text x="440" y="59" font-size="10.5" fill="#9b99b8">checklist</text>
              <rect x="508" y="20" width="108" height="50" rx="8" fill="#27274e" stroke="#10b981"/><text x="562" y="41" font-weight="700">Local SEO</text><text x="562" y="59" font-size="10.5" fill="#9b99b8">profile, reviews</text>
              <rect x="630" y="20" width="108" height="50" rx="8" fill="#27274e" stroke="#f59e0b"/><text x="684" y="41" font-weight="700">Measure</text><text x="684" y="59" font-size="10.5" fill="#9b99b8">3-month plan</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#seo15a)"><line x1="129" y1="45" x2="140" y2="45"/><line x1="251" y1="45" x2="262" y2="45"/><line x1="373" y1="45" x2="384" y2="45"/><line x1="495" y1="45" x2="506" y2="45"/><line x1="617" y1="45" x2="628" y2="45"/></g>
              <line x1="20" y1="100" x2="740" y2="100" stroke="#4b4a78" stroke-dasharray="4 4"/>
              <g font-size="12">
                <rect x="20" y="118" width="230" height="118" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
                <text x="135" y="142" font-size="13" font-weight="700" fill="#93c5fd">Month 1: Fix and set up</text>
                <text x="135" y="168">Search Console and GA4 ready</text><text x="135" y="190">Fix top technical issues</text><text x="135" y="212">Update Business Profile</text>
                <rect x="265" y="118" width="230" height="118" rx="10" fill="#1f1f44" stroke="#ec4899"/>
                <text x="380" y="142" font-size="13" font-weight="700" fill="#f9a8d4">Month 2: Publish</text>
                <text x="380" y="168">Publish 2 or 3 briefed pages</text><text x="380" y="190">Run on-page checks</text><text x="380" y="212">Ask customers for reviews</text>
                <rect x="510" y="118" width="230" height="118" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
                <text x="625" y="142" font-size="13" font-weight="700" fill="#fcd34d">Month 3: Measure</text>
                <text x="625" y="168">Compare clicks, impressions</text><text x="625" y="190">Improve pages that slip</text><text x="625" y="212">Plan the next 3 months</text>
              </g>
              <text x="380" y="264" font-size="12" fill="#9b99b8">SEO takes time: judge results over months, not days</text>
            </g>
          </svg>
          <figcaption>The plan follows the course: research, clusters, briefs, on-page, local and measurement, spread over three months.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Your plan template</h3>
          <p>Pick one real or made-up business. Fill in each part. Use AI for the first draft of every part, then check it.</p>
          <table class="lc-table">
            <thead><tr><th>Part</th><th>What to include</th><th>What you must check</th></tr></thead>
            <tbody>
              <tr><td><strong>1. Research</strong></td><td>15 to 30 keyword ideas and the search intent of each.</td><td>Real demand in Search Console or a keyword planner. AI guesses at volumes.</td></tr>
              <tr><td><strong>2. Clusters</strong></td><td>3 to 4 topic groups, each with a pillar page and cluster pages.</td><td>No two pages target the same search.</td></tr>
              <tr><td><strong>3. Five briefs</strong></td><td>Title, intent, H2 outline, questions to answer, sources, internal links.</td><td>Each brief matches what the top results show.</td></tr>
              <tr><td><strong>4. On-page checklist</strong></td><td>6 to 8 checks for every new or updated page.</td><td>Facts, photos and links are real.</td></tr>
              <tr><td><strong>5. Local SEO</strong></td><td>Profile updates, review requests, reply rules, NAP list.</td><td>Google's current profile and review rules.</td></tr>
              <tr><td><strong>6. Measurement</strong></td><td>Metrics, where to find them, how often to check.</td><td>You have access to each report.</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Worked example: Sweet Crumbs, London</h3>
          <p>Sweet Crumbs is a made-up home bakery in London. The owner has 4 hours a week for SEO. The search numbers below are made up for this example.</p>
          <table class="lc-table">
            <thead><tr><th>Cluster</th><th>Pillar page</th><th>Cluster pages (briefs)</th><th>Intent</th></tr></thead>
            <tbody>
              <tr><td>Eggless cakes</td><td>Eggless Cakes in London</td><td>Eggless birthday cakes; eggless vs regular cake: taste and texture</td><td>Transactional, informational</td></tr>
              <tr><td>Custom cakes</td><td>Custom Cakes in London</td><td>How to order a custom cake; theme cake ideas for kids</td><td>Commercial, informational</td></tr>
              <tr><td>Office orders</td><td>Cakes and Cupcakes for Offices</td><td>Bulk cupcake orders for office events</td><td>Transactional</td></tr>
            </tbody>
          </table>
          <p>Her measurement plan:</p>
          <table class="lc-table">
            <thead><tr><th>Metric</th><th>Where</th><th>How often</th></tr></thead>
            <tbody>
              <tr><td>Clicks and impressions for the new pages</td><td>Search Console, Performance report</td><td>Every 2 weeks</td></tr>
              <tr><td>CTR (click-through rate: the share of people who saw the result and clicked)</td><td>Search Console</td><td>Monthly</td></tr>
              <tr><td>Calls, direction requests and website clicks</td><td>Google Business Profile performance</td><td>Monthly</td></tr>
              <tr><td>WhatsApp orders from the website</td><td>GA4 events, or her own order notes</td><td>Monthly</td></tr>
              <tr><td>New reviews and replies</td><td>Google Business Profile</td><td>Weekly</td></tr>
            </tbody>
          </table>
          <p>She wrote down the starting numbers before any changes. Without a starting point, you cannot see progress.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: Build the plan with AI</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Prompt">The owner gives the AI her business details, customers, current site and 4 hours a week. She asks for a 3-month SEO plan in tables.</li>
              <li data-kind="answer" data-label="AI draft">The AI returns keyword ideas, 3 clusters, 5 briefs, an on-page checklist, local tasks and a 12-week schedule.</li>
              <li data-kind="warn" data-label="Catch the mistake">The AI lists "eggless cake London: 5,400 searches a month". It has no way to know this. The owner deletes all AI volume numbers.</li>
              <li data-kind="tool" data-label="Check demand">She opens Search Console and a keyword planner. She checks which keyword ideas show real searches.</li>
              <li data-kind="result" data-label="Result">Two AI ideas show almost no searches. "Eggless cake delivery London" already has impressions for her home page.</li>
              <li data-kind="check" data-label="Decide">She drops the weak ideas. She moves the eggless delivery page to the top of her 5 briefs.</li>
              <li data-kind="check" data-label="Fit the time">The schedule needs 7 hours a week. She cuts it to 2 new pages a month, so it fits 4 hours.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Get a first draft of a full 3-month SEO plan. Change the details in brackets to your business, or keep the sample.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an SEO planner for small businesses. Make a 3-month SEO plan that I can follow without a developer.
        Business: [Sweet Crumbs, a home bakery in London: custom cakes, eggless cakes, cupcakes; orders on WhatsApp]
        Customers: [parents and office teams in London]
        Current state: [website with 6 pages, Google Business Profile with 18 reviews, Search Console set up]
        Time for SEO: [4 hours a week]

        Give me:
        1. 15 keyword ideas in 3 to 4 clusters, with the search intent of each. Do not give search volumes. I will check them in real tools.
        2. A pillar page and cluster pages for each cluster.
        3. 5 short content briefs: title, intent, H2 outline, questions to answer, internal links.
        4. An on-page checklist of 8 items.
        5. A local SEO to-do list that follows Google Business Profile rules.
        6. A week-by-week plan for 12 weeks that fits my time.
        7. A measurement table: metric, where to find it, how often to check.

        Use simple English and tables. Mark anything I must check myself with [CHECK]. Do not promise rankings.</pre>
            <ul class="ai-try-checks">
              <li>No search volumes or ranking promises appear.</li>
              <li>The weekly plan really fits your hours.</li>
              <li>Each brief matches the intent of its keyword.</li>
              <li>The measurement table uses reports you can open.</li>
              <li>Local tasks do not include review rewards or keyword-stuffed names.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A good SEO plan is small, real and measured. AI gives you a fast first draft. Your checks turn it into a plan you can trust: real demand, true facts, honest local work and a time budget you can keep.
        </div>
      HTML
      starter_code: nil
    }
  }.freeze
end

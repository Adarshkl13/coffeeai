module AiProductListingsContent
  # Units (sidebar dividers): 1–4 Listing Basics · 5–9 Writing Great Listings · 10–14 Marketplaces and Scale · 15 Capstone
  # Widgets: sequence, sorter, stepper. No code editor: each Try It is an ai-try prompt box.
  LESSONS = {
    1 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-ecom">E-commerce</div>
          <h1 class="lc-title">What Makes a Good Product Listing</h1>
        </div>
        <p class="lc-lead">A <strong>product listing</strong> is the page where a buyer sees your product online. It has a title, images, bullet points, a description, attributes, a price and reviews. Online buyers cannot touch or try the product. So the listing must answer their questions, the way a good shop assistant would. In this lesson, you will learn what each part of a listing does. You will also see why a better listing can bring more orders from the same visitors. Throughout this course, you will follow Neha. She runs Rangrez Crafts, a made-up handicrafts brand in Rajasthan. She is launching a new hand-block-printed cotton bedsheet on her Shopify store, Amazon and Flipkart.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 330" role="img" aria-label="A mock product page for a Rangrez Crafts bedsheet. It shows the main image, title, a "new, no ratings yet" note, price with MRP and discount, bullet points, and boxes for description, attributes, reviews and seller information. A side panel lists the job of each part.">
            <defs><marker id="pl1a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <rect x="10" y="10" width="530" height="310" rx="12" fill="#1f1f44" stroke="#4b4a78"/>
              <rect x="25" y="25" width="190" height="190" rx="8" fill="#27274e" stroke="#ec4899"/>
              <text x="120" y="112" text-anchor="middle" font-weight="700" fill="#f9a8d4">Main image</text>
              <text x="120" y="132" text-anchor="middle" font-size="11" fill="#9b99b8">the real product</text>
              <rect x="25" y="225" width="40" height="30" rx="4" fill="#27274e" stroke="#ec4899"/>
              <rect x="75" y="225" width="40" height="30" rx="4" fill="#27274e" stroke="#ec4899"/>
              <rect x="125" y="225" width="40" height="30" rx="4" fill="#27274e" stroke="#ec4899"/>
              <rect x="175" y="225" width="40" height="30" rx="4" fill="#27274e" stroke="#ec4899"/>
              <text x="235" y="42" font-size="12" font-weight="700" fill="#c4b5fd">Rangrez Crafts Hand Block Print</text>
              <text x="235" y="60" font-size="12" font-weight="700" fill="#c4b5fd">Cotton Double Bedsheet with 2</text>
              <text x="235" y="78" font-size="12" font-weight="700" fill="#c4b5fd">Pillow Covers, 90 x 108 in, Blue</text>
              <text x="235" y="102" font-size="11" fill="#fcd34d">New · no ratings yet</text>
              <text x="235" y="130" font-size="17" font-weight="700" fill="#6ee7b7">₹1,899</text>
              <text x="305" y="129" font-size="11" fill="#9b99b8">MRP ₹2,499 · 24% off</text>
              <g font-size="11" fill="#93c5fd">
                <text x="235" y="154">• 100% cotton, 144 thread count</text>
                <text x="235" y="172">• Hand-block-printed in Rajasthan</text>
                <text x="235" y="190">• 1 bedsheet + 2 pillow covers</text>
                <text x="235" y="208">• Cold wash, dry in shade</text>
              </g>
              <rect x="25" y="268" width="190" height="40" rx="6" fill="#27274e" stroke="#9b99b8"/>
              <text x="120" y="292" text-anchor="middle" font-size="11">Seller + legal info</text>
              <rect x="235" y="268" width="92" height="40" rx="6" fill="#27274e" stroke="#22d3ee"/>
              <text x="281" y="292" text-anchor="middle" font-size="11">Description</text>
              <rect x="336" y="268" width="92" height="40" rx="6" fill="#27274e" stroke="#10b981"/>
              <text x="382" y="292" text-anchor="middle" font-size="11">Attributes</text>
              <rect x="437" y="268" width="92" height="40" rx="6" fill="#27274e" stroke="#fbbf24"/>
              <text x="483" y="292" text-anchor="middle" font-size="11">Reviews</text>
              <rect x="555" y="10" width="195" height="310" rx="12" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="652" y="36" text-anchor="middle" font-weight="700">Each part has a job</text>
              <g font-size="12">
                <text x="572" y="68" fill="#c4b5fd">Title: be found</text>
                <text x="572" y="98" fill="#f9a8d4">Images: see it</text>
                <text x="572" y="128" fill="#6ee7b7">Price: decide</text>
                <text x="572" y="158" fill="#93c5fd">Bullets: quick facts</text>
                <text x="572" y="188" fill="#67e8f9">Description: details</text>
                <text x="572" y="218" fill="#6ee7b7">Attributes: filters</text>
                <text x="572" y="248" fill="#fcd34d">Reviews: trust</text>
                <text x="572" y="278" fill="#e2e0f0">Legal info: required</text>
              </g>
              <text x="652" y="306" text-anchor="middle" font-size="10.5" fill="#9b99b8">all data is made up</text>
            </g>
          </svg>
          <figcaption>A listing is a set of parts. Each part answers a different buyer question.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The parts of a listing</h3>
          <table class="lc-table">
            <thead><tr><th>Part</th><th>What the buyer uses it for</th><th>Rangrez Crafts example</th></tr></thead>
            <tbody>
              <tr><td><strong>Title</strong></td><td>To find the product in search and know what it is at a glance</td><td>Brand, "hand block print", "cotton double bedsheet", "2 pillow covers", size, colour</td></tr>
              <tr><td><strong>Images</strong></td><td>To see the real product, its size and its details</td><td>The sheet on a real bed, a close-up of the print, the pillow covers, the box</td></tr>
              <tr><td><strong>Price</strong></td><td>To decide if it is worth the money</td><td>MRP ₹2,499, selling price ₹1,899</td></tr>
              <tr><td><strong>Bullet points</strong></td><td>To read the key facts in a few seconds</td><td>100% cotton, 144 thread count, what is in the box, care</td></tr>
              <tr><td><strong>Description</strong></td><td>To read more detail and the story behind the product</td><td>How the Rajasthan workshop prints each sheet by hand</td></tr>
              <tr><td><strong>Attributes</strong></td><td>To use search filters such as size, colour and material</td><td>Material: cotton. Size: double. Pieces: 3. Colour: blue.</td></tr>
              <tr><td><strong>Reviews and ratings</strong></td><td>To trust what other buyers say</td><td>Real reviews from real buyers only</td></tr>
              <tr><td><strong>Legal and seller information</strong></td><td>To know who made and sells it, and the return policy</td><td>Manufacturer address, country of origin, net quantity</td></tr>
            </tbody>
          </table>
          <p><strong>Attributes</strong> are the fixed fields you fill in, such as "Material" or "Colour". Marketplaces use them to power search filters. If you leave them empty, buyers who use filters may never see your product.</p>
        </div>
        <div class="lc-card">
          <h3>Why a good listing matters: a worked example</h3>
          <p><strong>Conversion rate</strong> is the share of visits to your product page that end in an order. The formula is: orders ÷ sessions × 100. A <strong>session</strong> is one visit to the page.</p>
          <p>Here is a made-up example. Neha's first draft listing gets 1,200 sessions in a month and 30 orders.</p>
          <pre><code>Before:  30 orders ÷ 1,200 sessions × 100 = 2.5%
        Revenue: 30 × ₹1,899 = ₹56,970

        She adds real photos on a bed, the exact size in inches and cm,
        and clear care steps. Next month: same 1,200 sessions, 42 orders.

        After:   42 orders ÷ 1,200 sessions × 100 = 3.5%
        Revenue: 42 × ₹1,899 = ₹79,758
        Extra revenue from the same visitors: ₹22,788</code></pre>
          <p>These numbers are for practice only. Real results depend on the product, price, season and competition. The idea is simple: a clearer listing can turn more of the same visitors into buyers. It can also cut returns, because buyers know what they will get.</p>
        </div>
        <div class="lc-card">
          <h3>Honest listings: what you must never invent</h3>
          <p>A good listing is also an honest listing. Never add a feature, certificate, review or discount that is not real. In India, several rules apply to online listings. Here are some examples:</p>
          <ul class="lc-list">
            <li>The <strong>Consumer Protection (E-Commerce) Rules, 2020</strong> expect listings to show seller details, the country of origin, the total price and the return and refund policy.</li>
            <li>The <strong>Legal Metrology (Packaged Commodities) Rules</strong> cover MRP, net quantity and manufacturer details.</li>
            <li>The CCPA (Central Consumer Protection Authority) <strong>guidelines on dark patterns, 2023</strong> ban tricks such as false urgency ("Only 2 left!" when it is not true).</li>
            <li>The BIS standard <strong>IS 19000:2022</strong> sets rules for collecting and publishing online reviews. Fake reviews are not allowed.</li>
          </ul>
          <p>This is general education, not legal advice. Rules change, so check the current rules or ask a lawyer. Marketplaces also have their own listing policies. Check Seller Central help (Amazon) and Seller Hub help (Flipkart) for the latest versions.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: what job does each part do?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each part of Neha's bedsheet listing by its main job.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="find" data-label="Helps buyers find it"></div>
              <div data-sorter-target="bucket" data-bucket="decide" data-label="Helps buyers decide"></div>
              <div data-sorter-target="bucket" data-bucket="trust" data-label="Builds trust or meets rules"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="find" data-why="Buyers type these words into the search bar. The title is one of the main places search looks.">The words "cotton double bedsheet" in the title</li>
              <li data-bucket="find" data-why="Search filters use attributes. An empty colour field can hide the product from buyers who filter by colour.">Colour "Blue" and size "Double" filled in as attributes</li>
              <li data-bucket="decide" data-why="A photo on a real bed shows the size and look better than words can.">A photo of the sheet on a real bed</li>
              <li data-bucket="decide" data-why="This answers the most common question: will it fit my bed?">"Tested on a 72 x 78 inch mattress, 6 inches thick"</li>
              <li data-bucket="decide" data-why="Care steps help buyers know what owning the product is like, and cut surprise returns.">"Wash separately in cold water for the first 2 washes"</li>
              <li data-bucket="trust" data-why="Real reviews from real buyers help new buyers trust the product. Fake reviews break the rules.">Reviews from verified buyers</li>
              <li data-bucket="trust" data-why="Indian rules expect details like these on listings. They also show buyers who is responsible.">Manufacturer address and country of origin</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask the AI to review a weak listing, part by part. Paste your own listing in the brackets, or use the made-up example.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an experienced e-commerce listing reviewer for Indian marketplaces.

        Review this product listing part by part: title, bullet points, description, price and missing parts.

        Listing:
        [Title: BEST Rajasthani Bedsheet Premium Quality Bedsheet Double Bedsheet
        Bullets: Premium quality. Natural dyes, 100% safe. Best gift for everyone. Limited stock!
        Description: Beautiful bedsheet from Rajasthan. Buy now.
        Price: Rs 1,899 (MRP Rs 2,499)]

        Facts I can prove: [100% cotton, 144 thread count, 90 x 108 inches, 1 bedsheet + 2 pillow covers, hand-block-printed in our Rajasthan workshop]

        For each part:
        1. Give a score from 1 to 5 and one reason.
        2. List what a buyer would still want to know.
        3. List any claim that is not in my facts. Mark it "NEEDS PROOF OR REMOVE".
        Then list the 5 most important fixes, in order.

        Rules: Do not add any new product facts. If information is missing, write [NEEDS INFO]. Use simple English.</pre>
            <ul class="ai-try-checks">
              <li>"Natural dyes", "100% safe" and "Limited stock" are flagged, because they are not in the facts.</li>
              <li>The AI does not invent new features, such as "organic" or "fade-proof".</li>
              <li>Missing parts, like size in cm, care steps and attributes, are pointed out.</li>
              <li>The fixes are specific enough that you could act on them today.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Every part of a listing has one job: to be found, to help the buyer decide, or to build trust. A good listing does all three with true facts only.
        </div>
      HTML
      starter_code: nil
    },
    2 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-ecom">E-commerce</div>
          <h1 class="lc-title">Where AI Helps with Listings</h1>
        </div>
        <p class="lc-lead">AI assistants such as Claude can write a first draft of a listing in seconds. They can suggest keywords, fill attribute tables, translate text and rewrite hundreds of listings at once. But AI can also invent features, get numbers wrong and break marketplace rules. In this lesson, you will learn which listing jobs to give to AI. You will also learn the checks you must always do yourself before anything goes live.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="A workflow: you write a fact sheet, AI drafts the listing, you check it, then you publish and watch the results. Below, one box lists what AI does well and another lists the main risks.">
            <defs><marker id="pl2a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="15" y="20" width="130" height="80" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="80" y="52" font-weight="700" fill="#6ee7b7">1. Fact sheet</text>
              <text x="80" y="76" font-size="11" fill="#9b99b8">you, true facts</text>
              <rect x="170" y="20" width="130" height="80" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="235" y="52" font-weight="700" fill="#c4b5fd">2. AI drafts</text>
              <text x="235" y="76" font-size="11" fill="#9b99b8">fast first version</text>
              <rect x="325" y="20" width="130" height="80" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="390" y="52" font-weight="700" fill="#fcd34d">3. You check</text>
              <text x="390" y="76" font-size="11" fill="#9b99b8">facts, numbers, rules</text>
              <rect x="480" y="20" width="120" height="80" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="540" y="52" font-weight="700" fill="#93c5fd">4. Publish</text>
              <text x="540" y="76" font-size="11" fill="#9b99b8">store, marketplaces</text>
              <rect x="625" y="20" width="120" height="80" rx="10" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="685" y="52" font-weight="700" fill="#67e8f9">5. Watch</text>
              <text x="685" y="76" font-size="11" fill="#9b99b8">orders, returns</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#pl2a)">
                <line x1="147" y1="60" x2="166" y2="60"/>
                <line x1="302" y1="60" x2="321" y2="60"/>
                <line x1="457" y1="60" x2="476" y2="60"/>
                <line x1="602" y1="60" x2="621" y2="60"/>
              </g>
              <path d="M390,102 L390,122 L235,122 L235,106" fill="none" stroke="#fca5a5" stroke-width="1.5" stroke-dasharray="4 3" marker-end="url(#pl2a)"/>
              <text x="312" y="138" font-size="11" fill="#fca5a5">wrong? fix and redraft</text>
              <rect x="15" y="155" width="355" height="130" rx="12" fill="#27274e" stroke="#10b981"/>
              <text x="192" y="181" font-weight="700" fill="#6ee7b7">AI does well</text>
              <g font-size="12" text-anchor="start">
                <text x="35" y="206">• First drafts of titles and bullets</text>
                <text x="35" y="228">• Keyword ideas and grouping</text>
                <text x="35" y="250">• Attribute tables from a fact sheet</text>
                <text x="35" y="272">• Translations and bulk rewrites</text>
              </g>
              <rect x="390" y="155" width="355" height="130" rx="12" fill="#27274e" stroke="#ec4899"/>
              <text x="567" y="181" font-weight="700" fill="#f9a8d4">AI risks you must catch</text>
              <g font-size="12" text-anchor="start">
                <text x="410" y="206">• Made-up features and certificates</text>
                <text x="410" y="228">• Wrong numbers: sizes, discounts</text>
                <text x="410" y="250">• Banned words and fake urgency</text>
                <text x="410" y="272">• Text copied from competitors</text>
              </g>
            </g>
          </svg>
          <figcaption>AI writes the draft. You own the facts and the final check.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Listing jobs AI can help with</h3>
          <table class="lc-table">
            <thead><tr><th>Job</th><th>How AI helps</th><th>What you must still check</th></tr></thead>
            <tbody>
              <tr><td>First drafts</td><td>Writes titles, bullets and descriptions from your fact sheet</td><td>Every claim is on the fact sheet. The tone fits your brand.</td></tr>
              <tr><td>Keyword ideas</td><td>Suggests search terms, long phrases and Hindi or Hinglish words</td><td>Real buyers use these words. Every word is true for your product.</td></tr>
              <tr><td>Attributes</td><td>Turns a fact sheet into a table of fields like material and size</td><td>Values match the marketplace's allowed options</td></tr>
              <tr><td>Translations</td><td>Writes Hindi, Tamil or other language versions</td><td>Sizes and numbers stay exactly the same. A native speaker reads it.</td></tr>
              <tr><td>Bulk rewrites</td><td>Rewrites 200 old titles in one format</td><td>A sample of rows, checked line by line</td></tr>
              <tr><td>Buyer questions</td><td>Drafts answers to common questions</td><td>The answer is true. You never promise what you cannot deliver.</td></tr>
            </tbody>
          </table>
          <p>Some seller dashboards and store platforms now have built-in AI tools that draft listings for you. Features change often, so check the tool's current help pages. The same checks apply to their drafts too.</p>
        </div>
        <div class="lc-card">
          <h3>The big risk: made-up features</h3>
          <p>AI tools sometimes write things that sound right but are false. This is called a <strong>hallucination</strong>. In listings, it often looks like a nice extra feature. For example: "natural dyes", "organic cotton", "fade-proof" or "hotel quality". A buyer who gets something different may leave a bad review or return the product. False claims can also break consumer protection rules.</p>
          <p>Compare these two prompts for Neha's new bedsheet:</p>
          <pre><code>Weak prompt:
        Write an Amazon listing for a Rajasthani cotton bedsheet.

        Better prompt:
        You are a listing writer for Rangrez Crafts, a Rajasthan brand.
        Write 5 bullet points for our double bedsheet set.
        Use ONLY these facts: 100% cotton; 144 thread count;
        90 x 108 inches; 1 bedsheet + 2 pillow covers (17 x 27 inches);
        hand-block-printed at our Rajasthan workshop; machine wash gentle,
        cold; wash separately for the first 2 washes.
        Do not add any other feature, certificate or claim.
        If a buyer would want a fact that is missing, write [NEEDS INFO].</code></pre>
          <p>The weak prompt makes the AI guess. The better prompt gives it the facts and a clear rule. It also asks the AI to show gaps instead of filling them.</p>
        </div>
        <div class="lc-card">
          <h3>Other risks to watch</h3>
          <ul class="lc-list">
            <li><strong>Wrong numbers.</strong> AI can get unit conversions and discounts wrong. Neha's discount is ₹2,499 − ₹1,899 = ₹600. That is 600 ÷ 2,499 = 24% of MRP, not 25%. Check every number yourself, or use a spreadsheet.</li>
            <li><strong>Rule breaks.</strong> Many marketplace style guides ban words like "best seller" or "free shipping" in titles. Check Seller Central help and Seller Hub help for current rules.</li>
            <li><strong>Copying.</strong> Do not paste a competitor's listing and ask AI to "rewrite it". Their text and photos belong to them. Their claims may not be true for your product.</li>
            <li><strong>Privacy.</strong> Do not paste customer names, phone numbers or addresses into public AI tools. Remove them from chats and reviews first.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Activity: Neha's first AI draft</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Neha's prompt">Write 5 Amazon bullet points for our Rajasthani hand block print cotton double bedsheet with 2 pillow covers. MRP ₹2,499, price ₹1,899.</li>
              <li data-kind="answer" data-label="AI reply">"• Made with natural vegetable dyes, safe for kids. • Organic cotton that gets softer with every wash. • Fits king and queen beds. • Colourfast print that never fades. • Save 25% today!"</li>
              <li data-kind="warn" data-label="Problems">Neha has no proof of natural dyes or organic cotton. "Never fades" is false: her wash test showed slight colour bleed. "King and queen" is a guess. The discount is wrong.</li>
              <li data-kind="tool" data-label="Spreadsheet">Neha types =(2499-1899)/2499 into a cell and formats it as a percentage.</li>
              <li data-kind="result" data-label="Result">The cell shows 24%. The AI's "25%" was wrong.</li>
              <li data-kind="user" data-label="Better prompt">She pastes her fact sheet and adds: "Use only these facts. Do not add claims. Write [NEEDS INFO] for missing facts."</li>
              <li data-kind="answer" data-label="AI reply">"• 100% cotton, 144 thread count. • Hand-block-printed at our workshop in Rajasthan. • Set of 3: 1 bedsheet (90 x 108 inches) + 2 pillow covers. • Tested on a 72 x 78 inch mattress, 6 inches thick. • Machine wash gentle, cold. Wash separately for the first 2 washes."</li>
              <li data-kind="check" data-label="Neha checks">Every bullet matches the fact sheet. She checks the style guide for her category before she publishes.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Use AI to find made-up claims in a draft. Replace the facts and the draft with your own, or use the example.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a careful fact-checker for product listings.

        My proven product facts:
        [100% cotton. 144 thread count. Bedsheet 90 x 108 inches. 2 pillow covers, 17 x 27 inches. Hand-block-printed at our workshop in Rajasthan. Machine wash gentle, cold; wash separately for the first 2 washes. MRP Rs 2,499, selling price Rs 1,899.]

        Draft listing to check:
        [Made with natural vegetable dyes, safe for babies. Organic cotton that gets softer every wash. Fits king and queen beds. Fade-proof print. Save 25% today. Hand-block-printed in Rajasthan. 144 thread count.]

        Task:
        1. Split the draft into single claims.
        2. For each claim, make a table: Claim | Status (SUPPORTED, NOT SUPPORTED, or WRONG NUMBER) | Which fact supports it, or why not.
        3. Recalculate any discount as: (MRP - selling price) / MRP x 100. Show your working.
        4. Rewrite the draft using only SUPPORTED claims.

        Rules: Do not add any new facts. Use simple English.</pre>
            <ul class="ai-try-checks">
              <li>"Natural vegetable dyes", "organic", "safe for babies" and "fade-proof" are marked NOT SUPPORTED.</li>
              <li>The discount is recalculated as 24%, not 25%. Check it yourself with a calculator.</li>
              <li>The rewrite contains no claim that is missing from your facts.</li>
              <li>Nothing true was removed by mistake, such as the thread count.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> AI is fast at drafting, but it does not know your product. Give it only true facts, tell it not to add claims, and check every claim and number before you publish.
        </div>
      HTML
      starter_code: nil
    },
    3 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-ecom">E-commerce</div>
          <h1 class="lc-title">Knowing Your Product and Buyer</h1>
        </div>
        <p class="lc-lead">A great listing starts before you open any AI tool. First, you collect the true facts about your product in one place. This is called a <strong>product fact sheet</strong>. Then you learn what your buyers want to know and why they buy. In this lesson, you will build a fact sheet for Neha's new bedsheet. You will sort proven facts from claims she must not make. You will also turn buyer questions into a plan for the listing. With a good fact sheet, AI drafts become faster and much safer.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 290" role="img" aria-label="Three inputs, the product in hand, documents and the buyer's voice, flow into a fact sheet. The fact sheet has three parts: proven, check first and do not claim. The fact sheet then feeds the listing.">
            <defs><marker id="pl3a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="15" y="20" width="200" height="72" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="115" y="48" font-weight="700" fill="#f9a8d4">Product in hand</text>
              <text x="115" y="70" font-size="11" fill="#9b99b8">measure, wash, photograph</text>
              <rect x="15" y="109" width="200" height="72" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="115" y="137" font-weight="700" fill="#93c5fd">Documents</text>
              <text x="115" y="159" font-size="11" fill="#9b99b8">test reports, spec sheets</text>
              <rect x="15" y="198" width="200" height="72" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="115" y="226" font-weight="700" fill="#fcd34d">Buyer's voice</text>
              <text x="115" y="248" font-size="11" fill="#9b99b8">questions, reviews, chats</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#pl3a)">
                <path d="M217,56 L262,110"/>
                <line x1="217" y1="145" x2="262" y2="145"/>
                <path d="M217,234 L262,180"/>
              </g>
              <rect x="268" y="20" width="250" height="250" rx="12" fill="#27274e" stroke="#10b981"/>
              <text x="393" y="46" font-weight="700" fill="#6ee7b7">Product fact sheet</text>
              <rect x="285" y="62" width="216" height="58" rx="8" fill="#1f1f44" stroke="#10b981"/>
              <text x="393" y="85" font-size="12" font-weight="700" fill="#6ee7b7">Proven</text>
              <text x="393" y="105" font-size="11" fill="#9b99b8">100% cotton, 144 TC, size</text>
              <rect x="285" y="130" width="216" height="58" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="393" y="153" font-size="12" font-weight="700" fill="#fcd34d">Check first</text>
              <text x="393" y="173" font-size="11" fill="#9b99b8">shrinkage, pillow fit</text>
              <rect x="285" y="198" width="216" height="58" rx="8" fill="#1f1f44" stroke="#ec4899"/>
              <text x="393" y="221" font-size="12" font-weight="700" fill="#f9a8d4">Do not claim</text>
              <text x="393" y="241" font-size="11" fill="#9b99b8">natural dyes, handloom</text>
              <line x1="520" y1="145" x2="566" y2="145" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#pl3a)"/>
              <rect x="572" y="45" width="173" height="200" rx="12" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="658" y="72" font-weight="700" fill="#c4b5fd">Listing</text>
              <g font-size="12">
                <text x="658" y="104">Title</text>
                <text x="658" y="130">Bullet points</text>
                <text x="658" y="156">Description</text>
                <text x="658" y="182">Attributes</text>
                <text x="658" y="208">Answers to questions</text>
              </g>
              <text x="658" y="232" font-size="10.5" fill="#9b99b8">only from "Proven"</text>
            </g>
          </svg>
          <figcaption>The fact sheet is the single source of truth. Only proven facts go into the listing.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>A product fact sheet template</h3>
          <p>A fact sheet is a simple document or spreadsheet. It lists every fact about one product, with the proof for each fact. Here is Neha's, in short:</p>
          <pre><code>PRODUCT FACT SHEET: Rangrez Crafts "Buta Bagh" double bedsheet set
        SKU:            RC-BS-DBL-BUTA-BLU
        In the box:     1 double bedsheet + 2 pillow covers (3 pieces)
        Material:       100% cotton             Proof: mill fabric test report
        Thread count:   144                     Proof: mill spec sheet
        Bedsheet size:  90 x 108 inches (228.6 x 274.3 cm)   Proof: measured
        Pillow covers:  17 x 27 inches (43.2 x 68.6 cm), envelope closure
        Print:          hand-block-printed with wooden blocks at our
                        Workshop in Rajasthan   Proof: process photos, video
        Colour:         blue print on a white base
        Fit:            tested on a 72 x 78 inch mattress, 6 inches thick
        Care:           machine wash gentle, cold; wash separately for the
                        first 2 washes; dry in shade   Proof: wash test on 3 sets
        Honest notes:   slight colour bleed in the first wash; small print
                        differences between pieces (handmade)
        Price:          MRP Rs 2,499 (incl. all taxes); selling price Rs 1,899
        Origin:         Made in India
        DO NOT CLAIM:   natural or vegetable dyes, organic, handloom, azo-free,
                        GI-tagged, colourfast, hotel quality
        CHECK FIRST:    shrinkage after washing (not measured yet)</code></pre>
          <p><strong>SKU</strong> (stock keeping unit) is your own code for one exact product. <strong>Thread count</strong> is the number of threads in one square inch of fabric.</p>
          <p>Notice the "DO NOT CLAIM" line. The fabric is woven in a mill, so "handloom" would be false. Hand-block-printed is not the same as handloom. The printer uses pigment colours, so "natural dyes" has no proof.</p>
        </div>
        <div class="lc-card">
          <h3>Proven, check first, or do not claim</h3>
          <table class="lc-table">
            <thead><tr><th>Claim</th><th>Status</th><th>Why</th></tr></thead>
            <tbody>
              <tr><td>100% cotton</td><td>Proven</td><td>The mill's test report says so.</td></tr>
              <tr><td>Fits a 72 x 78 inch mattress</td><td>Proven</td><td>Neha tested it: about 3 inches left to tuck in on each long side.</td></tr>
              <tr><td>Shrinks less than 2%</td><td>Check first</td><td>Nobody has measured it. Measure before and after a wash.</td></tr>
              <tr><td>Natural vegetable dyes</td><td>Do not claim</td><td>No proof. The printer uses pigment colours.</td></tr>
              <tr><td>Colour never fades</td><td>Do not claim</td><td>Her own test showed slight bleed in the first wash.</td></tr>
            </tbody>
          </table>
          <p>How did Neha get "3 inches to tuck in"? The sheet is 90 inches wide and the mattress is 72 inches wide. That leaves 18 inches, or 9 inches on each side. The mattress is 6 inches thick, so 9 − 6 = 3 inches are left to tuck in.</p>
        </div>
        <div class="lc-card">
          <h3>Know your buyer: questions and use cases</h3>
          <p>A <strong>use case</strong> is a real reason someone buys the product. Each use case brings different questions. Find these questions in customer chats, marketplace questions, your reviews and reviews of similar products. Read other sellers' reviews for ideas, but never copy their text.</p>
          <table class="lc-table">
            <thead><tr><th>Buyer and use case</th><th>What they want to know</th><th>Fact that answers it</th></tr></thead>
            <tbody>
              <tr><td>A couple setting up a new flat</td><td>Will it fit our bed? Is it easy to wash?</td><td>90 x 108 inches; mattress test; machine wash gentle</td></tr>
              <tr><td>Someone buying a housewarming gift</td><td>Does it look good in the box? Can I send it to another city?</td><td>Kraft paper box; delivery details [NEEDS INFO]</td></tr>
              <tr><td>A buyer who loves Rajasthani prints</td><td>Is it really hand-printed? Where is it made?</td><td>Our Rajasthan workshop; process photos</td></tr>
              <tr><td>A careful buyer who read bad reviews elsewhere</td><td>Will the colour run? Is it thin?</td><td>Honest care note; 144 thread count; photos in daylight</td></tr>
            </tbody>
          </table>
          <p>If a question has no answer on your fact sheet, you have found a gap. Test the product, ask your supplier or leave that claim out.</p>
          <p><strong>Privacy:</strong> remove customer names, numbers and addresses before you paste chats or reviews into an AI tool.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: can Neha say this?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each claim for the bedsheet listing. Use Neha's fact sheet.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="proven" data-label="Proven: can use"></div>
              <div data-sorter-target="bucket" data-bucket="check" data-label="Check first"></div>
              <div data-sorter-target="bucket" data-bucket="never" data-label="Do not claim"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="proven" data-why="The mill's fabric test report proves it.">"100% cotton"</li>
              <li data-bucket="proven" data-why="The sheets are printed in her own workshop. She has photos and video of the process.">"Hand-block-printed at our Rajasthan workshop"</li>
              <li data-bucket="proven" data-why="Neha tested the fit herself on this mattress size.">"Tested on a 72 x 78 inch mattress, 6 inches thick"</li>
              <li data-bucket="check" data-why="Nobody has measured shrinkage yet. Measure before and after a wash, then decide.">"Shrinks less than 2% after washing"</li>
              <li data-bucket="check" data-why="Pillow sizes vary. Give the cover size in inches, and check it against common pillows first.">"Pillow covers fit all standard pillows"</li>
              <li data-bucket="never" data-why="There is no proof. The printer uses pigment colours.">"Made with natural vegetable dyes"</li>
              <li data-bucket="never" data-why="The fabric is woven in a mill. Hand-block-printed is not the same as handloom.">"Pure handloom cotton"</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Turn messy notes into a clean fact sheet and a list of buyer questions. Paste your own notes, or use Neha's.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a product data assistant for a small Indian brand. Turn my messy notes into a product fact sheet.

        Product: [Rangrez Crafts hand-block-printed double bedsheet with 2 pillow covers]
        My notes: [cotton 100% (mill report) / 144 TC per mill sheet / sheet 90x108 in, pillow covers 17x27 in / printed by hand in our Rajasthan workshop / blue on white / tested on 72x78 mattress 6 in thick / machine wash gentle cold, slight bleed first wash / MRP 2499, selling 1899 / my supplier says natural dyes but no papers / maybe good for gifting?]

        Task:
        1. Make a table: Field | Fact | Proof I mentioned | Status.
           Status must be PROVEN, CHECK FIRST or DO NOT CLAIM.
        2. Convert inches to cm (1 inch = 2.54 cm). Show the working.
        3. List 10 questions buyers are likely to ask, and the fact that answers each one. Write GAP if no fact answers it.
        4. List 3 buyer use cases in one line each.

        Rules: Use only my notes. Do not add new facts. Anything without proof cannot be PROVEN.</pre>
            <ul class="ai-try-checks">
              <li>"Natural dyes" is not marked PROVEN, because there are no papers.</li>
              <li>90 x 108 inches becomes about 228.6 x 274.3 cm. Check it with a calculator.</li>
              <li>No new facts appear, such as "organic" or a shrinkage number.</li>
              <li>The GAP list gives you real things to test or find out.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Write the fact sheet first, with proof for every fact. Then give AI only the proven facts. What is not proven stays out of the listing.
        </div>
      HTML
      starter_code: nil
    },
    4 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-ecom">E-commerce</div>
          <h1 class="lc-title">Keyword Research for Marketplaces</h1>
        </div>
        <p class="lc-lead">Buyers find products by typing words into a search bar. These words are called <strong>search terms</strong> or <strong>keywords</strong>. If your listing does not use the words buyers type, the marketplace may not show it to them. In this lesson, you will learn how to find the real words buyers use. You will learn why long, specific phrases often bring better buyers. You will also learn how AI can help you build and sort a keyword list, and why stuffing a listing with keywords hurts it.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="A keyword funnel. The broad head term bedsheet has many searches and vague buyers. The middle term cotton double bedsheet is more specific. The long-tail term blue block print double bedsheet has fewer searches but buyers who know what they want. A side panel lists where to find keywords. A red box shows keyword stuffing.">
            <defs><marker id="pl4a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="15" y="15" width="490" height="62" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="260" y="40" font-weight="700" fill="#93c5fd">Head term: "bedsheet"</text>
              <text x="260" y="62" font-size="11" fill="#9b99b8">many searches · huge competition · buyer not sure yet</text>
              <rect x="55" y="87" width="410" height="62" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="260" y="112" font-weight="700" fill="#c4b5fd">Mid term: "cotton double bedsheet"</text>
              <text x="260" y="134" font-size="11" fill="#9b99b8">fewer searches · clearer need</text>
              <rect x="95" y="159" width="330" height="62" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="260" y="184" font-weight="700" fill="#6ee7b7">Long-tail: "blue block print</text>
              <text x="260" y="204" font-weight="700" fill="#6ee7b7">double bedsheet"</text>
              <text x="260" y="238" font-size="11" fill="#9b99b8">fewest searches · buyer knows what they want</text>
              <rect x="15" y="252" width="490" height="38" rx="8" fill="#27274e" stroke="#ec4899"/>
              <text x="260" y="276" font-size="12" fill="#f9a8d4">Stuffing: "Bedsheet Bedsheet Double Bedsheet King Bedsheet"</text>
              <rect x="525" y="15" width="220" height="275" rx="12" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="635" y="42" font-weight="700" fill="#fcd34d">Where to find words</text>
              <g font-size="12" text-anchor="start">
                <text x="542" y="74">1. Marketplace search bar</text>
                <text x="542" y="104">2. Competitor titles</text>
                <text x="542" y="134">3. Reviews and questions</text>
                <text x="542" y="164">4. Your customer chats</text>
                <text x="542" y="194">5. Seller search reports</text>
                <text x="542" y="224">6. Google Trends</text>
                <text x="542" y="254">7. AI for more ideas</text>
              </g>
              <text x="635" y="278" font-size="10.5" fill="#9b99b8">AI ideas must be checked</text>
            </g>
          </svg>
          <figcaption>Broad words bring many searches but mixed buyers. Specific words bring fewer, more ready buyers. Stuffing helps no one.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Key words about keywords</h3>
          <ul class="lc-list">
            <li><strong>Head term:</strong> a short, broad keyword, like "bedsheet". Many people search it, but they want very different things.</li>
            <li><strong>Long-tail keyword:</strong> a longer, more specific phrase, like "jaipuri cotton double bedsheet with 2 pillow covers". Fewer people search it. But those who do are often ready to buy, and there is less competition.</li>
            <li><strong>Autocomplete:</strong> the suggestions that appear as you type in a search bar. They are based on what people search, so they are a free source of real buyer words.</li>
            <li><strong>Keyword stuffing:</strong> repeating keywords again and again to trick search. Marketplaces may rank these listings lower or remove them, and buyers find them hard to read.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Where to find real buyer words</h3>
          <table class="lc-table">
            <thead><tr><th>Source</th><th>What to do</th><th>Example for Neha</th></tr></thead>
            <tbody>
              <tr><td>Marketplace search bar</td><td>Type a seed word slowly. Write down every suggestion.</td><td>"jaipuri bedsheet" suggests "jaipuri bedsheet double bed cotton"</td></tr>
              <tr><td>Competitor listings</td><td>Read the top titles and bullets for common words. Do not copy their text.</td><td>Many titles say "with 2 pillow covers" and give the size</td></tr>
              <tr><td>Reviews and questions</td><td>Note the words buyers use in their own language</td><td>"chadar", "thick", "colour", "fits my bed"</td></tr>
              <tr><td>Seller search reports</td><td>Some marketplaces show search term reports to sellers or brand owners. Check Seller Central help and Seller Hub help.</td><td>Which terms led buyers to her other products</td></tr>
              <tr><td>Google Trends</td><td>Compare interest in terms over time and by region</td><td>Does interest rise before Diwali or the wedding season?</td></tr>
            </tbody>
          </table>
          <p>AI can suggest many more ideas, and group them. But an AI tool cannot see a marketplace's real search data. Treat its ideas as guesses until you check them in a search bar or a report.</p>
        </div>
        <div class="lc-card">
          <h3>A worked keyword list</h3>
          <p>Here is part of Neha's list. The interest levels are made up for practice. Real ones come from your own tools and reports.</p>
          <table class="lc-table">
            <thead><tr><th>Keyword</th><th>Type</th><th>Interest (made up)</th><th>True for her product?</th><th>Use it?</th></tr></thead>
            <tbody>
              <tr><td>bedsheet</td><td>Head</td><td>Very high</td><td>Yes, but too broad</td><td>Only inside longer phrases</td></tr>
              <tr><td>cotton double bedsheet</td><td>Mid</td><td>High</td><td>Yes</td><td>Title</td></tr>
              <tr><td>hand block print bedsheet</td><td>Mid</td><td>Medium</td><td>Yes</td><td>Title</td></tr>
              <tr><td>double bedsheet with 2 pillow covers</td><td>Long-tail</td><td>Medium</td><td>Yes</td><td>Title</td></tr>
              <tr><td>jaipuri chadar double bed</td><td>Hinglish</td><td>Medium</td><td>Yes</td><td>Hidden search terms field</td></tr>
              <tr><td>block print bedsheet for housewarming gift</td><td>Long-tail</td><td>Low</td><td>Yes</td><td>Description</td></tr>
              <tr><td>king size bedsheet cotton</td><td>Mid</td><td>High</td><td>Check first</td><td>Only if the size matches what buyers mean</td></tr>
              <tr><td>natural dye bedsheet</td><td>Long-tail</td><td>Low</td><td>No proof</td><td>No</td></tr>
              <tr><td>handloom bedsheet</td><td>Mid</td><td>Medium</td><td>No: mill-woven fabric</td><td>No</td></tr>
            </tbody>
          </table>
          <p>Some marketplaces have a <strong>hidden search terms field</strong>. Buyers do not see it, but search reads it. Rules for this field differ, so check the current style guide. A common rule: do not repeat words, and do not use other brands' names.</p>
          <pre><code>Weak prompt:
        Give me keywords for a bedsheet.

        Better prompt:
        You are a marketplace keyword researcher in India. Product: hand-block-
        printed 100% cotton double bedsheet with 2 pillow covers, 90 x 108 in,
        blue floral print, made in Rajasthan. Suggest 30 search terms buyers might
        type on Amazon or Flipkart, including Hindi/Hinglish words. Group them
        as head, mid and long-tail. Mark any term that is not true for this
        product. Do not guess search volumes.</code></pre>
        </div>
        <div class="lc-card">
          <h3>Activity: Neha's keyword research, in order</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put Neha's keyword research steps in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Write 5 seed words from the fact sheet, such as "cotton double bedsheet".</li>
              <li data-order="2">Type each seed word into the Amazon and Flipkart search bars and note the suggestions.</li>
              <li data-order="3">Read top competitor titles and reviews for common buyer words.</li>
              <li data-order="4">Ask AI to add more ideas and group them as head, mid and long-tail.</li>
              <li data-order="5">Remove every keyword that is not true for the bedsheet, such as "handloom".</li>
              <li data-order="6">Check the remaining ideas in search bars, seller reports or Google Trends.</li>
              <li data-order="7">Decide where each keyword goes: title, bullets, attributes or hidden field.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Build a grouped keyword list for your product. Change the product details in brackets, or use Neha's bedsheet.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a marketplace keyword researcher for Indian online sellers.

        Product: [hand-block-printed double bedsheet with 2 pillow covers by Rangrez Crafts, Rajasthan]
        Proven facts: [100% cotton, 144 thread count, 90 x 108 inches, blue floral print on white, printed by hand in our Rajasthan workshop, set of 3 pieces]
        NOT true or not proven: [organic, natural dyes, handloom, king size]
        Where I sell: [Amazon, Flipkart and my Shopify store]

        Task:
        1. Suggest 25 search terms Indian buyers might type, including 5 in Hindi or Hinglish.
        2. Put them in a table: Keyword | Type (head, mid or long-tail) | True for my product? (YES, NO or CHECK) | Best place to use it (title, bullets, description, attributes or hidden search terms field).
        3. List 5 words I must NOT use, and say why.
        4. Show one example of keyword stuffing, and a clean version.

        Rules: Do not invent search volumes or numbers. Write "check in the search bar or seller reports" instead. Do not use other brands' names.</pre>
            <ul class="ai-try-checks">
              <li>No keyword says "organic", "natural dye", "handloom" or a competitor's brand, unless it is marked NO.</li>
              <li>The AI does not invent search volumes.</li>
              <li>Long-tail terms are specific phrases, not just two words.</li>
              <li>Type 3 of the suggestions into a real marketplace search bar. See if autocomplete shows similar phrases.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Use the words real buyers type, but only when they are true for your product. Specific long-tail phrases often bring buyers who are ready to order. Stuffing brings no one.
        </div>
      HTML
      starter_code: nil
    },
    5 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-ecom">E-commerce</div>
          <h1 class="lc-title">Writing Product Titles</h1>
        </div>
        <p class="lc-lead">The title is the most important text in a listing. Marketplace search reads it to decide when to show your product. Buyers read it to decide if they should click. A good title says exactly what the product is, in the words buyers search for. In this lesson, you will learn simple title formulas for different product types. You will compare weak and strong titles, and use AI to draft titles for each sales channel. You will also learn to check length and rules yourself.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="A title formula for home textiles with seven parts: brand, key feature, material, product, size, spec and colour. Below it, the strong title built from these parts. At the bottom, a weak title with promo words, repeated words, capital letters and a wrong discount.">
            <defs><marker id="pl5a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="380" y="24" font-weight="700">A title formula for home textiles</text>
              <rect x="14" y="40" width="96" height="70" rx="8" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="62" y="62" font-size="12" font-weight="700" fill="#c4b5fd">Brand</text>
              <text x="62" y="86" font-size="10.5" fill="#9b99b8">Rangrez Crafts</text>
              <rect x="118" y="40" width="108" height="70" rx="8" fill="#1f1f44" stroke="#ec4899"/>
              <text x="172" y="62" font-size="12" font-weight="700" fill="#f9a8d4">Key feature</text>
              <text x="172" y="86" font-size="10.5" fill="#9b99b8">Hand Block Print</text>
              <rect x="234" y="40" width="90" height="70" rx="8" fill="#1f1f44" stroke="#10b981"/>
              <text x="279" y="62" font-size="12" font-weight="700" fill="#6ee7b7">Material</text>
              <text x="279" y="86" font-size="10.5" fill="#9b99b8">100% Cotton</text>
              <rect x="332" y="40" width="150" height="70" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="407" y="62" font-size="12" font-weight="700" fill="#93c5fd">Product</text>
              <text x="407" y="84" font-size="10.5" fill="#9b99b8">Double Bedsheet with</text>
              <text x="407" y="99" font-size="10.5" fill="#9b99b8">2 Pillow Covers</text>
              <rect x="490" y="40" width="100" height="70" rx="8" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="540" y="62" font-size="12" font-weight="700" fill="#67e8f9">Size</text>
              <text x="540" y="86" font-size="10.5" fill="#9b99b8">90 x 108 Inches</text>
              <rect x="598" y="40" width="70" height="70" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="633" y="62" font-size="12" font-weight="700" fill="#fcd34d">Spec</text>
              <text x="633" y="86" font-size="10.5" fill="#9b99b8">144 TC</text>
              <rect x="676" y="40" width="70" height="70" rx="8" fill="#1f1f44" stroke="#9b99b8"/>
              <text x="711" y="62" font-size="12" font-weight="700">Colour</text>
              <text x="711" y="86" font-size="10.5" fill="#9b99b8">Blue</text>
              <line x1="380" y1="114" x2="380" y2="136" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#pl5a)"/>
              <rect x="14" y="142" width="732" height="66" rx="10" fill="#27274e" stroke="#10b981"/>
              <g text-anchor="start">
                <text x="30" y="162" font-size="11" font-weight="700" fill="#6ee7b7">Strong title (111 characters)</text>
                <text x="30" y="182" font-size="12">Rangrez Crafts Hand Block Print 100% Cotton Double Bedsheet with 2 Pillow Covers,</text>
                <text x="30" y="199" font-size="12">90 x 108 Inches, 144 TC, Blue</text>
              </g>
              <rect x="14" y="222" width="732" height="68" rx="10" fill="#27274e" stroke="#ec4899"/>
              <g text-anchor="start">
                <text x="30" y="242" font-size="11" font-weight="700" fill="#f9a8d4">Weak title</text>
                <text x="30" y="262" font-size="12">BEST Rajasthani Bedsheet!!! Premium Bedsheet Double Bedsheet King Queen 25% OFF</text>
                <text x="30" y="280" font-size="10.5" fill="#9b99b8">Problems: promo words, repeated words, ALL CAPS, wrong discount, unclear size</text>
              </g>
            </g>
          </svg>
          <figcaption>A formula keeps titles clear and complete. The weak title shouts, repeats and makes claims it cannot prove.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Title formulas by category</h3>
          <p>A <strong>title formula</strong> is a fixed order of information for one kind of product. It makes every title in your catalogue clear and consistent. Put the most important words first. On phones, search results often show only the start of a long title.</p>
          <table class="lc-table">
            <thead><tr><th>Category</th><th>Formula</th><th>Example (made-up brands)</th></tr></thead>
            <tbody>
              <tr><td>Home textiles</td><td>Brand + key feature + material + product + pieces + size + spec (such as thread count) + colour</td><td>Rangrez Crafts Hand Block Print 100% Cotton Double Bedsheet with 2 Pillow Covers, 90 x 108 Inches, 144 TC, Blue</td></tr>
              <tr><td>Ethnic wear</td><td>Brand + who it is for + fabric + product + key detail + colour</td><td>Zari &amp; Co Women's Georgette Saree with Blouse Piece, Zari Border, Maroon</td></tr>
              <tr><td>Food gift boxes</td><td>Brand + key feature + product + pack size + net weight</td><td>Sweet Crumbs Eggless Assorted Cookies Gift Box, 12 Pieces, 300 g</td></tr>
            </tbody>
          </table>
          <p>Each marketplace sets its own title rules. These include a maximum length, which words and symbols are allowed, and capital letters. The rules change and differ by category. So check the current style guide in Seller Central help and Seller Hub help before you write. On some marketplaces, parts of the title come from the attributes you fill in.</p>
        </div>
        <div class="lc-card">
          <h3>Weak vs strong titles</h3>
          <table class="lc-table">
            <thead><tr><th>Problem in a weak title</th><th>Why it hurts</th><th>Fix</th></tr></thead>
            <tbody>
              <tr><td>"BEST", "Premium", "!!!"</td><td>Promo words and symbols are often banned. They say nothing real.</td><td>Use facts: "100% Cotton", "144 TC"</td></tr>
              <tr><td>"Bedsheet" three times</td><td>Keyword stuffing. Hard to read.</td><td>Use each keyword once</td></tr>
              <tr><td>"King Queen"</td><td>An unclear size leads to wrong orders and returns</td><td>Give the exact size: "90 x 108 Inches"</td></tr>
              <tr><td>"25% OFF"</td><td>Price and offers belong in the price fields. This number is also wrong: the real discount is 24%.</td><td>Remove it from the title</td></tr>
              <tr><td>No brand, no pieces</td><td>Buyers cannot tell what is in the box or who made it</td><td>Add "Rangrez Crafts" and "with 2 Pillow Covers"</td></tr>
            </tbody>
          </table>
          <p><strong>Count characters yourself.</strong> AI tools often count characters wrongly. Paste the title into cell A2 of a spreadsheet. In B2, type <code>=LEN(A2)</code>. It shows the exact number of characters, including spaces. The strong title above has 111 characters.</p>
          <pre><code>Weak prompt:
        Write a catchy title for my bedsheet.

        Better prompt:
        Write 3 Amazon title options for this product. Use this order:
        brand + key feature + material + product + pieces + size + colour.
        Facts: Rangrez Crafts; hand block print; 100% cotton; double bedsheet
        with 2 pillow covers; 90 x 108 inches; 144 thread count; blue.
        No promo words, no price, no repeated words, no ALL CAPS.
        Put the most important words in the first 60 characters.</code></pre>
        </div>
        <div class="lc-card">
          <h3>One product, three channels</h3>
          <p>You can use slightly different titles on each channel, as long as the facts are the same.</p>
          <ul class="lc-list">
            <li><strong>Amazon:</strong> follow the category style guide closely. Lead with brand and product type.</li>
            <li><strong>Flipkart:</strong> fill the brand, model and attribute fields carefully, because they can shape how the title looks. Check Seller Hub help for your category.</li>
            <li><strong>Your Shopify store:</strong> a shorter, friendlier title often reads better. For example: "Buta Bagh Hand Block Print Cotton Double Bedsheet Set, Blue". You will write the separate SEO title later in this course.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Activity: Neha writes her Amazon title</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Neha's prompt">Using my fact sheet, write 3 Amazon title options with the order brand + key feature + material + product + pieces + size + colour. No promo words.</li>
              <li data-kind="answer" data-label="AI reply">Option 2: "Rangrez Crafts Hand Block Print Organic Cotton Double Bedsheet with 2 Pillow Covers, 90 x 108 Inches, Blue" (98 characters)</li>
              <li data-kind="tool" data-label="Spreadsheet">She pastes option 2, without the AI's note, into cell A2. She types =LEN(A2) into B2.</li>
              <li data-kind="result" data-label="Result">The cell shows 106, not 98. The AI's count was wrong, so Neha trusts the formula instead.</li>
              <li data-kind="warn" data-label="Catch this">"Organic" is not on the fact sheet. Neha has no organic certificate, so the word must go.</li>
              <li data-kind="thought" data-label="Neha thinks">She replaces "Organic Cotton" with "100% Cotton" and adds "144 TC" before the colour. Are the first words the ones buyers search for most?</li>
              <li data-kind="check" data-label="Neha checks">The new title has 111 characters. She compares this with the current length rule in the category style guide on Seller Central help. Then she saves it.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Get title options for each sales channel. Replace the facts in brackets with your own product, or use Neha's bedsheet.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an expert marketplace listing writer in India.

        Proven product facts: [Brand: Rangrez Crafts. Product: double bedsheet with 2 pillow covers. Key feature: hand block print, made in Rajasthan. Material: 100% cotton. Size: 90 x 108 inches. Thread count: 144. Colour: blue.]
        Top keywords: [cotton double bedsheet, hand block print bedsheet, jaipuri bedsheet, double bedsheet with 2 pillow covers]

        Task:
        1. Write a title formula for this category.
        2. Write 3 title options each for Amazon, Flipkart and my own Shopify store. The Shopify ones can be shorter and friendlier.
        3. For each option, say which keywords it includes.
        4. Mark your favourite for each channel, with one reason.

        Rules:
        - Use only the facts above. Do not add words like organic, natural, luxury or best.
        - No price, discount, ALL CAPS, repeated words or symbols like "!!!".
        - Put the brand and product type near the start.
        - Do not count characters. I will count them in a spreadsheet.</pre>
            <ul class="ai-try-checks">
              <li>No title contains a word that is not in your facts.</li>
              <li>No keyword is repeated inside one title.</li>
              <li>Count each title's characters with =LEN() in a spreadsheet, and compare with the current style guide.</li>
              <li>The size and the number of pieces are exact and the same in every option.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A strong title follows a formula: the most important true facts, in the words buyers search for, in a clear order. Let AI draft options, then check the facts, the length and the rules yourself.
        </div>
      HTML
      starter_code: nil
    },
    6 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-ecom">E-commerce</div>
          <h1 class="lc-title">Bullet Points and Key Features</h1>
        </div>
        <p class="lc-lead">After the title and images, most buyers read the <strong>bullet points</strong>. These are the short lines near the top of a listing, also called key features. They answer the big questions fast: what is it, what is in the box, will it fit, and how do I care for it? In this lesson, you will learn to turn plain specs into clear benefits. You will write Neha's five bullets from her fact sheet. You will also learn which claims to leave out, and how to catch them with AI and a spreadsheet.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 320" role="img" aria-label="A bullet point formula: short label, plus what it means for the buyer, plus proof or an exact spec. Below, a panel lists Neha's five bullet topics, and another panel lists claims to leave out, such as natural dyes, colourfast, hotel quality and bestseller.">
            <defs><marker id="pl6a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="380" y="24" font-weight="700">A strong bullet has three parts</text>
              <rect x="15" y="38" width="210" height="62" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="120" y="62" font-weight="700" fill="#c4b5fd">1. Short label</text>
              <text x="120" y="84" font-size="11" fill="#9b99b8">"Easy Care"</text>
              <rect x="270" y="38" width="210" height="62" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="375" y="62" font-weight="700" fill="#93c5fd">2. What it means</text>
              <text x="375" y="84" font-size="11" fill="#9b99b8">machine wash, gentle, cold</text>
              <rect x="525" y="38" width="220" height="62" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="635" y="62" font-weight="700" fill="#6ee7b7">3. Proof or exact spec</text>
              <text x="635" y="84" font-size="11" fill="#9b99b8">Neha's wash test on 3 sets</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#pl6a)">
                <line x1="227" y1="69" x2="266" y2="69"/>
                <line x1="482" y1="69" x2="521" y2="69"/>
              </g>
              <rect x="15" y="118" width="460" height="190" rx="12" fill="#27274e" stroke="#10b981"/>
              <text x="245" y="144" font-weight="700" fill="#6ee7b7">Neha's 5 bullets (all proven)</text>
              <g font-size="12" text-anchor="start">
                <text x="35" y="172">1. Hand block printed in our Rajasthan workshop</text>
                <text x="35" y="198">2. 100% cotton, 144 thread count</text>
                <text x="35" y="224">3. Set of 3: 1 bedsheet + 2 pillow covers, exact sizes</text>
                <text x="35" y="250">4. Fit tested on a 72 x 78 inch mattress</text>
                <text x="35" y="276">5. Easy care, with an honest colour note</text>
              </g>
              <rect x="490" y="118" width="255" height="190" rx="12" fill="#27274e" stroke="#ec4899"/>
              <text x="617" y="144" font-weight="700" fill="#f9a8d4">Leave out (no proof)</text>
              <g font-size="12" text-anchor="start" fill="#fbcfe8">
                <text x="510" y="172">Natural or vegetable dyes</text>
                <text x="510" y="198">Colourfast, fade-proof</text>
                <text x="510" y="224">Hotel quality, luxury</text>
                <text x="510" y="250">Organic, eco-friendly</text>
                <text x="510" y="276">Bestseller, #1, only 2 left</text>
              </g>
              <text x="617" y="298" font-size="10.5" fill="#9b99b8">no proof means no claim</text>
            </g>
          </svg>
          <figcaption>Each bullet gives a label, a plain benefit and a fact the buyer can trust. Claims without proof stay out.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Specs, benefits and proof</h3>
          <p>A <strong>spec</strong> (specification) is a plain fact, such as "144 thread count". A <strong>benefit</strong> is what that fact means for the buyer, such as "fits a 72 x 78 inch mattress with room to tuck in". Good bullets give both. The spec makes the bullet believable. The benefit makes it useful.</p>
          <table class="lc-table">
            <thead><tr><th>Spec (fact)</th><th>Benefit for the buyer</th><th>Proof Neha has</th></tr></thead>
            <tbody>
              <tr><td>90 x 108 inches (228.6 x 274.3 cm)</td><td>Covers the top and sides of a 72 x 78 inch mattress, with about 3 inches to tuck in on each long side</td><td>Her own fit test</td></tr>
              <tr><td>1 bedsheet + 2 pillow covers</td><td>A full set for a double bed, ready to use or gift</td><td>Packed and counted</td></tr>
              <tr><td>Envelope closure, no zip</td><td>Easy to put on, nothing to break</td><td>Checked on the product</td></tr>
              <tr><td>Hand printed with wooden blocks</td><td>A real craft piece with small, natural differences between sets</td><td>Workshop photos and video</td></tr>
              <tr><td>Machine wash, gentle, cold</td><td>No dry cleaning needed</td><td>Wash test on 3 sets</td></tr>
            </tbody>
          </table>
          <p>Notice what is missing: words like "soft", "premium" or "best". They are opinions, not facts. If a benefit cannot point to a proof, rewrite it or remove it.</p>
        </div>
        <div class="lc-card">
          <h3>Worked example: Neha's five bullets</h3>
          <p>Neha puts the most important facts first. She also includes size and care. Bedsheet buyers often ask about these before they buy. A wrong guess about size or colour often ends in a return. Here is her final set for Amazon and Flipkart:</p>
          <pre><code>1. Hand Block Printed in Rajasthan: Printed by hand with wooden blocks at
           our own workshop in Rajasthan. Blue buta (small flower)
           print on a white base. Small differences between pieces are normal.
        2. 100% Cotton, 144 Thread Count: Cotton fabric for everyday use.
        3. Set of 3 Pieces: 1 double bedsheet, 90 x 108 inches (228.6 x
           274.3 cm), and 2 pillow covers, 17 x 27 inches (43.2 x 68.6 cm),
           with an envelope closure.
        4. Fit Tested: Tested on a 72 x 78 inch mattress, 6 inches
           thick. Covers the top and sides, with about 3 inches to tuck in
           on each long side.
        5. Easy Care: Machine wash on a gentle cycle in cold water with a mild
           detergent. Wash separately for the first 2 washes, as slight colour
           bleed is normal for hand block prints. Dry in shade. Iron on medium.</code></pre>
          <p>Bullet 5 tells the truth about colour bleed. This can feel risky. But a buyer who knows it in advance is less likely to leave an angry review or send the set back.</p>
          <p>Each marketplace has its own rules for bullets: how many, how long, and which words are banned. Check the current style guide in Seller Central help and Seller Hub help for your category.</p>
        </div>
        <div class="lc-card">
          <h3>Claims to avoid, and safe alternatives</h3>
          <table class="lc-table">
            <thead><tr><th>Risky claim</th><th>Why Neha cannot use it</th><th>Safe alternative</th></tr></thead>
            <tbody>
              <tr><td>"Colourfast, will never fade"</td><td>Her wash test showed slight bleed in the first wash</td><td>"Wash separately for the first 2 washes"</td></tr>
              <tr><td>"Natural vegetable dyes"</td><td>The printer uses pigment colours. There is no proof.</td><td>Leave it out</td></tr>
              <tr><td>"Fits all standard pillows"</td><td>Pillow sizes vary. She has not tested this.</td><td>"Pillow covers: 17 x 27 inches"</td></tr>
              <tr><td>"Suitable for sensitive skin"</td><td>This is a health claim with no test behind it</td><td>Leave it out</td></tr>
              <tr><td>"Bestseller", "Only 2 left"</td><td>Not proven. False urgency is a dark pattern (a trick that pushes buyers) under the dark pattern guidelines of the CCPA (Central Consumer Protection Authority).</td><td>Leave it out</td></tr>
            </tbody>
          </table>
          <p><strong>A spreadsheet check for risky words.</strong> Paste each bullet into column A. In B2, type this formula and copy it down:</p>
          <pre><code>=SUMPRODUCT(--ISNUMBER(SEARCH({"organic","natural dye","handloom","fade","luxury","best"},A2)))</code></pre>
          <p>It counts how many risky words appear in the bullet. Any number above 0 means "read this bullet again". Add your own risky words to the list. The formula works in Excel and Google Sheets.</p>
          <pre><code>Weak prompt:
        Write 5 attractive bullet points for my cotton bedsheet.

        Better prompt:
        Write 5 bullet points for this product. Use ONLY the facts below.
        Format: Short Label: one or two plain sentences.
        Order: craft, material, what is in the box, fit, care.
        Include the honest care note about colour bleed.
        No opinions (soft, premium, best), no price, no offers, no ALL CAPS.
        After the bullets, list every claim you used and the fact behind it.
        Facts: [paste the proven part of your fact sheet]</code></pre>
        </div>
        <div class="lc-card">
          <h3>Activity: keep, fix or remove?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">An AI tool wrote these bullets for Neha's bedsheet set. Sort each one using her fact sheet.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="keep" data-label="Keep as it is"></div>
              <div data-sorter-target="bucket" data-bucket="fix" data-label="Fix: true idea, wrong detail"></div>
              <div data-sorter-target="bucket" data-bucket="remove" data-label="Remove: no proof"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="keep" data-why="Both facts are on the fact sheet, with the mill report and spec sheet as proof.">"100% Cotton, 144 Thread Count: cotton fabric for everyday use."</li>
              <li data-bucket="keep" data-why="This is the result of Neha's own fit test, with the exact mattress size.">"Tested on a 72 x 78 inch mattress, 6 inches thick."</li>
              <li data-bucket="fix" data-why="The set is real, but the pillow cover size is 17 x 27 inches, not 18 x 28. Always copy sizes from the fact sheet.">"Set of 3: 1 bedsheet and 2 pillow covers, 18 x 28 inches."</li>
              <li data-bucket="fix" data-why="The printing is real, but it happens in Neha's Rajasthan workshop. It is not handloom: the fabric is woven in a mill.">"Handloom fabric, block printed in Rajasthan."</li>
              <li data-bucket="remove" data-why="Her wash test showed slight colour bleed. This claim is false.">"Colourfast print that never fades."</li>
              <li data-bucket="remove" data-why="There is no test or certificate. Health and skin claims need strong proof.">"Gentle on sensitive skin and safe for babies."</li>
              <li data-bucket="remove" data-why="There is no proof it is a bestseller. Promo words are also often banned in bullets.">"Our bestselling bedsheet, loved by thousands."</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Get five bullets and a claim check in one step. Replace the facts in brackets with your own product, or use Neha's bedsheet.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a marketplace listing writer for Indian sellers. Write the bullet points (key features) for my product.

        Product: [Rangrez Crafts hand block print double bedsheet set, blue]
        Proven facts: [100% cotton; 144 thread count; 1 bedsheet 90 x 108 inches + 2 pillow covers 17 x 27 inches, envelope closure; hand printed with wooden blocks at our workshop in Rajasthan; tested on a 72 x 78 inch mattress, 6 inches thick, about 3 inches to tuck in on each long side; machine wash gentle, cold; wash separately for the first 2 washes (slight colour bleed); dry in shade]
        Do NOT claim: [natural dyes, organic, handloom, colourfast, luxury, suitable for sensitive skin]
        Top buyer questions: [Will it fit my bed? Will the colour run? What is in the box?]

        Task:
        1. Write 5 bullets. Format: Short Label: one or two plain sentences.
        2. Put the answers to the buyer questions in the bullets.
        3. Give sizes in inches and cm (1 inch = 2.54 cm).
        4. Then make a table: Bullet number | Claim | Fact that supports it.

        Rules: Use only the proven facts. No opinions, price, offers or ALL CAPS. Write [NEEDS INFO] if a fact is missing.</pre>
            <ul class="ai-try-checks">
              <li>No bullet uses a word from the "Do NOT claim" list.</li>
              <li>Sizes match your fact sheet: 90 x 108 inches is 228.6 x 274.3 cm. Check with a calculator.</li>
              <li>The colour bleed note is included and honest, not hidden.</li>
              <li>Every row in the claim table points to a real fact. Delete any bullet that does not.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A good bullet pairs a clear benefit with a fact you can prove. Answer the buyer's biggest questions first, be honest about care, and leave out every claim you cannot back up.
        </div>
      HTML
      starter_code: nil
    },
    7 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-ecom">E-commerce</div>
          <h1 class="lc-title">Product Descriptions</h1>
        </div>
        <p class="lc-lead">The <strong>product description</strong> is the longer text lower down on the listing. Buyers who scroll this far are interested, but they still have questions. A good description tells a short, true story about the product. It adds details the bullets had no room for. In this lesson, you will learn a simple structure for descriptions. You will write in a clear brand voice, plan rich content such as Amazon A+ Content, and use AI without letting it add made-up claims.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="Proven facts from the fact sheet and a brand voice guide both feed a description with five parts: an opening, the craft story told with facts, size and fit, care and honest notes, and use ideas.">
            <defs><marker id="pl7a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="380" y="22" font-weight="700">A description built from facts and voice</text>
              <rect x="15" y="95" width="150" height="110" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="90" y="125" font-weight="700" fill="#6ee7b7">Fact sheet</text>
              <text x="90" y="150" font-size="11" fill="#9b99b8">proven facts only</text>
              <text x="90" y="168" font-size="11" fill="#9b99b8">craft, sizes, care</text>
              <text x="90" y="186" font-size="11" fill="#9b99b8">no proof, no claim</text>
              <rect x="225" y="40" width="310" height="40" rx="8" fill="#27274e" stroke="#8b5cf6"/>
              <text x="380" y="65">1. Opening: what it is, who it is for</text>
              <rect x="225" y="90" width="310" height="40" rx="8" fill="#27274e" stroke="#3b82f6"/>
              <text x="380" y="115">2. Craft story, told with facts</text>
              <rect x="225" y="140" width="310" height="40" rx="8" fill="#27274e" stroke="#22d3ee"/>
              <text x="380" y="165">3. Size, fit and what is in the box</text>
              <rect x="225" y="190" width="310" height="40" rx="8" fill="#27274e" stroke="#f59e0b"/>
              <text x="380" y="215">4. Care and honest notes</text>
              <rect x="225" y="240" width="310" height="40" rx="8" fill="#27274e" stroke="#ec4899"/>
              <text x="380" y="265">5. Use ideas: bedroom, gifting</text>
              <rect x="595" y="80" width="150" height="140" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="670" y="108" font-weight="700" fill="#c4b5fd">Brand voice</text>
              <text x="670" y="134" font-size="11" fill="#6ee7b7">Use: warm, simple,</text>
              <text x="670" y="152" font-size="11" fill="#6ee7b7">proud of the craft</text>
              <text x="670" y="178" font-size="11" fill="#f9a8d4">Avoid: luxury, best,</text>
              <text x="670" y="196" font-size="11" fill="#f9a8d4">hype, ALL CAPS</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#pl7a)">
                <line x1="167" y1="150" x2="221" y2="150"/>
                <line x1="593" y1="150" x2="539" y2="150"/>
              </g>
            </g>
          </svg>
          <figcaption>Facts decide what the description says. The brand voice decides how it sounds. Both are needed.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Storytelling with facts</h3>
          <p>A description has more room than the bullets. Use it to tell buyers where the product comes from, how it is made and how they can use it. But every story sentence must rest on a fact. Vague, grand sentences sound like every other listing. They can also be untrue. Compare these lines:</p>
          <table class="lc-table">
            <thead><tr><th>Vague or risky line</th><th>Story line built on a fact</th></tr></thead>
            <tbody>
              <tr><td>"Crafted by master artisans using a centuries-old secret tradition."</td><td>"Printed by hand with wooden blocks at our own workshop in Rajasthan."</td></tr>
              <tr><td>"A luxurious feel you will love."</td><td>"100% cotton with a 144 thread count, made for everyday use."</td></tr>
              <tr><td>"The perfect fit for every bed."</td><td>"We tested it on a 72 x 78 inch mattress, 6 inches thick. It covers the top and sides, with about 3 inches to tuck in on each long side."</td></tr>
              <tr><td>"Colours that last forever."</td><td>"Wash it separately for the first 2 washes. A little colour bleed is normal for hand block prints."</td></tr>
            </tbody>
          </table>
          <p>The right-hand lines are more specific, so they are easier to believe. They also answer real buyer questions.</p>
        </div>
        <div class="lc-card">
          <h3>Worked example: Neha's description</h3>
          <p>Neha uses the five-part structure from the diagram. She keeps paragraphs short, because most buyers read on a phone. She adds the long-tail keyword "block print bedsheet for housewarming gift" once, in a natural way.</p>
          <pre><code>Buta Bagh: a hand block printed cotton bedsheet set

        Bring a piece of Rajasthan to your bedroom. The Buta Bagh set has small
        blue buta (flower) motifs on a white cotton base.

        How it is made
        Our printers print every set by hand with carved wooden blocks, at
        our own workshop in Rajasthan. Because each piece is printed
        by hand, small differences in the print are normal.

        Size and fit
        The set has 1 double bedsheet, 90 x 108 inches (228.6 x 274.3 cm),
        and 2 pillow covers, 17 x 27 inches (43.2 x 68.6 cm), with an
        envelope closure. We tested it on a 72 x 78 inch mattress, 6 inches
        thick. It covers the top and sides, with about 3 inches to tuck in
        on each long side.

        Care
        Machine wash on a gentle cycle in cold water with a mild detergent.
        Wash it separately for the first 2 washes, because a little colour
        bleed is normal for hand block prints. Dry in shade. Iron on medium.

        A gift idea
        Looking for a block print bedsheet for a housewarming gift? The set
        comes folded in a plain kraft paper box.</code></pre>
          <p><strong>Formatting tips.</strong> Use short paragraphs and simple subheadings. Give sizes in inches and cm. Some marketplaces remove bold text, bullets or line breaks from the description field. Check the preview on each channel, and check the current help pages for what formatting is allowed.</p>
          <pre><code>Weak prompt:
        Write an attractive, SEO-friendly description for my bedsheet.

        Better prompt:
        Write a product description of about 180 words in 5 short parts:
        opening, how it is made, size and fit, care, a gift idea.
        Use ONLY the facts I paste below. Brand voice: warm, simple,
        proud of the craft. Do not use: luxury, premium, best, perfect.
        Use the phrase "block print bedsheet for housewarming gift" once.
        Then list any sentence that is not directly backed by a fact.
        Facts: [paste your fact sheet]</code></pre>
        </div>
        <div class="lc-card">
          <h3>Brand voice and rich content</h3>
          <p><strong>Brand voice</strong> is the personality of your writing. It should sound the same on every listing, your website and your packaging. Write it down as a short guide. Then paste the guide into every AI prompt, so drafts do not all sound like a generic advertisement.</p>
          <table class="lc-table">
            <thead><tr><th>Rangrez Crafts voice</th><th>We write like this</th><th>Not like this</th></tr></thead>
            <tbody>
              <tr><td>Warm and simple</td><td>"Bring a piece of Rajasthan to your bedroom."</td><td>"Elevate your sleep sanctuary."</td></tr>
              <tr><td>Proud of the craft, with facts</td><td>"Printed by hand with wooden blocks."</td><td>"Crafted by legendary master artisans."</td></tr>
              <tr><td>Honest</td><td>"A little colour bleed is normal in the first washes."</td><td>"Colours that never fade."</td></tr>
            </tbody>
          </table>
          <p><strong>Rich content</strong> is an extra section with images and text blocks, lower on the listing. On Amazon it is called <strong>A+ Content</strong>. It is available to brand owners enrolled in Amazon Brand Registry. Flipkart also has richer content options for some brands. Eligibility and module types change, so check Seller Central help and Seller Hub help.</p>
          <p>Neha's plan for her rich content section:</p>
          <ul class="lc-list">
            <li><strong>Brand story:</strong> a real photo of her Rajasthan workshop, with two lines about the brand.</li>
            <li><strong>How it is made:</strong> four real process photos: carving, printing, drying, washing.</li>
            <li><strong>Size chart:</strong> a simple drawing with the bedsheet and pillow cover sizes in inches and cm.</li>
            <li><strong>Care chart:</strong> icons for gentle wash, cold water, dry in shade and medium iron.</li>
          </ul>
          <p>AI can help write the short text for each module and suggest a layout. But images must show the real product. An AI-made image must not change the print, colour, size or quality of what the buyer will receive.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: Neha's description workflow</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put Neha's steps for writing a description in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Collect the proven facts from the fact sheet and the brand voice guide.</li>
              <li data-order="2">Ask the AI for a draft with a fixed structure, word count and banned words.</li>
              <li data-order="3">Check every claim in the draft against the fact sheet. Delete anything without proof.</li>
              <li data-order="4">Read the draft aloud. Cut hype and fix lines that do not sound like the brand.</li>
              <li data-order="5">Paste it into each channel and check the preview on a phone.</li>
              <li data-order="6">Publish, and save a copy with the date in the product's file.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Get a description, a rich content plan and a claim check. Replace the brackets with your own product, or use Neha's bedsheet.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a product copywriter for an Indian handmade brand.

        Brand: [Rangrez Crafts, Rajasthan]
        Brand voice: [warm, simple, proud of the craft, honest. Never use: luxury, premium, best, perfect, world-class]
        Product: [Buta Bagh hand block print double bedsheet set, blue buta flowers on white]
        Proven facts: [100% cotton, 144 thread count; 1 bedsheet 90 x 108 in + 2 pillow covers 17 x 27 in, envelope closure; hand printed with wooden blocks at our Rajasthan workshop; tested on a 72 x 78 in mattress, 6 in thick, about 3 in to tuck in on each long side; machine wash gentle, cold, wash separately for 2 washes (slight colour bleed); dry in shade; packed in a kraft paper box]
        Keyword to use once: [block print bedsheet for housewarming gift]

        Tasks:
        1. Write a description of 150 to 200 words in 5 short parts with subheadings: opening, how it is made, size and fit, care, use ideas.
        2. Suggest 4 rich content modules. For each, give a heading, 2 short lines of text and the real photo I need.
        3. Make a table: Sentence | Fact that supports it. Mark any sentence without a fact as REMOVE.

        Rules: use only the facts above. Give sizes in inches and cm. Write [NEEDS INFO] if something is missing.</pre>
            <ul class="ai-try-checks">
              <li>No banned words, and no claims that are not in your facts.</li>
              <li>The colour bleed note is there and easy to find.</li>
              <li>The sizes in cm are correct: 90 x 108 inches is 228.6 x 274.3 cm.</li>
              <li>Each rich content module asks for a real photo, not an AI image that changes the product.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A good description is a true story told in your brand's voice. Tie every story line to a fact, and keep it easy to read on a phone. Never let AI add claims or images that change the real product.
        </div>
      HTML
      starter_code: nil
    },
    8 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-ecom">E-commerce</div>
          <h1 class="lc-title">Attributes and Filters</h1>
        </div>
        <p class="lc-lead">Many buyers do not scroll through search results. They tick filters instead, such as "Cotton", "Double" or "Blue". These filters use the <strong>attributes</strong> you fill in: the fixed fields for material, size, colour and more. If an attribute is blank or wrong, your product can disappear from filtered results. In this lesson, you will learn how attributes work and how to fill them completely. You will use AI to draft them, and use a spreadsheet to catch mistakes.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="A buyer's filter panel with five ticked filters: cotton, double, blue, floral and 3 pieces. With all attributes filled, Neha's set appears in all five filtered results. With the pattern attribute left blank, the set is hidden when a buyer ticks Floral.">
            <defs><marker id="pl8a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <text x="380" y="22" font-weight="700" text-anchor="middle">Attributes feed the buyer's filters</text>
              <rect x="15" y="40" width="220" height="245" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="125" y="66" font-weight="700" fill="#93c5fd" text-anchor="middle">Buyer's filters</text>
              <g font-size="12">
                <rect x="35" y="86" width="14" height="14" rx="3" fill="#3b82f6"/>
                <text x="60" y="98">Material: Cotton</text>
                <rect x="35" y="124" width="14" height="14" rx="3" fill="#3b82f6"/>
                <text x="60" y="136">Bed size: Double</text>
                <rect x="35" y="162" width="14" height="14" rx="3" fill="#3b82f6"/>
                <text x="60" y="174">Colour: Blue</text>
                <rect x="35" y="200" width="14" height="14" rx="3" fill="#3b82f6"/>
                <text x="60" y="212">Pattern: Floral</text>
                <rect x="35" y="238" width="14" height="14" rx="3" fill="#3b82f6"/>
                <text x="60" y="250">Pieces: 3</text>
              </g>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#pl8a)">
                <line x1="237" y1="110" x2="286" y2="110"/>
                <line x1="237" y1="240" x2="286" y2="240"/>
              </g>
              <rect x="290" y="40" width="455" height="140" rx="10" fill="#27274e" stroke="#10b981"/>
              <text x="310" y="66" font-weight="700" fill="#6ee7b7">All attributes filled</text>
              <g font-size="12">
                <text x="310" y="92">Material: 100% Cotton · Bed size: Double</text>
                <text x="310" y="114">Colour: Blue · Pattern: Floral · Pieces: 3</text>
                <text x="310" y="136">Sheet: 228.6 x 274.3 cm · Covers: 43.2 x 68.6 cm</text>
              </g>
              <text x="310" y="162" font-size="12" fill="#6ee7b7">Result: the set shows up in all 5 filtered searches</text>
              <rect x="290" y="195" width="455" height="90" rx="10" fill="#27274e" stroke="#ec4899"/>
              <text x="310" y="221" font-weight="700" fill="#f9a8d4">Pattern left blank</text>
              <text x="310" y="245" font-size="12">A buyer ticks "Floral". The set is hidden from that search,</text>
              <text x="310" y="265" font-size="12">even though the title says "buta flower print".</text>
            </g>
          </svg>
          <figcaption>Filters read attributes, not your title. A blank field can hide a good product from buyers who use filters.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>What attributes do</h3>
          <p>An <strong>attribute</strong> is a fixed field that describes one fact about the product, such as material or colour. Each category has its own list. A bedsheet asks for bed size and thread count. A saree asks for fabric and blouse piece. Many attributes are <strong>drop-down lists</strong> with <strong>allowed values</strong>: you must choose one of the marketplace's words, not type your own.</p>
          <ul class="lc-list">
            <li><strong>Filters:</strong> when a buyer ticks "Cotton", the marketplace shows products whose material attribute says cotton.</li>
            <li><strong>Search:</strong> marketplaces may also use attributes to match searches. The details are not public, so do not guess. Just fill every field that is true.</li>
            <li><strong>Product page:</strong> attributes often appear in a details table on the listing. On some marketplaces, parts of the title are built from them.</li>
            <li><strong>Returns:</strong> wrong attributes bring the wrong buyers. A set listed as "King" can come back from a buyer whose king-size bed is bigger than the one Neha tested.</li>
          </ul>
          <p>Some attributes are required. Others are optional but still help. The list and the allowed values change, so read the category template and help text in Seller Central and Seller Hub.</p>
        </div>
        <div class="lc-card">
          <h3>Worked example: Neha's attribute sheet</h3>
          <p>Neha fills her attributes in a spreadsheet first, from her fact sheet. Each value has a source. If she does not know a value, she leaves it blank on purpose.</p>
          <table class="lc-table">
            <thead><tr><th>Attribute</th><th>Value</th><th>Source</th></tr></thead>
            <tbody>
              <tr><td>Brand</td><td>Rangrez Crafts</td><td>Own brand</td></tr>
              <tr><td>Product type</td><td>Bedsheet set</td><td>Fact sheet</td></tr>
              <tr><td>Material</td><td>100% Cotton</td><td>Mill test report</td></tr>
              <tr><td>Thread count</td><td>144</td><td>Mill spec sheet</td></tr>
              <tr><td>Bed size</td><td>Double</td><td>Fit test on a 72 x 78 inch mattress</td></tr>
              <tr><td>Bedsheet size</td><td>228.6 x 274.3 cm (90 x 108 in)</td><td>Measured</td></tr>
              <tr><td>Pillow cover size</td><td>43.2 x 68.6 cm (17 x 27 in)</td><td>Measured</td></tr>
              <tr><td>Number of pieces</td><td>3</td><td>Packed and counted</td></tr>
              <tr><td>Closure (pillow covers)</td><td>Envelope</td><td>Checked on the product</td></tr>
              <tr><td>Colour</td><td>Blue</td><td>Colour name on listings</td></tr>
              <tr><td>Pattern</td><td>Floral</td><td>Buta flower motifs</td></tr>
              <tr><td>Care</td><td>Machine wash, gentle, cold</td><td>Wash test on 3 sets</td></tr>
              <tr><td>Item weight</td><td>850 g</td><td>Weighed, unpacked</td></tr>
              <tr><td>Country of origin</td><td>India</td><td>Made in her workshop</td></tr>
              <tr><td>Shrinkage</td><td>(blank)</td><td>Not measured yet. Never guess.</td></tr>
            </tbody>
          </table>
          <p><strong>Map your words to allowed values.</strong> Neha calls the colour "blue buta on white". In her category template, the colour drop-down has "Blue", "White" and "Multicolour". She picks "Blue", the main print colour. She uses the same choice on every channel. Some forms also ask for "number of items" (packs) and "number of pieces" separately. Read the help text for each field.</p>
          <p><strong>Size names need care.</strong> Sellers use "double", "queen" and "king" in different ways. For example, some Indian mattress brands call a 72 x 78 inch mattress "king". Many bedsheet sellers call a 90 x 108 inch sheet a "double" bedsheet. Neha picks "Double", the name she uses on every channel, after reading the help text for this field. The exact sheet size and the tested mattress size remove any doubt.</p>
        </div>
        <div class="lc-card">
          <h3>Spreadsheet checks and a better prompt</h3>
          <p>Put one product per row and one attribute per column. Then use these formulas. They work in Excel and Google Sheets.</p>
          <table class="lc-table">
            <thead><tr><th>Check</th><th>Formula (row 2)</th><th>What it tells you</th></tr></thead>
            <tbody>
              <tr><td>Empty fields</td><td><code>=COUNTBLANK(C2:Q2)</code></td><td>How many attribute cells are empty. Each one should be blank on purpose.</td></tr>
              <tr><td>Title matches size</td><td><code>=IF(ISNUMBER(SEARCH("90 x 108",B2)),"OK","Check title")</code></td><td>Whether the title in B2 shows the same size as the attributes</td></tr>
              <tr><td>Pieces match</td><td><code>=IF(J2=3,"OK","Check pieces")</code></td><td>Whether the pieces column (J here) says 3, as counted</td></tr>
            </tbody>
          </table>
          <p>Also use <strong>data validation</strong> (a drop-down list inside a cell, found under the Data menu). Copy the marketplace's allowed values into it. Then nobody can type "Blu" or "cottn" by mistake.</p>
          <pre><code>Weak prompt:
        Fill in all the attributes for my bedsheet.

        Better prompt:
        Fill in the attribute table below using ONLY my fact sheet.
        For drop-down fields, choose from the allowed values I give.
        If a value is not in my facts, write NOT KNOWN. Do not guess.
        Output: Attribute | Value | Fact used.
        Attributes and allowed values: [paste from the category template]
        Fact sheet: [paste]</code></pre>
        </div>
        <div class="lc-card">
          <h3>Activity: Neha fills her attributes with AI</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Neha's prompt">Neha pastes her fact sheet and the category's attribute list. She asks the AI to fill each field and name the fact it used.</li>
              <li data-kind="answer" data-label="AI reply">The table is mostly right. But it says "Material: Organic Cotton", "Bed size: King" and "Shrinkage: less than 2%".</li>
              <li data-kind="warn" data-label="Catch this">"Organic" is not on the fact sheet, and there is no certificate. The shrinkage figure is invented: Neha never measured it.</li>
              <li data-kind="tool" data-label="Spreadsheet">She pastes the table into her attribute sheet. The bed size cell has a drop-down built from the marketplace's allowed values.</li>
              <li data-kind="result" data-label="Result">The list has both "Double" and "King". The AI picked "King" because the sheet is large.</li>
              <li data-kind="thought" data-label="Neha thinks">Size names differ between brands. I sell this as a double bedsheet, and I tested only a 72 x 78 inch mattress. So I keep "Double" and show the exact sizes.</li>
              <li data-kind="check" data-label="Neha checks">She sets Material to "100% Cotton" and Bed size to "Double", and clears the shrinkage cell. COUNTBLANK now shows 1: shrinkage, blank on purpose.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Get a complete attribute table with a source for every value. Replace the brackets with your own category and facts, or use Neha's bedsheet.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a marketplace catalogue specialist in India. Fill in the product attributes for my listing.

        Category: [Home &amp; Kitchen &gt; Bedsheets]
        Attributes to fill, with allowed values where I have them: [Brand; Product type; Material; Thread count; Bed size (Single, Double, Queen, King); Bedsheet size; Pillow cover size; Number of pieces; Closure type; Colour (Blue, White, Multicolour); Pattern (Floral, Solid, Geometric); Care instructions; Item weight; Country of origin; Shrinkage]
        Fact sheet: [Rangrez Crafts double bedsheet set. 100% cotton, 144 thread count. 1 bedsheet 90 x 108 in + 2 pillow covers 17 x 27 in, envelope closure. Blue buta flower print on white. Fit tested on a 72 x 78 in mattress. Machine wash gentle, cold. 850 g unpacked. Made in Rajasthan, India.]

        Tasks:
        1. Make a table: Attribute | Value | Fact used | Confidence (sure / check).
        2. For drop-down fields, use only the allowed values. Explain any choice that was hard.
        3. Give every size in cm and inches (1 inch = 2.54 cm).
        4. Write NOT KNOWN if the fact sheet does not say. Never guess.
        5. List 3 attributes that buyers may filter by that I should add to my fact sheet.</pre>
            <ul class="ai-try-checks">
              <li>Every value points to a real fact. Nothing like "organic" or a made-up shrinkage figure.</li>
              <li>Unknown fields say NOT KNOWN instead of a guess.</li>
              <li>The cm sizes are right: 228.6 x 274.3 cm and 43.2 x 68.6 cm.</li>
              <li>The allowed values match the real list in the marketplace's category template.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Filters read attributes, not your title. Fill every attribute that is true, choose the marketplace's allowed values carefully, and leave a field blank rather than guess.
        </div>
      HTML
      starter_code: nil
    },
    9 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-ecom">E-commerce</div>
          <h1 class="lc-title">Legal Information on Listings</h1>
        </div>
        <p class="lc-lead">In India, an online listing must show some legal information, not just marketing text. This includes the MRP, the net quantity, the country of origin, the manufacturer and the seller's details. Missing or wrong details can lead to complaints, penalties or a blocked listing. In this lesson, you will learn which details two sets of Indian rules ask for, and how to show net quantity for a textile set. You will also use AI to build a legal information block and a list of gaps. This lesson is general education, not legal advice. Check your own case with a lawyer or a legal metrology consultant.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 320" role="img" aria-label="Two sets of rules feed the legal information block of Neha's listing. The Legal Metrology (Packaged Commodities) Rules cover the pack: MRP, net quantity, maker and origin. The Consumer Protection (E-Commerce) Rules cover the seller, total price, returns and complaints. The block lists generic name, net quantity, sizes, MRP, country of origin, manufacturer, seller, consumer care, grievance officer and returns.">
            <defs><marker id="pl9a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="15" y="15" width="350" height="72" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="190" y="42" font-weight="700" fill="#fcd34d">Legal Metrology (Packaged Commodities) Rules</text>
              <text x="190" y="68" font-size="11.5" fill="#9b99b8">the pack: MRP, net quantity, maker, origin</text>
              <rect x="395" y="15" width="350" height="72" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="570" y="42" font-weight="700" fill="#93c5fd">Consumer Protection (E-Commerce) Rules</text>
              <text x="570" y="68" font-size="11.5" fill="#9b99b8">the seller: total price, returns, complaints</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#pl9a)">
                <line x1="190" y1="89" x2="190" y2="130"/>
                <line x1="570" y1="89" x2="570" y2="130"/>
              </g>
              <rect x="15" y="136" width="730" height="172" rx="12" fill="#27274e" stroke="#10b981"/>
              <text x="380" y="160" font-weight="700" fill="#6ee7b7">Buta Bagh listing: legal information</text>
              <g font-size="12" text-anchor="start">
                <text x="35" y="190">Generic name: Cotton Double Bedsheet Set</text>
                <text x="35" y="214">Net quantity: 1 set (3 pieces)</text>
                <text x="35" y="238">Sizes: 228.6 x 274.3 cm; 2 x 43.2 x 68.6 cm</text>
                <text x="35" y="262">MRP: ₹2,499.00 (incl. of all taxes)</text>
                <text x="35" y="286">Country of origin: India</text>
                <text x="395" y="190">Manufacturer: Rangrez Crafts, Rajasthan</text>
                <text x="395" y="214">Seller: Rangrez Crafts, GSTIN shown</text>
                <text x="395" y="238">Consumer care: email, phone, hours</text>
                <text x="395" y="262">Grievance officer: name and contact</text>
                <text x="395" y="286">Returns: 7 days, unused, unwashed</text>
              </g>
            </g>
          </svg>
          <figcaption>One set of rules covers what is in the pack. The other covers who sells it and on what terms. The listing needs both.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Two sets of rules, in plain words</h3>
          <p><strong>1. Legal Metrology (Packaged Commodities) Rules, 2011.</strong> "Legal metrology" means the law on weights, measures and pack labels. These rules list the <strong>declarations</strong> (required details) every pack must carry. They also say that an e-commerce seller or platform must show the same declarations on the listing. There is one exception. The month and year of manufacture must be on the pack, but the rules do not require it online.</p>
          <p><strong>2. Consumer Protection (E-Commerce) Rules, 2020.</strong> These rules cover online selling. Sellers on a marketplace must give details for the platform to show. These include:</p>
          <ul class="lc-list">
            <li>the seller's legal name, address and customer care contact;</li>
            <li>a <strong>grievance officer</strong> (the person who handles complaints) with contact details;</li>
            <li>the <strong>total price</strong>, with a breakup of other charges, such as delivery or cash on delivery fees;</li>
            <li>terms for returns, refunds, exchange, warranty, delivery and return shipping costs;</li>
            <li>the country of origin, and the importer's details for imported goods.</li>
          </ul>
          <p>On Amazon and Flipkart, much of the seller information comes from your seller account. Keep it correct. On her own Shopify store, Neha must show these details herself.</p>
          <p><strong>Also know:</strong> the CCPA (Central Consumer Protection Authority) issued dark pattern guidelines in 2023. They ban tricks such as false urgency, <strong>drip pricing</strong> (showing a low price and adding charges later) and <strong>basket sneaking</strong> (adding items to the cart without asking). In September 2026, the government notified amendments to the E-Commerce Rules, due to start on 1 January 2027. Reports say that when a price cut is announced, the "prior price" shown must be the lowest price of the previous 30 days. Reports also mention more seller details, such as the GSTIN. Read the final text with your lawyer.</p>
        </div>
        <div class="lc-card">
          <h3>The declarations for Neha's set</h3>
          <table class="lc-table">
            <thead><tr><th>Declaration</th><th>Buta Bagh example (made up)</th><th>Pack label</th><th>Listing</th></tr></thead>
            <tbody>
              <tr><td>Manufacturer and packer name and address</td><td>Rangrez Crafts, Plot 14, Block Printers Lane, Rajasthan</td><td>Yes</td><td>Yes</td></tr>
              <tr><td>Country of origin</td><td>India</td><td>Usually shown</td><td>Yes</td></tr>
              <tr><td>Common or generic name</td><td>Cotton Double Bedsheet with 2 Pillow Covers</td><td>Yes</td><td>Yes</td></tr>
              <tr><td>Net quantity, with the size of each piece</td><td>1 set (3 pieces). See the next card.</td><td>Yes</td><td>Yes</td></tr>
              <tr><td>MRP (maximum retail price)</td><td>₹2,499.00 (inclusive of all taxes)</td><td>Yes</td><td>Yes</td></tr>
              <tr><td>Month and year of manufacture</td><td>08/2026</td><td>Yes</td><td>Not required, but allowed</td></tr>
              <tr><td>Consumer care details</td><td>care@rangrezcrafts.example, +91 90000 00000, Mon to Sat, 10 am to 6 pm</td><td>Yes</td><td>Usually shown</td></tr>
            </tbody>
          </table>
          <p>The MRP is the highest price anyone may charge. Neha sells at ₹1,899, which is below the MRP. That is allowed. Her discount is ₹600, which is 24% of the MRP (600 ÷ 2,499 = 0.240).</p>
          <pre><code>Weak prompt:
        Write the legal information for my bedsheet listing.
        (The AI may invent an address, a GSTIN or a helpline number.)

        Better prompt:
        Arrange ONLY the details below into a legal information block.
        Do not add, change or guess any name, number or address.
        If a usual declaration is missing, list it under MISSING.
        Details: [paste your real label details]</code></pre>
        </div>
        <div class="lc-card">
          <h3>Net quantity for a textile set</h3>
          <p><strong>Net quantity</strong> means how much product the buyer gets, without the packing. It can be a weight, a length or a number. Bedsheets and pillow covers are sold by number. The rules also ask for the number and the <strong>finished size</strong> (the size of the final, hemmed piece) of items such as bedsheets, pillow covers and towels. If the pieces have different sizes, give each size.</p>
          <pre><code>Net quantity: 1 set (3 pieces)
          1 bedsheet: 228.6 cm x 274.3 cm (90 x 108 inches)
          2 pillow covers: 43.2 cm x 68.6 cm each (17 x 27 inches)</code></pre>
          <table class="lc-table">
            <thead><tr><th>Weak declaration</th><th>Problem</th></tr></thead>
            <tbody>
              <tr><td>"Net qty: 1"</td><td>One what? It does not say that the set has 3 pieces.</td></tr>
              <tr><td>"Approx. 229 x 274 cm"</td><td>The rules do not allow words like "about" or "approximately" in a quantity declaration.</td></tr>
              <tr><td>"90 x 108 inches" only</td><td>The rules use metric units, such as cm. Inches can be extra help for buyers.</td></tr>
              <tr><td>"Net weight: 850 g"</td><td>Weight does not tell the buyer the number of pieces or their size.</td></tr>
            </tbody>
          </table>
          <p><strong>Ask an expert about these points.</strong> The textile rule also mentions the price of each piece when the pieces differ in size. The rules also ask for a <strong>unit sale price</strong> (price per unit) on packs, with some exceptions. Ask a legal metrology consultant how both apply to a 3-piece set.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: where does it belong?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each item for Neha's set. Use the general rules from this lesson.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="listing" data-label="Show on the listing"></div>
              <div data-sorter-target="bucket" data-bucket="pack" data-label="Pack label (not required online)"></div>
              <div data-sorter-target="bucket" data-bucket="never" data-label="Never do this"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="listing" data-why="The MRP, inclusive of all taxes, is a required declaration on the pack and online.">MRP ₹2,499.00 (inclusive of all taxes)</li>
              <li data-bucket="listing" data-why="Net quantity is required online. For a textile set, give the number of pieces and each finished size.">Net quantity: 1 set (3 pieces), with the size of each piece</li>
              <li data-bucket="listing" data-why="The E-Commerce Rules ask sellers to show the country of origin to buyers before they buy.">Country of origin: India</li>
              <li data-bucket="listing" data-why="The E-Commerce Rules ask sellers to name a grievance officer with contact details.">The grievance officer's name and contact details</li>
              <li data-bucket="pack" data-why="It must be on the pack label. The rules leave it out of the online list, though showing it is allowed.">Month and year of manufacture: 08/2026</li>
              <li data-bucket="never" data-why="This is drip pricing: a charge added late. Show the total price and every charge before the buyer pays.">A ₹99 handling fee first shown at the last checkout step</li>
              <li data-bucket="never" data-why="Words like 'approx.' are not allowed in a quantity declaration. Give the measured size.">"Bedsheet size: approx. 229 x 274 cm" as the declaration</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Build a legal information block and a list of gaps and questions. Replace the brackets with your real details. Do not paste private customer data.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a compliance assistant for an Indian online seller. Give general guidance only, not legal advice.

        Product: [Rangrez Crafts double bedsheet set: 1 bedsheet 90 x 108 in + 2 pillow covers 17 x 27 in]
        My details: [Generic name: Cotton Double Bedsheet with 2 Pillow Covers. MRP: Rs 2,499 incl. of all taxes. Made in: India. Manufacturer and packer: Rangrez Crafts, Plot 14, Block Printers Lane, Rajasthan. Consumer care: care@rangrezcrafts.example. Returns: 7 days, unused, unwashed, in original packaging.]
        Where I sell: [Amazon, Flipkart and my own Shopify store]

        Tasks:
        1. Write a legal information block for the listing. Use ONLY my details. Never invent a name, number, address or GSTIN.
        2. Write the net quantity for a textile set: number of pieces and each finished size in cm, with inches in brackets. Do not use "about" or "approx.".
        3. List MISSING items that Indian listings usually need (think of the Legal Metrology Packaged Commodities Rules and the Consumer Protection E-Commerce Rules 2020).
        4. List 3 questions I should ask a lawyer or legal metrology consultant.</pre>
            <ul class="ai-try-checks">
              <li>No invented details: every name, number and address comes from your input.</li>
              <li>The cm sizes are right: 228.6 x 274.3 cm and 43.2 x 68.6 cm.</li>
              <li>The missing list includes things like a phone number, grievance officer and seller details, if you left them out.</li>
              <li>The AI says it is not legal advice. Check the rules' current text before you publish.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Legal details are facts, not marketing. Show the MRP, net quantity with exact sizes, country of origin, maker and seller details on every listing. Never let AI invent them, and check your own case with a qualified professional.
        </div>
      HTML
      starter_code: nil
    },
    10 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-ecom">E-commerce</div>
          <h1 class="lc-title">Amazon and Flipkart Listing Rules</h1>
        </div>
        <p class="lc-lead">Every marketplace has its own listing rules. They cover titles, bullets, images, search terms, brands and categories. If you break them, your listing can be hidden, blocked or removed. The rules change often, and they differ between categories and country sites. So you cannot learn them once and remember them. In this lesson, you will learn where the rules live and which rule areas matter most. You will also build a simple rule sheet and use AI to check a listing against the real rules, not against its memory.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="A five-step rule check: read the help pages, save the rules with the date, let AI check the draft against the pasted rules, decide and fix, then upload and watch for alerts. Below, four rule areas to check: titles, bullets and text, images, and search terms. A note says rules differ by marketplace, country site and category.">
            <defs><marker id="pl10a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="15" y="20" width="132" height="84" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="81" y="46" font-weight="700" fill="#93c5fd">1. Read help</text>
              <text x="81" y="68" font-size="11" fill="#9b99b8">Seller Central,</text>
              <text x="81" y="86" font-size="11" fill="#9b99b8">Seller Hub</text>
              <rect x="164" y="20" width="132" height="84" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="230" y="46" font-weight="700" fill="#c4b5fd">2. Save rules</text>
              <text x="230" y="68" font-size="11" fill="#9b99b8">copy the text</text>
              <text x="230" y="86" font-size="11" fill="#9b99b8">and the date</text>
              <rect x="313" y="20" width="132" height="84" rx="10" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="379" y="46" font-weight="700" fill="#67e8f9">3. AI checks</text>
              <text x="379" y="68" font-size="11" fill="#9b99b8">against pasted</text>
              <text x="379" y="86" font-size="11" fill="#9b99b8">rules only</text>
              <rect x="462" y="20" width="132" height="84" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="528" y="46" font-weight="700" fill="#6ee7b7">4. You decide</text>
              <text x="528" y="68" font-size="11" fill="#9b99b8">fix and re-check</text>
              <text x="528" y="86" font-size="11" fill="#9b99b8">every flag</text>
              <rect x="611" y="20" width="134" height="84" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="678" y="46" font-weight="700" fill="#fcd34d">5. Upload</text>
              <text x="678" y="68" font-size="11" fill="#9b99b8">watch alerts</text>
              <text x="678" y="86" font-size="11" fill="#9b99b8">and fix fast</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#pl10a)">
                <line x1="148" y1="62" x2="161" y2="62"/>
                <line x1="297" y1="62" x2="310" y2="62"/>
                <line x1="446" y1="62" x2="459" y2="62"/>
                <line x1="595" y1="62" x2="608" y2="62"/>
              </g>
              <text x="380" y="134" font-weight="700">Rule areas to check on every listing</text>
              <rect x="15" y="148" width="176" height="86" rx="10" fill="#27274e" stroke="#8b5cf6"/>
              <text x="103" y="172" font-weight="700" fill="#c4b5fd">Titles</text>
              <text x="103" y="196" font-size="11">no promo words, no CAPS</text>
              <text x="103" y="216" font-size="11">no repeated words</text>
              <rect x="200" y="148" width="176" height="86" rx="10" fill="#27274e" stroke="#3b82f6"/>
              <text x="288" y="172" font-weight="700" fill="#93c5fd">Bullets &amp; text</text>
              <text x="288" y="196" font-size="11">no price, offers, links</text>
              <text x="288" y="216" font-size="11">no contact details</text>
              <rect x="385" y="148" width="176" height="86" rx="10" fill="#27274e" stroke="#10b981"/>
              <text x="473" y="172" font-weight="700" fill="#6ee7b7">Images</text>
              <text x="473" y="196" font-size="11">main: the real product</text>
              <text x="473" y="216" font-size="11">check background rules</text>
              <rect x="570" y="148" width="175" height="86" rx="10" fill="#27274e" stroke="#ec4899"/>
              <text x="657" y="172" font-weight="700" fill="#f9a8d4">Search terms</text>
              <text x="657" y="196" font-size="11">no other brands' names</text>
              <text x="657" y="216" font-size="11">no untrue words</text>
              <rect x="15" y="250" width="730" height="36" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="380" y="273" font-size="12" fill="#fcd34d">Rules differ by marketplace, country site and category. They change often.</text>
            </g>
          </svg>
          <figcaption>Check each listing against rules you copied from the help pages, with the date. Never check against memory.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Where the rules live</h3>
          <ul class="lc-list">
            <li><strong>Amazon Seller Central help:</strong> listing policies and category <strong>style guides</strong> (rules for writing listings in one category). It also covers product detail pages, restricted products, and categories that need approval before you can sell.</li>
            <li><strong>Flipkart Seller Hub help:</strong> listing and image guidelines, brand approval, category rules and quality checks on new listings.</li>
          </ul>
          <p>Three things make rules hard to follow:</p>
          <ul class="lc-list">
            <li><strong>They change.</strong> A blog post from last year may be out of date.</li>
            <li><strong>They differ by country site.</strong> Advice for Amazon's US site may not apply on Amazon.in.</li>
            <li><strong>They differ by category.</strong> Home textiles, clothing and food each have their own rules.</li>
          </ul>
          <p>AI tools often state rules and limits with confidence, even when they are old or wrong. So never ask an AI "What are Amazon's rules?" and trust the answer. Instead, copy the rule text from the help page. Save it with the page name and the date you checked. Then give that text to the AI.</p>
        </div>
        <div class="lc-card">
          <h3>Common rule areas</h3>
          <p>The exact rules differ, but these areas come up on both marketplaces. Use them as a list of things to look up. Do not treat them as the final rules.</p>
          <table class="lc-table">
            <thead><tr><th>Area</th><th>What rules often cover</th><th>Neha's example</th></tr></thead>
            <tbody>
              <tr><td>Title</td><td>Maximum length, capital letters, special characters, repeated words. Amazon's published title rules ban promotional phrases such as "free shipping" and subjective words such as "best seller".</td><td>She removes "Free Delivery" that a helper added to the title.</td></tr>
              <tr><td>Bullets and description</td><td>No prices, discounts, delivery promises, phone numbers, website links or other brands' names</td><td>No "24% off" and no link to her Shopify store</td></tr>
              <tr><td>Images</td><td>The main image must show the real product. There are rules on background, extra items, text and image size.</td><td>A real photo of the folded set. No text or badges on the main image.</td></tr>
              <tr><td>Search terms field</td><td>A hidden field for extra keywords. Other brands' names, repeated words and untrue words are usually not allowed.</td><td>"jaipuri chadar double bed", but not "organic" or a competitor's brand</td></tr>
              <tr><td>Brand</td><td>The brand name must match your approved or registered brand exactly</td><td>"Rangrez Crafts" everywhere, with the same spelling</td></tr>
              <tr><td>Variations</td><td>Only true variants, such as colour or size, can be grouped under one parent listing</td><td>Blue and Mustard Yellow can be colour variants of one set</td></tr>
              <tr><td>Claims and documents</td><td>Some claims, such as certifications, need proof. Some categories need documents or approval.</td><td>No "organic" or "GI-tagged" claims</td></tr>
            </tbody>
          </table>
          <p><strong>Keep a rule sheet.</strong> Make a spreadsheet with these columns: Rule, Channel, Category, Source page, Date checked, How to check. Review it before every big upload and before every festival sale.</p>
        </div>
        <div class="lc-card">
          <h3>Check a listing with AI, the safe way</h3>
          <pre><code>Weak prompt:
        Does my listing follow Amazon's rules?
        (The AI answers from memory, which may be old or wrong.)

        Better prompt:
        Below are rules I copied today from Seller Central help, and my
        listing. Check the listing against EACH rule, one by one.
        Output: Rule | Pass or Fail | The exact words in my listing | Fix.
        Only use the rules I pasted. If you think another rule may apply,
        list it under "Rules to look up". Do not state any limits yourself.
        Rules: [paste]  Listing: [paste]</code></pre>
          <p><strong>What happens if a rule is broken?</strong> A listing may be <strong>suppressed</strong> (hidden from search until fixed), sent back for changes, or blocked. Repeated breaks can hurt your account's standing. Check your listing status and alerts in Seller Central and Seller Hub after every upload. Fix problems quickly, and add the lesson to your rule sheet.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: Neha checks her Amazon listing</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Neha's prompt">Neha pastes rules she copied from Seller Central help today, and her full listing. She asks the AI to check each rule and quote the words that break it.</li>
              <li data-kind="answer" data-label="AI reply">It flags "Free Delivery" in the title and another brand's name in the search terms. It also states a title length limit as a fact.</li>
              <li data-kind="warn" data-label="Catch this">That length limit is not in the rules she pasted. The AI took it from memory, so it may be old or wrong.</li>
              <li data-kind="tool" data-label="Seller Central help">She opens the style guide for her category and reads the current title rules.</li>
              <li data-kind="result" data-label="Result">The page gives the current rules. She adds them to her rule sheet with today's date and the page name.</li>
              <li data-kind="check" data-label="Neha checks">She removes "Free Delivery" and the other brand's name. She checks the title with =LEN() against the current rule, then uploads.</li>
              <li data-kind="check" data-label="Next day">She checks the listing status and alerts. There are no problems, so she saves the final version in her product file.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Check a listing against rules you paste in. Copy real rule text from Seller Central help or Seller Hub help into the first bracket. If you change nothing, the AI will use the sample rules.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a marketplace listing reviewer. Check my listing against the rules below, and only these rules.

        Marketplace and category: [Amazon.in, Home &gt; Bedsheets]
        Rules (copied from the help pages on [date]): [1. No promotional phrases such as free shipping or best seller. 2. No ALL CAPS words. 3. No price or discount in the title, bullets or description. 4. No other brands' names anywhere. 5. No contact details or website links. 6. No claims the seller cannot prove, such as organic without a certificate.]

        My listing:
        Title: [Rangrez Crafts Hand Block Print 100% Cotton Double Bedsheet with 2 Pillow Covers, 90 x 108 Inches, 144 TC, Blue - FREE DELIVERY]
        Bullet 1: [BEST Rajasthani bedsheet, now 24% off!]
        Search terms: [jaipuri chadar, [other brand name] bedsheet, organic]

        Tasks:
        1. Make a table: Rule | Pass or Fail | Exact words that break it | Suggested fix.
        2. Rewrite only the parts that fail. Keep every true fact.
        3. Under "Rules to look up", list other rule areas I should check in the help pages. Do not state any limits or numbers yourself.</pre>
            <ul class="ai-try-checks">
              <li>Each flag quotes the exact words from your listing.</li>
              <li>The AI used only your pasted rules and did not invent limits.</li>
              <li>The fixes keep your true facts, and add nothing new.</li>
              <li>Words like "organic" are flagged if your fact sheet cannot prove them.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Marketplace rules change and differ by site and category. Read them in Seller Central help and Seller Hub help, and save them with the date. Then have AI check your listing against that text, never against its memory.
        </div>
      HTML
      starter_code: nil
    },
    11 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-ecom">E-commerce</div>
          <h1 class="lc-title">Your Own Store: Shopify and SEO</h1>
        </div>
        <p class="lc-lead">On Amazon and Flipkart, buyers find you through the marketplace search bar. On your own Shopify store, many buyers arrive from Google instead. So your product page needs good <strong>SEO</strong> (search engine optimisation: making a page easy for search engines to find, understand and show). In this lesson, you will set up Neha's "Buta Bagh" bedsheet page on the Rangrez Crafts store. You will write an SEO title, a meta description, a web address and image alt text. You will plan collections. You will also learn the idea of <strong>structured data</strong> in plain words, and use AI to draft all of it from the fact sheet.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 320" role="img" aria-label="On the left, the fields of a Shopify product page: title, description, media with alt text, search engine listing, price and collections. An arrow goes from the search engine listing to a mock Google result showing the SEO title, the web address, the meta description and the price. Another arrow goes from the price to a box of structured data labels: name, brand, SKU, price, currency and availability.">
            <defs><marker id="pl11a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <rect x="15" y="15" width="340" height="290" rx="12" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="185" y="40" text-anchor="middle" font-weight="700" fill="#c4b5fd">Shopify admin: product page</text>
              <rect x="30" y="55" width="310" height="34" rx="6" fill="#27274e" stroke="#4b4a78"/>
              <text x="42" y="77" font-size="12" font-weight="700">Title</text>
              <text x="330" y="77" font-size="11" text-anchor="end" fill="#9b99b8">Buta Bagh Cotton Bedsheet Set</text>
              <rect x="30" y="95" width="310" height="34" rx="6" fill="#27274e" stroke="#4b4a78"/>
              <text x="42" y="117" font-size="12" font-weight="700">Description</text>
              <text x="330" y="117" font-size="11" text-anchor="end" fill="#9b99b8">story, size, fit, care</text>
              <rect x="30" y="135" width="310" height="34" rx="6" fill="#27274e" stroke="#ec4899"/>
              <text x="42" y="157" font-size="12" font-weight="700">Media + alt text</text>
              <text x="330" y="157" font-size="11" text-anchor="end" fill="#9b99b8">real photos</text>
              <rect x="30" y="175" width="310" height="34" rx="6" fill="#27274e" stroke="#3b82f6"/>
              <text x="42" y="197" font-size="12" font-weight="700" fill="#93c5fd">Search engine listing</text>
              <text x="330" y="197" font-size="11" text-anchor="end" fill="#9b99b8">title, meta, URL</text>
              <rect x="30" y="215" width="310" height="34" rx="6" fill="#27274e" stroke="#10b981"/>
              <text x="42" y="237" font-size="12" font-weight="700" fill="#6ee7b7">Price</text>
              <text x="330" y="237" font-size="11" text-anchor="end" fill="#9b99b8">₹1,899 (compare-at ₹2,499)</text>
              <rect x="30" y="255" width="310" height="34" rx="6" fill="#27274e" stroke="#4b4a78"/>
              <text x="42" y="277" font-size="12" font-weight="700">Collections</text>
              <text x="330" y="277" font-size="11" text-anchor="end" fill="#9b99b8">3 groups of products</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#pl11a)">
                <path d="M342,192 C375,192 372,95 399,95"/>
                <path d="M342,232 C375,232 372,250 399,250"/>
              </g>
              <rect x="405" y="15" width="340" height="160" rx="12" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="420" y="38" font-size="12" font-weight="700" fill="#93c5fd">In Google search (mock)</text>
              <text x="420" y="60" font-size="10.5" fill="#9b99b8">rangrezcrafts.example › products › buta-bagh-block-…</text>
              <text x="420" y="81" font-size="12.5" fill="#93c5fd">Hand Block Print Cotton Double Bedsheet Set,</text>
              <text x="420" y="98" font-size="12.5" fill="#93c5fd">Blue | Rangrez Crafts</text>
              <text x="420" y="119" font-size="11">Buta Bagh double bedsheet, hand-block-printed</text>
              <text x="420" y="135" font-size="11">in our Rajasthan workshop. 100% cotton…</text>
              <text x="420" y="159" font-size="11" fill="#6ee7b7">₹1,899 · In stock</text>
              <text x="540" y="159" font-size="10.5" fill="#9b99b8">(extra details: not guaranteed)</text>
              <rect x="405" y="190" width="340" height="115" rx="12" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="575" y="212" text-anchor="middle" font-weight="700" fill="#fcd34d">Structured data: hidden labels</text>
              <g font-size="11">
                <text x="420" y="238">name: page title</text>
                <text x="420" y="258">brand: Rangrez Crafts</text>
                <text x="420" y="278">sku: RC-BS-DBL-BUTA-BLU</text>
                <text x="590" y="238">price: 1899</text>
                <text x="590" y="258">priceCurrency: INR</text>
                <text x="590" y="278">availability: InStock</text>
              </g>
              <text x="575" y="298" text-anchor="middle" font-size="10" fill="#9b99b8">copied from the page by your theme or an app</text>
            </g>
          </svg>
          <figcaption>You fill in the product page. Google reads the search engine listing, and structured data repeats the page facts in labels machines understand.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The parts of a Shopify product page</h3>
          <p>In the Shopify admin, each product has a set of fields. Here is how Neha fills them for the new bedsheet. Menu names can change, so check the Shopify Help Center if a field looks different.</p>
          <table class="lc-table">
            <thead><tr><th>Field</th><th>What it does</th><th>Neha's value</th></tr></thead>
            <tbody>
              <tr><td><strong>Title</strong></td><td>The main heading on the product page</td><td>Buta Bagh Hand Block Print Cotton Double Bedsheet Set, Blue</td></tr>
              <tr><td><strong>Description</strong></td><td>The main text on the page</td><td>Workshop story, what is in the box, size in inches and cm, fit test, care, honest notes, FAQ</td></tr>
              <tr><td><strong>Media</strong></td><td>Photos and videos, each with alt text</td><td>Sheet on a real bed, print close-up, pillow covers, the kraft box, a short printing video</td></tr>
              <tr><td><strong>Price and compare-at price</strong></td><td>Shopify shows the compare-at price crossed out next to the price</td><td>Price ₹1,899. Compare-at ₹2,499, because that is the real MRP.</td></tr>
              <tr><td><strong>Variants and SKU</strong></td><td>Options such as colour, each with its own SKU and stock</td><td>Colour: Blue. SKU: RC-BS-DBL-BUTA-BLU</td></tr>
              <tr><td><strong>Search engine listing</strong></td><td>The page title, meta description and URL handle that search engines see</td><td>See the next card</td></tr>
              <tr><td><strong>Collections</strong></td><td>Puts the product into groups that buyers can browse</td><td>Hand Block Print Bedsheets, Double Bedsheets, Housewarming Gifts</td></tr>
            </tbody>
          </table>
          <p><strong>Alt text</strong> is a short description of an image. Screen readers read it aloud to people who cannot see the image. Search engines also use it to understand the image. Describe what is really in the photo: "Blue buta flower hand block print cotton double bedsheet on a bed with 2 pillow covers".</p>
          <p>Only use a compare-at price that is real. A made-up "was" price is a false discount. The Consumer Protection (E-Commerce) Rules, 2020 also apply to your own store. Show seller details, the total price, the return policy and a grievance contact. This is general education, not legal advice.</p>
        </div>
        <div class="lc-card">
          <h3>SEO title, meta description and URL</h3>
          <ul class="lc-list">
            <li><strong>SEO title</strong> (also called the page title): the clickable headline in Google results. Put the main search words first and the brand at the end.</li>
            <li><strong>Meta description:</strong> the short summary under the headline. Google says it does not use it for ranking. But a good one helps people decide to click. Google sometimes writes its own summary from your page text instead.</li>
            <li><strong>URL handle:</strong> the last part of the web address. Use lowercase words joined by hyphens.</li>
          </ul>
          <pre><code>Product page title:  Buta Bagh Hand Block Print Cotton Double Bedsheet Set, Blue
        SEO title:           Hand Block Print Cotton Double Bedsheet Set, Blue | Rangrez Crafts
                             (=LEN() gives 66 characters)
        Meta description:    Buta Bagh double bedsheet, hand-block-printed in our Rajasthan
                             workshop. 100% cotton, 144 TC, 90 x 108 in, with 2 pillow
                             covers. Cold machine wash.   (=LEN() gives 147 characters)
        URL handle:          buta-bagh-block-print-double-bedsheet-blue
        Full address:        rangrezcrafts.example/products/buta-bagh-block-print-double-bedsheet-blue</code></pre>
          <p>Google cuts long titles and descriptions to fit the screen. The cut depends on the width of the text, not a fixed number of characters. So keep the key words near the start. Shopify shows a preview of the search result as you type. Use it.</p>
          <p>If you change a URL handle later, old links to the page can break. Shopify can create a <strong>redirect</strong> (a rule that sends visitors from the old address to the new one). Make sure that option is ticked when you save.</p>
          <pre><code>Weak prompt:
        Write SEO for my bedsheet product page.

        Better prompt:
        You are a Shopify SEO writer. Using ONLY the facts below, write 3 SEO
        titles (main keyword first, "| Rangrez Crafts" at the end) and 2 meta
        descriptions (what it is + one proof point + a reason to click).
        Main keyword: hand block print cotton double bedsheet.
        Facts: [paste fact sheet]. No "best", "luxury", "organic" or fake urgency.</code></pre>
          <p>Do not copy your Amazon description word for word onto your store. When many pages share the same text, search engines may show only one of them. Your own page is also the place for the full workshop story and a short FAQ.</p>
        </div>
        <div class="lc-card">
          <h3>Collections: pages that match broader searches</h3>
          <p>A <strong>collection</strong> is a page that groups products, such as "Double Bedsheets". In Shopify, you add products to a collection by hand, or you set rules, such as "product type is Bedsheet". Collection pages can rank in Google for broader searches than one product page can.</p>
          <table class="lc-table">
            <thead><tr><th>Collection</th><th>Keyword it targets</th><th>SEO title</th></tr></thead>
            <tbody>
              <tr><td>Hand Block Print Bedsheets</td><td>hand block print bedsheet</td><td>Hand Block Print Bedsheets from Rajasthan | Rangrez Crafts</td></tr>
              <tr><td>Double Bedsheets</td><td>cotton double bedsheet</td><td>Cotton Double Bedsheets with Pillow Covers | Rangrez Crafts</td></tr>
              <tr><td>Housewarming Gifts</td><td>block print bedsheet for housewarming gift</td><td>Handmade Housewarming Gifts from Rajasthan | Rangrez Crafts</td></tr>
            </tbody>
          </table>
          <p>Give each collection 2 or 3 sentences of real introduction text. A page with only a grid of photos gives Google little to read.</p>
        </div>
        <div class="lc-card">
          <h3>Structured data, in plain words</h3>
          <p><strong>Structured data</strong> is a set of hidden labels on your page. Buyers do not see it. It tells search engines, in a fixed format, "This page is a product. Its price is ₹1,899. It is in stock." Google's name for these labels on a product page is <strong>Product structured data</strong>.</p>
          <table class="lc-table">
            <thead><tr><th>Label</th><th>Neha's value</th><th>Where it comes from</th></tr></thead>
            <tbody>
              <tr><td>name</td><td>Buta Bagh Hand Block Print Cotton Double Bedsheet Set, Blue</td><td>Product title</td></tr>
              <tr><td>brand</td><td>Rangrez Crafts</td><td>Vendor field</td></tr>
              <tr><td>sku</td><td>RC-BS-DBL-BUTA-BLU</td><td>Variant SKU</td></tr>
              <tr><td>price and currency</td><td>1899, INR</td><td>Variant price</td></tr>
              <tr><td>availability</td><td>In stock</td><td>Inventory</td></tr>
              <tr><td>rating</td><td>Only real ratings shown on the page</td><td>A reviews app, if you use one</td></tr>
            </tbody>
          </table>
          <p>You usually do not write this yourself. Many Shopify themes add Product structured data automatically, and some apps add more. Check your theme's help pages. Your job is to keep the page facts right, because the labels copy them. Then test the page with Google's Rich Results Test, and watch Google Search Console.</p>
          <ul class="lc-list">
            <li>The labels must match what buyers can see on the page. A different price or a rating that is not on the page breaks Google's rules.</li>
            <li>Never add fake reviews or ratings. That also breaks Indian consumer rules.</li>
            <li>Google decides whether to show extra details like price or stars. Structured data makes it possible, not certain.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Activity: which field is this text for?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Neha's AI draft gave her these pieces of text. Sort each one into the Shopify field it fits, or reject it.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="seo" data-label="SEO title"></div>
              <div data-sorter-target="bucket" data-bucket="meta" data-label="Meta description"></div>
              <div data-sorter-target="bucket" data-bucket="alt" data-label="Image alt text"></div>
              <div data-sorter-target="bucket" data-bucket="no" data-label="Do not use"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="seo" data-why="It is short, starts with the main search words and ends with the brand. That is a good SEO title pattern.">"Hand Block Print Cotton Double Bedsheet Set, Blue | Rangrez Crafts"</li>
              <li data-bucket="meta" data-why="It is a full sentence summary with true facts and a reason to click. That is the job of a meta description.">"Buta Bagh double bedsheet, hand-block-printed in our Rajasthan workshop. 100% cotton, 144 TC, with 2 pillow covers."</li>
              <li data-bucket="meta" data-why="It summarises the product and mentions the real 7-day return policy. It is too long for a title, but fine for a meta description.">"Shop our 100% cotton Rajasthani bedsheet set: 90 x 108 inches, printed by hand in Rajasthan. Easy returns within 7 days."</li>
              <li data-bucket="alt" data-why="It plainly describes what is in one photo. That helps screen reader users and search engines.">"Close-up of blue buta flower block print on white cotton"</li>
              <li data-bucket="alt" data-why="It describes a real photo: the sheet on a bed with the pillow covers.">"Blue hand block print double bedsheet on a bed with 2 pillow covers"</li>
              <li data-bucket="no" data-why="This is keyword stuffing. The words best and luxury are also claims Neha cannot prove.">"Best Luxury Bedsheet India Cheap Bedsheet Buy Online Bedsheet"</li>
              <li data-bucket="no" data-why="Neha has no organic certificate. An SEO title must be as true as the listing.">"Organic Rajasthani Bedsheet | Rangrez Crafts"</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Get a full SEO pack for one Shopify product page. Change the facts in brackets to your product, or use Neha's bedsheet.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a Shopify SEO writer for a small Indian brand.

        Product facts (use ONLY these): [Rangrez Crafts "Buta Bagh" double bedsheet set. 1 bedsheet 90 x 108 inches + 2 pillow covers 17 x 27 inches. 100% cotton, 144 thread count. Blue buta flower print on white, hand-block-printed in our workshop in Rajasthan. Machine wash gentle, cold. MRP Rs 2,499, price Rs 1,899, in stock.]
        Main keywords: [jaipuri cotton bedsheet double bed, hand block print bedsheet, double bedsheet with 2 pillow covers]

        Write:
        1. A product page title.
        2. 3 SEO titles: main keyword first, brand at the end.
        3. 2 meta descriptions: what it is, one proof point, a reason to click. No fake urgency.
        4. A URL handle: lowercase words joined by hyphens.
        5. Alt text for 4 photos: sheet on a bed, print close-up, pillow covers, gift box.
        6. 3 collection names, each with a 2-sentence intro.
        7. A table of structured data labels (name, brand, SKU, price, currency, availability) with values from my facts. Write [NEEDS INFO] if a value is missing.

        Rules: No claims beyond my facts. Do not count characters; I will check lengths with =LEN().</pre>
            <ul class="ai-try-checks">
              <li>No word like "organic", "natural dyes", "luxury" or "best" appears anywhere.</li>
              <li>The structured data price is 1899 in INR and matches the page price. There is no rating unless you have real reviews.</li>
              <li>Check SEO title and meta lengths with =LEN() and in Shopify's search preview.</li>
              <li>The URL handle has no spaces, capital letters or repeated words.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> On your own store, Google is the search bar. Write a clear SEO title and meta description from true facts, and keep the page facts right. Structured data only repeats those facts for machines. It must never add new ones.
        </div>
      HTML
      starter_code: nil
    },
    12 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-ecom">E-commerce</div>
          <h1 class="lc-title">Listings in Indian Languages</h1>
        </div>
        <p class="lc-lead">Many Indian buyers are more comfortable reading in Hindi, Tamil, Marathi, Bengali or another Indian language. A listing in their language can answer their questions more clearly. AI can draft a translation in seconds. But a small translation mistake can change a fact, such as the size unit or the way the product is made. In this lesson, you will write a short Hindi version of Neha's bedsheet listing. You will learn which words must stay exactly the same, the traps AI falls into, and how to get every translation checked by a native speaker.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="A five-step translation workflow: approved English facts, a glossary of words to keep, an AI draft in Hindi, a back-translation to English, and a check by a native speaker. Below, one box lists what must stay exactly the same, and another lists common AI translation traps.">
            <defs><marker id="pl12a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="10" y="20" width="128" height="76" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="74" y="52" font-size="12" font-weight="700" fill="#6ee7b7">1. English facts</text>
              <text x="74" y="74" font-size="10.5" fill="#9b99b8">approved listing</text>
              <rect x="163" y="20" width="128" height="76" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="227" y="52" font-size="12" font-weight="700" fill="#fcd34d">2. Glossary</text>
              <text x="227" y="74" font-size="10.5" fill="#9b99b8">words to keep</text>
              <rect x="316" y="20" width="128" height="76" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="380" y="52" font-size="12" font-weight="700" fill="#c4b5fd">3. AI draft</text>
              <text x="380" y="74" font-size="10.5" fill="#9b99b8">short Hindi text</text>
              <rect x="469" y="20" width="128" height="76" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="533" y="52" font-size="11.5" font-weight="700" fill="#93c5fd">4. Back-translate</text>
              <text x="533" y="74" font-size="10.5" fill="#9b99b8">compare facts</text>
              <rect x="622" y="20" width="128" height="76" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="686" y="52" font-size="12" font-weight="700" fill="#f9a8d4">5. Native check</text>
              <text x="686" y="74" font-size="10.5" fill="#9b99b8">a person reads it</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#pl12a)">
                <line x1="140" y1="58" x2="159" y2="58"/>
                <line x1="293" y1="58" x2="312" y2="58"/>
                <line x1="446" y1="58" x2="465" y2="58"/>
                <line x1="599" y1="58" x2="618" y2="58"/>
              </g>
              <path d="M533,98 L533,116 L380,116 L380,102" fill="none" stroke="#fca5a5" stroke-width="1.5" stroke-dasharray="4 3" marker-end="url(#pl12a)"/>
              <text x="456" y="132" font-size="11" fill="#fca5a5">fact changed? fix the draft</text>
              <rect x="10" y="148" width="360" height="140" rx="12" fill="#27274e" stroke="#10b981"/>
              <text x="190" y="173" font-weight="700" fill="#6ee7b7">Keep exactly the same</text>
              <g font-size="12" text-anchor="start">
                <text x="30" y="198">• Brand: Rangrez Crafts</text>
                <text x="30" y="220">• Sizes and units: 90 x 108 इंच</text>
                <text x="30" y="242">• 100% कॉटन, 144 TC, 3 पीस</text>
                <text x="30" y="264">• MRP ₹2,499, SKU, digits 0-9</text>
              </g>
              <rect x="390" y="148" width="360" height="140" rx="12" fill="#27274e" stroke="#ec4899"/>
              <text x="570" y="173" font-weight="700" fill="#f9a8d4">Traps to catch</text>
              <g font-size="12" text-anchor="start">
                <text x="410" y="198">• हथकरघा = handloom: false</text>
                <text x="410" y="220">• सेमी instead of इंच</text>
                <text x="410" y="242">• Honest bleed note dropped</text>
                <text x="410" y="264">• Word-for-word, unnatural Hindi</text>
              </g>
            </g>
          </svg>
          <figcaption>Translate from approved facts only. Then check the facts again in the new language, and let a native speaker read it before it goes live.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Where Indian-language listings help</h3>
          <ul class="lc-list">
            <li><strong>Marketplaces:</strong> Amazon and Flipkart let shoppers use their apps in Hindi and some other Indian languages. How your listing appears there differs. Some text may be machine-translated, and some fields may let you add your own. Check Seller Central help and Seller Hub help for your category.</li>
            <li><strong>Your Shopify store:</strong> Shopify lets you add more languages to your store. You then add translations by hand or with a translation app. Check the Shopify Help Center for the current steps.</li>
            <li><strong>Search words:</strong> many buyers type Hindi words in English letters. This mix is called <strong>Hinglish</strong>, for example "jaipuri chadar double bed". Others type in Hindi script, for example "जयपुरी चादर". Both can go in keyword fields, if the marketplace allows them.</li>
            <li><strong>WhatsApp and chat replies:</strong> the same checked Hindi text helps you answer buyer questions quickly.</li>
          </ul>
          <p>Start with one language that many of your buyers use. Neha starts with Hindi, because many of her buyers are in north India. Add Tamil or Bengali only when you have a native speaker to check them.</p>
        </div>
        <div class="lc-card">
          <h3>A short Hindi listing for the bedsheet</h3>
          <p>Keep the Hindi version short and simple. Use everyday words that buyers really use, even English words written in Hindi script, such as "बेडशीट" and "कॉटन". Keep the brand in English letters, the way it is registered.</p>
          <pre><code>DRAFT: to be checked by a native Hindi speaker before publishing

        शीर्षक (Title):
        Rangrez Crafts हैंड ब्लॉक प्रिंट 100% कॉटन डबल बेडशीट, 2 तकिया कवर के साथ,
        90 x 108 इंच, 144 TC, नीला

        मुख्य बातें (Key features):
        • सेट में 3 पीस: 1 डबल बेडशीट (90 x 108 इंच) + 2 तकिया कवर (17 x 27 इंच)
        • 100% कॉटन, 144 थ्रेड काउंट
        • जयपुर के सांगानेर में हमारी अपनी वर्कशॉप में लकड़ी के ब्लॉक से हाथ से छपाई
        • हमने इसे 72 x 78 इंच और 6 इंच मोटे गद्दे पर जाँचा है
        • मशीन में जेंटल साइकिल पर ठंडे पानी से धोएँ। पहली 2 धुलाई अलग से करें।
          छाँव में सुखाएँ।
        • पहली धुलाई में थोड़ा रंग निकल सकता है। हाथ की छपाई में हर पीस थोड़ा अलग
          हो सकता है।

        MRP ₹2,499 (सभी करों सहित)</code></pre>
          <p>Every number matches the English fact sheet: 3 pieces, 90 x 108 inches, 17 x 27 inches, 144 thread count, 72 x 78 inch mattress, 2 washes and ₹2,499. The honest notes about colour bleed and print differences are still there.</p>
          <p>A <strong>back-translation</strong> is a translation of the Hindi text back into English, done separately. You compare it with your English facts. For example, the third feature comes back as "Printed by hand with wooden blocks at our own workshop in Rajasthan". That matches the fact sheet.</p>
        </div>
        <div class="lc-card">
          <h3>Translation traps AI falls into</h3>
          <table class="lc-table">
            <thead><tr><th>AI wrote</th><th>What it really means</th><th>Fix</th></tr></thead>
            <tbody>
              <tr><td>हथकरघा बेडशीट</td><td>"Handloom bedsheet". False: the fabric is mill-woven.</td><td>हैंड ब्लॉक प्रिंट बेडशीट</td></tr>
              <tr><td>90 x 108 सेमी</td><td>90 x 108 cm, a much smaller sheet</td><td>90 x 108 इंच</td></tr>
              <tr><td>पक्का रंग</td><td>"Fast colour" (colourfast). Not true: her wash test showed slight bleed.</td><td>Keep the honest bleed note</td></tr>
              <tr><td>दोहरा बिस्तर चादर</td><td>A word-for-word "double bed sheet" that sounds odd</td><td>डबल बेडशीट</td></tr>
              <tr><td>९० x १०८</td><td>Correct, but in Hindi digits, unlike your attribute fields</td><td>Use 90 x 108 everywhere</td></tr>
            </tbody>
          </table>
          <p>Notice the pattern. AI does not only translate. It sometimes "improves" the text with a new claim, such as "पक्का रंग". So check the translation against the fact sheet, just like an English draft.</p>
          <p>Neha speaks Hindi, but she wrote the English text, so she may miss mistakes. She asks Sunita, her workshop supervisor, to proofread. Sunita reads and writes Hindi every day. For any language you do not read well, always use a native speaker. Never publish an unchecked translation. The Hindi in this lesson is also example text, so a native speaker should check it before you reuse it.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: Neha translates her listing</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Neha's prompt">Translate my bedsheet bullets into Hindi for Amazon.</li>
              <li data-kind="answer" data-label="AI reply">"हथकरघा से बनी 100% कॉटन बेडशीट, 90 x 108 सेमी। पक्का रंग, धोने पर रंग नहीं जाता।"</li>
              <li data-kind="warn" data-label="Catch this">हथकरघा means handloom, which is false. सेमी means cm, not inches. पक्का रंग and "colour does not run" are new claims that her wash test disproves.</li>
              <li data-kind="user" data-label="Better prompt">She pastes the approved English bullets and a glossary. She adds: "Keep all numbers and units. Do not add or remove claims. Hand block print is not handloom. Keep the colour-bleed note."</li>
              <li data-kind="answer" data-label="AI reply">The AI gives the short Hindi draft shown in this lesson, with "इंच" and the bleed note.</li>
              <li data-kind="tool" data-label="New AI chat">Neha opens a fresh chat and asks for an English translation of the Hindi draft, without showing the original.</li>
              <li data-kind="result" data-label="Result">The back-translation says 90 x 108 inches, 3 pieces, hand-printed with wooden blocks, and "some colour may come out in the first wash". It matches the fact sheet.</li>
              <li data-kind="check" data-label="Sunita checks">Sunita reads the Hindi. She says many buyers also say "पिलो कवर", so Neha adds it to the keyword list. Sunita then approves the text.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Translate an approved listing with a built-in fact check. Change the language and listing in brackets, or use Neha's.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a careful English-to-[Hindi] translator for Indian e-commerce listings.

        Translate my approved listing into short, simple [Hindi] that online buyers really use.

        Listing: [Title: Rangrez Crafts Hand Block Print 100% Cotton Double Bedsheet with 2 Pillow Covers, 90 x 108 Inches, 144 TC, Blue.
        Bullets: 1 bedsheet (90 x 108 inches) + 2 pillow covers (17 x 27 inches). Hand-block-printed with wooden blocks at our workshop in Rajasthan. 100% cotton, 144 thread count. Machine wash gentle, cold; wash separately for the first 2 washes. Slight colour bleed is normal in the first wash.]

        Rules:
        - Keep the brand name, every number, every unit (inches) and prices exactly as written. Use digits 0-9.
        - Do not add or remove any claim. Keep the colour-bleed note.
        - Hand block print is NOT handloom. Never use a word that means handloom.
        - Prefer everyday words, even English words written in the local script.

        Output:
        1. First line: DRAFT - CHECK WITH A NATIVE [HINDI] SPEAKER
        2. A table: English | [Hindi] | Back-translation to English
        3. Words you were unsure about, with 2 options each
        4. 5 search words buyers may type, in the script and in English letters</pre>
            <ul class="ai-try-checks">
              <li>Every number and unit matches the English: 90 x 108 inches, not cm.</li>
              <li>No word means handloom, organic, natural dyes or colourfast.</li>
              <li>The colour-bleed note is still there.</li>
              <li>A native speaker reads and approves the text before it goes live.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A translation is a new listing, so it needs the same fact check. Keep numbers, units and the brand exactly the same, back-translate to catch changed facts, and never publish without a native speaker's check.
        </div>
      HTML
      starter_code: nil
    },
    13 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-ecom">E-commerce</div>
          <h1 class="lc-title">Managing a Big Catalogue with Spreadsheets</h1>
        </div>
        <p class="lc-lead">One product is easy to list by hand. But Neha's "Buta Bagh" design now comes in 4 colours and 2 sizes. That is 8 variants, each needing a title, price, SKU and checks on 3 sales channels. Your <strong>catalogue</strong> is the full list of products you sell. When it grows, a spreadsheet becomes your main tool. In this lesson, you will build a master sheet for the 8 variants. You will use formulas to build titles, work out discounts and flag problems. You will then use AI to write text in bulk, and use more formulas to check what it wrote.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 330" role="img" aria-label="A mock spreadsheet for the Buta Bagh range with 8 rows. Columns show SKU, size, colour, MRP, price, discount, title length, wash test and a check column. Four rows say OK, three say HOLD: WASH TEST, and one says PRICE ABOVE MRP because the price was typed as 1,941. The formula bar shows the check formula.">
            <defs><marker id="pl13a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <text x="15" y="24" font-weight="700" fill="#6ee7b7">Master sheet: Buta Bagh range, 8 variants</text>
              <text x="745" y="24" text-anchor="end" font-size="11" fill="#9b99b8">some columns hidden · made-up data</text>
              <rect x="15" y="38" width="730" height="34" rx="6" fill="#1f1f44" stroke="#3b82f6"/>
              <rect x="23" y="45" width="30" height="20" rx="4" fill="#27274e"/>
              <text x="38" y="59" text-anchor="middle" font-size="11" font-style="italic" fill="#93c5fd">fx</text>
              <text x="64" y="60" font-size="11" font-weight="700" fill="#93c5fd">L7</text>
              <text x="92" y="60" font-size="11">=IF(G7&gt;F7,"PRICE ABOVE MRP",IF(K7&lt;&gt;"YES","HOLD: WASH TEST","OK"))</text>
              <rect x="15" y="92" width="730" height="24" fill="#27274e" stroke="#4b4a78"/>
              <text x="46" y="108" font-size="11" font-weight="700" fill="#c4b5fd">SKU</text>
              <text x="182" y="108" font-size="11" font-weight="700" fill="#c4b5fd">Size</text>
              <text x="240" y="108" font-size="11" font-weight="700" fill="#c4b5fd">Colour</text>
              <text x="344" y="108" font-size="11" font-weight="700" fill="#c4b5fd">MRP ₹</text>
              <text x="400" y="108" font-size="11" font-weight="700" fill="#c4b5fd">Price ₹</text>
              <text x="458" y="108" font-size="11" font-weight="700" fill="#c4b5fd">Disc %</text>
              <text x="510" y="108" font-size="11" font-weight="700" fill="#c4b5fd">Length</text>
              <text x="562" y="108" font-size="11" font-weight="700" fill="#c4b5fd">Wash test</text>
              <text x="630" y="108" font-size="11" font-weight="700" fill="#c4b5fd">Check</text>
              <rect x="15" y="116" width="730" height="22" fill="#1f1f44" stroke="#34345e"/>
              <text x="21" y="131" font-size="11" fill="#9b99b8">2</text>
              <text x="46" y="131" font-size="11" fill="#e2e0f0">RC-BS-DBL-BUTA-BLU</text>
              <text x="182" y="131" font-size="11" fill="#e2e0f0">Double</text>
              <text x="240" y="131" font-size="11" fill="#e2e0f0">Blue</text>
              <text x="344" y="131" font-size="11" fill="#e2e0f0">2,499</text>
              <text x="400" y="131" font-size="11" fill="#e2e0f0">1,899</text>
              <text x="458" y="131" font-size="11" fill="#e2e0f0">24</text>
              <text x="510" y="131" font-size="11" fill="#e2e0f0">111</text>
              <text x="562" y="131" font-size="11" fill="#e2e0f0">YES</text>
              <text x="630" y="131" font-size="11" fill="#6ee7b7">OK</text>
              <rect x="15" y="138" width="730" height="22" fill="#232350" stroke="#34345e"/>
              <text x="21" y="153" font-size="11" fill="#9b99b8">3</text>
              <text x="46" y="153" font-size="11" fill="#e2e0f0">RC-BS-SGL-BUTA-BLU</text>
              <text x="182" y="153" font-size="11" fill="#e2e0f0">Single</text>
              <text x="240" y="153" font-size="11" fill="#e2e0f0">Blue</text>
              <text x="344" y="153" font-size="11" fill="#e2e0f0">1,499</text>
              <text x="400" y="153" font-size="11" fill="#e2e0f0">1,149</text>
              <text x="458" y="153" font-size="11" fill="#e2e0f0">23</text>
              <text x="510" y="153" font-size="11" fill="#e2e0f0">109</text>
              <text x="562" y="153" font-size="11" fill="#e2e0f0">YES</text>
              <text x="630" y="153" font-size="11" fill="#6ee7b7">OK</text>
              <rect x="15" y="160" width="730" height="22" fill="#1f1f44" stroke="#34345e"/>
              <text x="21" y="175" font-size="11" fill="#9b99b8">4</text>
              <text x="46" y="175" font-size="11" fill="#e2e0f0">RC-BS-DBL-BUTA-MUS</text>
              <text x="182" y="175" font-size="11" fill="#e2e0f0">Double</text>
              <text x="240" y="175" font-size="11" fill="#e2e0f0">Mustard Yellow</text>
              <text x="344" y="175" font-size="11" fill="#e2e0f0">2,499</text>
              <text x="400" y="175" font-size="11" fill="#e2e0f0">1,899</text>
              <text x="458" y="175" font-size="11" fill="#e2e0f0">24</text>
              <text x="510" y="175" font-size="11" fill="#e2e0f0">121</text>
              <text x="562" y="175" font-size="11" fill="#e2e0f0">YES</text>
              <text x="630" y="175" font-size="11" fill="#6ee7b7">OK</text>
              <rect x="15" y="182" width="730" height="22" fill="#232350" stroke="#34345e"/>
              <text x="21" y="197" font-size="11" fill="#9b99b8">5</text>
              <text x="46" y="197" font-size="11" fill="#e2e0f0">RC-BS-SGL-BUTA-MUS</text>
              <text x="182" y="197" font-size="11" fill="#e2e0f0">Single</text>
              <text x="240" y="197" font-size="11" fill="#e2e0f0">Mustard Yellow</text>
              <text x="344" y="197" font-size="11" fill="#e2e0f0">1,499</text>
              <text x="400" y="197" font-size="11" fill="#e2e0f0">1,149</text>
              <text x="458" y="197" font-size="11" fill="#e2e0f0">23</text>
              <text x="510" y="197" font-size="11" fill="#e2e0f0">119</text>
              <text x="562" y="197" font-size="11" fill="#e2e0f0">YES</text>
              <text x="630" y="197" font-size="11" fill="#6ee7b7">OK</text>
              <rect x="15" y="204" width="730" height="22" fill="#1f1f44" stroke="#34345e"/>
              <text x="21" y="219" font-size="11" fill="#9b99b8">6</text>
              <text x="46" y="219" font-size="11" fill="#e2e0f0">RC-BS-DBL-BUTA-PNK</text>
              <text x="182" y="219" font-size="11" fill="#e2e0f0">Double</text>
              <text x="240" y="219" font-size="11" fill="#e2e0f0">Rose Pink</text>
              <text x="344" y="219" font-size="11" fill="#e2e0f0">2,499</text>
              <text x="400" y="219" font-size="11" fill="#e2e0f0">1,899</text>
              <text x="458" y="219" font-size="11" fill="#e2e0f0">24</text>
              <text x="510" y="219" font-size="11" fill="#e2e0f0">116</text>
              <text x="562" y="219" font-size="11" fill="#fcd34d">NO</text>
              <text x="630" y="219" font-size="11" fill="#fcd34d" font-weight="700">HOLD: WASH TEST</text>
              <rect x="15" y="226" width="730" height="22" fill="#232350" stroke="#34345e"/>
              <text x="21" y="241" font-size="11" fill="#9b99b8">7</text>
              <text x="46" y="241" font-size="11" fill="#e2e0f0">RC-BS-SGL-BUTA-PNK</text>
              <text x="182" y="241" font-size="11" fill="#e2e0f0">Single</text>
              <text x="240" y="241" font-size="11" fill="#e2e0f0">Rose Pink</text>
              <text x="344" y="241" font-size="11" fill="#e2e0f0">1,499</text>
              <text x="400" y="241" font-size="11" fill="#fca5a5">1,941</text>
              <text x="458" y="241" font-size="11" fill="#fca5a5">-29</text>
              <text x="510" y="241" font-size="11" fill="#e2e0f0">114</text>
              <text x="562" y="241" font-size="11" fill="#fcd34d">NO</text>
              <text x="630" y="241" font-size="11" fill="#fca5a5" font-weight="700">PRICE ABOVE MRP</text>
              <rect x="15" y="248" width="730" height="22" fill="#1f1f44" stroke="#34345e"/>
              <text x="21" y="263" font-size="11" fill="#9b99b8">8</text>
              <text x="46" y="263" font-size="11" fill="#e2e0f0">RC-BS-DBL-BUTA-GRN</text>
              <text x="182" y="263" font-size="11" fill="#e2e0f0">Double</text>
              <text x="240" y="263" font-size="11" fill="#e2e0f0">Sage Green</text>
              <text x="344" y="263" font-size="11" fill="#e2e0f0">2,499</text>
              <text x="400" y="263" font-size="11" fill="#e2e0f0">1,899</text>
              <text x="458" y="263" font-size="11" fill="#e2e0f0">24</text>
              <text x="510" y="263" font-size="11" fill="#e2e0f0">117</text>
              <text x="562" y="263" font-size="11" fill="#fcd34d">NO</text>
              <text x="630" y="263" font-size="11" fill="#fcd34d" font-weight="700">HOLD: WASH TEST</text>
              <rect x="15" y="270" width="730" height="22" fill="#232350" stroke="#34345e"/>
              <text x="21" y="285" font-size="11" fill="#9b99b8">9</text>
              <text x="46" y="285" font-size="11" fill="#e2e0f0">RC-BS-SGL-BUTA-GRN</text>
              <text x="182" y="285" font-size="11" fill="#e2e0f0">Single</text>
              <text x="240" y="285" font-size="11" fill="#e2e0f0">Sage Green</text>
              <text x="344" y="285" font-size="11" fill="#e2e0f0">1,499</text>
              <text x="400" y="285" font-size="11" fill="#e2e0f0">1,149</text>
              <text x="458" y="285" font-size="11" fill="#e2e0f0">23</text>
              <text x="510" y="285" font-size="11" fill="#e2e0f0">115</text>
              <text x="562" y="285" font-size="11" fill="#fcd34d">NO</text>
              <text x="630" y="285" font-size="11" fill="#fcd34d" font-weight="700">HOLD: WASH TEST</text>
              <line x1="40" y1="92" x2="40" y2="292" stroke="#34345e"/>
              <line x1="176" y1="92" x2="176" y2="292" stroke="#34345e"/>
              <line x1="234" y1="92" x2="234" y2="292" stroke="#34345e"/>
              <line x1="338" y1="92" x2="338" y2="292" stroke="#34345e"/>
              <line x1="394" y1="92" x2="394" y2="292" stroke="#34345e"/>
              <line x1="452" y1="92" x2="452" y2="292" stroke="#34345e"/>
              <line x1="504" y1="92" x2="504" y2="292" stroke="#34345e"/>
              <line x1="556" y1="92" x2="556" y2="292" stroke="#34345e"/>
              <line x1="624" y1="92" x2="624" y2="292" stroke="#34345e"/>
              <text x="15" y="318" font-size="11" fill="#9b99b8">Green: ready. Amber: needs proof first. Red: a typo to fix before upload. Row 7's price is above its MRP.</text>
            </g>
          </svg>
          <figcaption>Formulas do the repeat work and flag problems in every row. You fix the flagged rows before anything is uploaded.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Master sheets, bulk templates and variations</h3>
          <ul class="lc-list">
            <li><strong>Master sheet:</strong> one spreadsheet with every fact about every product, one row per variant. It is your single source of truth. Every channel is filled from it.</li>
            <li><strong>Bulk template:</strong> a spreadsheet file from a marketplace or store. You fill it in and upload it to add or edit many listings at once. Amazon, Flipkart and Shopify each have their own. Columns and steps change, so download a fresh template and read Seller Central help, Seller Hub help or the Shopify Help Center first.</li>
            <li><strong>Variation:</strong> one product sold in several options, such as sizes and colours. Buyers see one listing and pick an option. On marketplaces, a <strong>parent</strong> listing groups the <strong>child</strong> listings. Each child is one variant with its own SKU, price and stock.</li>
          </ul>
          <table class="lc-table">
            <thead><tr><th>Level</th><th>SKU</th><th>What it is</th></tr></thead>
            <tbody>
              <tr><td>Parent</td><td>RC-BS-BUTA</td><td>The group "Buta Bagh Bedsheet Set". It is not sold by itself.</td></tr>
              <tr><td>Child</td><td>RC-BS-DBL-BUTA-BLU</td><td>Double, Blue: 1 bedsheet 90 x 108 inches + 2 pillow covers</td></tr>
              <tr><td>Child</td><td>RC-BS-SGL-BUTA-BLU</td><td>Single, Blue: 1 bedsheet 60 x 90 inches + 1 pillow cover</td></tr>
              <tr><td>Child</td><td>…6 more</td><td>Mustard Yellow, Rose Pink and Sage Green, each in Double and Single</td></tr>
            </tbody>
          </table>
          <p>Neha's SKUs follow one pattern: brand, product, size, design, colour. A clear pattern makes sorting, filtering and formulas much easier. The single sets have an MRP of ₹1,499 and a selling price of ₹1,149. All sizes and prices here are made up for practice.</p>
        </div>
        <div class="lc-card">
          <h3>Formulas that do the repeat work</h3>
          <p>Neha's master sheet has these columns. Row 1 has the headers. The 8 variants are in rows 2 to 9. She types the formulas in row 2, then drags them down to row 9.</p>
          <table class="lc-table">
            <thead><tr><th>A</th><th>B</th><th>C</th><th>D</th><th>E</th><th>F</th><th>G</th><th>H</th><th>I</th><th>J</th><th>K</th><th>L</th></tr></thead>
            <tbody>
              <tr><td>SKU</td><td>Size</td><td>Colour</td><td>Pillow covers</td><td>Sheet size</td><td>MRP</td><td>Price</td><td>Discount %</td><td>Title</td><td>Length</td><td>Wash test done?</td><td>Check</td></tr>
            </tbody>
          </table>
          <pre><code>H2  Discount %:
        =ROUND((F2-G2)/F2*100,0)
            Row 2 gives 24   (600 / 2,499 = 24.01%)
            Row 3 gives 23   (350 / 1,499 = 23.35%)

        I2  Title, built from the columns:
        ="Rangrez Crafts Hand Block Print 100% Cotton "&amp;B2&amp;" Bedsheet with "
         &amp;IF(D2=1,"1 Pillow Cover",D2&amp;" Pillow Covers")&amp;", "&amp;E2&amp;" Inches, 144 TC, "&amp;C2
            Row 2 gives: Rangrez Crafts Hand Block Print 100% Cotton Double Bedsheet
                         with 2 Pillow Covers, 90 x 108 Inches, 144 TC, Blue

        J2  Length:
        =LEN(I2)
            Row 2 gives 111. Row 4 (Mustard Yellow, Double) gives 121.

        L2  Check:
        =IF(G2&gt;F2,"PRICE ABOVE MRP",IF(K2&lt;&gt;"YES","HOLD: WASH TEST","OK"))

        M2  Duplicate SKU check:
        =COUNTIF($A$2:$A$9,A2)
            Should be 1. A 2 means the same SKU is typed twice.</code></pre>
          <p>The <code>&amp;</code> sign joins pieces of text. The <code>$</code> signs keep the range <code>A2:A9</code> fixed when you drag the formula down. Type the whole title formula on one line. It is split here only to fit the page.</p>
          <table class="lc-table">
            <thead><tr><th>Row</th><th>Variant</th><th>Discount %</th><th>Length</th><th>Check</th><th>What Neha does</th></tr></thead>
            <tbody>
              <tr><td>2 to 5</td><td>Blue and Mustard Yellow, both sizes</td><td>24 or 23</td><td>109 to 121</td><td>OK</td><td>Compares lengths with the current style guide</td></tr>
              <tr><td>6, 8, 9</td><td>Rose Pink Double, Sage Green Double and Single</td><td>24 or 23</td><td>115 to 117</td><td>HOLD: WASH TEST</td><td>Runs wash tests on the new colours first</td></tr>
              <tr><td>7</td><td>Rose Pink Single, price typed as ₹1,941</td><td>-29</td><td>114</td><td>PRICE ABOVE MRP</td><td>Fixes the typo to ₹1,149. In India, you must not charge more than the MRP.</td></tr>
            </tbody>
          </table>
          <p>The formula builds every title the same way, so no title has a typo or a missing size. It cannot judge whether the title is good. Read a few titles yourself, and check the marketplace's current length rule.</p>
        </div>
        <div class="lc-card">
          <h3>AI in bulk, with formula checks</h3>
          <p>Next, Neha wants one colour bullet and one size bullet for each variant. She pastes the 8 rows into an AI chat. She asks for a table with the SKU in the first column. She pastes the reply into a new sheet tab called "AI". The master sheet then pulls each bullet in by SKU and checks it.</p>
          <pre><code>N2  Pull the AI text in by SKU:
        =IFERROR(VLOOKUP(A2,AI!$A:$B,2,FALSE),"MISSING")

        O2  Banned-word check (words listed in Q2:Q6: organic,
            natural dye, handloom, luxury, colourfast):
        =IF(SUMPRODUCT(--ISNUMBER(SEARCH($Q$2:$Q$6,N2)))&gt;0,"BANNED WORD","OK")</code></pre>
          <table class="lc-table">
            <thead><tr><th>Row</th><th>What the formulas showed</th><th>Why</th></tr></thead>
            <tbody>
              <tr><td>5</td><td>O5: BANNED WORD</td><td>The AI wrote "a rich mustard shade from natural dyes". SEARCH found "natural dye" inside "natural dyes".</td></tr>
              <tr><td>9</td><td>N9: MISSING</td><td>The AI changed the SKU to "RC-BS-SGL-BUTA-GREEN", so VLOOKUP could not find it.</td></tr>
            </tbody>
          </table>
          <ul class="lc-list">
            <li>Keep the word list free of empty cells. SEARCH treats an empty cell as a match, so every row would say BANNED WORD.</li>
            <li>Formulas catch patterns, not every mistake. Read every flagged row, plus a few "OK" rows in full.</li>
            <li>With hundreds of rows, send them to AI in smaller batches. Long replies are more likely to skip or change rows.</li>
            <li>Paste only product data. Never paste customer names, phone numbers or order details into a public AI tool.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Activity: a bulk update, in order</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put Neha's steps for listing the 8 variants in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Fill the master sheet with facts, one row per variant, including the wash test status.</li>
              <li data-order="2">Add formulas for discount, title, length and checks in row 2, then drag them down.</li>
              <li data-order="3">Fix every flagged row, such as the price typed above the MRP.</li>
              <li data-order="4">Send the approved rows to AI and ask for a table with the SKU in the first column.</li>
              <li data-order="5">Paste the AI reply into its own tab and pull it in by SKU with VLOOKUP.</li>
              <li data-order="6">Check MISSING and BANNED WORD flags, and read a sample of rows in full.</li>
              <li data-order="7">Copy the final columns into a fresh bulk template, upload it and read the upload report for errors.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Write bullets for many variants in one go, in a format you can paste back into a spreadsheet. Replace the rows in brackets with your own, or use Neha's.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a catalogue assistant for a small Indian brand. Write 1 colour bullet and 1 size bullet for each variant below.

        SKU | Size | Colour | Pieces | Sheet size (inches) | Wash test done
        [RC-BS-DBL-BUTA-BLU | Double | Blue | 3 | 90 x 108 | YES
        RC-BS-SGL-BUTA-BLU | Single | Blue | 2 | 60 x 90 | YES
        RC-BS-DBL-BUTA-MUS | Double | Mustard Yellow | 3 | 90 x 108 | YES
        RC-BS-SGL-BUTA-MUS | Single | Mustard Yellow | 2 | 60 x 90 | YES
        RC-BS-DBL-BUTA-PNK | Double | Rose Pink | 3 | 90 x 108 | NO
        RC-BS-SGL-BUTA-PNK | Single | Rose Pink | 2 | 60 x 90 | NO
        RC-BS-DBL-BUTA-GRN | Double | Sage Green | 3 | 90 x 108 | NO
        RC-BS-SGL-BUTA-GRN | Single | Sage Green | 2 | 60 x 90 | NO]

        Rules:
        - Return one table: SKU | Colour bullet | Size bullet. One row per SKU, same order. Copy each SKU exactly.
        - Size bullet: number of pieces, and sheet size in inches and cm (1 inch = 2.54 cm, round to whole cm).
        - If wash test is NO, add [HOLD: CARE TEXT AFTER WASH TEST]. Make no colour or washing claims for that row.
        - Never use: organic, natural dye, handloom, luxury, colourfast.
        - Below the table, write how many rows you returned.</pre>
            <ul class="ai-try-checks">
              <li>There is one row for every SKU, and each SKU is copied exactly. Check with COUNTIF or VLOOKUP.</li>
              <li>The cm sizes are right: 90 x 108 inches is about 229 x 274 cm, and 60 x 90 inches is about 152 x 229 cm.</li>
              <li>Rows with wash test NO carry the HOLD note and no washing claims.</li>
              <li>Run the banned-word formula on the bullets before you use them.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> In a big catalogue, keep one master sheet of true facts. Let formulas build and check the repeat parts. Let AI draft text in a table keyed by SKU. Then use more formulas to flag the rows you must read by hand.
        </div>
      HTML
      starter_code: nil
    },
    14 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-ecom">E-commerce</div>
          <h1 class="lc-title">Improving Listings with Data</h1>
        </div>
        <p class="lc-lead">A listing is never finished on launch day. After it goes live, your seller dashboards show how buyers behave. They show how often buyers see it, click it, buy it and return it. Buyers also leave reviews and ask questions in their own words. In this lesson, you will read Neha's first 30 days of made-up data for the "Buta Bagh" bedsheet. You will calculate the key numbers yourself, find where buyers drop off and use AI to group reviews and questions. Then you will learn how to test a change fairly, so you know if it really helped.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 310" role="img" aria-label="A four-stage buyer funnel for the Amazon listing in its first 30 days, with made-up numbers. Seen in search: 38,000 impressions. Clicked: 660 clicks, a CTR of 1.7 percent. Ordered: 30 orders from 1,200 sessions, a conversion rate of 2.5 percent. Kept: 3 returns from 30 orders, a return rate of 10 percent. Each stage lists what to check if it is weak. Below, four steps for testing a fix: log the change, change one thing, wait 30 days, then compare and keep or undo.">
            <defs><marker id="pl14a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="380" y="20" font-weight="700">Amazon listing, first 30 days (made-up data)</text>
              <rect x="15" y="32" width="165" height="190" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="97" y="56" font-weight="700" fill="#93c5fd">1. Seen in search</text>
              <text x="97" y="80" font-size="12" font-weight="700">Impressions</text>
              <text x="97" y="97" font-size="11" fill="#9b99b8">times shown in search</text>
              <text x="97" y="126" font-size="15" font-weight="700" fill="#93c5fd">38,000</text>
              <text x="97" y="144" font-size="10.5" fill="#9b99b8">top 5 search terms</text>
              <line x1="27" y1="158" x2="168" y2="158" stroke="#4b4a78"/>
              <text x="97" y="176" font-size="11" fill="#9b99b8">If weak, check:</text>
              <text x="97" y="194" font-size="11.5">keywords in title,</text>
              <text x="97" y="210" font-size="11.5">attributes filled</text>
              <rect x="205" y="32" width="165" height="190" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="287" y="56" font-weight="700" fill="#c4b5fd">2. Clicked</text>
              <text x="287" y="80" font-size="12" font-weight="700">CTR</text>
              <text x="287" y="97" font-size="11" fill="#9b99b8">clicks ÷ impressions</text>
              <text x="287" y="126" font-size="15" font-weight="700" fill="#c4b5fd">1.7%</text>
              <text x="287" y="144" font-size="10.5" fill="#9b99b8">660 clicks ÷ 38,000</text>
              <line x1="217" y1="158" x2="358" y2="158" stroke="#4b4a78"/>
              <text x="287" y="176" font-size="11" fill="#9b99b8">If weak, check:</text>
              <text x="287" y="194" font-size="11.5">main image, title,</text>
              <text x="287" y="210" font-size="11.5">price shown</text>
              <rect x="395" y="32" width="165" height="190" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="477" y="56" font-weight="700" fill="#6ee7b7">3. Ordered</text>
              <text x="477" y="80" font-size="12" font-weight="700">Conversion rate</text>
              <text x="477" y="97" font-size="11" fill="#9b99b8">orders ÷ sessions</text>
              <text x="477" y="126" font-size="15" font-weight="700" fill="#6ee7b7">2.5%</text>
              <text x="477" y="144" font-size="10.5" fill="#9b99b8">30 orders ÷ 1,200</text>
              <line x1="407" y1="158" x2="548" y2="158" stroke="#4b4a78"/>
              <text x="477" y="176" font-size="11" fill="#9b99b8">If weak, check:</text>
              <text x="477" y="194" font-size="11.5">photos, size info,</text>
              <text x="477" y="210" font-size="11.5">bullets, questions</text>
              <rect x="585" y="32" width="160" height="190" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="665" y="56" font-weight="700" fill="#fcd34d">4. Kept</text>
              <text x="665" y="80" font-size="12" font-weight="700">Return rate</text>
              <text x="665" y="97" font-size="11" fill="#9b99b8">returns ÷ orders</text>
              <text x="665" y="126" font-size="15" font-weight="700" fill="#fcd34d">10.0%</text>
              <text x="665" y="144" font-size="10.5" fill="#9b99b8">3 returns ÷ 30</text>
              <line x1="597" y1="158" x2="733" y2="158" stroke="#4b4a78"/>
              <text x="665" y="176" font-size="11" fill="#9b99b8">If weak, check:</text>
              <text x="665" y="194" font-size="11.5">honest size, colour</text>
              <text x="665" y="210" font-size="11.5">and care details</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#pl14a)">
                <line x1="182" y1="127" x2="201" y2="127"/>
                <line x1="372" y1="127" x2="391" y2="127"/>
                <line x1="562" y1="127" x2="581" y2="127"/>
              </g>
              <text x="380" y="246" font-size="12" font-weight="700" fill="#f9a8d4">Then test one fix at a time</text>
              <rect x="15" y="256" width="165" height="40" rx="8" fill="#27274e" stroke="#ec4899"/>
              <text x="97" y="281" font-size="12">Log the change</text>
              <rect x="205" y="256" width="165" height="40" rx="8" fill="#27274e" stroke="#ec4899"/>
              <text x="287" y="281" font-size="12">Change one thing</text>
              <rect x="395" y="256" width="165" height="40" rx="8" fill="#27274e" stroke="#ec4899"/>
              <text x="477" y="281" font-size="12">Wait 30 days</text>
              <rect x="585" y="256" width="160" height="40" rx="8" fill="#27274e" stroke="#ec4899"/>
              <text x="665" y="281" font-size="12">Compare, keep or undo</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#pl14a)">
                <line x1="182" y1="276" x2="201" y2="276"/>
                <line x1="372" y1="276" x2="391" y2="276"/>
                <line x1="562" y1="276" x2="581" y2="276"/>
              </g>
            </g>
          </svg>
          <figcaption>Each stage has its own number. Find the weakest stage first, then fix the part of the listing that affects it.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The numbers to watch</h3>
          <table class="lc-table">
            <thead><tr><th>Number</th><th>What it means</th><th>Formula</th></tr></thead>
            <tbody>
              <tr><td><strong>Impressions</strong></td><td>How many times your product was shown in search results</td><td>Counted by the platform</td></tr>
              <tr><td><strong>CTR</strong> (click-through rate)</td><td>The share of people who saw your product in search and clicked it</td><td>clicks ÷ impressions × 100</td></tr>
              <tr><td><strong>Sessions</strong></td><td>Visits to your product page, from search, ads, links or anywhere else</td><td>Counted by the platform</td></tr>
              <tr><td><strong>Conversion rate</strong></td><td>The share of visits that ended in an order</td><td>orders ÷ sessions × 100</td></tr>
              <tr><td><strong>Return rate</strong></td><td>The share of orders that buyers sent back</td><td>returns ÷ orders × 100</td></tr>
            </tbody>
          </table>
          <p>You find these numbers in seller reports. Amazon has business reports in Seller Central. Flipkart has listing and sales reports in Seller Hub. Shopify has Analytics. For your own store, Google Search Console shows the searches that brought people from Google. Names differ between platforms. Some count units, not orders. For example, Amazon's business reports show a "unit session percentage". Check each platform's help pages for exact meanings.</p>
          <p>Neha downloads her first 30 days (made-up numbers) into a spreadsheet. Column A is the channel, B is sessions, C is orders and D is returns. In E2 she types <code>=C2/B2</code>, and in F2 she types <code>=D2/C2</code>. She formats both as percentages with 1 decimal place, then drags them down.</p>
          <table class="lc-table">
            <thead><tr><th>Channel</th><th>Sessions</th><th>Orders</th><th>Returns</th><th>Conversion rate (E)</th><th>Return rate (F)</th></tr></thead>
            <tbody>
              <tr><td>Amazon</td><td>1,200</td><td>30</td><td>3</td><td>2.5%</td><td>10.0%</td></tr>
              <tr><td>Flipkart</td><td>900</td><td>27</td><td>1</td><td>3.0%</td><td>3.7%</td></tr>
              <tr><td>Shopify store</td><td>600</td><td>9</td><td>0</td><td>1.5%</td><td>0.0%</td></tr>
            </tbody>
          </table>
          <p>Amazon has the most visits, but also the most returns. That is where Neha looks first. The Shopify store converts less, but many of its visitors come from Instagram and are only browsing. So compare each channel with its own past numbers, not with other channels. Also, 3 returns is a small number. Read the return reasons before you decide anything.</p>
        </div>
        <div class="lc-card">
          <h3>Search terms: what buyers typed</h3>
          <p>Some marketplaces show sellers or brand owners a <strong>search term report</strong>. It lists the words buyers typed before they saw or clicked your product. Which report you can see depends on the platform and your account, so check Seller Central help and Seller Hub help. Here are Neha's top 5 Amazon search terms for the first 30 days (made up).</p>
          <table class="lc-table">
            <thead><tr><th>Search term</th><th>Impressions</th><th>Clicks</th><th>CTR</th><th>Orders</th><th>Orders ÷ clicks</th></tr></thead>
            <tbody>
              <tr><td>cotton double bedsheet</td><td>20,000</td><td>200</td><td>1.0%</td><td>4</td><td>2.0%</td></tr>
              <tr><td>jaipuri bedsheet</td><td>6,000</td><td>150</td><td>2.5%</td><td>6</td><td>4.0%</td></tr>
              <tr><td>double bedsheet with 2 pillow covers</td><td>5,000</td><td>100</td><td>2.0%</td><td>5</td><td>5.0%</td></tr>
              <tr><td>king size bedsheet cotton</td><td>4,000</td><td>120</td><td>3.0%</td><td>0</td><td>0.0%</td></tr>
              <tr><td>hand block print bedsheet</td><td>3,000</td><td>90</td><td>3.0%</td><td>5</td><td>5.6%</td></tr>
              <tr><td><strong>Total</strong></td><td>38,000</td><td>660</td><td>1.7%</td><td>20</td><td>3.0%</td></tr>
            </tbody>
          </table>
          <p>The other 10 of her 30 orders came from other searches, ads and links. What does the table tell Neha?</p>
          <ul class="lc-list">
            <li><strong>"cotton double bedsheet"</strong> is shown the most, but only 1.0% click. Her small main image may not stand out. The main image and the start of the title are what buyers see in search results.</li>
            <li><strong>"king size bedsheet cotton"</strong> gets many clicks but no orders. "King size" means different bed sizes to different buyers. The listing did not show clearly how the sheet fits. Neha must not add "king size" to fix this. She must make the exact size clearer.</li>
            <li><strong>"hand block print bedsheet"</strong> and <strong>"jaipuri bedsheet"</strong> work well. Keep these words near the start of the title.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Reviews and questions: the buyer's own words</h3>
          <p>Numbers show <em>where</em> buyers drop off. Reviews, questions and return reasons show <em>why</em>. In 30 days, Neha has 12 reviews, 3 return reasons and 15 buyer questions. AI is good at grouping this kind of text into themes. Remove buyer names, phone numbers and order numbers before you paste anything into an AI tool.</p>
          <pre><code>Weak prompt:
        Summarise my reviews.

        Better prompt:
        Group these reviews, questions and return reasons into themes.
        For each theme give: how many times it appears, 2 short quotes,
        and which part of the listing could answer it (title, images,
        bullets, description). Use only the text I paste. Do not invent
        counts. Do not suggest any new product feature.
        [paste the text, with names and numbers removed]</code></pre>
          <table class="lc-table">
            <thead><tr><th>Theme (made up)</th><th>Count</th><th>What it tells Neha</th></tr></thead>
            <tbody>
              <tr><td>"Will it fit my bed?" (questions) and "smaller than expected" (returns)</td><td>6 + 2</td><td>The size and fit test are not clear enough. They sit low in the description.</td></tr>
              <tr><td>"Colour came out in the first wash"</td><td>2 reviews + 1 return</td><td>The honest care note exists, but buyers do not see it before buying</td></tr>
              <tr><td>"Beautiful print, looks handmade"</td><td>7 reviews</td><td>The workshop story works. Show a close-up of the print.</td></tr>
            </tbody>
          </table>
          <p>Count the themes yourself too, because AI can miscount. Then act honestly. Answer questions with true facts. Reply to bad reviews politely, and never hide or delete them. Never buy reviews or offer gifts only for good ones. The BIS standard IS 19000:2022 and marketplace policies cover how reviews are collected and shown. Most of all, never remove the colour-bleed note to sell more. It would bring more returns and angry reviews.</p>
        </div>
        <div class="lc-card">
          <h3>Testing a change fairly</h3>
          <p>A <strong>change log</strong> is a simple sheet where you note every listing change. Without it, you will not remember what changed when your numbers move.</p>
          <pre><code>Day      | Channel | What changed                  | Why (data)              | Watch
        Day 31   | Amazon  | Photo on a real bed; size in  | 6 fit questions,        | Conversion,
                 |         | inches and cm in bullet 1;    | 2 "too small" returns,  | return rate
                 |         | care note moved to bullet 3   | 2 colour reviews        |</code></pre>
          <ul class="lc-list">
            <li><strong>Change one thing at a time</strong> when you can. Then you know which change helped.</li>
            <li><strong>Compare periods of the same length</strong>, such as 30 days before and 30 days after.</li>
            <li><strong>Check for other causes.</strong> A price change, new ads, a festival sale or a competitor's stock-out can all move the numbers.</li>
            <li><strong>Be careful with small numbers.</strong> A few orders up or down can happen by chance. Wait for more data before you decide.</li>
            <li><strong>Use built-in tests if you can.</strong> Amazon offers an experiments tool to some brand-registered sellers. It shows two versions of a title or image to different buyers. Check Seller Central help for who can use it.</li>
          </ul>
          <p>Neha made three related fixes at once, because the problems were clear. She knows she cannot tell which fix helped most. Her price, ads and offers stayed the same in both periods. Here is the result on Amazon (made up):</p>
          <pre><code>                 Sessions  Orders  Conversion        Returns  Return rate
        First 30 days    1,200      30    30/1,200 = 2.5%   3        3/30 = 10.0%
        Next 30 days     1,200      42    42/1,200 = 3.5%   2        2/42 = 4.8%

        Revenue: 30 x ₹1,899 = ₹56,970  →  42 x ₹1,899 = ₹79,758  (₹22,788 more)</code></pre>
          <p>Next, she will test only the main image, to fix the low CTR on "cotton double bedsheet". One change, one number to watch.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: what should Neha fix?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each finding by the stage of the buyer's journey it points to.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="click" data-label="Search results (CTR)"></div>
              <div data-sorter-target="bucket" data-bucket="page" data-label="Product page (conversion)"></div>
              <div data-sorter-target="bucket" data-bucket="kept" data-label="After delivery (returns)"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="click" data-why="The listing is shown often, but few people click. What buyers see in search results is the main image, the start of the title and the price.">"cotton double bedsheet": 20,000 impressions, but only 1.0% click</li>
              <li data-bucket="click" data-why="The main image is what buyers see in search results. A dim, folded photo is easy to scroll past.">The main image shows a folded sheet in dim light</li>
              <li data-bucket="page" data-why="People reached the page but did not buy. A missing answer to the fit question stops them.">6 buyers asked "Will it fit my bed?" on the product page</li>
              <li data-bucket="page" data-why="The page must show the size clearly near the top. Buyers rarely read to the end of a description.">The size in cm appears only at the end of the description</li>
              <li data-bucket="kept" data-why="These buyers ordered, then sent it back. The listing did not set the right expectation about size.">2 of 3 returns say "smaller than expected"</li>
              <li data-bucket="kept" data-why="The care note was true but hard to find. Buyers were surprised after the first wash, so it shows up after delivery.">A review says the colour ran in the first wash, and the care note was hard to find</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to turn your listing data into a clear plan with fair tests. Paste your own numbers in the brackets, or use Neha's made-up data.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an e-commerce analyst for a small Indian brand. Help me improve one listing using my data.

        Proven product facts: [Rangrez Crafts double bedsheet set. 100% cotton, 144 TC. Sheet 90 x 108 in + 2 pillow covers 17 x 27 in. Hand block print. Tested on a 72 x 78 in mattress, 6 in thick. Slight colour bleed in the first wash.]
        Last 30 days on [Amazon]: [1,200 sessions, 30 orders, 3 returns (2 "smaller than expected", 1 "colour ran")]
        Search terms: [cotton double bedsheet: 20,000 impressions, 200 clicks, 4 orders | king size bedsheet cotton: 4,000 impressions, 120 clicks, 0 orders | jaipuri bedsheet: 6,000 impressions, 150 clicks, 6 orders]
        Top questions: [Will it fit my bed? (6) | Does the colour run? (4)]

        Task:
        1. Calculate conversion rate, return rate, and CTR for each search term. Show the working.
        2. Name the 3 biggest problems and the data behind each.
        3. Suggest one listing change for each, using only my facts.
        4. For each change, write a test plan: what to change, the number to watch, how long to wait, and what else could affect the result.

        Rules: Never suggest new claims, removing honest notes, fake reviews or false urgency. Use simple English.</pre>
            <ul class="ai-try-checks">
              <li>Recalculate in a spreadsheet: conversion 2.5%, return rate 10.0%, CTRs 1.0%, 3.0% and 2.5%.</li>
              <li>No suggestion adds "king size", "colourfast" or any claim that is not in your facts.</li>
              <li>The colour-bleed note is kept, or moved higher, never removed.</li>
              <li>Each test plan changes one thing and names one number to watch.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Numbers show where buyers drop off, and their own words show why. Fix the weakest stage with true facts, note every change in a log, and compare fair periods before you decide it worked.
        </div>
      HTML
      starter_code: nil
    },
    15 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-ecom">E-commerce</div>
          <h1 class="lc-title">Capstone: List a New Product Everywhere</h1>
        </div>
        <p class="lc-lead">In this capstone, you will put the whole course together. Neha is ready to launch the "Buta Bagh" bedsheet set on Amazon, Flipkart and the Rangrez Crafts Shopify store, all in the same week. You will build a complete <strong>launch pack</strong>: one set of documents with everything needed to list the product on every channel. It starts with the fact sheet and a keyword map. It ends with a checklist and a plan to review the data after 30 days. Use AI to draft each part fast, and use your own checks to keep every word true.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 320" role="img" aria-label="A launch workflow. Step 1, the fact sheet, feeds step 2, the keyword map. The keyword map feeds three channel boxes: Amazon, Flipkart and the Shopify store, each with the parts it needs. All three feed step 4, the launch checklist, which leads to step 5, a 30-day review. A note says: same facts everywhere, different format for each channel.">
            <defs><marker id="pl15a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="12" y="110" width="140" height="80" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="82" y="142" font-weight="700" fill="#6ee7b7">1. Fact sheet</text>
              <text x="82" y="164" font-size="11" fill="#9b99b8">proven facts only</text>
              <rect x="177" y="110" width="140" height="80" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="247" y="142" font-weight="700" fill="#fcd34d">2. Keyword map</text>
              <text x="247" y="164" font-size="11" fill="#9b99b8">which word goes where</text>
              <line x1="154" y1="150" x2="173" y2="150" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#pl15a)"/>
              <rect x="352" y="15" width="200" height="82" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="452" y="40" font-weight="700" fill="#93c5fd">3. Amazon</text>
              <text x="452" y="62" font-size="11" fill="#9b99b8">title, 5 bullets, description,</text>
              <text x="452" y="78" font-size="11" fill="#9b99b8">search terms, attributes</text>
              <rect x="352" y="109" width="200" height="82" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="452" y="134" font-weight="700" fill="#c4b5fd">3. Flipkart</text>
              <text x="452" y="156" font-size="11" fill="#9b99b8">attributes, key features,</text>
              <text x="452" y="172" font-size="11" fill="#9b99b8">description, images</text>
              <rect x="352" y="203" width="200" height="82" rx="10" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="452" y="228" font-weight="700" fill="#67e8f9">3. Shopify store</text>
              <text x="452" y="250" font-size="11" fill="#9b99b8">page, SEO title, meta,</text>
              <text x="452" y="266" font-size="11" fill="#9b99b8">alt text, collections</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#pl15a)">
                <path d="M319,140 L348,58"/>
                <line x1="319" y1="150" x2="348" y2="150"/>
                <path d="M319,160 L348,242"/>
                <path d="M554,56 L587,108"/>
                <line x1="554" y1="150" x2="587" y2="150"/>
                <path d="M554,244 L587,192"/>
              </g>
              <rect x="592" y="95" width="155" height="110" rx="10" fill="#27274e" stroke="#ec4899"/>
              <text x="669" y="124" font-weight="700" fill="#f9a8d4">4. Checklist</text>
              <text x="669" y="148" font-size="11" fill="#9b99b8">facts, numbers,</text>
              <text x="669" y="166" font-size="11" fill="#9b99b8">words, legal details,</text>
              <text x="669" y="184" font-size="11" fill="#9b99b8">images, languages</text>
              <line x1="669" y1="207" x2="669" y2="226" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#pl15a)"/>
              <rect x="592" y="231" width="155" height="54" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="669" y="254" font-weight="700" fill="#6ee7b7">5. 30-day review</text>
              <text x="669" y="273" font-size="11" fill="#9b99b8">data, then fix</text>
              <text x="380" y="310" font-size="12" fill="#9b99b8">Same facts everywhere. A different format for each channel.</text>
            </g>
          </svg>
          <figcaption>Every channel listing is built from the same fact sheet and keyword map. One checklist covers all of them before launch.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>What goes in the launch pack</h3>
          <table class="lc-table">
            <thead><tr><th>Part</th><th>What it contains</th><th>Neha's "Buta Bagh" example</th></tr></thead>
            <tbody>
              <tr><td>Fact sheet</td><td>Every proven fact, its proof, and a "do not claim" list</td><td>100% cotton, 144 TC, 90 x 108 in, 3 pieces. Do not claim: organic, natural dyes, handloom, colourfast.</td></tr>
              <tr><td>Legal block</td><td>MRP, net quantity, country of origin, manufacturer, consumer care, seller details</td><td>MRP ₹2,499 incl. all taxes; 3 pieces; made in India; workshop address; care email</td></tr>
              <tr><td>Keyword map</td><td>Which keyword goes in which field on each channel</td><td>See below</td></tr>
              <tr><td>Channel listings</td><td>Amazon, Flipkart and Shopify versions</td><td>Same facts, different fields and length</td></tr>
              <tr><td>Image list</td><td>Each photo, what it shows and its alt text</td><td>On a real bed, print close-up, size guide, pillow covers, kraft box</td></tr>
              <tr><td>Hindi version</td><td>A short translation, checked by a native speaker</td><td>Sunita, the workshop supervisor, approves it</td></tr>
              <tr><td>Checklist and review plan</td><td>Checks before launch, and what to measure after</td><td>Review on day 30: conversion rate, return reasons, questions</td></tr>
            </tbody>
          </table>
          <p>Keep everything in one shared folder, with the master spreadsheet at the centre. When a fact changes, change it there first, then on every channel.</p>
          <pre><code>KEYWORD MAP: Buta Bagh, Blue, Double (RC-BS-DBL-BUTA-BLU)
        Title (all channels):  cotton double bedsheet · hand block print ·
                               with 2 pillow covers · 90 x 108
        Bullets / features:    jaipuri bedsheet · blue floral · 144 TC
        Description:           housewarming gift · Rajasthan workshop story
        Hidden search terms:   jaipuri chadar double bed · sanganeri print
          (Amazon, if allowed)
        Shopify SEO title:     hand block print cotton double bedsheet
        Shopify collections:   Hand Block Print Bedsheets · Double Bedsheets
        NEVER USE:             organic · natural dye · handloom · luxury ·
                               "king size" as a claim · other brands' names</code></pre>
        </div>
        <div class="lc-card">
          <h3>One product, three channels</h3>
          <table class="lc-table">
            <thead><tr><th>Part</th><th>Amazon</th><th>Flipkart</th><th>Shopify store</th></tr></thead>
            <tbody>
              <tr><td>Title</td><td>Rangrez Crafts Hand Block Print 100% Cotton Double Bedsheet with 2 Pillow Covers, 90 x 108 Inches, 144 TC, Blue</td><td>Fill brand, model name and attributes carefully. The title shown may be built from them. Check Seller Hub help.</td><td>Page title: Buta Bagh Hand Block Print Cotton Double Bedsheet Set, Blue</td></tr>
              <tr><td>Key facts</td><td>5 bullets: pieces and size, material and TC, hand block print, fit test, care with the bleed note</td><td>Key features plus a full attribute table: bed size, material, pieces, pattern, colour, thread count</td><td>Description with the workshop story, size in inches and cm, fit test, care, FAQ</td></tr>
              <tr><td>Search words</td><td>Title, bullets, and the hidden search terms field</td><td>Title fields, key features and attributes</td><td>SEO title, meta description, alt text, collection pages</td></tr>
              <tr><td>Price</td><td colspan="3">MRP ₹2,499 everywhere. Selling price ₹1,899 on the store. Marketplace prices may differ. Any discount shown is worked out from the MRP: 600 ÷ 2,499 = 24%.</td></tr>
              <tr><td>Legal and policy</td><td colspan="2">Fill every compliance field: manufacturer, packer, country of origin and so on. Return rules follow the marketplace's category policy.</td><td>Show seller details, the 7-day return policy and a grievance contact on your own store</td></tr>
            </tbody>
          </table>
          <p>Do not paste the same long description on every channel. Each channel has its own fields and rules. Your own store is the best place for the full story and an FAQ. Field names and rules change often, so check Seller Central help, Seller Hub help and the Shopify Help Center before launch.</p>
          <pre><code>Weak prompt:
        Write listings for my bedsheet for Amazon, Flipkart and Shopify.

        Better prompt:
        Using ONLY the fact sheet and keyword map below, write the Amazon,
        Flipkart and Shopify versions. Follow the keyword map for where each
        word goes. After each version, add a claims table:
        claim | fact sheet line it comes from. Mark any claim without a
        source as NO SOURCE. Write [NEEDS INFO] for missing facts.
        [paste fact sheet, legal block and keyword map]</code></pre>
          <p>The claims table is your most useful check. It makes the AI show where every claim came from. Any line marked NO SOURCE must be removed or proven.</p>
        </div>
        <div class="lc-card">
          <h3>The launch checklist</h3>
          <p>Neha runs this checklist for every channel before she clicks "publish". Adapt it for your own products. The legal part is general education, not legal advice. Check current rules with a lawyer, and ask your chartered accountant about the HSN code and GST.</p>
          <pre><code>FACTS
        [ ] Every claim traces to a line in the fact sheet (claims table)
        [ ] No "do not claim" word anywhere, in any language
        [ ] Honest notes kept: colour bleed in first wash, handmade differences

        NUMBERS (check with a calculator or spreadsheet, not AI)
        [ ] 90 x 108 in = 228.6 x 274.3 cm; 17 x 27 in = 43.2 x 68.6 cm
            (no "about" or "approx." in the net quantity declaration)
        [ ] Discount = (2,499 - 1,899) ÷ 2,499 = 24%, not 25%
        [ ] Selling price is not above the MRP on any channel
        [ ] Title lengths checked with =LEN() against the current style guide

        RULES AND LEGAL
        [ ] MRP ₹2,499 (incl. all taxes), net quantity 3 pieces, made in India
        [ ] Manufacturer and packer address; month and year of manufacture
            on the pack label
        [ ] Consumer care email and phone; seller details
        [ ] Return policy shown; grievance contact on the Shopify store
        [ ] No false urgency ("only 2 left") and no fake reviews

        IMAGES AND LANGUAGES
        [ ] Photos show the real product; no AI image changes how it looks
        [ ] Alt text written for every Shopify image
        [ ] Hindi text approved by a native speaker

        AFTER LAUNCH
        [ ] Change log started; review on day 30: sessions, conversion rate,
            return reasons, questions, search terms</code></pre>
          <p>AI can help you make a checklist, and it can check a draft against it. But a person must tick each box after looking at the live page. The live page sometimes differs from what you uploaded.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: Neha's launch day</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Neha's prompt">She pastes her fact sheet, legal block and keyword map. She asks for Amazon, Flipkart and Shopify versions, each with a claims table.</li>
              <li data-kind="answer" data-label="AI reply">The AI writes all three versions. The Flipkart key features say "Fits king and queen beds". The Shopify meta description ends "Hurry, only a few left!" The Amazon search terms include "handloom".</li>
              <li data-kind="warn" data-label="Catch this">The claims table marks "king and queen" as NO SOURCE. "Only a few left" is false urgency, a dark pattern. "Handloom" is on the do-not-claim list.</li>
              <li data-kind="tool" data-label="Spreadsheet">Neha pastes the titles and the price line into her master sheet. She uses =LEN() for lengths and =ROUND((2499-1899)/2499*100,0) for the discount.</li>
              <li data-kind="result" data-label="Result">The Amazon title has 111 characters. The discount is 24. The AI's Shopify banner said "25% off", so she changes it to 24%.</li>
              <li data-kind="user" data-label="Fix prompt">"Rewrite only the flagged lines. Use the exact tested size: 72 x 78 inch mattress, 6 inches thick. Remove urgency. Do not change anything else."</li>
              <li data-kind="check" data-label="Final checks">Sunita approves the Hindi text. Neha compares the legal fields with the printed label. She checks the live page on her phone after publishing.</li>
              <li data-kind="thought" data-label="Neha plans">She writes the launch in her change log. On day 30, she will read the data before changing anything.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Build a full launch pack for one product. Replace the facts in brackets with your own product, or use Neha's bedsheet.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a senior e-commerce listing manager for an Indian brand. Create a launch pack for one product on 3 channels.

        Fact sheet (use ONLY these facts): [Rangrez Crafts "Buta Bagh" double bedsheet set. 1 bedsheet 90 x 108 in + 2 pillow covers 17 x 27 in. 100% cotton, 144 TC. Blue buta print on white, hand-block-printed in our workshop in Rajasthan. Tested on a 72 x 78 in mattress, 6 in thick. Machine wash gentle, cold; slight colour bleed in the first wash. MRP Rs 2,499, our price Rs 1,899. Made in India.]
        Do NOT claim: [organic, natural dyes, handloom, colourfast, king size, luxury]
        Keywords: [cotton double bedsheet, hand block print bedsheet, jaipuri bedsheet, double bedsheet with 2 pillow covers]

        Write:
        1. A keyword map: which keyword goes where on each channel.
        2. Amazon: title, 5 bullets, a short description.
        3. Flipkart: attribute table (field | value) and 5 key features.
        4. Shopify: page title, SEO title, meta description, 3 FAQs.
        5. A pre-launch checklist of 12 items, including legal details to confirm.
        6. A claims table: claim | fact it comes from.

        Rules: No new facts, no urgency, no discount words. Write [NEEDS INFO] for missing facts. Do not count characters.</pre>
            <ul class="ai-try-checks">
              <li>Every line in the claims table points to a real fact. Remove anything without a source.</li>
              <li>No "do not claim" word appears on any channel.</li>
              <li>Sizes, pieces and prices are exactly the same on all three channels.</li>
              <li>The checklist includes MRP, net quantity, country of origin, manufacturer details and the return policy.</li>
              <li>Check title lengths with =LEN() and the current style guides before you publish.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> One fact sheet, many channels. Let AI draft every version with a claims table, check numbers and rules yourself, launch with a checklist, and let real data guide your next change.
        </div>
      HTML
      starter_code: nil
    }
  }.freeze
end

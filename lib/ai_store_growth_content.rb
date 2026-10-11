module AiStoreGrowthContent
  # Units (sidebar dividers): 1–4 Growth Basics · 5–9 Getting and Converting Shoppers · 10–14 Keeping Customers · 15 Capstone
  # Widgets: sequence, sorter, stepper. No code editor: each Try It is an ai-try prompt box.
  LESSONS = {
    1 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-ecom">E-commerce</div>
          <h1 class="lc-title">How Online Stores Grow</h1>
        </div>
        <p class="lc-lead">An online store can grow in only a few ways. More people can visit. More visitors can buy. Each order can be bigger. And happy customers can come back. In this lesson you will learn the <strong>growth equation</strong> that joins these four levers. You will use it with the numbers of Zari &amp; Co, a made-up ethnic wear brand from Birmingham. Then you will use AI to find which lever to work on first.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="The growth equation for Zari and Co in August: 80,000 sessions times 1.0% conversion rate times 1,800 rupees average order value equals 14,40,000 rupees revenue. Repeat purchases bring customers back to the store, which adds more sessions and orders.">
            <defs><marker id="sg1a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="380" y="24" font-weight="700" fill="#c4b5fd">Zari &amp; Co, August 2026 (made-up numbers)</text>
              <rect x="20" y="40" width="150" height="84" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="95" y="64" font-weight="700">Sessions</text>
              <text x="95" y="90" font-size="17" font-weight="700" fill="#93c5fd">80,000</text>
              <text x="95" y="112" font-size="11" fill="#9b99b8">visits to the store</text>
              <text x="185" y="90" font-size="20" fill="#9b99b8">×</text>
              <rect x="200" y="40" width="150" height="84" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="275" y="64" font-weight="700">Conversion rate</text>
              <text x="275" y="90" font-size="17" font-weight="700" fill="#6ee7b7">1.0%</text>
              <text x="275" y="112" font-size="11" fill="#9b99b8">visits that order</text>
              <text x="365" y="90" font-size="20" fill="#9b99b8">×</text>
              <rect x="380" y="40" width="150" height="84" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="455" y="64" font-weight="700">AOV</text>
              <text x="455" y="90" font-size="17" font-weight="700" fill="#fcd34d">₹1,800</text>
              <text x="455" y="112" font-size="11" fill="#9b99b8">average order value</text>
              <text x="545" y="90" font-size="20" fill="#9b99b8">=</text>
              <rect x="560" y="40" width="180" height="84" rx="10" fill="#27274e" stroke="#8b5cf6"/>
              <text x="650" y="64" font-weight="700">Revenue</text>
              <text x="650" y="90" font-size="17" font-weight="700" fill="#c4b5fd">₹14,40,000</text>
              <text x="650" y="112" font-size="11" fill="#9b99b8">800 orders</text>
              <rect x="200" y="186" width="330" height="64" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="365" y="210" font-weight="700">Repeat purchases</text>
              <text x="365" y="234" font-size="11" fill="#9b99b8">200 of 800 orders came from returning customers</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#sg1a)">
                <path d="M650,126 L650,218 L534,218"/>
                <path d="M198,218 L95,218 L95,130"/>
              </g>
              <text x="700" y="172" font-size="11" fill="#9b99b8">happy buyers</text>
              <text x="52" y="172" font-size="11" fill="#9b99b8">they return</text>
              <text x="380" y="285" font-size="12" fill="#6ee7b7">Grow any one lever by 10% and revenue grows by 10%.</text>
            </g>
          </svg>
          <figcaption>The growth equation. Three levers multiply to give revenue. Repeat purchases bring buyers back for more orders.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The four growth levers</h3>
          <table class="lc-table">
            <thead><tr><th>Lever</th><th>What it means</th><th>Zari &amp; Co, August</th><th>Ways to grow it</th></tr></thead>
            <tbody>
              <tr><td><strong>Traffic</strong></td><td>How many sessions your store gets. A session is one visit by one person.</td><td>80,000 sessions</td><td>Ads, search (SEO), social media, emails</td></tr>
              <tr><td><strong>Conversion rate</strong></td><td>The share of sessions that end in an order. Orders ÷ sessions × 100.</td><td>800 ÷ 80,000 × 100 = 1.0%</td><td>Clear product pages, trust, an easy checkout</td></tr>
              <tr><td><strong>AOV</strong></td><td>Average order value: the average amount spent per order. Revenue ÷ orders.</td><td>₹14,40,000 ÷ 800 = ₹1,800</td><td>Bundles, matching items, a free-shipping threshold</td></tr>
              <tr><td><strong>Repeat purchases</strong></td><td>How often customers come back and buy again.</td><td>200 of 800 orders (25%) came from returning customers</td><td>Useful emails, loyalty, good service, easy returns</td></tr>
            </tbody>
          </table>
          <p>The first three levers give one month's revenue: <strong>Revenue = Sessions × Conversion rate × AOV</strong>. Repeat purchases work over a longer time. So we also use a yearly view: <strong>Revenue = Customers × Orders per customer × AOV</strong>.</p>
          <p>For Zari &amp; Co's last 12 months: 6,000 customers × 1.3 orders each × ₹1,800 = ₹1,40,40,000. If each customer ordered 1.4 times instead, revenue would be ₹1,51,20,000. That is ₹10,80,000 more, with no new customers.</p>
        </div>
        <div class="lc-card">
          <h3>Worked example: Zari &amp; Co's last three months</h3>
          <p>Heena is the founder of Zari &amp; Co. She wants to grow before Navratri and Diwali 2026. Imran, her catalogue manager, pulled these numbers from the store dashboard.</p>
          <table class="lc-table">
            <thead><tr><th>Month (2026)</th><th>Sessions</th><th>Conversion rate</th><th>AOV</th><th>Revenue</th><th>Ad spend</th></tr></thead>
            <tbody>
              <tr><td>June</td><td>62,500</td><td>1.20%</td><td>₹1,760</td><td>₹13,20,000</td><td>₹2,85,000</td></tr>
              <tr><td>July</td><td>70,000</td><td>1.10%</td><td>₹1,780</td><td>₹13,70,600</td><td>₹3,24,800</td></tr>
              <tr><td>August</td><td>80,000</td><td>1.00%</td><td>₹1,800</td><td>₹14,40,000</td><td>₹3,60,000</td></tr>
            </tbody>
          </table>
          <p>Sessions grew by 28% (80,000 ÷ 62,500 = 1.28). But revenue grew by only 9.1% (₹14,40,000 ÷ ₹13,20,000 = 1.091). Why? The conversion rate fell from 1.2% to 1.0%. Heena paid for more visits, but a smaller share of them bought.</p>
          <p>Now look at what a 10% gain in each lever would do in August:</p>
          <table class="lc-table">
            <thead><tr><th>Change</th><th>Sessions</th><th>Conversion rate</th><th>Orders</th><th>AOV</th><th>Revenue</th></tr></thead>
            <tbody>
              <tr><td>Today</td><td>80,000</td><td>1.0%</td><td>800</td><td>₹1,800</td><td>₹14,40,000</td></tr>
              <tr><td>Sessions +10%</td><td>88,000</td><td>1.0%</td><td>880</td><td>₹1,800</td><td>₹15,84,000</td></tr>
              <tr><td>Conversion +10%</td><td>80,000</td><td>1.1%</td><td>880</td><td>₹1,800</td><td>₹15,84,000</td></tr>
              <tr><td>AOV +10%</td><td>80,000</td><td>1.0%</td><td>800</td><td>₹1,980</td><td>₹15,84,000</td></tr>
              <tr><td><strong>All three +10%</strong></td><td>88,000</td><td>1.1%</td><td>968</td><td>₹1,980</td><td><strong>₹19,16,640</strong></td></tr>
            </tbody>
          </table>
          <p>Small gains multiply: 1.1 × 1.1 × 1.1 = 1.331. So three 10% gains give 33.1% more revenue, not 30%. That is close to Heena's festive target of about ₹19 lakh a month. In a spreadsheet, you can check it with <code>=88000*1.1%*1980</code>, which gives 19,16,640.</p>
          <p>Note: more traffic usually costs more ad money. Better conversion and a higher AOV make every ad rupee work harder.</p>
        </div>
        <div class="lc-card">
          <h3>How AI helps, and what you must check</h3>
          <p>AI can turn a table of numbers into a clear story. It can find the weak lever and suggest actions for each lever. But it needs your real numbers and clear instructions.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>How can I grow my online store?</code></pre>
          <p>This gives general tips that could fit any store.</p>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Here are 3 months of my store numbers: sessions, orders
        and revenue. For each month, calculate conversion rate
        and AOV and show each step. Tell me which lever changed
        the most. Give 3 possible reasons, marked as guesses.
        Then suggest 5 actions, each linked to one lever.
        Do not use industry averages.</code></pre>
          <p>Before you act, you must still:</p>
          <ul class="lc-list">
            <li><strong>Check the maths in a spreadsheet.</strong> AI can make calculation mistakes, even with simple numbers.</li>
            <li><strong>Use totals, not averages of rates.</strong> The average of 1.2%, 1.1% and 1.0% is 1.1%. But the real three-month rate is 2,320 orders ÷ 2,12,500 sessions = 1.09%.</li>
            <li><strong>Treat reasons as guesses.</strong> "Mobile checkout is slow" is only an idea until you check it.</li>
            <li><strong>Keep private data out.</strong> Share totals, not customer names or phone numbers.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Activity: which lever does it grow?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Imran has a list of ideas for Zari &amp; Co. Sort each idea by the lever it mainly grows.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="traffic" data-label="Traffic"></div>
              <div data-sorter-target="bucket" data-bucket="conv" data-label="Conversion rate"></div>
              <div data-sorter-target="bucket" data-bucket="aov" data-label="AOV"></div>
              <div data-sorter-target="bucket" data-bucket="repeat" data-label="Repeat purchases"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="traffic" data-why="Ads bring more people to the store. They do not change what happens after the visit.">Run Instagram ads for the new Navratri collection</li>
              <li data-bucket="conv" data-why="A clear size chart helps visitors feel sure, so more of them order.">Add a size chart in centimetres and inches to the lehenga page</li>
              <li data-bucket="aov" data-why="A matching item in the same order makes each order bigger.">Offer a matching dupatta with each kurta set as a bundle</li>
              <li data-bucket="repeat" data-why="It brings past buyers back for another order.">Send new arrivals to past buyers who agreed to get messages</li>
              <li data-bucket="conv" data-why="Shoppers who see their payment option early are less likely to leave at checkout.">Show UPI and COD options on the product page, not only at the end</li>
              <li data-bucket="aov" data-why="The threshold is above the usual ₹1,800 order, so some shoppers add one more item.">Give free shipping on orders above ₹2,499</li>
              <li data-bucket="traffic" data-why="Helpful guides can bring visitors from Google search.">Write a guide on how to drape a georgette saree</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to break your store's numbers into the growth equation. Use the sample numbers or your own totals (no customer data).</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an e-commerce growth analyst. Explain in simple English for a small store owner.

        My store: [Zari &amp; Co, an ethnic wear brand from Birmingham that sells sarees and kurta sets on its own online store].
        Last 3 months (made-up numbers):
        [June: 62,500 sessions, 750 orders, revenue ₹13,20,000
        July: 70,000 sessions, 770 orders, revenue ₹13,70,600
        August: 80,000 sessions, 800 orders, revenue ₹14,40,000]
        My goal: [grow monthly revenue by about 30% in the festive months].

        Please:
        1. Make a table for each month: sessions, conversion rate (orders ÷ sessions × 100), AOV (revenue ÷ orders) and revenue. Show each calculation.
        2. Say which lever (traffic, conversion rate or AOV) changed the most, and in which direction.
        3. Give 3 possible reasons for any fall. Mark each one as a guess to check.
        4. Show what revenue a 10% gain in each lever would give, using the latest month.
        5. Suggest 5 actions. Link each one to one lever.
        6. List the data I should check before I act.

        Do not use industry averages. If some data is missing, say so.</pre>
            <ul class="ai-try-checks">
              <li>Conversion rates are 1.2%, 1.1% and 1.0%. AOVs are ₹1,760, ₹1,780 and ₹1,800.</li>
              <li>A 10% gain in any one lever gives ₹15,84,000 for August.</li>
              <li>Reasons are marked as guesses, not facts.</li>
              <li>There are no made-up industry averages or promised results.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Revenue = Sessions × Conversion rate × AOV, and repeat purchases add more over the year. More traffic can hide a falling conversion rate. Find the weak lever first. Then decide where to spend time and money.
        </div>
      HTML
      starter_code: nil
    },
    2 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-ecom">E-commerce</div>
          <h1 class="lc-title">Where AI Helps Store Growth</h1>
        </div>
        <p class="lc-lead">AI can help a store team in five main areas: analysis, content, personalisation, recommendations and messages. It saves hours of work. But it also brings risks. It can get numbers wrong, invent product features, leak private data or suggest tricks that mislead shoppers. In this lesson you will learn where AI helps most and what a person must always check.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="An AI assistant with your store data helps in five areas: analysis, content, personalisation, recommendations and messages. Before anything goes live, a person checks facts and numbers, customer privacy, dark patterns and honest claims.">
            <defs><marker id="sg2a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="260" y="12" width="240" height="44" rx="10" fill="#27274e" stroke="#8b5cf6"/>
              <text x="380" y="39" font-weight="700">AI assistant + your data</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#sg2a)">
                <path d="M300,58 L92,88"/>
                <path d="M340,58 L240,88"/>
                <path d="M380,58 L384,88"/>
                <path d="M420,58 L528,88"/>
                <path d="M460,58 L676,88"/>
              </g>
              <rect x="20" y="92" width="136" height="88" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="88" y="118" font-weight="700">Analysis</text>
              <text x="88" y="142" font-size="11" fill="#9b99b8">find the weak lever</text>
              <text x="88" y="160" font-size="11" fill="#9b99b8">explain the numbers</text>
              <rect x="168" y="92" width="136" height="88" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="236" y="118" font-weight="700">Content</text>
              <text x="236" y="142" font-size="11" fill="#9b99b8">product descriptions</text>
              <text x="236" y="160" font-size="11" fill="#9b99b8">size guides, FAQs</text>
              <rect x="316" y="92" width="136" height="88" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="384" y="118" font-weight="700">Personalisation</text>
              <text x="384" y="142" font-size="11" fill="#9b99b8">the right message</text>
              <text x="384" y="160" font-size="11" fill="#9b99b8">for each segment</text>
              <rect x="464" y="92" width="136" height="88" rx="10" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="532" y="118" font-weight="700">Recommending</text>
              <text x="532" y="142" font-size="11" fill="#9b99b8">bundles, similar</text>
              <text x="532" y="160" font-size="11" fill="#9b99b8">items, bestsellers</text>
              <rect x="612" y="92" width="136" height="88" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="680" y="118" font-weight="700">Messages</text>
              <text x="680" y="142" font-size="11" fill="#9b99b8">cart reminders,</text>
              <text x="680" y="160" font-size="11" fill="#9b99b8">festive emails</text>
              <rect x="20" y="200" width="728" height="84" rx="12" fill="#1f1f44" stroke="#f59e0b" stroke-dasharray="6 4"/>
              <text x="384" y="224" font-weight="700" fill="#fcd34d">Before anything goes live, a person checks:</text>
              <rect x="34" y="238" width="166" height="32" rx="8" fill="#27274e"/><text x="117" y="259" font-size="12">Facts and numbers</text>
              <rect x="212" y="238" width="166" height="32" rx="8" fill="#27274e"/><text x="295" y="259" font-size="12">Customer privacy</text>
              <rect x="390" y="238" width="166" height="32" rx="8" fill="#27274e"/><text x="473" y="259" font-size="12">No dark patterns</text>
              <rect x="568" y="238" width="166" height="32" rx="8" fill="#27274e"/><text x="651" y="259" font-size="12">Honest claims</text>
            </g>
          </svg>
          <figcaption>AI helps in five areas. A person checks the work before shoppers see it.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Five areas where AI helps</h3>
          <table class="lc-table">
            <thead><tr><th>Area</th><th>Example task at Zari &amp; Co</th><th>What a person must check</th></tr></thead>
            <tbody>
              <tr><td><strong>Analysis</strong></td><td>Explain why conversion fell from 1.2% to 1.0%. Group the 211 return reasons from the last three months into themes.</td><td>Redo the key numbers in a spreadsheet. Treat the reasons AI gives as guesses to test.</td></tr>
              <tr><td><strong>Content</strong></td><td>Draft product descriptions, size guides and FAQs from Imran's catalogue sheet.</td><td>Every fact matches the real product: fabric, work, sizes, care. No invented claims.</td></tr>
              <tr><td><strong>Personalisation</strong></td><td>Write different email text for new, loyal and at-risk customers.</td><td>Customers agreed to get messages. The tone fits the brand. No guesses about a person's private life.</td></tr>
              <tr><td><strong>Recommendations</strong></td><td>Suggest "goes well with" pairs, such as a dupatta with a kurta set.</td><td>The items are in stock and truly match in colour and style.</td></tr>
              <tr><td><strong>Messages</strong></td><td>Draft cart reminders and a Diwali email.</td><td>Consent, how often you send, and correct offer terms and dates.</td></tr>
            </tbody>
          </table>
          <p>You can do this work in a general AI assistant such as Claude. Many store platforms also have built-in AI helpers. For example, Shopify has an assistant called Sidekick. Features change often, so check your platform's current help pages.</p>
        </div>
        <div class="lc-card">
          <h3>The risks you must manage</h3>
          <ul class="lc-list">
            <li><strong>Wrong numbers.</strong> AI can misread a table or make a maths mistake. Always check key numbers yourself.</li>
            <li><strong>Invented facts.</strong> AI may add features the product does not have, such as "pure silk" or "hand-woven". False claims mislead customers and can break consumer law.</li>
            <li><strong>Privacy.</strong> Do not paste customer names, phone numbers or addresses into public AI tools. Use customer IDs such as C-1042. India's DPDP Act (Digital Personal Data Protection Act, 2023) sets rules for personal data.</li>
            <li><strong>Fake reviews.</strong> Never ask AI to write reviews that look like they came from customers. India's standard for online reviews (IS 19000:2022) is against fake reviews.</li>
            <li><strong>Dark patterns.</strong> These are design tricks that push shoppers into choices they did not want. India's CCPA (Central Consumer Protection Authority) issued guidelines on them in 2023.</li>
          </ul>
          <table class="lc-table">
            <thead><tr><th>Dark pattern</th><th>What it looks like</th><th>Honest version</th></tr></thead>
            <tbody>
              <tr><td>False urgency</td><td>"Only 3 left!" when you have 140 pieces. A timer that restarts every day.</td><td>Show real stock and real sale end dates only.</td></tr>
              <tr><td>Basket sneaking</td><td>Gift wrap for ₹49 added to the cart without asking.</td><td>Offer gift wrap as a choice the shopper ticks.</td></tr>
              <tr><td>Drip pricing</td><td>A COD fee that appears only at the last payment step.</td><td>Show the full price and any fees early.</td></tr>
              <tr><td>Confirm shaming</td><td>"No thanks, I don't like saving money."</td><td>A plain "No thanks" button.</td></tr>
            </tbody>
          </table>
          <p>This is general education, not legal advice. For your business, check the current rules with a qualified lawyer.</p>
        </div>
        <div class="lc-card">
          <h3>Give AI facts and rules, not just a wish</h3>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Write an amazing description for our Navratri lehenga
        that makes people buy now.</code></pre>
          <p>AI will fill gaps with nice-sounding claims, and "buy now" invites fake urgency.</p>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Write a product description for the Gulnar Navratri
        lehenga choli. Use ONLY these facts:
        - Fabric: georgette. Work: machine embroidery with mirror work.
        - Sizes: S to XXL. Blouse: semi-stitched.
        - Dupatta: net, 2.3 m. Care: dry clean only.
        - Price: ₹3,999. Made in India.
        If a detail is missing, write [ASK IMRAN].
        Do not add urgency words unless I give a real deadline.</code></pre>
          <p>The better prompt gives AI the facts, a way to show missing details, and a rule against tricks.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: Imran checks an AI draft</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Imran asks">Write a product page for our Gulnar Navratri lehenga choli. Here is the row from our catalogue sheet.</li>
              <li data-kind="answer" data-label="AI draft">"A pure silk lehenga, hand-embroidered by Gujarat artisans. Only 3 left! Sale ends in 2 hours."</li>
              <li data-kind="check" data-label="Check facts">Imran compares the draft with the catalogue sheet. The fabric is georgette, not silk. The embroidery is machine work.</li>
              <li data-kind="warn" data-label="Dark pattern">"Only 3 left" and the 2-hour timer are false urgency. There are 140 pieces in stock and no sale is running.</li>
              <li data-kind="user" data-label="Better prompt">Use only the facts I gave. Write [ASK IMRAN] for missing details. No urgency words.</li>
              <li data-kind="answer" data-label="New draft">An honest draft about georgette, mirror work and sizes. It adds "[ASK IMRAN: is the blouse padded?]".</li>
              <li data-kind="check" data-label="Final check">Imran checks the size chart against the tailoring sheet. Heena approves the page before it goes live.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to check a product page draft for invented claims and dark patterns. Use the sample or paste your own draft and real product facts.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a careful e-commerce editor in India. You check product pages for honest claims and dark patterns (design tricks that push shoppers into choices they did not want).

        Real product facts from my catalogue sheet:
        [Gulnar Navratri lehenga choli. Fabric: georgette. Work: machine embroidery with mirror work. Sizes: S to XXL. Blouse: semi-stitched. Dupatta: net, 2.3 m. Care: dry clean only. Price: ₹3,999. Made in India. Stock: 140 pieces. No sale is running.]

        Draft page to review:
        ["Pure silk lehenga, hand-embroidered by Gujarat artisans. Loved by 10,000+ brides! Only 3 left. Offer ends in 02:00:00. Gift wrap ₹49 added for you. COD fee shown at payment."]

        Please:
        1. Make a table: each problem sentence, the problem type (claim not in the facts, fake social proof, false urgency, basket sneaking, drip pricing or other) and why it could mislead a shopper.
        2. Rewrite the page using only the real facts. Write [ASK] where a detail is missing.
        3. Suggest 2 honest ways to create interest, such as a styling tip or a real festive date.

        Say that this is not legal advice.</pre>
            <ul class="ai-try-checks">
              <li>All seven problems are found: silk, hand-embroidered, 10,000+ brides, only 3 left, the timer, pre-added gift wrap and the late COD fee.</li>
              <li>The rewrite uses only the real facts and adds no new claims.</li>
              <li>Missing details are marked [ASK], not guessed.</li>
              <li>The honest ideas do not use fake urgency or fake reviews.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> AI is a fast helper for analysis, content, personalisation, recommendations and messages. But it does not know your product or the law. Give it real facts and clear rules. Then a person checks the numbers, the claims and the design before shoppers see anything.
        </div>
      HTML
      starter_code: nil
    },
    3 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-ecom">E-commerce</div>
          <h1 class="lc-title">Key E-commerce Metrics</h1>
        </div>
        <p class="lc-lead">A metric is a number that shows how your store is doing. The right metrics tell you what is working and what is broken. In this lesson you will learn conversion rate, AOV, CAC, repeat rate, CLV, RTO rate and return rate. You will calculate each one in ₹ with Zari &amp; Co's numbers. You will also learn to check AI's maths, because AI can get numbers wrong.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 290" role="img" aria-label="A dashboard for Zari and Co in August 2026. Conversion rate 1.0%, down from 1.2% in June. AOV 1,800 rupees, up from 1,760. CAC 600 rupees, up from 500. Repeat customer rate 20% over 12 months. Simple CLV 1,170 rupees. RTO rate 10%, up from 8%.">
            <defs><marker id="sg3a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12" fill="#e2e0f0" text-anchor="middle">
              <text x="380" y="28" font-size="13" font-weight="700" fill="#c4b5fd">Zari &amp; Co dashboard, August 2026 (made-up numbers)</text>
              <rect x="20" y="46" width="230" height="94" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="135" y="70" fill="#9b99b8">Conversion rate</text>
              <text x="135" y="100" font-size="22" font-weight="700">1.0%</text>
              <text x="135" y="126" font-size="11" fill="#f9a8d4">down from 1.2% in June</text>
              <rect x="265" y="46" width="230" height="94" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="380" y="70" fill="#9b99b8">AOV</text>
              <text x="380" y="100" font-size="22" font-weight="700">₹1,800</text>
              <text x="380" y="126" font-size="11" fill="#6ee7b7">up from ₹1,760 in June</text>
              <rect x="510" y="46" width="230" height="94" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="625" y="70" fill="#9b99b8">CAC</text>
              <text x="625" y="100" font-size="22" font-weight="700">₹600</text>
              <text x="625" y="126" font-size="11" fill="#f9a8d4">up from ₹500 in June</text>
              <rect x="20" y="154" width="230" height="94" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="135" y="178" fill="#9b99b8">Repeat customer rate</text>
              <text x="135" y="208" font-size="22" font-weight="700">20%</text>
              <text x="135" y="234" font-size="11" fill="#9b99b8">last 12 months</text>
              <rect x="265" y="154" width="230" height="94" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="380" y="178" fill="#9b99b8">Simple CLV (12 months)</text>
              <text x="380" y="208" font-size="22" font-weight="700">₹1,170</text>
              <text x="380" y="234" font-size="11" fill="#9b99b8">gross profit per customer</text>
              <rect x="510" y="154" width="230" height="94" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="625" y="178" fill="#9b99b8">RTO rate</text>
              <text x="625" y="208" font-size="22" font-weight="700">10%</text>
              <text x="625" y="234" font-size="11" fill="#f9a8d4">up from 8% in June</text>
              <text x="380" y="274" font-size="11" fill="#9b99b8">Green border = moving the right way. Pink border = needs attention. Blue = no trend yet.</text>
            </g>
          </svg>
          <figcaption>Six metrics on one screen. Three of them are moving the wrong way.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The key metrics, with Zari &amp; Co's August numbers</h3>
          <table class="lc-table">
            <thead><tr><th>Metric</th><th>Formula</th><th>Worked example</th><th>What it tells you</th></tr></thead>
            <tbody>
              <tr><td><strong>Conversion rate</strong></td><td>Orders ÷ sessions × 100</td><td>800 ÷ 80,000 × 100 = 1.0%</td><td>How well the store turns visits into orders</td></tr>
              <tr><td><strong>AOV</strong> (average order value)</td><td>Revenue ÷ orders</td><td>₹14,40,000 ÷ 800 = ₹1,800</td><td>How much a typical order is worth</td></tr>
              <tr><td><strong>CAC</strong> (customer acquisition cost)</td><td>Marketing spend ÷ new customers</td><td>₹3,60,000 ÷ 600 = ₹600</td><td>What it costs to win one new customer</td></tr>
              <tr><td><strong>Repeat customer rate</strong></td><td>Customers with 2+ orders ÷ all customers</td><td>1,200 ÷ 6,000 = 20% (last 12 months)</td><td>How many buyers come back</td></tr>
              <tr><td><strong>RTO rate</strong></td><td>RTO orders ÷ shipped orders</td><td>80 ÷ 800 = 10%</td><td>How many parcels come back without being delivered</td></tr>
              <tr><td><strong>Return rate</strong></td><td>Returned orders ÷ delivered orders</td><td>72 ÷ 720 = 10%</td><td>How many delivered orders customers send back</td></tr>
              <tr><td><strong>COD share</strong></td><td>COD orders ÷ orders</td><td>480 ÷ 800 = 60%</td><td>How many shoppers choose cash on delivery</td></tr>
            </tbody>
          </table>
          <p><strong>RTO</strong> means "return to origin". The parcel goes back to the seller without reaching the customer. It happens when a buyer refuses the parcel, cannot be reached or gave a wrong address. It is more common with COD (cash on delivery) orders. In August, Zari &amp; Co shipped 800 orders. 80 were RTO, so 720 were delivered. Customers then returned 72 of those 720.</p>
          <p>Here CAC is "blended": all marketing spend divided by all new customers. Some new customers came from free channels, so the true cost of an ad customer is often higher.</p>
        </div>
        <div class="lc-card">
          <h3>CLV and CAC together</h3>
          <p><strong>CLV</strong> (customer lifetime value) is the value you expect from one customer over a period. Here we use 12 months and gross profit. <strong>Gross margin</strong> is the share of the price left after the cost of the product. Zari &amp; Co's gross margin is about 50%.</p>
          <pre><code>Simple CLV = AOV × orders per customer in 12 months × gross margin
                   = ₹1,800 × 1.3 × 50%
                   = ₹1,170
        CLV ÷ CAC  = ₹1,170 ÷ ₹600 = 1.95</code></pre>
          <p>But about 19% of August orders never turned into money: 10% were RTO and 72 more were returned. Only 648 of 800 orders (81%) were kept. So a fairer CLV is ₹1,170 × 0.81 = about ₹948. Now CLV ÷ CAC is about 1.58.</p>
          <p>So each new customer brings about ₹948 of gross profit in a year. But Heena pays ₹600 to win that customer. Only about ₹348 is left for shipping, packing, payment fees, salaries and profit. Many online brands try to keep CLV well above CAC. "About three times" is a common rule of thumb, not a law. Each RTO also costs Imran about ₹150 in shipping both ways: 80 × ₹150 = ₹12,000 in August.</p>
          <p>Spreadsheet formulas: row 4 is August. The columns are B sessions, C orders, D revenue, E RTO orders, F returned orders, H marketing spend and I new customers.</p>
          <pre><code>Conversion rate   =C4/B4          → 1.00% (format as %)
        AOV               =D4/C4          → 1,800
        CAC               =H4/I4          → 600
        RTO rate          =E4/C4          → 10.0%
        Return rate       =F4/(C4-E4)     → 10.0%
        Simple CLV        =1800*1.3*0.5   → 1,170</code></pre>
        </div>
        <div class="lc-card">
          <h3>Common metric mistakes, and how AI helps</h3>
          <ul class="lc-list">
            <li><strong>Averaging rates.</strong> Do not average three monthly rates. Divide the totals: 2,320 orders ÷ 2,12,500 sessions = 1.09%.</li>
            <li><strong>Mixing bases.</strong> RTO rate uses shipped orders. Return rate uses delivered orders. 72 ÷ 800 = 9% would be wrong.</li>
            <li><strong>Different tool definitions.</strong> Some dashboards count sessions with an order, not orders. Read the report's help text.</li>
            <li><strong>Looking at one metric alone.</strong> A higher AOV is not good news if the conversion rate falls faster.</li>
          </ul>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Here is my data. Are my metrics good?</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Calculate conversion rate, AOV, CAC, RTO rate and return
        rate using these exact formulas: [formulas]. Show each step.
        Flag any metric that changed by more than 10% from last
        month. Do not compare with industry averages unless you
        name a source I can check.</code></pre>
          <p>Then put the same numbers in your spreadsheet. If AI and the spreadsheet disagree, trust the spreadsheet and find the mistake.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: which metric answers the question?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Heena asks these questions. Sort each one by the metric that answers it best.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="cr" data-label="Conversion rate"></div>
              <div data-sorter-target="bucket" data-bucket="aov" data-label="AOV"></div>
              <div data-sorter-target="bucket" data-bucket="cac" data-label="CAC"></div>
              <div data-sorter-target="bucket" data-bucket="rto" data-label="RTO rate"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="cac" data-why="CAC is marketing spend divided by new customers.">We spent more on ads. Is each new customer costing us more?</li>
              <li data-bucket="aov" data-why="Adding a dupatta makes the average order bigger.">Are shoppers adding a dupatta to their saree orders?</li>
              <li data-bucket="cr" data-why="Conversion rate shows how many visits turn into orders.">Is the new checkout page turning more visits into orders?</li>
              <li data-bucket="rto" data-why="Refused parcels come back to origin without delivery.">Are more COD parcels being refused at the door?</li>
              <li data-bucket="aov" data-why="A free-shipping threshold aims to make baskets bigger.">Did free shipping above ₹2,499 make baskets bigger?</li>
              <li data-bucket="cac" data-why="This asks about the cost of winning first-time buyers.">Is our Instagram budget bringing first-time buyers at a sensible cost?</li>
              <li data-bucket="cr" data-why="The size chart should help more visitors decide to order.">After we added a size chart, did more lehenga visits end in an order?</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to calculate and explain your store's key metrics. Use the sample month or your own totals, then check the answers in a spreadsheet.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an e-commerce analyst. Explain in simple English for a store owner who is not a finance expert.

        One month of my store data (made-up numbers):
        [Sessions: 80,000
        Orders: 800
        Revenue after discounts: ₹14,40,000
        Marketing spend: ₹3,60,000
        New customers: 600
        RTO orders (parcel came back, not delivered): 80
        Orders returned after delivery: 72
        COD orders: 480
        Last 12 months: 6,000 customers, 7,800 orders, 1,200 customers with 2 or more orders
        Gross margin: about 50%]

        Please:
        1. Calculate conversion rate, AOV, CAC, RTO rate (RTO ÷ shipped orders), return rate (returns ÷ delivered orders), COD share, repeat customer rate and a simple 12-month CLV (AOV × orders per customer × gross margin).
        2. Show each formula and each step in a table.
        3. Compare CLV with CAC. Explain what it means in 3 short sentences.
        4. List 3 questions I should look into next.

        Do not use industry averages. If any number looks odd, say so.</pre>
            <ul class="ai-try-checks">
              <li>Conversion rate 1.0%, AOV ₹1,800, CAC ₹600, COD share 60%.</li>
              <li>RTO rate 10% (80 ÷ 800) and return rate 10% (72 ÷ 720, not 72 ÷ 800).</li>
              <li>Repeat rate 20%. CLV = ₹1,800 × 1.3 × 50% = ₹1,170. CLV ÷ CAC is about 1.95.</li>
              <li>The same numbers appear when you type the formulas into your own spreadsheet.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Each metric answers one question. Learn the formula and the base for each one. Look at them together: rising CAC and RTO can eat the gains from a higher AOV. Let AI explain the numbers, but check its maths in a spreadsheet.
        </div>
      HTML
      starter_code: nil
    },
    4 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-ecom">E-commerce</div>
          <h1 class="lc-title">Knowing Your Customers</h1>
        </div>
        <p class="lc-lead">Your customers do not all behave the same way. Some buy often. Some bought once and never came back. If you send everyone the same message, most of it will not fit. In this lesson you will group customers by what they do, using a simple method called <strong>RFM</strong>. Then you will use AI to turn the groups into personas and actions, without sharing private data.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 330" role="img" aria-label="Four steps: export orders, remove personal data, score recency, frequency and money, name segments. Below, a bar chart of Zari and Co's 6,000 customers by segment: Champions 240, Loyal 600, At risk 360, New 1,180, One-time recent 1,620, One-time lapsed 2,000, with each segment's share of revenue.">
            <defs><marker id="sg4a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12" fill="#e2e0f0">
              <g text-anchor="middle">
                <rect x="20" y="14" width="160" height="44" rx="10" fill="#1f1f44" stroke="#3b82f6"/><text x="100" y="41">Export orders</text>
                <rect x="206" y="14" width="160" height="44" rx="10" fill="#1f1f44" stroke="#ec4899"/><text x="286" y="41">Remove personal data</text>
                <rect x="392" y="14" width="160" height="44" rx="10" fill="#1f1f44" stroke="#f59e0b"/><text x="472" y="41">Score R, F and M</text>
                <rect x="578" y="14" width="160" height="44" rx="10" fill="#1f1f44" stroke="#10b981"/><text x="658" y="41">Name segments</text>
              </g>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#sg4a)">
                <line x1="182" y1="36" x2="202" y2="36"/>
                <line x1="368" y1="36" x2="388" y2="36"/>
                <line x1="554" y1="36" x2="574" y2="36"/>
              </g>
              <text x="180" y="94" font-size="11" fill="#9b99b8">Customers in each segment (last 12 months)</text>
              <text x="740" y="94" font-size="11" fill="#9b99b8" text-anchor="end">Share of revenue</text>
              <text x="20" y="120">Champions</text>
              <rect x="180" y="106" width="48" height="20" rx="4" fill="#10b981"/><text x="236" y="120">240</text>
              <text x="740" y="120" text-anchor="end" fill="#6ee7b7">14.4%</text>
              <text x="20" y="150">Loyal</text>
              <rect x="180" y="136" width="120" height="20" rx="4" fill="#22d3ee"/><text x="308" y="150">600</text>
              <text x="740" y="150" text-anchor="end">17.9%</text>
              <text x="20" y="180">At risk</text>
              <rect x="180" y="166" width="72" height="20" rx="4" fill="#f59e0b"/><text x="260" y="180">360</text>
              <text x="740" y="180" text-anchor="end">9.2%</text>
              <text x="20" y="210">New</text>
              <rect x="180" y="196" width="236" height="20" rx="4" fill="#3b82f6"/><text x="424" y="210">1,180</text>
              <text x="740" y="210" text-anchor="end">15.1%</text>
              <text x="20" y="240">One-time, recent</text>
              <rect x="180" y="226" width="324" height="20" rx="4" fill="#8b5cf6"/><text x="512" y="240">1,620</text>
              <text x="740" y="240" text-anchor="end">19.6%</text>
              <text x="20" y="270">One-time, lapsed</text>
              <rect x="180" y="256" width="400" height="20" rx="4" fill="#ec4899"/><text x="588" y="270">2,000</text>
              <text x="740" y="270" text-anchor="end">23.8%</text>
              <text x="380" y="312" text-anchor="middle" fill="#6ee7b7">Champions are 4% of customers but bring 14.4% of revenue.</text>
            </g>
          </svg>
          <figcaption>Zari &amp; Co's 6,000 customers from the last 12 months, grouped by behaviour (made-up numbers).</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Segments by behaviour and the RFM idea</h3>
          <p>A <strong>segment</strong> is a group of customers who share something. Behaviour segments use what people do: when they bought, how often and how much. This is usually more useful than age or city alone. It is also based on facts you already have.</p>
          <p><strong>RFM</strong> uses three facts about each customer:</p>
          <ul class="lc-list">
            <li><strong>R, Recency:</strong> how many days since their last order. Fewer days is better.</li>
            <li><strong>F, Frequency:</strong> how many orders they placed.</li>
            <li><strong>M, Monetary:</strong> how much they spent in total.</li>
          </ul>
          <p>Zari &amp; Co had 6,000 customers in the last 12 months. They placed 7,800 orders worth ₹1,40,40,000. Imran used these rules on 31 August 2026:</p>
          <table class="lc-table">
            <thead><tr><th>Segment</th><th>Rule</th><th>Customers</th><th>Spend each</th><th>Next action</th></tr></thead>
            <tbody>
              <tr><td>Champions</td><td>3+ orders, last order within 60 days</td><td>240</td><td>₹8,400</td><td>Early look at the Navratri collection. Ask for honest reviews.</td></tr>
              <tr><td>Loyal</td><td>2+ orders, last order within 120 days</td><td>600</td><td>₹4,180</td><td>Suggest matching items. Invite them to a loyalty plan.</td></tr>
              <tr><td>At risk</td><td>2+ orders, no order for over 120 days</td><td>360</td><td>₹3,600</td><td>A "we have new designs" message with no pressure.</td></tr>
              <tr><td>New</td><td>1 order, in July or August</td><td>1,180</td><td>₹1,800</td><td>Welcome, care tips, and a nudge towards a second order.</td></tr>
              <tr><td>One-time, recent</td><td>1 order, 62 to 180 days ago</td><td>1,620</td><td>₹1,700</td><td>Ideas based on what they bought first.</td></tr>
              <tr><td>One-time, lapsed</td><td>1 order, 181 to 365 days ago</td><td>2,000</td><td>₹1,671</td><td>One festive reminder. Stop if there is no reply.</td></tr>
            </tbody>
          </table>
          <p>Repeat customers are Champions, Loyal and At risk: 240 + 600 + 360 = 1,200. That is a repeat customer rate of 1,200 ÷ 6,000 = 20%. Four out of five customers bought only once. This is Zari &amp; Co's biggest chance to grow.</p>
        </div>
        <div class="lc-card">
          <h3>Build RFM in a spreadsheet</h3>
          <p>Export 12 months of orders from your store dashboard. Keep only three columns in a sheet called <code>Orders</code>: A = customer ID, B = order date, C = order value. Make a second sheet with one row per customer ID in column A. Then use these formulas in row 2 and copy them down:</p>
          <pre><code>B  Recency (days)  =DATE(2026,8,31)-MAXIFS(Orders!B:B,Orders!A:A,A2)
        C  Frequency       =COUNTIF(Orders!A:A,A2)
        D  Monetary (₹)    =SUMIF(Orders!A:A,A2,Orders!C:C)
        E  Segment         =IFS(AND(C2&gt;=3,B2&lt;=60),"Champions",
                                AND(C2&gt;=2,B2&lt;=120),"Loyal",
                                C2&gt;=2,"At risk",
                                B2&lt;=61,"New",
                                B2&lt;=180,"One-time, recent",
                                TRUE,"One-time, lapsed")</code></pre>
          <p>These functions work in Google Sheets and in recent versions of Excel. Write the <code>IFS</code> formula on one line in your sheet. The rules are checked in order, so the first match wins. Then count each segment with <code>=COUNTIF(E:E,"Champions")</code>.</p>
          <p>You can ask AI to help you write or fix these formulas. Test them on five customers you can check by hand first.</p>
        </div>
        <div class="lc-card">
          <h3>From segments to personas, with AI</h3>
          <p>A <strong>persona</strong> is a short, made-up profile that stands for a segment. It helps your team write for a real kind of person. A good persona is built from your data, not from guesses.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Create 5 customer personas for my ethnic wear brand.</code></pre>
          <p>AI will invent ages, jobs and habits that may not match your buyers.</p>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Here is a summary of my Loyal segment (no personal data):
        600 customers, 2+ orders, spend ₹4,180 each. Top items:
        sarees and dupattas. Most orders come in Navratri and
        Diwali months. 70% pay by UPI. Top return reason: colour
        looked different. Write one persona based ONLY on this.
        Label any guess as a guess. Suggest 3 questions to ask
        5 real customers to test it.</code></pre>
          <p>Rules for this work:</p>
          <ul class="lc-list">
            <li><strong>Remove names, phone numbers, emails and addresses</strong> before you paste data into an AI tool. Use IDs and totals.</li>
            <li><strong>Do not ask AI to guess religion, caste, health or income.</strong> These guesses are often wrong and can be unfair.</li>
            <li><strong>Test personas with real people.</strong> Talk to a few customers or read their messages.</li>
            <li><strong>Only message people who agreed.</strong> A segment is not permission to send messages.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Activity: build RFM segments in the right order</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put Imran's steps in the correct order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Export 12 months of orders with customer ID, order date and order value</li>
              <li data-order="2">Remove names, phone numbers, emails and addresses</li>
              <li data-order="3">For each customer, find the last order date, number of orders and total spend</li>
              <li data-order="4">Turn these into Recency (days), Frequency and Monetary values</li>
              <li data-order="5">Apply the segment rules and count the customers in each segment</li>
              <li data-order="6">Ask AI to describe each segment and suggest one action for it</li>
              <li data-order="7">Check the ideas with the team and a few real customers before sending anything</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Give AI your segment summary and get personas and an action for each segment. Use the sample or your own counts (no personal data).</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a customer insights analyst for an Indian online store. Use simple English.

        My store: [Zari &amp; Co, an ethnic wear brand from Birmingham].
        Customer segments from the last 12 months (no personal data, made-up numbers):
        [Champions: 240 customers, 3+ orders, last order within 60 days, spend ₹8,400 each
        Loyal: 600, 2+ orders, last order within 120 days, spend ₹4,180 each
        At risk: 360, 2+ orders, no order for 120+ days, spend ₹3,600 each
        New: 1,180, first order in the last 2 months, spend ₹1,800 each
        One-time, recent: 1,620, 1 order 2 to 6 months ago, spend ₹1,700 each
        One-time, lapsed: 2,000, 1 order 6 to 12 months ago, spend ₹1,671 each]
        Upcoming event: [Navratri and Diwali].

        Please:
        1. Calculate each segment's share of customers and of total spend. Show the maths.
        2. Write a short persona for the 3 most important segments. Base it only on this data. Label any guess as a guess.
        3. For every segment, suggest one goal, one message idea and one honest offer (or "no offer").
        4. List 3 things I should check with real customers.

        Do not guess age, religion, caste or income. Assume I only message customers who agreed.</pre>
            <ul class="ai-try-checks">
              <li>The total is 6,000 customers and ₹1,40,40,000 of spend. Champions are 4% of customers and 14.4% of spend.</li>
              <li>Personas use only the data given. Guesses are labelled.</li>
              <li>Not every segment gets a discount. Offers are honest and have no fake deadlines.</li>
              <li>There are no guesses about age, religion, caste or income.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Group customers by what they do: how recently, how often and how much they buy. Each segment needs a different next step. AI can turn segments into personas and message ideas. You remove personal data first and test the ideas with real customers.
        </div>
      HTML
      starter_code: nil
    },
    5 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-ecom">E-commerce</div>
          <h1 class="lc-title">Improving Your Store's Conversion</h1>
        </div>
        <p class="lc-lead">Conversion rate is the share of visits that end in an order. A small rise can add lakhs of rupees a month, with no extra ad spend. In this lesson you will find where shoppers leave your store. You will look at the homepage, product pages, trust signals, checkout, COD and payments. You will use AI to audit a page and list fixes, and you will keep every fix honest.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 320" role="img" aria-label="Zari and Co's August funnel: 80,000 sessions, 4,800 added to cart, 2,000 reached checkout, 800 orders. Browse to cart is 6.0%, with problems like size, photos and delivery date. Cart to checkout is 41.7%, with problems like shipping cost and COD fees. Checkout to order is 40%, with problems like forms, OTP and failed payments.">
            <defs><marker id="sg5a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="230" y="20" font-weight="700" fill="#c4b5fd">Zari &amp; Co, August 2026</text>
              <rect x="30" y="32" width="400" height="46" rx="8" fill="#3b82f6" fill-opacity="0.35" stroke="#3b82f6"/>
              <text x="230" y="60" font-weight="700">80,000 sessions</text>
              <rect x="80" y="98" width="300" height="46" rx="8" fill="#22d3ee" fill-opacity="0.3" stroke="#22d3ee"/>
              <text x="230" y="126" font-weight="700">4,800 added to cart</text>
              <rect x="130" y="164" width="200" height="46" rx="8" fill="#f59e0b" fill-opacity="0.3" stroke="#f59e0b"/>
              <text x="230" y="192" font-weight="700">2,000 at checkout</text>
              <rect x="170" y="230" width="120" height="46" rx="8" fill="#10b981" fill-opacity="0.35" stroke="#10b981"/>
              <text x="230" y="258" font-weight="700">800 orders</text>
              <rect x="470" y="60" width="275" height="56" rx="10" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="607" y="82" font-weight="700">Browse to cart: 6.0%</text>
              <text x="607" y="102" font-size="11" fill="#9b99b8">size, photos, price, delivery date</text>
              <rect x="470" y="126" width="275" height="56" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="607" y="148" font-weight="700">Cart to checkout: 41.7%</text>
              <text x="607" y="168" font-size="11" fill="#9b99b8">shipping cost, COD fee, coupons</text>
              <rect x="470" y="192" width="275" height="56" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="607" y="214" font-weight="700">Checkout to order: 40%</text>
              <text x="607" y="234" font-size="11" fill="#9b99b8">forms, OTP, failed payments, trust</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#sg5a)">
                <path d="M384,121 L466,90"/>
                <path d="M334,187 L466,154"/>
                <path d="M294,253 L466,222"/>
              </g>
              <text x="380" y="306" font-size="12" fill="#6ee7b7">Mobile converts at 0.9%. Desktop converts at 1.4%.</text>
            </g>
          </svg>
          <figcaption>A funnel shows where shoppers leave. Each step has its own common problems.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Where shoppers leave, and what to fix</h3>
          <table class="lc-table">
            <thead><tr><th>Area</th><th>Common problems</th><th>Fixes to test at Zari &amp; Co</th></tr></thead>
            <tbody>
              <tr><td><strong>Homepage</strong></td><td>Shoppers cannot see what you sell. The page is slow on mobile.</td><td>A clear "Navratri collection" banner. Links to Sarees, Kurta sets and Lehengas. Smaller image files.</td></tr>
              <tr><td><strong>Product page</strong></td><td>Few photos. No size chart. Colour looks different in real life. No delivery date.</td><td>6 or more photos, including a fabric close-up. Size chart in cm and inches. An expected delivery date by PIN code.</td></tr>
              <tr><td><strong>Trust signals</strong></td><td>Shoppers are not sure the store is safe or real.</td><td>Real reviews with customer photos. A clear return and exchange policy. Seller name, address and contact details.</td></tr>
              <tr><td><strong>Checkout</strong></td><td>Long forms. Forced sign-up. Surprise charges at the end.</td><td>Guest checkout. Address filled from the PIN code. The full price, with shipping and any fees, shown early.</td></tr>
              <tr><td><strong>COD and payments</strong></td><td>Many buyers want COD, but COD parcels are often refused.</td><td>Show UPI clearly. Confirm COD orders by message before shipping. Test a small, honest prepaid discount.</td></tr>
            </tbody>
          </table>
          <p><strong>Trust signals</strong> are things on the page that make shoppers feel safe to buy. In India, the Consumer Protection (E-Commerce) Rules, 2020 ask sellers to show key details. These include seller details, the total price, the return and refund policy and the country of origin. This is general education, not legal advice. Check the current rules for your business.</p>
        </div>
        <div class="lc-card">
          <h3>Worked example: what small fixes are worth</h3>
          <p>Imran split August by device. Mobile had 64,000 sessions and 576 orders (0.9%). Desktop had 16,000 sessions and 224 orders (1.4%). Most shoppers are on mobile, so mobile fixes matter most.</p>
          <pre><code>If mobile conversion rises from 0.9% to 1.1%:
          64,000 × 1.1% = 704 orders (was 576)
          Extra orders  = 704 − 576 = 128
          Extra revenue = 128 × ₹1,800 = ₹2,30,400 a month</code></pre>
          <p>COD matters too. In August, 72 of 480 COD orders were RTO (15%). Only 8 of 320 prepaid orders were RTO (2.5%). RTO means the parcel came back without being delivered.</p>
          <pre><code>If COD RTO falls from 15% to 10%:
          480 × 10% = 48 RTO parcels (was 72), so 24 fewer
          Shipping saved: 24 × ₹150 = ₹3,600
          24 more parcels delivered, worth about 24 × ₹1,800 = ₹43,200</code></pre>
          <p>These are estimates. Check them with your own numbers, and measure the real result after each change.</p>
        </div>
        <div class="lc-card">
          <h3>Use AI to audit a page</h3>
          <p>AI can read your product page text and your funnel numbers. It can then list likely problems and fixes. But it cannot see how fast your page loads or how it looks on a cheap phone. You must check that yourself.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>How do I increase my conversion rate?</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Here is my product page text and my funnel for last month.
        Most shoppers use mobile and 60% pay by COD. List the top
        5 problems that could stop a sale. For each, give a fix,
        the effort (low, medium, high) and the number I should
        track. Do not suggest fake timers, fake stock alerts or
        pre-ticked add-ons. Do not invent product facts.</code></pre>
          <p>Then check the suggestions:</p>
          <ul class="lc-list">
            <li><strong>Shop on your own store.</strong> Use a phone on mobile data. Try COD and UPI.</li>
            <li><strong>Watch real shoppers.</strong> Ask 5 people to buy something and note where they get stuck.</li>
            <li><strong>Reject dark patterns.</strong> Fake countdowns and hidden fees may lift sales for a while. They also break trust and can break consumer rules.</li>
            <li><strong>Change one thing at a time</strong> where you can, so you know what worked.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Activity: Imran's conversion audit</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="tool" data-label="Store analytics">Imran opens the August funnel report in the store dashboard.</li>
              <li data-kind="result" data-label="Funnel">80,000 sessions, 4,800 added to cart, 2,000 reached checkout, 800 orders. The lehenga page has 8,000 views but only 60 sales, and 22% of those are returned for size.</li>
              <li data-kind="user" data-label="Imran asks">Here is the lehenga page text and the funnel. List the top 5 problems and fixes. Do not invent product facts.</li>
              <li data-kind="answer" data-label="AI answer">No size chart in cm. Only 3 photos. No delivery date. The COD fee appears only at payment. Also: "add a 2-hour countdown timer".</li>
              <li data-kind="warn" data-label="Dark pattern">There is no real deadline, so a countdown timer would be false urgency. Imran drops that idea.</li>
              <li data-kind="check" data-label="Phone test">Imran shops on his phone. The size chart is hidden in a tab, and photos load slowly. The other points are true.</li>
              <li data-kind="check" data-label="Plan">Fix the size chart and photos first. Show the COD fee on the product page. Track lehenga sales per 100 views and returns for 4 weeks.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to audit a product page and your funnel. Use the sample or paste your own page text and totals.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a conversion expert for Indian online stores. Use simple English.

        Store: [Zari &amp; Co, an ethnic wear brand. 80% of sessions are on mobile. 60% of orders are COD].
        Funnel last month: [80,000 sessions; 4,800 added to cart; 2,000 reached checkout; 800 orders].
        Product page text (copied from my store):
        [Noor cotton kurta set, 3-piece. ₹1,699. Sizes S to XXL. 3 photos. Beautiful and comfortable. Free shipping above ₹999. COD available (₹49 fee added at payment). Returns: contact us.]

        Please:
        1. Calculate the add-to-cart rate, the cart-to-checkout rate and the checkout-to-order rate. Show the maths.
        2. Say which step loses the most shoppers.
        3. Audit the product page. Make a table: problem, why it can stop a sale, fix, effort (low, medium, high).
        4. Suggest 3 checkout and payment fixes for shoppers who like COD.
        5. For the top 2 fixes, say which number I should track to see if it worked.

        Rules: do not invent product facts. Write [ASK] for missing details. No fake timers, fake stock alerts or pre-ticked add-ons.</pre>
            <ul class="ai-try-checks">
              <li>The rates are 6.0% (4,800 ÷ 80,000), 41.7% (2,000 ÷ 4,800) and 40% (800 ÷ 2,000).</li>
              <li>It flags the late COD fee, the unclear return policy, the few photos and the missing size chart and care details.</li>
              <li>Missing facts are marked [ASK], not invented.</li>
              <li>No fix uses false urgency, hidden fees or pre-ticked add-ons.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> First find where shoppers leave. Then fix what worries them: size, photos, price, trust and payment. Show the full price early and keep every fix honest. Measure each change, because a real rise in conversion also makes every ad rupee go further.
        </div>
      HTML
      starter_code: nil
    },
    6 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-ecom">E-commerce</div>
          <h1 class="lc-title">Product Recommendations</h1>
        </div>
        <p class="lc-lead">Recommendations are the "Goes well with" and "You may also like" blocks in a store. Good ones help shoppers find what they need faster. They also make orders bigger. In this lesson you will learn the main types of recommendations. You will see how recommendation engines work, in plain words. Then you will read a simple "bought together" table from Zari &amp; Co's orders and use AI to choose honest, useful pairs.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 330" role="img" aria-label="How a store picks recommendations. Order data gives frequently bought together items, such as the Mehr saree with a ready-made blouse. Product details give similar items, such as red georgette sarees from 2,000 to 3,000 rupees. Sales data gives bestsellers, such as the Noor kurta set with 220 sold in August. A person checks stock, colours, labels and returns before anything goes live.">
            <defs><marker id="sg6a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="120" y="30" font-size="12" font-weight="700" fill="#9b99b8">What the store knows</text>
              <text x="385" y="30" font-size="12" font-weight="700" fill="#9b99b8">Type of recommendation</text>
              <text x="645" y="30" font-size="12" font-weight="700" fill="#9b99b8">Zari &amp; Co example</text>
              <rect x="20" y="44" width="200" height="64" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="120" y="70" font-weight="700">Orders</text>
              <text x="120" y="90" font-size="11" fill="#9b99b8">items bought together</text>
              <rect x="280" y="44" width="210" height="64" rx="10" fill="#27274e" stroke="#8b5cf6"/>
              <text x="385" y="70" font-weight="700">Frequently bought together</text>
              <text x="385" y="90" font-size="11" fill="#9b99b8">items often in one order</text>
              <rect x="550" y="44" width="190" height="64" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="645" y="70" font-weight="700">Mehr saree</text>
              <text x="645" y="90" font-size="11" fill="#6ee7b7">+ ready-made blouse (30%)</text>
              <rect x="20" y="124" width="200" height="64" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="120" y="150" font-weight="700">Product details</text>
              <text x="120" y="170" font-size="11" fill="#9b99b8">type, colour, fabric, price</text>
              <rect x="280" y="124" width="210" height="64" rx="10" fill="#27274e" stroke="#8b5cf6"/>
              <text x="385" y="150" font-weight="700">Similar items</text>
              <text x="385" y="170" font-size="11" fill="#9b99b8">same type, colour and price</text>
              <rect x="550" y="124" width="190" height="64" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="645" y="150" font-weight="700">Red georgette sarees</text>
              <text x="645" y="170" font-size="11" fill="#6ee7b7">₹2,000 to ₹3,000</text>
              <rect x="20" y="204" width="200" height="64" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="120" y="230" font-weight="700">Sales data</text>
              <text x="120" y="250" font-size="11" fill="#9b99b8">units sold, page views</text>
              <rect x="280" y="204" width="210" height="64" rx="10" fill="#27274e" stroke="#8b5cf6"/>
              <text x="385" y="230" font-weight="700">Bestsellers</text>
              <text x="385" y="250" font-size="11" fill="#9b99b8">what sells most right now</text>
              <rect x="550" y="204" width="190" height="64" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="645" y="230" font-weight="700">Noor kurta set</text>
              <text x="645" y="250" font-size="11" fill="#6ee7b7">220 sold in August</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#sg6a)">
                <path d="M222,76 L276,76"/>
                <path d="M492,76 L546,76"/>
                <path d="M222,156 L276,156"/>
                <path d="M492,156 L546,156"/>
                <path d="M222,236 L276,236"/>
                <path d="M492,236 L546,236"/>
              </g>
              <rect x="20" y="284" width="720" height="36" rx="10" fill="#1f1f44" stroke="#f59e0b" stroke-dasharray="6 4"/>
              <text x="380" y="307" font-size="12" fill="#fcd34d">A person checks: in stock, colours really match, labels are true, low returns</text>
            </g>
          </svg>
          <figcaption>Three kinds of data give three kinds of recommendations. A person checks them before shoppers see them.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The main types of recommendations</h3>
          <table class="lc-table">
            <thead><tr><th>Type</th><th>What it shows</th><th>Best place</th><th>Zari &amp; Co example</th></tr></thead>
            <tbody>
              <tr><td><strong>Frequently bought together</strong></td><td>Items that often sit in the same order</td><td>Product page, cart</td><td>Mehr saree with a ready-made blouse</td></tr>
              <tr><td><strong>Similar items</strong></td><td>Other items of the same type, colour or price</td><td>Product page, sold-out pages</td><td>Other georgette sarees from ₹2,000 to ₹3,000</td></tr>
              <tr><td><strong>Bestsellers</strong></td><td>What sells most right now</td><td>Homepage, emails to people you know little about</td><td>Noor cotton kurta set (220 sold in August)</td></tr>
              <tr><td><strong>Personal ("For you")</strong></td><td>Items based on what this shopper viewed or bought</td><td>Logged-in pages, emails</td><td>A past dupatta buyer sees new Chanderi colours</td></tr>
            </tbody>
          </table>
          <p>A <strong>cross-sell</strong> is a related item added to the order, like a blouse with a saree. Frequently bought together blocks are the most common way to cross-sell. Similar items help when the first choice is sold out or not quite right.</p>
        </div>
        <div class="lc-card">
          <h3>How recommendation engines work, in plain words</h3>
          <p>A <strong>recommendation engine</strong> is the software that chooses which items to show. Most engines use one or more of these simple ideas:</p>
          <ul class="lc-list">
            <li><strong>Counting pairs.</strong> It counts how often two items appear in the same order. Pairs that appear together more than usual get shown together.</li>
            <li><strong>Matching details.</strong> It compares product details such as type, fabric, colour and price. This is how "similar items" work. It also works for new products with no sales yet.</li>
            <li><strong>People like you.</strong> It finds shoppers with a similar history. Then it shows what those shoppers bought next. This needs a lot of data.</li>
            <li><strong>Popularity.</strong> It ranks items by recent sales or views. This is the safe choice for a first-time visitor.</li>
          </ul>
          <p>New products have no sales history yet. This is called the <strong>cold start</strong> problem. For new items, use product details and your own staff picks.</p>
          <p>Many store platforms have recommendation blocks built in. For example, Shopify's Search &amp; Discovery app lets you choose related and complementary products by hand. Marketplaces such as Amazon and Flipkart run their own recommendations. There, clear titles, correct attributes and good photos help your products get matched. Features change often, so check each platform's current help pages.</p>
        </div>
        <div class="lc-card">
          <h3>Worked example: reading a "bought together" table</h3>
          <p>Imran exported June to August orders: 2,320 orders in all. He made one row per order, with a Yes or No column for each product. No customer names or phone numbers. Then he counted pairs.</p>
          <p>Two numbers tell you if a pair is worth showing:</p>
          <ul class="lc-list">
            <li><strong>Also-bought rate:</strong> of the orders with item A, the share that also had item B. Both ÷ orders with A.</li>
            <li><strong>Lift:</strong> how much more likely B is when A is in the order. Also-bought rate ÷ B's share of all orders. A lift above 1 means the pair goes together more than chance. A lift below 1 means it does not.</li>
          </ul>
          <table class="lc-table">
            <thead><tr><th>Pair (A → B)</th><th>Orders with A</th><th>Orders with B</th><th>Both</th><th>Also-bought rate</th><th>B's share of all orders</th><th>Lift</th></tr></thead>
            <tbody>
              <tr><td>Mehr saree → ready-made blouse</td><td>500</td><td>232</td><td>150</td><td>30%</td><td>10%</td><td><strong>3.0</strong></td></tr>
              <tr><td>Noor kurta set → Kids' kurta pyjama</td><td>600</td><td>290</td><td>120</td><td>20%</td><td>12.5%</td><td><strong>1.6</strong></td></tr>
              <tr><td>Noor kurta set → Chanderi dupatta</td><td>600</td><td>464</td><td>150</td><td>25%</td><td>20%</td><td>1.25</td></tr>
              <tr><td>Mehr saree → Chanderi dupatta</td><td>500</td><td>464</td><td>50</td><td>10%</td><td>20%</td><td>0.5</td></tr>
            </tbody>
          </table>
          <p>The saree and blouse pair is strong: an order with the saree is three times as likely as an average order to include the blouse. Mothers who buy the Noor kurta set often add the kids' set for matching family outfits. The saree and dupatta pair has a lift of 0.5, so do not show it. A saree does not need a dupatta.</p>
          <p>Spreadsheet formulas (sheet "Pairs", row 2 is the saree and blouse pair, total orders in <code>H1</code>):</p>
          <pre><code>Both (from the Orders sheet)  =COUNTIFS(Orders!C:C,"Yes",Orders!D:D,"Yes")  → 150
        E2 Also-bought rate           =D2/B2         → 30%
        F2 B's share of all orders    =C2/$H$1       → 10%  (232 ÷ 2,320)
        G2 Lift                       =E2/F2         → 3.0</code></pre>
          <p>What is it worth? In August, 54 of 180 saree orders had a blouse (30%). If a "Goes well with" block lifts this to 35%, that is 63 blouses. The 9 extra blouses × ₹899 = ₹8,091 more a month, from one small block.</p>
          <p>Before you trust a pair, check:</p>
          <ul class="lc-list">
            <li><strong>Enough orders.</strong> A pair with only 5 or 10 orders together can be chance. Wait for more data.</li>
            <li><strong>Stock and sizes.</strong> Never recommend an item that is sold out in most sizes.</li>
            <li><strong>Returns.</strong> The Gulnar lehenga has 22% returns for size. Fix the size guide before you push it harder.</li>
            <li><strong>Honest labels.</strong> Call an item a "Bestseller" only if it truly sells most.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>How AI helps, and what it cannot do</h3>
          <p>AI can explain your pair table, rank pairs and write short "Goes well with" notes. It can also suggest style matches for new products with no sales yet. But it cannot see your stock, your photos or your real colours. It only knows what you give it.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>What products should I recommend on my store?</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Here are pair counts from 2,320 orders (no customer data).
        For each pair, calculate the also-bought rate and lift.
        Show the maths. Rank the pairs, say which to show and
        which to skip, and flag pairs with too few orders.
        Write a one-line "Goes well with" note for the top 2,
        using only the product facts I give. No invented claims.</code></pre>
          <p>Then check AI's maths in your sheet. Look at the paired items side by side in real photos. A blouse that "matches" in text may clash in real life.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: which recommendation fits?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Imran is planning recommendation blocks. Sort each situation by the type of recommendation that fits it best.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="fbt" data-label="Frequently bought together"></div>
              <div data-sorter-target="bucket" data-bucket="similar" data-label="Similar items"></div>
              <div data-sorter-target="bucket" data-bucket="best" data-label="Bestsellers"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="fbt" data-why="Real orders show that 30% of saree buyers add this blouse, with a lift of 3.0.">On the Mehr saree page, show the ready-made blouse that many saree buyers add</li>
              <li data-bucket="similar" data-why="The shopper wants the same kind of item. Show close matches that are in stock.">The Gulnar lehenga is sold out in size M. Show other lehengas with size M in stock</li>
              <li data-bucket="best" data-why="There is no history for this visitor, so popular items are a safe start.">A first-time visitor lands on the homepage</li>
              <li data-bucket="fbt" data-why="Orders show these two items together more than chance (lift 1.6).">In a cart with the Noor kurta set, suggest the kids' kurta pyjama for matching outfits</li>
              <li data-bucket="similar" data-why="Same type, colour and price range helps a shopper compare.">A shopper views a red georgette saree at ₹2,499. Show other red georgette sarees near that price</li>
              <li data-bucket="best" data-why="You know little about these people's taste, so show what sells most.">A festive email to one-time buyers who last ordered 10 months ago</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to turn pair counts into honest "Goes well with" choices. Use the sample counts or your own (no customer data).</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a merchandising analyst for an Indian online store. Use simple English.

        Store: [Zari &amp; Co, an ethnic wear brand]. Total orders: [2,320 (June to August)].
        Pair counts from my order export (no customer data):
        [Mehr saree 500 orders; ready-made blouse 232; both 150
        Noor kurta set 600; kids' kurta pyjama 290; both 120
        Noor kurta set 600; Chanderi dupatta 464; both 150
        Mehr saree 500; Chanderi dupatta 464; both 50
        Gulnar lehenga 160; Chanderi dupatta 464; both 8]
        Product notes: [Gulnar lehenga: 22% returns for size. Ready-made blouse: 3 colours only.]

        Please:
        1. For each pair, calculate the also-bought rate (both ÷ orders with the first item), the second item's share of all orders, and lift (also-bought rate ÷ share). Show the maths in a table.
        2. Say which pairs to show as "Goes well with" and which to skip, and why.
        3. Flag any pair with too few orders to trust.
        4. Write a one-line note for the top 2 pairs, using only the facts given.
        5. List what I must check before this goes live.

        Do not invent product facts or reviews.</pre>
            <ul class="ai-try-checks">
              <li>Saree → blouse: 30%, lift 3.0. Kurta set → kids' set: 20%, lift 1.6.</li>
              <li>Saree → dupatta (lift 0.5) is skipped. Lehenga → dupatta (only 8 orders) is flagged.</li>
              <li>The notes use only the facts given, with no invented fabric or quality claims.</li>
              <li>The checks include stock, real colours and the lehenga's high return rate.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Good recommendations come from your own orders, not guesses. Use the also-bought rate and lift to find real pairs. Skip pairs with a lift below 1 or too few orders. Let AI do the maths and the wording, and then check stock, colours and labels yourself.
        </div>
      HTML
      starter_code: nil
    },
    7 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-ecom">E-commerce</div>
          <h1 class="lc-title">Bundles, Upsells and Cross-Sells</h1>
        </div>
        <p class="lc-lead">Bundles, upsells and cross-sells raise your average order value (AOV: revenue ÷ orders). Done well, they help shoppers get a complete outfit in one go. Done badly, they cut your profit or trick shoppers. In this lesson you will design a bundle, work out its real profit and write honest offer text with AI. You will also learn why a big discount can lose money.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 310" role="img" aria-label="Pricing a saree and blouse bundle. Bought separately, the Mehr saree at 2,499 rupees and the ready-made blouse at 899 rupees cost 3,398 rupees. Bundle A at 3,199 rupees saves 199 rupees but loses 3,996 rupees of gross profit a month. Bundle B at 3,299 rupees saves 99 rupees and adds 4,104 rupees. A fake MRP of 6,999 rupees is not honest.">
            <defs><marker id="sg7a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="380" y="24" font-weight="700" fill="#c4b5fd">Pricing a saree + blouse bundle (made-up numbers)</text>
              <rect x="20" y="44" width="220" height="150" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="130" y="70" font-weight="700">Bought separately</text>
              <text x="130" y="98">Mehr saree ₹2,499</text>
              <text x="130" y="120">Ready-made blouse ₹899</text>
              <text x="130" y="150" font-size="16" font-weight="700" fill="#93c5fd">₹3,398</text>
              <text x="130" y="178" font-size="11" fill="#9b99b8">the only honest anchor</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#sg7a)">
                <path d="M242,119 L296,119"/>
              </g>
              <text x="269" y="108" font-size="11" fill="#9b99b8">bundle</text>
              <rect x="300" y="44" width="210" height="150" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="405" y="70" font-weight="700">Bundle A: ₹3,199</text>
              <text x="405" y="98">You save ₹199 (5.9%)</text>
              <text x="405" y="120">Gross profit ₹1,499</text>
              <text x="405" y="150" font-size="16" font-weight="700" fill="#f9a8d4">−₹3,996 a month</text>
              <text x="405" y="178" font-size="11" fill="#9b99b8">sounds generous, loses money</text>
              <rect x="530" y="44" width="210" height="150" rx="10" fill="#27274e" stroke="#10b981"/>
              <text x="635" y="70" font-weight="700">Bundle B: ₹3,299</text>
              <text x="635" y="98">You save ₹99 (2.9%)</text>
              <text x="635" y="120">Gross profit ₹1,599</text>
              <text x="635" y="150" font-size="16" font-weight="700" fill="#6ee7b7">+₹4,104 a month</text>
              <text x="635" y="178" font-size="11" fill="#9b99b8">smaller saving, more profit</text>
              <rect x="20" y="212" width="720" height="44" rx="10" fill="#1f1f44" stroke="#ec4899" stroke-dasharray="6 4"/>
              <text x="380" y="239" font-size="12" fill="#f9a8d4">Not honest: "MRP ₹6,999, now ₹3,299 (53% off)" when it never sold at ₹6,999</text>
              <text x="380" y="280" font-size="11" fill="#9b99b8">Change in monthly gross profit if 81 of 180 August saree buyers take the bundle (54 already bought both).</text>
              <text x="380" y="298" font-size="11" fill="#9b99b8">Gross profit = price − product cost. Costs: saree ₹1,250, blouse ₹450.</text>
            </g>
          </svg>
          <figcaption>The bigger discount sounds better but earns less. The real separate price is the only honest anchor.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Four ideas you need</h3>
          <table class="lc-table">
            <thead><tr><th>Idea</th><th>What it means</th><th>Zari &amp; Co example</th><th>The honest way</th></tr></thead>
            <tbody>
              <tr><td><strong>Bundle</strong></td><td>Two or more items sold together at one price</td><td>Mehr saree + ready-made blouse for ₹3,299</td><td>Each item can still be bought alone. The saving is real.</td></tr>
              <tr><td><strong>Upsell</strong></td><td>A better or bigger version of the item the shopper is looking at</td><td>Kids' kurta pyjama (₹999) or the same set with a jacket (₹1,299)</td><td>Show the real difference. Keep the cheaper option easy to choose.</td></tr>
              <tr><td><strong>Cross-sell</strong></td><td>A related item added to the order</td><td>A Chanderi dupatta (₹699) suggested in a kurta set cart</td><td>Suggest it with an unticked "Add" button. Never add it for the shopper.</td></tr>
              <tr><td><strong>Price anchor</strong></td><td>A reference price that makes another price look good</td><td>"₹3,398 if bought separately, ₹3,299 as a bundle"</td><td>Use only real prices that shoppers actually pay today.</td></tr>
            </tbody>
          </table>
          <p>Good bundle ideas come from your own orders. The saree and blouse pair has a lift of 3.0: saree buyers already want a blouse. Other ideas: a mother-and-child festive set, or a "gift box" of two Chanderi dupattas.</p>
        </div>
        <div class="lc-card">
          <h3>Worked example: why a bigger discount can lose money</h3>
          <p><strong>Gross profit</strong> is the price minus the product cost. Heena has two bundle prices in mind. The saree costs ₹1,250 and the blouse ₹450 (made-up numbers).</p>
          <table class="lc-table">
            <thead><tr><th></th><th>Separately</th><th>Bundle A</th><th>Bundle B</th></tr></thead>
            <tbody>
              <tr><td>Price</td><td>₹3,398</td><td>₹3,199</td><td>₹3,299</td></tr>
              <tr><td>Shopper saves</td><td>-</td><td>₹199 (5.9%)</td><td>₹99 (2.9%)</td></tr>
              <tr><td>Gross profit per order</td><td>₹1,698</td><td>₹1,499</td><td>₹1,599</td></tr>
              <tr><td>Extra profit when a saree-only buyer switches (saree alone makes ₹1,249)</td><td>-</td><td>₹250</td><td>₹350</td></tr>
              <tr><td>Profit lost on the 54 who already buy both</td><td>-</td><td>54 × ₹199 = ₹10,746</td><td>54 × ₹99 = ₹5,346</td></tr>
              <tr><td>Extra bundle buyers needed to break even</td><td>-</td><td>about 43</td><td>about 16</td></tr>
            </tbody>
          </table>
          <p>The hidden cost is <strong>cannibalisation</strong>. In August, 54 of 180 saree buyers already bought the blouse at full price. With a bundle, they pay less for the same thing. Say the bundle lifts blouse buyers from 54 to 81 (27 more):</p>
          <pre><code>Bundle A: 27 × ₹250 − ₹10,746 = −₹3,996 a month
        Bundle B: 27 × ₹350 − ₹5,346  = +₹4,104 a month</code></pre>
          <p>The smaller saving makes more money. Spreadsheet version: put the saree price in <code>B2</code> (2499), blouse price in <code>B3</code> (899), costs in <code>C2</code> (1250) and <code>C3</code> (450), bundle price in <code>B5</code> (3299), existing both-buyers in <code>B6</code> (54) and new bundle buyers in <code>B7</code> (27).</p>
          <pre><code>Saving              =B2+B3-B5                     → 99
        Bundle gross profit =B5-C2-C3                     → 1,599
        Extra per switcher  =(B5-C2-C3)-(B2-C2)           → 350
        Break-even buyers   =B6*(B2+B3-B5)/((B5-C2-C3)-(B2-C2))  → 15.27
        Net change          =B7*((B5-C2-C3)-(B2-C2))-B6*(B2+B3-B5)  → 4,104</code></pre>
          <p>Change <code>B5</code> to 3199 and the net change becomes −3,996. These numbers ignore shipping and payment fees. A bundle ships as one parcel, which can save you money too. Always test for a few weeks and measure the real result.</p>
        </div>
        <div class="lc-card">
          <h3>Honest upselling, with help from AI</h3>
          <ul class="lc-list">
            <li><strong>No fake anchors.</strong> Do not show a made-up MRP or "was" price just to make the discount look big. MRP (maximum retail price) is the highest price you may charge. It is not a tool for fake discounts.</li>
            <li><strong>No pre-ticked items.</strong> Adding an item without asking is basket sneaking. India's CCPA dark patterns guidelines (2023) name it as a dark pattern.</li>
            <li><strong>No fake urgency.</strong> Do not write "Only 2 bundles left" unless it is true.</li>
            <li><strong>Upsell only what fits.</strong> Suggest a better item only if it meets the shopper's need.</li>
          </ul>
          <p>This is general education, not legal advice. Check the current rules with a qualified professional.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Create an irresistible bundle offer for my saree
        with a big discount and urgency.</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Saree ₹2,499 (cost ₹1,250), blouse ₹899 (cost ₹450).
        Last month 180 saree orders, 54 already with a blouse.
        Compare bundle prices ₹3,199 and ₹3,299. For each, show
        the saving, gross profit, profit lost on the 54, and the
        break-even number of extra buyers. Then write a bundle
        label. The only reference price is the real ₹3,398.
        No fake MRP, no timers, no pre-ticked items.</code></pre>
        </div>
        <div class="lc-card">
          <h3>Activity: Heena prices a bundle</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Heena asks">Suggest a festive bundle of the Mehr saree (₹2,499) and the ready-made blouse (₹899). Our costs are ₹1,250 and ₹450.</li>
              <li data-kind="answer" data-label="AI draft">Bundle price ₹2,999. Show "MRP ₹5,999, 50% off" to make it exciting. Add the blouse to every saree order by default.</li>
              <li data-kind="warn" data-label="Dark patterns">The two items never sold for ₹5,999, so that is a fake anchor. Adding the blouse by default is basket sneaking.</li>
              <li data-kind="tool" data-label="Spreadsheet">Imran enters the prices, costs and August numbers: 180 saree orders, 54 already with a blouse.</li>
              <li data-kind="result" data-label="Sheet result">At ₹2,999, the shopper saves ₹399. Break-even needs about 431 extra bundle buyers. That is more than all 180 saree orders.</li>
              <li data-kind="user" data-label="Better prompt">Compare ₹3,199 and ₹3,299. Use the real separate total of ₹3,398 as the only anchor. Show break-even for each.</li>
              <li data-kind="answer" data-label="AI answer">₹3,199 needs about 43 extra bundle buyers to break even. ₹3,299 needs about 16.</li>
              <li data-kind="check" data-label="Decision">Heena picks ₹3,299 for a 4-week test. The bundle is optional and the saree is still sold alone. Imran tracks how many saree orders include a blouse.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to compare two bundle prices and write an honest bundle label. Use the sample or your own prices and costs.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a pricing adviser for a small Indian online store. Use simple English and show all maths.

        Products (made-up numbers):
        [Item A: Mehr georgette saree, price ₹2,499, product cost ₹1,250
        Item B: Ready-made blouse, price ₹899, product cost ₹450]
        Last month: [180 orders had Item A. 54 of them also had Item B at full price.]
        Bundle prices to compare: [₹3,199 and ₹3,299]

        Please:
        1. For each bundle price, calculate the saving vs buying separately, the gross profit per bundle (price minus both costs), and the extra gross profit when an Item A-only buyer switches to the bundle.
        2. Calculate the profit I lose because buyers who already buy both now pay less.
        3. Calculate how many extra bundle buyers I need to break even.
        4. Recommend one price and say what to measure in a 4-week test.
        5. Write a short, honest bundle label. The only reference price must be the real separate total.

        Rules: no fake MRP or "was" price, no pre-ticked items, no countdown timers. Both items stay on sale separately.</pre>
            <ul class="ai-try-checks">
              <li>The separate total is ₹3,398. The savings are ₹199 and ₹99.</li>
              <li>Gross profit per bundle is ₹1,499 and ₹1,599. Break-even is about 43 and about 16 extra buyers.</li>
              <li>The label uses ₹3,398 as the only anchor, with no fake MRP or timer.</li>
              <li>You check the maths in your own spreadsheet before you set the price.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A bundle should help the shopper and earn you more gross profit. Remember the buyers who would have bought both anyway. A small, real saving often beats a big one. Use only real prices as anchors, and never add items for the shopper.
        </div>
      HTML
      starter_code: nil
    },
    8 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-ecom">E-commerce</div>
          <h1 class="lc-title">Abandoned Cart Recovery</h1>
        </div>
        <p class="lc-lead">An abandoned cart is a cart that a shopper fills but does not buy. In many stores, most carts end this way. Some of these shoppers still want the item. A helpful reminder can bring them back. In this lesson you will learn why carts are abandoned and how to send email, SMS and WhatsApp reminders with good timing. You will also learn why consent comes first, and how to measure what reminders really add.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 340" role="img" aria-label="Zari and Co's abandoned carts in August. 4,800 shoppers added to cart. 800 ordered. 2,800 left before checkout, mostly with no contact details. 1,200 left at checkout. 900 of them left a phone or email, and 540 agreed to WhatsApp or SMS. 480 got reminders and 48 ordered. A holdout group of 60 got no reminder and 3 ordered. The reminders caused about 24 extra orders, worth about 43,200 rupees.">
            <defs><marker id="sg8a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="380" y="22" font-weight="700" fill="#c4b5fd">Zari &amp; Co's abandoned carts, August (made-up numbers)</text>
              <rect x="20" y="120" width="170" height="64" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="105" y="146" font-weight="700">Added to cart</text>
              <text x="105" y="170" font-size="16" font-weight="700" fill="#93c5fd">4,800</text>
              <rect x="240" y="40" width="200" height="54" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="340" y="62" font-weight="700">Ordered</text>
              <text x="340" y="82" font-size="11" fill="#6ee7b7">800 (16.7% of carts)</text>
              <rect x="240" y="120" width="200" height="54" rx="10" fill="#1f1f44" stroke="#9b99b8"/>
              <text x="340" y="142" font-weight="700">Left before checkout</text>
              <text x="340" y="162" font-size="11" fill="#9b99b8">2,800 (most gave no contact)</text>
              <rect x="240" y="200" width="200" height="54" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="340" y="222" font-weight="700">Left at checkout</text>
              <text x="340" y="242" font-size="11" fill="#fcd34d">1,200 (60% of checkouts)</text>
              <rect x="500" y="40" width="240" height="54" rx="10" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="620" y="62" font-weight="700">Left a phone or email</text>
              <text x="620" y="82" font-size="11" fill="#9b99b8">900 of 1,200</text>
              <rect x="500" y="120" width="240" height="54" rx="10" fill="#27274e" stroke="#8b5cf6"/>
              <text x="620" y="142" font-weight="700">Agreed to WhatsApp or SMS</text>
              <text x="620" y="162" font-size="11" fill="#c4b5fd">540 of 900</text>
              <rect x="500" y="200" width="115" height="54" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="557" y="222" font-size="12" font-weight="700">Reminded: 480</text>
              <text x="557" y="242" font-size="11" fill="#6ee7b7">48 ordered (10%)</text>
              <rect x="625" y="200" width="115" height="54" rx="10" fill="#1f1f44" stroke="#9b99b8"/>
              <text x="682" y="222" font-size="12" font-weight="700">Holdout: 60</text>
              <text x="682" y="242" font-size="11" fill="#9b99b8">3 ordered (5%)</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#sg8a)">
                <path d="M192,140 L236,72"/>
                <path d="M192,152 L236,147"/>
                <path d="M192,164 L236,222"/>
                <path d="M442,227 L470,227 L470,67 L496,67"/>
                <path d="M620,96 L620,116"/>
                <path d="M590,176 L562,196"/>
                <path d="M650,176 L678,196"/>
              </g>
              <rect x="20" y="274" width="720" height="56" rx="10" fill="#27274e" stroke="#10b981"/>
              <text x="380" y="297" font-weight="700">Extra orders caused by reminders: 480 × (10% − 5%) = 24, about ₹43,200</text>
              <text x="380" y="318" font-size="11" fill="#9b99b8">Not 48: about 1 in 20 would have ordered with no reminder at all.</text>
            </g>
          </svg>
          <figcaption>Only shoppers who left contact details and agreed to messages can get a reminder. A holdout group shows what the reminders really add.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Why carts are abandoned</h3>
          <p>In August, 4,800 shoppers added something to their cart at Zari &amp; Co. Only 800 ordered. So 4,000 carts were abandoned: 4,000 ÷ 4,800 = 83.3%. Of these, 2,800 left before checkout and 1,200 left at checkout.</p>
          <table class="lc-table">
            <thead><tr><th>Common reason</th><th>What you may see</th><th>Fix on the store first</th><th>Can a reminder help?</th></tr></thead>
            <tbody>
              <tr><td>Surprise costs</td><td>Many leave at the payment step</td><td>Show the COD fee and shipping on the product page</td><td>A little. Fix the page first.</td></tr>
              <tr><td>Just browsing or comparing</td><td>Carts with many items, no checkout</td><td>Clear photos, sizes and delivery dates</td><td>Yes, a gentle reminder</td></tr>
              <tr><td>Size doubt</td><td>Visits to the size chart, then exit</td><td>A clear size chart and exchange policy</td><td>Yes, with a size help link</td></tr>
              <tr><td>Payment failed</td><td>A UPI or card payment that did not go through</td><td>Offer other payment options on the same page</td><td>Yes, a quick "try again" message</td></tr>
              <tr><td>Slow or long checkout</td><td>Exits on the address or OTP step</td><td>Guest checkout, address filled from the PIN code</td><td>Only after the fix</td></tr>
            </tbody>
          </table>
          <p>These are common reasons, not your reasons. Find yours: read customer messages, add a one-question exit survey and try your own checkout on a phone. AI can group 200 survey answers into themes in minutes. You check a sample of the answers yourself.</p>
        </div>
        <div class="lc-card">
          <h3>Consent comes first</h3>
          <p><strong>Consent</strong> means the shopper clearly agreed to get messages from you. A phone number typed at checkout is not consent to marketing. In August, 900 of the 1,200 checkout leavers had typed a phone number or email. Only 540 had ticked the box to get WhatsApp and SMS updates. Heena's store sends reminders only to those 540.</p>
          <table class="lc-table">
            <thead><tr><th>Channel</th><th>What you need (in general)</th></tr></thead>
            <tbody>
              <tr><td><strong>WhatsApp</strong></td><td>The shopper's opt-in to get your messages on WhatsApp. Messages that you start (not replies within 24 hours of the shopper's last message) must use templates that WhatsApp approves. Follow WhatsApp's Business Messaging Policy.</td></tr>
              <tr><td><strong>SMS</strong></td><td>In India, business SMS go through the DLT system under TRAI rules. You register your sender name and message templates. Links in SMS must also be registered (whitelisted), or the message can be blocked. Promotional SMS need consent and must respect "do not disturb" choices.</td></tr>
              <tr><td><strong>Email</strong></td><td>Consent for marketing emails and a working unsubscribe link in every email.</td></tr>
            </tbody>
          </table>
          <p>India's DPDP Act (Digital Personal Data Protection Act, 2023) says consent should be free, specific, clear and easy to withdraw. So use an <strong>unticked</strong> box at checkout, for example:</p>
          <pre><code>[ ] Send me order updates and cart reminders on WhatsApp
            and SMS. I can reply STOP at any time.</code></pre>
          <p>Rules and platform policies change. This is general education, not legal advice. Check the current rules with a qualified lawyer and your messaging provider.</p>
        </div>
        <div class="lc-card">
          <h3>Timing and messages, with help from AI</h3>
          <p>A simple flow that many stores use:</p>
          <ul class="lc-list">
            <li><strong>About 1 hour later:</strong> a WhatsApp or SMS reminder with the cart link and the full price.</li>
            <li><strong>About 24 hours later:</strong> one email that answers a likely worry, such as size or delivery.</li>
            <li><strong>Then stop.</strong> Send no more than two reminders. Stop at once if the shopper orders or opts out. Do not send late at night.</li>
          </ul>
          <p>Do not put a discount in the first reminder. If every cart gets a discount, shoppers learn to leave carts on purpose. If you do give an offer, it must be real and the same for everyone who qualifies.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Write an urgent cart reminder that makes people buy.</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Write a WhatsApp cart reminder under 60 words. Item:
        Noor cotton kurta set, ₹1,699, size M. COD fee ₹49.
        Include [LINK], the full price and "Reply STOP to opt
        out". Friendly tone. No discount, no "only 1 left" and
        no deadline. Use only these facts.</code></pre>
          <p>A good draft looks like this:</p>
          <pre><code>Hi {first_name}, your Noor cotton kurta set (size M, ₹1,699)
        is still in your cart at Zari &amp; Co. Need help with size?
        Reply here. Complete your order: [LINK]
        COD has a ₹49 fee. Reply STOP to opt out.</code></pre>
          <p>Check every draft: the price, the size, the fees, the link and the opt-out. Do not paste real customer names or numbers into a public AI tool. Use placeholders like <code>{first_name}</code>.</p>
        </div>
        <div class="lc-card">
          <h3>Measure honestly with a holdout group</h3>
          <p>A <strong>holdout group</strong> is a small group that gets no reminder. It shows how many shoppers would have come back anyway. Imran kept 60 of the 540 as a holdout. 480 got reminders.</p>
          <table class="lc-table">
            <thead><tr><th>Group</th><th>Shoppers</th><th>Ordered</th><th>Rate</th></tr></thead>
            <tbody>
              <tr><td>Reminded</td><td>480</td><td>48</td><td>10%</td></tr>
              <tr><td>Holdout (no reminder)</td><td>60</td><td>3</td><td>5%</td></tr>
            </tbody>
          </table>
          <p>The dashboard says reminders "recovered" 48 orders worth ₹86,400. But about 5% would have ordered anyway. The real extra is 480 × (10% − 5%) = 24 orders, about ₹43,200. That is still good. It is just half of what the dashboard says.</p>
          <p>Spreadsheet (sheet "Carts": <code>B2</code> 480 reminded, <code>C2</code> 48 ordered, <code>B3</code> 60 holdout, <code>C3</code> 3 ordered):</p>
          <pre><code>D2 Reminded rate    =C2/B2               → 10%
        D3 Holdout rate     =C3/B3               → 5%
        Extra orders        =B2*(D2-D3)          → 24
        Extra revenue (₹)   =B2*(D2-D3)*1800     → 43,200
        Cart abandonment    =(4800-800)/4800     → 83.3%</code></pre>
          <p>A holdout of 60 is small, so one month can be noisy. Keep the test running for a few more weeks before you decide.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: build the cart recovery flow</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put Imran's cart recovery steps in the correct order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">At checkout, show an unticked box to get WhatsApp and SMS updates, with a clear note on what you will send</li>
              <li data-order="2">A shopper types a phone number, ticks the box and then leaves without ordering</li>
              <li data-order="3">After about 1 hour, check that the shopper has still not ordered</li>
              <li data-order="4">Send a WhatsApp reminder with the cart link, the full price and a way to opt out</li>
              <li data-order="5">After about 24 hours, send one follow-up email if they agreed to emails and still have not ordered</li>
              <li data-order="6">Stop all reminders when the shopper orders, opts out or has had two reminders</li>
              <li data-order="7">Compare the order rate of reminded shoppers with the holdout group</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to draft a two-message cart reminder flow with clear rules. Use the sample cart or your own product facts.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a customer messaging expert for Indian online stores. Use simple, polite English.

        Store: [Zari &amp; Co, ethnic wear]. Cart item: [Noor cotton kurta set, ₹1,699, size M].
        Delivery: [3 to 5 days]. Payment: [UPI, cards, or COD with a ₹49 fee]. Returns: [size exchange within 7 days of delivery].
        The shopper agreed to: [WhatsApp and email].

        Please write a cart reminder flow:
        1. Message 1 (WhatsApp, about 1 hour later): under 60 words, with the cart link as [LINK], the full price, the COD fee and "Reply STOP to opt out".
        2. Message 2 (email, about 24 hours later): a subject line under 50 characters and a short body that answers one likely worry (size, delivery, payment or returns).
        3. Rules: when to stop, the latest hour to send, and the most messages to send.
        4. A simple table to measure results: reminded group vs a holdout group with no reminder.

        Rules: no discount unless I give one. No "only 1 left" or countdown unless I give real stock or a real deadline. Use only the facts above.</pre>
            <ul class="ai-try-checks">
              <li>The price is ₹1,699 and the ₹49 COD fee is shown, not hidden.</li>
              <li>Each message uses only the given facts and has a way to opt out.</li>
              <li>There is no discount, fake stock line or fake deadline.</li>
              <li>The rules stop reminders after an order and limit how many are sent.</li>
              <li>The measuring table includes a holdout group.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Fix the reasons for abandoned carts on your store first. Then send one or two helpful reminders, only to shoppers who agreed. Use the full price, a clear opt-out and no fake pressure. Measure with a holdout group, because some shoppers would have come back anyway.
        </div>
      HTML
      starter_code: nil
    },
    9 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-ecom">E-commerce</div>
          <h1 class="lc-title">Personalised Emails and Messages</h1>
        </div>
        <p class="lc-lead">A message that fits the reader gets read. A message that fits no one gets ignored or marked as spam. In this lesson you will use customer segments to plan three lifecycle flows: welcome, post-purchase and win-back. You will use AI to draft messages for each segment. You will also learn the checks every draft needs before it goes out.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 320" role="img" aria-label="Three lifecycle flows at Zari and Co. Welcome for new sign-ups: day 0 welcome, day 3 size guide, day 7 bestsellers. Post-purchase after each order: delivery day care tips, day 10 review request, day 30 goes well with. Win-back after 120 days with no order: day 120 new designs, day 150 a real offer if any, day 180 stop or ask to stay. Every flow goes only to people who agreed, has an easy opt-out, stops when they buy and sends at most 2 messages a week.">
            <defs><marker id="sg9a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="380" y="24" font-weight="700" fill="#c4b5fd">Three lifecycle flows at Zari &amp; Co</text>
              <rect x="20" y="44" width="140" height="62" rx="10" fill="#27274e" stroke="#3b82f6"/>
              <text x="90" y="71" font-weight="700">Welcome</text>
              <text x="90" y="90" font-size="11" fill="#9b99b8">new sign-ups</text>
              <rect x="185" y="44" width="165" height="62" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="267" y="69" font-size="12" font-weight="700">Day 0</text>
              <text x="267" y="89" font-size="11" fill="#9b99b8">welcome, brand story</text>
              <rect x="380" y="44" width="165" height="62" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="462" y="69" font-size="12" font-weight="700">Day 3</text>
              <text x="462" y="89" font-size="11" fill="#9b99b8">size guide, care tips</text>
              <rect x="575" y="44" width="165" height="62" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="657" y="69" font-size="12" font-weight="700">Day 7</text>
              <text x="657" y="89" font-size="11" fill="#9b99b8">bestsellers in your size</text>
              <rect x="20" y="124" width="140" height="62" rx="10" fill="#27274e" stroke="#10b981"/>
              <text x="90" y="151" font-weight="700">Post-purchase</text>
              <text x="90" y="170" font-size="11" fill="#9b99b8">after each order</text>
              <rect x="185" y="124" width="165" height="62" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="267" y="149" font-size="12" font-weight="700">Delivery day</text>
              <text x="267" y="169" font-size="11" fill="#9b99b8">care tips, how to style</text>
              <rect x="380" y="124" width="165" height="62" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="462" y="149" font-size="12" font-weight="700">Day 10</text>
              <text x="462" y="169" font-size="11" fill="#9b99b8">honest review request</text>
              <rect x="575" y="124" width="165" height="62" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="657" y="149" font-size="12" font-weight="700">Day 30</text>
              <text x="657" y="169" font-size="11" fill="#9b99b8">goes well with</text>
              <rect x="20" y="204" width="140" height="62" rx="10" fill="#27274e" stroke="#ec4899"/>
              <text x="90" y="231" font-weight="700">Win-back</text>
              <text x="90" y="250" font-size="11" fill="#9b99b8">no order in 120 days</text>
              <rect x="185" y="204" width="165" height="62" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="267" y="229" font-size="12" font-weight="700">Day 120</text>
              <text x="267" y="249" font-size="11" fill="#9b99b8">new designs, no pressure</text>
              <rect x="380" y="204" width="165" height="62" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="462" y="229" font-size="12" font-weight="700">Day 150</text>
              <text x="462" y="249" font-size="11" fill="#9b99b8">a real offer, if any</text>
              <rect x="575" y="204" width="165" height="62" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="657" y="229" font-size="12" font-weight="700">Day 180</text>
              <text x="657" y="249" font-size="11" fill="#9b99b8">stop, or ask to stay</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#sg9a)">
                <path d="M162,75 L181,75"/>
                <path d="M352,75 L376,75"/>
                <path d="M547,75 L571,75"/>
                <path d="M162,155 L181,155"/>
                <path d="M352,155 L376,155"/>
                <path d="M547,155 L571,155"/>
                <path d="M162,235 L181,235"/>
                <path d="M352,235 L376,235"/>
                <path d="M547,235 L571,235"/>
              </g>
              <rect x="20" y="280" width="720" height="32" rx="10" fill="#1f1f44" stroke="#f59e0b" stroke-dasharray="6 4"/>
              <text x="380" y="301" font-size="12" fill="#fcd34d">Every flow: only people who agreed, easy opt-out, stop when they buy, at most 2 a week</text>
            </g>
          </svg>
          <figcaption>Each flow starts with an action or a gap in time. Days count from sign-up, delivery or the last order.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Lifecycle flows</h3>
          <p>A <strong>flow</strong> is a set of messages that your email or messaging tool sends by itself when something happens. The trigger can be a sign-up, an order or a long gap since the last order. You write the flow once. Then it runs for every customer who qualifies.</p>
          <table class="lc-table">
            <thead><tr><th>Flow</th><th>Who gets it</th><th>Goal</th><th>Number to track</th></tr></thead>
            <tbody>
              <tr><td><strong>Welcome</strong></td><td>New sign-ups and first-time buyers (the New segment: 1,180 customers)</td><td>Build trust. Help with size and care.</td><td>Share who place a second order within 90 days</td></tr>
              <tr><td><strong>Post-purchase</strong></td><td>Everyone after an order</td><td>Fewer returns, honest reviews, a sensible next item</td><td>Return rate, reviews collected, repeat orders</td></tr>
              <tr><td><strong>Win-back</strong></td><td>At risk customers (360) and one-time buyers who have gone quiet</td><td>Bring them back, or stop messaging them</td><td>Orders from the flow, unsubscribes</td></tr>
            </tbody>
          </table>
          <p>Not everyone can get every message. Of Zari &amp; Co's 6,000 customers, 4,200 (70%) agreed to marketing emails. 2,700 (45%) agreed to WhatsApp messages. Your flows go only to these people.</p>
        </div>
        <div class="lc-card">
          <h3>Personalisation that helps</h3>
          <p><strong>Personalisation</strong> means changing a message to fit the reader. There are three simple levels:</p>
          <ul class="lc-list">
            <li><strong>By segment.</strong> Champions get an early look at new designs. New customers get help with size and care. At risk customers get a friendly "we have new designs" note.</li>
            <li><strong>By data fields.</strong> Your tool fills in details such as <code>{first_name}</code> or <code>{last_product}</code>. The exact format depends on the tool, so check its help pages.</li>
            <li><strong>By product.</strong> A Noor kurta set buyer gets care tips for cotton. A saree buyer gets draping tips.</li>
          </ul>
          <p>Some personalisation feels creepy. Do not mention things a customer did not expect you to know. Do not guess religion, health, income or family events from their orders. Set a limit, such as at most 2 marketing messages a week per person.</p>
          <p><strong>Worked example: what flows are worth.</strong> Imran checked customers who first bought from March to May 2026. About 12% placed a second order within 90 days. Zari &amp; Co gets about 600 new customers a month. If a welcome flow lifts this to 17%, that is 30 more second orders a month.</p>
          <pre><code>Extra second orders  =600*(17%-12%)       → 30
        Extra revenue (₹)    =600*(17%-12%)*1800  → 54,000 a month
        Win-back, 10% of 360 =360*10%*1800        → 64,800 (one time)</code></pre>
          <p>These are goals, not promises. Keep a small holdout group, as in cart recovery, to measure the real effect.</p>
        </div>
        <div class="lc-card">
          <h3>AI drafts, with checks</h3>
          <p>AI is fast at writing many versions of one message. Give it the segment, the real facts and clear rules.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Write a Navratri email for my customers.</code></pre>
          <p>Everyone gets the same message, and AI may invent an offer.</p>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Write one Navratri email for each segment: Champions
        (3+ orders, recent), New (first order in the last 2 months)
        and At risk (2+ orders, none for 120+ days). News: 40 new
        lehengas and kurta sets, sizes S to XXL. No offer is
        running. Subject under 50 characters. Body under 90 words.
        Use {first_name}. No urgency words, no invented features.</code></pre>
          <p>Before you send, check:</p>
          <ul class="lc-list">
            <li><strong>Facts:</strong> products, prices, sizes, dates and links are all correct.</li>
            <li><strong>Offers:</strong> no offer appears unless you gave one. The end date is real.</li>
            <li><strong>Consent:</strong> the list has only people who agreed. There is an unsubscribe link or "Reply STOP".</li>
            <li><strong>Privacy:</strong> you did not paste customer names, phone numbers or emails into a public AI tool.</li>
            <li><strong>Test send:</strong> send it to yourself first and read it on a phone.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Activity: which flow sends it?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Heena is planning messages. Sort each message into the flow that should send it.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="welcome" data-label="Welcome"></div>
              <div data-sorter-target="bucket" data-bucket="post" data-label="Post-purchase"></div>
              <div data-sorter-target="bucket" data-bucket="winback" data-label="Win-back"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="welcome" data-why="A new sign-up needs to learn who you are first.">A new subscriber gets a short brand story from Birmingham</li>
              <li data-bucket="welcome" data-why="Early help with size builds trust before the first or second order.">Day 3 after sign-up: how to choose your size, with the size chart</li>
              <li data-bucket="post" data-why="Care tips after delivery help the customer and can lower returns.">Two days after delivery: how to care for a georgette saree</li>
              <li data-bucket="post" data-why="A review request fits after the customer has used the product.">Ten days after delivery: an honest request for a review, good or bad</li>
              <li data-bucket="post" data-why="The next item comes from what they bought, so it follows the order.">30 days after a Noor kurta set order: the kids' set that goes well with it</li>
              <li data-bucket="winback" data-why="This customer has gone quiet, so the goal is to bring them back.">An At risk customer with no order for 130 days sees the new Navratri designs</li>
              <li data-bucket="winback" data-why="If a customer does not come back, ask before you keep messaging them.">A quiet customer gets one last message asking if they still want emails</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to write one message for each of three segments. Use the sample news or your own, with no customer data.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an email and WhatsApp copywriter for an Indian ethnic wear brand. Use warm, simple English.

        Brand: [Zari &amp; Co, Birmingham].
        News: [the Navratri collection is live: 40 new lehengas and kurta sets, sizes S to XXL].
        Real offer: [none]
        Segments (no personal data):
        [Champions: 3+ orders, last order in the last 60 days
        New: first order in the last 2 months
        At risk: 2+ orders, no order for 120+ days]

        Please:
        1. For each segment, write one email: a subject line under 50 characters, preview text and a body under 90 words.
        2. Use placeholders such as {first_name} and {last_product}. Do not invent customer details.
        3. Use a different angle for each segment: an early look for Champions, help and trust for New, a no-pressure "we have new designs" for At risk.
        4. Write one WhatsApp version (under 50 words) for At risk, with "Reply STOP to opt out".
        5. List 5 things I must check before sending.

        Rules: no fake urgency, no invented features or reviews, and no discount unless I give one.</pre>
            <ul class="ai-try-checks">
              <li>Each segment gets a different angle, not just a different name.</li>
              <li>No discount or deadline appears, because none was given.</li>
              <li>Subject lines and bodies keep to the length limits.</li>
              <li>The checks include consent, opt-out, facts and a test send.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Plan flows around what customers do: sign up, buy, or go quiet. Give each segment a message that helps it. Let AI draft many versions quickly. Then check facts, offers and consent, and send only to people who agreed.
        </div>
      HTML
      starter_code: nil
    },
    10 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-ecom">E-commerce</div>
          <h1 class="lc-title">Sales Events and Festival Campaigns</h1>
        </div>
        <p class="lc-lead">Festivals such as Navratri and Diwali are the busiest time for many Indian stores. End-of-season sales matter too. A good sale needs a plan: goals, offers, stock, messages and dates. In this lesson you will plan a festive campaign with AI. You will work out what a discount really costs. You will also learn to keep every discount and deadline honest.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 330" role="img" aria-label="Zari and Co festive plan 2026 in five phases: plan offers, stock and courier dates; early access for Champions and Loyal customers; Navratri festive launch; Diwali sale with a real end date and delivery cut-off; after the sale, thank you, reviews and returns. Honest practices: real was prices, real end dates, real courier cut-off, real stock. Dark patterns to avoid: raised MRP, restarting timers, false low-stock lines, fees added at the last step. Target about 19 lakh rupees a month.">
            <defs><marker id="sg10a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="380" y="22" font-weight="700" fill="#c4b5fd">Zari &amp; Co festive plan 2026 (made-up)</text>
              <rect x="20" y="40" width="120" height="86" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="80" y="64" font-weight="700">Plan</text>
              <text x="80" y="88" font-size="11" fill="#9b99b8">offers, stock</text>
              <text x="80" y="106" font-size="11" fill="#9b99b8">courier dates</text>
              <rect x="170" y="40" width="120" height="86" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="230" y="64" font-weight="700">Early access</text>
              <text x="230" y="88" font-size="11" fill="#9b99b8">Champions</text>
              <text x="230" y="106" font-size="11" fill="#9b99b8">and Loyal</text>
              <rect x="320" y="40" width="120" height="86" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="380" y="64" font-weight="700">Navratri</text>
              <text x="380" y="88" font-size="11" fill="#9b99b8">festive launch</text>
              <text x="380" y="106" font-size="11" fill="#9b99b8">new designs</text>
              <rect x="470" y="40" width="120" height="86" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="530" y="64" font-weight="700">Diwali sale</text>
              <text x="530" y="88" font-size="11" fill="#9b99b8">real end date</text>
              <text x="530" y="106" font-size="11" fill="#9b99b8">delivery cut-off</text>
              <rect x="620" y="40" width="120" height="86" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="680" y="64" font-weight="700">After</text>
              <text x="680" y="88" font-size="11" fill="#9b99b8">thank you</text>
              <text x="680" y="106" font-size="11" fill="#9b99b8">reviews, returns</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#sg10a)">
                <path d="M142,83 L166,83"/>
                <path d="M292,83 L316,83"/>
                <path d="M442,83 L466,83"/>
                <path d="M592,83 L616,83"/>
              </g>
              <rect x="20" y="144" width="350" height="140" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="195" y="168" font-weight="700" fill="#6ee7b7">Honest (do this)</text>
              <text x="195" y="194" font-size="12">A "was" price the item really sold at</text>
              <text x="195" y="218" font-size="12">A real sale end date</text>
              <text x="195" y="242" font-size="12">A real courier cut-off date</text>
              <text x="195" y="266" font-size="12">Real stock numbers, if shown</text>
              <rect x="390" y="144" width="350" height="140" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="565" y="168" font-weight="700" fill="#f9a8d4">Dark patterns (never)</text>
              <text x="565" y="194" font-size="12">MRP raised to inflate the % off</text>
              <text x="565" y="218" font-size="12">A timer that restarts</text>
              <text x="565" y="242" font-size="12">"Only 2 left" when it is not true</text>
              <text x="565" y="266" font-size="12">Fees added only at the last step</text>
              <text x="380" y="310" font-size="11" fill="#9b99b8">Target about ₹19 lakh a month: 88,000 sessions × 1.1% × ₹1,980 = ₹19,16,640. Ads at most ₹4,00,000.</text>
            </g>
          </svg>
          <figcaption>A festive campaign in five phases. Every price, date and stock claim must be real.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Plan the campaign around a goal</h3>
          <p>Heena wants about ₹19 lakh a month in the festive months, up from ₹14.4 lakh in August. She will not spend more than ₹4,00,000 a month on ads. One way to reach the goal is to grow each lever by 10%:</p>
          <pre><code>88,000 sessions × 1.1% conversion × ₹1,980 AOV
        = 968 orders × ₹1,980 = ₹19,16,640
        Spreadsheet check: =88000*1.1%*1980  → 19,16,640</code></pre>
          <p>At ₹4,00,000, ads would be about 20.9% of revenue, down from 25% in August. So the plan cannot rely on ads alone. It also needs better conversion, bundles and messages to past customers.</p>
          <table class="lc-table">
            <thead><tr><th>Phase</th><th>When (check real dates)</th><th>What happens</th><th>Who gets messages</th></tr></thead>
            <tbody>
              <tr><td>Plan</td><td>Late September</td><td>Choose offers, check stock and sizes, get courier cut-off dates, fix product pages</td><td>No one yet</td></tr>
              <tr><td>Early access</td><td>A few days before Navratri</td><td>Champions and Loyal customers see the new collection first</td><td>Champions (240) and Loyal (600) who agreed</td></tr>
              <tr><td>Navratri launch</td><td>Navratri, October</td><td>New lehengas and kurta sets. The saree and blouse bundle.</td><td>All who agreed, by segment</td></tr>
              <tr><td>Diwali sale</td><td>Before Diwali, early November</td><td>The sale, with a real end date and a real "order by" date</td><td>All who agreed, at most 2 messages a week</td></tr>
              <tr><td>After</td><td>After Diwali</td><td>Thank you, care tips, review requests, easy exchanges</td><td>Festive buyers</td></tr>
            </tbody>
          </table>
          <p>Festival dates vary by year and region. Check the calendar and your courier's delivery cut-off dates before you plan.</p>
        </div>
        <div class="lc-card">
          <h3>What a discount really costs</h3>
          <p>Zari &amp; Co's gross margin is about 50%. So on a ₹1,000 item, about ₹500 is left after the product cost. A discount comes straight out of that ₹500. To earn the same gross profit, you must sell more units.</p>
          <table class="lc-table">
            <thead><tr><th>Discount</th><th>Gross profit left on a ₹1,000 item</th><th>Extra units needed for the same gross profit</th></tr></thead>
            <tbody>
              <tr><td>10%</td><td>₹400</td><td>25% more</td></tr>
              <tr><td>20%</td><td>₹300</td><td>66.7% more</td></tr>
              <tr><td>30%</td><td>₹200</td><td>150% more</td></tr>
            </tbody>
          </table>
          <p>Spreadsheet: put the gross margin in <code>B1</code> (50%) and the discount in <code>B2</code> (20%). Then <code>=B1/(B1-B2)-1</code> gives 66.7%.</p>
          <p><strong>Example:</strong> the Gulnar lehenga sells at ₹3,999. Its cost is about ₹2,000 (made-up), so gross profit is ₹1,999. At 10% off, the price is ₹3,599 and gross profit is ₹1,599. In August it sold 60 units. To keep the same gross profit, it must sell about 75 units: <code>=60*1999/1599</code> → 75.01.</p>
          <p>Offers that are not deep discounts can work well too:</p>
          <ul class="lc-list">
            <li>The saree and blouse bundle at ₹3,299 (₹3,398 separately).</li>
            <li>Early access to the new collection for Champions and Loyal customers.</li>
            <li>Free shipping on prepaid orders. This can also lower RTO (parcels that come back undelivered).</li>
            <li>Free gift wrap that the shopper can choose, never added without asking.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Honest discounts and no fake urgency</h3>
          <p>In 2023, India's CCPA (Central Consumer Protection Authority) issued guidelines on dark patterns. They name tricks such as false urgency, basket sneaking, drip pricing and bait and switch. Consumer rules and the ASCI code (the advertising industry's self-regulation code in India) also expect price claims to be true.</p>
          <table class="lc-table">
            <thead><tr><th>Not honest</th><th>Honest version</th></tr></thead>
            <tbody>
              <tr><td>Raise the lehenga's MRP to ₹7,999 in October, then show "50% off"</td><td>"₹3,599, 10% off our regular price of ₹3,999" (it sold at ₹3,999 in August)</td></tr>
              <tr><td>A countdown timer that restarts for every visitor</td><td>"Sale ends 11:59 pm on [real date]"</td></tr>
              <tr><td>"Only 2 left!" when 140 pieces are in stock</td><td>No stock line, or the real number</td></tr>
              <tr><td>A ₹49 COD fee shown only at the last step (drip pricing)</td><td>The COD fee shown on the product page</td></tr>
              <tr><td>"Up to 70% off" when one item has 70% off and the rest 10%</td><td>Say which items have which discount</td></tr>
            </tbody>
          </table>
          <p>Real urgency is fine. "Order by [date] for delivery before Diwali" is honest if it matches your courier's real cut-off. This is general education, not legal advice. Check the current rules with a qualified lawyer.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Plan a Diwali sale with big discounts and lots of urgency.</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Plan a Diwali campaign. Target ₹19 lakh a month, ads at most
        ₹4,00,000. Gross margin about 50%. Real prices: lehenga
        ₹3,999, never discounted before. For each offer, show the
        extra units needed to keep the same gross profit. Use
        [DATE] for all dates. "Was" prices only if real. No fake
        MRP, restarting timers, fake stock lines or hidden fees.</code></pre>
        </div>
        <div class="lc-card">
          <h3>Activity: Heena plans the Diwali sale</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Heena asks">Plan our Diwali sale. Target about ₹19 lakh a month. Ads at most ₹4,00,000 a month.</li>
              <li data-kind="answer" data-label="AI plan">Raise the lehenga MRP to ₹7,999 and show 50% off. Add a 2-hour countdown that restarts for each visitor. Show "Only 2 left".</li>
              <li data-kind="warn" data-label="Dark patterns">The lehenga sold at ₹3,999 with no sale, so a raised MRP makes a fake discount. The timer and "Only 2 left" are false urgency. Stock is 140 pieces.</li>
              <li data-kind="tool" data-label="Spreadsheet">Imran checks the discount maths at a 50% gross margin.</li>
              <li data-kind="result" data-label="Sheet result">10% off needs 25% more units. 20% off needs 66.7% more. The lehenga at ₹3,599 must sell about 75 units, not 60, to keep the same gross profit.</li>
              <li data-kind="user" data-label="Better prompt">Use only real past prices. Offers: 10% off the festive collection, the ₹3,299 saree bundle and early access for Champions and Loyal. Use [DATE] for all dates.</li>
              <li data-kind="answer" data-label="AI plan">A five-phase calendar, a message idea for each segment, and "Order by [DATE] for delivery before Diwali".</li>
              <li data-kind="check" data-label="Final check">Heena gets the real cut-off date from the courier. She checks stock for each offer and reads every sale page on a phone.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to plan a festive campaign with honest offers and the discount maths. Use the sample numbers or your own.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a festive campaign planner for an Indian online store. Use simple English and show all maths.

        Store: [Zari &amp; Co, ethnic wear, own online store]. Festival: [Navratri and Diwali 2026].
        Now: [80,000 sessions a month, 1.0% conversion, AOV ₹1,800, revenue ₹14,40,000].
        Target: [about ₹19 lakh a month]. Ad budget: [at most ₹4,00,000 a month]. Gross margin: [about 50%].
        Real prices: [Gulnar lehenga ₹3,999, never discounted. Saree + blouse bundle ₹3,299 (₹3,398 separately)].

        Please:
        1. Show one mix of sessions, conversion rate and AOV that reaches the target.
        2. Make a campaign calendar table: phase, date as [DATE], segment, channel, message idea.
        3. For 10% and 20% discounts, calculate how many more units I must sell to keep the same gross profit.
        4. Suggest 3 offers that are not deep discounts.
        5. Write one honest sale banner and one delivery cut-off line using [DATE].

        Rules: show a "was" price only if the item really sold at that price. No fake MRP, restarting timers, fake stock alerts or hidden fees. Say this is not legal advice.</pre>
            <ul class="ai-try-checks">
              <li>The mix multiplies correctly, for example 88,000 × 1.1% × ₹1,980 = ₹19,16,640.</li>
              <li>10% off needs 25% more units. 20% off needs 66.7% more.</li>
              <li>Dates are left as [DATE] for you to fill in, not invented.</li>
              <li>No fake MRP, restarting timer, fake stock line or hidden fee appears.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A festive sale works best with a clear goal, a calendar and offers you can afford. Work out how many extra units each discount needs. Use only real prices, real end dates and real stock. Honest urgency, like a real delivery cut-off, is enough.
        </div>
      HTML
      starter_code: nil
    },
    11 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-ecom">E-commerce</div>
          <h1 class="lc-title">Loyalty and Repeat Purchases</h1>
        </div>
        <p class="lc-lead">A customer who buys again costs you no new ad money. That makes repeat purchases one of the cheapest ways to grow. In this lesson you will learn four tools that bring buyers back: loyalty points, subscriptions, reviews and referrals. You will do the maths in ₹ before you launch anything. You will also use AI to draft a plan and clear, honest programme terms.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="The repeat purchase ladder for Zari and Co's 6,000 customers. First order: 4,800 one-time buyers, 80%. Second order: the hardest step, goal 199 more. Loyal: 600 customers with 2 or more orders. Champions: 240 customers with 3 or more orders. Each step has a helper: care tips, a second-order nudge, points and early access, referrals and reviews. Repeat customer rate is 20% today and would be 23.3% with 199 more second orders.">
            <defs><marker id="sg11a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="380" y="24" font-weight="700" fill="#c4b5fd">Zari &amp; Co: 6,000 customers, last 12 months (made-up numbers)</text>
              <rect x="20" y="44" width="160" height="90" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="100" y="68" font-weight="700">First order</text>
              <text x="100" y="94" font-size="16" font-weight="700" fill="#93c5fd">4,800</text>
              <text x="100" y="118" font-size="11" fill="#9b99b8">one-time buyers (80%)</text>
              <rect x="210" y="44" width="160" height="90" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="290" y="68" font-weight="700">Second order</text>
              <text x="290" y="94" font-size="16" font-weight="700" fill="#fcd34d">goal: +199</text>
              <text x="290" y="118" font-size="11" fill="#9b99b8">the hardest step</text>
              <rect x="400" y="44" width="160" height="90" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="480" y="68" font-weight="700">Loyal</text>
              <text x="480" y="94" font-size="16" font-weight="700" fill="#6ee7b7">600</text>
              <text x="480" y="118" font-size="11" fill="#9b99b8">2+ orders</text>
              <rect x="590" y="44" width="150" height="90" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="665" y="68" font-weight="700">Champions</text>
              <text x="665" y="94" font-size="16" font-weight="700" fill="#c4b5fd">240</text>
              <text x="665" y="118" font-size="11" fill="#9b99b8">3+ orders</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#sg11a)">
                <path d="M182,89 L206,89"/>
                <path d="M372,89 L396,89"/>
                <path d="M562,89 L586,89"/>
              </g>
              <g font-size="11">
                <rect x="20" y="148" width="160" height="40" rx="8" fill="#27274e"/>
                <text x="100" y="172">care tips, easy exchange</text>
                <rect x="210" y="148" width="160" height="40" rx="8" fill="#27274e"/>
                <text x="290" y="172">second-order nudge</text>
                <rect x="400" y="148" width="160" height="40" rx="8" fill="#27274e"/>
                <text x="480" y="172">points, early access</text>
                <rect x="590" y="148" width="150" height="40" rx="8" fill="#27274e"/>
                <text x="665" y="172">referrals, reviews</text>
              </g>
              <rect x="20" y="206" width="720" height="78" rx="12" fill="#1f1f44" stroke="#ec4899" stroke-dasharray="6 4"/>
              <text x="380" y="234" font-weight="700">Repeat customer rate today: 1,200 ÷ 6,000 = 20%</text>
              <text x="380" y="262" fill="#6ee7b7">With 199 more second orders: 1,399 ÷ 6,000 = 23.3%</text>
            </g>
          </svg>
          <figcaption>The repeat purchase ladder. Most customers stop after one order, so the second order matters most.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Why repeat purchases matter, and the four tools</h3>
          <p>A <strong>repeat purchase</strong> is an order from someone who has bought from you before. Zari &amp; Co's <strong>repeat customer rate</strong> is 20%: 1,200 of its 6,000 customers ordered twice or more in 12 months. The other 4,800 (80%) bought once and stopped.</p>
          <p>Heena pays ₹600 in marketing to win each new customer. That is her CAC (customer acquisition cost). A returning customer costs far less to reach, often just an email or WhatsApp message to someone who agreed to get them. If each customer ordered 1.4 times a year instead of 1.3, revenue would rise by ₹10,80,000 (6,000 × 0.1 × ₹1,800).</p>
          <table class="lc-table">
            <thead><tr><th>Tool</th><th>What it is</th><th>Fit for Zari &amp; Co?</th><th>Honesty rule</th></tr></thead>
            <tbody>
              <tr><td><strong>Loyalty points</strong></td><td>Customers earn points on each order and use them as a discount later. Using points is called <strong>redemption</strong>.</td><td>Good. Festive buyers return each year.</td><td>Show how points are earned, what they are worth and when they expire.</td></tr>
              <tr><td><strong>Subscriptions</strong></td><td>The customer agrees to get a product on a schedule, for example every month.</td><td>Weak. Few people buy a saree every month. Better for Sweet Crumbs gift boxes or Swift Mart groceries.</td><td>Cancelling must be as easy as signing up. Remind people before each charge.</td></tr>
              <tr><td><strong>Reviews</strong></td><td>Asking buyers what they thought, after delivery.</td><td>Good. It also shows you what to fix.</td><td>Ask everyone. Never reward only good reviews. See the reviews lesson.</td></tr>
              <tr><td><strong>Referrals</strong></td><td>A customer invites a friend. Both get a reward when the friend buys.</td><td>Good. Ethnic wear is often bought for family and friends.</td><td>State the reward and its conditions in plain words.</td></tr>
            </tbody>
          </table>
          <p>Service matters as much as any programme. An easy size exchange and a helpful care-tips message after delivery often do more than points.</p>
        </div>
        <div class="lc-card">
          <h3>Worked example: do the maths before you launch</h3>
          <p><strong>1. A second-order goal.</strong> Heena sets a goal for the next 90 days. She wants 10% of her 1,180 New customers and 5% of her 1,620 One-time, recent customers to place a second order. These are extra orders, on top of those who would order again anyway. That is 118 + 81 = 199 extra second orders. For New customers, this builds on the email lesson. About 12% of new customers usually order again within 90 days. The welcome flow aims to lift that to 17%. Care tips, easy exchanges and points must add about 5 more points, to about 22%.</p>
          <pre><code>Extra revenue      = 199 × ₹1,800 = ₹3,58,200
        Gross profit (50%) = ₹3,58,200 × 50% = ₹1,79,100
        Repeat rate        = (1,200 + 199) ÷ 6,000 = 23.3%</code></pre>
          <p><strong>2. The cost of loyalty points.</strong> The idea is 5% back in points for Champions and Loyal members. These 840 customers placed 2,280 orders worth ₹45,24,000 last year. Points are paid on orders that would have happened anyway. So plan for that cost.</p>
          <pre><code>Points cost if all are used = ₹45,24,000 × 5% = ₹2,26,200 a year
        Gross profit on one order   = ₹1,800 × 50% = ₹900
        Less points on that order   = ₹1,800 × 5%  = ₹90
        Profit per extra order      = ₹900 − ₹90   = ₹810
        Extra orders to break even  = ₹2,26,200 ÷ ₹810 = 279.3, so 280</code></pre>
          <p>So members must place about 280 more orders a year, 12.3% more than 2,280, just to pay for the points. <strong>Break even</strong> means the extra profit equals the cost. Some points are never used, so the real cost is often lower. But plan with the full cost to be safe.</p>
          <p><strong>3. A referral reward.</strong> The friend gets ₹200 off the first order and the customer gets ₹200 credit. That is ₹400 per new customer, below the ₹600 CAC. Gross profit on the friend's first order is ₹900 − ₹200 = ₹700. After the ₹200 credit, ₹500 is left.</p>
          <p>Spreadsheet checks:</p>
          <pre><code>Second orders       =ROUND(1180*10%,0)+ROUND(1620*5%,0)   → 199
        New repeat rate     =(1200+199)/6000                      → 23.3%
        Points cost         =4524000*5%                           → 2,26,200
        Break-even orders   =ROUNDUP(4524000*5%/(1800*50%-1800*5%),0) → 280</code></pre>
          <p>To see the real effect, keep a <strong>holdout group</strong>: a random 10% of customers who do not get the new messages. Compare their repeat rate with everyone else's after 90 days.</p>
        </div>
        <div class="lc-card">
          <h3>How AI helps, and what you must check</h3>
          <p>AI can suggest ideas for each segment, draft the post-purchase messages and write the programme terms in plain English. It can also build the break-even table. But it does not know your margins, and it may copy tricks it has seen elsewhere.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Create a loyalty program that makes customers keep buying.</code></pre>
          <p>You may get "points expire in 7 days" or a subscription that is hard to cancel. Both mislead customers.</p>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Design a simple loyalty and repeat-purchase plan for an
        ethnic wear store. AOV ₹1,800, gross margin 50%, CAC ₹600,
        repeat rate 20%. Members: 840 customers, 2,280 orders,
        ₹45,24,000 a year. Test 5% back in points. Show the
        yearly cost and the extra orders needed to break even.
        Write the terms in plain English: how to earn, the value
        of a point and the expiry. No hidden conditions.</code></pre>
          <p>Before you launch, you must still:</p>
          <ul class="lc-list">
            <li><strong>Check the maths</strong> in your own spreadsheet with your real margin.</li>
            <li><strong>Read every term</strong> as a customer would. Points that quietly expire break trust.</li>
            <li><strong>Message only people who agreed.</strong> India's DPDP Act (Digital Personal Data Protection Act, 2023) sets rules for personal data.</li>
            <li><strong>Check payment rules</strong> for subscriptions with auto-debit. In India, RBI rules for card and UPI e-mandates include a notice before each debit and a way to cancel the mandate. Rules change, so ask your payment provider.</li>
            <li><strong>Ask a professional</strong> about the tax and accounting of points and credits. This lesson is general education, not tax or legal advice.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Activity: which repeat idea fits?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Heena's team listed repeat-purchase ideas. Sort each idea: a good fit for Zari &amp; Co, better for a store people buy from every week or month, or one to avoid because it misleads.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="fit" data-label="Good fit for Zari &amp; Co"></div>
              <div data-sorter-target="bucket" data-bucket="regular" data-label="Better for a regular-need store"></div>
              <div data-sorter-target="bucket" data-bucket="avoid" data-label="Avoid: misleading"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="fit" data-why="Clear points with a clear expiry reward festive buyers who come back each year.">5% back in points, with the expiry date shown in every order email</li>
              <li data-bucket="fit" data-why="Ethnic wear is often bought for family. Both people get a clear, stated reward.">Refer a friend: ₹200 off for the friend and ₹200 credit for you after their first order</li>
              <li data-bucket="fit" data-why="Good service after delivery builds trust and brings the second order.">A care-tips message 3 days after delivery, with a link to easy size exchange</li>
              <li data-bucket="regular" data-why="People need bread, milk or gift boxes often. Few people buy a saree every month.">A weekly subscribe-and-save order for fruit and vegetables</li>
              <li data-bucket="regular" data-why="A bakery's gift boxes can be bought again and again, so a subscription can work.">A monthly cookie box subscription with easy online cancelling</li>
              <li data-bucket="avoid" data-why="Hiding the expiry takes away value the customer thought they had.">Points that expire without any warning to the customer</li>
              <li data-bucket="avoid" data-why="This is a subscription trap: cancelling must be as easy as joining.">A membership you can join in one click but cancel only by phone</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to build a repeat-purchase plan for your segments, with the maths shown. Use the sample numbers or your own totals (no customer names or phone numbers).</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a retention expert for Indian online stores. Use simple English.

        Store: [Zari &amp; Co, an ethnic wear brand from Birmingham].
        Numbers, last 12 months (made-up): [6,000 customers; repeat customer rate 20%; AOV ₹1,800; gross margin 50%; CAC ₹600.
        Segments: Champions 240, Loyal 600, At risk 360, New 1,180, One-time recent 1,620, One-time lapsed 2,000.
        Champions and Loyal together: 2,280 orders worth ₹45,24,000.]
        Idea to test: [5% back in points for Champions and Loyal, and a referral reward of ₹200 for each person].

        Please:
        1. Suggest one repeat-purchase action for each segment. Say if it needs an offer or not.
        2. Calculate the yearly points cost and the extra orders needed to break even. Show each step.
        3. Compare the referral cost per new customer with the CAC.
        4. Write the programme terms in plain English (earning, value, expiry, cancelling).
        5. Explain how to measure the result with a 10% holdout group.

        Rules: no fake deadlines, no pre-ticked sign-ups, no hidden conditions. Message only customers who agreed.</pre>
            <ul class="ai-try-checks">
              <li>Points cost is ₹2,26,200 a year. Break-even is about 280 extra orders (₹2,26,200 ÷ ₹810).</li>
              <li>The referral costs ₹400 per new customer, which is below the ₹600 CAC.</li>
              <li>Not every segment gets a discount, and the terms show value and expiry clearly.</li>
              <li>Check every number again in your own spreadsheet before you decide.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> The second order is the hardest and most valuable step. Choose repeat tools that fit how often people buy your product. Work out what points and rewards cost before you launch, and keep a holdout group to see what really worked. Clear, honest terms keep customers coming back.
        </div>
      HTML
      starter_code: nil
    },
    12 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-ecom">E-commerce</div>
          <h1 class="lc-title">Reviews, UGC and Social Proof</h1>
        </div>
        <p class="lc-lead">Shoppers trust other shoppers more than they trust a brand. Real reviews and customer photos help new visitors decide. They also tell you what to fix. In this lesson you will learn to ask for reviews honestly, use customer photos with permission and read reviews with AI. You will also learn why fake, paid or hidden reviews are never allowed.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="Left: star ratings for the Mehr georgette saree. 90 reviews: 52 five-star, 20 four-star, 8 three-star, 6 two-star and 4 one-star. The average is 380 divided by 90, which is 4.22. Hiding the 18 low reviews would show 4.72, which is misleading. Right: AI groups the 18 low reviews into themes: colour looks different 10, slow delivery 5, short blouse piece 3. The fix is daylight photos and a colour note on the page.">
            <defs><marker id="sg12a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <rect x="20" y="14" width="350" height="272" rx="12" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="195" y="40" text-anchor="middle" font-weight="700">Mehr saree: 90 reviews</text>
              <text x="40" y="72">5★</text>
              <rect x="74" y="59" width="208" height="18" rx="3" fill="#10b981"/>
              <text x="290" y="72" fill="#9b99b8">52</text>
              <text x="40" y="102">4★</text>
              <rect x="74" y="89" width="80" height="18" rx="3" fill="#10b981"/>
              <text x="162" y="102" fill="#9b99b8">20</text>
              <text x="40" y="132">3★</text>
              <rect x="74" y="119" width="32" height="18" rx="3" fill="#f59e0b"/>
              <text x="114" y="132" fill="#9b99b8">8</text>
              <text x="40" y="162">2★</text>
              <rect x="74" y="149" width="24" height="18" rx="3" fill="#ec4899"/>
              <text x="106" y="162" fill="#9b99b8">6</text>
              <text x="40" y="192">1★</text>
              <rect x="74" y="179" width="16" height="18" rx="3" fill="#ec4899"/>
              <text x="98" y="192" fill="#9b99b8">4</text>
              <text x="195" y="226" text-anchor="middle" font-weight="700" fill="#6ee7b7">Average: 380 ÷ 90 = 4.22</text>
              <text x="195" y="252" text-anchor="middle" font-size="12" fill="#f9a8d4">Hide the 18 low reviews and it shows 4.72.</text>
              <text x="195" y="270" text-anchor="middle" font-size="12" fill="#f9a8d4">That would mislead shoppers.</text>
              <rect x="390" y="14" width="350" height="272" rx="12" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="565" y="40" text-anchor="middle" font-weight="700">AI groups the 18 low reviews</text>
              <rect x="410" y="56" width="310" height="32" rx="8" fill="#27274e"/>
              <text x="424" y="77">Colour looks different: 10</text>
              <rect x="410" y="96" width="310" height="32" rx="8" fill="#27274e"/>
              <text x="424" y="117">Delivery slower than shown: 5</text>
              <rect x="410" y="136" width="310" height="32" rx="8" fill="#27274e"/>
              <text x="424" y="157">Blouse piece shorter: 3</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#sg12a)">
                <path d="M565,172 L565,196"/>
              </g>
              <rect x="410" y="200" width="310" height="68" rx="8" fill="#27274e" stroke="#10b981"/>
              <text x="565" y="226" text-anchor="middle" font-weight="700" fill="#6ee7b7">Fix: daylight photos and</text>
              <text x="565" y="250" text-anchor="middle" font-weight="700" fill="#6ee7b7">a colour note on the page</text>
            </g>
          </svg>
          <figcaption>Show every real review. Use the low ones to find and fix problems (made-up numbers).</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Social proof, UGC and the rules</h3>
          <p><strong>Social proof</strong> means signs that other people bought and liked a product: ratings, reviews and customer photos. <strong>UGC</strong> (user-generated content) is content made by customers, such as photos, videos and posts about your product.</p>
          <p>Fake social proof misleads shoppers, so it is not allowed. In India, the BIS standard <strong>IS 19000:2022</strong> sets principles for online consumer reviews. It is a voluntary standard. In general terms, it says reviews must be real and honest. Reviews must not be bought, or written by people paid to write them. Paid or rewarded reviews must be disclosed. Moderation must be fair, and hiding negative reviews to lift the rating misleads shoppers. The CCPA can also act against fake reviews as misleading or unfair practices. Marketplaces have their own review rules, so check Seller Central or Seller Hub help. This is general education, not legal advice.</p>
          <table class="lc-table">
            <thead><tr><th>Honest (do)</th><th>Not allowed or misleading (do not)</th></tr></thead>
            <tbody>
              <tr><td>Ask every buyer for a review after delivery</td><td>Ask only happy buyers, or only people who gave 5 stars in a survey</td></tr>
              <tr><td>Publish good and bad reviews. Remove only abuse, spam or personal data.</td><td>Hide 1 to 3 star reviews to lift the average</td></tr>
              <tr><td>Reply politely to complaints and fix the problem</td><td>Write reviews yourself, or ask staff, family or AI to write them</td></tr>
              <tr><td>Ask a customer's permission before you reuse their photo</td><td>Pay or give gifts for good reviews, or buy review packages</td></tr>
              <tr><td>Clearly label posts from influencers who were paid or sent free products</td><td>Edit a review so it says something the customer did not mean</td></tr>
            </tbody>
          </table>
          <p>Paid posts by influencers must be labelled as ads. The ASCI (Advertising Standards Council of India) guidelines ask for this. Check ASCI's current guidance.</p>
        </div>
        <div class="lc-card">
          <h3>Worked example: Imran reads the Mehr saree reviews</h3>
          <p>In August, Imran sent a review request to 500 customers whose orders were delivered and who had agreed to get messages. 60 of them wrote a review. That is a 12% response rate (60 ÷ 500).</p>
          <p>The Mehr georgette saree now has 90 reviews. Imran puts the star rating in column A and the number of reviews in column B, rows 2 to 6 (5 stars down to 1 star).</p>
          <pre><code>Stars  Reviews
        5      52
        4      20
        3       8
        2       6
        1       4
        Average rating  =SUMPRODUCT(A2:A6,B2:B6)/SUM(B2:B6)  → 4.22
        4 and 5 stars   =SUM(B2:B3)/SUM(B2:B6)              → 80%</code></pre>
          <p>The maths: (5 × 52) + (4 × 20) + (3 × 8) + (2 × 6) + (1 × 4) = 380 stars. 380 ÷ 90 = 4.22. If Imran hid the 18 low reviews, the page would show 4.72. That is a false picture, so he shows them all.</p>
          <p>The low reviews are useful. Ten of the 18 say the colour looks different from the photos. This matches the saree's top return reason. So the fix is not more reviews. It is honest photos in daylight and a note such as "the colour may look slightly different on some screens".</p>
          <p><strong>When to ask:</strong> send the request a few days after delivery, so the buyer has opened and tried the product. Send one reminder at most. Make it easy: one link, stars first, and an optional photo.</p>
        </div>
        <div class="lc-card">
          <h3>How AI helps, and what it must never do</h3>
          <p>AI is good at three review tasks. It can group hundreds of reviews into themes. It can draft polite replies to complaints. And it can write a short, friendly review request. It must never write reviews that look as if they came from customers.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Write 20 five-star reviews for our Mehr saree.</code></pre>
          <p>This asks for fake reviews. Do not publish anything like this.</p>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Here are 90 real reviews of our Mehr georgette saree
        (names and order numbers removed). Group them into themes.
        Count the reviews in each theme and quote one short line
        for each. List what buyers like and what they complain
        about. Suggest one product-page fix for each complaint.
        Do not change the meaning of any review.</code></pre>
          <p>Then check the answer:</p>
          <ul class="lc-list">
            <li><strong>Count a sample by hand.</strong> AI can miscount themes or mix up star ratings.</li>
            <li><strong>Remove personal data first.</strong> Take out names, phone numbers and order numbers before you paste reviews into a public AI tool.</li>
            <li><strong>Read replies before posting.</strong> A reply must not blame the customer or share their order details in public.</li>
            <li><strong>Label AI summaries.</strong> If your page shows an "AI summary of reviews", make sure it matches the real reviews, including the complaints.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Activity: Imran turns reviews into fixes</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="tool" data-label="Review export">Imran exports the 90 Mehr saree reviews from the store's review app. He deletes names and order numbers.</li>
              <li data-kind="user" data-label="Imran asks">Group these reviews into themes. Count each theme and quote one short line. Do not change any review's meaning.</li>
              <li data-kind="answer" data-label="AI answer">Buyers love the zari border and the drape. Low reviews: colour looks different (10), delivery slower than shown (5), blouse piece shorter than expected (3).</li>
              <li data-kind="check" data-label="Hand count">Imran reads the 18 low reviews himself. The counts match: 10, 5 and 3.</li>
              <li data-kind="warn" data-label="Dark pattern">AI also suggests: "Hide reviews under 4 stars to show a 4.72 rating." That would mislead shoppers. Imran says no.</li>
              <li data-kind="answer" data-label="Reply drafts">AI drafts calm replies to the colour complaints. Each one says sorry, explains the free exchange and does not blame the buyer.</li>
              <li data-kind="check" data-label="Actions">Heena approves the replies. Imran reshoots the saree in daylight, adds a colour note and asks the tailor for the blouse piece length.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to read a set of reviews, find themes and draft honest replies and a review request. Use the sample or paste your own reviews with personal details removed.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a customer experience manager for an Indian online store. Use simple, polite English.

        Product: [Mehr georgette saree with zari border, ₹2,499].
        Real reviews (names removed):
        [5★ Zari border is lovely, drape is soft.
        5★ Wore it for Navratri, got many compliments.
        4★ Nice saree, but delivery took 6 days, not 4.
        3★ Colour is darker maroon than the photo.
        2★ Colour looks different. Blouse piece is short.
        1★ Colour not as shown. Returned it.
        5★ Good quality for the price.
        3★ Delivery was late for my function.]

        Please:
        1. Calculate the average rating. Show the maths.
        2. Group the reviews into themes. Count each theme.
        3. Suggest one product-page or service fix for each complaint.
        4. Draft a short public reply to the 1★ review. Say sorry, offer help and do not blame the buyer.
        5. Draft a review request message sent a few days after delivery, with one reminder at most.

        Rules: never write reviews as if from customers. Do not suggest hiding low reviews. Do not offer rewards only for good reviews.</pre>
            <ul class="ai-try-checks">
              <li>The average is 28 ÷ 8 = 3.5 stars.</li>
              <li>Themes include colour (3 reviews) and slow delivery (2 reviews).</li>
              <li>The reply does not blame the buyer or share private order details.</li>
              <li>The request asks for an honest review from every buyer, with no reward for good ratings.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Real reviews sell and teach at the same time. Ask every buyer, show every honest review and reply to complaints. Let AI find the themes and draft replies. Never let AI, staff or paid services write reviews, and never hide the bad ones.
        </div>
      HTML
      starter_code: nil
    },
    13 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-ecom">E-commerce</div>
          <h1 class="lc-title">Testing and Measuring Growth Ideas</h1>
        </div>
        <p class="lc-lead">Every growth idea is a guess until you measure it. Many stores change a page, see sales go up and call it a win. But sales also move with festivals, ads and luck. In this lesson you will learn how an A/B test works, why before-and-after comparisons mislead, and how many visitors a test needs. You will do the maths in a spreadsheet and use AI to plan and explain tests.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 320" role="img" aria-label="An A/B test on the Noor kurta set page. 9,000 visitors are split 50/50 at random. Version A, the current page: 4,500 visitors, 108 orders, 2.4%. Version B, with a size chart and 6 photos: 4,500 visitors, 135 orders, 3.0%. Result: B is 25% higher, but the p-value is 0.079, so the result is not sure yet. The test needs about 11,700 visitors per version.">
            <defs><marker id="sg13a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="380" y="22" font-weight="700" fill="#c4b5fd">A/B test: Noor kurta set page, 4 weeks (made-up numbers)</text>
              <rect x="20" y="124" width="160" height="80" rx="10" fill="#27274e" stroke="#8b5cf6"/>
              <text x="100" y="150" font-weight="700">9,000 visitors</text>
              <text x="100" y="172" font-size="11" fill="#9b99b8">split 50/50</text>
              <text x="100" y="188" font-size="11" fill="#9b99b8">at random</text>
              <rect x="230" y="40" width="260" height="104" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="360" y="66" font-weight="700">A: current page</text>
              <text x="360" y="92" font-size="12" fill="#9b99b8">4,500 visitors, 108 orders</text>
              <text x="360" y="124" font-size="18" font-weight="700" fill="#93c5fd">2.4%</text>
              <rect x="230" y="184" width="260" height="104" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="360" y="210" font-weight="700">B: size chart + 6 photos</text>
              <text x="360" y="236" font-size="12" fill="#9b99b8">4,500 visitors, 135 orders</text>
              <text x="360" y="268" font-size="18" font-weight="700" fill="#6ee7b7">3.0%</text>
              <rect x="540" y="64" width="200" height="200" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="640" y="92" font-weight="700">Result</text>
              <text x="640" y="120">B is 25% higher</text>
              <text x="640" y="144">p-value: 0.079</text>
              <text x="640" y="176" font-weight="700" fill="#fcd34d">Not sure yet</text>
              <text x="640" y="208" font-size="12" fill="#9b99b8">Needs about 11,700</text>
              <text x="640" y="226" font-size="12" fill="#9b99b8">visitors per version</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#sg13a)">
                <path d="M182,150 L226,100"/>
                <path d="M182,178 L226,228"/>
                <path d="M492,92 L536,120"/>
                <path d="M492,236 L536,210"/>
              </g>
              <text x="380" y="310" font-size="12" fill="#9b99b8">Same rates with 9,000 visitors per version would give a p-value of 0.013: a clear result.</text>
            </g>
          </svg>
          <figcaption>An A/B test shows two versions to similar visitors at the same time. A bigger number is not enough. You also need enough visitors.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>A/B tests, and why before-and-after misleads</h3>
          <p>In an <strong>A/B test</strong>, the store shows version A to half of the visitors and version B to the other half. The split is random and happens at the same time. So the season, the ads and the weather affect both groups in the same way. The only real difference is the change you made.</p>
          <p>A <strong>before-and-after</strong> comparison looks at one period before a change and one after it. It is easy, but many other things change too:</p>
          <table class="lc-table">
            <thead><tr><th>Mistake</th><th>Example at Zari &amp; Co</th><th>Better way</th></tr></thead>
            <tbody>
              <tr><td>Season changes</td><td>A new lehenga page goes live in October. Sales jump, but Navratri also started.</td><td>Run A and B in the same weeks.</td></tr>
              <tr><td>Other changes at the same time</td><td>Heena raised ad spend in the same week as the checkout change.</td><td>Change one thing, or test with a random split.</td></tr>
              <tr><td>Stopping early (peeking)</td><td>B looked 40% better after 3 days, so Imran stopped the test.</td><td>Decide the length first. Run full weeks, since weekends behave differently.</td></tr>
              <tr><td>Too few visitors</td><td>200 visitors per version, 5 orders against 7.</td><td>Work out the sample size before you start.</td></tr>
              <tr><td>Too many numbers</td><td>Checking 15 metrics until one looks good.</td><td>Choose one main number before the test.</td></tr>
            </tbody>
          </table>
          <p>Many store platforms have A/B testing apps or built-in tools. Features change often, so check the tool's current help pages.</p>
        </div>
        <div class="lc-card">
          <h3>Worked example: is version B really better?</h3>
          <p>Imran tested a new Noor kurta set page for 4 weeks. Version B added a size chart in cm and inches and 6 photos. The main number was the <strong>order rate</strong>: orders with the kurta set ÷ visitors who saw the page.</p>
          <p>Here is his sheet. Rows 2 and 3 are versions A and B. Column B is visitors and column C is orders.</p>
          <pre><code>Order rate A     D2 =C2/B2                                → 2.40%
        Order rate B     D3 =C3/B3                                → 3.00%
        Lift             F2 =D3/D2-1                              → 25%
        Pooled rate      F3 =(C2+C3)/(B2+B3)                      → 2.70%
        z-score          F4 =(D3-D2)/SQRT(F3*(1-F3)*(1/B2+1/B3))  → 1.76
        p-value          F5 =2*(1-NORM.S.DIST(ABS(F4),TRUE))      → 0.079</code></pre>
          <p>What these mean in plain words:</p>
          <ul class="lc-list">
            <li><strong>Lift</strong> is how much higher B is than A. The gap is 0.6 percentage points (3.0% − 2.4%). As a share of A, that is 25% higher.</li>
            <li>The <strong>p-value</strong> answers one question. If A and B were really equal, how often would chance alone give a gap this big? Here the answer is about 8 times in 100.</li>
            <li>Many teams want a p-value below 0.05 (5 in 100) before they trust a result. 0.079 is above that. So B looks better, but the test cannot prove it yet.</li>
          </ul>
          <p><strong>How many visitors do you need?</strong> A common rule of thumb for 80% power and a 0.05 cut-off is: visitors per version ≈ 16 × p × (1 − p) ÷ (gap)². Here p is the average rate. <strong>Power</strong> is the chance that the test finds a real gap of this size.</p>
          <pre><code>Visitors per version  =16*F3*(1-F3)/(D3-D2)^2   → 11,676 (about 11,700)</code></pre>
          <p>The Noor page gets about 9,000 visitors a month. Two versions need about 23,400 visitors, so the test would take over 2.5 months. With the same rates and 9,000 visitors per version, the p-value would be 0.013.</p>
          <p>Smaller gaps need far more visitors. To test mobile conversion from 0.9% to 1.1%, the rule gives 16 × 1% × 99% ÷ 0.2%² = 39,600 visitors per version. Zari &amp; Co has 64,000 mobile sessions a month, so that test needs about 5 to 6 weeks.</p>
          <p><strong>Heena's decision:</strong> a size chart helps shoppers and has little risk. So she adds it to every kurta and lehenga page now, and watches the order rate and size returns. She saves true A/B tests for choices that can cost money, such as the free-shipping threshold.</p>
        </div>
        <div class="lc-card">
          <h3>How AI helps, and what you must check</h3>
          <p>AI can turn a vague idea into a clear test plan. It can suggest the main number, estimate the sample size and explain a result in plain words. But AI often makes mistakes with p-values and sample sizes. Always recalculate in your spreadsheet.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>My new page got more orders. Did it work?</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>I ran an A/B test for 4 weeks with a random 50/50 split.
        A: 4,500 visitors, 108 orders. B: 4,500 visitors, 135 orders.
        Calculate each order rate, the lift, a two-proportion
        z-test and the p-value. Show each step. Tell me if I can
        trust the result at the 0.05 level. Estimate the visitors
        per version needed for 80% power. Explain it simply.</code></pre>
          <p>Then check:</p>
          <ul class="lc-list">
            <li><strong>The split was random</strong> and both versions ran at the same time.</li>
            <li><strong>The numbers match</strong> your testing tool and your own spreadsheet.</li>
            <li><strong>AI does not say "B wins"</strong> when the p-value is above your cut-off.</li>
            <li><strong>Other effects:</strong> did returns or RTO also change? A page that sells more but gets returned more is not a win.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Activity: run a fair test</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put Imran's A/B test steps in the correct order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Write one clear idea and choose the one main number to judge it</li>
              <li data-order="2">Work out how many visitors each version needs</li>
              <li data-order="3">Split visitors at random, 50/50, and run both versions at the same time</li>
              <li data-order="4">Run the test for the planned number of full weeks without stopping early</li>
              <li data-order="5">Calculate the order rates, the lift and the p-value in a spreadsheet</li>
              <li data-order="6">Check returns and other side effects before deciding</li>
              <li data-order="7">Write down the result and the decision, then plan the next test</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to check an A/B test result and plan the next test. Use the sample numbers or your own test totals.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a careful e-commerce analyst. Explain in simple English for a store owner who is not a statistician.

        Test: [a new product page with a size chart and 6 photos, for a kurta set].
        Random 50/50 split, both versions at the same time, [4 weeks].
        Results: [Version A: 4,500 visitors, 108 orders. Version B: 4,500 visitors, 135 orders.]
        The page gets about [9,000] visitors a month.

        Please:
        1. Calculate each order rate and the lift. Show the steps.
        2. Run a two-proportion z-test. Give the z-score and the two-sided p-value.
        3. Say clearly if the result is trustworthy at the 0.05 level.
        4. Estimate the visitors per version needed for 80% power, using 16 × p × (1 − p) ÷ gap².
        5. Say how many weeks that would take at my traffic.
        6. Give me spreadsheet formulas to check each number.
        7. List 3 mistakes that could make this test wrong.

        Do not round in the middle of calculations. If you are unsure of a number, say so.</pre>
            <ul class="ai-try-checks">
              <li>Order rates are 2.4% and 3.0%. The lift is 25% (0.6 percentage points).</li>
              <li>z is about 1.76 and the p-value is about 0.079, so the result is not sure yet.</li>
              <li>About 11,700 visitors per version are needed, which is over 2.5 months at 9,000 visitors a month.</li>
              <li>The same numbers appear when you type the formulas into your own spreadsheet.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A higher number is not proof. Compare versions at the same time with a random split, plan the sample size first and do not stop early. Let AI plan and explain tests, but check every p-value in a spreadsheet. For low-risk fixes that clearly help shoppers, you can ship them and keep measuring.
        </div>
      HTML
      starter_code: nil
    },
    14 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-ecom">E-commerce</div>
          <h1 class="lc-title">Growth Without Dark Patterns</h1>
        </div>
        <p class="lc-lead">Some stores grow with tricks: fake timers, hidden fees and items added without asking. These tricks are called <strong>dark patterns</strong>. They can lift sales for a few weeks, but they bring complaints, returns and legal risk. In this lesson you will learn the 13 dark patterns named in India's 2023 guidelines. You will audit a checkout with AI and replace each trick with an honest version. This is general education, not legal advice.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 330" role="img" aria-label="Two checkout screens side by side. Left, with dark patterns: Only 3 left, offer ends in 09:59, which is false urgency. Gift wrap for 49 rupees already ticked, which is basket sneaking. A 49 rupee COD fee added at the last step, which is drip pricing. A No, I don't like saving money button, which is confirm shaming. Right, the honest version: real stock and real end dates only, gift wrap as an unticked choice, total with COD fee 1,748 rupees shown early, and a plain No thanks button.">
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <rect x="20" y="14" width="350" height="302" rx="14" fill="#1f1f44" stroke="#ec4899"/>
              <text x="195" y="42" text-anchor="middle" font-weight="700" fill="#f9a8d4">Dark patterns (avoid)</text>
              <rect x="36" y="58" width="318" height="52" rx="8" fill="#27274e"/>
              <text x="50" y="80">Only 3 left! Offer ends in 09:59</text>
              <text x="50" y="100" font-size="11" fill="#f9a8d4">False urgency: 140 in stock, no real end</text>
              <rect x="36" y="120" width="318" height="52" rx="8" fill="#27274e"/>
              <text x="50" y="142">[✓] Gift wrap ₹49 (already ticked)</text>
              <text x="50" y="162" font-size="11" fill="#f9a8d4">Basket sneaking</text>
              <rect x="36" y="182" width="318" height="52" rx="8" fill="#27274e"/>
              <text x="50" y="204">COD fee ₹49 added at the last step</text>
              <text x="50" y="224" font-size="11" fill="#f9a8d4">Drip pricing</text>
              <rect x="36" y="244" width="318" height="52" rx="8" fill="#27274e"/>
              <text x="50" y="266">"No, I don't like saving money"</text>
              <text x="50" y="286" font-size="11" fill="#f9a8d4">Confirm shaming</text>
              <rect x="390" y="14" width="350" height="302" rx="14" fill="#1f1f44" stroke="#10b981"/>
              <text x="565" y="42" text-anchor="middle" font-weight="700" fill="#6ee7b7">Honest version</text>
              <rect x="406" y="58" width="318" height="52" rx="8" fill="#27274e"/>
              <text x="420" y="80">Real stock and real sale end dates</text>
              <text x="420" y="100" font-size="11" fill="#6ee7b7">Or no stock message at all</text>
              <rect x="406" y="120" width="318" height="52" rx="8" fill="#27274e"/>
              <text x="420" y="142">[ ] Add gift wrap for ₹49</text>
              <text x="420" y="162" font-size="11" fill="#6ee7b7">The shopper chooses</text>
              <rect x="406" y="182" width="318" height="52" rx="8" fill="#27274e"/>
              <text x="420" y="204">Total with COD fee: ₹1,748</text>
              <text x="420" y="224" font-size="11" fill="#6ee7b7">Shown on the product page and in the cart</text>
              <rect x="406" y="244" width="318" height="52" rx="8" fill="#27274e"/>
              <text x="420" y="266">"No thanks"</text>
              <text x="420" y="286" font-size="11" fill="#6ee7b7">A plain, equal choice</text>
            </g>
          </svg>
          <figcaption>The same checkout, with tricks and without. The honest version shows real facts and lets the shopper choose.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The 13 dark patterns in India's guidelines</h3>
          <p>In November 2023, India's CCPA (Central Consumer Protection Authority) issued the <strong>Guidelines for Prevention and Regulation of Dark Patterns, 2023</strong>. They define a dark pattern as a design that misleads or tricks users into doing something they did not want to do. They apply to platforms that sell goods or services in India, and to advertisers and sellers. The guidelines list 13 patterns, and the CCPA can update the list. In June 2025, the CCPA also asked e-commerce platforms to self-audit for dark patterns within three months and fix what they found.</p>
          <table class="lc-table">
            <thead><tr><th>Pattern</th><th>In plain words</th><th>Store example to avoid</th></tr></thead>
            <tbody>
              <tr><td>1. False urgency</td><td>Fake scarcity or a fake deadline</td><td>"Only 3 left" when 140 are in stock</td></tr>
              <tr><td>2. Basket sneaking</td><td>Adding items or charges without the shopper's choice</td><td>Gift wrap or a donation added to the cart by default</td></tr>
              <tr><td>3. Confirm shaming</td><td>Using guilt or shame to push a choice</td><td>"No, I don't care about my family's festival"</td></tr>
              <tr><td>4. Forced action</td><td>Making people do something unrelated to get what they want</td><td>You must install the app or join a newsletter to buy</td></tr>
              <tr><td>5. Subscription trap</td><td>Easy to join, hard or hidden to cancel</td><td>Cancel a membership only by phone, after many steps</td></tr>
              <tr><td>6. Interface interference</td><td>Design that hides or plays down key information</td><td>A bright "Accept" button and a tiny grey "No thanks"</td></tr>
              <tr><td>7. Bait and switch</td><td>Advertising one thing, then pushing another</td><td>An ad for a ₹999 kurta that is never in stock, to sell a ₹1,999 one</td></tr>
              <tr><td>8. Drip pricing</td><td>Hiding parts of the price until late</td><td>A COD fee that appears only at payment</td></tr>
              <tr><td>9. Disguised advertisement</td><td>Ads made to look like other content</td><td>Paid influencer posts or fake reviews with no "ad" label</td></tr>
              <tr><td>10. Nagging</td><td>Asking again and again, interrupting the shopper</td><td>An app-install pop-up on every page</td></tr>
              <tr><td>11. Trick question</td><td>Confusing words that lead to the wrong choice</td><td>"Untick to not stop getting offers"</td></tr>
              <tr><td>12. SaaS billing</td><td>Silent recurring charges in software services</td><td>A free trial that turns paid without a clear reminder</td></tr>
              <tr><td>13. Rogue malwares</td><td>Using harmful software to trick or harm users</td><td>A fake "claim your prize" download</td></tr>
            </tbody>
          </table>
          <p>These descriptions are simplified. Read the official guidelines, check for updates, and ask a qualified lawyer about your own store.</p>
        </div>
        <div class="lc-card">
          <h3>Worked example: honest pricing and real consent</h3>
          <p>The Noor cotton kurta set costs ₹1,699. Before the fixes, the ₹49 COD fee appeared only at the payment step. That is drip pricing. The honest version shows the full cost early:</p>
          <pre><code>Noor cotton kurta set         ₹1,699
        COD fee (only if you pay COD)    ₹49
        Total with COD                ₹1,748
        Total with UPI or card        ₹1,699   (no fee)</code></pre>
          <p>India's Consumer Protection (E-Commerce) Rules, 2020 also ask sellers to show the total price, with a breakdown of other charges. Showing the fee early may mean a few shoppers pick UPI instead of COD. That is a fair choice, and prepaid orders have far fewer RTO parcels. In August, Zari &amp; Co's COD RTO rate was 15%, but its prepaid RTO rate was 2.5%.</p>
          <p><strong>Consent</strong> means the shopper clearly agrees. For marketing messages it should be a free, separate choice:</p>
          <ul class="lc-list">
            <li><strong>Unticked by default:</strong> "[ ] Send me new arrivals on WhatsApp."</li>
            <li><strong>Separate from the order:</strong> the shopper can buy without agreeing to marketing.</li>
            <li><strong>Easy to stop:</strong> every message says how to opt out, and it works.</li>
          </ul>
          <p>India's DPDP Act, 2023 sets rules for consent to use personal data. The DPDP Rules, 2025 were notified in November 2025. They bring the law into force in stages over about 18 months. So check the current position with a qualified professional.</p>
        </div>
        <div class="lc-card">
          <h3>Audit your store with AI</h3>
          <p>AI can read your product page, cart and checkout text and flag likely dark patterns. It can then rewrite each one honestly. But AI cannot see colours, button sizes or pop-ups unless you share a screenshot. It may also suggest tricks itself, so put the rules in your prompt.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Give me checkout ideas to increase conversions fast.</code></pre>
          <p>You may get fake timers, pre-ticked add-ons or shaming buttons.</p>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Here is the text of my product page, cart and checkout.
        Check it against the 13 dark patterns in India's CCPA
        guidelines of 2023 (for example false urgency, basket
        sneaking, drip pricing, confirm shaming, nagging).
        Make a table: exact text, likely pattern, why it could
        mislead, honest rewrite. Mark anything unsure as
        "check with a lawyer". This is not legal advice.</code></pre>
          <p>Then do the human checks:</p>
          <ul class="lc-list">
            <li><strong>Shop on your own store on a phone.</strong> Look at every pop-up, button and pre-ticked box.</li>
            <li><strong>Check stock and dates.</strong> Any "low stock" or "sale ends" message must be true for every shopper.</li>
            <li><strong>Check marketplace rules</strong> in Seller Central or Seller Hub help if you also sell there.</li>
            <li><strong>Ask a lawyer</strong> about anything unclear. AI may miss patterns or name the wrong one.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Activity: spot the dark pattern</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Imran found these on the store and in AI drafts. Sort each one into a dark pattern type, or mark it as honest.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="urgency" data-label="False urgency"></div>
              <div data-sorter-target="bucket" data-bucket="sneak" data-label="Basket sneaking"></div>
              <div data-sorter-target="bucket" data-bucket="drip" data-label="Drip pricing"></div>
              <div data-sorter-target="bucket" data-bucket="honest" data-label="Honest"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="urgency" data-why="The message does not match real stock, so it creates fake scarcity.">"Only 2 left!" shown on every product, whatever the real stock</li>
              <li data-bucket="urgency" data-why="A deadline that restarts is not a real deadline.">A 10-minute timer that starts again each time the page reloads</li>
              <li data-bucket="sneak" data-why="The shopper did not choose it. It was added for them.">₹49 gift wrap already added to every cart</li>
              <li data-bucket="sneak" data-why="A pre-ticked extra charge adds money to the bill without a real choice.">A ₹10 donation box ticked by default at checkout</li>
              <li data-bucket="drip" data-why="Part of the price is hidden until the last step.">A ₹49 COD fee that appears only on the payment page</li>
              <li data-bucket="honest" data-why="A real end date that is the same for everyone is a fact, not a trick.">A festive sale end date that is real and the same for every shopper</li>
              <li data-bucket="honest" data-why="The full cost is shown early, with the fee explained.">"Total with COD: ₹1,748 (includes ₹49 COD fee)" on the product page</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to audit your store's text for dark patterns and rewrite it honestly. Use the sample or paste your own product page, cart and checkout text.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a careful e-commerce reviewer in India. You check stores for dark patterns (designs that trick shoppers into choices they did not want). Use simple English.

        Store text to audit:
        [Product page: "Noor kurta set ₹1,699. Hurry! Only 2 left. Offer ends in 09:59."
        Pop-up on every page: "Install our app to continue shopping."
        Cart: "[✓] Gift wrap ₹49" (already ticked).
        Checkout: "[✓] Keep me updated on offers. Untick to not stop receiving messages."
        Payment step: "COD fee ₹49 added."
        Exit pop-up: "No, I don't like saving money."]
        Facts: [140 in stock. No sale is running.]

        Please:
        1. Make a table: exact text, the likely dark pattern from India's CCPA guidelines of 2023, why it could mislead, and an honest rewrite.
        2. Write the honest checkout text in full, with the total price shown early.
        3. Suggest 3 honest ways to help shoppers decide.

        Say clearly that this is not legal advice and that I should check with a lawyer.</pre>
            <ul class="ai-try-checks">
              <li>It finds false urgency, nagging or forced action, basket sneaking, trick question, drip pricing and confirm shaming.</li>
              <li>The marketing box becomes unticked, with clear wording.</li>
              <li>The rewrite shows ₹1,748 with COD, or ₹1,699 with UPI or card, before payment.</li>
              <li>It says this is not legal advice.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A trick that lifts sales today costs trust, returns and legal risk tomorrow. Learn the 13 patterns, audit your pages with AI, and check everything yourself on a phone. Show real stock, real dates and the full price early, and let shoppers choose freely.
        </div>
      HTML
      starter_code: nil
    },
    15 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-ecom">E-commerce</div>
          <h1 class="lc-title">Capstone: A 90-Day Growth Plan</h1>
        </div>
        <p class="lc-lead">In this capstone you will put the whole course together. You will build a 90-day growth plan for Zari &amp; Co, from 1 September to 29 November 2026. The plan reviews the metrics, uses segments, fixes conversion, recovers carts, runs a festival campaign and starts a loyalty plan. Heena's target is about ₹19 lakh a month in the festive months, with ad spend at ₹4,00,000 a month or less. Every lever must be honest, and every number must be checked.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 330" role="img" aria-label="Zari and Co's 90-day plan. Target: 88,000 sessions times 1.1% conversion times 1,980 rupees AOV equals 19,16,640 rupees from 968 orders. Days 1 to 30 in September: fix and test, with size charts and photos, COD fee shown early, cart reminders and an A/B test. Days 31 to 61 in October: Navratri, with honest festive offers, a saree and blouse bundle, a second-order flow and COD confirmation. Days 62 to 90 in November: Diwali and loyalty, with a Diwali campaign, points for members, review requests and a 90-day review. Limits: ad spend up to 4,00,000 rupees a month, no dark patterns, weekly check.">
            <defs><marker id="sg15a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="20" y="12" width="720" height="58" rx="12" fill="#27274e" stroke="#8b5cf6"/>
              <text x="380" y="36" font-weight="700" fill="#c4b5fd">Target for a festive month (made-up numbers)</text>
              <text x="380" y="58">88,000 sessions × 1.1% × ₹1,980 = ₹19,16,640 (968 orders)</text>
              <rect x="20" y="90" width="220" height="166" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="130" y="114" font-weight="700" fill="#93c5fd">Days 1 to 30: Sep</text>
              <text x="130" y="136" font-weight="700">Fix and test</text>
              <g font-size="12" fill="#9b99b8">
                <text x="130" y="164">size charts, 6 photos</text>
                <text x="130" y="186">COD fee shown early</text>
                <text x="130" y="208">cart reminders</text>
                <text x="130" y="230">A/B test Noor page</text>
              </g>
              <rect x="270" y="90" width="220" height="166" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="380" y="114" font-weight="700" fill="#fcd34d">Days 31 to 61: Oct</text>
              <text x="380" y="136" font-weight="700">Navratri</text>
              <g font-size="12" fill="#9b99b8">
                <text x="380" y="164">honest festive offers</text>
                <text x="380" y="186">saree + blouse bundle</text>
                <text x="380" y="208">second-order flow</text>
                <text x="380" y="230">COD confirmation</text>
              </g>
              <rect x="520" y="90" width="220" height="166" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="630" y="114" font-weight="700" fill="#6ee7b7">Days 62 to 90: Nov</text>
              <text x="630" y="136" font-weight="700">Diwali and loyalty</text>
              <g font-size="12" fill="#9b99b8">
                <text x="630" y="164">Diwali campaign</text>
                <text x="630" y="186">points for members</text>
                <text x="630" y="208">review requests</text>
                <text x="630" y="230">90-day review</text>
              </g>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#sg15a)">
                <path d="M242,173 L266,173"/>
                <path d="M492,173 L516,173"/>
              </g>
              <rect x="20" y="272" width="720" height="44" rx="10" fill="#1f1f44" stroke="#ec4899" stroke-dasharray="6 4"/>
              <text x="380" y="299" font-size="12">Limits: ad spend up to ₹4,00,000 a month · no dark patterns · check the numbers every week</text>
            </g>
          </svg>
          <figcaption>Three 30-day phases. Fix the store first, then use the festive traffic, then build loyalty.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Step 1: review the metrics and test the target</h3>
          <p>Start from August, the last full month. Then set a target for each lever. A 10% gain in each of the three levers multiplies to 1.1 × 1.1 × 1.1 = 1.331, or 33.1% more revenue.</p>
          <table class="lc-table">
            <thead><tr><th>Lever</th><th>August</th><th>Festive target</th><th>Honest ways to get there</th></tr></thead>
            <tbody>
              <tr><td>Sessions</td><td>80,000</td><td>88,000 (+10%)</td><td>Festive emails and WhatsApp to customers who agreed, a saree draping guide for search, ads up to the ₹4,00,000 cap</td></tr>
              <tr><td>Conversion rate</td><td>1.0%</td><td>1.1%</td><td>Size charts, 6 photos, COD fee shown early, guest checkout, cart reminders with consent</td></tr>
              <tr><td>AOV</td><td>₹1,800</td><td>₹1,980 (+10%)</td><td>Saree + blouse bundle, "goes well with" suggestions, free shipping above ₹2,499</td></tr>
              <tr><td>Revenue</td><td>₹14,40,000</td><td>₹19,16,640</td><td>968 orders × ₹1,980</td></tr>
            </tbody>
          </table>
          <p>Is 1.1% realistic? If mobile conversion rises from 0.9% to 1.1%, mobile gives 704 orders. Add desktop's 224 and you get 928 orders from 80,000 sessions, or 1.16%. So 1.1% leaves some room for error.</p>
          <p>Now test the target against the ad cap. At a CAC of ₹600, ₹4,00,000 wins about 667 new customers. Each new customer places one first order. So the rest must come from returning customers:</p>
          <pre><code>Target revenue            =88000*1.1%*1980              → 19,16,640
        Target orders             =88000*1.1%                   → 968
        Ad spend share of revenue =400000/1916640               → 20.9% (August: 25.0%)
        New customers at ₹600 CAC =ROUND(400000/600,0)          → 667
        Returning orders needed   =968-ROUND(400000/600,0)      → 301 (August: 200)
        If CAC rises to ₹700      =968-ROUND(400000/700,0)      → 397</code></pre>
          <p>Festive ads often cost more. So the plan must not depend on ads alone. Returning-customer orders must rise from 200 to about 300 to 400 a month. That is the job of segments, emails, the second-order flow and loyalty. The loyalty lesson's goal of 199 extra second orders over 90 days adds about 66 orders a month. The win-back message may add about 36 orders once. Early access and points for Champions and Loyal must cover the rest of the gap of about 100 orders a month.</p>
          <p><strong>Kept revenue:</strong> the target counts orders placed. Some will be RTO or returned. With 10% RTO and 10% returns, only 968 × 0.9 × 0.9 = about 784 orders are kept. If COD confirmation cuts COD RTO from 15% to 10%, overall RTO becomes 60% × 10% + 40% × 2.5% = 7%. Then about 810 orders are kept (<code>=968*(1-7%)*(1-10%)</code> → 810).</p>
          <p><strong>Profit, not just revenue:</strong> festive discounts lower AOV and gross profit. At a 50% gross margin, 10% off needs 25% more units to keep the same gross profit. So check gross profit every week too, and prefer bundles and early access to deep discounts.</p>
        </div>
        <div class="lc-card">
          <h3>Step 2: the 90-day plan</h3>
          <table class="lc-table">
            <thead><tr><th>Phase</th><th>Actions</th><th>Numbers to watch</th><th>Owner</th></tr></thead>
            <tbody>
              <tr><td><strong>Days 1 to 30</strong> (1 to 30 September): fix and test</td><td>Size charts in cm and inches and 6 photos on the top 5 products. COD fee shown on product pages. Guest checkout. Review the cart reminder flow: only shoppers who agreed, at most two reminders, and a holdout group. COD confirmation message. Review requests after delivery. A weekly dashboard and a 10% holdout group.</td><td>Mobile conversion rate, cart-to-order rate, COD RTO rate</td><td>Imran</td></tr>
              <tr><td><strong>Days 31 to 61</strong> (1 to 31 October): Navratri</td><td>Lehenga size guide. Early look at the collection for Champions and Loyal. Honest festive offers with real end dates. Saree + blouse bundle. Second-order nudge for New customers.</td><td>Orders, AOV, returning-customer orders, lehenga size returns</td><td>Heena and Imran</td></tr>
              <tr><td><strong>Days 62 to 90</strong> (1 to 29 November): Diwali and loyalty</td><td>Diwali campaign by segment. One calm win-back message to At risk customers. Points launch for Champions and Loyal. Referral reward. A 90-day review of every number.</td><td>Revenue, CAC, repeat customer rate, kept revenue</td><td>Heena</td></tr>
            </tbody>
          </table>
          <p><strong>Weekly check (every Monday):</strong> compare each lever with its target. If one is behind, find out why before you act. Do not add fake timers, hidden fees or pre-ticked add-ons to catch up. Change the plan instead, for example more work on the second-order flow or a different bundle.</p>
          <p>Remember: the festive season lifts sales by itself. To see what each action added, use holdout groups and A/B tests where you can. Do not judge an action only by comparing October with August.</p>
        </div>
        <div class="lc-card">
          <h3>Step 3: build and run the plan with AI</h3>
          <p>AI can turn your numbers and goals into a first draft of the plan. It can write the message calendar, the weekly dashboard layout and a checklist for each phase. You decide the targets, the budget and what is honest.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Make a Diwali growth plan to double my sales.</code></pre>
          <p>This has no numbers or limits. AI may promise results it cannot know, or suggest tricks.</p>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Build a 90-day growth plan (1 Sep to 29 Nov) for my store.
        August: 80,000 sessions, 1.0% conversion, AOV ₹1,800,
        CAC ₹600, 200 returning-customer orders, RTO 10%.
        Target: 88,000 sessions, 1.1%, AOV ₹1,980. Ad spend
        cap ₹4,00,000 a month. Show the target maths and how
        many returning orders I need. Split the plan into three
        30-day phases with actions, owners and numbers to watch.
        No dark patterns, no fake reviews, no promised results.</code></pre>
          <p>Then check:</p>
          <ul class="lc-list">
            <li><strong>The maths:</strong> 968 orders, ₹19,16,640, and about 301 returning orders at ₹600 CAC.</li>
            <li><strong>The limits:</strong> no idea breaks the ad cap or uses a dark pattern.</li>
            <li><strong>The team:</strong> each action has one owner and fits the time you really have.</li>
            <li><strong>Privacy:</strong> share totals with AI, not customer names or phone numbers.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Activity: Heena builds the plan</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="tool" data-label="Spreadsheet">Imran puts August's numbers and the festive targets into a sheet called "Plan".</li>
              <li data-kind="user" data-label="Heena asks">Build a 90-day plan in three phases. Target 88,000 sessions, 1.1% conversion and ₹1,980 AOV. Ad cap ₹4,00,000 a month. No dark patterns.</li>
              <li data-kind="answer" data-label="AI draft">A three-phase plan with actions and owners. It also says: "Raise ad spend to ₹6,00,000 in October" and "Add a 24-hour timer to all festive products".</li>
              <li data-kind="warn" data-label="Breaks limits">The extra ad spend breaks Heena's cap. A timer with no real deadline is false urgency. Both ideas are removed.</li>
              <li data-kind="check" data-label="Recalculate">Imran checks the maths: 968 orders, 667 new customers at ₹600 CAC, so 301 returning orders are needed. At ₹700 CAC, 397.</li>
              <li data-kind="answer" data-label="Revised plan">AI adds more returning-customer actions: early access for Champions, a second-order nudge for New customers and a win-back message.</li>
              <li data-kind="check" data-label="Approve">Heena approves the plan. The team reviews the dashboard every Monday and writes down each decision.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to build a 90-day growth plan with the maths checked against your limits. Use the Zari &amp; Co sample or your own totals (no customer data).</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a growth planner for Indian online stores. Use simple English.

        Store: [Zari &amp; Co, an ethnic wear D2C brand from Birmingham].
        Last month (made-up): [80,000 sessions (80% mobile); 1.0% conversion; AOV ₹1,800; revenue ₹14,40,000; CAC ₹600; 200 returning-customer orders; RTO 10% (COD 15%, prepaid 2.5%); COD share 60%; repeat customer rate 20%].
        Target per festive month: [88,000 sessions; 1.1% conversion; AOV ₹1,980].
        Ad spend cap: [₹4,00,000 a month]. Plan dates: [1 September to 29 November].

        Please:
        1. Calculate target orders and revenue. Show the steps.
        2. Work out new customers at my CAC and the returning-customer orders I need. Repeat it with CAC 20% higher.
        3. Make a 3-phase plan (30 days each): actions, owner, numbers to watch.
        4. Include conversion fixes, cart recovery with consent, a festival campaign, bundles and a loyalty plan.
        5. Give a weekly dashboard with spreadsheet formulas.
        6. List the top 3 risks and a plan B for each.

        Rules: stay within the ad cap. No dark patterns, fake reviews or fake discounts. Do not promise results.</pre>
            <ul class="ai-try-checks">
              <li>968 orders and ₹19,16,640. About 667 new customers and 301 returning orders at ₹600 CAC.</li>
              <li>At ₹720 CAC (20% higher), about 556 new customers, so about 412 returning orders.</li>
              <li>No action breaks the ad cap or uses false urgency, hidden fees or pre-ticked boxes.</li>
              <li>Each action has an owner and a number to watch.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A good growth plan starts with the numbers and ends with a weekly check. Small, honest gains in traffic, conversion and order value multiply. Repeat customers carry the plan when ads get expensive. AI drafts the plan fast, but you set the limits, check the maths and keep every lever honest.
        </div>
      HTML
      starter_code: nil
    }
  }.freeze
end

module AiReviewsReturnsContent
  # Units (sidebar dividers): 1–4 Reviews and Returns Basics · 5–9 Managing Reviews · 10–14 Reducing Returns · 15 Capstone
  # Widgets: sequence, sorter, stepper. No code editor: each Try It is an ai-try prompt box.
  LESSONS = {
    1 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-ecom">E-commerce</div>
          <h1 class="lc-title">Why Reviews and Returns Matter</h1>
        </div>
        <p class="lc-lead">Reviews and returns are two sides of the same story. Reviews tell new buyers if they can trust you. Returns show where your product or listing let a buyer down. Both cost money when they go wrong. In this lesson, you will learn what reviews do for a store. You will also see what returns and RTO cost, and how the two are linked. Throughout this course, you will follow <strong>Zari &amp; Co</strong>, a made-up ethnic wear brand from Gujarat. Heena is the founder, Imran runs the catalogue and Tanvi leads customer experience. They sell on their own Shopify store, Amazon, Flipkart and Myntra. In August 2026, their returns and COD failures went up sharply.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 290" role="img" aria-label="A loop of six steps: listing, order, delivery, reviews and returns, find the cause, fix it, and back to the listing. In the middle, Zari and Co's made-up August cost of returns and RTO: 2,56,560 rupees.">
            <defs><marker id="rr1a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="40" y="25" width="180" height="56" rx="10" fill="#27274e" stroke="#8b5cf6"/>
              <text x="130" y="48" font-weight="700">Listing</text>
              <text x="130" y="67" font-size="11" fill="#9b99b8">photos, size chart, price</text>
              <rect x="290" y="25" width="180" height="56" rx="10" fill="#27274e" stroke="#3b82f6"/>
              <text x="380" y="48" font-weight="700">Order</text>
              <text x="380" y="67" font-size="11" fill="#9b99b8">COD or prepaid</text>
              <rect x="540" y="25" width="180" height="56" rx="10" fill="#27274e" stroke="#22d3ee"/>
              <text x="630" y="48" font-weight="700">Delivery</text>
              <text x="630" y="67" font-size="11" fill="#9b99b8">or RTO (not delivered)</text>
              <rect x="540" y="205" width="180" height="56" rx="10" fill="#27274e" stroke="#f59e0b"/>
              <text x="630" y="228" font-weight="700">Reviews + returns</text>
              <text x="630" y="247" font-size="11" fill="#9b99b8">what buyers say and do</text>
              <rect x="290" y="205" width="180" height="56" rx="10" fill="#27274e" stroke="#ec4899"/>
              <text x="380" y="228" font-weight="700">Find the cause</text>
              <text x="380" y="247" font-size="11" fill="#9b99b8">size? colour? damage?</text>
              <rect x="40" y="205" width="180" height="56" rx="10" fill="#27274e" stroke="#10b981"/>
              <text x="130" y="228" font-weight="700">Fix it</text>
              <text x="130" y="247" font-size="11" fill="#9b99b8">listing, product, packing</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#rr1a)">
                <line x1="222" y1="53" x2="286" y2="53"/>
                <line x1="472" y1="53" x2="536" y2="53"/>
                <line x1="630" y1="83" x2="630" y2="201"/>
                <line x1="538" y1="233" x2="474" y2="233"/>
                <line x1="288" y1="233" x2="224" y2="233"/>
                <line x1="130" y1="203" x2="130" y2="85"/>
              </g>
              <rect x="210" y="112" width="340" height="62" rx="10" fill="#1f1f44" stroke="#4b4a78"/>
              <text x="380" y="136" font-size="12" fill="#9b99b8">Zari &amp; Co, August 2026 (made up)</text>
              <text x="380" y="160" font-weight="700" fill="#fcd34d">Returns + RTO cost: ₹2,56,560</text>
            </g>
          </svg>
          <figcaption>Every return and every review is feedback. If you find the cause and fix it, the next buyer has a better experience.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>What reviews do for your store</h3>
          <p>A <strong>rating</strong> is the star score a buyer gives (1 to 5). A <strong>review</strong> is a rating with written words. Reviews do three jobs:</p>
          <ul class="lc-list">
            <li><strong>Trust.</strong> Online buyers cannot touch the fabric. They read what other buyers say instead.</li>
            <li><strong>Visibility.</strong> Marketplaces keep their ranking methods private. But customer signals, such as ratings and returns, can affect how often you are shown. Check each marketplace's seller help pages.</li>
            <li><strong>Free research.</strong> Reviews tell you what to fix. "Runs small" in ten reviews is a clear message.</li>
          </ul>
          <p>In August, Zari &amp; Co received 620 ratings. The average was 3.85 stars. But 130 of them (21.0%) were 1 or 2 stars. Many of those low ratings said the same thing: the size or the colour was not what the buyer expected.</p>
        </div>
        <div class="lc-card">
          <h3>Returns and RTO: two different costs</h3>
          <p>A <strong>return</strong> happens after delivery. The buyer receives the order and sends it back. <strong>RTO</strong> (return to origin) happens before delivery. The order is shipped but never delivered, so it comes back to you. Common causes are a wrong address, a phone nobody answers, or a buyer who refuses a COD (cash on delivery) parcel.</p>
          <table class="lc-table">
            <thead><tr><th>Zari &amp; Co, August (made up)</th><th>COD</th><th>Prepaid</th><th>Total</th></tr></thead>
            <tbody>
              <tr><td>Orders shipped</td><td>2,200</td><td>1,800</td><td>4,000</td></tr>
              <tr><td>RTO (not delivered)</td><td>440</td><td>40</td><td>480</td></tr>
              <tr><td>Delivered</td><td>1,760</td><td>1,760</td><td>3,520</td></tr>
              <tr><td>Returned by the buyer</td><td>308</td><td>220</td><td>528</td></tr>
            </tbody>
          </table>
          <p>Heena listed what each one costs. These are Zari &amp; Co's own made-up averages. Your courier and marketplace charges will be different.</p>
          <pre><code>One return: forward shipping ₹85 + reverse pickup ₹110
                    + quality check and repack ₹40 + average write-off ₹60 = ₹295
        One RTO:    forward shipping ₹85 + RTO freight back ₹85
                    + quality check and repack ₹40 = ₹210

        Returns: 528 × ₹295 = ₹1,55,760
        RTO:     480 × ₹210 = ₹1,00,800
        Total August cost:  ₹2,56,560</code></pre>
          <p>This total does not even count the lost sales, the stock stuck in transit, or the team's time. Look at the table again. COD orders caused 440 of the 480 RTO orders.</p>
        </div>
        <div class="lc-card">
          <h3>The loop between reviews and returns</h3>
          <p>Reviews and returns often share one cause. Take Zari &amp; Co's best-selling Bandhani cotton kurta set (SKU ZC-KS-101). A <strong>SKU</strong> (stock keeping unit) is the code for one product.</p>
          <ul class="lc-list">
            <li>The size chart showed body sizes, not the real garment measurements. The kurta runs small.</li>
            <li>In August, 176 of 801 delivered kurta sets came back (22.0%). Size was the reason for 112 of them.</li>
            <li>Unhappy buyers left 1-star reviews such as "Ordered L, fits like M". The average rating fell to 3.6.</li>
            <li>A lower rating means fewer new buyers trust the product. Some still buy the wrong size, and the loop repeats.</li>
          </ul>
          <p>The fix is not "get more 5-star reviews". The fix is a correct size chart, so fewer buyers get the wrong size. Better reviews then follow on their own. This course teaches you to use AI at each step of this loop. You will still check the numbers and make the decisions yourself.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: follow one kurta set around the loop</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put these events for one Zari &amp; Co order in the order they happen.</p>
            <ol data-sequence-target="list">
              <li data-order="1">The listing shows body sizes, not the real kurta measurements</li>
              <li data-order="2">Priya in Maharashtra orders size L and pays cash on delivery</li>
              <li data-order="3">The parcel is delivered, and the kurta is tight at the chest</li>
              <li data-order="4">Priya books a return and leaves a 1-star review: "Runs small"</li>
              <li data-order="5">Tanvi's team sees "size" as the top return reason for this SKU</li>
              <li data-order="6">Imran adds garment measurements and a clear fit note to the listing</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask the AI to build a first "reviews and returns health check" for your store. Put in your own numbers, or keep the made-up ones.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an e-commerce operations adviser for Indian online sellers.

        Build a one-page reviews and returns health check for my store.

        My store: [Zari &amp; Co, ethnic wear, sells on Shopify, Amazon, Flipkart, Myntra]
        Last month:
        - Orders shipped: [4,000] (COD [2,200], prepaid [1,800])
        - RTO (shipped but not delivered): [480] (COD [440], prepaid [40])
        - Returns after delivery: [528]
        - Cost per return: [Rs 295]. Cost per RTO: [Rs 210]
        - Ratings: [620], average [3.85], 1-2 star ratings: [130]
        - Top complaints I have noticed: [size runs small, colour differs from photo]

        Please:
        1. Calculate RTO rate (RTO / shipped), return rate (returns / delivered), and the monthly cost of returns and RTO. Show each calculation.
        2. Explain in simple words how my reviews and returns may be linked.
        3. List the 3 biggest problems, in order of cost.
        4. List the extra data I should collect next month.
        Do not invent numbers. If something is missing, say so.</pre>
            <ul class="ai-try-checks">
              <li>Check every sum with a calculator. Return rate must use delivered orders, not shipped orders.</li>
              <li>With the sample numbers, RTO rate should be 12.0%, return rate 15.0% and total cost ₹2,56,560.</li>
              <li>Did the AI invent any number you did not give it? Remove it.</li>
              <li>Do the "biggest problems" match what you know about your store?</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Bad reviews and costly returns usually have the same root cause. Fix the cause, such as a wrong size chart or a misleading photo, and both problems shrink together.
        </div>
      HTML
      starter_code: nil
    },
    2 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-ecom">E-commerce</div>
          <h1 class="lc-title">Where AI Helps</h1>
        </div>
        <p class="lc-lead">Zari &amp; Co gets hundreds of reviews and return comments every month. Nobody on Tanvi's team has time to read them all carefully. AI assistants, such as Claude, can read a lot of text fast. They can sort it, count it and draft replies. But AI can also be wrong, sound confident, and treat people unfairly if you let it decide alone. In this lesson, you will learn the four main jobs AI can do for reviews and returns. You will also learn the human check that each job needs.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 280" role="img" aria-label="Four columns: review analysis, reply drafts, return reason codes and fraud flags. In each column, AI does a first draft, and then a person checks and decides.">
            <defs><marker id="rr2a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12" fill="#e2e0f0" text-anchor="middle">
              <rect x="10" y="15" width="175" height="40" rx="8" fill="#1f1f44" stroke="#8b5cf6"/><text x="97" y="40" font-size="13" font-weight="700">Review analysis</text>
              <rect x="196" y="15" width="175" height="40" rx="8" fill="#1f1f44" stroke="#3b82f6"/><text x="283" y="40" font-size="13" font-weight="700">Reply drafts</text>
              <rect x="382" y="15" width="175" height="40" rx="8" fill="#1f1f44" stroke="#f59e0b"/><text x="469" y="40" font-size="13" font-weight="700">Return reason codes</text>
              <rect x="568" y="15" width="175" height="40" rx="8" fill="#1f1f44" stroke="#ec4899"/><text x="655" y="40" font-size="13" font-weight="700">Fraud flags</text>
              <text x="20" y="85" text-anchor="start" font-size="11" fill="#c4b5fd">AI</text>
              <rect x="10" y="92" width="175" height="58" rx="8" fill="#27274e"/><text x="97" y="116">groups themes</text><text x="97" y="136" fill="#9b99b8">and counts mentions</text>
              <rect x="196" y="92" width="175" height="58" rx="8" fill="#27274e"/><text x="283" y="116">drafts a polite reply</text><text x="283" y="136" fill="#9b99b8">in your brand voice</text>
              <rect x="382" y="92" width="175" height="58" rx="8" fill="#27274e"/><text x="469" y="116">tags each comment</text><text x="469" y="136" fill="#9b99b8">size, colour, damage</text>
              <rect x="568" y="92" width="175" height="58" rx="8" fill="#27274e"/><text x="655" y="116">points out patterns</text><text x="655" y="136" fill="#9b99b8">worth a closer look</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#rr2a)">
                <line x1="97" y1="57" x2="97" y2="88"/><line x1="283" y1="57" x2="283" y2="88"/><line x1="469" y1="57" x2="469" y2="88"/><line x1="655" y1="57" x2="655" y2="88"/>
                <line x1="97" y1="152" x2="97" y2="183"/><line x1="283" y1="152" x2="283" y2="183"/><line x1="469" y1="152" x2="469" y2="183"/><line x1="655" y1="152" x2="655" y2="183"/>
              </g>
              <text x="20" y="180" text-anchor="start" font-size="11" fill="#6ee7b7">Person</text>
              <rect x="10" y="187" width="175" height="58" rx="8" fill="#27274e" stroke="#10b981"/><text x="97" y="211">reads real reviews</text><text x="97" y="231" fill="#9b99b8">and checks the counts</text>
              <rect x="196" y="187" width="175" height="58" rx="8" fill="#27274e" stroke="#10b981"/><text x="283" y="211">fixes facts and tone</text><text x="283" y="231" fill="#9b99b8">then posts it</text>
              <rect x="382" y="187" width="175" height="58" rx="8" fill="#27274e" stroke="#10b981"/><text x="469" y="211">spot-checks the tags</text><text x="469" y="231" fill="#9b99b8">sorts the "unclear" ones</text>
              <rect x="568" y="187" width="175" height="58" rx="8" fill="#27274e" stroke="#10b981"/><text x="655" y="211">looks at the evidence</text><text x="655" y="231" fill="#9b99b8">decides fairly</text>
              <text x="380" y="270" font-size="11" fill="#9b99b8">AI makes the first draft. A person checks it and makes the decision.</text>
            </g>
          </svg>
          <figcaption>Four jobs where AI saves time. Every job ends with a person, not with the AI.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Four jobs AI can do well</h3>
          <table class="lc-table">
            <thead><tr><th>Job</th><th>What AI does</th><th>What can go wrong</th><th>What the person does</th></tr></thead>
            <tbody>
              <tr><td><strong>Review analysis</strong></td><td>Reads 236 written reviews and groups them into themes, such as "size runs small"</td><td>Counts are wrong. Quotes are made up. Sarcasm is missed.</td><td>Opens the real reviews and checks a sample</td></tr>
              <tr><td><strong>Reply drafts</strong></td><td>Writes a polite, specific reply to each review</td><td>Promises a refund you do not offer. Sounds robotic.</td><td>Edits, checks the policy, then posts</td></tr>
              <tr><td><strong>Return reason codes</strong></td><td>Reads free-text return comments and tags each with a reason code</td><td>Forces a vague comment into a wrong code</td><td>Checks a sample and sorts the "unclear" comments</td></tr>
              <tr><td><strong>Fraud flags</strong></td><td>Points out unusual patterns, such as many returns from one account</td><td>Treats honest buyers as cheats</td><td>Looks at the facts and decides. Never blocks a buyer automatically.</td></tr>
            </tbody>
          </table>
          <p>A <strong>reason code</strong> is a short, fixed label for why an item came back, such as SIZE or DAMAGED. Fixed codes let you count reasons in a spreadsheet. Free text cannot be counted easily.</p>
        </div>
        <div class="lc-card">
          <h3>Weak prompt vs better prompt</h3>
          <p>Tanvi wants to code 528 return comments from August. Her first prompt was too vague:</p>
          <pre><code>Why are people returning our products?</code></pre>
          <p>The AI gave general advice about fashion returns. It did not use her data at all. Here is her better prompt:</p>
          <pre><code>You are a returns analyst for an ethnic wear brand.
        Tag each return comment below with ONE main reason code from this list:
        SIZE, COLOUR, QUALITY, DAMAGED, CHANGED_MIND, NOT_AS_DESCRIBED, UNCLEAR.
        Use UNCLEAR if the comment does not clearly show a reason. Do not guess.
        If a comment has a second reason, add it in a "second reason" column.
        Output a table: comment ID | main code | second code | the words that show it.

        C01: Kurta is tight at chest, I ordered L as per the size chart
        C02: Not good
        ...</code></pre>
          <p>The better prompt gives a fixed list, a rule for unclear comments and a table format. It also asks the AI to show the words it used. So Tanvi can check each tag in seconds.</p>
        </div>
        <div class="lc-card">
          <h3>Risks you must manage</h3>
          <ul class="lc-list">
            <li><strong>Private data.</strong> Return comments and reviews often hold names, phone numbers and addresses. Remove them before you paste text into a public AI tool. Use order IDs like C01 instead. Follow your company's rules on approved tools.</li>
            <li><strong>Made-up facts.</strong> AI may write a count or a quote that is not in your data. Always check against the real reviews.</li>
            <li><strong>Unfair decisions.</strong> A fraud flag is a question, not a verdict. A person must look at the evidence before any action is taken. Never let a flag or score use a buyer's name, religion, gender or area.</li>
            <li><strong>Broken rules.</strong> Never ask AI to write reviews for your own products. Fake reviews break Indian consumer rules and marketplace policies.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Activity: who does this job?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each task. Can AI do a first draft, or must a person decide?</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="ai" data-label="AI can draft or sort"></div>
              <div data-sorter-target="bucket" data-bucket="person" data-label="A person must decide"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="ai" data-why="Grouping text into themes is a first draft. You still check a sample.">Group 236 written reviews into themes</li>
              <li data-bucket="ai" data-why="AI can suggest a code. A person spot-checks the results and the unclear ones.">Tag 528 return comments with reason codes</li>
              <li data-bucket="ai" data-why="A draft reply saves time. A person edits and posts it.">Draft a reply to a 2-star review about late delivery</li>
              <li data-bucket="person" data-why="Blocking a buyer affects a real person. It needs evidence and a human decision.">Block a buyer who returned four orders this month</li>
              <li data-bucket="person" data-why="Refunds and exceptions are business decisions. They must follow your policy.">Give a full refund outside the return window</li>
              <li data-bucket="person" data-why="Changing the product costs money. A person weighs the evidence and decides.">Ask the supplier to change the kurta pattern</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask the AI to code a batch of return comments. Paste your own comments (with personal details removed) or use the sample.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a returns analyst for [an Indian ethnic wear brand].

        Tag each return comment with ONE main reason code from this list:
        SIZE, COLOUR, QUALITY, DAMAGED, CHANGED_MIND, NOT_AS_DESCRIBED, UNCLEAR.
        Rules:
        - Use UNCLEAR if the reason is not clear. Do not guess.
        - If there is a second reason, put it in the "second code" column.
        - Quote the exact words that show the reason.

        Comments:
        [C01: Kurta is tight at chest, I ordered L as per the size chart
        C02: Saree looks dull brown-red, the photo was bright wine
        C03: Dupatta came torn at one corner, packet was wet
        C04: Wedding date got postponed, do not need it now
        C05: Stitching of the pant opened after first wear
        C06: Listing said pure cotton, label says cotton blend
        C07: Not good
        C08: Length too short and colour also lighter than photo]

        Output:
        1. A table: comment ID | main code | second code | exact words.
        2. A count of each main code.
        3. One line: which comments a person should read again, and why.</pre>
            <ul class="ai-try-checks">
              <li>Is C07 marked UNCLEAR, not forced into a code?</li>
              <li>Does C08 have two codes (SIZE and COLOUR)?</li>
              <li>Are the quoted words really in each comment?</li>
              <li>Do the counts add up to the number of comments?</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Use AI for the reading, sorting and first drafts. Keep people for the checks and the decisions, especially anything that affects a customer's money or account.
        </div>
      HTML
      starter_code: nil
    },
    3 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-ecom">E-commerce</div>
          <h1 class="lc-title">Review and Return Metrics</h1>
        </div>
        <p class="lc-lead">A <strong>metric</strong> is a number you track to see how your business is doing. Before you ask AI to find problems, you need a few correct numbers. In this lesson, you will calculate five metrics with Zari &amp; Co's August data: average rating, rating distribution, return rate, RTO rate and cost per return. You will also learn the most common mistake: dividing by the wrong number. AI tools make this mistake too, so you must know how to check them.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="A funnel of Zari and Co's made-up August orders. 4,000 shipped, minus 480 RTO gives 3,520 delivered, minus 528 returns gives 2,992 kept. RTO rate is 12.0 percent of shipped. Return rate is 15.0 percent of delivered. Ratings: 620, average 3.85.">
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <rect x="20" y="25" width="460" height="46" rx="8" fill="#27274e" stroke="#3b82f6"/>
              <text x="250" y="53" text-anchor="middle" font-weight="700">Shipped: 4,000 orders</text>
              <text x="500" y="88" font-size="12" fill="#fca5a5">− 480 RTO (never delivered)</text>
              <text x="500" y="106" font-size="12" fill="#9b99b8">RTO rate = 480 ÷ 4,000 = 12.0%</text>
              <rect x="20" y="115" width="405" height="46" rx="8" fill="#27274e" stroke="#22d3ee"/>
              <text x="222" y="143" text-anchor="middle" font-weight="700">Delivered: 3,520</text>
              <text x="500" y="178" font-size="12" fill="#fca5a5">− 528 returned by buyers</text>
              <text x="500" y="196" font-size="12" fill="#9b99b8">Return rate = 528 ÷ 3,520 = 15.0%</text>
              <rect x="20" y="205" width="344" height="46" rx="8" fill="#27274e" stroke="#10b981"/>
              <text x="192" y="233" text-anchor="middle" font-weight="700">Kept: 2,992</text>
              <rect x="490" y="210" width="250" height="46" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="615" y="229" text-anchor="middle" font-size="12">620 ratings, average 3.85</text>
              <text x="615" y="247" text-anchor="middle" font-size="12" fill="#9b99b8">1–2 stars: 130 (21.0%)</text>
              <text x="380" y="285" text-anchor="middle" font-size="12" fill="#fcd34d">Cost: 528 × ₹295 + 480 × ₹210 = ₹2,56,560 (made-up data)</text>
            </g>
          </svg>
          <figcaption>Each rate has its own base. RTO is a share of shipped orders. Returns are a share of delivered orders.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Rating metrics: the average hides the shape</h3>
          <p>The <strong>average rating</strong> is the total of all stars divided by the number of ratings. The <strong>rating distribution</strong> is how many ratings you got at each star level.</p>
          <table class="lc-table">
            <thead><tr><th>Stars</th><th>Ratings</th><th>Share</th><th>Stars × ratings</th></tr></thead>
            <tbody>
              <tr><td>5</td><td>310</td><td>50.0%</td><td>1,550</td></tr>
              <tr><td>4</td><td>118</td><td>19.0%</td><td>472</td></tr>
              <tr><td>3</td><td>62</td><td>10.0%</td><td>186</td></tr>
              <tr><td>2</td><td>50</td><td>8.1%</td><td>100</td></tr>
              <tr><td>1</td><td>80</td><td>12.9%</td><td>80</td></tr>
              <tr><td><strong>Total</strong></td><td><strong>620</strong></td><td><strong>100%</strong></td><td><strong>2,388</strong></td></tr>
            </tbody>
          </table>
          <pre><code>Average rating = 2,388 ÷ 620 = 3.85
        1–2 star share = (50 + 80) ÷ 620 = 130 ÷ 620 = 21.0%</code></pre>
          <p>An average of 3.85 sounds fine. But more than one buyer in five gave 1 or 2 stars. There are more 1-star ratings (80) than 3-star ratings (62). This shape often means one clear problem, not general unhappiness. So always look at the distribution, not only the average.</p>
          <p>Marketplaces may show a rating that they calculate their own way, for example with more weight on recent ratings. Your own sum is for tracking trends, not for matching their number exactly.</p>
        </div>
        <div class="lc-card">
          <h3>Return rate and RTO rate: pick the right base</h3>
          <ul class="lc-list">
            <li><strong>RTO rate</strong> = RTO orders ÷ orders shipped × 100. Only shipped orders can fail delivery.</li>
            <li><strong>Return rate</strong> = returns ÷ delivered orders × 100. Only delivered orders can be returned.</li>
          </ul>
          <table class="lc-table">
            <thead><tr><th>Payment</th><th>Shipped</th><th>RTO</th><th>RTO rate</th><th>Delivered</th><th>Returns</th><th>Return rate</th></tr></thead>
            <tbody>
              <tr><td>COD</td><td>2,200</td><td>440</td><td>20.0%</td><td>1,760</td><td>308</td><td>17.5%</td></tr>
              <tr><td>Prepaid</td><td>1,800</td><td>40</td><td>2.2%</td><td>1,760</td><td>220</td><td>12.5%</td></tr>
              <tr><td><strong>Total</strong></td><td>4,000</td><td>480</td><td>12.0%</td><td>3,520</td><td>528</td><td>15.0%</td></tr>
            </tbody>
          </table>
          <p>If you divide returns by shipped orders, you get 528 ÷ 4,000 = 13.2%. That number looks better, but it is wrong. It hides part of the problem. Different teams and platforms sometimes define these rates differently. So write your definition at the top of every report.</p>
          <p>Here is the same work in a spreadsheet (Google Sheets or Excel). Row 1 has headers. Row 2 has the totals.</p>
          <table class="lc-table">
            <thead><tr><th>Cell</th><th>Holds</th><th>Formula or value</th><th>Result</th></tr></thead>
            <tbody>
              <tr><td>B2</td><td>Shipped</td><td>4000</td><td>4,000</td></tr>
              <tr><td>C2</td><td>RTO</td><td>480</td><td>480</td></tr>
              <tr><td>D2</td><td>Delivered</td><td><code>=B2-C2</code></td><td>3,520</td></tr>
              <tr><td>E2</td><td>Returns</td><td>528</td><td>528</td></tr>
              <tr><td>F2</td><td>RTO rate</td><td><code>=C2/B2</code></td><td>12.0% (format as %)</td></tr>
              <tr><td>G2</td><td>Return rate</td><td><code>=E2/D2</code></td><td>15.0%</td></tr>
            </tbody>
          </table>
          <p>For ratings, put the stars 5, 4, 3, 2, 1 in H2:H6 and the counts in I2:I6. Then <code>=SUMPRODUCT(H2:H6,I2:I6)/SUM(I2:I6)</code> gives 3.85. <code>=SUM(I5:I6)/SUM(I2:I6)</code> gives the 1–2 star share: 21.0%.</p>
        </div>
        <div class="lc-card">
          <h3>Cost per return and cost per RTO</h3>
          <p><strong>Cost per return</strong> is what one return costs you, on top of giving back the money. Add every cost you pay: shipping both ways, checking and repacking, and stock you cannot sell again. Zari &amp; Co's made-up averages are ₹295 per return and ₹210 per RTO.</p>
          <pre><code>Monthly cost = returns × cost per return + RTO × cost per RTO
                     = 528 × ₹295 + 480 × ₹210
                     = ₹1,55,760 + ₹1,00,800 = ₹2,56,560

        What if COD RTO falls from 20% to 15%?
          2,200 COD orders × 15% = 330 RTO (was 440)
          110 fewer RTO × ₹210 = ₹23,100 saved per month</code></pre>
          <p>This "what if" sum helps Heena decide how much effort a fix is worth. The numbers are estimates. Update them with your real courier and marketplace charges.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: catch the AI's wrong base</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Tanvi asks">"We shipped 4,000 orders in August. 480 were RTO and 528 were returned. What is our return rate?"</li>
              <li data-kind="answer" data-label="AI replies">"Your return rate is 528 ÷ 4,000 = 13.2%. That is fairly normal for fashion."</li>
              <li data-kind="warn" data-label="Spot the mistake">The AI divided by shipped orders. But 480 orders were never delivered, so they could not be returned. The claim "fairly normal" is also not based on any data.</li>
              <li data-kind="tool" data-label="Spreadsheet">Tanvi enters shipped, RTO and returns. She uses <code>=B2-C2</code> for delivered and <code>=E2/D2</code> for the return rate.</li>
              <li data-kind="result" data-label="Sheet shows">Delivered: 3,520. Return rate: 15.0%.</li>
              <li data-kind="check" data-label="Tanvi checks">She checks by hand: 3,520 × 15% = 528. It matches. She writes "Return rate = returns ÷ delivered" at the top of the report.</li>
              <li data-kind="answer" data-label="Better prompt">Next time she tells the AI the formula to use, and asks it to show every step.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask the AI to calculate your review and return metrics and to show its working. Then check each result yourself.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a careful e-commerce analyst. Calculate my review and return metrics.

        Use these definitions exactly:
        - Delivered = shipped - RTO
        - RTO rate = RTO / shipped x 100
        - Return rate = returns / delivered x 100
        - Average rating = total stars / number of ratings

        My data for [August]:
        Shipped: COD [2,200], prepaid [1,800]
        RTO: COD [440], prepaid [40]
        Returns: COD [308], prepaid [220]
        Ratings: 5 star [310], 4 star [118], 3 star [62], 2 star [50], 1 star [80]
        Cost per return: [Rs 295]. Cost per RTO: [Rs 210]

        Please give:
        1. A table with RTO rate and return rate for COD, prepaid and total.
        2. Average rating and the share of 1-2 star ratings.
        3. Total monthly cost of returns and RTO.
        4. The saving if COD RTO fell by [5] percentage points.
        5. The Google Sheets formula for each result.
        Show every calculation step. Round to one decimal place.</pre>
            <ul class="ai-try-checks">
              <li>Return rate must use delivered orders. With the sample data: COD 17.5%, prepaid 12.5%, total 15.0%.</li>
              <li>Average rating should be 3.85, and the 1–2 star share 21.0%.</li>
              <li>Total cost should be ₹2,56,560. The saving should be ₹23,100.</li>
              <li>Test two of the formulas in a real sheet before you trust them.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Every rate needs the right base. RTO is a share of shipped orders, and returns are a share of delivered orders. Write your definitions down, and give them to the AI every time.
        </div>
      HTML
      starter_code: nil
    },
    4 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-ecom">E-commerce</div>
          <h1 class="lc-title">Rules on Reviews in India</h1>
        </div>
        <p class="lc-lead">When sales are slow, it is tempting to "help" your ratings. A few paid reviews, or a discount for 5 stars, can look harmless. They are not. Fake and paid reviews mislead buyers. In India, they can break consumer protection law and marketplace policies. In this lesson, you will learn the main rules in plain words: the law, the BIS standard IS 19000:2022 and marketplace policies. You will also learn what Zari &amp; Co can safely do instead. This is general education, not legal advice. Rules change, so check the current text or ask a qualified lawyer before you decide.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 280" role="img" aria-label="Three layers of rules on reviews: the law, the BIS standard IS 19000:2022, and marketplace policies. They lead to Zari and Co's own rules: ask every buyer, publish good and bad reviews, and never pay for or write reviews.">
            <defs><marker id="rr4a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12" fill="#e2e0f0">
              <rect x="15" y="15" width="455" height="72" rx="10" fill="#27274e" stroke="#8b5cf6"/>
              <text x="30" y="38" font-size="13" font-weight="700" fill="#c4b5fd">The law</text>
              <text x="30" y="58">Consumer Protection Act 2019, E-Commerce Rules 2020</text>
              <text x="30" y="76" fill="#9b99b8">No fake reviews, no misleading claims</text>
              <rect x="15" y="102" width="455" height="72" rx="10" fill="#27274e" stroke="#3b82f6"/>
              <text x="30" y="125" font-size="13" font-weight="700" fill="#93c5fd">The standard: IS 19000:2022 (BIS)</text>
              <text x="30" y="145">How reviews are collected, checked and published</text>
              <text x="30" y="163" fill="#9b99b8">No bought reviews. Rewards must be disclosed.</text>
              <rect x="15" y="189" width="455" height="72" rx="10" fill="#27274e" stroke="#f59e0b"/>
              <text x="30" y="212" font-size="13" font-weight="700" fill="#fcd34d">Marketplace policies</text>
              <text x="30" y="232">Amazon, Flipkart and Myntra seller rules</text>
              <text x="30" y="250" fill="#9b99b8">Breaking them can cost you your listings</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#rr4a)">
                <line x1="472" y1="51" x2="500" y2="51"/><line x1="472" y1="138" x2="500" y2="138"/><line x1="472" y1="225" x2="500" y2="225"/>
              </g>
              <rect x="505" y="15" width="240" height="246" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="625" y="40" text-anchor="middle" font-size="13" font-weight="700">Zari &amp; Co's own rules</text>
              <text x="522" y="70" fill="#6ee7b7">✓ Ask every buyer</text>
              <text x="522" y="96" fill="#6ee7b7">✓ Same neutral message</text>
              <text x="522" y="122" fill="#6ee7b7">✓ Publish good and bad</text>
              <text x="522" y="148" fill="#fca5a5">✗ No paid reviews</text>
              <text x="522" y="174" fill="#fca5a5">✗ No staff or family reviews</text>
              <text x="522" y="200" fill="#fca5a5">✗ No AI-written reviews</text>
              <text x="522" y="226" fill="#fca5a5">✗ No reward for 5 stars</text>
              <text x="625" y="251" text-anchor="middle" font-size="10.5" fill="#9b99b8">general education, not legal advice</text>
            </g>
          </svg>
          <figcaption>Three layers of rules point to the same simple practice: real reviews from real buyers, shown honestly.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>What counts as a fake or misleading review?</h3>
          <table class="lc-table">
            <thead><tr><th>Practice</th><th>Why it is a problem</th></tr></thead>
            <tbody>
              <tr><td>Staff, friends or family post 5-star reviews</td><td>They pretend to be normal buyers. Readers are misled.</td></tr>
              <tr><td>Paying an agency or "review group" for reviews</td><td>These reviews are bought. They do not show a real experience.</td></tr>
              <tr><td>"₹100 off your next order for a 5-star review"</td><td>The reward depends on a good rating, so the rating is not honest.</td></tr>
              <tr><td>Asking only happy buyers for reviews</td><td>This is often called "review gating". It hides the unhappy buyers and makes the rating look better than it is.</td></tr>
              <tr><td>Hiding or deleting genuine 1-star reviews on your own store</td><td>Buyers see only the good side. The rating no longer tells the truth.</td></tr>
              <tr><td>Using AI to write "sample reviews" for a new product</td><td>No buyer wrote them. They are fake, however real they sound.</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>The main rules, in plain words</h3>
          <ul class="lc-list">
            <li><strong>Consumer Protection Act, 2019.</strong> It bans unfair trade practices and misleading advertisements. The CCPA (Central Consumer Protection Authority) can investigate, order changes and impose penalties.</li>
            <li><strong>Consumer Protection (E-Commerce) Rules, 2020.</strong> A seller must not pretend to be a consumer and post reviews. A seller must not misrepresent the quality or features of its products.</li>
            <li><strong>BIS standard IS 19000:2022</strong> (Online Consumer Reviews). The BIS (Bureau of Indian Standards) released it in November 2022. It covers any organisation that publishes consumer reviews online. That includes marketplaces and brands that collect reviews on their own website.</li>
            <li><strong>CCPA guidelines on dark patterns, 2023.</strong> A <strong>dark pattern</strong> is a design trick that misleads users. One listed trick is "disguised advertisement", such as an ad made to look like a buyer's own post.</li>
            <li><strong>ASCI code.</strong> ASCI (Advertising Standards Council of India) expects influencers to clearly label paid or gifted posts, for example with "#ad".</li>
          </ul>
          <p>The main ideas in IS 19000:2022 include:</p>
          <ul class="lc-list">
            <li>A named <strong>review administrator</strong> (the person or team in charge of reviews) moderates them fairly.</li>
            <li>Review authors are verified, for example by email or phone.</li>
            <li>Reviews that were bought, or written by people hired for that purpose, must not be published.</li>
            <li>Reviews given in return for a reward, such as a free product, should be clearly disclosed.</li>
            <li>Negative and positive reviews are treated the same way. Genuine negative reviews are not hidden.</li>
          </ul>
          <p>The standard started as a voluntary standard, with a BIS certification scheme. The government said it could make it mandatory if fake reviews continued. The E-Commerce Rules are also amended from time to time. Check the current status of both before you rely on this summary.</p>
        </div>
        <div class="lc-card">
          <h3>Marketplace rules and your own store</h3>
          <p>Amazon, Flipkart and Myntra each have their own review policies. In general, they do not allow sellers to:</p>
          <ul class="lc-list">
            <li>offer any reward, discount or refund in return for a review;</li>
            <li>ask only happy buyers, or ask buyers to change or remove a review;</li>
            <li>review their own products, or a competitor's products.</li>
          </ul>
          <p>Some marketplaces also limit the messages a seller can send to buyers. Some give you their own "request a review" button. Penalties can include removed reviews, hidden listings or a suspended account. Details change often, so read Seller Central help (Amazon), Seller Hub help (Flipkart) and your Myntra seller terms.</p>
          <p>On your own Shopify store, you control the review app. So write a short review policy. For example: "We publish all genuine reviews. We remove only spam, abuse and personal details." Then follow it every time.</p>
          <p><strong>Where AI fits:</strong> AI can check your review request messages and your review policy for risky wording. It must never write reviews for you.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: safe or not?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Zari &amp; Co's team has seven ideas. Sort each one.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="ok" data-label="OK to do"></div>
              <div data-sorter-target="bucket" data-bucket="no" data-label="Do not do"></div>
              <div data-sorter-target="bucket" data-bucket="check" data-label="Check the rules first"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="ok" data-why="Asking every buyer in the same neutral way is honest. It gives a true picture.">Send the same polite review request to every buyer after delivery</li>
              <li data-bucket="no" data-why="A relative posing as a buyer is a fake review. Sellers must not pose as consumers.">Ask Imran's cousin to post a 5-star review of the new lehenga</li>
              <li data-bucket="no" data-why="The reward depends on the rating, so the review is not honest. Marketplaces ban this too.">Offer ₹100 off the next order for a 5-star review</li>
              <li data-bucket="no" data-why="Hiding genuine negative reviews misleads buyers. Treat good and bad reviews the same way.">Hide 1-star reviews on the Shopify store because they "look bad"</li>
              <li data-bucket="ok" data-why="Removing personal data, under a written policy you apply to all reviews, protects the buyer.">Remove a review that shows a buyer's phone number, as your written policy says</li>
              <li data-bucket="no" data-why="No buyer wrote these. They are fake reviews, even if AI wrote them.">Use AI to write 20 reviews for a new saree</li>
              <li data-bucket="check" data-why="Gifting for an honest review can be allowed with a clear label, such as #ad. Check the ASCI code and the platform's rules.">Send a free saree to an influencer for an honest Instagram review</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask the AI to check a review request message for risky wording. Paste your own draft, or use the sample.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an e-commerce compliance reviewer for Indian online sellers. This is not legal advice. Flag risks for me to check with a qualified expert.

        Here is my draft message to buyers after delivery:
        [Hi! Loved your Zari &amp; Co kurta? Give us 5 stars on Amazon and get Rs 100 off your next order! Not happy? Just WhatsApp us instead of writing a review, and we will sort it out. Offer ends tonight!]

        Check it against these principles:
        - Reviews must be honest. No reward linked to a review or a rating.
        - Ask every buyer the same way, happy or unhappy.
        - Do not steer unhappy buyers away from reviewing.
        - No false urgency or misleading claims.
        - Marketplaces such as [Amazon] have their own review and buyer message rules.

        Output:
        1. A table: line | risk | why | safer wording.
        2. A new message under 60 words, in [English and Hindi].
        3. Three questions I should check in [Amazon Seller Central] help.</pre>
            <ul class="ai-try-checks">
              <li>Is the ₹100 reward for 5 stars removed completely?</li>
              <li>Does the new message ask for an honest review, with no stars suggested?</li>
              <li>Can unhappy buyers still get help and still leave a review?</li>
              <li>Is the false "offer ends tonight" gone?</li>
              <li>Check the marketplace's current help pages yourself. The AI may not know recent changes.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> The safe rule is simple. Ask every buyer, the same way, for an honest review. Show good and bad reviews alike. Never pay for, write or filter reviews.
        </div>
      HTML
      starter_code: nil
    },
    5 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-ecom">E-commerce</div>
          <h1 class="lc-title">Analysing Review Text with AI</h1>
        </div>
        <p class="lc-lead">Star ratings tell you <em>how</em> buyers feel. The written words tell you <em>why</em>. In August, Zari &amp; Co received 236 written reviews across four channels. Reading them one by one takes hours, and it is easy to miss patterns. AI can group the reviews into themes in minutes. In this lesson, you will learn to find themes, sentiment and product issues with AI. You will also learn the most important step: checking the AI's answer against the real reviews.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 260" role="img" aria-label="A six-step workflow: export reviews, remove personal data, AI tags themes with quotes, check a sample by hand, count in a sheet, then act and track.">
            <defs><marker id="rr5a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="30" y="20" width="200" height="60" rx="10" fill="#27274e" stroke="#3b82f6"/>
              <text x="130" y="45" font-weight="700">1. Export reviews</text>
              <text x="130" y="65" font-size="11" fill="#9b99b8">from each channel</text>
              <rect x="280" y="20" width="200" height="60" rx="10" fill="#27274e" stroke="#ec4899"/>
              <text x="380" y="45" font-weight="700">2. Remove personal data</text>
              <text x="380" y="65" font-size="11" fill="#9b99b8">names, phones, addresses</text>
              <rect x="530" y="20" width="200" height="60" rx="10" fill="#27274e" stroke="#8b5cf6"/>
              <text x="630" y="45" font-weight="700">3. AI tags themes</text>
              <text x="630" y="65" font-size="11" fill="#9b99b8">with IDs and exact quotes</text>
              <rect x="530" y="150" width="200" height="60" rx="10" fill="#27274e" stroke="#10b981"/>
              <text x="630" y="175" font-weight="700">4. Check a sample</text>
              <text x="630" y="195" font-size="11" fill="#9b99b8">read 20 real reviews</text>
              <rect x="280" y="150" width="200" height="60" rx="10" fill="#27274e" stroke="#22d3ee"/>
              <text x="380" y="175" font-weight="700">5. Count in a sheet</text>
              <text x="380" y="195" font-size="11" fill="#9b99b8">one column per theme</text>
              <rect x="30" y="150" width="200" height="60" rx="10" fill="#27274e" stroke="#f59e0b"/>
              <text x="130" y="175" font-weight="700">6. Act and track</text>
              <text x="130" y="195" font-size="11" fill="#9b99b8">fix, then measure again</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#rr5a)">
                <line x1="232" y1="50" x2="276" y2="50"/>
                <line x1="482" y1="50" x2="526" y2="50"/>
                <line x1="630" y1="82" x2="630" y2="146"/>
                <line x1="528" y1="180" x2="484" y2="180"/>
                <line x1="278" y1="180" x2="234" y2="180"/>
              </g>
              <text x="380" y="245" font-size="12" fill="#fcd34d">Zari &amp; Co, August: size/fit was the top complaint (64 of 236 reviews)</text>
            </g>
          </svg>
          <figcaption>AI does step 3 fast. Steps 2 and 4 are yours, and they are what make the result safe and true.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Themes, sentiment and product issues</h3>
          <ul class="lc-list">
            <li>A <strong>theme</strong> is a topic that many reviews talk about, such as "fit" or "colour".</li>
            <li><strong>Sentiment</strong> is whether the words are positive, negative or mixed.</li>
            <li>A <strong>product issue</strong> is a specific fault you can fix, linked to one SKU (the product's code).</li>
          </ul>
          <table class="lc-table">
            <thead><tr><th>Review (made up)</th><th>Theme</th><th>Sentiment</th><th>Product issue</th></tr></thead>
            <tbody>
              <tr><td>"Fabric is soft but the kurta is tight at the chest."</td><td>Fabric, fit</td><td>Mixed</td><td>ZC-KS-101 runs small</td></tr>
              <tr><td>"Mast quality, will buy again for Diwali."</td><td>Quality</td><td>Positive</td><td>None</td></tr>
              <tr><td>"Mirror pieces fell off before the function."</td><td>Quality</td><td>Negative</td><td>ZC-LH-310 weak mirror work</td></tr>
            </tbody>
          </table>
          <p>One review can have more than one theme. So in the August data, the theme counts add up to more than 236. Notice the second review. "Mast" is Hindi slang for "great". AI tools often read Hinglish well, but not always. That is one reason you check.</p>
        </div>
        <div class="lc-card">
          <h3>Weak prompt vs better prompt</h3>
          <pre><code>Weak:   Summarise these reviews.</code></pre>
          <p>A summary like "customers love the product but some had issues" does not help Imran fix anything. Here is a better prompt:</p>
          <pre><code>Better: You are a review analyst for an ethnic wear brand.
        Read the reviews below. Each has an ID and a star rating.
        1. List the themes. For each theme give: positive or negative,
           the number of reviews, the review IDs, and one exact quote.
        2. Name the top 3 product issues and the SKU each one affects.
        Use only these reviews. Quote exactly. Do not add reasons
        that are not written. If a review is unclear, mark it "unclear".</code></pre>
          <p>Asking for <strong>review IDs</strong> and <strong>exact quotes</strong> is the key. It turns the AI's answer into something you can check.</p>
        </div>
        <div class="lc-card">
          <h3>Worked example: checking the AI on the Wine saree</h3>
          <p>Imran gave the AI eight reviews of the Banarasi-style art silk saree (ZC-SR-204). Here they are:</p>
          <pre><code>S1 (2★) Colour is dull brown-red, the photo showed bright wine.
        S2 (5★) Soft fabric, zari border looks rich. Wore it to a sangeet.
        S3 (1★) Totally different colour from the picture. Returning.
        S4 (4★) Good saree for the price. Blouse piece colour does not match exactly.
        S5 (3★) Colour a bit darker than the photo, but the fall is nice.
        S6 (5★) Lovely drape, got many compliments.
        S7 (2★) Zari threads coming out after one wear.
        S8 (4★) Nice, but the photo looks brighter than the real saree.</code></pre>
          <table class="lc-table">
            <thead><tr><th>Theme (AI's answer)</th><th>AI said</th><th>Imran's check</th></tr></thead>
            <tbody>
              <tr><td>Colour differs from photo (negative)</td><td>5 reviews: S1, S3, S4, S5, S8</td><td><strong>Wrong: 4.</strong> S4 is about the blouse piece matching the saree, not the photo.</td></tr>
              <tr><td>Fabric and drape (positive)</td><td>3 reviews: S2, S5, S6</td><td>Correct</td></tr>
              <tr><td>Zari threads loose (negative)</td><td>1 review: S7</td><td>Correct. Small, but watch it.</td></tr>
            </tbody>
          </table>
          <p>The corrected count is 4 of 8 reviews. It matches the returns data. In August, 41 of the saree's 75 returns (54.7%) were coded "colour different". Two sources now point to one fix. Imran will reshoot the saree in daylight, with no colour filter. He will also add a close-up photo of the blouse piece.</p>
          <p>For all 236 reviews, use a spreadsheet. Give each theme its own column and mark "Y" when a review mentions it. If the size/fit column is D, then <code>=COUNTIF(D2:D237,"Y")</code> counts the reviews in rows 2 to 237. For Zari &amp; Co, it gives 64.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: put the review analysis steps in order</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Tanvi is analysing August's written reviews. Put her steps in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Download or copy the reviews from each channel into one sheet</li>
              <li data-order="2">Delete buyer names, phone numbers and addresses, and give each review an ID</li>
              <li data-order="3">Ask the AI for themes with review IDs and exact quotes</li>
              <li data-order="4">Open 20 of the reviews and check that the AI's themes and quotes are right</li>
              <li data-order="5">Count each theme in the sheet and compare it with the return reasons</li>
              <li data-order="6">Share the top issue with Imran and agree on one fix to test</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask the AI to find themes in a set of reviews. Replace the sample reviews with your own, after you remove personal details.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a review analyst for [an Indian ethnic wear brand].

        Below are reviews of [our Bandhani cotton kurta set, Mustard]. Each has an ID and stars.

        [R1 (2 stars): Fabric is soft but kurta is tight at chest. Size chart is wrong.
        R2 (5 stars): Beautiful bandhani work, colour same as photo. Loved it.
        R3 (1 star): Ordered L, fits like M. Returned.
        R4 (4 stars): Nice fabric, dupatta is thin though.
        R5 (3 stars): Colour is darker mustard than photo. Fit ok.
        R6 (1 star): Pant stitching opened on first wear.
        R7 (5 stars): Mast quality, will buy again for Diwali.
        R8 (2 stars): Runs small, kurta length also short.]

        Tasks:
        1. A table of themes: theme | positive or negative | number of reviews | review IDs | one exact quote.
        2. List the reviews with mixed sentiment.
        3. Name the top product issue, and one change to the listing or product to test.
        Rules: use only these reviews. Quote exactly. Do not invent reasons. Mark anything unsure as "unclear".</pre>
            <ul class="ai-try-checks">
              <li>Open each review ID the AI lists. Does the review really say that?</li>
              <li>Size or fit complaints should appear in R1, R3 and R8 (R5 only says the fit is ok). Is the count right?</li>
              <li>Are R1 and R4 marked as mixed (a good point and a bad point)? R5 can count as mixed too.</li>
              <li>Is every quote word for word from a review?</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Always ask the AI for review IDs and exact quotes. Then check a sample yourself. A theme you have checked, and that matches your return reasons, is strong enough to act on.
        </div>
      HTML
      starter_code: nil
    },
    6 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-ecom">E-commerce</div>
          <h1 class="lc-title">Replying to Reviews</h1>
        </div>
        <p class="lc-lead">A reply to a review is read by far more people than the buyer who wrote it. Future buyers read it to see how you treat people when something goes wrong. In this lesson, you will learn how to thank happy buyers and how to answer unhappy ones. You will also learn what to say in public and what to move to a private chat. AI can draft replies in seconds. But you must check every fact and every promise before you post.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 290" role="img" aria-label="A decision tree for a new review. Happy review: short public thank-you. Real problem: say sorry, explain the fix and move details to a private chat. Abuse or personal data: do not reply, report it. Looks fake: do not argue, check the signals and report with evidence.">
            <defs><marker id="rr6a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12" fill="#e2e0f0" text-anchor="middle">
              <rect x="290" y="12" width="180" height="42" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="380" y="38" font-size="13" font-weight="700">A new review arrives</text>
              <rect x="10" y="98" width="175" height="50" rx="8" fill="#27274e" stroke="#10b981"/>
              <text x="97" y="119" font-weight="700">Happy buyer</text>
              <text x="97" y="137" font-size="11" fill="#9b99b8">usually 4 or 5 stars</text>
              <rect x="197" y="98" width="175" height="50" rx="8" fill="#27274e" stroke="#f59e0b"/>
              <text x="284" y="119" font-weight="700">A real problem</text>
              <text x="284" y="137" font-size="11" fill="#9b99b8">size, colour, damage</text>
              <rect x="384" y="98" width="175" height="50" rx="8" fill="#27274e" stroke="#ec4899"/>
              <text x="471" y="119" font-weight="700">Abuse or private data</text>
              <text x="471" y="137" font-size="11" fill="#9b99b8">insults, phone numbers</text>
              <rect x="571" y="98" width="175" height="50" rx="8" fill="#27274e" stroke="#22d3ee"/>
              <text x="658" y="119" font-weight="700">Looks fake</text>
              <text x="658" y="137" font-size="11" fill="#9b99b8">burst, no product detail</text>
              <rect x="10" y="180" width="175" height="68" rx="8" fill="#1f1f44" stroke="#10b981"/>
              <text x="97" y="201" font-weight="700" fill="#6ee7b7">Short public thanks</text>
              <text x="97" y="219" font-size="11" fill="#9b99b8">name what they liked</text>
              <text x="97" y="236" font-size="11" fill="#9b99b8">no offers, no copy-paste</text>
              <rect x="197" y="180" width="175" height="68" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="284" y="201" font-weight="700" fill="#fcd34d">Sorry, fix, next step</text>
              <text x="284" y="219" font-size="11" fill="#9b99b8">only true fixes</text>
              <text x="284" y="236" font-size="11" fill="#9b99b8">details in private chat</text>
              <rect x="384" y="180" width="175" height="68" rx="8" fill="#1f1f44" stroke="#ec4899"/>
              <text x="471" y="201" font-weight="700" fill="#f9a8d4">Do not reply</text>
              <text x="471" y="219" font-size="11" fill="#9b99b8">report it to the platform</text>
              <text x="471" y="236" font-size="11" fill="#9b99b8">or remove as policy says</text>
              <rect x="571" y="180" width="175" height="68" rx="8" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="658" y="201" font-weight="700" fill="#67e8f9">Do not argue</text>
              <text x="658" y="219" font-size="11" fill="#9b99b8">check the signals</text>
              <text x="658" y="236" font-size="11" fill="#9b99b8">report with evidence</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#rr6a)">
                <line x1="330" y1="56" x2="110" y2="95"/>
                <line x1="360" y1="56" x2="292" y2="95"/>
                <line x1="400" y1="56" x2="465" y2="95"/>
                <line x1="430" y1="56" x2="645" y2="95"/>
                <line x1="97" y1="150" x2="97" y2="176"/>
                <line x1="284" y1="150" x2="284" y2="176"/>
                <line x1="471" y1="150" x2="471" y2="176"/>
                <line x1="658" y1="150" x2="658" y2="176"/>
              </g>
              <text x="380" y="276" font-size="11.5" fill="#9b99b8">Every public reply: no personal data, no promise outside your policy, never ask for a changed review.</text>
            </g>
          </svg>
          <figcaption>Decide the type of review first. The type tells you whether to reply in public, move to a private chat, or report it.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Why replies matter, and where you can reply</h3>
          <p>A good reply does three things. It shows the buyer you listened. It shows future buyers that you fix problems. And it gives the correct facts, for example "this set runs small, so choose one size up".</p>
          <p>Where you can reply depends on the platform:</p>
          <ul class="lc-list">
            <li><strong>Your own store.</strong> Most Shopify review apps let you post a public reply under a review.</li>
            <li><strong>Marketplaces.</strong> Some let sellers reply in public. Others do not, or allow contact only through their own buyer messaging. Rules change, so check Seller Central help (Amazon), Seller Hub help (Flipkart) and your Myntra seller terms.</li>
          </ul>
          <p><strong>Public or private?</strong> The public reply is short and general. Anything about one order goes to a private chat: order IDs, refund status, addresses and phone numbers. Use the platform's own messaging or your store's support email. Never ask a buyer to post their phone number in a reply.</p>
          <p>In August, Zari &amp; Co received 236 written reviews. Tanvi sorted her reply queue by stars:</p>
          <table class="lc-table">
            <thead><tr><th>Written reviews</th><th>Count</th><th>Tanvi's target</th></tr></thead>
            <tbody>
              <tr><td>1–2 stars</td><td>76</td><td>Reply within 2 working days</td></tr>
              <tr><td>3 stars</td><td>30</td><td>Reply within 2 working days</td></tr>
              <tr><td>4–5 stars</td><td>130</td><td>Reply within a week</td></tr>
              <tr><td><strong>Total</strong></td><td><strong>236</strong></td><td></td></tr>
            </tbody>
          </table>
          <p>Writing each reply by hand took her about 6 minutes: 236 × 6 = 1,416 minutes, or 23.6 hours. With an AI draft to edit, it took about 2 minutes: 472 minutes, or about 7.9 hours. These are her own rough timings, not a promise. The saved time goes into checking facts.</p>
        </div>
        <div class="lc-card">
          <h3>What a good reply says</h3>
          <p>For a negative review, use four short parts:</p>
          <ol class="lc-list">
            <li><strong>Thank and say sorry</strong>, and name the real problem. "Sorry the kurta was tight at the chest."</li>
            <li><strong>Be honest about the cause.</strong> Do not blame the buyer or make excuses. If the set runs small, say so.</li>
            <li><strong>Say what you are doing</strong>, but only if it is true. "We are adding garment measurements to the size chart."</li>
            <li><strong>Give a next step</strong> in a private channel. "Please message us through [platform] and we will help with an exchange."</li>
          </ol>
          <p>For a positive review, thank the buyer and mention one thing they liked. Keep it to two sentences.</p>
          <p><strong>Never do these things in a reply:</strong></p>
          <ul class="lc-list">
            <li>Offer a refund, discount or gift in return for changing or removing the review.</li>
            <li>Promise something your return policy does not allow.</li>
            <li>Argue, or say the buyer "must have chosen the wrong size".</li>
            <li>Share order details, names or addresses in public.</li>
            <li>Paste the same reply under every review. Buyers notice.</li>
          </ul>
          <pre><code>Weak:   Write a reply to this review.

        Better: You are Tanvi, customer experience lead at Zari &amp; Co,
        an ethnic wear brand from Gujarat. Tone: warm, simple, honest.
        Draft a public reply to the review below. Under 60 words.
        Use only these facts:
        - ZC-KS-101 kurta set runs small. Garment measurements
          will be added to the size chart this month (not live yet).
        - The buyer can ask for an exchange through the
          marketplace's return option. Do not state any number of days.
        Do not promise anything else. Do not ask the buyer to change
        the review. Do not mention order details.
        Then list every fact in your reply, so I can check each one.

        Review (1 star): "Ordered L, fits like M. Returned."</code></pre>
          <p>The last line of the better prompt matters. A list of facts makes your check fast.</p>
        </div>
        <div class="lc-card">
          <h3>Worked example: three reviews, three replies</h3>
          <table class="lc-table">
            <thead><tr><th>Review (made up)</th><th>Reply Tanvi posted</th><th>What she checked</th></tr></thead>
            <tbody>
              <tr><td>ZC-KS-101, 1★: "Ordered L, fits like M. Returned."</td><td>"Sorry the kurta was tight. You are right: this set runs small. We are adding the real garment measurements to the size chart. For an exchange, please message us through the app. Tanvi, Zari &amp; Co"</td><td>The AI draft said "we <em>have</em> updated the size chart". Imran confirmed the new chart was not live yet. She changed it to "are adding".</td></tr>
              <tr><td>ZC-LH-310, 2★: "Mirror pieces fell off before the function."</td><td>"We are very sorry this happened before your function. Loose mirror work is a fault, and you can return it as a quality issue. We have shared your feedback with our karigar team. Please message us so we can help."</td><td>A quality fault is always returnable under their policy. The phrase "karigar team" (the artisans) is true for Zari &amp; Co.</td></tr>
              <tr><td>ZC-DP-055, 5★: "Soft and light Chanderi dupatta. Will buy again for Diwali."</td><td>"Thank you! We are so happy you liked how soft the dupatta is. Happy Diwali in advance."</td><td>No discount code. Offers in replies can look like a reward for a good review.</td></tr>
            </tbody>
          </table>
          <p>Notice the second reply. It does not say "this never happens". Tanvi knows mirror work on this lehenga has come loose before. A false claim in public can be proved wrong by the next review.</p>
          <p>Before you paste any review into a public AI tool, remove the buyer's name and any contact details. Use a review ID instead.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: public, private or report?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Tanvi has seven new reviews. Sort each one by the right way to respond.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="public" data-label="Short public reply is enough"></div>
              <div data-sorter-target="bucket" data-bucket="private" data-label="Public reply + private follow-up"></div>
              <div data-sorter-target="bucket" data-bucket="report" data-label="Do not reply, report it"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="public" data-why="A happy buyer needs a short, specific thank-you. Nothing else.">5★ "Chanderi dupatta is soft and the colour is exactly like the photo."</li>
              <li data-bucket="public" data-why="Thank them, and admit the photo looks brighter if that is true. No private details are needed.">3★ "Saree colour is darker than the photo, but still wearable."</li>
              <li data-bucket="private" data-why="The buyer needs an exchange before a date. Reply kindly in public, then help in a private chat.">2★ "Wrong size, and my cousin's wedding is on 12 October. Please help."</li>
              <li data-bucket="private" data-why="Refund details belong to one order. Say sorry in public, then check the order in private.">1★ "Refund not received even after 10 days."</li>
              <li data-bucket="report" data-why="The review contains a staff member's phone number and insults. Report it. Do not reply to it.">1★ A review with abusive words and Imran's mobile number</li>
              <li data-bucket="report" data-why="The review is about a different brand's product. Report it as off-topic to the platform.">1★ "Shoes are bad quality" on the saree listing</li>
              <li data-bucket="private" data-why="A damaged parcel needs photos and an order check. Say sorry in public, then solve it in private.">2★ "Box was wet and the dupatta has a stain."</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask the AI to draft replies to a small batch of reviews, using only your real policy facts. Then check each reply before you post it.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are the customer experience lead at [Zari &amp; Co, an ethnic wear brand from Gujarat]. Tone: [warm, simple, honest]. Sign off as [Tanvi, Zari &amp; Co].

        Draft a public reply for each review below. Each reply: under 60 words, and different in wording.

        Use ONLY these facts:
        [- Kurta set ZC-KS-101 runs small. Garment measurements will be added to the size chart this month.
        - On our own store, size exchange is free within 7 days of delivery. On marketplaces, the marketplace's return rules apply.
        - Quality faults (loose mirrors, torn seams) can always be returned.
        - Refunds are sent within 7 working days after the item passes our check.]

        Reviews:
        [V1 (1 star): Ordered L, fits like M. Returned.
        V2 (2 stars): Mirror pieces fell off before the function.
        V3 (5 stars): Mast quality, will buy again for Diwali.
        V4 (1 star): Refund not received after 10 days.]

        Rules: no refund or discount in return for a changed review. No order details or contact details in public. No promise outside the facts. Do not blame the buyer.

        Output a table: review ID | reply | public only or needs private follow-up | the facts used.</pre>
            <ul class="ai-try-checks">
              <li>Does any reply say a fix is done when it is only planned?</li>
              <li>Does any reply promise more than your policy allows?</li>
              <li>Is V4 moved to a private chat, with no order details in public?</li>
              <li>Is there any offer linked to changing or removing a review? Delete it.</li>
              <li>Read each reply aloud. Does it sound like a real person, not a template?</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A reply is a public promise. Let AI draft it, but post only what is true: a real apology, a fix that is really happening, and a next step your policy allows.
        </div>
      HTML
      starter_code: nil
    },
    7 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-ecom">E-commerce</div>
          <h1 class="lc-title">Asking for Reviews Honestly</h1>
        </div>
        <p class="lc-lead">Most happy buyers never write a review. They are not asked, or they forget. So the honest way to get more reviews is simple: ask every buyer, at the right time, in the same neutral words. In this lesson, you will learn when to ask, how to word the message, and what you must never offer. You will also measure your review rate, so you know if the new message works. AI can write the messages in English, Hindi or Gujarati. You check that they stay honest.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 280" role="img" aria-label="A timeline for review requests on Zari and Co's own store. Day 0 delivered, day 2 help message with no review ask, day 7 the same review request to every buyer, day 14 one reminder only if no review, then stop. The request goes to every delivered buyer. On Shopify in August, that was 1,020 buyers, including 150 who returned. Never reward a rating, ask only happy buyers, or ask to edit a review.">
            <g font-family="inherit" font-size="12" fill="#e2e0f0" text-anchor="middle">
              <rect x="10" y="20" width="136" height="56" rx="8" fill="#27274e" stroke="#3b82f6"/>
              <text x="78" y="43" font-size="13" font-weight="700">Delivered</text>
              <text x="78" y="62" font-size="11" fill="#9b99b8">courier confirms</text>
              <rect x="160" y="20" width="136" height="56" rx="8" fill="#27274e" stroke="#22d3ee"/>
              <text x="228" y="43" font-size="13" font-weight="700">Help message</text>
              <text x="228" y="62" font-size="11" fill="#9b99b8">care tips only</text>
              <rect x="310" y="20" width="136" height="56" rx="8" fill="#27274e" stroke="#10b981"/>
              <text x="378" y="43" font-size="13" font-weight="700">Review request</text>
              <text x="378" y="62" font-size="11" fill="#9b99b8">same text for all</text>
              <rect x="460" y="20" width="136" height="56" rx="8" fill="#27274e" stroke="#f59e0b"/>
              <text x="528" y="43" font-size="13" font-weight="700">One reminder</text>
              <text x="528" y="62" font-size="11" fill="#9b99b8">only if no review yet</text>
              <rect x="610" y="20" width="136" height="56" rx="8" fill="#27274e" stroke="#9b99b8"/>
              <text x="678" y="43" font-size="13" font-weight="700">Stop</text>
              <text x="678" y="62" font-size="11" fill="#9b99b8">no more messages</text>
              <line x1="40" y1="108" x2="720" y2="108" stroke="#4b4a78" stroke-width="2"/>
              <g stroke="#9b99b8" stroke-width="1.5">
                <line x1="78" y1="78" x2="78" y2="102"/><line x1="228" y1="78" x2="228" y2="102"/><line x1="378" y1="78" x2="378" y2="102"/><line x1="528" y1="78" x2="528" y2="102"/><line x1="678" y1="78" x2="678" y2="102"/>
              </g>
              <circle cx="78" cy="108" r="6" fill="#3b82f6"/><circle cx="228" cy="108" r="6" fill="#22d3ee"/><circle cx="378" cy="108" r="6" fill="#10b981"/><circle cx="528" cy="108" r="6" fill="#f59e0b"/><circle cx="678" cy="108" r="6" fill="#9b99b8"/>
              <text x="78" y="133" fill="#9b99b8">Day 0</text><text x="228" y="133" fill="#9b99b8">Day 2</text><text x="378" y="133" fill="#9b99b8">Day 7</text><text x="528" y="133" fill="#9b99b8">Day 14</text><text x="678" y="133" fill="#9b99b8">After day 14</text>
              <rect x="10" y="152" width="365" height="86" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="192" y="176" font-size="13" font-weight="700" fill="#6ee7b7">Who gets the request</text>
              <text x="192" y="199">Every delivered buyer. Shopify, August:</text>
              <text x="192" y="219">1,020 delivered, including 150 who returned</text>
              <rect x="385" y="152" width="365" height="86" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="567" y="176" font-size="13" font-weight="700" fill="#f9a8d4">Never do this</text>
              <text x="567" y="199">reward a rating or ask only happy buyers</text>
              <text x="567" y="219">ask a buyer to edit or remove a review</text>
              <text x="380" y="265" font-size="11.5" fill="#9b99b8">Marketplace orders: use the marketplace's own review request tool, as its rules allow.</text>
            </g>
          </svg>
          <figcaption>Zari &amp; Co's plan for its own Shopify store. One request and at most one reminder, sent the same way to every delivered buyer.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The rules of honest asking</h3>
          <ul class="lc-list">
            <li><strong>Ask every buyer the same way.</strong> Do not choose only buyers you think are happy. Choosing only happy buyers is called <strong>review gating</strong>. It makes your rating look better than the truth.</li>
            <li><strong>No incentives for positive reviews.</strong> An <strong>incentive</strong> is a reward, such as a discount, cashback, gift or free product. Never link a reward to a good rating. Marketplaces generally ban rewards for any review. Zari &amp; Co decided to offer no rewards at all.</li>
            <li><strong>Neutral words.</strong> Ask for an "honest review". Do not suggest a star rating, such as "rate us 5 stars".</li>
            <li><strong>No pressure.</strong> Do not send many reminders. Never ask a buyer to change or remove a review.</li>
            <li><strong>Consent.</strong> Send WhatsApp or email messages only to buyers who agreed to get them. Give a simple way to stop the messages. On WhatsApp, a message you start usually needs a message template that WhatsApp has approved. Check the current WhatsApp Business help pages.</li>
          </ul>
          <p>Imran had one idea: send the request only to buyers who kept their order. Across all channels in August, that is 2,992 of the 3,520 delivered buyers. Tanvi said no. It would leave out the 528 buyers who returned something, and most of them were unhappy. Leaving them out is review gating. So every delivered buyer gets the same request.</p>
          <p>This is general education, not legal advice. Marketplaces limit what sellers may send to buyers. Some offer their own "request a review" option. Check Seller Central help (Amazon), Seller Hub help (Flipkart) and your Myntra seller terms before you message any marketplace buyer.</p>
        </div>
        <div class="lc-card">
          <h3>When to ask, and how to measure it</h3>
          <p>Ask after the buyer has had time to use the product. Too early, and they have not tried it. Too late, and they have forgotten.</p>
          <table class="lc-table">
            <thead><tr><th>Product</th><th>When Zari &amp; Co asks</th><th>Why</th></tr></thead>
            <tbody>
              <tr><td>Chanderi dupatta (ZC-DP-055)</td><td>7 days after delivery</td><td>Enough time to wear it once</td></tr>
              <tr><td>Kurta set (ZC-KS-101)</td><td>7 days after delivery</td><td>Enough time to try it on and wash it</td></tr>
              <tr><td>Lehenga (ZC-LH-310)</td><td>After the event date, if the buyer shared it; otherwise 14 days</td><td>Many buyers wear it only at the function</td></tr>
            </tbody>
          </table>
          <p>Measure your <strong>review rate</strong>: the share of delivered orders that got a rating. Use delivered orders as the base. Buyers of RTO orders never received the product, so they cannot review it.</p>
          <pre><code>Rating rate  = ratings ÷ delivered orders = 620 ÷ 3,520 = 17.6%
        Written rate = written reviews ÷ delivered = 236 ÷ 3,520 = 6.7%
        Wrong base:    620 ÷ 4,000 shipped = 15.5% (do not use)</code></pre>
          <p>In the metrics sheet, D2 holds delivered (3,520) and I2:I6 hold the rating counts. So <code>=SUM(I2:I6)/D2</code> gives 17.6%. Track this rate every month. Also track the share of 1–2 star ratings. If honest asking brings in more reviews, this share may go up or down. Both results are fine. The goal is a true picture, not a higher score.</p>
        </div>
        <div class="lc-card">
          <h3>Weak message vs better message</h3>
          <p>This was printed on Zari &amp; Co's old packing insert card:</p>
          <pre><code>Loved it? Rate us 5 stars! ★★★★★
        Not happy? WhatsApp us first, before you write a review.</code></pre>
          <p>It suggests 5 stars. It also steers unhappy buyers away from reviewing. Here is the new message Tanvi approved:</p>
          <pre><code>Hi [first name], your Zari &amp; Co order was delivered last week.
        How did it fit, and does the colour match the photo?
        Please share an honest review here: [review link]
        Good or bad, every review helps other buyers and helps us improve.
        Need help with size or a return? Reply here any time.
        (Reply STOP to get no more messages.)</code></pre>
          <p>The help line is fine because it comes with the review link, not instead of it. The question about fit and colour is useful too. Those are the two biggest return reasons, so the reviews tell future buyers what they need.</p>
          <p>AI can write this message in Hindi or Gujarati. Ask someone who reads that language well to check it. A translation can add pressure or change the meaning by mistake.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: put the review request steps in order</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put Zari &amp; Co's review request steps for its own store in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">The courier marks the order as delivered</li>
              <li data-order="2">Wait 7 days, so the buyer can try the product</li>
              <li data-order="3">Check the buyer agreed to get WhatsApp or email messages</li>
              <li data-order="4">Send the same neutral request, with a review link, to every delivered buyer</li>
              <li data-order="5">After 7 more days, send one reminder only to buyers who have not reviewed</li>
              <li data-order="6">At month end, check the rating rate and the share of 1–2 star ratings</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask the AI to write honest review request messages for your store, and to check them against the rules.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You write customer messages for [Zari &amp; Co, an ethnic wear brand selling on its own Shopify store]. Brand voice: [warm, simple, polite].

        Write review request messages for buyers of [a Bandhani cotton kurta set]. Send time: [7 days after delivery]. They go to EVERY delivered buyer, including buyers who returned the item.

        Write:
        1. A WhatsApp message under 50 words, in [English] and in [Hindi].
        2. An email: subject line plus under 80 words.
        3. A packing insert card: under 25 words, with space for a QR code.
        4. One reminder message under 30 words, for buyers who have not reviewed after 7 more days.

        Rules:
        - Ask for an honest review. Never suggest a star rating.
        - No discount, cashback, gift or contest linked to a review.
        - Do not ask unhappy buyers to contact us instead of reviewing. Help can be offered next to the review link.
        - Ask one question that helps other buyers, such as fit or colour.
        - Include an opt-out line for WhatsApp and email.

        Then check your own messages against each rule. Show a table: message | rule | passes? | fix.</pre>
            <ul class="ai-try-checks">
              <li>Is there any reward, or any hint at 5 stars? Remove it.</li>
              <li>Can an unhappy buyer still reach the review link easily?</li>
              <li>Is there an opt-out line in the WhatsApp message and the email?</li>
              <li>Ask a fluent reader to check the Hindi version for meaning and tone.</li>
              <li>For marketplace orders, check the marketplace's own messaging rules first.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> The honest way to get more reviews is to ask every delivered buyer, at the right time, in neutral words, with no reward. Measure the rating rate, not only the average stars.
        </div>
      HTML
      starter_code: nil
    },
    8 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-ecom">E-commerce</div>
          <h1 class="lc-title">Spotting Fake or Suspicious Reviews</h1>
        </div>
        <p class="lc-lead">Sometimes a listing suddenly gets a group of 1-star reviews that do not look real. Sometimes someone offers to sell you "guaranteed 5-star reviews". In this lesson, you will learn the signals that make a review suspicious, and how AI can help you list them. You will learn how to report suspicious reviews to the marketplace with clear evidence. You will also learn the one rule that has no exceptions: you never write, buy or post fake reviews yourself. Not even to fight back.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 290" role="img" aria-label="A decision flow. A suspicious review is checked against five signals: a burst in a short time, not a verified purchase, the same words as other reviews, no product detail, and naming a rival brand. Strong signals: report with evidence. A real product problem: treat it as genuine, reply and fix. Unsure: note it and watch. Below, a list of things never to do: no fake reviews, no attacks on rivals, no paid removals.">
            <defs><marker id="rr8a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12" fill="#e2e0f0">
              <rect x="10" y="60" width="170" height="60" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="95" y="86" text-anchor="middle" font-size="13" font-weight="700">Suspicious review</text>
              <text x="95" y="105" text-anchor="middle" font-size="11" fill="#9b99b8">e.g. burst on ZC-LH-310</text>
              <rect x="210" y="12" width="300" height="156" rx="10" fill="#27274e" stroke="#3b82f6"/>
              <text x="360" y="36" text-anchor="middle" font-size="13" font-weight="700" fill="#93c5fd">Check five signals</text>
              <text x="228" y="62">1. Many reviews in a short burst</text>
              <text x="228" y="84">2. Not a verified purchase</text>
              <text x="228" y="106">3. Same words as other reviews</text>
              <text x="228" y="128">4. No detail about the product</text>
              <text x="228" y="150">5. Names or pushes a rival brand</text>
              <rect x="545" y="12" width="205" height="46" rx="8" fill="#27274e" stroke="#ec4899"/>
              <text x="647" y="31" text-anchor="middle" font-weight="700">Strong signals</text>
              <text x="647" y="48" text-anchor="middle" font-size="11" fill="#9b99b8">report with evidence</text>
              <rect x="545" y="67" width="205" height="46" rx="8" fill="#27274e" stroke="#10b981"/>
              <text x="647" y="86" text-anchor="middle" font-weight="700">Real product problem</text>
              <text x="647" y="103" text-anchor="middle" font-size="11" fill="#9b99b8">treat as genuine: reply, fix</text>
              <rect x="545" y="122" width="205" height="46" rx="8" fill="#27274e" stroke="#f59e0b"/>
              <text x="647" y="141" text-anchor="middle" font-weight="700">Unsure</text>
              <text x="647" y="158" text-anchor="middle" font-size="11" fill="#9b99b8">note it, watch for more</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#rr8a)">
                <line x1="182" y1="90" x2="206" y2="90"/>
                <line x1="512" y1="70" x2="541" y2="37"/>
                <line x1="512" y1="90" x2="541" y2="90"/>
                <line x1="512" y1="110" x2="541" y2="143"/>
              </g>
              <rect x="10" y="190" width="740" height="84" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="380" y="214" text-anchor="middle" font-size="13" font-weight="700" fill="#f9a8d4">Never, whatever the pressure</text>
              <g text-anchor="middle">
                <text x="130" y="241" font-weight="700">No fake reviews</text>
                <text x="130" y="259" font-size="11" fill="#9b99b8">not even to fight back</text>
                <text x="380" y="241" font-weight="700">No attacks on rivals</text>
                <text x="380" y="259" font-size="11" fill="#9b99b8">no fake 1-star posts</text>
                <text x="630" y="241" font-weight="700">No paid removals</text>
                <text x="630" y="259" font-size="11" fill="#9b99b8">no "review packages"</text>
              </g>
            </g>
          </svg>
          <figcaption>Signals lead to one of three actions. The marketplace makes the final decision, because it can see account data that you cannot.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Signals that a review may not be genuine</h3>
          <p>A <strong>signal</strong> is a clue, not proof. One signal alone means little. Several signals together are worth reporting.</p>
          <table class="lc-table">
            <thead><tr><th>Signal</th><th>What it looks like</th><th>Be careful</th></tr></thead>
            <tbody>
              <tr><td>Burst</td><td>Many reviews in a few hours, after weeks of quiet</td><td>A festival sale can also bring many real reviews</td></tr>
              <tr><td>Not verified</td><td>No "verified purchase" label (the platform confirms the reviewer bought it)</td><td>Some platforms allow reviews from non-buyers</td></tr>
              <tr><td>Copied wording</td><td>"Worst", "waste of money", "dont buy" in review after review</td><td>Real angry buyers also use short, strong words</td></tr>
              <tr><td>No product detail</td><td>Nothing about fit, fabric, colour or delivery</td><td>Some genuine reviews are just one line</td></tr>
              <tr><td>Rival brand</td><td>"Buy from another brand instead"</td><td>A buyer may honestly compare two brands</td></tr>
              <tr><td>Off-topic</td><td>About a different product, or about politics</td><td>Usually easy to report as off-topic</td></tr>
            </tbody>
          </table>
          <p>The same signals apply to suspicious 5-star reviews on any listing, including your own. If you see 5-star reviews that look bought on your own listing, report them too. They can put your account at risk.</p>
        </div>
        <div class="lc-card">
          <h3>Worked example: a burst on the lehenga listing</h3>
          <p>On 3 and 4 September, Zari &amp; Co's Mirror-work lehenga choli (ZC-LH-310) got eight new reviews on one marketplace. Tanvi copied them into a sheet. She kept no reviewer names.</p>
          <pre><code>ID  Date, time     Stars  Verified  Text
        V1  3 Sep 10:12   1      No        Worst lehenga ever. Dont buy. Waste of money.
        V2  3 Sep 10:31   1      No        Waste of money!! Worst quality. Dont buy.
        V3  3 Sep 10:47   1      No        Worst lehenga. Kesar Threads is much better, buy from them.
        V4  3 Sep 11:02   1      No        Dont buy, fake seller, waste of money
        V5  3 Sep 11:20   1      No        Worst product ever dont buy
        V6  3 Sep 23:50   1      Yes       Two mirror pieces came off at the hem after one wear.
                                          Mirror stitching is weak.
        V7  4 Sep 12:30   5      Yes       Colour is exactly rani pink. Fits well after a small alteration.
        V8  4 Sep 16:02   2      Yes       Blouse fabric has very little margin. My tailor could not open it up.</code></pre>
          <p>(Kesar Threads is a made-up rival brand.) Her first prompt was a leading question:</p>
          <pre><code>Weak:   Which of these reviews are fake?</code></pre>
          <p>A leading question pushes the AI to name some reviews as fake, even without enough evidence. Her better prompt asked for signals, not a verdict:</p>
          <pre><code>Better: For each review, list which of these signals it shows:
        burst, not verified, copied wording, no product detail,
        rival brand, off-topic. Quote the words that show each signal.
        Do NOT decide if a review is fake. Group the reviews as
        "strong signals", "some signals" or "no signals".
        Point out any review that describes a real product problem.</code></pre>
          <table class="lc-table">
            <thead><tr><th>Reviews</th><th>Signals</th><th>Tanvi's decision</th></tr></thead>
            <tbody>
              <tr><td>V1 to V5</td><td>Five 1-star reviews in 68 minutes. None verified. Same words. No product detail. V3 pushes a rival brand.</td><td>Report all five to the marketplace</td></tr>
              <tr><td>V6</td><td>Verified. A specific fault. Other buyers reported loose mirror work before.</td><td>Genuine. Reply, and send it to the karigar team.</td></tr>
              <tr><td>V7, V8</td><td>Verified. Specific details about colour, fit and fabric.</td><td>Genuine. Reply to both. Add the blouse margin detail to the listing.</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>How to report, and what never to do</h3>
          <p>Marketplaces usually give you a way to report a review. It may be a "report" link on the review, or a case through seller support. Check Seller Central help (Amazon), Seller Hub help (Flipkart) or your Myntra seller support for the current steps.</p>
          <ul class="lc-list">
            <li><strong>Give facts.</strong> List the review IDs or dates, the times and the signals. Attach screenshots if the platform allows it.</li>
            <li><strong>Do not accuse anyone.</strong> Write "these reviews show signs of coordinated posting". Do not write "Kesar Threads posted these". You do not know that.</li>
            <li><strong>Do not reply in anger</strong> under the suspicious reviews. A calm, short reply is fine if the platform allows replies.</li>
            <li><strong>Keep a log.</strong> Note the date you reported, the case number and the result.</li>
          </ul>
          <p><strong>Never do these things</strong>, even if a rival attacks you:</p>
          <ul class="lc-list">
            <li>Write reviews yourself, or ask staff, friends or family to post them.</li>
            <li>Use AI to write reviews, "sample reviews" or "starter reviews".</li>
            <li>Post fake negative reviews on a rival's products.</li>
            <li>Buy a "review package", or pay anyone to add or remove reviews.</li>
            <li>Join a "review exchange" group, where sellers review each other.</li>
          </ul>
          <p>Fake reviews mislead buyers. They can break Indian consumer protection rules and every major marketplace policy. This is general education, not legal advice. If a rival is harming your business, speak to a qualified lawyer.</p>
          <p>On your own Shopify store, you are the review administrator. Remove reviews only under your written policy, such as for spam or personal data. Never remove a genuine negative review.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: check the lehenga reviews with Tanvi</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Tanvi asks">She pastes V1 to V8 with dates, stars and the verified label. She asks for signals per review, with quotes, and no verdict.</li>
              <li data-kind="answer" data-label="AI replies">"Strong signals: V1 to V5 and V6. They are all 1-star reviews posted on the same day. Some signals: V8. No signals: V7."</li>
              <li data-kind="warn" data-label="Spot the mistake">V6 was posted 12 hours after the burst. It is verified and describes a specific fault. The AI grouped it by stars and date only.</li>
              <li data-kind="check" data-label="Tanvi checks">She finds earlier reviews about loose mirror work on this lehenga. V6 is a real problem, so she treats it as genuine.</li>
              <li data-kind="tool" data-label="Seller dashboard">She opens the marketplace's report option. She reports V1 to V5 with the times, the signals and a screenshot.</li>
              <li data-kind="result" data-label="Dashboard shows">A case number and a message that the team will review the report.</li>
              <li data-kind="check" data-label="Follow-up">She writes the case number in her log. She sends V6 to Imran and the karigar team to check the mirror stitching.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask the AI to list the signals in a set of reviews and to draft a factual report. Use your own reviews without reviewer names, or the sample.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You help an Indian online seller check reviews on a marketplace listing for [a mirror-work lehenga]. You cannot see account data, so you must not decide that any review is fake.

        Reviews (ID | date and time | stars | verified purchase | text):
        [V1 | 3 Sep 10:12 | 1 | No | Worst lehenga ever. Dont buy. Waste of money.
        V2 | 3 Sep 10:31 | 1 | No | Waste of money!! Worst quality. Dont buy.
        V3 | 3 Sep 10:47 | 1 | No | Worst lehenga. Kesar Threads is much better, buy from them.
        V4 | 3 Sep 23:50 | 1 | Yes | Two mirror pieces came off at the hem after one wear.
        V5 | 4 Sep 12:30 | 5 | Yes | Colour is exactly rani pink. Fits well after alteration.]

        Tasks:
        1. A table: ID | signals (burst, not verified, copied wording, no product detail, rival brand, off-topic) | quoted words | group: strong signals, some signals or no signals.
        2. List any review that describes a real product problem. These must be treated as genuine.
        3. Draft a short, factual report to the marketplace for the "strong signals" reviews. No accusations against any person or brand.
        4. Two sentences on what the seller must never do in response.</pre>
            <ul class="ai-try-checks">
              <li>Is V4 treated as a genuine product problem, even though it is 1 star?</li>
              <li>Does every signal come with words or data that really appear in the reviews?</li>
              <li>Does the report avoid naming or blaming Kesar Threads?</li>
              <li>Does the AI avoid calling any review "definitely fake"?</li>
              <li>Check the marketplace's current help page for how to report a review.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Ask AI for signals, not verdicts. Report suspicious reviews with facts, and let the marketplace decide. Treat every specific, verified complaint as real, and never answer fake reviews with fake reviews.
        </div>
      HTML
      starter_code: nil
    },
    9 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-ecom">E-commerce</div>
          <h1 class="lc-title">Why Products Get Returned</h1>
        </div>
        <p class="lc-lead">Every return has a reason. But the reason is often hidden in a messy comment, such as "not good" or "fit issue, colour also dull". To fix returns, you need to count the reasons correctly. In this lesson, you will learn the main reasons products come back. You will build a simple <strong>codebook</strong>: a fixed list of reason codes, each with a clear meaning. Then you will use AI to code hundreds of return comments, and check its work in a spreadsheet.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 305" role="img" aria-label="A bar chart of Zari and Co's 528 made-up August returns by main reason. Size 211, 40.0 percent. Colour 95, 18.0 percent. Quality 74, 14.0 percent. Changed mind 63, 11.9 percent. Not as described 43, 8.1 percent. Damaged 42, 8.0 percent. Size, colour and not as described together are 349 returns, 66.1 percent, and can be fixed in the listing.">
            <g font-family="inherit" font-size="12" fill="#e2e0f0">
              <text x="15" y="24" font-size="13" font-weight="700">Zari &amp; Co, August: 528 returns by main reason (made up)</text>
              <text x="15" y="48" font-size="11" fill="#9b99b8">Reason code</text>
              <text x="185" y="48" font-size="11" fill="#9b99b8">Returns</text>
              <text x="615" y="48" font-size="11" fill="#9b99b8">Who can fix it</text>
              <text x="15" y="78">SIZE</text>
              <rect x="185" y="62" width="330" height="22" rx="4" fill="#8b5cf6"/>
              <text x="523" y="78">211 (40.0%)</text>
              <text x="615" y="78" fill="#c4b5fd">Listing (Imran)</text>
              <text x="15" y="114">COLOUR</text>
              <rect x="185" y="98" width="149" height="22" rx="4" fill="#8b5cf6"/>
              <text x="342" y="114">95 (18.0%)</text>
              <text x="615" y="114" fill="#c4b5fd">Photos (Imran)</text>
              <text x="15" y="150">QUALITY</text>
              <rect x="185" y="134" width="116" height="22" rx="4" fill="#f59e0b"/>
              <text x="309" y="150">74 (14.0%)</text>
              <text x="615" y="150" fill="#fcd34d">Supplier, QC</text>
              <text x="15" y="186">CHANGED_MIND</text>
              <rect x="185" y="170" width="99" height="22" rx="4" fill="#6b6a8e"/>
              <text x="292" y="186">63 (11.9%)</text>
              <text x="615" y="186" fill="#9b99b8">Hard to control</text>
              <text x="15" y="222">NOT_AS_DESCRIBED</text>
              <rect x="185" y="206" width="67" height="22" rx="4" fill="#8b5cf6"/>
              <text x="260" y="222">43 (8.1%)</text>
              <text x="615" y="222" fill="#c4b5fd">Listing (Imran)</text>
              <text x="15" y="258">DAMAGED</text>
              <rect x="185" y="242" width="66" height="22" rx="4" fill="#22d3ee"/>
              <text x="259" y="258">42 (8.0%)</text>
              <text x="615" y="258" fill="#67e8f9">Packing, courier</text>
              <text x="380" y="292" text-anchor="middle" font-size="12" fill="#fcd34d">SIZE + COLOUR + NOT_AS_DESCRIBED = 349 of 528 (66.1%): fixable in the listing</text>
            </g>
          </svg>
          <figcaption>Two in three of Zari &amp; Co's returns have a cause the listing can fix. Clean reason codes make this visible.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The main reasons products come back</h3>
          <table class="lc-table">
            <thead><tr><th>Reason</th><th>What buyers say</th><th>Usual root cause</th></tr></thead>
            <tbody>
              <tr><td>Size or fit</td><td>"Tight at chest", "length too short"</td><td>Size chart shows body sizes, not garment sizes</td></tr>
              <tr><td>Colour different from photo</td><td>"Photo was brighter"</td><td>Photos edited or shot under warm lights</td></tr>
              <tr><td>Quality</td><td>"Stitching opened", "fabric feels cheap"</td><td>Weak supplier checks or poor materials</td></tr>
              <tr><td>Not as described</td><td>"Listing said pure cotton"</td><td>A wrong fact in the title, details or size table</td></tr>
              <tr><td>Damaged in transit</td><td>"Box crushed, dupatta stained"</td><td>Weak packing, or rough handling by the courier</td></tr>
              <tr><td>Changed mind</td><td>"Event cancelled", "found it cheaper"</td><td>The buyer's own situation</td></tr>
            </tbody>
          </table>
          <p>Colour is really a type of "not as described". Zari &amp; Co counts it on its own because it is so common for clothes.</p>
          <p>Be careful with the reason a buyer picks from a drop-down list. It is not always the real reason. For example, a buyer may choose "defective" when the comment says "too tight". So code each return from the written comment, and from your warehouse check notes when you have them.</p>
        </div>
        <div class="lc-card">
          <h3>Build a codebook first</h3>
          <p>A codebook stops two people, or an AI, from coding the same comment in different ways. Here is Zari &amp; Co's codebook:</p>
          <table class="lc-table">
            <thead><tr><th>Code</th><th>Use it when</th><th>Do not use it when</th></tr></thead>
            <tbody>
              <tr><td>SIZE</td><td>The item does not fit the buyer: too tight, loose, short or long</td><td>A measurement is different from the listing. Use NOT_AS_DESCRIBED.</td></tr>
              <tr><td>COLOUR</td><td>The colour looks different from the photo</td><td>The buyer received a different colour variant. Use UNCLEAR and check the order.</td></tr>
              <tr><td>QUALITY</td><td>Stitching, fabric, print or embellishment is poor or failed</td><td>The item was damaged in the parcel. Use DAMAGED.</td></tr>
              <tr><td>NOT_AS_DESCRIBED</td><td>A fact in the listing is wrong: fabric, measurement, pieces included</td><td>Only the colour differs. Use COLOUR.</td></tr>
              <tr><td>DAMAGED</td><td>The item arrived torn, stained, wet or crushed</td><td>The fault appeared after wearing it. Use QUALITY.</td></tr>
              <tr><td>CHANGED_MIND</td><td>The buyer no longer wants it, and nothing is wrong</td><td>The comment also names a fault. Code the fault.</td></tr>
              <tr><td>UNCLEAR</td><td>You cannot tell the reason, such as "not good"</td><td>Never guess. A person checks these.</td></tr>
            </tbody>
          </table>
          <p><strong>Rules:</strong> give each return one main code. Add a second code if the comment names a second reason. If a comment names two reasons, the main code is the first one in this order: DAMAGED, NOT_AS_DESCRIBED, QUALITY, SIZE, COLOUR, CHANGED_MIND. So "length too short and colour lighter" is SIZE, with COLOUR as the second code.</p>
        </div>
        <div class="lc-card">
          <h3>Worked example: coding 528 August returns</h3>
          <p>Tanvi exported all 528 return comments into one sheet. She removed buyer names and phone numbers first. The columns were: A return ID, B date, C comment, D main code, E second code, F SKU. The returns sit in rows 2 to 529.</p>
          <ol class="lc-list">
            <li>She gave the AI the codebook and the comments in batches of 100. She asked for the code and the exact words that show it.</li>
            <li>The AI marked 37 comments as UNCLEAR (7.0%). Her team checked warehouse notes and photos, and gave each one a code.</li>
            <li>She checked 50 codes at random. She agreed with 46 of them (92%). In 3 of the other 4, a measurement differed from the listing. The AI had used SIZE instead of NOT_AS_DESCRIBED. She fixed those codes and made that rule clearer in the codebook.</li>
          </ol>
          <p>Then she counted the codes with spreadsheet formulas:</p>
          <table class="lc-table">
            <thead><tr><th>What</th><th>Formula</th><th>Result</th></tr></thead>
            <tbody>
              <tr><td>SIZE returns</td><td><code>=COUNTIF(D2:D529,"SIZE")</code></td><td>211</td></tr>
              <tr><td>Share of all returns</td><td><code>=COUNTIF(D2:D529,"SIZE")/COUNTA(D2:D529)</code></td><td>40.0%</td></tr>
              <tr><td>SIZE returns for the kurta set</td><td><code>=COUNTIFS(F2:F529,"ZC-KS-101",D2:D529,"SIZE")</code></td><td>112</td></tr>
            </tbody>
          </table>
          <table class="lc-table">
            <thead><tr><th>Main code</th><th>Returns</th><th>Share</th><th>Cost at ₹295 each</th></tr></thead>
            <tbody>
              <tr><td>SIZE</td><td>211</td><td>40.0%</td><td>₹62,245</td></tr>
              <tr><td>COLOUR</td><td>95</td><td>18.0%</td><td>₹28,025</td></tr>
              <tr><td>QUALITY</td><td>74</td><td>14.0%</td><td>₹21,830</td></tr>
              <tr><td>CHANGED_MIND</td><td>63</td><td>11.9%</td><td>₹18,585</td></tr>
              <tr><td>NOT_AS_DESCRIBED</td><td>43</td><td>8.1%</td><td>₹12,685</td></tr>
              <tr><td>DAMAGED</td><td>42</td><td>8.0%</td><td>₹12,390</td></tr>
              <tr><td><strong>Total</strong></td><td><strong>528</strong></td><td><strong>100%</strong></td><td><strong>₹1,55,760</strong></td></tr>
            </tbody>
          </table>
          <p>SIZE, COLOUR and NOT_AS_DESCRIBED add up to 349 returns (66.1%). They cost ₹1,02,955 in August. Imran can fix most of these in the listing. The kurta set alone had 112 of the 211 SIZE returns. That is the first place to start.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: code these return comments</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Use Zari &amp; Co's codebook. Sort each return comment into its main code.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="size" data-label="SIZE"></div>
              <div data-sorter-target="bucket" data-bucket="colour" data-label="COLOUR"></div>
              <div data-sorter-target="bucket" data-bucket="nad" data-label="NOT_AS_DESCRIBED"></div>
              <div data-sorter-target="bucket" data-bucket="unclear" data-label="UNCLEAR"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="size" data-why="The kurta does not fit the buyer. Nothing says the listing is wrong.">"Ordered M as per the chart, kurta is loose at the shoulders"</li>
              <li data-bucket="size" data-why="The buyer says the listing measurement is correct. It is a fit problem, so SIZE.">"Lehenga waist too tight. Listing measurement is correct, I misread it"</li>
              <li data-bucket="colour" data-why="The colour looks different from the photo. That is COLOUR.">"Photo shows mustard, but it is a dull yellow"</li>
              <li data-bucket="nad" data-why="A measurement differs from the listing. The codebook says NOT_AS_DESCRIBED, not SIZE.">"Listing says dupatta is 2.5 m, it is only 2.1 m"</li>
              <li data-bucket="nad" data-why="A fact in the listing (the fabric) is wrong.">"Listing says pure cotton, label says cotton blend"</li>
              <li data-bucket="unclear" data-why="There is no clear reason. Do not guess. A person checks it.">"Not as expected"</li>
              <li data-bucket="unclear" data-why="It may be a different variant sent by mistake, or a photo problem. Check the order before you code it.">"Wrong colour"</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask the AI to code a batch of return comments with a codebook. Replace the sample comments with your own, after you remove personal details.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a returns analyst for [an Indian ethnic wear brand]. Code each return comment.

        Codes:
        SIZE = does not fit. DAMAGED = arrived torn, stained, wet or crushed. QUALITY = stitching, fabric or work poor or failed. NOT_AS_DESCRIBED = a listing fact is wrong (fabric, measurement). COLOUR = differs from the photo. CHANGED_MIND = no longer wanted. UNCLEAR = reason not clear, or maybe a wrong variant.

        Rules:
        - One main code. Add a second code if a second reason is named.
        - If there are two reasons, the main code is the first in this order: DAMAGED, NOT_AS_DESCRIBED, QUALITY, SIZE, COLOUR, CHANGED_MIND.
        - Never guess. Use UNCLEAR.

        Comments:
        [T01: Kurta tight at armhole, ordered XL as per chart
        T02: Colour more orange than the mustard in the photo
        T03: Box was crushed and dupatta had an oil stain
        T04: Ordered for Navratri but the event got cancelled
        T05: Listing says dupatta 2.5 m, it is only 2 m
        T06: Embroidery threads loose, sleeve seam opened after one wear
        T07: Not satisfied
        T08: Size too big and fabric feels cheap
        T09: Found the same saree cheaper elsewhere
        T10: Wrong colour]

        Output: a table (ID | main code | second code | exact words), a count per code, and IDs a person must check.</pre>
            <ul class="ai-try-checks">
              <li>T05 should be NOT_AS_DESCRIBED, not SIZE.</li>
              <li>T08 should be QUALITY as the main code, with SIZE second.</li>
              <li>T07 and T10 should be UNCLEAR, not guessed.</li>
              <li>Do the counts add up to 10? With the sample: QUALITY 2, CHANGED_MIND 2, UNCLEAR 2, and 1 each for the rest.</li>
              <li>Check that each quote really appears in the comment.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Clean reason codes turn messy comments into numbers you can act on. Write the codebook first, let AI do the first pass, and check a random sample before you trust the counts.
        </div>
      HTML
      starter_code: nil
    },
    10 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-ecom">E-commerce</div>
          <h1 class="lc-title">Return Policies and Customer Messages</h1>
        </div>
        <p class="lc-lead">A vague return policy creates angry buyers, long support chats and bad reviews. A clear one tells buyers exactly what will happen, before they buy. In this lesson, you will learn what a clear return policy says. You will see the main details Indian rules expect an online seller to show. You will also write the short messages a buyer gets at each step of a return or exchange. AI can rewrite a policy in plain words fast. But every rule in it must be your real rule, and a qualified lawyer should review it.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="A return flow on Zari and Co's own store: return request, eligibility check, pickup, quality check, then refund or exchange if it passes, or an explanation with photos if it fails. Under each step is the message the buyer gets. At the bottom, the details to show before purchase: seller details, return and refund policy, total price, country of origin and grievance contact.">
            <defs><marker id="rr10a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12" fill="#e2e0f0" text-anchor="middle">
              <rect x="10" y="30" width="130" height="52" rx="8" fill="#27274e" stroke="#3b82f6"/>
              <text x="75" y="53" font-weight="700">Return request</text>
              <text x="75" y="71" font-size="11" fill="#9b99b8">within 7 days</text>
              <rect x="158" y="30" width="130" height="52" rx="8" fill="#27274e" stroke="#8b5cf6"/>
              <text x="223" y="53" font-weight="700">Eligible?</text>
              <text x="223" y="71" font-size="11" fill="#9b99b8">window, item type</text>
              <rect x="306" y="30" width="130" height="52" rx="8" fill="#27274e" stroke="#22d3ee"/>
              <text x="371" y="53" font-weight="700">Pickup</text>
              <text x="371" y="71" font-size="11" fill="#9b99b8">courier collects</text>
              <rect x="454" y="30" width="130" height="52" rx="8" fill="#27274e" stroke="#f59e0b"/>
              <text x="519" y="53" font-weight="700">Quality check</text>
              <text x="519" y="71" font-size="11" fill="#9b99b8">in 2 working days</text>
              <rect x="610" y="8" width="140" height="44" rx="8" fill="#27274e" stroke="#10b981"/>
              <text x="680" y="27" font-weight="700" fill="#6ee7b7">Pass</text>
              <text x="680" y="44" font-size="11" fill="#9b99b8">refund or exchange</text>
              <rect x="610" y="62" width="140" height="44" rx="8" fill="#27274e" stroke="#ec4899"/>
              <text x="680" y="81" font-weight="700" fill="#f9a8d4">Not accepted</text>
              <text x="680" y="98" font-size="11" fill="#9b99b8">reason and photos</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#rr10a)">
                <line x1="142" y1="56" x2="154" y2="56"/>
                <line x1="290" y1="56" x2="302" y2="56"/>
                <line x1="438" y1="56" x2="450" y2="56"/>
                <line x1="586" y1="50" x2="606" y2="32"/>
                <line x1="586" y1="62" x2="606" y2="82"/>
              </g>
              <g stroke="#4b4a78" stroke-width="1.5" stroke-dasharray="4 4">
                <line x1="75" y1="84" x2="75" y2="132"/><line x1="223" y1="84" x2="223" y2="132"/><line x1="371" y1="84" x2="371" y2="132"/><line x1="519" y1="84" x2="519" y2="132"/><line x1="680" y1="108" x2="680" y2="132"/>
              </g>
              <text x="297" y="112" font-size="11" fill="#9b99b8">Messages to the buyer</text>
              <rect x="10" y="134" width="130" height="58" rx="8" fill="#1f1f44" stroke="#4b4a78"/>
              <text x="75" y="157">Request received</text>
              <text x="75" y="176" font-size="11" fill="#9b99b8">next steps, timeline</text>
              <rect x="158" y="134" width="130" height="58" rx="8" fill="#1f1f44" stroke="#4b4a78"/>
              <text x="223" y="157">Approved</text>
              <text x="223" y="176" font-size="11" fill="#9b99b8">pickup date, packing</text>
              <rect x="306" y="134" width="130" height="58" rx="8" fill="#1f1f44" stroke="#4b4a78"/>
              <text x="371" y="157">Picked up</text>
              <text x="371" y="176" font-size="11" fill="#9b99b8">check date</text>
              <rect x="454" y="134" width="130" height="58" rx="8" fill="#1f1f44" stroke="#4b4a78"/>
              <text x="519" y="157">Check result</text>
              <text x="519" y="176" font-size="11" fill="#9b99b8">pass or not, and why</text>
              <rect x="610" y="134" width="140" height="58" rx="8" fill="#1f1f44" stroke="#4b4a78"/>
              <text x="680" y="157">Outcome message</text>
              <text x="680" y="176" font-size="11" fill="#9b99b8">refund or appeal steps</text>
              <rect x="10" y="212" width="740" height="76" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="380" y="236" font-size="13" font-weight="700" fill="#6ee7b7">Show clearly before purchase (general summary, not legal advice)</text>
              <text x="380" y="258" font-size="11.5">seller name and address · customer care and grievance contact · return, refund and exchange policy</text>
              <text x="380" y="276" font-size="11.5">total price with all charges · country of origin · delivery and payment options</text>
            </g>
          </svg>
          <figcaption>Zari &amp; Co's return flow on its own store. The buyer gets one short, factual message at each step, so they never need to ask "what is happening?".</figcaption>
        </figure>
        <div class="lc-card">
          <h3>What a clear return policy says</h3>
          <p>In August, 150 of Zari &amp; Co's 528 returns came from its own Shopify store. Those follow Zari &amp; Co's own policy. The other 378 came through Amazon, Flipkart and Myntra. Those follow each marketplace's return rules, so check each seller help centre for your category.</p>
          <p>This was the old policy on the Shopify store:</p>
          <pre><code>Returns accepted subject to conditions. Refund at the company's
        discretion. No returns on sale items. Contact us for details.</code></pre>
          <p>It does not say how many days, which items, who pays for pickup, or when the refund comes. "No returns on sale items" is also risky. A faulty item must be taken back even if it was on sale. Here is the new policy, in short (all made up for Zari &amp; Co):</p>
          <table class="lc-table">
            <thead><tr><th>Topic</th><th>Zari &amp; Co's rule (own store)</th></tr></thead>
            <tbody>
              <tr><td>Window</td><td>Request a return or exchange within 7 days of delivery</td></tr>
              <tr><td>Condition</td><td>Unused, unwashed, with tags attached</td></tr>
              <tr><td>Size exchange</td><td>Free, once per order</td></tr>
              <tr><td>Faulty, damaged, wrong or not as described</td><td>Free pickup, and full refund or replacement. This includes sale items.</td></tr>
              <tr><td>Change of mind</td><td>Accepted within 7 days. A ₹99 pickup fee is taken from the refund. This is shown on the product page and at checkout.</td></tr>
              <tr><td>Not returnable</td><td>Items altered or stitched to your measurements. This is shown on the product page before you buy.</td></tr>
              <tr><td>Refund timing</td><td>Within 7 working days after the item passes the check. The check happens within 2 working days of receiving it.</td></tr>
              <tr><td>COD refunds</td><td>To a UPI ID or bank account the buyer enters in a secure form. Store credit only if the buyer chooses it.</td></tr>
            </tbody>
          </table>
          <p>Every rule here is a business decision. AI can make the words clearer. It must not invent rules, days or fees.</p>
        </div>
        <div class="lc-card">
          <h3>Required disclosures in India, in general</h3>
          <p>A <strong>disclosure</strong> is information you must show buyers clearly. The Consumer Protection (E-Commerce) Rules, 2020 ask online sellers and platforms to show key details. In general, these include:</p>
          <ul class="lc-list">
            <li>The seller's legal name, address and customer care contact.</li>
            <li>The return, refund, exchange, warranty and delivery policies.</li>
            <li>The total price, with a break-up of any extra charges.</li>
            <li>The country of origin of the product.</li>
            <li>A grievance officer, with contact details. The rules say complaints should be acknowledged within 48 hours and resolved within one month.</li>
          </ul>
          <p>In general, a seller must not refuse to take back or refund goods that are defective, spurious, not as advertised, or delivered late. Refunds for accepted returns should be paid within a reasonable time.</p>
          <p>Two more rules often apply. The Legal Metrology (Packaged Commodities) Rules cover label details, such as MRP, net quantity and the maker's details. The CCPA guidelines on dark patterns ban tricks such as hiding a fee until the last checkout step. That trick is called <strong>drip pricing</strong>. So show Zari &amp; Co's ₹99 change-of-mind fee early, not only at the end.</p>
          <p>This is general education, not legal advice. Rules are amended from time to time, and new amendments may add more disclosures, such as return shipping costs. Check the current text, and ask a qualified lawyer to review your policy. Marketplaces show many of these details for you, but you must fill them in correctly in your seller account.</p>
        </div>
        <div class="lc-card">
          <h3>Customer messages for each step</h3>
          <p>Most "where is my refund?" chats happen because nobody told the buyer what comes next. Give each step one short, factual message. Here are two of Zari &amp; Co's templates:</p>
          <pre><code>REFUND SENT
        Hi [first name], your return for [product] passed our check.
        We have sent a refund of Rs [amount] to [UPI ID ending 42 / your card].
        Banks usually show it within [3 to 5] working days.
        Order: [order ID]. Questions? Reply to this message.

        RETURN NOT ACCEPTED
        Hi [first name], we checked the [product] you returned.
        We could not accept it because [the kurta has been washed and
        the tags are removed]. Photos from our check: [link].
        We will send it back to you free of charge.
        If you think we are wrong, reply within [7] days and a senior
        team member will review it. Grievance contact: [email].</code></pre>
          <p>The "not accepted" message gives the reason, the evidence and a way to appeal. It never blames or insults the buyer.</p>
          <pre><code>Weak:   Write return messages for my store.

        Better: Write 5 WhatsApp messages for my return flow: request received,
        approved with pickup date, picked up, check result, refund sent.
        Use only the facts in my policy below. Under 50 words each.
        Use [square brackets] for order details. Do not promise any
        timing that is not in the policy. Plain English, polite tone.
        [paste your policy]</code></pre>
          <p>Check every date and amount in the templates against your real process. If your courier often takes longer, say so honestly.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: rewrite the policy with Tanvi</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Tanvi asks">She pastes the old policy and Heena's list of rules. She asks for a clear, simple policy for the Shopify store.</li>
              <li data-kind="answer" data-label="AI draft">The draft is clear. But it says "Refunds within 24 hours" and "This policy complies with all Indian laws".</li>
              <li data-kind="warn" data-label="Spot the mistakes">Heena's rule is 7 working days after the check, not 24 hours. And the AI cannot confirm that a policy is legal.</li>
              <li data-kind="check" data-label="Tanvi checks">She compares every line with Heena's list. She fixes the refund timing and removes the legal claim. She makes sure faulty sale items can be returned.</li>
              <li data-kind="check" data-label="Lawyer review">Heena sends the final draft to the company's lawyer, who suggests two small changes.</li>
              <li data-kind="tool" data-label="Shopify admin">Tanvi updates the refund policy page. Imran adds "Not returnable after alteration" to the lehenga's product page.</li>
              <li data-kind="result" data-label="Store shows">The policy is linked in the footer and at checkout. The ₹99 change-of-mind fee is shown on each product page.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask the AI to turn your return rules into a clear policy and a set of buyer messages. Use your real rules, or keep the sample ones.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You write clear customer policies for Indian online stores. This is not legal advice. I will ask a lawyer to review the result.

        Store: [Zari &amp; Co, ethnic wear, own Shopify store]
        My real return rules:
        [- Return or exchange request within 7 days of delivery
        - Unused, unwashed, tags attached
        - Size exchange free, once per order
        - Faulty, damaged, wrong or not-as-described items: free pickup, full refund or replacement, including sale items
        - Change of mind: Rs 99 pickup fee taken from the refund
        - Not returnable: items altered or stitched to measurements
        - Check within 2 working days of receiving the return; refund within 7 working days after it passes
        - COD refunds to UPI or bank account; store credit only if the buyer chooses]

        Tasks:
        1. Write the return policy in plain English, under 250 words, with short headings.
        2. Write 5 WhatsApp messages (under 50 words each): request received, approved, picked up, check result, refund sent.
        3. List any gaps or unclear points in my rules as questions for me.

        Rules: use only my rules. Do not add days, fees or promises. Do not claim the policy is legally compliant.</pre>
            <ul class="ai-try-checks">
              <li>Compare every day, fee and promise with your rules list. Did the AI add anything?</li>
              <li>Can faulty items bought in a sale still be returned?</li>
              <li>Is the Rs 99 fee clearly stated, not hidden in small print?</li>
              <li>Did the AI avoid saying the policy is "legally compliant"?</li>
              <li>Ask a qualified lawyer to review the policy before you publish it.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A good return policy is specific: days, conditions, fees and refund timing, shown before purchase. AI can make it clear and friendly, but only your real rules go in, and a lawyer checks the final text.
        </div>
      HTML
      starter_code: nil
    },
    11 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-ecom">E-commerce</div>
          <h1 class="lc-title">Reducing Returns at the Source</h1>
        </div>
        <p class="lc-lead">The cheapest return is the one that never happens. Most returns start before the order: a size chart that is wrong, a photo that is too bright, or a description that says more than the product gives. "Reducing returns at the source" means fixing these things on the listing, in the packing room and in quality checks. In this lesson, you will match each of Zari &amp; Co's return reasons to a fix at the source. You will use AI to find gaps in a listing and draft better size notes. You will also set clear targets and work out what each fix is worth.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 330" role="img" aria-label="Bar chart of Zari and Co's 528 August returns by reason, each linked to a fix at the source. Size or fit 211: garment size chart and fit note. Colour versus photo 95: daylight photos with no filters. Quality 74: quality check before dispatch. Changed mind 63: clear details, hard to fix. Not as described 43: honest, exact description. Damaged in transit 42: packing checklist. Made-up target: 113 fewer returns a month, saving 33,335 rupees.">
            <defs><marker id="rr11a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <text x="20" y="24" font-size="12" fill="#9b99b8">August returns by main reason (528)</text>
              <text x="480" y="24" font-size="12" fill="#9b99b8">Fix at the source</text>
              <text x="20" y="58">Size / fit</text>
              <rect x="170" y="40" width="211" height="26" rx="4" fill="#8b5cf6"/>
              <text x="387" y="58">211</text>
              <rect x="480" y="38" width="265" height="30" rx="8" fill="#27274e" stroke="#10b981"/>
              <text x="494" y="58">Garment size chart + fit note</text>
              <text x="20" y="102">Colour vs photo</text>
              <rect x="170" y="84" width="95" height="26" rx="4" fill="#3b82f6"/>
              <text x="271" y="102">95</text>
              <rect x="480" y="82" width="265" height="30" rx="8" fill="#27274e" stroke="#10b981"/>
              <text x="494" y="102">Daylight photos, no filters</text>
              <text x="20" y="146">Quality</text>
              <rect x="170" y="128" width="74" height="26" rx="4" fill="#f59e0b"/>
              <text x="250" y="146">74</text>
              <rect x="480" y="126" width="265" height="30" rx="8" fill="#27274e" stroke="#10b981"/>
              <text x="494" y="146">Quality check before dispatch</text>
              <text x="20" y="190">Changed mind</text>
              <rect x="170" y="172" width="63" height="26" rx="4" fill="#4b4a78"/>
              <text x="239" y="190">63</text>
              <rect x="480" y="170" width="265" height="30" rx="8" fill="#1f1f44" stroke="#4b4a78"/>
              <text x="494" y="190" fill="#9b99b8">Clear details (hard to fix)</text>
              <text x="20" y="234">Not as described</text>
              <rect x="170" y="216" width="43" height="26" rx="4" fill="#ec4899"/>
              <text x="219" y="234">43</text>
              <rect x="480" y="214" width="265" height="30" rx="8" fill="#27274e" stroke="#10b981"/>
              <text x="494" y="234">Honest, exact description</text>
              <text x="20" y="278">Damaged in transit</text>
              <rect x="170" y="260" width="42" height="26" rx="4" fill="#22d3ee"/>
              <text x="218" y="278">42</text>
              <rect x="480" y="258" width="265" height="30" rx="8" fill="#27274e" stroke="#10b981"/>
              <text x="494" y="278">Packing checklist</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#rr11a)">
                <line x1="420" y1="53" x2="474" y2="53"/>
                <line x1="420" y1="97" x2="474" y2="97"/>
                <line x1="420" y1="141" x2="474" y2="141"/>
                <line x1="420" y1="185" x2="474" y2="185"/>
                <line x1="420" y1="229" x2="474" y2="229"/>
                <line x1="420" y1="273" x2="474" y2="273"/>
              </g>
              <text x="380" y="316" text-anchor="middle" font-size="12" fill="#fcd34d">Target (made up): 113 fewer returns a month, about ₹33,335 saved</text>
            </g>
          </svg>
          <figcaption>Each return reason points to a place where the buyer's expectation went wrong. Fix that place, and fewer orders come back.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Start with the reason codes, not with guesses</h3>
          <p>Every return tells you what the buyer expected and did not get. Your reason codes (short labels such as SIZE or COLOUR) show where to look. Here is Zari &amp; Co's August data with the most likely source of each problem.</p>
          <table class="lc-table">
            <thead><tr><th>Reason</th><th>Returns</th><th>Where it starts</th><th>Fix at the source</th><th>Owner</th></tr></thead>
            <tbody>
              <tr><td>Size / fit</td><td>211</td><td>Size chart shows body sizes, not garment sizes</td><td>Garment measurements, fit note, model's size</td><td>Imran</td></tr>
              <tr><td>Colour vs photo</td><td>95</td><td>Photos edited too bright</td><td>Daylight photos, no filters, one unedited shot</td><td>Imran</td></tr>
              <tr><td>Quality</td><td>74</td><td>Faults not caught before dispatch</td><td>Quality check (QC) at packing, supplier fixes</td><td>Warehouse, Heena</td></tr>
              <tr><td>Changed mind</td><td>63</td><td>Often outside your control</td><td>Clear details help a little. Do not over-promise.</td><td>Tanvi</td></tr>
              <tr><td>Not as described</td><td>43</td><td>Listing text differs from the product</td><td>Copy the fabric and contents from the real label</td><td>Imran</td></tr>
              <tr><td>Damaged in transit</td><td>42</td><td>Loose tape, wet or torn parcels</td><td>Packing checklist and a final photo</td><td>Warehouse</td></tr>
            </tbody>
          </table>
          <p>Size, colour and "not as described" together were 349 of 528 returns (66.1%). A better listing can prevent many of them. Start with the biggest reasons that you can control. At Zari &amp; Co, one SKU gives the clearest win. The Bandhani kurta set (ZC-KS-101) had 112 size returns, more than half of all size returns.</p>
        </div>
        <div class="lc-card">
          <h3>Size charts: show the garment, not the body</h3>
          <p>A <strong>body size chart</strong> says which body the size is meant for. A <strong>garment size chart</strong> gives the real measurements of the clothes, laid flat. Buyers can compare a garment chart with a kurta they already own. That is why it prevents more mistakes.</p>
          <p>Imran asked the warehouse to measure three pieces of each size with a tape. He found that the size L kurta measures 41 inches at the chest. The old chart said "L: chest 40", so a buyer with a 40-inch chest got a kurta with almost no room. Zari &amp; Co's pattern maker says this style needs about 2 to 3 inches of extra room.</p>
          <p>Here is how AI can help, and where it cannot. A weak prompt asks the AI to guess:</p>
          <pre><code>Make a size chart for my kurta set.</code></pre>
          <p>The AI will invent standard-looking numbers. They may be wrong for your product. A better prompt gives the real measurements and asks only for layout and wording:</p>
          <pre><code>You are a catalogue editor for an Indian ethnic wear brand.
        Below are the garment measurements we took with a tape (inches).
        Size | Kurta chest | Kurta length | Pant waist (relaxed)
        S    | 37 | 44 | 28
        M    | 39 | 45 | 30
        L    | 41 | 46 | 32
        XL   | 43 | 46 | 34
        Our pattern maker says: fits body chest about 2-3 inches smaller.
        1. Make a clear garment size chart with a "fits body chest" column.
        2. Write a fit note under 30 words for a slim-fit kurta.
        3. Write "how to measure" steps in simple English and Hindi.
        Use only these numbers. Do not add any measurement I did not give.</code></pre>
          <p>Before you publish, check every number in the AI's chart against your tape measurements. Add a line such as "Model is 5 ft 5 in and wears size S". Buyers use it to judge the fit. Use the model's real height and size. Imran put the new chart live in September, after checking each number.</p>
        </div>
        <div class="lc-card">
          <h3>Photos, descriptions, packing and quality checks</h3>
          <ul class="lc-list">
            <li><strong>Photos.</strong> The Wine saree (ZC-SR-204) had 41 colour returns out of 75. Its photos were edited brighter. Reshoot it in daylight with no filters. Add one unedited close-up of the fabric and the blouse piece. AI can edit light and background, but it must never change the real colour, pattern or work of the product.</li>
            <li><strong>Descriptions.</strong> Copy the fabric from the real label. One buyer returned a kurta because the listing said "pure cotton" and the label said "cotton blend". Say exactly what is in the box, for example "kurta, pant and dupatta" or "blouse piece: unstitched". Also show the details the law requires, such as MRP, net quantity, country of origin and the manufacturer's details. Check the current rules and each marketplace's help pages.</li>
            <li><strong>Packing.</strong> Most of the 42 damaged returns had loose tape or wet parcels. A packing checklist costs almost nothing. The AI once suggested a stronger box for every order. At a made-up ₹15 extra per box, that is 4,000 × ₹15 = ₹60,000 a month. All damaged returns together cost only 42 × ₹295 = ₹12,390. Always check the maths before you accept an idea.</li>
            <li><strong>Quality checks (QC).</strong> QC means checking each item before it is packed. Check the pant seams, loose zari threads and mirror work. Keep one photo of each packed order as proof.</li>
          </ul>
          <p>AI is useful here as a second pair of eyes. Paste your listing text and a set of return comments. Ask it to list every place where the comments and the listing disagree. Then check each point yourself.</p>
        </div>
        <div class="lc-card">
          <h3>Set targets and work out what each fix is worth</h3>
          <p>Heena wants to know which fixes are worth the effort. Imran sets a <strong>target</strong> for each one. A target is a number you aim for, not a result you already have. The targets below are made up for teaching. Real results can be better or worse.</p>
          <table class="lc-table">
            <thead><tr><th>Fix (target, made up)</th><th>August returns</th><th>Target</th><th>Fewer returns</th><th>Saving at ₹295</th></tr></thead>
            <tbody>
              <tr><td>KS-101 garment size chart</td><td>112</td><td>60</td><td>52</td><td>₹15,340</td></tr>
              <tr><td>SR-204 daylight photos</td><td>41</td><td>15</td><td>26</td><td>₹7,670</td></tr>
              <tr><td>Exact descriptions (all SKUs)</td><td>43</td><td>20</td><td>23</td><td>₹6,785</td></tr>
              <tr><td>Packing checklist</td><td>42</td><td>30</td><td>12</td><td>₹3,540</td></tr>
              <tr><td><strong>Total</strong></td><td>238</td><td>125</td><td><strong>113</strong></td><td><strong>₹33,335 a month</strong></td></tr>
            </tbody>
          </table>
          <p>In a sheet, put August returns in column B (rows 2 to 5) and targets in column C. Then:</p>
          <pre><code>D2  =B2-C2              fewer returns   (52 for the size chart)
        E2  =D2*295             saving          (₹15,340)
        E6  =SUM(E2:E5)         total saving    (₹33,335)
        F6  =(528-SUM(D2:D5))/3520   new return rate (11.8%, was 15.0%)</code></pre>
          <p>Compare each saving with the cost of the fix. A made-up ₹12,000 photo reshoot pays for itself in about 1.6 months (12,000 ÷ 7,670). After each fix, track the same number every week. If KS-101 still has many size returns after a month, look for another cause.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: match each problem to its fix</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Tanvi found these comments and notes. Sort each one to the fix that deals with its source.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="size" data-label="Size chart or fit note"></div>
              <div data-sorter-target="bucket" data-bucket="photo" data-label="Photos"></div>
              <div data-sorter-target="bucket" data-bucket="desc" data-label="Description"></div>
              <div data-sorter-target="bucket" data-bucket="pack" data-label="Packing or QC"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="size" data-why="The buyer followed the chart and it was still tight. The chart needs garment measurements.">"Ordered L as per the chart, tight at the chest"</li>
              <li data-bucket="photo" data-why="The photo does not match the real colour. Reshoot in daylight with no filters.">"Saree is dull brown-red, photo was bright wine"</li>
              <li data-bucket="desc" data-why="The listing text does not match the label. Copy the fabric from the real label.">"Listing said pure cotton, label says cotton blend"</li>
              <li data-bucket="pack" data-why="Water got in during transit. A packing checklist and a sealed inner bag deal with this.">"Dupatta came wet and the packet was torn"</li>
              <li data-bucket="desc" data-why="The buyer did not know the blouse piece is unstitched. Say exactly what is in the box.">"I thought the blouse was ready to wear"</li>
              <li data-bucket="pack" data-why="A fault that a check before packing could catch. Add it to the QC list.">"Two mirror pieces were already missing when it arrived"</li>
              <li data-bucket="size" data-why="Buyers cannot judge the fit without a reference. Add the model's real height and size.">"No idea how long the kurta is on a 5 ft 2 in person"</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask the AI to find the gaps in one listing, using its return comments. Paste your own listing and comments (with personal details removed), or keep the sample.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a catalogue quality editor for [an Indian ethnic wear brand]. Your goal is to cut returns by making the listing match the real product.

        Product: [Bandhani cotton kurta set, Mustard, SKU ZC-KS-101]
        Current listing text:
        [Pure cotton kurta set. Regular fit. Sizes S-XL as per standard size chart. Colour as shown.]
        Facts from the real product:
        [Fabric label: cotton blend. Kurta chest (garment): S 37, M 39, L 41, XL 43 inches. Slim fit. Set includes kurta, trousers and dupatta.]
        Return comments from last month:
        [1. Ordered L as per chart, tight at chest
        2. Runs small, go one size up
        3. Label says cotton blend, listing says pure cotton
        4. Colour is darker mustard than the photo]

        Please give:
        1. A table: problem | evidence (comment number) | what to change | who should check it.
        2. A new listing description under 80 words, using only the facts above.
        3. A fit note under 30 words and a photo shot list of 5 shots.
        Rules: do not invent measurements, fabric, features or certifications. Mark any missing fact as [NEED].</pre>
            <ul class="ai-try-checks">
              <li>Does the new text say "cotton blend", not "pure cotton"?</li>
              <li>Are all the measurements exactly the ones you gave? Nothing new added?</li>
              <li>Does each problem point to a real comment number?</li>
              <li>Is anything the AI could not know marked [NEED]?</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Returns are cheapest to fix before the order is placed. Use your reason codes to find the source, give the AI only real facts, and set a target for each fix. Then check the numbers every week.
        </div>
      HTML
      starter_code: nil
    },
    12 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-ecom">E-commerce</div>
          <h1 class="lc-title">Cutting RTO on COD Orders</h1>
        </div>
        <p class="lc-lead">COD (cash on delivery) helps many Indian buyers trust a new brand. But COD orders fail far more often. At Zari &amp; Co, 440 of the 480 RTO orders in August were COD. RTO (return to origin) means the parcel was shipped but never delivered, so it came back. In this lesson, you will learn four ways to cut COD RTO: address checks, order confirmation, honest prepaid nudges and a simple risk score. You will use AI to spot weak addresses and draft messages. You will also learn which "nudges" are dark patterns that you must not use.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 345" role="img" aria-label="A COD order goes through an address check, an order confirmation and a simple risk score. Low risk orders ship. Medium risk orders get another call. High risk orders are held and cancelled if there is no reply in 24 hours. Below, a table of COD RTO rate by reason: August 20.0 percent, made-up target 15.0 percent.">
            <defs><marker id="rr12a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="20" y="20" width="160" height="56" rx="10" fill="#27274e" stroke="#3b82f6"/>
              <text x="100" y="43" font-weight="700">COD order</text>
              <text x="100" y="62" font-size="11" fill="#9b99b8">placed on any channel</text>
              <rect x="210" y="20" width="160" height="56" rx="10" fill="#27274e" stroke="#8b5cf6"/>
              <text x="290" y="43" font-weight="700">Address check</text>
              <text x="290" y="62" font-size="11" fill="#9b99b8">pin code, house no.</text>
              <rect x="400" y="20" width="160" height="56" rx="10" fill="#27274e" stroke="#22d3ee"/>
              <text x="480" y="43" font-weight="700">Confirm order</text>
              <text x="480" y="62" font-size="11" fill="#9b99b8">WhatsApp or call</text>
              <rect x="590" y="20" width="160" height="56" rx="10" fill="#27274e" stroke="#f59e0b"/>
              <text x="670" y="43" font-weight="700">Risk score</text>
              <text x="670" y="62" font-size="11" fill="#9b99b8">points, plain words</text>
              <rect x="20" y="118" width="220" height="52" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="130" y="140" font-weight="700" fill="#6ee7b7">Low: ship it</text>
              <text x="130" y="159" font-size="11" fill="#9b99b8">0 to 2 points</text>
              <rect x="270" y="118" width="220" height="52" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="380" y="140" font-weight="700" fill="#fcd34d">Medium: check again</text>
              <text x="380" y="159" font-size="11" fill="#9b99b8">3 to 4: call, fix the address</text>
              <rect x="520" y="118" width="220" height="52" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="630" y="140" font-weight="700" fill="#f9a8d4">High: hold and call</text>
              <text x="630" y="159" font-size="11" fill="#9b99b8">5+: cancel if no reply in 24 h</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#rr12a)">
                <line x1="182" y1="48" x2="206" y2="48"/>
                <line x1="372" y1="48" x2="396" y2="48"/>
                <line x1="562" y1="48" x2="586" y2="48"/>
                <line x1="640" y1="78" x2="140" y2="114"/>
                <line x1="660" y1="78" x2="390" y2="114"/>
                <line x1="690" y1="78" x2="650" y2="114"/>
              </g>
              <rect x="20" y="192" width="720" height="140" rx="10" fill="#1f1f44" stroke="#4b4a78"/>
              <text x="40" y="216" text-anchor="start" font-weight="700">COD RTO rate by reason</text>
              <text x="500" y="216" font-size="12" fill="#9b99b8">August</text>
              <text x="640" y="216" font-size="12" fill="#9b99b8">Target (made up)</text>
              <text x="40" y="240" text-anchor="start">Refused at the door</text>
              <text x="500" y="240">8.0%</text><text x="640" y="240" fill="#6ee7b7">6.0%</text>
              <text x="40" y="261" text-anchor="start">Buyer not reachable</text>
              <text x="500" y="261">6.0%</text><text x="640" y="261" fill="#6ee7b7">4.5%</text>
              <text x="40" y="282" text-anchor="start">Wrong or incomplete address</text>
              <text x="500" y="282">4.0%</text><text x="640" y="282" fill="#6ee7b7">2.5%</text>
              <text x="40" y="303" text-anchor="start">Other</text>
              <text x="500" y="303">2.0%</text><text x="640" y="303" fill="#6ee7b7">2.0%</text>
              <text x="40" y="324" text-anchor="start" font-weight="700" fill="#fcd34d">All COD RTO</text>
              <text x="500" y="324" font-weight="700" fill="#fcd34d">20.0%</text><text x="640" y="324" font-weight="700" fill="#6ee7b7">15.0%</text>
            </g>
          </svg>
          <figcaption>Three quick checks before dispatch catch most weak COD orders. The rates are shares of COD orders shipped.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Why COD orders come back</h3>
          <p>Tanvi asked the courier partners for the RTO reason on every August COD order. She put them in a sheet and counted them.</p>
          <table class="lc-table">
            <thead><tr><th>RTO reason (COD, August)</th><th>Orders</th><th>Share of 2,200 COD shipped</th><th>What would help</th></tr></thead>
            <tbody>
              <tr><td>Refused at the door</td><td>176</td><td>8.0%</td><td>Confirm the order first. Offer an easy prepaid option.</td></tr>
              <tr><td>Buyer not reachable</td><td>132</td><td>6.0%</td><td>Confirm the phone number works before dispatch</td></tr>
              <tr><td>Wrong or incomplete address</td><td>88</td><td>4.0%</td><td>Address check: house number, landmark, pin code</td></tr>
              <tr><td>Other (for example, delivery attempts ran out)</td><td>44</td><td>2.0%</td><td>Clear delivery updates to the buyer</td></tr>
              <tr><td><strong>Total</strong></td><td><strong>440</strong></td><td><strong>20.0%</strong></td><td>Cost: 440 × ₹210 = ₹92,400</td></tr>
            </tbody>
          </table>
          <p>High-value orders need extra care. The mirror-work lehenga (ZC-LH-310, ₹4,299) had an RTO rate of 20.0%. A failed lehenga also keeps costly stock away from the shelf for days, often in the wedding season.</p>
        </div>
        <div class="lc-card">
          <h3>Address checks and order confirmation</h3>
          <p>An <strong>address check</strong> looks for simple gaps before you ship: no house or flat number, no landmark, or a pin code that does not match the city. AI can read a list of new orders and point out weak addresses. The courier's own tools may also flag pin codes they cannot serve.</p>
          <pre><code>You are an order checker for an Indian online store.
        For each order below, check only the address text.
        Flag it if: no house/flat number, no area or landmark,
        or the pin code does not seem to match the city or state.
        Output: order ID | flag (Yes/No) | what is missing | one polite
        question to ask the buyer. Do not guess or correct the address.
        [O-1042: Near bus stand, Gujarat 395007
        O-1043: 14 Shanti Nagar, Kerala 395007 ...]</code></pre>
          <p>Use order IDs, not buyer names, when you paste data into an AI tool. The AI's pin code knowledge can be wrong, so check flagged pin codes with the courier or the India Post pin code search.</p>
          <p><strong>Order confirmation</strong> means asking the buyer to confirm a COD order before you dispatch it. Many sellers send a WhatsApp message with "Confirm" and "Cancel" buttons, then call anyone who does not reply. Tanvi's message:</p>
          <pre><code>Hi, thank you for your Zari &amp; Co order #1042 (Mirror-work lehenga, ₹4,299, cash on delivery).
        Please reply 1 to confirm, or 2 to cancel.
        Your address: Near bus stand, Gujarat 395007.
        Please send your house or flat number so the courier can find you.
        If you like, you can pay online here: [link]. Cash on delivery is still fine.</code></pre>
          <p>If you cancel orders with no reply after 24 hours, say so in your order policy and in the message. Follow the WhatsApp Business rules on templates and buyer consent. Check its current help pages.</p>
        </div>
        <div class="lc-card">
          <h3>Prepaid nudges: honest ones only</h3>
          <p>A <strong>prepaid nudge</strong> is a gentle push to pay online, for example by UPI. A prepaid order almost never fails: Zari &amp; Co's prepaid RTO rate was 2.2% against 20.0% for COD. But the nudge must be honest. In 2023 the CCPA (Central Consumer Protection Authority) published guidelines against <strong>dark patterns</strong>: design tricks that mislead buyers or push them into choices.</p>
          <table class="lc-table">
            <thead><tr><th>Honest nudge</th><th>Dark pattern to avoid</th></tr></thead>
            <tbody>
              <tr><td>Show UPI and card options clearly, next to COD</td><td>Hide the COD option or make it very hard to find</td></tr>
              <tr><td>State a true benefit, such as a faster refund to your account (only if it is true)</td><td>"Only 2 left! Pay now or lose it" when stock is not low (false urgency)</td></tr>
              <tr><td>If you charge a COD fee, show it on the product page and at the start of checkout</td><td>Add the COD fee only at the last step (drip pricing)</td></tr>
              <tr><td>A pay-online link in the confirmation message, with "COD is still fine"</td><td>"No thanks, I like paying more" as the COD button text (confirm shaming)</td></tr>
            </tbody>
          </table>
          <p>Check the maths of any discount too. The AI suggested "₹30 off for all prepaid orders". Heena worked it out:</p>
          <pre><code>Saving per order that moves from COD to prepaid:
          (20.0% - 2.2%) × ₹210 = about ₹37
        If 200 buyers switch: 200 × about ₹37.4 = about ₹7,476 a month
        Cost of the discount: ~2,000 prepaid orders × ₹30 = ₹60,000 a month</code></pre>
          <p>The discount goes to every prepaid buyer, including those who already pay online. So it costs far more than it saves. Zari &amp; Co chose the free, honest nudges instead. This is general education on consumer rules, not legal advice.</p>
        </div>
        <div class="lc-card">
          <h3>A risk score in plain words</h3>
          <p>A <strong>risk score</strong> adds up points for signs that an order may fail. Keep the rules simple, so anyone on the team can explain them to a buyer.</p>
          <table class="lc-table">
            <thead><tr><th>Sign (from your own order data)</th><th>Points</th></tr></thead>
            <tbody>
              <tr><td>Address has no house number or landmark</td><td>2</td></tr>
              <tr><td>Pin code does not match the city</td><td>2</td></tr>
              <tr><td>Order value above ₹3,000</td><td>1</td></tr>
              <tr><td>Each earlier RTO on this phone number (at most 4 points)</td><td>2</td></tr>
              <tr><td>No reply to the confirmation message</td><td>3</td></tr>
            </tbody>
          </table>
          <p>Set up a sheet with one order per row. Column C is "address complete" (Y/N). Column D is "pin code matches" (Y/N). E is the order value, F is the earlier RTO count and G is the confirmation reply. Put the score in H2 and the band in I2:</p>
          <pre><code>H2  =IF(C2="N",2,0)+IF(D2="N",2,0)+IF(E2&gt;3000,1,0)+MIN(F2*2,4)+IF(G2="No reply",3,0)
        I2  =IF(H2&gt;=5,"High",IF(H2&gt;=3,"Medium","Low"))</code></pre>
          <table class="lc-table">
            <thead><tr><th>Order</th><th>C</th><th>D</th><th>E</th><th>F</th><th>G</th><th>Score</th><th>Band</th></tr></thead>
            <tbody>
              <tr><td>O-1041</td><td>Y</td><td>Y</td><td>1,899</td><td>0</td><td>Yes</td><td>0</td><td>Low</td></tr>
              <tr><td>O-1042</td><td>N</td><td>Y</td><td>4,299</td><td>0</td><td>No reply</td><td>6</td><td>High</td></tr>
              <tr><td>O-1043</td><td>Y</td><td>N</td><td>2,499</td><td>1</td><td>Yes</td><td>4</td><td>Medium</td></tr>
              <tr><td>O-1044</td><td>Y</td><td>Y</td><td>799</td><td>2</td><td>No reply</td><td>7</td><td>High</td></tr>
            </tbody>
          </table>
          <p>Never add points for a buyer's name, religion, gender or a whole area of a city. That is unfair, and it can turn away good buyers. A high score means "call and check", not "refuse".</p>
          <p>Heena's made-up target: 200 COD buyers move to prepaid, and COD RTO falls to 15.0%. Then COD RTO = 2,000 × 15% = 300. Prepaid RTO = 2,000 × 2.2% = about 44. Total RTO = 344, down from 480. Saving = 136 × ₹210 = <strong>₹28,560 a month</strong>.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: Tanvi checks the morning's COD orders</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Tanvi asks">She pastes 60 new COD orders (order IDs, addresses, values, no names) and asks the AI to flag weak addresses, using her rules.</li>
              <li data-kind="answer" data-label="AI replies">It flags 9 orders. For O-1042 it says: "No house number. Ask for the flat number and a landmark."</li>
              <li data-kind="warn" data-label="Spot the problem">The AI also says: "Orders from one area of the city often fail. Refuse COD there." That is unfair to every honest buyer in that area. Tanvi does not use it.</li>
              <li data-kind="tool" data-label="Spreadsheet">She adds the flags to her sheet. The score formula in column H gives each order its points.</li>
              <li data-kind="result" data-label="Sheet shows">48 Low, 8 Medium, 4 High. O-1042 scores 6 (no house number, above ₹3,000, no reply).</li>
              <li data-kind="check" data-label="Tanvi checks">She calls the 4 High orders herself. Three buyers confirm and give full addresses. One cancels, so no parcel is wasted.</li>
              <li data-kind="answer" data-label="Next step">Each week she compares the RTO rate of Low, Medium and High orders. If the points do not predict RTO, she changes them.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask the AI to build your COD confirmation messages and a simple risk checklist. Change the brackets to match your store, or keep the sample.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an operations adviser for [an Indian ethnic wear brand] that sells on its own store and marketplaces.

        Last month, COD orders: [2,200] shipped, [440] RTO. Reasons: refused at door [176], not reachable [132], wrong or incomplete address [88], other [44]. Prepaid RTO rate: [2.2%]. Cost per RTO: [Rs 210].

        Please create:
        1. A COD confirmation WhatsApp message in [English and Hindi], under 60 words. Include order number, product, amount, address, reply 1 to confirm or 2 to cancel, and an optional pay-online link that says COD is still fine.
        2. A follow-up call script of 5 short lines for buyers who do not reply.
        3. A risk checklist of 4-6 signs with points, using only order data (address, pin code, value, past RTO on the phone number, reply). Explain each in plain words.
        4. Three honest prepaid nudges, and three dark patterns to avoid (false urgency, drip pricing, confirm shaming).
        5. The monthly saving if COD RTO falls to [15%]. Show the maths.
        Rules: no points for name, religion, gender or area. No fake urgency.</pre>
            <ul class="ai-try-checks">
              <li>Does the message keep COD as a real choice, with no pressure?</li>
              <li>Is every risk sign based on order data, not on who the buyer is or where they live?</li>
              <li>Check the saving: 2,200 × (20% − 15%) = 110 fewer RTO × ₹210 = ₹23,100.</li>
              <li>Are any fees or benefits in the message true for your store?</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Most COD RTO starts with a weak address, an unconfirmed order or a buyer who is not sure. Check, confirm and offer an easy prepaid option, honestly. A risk score should lead to a phone call, never to an unfair refusal.
        </div>
      HTML
      starter_code: nil
    },
    13 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-ecom">E-commerce</div>
          <h1 class="lc-title">Return Fraud and Abuse Signals</h1>
        </div>
        <p class="lc-lead">Almost all returns are honest. A few are not: a lehenga worn to a wedding and sent back, or a box that comes back empty. <strong>Return abuse</strong> means using a return policy in a way it was not meant for. <strong>Return fraud</strong> is deliberate cheating, such as sending back a different item. In this lesson, you will learn the common signals, how AI can point out cases to review, and how to handle each case fairly. The most important rule: a signal starts a review. It is never proof, and it is never a reason to accuse a buyer.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="Of Zari and Co's 528 August returns, simple rules flagged 18, which is 3.4 percent. A person reviewed the evidence for each one. Outcomes: 7 confirmed, handled by the written policy; 8 genuine, refunded and fixed on the brand's side; 3 unclear, refunded with a note.">
            <defs><marker id="rr13a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="20" y="110" width="130" height="60" rx="10" fill="#27274e" stroke="#3b82f6"/>
              <text x="85" y="135" font-weight="700">528 returns</text>
              <text x="85" y="155" font-size="11" fill="#9b99b8">August</text>
              <rect x="185" y="110" width="150" height="60" rx="10" fill="#27274e" stroke="#f59e0b"/>
              <text x="260" y="135" font-weight="700">18 flagged</text>
              <text x="260" y="155" font-size="11" fill="#9b99b8">3.4%, by simple rules</text>
              <rect x="370" y="110" width="150" height="60" rx="10" fill="#27274e" stroke="#8b5cf6"/>
              <text x="445" y="135" font-weight="700">Person reviews</text>
              <text x="445" y="155" font-size="11" fill="#9b99b8">photos, weight, history</text>
              <rect x="560" y="30" width="185" height="56" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="652" y="53" font-weight="700" fill="#f9a8d4">Confirmed: 7</text>
              <text x="652" y="72" font-size="11" fill="#9b99b8">follow the written policy</text>
              <rect x="560" y="112" width="185" height="56" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="652" y="135" font-weight="700" fill="#6ee7b7">Genuine: 8</text>
              <text x="652" y="154" font-size="11" fill="#9b99b8">refund, fix our side</text>
              <rect x="560" y="194" width="185" height="56" rx="10" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="652" y="217" font-weight="700" fill="#67e8f9">Unclear: 3</text>
              <text x="652" y="236" font-size="11" fill="#9b99b8">refund, keep a note</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#rr13a)">
                <line x1="152" y1="140" x2="181" y2="140"/>
                <line x1="337" y1="140" x2="366" y2="140"/>
                <line x1="522" y1="130" x2="556" y2="60"/>
                <line x1="522" y1="140" x2="556" y2="140"/>
                <line x1="522" y1="150" x2="556" y2="220"/>
              </g>
              <text x="380" y="285" font-size="12" fill="#fcd34d">A flag starts a review. It is never an accusation. (made-up data)</text>
            </g>
          </svg>
          <figcaption>Only 7 of 528 returns (1.3%) turned out to be abuse. Most flagged buyers had a real reason, and 5 of them pointed to Zari &amp; Co's own size chart.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Common signals, and their innocent explanations</h3>
          <p>A <strong>signal</strong> is a pattern that is worth a closer look. Every signal also has honest explanations. Write both down before you look at any case.</p>
          <table class="lc-table">
            <thead><tr><th>Signal</th><th>What it can mean</th><th>Honest explanation</th><th>Evidence to check</th></tr></thead>
            <tbody>
              <tr><td><strong>Signs of use</strong>: makeup marks, perfume smell, tags cut</td><td><strong>Wardrobing</strong>: wearing an item once for an event, then returning it</td><td>A factory mark, or tags cut while trying it on</td><td>QC photos. Is the same mark on unsold stock?</td></tr>
              <tr><td>Empty box, or a different item sent back</td><td>Swapping for a cheaper item, or keeping the item</td><td>A courier or warehouse mix-up</td><td>Dispatch weight and photo, return weight, unboxing video</td></tr>
              <tr><td>Many returns from one account (3+ in 60 days)</td><td>Serial returning</td><td>Ordering two sizes because the size chart is unclear. Gifts that did not fit.</td><td>Which SKUs, which reasons, which sizes</td></tr>
              <tr><td>Several new accounts with the same phone or address</td><td>One person repeating the same trick</td><td>A family, a hostel or an office sharing one address</td><td>What each account returned, and QC notes</td></tr>
            </tbody>
          </table>
          <p>Collect evidence as a normal habit, not only for suspected cases. Weigh and photograph every parcel at dispatch. Record a short video when you open each return. Marketplaces have their own claim processes for wrong, used or empty returns, for example Amazon's SAFE-T claims and Flipkart's Seller Protection Fund (SPF) claims. They have time limits and evidence rules. Check Seller Central and Seller Hub help for the current rules.</p>
        </div>
        <div class="lc-card">
          <h3>How AI helps, and the words to avoid</h3>
          <p>AI can read a long returns log and list the cases that match your written rules. It can also draft neutral messages. It must not decide who is guilty. A weak prompt invites a verdict:</p>
          <pre><code>Which of these customers are frauds?</code></pre>
          <p>The AI may label honest buyers as cheats, with no evidence. A better prompt gives rules and asks for evidence:</p>
          <pre><code>You are a returns reviewer. Use only the rules below.
        Rule A: returned item or weight does not match what we sent.
        Rule B: QC found signs of use (makeup, perfume, cut tags).
        Rule C: 3 or more returns from one account in 60 days.
        For each return that matches a rule, give: return ID | rule |
        the exact evidence from the log | one honest explanation |
        what a person should check next.
        Do not use the words fraud, cheat or scam. Do not recommend blocking.</code></pre>
          <p>Remove names, phone numbers and addresses before you paste a log into a public AI tool. Use return IDs instead. Follow India's data protection law and your own privacy policy.</p>
        </div>
        <div class="lc-card">
          <h3>Zari &amp; Co's August review</h3>
          <p>Tanvi's three rules flagged 18 of the 528 returns (3.4%). Every rule uses order and return evidence only. No rule looks at a buyer's name, religion, gender or area. She and one colleague reviewed each case with the evidence.</p>
          <table class="lc-table">
            <thead><tr><th>Rule</th><th>Flagged</th><th>Confirmed</th><th>Genuine</th><th>Unclear</th></tr></thead>
            <tbody>
              <tr><td>A: wrong item, or empty or light parcel</td><td>5</td><td>3</td><td>1 (warehouse mixed two parcels)</td><td>1</td></tr>
              <tr><td>B: signs of use</td><td>6</td><td>4 (lehengas with makeup marks and cut tags)</td><td>1 (factory mark, also on unsold stock)</td><td>1</td></tr>
              <tr><td>C: 3+ returns in 60 days</td><td>7</td><td>0</td><td>6 (5 were ordering two sizes of KS-101)</td><td>1</td></tr>
              <tr><td><strong>Total</strong></td><td><strong>18</strong></td><td><strong>7</strong></td><td><strong>8</strong></td><td><strong>3</strong></td></tr>
            </tbody>
          </table>
          <p>Look at rule C. None of the serial returners was cheating. Most were buying a kurta set in two sizes because they did not trust the size chart. The fix is on Zari &amp; Co's side: the new garment size chart. The team does not count any fraud savings in its plan. The numbers are too small and too uncertain.</p>
          <p>How the team handles each outcome:</p>
          <ul class="lc-list">
            <li><strong>Confirmed:</strong> follow the return policy the buyer saw at purchase, for example "items must be unused, with tags". Share the photos politely. On marketplaces, file a claim through the marketplace.</li>
            <li><strong>Genuine:</strong> refund as normal and fix the cause on your side.</li>
            <li><strong>Unclear:</strong> give the buyer the benefit of the doubt. Refund and keep a short note.</li>
            <li><strong>Never</strong> block an account automatically. A senior person decides any limit, such as prepaid-only orders, using the written policy. The buyer can always explain.</li>
          </ul>
          <p>Tanvi's neutral message for a rule A case:</p>
          <pre><code>Hi, thank you for sending back order #2231. When we opened the parcel,
        we found a different item from the one we sent (photos attached).
        This may be a mix-up. Could you please check if the lehenga is still with you?
        Reply here or call us at [number], and we will sort it out with you.</code></pre>
        </div>
        <div class="lc-card">
          <h3>Activity: review, fix our side, or normal?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each return. Does it need a careful review, does it show a problem on Zari &amp; Co's side, or is it a normal return?</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="review" data-label="Review the evidence"></div>
              <div data-sorter-target="bucket" data-bucket="ours" data-label="Fix our side"></div>
              <div data-sorter-target="bucket" data-bucket="normal" data-label="Normal return"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="review" data-why="A big weight gap is a clear signal. Check the dispatch photo and the unboxing video first. It could still be a mix-up.">A lehenga sent at 1.4 kg comes back in a parcel weighing 0.2 kg</li>
              <li data-bucket="review" data-why="Signs of use are worth a review. First check that the same mark is not on unsold stock.">A lehenga comes back with makeup on the neckline and the tags cut</li>
              <li data-bucket="ours" data-why="Buying two sizes shows the buyer does not trust the size chart. Fix the chart.">A buyer orders KS-101 in M and L, and returns the L</li>
              <li data-bucket="ours" data-why="Three size returns on the same SKU point to a sizing problem, not to cheating.">One account returned three kurta sets in 60 days, all for size</li>
              <li data-bucket="normal" data-why="One colour return is an ordinary reason. It also adds to the case for new photos.">A buyer returns the Wine saree once because the colour looked darker</li>
              <li data-bucket="normal" data-why="The return is inside the policy and the item is unused. Refund it as normal.">A dupatta returned within the window, unused, with tags on</li>
              <li data-bucket="review" data-why="Shared details and repeated empty returns need a look at the evidence. A family could share a phone, so keep it neutral.">Two new accounts with one phone number both return empty boxes</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask the AI to review a small returns log against clear rules. Replace the sample rows with your own (no names or phone numbers), or keep them.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a fair returns reviewer for [an Indian ethnic wear brand]. You point out cases for a person to check. You do not decide.

        Rules:
        A. Returned item or parcel weight does not match what we sent.
        B. QC found signs of use (makeup, perfume, cut tags).
        C. 3 or more returns from one account in 60 days.

        Returns log:
        [RT-01 | lehenga | reason: changed mind | QC: tags cut, makeup on neckline | returns in 60 days: 1
        RT-02 | kurta set | reason: size | QC: unused, tags on; bought M and L, returned L | returns in 60 days: 3
        RT-03 | saree | reason: colour | QC: unused | returns in 60 days: 1
        RT-04 | lehenga | reason: size | sent 1.4 kg, came back 0.2 kg | returns in 60 days: 1
        RT-05 | dupatta | reason: damaged | QC: small tear, packet wet | returns in 60 days: 1]

        Output:
        1. A table: return ID | rule matched | exact evidence | one honest explanation | what a person should check.
        2. Returns that show a problem on our side (size chart, packing), and the fix.
        3. A polite, neutral message for each case that needs the buyer's help, under 50 words.
        Do not use the words fraud, cheat or scam. Do not recommend blocking anyone.</pre>
            <ul class="ai-try-checks">
              <li>Are RT-01 (rule B) and RT-04 (rule A) sent for a careful review, each with the real evidence?</li>
              <li>RT-02 matches rule C. Is it treated as a size chart problem (bought M and L), not as abuse?</li>
              <li>Is RT-05 a packing problem, not a buyer problem?</li>
              <li>Are the messages polite, with no accusation and no threat?</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Treat every flag as a question, not a verdict. Collect evidence as a habit, let a person decide using the written policy, and speak to buyers with respect. Often the "suspicious" pattern points to a problem on your own side.
        </div>
      HTML
      starter_code: nil
    },
    14 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-ecom">E-commerce</div>
          <h1 class="lc-title">Turning Returns into Improvements</h1>
        </div>
        <p class="lc-lead">A reason code tells you <em>what</em> went wrong. It does not tell you <em>why</em>. "Quality" could mean a weak seam, a thin dupatta or a loose mirror. To stop the returns, you must find the root cause and fix it, often together with your supplier. In this lesson, you will slice return data to find the real problem, ask "why" with evidence, and agree a fix with a supplier. You will also build a simple tracker to see if the fix worked. AI helps you organise the facts and draft the supplier message. You still check every fact and make the decisions.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 320" role="img" aria-label="A four-step loop: slice the data, ask why five times, fix with the supplier, track the fix, and look again if it is not fixed. Below, Zari and Co's made-up KS-101 pant seam returns: batch B-06, 3 of 301 delivered, 1.0 percent; batch B-07, 25 of 500, 5.0 percent. Root cause: a new stitching unit, fewer stitches per inch, no stitch spec in the purchase order and no sample check.">
            <defs><marker id="rr14a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <g text-anchor="middle">
                <rect x="20" y="20" width="160" height="56" rx="10" fill="#27274e" stroke="#3b82f6"/>
                <text x="100" y="43" font-weight="700">Slice the data</text>
                <text x="100" y="62" font-size="11" fill="#9b99b8">by SKU and batch</text>
                <rect x="210" y="20" width="160" height="56" rx="10" fill="#27274e" stroke="#8b5cf6"/>
                <text x="290" y="43" font-weight="700">Ask why 5 times</text>
                <text x="290" y="62" font-size="11" fill="#9b99b8">proof at each step</text>
                <rect x="400" y="20" width="160" height="56" rx="10" fill="#27274e" stroke="#f59e0b"/>
                <text x="480" y="43" font-weight="700">Fix with supplier</text>
                <text x="480" y="62" font-size="11" fill="#9b99b8">spec + sample check</text>
                <rect x="590" y="20" width="160" height="56" rx="10" fill="#27274e" stroke="#10b981"/>
                <text x="670" y="43" font-weight="700">Track the fix</text>
                <text x="670" y="62" font-size="11" fill="#9b99b8">weekly, against target</text>
                <text x="385" y="112" font-size="11" fill="#9b99b8">not fixed? look again</text>
              </g>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none">
                <line x1="182" y1="48" x2="206" y2="48" marker-end="url(#rr14a)"/>
                <line x1="372" y1="48" x2="396" y2="48" marker-end="url(#rr14a)"/>
                <line x1="562" y1="48" x2="586" y2="48" marker-end="url(#rr14a)"/>
                <path d="M670,78 V96 H100 V82" marker-end="url(#rr14a)"/>
              </g>
              <rect x="20" y="128" width="350" height="180" rx="10" fill="#1f1f44" stroke="#4b4a78"/>
              <text x="40" y="152" font-weight="700">KS-101 pant seam returns</text>
              <text x="40" y="170" font-size="11" fill="#9b99b8">share of delivered sets, by batch (August)</text>
              <text x="40" y="208" font-size="12">B-06</text>
              <rect x="90" y="193" width="30" height="22" rx="3" fill="#10b981"/>
              <text x="128" y="208" font-size="12">3 of 301 = 1.0%</text>
              <text x="40" y="252" font-size="12">B-07</text>
              <rect x="90" y="237" width="150" height="22" rx="3" fill="#ec4899"/>
              <text x="248" y="252" font-size="12">25 of 500 = 5.0%</text>
              <text x="40" y="290" font-size="11" fill="#fcd34d">Same SKU, same month: the batch is the difference</text>
              <rect x="390" y="128" width="350" height="180" rx="10" fill="#1f1f44" stroke="#4b4a78"/>
              <text x="410" y="152" font-weight="700">Root cause (after 5 whys)</text>
              <text x="410" y="182" font-size="12">• July batch made at a new stitching unit</text>
              <text x="410" y="204" font-size="12">• Fewer stitches per inch on pant seams</text>
              <text x="410" y="226" font-size="12">• Purchase order had no stitch spec</text>
              <text x="410" y="248" font-size="12">• No sample check on incoming batches</text>
              <text x="410" y="282" font-size="12" fill="#6ee7b7">Fix: add a spec + check 20 pieces a batch</text>
            </g>
          </svg>
          <figcaption>Slicing by batch turned a vague "quality" problem into one clear cause that a supplier can fix.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Slice the data to find where the problem lives</h3>
          <p>A <strong>root cause</strong> is the first cause in the chain. If you fix it, the problem stops. To find it, split your returns into smaller groups: by SKU, by batch, by supplier, by channel or by courier. A <strong>batch</strong> is one production lot, such as the pieces a supplier made and delivered in July.</p>
          <p>Zari &amp; Co had 74 quality returns in August. Tanvi read the QC notes and split them further:</p>
          <table class="lc-table">
            <thead><tr><th>Quality problem</th><th>SKU</th><th>Returns</th></tr></thead>
            <tbody>
              <tr><td>Pant seam opens after first wear</td><td>ZC-KS-101 kurta set</td><td>28</td></tr>
              <tr><td>Zari threads pull out of the border</td><td>ZC-SR-204 Wine saree</td><td>12</td></tr>
              <tr><td>Mirror pieces fall off</td><td>ZC-LH-310 lehenga</td><td>10</td></tr>
              <tr><td>Other small problems</td><td>other SKUs</td><td>24</td></tr>
              <tr><td><strong>Total</strong></td><td></td><td><strong>74</strong></td></tr>
            </tbody>
          </table>
          <p>Then she split the 28 seam returns by batch. Her coded returns log has 528 rows (rows 2 to 529), with the SKU in column F. She added the batch in column G and the detailed problem in column H. This formula counts seam returns from batch B-07:</p>
          <pre><code>=COUNTIFS(F2:F529,"ZC-KS-101",G2:G529,"B-07",H2:H529,"STITCH")   gives 25</code></pre>
          <p>The same formula with "B-06" gives 3. In August, 500 delivered sets came from B-07 and 301 from B-06. So the seam return rate was 25 ÷ 500 = 5.0% for B-07, and 3 ÷ 301 = 1.0% for B-06. The newer batch is clearly the problem.</p>
        </div>
        <div class="lc-card">
          <h3>Ask "why" with proof at every step</h3>
          <p>The <strong>5 whys</strong> method means asking "why?" again and again, usually about five times, until you reach a cause you can fix. Each answer must have evidence. Otherwise it is only a guess.</p>
          <table class="lc-table">
            <thead><tr><th>Why?</th><th>Answer</th><th>Evidence</th></tr></thead>
            <tbody>
              <tr><td>1. Why do buyers return KS-101 for quality?</td><td>The pant seam opens</td><td>28 QC notes and return photos</td></tr>
              <tr><td>2. Why does the seam open?</td><td>The stitches are too far apart</td><td>Warehouse counted stitches on 10 returned trousers</td></tr>
              <tr><td>3. Why are they far apart?</td><td>Batch B-07 came from a new stitching unit</td><td>Supplier's delivery note</td></tr>
              <tr><td>4. Why did the new unit use a different stitch?</td><td>The purchase order had no stitch rule</td><td>Zari &amp; Co's purchase order (PO) for July</td></tr>
              <tr><td>5. Why was it not caught?</td><td>No one checks samples when a batch arrives</td><td>Warehouse process notes</td></tr>
            </tbody>
          </table>
          <p>AI can help you structure this, but it likes to fill gaps. A weak prompt such as "Why do our kurtas have quality problems?" gets general guesses like "cheap fabric". A better prompt:</p>
          <pre><code>Help me do a 5 whys analysis. Use only the facts below.
        For each "why", write the answer and the fact that supports it.
        If the facts do not answer a "why", write "NEED EVIDENCE" and
        suggest how I could check it. Do not blame any person.
        Facts: [28 seam returns; B-07 rate 5.0%, B-06 rate 1.0%;
        B-07 made at a new unit; our PO has no stitch spec ...]</code></pre>
          <p>Notice the rule "do not blame any person". The aim is to fix a process, such as the purchase order, not to find someone to blame.</p>
        </div>
        <div class="lc-card">
          <h3>Work with the supplier on a fix</h3>
          <p>Suppliers respond better to clear facts than to angry messages. Heena's message to the stitching supplier (Kiran Tailoring Unit, a made-up name) has four parts:</p>
          <ol class="lc-list">
            <li><strong>The facts:</strong> batch, numbers, photos. "25 of 500 sets from batch B-07 came back with open pant seams. Batch B-06 had 3 of 301."</li>
            <li><strong>The spec:</strong> a <strong>spec</strong> (specification) is a written rule for how the product must be made. For example, a minimum number of stitches per inch and the thread type, agreed with the pattern maker.</li>
            <li><strong>The request:</strong> a corrective action plan. That means what the supplier will change, and by when. Ask how they will check it too.</li>
            <li><strong>Your side:</strong> Zari &amp; Co adds the spec to every PO. The warehouse opens and checks 20 pieces from each batch of 500 before accepting it.</li>
          </ol>
          <p>AI is good at turning your notes into a polite, clear email in English, Hindi or Gujarati. Before you send it, check every number against your sheet. Remove any buyer names or phone numbers. Also check that the AI has not promised anything you did not agree, such as a penalty or a discount.</p>
          <p>The other two quality problems got the same treatment. The saree supplier will finish the back of the zari border so threads do not pull out. For the lehenga, the fix is in-house. Zari &amp; Co's own karigar (artisan) team will stitch around each mirror instead of only gluing it.</p>
        </div>
        <div class="lc-card">
          <h3>Track every fix against a target</h3>
          <p>A fix is not finished when the email is sent. It is finished when the numbers improve. Imran keeps one tracker sheet for all fixes. The targets are made up for teaching.</p>
          <table class="lc-table">
            <thead><tr><th>Issue</th><th>Fix</th><th>Owner</th><th>Aug returns</th><th>Target a month</th></tr></thead>
            <tbody>
              <tr><td>KS-101 pant seams</td><td>Stitch spec + 20-piece batch check</td><td>Heena</td><td>28</td><td>8</td></tr>
              <tr><td>SR-204 zari threads</td><td>Finished border back</td><td>Heena</td><td>12</td><td>7</td></tr>
              <tr><td>LH-310 mirrors</td><td>Stitched, not only glued</td><td>Karigar team lead</td><td>10</td><td>5</td></tr>
              <tr><td><strong>Total quality fixes</strong></td><td></td><td></td><td><strong>50</strong></td><td><strong>20</strong></td></tr>
            </tbody>
          </table>
          <p>That is 30 fewer quality returns a month, so 30 × ₹295 = <strong>₹8,850 saved a month</strong> if the targets are met. Use rates, not only counts, when sales change. For example, track seam returns ÷ delivered sets for each new batch. Festival sales bring more orders and new kinds of buyers. So compare like with like, and wait for enough orders before you decide a fix worked.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: from returns to a fix that lasts</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put Zari &amp; Co's steps for the kurta seam problem in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Split the 74 quality returns by problem and SKU</li>
              <li data-order="2">Split the 28 seam returns by batch and compare the rates</li>
              <li data-order="3">Ask "why" with evidence until you reach a cause you can fix</li>
              <li data-order="4">Send the supplier the facts, the spec and a request for a corrective plan</li>
              <li data-order="5">Add the stitch spec to every purchase order and check 20 pieces per batch</li>
              <li data-order="6">Track the seam return rate for each new batch against the target</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask the AI to turn your return facts into a root cause analysis, a supplier message and a tracker row. Use your own facts, or keep the sample.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a quality improvement adviser for [an Indian ethnic wear brand].

        Facts (use only these):
        [- Product: cotton kurta set, SKU ZC-KS-101
        - Last month: 28 returns because the pant seam opened after first wear
        - Batch B-07: 25 seam returns from 500 delivered. Batch B-06: 3 from 301 delivered
        - B-07 was made at a new stitching unit
        - Our purchase order has no stitch spec
        - We do not check samples when a batch arrives]

        Please give:
        1. A 5 whys table: why | answer | supporting fact. Write NEED EVIDENCE where the facts do not answer.
        2. A polite, factual email to the supplier, under 150 words, in [English]. Include the numbers, ask for a corrective plan with dates, and propose a written stitch spec.
        3. Two changes on our own side.
        4. One tracker row: issue | fix | owner | metric | baseline | target | check date.
        Do not blame any person. Do not invent numbers, penalties or promises.</pre>
            <ul class="ai-try-checks">
              <li>Are the rates right: 25 ÷ 500 = 5.0% and 3 ÷ 301 = 1.0%?</li>
              <li>Does each "why" have a real fact, or NEED EVIDENCE?</li>
              <li>Is the email polite and factual, with no threats or invented penalties?</li>
              <li>Is the metric a rate (returns ÷ delivered), not only a count?</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Slice the returns until one clear cause appears, prove each step, and fix the process with your supplier. Then track a rate against a target. A fix only counts when the numbers show it worked.
        </div>
      HTML
      starter_code: nil
    },
    15 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-ecom">E-commerce</div>
          <h1 class="lc-title">Capstone: A Reviews and Returns Improvement Plan</h1>
        </div>
        <p class="lc-lead">It is time to put everything together. Heena has asked Tanvi and Imran for one plan. She wants to know what is costing money, what they will fix, who owns each fix and what they will save. In this capstone, you will build that plan for Zari &amp; Co, step by step. You will rank the problems by cost and link reviews to return reasons. You will draft two review replies, choose fixes with owners and targets, and work out the savings correctly. Then you will use one prompt to build the same kind of plan for your own store.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 295" role="img" aria-label="A dashboard of Zari and Co's plan, August actual against made-up targets. RTO orders 480 to 344. RTO rate 12.0 to 8.6 percent. Returns 528 to 400. Return rate 15.0 to 10.9 percent. Monthly cost 2,56,560 to 1,90,240 rupees. Saving 66,320 rupees a month, or 51,320 after the cost of confirmation calls.">
            <g font-family="inherit" fill="#e2e0f0" text-anchor="middle">
              <text x="380" y="24" font-size="13" font-weight="700">Zari &amp; Co plan: August (actual) → target (made up)</text>
              <rect x="20" y="40" width="230" height="92" rx="10" fill="#27274e" stroke="#22d3ee"/>
              <text x="135" y="64" font-size="12" fill="#9b99b8">RTO orders</text>
              <text x="135" y="96" font-size="20" font-weight="700">480 → 344</text>
              <text x="135" y="118" font-size="11" fill="#6ee7b7">136 fewer</text>
              <rect x="265" y="40" width="230" height="92" rx="10" fill="#27274e" stroke="#22d3ee"/>
              <text x="380" y="64" font-size="12" fill="#9b99b8">RTO rate (of shipped)</text>
              <text x="380" y="96" font-size="20" font-weight="700">12.0% → 8.6%</text>
              <text x="380" y="118" font-size="11" fill="#6ee7b7">COD 20.0% → 15.0%</text>
              <rect x="510" y="40" width="230" height="92" rx="10" fill="#27274e" stroke="#8b5cf6"/>
              <text x="625" y="64" font-size="12" fill="#9b99b8">Returns</text>
              <text x="625" y="96" font-size="20" font-weight="700">528 → 400</text>
              <text x="625" y="118" font-size="11" fill="#6ee7b7">128 fewer</text>
              <rect x="20" y="147" width="230" height="92" rx="10" fill="#27274e" stroke="#8b5cf6"/>
              <text x="135" y="171" font-size="12" fill="#9b99b8">Return rate (of delivered)</text>
              <text x="135" y="203" font-size="20" font-weight="700">15.0% → 10.9%</text>
              <text x="135" y="225" font-size="11" fill="#6ee7b7">3,656 delivered</text>
              <rect x="265" y="147" width="230" height="92" rx="10" fill="#27274e" stroke="#f59e0b"/>
              <text x="380" y="171" font-size="12" fill="#9b99b8">Monthly cost</text>
              <text x="380" y="203" font-size="17" font-weight="700">₹2,56,560 → ₹1,90,240</text>
              <text x="380" y="225" font-size="11" fill="#9b99b8">returns + RTO</text>
              <rect x="510" y="147" width="230" height="92" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="625" y="171" font-size="12" fill="#9b99b8">Saving a month</text>
              <text x="625" y="203" font-size="20" font-weight="700" fill="#6ee7b7">₹66,320</text>
              <text x="625" y="225" font-size="11" fill="#9b99b8">₹51,320 after call costs</text>
              <text x="380" y="272" font-size="12" fill="#fcd34d">Targets are made up for teaching. Track the real numbers every week.</text>
            </g>
          </svg>
          <figcaption>The one-page view Heena asked for. Every number comes from the August data and the targets in the plan below.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Step 1: rank the problems by cost</h3>
          <p>Start with money, because it tells you where to begin. Multiply each count by its cost: ₹295 per return and ₹210 per RTO (Zari &amp; Co's made-up averages).</p>
          <table class="lc-table">
            <thead><tr><th>Problem (August)</th><th>Count</th><th>Cost</th><th>Mainly caused by</th></tr></thead>
            <tbody>
              <tr><td>COD RTO</td><td>440</td><td>₹92,400</td><td>Refusals, unreachable buyers, weak addresses</td></tr>
              <tr><td>Size / fit returns</td><td>211</td><td>₹62,245</td><td>KS-101 chart shows body sizes (112 returns)</td></tr>
              <tr><td>Colour vs photo returns</td><td>95</td><td>₹28,025</td><td>SR-204 photos too bright (41 returns)</td></tr>
              <tr><td>Quality returns</td><td>74</td><td>₹21,830</td><td>KS-101 seams (batch B-07), zari threads, mirrors</td></tr>
              <tr><td>Changed mind</td><td>63</td><td>₹18,585</td><td>Mostly outside your control</td></tr>
              <tr><td>Not as described</td><td>43</td><td>₹12,685</td><td>Listing text differs from the label</td></tr>
              <tr><td>Damaged in transit</td><td>42</td><td>₹12,390</td><td>Loose tape, wet parcels</td></tr>
              <tr><td>Prepaid RTO</td><td>40</td><td>₹8,400</td><td>Small, leave for now</td></tr>
              <tr><td><strong>Total</strong></td><td></td><td><strong>₹2,56,560</strong></td><td></td></tr>
            </tbody>
          </table>
          <p>The reviews agree with the return data. Size/fit was the top review theme (64 of 236 written reviews). Colour vs photo also came up in the reviews, and it matches the 41 colour returns for the SR-204 saree. Two sources pointing to the same problem give you confidence to act.</p>
        </div>
        <div class="lc-card">
          <h3>Step 2: reply to the reviews that show the problem</h3>
          <p>Tanvi drafts replies with AI, then edits them. Each reply thanks the buyer, admits a real problem honestly, says what is being done (only if it is true) and offers help in private. It never promises a refund outside the policy, and it never shares order details in public.</p>
          <pre><code>Review (1★, KS-101): "Ordered L as per the size chart, fits like M. Very disappointed."

        Reply: Thank you for telling us, and we are sorry the kurta set did not fit.
        You are right that this style runs small. We have added the real garment
        measurements and a fit note to the listing, so buyers can choose the right size.
        If you would like help with an exchange or a return, please message us on
        [channel] and our team will guide you. Team Zari &amp; Co

        Review (2★, SR-204): "Colour is dull brown-red, not the bright wine in the photo."

        Reply: Thank you for this honest review. We checked, and our photo was
        brighter than the real saree. We are reshooting it in daylight so the colour
        is true. We are sorry for the trouble. Please message us on [channel]
        if you need help with your order. Team Zari &amp; Co</code></pre>
          <p>Post the first reply only after the new size chart is live. Otherwise the reply is not true.</p>
        </div>
        <div class="lc-card">
          <h3>Step 3: the plan, with owners and targets</h3>
          <table class="lc-table">
            <thead><tr><th>Fix</th><th>Owner</th><th>Evidence</th><th>Target (made up)</th><th>Saving a month</th></tr></thead>
            <tbody>
              <tr><td>KS-101 garment size chart and fit note</td><td>Imran</td><td>112 size returns, top review theme</td><td>60 size returns</td><td>₹15,340</td></tr>
              <tr><td>SR-204 daylight photos, no filters</td><td>Imran</td><td>41 colour returns</td><td>15</td><td>₹7,670</td></tr>
              <tr><td>Exact descriptions from real labels</td><td>Imran</td><td>43 not as described</td><td>20</td><td>₹6,785</td></tr>
              <tr><td>Packing checklist and final photo</td><td>Warehouse</td><td>42 damaged</td><td>30</td><td>₹3,540</td></tr>
              <tr><td>Supplier and karigar fixes: seams, zari, mirrors</td><td>Heena</td><td>50 of 74 quality returns</td><td>20</td><td>₹8,850</td></tr>
              <tr><td>COD address check, confirmation, honest prepaid nudges, risk score</td><td>Tanvi</td><td>COD RTO 20.0%</td><td>15.0%, 200 move to prepaid</td><td>₹28,560</td></tr>
              <tr><td>Fair review of return abuse flags</td><td>Tanvi</td><td>18 flags, 7 confirmed</td><td>Review within 2 days</td><td>Not counted</td></tr>
            </tbody>
          </table>
          <p>The savings in this table add up to ₹70,745. But that simple sum is too high. When RTO falls, 136 more orders are delivered, and some of them will be returned too. The next step fixes this.</p>
        </div>
        <div class="lc-card">
          <h3>Step 4: the savings maths, done correctly</h3>
          <p>Here is the whole calculation in one row of a sheet. Every result below was checked.</p>
          <table class="lc-table">
            <thead><tr><th>Cell</th><th>Holds</th><th>Formula or value</th><th>Result</th></tr></thead>
            <tbody>
              <tr><td>B2</td><td>Orders shipped (same as August)</td><td>4000</td><td>4,000</td></tr>
              <tr><td>C2</td><td>Target RTO (300 COD + 44 prepaid)</td><td>344</td><td>344</td></tr>
              <tr><td>D2</td><td>Target delivered</td><td><code>=B2-C2</code></td><td>3,656</td></tr>
              <tr><td>E2</td><td>Target return rate (528 − 113 − 30 = 385 on August's 3,520 delivered)</td><td><code>=385/3520</code></td><td>10.9%</td></tr>
              <tr><td>F2</td><td>Target returns</td><td><code>=ROUND(D2*E2,0)</code></td><td>400</td></tr>
              <tr><td>G2</td><td>Target monthly cost</td><td><code>=F2*295+C2*210</code></td><td>₹1,90,240</td></tr>
              <tr><td>H2</td><td>Saving against August</td><td><code>=256560-G2</code></td><td>₹66,320</td></tr>
              <tr><td>I2</td><td>Net saving after a part-time confirmation caller (made up ₹15,000)</td><td><code>=H2-15000</code></td><td>₹51,320</td></tr>
            </tbody>
          </table>
          <p>One-time costs are a made-up ₹12,000 photo reshoot and ₹8,000 for measuring and new size charts: ₹20,000 in all. At ₹51,320 a month, that is paid back in about 12 days. There is also a bonus that is not in the saving. Kept orders rise from 2,992 to 3,256 (3,656 − 400). That is 264 more orders the buyer keeps, worth about ₹4,88,400 in sales at the ₹1,850 AOV (average order value). Sales are not profit, so keep this number separate.</p>
          <p><strong>Write the assumptions on the plan:</strong> the same number of orders, the same return rate for the newly delivered orders, made-up targets and average costs. Check the real numbers every week. The festival season will change the order mix, so compare rates, not only counts.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: build the plan with AI, and check it</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Tanvi asks">She pastes the August summary (no buyer data) and the fixes, and asks for a one-page plan with savings maths.</li>
              <li data-kind="answer" data-label="AI replies">It ranks COD RTO first (₹92,400) and size returns second (₹62,245). It totals the savings as ₹70,745.</li>
              <li data-kind="warn" data-label="Spot the problems">The AI simply added the savings. It forgot that more deliveries mean more returns. It also added "₹10,000 saved by blocking serial returners", which the team never agreed.</li>
              <li data-kind="tool" data-label="Spreadsheet">Tanvi builds the one-row sheet: delivered <code>=B2-C2</code>, returns <code>=ROUND(D2*E2,0)</code>, cost <code>=F2*295+C2*210</code>.</li>
              <li data-kind="result" data-label="Sheet shows">3,656 delivered, 400 returns, cost ₹1,90,240, saving ₹66,320, net ₹51,320.</li>
              <li data-kind="check" data-label="Tanvi checks">She checks by hand: 400 × 295 = 1,18,000 and 344 × 210 = 72,240. The total is 1,90,240. She deletes the blocking line.</li>
              <li data-kind="answer" data-label="Final plan">Heena approves six fixes with owners, targets and a weekly check. The first review is at the end of October.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask the AI to build a full improvement plan. Replace the brackets with your store's numbers, or keep Zari &amp; Co's sample data.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a reviews and returns consultant for [an Indian D2C ethnic wear brand]. Build a one-page improvement plan for the owner.

        Last month:
        - Shipped [4,000]: COD [2,200] (RTO [440]), prepaid [1,800] (RTO [40])
        - Returns [528]: size [211], colour [95], quality [74], changed mind [63], not as described [43], damaged [42]
        - Cost per return [Rs 295], per RTO [Rs 210]
        - Reviews: [620 ratings, average 3.85; top complaints: runs small, colour differs from photo]

        Tasks:
        1. Rank the problems by monthly cost. Show each sum.
        2. For the top 5, give: likely root cause, one fix, owner role, a target and what to measure.
        3. Draft one honest reply to a 1-star review saying [ordered L, fits like M].
        4. Work out the saving. Delivered = shipped - RTO. Keep the new return rate on the new delivered total, so do not simply add the savings.
        5. List your assumptions and three risks.
        Rules: label every target as a target. Do not invent data. No fake reviews, no dark patterns, and no blocking customers automatically.</pre>
            <ul class="ai-try-checks">
              <li>With the sample data, COD RTO (₹92,400) and size returns (₹62,245) should be the top two costs.</li>
              <li>Does the saving use the new delivered total, not a simple sum of every fix?</li>
              <li>Is every target clearly labelled as a target?</li>
              <li>Does the review reply stay honest, with no promise outside your policy?</li>
              <li>Check two sums with a calculator before you share the plan.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A good plan links each fix to evidence, an owner, a target and a saving you can check. Let AI draft and sort, but do the maths in a sheet, write down your assumptions and review the real numbers every week.
        </div>
      HTML
      starter_code: nil
    }
  }.freeze
end

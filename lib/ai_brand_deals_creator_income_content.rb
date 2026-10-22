module AiBrandDealsCreatorIncomeContent
  # Units (sidebar dividers): 1–4 Creator Income Basics · 5–9 Winning Brand Deals · 10–14 Running Deals and Growing Income · 15 Capstone
  # Widgets: sequence, sorter, stepper. No code editor: each Try It is an ai-try prompt box.
  LESSONS = {
    1 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-create">Content Creation</div>
          <h1 class="lc-title">How Creators Earn Money</h1>
        </div>
        <p class="lc-lead">Most creators earn from several places at once. Some money comes from the platform, some from brands and some from your own audience. In this lesson, you will learn the six main income streams and how each one pays. You will also see which streams fit a small, growing or large creator. We will follow <strong>Riya</strong> all through this course. She runs the made-up cooking channel <strong>Tiffin Tales</strong> from her kitchen in Maharashtra. She wants to earn more from brand deals, without losing her viewers' trust. A clear income map is the first step. Without it, AI advice about "earning more" is only guessing.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="Bar chart of Riya's made-up average monthly income. Brand deals 22,000 rupees, YouTube ad revenue 18,500, online workshop 6,000, affiliate links 4,200 and e-book 3,300. Total 54,000, costs 33,500, profit 20,500.">
            <defs><marker id="bd1a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <text x="20" y="28" font-weight="700" fill="#c4b5fd">Riya's income map: average per month, last 6 months (made up)</text>
              <text x="20" y="67">Brand deals</text>
              <rect x="200" y="50" width="367" height="26" rx="4" fill="#ec4899"/>
              <text x="577" y="67">₹22,000 (40.7%)</text>
              <text x="20" y="107">YouTube ad revenue</text>
              <rect x="200" y="90" width="308" height="26" rx="4" fill="#3b82f6"/>
              <text x="518" y="107">₹18,500 (34.3%)</text>
              <text x="20" y="147">Online workshop</text>
              <rect x="200" y="130" width="100" height="26" rx="4" fill="#10b981"/>
              <text x="310" y="147">₹6,000 (11.1%)</text>
              <text x="20" y="187">Affiliate links</text>
              <rect x="200" y="170" width="70" height="26" rx="4" fill="#f59e0b"/>
              <text x="280" y="187">₹4,200 (7.8%)</text>
              <text x="20" y="227">E-book</text>
              <rect x="200" y="210" width="55" height="26" rx="4" fill="#10b981"/>
              <text x="265" y="227">₹3,300 (6.1%)</text>
              <rect x="20" y="252" width="720" height="36" rx="8" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="380" y="275" text-anchor="middle">Income ₹54,000  −  costs ₹33,500  =  profit ₹20,500 a month (before tax)</text>
              <g font-size="11" fill="#9b99b8">
                <rect x="480" y="150" width="12" height="12" fill="#ec4899"/><text x="498" y="160">brand or shop pays</text>
                <rect x="480" y="172" width="12" height="12" fill="#3b82f6"/><text x="498" y="182">platform pays</text>
                <rect x="480" y="194" width="12" height="12" fill="#10b981"/><text x="498" y="204">audience pays (your own products)</text>
                <rect x="480" y="216" width="12" height="12" fill="#f59e0b"/><text x="498" y="226">commission on sales</text>
              </g>
            </g>
          </svg>
          <figcaption>Riya's made-up income map. Brand deals are her biggest stream, but they come in uneven amounts. Some months bring nothing.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The six main income streams</h3>
          <table class="lc-table">
            <thead><tr><th>Stream</th><th>How you are paid</th><th>Who pays</th><th>Good to know</th></tr></thead>
            <tbody>
              <tr><td><strong>Ad revenue</strong></td><td>A share of the money from ads shown on your videos</td><td>The platform, for example YouTube through the YouTube Partner Program</td><td>You must meet the platform's rules to join. Payment depends on views, topic, country and season.</td></tr>
              <tr><td><strong>Brand deals</strong></td><td>A fixed fee to make sponsored content (content a brand pays for)</td><td>The brand, or its agency</td><td>Often the biggest stream. The amounts are uneven. You must label every deal as an ad.</td></tr>
              <tr><td><strong>Affiliate links</strong></td><td>A commission (a small share of the sale) when someone buys through your special link</td><td>The shop or brand</td><td>Small amounts per sale. It works when your audience trusts your picks. Label it.</td></tr>
              <tr><td><strong>Memberships and fan support</strong></td><td>Monthly fees or tips from fans for extra content or perks</td><td>Your audience</td><td>Only some platforms offer this, and each has its own rules</td></tr>
              <tr><td><strong>Your own products</strong></td><td>You sell something you made: an e-book, a planner, a course</td><td>Your audience</td><td>You keep most of the money. You also do the support work.</td></tr>
              <tr><td><strong>Services</strong></td><td>Paid work: workshops, cooking classes, or content you make for a brand's own page</td><td>Brands, schools or your audience</td><td>Pays for your time. It can start even with a small audience.</td></tr>
            </tbody>
          </table>
          <p>Two terms you will see often. <strong>RPM</strong> (revenue per mille) is what you earn per 1,000 views, after the platform takes its share. <strong>CPM</strong> (cost per mille) is what an advertiser pays per 1,000 ad impressions. RPM is the number that matters for your income. Platform rules and payment details change often. Check the platform's current help pages.</p>
        </div>
        <div class="lc-card">
          <h3>Worked example: Riya's income map</h3>
          <p>Riya added up the last 6 months from her bank statements and dashboards. All numbers are made up.</p>
          <table class="lc-table">
            <thead><tr><th>Stream</th><th>Average per month</th><th>Share of income</th><th>How steady?</th></tr></thead>
            <tbody>
              <tr><td>Brand deals</td><td>₹22,000</td><td>40.7%</td><td>Uneven: ₹0, ₹30,000, ₹12,000, ₹0, ₹55,000, ₹35,000</td></tr>
              <tr><td>YouTube ad revenue</td><td>₹18,500</td><td>34.3%</td><td>Fairly steady. It rises and falls with views.</td></tr>
              <tr><td>Online tiffin-planning workshop</td><td>₹6,000</td><td>11.1%</td><td>One workshop a month</td></tr>
              <tr><td>Affiliate links (kitchen tools)</td><td>₹4,200</td><td>7.8%</td><td>Small but steady</td></tr>
              <tr><td>E-book "30 Tiffin Plans"</td><td>₹3,300</td><td>6.1%</td><td>Sells after each new video</td></tr>
              <tr><td><strong>Total</strong></td><td><strong>₹54,000</strong></td><td>100%</td><td></td></tr>
            </tbody>
          </table>
          <pre><code>Brand deals over 6 months = 0 + 30,000 + 12,000 + 0 + 55,000 + 35,000 = ₹1,32,000
        Average per month         = 1,32,000 ÷ 6 = ₹22,000
        Monthly costs             = ₹33,500 (ingredients, part-time editor, software, equipment fund...)
        Profit before tax         = 54,000 − 33,500 = ₹20,500 a month
        Riya's goal               = ₹60,000 a month to take home</code></pre>
          <p>What does the map tell her? Brand deals already bring the most money. But two months had no deals at all. Her goal is more <em>regular</em> deals at fair prices. She also wants her own products to grow, because those do not depend on any brand. In a spreadsheet, the share is easy to check: <code>=ROUND(B2/SUM(B$2:B$6)*100,1)</code>, if column B has the monthly amounts.</p>
          <p><strong>Gifts count too.</strong> Brands often send free products. A free product is a kind of payment. Advertising rules treat it as a link with the brand, so you must label it. It may also count as income for tax. This is general information, not tax advice. Ask a chartered accountant (CA).</p>
        </div>
        <div class="lc-card">
          <h3>Which streams fit your size?</h3>
          <table class="lc-table">
            <thead><tr><th>Stage</th><th>Streams that usually fit</th><th>Example</th></tr></thead>
            <tbody>
              <tr><td><strong>Starting</strong> (small, loyal audience)</td><td>Services, affiliate links, small paid posts for local businesses</td><td>A local bakery pays a new creator to film one Reel for the bakery's own page</td></tr>
              <tr><td><strong>Growing</strong> (steady views, clear niche)</td><td>Brand deals, platform ad revenue once you qualify, a first product</td><td>Riya today: brand deals, YouTube ads, an e-book and a workshop</td></tr>
              <tr><td><strong>Established</strong> (large, trusted audience)</td><td>Long-term brand partners, memberships, bigger products and courses</td><td>A creator with her own tiffin-box range made with a manufacturer</td></tr>
            </tbody>
          </table>
          <p>Follower count is not everything. A small creator with a very clear audience can earn well. Brands pay for the <em>right</em> audience, not only a big one. A creator with 8,000 followers who are all new parents in one state can be perfect for a local baby-food brand.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>How can I make more money as a creator?</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>I am a home-cooking creator in Maharashtra. Here is my income for the
        last 6 months by stream, and my monthly costs. Work out each
        stream's share and my monthly profit. Show your working.
        Then suggest 3 ways to make my income more steady.
        Use only my numbers. Do not promise results.</code></pre>
        </div>
        <div class="lc-card">
          <h3>Activity: who pays Riya?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each way Riya earns by who pays her.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="platform" data-label="The platform pays"></div>
              <div data-sorter-target="bucket" data-bucket="brand" data-label="A brand or shop pays"></div>
              <div data-sorter-target="bucket" data-bucket="audience" data-label="The audience pays"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="platform" data-why="This is ad revenue. YouTube shares part of the ad money with creators in its Partner Program.">YouTube pays her a share of the money from ads on her rajma rice video</li>
              <li data-bucket="brand" data-why="A brand pays a fee for sponsored content. This is a brand deal.">SteelNest pays her a fee to make one Reel about its tiffin boxes</li>
              <li data-bucket="brand" data-why="The shop pays the commission when someone buys through her link. This is affiliate income.">She earns a commission when a viewer buys a knife set through her link</li>
              <li data-bucket="audience" data-why="Her own product. The viewer pays her directly.">A viewer buys her e-book "30 Tiffin Plans"</li>
              <li data-bucket="audience" data-why="A service she sells to her audience. People pay for her time.">Twenty people pay to join her online tiffin-planning workshop</li>
              <li data-bucket="brand" data-why="A free product is payment in kind. It is a link with the brand, so she must label it.">Tadka Tech sends her a free mixer grinder, and she shows it in a video</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to build your income map and do the maths. Replace the sample numbers in brackets with your own, or keep Riya's to practise.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a friendly business coach for small content creators. Use simple English.

        About me: [home-cooking creator in Maharashtra, YouTube channel Tiffin Tales and Instagram]
        My average monthly income, last 6 months:
        [Brand deals 22,000 (months: 0, 30,000, 12,000, 0, 55,000, 35,000)
        YouTube ad revenue 18,500
        Online workshop 6,000
        Affiliate links 4,200
        E-book 3,300]
        Monthly costs: [33,500]
        Goal: [take home 60,000 a month]

        Tasks:
        1. Make a table: stream, rupees per month, share of total (%), and how steady it is.
        2. Work out total income and profit. Show every step of the maths.
        3. Name my riskiest stream and explain why in 2 sentences.
        4. Suggest 3 realistic ideas to reach my goal, one for each: brand deals, my own products, another stream.
        Use only my numbers. Do not invent numbers or promise results. Add one line saying this is not financial or tax advice.</pre>
            <ul class="ai-try-checks">
              <li>Do the shares add up to 100%? Check the maths in a spreadsheet.</li>
              <li>Is the profit correct (income minus costs)?</li>
              <li>Did the AI use only your numbers, with no made-up extra income?</li>
              <li>Are the ideas realistic for your audience size and time?</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Know where your money comes from before you chase more of it. A simple income map shows your biggest stream, your least steady stream and your real profit. Every later step, from pricing to pitching, builds on these numbers.
        </div>
      HTML
      starter_code: nil
    },
    2 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-create">Content Creation</div>
          <h1 class="lc-title">Where AI Helps Creators Earn</h1>
        </div>
        <p class="lc-lead">A brand deal has many small jobs around the content itself. You research brands, write pitches, work out prices, write reports and send invoices. AI assistants such as Claude can do the first draft of many of these jobs in minutes. But AI can also invent numbers, promise things you cannot deliver and explain contracts wrongly. In this lesson, you will learn where AI saves you time and where you must check its work. You will also see the three biggest risks for creators who use AI for business.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 250" role="img" aria-label="Six steps of a brand deal: research, pitch, price, deliver, report and admin. For each step, one row shows how AI helps and another row shows what you must check.">
            <defs><marker id="bd2a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="10" y="20" width="105" height="44" rx="8" fill="#27274e" stroke="#8b5cf6"/><text x="62" y="47" font-weight="700">1. Research</text>
              <rect x="135" y="20" width="105" height="44" rx="8" fill="#27274e" stroke="#3b82f6"/><text x="187" y="47" font-weight="700">2. Pitch</text>
              <rect x="260" y="20" width="105" height="44" rx="8" fill="#27274e" stroke="#22d3ee"/><text x="312" y="47" font-weight="700">3. Price</text>
              <rect x="385" y="20" width="105" height="44" rx="8" fill="#27274e" stroke="#10b981"/><text x="437" y="47" font-weight="700">4. Deliver</text>
              <rect x="510" y="20" width="105" height="44" rx="8" fill="#27274e" stroke="#f59e0b"/><text x="562" y="47" font-weight="700">5. Report</text>
              <rect x="635" y="20" width="115" height="44" rx="8" fill="#27274e" stroke="#ec4899"/><text x="692" y="47" font-weight="700">6. Admin</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#bd2a)">
                <line x1="116" y1="42" x2="132" y2="42"/><line x1="241" y1="42" x2="257" y2="42"/><line x1="366" y1="42" x2="382" y2="42"/><line x1="491" y1="42" x2="507" y2="42"/><line x1="616" y1="42" x2="632" y2="42"/>
              </g>
              <text x="10" y="94" text-anchor="start" font-size="12" fill="#c4b5fd" font-weight="700">AI can draft</text>
              <g font-size="11.5">
                <rect x="10" y="102" width="105" height="48" rx="6" fill="#1f1f44"/><text x="62" y="122">brand lists,</text><text x="62" y="139">fit notes</text>
                <rect x="135" y="102" width="105" height="48" rx="6" fill="#1f1f44"/><text x="187" y="122">emails and</text><text x="187" y="139">DMs</text>
                <rect x="260" y="102" width="105" height="48" rx="6" fill="#1f1f44"/><text x="312" y="122">rate maths,</text><text x="312" y="139">packages</text>
                <rect x="385" y="102" width="105" height="48" rx="6" fill="#1f1f44"/><text x="437" y="122">script ideas,</text><text x="437" y="139">captions</text>
                <rect x="510" y="102" width="105" height="48" rx="6" fill="#1f1f44"/><text x="562" y="122">report text,</text><text x="562" y="139">charts</text>
                <rect x="635" y="102" width="115" height="48" rx="6" fill="#1f1f44"/><text x="692" y="122">invoices,</text><text x="692" y="139">reminders</text>
              </g>
              <text x="10" y="178" text-anchor="start" font-size="12" fill="#6ee7b7" font-weight="700">You must check</text>
              <g font-size="11.5">
                <rect x="10" y="186" width="105" height="48" rx="6" fill="#1f1f44" stroke="#10b981"/><text x="62" y="206">Is the brand</text><text x="62" y="223">real and fair?</text>
                <rect x="135" y="186" width="105" height="48" rx="6" fill="#1f1f44" stroke="#10b981"/><text x="187" y="206">True numbers,</text><text x="187" y="223">your voice</text>
                <rect x="260" y="186" width="105" height="48" rx="6" fill="#1f1f44" stroke="#10b981"/><text x="312" y="206">Your real</text><text x="312" y="223">time and costs</text>
                <rect x="385" y="186" width="105" height="48" rx="6" fill="#1f1f44" stroke="#10b981"/><text x="437" y="206">Honest claims,</text><text x="437" y="223">ad label</text>
                <rect x="510" y="186" width="105" height="48" rx="6" fill="#1f1f44" stroke="#10b981"/><text x="562" y="206">Numbers match</text><text x="562" y="223">screenshots</text>
                <rect x="635" y="186" width="115" height="48" rx="6" fill="#1f1f44" stroke="#10b981"/><text x="692" y="206">Tax and law:</text><text x="692" y="223">ask CA, lawyer</text>
              </g>
            </g>
          </svg>
          <figcaption>AI drafts, you decide. Every step of a brand deal has a job for AI and a check for you.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>What AI does well, and what stays with you</h3>
          <table class="lc-table">
            <thead><tr><th>Job</th><th>How AI helps</th><th>What you must still do</th></tr></thead>
            <tbody>
              <tr><td>Brand research</td><td>Lists types of brands that fit your niche. Summarises a brand's website that you paste in.</td><td>Check the brand is real, active and pays creators fairly. AI may list brands that closed or never existed.</td></tr>
              <tr><td>Pitches and replies</td><td>Writes a first draft of an email or DM (direct message) in a polite tone</td><td>Add your true numbers and your own voice. Remove anything you would not say.</td></tr>
              <tr><td>Pricing maths</td><td>Turns your hours and costs into a price. Builds package options.</td><td>Give it your real hours and costs. Check every sum in a spreadsheet.</td></tr>
              <tr><td>Scripts and captions</td><td>Suggests hooks, outlines and caption ideas that fit the brand brief</td><td>Keep your own style. Check every product claim. Add the ad label.</td></tr>
              <tr><td>Reports</td><td>Turns your results into a clear summary for the brand</td><td>Use only numbers from your dashboards. Keep screenshots as proof.</td></tr>
              <tr><td>Contracts and admin</td><td>Explains contract words in plain English. Drafts invoices and payment reminders.</td><td>Ask a lawyer about clauses that matter. Ask a CA about tax. AI is not a legal or tax adviser.</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>The three big risks</h3>
          <ul class="lc-list">
            <li><strong>Fake numbers.</strong> Ask AI to "write my media kit" and it may fill gaps with numbers that sound right. For example: "80% of my audience are health-conscious professionals". If you do not have that data, it is false. Sending false numbers to a brand can end the deal and hurt your name.</li>
            <li><strong>Over-promising.</strong> AI likes confident sales words: "guaranteed sales", "viral reach", "your best campaign ever". You cannot promise results you do not control. Promise the work: what you will make, when, and how you will report.</li>
            <li><strong>Contracts you do not understand.</strong> AI can explain a clause, but it can miss a problem or be wrong about the law. Never sign because "the AI said it was fine". Big or unclear contracts need a lawyer.</li>
          </ul>
          <p>One more rule: <strong>protect private data.</strong> Do not paste a brand's confidential brief, a contract marked private, or your viewers' names and phone numbers into a public AI tool. Remove names first, or use a tool your work allows. Read the tool's privacy settings.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Write a reply to MilletMunch and tell them why I am a great fit.</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Draft a short, friendly reply to a millet snack brand.
        Use ONLY these facts: YouTube 48,600 subscribers, average
        21,400 views per long video; Instagram average Reel reach
        14,800 (last 90 days). If you need a fact I did not give,
        write [NEED DATA] instead of guessing. Do not promise sales
        or reach. Do not repeat health claims about the product.</code></pre>
        </div>
        <div class="lc-card">
          <h3>Activity: Riya answers MilletMunch</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Riya's first prompt">"MilletMunch wants a Reel for its new ragi chips. Write a reply that sells me, and tell me what to charge."</li>
              <li data-kind="answer" data-label="AI draft">"80% of my audience are health-conscious diabetics. I guarantee 5,000 sales. The standard rate for a creator my size is ₹5,000."</li>
              <li data-kind="warn" data-label="Invented audience fact">Riya has no data about diabetics in her audience. Her YouTube Studio shows age, gender and location only. She deletes the sentence.</li>
              <li data-kind="warn" data-label="Over-promise">She cannot promise sales. She controls the Reel, the timing and the report. She does not control what viewers buy.</li>
              <li data-kind="tool" data-label="Spreadsheet">Riya opens her rate sheet. It works out a price from her hours and costs, not from a "standard rate" the AI guessed.</li>
              <li data-kind="result" data-label="Rate sheet">A new Reel takes her 7 hours. Her rate card price for one Reel is ₹11,000.</li>
              <li data-kind="check" data-label="Product claims">The MilletMunch website says the chips "control diabetes". Riya asks the brand for proof. She will not repeat the claim in her Reel.</li>
              <li data-kind="answer" data-label="Final reply">A short reply with her real numbers, her Reel price, a question about the health claim and an offer of a call. The AI polished the language. Riya chose every fact.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to plan which of your weekly business jobs it can help with, and what you must check each time. Replace the list in brackets with your own jobs.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a practical assistant for a solo content creator. Use simple English.

        I am [a home-cooking creator in Maharashtra with a YouTube channel and an Instagram account].
        These are my weekly business jobs:
        [- find 5 new brands that fit my niche
        - reply to brand emails and DMs
        - work out prices for brand offers
        - write captions for sponsored posts
        - send campaign reports to brands
        - send invoices and payment reminders
        - read contracts before I sign]

        Make a table with these columns:
        Job | How AI can help | Risk if I trust AI blindly | What I must check myself | Save time? (high, medium, low)

        Rules:
        - Be honest about limits. Say where AI can invent numbers or facts.
        - For contracts, tax and money, say clearly that I need a lawyer or a chartered accountant for real decisions.
        - Add one line of advice about not pasting private data into AI tools.</pre>
            <ul class="ai-try-checks">
              <li>Does every job have a clear "what I must check" step?</li>
              <li>Does the table warn that AI can invent numbers, brands or facts?</li>
              <li>Does it send contract and tax questions to a lawyer or CA?</li>
              <li>Do the time-saving ratings make sense for how you really work?</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> AI is a fast first-draft writer, not a source of facts. Give it your real numbers, tell it not to guess, and check every figure, claim and promise before a brand sees it. Your name is on the pitch, not the AI's.
        </div>
      HTML
      starter_code: nil
    },
    3 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-create">Content Creation</div>
          <h1 class="lc-title">Rules You Must Follow</h1>
        </div>
        <p class="lc-lead">When a brand gives you anything, your post becomes an advertisement. Your viewers have a right to know that. In India, two sets of rules matter most: the <strong>ASCI</strong> influencer guidelines and the <strong>CCPA</strong> endorsement guidelines. Platforms also have their own paid-partnership tools. In this lesson, you will learn when to label a post, how to label it and why you must check a brand's claims. You will also see how AI can help you check a caption. This is general education, not legal advice. Rules change, so check the official sources, and ask a lawyer about a real problem.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 310" role="img" aria-label="Decision flow. Is there any material connection with the brand, such as money, a gift, a discount, a trip, a commission, or a family or job link? If no, no label is needed. If yes, add an upfront label and use the platform's tool. A side panel shows how long a label must stay on screen in videos.">
            <defs><marker id="bd3a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="20" y="20" width="340" height="66" rx="10" fill="#27274e" stroke="#8b5cf6"/>
              <text x="190" y="45" font-weight="700">Any material connection with the brand?</text>
              <text x="190" y="68" font-size="11" fill="#9b99b8">money, gift, discount, trip, commission, family, job</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#bd3a)">
                <line x1="100" y1="88" x2="100" y2="122"/>
                <line x1="280" y1="88" x2="280" y2="122"/>
                <line x1="280" y1="196" x2="280" y2="222"/>
              </g>
              <text x="88" y="110" font-size="11" fill="#9b99b8" text-anchor="end">No</text>
              <text x="292" y="110" font-size="11" fill="#9b99b8" text-anchor="start">Yes</text>
              <rect x="20" y="126" width="160" height="70" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="100" y="152">You bought it and</text><text x="100" y="170">like it: no label</text>
              <text x="100" y="187" font-size="11" fill="#9b99b8">keep proof of purchase</text>
              <rect x="200" y="126" width="160" height="70" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="280" y="152" font-weight="700">It is an ad.</text><text x="280" y="172">Label it clearly.</text>
              <rect x="20" y="226" width="340" height="70" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="190" y="250">Label upfront + platform's paid tool</text>
              <text x="190" y="270" font-size="11" fill="#9b99b8">Ad, Sponsored, Collaboration, Free gift, Affiliate...</text>
              <text x="190" y="286" font-size="11" fill="#9b99b8">not only in the bio, not hidden after "more"</text>
              <rect x="390" y="20" width="350" height="276" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="565" y="46" font-weight="700" fill="#fcd34d">Label on a video (ASCI)</text>
              <g text-anchor="start">
                <text x="410" y="80">15 s or less</text><text x="560" y="80">at least 3 s</text>
                <text x="410" y="112">15 s to under 2 min</text><text x="560" y="112">1/3 of the length</text>
                <text x="410" y="144">2 min or more</text><text x="560" y="144">the whole brand part</text>
                <text x="410" y="176">Live stream</text><text x="560" y="176">start and end</text>
                <text x="410" y="208">Audio, podcast</text><text x="560" y="208">start, end, each break</text>
              </g>
              <line x1="410" y1="226" x2="720" y2="226" stroke="#4b4a78"/>
              <text x="565" y="252" font-size="11.5" fill="#9b99b8">Photo or video with no caption:</text>
              <text x="565" y="270" font-size="11.5" fill="#9b99b8">put the label on the picture itself</text>
            </g>
          </svg>
          <figcaption>If a brand gave you anything, label the post as an ad. Put the label where people cannot miss it. On videos, keep it on screen long enough.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>ASCI: when and how to label</h3>
          <p>ASCI (the Advertising Standards Council of India) is the advertising industry's self-regulation body. Its guidelines for influencer advertising in digital media say this, in simple words:</p>
          <ul class="lc-list">
            <li><strong>Label every ad</strong> when there is a <em>material connection</em> with the brand. This means any link that could affect what you say. It includes money, free products (even ones you did not ask for), discounts, gifts, contest entries, trips, hotel stays, awards, and family or job links.</li>
            <li><strong>Honest reviews still need a label.</strong> Even if the review is fully your own opinion, a material connection means you must label it.</li>
            <li><strong>No connection, no label.</strong> If you bought a product yourself and happen to like it, it is not an ad.</li>
            <li><strong>Allowed labels</strong> include: Advertisement, Ad, Sponsored, Collaboration, Partnership, Employee, Free gift, Affiliate, the "Paid partnership" tag on Instagram and the "Includes paid promotion" tag on YouTube.</li>
            <li><strong>Upfront and hard to miss.</strong> Not only in your bio or profile. Not at the end of a video. Not hidden behind "more". Not buried in a group of hashtags.</li>
            <li><strong>Use the platform's tool as well as your own label</strong>, not instead of it.</li>
            <li><strong>Language:</strong> use English or the language of the ad itself. A Hindi Reel can say "विज्ञापन" (advertisement) or "#Ad".</li>
            <li><strong>Virtual influencers</strong> (AI or computer-made characters) must also tell people clearly that they are not real humans.</li>
            <li><strong>Due diligence</strong> (careful checking): make sure the brand can prove the claims in the ad.</li>
          </ul>
          <p>ASCI also has extra rules for health and finance creators, such as showing their qualifications. Read the current guidelines on the ASCI website before any health or money deal.</p>
        </div>
        <div class="lc-card">
          <h3>CCPA: the law behind the rules</h3>
          <p>The CCPA (Central Consumer Protection Authority) works under the Consumer Protection Act, 2019. In 2022, it issued guidelines on misleading advertisements and endorsements. In January 2023, the Department of Consumer Affairs also published "Endorsement Know-hows!" for celebrities, influencers and virtual influencers. Key points:</p>
          <ul class="lc-list">
            <li>Disclose any material connection with clear, simple words such as "advertisement", "sponsored", "collaboration" or "paid promotion".</li>
            <li>Do not endorse a product you have not personally used or experienced, or checked with due diligence.</li>
            <li>Your endorsement must show your real, current opinion.</li>
            <li>Penalties for misleading ads can be large. The CCPA can fine endorsers up to ₹10 lakh, and up to ₹50 lakh for repeat cases. It can also stop an endorser from endorsing for a time. Check the current rules.</li>
          </ul>
          <p><strong>Worked example.</strong> MilletMunch (a made-up snack brand) offers Riya a Reel. Its website says the chips "control diabetes". Riya asks for proof. The brand sends only a customer quote. That is not proof. Riya says she will talk only about taste and how she packs them in a tiffin. She will not repeat the health claim. A health claim like this needs strong evidence and often a qualified expert.</p>
          <p><strong>AI labels are a separate rule.</strong> YouTube asks creators to disclose realistic altered or synthetic content in YouTube Studio. Meta platforms may show an "AI info" label. In February 2026, India amended its IT Rules on "synthetically generated information" (AI-made or AI-changed content). Platforms must label such content and may ask you to declare it. Check each platform's current help pages.</p>
        </div>
        <div class="lc-card">
          <h3>Using AI to check your caption</h3>
          <p>AI can compare your caption with a checklist and point out gaps. It cannot give you a legal opinion. It may also be out of date, so give it the rules in the prompt.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Is my caption legal?</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Check this Instagram caption against this checklist:
        1) a clear ad label in the first line, 2) not hidden in
        hashtags, 3) same language as the post, 4) no claim I cannot
        prove. List each problem and suggest a fix. Do not give legal
        advice. Caption: "Loving my new tiffin set! #tiffin
        #lunchbox #steelnest #ad"</code></pre>
          <p>Here, the "#ad" sits at the very end, mixed with other hashtags. A better first line is: <em>"Ad | Paid partnership with SteelNest. I have used this tiffin set for two weeks."</em> Also turn on Instagram's paid partnership label.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: label or no label?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Does Riya need an ad label? Use the ASCI idea of a "material connection".</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="label" data-label="Label needed"></div>
              <div data-sorter-target="bucket" data-bucket="none" data-label="No label needed"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="label" data-why="A free product is a material connection, even if she did not ask for it.">SteelNest sends a free tiffin set she did not ask for, and she shows it in a Reel</li>
              <li data-bucket="none" data-why="She paid for it herself and has no link with the brand. It is not an ad.">She bought a pressure cooker with her own money and praises it in a video</li>
              <li data-bucket="label" data-why="She earns a commission on sales. ASCI lists Affiliate as a label.">She links a knife set that pays her a commission on each sale</li>
              <li data-bucket="label" data-why="A family relationship with the brand is a material connection.">Her brother works at Tadka Tech, and she recommends its mixer grinder</li>
              <li data-bucket="none" data-why="No money, gift or relationship. It is her honest tip.">She tells viewers about a vegetable market near her home that she likes</li>
              <li data-bucket="label" data-why="A discount is a benefit from the brand. That is a material connection.">MilletMunch gave her a 50% discount code for her own shopping, and she features the snacks</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to check a sponsored caption against a disclosure checklist. Paste your own caption and deal details, or keep the sample.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a careful checker of sponsored social media posts in India. Use simple English. You do not give legal advice.

        Post details:
        - Platform: [Instagram Reel, Hinglish voice-over, 45 seconds]
        - What the brand gave me: [a fee of 11,000 rupees and a free tiffin set]
        - Brand claims I want to use: [keeps food warm for 4 hours, 100% food-grade steel]
        - My caption: [Mera naya favourite tiffin! Food stays hot all day. #tiffin #lunchbox #steelnest #ad]

        Check the post against this checklist, based on ASCI's influencer guidelines:
        1. Is there a clear label such as Ad, Sponsored or Collaboration, upfront and not hidden in hashtags?
        2. Is the label in English or the language of the post?
        3. Should the platform's paid partnership tool also be used?
        4. For a 45-second video, how long should an on-screen label stay?
        5. Which claims need proof from the brand before I say them?

        Give: a pass or fix note for each point, a rewritten caption, and 3 questions to ask the brand. End with: "Check the current ASCI guidelines and ask a lawyer if unsure."</pre>
            <ul class="ai-try-checks">
              <li>Does the rewritten caption put the ad label in the first line?</li>
              <li>For 45 seconds, does it say the label should stay for at least a third of the video (15 seconds)?</li>
              <li>Did it flag "food stays hot all day" as a claim that needs proof?</li>
              <li>Did it avoid acting like a lawyer or promising the post is "fully legal"?</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> If a brand gave you anything, label the post as an ad, upfront and in plain words. Only say what you have tried and what the brand can prove. A clear label protects your viewers' trust, and trust is what brands pay for.
        </div>
      HTML
      starter_code: nil
    },
    4 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-create">Content Creation</div>
          <h1 class="lc-title">Knowing Your Audience and Numbers</h1>
        </div>
        <p class="lc-lead">Brands pay for people, not for posts. They want to know how many people see your content, how many react to it and who those people are. In this lesson, you will learn the key numbers: reach, views, engagement rate, audience age and city. You will calculate them correctly, with Riya's made-up numbers. You will also learn to show your real proof, so a brand can trust you. AI can explain your numbers and spot patterns, but only if you give it correct data.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="A dashboard of Riya's made-up numbers for the last 90 days. YouTube: 48,600 subscribers, 21,400 average views per long video, 6.5 percent engagement rate by views, 46 percent average viewed. Instagram: 31,200 followers, 14,800 average Reel reach, 9.8 percent engagement rate by reach, 4.6 percent by followers. Audience: mostly women aged 25 to 34 in Maharashtra and Karnataka.">
            <defs><marker id="bd4a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="10" y="10" width="365" height="200" rx="12" fill="#1f1f44" stroke="#ef4444"/>
              <text x="192" y="34" font-weight="700" fill="#fca5a5">YouTube: Tiffin Tales</text>
              <rect x="22" y="48" width="165" height="70" rx="8" fill="#27274e"/><text x="104" y="76" font-size="20" font-weight="700">48,600</text><text x="104" y="100" font-size="11" fill="#9b99b8">subscribers</text>
              <rect x="198" y="48" width="165" height="70" rx="8" fill="#27274e"/><text x="280" y="76" font-size="20" font-weight="700">21,400</text><text x="280" y="100" font-size="11" fill="#9b99b8">avg views, long video</text>
              <rect x="22" y="128" width="165" height="70" rx="8" fill="#27274e"/><text x="104" y="156" font-size="20" font-weight="700">6.5%</text><text x="104" y="180" font-size="11" fill="#9b99b8">engagement by views</text>
              <rect x="198" y="128" width="165" height="70" rx="8" fill="#27274e"/><text x="280" y="156" font-size="20" font-weight="700">46%</text><text x="280" y="180" font-size="11" fill="#9b99b8">average % viewed</text>
              <rect x="385" y="10" width="365" height="200" rx="12" fill="#1f1f44" stroke="#ec4899"/>
              <text x="567" y="34" font-weight="700" fill="#f9a8d4">Instagram: @tiffintales</text>
              <rect x="397" y="48" width="165" height="70" rx="8" fill="#27274e"/><text x="479" y="76" font-size="20" font-weight="700">31,200</text><text x="479" y="100" font-size="11" fill="#9b99b8">followers</text>
              <rect x="573" y="48" width="165" height="70" rx="8" fill="#27274e"/><text x="655" y="76" font-size="20" font-weight="700">14,800</text><text x="655" y="100" font-size="11" fill="#9b99b8">avg Reel reach</text>
              <rect x="397" y="128" width="165" height="70" rx="8" fill="#27274e"/><text x="479" y="156" font-size="20" font-weight="700">9.8%</text><text x="479" y="180" font-size="11" fill="#9b99b8">engagement by reach</text>
              <rect x="573" y="128" width="165" height="70" rx="8" fill="#27274e"/><text x="655" y="156" font-size="20" font-weight="700">4.6%</text><text x="655" y="180" font-size="11" fill="#9b99b8">engagement by followers</text>
              <rect x="10" y="222" width="740" height="66" rx="12" fill="#1f1f44" stroke="#10b981"/>
              <text x="380" y="248" font-weight="700" fill="#6ee7b7">Who watches (YouTube, last 90 days)</text>
              <text x="380" y="272" font-size="12">62% women · biggest age group 25–34 (46%) · top states Maharashtra 14%, Karnataka 12%, Telangana 9%</text>
            </g>
          </svg>
          <figcaption>Riya's made-up numbers for the 90 days to 31 August 2026. Every number has a date range and a clear method.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The numbers brands ask for</h3>
          <table class="lc-table">
            <thead><tr><th>Number</th><th>Plain meaning</th></tr></thead>
            <tbody>
              <tr><td><strong>Followers or subscribers</strong></td><td>People who chose to follow you. Many of them do not see every post.</td></tr>
              <tr><td><strong>Impressions</strong></td><td>How many times your content was shown. One person can create several impressions.</td></tr>
              <tr><td><strong>Reach</strong></td><td>How many different accounts saw your content at least once</td></tr>
              <tr><td><strong>Views</strong></td><td>How many times a video was watched. Each platform counts a view in its own way.</td></tr>
              <tr><td><strong>Engagements</strong></td><td>Actions people take: likes, comments, shares and saves</td></tr>
              <tr><td><strong>Engagement rate</strong></td><td>Engagements divided by an audience number, as a percentage. <em>Always say which audience number you used</em>: reach, views or followers.</td></tr>
              <tr><td><strong>Average view duration</strong></td><td>How long a view lasts, on average. Average % viewed is this time divided by the video length.</td></tr>
              <tr><td><strong>Audience demographics</strong></td><td>Who your viewers are: age group, gender, country and city, as shown in your dashboards</td></tr>
            </tbody>
          </table>
          <p>You find these in YouTube Studio (Analytics) and in Instagram's insights for professional accounts. Report names and the way platforms count can change. Check the platform's current help pages.</p>
        </div>
        <div class="lc-card">
          <h3>Worked example: Riya's engagement rates</h3>
          <p>Riya took averages from her last 10 long videos and her Reels from the last 90 days. All numbers are made up.</p>
          <pre><code>INSTAGRAM (average Reel)
        Engagements = 820 likes + 64 comments + 150 shares + 410 saves = 1,444
        Engagement rate by reach     = 1,444 ÷ 14,800 × 100 = 9.76%  (about 9.8%)
        Engagement rate by followers = 1,444 ÷ 31,200 × 100 = 4.63%  (about 4.6%)
        Reach as a share of followers = 14,800 ÷ 31,200 × 100 = 47.4%

        YOUTUBE (average long video, first 30 days)
        Engagement rate by views = (1,180 likes + 214 comments) ÷ 21,400 × 100 = 6.51%
        Average % viewed         = 5:10 ÷ 11:20 = 310 s ÷ 680 s = 45.6%  (about 46%)</code></pre>
          <p>See the problem? The same Reels give 9.8% or 4.6%, depending on the method. Both are correct. A brand comparing creators must compare the same method. So in a media kit, write the method next to the number: <em>"Engagement rate 9.8% (engagements ÷ reach, last 90 days)"</em>.</p>
          <p>In Google Sheets or Excel, put likes, comments, shares and saves in B2 to E2, and reach in F2. Then use <code>=ROUND(SUM(B2:E2)/F2*100,2)</code>. Always check AI's maths with a formula like this. AI can add wrongly or read a screenshot wrongly.</p>
        </div>
        <div class="lc-card">
          <h3>Your real proof for brands</h3>
          <p>Brands want to know if your audience matches their buyers. SteelNest (a made-up tiffin-box brand) sells mainly to working women aged 25 to 34 in Maharashtra and Karnataka. Riya's data shows 62% women, 46% aged 25 to 34, and Maharashtra and Karnataka as her top two states. That match is her strongest selling point. It matters more than her follower count.</p>
          <ul class="lc-list">
            <li><strong>Screenshots with dates.</strong> Save your dashboards with the date range shown. Brands often ask for them.</li>
            <li><strong>Averages, not your best post.</strong> One viral video is not your normal reach.</li>
            <li><strong>Never buy followers, views or likes.</strong> Fake numbers break platform rules. Brands and agencies often check for sudden jumps and strange audiences.</li>
            <li><strong>Only real data about your audience.</strong> Do not guess income, jobs or health. If you want to know more, run a simple poll and say it is a poll.</li>
          </ul>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Describe my audience for a brand.</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Here are my dashboard numbers for the last 90 days (pasted
        below). Calculate engagement rate by reach and by followers.
        Show the maths. Then write a 3-line audience summary for a
        tiffin-box brand. Use only these numbers. Write the date
        range and method next to every number.</code></pre>
        </div>
        <div class="lc-card">
          <h3>Activity: build your numbers sheet</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put Riya's steps in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Pick one date range for every platform, for example the last 90 days</li>
              <li data-order="2">Open YouTube Studio and Instagram insights and save dated screenshots</li>
              <li data-order="3">Copy the numbers into a spreadsheet, with the date range in the first row</li>
              <li data-order="4">Calculate engagement rates with formulas, and write the method for each</li>
              <li data-order="5">Ask AI to explain patterns, using only the numbers in the sheet</li>
              <li data-order="6">Check every number in the AI answer against the sheet and screenshots</li>
              <li data-order="7">Write a short audience summary for brands, with dates and methods</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to calculate your engagement rates and write an honest audience summary. Use your own dashboard numbers, or keep Riya's sample numbers.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a data coach for content creators. Use simple English and show all your maths.

        My numbers, [last 90 days]:
        Instagram: [31,200] followers. Average Reel: reach [14,800], likes [820], comments [64], shares [150], saves [410].
        YouTube: [48,600] subscribers. Average long video: views [21,400], likes [1,180], comments [214], length [11:20], average view duration [5:10].
        Audience: [62% women; ages 18-24 27%, 25-34 46%, 35-44 17%; top states Maharashtra 14%, Karnataka 12%, Telangana 9%]
        Brand I want to work with: [a steel tiffin-box brand for working women in Maharashtra and Karnataka]

        Tasks:
        1. Instagram engagement rate by reach and by followers. Show each step.
        2. YouTube engagement rate by views, and average % viewed.
        3. A table of all results with the method next to each number.
        4. A 3-line audience summary for this brand. Explain how well my audience matches.
        Rules: use only my numbers. Do not guess income, jobs or health of my audience. Round to one decimal place.</pre>
            <ul class="ai-try-checks">
              <li>Check each rate with a spreadsheet formula. With the sample data, by reach is about 9.8% and by followers is about 4.6%.</li>
              <li>Does every number have its method (reach, views or followers) and the date range?</li>
              <li>Did the AI add any audience facts you did not give it? Remove them.</li>
              <li>Is the brand match honest, without big words like "perfect" or "guaranteed"?</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A number without a date range and a method means little to a brand. Use averages, say how you calculated them and keep dated screenshots. Honest, checkable numbers win more deals than big, vague ones.
        </div>
      HTML
      starter_code: nil
    },
    5 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-create">Content Creation</div>
          <h1 class="lc-title">Building a Media Kit</h1>
        </div>
        <p class="lc-lead">A <strong>media kit</strong> is a short document, often one to three pages, that introduces you to brands. It shows who you are, who watches you, your numbers, your past work and what you offer. A good kit saves the brand time and makes you look professional. In this lesson, you will plan each section, write it with AI's help and build Riya's kit for Tiffin Tales. Most of all, you will learn to keep every number honest. One false number can end a deal and hurt your name.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 320" role="img" aria-label="Layout of a one-page media kit: a header with name and one-line promise, then boxes for audience, numbers, past work and packages, then contact details. A side panel lists honest-number rules: a date range on every number, averages not your best post, the method for engagement rate, screenshots on request and no bought followers.">
            <defs><marker id="bd5a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="20" y="10" width="470" height="300" rx="12" fill="#1f1f44" stroke="#a855f7"/>
              <rect x="36" y="24" width="438" height="52" rx="8" fill="#27274e"/>
              <text x="255" y="46" font-weight="700">Riya · Tiffin Tales · Maharashtra</text>
              <text x="255" y="66" font-size="11" fill="#9b99b8">Quick, healthy Hinglish tiffins for working people</text>
              <rect x="36" y="88" width="212" height="84" rx="8" fill="#27274e" stroke="#3b82f6"/>
              <text x="142" y="112" font-weight="700">Audience</text>
              <text x="142" y="134" font-size="11" fill="#9b99b8">62% women, 46% aged 25–34</text>
              <text x="142" y="152" font-size="11" fill="#9b99b8">Maharashtra 14%, Karnataka 12%</text>
              <rect x="262" y="88" width="212" height="84" rx="8" fill="#27274e" stroke="#22d3ee"/>
              <text x="368" y="112" font-weight="700">Numbers</text>
              <text x="368" y="134" font-size="11" fill="#9b99b8">21,400 avg views (YouTube)</text>
              <text x="368" y="152" font-size="11" fill="#9b99b8">14,800 avg Reel reach</text>
              <rect x="36" y="184" width="212" height="72" rx="8" fill="#27274e" stroke="#10b981"/>
              <text x="142" y="208" font-weight="700">Past work</text>
              <text x="142" y="230" font-size="11" fill="#9b99b8">Masala Mitra Reel:</text>
              <text x="142" y="246" font-size="11" fill="#9b99b8">22,300 reach, 310 clicks</text>
              <rect x="262" y="184" width="212" height="72" rx="8" fill="#27274e" stroke="#f59e0b"/>
              <text x="368" y="208" font-weight="700">Packages</text>
              <text x="368" y="230" font-size="11" fill="#9b99b8">Reel ₹11,000</text>
              <text x="368" y="246" font-size="11" fill="#9b99b8">Launch Pack ₹23,850</text>
              <rect x="36" y="266" width="438" height="32" rx="8" fill="#27274e"/>
              <text x="255" y="287" font-size="12">Contact: email · numbers updated to 31 Aug 2026</text>
              <line x1="492" y1="130" x2="516" y2="130" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#bd5a)"/>
              <rect x="520" y="10" width="225" height="300" rx="12" fill="#1f1f44" stroke="#10b981"/>
              <text x="632" y="38" font-weight="700" fill="#6ee7b7">Honest numbers</text>
              <g text-anchor="start" font-size="12">
                <text x="536" y="76">1. A date range on</text><text x="554" y="94">every number</text>
                <text x="536" y="128">2. Averages, not</text><text x="554" y="146">your best post</text>
                <text x="536" y="180">3. Say how you worked</text><text x="554" y="198">out engagement rate</text>
                <text x="536" y="232">4. Screenshots ready</text><text x="554" y="250">when brands ask</text>
                <text x="536" y="284">5. No bought followers</text>
              </g>
            </g>
          </svg>
          <figcaption>A one-page media kit for Riya. Every number in it follows the honest-numbers rules on the right.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>What goes in a media kit</h3>
          <table class="lc-table">
            <thead><tr><th>Section</th><th>What to write</th><th>Riya's version (made up)</th></tr></thead>
            <tbody>
              <tr><td><strong>Bio</strong></td><td>Who you are, what you make, for whom. Two or three sentences.</td><td>"I'm Riya, a home cook in Maharashtra. On Tiffin Tales I share quick, healthy tiffins in Hinglish for working people and students."</td></tr>
              <tr><td><strong>Audience</strong></td><td>Gender, age groups, top states and countries, from your dashboards</td><td>62% women. 46% aged 25–34. Top states: Maharashtra, Karnataka, Telangana. India 88% of views.</td></tr>
              <tr><td><strong>Numbers</strong></td><td>Followers, average views or reach, engagement rate with its method, and the date range</td><td>YouTube: 48,600 subscribers, 21,400 average views. Instagram: 31,200 followers, 14,800 average Reel reach, engagement rate 9.8% by reach.</td></tr>
              <tr><td><strong>Past work</strong></td><td>Brands you worked with and real results, with permission to share</td><td>Masala Mitra, May 2026: 1 Reel, 22,300 reach, 310 link clicks, discount code used 46 times</td></tr>
              <tr><td><strong>Packages</strong></td><td>What you offer. Some creators show prices, others write "rates on request".</td><td>Dedicated YouTube video, YouTube integration, Reel, story set, Short, and the "Tiffin Launch Pack"</td></tr>
              <tr><td><strong>Contact</strong></td><td>A work email, and how fast you reply</td><td>A work email address. "I reply within 2 working days."</td></tr>
            </tbody>
          </table>
          <p>Past-work results are for that brand. Ask the brand before you share them in your kit. If the brand says no, show the type of work without its numbers.</p>
        </div>
        <div class="lc-card">
          <h3>Worked example: Riya's numbers section</h3>
          <p>Here is the text Riya writes for her kit. Every number comes from her dashboards for the 90 days to 31 August 2026.</p>
          <pre><code>MY NUMBERS (1 June to 31 August 2026)
        YouTube  | 48,600 subscribers | 21,400 average views per long video
                 | (first 30 days, last 10 videos) | 46% average viewed
        Instagram| 31,200 followers | 14,800 average Reel reach
                 | Engagement rate 9.8% (engagements ÷ reach)
        Shorts   | 38,000 average views
        Audience | 62% women | 46% aged 25–34 | Maharashtra 14%, Karnataka 12%

        PACKAGES (prices in rupees)
        Dedicated YouTube video ........ ₹30,000
        YouTube integration (60–90 s) ... ₹9,500
        Instagram Reel ................. ₹11,000
        Story set (3 frames + link) ..... ₹3,000
        Tiffin Launch Pack: 1 integration + 1 Reel + 2 story sets
                                ₹26,500 − 10% = ₹23,850</code></pre>
          <p>Where do these prices come from? Riya worked them out from her time and costs. The pricing lesson later in this course shows that maths. Usage rights (a brand using your content in its own ads) and exclusivity (not working with rival brands) cost extra.</p>
          <p>Build the design in a tool such as Canva or Google Docs, and save it as a PDF. Keep it simple and easy to read on a phone. Update the numbers every month or quarter.</p>
        </div>
        <div class="lc-card">
          <h3>Honest numbers only</h3>
          <table class="lc-table">
            <thead><tr><th>Misleading</th><th>Honest</th></tr></thead>
            <tbody>
              <tr><td>"50K+ Instagram family" (she has 31,200)</td><td>"31,200 Instagram followers (31 August 2026)"</td></tr>
              <tr><td>"Average 1.2 lakh views" (her one viral video)</td><td>"21,400 average views per long video, last 10 videos"</td></tr>
              <tr><td>"Engagement 9.8%" with no method</td><td>"9.8% by reach, 4.6% by followers"</td></tr>
              <tr><td>"Trusted by 20+ brands" (she worked with 6)</td><td>"Brands I've worked with:" and a list of real names, with permission</td></tr>
              <tr><td>"My audience loves healthy snacks" (a guess)</td><td>"In my July poll, 64% of 1,100 voters said they pack snacks in tiffins"</td></tr>
            </tbody>
          </table>
          <p>AI often "improves" numbers to sound better. It rounds up, uses your best result as an average or invents a nice audience fact. Read every line of an AI draft against your numbers sheet.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Make me an impressive media kit for brands.</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Write the text for a one-page media kit. Use ONLY the numbers
        below, exactly as given, with their date range and method.
        Do not round up. Do not add audience facts. Sections: bio,
        audience, numbers, past work, packages, contact. Warm, simple
        tone, like I talk in my videos. [paste numbers sheet]</code></pre>
        </div>
        <div class="lc-card">
          <h3>Activity: Riya drafts her kit with AI</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Riya's prompt">She pastes her numbers sheet and asks for media kit text with six sections, in her own warm tone.</li>
              <li data-kind="answer" data-label="AI draft">A friendly draft. But it says "50K+ foodie family across platforms" and "videos regularly cross 1 lakh views".</li>
              <li data-kind="warn" data-label="Numbers made bigger">"50K+" adds followers from two platforms. Many people follow her on both. "1 lakh views" is her one viral video, not her average.</li>
              <li data-kind="tool" data-label="Numbers sheet">Riya checks her sheet: 31,200 Instagram followers, 48,600 YouTube subscribers, 21,400 average views.</li>
              <li data-kind="result" data-label="Fixed lines">She replaces the lines with separate platform numbers, each with a date range and a method.</li>
              <li data-kind="check" data-label="Past work">She emails Masala Mitra. The brand agrees that she can share the Reel results in her kit.</li>
              <li data-kind="check" data-label="Final read">She reads the kit aloud. It sounds like her. She adds "numbers updated to 31 Aug 2026" at the bottom and saves a PDF.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to write your media kit text. Paste your own numbers in the brackets, or keep Riya's to practise.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an editor who writes clear, honest media kits for creators. Use simple English.

        About me: [Riya, home cook in Maharashtra. Tiffin Tales: quick, healthy tiffins in Hinglish for working people and students.]
        Numbers, [1 June to 31 August 2026]:
        [YouTube: 48,600 subscribers, 21,400 average views per long video (last 10 videos), 46% average viewed
        Instagram: 31,200 followers, 14,800 average Reel reach, engagement rate 9.8% by reach, 4.6% by followers
        Audience: 62% women, 46% aged 25-34, top states Maharashtra 14%, Karnataka 12%]
        Past work: [Masala Mitra spice brand, May 2026: 1 Reel, 22,300 reach, 310 link clicks, code used 46 times]
        Packages: [Reel 11,000 rupees; YouTube integration 9,500; story set 3,000]
        My tone: [warm, practical, a little funny]

        Write the kit text in 6 short sections: bio, audience, numbers, past work, packages, contact.
        Rules:
        - Use my numbers exactly. Do not round up or add platforms together.
        - Put the date range and method next to each number.
        - Do not add any audience fact I did not give.
        - End with a list called "Please check" of anything you were unsure about.</pre>
            <ul class="ai-try-checks">
              <li>Does every number match your sheet exactly, with no rounding up?</li>
              <li>Did the AI add followers from different platforms together? Remove that.</li>
              <li>Is there a date range and a method next to each number?</li>
              <li>Does the bio sound like you, not like an advert?</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A media kit is a promise about your audience. Keep it short, dated and true. Use AI for the words and the layout, but take every number from your own dashboards and check it line by line.
        </div>
      HTML
      starter_code: nil
    },
    6 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-create">Content Creation</div>
          <h1 class="lc-title">Pricing Your Work</h1>
        </div>
        <p class="lc-lead">Many creators pick a price because it "sounds fair" or because a brand named a number first. That is how creators end up working for less than their costs. In this lesson, you will build a rate card from your real time and costs. A <strong>rate card</strong> is your price list for each type of sponsored content. You will also learn to price packages, usage rights and exclusivity. We will use Riya's made-up numbers from Tiffin Tales. AI can do the maths quickly and explain it, but the hours and costs must come from you.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 316" role="img" aria-label="How Riya prices a sponsored Reel. Target take-home 60,000 rupees plus monthly costs 33,500, divided by 140 work hours, gives a base rate of 670 rupees an hour. For a Reel: 7 hours times 670 is 4,690, plus 800 for props gives a floor price of 5,490. Times 2, rounded up, gives a rate card price of 11,000. Add-ons: usage rights for 3 months add 30 percent, 3,300 rupees, and exclusivity for 30 days adds 20 percent, 2,200 rupees. The Reel with both costs 16,500.">
            <defs><marker id="bd6a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="20" y="18" text-anchor="start" font-size="12" font-weight="700" fill="#c4b5fd">Step 1: your base hourly rate</text>
              <rect x="20" y="28" width="160" height="56" rx="8" fill="#27274e" stroke="#8b5cf6"/>
              <text x="100" y="51">Target take-home</text><text x="100" y="71" font-weight="700">₹60,000 a month</text>
              <text x="195" y="61" font-size="18" fill="#9b99b8">+</text>
              <rect x="210" y="28" width="160" height="56" rx="8" fill="#27274e" stroke="#8b5cf6"/>
              <text x="290" y="51">Monthly costs</text><text x="290" y="71" font-weight="700">₹33,500</text>
              <text x="385" y="61" font-size="18" fill="#9b99b8">÷</text>
              <rect x="400" y="28" width="150" height="56" rx="8" fill="#27274e" stroke="#8b5cf6"/>
              <text x="475" y="51">Work hours</text><text x="475" y="71" font-weight="700">140 a month</text>
              <text x="565" y="61" font-size="18" fill="#9b99b8">=</text>
              <rect x="580" y="28" width="160" height="56" rx="8" fill="#1f1f44" stroke="#10b981" stroke-width="2"/>
              <text x="660" y="51">Base hourly rate</text><text x="660" y="71" font-weight="700" fill="#6ee7b7">₹670 (rounded up)</text>
              <text x="20" y="122" text-anchor="start" font-size="12" font-weight="700" fill="#93c5fd">Step 2: one sponsored Reel (7 hours, ₹800 props)</text>
              <rect x="20" y="132" width="220" height="60" rx="8" fill="#27274e" stroke="#3b82f6"/>
              <text x="130" y="157">Labour: 7 h × ₹670</text><text x="130" y="178" font-weight="700">= ₹4,690</text>
              <rect x="270" y="132" width="220" height="60" rx="8" fill="#27274e" stroke="#3b82f6"/>
              <text x="380" y="157">Floor price (+ ₹800 props)</text><text x="380" y="178" font-weight="700">= ₹5,490</text>
              <rect x="520" y="132" width="220" height="60" rx="8" fill="#1f1f44" stroke="#22d3ee" stroke-width="2"/>
              <text x="630" y="157">Rate card: × 2, round up</text><text x="630" y="178" font-weight="700" fill="#67e8f9">= ₹11,000</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#bd6a)">
                <line x1="242" y1="162" x2="266" y2="162"/><line x1="492" y1="162" x2="516" y2="162"/>
              </g>
              <text x="20" y="230" text-anchor="start" font-size="12" font-weight="700" fill="#fcd34d">Step 3: add-ons, worked out on the Reel's fee</text>
              <rect x="20" y="240" width="220" height="60" rx="8" fill="#27274e" stroke="#f59e0b"/>
              <text x="130" y="265">Usage rights, 3 months</text><text x="130" y="286" font-weight="700">+30% = +₹3,300</text>
              <text x="255" y="276" font-size="18" fill="#9b99b8">+</text>
              <rect x="270" y="240" width="220" height="60" rx="8" fill="#27274e" stroke="#f59e0b"/>
              <text x="380" y="265">Exclusivity, 30 days</text><text x="380" y="286" font-weight="700">+20% = +₹2,200</text>
              <text x="505" y="276" font-size="18" fill="#9b99b8">=</text>
              <rect x="520" y="240" width="220" height="60" rx="8" fill="#1f1f44" stroke="#ec4899" stroke-width="2"/>
              <text x="630" y="265">Reel with both add-ons</text><text x="630" y="286" font-weight="700" fill="#f9a8d4">₹16,500</text>
            </g>
          </svg>
          <figcaption>Riya's made-up pricing maths for one Reel. First the hourly rate, then the floor price, then the rate card price, then any add-ons.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Three kinds of price</h3>
          <table class="lc-table">
            <thead><tr><th>Price type</th><th>What it means</th><th>Riya's example (made up)</th></tr></thead>
            <tbody>
              <tr><td><strong>Per-post price</strong></td><td>One price for one piece of content, such as a Reel or a story set</td><td>Instagram Reel ₹11,000</td></tr>
              <tr><td><strong>Package price</strong></td><td>A bundle of several pieces at a small discount. Brands like it because it is simple.</td><td>"Tiffin Launch Pack": 1 integration + 1 Reel + 2 story sets = ₹26,500, minus 10% = ₹23,850</td></tr>
              <tr><td><strong>Add-ons</strong></td><td>Extra fees for extra rights, such as usage rights or exclusivity</td><td>Usage rights for 3 months: +30%. Exclusivity for 30 days: +20%.</td></tr>
            </tbody>
          </table>
          <p>Two more words you need. The <strong>floor price</strong> is the lowest price you will ever accept. Below it, you lose money or work for less than your target pay. <strong>Direct costs</strong> are costs for one piece of content only, such as ingredients or props.</p>
        </div>
        <div class="lc-card">
          <h3>Worked example: Riya's rate card</h3>
          <p>Riya tracked her time for two months. She knows how long each type of sponsored content really takes, including calls, scripts and one round of changes. All numbers are made up.</p>
          <pre><code>BASE HOURLY RATE
        (target take-home 60,000 + costs 33,500) ÷ 140 hours = 667.86
        Rounded up = ₹670 an hour

        FLOOR PRICE  = hours × 670 + direct costs
        RATE CARD    = floor × 2, rounded up to the next ₹500</code></pre>
          <table class="lc-table">
            <thead><tr><th>Item</th><th>Hours</th><th>Direct costs</th><th>Floor price</th><th>Rate card</th></tr></thead>
            <tbody>
              <tr><td>Dedicated YouTube video (the whole video is about the brand)</td><td>20</td><td>₹1,500</td><td>₹14,900</td><td>₹30,000</td></tr>
              <tr><td>YouTube integration (a 60–90 second part inside a normal video)</td><td>6</td><td>₹500</td><td>₹4,520</td><td>₹9,500</td></tr>
              <tr><td>Instagram Reel (made fresh for the brand)</td><td>7</td><td>₹800</td><td>₹5,490</td><td>₹11,000</td></tr>
              <tr><td>Story set (3 frames with a link)</td><td>2</td><td>₹0</td><td>₹1,340</td><td>₹3,000</td></tr>
              <tr><td>YouTube Short</td><td>4</td><td>₹500</td><td>₹3,180</td><td>₹6,500</td></tr>
            </tbody>
          </table>
          <p><strong>Why double the floor?</strong> Riya's 140 hours include many hours no brand pays for: pitching, admin and replying to comments. Some months bring no deals at all. The rate card price also reflects the value of a trusted audience, not only her time.</p>
          <p><strong>A value check.</strong> Brands often compare prices per 1,000 people reached. Riya's dedicated video costs about ₹1,402 per 1,000 views (₹30,000 ÷ 21,400 × 1,000). Her Reel costs about ₹743 per 1,000 accounts reached (₹11,000 ÷ 14,800 × 1,000). If a brand says a price is "too high", she can show this maths and her audience match.</p>
          <p>In Google Sheets or Excel, put hours in B2, direct costs in C2 and the hourly rate in F1. Floor price: <code>=B2*$F$1+C2</code>. Rate card price: <code>=CEILING(D2*2,500)</code>, where D2 is the floor. Check AI's maths with formulas like these.</p>
        </div>
        <div class="lc-card">
          <h3>Usage rights, exclusivity and never undercharging</h3>
          <p><strong>Usage rights</strong> are the brand's rights to use your content in its own way, beyond your post. The most valuable is running your video as a paid ad. <strong>Exclusivity</strong> means you agree not to work with rival brands for a time. Both cost you something, so both have a price.</p>
          <table class="lc-table">
            <thead><tr><th>Riya's rule (made up)</th><th>Price</th><th>Limit</th></tr></thead>
            <tbody>
              <tr><td>Brand shares or reposts her post on its own pages, with credit</td><td>Included</td><td>Organic posts only, no paid ads</td></tr>
              <tr><td>Usage rights: brand runs her content as paid ads</td><td>+30% of the item's fee for each 3 months</td><td>At most 12 months. She does not sell rights "in perpetuity" (for ever).</td></tr>
              <tr><td>Exclusivity: no rival brands</td><td>+20% of the item's fee for each 30 days</td><td>A narrow category only, such as "steel tiffin boxes", and at most 90 days</td></tr>
            </tbody>
          </table>
          <p>Riya works out each add-on on the item's rate card fee. For a Reel: usage for 3 months is +₹3,300 and exclusivity for 30 days is +₹2,200. Together: ₹11,000 + ₹3,300 + ₹2,200 = ₹16,500. These percentages are Riya's own choices, not a market rule. Set your own and explain them simply.</p>
          <p><strong>Never undercharge.</strong> Never go below your floor price. A free product is not a fee: you cannot pay your editor with a tiffin set. Be careful with "exposure" offers. A brand's shout-out rarely pays your bills.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>How much should a food creator with 48K subscribers charge?</code></pre>
          <p>AI will guess a "market rate". It may be far too low or too high, and it has no idea of your costs.</p>
          <p><strong>Better prompt:</strong></p>
          <pre><code>My target take-home is 60,000 rupees a month. My costs are
        33,500 a month. I work 140 hours a month. Work out my hourly
        rate, rounded up to the next 10. Then, for each item below,
        work out floor price = hours x rate + direct costs, and rate
        card price = floor x 2, rounded up to the next 500. Show
        every step in a table. Do not use "market rates".
        [paste items with hours and direct costs]</code></pre>
        </div>
        <div class="lc-card">
          <h3>Activity: build a rate card</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put Riya's steps for building her rate card in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Decide a target take-home pay and list every monthly cost</li>
              <li data-order="2">Track the real hours she works in a month, including admin</li>
              <li data-order="3">Divide target pay plus costs by her hours to get an hourly rate</li>
              <li data-order="4">Time each type of sponsored content and note its direct costs</li>
              <li data-order="5">Work out a floor price for each item, then double it for the rate card</li>
              <li data-order="6">Set rules and prices for usage rights and exclusivity</li>
              <li data-order="7">Check every sum with spreadsheet formulas before a brand sees it</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to build your rate card from your own time and costs. Change the numbers in brackets, or keep Riya's to practise.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a pricing coach for small content creators in India. Use simple English and show every step of the maths.

        My target take-home pay: [60,000 rupees a month]
        My monthly costs: [33,500 rupees]
        Hours I work each month, including admin: [140]
        My sponsored content (hours each, direct costs each):
        [Dedicated YouTube video: 20 hours, 1,500
        YouTube integration 60-90 seconds: 6 hours, 500
        Instagram Reel: 7 hours, 800
        Story set of 3 frames: 2 hours, 0
        YouTube Short: 4 hours, 500]

        Tasks:
        1. Hourly rate = (target pay + costs) / hours. Round up to the next 10.
        2. Table: item, hours, direct costs, floor price (hours x rate + direct costs), rate card price (floor x 2, rounded up to the next 500).
        3. One package of 3 or 4 items with a 10% discount.
        4. Add-on prices for each item: usage rights for 3 months (+30%) and exclusivity for 30 days (+20%).
        5. Three short lines I can use when a brand says my price is too high.
        Use only my numbers. Do not quote "market rates". Add one line saying this is not financial or tax advice.</pre>
            <ul class="ai-try-checks">
              <li>Check the hourly rate and two floor prices yourself with a spreadsheet. With the sample numbers, the rate is ₹670 and the Reel is ₹11,000.</li>
              <li>Is every rate card price at least double its floor price?</li>
              <li>Are the add-ons worked out on each item's fee, not on the package?</li>
              <li>Are the "too high" replies polite and based on your numbers, not on pressure?</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Your price starts with your time and costs, not with a brand's budget. Know your floor price before any talk about money. Charge separately for usage rights and exclusivity, because they take something extra from you.
        </div>
      HTML
      starter_code: nil
    },
    7 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-create">Content Creation</div>
          <h1 class="lc-title">Finding and Pitching Brands</h1>
        </div>
        <p class="lc-lead">You do not have to wait for brands to find you. A short, honest pitch to the right brand often works better than hundreds of random messages. A <strong>pitch</strong> is a message that offers a brand a clear content idea, with your numbers and your price. In this lesson, you will learn to choose brands that fit and research them with AI. Then you will write a pitch email and a DM (direct message), and follow up politely. You will also see how agencies and platform tools can help. We follow Riya as she pitches Tadka Tech, a made-up kitchen appliance brand.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="A five-step pitching workflow: list brands you already use, check fit, research the brand, send a pitch, then follow up after 7 and 14 days. Below, three made-up brands with fit notes. SteelNest: strong fit, tiffin boxes for working women. Tadka Tech: good fit, but its 90-day exclusivity is too wide. MilletMunch: check first, its diabetes claim needs proof.">
            <defs><marker id="bd7a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="10" y="20" width="130" height="56" rx="8" fill="#27274e" stroke="#8b5cf6"/><text x="75" y="44" font-weight="700">1. List</text><text x="75" y="63" font-size="11" fill="#9b99b8">brands you use</text>
              <rect x="162" y="20" width="130" height="56" rx="8" fill="#27274e" stroke="#3b82f6"/><text x="227" y="44" font-weight="700">2. Check fit</text><text x="227" y="63" font-size="11" fill="#9b99b8">audience, values</text>
              <rect x="314" y="20" width="130" height="56" rx="8" fill="#27274e" stroke="#22d3ee"/><text x="379" y="44" font-weight="700">3. Research</text><text x="379" y="63" font-size="11" fill="#9b99b8">products, contact</text>
              <rect x="466" y="20" width="130" height="56" rx="8" fill="#27274e" stroke="#10b981"/><text x="531" y="44" font-weight="700">4. Pitch</text><text x="531" y="63" font-size="11" fill="#9b99b8">email or DM</text>
              <rect x="618" y="20" width="132" height="56" rx="8" fill="#27274e" stroke="#f59e0b"/><text x="684" y="44" font-weight="700">5. Follow up</text><text x="684" y="63" font-size="11" fill="#9b99b8">day 7, day 14</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#bd7a)">
                <line x1="141" y1="48" x2="158" y2="48"/><line x1="293" y1="48" x2="310" y2="48"/><line x1="445" y1="48" x2="462" y2="48"/><line x1="597" y1="48" x2="614" y2="48"/>
              </g>
              <text x="10" y="112" text-anchor="start" font-size="12" font-weight="700" fill="#c4b5fd">Riya's fit check (made-up brands)</text>
              <rect x="10" y="124" width="236" height="160" rx="10" fill="#1f1f44" stroke="#10b981" stroke-width="2"/>
              <text x="128" y="150" font-weight="700">SteelNest</text>
              <text x="128" y="172" font-weight="700" fill="#6ee7b7">Strong fit</text>
              <text x="128" y="202" font-size="12">Steel tiffin boxes</text>
              <text x="128" y="222" font-size="12">Buyers: working women</text>
              <text x="128" y="242" font-size="12">25–34, Maharashtra, Karnataka</text>
              <text x="128" y="268" font-size="11" fill="#9b99b8">It contacted Riya first</text>
              <rect x="262" y="124" width="236" height="160" rx="10" fill="#1f1f44" stroke="#f59e0b" stroke-width="2"/>
              <text x="380" y="150" font-weight="700">Tadka Tech</text>
              <text x="380" y="172" font-weight="700" fill="#fcd34d">Good fit, one risk</text>
              <text x="380" y="202" font-size="12">Electric lunch-box heater</text>
              <text x="380" y="222" font-size="12">Fits office tiffins</text>
              <text x="380" y="242" font-size="12">Wants 90-day exclusivity</text>
              <text x="380" y="268" font-size="11" fill="#9b99b8">"all kitchen products": too wide</text>
              <rect x="514" y="124" width="236" height="160" rx="10" fill="#1f1f44" stroke="#ec4899" stroke-width="2"/>
              <text x="632" y="150" font-weight="700">MilletMunch</text>
              <text x="632" y="172" font-weight="700" fill="#f9a8d4">Check first</text>
              <text x="632" y="202" font-size="12">Millet snacks</text>
              <text x="632" y="222" font-size="12">Site says it</text>
              <text x="632" y="242" font-size="12">"controls diabetes"</text>
              <text x="632" y="268" font-size="11" fill="#9b99b8">Ask for proof before any deal</text>
            </g>
          </svg>
          <figcaption>Pitch a few brands that truly fit. Check each one before you write, and note any risk, such as a wide exclusivity or a health claim.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Finding brands that fit</h3>
          <p>The best brands to pitch are often ones you already use. You can speak about them honestly, and your viewers already see them in your videos. Check fit on three points:</p>
          <ul class="lc-list">
            <li><strong>Audience fit.</strong> Do the brand's buyers look like your viewers? Riya's viewers are mostly women aged 25 to 34 in Maharashtra and Karnataka who pack tiffins.</li>
            <li><strong>Value fit.</strong> Would you be happy to show the product to your viewers without the money? If not, skip it.</li>
            <li><strong>Risk check.</strong> Look for claims you cannot prove, bad reviews about unpaid creators, or deal terms that would block other brands.</li>
          </ul>
          <p><strong>Where to find brands:</strong> products in your own kitchen or desk, brands that sponsor creators in your niche, local businesses in your city, and stalls at trade fairs. Some platforms also have tools that connect brands and creators. Instagram has a creator marketplace for eligible professional accounts. YouTube has a brand-partnership tool for creators in its Partner Program (earlier called BrandConnect; check its current name). Both are available in India, with rules that change. Check each platform's current help pages.</p>
          <p><strong>Agencies and influencer platforms</strong> find deals for creators and take a fee or a share. A good agency can save time. Before you join, check real reviews and read the contract. Never pay a "registration fee" to receive brand deals. Watch for fake brand emails with strange links or attachments.</p>
        </div>
        <div class="lc-card">
          <h3>Research with AI, then check</h3>
          <p>Paste the brand's "About" page and a few product pages into your AI tool. Ask it to summarise the products, the buyers the brand seems to target and any claims that need proof. AI cannot know a brand's budget or its private plans. It may also mix up brands with similar names. Check the website, the social pages and recent posts yourself.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Write a pitch to Tadka Tech. Make it impressive.</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Here is Tadka Tech's product page for an electric lunch-box
        heater (pasted below). Summarise in 5 bullet points: what it
        does, who it seems made for, price range, any claims that
        need proof, and one content idea for office tiffins. Say
        "not on the page" if you cannot find something. Do not guess.</code></pre>
        </div>
        <div class="lc-card">
          <h3>Worked example: Riya's pitch to Tadka Tech</h3>
          <p>Riya found the marketing manager's work email on the brand's website. She sent this on 8 September 2026. Every number comes from her dashboards. She wrote the idea herself and used AI only to make it shorter.</p>
          <pre><code>Subject: Tiffin Tales x Tadka Tech: hot office lunches in Maharashtra and Karnataka

        Hi [first name],

        I'm Riya from Tiffin Tales, a Hinglish cooking channel about
        quick, healthy tiffins for working people. 48,600 YouTube
        subscribers, 21,400 average views per long video.

        My viewers pack lunch for work: 62% women, 46% aged 25-34,
        top states Maharashtra and Karnataka (YouTube Studio, last 90 days).

        Idea: "5 tiffins that reheat well at your desk". I would test
        your lunch-box heater in my own routine for 2 weeks first.
        If it works well for me, I show it honestly in a 60-90 second
        part of a normal video. If not, I tell you privately.

        Past work: Masala Mitra Reel (May 2026), 22,300 accounts
        reached, 310 link clicks.

        Options: YouTube integration Rs 9,500, or my Tiffin Launch
        Pack (integration + Reel + 2 story sets) Rs 23,850. Every
        sponsored post is clearly labelled as an ad. Media kit attached.

        Could we talk for 15 minutes next week?
        Riya | Tiffin Tales | [work email]</code></pre>
          <p><strong>Why it works:</strong> it is short, it shows the audience match, it offers one clear idea and it gives prices. It also promises honesty and a label, not sales. She never writes "guaranteed results".</p>
          <p><strong>DM version</strong> (for Instagram, when there is no email): "Hi Tadka Tech! I'm Riya from @tiffintales. My viewers are working people who pack tiffins, mostly in Maharashtra and Karnataka. I have an idea for your lunch-box heater. Can I email my short proposal? Who is the right person?"</p>
          <p><strong>Follow-ups.</strong> No reply after 7 days? Send one short, friendly reminder (15 September). Send a last one a week later (22 September). Then stop and pitch another brand. If Tadka Tech asks for its usual 90-day exclusivity on "all kitchen products", Riya will ask to narrow it to lunch-box heaters. The wide version would block her from SteelNest.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: pitch now, check first, or skip?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Riya found these brand ideas. Sort each one.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="pitch" data-label="Pitch now"></div>
              <div data-sorter-target="bucket" data-bucket="check" data-label="Check first"></div>
              <div data-sorter-target="bucket" data-bucket="skip" data-label="Skip"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="pitch" data-why="She already uses it, her viewers are its buyers and there are no risky claims.">A small spice-box maker whose masala dabba she has used for a year</li>
              <li data-bucket="check" data-why="A health claim like this needs strong proof. She must ask before any pitch.">A millet snack brand whose website says it "controls diabetes"</li>
              <li data-bucket="skip" data-why="No link with her audience of home cooks. Viewers would feel it is only for money.">A crypto trading app that offers a high fee for a shout-out</li>
              <li data-bucket="check" data-why="Good product fit, but the exclusivity would block other kitchen brands. She must negotiate it first.">An appliance brand that always asks for 90-day exclusivity on all kitchen products</li>
              <li data-bucket="skip" data-why="Real brands do not charge creators to get deals. This is a common scam.">An "agency" that asks for a ₹2,000 registration fee to send her brand deals</li>
              <li data-bucket="pitch" data-why="Clear fit with office tiffins and working viewers. A good product to test honestly.">A lunch bag company that sells insulated bags for office workers</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to draft a pitch email, a DM and a follow-up for one brand. Replace the details in brackets with your own, or keep Riya's.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an editor who helps creators write short, honest brand pitches. Use simple, friendly English.

        About me: [Riya, Tiffin Tales, Hinglish cooking channel about quick, healthy tiffins for working people]
        My numbers (with date range): [YouTube 48,600 subscribers, 21,400 average views per long video; audience 62% women, 46% aged 25-34, top states Maharashtra and Karnataka; last 90 days]
        Past work: [Masala Mitra Reel, May 2026: 22,300 reach, 310 link clicks]
        Brand: [Tadka Tech, electric lunch-box heater]
        My content idea: [test it for 2 weeks, then show it in a 60-90 second part of a video about tiffins that reheat well]
        My prices: [YouTube integration 9,500 rupees; package of integration + Reel + 2 story sets 23,850 rupees]

        Write:
        1. A pitch email under 150 words, with a clear subject line.
        2. An Instagram DM under 50 words that asks for the right email.
        3. A follow-up email under 60 words for 7 days later.
        Rules: use only my numbers. No "guaranteed" results or sales. Say sponsored posts will be clearly labelled as ads. Sound like a real person, not an advert.</pre>
            <ul class="ai-try-checks">
              <li>Does every number match your dashboards, with no rounding up?</li>
              <li>Is there one clear idea and one clear ask, such as a short call?</li>
              <li>Did the AI promise sales, reach or "viral" results? Remove that.</li>
              <li>Read it aloud. Does it sound like you?</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A good pitch is short, specific and true. Pitch brands you would recommend anyway, show how your audience matches their buyers and offer one clear idea with a price. Let AI tidy the words, but the idea and the numbers must be yours.
        </div>
      HTML
      starter_code: nil
    },
    8 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-create">Content Creation</div>
          <h1 class="lc-title">Negotiating Deals</h1>
        </div>
        <p class="lc-lead">A brand's first offer is a starting point, not a final answer. <strong>Negotiating</strong> means talking about the price and the terms until both sides agree on a fair deal. Many creators accept the first offer because they fear losing the brand. In this lesson, you will learn what to negotiate: scope, deliverables, usage rights, exclusivity, payment terms and revisions. You will do the maths on Riya's first offer from SteelNest, a made-up tiffin-box brand. Then you will write a polite counter-offer with AI's help. This is general education, not legal or financial advice.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 340" role="img" aria-label="Comparison of SteelNest's first offer and the deal Riya agreed after her counter-offer. Fee: 15,000 rupees plus a tiffin set, changed to 27,150 rupees. Scope: 1 dedicated video, 2 Reels and 3 story sets, changed to 1 integration, 1 Reel and 2 story sets. Usage rights: in perpetuity in all media, changed to 3 months of paid ads on the Reel. Exclusivity: 90 days in kitchenware, changed to none. Payment: 60 days after posting, changed to 50 percent advance and 50 percent within 30 days. Revisions: until approved, changed to one round each for script and edit.">
            <defs><marker id="bd8a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <rect x="180" y="10" width="270" height="36" rx="8" fill="#27274e" stroke="#ec4899"/>
              <text x="315" y="33" text-anchor="middle" font-weight="700" fill="#f9a8d4">SteelNest's first offer</text>
              <rect x="480" y="10" width="270" height="36" rx="8" fill="#27274e" stroke="#10b981"/>
              <text x="615" y="33" text-anchor="middle" font-weight="700" fill="#6ee7b7">Agreed after counter-offer</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#bd8a)">
                <line x1="452" y1="80" x2="476" y2="80"/><line x1="452" y1="126" x2="476" y2="126"/><line x1="452" y1="172" x2="476" y2="172"/><line x1="452" y1="218" x2="476" y2="218"/><line x1="452" y1="264" x2="476" y2="264"/><line x1="452" y1="310" x2="476" y2="310"/>
              </g>
              <g font-weight="700" fill="#c4b5fd">
                <text x="14" y="85">Fee</text><text x="14" y="131">Scope</text><text x="14" y="177">Usage rights</text><text x="14" y="223">Exclusivity</text><text x="14" y="269">Payment</text><text x="14" y="315">Revisions</text>
              </g>
              <g fill="#1f1f44">
                <rect x="180" y="60" width="270" height="40" rx="6"/><rect x="180" y="106" width="270" height="40" rx="6"/><rect x="180" y="152" width="270" height="40" rx="6"/><rect x="180" y="198" width="270" height="40" rx="6"/><rect x="180" y="244" width="270" height="40" rx="6"/><rect x="180" y="290" width="270" height="40" rx="6"/>
                <rect x="480" y="60" width="270" height="40" rx="6"/><rect x="480" y="106" width="270" height="40" rx="6"/><rect x="480" y="152" width="270" height="40" rx="6"/><rect x="480" y="198" width="270" height="40" rx="6"/><rect x="480" y="244" width="270" height="40" rx="6"/><rect x="480" y="290" width="270" height="40" rx="6"/>
              </g>
              <g font-size="12.5">
                <text x="192" y="85">₹15,000 + tiffin set (₹3,200)</text>
                <text x="192" y="131">1 video + 2 Reels + 3 story sets</text>
                <text x="192" y="177">In perpetuity, all media</text>
                <text x="192" y="223">90 days, all kitchenware</text>
                <text x="192" y="269">60 days after posting</text>
                <text x="192" y="315">"Until approved"</text>
                <text x="492" y="85">₹23,850 + ₹3,300 = ₹27,150</text>
                <text x="492" y="123">Launch Pack: 1 integration</text>
                <text x="492" y="177">3 months paid ads, Reel only</text>
                <text x="492" y="223">None (SteelNest dropped it)</text>
                <text x="492" y="269">50% advance, 50% in 30 days</text>
                <text x="492" y="315">1 round for script, 1 for edit</text>
              </g>
              <text x="492" y="139" font-size="11.5" fill="#9b99b8">+ 1 Reel + 2 story sets</text>
            </g>
          </svg>
          <figcaption>Riya's made-up deal with SteelNest, before and after her polite counter-offer. She changed the scope and the terms, not only the price.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>What you can negotiate</h3>
          <table class="lc-table">
            <thead><tr><th>Term</th><th>Plain meaning</th><th>What to ask for</th></tr></thead>
            <tbody>
              <tr><td><strong>Scope and deliverables</strong></td><td>Exactly what you will make: how many posts, which formats, how long</td><td>A clear list with dates. If the budget is small, offer less content, not a lower price.</td></tr>
              <tr><td><strong>Fee</strong></td><td>The money paid for the work</td><td>Your rate card price. Never go below your floor price.</td></tr>
              <tr><td><strong>Usage rights</strong></td><td>How the brand may use your content, and for how long</td><td>A time limit, named places (for example Instagram ads in India) and an extra fee for paid ads</td></tr>
              <tr><td><strong>Exclusivity</strong></td><td>You cannot work with rival brands for a time</td><td>A narrow category, a short time and an extra fee</td></tr>
              <tr><td><strong>Payment terms</strong></td><td>When and how you get paid</td><td>An advance (part of the fee before you start) and a short time for the rest</td></tr>
              <tr><td><strong>Revisions</strong></td><td>Changes the brand can ask for</td><td>A fixed number of rounds. Extra rounds are paid.</td></tr>
              <tr><td><strong>Kill fee</strong></td><td>A fee if the brand cancels after you start work</td><td>For example 50% of the fee once you have started</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Worked example: the maths on SteelNest's offer</h3>
          <p>SteelNest emailed Riya on 2 September 2026. It offered ₹15,000 and a free 5-piece tiffin set for 1 dedicated YouTube video, 2 Reels and 3 story sets. It also asked for rights "in perpetuity, all media", 90-day exclusivity in kitchenware, payment 60 days after posting and "revisions until approved". Riya checked it against her rate card (all made up):</p>
          <pre><code>AT HER RATE CARD   30,000 + (2 × 11,000) + (3 × 3,000) = ₹61,000
        AT HER FLOOR       14,900 + (2 × 5,490) + (3 × 1,340)  = ₹29,900
        OFFER              ₹15,000 = 24.6% of rate card, 50.2% of floor

        HOURS              20 + (2 × 7) + (3 × 2) = 40 hours
        DIRECT COSTS       1,500 + (2 × 800) = ₹3,100
        PAY PER HOUR       (15,000 − 3,100) ÷ 40 = ₹297.50  (target: ₹670)

        90-DAY EXCLUSIVITY at her rates: 3 × 20% = +60% of 61,000 = +₹36,600
        RIGHTS FOR EVER    not for sale at any price</code></pre>
          <p>The offer is about half her floor price. The tiffin set does not change that. It is not cash, and she cannot pay her editor with it. It is also a gift from the brand, so the posts need an ad label. It may count as income for tax. Ask a CA.</p>
          <p><strong>Her plan:</strong> say thank you, show the maths simply and give three options. Options let the brand say "yes" to something, instead of only "no".</p>
          <pre><code>Hi [name],

        Thank you for thinking of Tiffin Tales! I love that SteelNest is
        made for office tiffins, and my viewers pack lunch every day.

        For 1 dedicated video, 2 Reels and 3 story sets, my rate card
        price is Rs 61,000. So I can't do the full list for Rs 15,000.
        Here are three options:

        A) Full campaign: Rs 61,000 less 10% = Rs 54,900
        B) Within your budget: 1 Reel + 1 story set = Rs 14,000
        C) Tiffin Launch Pack: 1 integration in a normal video +
           1 Reel + 2 story sets = Rs 23,850

        Terms that work for me:
        - Paid-ads use: +30% of the item's fee for each 3 months.
          I don't offer rights for ever.
        - Exclusivity: 30 days, steel tiffin boxes only, +20%.
        - Payment: 50% advance, 50% within 30 days of posting.
        - One round of changes on the script and one on the edit.

        Every post will carry a clear "Paid partnership" label.
        Happy to talk this week!
        Riya</code></pre>
          <p><strong>The result.</strong> On 9 September 2026, SteelNest chose option C with 3 months of paid-ads use on the Reel. It dropped exclusivity to save money. Deal: ₹23,850 + ₹3,300 = ₹27,150, with ₹13,575 in advance. The work takes 17 hours, with ₹1,300 of direct costs. That is about ₹1,521 an hour after direct costs. Riya also has a written list of what was agreed, for the contract.</p>
        </div>
        <div class="lc-card">
          <h3>Rules for a polite, firm counter-offer</h3>
          <ul class="lc-list">
            <li><strong>Be warm first.</strong> Thank the brand and say what you like about the product.</li>
            <li><strong>Change the scope, not only the price.</strong> A small budget buys less content, not cheaper content.</li>
            <li><strong>Give reasons in one line.</strong> "My rate card price is based on the time each piece takes" is enough.</li>
            <li><strong>Know your walk-away point.</strong> Riya will not go below her floor price or sell rights for ever.</li>
            <li><strong>Get everything in writing.</strong> A call is fine, but send an email afterwards that lists what you agreed.</li>
          </ul>
          <p>AI is good at making your email polite and clear. It can also play the brand in a practice chat, so you can rehearse hard questions. But AI does not know what brands really pay. Do not let it lower your price with a guessed "industry rate".</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Reply to this brand and ask for more money.</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Write a warm, short counter-offer email. The brand offered
        15,000 rupees. My rate card price for this scope is 61,000.
        Give three options: [A, B, C with prices]. List my terms:
        [usage, exclusivity, payment, revisions]. Do not apologise
        for my prices. Do not change any number. Under 200 words.</code></pre>
        </div>
        <div class="lc-card">
          <h3>Activity: Riya prepares her counter-offer</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="tool" data-label="Rate sheet">Riya enters SteelNest's scope in her rate sheet.</li>
              <li data-kind="result" data-label="Sheet shows">Rate card ₹61,000. Floor ₹29,900. The offer of ₹15,000 is 24.6% of her rate card.</li>
              <li data-kind="user" data-label="Riya's prompt">"Draft a warm counter-offer with three options and my terms. Keep all my numbers exactly."</li>
              <li data-kind="answer" data-label="AI draft">A friendly email. But it says "I know my prices are high, sorry" and offers "a special discount of 30% for SteelNest".</li>
              <li data-kind="warn" data-label="Price changed">Riya never asked for a 30% discount. The apology also makes her prices sound unfair. She deletes both lines.</li>
              <li data-kind="user" data-label="Practice">She asks AI to play SteelNest's manager and push back hard. She practises calm replies.</li>
              <li data-kind="check" data-label="Final check">She checks every number against her sheet. She checks the tone by reading it aloud. Then she sends it.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to check a brand offer against your rates and draft a polite counter-offer. Change the details in brackets, or keep SteelNest's offer.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a calm, practical negotiation coach for content creators. Use simple English.

        The brand's offer: [15,000 rupees + a free product worth 3,200 for 1 dedicated YouTube video, 2 Instagram Reels and 3 story sets. They want rights in perpetuity in all media, 90-day exclusivity in kitchenware, payment 60 days after posting and revisions until approved.]
        My rate card: [dedicated video 30,000; Reel 11,000; story set 3,000; integration 9,500; package of 1 integration + 1 Reel + 2 story sets 23,850]
        My floor prices: [dedicated video 14,900; Reel 5,490; story set 1,340]
        My terms: [paid-ads use +30% per 3 months, no rights for ever; exclusivity +20% per 30 days, narrow category only; 50% advance, rest within 30 days; one round of changes each for script and edit]

        Tasks:
        1. Work out the offer as a % of my rate card and of my floor. Show the maths.
        2. List each term I should push back on, and why, in one line each.
        3. Write a warm counter-offer email (under 200 words) with 3 options at different scopes.
        4. Give 3 calm replies if the brand says "that is above our budget".
        Do not change my prices or apologise for them. Note that this is not legal advice.</pre>
            <ul class="ai-try-checks">
              <li>Check the percentages yourself. With the sample data: 24.6% of the rate card and 50.2% of the floor.</li>
              <li>Does each option change the scope, instead of cutting your price?</li>
              <li>Did the AI keep every number exactly as you gave it?</li>
              <li>Is the tone warm and firm, with no apology for your prices?</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Negotiate the whole deal, not only the fee. Usage rights, exclusivity, payment dates and revisions can be worth more than the price itself. Be polite, offer options, know your floor and put every agreed term in writing.
        </div>
      HTML
      starter_code: nil
    },
    9 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-create">Content Creation</div>
          <h1 class="lc-title">Reading Creator Contracts</h1>
        </div>
        <p class="lc-lead">A <strong>contract</strong> is a written agreement that both sides must follow. Once you sign it, the contract usually matters more than any friendly email or call. Brand contracts often come from a standard template, so they may not match what you agreed. In this lesson, you will learn the key parts of a creator contract and the most common red flags. A <strong>red flag</strong> is a warning sign: a clause that could cost you money, rights or trust. You will check SteelNest's draft with AI's help and prepare questions for a lawyer. This is general education, not legal advice. For a real contract, ask a qualified lawyer.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 330" role="img" aria-label="SteelNest's made-up contract draft with each clause marked. Green, matches the email: deliverables and posting date. Red, must change: payment 60 days after posting, rights in perpetuity worldwide, 90-day kitchenware exclusivity, revisions until approved, use of name, face and voice including AI versions, a 50,000-view guarantee. Amber, ask a lawyer: cancellation with no payment, and an indemnity clause.">
            <defs><marker id="bd9a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <rect x="10" y="10" width="740" height="310" rx="12" fill="#1f1f44" stroke="#4b4a78"/>
              <text x="30" y="38" font-weight="700">SteelNest creator agreement: draft, 14 September 2026</text>
              <text x="730" y="38" text-anchor="end" font-size="11" fill="#9b99b8">compared with the 9 September email</text>
              <g font-size="12.5">
                <rect x="26" y="54" width="10" height="22" rx="2" fill="#10b981"/><text x="46" y="70">1. Deliverables: integration, Reel, 2 story sets; post on 12 Oct</text>
                <rect x="26" y="82" width="10" height="22" rx="2" fill="#ef4444"/><text x="46" y="98">2. Payment: 100% within 60 days after posting</text>
                <rect x="26" y="110" width="10" height="22" rx="2" fill="#ef4444"/><text x="46" y="126">3. Usage: "in perpetuity, all media, worldwide"</text>
                <rect x="26" y="138" width="10" height="22" rx="2" fill="#ef4444"/><text x="46" y="154">4. Exclusivity: 90 days, all kitchenware</text>
                <rect x="26" y="166" width="10" height="22" rx="2" fill="#ef4444"/><text x="46" y="182">5. Revisions until approved</text>
                <rect x="26" y="194" width="10" height="22" rx="2" fill="#ef4444"/><text x="46" y="210">6. Name, face, voice, "including AI-generated versions"</text>
                <rect x="26" y="222" width="10" height="22" rx="2" fill="#ef4444"/><text x="46" y="238">7. Creator guarantees 50,000 views</text>
                <rect x="26" y="250" width="10" height="22" rx="2" fill="#f59e0b"/><text x="46" y="266">8. Brand may cancel any time, no payment</text>
                <rect x="26" y="278" width="10" height="22" rx="2" fill="#f59e0b"/><text x="46" y="294">9. Creator indemnifies brand for all claims</text>
              </g>
              <rect x="548" y="56" width="186" height="248" rx="10" fill="#27274e"/>
              <g font-size="12">
                <rect x="562" y="76" width="14" height="14" rx="2" fill="#10b981"/><text x="584" y="88">Matches the email</text>
                <rect x="562" y="104" width="14" height="14" rx="2" fill="#ef4444"/><text x="584" y="116">Must change</text>
                <rect x="562" y="132" width="14" height="14" rx="2" fill="#f59e0b"/><text x="584" y="144">Ask a lawyer</text>
                <line x1="562" y1="164" x2="720" y2="164" stroke="#4b4a78"/>
                <text x="562" y="188" fill="#9b99b8">The draft still has the</text>
                <text x="562" y="206" fill="#9b99b8">first offer's terms. It</text>
                <text x="562" y="224" fill="#9b99b8">does not match what</text>
                <text x="562" y="242" fill="#9b99b8">SteelNest agreed by</text>
                <text x="562" y="260" fill="#9b99b8">email on 9 September.</text>
                <text x="562" y="288" font-weight="700" fill="#fca5a5">Do not sign yet.</text>
              </g>
            </g>
          </svg>
          <figcaption>Riya's made-up contract draft from SteelNest. Only one clause matches what was agreed. Six must change, and two need a lawyer's view. The full change list below adds one more: brand edits.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The key clauses in a creator contract</h3>
          <p>A <strong>clause</strong> is one numbered part of a contract. These are the ones to read slowly.</p>
          <table class="lc-table">
            <thead><tr><th>Clause</th><th>What it covers</th><th>What to look for</th></tr></thead>
            <tbody>
              <tr><td><strong>Deliverables and dates</strong></td><td>What you make and when you post</td><td>Exactly what you agreed, with dates you can meet</td></tr>
              <tr><td><strong>Fee and payment</strong></td><td>How much, when and how you are paid</td><td>The agreed advance and a short payment time after your invoice</td></tr>
              <tr><td><strong>Usage rights and ownership</strong></td><td>Who owns the content, and how the brand may use it</td><td>A time limit, places and media named, and no transfer of ownership unless agreed and paid</td></tr>
              <tr><td><strong>Exclusivity</strong></td><td>Which brands you cannot work with, and for how long</td><td>A narrow category and a clear end date</td></tr>
              <tr><td><strong>Approvals and revisions</strong></td><td>How the brand reviews your work</td><td>A fixed number of rounds and a time limit for the brand's feedback</td></tr>
              <tr><td><strong>Name and likeness</strong></td><td>Use of your name, face and voice</td><td>Only in the agreed content. No AI copies of your face or voice.</td></tr>
              <tr><td><strong>Cancellation</strong></td><td>What happens if either side stops the deal</td><td>A kill fee if the brand cancels after you start</td></tr>
              <tr><td><strong>Indemnity</strong></td><td>Who pays if someone makes a legal claim</td><td>Each side covers its own actions. You should not pay for problems with the brand's product.</td></tr>
              <tr><td><strong>Disclosure</strong></td><td>How the posts are labelled as ads</td><td>A clear label. No request to hide or remove it.</td></tr>
            </tbody>
          </table>
          <p><strong>Two general legal points (India).</strong> Under the Copyright Act, 1957, a transfer of copyright (an "assignment") must be in writing. If it does not state a time period, the law treats it as five years. If it does not name the places, it is treated as India only. But a contract that clearly says "in perpetuity, worldwide" can override these defaults. Second, if you are registered as a micro or small enterprise (Udyam), a law called the MSMED Act sets payment time limits for buyers. Ask a lawyer or CA whether this applies to you.</p>
        </div>
        <div class="lc-card">
          <h3>Worked example: fixing SteelNest's draft</h3>
          <p>SteelNest sent the draft on 14 September 2026. Riya compared it, clause by clause, with the email where SteelNest agreed the deal. Here is her change list (all made up):</p>
          <table class="lc-table">
            <thead><tr><th>Clause in the draft</th><th>Why it is a problem</th><th>Riya's requested change</th></tr></thead>
            <tbody>
              <tr><td>Payment 60 days after posting</td><td>They agreed 50% in advance</td><td>50% (₹13,575) on signing, 50% within 30 days of posting</td></tr>
              <tr><td>Rights "in perpetuity, all media, worldwide"</td><td>They paid for 3 months of paid ads on the Reel only</td><td>Paid ads with the Reel for 3 months, in India. Riya keeps ownership.</td></tr>
              <tr><td>90-day kitchenware exclusivity</td><td>SteelNest dropped it by email. It would block Tadka Tech.</td><td>Delete the clause</td></tr>
              <tr><td>Revisions until approved</td><td>No limit on her unpaid work</td><td>One round on the script and one on the edit. Extra rounds at ₹670 an hour.</td></tr>
              <tr><td>Name, face and voice "including AI-generated versions"</td><td>The brand could make new ads with an AI copy of her</td><td>Use only inside the agreed content. No AI versions of her face or voice.</td></tr>
              <tr><td>Brand may edit the content</td><td>Edits could change what she says</td><td>No edits without her written OK</td></tr>
              <tr><td>50,000-view guarantee</td><td>She cannot control views. Her average is 21,400.</td><td>Delete. She promises the work, not the results.</td></tr>
            </tbody>
          </table>
          <p>For cancellation and indemnity, Riya asked a lawyer. The fixed version has a 50% kill fee if SteelNest cancels after she starts. Each side is responsible for its own claims. She signed it on 21 September 2026.</p>
          <p><strong>Questions Riya took to her lawyer:</strong></p>
          <ul class="lc-list">
            <li>Does the usage clause keep ownership with me, or does it transfer my copyright?</li>
            <li>If a viewer complains about the product, who is responsible under this indemnity clause?</li>
            <li>Is the cancellation clause fair, and how do I claim the kill fee?</li>
            <li>What happens if the brand pays late? Can I add interest?</li>
            <li>Does anything here stop me from working with Tadka Tech?</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Using AI to read a contract, safely</h3>
          <p>AI can turn legal words into plain English. It can list clauses, compare them with your agreed terms and help you write questions. It cannot tell you that a contract is "safe". It may miss a clause or explain the law wrongly.</p>
          <ul class="lc-list">
            <li><strong>Check privacy first.</strong> Some contracts are confidential. Remove names, fees and addresses, or use an AI tool your agreement allows. Read the tool's privacy settings.</li>
            <li><strong>Give it your agreed terms.</strong> Ask it to compare, not to judge.</li>
            <li><strong>Ask for exact quotes.</strong> Ask the AI to quote each clause it talks about. Then find that text in the real contract.</li>
          </ul>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Is this contract OK to sign?</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Compare this contract with the terms we agreed by email
        (both pasted below). Make a table: clause number, exact
        quote, what it means in plain English, matches our email
        (yes/no), question for my lawyer. Do not say whether it is
        safe to sign. You are not my lawyer.</code></pre>
        </div>
        <div class="lc-card">
          <h3>Activity: sort the clauses</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort these clauses from different made-up contracts. Imagine Riya agreed normal terms by email first.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="fine" data-label="Fine as written"></div>
              <div data-sorter-target="bucket" data-bucket="change" data-label="Change before signing"></div>
              <div data-sorter-target="bucket" data-bucket="lawyer" data-label="Ask a lawyer"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="fine" data-why="It matches what was agreed, with clear dates.">"Creator will post 1 Reel on 12 October 2026 and 2 story sets in the same week."</li>
              <li data-bucket="change" data-why="Rights for ever, everywhere, are worth far more than one post. Limit the time, place and media.">"Brand may use the content in perpetuity, in all media, worldwide."</li>
              <li data-bucket="change" data-why="She cannot control views. Promise the work, not the results.">"Creator guarantees a minimum of 50,000 views per video."</li>
              <li data-bucket="lawyer" data-why="Indemnity clauses decide who pays for legal claims. The wording matters, so a lawyer should check it.">"Creator shall indemnify the Brand against all claims arising from the campaign."</li>
              <li data-bucket="fine" data-why="A clear ad label is the law and good practice. This clause protects her too.">"All sponsored posts will carry a clear paid partnership label."</li>
              <li data-bucket="change" data-why="An AI copy of her face or voice could be used for ads she never made. Remove it.">"Brand may create AI-generated versions of Creator's voice and likeness."</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to compare a contract with what you agreed by email. Paste your own clauses and terms with private details removed, or keep the sample.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You help content creators understand brand contracts in plain English. You are not a lawyer and you do not give legal advice.

        What we agreed by email: [1 YouTube integration + 1 Reel + 2 story sets, posted on 12 October; fee 27,150 rupees; 50% advance, 50% within 30 days of posting; paid-ads use of the Reel for 3 months in India; no exclusivity; one round of changes on script and edit]

        Contract clauses: [
        1. Creator delivers 1 integration, 1 Reel and 2 story sets, posted on 12 October.
        2. Payment in full within 60 days after posting.
        3. Brand may use the content in perpetuity, in all media, worldwide.
        4. Creator will not promote any kitchenware brand for 90 days.
        5. Creator will make revisions until the Brand approves.
        6. Brand may use Creator's name, face and voice, including AI-generated versions.
        7. Brand may cancel at any time without payment.]

        Tasks:
        1. Table: clause number, what it means in plain English, matches the email (yes/no/unclear), risk (low/medium/high).
        2. For each mismatch, suggest polite replacement wording.
        3. List 5 questions I should ask a lawyer.
        Quote the contract exactly. Do not say the contract is safe to sign.</pre>
            <ul class="ai-try-checks">
              <li>Did the AI catch every clause that does not match the email? With the sample, clauses 2 to 7 do not match.</li>
              <li>Do its quotes match the real contract text word for word?</li>
              <li>Is the replacement wording polite and specific (time limits, places, amounts)?</li>
              <li>Did it avoid saying the contract is "safe" or "legal", and point you to a lawyer?</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> The contract, not the friendly email, decides what happens. Compare every clause with what you agreed. Watch for rights for ever, unpaid revisions, late payment and AI copies of you. Ask a lawyer before you sign anything you do not fully understand.
        </div>
      HTML
      starter_code: nil
    },
    10 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-create">Content Creation</div>
          <h1 class="lc-title">Creating Sponsored Content That Works</h1>
        </div>
        <p class="lc-lead">Sponsored content works when it feels like your normal content, with a clear label and an honest opinion. Viewers skip ads that sound like ads. Brands come back to creators whose audience trusts them. In this lesson, you will learn to read a brand brief, keep your own voice, test claims before you repeat them and label every format correctly. You will follow Riya as she makes SteelNest's integration and Reel. You will also see how she handles MilletMunch's health claim. The rules part is general education, not legal advice.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 318" role="img" aria-label="Six steps for sponsored content: read the brief, test the product, script in your own voice, check every claim, one round of brand review, then label and post. Below, a claims check. 100 percent food-grade 304 steel: the brand sent a lab report, so Riya can say it. Keeps food warm 4 hours: her own test showed 3 hours, so she says warm after 3 hours in her test. MilletMunch's controls diabetes: only a customer quote, so she does not say it.">
            <defs><marker id="bd10a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="10" y="16" width="108" height="50" rx="8" fill="#27274e" stroke="#8b5cf6"/><text x="64" y="37" font-weight="700">1. Brief</text><text x="64" y="55" font-size="11" fill="#9b99b8">must-say list</text>
              <rect x="138" y="16" width="108" height="50" rx="8" fill="#27274e" stroke="#3b82f6"/><text x="192" y="37" font-weight="700">2. Test</text><text x="192" y="55" font-size="11" fill="#9b99b8">use it yourself</text>
              <rect x="266" y="16" width="108" height="50" rx="8" fill="#27274e" stroke="#22d3ee"/><text x="320" y="37" font-weight="700">3. Script</text><text x="320" y="55" font-size="11" fill="#9b99b8">in your voice</text>
              <rect x="394" y="16" width="108" height="50" rx="8" fill="#27274e" stroke="#10b981"/><text x="448" y="37" font-weight="700">4. Claims</text><text x="448" y="55" font-size="11" fill="#9b99b8">proof for each</text>
              <rect x="522" y="16" width="108" height="50" rx="8" fill="#27274e" stroke="#f59e0b"/><text x="576" y="37" font-weight="700">5. Review</text><text x="576" y="55" font-size="11" fill="#9b99b8">1 round</text>
              <rect x="650" y="16" width="100" height="50" rx="8" fill="#27274e" stroke="#ec4899"/><text x="700" y="37" font-weight="700">6. Post</text><text x="700" y="55" font-size="11" fill="#9b99b8">with a label</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#bd10a)">
                <line x1="119" y1="41" x2="134" y2="41"/><line x1="247" y1="41" x2="262" y2="41"/><line x1="375" y1="41" x2="390" y2="41"/><line x1="503" y1="41" x2="518" y2="41"/><line x1="631" y1="41" x2="646" y2="41"/>
              </g>
              <text x="10" y="102" text-anchor="start" font-size="12" font-weight="700" fill="#c4b5fd">Step 4 up close: the claims check (made up)</text>
              <g font-size="12" font-weight="700" fill="#9b99b8">
                <text x="135" y="128">Claim in the brief</text><text x="385" y="128">Proof</text><text x="630" y="128">What Riya says</text>
              </g>
              <rect x="10" y="138" width="250" height="50" rx="6" fill="#1f1f44"/><text x="135" y="159">"100% food-grade</text><text x="135" y="177">304 steel" (SteelNest)</text>
              <rect x="270" y="138" width="230" height="50" rx="6" fill="#1f1f44"/><text x="385" y="159">Lab report for this</text><text x="385" y="177">product, checked</text>
              <rect x="510" y="138" width="240" height="50" rx="6" fill="#1f1f44" stroke="#10b981" stroke-width="2"/><text x="630" y="168" fill="#6ee7b7">Says it</text>
              <rect x="10" y="198" width="250" height="50" rx="6" fill="#1f1f44"/><text x="135" y="219">"Keeps food warm</text><text x="135" y="237">for 4 hours" (SteelNest)</text>
              <rect x="270" y="198" width="230" height="50" rx="6" fill="#1f1f44"/><text x="385" y="219">Her own test:</text><text x="385" y="237">still warm after 3 hours</text>
              <rect x="510" y="198" width="240" height="50" rx="6" fill="#1f1f44" stroke="#f59e0b" stroke-width="2"/><text x="630" y="219" fill="#fcd34d">"Warm after 3 hours</text><text x="630" y="237" fill="#fcd34d">in my test"</text>
              <rect x="10" y="258" width="250" height="50" rx="6" fill="#1f1f44"/><text x="135" y="279">"Controls diabetes"</text><text x="135" y="297">(MilletMunch)</text>
              <rect x="270" y="258" width="230" height="50" rx="6" fill="#1f1f44"/><text x="385" y="279">Only a customer quote.</text><text x="385" y="297">Not proof.</text>
              <rect x="510" y="258" width="240" height="50" rx="6" fill="#1f1f44" stroke="#ef4444" stroke-width="2"/><text x="630" y="288" fill="#fca5a5">Does not say it</text>
            </g>
          </svg>
          <figcaption>Riya's six steps for sponsored content. Every claim in a brief needs proof, or her own test, before she says it.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Read the brief carefully</h3>
          <p>A <strong>brief</strong> is the brand's written instructions for the campaign. Read it before you plan anything. Look for these parts:</p>
          <table class="lc-table">
            <thead><tr><th>Part of the brief</th><th>SteelNest's brief (made up)</th><th>Riya's note</th></tr></thead>
            <tbody>
              <tr><td>Deliverables and dates</td><td>1 integration, 1 Reel, 2 story sets. Post on 12 October 2026.</td><td>Matches the contract</td></tr>
              <tr><td>Key messages</td><td>Leak-proof lids. Fits a full office lunch. "100% food-grade 304 stainless steel". "Keeps food warm for 4 hours" (with the insulated bag).</td><td>Test each one. Ask for proof of the steel grade.</td></tr>
              <tr><td>Must not say</td><td>No comparisons with named rival brands</td><td>Fine</td></tr>
              <tr><td>Call to action</td><td>Link in bio and a 10% code</td><td>Say clearly that the code is from the brand</td></tr>
              <tr><td>Approvals</td><td>Script first, then the edit</td><td>One round of changes on each, as agreed</td></tr>
            </tbody>
          </table>
          <p><strong>Test before you talk.</strong> The CCPA's "Endorsement Know-hows!" say you should not endorse a product you have not used or checked with due diligence. So Riya used the tiffin set every day for two weeks. The lids did not leak. In her kitchen test, the food was still warm after 3 hours, not 4. SteelNest sent a lab test report for the steel. Riya checked that the product name and date on the report matched this tiffin set.</p>
        </div>
        <div class="lc-card">
          <h3>Keep your voice, keep it honest</h3>
          <p>Riya's viewers watch her for quick, practical Hinglish tips. So the integration is a normal tiffin tip, with the product used naturally. It is not a read-out advert.</p>
          <pre><code>INTEGRATION PLAN (about 75 seconds, inside "3 Paneer Tiffins for Monday")
        0:00  Spoken label: "Yeh part SteelNest ke saath paid partnership hai."
              On-screen label "Paid partnership with SteelNest" stays for the whole part
        0:05  Her real problem: dal leaking in her office bag
        0:20  Packs the paneer tiffin in the SteelNest set, shows the lids
        0:40  Her honest test: "Mere test mein 3 ghante baad bhi garam tha."
        0:55  One thing she would change: the bag is a little bulky
        1:05  Code and link, "SteelNest ka code hai, description mein"
        1:15  Back to the recipe</code></pre>
          <p><strong>Honest reviews.</strong> One small, real drawback makes the rest believable. If the product had failed her test, she would tell SteelNest privately and not post a false review.</p>
          <p><strong>How AI helps.</strong> Ask AI for hook ideas, a structure or a shorter version of your script. Give it a sample of how you really talk. Then rewrite the draft in your own words. AI often adds big claims such as "the best tiffin in India". Delete any claim you cannot prove. If you use AI voices, AI images or realistic edited scenes, follow each platform's rules for labelling AI content. Check their current help pages.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Write a sponsored script for SteelNest tiffin boxes.</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Plan a 75-second integration inside my Hinglish tiffin video.
        Start with a spoken ad label. Use only these claims: leak-proof
        lids (my test), warm after 3 hours (my test), 304 steel (lab
        report). Include one honest drawback: [bulky bag]. Sound like
        this sample of my voice: [paste 3 lines]. No other claims.</code></pre>
        </div>
        <div class="lc-card">
          <h3>Correct labels, and saying no to a health claim</h3>
          <table class="lc-table">
            <thead><tr><th>Format</th><th>Riya's label (following ASCI's influencer guidelines)</th></tr></thead>
            <tbody>
              <tr><td>Integration in a long video (2 minutes or longer)</td><td>A spoken label, plus an on-screen label for the whole brand part. She also ticks YouTube's paid promotion box. YouTube then shows a short "Includes paid promotion" notice at the start.</td></tr>
              <tr><td>Reel (42 seconds)</td><td>"Ad" at the start of the caption's first line. Instagram's "Paid partnership" label. An on-screen label for at least a third of the video: 14 seconds.</td></tr>
              <tr><td>Story frames</td><td>"Ad" written on each frame, because stories often have no caption</td></tr>
            </tbody>
          </table>
          <p>A platform's label helps, but ASCI says to use it as well as your own label, not instead of it. Rules and platform tools change. Check the current ASCI guidelines and each platform's help pages.</p>
          <p><strong>The MilletMunch problem.</strong> MilletMunch wants Riya to say its ragi chips "control diabetes" and are "100% guilt-free". For proof, it sent only a customer quote. This is a serious claim:</p>
          <ul class="lc-list">
            <li>India's Drugs and Magic Remedies (Objectionable Advertisements) Act, 1954 bans ads that offer a product to treat or cure certain diseases. Diabetes is on its list.</li>
            <li>FSSAI's food advertising rules (2018) do not allow a food to claim it prevents, treats or cures a disease, unless specially permitted.</li>
            <li>ASCI's guidelines say technical health and nutrition advice needs a qualified person, such as a dietitian, who shows the qualification. Riya is a home cook.</li>
          </ul>
          <p>So Riya replies: "I'd love to show how I pack your ragi chips in a tiffin, with my honest opinion on the taste. I can't say anything about diabetes or health benefits. If that claim must be in the post, I'll have to say no this time."</p>
          <p>She also drops "100% guilt-free", because it is vague and cannot be proved. She will make the Reel only if MilletMunch agrees in writing. If not, she declines the deal politely.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: Riya makes the SteelNest Reel</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Riya's prompt">She pastes the brief, her test results and 3 lines of her real Hinglish voice. She asks for 5 hook ideas and a 42-second Reel plan.</li>
              <li data-kind="answer" data-label="AI draft">Good hooks. But the plan says "keeps food hot for 4 hours" and "India's safest tiffin".</li>
              <li data-kind="warn" data-label="Claims not proved">Her own test showed 3 hours, not 4. Nobody has proved "safest in India". She changes one line and deletes the other.</li>
              <li data-kind="tool" data-label="Editing app">She edits the Reel in her editing app and adds the on-screen label "Ad | Paid partnership with SteelNest".</li>
              <li data-kind="check" data-label="Label timing">The Reel is 42 seconds. The label stays on screen for the first 15 seconds, more than a third.</li>
              <li data-kind="result" data-label="Brand review">SteelNest asks for one change: show the lid closing. She makes it in the agreed round.</li>
              <li data-kind="check" data-label="Before posting">"Ad" is in the caption's first line. The Paid partnership label is on. The code line says it is SteelNest's code. She posts on 12 October.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to plan a sponsored video from a brief, with a claims check and the right labels. Replace the brief in brackets with a real one, or keep the sample.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a script editor for a content creator in India. Use simple English. You help me stay honest and follow ad labelling rules. You do not give legal advice.

        My channel and voice: [Tiffin Tales, quick Hinglish tiffin recipes; warm, practical, a little funny]
        Format: [a 75-second integration inside a normal YouTube cooking video, plus one 42-second Reel]
        Brand brief claims: [leak-proof lids; 100% food-grade 304 stainless steel; keeps food warm for 4 hours; best tiffin in India]
        My proof and tests: [lids did not leak in 2 weeks of use; brand sent a lab report for the steel; in my test food was warm after 3 hours]

        Tasks:
        1. A claims table: claim, proof I have, keep / change / remove, and safer wording.
        2. A timed plan for the integration: spoken ad label at the start, the product used naturally, one honest drawback, then back to the recipe.
        3. Label checklist for the long video and the Reel, including how long an on-screen label should stay on a 42-second Reel under ASCI's guidelines.
        4. Three hook ideas in my voice.
        Use only claims I can prove. Mark anything you are unsure of with [CHECK].</pre>
            <ul class="ai-try-checks">
              <li>Did the AI remove or change claims without proof, such as "4 hours" and "best tiffin in India"?</li>
              <li>Does the plan start with a clear ad label, spoken and on screen?</li>
              <li>For a 42-second Reel, does it say the label should stay at least 14 seconds (a third)?</li>
              <li>Does the script still sound like you after your own rewrite?</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> The best sponsored content is your normal content with a clear label and an honest opinion. Test the product, say only what you can prove and turn down claims you cannot stand behind. Your viewers' trust is the thing every brand is paying for.
        </div>
      HTML
      starter_code: nil
    },
    11 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-create">Content Creation</div>
          <h1 class="lc-title">Reporting Results to Brands</h1>
        </div>
        <p class="lc-lead">After a sponsored post goes live, the brand wants to know how it did. A clear, honest report helps you get paid on time and booked again. In this lesson, you will learn which numbers to collect, where to find them, and how to turn them into a one-page campaign report with AI. You will also learn what to do when some results are weak. We will follow Riya's first SteelNest campaign. It went live on 12 October 2026. All results in this lesson are made up.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 330" role="img" aria-label="Three data sources, YouTube Studio, Instagram Insights and SteelNest shop data, flow into a one-page campaign report. The report shows 23,900 video views, 19,600 Reel reach, 726 link clicks and 118 discount code uses, then three columns: what worked, what was weak and what to do next time.">
            <defs><marker id="bd11a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="16" y="62" width="156" height="44" rx="8" fill="#27274e" stroke="#ec4899"/>
              <text x="94" y="89">YouTube Studio</text>
              <rect x="16" y="142" width="156" height="44" rx="8" fill="#27274e" stroke="#8b5cf6"/>
              <text x="94" y="169">Instagram Insights</text>
              <rect x="16" y="222" width="156" height="44" rx="8" fill="#27274e" stroke="#f59e0b"/>
              <text x="94" y="249">SteelNest shop data</text>
              <line x1="172" y1="84" x2="196" y2="84" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#bd11a)"/>
              <line x1="172" y1="164" x2="196" y2="164" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#bd11a)"/>
              <line x1="172" y1="244" x2="196" y2="244" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#bd11a)"/>
              <rect x="200" y="14" width="544" height="304" rx="12" fill="#1f1f44" stroke="#10b981"/>
              <text x="472" y="38" font-weight="700" fill="#6ee7b7">SteelNest × Tiffin Tales: 30-day report (made up)</text>
              <rect x="216" y="52" width="122" height="70" rx="6" fill="#27274e"/>
              <text x="277" y="76" font-size="18" font-weight="700">23,900</text>
              <text x="277" y="94" font-size="11" fill="#9b99b8">video views</text>
              <text x="277" y="110" font-size="11" fill="#6ee7b7">+12% vs my average</text>
              <rect x="346" y="52" width="122" height="70" rx="6" fill="#27274e"/>
              <text x="407" y="76" font-size="18" font-weight="700">19,600</text>
              <text x="407" y="94" font-size="11" fill="#9b99b8">Reel reach</text>
              <text x="407" y="110" font-size="11" fill="#6ee7b7">+32% vs my average</text>
              <rect x="476" y="52" width="122" height="70" rx="6" fill="#27274e"/>
              <text x="537" y="76" font-size="18" font-weight="700">726</text>
              <text x="537" y="94" font-size="11" fill="#9b99b8">link clicks</text>
              <text x="537" y="110" font-size="11" fill="#9b99b8">video + stories</text>
              <rect x="606" y="52" width="122" height="70" rx="6" fill="#27274e"/>
              <text x="667" y="76" font-size="18" font-weight="700">118</text>
              <text x="667" y="94" font-size="11" fill="#9b99b8">code uses</text>
              <text x="667" y="110" font-size="11" fill="#9b99b8">from SteelNest</text>
              <rect x="216" y="136" width="164" height="136" rx="6" fill="#27274e" stroke="#10b981"/>
              <text x="298" y="158" font-weight="700" fill="#6ee7b7">What worked</text>
              <rect x="390" y="136" width="164" height="136" rx="6" fill="#27274e" stroke="#f59e0b"/>
              <text x="472" y="158" font-weight="700" fill="#fcd34d">What was weak</text>
              <rect x="564" y="136" width="164" height="136" rx="6" fill="#27274e" stroke="#3b82f6"/>
              <text x="646" y="158" font-weight="700" fill="#93c5fd">Next time</text>
              <g font-size="11" fill="#e2e0f0">
                <text x="298" y="186">640 Reel saves</text>
                <text x="298" y="208">90% of viewers stayed</text>
                <text x="298" y="224">through the segment</text>
                <text x="298" y="248">Many "which size?" asks</text>
                <text x="472" y="186">726 clicks, below</text>
                <text x="472" y="202">the 1,000 hoped for</text>
                <text x="472" y="226">Story set 2: 82 clicks</text>
                <text x="472" y="248">Link was 3rd in text</text>
                <text x="646" y="186">Link in first line</text>
                <text x="646" y="208">Pinned comment</text>
                <text x="646" y="230">Answer the top</text>
                <text x="646" y="246">question in a story</text>
              </g>
              <text x="472" y="298" font-size="12" fill="#9b99b8">Every number has a screenshot and a date range. Weak results are shown too.</text>
            </g>
          </svg>
          <figcaption>Riya's one-page report for SteelNest. The numbers come from three places, and the weak results sit next to the good ones.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Which numbers to collect, and where</h3>
          <p>Agree before the campaign what you will report and when. Riya agreed with SteelNest to send a report 30 days after posting. Collect these numbers for each piece of content:</p>
          <table class="lc-table">
            <thead><tr><th>Number</th><th>What it means</th><th>Where to find it</th></tr></thead>
            <tbody>
              <tr><td><strong>Views</strong></td><td>How many times the video was watched</td><td>YouTube Studio, video analytics</td></tr>
              <tr><td><strong>Reach</strong></td><td>How many different accounts saw the post</td><td>Instagram Insights for the Reel or story</td></tr>
              <tr><td><strong>Impressions</strong></td><td>How many times the content was shown, including repeat views by the same person. It is always equal to or bigger than reach.</td><td>Both platforms, in different places</td></tr>
              <tr><td><strong>Engagement rate</strong></td><td>Likes, comments, shares and saves ÷ reach (or views) × 100. Always say which one you divided by.</td><td>Work it out yourself from the dashboard numbers</td></tr>
              <tr><td><strong>Audience retention</strong></td><td>The share of viewers still watching at each moment of a video</td><td>YouTube Studio: the retention graph</td></tr>
              <tr><td><strong>Link clicks and click rate</strong></td><td>Clicks on your link. Click rate = clicks ÷ views (or reach) × 100.</td><td>Story insights, or a link tracker the brand gives you</td></tr>
              <tr><td><strong>Code uses and sales</strong></td><td>How many orders used your discount code, and their value</td><td>Only the brand has this. Ask for it.</td></tr>
            </tbody>
          </table>
          <p>Take screenshots with the date range showing. Do not crop out the dates. Save them in one folder per campaign. On Instagram, a "Paid partnership" label can let the brand see the post's insights directly. Check the platform's current help pages, because these features change.</p>
        </div>
        <div class="lc-card">
          <h3>Worked example: the SteelNest report</h3>
          <p>The deal was the Tiffin Launch Pack: 1 YouTube integration, 1 Reel and 2 story sets, plus 3 months of paid-ads use of the Reel. Riya compares each result with her own average. She does not use "industry averages" from the internet, because nobody can check them.</p>
          <table class="lc-table">
            <thead><tr><th>Content</th><th>Result (first 30 days)</th><th>Her usual average</th></tr></thead>
            <tbody>
              <tr><td>Long video "3 Paneer Tiffins for Monday", with the SteelNest segment</td><td>23,900 views; engagement rate 6.58% by views; 540 link clicks (click rate 2.26%)</td><td>21,400 views; 6.51%</td></tr>
              <tr><td>SteelNest segment inside the video</td><td>52% of viewers were still watching when it started, 47% at its end. So about 90% of those who reached it stayed.</td><td>No average: first integration</td></tr>
              <tr><td>Reel (42 seconds)</td><td>Reach 19,600; 1,020 likes, 96 comments, 210 shares, 640 saves; engagement rate 10.03% by reach</td><td>Reach 14,800; 9.76%</td></tr>
              <tr><td>Story set 1</td><td>Reach 3,200; 104 link clicks (3.25%)</td><td>Reach 2,900</td></tr>
              <tr><td>Story set 2</td><td>Reach 2,950; 82 link clicks (2.78%)</td><td>Reach 2,900</td></tr>
              <tr><td>Discount code TIFFIN10</td><td>118 uses (SteelNest's data, sent by email)</td><td>Not hers to measure</td></tr>
            </tbody>
          </table>
          <pre><code>Checks Riya does in her spreadsheet
        Video views vs average:  =23900/21400-1          → 11.7% more
        Reel engagement rate:    =(1020+96+210+640)/19600 → 10.03%
        Video click rate:        =540/23900              → 2.26%
        Total link clicks:       =540+104+82             → 726
        Cost per link click (brand can use this): =27150/726 → ₹37.40</code></pre>
          <p>She does <strong>not</strong> add views and reach into one big "people reached" number. Views count plays, and reach counts accounts. Many people saw both the video and the Reel. She also leaves out ROI (return on investment: profit from the campaign compared with its cost). Only SteelNest knows its sales value and profit. She invites SteelNest to add those numbers.</p>
          <p><strong>Audience feedback is valuable too.</strong> 31 comments asked which box size fits a full meal. Riya groups the comments with AI (names removed) and shares the top three questions. The brand can use them for its product pages.</p>
        </div>
        <div class="lc-card">
          <h3>When results are weak</h3>
          <p>SteelNest hoped for 1,000 link clicks. This was a hope in an email, not a promise in the contract. Riya got 726. She does not hide this or make it sound bigger. She writes three short parts:</p>
          <ul class="lc-list">
            <li><strong>The fact:</strong> "Link clicks were 726, below the 1,000 you hoped for."</li>
            <li><strong>A likely reason, with evidence:</strong> "The link was the third line in the video description. Story set 2 went out on a Sunday, when my stories usually get fewer taps."</li>
            <li><strong>What she will change next time:</strong> "Put the link in the first line and in a pinned comment."</li>
          </ul>
          <p>Do not blame the algorithm with no proof. Do not offer free extra posts in a panic. If you choose to add something, say it is a one-time goodwill gesture.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Write an impressive campaign report for SteelNest that makes
        the results look great.</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Write a one-page campaign report using ONLY the numbers below.
        Compare each result with my own average, which I give you.
        Sections: summary, deliverables and dates, results table,
        what worked, what was weak, next time. Do not add numbers
        together across platforms. Do not calculate ROI. Friendly,
        honest tone. [paste numbers and averages]</code></pre>
        </div>
        <div class="lc-card">
          <h3>Activity: Riya builds her report with AI</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="tool" data-label="Collect">Riya takes dated screenshots from YouTube Studio and Instagram Insights for 12 October to 10 November 2026.</li>
              <li data-kind="user" data-label="Riya's prompt">She pastes the numbers and her own averages. She asks for a one-page report with a "what was weak" section.</li>
              <li data-kind="answer" data-label="AI draft">The draft says: "Total reach 49,650 people" and "The campaign delivered an estimated 5x ROI."</li>
              <li data-kind="warn" data-label="Two problems">49,650 adds video views, Reel reach and story reach. Those are different measures, and many people saw more than one. The ROI figure is invented: she has no sales value data.</li>
              <li data-kind="result" data-label="Fixed draft">She shows each platform's numbers separately. She deletes the ROI line and asks SteelNest to share sales data if it wishes.</li>
              <li data-kind="check" data-label="Number check">She checks every number against her screenshots and redoes each rate in her spreadsheet.</li>
              <li data-kind="check" data-label="Send">She emails the report as a PDF with the screenshots attached, and offers a 15-minute call.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to turn your campaign numbers into a short, honest report. Keep Riya's sample numbers to practise, or paste your own.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an assistant who writes clear, honest campaign reports for content creators. Use simple English.

        Brand: [SteelNest, steel tiffin boxes]. Deal: [1 YouTube integration, 1 Reel, 2 story sets]. Posted: [12 October 2026]. Report period: [first 30 days].
        Results:
        [Video: 23,900 views, 1,310 likes, 262 comments, 540 link clicks
        Reel: reach 19,600, 1,020 likes, 96 comments, 210 shares, 640 saves
        Story set 1: reach 3,200, 104 clicks. Story set 2: reach 2,950, 82 clicks
        Discount code: 118 uses (brand's data)]
        My usual averages: [video 21,400 views; Reel reach 14,800; story reach 2,900]
        Brand hoped for: [1,000 link clicks]
        Top viewer questions: [which size fits a full meal; is it dishwasher safe]

        Write a one-page report: summary (3 sentences), results table with each rate worked out and its method, what worked, what was weak, what I will change next time.
        Rules: use only my numbers; show each calculation; do not add numbers across platforms; do not calculate ROI or sales value; list anything you are unsure about at the end.</pre>
            <ul class="ai-try-checks">
              <li>Redo every rate in a spreadsheet. Are they correct?</li>
              <li>Did the AI add views and reach together, or invent ROI? Remove it.</li>
              <li>Is the weak result stated plainly, with a real reason and a next step?</li>
              <li>Does every number match your screenshots?</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A good report is short, dated and honest. Compare results with your own averages, show weak results next to good ones, and explain what you will change. Brands rebook creators they can trust with numbers.
        </div>
      HTML
      starter_code: nil
    },
    12 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-create">Content Creation</div>
          <h1 class="lc-title">Affiliate Income and Your Own Products</h1>
        </div>
        <p class="lc-lead">Brand deals come and go. Affiliate links and your own products can earn money every month, even when no brand is paying you. In this lesson, you will learn how affiliate income works, how to label it, and how to plan a digital product, a workshop or a membership. You will use AI to find product ideas in your comments, do the break-even maths and draft a sales page. Riya's affiliate links, e-book and workshop already bring in ₹13,500 a month. She wants that number to grow.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 320" role="img" aria-label="Left: Riya's made-up affiliate funnel for one month. 1,400 link clicks lead to 84 orders, sales of 84,000 rupees and a 5 percent commission of 4,200 rupees. Right: break-even maths for a new snack e-book. 25 hours at 670 rupees plus 3,000 rupees of costs is 19,750 rupees. At 185 rupees kept per copy, she needs 107 sales.">
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="210" y="28" font-weight="700" fill="#c4b5fd">Affiliate funnel: one month (made up)</text>
              <rect x="30" y="46" width="360" height="40" rx="6" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="210" y="71">1,400 link clicks</text>
              <rect x="65" y="96" width="290" height="40" rx="6" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="210" y="121">84 orders (6% of clicks)</text>
              <rect x="100" y="146" width="220" height="40" rx="6" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="210" y="171">Sales ₹84,000</text>
              <rect x="125" y="196" width="170" height="40" rx="6" fill="#27274e" stroke="#10b981"/>
              <text x="210" y="221" font-weight="700" fill="#6ee7b7">Riya gets ₹4,200</text>
              <text x="210" y="252" font-size="11" fill="#9b99b8">5% commission on sales</text>
              <text x="590" y="28" font-weight="700" fill="#c4b5fd">Own product: snack e-book</text>
              <rect x="440" y="46" width="300" height="190" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <g text-anchor="start">
                <text x="458" y="76">Time: 25 h × ₹670 = ₹16,750</text>
                <text x="458" y="104">Photos, design tool: ₹3,000</text>
                <text x="458" y="132">Total to earn back: ₹19,750</text>
                <text x="458" y="160">Price ₹199, keeps ₹185 a copy</text>
                <text x="458" y="188" font-weight="700" fill="#f9a8d4">Break-even: 107 copies</text>
                <text x="458" y="216" font-size="11" fill="#9b99b8">After that, most of each sale is profit</text>
              </g>
              <rect x="30" y="268" width="710" height="40" rx="8" fill="#27274e" stroke="#22d3ee"/>
              <text x="385" y="293" font-size="12">Affiliate: small money per sale, no stock. Own product: more work, bigger share of each sale.</text>
            </g>
          </svg>
          <figcaption>Two ways to earn without a brand deal. All numbers are made up for Riya's example.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>How affiliate income works</h3>
          <p>An <strong>affiliate link</strong> is a special link that tracks who sent a buyer to a shop. When someone buys through your link, the shop pays you a <strong>commission</strong> (a small share of the sale). Many online shops and brands run affiliate programmes. Each one sets its own commission, rules and payment dates. Check the programme's current terms before you join.</p>
          <p>Four numbers tell you how your links are doing:</p>
          <table class="lc-table">
            <thead><tr><th>Number</th><th>What it means</th><th>Riya's month (made up)</th></tr></thead>
            <tbody>
              <tr><td><strong>Clicks</strong></td><td>How many times people clicked your links</td><td>1,400</td></tr>
              <tr><td><strong>Conversion rate</strong></td><td>Orders ÷ clicks × 100: the share of clicks that became a sale</td><td>84 ÷ 1,400 = 6%</td></tr>
              <tr><td><strong>Commission</strong></td><td>Sales × commission rate</td><td>₹84,000 × 5% = ₹4,200</td></tr>
              <tr><td><strong>Earnings per click</strong></td><td>Commission ÷ clicks</td><td>₹4,200 ÷ 1,400 = ₹3</td></tr>
            </tbody>
          </table>
          <p><strong>Label every affiliate link.</strong> Under the ASCI influencer guidelines, a commission is a material connection (a link with the brand that can change what you say). Use a clear label such as "Affiliate link" or "I earn a commission", next to the link. Also say it out loud when you talk about the product in a video. A label hidden at the end of a long description is not enough. This is general education, not legal advice.</p>
          <p><strong>Trust comes first.</strong> Only link products you have used. Riya links the knife set she uses every day. She does not link a gadget just because it pays 10%. If a product breaks, she says so and removes the link.</p>
        </div>
        <div class="lc-card">
          <h3>Your own products: e-books, workshops and memberships</h3>
          <table class="lc-table">
            <thead><tr><th>Product</th><th>Good for</th><th>Watch out for</th></tr></thead>
            <tbody>
              <tr><td><strong>Digital product</strong> (e-book, planner, recipe pack)</td><td>Make it once, sell it many times. Riya's "30 Tiffin Plans" sells 22 copies a month at ₹150 = ₹3,300.</td><td>Needs a steady flow of new viewers. Payment platforms keep a fee.</td></tr>
              <tr><td><strong>Workshop</strong> (a live online class)</td><td>Pays for your time. Riya's monthly workshop: 20 people × ₹300 = ₹6,000.</td><td>Hard to grow without more of your hours</td></tr>
              <tr><td><strong>Membership</strong> (a monthly fee for extra content)</td><td>Steady monthly income from your biggest fans</td><td>You must deliver every month. People leave if you stop.</td></tr>
            </tbody>
          </table>
          <p>Start from what your audience already asks for. Riya pastes 200 recent comments into an AI assistant. She removes names and usernames first. She asks which questions come up most often. The top theme is "What snacks can I pack?". Her July Instagram poll agrees: 64% of 1,100 voters said they pack snacks in their tiffins. So she plans a second e-book: <strong>"Snack Box Planner"</strong>.</p>
          <pre><code>Break-even for "Snack Box Planner" (made-up numbers)
        Her time:       25 hours × ₹670      = ₹16,750
        Other costs:    photos, design tool  = ₹3,000
        Total to earn back                   = ₹19,750
        Price ₹199. She keeps about ₹185 a copy after payment fees.
        Break-even copies = 19,750 ÷ 185 = 106.8 → 107 copies
        Spreadsheet: =ROUNDUP(19750/185, 0)</code></pre>
          <p>At 22 copies a month, like her first e-book, she would earn back her time in about 5 months. That is a guess, not a promise. She tests the recipes herself, uses her own food photos and makes no health claims.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Give me a digital product idea that will sell a lot.</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Here are 200 comments from my cooking videos (names removed).
        Group the questions into themes. Count how often each theme
        appears. Suggest 3 digital products that answer the top themes.
        For each: what is inside, hours to make, a price range, and
        the risks. Do not invent sales numbers.</code></pre>
        </div>
        <div class="lc-card">
          <h3>Activity: is this disclosure clear enough?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Riya is checking her affiliate posts. Sort each one.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="ok" data-label="Clear and honest"></div>
              <div data-sorter-target="bucket" data-bucket="fix" data-label="Needs fixing"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="ok" data-why="The label sits right next to the link, in plain words.">"Knife set I use daily (affiliate link, I earn a small commission): [link]"</li>
              <li data-bucket="fix" data-why="Viewers must click 'more' and scroll to see it. The label must be easy to notice.">The link is in line 2 of the description, and "#affiliate" is in line 40</li>
              <li data-bucket="ok" data-why="Saying it out loud in the video, plus a written label, is clear for viewers who do not read descriptions.">In the video she says, "The link is below. It is an affiliate link, so I get a small commission."</li>
              <li data-bucket="fix" data-why="She has not used it, so she cannot honestly recommend it. The endorsement rules expect real use or due diligence.">She links a new air fryer she has never used, because it pays a higher commission</li>
              <li data-bucket="fix" data-why="Vague words like 'thanks' or 'sp' do not tell viewers she earns money. Use a clear label.">Her Reel caption ends with "#thanks #sp"</li>
              <li data-bucket="ok" data-why="Being honest about a problem protects trust, even if she loses a small commission.">She removes the link to a peeler that broke after two weeks, and says why in a comment</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to turn your audience's questions into a product plan with honest break-even maths. Keep Riya's sample details, or add your own.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a product coach for small content creators. Use simple English.

        About me: [home-cooking creator in Maharashtra, quick healthy tiffins in Hinglish]
        My rate: [670] rupees per hour.
        Top questions from my comments (names removed): [What snacks can I pack? / How do I stop food going soggy? / Tiffin ideas for kids?]
        A poll I ran: [64% of 1,100 voters pack snacks in their tiffins]
        What I sell now: [e-book "30 Tiffin Plans", 150 rupees, about 22 copies a month]

        Tasks:
        1. Suggest 3 product ideas: one digital product, one workshop, one membership. Link each to my questions.
        2. For each, estimate hours to make, other costs, a price range, and what I keep after a payment fee of about [7]%.
        3. Work out the break-even number of sales. Show every step.
        4. List the risks for each, including time I must give every month.
        5. Pick the best first idea for me and say why, in 3 sentences.
        Do not invent sales numbers or promise results. Do not suggest any health claims.</pre>
            <ul class="ai-try-checks">
              <li>Is the break-even maths right? Check it with =ROUNDUP(cost/amount kept, 0).</li>
              <li>Does each idea answer a real question from your audience?</li>
              <li>Did the AI avoid health claims and made-up sales numbers?</li>
              <li>Are the hours realistic for your month?</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Affiliate links and your own products earn from the trust you already have. Label every link clearly, only recommend what you use, and build products from your audience's real questions. Do the break-even maths before you spend weeks making something.
        </div>
      HTML
      starter_code: nil
    },
    13 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-create">Content Creation</div>
          <h1 class="lc-title">Money, Invoices and Taxes</h1>
        </div>
        <p class="lc-lead">Earning the money is only half the job. You also need to send clear invoices, chase late payments, keep records and put money aside for tax. In this lesson, you will learn what goes on an invoice, and the basic ideas of GST, TDS, gifted products and advance tax in India. You will use AI to draft invoices, build a payment tracker and prepare questions for your chartered accountant (CA). This lesson is general education only. It is not tax or legal advice. Tax rules change, and your situation may be different. Ask a CA before you decide anything.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 320" role="img" aria-label="Top: a made-up example year. Tadka Tech invoices of 53,850 rupees, the brand deducts 10 percent TDS of 5,385 rupees and pays it to the government, Riya receives 48,465 rupees and moves 10 percent to a tax pot. Bottom: advance tax dates, 15 June 15 percent, 15 September 45 percent, 15 December 75 percent and 15 March 100 percent of the year's tax. A note on the GST registration threshold for services.">
            <defs><marker id="bd13a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="380" y="24" font-weight="700" fill="#c4b5fd">Example: one year of Tadka Tech deals (made up, if the brand deducts TDS)</text>
              <rect x="20" y="40" width="150" height="60" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="95" y="66">Invoices</text>
              <text x="95" y="86" font-weight="700">₹53,850</text>
              <rect x="210" y="40" width="150" height="60" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="285" y="66">TDS 10%</text>
              <text x="285" y="86" font-weight="700">₹5,385</text>
              <rect x="400" y="40" width="150" height="60" rx="8" fill="#1f1f44" stroke="#10b981"/>
              <text x="475" y="66">Riya receives</text>
              <text x="475" y="86" font-weight="700">₹48,465</text>
              <rect x="590" y="40" width="150" height="60" rx="8" fill="#1f1f44" stroke="#ec4899"/>
              <text x="665" y="66">Tax pot</text>
              <text x="665" y="86" font-size="11" fill="#9b99b8">separate account</text>
              <line x1="170" y1="70" x2="206" y2="70" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#bd13a)"/>
              <line x1="360" y1="70" x2="396" y2="70" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#bd13a)"/>
              <line x1="550" y1="70" x2="586" y2="70" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#bd13a)"/>
              <g font-size="11" fill="#9b99b8">
                <text x="285" y="118">Brand pays it to the government.</text>
                <text x="285" y="134">It shows in Riya's tax statement.</text>
                <text x="665" y="118">10% of each payment,</text>
                <text x="665" y="134">until her CA advises</text>
              </g>
              <text x="380" y="172" font-weight="700" fill="#c4b5fd">Advance tax dates (if the year's tax is ₹10,000 or more)</text>
              <line x1="80" y1="208" x2="680" y2="208" stroke="#8b5cf6" stroke-width="2"/>
              <circle cx="80" cy="208" r="7" fill="#8b5cf6"/>
              <circle cx="280" cy="208" r="7" fill="#8b5cf6"/>
              <circle cx="480" cy="208" r="7" fill="#8b5cf6"/>
              <circle cx="680" cy="208" r="7" fill="#8b5cf6"/>
              <text x="80" y="236">15 June</text>
              <text x="280" y="236">15 September</text>
              <text x="480" y="236">15 December</text>
              <text x="680" y="236">15 March</text>
              <g font-size="12" fill="#9b99b8">
                <text x="80" y="254">15% paid</text>
                <text x="280" y="254">45% paid</text>
                <text x="480" y="254">75% paid</text>
                <text x="680" y="254">100% paid</text>
              </g>
              <rect x="20" y="272" width="720" height="36" rx="8" fill="#27274e" stroke="#22d3ee"/>
              <text x="380" y="295" font-size="12">GST: register once yearly turnover from services crosses ₹20 lakh (₹10 lakh in some states). Ask a CA.</text>
            </g>
          </svg>
          <figcaption>Where a brand payment goes, and the yearly advance tax dates. The percentages are the share of the year's tax paid by each date. General education only.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>A clear invoice gets you paid faster</h3>
          <p>An <strong>invoice</strong> is a bill that asks the brand to pay you. Send it on the date your contract says. Riya's SteelNest deal is ₹27,150: 50% on signing and 50% within 30 days of posting. She posted on 12 October 2026, so she sends the second invoice that day. It is due on 11 November 2026.</p>
          <pre><code>INVOICE  TT-2026-014          Date: 12 October 2026
        From: Riya [surname], Tiffin Tales, [address], Maharashtra
              PAN: [her PAN]   Email: [work email]
        To:   SteelNest [company name], [address], Maharashtra
              GSTIN: [SteelNest's GST number]
        For:  Tiffin Launch Pack: 1 YouTube integration, 1 Instagram
              Reel, 2 story sets; 3 months paid-ads use of the Reel
              (agreement signed 21 September 2026)
              Second payment: 50% of ₹27,150      ₹13,575
        GST:  Not registered under GST. No GST charged.
        Due:  11 November 2026 (30 days after posting)
        Pay to: [bank name, account name, account number, IFSC]</code></pre>
          <p>Brands usually ask for your <strong>PAN</strong> (Permanent Account Number) because they need it for TDS. Without a PAN, tax may be deducted at a higher rate. Number your invoices in order and keep a copy of each one.</p>
          <p>Track every invoice in a spreadsheet. Columns: invoice number, brand, amount, date sent, due date, status, date paid, TDS deducted.</p>
          <pre><code>Due date (30 days after sending):  =D2+30
        Days late (if not paid yet):        =IF(F2="Paid",0,MAX(0,TODAY()-E2))
        Amount still owed this year:       =SUMIF(F2:F50,"Not paid",C2:C50)</code></pre>
          <p>AI is good at the polite reminder. Ask it for a short, friendly email that quotes the invoice number, the amount and the due date. Send the first reminder the day after the due date.</p>
        </div>
        <div class="lc-card">
          <h3>GST, TDS and gifted products in general words</h3>
          <p>India's new <strong>Income-tax Act, 2025</strong> applies from 1 April 2026. It uses the term <strong>tax year</strong> (1 April to 31 March). Many old section numbers changed. For example, most TDS rules are now in one section, section 393. Articles written before 2026 may use the old numbers.</p>
          <table class="lc-table">
            <thead><tr><th>Topic</th><th>The basic idea</th><th>Riya's situation (made up)</th></tr></thead>
            <tbody>
              <tr><td><strong>GST registration</strong></td><td>GST (Goods and Services Tax) registration is usually needed once your yearly turnover from services crosses ₹20 lakh. In some special category states, the limit is ₹10 lakh. Some cases need registration earlier. Once registered, you charge GST and file returns.</td><td>About ₹6,48,000 a year (₹54,000 × 12). That is 32.4% of ₹20 lakh. Her CA checks every year.</td></tr>
              <tr><td><strong>TDS on professional fees</strong></td><td>TDS (tax deducted at source) means the payer keeps back part of your fee and pays it to the government for you. Many brands treat creator fees as professional fees: 10% once their payments to you cross ₹50,000 in a year. This was section 194J in the old Act. Some brands use a different rule with a lower rate.</td><td>SteelNest pays her ₹27,150 this year, below ₹50,000. So SteelNest will usually not deduct TDS on it.</td></tr>
              <tr><td><strong>Gifted products</strong></td><td>A product you keep can count as a benefit. The brand deducts TDS on benefits once their value to you crosses ₹20,000 in a year. This was section 194R. Guidance on the old rule (2022) said a product returned after use was not a benefit. Ask a CA if this still applies. The value of a kept product may also count as your income.</td><td>The SteelNest tiffin set is worth ₹3,200. She keeps it. She writes it in her gifts list and asks her CA how to show it.</td></tr>
              <tr><td><strong>Advance tax</strong></td><td>If your tax for the year will be ₹10,000 or more, you pay it in parts during the year, by the dates in the diagram. Late payment can mean interest. Some freelancers use a simpler "presumptive" scheme and can pay it all by 15 March. Ask your CA which applies to you.</td><td>Her CA works out her estimate each quarter.</td></tr>
            </tbody>
          </table>
          <p><strong>TDS is not extra tax.</strong> It is part of your tax, paid early. It shows in your annual tax statement on the income tax e-filing portal (Form 26AS, called Form 168 from tax year 2026-27). Check it every quarter. If a brand deducted TDS but it is missing, ask the brand to fix it.</p>
          <p>Suppose Tadka Tech books a dedicated video (₹30,000) and a Launch Pack (₹23,850) in the same year. That is ₹53,850, above ₹50,000. If Tadka Tech deducts 10% TDS, Riya receives ₹48,465 and ₹5,385 is credited against her tax. Her YouTube ad income comes through Google AdSense. She keeps her tax details there up to date, as its help pages ask.</p>
        </div>
        <div class="lc-card">
          <h3>Saving for tax and working with your CA</h3>
          <p>Creator income is uneven. Riya had two months with no brand deals. So she moves 10% of every payment into a separate savings account, her "tax pot". This is a habit, not a tax rate. Her CA will tell her if 10% is too little or too much.</p>
          <p>Every month, she sends her CA one folder: invoices, bank statement, the payment tracker, the gifts list and her TDS check. AI helps her tidy and summarise this. AI does not decide anything about her tax.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>How much tax do I have to pay as a YouTuber in India?</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>I am a creator in India, not registered for GST. Here is my
        income by month and by type (made-up sample). Make a list of
        questions to ask my CA about GST registration, TDS on brand
        fees, gifted products and advance tax. Explain each term in one
        simple sentence. Do not tell me what I owe. Mark anything
        that may depend on new 2026 rules.</code></pre>
          <p>Do not paste your PAN, bank details or brand contracts into a public AI tool. Use placeholders like [PAN] instead.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: from deal to tax, in order</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put Riya's money steps for one brand deal in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Note the fee, payment dates and any TDS details from the signed contract</li>
              <li data-order="2">Send the invoice with her PAN on the date the contract says</li>
              <li data-order="3">Add the invoice to her tracker with its due date</li>
              <li data-order="4">When the money arrives, check the amount and any TDS the brand deducted</li>
              <li data-order="5">Move 10% of the payment into her tax pot</li>
              <li data-order="6">Check each quarter that the TDS shows in her annual tax statement</li>
              <li data-order="7">Send the month's records to her CA before the next advance tax date</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to set up your invoice, your payment tracker and your questions for a CA. Keep the sample details, or change the brackets. Never paste real PAN or bank numbers.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an assistant who helps small creators in India with money admin. Use simple English. You are not a tax adviser.

        Me: [Riya, home-cooking creator in Maharashtra, not registered for GST]
        Deal: [SteelNest, 1 YouTube integration + 1 Reel + 2 story sets, total 27,150 rupees; 50% on signing, 50% within 30 days of posting; posted 12 October 2026]
        Other income this year: [YouTube ads, affiliate links, workshops, e-book]
        Gifted product kept: [tiffin set, value 3,200 rupees]

        Tasks:
        1. Write the invoice for the second payment. Use placeholders like [PAN] and [bank details]. Work out the amount and due date.
        2. Give the column headings for an invoice tracker, with a spreadsheet formula for due date and days late.
        3. List 8 questions for my chartered accountant about GST registration, TDS on my fees, the gifted product and advance tax.
        4. Add a short note on which rules may have changed with India's Income-tax Act, 2025.
        Do not tell me how much tax I owe. Say clearly that this is not tax advice.</pre>
            <ul class="ai-try-checks">
              <li>Is the amount half of the total, and is the due date 30 days after posting?</li>
              <li>Did the AI use placeholders, not made-up PAN or bank numbers?</li>
              <li>Do the formulas work when you paste them into your sheet?</li>
              <li>Did it avoid telling you what tax you owe? Check every rule with your CA.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Clear invoices, a payment tracker and a tax pot turn uneven creator income into something you can manage. Let AI draft and organise the admin. Let a chartered accountant decide GST, TDS and tax questions, because the rules change and every creator's case is different.
        </div>
      HTML
      starter_code: nil
    },
    14 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-create">Content Creation</div>
          <h1 class="lc-title">Building Long-Term Brand Partnerships</h1>
        </div>
        <p class="lc-lead">One-off deals make your income go up and down. A brand that books you again and again gives you steady money and better content. In this lesson, you will learn how to turn a good campaign into repeat work or an ambassador programme. You will price a long-term deal, define exclusivity clearly and protect your reputation with your audience. You will use AI to plan check-ins, draft a proposal and watch for problems. Riya's honest SteelNest report led to a bigger offer. All details are made up.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 310" role="img" aria-label="A timeline from a one-off deal in October 2026, to an honest report in November, her ambassador proposal in December, a six-month programme from January to June 2027 and a review in May 2027. Below, the made-up deal maths: 84,000 rupees at rate card, 10 percent discount to 75,600, plus 6,600 for 90 days of narrow exclusivity, total 82,200 or 13,700 a month. On the right, five trust rules.">
            <defs><marker id="bd14a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12" fill="#e2e0f0" text-anchor="middle">
              <rect x="20" y="20" width="128" height="56" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="84" y="44" font-weight="700">One-off deal</text>
              <text x="84" y="63" font-size="11" fill="#9b99b8">Oct 2026</text>
              <rect x="168" y="20" width="128" height="56" rx="8" fill="#1f1f44" stroke="#10b981"/>
              <text x="232" y="44" font-weight="700">Honest report</text>
              <text x="232" y="63" font-size="11" fill="#9b99b8">Nov 2026</text>
              <rect x="316" y="20" width="128" height="56" rx="8" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="380" y="44" font-weight="700">Her proposal</text>
              <text x="380" y="63" font-size="11" fill="#9b99b8">Dec 2026</text>
              <rect x="464" y="20" width="128" height="56" rx="8" fill="#1f1f44" stroke="#ec4899"/>
              <text x="528" y="44" font-weight="700">6-month deal</text>
              <text x="528" y="63" font-size="11" fill="#9b99b8">Jan to Jun 2027</text>
              <rect x="612" y="20" width="128" height="56" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="676" y="44" font-weight="700">Review, renew</text>
              <text x="676" y="63" font-size="11" fill="#9b99b8">May 2027</text>
              <line x1="148" y1="48" x2="164" y2="48" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#bd14a)"/>
              <line x1="296" y1="48" x2="312" y2="48" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#bd14a)"/>
              <line x1="444" y1="48" x2="460" y2="48" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#bd14a)"/>
              <line x1="592" y1="48" x2="608" y2="48" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#bd14a)"/>
              <rect x="20" y="100" width="410" height="190" rx="10" fill="#27274e" stroke="#ec4899"/>
              <text x="225" y="126" font-size="13" font-weight="700" fill="#f9a8d4">Ambassador deal maths (made up)</text>
              <g text-anchor="start">
                <text x="38" y="156">1 Reel + 1 story set a month, 6 months: ₹84,000</text>
                <text x="38" y="182">10% long-term discount: ₹75,600</text>
                <text x="38" y="208">Exclusivity, steel tiffins, 90 days: +₹6,600</text>
                <text x="38" y="238" font-size="13" font-weight="700">Total ₹82,200 = ₹13,700 a month</text>
                <text x="38" y="266" font-size="11" fill="#9b99b8">9 hours a month, about ₹1,433 an hour after costs</text>
              </g>
              <rect x="450" y="100" width="290" height="190" rx="10" fill="#27274e" stroke="#10b981"/>
              <text x="595" y="126" font-size="13" font-weight="700" fill="#6ee7b7">Trust rules</text>
              <g text-anchor="start">
                <text x="468" y="156">1. Only products she uses</text>
                <text x="468" y="182">2. At most 2 of 6 Reels sponsored</text>
                <text x="468" y="208">3. Honest updates, good and bad</text>
                <text x="468" y="234">4. A label on every post</text>
                <text x="468" y="260">5. Either side can exit on notice</text>
              </g>
            </g>
          </svg>
          <figcaption>How one honest campaign became a six-month partnership. The deal maths and trust rules are Riya's made-up example.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Why repeat deals matter</h3>
          <p>Look at Riya's brand-deal income from March to August 2026: ₹0, ₹30,000, ₹12,000, ₹0, ₹55,000, ₹35,000. The average is ₹22,000, but two months had nothing. A long-term partner fixes part of this problem.</p>
          <table class="lc-table">
            <thead><tr><th>Type</th><th>What it means</th><th>Good for</th></tr></thead>
            <tbody>
              <tr><td><strong>Repeat deal</strong></td><td>The same brand books you again for a new campaign</td><td>Less pitching. The brand already trusts your work.</td></tr>
              <tr><td><strong>Ambassador programme</strong></td><td>A brand pays you for a series of posts over several months, often with some exclusivity</td><td>Steady monthly income. Your audience sees you really use the product.</td></tr>
              <tr><td><strong>Product collaboration</strong></td><td>You help design a product, and earn a fee or a share of sales</td><td>Larger, trusted creators. Needs a careful contract and a lawyer.</td></tr>
            </tbody>
          </table>
          <p>Brands rebook creators who are easy to work with. That means posting on time, reporting honestly, answering emails and sharing useful audience feedback. Riya's report gave SteelNest the top viewer questions. SteelNest used one of them to improve its product page.</p>
        </div>
        <div class="lc-card">
          <h3>Worked example: Riya's ambassador proposal</h3>
          <p>In November 2026, SteelNest asks Riya to be its ambassador for 6 months. It also wants exclusivity in "all kitchenware" for the whole time. Exclusivity means she cannot work with rival brands in that category. "All kitchenware" would block Tadka Tech, which she is also talking to. Riya's rule is narrow categories only, and at most 90 days at a time.</p>
          <table class="lc-table">
            <thead><tr><th>Term</th><th>SteelNest asked</th><th>Riya's proposal</th></tr></thead>
            <tbody>
              <tr><td>Scope</td><td>"Regular content"</td><td>1 Reel + 1 story set each month, January to June 2027</td></tr>
              <tr><td>Exclusivity</td><td>All kitchenware, 6 months</td><td>Non-electric steel tiffin boxes and lunch-box sets only, January to March 2027. Electric appliances are not included. Review in March.</td></tr>
              <tr><td>Paid-ads use</td><td>Not mentioned</td><td>Not included. Priced separately if SteelNest wants it.</td></tr>
              <tr><td>Payment</td><td>Not mentioned</td><td>Invoice on the 1st of each month, paid within 15 days</td></tr>
              <tr><td>Ending early</td><td>Not mentioned</td><td>Either side can end with 30 days' notice. She can pause if the product has a quality problem.</td></tr>
            </tbody>
          </table>
          <pre><code>Rate card:   (Reel ₹11,000 + story set ₹3,000) × 6 months = ₹84,000
        Discount:    10% for a multi-item deal     → 84,000 × 0.9 = ₹75,600
        Exclusivity: +20% of the Reel fee per 30 days, for 3 months
                     = 3 × ₹2,200                               = ₹6,600
        Total:       75,600 + 6,600                            = ₹82,200
        Per month:   82,200 ÷ 6                                = ₹13,700
        Per hour:    (13,700 − ₹800 Reel props) ÷ 9 hours    ≈ ₹1,433
                     (Reel 7 hours + story set 2 hours, after direct costs)</code></pre>
          <p>The exact category words matter. "Lunch-box sets" alone might include Tadka Tech's electric lunch-box heater. So Riya writes "non-electric" and "electric appliances are not included". She asks a lawyer to check the final wording. This is general education, not legal advice.</p>
          <p>One more money point. SteelNest paid her ₹27,150 in two parts, in September and November 2026. With January to March at ₹13,700 a month, its payments this tax year reach ₹68,250. That is above ₹50,000, so SteelNest may now deduct TDS. The money lesson explains this. Her CA will check it.</p>
        </div>
        <div class="lc-card">
          <h3>Protecting your reputation</h3>
          <p>A long partnership links your name to the brand for months. If the product fails, your viewers will remember. Riya keeps these habits:</p>
          <ul class="lc-list">
            <li><strong>Honest updates.</strong> After 3 months, she shares what still works and what does not. For example: "The lid still seals well. The bag zip broke, and SteelNest replaced it."</li>
            <li><strong>A limit on ads.</strong> At most 2 of her 6 Reels each month are sponsored. She watches comments for "too many ads".</li>
            <li><strong>A label on every post.</strong> Being an ambassador does not remove the need to label. Each sponsored post needs its own clear label.</li>
            <li><strong>A monthly brand check.</strong> She looks for news, complaints or recalls about SteelNest. AI can summarise search results, but she opens and reads the real sources.</li>
          </ul>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Write a message asking SteelNest to make me their ambassador.</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Write a short ambassador proposal to SteelNest. Start with 2
        results from our last campaign (numbers below). Offer 1 Reel
        and 1 story set a month for 6 months at ₹13,700 a month.
        Exclusivity: non-electric steel tiffin boxes only, 90 days.
        Include payment terms and a 30-day exit. Warm, confident,
        not pushy. Do not change my numbers. [paste results]</code></pre>
        </div>
        <div class="lc-card">
          <h3>Activity: builds trust or hurts trust?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Riya is three months into her SteelNest partnership. Sort each action.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="builds" data-label="Builds long-term trust"></div>
              <div data-sorter-target="bucket" data-bucket="hurts" data-label="Hurts trust"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="builds" data-why="Honest updates, including problems, show viewers she really uses the product.">She tells viewers the bag zip broke and how SteelNest handled it</li>
              <li data-bucket="hurts" data-why="Every sponsored post still needs its own clear label, even inside a long partnership.">She stops adding "Ad" to Reels because "everyone knows I work with SteelNest"</li>
              <li data-bucket="builds" data-why="Useful feedback helps the brand improve and makes her a valued partner.">She sends SteelNest the top 3 viewer questions every month</li>
              <li data-bucket="hurts" data-why="Too many sponsored posts make viewers feel sold to. Her rule is at most 2 of 6 Reels.">She adds a third sponsored Reel in one month for extra money</li>
              <li data-bucket="hurts" data-why="She cannot honestly praise a product feature she has not tested.">She repeats a new claim from the brand's brief without testing it</li>
              <li data-bucket="builds" data-why="Planning the renewal early, with results, avoids a sudden gap in income.">She sends a renewal proposal with results one month before the deal ends</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to draft a long-term partnership proposal with clear maths and fair terms. Keep Riya's details to practise, or use your own.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a partnerships coach for content creators. Use simple English.

        Me: [Riya, Tiffin Tales, home-cooking creator in Maharashtra]
        Brand: [SteelNest, steel tiffin boxes]. Last campaign results: [Reel reach 19,600 (my average 14,800); 118 discount code uses; top viewer question: which size fits a full meal]
        My rates: [Reel 11,000 rupees; story set 3,000 rupees]. Multi-item discount: [10%]. Exclusivity: [+20% of the Reel fee per 30 days, narrow category, at most 90 days]
        What the brand asked: [6-month ambassador deal, exclusivity in all kitchenware]

        Tasks:
        1. Work out a 6-month fee for 1 Reel and 1 story set a month, with my discount and 90 days of narrow exclusivity. Show every step and the monthly amount.
        2. Suggest exact exclusivity wording that is narrow and clear.
        3. Write a short proposal email: results, offer, payment terms, a 30-day exit, and a review date.
        4. List 3 trust rules I should keep during the partnership.
        Use only my numbers. Do not promise results. Add a note that a lawyer should check the contract.</pre>
            <ul class="ai-try-checks">
              <li>Is the maths right? Check the total and the monthly amount in a spreadsheet.</li>
              <li>Is the exclusivity category narrow and clear, with a time limit?</li>
              <li>Does the email quote your real results only, with no invented numbers?</li>
              <li>Does the proposal include payment terms and a way to end the deal?</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Long-term partners are earned with honest reports, reliable work and useful feedback. Price the deal from your rate card, keep exclusivity narrow and time-limited, and protect your audience's trust. That trust is the thing the brand is really paying for.
        </div>
      HTML
      starter_code: nil
    },
    15 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-create">Content Creation</div>
          <h1 class="lc-title">Capstone: A Creator Business Plan for Tiffin Tales</h1>
        </div>
        <p class="lc-lead">In this capstone, you will bring everything together into one creator business plan. It has six parts: an income map, a media kit, a rate card, a brand pitch, a contract checklist and a campaign report. It ends with an honest goal check: will the plan reach your income goal, and does it fit your hours? We will build Riya's plan for January to June 2027 with AI. Then you will build your own. AI drafts and calculates. You check every number and make every decision.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 330" role="img" aria-label="Six parts of Riya's made-up business plan: income map, media kit, rate card, brand pitch, contract checklist and campaign report, feeding a goal check. Goal 93,500 rupees a month, plan 84,000, gap 9,500. Bars compare income now 54,000, the plan 84,000 and the goal 93,500.">
            <defs><marker id="bd15a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12" fill="#e2e0f0" text-anchor="middle">
              <text x="380" y="24" font-size="13" font-weight="700" fill="#c4b5fd">Riya's creator business plan: six parts and one goal check (made up)</text>
              <rect x="20" y="40" width="145" height="62" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="92" y="66" font-weight="700">1. Income map</text>
              <text x="92" y="86" font-size="11" fill="#9b99b8">₹54,000 a month now</text>
              <rect x="178" y="40" width="145" height="62" rx="8" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="250" y="66" font-weight="700">2. Media kit</text>
              <text x="250" y="86" font-size="11" fill="#9b99b8">dated, honest numbers</text>
              <rect x="336" y="40" width="145" height="62" rx="8" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="408" y="66" font-weight="700">3. Rate card</text>
              <text x="408" y="86" font-size="11" fill="#9b99b8">₹670 an hour base</text>
              <rect x="20" y="114" width="145" height="62" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="92" y="140" font-weight="700">4. Brand pitch</text>
              <text x="92" y="160" font-size="11" fill="#9b99b8">one real target brand</text>
              <rect x="178" y="114" width="145" height="62" rx="8" fill="#1f1f44" stroke="#ec4899"/>
              <text x="250" y="140" font-weight="700">5. Contract list</text>
              <text x="250" y="160" font-size="11" fill="#9b99b8">red flags, lawyer Qs</text>
              <rect x="336" y="114" width="145" height="62" rx="8" fill="#1f1f44" stroke="#10b981"/>
              <text x="408" y="140" font-weight="700">6. Report</text>
              <text x="408" y="160" font-size="11" fill="#9b99b8">template from SteelNest</text>
              <line x1="484" y1="108" x2="512" y2="108" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#bd15a)"/>
              <rect x="516" y="40" width="224" height="136" rx="10" fill="#27274e" stroke="#f59e0b"/>
              <text x="628" y="64" font-weight="700" fill="#fcd34d">Goal check, Jan to Jun 2027</text>
              <text x="628" y="90">Goal: ₹93,500 a month</text>
              <text x="628" y="106" font-size="11" fill="#9b99b8">₹60,000 pay + ₹33,500 costs</text>
              <text x="628" y="132">Plan: ₹84,000 a month</text>
              <text x="628" y="160" font-size="13" font-weight="700" fill="#fcd34d">Gap: ₹9,500 a month</text>
              <g text-anchor="start">
                <text x="20" y="222">Now (2026)</text>
                <rect x="170" y="206" width="277" height="24" rx="4" fill="#3b82f6"/>
                <text x="455" y="222">₹54,000</text>
                <text x="20" y="260">Plan, Jan to Jun 2027</text>
                <rect x="170" y="244" width="431" height="24" rx="4" fill="#10b981"/>
                <text x="609" y="260">₹84,000</text>
                <text x="20" y="298">Goal</text>
                <rect x="170" y="282" width="480" height="24" rx="4" fill="none" stroke="#f59e0b" stroke-width="2" stroke-dasharray="6 4"/>
                <text x="658" y="298">₹93,500</text>
              </g>
            </g>
          </svg>
          <figcaption>The six parts feed one honest goal check. Riya's plan is ₹30,000 a month above today, but still ₹9,500 short of her goal. All numbers are made up.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The six parts of a creator business plan</h3>
          <table class="lc-table">
            <thead><tr><th>Part</th><th>What it answers</th><th>Riya's version (made up)</th><th>Check before you use it</th></tr></thead>
            <tbody>
              <tr><td><strong>1. Income map</strong></td><td>Where does my money come from, and how steady is it?</td><td>5 streams, ₹54,000 a month, costs ₹33,500, profit ₹20,500</td><td>Numbers from bank statements, not memory</td></tr>
              <tr><td><strong>2. Media kit</strong></td><td>Why should a brand work with me?</td><td>48,600 YouTube subscribers, 14,800 average Reel reach, audience 62% women, Masala Mitra and SteelNest results</td><td>Date ranges, methods, permission to share results</td></tr>
              <tr><td><strong>3. Rate card</strong></td><td>What do I charge, and why?</td><td>₹670 an hour base. Reel ₹11,000, integration ₹9,500, Launch Pack ₹23,850. Paid-ads use +30%, exclusivity +20%.</td><td>Every price is above its floor price</td></tr>
              <tr><td><strong>4. Brand pitch</strong></td><td>Which brand fits, and what do I offer?</td><td>Tadka Tech: test the lunch-box heater first, then an integration or a Launch Pack</td><td>Real brand research, a product you would use</td></tr>
              <tr><td><strong>5. Contract checklist</strong></td><td>What must I never sign without changes?</td><td>No rights forever, narrow and short exclusivity, paid within 30 days, one round of changes, no AI copies of her face or voice</td><td>A lawyer checks the final contract</td></tr>
              <tr><td><strong>6. Campaign report</strong></td><td>How do I show results honestly?</td><td>The SteelNest 30-day report, used as a template</td><td>Screenshots, own averages, weak results shown</td></tr>
            </tbody>
          </table>
          <p>Keep all six parts in one folder. Update the numbers every month, and review the rate card and media kit every quarter.</p>
        </div>
        <div class="lc-card">
          <h3>Worked example: Riya's income plan for January to June 2027</h3>
          <p>Riya wants to take home ₹60,000 a month. Her costs are ₹33,500. So she needs ₹93,500 a month in income, before tax. She plans each stream from evidence, not hope.</p>
          <table class="lc-table">
            <thead><tr><th>Stream</th><th>Now</th><th>Plan</th><th>Why this number</th></tr></thead>
            <tbody>
              <tr><td>YouTube ad revenue</td><td>₹18,500</td><td>₹18,500</td><td>No growth assumed. She cannot control it.</td></tr>
              <tr><td>Affiliate links</td><td>₹4,200</td><td>₹4,200</td><td>Steady for 6 months</td></tr>
              <tr><td>SteelNest ambassador deal</td><td>₹0</td><td>₹13,700</td><td>Agreed proposal: ₹82,200 over 6 months</td></tr>
              <tr><td>Other brand deals</td><td>₹22,000</td><td>₹28,600</td><td>About one Launch Pack a month (₹23,850) plus one integration every two months (₹4,750 a month)</td></tr>
              <tr><td>Workshops</td><td>₹6,000</td><td>₹12,000</td><td>Two a month, 20 people × ₹300 each</td></tr>
              <tr><td>E-book "30 Tiffin Plans"</td><td>₹3,300</td><td>₹3,300</td><td>Same as now</td></tr>
              <tr><td>New "Snack Box Planner"</td><td>₹0</td><td>₹3,700</td><td>20 copies × ₹185 kept per copy</td></tr>
              <tr><td><strong>Total</strong></td><td><strong>₹54,000</strong></td><td><strong>₹84,000</strong></td><td>Goal ₹93,500. <strong>Gap ₹9,500.</strong></td></tr>
            </tbody>
          </table>
          <pre><code>Plan total:   =SUM(C2:C8)                → ₹84,000
        Profit:       =84000-33500               → ₹50,500 (now ₹20,500)
        Gap to goal:  =93500-84000               → ₹9,500
        Yearly pace:  =84000*12                  → ₹10,08,000
        Share of the ₹20 lakh GST limit: =1008000/2000000 → 50.4%</code></pre>
          <p><strong>The plan does not reach the goal, and that is useful to know.</strong> Riya lists her options: raise rates at her April review, run a third workshop, cut a cost, or reach the goal later in 2027. She does not fill the gap with a guess.</p>
          <p><strong>Hours check.</strong> The ambassador deal adds 9 hours a month and the second workshop adds about 5. That is 14 hours. She cuts normal Shorts from 8 to 4 a month (saves 12 hours). AI drafts for pitches, invoices and reports save about 2 hours. She watches her views for two months. If they fall, she changes the plan.</p>
          <p><strong>Money check.</strong> At ₹84,000 a month, her yearly income is about half of the ₹20 lakh GST limit for services. More brands may also deduct TDS. She shares the plan with her CA. This is general education, not financial or tax advice.</p>
        </div>
        <div class="lc-card">
          <h3>Your one-page plan and monthly routine</h3>
          <pre><code>CREATOR BUSINESS PLAN: [channel name]      Period: [6 months]
        1. Goal: take home ₹[   ] a month + costs ₹[   ] = income ₹[   ]
        2. Income map: [stream | now | plan | evidence]
        3. Media kit: [link] updated [date]
        4. Rate card: base ₹[   ]/hour; floors checked [yes/no]
        5. Brands to pitch: [3 names, why each fits, product I use]
        6. Contract checklist: [my 8 rules] + lawyer: [name]
        7. Report template: [link]
        8. Gap to goal: ₹[   ]. Options: [   ]
        9. Hours check: added [   ] h, removed [   ] h
        10. Money: tax pot [  ]%, CA review date [   ]</code></pre>
          <table class="lc-table">
            <thead><tr><th>How often</th><th>Riya's routine</th></tr></thead>
            <tbody>
              <tr><td>Every week</td><td>Research and pitch 2 brands. Follow up once after 7 days.</td></tr>
              <tr><td>Every month</td><td>Update numbers, send reports and invoices, move money to the tax pot, send records to her CA</td></tr>
              <tr><td>Every quarter</td><td>Review the rate card and media kit. Compare the plan with real income.</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Activity: Riya builds her plan with AI</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Riya's prompt">She pastes her income map, rate card and costs. She asks for a 6-month plan to take home ₹60,000 a month.</li>
              <li data-kind="answer" data-label="AI plan">The plan reaches ₹93,500 "easily". It assumes YouTube ad revenue grows 30% and she lands three dedicated videos a month.</li>
              <li data-kind="warn" data-label="Wishful numbers">There is no evidence for 30% growth. She has never had three dedicated videos in a month. Her best brand month was ₹55,000.</li>
              <li data-kind="tool" data-label="Spreadsheet">She rebuilds the plan in her sheet. Each stream gets a "why this number" note with evidence.</li>
              <li data-kind="result" data-label="Honest total">The plan totals ₹84,000 a month. The gap to her goal is ₹9,500.</li>
              <li data-kind="check" data-label="Hours check">She adds up the new hours and the hours she will save. The month still fits about 140 hours.</li>
              <li data-kind="check" data-label="CA review">She books a call with her CA about GST, TDS and her tax pot before she starts.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to build your own creator business plan. Replace the brackets with your numbers, or keep Riya's to see a full example.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a business coach for content creators. Use simple English.

        Me: [Riya, Tiffin Tales, home-cooking creator in Maharashtra]
        Goal: take home [60,000] rupees a month. Costs: [33,500] a month. Hours: [140] a month.
        Income now (monthly): [YouTube ads 18,500; affiliate 4,200; brand deals 22,000 (uneven: 0 to 55,000); workshop 6,000; e-book 3,300]
        Rates: [670 an hour; Reel 11,000; integration 9,500; Launch Pack 23,850]
        New deals agreed: [ambassador deal, 13,700 a month for 6 months, 9 hours a month]

        Write a 6-month business plan:
        1. A table: stream, now, plan, and a "why this number" note with evidence. Show the total and the gap to my goal.
        2. An hours check: hours added and removed.
        3. 3 options to close any gap. Do not fill it with guesses.
        4. 3 brand types to pitch, and a contract checklist of 6 rules.
        5. A monthly routine.
        Rules: use only my numbers; no growth unless I give evidence; show every calculation; add one line saying this is not financial or tax advice.</pre>
            <ul class="ai-try-checks">
              <li>Add up the plan table yourself. Is the total right?</li>
              <li>Did the AI assume growth with no evidence? Remove it.</li>
              <li>Is the gap to your goal shown honestly, not hidden?</li>
              <li>Does the hours check fit your real month?</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A creator business plan is a set of honest numbers and clear rules, not a wish. Build each stream from evidence, show the gap to your goal, and check your hours. Use AI to draft, calculate and organise, then check every number yourself and ask a CA or lawyer where the money or the law matters.
        </div>
      HTML
      starter_code: nil
    }
  }.freeze
end

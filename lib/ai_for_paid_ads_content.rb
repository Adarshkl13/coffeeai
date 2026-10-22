module AiForPaidAdsContent
  # Units (sidebar dividers): 1–4 Paid Ads and AI Basics · 5–9 Creating Ads · 10–14 Running and Improving · 15 Capstone
  # Widgets: sequence, sorter, stepper. No code editor: each Try It is an ai-try prompt box.
  LESSONS = {
    1 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mkt">Digital Marketing</div>
          <h1 class="lc-title">How Paid Ads Work</h1>
        </div>
        <p class="lc-lead">A paid ad is a message that you pay a platform, such as Google or Meta, to show to people. In this lesson, you will learn the basic words of paid ads: auction, bid, budget, impression, click and conversion. You will also see how search ads and social ads are different. You need these words before AI can help you, because every prompt and every ad report uses them.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 290" role="img" aria-label="Two paths. Search ads: a person searches, an ad auction runs, the ad is shown, the person clicks, and then buys or enquires. Social ads: a person scrolls a feed, an auction runs, the ad is shown, the person clicks, and then buys or enquires.">
            <defs><marker id="ads1a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="12" y="24" text-anchor="start" font-weight="700" fill="#93c5fd">Search ads: the person is looking for you</text>
              <rect x="12" y="36" width="128" height="44" rx="8" fill="#1f1f44" stroke="#3b82f6"/><text x="76" y="63">Person searches</text>
              <rect x="164" y="36" width="128" height="44" rx="8" fill="#27274e" stroke="#8b5cf6"/><text x="228" y="63">Ad auction</text>
              <rect x="316" y="36" width="128" height="44" rx="8" fill="#1f1f44" stroke="#22d3ee"/><text x="380" y="63">Ad shown</text>
              <rect x="468" y="36" width="128" height="44" rx="8" fill="#1f1f44" stroke="#f59e0b"/><text x="532" y="63">Person clicks</text>
              <rect x="620" y="36" width="128" height="44" rx="8" fill="#1f1f44" stroke="#10b981"/><text x="684" y="63">Buys or enquires</text>
              <g font-size="11.5" fill="#9b99b8">
                <text x="76" y="100">"cake shop near me"</text>
                <text x="228" y="100">bid + ad quality</text>
                <text x="380" y="100">= an impression</text>
                <text x="532" y="100">= a click</text>
                <text x="684" y="100">= a conversion</text>
              </g>
              <text x="12" y="150" text-anchor="start" font-weight="700" fill="#f9a8d4">Social ads: you reach people while they scroll</text>
              <rect x="12" y="162" width="128" height="44" rx="8" fill="#1f1f44" stroke="#ec4899"/><text x="76" y="189">Person scrolls</text>
              <rect x="164" y="162" width="128" height="44" rx="8" fill="#27274e" stroke="#8b5cf6"/><text x="228" y="189">Ad auction</text>
              <rect x="316" y="162" width="128" height="44" rx="8" fill="#1f1f44" stroke="#22d3ee"/><text x="380" y="189">Ad shown</text>
              <rect x="468" y="162" width="128" height="44" rx="8" fill="#1f1f44" stroke="#f59e0b"/><text x="532" y="189">Person clicks</text>
              <rect x="620" y="162" width="128" height="44" rx="8" fill="#1f1f44" stroke="#10b981"/><text x="684" y="189">Buys or enquires</text>
              <g font-size="11.5" fill="#9b99b8">
                <text x="76" y="226">Instagram feed</text>
                <text x="228" y="226">bid + ad quality</text>
                <text x="380" y="226">= an impression</text>
                <text x="532" y="226">= a click</text>
                <text x="684" y="226">= a conversion</text>
              </g>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ads1a)">
                <line x1="142" y1="58" x2="161" y2="58"/><line x1="294" y1="58" x2="313" y2="58"/><line x1="446" y1="58" x2="465" y2="58"/><line x1="598" y1="58" x2="617" y2="58"/>
                <line x1="142" y1="184" x2="161" y2="184"/><line x1="294" y1="184" x2="313" y2="184"/><line x1="446" y1="184" x2="465" y2="184"/><line x1="598" y1="184" x2="617" y2="184"/>
              </g>
              <text x="380" y="270" font-size="12" fill="#fcd34d">You set the budget. The auction decides the price you pay each time.</text>
            </g>
          </svg>
          <figcaption>Search ads and social ads follow the same steps. The difference is how the person meets your ad.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The key words</h3>
          <p>Here is how a made-up home bakery, <strong>Sweet Crumbs</strong> in Maharashtra, meets each word.</p>
          <table class="lc-table">
            <thead><tr><th>Word</th><th>Plain meaning</th><th>Sweet Crumbs example</th></tr></thead>
            <tbody>
              <tr><td><strong>Auction</strong></td><td>A very fast contest that decides which ads show, and in which order. It runs every time a space for an ad is free.</td><td>Five bakeries want to show an ad for "birthday cake near me". The auction picks the order.</td></tr>
              <tr><td><strong>Bid</strong></td><td>The most you are willing to pay for a click or a result. Many advertisers let the platform set bids for them.</td><td>Sweet Crumbs allows up to ₹25 for one click.</td></tr>
              <tr><td><strong>Budget</strong></td><td>The total money you allow the platform to spend, per day or for the whole campaign.</td><td>₹500 a day for 14 days</td></tr>
              <tr><td><strong>Impression</strong></td><td>One time your ad is shown on a screen</td><td>The ad appears 2,000 times in one day.</td></tr>
              <tr><td><strong>Click</strong></td><td>A person taps the ad and goes to your page</td><td>60 people open the order page.</td></tr>
              <tr><td><strong>Conversion</strong></td><td>The action you want after the click, such as a purchase, a form fill or a WhatsApp message</td><td>6 people place a cake order.</td></tr>
            </tbody>
          </table>
          <p>The highest bid does not always win. Google and Meta both look at your bid <em>and</em> at signs of ad quality, such as how useful the ad seems to the person. A good ad can win a better place for less money. You also often pay less than your highest bid. The exact rules differ by platform, so check the tool's current help pages.</p>
        </div>
        <div class="lc-card">
          <h3>Search ads vs social ads</h3>
          <table class="lc-table">
            <thead><tr><th></th><th>Search ads (for example Google Ads)</th><th>Social ads (for example Meta Ads Manager)</th></tr></thead>
            <tbody>
              <tr><td><strong>How people meet the ad</strong></td><td>They type a search. Your ad appears with the results.</td><td>They scroll Facebook or Instagram. Your ad appears in the feed, Stories or Reels.</td></tr>
              <tr><td><strong>What you choose</strong></td><td>Keywords (the search words you want to show for)</td><td>An audience (a group of people) and a campaign objective (the result you want)</td></tr>
              <tr><td><strong>Buyer mood</strong></td><td>Already looking. Often ready to act.</td><td>Not looking yet. You must catch their attention.</td></tr>
              <tr><td><strong>Main content</strong></td><td>Short text: headlines and descriptions</td><td>Images and videos, with short text</td></tr>
              <tr><td><strong>Good for</strong></td><td>Catching people who already want what you sell</td><td>Showing new people something they did not know they wanted</td></tr>
            </tbody>
          </table>
          <p>Search ads are often charged per click. Social ads are often charged per 1,000 impressions, but other options exist. Payment options change, so check each platform's help pages.</p>
        </div>
        <div class="lc-card">
          <h3>Using AI to learn the basics</h3>
          <p>An AI assistant (such as Claude or ChatGPT) is a patient teacher. It can explain ad words using your own business. But it can be wrong about platform details, and it does not know real prices in your market.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Explain Google Ads.</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>I run Sweet Crumbs, a home bakery in Maharashtra. I have never run ads.
        Explain how one Google search ad and one Instagram ad would work for me.
        Use these words: auction, bid, budget, impression, click, conversion.
        Use one made-up example with numbers in rupees. Mark them as made up.
        Use short sentences.</code></pre>
          <p>The better prompt gives your business, your level and the words to teach. You still check any platform detail in the official help pages before you spend money.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: from search to sale</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put the steps of a search ad in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">The bakery sets a daily budget and chooses keywords.</li>
              <li data-order="2">A person searches "eggless birthday cake near me".</li>
              <li data-order="3">An auction runs in a fraction of a second.</li>
              <li data-order="4">The ad appears on the results page (an impression).</li>
              <li data-order="5">The person taps the ad (a click).</li>
              <li data-order="6">The person places an order (a conversion).</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to explain paid ads using your own business. Change the words in brackets first, or send it as it is.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a patient paid ads teacher. I am new to advertising.
        I run [a small bakery] in [Maharashtra]. I sell [cakes and cookies] and most customers are [local families].

        1. Explain how one Google search ad and one Instagram ad would work for my business.
        2. Use and explain these words: auction, bid, budget, impression, click, conversion.
        3. Give one worked example with made-up numbers in rupees. Label the numbers as made up.
        4. Make a small table: search ads vs social ads for my business (how people meet the ad, what I choose, buyer mood).
        5. End with 3 questions I should answer before I spend any money.

        Use short, simple sentences. Do not promise results. If a platform detail may change, say so.</pre>
            <ul class="ai-try-checks">
              <li>Each of the six words is explained correctly and simply.</li>
              <li>The numbers are clearly labelled as made up, not real averages.</li>
              <li>It says the auction looks at more than just the bid.</li>
              <li>It does not promise sales or guaranteed results.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Every paid ad follows one path: auction, impression, click, conversion. You control the budget, the targeting and the ad. The auction controls the price. Learn this path first, and every ad report will make sense.
        </div>
      HTML
      starter_code: nil
    },
    2 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mkt">Digital Marketing</div>
          <h1 class="lc-title">Where AI Helps in Advertising</h1>
        </div>
        <p class="lc-lead">AI now helps at almost every step of paid ads. There are two kinds of help. An <strong>AI assistant</strong> (such as Claude or ChatGPT) helps you write, plan and read reports. <strong>Platform automation</strong> is AI built into Google Ads and Meta Ads Manager. It sets bids and chooses who sees your ads. In this lesson, you will learn what each kind does well, and what you must still decide yourself.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 295" role="img" aria-label="Three columns. AI assistant helps with ad copy drafts, ideas, audience and keyword ideas, report summaries and plans. Platform automation handles bids, placements, mixing headlines and images, finding likely buyers and budget pacing. You decide the goal and budget, the offer and prices, which claims are true, which results matter and final approval. The first two columns lead to a bar: you check and approve before anything goes live.">
            <defs><marker id="ads2a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12.5" fill="#e2e0f0" text-anchor="middle">
              <rect x="15" y="15" width="230" height="195" rx="12" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="130" y="42" font-size="14" font-weight="700" fill="#c4b5fd">AI assistant helps</text>
              <text x="130" y="72">Ad copy drafts</text>
              <text x="130" y="100">Headline and hook ideas</text>
              <text x="130" y="128">Audience and keyword ideas</text>
              <text x="130" y="156">Summaries of ad reports</text>
              <text x="130" y="184">Checklists and plans</text>
              <rect x="265" y="15" width="230" height="195" rx="12" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="380" y="42" font-size="14" font-weight="700" fill="#67e8f9">Platform automation</text>
              <text x="380" y="72">Bids for each auction</text>
              <text x="380" y="100">Where ads are shown</text>
              <text x="380" y="128">Mixing headlines and images</text>
              <text x="380" y="156">Finding likely buyers</text>
              <text x="380" y="184">Spending the budget evenly</text>
              <rect x="515" y="15" width="230" height="195" rx="12" fill="#27274e" stroke="#f59e0b"/>
              <text x="630" y="42" font-size="14" font-weight="700" fill="#fcd34d">You decide</text>
              <text x="630" y="72">The goal and the budget</text>
              <text x="630" y="100">The offer and the prices</text>
              <text x="630" y="128">Which claims are true</text>
              <text x="630" y="156">Which results matter</text>
              <text x="630" y="184">Final approval to publish</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ads2a)">
                <line x1="130" y1="212" x2="130" y2="236"/><line x1="380" y1="212" x2="380" y2="236"/>
              </g>
              <rect x="15" y="240" width="730" height="40" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="380" y="265" fill="#6ee7b7">You check and approve everything before it goes live.</text>
            </g>
          </svg>
          <figcaption>AI assistants draft and explain. Platform automation runs the auctions. You set the goal and approve the work.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>What an AI assistant does well</h3>
          <table class="lc-table">
            <thead><tr><th>Task</th><th>How AI helps</th><th>What you must check</th></tr></thead>
            <tbody>
              <tr><td>Ad copy</td><td>Writes 10 or 20 headline ideas in a minute</td><td>Length limits, true claims, correct prices</td></tr>
              <tr><td>Ideas</td><td>Suggests angles: price, speed, quality, trust</td><td>Does the angle fit your real business?</td></tr>
              <tr><td>Audiences and keywords</td><td>Lists customer types and search phrases</td><td>Check real search terms and audience sizes in the ad platform</td></tr>
              <tr><td>Reports</td><td>Finds patterns in an exported table and explains them</td><td>Redo the key sums in a spreadsheet</td></tr>
              <tr><td>Plans and checklists</td><td>Turns rough notes into a clear campaign plan</td><td>The budget and goal are your decision</td></tr>
            </tbody>
          </table>
          <p>An AI assistant cannot see your ad account unless you give it data. It does not know today's prices in your market. It can also state wrong facts with confidence. Treat its answer as a first draft.</p>
        </div>
        <div class="lc-card">
          <h3>Platform automation</h3>
          <p>Google Ads and Meta Ads Manager use their own AI inside the platform. You will meet these features in this course. Names and details change often, so check each tool's current help pages.</p>
          <ul class="lc-list">
            <li><strong>Automated bidding</strong> (Google calls it Smart Bidding): the platform sets a bid for each auction to reach your goal.</li>
            <li><strong>Responsive search ads</strong> (Google): you give many headlines and descriptions. Google mixes them and learns which mix works.</li>
            <li><strong>Performance Max</strong> (Google): one campaign that can show ads across Google's places, such as Search, YouTube and Gmail.</li>
            <li><strong>Advantage+</strong> (Meta): a group of automated options for audiences, placements and creatives (the images, videos and text of an ad).</li>
          </ul>
          <p>Automation learns from your <strong>conversion tracking</strong> (the setup that tells the platform when someone buys or enquires). If tracking is wrong, the platform learns the wrong lesson. For example, it may find people who click but never buy. So you must set a clear goal and check that tracking works.</p>
        </div>
        <div class="lc-card">
          <h3>Keep private data safe</h3>
          <p>Ad reports can hold customer data, such as lead names, phone numbers or emails. Do not paste this into a public AI tool. Remove personal details first, or use only totals like clicks and spend. Follow your company's rules on which AI tools you may use.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Here is my leads sheet. Tell me what to do.
        (pastes names and phone numbers)</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Here are 4 weeks of totals from my Meta lead ads (no personal data).
        Week, Spend, Clicks, Leads: 1, ₹3,500, 140, 9 | 2, ₹3,500, 120, 6 | ...
        Which week had the lowest cost per lead? Show your working.
        What should I check in the ad account before I change anything?</code></pre>
        </div>
        <div class="lc-card">
          <h3>Activity: who does this job?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each job to the one that should mainly do it.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="ai" data-label="AI assistant"></div>
              <div data-sorter-target="bucket" data-bucket="auto" data-label="Platform automation"></div>
              <div data-sorter-target="bucket" data-bucket="you" data-label="You decide"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="ai" data-why="Drafting many options fast is a strong use of an AI assistant. You still pick and check them.">Draft 15 headline ideas for a Diwali sale</li>
              <li data-bucket="auto" data-why="Only the platform sees each auction as it happens, so it sets the bid for each one.">Set the bid for each single auction</li>
              <li data-bucket="you" data-why="Money and business goals are your decision. AI can suggest, but you are responsible.">Choose the monthly ad budget</li>
              <li data-bucket="you" data-why="Only you know if a claim is true. Wrong claims can break ad policies and mislead customers.">Confirm that "delivery in 2 hours" is true</li>
              <li data-bucket="ai" data-why="An assistant can read an exported table and explain patterns. You then check the maths.">Summarise last month's exported ad report</li>
              <li data-bucket="auto" data-why="Features like Advantage+ placements let Meta choose where ads show, based on results.">Choose between Feed, Stories and Reels for each view</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to split your ad work into three groups: AI assistant, platform automation and your own decisions.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a practical paid ads coach for small businesses.
        My business: [a handicrafts store in Rajasthan that sells online across India].
        I plan to run [Google search ads and Instagram ads] with a budget of about [₹20,000 a month].

        Make a table with three columns:
        1. Jobs an AI assistant (like you) can draft or explain
        2. Jobs the ad platform's automation can handle
        3. Jobs I must decide or check myself

        Put 4 to 6 real ad tasks in each column.
        For each task in columns 1 and 2, add one short note on what I must check.
        Then list 3 kinds of data I should never paste into a public AI tool.

        Use simple English. Describe platform features in general words and tell me to check the platform's help pages for current details.</pre>
            <ul class="ai-try-checks">
              <li>Goal, budget, offer and final approval are in the "I decide" column.</li>
              <li>Each AI task has a clear check next to it.</li>
              <li>Platform features are described generally, not with exact promises.</li>
              <li>The private data list includes customer names, phone numbers and emails.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> AI is fast at drafts, ideas and sums. Platform automation is good at bids and delivery. Neither knows your real goal, your margins or what is true about your product. You decide those things, and you check everything before it goes live.
        </div>
      HTML
      starter_code: nil
    },
    3 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mkt">Digital Marketing</div>
          <h1 class="lc-title">Ad Metrics Explained</h1>
        </div>
        <p class="lc-lead">Ad metrics are the numbers that tell you if your ads work. In this lesson, you will learn six key metrics: CTR, CPC, CPM, conversion rate, CPA and ROAS. You will work through one example in rupees. You will also learn to check AI's maths with simple spreadsheet formulas, because AI sometimes gets sums wrong.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 240" role="img" aria-label="A made-up campaign: 20,000 impressions lead to 400 clicks, a CTR of 2 percent. 400 clicks lead to 20 conversions, a conversion rate of 5 percent. Spend is 8,000 rupees and revenue is 30,000 rupees. CPC is 20 rupees, CPM is 400 rupees, CPA is 400 rupees and ROAS is 3.75.">
            <defs><marker id="ads3a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="20" y="15" width="160" height="60" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="100" y="40" fill="#93c5fd">Impressions</text><text x="100" y="63" font-size="16" font-weight="700">20,000</text>
              <rect x="300" y="15" width="160" height="60" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="380" y="40" fill="#fcd34d">Clicks</text><text x="380" y="63" font-size="16" font-weight="700">400</text>
              <rect x="580" y="15" width="160" height="60" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="660" y="40" fill="#6ee7b7">Conversions</text><text x="660" y="63" font-size="16" font-weight="700">20</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ads3a)">
                <line x1="184" y1="50" x2="296" y2="50"/><line x1="464" y1="50" x2="576" y2="50"/>
              </g>
              <text x="240" y="40" font-size="12" font-weight="700">CTR 2%</text>
              <text x="240" y="68" font-size="11" fill="#9b99b8">400 ÷ 20,000</text>
              <text x="520" y="40" font-size="12" font-weight="700">Conv. rate 5%</text>
              <text x="520" y="68" font-size="11" fill="#9b99b8">20 ÷ 400</text>
              <text x="380" y="112" font-size="12.5" fill="#f9a8d4">Spend ₹8,000 · Revenue from these sales ₹30,000</text>
              <rect x="15" y="126" width="175" height="68" rx="10" fill="#27274e" stroke="#8b5cf6"/>
              <text x="102" y="154" font-size="14" font-weight="700">CPC ₹20</text><text x="102" y="178" font-size="11" fill="#9b99b8">₹8,000 ÷ 400 clicks</text>
              <rect x="200" y="126" width="175" height="68" rx="10" fill="#27274e" stroke="#22d3ee"/>
              <text x="287" y="154" font-size="14" font-weight="700">CPM ₹400</text><text x="287" y="178" font-size="11" fill="#9b99b8">₹8,000 ÷ 20,000 × 1,000</text>
              <rect x="385" y="126" width="175" height="68" rx="10" fill="#27274e" stroke="#10b981"/>
              <text x="472" y="154" font-size="14" font-weight="700">CPA ₹400</text><text x="472" y="178" font-size="11" fill="#9b99b8">₹8,000 ÷ 20 sales</text>
              <rect x="570" y="126" width="175" height="68" rx="10" fill="#27274e" stroke="#ec4899"/>
              <text x="657" y="154" font-size="14" font-weight="700">ROAS 3.75</text><text x="657" y="178" font-size="11" fill="#9b99b8">₹30,000 ÷ ₹8,000</text>
              <text x="380" y="224" font-size="11.5" fill="#9b99b8">Made-up numbers for one month of ads for a small online store.</text>
            </g>
          </svg>
          <figcaption>One made-up campaign. The top row shows the funnel. The bottom row shows what each result cost.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The six metrics</h3>
          <p>A made-up Rajasthan handicrafts store, <strong>Rang Mahal Crafts</strong>, ran Instagram ads for one month. It spent ₹8,000, got 20,000 impressions, 400 clicks and 20 orders. The orders brought ₹30,000 in revenue (money from sales).</p>
          <table class="lc-table">
            <thead><tr><th>Metric</th><th>Plain meaning</th><th>Formula</th><th>Rang Mahal</th></tr></thead>
            <tbody>
              <tr><td><strong>CTR</strong> (click-through rate)</td><td>The share of people who saw the ad and clicked it</td><td>clicks ÷ impressions × 100</td><td>400 ÷ 20,000 × 100 = 2%</td></tr>
              <tr><td><strong>CPC</strong> (cost per click)</td><td>What one click cost on average</td><td>spend ÷ clicks</td><td>₹8,000 ÷ 400 = ₹20</td></tr>
              <tr><td><strong>CPM</strong> (cost per 1,000 impressions)</td><td>What it cost to show the ad 1,000 times</td><td>spend ÷ impressions × 1,000</td><td>₹8,000 ÷ 20,000 × 1,000 = ₹400</td></tr>
              <tr><td><strong>Conversion rate</strong></td><td>The share of clicks that became a sale or lead</td><td>conversions ÷ clicks × 100</td><td>20 ÷ 400 × 100 = 5%</td></tr>
              <tr><td><strong>CPA</strong> (cost per acquisition)</td><td>What one sale or lead cost</td><td>spend ÷ conversions</td><td>₹8,000 ÷ 20 = ₹400</td></tr>
              <tr><td><strong>ROAS</strong> (return on ad spend)</td><td>Revenue earned for each ₹1 of ad spend</td><td>revenue ÷ spend</td><td>₹30,000 ÷ ₹8,000 = 3.75</td></tr>
            </tbody>
          </table>
          <p>There is no single "good" CTR or CPC. It depends on your industry, your city, the platform and the season. Compare your numbers with your own past results, not with numbers from the internet.</p>
        </div>
        <div class="lc-card">
          <h3>ROAS is not profit</h3>
          <p>ROAS uses revenue, not profit. Rang Mahal's ROAS of 3.75 sounds great. But suppose its profit margin (what is left after product costs) is 40%. Then ₹30,000 of sales leaves ₹12,000 after product costs. Take away ₹8,000 of ads, and ₹4,000 is left. Shipping, packing and other costs are not counted yet.</p>
          <p>A useful number is the <strong>break-even ROAS</strong>: 1 ÷ margin. With a 40% margin, it is 1 ÷ 0.40 = 2.5. Below 2.5, the ads lose money on product costs alone. Ask your accountant which costs to include for your business.</p>
        </div>
        <div class="lc-card">
          <h3>Check AI's maths in a spreadsheet</h3>
          <p>AI assistants explain metrics well. But they can make sum mistakes, such as forgetting "× 1,000" in CPM. Put your numbers in Google Sheets or Excel and use formulas. Here row 2 holds the data: B2 = impressions, C2 = clicks, D2 = spend, E2 = conversions, F2 = revenue.</p>
          <pre><code>CTR (%)           =C2/B2*100
        CPC (₹)           =D2/C2
        CPM (₹)           =D2/B2*1000
        Conversion rate   =E2/C2*100
        CPA (₹)           =D2/E2
        ROAS              =F2/D2</code></pre>
          <p>Also check what "conversion" means in your report. It might be a purchase, a lead or just an add-to-cart. Different platforms may also count the same sale in different ways.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: catch the maths mistake</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Prompt">"Here are my totals for March: 20,000 impressions, 400 clicks, ₹8,000 spend, 20 orders, ₹30,000 revenue. Calculate CTR, CPC, CPM, CPA and ROAS."</li>
              <li data-kind="answer" data-label="AI replies">"CTR 2%. CPC ₹20. CPM ₹0.40. CPA ₹400. ROAS 3.75. Your CPM is very low, so your ads are cheap to show."</li>
              <li data-kind="thought" data-label="You think">A CPM of 40 paise looks strange. Let me check it.</li>
              <li data-kind="tool" data-label="Spreadsheet">You type <code>=D2/B2*1000</code> in Google Sheets.</li>
              <li data-kind="result" data-label="Sheet shows">₹400. The AI divided spend by impressions but forgot to multiply by 1,000.</li>
              <li data-kind="warn" data-label="Mistake caught">The AI's comment "very cheap to show" was based on the wrong number. Do not repeat it to your team or client.</li>
              <li data-kind="check" data-label="Also check">In the report, "orders" means completed purchases, not add-to-carts. So CPA ₹400 is correct.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to calculate and compare metrics for three made-up campaigns. Then check one or two answers in a spreadsheet.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a careful paid ads analyst. Explain in simple English.
        Here are one month's totals for three ad campaigns for [my online store]. The numbers are [made up for practice].

        Campaign | Impressions | Clicks | Spend | Conversions | Revenue
        A | 20,000 | 400 | ₹8,000 | 20 | ₹30,000
        B | 50,000 | 500 | ₹6,000 | 10 | ₹12,000
        C | 8,000 | 320 | ₹9,600 | 24 | ₹31,200

        1. For each campaign, calculate CTR, CPC, CPM, conversion rate, CPA and ROAS. Show the formula and working for each.
        2. Put the results in one table.
        3. Say which campaign looks best and why, using CPA and ROAS.
        4. My profit margin is [40%]. Tell me the break-even ROAS and which campaigns are above it.
        5. List 3 things these numbers cannot tell me.</pre>
            <ul class="ai-try-checks">
              <li>CPM uses × 1,000 (Campaign A should be ₹400).</li>
              <li>Campaign B: CPA ₹600 and ROAS 2.</li>
              <li>Break-even ROAS for a 40% margin is 2.5.</li>
              <li>Redo at least two sums yourself in a spreadsheet.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> CTR and CPC tell you if people like the ad. Conversion rate, CPA and ROAS tell you if the ads make money. Always check the maths with a formula, and remember that ROAS measures revenue, not profit.
        </div>
      HTML
      starter_code: nil
    },
    4 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mkt">Digital Marketing</div>
          <h1 class="lc-title">Planning a Campaign</h1>
        </div>
        <p class="lc-lead">A campaign is a group of ads with one aim, one budget and one time period. Many ads fail because nobody planned them. In this lesson, you will plan a campaign in five parts: goal, audience, offer, budget and landing page. You will put the plan in one simple table. AI can help you fill the table, but you make the final choices.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 230" role="img" aria-label="Five planning steps in a row: goal, audience, offer, budget and landing page. Each step leads down to one campaign plan table that you check before building ads.">
            <defs><marker id="ads4a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="12" y="20" width="128" height="44" rx="8" fill="#1f1f44" stroke="#8b5cf6"/><text x="76" y="47">1. Goal</text>
              <rect x="164" y="20" width="128" height="44" rx="8" fill="#1f1f44" stroke="#3b82f6"/><text x="228" y="47">2. Audience</text>
              <rect x="316" y="20" width="128" height="44" rx="8" fill="#1f1f44" stroke="#ec4899"/><text x="380" y="47">3. Offer</text>
              <rect x="468" y="20" width="128" height="44" rx="8" fill="#1f1f44" stroke="#f59e0b"/><text x="532" y="47">4. Budget</text>
              <rect x="620" y="20" width="128" height="44" rx="8" fill="#1f1f44" stroke="#22d3ee"/><text x="684" y="47">5. Landing page</text>
              <g font-size="11.5" fill="#9b99b8">
                <text x="76" y="86">one number, one date</text>
                <text x="228" y="86">who, where, why</text>
                <text x="380" y="86">why act now</text>
                <text x="532" y="86">how much, how long</text>
                <text x="684" y="86">where clicks go</text>
              </g>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ads4a)">
                <line x1="142" y1="42" x2="161" y2="42"/><line x1="294" y1="42" x2="313" y2="42"/><line x1="446" y1="42" x2="465" y2="42"/><line x1="598" y1="42" x2="617" y2="42"/>
                <line x1="76" y1="96" x2="76" y2="136"/><line x1="228" y1="96" x2="228" y2="136"/><line x1="380" y1="96" x2="380" y2="136"/><line x1="532" y1="96" x2="532" y2="136"/><line x1="684" y1="96" x2="684" y2="136"/>
              </g>
              <rect x="12" y="140" width="736" height="48" rx="10" fill="#27274e" stroke="#10b981"/>
              <text x="380" y="169" font-weight="700" fill="#6ee7b7">One-page campaign plan table</text>
              <text x="380" y="214" font-size="12" fill="#9b99b8">Check the plan, then build the ads. Not the other way round.</text>
            </g>
          </svg>
          <figcaption>Five decisions come first. Together they make one plan that guides every ad you write.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The five parts</h3>
          <table class="lc-table">
            <thead><tr><th>Part</th><th>Question to answer</th><th>Weak answer</th><th>Strong answer</th></tr></thead>
            <tbody>
              <tr><td><strong>Goal</strong></td><td>What result, how many, by when?</td><td>"More sales"</td><td>"40 package enquiries in 30 days"</td></tr>
              <tr><td><strong>Audience</strong></td><td>Who will buy, where do they live, what do they want?</td><td>"Everyone"</td><td>"Couples and families in Karnataka and Tamil Nadu planning a Kerala trip"</td></tr>
              <tr><td><strong>Offer</strong></td><td>Why should they act now?</td><td>"Best service"</td><td>"Free dinner cruise with any 2-night booking before 31 July"</td></tr>
              <tr><td><strong>Budget</strong></td><td>How much per day, for how long, and what can one result cost?</td><td>"Whatever works"</td><td>"₹1,000 a day for 30 days. Target cost per enquiry: ₹750 or less."</td></tr>
              <tr><td><strong>Landing page</strong></td><td>Where does a click go? Does it match the ad?</td><td>"Home page"</td><td>"The monsoon package page with dates, price and a WhatsApp button"</td></tr>
            </tbody>
          </table>
          <p>The goal also decides the campaign objective in the ad platform. For example, Meta Ads Manager asks you to choose an objective such as Leads, Sales or Traffic. Pick the one that matches your goal.</p>
        </div>
        <div class="lc-card">
          <h3>A worked plan</h3>
          <p>A made-up travel agency, <strong>Backwater Trails</strong> in Kerala, wants more bookings for monsoon houseboat trips. All numbers are made up.</p>
          <table class="lc-table">
            <thead><tr><th>Plan item</th><th>Backwater Trails</th></tr></thead>
            <tbody>
              <tr><td>Goal</td><td>40 enquiries for the monsoon houseboat package in 30 days</td></tr>
              <tr><td>Audience</td><td>Couples and families, age 25 to 50, in Karnataka, Tamil Nadu and Kerala</td></tr>
              <tr><td>Offer</td><td>2-night houseboat stay, free dinner cruise for bookings before 31 July</td></tr>
              <tr><td>Channels</td><td>Google search ads for people already searching. Instagram ads to reach new people.</td></tr>
              <tr><td>Budget</td><td>₹1,000 a day × 30 days = ₹30,000. Target: ₹30,000 ÷ 40 = ₹750 per enquiry.</td></tr>
              <tr><td>Landing page</td><td>Package page with photos, price, dates and a WhatsApp button</td></tr>
              <tr><td>Tracking</td><td>Count WhatsApp button taps and form fills as conversions</td></tr>
            </tbody>
          </table>
          <p>Do a quick sense check. If a click costs about ₹25 and 4% of clicks enquire, one enquiry costs ₹25 ÷ 0.04 = ₹625. That is under the ₹750 target. But these are guesses. The first week of real data will show the true numbers.</p>
        </div>
        <div class="lc-card">
          <h3>Let AI fill gaps, not make decisions</h3>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Make an ad campaign for my travel agency.</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>I run Backwater Trails, a travel agency in Kerala.
        Goal: 40 enquiries for a monsoon houseboat package in 30 days.
        Budget: ₹30,000 in total. Offer: free dinner cruise before 31 July.
        Make a campaign plan table: goal, audience, offer, channels, budget,
        landing page, tracking. Mark anything you guessed with [GUESS].
        Then list 5 questions I must answer before launch.</code></pre>
          <p>Asking the AI to mark its guesses is useful. It shows you which parts need your own knowledge. AI does not know your real prices, your margins or your competitors.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: which part of the plan?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each line into the part of the campaign plan it belongs to.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="goal" data-label="Goal"></div>
              <div data-sorter-target="bucket" data-bucket="aud" data-label="Audience"></div>
              <div data-sorter-target="bucket" data-bucket="offer" data-label="Offer"></div>
              <div data-sorter-target="bucket" data-bucket="budget" data-label="Budget"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="goal" data-why="It names one result, a number and a time limit.">60 demo bookings by 30 November</li>
              <li data-bucket="aud" data-why="It describes who will see the ads and where they are.">Small clinic owners in Tier-2 cities</li>
              <li data-bucket="offer" data-why="It gives people a reason to act now.">10% off the first order this week only</li>
              <li data-bucket="budget" data-why="It sets how much to spend and for how long.">₹700 a day for 21 days</li>
              <li data-bucket="budget" data-why="It is the most you can pay for one result. It comes from the budget and the goal.">Stop if one lead costs more than ₹900</li>
              <li data-bucket="aud" data-why="It describes the people and what they want, not the result or price.">Parents looking for weekend coding classes for kids</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to turn your idea into a one-page campaign plan. Change the brackets to your own business.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a paid ads planner for small businesses in India.
        My business: [Backwater Trails, a travel agency in Kerala].
        What I want to sell: [a 2-night monsoon houseboat package].
        My goal: [40 enquiries in 30 days].
        My total budget: [₹30,000].
        My offer: [free dinner cruise for bookings before 31 July].

        1. Make a campaign plan table with these rows: goal, audience, offer, channels (Google search and/or Meta), campaign objective, daily budget, target cost per result, landing page, tracking.
        2. Show the budget maths step by step.
        3. Mark anything you guessed with [GUESS].
        4. List 5 questions I must answer before I launch.

        Do not state real average costs as facts. Use simple English.</pre>
            <ul class="ai-try-checks">
              <li>The goal has a number and a deadline.</li>
              <li>Budget maths is correct (₹30,000 ÷ 40 = ₹750 per result).</li>
              <li>Guesses are marked, and no "average CPC" is stated as fact.</li>
              <li>The landing page matches the offer in the ad.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A good campaign starts with a clear goal and a target cost per result. Write the plan before you write the ads. AI can fill in the table, but only you know your real prices, margins and customers.
        </div>
      HTML
      starter_code: nil
    },
    5 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mkt">Digital Marketing</div>
          <h1 class="lc-title">Search Ad Copy with AI</h1>
        </div>
        <p class="lc-lead">On Google, the main type of text ad is the <strong>responsive search ad</strong>. You write many short headlines and descriptions. Google then mixes them to fit each search. In this lesson, you will use AI to write headlines and descriptions that match what people search for. You will also learn to check the length limits and the claims, because AI often gets both wrong.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 270" role="img" aria-label="A search for eggless cake near me leads to your pool of assets: up to 15 headlines of 30 characters and up to 4 descriptions of 90 characters. Google mixes them into the ad that is shown, with two headlines and a description.">
            <defs><marker id="ads5a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="15" y="90" width="180" height="70" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="105" y="118" fill="#93c5fd" font-weight="700">Search</text>
              <text x="105" y="142">eggless cake near me</text>
              <rect x="225" y="20" width="230" height="212" rx="12" fill="#27274e" stroke="#8b5cf6"/>
              <text x="340" y="44" font-weight="700" fill="#c4b5fd">Your assets</text>
              <g text-anchor="start" font-size="12">
                <text x="240" y="70" font-size="11" fill="#9b99b8">Headlines: up to 15, 30 chars</text>
                <text x="240" y="92">Eggless Cakes Near You</text>
                <text x="240" y="112">Same-Day Home Delivery</text>
                <text x="240" y="132">Order by 2 pm Today</text>
                <text x="240" y="152">Custom Birthday Cakes</text>
                <text x="240" y="178" font-size="11" fill="#9b99b8">Descriptions: up to 4, 90 chars</text>
                <text x="240" y="200">Fresh cakes, baked daily.</text>
                <text x="240" y="220">Order by 2 pm for today.</text>
              </g>
              <rect x="485" y="40" width="260" height="170" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="615" y="64" font-weight="700" fill="#6ee7b7">Ad shown (Google's mix)</text>
              <g text-anchor="start">
                <text x="500" y="92" font-size="11" fill="#9b99b8">Sponsored · sweetcrumbs.example</text>
                <text x="500" y="118" fill="#93c5fd">Eggless Cakes Near You |</text>
                <text x="500" y="138" fill="#93c5fd">Same-Day Home Delivery</text>
                <text x="500" y="166" font-size="12">Fresh cakes, baked daily.</text>
                <text x="500" y="186" font-size="12">Order by 2 pm for today.</text>
              </g>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ads5a)">
                <line x1="197" y1="125" x2="221" y2="125"/><line x1="457" y1="125" x2="481" y2="125"/>
              </g>
              <text x="380" y="258" font-size="12" fill="#9b99b8">Google tests many combinations and learns which mix works for each search.</text>
            </g>
          </svg>
          <figcaption>You write a pool of headlines and descriptions. Google picks and mixes them for each search.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>How responsive search ads work</h3>
          <ul class="lc-list">
            <li><strong>Headlines:</strong> you can add up to 15. Each can be up to 30 characters (letters, spaces and symbols all count). Google usually shows two or three at a time.</li>
            <li><strong>Descriptions:</strong> you can add up to 4. Each can be up to 90 characters. Google usually shows one or two.</li>
            <li><strong>Ad strength:</strong> Google Ads shows a rating of your asset mix. It rewards many different, relevant headlines.</li>
            <li><strong>Pinning:</strong> you can fix a headline to one position. This gives you control, but Google has fewer mixes to test. Use it only when you must, for example for a required message.</li>
          </ul>
          <p>Every headline must make sense on its own and next to any other headline. Google changes these limits and features over time, so check the current Google Ads help pages.</p>
        </div>
        <div class="lc-card">
          <h3>Match the keyword and the intent</h3>
          <p>Search intent means what the person wants when they type a search. Your headlines should answer that want. Here is the made-up <strong>Sweet Crumbs</strong> bakery in Maharashtra.</p>
          <table class="lc-table">
            <thead><tr><th>Search</th><th>Intent</th><th>Headline angle</th></tr></thead>
            <tbody>
              <tr><td>eggless cake delivery near me</td><td>Ready to buy now</td><td>"Eggless Cakes Near You", "Same-Day Home Delivery"</td></tr>
              <tr><td>custom birthday cake price</td><td>Comparing prices</td><td>"Photo Cakes from ₹899" (only if the price is real)</td></tr>
              <tr><td>best cake shop near me</td><td>Looking for trust</td><td>"Rated 4.8 on Google" (only if true today)</td></tr>
            </tbody>
          </table>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Write Google ads for my bakery.</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Write 15 headlines (max 30 characters) and 4 descriptions (max 90 characters)
        for a Google responsive search ad.
        Business: Sweet Crumbs, an eggless bakery in Maharashtra. Same-day delivery if you order by 2 pm.
        Keywords: eggless cake delivery near me, eggless birthday cake.
        Put the main keyword in at least 3 headlines. Include 2 calls to action.
        Show a character count for each line. Do not invent prices, ratings or awards.</code></pre>
        </div>
        <div class="lc-card">
          <h3>What you must check</h3>
          <ul class="lc-list">
            <li><strong>Length.</strong> AI often counts characters wrongly. Paste the lines into Google Sheets or Excel and use <code>=LEN(A2)</code> to count each one.</li>
            <li><strong>Claims.</strong> "Best in Maharashtra" or "No. 1" needs proof. Health claims, such as "sugar-free and safe for diabetics", can break ad policies and can mislead people.</li>
            <li><strong>Facts.</strong> Prices, delivery times and offers must match your landing page today.</li>
            <li><strong>Variety.</strong> Fifteen headlines that say the same thing do not help. Mix product, benefit, offer, trust and call to action.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Activity: a headline writing session</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Prompt">You give the AI the better prompt above, with your keywords and delivery rule.</li>
              <li data-kind="answer" data-label="AI replies">15 headlines, including "Maharashtra's Most Loved Eggless Cake Shop (30)" and "Best Eggless Cakes in All of Maharashtra (29)".</li>
              <li data-kind="tool" data-label="Spreadsheet">You paste all headlines into column A and type <code>=LEN(A2)</code> in column B.</li>
              <li data-kind="result" data-label="Sheet shows">"Maharashtra's Most Loved Eggless Cake Shop" has 42 characters. "Best Eggless Cakes in All of Maharashtra" has 40. Both are too long.</li>
              <li data-kind="warn" data-label="Claim problem">"Most loved" and "Best" are claims you cannot prove. You remove both headlines.</li>
              <li data-kind="check" data-label="Fact check">You open the landing page. It says "order by 2 pm", so the delivery headline is correct.</li>
              <li data-kind="user" data-label="Follow-up">"Replace the two removed headlines with trust headlines under 30 characters. Use only facts I gave you."</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI for a full set of responsive search ad assets. Then check the lengths in a spreadsheet.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an expert Google Ads copywriter.
        Write assets for one responsive search ad.

        Business: [Sweet Crumbs, an eggless bakery in Maharashtra]
        Main keyword: [eggless cake delivery near me]
        Other keywords: [eggless birthday cake, cake home delivery near me]
        Facts you may use: [same-day delivery if ordered by 2 pm; custom photo cakes; 100% eggless kitchen]
        Landing page: [the online order page]

        Rules:
        - 15 headlines, each 30 characters or fewer.
        - 4 descriptions, each 90 characters or fewer.
        - Put the main keyword (or a close version) in at least 3 headlines.
        - Mix types: product, benefit, offer, trust, call to action.
        - Use only the facts above. No prices, ratings, awards or "best" claims unless I gave them.

        Output a table: number, text, type, character count.
        Then suggest which headline, if any, I might pin in position 1, and why.</pre>
            <ul class="ai-try-checks">
              <li>Count each line with =LEN() in a spreadsheet. Do not trust the AI's counts.</li>
              <li>The main keyword appears in at least 3 headlines.</li>
              <li>No invented prices, ratings or "best" claims.</li>
              <li>Every fact matches your real landing page.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> AI can write 15 headlines in seconds, but it often miscounts characters and adds claims you cannot prove. Give it your keywords and your real facts. Then check every line's length and truth before it goes into Google Ads.
        </div>
      HTML
      starter_code: nil
    },
    6 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mkt">Digital Marketing</div>
          <h1 class="lc-title">Keywords and Match Types</h1>
        </div>
        <p class="lc-lead">In Google search ads, you choose <strong>keywords</strong> (words and phrases that tell Google which searches your ad can show for). The <strong>match type</strong> of a keyword controls how close a search must be to it. <strong>Negative keywords</strong> stop your ad from showing for searches you do not want. In this lesson, you will learn the three match types, and how to use AI to find negative keywords. Good choices here stop you from paying for clicks that never turn into customers.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 320" role="img" aria-label="Three nested boxes for the keyword kerala houseboat package. Exact match is the smallest box, phrase match is around it and broad match is the widest box. A separate negative keyword box lists jobs, free and for sale, and blocks searches such as houseboat jobs kerala.">
            <defs><marker id="ads6a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#ec4899"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <rect x="20" y="20" width="480" height="280" rx="12" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="40" y="44" font-weight="700" fill="#fcd34d">Broad match: kerala houseboat package</text>
              <text x="40" y="66" font-size="12" fill="#9b99b8">+ related searches: kerala backwater holiday</text>
              <rect x="40" y="82" width="440" height="204" rx="10" fill="#27274e" stroke="#3b82f6"/>
              <text x="60" y="106" font-weight="700" fill="#93c5fd">Phrase match: "kerala houseboat package"</text>
              <text x="60" y="128" font-size="12" fill="#9b99b8">+ kerala houseboat package for family</text>
              <rect x="60" y="144" width="400" height="128" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="80" y="170" font-weight="700" fill="#6ee7b7">Exact match: [kerala houseboat package]</text>
              <text x="80" y="196">kerala houseboat package</text>
              <text x="80" y="220">houseboat package in kerala</text>
              <text x="80" y="254" font-size="12" fill="#9b99b8">same meaning only: fewest searches</text>
              <rect x="540" y="20" width="200" height="280" rx="12" fill="#1f1f44" stroke="#ec4899"/>
              <text x="640" y="46" font-weight="700" fill="#f9a8d4" text-anchor="middle">Negative keywords</text>
              <text x="640" y="78" text-anchor="middle">jobs</text>
              <text x="640" y="102" text-anchor="middle">free</text>
              <text x="640" y="126" text-anchor="middle">"for sale"</text>
              <text x="640" y="166" font-size="12" fill="#9b99b8" text-anchor="middle">They block searches like:</text>
              <text x="640" y="192" font-size="12" text-anchor="middle">houseboat jobs kerala</text>
              <text x="640" y="214" font-size="12" text-anchor="middle">houseboat for sale</text>
              <text x="640" y="236" font-size="12" text-anchor="middle">free kerala tour</text>
              <line x1="538" y1="270" x2="508" y2="270" stroke="#ec4899" stroke-width="2" marker-end="url(#ads6a)"/>
              <text x="640" y="274" font-size="12" fill="#9b99b8" text-anchor="middle">filter all three</text>
            </g>
          </svg>
          <figcaption>Broad match reaches the most searches. Exact match reaches the fewest. Negative keywords remove searches you do not want from all of them.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The three match types</h3>
          <p>Our example is a made-up travel agency in Kerala called Backwater Trails. It sells houseboat trips.</p>
          <table class="lc-table">
            <thead><tr><th>Match type</th><th>How you write it</th><th>What it does</th><th>Can show for</th></tr></thead>
            <tbody>
              <tr><td><strong>Broad</strong></td><td><code>kerala houseboat package</code></td><td>Shows for searches related to your keyword. Google also looks at your landing page and other keywords.</td><td>"kerala backwater holiday"</td></tr>
              <tr><td><strong>Phrase</strong></td><td><code>"kerala houseboat package"</code></td><td>Shows for searches that include the meaning of your keyword. Extra words can come before or after.</td><td>"kerala houseboat package for family"</td></tr>
              <tr><td><strong>Exact</strong></td><td><code>[kerala houseboat package]</code></td><td>Shows for searches with the same meaning or intent (the reason behind the search). You get the most control and the fewest searches.</td><td>"houseboat package in kerala"</td></tr>
            </tbody>
          </table>
          <p>Broad match is the default in Google Ads. Google suggests using it with Smart Bidding (automatic bidding that uses conversion data). It can find new searches, but it can also spend money on weak ones. Many small advertisers start with phrase and exact match. Then they add broad match when conversion tracking works well.</p>
          <p><strong>Negative keywords are more literal.</strong> Google's help pages say negatives do not match close variants, synonyms or plural forms. So you add those yourself, for example both "job" and "jobs". Match types change from time to time, so check the current Google Ads help pages.</p>
        </div>
        <div class="lc-card">
          <h3>Finding negative keywords with AI</h3>
          <p>The <strong>search terms report</strong> in Google Ads shows the real searches that triggered your ads. It is the best place to find negative keywords. Export it to a spreadsheet. Remove any private data. Then ask AI to sort it.</p>
          <table class="lc-table">
            <thead><tr><th>Search term</th><th>Clicks</th><th>Cost (₹)</th><th>Conversions</th></tr></thead>
            <tbody>
              <tr><td>kerala houseboat package 2 days</td><td>42</td><td>1,890</td><td>3</td></tr>
              <tr><td>houseboat jobs near me</td><td>18</td><td>720</td><td>0</td></tr>
              <tr><td>houseboat for sale kerala</td><td>11</td><td>495</td><td>0</td></tr>
              <tr><td>kerala houseboat images</td><td>25</td><td>650</td><td>0</td></tr>
              <tr><td>kerala houseboat booking</td><td>30</td><td>1,500</td><td>2</td></tr>
            </tbody>
          </table>
          <p>(Sample numbers, made up for this lesson.)</p>
          <p>A weak prompt:</p>
          <pre><code>Give me negative keywords for a travel agency.</code></pre>
          <p>The AI will give a long, general list. Some words on it may block good customers. A better prompt:</p>
          <pre><code>You help me manage Google search ads for Backwater Trails, a travel
        agency in Kerala. We sell houseboat and backwater trips. We do not sell
        boats, offer jobs, or give free trips.
        Below is my search terms report (search term, clicks, cost, conversions).
        1. Sort each term into: Keep, Add as negative, or Check first.
        2. For each negative, suggest a short negative keyword and a match type.
        3. Give one short reason for each choice.
        Do not suggest negatives that could block people who want to book a trip.
        [paste your search terms here]</code></pre>
        </div>
        <div class="lc-card">
          <h3>What you must check</h3>
          <ul class="lc-list">
            <li><strong>Test each negative against good searches.</strong> "images" looks safe to block. But "houseboat images and price" may come from a buyer.</li>
            <li><strong>Do not block a whole word too fast.</strong> Blocking "cheap" may remove price-conscious people who do book.</li>
            <li><strong>Look at the numbers yourself.</strong> A term with a few clicks and no conversions may just need more time.</li>
            <li><strong>Add plural and other forms yourself.</strong> Negatives are literal, so "job" does not block "jobs".</li>
            <li><strong>Check the level.</strong> You can add negatives to one ad group, one campaign, or a shared list for many campaigns.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Activity: keep it or block it?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Backwater Trails sells houseboat trips in Kerala. Sort each search term from its report.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="keep" data-label="Keep"></div>
              <div data-sorter-target="bucket" data-bucket="neg" data-label="Add as negative"></div>
              <div data-sorter-target="bucket" data-bucket="check" data-label="Check first"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="keep" data-why="This person wants to book, and the term already brings conversions.">kerala houseboat booking</li>
              <li data-bucket="neg" data-why="Job seekers will not book a trip. Add jobs and job as negatives.">houseboat jobs near me</li>
              <li data-bucket="neg" data-why="These people want to buy a boat. The agency does not sell boats.">houseboat for sale kerala</li>
              <li data-bucket="check" data-why="Some people look at images before they book. Check the conversions over a longer time.">kerala houseboat images</li>
              <li data-bucket="keep" data-why="A clear trip search with a length of stay. It matches the offer.">kerala houseboat package 2 days</li>
              <li data-bucket="check" data-why="Price searches can come from buyers. Check if these clicks ever book before you block cheap.">cheap houseboat kerala</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Paste a search terms list (or use the sample one). Ask AI to sort the terms and suggest negative keywords with reasons.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a Google Ads specialist. I run [Backwater Trails, a travel agency in Kerala that sells houseboat and backwater trips]. We do NOT [sell boats, offer jobs, or give free trips].

        Here is my search terms report (search term, clicks, cost in ₹, conversions):
        [kerala houseboat package 2 days, 42, 1890, 3
        houseboat jobs near me, 18, 720, 0
        houseboat for sale kerala, 11, 495, 0
        kerala houseboat images, 25, 650, 0
        kerala houseboat booking, 30, 1500, 2
        cheap houseboat kerala, 20, 800, 0]

        Tasks:
        1. Make a table with columns: search term, decision (Keep / Add as negative / Check first), reason.
        2. For each negative, suggest the negative keyword, its match type (broad, phrase or exact) and any plural or other forms I should also add.
        3. Warn me about any negative that could block real buyers.
        4. Add up the cost of the terms you mark as negative.
        Keep the language simple.</pre>
            <ul class="ai-try-checks">
              <li>Does each negative block only unwanted searches, not buyers?</li>
              <li>Did it add plural or singular forms where needed?</li>
              <li>Add up the "wasted" cost yourself. Is the AI's total right?</li>
              <li>Are low-data terms marked "Check first" instead of blocked?</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Match types decide how wide your net is. Negative keywords decide what you throw back. AI can sort a long search terms report in seconds, but you decide each negative, because one wrong word can block your best customers.
        </div>
      HTML
      starter_code: nil
    },
    7 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mkt">Digital Marketing</div>
          <h1 class="lc-title">Social Ad Copy and Creatives</h1>
        </div>
        <p class="lc-lead">On Facebook and Instagram, people are not searching for you. They are scrolling. Your ad must stop them in about a second. In this lesson, you will learn the parts of a Meta ad: the <strong>hook</strong>, the <strong>primary text</strong>, the <strong>headline</strong> and the <strong>creative</strong> (the image or video). You will use AI to write many hooks and plan image and video ideas. Then you will pick the best ones and check them before they go live.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 360" role="img" aria-label="A phone showing a Meta feed ad for a made-up Rajasthan store. Labels on the right point to four parts: the hook in the first line of primary text, the image or video creative, the headline, and the call to action button.">
            <defs><marker id="ads7a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <rect x="40" y="10" width="300" height="340" rx="22" fill="#1f1f44" stroke="#4b4a78" stroke-width="2"/>
              <circle cx="78" cy="46" r="14" fill="#3b82f6"/>
              <text x="100" y="42" font-weight="700" font-size="12">Rang Mahal Crafts</text>
              <text x="100" y="58" font-size="11" fill="#9b99b8">Sponsored</text>
              <text x="60" y="88" font-weight="700" fill="#fcd34d">Tired of plain steel bowls?</text>
              <text x="60" y="108" font-size="12" fill="#9b99b8">Hand-painted in Rajasthan. Ships in 3 days.</text>
              <rect x="60" y="122" width="260" height="140" rx="8" fill="#27274e" stroke="#ec4899"/>
              <text x="190" y="188" text-anchor="middle" fill="#f9a8d4">Image: blue pottery bowls</text>
              <text x="190" y="208" text-anchor="middle" font-size="11" fill="#9b99b8">on a breakfast table</text>
              <text x="60" y="284" font-weight="700" fill="#93c5fd">Blue Pottery Bowl Set</text>
              <text x="60" y="302" font-size="11" fill="#9b99b8">Free delivery in India</text>
              <rect x="60" y="314" width="260" height="28" rx="6" fill="#10b981"/>
              <text x="190" y="333" text-anchor="middle" font-size="12" fill="#0b0b1e" font-weight="700">Shop now</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#ads7a)">
                <line x1="470" y1="84" x2="290" y2="84"/>
                <line x1="470" y1="190" x2="324" y2="190"/>
                <line x1="470" y1="268" x2="228" y2="279"/>
                <line x1="470" y1="330" x2="326" y2="328"/>
              </g>
              <rect x="476" y="62" width="270" height="44" rx="8" fill="#27274e" stroke="#f59e0b"/>
              <text x="490" y="82" font-weight="700">1. Hook</text>
              <text x="490" y="99" font-size="11.5" fill="#9b99b8">first line of primary text</text>
              <rect x="476" y="168" width="270" height="44" rx="8" fill="#27274e" stroke="#ec4899"/>
              <text x="490" y="188" font-weight="700">2. Creative</text>
              <text x="490" y="205" font-size="11.5" fill="#9b99b8">image or video: stops the scroll</text>
              <rect x="476" y="246" width="270" height="44" rx="8" fill="#27274e" stroke="#3b82f6"/>
              <text x="490" y="266" font-weight="700">3. Headline</text>
              <text x="490" y="283" font-size="11.5" fill="#9b99b8">short product name or benefit</text>
              <rect x="476" y="308" width="270" height="44" rx="8" fill="#27274e" stroke="#10b981"/>
              <text x="490" y="328" font-weight="700">4. Call to action button</text>
              <text x="490" y="345" font-size="11.5" fill="#9b99b8">tells people what to do next</text>
            </g>
          </svg>
          <figcaption>A Meta feed ad has four main parts. The hook and the creative decide if people stop scrolling.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The parts of a Meta ad</h3>
          <p>Our example is a made-up handicrafts store in Rajasthan called Rang Mahal Crafts. It sells hand-painted blue pottery online.</p>
          <table class="lc-table">
            <thead><tr><th>Part</th><th>What it is</th><th>Tip</th></tr></thead>
            <tbody>
              <tr><td><strong>Hook</strong></td><td>The first line of text, or the first seconds of a video</td><td>Name a problem, ask a question, or show the product in use</td></tr>
              <tr><td><strong>Primary text</strong></td><td>The main text above the image</td><td>Put the key point first. Long text is often cut off with "See more".</td></tr>
              <tr><td><strong>Headline</strong></td><td>The short bold line under the image</td><td>Product name, offer or main benefit</td></tr>
              <tr><td><strong>Creative</strong></td><td>The image, video or carousel (a set of cards people swipe)</td><td>Show the real product. Make it clear on a small phone screen.</td></tr>
              <tr><td><strong>Call to action (CTA)</strong></td><td>The button, such as "Shop now" or "Learn more"</td><td>Pick the button that matches the next step on your page</td></tr>
            </tbody>
          </table>
          <p>Meta shows ads in many places, such as Feed, Stories and Reels. Stories and Reels use tall, vertical video. Many people watch with the sound off, so add captions (text on screen). Text limits and sizes change, so check Meta's current ad specs in its help pages.</p>
        </div>
        <div class="lc-card">
          <h3>Writing hooks and copy with AI</h3>
          <p>A weak prompt:</p>
          <pre><code>Write a Facebook ad for my pottery shop.</code></pre>
          <p>You will get one long, general ad full of words like "exquisite" and "timeless". A better prompt asks for many short options with clear rules:</p>
          <pre><code>You write Meta ads for Rang Mahal Crafts, a Rajasthan store that sells
        hand-painted blue pottery online. Audience: women and men aged 25-45 in
        Indian cities who like home decor. Offer: bowl set of 4 for ₹1,499,
        free delivery in India.
        1. Write 10 hooks (max 8 words each). Use 5 styles: question,
           problem, number, before/after, customer moment.
        2. For the 3 best hooks, write primary text (max 3 short lines)
           and a headline (max 6 words).
        3. Suggest one image idea and one 10-second video idea for each.
        Rules: simple words, no false claims, no "best in India".</code></pre>
          <p>AI is good at giving you many different angles fast. You are better at knowing which angle your real customers care about.</p>
        </div>
        <div class="lc-card">
          <h3>Image and video ideas, and what to check</h3>
          <ul class="lc-list">
            <li><strong>Show the real product.</strong> Your own photos build trust. An AI image that looks different from the real bowls will bring returns and angry reviews.</li>
            <li><strong>Plan the first seconds of video.</strong> Show the product or the problem at once. Do not start with a slow logo.</li>
            <li><strong>Check every fact.</strong> Price, delivery time, sizes and "hand-painted" must all be true today.</li>
            <li><strong>Check the ad rules.</strong> Meta has advertising standards, for example on health claims and before/after images. Meta may also ask you to label some AI-made or edited content. Check the current rules.</li>
            <li><strong>Check built-in AI tools too.</strong> Ads Manager can suggest text variations and adjust images automatically. Review what it makes, and turn off options that change your message.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Activity: make a Meta ad with AI</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put these steps in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Write down the offer, the audience and the one main message</li>
              <li data-order="2">Ask AI for 10 short hooks in different styles</li>
              <li data-order="3">Pick the 3 hooks that fit your real customers best</li>
              <li data-order="4">Ask AI for primary text, headlines and image or video ideas for those 3</li>
              <li data-order="5">Check prices, facts and Meta's ad rules, and use real product photos</li>
              <li data-order="6">Launch the ads as separate versions and compare the results</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI for hooks, ad copy and creative ideas for a Meta ad. Change the brackets to your own product, or leave them as they are.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a social media ad copywriter. Write Meta (Facebook and Instagram) ads for [Rang Mahal Crafts, an online store in Rajasthan that sells hand-painted blue pottery].

        Audience: [people aged 25-45 in Indian cities who like home decor].
        Offer: [bowl set of 4 for ₹1,499, free delivery in India, ships in 3 days].

        Tasks:
        1. Write 10 hooks, each 8 words or fewer. Use these styles: question, problem, number, before/after, customer moment. Label the style.
        2. Choose the 3 strongest hooks. For each, write:
           - primary text (3 short lines, key point first)
           - a headline (6 words or fewer)
           - a call to action button (Shop now, Learn more, etc.)
           - one image idea and one 10-second vertical video idea (what to show in the first 2 seconds)
        3. List any claim in your copy that I must check before I publish.

        Rules: simple English, no false or "best in India" claims, no fake urgency.</pre>
            <ul class="ai-try-checks">
              <li>Are the hooks short and really different from each other?</li>
              <li>Is every price, delivery time and product detail true?</li>
              <li>Does any line make a claim you cannot prove?</li>
              <li>Do the image ideas show the real product?</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> In social ads, the hook and the creative do most of the work. Use AI to get many different angles quickly. Then choose with your knowledge of real customers, and check every claim before you publish.
        </div>
      HTML
      starter_code: nil
    },
    8 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mkt">Digital Marketing</div>
          <h1 class="lc-title">Audiences and Targeting</h1>
        </div>
        <p class="lc-lead">Targeting decides who can see your ad. On Meta, you can target by place and age, by interests, by lists of your own customers, and by people who visited your website. Today, the platforms also use AI to find buyers for you. In this lesson, you will learn the main audience types. You will use AI to plan an audience, and learn the privacy rules you must follow.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 310" role="img" aria-label="Three audience types for a made-up bakery in Maharashtra, from cold to warm. New people: broad targeting with Advantage+, interests and location. Similar people: a lookalike audience based on past customers. Warm people: retargeting of website visitors and Instagram engagers, excluding recent buyers. A note at the bottom about privacy.">
            <defs><marker id="ads8a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="380" y="28" font-weight="700" fill="#fdba74">Sweet Crumbs bakery, Maharashtra: three kinds of audience</text>
              <rect x="20" y="46" width="220" height="200" rx="12" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="130" y="72" font-weight="700" fill="#93c5fd">New people</text>
              <text x="130" y="90" font-size="11.5" fill="#9b99b8">(cold)</text>
              <text x="130" y="122">Broad + Advantage+</text>
              <text x="130" y="148">Interests: baking, cafes</text>
              <text x="130" y="174">Location: 8 km radius</text>
              <text x="130" y="228" font-size="11.5" fill="#9b99b8">biggest reach</text>
              <rect x="270" y="46" width="220" height="200" rx="12" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="380" y="72" font-weight="700" fill="#c4b5fd">Similar people</text>
              <text x="380" y="90" font-size="11.5" fill="#9b99b8">(lookalike)</text>
              <text x="380" y="122">Starts from a source list</text>
              <text x="380" y="148">such as past customers</text>
              <text x="380" y="174">Meta finds similar users</text>
              <text x="380" y="228" font-size="11.5" fill="#9b99b8">medium reach</text>
              <rect x="520" y="46" width="220" height="200" rx="12" fill="#1f1f44" stroke="#10b981"/>
              <text x="630" y="72" font-weight="700" fill="#6ee7b7">Warm people</text>
              <text x="630" y="90" font-size="11.5" fill="#9b99b8">(retargeting)</text>
              <text x="630" y="122">Website visitors, 30 days</text>
              <text x="630" y="148">Instagram engagers</text>
              <text x="630" y="174">Exclude recent buyers</text>
              <text x="630" y="228" font-size="11.5" fill="#9b99b8">small, already knows you</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#ads8a)">
                <line x1="242" y1="200" x2="266" y2="200"/>
                <line x1="492" y1="200" x2="516" y2="200"/>
              </g>
              <rect x="20" y="262" width="720" height="36" rx="8" fill="#27274e" stroke="#f59e0b"/>
              <text x="380" y="285" font-size="12">Privacy: use only data people agreed to share. Never paste customer lists into public AI.</text>
            </g>
          </svg>
          <figcaption>Cold audiences are large and new to you. Warm audiences are small, but they already know your business.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The main audience types on Meta</h3>
          <table class="lc-table">
            <thead><tr><th>Audience type</th><th>Plain meaning</th><th>Example (made-up bakery in Maharashtra)</th></tr></thead>
            <tbody>
              <tr><td><strong>Location, age, language</strong></td><td>Basic settings for who can see the ad</td><td>People within 8 km of the shop</td></tr>
              <tr><td><strong>Detailed targeting</strong></td><td>Interests, behaviours and demographics that Meta has on its users</td><td>Interest in baking or birthday parties</td></tr>
              <tr><td><strong>Custom audience</strong></td><td>People from your own data: website visitors, app users, customer lists, or people who engaged with your page</td><td>People who visited the cake order page in the last 30 days</td></tr>
              <tr><td><strong>Lookalike audience</strong></td><td>New people who are similar to a source audience you give</td><td>People like the bakery's past online buyers</td></tr>
              <tr><td><strong>Advantage+ audience</strong></td><td>Meta's AI finds the audience. Your inputs guide it.</td><td>Meta shows the ad to anyone it expects to order</td></tr>
            </tbody>
          </table>
          <p><strong>Retargeting</strong> means showing ads to people who already know you, such as website visitors. <strong>Broad targeting</strong> means you give few limits and let the platform's AI find buyers. It often works when the platform gets enough conversion data.</p>
          <p>With Advantage+ audience, some settings are hard limits. At the time of writing, these include location, minimum age and language. Other inputs, such as interests and lookalikes, are only <em>suggestions</em>. Meta may show your ad to people outside them. Google Ads has similar ideas, called audience segments. Settings change often, so check the current help pages of each platform.</p>
        </div>
        <div class="lc-card">
          <h3>Planning an audience with AI</h3>
          <p>A weak prompt:</p>
          <pre><code>Who should I target for my bakery?</code></pre>
          <p>The AI does not know your offer, area or data. It will guess. A better prompt:</p>
          <pre><code>I run Sweet Crumbs, a home bakery in Maharashtra. We deliver within 8 km of our kitchen.
        Offer: custom birthday cakes from ₹899, order 1 day ahead.
        Past buyers: mostly parents aged 28-45 ordering for children's birthdays.
        I have: website visitors, an Instagram page with 4,000 followers, and
        about 600 past customers who agreed to receive offers.
        Make an audience plan for Meta ads with 3 ad sets: new people,
        lookalike, and retargeting. For each, give the settings, what to exclude,
        and why. Mark which settings are hard limits and which are suggestions.</code></pre>
          <p>AI helps you think of groups and exclusions. It cannot see real audience sizes or results. Ads Manager shows those.</p>
        </div>
        <div class="lc-card">
          <h3>Privacy and fair targeting</h3>
          <ul class="lc-list">
            <li><strong>Consent first.</strong> Upload a customer list only if people agreed to receive marketing from you. In India, the Digital Personal Data Protection Act, 2023 covers personal data. This is general information, not legal advice. Ask a qualified lawyer about your case.</li>
            <li><strong>Keep lists out of public AI tools.</strong> Never paste names, phone numbers or emails into a chatbot. Describe your customers in general words instead.</li>
            <li><strong>No sensitive targeting.</strong> Do not try to target people by health, religion, caste or similar personal traits. Meta has removed many such options, and its rules forbid ads that suggest you know these things about the viewer.</li>
            <li><strong>Special ad categories.</strong> Ads about jobs, housing, credit or other financial products may have fewer targeting options, depending on the country. Check Meta's current rules before you plan.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Activity: plan an audience with AI</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="The owner asks">"I run a bakery in Maharashtra. Who should I target on Meta for my ₹899 birthday cake offer?"</li>
              <li data-kind="answer" data-label="AI suggests">Three ad sets: people within the delivery area aged 25-45 with Advantage+ audience; a lookalike of past buyers; and retargeting of recent website visitors.</li>
              <li data-kind="warn" data-label="Catch this">The AI also suggests "target people with diabetes for sugar-free cakes". That is sensitive health targeting. Do not use it. Show the sugar-free cake to everyone instead.</li>
              <li data-kind="tool" data-label="Meta Ads Manager">The owner sets the location to the real 8 km delivery area and turns on Advantage+ audience with parents and baking as suggestions.</li>
              <li data-kind="result" data-label="Ads Manager shows">An estimated audience size, and a note that Meta may reach people beyond the suggestions.</li>
              <li data-kind="warn" data-label="Catch this">The AI offers to "clean up" the customer phone list if the owner pastes it into the chat. Do not paste it. Upload it only in Ads Manager, and only for customers who agreed.</li>
              <li data-kind="check" data-label="Owner checks">The owner excludes people who ordered in the last 30 days, so recent buyers do not see the same offer again.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI for a simple Meta audience plan with three ad sets. Change the brackets to your own business, or leave them as they are.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a Meta ads planner. Make an audience plan for [Sweet Crumbs, a bakery in Maharashtra that delivers within 8 km].

        Offer: [custom birthday cakes from ₹899, order 1 day ahead].
        Typical buyers: [parents aged 28-45 ordering for children's birthdays].
        Data I have: [website visitors, an Instagram page, and a list of past customers who agreed to receive offers].

        Tasks:
        1. Suggest 3 ad sets: new people (broad or Advantage+ audience), a lookalike audience, and retargeting.
        2. For each ad set, give: location, age, any interest suggestions, what to exclude, and the message that fits this group.
        3. Mark which settings are usually hard limits and which are only suggestions, and remind me to check Meta's current help pages.
        4. List any targeting I must avoid for privacy or policy reasons.

        Do not ask me for customer names, phone numbers or emails. Use simple English and a table.</pre>
            <ul class="ai-try-checks">
              <li>Does the location match your real delivery or service area?</li>
              <li>Does it avoid sensitive traits such as health or religion?</li>
              <li>Are recent buyers excluded from the retargeting ad set?</li>
              <li>Does it tell you to check the platform's current settings?</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Today, the platform's AI does much of the targeting. Your job is to set the real limits, such as area and age, give it good data, and exclude the right people. Always keep customer data private and follow the platform's rules.
        </div>
      HTML
      starter_code: nil
    },
    9 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mkt">Digital Marketing</div>
          <h1 class="lc-title">Landing Pages That Convert</h1>
        </div>
        <p class="lc-lead">A click is not a sale. After the click, people arrive on your <strong>landing page</strong> (the page your ad links to). If the page is confusing or does not match the ad, they leave, and you still pay for the click. In this lesson, you will learn what makes a landing page convert: message match, a clear offer and trust signals. You will also use AI to review a page and suggest fixes.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 340" role="img" aria-label="A Google ad for a Kerala houseboat trip from 8,999 rupees links to a landing page. The page has five numbered parts: a headline that matches the ad, the offer with a photo, trust signals, one clear button, and a short form.">
            <defs><marker id="ads9a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <rect x="20" y="96" width="220" height="140" rx="12" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="130" y="122" text-anchor="middle" font-size="11.5" fill="#9b99b8">Google ad</text>
              <text x="130" y="150" text-anchor="middle" font-weight="700" fill="#93c5fd">Kerala Houseboat</text>
              <text x="130" y="172" text-anchor="middle" font-weight="700" fill="#93c5fd">2 Days From ₹8,999</text>
              <text x="130" y="200" text-anchor="middle" font-size="12">Free airport pickup</text>
              <text x="130" y="260" text-anchor="middle" font-size="12" fill="#fcd34d">The ad makes a promise.</text>
              <text x="130" y="280" text-anchor="middle" font-size="12" fill="#fcd34d">The page must keep it.</text>
              <line x1="244" y1="166" x2="290" y2="166" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ads9a)"/>
              <rect x="296" y="14" width="444" height="314" rx="12" fill="#1f1f44" stroke="#4b4a78"/>
              <rect x="316" y="28" width="404" height="40" rx="6" fill="#27274e" stroke="#10b981"/>
              <text x="330" y="53">1  Headline: Kerala Houseboat, 2 Days from ₹8,999</text>
              <rect x="316" y="78" width="150" height="72" rx="6" fill="#27274e" stroke="#ec4899"/>
              <text x="391" y="110" text-anchor="middle" font-size="12">Photo of the</text>
              <text x="391" y="128" text-anchor="middle" font-size="12">real boat</text>
              <rect x="476" y="78" width="244" height="72" rx="6" fill="#27274e" stroke="#ec4899"/>
              <text x="490" y="106">2  Offer: what is included</text>
              <text x="490" y="128" font-size="12" fill="#9b99b8">meals, pickup, dates, price</text>
              <rect x="316" y="160" width="404" height="46" rx="6" fill="#27274e" stroke="#3b82f6"/>
              <text x="330" y="188">3  Trust: reviews, licence, real photos</text>
              <rect x="316" y="216" width="404" height="40" rx="6" fill="#10b981"/>
              <text x="518" y="241" text-anchor="middle" font-weight="700" fill="#0b0b1e">4  One clear button: Check dates</text>
              <rect x="316" y="266" width="404" height="48" rx="6" fill="#27274e" stroke="#f59e0b"/>
              <text x="330" y="295">5  Short form: name, phone, travel date</text>
            </g>
          </svg>
          <figcaption>Message match: the page repeats the ad's offer at once. Then it gives details, proof and one clear next step.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>What makes a landing page convert</h3>
          <p>Our example is Backwater Trails, a made-up travel agency in Kerala. Its ad offers a 2-day houseboat trip. A <strong>conversion</strong> is the action you want, such as a booking or an enquiry form.</p>
          <table class="lc-table">
            <thead><tr><th>Part</th><th>Plain meaning</th><th>Good example</th></tr></thead>
            <tbody>
              <tr><td><strong>Message match</strong></td><td>The page repeats the ad's words and offer at the top</td><td>Ad says "2 days from ₹8,999". Page headline says the same.</td></tr>
              <tr><td><strong>Clear offer</strong></td><td>People see what they get, the price and the next step quickly</td><td>What is included, dates and what is not included</td></tr>
              <tr><td><strong>Trust signals</strong></td><td>Proof that you are real and reliable</td><td>Real reviews, real photos, address, licence or registration</td></tr>
              <tr><td><strong>One clear action</strong></td><td>One main button, not ten different links</td><td>"Check dates" or "Get a quote"</td></tr>
              <tr><td><strong>Short form</strong></td><td>Ask only for what you need now</td><td>Name, phone, travel date</td></tr>
              <tr><td><strong>Mobile and speed</strong></td><td>Most ad clicks may come from phones. The page must load fast and read well there.</td><td>Big text, big button, small images</td></tr>
            </tbody>
          </table>
          <p>A common mistake is sending all ads to the home page. Then people must search again for the offer. Google Ads also looks at landing page experience when it judges your ad quality. So a good page can help your costs too.</p>
        </div>
        <div class="lc-card">
          <h3>Asking AI to review a page</h3>
          <p>Copy the text of your page into the AI tool, with the ad text. Or share the public link if your AI tool can read web pages. Do not include private data, such as customer enquiries.</p>
          <p>A weak prompt:</p>
          <pre><code>Is my landing page good?</code></pre>
          <p>You will get polite, general praise. A better prompt gives the ad, the page and a clear checklist:</p>
          <pre><code>You are a conversion rate expert. Review my landing page for this ad.
        AD: "Kerala Houseboat, 2 Days From ₹8,999. Free airport pickup."
        PAGE TEXT: [paste the page text, top to bottom]
        Score each from 1 to 5 with one reason: message match, clear offer,
        trust signals, one clear action, form length.
        Then list the 5 most important fixes, the biggest first.
        Quote the exact words on the page that cause each problem.
        Do not invent reviews, numbers or awards.</code></pre>
          <p>Asking the AI to <em>quote the exact words</em> helps. You can then find each problem on the page and check it yourself.</p>
        </div>
        <div class="lc-card">
          <h3>What AI cannot see, and what you must check</h3>
          <ul class="lc-list">
            <li><strong>Speed and mobile layout.</strong> Text alone does not show these. Open the page on your own phone. A free tool such as Google PageSpeed Insights can test speed.</li>
            <li><strong>The form and the button.</strong> Fill in the form yourself. Check that the enquiry arrives and the conversion is tracked.</li>
            <li><strong>Every claim.</strong> Do not add AI-written reviews or fake "only 2 left" messages. They break ad policies and customer trust.</li>
            <li><strong>Your real results.</strong> AI gives ideas. Your conversion rate after the change shows if they worked.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Activity: helps or hurts?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">The ad says "Kerala Houseboat, 2 Days From ₹8,999". Sort each landing page feature.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="helps" data-label="Helps conversions"></div>
              <div data-sorter-target="bucket" data-bucket="hurts" data-label="Hurts conversions"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="helps" data-why="This is message match. People know at once they are in the right place.">Headline: "Kerala Houseboat, 2 Days From ₹8,999"</li>
              <li data-bucket="hurts" data-why="People came for one trip. The home page makes them search again.">The ad links to the home page with 40 different tours</li>
              <li data-bucket="helps" data-why="Real photos and reviews show the business is real and the boat looks as promised.">Real photos of the boat and reviews from past guests</li>
              <li data-bucket="hurts" data-why="Long forms stop many people. Ask only what you need to reply.">A form with 12 fields, including income and job title</li>
              <li data-bucket="hurts" data-why="A price that differs from the ad breaks trust and may break ad policies.">The page says prices start at ₹12,500</li>
              <li data-bucket="helps" data-why="One clear action makes the next step easy, especially on a phone.">One big "Check dates" button near the top</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Paste your ad and landing page text, or use the sample. Ask AI to score the page and list fixes.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a landing page and conversion expert. Review this landing page for the ad below.

        AD: [Kerala Houseboat, 2 Days From ₹8,999. Free airport pickup. Book today.]

        PAGE TEXT (top to bottom):
        [Welcome to Backwater Trails! We are Kerala's travel experts since 2012. Explore our tours: hill stations, wildlife parks, beaches, houseboats and more. Packages start at ₹12,500. Contact us: fill in the form (name, email, phone, city, age, income, travel date, number of guests, budget, how you found us). Menu: Home, About, Tours, Blog, Gallery, Careers.]

        Tasks:
        1. Score from 1 to 5, with one reason each: message match, clear offer, trust signals, one clear action, form length.
        2. List the 5 most important fixes, biggest first. Quote the exact page words that cause each problem.
        3. Write a new headline and a new first paragraph that match the ad.
        4. List what you cannot judge from text alone (for example speed and mobile layout).

        Do not invent reviews, awards or numbers. Use simple English.</pre>
            <ul class="ai-try-checks">
              <li>Did it notice the price in the ad does not match the page?</li>
              <li>Are the quoted words really on the page?</li>
              <li>Did it avoid inventing reviews, awards or numbers?</li>
              <li>Did it say what you still need to test on a real phone?</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> The ad makes a promise, and the landing page must keep it at once. AI can quickly spot unclear offers and missing proof in your page text. You still test the page on a phone, fill in the form yourself, and keep every claim true.
        </div>
      HTML
      starter_code: nil
    },
    10 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mkt">Digital Marketing</div>
          <h1 class="lc-title">Budgets and Bidding</h1>
        </div>
        <p class="lc-lead">Your <strong>budget</strong> is how much you are willing to spend. Your <strong>bidding strategy</strong> tells the platform what to aim for with that money: clicks, conversions or sales value. In this lesson, you will set a daily budget from a monthly one. You will learn the main bidding strategies in plain words, and what the learning phase is. You will also check <strong>pacing</strong> (whether you are spending faster or slower than planned) with a simple spreadsheet and AI.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 345" role="img" aria-label="A decision tree for choosing a bidding strategy. First question: is conversion tracking working? If no, fix tracking first or use maximise clicks for visits. If yes, ask: do sales have different values? If no, use maximise conversions and add a target CPA later. If yes, use maximise conversion value and add a target ROAS later. A note says to allow a learning period after any new strategy or big change.">
            <defs><marker id="ads10a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="230" y="14" width="300" height="46" rx="10" fill="#27274e" stroke="#8b5cf6"/>
              <text x="380" y="42" font-weight="700">Is conversion tracking working?</text>
              <rect x="30" y="110" width="220" height="64" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="140" y="136" font-weight="700">Fix tracking first</text>
              <text x="140" y="158" font-size="11.5" fill="#9b99b8">or Maximise clicks for visits</text>
              <rect x="410" y="100" width="300" height="46" rx="10" fill="#27274e" stroke="#8b5cf6"/>
              <text x="560" y="128" font-weight="700">Do sales have different values?</text>
              <rect x="320" y="206" width="210" height="64" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="425" y="232" font-weight="700">Maximise conversions</text>
              <text x="425" y="254" font-size="11.5" fill="#9b99b8">add a target CPA later</text>
              <rect x="545" y="206" width="210" height="64" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="650" y="232" font-weight="700">Max. conversion value</text>
              <text x="650" y="254" font-size="11.5" fill="#9b99b8">add a target ROAS later</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#ads10a)">
                <line x1="300" y1="62" x2="170" y2="106"/>
                <line x1="460" y1="62" x2="540" y2="96"/>
                <line x1="500" y1="148" x2="445" y2="202"/>
                <line x1="620" y1="148" x2="645" y2="202"/>
              </g>
              <text x="222" y="78" font-size="12" fill="#fca5a5">No</text>
              <text x="522" y="72" font-size="12" fill="#6ee7b7">Yes</text>
              <text x="456" y="176" font-size="12" fill="#fca5a5">No</text>
              <text x="652" y="176" font-size="12" fill="#6ee7b7">Yes</text>
              <rect x="30" y="292" width="720" height="40" rx="8" fill="#27274e" stroke="#f59e0b"/>
              <text x="390" y="317" font-size="12.5">After a new strategy or a big change, allow a learning period before you judge.</text>
            </g>
          </svg>
          <figcaption>A simple way to choose a bidding strategy. The names come from Google Ads. Meta has similar options with different names.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Budgets: from monthly to daily</h3>
          <p>Our example is LedgerLite, a made-up startup in Karnataka. It sells a billing app for small shops. A conversion is a free trial sign-up.</p>
          <ul class="lc-list">
            <li><strong>Daily budget:</strong> the average amount you want to spend each day.</li>
            <li><strong>Lifetime budget (Meta):</strong> one amount for the whole campaign, spread over its dates.</li>
            <li><strong>Campaign budget or ad set budget:</strong> the platform can share one budget across ad sets, or you can set one for each ad set.</li>
          </ul>
          <p>Spend is not the same every day. Google's help pages say it may spend up to twice your daily budget on a busy day. Over a month, it should not charge more than your daily budget times 30.4 (the average days in a month). Meta also lets daily spend go above the daily budget on some days, within a weekly limit. These rules can change, so check each platform's current help pages.</p>
          <p>Worked example with sample numbers:</p>
          <table class="lc-table">
            <thead><tr><th>Cell</th><th>What it holds</th><th>Value or formula</th><th>Result</th></tr></thead>
            <tbody>
              <tr><td>B1</td><td>Monthly budget (₹)</td><td>60000</td><td>₹60,000</td></tr>
              <tr><td>B5</td><td>Daily budget</td><td><code>=B1/30.4</code></td><td>about ₹1,974</td></tr>
              <tr><td>B6</td><td>Target CPA (cost per sign-up)</td><td>400</td><td>₹400</td></tr>
              <tr><td>B7</td><td>Sign-ups you can expect per month</td><td><code>=B1/B6</code></td><td>150</td></tr>
            </tbody>
          </table>
          <p>Check the budget against the data the platform needs. Meta's help pages say an ad set needs about 50 results in about a week to leave the learning phase. At ₹400 each, that is about ₹20,000 a week. This budget gives only about ₹13,800 a week, so LedgerLite may run fewer ad sets, or optimise for an earlier step with more results.</p>
        </div>
        <div class="lc-card">
          <h3>Bidding strategies in plain words</h3>
          <table class="lc-table">
            <thead><tr><th>What you want</th><th>Google Ads name</th><th>Similar Meta option</th></tr></thead>
            <tbody>
              <tr><td>As many clicks as possible</td><td>Maximise clicks</td><td>Traffic objective with highest volume</td></tr>
              <tr><td>As many conversions as possible</td><td>Maximise conversions</td><td>Highest volume</td></tr>
              <tr><td>Conversions near a set cost each</td><td>Maximise conversions with a target CPA</td><td>Cost per result goal</td></tr>
              <tr><td>The most sales value</td><td>Maximise conversion value</td><td>Highest value</td></tr>
              <tr><td>A set return on ad spend</td><td>Maximise conversion value with a target ROAS</td><td>ROAS goal</td></tr>
              <tr><td>Full control of each bid</td><td>Manual CPC</td><td>Bid cap</td></tr>
            </tbody>
          </table>
          <p>CPA is cost per acquisition: ad cost divided by conversions. ROAS is return on ad spend: sales value divided by ad cost. Automatic strategies need correct conversion tracking. If tracking is wrong, the platform learns the wrong thing. A target that is too strict can also stop your ads from spending.</p>
          <p><strong>Learning phase:</strong> after you launch, or after a big change, the platform tests who to show ads to. Results jump up and down during this time. Do not judge a campaign in its first few days. Make budget changes in small steps, because big edits can restart learning.</p>
        </div>
        <div class="lc-card">
          <h3>Checking pacing with a spreadsheet and AI</h3>
          <p>It is day 12 of a 30-day month. LedgerLite has spent ₹27,000 of ₹60,000. Is that too fast?</p>
          <pre><code>B1  Monthly budget      60000
        B2  Spent so far        27000
        B3  Days passed         12
        B4  Days in month       30
        Expected spend by now:  =B1*B3/B4          → 24000
        Pacing:                 =B2/(B1*B3/B4)     → 112.5%
        New daily budget:       =(B1-B2)/(B4-B3)   → about 1,833</code></pre>
          <p>Pacing above 100% means you are spending faster than planned. Here, LedgerLite should lower the daily budget to about ₹1,833 to finish the month on budget.</p>
          <p>A weak prompt: <code>How much should I spend on ads?</code> The AI cannot know. A better prompt gives your numbers and asks it to show the maths:</p>
          <pre><code>My monthly Google Ads budget is ₹60,000. It is day 12 of 30.
        I have spent ₹27,000 and got 60 trial sign-ups.
        1. Am I overspending or underspending? Show the pacing maths.
        2. What daily budget finishes the month on budget?
        3. What is my CPA so far?
        Show each formula so I can check it in my spreadsheet.</code></pre>
          <p>Always check the AI's maths in your spreadsheet. AI tools can make arithmetic mistakes. Budgets are business decisions: only spend what your business can afford to lose while you test.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: set and manage a budget</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put these budget steps in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Decide the monthly budget your business can afford</li>
              <li data-order="2">Divide it by 30.4 to get the daily budget</li>
              <li data-order="3">Check that conversion tracking works, then choose a bidding strategy</li>
              <li data-order="4">Launch, and wait out the learning period before judging</li>
              <li data-order="5">Check pacing each week with your spreadsheet</li>
              <li data-order="6">Change budgets or targets in small steps, one at a time</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Give AI your budget numbers and ask for a pacing check and a simple bidding plan. Use the sample numbers or your own.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a paid ads budget planner. Help me with budgets and bidding for [LedgerLite, a startup in Karnataka with a billing app for small shops]. A conversion is [a free trial sign-up].

        My numbers:
        - Monthly budget: [₹60,000]
        - Day [12] of a [30]-day month
        - Spent so far: [₹27,000]
        - Conversions so far: [60]
        - Is conversion tracking working? [yes]
        - Do conversions have different values? [no]

        Tasks:
        1. Work out: expected spend by today, pacing %, CPA so far, and the daily budget that finishes the month on budget. Show each formula as a Google Sheets formula.
        2. Suggest a bidding strategy for Google Ads and a similar option for Meta, with a one-line reason each.
        3. Tell me if my budget is enough for the learning phase, and what to do if it is not.
        4. List 3 things I should not change during the learning period.

        Say that platform rules change and I should check the current help pages. Use simple English.</pre>
            <ul class="ai-try-checks">
              <li>Check every number with the formulas in your own spreadsheet.</li>
              <li>Is the pacing % above 100% when spend is ahead of plan?</li>
              <li>Does the bidding advice fit your tracking and your data?</li>
              <li>Does it avoid stating platform rules as certain facts?</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> The budget sets how much you spend, and the bidding strategy sets what the platform aims for. Automatic bidding only works with correct tracking and enough data. Check pacing every week, make changes in small steps, and check all maths yourself.
        </div>
      HTML
      starter_code: nil
    },
    11 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mkt">Digital Marketing</div>
          <h1 class="lc-title">A/B Testing Ads</h1>
        </div>
        <p class="lc-lead">An <strong>A/B test</strong> (a split test) shows two versions of an ad to similar people at the same time. Then you compare the results. It is the most reliable way to learn what works for your business. Guessing is not. In this lesson, you will learn to change one thing at a time, wait for enough data, and read the results without fooling yourself. You will also use AI to plan tests and to write test versions.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 262" role="img" aria-label="The same audience, budget and dates are split between Version A and Version B, which differ only in the headline. After three weeks, B has a higher click-through rate, but there are too few sales to judge sales yet.">
            <defs><marker id="ads11a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="380" y="24" font-weight="700">A fair A/B test: one change, same conditions</text>
              <rect x="20" y="85" width="150" height="80" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="95" y="118" font-weight="700" fill="#c4b5fd">Same audience</text>
              <text x="95" y="142" font-size="11" fill="#9b99b8">same budget + dates</text>
              <rect x="230" y="45" width="210" height="70" rx="10" fill="#27274e" stroke="#3b82f6"/>
              <text x="335" y="74" font-weight="700" fill="#93c5fd">Version A (control)</text>
              <text x="335" y="98" font-size="11" fill="#9b99b8">Headline: Fresh Cakes Daily</text>
              <rect x="230" y="135" width="210" height="70" rx="10" fill="#27274e" stroke="#ec4899"/>
              <text x="335" y="164" font-weight="700" fill="#f9a8d4">Version B (test)</text>
              <text x="335" y="188" font-size="11" fill="#9b99b8">Headline: Eggless Cakes Daily</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#ads11a)">
                <path d="M172,115 L226,82"/>
                <path d="M172,135 L226,168"/>
                <path d="M442,80 L496,100"/>
                <path d="M442,170 L496,150"/>
              </g>
              <rect x="500" y="45" width="240" height="160" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="620" y="70" font-weight="700" fill="#6ee7b7">Results after 3 weeks</text>
              <text x="620" y="96" font-size="12">A: 120 clicks, CTR 3.0%</text>
              <text x="620" y="118" font-size="12">B: 164 clicks, CTR 4.0%</text>
              <text x="620" y="140" font-size="12">Orders: A 12, B 14</text>
              <text x="620" y="166" font-size="12" fill="#6ee7b7">CTR: B looks better</text>
              <text x="620" y="188" font-size="12" fill="#fcd34d">Orders: too few to judge</text>
              <text x="380" y="245" font-size="12" fill="#9b99b8">Change only one thing. Wait for enough data before you decide.</text>
            </g>
          </svg>
          <figcaption>Both versions run at the same time, for the same kind of people. Only the headline is different.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The rules of a fair test</h3>
          <ul class="lc-list">
            <li><strong>Change one thing only.</strong> For example, the headline, the image or the offer. If you change two things, you will not know which one made the difference.</li>
            <li><strong>Run both versions at the same time.</strong> Sales change by day of the week, by season and around festivals. A "this week vs last week" test mixes these effects in.</li>
            <li><strong>Split the audience fairly.</strong> Each person should see only one version. Google Ads and Meta Ads Manager both have built-in test tools for this. Names and steps change, so check the tool's current help pages.</li>
            <li><strong>Write down your guess first.</strong> A <em>hypothesis</em> (a clear guess you want to test) looks like this: "Saying 'eggless' in the headline will raise CTR, because many customers ask for it."</li>
            <li><strong>Pick one main metric before you start.</strong> For example CTR (click-through rate: the share of people who saw the ad and clicked it) or CPA (cost per acquisition: the ad cost for each sale or lead).</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Enough data, and no early stops</h3>
          <p>Small numbers jump around by chance. On day two, one version often looks far better. A week later, the gap is often gone. This is called <em>noise</em> (random ups and downs).</p>
          <table class="lc-table">
            <thead><tr><th>Mistake</th><th>Why it misleads you</th><th>What to do instead</th></tr></thead>
            <tbody>
              <tr><td>Stopping when one version "wins" on day 2</td><td>Early leads often come from chance</td><td>Set a test length before you start and keep to it</td></tr>
              <tr><td>Judging sales with only a few orders</td><td>12 vs 14 orders can easily flip next week</td><td>Judge on a metric with more data, such as CTR, or wait longer</td></tr>
              <tr><td>Running for 3 days only</td><td>Weekdays and weekends behave differently</td><td>Run for at least one full week, and often two or more</td></tr>
              <tr><td>Editing the ads during the test</td><td>The platform may restart its learning</td><td>Leave the test alone until it ends</td></tr>
            </tbody>
          </table>
          <p>Many test tools show a <em>confidence</em> or <em>significance</em> figure. It tells you how likely it is that the difference is real and not chance. If the tool says the result is not yet clear, believe it. There is no single "magic number" of clicks or orders. More data is always safer.</p>
        </div>
        <div class="lc-card">
          <h3>How AI helps with testing</h3>
          <p>AI is good at ideas and wording. It is not a judge of your results. Use it to plan the test and to write versions that differ in exactly one way.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Give me some better ads to test.</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>I run Google search ads for Sweet Crumbs, a home bakery in Maharashtra.
        Current headline: "Fresh Cakes Daily". Goal: more online cake orders.
        Suggest 3 A/B tests. For each test, change ONE thing only.
        For each, give: the hypothesis, version A, version B,
        the main metric, and what result would make us switch.</code></pre>
          <p><strong>You must still decide:</strong> which test matters most, how long to run it, and whether the result is clear enough. Also check that every version is true. For example, "eggless" must be true for all your cakes.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: run a test in the right order</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put the steps of a fair A/B test in the correct order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Write a hypothesis: what you will change and why</li>
              <li data-order="2">Choose one main metric and a fixed test length</li>
              <li data-order="3">Create version B with only one change from version A</li>
              <li data-order="4">Run both versions at the same time with a fair split</li>
              <li data-order="5">Wait until the test length ends, without editing the ads</li>
              <li data-order="6">Compare the results and check if the difference is clear</li>
              <li data-order="7">Keep the winner and plan the next test</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to plan one fair A/B test for your own ad. Then check that each test really changes only one thing.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a careful paid ads specialist who explains things in simple English.

        My business: [Sweet Crumbs, a home bakery in Maharashtra selling eggless cakes].
        Platform: [Google search ads].
        Current ad headline: [Fresh Cakes Daily].
        Current ad description: [Order birthday cakes online. Same-day local delivery.]
        Goal: [more online cake orders].
        Weekly budget: [₹7,000].

        Plan 3 possible A/B tests. For each test:
        1. The hypothesis (what we change and why it might work).
        2. Version A and version B. Change ONLY ONE thing.
        3. The main metric to judge the test.
        4. A suggested minimum test length, and why.
        5. What result would make us keep version B.

        Then tell me which test to run first and why.
        Rules: Do not invent statistics or average rates. Do not promise results. Only use claims that are true for my business, and mark any claim I must confirm with [CHECK].</pre>
            <ul class="ai-try-checks">
              <li>Does each test change only one thing?</li>
              <li>Is the main metric clear, and chosen before the test?</li>
              <li>Is the test length at least one full week?</li>
              <li>Are all the claims in the new versions true for your business?</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A good test changes one thing, runs both versions at the same time, and waits for enough data. AI can write the versions quickly. You decide what to test and when the result is clear.
        </div>
      HTML
      starter_code: nil
    },
    12 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mkt">Digital Marketing</div>
          <h1 class="lc-title">Reading Ad Reports with AI</h1>
        </div>
        <p class="lc-lead">Ad platforms give you many numbers. It is easy to get lost in them. AI can read a report quickly and point out patterns, such as a campaign that spends a lot but sells little. But AI sometimes does the maths wrong, or states a pattern that is not really there. In this lesson, you will export a report, ask AI good questions about it, and check the key numbers yourself in a spreadsheet.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 250" role="img" aria-label="Five steps: export the report, clean it, ask AI for patterns, check the maths in a spreadsheet, and decide next steps. Below, an example where AI says a CPA is 180 rupees but the spreadsheet shows 250 rupees.">
            <defs><marker id="ads12a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="15" y="20" width="130" height="90" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="80" y="48" font-weight="700" fill="#c4b5fd">1. Export</text>
              <text x="80" y="72" font-size="11" fill="#9b99b8">Download the</text>
              <text x="80" y="88" font-size="11" fill="#9b99b8">report as CSV</text>
              <rect x="165" y="20" width="130" height="90" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="230" y="48" font-weight="700" fill="#93c5fd">2. Clean</text>
              <text x="230" y="72" font-size="11" fill="#9b99b8">Keep only the</text>
              <text x="230" y="88" font-size="11" fill="#9b99b8">columns you need</text>
              <rect x="315" y="20" width="130" height="90" rx="10" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="380" y="48" font-weight="700" fill="#67e8f9">3. Ask AI</text>
              <text x="380" y="72" font-size="11" fill="#9b99b8">Find patterns</text>
              <text x="380" y="88" font-size="11" fill="#9b99b8">and questions</text>
              <rect x="465" y="20" width="130" height="90" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="530" y="48" font-weight="700" fill="#fcd34d">4. Check</text>
              <text x="530" y="72" font-size="11" fill="#9b99b8">Redo key maths</text>
              <text x="530" y="88" font-size="11" fill="#9b99b8">in a spreadsheet</text>
              <rect x="615" y="20" width="130" height="90" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="680" y="48" font-weight="700" fill="#6ee7b7">5. Decide</text>
              <text x="680" y="72" font-size="11" fill="#9b99b8">You choose the</text>
              <text x="680" y="88" font-size="11" fill="#9b99b8">next steps</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ads12a)">
                <line x1="147" y1="65" x2="161" y2="65"/>
                <line x1="297" y1="65" x2="311" y2="65"/>
                <line x1="447" y1="65" x2="461" y2="65"/>
                <line x1="597" y1="65" x2="611" y2="65"/>
              </g>
              <rect x="15" y="140" width="730" height="90" rx="10" fill="#27274e" stroke="#ec4899"/>
              <text x="380" y="164" font-weight="700" fill="#f9a8d4">Example: why step 4 matters</text>
              <text x="200" y="194" fill="#fca5a5">AI says: "Campaign B CPA is ₹180"</text>
              <text x="570" y="194" fill="#6ee7b7">Sheet: ₹4,500 / 18 sales = ₹250</text>
              <text x="380" y="218" font-size="11.5" fill="#9b99b8">Always recheck the numbers you will use to make a decision.</text>
            </g>
          </svg>
          <figcaption>AI finds patterns fast. A spreadsheet checks the maths. You make the decision.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Step 1 and 2: export and clean the report</h3>
          <p>Google Ads and Meta Ads Manager both let you download a report, usually as a CSV file (a simple table file that any spreadsheet can open). The menus change often, so check each tool's current help pages.</p>
          <ul class="lc-list">
            <li>Choose a clear date range, for example the last 30 days.</li>
            <li>Keep the columns you need: campaign, spend, impressions, clicks, conversions and conversion value.</li>
            <li>Remove anything private. Ad reports rarely hold customer details, but lead or order exports often do. Never paste customer names, phone numbers or emails into a public AI tool.</li>
            <li>Check your company's rules before you share account data with any AI tool.</li>
          </ul>
          <p>Here is a small made-up report for Backwater Trails, a travel agency in Kerala. The last two columns are worked out from the others.</p>
          <table class="lc-table">
            <thead><tr><th>Campaign</th><th>Spend (₹)</th><th>Clicks</th><th>Bookings</th><th>Revenue (₹)</th><th>CPA (₹)</th><th>ROAS</th></tr></thead>
            <tbody>
              <tr><td>A: Hill station trips (search)</td><td>6,000</td><td>400</td><td>12</td><td>1,80,000</td><td>500</td><td>30</td></tr>
              <tr><td>B: Houseboat (Meta)</td><td>4,500</td><td>900</td><td>18</td><td>1,08,000</td><td>250</td><td>24</td></tr>
              <tr><td>C: Brand name (search)</td><td>1,500</td><td>150</td><td>10</td><td>1,50,000</td><td>150</td><td>100</td></tr>
            </tbody>
          </table>
          <p>CPA is cost per acquisition (spend divided by bookings). ROAS is return on ad spend (revenue divided by spend). All numbers are made up.</p>
        </div>
        <div class="lc-card">
          <h3>Step 3 and 4: ask AI, then check the maths</h3>
          <p>Ask AI for patterns and questions, not for a final decision. Ask it to show its working, so you can check it.</p>
          <pre><code>Here is my ad report for the last 30 days (below).
        1. Work out CTR, CPA and ROAS for each row. Show the formula you used.
        2. List 3 patterns you notice, with the numbers that support each one.
        3. List 3 questions I should answer before I move any budget.
        Do not guess at data that is not in the table.</code></pre>
          <p>Then redo the key numbers in a spreadsheet. If spend is in column B, bookings in column D and revenue in column E, use:</p>
          <pre><code>CPA:  =B2/D2
        ROAS: =E2/B2
        CTR:  =C2/F2   (clicks divided by impressions, if impressions are in column F)</code></pre>
          <p><strong>Watch for these AI mistakes:</strong> wrong division, adding up percentages instead of recalculating them, mixing up rows, and inventing reasons. For example, AI may say "Campaign C works because of good ad copy". But brand searches (people who already know your name) often convert well anyway. You know your business. AI does not.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: a report review session</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="tool" data-label="Export">You download last month's campaign report from Meta Ads Manager as a CSV file.</li>
              <li data-kind="check" data-label="Clean">You delete a column of lead phone numbers. Only campaign totals stay in the file.</li>
              <li data-kind="user" data-label="Prompt">You paste the table and ask: "Work out CPA and ROAS for each campaign. Show your formula. List 3 patterns and 3 questions."</li>
              <li data-kind="answer" data-label="AI reply">AI says the houseboat campaign has a CPA of ₹180 and is the cheapest way to get bookings.</li>
              <li data-kind="tool" data-label="Spreadsheet">You type =B3/D3 in the sheet.</li>
              <li data-kind="result" data-label="Sheet shows">4,500 / 18 = ₹250, not ₹180.</li>
              <li data-kind="warn" data-label="AI error">The AI divided by the wrong number. The brand campaign, at ₹150, is actually the cheapest.</li>
              <li data-kind="check" data-label="Decide">You correct the numbers. You also note that brand searches convert well anyway, so you do not move all the budget there.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Paste a report (or use the made-up one) and ask AI for patterns. Then check at least two numbers yourself.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a paid ads analyst who explains things in simple English.

        Here is my ad report for [the last 30 days]. Business: [Backwater Trails, a travel agency in Kerala].
        [Campaign | Spend (Rs) | Impressions | Clicks | Bookings | Revenue (Rs)
        A: Hill station trips (search) | 6000 | 12000 | 400 | 12 | 180000
        B: Houseboat (Meta) | 4500 | 60000 | 900 | 18 | 108000
        C: Brand name (search) | 1500 | 1500 | 150 | 10 | 150000]

        Tasks:
        1. Make a table with CTR, CPC, CPA and ROAS for each campaign. Show the formula for each metric.
        2. List 3 patterns you notice. Give the numbers that support each one.
        3. List 3 possible reasons for each pattern, and say how I could check each reason.
        4. List 3 questions I should answer before I change any budget.

        Rules: Use only the data in the table. Do not invent industry averages. If something cannot be known from this data, say so. This is for learning, so explain each step.</pre>
            <ul class="ai-try-checks">
              <li>Recalculate at least two CPA or ROAS figures yourself.</li>
              <li>Is each pattern backed by numbers from the table?</li>
              <li>Did the AI invent any averages or facts not in the data?</li>
              <li>Are the reasons written as ideas to check, not as facts?</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Use AI to spot patterns and to ask better questions. Use a spreadsheet to check the numbers. Keep the final decision for yourself, because you know things about your business that the report does not show.
        </div>
      HTML
      starter_code: nil
    },
    13 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mkt">Digital Marketing</div>
          <h1 class="lc-title">Lowering Cost and Fixing Problems</h1>
        </div>
        <p class="lc-lead">Sometimes ads do not work as planned. Few people click, clicks cost too much, or clicks do not turn into sales. Each problem has different causes and different fixes. In this lesson, you will learn a simple troubleshooting checklist. You will also use AI to suggest likely causes, then check them in your ad account before you change anything.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 262" role="img" aria-label="A decision tree. First find the main problem. Low CTR can come from an ad that does not match the search, a weak hook or a tired audience. High CPC can come from low quality, costly keywords or loose match types. Clicks with no sales can come from broken tracking, a landing page mismatch or wrong search terms.">
            <defs><marker id="ads13a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="280" y="12" width="200" height="40" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="380" y="37" font-weight="700" fill="#c4b5fd">Find the main problem</text>
              <rect x="20" y="92" width="210" height="40" rx="10" fill="#27274e" stroke="#3b82f6"/>
              <text x="125" y="117" font-weight="700" fill="#93c5fd">Low CTR</text>
              <rect x="275" y="92" width="210" height="40" rx="10" fill="#27274e" stroke="#f59e0b"/>
              <text x="380" y="117" font-weight="700" fill="#fcd34d">High CPC</text>
              <rect x="530" y="92" width="210" height="40" rx="10" fill="#27274e" stroke="#ec4899"/>
              <text x="635" y="117" font-weight="700" fill="#f9a8d4">Clicks, no sales</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#ads13a)">
                <path d="M300,54 L130,88"/>
                <path d="M380,54 L380,88"/>
                <path d="M460,54 L630,88"/>
                <path d="M125,134 L125,154"/>
                <path d="M380,134 L380,154"/>
                <path d="M635,134 L635,154"/>
              </g>
              <rect x="20" y="158" width="210" height="92" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="125" y="184" font-size="12">Ad does not match search</text>
              <text x="125" y="208" font-size="12">Weak hook or offer</text>
              <text x="125" y="232" font-size="12">Audience tired of the ad</text>
              <rect x="275" y="158" width="210" height="92" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="380" y="184" font-size="12">Low ad or page quality</text>
              <text x="380" y="208" font-size="12">Crowded, costly keywords</text>
              <text x="380" y="232" font-size="12">Match types too loose</text>
              <rect x="530" y="158" width="210" height="92" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="635" y="184" font-size="12">Tracking not working</text>
              <text x="635" y="208" font-size="12">Landing page mismatch</text>
              <text x="635" y="232" font-size="12">Wrong search terms</text>
            </g>
          </svg>
          <figcaption>Name the main problem first. Then check the common causes for that problem, one by one.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The troubleshooting checklist</h3>
          <p>Work from the top down. A problem higher up can cause the ones below it.</p>
          <table class="lc-table">
            <thead><tr><th>Problem</th><th>What to check</th><th>Common fixes</th></tr></thead>
            <tbody>
              <tr><td><strong>No impressions</strong> (the ad is not shown)</td><td>Is the ad approved? Is the budget or bid very low? Is the targeting too narrow?</td><td>Fix the policy issue, widen targeting, check budget and bid settings</td></tr>
              <tr><td><strong>Low CTR</strong> (few people click)</td><td>Does the headline match what people searched or care about? Is the offer clear? On Meta, is the frequency high? (Frequency is how many times, on average, each person saw the ad.)</td><td>Rewrite the headline, add the keyword, show a clearer offer, add fresh creatives</td></tr>
              <tr><td><strong>High CPC</strong> (each click costs a lot)</td><td>Are the keywords very popular? Is the ad relevant? On Google, is the Quality Score low? (Quality Score is Google's rating of your ad, keyword and landing page.)</td><td>Use more specific keywords, add negative keywords, improve ad and landing page relevance</td></tr>
              <tr><td><strong>Clicks but no conversions</strong> (no sales or leads)</td><td>Is conversion tracking working? Does the landing page match the ad? Which search terms brought the clicks?</td><td>Test the tracking, fix the page, add negative keywords for wrong searches</td></tr>
            </tbody>
          </table>
          <p>Always check tracking early. If tracking is broken, the ads may be working, but the report shows zero sales.</p>
        </div>
        <div class="lc-card">
          <h3>A worked example</h3>
          <p>Rang Mahal Crafts is a made-up handicrafts store in Rajasthan. Its search campaign "block print bedsheets" had these made-up numbers last month: spend ₹9,000, 300 clicks, CPC ₹30, and 0 orders. The shop owner asks AI for help.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>My ads are not working. Fix them.</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>My Google search campaign for "block print bedsheets" spent ₹9,000
        last month: 300 clicks, CPC ₹30, 0 orders. Before that it got 5-8 orders a month.
        Here are the top 10 search terms: [paste list].
        List the most likely causes, from most to least likely.
        For each, tell me exactly what to check in my account and what the fix would be.</code></pre>
          <p>The AI suggests checking tracking first, because orders dropped from some to none. The owner places a test order. No conversion shows in Google Ads. The tracking tag was removed when the website theme changed. The ads were fine. The tracking was broken.</p>
          <p><strong>What you must check:</strong> AI can only guess from the numbers you give it. It cannot see your account. Test each cause yourself, and change one thing at a time so you know what fixed it.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: match the fix to the problem</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Which problem does each fix mainly help with?</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="ctr" data-label="Low CTR"></div>
              <div data-sorter-target="bucket" data-bucket="cpc" data-label="High CPC"></div>
              <div data-sorter-target="bucket" data-bucket="conv" data-label="Clicks, no sales"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="ctr" data-why="If the headline matches what people typed, more of them click.">Put the searched keyword in the headline</li>
              <li data-bucket="ctr" data-why="High frequency means people have seen the ad many times. Fresh creatives help.">Add new images when frequency is high on Meta</li>
              <li data-bucket="cpc" data-why="Specific, longer keywords usually have less competition than short popular ones.">Swap a very broad keyword for more specific ones</li>
              <li data-bucket="cpc" data-why="Better relevance can raise quality ratings, which can lower cost per click.">Make the ad and landing page more relevant to the keyword</li>
              <li data-bucket="conv" data-why="If tracking is broken, real sales do not show in the report.">Place a test order and check that it is tracked</li>
              <li data-bucket="conv" data-why="People expect to see what the ad promised. A mismatch makes them leave.">Send the bedsheet ad to the bedsheet page, not the home page</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Describe a campaign problem to AI and get a checklist of likely causes. Then test the top cause in your account.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a paid ads troubleshooting expert. Explain in simple English.

        Business: [Rang Mahal Crafts, an online handicrafts store in Rajasthan].
        Platform: [Google search ads].
        Campaign: [block print bedsheets].
        Last 30 days: [spend ₹9,000, impressions 15,000, clicks 300, CPC ₹30, orders 0].
        The month before: [spend ₹8,000, clicks 290, orders 6].
        Recent changes: [new website theme two weeks ago].

        Tasks:
        1. Name the main problem (no impressions, low CTR, high CPC, or clicks with no sales).
        2. List the 5 most likely causes, from most to least likely. Explain why for each.
        3. For each cause, say exactly what I should check and where.
        4. Suggest one fix per cause. Tell me to change one thing at a time.

        Rules: You cannot see my account, so write causes as things to check, not as facts. Do not invent average rates or benchmarks.</pre>
            <ul class="ai-try-checks">
              <li>Did it check tracking early, since orders fell to zero?</li>
              <li>Are the causes written as things to check, not facts?</li>
              <li>Is each check something you can really do in your account?</li>
              <li>Does it avoid made-up industry averages?</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> First name the problem: no impressions, low CTR, high CPC, or no conversions. Then check the likely causes one by one, starting with tracking. AI can list the causes, but only your account can tell you which one is true.
        </div>
      HTML
      starter_code: nil
    },
    14 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mkt">Digital Marketing</div>
          <h1 class="lc-title">Ad Policies and Honest Ads</h1>
        </div>
        <p class="lc-lead">Every ad platform has <strong>ad policies</strong> (rules about what ads may say and show). Your country's laws also apply. An ad that breaks the rules can be rejected, and repeat problems can get an account suspended. False claims also hurt customers and your brand. In this lesson, you will learn which claims are risky, when you need to add a disclosure, and how to use AI as a first check. This lesson is general education, not legal advice.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 240" role="img" aria-label="Four checks before you publish an ad: can you prove every claim, does it follow the platform's ad policies, is it a special or sensitive category, and does it follow local law and advertising codes. If any answer is no, rewrite or remove the claim.">
            <defs><marker id="ads14a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="15" y="30" width="125" height="80" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="77" y="66" font-weight="700" fill="#c4b5fd">Draft ad</text>
              <text x="77" y="88" font-size="11" fill="#9b99b8">from you or AI</text>
              <rect x="165" y="30" width="125" height="80" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="227" y="60" font-weight="700" fill="#93c5fd">1. Proof</text>
              <text x="227" y="82" font-size="11" fill="#9b99b8">Can you prove</text>
              <text x="227" y="97" font-size="11" fill="#9b99b8">every claim?</text>
              <rect x="315" y="30" width="125" height="80" rx="10" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="377" y="60" font-weight="700" fill="#67e8f9">2. Policy</text>
              <text x="377" y="82" font-size="11" fill="#9b99b8">Follows Google</text>
              <text x="377" y="97" font-size="11" fill="#9b99b8">or Meta rules?</text>
              <rect x="465" y="30" width="125" height="80" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="527" y="60" font-weight="700" fill="#fcd34d">3. Category</text>
              <text x="527" y="82" font-size="11" fill="#9b99b8">Finance, health,</text>
              <text x="527" y="97" font-size="11" fill="#9b99b8">jobs, housing?</text>
              <rect x="615" y="30" width="130" height="80" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="680" y="60" font-weight="700" fill="#6ee7b7">4. Law</text>
              <text x="680" y="82" font-size="11" fill="#9b99b8">Local law and</text>
              <text x="680" y="97" font-size="11" fill="#9b99b8">ad codes OK?</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ads14a)">
                <line x1="142" y1="70" x2="161" y2="70"/>
                <line x1="292" y1="70" x2="311" y2="70"/>
                <line x1="442" y1="70" x2="461" y2="70"/>
                <line x1="592" y1="70" x2="611" y2="70"/>
              </g>
              <rect x="175" y="145" width="570" height="44" rx="10" fill="#27274e" stroke="#ec4899"/>
              <text x="460" y="172" fill="#f9a8d4">Any "no" or "not sure": rewrite the claim, remove it, or ask an expert</text>
              <rect x="15" y="145" width="140" height="44" rx="10" fill="#27274e" stroke="#10b981"/>
              <text x="85" y="172" font-size="12" fill="#6ee7b7">All "yes": publish</text>
              <text x="380" y="222" font-size="11.5" fill="#9b99b8">Check again after the ad goes live: platforms can reject or limit ads later.</text>
            </g>
          </svg>
          <figcaption>Four checks before any ad goes live. AI can help with the first pass, but a person makes the final call.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Claims you must not make</h3>
          <p>Policies are long and they change. The details differ by platform and by country. But some rules are common to almost all of them:</p>
          <table class="lc-table">
            <thead><tr><th>Risky claim</th><th>Why it is a problem</th><th>Honest version</th></tr></thead>
            <tbody>
              <tr><td>"Lose 10 kg in 2 weeks, guaranteed!"</td><td>Unproven health result and a guarantee</td><td>"Healthy meal plans made by a certified dietitian"</td></tr>
              <tr><td>"Guaranteed 20% returns every year"</td><td>Financial promises are strictly limited, and returns are never guaranteed</td><td>"Learn the basics of investing in a free webinar"</td></tr>
              <tr><td>"Maharashtra's No. 1 bakery"</td><td>A comparison claim you cannot prove</td><td>"Rated 4.8 by our customers on Google" (only if true right now)</td></tr>
              <tr><td>"Are you in debt? Click here."</td><td>Meta's rules do not allow ads that suggest they know a person's personal traits, such as money trouble or health</td><td>"Tips to plan your monthly budget"</td></tr>
              <tr><td>"Only 2 seats left!" (when that is false)</td><td>Fake urgency misleads buyers</td><td>"Batch starts 5 October" (a real date)</td></tr>
            </tbody>
          </table>
          <p>Also avoid: fake reviews, before-and-after photos for health or weight loss, using other brands' logos, and "free" when there are hidden costs.</p>
        </div>
        <div class="lc-card">
          <h3>Sensitive categories and disclosures</h3>
          <ul class="lc-list">
            <li><strong>Special categories on Meta.</strong> Ads about credit and financial products, jobs, housing, and social issues or politics must be declared as a special category. Social issue and political ads also need authorisation. Targeting options may then be limited, depending on the country. Check Meta's current help pages for the full list.</li>
            <li><strong>Restricted topics on Google.</strong> Financial services, healthcare and medicines, gambling, and political ads have extra rules. In some countries, advertisers must complete a verification first.</li>
            <li><strong>Disclosures.</strong> If an influencer is paid, or you show an offer with conditions, say so clearly. In India, the ASCI (Advertising Standards Council of India) code and consumer protection law cover misleading ads and paid endorsements. Indian rules on dark patterns (tricky designs) also cover fake urgency, such as a false "only 2 left". Check the current rules.</li>
            <li><strong>AI-made images and video.</strong> Some platforms ask you to label realistic AI-made or edited content, especially in political or social issue ads. Never show a real person saying something they did not say.</li>
          </ul>
          <p>If your business is in finance, health or law, ask a qualified professional to review your ads. This lesson is not legal advice.</p>
        </div>
        <div class="lc-card">
          <h3>Using AI as a first check</h3>
          <p>AI can read your ad and flag risky words fast. But AI may not know the latest policy, and it cannot check if your claims are true. Use it to find problems, then confirm with the official policy pages.</p>
          <pre><code>Review this ad for Google and Meta policy risks and misleading claims.
        For each risky phrase: quote it, explain the risk in one line,
        and give a safer version. Mark anything I must prove with [PROOF NEEDED].
        Tell me which official policy pages I should read to confirm.</code></pre>
          <p><strong>Remember:</strong> AI also writes risky ads itself. It likes words like "best", "guaranteed" and "No. 1". Check every AI draft before it goes live.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: safe, needs care, or do not use</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each ad line. Imagine it is for a made-up business in India.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="ok" data-label="Fine to use"></div>
              <div data-sorter-target="bucket" data-bucket="care" data-label="Needs proof or care"></div>
              <div data-sorter-target="bucket" data-bucket="no" data-label="Do not use"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="ok" data-why="A plain, true fact about the product.">"Eggless cakes, baked fresh every morning"</li>
              <li data-bucket="care" data-why="Only use it if you have proof, such as a current, real rating.">"Rated 4.8 stars by our customers"</li>
              <li data-bucket="no" data-why="A guaranteed return in a financial ad is misleading and against platform rules.">"Double your money in 6 months, guaranteed"</li>
              <li data-bucket="care" data-why="Free delivery is fine if true, but you must state conditions such as a minimum order.">"Free delivery" (only on orders above ₹999)</li>
              <li data-bucket="no" data-why="It suggests the ad knows the reader's health condition. Meta does not allow this.">"Struggling with diabetes? This tea is for you."</li>
              <li data-bucket="no" data-why="Faked or invented reviews mislead buyers and break platform rules.">A review written by AI and shown as a real customer quote</li>
              <li data-bucket="ok" data-why="A real date gives honest urgency.">"Diwali gift boxes: order by 25 October"</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to check an ad for policy risks and misleading claims. Then read the official policy page for any flagged item.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an ad policy reviewer. Explain in simple English.

        Business: [FitFuel, a made-up healthy meal delivery service in India].
        Platforms: [Google search ads and Meta ads].
        My ad:
        [Headline: Lose 5 kg in 30 days, guaranteed!
        Text: India's No. 1 diet meals. Are you overweight? Our doctor-approved plans work for everyone. Only 3 slots left today! Free delivery.]

        Tasks:
        1. Quote each risky phrase. Explain in one line why it may break platform ad policies or mislead customers.
        2. Mark claims I must prove with [PROOF NEEDED].
        3. Rewrite the full ad so it is honest and lower risk, but still attractive.
        4. Say if this ad falls into a sensitive or restricted category.
        5. List which official policy pages I should read to confirm.

        Rules: Do not claim to know the exact current policy wording. This is a first check, not legal advice.</pre>
            <ul class="ai-try-checks">
              <li>Did it flag the weight loss guarantee and "No. 1"?</li>
              <li>Did it flag "Are you overweight?" as a personal attribute problem?</li>
              <li>Is the rewrite true for your business?</li>
              <li>Did it tell you to confirm with official policy pages?</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> An honest ad is also a safer ad. Only claim what you can prove, add clear conditions, and take extra care with finance, health, jobs and housing. AI can flag risky words, but the official policy pages and a qualified expert have the final word.
        </div>
      HTML
      starter_code: nil
    },
    15 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mkt">Digital Marketing</div>
          <h1 class="lc-title">Capstone: Plan and Review an Ad Campaign</h1>
        </div>
        <p class="lc-lead">In this capstone, you will bring the whole course together. You will plan one campaign, write a set of ads, design a test, and review a report with clear next steps. You will use AI at every stage. You will also check its work at every stage. At the end, you will have a campaign pack you can use for your own business or show in a job interview.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 245" role="img" aria-label="Four stages in a loop: plan, create, test and review. Each stage produces a document: a campaign plan, an ad copy set, a test plan, and a report review with next steps. The review feeds back into the next plan.">
            <defs><marker id="ads15a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="15" y="30" width="160" height="110" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="95" y="60" font-weight="700" fill="#c4b5fd">1. Plan</text>
              <text x="95" y="86" font-size="11" fill="#9b99b8">Goal, audience,</text>
              <text x="95" y="102" font-size="11" fill="#9b99b8">offer, budget</text>
              <text x="95" y="126" font-size="11.5" fill="#e2e0f0">Campaign plan</text>
              <rect x="205" y="30" width="160" height="110" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="285" y="60" font-weight="700" fill="#93c5fd">2. Create</text>
              <text x="285" y="86" font-size="11" fill="#9b99b8">Search + social</text>
              <text x="285" y="102" font-size="11" fill="#9b99b8">ads, keywords</text>
              <text x="285" y="126" font-size="11.5" fill="#e2e0f0">Ad copy set</text>
              <rect x="395" y="30" width="160" height="110" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="475" y="60" font-weight="700" fill="#fcd34d">3. Test</text>
              <text x="475" y="86" font-size="11" fill="#9b99b8">One change,</text>
              <text x="475" y="102" font-size="11" fill="#9b99b8">fixed length</text>
              <text x="475" y="126" font-size="11.5" fill="#e2e0f0">Test plan</text>
              <rect x="585" y="30" width="160" height="110" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="665" y="60" font-weight="700" fill="#6ee7b7">4. Review</text>
              <text x="665" y="86" font-size="11" fill="#9b99b8">Metrics checked</text>
              <text x="665" y="102" font-size="11" fill="#9b99b8">in a spreadsheet</text>
              <text x="665" y="126" font-size="11.5" fill="#e2e0f0">Next steps</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#ads15a)">
                <line x1="177" y1="85" x2="201" y2="85"/>
                <line x1="367" y1="85" x2="391" y2="85"/>
                <line x1="557" y1="85" x2="581" y2="85"/>
                <path d="M665,142 L665,180 L95,180 L95,146"/>
              </g>
              <text x="380" y="202" font-size="12" fill="#9b99b8">Repeat each month: the review shapes the next plan</text>
              <text x="380" y="230" font-size="12" fill="#f9a8d4">At every stage: check facts, maths and ad policies yourself</text>
            </g>
          </svg>
          <figcaption>The four parts of your campaign pack. Each review leads to a better plan next time.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Your brief</h3>
          <p>Use your own business, or this made-up one: <strong>Sweet Crumbs</strong>, a home bakery in Maharashtra. It sells eggless birthday cakes and cookie boxes. It delivers within 8 km of its kitchen. The monthly ad budget is ₹30,000. The goal is more online cake orders.</p>
          <table class="lc-table">
            <thead><tr><th>Part</th><th>What it must include</th><th>What you must check</th></tr></thead>
            <tbody>
              <tr><td><strong>1. Campaign plan</strong></td><td>Goal, main metric, audience, offer, budget split, landing page</td><td>The budget adds up. The goal is measurable.</td></tr>
              <tr><td><strong>2. Ad copy set</strong></td><td>Search headlines and descriptions, keywords and negative keywords, 2 Meta ads with image ideas</td><td>Every claim is true. Character limits and ad policies are met.</td></tr>
              <tr><td><strong>3. Test plan</strong></td><td>One hypothesis, versions A and B, one metric, test length</td><td>Only one thing changes. The length is at least one full week.</td></tr>
              <tr><td><strong>4. Report review</strong></td><td>Metrics table, 3 patterns, 3 actions for next month</td><td>You recalculated key numbers. Actions follow from the data.</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>A sample report review</h3>
          <p>After one month, Sweet Crumbs has this made-up report. Spend and orders come from the ad platforms. Revenue comes from the shop's order records.</p>
          <table class="lc-table">
            <thead><tr><th>Campaign</th><th>Spend (₹)</th><th>Clicks</th><th>Orders</th><th>Revenue (₹)</th><th>CPA (₹)</th><th>ROAS</th></tr></thead>
            <tbody>
              <tr><td>Search: birthday cakes</td><td>15,000</td><td>600</td><td>40</td><td>60,000</td><td>375</td><td>4.0</td></tr>
              <tr><td>Meta: cookie boxes</td><td>10,000</td><td>1,250</td><td>20</td><td>16,000</td><td>500</td><td>1.6</td></tr>
              <tr><td>Meta: retargeting</td><td>5,000</td><td>250</td><td>15</td><td>22,500</td><td>333</td><td>4.5</td></tr>
            </tbody>
          </table>
          <p>Check the CPA in a sheet: <code>=B2/D2</code> gives 15,000 / 40 = 375. The cookie box campaign gets many clicks but has the lowest ROAS. Possible next steps: test a new cookie box offer, keep search spend steady, and do not raise retargeting too fast. Retargeting only reaches people who already visited, so it cannot grow very big.</p>
          <p>These are ideas to test, not proven answers. Profit also matters. ROAS shows revenue, not profit after ingredients and delivery costs.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: build the campaign pack in order</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put the capstone steps in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Set the goal, main metric and monthly budget</li>
              <li data-order="2">Describe the audience, the offer and the landing page</li>
              <li data-order="3">Ask AI for ad copy, keywords and negative keywords</li>
              <li data-order="4">Check every claim, character limits and ad policies</li>
              <li data-order="5">Write a test plan with one change and a fixed length</li>
              <li data-order="6">After the month, export the report and ask AI for patterns</li>
              <li data-order="7">Recalculate key numbers and choose next month's actions</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Use this prompt to make a first draft of your full campaign pack. Then check each part with the table above.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a senior paid ads planner. Write in simple English.

        Business: [Sweet Crumbs, a home bakery in Maharashtra selling eggless birthday cakes and cookie boxes, delivery within 8 km of its kitchen].
        Goal: [more online cake orders]. Monthly budget: [₹30,000]. Platforms: [Google search and Meta].
        Landing page: [order page with prices and delivery areas].

        Make a campaign pack with 4 parts:
        1. Campaign plan table: goal, main metric, audience, offer, budget split by campaign, landing page.
        2. Ad copy set: 8 search headlines (max 30 characters), 3 descriptions (max 90 characters), 10 keywords, 10 negative keywords, and 2 Meta ads with a hook, primary text and an image idea.
        3. Test plan: one hypothesis, version A and B, main metric, test length.
        4. A short list of what I should check before launch.

        Rules: Do not invent prices, reviews or awards. Mark any claim I must confirm with [CHECK]. Do not promise results or use made-up benchmarks. Avoid claims that may break ad policies.</pre>
            <ul class="ai-try-checks">
              <li>Does the budget split add up to your monthly budget?</li>
              <li>Count the characters in a few headlines and descriptions.</li>
              <li>Is every claim true, or marked [CHECK]?</li>
              <li>Does the test plan change only one thing?</li>
              <li>Are there any risky words such as "best" or "guaranteed"?</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A strong campaign is a loop: plan, create, test, review, and plan again. AI speeds up every stage. Your checks on facts, maths and policies are what make the work safe and useful.
        </div>
      HTML
      starter_code: nil
    }
  }.freeze
end

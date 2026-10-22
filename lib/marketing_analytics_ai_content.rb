module MarketingAnalyticsAiContent
  # Units (sidebar dividers): 1–4 Analytics Basics · 5–9 Tools and Data · 10–14 Analysis and Decisions · 15 Capstone
  # Widgets: sequence, sorter, stepper. No code editor: each Try It is an ai-try prompt box.
  LESSONS = {
    1 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mkt">Digital Marketing</div>
          <h1 class="lc-title">Why Marketing Analytics Matters</h1>
        </div>
        <p class="lc-lead"><strong>Marketing analytics</strong> means collecting your marketing numbers and using them to make better decisions. Without numbers, you guess where to spend time and money. With the right numbers, you can see what brings customers and what does not. In this lesson, you will learn why we measure, and how to tell a <strong>vanity metric</strong> from a useful one. You will also see how AI can help you read your numbers faster.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 272" role="img" aria-label="A loop of four steps: measure, understand, decide and act, then measure again. Below, a vanity metric (Reel A with 8,000 views and 3 orders) is compared with a useful metric (Reel B with 1,500 views and 12 orders).">
            <defs><marker id="ma1a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="380" y="24" font-weight="700">Measure to decide, not to feel good</text>
              <rect x="20" y="40" width="150" height="60" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="95" y="65" font-weight="700" fill="#93c5fd">1. Measure</text>
              <text x="95" y="86" font-size="11" fill="#9b99b8">collect the numbers</text>
              <rect x="210" y="40" width="150" height="60" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="285" y="65" font-weight="700" fill="#c4b5fd">2. Understand</text>
              <text x="285" y="86" font-size="11" fill="#9b99b8">what changed, and why</text>
              <rect x="400" y="40" width="150" height="60" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="475" y="65" font-weight="700" fill="#fcd34d">3. Decide</text>
              <text x="475" y="86" font-size="11" fill="#9b99b8">keep, fix or stop</text>
              <rect x="590" y="40" width="150" height="60" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="665" y="65" font-weight="700" fill="#6ee7b7">4. Act</text>
              <text x="665" y="86" font-size="11" fill="#9b99b8">change the plan</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#ma1a)">
                <line x1="172" y1="70" x2="206" y2="70"/>
                <line x1="362" y1="70" x2="396" y2="70"/>
                <line x1="552" y1="70" x2="586" y2="70"/>
                <path d="M665,102 L665,122 L95,122 L95,106"/>
              </g>
              <text x="380" y="140" font-size="11" fill="#9b99b8">then measure again</text>
              <rect x="20" y="156" width="350" height="100" rx="10" fill="#27274e" stroke="#ec4899"/>
              <text x="195" y="182" font-weight="700" fill="#f9a8d4">Vanity: views, likes, followers</text>
              <text x="195" y="208" font-size="12">Reel A: 8,000 views, 3 orders</text>
              <text x="195" y="234" font-size="11" fill="#9b99b8">Big number, small result</text>
              <rect x="390" y="156" width="350" height="100" rx="10" fill="#27274e" stroke="#10b981"/>
              <text x="565" y="182" font-weight="700" fill="#6ee7b7">Useful: orders, revenue, cost</text>
              <text x="565" y="208" font-size="12">Reel B: 1,500 views, 12 orders</text>
              <text x="565" y="234" font-size="11" fill="#9b99b8">Smaller number, 4 times the orders</text>
            </g>
          </svg>
          <figcaption>Analytics is a loop. You measure, understand, decide and act. Then you measure again to see if the change worked.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Measure so you can decide</h3>
          <p>Every number you track should help you answer a question. For example: "Which posts bring orders?" or "Is this ad worth the money?"</p>
          <p>If a number cannot change what you do next, it is not worth much time. Ask yourself one question for each number: <strong>"If this goes up or down, what will I do differently?"</strong></p>
          <ul class="lc-list">
            <li><strong>Measure:</strong> collect numbers from your tools. For example Google Analytics, Instagram Insights, your ad account or your sales sheet.</li>
            <li><strong>Understand:</strong> find what changed and why. AI can help you read a report here.</li>
            <li><strong>Decide:</strong> choose to keep, fix or stop something. You make this choice, not the AI.</li>
            <li><strong>Act:</strong> change your plan. Then measure again.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Vanity metrics vs useful metrics</h3>
          <p>A <strong>vanity metric</strong> is a number that looks good but does not tell you what to do. Views, likes and followers are common examples. A <strong>useful metric</strong> is linked to a business result, such as orders, revenue or the cost of each sale.</p>
          <p><strong>Worked example:</strong> Sweet Crumbs is a made-up home bakery in Maharashtra. Its average order is ₹900. It posted two Instagram reels last month.</p>
          <table class="lc-table">
            <thead><tr><th>Reel</th><th>Views</th><th>Link clicks</th><th>Orders</th><th>Orders per click</th><th>Revenue</th></tr></thead>
            <tbody>
              <tr><td>A: funny baking fail</td><td>8,000</td><td>90</td><td>3</td><td>3 ÷ 90 = 3.3%</td><td>3 × ₹900 = ₹2,700</td></tr>
              <tr><td>B: eggless cake order steps</td><td>1,500</td><td>60</td><td>12</td><td>12 ÷ 60 = 20%</td><td>12 × ₹900 = ₹10,800</td></tr>
            </tbody>
          </table>
          <p>Reel A had more than five times the views. But Reel B brought 4 times the orders and 4 times the revenue. If the owner looked only at views, she would make the wrong choice.</p>
          <p>Vanity metrics are not useless. Views can show that people are starting to know your brand. Just do not use them alone to judge success.</p>
        </div>
        <div class="lc-card">
          <h3>How AI helps, and what you still check</h3>
          <p>An AI assistant such as Claude or ChatGPT can read a small table and explain it in plain words. It can suggest which numbers matter for your goal.</p>
          <pre><code>Weak prompt:
        Is my Instagram doing well?

        Better prompt:
        I run a home bakery in Maharashtra. My goal is more online cake orders.
        Here are two reels: views, link clicks and orders (table below).
        Which reel helped my goal more? Show your maths step by step.
        Which of these numbers are vanity metrics for my goal?</code></pre>
          <p><strong>What you must still check:</strong> redo any maths the AI shows, using a calculator or spreadsheet. Check that the numbers match your real reports. Do not paste customer names, phone numbers or other private data into a public AI tool.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: vanity or useful?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Rangrez Crafts is a made-up handicrafts shop in Rajasthan. Its goal is more online sales. Sort each number.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="vanity" data-label="Vanity metric"></div>
              <div data-sorter-target="bucket" data-bucket="useful" data-label="Useful metric"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="vanity" data-why="Followers can grow without any sales. The number alone does not tell you what to change.">Instagram followers went up by 2,000</li>
              <li data-bucket="useful" data-why="Orders are the goal itself, and you can see which source brought them.">Online orders that came from email</li>
              <li data-bucket="vanity" data-why="Likes show attention, not buying. A post can get many likes and no orders.">Likes on the latest post</li>
              <li data-bucket="useful" data-why="This tells you if the ad money is paying back. You can act on it.">Revenue from ads compared with ad spend</li>
              <li data-bucket="vanity" data-why="Total page views mixes all visitors. It does not show whether visitors bought anything.">Total website page views this year</li>
              <li data-bucket="useful" data-why="It shows how many visitors buy. If it drops, you know to check the website or offer.">Share of website visitors who place an order</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask the AI to sort your own marketing numbers into vanity and useful metrics. Change the details in brackets first.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a friendly marketing analytics coach for small business owners.

        My business: [Sweet Crumbs, a home bakery in Maharashtra that sells cakes online].
        My main goal this quarter: [more online cake orders].
        The numbers I look at now: [Instagram followers, reel views, likes, website visits, link clicks, online orders, ad spend, revenue].

        Please do this in simple English with short sentences:
        1. Sort each number into "vanity metric" or "useful metric" for my goal. Give one reason for each.
        2. Pick the 3 numbers I should check every week, and say what I would do if each one goes down.
        3. Suggest one question I should ask my data this month.

        Rules: Do not invent any numbers or statistics about my business. If you need data you do not have, tell me what to collect.
        Format: a table for step 1, then a short list for steps 2 and 3.</pre>
            <ul class="ai-try-checks">
              <li>Each metric is linked to your real goal, not to a general goal.</li>
              <li>The 3 weekly numbers include at least one money or sales number.</li>
              <li>The AI did not invent numbers about your business.</li>
              <li>The "what I would do" actions are things you can really do.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A good metric changes what you do next. Big numbers like views feel good, but orders, revenue and cost per sale tell you if your marketing works.
        </div>
      HTML
      starter_code: nil
    },
    2 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mkt">Digital Marketing</div>
          <h1 class="lc-title">Where AI Helps with Data</h1>
        </div>
        <p class="lc-lead">AI assistants can save you hours with marketing data. They can explain a report, spot patterns, write spreadsheet formulas and draft summaries. But they also make mistakes with numbers. They can do the maths wrong or even make up numbers that look real. In this lesson, you will learn which data jobs to give AI and how to check its work before you trust it.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 270" role="img" aria-label="A four-step flow: your data, AI reads it, you check, you decide. Below, a green box lists what AI does well and a pink box lists where AI can go wrong.">
            <defs><marker id="ma2a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="20" y="20" width="150" height="60" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="95" y="45" font-weight="700" fill="#93c5fd">Your data</text>
              <text x="95" y="66" font-size="11" fill="#9b99b8">report or sheet</text>
              <rect x="210" y="20" width="150" height="60" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="285" y="45" font-weight="700" fill="#c4b5fd">AI reads it</text>
              <text x="285" y="66" font-size="11" fill="#9b99b8">explains, drafts</text>
              <rect x="400" y="20" width="150" height="60" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="475" y="45" font-weight="700" fill="#fcd34d">You check</text>
              <text x="475" y="66" font-size="11" fill="#9b99b8">redo the key sums</text>
              <rect x="590" y="20" width="150" height="60" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="665" y="45" font-weight="700" fill="#6ee7b7">You decide</text>
              <text x="665" y="66" font-size="11" fill="#9b99b8">then act</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ma2a)">
                <line x1="172" y1="50" x2="206" y2="50"/>
                <line x1="362" y1="50" x2="396" y2="50"/>
                <line x1="552" y1="50" x2="586" y2="50"/>
              </g>
              <rect x="20" y="110" width="350" height="140" rx="10" fill="#27274e" stroke="#10b981"/>
              <text x="195" y="138" font-weight="700" fill="#6ee7b7">AI does well</text>
              <text x="195" y="166" font-size="12">Explains reports in plain words</text>
              <text x="195" y="190" font-size="12">Finds patterns in a table</text>
              <text x="195" y="214" font-size="12">Writes and explains formulas</text>
              <text x="195" y="238" font-size="12">Drafts summaries fast</text>
              <rect x="390" y="110" width="350" height="140" rx="10" fill="#27274e" stroke="#ec4899"/>
              <text x="565" y="138" font-weight="700" fill="#f9a8d4">AI can go wrong</text>
              <text x="565" y="166" font-size="12">Wrong totals and percentages</text>
              <text x="565" y="190" font-size="12">Made-up numbers or trends</text>
              <text x="565" y="214" font-size="12">Misreads column names</text>
              <text x="565" y="238" font-size="12">Sounds sure when it is guessing</text>
            </g>
          </svg>
          <figcaption>Let AI read and draft. Then you check the numbers before you decide anything.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Four data jobs AI does well</h3>
          <table class="lc-table">
            <thead><tr><th>Job</th><th>Example request</th><th>Why it helps</th></tr></thead>
            <tbody>
              <tr><td><strong>Explain a report</strong></td><td>"What does 'engagement rate' mean in this Google Analytics table?"</td><td>You learn the terms in plain words.</td></tr>
              <tr><td><strong>Find patterns</strong></td><td>"Which months had the highest sales, and what do they have in common?"</td><td>AI gives you ideas to test. You still confirm them.</td></tr>
              <tr><td><strong>Write formulas</strong></td><td>"Write a Google Sheets formula to add up sales for Gujarat only."</td><td>You save time searching for the right formula.</td></tr>
              <tr><td><strong>Draft summaries</strong></td><td>"Turn this table into 5 bullet points for my manager."</td><td>You get a first draft in seconds.</td></tr>
            </tbody>
          </table>
          <p>For the formula example, the AI might suggest this. <code>SUMIFS</code> adds up the numbers in one column when other columns match your rules.</p>
          <pre><code>=SUMIFS(C2:C200, B2:B200, "Gujarat")</code></pre>
          <p>Here column C holds sales and column B holds the state. Always test a formula on a few rows you can check by hand.</p>
        </div>
        <div class="lc-card">
          <h3>Where AI goes wrong with numbers</h3>
          <p>An AI chat assistant predicts text. It does not always calculate like a calculator. Some tools can run real calculations, but you cannot always tell if they did. So treat every number in an AI answer as a draft.</p>
          <p><strong>Worked example:</strong> Rangrez Crafts, a made-up handicrafts store in Rajasthan, pasted its sales for three months into an AI chat.</p>
          <table class="lc-table">
            <thead><tr><th>Month</th><th>Sales</th><th>AI said</th><th>Correct answer</th></tr></thead>
            <tbody>
              <tr><td>January</td><td>₹1,24,500</td><td></td><td></td></tr>
              <tr><td>February</td><td>₹98,200</td><td>"Down 32% from January"</td><td>(98,200 − 1,24,500) ÷ 1,24,500 = −21.1%</td></tr>
              <tr><td>March</td><td>₹1,41,300</td><td>"Up 44% from February"</td><td>(1,41,300 − 98,200) ÷ 98,200 = +43.9%</td></tr>
              <tr><td><strong>Total</strong></td><td></td><td>"₹3,46,000"</td><td>₹3,64,000</td></tr>
            </tbody>
          </table>
          <p>One answer was right, and two were wrong. They all looked equally confident. This is why you must redo the key numbers yourself.</p>
          <ul class="lc-list">
            <li><strong>Made-up numbers:</strong> if you ask "What is a normal conversion rate for bakeries?", AI may give a number with no real source. Ask for sources and check them.</li>
            <li><strong>Misread data:</strong> AI may mix up columns, or miss rows when you paste a long table.</li>
            <li><strong>Private data:</strong> do not paste customer names, phone numbers or emails into a public AI tool. Remove them first, or follow your company's AI rules.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>A simple checking habit</h3>
          <pre><code>Weak prompt:
        Analyse my sales.

        Better prompt:
        Here are my monthly sales (table below). Show the percentage change
        month by month. Show each calculation step. Give me the spreadsheet
        formula for each step so I can check it. Do not guess any numbers
        that are not in the table.</code></pre>
          <p>Asking for the steps and the formulas makes errors easy to spot. Then put the formula in your sheet and compare. For a percentage change, the formula is:</p>
          <pre><code>=(B3-B2)/B2</code></pre>
          <p>Here B2 is the old month and B3 is the new month. Format the cell as a percentage.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: catch the AI's mistake</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Prompt">The Rangrez Crafts owner pastes three months of sales and asks: "Summarise my first quarter."</li>
              <li data-kind="answer" data-label="AI reply">"Your quarter total is ₹3,46,000. February fell 32%, then March grew 44%."</li>
              <li data-kind="tool" data-label="Spreadsheet">The owner types <code>=SUM(B2:B4)</code> in the sales sheet.</li>
              <li data-kind="result" data-label="Sheet shows">The sheet shows ₹3,64,000. That is ₹18,000 more than the AI said.</li>
              <li data-kind="warn" data-label="Mistake found">The total is wrong. A report with this number would also make every share of the total wrong.</li>
              <li data-kind="check" data-label="Recheck">The owner uses <code>=(B3-B2)/B2</code>. February is −21.1%, not −32%. March is +43.9%, so the AI was right there.</li>
              <li data-kind="answer" data-label="Final">The owner writes the summary with the checked numbers. The AI still helped with the wording.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Give the AI a small sales table and ask it to show its working. Then check one number in your own spreadsheet.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a careful marketing data assistant. Accuracy matters more than speed.

        Here are the monthly online sales for [Rangrez Crafts, a handicrafts store in Rajasthan]:
        [January: 124500
        February: 98200
        March: 141300]
        (All amounts are in rupees.)

        Please:
        1. Give the total for the three months.
        2. Give the percentage change from each month to the next.
        3. Show every calculation step, so I can check it.
        4. Give me the Google Sheets formula for each result. Assume months are in column A and sales in column B, from row 2.
        5. Write a 3-sentence summary for a busy shop owner.

        Rules: Use only the numbers above. Do not guess reasons for the changes; list 3 questions I should ask instead.
        Round percentages to one decimal place.</pre>
            <ul class="ai-try-checks">
              <li>Type the total formula into a sheet. Does it match the AI's total?</li>
              <li>Check one percentage change with a calculator.</li>
              <li>The formulas point to the right cells (column B, rows 2 to 4).</li>
              <li>The AI did not invent reasons such as "a festival sale" as if they were facts.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> AI is fast at explaining, drafting and writing formulas. It is not reliable at maths. Ask it to show its steps, then check the key numbers in your spreadsheet.
        </div>
      HTML
      starter_code: nil
    },
    3 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mkt">Digital Marketing</div>
          <h1 class="lc-title">Goals, KPIs and Funnels</h1>
        </div>
        <p class="lc-lead">Before you measure anything, you need a clear goal. A <strong>KPI</strong> (key performance indicator: the few numbers that show if you are reaching your goal) keeps you focused. A <strong>funnel</strong> shows how people move from first visit to purchase, and where you lose them. In this lesson, you will set a goal, choose KPIs and read a funnel with real numbers.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 290" role="img" aria-label="A funnel for a travel agency: 20,000 visitors, 6,000 viewed a tour, 480 sent an enquiry and 72 booked. Rates between stages are 30%, 8% and 15%. Overall 0.36% of visitors booked.">
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="380" y="24" font-weight="700">Backwater Trails: one month on the website</text>
              <rect x="40" y="40" width="440" height="45" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="260" y="67">Visitors: 20,000</text>
              <rect x="90" y="95" width="340" height="45" rx="8" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="260" y="122">Viewed a tour: 6,000</text>
              <rect x="140" y="150" width="240" height="45" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="260" y="177">Sent enquiry: 480</text>
              <rect x="185" y="205" width="150" height="45" rx="8" fill="#1f1f44" stroke="#10b981"/>
              <text x="260" y="232">Booked: 72</text>
              <g text-anchor="start">
                <text x="510" y="58" font-weight="700" fill="#93c5fd">Awareness</text>
                <text x="510" y="76" font-size="11" fill="#9b99b8">people find the website</text>
                <text x="510" y="113" font-weight="700" fill="#c4b5fd">Interest</text>
                <text x="510" y="131" font-size="11" fill="#9b99b8">30% of visitors</text>
                <text x="510" y="168" font-weight="700" fill="#fcd34d">Consideration</text>
                <text x="510" y="186" font-size="11" fill="#9b99b8">8% of tour viewers</text>
                <text x="510" y="223" font-weight="700" fill="#6ee7b7">Conversion</text>
                <text x="510" y="241" font-size="11" fill="#9b99b8">15% of enquiries</text>
              </g>
              <text x="380" y="278" font-size="12" fill="#9b99b8">Overall: 72 ÷ 20,000 = 0.36% of visitors booked a tour</text>
            </g>
          </svg>
          <figcaption>Each step of the funnel loses people. The rate between steps shows where to look first.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>From business goal to KPI</h3>
          <p>Start with a business goal. Then turn it into a marketing goal you can measure. A common method is <strong>SMART</strong>: specific, measurable, achievable, relevant and time-bound (with a deadline).</p>
          <p><strong>Worked example:</strong> Backwater Trails is a made-up travel agency in Kerala. It gets about 72 tour bookings a month from its website.</p>
          <table class="lc-table">
            <thead><tr><th>Level</th><th>Example</th></tr></thead>
            <tbody>
              <tr><td>Business goal</td><td>Grow income from houseboat tours.</td></tr>
              <tr><td>SMART marketing goal</td><td>Raise website bookings from 72 to 90 a month by 31 December 2026. That is 18 more, or a 25% rise (18 ÷ 72 = 0.25).</td></tr>
              <tr><td>Main KPI</td><td>Website bookings per month</td></tr>
              <tr><td>Supporting KPIs</td><td>Enquiry rate (enquiries ÷ tour viewers), booking rate (bookings ÷ enquiries), cost per booking</td></tr>
              <tr><td>Not a KPI here</td><td>Instagram followers. You can still watch it, but it does not measure this goal.</td></tr>
            </tbody>
          </table>
          <p>Keep your list short. Three to five KPIs is enough for most small teams. If everything is a KPI, nothing is.</p>
        </div>
        <div class="lc-card">
          <h3>Reading a funnel with numbers</h3>
          <p>A funnel has stages. A common set is awareness, interest, consideration and conversion (the action you want, such as a booking). To find the rate between two stages, divide the later number by the earlier number.</p>
          <table class="lc-table">
            <thead><tr><th>Stage</th><th>People</th><th>Rate from the stage before</th></tr></thead>
            <tbody>
              <tr><td>Visitors</td><td>20,000</td><td>(start)</td></tr>
              <tr><td>Viewed a tour</td><td>6,000</td><td>6,000 ÷ 20,000 = 30%</td></tr>
              <tr><td>Sent an enquiry</td><td>480</td><td>480 ÷ 6,000 = 8%</td></tr>
              <tr><td>Booked</td><td>72</td><td>72 ÷ 480 = 15%</td></tr>
            </tbody>
          </table>
          <p>What if the agency makes the enquiry form shorter, and the enquiry rate rises from 8% to 10%? With the same 6,000 tour viewers, that gives 600 enquiries. At a 15% booking rate, 600 × 0.15 = 90 bookings. That meets the goal without more visitors.</p>
          <p>This is a "what if" estimate, not a promise. You would test the change and measure the real result.</p>
        </div>
        <div class="lc-card">
          <h3>Using AI to plan goals and KPIs</h3>
          <pre><code>Weak prompt:
        Give me KPIs for my travel business.

        Better prompt:
        I run a travel agency in Kerala. Website bookings are 72 a month.
        My goal is 90 a month by 31 December 2026.
        Funnel last month: 20,000 visitors, 6,000 tour views,
        480 enquiries, 72 bookings.
        Calculate the rate at each stage and show the maths.
        Suggest one main KPI and up to four supporting KPIs.
        Which stage should I work on first, and why?</code></pre>
          <p><strong>What you must still check:</strong> redo the funnel rates yourself. Make sure the AI's KPIs are numbers you can really track in your tools. Decide the target yourself. AI does not know your budget, season or team size.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: set up a goal the right way</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put these steps for Backwater Trails in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Agree on the business goal: grow income from houseboat tours.</li>
              <li data-order="2">Write a SMART marketing goal: 90 website bookings a month by 31 December 2026.</li>
              <li data-order="3">Choose the main KPI (bookings) and a few supporting KPIs.</li>
              <li data-order="4">Collect last month's funnel numbers from the website and enquiry form.</li>
              <li data-order="5">Calculate the rate between each stage to find the weakest step.</li>
              <li data-order="6">Make one change at the weakest step, then track the KPIs each week.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask the AI to turn your business goal into a SMART goal, KPIs and a funnel. Change the details in brackets first.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a marketing analytics coach for small businesses. Use simple English.

        My business: [Backwater Trails, a travel agency in Kerala that sells houseboat tours].
        Business goal: [grow income from tours].
        Current numbers for last month: [20,000 website visitors, 6,000 tour page views, 480 enquiries, 72 bookings].
        My target: [90 bookings a month by 31 December 2026].

        Please:
        1. Rewrite my target as a SMART goal and explain each letter in one line.
        2. Give one main KPI and up to four supporting KPIs, with a simple formula for each.
        3. Build a funnel table: stage, number of people, rate from the stage before. Show the maths.
        4. Name the weakest stage and give 2 ideas to test there.

        Rules: Use only my numbers. Do not invent industry averages. Say clearly that the ideas are things to test, not promises.</pre>
            <ul class="ai-try-checks">
              <li>Each funnel rate is the later number divided by the earlier number. Check them with a calculator.</li>
              <li>The SMART goal has a number and a deadline.</li>
              <li>There are no more than five KPIs, and you can track each one.</li>
              <li>There are no made-up industry averages.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Start with a clear goal, then pick a few KPIs that measure it. A funnel with real numbers shows the weakest step, so you know where to work first.
        </div>
      HTML
      starter_code: nil
    },
    4 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mkt">Digital Marketing</div>
          <h1 class="lc-title">Key Marketing Metrics</h1>
        </div>
        <p class="lc-lead">A few metrics appear in almost every marketing report. In this lesson, you will learn five of them: <strong>conversion rate, CAC, customer lifetime value, ROAS and churn</strong>. For each one, you will see the formula and a worked example with sample numbers. You will also learn what each metric does not tell you. AI can explain and calculate these, but you must know them well enough to check its answers.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 258" role="img" aria-label="Five metric cards: conversion rate 3%, CAC 2,000 rupees, CLV 8,000 rupees, ROAS 4.5 and churn 5%, each with its formula. Below, a bar chart shows LedgerLite's customer value of 8,000 rupees against its cost of 2,000 rupees, a ratio of 4 to 1.">
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="380" y="24" font-weight="700">Five metrics, with sample numbers</text>
              <rect x="15" y="40" width="140" height="118" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="85" y="62" font-size="12.5" font-weight="700" fill="#93c5fd">Conversion rate</text>
              <text x="85" y="98" font-size="22" font-weight="700">3%</text>
              <text x="85" y="124" font-size="10.5" fill="#9b99b8">orders ÷ sessions</text>
              <text x="85" y="144" font-size="10.5" fill="#9b99b8">Sweet Crumbs</text>
              <rect x="160" y="40" width="140" height="118" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="230" y="62" font-size="12.5" font-weight="700" fill="#c4b5fd">CAC</text>
              <text x="230" y="98" font-size="22" font-weight="700">₹2,000</text>
              <text x="230" y="124" font-size="10.5" fill="#9b99b8">spend ÷ new customers</text>
              <text x="230" y="144" font-size="10.5" fill="#9b99b8">LedgerLite</text>
              <rect x="305" y="40" width="140" height="118" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="375" y="62" font-size="12.5" font-weight="700" fill="#6ee7b7">CLV</text>
              <text x="375" y="98" font-size="22" font-weight="700">₹8,000</text>
              <text x="375" y="124" font-size="10.5" fill="#9b99b8">profit × months kept</text>
              <text x="375" y="144" font-size="10.5" fill="#9b99b8">LedgerLite</text>
              <rect x="450" y="40" width="140" height="118" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="520" y="62" font-size="12.5" font-weight="700" fill="#fcd34d">ROAS</text>
              <text x="520" y="98" font-size="22" font-weight="700">4.5</text>
              <text x="520" y="124" font-size="10.5" fill="#9b99b8">ad revenue ÷ ad spend</text>
              <text x="520" y="144" font-size="10.5" fill="#9b99b8">Sweet Crumbs</text>
              <rect x="595" y="40" width="140" height="118" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="665" y="62" font-size="12.5" font-weight="700" fill="#f9a8d4">Churn</text>
              <text x="665" y="98" font-size="22" font-weight="700">5%</text>
              <text x="665" y="124" font-size="10.5" fill="#9b99b8">lost ÷ start customers</text>
              <text x="665" y="144" font-size="10.5" fill="#9b99b8">LedgerLite, monthly</text>
              <text x="380" y="184" font-size="12" fill="#9b99b8">LedgerLite: what one customer is worth vs what it costs to win one</text>
              <text x="130" y="211" text-anchor="end">CLV ₹8,000</text>
              <rect x="140" y="196" width="480" height="20" rx="4" fill="#10b981"/>
              <text x="130" y="239" text-anchor="end">CAC ₹2,000</text>
              <rect x="140" y="224" width="120" height="20" rx="4" fill="#8b5cf6"/>
              <text x="680" y="226" font-size="16" font-weight="700" fill="#6ee7b7">4 : 1</text>
            </g>
          </svg>
          <figcaption>Each metric answers a different question. Together they show if your marketing makes money.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Conversion rate and ROAS</h3>
          <p><strong>Conversion rate</strong> is the share of visitors who take the action you want, such as an order. <strong>ROAS</strong> (return on ad spend) is the revenue your ads brought, divided by what the ads cost.</p>
          <p><strong>Worked example:</strong> Sweet Crumbs, a made-up home bakery in Maharashtra, had this month:</p>
          <table class="lc-table">
            <thead><tr><th>Metric</th><th>Data</th><th>Calculation</th><th>Result</th></tr></thead>
            <tbody>
              <tr><td>Conversion rate</td><td>4,000 website sessions, 120 orders</td><td>120 ÷ 4,000 × 100</td><td>3%</td></tr>
              <tr><td>ROAS</td><td>₹20,000 ad spend, ₹90,000 revenue from ad orders</td><td>90,000 ÷ 20,000</td><td>4.5 (₹4.50 back for each ₹1)</td></tr>
            </tbody>
          </table>
          <p><strong>Watch out:</strong> ROAS uses revenue, not profit. Say the bakery keeps 30% of each sale as profit after ingredients and delivery. Then ₹90,000 of sales gives ₹27,000 profit. After the ₹20,000 ad cost, only ₹7,000 is left. At a 30% margin, the bakery needs a ROAS above about 3.3 (1 ÷ 0.30) just to cover the ad cost.</p>
        </div>
        <div class="lc-card">
          <h3>CAC, customer lifetime value and churn</h3>
          <p>These three matter most for businesses with repeat customers, such as subscriptions.</p>
          <ul class="lc-list">
            <li><strong>CAC</strong> (customer acquisition cost): what you spend on marketing to win one new customer.</li>
            <li><strong>Churn rate</strong>: the share of customers who leave in a period, such as a month.</li>
            <li><strong>CLV</strong> (customer lifetime value, also called LTV): the money one customer brings you while they stay.</li>
          </ul>
          <p><strong>Worked example:</strong> LedgerLite is a made-up accounting software startup in Karnataka. A plan costs ₹500 a month.</p>
          <table class="lc-table">
            <thead><tr><th>Metric</th><th>Data</th><th>Calculation</th><th>Result</th></tr></thead>
            <tbody>
              <tr><td>CAC</td><td>₹3,00,000 marketing spend, 150 new paying customers</td><td>3,00,000 ÷ 150</td><td>₹2,000</td></tr>
              <tr><td>Monthly churn</td><td>1,200 customers at the start of the month, 60 left</td><td>60 ÷ 1,200 × 100</td><td>5%</td></tr>
              <tr><td>Average months a customer stays</td><td>5% churn each month</td><td>1 ÷ 0.05</td><td>about 20 months</td></tr>
              <tr><td>CLV (revenue)</td><td>₹500 a month for 20 months</td><td>500 × 20</td><td>₹10,000</td></tr>
              <tr><td>CLV (profit)</td><td>80% gross margin (share of revenue left after direct costs)</td><td>10,000 × 0.80</td><td>₹8,000</td></tr>
              <tr><td>CLV : CAC</td><td>₹8,000 and ₹2,000</td><td>8,000 ÷ 2,000</td><td>4 : 1</td></tr>
            </tbody>
          </table>
          <p>Each customer brings ₹400 profit a month (500 × 0.80). So LedgerLite gets back its ₹2,000 CAC in about 5 months (2,000 ÷ 400).</p>
          <p>CLV is always an estimate. The "1 ÷ churn" shortcut assumes churn stays the same every month. Real churn often changes. For churn, count only customers you had at the start of the month. Do not count new customers who joined during the month.</p>
        </div>
        <div class="lc-card">
          <h3>Asking AI to calculate metrics</h3>
          <pre><code>Weak prompt:
        What is my CLV?

        Better prompt:
        Calculate CAC, monthly churn and CLV for my software business.
        Data: marketing spend ₹3,00,000; new paying customers 150;
        customers at the start of the month 1,200; customers lost 60;
        price ₹500 a month; gross margin 80%.
        Show each formula and each step. State every assumption you make.</code></pre>
          <p><strong>What you must still check:</strong> redo each step with a calculator. Check that the AI used the same definitions as your team. For example, does "marketing spend" include salaries and tools, or only ads? Different definitions give very different CAC numbers. Write your definitions down and use them every month.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: which metric answers the question?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Match each business question to the metric that answers it.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="cr" data-label="Conversion rate"></div>
              <div data-sorter-target="bucket" data-bucket="cac" data-label="CAC"></div>
              <div data-sorter-target="bucket" data-bucket="roas" data-label="ROAS"></div>
              <div data-sorter-target="bucket" data-bucket="churn" data-label="Churn"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="cr" data-why="Conversion rate is orders divided by visits. It shows how well the page turns visitors into buyers.">Out of every 100 visits to the cake page, how many end in an order?</li>
              <li data-bucket="roas" data-why="ROAS compares revenue from the ads with the money spent on those ads.">For each ₹1 spent on Instagram ads, how much revenue came back?</li>
              <li data-bucket="cac" data-why="CAC is total marketing spend divided by the number of new customers.">How much marketing money does it take to win one new subscriber?</li>
              <li data-bucket="churn" data-why="Churn is the share of existing customers who leave in a period.">What share of last month's subscribers cancelled this month?</li>
              <li data-bucket="cr" data-why="This is also a conversion rate: sign-ups divided by visitors to the page.">What share of visitors to the free trial page sign up?</li>
              <li data-bucket="churn" data-why="If more customers leave each month, churn is going up. That also lowers CLV.">Are more customers leaving us each month than before?</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Give the AI your own numbers and ask it to calculate the key metrics with full working. Change the numbers in brackets first.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a marketing analyst who explains things simply. Show all your working.

        My business: [LedgerLite, an accounting software startup in Karnataka, ₹500 per month plan].
        Data for last month:
        - Marketing spend: [₹3,00,000]
        - New paying customers: [150]
        - Customers at the start of the month: [1,200]
        - Customers who cancelled: [60]
        - Gross margin: [80%]
        - Ad spend: [₹1,00,000], revenue from ad customers: [₹75,000]

        Please calculate: CAC, monthly churn rate, average months a customer stays, CLV (revenue and profit), CLV to CAC ratio, and ROAS.
        For each one, give the formula, the steps and the result in a table.
        Then write 3 plain-English points about what these numbers mean.

        Rules: State every assumption. Say that CLV is an estimate. Do not compare my numbers with industry averages unless you can name a real source.</pre>
            <ul class="ai-try-checks">
              <li>Check CAC and churn with a calculator.</li>
              <li>Churn uses customers at the start of the month, not new customers.</li>
              <li>The AI says ROAS uses revenue, not profit.</li>
              <li>The AI lists its assumptions and calls CLV an estimate.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Know the formula behind each metric. Then you can check the AI's maths, spot a wrong definition and see the full picture, such as a high ROAS that still loses money.
        </div>
      HTML
      starter_code: nil
    },
    5 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mkt">Digital Marketing</div>
          <h1 class="lc-title">Google Analytics Basics</h1>
        </div>
        <p class="lc-lead"><strong>Google Analytics 4</strong> (GA4) is a free Google tool that shows how people find and use your website or app. Many marketers open it and feel lost among the reports. In this lesson, you will learn the core ideas: <strong>users, sessions, events, key events and traffic sources</strong>. You will also learn how to use AI to explain a GA4 report, and what you must check yourself.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 266" role="img" aria-label="One user has two sessions. Session 1 came from an Instagram ad and has page_view and view_item events. Session 2 came from Google search and has page_view, add_to_cart and purchase events. Purchase is marked as a key event.">
            <defs><marker id="ma5a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="85" y="24" font-weight="700" fill="#9b99b8">User</text>
              <text x="285" y="24" font-weight="700" fill="#9b99b8">Sessions (visits)</text>
              <text x="580" y="24" font-weight="700" fill="#9b99b8">Events (actions)</text>
              <rect x="20" y="100" width="130" height="60" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="85" y="126" font-weight="700" fill="#93c5fd">User</text>
              <text x="85" y="146" font-size="11" fill="#9b99b8">one visitor</text>
              <rect x="200" y="40" width="170" height="60" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="285" y="66" font-weight="700" fill="#c4b5fd">Session 1</text>
              <text x="285" y="86" font-size="11" fill="#9b99b8">source: Instagram ad</text>
              <rect x="200" y="160" width="170" height="60" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="285" y="186" font-weight="700" fill="#c4b5fd">Session 2</text>
              <text x="285" y="206" font-size="11" fill="#9b99b8">source: Google search</text>
              <rect x="420" y="56" width="100" height="28" rx="6" fill="#27274e"/><text x="470" y="75" font-size="12">page_view</text>
              <rect x="530" y="56" width="100" height="28" rx="6" fill="#27274e"/><text x="580" y="75" font-size="12">view_item</text>
              <rect x="420" y="176" width="100" height="28" rx="6" fill="#27274e"/><text x="470" y="195" font-size="12">page_view</text>
              <rect x="530" y="176" width="100" height="28" rx="6" fill="#27274e"/><text x="580" y="195" font-size="12">add_to_cart</text>
              <rect x="640" y="176" width="100" height="28" rx="6" fill="#27274e" stroke="#10b981" stroke-width="2"/><text x="690" y="195" font-size="12" fill="#6ee7b7">purchase</text>
              <text x="690" y="224" font-size="11" fill="#6ee7b7">key event</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#ma5a)">
                <path d="M152,120 L196,74"/>
                <path d="M152,140 L196,186"/>
                <line x1="372" y1="70" x2="416" y2="70"/>
                <line x1="372" y1="190" x2="416" y2="190"/>
              </g>
              <text x="380" y="254" font-size="11.5" fill="#9b99b8">One person on a phone and a laptop may count as two users.</text>
            </g>
          </svg>
          <figcaption>A user can have many sessions. Each session holds events. You mark the most important events as key events.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The five ideas you need</h3>
          <table class="lc-table">
            <thead><tr><th>Term</th><th>Plain meaning</th><th>Rangrez Crafts example</th></tr></thead>
            <tbody>
              <tr><td><strong>User</strong></td><td>A visitor. GA4 usually counts a browser or device, so one person on two devices may be two users.</td><td>Priya visits on her phone.</td></tr>
              <tr><td><strong>Session</strong></td><td>One visit. By default, a session ends after 30 minutes with no activity.</td><td>Priya browses at lunch, then again at night: 2 sessions.</td></tr>
              <tr><td><strong>Event</strong></td><td>One action on the site, such as viewing a page or clicking a button.</td><td><code>page_view</code>, <code>add_to_cart</code></td></tr>
              <tr><td><strong>Key event</strong></td><td>An event you mark as important for your business. GA4 used to call these "conversions".</td><td><code>purchase</code> or a contact form sent</td></tr>
              <tr><td><strong>Traffic source</strong></td><td>Where the visit came from. GA4 groups sources into channels, such as Organic Search or Paid Social.</td><td>Google search, an Instagram ad, an email</td></tr>
            </tbody>
          </table>
          <p>GA4 also marks some sessions as <strong>engaged sessions</strong>. By default, this means the visit lasted more than 10 seconds, had a key event or viewed at least 2 pages. <strong>Engagement rate</strong> is engaged sessions ÷ sessions.</p>
          <p>GA4 has standard <strong>Reports</strong> and a more flexible <strong>Explore</strong> area. Menu names and report layouts change from time to time. Check Google's current Analytics help pages if a menu looks different.</p>
        </div>
        <div class="lc-card">
          <h3>Reading a traffic report</h3>
          <p>Rangrez Crafts, a made-up handicrafts store in Rajasthan, exported last month's traffic acquisition report (a report of visits by channel). Its key event is <code>purchase</code>. To keep the maths simple, assume one purchase per session.</p>
          <table class="lc-table">
            <thead><tr><th>Channel</th><th>Sessions</th><th>Engaged sessions</th><th>Engagement rate</th><th>Key events</th><th>Key events ÷ sessions</th></tr></thead>
            <tbody>
              <tr><td>Organic Search</td><td>5,200</td><td>3,120</td><td>60%</td><td>104</td><td>2.0%</td></tr>
              <tr><td>Paid Social</td><td>3,800</td><td>1,520</td><td>40%</td><td>38</td><td>1.0%</td></tr>
              <tr><td>Direct</td><td>1,500</td><td>1,050</td><td>70%</td><td>45</td><td>3.0%</td></tr>
              <tr><td>Email</td><td>900</td><td>630</td><td>70%</td><td>36</td><td>4.0%</td></tr>
              <tr><td><strong>Total</strong></td><td>11,400</td><td>6,320</td><td>55.4%</td><td>223</td><td>2.0%</td></tr>
            </tbody>
          </table>
          <p>Email brings few visits but the highest share of purchases. Paid Social brings many visits but the lowest share. "Direct" means GA4 could not see a source. It includes people who typed your address, and some visits that GA4 could not trace.</p>
          <p><strong>Be careful before you cut Paid Social.</strong> This report gives each purchase to the session where it happened. A shopper may first find you through an Instagram ad, then come back later from Google. You will learn more about this in the attribution lesson.</p>
        </div>
        <div class="lc-card">
          <h3>Using AI to read GA4 reports</h3>
          <pre><code>Weak prompt:
        Here is my Google Analytics. What should I do?

        Better prompt:
        I run an online handicrafts store. My key event is purchase.
        Below is last month's GA4 traffic acquisition report by channel:
        sessions, engaged sessions, key events.
        1. Explain each column in plain words.
        2. Calculate engagement rate and key events per session for each
           channel. Show the maths.
        3. List 3 questions I should look into. Do not recommend cutting
           any channel based on this one report.</code></pre>
          <p><strong>What you must still check:</strong></p>
          <ul class="lc-list">
            <li>Redo the rates in your spreadsheet.</li>
            <li>Check the date range and that the numbers match the GA4 screen.</li>
            <li>Paste only summary tables. Do not paste user IDs, emails or other personal data into a public AI tool.</li>
            <li>AI cannot see your GA4 account unless you connect it. Do not trust its guesses about your settings.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Activity: a GA4 check with AI</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="tool" data-label="GA4">The Rangrez Crafts marketer opens the traffic acquisition report for last month and exports the channel table.</li>
              <li data-kind="user" data-label="Prompt">She pastes the table into an AI chat: "Explain this report and show the key event rate for each channel."</li>
              <li data-kind="answer" data-label="AI reply">"Email converts best at 4.0%. Paid Social is lowest at 1.0%. You should stop Paid Social ads."</li>
              <li data-kind="check" data-label="Check maths">She checks in her sheet: 36 ÷ 900 = 4.0% and 38 ÷ 3,800 = 1.0%. The maths is right.</li>
              <li data-kind="warn" data-label="Bad advice">Stopping Paid Social is not proven. This report credits the session with the purchase. Ads may start journeys that end later through search or email.</li>
              <li data-kind="thought" data-label="Next step">She decides to look at the path to purchase before changing the ad budget.</li>
              <li data-kind="result" data-label="Outcome">Her weekly note says: "Email converts best. Paid Social needs a deeper look before any budget change."</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Paste a channel summary from your own GA4, or use the sample in the prompt. Ask the AI to explain it and show its maths.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a patient Google Analytics 4 teacher for a small business owner who is new to GA4.

        My business: [Rangrez Crafts, an online handicrafts store in Rajasthan].
        My key event: [purchase].
        Last month's traffic acquisition report by channel:
        [Channel | Sessions | Engaged sessions | Key events
        Organic Search | 5200 | 3120 | 104
        Paid Social | 3800 | 1520 | 38
        Direct | 1500 | 1050 | 45
        Email | 900 | 630 | 36]

        Please:
        1. Explain users, sessions, events, key events and engaged sessions in one line each.
        2. For each channel, calculate engagement rate and key events per session. Show the maths in a table.
        3. Give 3 things I notice, and 3 questions I should check next in GA4.
        4. Explain why I should not cut a channel based on this report alone.

        Rules: Use simple English. Use only my numbers. If GA4 menu names may have changed, say "check Google's Analytics help pages".</pre>
            <ul class="ai-try-checks">
              <li>Check two of the rates with a calculator.</li>
              <li>Key events are described as events you mark as important.</li>
              <li>The AI does not tell you to stop a channel based on one report.</li>
              <li>There are no invented numbers, averages or GA4 features.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> In GA4, users have sessions, and sessions hold events. The key events you choose are what matter most. AI can explain a report quickly, but you check the maths and the context before you change any budget.
        </div>
      HTML
      starter_code: nil
    },
    6 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mkt">Digital Marketing</div>
          <h1 class="lc-title">Tracking Links and UTM Tags</h1>
        </div>
        <p class="lc-lead">You share a link on Instagram, in an email and in a WhatsApp message. Later, Google Analytics shows sales. But which link brought them? <strong>UTM tags</strong> answer this question. They are small labels that you add to the end of a link. In this lesson, you will learn the main UTM tags, set up a simple naming system and build tagged links in a spreadsheet. You will also use AI to plan tags for a whole campaign.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="A tracking link split into parts: the page address, then utm_source equals instagram, utm_medium equals social, utm_campaign equals diwali_2026 and utm_content equals reel_1. An arrow leads to a Google Analytics report row that shows instagram / social, campaign diwali_2026, channel Organic Social.">
            <defs><marker id="ma6a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="380" y="24" font-size="12" fill="#9b99b8">One tracking link, split into its parts (example.com is a sample address)</text>
              <rect x="20" y="40" width="190" height="52" rx="8" fill="#1f1f44" stroke="#9b99b8"/>
              <text x="115" y="62">example.com/diwali</text>
              <text x="115" y="81" font-size="11" fill="#9b99b8">the page</text>
              <text x="224" y="71" fill="#fcd34d" font-weight="700">?</text>
              <rect x="238" y="40" width="230" height="52" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="353" y="62">utm_source=instagram</text>
              <text x="353" y="81" font-size="11" fill="#9b99b8">where the visit came from</text>
              <text x="482" y="71" fill="#fcd34d" font-weight="700">&amp;</text>
              <rect x="496" y="40" width="244" height="52" rx="8" fill="#1f1f44" stroke="#10b981"/>
              <text x="618" y="62">utm_medium=social</text>
              <text x="618" y="81" font-size="11" fill="#9b99b8">the type of channel</text>
              <rect x="20" y="104" width="260" height="52" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="150" y="126">utm_campaign=diwali_2026</text>
              <text x="150" y="145" font-size="11" fill="#9b99b8">which campaign</text>
              <text x="294" y="135" fill="#fcd34d" font-weight="700">&amp;</text>
              <rect x="308" y="104" width="230" height="52" rx="8" fill="#1f1f44" stroke="#ec4899"/>
              <text x="423" y="126">utm_content=reel_1</text>
              <text x="423" y="145" font-size="11" fill="#9b99b8">which post or ad</text>
              <text x="556" y="126" text-anchor="start" font-size="11" fill="#9b99b8">optional extras:</text>
              <text x="556" y="144" text-anchor="start" font-size="11" fill="#9b99b8">utm_term, utm_id</text>
              <line x1="380" y1="162" x2="380" y2="194" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ma6a)"/>
              <rect x="110" y="200" width="540" height="90" rx="10" fill="#27274e" stroke="#22d3ee"/>
              <text x="130" y="222" text-anchor="start" font-weight="700" fill="#67e8f9">GA4 traffic report (sample)</text>
              <g font-size="12" text-anchor="start">
                <text x="130" y="246" fill="#9b99b8">Session source / medium</text>
                <text x="400" y="246" fill="#9b99b8">Campaign</text>
                <text x="530" y="246" fill="#9b99b8">Channel</text>
                <text x="130" y="272">instagram / social</text>
                <text x="400" y="272">diwali_2026</text>
                <text x="530" y="272">Organic Social</text>
              </g>
            </g>
          </svg>
          <figcaption>The tags travel with the click. Google Analytics reads them and shows them in its traffic reports.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>What UTM tags are</h3>
          <p>A <strong>UTM tag</strong> is a label in a link, written as <code>name=value</code>. The first tag comes after a <code>?</code>. Each extra tag comes after an <code>&amp;</code>. The page opens as normal. But analytics tools, such as Google Analytics 4 (GA4), read the tags and record where the visit came from.</p>
          <table class="lc-table">
            <thead><tr><th>Tag</th><th>What it means</th><th>Example value</th></tr></thead>
            <tbody>
              <tr><td><code>utm_source</code></td><td>The site, app or list that sent the visit</td><td>instagram, facebook, newsletter</td></tr>
              <tr><td><code>utm_medium</code></td><td>The type of channel</td><td>social, paid_social, email, cpc</td></tr>
              <tr><td><code>utm_campaign</code></td><td>The campaign or offer</td><td>diwali_2026</td></tr>
              <tr><td><code>utm_content</code></td><td>Which post, ad or button (optional)</td><td>reel_1, top_button</td></tr>
              <tr><td><code>utm_term</code></td><td>The paid keyword (optional)</td><td>eggless_cake</td></tr>
            </tbody>
          </table>
          <p>Google's help pages say you should always use <code>utm_source</code>, <code>utm_medium</code> and <code>utm_campaign</code>. They also describe <code>utm_id</code> (a campaign ID) and a few newer tags. Check the current GA4 help pages for the full list.</p>
          <p><strong>Google Ads:</strong> for Google Ads, Google recommends <em>auto-tagging</em>. It adds its own tracking code to your ad links, so you usually do not tag those links by hand.</p>
        </div>
        <div class="lc-card">
          <h3>A naming system and a UTM builder table</h3>
          <p>UTM values are <strong>case-sensitive</strong>. So <code>Instagram</code> and <code>instagram</code> show as two different sources in your reports. Your numbers get split. A naming system stops this. Write it down and share it with your team.</p>
          <ul class="lc-list">
            <li>Use lowercase only.</li>
            <li>Use <code>_</code> instead of spaces.</li>
            <li>Choose <code>utm_medium</code> only from a fixed list: <code>social</code>, <code>paid_social</code>, <code>email</code>, <code>cpc</code>, <code>referral</code>.</li>
            <li>Use one campaign name for all links in a campaign, for example <code>diwali_2026</code>.</li>
            <li>Never tag links between pages of your own website. The tag can replace the visit's real source with your own label.</li>
          </ul>
          <p>Why a fixed medium list? GA4 uses the source and medium to put visits into channels, such as Email or Organic Social. For example, the medium <code>email</code> goes into Email. An unusual medium, such as <code>whatsapp-group-oct</code>, may put visits in the wrong channel or in "Unassigned". Check GA4's current "default channel group" rules.</p>
          <p>Here is a builder table for Sweet Crumbs, a made-up home bakery in Maharashtra. Column A holds the page address, <code>https://example.com/diwali</code>. Columns B to E hold the tags.</p>
          <table class="lc-table">
            <thead><tr><th>Channel</th><th>B: source</th><th>C: medium</th><th>D: campaign</th><th>E: content</th></tr></thead>
            <tbody>
              <tr><td>Instagram post</td><td>instagram</td><td>social</td><td>diwali_2026</td><td>reel_1</td></tr>
              <tr><td>Instagram paid ad</td><td>instagram</td><td>paid_social</td><td>diwali_2026</td><td>story_ad_a</td></tr>
              <tr><td>Facebook paid ad</td><td>facebook</td><td>paid_social</td><td>diwali_2026</td><td>carousel_a</td></tr>
              <tr><td>WhatsApp broadcast</td><td>whatsapp</td><td>social</td><td>diwali_2026</td><td>broadcast_1</td></tr>
              <tr><td>Email newsletter</td><td>newsletter</td><td>email</td><td>diwali_2026</td><td>top_button</td></tr>
            </tbody>
          </table>
          <p>In cell F2, this formula joins the parts into one link. It works in Google Sheets and Excel. Copy it down to the other rows.</p>
          <pre><code>=A2&amp;"?utm_source="&amp;B2&amp;"&amp;utm_medium="&amp;C2&amp;"&amp;utm_campaign="&amp;D2&amp;"&amp;utm_content="&amp;E2</code></pre>
          <p>Row 2 gives: <code>https://example.com/diwali?utm_source=instagram&amp;utm_medium=social&amp;utm_campaign=diwali_2026&amp;utm_content=reel_1</code></p>
          <p>If your page address already has a <code>?</code> in it, the first tag must start with <code>&amp;</code> instead. Google also offers a free Campaign URL Builder page that builds one link at a time.</p>
        </div>
        <div class="lc-card">
          <h3>How AI helps, and what you check</h3>
          <p>A weak prompt gives the AI no rules:</p>
          <pre><code>Make UTM links for my Diwali campaign.</code></pre>
          <p>The AI will invent its own names. They may not match your past campaigns. A better prompt gives your naming rules and channels:</p>
          <pre><code>Make UTM tags for Sweet Crumbs' Diwali campaign.
        Page: https://example.com/diwali
        Channels: Instagram post, Facebook paid ad, email newsletter.
        Rules: lowercase, _ for spaces, medium only from social, paid_social, email.
        Campaign name: diwali_2026.
        Give a table: channel, source, medium, campaign, content, full URL.</code></pre>
          <p>AI is good at filling the table and spotting names that break your rules. But you must still check:</p>
          <ul class="lc-list">
            <li>Every link opens the right page. Click each one before you share it.</li>
            <li>There is only one <code>?</code> and no spaces in the link.</li>
            <li>The values follow your list exactly. One capital letter splits your data.</li>
            <li>Your visit shows up in GA4. Open a link, then look at the Realtime report.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Activity: good tag or needs fixing?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sweet Crumbs uses the naming system above. Sort each tagged link.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="good" data-label="Good tag"></div>
              <div data-sorter-target="bucket" data-bucket="fix" data-label="Needs fixing"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="good" data-why="Lowercase, a medium from the list, and the shared campaign name.">utm_source=instagram&amp;utm_medium=social&amp;utm_campaign=diwali_2026</li>
              <li data-bucket="fix" data-why="Values are case-sensitive. Instagram and instagram become two rows in your report.">utm_source=Instagram&amp;utm_medium=Social&amp;utm_campaign=diwali_2026</li>
              <li data-bucket="fix" data-why="Spaces break links or turn into %20. Use diwali_sale_2026 and keep one name per campaign.">utm_campaign=Diwali Sale 2026</li>
              <li data-bucket="good" data-why="All three main tags, plus utm_content to tell the buttons apart.">utm_source=newsletter&amp;utm_medium=email&amp;utm_campaign=diwali_2026&amp;utm_content=top_button</li>
              <li data-bucket="fix" data-why="Do not tag links inside your own website. It can reset the real source of the visit.">A UTM tag on the "Menu" link of your own website</li>
              <li data-bucket="fix" data-why="This medium is not in your list. GA4 may put these visits in the wrong channel, or in Unassigned.">utm_source=whatsapp&amp;utm_medium=whatsapp-group-oct&amp;utm_campaign=diwali_2026</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask the AI to plan the tracking links for one campaign, with your naming rules. Change the brackets to your own business, or leave them to see an example.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a digital marketing analyst. Help me build tracking links with UTM tags.
        Business: [Sweet Crumbs, a home bakery in Maharashtra]
        Campaign: [Diwali gift boxes 2026]
        Landing page: [https://example.com/diwali]
        Channels: [Instagram post, Instagram paid ad, Facebook paid ad, WhatsApp broadcast, email newsletter]

        My naming rules:
        - lowercase only, use _ instead of spaces
        - utm_medium only from this list: social, paid_social, email, cpc, referral
        - one utm_campaign name for the whole campaign
        - use utm_content to tell posts, ads and buttons apart

        Tasks:
        1. Make a table: channel, utm_source, utm_medium, utm_campaign, utm_content, full URL.
        2. Give one Google Sheets formula that joins the parts into the full URL.
        3. List 3 common mistakes to avoid with these links.
        Do not invent results or numbers. If a channel does not fit my medium list, say so.</pre>
            <ul class="ai-try-checks">
              <li>All values are lowercase with no spaces.</li>
              <li>Every medium comes from your list.</li>
              <li>Each full URL has one ? and uses &amp; between tags.</li>
              <li>You open every link yourself before you share it.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> UTM tags only help if everyone names things the same way. Write a short naming system, build links in a table, and test each link. AI can fill the table fast, but you check the names and the links.
        </div>
      HTML
      starter_code: nil
    },
    7 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mkt">Digital Marketing</div>
          <h1 class="lc-title">Cleaning Data in Spreadsheets</h1>
        </div>
        <p class="lc-lead">Data from shops, ad tools and forms is often messy. The same order appears twice. State names have extra spaces. Dates come in three styles. Amounts are stored as text. If you add up messy data, your totals are wrong. In this lesson, you will clean an export step by step. You will use AI to write the formulas, and you will check that nothing was lost.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 290" role="img" aria-label="Before and after. A messy export has a duplicate order, state names in mixed case, three date styles and amounts with rupee signs stored as text. The clean table has one row per order, the same city spelling, real dates and real numbers.">
            <defs><marker id="ma7a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="185" y="28" font-weight="700" fill="#fca5a5">Messy export</text>
              <text x="575" y="28" font-weight="700" fill="#6ee7b7">Clean table</text>
              <rect x="20" y="40" width="330" height="180" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <rect x="410" y="40" width="330" height="180" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <line x1="356" y1="130" x2="404" y2="130" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ma7a)"/>
              <g font-size="12" text-anchor="start">
                <text x="32" y="62" fill="#9b99b8">ID</text><text x="100" y="62" fill="#9b99b8">State</text><text x="185" y="62" fill="#9b99b8">Date</text><text x="270" y="62" fill="#9b99b8">Amount</text>
                <text x="32" y="88">ORD-101</text><text x="100" y="88">gujarat</text><text x="185" y="88">05/10/2026</text><text x="270" y="88">₹1,200</text>
                <g fill="#fca5a5"><text x="32" y="116">ORD-101</text><text x="100" y="116">Gujarat</text><text x="185" y="116">05/10/2026</text><text x="270" y="116">₹1,200</text></g>
                <text x="32" y="144">ORD-102</text><text x="100" y="144">GUJARAT</text><text x="185" y="144">2026-10-06</text><text x="270" y="144">850</text>
                <text x="32" y="172">ORD-103</text><text x="100" y="172">Kerala</text><text x="185" y="172">7 Oct 2026</text><text x="270" y="172">₹2,400</text>
                <text x="32" y="200">ORD-104</text><text x="100" y="200">kerala</text><text x="185" y="200">08/10/2026</text><text x="270" y="200">₹1,050</text>
                <text x="422" y="62" fill="#9b99b8">ID</text><text x="490" y="62" fill="#9b99b8">State</text><text x="575" y="62" fill="#9b99b8">Date</text><text x="670" y="62" fill="#9b99b8">Amount</text>
                <text x="422" y="88">ORD-101</text><text x="490" y="88">Gujarat</text><text x="575" y="88">05 Oct 2026</text><text x="670" y="88">1200</text>
                <text x="422" y="116">ORD-102</text><text x="490" y="116">Gujarat</text><text x="575" y="116">06 Oct 2026</text><text x="670" y="116">850</text>
                <text x="422" y="144">ORD-103</text><text x="490" y="144">Kerala</text><text x="575" y="144">07 Oct 2026</text><text x="670" y="144">2400</text>
                <text x="422" y="172">ORD-104</text><text x="490" y="172">Kerala</text><text x="575" y="172">08 Oct 2026</text><text x="670" y="172">1050</text>
              </g>
              <text x="185" y="244" font-size="11" fill="#fcd34d">duplicate · mixed case · 3 date styles · ₹ as text</text>
              <text x="575" y="244" font-size="11" fill="#6ee7b7">one row per order · real dates · real numbers</text>
              <text x="380" y="276" font-size="12" fill="#9b99b8">Keep the raw export. Clean in a copy or in new columns.</text>
            </g>
          </svg>
          <figcaption>A made-up order export from Rangrez Crafts, a handicrafts store in Rajasthan, before and after cleaning.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The common problems</h3>
          <p>Rangrez Crafts downloads its October orders from its online shop. Here are the first 6 rows. All data is made up.</p>
          <table class="lc-table">
            <thead><tr><th>A: Order ID</th><th>B: State</th><th>C: Order date</th><th>D: Amount</th></tr></thead>
            <tbody>
              <tr><td>ORD-101</td><td>" gujarat"</td><td>05/10/2026</td><td>₹1,200</td></tr>
              <tr><td>ORD-101</td><td>Gujarat</td><td>05/10/2026</td><td>₹1,200</td></tr>
              <tr><td>ORD-102</td><td>GUJARAT</td><td>2026-10-06</td><td>850</td></tr>
              <tr><td>ORD-103</td><td>"Kerala "</td><td>7 Oct 2026</td><td>₹2,400</td></tr>
              <tr><td>ORD-104</td><td>kerala</td><td>08/10/2026</td><td>₹1,050</td></tr>
              <tr><td>ORD-105</td><td>Punjab</td><td>08/10/2026</td><td>₹3,500</td></tr>
            </tbody>
          </table>
          <ul class="lc-list">
            <li><strong>Duplicates:</strong> ORD-101 appears twice. The export repeated it.</li>
            <li><strong>Spaces and case:</strong> " gujarat", "Gujarat" and "GUJARAT" are the same state. A pivot table may count them as two or three different states.</li>
            <li><strong>Dates:</strong> in India, 05/10/2026 means 5 October. A spreadsheet set to US style reads it as 10 May.</li>
            <li><strong>Text numbers:</strong> "₹1,200" is text, not a number. <code>SUM</code> skips text, so your total is too low.</li>
          </ul>
          <p>With the duplicate, the amounts add up to ₹10,200 over 6 rows. The real answer is 5 orders and ₹9,000.</p>
        </div>
        <div class="lc-card">
          <h3>Formulas for each fix</h3>
          <p>First, keep the raw export unchanged. Put each fix in a new helper column. These formulas work in Google Sheets and Excel. They use row 2 as the example.</p>
          <table class="lc-table">
            <thead><tr><th>Fix</th><th>Formula</th><th>Row 2 result</th></tr></thead>
            <tbody>
              <tr><td>Remove extra spaces, fix capital letters</td><td><code>=PROPER(TRIM(B2))</code></td><td>Gujarat</td></tr>
              <tr><td>Turn "₹1,200" into a number</td><td><code>=VALUE(SUBSTITUTE(SUBSTITUTE(D2,"₹",""),",",""))</code></td><td>1200</td></tr>
              <tr><td>Turn day-first text "05/10/2026" into a date</td><td><code>=DATE(RIGHT(C2,4),MID(C2,4,2),LEFT(C2,2))</code></td><td>5 Oct 2026</td></tr>
              <tr><td>Flag repeats of the same Order ID</td><td><code>=COUNTIF($A$2:A2,A2)&gt;1</code></td><td>FALSE (TRUE on row 3)</td></tr>
            </tbody>
          </table>
          <p>The date formula only works on text in the dd/mm/yyyy style. If the sheet has already turned the text into a wrong date, import the file again with the right locale. Other styles, such as "7 Oct 2026", need a different fix. You can also set the sheet's locale to India, so it reads dates day first. In Google Sheets, this is under File &gt; Settings. In Excel, it depends on your computer's region settings.</p>
          <p>After the duplicate flag, filter for TRUE and delete those rows. Both tools also have a "Remove duplicates" command. It compares whole rows by default. So clean the text first, because " gujarat" and "Gujarat" look different to a spreadsheet.</p>
          <p>A weak prompt: <code>Clean my data.</code> The AI cannot see your sheet, so it will guess. A better prompt names the columns, shows 3 to 5 sample rows, lists the problems and asks for one formula per fix. The Try It box below has a full example.</p>
        </div>
        <div class="lc-card">
          <h3>Check the result</h3>
          <p>AI-written formulas can point to the wrong column or break on some rows. Always check:</p>
          <ul class="lc-list">
            <li><strong>Row count:</strong> raw rows minus removed duplicates must equal clean rows. Here, 6 − 1 = 5.</li>
            <li><strong>Unique orders:</strong> <code>=COUNTA(UNIQUE(A2:A7))</code> gives 5. It works in Google Sheets and in Excel 2021 or later.</li>
            <li><strong>Totals:</strong> the clean amounts must add up to ₹9,000. That is 1,200 + 850 + 2,400 + 1,050 + 3,500.</li>
            <li><strong>Types:</strong> <code>=ISNUMBER(E2)</code> must say TRUE for every clean amount and date cell (change E2 to that cell). Dates are stored as numbers.</li>
            <li><strong>Spot check:</strong> compare 3 random rows with the original export by eye.</li>
          </ul>
          <p>Also write a short change log: "Removed 1 duplicate (ORD-101). Fixed state names. Converted dates and amounts." Your manager can then trust the numbers.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: put the cleaning steps in order</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put these steps for cleaning the Rangrez Crafts export in a safe order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Save an untouched copy of the raw export.</li>
              <li data-order="2">Fix spaces and capital letters in text columns with TRIM and PROPER.</li>
              <li data-order="3">Convert amounts and dates into real numbers and dates.</li>
              <li data-order="4">Flag repeated Order IDs, then remove the extra rows.</li>
              <li data-order="5">Check row counts and totals against the raw export.</li>
              <li data-order="6">Write a short note of every change you made.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Describe your messy export to the AI and ask for cleaning formulas. Use made-up or sample rows, never real customer names or phone numbers.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a friendly spreadsheet helper. I use [Google Sheets].
        My sheet [Orders] has headers in row 1. Columns:
        A = Order ID, B = State, C = Order date, D = Amount.
        Sample rows (made-up data):
        [ORD-101 |  gujarat | 05/10/2026 | ₹1,200
        ORD-101 | Gujarat | 05/10/2026 | ₹1,200
        ORD-102 | GUJARAT | 2026-10-06 | 850
        ORD-103 | Kerala  | 7 Oct 2026 | ₹2,400]

        Problems: extra spaces and mixed case in State. Dates in different styles (dd/mm/yyyy is day first, Indian style). Amounts are text with ₹ and commas. Some orders appear twice.

        Tasks:
        1. Give one formula per fix, for new helper columns E to H, starting in row 2. Explain each in one simple sentence.
        2. Explain how to find and remove duplicate Order IDs safely.
        3. Give 3 checks to make sure no orders were lost.
        Keep my raw data unchanged. If a formula works differently in Excel, say so.</pre>
            <ul class="ai-try-checks">
              <li>Each formula points to the right column and row.</li>
              <li>05/10/2026 becomes 5 October, not 10 May.</li>
              <li>You test every formula on 2 or 3 rows by hand.</li>
              <li>Row counts and totals match before and after cleaning.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Clean data is the base of every report. Keep the raw file, fix one problem at a time in helper columns, and check counts and totals at the end. AI writes formulas quickly, but only your checks prove they worked.
        </div>
      HTML
      starter_code: nil
    },
    8 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mkt">Digital Marketing</div>
          <h1 class="lc-title">Pivot Tables and Formulas with AI</h1>
        </div>
        <p class="lc-lead">Once your data is clean, you need answers from it. Which channel brought the most revenue? How did each month go? Two spreadsheet tools answer these questions. <strong>Formulas</strong> such as SUMIFS and COUNTIFS give one exact number. <strong>Pivot tables</strong> summarise a whole table in a few clicks. In this lesson, you will use both. You will also ask AI to write and explain formulas, and you will check its work.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 290" role="img" aria-label="Nine raw rows of bookings data with month, channel and revenue go into a pivot table. The pivot table shows revenue in thousand rupees by channel and month: Google Ads 72, 85, 60; Instagram 45, 56, 90; Email 38, 51, 34; totals 155, 192, 184. The grand total is 5,31,000 rupees.">
            <defs><marker id="ma8a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="170" y="28" font-weight="700" fill="#93c5fd">Raw rows (9)</text>
              <text x="580" y="28" font-weight="700" fill="#6ee7b7">Pivot: SUM of Revenue (₹ thousand)</text>
              <rect x="20" y="40" width="300" height="200" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <rect x="420" y="40" width="320" height="200" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <line x1="326" y1="140" x2="412" y2="140" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ma8a)"/>
              <text x="369" y="128" font-size="12" fill="#fcd34d">Pivot</text>
              <g font-size="12" text-anchor="start">
                <text x="34" y="64" fill="#9b99b8">Month</text><text x="90" y="64" fill="#9b99b8">Channel</text><text x="230" y="64" fill="#9b99b8">Revenue</text>
                <text x="34" y="90">Jul</text><text x="90" y="90">Google Ads</text><text x="230" y="90">72,000</text>
                <text x="34" y="116">Jul</text><text x="90" y="116">Instagram</text><text x="230" y="116">45,000</text>
                <text x="34" y="142">Jul</text><text x="90" y="142">Email</text><text x="230" y="142">38,000</text>
                <text x="34" y="168">Aug</text><text x="90" y="168">Google Ads</text><text x="230" y="168">85,000</text>
                <text x="34" y="194">Aug</text><text x="90" y="194">Instagram</text><text x="230" y="194">56,000</text>
                <text x="34" y="220" fill="#9b99b8">… 4 more rows</text>
                <text x="434" y="64" fill="#9b99b8">Channel</text>
                <text x="434" y="94">Google Ads</text>
                <text x="434" y="124">Instagram</text>
                <text x="434" y="154">Email</text>
                <text x="434" y="192" font-weight="700">Total</text>
              </g>
              <g font-size="12">
                <text x="580" y="64" fill="#9b99b8">Jul</text><text x="640" y="64" fill="#9b99b8">Aug</text><text x="700" y="64" fill="#9b99b8">Sep</text>
                <text x="580" y="94">72</text><text x="640" y="94">85</text><text x="700" y="94">60</text>
                <text x="580" y="124">45</text><text x="640" y="124">56</text><text x="700" y="124" fill="#6ee7b7">90</text>
                <text x="580" y="154">38</text><text x="640" y="154">51</text><text x="700" y="154">34</text>
                <text x="580" y="192" font-weight="700">155</text><text x="640" y="192" font-weight="700">192</text><text x="700" y="192" font-weight="700">184</text>
              </g>
              <line x1="430" y1="170" x2="730" y2="170" stroke="#4b4a78"/>
              <text x="580" y="224" font-size="11.5" fill="#9b99b8">Grand total ₹5,31,000</text>
              <text x="380" y="272" font-size="12" fill="#9b99b8">Settings: Rows = Channel · Columns = Month · Values = SUM of Revenue</text>
            </g>
          </svg>
          <figcaption>Nine rows become one small summary. You can see at once that Instagram grew each month.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The sample data</h3>
          <p>Backwater Trails is a made-up travel agency in Kerala. Its sheet has bookings by month and channel for July to September 2026. Row 1 has headers. Rows 2 to 10 have the data.</p>
          <table class="lc-table">
            <thead><tr><th>A: Month</th><th>B: Channel</th><th>C: Bookings</th><th>D: Revenue (₹)</th></tr></thead>
            <tbody>
              <tr><td>Jul</td><td>Google Ads</td><td>4</td><td>72,000</td></tr>
              <tr><td>Jul</td><td>Instagram</td><td>3</td><td>45,000</td></tr>
              <tr><td>Jul</td><td>Email</td><td>2</td><td>38,000</td></tr>
              <tr><td>Aug</td><td>Google Ads</td><td>5</td><td>85,000</td></tr>
              <tr><td>Aug</td><td>Instagram</td><td>4</td><td>56,000</td></tr>
              <tr><td>Aug</td><td>Email</td><td>3</td><td>51,000</td></tr>
              <tr><td>Sep</td><td>Google Ads</td><td>3</td><td>60,000</td></tr>
              <tr><td>Sep</td><td>Instagram</td><td>6</td><td>90,000</td></tr>
              <tr><td>Sep</td><td>Email</td><td>2</td><td>34,000</td></tr>
            </tbody>
          </table>
          <p>This course uses the Indian number style. So ₹2,17,000 means two lakh seventeen thousand rupees (217,000).</p>
        </div>
        <div class="lc-card">
          <h3>SUMIFS, COUNTIFS and AVERAGEIFS</h3>
          <p>These formulas add, count or average only the rows that match your conditions. They work in Google Sheets and Excel.</p>
          <table class="lc-table">
            <thead><tr><th>Question</th><th>Formula</th><th>Answer</th></tr></thead>
            <tbody>
              <tr><td>Total Instagram revenue</td><td><code>=SUMIFS(D2:D10, B2:B10, "Instagram")</code></td><td>₹1,91,000</td></tr>
              <tr><td>Instagram revenue in September</td><td><code>=SUMIFS(D2:D10, B2:B10, "Instagram", A2:A10, "Sep")</code></td><td>₹90,000</td></tr>
              <tr><td>Total bookings from Email</td><td><code>=SUMIFS(C2:C10, B2:B10, "Email")</code></td><td>7</td></tr>
              <tr><td>Months where Instagram had 4 or more bookings</td><td><code>=COUNTIFS(B2:B10, "Instagram", C2:C10, "&gt;=4")</code></td><td>2</td></tr>
              <tr><td>Average monthly Google Ads revenue</td><td><code>=AVERAGEIFS(D2:D10, B2:B10, "Google Ads")</code></td><td>₹72,333 (rounded)</td></tr>
            </tbody>
          </table>
          <ul class="lc-list">
            <li>In SUMIFS and AVERAGEIFS, the range you add or average comes <strong>first</strong>. In the older SUMIF, it comes last. AI tools often mix these up.</li>
            <li>COUNTIFS counts <em>rows</em>, not bookings. To total the bookings, use SUMIFS on column C.</li>
            <li>To pull one value from another table, use XLOOKUP. For example, <code>=XLOOKUP("Instagram", F2:F4, G2:G4)</code> finds Instagram's target in a small target table in columns F and G.</li>
          </ul>
          <p>Revenue per booking shows which channel brings bigger trips. Google Ads: 2,17,000 ÷ 12 = about ₹18,083. Email: 1,23,000 ÷ 7 = about ₹17,571. Instagram: 1,91,000 ÷ 13 = about ₹14,692. Instagram brings the most bookings, but smaller ones.</p>
        </div>
        <div class="lc-card">
          <h3>Build the pivot table</h3>
          <ol class="lc-list">
            <li>Select the data, including the header row.</li>
            <li>Choose Insert &gt; Pivot table in Google Sheets, or Insert &gt; PivotTable in Excel.</li>
            <li>Add <strong>Channel</strong> to Rows and <strong>Month</strong> to Columns.</li>
            <li>Add <strong>Revenue</strong> to Values. Make sure it says SUM, not COUNT or AVERAGE.</li>
            <li>Check the grand total. It must equal <code>=SUM(D2:D10)</code>, which is ₹5,31,000.</li>
          </ol>
          <table class="lc-table">
            <thead><tr><th>Channel</th><th>Jul</th><th>Aug</th><th>Sep</th><th>Total</th></tr></thead>
            <tbody>
              <tr><td>Google Ads</td><td>72,000</td><td>85,000</td><td>60,000</td><td>2,17,000</td></tr>
              <tr><td>Instagram</td><td>45,000</td><td>56,000</td><td>90,000</td><td>1,91,000</td></tr>
              <tr><td>Email</td><td>38,000</td><td>51,000</td><td>34,000</td><td>1,23,000</td></tr>
              <tr><td><strong>Total</strong></td><td>1,55,000</td><td>1,92,000</td><td>1,84,000</td><td><strong>5,31,000</strong></td></tr>
            </tbody>
          </table>
          <p><strong>Watch out:</strong> month names stored as text may sort A to Z. Then the columns show Aug, Jul, Sep. Use real dates or labels such as 2026-07, 2026-08 and 2026-09 to keep the right order.</p>
          <p>AI can help here too. Paste the pivot result and ask: "What are the 3 biggest changes? Show your maths." Then check each number against the pivot. With only 3 months of data, treat any trend as a question, not a proven fact.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: checking an AI formula</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Your prompt">"Write a formula for Instagram revenue in September. A = Month, B = Channel, C = Bookings, D = Revenue. Data is in rows 2 to 10."</li>
              <li data-kind="answer" data-label="AI reply">"Use =SUMIFS(C2:C10, B2:B10, "Instagram", A2:A10, "Sep"). It adds revenue for Instagram in September."</li>
              <li data-kind="tool" data-label="Spreadsheet">You paste the formula into an empty cell.</li>
              <li data-kind="result" data-label="Result">The cell shows 6.</li>
              <li data-kind="warn" data-label="Mistake">6 cannot be revenue. The formula adds column C (bookings), not column D (revenue). The AI's explanation sounded right, but the formula was wrong.</li>
              <li data-kind="check" data-label="You check">You filter Channel = Instagram and Month = Sep. The one matching row shows ₹90,000. You change C2:C10 to D2:D10.</li>
              <li data-kind="result" data-label="Result">The cell now shows 90,000. It matches the filter, so you keep it.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask the AI to write and explain formulas for your own sheet. Describe your columns clearly. The sample data in the prompt is made up.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a patient spreadsheet teacher. I use [Google Sheets].
        My sheet has headers in row 1 and data in rows 2 to 10:
        A = Month, B = Channel, C = Bookings, D = Revenue in ₹.
        Sample rows: [Jul | Google Ads | 4 | 72000], [Jul | Instagram | 3 | 45000], [Sep | Instagram | 6 | 90000]

        Write formulas for these questions:
        1. [Total revenue from Instagram]
        2. [Revenue from Google Ads in August]
        3. [How many rows have 4 or more bookings]
        4. [Average revenue per booking for Email]

        For each one, give:
        - the formula
        - a one-line explanation in simple English
        - which column is added, counted or averaged
        - a quick way to check it by hand, such as a filter

        Then explain how to build a pivot table with Channel in rows, Month in columns and SUM of Revenue in values.
        Do not guess answers for my data. Only give formulas and steps.</pre>
            <ul class="ai-try-checks">
              <li>In SUMIFS and AVERAGEIFS, the first range is the one being added or averaged.</li>
              <li>Each formula uses the right columns and rows 2 to 10.</li>
              <li>Revenue per booking divides revenue by bookings, not by rows.</li>
              <li>You test every formula with a filter before you use it.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Formulas answer one exact question. Pivot tables give the big picture. AI can write both in seconds, but it often picks the wrong column. Check every result with a filter or a quick sum before you report it.
        </div>
      HTML
      starter_code: nil
    },
    9 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mkt">Digital Marketing</div>
          <h1 class="lc-title">Customer Segments</h1>
        </div>
        <p class="lc-lead">Not all customers are the same. Some buy every week. Some bought once and never came back. If you send everyone the same message, you waste money and annoy people. A <strong>segment</strong> is a group of customers who behave in a similar way. In this lesson, you will use a simple method called <strong>RFM</strong> to make segments from a sales table. Then you will choose one action for each segment.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 260" role="img" aria-label="Four steps from left to right: sales data, R F M values, scores, and segment plus action. Customer C03 bought 9 times but last bought 82 days ago, scores R1 F3 M3, and is At risk, so gets a win-back offer. Customer C02 bought once 2 days ago, scores R3 F1 M1, and is New, so gets a welcome message.">
            <defs><marker id="ma9a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <g font-weight="700" fill="#c4b5fd">
                <text x="100" y="28">1. Sales data</text>
                <text x="290" y="28">2. R · F · M</text>
                <text x="480" y="28">3. Scores</text>
                <text x="670" y="28">4. Segment + action</text>
              </g>
              <rect x="20" y="45" width="160" height="70" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
              <rect x="210" y="45" width="160" height="70" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
              <rect x="400" y="45" width="160" height="70" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
              <rect x="590" y="45" width="160" height="70" rx="8" fill="#27274e" stroke="#f59e0b"/>
              <text x="100" y="74">C03: 9 orders</text>
              <text x="100" y="96" font-size="11.5" fill="#9b99b8">last: 10 Jul · ₹7,200</text>
              <text x="290" y="74">82 days ago</text>
              <text x="290" y="96" font-size="11.5" fill="#9b99b8">9 orders · ₹7,200</text>
              <text x="480" y="74" font-weight="700">R1 F3 M3</text>
              <text x="480" y="96" font-size="11.5" fill="#9b99b8">old · often · high</text>
              <text x="670" y="74" font-weight="700" fill="#fcd34d">At risk</text>
              <text x="670" y="96" font-size="11.5" fill="#9b99b8">send a win-back offer</text>
              <rect x="20" y="145" width="160" height="70" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
              <rect x="210" y="145" width="160" height="70" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
              <rect x="400" y="145" width="160" height="70" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
              <rect x="590" y="145" width="160" height="70" rx="8" fill="#27274e" stroke="#10b981"/>
              <text x="100" y="174">C02: 1 order</text>
              <text x="100" y="196" font-size="11.5" fill="#9b99b8">last: 28 Sep · ₹450</text>
              <text x="290" y="174">2 days ago</text>
              <text x="290" y="196" font-size="11.5" fill="#9b99b8">1 order · ₹450</text>
              <text x="480" y="174" font-weight="700">R3 F1 M1</text>
              <text x="480" y="196" font-size="11.5" fill="#9b99b8">recent · once · low</text>
              <text x="670" y="174" font-weight="700" fill="#6ee7b7">New</text>
              <text x="670" y="196" font-size="11.5" fill="#9b99b8">send a welcome message</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ma9a)">
                <line x1="182" y1="80" x2="206" y2="80"/><line x1="372" y1="80" x2="396" y2="80"/><line x1="562" y1="80" x2="586" y2="80"/>
                <line x1="182" y1="180" x2="206" y2="180"/><line x1="372" y1="180" x2="396" y2="180"/><line x1="562" y1="180" x2="586" y2="180"/>
              </g>
              <text x="380" y="246" font-size="12" fill="#9b99b8">Analysis date: 30 Sep 2026. Customers are shown by ID, not by name.</text>
            </g>
          </svg>
          <figcaption>Two made-up Sweet Crumbs customers go through the same four steps and end up in different segments.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>What RFM means</h3>
          <p>RFM looks at three things for each customer:</p>
          <ul class="lc-list">
            <li><strong>R, Recency:</strong> how many days since their last order. Fewer days is better.</li>
            <li><strong>F, Frequency:</strong> how many orders they made. More is better.</li>
            <li><strong>M, Monetary:</strong> how much money they spent in total. More is better.</li>
          </ul>
          <p>You give each part a score, for example from 1 (low) to 3 (high). Sweet Crumbs, a made-up home bakery in Maharashtra, uses these simple rules. You should choose rules that fit your own business. A bakery sees customers more often than a travel agency.</p>
          <table class="lc-table">
            <thead><tr><th>Score</th><th>R: days since last order</th><th>F: orders</th><th>M: total spend</th></tr></thead>
            <tbody>
              <tr><td>3</td><td>14 or fewer</td><td>8 or more</td><td>₹6,000 or more</td></tr>
              <tr><td>2</td><td>15 to 60</td><td>3 to 7</td><td>₹1,500 to ₹5,999</td></tr>
              <tr><td>1</td><td>more than 60</td><td>1 or 2</td><td>below ₹1,500</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Worked example: from a sales table to segments</h3>
          <p>The analysis date is 30 September 2026. The table uses customer IDs, not names. All data is made up.</p>
          <table class="lc-table">
            <thead><tr><th>Customer</th><th>Last order</th><th>Days (R)</th><th>Orders (F)</th><th>Spend (M)</th><th>Scores</th><th>Segment</th></tr></thead>
            <tbody>
              <tr><td>C01</td><td>25 Sep</td><td>5</td><td>12</td><td>₹9,600</td><td>R3 F3 M3</td><td>Champion</td></tr>
              <tr><td>C02</td><td>28 Sep</td><td>2</td><td>1</td><td>₹450</td><td>R3 F1 M1</td><td>New</td></tr>
              <tr><td>C03</td><td>10 Jul</td><td>82</td><td>9</td><td>₹7,200</td><td>R1 F3 M3</td><td>At risk</td></tr>
              <tr><td>C04</td><td>15 Sep</td><td>15</td><td>5</td><td>₹3,000</td><td>R2 F2 M2</td><td>Regular</td></tr>
              <tr><td>C05</td><td>2 Apr</td><td>181</td><td>1</td><td>₹300</td><td>R1 F1 M1</td><td>Lost</td></tr>
              <tr><td>C06</td><td>20 Sep</td><td>10</td><td>8</td><td>₹11,500</td><td>R3 F3 M3</td><td>Champion</td></tr>
            </tbody>
          </table>
          <p>You can calculate R, F and M from an order list with formulas. Say the sheet <code>Orders</code> has Customer ID in column A, order date in B and amount in C. On your summary sheet, the Customer ID is in A2:</p>
          <pre><code>Days since last order:  =DATE(2026,9,30)-MAXIFS(Orders!B:B, Orders!A:A, A2)
        Number of orders:       =COUNTIFS(Orders!A:A, A2)
        Total spend:            =SUMIFS(Orders!C:C, Orders!A:A, A2)
        R score (days in B2):   =IF(B2&lt;=14, 3, IF(B2&lt;=60, 2, 1))</code></pre>
          <p>If the days cell shows a date, change its format to Number. MAXIFS works in Google Sheets and in Excel 2019 or later.</p>
        </div>
        <div class="lc-card">
          <h3>One action per segment</h3>
          <table class="lc-table">
            <thead><tr><th>Segment</th><th>Who they are</th><th>Example action</th></tr></thead>
            <tbody>
              <tr><td>Champion</td><td>Recent, frequent, high spend</td><td>Thank them. Give early access to the Diwali box. Ask for a review. A big discount is not needed.</td></tr>
              <tr><td>New</td><td>Recent, only one order</td><td>Send a welcome message and an idea for a second order.</td></tr>
              <tr><td>Regular</td><td>Middle scores</td><td>Suggest a related product. Offer a loyalty card.</td></tr>
              <tr><td>At risk</td><td>Used to buy often, but not lately</td><td>Send a "we miss you" message with a small offer. Ask what changed.</td></tr>
              <tr><td>Lost</td><td>One old, small order</td><td>Send an occasional reminder only. Do not spend much here.</td></tr>
            </tbody>
          </table>
          <p><strong>How AI helps:</strong> AI can suggest scoring rules, write the formulas and draft messages for each segment. <strong>What you check:</strong> test the formulas on 2 or 3 customers by hand. Make sure the rules fit your business. Also follow your consent rules before you send any marketing message. Never paste customer names, phone numbers or emails into a public AI tool. Use IDs instead.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: which segment?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Use the Sweet Crumbs scoring rules. Put each customer in a segment. The analysis date is 30 Sep 2026.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="champ" data-label="Champion"></div>
              <div data-sorter-target="bucket" data-bucket="new" data-label="New"></div>
              <div data-sorter-target="bucket" data-bucket="risk" data-label="At risk"></div>
              <div data-sorter-target="bucket" data-bucket="lost" data-label="Lost"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="champ" data-why="3 days ago (R3), 10 orders (F3), ₹8,000 (M3). Recent, frequent and high spend.">C11: last order 27 Sep, 10 orders, ₹8,000</li>
              <li data-bucket="new" data-why="4 days ago (R3), but only 1 order (F1). A new customer to welcome.">C12: last order 26 Sep, 1 order, ₹600</li>
              <li data-bucket="risk" data-why="Last order 91 days ago (R1), but 9 orders (F3). A good customer who has gone quiet.">C13: last order 1 Jul, 9 orders, ₹6,500</li>
              <li data-bucket="lost" data-why="Last order 211 days ago (R1), 1 order (F1), ₹250 (M1). Low value and long gone.">C14: last order 3 Mar, 1 order, ₹250</li>
              <li data-bucket="champ" data-why="10 days ago (R3), 8 orders (F3), ₹7,000 (M3).">C15: last order 20 Sep, 8 orders, ₹7,000</li>
              <li data-bucket="risk" data-why="Last order 81 days ago (R1), but 8 orders (F3) and ₹6,400 (M3). Worth a win-back message.">C16: last order 11 Jul, 8 orders, ₹6,400</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Give the AI a small, made-up customer table and ask for RFM segments and actions. For real data, use customer IDs only.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a marketing analyst for [Sweet Crumbs, a home bakery in Maharashtra]. Analysis date: [30 Sep 2026].
        Here is a customer summary. It uses IDs only, with made-up data:
        [C01 | last order 25 Sep 2026 | 12 orders | ₹9,600
        C02 | last order 28 Sep 2026 | 1 order | ₹450
        C03 | last order 10 Jul 2026 | 9 orders | ₹7,200
        C04 | last order 15 Sep 2026 | 5 orders | ₹3,000
        C05 | last order 2 Apr 2026 | 1 order | ₹300]

        Tasks:
        1. Suggest simple RFM scoring rules from 1 to 3 that fit [a bakery]. Explain each in one line.
        2. Make a table: ID, days since last order, orders, spend, R, F, M scores, segment.
        3. Use these segments: Champion, New, Regular, At risk, Lost.
        4. For each segment, suggest one marketing action and one short WhatsApp message idea.
        5. Give the spreadsheet formulas to calculate days since last order and the R score.
        Show how you counted the days. Do not add customers that are not in my table.</pre>
            <ul class="ai-try-checks">
              <li>Recalculate the days for 2 customers yourself.</li>
              <li>Each score follows the rules the AI wrote.</li>
              <li>The actions suit each segment. Do not give champions big discounts they do not need.</li>
              <li>Messages go only to customers who agreed to receive them.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> RFM turns a sales list into groups you can act on. Choose rules that fit your business, check the scores by hand, and give each group a different message. Use customer IDs with AI, never private details.
        </div>
      HTML
      starter_code: nil
    },
    10 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mkt">Digital Marketing</div>
          <h1 class="lc-title">Attribution Basics</h1>
        </div>
        <p class="lc-lead">A customer sees your ad, then a social post, then an email, and then buys. Which channel should get the credit for the sale? <strong>Attribution</strong> is the set of rules that decides this. Different rules give different answers. Different tools also use different rules. In this lesson, you will learn the main models, see why tools disagree, and use AI to explain the gaps.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 320" role="img" aria-label="One LedgerLite customer path: Google ad on day 1, LinkedIn post on day 4, email on day 9, a direct visit on day 12, then a 12,000 rupee sale. Four bars show how credit is shared. First click gives all 12,000 to Google Ads. Last click gives all 12,000 to Email, because the direct visit gets no credit. Linear gives 4,000 to each of the three channels. A made-up data-driven split gives Google 6,000, LinkedIn 2,400 and Email 3,600.">
            <defs><marker id="ma10a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="380" y="22" font-size="12" fill="#9b99b8">One LedgerLite customer's path to a ₹12,000 sale</text>
              <rect x="20" y="34" width="165" height="50" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
              <rect x="205" y="34" width="165" height="50" rx="8" fill="#1f1f44" stroke="#ec4899"/>
              <rect x="390" y="34" width="165" height="50" rx="8" fill="#1f1f44" stroke="#10b981"/>
              <rect x="575" y="34" width="165" height="50" rx="8" fill="#1f1f44" stroke="#9b99b8"/>
              <text x="102" y="55">Day 1: Google ad</text><text x="102" y="74" font-size="11.5" fill="#9b99b8">search ad click</text>
              <text x="287" y="55">Day 4: LinkedIn</text><text x="287" y="74" font-size="11.5" fill="#9b99b8">organic post</text>
              <text x="472" y="55">Day 9: Email</text><text x="472" y="74" font-size="11.5" fill="#9b99b8">newsletter click</text>
              <text x="657" y="55">Day 12: Direct</text><text x="657" y="74" font-size="11.5" fill="#9b99b8">then buys the plan</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ma10a)">
                <line x1="187" y1="59" x2="202" y2="59"/><line x1="372" y1="59" x2="387" y2="59"/><line x1="557" y1="59" x2="572" y2="59"/>
              </g>
              <g font-size="12.5" text-anchor="start">
                <text x="20" y="129">First click</text>
                <text x="20" y="169">Last click</text>
                <text x="20" y="209">Linear (idea)</text>
                <text x="20" y="249">Data-driven*</text>
              </g>
              <g font-size="12">
                <rect x="150" y="110" width="590" height="28" rx="4" fill="#3b82f6" fill-opacity="0.35" stroke="#3b82f6"/>
                <text x="445" y="129">Google Ads ₹12,000</text>
                <rect x="150" y="150" width="590" height="28" rx="4" fill="#10b981" fill-opacity="0.35" stroke="#10b981"/>
                <text x="445" y="169">Email ₹12,000 (the direct visit gets no credit)</text>
                <rect x="150" y="190" width="197" height="28" rx="4" fill="#3b82f6" fill-opacity="0.35" stroke="#3b82f6"/>
                <rect x="347" y="190" width="197" height="28" rx="4" fill="#ec4899" fill-opacity="0.35" stroke="#ec4899"/>
                <rect x="544" y="190" width="196" height="28" rx="4" fill="#10b981" fill-opacity="0.35" stroke="#10b981"/>
                <text x="248" y="209">Google ₹4,000</text><text x="445" y="209">LinkedIn ₹4,000</text><text x="642" y="209">Email ₹4,000</text>
                <rect x="150" y="230" width="295" height="28" rx="4" fill="#3b82f6" fill-opacity="0.35" stroke="#3b82f6"/>
                <rect x="445" y="230" width="118" height="28" rx="4" fill="#ec4899" fill-opacity="0.35" stroke="#ec4899"/>
                <rect x="563" y="230" width="177" height="28" rx="4" fill="#10b981" fill-opacity="0.35" stroke="#10b981"/>
                <text x="297" y="249">Google ₹6,000</text><text x="504" y="249">LinkedIn ₹2,400</text><text x="651" y="249">Email ₹3,600</text>
              </g>
              <text x="380" y="286" font-size="11.5" fill="#9b99b8">* Made-up split. A real data-driven model learns from many journeys. Every model is an estimate.</text>
              <text x="380" y="306" font-size="11.5" fill="#9b99b8">GA4 today offers data-driven and last-click models. First click and linear are ideas to compare.</text>
            </g>
          </svg>
          <figcaption>The same sale, four different answers. Nothing about the customer changed, only the rules.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The main attribution models</h3>
          <p>LedgerLite is a made-up accounting software startup in Karnataka. One customer bought its ₹12,000 yearly plan after the four steps in the diagram.</p>
          <table class="lc-table">
            <thead><tr><th>Model</th><th>Rule</th><th>Who gets the ₹12,000</th></tr></thead>
            <tbody>
              <tr><td><strong>First click</strong></td><td>All credit to the first channel</td><td>Google Ads</td></tr>
              <tr><td><strong>Last click</strong></td><td>All credit to the last channel before the sale</td><td>Email (in GA4, the direct visit is skipped)</td></tr>
              <tr><td><strong>Linear</strong></td><td>Equal credit to every channel</td><td>₹4,000 each to Google Ads, LinkedIn and Email (the direct visit is left out, as GA4 does)</td></tr>
              <tr><td><strong>Data-driven</strong></td><td>A computer model shares credit based on how much each step seems to change the chance of a sale</td><td>A split that depends on your data. The diagram shows a made-up example.</td></tr>
            </tbody>
          </table>
          <p>First click favours channels that bring new people. Last click favours channels that close the sale. Neither one is "true".</p>
          <p><strong>In GA4:</strong> the help pages list data-driven, "paid and organic last click" and "Google paid channels last click" as the models you can use. First click, linear and some others were removed in 2023. GA4 also gives no credit to direct visits, unless the whole path was direct. Data-driven is usually the default. You can check or change the model in Admin, under Attribution settings. The time window that counts (the "lookback window") is also set there. By default, it is 30 days for first visits and 90 days for other key events. These settings change, so check GA4's current help pages.</p>
          <p>GA4 still shows the first channel for each new user in the user acquisition report. So you can compare "how people first found us" with "what brought the sale".</p>
        </div>
        <div class="lc-card">
          <h3>Why numbers differ between tools</h3>
          <p>LedgerLite looks at September. Its billing system shows 40 new paying customers. The other tools say:</p>
          <table class="lc-table">
            <thead><tr><th>Tool</th><th>Sales it reports</th></tr></thead>
            <tbody>
              <tr><td>Google Ads</td><td>26 conversions</td></tr>
              <tr><td>Meta Ads Manager</td><td>21 conversions</td></tr>
              <tr><td>GA4</td><td>18 from paid search, 9 from paid social, 13 from other channels (40 in total)</td></tr>
            </tbody>
          </table>
          <p>Google Ads and Meta together claim 26 + 21 = 47 sales. But there were only 40. GA4 gives these two channels only 18 + 9 = 27. Why?</p>
          <ul class="lc-list">
            <li><strong>Each ad tool sees only its own ads.</strong> If a customer clicked a Google ad and a Meta ad, both tools may count the same sale.</li>
            <li><strong>Different models and time windows.</strong> Each tool has its own attribution settings and counts sales within its own number of days.</li>
            <li><strong>Views and clicks.</strong> Some ad tools can also count people who only <em>saw</em> an ad and bought later. GA4 mostly works from visits to your site.</li>
            <li><strong>Consent, cookies and devices.</strong> Some people reject cookies or switch from phone to laptop. Tools cannot always link their steps.</li>
            <li><strong>Dates and time zones.</strong> One tool may count the sale on the day of the click, another on the day of the sale.</li>
          </ul>
          <p>So use your billing system or shop records for the true total. Use each tool to <em>compare</em> campaigns inside that tool. Never add up the numbers from different ad tools.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: explaining a mismatch with AI</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="tool" data-label="Reports">You open Google Ads, Meta Ads Manager, GA4 and your billing system for September.</li>
              <li data-kind="result" data-label="Numbers">Google Ads: 26. Meta: 21. GA4 paid search + paid social: 27. Billing: 40 new customers.</li>
              <li data-kind="user" data-label="Your prompt">"Explain why these numbers differ. List possible reasons and how I can check each one. Do not guess my settings."</li>
              <li data-kind="answer" data-label="AI reply">The AI lists overlap between ad tools, different attribution models and windows, view-based counting, and consent gaps. It adds: "GA4 uses first-click attribution by default."</li>
              <li data-kind="warn" data-label="Mistake">That last claim is wrong. GA4 no longer offers a first-click model. Data-driven is usually the default.</li>
              <li data-kind="check" data-label="You check">You open the Attribution settings in GA4 Admin and note the real model and lookback window. You also note the attribution setting in each ad tool.</li>
              <li data-kind="thought" data-label="Your plan">You report 40 as the true total. You use each ad tool only to compare its own campaigns.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Give the AI your numbers from different tools and ask it to explain the gaps. The sample numbers in the prompt are made up.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a marketing analytics coach. Explain things in simple English.
        Business: [LedgerLite, an accounting software startup in Karnataka]
        Period: [September 2026]
        Numbers:
        - Billing system: [40] new paying customers
        - Google Ads: [26] conversions
        - Meta Ads Manager: [21] conversions
        - GA4: [18] from paid search, [9] from paid social, [13] from other channels

        Tasks:
        1. Explain why the ad tools together report more sales than the billing system.
        2. List 5 possible reasons the tools disagree. For each, say how I can check it in the tool settings.
        3. Explain first click, last click and data-driven attribution with one example customer journey.
        4. Suggest which number I should use as the true total, and how to use each tool's numbers.
        Rules: do not guess my tool settings. Tell me to check the current help pages for any setting names. Show any maths you do.</pre>
            <ul class="ai-try-checks">
              <li>The maths is right, for example 26 + 21 = 47, which is more than 40.</li>
              <li>It does not say GA4 uses first click or linear today.</li>
              <li>It uses your billing records as the true total.</li>
              <li>It treats every attribution model as an estimate, not a fact.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Attribution models are estimates. Each one shares credit by different rules, and each tool uses its own settings. Take the true total from your own sales records. Use attribution to compare channels, not to count sales.
        </div>
      HTML
      starter_code: nil
    },
    11 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mkt">Digital Marketing</div>
          <h1 class="lc-title">Finding Insights with AI</h1>
        </div>
        <p class="lc-lead">An <strong>insight</strong> is a finding from your data that tells you what to do next. A report says "orders fell 13%". An insight says "orders fell because paid search visitors stopped buying, so check the landing page". In this lesson, you will learn to ask clear questions of your data. You will compare two periods fairly and spot unusual changes. You will also use AI to speed this up, and check every number it gives you.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 270" role="img" aria-label="Five steps from left to right: ask a question, compare periods, spot big changes, list causes, check and act. Below, a table for Rangrez Crafts shows orders by channel for August and September. Instagram is down 30% and paid search is down 40%.">
            <defs><marker id="ma11a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="15" y="15" width="130" height="64" rx="10" fill="#1f1f44" stroke="#3b82f6"/><text x="80" y="42" font-weight="700">Ask a question</text><text x="80" y="62" font-size="11" fill="#9b99b8">Why did orders fall?</text>
              <rect x="165" y="15" width="130" height="64" rx="10" fill="#1f1f44" stroke="#8b5cf6"/><text x="230" y="42" font-weight="700">Compare periods</text><text x="230" y="62" font-size="11" fill="#9b99b8">Sep vs Aug, per day</text>
              <rect x="315" y="15" width="130" height="64" rx="10" fill="#1f1f44" stroke="#f59e0b"/><text x="380" y="42" font-weight="700">Spot big changes</text><text x="380" y="62" font-size="11" fill="#9b99b8">flag moves over 20%</text>
              <rect x="465" y="15" width="130" height="64" rx="10" fill="#1f1f44" stroke="#ec4899"/><text x="530" y="42" font-weight="700">List causes</text><text x="530" y="62" font-size="11" fill="#9b99b8">ideas, not facts</text>
              <rect x="615" y="15" width="130" height="64" rx="10" fill="#1f1f44" stroke="#10b981"/><text x="680" y="42" font-weight="700">Check and act</text><text x="680" y="62" font-size="11" fill="#9b99b8">in the real tools</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ma11a)"><line x1="146" y1="47" x2="162" y2="47"/><line x1="296" y1="47" x2="312" y2="47"/><line x1="446" y1="47" x2="462" y2="47"/><line x1="596" y1="47" x2="612" y2="47"/></g>
              <rect x="15" y="100" width="730" height="160" rx="12" fill="#1f1f44" stroke="#4b4a78"/>
              <text x="380" y="124" font-weight="700" fill="#c4b5fd">Rangrez Crafts: orders by channel</text>
              <g text-anchor="start" font-size="12" fill="#9b99b8"><text x="45" y="150">Channel</text><text x="250" y="150">Aug</text><text x="340" y="150">Sep</text><text x="430" y="150">Change</text><text x="540" y="150">Flag</text></g>
              <g text-anchor="start">
                <text x="45" y="176">Organic search</text><text x="250" y="176">80</text><text x="340" y="176">84</text><text x="430" y="176" fill="#6ee7b7">+5%</text>
                <text x="45" y="200">Instagram</text><text x="250" y="200">60</text><text x="340" y="200">42</text><text x="430" y="200" fill="#fca5a5">-30%</text><text x="540" y="200" fill="#fcd34d">traffic fell</text>
                <text x="45" y="224">Paid search</text><text x="250" y="224">50</text><text x="340" y="224">30</text><text x="430" y="224" fill="#fca5a5">-40%</text><text x="540" y="224" fill="#fcd34d">buying fell</text>
                <text x="45" y="248">Email</text><text x="250" y="248">40</text><text x="340" y="248">44</text><text x="430" y="248" fill="#6ee7b7">+10%</text>
              </g>
            </g>
          </svg>
          <figcaption>Start with one question. Compare fairly, flag the big changes, then check the causes in your real tools.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Ask a clear question first</h3>
          <p>"Look at my data and find insights" is a weak request. The AI will list many small facts. Most of them will not help you decide anything. A good question has a <strong>metric</strong> (the number you care about), a <strong>time period</strong> and a <strong>decision</strong> it will help with.</p>
          <pre><code>Weak:   Here is my data. Any insights?

        Better: Orders fell in September compared with August.
                Which channel caused most of the drop?
                Was it fewer visitors, or fewer visitors buying?
                I need to decide where to spend time next week.</code></pre>
          <p>Some useful question types for marketing data:</p>
          <ul class="lc-list">
            <li><strong>What changed?</strong> Which metric moved the most between two periods?</li>
            <li><strong>Where did it change?</strong> Which channel, city, product or device caused the change?</li>
            <li><strong>Volume or rate?</strong> Did fewer people come, or did fewer of them buy? The <strong>conversion rate</strong> (the share of visits that end in an order) answers this.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Compare periods fairly</h3>
          <p>Comparisons can mislead you. Check these points before you trust a change.</p>
          <table class="lc-table">
            <thead><tr><th>Trap</th><th>Example</th><th>Fair fix</th></tr></thead>
            <tbody>
              <tr><td>Different number of days</td><td>August has 31 days. September has 30.</td><td>Compare per day. 230 orders in 31 days is 7.4 a day. 200 in 30 days is 6.7 a day.</td></tr>
              <tr><td>Seasons and festivals</td><td>Diwali falls on a different date each year (October or November).</td><td>Also compare with the same period last year (year-over-year).</td></tr>
              <tr><td>Small numbers</td><td>Orders from a new city went from 2 to 4.</td><td>That is "+100%", but it is only 2 orders. Ignore tiny counts.</td></tr>
              <tr><td>Tracking changes</td><td>A tag broke on 10 September.</td><td>Check for sudden jumps to zero. Ask your team what changed.</td></tr>
            </tbody>
          </table>
          <p>The per-day view matters here. The total drop looks like 13%. Per day, it is about 10% (6.67 ÷ 7.42 = 0.90). The fall is real, but smaller than the total suggests.</p>
          <p>In a spreadsheet, percentage change is <code>=(Sep-Aug)/Aug</code>. For example, <code>=(C2-B2)/B2</code>, formatted as a percentage.</p>
        </div>
        <div class="lc-card">
          <h3>Worked example: Rangrez Crafts</h3>
          <p>Rangrez Crafts (a made-up handicrafts store in Rajasthan) saw orders fall from 230 in August to 200 in September. Here is its channel data. All numbers are sample numbers.</p>
          <table class="lc-table">
            <thead><tr><th>Channel</th><th>Sessions Aug</th><th>Sessions Sep</th><th>Orders Aug</th><th>Orders Sep</th><th>Conv. rate Aug</th><th>Conv. rate Sep</th></tr></thead>
            <tbody>
              <tr><td>Organic search</td><td>4,000</td><td>4,200</td><td>80</td><td>84</td><td>2.0%</td><td>2.0%</td></tr>
              <tr><td>Instagram</td><td>3,000</td><td>2,100</td><td>60</td><td>42</td><td>2.0%</td><td>2.0%</td></tr>
              <tr><td>Paid search</td><td>2,000</td><td>2,000</td><td>50</td><td>30</td><td>2.5%</td><td>1.5%</td></tr>
              <tr><td>Email</td><td>1,000</td><td>1,100</td><td>40</td><td>44</td><td>4.0%</td><td>4.0%</td></tr>
              <tr><td><strong>Total</strong></td><td>10,000</td><td>9,400</td><td>230</td><td>200</td><td>2.3%</td><td>2.1%</td></tr>
            </tbody>
          </table>
          <p>The drop is 30 orders. Instagram lost 18 and paid search lost 20. Organic search and email each gained 4. So -18 - 20 + 4 + 4 = -30.</p>
          <ul class="lc-list">
            <li><strong>Instagram:</strong> sessions fell 30%, but the conversion rate stayed at 2.0%. This is a <em>volume</em> problem. Fewer people came. Did the store post less, or pause a boost?</li>
            <li><strong>Paid search:</strong> sessions stayed the same, but the conversion rate fell from 2.5% to 1.5%. This is a <em>rate</em> problem. The same people came, but fewer bought. Check the landing page, prices and stock.</li>
          </ul>
          <p>AI can write these sentences quickly. But the causes are only ideas until you check them in Google Ads, Google Analytics or your store admin.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: an insight session, step by step</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Prompt">"Here are sessions and orders by channel for August and September. Which channel caused most of the drop? Was it volume or conversion rate? Show your maths."</li>
              <li data-kind="answer" data-label="AI answer">The AI gives a table of changes. It says paid search lost 20 orders because its conversion rate fell from 2.5% to 1.5%. It says Instagram lost 18 orders because sessions fell 30%.</li>
              <li data-kind="check" data-label="Check the maths">You add a column in your sheet: <code>=E4/C4</code> for the September paid search rate. It shows 1.5%. The AI's numbers match.</li>
              <li data-kind="warn" data-label="Catch a guess">The AI also says "Instagram changed its algorithm in September". You have no proof of this. You remove it from the report.</li>
              <li data-kind="tool" data-label="Google Ads">You open the paid search campaign and look at the landing page used by the ads.</li>
              <li data-kind="result" data-label="What you find">The best-selling block-print bedsheet went out of stock on 9 September. The ads still pointed to its page.</li>
              <li data-kind="answer" data-label="The insight">"Paid search orders fell 40% because the main ad page showed an out-of-stock product. Point the ads to an in-stock page, then check results next week."</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Paste your own two-period numbers, or run the prompt as it is with the sample data. The AI will compare the periods, flag big changes and suggest causes to check.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a marketing analyst for a small business. Explain things in simple English.
        Business: [Rangrez Crafts, an online handicrafts store in Rajasthan]
        Question: [Orders fell this month. Which channel caused most of the drop?]

        Data (last month vs this month):
        [Channel | Sessions last | Sessions this | Orders last | Orders this
        Organic search | 4000 | 4200 | 80 | 84
        Instagram | 3000 | 2100 | 60 | 42
        Paid search | 2000 | 2000 | 50 | 30
        Email | 1000 | 1100 | 40 | 44]
        Days in each period: [31 and 30]

        Tasks:
        1. Make a table: channel, % change in sessions, % change in orders, conversion rate in each period.
        2. Show the formula you used for each kind of number.
        3. Compare orders per day, not only totals.
        4. Flag changes bigger than 20% that involve at least 10 orders.
        5. For each flag, say if it is a volume problem or a rate problem.
        6. List 2 possible causes for each flag, written as questions I must check. Do not state causes as facts.
        Keep the answer under 300 words.</pre>
            <ul class="ai-try-checks">
              <li>Recalculate two of the percentages in a spreadsheet. Do they match?</li>
              <li>The channel changes add up to the total change in orders.</li>
              <li>Causes are written as questions to check, not as facts.</li>
              <li>Small counts (under 10 orders) are not flagged as big news.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A good insight answers one clear question and leads to one action. Compare periods fairly, split every change into volume and rate, and treat AI's causes as ideas to check, not facts.
        </div>
      HTML
      starter_code: nil
    },
    12 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mkt">Digital Marketing</div>
          <h1 class="lc-title">Dashboards and Reports</h1>
        </div>
        <p class="lc-lead">A <strong>dashboard</strong> is one screen that shows your most important numbers. A <strong>report</strong> explains those numbers in words: what happened, why, and what to do next. In this lesson, you will choose the right chart for each number. You will plan a one-page dashboard. You will also use AI to write a short weekly report that your manager or client can read in two minutes.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="A one-page dashboard mock-up for LedgerLite. The top row has four number tiles: visitors, free trials, new paying customers and cost per customer. Below are a line chart of weekly trials and a bar chart of trials by channel. At the bottom is a box for three things to know this week.">
            <defs><marker id="ma12a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="10" y="8" width="740" height="284" rx="12" fill="#1f1f44" stroke="#4b4a78"/>
              <text x="380" y="30" font-weight="700" fill="#c4b5fd">LedgerLite: weekly dashboard (sample)</text>
              <rect x="25" y="42" width="170" height="62" rx="8" fill="#27274e" stroke="#3b82f6"/><text x="110" y="62" font-size="11" fill="#9b99b8">Visitors</text><text x="110" y="82" font-weight="700">12,400</text><text x="110" y="98" font-size="11" fill="#6ee7b7">+5.1%</text>
              <rect x="205" y="42" width="170" height="62" rx="8" fill="#27274e" stroke="#8b5cf6"/><text x="290" y="62" font-size="11" fill="#9b99b8">Free trials</text><text x="290" y="82" font-weight="700">310</text><text x="290" y="98" font-size="11" fill="#6ee7b7">+10.7%</text>
              <rect x="385" y="42" width="170" height="62" rx="8" fill="#27274e" stroke="#10b981"/><text x="470" y="62" font-size="11" fill="#9b99b8">New paying customers</text><text x="470" y="82" font-weight="700">56</text><text x="470" y="98" font-size="11" fill="#fca5a5">-5.1%</text>
              <rect x="565" y="42" width="170" height="62" rx="8" fill="#27274e" stroke="#f59e0b"/><text x="650" y="62" font-size="11" fill="#9b99b8">Ad cost per customer</text><text x="650" y="82" font-weight="700">₹2,143</text><text x="650" y="98" font-size="11" fill="#fca5a5">+14.9%</text>
              <rect x="25" y="114" width="350" height="110" rx="8" fill="#27274e"/>
              <text x="200" y="132" font-size="11" fill="#9b99b8">Line chart: trials per week</text>
              <polyline points="50,205 110,195 170,200 230,180 290,172 350,150" fill="none" stroke="#8b5cf6" stroke-width="2.5"/>
              <line x1="45" y1="212" x2="355" y2="212" stroke="#4b4a78"/>
              <rect x="385" y="114" width="350" height="110" rx="8" fill="#27274e"/>
              <text x="560" y="132" font-size="11" fill="#9b99b8">Bar chart: trials by channel</text>
              <g fill="#3b82f6"><rect x="415" y="150" width="50" height="62"/><rect x="495" y="165" width="50" height="47"/><rect x="575" y="180" width="50" height="32"/><rect x="655" y="195" width="50" height="17"/></g>
              <line x1="405" y1="212" x2="720" y2="212" stroke="#4b4a78"/>
              <rect x="25" y="234" width="710" height="48" rx="8" fill="#27274e" stroke="#ec4899"/>
              <text x="380" y="255" font-weight="700">3 things to know this week</text>
              <text x="380" y="273" font-size="11" fill="#9b99b8">written in plain words, checked by a person</text>
            </g>
          </svg>
          <figcaption>Number tiles on top, two simple charts in the middle, and a short written summary at the bottom.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Choose the right chart</h3>
          <p>Each chart type answers one kind of question. Pick the chart after you know the question.</p>
          <table class="lc-table">
            <thead><tr><th>Chart</th><th>Best for</th><th>Example</th></tr></thead>
            <tbody>
              <tr><td><strong>Number tile</strong> (one big number with its change)</td><td>A key number and how it moved</td><td>Free trials: 310, +10.7% vs last week</td></tr>
              <tr><td><strong>Line chart</strong></td><td>A trend over time</td><td>Trials per week for 12 weeks</td></tr>
              <tr><td><strong>Bar chart</strong></td><td>Comparing groups</td><td>Trials by channel or by city</td></tr>
              <tr><td><strong>Table</strong></td><td>Exact values for many items</td><td>Spend, clicks and cost per click for 12 campaigns</td></tr>
            </tbody>
          </table>
          <p>Avoid pie charts with many slices and 3D charts. They make small differences hard to see. Start bar charts at zero, or the bars will exaggerate differences.</p>
        </div>
        <div class="lc-card">
          <h3>Plan a one-page dashboard</h3>
          <p>A dashboard should answer "Are we on track?" in under a minute. Follow these rules:</p>
          <ul class="lc-list">
            <li><strong>3 to 6 KPIs only.</strong> A KPI (key performance indicator) is a number linked to a goal. Put them in tiles at the top.</li>
            <li><strong>Always show a comparison.</strong> "310 trials" means little alone. "310, up from 280" tells a story.</li>
            <li><strong>Same periods every time.</strong> For example, Monday to Sunday, always compared with the week before.</li>
            <li><strong>Write down each definition.</strong> For example: "Ad cost per customer = ad spend ÷ new paying customers". Everyone then reads the numbers the same way.</li>
          </ul>
          <p>You can build a dashboard in Google Sheets with charts, or in a free tool such as Looker Studio (Google's dashboard tool). Menus change often, so check the tool's current help pages. AI can suggest the layout and explain how to add a chart. It cannot see your real data unless you give it.</p>
        </div>
        <div class="lc-card">
          <h3>Worked example: a weekly report for LedgerLite</h3>
          <p>LedgerLite (a made-up accounting software startup in Karnataka) sends a weekly report to its founders. Here are this week's sample numbers.</p>
          <table class="lc-table">
            <thead><tr><th>Metric</th><th>Last week</th><th>This week</th><th>Change</th></tr></thead>
            <tbody>
              <tr><td>Website visitors</td><td>11,800</td><td>12,400</td><td>+5.1%</td></tr>
              <tr><td>Free trials started</td><td>280</td><td>310</td><td>+10.7%</td></tr>
              <tr><td>New paying customers</td><td>59</td><td>56</td><td>-5.1%</td></tr>
              <tr><td>Ad spend</td><td>₹1,10,000</td><td>₹1,20,000</td><td>+9.1%</td></tr>
              <tr><td>Ad cost per customer</td><td>₹1,864</td><td>₹2,143</td><td>+14.9%</td></tr>
            </tbody>
          </table>
          <p>Check the last row yourself: ₹1,20,000 ÷ 56 = ₹2,143. ₹1,10,000 ÷ 59 = ₹1,864. The change is 2,143 ÷ 1,864 - 1 = about +14.9%.</p>
          <p>A good AI-written summary, after a person checked it:</p>
          <pre><code>This week: more trials, fewer new customers.
        1. Free trials rose 10.7% to 310. Visitors rose 5.1%.
        2. New paying customers fell from 59 to 56.
           Many of this week's trials may pay next week, so watch this.
        3. Ad cost per customer rose 14.9% to ₹2,143,
           because spend went up and customers went down.
        Next step: review the two campaigns with the most spend.</code></pre>
          <p>The AI wrote the draft. The marketer checked each number against the sheet and removed one guess about "a competitor's discount".</p>
        </div>
        <div class="lc-card">
          <h3>Activity: pick the chart</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Which chart fits each piece of information best?</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="tile" data-label="Number tile"></div>
              <div data-sorter-target="bucket" data-bucket="line" data-label="Line chart"></div>
              <div data-sorter-target="bucket" data-bucket="bar" data-label="Bar chart"></div>
              <div data-sorter-target="bucket" data-bucket="table" data-label="Table"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="line" data-why="A line chart shows how a number moves over time.">Daily sessions for the last 90 days</li>
              <li data-bucket="bar" data-why="A bar chart compares separate groups side by side.">Orders by channel this month</li>
              <li data-bucket="tile" data-why="One key number with its change fits a tile at the top of the dashboard.">This week's conversion rate compared with last week</li>
              <li data-bucket="table" data-why="Many exact values for many items are easier to read in a table.">Exact spend, clicks and cost per click for 12 campaigns</li>
              <li data-bucket="line" data-why="Twelve months in order is a trend over time.">Monthly revenue for the last 12 months</li>
              <li data-bucket="bar" data-why="States are separate groups, so bars compare them well.">Leads from Gujarat, Kerala and Punjab</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Paste your own weekly numbers, or use the sample. The AI will check the maths, write a short report and suggest a dashboard layout.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a marketing analyst. Write for a busy business owner in simple English.
        Business: [LedgerLite, an accounting software startup in Karnataka]
        Reader: [the two founders]

        This week vs last week:
        [Website visitors: 12400 vs 11800
        Free trials started: 310 vs 280
        New paying customers: 56 vs 59
        Ad spend (Rs): 120000 vs 110000]

        Tasks:
        1. Work out the % change for each metric. Also work out ad cost per customer (ad spend / new paying customers) for both weeks. Show each calculation.
        2. Write a weekly report of at most 120 words: a one-line headline, then 3 numbered points, then one next step.
        3. Suggest a one-page dashboard: which 4 number tiles to show, and which 2 charts (chart type and what it shows).
        Rules: use only the numbers above. Do not guess causes as facts. If a cause is possible, write "possible reason" and say how to check it.</pre>
            <ul class="ai-try-checks">
              <li>Ad cost per customer is about ₹1,864 last week and ₹2,143 this week.</li>
              <li>Every number in the report matches your data.</li>
              <li>No causes are stated as facts.</li>
              <li>The chart types fit the questions: lines for trends, bars for groups.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A good dashboard shows a few KPIs with comparisons. A good report says what happened, what might explain it and what to do next. AI can draft both fast, but a person must check every number before it is shared.
        </div>
      HTML
      starter_code: nil
    },
    13 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mkt">Digital Marketing</div>
          <h1 class="lc-title">Testing and Experiments</h1>
        </div>
        <p class="lc-lead">An <strong>A/B test</strong> shows two versions of something to two similar groups of people. Then you see which version works better. You can test a headline, a button, an email subject line or an ad image. In this lesson, you will learn how to plan a fair test. You will learn why you need enough visitors, and why you should not trust tiny differences. You will also use AI to plan tests and explain results.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 290" role="img" aria-label="Visitors are split at random into two groups. Group A sees Enquire now. Group B sees Get a free trip plan. Both lead to a compare step. Below, the same result, 3.0% vs 3.6%, is shown twice: with 2,000 visitors each it could be chance, with 10,000 visitors each it is likely real.">
            <defs><marker id="ma13a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="15" y="50" width="130" height="56" rx="10" fill="#1f1f44" stroke="#3b82f6"/><text x="80" y="74" font-weight="700">Visitors</text><text x="80" y="93" font-size="11" fill="#9b99b8">to the trip page</text>
              <rect x="185" y="50" width="130" height="56" rx="10" fill="#1f1f44" stroke="#9b99b8"/><text x="250" y="74" font-weight="700">Random split</text><text x="250" y="93" font-size="11" fill="#9b99b8">50% / 50%</text>
              <rect x="360" y="12" width="180" height="50" rx="10" fill="#27274e" stroke="#8b5cf6"/><text x="450" y="33" font-weight="700">Version A</text><text x="450" y="51" font-size="11" fill="#9b99b8">"Enquire now"</text>
              <rect x="360" y="94" width="180" height="50" rx="10" fill="#27274e" stroke="#ec4899"/><text x="450" y="115" font-weight="700">Version B</text><text x="450" y="133" font-size="11" fill="#9b99b8">"Get a free trip plan"</text>
              <rect x="590" y="50" width="155" height="56" rx="10" fill="#1f1f44" stroke="#10b981"/><text x="667" y="74" font-weight="700">Compare</text><text x="667" y="93" font-size="11" fill="#9b99b8">enquiry rate</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#ma13a)">
                <line x1="146" y1="78" x2="182" y2="78"/>
                <path d="M316,70 L340,40 L356,38"/><path d="M316,86 L340,116 L356,118"/>
                <path d="M541,38 L565,60 L587,66"/><path d="M541,118 L565,96 L587,90"/>
              </g>
              <rect x="15" y="165" width="355" height="115" rx="12" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="192" y="188" font-weight="700" fill="#fcd34d">2,000 visitors each</text>
              <text x="192" y="214">A: 60 enquiries = 3.0%</text>
              <text x="192" y="236">B: 72 enquiries = 3.6%</text>
              <text x="192" y="264" fill="#fca5a5">Could easily be chance</text>
              <rect x="390" y="165" width="355" height="115" rx="12" fill="#1f1f44" stroke="#10b981"/>
              <text x="567" y="188" font-weight="700" fill="#6ee7b7">10,000 visitors each</text>
              <text x="567" y="214">A: 300 enquiries = 3.0%</text>
              <text x="567" y="236">B: 360 enquiries = 3.6%</text>
              <text x="567" y="264" fill="#6ee7b7">Likely a real difference</text>
            </g>
          </svg>
          <figcaption>The same rates can mean different things. With more visitors, you can trust the difference more.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The rules of a fair A/B test</h3>
          <ul class="lc-list">
            <li><strong>Write a hypothesis first.</strong> A hypothesis is a clear guess you can test. For example: "A 'free trip plan' button will get more enquiries than 'Enquire now'."</li>
            <li><strong>Change one thing.</strong> If you change the button and the photo, you will not know which one made the difference.</li>
            <li><strong>Choose one main metric before you start.</strong> For example, enquiry rate (enquiries ÷ visitors).</li>
            <li><strong>Split people at random.</strong> Both groups must be alike. Do not show A in the morning and B at night.</li>
            <li><strong>Decide the sample size and end date first.</strong> Sample size is how many people you need in each group. Run full weeks, because weekdays and weekends behave differently.</li>
            <li><strong>Do not stop early.</strong> Results jump around at the start. If you stop the moment B looks better, you will often pick a false winner.</li>
          </ul>
          <p>Many tools have A/B testing built in, such as email platforms, Meta Ads Manager and Google Ads experiments. Features change, so check each tool's current help pages.</p>
        </div>
        <div class="lc-card">
          <h3>Worked example: Backwater Trails</h3>
          <p>Backwater Trails (a made-up travel agency in Kerala) tested two buttons on its houseboat trip page. The numbers are sample numbers.</p>
          <table class="lc-table">
            <thead><tr><th>Version</th><th>Visitors</th><th>Enquiries</th><th>Enquiry rate</th></tr></thead>
            <tbody>
              <tr><td>A: "Enquire now"</td><td>2,000</td><td>60</td><td>3.0%</td></tr>
              <tr><td>B: "Get a free trip plan"</td><td>2,000</td><td>72</td><td>3.6%</td></tr>
            </tbody>
          </table>
          <p>B is 20% better (3.6 ÷ 3.0 = 1.2). That sounds big. But it is only 12 more enquiries. A <strong>significance test</strong> checks how likely it is that a difference this size is only chance. Free online A/B test calculators do this test. For these numbers, a calculator gives a <strong>p-value</strong> of about 0.29. That means a gap this big would appear by chance quite often. Most teams want a p-value below 0.05 before they call a winner.</p>
          <p>If each version had 10,000 visitors with the same rates (300 vs 360 enquiries), the p-value would be about 0.02. Then the difference is much more likely to be real.</p>
          <p><strong>Sample size idea:</strong> small changes need many visitors. To reliably spot a change from 3.0% to 3.6%, a standard sample size calculator with its usual settings suggests about 14,000 visitors per version. A small site may need to test bigger changes, or run tests for longer.</p>
          <p>AI can explain these ideas well. But AI assistants often get this maths wrong. Always put your numbers into a proper calculator as well.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: run a test in the right order</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put the steps of a fair A/B test in order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Write a hypothesis: what you will change and what you expect</li>
              <li data-order="2">Choose one main metric, such as enquiry rate</li>
              <li data-order="3">Work out the sample size and the end date</li>
              <li data-order="4">Split visitors at random and start the test</li>
              <li data-order="5">Wait until the planned sample size is reached</li>
              <li data-order="6">Check the result with a significance calculator</li>
              <li data-order="7">Decide, and write down what you learned</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Describe a test you want to run, or keep the sample. The AI will write a test plan and explain the sample result in plain words.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a careful marketing analyst who explains A/B tests in simple English.
        Business: [Backwater Trails, a travel agency in Kerala]
        What I want to test: [the button on my houseboat trip page: "Enquire now" vs "Get a free trip plan"]
        Current numbers: [about 600 visitors a day, about 3% of them send an enquiry]

        Part 1: Write a test plan with: a hypothesis, the one main metric, what stays the same in both versions, and how long to run the test. Explain the sample size idea in two sentences. Tell me which calculator to use to get the exact number, and why it can change.

        Part 2: Here is a finished test.
        [A: 2000 visitors, 60 enquiries. B: 2000 visitors, 72 enquiries.]
        Work out each enquiry rate. Explain in plain words if this difference could be chance. Do not give an exact p-value unless you show how you got it. Tell me what to check in a proper significance calculator.

        Part 3: List 3 mistakes that would make this test unfair.</pre>
            <ul class="ai-try-checks">
              <li>The rates are 3.0% and 3.6%. Check them yourself.</li>
              <li>The plan changes only one thing between the versions.</li>
              <li>The AI does not call B a sure winner with only 2,000 visitors each.</li>
              <li>Put the numbers into an online significance calculator to confirm.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A difference between two versions is not proof. Plan the test first, change one thing, get enough visitors and check the result with a proper calculator. Tiny differences on small samples are often just chance.
        </div>
      HTML
      starter_code: nil
    },
    14 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mkt">Digital Marketing</div>
          <h1 class="lc-title">Privacy and Data Ethics</h1>
        </div>
        <p class="lc-lead">Marketing data is often about real people. Their names, phone numbers, emails and buying habits are <strong>personal data</strong>: any information that can identify a person. In this lesson, you will learn the basics of consent, cookies and personal data. You will learn how to prepare data before you use AI with it. Most important, you will learn why you must not paste customer data into public AI tools. This lesson is general education only. It is not legal advice.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 290" role="img" aria-label="Before and after. On the left, a raw customer table with name, phone, email, age and trip amount. An arrow labelled remove, replace and group points to a safer table on the right with customer ID, age band, state and trip amount.">
            <defs><marker id="ma14a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12" fill="#e2e0f0" text-anchor="middle">
              <rect x="10" y="15" width="320" height="200" rx="12" fill="#1f1f44" stroke="#ec4899"/>
              <text x="170" y="38" font-weight="700" font-size="13" fill="#f9a8d4">Raw export: do not paste</text>
              <g text-anchor="start">
                <text x="25" y="64" fill="#9b99b8">Name</text><text x="105" y="64" fill="#9b99b8">Phone</text><text x="190" y="64" fill="#9b99b8">Age</text><text x="235" y="64" fill="#9b99b8">Trip (₹)</text>
                <text x="25" y="90">Anita R.</text><text x="105" y="90">98xxxxxx12</text><text x="190" y="90">34</text><text x="235" y="90">24,000</text>
                <text x="25" y="114">Joseph K.</text><text x="105" y="114">97xxxxxx45</text><text x="190" y="114">52</text><text x="235" y="114">38,500</text>
                <text x="25" y="138">Meera S.</text><text x="105" y="138">99xxxxxx08</text><text x="190" y="138">29</text><text x="235" y="138">18,000</text>
              </g>
              <text x="170" y="170" fill="#9b99b8" font-size="11">plus email, address,</text>
              <text x="170" y="186" fill="#9b99b8" font-size="11">notes about each person</text>
              <line x1="335" y1="115" x2="418" y2="115" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ma14a)"/>
              <text x="377" y="100" font-size="11" fill="#fcd34d">remove</text>
              <text x="377" y="134" font-size="11" fill="#fcd34d">replace</text>
              <text x="377" y="150" font-size="11" fill="#fcd34d">group</text>
              <rect x="425" y="15" width="325" height="200" rx="12" fill="#1f1f44" stroke="#10b981"/>
              <text x="587" y="38" font-weight="700" font-size="13" fill="#6ee7b7">Safer data for analysis</text>
              <g text-anchor="start">
                <text x="440" y="64" fill="#9b99b8">ID</text><text x="505" y="64" fill="#9b99b8">Age band</text><text x="590" y="64" fill="#9b99b8">State</text><text x="680" y="64" fill="#9b99b8">Trip (₹)</text>
                <text x="440" y="90">C-001</text><text x="505" y="90">25-34</text><text x="590" y="90">Kerala</text><text x="680" y="90">24,000</text>
                <text x="440" y="114">C-002</text><text x="505" y="114">45-54</text><text x="590" y="114">Gujarat</text><text x="680" y="114">38,500</text>
                <text x="440" y="138">C-003</text><text x="505" y="138">25-34</text><text x="590" y="138">Punjab</text><text x="680" y="138">18,000</text>
              </g>
              <text x="587" y="178" fill="#9b99b8" font-size="11">no names, phones or emails</text>
              <rect x="10" y="232" width="740" height="46" rx="10" fill="#27274e" stroke="#f59e0b"/>
              <text x="380" y="254" font-size="13">Best of all: share only totals and summaries with AI.</text>
              <text x="380" y="270" font-size="11" fill="#9b99b8">Follow your company's AI policy and the law in your country.</text>
            </g>
          </svg>
          <figcaption>Before you use AI, remove what identifies people, replace it with codes and group exact values into bands.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Consent, cookies and personal data</h3>
          <table class="lc-table">
            <thead><tr><th>Term</th><th>Plain meaning</th><th>What it means for you</th></tr></thead>
            <tbody>
              <tr><td><strong>Personal data</strong></td><td>Any data that can identify a person: name, phone, email, address, ID numbers, and often device IDs.</td><td>Collect only what you need. Keep it safe.</td></tr>
              <tr><td><strong>Consent</strong></td><td>A clear "yes" from a person to use their data for a stated purpose.</td><td>Ask clearly. Say what you will do. Make it easy to say no or withdraw later.</td></tr>
              <tr><td><strong>Cookies</strong></td><td>Small files a website stores in the browser. Some remember a login. Others track visits for ads and analytics.</td><td>Many laws require consent for tracking cookies. Use a proper cookie banner.</td></tr>
              <tr><td><strong>Sensitive data</strong></td><td>Data such as health, money details and children's data.</td><td>Extra rules often apply. Take extra care, and ask an expert.</td></tr>
            </tbody>
          </table>
          <p>In India, the Digital Personal Data Protection Act, 2023 (DPDP Act) sets rules for personal data. The Act and the DPDP Rules, 2025 are coming into force in stages. In Europe, the GDPR applies. Other countries have their own laws. Details and dates change, so check official sources. For real decisions, ask a qualified lawyer or privacy professional.</p>
          <p>Analytics tools also have privacy settings. For example, Google Analytics works with Google's consent mode, which changes what is measured when a visitor says no. Check the tool's current help pages for how to set it up.</p>
        </div>
        <div class="lc-card">
          <h3>Do not paste customer data into public AI tools</h3>
          <p>Public AI chat tools are not the right place for customer lists. Some tools may store chats, and some may use them to improve their models, depending on your settings and plan. Even when a tool is safe, your customers did not agree to this use.</p>
          <p>Before you use AI with marketing data, follow these steps:</p>
          <ul class="lc-list">
            <li><strong>Ask if you need row-level data at all.</strong> Often totals by channel, city or month are enough.</li>
            <li><strong>Remove</strong> names, phone numbers, emails, addresses and ID numbers.</li>
            <li><strong>Replace</strong> each customer with a code, such as C-001. Keep the key file only on your company system.</li>
            <li><strong>Group</strong> exact values into bands. Age 34 becomes "25-34". An exact pin code can become a city.</li>
            <li><strong>Use approved tools.</strong> Use the AI tool your company has approved, with the right business settings. Check its data settings.</li>
          </ul>
          <pre><code>Weak:   Here is our full customer export. Find our best customers.

        Better: Here are total trips and spend by age band and city
                (no names or contact details). Which groups book
                the most repeat trips? Suggest 3 actions.</code></pre>
        </div>
        <div class="lc-card">
          <h3>Worked example: Backwater Trails</h3>
          <p>Backwater Trails (a made-up travel agency in Kerala) wants to know which customers book repeat trips. The marketer has an export with 1,200 rows of sample data. It includes names, phones, emails, ages and notes like "anniversary trip".</p>
          <table class="lc-table">
            <thead><tr><th>Column</th><th>Decision</th><th>Why</th></tr></thead>
            <tbody>
              <tr><td>Name, phone, email</td><td>Remove</td><td>They identify the person. The analysis does not need them.</td></tr>
              <tr><td>Customer number</td><td>Replace with C-001, C-002…</td><td>You still need to count repeat trips per customer.</td></tr>
              <tr><td>Age</td><td>Group into bands</td><td>Bands are enough for the question.</td></tr>
              <tr><td>Notes</td><td>Remove</td><td>Free text often has private details, such as health or family events.</td></tr>
              <tr><td>City, package, amount, date</td><td>Keep</td><td>These answer the question.</td></tr>
            </tbody>
          </table>
          <p>Even better, the marketer makes a pivot table first. It shows repeat trips by age band and package. Only that summary goes to the AI.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: safe to share with a public AI tool?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each item. Could you paste it as it is, must you remove details first, or should it never go into a public AI tool?</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="ok" data-label="OK as it is"></div>
              <div data-sorter-target="bucket" data-bucket="clean" data-label="Remove details first"></div>
              <div data-sorter-target="bucket" data-bucket="never" data-label="Never paste"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="ok" data-why="Totals by channel do not identify anyone.">Monthly sessions and orders by channel</li>
              <li data-bucket="ok" data-why="Your public web page is already public. It has no customer data.">The text of your public product page</li>
              <li data-bucket="clean" data-why="Remove names and phones. Replace customers with codes, or share only a summary.">An order list with customer names and phone numbers</li>
              <li data-bucket="clean" data-why="Remove the name, address and any personal details before you ask for a reply draft.">A customer's complaint email that includes their address</li>
              <li data-bucket="clean" data-why="Remove the email addresses. The answers alone can be analysed.">Survey answers with email addresses attached</li>
              <li data-bucket="never" data-why="Payment details are highly sensitive. They are never needed for marketing analysis.">Customers' card numbers or bank details</li>
              <li data-bucket="never" data-why="Government ID numbers are sensitive. There is no marketing reason to paste them.">A list of customers' Aadhaar numbers</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>List only the column names of your data export, never the data itself. The AI will suggest how to make it safer, and draft a clear consent message.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a privacy-aware marketing analyst. Give general guidance in simple English. This is not legal advice.
        Business: [Backwater Trails, a travel agency in Kerala]
        My question for the data: [Which types of customers book repeat trips?]
        Column names in my export (no real data): [Customer number, Full name, Phone, Email, Age, Home address, City, Package, Trip amount, Trip date, Notes]

        Tasks:
        1. Make a table: Column | Keep, Remove, Replace or Group | Why. Only keep what the question needs.
        2. Suggest one summary table I could build in a spreadsheet, so I can share only totals with an AI tool.
        3. Draft a short, clear consent message for my website form. It should ask customers if I may send them trip offers by email and WhatsApp. It should say how to stop.
        4. List 3 questions I should ask a lawyer or privacy expert about India's DPDP Act.
        Do not state exact legal rules, fines or dates.</pre>
            <ul class="ai-try-checks">
              <li>Names, phones, emails, addresses and notes are removed.</li>
              <li>The consent message is clear, specific and says how to stop.</li>
              <li>The AI does not give exact legal rules or fines as facts.</li>
              <li>You did not paste any real customer data.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Your customers trust you with their data. Collect only what you need, get clear consent, and never paste personal data into public AI tools. Most analysis works with totals or coded data, so share that instead.
        </div>
      HTML
      starter_code: nil
    },
    15 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mkt">Digital Marketing</div>
          <h1 class="lc-title">Capstone: A Marketing Performance Report</h1>
        </div>
        <p class="lc-lead">In this capstone, you will make a full monthly marketing report with AI's help. You will clean a data set and compute the key numbers. You will find three insights and write clear recommendations. You will use the made-up bakery Sweet Crumbs in Maharashtra as the example. You can then repeat the same steps with your own data. This is the kind of report a manager, client or interviewer wants to see.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 250" role="img" aria-label="Four steps from left to right: clean the data, compute KPIs, find 3 insights, write recommendations. Under each step is a short example. A check-by-a-person bar runs under all four steps.">
            <defs><marker id="ma15a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="15" y="20" width="160" height="150" rx="12" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="95" y="46" font-weight="700" fill="#93c5fd">1. Clean</text>
              <text x="95" y="76" font-size="11" fill="#9b99b8">234 raw rows</text>
              <text x="95" y="96" font-size="11" fill="#9b99b8">remove duplicates</text>
              <text x="95" y="116" font-size="11" fill="#9b99b8">fix channel names</text>
              <text x="95" y="146">227 real orders</text>
              <rect x="205" y="20" width="160" height="150" rx="12" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="285" y="46" font-weight="700" fill="#c4b5fd">2. Compute KPIs</text>
              <text x="285" y="76" font-size="11" fill="#9b99b8">conversion rate</text>
              <text x="285" y="96" font-size="11" fill="#9b99b8">average order value</text>
              <text x="285" y="116" font-size="11" fill="#9b99b8">ROAS, cost per order</text>
              <text x="285" y="146">SUMIFS in a sheet</text>
              <rect x="395" y="20" width="160" height="150" rx="12" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="475" y="46" font-weight="700" fill="#fcd34d">3. Find insights</text>
              <text x="475" y="76" font-size="11" fill="#9b99b8">WhatsApp converts best</text>
              <text x="475" y="96" font-size="11" fill="#9b99b8">Google Ads ROAS 4.25</text>
              <text x="475" y="116" font-size="11" fill="#9b99b8">Instagram: low rate</text>
              <text x="475" y="146">3 clear findings</text>
              <rect x="585" y="20" width="160" height="150" rx="12" fill="#1f1f44" stroke="#10b981"/>
              <text x="665" y="46" font-weight="700" fill="#6ee7b7">4. Recommend</text>
              <text x="665" y="76" font-size="11" fill="#9b99b8">one action each</text>
              <text x="665" y="96" font-size="11" fill="#9b99b8">who, by when</text>
              <text x="665" y="116" font-size="11" fill="#9b99b8">how to measure</text>
              <text x="665" y="146">1-page report</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ma15a)"><line x1="176" y1="95" x2="202" y2="95"/><line x1="366" y1="95" x2="392" y2="95"/><line x1="556" y1="95" x2="582" y2="95"/></g>
              <rect x="15" y="190" width="730" height="44" rx="10" fill="#27274e" stroke="#ec4899"/>
              <text x="380" y="217">At every step: a person checks AI's numbers and claims</text>
            </g>
          </svg>
          <figcaption>Four steps turn a messy export into a report someone can act on. You check the AI's work at every step.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Step 1: Clean the data</h3>
          <p>Sweet Crumbs exported its September orders. The export had 234 rows. You find these problems. You can ask AI to help write the formulas, but you check each count yourself.</p>
          <table class="lc-table">
            <thead><tr><th>Problem</th><th>Fix</th><th>Rows affected</th></tr></thead>
            <tbody>
              <tr><td>Same order listed twice</td><td>Remove duplicates using the order ID</td><td>5 removed</td></tr>
              <tr><td>Test orders by staff (₹1 orders)</td><td>Remove them</td><td>2 removed</td></tr>
              <tr><td>"IG", "instagram" and "Insta Ads" for one channel</td><td>Change all to "Instagram ads"</td><td>31 renamed</td></tr>
              <tr><td>Dates in two formats</td><td>Change all to one date format</td><td>18 fixed</td></tr>
            </tbody>
          </table>
          <p>After cleaning: 234 - 5 - 2 = <strong>227 real orders</strong>. Use <code>=COUNTA(A2:A228)</code> on the order ID column to confirm the count. Keep a short cleaning log like the table above. Your reader can then trust the numbers.</p>
        </div>
        <div class="lc-card">
          <h3>Step 2: Compute the KPIs</h3>
          <p>You add sessions from Google Analytics and ad spend from the ad platforms. Then you use <code>SUMIFS</code> and <code>COUNTIFS</code> to total each channel. For example: <code>=SUMIFS(D:D, C:C, "Google Ads")</code> adds revenue for Google Ads orders. All numbers are sample numbers.</p>
          <table class="lc-table">
            <thead><tr><th>Channel</th><th>Spend</th><th>Sessions</th><th>Orders</th><th>Revenue</th><th>Conv. rate</th><th>AOV</th><th>ROAS</th><th>Cost per order</th></tr></thead>
            <tbody>
              <tr><td>Instagram ads</td><td>₹18,000</td><td>3,600</td><td>72</td><td>₹54,000</td><td>2.0%</td><td>₹750</td><td>3.0</td><td>₹250</td></tr>
              <tr><td>Google Ads</td><td>₹12,000</td><td>1,500</td><td>60</td><td>₹51,000</td><td>4.0%</td><td>₹850</td><td>4.25</td><td>₹200</td></tr>
              <tr><td>WhatsApp broadcast</td><td>no ad spend</td><td>900</td><td>45</td><td>₹31,500</td><td>5.0%</td><td>₹700</td><td>n/a</td><td>n/a</td></tr>
              <tr><td>Organic search</td><td>no ad spend</td><td>2,000</td><td>50</td><td>₹40,000</td><td>2.5%</td><td>₹800</td><td>n/a</td><td>n/a</td></tr>
              <tr><td><strong>Total</strong></td><td>₹30,000</td><td>8,000</td><td>227</td><td>₹1,76,500</td><td>2.8%</td><td>₹778</td><td>3.5 (paid only)</td><td>₹227 (paid only)</td></tr>
            </tbody>
          </table>
          <ul class="lc-list">
            <li><strong>Conversion rate</strong> = orders ÷ sessions. Instagram: 72 ÷ 3,600 = 2.0%.</li>
            <li><strong>AOV</strong> (average order value) = revenue ÷ orders. Total: 1,76,500 ÷ 227 = about ₹778.</li>
            <li><strong>ROAS</strong> (return on ad spend) = revenue ÷ ad spend. Google Ads: 51,000 ÷ 12,000 = 4.25.</li>
            <li><strong>Cost per order</strong> = ad spend ÷ orders. Paid total: 30,000 ÷ 132 = about ₹227.</li>
          </ul>
          <p>ROAS uses revenue, not profit. Suppose Sweet Crumbs keeps about 40% of revenue after baking costs (a made-up number). Then it needs a ROAS above 1 ÷ 0.40 = 2.5 just to cover ad spend. Instagram's 3.0 is only a little above that.</p>
        </div>
        <div class="lc-card">
          <h3>Steps 3 and 4: Insights and recommendations</h3>
          <table class="lc-table">
            <thead><tr><th>Insight</th><th>Recommendation</th><th>How to measure</th></tr></thead>
            <tbody>
              <tr><td>WhatsApp broadcast converts best (5.0%) with no ad spend, but brings only 900 sessions.</td><td>Grow the WhatsApp list with a clear opt-in on the order page. Only message people who agreed.</td><td>List size and WhatsApp orders next month</td></tr>
              <tr><td>Google Ads has the best ROAS (4.25) and the lowest cost per order (₹200).</td><td>Move ₹3,000 from Instagram to Google Ads as a two-week test.</td><td>Google Ads ROAS stays above 3.5 at the higher budget</td></tr>
              <tr><td>Instagram brings the most sessions (45% of all) but converts at only 2.0%.</td><td>Check where the ads send people. Test a direct "order a cake" page instead of the home page.</td><td>Instagram conversion rate over the next month</td></tr>
            </tbody>
          </table>
          <p><strong>Limits to state in the report:</strong> this is one month of data. Channel numbers depend on attribution, which is an estimate. Instagram may help people discover the bakery even when they later order through Google. So cut Instagram slowly, and watch total orders.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: the capstone session</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="tool" data-label="Spreadsheet">You remove duplicates by order ID and delete the two ₹1 test orders. The count goes from 234 to 227.</li>
              <li data-kind="user" data-label="Prompt">"Here is a summary by channel: spend, sessions, orders, revenue. Compute conversion rate, AOV, ROAS and cost per order. Show each formula."</li>
              <li data-kind="answer" data-label="AI answer">The AI gives the KPI table. It says the total ROAS is 5.9.</li>
              <li data-kind="warn" data-label="Catch the error">5.9 is total revenue divided by ad spend (1,76,500 ÷ 30,000). It wrongly includes free WhatsApp and organic orders. Paid ROAS is 1,05,000 ÷ 30,000 = 3.5.</li>
              <li data-kind="check" data-label="Recheck">You recalculate every ROAS and conversion rate with formulas in your sheet. The other numbers match.</li>
              <li data-kind="answer" data-label="Insights draft">The AI drafts three insights and recommendations. One says "Instagram ads are wasting money".</li>
              <li data-kind="check" data-label="Edit the claim">Instagram's ROAS is 3.0, above the 2.5 break-even level. You change it to "Instagram is profitable but converts poorly. Test a better landing page."</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Use your own channel summary, or run the prompt with the sample data. The AI will compute the KPIs and draft a one-page report for you to check.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a marketing analyst writing a monthly performance report in simple English.
        Business: [Sweet Crumbs, a home bakery in Maharashtra that takes orders online]
        Month: [September]
        Reader: [the owner, who is busy and not a data expert]

        Channel summary (already cleaned, no customer data):
        [Channel | Ad spend Rs | Sessions | Orders | Revenue Rs
        Instagram ads | 18000 | 3600 | 72 | 54000
        Google Ads | 12000 | 1500 | 60 | 51000
        WhatsApp broadcast | 0 | 900 | 45 | 31500
        Organic search | 0 | 2000 | 50 | 40000]
        Gross margin (share of revenue kept after costs): [40%]

        Tasks:
        1. Make a KPI table: conversion rate, AOV, ROAS and cost per order for each channel, plus totals. Show the formula for each KPI. Work out ROAS and cost per order only for paid channels.
        2. Give the break-even ROAS for this margin.
        3. Write 3 insights. Each must use a number from the table.
        4. For each insight, give one recommendation and how to measure it.
        5. Add a short "Limits of this data" section.
        Use only the numbers above. Do not invent reasons as facts.</pre>
            <ul class="ai-try-checks">
              <li>Paid ROAS is 3.5 (1,05,000 ÷ 30,000), not 5.9.</li>
              <li>Break-even ROAS at 40% margin is 2.5.</li>
              <li>Recalculate at least three KPIs in your spreadsheet.</li>
              <li>Each insight uses a real number and leads to one action.</li>
              <li>The report mentions that attribution is an estimate.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A useful report is clean data, correct KPIs, a few clear insights and specific actions. AI makes each step faster. You make it trustworthy by checking every number and every claim before the report goes out.
        </div>
      HTML
      starter_code: nil
    }
  }.freeze
end

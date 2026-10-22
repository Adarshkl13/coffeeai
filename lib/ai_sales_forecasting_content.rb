module AiSalesForecastingContent
  # Units (sidebar dividers): 1–4 Forecasting Basics · 5–9 Pipeline Forecasts · 10–14 Win/Loss and Planning · 15 Capstone
  # Widgets: sequence, sorter, stepper. No code editor: each Try It is an ai-try prompt box.
  LESSONS = {
    1 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-sales">Sales & CRM</div>
          <h1 class="lc-title">Why Sales Forecasting Matters</h1>
        </div>
        <p class="lc-lead">A <strong>sales forecast</strong> is your best honest estimate of how much you will sell in a future period, such as the next quarter. Owners use it to decide when to hire, how much cash to keep and how much stock to buy. In this lesson you will learn why a forecast matters. You will see how it differs from a target and a quota. You will also measure how accurate a forecast was. In this course you will build forecasts with spreadsheets and use AI to check and explain them.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="Pipeline and history data feed one forecast of 7,73,000 rupees. The forecast drives three decisions: hiring at LedgerLite, trucks and drivers at Nimbus Logistics, and flour and butter stock at Sweet Crumbs. Below, three different numbers: the forecast of 7,73,000 rupees, the target of 9,00,000 rupees, and Kavya's quota of 5,00,000 rupees.">
            <defs><marker id="sfc1a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="20" y="58" width="180" height="70" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="110" y="86" font-weight="700">Pipeline + history</text>
              <text x="110" y="108" font-size="11" fill="#9b99b8">12 open deals, 4 quarters</text>
              <rect x="250" y="58" width="170" height="70" rx="10" fill="#27274e" stroke="#f59e0b" stroke-width="2"/>
              <text x="335" y="86" font-weight="700">Forecast</text>
              <text x="335" y="108" fill="#fcd34d">₹7,73,000 for Q3</text>
              <rect x="480" y="12" width="260" height="46" rx="8" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="610" y="31" font-weight="700">Hiring</text>
              <text x="610" y="49" font-size="11.5" fill="#9b99b8">LedgerLite: add a second rep?</text>
              <rect x="480" y="70" width="260" height="46" rx="8" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="610" y="89" font-weight="700">Cash and capacity</text>
              <text x="610" y="107" font-size="11.5" fill="#9b99b8">Nimbus: how many trucks and drivers?</text>
              <rect x="480" y="128" width="260" height="46" rx="8" fill="#1f1f44" stroke="#ec4899"/>
              <text x="610" y="147" font-weight="700">Stock</text>
              <text x="610" y="165" font-size="11.5" fill="#9b99b8">Sweet Crumbs: flour and butter</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#sfc1a)">
                <line x1="202" y1="93" x2="244" y2="93"/>
                <line x1="422" y1="84" x2="474" y2="37"/>
                <line x1="422" y1="93" x2="474" y2="93"/>
                <line x1="422" y1="102" x2="474" y2="149"/>
              </g>
              <text x="20" y="206" font-size="12" fill="#9b99b8" text-anchor="start">Three different numbers (LedgerLite, Q3 FY27: Oct to Dec 2026)</text>
              <rect x="20" y="216" width="230" height="74" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="135" y="238" font-weight="700">Forecast</text>
              <text x="135" y="260" font-size="15" font-weight="700" fill="#fcd34d">₹7,73,000</text>
              <text x="135" y="280" font-size="11" fill="#9b99b8">what we expect to win</text>
              <rect x="265" y="216" width="230" height="74" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="380" y="238" font-weight="700">Target</text>
              <text x="380" y="260" font-size="15" font-weight="700" fill="#c4b5fd">₹9,00,000</text>
              <text x="380" y="280" font-size="11" fill="#9b99b8">what the company aims for</text>
              <rect x="510" y="216" width="230" height="74" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="625" y="238" font-weight="700">Quota</text>
              <text x="625" y="260" font-size="15" font-weight="700" fill="#6ee7b7">Kavya ₹5,00,000</text>
              <text x="625" y="280" font-size="11" fill="#9b99b8">one person's goal (Arjun ₹4,00,000)</text>
            </g>
          </svg>
          <figcaption>One forecast drives many decisions. It is not the same number as the target or a quota.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>What a forecast is used for</h3>
          <p>In this course we follow <strong>LedgerLite</strong>, a made-up startup in Karnataka. It sells accounting software to small businesses. Kavya is the sales rep and Arjun is the founder. We also meet <strong>Nimbus Logistics</strong>, a delivery company in India (sales manager Rohit), and <strong>Sweet Crumbs</strong>, a bakery in Maharashtra that sells office catering. All names and numbers are made up.</p>
          <table class="lc-table">
            <thead><tr><th>Decision</th><th>Business</th><th>What the forecast tells them</th></tr></thead>
            <tbody>
              <tr><td>Hiring</td><td>LedgerLite</td><td>Can we pay a second sales rep from January? Will there be enough deals for two people?</td></tr>
              <tr><td>Cash</td><td>LedgerLite</td><td>How much money will come in each month? Can we pay salaries and rent on time?</td></tr>
              <tr><td>Capacity</td><td>Nimbus Logistics</td><td>How many trucks and drivers do we need for new delivery contracts in November?</td></tr>
              <tr><td>Stock</td><td>Sweet Crumbs</td><td>How much flour, butter and packing material should we order for Diwali office orders?</td></tr>
            </tbody>
          </table>
          <p>A forecast that is <strong>too high</strong> leads to extra staff, extra stock and cash problems. A forecast that is <strong>too low</strong> leads to missed orders, late deliveries and tired teams. Both mistakes cost money. So an honest forecast is more useful than a hopeful one.</p>
        </div>
        <div class="lc-card">
          <h3>Forecast, target and quota are different</h3>
          <p>People often mix up these three numbers. Keep them apart.</p>
          <table class="lc-table">
            <thead><tr><th>Number</th><th>What it means</th><th>Who sets it</th><th>LedgerLite, Q3 FY27</th></tr></thead>
            <tbody>
              <tr><td><strong>Forecast</strong></td><td>What you honestly <em>expect</em> to sell, based on data</td><td>The sales team, checked by the manager</td><td>₹7,73,000</td></tr>
              <tr><td><strong>Target</strong></td><td>What the company <em>wants</em> to sell. It is a goal.</td><td>Founder or leaders</td><td>₹9,00,000</td></tr>
              <tr><td><strong>Quota</strong></td><td>The part of the target given to one person or team</td><td>Sales manager</td><td>Kavya ₹5,00,000, Arjun ₹4,00,000</td></tr>
            </tbody>
          </table>
          <p>LedgerLite uses the Indian financial year (1 April to 31 March). So Q3 FY27 means October to December 2026. You will learn how Kavya built the ₹7,73,000 forecast later in this course.</p>
          <p>The forecast is ₹1,27,000 below the target. That gap is useful news. It tells Arjun to act now, for example by finding more deals. Never raise the forecast just to match the target. A forecast that only repeats the target cannot warn anyone.</p>
        </div>
        <div class="lc-card">
          <h3>How accurate was the last forecast?</h3>
          <p>At the start of Q2 FY27 (July to September 2026), LedgerLite forecast ₹7,60,000. The team actually won ₹7,10,000.</p>
          <ul class="lc-list">
            <li><strong>Error</strong> = actual minus forecast = ₹7,10,000 − ₹7,60,000 = −₹50,000. The minus sign means the forecast was too high.</li>
            <li><strong>Error %</strong> = size of the error ÷ actual = 50,000 ÷ 7,10,000 = 7.0%.</li>
            <li><strong>Accuracy</strong> = 100% − 7.0% = 93.0%.</li>
          </ul>
          <p>In a spreadsheet, put the forecast in B1 and the actual in B2. Then use this formula and format the cell as a percentage:</p>
          <pre><code>=1-ABS(B2-B1)/B2</code></pre>
          <p>The result is 0.9296, which shows as 93.0%. Teams use slightly different accuracy formulas. Pick one and use it every quarter. Also watch the direction. If your forecast is too high every quarter, your team is too hopeful, and you should fix that habit.</p>
          <p>There is no single "good" accuracy number for every business. Compare each quarter with your own past quarters.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: forecast, target or quota?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each statement into the right number.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="forecast" data-label="Forecast"></div>
              <div data-sorter-target="bucket" data-bucket="target" data-label="Target"></div>
              <div data-sorter-target="bucket" data-bucket="quota" data-label="Quota"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="target" data-why="This is a goal set by the founder. It says what the company wants, not what it expects.">Arjun tells investors: "We aim to win ₹9,00,000 of new sales this quarter."</li>
              <li data-bucket="forecast" data-why="It is an estimate built from real deals and their stages. That is a forecast.">Kavya adds up her open deals by stage and expects about ₹4,15,500 from them.</li>
              <li data-bucket="quota" data-why="It is one person's share of the company target.">Kavya must close ₹5,00,000 this quarter to earn her full bonus.</li>
              <li data-bucket="forecast" data-why="Rohit expects this based on signed and nearly signed contracts. It is an estimate, not a goal.">Rohit expects Nimbus Logistics to sign ₹12,00,000 of new contracts in November, based on the deals in his CRM.</li>
              <li data-bucket="target" data-why="It is a company-wide goal for growth.">Sweet Crumbs wants office catering sales to grow 20% compared with last Diwali.</li>
              <li data-bucket="quota" data-why="This is the part of the Nimbus target given to one team.">Rohit gives the West India team ₹6,00,000 of the company's quarterly goal.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to explain the three numbers using your own business, and to design a simple accuracy tracker. Change the text in [brackets], or keep the LedgerLite example.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a friendly sales planning coach for small businesses in India.

        My business: [LedgerLite, a startup in Karnataka that sells accounting software to small businesses]
        Sales team: [1 sales rep and the founder]
        Next quarter: [October to December 2026]
        Our target: [₹9,00,000 of new sales]

        Help me understand why a sales forecast matters for my business.
        1. Explain forecast, target and quota in one simple sentence each. Use my business in every example.
        2. List 5 business decisions that depend on my forecast (for example hiring, cash or stock). For each one, say what goes wrong if the forecast is too high, and what goes wrong if it is too low.
        3. Design a simple table I can fill in every quarter to track forecast accuracy. Give the column names and the spreadsheet formula for accuracy.

        Rules:
        - Use simple English and short sentences.
        - Do not invent statistics or industry benchmarks.
        - If you need a number from me, ask for it. Do not guess it.</pre>
            <ul class="ai-try-checks">
              <li>Does the forecast mean what you expect, and the target mean what you want? Are they kept apart?</li>
              <li>Does each decision have both a "too high" and a "too low" risk?</li>
              <li>Does the accuracy formula compare the forecast with the actual result, like =1-ABS(actual-forecast)/actual?</li>
              <li>Did the AI avoid made-up benchmarks, such as "good teams are 95% accurate"?</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A forecast is an honest estimate, a target is a goal, and a quota is one person's share of the goal. Keep the forecast honest, even when it is below the target. The gap is the most useful thing it tells you.
        </div>
      HTML
      starter_code: nil
    },
    2 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-sales">Sales & CRM</div>
          <h1 class="lc-title">Where AI Helps in Forecasting</h1>
        </div>
        <p class="lc-lead">AI assistants such as Claude can save you hours of forecasting work. They can find messy data, point out risky deals and write a clear summary for your manager. But a forecast is made of numbers, and AI can get numbers wrong. In this lesson you will learn which jobs to give AI, which jobs to give your spreadsheet, and which decisions stay with you.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 280" role="img" aria-label="A five-step workflow: CRM export, remove private data, spreadsheet does the maths, AI reviews risks and drafts text, you check and then share. Below, a green box lists what AI helps with, and a red box lists what AI must not do.">
            <defs><marker id="sfc2a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="20" y="20" width="120" height="64" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="80" y="47" font-weight="700">CRM export</text>
              <text x="80" y="68" font-size="11" fill="#9b99b8">12 open deals</text>
              <rect x="170" y="20" width="120" height="64" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="230" y="47" font-weight="700">Remove private</text>
              <text x="230" y="68" font-size="11" fill="#9b99b8">no phones, emails</text>
              <rect x="320" y="20" width="120" height="64" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="380" y="47" font-weight="700">Spreadsheet</text>
              <text x="380" y="68" font-size="11" fill="#9b99b8">does the maths</text>
              <rect x="470" y="20" width="120" height="64" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="530" y="47" font-weight="700">AI reviews</text>
              <text x="530" y="68" font-size="11" fill="#9b99b8">risks and drafts</text>
              <rect x="620" y="20" width="120" height="64" rx="10" fill="#27274e" stroke="#f59e0b" stroke-width="2"/>
              <text x="680" y="47" font-weight="700">You check</text>
              <text x="680" y="68" font-size="11" fill="#9b99b8">then share</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#sfc2a)">
                <line x1="142" y1="52" x2="164" y2="52"/>
                <line x1="292" y1="52" x2="314" y2="52"/>
                <line x1="442" y1="52" x2="464" y2="52"/>
                <line x1="592" y1="52" x2="614" y2="52"/>
              </g>
              <rect x="20" y="110" width="350" height="156" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="195" y="136" font-weight="700" fill="#6ee7b7">AI helps with</text>
              <g font-size="12" text-anchor="start">
                <text x="40" y="164">• Spot messy stage names and gaps</text>
                <text x="40" y="190">• Flag risky deals, like old activity</text>
                <text x="40" y="216">• Draft a short summary for Arjun</text>
                <text x="40" y="242">• Explain a formula in plain words</text>
              </g>
              <rect x="390" y="110" width="350" height="156" rx="10" fill="#1f1f44" stroke="#f87171"/>
              <text x="565" y="136" font-weight="700" fill="#fca5a5">AI must not</text>
              <g font-size="12" text-anchor="start">
                <text x="410" y="164">• Invent deals, amounts or dates</text>
                <text x="410" y="190">• Guess stage probabilities</text>
                <text x="410" y="216">• Be your final calculator</text>
                <text x="410" y="242">• Receive private customer data</text>
              </g>
            </g>
          </svg>
          <figcaption>The spreadsheet does the maths. AI reviews and writes. You check everything before you share it.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Three jobs AI does well</h3>
          <table class="lc-table">
            <thead><tr><th>Job</th><th>LedgerLite example</th><th>What you still check</th></tr></thead>
            <tbody>
              <tr><td><strong>Cleaning data</strong></td><td>AI notices that the stage column has "proposal", "Proposal Sent" and "Proposal sent". It suggests one name and a formula to fix them.</td><td>Did the fix change any amounts or dates? Count the rows before and after.</td></tr>
              <tr><td><strong>Spotting risks</strong></td><td>AI points out that Maple Interiors (₹2,00,000, Negotiation) has had no call or email since 2 August.</td><td>Open the deal in the CRM. Is the date right? Maybe a call was not logged.</td></tr>
              <tr><td><strong>Drafting commentary</strong></td><td>AI writes a short note for Arjun: the forecast, the gap to target and the three biggest risks.</td><td>Every number in the note must match your spreadsheet exactly.</td></tr>
            </tbody>
          </table>
          <p>AI can also explain a formula such as SUMPRODUCT in simple words. It can suggest questions to ask a rep about a deal. Both save time, and both are easy to check.</p>
        </div>
        <div class="lc-card">
          <h3>Why AI must not make up the numbers</h3>
          <p>An AI chat assistant writes its answer word by word, based on patterns. It does not always do exact maths, even when the answer sounds sure. If data is missing, it may fill the gap with a number that looks real. In a forecast, one wrong total can lead to a wrong hiring or cash decision.</p>
          <p>So use this rule: <strong>numbers come from your CRM and your spreadsheet</strong>. AI may only use numbers you give it, and it should say "not in the data" when something is missing. Some AI tools can run calculations or read files. Even then, check the result in your own sheet.</p>
          <p>A weak prompt invites the AI to guess:</p>
          <pre><code>Here is our pipeline. How much will we sell this quarter?</code></pre>
          <p>A better prompt limits the AI to the data and to the job:</p>
          <pre><code>You are helping me review a sales pipeline.
        Use only the data I paste below.
        Do not calculate totals or a forecast. I will do the maths in my spreadsheet.
        Do not add deals, amounts, dates or probabilities that are not in the data.
        Task: list the deals that look risky and say why. Use these checks:
        - no activity for more than 30 days
        - close date already passed
        - large deal still in an early stage
        If something is missing, write "not in the data".
        [paste the table here]</code></pre>
        </div>
        <div class="lc-card">
          <h3>Keep customer data safe</h3>
          <ul class="lc-list">
            <li><strong>Remove personal details</strong> before you paste. Delete contact names, phone numbers and email addresses. For a risk review, you only need the deal ID, stage, amount and dates.</li>
            <li><strong>Use the AI tool your company approves.</strong> Business plans of AI tools often have stronger data settings than free personal accounts. Check your tool's current privacy settings and help pages.</li>
            <li><strong>Know the law in general.</strong> In India, the DPDP Act 2023 and the DPDP Rules 2025 set rules for personal data. Examples are consent and using data only for its stated purpose. Many of these duties start in stages, so check the current position. Other places have their own laws, such as the GDPR in Europe. This is general information, not legal advice. Ask your company's legal adviser for real decisions.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Activity: Kavya's AI risk review</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Kavya asks">"Here are our 12 open deals for October to December. I removed all contact details. Which deals look risky? Also give me the weighted total."</li>
              <li data-kind="answer" data-label="AI replies">"Maple Interiors is the biggest risk: no activity since 2 August, and it should close on 31 October. Patel Auto Parts and Metro Pharma are large but still at Qualified. Weighted total: ₹7,98,000."</li>
              <li data-kind="thought" data-label="Kavya thinks">The risk list is useful. But the total is a number the AI worked out by itself. I must check it before I use it.</li>
              <li data-kind="tool" data-label="Spreadsheet">Kavya types =SUMPRODUCT(E2:E13,I2:I13). Column E has the amounts and column I has the stage probabilities.</li>
              <li data-kind="result" data-label="Result">773000. The real weighted total is ₹7,73,000.</li>
              <li data-kind="warn" data-label="Mistake caught">The AI's total was ₹25,000 too high. If Kavya had copied it into her report, Arjun would plan with a wrong number. She uses the spreadsheet number.</li>
              <li data-kind="check" data-label="Kavya checks">She opens Maple Interiors in the CRM. The last logged call really was on 2 August. She books a call with the buyer for this week.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to review six LedgerLite deals for risk, without letting it calculate anything. Replace the deals in [brackets] with your own, after you remove private details.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a careful sales operations analyst. Review my open pipeline for risks.

        Today: [1 October 2026]. Quarter ends: [31 December 2026].
        Deals (ID | stage | amount ₹ | close date | last activity):
        [D-101 | Negotiation | 120000 | 15 Oct 2026 | 26 Sep 2026
        D-104 | Demo done | 150000 | 20 Nov 2026 | 18 Sep 2026
        D-105 | Qualified | 240000 | 15 Dec 2026 | 12 Sep 2026
        D-107 | Negotiation | 200000 | 31 Oct 2026 | 2 Aug 2026
        D-109 | Qualified | 300000 | 20 Dec 2026 | 5 Sep 2026
        D-111 | Verbal yes | 85000 | 7 Oct 2026 | 30 Sep 2026]

        Tasks:
        1. Make a table: deal ID, days since last activity, risk level (high, medium or low), reason, one next step.
        2. Use these checks: no activity for more than 30 days, close date soon but stage early, very large deal in an early stage.
        3. Write 3 questions I should ask the deal owners.

        Rules:
        - Use only the data above. Do not invent customer details.
        - Do not calculate a forecast or any totals.
        - If you are not sure about something, say so.</pre>
            <ul class="ai-try-checks">
              <li>Is D-107 marked high risk, with 60 days since the last activity (2 August to 1 October)?</li>
              <li>Count a few days yourself. D-109 is 26 days, so it should not fail the 30-day check.</li>
              <li>Did the AI avoid adding totals, a forecast or facts about the customers?</li>
              <li>Is each next step specific, such as "call the buyer to confirm the close date"?</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Let AI read, sort, question and write. Let the spreadsheet calculate. Keep the final numbers and decisions for yourself. If AI gives you a number, check it in your sheet before you use it.
        </div>
      HTML
      starter_code: nil
    },
    3 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-sales">Sales & CRM</div>
          <h1 class="lc-title">Key Sales Metrics</h1>
        </div>
        <p class="lc-lead">Every forecast is built from a few key numbers, called <strong>sales metrics</strong>. In this lesson you will learn five of them: pipeline value, win rate, average deal size, sales cycle length and pipeline coverage. For each one, you will see what it means, how to calculate it, and a worked example with LedgerLite's data. When you know these well, you can spot mistakes in any forecast, including ones made by AI.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 220" role="img" aria-label="A LedgerLite dashboard with five tiles: pipeline value 16,80,000 rupees from 12 open deals; win rate 25 percent, 28 won of 112 closed; average deal size 95,000 rupees from 28 won deals; sales cycle 52 days from created to won; pipeline coverage 1.87 times against a 9,00,000 rupee target.">
            <g font-family="inherit" font-size="12.5" fill="#e2e0f0" text-anchor="middle">
              <text x="20" y="24" font-size="12" fill="#9b99b8" text-anchor="start">LedgerLite dashboard · Q3 FY27 (Oct to Dec 2026) · data from 1 Oct 2026</text>
              <rect x="20" y="40" width="136" height="130" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="88" y="64" font-weight="700">Pipeline value</text>
              <text x="88" y="100" font-size="19" font-weight="700" fill="#93c5fd">₹16,80,000</text>
              <text x="88" y="124" font-size="11" fill="#9b99b8">12 open deals</text>
              <text x="88" y="154" font-size="10.5" fill="#9b99b8">sum of open amounts</text>
              <rect x="166" y="40" width="136" height="130" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="234" y="64" font-weight="700">Win rate</text>
              <text x="234" y="100" font-size="19" font-weight="700" fill="#6ee7b7">25%</text>
              <text x="234" y="124" font-size="11" fill="#9b99b8">28 won of 112</text>
              <text x="234" y="154" font-size="10.5" fill="#9b99b8">won ÷ (won + lost)</text>
              <rect x="312" y="40" width="136" height="130" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="380" y="64" font-weight="700">Avg deal size</text>
              <text x="380" y="100" font-size="19" font-weight="700" fill="#c4b5fd">₹95,000</text>
              <text x="380" y="124" font-size="11" fill="#9b99b8">28 won deals</text>
              <text x="380" y="154" font-size="10.5" fill="#9b99b8">won ₹ ÷ won deals</text>
              <rect x="458" y="40" width="136" height="130" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="526" y="64" font-weight="700">Sales cycle</text>
              <text x="526" y="100" font-size="19" font-weight="700" fill="#f9a8d4">52 days</text>
              <text x="526" y="124" font-size="11" fill="#9b99b8">created to won</text>
              <text x="526" y="154" font-size="10.5" fill="#9b99b8">average of won deals</text>
              <rect x="604" y="40" width="136" height="130" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="672" y="64" font-weight="700">Coverage</text>
              <text x="672" y="100" font-size="19" font-weight="700" fill="#fcd34d">1.87x</text>
              <text x="672" y="124" font-size="11" fill="#9b99b8">vs ₹9,00,000 target</text>
              <text x="672" y="154" font-size="10.5" fill="#9b99b8">pipeline ÷ target</text>
              <text x="380" y="202" font-size="12" fill="#9b99b8">Each number needs a clear rule: which deals, which dates and which formula.</text>
            </g>
          </svg>
          <figcaption>Five metrics give a quick health check of a sales pipeline.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The five metrics</h3>
          <table class="lc-table">
            <thead><tr><th>Metric</th><th>What it means</th><th>How to calculate it</th><th>LedgerLite</th></tr></thead>
            <tbody>
              <tr><td><strong>Pipeline value</strong></td><td>The total amount of all open deals expected to close in a period</td><td>Add up the amounts of open deals with a close date in the period</td><td>12 deals = ₹16,80,000</td></tr>
              <tr><td><strong>Win rate</strong></td><td>Out of the deals you finished, the share you won</td><td>Won deals ÷ (won deals + lost deals)</td><td>28 ÷ (28 + 84) = 28 ÷ 112 = 25%</td></tr>
              <tr><td><strong>Average deal size</strong></td><td>How much a typical won deal is worth</td><td>Value of won deals ÷ number of won deals</td><td>₹26,60,000 ÷ 28 = ₹95,000</td></tr>
              <tr><td><strong>Sales cycle length</strong></td><td>How many days a deal usually takes, from creation in the CRM to a win</td><td>Average of (close date − created date) for won deals</td><td>52 days</td></tr>
              <tr><td><strong>Pipeline coverage</strong></td><td>How many times the target your open pipeline covers</td><td>Pipeline value for the period ÷ target for the period</td><td>₹16,80,000 ÷ ₹9,00,000 = 1.87x</td></tr>
            </tbody>
          </table>
          <p>You can also calculate win rate <strong>by value</strong>: won value ÷ (won value + lost value). For LedgerLite this is ₹26,60,000 ÷ ₹1,12,00,000 = 23.75%. It is lower than 25% because LedgerLite loses more of its big deals. Always say which version you use.</p>
          <p>The sales cycle helps you plan too. A new deal takes about 52 days on average. So a deal created after 9 November will usually not close by 31 December.</p>
          <p>Is 1.87x coverage enough? It depends on your win rate and on how far your deals have moved. A later lesson shows you how to judge it.</p>
        </div>
        <div class="lc-card">
          <h3>Worked example: the last four quarters</h3>
          <p>Here is LedgerLite's closed deal history. Put it in a sheet with the quarters in rows 2 to 5.</p>
          <table class="lc-table">
            <thead><tr><th>A: Quarter</th><th>B: Won deals</th><th>C: Won value ₹</th><th>D: Lost deals</th><th>E: Lost value ₹</th></tr></thead>
            <tbody>
              <tr><td>Q3 FY26 (Oct to Dec 2025)</td><td>6</td><td>5,40,000</td><td>20</td><td>19,40,000</td></tr>
              <tr><td>Q4 FY26 (Jan to Mar 2026)</td><td>8</td><td>7,80,000</td><td>21</td><td>21,60,000</td></tr>
              <tr><td>Q1 FY27 (Apr to Jun 2026)</td><td>7</td><td>6,30,000</td><td>22</td><td>22,50,000</td></tr>
              <tr><td>Q2 FY27 (Jul to Sep 2026)</td><td>7</td><td>7,10,000</td><td>21</td><td>21,90,000</td></tr>
              <tr><td><strong>Total</strong></td><td><strong>28</strong></td><td><strong>26,60,000</strong></td><td><strong>84</strong></td><td><strong>85,40,000</strong></td></tr>
            </tbody>
          </table>
          <pre><code>Win rate (count):  =SUM(B2:B5)/(SUM(B2:B5)+SUM(D2:D5))   → 0.25 (25%)
        Win rate (value):  =SUM(C2:C5)/(SUM(C2:C5)+SUM(E2:E5))   → 0.2375 (23.75%)
        Avg deal size:     =SUM(C2:C5)/SUM(B2:B5)                → 95000</code></pre>
          <p>For the sales cycle, list the won deals in another sheet. Put the created date in column B and the won date in column C. In D2, type <code>=C2-B2</code> and copy it down. Then use <code>=AVERAGE(D2:D29)</code> for the 28 deals. If the answer shows as a date, change the cell format to a number.</p>
          <p>Notice that Q4 FY26 (January to March) is LedgerLite's best quarter. Small businesses often buy accounting software before the financial year ends on 31 March. A pattern that repeats at the same time each year is called <strong>seasonality</strong>.</p>
        </div>
        <div class="lc-card">
          <h3>Common mistakes to avoid</h3>
          <ul class="lc-list">
            <li><strong>Counting open deals in the win rate.</strong> 28 ÷ (112 + 12) = 22.6% is wrong. Open deals are not decided yet, so leave them out.</li>
            <li><strong>Using open deals for average deal size.</strong> The 12 open deals average ₹1,40,000. That is not your average deal size, because many of them will be lost or get smaller. Use won deals: ₹95,000.</li>
            <li><strong>Mixing time periods.</strong> Use the same period for wins and losses. Do not compare a 3-month pipeline with a 12-month target.</li>
            <li><strong>Counting the wrong deals in coverage.</strong> Only count open deals with a close date inside the period.</li>
            <li><strong>Mixing up win rate and conversion rate.</strong> A <em>stage conversion rate</em> is the share of deals that move from one stage to the next. For example, 80 LedgerLite deals reached Demo done last year, and 56 of them reached Proposal sent. That is 56 ÷ 80 = 70%.</li>
          </ul>
          <p>AI can help here. Paste your definitions and ask, "Is anything unclear or wrong in how I calculate these metrics?" Then do the actual maths in your sheet.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: which metric answers the question?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Each person has a question. Which metric answers it?</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="win" data-label="Win rate"></div>
              <div data-sorter-target="bucket" data-bucket="size" data-label="Average deal size"></div>
              <div data-sorter-target="bucket" data-bucket="cycle" data-label="Sales cycle length"></div>
              <div data-sorter-target="bucket" data-bucket="cover" data-label="Pipeline coverage"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="win" data-why="Won ÷ (won + lost) answers this. Only finished deals count.">Arjun: "Of the 112 deals we finished last year, what share did we win?"</li>
              <li data-bucket="size" data-why="Won value ÷ won deals tells you what a typical win is worth.">Kavya: "When a small business buys from us, how much does it usually pay?"</li>
              <li data-bucket="cycle" data-why="The average days from creation to a win tells you if there is enough time left.">Kavya: "If I create a new deal on 20 November, can it close by 31 December?"</li>
              <li data-bucket="cover" data-why="Coverage compares open pipeline with the target for the same period.">Arjun: "Do we have enough open deals to reach ₹9,00,000 this quarter?"</li>
              <li data-bucket="win" data-why="He won 3 of the 12 decided bids. That is a win rate of 25%.">Rohit: "Nimbus Logistics won 3 of the 12 decided bids last month. How did we do?"</li>
              <li data-bucket="size" data-why="Higher prices change how much each win brings in, which is average deal size.">Sweet Crumbs: "If we add a premium tea box, will each office order bring in more money?"</li>
              <li data-bucket="cycle" data-why="This is about how long deals take from start to finish.">Arjun: "Are our deals taking longer to close than they did last year?"</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to calculate your key metrics and show every step, so you can check the working. Use your own numbers in [brackets], or keep LedgerLite's.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a patient sales analyst. Calculate my key sales metrics and show every step.

        My data for [the last 4 quarters]:
        - Closed won: [28] deals worth ₹[26,60,000]
        - Closed lost: [84] deals worth ₹[85,40,000]
        - Days from created to won, for [5] sample won deals: [38, 45, 52, 60, 65]
        - Open deals closing next quarter: [12] deals worth ₹[16,80,000]
        - Next quarter's target: ₹[9,00,000]

        Tasks:
        1. Calculate: win rate by count, win rate by value, average deal size, average sales cycle for the sample, and pipeline coverage.
        2. For each metric, show the formula in words, the numbers you used and the answer.
        3. Give an Excel or Google Sheets formula for each one.
        4. Explain in one sentence what each number tells me.

        Rules:
        - Win rate uses closed deals only (won + lost). Never include open deals.
        - Average deal size uses won deals only.
        - Round money to the nearest rupee and percentages and ratios to one decimal place.
        - Do not invent benchmarks for what is "good".</pre>
            <ul class="ai-try-checks">
              <li>With the example data: win rate 25.0% by count and 23.8% by value.</li>
              <li>Average deal size ₹95,000 and average sales cycle 52 days (260 ÷ 5).</li>
              <li>Coverage 1.9x (1.87 before rounding). Check each one with a calculator.</li>
              <li>Did the AI leave the 12 open deals out of the win rate?</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A metric is only useful when everyone uses the same rule. Write down which deals, which dates and which formula you use for each metric. Then calculate it the same way every quarter.
        </div>
      HTML
      starter_code: nil
    },
    4 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-sales">Sales & CRM</div>
          <h1 class="lc-title">Getting Your Data Ready</h1>
        </div>
        <p class="lc-lead">A forecast is only as good as the data behind it. Real CRM exports have extra spaces, stage names typed in different ways, amounts saved as text, duplicate deals and missing close dates. In this lesson you will learn what to export from your CRM. You will find and fix common problems with spreadsheet formulas. You will also see how AI can help without changing your numbers.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 280" role="img" aria-label="Before and after. Left: a raw CRM export with a lower-case company name, a duplicate row, a misspelled stage with an amount written as 2 lakh, and a missing close date. Right: the clean sheet with fixed names, the duplicate removed, a numeric amount and a close date confirmed by the rep. Below: six common problems.">
            <defs><marker id="sfc4a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="185" y="28" font-weight="700" fill="#fca5a5">Raw CRM export</text>
              <text x="575" y="28" font-weight="700" fill="#6ee7b7">Clean sheet</text>
              <rect x="20" y="40" width="330" height="170" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <rect x="410" y="40" width="330" height="170" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <g stroke="#4b4a78" stroke-width="1">
                <line x1="30" y1="92" x2="340" y2="92"/><line x1="30" y1="126" x2="340" y2="126"/><line x1="30" y1="160" x2="340" y2="160"/>
                <line x1="420" y1="92" x2="730" y2="92"/><line x1="420" y1="126" x2="730" y2="126"/><line x1="420" y1="160" x2="730" y2="160"/>
              </g>
              <g font-size="11.5" text-anchor="start">
                <text x="34" y="80">tulsi textiles | negotiation | Rs 1,20,000</text>
                <text x="34" y="114">Tulsi Textiles | Negotiation | 120000</text>
                <text x="34" y="148">Maple Interiors | Negotiatn | 2 lakh</text>
                <text x="34" y="182">Kaveri Traders | Verbal Yes | 85,000 | (blank)</text>
                <text x="424" y="80">Tulsi Textiles | Negotiation | 120000</text>
                <text x="424" y="114" fill="#9b99b8">(duplicate row removed)</text>
                <text x="424" y="148">Maple Interiors | Negotiation | 200000</text>
                <text x="424" y="182">Kaveri Traders | Verbal yes | 85000 | 7 Oct</text>
              </g>
              <line x1="354" y1="125" x2="402" y2="125" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#sfc4a)"/>
              <text x="379" y="115" font-size="11" fill="#9b99b8">clean</text>
              <g font-size="11.5">
                <rect x="20" y="236" width="112" height="28" rx="14" fill="#27274e" stroke="#f59e0b"/><text x="76" y="255">extra spaces</text>
                <rect x="141" y="236" width="112" height="28" rx="14" fill="#27274e" stroke="#f59e0b"/><text x="197" y="255">mixed case</text>
                <rect x="262" y="236" width="112" height="28" rx="14" fill="#27274e" stroke="#f59e0b"/><text x="318" y="255">text amounts</text>
                <rect x="383" y="236" width="112" height="28" rx="14" fill="#27274e" stroke="#f59e0b"/><text x="439" y="255">stage typos</text>
                <rect x="504" y="236" width="112" height="28" rx="14" fill="#27274e" stroke="#f59e0b"/><text x="560" y="255">duplicates</text>
                <rect x="625" y="236" width="115" height="28" rx="14" fill="#27274e" stroke="#f59e0b"/><text x="682" y="255">missing dates</text>
              </g>
            </g>
          </svg>
          <figcaption>Clean the export first. Then every formula and every AI answer works from the same correct data.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>What to export from your CRM</h3>
          <p>Most CRMs, such as Zoho CRM, HubSpot, Salesforce and Freshsales, let you build a deals report and export it as a CSV or Excel file. The menus differ, and you may need admin permission. Check your CRM's current help pages. Export these columns:</p>
          <table class="lc-table">
            <thead><tr><th>Column</th><th>Why the forecast needs it</th></tr></thead>
            <tbody>
              <tr><td>Deal ID</td><td>Finds duplicates. Company names can be typed in different ways, but IDs do not change.</td></tr>
              <tr><td>Company, owner</td><td>Lets you total by rep and ask the right person about a deal.</td></tr>
              <tr><td>Stage, amount</td><td>Needed for pipeline value and the weighted forecast.</td></tr>
              <tr><td>Close date</td><td>Decides which quarter the deal counts in.</td></tr>
              <tr><td>Created date, last activity date</td><td>Needed for sales cycle length and for spotting stale deals (deals with no recent contact).</td></tr>
              <tr><td>Status: open, won or lost</td><td>Keeps closed deals out of the open pipeline.</td></tr>
            </tbody>
          </table>
          <p>Save the file without changes, for example as <code>raw_export_2026-10-01</code>. Do all cleaning in a copy. Then you can always go back to the original.</p>
        </div>
        <div class="lc-card">
          <h3>Common problems and formula fixes</h3>
          <p>These formulas work in both Excel and Google Sheets. In the examples, column A is the deal ID, B is the company, D is the stage and E is the amount. F is the close date and H is the last activity date. Your list of allowed stage names is in L2:L6.</p>
          <table class="lc-table">
            <thead><tr><th>Problem</th><th>Example</th><th>Formula</th><th>Result</th></tr></thead>
            <tbody>
              <tr><td>Extra spaces</td><td>" Tulsi Textiles "</td><td><code>=TRIM(B2)</code></td><td>Tulsi Textiles</td></tr>
              <tr><td>Amount saved as text</td><td>Rs 1,20,000</td><td><code>=VALUE(TRIM(SUBSTITUTE(SUBSTITUTE(E2,"Rs",""),",","")))</code></td><td>120000</td></tr>
              <tr><td>Stage not in your list</td><td>Negotiatn</td><td><code>=COUNTIF($L$2:$L$6,TRIM(D2))=0</code></td><td>TRUE means "fix this stage"</td></tr>
              <tr><td>Duplicate deal</td><td>D-101 appears twice</td><td><code>=COUNTIF($A$2:$A$14,A2)&gt;1</code></td><td>TRUE on both rows</td></tr>
              <tr><td>Missing or past close date</td><td>(blank)</td><td><code>=IF(F2="","Missing",IF(F2&lt;DATE(2026,10,1),"Past","OK"))</code></td><td>Missing</td></tr>
              <tr><td>Date saved as text</td><td>"15/10/2026" typed as text</td><td><code>=ISNUMBER(F2)</code></td><td>FALSE means it is text, not a real date</td></tr>
              <tr><td>Days since last activity</td><td>2 Aug 2026</td><td><code>=DATE(2026,10,1)-H2</code></td><td>60</td></tr>
            </tbody>
          </table>
          <ul class="lc-list">
            <li>If your amounts use the ₹ sign, add one more SUBSTITUTE to remove "₹" as well.</li>
            <li>Some amounts cannot be fixed with a formula. "2 lakh" means 2,00,000, but type it by hand and check it with the rep.</li>
            <li>Dates are tricky. 05/10/2026 is 5 October in India but May 10 in the USA. Set your spreadsheet's locale (region setting) to India, and check a few dates by eye.</li>
            <li>Stop typos at the source. Use a drop-down list for the stage field in your CRM or sheet.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>How AI helps, and where to stop it</h3>
          <p>AI is useful for finding problems and writing formulas. It is risky when it retypes your data. A long pasted table can come back with a missing row or a changed number.</p>
          <table class="lc-table">
            <thead><tr><th>Good use of AI</th><th>Risky use of AI</th></tr></thead>
            <tbody>
              <tr><td>"List every problem you see in these rows, and suggest a fix."</td><td>"Clean this table and give it back to me."</td></tr>
              <tr><td>"Write a formula that flags close dates before 1 October 2026."</td><td>"Fill in the missing close dates."</td></tr>
              <tr><td>"Map these messy stage names to my five allowed stages."</td><td>"Guess the amount for deals where it is blank."</td></tr>
            </tbody>
          </table>
          <p>Always check control totals. A <strong>control total</strong> is a count or sum you compare before and after cleaning. Kavya's raw export had 13 rows. She removed one duplicate, so 12 deals remain. The amount total, <code>=SUM(E2:E13)</code>, is ₹16,80,000. That matches the CRM's own pipeline report, so nothing was lost.</p>
          <p>Only the deal owner can give a missing close date or amount. Never let AI or yourself guess them. Also remove contact names, phone numbers and emails before you paste anything into an AI tool.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: put the cleaning steps in order</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Kavya is preparing LedgerLite's pipeline for the Q3 forecast. Put her steps in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Export open and closed deals from the CRM, and save an untouched copy</li>
              <li data-order="2">Delete contact names, phone numbers and emails from the working copy</li>
              <li data-order="3">Fix spaces, stage names and text amounts with formulas</li>
              <li data-order="4">Remove duplicate rows and move closed deals out of the open pipeline</li>
              <li data-order="5">Flag missing or past close dates and ask each deal owner to confirm them</li>
              <li data-order="6">Check the row count and the amount total against the CRM's pipeline report</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Paste a small messy export and ask AI to list the problems and suggest formulas, without changing any numbers. Replace the rows in [brackets] with your own, after you remove private details.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a careful CRM data analyst. Check this pipeline export before I use it for a forecast.

        Forecast quarter: [1 October to 31 December 2026]
        Allowed stages: [Qualified, Demo done, Proposal sent, Negotiation, Verbal yes]
        Export (row | ID | company | stage | amount | close date | owner):
        [2 | D-101 | tulsi textiles | negotiation | Rs 1,20,000 | 15/10/2026 | Kavya
        3 | D-101 | Tulsi Textiles | Negotiation | 120000 | 15/10/2026 | Kavya
        4 | D-107 | Maple Interiors | Negotiatn | 2 lakh | 31/10/2026 | Arjun
        5 | D-110 | Bright Minds Tuition | Proposal Sent | 45,000 | 25/10/2026 | Kavya
        6 | D-111 | Kaveri Traders | Verbal Yes | 85000 |  | Kavya
        7 | D-113 | Royal Sweets | Closed won | 50000 | 28/09/2026 | Kavya]

        Tasks:
        1. Make a table: row, problem, suggested fix.
        2. Give Excel or Google Sheets formulas for the fixes that a formula can do.
        3. List the questions I must ask each deal owner.

        Rules:
        - Do not change or guess any amount or date. Flag it instead.
        - Do not remove rows yourself. Tell me which rows to remove and why.</pre>
            <ul class="ai-try-checks">
              <li>Does it find the duplicate D-101 (rows 2 and 3) and suggest keeping one?</li>
              <li>Does it flag "2 lakh" and the blank close date for Kaveri Traders as questions for the owner, not guesses?</li>
              <li>Does it say row 7 is a closed deal from September, so it does not belong in the open pipeline?</li>
              <li>Test one suggested formula, such as TRIM or SUBSTITUTE, in your own sheet.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Clean data first, forecast second. Keep the raw export untouched, fix problems with formulas you can see, and check the row count and total after every change. Ask people for missing facts. Never guess them.
        </div>
      HTML
      starter_code: nil
    },
    5 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-sales">Sales & CRM</div>
          <h1 class="lc-title">Weighted Pipeline Forecasts</h1>
        </div>
        <p class="lc-lead">Not every open deal will close. A <strong>weighted pipeline forecast</strong> multiplies each deal's amount by the chance that deals at its stage are won. Then it adds up the results. In this lesson you will build LedgerLite's weighted forecast for October to December 2026 with SUMPRODUCT. You will learn where the stage probabilities come from. You will also see what the final number can and cannot tell you.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="A bar chart of LedgerLite's open pipeline by stage. Each stage shows the full amount as an outlined bar and the weighted amount as a filled bar. Qualified: 5,40,000 becomes 1,35,000. Demo done: 3,60,000 becomes 1,26,000. Proposal sent: 3,15,000 becomes 1,57,500. Negotiation: 3,20,000 becomes 2,24,000. Verbal yes: 1,45,000 becomes 1,30,500. Total: 16,80,000 open pipeline becomes a 7,73,000 weighted forecast, against a 9,00,000 target.">
            <g font-family="inherit" font-size="12.5" fill="#e2e0f0">
              <text x="20" y="22" fill="#9b99b8" font-size="12">LedgerLite open pipeline by stage, Q3 FY27</text>
              <rect x="520" y="12" width="16" height="11" fill="none" stroke="#f59e0b" stroke-width="1.5"/>
              <text x="542" y="22" font-size="11.5" fill="#9b99b8">Amount</text>
              <rect x="610" y="12" width="16" height="11" fill="#f59e0b"/>
              <text x="632" y="22" font-size="11.5" fill="#9b99b8">Weighted</text>
              <g text-anchor="end">
                <text x="150" y="59">Qualified · 25%</text>
                <text x="150" y="101">Demo done · 35%</text>
                <text x="150" y="143">Proposal sent · 50%</text>
                <text x="150" y="185">Negotiation · 70%</text>
                <text x="150" y="227">Verbal yes · 90%</text>
              </g>
              <g fill="none" stroke="#f59e0b" stroke-width="1.5">
                <rect x="160" y="44" width="400" height="22" rx="3"/>
                <rect x="160" y="86" width="266.7" height="22" rx="3"/>
                <rect x="160" y="128" width="233.3" height="22" rx="3"/>
                <rect x="160" y="170" width="237" height="22" rx="3"/>
                <rect x="160" y="212" width="107.4" height="22" rx="3"/>
              </g>
              <g fill="#f59e0b" fill-opacity="0.85">
                <rect x="160" y="44" width="100" height="22" rx="3"/>
                <rect x="160" y="86" width="93.3" height="22" rx="3"/>
                <rect x="160" y="128" width="116.7" height="22" rx="3"/>
                <rect x="160" y="170" width="165.9" height="22" rx="3"/>
                <rect x="160" y="212" width="96.7" height="22" rx="3"/>
              </g>
              <g font-size="11.5" fill="#e2e0f0">
                <text x="568" y="59">₹5,40,000 → ₹1,35,000</text>
                <text x="435" y="101">₹3,60,000 → ₹1,26,000</text>
                <text x="402" y="143">₹3,15,000 → ₹1,57,500</text>
                <text x="405" y="185">₹3,20,000 → ₹2,24,000</text>
                <text x="276" y="227">₹1,45,000 → ₹1,30,500</text>
              </g>
              <text x="380" y="266" text-anchor="middle" font-weight="700" font-size="13">Total: ₹16,80,000 open pipeline → ₹7,73,000 weighted forecast</text>
              <text x="380" y="288" text-anchor="middle" font-size="12" fill="#9b99b8">Target ₹9,00,000 · gap ₹1,27,000</text>
            </g>
          </svg>
          <figcaption>Early-stage deals shrink a lot when you weight them. Late-stage deals keep most of their value.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>How a weighted forecast works</h3>
          <pre><code>Weighted value of a deal = amount × stage probability
        Weighted forecast        = sum of all weighted values</code></pre>
          <p>A <strong>stage probability</strong> is the share of deals at that stage that you won in the past. LedgerLite uses these, based on its last four quarters:</p>
          <table class="lc-table">
            <thead><tr><th>L: Stage</th><th>M: Probability</th><th>Where it comes from</th></tr></thead>
            <tbody>
              <tr><td>Qualified</td><td>25%</td><td>All 112 closed deals started here, and 28 were won</td></tr>
              <tr><td>Demo done</td><td>35%</td><td>28 won out of 80 deals that reached this stage</td></tr>
              <tr><td>Proposal sent</td><td>50%</td><td>28 won out of 56 deals that reached this stage</td></tr>
              <tr><td>Negotiation</td><td>70%</td><td>28 won out of 40 deals that reached this stage</td></tr>
              <tr><td>Verbal yes</td><td>90%</td><td>28 won out of 31 deals (90.3%, rounded)</td></tr>
            </tbody>
          </table>
          <p>Use your own history, not numbers from a blog or an AI answer. Many CRMs fill in default probabilities for each stage. Check whether they match your real results. Update your probabilities every quarter or two. If you have very few closed deals, treat the probabilities as rough.</p>
        </div>
        <div class="lc-card">
          <h3>Worked forecast for LedgerLite</h3>
          <p>These are the 12 open deals from the CRM export on 1 October 2026. Each deal is in its own row, from row 2 to row 13.</p>
          <table class="lc-table">
            <thead><tr><th>Company (B)</th><th>Stage (D)</th><th>Amount ₹ (E)</th><th>Close date</th><th>Owner</th><th>Prob (I)</th><th>Weighted ₹ (J)</th></tr></thead>
            <tbody>
              <tr><td>Tulsi Textiles, Gujarat</td><td>Negotiation</td><td>1,20,000</td><td>15 Oct</td><td>Kavya</td><td>70%</td><td>84,000</td></tr>
              <tr><td>GreenLeaf Organics, Maharashtra</td><td>Proposal sent</td><td>90,000</td><td>31 Oct</td><td>Kavya</td><td>50%</td><td>45,000</td></tr>
              <tr><td>Shree Ganesh Hardware, Madhya Pradesh</td><td>Verbal yes</td><td>60,000</td><td>10 Oct</td><td>Kavya</td><td>90%</td><td>54,000</td></tr>
              <tr><td>Coastal Spices, Kerala</td><td>Demo done</td><td>1,50,000</td><td>20 Nov</td><td>Arjun</td><td>35%</td><td>52,500</td></tr>
              <tr><td>Patel Auto Parts, Gujarat</td><td>Qualified</td><td>2,40,000</td><td>15 Dec</td><td>Kavya</td><td>25%</td><td>60,000</td></tr>
              <tr><td>Lotus Diagnostics, Telangana</td><td>Proposal sent</td><td>1,80,000</td><td>30 Nov</td><td>Arjun</td><td>50%</td><td>90,000</td></tr>
              <tr><td>Maple Interiors, Punjab</td><td>Negotiation</td><td>2,00,000</td><td>31 Oct</td><td>Arjun</td><td>70%</td><td>1,40,000</td></tr>
              <tr><td>Sunrise Dairy, Gujarat</td><td>Demo done</td><td>75,000</td><td>15 Nov</td><td>Kavya</td><td>35%</td><td>26,250</td></tr>
              <tr><td>Metro Pharma Distributors, Uttar Pradesh</td><td>Qualified</td><td>3,00,000</td><td>20 Dec</td><td>Arjun</td><td>25%</td><td>75,000</td></tr>
              <tr><td>Bright Minds Tuition, Rajasthan</td><td>Proposal sent</td><td>45,000</td><td>25 Oct</td><td>Kavya</td><td>50%</td><td>22,500</td></tr>
              <tr><td>Kaveri Traders, Karnataka</td><td>Verbal yes</td><td>85,000</td><td>7 Oct</td><td>Kavya</td><td>90%</td><td>76,500</td></tr>
              <tr><td>Silverline Garments, Tamil Nadu</td><td>Demo done</td><td>1,35,000</td><td>10 Dec</td><td>Kavya</td><td>35%</td><td>47,250</td></tr>
              <tr><td><strong>Total</strong></td><td></td><td><strong>16,80,000</strong></td><td></td><td></td><td></td><td><strong>7,73,000</strong></td></tr>
            </tbody>
          </table>
          <p>The spreadsheet formulas (the stage table is in L2:M6):</p>
          <pre><code>Probability, in I2 (copy down to I13):  =VLOOKUP(D2,$L$2:$M$6,2,FALSE)
        Weighted value, in J2 (copy down):      =E2*I2
        Weighted forecast:                      =SUMPRODUCT(E2:E13,I2:I13)   → 773000
        Kavya's weighted deals:                 =SUMIF(G2:G13,"Kavya",J2:J13)  → 415500</code></pre>
          <p>SUMPRODUCT multiplies each amount by its probability and adds up all 12 results in one step. The owner is in column G. Arjun's deals come to ₹3,57,500, and ₹4,15,500 + ₹3,57,500 = ₹7,73,000. The forecast is ₹1,27,000 below the ₹9,00,000 target.</p>
          <p>You can also total by close month for cash planning: October ₹4,22,000, November ₹1,68,750 and December ₹1,82,250.</p>
        </div>
        <div class="lc-card">
          <h3>What the weighted number means, and what it does not</h3>
          <ul class="lc-list">
            <li><strong>It is an average, not a promise.</strong> Maple Interiors will bring either ₹0 or ₹2,00,000. It will never bring ₹1,40,000. The weighted number only works well across many deals.</li>
            <li><strong>Few deals mean big swings.</strong> With only 12 deals, one big win or loss moves the result a lot. Metro Pharma alone is ₹3,00,000.</li>
            <li><strong>Stale deals push it up.</strong> Maple Interiors has had no contact since 2 August. Without it, the forecast drops to ₹6,33,000.</li>
            <li><strong>Close dates matter.</strong> If a deal slips into January, it adds nothing to this quarter.</li>
          </ul>
          <p>So use the weighted forecast as a starting point. Then add the rep's judgement and a deal risk review, which you will learn later in this course. AI can help you explain the result. Try this prompt: "Here is my weighted forecast table. In 4 short bullet points for my founder, explain the total, the gap to target and the two deals with the biggest effect. Use only my numbers."</p>
        </div>
        <div class="lc-card">
          <h3>Activity: Kavya builds the forecast</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Kavya asks">"My stages are in column D and amounts in column E, rows 2 to 13. My stage probabilities are in L2:M6. Which formulas give each deal's probability and the weighted total?"</li>
              <li data-kind="answer" data-label="AI replies">"In I2, type =VLOOKUP(D2,$L$2:$M$6,2,FALSE) and copy it down to I13. Then the weighted total is =SUMPRODUCT(E2:E13,I2:I13)."</li>
              <li data-kind="tool" data-label="Google Sheets">Kavya types both formulas into her sheet.</li>
              <li data-kind="result" data-label="Result">Cell I11 shows #N/A, and so does the total.</li>
              <li data-kind="warn" data-label="Problem">The stage in D11 is "Proposal sent " with an extra space at the end. VLOOKUP cannot find it in the stage table.</li>
              <li data-kind="check" data-label="Kavya fixes it">She cleans the stage column with TRIM. The total now shows 773000. She checks one row by hand: Maple Interiors, 2,00,000 × 70% = 1,40,000. It matches.</li>
              <li data-kind="check" data-label="Kavya checks again">She adds up the stage totals from her stage summary: 1,35,000 + 1,26,000 + 1,57,500 + 2,24,000 + 1,30,500 = 7,73,000. Both methods agree.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to build a weighted forecast for six deals and give you the formulas. Then check its maths yourself. Use your own deals and probabilities in [brackets], or keep LedgerLite's.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a sales forecasting coach. Help me build a weighted pipeline forecast.

        Stage probabilities: [Qualified 25%, Demo done 35%, Proposal sent 50%, Negotiation 70%, Verbal yes 90%]
        Open deals closing this quarter (company | stage | amount ₹):
        [Tulsi Textiles | Negotiation | 120000
        GreenLeaf Organics | Proposal sent | 90000
        Coastal Spices | Demo done | 150000
        Patel Auto Parts | Qualified | 240000
        Maple Interiors | Negotiation | 200000
        Kaveri Traders | Verbal yes | 85000]
        Quarter target: ₹[9,00,000]

        Tasks:
        1. Make a table: company, stage, amount, probability, weighted value.
        2. Give the total pipeline and the total weighted forecast. Show the additions.
        3. Give spreadsheet formulas. Stage is in column B, amount in column C, rows 2 to 7, and my stage table is in F2:G6. Put the probability in column D with VLOOKUP, then the total with SUMPRODUCT.
        4. Name the deal with the biggest effect on the forecast, and say why.

        Rules:
        - Use only the probabilities above. Do not change them.
        - Check every multiplication twice.</pre>
            <ul class="ai-try-checks">
              <li>With the example data: total pipeline ₹8,85,000 and weighted forecast ₹4,58,000.</li>
              <li>Check the formulas: =VLOOKUP(B2,$F$2:$G$6,2,FALSE) and =SUMPRODUCT(C2:C7,D2:D7).</li>
              <li>The biggest effect is Maple Interiors (₹1,40,000 weighted).</li>
              <li>Recalculate the total in your own sheet before you use it anywhere.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A weighted forecast is amount × stage probability, added up with SUMPRODUCT. Base the probabilities on your own history, let the spreadsheet do the maths, and treat the result as a starting point, not a promise.
        </div>
      HTML
      starter_code: nil
    },
    6 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-sales">Sales & CRM</div>
          <h1 class="lc-title">Commit, Best Case and Pipeline Categories</h1>
        </div>
        <p class="lc-lead">A weighted forecast only knows a deal's stage. Your reps know much more. They know if the buyer has agreed a date, or has stopped replying. <strong>Forecast categories</strong> turn that knowledge into numbers. In this lesson you will learn the three common categories: Commit, Best case and Pipeline. You will write clear rules for them and place LedgerLite's 12 deals. Then you will roll up each rep's call into one team forecast.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="Three category boxes for LedgerLite in Q3 FY27. Commit: 2,65,000 rupees from 3 deals, date agreed and next step booked. Best case: 5,15,000 rupees from 4 deals, possible but not yet confirmed. Pipeline: 9,00,000 rupees from 5 deals, real but unlikely this quarter. Below, Kavya's and Arjun's calls roll up into a team view: commit 2,65,000, commit plus best case 7,80,000, weighted forecast 7,73,000 and target 9,00,000.">
            <defs><marker id="sfc6a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="20" y="22" font-size="12" fill="#9b99b8" text-anchor="start">LedgerLite forecast categories, Q3 FY27 (Oct to Dec 2026)</text>
              <rect x="20" y="36" width="230" height="92" rx="10" fill="#1f1f44" stroke="#10b981" stroke-width="2"/>
              <text x="135" y="60" font-weight="700">Commit</text>
              <text x="135" y="85" font-size="14" font-weight="700" fill="#6ee7b7">₹2,65,000 · 3 deals</text>
              <text x="135" y="110" font-size="11" fill="#9b99b8">Date agreed, next step booked</text>
              <rect x="265" y="36" width="230" height="92" rx="10" fill="#1f1f44" stroke="#f59e0b" stroke-width="2"/>
              <text x="380" y="60" font-weight="700">Best case</text>
              <text x="380" y="85" font-size="14" font-weight="700" fill="#fcd34d">₹5,15,000 · 4 deals</text>
              <text x="380" y="110" font-size="11" fill="#9b99b8">Possible, but not yet confirmed</text>
              <rect x="510" y="36" width="230" height="92" rx="10" fill="#1f1f44" stroke="#3b82f6" stroke-width="2"/>
              <text x="625" y="60" font-weight="700">Pipeline</text>
              <text x="625" y="85" font-size="14" font-weight="700" fill="#93c5fd">₹9,00,000 · 5 deals</text>
              <text x="625" y="110" font-size="11" fill="#9b99b8">Real deal, unlikely this quarter</text>
              <rect x="20" y="150" width="300" height="64" rx="10" fill="#27274e" stroke="#8b5cf6"/>
              <text x="170" y="174" font-weight="700">Kavya · quota ₹5,00,000</text>
              <text x="170" y="198" font-size="11.5" fill="#9b99b8">Commit ₹2,65,000 · Best case ₹1,35,000</text>
              <rect x="20" y="224" width="300" height="64" rx="10" fill="#27274e" stroke="#8b5cf6"/>
              <text x="170" y="248" font-weight="700">Arjun · quota ₹4,00,000</text>
              <text x="170" y="272" font-size="11.5" fill="#9b99b8">Commit ₹0 · Best case ₹3,80,000</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#sfc6a)">
                <line x1="322" y1="182" x2="434" y2="205"/>
                <line x1="322" y1="256" x2="434" y2="235"/>
              </g>
              <rect x="440" y="150" width="300" height="138" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="590" y="174" font-weight="700">Team roll-up</text>
              <g font-size="12" text-anchor="start">
                <text x="462" y="200">Commit call: <tspan fill="#6ee7b7">₹2,65,000</tspan></text>
                <text x="462" y="222">Commit + best case: <tspan fill="#fcd34d">₹7,80,000</tspan></text>
                <text x="462" y="244">Weighted forecast: ₹7,73,000</text>
                <text x="462" y="266" fill="#c4b5fd">Target: ₹9,00,000</text>
              </g>
            </g>
          </svg>
          <figcaption>Each rep puts every deal in one category. The manager adds up the categories for the team.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Stage and category are not the same</h3>
          <p>A <strong>stage</strong> says where a deal is in your sales steps, such as Demo done or Negotiation. A <strong>forecast category</strong> is the rep's judgement: will this deal close <em>in this quarter</em>? Two deals at the same stage can be in different categories.</p>
          <table class="lc-table">
            <thead><tr><th>Category</th><th>Plain meaning</th><th>LedgerLite's written rule</th></tr></thead>
            <tbody>
              <tr><td><strong>Commit</strong></td><td>"I am nearly sure this closes this quarter."</td><td>The buyer has agreed the price and a signing or payment date in the quarter. A next step with a date is booked. There was contact in the last 14 days.</td></tr>
              <tr><td><strong>Best case</strong></td><td>"This can close this quarter if things go well."</td><td>The buyer is interested, but one important thing is not confirmed yet. Examples are budget approval, a reply or a final decision maker.</td></tr>
              <tr><td><strong>Pipeline</strong></td><td>"This is a real deal, but probably not this quarter."</td><td>Early stage, no proposal yet, or the buyer has not agreed any timing.</td></tr>
            </tbody>
          </table>
          <p>For example, Tulsi Textiles and Maple Interiors are both in Negotiation. Tulsi has a signing meeting booked on 14 October, so it is Commit. Maple Interiors has not replied since 2 August, so it is Best case at most.</p>
          <p>Some teams add a fourth category, often called <strong>Omitted</strong>, for deals that will not close this quarter. It is usually better to move the close date to the right quarter instead. Many CRMs, such as Salesforce and HubSpot, have a forecast category field. Names and settings differ, so check your CRM's current help pages.</p>
        </div>
        <div class="lc-card">
          <h3>Worked example: LedgerLite's 12 deals</h3>
          <p>Kavya and Arjun put each deal in a category, using the written rules. Kavya adds the category in column K of her sheet.</p>
          <table class="lc-table">
            <thead><tr><th>Deal</th><th>Stage</th><th>Amount ₹</th><th>Owner</th><th>Category (K)</th><th>Reason</th></tr></thead>
            <tbody>
              <tr><td>Tulsi Textiles</td><td>Negotiation</td><td>1,20,000</td><td>Kavya</td><td>Commit</td><td>Signing meeting booked for 14 Oct</td></tr>
              <tr><td>Shree Ganesh Hardware</td><td>Verbal yes</td><td>60,000</td><td>Kavya</td><td>Commit</td><td>Purchase order expected on 8 Oct</td></tr>
              <tr><td>Kaveri Traders</td><td>Verbal yes</td><td>85,000</td><td>Kavya</td><td>Commit</td><td>Signing on 7 Oct</td></tr>
              <tr><td>GreenLeaf Organics</td><td>Proposal sent</td><td>90,000</td><td>Kavya</td><td>Best case</td><td>Owner is comparing one more quote</td></tr>
              <tr><td>Bright Minds Tuition</td><td>Proposal sent</td><td>45,000</td><td>Kavya</td><td>Best case</td><td>Director decides after 15 Oct</td></tr>
              <tr><td>Lotus Diagnostics</td><td>Proposal sent</td><td>1,80,000</td><td>Arjun</td><td>Best case</td><td>Finance head has not approved the budget</td></tr>
              <tr><td>Maple Interiors</td><td>Negotiation</td><td>2,00,000</td><td>Arjun</td><td>Best case</td><td>No reply since 2 Aug</td></tr>
              <tr><td>Coastal Spices</td><td>Demo done</td><td>1,50,000</td><td>Arjun</td><td>Pipeline</td><td>No proposal yet, next step not booked</td></tr>
              <tr><td>Sunrise Dairy</td><td>Demo done</td><td>75,000</td><td>Kavya</td><td>Pipeline</td><td>Wants a second demo for the accountant</td></tr>
              <tr><td>Silverline Garments</td><td>Demo done</td><td>1,35,000</td><td>Kavya</td><td>Pipeline</td><td>The partners still need to agree</td></tr>
              <tr><td>Patel Auto Parts</td><td>Qualified</td><td>2,40,000</td><td>Kavya</td><td>Pipeline</td><td>First demo booked for 8 Oct</td></tr>
              <tr><td>Metro Pharma Distributors</td><td>Qualified</td><td>3,00,000</td><td>Arjun</td><td>Pipeline</td><td>First demo not booked yet</td></tr>
            </tbody>
          </table>
          <p>Now roll up the categories. A <strong>roll-up</strong> adds each rep's numbers into one team view. The amounts are in column E and the owners in column G.</p>
          <pre><code>Commit total:          =SUMIF(K2:K13,"Commit",E2:E13)                   → 265000
        Best case total:       =SUMIF(K2:K13,"Best case",E2:E13)                → 515000
        Pipeline total:        =SUMIF(K2:K13,"Pipeline",E2:E13)                 → 900000
        Arjun's best case:     =SUMIFS(E2:E13,G2:G13,"Arjun",K2:K13,"Best case") → 380000
        Commit + best case:    =SUMIF(K2:K13,"Commit",E2:E13)+SUMIF(K2:K13,"Best case",E2:E13) → 780000</code></pre>
          <table class="lc-table">
            <thead><tr><th>Rep</th><th>Commit ₹</th><th>Best case ₹</th><th>Pipeline ₹</th><th>Total ₹</th><th>Quota ₹</th></tr></thead>
            <tbody>
              <tr><td>Kavya</td><td>2,65,000</td><td>1,35,000</td><td>4,50,000</td><td>8,50,000</td><td>5,00,000</td></tr>
              <tr><td>Arjun</td><td>0</td><td>3,80,000</td><td>4,50,000</td><td>8,30,000</td><td>4,00,000</td></tr>
              <tr><td><strong>Team</strong></td><td><strong>2,65,000</strong></td><td><strong>5,15,000</strong></td><td><strong>9,00,000</strong></td><td><strong>16,80,000</strong></td><td><strong>9,00,000</strong></td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>What the roll-up tells Arjun</h3>
          <ul class="lc-list">
            <li><strong>The commit call is ₹2,65,000.</strong> This is the number the team is nearly sure of. It is less than a third of the ₹9,00,000 target.</li>
            <li><strong>The best case call is ₹7,80,000</strong> (commit + best case). Even if every best case deal closes, the team is ₹1,20,000 short of the target.</li>
            <li><strong>Arjun has no Commit deals at all.</strong> His quota is ₹4,00,000. This is an early warning, three months before the quarter ends.</li>
            <li><strong>Compare with the weighted forecast of ₹7,73,000.</strong> Split it by category: Commit deals give ₹2,14,500, Best case ₹2,97,500 and Pipeline ₹2,61,000. So about one third of the weighted number comes from deals the reps think will probably not close this quarter.</li>
          </ul>
          <p>Many leaders ask for three numbers: commit, most likely and best case. The <strong>most likely</strong> call sits between commit and best case. It is the manager's judgement about which best case deals will really close. Always write down which deals you counted in it.</p>
          <p>Watch for two habits. <strong>Sandbagging</strong> means calling a lower number than you believe, so you look good later. <strong>Happy ears</strong> means hearing a "yes" when the buyer only showed interest. Written rules protect against both. Also track your commit accuracy every quarter: the value of Commit deals won ÷ the commit call.</p>
        </div>
        <div class="lc-card">
          <h3>How AI helps: checking calls against your rules</h3>
          <p>AI is good at comparing a rep's category with your written rules. It can spot deals that do not fit, and suggest questions. The rep and manager still make the final call.</p>
          <p>A weak prompt asks AI to decide for you:</p>
          <pre><code>Which of my deals will close this quarter?</code></pre>
          <p>A better prompt gives the rules and asks for a check:</p>
          <pre><code>Here are my forecast category rules and 12 deals with the rep's notes.
        For each deal, say if the rep's category follows the rules.
        If not, suggest the right category and quote the rule it breaks.
        Then list one question the manager should ask the rep.
        Do not change amounts or stages. Do not add any facts.</code></pre>
        </div>
        <div class="lc-card">
          <h3>Activity: which category fits?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Use LedgerLite's rules. Put each deal in the right forecast category for October to December 2026.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="commit" data-label="Commit"></div>
              <div data-sorter-target="bucket" data-bucket="best" data-label="Best case"></div>
              <div data-sorter-target="bucket" data-bucket="pipe" data-label="Pipeline"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="commit" data-why="The buyer agreed a signing date in the quarter, and there was recent contact. That meets every Commit rule.">Kaveri Traders, Verbal yes, ₹85,000. The owner will sign on 7 October. Kavya spoke to him yesterday.</li>
              <li data-bucket="best" data-why="Negotiation is a late stage, but 60 days of silence breaks the Commit rule. It can still close, so it is Best case at most.">Maple Interiors, Negotiation, ₹2,00,000. No reply to calls or emails since 2 August.</li>
              <li data-bucket="best" data-why="The buyer is interested, but the budget is not approved. One important thing is unconfirmed.">Lotus Diagnostics, Proposal sent, ₹1,80,000. The lab manager likes it, but the finance head has not approved the budget.</li>
              <li data-bucket="pipe" data-why="It is still early and no demo is booked. It is a real deal, but probably not this quarter.">Metro Pharma Distributors, Qualified, ₹3,00,000. The first demo is not booked yet.</li>
              <li data-bucket="commit" data-why="Price agreed, contract checked and a signing meeting booked. This is a strong Commit.">Tulsi Textiles, Negotiation, ₹1,20,000. Their CA has checked the contract. A signing meeting is booked for 14 October.</li>
              <li data-bucket="pipe" data-why="A second demo is needed before any proposal. The timing is not agreed.">Sunrise Dairy, Demo done, ₹75,000. The owner wants a second demo for his accountant first.</li>
              <li data-bucket="best" data-why="Rohit's deal is close, but the final approver has not said yes. That is Best case, not Commit.">Nimbus Logistics: an online store likes Rohit's delivery contract, but its CEO has not approved it yet.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to check a rep's forecast categories against written rules and to roll up the totals. Use your own deals and rules in [brackets], or keep LedgerLite's.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a fair sales manager reviewing a rep's forecast for [October to December 2026].

        My category rules:
        - Commit: price and a signing date agreed in the quarter, next step booked, contact in the last 14 days.
        - Best case: could close this quarter, but one key thing is unconfirmed (budget, approval or a reply).
        - Pipeline: early stage or no timing agreed.

        Deals (ID | stage | amount ₹ | rep's category | rep's note):
        [D-101 | Negotiation | 120000 | Commit | signing meeting booked 14 Oct
        D-103 | Verbal yes | 60000 | Commit | purchase order expected 8 Oct
        D-106 | Proposal sent | 180000 | Commit | finance head has not approved budget
        D-107 | Negotiation | 200000 | Commit | no reply since 2 Aug
        D-109 | Qualified | 300000 | Best case | first demo not booked
        D-111 | Verbal yes | 85000 | Commit | signing on 7 Oct]

        Tasks:
        1. Table: ID, rep's category, category by the rules, rule used.
        2. Totals by category, both the rep's version and the rules version. Show the additions.
        3. One question to ask the rep for each changed deal.

        Rules: do not change amounts or stages. Do not invent facts about the buyers.</pre>
            <ul class="ai-try-checks">
              <li>With the example data, D-106 and D-107 should move to Best case, and D-109 to Pipeline.</li>
              <li>Rules version: Commit ₹2,65,000, Best case ₹3,80,000, Pipeline ₹3,00,000.</li>
              <li>Rep's version: Commit ₹6,45,000 and Best case ₹3,00,000. Check the additions yourself.</li>
              <li>Are the questions specific and fair, not blaming the rep?</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Stages come from your process. Categories come from the rep's judgement, checked against written rules. Report commit, best case and the weighted number side by side. The differences between them tell leaders how sure the forecast really is.
        </div>
      HTML
      starter_code: nil
    },
    7 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-sales">Sales & CRM</div>
          <h1 class="lc-title">Historical and Trend Forecasts</h1>
        </div>
        <p class="lc-lead">A pipeline forecast looks at the deals you have now. A <strong>historical forecast</strong> looks at what you sold in the past. It then assumes the pattern will continue. In this lesson you will learn four simple methods: run rate, moving average, same quarter last year with growth, and a trend line. You will build each one for LedgerLite in a spreadsheet. Then you will compare them with the pipeline forecast. When the two views disagree, you learn something useful.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="Bar chart of LedgerLite's won value for five quarters: Q2 FY26 5,68,000 rupees, Q3 FY26 5,40,000, Q4 FY26 7,80,000, Q1 FY27 6,30,000, Q2 FY27 7,10,000, with a dashed target line at 9,00,000. A panel lists estimates for Q3 FY27: last quarter repeated 7,10,000; 4-quarter average 6,65,000; last year times growth 6,75,000; linear trend 7,55,000; weighted pipeline 7,73,000; target 9,00,000.">
            <g font-family="inherit" font-size="12" fill="#e2e0f0" text-anchor="middle">
              <text x="20" y="22" fill="#9b99b8" text-anchor="start">LedgerLite won value by quarter, and estimates for Q3 FY27</text>
              <line x1="25" y1="60" x2="380" y2="60" stroke="#8b5cf6" stroke-width="1.5" stroke-dasharray="6 4"/>
              <text x="380" y="52" font-size="11" fill="#c4b5fd" text-anchor="end">Target ₹9,00,000</text>
              <line x1="25" y1="240" x2="380" y2="240" stroke="#4b4a78"/>
              <rect x="37" y="126.4" width="46" height="113.6" rx="3" fill="#3b82f6" fill-opacity="0.8"/>
              <rect x="107" y="132" width="46" height="108" rx="3" fill="#ec4899" fill-opacity="0.9"/>
              <rect x="177" y="84" width="46" height="156" rx="3" fill="#3b82f6" fill-opacity="0.8"/>
              <rect x="247" y="114" width="46" height="126" rx="3" fill="#3b82f6" fill-opacity="0.8"/>
              <rect x="317" y="98" width="46" height="142" rx="3" fill="#3b82f6" fill-opacity="0.8"/>
              <g font-size="11">
                <text x="60" y="120">₹5,68,000</text>
                <text x="130" y="126">₹5,40,000</text>
                <text x="200" y="78">₹7,80,000</text>
                <text x="270" y="108">₹6,30,000</text>
                <text x="340" y="92">₹7,10,000</text>
              </g>
              <g font-size="11.5">
                <text x="60" y="258">Q2 FY26</text>
                <text x="130" y="258">Q3 FY26</text>
                <text x="200" y="258">Q4 FY26</text>
                <text x="270" y="258">Q1 FY27</text>
                <text x="340" y="258">Q2 FY27</text>
              </g>
              <g font-size="10" fill="#9b99b8">
                <text x="60" y="273">Jul–Sep 25</text>
                <text x="130" y="273">Oct–Dec 25</text>
                <text x="200" y="273">Jan–Mar 26</text>
                <text x="270" y="273">Apr–Jun 26</text>
                <text x="340" y="273">Jul–Sep 26</text>
              </g>
              <text x="200" y="293" font-size="11" fill="#f9a8d4">Pink: same quarter last year (Oct to Dec 2025)</text>
              <rect x="410" y="40" width="330" height="236" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="575" y="64" font-weight="700" font-size="12.5">Estimates for Q3 FY27 (Oct to Dec 2026)</text>
              <g font-size="12.5">
                <text x="428" y="94" text-anchor="start">Last quarter repeated</text><text x="722" y="94" text-anchor="end">₹7,10,000</text>
                <text x="428" y="124" text-anchor="start">4-quarter average</text><text x="722" y="124" text-anchor="end">₹6,65,000</text>
                <text x="428" y="154" text-anchor="start">Last year × growth</text><text x="722" y="154" text-anchor="end">₹6,75,000</text>
                <text x="428" y="184" text-anchor="start">Linear trend line</text><text x="722" y="184" text-anchor="end">₹7,55,000</text>
                <text x="428" y="214" text-anchor="start" fill="#fcd34d">Weighted pipeline</text><text x="722" y="214" text-anchor="end" fill="#fcd34d">₹7,73,000</text>
              </g>
              <line x1="428" y1="230" x2="722" y2="230" stroke="#4b4a78"/>
              <text x="428" y="256" text-anchor="start" fill="#c4b5fd">Target</text>
              <text x="722" y="256" text-anchor="end" fill="#c4b5fd">₹9,00,000</text>
            </g>
          </svg>
          <figcaption>History suggests about ₹6,65,000 to ₹7,55,000. The pipeline says ₹7,73,000. The target is higher than every estimate.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Four simple history methods</h3>
          <table class="lc-table">
            <thead><tr><th>Method</th><th>Plain meaning</th><th>Good for</th><th>Weakness</th></tr></thead>
            <tbody>
              <tr><td><strong>Run rate</strong></td><td>Assume you keep selling at your recent pace. The simplest version repeats last quarter.</td><td>A quick first number</td><td>Ignores seasons and one-off big deals</td></tr>
              <tr><td><strong>Moving average</strong></td><td>The average of the last few periods. Each new period, the oldest one drops out.</td><td>Smoothing out up and down swings</td><td>Reacts slowly to real growth</td></tr>
              <tr><td><strong>Same quarter last year × growth</strong></td><td>Start from the same season last year, then add your yearly growth.</td><td>Businesses with strong seasons</td><td>Needs at least a year of clean data</td></tr>
              <tr><td><strong>Trend line</strong></td><td>A straight line through past results, carried forward one step</td><td>Steady growth over many periods</td><td>Shaky with only a few points, and ignores seasons</td></tr>
            </tbody>
          </table>
          <p><strong>Seasonality</strong> means a pattern that repeats at the same time each year. <strong>Growth rate</strong> is how much bigger a number is than an earlier one, as a percentage. <strong>Year-on-year (YoY)</strong> growth compares a quarter with the same quarter one year earlier.</p>
          <p>Seasons differ by business. LedgerLite sells most in January to March, before the financial year ends on 31 March. Its October to December quarter was the weakest last year. Kavya thinks many small business owners are busy with festival sales then, but she has not proved it. Sweet Crumbs has the opposite pattern: office catering orders rise around Diwali and Christmas.</p>
        </div>
        <div class="lc-card">
          <h3>Worked example: LedgerLite's history in a sheet</h3>
          <p>Kavya puts won value by quarter in column B, rows 2 to 6. She adds Q2 FY26 from older records, so she can measure year-on-year growth. In column C she numbers the last four quarters 1, 2, 3 and 4 for the trend line.</p>
          <table class="lc-table">
            <thead><tr><th>Row</th><th>A: Quarter</th><th>B: Won value ₹</th><th>C: Period</th></tr></thead>
            <tbody>
              <tr><td>2</td><td>Q2 FY26 (Jul to Sep 2025)</td><td>5,68,000</td><td></td></tr>
              <tr><td>3</td><td>Q3 FY26 (Oct to Dec 2025)</td><td>5,40,000</td><td>1</td></tr>
              <tr><td>4</td><td>Q4 FY26 (Jan to Mar 2026)</td><td>7,80,000</td><td>2</td></tr>
              <tr><td>5</td><td>Q1 FY27 (Apr to Jun 2026)</td><td>6,30,000</td><td>3</td></tr>
              <tr><td>6</td><td>Q2 FY27 (Jul to Sep 2026)</td><td>7,10,000</td><td>4</td></tr>
            </tbody>
          </table>
          <pre><code>Run rate (last quarter repeated):  =B6                        → 710000
        4-quarter moving average:          =AVERAGE(B3:B6)            → 665000
        Year-on-year growth (Q2):          =B6/B2-1                   → 0.25 (25%)
        Same quarter last year × growth:   =B3*(1+(B6/B2-1))          → 675000
        Linear trend, next period (5):     =FORECAST(5,B3:B6,C3:C6)   → 755000</code></pre>
          <p>The growth formula compares July to September this year (₹7,10,000) with the same months last year (₹5,68,000). That is 25% growth. Last October to December was ₹5,40,000. So ₹5,40,000 × 1.25 = ₹6,75,000.</p>
          <p>The FORECAST function works in Excel and Google Sheets. Newer Excel versions and Google Sheets also have FORECAST.LINEAR, which gives the same answer. Excel also has FORECAST.ETS, which can handle seasons. Google Sheets does not have it, and it needs several years of history to find a season. Check your spreadsheet's current help pages.</p>
        </div>
        <div class="lc-card">
          <h3>Compare history with the pipeline</h3>
          <p>History says LedgerLite will win about ₹6,65,000 to ₹7,55,000. The weighted pipeline says ₹7,73,000. The target is ₹9,00,000.</p>
          <ul class="lc-list">
            <li><strong>The pipeline is higher than every history method.</strong> That can be good news. Or the pipeline may be too hopeful. Remember Maple Interiors: without that stale deal, the weighted forecast is ₹6,33,000.</li>
            <li><strong>The seasonal method is the second lowest.</strong> October to December was weak last year. Ask why before you trust any higher number.</li>
            <li><strong>The target is ₹1,45,000 above the highest history method.</strong> Nothing in the past suggests ₹9,00,000 is easy. Arjun needs a plan, not just hope.</li>
          </ul>
          <p>A common mistake is to use quarter-on-quarter growth when seasons are strong. July to September grew 12.7% over April to June. If you add 12.7% again, you get about ₹8,00,000 (=B6*(B6/B5) gives 800159). That ignores the weak October to December season, so it is too high.</p>
          <p>With only five quarters of data, treat every history number as a rough guide. A new product, a price change or a new rep can break old patterns.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: Kavya tests an AI trend forecast</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Kavya asks">"Our won value for the last five quarters is 5,68,000, 5,40,000, 7,80,000, 6,30,000 and 7,10,000. What will we sell from October to December 2026?"</li>
              <li data-kind="answer" data-label="AI replies">"Your sales grew 12.7% last quarter. If that growth continues, you will sell about ₹8,00,000 next quarter."</li>
              <li data-kind="thought" data-label="Kavya thinks">That uses quarter-on-quarter growth. But October to December was our weakest quarter last year. The answer ignores seasons.</li>
              <li data-kind="tool" data-label="Google Sheets">She builds four methods: =B6, =AVERAGE(B3:B6), =B3*(1+(B6/B2-1)) and =FORECAST(5,B3:B6,C3:C6).</li>
              <li data-kind="result" data-label="Result">710000, 665000, 675000 and 755000. The seasonal estimate is ₹6,75,000, well below ₹8,00,000.</li>
              <li data-kind="warn" data-label="Mistake caught">The AI's ₹8,00,000 was higher than every method in her sheet. Using it would make the ₹9,00,000 target look nearly safe.</li>
              <li data-kind="check" data-label="Kavya decides">She reports the range ₹6,65,000 to ₹7,55,000 next to the weighted pipeline of ₹7,73,000. She notes that history does not support ₹9,00,000.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to build several history-based forecasts, explain each one and compare them with your pipeline forecast. Use your own numbers in [brackets], or keep LedgerLite's.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a careful sales forecasting analyst for a small business in India.

        Won sales by quarter (oldest first):
        [Jul-Sep 2025: 568000
        Oct-Dec 2025: 540000
        Jan-Mar 2026: 780000
        Apr-Jun 2026: 630000
        Jul-Sep 2026: 710000]
        Quarter to forecast: [Oct-Dec 2026]
        My weighted pipeline forecast: ₹[7,73,000]. My target: ₹[9,00,000].

        Tasks:
        1. Calculate: last quarter repeated, the average of the last 4 quarters, same quarter last year × year-on-year growth, and a straight-line trend over the last 4 quarters. Show every step.
        2. Give an Excel or Google Sheets formula for each. The values are in B2:B6, oldest first.
        3. Put the results in a table with the pipeline forecast and the target.
        4. In 4 short bullet points, explain what the differences tell me.

        Rules:
        - Do not use quarter-on-quarter growth, because my sales are seasonal.
        - Use only my numbers. Round money to the nearest rupee.
        - Say clearly that history is a rough guide, not a promise.</pre>
            <ul class="ai-try-checks">
              <li>With the example data: ₹7,10,000, ₹6,65,000, ₹6,75,000 (25% growth) and ₹7,55,000.</li>
              <li>Check one formula in your sheet, such as =AVERAGE(B3:B6).</li>
              <li>Does the AI say the target is above every history estimate?</li>
              <li>Did it avoid the ₹8,00,000 quarter-on-quarter trap?</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> History and pipeline are two separate views of the same quarter. Build both. When they agree, you can be more confident. When they disagree, find out why before you share a number.
        </div>
      HTML
      starter_code: nil
    },
    8 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-sales">Sales & CRM</div>
          <h1 class="lc-title">Pipeline Coverage and Gap Analysis</h1>
        </div>
        <p class="lc-lead">Your forecast is below the target. Now what? <strong>Gap analysis</strong> tells you how far short you are and how much new business you must find to close the gap. In this lesson you will calculate pipeline coverage and learn why the popular "3x" or "4x" rules can mislead you. You will then work out the gap to target for LedgerLite. Finally you will turn that gap into a clear plan: how much new pipeline, by when, and from whom.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="Gap analysis for LedgerLite. A target bar of 9,00,000 rupees stands next to a weighted forecast bar of 7,73,000 rupees, leaving a gap of 1,27,000 rupees. The gap is divided by the 25 percent win rate to give 5,08,000 rupees of new pipeline needed, created by 9 November. A panel shows coverage of 1.87x against a 4x rule of thumb, and explains that late-stage deals make 1.87x worth more.">
            <defs><marker id="sfc8a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="20" y="22" font-size="12" fill="#9b99b8" text-anchor="start">LedgerLite gap analysis, Q3 FY27 (Oct to Dec 2026)</text>
              <line x1="25" y1="250" x2="300" y2="250" stroke="#4b4a78"/>
              <rect x="40" y="60" width="100" height="190" rx="4" fill="#27274e" stroke="#8b5cf6" stroke-width="2"/>
              <text x="90" y="150" font-weight="700">Target</text>
              <text x="90" y="172" fill="#c4b5fd">₹9,00,000</text>
              <rect x="180" y="86.8" width="100" height="163.2" rx="4" fill="#1f1f44" stroke="#f59e0b" stroke-width="2"/>
              <text x="230" y="150" font-weight="700">Weighted</text>
              <text x="230" y="167" font-weight="700">forecast</text>
              <text x="230" y="189" fill="#fcd34d">₹7,73,000</text>
              <rect x="180" y="60" width="100" height="26.8" rx="4" fill="#ec4899" fill-opacity="0.25" stroke="#ec4899" stroke-dasharray="4 3"/>
              <text x="230" y="78" font-size="11" fill="#f9a8d4">Gap ₹1,27,000</text>
              <text x="160" y="272" font-size="11" fill="#9b99b8">Forecast = 85.9% of target</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#sfc8a)">
                <line x1="284" y1="73" x2="324" y2="76"/>
                <line x1="512" y1="78" x2="544" y2="78"/>
              </g>
              <rect x="330" y="48" width="180" height="60" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="420" y="73" font-weight="700">÷ 25% win rate</text>
              <text x="420" y="94" font-size="10.5" fill="#9b99b8">new deals start at Qualified</text>
              <rect x="550" y="40" width="190" height="76" rx="10" fill="#27274e" stroke="#f59e0b" stroke-width="2"/>
              <text x="645" y="66" font-size="16" font-weight="700" fill="#fcd34d">₹5,08,000</text>
              <text x="645" y="86" font-size="11.5">new pipeline needed</text>
              <text x="645" y="104" font-size="11" fill="#9b99b8">created by 9 Nov</text>
              <rect x="330" y="140" width="410" height="110" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="535" y="164" font-weight="700">Coverage: a rough health check</text>
              <g font-size="12" text-anchor="start">
                <text x="350" y="190">Now: ₹16,80,000 ÷ ₹9,00,000 = 1.87x</text>
                <text x="350" y="212">Rule of thumb: 1 ÷ 25% = 4x (₹36,00,000)</text>
                <text x="350" y="234" fill="#9b99b8">But late-stage deals make 1.87x worth more</text>
              </g>
            </g>
          </svg>
          <figcaption>Start from the weighted gap, not from a coverage rule. Then turn the gap into new pipeline with a deadline.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Pipeline coverage, and the "4x" rule</h3>
          <p><strong>Pipeline coverage</strong> is your open pipeline for a period divided by the target for the same period. LedgerLite has ₹16,80,000 of open deals closing from October to December. The target is ₹9,00,000. So coverage is 16,80,000 ÷ 9,00,000 = <strong>1.87x</strong>.</p>
          <p>A common <strong>rule of thumb</strong> (a rough guide, not a law) says you need coverage of 1 ÷ win rate. LedgerLite's win rate is 25%, so the rule says 1 ÷ 0.25 = 4x. That means ₹36,00,000 of pipeline. By that rule, LedgerLite is short by ₹19,20,000. That sounds like a disaster. But is it?</p>
          <table class="lc-table">
            <thead><tr><th>Method</th><th>Calculation</th><th>Expected wins ₹</th><th>What it assumes</th></tr></thead>
            <tbody>
              <tr><td>Coverage × win rate</td><td>16,80,000 × 25%</td><td>4,20,000</td><td>Every open deal is brand new, at Qualified</td></tr>
              <tr><td>Weighted forecast</td><td>Each amount × its stage probability</td><td>7,73,000</td><td>Uses how far each deal has moved</td></tr>
            </tbody>
          </table>
          <p>The 4x rule works for fresh, early-stage pipeline. LedgerLite's pipeline is different. ₹7,80,000 of it is already at Proposal sent or later. Those deals are won 50% to 90% of the time, not 25%. So the rule under-counts this pipeline, and the weighted forecast is the better estimate here.</p>
          <p>Use coverage as a quick health check, and always read it with your stage mix. Also remember the opposite case. A pipeline full of stale or early deals can show 4x coverage and still miss the target.</p>
        </div>
        <div class="lc-card">
          <h3>Worked example: LedgerLite's gap</h3>
          <p>The target is in O2 (900000) and the win rate for new deals is in O3 (0.25). Amounts are in E2:E13 and probabilities in I2:I13.</p>
          <pre><code>Coverage:                =SUM(E2:E13)/O2                           → 1.87 (1.8667)
        Weighted forecast:       =SUMPRODUCT(E2:E13,I2:I13)                → 773000
        Forecast % of target:    =SUMPRODUCT(E2:E13,I2:I13)/O2             → 0.859 (85.9%)
        Gap to target:           =O2-SUMPRODUCT(E2:E13,I2:I13)             → 127000
        New pipeline needed:     =(O2-SUMPRODUCT(E2:E13,I2:I13))/O3        → 508000
        Rule-of-thumb pipeline:  =O2/O3                                    → 3600000</code></pre>
          <p>Why divide the gap by 25%? A brand-new deal starts at Qualified. Only 25% of those deals are won. So to win ₹1,27,000 more, Kavya and Arjun need about four times as much new pipeline: ₹5,08,000.</p>
          <p><strong>Timing matters too.</strong> LedgerLite's average sales cycle is 52 days. 9 November + 52 days = 31 December. So a deal created after 9 November will usually not close this quarter. The new pipeline must be created by 9 November.</p>
          <p><strong>How many deals is that?</strong> The average won deal is ₹95,000. So ₹5,08,000 ÷ ₹95,000 = 5.3, or about 6 new qualified deals. That is a clear, checkable goal for the next five to six weeks.</p>
        </div>
        <div class="lc-card">
          <h3>Split the gap by rep, and test the risk</h3>
          <table class="lc-table">
            <thead><tr><th>Rep</th><th>Open ₹</th><th>Quota ₹</th><th>Coverage</th><th>Weighted ₹</th><th>Gap ₹</th><th>New pipeline at 25% ₹</th></tr></thead>
            <tbody>
              <tr><td>Kavya</td><td>8,50,000</td><td>5,00,000</td><td>1.7x</td><td>4,15,500</td><td>84,500</td><td>3,38,000</td></tr>
              <tr><td>Arjun</td><td>8,30,000</td><td>4,00,000</td><td>about 2.1x</td><td>3,57,500</td><td>42,500</td><td>1,70,000</td></tr>
              <tr><td><strong>Team</strong></td><td><strong>16,80,000</strong></td><td><strong>9,00,000</strong></td><td><strong>1.87x</strong></td><td><strong>7,73,000</strong></td><td><strong>1,27,000</strong></td><td><strong>5,08,000</strong></td></tr>
            </tbody>
          </table>
          <p>Arjun has more coverage, but none of his deals is in Commit. Coverage alone does not show that.</p>
          <p>Now test the biggest risk. Maple Interiors has had no contact since 2 August. Without it, the weighted forecast is ₹6,33,000. The gap grows to ₹2,67,000, and the new pipeline needed grows to ₹10,68,000. Show leaders both versions of the gap.</p>
          <p>The source of new deals also matters. The 25% is LedgerLite's overall win rate. If new deals come from a source that wins less often, you need more pipeline. The win/loss lesson shows how to measure win rate by source.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: put the gap analysis in order</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Arjun wants a gap plan for October to December. Put Kavya's steps in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Confirm the target and list only open deals with a close date in the quarter</li>
              <li data-order="2">Calculate coverage: open pipeline ÷ target</li>
              <li data-order="3">Calculate the weighted forecast and the gap to target</li>
              <li data-order="4">Divide the gap by the win rate to find the new pipeline needed</li>
              <li data-order="5">Check the deadline with the sales cycle: new deals by 9 November</li>
              <li data-order="6">Split the new pipeline goal by rep and agree actions for each week</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to run a full gap analysis and turn it into a weekly plan. Use your own numbers in [brackets], or keep LedgerLite's.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a practical sales planning coach. Do a gap analysis for my quarter.

        Quarter: [1 October to 31 December 2026]. Today: [1 October 2026].
        Target: ₹[9,00,000]
        Open pipeline closing this quarter: ₹[16,80,000]
        Weighted forecast (from my spreadsheet): ₹[7,73,000]
        Share of pipeline at Proposal sent or later: ₹[7,80,000]
        Win rate for new deals: [25%]. Average won deal: ₹[95,000]. Average sales cycle: [52] days.
        Biggest risk: [a ₹2,00,000 deal with ₹1,40,000 weighted and no contact for 60 days]

        Tasks:
        1. Calculate coverage, the gap, forecast as % of target, and the new pipeline needed. Show each step.
        2. Explain in 3 sentences whether the "1 ÷ win rate" coverage rule fits my pipeline.
        3. Give the last date a new deal can be created and still close in the quarter, on average.
        4. Repeat the gap without the risky deal.
        5. Suggest a 5-week plan to create the new pipeline, with a number of new deals per week.

        Rules: use only my numbers. Round money to the nearest rupee. No made-up benchmarks.</pre>
            <ul class="ai-try-checks">
              <li>With the example data: coverage 1.87x, gap ₹1,27,000, 85.9% of target, new pipeline ₹5,08,000.</li>
              <li>Last creation date: 9 November 2026 (31 December − 52 days).</li>
              <li>Without the risky deal: forecast ₹6,33,000, gap ₹2,67,000, new pipeline ₹10,68,000.</li>
              <li>Does it explain that late-stage deals make the 4x rule too strict here?</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Coverage is a rough health check. The weighted gap is the real question. Divide the gap by your win rate and check the deadline with your sales cycle. Then turn the answer into a number of new deals per rep per week.
        </div>
      HTML
      starter_code: nil
    },
    9 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-sales">Sales & CRM</div>
          <h1 class="lc-title">Deal Risk Review</h1>
        </div>
        <p class="lc-lead">A forecast can look healthy while a few big deals quietly fall apart. A <strong>deal risk review</strong> is a regular check of each open deal for warning signs. In this lesson you will learn the most common warning signs. Examples are slipping close dates, no next step and deals with only one contact. You will build a simple risk checklist in a spreadsheet and use AI to review deals faster. You will also see how to show the risk in your forecast honestly.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="A risk checklist grid for five LedgerLite deals and five checks: idle 30 or more days, close date moved twice or more, no next step, only one contact, and big deal at an early stage. D-107 Maple Interiors has 4 flags and is high risk. D-109 Metro Pharma has 3 flags and is high risk. D-105 Patel Auto Parts and D-106 Lotus Diagnostics have 1 flag each and are medium risk. D-101 Tulsi Textiles has no flags and is low risk.">
            <g font-family="inherit" font-size="12" fill="#e2e0f0" text-anchor="middle">
              <text x="20" y="22" fill="#9b99b8" text-anchor="start">LedgerLite deal risk checklist · data from 1 Oct 2026</text>
              <g font-size="11" font-weight="700">
                <text x="24" y="52" text-anchor="start">Deal</text>
                <text x="253" y="52">Idle 30+ days</text>
                <text x="339" y="52">Date moved 2+</text>
                <text x="425" y="52">No next step</text>
                <text x="511" y="52">One contact</text>
                <text x="597" y="52">Big + early</text>
                <text x="693" y="52">Risk</text>
              </g>
              <g text-anchor="start">
                <text x="24" y="87">D-107 Maple Interiors</text>
                <text x="24" y="123">D-109 Metro Pharma</text>
                <text x="24" y="159">D-105 Patel Auto Parts</text>
                <text x="24" y="195">D-106 Lotus Diagnostics</text>
                <text x="24" y="231">D-101 Tulsi Textiles</text>
              </g>
              <g font-size="11">
                <rect x="216" y="69" width="74" height="26" rx="5" fill="#3b1f33" stroke="#f87171"/><text x="253" y="87" fill="#fca5a5">flag</text>
                <rect x="302" y="69" width="74" height="26" rx="5" fill="#3b1f33" stroke="#f87171"/><text x="339" y="87" fill="#fca5a5">flag</text>
                <rect x="388" y="69" width="74" height="26" rx="5" fill="#3b1f33" stroke="#f87171"/><text x="425" y="87" fill="#fca5a5">flag</text>
                <rect x="474" y="69" width="74" height="26" rx="5" fill="#3b1f33" stroke="#f87171"/><text x="511" y="87" fill="#fca5a5">flag</text>
                <rect x="560" y="69" width="74" height="26" rx="5" fill="#16302b" stroke="#10b981"/><text x="597" y="87" fill="#6ee7b7">ok</text>
                <rect x="216" y="105" width="74" height="26" rx="5" fill="#16302b" stroke="#10b981"/><text x="253" y="123" fill="#6ee7b7">ok</text>
                <rect x="302" y="105" width="74" height="26" rx="5" fill="#16302b" stroke="#10b981"/><text x="339" y="123" fill="#6ee7b7">ok</text>
                <rect x="388" y="105" width="74" height="26" rx="5" fill="#3b1f33" stroke="#f87171"/><text x="425" y="123" fill="#fca5a5">flag</text>
                <rect x="474" y="105" width="74" height="26" rx="5" fill="#3b1f33" stroke="#f87171"/><text x="511" y="123" fill="#fca5a5">flag</text>
                <rect x="560" y="105" width="74" height="26" rx="5" fill="#3b1f33" stroke="#f87171"/><text x="597" y="123" fill="#fca5a5">flag</text>
                <rect x="216" y="141" width="74" height="26" rx="5" fill="#16302b" stroke="#10b981"/><text x="253" y="159" fill="#6ee7b7">ok</text>
                <rect x="302" y="141" width="74" height="26" rx="5" fill="#16302b" stroke="#10b981"/><text x="339" y="159" fill="#6ee7b7">ok</text>
                <rect x="388" y="141" width="74" height="26" rx="5" fill="#16302b" stroke="#10b981"/><text x="425" y="159" fill="#6ee7b7">ok</text>
                <rect x="474" y="141" width="74" height="26" rx="5" fill="#16302b" stroke="#10b981"/><text x="511" y="159" fill="#6ee7b7">ok</text>
                <rect x="560" y="141" width="74" height="26" rx="5" fill="#3b1f33" stroke="#f87171"/><text x="597" y="159" fill="#fca5a5">flag</text>
                <rect x="216" y="177" width="74" height="26" rx="5" fill="#16302b" stroke="#10b981"/><text x="253" y="195" fill="#6ee7b7">ok</text>
                <rect x="302" y="177" width="74" height="26" rx="5" fill="#16302b" stroke="#10b981"/><text x="339" y="195" fill="#6ee7b7">ok</text>
                <rect x="388" y="177" width="74" height="26" rx="5" fill="#16302b" stroke="#10b981"/><text x="425" y="195" fill="#6ee7b7">ok</text>
                <rect x="474" y="177" width="74" height="26" rx="5" fill="#3b1f33" stroke="#f87171"/><text x="511" y="195" fill="#fca5a5">flag</text>
                <rect x="560" y="177" width="74" height="26" rx="5" fill="#16302b" stroke="#10b981"/><text x="597" y="195" fill="#6ee7b7">ok</text>
                <rect x="216" y="213" width="74" height="26" rx="5" fill="#16302b" stroke="#10b981"/><text x="253" y="231" fill="#6ee7b7">ok</text>
                <rect x="302" y="213" width="74" height="26" rx="5" fill="#16302b" stroke="#10b981"/><text x="339" y="231" fill="#6ee7b7">ok</text>
                <rect x="388" y="213" width="74" height="26" rx="5" fill="#16302b" stroke="#10b981"/><text x="425" y="231" fill="#6ee7b7">ok</text>
                <rect x="474" y="213" width="74" height="26" rx="5" fill="#16302b" stroke="#10b981"/><text x="511" y="231" fill="#6ee7b7">ok</text>
                <rect x="560" y="213" width="74" height="26" rx="5" fill="#16302b" stroke="#10b981"/><text x="597" y="231" fill="#6ee7b7">ok</text>
              </g>
              <g font-size="12" font-weight="700">
                <rect x="651" y="69" width="84" height="26" rx="13" fill="#27274e" stroke="#f87171"/><text x="693" y="87" fill="#fca5a5">High (4)</text>
                <rect x="651" y="105" width="84" height="26" rx="13" fill="#27274e" stroke="#f87171"/><text x="693" y="123" fill="#fca5a5">High (3)</text>
                <rect x="651" y="141" width="84" height="26" rx="13" fill="#27274e" stroke="#f59e0b"/><text x="693" y="159" fill="#fcd34d">Medium (1)</text>
                <rect x="651" y="177" width="84" height="26" rx="13" fill="#27274e" stroke="#f59e0b"/><text x="693" y="195" fill="#fcd34d">Medium (1)</text>
                <rect x="651" y="213" width="84" height="26" rx="13" fill="#27274e" stroke="#10b981"/><text x="693" y="231" fill="#6ee7b7">Low (0)</text>
              </g>
              <text x="380" y="266" font-size="11.5" fill="#9b99b8">Rule: 0 flags = Low, 1 to 2 = Medium, 3 or more = High. People make the final call.</text>
              <text x="380" y="288" font-size="11" fill="#9b99b8">Big = ₹1,90,000 or more (2 × the ₹95,000 average won deal). Early = Qualified or Demo done.</text>
            </g>
          </svg>
          <figcaption>A simple grid shows which deals need attention this week, and why.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Common warning signs</h3>
          <table class="lc-table">
            <thead><tr><th>Warning sign</th><th>What it means</th><th>How to check it</th></tr></thead>
            <tbody>
              <tr><td><strong>Stale deal</strong></td><td>No call, email or meeting for a long time. LedgerLite uses more than 30 days.</td><td>Today minus the last activity date</td></tr>
              <tr><td><strong>Slipping close date</strong></td><td>The close date has been pushed back again and again. Each move makes the next one more likely.</td><td>Count the close date changes. Many CRMs keep a field history.</td></tr>
              <tr><td><strong>No next step</strong></td><td>Nobody has agreed what happens next, or when.</td><td>Is there a next step with a date in the CRM?</td></tr>
              <tr><td><strong>Single-threaded</strong></td><td>Only one person at the buyer knows the deal. If that person goes quiet or leaves, the deal stops.</td><td>Count the contacts on the deal. Is the person who approves the money involved?</td></tr>
              <tr><td><strong>Big and early</strong></td><td>A large deal that is still at an early stage, but is counted this quarter</td><td>Amount of ₹1,90,000 or more, and stage Qualified or Demo done</td></tr>
            </tbody>
          </table>
          <p>Other signs are worth a note too: a sudden request for a big discount, a new decision maker, or a buyer who skips meetings. Choose a short list your team will really check every week. A long list that nobody fills in does not help.</p>
        </div>
        <div class="lc-card">
          <h3>Worked example: flags in the spreadsheet</h3>
          <p>Kavya adds a <strong>Days idle</strong> column (N) to her sheet. The last activity date is in column H and the export date is 1 October 2026.</p>
          <pre><code>Days idle, in N2 (copy down):   =DATE(2026,10,1)-H2                                          → 60 in row 8 (Maple Interiors)
        Stale flag:                     =IF(N2&gt;30,"Flag","")
        Big and early flag:             =IF(AND(E2&gt;=190000,OR(D2="Qualified",D2="Demo done")),"Flag","")
        Weighted, without stale deals:  =SUMIFS(J2:J13,N2:N13,"&lt;=30")                              → 633000</code></pre>
          <p>The big and early flag marks Patel Auto Parts (₹2,40,000) and Metro Pharma (₹3,00,000). Metro Pharma has had no contact for 26 days, so it is close to the stale line too. Only Maple Interiors is over 30 days.</p>
          <p>The other checks need fields that not every CRM export has: next step date, number of contacts and close date changes. Ask each rep for them in the weekly review. Kavya and Arjun collected these facts for their biggest deals:</p>
          <ul class="lc-list">
            <li><strong>Maple Interiors (₹2,00,000):</strong> close date moved twice, from 31 August to 30 September, then to 31 October. Only one contact, the owner. No next step.</li>
            <li><strong>Metro Pharma (₹3,00,000):</strong> only the purchase manager is involved. The first demo is not booked.</li>
            <li><strong>Lotus Diagnostics (₹1,80,000):</strong> call booked for 6 October, but only with the lab manager. The finance head has not joined.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Show risk honestly in the forecast</h3>
          <p>Do not quietly delete risky deals, and do not quietly keep them either. Show the numbers side by side:</p>
          <table class="lc-table">
            <thead><tr><th>View</th><th>Weighted forecast ₹</th><th>Gap to ₹9,00,000</th></tr></thead>
            <tbody>
              <tr><td>All 12 deals</td><td>7,73,000</td><td>1,27,000</td></tr>
              <tr><td>Without stale deals (Maple Interiors)</td><td>6,33,000</td><td>2,67,000</td></tr>
            </tbody>
          </table>
          <p>Then give each high-risk deal an owner and an action with a date. For a single-threaded deal, ask your contact to bring in a second person, such as the finance head. For a slipping deal, ask the buyer directly: "Is 31 October still right for you?" A clear "no" is better than false hope.</p>
          <p>AI can speed up the review. It can read deal notes, apply your checklist and draft questions for each rep. But it can misread dates and it only knows what you paste. Remove contact names, phone numbers and emails first. Check every flag against your sheet.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: the weekly risk review</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Kavya asks">"Here are our 12 open deals with stage, amount, close date, last activity, close date changes, next step and number of contacts. No personal details. Apply our 5-point risk checklist and list the high-risk deals."</li>
              <li data-kind="answer" data-label="AI replies">"High risk: Maple Interiors, with 4 flags: stale, date moved twice, no next step, one contact. Also Metro Pharma: no activity for 36 days, no next step, one contact, big and early."</li>
              <li data-kind="warn" data-label="Mistake caught">Kavya checks column N. From 5 September to 1 October is 26 days, not 36. Metro Pharma is not stale yet. It is still high risk, with 3 flags.</li>
              <li data-kind="tool" data-label="Spreadsheet">She calculates the forecast without stale deals: =SUMIFS(J2:J13,N2:N13,"&lt;=30").</li>
              <li data-kind="result" data-label="Result">633000. Without Maple Interiors, the weighted forecast is ₹6,33,000.</li>
              <li data-kind="check" data-label="Arjun acts">Arjun calls and emails the owner of Maple Interiors. There is still no reply. He moves it from Best case to Pipeline and reports both forecast numbers.</li>
              <li data-kind="check" data-label="Kavya acts">For Metro Pharma, Kavya asks the purchase manager to invite the finance head to the first demo. The deal is no longer single-threaded.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to apply a risk checklist to your deals and prepare questions for your weekly review. Use your own deals in [brackets], after you remove private details, or keep LedgerLite's.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a sales manager running a weekly deal risk review.

        Checklist (1 flag each):
        1. Days idle more than 30
        2. Close date moved 2 or more times
        3. No next step with a date
        4. Only one contact at the buyer
        5. Big and early: amount ₹[1,90,000] or more, and stage Qualified or Demo done
        Risk level: 0 flags = Low, 1 to 2 = Medium, 3 or more = High.

        Deals (ID | stage | amount ₹ | close date | days idle | date moves | next step | contacts):
        [D-107 | Negotiation | 200000 | 31 Oct | 60 | 2 | none | 1
        D-109 | Qualified | 300000 | 20 Dec | 26 | 0 | none | 1
        D-105 | Qualified | 240000 | 15 Dec | 19 | 1 | demo 8 Oct | 2
        D-106 | Proposal sent | 180000 | 30 Nov | 6 | 0 | call 6 Oct | 1
        D-101 | Negotiation | 120000 | 15 Oct | 5 | 0 | signing 14 Oct | 3
        D-111 | Verbal yes | 85000 | 7 Oct | 1 | 0 | signing 7 Oct | 2]

        Tasks:
        1. Table: deal ID, a yes or no for each check, number of flags, risk level.
        2. For each High or Medium deal: one question for the rep and one action with a deadline.
        3. A 3-line summary for my founder.

        Rules: use only the data above. Do not change amounts, stages or probabilities. Do not guess facts about buyers.</pre>
            <ul class="ai-try-checks">
              <li>With the example data: D-107 High (4 flags), D-109 High (3), D-105 and D-106 Medium (1 each), D-101 and D-111 Low.</li>
              <li>D-109 must not be flagged as stale: 26 days is not more than 30.</li>
              <li>Is each action specific, with a person and a date?</li>
              <li>Did the AI avoid inventing reasons, such as "the buyer chose a competitor"?</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Review risk every week, with the same short checklist. Let the spreadsheet count days and flags, let AI draft the questions, and let people decide. Show the forecast with and without risky deals, so leaders see the real range.
        </div>
      HTML
      starter_code: nil
    },
    10 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-sales">Sales & CRM</div>
          <h1 class="lc-title">Win/Loss Analysis</h1>
        </div>
        <p class="lc-lead"><strong>Win/loss analysis</strong> means studying your closed deals to learn why you win and why you lose. It shows which customers and lead sources win most often, and which loss reasons repeat. These facts make your next forecast better and your selling smarter. In this lesson you will collect loss reasons and calculate win rate by segment and by source. You will also run short buyer interviews and use AI to find patterns in the notes.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 290" role="img" aria-label="Two bar charts for LedgerLite's 112 closed deals over the last four quarters. Left: win rate by lead source. Referral 45 percent, 9 of 20. CA partner 33 percent, 8 of 24. Website 19 percent, 7 of 36. Outbound 12.5 percent, 4 of 32. Right: why 84 deals were lost. No decision 26, price 22, competitor 18, missing feature 12, timing 6.">
            <g font-family="inherit" font-size="12" fill="#e2e0f0">
              <text x="20" y="22" fill="#9b99b8">LedgerLite, 112 closed deals, last 4 quarters (Oct 2025 to Sep 2026)</text>
              <rect x="10" y="34" width="380" height="226" rx="10" fill="#1f1f44" stroke="#4b4a78"/>
              <text x="200" y="58" text-anchor="middle" font-weight="700" font-size="13">Win rate by lead source</text>
              <g text-anchor="end">
                <text x="122" y="95">Referral</text>
                <text x="122" y="137">CA partner</text>
                <text x="122" y="179">Website</text>
                <text x="122" y="221">Outbound</text>
              </g>
              <g fill="#10b981" fill-opacity="0.85">
                <rect x="130" y="80" width="180" height="22" rx="3"/>
                <rect x="130" y="122" width="133.3" height="22" rx="3"/>
                <rect x="130" y="164" width="77.8" height="22" rx="3"/>
                <rect x="130" y="206" width="50" height="22" rx="3"/>
              </g>
              <g font-size="11.5">
                <text x="316" y="95">45% · 9/20</text>
                <text x="269" y="137">33.3% · 8/24</text>
                <text x="214" y="179">19.4% · 7/36</text>
                <text x="186" y="221">12.5% · 4/32</text>
              </g>
              <text x="200" y="250" text-anchor="middle" font-size="11" fill="#9b99b8">Overall: 28 won of 112 closed = 25%</text>
              <rect x="400" y="34" width="350" height="226" rx="10" fill="#1f1f44" stroke="#4b4a78"/>
              <text x="575" y="58" text-anchor="middle" font-weight="700" font-size="13">Why we lost (84 deals)</text>
              <g text-anchor="end">
                <text x="528" y="92">No decision</text>
                <text x="528" y="124">Price</text>
                <text x="528" y="156">Competitor</text>
                <text x="528" y="188">Missing feature</text>
                <text x="528" y="220">Timing</text>
              </g>
              <g fill="#ec4899" fill-opacity="0.85">
                <rect x="538" y="78" width="130" height="20" rx="3"/>
                <rect x="538" y="110" width="110" height="20" rx="3"/>
                <rect x="538" y="142" width="90" height="20" rx="3"/>
                <rect x="538" y="174" width="60" height="20" rx="3"/>
                <rect x="538" y="206" width="30" height="20" rx="3"/>
              </g>
              <g font-size="11.5">
                <text x="674" y="92">26 (31%)</text>
                <text x="654" y="124">22 (26%)</text>
                <text x="634" y="156">18 (21%)</text>
                <text x="604" y="188">12 (14%)</text>
                <text x="574" y="220">6 (7%)</text>
              </g>
              <text x="575" y="250" text-anchor="middle" font-size="11" fill="#9b99b8">"No decision" is the biggest reason</text>
              <text x="380" y="282" text-anchor="middle" font-size="11.5" fill="#9b99b8">Small groups (20 to 36 deals) give hints, not proof. Check the pattern next quarter.</text>
            </g>
          </svg>
          <figcaption>Referral and CA partner leads win far more often. Most lost deals end with no decision, not a lost price battle.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Collect reasons that you can count</h3>
          <p>You cannot learn from losses if every rep writes a different reason. Make the loss reason a required drop-down field in your CRM, with a short list. Add a free-text note for details. LedgerLite uses five reasons:</p>
          <table class="lc-table">
            <thead><tr><th>Loss reason</th><th>Use it when</th></tr></thead>
            <tbody>
              <tr><td>No decision</td><td>The buyer stopped replying, or decided to keep their old way of working</td></tr>
              <tr><td>Price</td><td>The buyer said the price was too high, and they bought nothing or something cheaper</td></tr>
              <tr><td>Competitor</td><td>The buyer chose another product</td></tr>
              <tr><td>Missing feature</td><td>The buyer needed something LedgerLite does not do</td></tr>
              <tr><td>Timing</td><td>Budget frozen, or the buyer asked to talk again much later</td></tr>
            </tbody>
          </table>
          <p>Also record a few facts for every deal, won or lost: the <strong>lead source</strong> (where the deal came from) and the <strong>segment</strong> (a group of similar customers, for example by business size). Be careful with "Price". Reps often pick it because it is easy. Buyer interviews often show a different, deeper reason.</p>
        </div>
        <div class="lc-card">
          <h3>Worked example: win rate by source and segment</h3>
          <p>Kavya exports LedgerLite's 112 closed deals into a sheet, in rows 2 to 113. Column B is the result (Won or Lost), C is the lead source, D is the business size and F is the loss reason. A <strong>CA partner</strong> lead is a client sent by a chartered accountant who works with LedgerLite.</p>
          <table class="lc-table">
            <thead><tr><th>Lead source</th><th>Closed</th><th>Won</th><th>Lost</th><th>Win rate</th></tr></thead>
            <tbody>
              <tr><td>Referral from a customer</td><td>20</td><td>9</td><td>11</td><td>45.0%</td></tr>
              <tr><td>CA partner</td><td>24</td><td>8</td><td>16</td><td>33.3%</td></tr>
              <tr><td>Website</td><td>36</td><td>7</td><td>29</td><td>19.4%</td></tr>
              <tr><td>Outbound (cold calls and emails)</td><td>32</td><td>4</td><td>28</td><td>12.5%</td></tr>
              <tr><td><strong>Total</strong></td><td><strong>112</strong></td><td><strong>28</strong></td><td><strong>84</strong></td><td><strong>25.0%</strong></td></tr>
            </tbody>
          </table>
          <table class="lc-table">
            <thead><tr><th>Segment (staff)</th><th>Closed</th><th>Won</th><th>Win rate</th></tr></thead>
            <tbody>
              <tr><td>Micro (1 to 10)</td><td>60</td><td>18</td><td>30.0%</td></tr>
              <tr><td>Small (11 to 50)</td><td>40</td><td>9</td><td>22.5%</td></tr>
              <tr><td>Medium (51 or more)</td><td>12</td><td>1</td><td>8.3%</td></tr>
            </tbody>
          </table>
          <pre><code>Referral win rate:     =COUNTIFS(C2:C113,"Referral",B2:B113,"Won")/COUNTIF(C2:C113,"Referral")   → 0.45
        Micro win rate:        =COUNTIFS(D2:D113,"Micro",B2:B113,"Won")/COUNTIF(D2:D113,"Micro")         → 0.30
        Deals lost on price:   =COUNTIF(F2:F113,"Price")                                                  → 22
        Share of losses:       =COUNTIF(F2:F113,"Price")/COUNTIF(B2:B113,"Lost")                          → 0.262 (26.2%)</code></pre>
          <p>A pivot table gives the same counts with a few clicks, in both Excel and Google Sheets.</p>
          <p><strong>What it means for the forecast:</strong> the overall 25% hides big differences. In the gap lesson, LedgerLite needed ₹1,27,000 more. From outbound deals at 12.5%, that needs ₹10,16,000 of new pipeline. From referrals at 45%, it needs only about ₹2,82,000. The medium segment result may also help explain why LedgerLite's win rate by value (23.75%) is below 25%: it loses more of its bigger deals.</p>
          <p><strong>Be careful with small groups.</strong> Only 12 medium-sized businesses closed, and 1 was won. One more win would change 8.3% to 16.7%. Treat patterns from small groups as ideas to test, not facts.</p>
        </div>
        <div class="lc-card">
          <h3>Buyer interviews, and how AI helps</h3>
          <p>Numbers show <em>what</em> happened. Interviews show <em>why</em>. Ask a few won and lost buyers for a 15-minute call, soon after their decision. If possible, someone other than the rep should ask, so the buyer feels free to be honest. Do not try to sell in the call.</p>
          <ul class="lc-list">
            <li>"What problem made you start looking for accounting software?"</li>
            <li>"Who else was involved in the decision?"</li>
            <li>"What almost made you choose differently?"</li>
            <li>"What could we have done better?"</li>
          </ul>
          <p>Ask permission before you record a call or take notes. Tell the buyer how you will use their answers. In India, the DPDP Act 2023 and the DPDP Rules 2025 set rules for personal data. Examples are consent and using data only for its stated purpose. Many of these duties start in stages, so check the current position. This is general information, not legal advice.</p>
          <p>AI is useful for sorting free-text notes into your loss reasons, finding repeated themes and drafting interview questions. Remove names and contact details before you paste notes. Do the counts in your spreadsheet. Check that every AI "theme" is backed by real notes, and never let AI invent buyer quotes.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: tag the loss notes</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">These are short notes from lost LedgerLite deals. Put each one under the right loss reason.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="nodec" data-label="No decision"></div>
              <div data-sorter-target="bucket" data-bucket="price" data-label="Price"></div>
              <div data-sorter-target="bucket" data-bucket="comp" data-label="Competitor"></div>
              <div data-sorter-target="bucket" data-bucket="feature" data-label="Missing feature"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="nodec" data-why="The buyer went quiet and bought nothing. That is no decision, even though the rep followed up.">Stopped replying after the proposal. Three follow-ups, no answer.</li>
              <li data-bucket="price" data-why="The buyer liked the product and named the price as the reason.">Liked the demo, but said the yearly fee is too much for them right now.</li>
              <li data-bucket="comp" data-why="The buyer picked another product. Note the CA's influence: CA partners matter in both wins and losses.">Their accountant moved all his clients to a different accounting tool.</li>
              <li data-bucket="feature" data-why="The buyer needed something LedgerLite does not offer.">Needed stock tracking for three warehouses. LedgerLite only does accounts.</li>
              <li data-bucket="nodec" data-why="The buyer never chose anything. A vague 'later' with no follow-up is no decision.">Said they would think about it after Diwali, and never came back.</li>
              <li data-bucket="price" data-why="The deal broke down on discount, so the reason is price.">Asked for a 40% discount. The best we could offer was 10%.</li>
              <li data-bucket="comp" data-why="The buyer bought a different product. The friend's advice was the trigger.">Chose another software that a friend's shop already uses.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to analyse your win/loss data and interview notes, and suggest actions. Use your own numbers and notes in [brackets], after you remove names, or keep LedgerLite's.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a careful sales analyst. Help me run a win/loss analysis.

        Closed deals, last 4 quarters (lead source | won | lost):
        [Referral | 9 | 11
        CA partner | 8 | 16
        Website | 7 | 29
        Outbound | 4 | 28]
        Loss reasons for [84] lost deals: [No decision 26, Price 22, Competitor 18, Missing feature 12, Timing 6]
        Interview notes (names removed):
        [1. Food business, Maharashtra, won: their CA recommended us and helped set it up in one day.
        2. Textile trader, Gujarat, lost: said price. Later said his staff found the software hard to learn.
        3. Pharma distributor, lost: went quiet after the proposal. The finance head never saw a demo.]

        Tasks:
        1. Table: source, closed, won, win rate. Show each division.
        2. Each loss reason as a share of all losses.
        3. Three themes from the notes. Name the note behind each theme.
        4. Three actions for next quarter, and how each could change my forecast.
        5. Five neutral questions for future buyer interviews.

        Rules: use only this data. Do not invent quotes or numbers. Warn me where a group has fewer than 30 deals.</pre>
            <ul class="ai-try-checks">
              <li>Win rates: Referral 45%, CA partner 33.3%, Website 19.4%, Outbound 12.5%, overall 25%.</li>
              <li>No decision is 31% of losses (26 ÷ 84) and price is 26% (22 ÷ 84).</li>
              <li>Does each theme point to a real note? Note 2 suggests "price" may hide a training problem.</li>
              <li>Did it warn that Referral (20 deals) and CA partner (24 deals) are groups under 30 deals?</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> One overall win rate hides the real story. Split wins and losses by source and segment, record loss reasons you can count, and talk to real buyers. Then use the win rate that matches the pipeline you are forecasting.
        </div>
      HTML
      starter_code: nil
    },
    11 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-sales">Sales & CRM</div>
          <h1 class="lc-title">Sales Cycle and Velocity</h1>
        </div>
        <p class="lc-lead">A forecast tells you how much you may sell. It does not tell you how fast deals move, or where they get stuck. In this lesson you will calculate <strong>sales velocity</strong>, which measures how fast your pipeline turns into money. You will also measure <strong>stage conversion</strong> and time in each stage. Then you will find the stage that slows deals down and the open deals that are stuck. These numbers show you what to fix, not only what to expect.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="LedgerLite's sales stages from Qualified to Won. 112 deals reached Qualified, 80 reached Demo done, 56 reached Proposal sent, 40 reached Negotiation, 31 reached Verbal yes and 28 were won. Conversion rates between stages are 71, 70, 71, 78 and 90 percent. Won deals spent on average 10, 12, 18, 8 and 4 days in each stage, 52 days in total. Proposal sent is the slowest stage. The biggest drop is 32 deals lost after Qualified. Below, the sales velocity formula: 12 open deals times 25 percent times 95,000 rupees, divided by 52 days, equals about 5,481 rupees per day.">
            <defs><marker id="sfc11a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="380" y="24" font-size="12" fill="#9b99b8">LedgerLite, last 4 quarters: deals that reached each stage, and average days spent there</text>
              <rect x="11" y="46" width="98" height="80" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="60" y="72" font-size="12.5" font-weight="700">Qualified</text>
              <text x="60" y="94" font-size="11" fill="#9b99b8">112 deals</text>
              <text x="60" y="115" font-size="12" fill="#93c5fd">10 days</text>
              <rect x="139" y="46" width="98" height="80" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="188" y="72" font-size="12.5" font-weight="700">Demo done</text>
              <text x="188" y="94" font-size="11" fill="#9b99b8">80 deals</text>
              <text x="188" y="115" font-size="12" fill="#93c5fd">12 days</text>
              <rect x="267" y="46" width="98" height="80" rx="10" fill="#27274e" stroke="#f59e0b" stroke-width="2"/>
              <text x="316" y="72" font-size="12" font-weight="700">Proposal sent</text>
              <text x="316" y="94" font-size="11" fill="#9b99b8">56 deals</text>
              <text x="316" y="115" font-size="12" fill="#fcd34d">18 days</text>
              <rect x="395" y="46" width="98" height="80" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="444" y="72" font-size="12.5" font-weight="700">Negotiation</text>
              <text x="444" y="94" font-size="11" fill="#9b99b8">40 deals</text>
              <text x="444" y="115" font-size="12" fill="#93c5fd">8 days</text>
              <rect x="523" y="46" width="98" height="80" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="572" y="72" font-size="12.5" font-weight="700">Verbal yes</text>
              <text x="572" y="94" font-size="11" fill="#9b99b8">31 deals</text>
              <text x="572" y="115" font-size="12" fill="#93c5fd">4 days</text>
              <rect x="651" y="46" width="98" height="80" rx="10" fill="#1f1f44" stroke="#10b981" stroke-width="2"/>
              <text x="700" y="72" font-size="12.5" font-weight="700">Won</text>
              <text x="700" y="94" font-size="11" fill="#9b99b8">28 deals</text>
              <text x="700" y="115" font-size="12" fill="#6ee7b7">52 days total</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#sfc11a)">
                <line x1="111" y1="92" x2="133" y2="92"/>
                <line x1="239" y1="92" x2="261" y2="92"/>
                <line x1="367" y1="92" x2="389" y2="92"/>
                <line x1="495" y1="92" x2="517" y2="92"/>
                <line x1="623" y1="92" x2="645" y2="92"/>
              </g>
              <g font-size="10.5" fill="#e2e0f0">
                <text x="124" y="80">71%</text>
                <text x="252" y="80">70%</text>
                <text x="380" y="80">71%</text>
                <text x="508" y="80">78%</text>
                <text x="636" y="80">90%</text>
              </g>
              <text x="124" y="150" font-size="12" fill="#fca5a5">Biggest drop: 32 lost</text>
              <text x="316" y="150" font-size="12" fill="#fcd34d">Slowest stage: 18 days</text>
              <rect x="20" y="172" width="720" height="112" rx="12" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="380" y="202" font-weight="700">Sales velocity = (open deals × win rate × average deal size) ÷ sales cycle days</text>
              <text x="380" y="234" font-size="15" font-weight="700" fill="#c4b5fd">(12 × 25% × ₹95,000) ÷ 52 = about ₹5,481 per day</text>
              <text x="380" y="264" font-size="11.5" fill="#9b99b8">About ₹5,04,000 over the 92 days of October to December. A rough pace, not a forecast.</text>
            </g>
          </svg>
          <figcaption>Stage conversion shows where deals drop out. Days in stage show where they slow down. Velocity joins four levers into one number.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Sales velocity: how fast the pipeline turns into money</h3>
          <p><strong>Sales velocity</strong> is the average amount of money your pipeline brings in per day. It uses four numbers you already know:</p>
          <pre><code>Sales velocity = (open deals × win rate × average deal size) ÷ sales cycle length in days

        LedgerLite:  (12 × 25% × ₹95,000) ÷ 52
                   = ₹2,85,000 ÷ 52
                   = ₹5,481 per day (rounded)</code></pre>
          <p>In a sheet, put 12 in B1, 25% in B2, 95000 in B3 and 52 in B4. Then type <code>=B1*B2*B3/B4</code>. The result is 5480.77. Over the 92 days from October to December, that is about ₹5,04,000.</p>
          <p>Why is this lower than the weighted forecast of ₹7,73,000? Velocity treats every open deal like a new deal with a 25% chance. But many LedgerLite deals are already at Negotiation or Verbal yes. So velocity is <strong>not a forecast</strong>. Use it for two jobs: compare one quarter with the next, and test which lever helps most.</p>
          <table class="lc-table">
            <thead><tr><th>Change one lever</th><th>New velocity per day</th><th>Change</th></tr></thead>
            <tbody>
              <tr><td>Today: 12 deals, 25%, ₹95,000, 52 days</td><td>₹5,481</td><td></td></tr>
              <tr><td>16 open deals instead of 12</td><td>₹7,308</td><td>+₹1,827</td></tr>
              <tr><td>Win rate 30% instead of 25%</td><td>₹6,577</td><td>+₹1,096</td></tr>
              <tr><td>Cycle 45 days instead of 52</td><td>₹6,333</td><td>+₹852</td></tr>
              <tr><td>Average deal ₹1,05,000 instead of ₹95,000</td><td>₹6,058</td><td>+₹577</td></tr>
            </tbody>
          </table>
          <p>Each row changes only one number. For LedgerLite, more deals and a better win rate help most. These two levers are linked. Referral leads win 45% of the time, but outbound leads win only 12.5%. So more deals from referrals and CA partners pull both levers at once. Use the same rule every quarter, for example "open deals closing this quarter". Otherwise the numbers cannot be compared.</p>
        </div>
        <div class="lc-card">
          <h3>Stage conversion: where deals drop out and slow down</h3>
          <p>A <strong>stage conversion rate</strong> is the share of deals that move from one stage to the next. <strong>Days in stage</strong> is how long deals stay in a stage before they move on. Here are LedgerLite's 112 closed deals from the last four quarters. The days are averages for the 28 won deals.</p>
          <table class="lc-table">
            <thead><tr><th>A: Stage</th><th>B: Deals that reached it</th><th>C: Moved on to next</th><th>D: Lost here</th><th>Avg days in stage</th></tr></thead>
            <tbody>
              <tr><td>Qualified</td><td>112</td><td>80 ÷ 112 = 71.4%</td><td>32</td><td>10</td></tr>
              <tr><td>Demo done</td><td>80</td><td>56 ÷ 80 = 70.0%</td><td>24</td><td>12</td></tr>
              <tr><td>Proposal sent</td><td>56</td><td>40 ÷ 56 = 71.4%</td><td>16</td><td>18</td></tr>
              <tr><td>Negotiation</td><td>40</td><td>31 ÷ 40 = 77.5%</td><td>9</td><td>8</td></tr>
              <tr><td>Verbal yes</td><td>31</td><td>28 ÷ 31 = 90.3% (won)</td><td>3</td><td>4</td></tr>
              <tr><td><strong>Total</strong></td><td></td><td></td><td><strong>84</strong></td><td><strong>52</strong></td></tr>
            </tbody>
          </table>
          <pre><code>Rows 2 to 6 hold the five stages. B7 holds the 28 won deals.
        Moved on, in C2 (copy down to C6):  =B3/B2      → 0.714 in C2
        Lost here, in D2 (copy down to D6): =B2-B3      → 32 in D2
        Control check:                      =SUM(D2:D6) → 84 (matches the 84 lost deals)</code></pre>
          <p>Two things stand out. Most deals are lost right after Qualified: 32 of 84 losses. So Kavya may be booking demos with businesses that are not a good fit. And Proposal sent is the slowest stage at 18 days. Buyers may be waiting for Arjun to approve a discount. The win/loss data fits this picture: "No decision" is the most common loss reason, with 26 of 84 losses. These are ideas to check with the team, not facts yet.</p>
          <p>Many CRMs, such as HubSpot, Salesforce and Zoho CRM, can report stage history or time in each stage. Menus differ, so check your CRM's current help pages. If your CRM cannot, record the date a deal enters each stage in your sheet.</p>
        </div>
        <div class="lc-card">
          <h3>Find the open deals that are stuck</h3>
          <p>Now compare each open deal with the normal pace. Add up the average days from its stage to a win. A Proposal sent deal usually needs 18 + 8 + 4 = 30 more days.</p>
          <table class="lc-table">
            <thead><tr><th>Deal</th><th>What the data shows</th><th>Normal pace</th><th>Question to ask</th></tr></thead>
            <tbody>
              <tr><td>Maple Interiors, Negotiation, ₹2,00,000</td><td>No activity for 60 days</td><td>Negotiation usually takes 8 days</td><td>Is the buyer still talking to us?</td></tr>
              <tr><td>Bright Minds Tuition, Proposal sent, ₹45,000</td><td>Closes 25 Oct, only 24 days away</td><td>About 30 more days</td><td>Is 25 October realistic, or is it November?</td></tr>
              <tr><td>Patel Auto Parts, Qualified, ₹2,40,000</td><td>Closes 15 Dec, 75 days away</td><td>About 52 more days</td><td>Enough time, but is a demo booked yet?</td></tr>
            </tbody>
          </table>
          <pre><code>Days since last activity (H = last activity):  =DATE(2026,10,1)-H8        → 60
        Flag stale deals, in a new column:             =IF(DATE(2026,10,1)-H2&gt;30,"Check","OK")
        Days left before the close date (F = close):   =F11-DATE(2026,10,1)       → 24</code></pre>
          <p>AI can help you think about causes. Paste your stage table and ask: "Give 3 possible reasons why deals slow down at Proposal sent, and one question to test each reason. Label each one as an idea, not a fact." Then ask your team and check lost-deal notes. Do not let AI decide the cause for you.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: which lever does it pull?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Each action changes one part of the sales velocity formula. Sort it into the lever it pulls.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="deals" data-label="More deals"></div>
              <div data-sorter-target="bucket" data-bucket="win" data-label="Higher win rate"></div>
              <div data-sorter-target="bucket" data-bucket="size" data-label="Bigger deals"></div>
              <div data-sorter-target="bucket" data-bucket="cycle" data-label="Shorter cycle"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="deals" data-why="Referrals add new opportunities to the pipeline. That raises the number of deals.">Kavya asks happy customers for one referral each every month.</li>
              <li data-bucket="cycle" data-why="Proposals wait 18 days on average. Removing the approval step helps deals move faster.">Arjun pre-approves standard discounts, so proposals no longer wait for his sign-off.</li>
              <li data-bucket="win" data-why="Better qualification means fewer poor-fit demos. A larger share of the deals you work will be won.">Kavya only books demos with businesses that already keep their accounts on a computer.</li>
              <li data-bucket="size" data-why="An add-on raises the value of each won deal.">LedgerLite offers a payroll add-on to businesses with more than 10 staff.</li>
              <li data-bucket="deals" data-why="A new place to be found brings more enquiries, which means more deals.">Sweet Crumbs lists its office catering on two more corporate vendor portals.</li>
              <li data-bucket="win" data-why="A sample plan builds trust before the proposal, so fewer buyers choose a rival.">Rohit's team sends each prospect a sample delivery plan before the proposal.</li>
              <li data-bucket="size" data-why="A two-year plan is worth more than a one-year plan, so the average deal grows.">LedgerLite offers a two-year plan with a small discount.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to calculate your sales velocity and stage conversion, find the bottleneck and suggest tests. Use your own numbers in [brackets], or keep LedgerLite's.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a sales operations analyst. Help me see where my deals slow down.

        Closed deals, last [4 quarters]. Deals that reached each stage, and average days won deals spent there:
        [Qualified: 112 deals, 10 days
        Demo done: 80 deals, 12 days
        Proposal sent: 56 deals, 18 days
        Negotiation: 40 deals, 8 days
        Verbal yes: 31 deals, 4 days
        Won: 28 deals]
        Today: [12] open deals, win rate [25%], average won deal ₹[95,000], sales cycle [52] days.

        Tasks:
        1. Calculate sales velocity per day. Show the formula and each step.
        2. Make a table: stage, conversion to the next stage, deals lost at that stage.
        3. Name the stage with the biggest drop and the slowest stage.
        4. Suggest 3 small tests to improve them. Say which velocity lever each test pulls.

        Rules:
        - Show all working and round percentages to one decimal place.
        - Give possible reasons as ideas to check, not facts.
        - Do not invent benchmarks for other companies.</pre>
            <ul class="ai-try-checks">
              <li>With the example data, velocity is about ₹5,481 per day ((12 × 0.25 × 95,000) ÷ 52).</li>
              <li>Conversions: 71.4%, 70.0%, 71.4%, 77.5% and 90.3%. Lost deals add up to 84.</li>
              <li>Biggest drop is after Qualified (32 lost). Slowest stage is Proposal sent (18 days).</li>
              <li>Are the reasons written as ideas to test, not as facts?</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> The forecast tells you how much. Velocity, stage conversion and days in stage tell you why and where. Find the stage where most deals drop out and the stage where they wait longest. Then fix one thing at a time and measure again.
        </div>
      HTML
      starter_code: nil
    },
    12 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-sales">Sales & CRM</div>
          <h1 class="lc-title">Targets, Quotas and Territories</h1>
        </div>
        <p class="lc-lead">A target should be ambitious, but it must also be possible. In this lesson you will compare a <strong>top-down</strong> target, set by leaders, with a <strong>bottom-up</strong> number, built from what the team can really do. You will work out how many deals a target needs and plan capacity for a new hire. You will also check if quotas and territories are fair. Fair quotas keep a team motivated. Unfair ones make good people leave.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 290" role="img" aria-label="Top-down: leaders set a goal of 9,00,000 rupees, 27 percent above last quarter. Bottom-up: 28 decided deals times 25 percent times 95,000 rupees gives 6,65,000 rupees. Both arrows meet in a Compare box: the gap is 2,35,000 rupees and the weighted pipeline is 7,73,000 rupees. Below, the target is split into quotas: Kavya 5,00,000 rupees with 8,50,000 rupees open, 1.7 times coverage and weighted pipeline at 83 percent of quota; Arjun 4,00,000 rupees with 8,30,000 rupees open, 2.1 times coverage and weighted pipeline at 89 percent of quota.">
            <defs><marker id="sfc12a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="20" y="30" width="220" height="112" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="130" y="56" font-weight="700">Top-down</text>
              <text x="130" y="76" font-size="11" fill="#9b99b8">What leaders want</text>
              <text x="130" y="106" font-size="18" font-weight="700" fill="#fcd34d">₹9,00,000</text>
              <text x="130" y="128" font-size="11" fill="#9b99b8">27% above last quarter</text>
              <rect x="520" y="30" width="220" height="112" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="630" y="56" font-weight="700">Bottom-up</text>
              <text x="630" y="76" font-size="11" fill="#9b99b8">What capacity can deliver</text>
              <text x="630" y="106" font-size="18" font-weight="700" fill="#6ee7b7">₹6,65,000</text>
              <text x="630" y="128" font-size="11" fill="#9b99b8">28 deals × 25% × ₹95,000</text>
              <rect x="290" y="44" width="180" height="84" rx="10" fill="#27274e" stroke="#8b5cf6" stroke-width="2"/>
              <text x="380" y="68" font-weight="700">Compare</text>
              <text x="380" y="92" fill="#fca5a5">Gap ₹2,35,000</text>
              <text x="380" y="114" font-size="11" fill="#9b99b8">Pipeline check: ₹7,73,000</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none">
                <line x1="242" y1="86" x2="284" y2="86" marker-end="url(#sfc12a)"/>
                <line x1="518" y1="86" x2="476" y2="86" marker-end="url(#sfc12a)"/>
              </g>
              <text x="20" y="176" font-size="12" fill="#9b99b8" text-anchor="start">Quotas that add up to the target (Q3 FY27, October to December 2026)</text>
              <rect x="20" y="188" width="396" height="62" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="218" y="212" font-weight="700">Kavya: quota ₹5,00,000</text>
              <text x="218" y="236" font-size="11.5" fill="#9b99b8">Open ₹8,50,000 · 1.7x · weighted 83% of quota</text>
              <rect x="424" y="188" width="316" height="62" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="582" y="212" font-weight="700">Arjun: quota ₹4,00,000</text>
              <text x="582" y="236" font-size="11.5" fill="#9b99b8">Open ₹8,30,000 · 2.1x · weighted 89%</text>
              <text x="380" y="276" font-size="12" fill="#9b99b8">Check each person's pipeline against their quota, not only the company total.</text>
            </g>
          </svg>
          <figcaption>Set the goal from the top, test it from the bottom, then split it into quotas each person can reach.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Top-down and bottom-up targets</h3>
          <table class="lc-table">
            <thead><tr><th>Method</th><th>How it works</th><th>LedgerLite, Q3 FY27</th></tr></thead>
            <tbody>
              <tr><td><strong>Top-down</strong></td><td>Leaders start from a growth goal or an investor plan.</td><td>Arjun wants ₹9,00,000. Last quarter the team won ₹7,10,000. So this is about 27% more.</td></tr>
              <tr><td><strong>Bottom-up</strong></td><td>Start from what the team can handle: deals, win rate and deal size.</td><td>The team decides (wins or loses) about 28 deals a quarter: 112 ÷ 4. So 28 × 25% × ₹95,000 = ₹6,65,000.</td></tr>
              <tr><td><strong>Pipeline check</strong></td><td>Look at the weighted value of open deals for the quarter.</td><td>₹7,73,000. The pipeline is stronger than usual this quarter.</td></tr>
            </tbody>
          </table>
          <p>Year-on-year growth is another top-down check. Last year's Q2 (₹5,68,000) grew 25% to ₹7,10,000 this year. The same 25% on last year's Q3 (₹5,40,000) gives ₹6,75,000. Arjun's ₹9,00,000 is 66.7% above last year's Q3. So it is a stretch target.</p>
          <p>Now work backwards from the target. How many deals does ₹9,00,000 need?</p>
          <pre><code>B1 = 900000 (target)   B2 = 95000 (average deal)   B3 = 25% (win rate)

        Deals to win:            =B1/B2               → 9.47, so about 10 wins
        Decided deals needed:    =ROUNDUP(B1/B2/B3,0) → 38
        Win rate needed with 28 decided deals:  =B1/(28*B2)  → 0.338 (33.8%)
        Deal size needed with 7 wins:           =B1/7        → 128571.43</code></pre>
          <p>So LedgerLite needs 38 decided deals, but it usually handles about 28. Or it needs a 33.8% win rate, or an average deal of about ₹1,28,571. This does not mean ₹9,00,000 is wrong. It means Arjun must say which lever will change, and how. A target with no plan behind it is only a wish.</p>
        </div>
        <div class="lc-card">
          <h3>Capacity planning: can the team do the work?</h3>
          <p><strong>Capacity</strong> is how much work your team can handle in a period. In sales, count the number of deals people can take to a decision. Arjun is thinking about hiring a second rep from January. He estimates that a fully trained rep can decide about 14 deals a quarter. That is his assumption, so he writes it down.</p>
          <p>A new rep needs time to learn the product and the customers. This is called <strong>ramp-up time</strong>. Arjun plans for half capacity in the first quarter.</p>
          <table class="lc-table">
            <thead><tr><th>New rep</th><th>Decided deals</th><th>Expected new sales</th></tr></thead>
            <tbody>
              <tr><td>First quarter (50% ramp-up)</td><td>7</td><td>7 × 25% × ₹95,000 = ₹1,66,250</td></tr>
              <tr><td>Fully trained</td><td>14</td><td>14 × 25% × ₹95,000 = ₹3,32,500</td></tr>
            </tbody>
          </table>
          <p>A new rep may also win less often at first. Remember seasonality too. January to March is LedgerLite's strongest quarter, so a January start helps. Compare the expected sales with the full cost of the hire, and ask your accountant to check the cash plan.</p>
        </div>
        <div class="lc-card">
          <h3>Fair quotas and territories</h3>
          <p>Arjun split the ₹9,00,000 target into two quotas. Let us test if they are fair, using each person's open pipeline.</p>
          <table class="lc-table">
            <thead><tr><th>Person</th><th>Quota</th><th>Open pipeline</th><th>Coverage</th><th>Weighted</th><th>Weighted ÷ quota</th><th>Gap to quota</th></tr></thead>
            <tbody>
              <tr><td>Kavya</td><td>₹5,00,000</td><td>₹8,50,000</td><td>1.7x</td><td>₹4,15,500</td><td>83.1%</td><td>₹84,500</td></tr>
              <tr><td>Arjun</td><td>₹4,00,000</td><td>₹8,30,000</td><td>2.1x</td><td>₹3,57,500</td><td>89.4%</td><td>₹42,500</td></tr>
            </tbody>
          </table>
          <p>Use <code>=SUMIF(G2:G13,"Kavya",E2:E13)</code> for Kavya's open pipeline (850000). Use <code>=SUMIF(G2:G13,"Kavya",J2:J13)/500000</code> for her weighted share of quota (0.831). Arjun looks safer, but ₹1,40,000 of his weighted value is Maple Interiors, the stale deal. Without it, he is at ₹2,17,500, only 54.4% of his quota. He has no deals in Commit yet. He is also the founder, with less time to sell.</p>
          <p>A <strong>territory</strong> is the group of customers a rep is responsible for, for example by region or industry. Today LedgerLite gives each deal to whoever found it. Here is the pipeline if Arjun splits it by region for a new rep:</p>
          <table class="lc-table">
            <thead><tr><th>Region</th><th>States in the pipeline</th><th>Deals</th><th>Open ₹</th><th>Weighted ₹</th></tr></thead>
            <tbody>
              <tr><td>West and Central</td><td>Gujarat, Maharashtra, Madhya Pradesh, Rajasthan</td><td>6</td><td>6,30,000</td><td>2,91,750</td></tr>
              <tr><td>South</td><td>Kerala, Telangana, Karnataka, Tamil Nadu</td><td>4</td><td>5,50,000</td><td>2,66,250</td></tr>
              <tr><td>North</td><td>Punjab, Uttar Pradesh</td><td>2</td><td>5,00,000</td><td>2,15,000</td></tr>
              <tr><td><strong>Total</strong></td><td></td><td><strong>12</strong></td><td><strong>16,80,000</strong></td><td><strong>7,73,000</strong></td></tr>
            </tbody>
          </table>
          <p>The North looks big, but it rests on only two deals, and both are risky. Current pipeline is only one input. Also look at how many possible customers each region has, travel time and languages. Put the region in a free column, such as P, and use <code>=SUMIF(P2:P13,"South",J2:J13)</code> to check a total (266250).</p>
          <ul class="lc-list">
            <li><strong>Base quotas on data.</strong> Use history, territory potential and each person's selling time.</li>
            <li><strong>Make them add up.</strong> LedgerLite's quotas equal the target exactly, so any miss means the company misses. Some companies set quotas a little above the target for this reason.</li>
            <li><strong>Explain the maths.</strong> Show each rep how their quota was set, and write down the assumptions.</li>
          </ul>
          <p>AI can draft quota options and explain the trade-offs. People must make the final decision, because quotas affect pay and trust.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: plan the target and quotas</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Arjun is planning next quarter's target and quotas. Put his steps in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Collect the last four quarters: won value, deals decided, win rate and average deal size</li>
              <li data-order="2">Write down the top-down goal the company wants to reach</li>
              <li data-order="3">Build the bottom-up number from team capacity, and check it against the weighted pipeline</li>
              <li data-order="4">Compare the two numbers and agree which lever will close the gap: more deals, win rate, deal size or a new hire</li>
              <li data-order="5">Split the target into quotas using each person's territory, pipeline and selling time</li>
              <li data-order="6">Explain each quota to the rep, and write down the assumptions behind it</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to test a target from the bottom up and suggest fair quota options. Use your own numbers in [brackets], or keep LedgerLite's.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a sales planning adviser for a small business. Help me test next quarter's target and set fair quotas.

        Last [4 quarters]: [112] deals decided (won or lost), [28] won, won value ₹[26,60,000].
        Next quarter's target: ₹[9,00,000].
        Team: [Kavya, full-time rep, open pipeline ₹8,50,000, weighted ₹4,15,500; Arjun, founder who sells about half his time, open pipeline ₹8,30,000, weighted ₹3,57,500, of which ₹1,40,000 is one stale deal].

        Tasks:
        1. Work out the win rate, average deal size and deals decided per quarter.
        2. Build a bottom-up number from that capacity.
        3. How many decided deals does the target need? What win rate or deal size alone would reach it?
        4. Suggest two ways to split the target into quotas. Give one strength and one risk for each.
        5. List 3 questions I should discuss with the team.

        Rules:
        - Show every calculation.
        - Quotas must add up to the target.
        - Do not invent industry benchmarks. The final decision is mine.</pre>
            <ul class="ai-try-checks">
              <li>With the example data: 25% win rate, ₹95,000 average deal, 28 deals a quarter, bottom-up ₹6,65,000.</li>
              <li>The target needs about 38 decided deals, or a 33.8% win rate, or an average deal of about ₹1,28,571.</li>
              <li>Do both quota options add up to exactly ₹9,00,000?</li>
              <li>Does it notice Arjun's stale deal and his limited selling time?</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Test every top-down target with a bottom-up number. If they do not meet, name the lever that will close the gap. Then set quotas from real data, add them up, and explain them openly to each person.
        </div>
      HTML
      starter_code: nil
    },
    13 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-sales">Sales & CRM</div>
          <h1 class="lc-title">Scenarios and What-If Planning</h1>
        </div>
        <p class="lc-lead">One forecast number hides how much the result could change. <strong>Scenarios</strong> show a range: a worst case, a base case and a best case, each built from clear assumptions. <strong>What-if planning</strong> changes one input, such as win rate or deal size, to see how much the result moves. In this lesson you will build both for LedgerLite in a spreadsheet. You will also use AI to question your assumptions, while the sheet does the maths.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 270" role="img" aria-label="A bar chart of three LedgerLite scenarios for October to December 2026 against a 9,00,000 rupee target line. Worst case 4,98,000 rupees: Maple Interiors lost and two Qualified deals slip. Base case 7,73,000 rupees: the weighted forecast. Best case 8,83,500 rupees: all Negotiation and Verbal yes deals close. Even the best case is 16,500 rupees below target.">
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <text x="656" y="30" font-size="12" fill="#fcd34d" text-anchor="middle">Target ₹9,00,000</text>
              <line x1="656" y1="38" x2="656" y2="200" stroke="#f59e0b" stroke-width="2" stroke-dasharray="6 4"/>
              <line x1="170" y1="200" x2="710" y2="200" stroke="#9b99b8" stroke-width="1"/>
              <text x="20" y="72" font-weight="700">Worst case</text>
              <text x="20" y="90" font-size="11" fill="#9b99b8">Maple lost, 2 slip</text>
              <rect x="170" y="58" width="269" height="36" rx="6" fill="#1f1f44" stroke="#f87171"/>
              <text x="430" y="81" font-weight="700" fill="#fca5a5" text-anchor="end">₹4,98,000</text>
              <text x="20" y="122" font-weight="700">Base case</text>
              <text x="20" y="140" font-size="11" fill="#9b99b8">Weighted, as is</text>
              <rect x="170" y="108" width="417" height="36" rx="6" fill="#27274e" stroke="#3b82f6" stroke-width="2"/>
              <text x="578" y="131" font-weight="700" fill="#93c5fd" text-anchor="end">₹7,73,000</text>
              <text x="20" y="172" font-weight="700">Best case</text>
              <text x="20" y="190" font-size="11" fill="#9b99b8">Late deals all close</text>
              <rect x="170" y="158" width="477" height="36" rx="6" fill="#1f1f44" stroke="#10b981"/>
              <text x="638" y="181" font-weight="700" fill="#6ee7b7" text-anchor="end">₹8,83,500</text>
              <g font-size="11" fill="#9b99b8" text-anchor="middle">
                <text x="170" y="216">₹0</text>
                <text x="440" y="216">₹5,00,000</text>
                <text x="710" y="216">₹10,00,000</text>
              </g>
              <text x="380" y="244" font-size="12" fill="#9b99b8" text-anchor="middle">Gap to target: worst ₹4,02,000 · base ₹1,27,000 · best ₹16,500</text>
              <text x="380" y="262" font-size="12" fill="#e2e0f0" text-anchor="middle">Even the best case needs new pipeline to reach the target.</text>
            </g>
          </svg>
          <figcaption>Three scenarios, each with written assumptions, show leaders the likely range, not just one number.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Best, base and worst case for this quarter</h3>
          <p>Each scenario is a story about what might happen. Write the story first, then calculate it. Here are LedgerLite's three cases for October to December 2026. The deals are in rows 2 to 13, as in the weighted forecast.</p>
          <table class="lc-table">
            <thead><tr><th>Scenario</th><th>Assumption</th><th>Calculation</th><th>Result</th><th>% of target</th></tr></thead>
            <tbody>
              <tr><td><strong>Worst</strong></td><td>Maple Interiors is lost. Patel Auto Parts and Metro Pharma slip to January.</td><td>7,73,000 − 1,40,000 − 60,000 − 75,000</td><td>₹4,98,000</td><td>55.3%</td></tr>
              <tr><td><strong>Base</strong></td><td>Every deal keeps its stage probability.</td><td>Weighted forecast</td><td>₹7,73,000</td><td>85.9%</td></tr>
              <tr><td><strong>Best</strong></td><td>All Negotiation and Verbal yes deals close. Other deals stay weighted.</td><td>7,73,000 + 96,000 + 14,500</td><td>₹8,83,500</td><td>98.2%</td></tr>
            </tbody>
          </table>
          <pre><code>Base:   =SUMPRODUCT(E2:E13,I2:I13)                            → 773000
        Worst:  =SUMPRODUCT(E2:E13,I2:I13)-J8-J6-J10                   → 498000
        Best:   =SUMPRODUCT(E2:E13,I2:I13)+SUMIF(D2:D13,"Negotiation",E2:E13)*0.3+SUMIF(D2:D13,"Verbal yes",E2:E13)*0.1
                                                                       → 883500</code></pre>
          <p>How does the best case formula work? Negotiation deals are already counted at 70%. Adding 30% of their amount (₹3,20,000 × 30% = ₹96,000) counts them at 100%. Verbal yes deals get the last 10% (₹1,45,000 × 10% = ₹14,500). In the worst case, J8, J6 and J10 are the weighted values of Maple Interiors, Patel Auto Parts and Metro Pharma.</p>
          <p>The forecast categories give another view. The reps' commit is ₹2,65,000, and commit plus best case is ₹7,80,000. These come from rep judgement, so they do not match the scenarios exactly. Show both, and explain the difference.</p>
          <p>The key message for Arjun: even the best case is ₹16,500 short of ₹9,00,000. The team needs new deals, whatever happens to the current ones.</p>
        </div>
        <div class="lc-card">
          <h3>What-if planning: change one lever at a time</h3>
          <p>For a future quarter, you do not have deals yet. Use a <strong>driver model</strong> instead: a simple formula built from the numbers that drive sales. LedgerLite's typical quarter is 28 decided deals × 25% win rate × ₹95,000 = ₹6,65,000. Put deals in B2, win rate in B3 and deal size in B4. Then type <code>=B2*B3*B4</code> in B5.</p>
          <table class="lc-table">
            <thead><tr><th>What if…</th><th>Expected sales</th><th>Change from ₹6,65,000</th></tr></thead>
            <tbody>
              <tr><td>Win rate rises to 30%</td><td>₹7,98,000</td><td>+₹1,33,000</td></tr>
              <tr><td>Win rate falls to 20%</td><td>₹5,32,000</td><td>−₹1,33,000</td></tr>
              <tr><td>32 decided deals instead of 28</td><td>₹7,60,000</td><td>+₹95,000</td></tr>
              <tr><td>24 decided deals instead of 28</td><td>₹5,70,000</td><td>−₹95,000</td></tr>
              <tr><td>Average deal rises to ₹1,05,000</td><td>₹7,35,000</td><td>+₹70,000</td></tr>
              <tr><td>Average deal falls to ₹85,000</td><td>₹5,95,000</td><td>−₹70,000</td></tr>
            </tbody>
          </table>
          <p>For LedgerLite, a 5-point change in win rate moves the result most. So protecting win rate is worth more effort than chasing slightly bigger deals. Lead source matters here: referrals win 45% and CA partner leads 33.3%, but outbound only 12.5%.</p>
          <p>Be careful when you change everything at once. All three bad values together give 24 × 20% × ₹85,000 = ₹4,08,000. All three good values give 32 × 30% × ₹1,05,000 = ₹10,08,000. Both are possible, but unlikely. Use them as stress tests, not as plans.</p>
          <p>To work backwards, you can use Excel's Goal Seek tool (under What-If Analysis). It finds the input that gives the result you want. Google Sheets has no built-in Goal Seek, but Google offers a free Goal Seek add-on. Check the current help pages. You can also write the formula yourself: <code>=900000/(B2*B4)</code> gives the win rate you need, 0.338.</p>
        </div>
        <div class="lc-card">
          <h3>How AI helps with scenarios</h3>
          <p>AI is good at asking "what could go wrong?" and at writing assumptions clearly. It is not a safe calculator. A weak prompt lets it choose the assumptions and the maths:</p>
          <pre><code>Give me best, base and worst case forecasts for my pipeline.</code></pre>
          <p>A better prompt fixes the assumptions and asks for checks:</p>
          <pre><code>You are a sales planning analyst. I will do the maths in my spreadsheet.
        Here are my 12 deals with stage, amount, close date and last activity.
        1. Suggest assumptions for a worst, base and best case. Base each one on named deals.
        2. For each assumption, say which data supports it.
        3. List 3 risks my scenarios might miss, for example deals slipping into next quarter.
        Do not calculate totals. Do not invent deals or facts about customers.
        [paste deals, without contact details]</code></pre>
          <p>Then build the scenarios in your sheet. If you do ask AI to calculate, check its assumptions as well as its sums.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: Kavya checks the AI's scenarios</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Kavya asks">"Here are my 12 deals with stages and weighted values. Build three cases. Best: all Negotiation and Verbal yes deals close, and the rest stay weighted. Worst: Maple Interiors is lost, and Patel Auto Parts and Metro Pharma slip to January."</li>
              <li data-kind="answer" data-label="AI replies">"Base case ₹7,73,000. Worst case ₹4,98,000. Best case ₹10,41,000, so in the best case you beat the ₹9,00,000 target."</li>
              <li data-kind="thought" data-label="Kavya thinks">The best case beats the target? That surprises me. I will check the assumption, not only the sum.</li>
              <li data-kind="tool" data-label="Google Sheets">She types =SUMPRODUCT(E2:E13,I2:I13)+SUMIF(D2:D13,"Negotiation",E2:E13)*0.3+SUMIF(D2:D13,"Verbal yes",E2:E13)*0.1</li>
              <li data-kind="result" data-label="Result">883500. The best case is ₹8,83,500, not ₹10,41,000.</li>
              <li data-kind="warn" data-label="Mistake caught">The AI also counted the three Proposal sent deals at 100%. That added ₹1,57,500. It was not the agreed assumption. The real best case is still below target.</li>
              <li data-kind="check" data-label="Kavya checks">She checks the worst case with =SUMPRODUCT(E2:E13,I2:I13)-J8-J6-J10. It gives 498000, which matches. She writes the assumption under each number before she shares the table.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to build three scenarios and a what-if table, with every step shown. Use your own numbers in [brackets], or keep LedgerLite's.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a careful sales planning analyst. Build scenarios for my quarter and show every step.

        Open pipeline by stage (amount ₹, probability):
        [Qualified 5,40,000 at 25%; Demo done 3,60,000 at 35%; Proposal sent 3,15,000 at 50%; Negotiation 3,20,000 at 70%; Verbal yes 1,45,000 at 90%]
        Risky deals: [Maple Interiors, Negotiation, ₹2,00,000, no contact for 60 days; Patel Auto Parts, Qualified, ₹2,40,000; Metro Pharma, Qualified, ₹3,00,000]
        Target: ₹[9,00,000]
        Typical quarter: [28] decided deals, [25%] win rate, ₹[95,000] average deal.

        Tasks:
        1. Base case: the weighted forecast.
        2. Worst case: [Maple Interiors is lost and both Qualified deals slip].
        3. Best case: [all Negotiation and Verbal yes deals close; the rest stay weighted].
        4. For each case: result, gap to target, and % of target.
        5. What-if table for the typical quarter: change one lever at a time (win rate ±5 points, deal size ±₹10,000). Which lever matters most?

        Rules: use only my numbers and assumptions. Show every step. Do not add deals or change probabilities.</pre>
            <ul class="ai-try-checks">
              <li>With the example data: base ₹7,73,000, worst ₹4,98,000, best ₹8,83,500.</li>
              <li>Gaps to target: ₹1,27,000, ₹4,02,000 and ₹16,500.</li>
              <li>What-if results: ₹7,98,000 and ₹5,32,000 for win rate; ₹7,35,000 and ₹5,95,000 for deal size.</li>
              <li>Did the AI keep to your assumptions, and not count Proposal sent deals at 100%?</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A range with clear assumptions is more honest than one number. Write each scenario as a short story about named deals. Calculate it in your sheet. Then change one lever at a time to find what matters most.
        </div>
      HTML
      starter_code: nil
    },
    14 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-sales">Sales & CRM</div>
          <h1 class="lc-title">Presenting Your Forecast</h1>
        </div>
        <p class="lc-lead">A good forecast is useless if leaders cannot understand it or do not trust it. In this lesson you will build a <strong>one-page forecast summary</strong>. It shows the number, the range, the assumptions, the risks and what you need from others. You will learn how to state your confidence honestly and share bad news early. You will also use AI to draft the page, while you check every number.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 330" role="img" aria-label="A one-page forecast summary for LedgerLite, October to December 2026, by Kavya on 1 October 2026. Three tiles: forecast 7,73,000 rupees, target 9,00,000 rupees, gap 1,27,000 rupees. A line shows the likely range from 4,98,000 to 8,83,500 rupees with medium confidence. Three columns list assumptions, top risks and asks.">
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <rect x="20" y="14" width="720" height="304" rx="12" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="40" y="42" font-weight="700">LedgerLite · Q3 FY27 sales forecast (Oct to Dec 2026)</text>
              <text x="720" y="42" font-size="11.5" fill="#9b99b8" text-anchor="end">Kavya · 1 Oct 2026</text>
              <g text-anchor="middle">
                <rect x="40" y="56" width="210" height="64" rx="8" fill="#27274e" stroke="#3b82f6"/>
                <text x="145" y="78" font-size="12" fill="#9b99b8">Forecast</text>
                <text x="145" y="106" font-size="18" font-weight="700" fill="#93c5fd">₹7,73,000</text>
                <rect x="275" y="56" width="210" height="64" rx="8" fill="#27274e" stroke="#f59e0b"/>
                <text x="380" y="78" font-size="12" fill="#9b99b8">Target</text>
                <text x="380" y="106" font-size="18" font-weight="700" fill="#fcd34d">₹9,00,000</text>
                <rect x="510" y="56" width="210" height="64" rx="8" fill="#27274e" stroke="#f87171"/>
                <text x="615" y="78" font-size="12" fill="#9b99b8">Gap</text>
                <text x="615" y="106" font-size="18" font-weight="700" fill="#fca5a5">₹1,27,000</text>
                <text x="380" y="146" font-size="12.5">Likely range: ₹4,98,000 (worst) to ₹8,83,500 (best) · Confidence: medium</text>
              </g>
              <rect x="40" y="162" width="210" height="136" rx="8" fill="#27274e" stroke="#10b981"/>
              <text x="145" y="184" font-weight="700" fill="#6ee7b7" text-anchor="middle">Assumptions</text>
              <g font-size="11.5">
                <text x="54" y="208">Stage odds: last 4 quarters</text>
                <text x="54" y="230">Close dates from deal owners</text>
                <text x="54" y="252">No new deals counted</text>
                <text x="54" y="274">Last forecast 93% accurate</text>
              </g>
              <rect x="275" y="162" width="210" height="136" rx="8" fill="#27274e" stroke="#f87171"/>
              <text x="380" y="184" font-weight="700" fill="#fca5a5" text-anchor="middle">Top risks</text>
              <g font-size="11.5">
                <text x="289" y="208">Maple: no contact since 2 Aug</text>
                <text x="289" y="230">Without Maple: ₹6,33,000</text>
                <text x="289" y="252">Patel, Metro: early stage</text>
                <text x="289" y="274">Both close late December</text>
              </g>
              <rect x="510" y="162" width="210" height="136" rx="8" fill="#27274e" stroke="#22d3ee"/>
              <text x="615" y="184" font-weight="700" fill="#67e8f9" text-anchor="middle">Asks</text>
              <g font-size="11.5">
                <text x="524" y="208">Arjun: call Maple this week</text>
                <text x="524" y="230">Team: ₹5,08,000 of new</text>
                <text x="524" y="252">pipeline by 9 November</text>
                <text x="524" y="274">Next update: 15 October</text>
              </g>
            </g>
          </svg>
          <figcaption>One page: the number, the gap, the range and confidence, then assumptions, risks and asks.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>What goes on one page</h3>
          <p>Leaders are busy. They want the answer first, then the reasons. Use the same sections every time, so they know where to look.</p>
          <table class="lc-table">
            <thead><tr><th>Section</th><th>What to write</th><th>LedgerLite example</th></tr></thead>
            <tbody>
              <tr><td><strong>Headline</strong></td><td>Forecast, target and gap in one line</td><td>₹7,73,000 against ₹9,00,000. Gap ₹1,27,000 (85.9% of target).</td></tr>
              <tr><td><strong>Rep judgement</strong></td><td>The forecast categories next to the weighted number</td><td>Commit ₹2,65,000. Commit + best case ₹7,80,000.</td></tr>
              <tr><td><strong>Range and confidence</strong></td><td>Worst and best case, and how sure you are, with a reason</td><td>₹4,98,000 to ₹8,83,500. Medium: 46% of the forecast is from late-stage deals, and reps commit only ₹2,65,000.</td></tr>
              <tr><td><strong>Timing</strong></td><td>When the money is expected, by month</td><td>October ₹4,22,000, November ₹1,68,750, December ₹1,82,250</td></tr>
              <tr><td><strong>Assumptions</strong></td><td>What must be true for the forecast to hold</td><td>Stage probabilities from 112 closed deals. Close dates confirmed by owners.</td></tr>
              <tr><td><strong>Risks</strong></td><td>Named deals and what they could cost</td><td>Maple Interiors: no contact since 2 August, ₹1,40,000 weighted.</td></tr>
              <tr><td><strong>Asks</strong></td><td>Who must do what, and by when</td><td>Arjun calls the Maple buyer this week. ₹5,08,000 of new pipeline by 9 November.</td></tr>
              <tr><td><strong>Track record</strong></td><td>How accurate the last forecast was</td><td>Q2: forecast ₹7,60,000, actual ₹7,10,000. 93% accurate, and too high.</td></tr>
            </tbody>
          </table>
          <p><strong>Confidence</strong> is your honest judgement of how likely the forecast is to hold. Use simple words: high, medium or low. Always give the reason. Here, late-stage deals (Negotiation and Verbal yes) give ₹3,54,500 of the ₹7,73,000, which is 46%. The rest depends on earlier deals.</p>
        </div>
        <div class="lc-card">
          <h3>A sample one-page summary</h3>
          <pre><code>LedgerLite: Q3 FY27 sales forecast (1 Oct to 31 Dec 2026)
        Prepared by Kavya, 1 Oct 2026. Data: CRM export of 1 Oct 2026.

        HEADLINE
        We forecast ₹7,73,000 of new sales against a ₹9,00,000 target.
        Gap: ₹1,27,000 (we expect 85.9% of target).
        Likely range: ₹4,98,000 to ₹8,83,500. Confidence: medium.
        Reps' commit: ₹2,65,000. Commit + best case: ₹7,80,000.
        By month: Oct ₹4,22,000 · Nov ₹1,68,750 · Dec ₹1,82,250

        ASSUMPTIONS
        - Stage probabilities come from our last 4 quarters (112 closed deals).
        - Close dates were confirmed by each deal owner.
        - No new deals are counted yet.

        TOP RISKS
        1. Maple Interiors (₹2,00,000, Negotiation): no contact since 2 Aug.
           Without it, the forecast is ₹6,33,000.
        2. Patel Auto Parts and Metro Pharma (₹5,40,000 together) are still
           at Qualified and close in late December. They may slip to January.

        ASKS
        - Arjun: call the Maple Interiors buyer by Friday.
        - Team: create ₹5,08,000 of new qualified pipeline by 9 Nov,
          mainly from referrals (45% win rate) and CA partners (33.3%).
          Deals created later will usually not close by 31 Dec.

        TRACK RECORD
        Last quarter we forecast ₹7,60,000 and won ₹7,10,000 (93% accurate).
        We were too high, so this quarter we checked every close date.

        Next update: 15 Oct.</code></pre>
          <p>Notice that the page says "we expect", not "we will". It names deals, gives amounts and says who must act. Every number comes from Kavya's spreadsheet.</p>
        </div>
        <div class="lc-card">
          <h3>Honest communication, and how AI helps</h3>
          <ul class="lc-list">
            <li><strong>Do not sandbag.</strong> Sandbagging means forecasting low on purpose, so you look good later. It hides real chances from leaders.</li>
            <li><strong>Do not inflate.</strong> Never raise the forecast to match the target. Leaders then plan hiring and cash on a number that is not real.</li>
            <li><strong>Share bad news early.</strong> A gap reported on 1 October can still be fixed. The same gap reported on 20 December cannot.</li>
            <li><strong>Say what changed.</strong> In later updates, explain why the number moved: a deal won, lost or slipped.</li>
            <li><strong>Separate facts from opinions.</strong> "No contact since 2 August" is a fact. "The buyer has lost interest" is a guess.</li>
          </ul>
          <p>AI can turn your numbers into clear sentences. It can also make them sound too positive. A weak prompt:</p>
          <pre><code>Write an exciting forecast update for my boss.</code></pre>
          <p>A better prompt:</p>
          <pre><code>Draft a one-page forecast summary for my founder.
        Use only the numbers below. Do not round, change or add numbers.
        Sections: headline, range and confidence, assumptions, top risks, asks, track record.
        Tone: calm and factual. No words like "confident", "strong" or "on track"
        unless the data shows it. State the gap to target plainly.
        After the summary, list every number you used, so I can check it.
        [paste your numbers]</code></pre>
          <p>Before you send it, check each number against your sheet. Remove private customer details. Read the tone again: would you be happy to defend every sentence?</p>
        </div>
        <div class="lc-card">
          <h3>Activity: fact, assumption, risk or ask?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Kavya has written these lines for her one-page summary. Sort each line into the section where it belongs.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="fact" data-label="Fact from the data"></div>
              <div data-sorter-target="bucket" data-bucket="assume" data-label="Assumption"></div>
              <div data-sorter-target="bucket" data-bucket="risk" data-label="Risk"></div>
              <div data-sorter-target="bucket" data-bucket="ask" data-label="Ask"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="fact" data-why="This comes straight from the CRM export and can be checked.">12 open deals worth ₹16,80,000 have close dates between 7 October and 20 December.</li>
              <li data-bucket="assume" data-why="Nobody knows this for sure. The forecast only holds if it stays true.">Our stage win rates from the last four quarters will hold this quarter.</li>
              <li data-bucket="risk" data-why="It names a deal and something that could reduce the forecast.">Maple Interiors may slip or be lost, because nobody has spoken to the buyer since 2 August.</li>
              <li data-bucket="ask" data-why="It asks a named person to do something by a date.">Arjun, please call the Maple Interiors buyer before Friday.</li>
              <li data-bucket="fact" data-why="This is a recorded result from last quarter.">Last quarter we forecast ₹7,60,000 and won ₹7,10,000.</li>
              <li data-bucket="assume" data-why="The forecast depends on these dates being right. Owners gave them, but they can still move.">The close dates given by deal owners are correct.</li>
              <li data-bucket="risk" data-why="Two large deals are early and late in the quarter, so they could move to January.">Patel Auto Parts and Metro Pharma are still at Qualified and close in late December.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to draft your one-page forecast summary and a short spoken version for a meeting. Replace the numbers in [brackets] with your own, or keep LedgerLite's.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a sales operations lead. Draft a one-page forecast summary for my [founder].

        My numbers (from my spreadsheet, do not change them):
        [Quarter: 1 Oct to 31 Dec 2026
        Weighted forecast: ₹7,73,000. Target: ₹9,00,000.
        Worst case: ₹4,98,000. Best case: ₹8,83,500.
        Commit: ₹2,65,000. Commit + best case: ₹7,80,000.
        By month: Oct ₹4,22,000, Nov ₹1,68,750, Dec ₹1,82,250.
        Risk 1: Maple Interiors, ₹2,00,000, Negotiation, no contact since 2 Aug. Forecast without it: ₹6,33,000.
        Risk 2: Patel Auto Parts and Metro Pharma, ₹5,40,000 together, still Qualified, close late Dec.
        New pipeline needed: ₹5,08,000 by 9 Nov.
        Last quarter: forecast ₹7,60,000, actual ₹7,10,000.]

        Tasks:
        1. Write the summary with these sections: headline (with the gap), range and confidence, assumptions, top risks, asks, track record.
        2. Write a 3-sentence version I can say aloud in a meeting.
        3. List every number you used, so I can check it.

        Rules: use only my numbers. Calculate only the gap and show it. Calm, factual tone. No promises. If something is missing, write [missing].</pre>
            <ul class="ai-try-checks">
              <li>Is the gap stated plainly as ₹1,27,000, near the top?</li>
              <li>Does every number match your list exactly, with nothing new added?</li>
              <li>Is the confidence level given with a reason?</li>
              <li>Does the tone avoid promises such as "we will hit the target"?</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Lead with the number and the gap. Then show the range, the assumptions, the named risks and the asks. Honest, early and specific forecasts build trust, even when the news is bad.
        </div>
      HTML
      starter_code: nil
    },
    15 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-sales">Sales & CRM</div>
          <h1 class="lc-title">Capstone: Build a Quarterly Forecast</h1>
        </div>
        <p class="lc-lead">In this capstone you will build a full quarterly forecast from start to finish. You will work with Rohit, the sales manager at <strong>Nimbus Logistics</strong>, a made-up delivery company in India. Nimbus sells delivery contracts to online stores. You will clean a messy CRM export and build a weighted forecast and a category forecast. Then you will check coverage and the gap, and use win/loss data to plan. Finally, you will write a one-page summary for Nimbus's leaders. All names and numbers are made up.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 280" role="img" aria-label="Six steps of Rohit's Q3 FY27 forecast for Nimbus Logistics. 1: clean the export, 10 rows become 8 open deals worth 40,00,000 rupees. 2: weighted forecast, 21,55,000 rupees. 3: forecast categories, commit 8,00,000 rupees, commit plus best case 22,00,000 rupees. 4: coverage 1.6 times, gap to the 25,00,000 rupee target 3,45,000 rupees. 5: win/loss insights, referrals win 40 percent, cold outreach 7.5 percent. 6: leader summary, range 14,15,000 to 25,10,000 rupees.">
            <defs><marker id="sfc15a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="380" y="22" font-size="12" fill="#9b99b8">Rohit's forecast for Nimbus Logistics · Q3 FY27 (1 October to 31 December 2026)</text>
              <rect x="20" y="36" width="220" height="84" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="130" y="62" font-weight="700">1. Clean the export</text>
              <text x="130" y="84" font-size="11.5">10 rows → 8 open deals</text>
              <text x="130" y="104" font-size="11.5" fill="#9b99b8">Total ₹40,00,000</text>
              <rect x="270" y="36" width="220" height="84" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="380" y="62" font-weight="700">2. Weighted forecast</text>
              <text x="380" y="84" font-size="11.5">8 deals × stage odds</text>
              <text x="380" y="104" font-size="11.5" fill="#c4b5fd">₹21,55,000</text>
              <rect x="520" y="36" width="220" height="84" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="630" y="62" font-weight="700">3. Forecast categories</text>
              <text x="630" y="84" font-size="11.5">Commit ₹8,00,000</text>
              <text x="630" y="104" font-size="11.5" fill="#9b99b8">Commit + best ₹22,00,000</text>
              <rect x="20" y="170" width="220" height="84" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="130" y="196" font-weight="700">4. Coverage and gap</text>
              <text x="130" y="218" font-size="11.5">Coverage 1.6x</text>
              <text x="130" y="238" font-size="11.5" fill="#fca5a5">Gap to ₹25,00,000: ₹3,45,000</text>
              <rect x="270" y="170" width="220" height="84" rx="10" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="380" y="196" font-weight="700">5. Win/loss insights</text>
              <text x="380" y="218" font-size="11.5">Referrals win 40%</text>
              <text x="380" y="238" font-size="11.5" fill="#9b99b8">Cold outreach wins 7.5%</text>
              <rect x="520" y="170" width="220" height="84" rx="10" fill="#27274e" stroke="#10b981" stroke-width="2"/>
              <text x="630" y="196" font-weight="700">6. Leader summary</text>
              <text x="630" y="218" font-size="11.5">Forecast ₹21,55,000</text>
              <text x="630" y="238" font-size="11.5" fill="#6ee7b7">Range ₹14,15,000 to ₹25,10,000</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#sfc15a)">
                <line x1="242" y1="78" x2="264" y2="78"/>
                <line x1="492" y1="78" x2="514" y2="78"/>
                <polyline points="630,122 630,145 130,145 130,164"/>
                <line x1="242" y1="212" x2="264" y2="212"/>
                <line x1="492" y1="212" x2="514" y2="212"/>
              </g>
            </g>
          </svg>
          <figcaption>Six steps turn a raw CRM export into a forecast leaders can trust and act on.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Step 1: the brief and the export</h3>
          <p>It is 1 October 2026. Nimbus uses the Indian financial year, so Q3 FY27 runs from 1 October to 31 December 2026. The quarter's target is <strong>₹25,00,000</strong> of new contract value. Rohit's two reps are Sneha and Nikhil. Rohit exports the open deals from the CRM and removes contact names, phone numbers and emails. He saves an untouched copy first. The export has 10 rows and these problems:</p>
          <table class="lc-table">
            <thead><tr><th>Export row</th><th>Problem</th><th>Fix</th></tr></thead>
            <tbody>
              <tr><td>3</td><td>Rangoli Home Decor amount is text: "Rs 5,00,000"</td><td><code>=VALUE(TRIM(SUBSTITUTE(SUBSTITUTE(E3,"Rs",""),",","")))</code> → 500000</td></tr>
              <tr><td>5</td><td>FitFuel Nutrition appears twice (row 4 and " fitfuel nutrition ")</td><td>Same deal ID N-203. Keep one row.</td></tr>
              <tr><td>7</td><td>Desi Denim Co stage typed "Negotiaton"</td><td>Change to "Negotiation" and use a drop-down list</td></tr>
              <tr><td>10</td><td>UrbanKraft Furniture has no close date</td><td>Rohit asks Nikhil. He confirms 30 November.</td></tr>
              <tr><td>11</td><td>Spicebox Kitchen is "Closed won" on 26 September</td><td>It closed last quarter. Remove it from the open pipeline.</td></tr>
            </tbody>
          </table>
          <p>After cleaning, 8 deals remain. <code>=SUM(E2:E9)</code> gives 4000000. That matches the CRM's open pipeline report for the quarter. Stage probabilities come from Nimbus's own last four quarters. Nimbus uses a <strong>Trial run</strong> stage: the store sends a few days of real orders through Nimbus before it signs. The rep's <strong>forecast category</strong> is their own judgement: <em>Commit</em> (they are confident it closes this quarter), <em>Best case</em> (it could close if things go well) or <em>Pipeline</em> (not likely this quarter).</p>
          <table class="lc-table">
            <thead><tr><th>Row</th><th>Company, state</th><th>D: Stage</th><th>E: Amount ₹</th><th>F: Close</th><th>G: Owner</th><th>H: Last activity</th><th>K: Category</th><th>I: Prob</th><th>J: Weighted ₹</th></tr></thead>
            <tbody>
              <tr><td>2</td><td>Chaiwala Crate, Maharashtra</td><td>Verbal yes</td><td>3,00,000</td><td>12 Oct</td><td>Sneha</td><td>29 Sep</td><td>Commit</td><td>90%</td><td>2,70,000</td></tr>
              <tr><td>3</td><td>Rangoli Home Decor, Rajasthan</td><td>Negotiation</td><td>5,00,000</td><td>30 Oct</td><td>Nikhil</td><td>24 Sep</td><td>Commit</td><td>75%</td><td>3,75,000</td></tr>
              <tr><td>4</td><td>FitFuel Nutrition, Maharashtra</td><td>Proposal sent</td><td>4,00,000</td><td>20 Nov</td><td>Sneha</td><td>26 Sep</td><td>Best case</td><td>55%</td><td>2,20,000</td></tr>
              <tr><td>5</td><td>Kiddo Toys Online, Gujarat</td><td>Trial run</td><td>6,00,000</td><td>15 Dec</td><td>Nikhil</td><td>10 Sep</td><td>Pipeline</td><td>40%</td><td>2,40,000</td></tr>
              <tr><td>6</td><td>Desi Denim Co, Karnataka</td><td>Negotiation</td><td>8,00,000</td><td>15 Nov</td><td>Nikhil</td><td>20 Aug</td><td>Best case</td><td>75%</td><td>6,00,000</td></tr>
              <tr><td>7</td><td>Zestify Snacks, Madhya Pradesh</td><td>Qualified</td><td>7,00,000</td><td>20 Dec</td><td>Sneha</td><td>18 Sep</td><td>Pipeline</td><td>20%</td><td>1,40,000</td></tr>
              <tr><td>8</td><td>Aarogya Herbals, Telangana</td><td>Proposal sent</td><td>2,00,000</td><td>31 Oct</td><td>Sneha</td><td>28 Sep</td><td>Best case</td><td>55%</td><td>1,10,000</td></tr>
              <tr><td>9</td><td>UrbanKraft Furniture, Haryana</td><td>Trial run</td><td>5,00,000</td><td>30 Nov</td><td>Nikhil</td><td>22 Sep</td><td>Pipeline</td><td>40%</td><td>2,00,000</td></tr>
              <tr><td></td><td><strong>Total</strong></td><td></td><td><strong>40,00,000</strong></td><td></td><td></td><td></td><td></td><td></td><td><strong>21,55,000</strong></td></tr>
            </tbody>
          </table>
          <p>Stage table in M2:N6: Qualified 20%, Trial run 40%, Proposal sent 55%, Negotiation 75%, Verbal yes 90%. Qualified matches Nimbus's overall win rate of 20%, because every deal starts there.</p>
        </div>
        <div class="lc-card">
          <h3>Steps 2 to 4: weighted, categories, coverage and gap</h3>
          <pre><code>Probability, in I2 (copy down to I9):   =VLOOKUP(D2,$M$2:$N$6,2,FALSE)
        Weighted value, in J2 (copy down):      =E2*I2
        Open pipeline:            =SUM(E2:E9)                                → 4000000
        Weighted forecast:        =SUMPRODUCT(E2:E9,I2:I9)                   → 2155000
        Commit:                   =SUMIF(K2:K9,"Commit",E2:E9)               → 800000
        Commit + best case:       =SUMIF(K2:K9,"Commit",E2:E9)+SUMIF(K2:K9,"Best case",E2:E9)
                                                                             → 2200000
        Coverage:                 =SUM(E2:E9)/2500000                        → 1.6
        Gap to target:            =2500000-SUMPRODUCT(E2:E9,I2:I9)           → 345000
        Days since activity:      =DATE(2026,10,1)-H6                        → 42
        Worst case:               =SUMPRODUCT(E2:E9,I2:I9)-J6-J7             → 1415000
        Best case:                =SUMPRODUCT(E2:E9,I2:I9)+SUMIF(D2:D9,"Negotiation",E2:E9)*0.25+SUMIF(D2:D9,"Verbal yes",E2:E9)*0.1
                                                                             → 2510000</code></pre>
          <table class="lc-table">
            <thead><tr><th>Check</th><th>Result</th><th>What it means</th></tr></thead>
            <tbody>
              <tr><td>Weighted forecast</td><td>₹21,55,000 (86.2% of target)</td><td>The base case. ₹3,45,000 short of ₹25,00,000.</td></tr>
              <tr><td>Commit vs weighted</td><td>₹8,00,000 vs ₹21,55,000</td><td>Reps are confident about only 32% of the target. The weighted number leans on deals they are not sure of.</td></tr>
              <tr><td>Commit + best case</td><td>₹22,00,000</td><td>Close to the weighted number. Still short of target.</td></tr>
              <tr><td>Coverage</td><td>1.6x</td><td>Thin. At a 20% overall win rate, a rough rule says 5x. But many deals are late-stage, so the weighted number is a better guide.</td></tr>
              <tr><td>Biggest risk</td><td>Desi Denim Co, ₹6,00,000 weighted</td><td>Negotiation, but no activity for 42 days, and Nikhil put it in Best case, not Commit. Without it: ₹15,55,000.</td></tr>
              <tr><td>Range</td><td>₹14,15,000 to ₹25,10,000</td><td>Worst: Desi Denim lost and Zestify slips. Best: both Negotiation deals and the Verbal yes deal close.</td></tr>
            </tbody>
          </table>
          <p>Nimbus also needs the timing for trucks and drivers. By close month, the weighted value is October ₹7,55,000, November ₹10,20,000 and December ₹3,80,000. That adds up to ₹21,55,000. November is the busy month for starting new contracts.</p>
        </div>
        <div class="lc-card">
          <h3>Step 5: win/loss insights</h3>
          <p>Rohit looks at the last four quarters: 120 closed deals, 24 won and 96 lost. The win rate is 24 ÷ 120 = 20%. The average won deal is ₹3,50,000, and the average sales cycle is 64 days.</p>
          <table class="lc-table">
            <thead><tr><th>Lead source</th><th>Won</th><th>Lost</th><th>Win rate</th></tr></thead>
            <tbody>
              <tr><td>Referral from a customer</td><td>10</td><td>15</td><td>10 ÷ 25 = 40%</td></tr>
              <tr><td>Inbound (website enquiry)</td><td>11</td><td>44</td><td>11 ÷ 55 = 20%</td></tr>
              <tr><td>Cold outreach</td><td>3</td><td>37</td><td>3 ÷ 40 = 7.5%</td></tr>
              <tr><td><strong>Total</strong></td><td><strong>24</strong></td><td><strong>96</strong></td><td><strong>24 ÷ 120 = 20%</strong></td></tr>
            </tbody>
          </table>
          <table class="lc-table">
            <thead><tr><th>Main loss reason (96 lost deals)</th><th>Deals</th><th>Share</th></tr></thead>
            <tbody>
              <tr><td>Price too high</td><td>34</td><td>35.4%</td></tr>
              <tr><td>Some of their customers' pin codes not covered</td><td>26</td><td>27.1%</td></tr>
              <tr><td>No decision, buyer went silent</td><td>22</td><td>22.9%</td></tr>
              <tr><td>Chose to keep their own delivery team</td><td>14</td><td>14.6%</td></tr>
            </tbody>
          </table>
          <ul class="lc-list">
            <li><strong>Fill the gap.</strong> At the 20% overall win rate, the ₹3,45,000 gap needs ₹17,25,000 of new qualified pipeline (3,45,000 ÷ 0.20). If new deals come from referrals and still win 40% of the time, ₹8,62,500 is enough (3,45,000 ÷ 0.40). That is an assumption to test, not a promise.</li>
            <li><strong>Mind the deadline.</strong> With a 64-day cycle, deals created after 28 October will usually not close by 31 December.</li>
            <li><strong>Qualify earlier.</strong> 26 losses were about pin codes. Checking coverage before the proposal saves time on deals Nimbus cannot serve.</li>
            <li><strong>Ask for referrals politely and legally.</strong> Only contact people who agreed to hear from you. Follow India's DPDP rules and TRAI's rules for calls and SMS. This is general information, not legal advice.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Step 6: the leader summary</h3>
          <pre><code>Nimbus Logistics: Q3 FY27 new contracts forecast (1 Oct to 31 Dec 2026)
        Prepared by Rohit, 1 Oct 2026. Data: CRM export of 1 Oct 2026, 8 open deals.

        HEADLINE
        We forecast ₹21,55,000 of new contracts against a ₹25,00,000 target.
        Gap: ₹3,45,000 (we expect 86.2% of target).
        Likely range: ₹14,15,000 to ₹25,10,000. Confidence: medium-low.
        Reps commit only ₹8,00,000 today.
        By month: Oct ₹7,55,000 · Nov ₹10,20,000 · Dec ₹3,80,000

        TOP RISKS
        1. Desi Denim Co (₹8,00,000, Negotiation): no contact for 42 days.
           Without it, the forecast is ₹15,55,000.
        2. Zestify Snacks (₹7,00,000) is still Qualified and closes 20 Dec.
        3. Coverage is only 1.6x.

        WHAT WE LEARNED FROM WIN/LOSS
        Referrals win 40% of the time, cold outreach 7.5%.
        26 of 96 losses were about pin code coverage.

        ASKS
        - Nikhil and Rohit: meet the Desi Denim buyer this week.
        - Sneha and Nikhil: ask current customers for referrals; aim for
          about ₹8,62,500 of new referral pipeline by 28 Oct.
        - Operations: check pin code coverage before every proposal.

        Next update: 15 Oct.</code></pre>
          <p>Before Rohit sends it, he checks every number against his sheet. He also checks the tone. The summary says "we expect", names each risk and asks named people to act.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: Rohit reviews the AI draft</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Rohit asks">"Here are my 8 cleaned deals, with no contact details, and my spreadsheet totals. Weighted ₹21,55,000, commit ₹8,00,000, target ₹25,00,000. Referrals win 40%. Draft a short summary for our directors."</li>
              <li data-kind="answer" data-label="AI replies">"We forecast ₹21,55,000 against ₹25,00,000. Referrals win 40%, so two new referral deals will close the ₹3,45,000 gap and we will hit target."</li>
              <li data-kind="warn" data-label="Problem">"Will hit target" is a promise the data cannot support. And the maths is wrong too. Two deals at ₹3,50,000 winning 40% is only ₹2,80,000 expected.</li>
              <li data-kind="tool" data-label="Spreadsheet">Rohit types =345000/0.4 to find the referral pipeline needed, and =ROUNDUP(345000/0.4/350000,0) for the number of deals.</li>
              <li data-kind="result" data-label="Result">862500, so ₹8,62,500 of referral pipeline. That is 3 deals at the average size, not 2.</li>
              <li data-kind="check" data-label="Rohit rewrites">"If new referral deals win at 40%, we need about ₹8,62,500 of them, created by 28 October. This is an estimate, not a promise."</li>
              <li data-kind="check" data-label="Final check">He checks every number against his sheet. He calls Nikhil about Desi Denim before he sends the summary.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Give AI the cleaned Nimbus deals and ask it to rebuild the forecast and draft the leader summary. Then compare its numbers with the ones in this lesson. Use your own pipeline in [brackets] when you are ready.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a sales forecasting analyst. Build my quarterly forecast and a leader summary.

        Business: [Nimbus Logistics]. Quarter: [1 Oct to 31 Dec 2026]. Today: [1 Oct 2026]. Target: ₹[25,00,000].
        Stage odds: [Qualified 20%, Trial run 40%, Proposal sent 55%, Negotiation 75%, Verbal yes 90%]
        Deals (company | stage | amount ₹ | close | last activity | rep category):
        [Chaiwala Crate | Verbal yes | 300000 | 12 Oct | 29 Sep | Commit
        Rangoli Home Decor | Negotiation | 500000 | 30 Oct | 24 Sep | Commit
        FitFuel Nutrition | Proposal sent | 400000 | 20 Nov | 26 Sep | Best case
        Kiddo Toys Online | Trial run | 600000 | 15 Dec | 10 Sep | Pipeline
        Desi Denim Co | Negotiation | 800000 | 15 Nov | 20 Aug | Best case
        Zestify Snacks | Qualified | 700000 | 20 Dec | 18 Sep | Pipeline
        Aarogya Herbals | Proposal sent | 200000 | 31 Oct | 28 Sep | Best case
        UrbanKraft Furniture | Trial run | 500000 | 30 Nov | 22 Sep | Pipeline]

        Tasks:
        1. Weighted value per deal. Totals: pipeline, weighted, commit, commit plus best case.
        2. Coverage and gap to target.
        3. Top 3 risks, each with a next step.
        4. A leader summary under 150 words.

        Rules: use only my data, show working, no promises.</pre>
            <ul class="ai-try-checks">
              <li>Pipeline ₹40,00,000 and weighted ₹21,55,000. Check the additions in your sheet.</li>
              <li>Commit ₹8,00,000 and commit plus best case ₹22,00,000.</li>
              <li>Coverage 1.6x and a gap of ₹3,45,000.</li>
              <li>Is Desi Denim Co the top risk: Negotiation, 42 days with no activity, only Best case?</li>
              <li>Does the summary avoid promises and match your numbers exactly?</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A forecast you can trust follows the same path every quarter: clean the data, weight it, compare it with the rep's judgement, check coverage and the gap, learn from wins and losses, then explain it honestly. The spreadsheet does the maths, AI helps you review and write, and you own every number.
        </div>
      HTML
      starter_code: nil
    }
  }.freeze
end

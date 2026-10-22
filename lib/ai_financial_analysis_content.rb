module AiFinancialAnalysisContent
  # Units (sidebar dividers): 1–4 Analysis Basics · 5–9 Reading and Measuring · 10–14 Forecasting and Decisions · 15 Capstone
  # Widgets: sequence, sorter, stepper. No code editor: each Try It is an ai-try prompt box.
  LESSONS = {
    1 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-fin">Finance</div>
          <h1 class="lc-title">What Financial Analysis Is</h1>
        </div>
        <p class="lc-lead"><strong>Financial analysis</strong> means using a business's numbers to answer simple questions. Is it making a profit? Can it pay its bills? Is it growing? Is it using its money well? In this lesson, you will learn who asks these questions and meet the three main financial statements. You will also see how the three statements link together. This course is education only. It is not financial, tax or investment advice.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="The three financial statements of the made-up company Sahyadri Foods Ltd for FY26. The profit and loss statement shows net profit of 66 crore rupees. The balance sheet shows equity of 303 crore rupees on 31 March. The cash flow statement shows closing cash of 40 crore rupees. Net profit minus dividends raises reserves from 205 to 253 crore. Closing cash in the cash flow equals cash on the balance sheet.">
            <defs><marker id="fa1a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="380" y="22" font-weight="700">Sahyadri Foods Ltd (made-up), FY26, ₹ crore</text>
              <rect x="20" y="36" width="230" height="136" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="135" y="62" font-weight="700" fill="#93c5fd">Profit and Loss</text>
              <text x="135" y="88" font-size="12">Did we make a profit?</text>
              <text x="135" y="110" font-size="11" fill="#9b99b8">for a period (one year)</text>
              <text x="135" y="146" font-size="15">Net profit ₹66 cr</text>
              <rect x="265" y="36" width="230" height="136" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="380" y="62" font-weight="700" fill="#c4b5fd">Balance Sheet</text>
              <text x="380" y="88" font-size="12">What do we own and owe?</text>
              <text x="380" y="110" font-size="11" fill="#9b99b8">on one date (31 March)</text>
              <text x="380" y="146" font-size="15">Equity ₹303 cr</text>
              <rect x="510" y="36" width="230" height="136" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="625" y="62" font-weight="700" fill="#6ee7b7">Cash Flow Statement</text>
              <text x="625" y="88" font-size="12">Where did the cash go?</text>
              <text x="625" y="110" font-size="11" fill="#9b99b8">for a period (one year)</text>
              <text x="625" y="146" font-size="15">Closing cash ₹40 cr</text>
              <rect x="40" y="212" width="310" height="70" rx="10" fill="#27274e" stroke="#f59e0b"/>
              <text x="195" y="240" font-size="12">Net profit 66 − dividends 18 = 48</text>
              <text x="195" y="264" font-size="12" fill="#fcd34d">Reserves grow: 205 → 253</text>
              <rect x="410" y="212" width="310" height="70" rx="10" fill="#27274e" stroke="#22d3ee"/>
              <text x="565" y="240" font-size="12">Closing cash in cash flow: 40</text>
              <text x="565" y="264" font-size="12" fill="#67e8f9">= Cash on balance sheet: 40</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#fa1a)">
                <path d="M135,174 L135,208"/>
                <path d="M300,210 L352,178"/>
                <path d="M625,174 L625,208"/>
                <path d="M460,210 L408,178"/>
              </g>
            </g>
          </svg>
          <figcaption>Each statement answers a different question. They link: profit adds to the balance sheet, and the cash flow ends at the balance sheet's cash.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>What questions does analysis answer?</h3>
          <p>Every financial analysis starts with a question. Here are the most common ones.</p>
          <table class="lc-table">
            <thead><tr><th>Question</th><th>What you look at</th><th>Covered later in this course</th></tr></thead>
            <tbody>
              <tr><td>Is the business profitable?</td><td>Profit and margins (profit as a share of sales)</td><td>Profitability ratios</td></tr>
              <tr><td>Can it pay its bills and loans?</td><td>Cash, short-term assets, debt</td><td>Liquidity and debt ratios</td></tr>
              <tr><td>Is it using its money well?</td><td>Stock, customer dues, returns on capital</td><td>Efficiency ratios</td></tr>
              <tr><td>Is it getting better or worse?</td><td>This year compared with last year</td><td>Comparing companies and years</td></tr>
              <tr><td>What might happen next?</td><td>Budgets, forecasts, cash plans</td><td>Forecasting and cash flow planning</td></tr>
            </tbody>
          </table>
          <p><strong>Who uses it?</strong> Owners and managers use it to run the business. Lenders, such as the made-up Navkar Bank, use it to decide on a loan. Investors use it to study a company. Suppliers use it to decide on credit. Job seekers can use it to check a future employer.</p>
        </div>
        <div class="lc-card">
          <h3>The three financial statements</h3>
          <p>Our main example is <strong>Sahyadri Foods Ltd</strong>. It is a made-up listed company in Maharashtra that makes snacks and ready-to-cook mixes. All its numbers are in ₹ crore (1 crore = 1,00,00,000 rupees). "FY26" means the financial year from 1 April 2025 to 31 March 2026. You will also meet two small made-up businesses: <strong>Sweet Crumbs</strong>, a home bakery in Maharashtra, and <strong>Rangrez Crafts</strong>, a handicrafts brand in Rajasthan.</p>
          <table class="lc-table">
            <thead><tr><th>Statement</th><th>What it shows</th><th>Sahyadri example (FY26)</th></tr></thead>
            <tbody>
              <tr><td><strong>Profit and Loss (P&amp;L)</strong></td><td>Income and costs over a period. The last line is net profit.</td><td>Revenue ₹920 cr, net profit ₹66 cr</td></tr>
              <tr><td><strong>Balance Sheet</strong></td><td>What the business owns (assets) and owes (liabilities) on one date. The rest belongs to the owners (equity).</td><td>Total assets ₹526 cr, equity ₹303 cr</td></tr>
              <tr><td><strong>Cash Flow Statement</strong></td><td>Cash that came in and went out over a period.</td><td>Cash went from ₹27 cr to ₹40 cr</td></tr>
            </tbody>
          </table>
          <p><strong>How they link:</strong> Sahyadri made a net profit of ₹66 cr and paid ₹18 cr as dividends (profit shared with shareholders). The other ₹48 cr stays in the business. So reserves (profits kept over the years) rise from ₹205 cr to ₹253 cr. Also, the cash flow statement ends with ₹40 cr of cash. The balance sheet shows the same ₹40 cr.</p>
          <p>These links help you check any analysis, including one written by AI. If the numbers do not link, something is wrong.</p>
        </div>
        <div class="lc-card">
          <h3>A simple analysis, step by step</h3>
          <p>Suppose the question is: "Did Sahyadri do better in FY26 than in FY25?"</p>
          <ol class="lc-list">
            <li><strong>Collect the numbers.</strong> Revenue went from ₹800 cr to ₹920 cr. Net profit went from ₹60 cr to ₹66 cr.</li>
            <li><strong>Calculate.</strong> Revenue growth = (920 − 800) ÷ 800 = 15%. Profit growth = (66 − 60) ÷ 60 = 10%.</li>
            <li><strong>Ask why.</strong> Profit grew slower than sales. So costs grew faster than sales. You would look at the P&amp;L to find which costs.</li>
            <li><strong>Write a short answer.</strong> "Sales grew 15%, but profit grew only 10%. Costs need a closer look."</li>
          </ol>
          <p>In a spreadsheet, the growth formula is <code>=(C2-B2)/B2</code>, where B2 is last year and C2 is this year. Format the cell as a percentage.</p>
          <p>AI can help with each step. But you choose the question, check the numbers and decide what the answer means.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: which statement answers it?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each question into the statement that answers it best.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="pl" data-label="Profit and Loss"></div>
              <div data-sorter-target="bucket" data-bucket="bs" data-label="Balance Sheet"></div>
              <div data-sorter-target="bucket" data-bucket="cf" data-label="Cash Flow Statement"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="pl" data-why="Sales and profit for the year are on the P&amp;L.">How much did Sahyadri sell in FY26, and what was its profit?</li>
              <li data-bucket="bs" data-why="Loans owed on a date are liabilities on the balance sheet.">How much does Sahyadri owe to banks on 31 March 2026?</li>
              <li data-bucket="cf" data-why="Money spent on machines is shown under investing in the cash flow statement.">How much cash did Sahyadri spend on new machines this year?</li>
              <li data-bucket="pl" data-why="Salary costs for the year are an expense on the P&amp;L.">How much did Sweet Crumbs spend on staff salaries this year?</li>
              <li data-bucket="bs" data-why="Stock held on a date is a current asset on the balance sheet.">How much stock (unsold goods) does Rangrez Crafts hold today?</li>
              <li data-bucket="cf" data-why="The cash flow statement shows whether the business itself produced cash.">Did the business make cash from its normal work, or did it need loans?</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask the AI to explain the three statements using Sahyadri's made-up numbers. Then check that its links add up.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a patient finance teacher for beginners in India. This is education only, not investment advice.

        Explain the three financial statements (Profit and Loss, Balance Sheet, Cash Flow Statement) using this made-up company: [Sahyadri Foods Ltd, a Maharashtra snacks maker]. Amounts are in ₹ crore for [FY26].
        - Revenue 920, net profit 66, dividends paid 18
        - Reserves: 205 at the start of the year, 253 at the end
        - Total assets 526, total equity 303
        - Cash: 27 at the start, 40 at the end
        - Cash from operating activities 66, investing -60, financing +7

        Do this:
        1. For each statement, say in 2 simple sentences what question it answers.
        2. Show how net profit and dividends explain the change in reserves. Show the maths.
        3. Show how the three cash flows explain the change in cash. Show the maths.
        4. Give me 3 questions I should ask next about this company.
        Use only the numbers above. If you need a number that is not given, say so.</pre>
            <ul class="ai-try-checks">
              <li>205 + 66 − 18 = 253. Does the AI's maths match?</li>
              <li>27 + 66 − 60 + 7 = 40. Does the AI's maths match?</li>
              <li>Did it use any number that is not in the prompt?</li>
              <li>Is the P&amp;L described as a period and the balance sheet as one date?</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Financial analysis is asking a clear question and answering it with numbers. The P&amp;L shows profit, the balance sheet shows what is owned and owed, and the cash flow shows real cash. The three statements link, so you can use the links to check any answer.
        </div>
      HTML
      starter_code: nil
    },
    2 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-fin">Finance</div>
          <h1 class="lc-title">Where AI Helps in Analysis</h1>
        </div>
        <p class="lc-lead">An AI assistant can save you hours of finance work. It can summarise long reports, do calculations, explain terms and draft notes. But AI also makes mistakes with numbers. It can even invent figures that look real. In this lesson, you will learn the four jobs where AI helps most. You will also learn a simple habit that catches its mistakes before they reach your manager, client or bank.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="A four-step workflow. First, the source numbers. Second, AI drafts a summary, calculation, explanation or note. Third, you check the draft against the source and a spreadsheet. If it is wrong, you fix it and ask again. Fourth, you use the checked result. Below, a list of risks: wrong maths, invented figures, mixed-up years, crore and lakh confusion, old facts and private data.">
            <defs><marker id="fa2a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="20" y="30" width="158" height="120" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="99" y="56" font-weight="700" fill="#93c5fd">1. Source</text>
              <text x="99" y="82" font-size="12">Annual report</text>
              <text x="99" y="102" font-size="12">P&amp;L, balance sheet</text>
              <text x="99" y="122" font-size="12">Your spreadsheet</text>
              <rect x="210" y="30" width="158" height="120" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="289" y="56" font-weight="700" fill="#c4b5fd">2. AI drafts</text>
              <text x="289" y="82" font-size="12">Summarise</text>
              <text x="289" y="102" font-size="12">Calculate, explain</text>
              <text x="289" y="122" font-size="12">Draft notes</text>
              <rect x="400" y="30" width="158" height="120" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="479" y="56" font-weight="700" fill="#fcd34d">3. You check</text>
              <text x="479" y="82" font-size="12">Every number</text>
              <text x="479" y="102" font-size="12">vs the source</text>
              <text x="479" y="122" font-size="12">and a spreadsheet</text>
              <rect x="590" y="30" width="150" height="120" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="665" y="56" font-weight="700" fill="#6ee7b7">4. Use it</text>
              <text x="665" y="82" font-size="12">Report, email</text>
              <text x="665" y="102" font-size="12">or decision</text>
              <text x="665" y="122" font-size="12">(by a person)</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#fa2a)">
                <path d="M180,90 L206,90"/>
                <path d="M370,90 L396,90"/>
                <path d="M560,90 L586,90"/>
                <path d="M479,152 Q479,186 384,186 Q289,186 289,156"/>
              </g>
              <text x="384" y="206" font-size="11.5" fill="#fca5a5">wrong? fix it and ask again</text>
              <rect x="20" y="222" width="720" height="66" rx="10" fill="#27274e" stroke="#ec4899"/>
              <text x="380" y="246" font-weight="700" fill="#f9a8d4">Common AI risks in finance work</text>
              <text x="380" y="272" font-size="12">wrong maths · invented figures · mixed-up years · crore vs lakh · old facts · private data</text>
            </g>
          </svg>
          <figcaption>AI drafts, you check. Nothing leaves step 3 until every number matches the source.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Four jobs where AI helps</h3>
          <table class="lc-table">
            <thead><tr><th>Job</th><th>Example task</th><th>What you must still check</th></tr></thead>
            <tbody>
              <tr><td><strong>Summarise</strong></td><td>Turn a 200-page annual report into one page of key points</td><td>Every number and claim is really in the report</td></tr>
              <tr><td><strong>Calculate</strong></td><td>Work out growth, margins and ratios from numbers you give</td><td>Recalculate in a spreadsheet</td></tr>
              <tr><td><strong>Explain</strong></td><td>Explain "EBITDA" or "working capital" in simple words</td><td>The definition matches a trusted source</td></tr>
              <tr><td><strong>Draft</strong></td><td>Write an email to your manager about this quarter's results</td><td>Tone, facts and what you actually recommend</td></tr>
            </tbody>
          </table>
          <p>AI is also good at asking questions. Try "What else should I look at?" after any analysis. It often points you to something you missed.</p>
        </div>
        <div class="lc-card">
          <h3>The risks, in plain words</h3>
          <ul class="lc-list">
            <li><strong>Wrong maths.</strong> AI models predict text. They can get sums and percentages wrong, even when the working looks neat.</li>
            <li><strong>Invented figures.</strong> If you ask about a number the AI does not have, it may make one up. This is often called a "hallucination".</li>
            <li><strong>Mixed-up years or units.</strong> It may use FY25 where you meant FY26. It may confuse lakh (1,00,000) and crore (1,00,00,000).</li>
            <li><strong>Different definitions.</strong> "Operating profit" or "debt" can be calculated in more than one way. Ask the AI to state the formula it used.</li>
            <li><strong>Old facts.</strong> Tax rules, interest rates and company news change. The AI may not know the latest. Check official sources.</li>
            <li><strong>Private data.</strong> Do not paste unpublished company accounts, client data, PAN, bank account numbers or passwords into a public AI tool. Follow your company's AI policy. Use made-up or public data to practise.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>A weak prompt and a better prompt</h3>
          <p>A weak prompt makes the AI find the numbers itself. That is where invented figures come from.</p>
          <pre><code>How profitable is Sahyadri Foods? Give me its margins.</code></pre>
          <p>A better prompt gives the numbers, asks for the working and sets rules:</p>
          <pre><code>You are a careful financial analyst. Use ONLY the numbers below.
        Sahyadri Foods Ltd (made-up), ₹ crore:
        FY25: revenue 800, gross profit 280, net profit 60
        FY26: revenue 920, gross profit 313, net profit 66
        Calculate gross margin and net margin for both years.
        Show the formula and the working for each one.
        Round to one decimal place.
        If you need any number I did not give, say "not given".</code></pre>
          <p>The right answers are: gross margin 35.0% and 34.0%, net margin 7.5% and 7.2%. You can check them in a spreadsheet with <code>=280/800</code> and <code>=313/920</code>.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: catch the mistake</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Prompt">A junior analyst at LedgerLite Pvt Ltd gives the AI Sahyadri's made-up FY25 and FY26 numbers. She asks for revenue growth and net profit growth.</li>
              <li data-kind="answer" data-label="AI answer">"Revenue grew from ₹800 cr to ₹920 cr, which is 15.0%. Net profit grew from ₹60 cr to ₹66 cr, which is 15.0%. Profit kept pace with sales."</li>
              <li data-kind="tool" data-label="Spreadsheet">The analyst types the numbers in a sheet. She uses <code>=(C2-B2)/B2</code> for each line.</li>
              <li data-kind="result" data-label="Sheet shows">Revenue growth 15.0%. Net profit growth 10.0%.</li>
              <li data-kind="warn" data-label="Mistake found">The AI copied the revenue growth into the profit line. Its conclusion "profit kept pace with sales" is also wrong.</li>
              <li data-kind="check" data-label="Fix">The analyst corrects the note: "Sales grew 15%, but profit grew only 10%." She adds a question: which costs grew faster than sales?</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask the AI to calculate from made-up numbers and to list its sources. Then check every result yourself.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a careful financial analyst. This is education only, not investment advice.

        Use ONLY these made-up numbers for [Sahyadri Foods Ltd], in ₹ crore:
        FY25: revenue [800], cost of materials [520], net profit [60]
        FY26: revenue [920], cost of materials [607], net profit [66]

        Tasks:
        1. Calculate gross profit (revenue minus cost of materials) for both years.
        2. Calculate gross margin and net margin for both years.
        3. Calculate revenue growth and net profit growth.
        4. For each result, show the formula and the working. Round to one decimal place.
        5. Write 2 simple sentences on what the numbers show.
        6. At the end, make a table called "Numbers I used". List every input number and say where it came from. If you used any number not given above, mark it "NOT GIVEN".</pre>
            <ul class="ai-try-checks">
              <li>Gross profit should be 280 and 313 (if you kept the numbers).</li>
              <li>Recalculate each margin and growth rate in a spreadsheet.</li>
              <li>Does the "Numbers I used" table contain only your numbers?</li>
              <li>Does the summary match the maths (profit grew slower than sales)?</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Let AI draft, summarise and explain. But give it the numbers, ask it to show its working, and recalculate every figure yourself. A neat answer is not the same as a correct answer.
        </div>
      HTML
      starter_code: nil
    },
    3 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-fin">Finance</div>
          <h1 class="lc-title">Reading a Profit and Loss Statement</h1>
        </div>
        <p class="lc-lead">The <strong>Profit and Loss statement (P&amp;L)</strong> shows the money a business earned and spent over a period, such as a year. It is also called the income statement or the statement of profit and loss. In this lesson, you will read it from top to bottom: revenue, costs, gross profit, operating profit and net profit. You will also learn how AI can explain each line, and what you must check. This is education only, not investment advice.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="A waterfall chart of Sahyadri Foods FY26 in crore rupees. Revenue 920, minus materials 607, gives gross profit 313. Minus operating costs 212 gives operating profit 101. Minus interest 13 and tax 22 gives net profit 66.">
            <defs><marker id="fa3a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12" fill="#e2e0f0" text-anchor="middle">
              <text x="380" y="18" font-weight="700" font-size="13">Sahyadri Foods Ltd (made-up), FY26 P&amp;L, ₹ crore</text>
              <line x1="20" y1="240" x2="740" y2="240" stroke="#4b4a78"/>
              <rect x="35" y="40" width="64" height="200" rx="3" fill="#3b82f6"/>
              <text x="67" y="34">920</text>
              <rect x="125" y="40" width="64" height="132" rx="3" fill="#ec4899"/>
              <text x="157" y="34" fill="#f9a8d4">−607</text>
              <rect x="215" y="172" width="64" height="68" rx="3" fill="#10b981"/>
              <text x="247" y="166">313</text>
              <rect x="305" y="172" width="64" height="46" rx="3" fill="#ec4899"/>
              <text x="337" y="166" fill="#f9a8d4">−212</text>
              <rect x="395" y="218" width="64" height="22" rx="3" fill="#10b981"/>
              <text x="427" y="212">101</text>
              <rect x="485" y="218" width="64" height="3" fill="#ec4899"/>
              <text x="517" y="212" fill="#f9a8d4">−13</text>
              <rect x="575" y="221" width="64" height="5" fill="#ec4899"/>
              <text x="607" y="212" fill="#f9a8d4">−22</text>
              <rect x="665" y="226" width="64" height="14" rx="2" fill="#f59e0b"/>
              <text x="697" y="212">66</text>
              <g font-size="11" fill="#9b99b8">
                <text x="67" y="258">Revenue</text>
                <text x="157" y="258">Materials</text>
                <text x="247" y="258">Gross profit</text>
                <text x="337" y="258">Op. costs</text>
                <text x="427" y="258">Op. profit</text>
                <text x="517" y="258">Interest</text>
                <text x="607" y="258">Tax</text>
                <text x="697" y="258">Net profit</text>
              </g>
              <text x="380" y="288" font-size="11.5" fill="#9b99b8">Op. costs = employees 90 + other expenses 98 + depreciation 24 = 212</text>
            </g>
          </svg>
          <figcaption>Read the P&amp;L from the top. Each group of costs is taken away until only net profit is left.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The main lines, in plain words</h3>
          <table class="lc-table">
            <thead><tr><th>Line</th><th>What it means</th><th>FY25</th><th>FY26</th></tr></thead>
            <tbody>
              <tr><td><strong>Revenue</strong></td><td>Sales: money earned from selling goods or services</td><td>800</td><td>920</td></tr>
              <tr><td>Cost of materials</td><td>Raw materials and packaging used to make what was sold. Often called cost of goods sold (COGS).</td><td>520</td><td>607</td></tr>
              <tr><td><strong>Gross profit</strong></td><td>Revenue minus cost of materials</td><td>280</td><td>313</td></tr>
              <tr><td>Employee costs</td><td>Salaries, wages and staff benefits</td><td>80</td><td>90</td></tr>
              <tr><td>Other expenses</td><td>Rent, power, freight, marketing and so on</td><td>90</td><td>98</td></tr>
              <tr><td><strong>EBITDA</strong></td><td>Earnings before interest, tax, depreciation and amortisation</td><td>110</td><td>125</td></tr>
              <tr><td>Depreciation</td><td>The cost of machines and buildings spread over their useful life. No cash leaves this year.</td><td>20</td><td>24</td></tr>
              <tr><td><strong>Operating profit (EBIT)</strong></td><td>Profit from the main business, before interest and tax</td><td>90</td><td>101</td></tr>
              <tr><td>Finance costs</td><td>Interest on loans</td><td>10</td><td>13</td></tr>
              <tr><td><strong>Profit before tax (PBT)</strong></td><td>Operating profit minus finance costs</td><td>80</td><td>88</td></tr>
              <tr><td>Tax expense</td><td>Income tax for the year</td><td>20</td><td>22</td></tr>
              <tr><td><strong>Net profit (PAT)</strong></td><td>Profit after tax: what is left for the owners</td><td>60</td><td>66</td></tr>
            </tbody>
          </table>
          <p>All numbers are made-up, in ₹ crore, for Sahyadri Foods Ltd.</p>
        </div>
        <div class="lc-card">
          <h3>What the numbers tell you</h3>
          <p>A <strong>margin</strong> is a profit line as a percentage of revenue. It lets you compare years of different sizes.</p>
          <table class="lc-table">
            <thead><tr><th>Margin</th><th>Formula</th><th>FY25</th><th>FY26</th></tr></thead>
            <tbody>
              <tr><td>Gross margin</td><td>Gross profit ÷ Revenue</td><td>280 ÷ 800 = 35.0%</td><td>313 ÷ 920 = 34.0%</td></tr>
              <tr><td>Operating margin</td><td>Operating profit ÷ Revenue</td><td>90 ÷ 800 = 11.3%</td><td>101 ÷ 920 = 11.0%</td></tr>
              <tr><td>Net margin</td><td>Net profit ÷ Revenue</td><td>60 ÷ 800 = 7.5%</td><td>66 ÷ 920 = 7.2%</td></tr>
            </tbody>
          </table>
          <p>Sales grew 15%. But every margin fell a little. Materials cost more for each rupee of sales. So profit grew only 10%. That is the story in this P&amp;L.</p>
          <p><strong>In a spreadsheet:</strong> put revenue in B2 and cost of materials in B3. Then gross profit is <code>=B2-B3</code> and gross margin is <code>=(B2-B3)/B2</code>.</p>
          <p><strong>A tip for Indian reports:</strong> Indian companies follow Schedule III of the Companies Act, 2013. It lists expenses by type. For example: cost of materials consumed, purchases of stock-in-trade, changes in inventories, employee benefits expense and other expenses. The report often has no "gross profit" or "EBITDA" line. The table above is an analyst's layout. You add these cost lines yourself and take them from revenue. Ask the AI to show which lines it added.</p>
        </div>
        <div class="lc-card">
          <h3>Using AI to read a P&amp;L</h3>
          <p>A weak prompt:</p>
          <pre><code>Explain this P&amp;L.</code></pre>
          <p>A better prompt:</p>
          <pre><code>You are a finance teacher. Explain each line of this P&amp;L in one simple sentence.
        Then calculate gross, operating and net margin for both years.
        Show the working. Tell me which costs grew faster than revenue.
        Use only the numbers I give. [paste the made-up P&amp;L table]</code></pre>
          <p><strong>Always check:</strong> the AI's totals match the P&amp;L, it used the right year, and it did not treat depreciation as a cash payment. Remember that profit is not the same as cash. The cash flow lesson shows why.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: build the P&amp;L</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put these P&amp;L lines in order, from the top of the statement to the bottom.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Revenue (₹920 cr)</li>
              <li data-order="2">Minus cost of materials, giving gross profit (₹313 cr)</li>
              <li data-order="3">Minus employee costs and other expenses, giving EBITDA (₹125 cr)</li>
              <li data-order="4">Minus depreciation, giving operating profit (₹101 cr)</li>
              <li data-order="5">Minus finance costs, giving profit before tax (₹88 cr)</li>
              <li data-order="6">Minus tax, giving net profit (₹66 cr)</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask the AI to read a small made-up P&amp;L for the Sweet Crumbs bakery. Then check its maths.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a patient finance teacher for small business owners in India. This is education only, not tax advice.

        Here is a made-up yearly P&amp;L for [Sweet Crumbs, a small home bakery in Maharashtra]:
        - Sales: [₹48,00,000]
        - Ingredients and packaging: [₹19,20,000]
        - Staff salaries: [₹12,00,000]
        - Shop rent: [₹6,00,000]
        - Power, gas and other costs: [₹4,80,000]
        - Depreciation on ovens: [₹1,20,000]
        - Interest on a bank loan: [₹60,000]

        Tasks:
        1. Set out the P&amp;L in a table: sales, gross profit, operating profit, profit before tax.
        2. Explain each line in one simple sentence.
        3. Calculate gross margin and operating margin. Show the working.
        4. Name the two biggest costs after ingredients, and suggest one question the owner should ask about each.
        Use Indian number format (lakh). Do not work out income tax. Say that tax depends on the business type and a CA should advise.</pre>
            <ul class="ai-try-checks">
              <li>Gross profit should be ₹28,80,000 (60% margin) if you kept the numbers.</li>
              <li>Operating profit should be ₹4,80,000 (10% margin).</li>
              <li>Profit before tax should be ₹4,20,000.</li>
              <li>Did it treat interest as below operating profit?</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Read a P&amp;L from top to bottom, and turn each profit line into a margin. Growing sales are good news only if the margins hold. Always recalculate the AI's totals against the statement.
        </div>
      HTML
      starter_code: nil
    },
    4 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-fin">Finance</div>
          <h1 class="lc-title">Reading a Balance Sheet and Cash Flow Statement</h1>
        </div>
        <p class="lc-lead">The P&amp;L shows profit. But profit alone does not tell you if a business is safe. The <strong>balance sheet</strong> shows what a business owns and owes on one date. The <strong>cash flow statement</strong> shows where the real cash came from and where it went. In this lesson, you will read both for Sahyadri Foods Ltd. You will also learn why a profitable company can still run short of cash.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 310" role="img" aria-label="Left: Sahyadri Foods balance sheet on 31 March 2026. Assets of 526 crore rupees: property and equipment 306, inventory 100, receivables 80, cash 40. They equal liabilities plus equity of 526: equity 303, long-term loans 110, current liabilities 113. Right: FY26 cash flow. Opening cash 27, plus operating 66, minus investing 60, plus financing 7, gives closing cash 40, the same as the balance sheet.">
            <g font-family="inherit" font-size="12" fill="#e2e0f0" text-anchor="middle">
              <text x="195" y="20" font-weight="700" font-size="13">Balance sheet, 31 Mar 2026 (₹ cr)</text>
              <text x="115" y="48" font-weight="700" fill="#93c5fd">Assets 526</text>
              <text x="275" y="48" font-weight="700" fill="#c4b5fd">Liabilities + equity 526</text>
              <rect x="50" y="152" width="130" height="128" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="115" y="220">PPE 306</text>
              <rect x="50" y="110" width="130" height="42" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="115" y="135">Inventory 100</text>
              <rect x="50" y="77" width="130" height="33" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="115" y="98">Receivables 80</text>
              <rect x="50" y="60" width="130" height="17" fill="#27274e" stroke="#10b981"/>
              <text x="115" y="73" font-size="11" fill="#6ee7b7">Cash 40</text>
              <text x="195" y="175" font-size="20" fill="#9b99b8">=</text>
              <rect x="210" y="153" width="130" height="127" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="275" y="220">Equity 303</text>
              <rect x="210" y="107" width="130" height="46" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="275" y="134" font-size="11">Long-term loans 110</text>
              <rect x="210" y="60" width="130" height="47" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="275" y="80" font-size="11">Current</text>
              <text x="275" y="95" font-size="11">liabilities 113</text>
              <text x="195" y="300" font-size="11" fill="#9b99b8">PPE = property, plant and equipment</text>
              <line x1="385" y1="30" x2="385" y2="290" stroke="#4b4a78"/>
              <text x="570" y="20" font-weight="700" font-size="13">Cash flow, FY26 (₹ cr)</text>
              <g text-anchor="start">
                <text x="400" y="80">Opening cash 27</text>
                <text x="400" y="120" fill="#6ee7b7">Operating +66</text>
                <text x="400" y="160" fill="#f9a8d4">Investing −60</text>
                <text x="400" y="200" fill="#6ee7b7">Financing +7</text>
                <text x="400" y="240" font-weight="700" fill="#6ee7b7">Closing cash 40</text>
              </g>
              <rect x="530" y="64" width="58" height="22" rx="3" fill="#3b82f6"/>
              <rect x="588" y="104" width="142" height="22" rx="3" fill="#10b981"/>
              <rect x="601" y="144" width="129" height="22" rx="3" fill="#ec4899"/>
              <rect x="601" y="184" width="15" height="22" rx="3" fill="#10b981"/>
              <rect x="530" y="224" width="86" height="22" rx="3" fill="#f59e0b"/>
              <text x="570" y="276" font-size="11.5" fill="#9b99b8">Closing cash 40 = cash on the balance sheet</text>
            </g>
          </svg>
          <figcaption>Assets always equal liabilities plus equity. The cash flow explains how cash moved from ₹27 cr to ₹40 cr, which is the cash on the balance sheet.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The balance sheet</h3>
          <p>The balance sheet always balances: <strong>Assets = Liabilities + Equity</strong>. Assets are what the business owns. Liabilities are what it owes to others. Equity is what belongs to the owners (shareholders).</p>
          <table class="lc-table">
            <thead><tr><th>Line (₹ crore, made-up)</th><th>31 Mar 2025</th><th>31 Mar 2026</th></tr></thead>
            <tbody>
              <tr><td>Property, plant and equipment (after depreciation)</td><td>270</td><td>306</td></tr>
              <tr><td>Inventory (stock of materials and finished snacks)</td><td>80</td><td>100</td></tr>
              <tr><td>Trade receivables (money customers still owe)</td><td>66</td><td>80</td></tr>
              <tr><td>Cash and bank</td><td>27</td><td>40</td></tr>
              <tr><td><strong>Total assets</strong></td><td><strong>443</strong></td><td><strong>526</strong></td></tr>
              <tr><td>Share capital</td><td>50</td><td>50</td></tr>
              <tr><td>Reserves (profits kept in the business)</td><td>205</td><td>253</td></tr>
              <tr><td><strong>Total equity</strong></td><td><strong>255</strong></td><td><strong>303</strong></td></tr>
              <tr><td>Long-term borrowings (loans due after one year)</td><td>90</td><td>110</td></tr>
              <tr><td>Short-term borrowings</td><td>20</td><td>25</td></tr>
              <tr><td>Trade payables (money owed to suppliers)</td><td>56</td><td>64</td></tr>
              <tr><td>Other current liabilities</td><td>22</td><td>24</td></tr>
              <tr><td><strong>Total equity and liabilities</strong></td><td><strong>443</strong></td><td><strong>526</strong></td></tr>
            </tbody>
          </table>
          <p><strong>Current</strong> means "due or used within about one year". Sahyadri's current assets are inventory, receivables and cash: 100 + 80 + 40 = ₹220 cr. Its current liabilities are short-term borrowings, payables and other: 25 + 64 + 24 = ₹113 cr. Current assets are larger, which is a good first sign. The liquidity lesson later in this course turns this into ratios.</p>
        </div>
        <div class="lc-card">
          <h3>The cash flow statement</h3>
          <p>It groups cash into three types. <strong>Operating</strong> is cash from normal business: selling snacks, paying suppliers and staff. <strong>Investing</strong> is cash spent on or received from long-term assets, like machines. <strong>Financing</strong> is cash from or to lenders and shareholders: loans, repayments and dividends.</p>
          <table class="lc-table">
            <thead><tr><th>Line (₹ crore, made-up)</th><th>FY25</th><th>FY26</th></tr></thead>
            <tbody>
              <tr><td>Net profit</td><td>60</td><td>66</td></tr>
              <tr><td>Add back depreciation (a cost with no cash paid)</td><td>+20</td><td>+24</td></tr>
              <tr><td>More cash tied up in inventory</td><td>−10</td><td>−20</td></tr>
              <tr><td>More cash tied up in receivables</td><td>−6</td><td>−14</td></tr>
              <tr><td>More credit from suppliers and others (payables and other current liabilities)</td><td>+8</td><td>+10</td></tr>
              <tr><td><strong>Cash from operating activities</strong></td><td><strong>72</strong></td><td><strong>66</strong></td></tr>
              <tr><td><strong>Cash from investing</strong> (new machines)</td><td><strong>−40</strong></td><td><strong>−60</strong></td></tr>
              <tr><td>Loans taken or (repaid)</td><td>−10</td><td>+25</td></tr>
              <tr><td>Dividends paid</td><td>−15</td><td>−18</td></tr>
              <tr><td><strong>Cash from financing</strong></td><td><strong>−25</strong></td><td><strong>+7</strong></td></tr>
              <tr><td><strong>Change in cash</strong></td><td><strong>+7</strong></td><td><strong>+13</strong></td></tr>
            </tbody>
          </table>
          <p>This is one simple layout that starts from net profit. Real Indian reports often start from profit before tax and list more lines. The idea is the same.</p>
          <p><strong>The story:</strong> In FY26, operating cash (66) happens to equal net profit (66). This is a coincidence. Depreciation added ₹24 cr. But extra stock and customer dues, minus extra supplier credit, used ₹24 cr. Sahyadri also spent ₹60 cr on a new line. So it borrowed ₹25 cr more. Free cash flow (operating cash minus spending on assets) fell from ₹32 cr to ₹6 cr. The company is not in trouble, but this is worth watching.</p>
        </div>
        <div class="lc-card">
          <h3>Using AI with these statements</h3>
          <p>Ask the AI to do checks that are slow by hand:</p>
          <pre><code>Using only this made-up balance sheet and cash flow [paste tables]:
        1. Check that total assets equal total equity and liabilities for both years.
        2. Check that opening cash plus the three cash flows equals closing cash.
        3. Explain in simple words why operating cash differs from net profit.
        4. List 3 things a lender would ask about. Show all working.</code></pre>
          <p><strong>Check yourself:</strong> Add the totals in a spreadsheet with <code>=SUM()</code>. Make sure the AI put each item in the right group. A common AI mistake is putting dividends or interest in the wrong place. Different reports can place interest and dividends differently, so read the notes.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: which kind of cash flow?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each Sahyadri cash movement into the right part of the cash flow statement.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="op" data-label="Operating"></div>
              <div data-sorter-target="bucket" data-bucket="inv" data-label="Investing"></div>
              <div data-sorter-target="bucket" data-bucket="fin" data-label="Financing"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="op" data-why="Selling snacks is the normal business.">Cash received from distributors for snacks sold</li>
              <li data-bucket="op" data-why="Buying raw materials is part of the normal business.">Paying suppliers for edible oil and flour</li>
              <li data-bucket="inv" data-why="Buying a long-term asset is investing.">Paying ₹60 cr for a new snacks line at its main plant</li>
              <li data-bucket="inv" data-why="Selling a long-term asset is also investing.">Selling an old delivery truck</li>
              <li data-bucket="fin" data-why="Borrowing money is financing.">Taking a new ₹20 cr loan from Navkar Bank</li>
              <li data-bucket="fin" data-why="Paying shareholders is financing.">Paying ₹18 cr of dividends to shareholders</li>
              <li data-bucket="op" data-why="Salaries are a normal running cost.">Paying staff salaries</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask the AI to check that Sahyadri's made-up statements tie together, and to explain what they show.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a careful financial analyst teaching a beginner. This is education only, not investment advice.

        Made-up company: [Sahyadri Foods Ltd]. ₹ crore, 31 March 2026.
        Balance sheet: property, plant and equipment 306; inventory 100; receivables 80; cash 40; share capital 50; reserves 253; long-term borrowings 110; short-term borrowings 25; trade payables 64; other current liabilities 24.
        Cash flow FY26: net profit 66; depreciation +24; inventory up 20; receivables up 14; payables and other current liabilities up 10; capex -60; new loans +25; dividends -18. Opening cash 27.

        Tasks:
        1. Check that total assets equal equity plus liabilities. Show the sums.
        2. Build the cash flow in three parts (operating, investing, financing). Check that closing cash equals the balance sheet cash.
        3. Calculate free cash flow (operating cash minus capex).
        4. In 4 simple bullet points, explain what a lender like [Navkar Bank] would notice.
        Use only these numbers. Say "not given" if you need anything else.</pre>
            <ul class="ai-try-checks">
              <li>Total assets and total equity plus liabilities should both be 526.</li>
              <li>Operating 66, investing −60, financing +7, closing cash 40.</li>
              <li>Free cash flow should be 66 − 60 = 6.</li>
              <li>Did it put the loans and dividends under financing?</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> The balance sheet shows what a business owns and owes on one date. The cash flow statement shows how real cash moved. Profit is not cash: growing stock, customer dues and new machines can use up the cash that profit brings in.
        </div>
      HTML
      starter_code: nil
    },
    5 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-fin">Finance</div>
          <h1 class="lc-title">Summarising an Annual Report with AI</h1>
        </div>
        <p class="lc-lead">A listed company's <strong>annual report</strong> can be 200 pages or more. AI can turn it into a short summary in minutes. But a summary is only useful if every number in it is correct. In this lesson, you will learn which sections to read, and how to ask AI for a summary with page numbers. You will also learn to separate facts from management's opinions, and to check every figure.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="Five annual report sections: chairman's letter, directors' report, management discussion and analysis, auditor's report, and statements with notes. They go to an AI summary draft with key numbers, management claims, risks and page numbers. Then you check every figure against its page, mark fact or opinion, and look for missing risks. The output is one-page notes you can trust.">
            <defs><marker id="fa5a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12" fill="#e2e0f0" text-anchor="middle">
              <text x="120" y="30" font-weight="700" font-size="13" fill="#93c5fd">Annual report</text>
              <rect x="20" y="44" width="200" height="34" rx="6" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="120" y="66">Chairman's letter</text>
              <rect x="20" y="88" width="200" height="34" rx="6" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="120" y="110">Directors' report</text>
              <rect x="20" y="132" width="200" height="34" rx="6" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="120" y="154">Management discussion</text>
              <rect x="20" y="176" width="200" height="34" rx="6" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="120" y="198">Auditor's report</text>
              <rect x="20" y="220" width="200" height="34" rx="6" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="120" y="242">Statements + notes</text>
              <rect x="270" y="84" width="200" height="130" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="370" y="110" font-weight="700" fill="#c4b5fd">AI summary draft</text>
              <text x="370" y="136">Key numbers</text>
              <text x="370" y="156">Management claims</text>
              <text x="370" y="176">Risks</text>
              <text x="370" y="196">Page numbers</text>
              <rect x="520" y="84" width="220" height="130" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="630" y="110" font-weight="700" fill="#fcd34d">You check</text>
              <text x="630" y="136">Every figure vs its page</text>
              <text x="630" y="156">Fact or opinion?</text>
              <text x="630" y="176">Any missing risks?</text>
              <text x="630" y="196">Right year and units?</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#fa5a)">
                <path d="M224,149 L266,149"/>
                <path d="M474,149 L516,149"/>
                <path d="M630,216 L630,250"/>
              </g>
              <rect x="520" y="254" width="220" height="36" rx="8" fill="#27274e" stroke="#10b981"/>
              <text x="630" y="277" fill="#6ee7b7">One-page notes you trust</text>
            </g>
          </svg>
          <figcaption>AI reads the long report and drafts. You check each number against its page before you use the summary.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Which sections to read</h3>
          <p>Listed companies in India publish their annual reports on their own websites. You can also find them on the NSE and BSE websites. Section names vary a little between companies.</p>
          <table class="lc-table">
            <thead><tr><th>Section</th><th>What it tells you</th><th>What to look for</th></tr></thead>
            <tbody>
              <tr><td>Chairman's or MD's letter</td><td>Management's view of the year</td><td>Claims you can test against the numbers</td></tr>
              <tr><td>Directors' report</td><td>Results, dividends, major events</td><td>New plants, big changes, dividend amount</td></tr>
              <tr><td>Management Discussion and Analysis (MD&amp;A)</td><td>Industry, performance, risks, outlook</td><td>Reasons for changes in sales and margins</td></tr>
              <tr><td>Independent auditor's report</td><td>The auditor's opinion on the accounts</td><td>Any "qualified opinion" (the accounts are fair except for a stated problem) or "emphasis of matter" (a point the auditor wants you to notice)</td></tr>
              <tr><td>Financial statements</td><td>P&amp;L, balance sheet, cash flow</td><td>Standalone (the company alone) or consolidated (with its subsidiaries). Do not mix them.</td></tr>
              <tr><td>Notes to the accounts</td><td>Details behind each number</td><td>Contingent liabilities (possible future costs, such as disputed claims) and related-party transactions (deals with people or firms linked to the owners)</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Facts versus management's opinions</h3>
          <p>Management writes parts of the report. They want the company to look good. So test their words against the numbers. Here is a made-up example from Sahyadri Foods Ltd's FY26 report.</p>
          <table class="lc-table">
            <thead><tr><th>Management says</th><th>What the numbers show</th><th>Type</th></tr></thead>
            <tbody>
              <tr><td>"FY26 was a year of strong growth. Revenue rose 15% to ₹920 crore."</td><td>True: (920 − 800) ÷ 800 = 15%. But net profit grew only 10%.</td><td>Fact, but incomplete</td></tr>
              <tr><td>"Gross margin was under pressure because edible oil and packaging costs rose."</td><td>Gross margin fell from 35.0% to 34.0%.</td><td>Fact plus a reason to check</td></tr>
              <tr><td>"We expect margins to recover in FY27 as price increases take effect."</td><td>No number can prove this yet.</td><td>Opinion (a hope)</td></tr>
              <tr><td>Not mentioned in the letter</td><td>Free cash flow fell from ₹32 cr to ₹6 cr. Borrowings rose by ₹25 cr.</td><td>Missing point</td></tr>
            </tbody>
          </table>
          <p>A good summary includes the points that management did not stress. Ask the AI directly: "What would a careful reader worry about?"</p>
        </div>
        <div class="lc-card">
          <h3>A prompt that makes checking easy</h3>
          <p>Many AI assistants let you upload a PDF. Check your tool's help pages for file size limits. Long reports may be cut or skimmed, so ask for page numbers. Annual reports of listed companies are public. But never upload your own company's unpublished accounts to a public AI tool.</p>
          <pre><code>You are a careful analyst. Summarise the attached annual report in one page.
        1. Key numbers for this year and last year: revenue, net profit,
           operating cash flow, total borrowings. Give the page number for each.
        2. Three main reasons management gives for the results.
           Mark each as FACT (backed by a number) or OPINION.
        3. Risks: auditor's remarks, contingent liabilities, related-party deals.
        4. Anything important that management did not stress.
        Say whether each number is standalone or consolidated.
        If you cannot find a number, write "not found". Do not estimate.</code></pre>
          <p>Then open the report at each page number and tick off each figure. If a number is not on that page, find it yourself or delete it. This is not investment advice. For real investment decisions, speak to a SEBI-registered investment adviser.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: check an AI summary</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Prompt">Ananya, a 28-year-old software tester in Karnataka, has a job interview at Sahyadri Foods Ltd. She uploads Sahyadri Foods Ltd's made-up FY26 annual report and uses the prompt above.</li>
              <li data-kind="answer" data-label="AI summary">"Revenue ₹920 cr (p. 88). Net profit ₹66 cr (p. 88). EBITDA margin improved to 14.2% (p. 34). Operating cash flow ₹66 cr (p. 92)."</li>
              <li data-kind="tool" data-label="Open the PDF">Ananya opens pages 88, 34 and 92 and compares each figure.</li>
              <li data-kind="result" data-label="What she finds">Pages 88 and 92 match. Page 34 has no EBITDA margin. The P&amp;L gives EBITDA of ₹125 cr on revenue of ₹920 cr.</li>
              <li data-kind="warn" data-label="Invented figure">She calculates 125 ÷ 920 = 13.6%, down from 13.75% last year. The AI invented "14.2%" and the word "improved".</li>
              <li data-kind="check" data-label="Fix">She corrects the line to "EBITDA margin 13.6%, slightly lower than FY25". She adds a note: always calculate margins yourself.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Paste this made-up extract, or a section from a real public annual report. Ask for a summary that separates facts from opinions.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a careful financial analyst. This is education only, not investment advice.

        Summarise this made-up annual report extract for [Sahyadri Foods Ltd] (₹ crore, standalone):
        "[FY26 was a year of strong growth. Revenue rose 15% to 920 (FY25: 800). Net profit was 66 (FY25: 60). Gross margin was under pressure because edible oil and packaging costs rose; we raised prices twice in the second half. We spent 60 on a new snacks line at our main plant. Borrowings rose from 110 to 135. Operating cash flow was 66 (FY25: 72). We expect margins to recover in FY27. Note 34: a disputed tax demand of 8 is shown as a contingent liability.]"

        Tasks:
        1. A table of key numbers: this year, last year, change in %. Show the working.
        2. List each management statement and mark it FACT or OPINION.
        3. List 3 risks or points that management did not stress.
        4. Write a 3-sentence neutral summary.
        Use only the text above. Write "not given" for anything missing. Do not estimate.</pre>
            <ul class="ai-try-checks">
              <li>Revenue +15%, net profit +10%, operating cash flow down about 8.3%.</li>
              <li>"Margins will recover" should be marked OPINION.</li>
              <li>Did it mention the ₹8 cr contingent liability and higher borrowings?</li>
              <li>Did it add any number that is not in the extract?</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> AI can read a long annual report fast. Your job is to make the summary true. Ask for page numbers, split facts from opinions, look for what management did not stress, and check every figure against the report.
        </div>
      HTML
      starter_code: nil
    },
    6 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-fin">Finance</div>
          <h1 class="lc-title">Profitability Ratios</h1>
        </div>
        <p class="lc-lead">A profit number alone does not tell you much. A profit of ₹66 crore is great for a small company but weak for a giant. <strong>Profitability ratios</strong> turn profit into a percentage, so you can compare years and companies fairly. In this lesson, you will calculate margins, ROE and ROCE for the made-up Sahyadri Foods Ltd. You will also use AI to explain the results and learn how to check its maths. This is education only, not investment advice.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 330" role="img" aria-label="Bar chart for the made-up Sahyadri Foods Ltd in FY26. Revenue 920 crore rupees is 100 percent. Gross profit 313 crore is 34.0 percent, down from 35.0. EBITDA 125 crore is 13.6 percent, down from 13.75. Operating profit 101 crore is 11.0 percent, down from 11.25. Net profit 66 crore is 7.2 percent, down from 7.5. Below, ROE is 66 divided by 303, which is 21.8 percent, down from 23.5. ROCE is 101 divided by 413, which is 24.5 percent, down from 26.1.">
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <text x="380" y="20" font-weight="700" text-anchor="middle">Sahyadri Foods Ltd (made-up), FY26, ₹ crore: what is left from sales</text>
              <text x="20" y="52">Revenue</text>
              <rect x="150" y="37" width="320" height="22" rx="4" fill="#3b82f6"/>
              <text x="485" y="52" font-size="12">₹920 cr · 100%</text>
              <text x="20" y="88">Gross profit</text>
              <rect x="150" y="73" width="109" height="22" rx="4" fill="#8b5cf6"/>
              <text x="485" y="88" font-size="12">₹313 cr · 34.0% (FY25 35.0%)</text>
              <text x="20" y="124">EBITDA</text>
              <rect x="150" y="109" width="44" height="22" rx="4" fill="#22d3ee"/>
              <text x="485" y="124" font-size="12">₹125 cr · 13.6% (FY25 13.75%)</text>
              <text x="20" y="160">Operating profit</text>
              <rect x="150" y="145" width="35" height="22" rx="4" fill="#f59e0b"/>
              <text x="485" y="160" font-size="12">₹101 cr · 11.0% (FY25 11.25%)</text>
              <text x="20" y="196">Net profit</text>
              <rect x="150" y="181" width="23" height="22" rx="4" fill="#10b981"/>
              <text x="485" y="196" font-size="12">₹66 cr · 7.2% (FY25 7.5%)</text>
              <rect x="20" y="222" width="350" height="92" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="195" y="246" text-anchor="middle" font-weight="700" fill="#f9a8d4">ROE (return on equity)</text>
              <text x="195" y="270" text-anchor="middle" font-size="12">Net profit ÷ Equity</text>
              <text x="195" y="294" text-anchor="middle">66 ÷ 303 = 21.8% (FY25 23.5%)</text>
              <rect x="390" y="222" width="350" height="92" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="565" y="246" text-anchor="middle" font-weight="700" fill="#6ee7b7">ROCE (return on capital employed)</text>
              <text x="565" y="270" text-anchor="middle" font-size="12">EBIT ÷ (Equity + long-term debt)</text>
              <text x="565" y="294" text-anchor="middle">101 ÷ 413 = 24.5% (FY25 26.1%)</text>
            </g>
          </svg>
          <figcaption>Margins show how much of each ₹100 of sales is left at each level. ROE and ROCE show the return on the money put into the business. Every ratio fell a little in FY26.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Margins: profit as a share of sales</h3>
          <p>A <strong>margin</strong> is a profit line divided by revenue (sales). It tells you how many rupees are left from every ₹100 of sales. Here are Sahyadri's made-up numbers in ₹ crore.</p>
          <table class="lc-table">
            <thead><tr><th>Margin</th><th>Formula</th><th>FY25</th><th>FY26</th><th>Change</th></tr></thead>
            <tbody>
              <tr><td>Gross margin</td><td>Gross profit ÷ Revenue</td><td>280 ÷ 800 = 35.0%</td><td>313 ÷ 920 = 34.0%</td><td>−1.0 point</td></tr>
              <tr><td>EBITDA margin</td><td>EBITDA ÷ Revenue</td><td>110 ÷ 800 = 13.75%</td><td>125 ÷ 920 = 13.6%</td><td>about −0.2 point</td></tr>
              <tr><td>Operating margin</td><td>EBIT ÷ Revenue</td><td>90 ÷ 800 = 11.25%</td><td>101 ÷ 920 = 11.0%</td><td>about −0.3 point</td></tr>
              <tr><td>Net margin</td><td>Net profit ÷ Revenue</td><td>60 ÷ 800 = 7.5%</td><td>66 ÷ 920 = 7.2%</td><td>about −0.3 point</td></tr>
            </tbody>
          </table>
          <p>EBITDA means earnings before interest, tax, depreciation and amortisation. EBIT means earnings before interest and tax, which is the same as operating profit here. A <strong>percentage point</strong> is the plain gap between two percentages. From 35.0% to 34.0% is a fall of 1 percentage point.</p>
          <p><strong>What the numbers say:</strong> Gross margin fell by 1 point because material costs grew faster than sales. But EBITDA margin fell by only about 0.2 point. Why? Employee costs grew 12.5% (80 to 90) and other expenses grew about 8.9% (90 to 98). Both grew slower than sales, which grew 15%. So good cost control saved most of the lost gross margin.</p>
          <p>In a spreadsheet, put revenue in B2 and gross profit in B3. Then use <code>=B3/B2</code> and format the cell as a percentage.</p>
        </div>
        <div class="lc-card">
          <h3>ROE and ROCE: return on the money invested</h3>
          <p>Margins compare profit with sales. Returns compare profit with the money put into the business.</p>
          <ul class="lc-list">
            <li><strong>ROE (return on equity)</strong> = Net profit ÷ Equity. Equity is the owners' money: share capital plus reserves. It answers: "What did shareholders earn on their money?"</li>
            <li><strong>ROCE (return on capital employed)</strong> = EBIT ÷ Capital employed. Capital employed here is equity plus long-term borrowings. It answers: "What did the business earn on all its long-term money?"</li>
          </ul>
          <table class="lc-table">
            <thead><tr><th>Ratio</th><th>FY25</th><th>FY26</th></tr></thead>
            <tbody>
              <tr><td>ROE (closing equity)</td><td>60 ÷ 255 = 23.5%</td><td>66 ÷ 303 = 21.8%</td></tr>
              <tr><td>ROE (average equity)</td><td>60 ÷ 232.5 = 25.8%</td><td>66 ÷ 279 = 23.7%</td></tr>
              <tr><td>Capital employed</td><td>255 + 90 = 345</td><td>303 + 110 = 413</td></tr>
              <tr><td>ROCE (closing capital employed)</td><td>90 ÷ 345 = 26.1%</td><td>101 ÷ 413 = 24.5%</td></tr>
            </tbody>
          </table>
          <p><strong>Average equity</strong> is (opening + closing) ÷ 2. For FY25 that is (210 + 255) ÷ 2 = 232.5. For FY26 it is (255 + 303) ÷ 2 = 279. Many analysts prefer the average, because profit is earned across the whole year.</p>
          <p><strong>Formulas differ.</strong> Some people add short-term borrowings to capital employed. Then FY26 capital employed is 303 + 135 = 438, and ROCE is 101 ÷ 438 = 23.1%. Neither is wrong. Always write down which formula you used. Use the same formula for every year and every company you compare.</p>
          <p>Both returns fell in FY26. Profit grew 10%, but equity grew 19% (255 to 303) and capital employed grew about 20% (345 to 413). The new snacks line is not earning much yet. You would ask: when will it start earning?</p>
        </div>
        <div class="lc-card">
          <h3>Using AI: a weak prompt and a better prompt</h3>
          <pre><code>Weak:   What is Sahyadri Foods' ROE?</code></pre>
          <p>The AI does not have the numbers. It may invent them. It may also pick a formula without telling you.</p>
          <pre><code>Better: I am learning ratio analysis. Education only, not advice.
        Here are made-up numbers for Sahyadri Foods Ltd in ₹ crore.
        FY25: revenue 800, gross profit 280, EBIT 90, net profit 60,
        equity 255 (opening 210), long-term borrowings 90.
        FY26: revenue 920, gross profit 313, EBIT 101, net profit 66,
        equity 303, long-term borrowings 110.
        1. Calculate gross margin, operating margin, net margin,
           ROE (closing equity) and ROCE for both years.
        2. Show each formula and the working.
        3. Explain in 3 simple sentences why ROE and ROCE changed.
        Use only these numbers. Say if anything is missing.</code></pre>
          <p><strong>You must still check:</strong> recalculate every ratio in a spreadsheet. Check that the AI used equity for ROE, not total assets. Check that it used EBIT for ROCE, not net profit. Decide yourself whether a change matters.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: catch the ratio mistake</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Prompt">Ananya, a software tester in Karnataka, is preparing for a finance job interview. She gives the AI Sahyadri's made-up FY26 numbers and asks for ROE and ROCE.</li>
              <li data-kind="answer" data-label="AI answer">"ROE = 66 ÷ 526 = 12.5%. ROCE = 101 ÷ 413 = 24.5%. ROE is much lower than ROCE, so shareholders earn a poor return."</li>
              <li data-kind="thought" data-label="Ananya thinks">An ROE of 12.5% looks far too low next to a ROCE of 24.5%. Sahyadri does not have much debt. Where does 526 come from?</li>
              <li data-kind="tool" data-label="Spreadsheet">She opens her sheet. 526 is total assets. Equity is 303. She types <code>=66/303</code>.</li>
              <li data-kind="result" data-label="Sheet shows">21.8%. The AI's 12.5% is return on assets, not return on equity.</li>
              <li data-kind="warn" data-label="Mistake">The AI used the wrong base. Its conclusion "shareholders earn a poor return" is also wrong.</li>
              <li data-kind="check" data-label="Fix">Ananya writes: "ROE 21.8% (net profit ÷ closing equity), ROCE 24.5% (EBIT ÷ equity + long-term debt). Both fell from FY25."</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask the AI to calculate profitability ratios for a small made-up company and explain them. Then check its maths.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a patient finance teacher. This is education only, not investment advice.

        Here are made-up numbers for [LedgerLite Pvt Ltd, an accounting software company in Karnataka], in ₹ lakh:
        - Last year: revenue [500], gross profit [300], operating profit (EBIT) [80], net profit [55], equity [250], long-term borrowings [50]
        - This year: revenue [600], gross profit [348], operating profit (EBIT) [90], net profit [60], equity [300], long-term borrowings [60]

        Do this:
        1. Make a table with gross margin, operating margin, net margin, ROE and ROCE for both years.
        2. Use ROE = net profit ÷ closing equity and ROCE = EBIT ÷ (equity + long-term borrowings).
        3. Show the working for each number.
        4. Explain in 4 simple sentences what improved and what got worse.
        5. List 3 questions a manager should ask next.
        Use only these numbers. Do not invent any figure. If something is missing, say so.</pre>
            <ul class="ai-try-checks">
              <li>Recalculate each ratio in a spreadsheet. With the sample numbers, this year's gross margin is 348 ÷ 600 = 58.0%.</li>
              <li>Did it divide net profit by equity for ROE, not by total assets?</li>
              <li>Did it use EBIT, not net profit, for ROCE?</li>
              <li>Does it call a change of 2 percentage points "2%"? Those are not the same.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Margins compare profit with sales. ROE and ROCE compare profit with the money invested. Always write down the formula you used, keep it the same across years, and recalculate every ratio the AI gives you.
        </div>
      HTML
      starter_code: nil
    },
    7 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-fin">Finance</div>
          <h1 class="lc-title">Liquidity and Debt Ratios</h1>
        </div>
        <p class="lc-lead">A company can make a profit and still fail if it cannot pay its bills or loans on time. <strong>Liquidity ratios</strong> check if it can pay what is due soon. <strong>Debt ratios</strong> check if its borrowing is safe. Banks, suppliers and investors look at these first. In this lesson, you will calculate four key ratios for the made-up Sahyadri Foods Ltd and use AI to explain them. This is education only, not lending or investment advice.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="Four ratio tiles for the made-up Sahyadri Foods Ltd, FY25 to FY26. Liquidity: current ratio 1.77 to 1.95, and quick ratio 0.95 to 1.06. Debt: debt-to-equity 0.43 to 0.45, and interest cover 9.0 to 7.8. Below: borrowings rose from 110 to 135 crore rupees, cash from 27 to 40, net debt from 83 to 95, and interest from 10 to 13.">
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="197" y="24" font-weight="700" fill="#93c5fd">Liquidity: can it pay bills due soon?</text>
              <text x="563" y="24" font-weight="700" fill="#fcd34d">Debt: is its borrowing safe?</text>
              <rect x="20" y="40" width="171" height="150" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="105" y="66" font-weight="700">Current ratio</text>
              <text x="105" y="100" font-size="18">1.77 → 1.95</text>
              <text x="105" y="124" font-size="11" fill="#9b99b8">FY25 → FY26</text>
              <text x="105" y="150" font-size="12">CA ÷ CL</text>
              <text x="105" y="172" font-size="11" fill="#9b99b8">Bills due within a year</text>
              <rect x="203" y="40" width="171" height="150" rx="10" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="288" y="66" font-weight="700">Quick ratio</text>
              <text x="288" y="100" font-size="18">0.95 → 1.06</text>
              <text x="288" y="124" font-size="11" fill="#9b99b8">FY25 → FY26</text>
              <text x="288" y="150" font-size="12">(CA − stock) ÷ CL</text>
              <text x="288" y="172" font-size="11" fill="#9b99b8">Without selling stock</text>
              <rect x="386" y="40" width="171" height="150" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="471" y="66" font-weight="700">Debt-to-equity</text>
              <text x="471" y="100" font-size="18">0.43 → 0.45</text>
              <text x="471" y="124" font-size="11" fill="#9b99b8">FY25 → FY26</text>
              <text x="471" y="150" font-size="12">Borrowings ÷ Equity</text>
              <text x="471" y="172" font-size="11" fill="#9b99b8">Borrowed vs owners' money</text>
              <rect x="569" y="40" width="171" height="150" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="654" y="66" font-weight="700">Interest cover</text>
              <text x="654" y="100" font-size="18">9.0 → 7.8</text>
              <text x="654" y="124" font-size="11" fill="#9b99b8">FY25 → FY26</text>
              <text x="654" y="150" font-size="12">EBIT ÷ Interest</text>
              <text x="654" y="172" font-size="11" fill="#9b99b8">Times interest is covered</text>
              <rect x="20" y="210" width="720" height="72" rx="10" fill="#27274e" stroke="#8b5cf6"/>
              <text x="380" y="236" font-weight="700" fill="#c4b5fd">Sahyadri Foods Ltd (made-up), ₹ crore, 31 March</text>
              <text x="380" y="262" font-size="12">Borrowings 110 → 135 · Cash 27 → 40 · Net debt 83 → 95 · Interest cost 10 → 13</text>
            </g>
          </svg>
          <figcaption>CA means current assets and CL means current liabilities. Liquidity improved a little, while debt rose and interest cover fell. Still comfortable, but worth watching.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Liquidity: can it pay bills due soon?</h3>
          <p><strong>Current assets</strong> are things that turn into cash within a year: stock, money owed by customers (receivables) and cash. <strong>Current liabilities</strong> are amounts due within a year: supplier bills (payables), short-term loans and other dues.</p>
          <table class="lc-table">
            <thead><tr><th>Ratio</th><th>Formula</th><th>FY25</th><th>FY26</th></tr></thead>
            <tbody>
              <tr><td>Current ratio</td><td>Current assets ÷ Current liabilities</td><td>173 ÷ 98 = 1.77</td><td>220 ÷ 113 = 1.95</td></tr>
              <tr><td>Quick ratio</td><td>(Current assets − Inventory) ÷ Current liabilities</td><td>(173 − 80) ÷ 98 = 0.95</td><td>(220 − 100) ÷ 113 = 1.06</td></tr>
            </tbody>
          </table>
          <p>A current ratio of 1.95 means Sahyadri has ₹1.95 of short-term assets for every ₹1 due within a year. The <strong>quick ratio</strong> leaves out stock, because stock may take time to sell. It is a stricter test.</p>
          <p><strong>Read carefully:</strong> the current ratio rose partly because stock rose from ₹80 cr to ₹100 cr. More stock is not always good news. It can mean slow sales. The quick ratio rose because cash went from ₹27 cr to ₹40 cr and receivables went from ₹66 cr to ₹80 cr. The rise in cash is the better sign.</p>
          <p>There is no single "right" level. A supermarket with fast-selling stock can work with a low current ratio. A company with slow stock needs a higher one. Compare with the same company's past and with similar companies.</p>
        </div>
        <div class="lc-card">
          <h3>Debt: is its borrowing safe?</h3>
          <table class="lc-table">
            <thead><tr><th>Ratio</th><th>Formula</th><th>FY25</th><th>FY26</th></tr></thead>
            <tbody>
              <tr><td>Debt-to-equity (D/E)</td><td>(Long-term + short-term borrowings) ÷ Equity</td><td>(90 + 20) ÷ 255 = 0.43</td><td>(110 + 25) ÷ 303 = 0.45</td></tr>
              <tr><td>Interest cover</td><td>EBIT ÷ Finance costs</td><td>90 ÷ 10 = 9.0</td><td>101 ÷ 13 = 7.8</td></tr>
              <tr><td>Net debt</td><td>Borrowings − Cash</td><td>110 − 27 = 83</td><td>135 − 40 = 95</td></tr>
            </tbody>
          </table>
          <ul class="lc-list">
            <li><strong>Debt-to-equity 0.45</strong> means Sahyadri has borrowed 45 paise for every ₹1 of owners' money.</li>
            <li><strong>Interest cover 7.8</strong> means operating profit (EBIT) is 7.8 times the yearly interest cost. Profit could fall a lot before interest becomes hard to pay.</li>
            <li><strong>Net debt</strong> subtracts cash, because cash could repay part of the loans.</li>
          </ul>
          <p><strong>The story:</strong> Sahyadri borrowed ₹25 cr more to build its new snacks line. Interest cost rose from ₹10 cr to ₹13 cr, which is 30%. EBIT rose only about 12% (90 to 101). So interest cover fell from 9.0 to 7.8. It is still comfortable, but you would watch the trend.</p>
          <p>Lenders such as the made-up Navkar Bank often set minimum ratios in a loan agreement. These are called <strong>covenants</strong>. The levels differ by bank and loan. Read the actual loan terms. Do not trust a "standard" number from AI.</p>
        </div>
        <div class="lc-card">
          <h3>What AI can help with, and what it cannot see</h3>
          <p>AI is good at calculating these ratios from numbers you give it. It is also good at explaining them in simple words for a manager or a loan file. But a balance sheet is a picture on one date. Some risks do not show in these four ratios.</p>
          <pre><code>Also ask the AI:
        "Using only the numbers I gave you, what can these ratios
        NOT tell me? List what I should look for in the notes
        to the accounts, such as loan repayment dates, lease
        payments and guarantees."</code></pre>
          <p><strong>You must still check:</strong> the definition of debt (some analysts add lease liabilities), which year each number is from, and whether the balance sheet date is unusual. For example, a company may collect a lot of cash just before 31 March. Its ratios then look better on that one day.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: which ratio answers the question?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each question into the ratio that answers it best.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="cr" data-label="Current ratio"></div>
              <div data-sorter-target="bucket" data-bucket="qr" data-label="Quick ratio"></div>
              <div data-sorter-target="bucket" data-bucket="de" data-label="Debt-to-equity"></div>
              <div data-sorter-target="bucket" data-bucket="ic" data-label="Interest cover"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="cr" data-why="The current ratio compares all short-term assets with all short-term dues.">Do Rangrez Crafts' short-term assets, including its stock, cover the bills due this year?</li>
              <li data-bucket="qr" data-why="The quick ratio leaves out stock, so it tests payment without selling stock.">If Sahyadri's stock stopped selling for a while, could it still pay its short-term dues?</li>
              <li data-bucket="de" data-why="Debt-to-equity compares borrowed money with owners' money.">How much has Sahyadri borrowed for every ₹1 of shareholders' money?</li>
              <li data-bucket="ic" data-why="Interest cover compares operating profit with the yearly interest cost.">If profit fell by half, could Sahyadri still pay its yearly interest?</li>
              <li data-bucket="de" data-why="A lender looks at how much the owners have put in compared with loans.">Navkar Bank wants to know if the owners carry enough of the risk, compared with lenders.</li>
              <li data-bucket="ic" data-why="A falling interest cover shows interest growing faster than operating profit.">Is Sahyadri's interest cost growing faster than its operating profit?</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask the AI to calculate and explain liquidity and debt ratios for a made-up company. Then check each number.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a credit analyst teaching a beginner. This is education only, not lending or investment advice.

        Here are made-up balance sheet and profit numbers for [Coastal Cement Ltd], in ₹ crore, at [31 March 2026]:
        - Inventory [150], trade receivables [120], cash [30]
        - Trade payables [110], short-term borrowings [60], other current liabilities [40]
        - Long-term borrowings [400], total equity [700]
        - Operating profit (EBIT) [210], finance costs (interest) [45]

        Do this:
        1. Calculate the current ratio, quick ratio, debt-to-equity, interest cover and net debt.
        2. Show each formula and the working.
        3. Explain each result in one simple sentence.
        4. List 3 things these ratios cannot show, and where in an annual report I would look for them.
        Use only these numbers. Do not invent industry averages or rules. If you need more data, say so.</pre>
            <ul class="ai-try-checks">
              <li>With the sample numbers, the current ratio is 300 ÷ 210 = 1.43 and the quick ratio is 150 ÷ 210 = 0.71.</li>
              <li>Debt should include both loans: (400 + 60) ÷ 700 = 0.66.</li>
              <li>Interest cover is 210 ÷ 45 = 4.7. Did it divide EBIT, not net profit?</li>
              <li>Did it invent a "safe" level or an industry average? Remove it unless you can check a source.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Liquidity ratios ask: can it pay what is due soon? Debt ratios ask: is its borrowing safe? Read the ratios together and look at why they changed. A higher current ratio from extra stock is not the same as one from extra cash.
        </div>
      HTML
      starter_code: nil
    },
    8 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-fin">Finance</div>
          <h1 class="lc-title">Efficiency Ratios and Working Capital</h1>
        </div>
        <p class="lc-lead">A business pays for materials, holds them as stock, sells on credit and then waits to collect. Money is stuck at every step. <strong>Efficiency ratios</strong> measure how many days the money is stuck. In this lesson, you will calculate inventory days, receivable days, payable days and the cash conversion cycle for the made-up Sahyadri Foods Ltd. You will see why a growing company can run short of cash. You will also learn a common AI mistake with these ratios. This is education only, not investment advice.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="A timeline for the made-up Sahyadri Foods Ltd in FY26. The company buys materials on day 0. It pays the supplier on day 38.5. Stock is held for 60.1 days and sold on day 60.1. Customers pay 31.7 days later, on day 91.9. The cash gap between paying the supplier and collecting from customers is 53.4 days. In FY25 it was 47.0 days.">
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <text x="380" y="22" font-weight="700" text-anchor="middle">Sahyadri Foods Ltd (made-up), FY26: the cash gap</text>
              <g stroke="#9b99b8" stroke-width="1" stroke-dasharray="4 4">
                <path d="M306,146 L306,156"/><path d="M306,176 L306,190"/>
                <path d="M648,48 L648,222"/>
                <path d="M445,62 L445,66"/>
              </g>
              <text x="60" y="58" font-size="12">Buy materials (day 0)</text>
              <text x="445" y="58" font-size="12" text-anchor="middle">Sell (day 60.1)</text>
              <text x="648" y="42" font-size="12" text-anchor="middle">Cash in (day 91.9)</text>
              <rect x="60" y="66" width="385" height="28" rx="6" fill="#27274e" stroke="#f59e0b"/>
              <text x="252" y="85" text-anchor="middle" fill="#fcd34d">Stock: 60.1 days</text>
              <rect x="445" y="66" width="203" height="28" rx="6" fill="#27274e" stroke="#3b82f6"/>
              <text x="546" y="85" text-anchor="middle" fill="#93c5fd">Customers: 31.7 days</text>
              <rect x="60" y="118" width="246" height="28" rx="6" fill="#27274e" stroke="#10b981"/>
              <text x="183" y="137" text-anchor="middle" fill="#6ee7b7">Supplier credit: 38.5 days</text>
              <text x="306" y="170" font-size="12" text-anchor="middle">Pay supplier (day 38.5)</text>
              <rect x="306" y="190" width="342" height="30" rx="6" fill="#1f1f44" stroke="#ec4899"/>
              <text x="477" y="210" text-anchor="middle" font-weight="700" fill="#f9a8d4">Cash gap: 53.4 days</text>
              <text x="380" y="256" text-anchor="middle">Cash conversion cycle = inventory days + receivable days − payable days</text>
              <text x="380" y="280" text-anchor="middle" font-size="12" fill="#9b99b8">FY25: 47.0 days → FY26: 53.4 days (6.4 days longer)</text>
            </g>
          </svg>
          <figcaption>Sahyadri pays its suppliers long before its customers pay it. It must fund that gap with its own cash or loans. Days are rounded to one decimal.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The four "days" ratios</h3>
          <p><strong>Working capital</strong> is the money a business needs for its daily trading. Here we focus on the trading part: stock plus money owed by customers, minus money owed to suppliers. The "days" ratios turn each part into a number of days, which is easy to understand.</p>
          <table class="lc-table">
            <thead><tr><th>Ratio</th><th>Formula</th><th>FY25</th><th>FY26</th></tr></thead>
            <tbody>
              <tr><td>Inventory days</td><td>Inventory ÷ COGS × 365</td><td>80 ÷ 520 × 365 = 56.2</td><td>100 ÷ 607 × 365 = 60.1</td></tr>
              <tr><td>Receivable days</td><td>Trade receivables ÷ Revenue × 365</td><td>66 ÷ 800 × 365 = 30.1</td><td>80 ÷ 920 × 365 = 31.7</td></tr>
              <tr><td>Payable days</td><td>Trade payables ÷ COGS × 365</td><td>56 ÷ 520 × 365 = 39.3</td><td>64 ÷ 607 × 365 = 38.5</td></tr>
              <tr><td><strong>Cash conversion cycle</strong></td><td>Inventory days + Receivable days − Payable days</td><td>47.0</td><td>53.4</td></tr>
            </tbody>
          </table>
          <p>COGS means cost of goods sold. For Sahyadri it is the cost of materials. Stock and supplier bills are recorded at cost. So you divide them by COGS, not by revenue. Customer dues include the selling price and profit. So you divide them by revenue.</p>
          <p>FY26 working: 60.13 + 31.74 − 38.48 = 53.39, about 53.4 days. Round only at the end, or small differences appear. These use closing balances. Some analysts use the average of opening and closing. Some use 360 days. Pick one method and keep it.</p>
          <p>In a spreadsheet, with inventory in B5 and COGS in B3, use <code>=B5/B3*365</code>.</p>
        </div>
        <div class="lc-card">
          <h3>Why this matters: profit is not cash</h3>
          <p>Sahyadri's trading working capital grew fast.</p>
          <ul class="lc-list">
            <li>FY25: inventory 80 + receivables 66 − payables 56 = ₹90 cr</li>
            <li>FY26: inventory 100 + receivables 80 − payables 64 = ₹116 cr</li>
          </ul>
          <p>That is ₹26 cr more cash stuck in trading. You can see the same ₹26 cr in the cash flow statement: −20 for stock, −14 for customers and +8 from suppliers. This is the main reason operating cash flow fell from ₹72 cr to ₹66 cr, even though profit rose.</p>
          <p>Sales grew 15%. But stock grew 25% (80 to 100) and receivables grew about 21% (66 to 80). When these grow faster than sales, ask why. Is stock building up for a new product launch? Are customers paying more slowly?</p>
          <table class="lc-table">
            <thead><tr><th>Lever</th><th>What it means</th><th>What to watch</th></tr></thead>
            <tbody>
              <tr><td>Hold less stock</td><td>Buy and make closer to real demand</td><td>Running out and losing sales</td></tr>
              <tr><td>Collect faster</td><td>Send invoices on time, follow up, offer UPI or online payment</td><td>Upsetting good customers</td></tr>
              <tr><td>Agree fair supplier terms</td><td>Agree payment dates that suit both sides</td><td>Paying late harms suppliers. In India, there are rules on paying small (MSME) suppliers on time. Check them with your chartered accountant.</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Using AI for efficiency ratios</h3>
          <pre><code>Weak:   Calculate Sahyadri's inventory days.

        Better: Education only. Made-up numbers, ₹ crore, FY26:
        revenue 920, cost of goods sold 607, closing inventory 100,
        closing trade receivables 80, closing trade payables 64.
        Calculate inventory days (inventory ÷ COGS × 365),
        receivable days (receivables ÷ revenue × 365),
        payable days (payables ÷ COGS × 365) and the cash
        conversion cycle. Show the working to 2 decimals.
        Then explain in simple words what a 53-day cash gap means
        for a snacks company. Use only these numbers.</code></pre>
          <p>Giving the formulas in the prompt stops the AI from picking a different method. You must still recalculate, and you must decide what is "too long" for this business.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: check the AI's days</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Prompt">An accounts assistant at LedgerLite Pvt Ltd asks the AI: "Sahyadri FY26: revenue 920, COGS 607, inventory 100. What are the inventory days?"</li>
              <li data-kind="answer" data-label="AI answer">"Inventory days = 100 ÷ 920 × 365 = 39.7 days. Stock sells in under 6 weeks, which is very efficient."</li>
              <li data-kind="thought" data-label="She thinks">Stock is valued at cost. Why did the AI divide by revenue?</li>
              <li data-kind="tool" data-label="Spreadsheet">She types <code>=100/607*365</code> in her sheet.</li>
              <li data-kind="result" data-label="Sheet shows">60.1 days. Last year it was 80 ÷ 520 × 365 = 56.2 days.</li>
              <li data-kind="warn" data-label="Mistake">The AI used revenue instead of COGS. That made stock look about 20 days faster than it is. Its word "efficient" hid a real rise.</li>
              <li data-kind="check" data-label="Fix">She writes: "Inventory days rose from 56.2 to 60.1. Ask the stores team why stock grew faster than sales."</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask the AI to work out the cash conversion cycle for a small made-up business and suggest safe ways to shorten it.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a friendly finance coach for small businesses in India. This is education only, not financial advice.

        Here are made-up yearly numbers for [Rangrez Crafts, a handicrafts brand in Rajasthan], in ₹ lakh:
        - Sales (revenue) [120]
        - Cost of goods sold [72]
        - Closing stock [24]
        - Money owed by customers (receivables) [15]
        - Money owed to suppliers (payables) [9]

        Do this:
        1. Calculate inventory days (stock ÷ COGS × 365), receivable days (receivables ÷ sales × 365) and payable days (payables ÷ COGS × 365).
        2. Calculate the cash conversion cycle. Show the working to 1 decimal.
        3. Explain what the result means for the owner in 3 simple sentences.
        4. Suggest 4 practical ways to shorten the cycle. For each, give one risk to watch.
        Use only these numbers. Do not invent industry averages.</pre>
            <ul class="ai-try-checks">
              <li>With the sample numbers: inventory days 24 ÷ 72 × 365 = 121.7, receivable days 45.6, payable days 45.6.</li>
              <li>The cycle should be about 121.7 days. Recalculate it yourself.</li>
              <li>Did it divide stock and payables by COGS, not by sales?</li>
              <li>Does any suggestion mean paying small suppliers late? That can hurt them and may break rules.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Efficiency ratios show how long money is stuck in stock and customer dues. When they grow, cash falls even if profit rises. Use COGS for stock and payables, revenue for receivables, and keep one method across years.
        </div>
      HTML
      starter_code: nil
    },
    9 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-fin">Finance</div>
          <h1 class="lc-title">Comparing Companies and Years</h1>
        </div>
        <p class="lc-lead">One ratio on its own means little. Is a 7.2% net margin good? You can only tell by comparing. You can compare a company with its own past (<strong>trend analysis</strong>) or with similar companies (<strong>peer comparison</strong>). In this lesson, you will build a trend table and a common-size statement for the made-up Sahyadri Foods Ltd. You will compare it with a made-up peer. You will also learn when a comparison is not fair.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 320" role="img" aria-label="Two panels. Left, a trend table for the made-up Sahyadri Foods Ltd with FY25 set to 100: revenue 115.0, cost of materials 116.7, net profit 110.0, inventory 125.0, receivables 121.2 in FY26. Right, a peer table for FY26: Sahyadri against made-up Food Peer A. Gross margin 34.0 against 32.0 percent, net margin 7.2 against 6.0 percent, ROE 21.8 against 15.0 percent, debt-to-equity 0.45 against 0.20, inventory days 60.1 against 53.7. Bottom: comparing Sahyadri with the made-up Coastal Cement Ltd is not like with like, because it is a different industry.">
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <rect x="20" y="36" width="350" height="200" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="195" y="60" text-anchor="middle" font-weight="700" fill="#93c5fd">Trend: Sahyadri, FY25 = 100</text>
              <text x="36" y="90">Revenue</text>
              <text x="354" y="90" text-anchor="end">100 → 115.0</text>
              <text x="36" y="118">Cost of materials</text>
              <text x="354" y="118" text-anchor="end" fill="#fcd34d">100 → 116.7</text>
              <text x="36" y="146">Net profit</text>
              <text x="354" y="146" text-anchor="end" fill="#fcd34d">100 → 110.0</text>
              <text x="36" y="174">Inventory</text>
              <text x="354" y="174" text-anchor="end" fill="#fcd34d">100 → 125.0</text>
              <text x="36" y="202">Receivables</text>
              <text x="354" y="202" text-anchor="end" fill="#fcd34d">100 → 121.2</text>
              <text x="195" y="226" text-anchor="middle" font-size="11" fill="#9b99b8">yellow = moved differently from revenue</text>
              <rect x="390" y="36" width="350" height="200" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="565" y="60" text-anchor="middle" font-weight="700" fill="#6ee7b7">Peers: same year, FY26</text>
              <text x="406" y="88" font-size="12" fill="#9b99b8">Ratio</text>
              <text x="620" y="88" font-size="12" fill="#9b99b8" text-anchor="middle">Sahyadri</text>
              <text x="700" y="88" font-size="12" fill="#9b99b8" text-anchor="middle">Peer A</text>
              <text x="406" y="114">Gross margin</text>
              <text x="620" y="114" text-anchor="middle">34.0%</text>
              <text x="700" y="114" text-anchor="middle">32.0%</text>
              <text x="406" y="140">Net margin</text>
              <text x="620" y="140" text-anchor="middle">7.2%</text>
              <text x="700" y="140" text-anchor="middle">6.0%</text>
              <text x="406" y="166">ROE</text>
              <text x="620" y="166" text-anchor="middle">21.8%</text>
              <text x="700" y="166" text-anchor="middle">15.0%</text>
              <text x="406" y="192">Debt-to-equity</text>
              <text x="620" y="192" text-anchor="middle">0.45</text>
              <text x="700" y="192" text-anchor="middle">0.20</text>
              <text x="406" y="218">Inventory days</text>
              <text x="620" y="218" text-anchor="middle">60.1</text>
              <text x="700" y="218" text-anchor="middle">53.7</text>
              <rect x="20" y="252" width="720" height="56" rx="10" fill="#27274e" stroke="#ec4899"/>
              <text x="380" y="274" text-anchor="middle" font-weight="700" fill="#f9a8d4">Not like with like: Sahyadri vs Coastal Cement Ltd (made-up)</text>
              <text x="380" y="296" text-anchor="middle" font-size="12">Different industry: a cement plant needs far more assets for each ₹ of sales</text>
            </g>
          </svg>
          <figcaption>Compare a company with its own past and with similar companies in the same year. Food Peer A is made up for this lesson. A cement company is not a fair peer for a snacks company.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Trend analysis: the same company over time</h3>
          <p>An easy way to see trends is an <strong>index</strong>. Set the first year to 100. Then show later years compared with it. Anything that grew faster than revenue stands out at once.</p>
          <table class="lc-table">
            <thead><tr><th>Line (₹ crore)</th><th>FY25</th><th>FY26</th><th>Index (FY25 = 100)</th></tr></thead>
            <tbody>
              <tr><td>Revenue</td><td>800</td><td>920</td><td>115.0</td></tr>
              <tr><td>Cost of materials</td><td>520</td><td>607</td><td>116.7</td></tr>
              <tr><td>Gross profit</td><td>280</td><td>313</td><td>111.8</td></tr>
              <tr><td>Net profit</td><td>60</td><td>66</td><td>110.0</td></tr>
              <tr><td>Inventory</td><td>80</td><td>100</td><td>125.0</td></tr>
              <tr><td>Trade receivables</td><td>66</td><td>80</td><td>121.2</td></tr>
              <tr><td>Trade payables</td><td>56</td><td>64</td><td>114.3</td></tr>
            </tbody>
          </table>
          <p>The story is clear. Material costs, stock and customer dues all grew faster than sales. Profit grew slower. In a spreadsheet, with FY25 in column B and FY26 in column C, use <code>=C2/$B2*100</code>. The <code>$</code> keeps column B fixed when you copy the formula across more years.</p>
          <p>Two years is a short trend. With five years, you can tell a real trend from one odd year. Where you can, collect at least three to five years.</p>
        </div>
        <div class="lc-card">
          <h3>Common-size statements</h3>
          <p>A <strong>common-size P&amp;L</strong> shows every line as a percentage of revenue. It lets you compare a small and a large company, or two years with different sales.</p>
          <table class="lc-table">
            <thead><tr><th>Line</th><th>FY25 (% of revenue)</th><th>FY26 (% of revenue)</th></tr></thead>
            <tbody>
              <tr><td>Cost of materials</td><td>65.0%</td><td>66.0%</td></tr>
              <tr><td>Employee costs</td><td>10.0%</td><td>9.8%</td></tr>
              <tr><td>Other expenses</td><td>11.25%</td><td>10.7%</td></tr>
              <tr><td>Depreciation</td><td>2.5%</td><td>2.6%</td></tr>
              <tr><td>Finance costs</td><td>1.25%</td><td>1.4%</td></tr>
              <tr><td>Tax</td><td>2.5%</td><td>2.4%</td></tr>
              <tr><td><strong>Net profit</strong></td><td>7.5%</td><td>7.2%</td></tr>
            </tbody>
          </table>
          <p>The rows add up to 100% of revenue. Rounding can make the total 99.9% or 100.1%. In a spreadsheet, use <code>=B3/B$2</code> with revenue in row 2. You can do the same for a balance sheet, using total assets as 100%.</p>
          <p><strong>Peer check:</strong> Food Peer A is a made-up snacks company. In FY26 it had revenue ₹1,500 cr, gross profit ₹480 cr, net profit ₹90 cr, equity ₹600 cr and borrowings ₹120 cr. It is much bigger than Sahyadri. Yet the ratios compare easily: gross margin 480 ÷ 1,500 = 32.0%, ROE 90 ÷ 600 = 15.0%. Sahyadri earns better margins and a higher ROE. But part of its higher ROE comes from more borrowing (D/E 0.45 against 0.20). It also holds more stock.</p>
        </div>
        <div class="lc-card">
          <h3>Comparing like with like</h3>
          <p>A comparison is only fair when the numbers are made in the same way. Check these points before you compare.</p>
          <ul class="lc-list">
            <li><strong>Same industry.</strong> Compare a snacks maker with snacks makers, not with a cement company or a bank.</li>
            <li><strong>Same period.</strong> A full year against a full year. The same year end, if possible.</li>
            <li><strong>Same basis.</strong> Consolidated (group) accounts with consolidated, standalone with standalone.</li>
            <li><strong>Same formulas.</strong> Closing or average equity? Which debt is included? Write it down.</li>
            <li><strong>One-off items.</strong> A profit from selling land can make one year look much better. Take it out, or mention it.</li>
            <li><strong>Same units.</strong> Crore with crore, lakh with lakh. AI tools mix these up often.</li>
          </ul>
          <pre><code>Prompt tip: "Before comparing, list anything in these two data
        sets that is not like with like: periods, units, standalone
        vs consolidated, one-off items or different formulas.
        Do not compare until I confirm."</code></pre>
          <p>AI is quick at building trend and common-size tables. But it cannot know if a peer's figures are on the same basis unless you check the peer's annual report. Never let AI fill in a peer's numbers from memory. It often gives old or invented figures.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: fair comparison or not?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each comparison. Is it fair (like with like), or does it need fixing first?</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="fair" data-label="Fair comparison"></div>
              <div data-sorter-target="bucket" data-bucket="fix" data-label="Needs fixing first"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="fair" data-why="Same company, full years, same formula: a fair trend.">Sahyadri's gross margin in FY25 and FY26, both as gross profit ÷ revenue</li>
              <li data-bucket="fix" data-why="Cement plants need much more stock and assets. The industries are too different.">Sahyadri's inventory days against Coastal Cement Ltd's inventory days</li>
              <li data-bucket="fix" data-why="A half year cannot be compared with a full year's profit.">Sahyadri's full-year FY26 profit against its first-half FY25 profit</li>
              <li data-bucket="fair" data-why="Same industry, same year, same formulas and same basis.">Sahyadri and Food Peer A net margins for FY26, both from consolidated accounts</li>
              <li data-bucket="fix" data-why="Different formulas give different answers. Use the same one for both.">Sahyadri's ROE on closing equity against Peer A's ROE on average equity</li>
              <li data-bucket="fix" data-why="A one-off gain makes the year look better than normal trading.">Peer A's FY26 profit, which includes a one-off gain from selling land, against Sahyadri's normal profit</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask the AI to build a trend table and a common-size P&amp;L from made-up numbers, and to point out any unfair comparisons.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a financial analyst teaching a beginner. This is education only, not investment advice.

        Here are made-up P&amp;L numbers for [Sweet Crumbs, a small home bakery in Maharashtra], in ₹ lakh:
        - Year 1: sales [40], ingredients and packing [16], staff [9], rent and power [7], other costs [3], net profit [5]
        - Year 2: sales [50], ingredients and packing [21], staff [10], rent and power [8], other costs [4], net profit [7]

        Do this:
        1. Make a trend table with Year 1 = 100 for every line.
        2. Make a common-size table: each line as a % of sales, for both years.
        3. Say which costs grew faster than sales, in 3 simple sentences.
        4. I also want to compare this bakery with [a large listed food company]. List what is not like with like, and what I would need to check first.
        Show your working. Use only these numbers. Do not invent figures for any other company.</pre>
            <ul class="ai-try-checks">
              <li>With the sample numbers, sales index is 125.0 and ingredients index is 131.3 (21 ÷ 16 × 100).</li>
              <li>Common-size net profit should be 12.5% in Year 1 and 14.0% in Year 2.</li>
              <li>Do the common-size rows add up to about 100% each year?</li>
              <li>Did it avoid inventing numbers for the large company?</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Ratios only mean something when you compare them. Compare with the company's own past and with similar companies. Before any comparison, check that the industry, period, basis, formulas and units match.
        </div>
      HTML
      starter_code: nil
    },
    10 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-fin">Finance</div>
          <h1 class="lc-title">Costs, Margins and Break-Even</h1>
        </div>
        <p class="lc-lead">"How many do we need to sell to cover our costs?" Every business owner asks this. The answer is the <strong>break-even point</strong>. In this lesson, you will split costs into fixed and variable, work out the contribution from each sale and find the break-even point. You will use a made-up home bakery in Maharashtra, Sweet Crumbs, and then look at the made-up Sahyadri Foods Ltd. You will also use AI to test "what if" questions, such as a price discount. This is education only, not financial or investment advice.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 330" role="img" aria-label="A break-even chart for the made-up bakery Sweet Crumbs. The x axis shows cakes sold per month from 0 to 1,000. The y axis shows rupees from 0 to 6 lakh. Fixed costs are a flat line at 1.5 lakh. Total cost starts at 1.5 lakh and rises by 360 rupees per cake. Sales start at zero and rise by 600 rupees per cake. The lines cross at 625 cakes and 3.75 lakh rupees, the break-even point. A side panel lists price 600, variable cost 360, contribution 240, fixed costs 1,50,000 and break-even 625 cakes.">
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <text x="380" y="22" font-weight="700" text-anchor="middle">Sweet Crumbs (made-up): one cake type, one month</text>
              <g stroke="#9b99b8" stroke-width="1">
                <path d="M90,40 L90,280 L470,280"/>
              </g>
              <g font-size="11" fill="#9b99b8" text-anchor="end">
                <text x="84" y="284">₹0</text>
                <text x="84" y="204">₹2 lakh</text>
                <text x="84" y="124">₹4 lakh</text>
                <text x="84" y="44">₹6 lakh</text>
              </g>
              <g font-size="11" fill="#9b99b8" text-anchor="middle">
                <text x="90" y="298">0</text>
                <text x="185" y="298">250</text>
                <text x="280" y="298">500</text>
                <text x="375" y="298">750</text>
                <text x="470" y="298">1,000</text>
                <text x="280" y="320">Cakes sold per month</text>
              </g>
              <path d="M90,220 L470,220" stroke="#f59e0b" stroke-width="2" stroke-dasharray="6 4"/>
              <path d="M90,220 L470,76" stroke="#ec4899" stroke-width="2.5"/>
              <path d="M90,280 L470,40" stroke="#10b981" stroke-width="2.5"/>
              <path d="M327.5,130 L327.5,280" stroke="#9b99b8" stroke-width="1" stroke-dasharray="3 3"/>
              <circle cx="327.5" cy="130" r="6" fill="#22d3ee"/>
              <text x="318" y="100" text-anchor="end" font-weight="700" fill="#67e8f9">Break-even</text>
              <text x="318" y="116" text-anchor="end" font-size="12">625 cakes, ₹3.75 lakh</text>
              <text x="476" y="44" font-size="12" fill="#6ee7b7">Sales</text>
              <text x="476" y="80" font-size="12" fill="#f9a8d4">Total cost</text>
              <text x="476" y="224" font-size="12" fill="#fcd34d">Fixed cost</text>
              <rect x="560" y="40" width="180" height="240" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="574" y="66" font-size="12">Price per cake ₹600</text>
              <text x="574" y="90" font-size="12">Variable cost ₹360</text>
              <text x="574" y="114" font-size="12" font-weight="700" fill="#c4b5fd">Contribution ₹240</text>
              <text x="574" y="138" font-size="12">Fixed costs ₹1,50,000</text>
              <text x="574" y="172" font-size="12" font-weight="700" fill="#67e8f9">Break-even:</text>
              <text x="574" y="194" font-size="12">1,50,000 ÷ 240 = 625</text>
              <text x="574" y="232" font-size="11" fill="#9b99b8">Left of the dot: loss</text>
              <text x="574" y="254" font-size="11" fill="#9b99b8">Right of the dot: profit</text>
            </g>
          </svg>
          <figcaption>Each cake brings in ₹240 after its own costs. After 625 cakes, the fixed costs for the month are covered. Every extra cake adds ₹240 of profit.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Fixed costs, variable costs and contribution</h3>
          <ul class="lc-list">
            <li><strong>Variable costs</strong> change with each unit you sell. For a cake: ingredients, box, baking power and payment or delivery charges.</li>
            <li><strong>Fixed costs</strong> stay the same each month, whether you sell 100 cakes or 1,000. For example: rent, staff salaries and basic bills.</li>
            <li><strong>Contribution</strong> = Selling price − Variable cost per unit. It is the money each sale adds towards fixed costs, and then profit.</li>
            <li><strong>Contribution margin</strong> = Contribution ÷ Selling price. It is the share of each ₹100 of sales left after variable costs.</li>
          </ul>
          <table class="lc-table">
            <thead><tr><th>Sweet Crumbs (made-up)</th><th>Per cake</th><th></th><th>Per month</th></tr></thead>
            <tbody>
              <tr><td>Ingredients</td><td>₹270</td><td>Rent</td><td>₹45,000</td></tr>
              <tr><td>Box and ribbon</td><td>₹40</td><td>Staff salaries</td><td>₹90,000</td></tr>
              <tr><td>Baking power</td><td>₹20</td><td>Basic power and internet</td><td>₹9,000</td></tr>
              <tr><td>Payment and delivery charges</td><td>₹30</td><td>Accountant and software</td><td>₹6,000</td></tr>
              <tr><td><strong>Variable cost</strong></td><td><strong>₹360</strong></td><td><strong>Fixed costs</strong></td><td><strong>₹1,50,000</strong></td></tr>
            </tbody>
          </table>
          <p>The cake sells for ₹600. Contribution = 600 − 360 = ₹240. Contribution margin = 240 ÷ 600 = 40%.</p>
          <p>Real costs are not always neatly fixed or variable. Electricity has a basic charge and a usage part. Staff may work overtime in busy months. You decide how to split each cost, and you write down your choice.</p>
        </div>
        <div class="lc-card">
          <h3>Break-even and margin of safety</h3>
          <ul class="lc-list">
            <li><strong>Break-even units</strong> = Fixed costs ÷ Contribution per unit = 1,50,000 ÷ 240 = 625 cakes a month.</li>
            <li><strong>Break-even sales</strong> = Fixed costs ÷ Contribution margin = 1,50,000 ÷ 40% = ₹3,75,000. Check: 625 × 600 = ₹3,75,000.</li>
            <li><strong>Profit at 800 cakes</strong> = 800 × 240 − 1,50,000 = ₹42,000.</li>
            <li><strong>Margin of safety</strong> = (Actual sales − Break-even) ÷ Actual sales = (800 − 625) ÷ 800 = 21.9%. Sales could fall about 22% before the bakery makes a loss.</li>
          </ul>
          <p><strong>What if Sweet Crumbs gives a 10% discount?</strong> The price drops to ₹540. Contribution drops to ₹180, which is 25% less. Break-even rises to 1,50,000 ÷ 180 = 833.3, so 834 cakes. At 800 cakes, the bakery now makes a loss: 800 × 180 − 1,50,000 = −₹6,000. A small discount needs a big rise in sales.</p>
          <p>In a spreadsheet, put price in B2, variable cost in B3 and fixed costs in B4. Break-even units: <code>=ROUNDUP(B4/(B2-B3),0)</code>. You round up because you cannot sell part of a cake.</p>
        </div>
        <div class="lc-card">
          <h3>A company view: Sahyadri Foods Ltd</h3>
          <p>You can use the same idea for a whole company. Here we make a simple assumption. The cost of materials (₹607 cr) is variable. All other costs are fixed: employee costs 90, other expenses 98, depreciation 24 and interest 13, a total of ₹225 cr.</p>
          <ul class="lc-list">
            <li>Contribution = 920 − 607 = ₹313 cr. Contribution margin = 313 ÷ 920 = 34.0%.</li>
            <li>Profit before tax = 313 − 225 = ₹88 cr. This matches the P&amp;L.</li>
            <li>Break-even revenue = 225 ÷ 34.0% = about ₹661 cr.</li>
            <li>Margin of safety = (920 − 661) ÷ 920 = about 28%.</li>
          </ul>
          <p>This is only a rough view. Some "other expenses", such as freight, go up with sales. A real analysis would split them. Always state your assumptions next to the answer.</p>
          <pre><code>Weak:   What is Sahyadri's break-even point?

        Better: Education only. Made-up company, ₹ crore, FY26.
        Revenue 920. Treat cost of materials 607 as variable.
        Treat employee 90, other expenses 98, depreciation 24 and
        interest 13 as fixed. Calculate contribution, contribution
        margin, break-even revenue and margin of safety. Show
        the working. Then say which of my assumptions are weakest
        and how they would change the answer.</code></pre>
          <p>Asking the AI to challenge your assumptions is useful. But you must still check its maths, and you decide which assumptions fit your business.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: find the break-even point</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put the steps for finding a product's break-even point in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">List every cost for one month from your records.</li>
              <li data-order="2">Split each cost into fixed or variable, and write down your choices.</li>
              <li data-order="3">Work out the variable cost for one unit.</li>
              <li data-order="4">Calculate contribution: selling price minus variable cost per unit.</li>
              <li data-order="5">Divide total fixed costs by contribution to get break-even units.</li>
              <li data-order="6">Check the answer: break-even units × contribution should equal (or just pass) fixed costs.</li>
              <li data-order="7">Test "what if" cases, such as a discount or a rent rise.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask the AI to find a break-even point for a made-up product and test a few "what if" cases.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a small-business finance coach in India. This is education only, not financial advice.

        Here are made-up monthly numbers for [Rangrez Crafts, a handicrafts brand in Rajasthan], selling [block-printed cushion covers]:
        - Selling price per unit: ₹[800]
        - Variable cost per unit (fabric, printing, packing, payment charges): ₹[500]
        - Fixed costs per month (rent, salaries, basic bills): ₹[1,20,000]
        - Expected sales this month: [500] units

        Do this:
        1. Calculate contribution per unit, contribution margin, break-even units and break-even sales in ₹.
        2. Calculate profit and margin of safety at the expected sales.
        3. Test 3 "what if" cases: a 10% price discount, a 10% rise in variable cost, and rent going up by ₹[15,000].
        4. Show all results in one table, with the working.
        5. Say in 3 simple sentences which change hurts most.
        Round break-even units up to a whole number. Use only these numbers.</pre>
            <ul class="ai-try-checks">
              <li>With the sample numbers: contribution ₹300, break-even 400 units, profit ₹30,000 at 500 units.</li>
              <li>With a 10% discount, contribution is ₹220 and break-even is 546 units (1,20,000 ÷ 220 = 545.5, rounded up).</li>
              <li>Check that break-even units × contribution is close to fixed costs.</li>
              <li>Did it state its assumptions? Did it say this is not financial advice?</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Break-even units = fixed costs ÷ contribution per unit. The split between fixed and variable costs is your decision, so write it down. Use AI to test "what if" cases quickly, but recalculate the key numbers yourself.
        </div>
      HTML
      starter_code: nil
    },
    11 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-fin">Finance</div>
          <h1 class="lc-title">Budgets and Variance Analysis</h1>
        </div>
        <p class="lc-lead">A <strong>budget</strong> is a plan for your income and costs, written before the month or year starts. A <strong>variance</strong> is the gap between the budget and what really happened. In this lesson, you will build a simple budget, compare it with actual results, and explain the gaps. You will also see how AI can do the sums and draft questions, while you find the real reasons. This is general education, not financial or tax advice.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 310" role="img" aria-label="Waterfall chart for the made-up bakery Sweet Crumbs in August. Budget profit was 85,000 rupees. Lower sales took away 40,000. Ingredients added 5,000. Electricity took away 6,000. Marketing added 6,000. Actual profit was 50,000 rupees.">
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="380" y="24" font-weight="700">Sweet Crumbs (made-up): August profit, budget to actual (₹)</text>
              <rect x="200" y="40" width="12" height="12" fill="#10b981"/>
              <text x="218" y="51" font-size="12" text-anchor="start">Favourable: helps profit</text>
              <rect x="420" y="40" width="12" height="12" fill="#ec4899"/>
              <text x="438" y="51" font-size="12" text-anchor="start">Adverse: hurts profit</text>
              <line x1="40" y1="270" x2="720" y2="270" stroke="#9b99b8"/>
              <rect x="60" y="100" width="80" height="170" rx="4" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="100" y="92" font-size="12">₹85,000</text>
              <rect x="170" y="100" width="80" height="80" rx="4" fill="#ec4899" fill-opacity="0.35" stroke="#ec4899"/>
              <text x="210" y="145" font-size="12">−₹40,000</text>
              <rect x="280" y="170" width="80" height="10" fill="#10b981" fill-opacity="0.5" stroke="#10b981"/>
              <text x="320" y="162" font-size="12">+₹5,000</text>
              <rect x="390" y="170" width="80" height="12" fill="#ec4899" fill-opacity="0.35" stroke="#ec4899"/>
              <text x="430" y="162" font-size="12">−₹6,000</text>
              <rect x="500" y="170" width="80" height="12" fill="#10b981" fill-opacity="0.5" stroke="#10b981"/>
              <text x="540" y="162" font-size="12">+₹6,000</text>
              <rect x="610" y="170" width="80" height="100" rx="4" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="650" y="162" font-size="12">₹50,000</text>
              <g stroke="#9b99b8" stroke-dasharray="3 3">
                <line x1="140" y1="100" x2="170" y2="100"/>
                <line x1="250" y1="180" x2="280" y2="180"/>
                <line x1="360" y1="170" x2="390" y2="170"/>
                <line x1="470" y1="182" x2="500" y2="182"/>
                <line x1="580" y1="170" x2="610" y2="170"/>
              </g>
              <g font-size="12" fill="#9b99b8">
                <text x="100" y="290">Budget profit</text>
                <text x="210" y="290">Sales</text>
                <text x="320" y="290">Ingredients</text>
                <text x="430" y="290">Electricity</text>
                <text x="540" y="290">Marketing</text>
                <text x="650" y="290">Actual profit</text>
              </g>
            </g>
          </svg>
          <figcaption>A waterfall chart shows how each variance moves profit from the budget to the actual result. Here, lower sales explain most of the gap.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Building a simple budget</h3>
          <p>Sweet Crumbs is a small made-up home bakery in Maharashtra. The owner builds a monthly budget in three steps.</p>
          <ol class="lc-list">
            <li><strong>Start with sales.</strong> Use last year's sales and any known changes. For August: 8,000 orders × ₹50 average order = ₹4,00,000.</li>
            <li><strong>Add variable costs.</strong> These move with sales. Ingredients are about 35% of sales, so ₹1,40,000.</li>
            <li><strong>Add fixed costs.</strong> These stay the same each month. Staff salaries ₹90,000, rent ₹50,000, electricity and gas ₹20,000, marketing ₹15,000.</li>
          </ol>
          <p>Budget profit = ₹4,00,000 − ₹3,15,000 total costs = <strong>₹85,000</strong>.</p>
          <p>AI can help you list cost lines you may have forgotten, such as repairs or packaging. But you must choose the numbers. Only you know your prices, your staff and your plans.</p>
        </div>
        <div class="lc-card">
          <h3>Actual vs budget: calculating variances</h3>
          <p>At the end of August, the owner puts the actual numbers next to the budget in a spreadsheet.</p>
          <table class="lc-table">
            <thead><tr><th>A: Line</th><th>B: Type</th><th>C: Budget ₹</th><th>D: Actual ₹</th><th>E: Variance ₹</th><th>F: Variance %</th><th>G: Flag</th></tr></thead>
            <tbody>
              <tr><td>Sales</td><td>Income</td><td>4,00,000</td><td>3,60,000</td><td>−40,000</td><td>−10.0%</td><td>Explain</td></tr>
              <tr><td>Ingredients</td><td>Cost</td><td>1,40,000</td><td>1,35,000</td><td>+5,000</td><td>+3.6%</td><td>OK</td></tr>
              <tr><td>Staff salaries</td><td>Cost</td><td>90,000</td><td>90,000</td><td>0</td><td>0.0%</td><td>OK</td></tr>
              <tr><td>Rent</td><td>Cost</td><td>50,000</td><td>50,000</td><td>0</td><td>0.0%</td><td>OK</td></tr>
              <tr><td>Electricity and gas</td><td>Cost</td><td>20,000</td><td>26,000</td><td>−6,000</td><td>−30.0%</td><td>Explain</td></tr>
              <tr><td>Marketing</td><td>Cost</td><td>15,000</td><td>9,000</td><td>+6,000</td><td>+40.0%</td><td>Explain</td></tr>
              <tr><td><strong>Profit</strong></td><td>Profit</td><td>85,000</td><td>50,000</td><td>−35,000</td><td>−41.2%</td><td>Explain</td></tr>
            </tbody>
          </table>
          <p>A plus sign means <strong>favourable</strong> (it helps profit). A minus sign means <strong>adverse</strong> (it hurts profit). The formulas for row 2 are below. Copy them down to row 8.</p>
          <pre><code>E2 (variance):   =IF(B2="Cost",C2-D2,D2-C2)
        F2 (variance %): =E2/C2
        G2 (flag):       =IF(ABS(F2)&gt;=0.05,"Explain","OK")
        C8 (profit):     =C2-SUM(C3:C7)</code></pre>
          <p>The flag marks any gap of 5% or more. Pick a limit that suits your business. Check: the variances add up to the profit gap. −40,000 + 5,000 + 0 + 0 − 6,000 + 6,000 = −35,000.</p>
        </div>
        <div class="lc-card">
          <h3>Explaining variances (and the trap in "favourable")</h3>
          <p><strong>Split the sales variance.</strong> Sweet Crumbs had 7,500 orders at ₹48 on average, so ₹3,60,000.</p>
          <ul class="lc-list">
            <li>Volume variance (fewer orders) = (7,500 − 8,000) × ₹50 = −₹25,000</li>
            <li>Price variance (lower average order) = (₹48 − ₹50) × 7,500 = −₹15,000</li>
            <li>Total = −₹40,000. This matches the table.</li>
          </ul>
          <p><strong>Flex the budget.</strong> A flexed budget is the budget recalculated for the actual level of sales. Ingredients should be 35% of ₹3,60,000 = ₹1,26,000. The bakery spent ₹1,35,000. So ingredients are really ₹9,000 <em>adverse</em>, not ₹5,000 favourable. Maybe butter prices rose, or more cakes were wasted.</p>
          <p><strong>Ask about links.</strong> Marketing was ₹6,000 under budget. That looks good. But fewer promotions may be one reason for fewer orders.</p>
          <p>AI can calculate these splits and suggest questions. It cannot know the real reason. Talk to the people who run the kitchen and the shop.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Why did my bakery miss its budget?</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Here is my budget vs actual table for August (made-up numbers). Check my variance maths. Flex the ingredients line at 35% of actual sales. Split the sales variance into volume and price. Then list 5 questions I should ask my team. Do not guess reasons.</code></pre>
        </div>
        <div class="lc-card">
          <h3>Activity: favourable or adverse?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each result. Does it help profit (favourable) or hurt profit (adverse) compared with the budget?</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="fav" data-label="Favourable"></div>
              <div data-sorter-target="bucket" data-bucket="adv" data-label="Adverse"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="adv" data-why="Sales below budget reduce profit.">Sweet Crumbs sales: budget ₹4,00,000, actual ₹3,60,000</li>
              <li data-bucket="adv" data-why="A cost above budget reduces profit.">Sweet Crumbs electricity: budget ₹20,000, actual ₹26,000</li>
              <li data-bucket="fav" data-why="Sales above budget increase profit.">Rangrez Crafts sales: budget ₹5,00,000, actual ₹5,20,000</li>
              <li data-bucket="adv" data-why="Spending more than planned on a cost is adverse.">LedgerLite Pvt Ltd cloud costs: budget ₹1,00,000, actual ₹1,10,000</li>
              <li data-bucket="fav" data-why="It helps profit this month. But still ask if the lower spend hurt sales.">Sweet Crumbs marketing: budget ₹15,000, actual ₹9,000</li>
              <li data-bucket="fav" data-why="Against the original budget, less cost is favourable. Flex the budget to see the full picture.">Sweet Crumbs ingredients: budget ₹1,40,000, actual ₹1,35,000</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask the AI to check a budget vs actual table and list questions. Then check its maths yourself.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a careful management accountant helping a small business owner in India. This is education only, not financial advice.

        Business: [Sweet Crumbs, a small home bakery in Maharashtra]. Month: [September]. Made-up numbers in ₹:
        - Sales: budget 4,20,000, actual 3,90,000
        - Ingredients (planned at 35% of sales): budget 1,47,000, actual 1,44,300
        - Staff salaries: budget 90,000, actual 92,000
        - Rent: budget 50,000, actual 50,000
        - Electricity and gas: budget 20,000, actual 23,000
        - Marketing: budget 15,000, actual 15,000

        Do this:
        1. Make a table: line, budget, actual, variance in ₹, variance %, favourable or adverse.
        2. Work out budget profit and actual profit. Show the maths.
        3. Flex the ingredients line to 35% of actual sales. Is it favourable or adverse now?
        4. Flag every variance of 5% or more.
        5. List 5 questions I should ask my team. Do not guess the reasons.
        6. Give the Excel formulas for the variance and flag columns.</pre>
            <ul class="ai-try-checks">
              <li>With the sample numbers: budget profit ₹98,000, actual profit ₹65,700.</li>
              <li>Flexed ingredients: 35% × 3,90,000 = ₹1,36,500, so ₹7,800 adverse.</li>
              <li>Is every sign right? A cost above budget must be adverse.</li>
              <li>Did the AI state reasons as facts? It should only ask questions.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A variance tells you where to look, not why it happened. Flex the budget for actual sales before you judge a cost. Let AI do the sums and draft questions, then check the maths and find the real reasons from your team.
        </div>
      HTML
      starter_code: nil
    },
    12 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-fin">Finance</div>
          <h1 class="lc-title">Forecasting Sales and Costs</h1>
        </div>
        <p class="lc-lead">A <strong>forecast</strong> is your best estimate of future numbers, based on the past and on what you know is coming. In this lesson, you will use three simple methods: growth rates, moving averages and seasonality. You will build worst, base and best cases. You will also use AI to explain methods and write spreadsheet formulas. A forecast is never a promise, so you will learn to show your assumptions clearly.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 310" role="img" aria-label="Line chart of the made-up bakery Sweet Crumbs. Monthly sales from April to September were 380, 400, 350, 370, 360 and 390 thousand rupees. Three methods forecast October at 373, 448 and 473 thousand rupees.">
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="380" y="24" font-weight="700">Sweet Crumbs (made-up): monthly sales, ₹ thousand</text>
              <g stroke="#27274e">
                <line x1="80" y1="50" x2="720" y2="50"/>
                <line x1="80" y1="150" x2="720" y2="150"/>
                <line x1="80" y1="250" x2="720" y2="250"/>
              </g>
              <g font-size="12" fill="#9b99b8" text-anchor="end">
                <text x="72" y="54">500</text>
                <text x="72" y="154">400</text>
                <text x="72" y="254">300</text>
              </g>
              <polyline points="100,170 180,150 260,200 340,180 420,190 500,160" fill="none" stroke="#3b82f6" stroke-width="2.5"/>
              <g fill="#3b82f6">
                <circle cx="100" cy="170" r="4"/>
                <circle cx="180" cy="150" r="4"/>
                <circle cx="260" cy="200" r="4"/>
                <circle cx="340" cy="180" r="4"/>
                <circle cx="420" cy="190" r="4"/>
                <circle cx="500" cy="160" r="4"/>
              </g>
              <g font-size="11" fill="#93c5fd">
                <text x="100" y="160">380</text>
                <text x="180" y="140">400</text>
                <text x="260" y="220">350</text>
                <text x="340" y="170">370</text>
                <text x="420" y="210">360</text>
                <text x="500" y="182">390</text>
              </g>
              <g stroke-width="2" stroke-dasharray="5 4" fill="none">
                <line x1="500" y1="160" x2="600" y2="77.5" stroke="#f59e0b"/>
                <line x1="500" y1="160" x2="600" y2="102" stroke="#10b981"/>
                <line x1="500" y1="160" x2="600" y2="176.7" stroke="#ec4899"/>
              </g>
              <circle cx="600" cy="77.5" r="5" fill="#f59e0b"/>
              <circle cx="600" cy="102" r="5" fill="#10b981"/>
              <circle cx="600" cy="176.7" r="5" fill="#ec4899"/>
              <g font-size="12" text-anchor="start">
                <text x="612" y="81" fill="#fcd34d">Growth: 473</text>
                <text x="612" y="106" fill="#6ee7b7">Season adj: 448</text>
                <text x="612" y="181" fill="#f9a8d4">3-month avg: 373</text>
              </g>
              <g font-size="12" fill="#9b99b8">
                <text x="100" y="272">Apr</text>
                <text x="180" y="272">May</text>
                <text x="260" y="272">Jun</text>
                <text x="340" y="272">Jul</text>
                <text x="420" y="272">Aug</text>
                <text x="500" y="272">Sep</text>
                <text x="600" y="272">Oct</text>
              </g>
              <text x="380" y="298" font-size="12" fill="#9b99b8">Solid line: actual sales. Dashed lines: October forecasts by three methods.</text>
            </g>
          </svg>
          <figcaption>Three simple methods give three different forecasts for October. The method you choose changes the answer, so always say which one you used.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Three simple forecasting methods</h3>
          <table class="lc-table">
            <thead><tr><th>Method</th><th>How it works</th><th>Good for</th><th>Watch out for</th></tr></thead>
            <tbody>
              <tr><td><strong>Growth rate</strong></td><td>Take a past number and add a growth percentage.</td><td>Steady businesses, yearly plans</td><td>Past growth may not continue.</td></tr>
              <tr><td><strong>Moving average</strong></td><td>Average the last few months (for example, the last 3).</td><td>Smoothing out up-and-down months</td><td>It is slow to react and ignores festivals.</td></tr>
              <tr><td><strong>Seasonality</strong></td><td>Adjust for months that are always higher or lower.</td><td>Festivals, weddings, school terms, monsoon</td><td>You need at least one full year of data.</td></tr>
            </tbody>
          </table>
          <p>A <strong>seasonal index</strong> compares one month with an average month. If last October was ₹4,20,000 and the average month was ₹3,50,000, the index is 4,20,000 ÷ 3,50,000 = 1.2. So October is usually 20% above an average month.</p>
        </div>
        <div class="lc-card">
          <h3>Worked example: forecasting October for Sweet Crumbs</h3>
          <p>Monthly sales for April to September are in cells B2 to B7 (₹ thousand): 380, 400, 350, 370, 360, 390. The owner also knows last year's numbers. B9: April to September total 2,000. B10: October 420. B11: average month 350.</p>
          <pre><code>3-month moving average:  =AVERAGE(B5:B7)            gives 373.3
        Seasonal index:          =B10/B11                   gives 1.2
        Season-adjusted:         =AVERAGE(B5:B7)*B10/B11    gives 448.0
        Growth this year (B12):  =SUM(B2:B7)/B9-1           gives 0.125 (12.5%)
        Growth forecast:         =B10*(1+B12)               gives 472.5</code></pre>
          <p>Check the sums: (370 + 360 + 390) ÷ 3 = 373.3. Then 373.3 × 1.2 = 448. This year's total is 2,250, and 2,250 ÷ 2,000 = 1.125. Then 420 × 1.125 = 472.5.</p>
          <p>Which one is right? None is certain. The plain moving average is too low, because it ignores the festival month. The owner picks <strong>₹4,48,000</strong> as the base case and notes the others as a range.</p>
          <p><strong>Forecast costs by type.</strong> Variable costs move with sales, so use a percentage (ingredients at 35% of sales). Fixed costs stay flat, so use known amounts (staff ₹90,000, rent ₹50,000, electricity ₹20,000, marketing ₹15,000, total ₹1,75,000). Add known changes, such as extra festival staff.</p>
        </div>
        <div class="lc-card">
          <h3>Scenarios, and how AI can help</h3>
          <p>A <strong>scenario</strong> is one version of the future, based on a set of assumptions. Build at least three. Profit for October = sales × 65% − ₹1,75,000 (because ingredients take 35% of sales).</p>
          <table class="lc-table">
            <thead><tr><th>Scenario</th><th>Assumption</th><th>Sales ₹</th><th>Profit ₹</th></tr></thead>
            <tbody>
              <tr><td>Worst</td><td>Same as last October</td><td>4,20,000</td><td>98,000</td></tr>
              <tr><td>Base</td><td>Moving average × seasonal index</td><td>4,48,000</td><td>1,16,200</td></tr>
              <tr><td>Best</td><td>Last October + 12.5% growth</td><td>4,72,500</td><td>1,32,125</td></tr>
            </tbody>
          </table>
          <p>In a spreadsheet, with sales in B2: <code>=B2*0.65-175000</code>. For the base case: 4,48,000 × 0.65 = 2,91,200, and 2,91,200 − 1,75,000 = 1,16,200.</p>
          <p>AI is useful here. It can explain a method, write formulas and suggest scenarios you did not think of. But AI often makes arithmetic mistakes. It may also sound certain about a future nobody knows. Recalculate in your spreadsheet. Write your assumptions next to every forecast.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Predict my bakery sales for next month.</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Here are 6 months of made-up sales and last year's October. Forecast October with a 3-month moving average, a seasonal index and a growth rate. Show each formula and the maths. List the assumptions. Do not add any data I did not give.</code></pre>
        </div>
        <div class="lc-card">
          <h3>Activity: build a forecast in the right order</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put the steps for building a simple sales and cost forecast in order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Collect at least 12 months of past sales from your records.</li>
              <li data-order="2">Mark one-off months, such as a big one-time order, so they do not distort the average.</li>
              <li data-order="3">Choose a method: growth rate, moving average or seasonal index.</li>
              <li data-order="4">Forecast costs: variable costs as a % of sales, fixed costs as known amounts.</li>
              <li data-order="5">Build worst, base and best scenarios, and write down the assumptions.</li>
              <li data-order="6">Each month, compare the forecast with actual results and update it.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask the AI to forecast next month with two methods and show its formulas. Then check the maths in a spreadsheet.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a friendly finance tutor for small business owners in India. This is education only, not financial advice.

        Business: [Sweet Crumbs, a small home bakery in Maharashtra]. Made-up monthly sales in ₹ thousand:
        [Apr 380, May 400, Jun 350, Jul 370, Aug 360, Sep 390]
        Last year: October was [420] and the average month was [350].
        Costs: ingredients are [35]% of sales. Fixed costs are [175] thousand a month.

        Do this:
        1. Forecast [October] sales with a 3-month moving average. Show the maths.
        2. Forecast it again with the moving average × seasonal index. Show the maths.
        3. Build worst, base and best scenarios for sales and profit in a table.
        4. Give Excel or Google Sheets formulas for each step, with sales in cells B2 to B7.
        5. List every assumption in plain words.
        Use only the numbers above. Round to one decimal place.</pre>
            <ul class="ai-try-checks">
              <li>With the sample numbers, the moving average is 373.3 and the seasonal forecast is 448.</li>
              <li>Profit = sales × 0.65 − 175. Recheck each scenario.</li>
              <li>Do the formulas point to the right cells (the last 3 months are B5 to B7)?</li>
              <li>Are the assumptions stated, and not hidden?</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Different methods give different forecasts. Choose a method that fits your business, adjust for seasons, and show a range with clear assumptions. Use AI for methods and formulas, but check every number yourself and update the forecast when actual results arrive.
        </div>
      HTML
      starter_code: nil
    },
    13 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-fin">Finance</div>
          <h1 class="lc-title">Cash Flow Planning</h1>
        </div>
        <p class="lc-lead">A business can make a profit and still run out of cash. Customers may pay late, or you may buy stock before a busy season. A <strong>cash flow forecast</strong> lists the cash you expect to receive and pay, week by week. In this lesson, you will learn the 13-week cash forecast, spot shortfalls early and plan fixes. You will also use AI and a spreadsheet together, and check every total. This is general education, not financial advice.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="Bar chart of closing cash for the made-up store Rangrez Crafts over 13 weeks, in thousand rupees. Cash starts near 300, falls below the 100 buffer in weeks 4 to 6, reaching minus 20 in week 5, then rises to 720 by week 13 after festival sales.">
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="380" y="22" font-weight="700">Rangrez Crafts (made-up): closing cash, next 13 weeks (₹ thousand)</text>
              <line x1="70" y1="250" x2="720" y2="250" stroke="#9b99b8"/>
              <text x="64" y="254" font-size="11" fill="#9b99b8" text-anchor="end">0</text>
              <g fill="#1f1f44" stroke="#3b82f6">
                <rect x="80" y="172.5" width="34" height="77.5"/>
                <rect x="130" y="175" width="34" height="75"/>
                <rect x="180" y="202.5" width="34" height="47.5"/>
                <rect x="380" y="202.5" width="34" height="47.5"/>
                <rect x="430" y="155" width="34" height="95"/>
                <rect x="480" y="105" width="34" height="145"/>
                <rect x="530" y="80" width="34" height="170"/>
                <rect x="580" y="67.5" width="34" height="182.5"/>
                <rect x="630" y="72.5" width="34" height="177.5"/>
                <rect x="680" y="70" width="34" height="180"/>
              </g>
              <g fill="#ec4899" fill-opacity="0.4" stroke="#ec4899">
                <rect x="230" y="232.5" width="34" height="17.5"/>
                <rect x="280" y="250" width="34" height="5"/>
                <rect x="330" y="237.5" width="34" height="12.5"/>
              </g>
              <line x1="70" y1="225" x2="720" y2="225" stroke="#f59e0b" stroke-dasharray="5 4"/>
              <text x="64" y="229" font-size="11" fill="#fcd34d" text-anchor="end">Buffer 100</text>
              <g font-size="11" fill="#93c5fd">
                <text x="97" y="166">310</text>
                <text x="147" y="169">300</text>
                <text x="197" y="196">190</text>
                <text x="397" y="196">190</text>
                <text x="447" y="149">380</text>
                <text x="497" y="99">580</text>
                <text x="547" y="74">680</text>
                <text x="597" y="61">730</text>
                <text x="647" y="66">710</text>
                <text x="697" y="64">720</text>
              </g>
              <g font-size="11" fill="#f9a8d4">
                <text x="247" y="268">70</text>
                <text x="297" y="268">−20</text>
                <text x="347" y="268">50</text>
              </g>
              <text x="297" y="170" font-size="12" fill="#f9a8d4">Below buffer: weeks 4 to 6</text>
              <g font-size="11" fill="#9b99b8">
                <text x="97" y="288">W1</text>
                <text x="147" y="288">W2</text>
                <text x="197" y="288">W3</text>
                <text x="247" y="288">W4</text>
                <text x="297" y="288">W5</text>
                <text x="347" y="288">W6</text>
                <text x="397" y="288">W7</text>
                <text x="447" y="288">W8</text>
                <text x="497" y="288">W9</text>
                <text x="547" y="288">W10</text>
                <text x="597" y="288">W11</text>
                <text x="647" y="288">W12</text>
                <text x="697" y="288">W13</text>
              </g>
            </g>
          </svg>
          <figcaption>The store buys festival stock before the sales come in. Cash drops below the safety buffer in weeks 4 to 6, and goes negative in week 5.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>What a 13-week cash forecast is</h3>
          <p>A 13-week cash forecast covers about one quarter (three months), one week at a time. It is short enough to be accurate, and long enough to warn you early.</p>
          <ul class="lc-list">
            <li><strong>Opening cash:</strong> the money in the bank at the start of the week.</li>
            <li><strong>Cash in (receipts):</strong> customer payments by cash, UPI and card, advances from customers, loans received.</li>
            <li><strong>Cash out (payments):</strong> suppliers, wages, rent, GST payments on their due dates, loan EMIs, the owner's drawings.</li>
            <li><strong>Closing cash:</strong> opening cash + cash in − cash out. It becomes next week's opening cash.</li>
            <li><strong>Buffer:</strong> the lowest balance you are happy to hold, for surprises.</li>
          </ul>
          <p>Use cash dates, not invoice dates. A sale on 30 days' credit brings cash a month later. Due dates for taxes change, so check the GST portal or your chartered accountant.</p>
        </div>
        <div class="lc-card">
          <h3>Worked example: Rangrez Crafts before the festival season</h3>
          <p>Rangrez Crafts is a made-up handicrafts brand in Rajasthan. It has ₹3,00,000 in the bank. It wants to keep at least ₹1,00,000 as a buffer. Amounts are in ₹ thousand.</p>
          <table class="lc-table">
            <thead><tr><th>Week</th><th>Cash in</th><th>Cash out</th><th>Net</th><th>Closing</th></tr></thead>
            <tbody>
              <tr><td>1</td><td>150</td><td>140</td><td>+10</td><td>310</td></tr>
              <tr><td>2</td><td>150</td><td>160</td><td>−10</td><td>300</td></tr>
              <tr><td>3</td><td>150</td><td>260</td><td>−110</td><td>190</td></tr>
              <tr><td>4</td><td>160</td><td>280</td><td>−120</td><td><strong>70</strong></td></tr>
              <tr><td>5</td><td>170</td><td>260</td><td>−90</td><td><strong>−20</strong></td></tr>
              <tr><td>6</td><td>220</td><td>150</td><td>+70</td><td><strong>50</strong></td></tr>
              <tr><td>7</td><td>300</td><td>160</td><td>+140</td><td>190</td></tr>
              <tr><td>8</td><td>360</td><td>170</td><td>+190</td><td>380</td></tr>
              <tr><td>9</td><td>380</td><td>180</td><td>+200</td><td>580</td></tr>
              <tr><td>10</td><td>300</td><td>200</td><td>+100</td><td>680</td></tr>
              <tr><td>11</td><td>200</td><td>150</td><td>+50</td><td>730</td></tr>
              <tr><td>12</td><td>160</td><td>180</td><td>−20</td><td>710</td></tr>
              <tr><td>13</td><td>150</td><td>140</td><td>+10</td><td>720</td></tr>
            </tbody>
          </table>
          <p>Over 13 weeks, cash in is 2,850 and cash out is 2,430. So cash grows by 420, from 300 to 720. The quarter looks fine in total. But weeks 4 to 6 fall below the buffer, and week 5 is negative.</p>
          <p>In a spreadsheet, put the week in column A, opening cash in B, cash in in C and cash out in D. Week 1 is row 2.</p>
          <pre><code>B2: 300                       (opening cash, week 1)
        E2: =C2-D2                    (net)
        F2: =B2+E2                    (closing)
        B3: =F2                       (next opening = last closing)
        G2: =IF(F2&lt;100,"Below buffer","OK")
        Lowest cash:  =MIN(F2:F14)                          gives -20
        Which week:   =INDEX(A2:A14,MATCH(MIN(F2:F14),F2:F14,0))   gives 5</code></pre>
        </div>
        <div class="lc-card">
          <h3>Fixing a shortfall early</h3>
          <p>A <strong>shortfall</strong> is a week when cash falls below zero or below your buffer. Rangrez Crafts needs ₹1,20,000 more by week 5 to stay at ₹1,00,000. Because it planned 13 weeks ahead, it has time to act.</p>
          <ul class="lc-list">
            <li><strong>Move a payment.</strong> The supplier agrees to take ₹80,000 of the week 5 payment in week 8.</li>
            <li><strong>Collect earlier.</strong> A corporate gift order pays a ₹50,000 advance in week 4, instead of paying it in week 7.</li>
            <li><strong>Other options:</strong> buy stock in smaller lots. Or ask a bank, such as the made-up Navkar Bank, about an overdraft before you need it. An overdraft lets your account go below zero up to a limit, and you pay interest on it.</li>
          </ul>
          <p>After the first two changes: week 4 closes at 120, week 5 at 110 and week 6 at 180. Week 7 closes at 270. Week 8 closes at 380, the same as before, because no money was lost. It only moved to different weeks.</p>
          <p>AI can suggest fixes like these and draft a polite message to the supplier. But only you can agree terms. Check the costs of any loan with the bank, and ask a chartered accountant if you are unsure.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: a cash planning session</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Owner's prompt">Here are my weekly cash in and cash out for 13 weeks (made-up numbers, ₹ thousand). Opening cash is 300. Build the closing cash for each week. Which weeks fall below 100?</li>
              <li data-kind="answer" data-label="AI reply">Here is the table. The lowest balance is 70 in week 4. Only week 4 is below your buffer.</li>
              <li data-kind="tool" data-label="Spreadsheet">The owner pastes the same numbers into a sheet. Closing cash = opening + cash in − cash out. Then =MIN(F2:F14) finds the lowest week.</li>
              <li data-kind="result" data-label="Sheet result">Lowest cash is −20 in week 5. Weeks 4, 5 and 6 are below 100.</li>
              <li data-kind="warn" data-label="Mistake caught">The AI's running total went wrong from week 5. It missed part of the week 5 supplier payment. Always recheck AI totals in a spreadsheet.</li>
              <li data-kind="thought" data-label="Owner thinks">I need 120 more by week 5. I could move a supplier payment or collect an advance.</li>
              <li data-kind="user" data-label="Owner's prompt">Suggest 3 ways to fix the gap in weeks 4 to 6. Show the new closing cash for each idea.</li>
              <li data-kind="check" data-label="Owner checks">The owner calls the supplier and the corporate customer. Both agree. The sheet now shows a lowest balance of 110 in week 5.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask the AI to build a short cash forecast, find the weak weeks and suggest fixes. Then rebuild it in a spreadsheet to check.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a practical cash flow adviser for small shops in India. This is education only, not financial advice.

        Business: [Rangrez Crafts, a handicrafts brand in Rajasthan]. Opening cash: [300] thousand rupees. Buffer: keep at least [100] thousand.
        Made-up weekly numbers in ₹ thousand (cash in / cash out):
        W1 150/140, W2 150/160, W3 150/260, W4 160/280, W5 170/260, W6 220/150, W7 300/160, W8 360/170, W9 380/180, W10 300/200, W11 200/150, W12 160/180, W13 150/140

        Do this:
        1. Make a table: week, opening, cash in, cash out, net, closing.
        2. List every week below the buffer and the lowest balance.
        3. Suggest 3 practical fixes, such as moving a payment or collecting an advance. For each, show the new closing cash for weeks 3 to 8.
        4. Give the spreadsheet formulas for closing cash and a "Below buffer" flag.
        5. Draft a short, polite message to a supplier asking to split a payment.
        Use only these numbers. Do not invent other income or costs.</pre>
            <ul class="ai-try-checks">
              <li>With the sample numbers: closing cash is 70 in week 4, −20 in week 5 and 50 in week 6.</li>
              <li>Week 13 must close at 720 (300 + 2,850 − 2,430).</li>
              <li>Does each fix only move cash between weeks, or does it add a cost such as interest?</li>
              <li>Is the supplier message polite and free of promises you cannot keep?</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Profit does not pay bills; cash does. A 13-week cash forecast shows the weak weeks while you still have time to act. Let AI draft the table and ideas, but rebuild the totals in a spreadsheet, because one missed payment can hide a shortfall.
        </div>
      HTML
      starter_code: nil
    },
    14 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-fin">Finance</div>
          <h1 class="lc-title">Presenting Findings</h1>
        </div>
        <p class="lc-lead">Good analysis is wasted if nobody understands it. Managers, owners and lenders are busy. They want the main message, the key numbers and what to do next. In this lesson, you will write a one-page summary, choose the right chart, give clear recommendations and state your assumptions. You will use AI to draft and shorten, and you will check every number it writes.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 360" role="img" aria-label="Mock-up of a one-page summary for the made-up company Sahyadri Foods Ltd. It has a headline, four key number tiles, a small bar chart of operating cash and capex, three recommendations and a line of assumptions. Labels on the right name each part.">
            <defs><marker id="fa14a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="40" y="20" width="460" height="320" rx="10" fill="#1f1f44" stroke="#9b99b8"/>
              <rect x="52" y="30" width="436" height="48" rx="6" fill="#27274e" stroke="#8b5cf6"/>
              <text x="270" y="59" font-size="14" font-weight="700">Sahyadri Foods FY26: strong sales, tighter cash</text>
              <g>
                <rect x="52" y="90" width="100" height="62" rx="6" fill="#27274e" stroke="#3b82f6"/>
                <text x="102" y="106" font-size="11" fill="#9b99b8">Revenue</text>
                <text x="102" y="126" font-size="14">₹920 cr</text>
                <text x="102" y="144" font-size="11" fill="#6ee7b7">+15%</text>
                <rect x="164" y="90" width="100" height="62" rx="6" fill="#27274e" stroke="#3b82f6"/>
                <text x="214" y="106" font-size="11" fill="#9b99b8">Net profit</text>
                <text x="214" y="126" font-size="14">₹66 cr</text>
                <text x="214" y="144" font-size="11" fill="#6ee7b7">+10%</text>
                <rect x="276" y="90" width="100" height="62" rx="6" fill="#27274e" stroke="#3b82f6"/>
                <text x="326" y="106" font-size="11" fill="#9b99b8">Gross margin</text>
                <text x="326" y="126" font-size="14">34.0%</text>
                <text x="326" y="144" font-size="11" fill="#f9a8d4">from 35.0%</text>
                <rect x="388" y="90" width="100" height="62" rx="6" fill="#27274e" stroke="#3b82f6"/>
                <text x="438" y="106" font-size="11" fill="#9b99b8">Free cash flow</text>
                <text x="438" y="126" font-size="14">₹6 cr</text>
                <text x="438" y="144" font-size="11" fill="#f9a8d4">from ₹32 cr</text>
              </g>
              <rect x="52" y="164" width="216" height="118" rx="6" fill="#27274e" stroke="#22d3ee"/>
              <text x="160" y="180" font-size="11">Operating cash vs capex (₹ cr)</text>
              <line x1="60" y1="258" x2="190" y2="258" stroke="#9b99b8"/>
              <rect x="70" y="193.2" width="18" height="64.8" fill="#3b82f6"/>
              <rect x="92" y="222" width="18" height="36" fill="#f59e0b"/>
              <rect x="140" y="198.6" width="18" height="59.4" fill="#3b82f6"/>
              <rect x="162" y="204" width="18" height="54" fill="#f59e0b"/>
              <text x="90" y="273" font-size="11" fill="#9b99b8">FY25</text>
              <text x="160" y="273" font-size="11" fill="#9b99b8">FY26</text>
              <rect x="202" y="212" width="10" height="10" fill="#3b82f6"/>
              <text x="216" y="221" font-size="11" text-anchor="start">Cash</text>
              <rect x="202" y="232" width="10" height="10" fill="#f59e0b"/>
              <text x="216" y="241" font-size="11" text-anchor="start">Capex</text>
              <rect x="280" y="164" width="208" height="118" rx="6" fill="#27274e" stroke="#10b981"/>
              <text x="384" y="182" font-size="12" font-weight="700">Recommendations</text>
              <g font-size="11" text-anchor="start">
                <text x="292" y="206">1. Cut inventory days to 56</text>
                <text x="292" y="230">2. Track margin each quarter</text>
                <text x="292" y="254">3. Limit new loans for now</text>
              </g>
              <rect x="52" y="294" width="436" height="36" rx="6" fill="#27274e" stroke="#f59e0b"/>
              <text x="270" y="316" font-size="11">Assumptions: audited FY26 figures; price rises hold in FY27</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#fa14a)">
                <path d="M538,54 L506,54"/>
                <path d="M538,121 L506,121"/>
                <path d="M538,223 L506,223"/>
                <path d="M538,312 L506,312"/>
              </g>
              <g text-anchor="start" font-size="13">
                <text x="546" y="58">1. Headline</text>
                <text x="546" y="125">2. Key numbers</text>
                <text x="546" y="227">3. Recommendations</text>
                <text x="546" y="316">4. Assumptions</text>
              </g>
            </g>
          </svg>
          <figcaption>A one-page summary puts the main message first, then the few numbers that prove it, one clear chart, the actions and the assumptions.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The one-page summary</h3>
          <p>You work in the finance team at Sahyadri Foods Ltd, a made-up listed snacks company. The CFO (chief financial officer) wants one page on FY26 for the board. Use this structure.</p>
          <ol class="lc-list">
            <li><strong>Headline:</strong> the main message in one sentence.</li>
            <li><strong>Key numbers:</strong> 3 to 5 numbers, each with last year for comparison.</li>
            <li><strong>What happened and why:</strong> 3 or 4 short points.</li>
            <li><strong>Recommendations:</strong> clear actions, each linked to a finding.</li>
            <li><strong>Assumptions and sources:</strong> where the numbers came from and what you assumed.</li>
          </ol>
          <pre><code>HEADLINE: Sales grew 15%, but cash is getting tighter.

        KEY NUMBERS (₹ crore, FY26 vs FY25)
        Revenue 920 (800), up 15%. Net profit 66 (60), up 10%.
        Gross margin 34.0% (35.0%). Free cash flow 6 (32).

        WHY
        - Edible oil and packaging costs rose, so gross margin fell 1 point.
        - Inventory days rose from 56.2 to 60.1, which locked up cash.
        - Capex rose to 60 for the new snacks line.

        RECOMMENDATIONS
        1. Bring inventory days back to about 56. This could free about 7 crore.
        2. Track the effect of price rises on gross margin every quarter.
        3. Keep new borrowing low until free cash flow improves.

        ASSUMPTIONS: Figures from the FY26 annual report (made-up).
        Inventory saving uses FY26 cost of materials (607).</code></pre>
          <p>Check the saving: 607 × 56 ÷ 365 = 93.1. Inventory is 100, so 100 − 93.1 = 6.9, about ₹7 crore.</p>
        </div>
        <div class="lc-card">
          <h3>Choosing the right chart</h3>
          <table class="lc-table">
            <thead><tr><th>You want to show</th><th>Use</th><th>Example</th></tr></thead>
            <tbody>
              <tr><td>A change over time</td><td>Line chart</td><td>Revenue over five years</td></tr>
              <tr><td>A comparison between items</td><td>Bar chart</td><td>Budget vs actual for each cost line</td></tr>
              <tr><td>How you got from A to B</td><td>Waterfall chart</td><td>Budget profit to actual profit</td></tr>
              <tr><td>Exact values to look up</td><td>Table</td><td>Ten ratios for a bank's loan review</td></tr>
            </tbody>
          </table>
          <ul class="lc-list">
            <li>Give each chart one message, and put it in the title. For example: "Capex grew faster than operating cash".</li>
            <li>Label units, such as ₹ crore or %, and the period, such as FY26.</li>
            <li>Start bar chart axes at zero. A cut axis makes small changes look big.</li>
            <li>Avoid pie charts with many slices. Bars are easier to compare.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Using AI to draft, and what you must check</h3>
          <p>AI is good at turning your notes into a clear page, shortening long text and suggesting a chart. But it may change a number, round it wrongly or add a claim you never made.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Write a summary of Sahyadri's results.</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Write a one-page summary for a company board using only these findings and numbers. Structure: headline, 4 key numbers with last year, 3 reasons, 3 recommendations, assumptions. Plain English, under 200 words. Do not add any number I did not give. Suggest one chart and its title.</code></pre>
          <ul class="lc-list">
            <li>Tick every number in the draft against your workings.</li>
            <li>Make sure each recommendation follows from a finding.</li>
            <li>Keep words like "may" and "expect" where things are uncertain.</li>
            <li>If the page is about investing, say it is not investment advice. Real decisions need a SEBI-registered adviser.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Activity: pick the chart</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each item into the best way to show it.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="line" data-label="Line chart"></div>
              <div data-sorter-target="bucket" data-bucket="bar" data-label="Bar chart"></div>
              <div data-sorter-target="bucket" data-bucket="table" data-label="Table"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="line" data-why="A trend over many years is clearest as a line.">Sahyadri's revenue from FY22 to FY26</li>
              <li data-bucket="bar" data-why="Bars compare separate items side by side.">Sweet Crumbs budget vs actual for each cost line in August</li>
              <li data-bucket="table" data-why="A reader who needs exact values should get a table.">Twelve exact ratios for Navkar Bank's loan review</li>
              <li data-bucket="line" data-why="Weekly balances over time show the dip clearly as a line.">Rangrez Crafts closing cash for each of the next 13 weeks</li>
              <li data-bucket="bar" data-why="Comparing two product groups is a simple bar comparison.">Gross margin of snacks vs ready-to-cook mixes in FY26</li>
              <li data-bucket="table" data-why="Many exact numbers for checking belong in a table, often in an appendix.">The full P&amp;L lines for two years, for the auditor</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Give the AI your findings and ask for a one-page summary. Then tick every number against your notes.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a clear business writer who helps finance teams present results. This is education only, not investment advice.

        Write a one-page summary for [the board of Sahyadri Foods Ltd, a made-up snacks company]. Use only these made-up findings (₹ crore, FY26 vs FY25):
        - Revenue 920 vs 800 (up 15%)
        - Net profit 66 vs 60 (up 10%)
        - Gross margin 34.0% vs 35.0% (oil and packaging costs rose)
        - Inventory days 60.1 vs 56.2
        - Operating cash flow 66 vs 72; capex 60 vs 40; free cash flow 6 vs 32
        - Debt-to-equity 0.45 vs 0.43; interest cover 7.8 vs 9.0

        Structure: a one-sentence headline, 4 key numbers with last year, 3 reasons, 3 recommendations (each linked to a finding), and assumptions.
        Keep it under [200] words, in plain English.
        Then suggest one chart: its type, its title and the data it shows.
        Do not add any number or fact I did not give.</pre>
            <ul class="ai-try-checks">
              <li>Is every number the same as in the prompt?</li>
              <li>Does each recommendation link to a finding?</li>
              <li>Is the headline one clear message?</li>
              <li>Does the chart title say the message, with units?</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Put the message first, prove it with a few numbers, and end with clear actions and assumptions. One chart with one message beats five busy charts. AI can draft and shorten, but you must check every number and every claim before anyone reads it.
        </div>
      HTML
      starter_code: nil
    },
    15 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-fin">Finance</div>
          <h1 class="lc-title">Capstone: Analyse a Small Company</h1>
        </div>
        <p class="lc-lead">In this capstone, you will put the whole course together. You will analyse Sahyadri Foods Ltd, a made-up listed snacks company, from its statements to a written summary. You will calculate ratios, find trends, build a simple forecast, check its cash needs and write one page. The same steps work for a small business like Sweet Crumbs. This is an educational exercise with made-up numbers. It is not investment advice.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 240" role="img" aria-label="Six-step capstone workflow for the made-up company Sahyadri Foods Ltd: statements, ratios, trends, forecast, cash plan and summary. A bar below says to check every number against the statements before moving on.">
            <defs><marker id="fa15a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="380" y="30" font-weight="700">Capstone workflow: Sahyadri Foods Ltd (made-up), ₹ crore</text>
              <rect x="20" y="60" width="100" height="70" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="70" y="88" font-weight="700">Statements</text>
              <text x="70" y="110" font-size="11" fill="#9b99b8">Rev ₹920 cr</text>
              <rect x="146" y="60" width="100" height="70" rx="8" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="196" y="88" font-weight="700">Ratios</text>
              <text x="196" y="110" font-size="11" fill="#9b99b8">ROCE 24.5%</text>
              <rect x="272" y="60" width="100" height="70" rx="8" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="322" y="88" font-weight="700">Trends</text>
              <text x="322" y="110" font-size="11" fill="#9b99b8">GM 35% to 34%</text>
              <rect x="398" y="60" width="100" height="70" rx="8" fill="#1f1f44" stroke="#10b981"/>
              <text x="448" y="88" font-weight="700">Forecast</text>
              <text x="448" y="110" font-size="11" fill="#9b99b8">FY27 ₹1,012 cr</text>
              <rect x="524" y="60" width="100" height="70" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="574" y="88" font-weight="700">Cash plan</text>
              <text x="574" y="110" font-size="11" fill="#9b99b8">FCF ₹6 cr</text>
              <rect x="650" y="60" width="100" height="70" rx="8" fill="#1f1f44" stroke="#ec4899"/>
              <text x="700" y="88" font-weight="700">Summary</text>
              <text x="700" y="110" font-size="11" fill="#9b99b8">One page</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#fa15a)">
                <path d="M122,95 L143,95"/>
                <path d="M248,95 L269,95"/>
                <path d="M374,95 L395,95"/>
                <path d="M500,95 L521,95"/>
                <path d="M626,95 L647,95"/>
              </g>
              <rect x="20" y="164" width="730" height="48" rx="8" fill="#27274e" stroke="#9b99b8" stroke-dasharray="5 4"/>
              <text x="385" y="193">At every step: check each number against the statements before you move on</text>
            </g>
          </svg>
          <figcaption>Work in six steps, from the statements to a one-page summary. Checking numbers is not a last step. You do it at every step.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Steps 1 and 2: from statements to ratios</h3>
          <p>Start with the P&amp;L, balance sheet and cash flow statement for two years. Calculate the key ratios yourself, then ask AI to check your working, or the other way round. Amounts are in ₹ crore. FY26 is the year to 31 March 2026.</p>
          <table class="lc-table">
            <thead><tr><th>Ratio</th><th>Formula</th><th>FY25</th><th>FY26</th></tr></thead>
            <tbody>
              <tr><td>Gross margin</td><td>Gross profit ÷ revenue</td><td>35.0%</td><td>34.0%</td></tr>
              <tr><td>Net margin</td><td>Net profit ÷ revenue</td><td>7.5%</td><td>7.2%</td></tr>
              <tr><td>ROE (return on equity)</td><td>Net profit ÷ closing equity</td><td>23.5%</td><td>21.8%</td></tr>
              <tr><td>ROCE (return on capital employed)</td><td>EBIT ÷ (equity + long-term borrowings)</td><td>26.1%</td><td>24.5%</td></tr>
              <tr><td>Current ratio</td><td>Current assets ÷ current liabilities</td><td>1.77</td><td>1.95</td></tr>
              <tr><td>Debt-to-equity</td><td>All borrowings ÷ equity</td><td>0.43</td><td>0.45</td></tr>
              <tr><td>Interest cover</td><td>EBIT ÷ finance costs</td><td>9.0</td><td>7.8</td></tr>
              <tr><td>Inventory days</td><td>Inventory ÷ cost of materials × 365</td><td>56.2</td><td>60.1</td></tr>
              <tr><td>Receivable days</td><td>Receivables ÷ revenue × 365</td><td>30.1</td><td>31.7</td></tr>
              <tr><td>Cash conversion cycle</td><td>Inventory days + receivable days − payable days</td><td>47.0</td><td>53.4</td></tr>
            </tbody>
          </table>
          <p>EBIT means operating profit (earnings before interest and tax). In a spreadsheet, put the FY26 numbers in column C: C2 revenue 920, C3 cost of materials 607, C4 EBIT 101, C5 net profit 66, C6 capital employed 413, C7 inventory 100.</p>
          <pre><code>Gross margin:    =(C2-C3)/C2     gives 0.340 (34.0%)
        Net margin:      =C5/C2          gives 0.072 (7.2%)
        ROCE:            =C4/C6          gives 0.245 (24.5%)
        Inventory days:  =C7/C3*365      gives 60.1</code></pre>
        </div>
        <div class="lc-card">
          <h3>Steps 3 and 4: trends and a simple forecast</h3>
          <p><strong>Trends.</strong> Revenue grew 15%, but net profit grew only 10%. Gross margin slipped 1 point because material costs rose. Inventory and receivables grew faster than sales, so the cash conversion cycle rose from 47.0 to 53.4 days. Debt is still low, and interest cover of 7.8 is comfortable.</p>
          <p><strong>Forecast for FY27.</strong> Build three scenarios. Assume employee and other costs rise about 8%, from 188 to 203 (an assumption you must state). EBITDA is profit before interest, tax, depreciation and amortisation.</p>
          <table class="lc-table">
            <thead><tr><th>Scenario</th><th>Revenue growth</th><th>Gross margin</th><th>Revenue</th><th>Gross profit</th><th>EBITDA</th></tr></thead>
            <tbody>
              <tr><td>Worst</td><td>5%</td><td>33%</td><td>966</td><td>318.8</td><td>115.8</td></tr>
              <tr><td>Base</td><td>10%</td><td>34%</td><td>1,012</td><td>344.1</td><td>141.1</td></tr>
              <tr><td>Best</td><td>15%</td><td>35%</td><td>1,058</td><td>370.3</td><td>167.3</td></tr>
            </tbody>
          </table>
          <p>With growth in B2 and gross margin in C2: revenue <code>=920*(1+B2)</code>, gross profit <code>=D2*C2</code>, EBITDA <code>=E2-203</code>. Check the base case: 920 × 1.10 = 1,012. Then 1,012 × 0.34 = 344.08, and 344.08 − 203 = 141.08.</p>
          <p>Notice the worst case. EBITDA would fall to 115.8, below FY26's 125. Management "expects margins to recover", but that is a hope, not a fact.</p>
        </div>
        <div class="lc-card">
          <h3>Steps 5 and 6: cash plan and written summary</h3>
          <p><strong>Cash plan.</strong> In FY26, operating cash flow was 66 and capex was 60, so free cash flow was only 6. Dividends were 18. The company borrowed 25 more, and its cash rose by 13. Suppose FY27 capex is 40 (a made-up assumption) and dividends stay at 18. Then Sahyadri needs operating cash flow of at least 58 to avoid new loans, before any loan repayments. It made 72 in FY25 and 66 in FY26. Bringing inventory days back to about 56 could free about ₹7 crore at FY26 cost levels.</p>
          <p><strong>Written summary.</strong> Draft it yourself or with AI, then check every number.</p>
          <pre><code>Sahyadri Foods Ltd (made-up): FY26 review

        Sales grew 15% to ₹920 crore, but profit grew only 10% to ₹66 crore.
        Gross margin fell from 35.0% to 34.0% as material costs rose.
        More cash is tied up in stock: inventory days rose from 56.2 to 60.1.
        With higher capex, free cash flow fell from ₹32 crore to ₹6 crore,
        and borrowings rose by ₹25 crore. Debt is still modest
        (debt-to-equity 0.45, interest cover 7.8).

        Base case FY27: revenue about ₹1,012 crore, EBITDA about ₹141 crore.
        Worst case EBITDA: about ₹116 crore.

        Watch: gross margin each quarter, inventory days, and new borrowing.
        Assumptions: costs +8%, capex ₹40 crore, dividends ₹18 crore.
        Education only. Not investment advice.</code></pre>
          <p>For any real investment decision, speak to a SEBI-registered investment adviser.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: fact, calculation or assumption?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">A good summary keeps these apart. Sort each sentence about Sahyadri Foods Ltd.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="fact" data-label="Fact from the statements"></div>
              <div data-sorter-target="bucket" data-bucket="calc" data-label="Your calculation"></div>
              <div data-sorter-target="bucket" data-bucket="assume" data-label="Assumption or hope"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="fact" data-why="Revenue is printed in the P&amp;L.">Revenue in FY26 was ₹920 crore.</li>
              <li data-bucket="fact" data-why="Capex is shown in the cash flow statement.">Capex in FY26 was ₹60 crore.</li>
              <li data-bucket="calc" data-why="You worked this out from gross profit and revenue.">Gross margin fell from 35.0% to 34.0%.</li>
              <li data-bucket="calc" data-why="You worked this out as operating cash flow minus capex.">Free cash flow fell from ₹32 crore to ₹6 crore.</li>
              <li data-bucket="calc" data-why="You worked this out from inventory and cost of materials.">Inventory days rose from 56.2 to 60.1.</li>
              <li data-bucket="assume" data-why="This is your forecast choice, not a known number.">Revenue will grow 10% in FY27.</li>
              <li data-bucket="assume" data-why="This is management's hope. Treat it as an assumption.">Margins will recover as price rises take effect.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask the AI to do the full analysis from the made-up statements. Then check its ratios against the table in this lesson.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a careful financial analyst teaching a beginner. This is education only, not investment advice.

        Company: [Sahyadri Foods Ltd], a made-up snacks maker. ₹ crore, FY25 then FY26:
        Revenue 800, 920. Cost of materials 520, 607. EBIT 90, 101. Finance costs 10, 13. Net profit 60, 66.
        Equity 255, 303. Borrowings 110, 135. Long-term borrowings 90, 110.
        Current assets 173, 220. Current liabilities 98, 113. Inventory 80, 100.
        Operating cash flow 72, 66. Capex 40, 60. Dividends 15, 18.

        Do this:
        1. Calculate gross margin, net margin, ROCE, current ratio, debt-to-equity, interest cover and inventory days for both years. Show each formula.
        2. Describe the 3 most important trends.
        3. Forecast FY27 revenue and gross profit at [10]% growth and a [34]% gross margin.
        4. Say how much operating cash flow is needed to pay capex of [40] and dividends of 18 without new loans.
        5. Write a 150-word summary with a headline and assumptions.
        Use only these numbers. Round to one decimal place.</pre>
            <ul class="ai-try-checks">
              <li>FY26: gross margin 34.0%, ROCE 24.5% (101 ÷ 413), interest cover 7.8.</li>
              <li>With the sample inputs: FY27 revenue 1,012 and gross profit 344.1.</li>
              <li>Cash needed: 40 + 18 = 58.</li>
              <li>Did it add any number, or give buy or sell advice?</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A full analysis is a chain: statements, ratios, trends, forecast, cash plan and summary. Each link depends on the one before, so one wrong number spreads. Use AI to speed up each step, but check the numbers at every step, and keep facts, calculations and assumptions clearly apart.
        </div>
      HTML
      starter_code: nil
    }
  }.freeze
end

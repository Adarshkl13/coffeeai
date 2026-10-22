module HrAnalyticsAiContent
  # Units (sidebar dividers): 1–4 HR Analytics Basics · 5–9 Key HR Metrics · 10–14 Insights and Planning · 15 Capstone
  # Widgets: sequence, sorter, stepper. No code editor: each Try It is an ai-try prompt box.
  LESSONS = {
    1 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-hr">HR & Recruitment</div>
          <h1 class="lc-title">What HR Analytics Is</h1>
        </div>
        <p class="lc-lead"><strong>HR analytics</strong> means using data about people at work to answer business questions. The data covers hiring, pay, engagement, performance and exits. Good HR analytics turns "I feel many people are leaving" into "24 people left this year, and one team lost 40% of its staff". In this lesson you will learn the four types of HR analytics and the questions each one answers. You will also learn to turn a vague worry into a clear question. In this course, you will use AI assistants and spreadsheets. You will not write any code.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="Four steps that rise like a staircase: descriptive analytics asks what happened, diagnostic asks why, predictive asks what may happen, and prescriptive asks what we should do. Each step shows a LedgerLite example. Value and difficulty grow from left to right.">
            <defs><marker id="hra1a" markerWidth="8" markerHeight="8" refX="7" refY="4" orient="auto"><path d="M0,0 L8,4 L0,8 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12.5" fill="#e2e0f0" text-anchor="middle">
              <text x="16" y="28" text-anchor="start" font-size="13" font-weight="700">Four types of HR analytics at LedgerLite</text>
              <rect x="10" y="130" width="170" height="130" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="95" y="156" font-weight="700" fill="#93c5fd">1. Descriptive</text>
              <text x="95" y="178" font-size="11.5">What happened?</text>
              <text x="95" y="206" font-size="11" fill="#9b99b8">24 people left in FY26</text>
              <text x="95" y="226" font-size="11" fill="#9b99b8">Attrition: 21.4%</text>
              <rect x="200" y="105" width="170" height="155" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="285" y="131" font-weight="700" fill="#c4b5fd">2. Diagnostic</text>
              <text x="285" y="153" font-size="11.5">Why did it happen?</text>
              <text x="285" y="181" font-size="11" fill="#9b99b8">Customer Success lost</text>
              <text x="285" y="201" font-size="11" fill="#9b99b8">40% of its staff</text>
              <text x="285" y="221" font-size="11" fill="#9b99b8">Its eNPS is −23</text>
              <rect x="390" y="80" width="170" height="180" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="475" y="106" font-weight="700" fill="#fcd34d">3. Predictive</text>
              <text x="475" y="128" font-size="11.5">What may happen?</text>
              <text x="475" y="156" font-size="11" fill="#9b99b8">If this pace goes on,</text>
              <text x="475" y="176" font-size="11" fill="#9b99b8">about 6 more people</text>
              <text x="475" y="196" font-size="11" fill="#9b99b8">may leave the team</text>
              <text x="475" y="216" font-size="11" fill="#9b99b8">next year</text>
              <rect x="580" y="55" width="170" height="205" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="665" y="81" font-weight="700" fill="#6ee7b7">4. Prescriptive</text>
              <text x="665" y="103" font-size="11.5">What should we do?</text>
              <text x="665" y="131" font-size="11" fill="#9b99b8">Options: fix workload,</text>
              <text x="665" y="151" font-size="11" fill="#9b99b8">review pay, better</text>
              <text x="665" y="171" font-size="11" fill="#9b99b8">first 90 days</text>
              <text x="665" y="205" font-size="11" fill="#6ee7b7">People choose and</text>
              <text x="665" y="225" font-size="11" fill="#6ee7b7">own the decision</text>
              <line x1="20" y1="280" x2="740" y2="280" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#hra1a)"/>
              <text x="380" y="296" font-size="11" fill="#9b99b8">more value, but more data, more care and more doubt</text>
            </g>
          </svg>
          <figcaption>Most HR teams start with descriptive analytics. Each step up needs better data and more careful thinking.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The four types, with examples</h3>
          <p>LedgerLite Pvt Ltd is a made-up accounting software company in Karnataka. It sells to small businesses in India and has 120 employees. Farhan is the HR manager. We use its made-up data for the year FY26 (1 April 2025 to 31 March 2026) in this course.</p>
          <table class="lc-table">
            <thead><tr><th>Type</th><th>Question</th><th>LedgerLite example</th><th>Typical tools</th></tr></thead>
            <tbody>
              <tr><td><strong>Descriptive</strong></td><td>What happened?</td><td>Headcount grew from 104 to 120. 40 people joined and 24 left.</td><td>Spreadsheet counts, HRMS reports</td></tr>
              <tr><td><strong>Diagnostic</strong></td><td>Why did it happen?</td><td>Customer Success lost 6 people. Its survey shows low scores for workload and pay.</td><td>Comparing groups, survey and exit data</td></tr>
              <tr><td><strong>Predictive</strong></td><td>What may happen next?</td><td>At this year's pace, Engineering may need about 11 hires next year just to replace leavers.</td><td>Trends, simple forecasts, risk flags</td></tr>
              <tr><td><strong>Prescriptive</strong></td><td>What should we do?</td><td>Test a better first 90 days for new support staff, then measure early leavers again.</td><td>Options, costs and trade-offs</td></tr>
            </tbody>
          </table>
          <p>An HRMS (HR management system) is software that stores employee records. Examples are Zoho People, Keka, greytHR, Darwinbox and Workday. Most of these tools have built-in reports for descriptive analytics.</p>
          <p>Predictions about people are never certain. A "risk of leaving" score is a guess based on past patterns. Use it to start a supportive talk, never to punish or label someone.</p>
        </div>
        <div class="lc-card">
          <h3>Good analytics starts with a clear question</h3>
          <p>Leaders often bring a worry, not a question. Your first job is to turn the worry into a question you can measure. A good question names a group, a time period and a number. It also links to a decision.</p>
          <table class="lc-table">
            <thead><tr><th>Vague worry</th><th>Clear question</th><th>Metric</th><th>Decision it supports</th></tr></thead>
            <tbody>
              <tr><td>"Too many people are leaving."</td><td>What was our attrition rate in FY26, by department?</td><td>Leavers ÷ average headcount × 100</td><td>Which team needs help first</td></tr>
              <tr><td>"Hiring is too slow."</td><td>How many days from application to accepted offer, by source?</td><td>Average time to hire</td><td>Which hiring sources to use more</td></tr>
              <tr><td>"New joiners don't stay."</td><td>What share of FY26 joiners left within 90 days?</td><td>Early attrition: 4 ÷ 40 = 10%</td><td>Whether to redesign onboarding</td></tr>
              <tr><td>"People seem unhappy."</td><td>Which teams have an eNPS below zero?</td><td>eNPS (explained in the survey lesson)</td><td>Where managers should hold listening sessions</td></tr>
            </tbody>
          </table>
          <p>Attrition (the share of employees who left in a period) and average headcount are explained fully later in this course.</p>
        </div>
        <div class="lc-card">
          <h3>How AI helps, and what you still do</h3>
          <p>An AI assistant such as Claude can help you plan questions, suggest metrics, write spreadsheet formulas and draft reports. It cannot see your HR system. It can also make maths mistakes and sound very sure. Compare these two prompts from Farhan.</p>
          <pre><code>Weak: Analyse our attrition and tell me why people leave.</code></pre>
          <p>The AI has no data and no context. It will guess common reasons, such as pay or managers, and present them as facts.</p>
          <pre><code>Better: I am the HR manager at a 120-person software company in Karnataka.
        Our leaders say "too many people are leaving". Facts from FY26
        (totals only, no names): start headcount 104, end 120, 24 leavers,
        19 of them resigned. One team, Customer Success, lost 6 of about
        15 people.
        Turn this worry into 5 clear analytics questions. For each one, give
        the type (descriptive, diagnostic, predictive or prescriptive), the
        metric and its formula, and the data I need. Do not guess the causes.</code></pre>
          <p>The better prompt gives a role, context and totals only. It asks for questions and formulas, not conclusions. You still check every formula, run the numbers in your spreadsheet and decide what matters.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: which type of analytics?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each LedgerLite task into the type of analytics it uses.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="desc" data-label="Descriptive"></div>
              <div data-sorter-target="bucket" data-bucket="diag" data-label="Diagnostic"></div>
              <div data-sorter-target="bucket" data-bucket="pred" data-label="Predictive"></div>
              <div data-sorter-target="bucket" data-bucket="pres" data-label="Prescriptive"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="desc" data-why="It reports what happened. It counts joiners and leavers by quarter.">Count joiners and leavers in each quarter of FY26</li>
              <li data-bucket="diag" data-why="It compares groups to find out why one team lost more people.">Compare exit reasons in Customer Success with other teams</li>
              <li data-bucket="pred" data-why="It uses past patterns to estimate the future. It is a guess, not a fact.">Estimate how many Engineering hires are needed in FY27</li>
              <li data-bucket="pres" data-why="It compares actions and their costs to decide what to do.">Choose between a pay review and a workload fix for support staff</li>
              <li data-bucket="desc" data-why="It shows the survey result as it is. It does not explain it.">Report the company eNPS of +17 from the January survey</li>
              <li data-bucket="diag" data-why="It looks for a reason: do early leavers share a hiring source?">Check if people who left within 90 days came from one hiring source</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to turn a real worry from your leaders into clear HR analytics questions. Use totals or made-up numbers only, never names.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an HR analytics coach. You help HR teams who do not write code. They use spreadsheets and an HRMS.

        Company: [LedgerLite Pvt Ltd, a 120-person software company in Karnataka].
        Worry from our leaders: [Customer Success keeps losing people, and new joiners leave fast].
        Facts we have (totals only): [FY26: 16 people in Customer Success at year end, 8 joined and 6 left during the year, 2 of them within 90 days. Company eNPS +17, Customer Success eNPS -23].

        Please:
        1. Turn the worry into 6 clear questions. Each must name a group, a time period and a number to measure.
        2. For each question, give a table row: Question | Type (descriptive, diagnostic, predictive or prescriptive) | Metric and formula | Data source (for example HRMS, ATS, survey, exit interviews) | Decision it supports.
        3. Say which 2 questions to answer first, and why.
        4. List 3 things we must not conclude from these facts alone.

        Rules: do not invent numbers or causes. Mark any guess as a guess. Use simple English.</pre>
            <ul class="ai-try-checks">
              <li>Each question names a group, a time period and something you can count.</li>
              <li>Formulas are correct, for example attrition uses average headcount, not start headcount.</li>
              <li>The AI does not state causes as facts. Guesses are marked.</li>
              <li>Every question links to a real decision your team can make.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> HR analytics starts with a clear question and ends with a decision made by people. Start with "what happened", check it well, and only then ask "why" and "what next".
        </div>
      HTML
      starter_code: nil
    },
    2 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-hr">HR & Recruitment</div>
          <h1 class="lc-title">Where AI Helps with HR Data</h1>
        </div>
        <p class="lc-lead">AI assistants can save you hours of spreadsheet work. They write formulas, plan data cleaning, group survey comments, suggest charts and draft reports. But they also make two dangerous mistakes. They can get the maths wrong while sounding sure. And people can paste private employee data into them. In this lesson you will learn a safe way to work: AI suggests the method, the spreadsheet does the maths, and you check the result.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 290" role="img" aria-label="A four-step flow: safe data goes in, AI suggests formulas and drafts, the spreadsheet calculates, and you check before anything is used. Below, two risk boxes: wrong maths, where AI divides 24 by 104 instead of 24 by 112, and privacy, where names, salaries or health notes are pasted into a tool.">
            <defs><marker id="hra2a" markerWidth="8" markerHeight="8" refX="7" refY="4" orient="auto"><path d="M0,0 L8,4 L0,8 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12.5" fill="#e2e0f0" text-anchor="middle">
              <text x="16" y="24" text-anchor="start" font-size="13" font-weight="700">A safe way to use AI with HR data</text>
              <rect x="10" y="40" width="165" height="70" rx="8" fill="#27274e" stroke="#10b981"/>
              <text x="92" y="64" font-weight="700">1. Safe input</text>
              <text x="92" y="84" font-size="11" fill="#9b99b8">totals, column names,</text>
              <text x="92" y="100" font-size="11" fill="#9b99b8">made-up rows</text>
              <rect x="200" y="40" width="165" height="70" rx="8" fill="#27274e" stroke="#8b5cf6"/>
              <text x="282" y="64" font-weight="700">2. AI suggests</text>
              <text x="282" y="84" font-size="11" fill="#9b99b8">formulas, steps,</text>
              <text x="282" y="100" font-size="11" fill="#9b99b8">chart ideas, drafts</text>
              <rect x="390" y="40" width="165" height="70" rx="8" fill="#27274e" stroke="#3b82f6"/>
              <text x="472" y="64" font-weight="700">3. Sheet calculates</text>
              <text x="472" y="84" font-size="11" fill="#9b99b8">on your full data,</text>
              <text x="472" y="100" font-size="11" fill="#9b99b8">inside company tools</text>
              <rect x="580" y="40" width="170" height="70" rx="8" fill="#27274e" stroke="#f59e0b"/>
              <text x="665" y="64" font-weight="700">4. You check</text>
              <text x="665" y="84" font-size="11" fill="#9b99b8">totals, definitions,</text>
              <text x="665" y="100" font-size="11" fill="#9b99b8">a small test by hand</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#hra2a)">
                <line x1="177" y1="75" x2="197" y2="75"/><line x1="367" y1="75" x2="387" y2="75"/><line x1="557" y1="75" x2="577" y2="75"/>
              </g>
              <text x="16" y="146" text-anchor="start" font-size="12" fill="#9b99b8">Two risks to watch</text>
              <rect x="10" y="158" width="362" height="118" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="191" y="182" font-weight="700" fill="#f9a8d4">Wrong maths</text>
              <text x="191" y="206" font-size="11.5">AI: "Attrition = 24 ÷ 104 = 23.1%"</text>
              <text x="191" y="228" font-size="11.5" fill="#6ee7b7">Correct: 24 ÷ 112 average = 21.4%</text>
              <text x="191" y="254" font-size="11" fill="#9b99b8">Fix: ask for the formula, run it yourself</text>
              <rect x="388" y="158" width="362" height="118" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="569" y="182" font-weight="700" fill="#f9a8d4">Privacy</text>
              <text x="569" y="206" font-size="11.5">Names, salaries, health notes</text>
              <text x="569" y="228" font-size="11.5">pasted into a public AI tool</text>
              <text x="569" y="254" font-size="11" fill="#9b99b8">Fix: totals or made-up rows only</text>
            </g>
          </svg>
          <figcaption>AI is good at the method. The spreadsheet is good at the maths. You are responsible for both.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Five jobs AI does well with HR data</h3>
          <table class="lc-table">
            <thead><tr><th>Job</th><th>Example for Farhan at LedgerLite</th><th>What you still check</th></tr></thead>
            <tbody>
              <tr><td><strong>Write formulas</strong></td><td>A COUNTIFS formula that counts voluntary leavers in one department in FY26</td><td>Run it on a small test where you know the answer</td></tr>
              <tr><td><strong>Plan data cleaning</strong></td><td>Steps to fix IDs like "ll1043" and department names like "Engg"</td><td>No rows are lost. Totals still match the HRMS.</td></tr>
              <tr><td><strong>Summarise text</strong></td><td>Group 52 anonymous survey comments into themes</td><td>Read a sample. Themes match real comments. No one can be identified.</td></tr>
              <tr><td><strong>Suggest charts</strong></td><td>Which chart best shows joiners and leavers by quarter</td><td>The chart shows the right numbers and does not mislead</td></tr>
              <tr><td><strong>Draft the words</strong></td><td>A first draft of the monthly people report for leaders</td><td>Every number in the text matches your sheet</td></tr>
            </tbody>
          </table>
          <p>Many HR tools, such as Zoho People, Keka, greytHR, Darwinbox and Workday, now include AI features too. Features change often. Check each tool's current help pages before you rely on one.</p>
        </div>
        <div class="lc-card">
          <h3>Let the spreadsheet do the maths</h3>
          <p>Language models predict words. They do not always calculate like a calculator. They can also pick the wrong definition. Here is a real type of mistake. Farhan types "Our start headcount was 104 and 24 people left. What is our attrition?" The AI answers 23.1%. It divided 24 by 104. The usual method divides by the <em>average</em> headcount: (104 + 120) ÷ 2 = 112. So attrition is 24 ÷ 112 = 21.4%.</p>
          <p>The fix is simple. Ask AI for a formula and an explanation. Then run the formula in your sheet. Compare with a quick check by hand.</p>
          <pre><code>Weak: How many voluntary leavers did Customer Success have last year?</code></pre>
          <p>The AI cannot see your data, so it may invent a number.</p>
          <pre><code>Better: My Google Sheet "Staff" has these columns:
        A Emp ID, B Department, C Join date, D Exit date (blank if still
        working), E Exit type (Voluntary or Involuntary).
        Dates are real dates. Rows 2 to 200.
        Write one formula that counts voluntary leavers in "Customer Success"
        with an exit date from 1 April 2025 to 31 March 2026.
        Explain each part in simple words. Then give me 5 made-up test rows
        and the answer the formula should give for them.</code></pre>
          <p>A good answer looks like this. It works in Google Sheets and Excel:</p>
          <pre><code>=COUNTIFS(B2:B200,"Customer Success", E2:E200,"Voluntary",
          D2:D200,"&gt;="&amp;DATE(2025,4,1), D2:D200,"&lt;="&amp;DATE(2026,3,31))</code></pre>
          <p>On LedgerLite's made-up data, this gives 5. You then check: 5 voluntary plus 1 involuntary equals the 6 Customer Success leavers in the HRMS report.</p>
        </div>
        <div class="lc-card">
          <h3>What you may and may not paste</h3>
          <table class="lc-table">
            <thead><tr><th>Usually safe to share</th><th>Never paste into a public AI tool</th></tr></thead>
            <tbody>
              <tr><td>Column names and data formats</td><td>Names with employee IDs, phone numbers or addresses</td></tr>
              <tr><td>Totals, such as "24 leavers, 6 in Customer Success"</td><td>Individual salaries, bank details or PAN numbers</td></tr>
              <tr><td>Made-up sample rows</td><td>Health, disability or leave-reason notes</td></tr>
              <tr><td>Anonymous survey comments with details removed, in an approved tool</td><td>Disciplinary, POSH or grievance case details</td></tr>
            </tbody>
          </table>
          <p>Even totals can reveal a person when the group is small. "The one woman in Finance left" names her. Use only AI tools your company has approved for work data. In India, the Digital Personal Data Protection (DPDP) Act 2023 covers employee and candidate data. This is general information, not legal advice. Check with your HR legal counsel.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: catch the mistake</h3>
          <p>Step through Farhan's session with an AI assistant. Watch where he checks the AI's work.</p>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Farhan's prompt">"LedgerLite had 104 employees on 1 April 2025 and 120 on 31 March 2026. 40 joined and 24 left. What was our attrition rate for FY26?"</li>
              <li data-kind="answer" data-label="AI reply">"Your attrition rate was 23.1% (24 ÷ 104). This is above the typical range for software companies."</li>
              <li data-kind="warn" data-label="Two problems">The AI divided by the start headcount, not the average. It also quoted a "typical range" with no source. Farhan cannot use either.</li>
              <li data-kind="user" data-label="Follow-up">"Use average headcount: (start + end) ÷ 2. Show the formula for my sheet. Do not compare with other companies."</li>
              <li data-kind="tool" data-label="Google Sheets">Farhan types <code>=24/((104+120)/2)</code> and formats the cell as a percentage.</li>
              <li data-kind="result" data-label="Sheet result">21.4%</li>
              <li data-kind="check" data-label="Sense check">104 + 40 − 24 = 120. The totals match the HRMS. Farhan writes the method under the number in his report.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to write a spreadsheet formula for an HR count you need. Then test it on made-up rows before you use it on real data.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a patient spreadsheet coach for HR staff who do not write code.

        My tool: [Google Sheets].
        My sheet is called [Staff]. Columns:
        [A Emp ID, B Department, C Level (L1 to L5), D Join date, E Exit date (blank if still working), F Exit type (Voluntary or Involuntary)].
        Dates are real dates, not text. Data is in rows 2 to [300].

        What I want to count: [voluntary leavers in Engineering with an exit date between 1 April 2025 and 31 March 2026].

        Please:
        1. Write one formula for this.
        2. Explain each part in simple words.
        3. Make 8 made-up test rows (IDs like LL-1001, no names) and tell me the exact answer the formula should give on them. Include tricky rows: a blank exit date, an exit on the first and last day, and a different department.
        4. List 3 common mistakes with this kind of formula and how to spot them.

        Do not guess any real numbers about my company.</pre>
            <ul class="ai-try-checks">
              <li>Count the test rows by hand. Your count must match the AI's stated answer.</li>
              <li>The date range includes both the first and the last day.</li>
              <li>The formula works in your spreadsheet tool (Excel and Google Sheets can differ).</li>
              <li>The test rows use made-up IDs only, with no real names.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Ask AI for the method, not the answer. Run the maths in your spreadsheet, test it on a small example you can count by hand, and keep private employee data out of AI tools.
        </div>
      HTML
      starter_code: nil
    },
    3 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-hr">HR & Recruitment</div>
          <h1 class="lc-title">HR Data Sources and Privacy</h1>
        </div>
        <p class="lc-lead">HR data lives in many places: the HRMS, payroll, the hiring system, survey tools and exit interview notes. Much of it is personal and some of it is very sensitive. In this lesson you will learn what each source holds and who owns it. You will learn to take only the data you need, to hide who people are, and the basic ideas of India's data protection law. Good privacy habits protect your employees and keep their trust in HR.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="Five data sources on the left: HRMS, payroll, applicant tracking system, survey tool and exit interviews. Arrows lead into a privacy filter that takes only needed columns, replaces names with codes, uses bands and groups small numbers. The filter leads to an analysis file, and only totals or made-up rows go to an approved AI tool.">
            <defs><marker id="hra3a" markerWidth="8" markerHeight="8" refX="7" refY="4" orient="auto"><path d="M0,0 L8,4 L0,8 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12.5" fill="#e2e0f0" text-anchor="middle">
              <text x="16" y="22" text-anchor="start" font-size="12" fill="#9b99b8">Sources (sensitivity)</text>
              <rect x="10" y="34" width="190" height="40" rx="8" fill="#27274e" stroke="#3b82f6"/><text x="105" y="59">HRMS (medium)</text>
              <rect x="10" y="84" width="190" height="40" rx="8" fill="#27274e" stroke="#ec4899"/><text x="105" y="109">Payroll (high)</text>
              <rect x="10" y="134" width="190" height="40" rx="8" fill="#27274e" stroke="#3b82f6"/><text x="105" y="159">ATS: hiring (medium)</text>
              <rect x="10" y="184" width="190" height="40" rx="8" fill="#27274e" stroke="#f59e0b"/><text x="105" y="209">Survey tool (high)</text>
              <rect x="10" y="234" width="190" height="40" rx="8" fill="#27274e" stroke="#ec4899"/><text x="105" y="259">Exit interviews (high)</text>
              <g stroke="#9b99b8" stroke-width="1.4" marker-end="url(#hra3a)" fill="none">
                <line x1="202" y1="54" x2="262" y2="120"/><line x1="202" y1="104" x2="262" y2="135"/><line x1="202" y1="154" x2="262" y2="154"/><line x1="202" y1="204" x2="262" y2="173"/><line x1="202" y1="254" x2="262" y2="188"/>
              </g>
              <rect x="266" y="70" width="210" height="170" rx="12" fill="#1f1f44" stroke="#10b981" stroke-width="2"/>
              <text x="371" y="96" font-weight="700" fill="#6ee7b7">Privacy filter</text>
              <text x="371" y="124" font-size="11.5">Only the columns you need</text>
              <text x="371" y="148" font-size="11.5">Names → codes</text>
              <text x="371" y="172" font-size="11.5">Exact pay → pay band</text>
              <text x="371" y="196" font-size="11.5">Groups under 5 → combine</text>
              <text x="371" y="222" font-size="11" fill="#9b99b8">then check with the data owner</text>
              <line x1="478" y1="155" x2="528" y2="155" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#hra3a)"/>
              <rect x="532" y="115" width="218" height="80" rx="10" fill="#27274e" stroke="#8b5cf6"/>
              <text x="641" y="145" font-weight="700">Analysis file</text>
              <text x="641" y="167" font-size="11" fill="#9b99b8">secure folder, few people,</text>
              <text x="641" y="183" font-size="11" fill="#9b99b8">delete when done</text>
              <line x1="641" y1="197" x2="641" y2="227" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#hra3a)"/>
              <rect x="532" y="231" width="218" height="56" rx="10" fill="#27274e" stroke="#f59e0b"/>
              <text x="641" y="255" font-weight="700">Approved AI tool</text>
              <text x="641" y="275" font-size="11" fill="#9b99b8">totals or made-up rows only</text>
            </g>
          </svg>
          <figcaption>Data passes through a privacy filter before anyone analyses it. Only the safest form of the data goes into an AI tool.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Where HR data lives</h3>
          <table class="lc-table">
            <thead><tr><th>Source</th><th>What it holds</th><th>Useful fields for analytics</th><th>Usual owner</th></tr></thead>
            <tbody>
              <tr><td><strong>HRMS</strong> (Zoho People, Keka, greytHR, Darwinbox, Workday)</td><td>The employee master record</td><td>Employee ID, department, level, manager ID, join date, exit date, exit type</td><td>HR operations</td></tr>
              <tr><td><strong>Payroll</strong></td><td>Pay and deductions</td><td>CTC (cost to company: total yearly pay cost), pay changes, bonus</td><td>Payroll or finance</td></tr>
              <tr><td><strong>ATS</strong> (applicant tracking system)</td><td>Candidates and hiring steps</td><td>Source, applied date, offer date, offer result, requisition ID</td><td>Talent acquisition</td></tr>
              <tr><td><strong>Survey tool</strong></td><td>Engagement and pulse survey answers</td><td>Scores and comments, shown for groups only</td><td>HR, often with an outside survey vendor</td></tr>
              <tr><td><strong>Exit interviews</strong></td><td>Reasons people give for leaving</td><td>Main reason, would they return, comments</td><td>HR business partner</td></tr>
              <tr><td><strong>Learning system</strong></td><td>Training records</td><td>Courses finished, hours, certificates</td><td>Learning and development</td></tr>
            </tbody>
          </table>
          <p>Each source uses the employee ID in its own way. The cleaning lesson shows how to join them. Before you ask for any data, write down your question. The question decides which data you need.</p>
        </div>
        <div class="lc-card">
          <h3>Take less, and hide who people are</h3>
          <p><strong>Data minimisation</strong> means you collect and use only the data your question needs. Farhan's question is: "Why did Customer Success lose 6 of its people in FY26?" He does not need names, phone numbers, dates of birth or bank details. He needs department, level, join date, exit date, exit type, exit reason, pay band and manager code.</p>
          <table class="lc-table">
            <thead><tr><th>Raw HRMS export (made up)</th><th>After the privacy filter</th><th>Method</th></tr></thead>
            <tbody>
              <tr><td>Full name (a real name in the export)</td><td>(column removed)</td><td>Remove what you do not need</td></tr>
              <tr><td>Emp ID: LL-1188</td><td>P-037</td><td>Pseudonymise: replace with a code. Keep the key file locked away.</td></tr>
              <tr><td>CTC: ₹6,40,000</td><td>L1 band, compa-ratio 0.98</td><td>Band or ratio instead of exact pay</td></tr>
              <tr><td>Date of birth: 12/08/2001</td><td>Age band 20–24</td><td>Use bands, not exact values</td></tr>
              <tr><td>Exit note: "Left for health reasons"</td><td>Exit reason: Personal</td><td>Use broad groups for sensitive reasons</td></tr>
            </tbody>
          </table>
          <p><strong>Pseudonymised</strong> data uses codes, but someone with the key can link it back to people. It is still personal data, so protect it. <strong>Anonymised</strong> data cannot be linked back to anyone. True anonymity is hard in small teams. If a group has fewer than 5 people, combine it with another group. For example, report Finance, HR &amp; Admin (9 people) together, not split by gender.</p>
        </div>
        <div class="lc-card">
          <h3>India's data protection law: the basics</h3>
          <p>The Digital Personal Data Protection (DPDP) Act 2023 and the DPDP Rules 2025 cover digital personal data, including employee and candidate data. Here are the main ideas in simple words.</p>
          <ul class="lc-list">
            <li><strong>Clear purpose.</strong> Use personal data for a clear, lawful purpose. Tell people what you collect and why.</li>
            <li><strong>Employment uses.</strong> The Act allows some processing for employment purposes without consent. This is called a "legitimate use". Your other duties, such as security and deletion, still apply.</li>
            <li><strong>Candidates are different.</strong> Candidates are not yet employees. Give them a clear notice and follow your legal team's advice on consent.</li>
            <li><strong>Security and deletion.</strong> Protect the data with sensible safeguards. Delete it when you no longer need it.</li>
            <li><strong>Breaches.</strong> If data leaks, the law requires you to report it and inform the people affected.</li>
            <li><strong>Rights.</strong> People can ask to see and correct their data, and can raise complaints.</li>
          </ul>
          <p>The Rules were notified in November 2025. Many duties start in phases after that date. Other countries have their own laws, such as the GDPR in the EU. This is general information, not legal advice. Check the details with your HR legal counsel before you start a new analytics project.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: keep, change or leave out?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Farhan is studying why people leave Customer Success. Sort each column from the raw export.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="keep" data-label="Keep as it is"></div>
              <div data-sorter-target="bucket" data-bucket="change" data-label="Keep, but change it"></div>
              <div data-sorter-target="bucket" data-bucket="drop" data-label="Leave out"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="keep" data-why="Exit dates are needed to count leavers and to measure tenure.">Exit date</li>
              <li data-bucket="keep" data-why="Needed to compare teams. It is not personal on its own.">Department</li>
              <li data-bucket="change" data-why="Replace the ID with a code (pseudonymise). Keep the key file locked away.">Employee ID</li>
              <li data-bucket="change" data-why="Exact pay is very sensitive. A pay band or compa-ratio is enough to compare.">Annual CTC in rupees</li>
              <li data-bucket="drop" data-why="Names are not needed to find patterns. Leave them out.">Full name</li>
              <li data-bucket="drop" data-why="Health details are highly sensitive and not needed. Use a broad reason such as Personal.">Medical notes on leave records</li>
              <li data-bucket="drop" data-why="Contact details have nothing to do with the question.">Personal mobile number</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to plan a privacy-safe data request for one HR question. You will get a column list, protection steps and a short note for employees.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an HR analytics lead who takes employee privacy seriously. You work in India.

        Company: [LedgerLite Pvt Ltd, a 120-person software company in Karnataka].
        Our question: [Why did Customer Success lose 6 of its about 15 people in FY26?].
        Our systems: [Keka as the HRMS, a separate payroll tool, an ATS for hiring, an anonymous survey tool, exit interview notes in a shared folder].

        Please write a data request plan:
        1. A table: Column | Source | Why we need it | Keep, change (how) or leave out.
        2. Steps to pseudonymise the file, and where to keep the key.
        3. Rules for small groups (fewer than 5 people) in results.
        4. Who may see the file, where to store it and when to delete it.
        5. A 100-word note to employees that explains what we analyse and why, in simple English.
        6. Questions I must ask our legal counsel under India's DPDP Act 2023. Do not state legal rules as facts.

        Keep only the data the question needs.</pre>
            <ul class="ai-try-checks">
              <li>No column is kept "just in case". Each one has a reason.</li>
              <li>Names, contact details and health data are left out.</li>
              <li>Pay is banded or turned into a ratio, not kept as exact rupees.</li>
              <li>Legal points are listed as questions for counsel, not as final rules.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Start from the question, take only the data it needs, and hide who people are before you analyse. Employees trust HR with their data. Every analysis should keep that trust.
        </div>
      HTML
      starter_code: nil
    },
    4 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-hr">HR & Recruitment</div>
          <h1 class="lc-title">Cleaning and Joining HR Data</h1>
        </div>
        <p class="lc-lead">HR exports are almost never clean. The same employee ID is typed in three ways. One department has four names. Dates come as text. If you skip cleaning, every metric you calculate will be wrong. In this lesson you will fix IDs, dates, department names and duplicates with simple spreadsheet formulas. Then you will join HRMS data with hiring data using one lookup formula. AI helps you plan the steps and write the formulas. You keep the full data in your own spreadsheet.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 290" role="img" aria-label="On the left, a messy HRMS export with IDs in different formats and a separate ATS hiring export. In the middle, five cleaning steps: fix IDs, remove duplicates, map departments, fix dates, and join with XLOOKUP. On the right, one clean joined table with a check that there are 120 active rows.">
            <defs><marker id="hra4a" markerWidth="8" markerHeight="8" refX="7" refY="4" orient="auto"><path d="M0,0 L8,4 L0,8 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12.5" fill="#e2e0f0" text-anchor="middle">
              <rect x="10" y="30" width="215" height="130" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="117" y="54" font-weight="700" fill="#f9a8d4">HRMS export (messy)</text>
              <g font-size="11" fill="#9b99b8">
                <text x="117" y="80">ll1043 · Engg · 14/06/2022</text>
                <text x="117" y="102">LL-1043 · Engineering</text>
                <text x="117" y="124">1201 · Cust. Success</text>
                <text x="117" y="146">LL-1150 · 2024-08-19</text>
              </g>
              <rect x="10" y="180" width="215" height="90" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="117" y="204" font-weight="700" fill="#93c5fd">ATS export (hiring)</text>
              <g font-size="11" fill="#9b99b8">
                <text x="117" y="228">LL-1188 · Job board</text>
                <text x="117" y="250">LL-1201 · Referral</text>
              </g>
              <rect x="275" y="40" width="200" height="36" rx="8" fill="#27274e" stroke="#8b5cf6"/><text x="375" y="63">1. Fix IDs</text>
              <rect x="275" y="88" width="200" height="36" rx="8" fill="#27274e" stroke="#8b5cf6"/><text x="375" y="111">2. Remove duplicates</text>
              <rect x="275" y="136" width="200" height="36" rx="8" fill="#27274e" stroke="#8b5cf6"/><text x="375" y="159">3. Map departments</text>
              <rect x="275" y="184" width="200" height="36" rx="8" fill="#27274e" stroke="#8b5cf6"/><text x="375" y="207">4. Fix dates</text>
              <rect x="275" y="232" width="200" height="36" rx="8" fill="#27274e" stroke="#f59e0b"/><text x="375" y="255">5. Join with XLOOKUP</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#hra4a)" fill="none">
                <line x1="227" y1="80" x2="271" y2="60"/>
                <line x1="227" y1="235" x2="271" y2="248"/>
                <line x1="375" y1="77" x2="375" y2="85"/><line x1="375" y1="125" x2="375" y2="133"/><line x1="375" y1="173" x2="375" y2="181"/><line x1="375" y1="221" x2="375" y2="229"/>
                <path d="M477,250 L500,250 L500,150 L521,150"/>
              </g>
              <rect x="525" y="40" width="225" height="228" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="637" y="64" font-weight="700" fill="#6ee7b7">Clean, joined table</text>
              <g font-size="11">
                <text x="637" y="92" fill="#9b99b8">ID · Department · Source</text>
                <line x1="540" y1="100" x2="735" y2="100" stroke="#4b4a78"/>
                <text x="637" y="122">LL-1043 · Engineering · Not found</text>
                <text x="637" y="146">LL-1150 · QA · Not found</text>
                <text x="637" y="170">LL-1188 · Cust. Success · Job board</text>
                <text x="637" y="194">LL-1201 · Cust. Success · Referral</text>
              </g>
              <text x="637" y="232" font-size="11.5" fill="#6ee7b7">Check: 120 active rows</text>
              <text x="637" y="252" font-size="11" fill="#9b99b8">matches the HRMS report</text>
            </g>
          </svg>
          <figcaption>Clean each column first, then join the two exports on one clean employee ID. Finish with a check against a total you trust.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Common problems in HR exports</h3>
          <p>Here are made-up rows from LedgerLite's HRMS export. They show the problems you will meet most often.</p>
          <table class="lc-table">
            <thead><tr><th>Problem</th><th>Example</th><th>Fix</th></tr></thead>
            <tbody>
              <tr><td>One ID, many formats</td><td><code>LL-1043</code>, <code>ll1043</code>, <code>1201</code></td><td>Build one clean ID column</td></tr>
              <tr><td>Duplicate rows</td><td>LL-1043 appears twice after the ID fix</td><td>Keep one row. Check which one is correct.</td></tr>
              <tr><td>Many names for one department</td><td>"Engg", "Tech", "Engineering " (with a space at the end)</td><td>A mapping table of old name → official name</td></tr>
              <tr><td>Dates stored as text, or mixed formats</td><td><code>14/06/2022</code> and <code>2024-08-19</code></td><td>Turn them into real dates</td></tr>
              <tr><td>Blanks with a meaning</td><td>A blank exit date means "still working"</td><td>Write the rule down for everyone</td></tr>
              <tr><td>Fields that disagree</td><td>Status "Active", but an exit date is filled in</td><td>Ask the HRMS owner. Do not guess.</td></tr>
            </tbody>
          </table>
          <p>Always keep the raw export untouched in its own tab. Do all cleaning in new columns. Then you can always go back and check.</p>
        </div>
        <div class="lc-card">
          <h3>Formulas for each fix</h3>
          <p>These formulas work in both Excel and Google Sheets. In the raw tab, column A is the Emp ID, B is the department and D is the join date.</p>
          <pre><code>Clean ID (assumes every ID has 4 digits):
        ="LL-"&amp;RIGHT(SUBSTITUTE(UPPER(TRIM(A2)),"-",""),4)

        Flag duplicates (G is the clean ID column):
        =COUNTIF($G$2:$G$300,G2)&gt;1

        Official department name (DeptMap tab: old name in A, official in B):
        =XLOOKUP(TRIM(B2),DeptMap!A:A,DeptMap!B:B,"CHECK")

        Text date dd/mm/yyyy into a real date:
        =IF(ISNUMBER(D2),D2,DATE(VALUE(RIGHT(D2,4)),VALUE(MID(D2,4,2)),VALUE(LEFT(D2,2))))</code></pre>
          <table class="lc-table">
            <thead><tr><th>Raw value</th><th>Clean value</th><th>What happened</th></tr></thead>
            <tbody>
              <tr><td><code>ll1043</code></td><td><code>LL-1043</code></td><td>Upper case, hyphen removed, last 4 digits kept, "LL-" added</td></tr>
              <tr><td><code>1201</code></td><td><code>LL-1201</code></td><td>"LL-" added</td></tr>
              <tr><td><code>Engineering </code> (space at end)</td><td><code>Engineering</code></td><td>TRIM removed the space, then the mapping table matched it</td></tr>
              <tr><td><code>Tech</code></td><td><code>Engineering</code></td><td>Found in the mapping table</td></tr>
              <tr><td><code>14/06/2022</code> (text)</td><td>14 June 2022 (a real date)</td><td>Day, month and year taken from the text</td></tr>
            </tbody>
          </table>
          <p>Watch the edge cases. The date formula only works for text in exactly dd/mm/yyyy form. A row like <code>2024-08-19</code> gives a wrong result or an error, so fix such rows by hand and note them. "CHECK" means the department is missing from your mapping table. Decide the right name with the team, then add it. For the duplicate LL-1043, look at both rows. Keep the one that matches the HRMS screen.</p>
        </div>
        <div class="lc-card">
          <h3>Join HRMS and hiring data</h3>
          <p>Farhan wants the hiring source of every employee next to their HRMS row. The ATS tab has the Emp ID in column B and the source in column C. In the clean HRMS tab, he adds:</p>
          <pre><code>=XLOOKUP(G2,ATS!B:B,ATS!C:C,"Not found")</code></pre>
          <p>Then he checks the join:</p>
          <ul class="lc-list">
            <li><strong>Row count.</strong> The HRMS tab has the same number of rows before and after. A lookup must never add or remove rows.</li>
            <li><strong>"Not found" rows.</strong> <code>=COUNTIF(K2:K300,"Not found")</code> counts them. People hired before the ATS was used will show "Not found". That is expected. But all 40 FY26 joiners must be found.</li>
            <li><strong>A total you trust.</strong> Active rows in the clean file must equal the HRMS headcount report: 120.</li>
          </ul>
          <p>AI can plan this for you. Do not paste the full export. Give it the column names and a few made-up rows instead.</p>
          <pre><code>Weak: [pastes 130 real rows] Clean this file.

        Better: My HRMS export has columns: Emp ID, Department, Level, Join date,
        Exit date, Status. Here are 6 made-up rows that show the problems:
        [rows]. Give me a step-by-step cleaning plan for Google Sheets, one
        formula per step, and a list of checks to run after each step.</code></pre>
        </div>
        <div class="lc-card">
          <h3>Activity: put the cleaning steps in order</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put Farhan's cleaning steps in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Save the raw HRMS export in its own tab and never edit it</li>
              <li data-order="2">Build one clean Emp ID column with TRIM, UPPER and SUBSTITUTE</li>
              <li data-order="3">Use the clean IDs to find and remove duplicate rows</li>
              <li data-order="4">Fix department names with a mapping table, and turn text dates into real dates</li>
              <li data-order="5">Join the hiring source from the ATS tab with XLOOKUP on the clean ID</li>
              <li data-order="6">Check: row count unchanged, "Not found" rows explained, 120 active rows</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Give AI some made-up messy rows and ask for a cleaning plan with formulas. Then try the formulas in your own sheet.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a spreadsheet coach for HR teams. I use [Google Sheets].

        Here are made-up rows from our HRMS export. Columns: Emp ID | Department | Level | Join date | Exit date | Status
        ll1043 | Engg | L3 | 14/06/2022 | | Active
        LL-1043 | Engineering | L3 | 14/06/2022 | | Active
        LL-1188 | Customer Success | L1 | 02/07/2025 | 25/09/2025 | Exited
        1201 | Cust. Success | L1 | 05/01/2026 | | Active
        LL-1117 | Engineering  | L2 | 11/03/2024 | 30/11/2025 | Exited
        LL-1150 | QA | L2 | 2024-08-19 | | Active
        LL-1209 | Tech | L1 | 20/01/2026 | | Active

        Official departments: [Engineering, Product &amp; Design, QA, Customer Success, Sales &amp; Marketing, Finance, HR &amp; Admin].

        Please:
        1. List every problem you see, row by row.
        2. Give a cleaning plan in order, with one formula per step and what it does.
        3. Show the cleaned table.
        4. Calculate days from join to exit for each leaver, and say who left within 90 days.
        5. List the questions I must ask our HRMS owner, instead of guessing.</pre>
            <ul class="ai-try-checks">
              <li>The two LL-1043 rows are treated as one person, not two.</li>
              <li>"Engg" and "Tech" map to Engineering. The trailing space is removed.</li>
              <li>LL-1188 worked 85 days, so it is an early leaver. Check this with your own date formula.</li>
              <li>The 2024-08-19 date is flagged or handled on its own.</li>
              <li>Unclear rows become questions for the data owner, not guesses.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Clean data is the base of every HR metric. Keep the raw export safe, fix one problem at a time in new columns, and check your totals against a number you trust after every step.
        </div>
      HTML
      starter_code: nil
    },
    5 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-hr">HR & Recruitment</div>
          <h1 class="lc-title">Headcount and Workforce Composition</h1>
        </div>
        <p class="lc-lead">Headcount is the first number every leader asks for: "How many people do we have?" It sounds easy, but teams often count in different ways and get different answers. In this lesson you will learn clear definitions for headcount, FTE, joiners and leavers. You will build a headcount bridge that always adds up. You will also describe your workforce by team, level and gender, safely and fairly. Almost every other HR metric uses these numbers, so they must be right.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 305" role="img" aria-label="A headcount bridge for LedgerLite in FY26: 104 employees at the start, plus 40 joiners, minus 24 leavers, gives 120 at the end. On the right, end headcount by team: Engineering 56, Product 12, QA 13, Customer Success 16, Sales and Marketing 14, Finance, HR and Admin 9. Below: FTE 118, 5 contractors not in headcount, 6 open positions.">
            <g font-family="inherit" font-size="12.5" fill="#e2e0f0" text-anchor="middle">
              <text x="16" y="22" text-anchor="start" font-size="13" font-weight="700">Headcount bridge, FY26</text>
              <line x1="25" y1="250" x2="470" y2="250" stroke="#4b4a78"/>
              <rect x="40" y="104.4" width="80" height="145.6" rx="4" fill="#3b82f6"/>
              <text x="80" y="97" font-weight="700">104</text>
              <rect x="150" y="48.4" width="80" height="56" rx="4" fill="#10b981"/>
              <text x="190" y="41" font-weight="700" fill="#6ee7b7">+40</text>
              <rect x="260" y="48.4" width="80" height="33.6" rx="4" fill="#ec4899"/>
              <text x="300" y="100" font-weight="700" fill="#f9a8d4">−24</text>
              <rect x="370" y="82" width="80" height="168" rx="4" fill="#8b5cf6"/>
              <text x="410" y="75" font-weight="700">120</text>
              <g stroke="#9b99b8" stroke-width="1" stroke-dasharray="4 3">
                <line x1="120" y1="104.4" x2="150" y2="104.4"/><line x1="230" y1="48.4" x2="260" y2="48.4"/><line x1="340" y1="82" x2="370" y2="82"/>
              </g>
              <g font-size="11" fill="#9b99b8">
                <text x="80" y="268">Start 1 Apr 2025</text><text x="190" y="268">Joiners</text>
                <text x="300" y="268">Leavers</text><text x="410" y="268">End 31 Mar 2026</text>
              </g>
              <text x="245" y="294" font-weight="700" fill="#c4b5fd">104 + 40 − 24 = 120</text>
              <line x1="505" y1="15" x2="505" y2="290" stroke="#4b4a78"/>
              <text x="530" y="22" text-anchor="start" font-size="13" font-weight="700">End headcount by team</text>
              <g font-size="11" text-anchor="start">
                <text x="530" y="53">Engineering</text><text x="530" y="81">Product &amp; Design</text><text x="530" y="109">QA</text>
                <text x="530" y="137">Cust. Success</text><text x="530" y="165">Sales &amp; Mktg</text><text x="530" y="193">Fin, HR, Admin</text>
              </g>
              <g font-size="11" text-anchor="end">
                <text x="656" y="53">56</text><text x="656" y="81">12</text><text x="656" y="109">13</text>
                <text x="656" y="137">16</text><text x="656" y="165">14</text><text x="656" y="193">9</text>
              </g>
              <g fill="#22d3ee">
                <rect x="662" y="42" width="84" height="16" rx="3"/><rect x="662" y="70" width="18" height="16" rx="3"/><rect x="662" y="98" width="19.5" height="16" rx="3"/>
                <rect x="662" y="126" width="24" height="16" rx="3"/><rect x="662" y="154" width="21" height="16" rx="3"/><rect x="662" y="182" width="13.5" height="16" rx="3"/>
              </g>
              <g font-size="11" text-anchor="start" fill="#9b99b8">
                <text x="530" y="232">FTE: 118 (4 part-time at 0.5)</text>
                <text x="530" y="254">Contractors: 5, not in headcount</text>
                <text x="530" y="276">Open positions: 6</text>
              </g>
            </g>
          </svg>
          <figcaption>The bridge must always add up: start plus joiners minus leavers equals end. The same rule holds for every team.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Key terms, with LedgerLite's FY26 numbers</h3>
          <table class="lc-table">
            <thead><tr><th>Term</th><th>Meaning</th><th>LedgerLite FY26 (made up)</th></tr></thead>
            <tbody>
              <tr><td><strong>Headcount</strong></td><td>Employees on the company payroll on a given date, full-time and part-time</td><td>104 at the start, 120 at the end</td></tr>
              <tr><td><strong>FTE</strong> (full-time equivalent)</td><td>Counts staff by working time. A half-time employee counts as 0.5.</td><td>116 full-time + 4 × 0.5 = 118</td></tr>
              <tr><td><strong>Joiners</strong></td><td>Employees who started during the period</td><td>40</td></tr>
              <tr><td><strong>Leavers</strong></td><td>Employees whose employment ended during the period</td><td>24</td></tr>
              <tr><td><strong>Net change</strong></td><td>Joiners minus leavers</td><td>+16, so growth is 16 ÷ 104 = 15.4%</td></tr>
              <tr><td><strong>Contractors</strong></td><td>People who work for you but are not on your payroll. Track them separately.</td><td>5</td></tr>
              <tr><td><strong>Open positions</strong></td><td>Approved roles that are not filled yet</td><td>6</td></tr>
            </tbody>
          </table>
          <p>Write your counting rule down, and use it every month. LedgerLite's rule: a person counts on a date if they joined on or before it and had not left by the end of that day. So someone whose last day is 31 March 2026 is a March leaver. They are not in the end headcount.</p>
        </div>
        <div class="lc-card">
          <h3>Count it by team, with formulas</h3>
          <table class="lc-table">
            <thead><tr><th>Department</th><th>Start</th><th>Joiners</th><th>Leavers</th><th>End</th><th>Growth</th><th>Share of end</th></tr></thead>
            <tbody>
              <tr><td>Engineering</td><td>48</td><td>18</td><td>10</td><td>56</td><td>16.7%</td><td>46.7%</td></tr>
              <tr><td>Product &amp; Design</td><td>10</td><td>4</td><td>2</td><td>12</td><td>20.0%</td><td>10.0%</td></tr>
              <tr><td>QA</td><td>12</td><td>4</td><td>3</td><td>13</td><td>8.3%</td><td>10.8%</td></tr>
              <tr><td>Customer Success</td><td>14</td><td>8</td><td>6</td><td>16</td><td>14.3%</td><td>13.3%</td></tr>
              <tr><td>Sales &amp; Marketing</td><td>12</td><td>4</td><td>2</td><td>14</td><td>16.7%</td><td>11.7%</td></tr>
              <tr><td>Finance, HR &amp; Admin</td><td>8</td><td>2</td><td>1</td><td>9</td><td>12.5%</td><td>7.5%</td></tr>
              <tr><td><strong>Total</strong></td><td><strong>104</strong></td><td><strong>40</strong></td><td><strong>24</strong></td><td><strong>120</strong></td><td><strong>15.4%</strong></td><td><strong>100.0%</strong></td></tr>
            </tbody>
          </table>
          <p>Growth is (end − start) ÷ start. Share of end is the team's end headcount ÷ 120. Look at Customer Success: it hired 8 people but grew by only 2. It needed 8 hires to replace 6 leavers and add 2. That is a question for the attrition lesson.</p>
          <p>In a clean staff list (C = join date, D = exit date, blank if still working), these formulas count the numbers:</p>
          <pre><code>Headcount on 31 March 2026:
        =COUNTIFS(C2:C300,"&lt;="&amp;DATE(2026,3,31), D2:D300,"")
         +COUNTIFS(C2:C300,"&lt;="&amp;DATE(2026,3,31), D2:D300,"&gt;"&amp;DATE(2026,3,31))

        Joiners in FY26:
        =COUNTIFS(C2:C300,"&gt;="&amp;DATE(2025,4,1), C2:C300,"&lt;="&amp;DATE(2026,3,31))

        Leavers in FY26:
        =COUNTIFS(D2:D300,"&gt;="&amp;DATE(2025,4,1), D2:D300,"&lt;="&amp;DATE(2026,3,31))</code></pre>
          <p>Type the headcount formula on one line in your sheet. For the start headcount, use DATE(2025,3,31). To count one team, add a department condition, such as <code>B2:B300,"Engineering"</code>, to each COUNTIFS. Then check two things: the teams add up to 120, and the bridge works for every team.</p>
        </div>
        <div class="lc-card">
          <h3>Workforce composition: describe carefully</h3>
          <p><strong>Composition</strong> means how your workforce is made up: by team, level, tenure, location or gender. Here is LedgerLite's mix by level on 31 March 2026.</p>
          <table class="lc-table">
            <thead><tr><th>Level</th><th>L1 Associate</th><th>L2 Engineer / Executive</th><th>L3 Senior</th><th>L4 Lead</th><th>L5 Manager</th><th>Total</th></tr></thead>
            <tbody>
              <tr><td>Employees</td><td>22</td><td>30</td><td>38</td><td>20</td><td>10</td><td>120</td></tr>
              <tr><td>Share</td><td>18.3%</td><td>25.0%</td><td>31.7%</td><td>16.7%</td><td>8.3%</td><td>100.0%</td></tr>
            </tbody>
          </table>
          <p>Women are 44 of 120 employees (36.7%). They are 36 of 90 at L1 to L3 (40.0%), but only 8 of 30 at L4 and L5 (26.7%). This is a fact to explore, not a finding about causes. Next, you would look at promotion rates and hiring for senior roles.</p>
          <ul class="lc-list">
            <li><strong>Protect small groups.</strong> Finance, HR &amp; Admin has 9 people. Do not split it by gender or age in a report. Combine it with another team or show company totals.</li>
            <li><strong>Use self-reported data.</strong> Gender and other personal details should come from what employees chose to share. Never guess them from names or photos.</li>
            <li><strong>Share totals with AI, not lists.</strong> Give AI tables like the ones above. Never paste a staff list with names, gender and salary.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Activity: Farhan's headcount report</h3>
          <p>Step through how Farhan builds the year-end headcount with AI and a spreadsheet.</p>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Farhan's prompt">"My staff list has columns Emp ID, Department, Join date, Exit date (blank if still working) and Worker type. Give me a formula for headcount on 31 March 2026."</li>
              <li data-kind="answer" data-label="AI reply">The AI gives a formula that counts every row with a blank exit date.</li>
              <li data-kind="tool" data-label="Google Sheets">Farhan runs it on the clean staff list.</li>
              <li data-kind="result" data-label="Sheet result">125</li>
              <li data-kind="warn" data-label="Mismatch">The HRMS report says 120. The formula counted the 5 contractors. It also ignored the join date, so an offer with a future start date could be counted.</li>
              <li data-kind="user" data-label="Follow-up">"Count only Worker type = Employee. The join date must be on or before 31 March 2026. The exit date must be blank or after 31 March 2026."</li>
              <li data-kind="result" data-label="New result">120, with Engineering 56 and Customer Success 16</li>
              <li data-kind="check" data-label="Bridge check">104 + 40 − 24 = 120 for the company. Farhan checks each team too, for example Customer Success: 14 + 8 − 6 = 16.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Give AI a department table and ask it to check the bridge and describe the workforce. Use your own totals or the made-up LedgerLite numbers.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an HR analyst. You help an HR manager write a clear headcount summary for leaders.

        Company: [LedgerLite Pvt Ltd, a software company in Karnataka]. Period: [FY26, 1 April 2025 to 31 March 2026].
        Headcount table (totals only):
        [Department | Start | Joiners | Leavers | End
        Engineering | 48 | 18 | 10 | 56
        Product and Design | 10 | 4 | 2 | 12
        QA | 12 | 4 | 3 | 13
        Customer Success | 14 | 8 | 6 | 16
        Sales and Marketing | 12 | 4 | 2 | 14
        Finance, HR and Admin | 8 | 2 | 1 | 9]
        Other facts: [4 part-time staff at 0.5 FTE, 5 contractors, 6 open positions].

        Please:
        1. Check that Start + Joiners - Leavers = End for every row and for the total. Show each sum. Flag any row that does not add up.
        2. Add columns: Net change, Growth % ((End - Start) / Start) and Share of end headcount. Round to 1 decimal place.
        3. Calculate FTE at the end of the year.
        4. Write 5 short observations for leaders. Each must quote a number from the table.
        5. List 3 questions to explore next. Do not state causes as facts.
        6. Suggest one chart to show this and say why.</pre>
            <ul class="ai-try-checks">
              <li>Every row adds up, and the total is 104 + 40 − 24 = 120 (or your own totals).</li>
              <li>Growth % uses start headcount, and the shares add up to 100%.</li>
              <li>FTE is 118 for the LedgerLite numbers. Contractors are not in headcount.</li>
              <li>Observations quote real numbers from the table. Nothing is invented.</li>
              <li>Recheck two of the percentages in your own spreadsheet.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Define your counting rules once and use them every time. If start plus joiners minus leavers does not equal end, find the error before you calculate anything else.
        </div>
      HTML
      starter_code: nil
    },
    6 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-hr">HR & Recruitment</div>
          <h1 class="lc-title">Attrition and Retention Metrics</h1>
        </div>
        <p class="lc-lead">"How many people are we losing?" is one of the first questions leaders ask HR. Attrition (the share of employees who left during a period) answers it. Retention (the share of employees who stayed) tells the other side of the story. In this lesson you will calculate monthly and annual attrition, split it into voluntary and involuntary, measure early attrition and work out retention. You will also learn the common mistakes, so your numbers match every time. AI can write the formulas for you. You must still choose the definitions and check the results.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="A table for LedgerLite in FY26. Of the 104 staff at the start, 86 were still there at the end and 18 left. Of the 40 joiners, 34 were still there and 6 left, 4 of them within 90 days. Totals: 120 at the end and 24 leavers, 19 voluntary and 5 involuntary. On the right: attrition 24 divided by 112 average headcount is 21.4 percent, retention 86 divided by 104 is 82.7 percent, early attrition 4 divided by 40 is 10.0 percent.">
            <defs><marker id="hra6a" markerWidth="8" markerHeight="8" refX="7" refY="4" orient="auto"><path d="M0,0 L8,4 L0,8 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12.5" fill="#e2e0f0" text-anchor="middle">
              <text x="16" y="22" text-anchor="start" font-size="13" font-weight="700">Who stayed and who left, FY26</text>
              <g font-size="11.5" fill="#9b99b8">
                <text x="244" y="58">Still here</text><text x="244" y="72">on 31 Mar 2026</text>
                <text x="372" y="58">Left</text><text x="372" y="72">during FY26</text>
                <text x="475" y="65">Total</text>
              </g>
              <rect x="10" y="84" width="170" height="54" rx="8" fill="#27274e" stroke="#3b82f6"/>
              <text x="95" y="107" font-weight="700">On payroll at start</text>
              <text x="95" y="126" font-size="11" fill="#9b99b8">1 April 2025</text>
              <rect x="184" y="84" width="120" height="54" rx="8" fill="#1f1f44" stroke="#10b981"/>
              <text x="244" y="116" font-size="18" font-weight="700" fill="#6ee7b7">86</text>
              <rect x="312" y="84" width="120" height="54" rx="8" fill="#1f1f44" stroke="#ec4899"/>
              <text x="372" y="116" font-size="18" font-weight="700" fill="#f9a8d4">18</text>
              <text x="475" y="116" font-size="15" font-weight="700">104</text>
              <rect x="10" y="146" width="170" height="54" rx="8" fill="#27274e" stroke="#3b82f6"/>
              <text x="95" y="169" font-weight="700">Joined in FY26</text>
              <text x="95" y="188" font-size="11" fill="#9b99b8">April 2025 to March 2026</text>
              <rect x="184" y="146" width="120" height="54" rx="8" fill="#1f1f44" stroke="#10b981"/>
              <text x="244" y="178" font-size="18" font-weight="700" fill="#6ee7b7">34</text>
              <rect x="312" y="146" width="120" height="54" rx="8" fill="#1f1f44" stroke="#ec4899"/>
              <text x="372" y="172" font-size="18" font-weight="700" fill="#f9a8d4">6</text>
              <text x="372" y="190" font-size="10.5" fill="#9b99b8">4 within 90 days</text>
              <text x="475" y="178" font-size="15" font-weight="700">40</text>
              <line x1="10" y1="210" x2="505" y2="210" stroke="#4b4a78"/>
              <text x="95" y="236" font-weight="700">Total</text>
              <text x="244" y="234" font-size="15" font-weight="700" fill="#6ee7b7">120</text>
              <text x="244" y="252" font-size="10.5" fill="#9b99b8">end headcount</text>
              <text x="372" y="234" font-size="15" font-weight="700" fill="#f9a8d4">24</text>
              <text x="372" y="252" font-size="10.5" fill="#9b99b8">19 vol + 5 invol</text>
              <text x="475" y="234" font-size="15" font-weight="700">144</text>
              <line x1="515" y1="150" x2="532" y2="150" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#hra6a)"/>
              <rect x="538" y="36" width="212" height="64" rx="8" fill="#27274e" stroke="#ec4899"/>
              <text x="644" y="60" font-weight="700" fill="#f9a8d4">Attrition rate</text>
              <text x="644" y="82" font-size="11.5">24 ÷ 112 average = 21.4%</text>
              <rect x="538" y="118" width="212" height="64" rx="8" fill="#27274e" stroke="#10b981"/>
              <text x="644" y="142" font-weight="700" fill="#6ee7b7">Retention rate</text>
              <text x="644" y="164" font-size="11.5">86 ÷ 104 at start = 82.7%</text>
              <rect x="538" y="200" width="212" height="64" rx="8" fill="#27274e" stroke="#f59e0b"/>
              <text x="644" y="224" font-weight="700" fill="#fcd34d">Early attrition</text>
              <text x="644" y="246" font-size="11.5">4 ÷ 40 joiners = 10.0%</text>
              <text x="380" y="288" font-size="11" fill="#9b99b8">Average headcount = (104 + 120) ÷ 2 = 112. Retention is not 100% minus attrition.</text>
            </g>
          </svg>
          <figcaption>Split everyone who worked at LedgerLite in FY26 into four groups. Each metric uses a different part of this table.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The core metrics, with LedgerLite's FY26 numbers</h3>
          <table class="lc-table">
            <thead><tr><th>Metric</th><th>Formula</th><th>LedgerLite FY26 (made up)</th></tr></thead>
            <tbody>
              <tr><td><strong>Annual attrition</strong></td><td>Leavers in the year ÷ average headcount × 100</td><td>24 ÷ 112 = <strong>21.4%</strong></td></tr>
              <tr><td><strong>Voluntary attrition</strong> (the employee chose to leave)</td><td>Voluntary leavers ÷ average headcount × 100</td><td>19 ÷ 112 = 17.0%</td></tr>
              <tr><td><strong>Involuntary attrition</strong> (the company ended the job)</td><td>Involuntary leavers ÷ average headcount × 100</td><td>5 ÷ 112 = 4.5%</td></tr>
              <tr><td><strong>Early attrition</strong></td><td>Joiners who left within 90 days ÷ joiners × 100</td><td>4 ÷ 40 = 10.0%</td></tr>
              <tr><td><strong>Retention rate</strong></td><td>Staff at the start who are still here at the end ÷ start headcount × 100</td><td>86 ÷ 104 = <strong>82.7%</strong></td></tr>
              <tr><td><strong>Monthly attrition</strong></td><td>Leavers in the month ÷ average headcount in the month × 100</td><td>March: 3 ÷ 119.5 = 2.5%</td></tr>
            </tbody>
          </table>
          <p><strong>Average headcount</strong> is (start + end) ÷ 2. For LedgerLite that is (104 + 120) ÷ 2 = 112. A more exact method averages the 12 month-end numbers: 1,374 ÷ 12 = 114.5. That gives 24 ÷ 114.5 = 21.0%. Both methods are fine. Pick one, write it down and use it every time.</p>
          <p>Three things often confuse people:</p>
          <ul class="lc-list">
            <li><strong>Voluntary plus involuntary.</strong> 17.0% + 4.5% = 21.5%, not 21.4%. This is only rounding. The exact numbers are 16.96% and 4.46%.</li>
            <li><strong>Retention is not 100% minus attrition.</strong> 100 − 21.4 = 78.6, but retention is 82.7%. Attrition also counts the 6 joiners who left. Retention only follows the 104 people you started with.</li>
            <li><strong>Early attrition needs time to show.</strong> The 10 people who joined from January to March have not had 90 days yet. A stricter method uses only the 30 joiners from April to December: 4 ÷ 30 = 13.3%.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Monthly numbers, and the "times 12" trap</h3>
          <p>Leaders often want a monthly figure. For March 2026, LedgerLite had 3 leavers. The average headcount was (119 + 120) ÷ 2 = 119.5. So March attrition is 3 ÷ 119.5 = 2.5%.</p>
          <p>Now the trap. Someone multiplies March by 12 and reports "about 30% a year". That is wrong. One month can be high or low by chance. If you add up all 12 monthly rates for FY26, you get 21.0%. That is close to the real annual figure. The highest month was August, at 3 ÷ 113 = 2.7%.</p>
          <p>For monthly reports, use <strong>rolling 12-month attrition</strong>: leavers in the last 12 months ÷ average headcount over those 12 months. It moves slowly and does not jump with one bad month.</p>
          <p>Here are formulas for a clean staff list. Column C is Join date, D is Exit date (blank if still working), E is Exit type and F is Days worked.</p>
          <pre><code>Days worked (F2, copy down):
        =IF(D2="","",D2-C2)

        Leavers in FY26 (gives 24):
        =COUNTIFS(D2:D300,"&gt;="&amp;DATE(2025,4,1),D2:D300,"&lt;="&amp;DATE(2026,3,31))

        Voluntary leavers in FY26 (gives 19):
        =COUNTIFS(D2:D300,"&gt;="&amp;DATE(2025,4,1),D2:D300,"&lt;="&amp;DATE(2026,3,31),E2:E300,"Voluntary")

        Early leavers: joined in FY26, left within 90 days (gives 4):
        =COUNTIFS(C2:C300,"&gt;="&amp;DATE(2025,4,1),D2:D300,"&lt;="&amp;DATE(2026,3,31),F2:F300,"&lt;=90")

        Attrition rate (B1 = start 104, B2 = end 120, B3 = leavers 24):
        =B3/AVERAGE(B1,B2)          format as % → 21.4%</code></pre>
          <p>Test the formulas on one row you know. LL-1188 joined on 2 July 2025 and left on 25 September 2025. Days worked should be 85, so this person is an early leaver.</p>
        </div>
        <div class="lc-card">
          <h3>Look by team, but watch small numbers</h3>
          <table class="lc-table">
            <thead><tr><th>Department</th><th>Leavers</th><th>Voluntary</th><th>Involuntary</th><th>Average headcount</th><th>Attrition</th></tr></thead>
            <tbody>
              <tr><td>Customer Success</td><td>6</td><td>5</td><td>1</td><td>15</td><td><strong>40.0%</strong></td></tr>
              <tr><td>QA</td><td>3</td><td>2</td><td>1</td><td>12.5</td><td>24.0%</td></tr>
              <tr><td>Engineering</td><td>10</td><td>8</td><td>2</td><td>52</td><td>19.2%</td></tr>
              <tr><td>Product &amp; Design</td><td>2</td><td>2</td><td>0</td><td>11</td><td>18.2%</td></tr>
              <tr><td>Sales &amp; Marketing</td><td>2</td><td>1</td><td>1</td><td>13</td><td>15.4%</td></tr>
              <tr><td>Finance, HR &amp; Admin</td><td>1</td><td>1</td><td>0</td><td>8.5</td><td>11.8%</td></tr>
              <tr><td><strong>Total</strong></td><td><strong>24</strong></td><td><strong>19</strong></td><td><strong>5</strong></td><td><strong>112</strong></td><td><strong>21.4%</strong></td></tr>
            </tbody>
          </table>
          <p>Customer Success stands out. It lost 6 people from an average of 15, and 2 of the 4 early leavers were in this team. That is a strong reason to look deeper.</p>
          <p>Be careful with small teams. Finance, HR &amp; Admin had 1 leaver, so its rate is 11.8%. One more leaver would make it 2 ÷ 8.5 = 23.5%. For teams under about 20 people, always show the count next to the percentage.</p>
          <p>When you ask AI for help, give it your definitions. Otherwise it will pick its own.</p>
          <pre><code>Weak: What is our attrition rate? 24 people left this year.

        Better: Calculate FY26 attrition for [LedgerLite]. Use leavers ÷
        average headcount, where average = (start + end) ÷ 2.
        Start 104, end 120, leavers 24 (19 voluntary, 5 involuntary).
        Show each formula and result to 1 decimal place.
        Also give me the Google Sheets formula for each metric.</code></pre>
        </div>
        <div class="lc-card">
          <h3>Activity: voluntary, involuntary or not a leaver?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each exit at LedgerLite into the right group for the attrition report.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="vol" data-label="Voluntary leaver"></div>
              <div data-sorter-target="bucket" data-bucket="invol" data-label="Involuntary leaver"></div>
              <div data-sorter-target="bucket" data-bucket="not" data-label="Not a company leaver"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="vol" data-why="The employee chose to leave. Pay is the most common reason in LedgerLite's exit data.">A QA engineer resigns to join a company that pays more.</li>
              <li data-bucket="invol" data-why="The company decided not to confirm the job. It also counts as early attrition if it was within 90 days.">A new hire's probation is not confirmed.</li>
              <li data-bucket="invol" data-why="The company closed the role, so the company ended the job. The person did nothing wrong.">A role is closed and the employee leaves with notice pay.</li>
              <li data-bucket="vol" data-why="The employee chose to leave for higher studies. Some companies track this as unavoidable voluntary attrition.">An engineer resigns to start a master's degree.</li>
              <li data-bucket="not" data-why="The person still works at LedgerLite. Track it as an internal move. It is a loss for Customer Success, but not for the company.">A support agent moves from Customer Success to QA.</li>
              <li data-bucket="not" data-why="Contractors are not in headcount, so they are not in attrition. Track them separately.">A contractor's contract ends.</li>
              <li data-bucket="not" data-why="The person never joined, so they never counted in headcount. This belongs in your hiring metrics.">A candidate accepts an offer but never joins.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to calculate attrition metrics from a department table and to point out small-number risks. Use the made-up LedgerLite totals or your own totals, never names.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an HR analyst. Help me report attrition for [LedgerLite Pvt Ltd] for [FY26, April 2025 to March 2026].

        Definitions (use exactly these):
        - Attrition = leavers / average headcount x 100, where average headcount = (start + end) / 2
        - Voluntary = the employee chose to leave. Involuntary = the company ended the job.

        Data (totals only):
        [Department | Start | End | Voluntary leavers | Involuntary leavers
        Engineering | 48 | 56 | 8 | 2
        Product and Design | 10 | 12 | 2 | 0
        QA | 12 | 13 | 2 | 1
        Customer Success | 14 | 16 | 5 | 1
        Sales and Marketing | 12 | 14 | 1 | 1
        Finance, HR and Admin | 8 | 9 | 1 | 0]

        Please:
        1. Make a table with average headcount, total, voluntary and involuntary attrition for each department and the company. Show each calculation. Round to 1 decimal place.
        2. Flag any department where one more leaver would change the rate by more than 5 points.
        3. Give the Google Sheets formula for the company attrition rate.
        4. Write 4 short findings for leaders. Each must quote a number. Do not guess causes.
        5. List 3 questions I should explore next.</pre>
            <ul class="ai-try-checks">
              <li>Company attrition is 24 ÷ 112 = 21.4% for the LedgerLite data.</li>
              <li>Each department uses its own average headcount, for example Customer Success 6 ÷ 15 = 40.0%.</li>
              <li>Small teams, such as Finance, HR and Admin, are flagged.</li>
              <li>Findings describe the numbers and do not claim to know why people left.</li>
              <li>Recheck two rates in your own spreadsheet before you share them.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Attrition, retention and early attrition answer different questions, so each uses a different base. Write down your definitions, divide by average headcount, and never turn one month into a yearly number by multiplying by 12.
        </div>
      HTML
      starter_code: nil
    },
    7 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-hr">HR & Recruitment</div>
          <h1 class="lc-title">Hiring Metrics</h1>
        </div>
        <p class="lc-lead">Hiring costs time and money, and a slow process loses good candidates. Hiring metrics show how fast you hire, how much each hire costs and which sources bring people who stay. In this lesson you will define time to hire, time to fill, cost per hire and offer acceptance rate. You will compare hiring sources, and you will check your hiring funnel for fairness. AI helps you write formulas and read patterns. Hiring managers and recruiters still make every decision about people.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 290" role="img" aria-label="A hiring timeline with five points: job approved, candidate applies, offer made, offer accepted and joins. Time to fill runs from job approved to offer accepted, 45 days on average at LedgerLite. Time to hire runs from candidate applies to offer accepted, 34 days on average. Time to start runs from offer accepted to joining. Below, the FY26 funnel: 2,160 applications, 50 offers made, 42 offers accepted, which is an 84 percent offer acceptance rate, and 40 people joined.">
            <defs><marker id="hra7a" markerWidth="8" markerHeight="8" refX="7" refY="4" orient="auto"><path d="M0,0 L8,4 L0,8 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12.5" fill="#e2e0f0" text-anchor="middle">
              <path d="M60,44 L60,36 L540,36 L540,44" fill="none" stroke="#f59e0b" stroke-width="1.5"/>
              <text x="300" y="28" font-weight="700" fill="#fcd34d">Time to fill: 45 days (average)</text>
              <path d="M230,70 L230,62 L540,62 L540,70" fill="none" stroke="#8b5cf6" stroke-width="1.5"/>
              <text x="385" y="55" font-weight="700" fill="#c4b5fd">Time to hire: 34 days (average)</text>
              <line x1="60" y1="90" x2="700" y2="90" stroke="#4b4a78" stroke-width="2"/>
              <circle cx="60" cy="90" r="7" fill="#f59e0b"/>
              <circle cx="230" cy="90" r="7" fill="#8b5cf6"/>
              <circle cx="420" cy="90" r="7" fill="#3b82f6"/>
              <circle cx="540" cy="90" r="7" fill="#10b981"/>
              <circle cx="700" cy="90" r="7" fill="#22d3ee"/>
              <g font-size="11.5">
                <text x="60" y="114">Job approved</text>
                <text x="230" y="114">Candidate applies</text>
                <text x="420" y="114">Offer made</text>
                <text x="540" y="114">Offer accepted</text>
                <text x="700" y="114">Joins</text>
              </g>
              <path d="M540,126 L540,134 L700,134 L700,126" fill="none" stroke="#22d3ee" stroke-width="1.5"/>
              <text x="620" y="152" font-size="11.5" fill="#67e8f9">Time to start (notice period)</text>
              <text x="16" y="182" text-anchor="start" font-size="13" font-weight="700">FY26 hiring funnel</text>
              <rect x="10" y="196" width="170" height="64" rx="8" fill="#27274e" stroke="#9b99b8"/>
              <text x="95" y="222" font-weight="700">2,160 applications</text>
              <text x="95" y="243" font-size="11" fill="#9b99b8">from 5 sources</text>
              <rect x="203" y="196" width="170" height="64" rx="8" fill="#27274e" stroke="#3b82f6"/>
              <text x="288" y="222" font-weight="700">50 offers made</text>
              <text x="288" y="243" font-size="11" fill="#9b99b8">2.3% of applications</text>
              <rect x="396" y="196" width="170" height="64" rx="8" fill="#27274e" stroke="#10b981"/>
              <text x="481" y="222" font-weight="700">42 accepted</text>
              <text x="481" y="243" font-size="11" fill="#6ee7b7">Offer acceptance 84%</text>
              <rect x="589" y="196" width="161" height="64" rx="8" fill="#27274e" stroke="#22d3ee"/>
              <text x="669" y="222" font-weight="700">40 joined</text>
              <text x="669" y="243" font-size="11" fill="#9b99b8">2 accepted, not joined</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#hra7a)">
                <line x1="181" y1="228" x2="199" y2="228"/><line x1="374" y1="228" x2="392" y2="228"/><line x1="567" y1="228" x2="585" y2="228"/>
              </g>
              <text x="380" y="282" font-size="11" fill="#9b99b8">Cost per hire: ₹34,00,000 total recruiting cost ÷ 40 hires = ₹85,000</text>
            </g>
          </svg>
          <figcaption>Time to fill starts when the job is approved. Time to hire starts when the candidate applies. Both end when the offer is accepted.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Five hiring metrics, defined</h3>
          <table class="lc-table">
            <thead><tr><th>Metric</th><th>Formula</th><th>LedgerLite FY26 (made up)</th></tr></thead>
            <tbody>
              <tr><td><strong>Time to hire</strong></td><td>Days from the candidate's application to offer accepted, averaged over all hires</td><td>34 days</td></tr>
              <tr><td><strong>Time to fill</strong></td><td>Days from requisition approval (the approved request to hire) to offer accepted, averaged</td><td>45 days</td></tr>
              <tr><td><strong>Offer acceptance rate</strong></td><td>Offers accepted ÷ offers made × 100</td><td>42 ÷ 50 = 84%</td></tr>
              <tr><td><strong>Join rate</strong></td><td>People who joined ÷ offers accepted × 100</td><td>40 ÷ 42 = 95.2%</td></tr>
              <tr><td><strong>Cost per hire</strong></td><td>(External costs + internal costs) ÷ number of hires</td><td>₹34,00,000 ÷ 40 = ₹85,000</td></tr>
            </tbody>
          </table>
          <p>Time to hire shows how fast your process moves once a person applies. Time to fill shows how long a team waits for help. Some companies end both metrics on the joining day instead. Either is fine, but write your rule down. In India, notice periods can be long, so many teams track <strong>time to start</strong> separately.</p>
          <p>Here is one made-up candidate, C-2025-0417. They applied on 3 May 2025, accepted the offer on 2 June 2025 and joined on 2 July 2025. With clean dates in D2 (applied), E2 (offer accepted) and F2 (joined):</p>
          <pre><code>Time to hire:   =E2-D2    → 30 days
        Time to start:  =F2-E2    → 30 days
        Average time to hire for all hires:  =AVERAGE(G2:G41)   (G = time to hire column)</code></pre>
          <p>Cost per hire has two parts. External costs are ₹21,20,000: agency fees, job ads, referral bonuses, an assessment tool and campus events. Internal costs are ₹12,80,000: the share of recruiter salary and hiring manager interview time. That is ₹53,000 + ₹32,000 per hire. Many teams forget internal costs, so their cost per hire looks too low.</p>
        </div>
        <div class="lc-card">
          <h3>Which source works best?</h3>
          <table class="lc-table">
            <thead><tr><th>Source</th><th>Applications</th><th>Hires</th><th>Hires per 100 applications</th><th>Avg time to hire</th><th>Direct cost per hire</th><th>Left within 90 days</th></tr></thead>
            <tbody>
              <tr><td>Employee referral</td><td>90</td><td>12</td><td>13.3</td><td>26 days</td><td>₹20,000</td><td>0</td></tr>
              <tr><td>Job boards</td><td>1,400</td><td>13</td><td>0.9</td><td>36 days</td><td>₹24,615</td><td>2</td></tr>
              <tr><td>Recruitment agency</td><td>120</td><td>8</td><td>6.7</td><td>30 days</td><td>₹1,75,000</td><td>1</td></tr>
              <tr><td>Careers page</td><td>300</td><td>4</td><td>1.3</td><td>40 days</td><td>No direct cost</td><td>1</td></tr>
              <tr><td>Campus</td><td>250</td><td>3</td><td>1.2</td><td>60 days</td><td>₹20,000</td><td>0</td></tr>
              <tr><td><strong>Total</strong></td><td><strong>2,160</strong></td><td><strong>40</strong></td><td><strong>1.9</strong></td><td><strong>34 days</strong></td><td></td><td><strong>4</strong></td></tr>
            </tbody>
          </table>
          <p>Direct cost per hire uses only the cost of that source. For example, agency fees are ₹14,00,000 ÷ 8 = ₹1,75,000. Shared costs, such as recruiter time, are not split by source.</p>
          <p>Referrals look best here: quick, cheap and no early leavers. Before you move all your budget, check two things. First, the numbers are small: the careers page had 4 hires, so 1 early leaver is 25%. Second, referrals can make a team less diverse, because people often refer people like themselves.</p>
          <p>The total time to hire is a <strong>weighted average</strong>: each source counts as many times as it has hires. With hires in C2:C6 and average days in E2:E6:</p>
          <pre><code>Right: =SUMPRODUCT(C2:C6,E2:E6)/SUM(C2:C6)   → 1,360 ÷ 40 = 34.0 days
        Wrong: =AVERAGE(E2:E6)                     → 38.4 days</code></pre>
          <pre><code>Weak: Which hiring source is best?

        Better: Here is FY26 hiring data by source for [LedgerLite]: applications,
        hires, average time to hire, direct cost and early leavers. Rank the sources
        on each measure separately. Flag any result based on fewer than 5 hires.
        Suggest 2 things to test next quarter. Do not recommend dropping a source
        on this data alone.</code></pre>
        </div>
        <div class="lc-card">
          <h3>Check the funnel for fairness</h3>
          <p><strong>Selection rate</strong> is the share of candidates who pass a stage: candidates who pass ÷ candidates who entered the stage. Compare it across groups, such as women and men, at each stage.</p>
          <p>A common screening test is the <strong>four-fifths rule</strong>. It comes from the US Uniform Guidelines on Employee Selection Procedures (1978). US agencies have been reviewing how these guidelines are used, so check the current rules where you work. Many teams still use the rule as a simple first check. If one group's selection rate is less than 80% (four-fifths) of the highest group's rate, look closer. The result, one rate divided by the other, is called the impact ratio.</p>
          <table class="lc-table">
            <thead><tr><th>CV screening, L2 Engineer roles (made up)</th><th>Applied</th><th>Shortlisted</th><th>Selection rate</th></tr></thead>
            <tbody>
              <tr><td>Women</td><td>60</td><td>18</td><td>30.0%</td></tr>
              <tr><td>Men</td><td>140</td><td>56</td><td>40.0%</td></tr>
              <tr><td colspan="3"><strong>Impact ratio</strong> = 30.0 ÷ 40.0</td><td><strong>0.75</strong> (below 0.8)</td></tr>
            </tbody>
          </table>
          <p>This does not prove bias. It tells Divya and Farhan to review the screening rules. Do they ask for something the job does not need, such as a degree from certain colleges? Are some CVs screened out for a career break?</p>
          <ul class="lc-list">
            <li><strong>Automated screening needs extra care.</strong> New York City's Local Law 144 requires bias audits for some automated hiring tools. The EU AI Act treats AI used in hiring as high-risk.</li>
            <li><strong>In India</strong>, candidate data is personal data under the DPDP Act. Tell candidates how you use it, and keep only what you need.</li>
            <li><strong>Do not trust "personality from video" tools.</strong> Claims that AI can read honesty, emotions or personality from a face or voice are not reliable. Do not use them to judge candidates.</li>
          </ul>
          <p>This is general information, not legal advice. Check with HR legal counsel for your situation.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: Divya's time-to-hire report</h3>
          <p>Step through how Divya gets the right average time to hire with AI and a spreadsheet.</p>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Divya's prompt">"Our five hiring sources have average time to hire of 26, 36, 30, 40 and 60 days. What is our overall average time to hire?"</li>
              <li data-kind="answer" data-label="AI reply">"(26 + 36 + 30 + 40 + 60) ÷ 5 = 38.4 days."</li>
              <li data-kind="warn" data-label="Mistake">This counts campus (3 hires) the same as job boards (13 hires). The slow campus source pulls the average up.</li>
              <li data-kind="user" data-label="Follow-up">"The hires per source are 12, 13, 8, 4 and 3. Give me a Google Sheets formula for the average weighted by hires."</li>
              <li data-kind="answer" data-label="AI reply">"Use =SUMPRODUCT(C2:C6,E2:E6)/SUM(C2:C6), with hires in column C and average days in column E."</li>
              <li data-kind="tool" data-label="Google Sheets">Divya enters the formula in the source table.</li>
              <li data-kind="result" data-label="Sheet result">34.0 days (1,360 ÷ 40)</li>
              <li data-kind="check" data-label="Cross-check">Farhan averages the time to hire of all 40 hires in the ATS export. It is also 34 days, so the report is right.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to compare your hiring sources on speed, cost and quality, and to flag small numbers. Use totals only, never candidate names.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a recruitment analyst. Help me review hiring sources for [LedgerLite Pvt Ltd, a 120-person software company in Karnataka] for [FY26].

        Data by source (totals only):
        [Source | Applications | Hires | Avg time to hire (days) | Direct cost (Rs) | Left within 90 days
        Employee referral | 90 | 12 | 26 | 240000 | 0
        Job boards | 1400 | 13 | 36 | 320000 | 2
        Recruitment agency | 120 | 8 | 30 | 1400000 | 1
        Careers page | 300 | 4 | 40 | 0 | 1
        Campus | 250 | 3 | 60 | 60000 | 0]

        Please:
        1. For each source, calculate hires per 100 applications, direct cost per hire and early leaver rate. Show your working.
        2. Calculate the overall time to hire as an average weighted by hires. Also give the Google Sheets formula.
        3. Rank the sources on speed, cost and quality separately.
        4. Flag every result based on fewer than 5 hires.
        5. Suggest 3 changes to test next quarter, with one risk for each, including fairness and diversity risks.</pre>
            <ul class="ai-try-checks">
              <li>The weighted time to hire is 34.0 days, not 38.4 days.</li>
              <li>Agency cost per hire is ₹1,75,000 and referral cost per hire is ₹20,000.</li>
              <li>Careers page and campus results are flagged as small numbers.</li>
              <li>The advice does not drop a source based on one or two people.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A hiring metric is only useful if everyone uses the same start and end dates. Weight averages by the number of hires, look at speed, cost and quality together, and check selection rates for fairness at every stage.
        </div>
      HTML
      starter_code: nil
    },
    8 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-hr">HR & Recruitment</div>
          <h1 class="lc-title">Engagement and Survey Analytics</h1>
        </div>
        <p class="lc-lead">An engagement survey asks employees how they feel about their work, their manager and the company. Good survey analysis turns hundreds of answers into a few clear messages that leaders can act on. In this lesson you will calculate response rates, eNPS and "% favourable" scores in a spreadsheet. You will compare teams without exposing anyone. You will also use AI to group written comments into themes, and then check its work. Surveys are anonymous for a reason, so protecting that promise is part of the analysis.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 285" role="img" aria-label="LedgerLite's January 2026 survey: 94 of 117 employees replied, a response rate of 80.3 percent. A bar splits the 94 replies into 38 promoters, 34 passives and 22 detractors, so eNPS is 40.4 percent minus 23.4 percent, which is plus 17. Below, eNPS by department: Engineering plus 18, Product and Design plus 30, QA 0, Customer Success minus 23, Sales and Marketing plus 45, Finance, HR and Admin plus 50 from only 6 replies. A note says one reply out of 6 can move eNPS by 33 points, so groups under 5 replies are hidden.">
            <g font-family="inherit" font-size="12.5" fill="#e2e0f0" text-anchor="middle">
              <text x="16" y="24" text-anchor="start" font-size="13" font-weight="700">January 2026 survey: 94 of 117 replied (80.3%)</text>
              <rect x="20" y="40" width="291" height="40" rx="4" fill="#10b981"/>
              <rect x="311" y="40" width="260.4" height="40" fill="#4b4a78"/>
              <rect x="571.4" y="40" width="168.6" height="40" rx="4" fill="#ec4899"/>
              <g font-size="12" font-weight="700" fill="#0f0f24">
                <text x="165" y="65">Promoters (9-10): 38</text>
                <text x="655" y="65">Detractors (0-6): 22</text>
              </g>
              <text x="441" y="65" font-size="12" font-weight="700">Passives (7-8): 34</text>
              <text x="380" y="106" font-weight="700" fill="#c4b5fd">eNPS = 40.4% promoters − 23.4% detractors = +17</text>
              <text x="16" y="138" text-anchor="start" font-size="13" font-weight="700">eNPS by department</text>
              <line x1="400" y1="148" x2="400" y2="276" stroke="#9b99b8"/>
              <g font-size="11.5" text-anchor="end">
                <text x="300" y="164">Engineering (44 replies)</text>
                <text x="300" y="185">Product &amp; Design (10)</text>
                <text x="300" y="206">QA (10)</text>
                <text x="300" y="227">Customer Success (13)</text>
                <text x="300" y="248">Sales &amp; Marketing (11)</text>
                <text x="300" y="269">Fin, HR &amp; Admin (6)</text>
              </g>
              <g fill="#3b82f6">
                <rect x="400" y="153" width="36" height="14" rx="2"/>
                <rect x="400" y="174" width="60" height="14" rx="2"/>
                <rect x="400" y="237" width="90" height="14" rx="2"/>
              </g>
              <rect x="400" y="258" width="100" height="14" rx="2" fill="#f59e0b"/>
              <rect x="354" y="216" width="46" height="14" rx="2" fill="#ec4899"/>
              <g font-size="11.5" text-anchor="start" font-weight="700">
                <text x="442" y="164">+18</text>
                <text x="466" y="185">+30</text>
                <text x="406" y="206">0</text>
                <text x="496" y="248">+45</text>
                <text x="506" y="269" fill="#fcd34d">+50</text>
              </g>
              <text x="348" y="227" font-size="11.5" text-anchor="end" font-weight="700" fill="#f9a8d4">−23</text>
              <rect x="572" y="150" width="178" height="124" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="661" y="172" font-weight="700" fill="#fcd34d">Small groups swing</text>
              <g font-size="11" fill="#9b99b8">
                <text x="661" y="195">With 6 replies, one person</text>
                <text x="661" y="213">moving from 9 to 5 drops</text>
                <text x="661" y="231">eNPS from +50 to +17.</text>
                <text x="661" y="256" fill="#e2e0f0">Hide groups under 5.</text>
              </g>
            </g>
          </svg>
          <figcaption>The company eNPS hides big differences between teams. Small teams can swing a lot, so read their scores with care.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The key survey numbers</h3>
          <table class="lc-table">
            <thead><tr><th>Metric</th><th>How to calculate it</th><th>LedgerLite, January 2026 (made up)</th></tr></thead>
            <tbody>
              <tr><td><strong>Response rate</strong></td><td>Replies ÷ people invited × 100</td><td>94 ÷ 117 = 80.3%</td></tr>
              <tr><td><strong>eNPS</strong> (employee Net Promoter Score)</td><td>% promoters (score 9 or 10) − % detractors (score 0 to 6), on a 0 to 10 question</td><td>40.4% − 23.4% = <strong>+17</strong></td></tr>
              <tr><td><strong>% favourable</strong></td><td>Share who chose "agree" or "strongly agree" on a statement</td><td>"My manager supports me": 78%</td></tr>
              <tr><td><strong>Engagement index</strong></td><td>Average % favourable of a fixed set of core engagement questions, chosen before the survey</td><td>72% favourable</td></tr>
            </tbody>
          </table>
          <p>eNPS is a number from −100 to +100, not a percentage. Passives (7 or 8) count in the total, but not in either group. The eNPS question at LedgerLite is: "How likely are you to recommend LedgerLite as a place to work?"</p>
          <p>Scores for five other statements show where to look first. The index uses its own fixed set of questions, so it is not the average of these five.</p>
          <table class="lc-table">
            <thead><tr><th>Statement</th><th>% favourable</th></tr></thead>
            <tbody>
              <tr><td>My manager supports me</td><td>78%</td></tr>
              <tr><td>I feel proud to work here</td><td>76%</td></tr>
              <tr><td>My workload is manageable</td><td>61%</td></tr>
              <tr><td>I see a path to grow here</td><td>54%</td></tr>
              <tr><td>My pay is fair for my role</td><td><strong>49%</strong></td></tr>
            </tbody>
          </table>
          <p>In your survey export, column B has the 0 to 10 scores. Column C has one statement on a 1 to 5 scale, where 5 = strongly agree.</p>
          <pre><code>eNPS (gives 17.0):
        =(COUNTIF(B2:B95,"&gt;=9")-COUNTIF(B2:B95,"&lt;=6"))/COUNT(B2:B95)*100

        % favourable for one statement:
        =COUNTIF(C2:C95,"&gt;=4")/COUNT(C2:C95)          format as %</code></pre>
        </div>
        <div class="lc-card">
          <h3>Compare teams safely</h3>
          <table class="lc-table">
            <thead><tr><th>Department</th><th>Invited</th><th>Replies</th><th>Response rate</th><th>Promoters</th><th>Passives</th><th>Detractors</th><th>eNPS</th></tr></thead>
            <tbody>
              <tr><td>Engineering</td><td>55</td><td>44</td><td>80.0%</td><td>18</td><td>16</td><td>10</td><td>+18</td></tr>
              <tr><td>Product &amp; Design</td><td>12</td><td>10</td><td>83.3%</td><td>5</td><td>3</td><td>2</td><td>+30</td></tr>
              <tr><td>QA</td><td>12</td><td>10</td><td>83.3%</td><td>3</td><td>4</td><td>3</td><td>0</td></tr>
              <tr><td>Customer Success</td><td>15</td><td>13</td><td>86.7%</td><td>3</td><td>4</td><td>6</td><td><strong>−23</strong></td></tr>
              <tr><td>Sales &amp; Marketing</td><td>14</td><td>11</td><td>78.6%</td><td>6</td><td>4</td><td>1</td><td>+45</td></tr>
              <tr><td>Finance, HR &amp; Admin</td><td>9</td><td>6</td><td>66.7%</td><td>3</td><td>3</td><td>0</td><td>+50</td></tr>
              <tr><td><strong>Total</strong></td><td><strong>117</strong></td><td><strong>94</strong></td><td><strong>80.3%</strong></td><td><strong>38</strong></td><td><strong>34</strong></td><td><strong>22</strong></td><td><strong>+17</strong></td></tr>
            </tbody>
          </table>
          <ul class="lc-list">
            <li><strong>Use a minimum group size.</strong> LedgerLite shows results only for groups with 5 or more replies. A formula can do this for you: <code>=IF(C2&lt;5,"Hidden",H2)</code>, where C is replies and H is eNPS.</li>
            <li><strong>Watch small groups.</strong> Finance, HR &amp; Admin has only 6 replies. If one promoter became a detractor, its eNPS would fall from +50 to +17.</li>
            <li><strong>Never try to find out who said what.</strong> Do not cut the data by team, gender and level at the same time. Small cuts can point to one person.</li>
            <li><strong>Compare like with like.</strong> The best comparison is the same team in the last survey. Two teams doing very different work are harder to compare.</li>
          </ul>
          <p>Customer Success has an eNPS of −23 and also the highest attrition. That is worth a conversation with the team. It is not yet proof of why people leave.</p>
        </div>
        <div class="lc-card">
          <h3>Use AI to group comments, then check</h3>
          <p>At LedgerLite, 52 of the 94 people wrote a comment. Reading them all takes time. AI can group them into themes quickly. It can also miss sarcasm, mix up themes and invent neat numbers. So the person does the counting check.</p>
          <ol class="lc-list">
            <li>Remove names, team names and details that point to one person, such as "the only woman in QA".</li>
            <li>Use a company-approved AI tool. Many survey tools also have built-in text analysis. Check your tool's current help pages.</li>
            <li>Ask AI for themes, a count for each theme and 2 example comments per theme.</li>
            <li>Read 10 to 15 comments yourself. Check that they sit in the right theme.</li>
            <li>Check that the theme counts add up to the number of comments.</li>
          </ol>
          <p>LedgerLite's checked result gives each comment its main theme: workload 14, career growth 12, pay 10, manager support 6, tools and process 6, other 4. That adds up to 52. The themes match the low item scores for pay and growth.</p>
          <pre><code>Weak: Summarise these comments.

        Better: Here are [52] anonymous survey comments. Group them into 5 to 7
        themes. Give each comment one main theme. Show a count per theme and
        check that the counts add up to [52]. Quote 2 short comments per theme,
        word for word. Do not guess who wrote any comment.</code></pre>
        </div>
        <div class="lc-card">
          <h3>Activity: put the survey analysis steps in order</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Farhan is analysing the January survey. Put his steps in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Check the response rate for the company and for each team.</li>
              <li data-order="2">Hide every group with fewer than 5 replies.</li>
              <li data-order="3">Calculate eNPS and % favourable scores in the spreadsheet.</li>
              <li data-order="4">Remove names and identifying details from the comments.</li>
              <li data-order="5">Ask an approved AI tool to group the comments into themes.</li>
              <li data-order="6">Read a sample of comments and check the theme counts.</li>
              <li data-order="7">Share results with managers and agree on 2 or 3 actions.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to group a set of made-up survey comments into themes, count them and suggest actions. Replace the comments with your own anonymised ones only if your company allows it.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an employee survey analyst. Group these anonymous comments from [a software company's January engagement survey] into themes.

        Comments:
        [1. Too many urgent tickets at the end of each month, no time to breathe.
        2. My lead is helpful but I do not know how to get promoted.
        3. Salary is below what friends get at other companies.
        4. Good team, proud of the product.
        5. The ticket tool is slow and we log the same thing twice.
        6. No clear career path for support roles.
        7. Pay revisions were small this year.
        8. Weekend work has become normal.
        9. Manager listens and fixes problems fast.
        10. I would like more training on new tools.]

        Please:
        1. Create 4 to 6 themes. Give each comment one main theme.
        2. Show a table: theme, count, comment numbers. Check that the counts add up to [10].
        3. Quote one comment per theme word for word.
        4. Suggest one practical action per theme for managers.
        5. Do not guess who wrote any comment or which team they are in.</pre>
            <ul class="ai-try-checks">
              <li>Every comment appears in exactly one theme, and the counts add up.</li>
              <li>Quotes are copied word for word, not rewritten.</li>
              <li>The AI does not guess who wrote a comment.</li>
              <li>Actions are specific and fit the theme, for example a clear promotion path for support roles.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Survey numbers are only useful if people trust the survey. Protect anonymity with a minimum group size, calculate scores in the spreadsheet, and let AI draft comment themes that you check by reading real comments.
        </div>
      HTML
      starter_code: nil
    },
    9 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-hr">HR & Recruitment</div>
          <h1 class="lc-title">Performance and Productivity Data</h1>
        </div>
        <p class="lc-lead">Performance ratings affect pay rises, promotions and sometimes exits. So the numbers behind them must be fair and consistent. In this lesson you will read a ratings distribution, prepare for a calibration meeting and check ratings for patterns that need a closer look. You will also learn how to use productivity data carefully, with context, and what you should never measure. AI can summarise the numbers and suggest questions. Managers and HR must make the decisions about people.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 290" role="img" aria-label="On the left, a bar chart of LedgerLite's FY26 ratings for 98 people: rating 1, 2 people; rating 2, 10; rating 3, 52; rating 4, 26; rating 5, 8. The average is 3.29 and 34.7 percent were rated 4 or 5. On the right, a calibration check of two Engineering teams. Team A, 12 rated: four 5s, six 4s and two 3s, 83 percent rated 4 or 5. Team B, 11 rated: two 4s, seven 3s and two 2s, 18 percent rated 4 or 5. The question is whether the work was different or the standards were different.">
            <g font-family="inherit" font-size="12.5" fill="#e2e0f0" text-anchor="middle">
              <text x="16" y="24" text-anchor="start" font-size="13" font-weight="700">FY26 ratings: 98 people rated</text>
              <line x1="20" y1="240" x2="380" y2="240" stroke="#4b4a78"/>
              <rect x="30" y="233.2" width="50" height="6.8" rx="2" fill="#ec4899"/>
              <rect x="100" y="206" width="50" height="34" rx="2" fill="#f59e0b"/>
              <rect x="170" y="63.2" width="50" height="176.8" rx="2" fill="#8b5cf6"/>
              <rect x="240" y="151.6" width="50" height="88.4" rx="2" fill="#22d3ee"/>
              <rect x="310" y="212.8" width="50" height="27.2" rx="2" fill="#10b981"/>
              <g font-size="11">
                <text x="55" y="227">2 (2.0%)</text>
                <text x="125" y="200">10 (10.2%)</text>
                <text x="195" y="57">52 (53.1%)</text>
                <text x="265" y="145">26 (26.5%)</text>
                <text x="335" y="206">8 (8.2%)</text>
              </g>
              <g font-size="12" font-weight="700">
                <text x="55" y="258">1</text><text x="125" y="258">2</text><text x="195" y="258">3</text><text x="265" y="258">4</text><text x="335" y="258">5</text>
              </g>
              <text x="195" y="280" font-size="11" fill="#9b99b8">1 = does not meet, 5 = outstanding</text>
              <text x="320" y="90" font-size="11.5" font-weight="700" fill="#c4b5fd">Average 3.29</text>
              <text x="320" y="108" font-size="11" fill="#9b99b8">34.7% rated 4 or 5</text>
              <line x1="400" y1="14" x2="400" y2="280" stroke="#4b4a78"/>
              <text x="420" y="24" text-anchor="start" font-size="13" font-weight="700">Calibration: two Engineering teams</text>
              <text x="430" y="56" text-anchor="start" font-size="11.5">Team A (12 rated), average 4.17</text>
              <rect x="430" y="64" width="103.3" height="28" fill="#10b981"/>
              <rect x="533.3" y="64" width="155" height="28" fill="#22d3ee"/>
              <rect x="688.3" y="64" width="51.7" height="28" fill="#8b5cf6"/>
              <text x="430" y="116" text-anchor="start" font-size="11.5">Team B (11 rated), average 3.00</text>
              <rect x="430" y="124" width="56.4" height="28" fill="#22d3ee"/>
              <rect x="486.4" y="124" width="197.2" height="28" fill="#8b5cf6"/>
              <rect x="683.6" y="124" width="56.4" height="28" fill="#f59e0b"/>
              <g font-size="12" font-weight="700" fill="#0f0f24">
                <text x="481.7" y="83">4</text><text x="610.8" y="83">6</text><text x="714.2" y="83">2</text>
                <text x="458.2" y="143">2</text><text x="585" y="143">7</text><text x="711.8" y="143">2</text>
              </g>
              <g font-size="11" text-anchor="start">
                <text x="430" y="182" fill="#9b99b8">Rating:</text>
                <rect x="478" y="172" width="12" height="12" fill="#10b981"/><text x="494" y="182">5</text>
                <rect x="512" y="172" width="12" height="12" fill="#22d3ee"/><text x="528" y="182">4</text>
                <rect x="546" y="172" width="12" height="12" fill="#8b5cf6"/><text x="562" y="182">3</text>
                <rect x="580" y="172" width="12" height="12" fill="#f59e0b"/><text x="596" y="182">2</text>
              </g>
              <g font-size="11.5" text-anchor="start">
                <text x="430" y="208">Rated 4 or 5: Team A 83%, Team B 18%</text>
                <text x="430" y="226" fill="#9b99b8">Company: 35% (34 of 98)</text>
              </g>
              <rect x="420" y="240" width="330" height="36" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="585" y="263" font-weight="700" fill="#fcd34d">Different work, or different standards?</text>
            </g>
          </svg>
          <figcaption>The company shape looks normal. The team view shows a question that calibration must answer with evidence.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Read the ratings distribution</h3>
          <p>A <strong>ratings distribution</strong> shows how many people got each rating. Here is LedgerLite's FY26 cycle (made up). 98 people were rated. 22 were not: 16 joined on or after 1 October 2025, and 6 were on long leave or serving notice.</p>
          <table class="lc-table">
            <thead><tr><th>Rating</th><th>Employees</th><th>Share of rated</th></tr></thead>
            <tbody>
              <tr><td>5 Outstanding</td><td>8</td><td>8.2%</td></tr>
              <tr><td>4 Exceeds expectations</td><td>26</td><td>26.5%</td></tr>
              <tr><td>3 Meets expectations</td><td>52</td><td>53.1%</td></tr>
              <tr><td>2 Partly meets</td><td>10</td><td>10.2%</td></tr>
              <tr><td>1 Does not meet</td><td>2</td><td>2.0%</td></tr>
              <tr><td><strong>Total</strong></td><td><strong>98</strong></td><td><strong>100.0%</strong></td></tr>
            </tbody>
          </table>
          <p>With ratings in column D of the ratings sheet and the summary table in columns A and B:</p>
          <pre><code>Count of 5s:        =COUNTIF(D2:D99,5)          → 8
        Share (copy down):  =B2/SUM($B$2:$B$6)          → 8.2%
        Average rating:     =AVERAGE(D2:D99)            → 3.29  (322 ÷ 98)
        Rated 4 or 5:       =COUNTIF(D2:D99,"&gt;=4")/COUNT(D2:D99)   → 34.7%</code></pre>
          <p>What to look for:</p>
          <ul class="lc-list">
            <li><strong>Too many middle ratings.</strong> If almost everyone gets a 3, the ratings do not help anyone make decisions.</li>
            <li><strong>Very few low ratings.</strong> Only 2 people got a 1. That can be true, or managers may avoid hard talks.</li>
            <li><strong>Differences between managers.</strong> This is what calibration is for.</li>
          </ul>
          <p>Some companies force a fixed curve, such as "only 10% can get a 5". This is called <strong>forced distribution</strong>. It can be unfair in small teams, where a whole team may truly be strong or weak. Use the company shape as a check, not as a rule.</p>
        </div>
        <div class="lc-card">
          <h3>Calibration: one standard for everyone</h3>
          <p><strong>Calibration</strong> is a meeting where managers compare their ratings and the evidence behind them. The goal is that a "4" means the same thing in every team.</p>
          <table class="lc-table">
            <thead><tr><th>Engineering team (made up)</th><th>Rated</th><th>5</th><th>4</th><th>3</th><th>2</th><th>Average</th><th>Rated 4 or 5</th></tr></thead>
            <tbody>
              <tr><td>Team A</td><td>12</td><td>4</td><td>6</td><td>2</td><td>0</td><td>4.17</td><td>83.3%</td></tr>
              <tr><td>Team B</td><td>11</td><td>0</td><td>2</td><td>7</td><td>2</td><td>3.00</td><td>18.2%</td></tr>
            </tbody>
          </table>
          <p>Team A's manager may rate generously. Or Team A may have delivered a hard project. The numbers cannot tell you which. In the meeting, ask each manager for the goals and 2 or 3 real examples for each 4 and 5 rating.</p>
          <p>Also check ratings for patterns across groups. At LedgerLite, 11 of 36 rated women got a 4 or 5 (30.6%). For men it was 23 of 62 (37.1%). The ratio is 30.6 ÷ 37.1 = 0.82. This is not proof of bias, and the groups are small. It is a reason to look at evidence by level and team.</p>
          <ul class="lc-list">
            <li>Check that people on lawful leave, such as maternity leave, are not rated down for time away. Check with HR legal counsel on the rules.</li>
            <li>Check part-time staff are rated on their agreed hours and goals.</li>
            <li>Do not show group results that could point to one person.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Productivity data: context first</h3>
          <p><strong>Productivity data</strong> is any count of work done, such as tickets closed, sales calls made or features shipped. It is useful for planning teams. It is risky for judging people, because a count leaves out the kind of work.</p>
          <table class="lc-table">
            <thead><tr><th>Customer Success, one week (made up)</th><th>Tickets closed</th><th>Main ticket type</th><th>Average CSAT (1 to 5)</th></tr></thead>
            <tbody>
              <tr><td>Agent CS-A</td><td>62</td><td>Password resets</td><td>4.1</td></tr>
              <tr><td>Agent CS-B</td><td>38</td><td>Enterprise escalations</td><td>4.7</td></tr>
            </tbody>
          </table>
          <p>The count says CS-A did more. The context says they did different work. CSAT (customer satisfaction score: how happy customers said they were) is higher for CS-B. Neither number alone is a fair rating.</p>
          <ul class="lc-list">
            <li><strong>Use counts at team level</strong> to plan staffing and fix slow processes.</li>
            <li><strong>Tell people what you track and why.</strong> It builds trust. India's DPDP Act also limits personal data to clear, lawful purposes.</li>
            <li><strong>Do not use surveillance.</strong> Keystroke logging, constant screenshots and badge-swipe times do not measure good work. They also damage trust.</li>
            <li><strong>Never use "emotion AI".</strong> Tools that claim to read engagement or honesty from faces or voices are not reliable. The EU AI Act bans emotion recognition at work, with narrow exceptions.</li>
          </ul>
          <p>This is general information, not legal advice. Check with HR legal counsel before you use any monitoring tool.</p>
          <pre><code>Weak: Rank my team from most to least productive using this ticket data.

        Better: Here is one week of ticket data for [Customer Success], by agent code:
        tickets closed, main ticket type and CSAT. Explain what this data can and
        cannot tell me about performance. List the extra context I need. Do not
        rank or rate any person.</code></pre>
        </div>
        <div class="lc-card">
          <h3>Activity: fair use of performance data?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each use of data into the right group.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="ok" data-label="Fine, with context"></div>
              <div data-sorter-target="bucket" data-bucket="care" data-label="Needs more context first"></div>
              <div data-sorter-target="bucket" data-bucket="no" data-label="Do not use"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="ok" data-why="Team-level counts help plan staffing. No single person is judged.">Weekly tickets closed by the whole Customer Success team, to plan staffing</li>
              <li data-bucket="ok" data-why="This is what calibration is for. Managers then discuss the evidence behind the ratings.">Ratings distribution by team, shared in a calibration meeting</li>
              <li data-bucket="care" data-why="Different agents handle different kinds of tickets. Add ticket type and CSAT before drawing any conclusion.">Tickets closed per agent, compared without ticket type</li>
              <li data-bucket="care" data-why="The gap (0.82) is a reason to look closer, but the groups are small. Check by level and team before concluding.">Share of 4 and 5 ratings for women and men, with 36 women rated</li>
              <li data-bucket="no" data-why="This is surveillance. It does not measure good work, damages trust and raises privacy and legal risks.">Keystroke and screenshot tracking to score each person</li>
              <li data-bucket="no" data-why="These claims are not reliable, and the EU AI Act bans emotion recognition at work with narrow exceptions.">An AI tool that reads faces in video calls to score engagement</li>
              <li data-bucket="no" data-why="More lines of code does not mean more value. Good engineers often remove code.">Lines of code written, used as a performance rating</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Use AI to prepare for a calibration meeting from a ratings table. The AI suggests questions and flags. The managers decide.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an HR business partner. Help me prepare for a performance calibration meeting at [LedgerLite Pvt Ltd, a software company].

        Ratings scale: 5 Outstanding, 4 Exceeds, 3 Meets, 2 Partly meets, 1 Does not meet.
        Ratings by team (counts only, no names):
        [Team | Rated | 5 | 4 | 3 | 2 | 1
        Engineering Team A | 12 | 4 | 6 | 2 | 0 | 0
        Engineering Team B | 11 | 0 | 2 | 7 | 2 | 0
        QA | 11 | 1 | 2 | 6 | 2 | 0
        Customer Success | 12 | 0 | 3 | 7 | 1 | 1]
        Company for comparison: 98 rated, 34.7% rated 4 or 5.

        Please:
        1. For each team, calculate the average rating and the share rated 4 or 5. Show your working.
        2. Flag teams that look very different from the company. Say this may be real or may be different standards.
        3. Write 6 neutral questions I can ask managers about their evidence.
        4. List 3 fairness checks, such as people on leave or part-time staff.
        5. Do not suggest changing any person's rating.</pre>
            <ul class="ai-try-checks">
              <li>Team A's average is 4.17 and Team B's is 3.00 (50 ÷ 12 and 33 ÷ 11).</li>
              <li>The AI does not assume a manager is wrong. It asks for evidence.</li>
              <li>Questions are neutral and the same for every manager.</li>
              <li>No person is ranked, named or re-rated by the AI.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Ratings and productivity numbers raise questions. They do not answer them. Use them to start fair conversations in calibration, always add context, and never use surveillance or "emotion AI" to judge people.
        </div>
      HTML
      starter_code: nil
    },
    10 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-hr">HR & Recruitment</div>
          <h1 class="lc-title">Finding Drivers of Attrition</h1>
        </div>
        <p class="lc-lead">Knowing your attrition rate is not enough. Leaders want to know why people leave and what to do about it. A driver of attrition is a factor linked to people leaving, such as short tenure, low pay in the band or a difficult team. In this lesson you will compare leavers with stayers by tenure, pay position, team and manager. You will use AI to suggest what else could explain a pattern. Most importantly, you will learn why a pattern is not proof of a cause, and how to get stronger evidence before you act.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 290" role="img" aria-label="A comparison of LedgerLite leavers and current staff on three factors. Tenure under 2 years: 66.7 percent of leavers, 16 of 24, against 53.3 percent of current staff, 64 of 120. Paid below band midpoint: 68.4 percent of voluntary leavers, 13 of 19, against 45.0 percent of current staff, 54 of 120. In Customer Success: 25.0 percent of leavers, 6 of 24, against 13.3 percent of current staff, 16 of 120. A side note says this is a pattern, not proof, and lists things to check: level and team, timing of pay data, exit reasons and survey results.">
            <g font-family="inherit" font-size="12.5" fill="#e2e0f0">
              <text x="16" y="24" font-size="13" font-weight="700">Leavers compared with current staff, FY26</text>
              <text x="16" y="74" font-weight="700">Tenure under 2 years</text>
              <rect x="250" y="50" width="186.8" height="18" rx="3" fill="#ec4899"/>
              <rect x="250" y="72" width="149.2" height="18" rx="3" fill="#3b82f6"/>
              <text x="16" y="130" font-weight="700">Paid below midpoint</text>
              <text x="16" y="146" font-size="11" fill="#9b99b8">compa-ratio under 1.00</text>
              <rect x="250" y="112" width="191.5" height="18" rx="3" fill="#ec4899"/>
              <rect x="250" y="134" width="126" height="18" rx="3" fill="#3b82f6"/>
              <text x="16" y="198" font-weight="700">In Customer Success</text>
              <rect x="250" y="174" width="70" height="18" rx="3" fill="#ec4899"/>
              <rect x="250" y="196" width="37.2" height="18" rx="3" fill="#3b82f6"/>
              <line x1="250" y1="42" x2="250" y2="222" stroke="#9b99b8"/>
              <g font-size="11">
                <text x="443" y="63" fill="#f9a8d4">66.7% (16 of 24)</text>
                <text x="405" y="85" fill="#93c5fd">53.3% (64 of 120)</text>
                <text x="448" y="125" fill="#f9a8d4">68.4% (13 of 19)</text>
                <text x="382" y="147" fill="#93c5fd">45.0% (54 of 120)</text>
                <text x="326" y="187" fill="#f9a8d4">25.0% (6 of 24)</text>
                <text x="293" y="209" fill="#93c5fd">13.3% (16 of 120)</text>
              </g>
              <g font-size="11">
                <rect x="16" y="238" width="12" height="12" rx="2" fill="#ec4899"/>
                <text x="34" y="248">Leavers (pay row: 19 voluntary leavers)</text>
                <rect x="300" y="238" width="12" height="12" rx="2" fill="#3b82f6"/>
                <text x="318" y="248">Current staff on 31 Mar 2026</text>
              </g>
              <rect x="590" y="44" width="160" height="176" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <g text-anchor="middle">
                <text x="670" y="68" font-weight="700" fill="#fcd34d">Pattern, not proof</text>
                <g font-size="11">
                  <text x="670" y="94" fill="#9b99b8">Also check:</text>
                  <text x="670" y="116">level and team</text>
                  <text x="670" y="136">timing of pay data</text>
                  <text x="670" y="156">exit reasons</text>
                  <text x="670" y="176">survey results</text>
                  <text x="670" y="204" fill="#6ee7b7">Then test one change.</text>
                </g>
                <text x="380" y="279" font-size="11" fill="#9b99b8">A gap between leavers and stayers shows where to look. It does not show why people left.</text>
              </g>
            </g>
          </svg>
          <figcaption>Leavers at LedgerLite were more often new, paid below the band midpoint and in Customer Success. Each gap is a lead to check, not an answer.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Compare leavers with stayers</h3>
          <p>The basic method is simple. Take one factor. Compare how common it is among leavers and among current staff. A big gap is a possible driver.</p>
          <p><strong>Tenure</strong> (time since joining) is a good place to start. Look at everyone who worked at LedgerLite during FY26: 120 current staff plus 24 leavers = 144 people. For each tenure band, divide leavers by everyone in that band.</p>
          <table class="lc-table">
            <thead><tr><th>Tenure band</th><th>Current staff</th><th>Leavers</th><th>Everyone in FY26</th><th>Leaver share</th></tr></thead>
            <tbody>
              <tr><td>Under 1 year</td><td>34</td><td>8</td><td>42</td><td>19.0%</td></tr>
              <tr><td>1 to under 2 years</td><td>30</td><td>8</td><td>38</td><td><strong>21.1%</strong></td></tr>
              <tr><td>2 to under 3 years</td><td>22</td><td>4</td><td>26</td><td>15.4%</td></tr>
              <tr><td>3 to under 5 years</td><td>20</td><td>3</td><td>23</td><td>13.0%</td></tr>
              <tr><td>5 years or more</td><td>14</td><td>1</td><td>15</td><td>6.7%</td></tr>
              <tr><td><strong>Total</strong></td><td><strong>120</strong></td><td><strong>24</strong></td><td><strong>144</strong></td><td><strong>16.7%</strong></td></tr>
            </tbody>
          </table>
          <p>Leaver share is not the same as the attrition rate, which uses average headcount. It is a simple way to compare groups. People in their first two years leave most often.</p>
          <p><strong>Pay position</strong> is next. Compa-ratio is salary ÷ the midpoint of the pay band. For example, LL-1043 is at L3 and earns ₹15.2 lakh. The L3 midpoint is ₹16.5 lakh, so the compa-ratio is 15.2 ÷ 16.5 = 0.92.</p>
          <table class="lc-table">
            <thead><tr><th>Compa-ratio</th><th>Voluntary leavers (at exit)</th><th>Current staff</th></tr></thead>
            <tbody>
              <tr><td>Below 0.90</td><td>6 (31.6%)</td><td>18 (15.0%)</td></tr>
              <tr><td>0.90 to 0.99</td><td>7 (36.8%)</td><td>36 (30.0%)</td></tr>
              <tr><td>1.00 to 1.09</td><td>4 (21.1%)</td><td>44 (36.7%)</td></tr>
              <tr><td>1.10 and above</td><td>2 (10.5%)</td><td>22 (18.3%)</td></tr>
              <tr><td><strong>Total</strong></td><td><strong>19</strong></td><td><strong>120</strong></td></tr>
            </tbody>
          </table>
          <p>Use only voluntary leavers here. Involuntary exits have different causes. In your sheet, column C is Level and E is annual CTC. A sheet called Bands has Level in column A and Midpoint in column C.</p>
          <pre><code>Compa-ratio (F2, copy down):
        =E2/XLOOKUP(C2,Bands!A2:A6,Bands!C2:C6)

        Share of current staff below 1.00 (gives 45.0%):
        =COUNTIF(F2:F121,"&lt;1")/COUNT(F2:F121)

        Leaver share for a tenure band (leavers in C, everyone in D):
        =C2/D2</code></pre>
        </div>
        <div class="lc-card">
          <h3>Team and manager patterns</h3>
          <p>People often say "people leave managers, not companies". Sometimes that is true. Check it with data, and check it carefully. LedgerLite's Engineering department has four teams of about 13 people each (made up).</p>
          <table class="lc-table">
            <thead><tr><th>Engineering team</th><th>Average headcount</th><th>Leavers</th><th>Attrition</th></tr></thead>
            <tbody>
              <tr><td>Team A</td><td>13</td><td>2</td><td>15.4%</td></tr>
              <tr><td>Team B</td><td>13</td><td>1</td><td>7.7%</td></tr>
              <tr><td>Team C</td><td>13</td><td>5</td><td><strong>38.5%</strong></td></tr>
              <tr><td>Team D</td><td>13</td><td>2</td><td>15.4%</td></tr>
              <tr><td><strong>Engineering</strong></td><td><strong>52</strong></td><td><strong>10</strong></td><td><strong>19.2%</strong></td></tr>
            </tbody>
          </table>
          <p>Team C stands out. But do not blame the manager from one number. Team C may work on skills that other companies are hiring hard for. It may have had a reorganisation or a very hard project. Here is what to check next:</p>
          <ul class="lc-list">
            <li>Exit reasons for Team C's leavers, read together.</li>
            <li>The survey item "My manager supports me" for Team C, only if it had 5 or more replies.</li>
            <li>Stay interviews: short, private talks with current team members about what keeps them and what might make them leave.</li>
          </ul>
          <p>Treat this data with care. Numbers about a manager's team are also personal data about the manager. Share them with the manager and their leader, not in a company-wide report.</p>
        </div>
        <div class="lc-card">
          <h3>Correlation is not cause</h3>
          <p><strong>Correlation</strong> means two things tend to appear together. <strong>Cause</strong> means one thing makes the other happen. A correlation can have another explanation, called a confounder (a third factor that affects both).</p>
          <p>At LedgerLite, junior staff are newer, are often paid lower in their band and also leave more. So level could explain the pay gap. Farhan checks within levels:</p>
          <table class="lc-table">
            <thead><tr><th>Paid below midpoint</th><th>Voluntary leavers</th><th>Current staff</th><th>Gap</th></tr></thead>
            <tbody>
              <tr><td>L1 to L2</td><td>8 of 11 (72.7%)</td><td>26 of 52 (50.0%)</td><td>22.7 points</td></tr>
              <tr><td>L3 to L5</td><td>5 of 8 (62.5%)</td><td>28 of 68 (41.2%)</td><td>21.3 points</td></tr>
            </tbody>
          </table>
          <p>The gap stays within each level. Two other sources point the same way. In exit data, 7 of 19 voluntary leavers named better pay elsewhere. In the survey, only 49% agreed "My pay is fair for my role". Three sources together are stronger evidence. They are still not proof.</p>
          <p>Two more traps. Leavers' pay is from their exit date, but stayers' pay is from 31 March, after any mid-year raises. Also, people may give a polite exit reason, such as pay, instead of the real one.</p>
          <p>The next step is a small, measured action, decided by people. For example: Farhan and finance review pay for the 18 staff below 0.90, then track attrition for two quarters. Avoid AI "flight risk" scores for individual employees. They can label people unfairly. The EU AI Act treats AI used for decisions about workers as high-risk. This is general information, not legal advice.</p>
          <pre><code>Weak: Why do people leave our company? Tell me the main cause.

        Better: Here are FY26 totals comparing leavers and current staff by tenure,
        compa-ratio band, level and team. List the possible drivers. For each one,
        name confounders and the extra data I need to check it. Suggest one small
        action to test. Do not claim any factor causes attrition.</code></pre>
        </div>
        <div class="lc-card">
          <h3>Activity: Farhan looks for drivers</h3>
          <p>Step through how Farhan uses AI to find attrition drivers without jumping to conclusions.</p>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Farhan's prompt">"68.4% of voluntary leavers were paid below their band midpoint. For current staff it is 45.0%. Customer Success has 40% attrition. What drives our attrition?"</li>
              <li data-kind="answer" data-label="AI reply">"Low pay is causing your attrition. Give all Customer Success staff a 15% raise."</li>
              <li data-kind="warn" data-label="Problem">The AI turned a pattern into a cause, and then into a costly action. It did not check for confounders such as level.</li>
              <li data-kind="user" data-label="Follow-up">"Do not claim causes. What else could explain this pattern? Which table should I build to check?"</li>
              <li data-kind="answer" data-label="AI reply">The AI lists level, tenure, team and the timing of pay data. It suggests comparing leavers and stayers within each level.</li>
              <li data-kind="tool" data-label="Google Sheets">Farhan builds a pivot table of compa-ratio by level for voluntary leavers and current staff.</li>
              <li data-kind="result" data-label="Sheet result">L1 to L2: 72.7% of leavers vs 50.0% of staff below midpoint. L3 to L5: 62.5% vs 41.2%.</li>
              <li data-kind="check" data-label="Farhan decides">The gap holds within levels, and exit reasons agree. Farhan proposes a pay review for the 18 staff below 0.90, with finance and leaders deciding.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Give AI a leavers-versus-stayers summary and ask for possible drivers, confounders and tests. Use totals only, never a list of named employees.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a people analytics adviser. Help me find possible drivers of attrition at [LedgerLite Pvt Ltd, a 120-person software company in Karnataka] for [FY26].

        Summary (totals only):
        [Factor | Leavers | Current staff
        Tenure under 2 years | 16 of 24 | 64 of 120
        Paid below band midpoint (voluntary leavers only) | 13 of 19 | 54 of 120
        In Customer Success | 6 of 24 | 16 of 120
        Top exit reasons (19 voluntary): better pay 7, career growth 5, relocation 3, higher studies 2, manager or team 2
        Survey, % favourable: pay is fair 49%, path to grow 54%, workload manageable 61%]

        Please:
        1. Turn each count into a percentage and show the gap in points.
        2. Rank the possible drivers by strength of evidence. Explain why.
        3. For each driver, name 2 confounders and the extra data that would check it.
        4. Suggest 2 small actions to test, with how I will measure the result.
        5. Use careful words like "linked to". Do not say any factor causes attrition.</pre>
            <ul class="ai-try-checks">
              <li>Percentages are right: 66.7% vs 53.3%, 68.4% vs 45.0%, 25.0% vs 13.3%.</li>
              <li>The AI uses words like "linked to", not "causes".</li>
              <li>Confounders make sense, for example level, team or when pay was measured.</li>
              <li>Actions are small and measurable, and people make the final decision.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Compare leavers with stayers to find where to look, then check for confounders before you believe a cause. Stronger evidence comes when several sources agree and a small, measured change works.
        </div>
      HTML
      starter_code: nil
    },
    11 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-hr">HR & Recruitment</div>
          <h1 class="lc-title">Pay Equity Analysis</h1>
        </div>
        <p class="lc-lead"><strong>Pay equity</strong> means people who do the same or similar work get fair pay, whatever their gender or other personal group. A pay equity analysis checks this with data. It is easy to get wrong. A company-wide average can show a big gap that is really about who works in senior roles. It can also hide a real gap inside one team. In this lesson you will compare like with like: the same level and the same role. You will use the compa-ratio, protect small groups and plan careful next steps. AI helps you plan the analysis and write formulas. People review each case and decide.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 310" role="img" aria-label="Three panels from left to right. Panel 1, whole company: women average 14.6 lakh rupees, men 17.4 lakh, a raw gap of 16.1 percent that mixes junior and senior roles. Panel 2, same level: gaps of 3.0, 2.8, 4.8 and 2.4 percent for levels L1 to L4, with L3 highlighted and L5 not shown because only 2 women are in it. Panel 3, same level and role, Engineering L3 Senior Engineers: average compa-ratio 0.96 for 6 women and 1.03 for 12 men, with 4 people below 0.90 to review one by one.">
            <defs><marker id="hra11a" markerWidth="8" markerHeight="8" refX="7" refY="4" orient="auto"><path d="M0,0 L8,4 L0,8 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12.5" fill="#e2e0f0" text-anchor="middle">
              <text x="16" y="24" text-anchor="start" font-size="13" font-weight="700">From a raw gap to a like-for-like comparison (LedgerLite, made up)</text>
              <rect x="10" y="40" width="226" height="220" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="123" y="64" font-weight="700" fill="#f9a8d4">1. Whole company</text>
              <text x="123" y="84" font-size="11" fill="#9b99b8">average CTC, ₹ lakh a year</text>
              <g font-size="11.5" text-anchor="start">
                <text x="22" y="120">Women</text>
                <rect x="72" y="108" width="84" height="16" rx="3" fill="#8b5cf6"/>
                <text x="162" y="120">14.6</text>
                <text x="22" y="152">Men</text>
                <rect x="72" y="140" width="100" height="16" rx="3" fill="#3b82f6"/>
                <text x="178" y="152">17.4</text>
              </g>
              <text x="123" y="190" font-weight="700" fill="#f9a8d4">Raw gap: 16.1%</text>
              <text x="123" y="214" font-size="11" fill="#9b99b8">Mixes junior and senior</text>
              <text x="123" y="232" font-size="11" fill="#9b99b8">roles. Not like with like.</text>
              <rect x="267" y="40" width="226" height="220" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="380" y="64" font-weight="700" fill="#c4b5fd">2. Same level</text>
              <text x="380" y="84" font-size="11" fill="#9b99b8">gap in average CTC</text>
              <g font-size="11.5">
                <text x="380" y="112">L1: 3.0%</text>
                <text x="380" y="134">L2: 2.8%</text>
                <text x="380" y="156" font-weight="700" fill="#fcd34d">L3: 4.8% (largest)</text>
                <text x="380" y="178">L4: 2.4%</text>
                <text x="380" y="200" fill="#9b99b8">L5: not shown</text>
              </g>
              <text x="380" y="224" font-size="11" fill="#9b99b8">only 2 women at L5, so</text>
              <text x="380" y="242" font-size="11" fill="#9b99b8">review those cases privately</text>
              <rect x="524" y="40" width="226" height="220" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="637" y="64" font-weight="700" fill="#6ee7b7">3. Same level and role</text>
              <text x="637" y="84" font-size="11" fill="#9b99b8">Engineering, L3 Senior Engineer</text>
              <text x="637" y="112" font-size="11.5">Average compa-ratio</text>
              <text x="637" y="136" font-size="11.5">Women (6): 0.96</text>
              <text x="637" y="158" font-size="11.5">Men (12): 1.03</text>
              <text x="637" y="190" font-weight="700" fill="#6ee7b7">4 people below 0.90</text>
              <text x="637" y="214" font-size="11" fill="#9b99b8">3 women, 1 man</text>
              <text x="637" y="232" font-size="11" fill="#9b99b8">Review each case by hand</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#hra11a)">
                <line x1="238" y1="150" x2="263" y2="150"/><line x1="495" y1="150" x2="520" y2="150"/>
              </g>
              <text x="380" y="286" font-size="11" fill="#9b99b8">Gap = (men's average − women's average) ÷ men's average</text>
              <text x="380" y="303" font-size="11" fill="#9b99b8">Compa-ratio = salary ÷ band midpoint. L3 midpoint: ₹16.5 lakh.</text>
            </g>
          </svg>
          <figcaption>The raw gap is a signal to look closer, not a finding. The real question is answered by comparing the same level and the same role.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Three numbers you need</h3>
          <p>LedgerLite pays by level. Each level has a pay band with a minimum, a midpoint and a maximum. CTC (cost to company) is the total yearly pay cost for one employee. All the numbers below are made up.</p>
          <table class="lc-table">
            <thead><tr><th>Term</th><th>Meaning</th><th>LedgerLite example</th></tr></thead>
            <tbody>
              <tr><td><strong>Raw pay gap</strong></td><td>The difference between two groups' average pay across the whole company</td><td>Women ₹14.6 lakh, men ₹17.4 lakh. Gap = (17.4 − 14.6) ÷ 17.4 = 16.1%.</td></tr>
              <tr><td><strong>Like-for-like gap</strong></td><td>The same difference, but only inside one level and one role</td><td>Engineering L3 Senior Engineers: gap 7.1%</td></tr>
              <tr><td><strong>Compa-ratio</strong></td><td>Salary ÷ the midpoint of the person's pay band. 1.00 means exactly at the midpoint.</td><td>LL-1043, L3, ₹15.2 lakh: 15.2 ÷ 16.5 = 0.92</td></tr>
            </tbody>
          </table>
          <p>Why is the raw gap so large? Women are 40.0% of staff at L1 to L3, but only 26.7% at L4 and L5. Senior levels pay more, so the company average for women is lower. This is a real issue about who reaches senior roles. But it is a different issue from equal pay for the same work. Report both, and keep them separate.</p>
          <p>Use gender data that employees chose to share in the HRMS. Never guess it from names. If some people chose another option or did not say, keep them in the data. Report their group only if it has 5 or more people.</p>
        </div>
        <div class="lc-card">
          <h3>Compare like with like, step by step</h3>
          <p>Farhan builds a pay sheet inside LedgerLite's own secure spreadsheet. Columns: A Code, B Department, C Level, D Role, E Gender, F CTC (₹ lakh), G Compa-ratio. A Bands tab holds A Level, B Min, C Midpoint, D Max.</p>
          <pre><code>Compa-ratio for each person (G2):
        =F2/XLOOKUP(C2,Bands!A:A,Bands!C:C)

        Group size (women, Engineering, L3):
        =COUNTIFS(B:B,"Engineering",C:C,"L3",E:E,"Woman")

        Average compa-ratio for that group:
        =AVERAGEIFS(G:G,B:B,"Engineering",C:C,"L3",E:E,"Woman")

        Like-for-like gap in average CTC:
        =1-AVERAGEIFS(F:F,B:B,"Engineering",C:C,"L3",E:E,"Woman")
          /AVERAGEIFS(F:F,B:B,"Engineering",C:C,"L3",E:E,"Man")

        People below 0.90 in the group:
        =COUNTIFS(B:B,"Engineering",C:C,"L3",G:G,"&lt;0.9")</code></pre>
          <p>Type the gap formula on one line. On LedgerLite's made-up data the results are: group size 6, average compa-ratio 0.96 (men: 12 people, 1.03), gap 7.1% (₹15.8 lakh against ₹17.0 lakh), and 4 people below 0.90.</p>
          <table class="lc-table">
            <thead><tr><th>Level</th><th>Women (n)</th><th>Women avg CTC</th><th>Men (n)</th><th>Men avg CTC</th><th>Gap</th></tr></thead>
            <tbody>
              <tr><td>L1</td><td>9</td><td>₹6.4 lakh</td><td>13</td><td>₹6.6 lakh</td><td>3.0%</td></tr>
              <tr><td>L2</td><td>12</td><td>₹10.3 lakh</td><td>18</td><td>₹10.6 lakh</td><td>2.8%</td></tr>
              <tr><td>L3</td><td>15</td><td>₹16.0 lakh</td><td>23</td><td>₹16.8 lakh</td><td>4.8%</td></tr>
              <tr><td>L4</td><td>6</td><td>₹24.6 lakh</td><td>14</td><td>₹25.2 lakh</td><td>2.4%</td></tr>
              <tr><td>L5</td><td>2</td><td colspan="4">Not shown. Fewer than 5 women. Review these cases privately.</td></tr>
            </tbody>
          </table>
          <p>Next, Farhan asks what could explain the Engineering L3 gap. He checks factors that are fair to use. Time at L3 is similar: women 1.9 years on average, men 2.1 years. Ratings are similar: 2 of 6 women and 4 of 12 men were rated 4 or 5. So these do not explain the gap. All 4 people below 0.90 were hired with offers set as a percentage rise on their last salary. That may have carried an old gap into LedgerLite. It is a possible cause to check, not a proven one.</p>
        </div>
        <div class="lc-card">
          <h3>Using AI safely, and deciding next steps</h3>
          <p>Pay is among the most sensitive data HR holds. Do not paste salaries, names or employee codes into a public AI tool. Give AI the column names and a few made-up rows. Run the real analysis in your own sheet.</p>
          <pre><code>Weak: Here is our salary file. Is there a gender pay gap?

        Better: I am doing a pay equity review for a 120-person software company.
        My sheet has columns: Code, Department, Level, Role, Gender, CTC, Compa-ratio.
        Plan a like-for-like analysis: which groups to compare, the formulas
        (Google Sheets), a minimum group size of 5, and which fair factors to
        check (time in level, rating). Show the plan on 8 made-up rows.
        Do not draw conclusions about causes.</code></pre>
          <p>Then decide next steps with the right people: HR, finance, the business head and legal counsel. For LedgerLite, the options are:</p>
          <table class="lc-table">
            <thead><tr><th>Option</th><th>Cost per year (made up)</th><th>What to check</th></tr></thead>
            <tbody>
              <tr><td>Raise the 4 people below 0.90 to at least 0.90</td><td>₹90,000</td><td>Each case is reviewed. The reason for each raise is written down.</td></tr>
              <tr><td>Raise the same 4 people to at least 0.95</td><td>₹4.2 lakh</td><td>Fits the budget. Treats all 4 the same way.</td></tr>
              <tr><td>Fix the cause: set offers from the band, not from the last salary</td><td>No direct cost</td><td>Offer approvals show the band position of each new offer</td></tr>
            </tbody>
          </table>
          <p>Speak with care. Say "we found a gap that we cannot explain yet", not "managers are biased". In India, the Code on Wages bans pay discrimination based on gender for the same or similar work. It is one of the four Labour Codes in force since 21 November 2025. Other places have their own rules. For example, EU countries had to bring the EU Pay Transparency Directive into national law by June 2026, and many are late. This is general information, not legal advice. Check with your HR legal counsel.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: like with like?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Farhan's team suggests these comparisons. Sort each one.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="fair" data-label="Fair comparison"></div>
              <div data-sorter-target="bucket" data-bucket="unfair" data-label="Not like with like"></div>
              <div data-sorter-target="bucket" data-bucket="small" data-label="Group too small to report"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="fair" data-why="Same department, same level and same role. This is the core pay equity check.">Women and men who are Engineering L3 Senior Engineers</li>
              <li data-bucket="unfair" data-why="It mixes L1 and L5 roles. It shows who reaches senior roles, not equal pay for the same work.">Average pay of all women against all men in the company</li>
              <li data-bucket="small" data-why="Only 2 women are at L5. Any average would reveal their pay. Review these cases privately.">Women and men at L5</li>
              <li data-bucket="unfair" data-why="Sales and Engineering are different roles with different markets. Compare within a role.">Sales L3 staff against Engineering L3 staff</li>
              <li data-bucket="fair" data-why="Compa-ratio inside one level and role is a fair way to compare. Both groups have 5 or more people.">Average compa-ratio of women and men who are L2 Engineers</li>
              <li data-bucket="small" data-why="Finance, HR and Admin has 9 people. Splitting L3 there by gender would expose individuals.">Women and men at L3 in Finance, HR &amp; Admin</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to plan a careful, like-for-like pay equity review. Use summary numbers or made-up data only, never real salaries.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a careful pay equity analyst. You help HR teams who use spreadsheets, not code.

        Company: [LedgerLite Pvt Ltd, 120 staff, software, Karnataka]. Pay is set by level bands. L3 band: [min 13.0, midpoint 16.5, max 20.0 lakh rupees].
        Summary (no names): [Engineering L3 Senior Engineers. Women: 6, average CTC 15.8 lakh. Men: 12, average CTC 17.0 lakh. Average time at L3: women 1.9 years, men 2.1 years. Rated 4 or 5: women 2 of 6, men 4 of 12. People below compa-ratio 0.90: 3 women, 1 man.]

        Please:
        1. Calculate the gap in average CTC and each group's average compa-ratio. Show the working.
        2. Say which fair factors in the summary could explain the gap, and whether they do.
        3. List other fair factors to check, and factors that must never be used.
        4. Give 3 next-step options with a rough cost method and the risks of each.
        5. Write a 120-word note for leaders in a calm, careful tone. Do not blame anyone.

        Rules: do not state causes as facts. Say this is not legal advice.</pre>
            <ul class="ai-try-checks">
              <li>The gap is (17.0 − 15.8) ÷ 17.0 = 7.1%, and the compa-ratios are about 0.96 and 1.03.</li>
              <li>Time at level and ratings are checked, and the AI says they do not explain the gap.</li>
              <li>Gender and marital status are never fair reasons. "Last salary" is not accepted as a reason on its own.</li>
              <li>The leader note is calm and says what is known, what is not, and what happens next.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A raw pay gap tells you where to look, not what is wrong. Compare the same level and role, check fair factors, protect small groups, and let people review each case before anyone's pay changes.
        </div>
      HTML
      starter_code: nil
    },
    12 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-hr">HR & Recruitment</div>
          <h1 class="lc-title">Workforce Planning</h1>
        </div>
        <p class="lc-lead"><strong>Workforce planning</strong> means working out how many people, with which skills, you will need, and when. It links the business plan to a hiring plan. Without it, teams hire late, in a rush, and at a higher cost. In this lesson you will plan LedgerLite's next year, FY27, from its FY26 data. You will compare demand (the people the business needs) with supply (the people you will still have). Then you will build scenarios, set hiring dates and plan skills. AI helps you set up the sheet and test ideas. Leaders own the final numbers.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="A bar chart for LedgerLite's FY27 base plan: 120 employees now, about 26 expected leavers, 94 staying, 40 hires needed, and a target of 134 by 31 March 2027. On the right, three scenarios: same attrition as FY26 needs 40 hires costing 34.0 lakh rupees; Customer Success attrition cut to 20 percent needs 37 hires costing 31.45 lakh; a tough market with 25 percent attrition needs 46 hires costing 39.1 lakh.">
            <g font-family="inherit" font-size="12.5" fill="#e2e0f0" text-anchor="middle">
              <text x="16" y="22" text-anchor="start" font-size="13" font-weight="700">FY27 base plan: how many hires?</text>
              <line x1="25" y1="250" x2="475" y2="250" stroke="#4b4a78"/>
              <rect x="40" y="70" width="60" height="180" rx="4" fill="#3b82f6"/>
              <text x="70" y="63" font-weight="700">120</text>
              <rect x="130" y="70" width="60" height="39" rx="4" fill="#ec4899"/>
              <text x="160" y="63" font-weight="700" fill="#f9a8d4">−26</text>
              <rect x="220" y="109" width="60" height="141" rx="4" fill="#8b5cf6"/>
              <text x="250" y="102" font-weight="700">94</text>
              <rect x="310" y="49" width="60" height="60" rx="4" fill="#10b981"/>
              <text x="340" y="42" font-weight="700" fill="#6ee7b7">+40</text>
              <rect x="400" y="49" width="60" height="201" rx="4" fill="#22d3ee"/>
              <text x="430" y="42" font-weight="700">134</text>
              <g stroke="#9b99b8" stroke-width="1" stroke-dasharray="4 3">
                <line x1="100" y1="70" x2="130" y2="70"/><line x1="190" y1="109" x2="220" y2="109"/><line x1="280" y1="109" x2="310" y2="109"/><line x1="370" y1="49" x2="400" y2="49"/>
              </g>
              <g font-size="11" fill="#9b99b8">
                <text x="70" y="268">Now</text><text x="160" y="268">Leavers</text><text x="250" y="268">Staying</text><text x="340" y="268">Hires</text><text x="430" y="268">Target</text>
                <text x="70" y="283">31 Mar 2026</text><text x="160" y="283">expected</text><text x="250" y="283">(supply)</text><text x="340" y="283">needed</text><text x="430" y="283">(demand)</text>
              </g>
              <rect x="500" y="36" width="250" height="220" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="625" y="60" font-weight="700" fill="#fcd34d">Three scenarios</text>
              <g font-size="11.5">
                <text x="625" y="92" font-weight="700">A. Same attrition as FY26</text>
                <text x="625" y="112" fill="#9b99b8">26 leavers · 40 hires · ₹34.0L</text>
                <text x="625" y="146" font-weight="700" fill="#6ee7b7">B. Customer Success at 20%</text>
                <text x="625" y="166" fill="#9b99b8">23 leavers · 37 hires · ₹31.45L</text>
                <text x="625" y="200" font-weight="700" fill="#f9a8d4">C. Tough market: 25% for all</text>
                <text x="625" y="220" fill="#9b99b8">32 leavers · 46 hires · ₹39.1L</text>
              </g>
              <text x="625" y="244" font-size="10.5" fill="#9b99b8">Hiring cost at ₹85,000 per hire</text>
              <text x="625" y="283" font-size="11" fill="#c4b5fd">Hires = growth + expected leavers</text>
            </g>
          </svg>
          <figcaption>Hires needed = the target headcount minus the people who will stay. Scenarios show how much the answer moves if attrition changes.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Demand and supply, in plain words</h3>
          <p><strong>Demand</strong> is the number of people each team needs to deliver the business plan. <strong>Supply</strong> is the number of people you will still have if you hire no one. The gap between them is your hiring plan.</p>
          <p>Farhan starts in March 2026 with LedgerLite's business plan for FY27 (1 April 2026 to 31 March 2027). Good demand numbers come from a <strong>driver</strong>: a business number that decides how many people a team needs.</p>
          <table class="lc-table">
            <thead><tr><th>Team</th><th>Driver (made up)</th><th>Now</th><th>FY27 target</th></tr></thead>
            <tbody>
              <tr><td>Customer Success</td><td>800 customers today, 1,000 planned. Each person looks after about 50 customers. 1,000 ÷ 50 = 20.</td><td>16</td><td>20</td></tr>
              <tr><td>Engineering</td><td>Product roadmap: a new AI features team and 3 open roles</td><td>56</td><td>62</td></tr>
              <tr><td>Sales &amp; Marketing</td><td>One more sales region, including 1 open role</td><td>14</td><td>16</td></tr>
              <tr><td>Product &amp; Design, Finance, HR &amp; Admin</td><td>+1 each for the bigger product and company</td><td>12, 9</td><td>13, 10</td></tr>
              <tr><td>QA</td><td>More test automation, so no growth</td><td>13</td><td>13</td></tr>
            </tbody>
          </table>
          <p>The total target is 134, up 14 from 120. The 6 open positions at 31 March 2026 are part of these 14. Leaders must agree these targets. HR does not set them alone.</p>
        </div>
        <div class="lc-card">
          <h3>Build the plan in a spreadsheet</h3>
          <p>Supply falls because some people will leave. Farhan estimates leavers for each team from its FY26 attrition rate. He uses the FY27 average headcount: (now + target) ÷ 2.</p>
          <pre><code>Columns: A Team, B Now, C Target, D FY26 attrition rate
        Expected leavers (E2):  =ROUND(D2*(B2+C2)/2,0)
        Hires needed (F2):      =C2-B2+E2
        Hiring cost (G2):       =F2*85000</code></pre>
          <table class="lc-table">
            <thead><tr><th>Team</th><th>Now</th><th>Target</th><th>FY26 attrition</th><th>Expected leavers</th><th>Hires needed</th></tr></thead>
            <tbody>
              <tr><td>Engineering</td><td>56</td><td>62</td><td>19.2%</td><td>11</td><td>17</td></tr>
              <tr><td>Product &amp; Design</td><td>12</td><td>13</td><td>18.2%</td><td>2</td><td>3</td></tr>
              <tr><td>QA</td><td>13</td><td>13</td><td>24.0%</td><td>3</td><td>3</td></tr>
              <tr><td>Customer Success</td><td>16</td><td>20</td><td>40.0%</td><td>7</td><td>11</td></tr>
              <tr><td>Sales &amp; Marketing</td><td>14</td><td>16</td><td>15.4%</td><td>2</td><td>4</td></tr>
              <tr><td>Finance, HR &amp; Admin</td><td>9</td><td>10</td><td>11.8%</td><td>1</td><td>2</td></tr>
              <tr><td><strong>Total</strong></td><td><strong>120</strong></td><td><strong>134</strong></td><td></td><td><strong>26</strong></td><td><strong>40</strong></td></tr>
            </tbody>
          </table>
          <p>Check one row by hand. Customer Success: 40% × (16 + 20) ÷ 2 = 40% × 18 = 7.2, so about 7 leavers. Hires = 20 − 16 + 7 = 11. Look at what this means. Customer Success must hire 11 people to grow by 4. Most of its hiring only replaces leavers.</p>
          <p>Now test scenarios. A <strong>scenario</strong> is a "what if" version of the plan. If a retention plan cuts Customer Success attrition to 20%, it loses about 4 people, not 7. Total hires fall to 37, and hiring costs fall from ₹34.0 lakh to ₹31.45 lakh. If the job market gets tough and every team loses 25%, leavers rise to about 32. That is 25% × 127, the average of 120 and 134. Hires rise to 46 and cost ₹39.1 lakh. These are estimates. Real attrition will differ.</p>
        </div>
        <div class="lc-card">
          <h3>Timing and skills</h3>
          <p>A plan also needs dates. At LedgerLite, time to fill (approval to accepted offer) was 45 days in FY26. New hires then served about 60 days of notice at their old company. Say Divya needs a new engineer to start on 1 October 2026. Then the role must be approved by about 18 June 2026, which is 105 days earlier.</p>
          <p>Numbers are not enough. You also need the right <strong>skills</strong>. The new AI features team needs 6 people with data and machine learning skills. A skills check (self-reported, then confirmed by managers) finds 2 today. Farhan compares four ways to close the gap:</p>
          <table class="lc-table">
            <thead><tr><th>Option</th><th>Meaning</th><th>LedgerLite plan</th></tr></thead>
            <tbody>
              <tr><td><strong>Build</strong></td><td>Train current staff</td><td>2 L2 or L3 engineers join a 6-month training path</td></tr>
              <tr><td><strong>Buy</strong></td><td>Hire from outside</td><td>2 of Engineering's 17 hires</td></tr>
              <tr><td><strong>Borrow</strong></td><td>Use contractors or partners for a time</td><td>Only if the hires are late</td></tr>
              <tr><td><strong>Redeploy</strong></td><td>Move people from other teams</td><td>Ask for volunteers first. No one is moved without a talk.</td></tr>
            </tbody>
          </table>
          <p>AI is useful here. It can suggest drivers, set up the scenario sheet and list skills for a new team. It cannot know your business plan or your market. Check its formulas on one row by hand. Review the plan every quarter with real joiners and leavers.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: build the plan in order</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put Farhan's FY27 workforce planning steps in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Agree the FY27 business plan with leaders: customers, products and new regions</li>
              <li data-order="2">Turn the plan into a target headcount for each team, using drivers</li>
              <li data-order="3">Estimate expected leavers in each team from FY26 attrition rates</li>
              <li data-order="4">Calculate hires needed: growth plus expected leavers</li>
              <li data-order="5">Build scenarios and cost each one</li>
              <li data-order="6">Set approval dates from time to fill and notice periods</li>
              <li data-order="7">Review the plan every quarter against real joiners and leavers</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to build a simple workforce plan with scenarios from summary numbers. Use your own team totals or the made-up LedgerLite data.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a workforce planning coach for HR teams who use spreadsheets, not code.

        Company: [LedgerLite Pvt Ltd, software, Karnataka]. Plan year: [FY27, April 2026 to March 2027].
        Team | Now | Target | Last year's attrition
        [Engineering | 56 | 62 | 19.2%
        Customer Success | 16 | 20 | 40.0%
        QA | 13 | 13 | 24.0%
        Sales and Marketing | 14 | 16 | 15.4%]
        Cost per hire: [85,000 rupees]. Time to fill: [45 days]. Notice period of new hires: [about 60 days].

        Please:
        1. For each team: expected leavers = rate x (now + target) / 2, rounded. Hires = target - now + leavers. Show the working.
        2. Give Google Sheets formulas for these columns.
        3. Build 2 scenarios: [the team with the highest attrition cuts it by half] and [all teams at 25%]. Show hires and cost for each.
        4. Say by what date a role needed on [1 October 2026] must be approved.
        5. List 4 risks in this plan and what to watch each quarter.

        Mark every assumption. Do not invent market data.</pre>
            <ul class="ai-try-checks">
              <li>Check one team by hand. For Customer Success: 40% × 18 = 7.2, so 7 leavers and 11 hires.</li>
              <li>Hires include replacements, not only growth.</li>
              <li>The approval date allows for both time to fill and notice (105 days gives about 18 June 2026).</li>
              <li>Assumptions are marked, and no market numbers are invented.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Hires needed = growth + expected leavers. A team with high attrition uses most of its hiring just to replace leavers. So a good retention plan is often the cheapest part of a workforce plan.
        </div>
      HTML
      starter_code: nil
    },
    13 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-hr">HR & Recruitment</div>
          <h1 class="lc-title">HR Dashboards and Reports</h1>
        </div>
        <p class="lc-lead">An <strong>HR dashboard</strong> is one page of charts and numbers that shows the state of your workforce. A <strong>people report</strong> adds words: what changed, why it matters and what to do. Leaders are busy. A clear page with five good numbers helps them more than twenty charts. In this lesson you will choose the right metrics, pick the right chart for each one and write a monthly people report with AI. You will also learn to check every number before the report goes out.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="A mock-up of LedgerLite's people dashboard for March 2026. Five number tiles: headcount 120, joiners 4 and leavers 3 in March, 12-month attrition 21.4 percent, 6 open positions, and eNPS plus 17. Below, a line chart of month-end headcount rising from 108 in April 2025 to 120 in March 2026, and a bar chart of FY26 attrition by team with Customer Success highlighted at 40 percent.">
            <g font-family="inherit" font-size="12.5" fill="#e2e0f0" text-anchor="middle">
              <text x="16" y="26" text-anchor="start" font-size="13" font-weight="700">LedgerLite people dashboard · March 2026 (made up)</text>
              <rect x="10" y="42" width="140" height="64" rx="8" fill="#27274e" stroke="#3b82f6"/>
              <text x="80" y="60" font-size="11" fill="#9b99b8">Headcount</text>
              <text x="80" y="83" font-size="17" font-weight="700">120</text>
              <text x="80" y="99" font-size="10" fill="#9b99b8">+1 vs February</text>
              <rect x="160" y="42" width="140" height="64" rx="8" fill="#27274e" stroke="#10b981"/>
              <text x="230" y="60" font-size="11" fill="#9b99b8">Joiners · leavers</text>
              <text x="230" y="83" font-size="17" font-weight="700">4 · 3</text>
              <text x="230" y="99" font-size="10" fill="#9b99b8">in March</text>
              <rect x="310" y="42" width="140" height="64" rx="8" fill="#27274e" stroke="#ec4899"/>
              <text x="380" y="60" font-size="11" fill="#9b99b8">Attrition, 12 months</text>
              <text x="380" y="83" font-size="17" font-weight="700">21.4%</text>
              <text x="380" y="99" font-size="10" fill="#9b99b8">March alone: 2.5%</text>
              <rect x="460" y="42" width="140" height="64" rx="8" fill="#27274e" stroke="#8b5cf6"/>
              <text x="530" y="60" font-size="11" fill="#9b99b8">Open positions</text>
              <text x="530" y="83" font-size="17" font-weight="700">6</text>
              <text x="530" y="99" font-size="10" fill="#9b99b8">time to fill: 45 days</text>
              <rect x="610" y="42" width="140" height="64" rx="8" fill="#27274e" stroke="#f59e0b"/>
              <text x="680" y="60" font-size="11" fill="#9b99b8">eNPS (Jan survey)</text>
              <text x="680" y="83" font-size="17" font-weight="700">+17</text>
              <text x="680" y="99" font-size="10" fill="#9b99b8">Cust. Success: −23</text>
              <rect x="10" y="118" width="360" height="176" rx="8" fill="#1f1f44" stroke="#4b4a78"/>
              <text x="24" y="138" text-anchor="start" font-size="12" font-weight="700">Month-end headcount</text>
              <line x1="30" y1="270" x2="360" y2="270" stroke="#4b4a78"/>
              <polyline fill="none" stroke="#22d3ee" stroke-width="2.5" points="40,242 69,228 98,221 127,207 156,207 185,200 214,193 243,186 272,179 301,172 330,165 359,158"/>
              <g fill="#22d3ee"><circle cx="40" cy="242" r="3.5"/><circle cx="359" cy="158" r="3.5"/></g>
              <text x="40" y="230" font-size="11">108</text>
              <text x="345" y="152" font-size="11">120</text>
              <g font-size="9.5" fill="#9b99b8">
                <text x="40" y="285">A</text><text x="69" y="285">M</text><text x="98" y="285">J</text><text x="127" y="285">J</text><text x="156" y="285">A</text><text x="185" y="285">S</text>
                <text x="214" y="285">O</text><text x="243" y="285">N</text><text x="272" y="285">D</text><text x="301" y="285">J</text><text x="330" y="285">F</text><text x="359" y="285">M</text>
              </g>
              <text x="200" y="138" text-anchor="start" font-size="10" fill="#9b99b8">Apr 2025 to Mar 2026</text>
              <rect x="390" y="118" width="360" height="176" rx="8" fill="#1f1f44" stroke="#4b4a78"/>
              <text x="404" y="138" text-anchor="start" font-size="12" font-weight="700">FY26 attrition by team</text>
              <g font-size="11" text-anchor="start">
                <text x="402" y="168">Engineering</text><text x="402" y="189">Product &amp; Design</text><text x="402" y="210">QA</text>
                <text x="402" y="231" fill="#fcd34d">Cust. Success</text><text x="402" y="252">Sales &amp; Mktg</text><text x="402" y="273">Fin, HR, Admin</text>
              </g>
              <g fill="#8b5cf6">
                <rect x="510" y="158" width="76.8" height="13" rx="2"/><rect x="510" y="179" width="72.8" height="13" rx="2"/><rect x="510" y="200" width="96" height="13" rx="2"/>
                <rect x="510" y="221" width="160" height="13" rx="2" fill="#f59e0b"/><rect x="510" y="242" width="61.6" height="13" rx="2"/><rect x="510" y="263" width="47.2" height="13" rx="2"/>
              </g>
              <g font-size="10.5" text-anchor="start" fill="#9b99b8">
                <text x="592" y="168">19.2%</text><text x="588" y="189">18.2%</text><text x="612" y="210">24.0%</text>
                <text x="676" y="231" fill="#fcd34d">40.0%</text><text x="577" y="252">15.4%</text><text x="563" y="273">11.8%</text>
              </g>
            </g>
          </svg>
          <figcaption>Number tiles give the headline. A line chart shows the trend over time. A bar chart compares teams and makes the problem team easy to see.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Choose a few metrics, and define them once</h3>
          <p>Start with the audience. Leaders want a few numbers, the trend and the decisions they must make. Managers want their own team's numbers and what they can do. Pick 5 to 8 metrics that link to real decisions. Then write a <strong>metric dictionary</strong>: one table that defines each metric, so every report counts it the same way.</p>
          <table class="lc-table">
            <thead><tr><th>Metric</th><th>Definition and formula</th><th>Source</th><th>March 2026 (made up)</th></tr></thead>
            <tbody>
              <tr><td>Headcount</td><td>Employees on payroll on the last day of the month. Contractors are not counted.</td><td>HRMS</td><td>120</td></tr>
              <tr><td>Monthly attrition</td><td>Leavers in the month ÷ average of last month's and this month's headcount</td><td>HRMS</td><td>3 ÷ 119.5 = 2.5%</td></tr>
              <tr><td>12-month attrition</td><td>Leavers in the last 12 months ÷ average headcount, (start + end) ÷ 2</td><td>HRMS</td><td>24 ÷ 112 = 21.4%</td></tr>
              <tr><td>Time to fill</td><td>Days from role approval to accepted offer, average</td><td>ATS</td><td>45 days (FY26)</td></tr>
              <tr><td>Offer acceptance rate</td><td>Offers accepted ÷ offers made</td><td>ATS</td><td>42 ÷ 50 = 84% (FY26)</td></tr>
              <tr><td>eNPS</td><td>% promoters − % detractors, from the anonymous survey</td><td>Survey tool</td><td>+17 (January)</td></tr>
            </tbody>
          </table>
          <p>At the end of March, the last 12 months are exactly FY26, so the 12-month attrition equals the FY26 rate. Next month, the 12 months will run from May 2025 to April 2026.</p>
        </div>
        <div class="lc-card">
          <h3>Pick the right chart</h3>
          <table class="lc-table">
            <thead><tr><th>What you want to show</th><th>Best chart</th><th>LedgerLite example</th></tr></thead>
            <tbody>
              <tr><td>A change over time</td><td>Line chart</td><td>Month-end headcount, April to March</td></tr>
              <tr><td>A comparison between teams</td><td>Bar chart, sorted from high to low</td><td>Attrition by team, with Customer Success at 40.0%</td></tr>
              <tr><td>One headline number</td><td>Number tile with a comparison</td><td>Headcount 120, +1 vs February</td></tr>
              <tr><td>Parts of a whole</td><td>Stacked bar, not a pie with many slices</td><td>Headcount by level, L1 to L5</td></tr>
            </tbody>
          </table>
          <p>Avoid common chart mistakes. A bar chart whose axis starts at 100, not 0, makes small changes look huge. A 3D chart is hard to read. Always show the count next to a percentage for small teams. "Finance, HR &amp; Admin attrition 11.8%" is really 1 person. Hide any split with fewer than 5 people, so no one can be identified.</p>
          <p>You can build these charts in Excel or Google Sheets, in a tool such as Looker Studio or Power BI, or in your HRMS. Many HRMS tools include ready-made dashboards. Features change often, so check each tool's current help pages.</p>
        </div>
        <div class="lc-card">
          <h3>Write the monthly people report with AI</h3>
          <p>A good monthly report has four parts: the headline, what changed, a watch list and actions with owners. AI writes a clear first draft fast. You give it only the metrics table. Then you check every number against your sheet.</p>
          <pre><code>Weak: Write our HR report for March.

        Better: Write a monthly people report for LedgerLite's leaders, max 200 words.
        Use ONLY the numbers in this table. Do not add any other number.
        [metrics table: headcount 120 (Feb 119, 1 April 2025: 104),
        joiners 4, leavers 3, monthly attrition by month Apr-Mar,
        12-month attrition 21.4%, Customer Success 40.0% (eNPS -23),
        open positions 6, time to fill 45 days, eNPS +17]
        Sections: Headline, What changed, Watch list, Actions and owners.
        After the report, list every number you used and where it came from.</code></pre>
          <p>A good draft starts like this:</p>
          <pre><code>Headline: Headcount reached 120, up from 104 at the start of FY26.
        12-month attrition is 21.4%. Customer Success is the main concern
        at 40.0%, with an eNPS of -23.
        Watch list: 6 open positions; time to fill is 45 days on average.</code></pre>
          <p>The last step of the prompt matters. A list of every number and its source makes checking fast. Leaders decide the actions. The report only suggests them.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: check the draft before it goes out</h3>
          <p>Step through Farhan's March report session. Watch for the numbers that need checking.</p>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Farhan's prompt">He gives the AI the metrics table, including monthly attrition for April 2025 to March 2026. He asks for a 200-word report for leaders.</li>
              <li data-kind="answer" data-label="AI draft">"March attrition of 2.5% was the highest of the year. Customer Success attrition is improving after the new onboarding plan."</li>
              <li data-kind="warn" data-label="Two problems">Is 2.5% really the highest? And the table says nothing about Customer Success improving or about an onboarding plan. The AI made that up.</li>
              <li data-kind="tool" data-label="Google Sheets">Farhan runs <code>=MAX(E2:E13)</code> on his monthly attrition column.</li>
              <li data-kind="result" data-label="Sheet result">2.7% in August 2025 (3 leavers ÷ 113). March is second at 2.5%.</li>
              <li data-kind="user" data-label="Follow-up">"August was higher. Remove the claim about Customer Success improving. Use only numbers from my table."</li>
              <li data-kind="check" data-label="Final check">Farhan ticks every number in the new draft against the sheet. He asks the Customer Success head to add the actions and owners.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to draft a monthly people report from a metrics table. Then check each number it uses.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an HR analyst who writes short, clear reports for busy leaders.

        Company: [LedgerLite Pvt Ltd, software, Karnataka]. Month: [March 2026].
        Metrics (totals only, no names):
        [Headcount 120 (February 119). Joiners 4, leavers 3.
        Monthly attrition: 2.5% (highest this year: August, 2.7%).
        12-month attrition 21.4%. Voluntary 17.0%.
        Attrition by team: Engineering 19.2%, Product and Design 18.2%, QA 24.0%, Customer Success 40.0%, Sales and Marketing 15.4%, Finance, HR and Admin 11.8% (1 person).
        Open positions 6. Time to fill 45 days. eNPS +17 (Customer Success -23).]

        Please:
        1. Write a people report of at most 200 words with 4 sections: Headline, What changed, Watch list, Suggested actions (owner: [to be agreed]).
        2. Suggest one chart for each section and say why.
        3. List every number you used and which line of my table it came from.

        Rules: use only my numbers. Do not guess causes. Show counts next to percentages for small teams.</pre>
            <ul class="ai-try-checks">
              <li>Every number in the report appears in your table. Nothing new was added.</li>
              <li>The report does not call March the worst month. August was higher.</li>
              <li>Small teams show the count, for example Finance, HR and Admin is 1 person.</li>
              <li>Actions are suggestions. Owners are left for leaders to agree.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A good HR dashboard shows a few well-defined numbers, the trend and the problem team at a glance. Let AI draft the words, but give it only your table and check every number before the report goes out.
        </div>
      HTML
      starter_code: nil
    },
    14 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-hr">HR & Recruitment</div>
          <h1 class="lc-title">Ethics in People Analytics</h1>
        </div>
        <p class="lc-lead">People analytics uses data about people who depend on you for their jobs. They cannot easily say no to their employer. So HR must hold itself to a high standard. In this lesson you will learn five ethics checks for any people analytics work: a clear purpose, only the data you need, being open with staff, protecting small groups and keeping people in charge of decisions. You will also learn why you should refuse to watch employees' every move, even when a tool makes it easy. Good ethics keeps employees' trust. Without trust, people stop giving honest survey answers, and your data becomes useless.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 280" role="img" aria-label="Five gates in a row that every people analytics project must pass: a clear purpose that helps staff, only the data needed with no surveillance, people told in plain words, groups of 5 or more so no one is exposed, and people deciding with AI only flagging. Passing all five leads to go ahead with a yearly review. A no at any gate leads to a box that says stop or redesign the project.">
            <defs><marker id="hra14a" markerWidth="8" markerHeight="8" refX="7" refY="4" orient="auto"><path d="M0,0 L8,4 L0,8 z" fill="#9b99b8"/></marker><marker id="hra14b" markerWidth="8" markerHeight="8" refX="7" refY="4" orient="auto"><path d="M0,0 L8,4 L0,8 z" fill="#ec4899"/></marker></defs>
            <g font-family="inherit" font-size="12" fill="#e2e0f0" text-anchor="middle">
              <text x="16" y="24" text-anchor="start" font-size="13" font-weight="700">Five ethics checks before any people analytics project</text>
              <rect x="10" y="50" width="110" height="80" rx="8" fill="#27274e" stroke="#8b5cf6"/>
              <text x="65" y="76" font-weight="700">1. Purpose</text>
              <text x="65" y="98" font-size="10.5" fill="#9b99b8">clear, and it</text>
              <text x="65" y="114" font-size="10.5" fill="#9b99b8">helps staff</text>
              <rect x="136" y="50" width="110" height="80" rx="8" fill="#27274e" stroke="#3b82f6"/>
              <text x="191" y="76" font-weight="700">2. Only needed</text>
              <text x="191" y="98" font-size="10.5" fill="#9b99b8">least data,</text>
              <text x="191" y="114" font-size="10.5" fill="#9b99b8">no surveillance</text>
              <rect x="262" y="50" width="110" height="80" rx="8" fill="#27274e" stroke="#22d3ee"/>
              <text x="317" y="76" font-weight="700">3. Open</text>
              <text x="317" y="98" font-size="10.5" fill="#9b99b8">people are told</text>
              <text x="317" y="114" font-size="10.5" fill="#9b99b8">in plain words</text>
              <rect x="388" y="50" width="110" height="80" rx="8" fill="#27274e" stroke="#f59e0b"/>
              <text x="443" y="76" font-weight="700">4. Groups 5+</text>
              <text x="443" y="98" font-size="10.5" fill="#9b99b8">no one can be</text>
              <text x="443" y="114" font-size="10.5" fill="#9b99b8">picked out</text>
              <rect x="514" y="50" width="110" height="80" rx="8" fill="#27274e" stroke="#10b981"/>
              <text x="569" y="76" font-weight="700">5. Decisions</text>
              <text x="569" y="98" font-size="10.5" fill="#9b99b8">people decide,</text>
              <text x="569" y="114" font-size="10.5" fill="#9b99b8">AI only flags</text>
              <rect x="640" y="50" width="110" height="80" rx="8" fill="#1f1f44" stroke="#10b981" stroke-width="2"/>
              <text x="695" y="80" font-weight="700" fill="#6ee7b7">Go ahead</text>
              <text x="695" y="102" font-size="10.5" fill="#9b99b8">and review</text>
              <text x="695" y="118" font-size="10.5" fill="#9b99b8">every year</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#hra14a)">
                <line x1="121" y1="90" x2="133" y2="90"/><line x1="247" y1="90" x2="259" y2="90"/><line x1="373" y1="90" x2="385" y2="90"/><line x1="499" y1="90" x2="511" y2="90"/><line x1="625" y1="90" x2="637" y2="90"/>
              </g>
              <g stroke="#ec4899" stroke-width="1.3" stroke-dasharray="4 3" marker-end="url(#hra14b)">
                <line x1="65" y1="132" x2="65" y2="186"/><line x1="191" y1="132" x2="191" y2="186"/><line x1="317" y1="132" x2="317" y2="186"/><line x1="443" y1="132" x2="443" y2="186"/><line x1="569" y1="132" x2="569" y2="186"/>
              </g>
              <g font-size="10.5" fill="#f9a8d4">
                <text x="80" y="162" text-anchor="start">no</text><text x="206" y="162" text-anchor="start">no</text><text x="332" y="162" text-anchor="start">no</text><text x="458" y="162" text-anchor="start">no</text><text x="584" y="162" text-anchor="start">no</text>
              </g>
              <rect x="10" y="190" width="614" height="56" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="317" y="214" font-weight="700" fill="#f9a8d4">Stop or redesign the project</text>
              <text x="317" y="234" font-size="11" fill="#9b99b8">for example, use group-level survey data instead of watching individuals</text>
              <text x="380" y="270" font-size="11" fill="#9b99b8">This is a thinking tool, not a legal test. Check real projects with your HR legal counsel.</text>
            </g>
          </svg>
          <figcaption>A project must pass all five checks. A "no" at any check means you stop, or change the design until it passes.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The five checks, with LedgerLite examples</h3>
          <table class="lc-table">
            <thead><tr><th>Check</th><th>Question to ask</th><th>LedgerLite example</th></tr></thead>
            <tbody>
              <tr><td><strong>Purpose</strong></td><td>What decision will this help, and does it help employees too?</td><td>Find out why Customer Success lost 6 of its people, to fix workload and onboarding</td></tr>
              <tr><td><strong>Only needed data</strong></td><td>Is this the least data that answers the question?</td><td>Department, level, dates, exit reason and pay band. No names, no health notes.</td></tr>
              <tr><td><strong>Open</strong></td><td>Would staff be surprised if they knew?</td><td>A short note tells staff what is analysed, why, and who sees the results</td></tr>
              <tr><td><strong>Groups of 5+</strong></td><td>Could anyone work out one person's answer?</td><td>Survey results are shown only for groups with 5 or more responses</td></tr>
              <tr><td><strong>People decide</strong></td><td>Who makes the final call, and was fairness checked?</td><td>Managers hold stay conversations. No one is labelled by a score.</td></tr>
            </tbody>
          </table>
          <p><strong>Consent</strong> means a person freely agrees to something. At work, this is tricky. An employee may feel they cannot say no to their employer. So do not rely on a tick box alone. Keep the data necessary, tell people clearly, and make surveys truly optional. Allow "prefer not to say" answers.</p>
          <p>In India, the DPDP Act 2023 and its Rules cover employee data. In general, they expect a lawful purpose, reasonable security and deletion when the data is no longer needed. Some employment uses do not need consent, but these other duties still apply. This is general information, not legal advice. Check the details with your HR legal counsel.</p>
        </div>
        <div class="lc-card">
          <h3>Do not watch employees' every move</h3>
          <p>Employee <strong>surveillance</strong> means closely tracking what individuals do, often without their clear knowledge. Examples are keystroke logging, screen recording, reading chat messages, and tracking personal social media. A LedgerLite leader asks Farhan: "Can we use laptop activity and chat data to find who is about to resign?" Farhan says no, and explains why:</p>
          <ul class="lc-list">
            <li><strong>It is not proportionate.</strong> It collects far more personal data than the question needs.</li>
            <li><strong>It measures activity, not work.</strong> Typing a lot is not the same as doing good work.</li>
            <li><strong>It breaks trust.</strong> When staff learn about it, honest feedback stops. The best retention data comes from people who feel safe.</li>
            <li><strong>It is a legal risk.</strong> Privacy and labour laws may limit it. Check with counsel before any monitoring at all.</li>
          </ul>
          <p>Be very careful with tools that claim to read emotions, honesty or personality from video, voice or typing. These claims are not reliable, and they can be unfair to many people. The EU AI Act bans emotion recognition at work, with narrow medical and safety exceptions. It treats AI used in hiring and managing workers as high-risk. New York City requires bias audits for some automated hiring tools. These are general points, not legal advice.</p>
          <pre><code>Weak: Here is our team chat export. Which employees sound unhappy and
        may resign soon?

        Better: I am the HR manager at a 120-person software company. One team
        has 40% attrition and an eNPS of -23. Suggest group-level ways to
        understand why, such as stay interviews, a short pulse survey and
        exit data. Do not suggest monitoring individuals. Include a plain
        note that tells staff what we will ask and how answers are protected.</code></pre>
        </div>
        <div class="lc-card">
          <h3>Small groups and hidden identities</h3>
          <p>Group results can still reveal one person. Here are three ways it happens, and the fix for each.</p>
          <table class="lc-table">
            <thead><tr><th>Risk</th><th>LedgerLite example</th><th>Fix</th></tr></thead>
            <tbody>
              <tr><td>A group is too small</td><td>Finance, HR &amp; Admin had 6 survey responses. Split by gender, at least one part would have 3 or fewer.</td><td>Show a group only with 5 or more responses. Do not split small teams.</td></tr>
              <tr><td>Subtraction</td><td>A report shows the result for 9 people and for 8 of them. Anyone can work out the ninth person's answer.</td><td>Check which totals can be subtracted from each other. Hide one more group if needed.</td></tr>
              <tr><td>Details in comments</td><td>"As the only QA lead in the team, I feel ignored."</td><td>Remove roles, names and events before sharing. Ask AI to flag such details, then check by hand.</td></tr>
            </tbody>
          </table>
          <p>Before any AI tool summarises survey comments, remove names and identifying details. Use only AI tools your company has approved for employee data. Never link anonymous survey answers back to employee IDs. Once you promise anonymity, keep the promise.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: fine, careful, or not at all?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort these LedgerLite ideas by what Farhan should do with each one.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="ok" data-label="Fine to do"></div>
              <div data-sorter-target="bucket" data-bucket="care" data-label="Only with safeguards"></div>
              <div data-sorter-target="bucket" data-bucket="no" data-label="Do not do"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="ok" data-why="Group totals by team answer a real business question and reveal no one.">Report FY26 attrition by department to leaders</li>
              <li data-bucket="care" data-why="Risk flags can help, but staff must be told, the model must be checked for bias, and flags may only lead to supportive talks.">Use an attrition risk model to plan stay conversations</li>
              <li data-bucket="no" data-why="This is surveillance. It is out of proportion and breaks trust.">Log keystrokes and screen time to rank who works hardest</li>
              <li data-bucket="no" data-why="AI cannot reliably read emotions from faces or voices. At work in the EU, it is banned except for narrow medical or safety uses.">Use an AI tool to read employees' moods from video calls</li>
              <li data-bucket="care" data-why="Anonymous comments are useful. Remove names and identifying details first, and use an approved AI tool.">Ask AI to group anonymous survey comments into themes</li>
              <li data-bucket="no" data-why="This breaks the promise of anonymity. People will stop answering honestly.">Link survey answers to employee IDs to follow up with unhappy staff</li>
              <li data-bucket="ok" data-why="Customer Success had 13 responses, so a team-level result is safe to show.">Show the Customer Success eNPS of −23 in the survey report</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to review a people analytics idea against the five checks, and to suggest a safer design.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an ethics reviewer for people analytics. You care about employees, fairness and privacy. You work with HR teams in India.

        Company: [LedgerLite Pvt Ltd, a 120-person software company in Karnataka].
        Proposal from a leader: [Build a "flight risk" score for every employee from laptop activity, login times, chat messages and LinkedIn profile updates, and share the list with managers].

        Please:
        1. Review the proposal against 5 checks: clear purpose, only needed data, openness with staff, small-group privacy, people decide. For each: pass, fail or unclear, with one sentence why.
        2. List the harms to employees and the risks to the company.
        3. Suggest a safer design that answers the same business question with group-level data.
        4. Write a 100-word note to staff about the safer design, in plain English.
        5. List 4 questions for our HR legal counsel. Do not state legal rules as facts.

        Be direct but respectful towards the leader.</pre>
            <ul class="ai-try-checks">
              <li>The surveillance parts fail the checks, and the review says why in plain words.</li>
              <li>The safer design uses group-level data, such as surveys, stay interviews and exit data.</li>
              <li>No claim that AI can read emotions or honesty is accepted.</li>
              <li>Legal points are questions for counsel, not final rules.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Just because you can collect data about employees does not mean you should. Use a clear purpose, the least data, open communication, groups of 5 or more and human decisions. Refuse to watch individuals.
        </div>
      HTML
      starter_code: nil
    },
    15 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-hr">HR & Recruitment</div>
          <h1 class="lc-title">Capstone: A People Analytics Report</h1>
        </div>
        <p class="lc-lead">In this capstone you will put the whole course together. You will act as Farhan, the HR manager at LedgerLite Pvt Ltd. Your task is a one-page people analytics report for FY26 for the leadership team. You will clean the data, compute the key metrics, find what is linked with people leaving and write clear recommendations. AI helps at every step: it plans, writes formulas and drafts words. You do the maths in the spreadsheet, check every number and make the final calls. All data in this course is made up.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 290" role="img" aria-label="Five steps from left to right. 1, clean: fix the messy rows and confirm 120 active rows and the bridge 104 plus 40 minus 24. 2, metrics: attrition 21.4 percent, early leavers 10.0 percent, eNPS plus 17. 3, drivers: Customer Success attrition 40 percent and eNPS minus 23, linked with pay position and short tenure. 4, actions: three recommendations with owner, cost and measure. 5, report: one page for leaders with limits stated. Below, the checks for every step: totals match, groups of 5 or more, no names in AI tools, and say linked with, not caused by.">
            <defs><marker id="hra15a" markerWidth="8" markerHeight="8" refX="7" refY="4" orient="auto"><path d="M0,0 L8,4 L0,8 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12.5" fill="#e2e0f0" text-anchor="middle">
              <text x="16" y="24" text-anchor="start" font-size="13" font-weight="700">LedgerLite FY26 people analytics report: five steps</text>
              <rect x="10" y="44" width="128" height="140" rx="10" fill="#27274e" stroke="#3b82f6"/>
              <text x="74" y="70" font-weight="700" fill="#93c5fd">1. Clean</text>
              <g font-size="10.5" fill="#9b99b8"><text x="74" y="98">fix IDs, dates,</text><text x="74" y="116">names, duplicates</text><text x="74" y="144" fill="#e2e0f0">120 active rows</text><text x="74" y="162">104 + 40 − 24</text></g>
              <rect x="163" y="44" width="128" height="140" rx="10" fill="#27274e" stroke="#8b5cf6"/>
              <text x="227" y="70" font-weight="700" fill="#c4b5fd">2. Metrics</text>
              <g font-size="10.5" fill="#9b99b8"><text x="227" y="98">attrition 21.4%</text><text x="227" y="116">voluntary 17.0%</text><text x="227" y="144">early leavers 10.0%</text><text x="227" y="162">eNPS +17</text></g>
              <rect x="316" y="44" width="128" height="140" rx="10" fill="#27274e" stroke="#f59e0b"/>
              <text x="380" y="70" font-weight="700" fill="#fcd34d">3. Drivers</text>
              <g font-size="10.5" fill="#9b99b8"><text x="380" y="98">Cust. Success 40%</text><text x="380" y="116">eNPS −23</text><text x="380" y="144">linked: pay position,</text><text x="380" y="162">short tenure</text></g>
              <rect x="469" y="44" width="128" height="140" rx="10" fill="#27274e" stroke="#10b981"/>
              <text x="533" y="70" font-weight="700" fill="#6ee7b7">4. Actions</text>
              <g font-size="10.5" fill="#9b99b8"><text x="533" y="98">3 recommendations</text><text x="533" y="116">owner, cost, measure</text><text x="533" y="144">leaders decide</text><text x="533" y="162">the final plan</text></g>
              <rect x="622" y="44" width="128" height="140" rx="10" fill="#27274e" stroke="#ec4899"/>
              <text x="686" y="70" font-weight="700" fill="#f9a8d4">5. Report</text>
              <g font-size="10.5" fill="#9b99b8"><text x="686" y="98">1 page for leaders</text><text x="686" y="116">numbers checked</text><text x="686" y="144">limits stated</text><text x="686" y="162">review in 6 months</text></g>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#hra15a)">
                <line x1="139" y1="114" x2="160" y2="114"/><line x1="292" y1="114" x2="313" y2="114"/><line x1="445" y1="114" x2="466" y2="114"/><line x1="598" y1="114" x2="619" y2="114"/>
              </g>
              <rect x="10" y="206" width="740" height="70" rx="10" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="380" y="230" font-weight="700" fill="#67e8f9">Checks at every step</text>
              <text x="380" y="254" font-size="11.5">Totals match the HRMS · groups of 5 or more · no names in AI tools · "linked with", not "caused by"</text>
            </g>
          </svg>
          <figcaption>Each step uses the one before it. If the data is not clean, every metric, driver and recommendation after it will be wrong.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The brief and the data</h3>
          <p>LedgerLite's leaders ask: "What happened to our people in FY26, why, and what should we do in FY27?" You have these made-up sources. Keep the full files inside the company's own spreadsheet tool. Give AI only column names, made-up rows and totals.</p>
          <table class="lc-table">
            <thead><tr><th>Source</th><th>What you use from it</th></tr></thead>
            <tbody>
              <tr><td>HRMS export</td><td>Emp ID, department, level, join date, exit date, exit type, exit reason</td></tr>
              <tr><td>Payroll (pay bands only)</td><td>Compa-ratio for each person, never exact pay in the report</td></tr>
              <tr><td>ATS</td><td>Hiring source, applied date, offer accepted date</td></tr>
              <tr><td>Survey tool</td><td>January 2026 team results, only for groups with 5 or more responses</td></tr>
            </tbody>
          </table>
          <p>Your report must fit on one page. It has five parts: a headline, a key metrics table, three findings, three recommendations and the limits of the data.</p>
        </div>
        <div class="lc-card">
          <h3>Steps 1 and 2: clean, then compute</h3>
          <p>First, clean the HRMS export as you learned in the cleaning lesson. Fix IDs such as <code>ll1043</code>, map "Engg" and "Tech" to Engineering, turn text dates into real dates and remove the duplicate LL-1043 row. Then check two things. The clean file has 120 active rows. And the bridge adds up: 104 + 40 − 24 = 120.</p>
          <p>Next, compute the metrics. Add a helper column H for days worked by leavers: <code>=IF(D2="","",D2-C2)</code>, where C is the join date and D the exit date.</p>
          <pre><code>Annual attrition:     =24/((104+120)/2)                       → 21.4%
        Voluntary attrition:  =19/((104+120)/2)                       → 17.0%
        Early leavers (within 90 days of joining, FY26 joiners):
          =COUNTIFS(H2:H300,"&lt;=90",C2:C300,"&gt;="&amp;DATE(2025,4,1))  → 4
          4 ÷ 40 joiners                                             → 10.0%
        Retention rate:       =86/104                                 → 82.7%
        Customer Success attrition: =6/((14+16)/2)                   → 40.0%
        eNPS:                 =(38-22)/94*100                         → +17</code></pre>
          <table class="lc-table">
            <thead><tr><th>Key metric, FY26</th><th>Result</th><th>Key metric, FY26</th><th>Result</th></tr></thead>
            <tbody>
              <tr><td>Headcount</td><td>104 → 120 (+15.4%)</td><td>Time to hire</td><td>34 days</td></tr>
              <tr><td>Attrition (voluntary)</td><td>21.4% (17.0%)</td><td>Cost per hire</td><td>₹85,000</td></tr>
              <tr><td>Early leavers</td><td>4 of 40 (10.0%)</td><td>Offer acceptance</td><td>84%</td></tr>
              <tr><td>Retention rate</td><td>82.7%</td><td>eNPS (response rate)</td><td>+17 (80.3%)</td></tr>
            </tbody>
          </table>
          <p>Check each number once by hand. Use a formula that AI wrote only after you test it on a few made-up rows.</p>
        </div>
        <div class="lc-card">
          <h3>Step 3: find what is linked with leaving</h3>
          <p>Compare leavers with the people who stayed. A factor matters when it is much more common among leavers than among current staff.</p>
          <table class="lc-table">
            <thead><tr><th>Factor</th><th>Leavers</th><th>Current staff</th><th>What it suggests</th></tr></thead>
            <tbody>
              <tr><td>In Customer Success</td><td>6 of 24 (25.0%)</td><td>16 of 120 (13.3%)</td><td>This team loses people at almost twice its share</td></tr>
              <tr><td>Under 2 years' tenure</td><td>16 of 24 (66.7%)</td><td>64 of 120 (53.3%)</td><td>Newer staff leave more often</td></tr>
              <tr><td>Paid below band midpoint (compa-ratio under 1.00)</td><td>13 of 19 voluntary leavers (68.4%)</td><td>54 of 120 (45.0%)</td><td>Lower pay position is linked with leaving</td></tr>
              <tr><td>Customer Success survey (% favourable)</td><td colspan="2">Workload 38% (company 61%). Pay is fair 31% (company 49%). eNPS −23 (company +17).</td><td>Matches the top exit reasons (better pay 7, career growth 5, of 19) and the top comment theme, workload (14 of 52 comments)</td></tr>
            </tbody>
          </table>
          <p>Two of the 4 early leavers were in Customer Success. Engineering Team C also lost 5 of about 13 people. That team is small, so look into it privately with its leaders, not in the report.</p>
          <p>Remember: these are links, not proof. Many staff below the midpoint stayed. Write "linked with", not "caused by". Where you can, test a fix and measure the result.</p>
        </div>
        <div class="lc-card">
          <h3>Steps 4 and 5: recommend and report</h3>
          <table class="lc-table">
            <thead><tr><th>Recommendation</th><th>Owner (to agree)</th><th>Rough cost (made up)</th><th>How we measure it</th></tr></thead>
            <tbody>
              <tr><td><strong>1. Customer Success retention plan:</strong> staff the team at 1 person per 50 customers. Add a clear L1 to L2 path and a 90-day onboarding plan with a buddy. Review pay for the 5 people below compa-ratio 0.90.</td><td>Customer Success head, with Farhan</td><td>Pay review: about ₹3.6 lakh a year to reach 0.95</td><td>Team attrition from 40% towards 20%. Team eNPS in the next survey. Early leavers.</td></tr>
              <tr><td><strong>2. Fair pay:</strong> set offers from the pay band, not the last salary. Review the 4 Engineering L3 cases from the pay equity check.</td><td>Farhan, with finance</td><td>About ₹4.2 lakh a year to reach 0.95</td><td>Staff below 0.90: now 18 of 120 (15.0%). New offers placed inside the band.</td></tr>
              <tr><td><strong>3. Hire earlier and smarter:</strong> approve FY27 roles 105 days before they are needed. Grow referrals (26 days to hire), and watch team diversity.</td><td>Farhan, with Divya</td><td>Within the hiring budget</td><td>Time to fill. Early leavers by source.</td></tr>
            </tbody>
          </table>
          <p>Show the value of the plan too. In FY26, replacing the 6 Customer Success leavers cost about ₹5.1 lakh in hiring costs alone (6 × ₹85,000). If the team's attrition falls to 20%, LedgerLite needs about 3 fewer hires in FY27.</p>
          <pre><code>LedgerLite people report, FY26 (1 page)
        1. Headline: We grew from 104 to 120. Attrition was 21.4%.
           Customer Success lost 40% of its team and needs help first.
        2. Key metrics table (8 numbers, with definitions)
        3. Findings: Customer Success; short tenure; pay position
        4. Recommendations: action, owner, cost, measure
        5. Limits: links, not proof. Small groups not shown.
           Survey from January 2026. Review again in 6 months.</code></pre>
        </div>
        <div class="lc-card">
          <h3>Activity: Farhan's capstone session</h3>
          <p>Step through how Farhan builds the report with AI and a spreadsheet. Notice where he stops the AI.</p>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Plan">Farhan gives the AI his column names and 7 made-up messy rows. He asks for a cleaning plan with formulas and a check after each step.</li>
              <li data-kind="tool" data-label="Google Sheets">He runs the formulas on the full HRMS export inside LedgerLite's own drive. No real rows go to the AI.</li>
              <li data-kind="result" data-label="Checks">120 active rows. 24 leavers, 19 voluntary. 104 + 40 − 24 = 120. The totals match the HRMS report.</li>
              <li data-kind="user" data-label="Drivers prompt">He shares only the driver table of totals and asks, "What do these comparisons suggest?"</li>
              <li data-kind="answer" data-label="AI draft">"Low pay is causing people to leave. Raise everyone below the band midpoint to 1.00."</li>
              <li data-kind="warn" data-label="Too strong">68.4% of voluntary leavers were below 1.00, but so were 45.0% of staff who stayed. That is a link, not proof. Raising all 54 people is also costly and not targeted.</li>
              <li data-kind="check" data-label="Farhan's rewrite">"Pay below the midpoint is linked with leaving. We suggest a targeted review, starting with Customer Success, and we will measure the result."</li>
              <li data-kind="check" data-label="Before sending">He ticks every number against the sheet. The Customer Success head and Divya review the recommendations before leaders see them.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to draft the one-page report from the checked LedgerLite numbers. You can swap in your own made-up or summary data.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a senior people analytics adviser. Draft a one-page people report for company leaders.

        Company: [LedgerLite Pvt Ltd, software, Karnataka]. Year: [FY26].
        Checked facts (totals only, no names):
        [Headcount 104 to 120. 40 joined, 24 left (19 voluntary). Attrition 21.4%. Early leavers 4 of 40.
        Customer Success: attrition 40.0%, eNPS -23 (company +17). Workload favourable 38% (company 61%). Pay is fair 31% (company 49%).
        Top voluntary exit reasons: better pay 7, career growth 5 (of 19).
        Below compa-ratio 1.00: 68.4% of voluntary leavers, 45.0% of current staff.
        Under 2 years' tenure: 66.7% of leavers, 53.3% of current staff.
        Cost per hire 85,000 rupees.]

        Sections:
        1. Headline in 3 sentences.
        2. Key metrics table.
        3. Three findings, each with its evidence and one limit.
        4. Three recommendations: action, owner [to be agreed], rough cost method, how to measure success by [March 2027].
        5. What we must not conclude yet.

        Rules: use only these numbers. Say "linked with", not "caused by". Simple English.</pre>
            <ul class="ai-try-checks">
              <li>Every number in the report matches the facts you gave. Nothing new was invented.</li>
              <li>Findings say "linked with", and each one names a limit of the data.</li>
              <li>Each recommendation has an action, an owner, a cost method and a measure.</li>
              <li>No person can be identified, and small groups are not split.</li>
              <li>You would be happy to defend each sentence in front of the leaders.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A good people analytics report is short, correct and useful. Clean data first, check every metric, call links "links", and end with a few clear actions that have owners and measures. AI drafts; you decide.
        </div>
      HTML
      starter_code: nil
    }
  }.freeze
end

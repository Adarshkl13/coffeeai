module AiWorkforcePlanningContent
  # Units (sidebar dividers): 1–4 Planning Basics · 5–9 Analysing the Workforce · 10–14 Plans and Decisions · 15 Capstone
  # Widgets: sequence, sorter, stepper. No code editor: each Try It is an ai-try prompt box.
  LESSONS = {
    1 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-hr">HR & Recruitment</div>
          <h1 class="lc-title">What Workforce Planning Is</h1>
        </div>
        <p class="lc-lead">Workforce planning means having the right people, with the right skills, in the right place, at the right time and cost. In this lesson you will learn the four basic ideas: supply, demand, the gap and time horizons. You will also see how an AI assistant can help you think through a plan. Through this course you will follow Priya Shah, HR manager at Northbridge Logistics. Northbridge is a made-up warehouse and delivery company with 420 people in London and Manchester. Priya is planning the workforce for 2027, the year Northbridge opens a new depot in Leeds.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 370" role="img" aria-label="Workforce planning at Northbridge Logistics. Supply: 420 people and 399 FTE today, about 80 may leave in 2027 and about 4 may retire. Demand: volume up 6 percent in 2027, a new Leeds depot with 60 people and a November peak of 640 thousand parcels. Supply and demand meet in the gap, which is demand minus supply. Five ways to close the gap: hire, train, move people inside, use agency staff, automate. Three time horizons: short term 0 to 12 months for rotas and peak agency staff, medium term 1 to 2 years for hiring for Leeds, long term 3 to 5 years for ageing drivers and automation.">
            <defs><marker id="wf1a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <rect x="30" y="20" width="250" height="130" rx="10" fill="#1f1f44" stroke="#10b981" stroke-width="2"/>
              <text x="46" y="46" font-weight="700" fill="#6ee7b7">Supply: people you have</text>
              <text x="46" y="72" font-size="12">420 people, 399 FTE today</text>
              <text x="46" y="94" font-size="12">About 80 may leave in 2027</text>
              <text x="46" y="116" font-size="12">About 4 may retire</text>
              <text x="46" y="138" font-size="11" fill="#9b99b8">Northbridge, 30 Sep 2026</text>
              <rect x="480" y="20" width="250" height="130" rx="10" fill="#1f1f44" stroke="#3b82f6" stroke-width="2"/>
              <text x="496" y="46" font-weight="700" fill="#93c5fd">Demand: people needed</text>
              <text x="496" y="72" font-size="12">Volume up 6% in 2027</text>
              <text x="496" y="94" font-size="12">Leeds depot: 60 people</text>
              <text x="496" y="116" font-size="12">Peak: 640k parcels in Nov</text>
              <text x="496" y="138" font-size="11" fill="#9b99b8">From the 2027 business plan</text>
              <rect x="315" y="45" width="130" height="80" rx="10" fill="#27274e" stroke="#f59e0b" stroke-width="2"/>
              <text x="380" y="78" font-weight="700" fill="#fcd34d" text-anchor="middle">Gap</text>
              <text x="380" y="100" font-size="12" text-anchor="middle">demand minus</text>
              <text x="380" y="116" font-size="12" text-anchor="middle">supply</text>
              <text x="30" y="172" font-size="12" fill="#9b99b8">Ways to close the gap:</text>
              <g text-anchor="middle">
                <rect x="40" y="180" width="128" height="40" rx="8" fill="#1f1f44" stroke="#8b5cf6"/>
                <text x="104" y="205">Hire</text>
                <rect x="178" y="180" width="128" height="40" rx="8" fill="#1f1f44" stroke="#8b5cf6"/>
                <text x="242" y="205">Train</text>
                <rect x="316" y="180" width="128" height="40" rx="8" fill="#1f1f44" stroke="#8b5cf6"/>
                <text x="380" y="205">Move inside</text>
                <rect x="454" y="180" width="128" height="40" rx="8" fill="#1f1f44" stroke="#8b5cf6"/>
                <text x="518" y="205">Agency staff</text>
                <rect x="592" y="180" width="128" height="40" rx="8" fill="#1f1f44" stroke="#8b5cf6"/>
                <text x="656" y="205">Automate</text>
              </g>
              <text x="30" y="252" font-size="12" fill="#9b99b8">Time horizons:</text>
              <g text-anchor="middle">
                <rect x="30" y="262" width="220" height="70" rx="10" fill="#27274e" stroke="#22d3ee"/>
                <text x="140" y="290" font-weight="700">Short: 0 to 12 months</text>
                <text x="140" y="314" font-size="12" fill="#9b99b8">Rotas, peak agency staff</text>
                <rect x="270" y="262" width="220" height="70" rx="10" fill="#27274e" stroke="#3b82f6"/>
                <text x="380" y="290" font-weight="700">Medium: 1 to 2 years</text>
                <text x="380" y="314" font-size="12" fill="#9b99b8">Hiring for the Leeds depot</text>
                <rect x="510" y="262" width="220" height="70" rx="10" fill="#27274e" stroke="#ec4899"/>
                <text x="620" y="290" font-weight="700">Long: 3 to 5 years</text>
                <text x="620" y="314" font-size="12" fill="#9b99b8">Ageing drivers, automation</text>
              </g>
              <text x="380" y="358" font-size="11" fill="#9b99b8" text-anchor="middle">All numbers are made up for Northbridge Logistics.</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#wf1a)">
                <line x1="282" y1="85" x2="311" y2="85"/>
                <line x1="478" y1="85" x2="449" y2="85"/>
                <line x1="380" y1="127" x2="380" y2="176"/>
              </g>
            </g>
          </svg>
          <figcaption>Supply and demand meet in the gap. You close the gap with a mix of actions, and you plan over three time horizons.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Supply, demand and the gap</h3>
          <p>Every workforce plan compares two things:</p>
          <ul class="lc-list">
            <li><strong>Supply</strong>: the people you have now, and the people you will still have later. Supply goes down when people leave or retire. It goes up when you hire or train people.</li>
            <li><strong>Demand</strong>: the people the work will need. Demand comes from the business plan: more customers, a new site, a busy season or new machines.</li>
            <li><strong>The gap</strong>: demand minus supply. A positive gap is a shortage. A negative gap is a surplus (more people than the work needs).</li>
          </ul>
          <p>You count people in two ways. <strong>Headcount</strong> is the number of employees. <strong>FTE</strong> (full-time equivalent) adds up working hours. Two people on 20 hours a week make 1 FTE when full time is 40 hours.</p>
          <p>Here is a first, rough gap for Northbridge delivery drivers. Priya uses last year's numbers as a simple guide.</p>
          <table class="lc-table">
            <thead><tr><th>Step</th><th>Working</th><th>Drivers</th></tr></thead>
            <tbody>
              <tr><td>Supply today</td><td>Drivers on 30 Sep 2026</td><td>135</td></tr>
              <tr><td>Expected leavers in 2027</td><td>Same as the last 12 months (28, including 2 retirements)</td><td>&minus;28</td></tr>
              <tr><td>Supply at end of 2027, with no hiring</td><td>135 &minus; 28</td><td>107</td></tr>
              <tr><td>Demand at London and Manchester</td><td>135 &times; 1.06 (volume up 6%) = 143.1</td><td>143</td></tr>
              <tr><td>Demand at the new Leeds depot</td><td>From the business plan</td><td>22</td></tr>
              <tr><td>Total demand</td><td>143 + 22</td><td>165</td></tr>
              <tr><td><strong>Gap</strong></td><td>165 &minus; 107</td><td><strong>58 drivers to find</strong></td></tr>
            </tbody>
          </table>
          <p>This number rests on two guesses. Leavers may not match last year. Each driver may not handle the same volume. Write your guesses down next to the number, so leaders can question them.</p>
        </div>
        <div class="lc-card">
          <h3>Time horizons</h3>
          <p>A <strong>time horizon</strong> is how far ahead you plan. Each horizon answers different questions.</p>
          <table class="lc-table">
            <thead><tr><th>Horizon</th><th>Typical questions</th><th>Northbridge example</th></tr></thead>
            <tbody>
              <tr><td>Short term (0 to 12 months)</td><td>Do we have enough people for next month's rota? How many agency workers do we need for the peak?</td><td>November volume is 640,000 parcels. Northbridge books about 120 agency workers for November and December.</td></tr>
              <tr><td>Medium term (1 to 2 years)</td><td>Which roles must we hire or train for? When must we start?</td><td>The Leeds depot opens on 1 September 2027. It needs 60 people, including 22 drivers.</td></tr>
              <tr><td>Long term (3 to 5 years)</td><td>How will the work change? Which skills will we need?</td><td>31 drivers are aged 55 or over. New sorting machines will need different maintenance skills.</td></tr>
            </tbody>
          </table>
          <p>Gaps take time to close. A new HGV driver may take months to recruit and train. So a medium-term gap needs action in the short term.</p>
          <p>Workforce planning is not only hiring. You can also train people (build), hire (buy), use agency staff or contractors (borrow), move people inside the company, or automate some work. A later lesson compares these choices.</p>
        </div>
        <div class="lc-card">
          <h3>Who plans, and how AI helps</h3>
          <p>Workforce planning is a team task. At Northbridge, Priya leads it. Daniel Okafor, the operations director, owns the volume forecast. Helen Marsh, the finance director, owns the budget. Tom Reed, the HR adviser, prepares the data.</p>
          <p>An AI assistant such as Claude can help Priya list questions, spot missing information and draft a first structure. It cannot know Northbridge's real numbers unless she gives them. It should never get named employee data in a public tool.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>How many people will we need next year?</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>I am the HR manager at a UK warehouse and delivery company with
        420 employees (399 FTE) at two sites, London and Manchester.
        In 2027, volume grows 6% and we open a new depot in Leeds in September.
        Help me set up our 2027 workforce plan.
        1. List the demand drivers I should ask operations about.
        2. List the supply factors I should measure (leavers, retirements, moves).
        3. Group the questions into short, medium and long term.
        Do not invent numbers. Mark anything that is a guess.</code></pre>
          <p>The AI gives you a checklist and questions, not the answer. You and your leaders still decide the numbers and the actions.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: supply, demand or gap?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each Northbridge fact into supply, demand or gap.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="supply" data-label="Supply"></div>
              <div data-sorter-target="bucket" data-bucket="demand" data-label="Demand"></div>
              <div data-sorter-target="bucket" data-bucket="gap" data-label="Gap"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="supply" data-why="This is the people Northbridge has today.">Northbridge employs 135 delivery drivers today.</li>
              <li data-bucket="supply" data-why="Leavers reduce the people you will still have, so they change supply.">28 drivers left in the last 12 months.</li>
              <li data-bucket="demand" data-why="A new site creates new work, so it adds to demand.">The new Leeds depot needs 22 drivers from September 2027.</li>
              <li data-bucket="demand" data-why="More parcels means more work, so demand goes up.">Parcel volume at London and Manchester will grow 6% in 2027.</li>
              <li data-bucket="gap" data-why="This compares need with people available: demand minus supply.">The plan needs 165 drivers, but only about 107 will remain without hiring.</li>
              <li data-bucket="demand" data-why="The busy season changes how much work there is, so it is demand.">November volume is 37% above an average month.</li>
              <li data-bucket="supply" data-why="Possible retirements may reduce the people you have, so this is a supply risk.">15 drivers are aged 60 or over.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to set up the first outline of a workforce plan for your organisation, or use the Northbridge details as they are. Then check that it asks good questions and does not invent numbers.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an experienced workforce planning adviser. Use simple English.

        My organisation: [Northbridge Logistics, a UK warehouse and delivery company with 420 employees (399 FTE) in London and Manchester].
        Main roles: [warehouse operatives, delivery drivers, team leaders, customer service].
        Planning period: [calendar year 2027].
        Known business changes: [volume up 6%, a new depot in Leeds opening in September 2027, a busy Christmas peak every year].

        Please:
        1. Explain supply, demand and the gap for my organisation in 3 short sentences.
        2. List 5 demand drivers I should confirm with operations and finance.
        3. List 5 supply factors I should measure, such as leavers and retirements.
        4. Make a table with three rows: short term (0 to 12 months), medium term (1 to 2 years), long term (3 to 5 years). Columns: key question, data I need, who owns the data.
        5. List the 3 biggest risks if I get the plan wrong.

        Do not invent numbers or statistics. Mark every assumption as "Assumption". Do not ask me for names or personal details of employees.</pre>
            <ul class="ai-try-checks">
              <li>Supply, demand and gap are explained correctly (gap = demand minus supply).</li>
              <li>The table covers all three time horizons with real questions.</li>
              <li>It does not invent numbers, and it marks assumptions.</li>
              <li>It names data owners such as operations and finance, not only HR.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Workforce planning compares the people you will have with the people the work will need, over time. The gap is only as good as the guesses behind it. Write the guesses down, share them, and update the plan when the facts change.
        </div>
      HTML
      starter_code: nil
    },
    2 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-hr">HR & Recruitment</div>
          <h1 class="lc-title">Where AI Helps and Its Limits</h1>
        </div>
        <p class="lc-lead">AI assistants can save you hours in workforce planning. They can find patterns in tables, draft scenarios, explain spreadsheet formulas and write a first summary. But they can also give numbers that look exact and are not. They can repeat unfair patterns from old data. And they can put private employee data at risk. In this lesson you will learn where AI helps, the four big risks, and a safe way to work.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 330" role="img" aria-label="Two columns. Where AI helps: spot patterns in totals and anonymised tables, draft best, base and worst case scenarios, explain formulas such as COUNTIFS and rates, and draft the write-up and questions for managers. Watch for: false precision, such as 79.51 leavers, which is a guess and not a fact; biased history, where past patterns repeat unfairness; private data, so no names or ages in public tools; made-up facts, where laws, benchmarks and sums can be wrong. Bottom bar: AI drafts and flags. People check the numbers and decide.">
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <text x="200" y="26" font-weight="700" fill="#6ee7b7" text-anchor="middle">Where AI helps</text>
              <text x="560" y="26" font-weight="700" fill="#f9a8d4" text-anchor="middle">Watch for</text>
              <rect x="30" y="40" width="340" height="46" rx="8" fill="#1f1f44" stroke="#10b981"/>
              <text x="46" y="60" font-weight="700">Spot patterns</text>
              <text x="46" y="77" font-size="11" fill="#9b99b8">in totals and anonymised tables</text>
              <rect x="30" y="96" width="340" height="46" rx="8" fill="#1f1f44" stroke="#10b981"/>
              <text x="46" y="116" font-weight="700">Draft scenarios</text>
              <text x="46" y="133" font-size="11" fill="#9b99b8">best, base and worst cases</text>
              <rect x="30" y="152" width="340" height="46" rx="8" fill="#1f1f44" stroke="#10b981"/>
              <text x="46" y="172" font-weight="700">Explain formulas</text>
              <text x="46" y="189" font-size="11" fill="#9b99b8">COUNTIFS, averages, rates</text>
              <rect x="30" y="208" width="340" height="46" rx="8" fill="#1f1f44" stroke="#10b981"/>
              <text x="46" y="228" font-weight="700">Draft the write-up</text>
              <text x="46" y="245" font-size="11" fill="#9b99b8">summaries and questions for managers</text>
              <rect x="390" y="40" width="340" height="46" rx="8" fill="#1f1f44" stroke="#ec4899"/>
              <text x="406" y="60" font-weight="700">False precision</text>
              <text x="406" y="77" font-size="11" fill="#9b99b8">"79.51 leavers" is a guess, not a fact</text>
              <rect x="390" y="96" width="340" height="46" rx="8" fill="#1f1f44" stroke="#ec4899"/>
              <text x="406" y="116" font-weight="700">Biased history</text>
              <text x="406" y="133" font-size="11" fill="#9b99b8">past patterns can repeat unfairness</text>
              <rect x="390" y="152" width="340" height="46" rx="8" fill="#1f1f44" stroke="#ec4899"/>
              <text x="406" y="172" font-weight="700">Private data</text>
              <text x="406" y="189" font-size="11" fill="#9b99b8">no names or ages in public tools</text>
              <rect x="390" y="208" width="340" height="46" rx="8" fill="#1f1f44" stroke="#ec4899"/>
              <text x="406" y="228" font-weight="700">Made-up facts</text>
              <text x="406" y="245" font-size="11" fill="#9b99b8">laws, benchmarks and sums can be wrong</text>
              <rect x="30" y="270" width="700" height="44" rx="10" fill="#27274e" stroke="#8b5cf6" stroke-width="2"/>
              <text x="380" y="297" font-weight="700" text-anchor="middle">AI drafts and flags. People check the numbers and decide.</text>
            </g>
          </svg>
          <figcaption>AI is a fast helper for analysis and drafts. Four risks need a person to check every time.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Where AI helps in workforce planning</h3>
          <table class="lc-table">
            <thead><tr><th>Task</th><th>How AI helps</th><th>What you still check</th></tr></thead>
            <tbody>
              <tr><td>Find patterns</td><td>Reads a summary table of leavers by site and role. Points out the highest rates.</td><td>Recalculate the rates yourself. Check the group sizes.</td></tr>
              <tr><td>Build formulas</td><td>Writes and explains a spreadsheet formula, such as <code>COUNTIFS</code> (count rows that match several conditions).</td><td>Test the formula on a few rows you can count by hand.</td></tr>
              <tr><td>Draft scenarios</td><td>Suggests best, base and worst cases, such as slower or faster growth.</td><td>Agree the numbers with operations and finance.</td></tr>
              <tr><td>Ask better questions</td><td>Lists questions to ask managers about why people leave.</td><td>Remove leading or unfair questions.</td></tr>
              <tr><td>Write the plan</td><td>Drafts a one-page summary for leaders in plain words.</td><td>Check every number and claim against your own data.</td></tr>
            </tbody>
          </table>
          <p>Some AI assistants can read a spreadsheet that you upload. Spreadsheet tools such as Excel and Google Sheets also have built-in AI helpers. Features change often, so check each tool's current help pages. Only upload data your company allows you to share with that tool.</p>
        </div>
        <div class="lc-card">
          <h3>The four big risks</h3>
          <p><strong>1. False precision.</strong> AI may say "Northbridge will lose 79.51 people in 2027." That looks exact, but it is an estimate. Next year will not copy last year. Ask for a range instead, for example "about 70 to 90 leavers", and list the assumptions.</p>
          <p><strong>2. Biased history.</strong> AI learns from the data you give it. Suppose most past team leaders came from one shift or one group of people. An AI list of "likely future leaders" may copy that pattern. It can look like a fact, but it may be unfair. Check results by group, and let people make the decisions.</p>
          <p><strong>3. Private data.</strong> Employee data is personal data. In the UK, the UK GDPR and the Data Protection Act 2018 set rules for how you use it. Do not paste names, ages, pay or health details into a public AI tool. Use totals by site and role, or made-up data. Use only tools your company has approved.</p>
          <p><strong>4. Made-up facts.</strong> AI can state a law, a benchmark or a sum wrongly, and sound sure. Check legal points with an HR adviser or employment lawyer. Check sums in a spreadsheet.</p>
          <p>Rules also cover AI in decisions about people. UK GDPR gives people protections when a significant decision about them is made only by automated means. The EU AI Act treats AI used for hiring and managing workers as high-risk. After a 2026 change, its main duties for these systems apply from 2 December 2027. In New York City, Local Law 144 requires bias audits for some automated hiring tools. These rules change, so check current guidance. This is not legal advice; check with an employment lawyer or HR adviser.</p>
        </div>
        <div class="lc-card">
          <h3>A safe way to work</h3>
          <p>Use this pattern every time you use AI for planning:</p>
          <ul class="lc-list">
            <li><strong>Summarise first.</strong> Turn the employee list into totals by site and role. Remove names and IDs.</li>
            <li><strong>Ask for reasons, not just answers.</strong> Ask the AI to show its working and its assumptions.</li>
            <li><strong>Check in a spreadsheet.</strong> Recalculate every number the AI gives you.</li>
            <li><strong>Decide as people.</strong> Managers, HR and finance agree the plan together.</li>
          </ul>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Here is our full employee list with names, ages and salaries.
        Who is likely to leave next year?</code></pre>
          <p>This shares private data. It also asks the AI to judge single people, which is unfair and unreliable.</p>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Below are made-up leaver totals for 12 months, by site and role.
        No names. Columns: role, site, average headcount, leavers.
        Delivery driver, London, 78, 19
        Delivery driver, Manchester, 54, 9
        Warehouse operative, London, 108, 20
        Warehouse operative, Manchester, 78, 14
        1. Calculate attrition (leavers / average headcount) for each row.
           Show the working.
        2. Say which group stands out, and why it might.
        3. Give a range, not one number, for next year's leavers.
        4. List what you do NOT know from this data.</code></pre>
        </div>
        <div class="lc-card">
          <h3>Activity: Priya checks an AI analysis</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Priya asks">Priya pastes the leaver totals by site and role. There are no names. She asks the AI to find the hotspots and forecast 2027 leavers.</li>
              <li data-kind="answer" data-label="AI replies">The AI says London drivers have the highest rate at 24.4%. It also says: "Northbridge will lose exactly 79.51 employees in 2027."</li>
              <li data-kind="warn" data-label="False precision">79.51 is last year's rate (78 / 412, about 18.9%) times 420 people. It is a guess, not a fact. Priya asks for a range and the assumptions behind it.</li>
              <li data-kind="tool" data-label="Spreadsheet">Priya types <code>=19/78</code> into Google Sheets to check the London driver rate.</li>
              <li data-kind="result" data-label="Sheet shows">0.2436, which is 24.4%. The AI's rate is correct this time.</li>
              <li data-kind="warn" data-label="Privacy risk">Tom suggests pasting the full HRIS export (the HR system's employee list) into a free chatbot to "get more detail". Priya says no. It has names, ages and pay.</li>
              <li data-kind="answer" data-label="AI suggests">The AI says drivers probably leave because of pay.</li>
              <li data-kind="check" data-label="People decide">Priya checks the exit survey: 18 left mainly for pay and 15 for shift patterns. She plans to talk with Daniel Okafor and the driver team leaders before deciding on any action.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Give the AI a made-up workforce estimate and ask it to find the weak points. This teaches you to question numbers before you share them.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a careful workforce planning reviewer. Use simple English.

        Here is a made-up estimate from [Northbridge Logistics, a UK delivery company with 420 employees]:
        "Last year 78 people left, from an average headcount of 412. So in 2027 we will lose exactly 79.51 people. We will hire 80 people and the problem is solved. Our past team leaders mostly came from the London day shift, so we will promote from there again."

        Please review it:
        1. Check the sum. Show the working.
        2. Explain why "exactly 79.51" is false precision. Suggest a sensible range and the assumptions behind it.
        3. Point out what is missing (for example a new site, retirements, the time it takes to hire).
        4. Explain how the team leader idea could repeat an unfair pattern, and how to check it.
        5. List 3 questions a person must answer before this goes to leaders.

        Do not invent statistics or laws. If you mention a law, describe it in general words and say it needs checking by an HR adviser.</pre>
            <ul class="ai-try-checks">
              <li>It shows 78 / 412 = 18.9%, and 78 / 412 &times; 420 is about 79.5.</li>
              <li>It gives a range, not one exact number, and lists assumptions.</li>
              <li>It spots the bias risk in promoting from one shift only.</li>
              <li>It leaves the final decisions to people.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Use AI to see patterns and draft ideas faster. Never let it decide about people. Give it totals, not names. Ask for ranges and assumptions. Then check every number yourself.
        </div>
      HTML
      starter_code: nil
    },
    3 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-hr">HR & Recruitment</div>
          <h1 class="lc-title">Workforce Data You Need</h1>
        </div>
        <p class="lc-lead">A workforce plan is only as good as its data. In this lesson you will learn which data you need: headcount, hours, roles, sites, costs, leavers, skills and the business plan. You will learn where each item comes from and how to find and fix common data problems. You will also learn how to protect privacy before any data goes near an AI tool. You will follow Tom Reed, HR adviser at Northbridge Logistics, as he prepares the data for the 2027 plan.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 340" role="img" aria-label="Data flow. Five sources on the left: HRIS for people, roles and hours; payroll for pay and on-costs; rota and timesheets for overtime and agency hours; recruitment system for vacancies and time to hire; business plan for volume, budget and new sites. They feed a clean and check step: remove duplicates, fix job titles, fill missing sites, close old leavers. Then a protect privacy step: use IDs not names, ages as bands, totals not people. The result is a planning dataset by site and role, with a snapshot date of 30 September 2026 and written definitions, ready for AI and spreadsheets. Footnote: the raw HRIS export had 6 duplicates, 4 old leavers and 11 rows with no site.">
            <defs><marker id="wf3a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <rect x="30" y="30" width="200" height="44" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="44" y="49" font-weight="700">HRIS</text>
              <text x="44" y="66" font-size="11" fill="#9b99b8">people, roles, hours</text>
              <rect x="30" y="82" width="200" height="44" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="44" y="101" font-weight="700">Payroll</text>
              <text x="44" y="118" font-size="11" fill="#9b99b8">pay and on-costs</text>
              <rect x="30" y="134" width="200" height="44" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="44" y="153" font-weight="700">Rota and timesheets</text>
              <text x="44" y="170" font-size="11" fill="#9b99b8">overtime, agency hours</text>
              <rect x="30" y="186" width="200" height="44" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="44" y="205" font-weight="700">Recruitment (ATS)</text>
              <text x="44" y="222" font-size="11" fill="#9b99b8">vacancies, time to hire</text>
              <rect x="30" y="238" width="200" height="44" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="44" y="257" font-weight="700">Business plan</text>
              <text x="44" y="274" font-size="11" fill="#9b99b8">volume, budget, new sites</text>
              <rect x="290" y="50" width="190" height="122" rx="10" fill="#27274e" stroke="#f59e0b" stroke-width="2"/>
              <text x="306" y="74" font-weight="700" fill="#fcd34d">Clean and check</text>
              <text x="306" y="98" font-size="12">Remove duplicates</text>
              <text x="306" y="118" font-size="12">Fix job titles</text>
              <text x="306" y="138" font-size="12">Fill missing sites</text>
              <text x="306" y="158" font-size="12">Close old leavers</text>
              <rect x="290" y="190" width="190" height="96" rx="10" fill="#27274e" stroke="#ec4899" stroke-width="2"/>
              <text x="306" y="214" font-weight="700" fill="#f9a8d4">Protect privacy</text>
              <text x="306" y="238" font-size="12">Use IDs, not names</text>
              <text x="306" y="258" font-size="12">Ages as bands</text>
              <text x="306" y="278" font-size="12">Totals, not people</text>
              <rect x="540" y="110" width="190" height="120" rx="10" fill="#1f1f44" stroke="#10b981" stroke-width="2"/>
              <text x="556" y="136" font-weight="700" fill="#6ee7b7">Planning dataset</text>
              <text x="556" y="160" font-size="12">By site and role</text>
              <text x="556" y="180" font-size="12">Snapshot: 30 Sep 2026</text>
              <text x="556" y="200" font-size="12">Definitions written</text>
              <text x="556" y="220" font-size="12">Ready for AI and Sheets</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none">
                <line x1="230" y1="52" x2="250" y2="52"/>
                <line x1="230" y1="104" x2="250" y2="104"/>
                <line x1="230" y1="156" x2="250" y2="156"/>
                <line x1="230" y1="208" x2="250" y2="208"/>
                <line x1="230" y1="260" x2="250" y2="260"/>
                <line x1="250" y1="52" x2="250" y2="260"/>
              </g>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#wf3a)">
                <line x1="250" y1="111" x2="286" y2="111"/>
                <line x1="385" y1="173" x2="385" y2="186"/>
                <path d="M481,238 L510,238 L510,170 L536,170"/>
              </g>
              <text x="380" y="322" font-size="11" fill="#9b99b8" text-anchor="middle">Raw HRIS export: 6 duplicates, 4 old leavers marked active, 11 rows with no site</text>
            </g>
          </svg>
          <figcaption>Data comes from several systems. Clean it, protect privacy, then build one planning dataset with a snapshot date.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The data list</h3>
          <p>Most data lives in the <strong>HRIS</strong> (HR information system: the main HR database, such as Workday, BambooHR, HiBob or Personio). Other data lives in payroll, the rota system, the <strong>ATS</strong> (applicant tracking system: the recruitment tool) and the finance plan.</p>
          <table class="lc-table">
            <thead><tr><th>Data item</th><th>Where it comes from</th><th>Why you need it</th><th>Northbridge example</th></tr></thead>
            <tbody>
              <tr><td>Employees by site and role</td><td>HRIS</td><td>Headcount: who you have now</td><td>420 people: 250 London, 170 Manchester</td></tr>
              <tr><td>Contracted hours</td><td>HRIS</td><td>FTE: how much working time you have</td><td>Full time is 40 hours. 45 people work part time.</td></tr>
              <tr><td>Start date, leave date, leave reason</td><td>HRIS</td><td>Turnover, early leavers, length of service</td><td>78 leavers in 12 months</td></tr>
              <tr><td>Age band (not date of birth)</td><td>HRIS</td><td>Retirement risk in totals</td><td>32 people aged 60+</td></tr>
              <tr><td>Pay and on-costs</td><td>Payroll</td><td>Cost per FTE and budgets</td><td>Warehouse operative: £27,000 salary</td></tr>
              <tr><td>Overtime and agency hours</td><td>Rota and timesheets</td><td>Hidden demand that employees do not cover</td><td>About 120 agency workers in November</td></tr>
              <tr><td>Skills and licences</td><td>Training records</td><td>Skills gaps</td><td>70 drivers hold an HGV Category C+E licence</td></tr>
              <tr><td>Open vacancies, time to hire</td><td>ATS</td><td>How fast you can close gaps</td><td>Number of open driver jobs</td></tr>
              <tr><td>Volume, budget, new sites</td><td>Finance and operations</td><td>Demand</td><td>Volume up 6%, Leeds depot from Sep 2027</td></tr>
            </tbody>
          </table>
          <p>Pick one <strong>snapshot date</strong> (the date your numbers describe) and use it everywhere. Northbridge uses 30 September 2026. Also write short definitions, for example "Headcount counts employees only, not agency workers."</p>
        </div>
        <div class="lc-card">
          <h3>Find and fix data problems</h3>
          <p>Tom's first export from the HRIS had these problems:</p>
          <ul class="lc-list">
            <li>6 duplicate rows (the same employee ID twice).</li>
            <li>4 people who had left were still marked "active".</li>
            <li>11 rows with no site.</li>
            <li>3 part-time workers with no contracted hours.</li>
            <li>One job typed 5 ways: "Warehouse Operative", "Warehouse Op", "WH Operative", "Picker/Packer" and "Warehouse operative " (with a space at the end).</li>
          </ul>
          <p>Simple spreadsheet formulas find most of these. Here, column A holds the employee ID, C the job title, D the site and F the contracted hours.</p>
          <pre><code>Flag duplicate IDs (put in a new column, copy down):
        =COUNTIF(A:A, A2)&gt;1

        Count rows with no site:
        =COUNTBLANK(D2:D500)

        Remove extra spaces from a job title:
        =TRIM(C2)

        Count part-timers with no hours (status "Part time" in column E):
        =COUNTIFS(E:E, "Part time", F:F, "")</code></pre>
          <p>Some problems need a person, not a formula. Is "Picker/Packer" the same job as "Warehouse Operative"? Tom asks the Manchester warehouse manager. Fix data at the source (in the HRIS) when you can, so the next export is clean too.</p>
        </div>
        <div class="lc-card">
          <h3>Privacy: use only what you need</h3>
          <p>UK GDPR says you should use only the personal data you need for a clear purpose. This is called <strong>data minimisation</strong>. For workforce planning, you rarely need names.</p>
          <ul class="lc-list">
            <li>Use employee IDs instead of names while you clean the data.</li>
            <li>Use age bands, such as 55 to 59, instead of dates of birth.</li>
            <li>Before you use AI, turn rows into totals by site and role.</li>
            <li>Watch small groups. Manchester has only 3 maintenance technicians. A table showing "1 aged 60+" there can point to one person. Combine small groups, or show "fewer than 5".</li>
            <li>Use only AI tools your company has approved for this data. Check your company's data protection policy.</li>
          </ul>
          <p>This is general guidance, not legal advice. Your data protection lead or a qualified adviser can confirm what applies to you.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>What HR data do I need for planning?</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>I am preparing data for a 2027 workforce plan for a UK warehouse
        and delivery company (420 employees, two sites).
        Make a data dictionary table with columns: data item, plain
        definition, source system, owner, how often it updates,
        privacy level (low / medium / high).
        Include headcount, FTE, leavers, age bands, pay, agency hours,
        skills and volume. Then list 6 quality checks I should run.
        Do not ask for any real employee details.</code></pre>
        </div>
        <div class="lc-card">
          <h3>Activity: prepare the planning data</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put Tom's steps in the right order, from first to last.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Agree the questions the plan must answer with Priya and Daniel.</li>
              <li data-order="2">List the data items needed and who owns each one.</li>
              <li data-order="3">Export the data from the HRIS, payroll and rota systems for 30 September 2026.</li>
              <li data-order="4">Run quality checks and fix problems with the data owners.</li>
              <li data-order="5">Replace names with IDs and dates of birth with age bands.</li>
              <li data-order="6">Make totals by site and role, and combine very small groups.</li>
              <li data-order="7">Write the definitions and snapshot date at the top of the dataset.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to build a data checklist for a workforce plan in your organisation, or for Northbridge. You get a data dictionary and a list of quality checks you can use straight away.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an HR data analyst who helps with workforce planning. Use simple English.

        Organisation: [Northbridge Logistics, a UK warehouse and delivery company with 420 employees in London and Manchester].
        Main roles: [warehouse operatives, delivery drivers, team leaders, customer service, maintenance].
        Systems we use: [an HRIS, a payroll system, a rota system, an applicant tracking system, a finance budget spreadsheet].
        Plan period: [2027].

        Please:
        1. Make a data dictionary table with columns: data item, plain definition, source system, owner, privacy level (low, medium, high).
        2. Add a short rule for each high-privacy item, such as "use age bands, not dates of birth".
        3. List 6 data quality checks. For each, give one Excel or Google Sheets formula that finds the problem.
        4. Suggest one snapshot date rule and 3 definitions to write at the top of the dataset.

        Do not ask me for real employee data. Mark anything you are unsure about.</pre>
            <ul class="ai-try-checks">
              <li>FTE is defined from contracted hours, not from headcount.</li>
              <li>Age, pay and health data are marked high privacy, with safer options.</li>
              <li>Test each formula on a few made-up rows before you trust it.</li>
              <li>Agency workers are treated separately from employees.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Clean, clearly defined data matters more than clever analysis. Fix problems at the source, pick one snapshot date, and share only totals with AI tools. Small groups can still identify people, so combine them.
        </div>
      HTML
      starter_code: nil
    },
    4 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-hr">HR & Recruitment</div>
          <h1 class="lc-title">Key Workforce Metrics</h1>
        </div>
        <p class="lc-lead">Metrics are the numbers that describe your workforce. Leaders ask for them, and every plan uses them. In this lesson you will learn five core metrics: headcount, FTE, attrition, span of control and cost per FTE. You will calculate each one with Northbridge Logistics data and a spreadsheet formula. You will also learn why you should check AI arithmetic and not trust it.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="A dashboard for Northbridge Logistics on 30 September 2026 with six tiles. Headcount 420 employees, not counting agency staff. FTE 399, from contracted hours divided by 40. Attrition over 12 months 18.9 percent, 78 leavers divided by 412 average headcount. Voluntary attrition 15.5 percent, 64 resignations divided by 412. Span of control 13.5, 325 people divided by 24 team leaders. Cost per FTE 39,576 pounds, 15.79 million pounds loaded cost divided by 399.">
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <text x="380" y="26" font-weight="700" fill="#c4b5fd" text-anchor="middle">Northbridge Logistics: workforce metrics, 30 Sep 2026</text>
              <g text-anchor="middle">
                <rect x="30" y="44" width="226" height="110" rx="10" fill="#1f1f44" stroke="#3b82f6" stroke-width="2"/>
                <text x="143" y="68" font-size="12" fill="#9b99b8">Headcount</text>
                <text x="143" y="106" font-size="28" font-weight="700" fill="#93c5fd">420</text>
                <text x="143" y="134" font-size="11" fill="#9b99b8">employees, no agency staff</text>
                <rect x="267" y="44" width="226" height="110" rx="10" fill="#1f1f44" stroke="#22d3ee" stroke-width="2"/>
                <text x="380" y="68" font-size="12" fill="#9b99b8">FTE</text>
                <text x="380" y="106" font-size="28" font-weight="700" fill="#67e8f9">399</text>
                <text x="380" y="134" font-size="11" fill="#9b99b8">contracted hours / 40</text>
                <rect x="504" y="44" width="226" height="110" rx="10" fill="#1f1f44" stroke="#ec4899" stroke-width="2"/>
                <text x="617" y="68" font-size="12" fill="#9b99b8">Attrition (12 months)</text>
                <text x="617" y="106" font-size="28" font-weight="700" fill="#f9a8d4">18.9%</text>
                <text x="617" y="134" font-size="11" fill="#9b99b8">78 leavers / 412 average</text>
                <rect x="30" y="166" width="226" height="110" rx="10" fill="#1f1f44" stroke="#f59e0b" stroke-width="2"/>
                <text x="143" y="190" font-size="12" fill="#9b99b8">Voluntary attrition</text>
                <text x="143" y="228" font-size="28" font-weight="700" fill="#fcd34d">15.5%</text>
                <text x="143" y="256" font-size="11" fill="#9b99b8">64 resignations / 412</text>
                <rect x="267" y="166" width="226" height="110" rx="10" fill="#1f1f44" stroke="#8b5cf6" stroke-width="2"/>
                <text x="380" y="190" font-size="12" fill="#9b99b8">Span of control</text>
                <text x="380" y="228" font-size="28" font-weight="700" fill="#c4b5fd">13.5</text>
                <text x="380" y="256" font-size="11" fill="#9b99b8">325 people / 24 team leaders</text>
                <rect x="504" y="166" width="226" height="110" rx="10" fill="#1f1f44" stroke="#10b981" stroke-width="2"/>
                <text x="617" y="190" font-size="12" fill="#9b99b8">Cost per FTE (loaded)</text>
                <text x="617" y="228" font-size="28" font-weight="700" fill="#6ee7b7">£39,576</text>
                <text x="617" y="256" font-size="11" fill="#9b99b8">£15.79m loaded cost / 399</text>
              </g>
            </g>
          </svg>
          <figcaption>Six numbers give leaders a quick picture of the workforce. Each tile shows the formula behind it.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Headcount and FTE</h3>
          <p><strong>Headcount</strong> is the number of employees on a set date. Northbridge counts employees only. Agency workers are counted separately.</p>
          <p><strong>FTE</strong> (full-time equivalent) measures working time. For each person, FTE = contracted weekly hours &divide; full-time hours. At Northbridge, full time is 40 hours. So a person on 20 hours is 0.5 FTE.</p>
          <p><strong>Worked example: London warehouse operatives.</strong> There are 110 people. 90 work full time. 20 work 20 hours a week.</p>
          <pre><code>FTE = 90 x 1 + 20 x 0.5 = 90 + 10 = 100 FTE</code></pre>
          <table class="lc-table">
            <thead><tr><th>Site</th><th>Headcount</th><th>FTE</th></tr></thead>
            <tbody>
              <tr><td>London</td><td>250</td><td>238</td></tr>
              <tr><td>Manchester</td><td>170</td><td>161</td></tr>
              <tr><td><strong>Total</strong></td><td><strong>420</strong></td><td><strong>399</strong></td></tr>
            </tbody>
          </table>
          <p>In a spreadsheet with one row per person, put hours in column F and site in column D. Then:</p>
          <pre><code>FTE for one person (column G):   =F2/40
        Total FTE in London:             =SUMIFS(G:G, D:D, "London")
        Headcount in London:             =COUNTIF(D:D, "London")</code></pre>
          <p>Use FTE for cost and capacity. Use headcount for things that apply per person, such as laptops, uniforms or training places.</p>
        </div>
        <div class="lc-card">
          <h3>Attrition</h3>
          <p><strong>Attrition</strong> (also called turnover) is the share of people who left in a period. The usual formula is:</p>
          <pre><code>Attrition % = leavers in the period / average headcount in the period x 100</code></pre>
          <p>Northbridge had 404 employees on 1 October 2025 and 420 on 30 September 2026. The average headcount over the 12 months was 412. 78 people left.</p>
          <table class="lc-table">
            <thead><tr><th>Metric</th><th>Working</th><th>Result</th></tr></thead>
            <tbody>
              <tr><td>Overall attrition</td><td>78 / 412 x 100</td><td>18.9%</td></tr>
              <tr><td>Voluntary attrition (people who chose to leave)</td><td>64 / 412 x 100</td><td>15.5%</td></tr>
              <tr><td>London delivery drivers</td><td>19 / 78 x 100</td><td>24.4%</td></tr>
              <tr><td>Manchester delivery drivers</td><td>9 / 54 x 100</td><td>16.7%</td></tr>
            </tbody>
          </table>
          <p>Use the average headcount, not the end headcount. 78 / 420 gives 18.6%, which is a little too low because the company grew during the year. Always say which leavers you count. Northbridge's 78 includes 64 resignations, 10 dismissals or failed probations, and 4 retirements.</p>
        </div>
        <div class="lc-card">
          <h3>Span of control and cost per FTE</h3>
          <p><strong>Span of control</strong> is the number of people one leader manages directly. Span = people led &divide; number of leaders.</p>
          <table class="lc-table">
            <thead><tr><th>Team</th><th>Team leaders</th><th>People led</th><th>Span</th></tr></thead>
            <tbody>
              <tr><td>London warehouse</td><td>8</td><td>110</td><td>13.75</td></tr>
              <tr><td>London drivers</td><td>6</td><td>80</td><td>13.33</td></tr>
              <tr><td>Manchester warehouse</td><td>5</td><td>80</td><td>16.00</td></tr>
              <tr><td>Manchester drivers</td><td>5</td><td>55</td><td>11.00</td></tr>
              <tr><td><strong>All front-line teams</strong></td><td><strong>24</strong></td><td><strong>325</strong></td><td><strong>13.54</strong></td></tr>
            </tbody>
          </table>
          <p>Manchester warehouse team leaders each lead 16 people. That is the widest span. It may mean less time for coaching new starters. It is a question to discuss, not a verdict.</p>
          <p><strong>Cost per FTE</strong> is the total yearly people cost divided by FTE. Use the <strong>loaded cost</strong>: salary plus on-costs, such as employer National Insurance, pension and benefits. Northbridge uses a made-up on-cost of 22%.</p>
          <pre><code>Warehouse operative: £27,000 x 1.22 = £32,940 per FTE
        Delivery driver:     £36,500 x 1.22 = £44,530 per FTE
        Whole company:       £15,790,765 / 399 FTE = £39,576 per FTE</code></pre>
          <p>Agency workers are not in this number. Northbridge's agency cost (about £2.0 million a year) is reported separately. Leaders often forget it, so show it next to cost per FTE.</p>
        </div>
        <div class="lc-card">
          <h3>Let AI explain, let the spreadsheet calculate</h3>
          <p>AI assistants can make arithmetic mistakes, especially with long tables. Use AI to explain a metric or write a formula. Then let the spreadsheet do the sums.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>What is our attrition rate?</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>My sheet "Leavers" has one row per leaver: column B = site,
        column C = role, column D = leave reason (Resignation, Dismissal,
        Retirement). My sheet "Headcount" has monthly headcount by site
        in B2:B13 (London) and C2:C13 (Manchester).
        Write Google Sheets formulas for:
        1. 12-month attrition for London.
        2. Voluntary attrition (Resignation only) for London.
        Explain each formula in one sentence. Do not calculate the result.</code></pre>
          <p>A good answer uses <code>COUNTIFS</code> for leavers and <code>AVERAGE</code> for headcount. Test the formula on a small set you can count by hand.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: which metric answers the question?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each leader's question into the metric that answers it.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="size" data-label="Headcount or FTE"></div>
              <div data-sorter-target="bucket" data-bucket="attr" data-label="Attrition"></div>
              <div data-sorter-target="bucket" data-bucket="span" data-label="Span of control"></div>
              <div data-sorter-target="bucket" data-bucket="cost" data-label="Cost per FTE"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="size" data-why="Working time is measured in FTE, which adds up contracted hours.">How much working time do we have in Manchester, counting part-timers fairly?</li>
              <li data-bucket="attr" data-why="The share of people who left in a period is attrition.">Are we losing more London drivers than Manchester drivers?</li>
              <li data-bucket="span" data-why="People per leader is span of control.">Do our warehouse team leaders have too many people to coach?</li>
              <li data-bucket="cost" data-why="Total loaded cost divided by FTE shows the average cost of one full-time worker.">What does one full-time worker cost us on average, including pension and National Insurance?</li>
              <li data-bucket="size" data-why="Uniforms are per person, so you need headcount, not FTE.">How many uniforms must we order for all employees?</li>
              <li data-bucket="attr" data-why="Voluntary attrition counts people who chose to leave, divided by average headcount.">What share of our people resigned last year?</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to calculate key metrics from a small made-up table and show its working. Then check two of its answers in a spreadsheet.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an HR analytics tutor. Use simple English.

        Made-up data for [Northbridge Logistics], 12 months to [30 Sep 2026]. Full time = [40] hours.
        Site | Headcount now | Part-timers | Average headcount | Leavers | Resignations
        [London | 250 | 26 people, total FTE 238 | 245 | 50 | 41]
        [Manchester | 170 | 19 people, total FTE 161 | 167 | 28 | 23]
        Front-line team leaders: [24], people they lead: [325].
        Total yearly loaded cost (salary plus on-costs): [£15,790,765].

        Please:
        1. Calculate for each site and in total: headcount, FTE, attrition and voluntary attrition. Show each sum.
        2. Calculate span of control and cost per FTE. Show each sum.
        3. Put the results in one table with the formula used in a column.
        4. Give one Excel formula for each metric, assuming one row per employee.
        5. Say which 2 numbers a leader should question first, and why.

        Round percentages to one decimal place. Do not invent extra data.</pre>
            <ul class="ai-try-checks">
              <li>Attrition uses average headcount: total 78 / 412 = 18.9%.</li>
              <li>Voluntary attrition: 64 / 412 = 15.5%.</li>
              <li>Cost per FTE divides by FTE (399), not headcount (420): about £39,576.</li>
              <li>Recalculate at least two results in a spreadsheet yourself.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A metric is only useful when everyone uses the same definition. Write the formula next to each number, use average headcount for attrition, and use FTE for cost. Let the spreadsheet do the sums, and let AI explain them.
        </div>
      HTML
      starter_code: nil
    },
    5 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-hr">HR & Recruitment</div>
          <h1 class="lc-title">Analysing Turnover and Retirement Risk</h1>
        </div>
        <p class="lc-lead">Leavers and retirements reduce your supply of people every year. If you can see where and when people leave, you can plan hiring early and fix the causes. In this lesson you will look at trends over time, find hotspots and make simple forecasts with ranges. You will also learn to plan for retirement risk fairly, using age only in totals. You will use 12 months of made-up Northbridge Logistics data, from October 2025 to September 2026.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 320" role="img" aria-label="Two bar charts. Left: attrition by group over 12 months. London drivers 24.4 percent, highlighted as a hotspot. Manchester drivers 16.7 percent. London warehouse 18.5 percent. Manchester warehouse 17.9 percent. Customer service 30.0 percent, but only 20 people, so one leaver moves the rate by 5 points. A dashed line marks the company rate of 18.9 percent. Right: share of people aged 55 or over by role. Maintenance 50 percent, drivers 23 percent, team leaders 21 percent, all staff 17 percent, warehouse 9.5 percent. Note: plan with totals, never target a person.">
            <g font-family="inherit" font-size="12" fill="#e2e0f0">
              <text x="225" y="24" font-size="13" font-weight="700" fill="#c4b5fd" text-anchor="middle">Attrition by group (12 months)</text>
              <text x="30" y="65">London drivers</text>
              <rect x="180" y="50" width="163" height="22" rx="4" fill="#ec4899"/>
              <text x="188" y="65" font-weight="700" fill="#ffffff">24.4%</text>
              <text x="30" y="101">Manchester drivers</text>
              <rect x="180" y="86" width="111" height="22" rx="4" fill="#3b82f6"/>
              <text x="188" y="101" fill="#ffffff">16.7%</text>
              <text x="30" y="137">London warehouse</text>
              <rect x="180" y="122" width="123" height="22" rx="4" fill="#3b82f6"/>
              <text x="188" y="137" fill="#ffffff">18.5%</text>
              <text x="30" y="173">Manchester warehouse</text>
              <rect x="180" y="158" width="119" height="22" rx="4" fill="#3b82f6"/>
              <text x="188" y="173" fill="#ffffff">17.9%</text>
              <text x="30" y="209">Customer service *</text>
              <rect x="180" y="194" width="200" height="22" rx="4" fill="#1f1f44" stroke="#f59e0b" stroke-width="2" stroke-dasharray="5 3"/>
              <text x="188" y="209">30.0%</text>
              <line x1="306" y1="42" x2="306" y2="224" stroke="#e2e0f0" stroke-width="1.5" stroke-dasharray="4 4"/>
              <text x="306" y="242" font-size="11" fill="#9b99b8" text-anchor="middle">Company 18.9%</text>
              <text x="30" y="270" font-size="11" fill="#9b99b8">* Only 20 people: one leaver moves the rate 5 points.</text>
              <line x1="432" y1="40" x2="432" y2="280" stroke="#3a3a66"/>
              <text x="595" y="24" font-size="13" font-weight="700" fill="#c4b5fd" text-anchor="middle">Share aged 55+ by role</text>
              <text x="450" y="65">Maintenance</text>
              <rect x="560" y="50" width="150" height="22" rx="4" fill="#f59e0b"/>
              <text x="716" y="65" font-weight="700">50%</text>
              <text x="450" y="101">Drivers</text>
              <rect x="560" y="86" width="69" height="22" rx="4" fill="#8b5cf6"/>
              <text x="635" y="101">23.0%</text>
              <text x="450" y="137">Team leaders</text>
              <rect x="560" y="122" width="62" height="22" rx="4" fill="#8b5cf6"/>
              <text x="628" y="137">20.8%</text>
              <text x="450" y="173">All staff</text>
              <rect x="560" y="158" width="50" height="22" rx="4" fill="#22d3ee"/>
              <text x="616" y="173">16.7%</text>
              <text x="450" y="209">Warehouse</text>
              <rect x="560" y="194" width="29" height="22" rx="4" fill="#8b5cf6"/>
              <text x="595" y="209">9.5%</text>
              <text x="450" y="242" font-size="11" fill="#9b99b8">Age bands are for planning in totals.</text>
              <text x="450" y="260" font-size="11" fill="#9b99b8">Never use them to target a person.</text>
              <text x="380" y="306" font-size="11" fill="#9b99b8" text-anchor="middle">Made-up data: Northbridge Logistics, 1 Oct 2025 to 30 Sep 2026</text>
            </g>
          </svg>
          <figcaption>London drivers are the clear hotspot. The maintenance team has the highest share of people aged 55 or over.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Look at trends, not single months</h3>
          <p>Here are Northbridge's leavers for each month:</p>
          <table class="lc-table">
            <thead><tr><th>Oct</th><th>Nov</th><th>Dec</th><th>Jan</th><th>Feb</th><th>Mar</th><th>Apr</th><th>May</th><th>Jun</th><th>Jul</th><th>Aug</th><th>Sep</th></tr></thead>
            <tbody>
              <tr><td>6</td><td>5</td><td>4</td><td><strong>11</strong></td><td>7</td><td>6</td><td>5</td><td>6</td><td>6</td><td>7</td><td>8</td><td>7</td></tr>
            </tbody>
          </table>
          <p>The average is 6.5 leavers a month. January 2026 had 11, just after the Christmas peak. People may stay for peak overtime pay and then leave. That is a guess to check with managers, not a fact.</p>
          <p>Monthly numbers jump up and down. A <strong>rolling 12-month attrition rate</strong> is smoother. Each month, it adds the leavers from the last 12 months and divides by the average headcount for those months. Put monthly leavers in column B and month-end headcount in column C. In row 13:</p>
          <pre><code>=SUM(B2:B13)/AVERAGE(C2:C13)</code></pre>
          <p>Copy it down each new month. If the rate rises for several months in a row, that is a real trend.</p>
        </div>
        <div class="lc-card">
          <h3>Find the hotspots</h3>
          <p>A <strong>hotspot</strong> is a group whose attrition is clearly higher than the company rate (18.9%). Compare groups by site and role.</p>
          <table class="lc-table">
            <thead><tr><th>Group</th><th>Leavers / average headcount</th><th>Attrition</th><th>Comment</th></tr></thead>
            <tbody>
              <tr><td>London drivers</td><td>19 / 78</td><td>24.4%</td><td>Large group, clearly high. A real hotspot.</td></tr>
              <tr><td>Manchester drivers</td><td>9 / 54</td><td>16.7%</td><td>Below the company rate</td></tr>
              <tr><td>London warehouse</td><td>20 / 108</td><td>18.5%</td><td>Close to the company rate</td></tr>
              <tr><td>Manchester warehouse</td><td>14 / 78</td><td>17.9%</td><td>Close to the company rate</td></tr>
              <tr><td>Customer service (both sites)</td><td>6 / 20</td><td>30.0%</td><td>Small group. Watch, but do not panic.</td></tr>
            </tbody>
          </table>
          <p>Two more facts help explain the picture:</p>
          <ul class="lc-list">
            <li><strong>Early leavers.</strong> 15 of the 34 warehouse leavers (44.1%) left within 6 months of starting. That points to recruitment or onboarding, not long-term pay.</li>
            <li><strong>Exit reasons.</strong> Of 64 people who resigned, 18 named pay and 15 named shift patterns as the main reason.</li>
          </ul>
          <p>Be careful with small groups. In a team of 20, one leaver changes the rate by 5 points. Look at two or three years of data before you act on a small group.</p>
        </div>
        <div class="lc-card">
          <h3>Retirement risk, planned fairly</h3>
          <p>Retirement risk means the chance that experienced people retire before you have replaced their skills. Northbridge has 70 people aged 55 or over (16.7%), and 32 aged 60 or over.</p>
          <table class="lc-table">
            <thead><tr><th>Role</th><th>Headcount</th><th>Aged 55+</th><th>Aged 60+</th></tr></thead>
            <tbody>
              <tr><td>Maintenance technician</td><td>8</td><td>4 (50.0%)</td><td>3</td></tr>
              <tr><td>Delivery driver</td><td>135</td><td>31 (23.0%)</td><td>15</td></tr>
              <tr><td>Team leader</td><td>24</td><td>5 (20.8%)</td><td>2</td></tr>
              <tr><td>Warehouse operative</td><td>190</td><td>18 (9.5%)</td><td>7</td></tr>
            </tbody>
          </table>
          <p>Risk is highest where three things meet: an older age profile, a critical skill and a long time to replace. At Northbridge, only 2 people can maintain the conveyors and sorters. A new sorter arrives in Manchester in April 2027. Cross-training more technicians reduces this risk, whoever leaves and for whatever reason.</p>
          <p>Follow these rules:</p>
          <ul class="lc-list">
            <li>Age is a protected characteristic under the UK Equality Act 2010. Use age bands only in totals, never to pick out a person.</li>
            <li>The UK has had no default retirement age since 2011. Do not assume anyone will retire at a set age.</li>
            <li>The UK State Pension age is rising from 66 to 67 between 2026 and 2028. Some people will work longer.</li>
            <li>Offer career and flexible-working conversations to people of all ages. Do not pressure anyone about retirement.</li>
          </ul>
          <p>In the US, the ADEA protects workers aged 40 and over from age discrimination. This is general information, not legal advice. Check with an employment lawyer or HR adviser.</p>
        </div>
        <div class="lc-card">
          <h3>Simple forecasts with ranges</h3>
          <p>The simplest forecast is: expected leavers = attrition rate &times; headcount. Always give a low, base and high figure.</p>
          <table class="lc-table">
            <thead><tr><th>Forecast for 2027</th><th>Working (base)</th><th>Base</th><th>Sensible range</th></tr></thead>
            <tbody>
              <tr><td>All leavers</td><td>78 / 412 &times; 420 = 79.5</td><td>About 80</td><td>70 to 90</td></tr>
              <tr><td>London driver leavers</td><td>24.4% &times; 80 = 19.5</td><td>About 20</td><td>13 to 20 (Manchester rate to current rate)</td></tr>
              <tr><td>Retirements</td><td>4 of about 30 aged 60+ retired last year (13.3%). 13.3% &times; 32 = 4.3</td><td>About 4</td><td>2 to 6</td></tr>
            </tbody>
          </table>
          <p>The London driver range runs from the Manchester rate (9 / 54 &times; 80 = 13.3) to the current rate. It shows what happens if Northbridge fixes the London causes. Remember the new Leeds depot too. New starters often leave faster in their first months.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Predict our turnover for next year.</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Using the made-up totals below (no names), forecast 2027 leavers
        for each group as low, base and high. Base = last year's rate
        x current headcount. Explain how you chose low and high.
        Show the working. Flag any group under 25 people as unreliable.
        Then suggest 3 possible causes for each hotspot as questions
        to ask managers, not as facts.</code></pre>
        </div>
        <div class="lc-card">
          <h3>Activity: Priya analyses turnover with AI</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="tool" data-label="Spreadsheet">Priya builds a pivot table of leavers by site and role in Excel. She adds average headcount for each group.</li>
              <li data-kind="user" data-label="Priya asks">She pastes the totals, with no names, into the company's approved AI assistant. She asks for hotspots and possible causes.</li>
              <li data-kind="answer" data-label="AI replies">The AI names London drivers (24.4%) and warehouse early leavers (15 of 34). It ranks customer service (30.0%) as "the biggest problem".</li>
              <li data-kind="warn" data-label="Small group">Customer service has only 20 people and 6 leavers. One leaver moves the rate by 5 points. Priya marks it "watch", not "biggest problem".</li>
              <li data-kind="answer" data-label="AI suggests">For retirement risk, the AI suggests: "Ask everyone over 60 when they plan to retire."</li>
              <li data-kind="warn" data-label="Fairness risk">Questions aimed only at older workers can be age discrimination and can pressure people. Priya plans with totals and offers career talks to everyone.</li>
              <li data-kind="check" data-label="People decide">Priya and Daniel Okafor agree two actions: cross-train two more technicians on conveyors before April 2027, and review the first 6 weeks of warehouse onboarding.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to analyse made-up turnover and age-band totals. It should find hotspots, forecast with ranges and plan retirement risk fairly.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a workforce analyst for [Northbridge Logistics, a UK delivery company]. Use simple English.

        Made-up totals, 12 months (no names):
        Group | Avg headcount | Leavers | Left in first 6 months | Aged 55+ now
        [London drivers | 78 | 19 | 3 | 18]
        [Manchester drivers | 54 | 9 | 2 | 13]
        [Warehouse, both sites | 186 | 34 | 15 | 18]
        [Customer service | 20 | 6 | 2 | 3]
        [Maintenance | 8 | 2 | 0 | 4]
        Company: [78 leavers, average headcount 412].

        Please:
        1. Calculate attrition for each group. Show the working.
        2. Name the hotspots. Warn me about groups under 25 people.
        3. Comment on early leavers and what they may mean.
        4. Rank retirement risk by role. Use the age totals plus how critical and hard to replace each role is.
        5. Forecast next year's leavers per group as low, base and high.
        6. Suggest 5 questions to ask managers.

        Rules: never suggest targeting a person by age. Say that legal points need an HR adviser.</pre>
            <ul class="ai-try-checks">
              <li>London drivers: 19 / 78 = 24.4%. Company: 78 / 412 = 18.9%.</li>
              <li>Small groups (customer service, maintenance) are flagged as unreliable.</li>
              <li>Forecasts are ranges with the working shown.</li>
              <li>No advice to single out or pressure older workers.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Look for patterns across months and groups, not single numbers. Check group sizes before you act. Plan for retirement with totals, skills and replacement time, never by targeting a person's age.
        </div>
      HTML
      starter_code: nil
    },
    6 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-hr">HR & Recruitment</div>
          <h1 class="lc-title">Skills Inventories</h1>
        </div>
        <p class="lc-lead">Headcount tells you how many people you have. A skills inventory tells you what those people can do. In this lesson you will build a simple skills inventory, find skills gaps for next year and spot skills that only one or two people hold. You will also learn how AI can help tag skills from training records, and why every tag needs evidence and a person's check. You will follow Tom Reed at Northbridge Logistics as he prepares the skills data for 2027.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 330" role="img" aria-label="Top: a five-step workflow. Collect records, standard skills list, AI suggests tags, person confirms, gap table. Bottom: skills held now compared with skills needed by the end of 2027 at Northbridge. Forklift trained 68 of 82, gap 14. WMS super-users 9 of 12, gap 3. Conveyor maintenance 2 of 5, gap 3, marked as the biggest risk. Route planning software 10 of 12, gap 2.">
            <defs>
              <marker id="wf6a" viewBox="0 0 10 10" refX="9" refY="5" markerWidth="7" markerHeight="7" orient="auto-start-reverse">
                <path d="M0,0 L10,5 L0,10 z" fill="#8b5cf6"/>
              </marker>
            </defs>
            <g font-family="inherit" font-size="12" fill="#e2e0f0">
              <text x="380" y="24" font-size="13" font-weight="700" fill="#c4b5fd" text-anchor="middle">How Tom builds the skills inventory</text>
              <rect x="16" y="44" width="128" height="52" rx="8" fill="#1f1f44" stroke="#3b82f6" stroke-width="2"/>
              <text x="80" y="66" text-anchor="middle">Collect</text>
              <text x="80" y="83" text-anchor="middle">records</text>
              <rect x="166" y="44" width="128" height="52" rx="8" fill="#1f1f44" stroke="#3b82f6" stroke-width="2"/>
              <text x="230" y="66" text-anchor="middle">Standard</text>
              <text x="230" y="83" text-anchor="middle">skills list</text>
              <rect x="316" y="44" width="128" height="52" rx="8" fill="#27274e" stroke="#f59e0b" stroke-width="2"/>
              <text x="380" y="66" text-anchor="middle">AI suggests</text>
              <text x="380" y="83" text-anchor="middle">tags</text>
              <rect x="466" y="44" width="128" height="52" rx="8" fill="#27274e" stroke="#10b981" stroke-width="2"/>
              <text x="530" y="66" text-anchor="middle">Person</text>
              <text x="530" y="83" text-anchor="middle">confirms</text>
              <rect x="616" y="44" width="128" height="52" rx="8" fill="#1f1f44" stroke="#8b5cf6" stroke-width="2"/>
              <text x="680" y="66" text-anchor="middle">Gap table</text>
              <text x="680" y="83" text-anchor="middle">for 2027</text>
              <line x1="145" y1="70" x2="164" y2="70" stroke="#8b5cf6" stroke-width="2" marker-end="url(#wf6a)"/>
              <line x1="295" y1="70" x2="314" y2="70" stroke="#8b5cf6" stroke-width="2" marker-end="url(#wf6a)"/>
              <line x1="445" y1="70" x2="464" y2="70" stroke="#8b5cf6" stroke-width="2" marker-end="url(#wf6a)"/>
              <line x1="595" y1="70" x2="614" y2="70" stroke="#8b5cf6" stroke-width="2" marker-end="url(#wf6a)"/>
              <text x="380" y="116" font-size="11" fill="#9b99b8" text-anchor="middle">AI only suggests. Every tag needs evidence and a person's yes.</text>
              <line x1="16" y1="130" x2="744" y2="130" stroke="#3a3a66"/>
              <text x="380" y="154" font-size="13" font-weight="700" fill="#c4b5fd" text-anchor="middle">Have now vs need by end of 2027</text>
              <text x="30" y="185">Forklift trained</text>
              <rect x="220" y="170" width="300" height="22" rx="4" fill="#1f1f44" stroke="#3b82f6"/>
              <rect x="220" y="170" width="249" height="22" rx="4" fill="#3b82f6"/>
              <text x="536" y="185">68 of 82 (gap 14)</text>
              <text x="30" y="220">WMS super-users</text>
              <rect x="220" y="205" width="300" height="22" rx="4" fill="#1f1f44" stroke="#3b82f6"/>
              <rect x="220" y="205" width="225" height="22" rx="4" fill="#3b82f6"/>
              <text x="536" y="220">9 of 12 (gap 3)</text>
              <text x="30" y="255">Conveyor maintenance</text>
              <rect x="220" y="240" width="300" height="22" rx="4" fill="#1f1f44" stroke="#ec4899" stroke-width="2"/>
              <rect x="220" y="240" width="120" height="22" rx="4" fill="#ec4899"/>
              <text x="536" y="255" font-weight="700" fill="#f9a8d4">2 of 5 (gap 3) biggest risk</text>
              <text x="30" y="290">Route planning</text>
              <rect x="220" y="275" width="300" height="22" rx="4" fill="#1f1f44" stroke="#3b82f6"/>
              <rect x="220" y="275" width="250" height="22" rx="4" fill="#3b82f6"/>
              <text x="536" y="290">10 of 12 (gap 2)</text>
              <text x="380" y="320" font-size="11" fill="#9b99b8" text-anchor="middle">Made-up data: Northbridge Logistics, need includes the new Leeds depot</text>
            </g>
          </svg>
          <figcaption>Tom turns records into a checked skills inventory. The conveyor maintenance gap is small in numbers but the biggest risk.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>What a skills inventory is</h3>
          <p>A <strong>skills inventory</strong> is a list of the skills, licences and certificates your people hold. You keep it for each person, and you report it in totals by team and site. It answers two planning questions: "What can we do now?" and "What will we need?"</p>
          <p>Start with a short <strong>standard skills list</strong>: the same skill names for everyone. Without it, one skill appears under many names. Keep it to the skills that matter for the plan, often 15 to 30. Public frameworks can give you ideas for skill names. Two examples are ESCO (the EU's skills and occupations list) and O*NET (the US Department of Labor's occupation database).</p>
          <p>Then give each skill a simple level. Northbridge uses four levels:</p>
          <table class="lc-table">
            <thead><tr><th>Level</th><th>Meaning</th><th>Evidence Tom accepts</th></tr></thead>
            <tbody>
              <tr><td>0</td><td>None</td><td>No record</td></tr>
              <tr><td>1</td><td>Learning</td><td>Booked on a course, or in training</td></tr>
              <tr><td>2</td><td>Can do it alone</td><td>Certificate, licence check or manager sign-off</td></tr>
              <tr><td>3</td><td>Can teach others</td><td>Level 2 plus trainer training or manager sign-off</td></tr>
            </tbody>
          </table>
          <p>Use the right names for real qualifications. In the UK there is no legal "forklift licence". Operators get a <strong>training certificate</strong> that shows they were trained on a type of truck. HSE (the Health and Safety Executive) guidance explains this. HGV drivers also need a <strong>Driver CPC</strong> (Certificate of Professional Competence), with 35 hours of periodic training every 5 years. Check the current GOV.UK and HSE pages for details.</p>
        </div>
        <div class="lc-card">
          <h3>From inventory to skills gaps</h3>
          <p>Tom builds a <strong>skills matrix</strong>: one row per employee ID (no names) and one column per skill, with a level from 0 to 3. Then he counts people at level 2 or above. If forklift levels are in column F:</p>
          <pre><code>People who can drive a forklift alone:
        =COUNTIF(F2:F421, "&gt;=2")

        Gap (never below zero), have in B2, need in C2:
        =MAX(0, C2-B2)

        Flag a skill held by fewer than 2 people at a site:
        =IF(B2&lt;2, "Risk", "OK")</code></pre>
          <p>Need comes from the business plan and simple company rules. For example, Northbridge wants one WMS super-user (an expert user of the warehouse management system) for every 20 warehouse operatives.</p>
          <table class="lc-table">
            <thead><tr><th>Skill</th><th>Have now</th><th>Need by end of 2027</th><th>Gap</th><th>How the need was worked out</th></tr></thead>
            <tbody>
              <tr><td>Forklift trained</td><td>68</td><td>82</td><td>14</td><td>68 &times; 1.06 = 72 (6% growth) + 10 for Leeds</td></tr>
              <tr><td>WMS super-user</td><td>9</td><td>12</td><td>3</td><td>1 per 20 operatives, rounded up: London 6, Manchester 4, Leeds 2</td></tr>
              <tr><td>Conveyor and sorter maintenance</td><td>2</td><td>5</td><td>3</td><td>At least 2 at London and Manchester, plus the Leeds technician</td></tr>
              <tr><td>Route planning software</td><td>10</td><td>12</td><td>2</td><td>10 planners now + 2 Leeds planners</td></tr>
              <tr><td>Driver CPC in date</td><td>110</td><td>110</td><td>0</td><td>Every HGV driver. 15 must finish their hours before the end of 2027.</td></tr>
            </tbody>
          </table>
          <p>The biggest number is not the biggest risk. The forklift gap is 14 people, but forklift training is quick to arrange. The conveyor gap is only 3, but just 2 people hold this skill, one per site. A new sorter arrives in Manchester in April 2027. Northbridge plans to cross-train Kemi Adeyemi in London and Liam Walsh in Manchester before then. It will also look for the skill when it hires the Leeds technician.</p>
        </div>
        <div class="lc-card">
          <h3>Using AI to tag skills, carefully</h3>
          <p>Skills data is often messy. Training records use course titles, not skill names. AI is good at matching messy text to your standard list. This is called <strong>tagging</strong>. But AI can also guess skills that are not there, or "read" things that no tool can read.</p>
          <ul class="lc-list">
            <li><strong>Give it a fixed list.</strong> Tell the AI to use only your standard skill names. Otherwise it invents new ones.</li>
            <li><strong>Ask for the evidence.</strong> Each tag must quote the record it came from. No evidence means no tag.</li>
            <li><strong>Never infer skills from personal traits.</strong> Do not let AI guess skills from age, gender, writing style or a photo. AI cannot read personality, honesty or emotions from text, voice or video.</li>
            <li><strong>Let people check their own profile.</strong> Employees and managers confirm or correct each tag. Under UK GDPR, people have rights to see and correct their personal data.</li>
            <li><strong>Use made-up or de-identified data</strong> in public AI tools. Use IDs, not names, and only tools your company has approved.</li>
          </ul>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Here are our staff. What skills do they have?</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Match each training record below to my standard skills list.
        Use ONLY these skill names: Forklift trained, WMS super-user,
        Conveyor and sorter maintenance, Route planning software,
        First aid at work.
        For each record give: employee ID, skill, level (1 learning
        or 2 can do alone), and the exact words that are the evidence.
        If the record does not clearly show a skill, write "No tag".
        Do not guess skills from job titles alone.

        E104 | Counterbalance lift truck course, passed 12/03/2026
        E219 | Booked: WMS super-user training, Nov 2026
        E377 | Job title: Warehouse Op</code></pre>
          <p>A good answer tags E104 as Forklift trained, level 2. It tags E219 as WMS super-user, level 1. It gives E377 "No tag", because a job title is not proof of a skill.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: keep, check or remove the AI's tags?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">The AI suggested these skill tags for Northbridge records. Sort each one.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="keep" data-label="Keep: clear evidence"></div>
              <div data-sorter-target="bucket" data-bucket="check" data-label="Check with the person or manager"></div>
              <div data-sorter-target="bucket" data-bucket="remove" data-label="Remove: unfair or not possible"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="keep" data-why="A dated training certificate is clear evidence of the skill.">"Forklift trained, level 2" from a reach truck training certificate dated May 2026.</li>
              <li data-bucket="keep" data-why="An official licence check is clear evidence.">"HGV Category C+E" from the company's driving licence check record.</li>
              <li data-bucket="check" data-why="A job title alone does not prove the skill. Ask the person and the manager.">"WMS super-user" because the job title is "Warehouse Op".</li>
              <li data-bucket="check" data-why="Attending a course is not the same as being able to do it alone. Confirm the level.">"Route planning software, level 2" from "Attended: intro to route planning, no assessment".</li>
              <li data-bucket="remove" data-why="AI cannot read personality from writing. This is a guess about a person, not a skill.">"Calm under pressure", taken from the tone of the person's emails.</li>
              <li data-bucket="remove" data-why="Guessing ability from age is unfair and can be age discrimination.">"Not suited to forklift training", because the person is in the 60+ age band.</li>
              <li data-bucket="keep" data-why="A supplier's training certificate for the equipment is clear evidence.">"Conveyor and sorter maintenance" from the sorter supplier's course certificate.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to turn made-up skills totals into a gap table and a risk list. It will also tag a few made-up training records with evidence.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a workforce planning analyst. Use simple English. All data is made up.

        Organisation: [Northbridge Logistics, UK warehouse and delivery, sites London, Manchester and a new Leeds depot].
        Skills totals (have now | need by end of next year):
        [Forklift trained | 68 | 82]
        [WMS super-user | 9 | 12]
        [Conveyor maintenance | 2 | 5, only 1 person per site now]
        [Route planning software | 10 | 12]

        Training records (IDs only):
        [E104 | Lift truck course, passed March 2026]
        [E219 | Booked: WMS super-user training]
        [E377 | Job title: Warehouse Op]

        Please:
        1. Make a gap table: skill, have, need, gap, risk level (high, medium, low). Explain each risk level in one line. Consider how many people hold the skill and how long training takes.
        2. Suggest one way to close each gap: train, hire or other.
        3. Tag each training record with one skill from the list above, a level (1 learning, 2 can do alone) and the exact evidence words. Write "No tag" if the evidence is not clear.
        4. List 3 things a person must check before using this inventory.

        Do not guess skills from job titles, age or personality.</pre>
            <ul class="ai-try-checks">
              <li>Gaps are right: 14, 3, 3 and 2.</li>
              <li>Conveyor maintenance is high risk because so few people hold it, even though the gap is small.</li>
              <li>E377 gets "No tag", because a job title is not evidence.</li>
              <li>It does not guess skills from age, personality or names.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A skills inventory is only useful if every entry has evidence. Use a fixed skills list, let AI suggest tags with the evidence, and let people confirm them. Look hardest at skills that only one or two people hold, even when the gap looks small.
        </div>
      HTML
      starter_code: nil
    },
    7 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-hr">HR & Recruitment</div>
          <h1 class="lc-title">Forecasting Demand</h1>
        </div>
        <p class="lc-lead">Demand is the number of people the work will need. Leaders talk about parcels, customers and new sites, not FTE. Your job is to turn their business plan into people numbers. In this lesson you will use simple ratios to turn volume into FTE, month by month. You will see how seasonal peaks change the picture, and how AI can help you build and explain the model. You will forecast 2027 demand for Northbridge Logistics.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 320" role="img" aria-label="Bar chart of London warehouse FTE needed in each month of 2027. January 113.4, February 110.6, March 118.9, April 116.1, May 118.9, June 121.7, July 124.4, August 121.7, September 127.2, October 138.3, November 177.0, December 165.9. A dashed line at 100 shows today's employee FTE. Every month is above the line. November and December are the peak.">
            <g font-family="inherit" font-size="12" fill="#e2e0f0">
              <text x="380" y="24" font-size="13" font-weight="700" fill="#c4b5fd" text-anchor="middle">London warehouse: FTE needed in 2027</text>
              <text x="380" y="44" font-size="11" fill="#9b99b8" text-anchor="middle">FTE needed = parcels (2026 month x 1.06) / 2,300 parcels per FTE</text>
              <rect x="40" y="56" width="14" height="10" fill="#8b5cf6"/>
              <text x="60" y="65" font-size="11">Normal month</text>
              <rect x="150" y="56" width="14" height="10" fill="#ec4899"/>
              <text x="170" y="65" font-size="11">Peak</text>
              <line x1="220" y1="61" x2="250" y2="61" stroke="#22d3ee" stroke-width="2" stroke-dasharray="5 4"/>
              <text x="256" y="65" font-size="11">Employee FTE today: 100</text>
              <line x1="70" y1="260" x2="730" y2="260" stroke="#3a3a66"/>
              <rect x="80" y="147" width="36" height="113" fill="#8b5cf6"/>
              <rect x="135" y="149" width="36" height="111" fill="#8b5cf6"/>
              <rect x="190" y="141" width="36" height="119" fill="#8b5cf6"/>
              <rect x="245" y="144" width="36" height="116" fill="#8b5cf6"/>
              <rect x="300" y="141" width="36" height="119" fill="#8b5cf6"/>
              <rect x="355" y="138" width="36" height="122" fill="#8b5cf6"/>
              <rect x="410" y="136" width="36" height="124" fill="#8b5cf6"/>
              <rect x="465" y="138" width="36" height="122" fill="#8b5cf6"/>
              <rect x="520" y="133" width="36" height="127" fill="#8b5cf6"/>
              <rect x="575" y="122" width="36" height="138" fill="#8b5cf6"/>
              <rect x="630" y="83" width="36" height="177" fill="#ec4899"/>
              <rect x="685" y="94" width="36" height="166" fill="#ec4899"/>
              <line x1="70" y1="160" x2="730" y2="160" stroke="#22d3ee" stroke-width="2" stroke-dasharray="5 4"/>
              <g font-size="10" text-anchor="middle">
                <text x="98" y="141">113.4</text>
                <text x="153" y="143">110.6</text>
                <text x="208" y="135">118.9</text>
                <text x="263" y="138">116.1</text>
                <text x="318" y="135">118.9</text>
                <text x="373" y="132">121.7</text>
                <text x="428" y="130">124.4</text>
                <text x="483" y="132">121.7</text>
                <text x="538" y="127">127.2</text>
                <text x="593" y="116">138.3</text>
                <text x="648" y="77" font-weight="700">177.0</text>
                <text x="703" y="88" font-weight="700">165.9</text>
              </g>
              <g font-size="11" fill="#9b99b8" text-anchor="middle">
                <text x="98" y="276">Jan</text>
                <text x="153" y="276">Feb</text>
                <text x="208" y="276">Mar</text>
                <text x="263" y="276">Apr</text>
                <text x="318" y="276">May</text>
                <text x="373" y="276">Jun</text>
                <text x="428" y="276">Jul</text>
                <text x="483" y="276">Aug</text>
                <text x="538" y="276">Sep</text>
                <text x="593" y="276">Oct</text>
                <text x="648" y="276">Nov</text>
                <text x="703" y="276">Dec</text>
              </g>
              <text x="380" y="304" font-size="11" fill="#9b99b8" text-anchor="middle">Made-up data: Northbridge Logistics. The gap above the line is agency work and overtime.</text>
            </g>
          </svg>
          <figcaption>Even in the quietest month, London needs more warehouse FTE than it employs. In November it needs 77 FTE more.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>From business plan to people: the ratio method</h3>
          <p>Demand starts with a <strong>demand driver</strong>: the thing that creates work. At Northbridge the main driver is parcels. Other organisations use customers, patients, hotel rooms or sales.</p>
          <p>Then you need a <strong>productivity ratio</strong>: how much work one FTE does in a set time. You take it from a recent, normal month. Northbridge uses September 2026 (made-up figures):</p>
          <table class="lc-table">
            <thead><tr><th>Site</th><th>Working</th><th>Ratio</th></tr></thead>
            <tbody>
              <tr><td>London warehouse</td><td>276,000 parcels / 120 FTE (100 employees + 20 agency)</td><td>2,300 parcels per FTE per month</td></tr>
              <tr><td>Manchester warehouse</td><td>184,000 parcels / 87 FTE (72 employees + 15 agency)</td><td>2,115 parcels per FTE per month</td></tr>
              <tr><td>London drivers</td><td>276,000 parcels / 80 drivers</td><td>3,450 parcels per driver per month</td></tr>
            </tbody>
          </table>
          <p>Count agency workers when you work out the ratio. They did part of the work. If you leave them out, the ratio looks too high.</p>
          <p>The basic formula is:</p>
          <pre><code>FTE needed = expected volume / volume per FTE</code></pre>
          <p>The 2027 business plan says volume grows 6% at London and Manchester. So London's September 2027 volume is 276,000 &times; 1.06 = 292,560 parcels. 292,560 / 2,300 = 127.2 warehouse FTE.</p>
        </div>
        <div class="lc-card">
          <h3>Seasonal peaks, month by month</h3>
          <p>A yearly average hides the peak. Northbridge's November volume is 37% above an average month. So plan month by month. Tom sets up a sheet: month in column A, 2026 parcels (in thousands) in column B. Cell H1 holds the growth (1.06), H2 London's share (0.6) and H3 the ratio (2,300).</p>
          <pre><code>C2  2027 London parcels:   =B2*1000*$H$1*$H$2
        D2  FTE needed:            =C2/$H$3
        E2  Above employees (100): =D2-100</code></pre>
          <p>He copies the formulas down for all 12 months. The <code>$</code> signs keep the formulas pointing at H1, H2 and H3.</p>
          <table class="lc-table">
            <thead><tr><th>Month (2027)</th><th>London parcels</th><th>FTE needed</th><th>Above 100 employee FTE</th></tr></thead>
            <tbody>
              <tr><td>February (quietest)</td><td>254,400</td><td>110.6</td><td>10.6</td></tr>
              <tr><td>June</td><td>279,840</td><td>121.7</td><td>21.7</td></tr>
              <tr><td>September</td><td>292,560</td><td>127.2</td><td>27.2</td></tr>
              <tr><td>November (peak)</td><td>407,040</td><td>177.0</td><td>77.0</td></tr>
              <tr><td>December</td><td>381,600</td><td>165.9</td><td>65.9</td></tr>
            </tbody>
          </table>
          <p>Two findings follow. First, even February needs about 11 FTE more than London employs. That is steady work, not peak work. Second, November needs 77 FTE above employees. Agency workers and overtime cover that short peak. Manchester is similar: its quietest month needs 80.2 FTE against 72 employee FTE.</p>
          <p>Some changes alter the ratio itself. The new Manchester sorter from April 2027 should cut warehouse work by about 10%. So Manchester's September 2027 need falls from 92.2 to 83.0 FTE (92.2 &times; 0.9).</p>
        </div>
        <div class="lc-card">
          <h3>Other roles and a check with AI</h3>
          <p>Not every role follows volume directly. Use the ratio that fits each role:</p>
          <table class="lc-table">
            <thead><tr><th>Role</th><th>Ratio used</th><th>2027 demand (London and Manchester)</th></tr></thead>
            <tbody>
              <tr><td>Delivery drivers</td><td>Parcels per driver (September level)</td><td>80 &times; 1.06 + 55 &times; 1.06 = 84.8 + 58.3 = 143.1</td></tr>
              <tr><td>Team leaders</td><td>Span of control of about 14</td><td>325 front-line staff &times; 1.06 = 344.5. 344.5 / 14 = 24.6, so about 25 (24 now)</td></tr>
              <tr><td>Customer service advisers</td><td>Parcels per adviser FTE (yearly average)</td><td>468,333 parcels a month / 18.5 FTE = 25,315 per FTE. 468,333 &times; 1.06 / 25,315 = 19.6 FTE (18.5 now)</td></tr>
              <tr><td>Leeds depot (all roles)</td><td>The Leeds business case</td><td>60 people, 58 FTE, from 1 September 2027</td></tr>
            </tbody>
          </table>
          <p>Ratios are guesses based on the past. New starters are slower in their first weeks. A new site takes time to reach full speed. Ask Daniel Okafor, the operations director, whether the ratios still hold.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>How many warehouse staff will we need next year?</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Monthly parcels for 2026 (thousands): Jan 410, Feb 400, ...
        Dec 600. Volume grows 6% in 2027. London does 60% of volume.
        Productivity: 2,300 parcels per warehouse FTE per month.
        London has 100 employee FTE in the warehouse.
        1. Make a table: month, 2027 London parcels, FTE needed,
           FTE above employees. Show the formula for one row.
        2. Give the Google Sheets formulas, with inputs in H1:H3.
        3. Say which months are steady work and which are peak.
        4. List 3 reasons the 2,300 ratio might change.
        Do not round until the last step.</code></pre>
          <p>Check two rows of the AI's table in your own sheet. AI can slip on long tables of numbers.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: forecast demand in the right order</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put Priya's demand forecasting steps in order, from first to last.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Agree the demand drivers and the 2027 volume plan with Daniel and Helen.</li>
              <li data-order="2">Work out productivity ratios from a recent normal month, counting agency FTE too.</li>
              <li data-order="3">Spread the yearly volume across the months, using last year's seasonal pattern.</li>
              <li data-order="4">Divide each month's volume by the ratio to get FTE needed.</li>
              <li data-order="5">Adjust for known changes, such as the new sorter and the Leeds depot.</li>
              <li data-order="6">Compare FTE needed with employee FTE, and split steady work from peak work.</li>
              <li data-order="7">Write down every assumption and ask operations to check the ratios.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to turn a made-up business plan into a monthly FTE forecast. Then check the numbers and the assumptions.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a workforce planning analyst. Use simple English. All data is made up.

        Organisation: [a UK parcel warehouse in London].
        Last year's monthly volume (thousands of parcels): [Jan 246, Feb 240, Mar 258, Apr 252, May 258, Jun 264, Jul 270, Aug 264, Sep 276, Oct 300, Nov 384, Dec 360].
        Business plan for next year: [volume grows 6%].
        Productivity: [2,300 parcels per warehouse FTE per month].
        Employees today: [100 warehouse FTE]. Peaks are covered by [agency workers and overtime].

        Please:
        1. Make a table with 12 rows: month, next year's parcels, FTE needed, FTE above employees. Round to 1 decimal place at the end only.
        2. Show the full working for September.
        3. Give spreadsheet formulas that use input cells for growth and productivity.
        4. Split the work into steady work (needed most of the year) and peak work. Suggest how many FTE should be employees, and why.
        5. List 4 assumptions a manager must confirm.

        Do not invent extra data. Mark any guess as "Assumption".</pre>
            <ul class="ai-try-checks">
              <li>September: 276,000 &times; 1.06 = 292,560 parcels, / 2,300 = 127.2 FTE.</li>
              <li>November is the peak: 177.0 FTE, which is 77.0 above employees.</li>
              <li>The formulas use input cells, not typed numbers.</li>
              <li>It treats its employee number as a suggestion for people to decide.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Demand forecasting is volume divided by productivity, month by month. Plan for steady work with employees and for short peaks with flexible cover. A ratio is a guess, so write it down and ask operations to check it.
        </div>
      HTML
      starter_code: nil
    },
    8 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-hr">HR & Recruitment</div>
          <h1 class="lc-title">Scenario Planning</h1>
        </div>
        <p class="lc-lead">No forecast is certain. Volume can grow faster or slower, and more or fewer people may leave. Scenario planning means working out a few possible futures, so you are ready for each one. In this lesson you will build best, base and worst cases in a spreadsheet, with one formula set that works for all three. You will find which guess matters most, and set early warning signs. You will plan the 2027 driver gap for Northbridge Logistics.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 320" role="img" aria-label="Three scenario panels for the Northbridge driver gap at the end of 2027. Best case: growth 3 percent, 22 leavers, demand 161, supply 113, gap 48. Base case: growth 6 percent, 28 leavers, demand 165, supply 107, gap 58. Worst case: growth 9 percent, 34 leavers, demand 169, supply 101, gap 68. Note: worst means hardest to staff, and leavers move the gap more than growth.">
            <g font-family="inherit" font-size="12" fill="#e2e0f0">
              <text x="380" y="24" font-size="13" font-weight="700" fill="#c4b5fd" text-anchor="middle">Driver gap at the end of 2027: three scenarios</text>
              <rect x="20" y="40" width="226" height="240" rx="10" fill="#1f1f44" stroke="#10b981" stroke-width="2"/>
              <text x="133" y="64" text-anchor="middle" font-weight="700" fill="#6ee7b7">Best (easiest to staff)</text>
              <text x="40" y="92">Volume growth: 3%</text>
              <text x="40" y="112">Driver leavers: 22</text>
              <text x="40" y="132">Demand: 139 + 22 = 161</text>
              <text x="40" y="152">Supply: 135 - 22 = 113</text>
              <rect x="40" y="194" width="72" height="66" rx="4" fill="#10b981"/>
              <text x="124" y="232" font-size="14" font-weight="700">Gap 48</text>
              <rect x="267" y="40" width="226" height="240" rx="10" fill="#27274e" stroke="#3b82f6" stroke-width="2"/>
              <text x="380" y="64" text-anchor="middle" font-weight="700" fill="#93c5fd">Base (most likely)</text>
              <text x="287" y="92">Volume growth: 6%</text>
              <text x="287" y="112">Driver leavers: 28</text>
              <text x="287" y="132">Demand: 143 + 22 = 165</text>
              <text x="287" y="152">Supply: 135 - 28 = 107</text>
              <rect x="287" y="179" width="87" height="81" rx="4" fill="#3b82f6"/>
              <text x="386" y="224" font-size="14" font-weight="700">Gap 58</text>
              <rect x="514" y="40" width="226" height="240" rx="10" fill="#1f1f44" stroke="#ec4899" stroke-width="2"/>
              <text x="627" y="64" text-anchor="middle" font-weight="700" fill="#f9a8d4">Worst (hardest to staff)</text>
              <text x="534" y="92">Volume growth: 9%</text>
              <text x="534" y="112">Driver leavers: 34</text>
              <text x="534" y="132">Demand: 147 + 22 = 169</text>
              <text x="534" y="152">Supply: 135 - 34 = 101</text>
              <rect x="534" y="164" width="102" height="96" rx="4" fill="#ec4899"/>
              <text x="648" y="216" font-size="14" font-weight="700">Gap 68</text>
              <text x="380" y="302" font-size="11" fill="#9b99b8" text-anchor="middle">Made-up data. 22 Leeds drivers in every case. Leavers move the gap more than growth does.</text>
            </g>
          </svg>
          <figcaption>The same formulas give three answers. The driver gap could be anywhere from 48 to 68, so the plan must work across that range.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Best, base and worst cases</h3>
          <p>A <strong>scenario</strong> is one possible future, built from a set of assumptions. Most plans use three:</p>
          <ul class="lc-list">
            <li><strong>Base case</strong>: the most likely future. Usually last year's patterns plus the business plan.</li>
            <li><strong>Best case</strong> and <strong>worst case</strong>: realistic outer limits, not wild extremes.</li>
          </ul>
          <p>Say clearly what "best" and "worst" mean. Here, worst means <em>hardest to staff</em>: high growth and many leavers. High growth is good news for the business, but it makes hiring harder.</p>
          <p>Choose only the few <strong>key uncertainties</strong>: the guesses that move the result most. For the Northbridge driver gap, Priya picks two:</p>
          <table class="lc-table">
            <thead><tr><th>Uncertainty</th><th>Best</th><th>Base</th><th>Worst</th><th>Where the numbers come from</th></tr></thead>
            <tbody>
              <tr><td>Volume growth</td><td>3%</td><td>6%</td><td>9%</td><td>Business plan, with a range agreed with Daniel Okafor and Helen Marsh</td></tr>
              <tr><td>Driver leavers in 2027</td><td>22</td><td>28</td><td>34</td><td>Base = last year (28). Best = London at Manchester's rate (13.3 + 9 = 22.3). Worst = 20% more than last year (33.6)</td></tr>
            </tbody>
          </table>
          <p>The Leeds depot needs 22 drivers in every case. If Leeds might open late, that could be a separate scenario.</p>
        </div>
        <div class="lc-card">
          <h3>One formula set for all three cases</h3>
          <p>Put the inputs at the top and the results below. Each scenario gets its own column. You write the formulas once, in column B, then copy them across to C and D.</p>
          <table class="lc-table">
            <thead><tr><th>Row</th><th>A (label)</th><th>B Best</th><th>C Base</th><th>D Worst</th></tr></thead>
            <tbody>
              <tr><td>2</td><td>Volume growth</td><td>3%</td><td>6%</td><td>9%</td></tr>
              <tr><td>3</td><td>Driver leavers</td><td>22</td><td>28</td><td>34</td></tr>
              <tr><td>4</td><td>Leeds drivers</td><td>22</td><td>22</td><td>22</td></tr>
              <tr><td>5</td><td>Drivers today</td><td>135</td><td>135</td><td>135</td></tr>
              <tr><td>6</td><td>Loaded cost per driver</td><td>£44,530</td><td>£44,530</td><td>£44,530</td></tr>
              <tr><td>7</td><td>Demand</td><td>161</td><td>165</td><td>169</td></tr>
              <tr><td>8</td><td>Supply at end of 2027</td><td>113</td><td>107</td><td>101</td></tr>
              <tr><td>9</td><td><strong>Gap (drivers to find)</strong></td><td><strong>48</strong></td><td><strong>58</strong></td><td><strong>68</strong></td></tr>
              <tr><td>10</td><td>Extra yearly cost of more drivers</td><td>£1,157,780</td><td>£1,335,900</td><td>£1,514,020</td></tr>
            </tbody>
          </table>
          <p>The formulas in column B are:</p>
          <pre><code>B7  Demand:  =ROUND(B5*(1+B2),0)+B4
        B8  Supply:  =B5-B3
        B9  Gap:     =B7-B8
        B10 Cost:    =(B7-B5)*B6</code></pre>
          <p>Row 10 is the full-year loaded cost once all extra driver posts are filled. In 2027 itself it is lower, because Leeds opens in September. Ask Helen Marsh's finance team to check it.</p>
          <p>To show one scenario on a summary page, type Best, Base or Worst in cell G1. A drop-down list (data validation) makes this easy. Then:</p>
          <pre><code>=INDEX(B9:D9, MATCH(G1, B1:D1, 0))</code></pre>
          <p>With "Base" in G1, this returns 58. B1:D1 must hold the words Best, Base and Worst.</p>
        </div>
        <div class="lc-card">
          <h3>Which guess matters most, and when to act</h3>
          <p>Compare how much each input moves the gap. Growth from 6% to 9% adds 4 drivers to demand (143 to 147). Leavers from 28 to 34 removes 6 drivers from supply. So leavers matter more than growth here. Keeping London drivers is worth as much effort as hiring new ones.</p>
          <p>Then set <strong>triggers</strong>: early warning signs that tell you which scenario is coming true. The base case expects 7 driver leavers a quarter (28 / 4). The worst case expects 8.5.</p>
          <ul class="lc-list">
            <li>If more than 8 drivers leave in one quarter, move to the worst-case hiring plan.</li>
            <li>If volume runs 3% or more above plan for two months, review driver demand.</li>
            <li>If Leeds opening moves, move the Leeds hiring dates too.</li>
          </ul>
          <p>AI is useful here. It can suggest uncertainties you missed and draft triggers. It can also write and explain the formulas. But the ranges must come from your data and your leaders, not from the AI.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Give me best and worst case scenarios for hiring drivers.</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>I plan the driver gap for 2027 with three scenarios.
        Inputs: drivers today 135; Leeds drivers 22; growth 3% / 6% / 9%;
        driver leavers 22 / 28 / 34.
        Demand = ROUND(135 x (1 + growth), 0) + 22. Supply = 135 - leavers.
        1. Lay out a Google Sheets table with inputs in rows 2-5 and
           Best, Base, Worst in columns B-D. Give the formulas.
        2. Calculate the gap for each case and show the working.
        3. Which input moves the gap most? Explain in 2 sentences.
        4. Suggest 3 early warning triggers, each with a number.
        5. List 2 uncertainties I have not included.</code></pre>
        </div>
        <div class="lc-card">
          <h3>Activity: Priya builds the driver scenarios</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Priya asks">Priya gives the approved AI assistant the driver inputs: 135 drivers and 22 for Leeds. Growth is 3% / 6% / 9% and leavers 22 / 28 / 34. She asks for a scenario table.</li>
              <li data-kind="answer" data-label="AI replies">The AI builds the table. Its "worst case" uses 3% growth, because low growth is "worst for the business".</li>
              <li data-kind="warn" data-label="Mixed meanings">For staffing, worst means hardest to staff: high growth and many leavers. Priya tells the AI to use 9% growth with 34 leavers in the worst case.</li>
              <li data-kind="tool" data-label="Spreadsheet">Priya types the AI's formulas into Google Sheets, with Best, Base and Worst in columns B to D.</li>
              <li data-kind="result" data-label="Sheet shows">Gap: Best 48, Base 58, Worst 68. The base case matches her earlier rough estimate of 58.</li>
              <li data-kind="answer" data-label="AI suggests">The AI says: "To be safe, plan to hire 68 drivers."</li>
              <li data-kind="warn" data-label="Cost check">Hiring for the worst case costs more if it does not happen: £1,514,020 a year against £1,335,900 for the base case. Priya plans for the base case, with triggers.</li>
              <li data-kind="check" data-label="People decide">Priya, Daniel and Helen agree: hire for 58, and move to the worst-case plan if more than 8 drivers leave in one quarter.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to build a three-scenario model for a staffing gap in your area, or use the made-up example as it is. Then test the formulas in a spreadsheet.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a workforce planning adviser. Use simple English. All data is made up.

        Role: [delivery drivers at a UK parcel company].
        People in the role today: [135].
        Extra posts from a new site: [22].
        Volume growth next year: best [3%], base [6%], worst [9%].
        Leavers next year: best [22], base [28], worst [34].
        "Worst" means hardest to staff.

        Please:
        1. Calculate demand (today x (1 + growth), rounded, plus new posts), supply (today minus leavers) and the gap for each case. Show the working.
        2. Give a spreadsheet layout with inputs at the top and Best, Base and Worst in columns B to D. Write the formulas once, for column B.
        3. Give a formula that shows the gap for the scenario typed in cell G1.
        4. Say which input moves the gap most.
        5. Suggest 3 early warning triggers with numbers, and what to do when each one fires.
        6. Recommend which case to plan for, and why. Say that leaders make the final decision.</pre>
            <ul class="ai-try-checks">
              <li>Gaps: best 161 - 113 = 48, base 165 - 107 = 58, worst 169 - 101 = 68.</li>
              <li>Formulas use cell references, so they copy across correctly.</li>
              <li>It finds that leavers move the gap more than growth.</li>
              <li>Triggers are specific numbers, not vague words.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Scenarios turn one fragile number into a range you can plan for. Keep them few and realistic, use one formula set for all of them, and set triggers that tell you early which future is arriving.
        </div>
      HTML
      starter_code: nil
    },
    9 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-hr">HR & Recruitment</div>
          <h1 class="lc-title">Build, Buy, Borrow or Automate</h1>
        </div>
        <p class="lc-lead">Once you know a gap, you must decide how to close it. You can build (train your own people), buy (hire), borrow (use agency workers, contractors or suppliers) or automate (let machines or software do some tasks). Most real plans mix these options. In this lesson you will compare the four options on cost, speed and risk. You will score them in a spreadsheet and use AI to test your thinking. You will help Northbridge Logistics close three gaps.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 310" role="img" aria-label="Four boxes. Build: train your own people, for example cross-train 2 technicians on conveyors; slow to start, keeps skills. Buy: hire from outside, for example Leeds drivers and a technician; faster, costs to recruit. Borrow: agency workers, contractors or suppliers, for example 120 agency FTE in November and December; fast and flexible, costs more per hour. Automate: machines or software do tasks, for example the new Manchester sorter from April 2027, saving about 7 FTE, with people moved, not made redundant.">
            <g font-family="inherit" font-size="12" fill="#e2e0f0">
              <text x="380" y="24" font-size="13" font-weight="700" fill="#c4b5fd" text-anchor="middle">Four ways to close a gap at Northbridge</text>
              <rect x="20" y="40" width="352" height="116" rx="10" fill="#1f1f44" stroke="#10b981" stroke-width="2"/>
              <text x="40" y="66" font-size="14" font-weight="700" fill="#6ee7b7">BUILD</text>
              <text x="100" y="66" fill="#9b99b8">Train your own people</text>
              <text x="40" y="94">Cross-train 2 technicians on conveyors</text>
              <text x="40" y="114">Driver academy for HGV licences</text>
              <text x="40" y="140" font-size="11" fill="#9b99b8">Slow to start. Keeps skills in the company.</text>
              <rect x="388" y="40" width="352" height="116" rx="10" fill="#1f1f44" stroke="#3b82f6" stroke-width="2"/>
              <text x="408" y="66" font-size="14" font-weight="700" fill="#93c5fd">BUY</text>
              <text x="456" y="66" fill="#9b99b8">Hire from outside</text>
              <text x="408" y="94">Hire Leeds drivers and planners</text>
              <text x="408" y="114">Hire a technician with sorter skills</text>
              <text x="408" y="140" font-size="11" fill="#9b99b8">Faster for ready skills. Recruiting costs money.</text>
              <rect x="20" y="170" width="352" height="116" rx="10" fill="#1f1f44" stroke="#f59e0b" stroke-width="2"/>
              <text x="40" y="196" font-size="14" font-weight="700" fill="#fcd34d">BORROW</text>
              <text x="118" y="196" fill="#9b99b8">Agency, contractors, suppliers</text>
              <text x="40" y="224">120 agency FTE in Nov and Dec</text>
              <text x="40" y="244">Supplier contract for sorter repairs</text>
              <text x="40" y="270" font-size="11" fill="#9b99b8">Fast and flexible. Costs more per hour.</text>
              <rect x="388" y="170" width="352" height="116" rx="10" fill="#1f1f44" stroke="#ec4899" stroke-width="2"/>
              <text x="408" y="196" font-size="14" font-weight="700" fill="#f9a8d4">AUTOMATE</text>
              <text x="496" y="196" fill="#9b99b8">Machines or software</text>
              <text x="408" y="224">New Manchester sorter, April 2027</text>
              <text x="408" y="244">Saves about 7 FTE of work</text>
              <text x="408" y="270" font-size="11" fill="#9b99b8">People move to new work, not out.</text>
              <text x="380" y="304" font-size="11" fill="#9b99b8" text-anchor="middle">Made-up examples. Most plans mix two or more options.</text>
            </g>
          </svg>
          <figcaption>Each option has a different speed, cost and risk. Northbridge uses all four in its 2027 plan.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The four options compared</h3>
          <table class="lc-table">
            <thead><tr><th>Option</th><th>Best when</th><th>Watch out for</th></tr></thead>
            <tbody>
              <tr><td><strong>Build</strong>: train and develop your own people</td><td>You have time, people want to grow, and the skill is core to your work</td><td>Training takes months. People need cover while they train.</td></tr>
              <tr><td><strong>Buy</strong>: hire from outside</td><td>You need ready skills soon, or new ideas</td><td>Recruiting time and cost. New starters often leave faster in their first months.</td></tr>
              <tr><td><strong>Borrow</strong>: agency workers, contractors, outsourcing</td><td>The need is short, uncertain or seasonal</td><td>Higher cost per hour. Skills leave with the worker. Extra legal rules.</td></tr>
              <tr><td><strong>Automate</strong>: machines or software do some tasks</td><td>The work is repeated and high in volume</td><td>Upfront cost, delays, new skills to run it, and effects on people's jobs</td></tr>
            </tbody>
          </table>
          <p>Two more options often matter. <strong>Keep</strong> the people you have: the scenario lesson showed that fewer leavers can shrink a gap fastest. And <strong>move</strong> people inside the company, which a later lesson covers.</p>
          <p>Some legal points to know, in general words:</p>
          <ul class="lc-list">
            <li>In the UK, agency workers gain the right to equal basic pay and conditions after 12 weeks. The 12 weeks must be in the same role with the same hirer (Agency Workers Regulations 2010). Long agency use can cost more than it first seems.</li>
            <li>Some contractors work through their own small companies. A medium or large UK business that uses them usually decides their tax status. These are the off-payroll working rules, often called IR35.</li>
            <li>If automation could put any jobs at risk, fair selection and consultation rules apply.</li>
          </ul>
          <p>This is general information, not legal advice. Check with an employment lawyer or HR adviser.</p>
        </div>
        <div class="lc-card">
          <h3>Two worked examples</h3>
          <p><strong>1. Agency or employees for steady work?</strong> The demand forecast showed that London and Manchester need about 19 warehouse FTE above their employees, even in the quietest month (10.6 + 8.2). Helen rounds this to 20. Today agency workers cover this work all year. Helen Marsh asks for a rough comparison (made-up figures):</p>
          <table class="lc-table">
            <thead><tr><th>Option</th><th>Working</th><th>Yearly cost</th></tr></thead>
            <tbody>
              <tr><td>Borrow: 20 agency FTE all year</td><td>20 &times; 2,080 hours &times; £19.50</td><td>£811,200</td></tr>
              <tr><td>Buy: 20 employee FTE</td><td>20 &times; £32,940 loaded cost</td><td>£658,800</td></tr>
              <tr><td>Difference</td><td>£811,200 &minus; £658,800</td><td>about £152,400 a year</td></tr>
            </tbody>
          </table>
          <p>This is a rough first answer. Finance must add recruitment and training costs, and holiday and sickness cover. Employees also bring steady skills and lower early turnover if onboarding is good. Northbridge would still use agency workers for the November and December peak.</p>
          <p><strong>2. Automation without redundancy.</strong> The new Manchester sorter should save about 7 of 72 warehouse FTE from April 2027. Daniel Okafor wants to move people, not make them redundant. About 14 Manchester warehouse operatives leave each year, so about 7 leave in 6 months. Northbridge can:</p>
          <ul class="lc-list">
            <li>Leave some of those posts empty when people leave, instead of hiring.</li>
            <li>Train some operatives to run and check the new sorter (build).</li>
            <li>Offer roles at the new Leeds depot to people who want to move.</li>
          </ul>
          <p>Talk to staff early. Tell them what will change, when and why.</p>
        </div>
        <div class="lc-card">
          <h3>Score the options in a spreadsheet</h3>
          <p>A <strong>weighted score</strong> helps you compare options openly. Agree the criteria and their weights first. Then score each option from 1 (poor) to 5 (good). Here are the options for the 22 Leeds drivers:</p>
          <table class="lc-table">
            <thead><tr><th>Option</th><th>Cost (30%)</th><th>Speed (30%)</th><th>Risk (20%)</th><th>Skills kept (20%)</th><th>Weighted score</th></tr></thead>
            <tbody>
              <tr><td>Buy: hire qualified HGV drivers</td><td>3</td><td>4</td><td>3</td><td>4</td><td>3.5</td></tr>
              <tr><td>Build: driver academy for staff</td><td>4</td><td>2</td><td>3</td><td>5</td><td>3.4</td></tr>
              <tr><td>Borrow: agency drivers</td><td>2</td><td>5</td><td>2</td><td>1</td><td>2.7</td></tr>
            </tbody>
          </table>
          <p>Put the weights in B2:E2 (0.3, 0.3, 0.2, 0.2) and Buy's scores in B3:E3. Then:</p>
          <pre><code>F3  =SUMPRODUCT($B$2:$E$2, B3:E3)</code></pre>
          <p>Copy F3 down for the other options. Buy gets 0.9 + 1.2 + 0.6 + 0.8 = 3.5.</p>
          <p>Buy and Build are very close. So the best plan is a mix: hire most Leeds drivers, and start a driver academy for staff who want to drive. Getting an HGV licence takes months: a medical, theory tests, training, a practical test and the Driver CPC qualification. Scores are judgements, so ask the people who know the work to agree them.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Should we hire or train drivers?</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>We need 22 HGV drivers for a new UK depot opening in 9 months.
        Options: hire qualified drivers, train our own staff, use agency
        drivers. Criteria: cost 30%, speed 30%, risk 20%, skills kept 20%.
        1. For each option, list 3 pros and 3 cons.
        2. Suggest a score from 1 to 5 for each criterion, with a reason.
        3. Calculate weighted scores and show the working.
        4. Suggest a mix of options with rough numbers and timing.
        5. List the facts I must check with finance and operations.
        Do not invent costs. Mark every guess as an assumption.</code></pre>
        </div>
        <div class="lc-card">
          <h3>Activity: which option is it?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each Northbridge action into build, buy, borrow or automate.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="build" data-label="Build"></div>
              <div data-sorter-target="bucket" data-bucket="buy" data-label="Buy"></div>
              <div data-sorter-target="bucket" data-bucket="borrow" data-label="Borrow"></div>
              <div data-sorter-target="bucket" data-bucket="automate" data-label="Automate"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="build" data-why="Training existing staff in a new skill is build.">Cross-train two maintenance technicians to repair conveyors before April 2027.</li>
              <li data-bucket="buy" data-why="Recruiting from outside the company is buy.">Advertise for 22 qualified HGV drivers for the Leeds depot.</li>
              <li data-bucket="borrow" data-why="Agency workers are not employees. Using them for a short peak is borrow.">Book 120 agency FTE for November and December.</li>
              <li data-bucket="automate" data-why="A machine takes over part of the sorting work, so this is automate.">Install a new sortation conveyor in Manchester.</li>
              <li data-bucket="build" data-why="Helping current staff gain a licence develops your own people, so it is build.">Pay for warehouse staff who want to drive to get an HGV licence.</li>
              <li data-bucket="borrow" data-why="Using a supplier's experts under contract is borrow.">Sign a contract with the sorter supplier for emergency repairs.</li>
              <li data-bucket="automate" data-why="Software that answers simple tracking questions automates part of the work. People still handle complaints.">Let customers check parcel status online without calling customer service.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to compare options for one gap in your organisation, or use the made-up gap as it is. Then check its scores and costs.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a workforce planning adviser. Use simple English. All data is made up.

        Organisation: [a UK warehouse and delivery company].
        Gap to close: [3 more people who can maintain conveyors and sorters, within 6 months. Only 2 people can do it today].
        Options: build (train our own technicians), buy (hire), borrow (contractors or the supplier), automate.
        Criteria and weights: [cost 30%, speed 30%, risk 20%, skills kept 20%].

        Please:
        1. Explain each option for this gap in 2 sentences.
        2. Score each option from 1 (poor) to 5 (good) on each criterion, with a short reason.
        3. Calculate the weighted scores. Show the working for one option.
        4. Give the spreadsheet formula, with weights in B2:E2 and scores in B3:E3.
        5. Recommend a mix of options with timing. Explain the main risk.
        6. List the legal or contract points to check with an adviser, in general words.

        Do not invent prices. Say that leaders make the final decision.</pre>
            <ul class="ai-try-checks">
              <li>The weighted score maths is correct (check one row yourself).</li>
              <li>The formula is a SUMPRODUCT of weights and scores.</li>
              <li>It suggests a mix, for example training plus a supplier contract as backup.</li>
              <li>It gives no made-up prices and points legal questions to an adviser.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> There is rarely one right answer. Compare build, buy, borrow and automate on the same criteria, show your working, and plan a mix. When automation changes jobs, plan how people move into new work, and talk to them early.
        </div>
      HTML
      starter_code: nil
    },
    10 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-hr">HR & Recruitment</div>
          <h1 class="lc-title">Succession Planning</h1>
        </div>
        <p class="lc-lead">Some roles are so important that the business suffers if they are empty, even for a few weeks. Succession planning means finding these critical roles and preparing people who could step into them. In this lesson you will score roles to find the critical ones and build a succession map with ready-now and ready-later successors. You will also learn how to run a fair talent review, and where AI helps and where it must not decide. You will follow Priya Shah as she prepares Northbridge Logistics for 2027.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 320" role="img" aria-label="Succession map for five critical roles at Northbridge. Leeds depot manager: ready now Sarah Kim, ready later Joe Barnes. Manchester site manager: no ready-now successor, ready later Ryan Doyle. Conveyor maintenance: no ready-now successor, ready later Kemi Adeyemi and Liam Walsh. Lead planner London: ready now Ben Carter, no ready-later successor. Payroll lead: no ready-now successor, ready later Chloe Evans. Bench strength: 2 of 5 critical roles have a ready-now successor, 40 percent.">
            <g font-family="inherit" font-size="12" fill="#e2e0f0">
              <text x="380" y="24" font-size="13" font-weight="700" fill="#c4b5fd" text-anchor="middle">Northbridge succession map (made-up names)</text>
              <text x="30" y="52" font-weight="700" fill="#9b99b8">Critical role</text>
              <text x="270" y="52" font-weight="700" fill="#9b99b8">Ready now</text>
              <text x="500" y="52" font-weight="700" fill="#9b99b8">Ready later (1 to 3 years)</text>
              <rect x="20" y="62" width="230" height="36" rx="6" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="32" y="85">Leeds depot manager</text>
              <rect x="260" y="62" width="220" height="36" rx="6" fill="#064e3b" stroke="#10b981"/>
              <text x="272" y="85">Sarah Kim</text>
              <rect x="490" y="62" width="250" height="36" rx="6" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="502" y="85">Joe Barnes</text>
              <rect x="20" y="106" width="230" height="36" rx="6" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="32" y="129">Manchester site manager</text>
              <rect x="260" y="106" width="220" height="36" rx="6" fill="#1f1f44" stroke="#ec4899" stroke-dasharray="5 3"/>
              <text x="272" y="129" fill="#f9a8d4">None</text>
              <rect x="490" y="106" width="250" height="36" rx="6" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="502" y="129">Ryan Doyle</text>
              <rect x="20" y="150" width="230" height="36" rx="6" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="32" y="173">Conveyor maintenance</text>
              <rect x="260" y="150" width="220" height="36" rx="6" fill="#1f1f44" stroke="#ec4899" stroke-dasharray="5 3"/>
              <text x="272" y="173" fill="#f9a8d4">None</text>
              <rect x="490" y="150" width="250" height="36" rx="6" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="502" y="173">Kemi Adeyemi, Liam Walsh</text>
              <rect x="20" y="194" width="230" height="36" rx="6" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="32" y="217">Lead planner, London</text>
              <rect x="260" y="194" width="220" height="36" rx="6" fill="#064e3b" stroke="#10b981"/>
              <text x="272" y="217">Ben Carter</text>
              <rect x="490" y="194" width="250" height="36" rx="6" fill="#1f1f44" stroke="#ec4899" stroke-dasharray="5 3"/>
              <text x="502" y="217" fill="#f9a8d4">None</text>
              <rect x="20" y="238" width="230" height="36" rx="6" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="32" y="261">Payroll lead</text>
              <rect x="260" y="238" width="220" height="36" rx="6" fill="#1f1f44" stroke="#ec4899" stroke-dasharray="5 3"/>
              <text x="272" y="261" fill="#f9a8d4">None</text>
              <rect x="490" y="238" width="250" height="36" rx="6" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="502" y="261">Chloe Evans</text>
              <text x="380" y="300" font-size="13" font-weight="700" fill="#e2e0f0" text-anchor="middle">Bench strength: 2 of 5 critical roles have a ready-now successor = 40%</text>
            </g>
          </svg>
          <figcaption>Green means someone is ready now. Dashed pink means nobody is. Three critical roles have no ready-now successor.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Step 1: find the critical roles</h3>
          <p>A <strong>critical role</strong> is a role that would hurt the business badly if it were empty, and that is hard to fill. It is not always a senior job. A technician with rare skills can matter as much as a director.</p>
          <p>Priya scores each role from 1 to 5 on two questions. <strong>Impact</strong>: how much harm if the role is empty for 3 months? <strong>Difficulty</strong>: how hard is it to replace the person? She multiplies the two scores. A score of 15 or more means critical.</p>
          <table class="lc-table">
            <thead><tr><th>Role</th><th>Impact</th><th>Difficulty</th><th>Score</th><th>Result</th></tr></thead>
            <tbody>
              <tr><td>Conveyor and sorter maintenance</td><td>5</td><td>5</td><td>25</td><td>Critical</td></tr>
              <tr><td>Leeds depot manager (new post)</td><td>5</td><td>4</td><td>20</td><td>Critical</td></tr>
              <tr><td>Manchester site manager</td><td>5</td><td>4</td><td>20</td><td>Critical</td></tr>
              <tr><td>Lead transport planner, London</td><td>4</td><td>4</td><td>16</td><td>Critical</td></tr>
              <tr><td>Payroll lead</td><td>4</td><td>4</td><td>16</td><td>Critical</td></tr>
              <tr><td>Team leader</td><td>3</td><td>2</td><td>6</td><td>Not critical</td></tr>
              <tr><td>Warehouse operative</td><td>2</td><td>1</td><td>2</td><td>Not critical</td></tr>
            </tbody>
          </table>
          <p>With impact in column B and difficulty in column C:</p>
          <pre><code>=IF(B2*C2&gt;=15, "Critical", "Not critical")</code></pre>
          <p>Team leaders are not critical one by one, because there are 24 of them. But Northbridge needs a steady supply of new ones, so they belong in the talent pipeline. Score roles, not people. The question is "What if this role were empty?", not "Who might leave?"</p>
        </div>
        <div class="lc-card">
          <h3>Step 2: name successors and measure readiness</h3>
          <p>For each critical role, the plan names possible successors in three groups:</p>
          <ul class="lc-list">
            <li><strong>Ready now</strong>: could do the job now, with normal support.</li>
            <li><strong>Ready later</strong>: could do the job in 1 to 3 years, with development.</li>
            <li><strong>Emergency cover</strong>: who keeps the work going tomorrow if the role is suddenly empty.</li>
          </ul>
          <table class="lc-table">
            <thead><tr><th>Critical role</th><th>Ready now</th><th>Ready later</th><th>Emergency cover</th><th>Development action</th></tr></thead>
            <tbody>
              <tr><td>Leeds depot manager</td><td>Sarah Kim (London warehouse manager)</td><td>Joe Barnes (London team leader)</td><td>Manchester site manager</td><td>Sarah leads the Leeds set-up project from spring 2027</td></tr>
              <tr><td>Manchester site manager</td><td>None</td><td>Ryan Doyle (Manchester team leader)</td><td>London site manager</td><td>Ryan joins a management course and covers holidays</td></tr>
              <tr><td>Conveyor maintenance</td><td>None</td><td>Kemi Adeyemi, Liam Walsh</td><td>Supplier repair contract</td><td>Supplier training before April 2027</td></tr>
              <tr><td>Lead planner, London</td><td>Ben Carter (London planner)</td><td>None</td><td>Manchester planners</td><td>Ask other planners about their interest in the role</td></tr>
              <tr><td>Payroll lead</td><td>None</td><td>Chloe Evans (payroll administrator)</td><td>External payroll bureau</td><td>Chloe runs one payroll cycle with support each quarter</td></tr>
            </tbody>
          </table>
          <p><strong>Bench strength</strong> is the share of critical roles with at least one ready-now successor. Here it is 2 of 5, which is 40%.</p>
          <p>Watch for <strong>succession chains</strong>. If Sarah Kim moves to Leeds, the London warehouse manager role becomes empty. That role then needs its own successor. Also, being named as a successor is not a promise of promotion. Real jobs are filled through a fair, open process.</p>
        </div>
        <div class="lc-card">
          <h3>Step 3: run a fair talent review</h3>
          <p>A <strong>talent review</strong> is a meeting where managers discuss people's readiness and development. Bias can enter easily. Common examples are favouring people like yourself, judging on the last month only, and letting one strength colour everything.</p>
          <ul class="lc-list">
            <li><strong>Use evidence.</strong> Base readiness on work results, skills and feedback, not on "gut feeling".</li>
            <li><strong>Ask people, do not assume.</strong> Have career conversations with everyone. Do not assume a parent or a part-time worker would not want a bigger job or a move.</li>
            <li><strong>Calibrate.</strong> Managers compare their views together, so one manager's habits do not decide alone.</li>
            <li><strong>Check the totals.</strong> Tom checks the 7 named successors. None works part time, yet 45 of 420 people (10.7%) do. Priya asks managers to review part-timers again.</li>
          </ul>
          <p>Many companies use a <strong>9-box grid</strong>: performance on one axis and potential on the other. "Potential" is a judgement, so it needs the most care and evidence.</p>
          <p>AI can help you draft development plans, summarise evidence that people provide and flag biased words in review notes. AI must not rate people's potential or decide who is promoted. AI cannot read personality or emotions from text, voice or video. The EU AI Act treats AI used for promotion decisions as high-risk. It also bans emotion recognition at work in the EU, except for narrow medical or safety reasons. In the UK, the Equality Act 2010 applies to promotion and training decisions. In the US, Title VII and the ADEA do too. This is general information, not legal advice. Check with an employment lawyer or HR adviser.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Read these review notes and tell me who has the most potential.</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Below are made-up talent review notes with IDs, not names.
        Do not rate or rank the people.
        1. Flag words or phrases that may show bias (for example about
           age, family, gender, health or part-time work). Explain why.
        2. Suggest neutral, evidence-based wording for each flag.
        3. List questions the manager should answer with evidence.

        E201: "A natural leader, reminds me of myself at that age."
        E318: "Strong results, but with young kids she won't want more hours."
        E442: "Works part time, so not really management material."</code></pre>
        </div>
        <div class="lc-card">
          <h3>Activity: a fair succession process</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put the steps of Priya's succession process in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Score roles on impact and difficulty to find the critical roles.</li>
              <li data-order="2">Hold career conversations with staff about their interests and goals.</li>
              <li data-order="3">Managers propose possible successors, with evidence for each one.</li>
              <li data-order="4">Hold a calibration meeting to agree ready-now and ready-later lists.</li>
              <li data-order="5">Check the lists in totals for fairness, for example part-time staff and protected groups.</li>
              <li data-order="6">Agree a development action and emergency cover for each critical role.</li>
              <li data-order="7">Review the succession map every six months, or when a key person changes role.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to build a succession map and development actions from made-up data. Then check that it stays fair and leaves decisions to people.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an HR adviser who helps with succession planning. Use simple English. All data is made up.

        Organisation: [a UK delivery company with 420 staff].
        Roles (impact 1-5, difficulty to replace 1-5):
        [Depot manager, new site | 5 | 4]
        [Site manager | 5 | 4]
        [Conveyor maintenance | 5 | 5]
        [Lead transport planner | 4 | 4]
        [Payroll lead | 4 | 4]
        [Team leader | 3 | 2]

        Possible successors (IDs only):
        [E120 ready now for depot manager; E233 ready later for site manager; E301 and E302 ready later for conveyor maintenance; E415 ready now for lead planner; E512 ready later for payroll lead]

        Please:
        1. Multiply impact by difficulty. Mark 15 or more as critical. Show a table.
        2. Build a succession map: role, ready now, ready later, emergency cover, one development action.
        3. Calculate bench strength (critical roles with a ready-now successor / all critical roles).
        4. Name the 2 biggest risks and how to reduce them.
        5. List 4 steps to keep the talent review fair.

        Do not rate any person's potential. Say that people make the final decisions.</pre>
            <ul class="ai-try-checks">
              <li>Five roles are critical (scores 25, 20, 20, 16, 16); team leader (6) is not.</li>
              <li>Bench strength is 2 of 5 = 40%.</li>
              <li>Roles with no ready-now successor are named as risks.</li>
              <li>It does not rate people or use age, family or health.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Plan succession around critical roles, not favourite people. Name ready-now and ready-later successors, add emergency cover, and measure bench strength. Keep talent reviews fair with evidence, open conversations and checks in totals. AI can draft and flag, but people decide.
        </div>
      HTML
      starter_code: nil
    },
    11 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-hr">HR & Recruitment</div>
          <h1 class="lc-title">Internal Mobility</h1>
        </div>
        <p class="lc-lead">Internal mobility means filling jobs with people who already work for you. It includes promotions, moves to another team or site, and training people for a new job. Internal moves are often faster and cheaper than hiring. They keep knowledge in the company and give people a reason to stay. In this lesson you will plan reskilling paths for Northbridge Logistics. You will use AI to compare skills and draft internal adverts. You will also check that every employee has a fair chance to move.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 350" role="img" aria-label="Four internal career paths at Northbridge Logistics for 2027. Warehouse operative to delivery driver through the Driver Academy, 10 places, 3 to 4 months. Warehouse operative to team leader through Team Leader Ready, 12 places, 6 months. London warehouse manager to Leeds depot manager through the succession plan, from June 2027. Maintenance technician to conveyor skills through cross-training before April 2027. A fair access check below: last year 7 of 8 internal moves went to London, and part-timers are 10.7 percent of staff but sent only 6.5 percent of applications.">
            <defs><marker id="wf11a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <g font-size="12" font-weight="700" fill="#c4b5fd" text-anchor="middle">
                <text x="120" y="26">Job today</text>
                <text x="380" y="26">Path (2027 plan)</text>
                <text x="640" y="26">New job</text>
              </g>
              <g text-anchor="middle">
                <rect x="30" y="38" width="180" height="46" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
                <text x="120" y="66">Warehouse operative</text>
                <rect x="280" y="38" width="200" height="46" rx="8" fill="#27274e" stroke="#10b981"/>
                <text x="380" y="57" font-weight="700" fill="#6ee7b7">Driver Academy</text>
                <text x="380" y="75" font-size="11" fill="#9b99b8">10 places, 3 to 4 months</text>
                <rect x="550" y="38" width="180" height="46" rx="8" fill="#1f1f44" stroke="#8b5cf6"/>
                <text x="640" y="66">Delivery driver</text>
                <rect x="30" y="98" width="180" height="46" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
                <text x="120" y="126">Warehouse operative</text>
                <rect x="280" y="98" width="200" height="46" rx="8" fill="#27274e" stroke="#10b981"/>
                <text x="380" y="117" font-weight="700" fill="#6ee7b7">Team Leader Ready</text>
                <text x="380" y="135" font-size="11" fill="#9b99b8">12 places, 6 months</text>
                <rect x="550" y="98" width="180" height="46" rx="8" fill="#1f1f44" stroke="#8b5cf6"/>
                <text x="640" y="126">Team leader</text>
                <rect x="30" y="158" width="180" height="46" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
                <text x="120" y="186">Warehouse manager</text>
                <rect x="280" y="158" width="200" height="46" rx="8" fill="#27274e" stroke="#10b981"/>
                <text x="380" y="177" font-weight="700" fill="#6ee7b7">Succession plan</text>
                <text x="380" y="195" font-size="11" fill="#9b99b8">Ready now, moves June 2027</text>
                <rect x="550" y="158" width="180" height="46" rx="8" fill="#1f1f44" stroke="#8b5cf6"/>
                <text x="640" y="186">Leeds depot manager</text>
                <rect x="30" y="218" width="180" height="46" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
                <text x="120" y="246">Maintenance tech</text>
                <rect x="280" y="218" width="200" height="46" rx="8" fill="#27274e" stroke="#10b981"/>
                <text x="380" y="237" font-weight="700" fill="#6ee7b7">Cross-training</text>
                <text x="380" y="255" font-size="11" fill="#9b99b8">2 more people by April 2027</text>
                <rect x="550" y="218" width="180" height="46" rx="8" fill="#1f1f44" stroke="#8b5cf6"/>
                <text x="640" y="246">Conveyor skills</text>
              </g>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#wf11a)">
                <line x1="212" y1="61" x2="274" y2="61"/>
                <line x1="482" y1="61" x2="544" y2="61"/>
                <line x1="212" y1="121" x2="274" y2="121"/>
                <line x1="482" y1="121" x2="544" y2="121"/>
                <line x1="212" y1="181" x2="274" y2="181"/>
                <line x1="482" y1="181" x2="544" y2="181"/>
                <line x1="212" y1="241" x2="274" y2="241"/>
                <line x1="482" y1="241" x2="544" y2="241"/>
              </g>
              <rect x="30" y="282" width="700" height="50" rx="8" fill="#27274e" stroke="#f59e0b" stroke-width="2"/>
              <text x="46" y="302" font-weight="700" fill="#fcd34d">Fair access check (last 12 months)</text>
              <text x="46" y="322" font-size="12">7 of 8 internal moves went to London. Part-timers: 10.7% of staff, 6.5% of applications.</text>
            </g>
          </svg>
          <figcaption>Northbridge plans four internal paths for 2027. The fair access check shows that last year's moves did not reach everyone.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>What internal mobility is, and how to measure it</h3>
          <p>There are four common types of internal move:</p>
          <ul class="lc-list">
            <li><strong>Promotion</strong>: a move to a job with more responsibility, such as warehouse operative to team leader.</li>
            <li><strong>Lateral move</strong>: a move at the same level to a different team or site.</li>
            <li><strong>Reskilling</strong>: training a person for a different job, such as warehouse operative to lorry driver.</li>
            <li><strong>Temporary move</strong> (secondment): a set period in another job, then a return.</li>
          </ul>
          <p>A simple measure is the <strong>internal fill rate</strong>: jobs filled by current employees divided by all jobs filled. In the last 12 months, Northbridge made 94 external hires and 8 internal moves.</p>
          <pre><code>Internal fill rate = 8 / (94 + 8) = 8 / 102 = 7.8%</code></pre>
          <p>In a spreadsheet, put internal moves in B2 and external hires in B3:</p>
          <pre><code>=B2/(B2+B3)</code></pre>
          <p>Format the cell as a percentage. It shows 7.8%.</p>
          <p>Remember the <strong>backfill</strong>. Every internal move leaves a job behind. If a warehouse operative becomes a driver, the warehouse still needs someone. Count backfills in your hiring plan, or the plan will be too small.</p>
          <p>Why bother? 12 of the 64 people who resigned last year gave "better job elsewhere" as the main reason. Some of them might have stayed for a better job inside Northbridge.</p>
        </div>
        <div class="lc-card">
          <h3>Reskilling paths for 2027</h3>
          <p>A <strong>reskilling path</strong> lists the steps, time and cost to move a person from one job to another. Priya and Daniel Okafor agree four paths for 2027. The times and costs are Northbridge's own planning assumptions (made up).</p>
          <table class="lc-table">
            <thead><tr><th>From</th><th>To</th><th>Main steps</th><th>Time</th><th>Places</th></tr></thead>
            <tbody>
              <tr><td>Warehouse operative</td><td>Delivery driver (rigid lorry, Category C)</td><td>Full car licence first. Medical, provisional lorry licence, training, theory and driving tests, Driver CPC initial qualification. Then driving with a mentor.</td><td>3 to 4 months</td><td>10 (6 London, 4 Manchester). Budget &pound;3,800 each.</td></tr>
              <tr><td>Warehouse operative</td><td>Team leader</td><td>"Team Leader Ready": rotas, health and safety, difficult conversations, WMS reports, shadowing a team leader.</td><td>6 months</td><td>12. Aim: 4 promotions for Leeds.</td></tr>
              <tr><td>London warehouse manager</td><td>Leeds depot manager</td><td>Sarah Kim is the ready-now successor in the succession plan. The post is still advertised internally, and she applies like anyone else. She leads the set-up project from spring, then moves full time.</td><td>From 7 June 2027</td><td>1. London needs a new warehouse manager.</td></tr>
              <tr><td>Maintenance technician</td><td>Conveyor and sorter maintenance</td><td>Supplier training on the new Manchester sorter.</td><td>Before April 2027</td><td>2 more technicians</td></tr>
            </tbody>
          </table>
          <p>Check the licence steps on GOV.UK before you publish them to staff. Licence rules and test waiting times change.</p>
          <p><strong>The Manchester conveyor.</strong> The new sorter will remove about 7 warehouse roles in Manchester from April 2027. Daniel wants to move people, not make them redundant. Manchester warehouse loses about 14 people a year, so about 1.2 a month. Priya's plan:</p>
          <ul class="lc-list">
            <li>4 Manchester operatives join the Driver Academy and are not replaced in the warehouse.</li>
            <li>3 leaver vacancies from January to March 2027 are not refilled (14 leavers a year &divide; 12 &times; 3 months = 3.5).</li>
            <li>4 + 3 = 7 roles. No redundancies are needed if the numbers hold. Priya checks every month.</li>
            <li>Some operatives also retrain to run the new sorter, and anyone who wants a Leeds job can apply for one.</li>
          </ul>
          <p>Over the year, the paths give 15 internal moves: 10 drivers, 4 team leaders and 1 depot manager. That is the 2027 target.</p>
        </div>
        <div class="lc-card">
          <h3>How AI helps: compare skills and draft adverts</h3>
          <p>AI can compare the skills of one job with another and list the gaps. It can draft a reskilling path and write an internal advert in plain English. It cannot know your licence rules, budgets or people. You check every step.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Which warehouse staff should we promote?</code></pre>
          <p>This asks AI to judge people. It has no fair basis to do that.</p>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Compare two jobs at a UK delivery company: warehouse operative
        and team leader. Use the job descriptions below.
        1. List skills the two jobs share.
        2. List the gaps, and for each gap suggest one way to learn it
           (course, shadowing or a project).
        3. Draft a 6-month development plan in a table.
        4. Write a short internal advert for the programme in plain English.
           Say it is open to all staff, including part-timers and people
           on leave. List the criteria clearly.
        Do not judge or rank any person.
        [paste job descriptions, no names]</code></pre>
        </div>
        <div class="lc-card">
          <h3>Fair access: everyone must get a chance to move</h3>
          <p>Tom Reed looks at last year's 8 internal moves and 31 internal applications, in totals only:</p>
          <table class="lc-table">
            <thead><tr><th>Group</th><th>Share of staff</th><th>Share of applications</th><th>Moves</th></tr></thead>
            <tbody>
              <tr><td>Manchester</td><td>170 / 420 = 40.5%</td><td>6 / 31 = 19.4%</td><td>1 of 8</td></tr>
              <tr><td>Part-timers</td><td>45 / 420 = 10.7%</td><td>2 / 31 = 6.5%</td><td>0 of 8</td></tr>
            </tbody>
          </table>
          <p>The numbers are small, so they prove nothing alone. But they raise questions. Priya finds two causes. Some jobs were offered by a "tap on the shoulder" from a manager. Adverts went on the London noticeboard only. Her fixes:</p>
          <ul class="lc-list">
            <li>Post every vacancy internally first, at both sites and on the staff app, for 10 working days (Northbridge's own rule).</li>
            <li>Send vacancies to people on leave, for example maternity or sick leave.</li>
            <li>Write the criteria before adverts go out. Use the same questions for every candidate and two interviewers.</li>
            <li>Run training at times part-timers and every shift can attend.</li>
            <li>Track applications and moves in totals by site, contract type and other groups. Combine small groups.</li>
          </ul>
          <p>Under the UK Equality Act 2010, you must not treat people worse because of a protected characteristic. Part-time workers have a right not to be treated less favourably than full-timers, unless it is objectively justified. In the US, Title VII and the ADEA cover promotions. NYC Local Law 144 requires bias audits for automated tools used in hiring or promotion decisions. This is general information, not legal advice. Check with an employment lawyer or HR adviser.</p>
          <p>Be careful with AI "talent matching" tools. If they learn from past promotions, they may repeat past patterns, such as London-only moves. Let AI suggest options. Let everyone apply. People decide.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: open access or barrier?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each practice. Does it open access to internal moves, or create a barrier?</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="open" data-label="Opens access"></div>
              <div data-sorter-target="bucket" data-bucket="barrier" data-label="Creates a barrier"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="open" data-why="Everyone can see the job at the same time, at both sites.">Every vacancy goes on the staff app and on noticeboards at both sites for 10 working days.</li>
              <li data-bucket="barrier" data-why="Only people the manager already knows get a chance. Others never hear about the job.">A manager offers the team leader job to a person they like, without an advert.</li>
              <li data-bucket="barrier" data-why="Part-timers and some shifts cannot attend, so they lose the chance to qualify.">Driver Academy sessions run only on weekday mornings, full time.</li>
              <li data-bucket="open" data-why="People on leave still hear about jobs and can apply.">HR emails all vacancies to staff on maternity and long-term sick leave.</li>
              <li data-bucket="barrier" data-why="A tool that learns from past promotions can repeat past patterns. People must decide with clear criteria.">An AI tool picks the top 5 candidates, and only those 5 are interviewed.</li>
              <li data-bucket="open" data-why="Clear criteria written in advance make decisions fair and easy to explain.">Criteria are written before the advert, and every candidate gets the same questions.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to design a reskilling path and a fair internal advert. Use the Northbridge example or change the jobs to your own.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an HR adviser who designs internal career paths. Use simple English.

        Company: [Northbridge Logistics, a UK warehouse and delivery company, 420 staff in London and Manchester].
        Move: [warehouse operative to delivery driver (rigid lorry)].
        Places: [10, at both sites]. Budget per person: [GBP 3,800].
        Business reason: [a new depot opens in September 2027 and we need more drivers].

        Please:
        1. List the skills and requirements the two jobs share, and the gaps.
        2. Draft the path as a table: step, what happens, time, who arranges it. Mark any licence or legal step "check on GOV.UK".
        3. Explain the backfill: who will do the person's old job?
        4. Write an internal advert of about 150 words. It must be open to everyone, including part-timers and people on leave. List clear criteria.
        5. List 4 numbers I should track, in totals, to check fair access.

        Do not judge or rank individual employees. Say that legal points need an HR adviser.</pre>
            <ul class="ai-try-checks">
              <li>The path has clear steps, and licence steps say to check official sources.</li>
              <li>The answer mentions the backfill for the old job.</li>
              <li>The advert is open to all and lists criteria, not personal traits.</li>
              <li>Fair access checks use totals, such as applications by site and contract type.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Internal moves fill gaps faster and keep good people, but only if everyone can see and reach them. Plan the path, count the backfill, advertise to all, and check the totals for who applies and who moves.
        </div>
      HTML
      starter_code: nil
    },
    12 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-hr">HR & Recruitment</div>
          <h1 class="lc-title">Hiring Plans and Budgets</h1>
        </div>
        <p class="lc-lead">A hiring plan turns your workforce gap into a list of jobs to fill, with dates and costs. It answers three questions. How many people must we hire, and for which jobs? When must recruiting start? Can our recruiters handle the work, and what will it cost? In this lesson you will build Northbridge Logistics' 2027 hiring plan. You will count backfills, work back from start dates, check recruiter capacity and build a budget. You will also see where AI helps and where it makes mistakes.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 310" role="img" aria-label="Bar chart of planned external starts at Northbridge Logistics in each month of 2027, 152 in total. January 10, February 6, March 32, April 5, May 6, June 5, July 12, August 59, September 6, October 4, November 4, December 3. A dashed line shows recruiter capacity of 13 starts a month. March, with 21 growth hires and 6 backfills, and August, with 52 starts for the Leeds depot, are far above capacity.">
            <g font-family="inherit" font-size="12" fill="#e2e0f0">
              <text x="380" y="24" font-size="13" font-weight="700" fill="#c4b5fd" text-anchor="middle">Planned external starts per month, 2027 (152 in total)</text>
              <line x1="64" y1="250" x2="734" y2="250" stroke="#3a3a66"/>
              <rect x="80.5" y="218" width="34" height="32" rx="3" fill="#3b82f6"/>
              <rect x="135.5" y="230.8" width="34" height="19.2" rx="3" fill="#3b82f6"/>
              <rect x="190.5" y="147.6" width="34" height="102.4" rx="3" fill="#ec4899"/>
              <rect x="245.5" y="234" width="34" height="16" rx="3" fill="#3b82f6"/>
              <rect x="300.5" y="230.8" width="34" height="19.2" rx="3" fill="#3b82f6"/>
              <rect x="355.5" y="234" width="34" height="16" rx="3" fill="#3b82f6"/>
              <rect x="410.5" y="211.6" width="34" height="38.4" rx="3" fill="#3b82f6"/>
              <rect x="465.5" y="61.2" width="34" height="188.8" rx="3" fill="#ec4899"/>
              <rect x="520.5" y="230.8" width="34" height="19.2" rx="3" fill="#3b82f6"/>
              <rect x="575.5" y="237.2" width="34" height="12.8" rx="3" fill="#3b82f6"/>
              <rect x="630.5" y="237.2" width="34" height="12.8" rx="3" fill="#3b82f6"/>
              <rect x="685.5" y="240.4" width="34" height="9.6" rx="3" fill="#3b82f6"/>
              <line x1="64" y1="208.4" x2="734" y2="208.4" stroke="#f59e0b" stroke-width="2" stroke-dasharray="6 4"/>
              <text x="560" y="200" font-size="11" fill="#fcd34d">Capacity: 13 starts a month</text>
              <g text-anchor="middle" font-weight="700">
                <text x="97.5" y="239" fill="#ffffff">10</text>
                <text x="152.5" y="226">6</text>
                <text x="207.5" y="141">32</text>
                <text x="262.5" y="229">5</text>
                <text x="317.5" y="226">6</text>
                <text x="372.5" y="229">5</text>
                <text x="427.5" y="205">12</text>
                <text x="482.5" y="55">59</text>
                <text x="537.5" y="226">6</text>
                <text x="592.5" y="232">4</text>
                <text x="647.5" y="232">4</text>
                <text x="702.5" y="235">3</text>
              </g>
              <g text-anchor="middle" fill="#9b99b8">
                <text x="97.5" y="268">Jan</text>
                <text x="152.5" y="268">Feb</text>
                <text x="207.5" y="268">Mar</text>
                <text x="262.5" y="268">Apr</text>
                <text x="317.5" y="268">May</text>
                <text x="372.5" y="268">Jun</text>
                <text x="427.5" y="268">Jul</text>
                <text x="482.5" y="268">Aug</text>
                <text x="537.5" y="268">Sep</text>
                <text x="592.5" y="268">Oct</text>
                <text x="647.5" y="268">Nov</text>
                <text x="702.5" y="268">Dec</text>
              </g>
              <text x="232" y="168" font-size="11" fill="#f9a8d4">21 growth + 6 backfills</text>
              <text x="506" y="80" font-size="11" fill="#f9a8d4">52 for Leeds</text>
              <text x="380" y="296" font-size="11" fill="#9b99b8" text-anchor="middle">Made-up plan for Northbridge Logistics. Recruiting work happens 1 to 2 months before each start.</text>
            </g>
          </svg>
          <figcaption>Two months need far more starts than the recruiters can handle. The plan must spread the work or add help.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>From the gap to the number of hires</h3>
          <p>Start with the people you need, then take away the people you can find inside. Four things add to the number. Two things reduce it.</p>
          <ul class="lc-list">
            <li><strong>Replacements</strong>: people who will leave. Priya uses last year's leavers by job (78 in total).</li>
            <li><strong>Growth</strong>: volume grows 6%. Drivers: 135 &times; 0.06 = 8.1, so 8. Warehouse: 190 &times; 0.06 = 11.4, so 11. The demand forecast also adds 1 team leader and 1 customer service adviser.</li>
            <li><strong>New site</strong>: the Leeds depot needs 60 people.</li>
            <li><strong>Backfills</strong>: the old jobs of people who move inside (10 Driver Academy trainees, 4 new team leaders, and the London warehouse manager who moves to Leeds).</li>
            <li><strong>Not refilled</strong> (reduces): 7 Manchester warehouse roles after the new conveyor.</li>
            <li><strong>Internal moves</strong> (reduces): 15 jobs filled from inside.</li>
          </ul>
          <table class="lc-table">
            <thead><tr><th>Job</th><th>Replace</th><th>Growth</th><th>Leeds</th><th>Backfill</th><th>Not refilled</th><th>Internal</th><th>External hires</th></tr></thead>
            <tbody>
              <tr><td>Warehouse operative</td><td>34</td><td>11</td><td>30</td><td>14</td><td>&minus;7</td><td>0</td><td><strong>82</strong></td></tr>
              <tr><td>Delivery driver</td><td>28</td><td>8</td><td>22</td><td>0</td><td>0</td><td>&minus;10</td><td><strong>48</strong></td></tr>
              <tr><td>Team leader</td><td>3</td><td>1</td><td>4</td><td>0</td><td>0</td><td>&minus;4</td><td><strong>4</strong></td></tr>
              <tr><td>Transport planner</td><td>1</td><td>0</td><td>2</td><td>0</td><td>0</td><td>0</td><td><strong>3</strong></td></tr>
              <tr><td>Maintenance technician</td><td>2</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td><strong>3</strong></td></tr>
              <tr><td>Customer service adviser</td><td>6</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td><strong>7</strong></td></tr>
              <tr><td>Manager</td><td>1</td><td>0</td><td>1</td><td>1</td><td>0</td><td>&minus;1</td><td><strong>2</strong></td></tr>
              <tr><td>Office and admin</td><td>3</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td><strong>3</strong></td></tr>
              <tr><td><strong>Total</strong></td><td>78</td><td>21</td><td>60</td><td>15</td><td>&minus;7</td><td>&minus;15</td><td><strong>152</strong></td></tr>
            </tbody>
          </table>
          <p>The warehouse has 14 backfills: 10 Driver Academy trainees and 4 new team leaders all come from the warehouse. In a spreadsheet, put the columns in B to G. The "not refilled" and "internal" columns hold negative numbers, so one sum works for each row:</p>
          <pre><code>=SUM(B2:G2)</code></pre>
          <p>For the warehouse row, this gives 34 + 11 + 30 + 14 &minus; 7 + 0 = 82. The driver row gives 48. That is the 58-driver gap minus 10 drivers from the Driver Academy.</p>
        </div>
        <div class="lc-card">
          <h3>Timing and recruiter capacity</h3>
          <p><strong>Time to hire</strong> is the time from an approved vacancy to the person's first day. Tom Reed takes the averages from last year's hiring records (made up). Warehouse: 5 weeks. Customer service: 6. Admin: 7. HGV driver and team leader: 8. Planner: 10. Technician: 12. Manager: 14. Work back from the start date to find when recruiting must start.</p>
          <p>Sarah Kim, the London warehouse manager, moves to run the Leeds depot from 7 June. So London needs a new warehouse manager by then.</p>
          <table class="lc-table">
            <thead><tr><th>Job</th><th>First day</th><th>Time to hire</th><th>Start recruiting by</th></tr></thead>
            <tbody>
              <tr><td>London warehouse manager (backfill for Sarah Kim)</td><td>Mon 7 Jun 2027</td><td>14 weeks</td><td>Mon 1 Mar 2027</td></tr>
              <tr><td>Maintenance technician</td><td>Mon 5 Jul 2027</td><td>12 weeks</td><td>Mon 12 Apr 2027</td></tr>
              <tr><td>Transport planner</td><td>Mon 5 Jul 2027</td><td>10 weeks</td><td>Mon 26 Apr 2027</td></tr>
              <tr><td>Delivery drivers</td><td>Mon 2 Aug 2027</td><td>8 weeks</td><td>Mon 7 Jun 2027</td></tr>
              <tr><td>Warehouse operatives</td><td>Mon 2 Aug 2027</td><td>5 weeks</td><td>Mon 28 Jun 2027</td></tr>
            </tbody>
          </table>
          <p>Leeds staff start before the depot opens on 1 September, so they can train. With the first day in B2 and the weeks in C2, the formula is:</p>
          <pre><code>=B2-7*C2</code></pre>
          <p>Format the cell as a date. Leave time for right-to-work checks before anyone starts, and for driving licence checks.</p>
          <p><strong>Capacity</strong> is how many hires your recruiters can complete. Northbridge has one in-house recruiter, Aisha Khan, who manages about 10 starts a month. Tom helps with about 3. So capacity is about 13 starts a month. The chart shows two problems: March (32 starts) and August (59 starts). Priya's fixes:</p>
          <ul class="lc-list">
            <li>Start growth hiring in January and split the starts between February and March.</li>
            <li>Start Leeds volume recruiting in May, not June. That spreads 52 hires over three months, about 17 a month.</li>
            <li>Add a contract recruiter from May to August (about 10 more starts a month), and run group assessment days.</li>
            <li>Agree a back-up recruitment agency for drivers in case the market is tight.</li>
          </ul>
          <p>From May to July, the load is then about 17 Leeds hires plus about 7 other hires a month: 24 against a capacity of 23. It is tight, so the back-up matters.</p>
        </div>
        <div class="lc-card">
          <h3>The hiring budget</h3>
          <p><strong>Cost per hire</strong> covers adverts, assessments, checks and agency fees. Northbridge's figures are made up: warehouse &pound;450, customer service &pound;500, admin &pound;900, driver &pound;1,100, team leader &pound;1,500, planner &pound;3,000. Technicians and managers go through agencies: 15% of a &pound;40,000 salary is &pound;6,000, and 18% of &pound;56,000 is &pound;10,080.</p>
          <table class="lc-table">
            <thead><tr><th>Budget line, 2027</th><th>Working</th><th>Cost</th></tr></thead>
            <tbody>
              <tr><td>Recruitment costs</td><td>Hires &times; cost per hire, all 8 jobs (warehouse 82 &times; &pound;450 = &pound;36,900; drivers 48 &times; &pound;1,100 = &pound;52,800 and so on)</td><td>&pound;149,060</td></tr>
              <tr><td>Driver Academy training</td><td>10 &times; &pound;3,800</td><td>&pound;38,000</td></tr>
              <tr><td>Leeds pay, staggered starts</td><td>Loaded cost &times; FTE &times; months worked / 12</td><td>&pound;982,405</td></tr>
              <tr><td>Growth jobs, net</td><td>8 drivers, about 10 warehouse FTE, 1 team leader and 1 customer service FTE from March, less 7 warehouse FTE saved from April</td><td>&pound;460,957</td></tr>
              <tr><td>Driver Academy pay rise</td><td>10 &times; (&pound;44,530 &minus; &pound;32,940) &times; 7 / 12</td><td>&pound;67,608</td></tr>
              <tr><td>Contract recruiter</td><td>4 months &times; &pound;4,000</td><td>&pound;16,000</td></tr>
              <tr><td><strong>Total</strong></td><td></td><td><strong>&pound;1,714,030</strong></td></tr>
            </tbody>
          </table>
          <p>Earlier, the Leeds cost for 2027 was &pound;756,807, if everyone started on 1 September. Earlier starts for training add &pound;225,598. Leaders should see that choice clearly. Loaded cost is salary plus on-costs (22%, made up).</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Make a hiring budget for 152 people.</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Here is my hiring table by job (totals only) and my cost-per-hire
        assumptions. Build a budget table: line, working, cost.
        Show every calculation so I can check it in Excel.
        Do not add costs I did not give you. Instead, list costs I may
        have missed, as questions. Flag any line that depends on a
        start date.
        [paste table]</code></pre>
          <p>Check every total in the spreadsheet yourself. AI can add numbers wrongly, and it may invent fees.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: Priya builds the hiring plan with AI</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Priya asks">Priya pastes totals by job (leavers, growth, Leeds, internal moves, no names) into the approved AI assistant. She asks for external hires by job.</li>
              <li data-kind="answer" data-label="AI replies">The AI returns a neat table with 137 external hires.</li>
              <li data-kind="warn" data-label="Missing backfills">The AI did not count backfills. 15 people move inside, and their old jobs need filling. 137 + 15 = 152.</li>
              <li data-kind="tool" data-label="Spreadsheet">Priya rebuilds the table in Excel with one formula per row. The total is 152. The spreadsheet, not the chat, is now the master copy.</li>
              <li data-kind="answer" data-label="AI suggests">She asks for a monthly timeline. The AI says August is too busy and suggests: "Start all Leeds staff on 1 September to save money."</li>
              <li data-kind="warn" data-label="Check the idea">Staff would have no training before the depot opens, and the peak follows soon after. Priya keeps the August starts and spreads the recruiting work instead.</li>
              <li data-kind="check" data-label="People decide">Helen Marsh checks the budget lines. Daniel Okafor confirms start dates. Together they approve the contract recruiter.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to turn a workforce gap into a hiring plan with timing, capacity and budget. Use the Northbridge numbers or your own made-up numbers.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a recruitment planning adviser. Use simple English and show all working.

        Made-up data for [2027], totals only:
        Job | Leavers to replace | Growth | New site | Internal moves in | Backfills
        [Warehouse operative | 34 | 11 | 30 | 0 | 14]
        [Delivery driver | 28 | 8 | 22 | 10 | 0]
        [Team leader | 3 | 1 | 4 | 4 | 0]
        Roles not refilled: [7 warehouse].
        Time to hire: [warehouse 5 weeks, driver 8, team leader 8].
        New site first day: [Monday 2 August 2027].
        Recruiter capacity: [13 starts a month].
        Cost per hire: [warehouse GBP 450, driver GBP 1,100, team leader GBP 1,500].

        Please:
        1. Calculate external hires per job. Explain backfills in one sentence.
        2. Give the latest date to start recruiting for each new-site job.
        3. Say which months may go over recruiter capacity, and suggest 3 fixes.
        4. Build a recruitment cost table: job, hires, cost per hire, total.
        5. List 3 costs or risks I may have missed, as questions.

        Do not invent extra costs or market statistics.</pre>
            <ul class="ai-try-checks">
              <li>External hires: warehouse 34 + 11 + 30 + 14 &minus; 7 = 82; drivers 48; team leaders 4.</li>
              <li>Recruiting dates are worked back from the first day.</li>
              <li>Recruitment costs add up: &pound;36,900 + &pound;52,800 + &pound;6,000 = &pound;95,700.</li>
              <li>It does not invent fees or salary statistics.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A hiring plan is a gap with dates and money attached. Count backfills, work back from start dates and compare the monthly load with what your recruiters can really do. Build the numbers in a spreadsheet and use AI to check and question them.
        </div>
      HTML
      starter_code: nil
    },
    13 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-hr">HR & Recruitment</div>
          <h1 class="lc-title">Presenting a Workforce Plan</h1>
        </div>
        <p class="lc-lead">A good plan is useless if leaders do not understand it or trust it. Leaders have little time. They want the answer, the cost, the risks and the decisions you need from them. In this lesson you will build a one-page summary of Northbridge Logistics' 2027 workforce plan. You will show assumptions and ranges honestly, so leaders can see what is certain and what is a guess. You will also use AI to draft the summary, and then check every number yourself.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 370" role="img" aria-label="A one-page workforce plan for Northbridge Logistics, 2027. Headline: hire 152, move 15 people inside, cost about 1.7 million pounds, 3 decisions needed. Four key numbers: headcount 494 at the end of 2027, up from 420; 152 external hires; 15 internal moves; about 1.7 million pounds cost in 2027. Three columns. Gaps and actions: driver gap 58, range 48 to 68; Leeds needs 60 people, most starting 2 August; conveyor saves 7 roles with no cuts. Risks and assumptions: volume growth 6 percent, range 3 to 9; driver leavers 28, range 22 to 34; recruiter load from May to August; review if more than 8 drivers leave in a quarter. Decisions needed: approve 152 hires, the Driver Academy at 38,000 pounds, and a contract recruiter at 16,000 pounds.">
            <g font-family="inherit" font-size="12" fill="#e2e0f0">
              <rect x="20" y="10" width="720" height="350" rx="12" fill="#1f1f44" stroke="#3a3a66"/>
              <text x="40" y="38" font-size="14" font-weight="700" fill="#c4b5fd">Northbridge Logistics: 2027 workforce plan</text>
              <text x="720" y="38" font-size="11" fill="#9b99b8" text-anchor="end">Leadership team, one page</text>
              <rect x="40" y="52" width="680" height="40" rx="8" fill="#27274e" stroke="#f59e0b" stroke-width="2"/>
              <text x="380" y="77" font-size="13" font-weight="700" fill="#fcd34d" text-anchor="middle">Hire 152, move 15 inside, about &#163;1.7m in 2027. 3 decisions needed.</text>
              <g text-anchor="middle">
                <rect x="40" y="104" width="162" height="64" rx="8" fill="#27274e" stroke="#3b82f6"/>
                <text x="121" y="134" font-size="20" font-weight="700" fill="#93c5fd">494</text>
                <text x="121" y="156" font-size="11" fill="#9b99b8">Headcount, end 2027</text>
                <rect x="213" y="104" width="162" height="64" rx="8" fill="#27274e" stroke="#3b82f6"/>
                <text x="294" y="134" font-size="20" font-weight="700" fill="#93c5fd">152</text>
                <text x="294" y="156" font-size="11" fill="#9b99b8">External hires</text>
                <rect x="386" y="104" width="162" height="64" rx="8" fill="#27274e" stroke="#10b981"/>
                <text x="467" y="134" font-size="20" font-weight="700" fill="#6ee7b7">15</text>
                <text x="467" y="156" font-size="11" fill="#9b99b8">Internal moves</text>
                <rect x="559" y="104" width="161" height="64" rx="8" fill="#27274e" stroke="#8b5cf6"/>
                <text x="639" y="134" font-size="20" font-weight="700" fill="#c4b5fd">&#163;1.7m</text>
                <text x="639" y="156" font-size="11" fill="#9b99b8">Cost of the plan, 2027</text>
              </g>
              <rect x="40" y="182" width="216" height="140" rx="8" fill="#27274e" stroke="#22d3ee"/>
              <text x="54" y="204" font-weight="700" fill="#67e8f9">Gaps and actions</text>
              <text x="54" y="228" font-size="11">Driver gap 58 (48 to 68)</text>
              <text x="54" y="250" font-size="11">10 drivers from the Academy</text>
              <text x="54" y="272" font-size="11">Leeds: 60 people, most 2 Aug</text>
              <text x="54" y="294" font-size="11">Conveyor: 7 roles, no cuts</text>
              <rect x="272" y="182" width="216" height="140" rx="8" fill="#27274e" stroke="#ec4899"/>
              <text x="286" y="204" font-weight="700" fill="#f9a8d4">Risks and assumptions</text>
              <text x="286" y="228" font-size="11">Volume +6% (3% to 9%)</text>
              <text x="286" y="250" font-size="11">Driver leavers 28 (22 to 34)</text>
              <text x="286" y="272" font-size="11">Recruiter load May to Aug</text>
              <text x="286" y="294" font-size="11">Review if over 8 drivers leave</text>
              <text x="286" y="310" font-size="11">in one quarter</text>
              <rect x="504" y="182" width="216" height="140" rx="8" fill="#27274e" stroke="#10b981"/>
              <text x="518" y="204" font-weight="700" fill="#6ee7b7">Decisions needed</text>
              <text x="518" y="228" font-size="11">1. Approve 152 hires</text>
              <text x="518" y="250" font-size="11">2. Driver Academy, &#163;38,000</text>
              <text x="518" y="272" font-size="11">3. Contract recruiter,</text>
              <text x="518" y="288" font-size="11">&#163;16,000 (May to Aug)</text>
              <text x="380" y="344" font-size="11" fill="#9b99b8" text-anchor="middle">Working, sources and full tables are in the appendix. All numbers are made up.</text>
            </g>
          </svg>
          <figcaption>A one-page plan starts with the answer, shows four key numbers, and ends with the decisions leaders must make.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>What leaders need to see</h3>
          <p>Priya presents to the leadership team, including Daniel Okafor (operations) and Helen Marsh (finance). She writes one page and puts the detail in an appendix. The page has six parts, in this order:</p>
          <table class="lc-table">
            <thead><tr><th>Part</th><th>What it says</th><th>Northbridge example</th></tr></thead>
            <tbody>
              <tr><td>1. Headline</td><td>The answer in one or two sentences</td><td>To open Leeds and grow 6%, we need 152 external hires and 15 internal moves in 2027.</td></tr>
              <tr><td>2. Key numbers</td><td>3 to 5 numbers, each with a label</td><td>Headcount 420 now, 494 at the end of 2027. Hiring plan cost about &pound;1.7 million.</td></tr>
              <tr><td>3. Gaps and actions</td><td>The biggest gaps and how you will close them</td><td>Driver gap 58: 48 external hires and 10 from the Driver Academy.</td></tr>
              <tr><td>4. Risks and assumptions</td><td>What could change the plan, with ranges</td><td>Driver leavers could be 22 to 34, not 28.</td></tr>
              <tr><td>5. Decisions needed</td><td>Clear asks with costs</td><td>Approve the Driver Academy (&pound;38,000) and a contract recruiter (&pound;16,000).</td></tr>
              <tr><td>6. Next review</td><td>When and how you will update the plan</td><td>Every quarter, using leavers, hires and volume.</td></tr>
            </tbody>
          </table>
          <p>Start with the answer, not with the method. Use plain words and the same units everywhere. Say "headcount" or "FTE" (full-time equivalent: contracted hours divided by a full-time week) every time, so nobody mixes them up.</p>
          <p>Check that the numbers fit together. Northbridge starts with 420 people, hires 152 and expects 78 leavers: 420 + 152 &minus; 78 = 494. Internal moves do not change the total. In a spreadsheet:</p>
          <pre><code>=B2+B3-B4</code></pre>
          <p>Put 420 in B2, 152 in B3 and 78 in B4. The result, 494, must match the headcount on your page.</p>
        </div>
        <div class="lc-card">
          <h3>Show assumptions and ranges honestly</h3>
          <p>An <strong>assumption</strong> is something you treat as true to make the plan, but you cannot be sure of. Leaders trust a plan more when you show them openly. Priya's appendix has an assumptions table:</p>
          <table class="lc-table">
            <thead><tr><th>Assumption</th><th>Base</th><th>Range</th><th>Owner</th><th>Confidence</th></tr></thead>
            <tbody>
              <tr><td>Volume growth, London and Manchester</td><td>6%</td><td>3% to 9%</td><td>Daniel Okafor</td><td>Medium</td></tr>
              <tr><td>Driver leavers in 2027</td><td>28</td><td>22 to 34</td><td>Priya Shah</td><td>Medium</td></tr>
              <tr><td>Driver Academy trainees qualify by June</td><td>10</td><td>7 to 10</td><td>Tom Reed</td><td>Medium</td></tr>
              <tr><td>New conveyor saves work from April</td><td>7 roles</td><td>0 to 7, if it is late</td><td>Daniel Okafor</td><td>Low</td></tr>
              <tr><td>Recruiters complete starts per month</td><td>23 (with contract help)</td><td>18 to 23</td><td>Priya Shah</td><td>Medium</td></tr>
            </tbody>
          </table>
          <p>Show the driver gap as a range: 48 in the best case, 58 in the base case and 68 in the worst case. Add a <strong>trigger</strong>: a number that tells you to switch plans. Northbridge expects about 7 driver leavers a quarter. If more than 8 leave in one quarter, Priya moves to the worst-case plan.</p>
          <p>Avoid false precision. Write "about &pound;1.7 million" on the page, and keep &pound;1,714,030 in the appendix. Never hide a weak number to make the plan look stronger.</p>
          <p>Protect people's privacy. Leaders need to know that a critical role has a successor. A wide audience does not need the names. Keep names from the succession plan in a confidential appendix with limited access.</p>
        </div>
        <div class="lc-card">
          <h3>Use AI to draft, then check every number</h3>
          <p>AI is good at turning tables into clear sentences. It can shorten text, suggest a headline and rewrite for a finance or operations reader. But it can also change a number, round wrongly, drop a range or add a "fact" you never gave it.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Write an executive summary of our workforce plan. Make it impressive.</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>You are writing for a leadership team with 2 minutes to read.
        Using ONLY the tables below, draft a one-page summary with
        these parts: headline, 4 key numbers, gaps and actions,
        risks and assumptions (with ranges), decisions needed.
        Simple English. No adjectives like "robust" or "world-class".
        Do not add any number, benchmark or statistic that is not in
        the tables. After the summary, list every number you used and
        the table it came from.
        [paste summary tables, no names]</code></pre>
          <p>Then check the draft line by line. Tick each number against the master spreadsheet. Delete any claim you cannot trace, such as an "industry average" the AI made up. You present the plan, so you must be able to explain every line.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: build the leadership summary</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put Priya's steps in order, from first to last.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Agree with Daniel and Helen which decisions the leadership team must make.</li>
              <li data-order="2">Take the final numbers from the master spreadsheet and check that the totals fit together.</li>
              <li data-order="3">Write the headline: the answer in one or two sentences.</li>
              <li data-order="4">Ask the approved AI assistant to draft the one page from the summary tables, with no names.</li>
              <li data-order="5">Check every number in the draft against the spreadsheet and remove anything that cannot be traced.</li>
              <li data-order="6">Add the assumptions table, the ranges and the triggers for review.</li>
              <li data-order="7">Test the page with Helen and Daniel, then fix anything they found unclear.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to draft a one-page workforce plan summary from made-up numbers. Then check it like a leader would.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an HR business partner preparing a one-page summary for a leadership team. Use simple English and short sentences.

        Use ONLY these made-up facts:
        - Company: [Northbridge Logistics, UK warehouse and delivery, 420 staff now].
        - 2027 plan: [152 external hires, 15 internal moves, 78 expected leavers].
        - Headcount at end of 2027: [494].
        - Driver gap: [58 (best case 48, worst case 68)].
        - New site: [Leeds depot, 60 people, opens 1 September 2027].
        - Cost of the hiring plan in 2027: [GBP 1,714,030].
        - Decisions needed: [Driver Academy GBP 38,000; contract recruiter GBP 16,000].
        - Key assumptions: [volume growth 6% (3% to 9%); driver leavers 28 (22 to 34)].

        Please write:
        1. A headline of no more than 2 sentences.
        2. 4 key numbers with labels. Round money sensibly.
        3. Gaps and actions, risks and assumptions, and decisions needed, as short bullet lists.
        4. One question a finance director is likely to ask, with a suggested answer.
        5. A check table: each number you used and where it came from in my facts.

        Do not add any number, benchmark or statistic I did not give you.</pre>
            <ul class="ai-try-checks">
              <li>The numbers match the facts exactly, apart from sensible rounding.</li>
              <li>The headline gives the answer first.</li>
              <li>Ranges and assumptions are shown, not hidden.</li>
              <li>No invented benchmarks or "industry averages".</li>
              <li>Headcount adds up: 420 + 152 &minus; 78 = 494.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Leaders act on plans they understand and trust. Give the answer first, show the key numbers and the decisions you need, and be open about assumptions and ranges. AI can draft the words, but every number must trace back to your spreadsheet.
        </div>
      HTML
      starter_code: nil
    },
    14 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-hr">HR & Recruitment</div>
          <h1 class="lc-title">Ethics in Workforce Planning</h1>
        </div>
        <p class="lc-lead">Workforce plans change people's lives. They decide who gets trained, who moves, and sometimes whose job is at risk. When you add AI, mistakes can spread faster and be harder to see. In this lesson you will learn four ethical checks for every plan: fairness, privacy, redundancy risk and human decisions. You will apply them to a real planning problem at Northbridge Logistics: the new Manchester conveyor. This is general education, not legal advice.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 290" role="img" aria-label="Ethical checkpoints along the planning process. Five steps in a row: data, analysis, options, decision, communication. Under each step is a check. Data: privacy, use the minimum data and no names in AI tools. Analysis: fairness, check the impact on each group in totals. Options: redundancy risk, try every alternative first. Decision: people decide, AI only drafts and flags. Communication: be open, consult early and explain.">
            <defs><marker id="wf14a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <text x="380" y="26" font-weight="700" fill="#c4b5fd" text-anchor="middle">Ethical checks at every step of the plan</text>
              <g text-anchor="middle">
                <rect x="20" y="44" width="128" height="46" rx="8" fill="#1f1f44" stroke="#3b82f6" stroke-width="2"/>
                <text x="84" y="72" font-weight="700">Data</text>
                <rect x="170" y="44" width="128" height="46" rx="8" fill="#1f1f44" stroke="#3b82f6" stroke-width="2"/>
                <text x="234" y="72" font-weight="700">Analysis</text>
                <rect x="320" y="44" width="128" height="46" rx="8" fill="#1f1f44" stroke="#3b82f6" stroke-width="2"/>
                <text x="384" y="72" font-weight="700">Options</text>
                <rect x="470" y="44" width="128" height="46" rx="8" fill="#1f1f44" stroke="#3b82f6" stroke-width="2"/>
                <text x="534" y="72" font-weight="700">Decision</text>
                <rect x="620" y="44" width="128" height="46" rx="8" fill="#1f1f44" stroke="#3b82f6" stroke-width="2"/>
                <text x="684" y="72" font-weight="700">Communicate</text>
              </g>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#wf14a)">
                <line x1="150" y1="67" x2="166" y2="67"/>
                <line x1="300" y1="67" x2="316" y2="67"/>
                <line x1="450" y1="67" x2="466" y2="67"/>
                <line x1="600" y1="67" x2="616" y2="67"/>
              </g>
              <g stroke="#3a3a66" stroke-width="1.5" stroke-dasharray="4 3">
                <line x1="84" y1="92" x2="84" y2="118"/>
                <line x1="234" y1="92" x2="234" y2="118"/>
                <line x1="384" y1="92" x2="384" y2="118"/>
                <line x1="534" y1="92" x2="534" y2="118"/>
                <line x1="684" y1="92" x2="684" y2="118"/>
              </g>
              <g font-size="11">
                <rect x="20" y="120" width="128" height="120" rx="8" fill="#27274e" stroke="#22d3ee"/>
                <text x="32" y="142" font-size="12" font-weight="700" fill="#67e8f9">Privacy</text>
                <text x="32" y="164">Minimum data</text>
                <text x="32" y="182">No names in AI</text>
                <text x="32" y="200">Approved tools</text>
                <text x="32" y="218">Totals, not people</text>
                <rect x="170" y="120" width="128" height="120" rx="8" fill="#27274e" stroke="#f59e0b"/>
                <text x="182" y="142" font-size="12" font-weight="700" fill="#fcd34d">Fairness</text>
                <text x="182" y="164">Who is affected?</text>
                <text x="182" y="182">Check each group</text>
                <text x="182" y="200">in totals</text>
                <text x="182" y="218">Fix unfair rules</text>
                <rect x="320" y="120" width="128" height="120" rx="8" fill="#27274e" stroke="#ec4899"/>
                <text x="332" y="142" font-size="12" font-weight="700" fill="#f9a8d4">Job risk</text>
                <text x="332" y="164">Hold vacancies</text>
                <text x="332" y="182">Retrain, redeploy</text>
                <text x="332" y="200">Cut agency first</text>
                <text x="332" y="218">Cuts: last resort</text>
                <rect x="470" y="120" width="128" height="120" rx="8" fill="#27274e" stroke="#10b981"/>
                <text x="482" y="142" font-size="12" font-weight="700" fill="#6ee7b7">People decide</text>
                <text x="482" y="164">AI drafts, flags</text>
                <text x="482" y="182">No AI scores</text>
                <text x="482" y="200">for people</text>
                <text x="482" y="218">Named owner</text>
                <rect x="620" y="120" width="128" height="120" rx="8" fill="#27274e" stroke="#8b5cf6"/>
                <text x="632" y="142" font-size="12" font-weight="700" fill="#c4b5fd">Openness</text>
                <text x="632" y="164">Consult early</text>
                <text x="632" y="182">Explain why</text>
                <text x="632" y="200">Listen and</text>
                <text x="632" y="218">change plans</text>
              </g>
              <text x="380" y="270" font-size="12" fill="#9b99b8" text-anchor="middle">Not legal advice. Check with an employment lawyer or HR adviser.</text>
            </g>
          </svg>
          <figcaption>Each step of the planning process has its own ethical check. Together they protect people and the organisation.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Fairness: check who is affected</h3>
          <p>A plan can be unfair even when nobody means it. A rule that looks neutral can hit one group harder. In the UK this can be <strong>indirect discrimination</strong> under the Equality Act 2010, unless it is a proportionate way to meet a legitimate aim. In the US, Title VII, the ADA and the ADEA give similar protection.</p>
          <p>The Manchester conveyor will remove about 7 warehouse roles from April 2027. Before choosing options, Priya checks who works in that team, in totals only:</p>
          <table class="lc-table">
            <thead><tr><th>Group</th><th>Manchester warehouse</th><th>Whole company</th></tr></thead>
            <tbody>
              <tr><td>Part-timers</td><td>16 of 80 = 20.0%</td><td>45 of 420 = 10.7%</td></tr>
            </tbody>
          </table>
          <p>One option on the table was "cut part-time hours first". Part-timers are twice as common in this team, so that option would hit them hardest. It could also break the rule that part-timers must not be treated less favourably without a good reason. Priya removes it.</p>
          <p>She checks the Driver Academy too. It needs a full car licence, because the law requires one before a lorry licence. That rule is justified, but it may shut some people out. Northbridge decides to pay for driving lessons for staff who want to qualify.</p>
          <p>Many organisations write this down in an <strong>equality impact assessment</strong>: a short record of who a plan affects, how, and what you changed. Use totals. Combine groups smaller than about 10 people, so nobody can be identified.</p>
        </div>
        <div class="lc-card">
          <h3>Privacy and human decisions</h3>
          <p>Workforce data is personal data. Under UK GDPR and the Data Protection Act 2018, use only the data you need for a clear purpose. Health and ethnicity are special category data with extra rules. For high-risk uses of personal data, you need a <strong>DPIA</strong> (data protection impact assessment: a written check of the privacy risks and how you reduce them).</p>
          <ul class="lc-list">
            <li>Use only AI tools your organisation has approved. Never paste names, salaries or health details into a public AI tool.</li>
            <li>Give AI totals by site and role, not records about people.</li>
            <li>Keep succession names and redundancy options confidential, with limited access.</li>
          </ul>
          <p>AI must not decide about people. Do not ask AI to score individual employees for "flight risk" or "redundancy risk". Do not use any tool that claims to read emotions, honesty or personality from video, voice or text. These claims are not reliable, and they can be unlawful.</p>
          <p>The law is changing. UK rules on decisions made only by automated means were rewritten by the Data (Use and Access) Act 2025, with changes in force from 2026. People still have safeguards, such as the right to ask for a human to review a decision. In the EU, the AI Act treats AI used for promotion, dismissal, task allocation and monitoring of workers as high-risk. After a 2026 change, those rules apply from 2 December 2027. In the US, laws such as Title VII still apply when an employer uses an AI tool. The employer is responsible for unfair results. Check current guidance from the ICO and other regulators.</p>
        </div>
        <div class="lc-card">
          <h3>Redundancy risk and consultation</h3>
          <p>A plan with fewer jobs in one area creates <strong>redundancy risk</strong>. A good plan tries every alternative first. For the conveyor, Northbridge plans to:</p>
          <ul class="lc-list">
            <li>Not refill 3 leaver vacancies from January to March 2027.</li>
            <li>Move 4 Manchester operatives into the Driver Academy.</li>
            <li>Offer Leeds jobs to anyone who wants to move, and retrain some people to run the sorter.</li>
            <li>Use fewer agency workers before any employee's job is at risk. Manchester uses about 15 agency workers in normal months.</li>
          </ul>
          <p>If redundancies are ever proposed, UK law expects a fair process. That means genuine consultation, fair selection criteria and offers of suitable other jobs. People who are pregnant, or on or recently back from maternity, adoption or shared parental leave, have priority for suitable vacancies.</p>
          <p>If an employer proposes 20 or more redundancies at one establishment within 90 days, collective consultation rules apply. Consultation must start at least 30 days before the first dismissal for 20 to 99 people, and 45 days for 100 or more. The employer must also tell the government using form HR1. Since 6 April 2026, the maximum penalty for failing to consult (the "protective award") is 180 days' pay per employee. More changes under the Employment Rights Act 2025 are planned, so check what is in force.</p>
          <p>Northbridge's 7 roles are below the collective threshold. Priya still talks to the Manchester team early, explains the plan and listens. In the US, the WARN Act requires 60 days' notice of some plant closings and mass layoffs, and some states have their own rules.</p>
          <p>This is general information, not legal advice. Before any change that may affect jobs, talk to an employment lawyer or HR adviser.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: acceptable, safeguards or not acceptable?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each idea from Northbridge's planning meetings.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="ok" data-label="Acceptable"></div>
              <div data-sorter-target="bucket" data-bucket="safe" data-label="Only with safeguards"></div>
              <div data-sorter-target="bucket" data-bucket="no" data-label="Not acceptable"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="ok" data-why="Totals by site and role with no names keep privacy, and scenarios help people decide.">Use the approved AI assistant to model scenarios from totals by site and role.</li>
              <li data-bucket="no" data-why="This uses private messages to score people. It is a serious privacy problem, and such scores are unreliable.">Ask an AI tool to give each employee a "flight risk" score from their emails and chats.</li>
              <li data-bucket="no" data-why="No tool can reliably read honesty or emotion from video. Using it to judge people is unfair and risky.">Use a tool that reads video calls to judge which team leaders are "committed".</li>
              <li data-bucket="safe" data-why="Leaders may need names, but only a few people should see them, stored securely.">Share the succession plan with names with the leadership team.</li>
              <li data-bucket="ok" data-why="This reduces job risk by trying alternatives before any redundancy.">Hold vacancies and retrain people before the conveyor starts.</li>
              <li data-bucket="safe" data-why="AI can draft words, but HR must check the facts and tone and talk with staff first.">Use AI to draft the staff announcement about the conveyor, checked by HR.</li>
              <li data-bucket="no" data-why="People must decide about jobs, with fair criteria and consultation. AI ranking is not a fair process.">Ask AI to rank Manchester operatives to choose who leaves.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to act as a critical reviewer of a workforce plan. It should find fairness, privacy and job-risk problems before your leaders or staff do.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an ethics reviewer for workforce plans in [the UK]. Be direct and use simple English.

        My draft plan (made up, totals only):
        - [A new conveyor at our Manchester warehouse removes about 7 of 80 roles from April 2027.]
        - [Options: hold 3 vacancies, move 4 people into driver training, cut part-time hours, reduce agency workers.]
        - [Part-timers are 20% of the Manchester warehouse and 10.7% of the company.]
        - [We plan to use an AI tool to score each employee's flight risk.]
        - [Driver training needs a full car licence.]

        Please:
        1. Make a table: issue, type (fairness, privacy, job risk, human decision), why it matters, safer alternative.
        2. Say which ideas I should drop completely, and why.
        3. List the people I should involve or consult, and when.
        4. List 5 questions to ask an employment lawyer or HR adviser.

        Do not give legal conclusions. Say clearly that this is not legal advice.</pre>
            <ul class="ai-try-checks">
              <li>It flags "cut part-time hours" as a fairness risk.</li>
              <li>It says to drop individual flight-risk scores.</li>
              <li>It suggests alternatives before redundancy and early, open communication.</li>
              <li>It says this is not legal advice and gives questions for an adviser.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Ethics is part of the plan, not a step after it. Check who is affected, protect personal data, try every alternative before job cuts, and keep decisions about people with people. When the law is involved, get qualified advice.
        </div>
      HTML
      starter_code: nil
    },
    15 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-hr">HR & Recruitment</div>
          <h1 class="lc-title">Capstone: A Workforce Plan for Northbridge Logistics</h1>
        </div>
        <p class="lc-lead">In this capstone you put the whole course together. You will build a complete 2027 workforce plan for Northbridge Logistics: data, metrics, forecasts, scenarios, a succession map and a hiring plan. You will check that the numbers fit together, run the ethics checks and prepare the summary for leaders. You will use AI at every step, and you will check its work at every step. At the end, you can use the same method with made-up data for your own organisation.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 350" role="img" aria-label="The six stages of the Northbridge Logistics 2027 workforce plan. 1 Data: 420 people, 399 FTE, clean totals with no names, snapshot 30 September 2026. 2 Metrics: attrition 18.9 percent, 78 leavers over average headcount 412; span of control 13.5; 39,576 pounds per FTE. 3 Forecast: 143 drivers plus 22 for Leeds; Leeds needs 60 people; volume up 6 percent. 4 Scenarios: driver gap 48, 58 or 68; trigger if more than 8 drivers leave in a quarter. 5 Succession: 5 critical roles, bench strength 40 percent. 6 Hiring plan: 152 external hires and 15 internal moves, about 1.7 million pounds in 2027. Then an ethics check and a one-page summary for leaders.">
            <defs><marker id="wf15a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <rect x="30" y="30" width="220" height="100" rx="10" fill="#1f1f44" stroke="#3b82f6" stroke-width="2"/>
              <text x="46" y="58" font-weight="700" fill="#93c5fd">1. Data</text>
              <text x="46" y="84" font-size="12">420 people, 399 FTE</text>
              <text x="46" y="106" font-size="11" fill="#9b99b8">Clean, no names, 30 Sep 2026</text>
              <rect x="270" y="30" width="220" height="100" rx="10" fill="#1f1f44" stroke="#3b82f6" stroke-width="2"/>
              <text x="286" y="58" font-weight="700" fill="#93c5fd">2. Metrics</text>
              <text x="286" y="84" font-size="12">Attrition 18.9% (78 / 412)</text>
              <text x="286" y="106" font-size="11" fill="#9b99b8">Span 13.5, &#163;39,576 per FTE</text>
              <rect x="510" y="30" width="220" height="100" rx="10" fill="#1f1f44" stroke="#22d3ee" stroke-width="2"/>
              <text x="526" y="58" font-weight="700" fill="#67e8f9">3. Forecast</text>
              <text x="526" y="84" font-size="12">Drivers: 143 + 22 Leeds</text>
              <text x="526" y="106" font-size="11" fill="#9b99b8">Leeds 60 people, volume +6%</text>
              <rect x="510" y="180" width="220" height="100" rx="10" fill="#1f1f44" stroke="#f59e0b" stroke-width="2"/>
              <text x="526" y="208" font-weight="700" fill="#fcd34d">4. Scenarios</text>
              <text x="526" y="234" font-size="12">Driver gap 48 / 58 / 68</text>
              <text x="526" y="256" font-size="11" fill="#9b99b8">Trigger: over 8 leavers a quarter</text>
              <rect x="270" y="180" width="220" height="100" rx="10" fill="#1f1f44" stroke="#ec4899" stroke-width="2"/>
              <text x="286" y="208" font-weight="700" fill="#f9a8d4">5. Succession</text>
              <text x="286" y="234" font-size="12">5 critical roles</text>
              <text x="286" y="256" font-size="11" fill="#9b99b8">Bench strength 2 / 5 = 40%</text>
              <rect x="30" y="180" width="220" height="100" rx="10" fill="#27274e" stroke="#10b981" stroke-width="2"/>
              <text x="46" y="208" font-weight="700" fill="#6ee7b7">6. Hiring plan</text>
              <text x="46" y="234" font-size="12">152 hires, 15 internal moves</text>
              <text x="46" y="256" font-size="11" fill="#9b99b8">About &#163;1.7m in 2027</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#wf15a)">
                <line x1="252" y1="80" x2="266" y2="80"/>
                <line x1="492" y1="80" x2="506" y2="80"/>
                <line x1="620" y1="132" x2="620" y2="176"/>
                <line x1="508" y1="230" x2="494" y2="230"/>
                <line x1="268" y1="230" x2="254" y2="230"/>
              </g>
              <rect x="30" y="300" width="700" height="36" rx="8" fill="#27274e" stroke="#8b5cf6"/>
              <text x="380" y="323" font-size="12" text-anchor="middle">Then: ethics check, fit-together check and a one-page summary for leaders</text>
            </g>
          </svg>
          <figcaption>The capstone follows six stages, from clean data to a hiring plan. Each stage uses the results of the one before.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The brief</h3>
          <p>Priya Shah must present Northbridge's 2027 workforce plan to the leadership team on Tuesday 17 November 2026. Daniel Okafor (operations) and Helen Marsh (finance) will review it first. Tom Reed prepares the data. The plan has these sections:</p>
          <table class="lc-table">
            <thead><tr><th>Section</th><th>Northbridge results (all made up)</th></tr></thead>
            <tbody>
              <tr><td>1. Workforce today</td><td>420 employees, 399 FTE. London 250, Manchester 170. Agency workers: 35 FTE in normal months, 120 at the peak (not in headcount). Loaded pay cost &pound;15,790,765.</td></tr>
              <tr><td>2. Turnover and retirement</td><td>Attrition 18.9%. Hotspot: London drivers at 24.4%. 15 of 34 warehouse leavers left within 6 months. About 4 retirements a year (range 2 to 6).</td></tr>
              <tr><td>3. Demand forecast</td><td>Drivers: 143 at London and Manchester plus 22 at Leeds. Leeds: 60 people from September 2027. Team leaders about 25. Customer service about 19.6 FTE.</td></tr>
              <tr><td>4. Scenarios</td><td>Driver gap 48 (best), 58 (base), 68 (worst). Trigger: more than 8 driver leavers in one quarter.</td></tr>
              <tr><td>5. Skills and succession</td><td>Biggest skills risk: conveyor maintenance (2 people; need 5). 5 critical roles; 2 have a ready-now successor (bench strength 40%).</td></tr>
              <tr><td>6. Options and internal moves</td><td>Mix of hiring and training for drivers. Driver Academy (10), Team Leader Ready (4 promotions), Sarah Kim to Leeds. Conveyor: 7 roles, no redundancies planned.</td></tr>
              <tr><td>7. Hiring plan and budget</td><td>152 external hires. Peaks in March (32) and August (59) above recruiter capacity, so a contract recruiter is added. Cost &pound;1,714,030 in 2027.</td></tr>
              <tr><td>8. Ethics, risks and assumptions</td><td>Fairness checks for part-timers, privacy rules, no AI scoring of people, ranges for every key guess, legal advice before job changes.</td></tr>
            </tbody>
          </table>
          <p>One option is still open: employing about 20 warehouse staff instead of using agency workers all year. Priya lists it as a decision for leaders, not as part of the numbers.</p>
        </div>
        <div class="lc-card">
          <h3>Check that the plan fits together</h3>
          <p>Each section uses numbers from the others. Before you present, check that they agree. Here are Priya's main checks:</p>
          <table class="lc-table">
            <thead><tr><th>Check</th><th>Working</th><th>Result</th></tr></thead>
            <tbody>
              <tr><td>Last year's movement</td><td>404 + 94 hires &minus; 78 leavers</td><td>420. Matches today's headcount.</td></tr>
              <tr><td>End of 2027, by flows</td><td>420 + 152 hires &minus; 78 leavers</td><td>494</td></tr>
              <tr><td>End of 2027, by changes</td><td>420 + 60 Leeds + 21 growth &minus; 7 conveyor</td><td>494. Both ways agree.</td></tr>
              <tr><td>Drivers at end of 2027</td><td>135 &minus; 28 leavers + 48 hired + 10 from the Academy</td><td>165. Matches demand.</td></tr>
              <tr><td>Attrition</td><td>78 / 412 average headcount</td><td>18.9%, not 78 / 420</td></tr>
            </tbody>
          </table>
          <p>In the spreadsheet, put both 2027 results side by side and add a check cell. With the flow result in B5 and the change result in B6:</p>
          <pre><code>=IF(B5=B6,"OK","CHECK")</code></pre>
          <p>Also check the words. Headcount and FTE must be labelled. Agency workers must not be in headcount. Every range and assumption must have an owner. Names from the succession map stay in a confidential appendix.</p>
          <p>Run the ethics checks too. The succession review found that none of the 7 named successors works part time, but 45 of 420 people do. Priya adds an action: open Team Leader Ready to part-timers, with sessions they can attend.</p>
        </div>
        <div class="lc-card">
          <h3>Using AI across the capstone</h3>
          <table class="lc-table">
            <thead><tr><th>Stage</th><th>AI can help you</th><th>You must check</th></tr></thead>
            <tbody>
              <tr><td>Data</td><td>List the data you need and spot gaps</td><td>No names or personal details go into AI. Use an approved tool.</td></tr>
              <tr><td>Metrics</td><td>Explain formulas and check your working</td><td>Calculate in the spreadsheet. Use average headcount for attrition.</td></tr>
              <tr><td>Forecast and scenarios</td><td>Set up the scenario table and suggest triggers</td><td>Volume and growth figures come from operations and finance, not from AI.</td></tr>
              <tr><td>Succession</td><td>Draft fair review questions and development plans</td><td>People choose successors with evidence. AI never ranks people.</td></tr>
              <tr><td>Hiring plan</td><td>Draft timelines, budgets and adverts</td><td>Backfills counted, dates worked back, totals match.</td></tr>
              <tr><td>Summary</td><td>Draft the one-page summary</td><td>Every number traced to the spreadsheet. No invented statistics.</td></tr>
            </tbody>
          </table>
          <p>Keep one master spreadsheet. AI answers are drafts. The spreadsheet holds the numbers you present.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: Priya's final check with AI</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="tool" data-label="Spreadsheet">Tom exports clean totals by site and role from the HRIS into the master spreadsheet. There are no names.</li>
              <li data-kind="user" data-label="Priya asks">Priya pastes the summary tables into the approved AI assistant. She asks it to draft the plan and check the totals.</li>
              <li data-kind="answer" data-label="AI replies">The draft says headcount at the end of 2027 will be 529.</li>
              <li data-kind="warn" data-label="Agency counted">The AI added the 35 agency workers. They are not employees. The correct headcount is 494.</li>
              <li data-kind="answer" data-label="AI suggests">The draft says attrition is 18.6% and suggests "moving the oldest drivers off long routes first".</li>
              <li data-kind="warn" data-label="Two problems">18.6% uses end headcount (78 / 420). The right figure is 78 / 412 = 18.9%. Targeting people by age is unfair and can be unlawful. Priya removes both.</li>
              <li data-kind="check" data-label="People decide">Priya's check cell shows "OK" for 494. Helen checks the budget and Daniel checks the volumes. Then the plan goes to the leadership team.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Build your own workforce plan draft. Use the Northbridge numbers as they are, or replace them with made-up numbers for your organisation.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a workforce planning coach. Use simple English and show all working.

        Made-up data (totals only, no names):
        - Today: [420 employees, 399 FTE, 2 sites]. Agency workers: [35 FTE] (not employees).
        - Last 12 months: [78 leavers, average headcount 412].
        - Next year: [volume +6% (about 21 extra jobs), a new site with 60 people, a machine that removes 7 roles].
        - Key role: [drivers: 135 now, 28 leavers a year, need 143 plus 22 at the new site].
        - Internal moves planned: [15]. External hires planned: [152].
        - Critical roles: [5, 2 with a ready-now successor].

        Please:
        1. Draft a workforce plan with 8 sections: workforce today, turnover, demand, scenarios, succession, options, hiring plan, risks.
        2. Calculate attrition, the key role gap and end-of-year headcount. Check that headcount adds up two ways.
        3. Give best, base and worst cases for the key role gap.
        4. List 5 assumptions with an owner for each.
        5. List fairness and privacy checks to do before sharing.
        6. Ask me 5 questions about information you still need.

        Do not invent numbers or statistics. Say that legal points need an HR adviser.</pre>
            <ul class="ai-try-checks">
              <li>Attrition is 78 / 412 = 18.9%.</li>
              <li>Headcount: 420 + 152 &minus; 78 = 494, and agency workers are left out.</li>
              <li>The driver gap is 165 &minus; 107 = 58, with a range around it.</li>
              <li>Assumptions have owners, and nothing is invented.</li>
              <li>Fairness and privacy checks are included.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A workforce plan is a chain: data, metrics, forecasts, scenarios, succession and hiring. Each link uses the one before. Check that the numbers fit together, be honest about guesses, keep people's data safe, and let AI draft while people decide.
        </div>
      HTML
      starter_code: nil
    }
  }.freeze
end

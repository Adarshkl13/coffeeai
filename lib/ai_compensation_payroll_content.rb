module AiCompensationPayrollContent
  # Units (sidebar dividers): 1–4 Pay Basics · 5–9 Fair and Clear Pay · 10–14 Payroll and Benefits · 15 Capstone
  # Widgets: sequence, sorter, stepper. No code editor: each Try It is an ai-try prompt box.
  LESSONS = {
    1 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-hr">HR & Recruitment</div>
          <h1 class="lc-title">How Pay Works</h1>
        </div>
        <p class="lc-lead">Pay is more than the salary in a contract. In this lesson you will learn the parts of pay: base pay, variable pay and benefits. Together they make "total reward". You will also learn the common pay cycles in the UK and the US. Through this course you will follow Priya Shah, the HR manager at Northbridge Logistics. Northbridge is a made-up 420-person warehouse and delivery company in London and Manchester. Priya is running the company's 2026 pay review with Tom Reed, an HR adviser, and Grace Mensah, a payroll specialist.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 340" role="img" aria-label="Left: total reward for a made-up HGV driver, employee NB09. Base pay 35,000 pounds, night shift allowance 1,500, overtime last year 2,200, bonus at target 1,050, employer pension 1,750 and life assurance cost 150. Total yearly value 41,650 pounds. Right: four pay cycles. Weekly has 52 pay days a year, biweekly 26, semi-monthly 24 and monthly 12. NB09 earns 673.08 pounds a week before deductions.">
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <text x="200" y="24" font-weight="700" fill="#c4b5fd" text-anchor="middle">Total reward: NB09, HGV Driver (made up)</text>
              <text x="575" y="24" font-weight="700" fill="#c4b5fd" text-anchor="middle">Pay cycles: pay days a year</text>
              <rect x="30" y="40" width="340" height="34" rx="8" fill="#1f1f44" stroke="#10b981"/>
              <text x="46" y="62" font-weight="700">Base pay (salary)</text>
              <text x="356" y="62" text-anchor="end">£35,000</text>
              <rect x="30" y="82" width="340" height="34" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="46" y="104">Night shift allowance</text>
              <text x="356" y="104" text-anchor="end">£1,500</text>
              <rect x="30" y="124" width="340" height="34" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="46" y="146">Overtime (last year)</text>
              <text x="356" y="146" text-anchor="end">£2,200</text>
              <rect x="30" y="166" width="340" height="34" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="46" y="188">Bonus at target (3%)</text>
              <text x="356" y="188" text-anchor="end">£1,050</text>
              <rect x="30" y="208" width="340" height="34" rx="8" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="46" y="230">Employer pension (5%)</text>
              <text x="356" y="230" text-anchor="end">£1,750</text>
              <rect x="30" y="250" width="340" height="34" rx="8" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="46" y="272">Life assurance (cost)</text>
              <text x="356" y="272" text-anchor="end">£150</text>
              <text x="200" y="306" font-weight="700" fill="#6ee7b7" text-anchor="middle">Total yearly value: £41,650</text>
              <text x="200" y="326" font-size="11" fill="#9b99b8" text-anchor="middle">Green: base pay. Blue: variable pay. Purple: benefits.</text>
              <rect x="410" y="40" width="330" height="44" rx="8" fill="#27274e" stroke="#22d3ee"/>
              <text x="426" y="59" font-weight="700">Weekly</text>
              <text x="426" y="76" font-size="11" fill="#9b99b8">Northbridge L1 and L2 staff</text>
              <text x="726" y="67" text-anchor="end">52 a year</text>
              <rect x="410" y="92" width="330" height="44" rx="8" fill="#27274e" stroke="#22d3ee"/>
              <text x="426" y="111" font-weight="700">Biweekly</text>
              <text x="426" y="128" font-size="11" fill="#9b99b8">Every two weeks, common in the US</text>
              <text x="726" y="119" text-anchor="end">26 a year</text>
              <rect x="410" y="144" width="330" height="44" rx="8" fill="#27274e" stroke="#22d3ee"/>
              <text x="426" y="163" font-weight="700">Semi-monthly</text>
              <text x="426" y="180" font-size="11" fill="#9b99b8">Twice a month, e.g. 15th and last day</text>
              <text x="726" y="171" text-anchor="end">24 a year</text>
              <rect x="410" y="196" width="330" height="44" rx="8" fill="#27274e" stroke="#22d3ee"/>
              <text x="426" y="215" font-weight="700">Monthly</text>
              <text x="426" y="232" font-size="11" fill="#9b99b8">Northbridge L3 to L5 staff</text>
              <text x="726" y="223" text-anchor="end">12 a year</text>
              <text x="575" y="268" text-anchor="middle">NB09: £35,000 ÷ 52 = £673.08 a week</text>
              <text x="575" y="288" font-size="11" fill="#9b99b8" text-anchor="middle">This is gross pay, before tax and other deductions.</text>
            </g>
          </svg>
          <figcaption>Total reward adds base pay, variable pay and benefits. The pay cycle decides how often people get paid.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The parts of pay</h3>
          <p>Most pay packages have three parts. HR teams call the whole package <strong>total reward</strong>: everything of value a person gets for their work.</p>
          <ul class="lc-list">
            <li><strong>Base pay</strong>: the fixed salary or hourly rate in the contract. It does not change from month to month.</li>
            <li><strong>Variable pay</strong>: pay that can change. Examples are overtime, shift allowances, bonuses and commission (a share of sales).</li>
            <li><strong>Benefits</strong>: value that is not paid as cash in the payslip. Examples are an employer pension, extra holiday and life assurance.</li>
          </ul>
          <p>Here is a made-up example. NB09 is an HGV driver at Northbridge. We use an ID, not a name, because pay data is private.</p>
          <table class="lc-table">
            <thead><tr><th>Part</th><th>What NB09 gets (made up)</th><th>Yearly value</th><th>Type</th></tr></thead>
            <tbody>
              <tr><td>Base salary</td><td>Contract salary, level L2</td><td>£35,000</td><td>Base pay</td></tr>
              <tr><td>Night shift allowance</td><td>Paid while NB09 works nights</td><td>£1,500</td><td>Variable pay</td></tr>
              <tr><td>Overtime</td><td>Last year's total. It changes each year.</td><td>£2,200</td><td>Variable pay</td></tr>
              <tr><td>Company bonus</td><td>3% of base pay if company targets are met</td><td>£1,050</td><td>Variable pay</td></tr>
              <tr><td>Employer pension</td><td>Northbridge pays 5% of base pay</td><td>£1,750</td><td>Benefit</td></tr>
              <tr><td>Life assurance</td><td>Cover of 2 times salary. Northbridge pays the cost.</td><td>£150</td><td>Benefit</td></tr>
              <tr><td><strong>Total</strong></td><td></td><td><strong>£41,650</strong></td><td></td></tr>
            </tbody>
          </table>
          <p>NB09 also gets 25 days of holiday plus 8 bank holidays, and a free employee helpline. These have value too, but they are hard to price.</p>
          <p>Some benefits have legal minimums. For example, UK workers get at least 5.6 weeks of paid holiday a year. UK employers must also enrol eligible staff into a workplace pension. Check the current rules on GOV.UK.</p>
        </div>
        <div class="lc-card">
          <h3>Pay cycles</h3>
          <p>A <strong>pay cycle</strong> (or pay frequency) is how often people are paid. The <strong>pay period</strong> is the time each payment covers, such as one week or one month.</p>
          <table class="lc-table">
            <thead><tr><th>Cycle</th><th>Pay days a year</th><th>Where it is common</th><th>Example gross pay</th></tr></thead>
            <tbody>
              <tr><td>Weekly</td><td>52 (some years 53)</td><td>UK hourly and shift staff</td><td>NB09: £35,000 ÷ 52 = £673.08</td></tr>
              <tr><td>Biweekly</td><td>26 (some years 27)</td><td>Many US employers</td><td>$96,000 ÷ 26 = $3,692.31</td></tr>
              <tr><td>Semi-monthly</td><td>24</td><td>US salaried staff</td><td>$96,000 ÷ 24 = $4,000.00</td></tr>
              <tr><td>Monthly</td><td>12</td><td>UK salaried staff</td><td>£35,000 ÷ 12 = £2,916.67</td></tr>
            </tbody>
          </table>
          <p>The dollar examples are a made-up software engineer at Brightside Software in New York. At Northbridge, L1 and L2 staff are paid weekly on Fridays. Their overtime is paid one week in arrears (one week later). L3 to L5 staff are paid monthly on the last working day.</p>
          <p><strong>Gross pay</strong> is pay before deductions. <strong>Net pay</strong> (take-home pay) is what is left after tax, social security and other deductions. The payroll lessons later in this course explain this in more detail.</p>
          <p>In the US, some states set how often employers must pay certain workers. New York, for example, has special rules for manual workers. Check with a payroll specialist before you change a pay cycle.</p>
        </div>
        <div class="lc-card">
          <h3>Your first AI prompt for pay work</h3>
          <p>An AI assistant such as Claude can explain pay in plain words. It can also draft a summary for an employee. It needs clear, made-up or approved details to do this well.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Explain total reward to a new driver.</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>You are an HR adviser at a UK logistics company. Write a short,
        friendly explanation of total reward for a new HGV driver.
        Use these made-up figures: base pay £35,000, night allowance £1,500,
        overtime about £2,200 last year, bonus 3% of base at target,
        employer pension 5% of base, life assurance 2 x salary.
        Show a table with each part and its yearly value, then a total.
        Say which parts can change. Use simple English. Do not add any
        benefit that is not in my list.</code></pre>
          <p>Before you share the answer, check every number with a calculator. Check the benefit rules with your HR policy. The AI does not know your company's real scheme.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: base pay, variable pay or benefit?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each made-up Northbridge pay item into the right group.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="base" data-label="Base pay"></div>
              <div data-sorter-target="bucket" data-bucket="variable" data-label="Variable pay"></div>
              <div data-sorter-target="bucket" data-bucket="benefit" data-label="Benefit"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="base" data-why="A fixed yearly salary in the contract is base pay.">NB09's contract salary of £35,000 a year</li>
              <li data-bucket="variable" data-why="It is only paid while NB09 works nights, so it can change.">A night shift allowance of £1,500 a year</li>
              <li data-bucket="variable" data-why="Overtime depends on the hours worked, so it changes each week.">Overtime paid at time and a half for extra hours</li>
              <li data-bucket="variable" data-why="A bonus depends on results. It is not guaranteed.">A company bonus of 3% of base pay if targets are met</li>
              <li data-bucket="benefit" data-why="The employer pays into a pension. It is value, but not cash in the payslip.">Northbridge pays 5% of base pay into a pension</li>
              <li data-bucket="benefit" data-why="Insurance paid by the employer is a benefit.">Life assurance worth 2 times salary</li>
              <li data-bucket="benefit" data-why="Paid time off above the legal minimum is a benefit.">25 days of holiday plus 8 bank holidays</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to build a simple total reward summary for a made-up role. Then check the maths and the wording yourself.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a reward (pay and benefits) adviser. Use simple English for staff who may not be native English speakers.

        Company: [Northbridge Logistics, a made-up UK warehouse and delivery company]. Currency: [£].
        Role: [HGV Driver, level L2]. All details are made up.
        Pay items:
        - Base salary: [£35,000 a year]
        - Allowances: [night shift allowance £1,500 a year]
        - Overtime: [about £2,200 last year, paid at time and a half]
        - Bonus: [3% of base pay if company targets are met]
        - Employer pension: [5% of base pay]
        - Other benefits: [life assurance 2 x salary, cost £150 a year; 25 days holiday plus bank holidays]
        Pay cycle: [weekly, on Fridays]

        Please:
        1. Make a table with columns: Item, Type (base, variable or benefit), Yearly value, Can it change? (yes or no).
        2. Add a total row. Show the sum you used.
        3. Work out gross pay per pay period from base salary only. Show the sum.
        4. Write a 5-sentence explanation for the employee.
        5. List anything you were not sure about.

        Do not invent extra benefits, tax amounts or legal rules.</pre>
            <ul class="ai-try-checks">
              <li>The total is correct when you add the items yourself.</li>
              <li>Overtime and bonus are marked as items that can change.</li>
              <li>Pay per period uses the right number of pay days (52, 26, 24 or 12).</li>
              <li>No extra benefits or tax figures were added.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> People often see only their base pay, but total reward is the real value of a job. When you can name each part and its value, you can explain pay clearly. AI can draft the explanation, but you must check every number.
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
        <p class="lc-lead">AI can save you hours in pay work. It can sum up data, draft letters, write FAQs and suggest spreadsheet formulas. But pay mistakes hurt real people, and AI can be wrong. In this lesson you will learn where AI helps and where its limits are. You will see the four big risks: wrong maths, private data, out-of-date rules and bias. You will also see how Priya at Northbridge Logistics caught a wrong pay gap figure before it reached the board.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 320" role="img" aria-label="Top: a five-step flow. Pay task, then AI drafts, then you check, then an expert signs off, then a person decides. Bottom left: where AI helps, such as summing up made-up pay data, drafting letters and FAQs, suggesting formulas, explaining rules and spotting outliers. Bottom right: limits and risks, such as wrong maths, private data in a public tool, old tax and wage rates, invented laws and bias.">
            <defs><marker id="cp2a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <g text-anchor="middle">
                <rect x="20" y="30" width="124" height="40" rx="8" fill="#27274e" stroke="#8b5cf6"/><text x="82" y="55">Pay task</text>
                <rect x="174" y="30" width="124" height="40" rx="8" fill="#27274e" stroke="#3b82f6"/><text x="236" y="55">AI drafts</text>
                <rect x="328" y="30" width="124" height="40" rx="8" fill="#27274e" stroke="#f59e0b"/><text x="390" y="55">You check</text>
                <rect x="482" y="30" width="124" height="40" rx="8" fill="#27274e" stroke="#22d3ee"/><text x="544" y="55">Expert signs off</text>
                <rect x="636" y="30" width="124" height="40" rx="8" fill="#27274e" stroke="#10b981"/><text x="698" y="55">Person decides</text>
              </g>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#cp2a)">
                <line x1="145" y1="50" x2="171" y2="50"/>
                <line x1="299" y1="50" x2="325" y2="50"/>
                <line x1="453" y1="50" x2="479" y2="50"/>
                <line x1="607" y1="50" x2="633" y2="50"/>
              </g>
              <rect x="20" y="96" width="350" height="210" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="40" y="124" font-weight="700" fill="#6ee7b7">Where AI helps</text>
              <text x="40" y="156">• Sum up and sort made-up pay data</text>
              <text x="40" y="184">• Draft letters and pay FAQs</text>
              <text x="40" y="212">• Suggest spreadsheet formulas</text>
              <text x="40" y="240">• Explain rules in plain words</text>
              <text x="40" y="268">• Spot outliers for a person to check</text>
              <rect x="390" y="96" width="350" height="210" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="410" y="124" font-weight="700" fill="#f9a8d4">Limits and risks</text>
              <text x="410" y="156">• Wrong maths that looks right</text>
              <text x="410" y="184">• Private data in a public tool</text>
              <text x="410" y="212">• Old or wrong tax and wage rates</text>
              <text x="410" y="240">• Invented laws, sources or figures</text>
              <text x="410" y="268">• Bias copied from past pay decisions</text>
            </g>
          </svg>
          <figcaption>AI drafts and flags. You check, a specialist signs off where needed, and a person makes the decision.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Where AI helps in pay work</h3>
          <table class="lc-table">
            <thead><tr><th>Task</th><th>How AI helps</th><th>What you must still do</th></tr></thead>
            <tbody>
              <tr><td>Analysis</td><td>Sorts made-up or anonymised data. Finds people far above or below their band.</td><td>Recheck every figure in the spreadsheet.</td></tr>
              <tr><td>Letters</td><td>Drafts pay rise and promotion letters in plain words.</td><td>Check names, amounts and dates against the approved list.</td></tr>
              <tr><td>FAQs</td><td>Drafts answers to common questions, such as "When will my new pay start?"</td><td>Get HR and payroll to approve each answer.</td></tr>
              <tr><td>Formulas</td><td>Suggests Excel or Google Sheets formulas and explains them.</td><td>Test each formula on a few rows you can check by hand.</td></tr>
              <tr><td>Rules in plain words</td><td>Explains a policy or a law in simple English.</td><td>Check the official source, such as GOV.UK or the US Department of Labor.</td></tr>
            </tbody>
          </table>
          <p>AI is good at first drafts and at spotting patterns. It is not a payroll system and not a lawyer. It does not know your company's policies unless you give them.</p>
        </div>
        <div class="lc-card">
          <h3>The four big risks</h3>
          <ul class="lc-list">
            <li><strong>Wrong maths.</strong> AI tools can make calculation errors and still sound sure. For example, 3.5% of £825,000 is £28,875. A slip of one decimal place gives £2,887.50. Always recalculate in a spreadsheet.</li>
            <li><strong>Private data.</strong> Pay data is personal data. Never paste real names, salaries or ID numbers into a public AI tool. Use only tools your company has approved for this data, and use made-up or anonymised data where you can.</li>
            <li><strong>Old or wrong rules.</strong> Tax rates, minimum wage rates and thresholds change, often every April in the UK. AI may give last year's figure or a figure for the wrong country. Check the official source every time.</li>
            <li><strong>Bias.</strong> If past pay decisions were unfair, AI can copy that pattern. For example, it may suggest lower raises for people who are already paid less. A person must decide, and must be able to explain each decision.</li>
          </ul>
          <p>This is general education, not legal or tax advice. For real pay decisions, check with a payroll specialist, an HR adviser or an employment lawyer.</p>
        </div>
        <div class="lc-card">
          <h3>Ask AI to show its working</h3>
          <p>You can lower the risk with a better prompt. Ask the AI to show each step, so you can check it.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>What is our gender pay gap? [pastes the real HR export with names]</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Below is a made-up, anonymised table of 20 employees: ID, gender,
        annual salary. Everyone works the same hours.
        1. Work out the mean salary for men and for women.
        2. Work out the median salary for men and for women.
        3. Work out the mean gap and the median gap as a % of men's pay.
        Show every step. Then give me spreadsheet formulas so I can
        check the numbers myself. Do not round until the last step.</code></pre>
          <p>The better prompt uses no names, asks for each step and gives you formulas to check. You still check the answer yourself.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: Priya checks an AI pay gap figure</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Priya asks">Priya pastes the made-up sample of 20 Northbridge employees: IDs, gender and salary only. She asks for the mean gender pay gap.</li>
              <li data-kind="answer" data-label="AI replies">"Men's mean salary is £44,550. Women's mean is £37,950. The mean gap is 17.4%."</li>
              <li data-kind="thought" data-label="Priya thinks">The two means look right. But the gap must be measured against men's pay. Which number did the AI divide by?</li>
              <li data-kind="tool" data-label="Priya uses a spreadsheet">She types =(44550-37950)/44550 into a cell and formats it as a percentage.</li>
              <li data-kind="result" data-label="Spreadsheet shows">14.8%. The AI divided by women's mean (£37,950) instead of men's mean. That gives 17.4%, which is wrong.</li>
              <li data-kind="warn" data-label="The risk">A wrong 17.4% in a board paper would mislead leaders. The UK reporting method measures the gap as a % of men's pay.</li>
              <li data-kind="check" data-label="Priya fixes it">She asks Grace, the payroll specialist, to check the source data. She records 14.8% with the formula next to it.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to draft a short pay review FAQ for staff. The prompt asks it to mark every answer that a person must check.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an HR adviser. Draft a short FAQ for employees about our yearly pay review. Use simple English. Sentences of 8 to 15 words.

        Company: [Northbridge Logistics, a made-up UK warehouse and delivery company with 420 staff].
        Pay review facts (made up):
        - Decisions are made in [November 2026].
        - New pay starts on [1 January 2027].
        - Raises depend on [performance rating and position in the salary band].
        - Managers will tell each person their result in [a one-to-one meeting in December].
        - Questions go to [the HR team at hr@example.com].

        Please:
        1. Write 6 questions and answers that staff are likely to ask.
        2. Use only the facts above. Do not invent percentages, budgets, tax rules or legal rights.
        3. After each answer, add a tag: [OK] if it only uses my facts, or [CHECK] if HR or payroll must confirm something.
        4. End with a list of facts you still need from me.</pre>
            <ul class="ai-try-checks">
              <li>No raise percentages or budgets were invented.</li>
              <li>Answers about tax, pay dates or legal rights are tagged [CHECK].</li>
              <li>The language is simple and short.</li>
              <li>The list of missing facts is useful for your next step.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> AI is a fast drafting and checking partner, not a decision maker. Use made-up or anonymised data, ask it to show its working, and recheck every number. People, with specialists where needed, decide about pay.
        </div>
      HTML
      starter_code: nil
    },
    3 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-hr">HR & Recruitment</div>
          <h1 class="lc-title">Pay Laws in General Words</h1>
        </div>
        <p class="lc-lead">Pay work has rules. In this lesson you will learn the main pay rules in the UK and the US in general words. You will learn about minimum wage, equal pay, pay transparency and record keeping. You will also learn how to use AI to explain rules, and why you must always check the official source. This lesson is general education. It is not legal or tax advice. For real cases, check with an employment lawyer, an HR adviser or a payroll specialist.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 330" role="img" aria-label="A table comparing UK and US pay rules in four rows. Minimum wage: UK National Living Wage 12.71 pounds an hour for age 21 and over from 1 April 2026; US federal minimum 7.25 dollars an hour, with many states higher. Equal pay: UK Equality Act 2010; US Equal Pay Act 1963 and Title VII, enforced by the EEOC. Pay transparency: UK gender pay gap reports for 250 or more staff; US pay ranges in job ads in some states such as New York. Records: UK minimum wage records 6 years and PAYE records 3 years; US FLSA payroll records 3 years and time cards 2 years.">
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <rect x="20" y="20" width="150" height="34" rx="6" fill="#27274e" stroke="#9b99b8"/>
              <text x="95" y="42" font-weight="700" text-anchor="middle">Topic</text>
              <rect x="180" y="20" width="280" height="34" rx="6" fill="#27274e" stroke="#3b82f6"/>
              <text x="320" y="42" font-weight="700" text-anchor="middle">UK (general)</text>
              <rect x="470" y="20" width="270" height="34" rx="6" fill="#27274e" stroke="#ec4899"/>
              <text x="605" y="42" font-weight="700" text-anchor="middle">US (general)</text>
              <g font-size="12">
                <rect x="20" y="62" width="720" height="58" rx="6" fill="#1f1f44" stroke="#10b981"/>
                <text x="32" y="96" font-size="13" font-weight="700">Minimum wage</text>
                <text x="192" y="86">National Living Wage £12.71/hr (21+)</text>
                <text x="192" y="106" fill="#9b99b8">from 1 April 2026; changes each April</text>
                <text x="482" y="86">Federal minimum $7.25/hr</text>
                <text x="482" y="106" fill="#9b99b8">Many states and cities pay more</text>
                <rect x="20" y="126" width="720" height="58" rx="6" fill="#1f1f44" stroke="#8b5cf6"/>
                <text x="32" y="160" font-size="13" font-weight="700">Equal pay</text>
                <text x="192" y="150">Equality Act 2010: equal pay</text>
                <text x="192" y="170" fill="#9b99b8">for equal work, men and women</text>
                <text x="482" y="150">Equal Pay Act 1963, Title VII</text>
                <text x="482" y="170" fill="#9b99b8">The EEOC enforces both</text>
                <rect x="20" y="190" width="720" height="58" rx="6" fill="#1f1f44" stroke="#f59e0b"/>
                <text x="32" y="224" font-size="13" font-weight="700">Pay transparency</text>
                <text x="192" y="214">Gender pay gap report: 250+ staff</text>
                <text x="192" y="234" fill="#9b99b8">Snapshot date 5 April (private sector)</text>
                <text x="482" y="214">Pay ranges in job ads in some</text>
                <text x="482" y="234" fill="#9b99b8">states, e.g. New York (4+ staff)</text>
                <rect x="20" y="254" width="720" height="58" rx="6" fill="#1f1f44" stroke="#22d3ee"/>
                <text x="32" y="288" font-size="13" font-weight="700">Records</text>
                <text x="192" y="278">Minimum wage records: 6 years</text>
                <text x="192" y="298" fill="#9b99b8">PAYE records: 3 years after tax year</text>
                <text x="482" y="278">FLSA payroll records: 3 years</text>
                <text x="482" y="298" fill="#9b99b8">Time cards, rate tables: 2 years</text>
              </g>
            </g>
          </svg>
          <figcaption>Four rule areas in general words, as checked in October 2026. Rates and rules change, so always check the official source. Not legal or tax advice.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Minimum wage</h3>
          <p>A <strong>minimum wage</strong> is the lowest hourly pay the law allows.</p>
          <ul class="lc-list">
            <li><strong>UK:</strong> the National Living Wage is for workers aged 21 and over. Lower National Minimum Wage rates apply to younger workers and apprentices. From 1 April 2026, the National Living Wage is £12.71 an hour. The rates change every April, so check GOV.UK.</li>
            <li><strong>US:</strong> the FLSA (Fair Labor Standards Act) sets a federal minimum of $7.25 an hour. Many states and cities set higher rates. The employer must pay the highest rate that applies.</li>
            <li><strong>US overtime:</strong> under the FLSA, non-exempt employees get overtime at 1.5 times their regular rate for hours over 40 in a week. Exempt employees (mostly some salaried roles that pass set tests) do not.</li>
          </ul>
          <p>Salaried staff are covered too. Here is a rough check for Northbridge's lowest band, made up for this course:</p>
          <pre><code>L1 band minimum:        £27,000 a year
        Hours: 40 a week x 52 = 2,080 hours a year
        Hourly pay: £27,000 ÷ 2,080 = £12.98
        National Living Wage (21+, from April 2026): £12.71
        Result: above the rate, but only by 27p an hour</code></pre>
          <p>This is only a rough check. The real check is done for each pay period. Some deductions and unpaid working time can push pay below the minimum. Grace, the payroll specialist, does the full check.</p>
        </div>
        <div class="lc-card">
          <h3>Equal pay and pay transparency</h3>
          <ul class="lc-list">
            <li><strong>UK equal pay:</strong> under the Equality Act 2010, men and women must get equal pay for equal work. Equal work can be the same or similar work. It can also be work rated as equal in a job evaluation, or work of equal value.</li>
            <li><strong>US equal pay:</strong> the Equal Pay Act 1963 requires equal pay for men and women doing substantially equal work in the same workplace. Title VII of the Civil Rights Act also bans pay discrimination based on race, colour, religion, sex or national origin. The EEOC (Equal Employment Opportunity Commission) enforces both.</li>
            <li><strong>UK gender pay gap reporting:</strong> employers with 250 or more employees must publish their gender pay gap each year. Private employers use a snapshot date of 5 April and publish within 12 months. Northbridge has 420 staff, so it must report.</li>
            <li><strong>UK changes:</strong> the Employment Rights Act 2025 brings in changes in stages. One change is equality action plans for employers with 250 or more staff. These are voluntary from April 2026 and are planned to become required from 2027. Check the current GOV.UK guidance for dates.</li>
            <li><strong>US pay transparency:</strong> some states and cities require pay ranges in job ads. For example, New York State requires employers with 4 or more employees to show a good-faith pay range in job ads. New York City has its own similar law.</li>
          </ul>
          <p>A gap is not always illegal. But a gap you cannot explain with fair reasons is a warning sign. Later in this course you will learn how to check pay equity.</p>
        </div>
        <div class="lc-card">
          <h3>Record keeping</h3>
          <table class="lc-table">
            <thead><tr><th>Country</th><th>Record</th><th>Keep for at least</th></tr></thead>
            <tbody>
              <tr><td>UK</td><td>Records that show you paid the minimum wage</td><td>6 years</td></tr>
              <tr><td>UK</td><td>PAYE payroll records (pay, deductions, tax)</td><td>3 years after the end of the tax year</td></tr>
              <tr><td>US</td><td>FLSA payroll records</td><td>3 years</td></tr>
              <tr><td>US</td><td>Time cards, wage rate tables, work schedules</td><td>2 years</td></tr>
            </tbody>
          </table>
          <p>Other rules, such as tax, pension and state laws, can need longer periods. Data protection rules also say you must not keep personal data longer than you need. Agree a retention schedule (a list of how long you keep each record) with your payroll and legal advisers.</p>
        </div>
        <div class="lc-card">
          <h3>Using AI to understand rules</h3>
          <p>AI can explain a rule in plain words. It can also turn a long guide into a checklist. But it may mix up countries, use an old rate or invent a rule.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>What is the minimum wage?</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>I work in HR for a UK company in England. Explain in simple English
        how the National Living Wage applies to salaried warehouse staff.
        Do not give me a rate. Tell me which GOV.UK page to check for the
        current rate. List 3 common ways salaried staff can fall below the
        minimum wage. Mark anything I should check with a payroll specialist.</code></pre>
          <p>The better prompt names the country, asks for no rate and points you to the official source. You then read that source yourself.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: UK, US or both?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each rule into the country where it applies. These are general descriptions, not legal advice.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="uk" data-label="UK"></div>
              <div data-sorter-target="bucket" data-bucket="us" data-label="US"></div>
              <div data-sorter-target="bucket" data-bucket="both" data-label="Both"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="uk" data-why="UK employers with 250 or more employees must publish gender pay gap figures each year.">Publish a gender pay gap report if you have 250 or more employees</li>
              <li data-bucket="us" data-why="FLSA overtime at 1.5 times the regular rate applies to non-exempt US employees.">Pay non-exempt staff 1.5 times their rate for hours over 40 a week</li>
              <li data-bucket="us" data-why="New York State requires a good-faith pay range in job ads for employers with 4 or more employees.">Show a pay range in job ads for roles in New York State</li>
              <li data-bucket="uk" data-why="UK minimum wage records must be kept for at least 6 years.">Keep minimum wage records for at least 6 years</li>
              <li data-bucket="both" data-why="The UK Equality Act 2010 and the US Equal Pay Act 1963 both require equal pay for equal work.">Pay men and women the same for equal work</li>
              <li data-bucket="both" data-why="Both countries set a legal minimum hourly pay, though the rates and rules differ.">Pay at least a legal minimum hourly rate</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to make a plain-words compliance checklist for a pay review. Then check each item against the official source.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an HR compliance helper. Use simple English. This is for general education, not legal advice.

        Company: [Northbridge Logistics, a made-up warehouse and delivery company with 420 staff in London and Manchester, UK].
        Task: [our yearly pay review, with new pay from 1 January 2027].
        Staff types: [hourly and salaried warehouse staff, drivers, office staff and managers].

        Please make a checklist for the pay review with these sections:
        1. Minimum wage
        2. Equal pay
        3. Pay transparency and gender pay gap reporting
        4. Record keeping

        For each section:
        - Give 2 to 4 checks, each in one short sentence.
        - Name the official source to check (for example a GOV.UK or Acas page), but do not quote rates or deadlines.
        - Add "Ask an expert:" with one question for an employment lawyer or payroll specialist.

        End with a note: "Check every item with a qualified adviser."</pre>
            <ul class="ai-try-checks">
              <li>It uses rules for the right country.</li>
              <li>No exact rates or deadlines were stated without a source.</li>
              <li>Each section names an official source you can open and read.</li>
              <li>It says clearly that this is not legal advice.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> You do not need to be a lawyer to work with pay rules. You need to know which rules exist, where the official source is, and when to ask an expert. AI can explain rules in plain words, but rates and laws change, so always check.
        </div>
      HTML
      starter_code: nil
    },
    4 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-hr">HR & Recruitment</div>
          <h1 class="lc-title">Working with Pay Data Safely</h1>
        </div>
        <p class="lc-lead">Pay data is some of the most private data a company holds. A leak can hurt people and break the law. In this lesson you will learn how to prepare pay data before any analysis. You will learn to remove what you do not need, replace names with IDs and spot small groups. You will also learn safe habits for access and spreadsheets. You will see how Priya and Grace at Northbridge Logistics made the safe sample used in this course.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 310" role="img" aria-label="A six-step flow in two rows. Step 1: export from the HRIS, the smallest extract you can. Step 2: keep only needed columns, drop NI number, address and date of birth. Step 3: replace names with IDs NB01 to NB20. Step 4: check small groups and hide or merge groups of two. Step 5: use an approved AI tool, a company plan not a personal one. Step 6: a person checks results in the spreadsheet. Below: the key file that links IDs to names is stored apart and locked, for Priya and Grace only.">
            <defs><marker id="cp4a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <rect x="20" y="30" width="220" height="56" rx="8" fill="#27274e" stroke="#8b5cf6"/>
              <text x="34" y="53" font-weight="700">1. Export from the HRIS</text>
              <text x="34" y="73" font-size="11" fill="#9b99b8">the smallest extract you can</text>
              <rect x="270" y="30" width="220" height="56" rx="8" fill="#27274e" stroke="#3b82f6"/>
              <text x="284" y="53" font-weight="700">2. Keep needed columns</text>
              <text x="284" y="73" font-size="11" fill="#9b99b8">drop NI no., address, birth date</text>
              <rect x="520" y="30" width="220" height="56" rx="8" fill="#27274e" stroke="#22d3ee"/>
              <text x="534" y="53" font-weight="700">3. Replace names with IDs</text>
              <text x="534" y="73" font-size="11" fill="#9b99b8">NB01 to NB20</text>
              <rect x="520" y="140" width="220" height="56" rx="8" fill="#27274e" stroke="#f59e0b"/>
              <text x="534" y="163" font-weight="700">4. Check small groups</text>
              <text x="534" y="183" font-size="11" fill="#9b99b8">2 people? hide or merge</text>
              <rect x="270" y="140" width="220" height="56" rx="8" fill="#27274e" stroke="#ec4899"/>
              <text x="284" y="163" font-weight="700">5. Use an approved AI tool</text>
              <text x="284" y="183" font-size="11" fill="#9b99b8">company plan, not personal</text>
              <rect x="20" y="140" width="220" height="56" rx="8" fill="#27274e" stroke="#10b981"/>
              <text x="34" y="163" font-weight="700">6. A person checks</text>
              <text x="34" y="183" font-size="11" fill="#9b99b8">recheck in the spreadsheet</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#cp4a)">
                <line x1="241" y1="58" x2="267" y2="58"/>
                <line x1="491" y1="58" x2="517" y2="58"/>
                <line x1="630" y1="87" x2="630" y2="137"/>
                <line x1="519" y1="168" x2="493" y2="168"/>
                <line x1="269" y1="168" x2="243" y2="168"/>
              </g>
              <rect x="120" y="236" width="520" height="50" rx="8" fill="#1f1f44" stroke="#f59e0b" stroke-dasharray="6 4"/>
              <text x="380" y="257" font-weight="700" text-anchor="middle">Key file (ID to name) is stored apart and locked</text>
              <text x="380" y="276" font-size="11" fill="#9b99b8" text-anchor="middle">Only Priya and Grace can open it. It never goes into an AI tool.</text>
            </g>
          </svg>
          <figcaption>Prepare pay data in six steps before any analysis. The key that links IDs to names stays locked away.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Why pay data needs extra care</h3>
          <p>Pay data is <strong>personal data</strong>: information about a person who can be identified. In the UK, the UK GDPR and the Data Protection Act 2018 protect it. You must have a lawful reason to use it. You must use only what you need and keep it secure.</p>
          <ul class="lc-list">
            <li><strong>Pseudonymised data</strong> replaces names with codes, such as NB01. It is still personal data if someone can link the codes back to names.</li>
            <li><strong>Anonymised data</strong> cannot be linked back to anyone, even with other information. Real anonymisation is harder than it looks.</li>
            <li><strong>Special category data</strong> needs even more care. It includes health, ethnicity, religion and sexual orientation. Keep it out of pay files unless you have a clear, approved reason.</li>
          </ul>
          <p>In the US, the rules depend on the state and the industry. Some state privacy laws cover employee data. Ask your privacy or legal team which rules apply. This is not legal advice.</p>
        </div>
        <div class="lc-card">
          <h3>Prepare a safe extract</h3>
          <p>An <strong>HRIS</strong> (HR information system, such as Workday, BambooHR, HiBob or Personio) holds much more than you need. Start with the question, then keep only the columns that answer it. Here is how Priya prepared data for a band check:</p>
          <table class="lc-table">
            <thead><tr><th>Column in the HRIS export</th><th>Action</th><th>Why</th></tr></thead>
            <tbody>
              <tr><td>Full name</td><td>Remove</td><td>Not needed for analysis</td></tr>
              <tr><td>Employee number</td><td>Replace with NB01, NB02 …</td><td>Real numbers can be looked up in other systems</td></tr>
              <tr><td>National Insurance number, home address</td><td>Remove</td><td>High risk and not needed</td></tr>
              <tr><td>Date of birth</td><td>Remove, or use an age band only if you need it</td><td>An exact date can identify a person</td></tr>
              <tr><td>Level, role, salary, rating</td><td>Keep</td><td>Needed for the band check</td></tr>
              <tr><td>Gender</td><td>Keep only for equity checks</td><td>Needed for pay gap work, not for every task</td></tr>
            </tbody>
          </table>
          <p><strong>Watch small groups.</strong> Northbridge has only two women Shift Supervisors in the sample. Anyone who knows the team can guess who they are, even without names. Many teams set a minimum group size, such as 5, before they show results. For smaller groups, merge them into a larger group. Or share the result only with the people who must act on it.</p>
        </div>
        <div class="lc-card">
          <h3>Access, spreadsheets and AI tools</h3>
          <ul class="lc-list">
            <li><strong>Least access:</strong> only people who need the data can open the file. At Northbridge, the key file is open to Priya and Grace only.</li>
            <li><strong>Shared drive, not email:</strong> keep pay files in a folder with set permissions. Do not send them as email attachments.</li>
            <li><strong>Protect the sheet:</strong> lock formula cells, so nobody types over them by mistake.</li>
            <li><strong>Formulas, not typed totals:</strong> use =SUM(E2:E21) and similar formulas. Then check that the total matches the payroll report.</li>
            <li><strong>Clear version names:</strong> for example "Pay review 2026 v3 2026-11-04". Delete old copies when you are done.</li>
            <li><strong>Approved AI tools only:</strong> use the AI tool your company has approved for HR data. Business plans often have settings that stop your data being used for training. Check your tool's current terms and settings with IT.</li>
          </ul>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Here is our payroll file. Who is underpaid? [pastes names and salaries]</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>I will NOT share real data. Here are only the column headers of an
        HR export: [Full name, Employee number, NI number, Date of birth,
        Home postcode, Level, Role, Gender, Salary, Rating, Manager].
        My task is to check salaries against bands. For each column,
        tell me: keep, remove or change, and why. Then list the risks
        that remain after these steps.</code></pre>
          <p>The better prompt shares no personal data. The AI helps you plan, and you do the real work inside your secure systems.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: prepare the data in the right order</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put Priya's steps for a safe pay data extract in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Write down the question: "Who sits outside their salary band?"</li>
              <li data-order="2">Export the smallest extract from the HRIS that can answer it.</li>
              <li data-order="3">Remove names, NI numbers, addresses and birth dates.</li>
              <li data-order="4">Replace employee numbers with IDs and lock the key file away.</li>
              <li data-order="5">Check for small groups and merge or hide them.</li>
              <li data-order="6">Use the company's approved AI tool, then recheck results in the spreadsheet.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to make a data safety plan from column headers only. You share no real data at all.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a data protection helper for an HR team in the UK. Use simple English. This is not legal advice.

        I will not share any real data. These are only the column headers of our HR export:
        [Full name, Employee number, National Insurance number, Date of birth, Home postcode, Site, Level, Role, Gender, Ethnicity, Salary, Bonus, Rating, Sick days, Manager name]

        My task: [check if men and women in the same role and level are paid fairly].
        Who will see the results: [HR manager, payroll specialist and the finance director].

        Please:
        1. Make a table: Column, Keep / Remove / Change, Why. For "Change", say how (for example, replace with an ID or an age band).
        2. Mark any special category data and say if this task needs it.
        3. Explain the small group risk in 3 sentences. Suggest a minimum group size.
        4. List 5 rules for storing and sharing the file safely.
        5. List 3 questions to ask our data protection lead.</pre>
            <ul class="ai-try-checks">
              <li>Names, NI numbers and home postcodes are removed.</li>
              <li>Ethnicity and sick days (health data) are marked as special category data.</li>
              <li>It keeps only the columns the task needs.</li>
              <li>It mentions small groups and who can see the results.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Safe pay analysis starts before you open any AI tool. Use only the data you need, replace names with IDs, watch small groups and keep the key file locked. If you would not post it on a notice board, do not paste it into a public AI tool.
        </div>
      HTML
      starter_code: nil
    },
    5 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-hr">HR & Recruitment</div>
          <h1 class="lc-title">Job Levels and Salary Bands</h1>
        </div>
        <p class="lc-lead">A fair pay system starts with a clear structure. In this lesson you will learn how job levels group similar jobs. You will learn how market data helps set a midpoint for each level. You will also build salary bands with simple spreadsheet formulas. You will see the five levels and bands that Priya built for Northbridge Logistics. Every pay lesson in the rest of this course uses them.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 330" role="img" aria-label="A bar chart of Northbridge's five made-up salary bands on a scale from 25,000 to 80,000 pounds. Each bar runs from the band minimum to the maximum, with a gold line at the midpoint. L1 Operative midpoint 30k, L2 Skilled 35k, L3 Supervisor 42k, L4 Manager 52k, L5 Senior manager 65k. Higher bands are wider, and next to each other the bands overlap.">
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <text x="90" y="22" font-weight="700" fill="#c4b5fd">Northbridge salary bands (made up)</text>
              <text x="740" y="22" font-size="11" fill="#9b99b8" text-anchor="end">Bar = min to max. Gold line = midpoint.</text>
              <line x1="90" y1="258.2" x2="740" y2="258.2" stroke="#3a3a66" stroke-width="1"/>
              <text x="80" y="262.2" font-size="11" fill="#9b99b8" text-anchor="end">£30k</text>
              <line x1="90" y1="214.5" x2="740" y2="214.5" stroke="#3a3a66" stroke-width="1"/>
              <text x="80" y="218.5" font-size="11" fill="#9b99b8" text-anchor="end">£40k</text>
              <line x1="90" y1="170.9" x2="740" y2="170.9" stroke="#3a3a66" stroke-width="1"/>
              <text x="80" y="174.9" font-size="11" fill="#9b99b8" text-anchor="end">£50k</text>
              <line x1="90" y1="127.3" x2="740" y2="127.3" stroke="#3a3a66" stroke-width="1"/>
              <text x="80" y="131.3" font-size="11" fill="#9b99b8" text-anchor="end">£60k</text>
              <line x1="90" y1="83.6" x2="740" y2="83.6" stroke="#3a3a66" stroke-width="1"/>
              <text x="80" y="87.6" font-size="11" fill="#9b99b8" text-anchor="end">£70k</text>
              <line x1="90" y1="40" x2="740" y2="40" stroke="#3a3a66" stroke-width="1"/>
              <text x="80" y="44" font-size="11" fill="#9b99b8" text-anchor="end">£80k</text>
              <line x1="90" y1="280" x2="740" y2="280" stroke="#9b99b8" stroke-width="1"/>
              <text x="80" y="284" font-size="11" fill="#9b99b8" text-anchor="end">£25k</text>
              <rect x="130" y="245.1" width="70" height="26.2" rx="4" fill="#1f1f44" stroke="#10b981" stroke-width="2"/>
              <line x1="130" y1="258.2" x2="200" y2="258.2" stroke="#f59e0b" stroke-width="3"/>
              <text x="206" y="262.2" font-size="11" fill="#fcd34d">£30k</text>
              <text x="165" y="302" font-weight="700" text-anchor="middle">L1</text>
              <text x="165" y="320" font-size="11" fill="#9b99b8" text-anchor="middle">Operative</text>
              <rect x="250" y="221.1" width="70" height="30.5" rx="4" fill="#1f1f44" stroke="#22d3ee" stroke-width="2"/>
              <line x1="250" y1="236.4" x2="320" y2="236.4" stroke="#f59e0b" stroke-width="3"/>
              <text x="326" y="240.4" font-size="11" fill="#fcd34d">£35k</text>
              <text x="285" y="302" font-weight="700" text-anchor="middle">L2</text>
              <text x="285" y="320" font-size="11" fill="#9b99b8" text-anchor="middle">Skilled</text>
              <rect x="370" y="178.3" width="70" height="55" rx="4" fill="#1f1f44" stroke="#3b82f6" stroke-width="2"/>
              <line x1="370" y1="205.8" x2="440" y2="205.8" stroke="#f59e0b" stroke-width="3"/>
              <text x="446" y="209.8" font-size="11" fill="#fcd34d">£42k</text>
              <text x="405" y="302" font-weight="700" text-anchor="middle">L3</text>
              <text x="405" y="320" font-size="11" fill="#9b99b8" text-anchor="middle">Supervisor</text>
              <rect x="490" y="128.1" width="70" height="68.1" rx="4" fill="#1f1f44" stroke="#8b5cf6" stroke-width="2"/>
              <line x1="490" y1="162.2" x2="560" y2="162.2" stroke="#f59e0b" stroke-width="3"/>
              <text x="566" y="166.2" font-size="11" fill="#fcd34d">£52k</text>
              <text x="525" y="302" font-weight="700" text-anchor="middle">L4</text>
              <text x="525" y="320" font-size="11" fill="#9b99b8" text-anchor="middle">Manager</text>
              <rect x="610" y="48.7" width="70" height="113.5" rx="4" fill="#1f1f44" stroke="#ec4899" stroke-width="2"/>
              <line x1="610" y1="105.5" x2="680" y2="105.5" stroke="#f59e0b" stroke-width="3"/>
              <text x="686" y="109.5" font-size="11" fill="#fcd34d">£65k</text>
              <text x="645" y="302" font-weight="700" text-anchor="middle">L5</text>
              <text x="645" y="320" font-size="11" fill="#9b99b8" text-anchor="middle">Senior manager</text>
            </g>
          </svg>
          <figcaption>Each level has a band from minimum to maximum, with a midpoint in the middle. Higher levels have wider bands, and next to each other the bands overlap.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Job levels</h3>
          <p>A <strong>job level</strong> is a group of jobs of a similar size. "Size" means the skill, responsibility and impact a job needs. Many companies use <strong>job evaluation</strong> (a fair, step-by-step way to compare jobs) to place each job in a level.</p>
          <p>Levels describe jobs, not people. A Van Driver and a Warehouse Operative are different jobs, but they can be the same size. Here are Northbridge's five levels:</p>
          <table class="lc-table">
            <thead><tr><th>Level</th><th>Name</th><th>Example roles (made up)</th><th>What the job needs</th></tr></thead>
            <tbody>
              <tr><td>L1</td><td>Operative</td><td>Warehouse Operative, Van Driver</td><td>Follows set tasks and safety rules</td></tr>
              <tr><td>L2</td><td>Skilled</td><td>HGV Driver, Stock Controller, Payroll Administrator</td><td>A licence or trained skill. Works with less supervision.</td></tr>
              <tr><td>L3</td><td>Supervisor / Specialist</td><td>Shift Supervisor</td><td>Leads a shift or owns a specialist area</td></tr>
              <tr><td>L4</td><td>Manager</td><td>Warehouse, Transport and Finance Manager</td><td>Runs a site function and its budget</td></tr>
              <tr><td>L5</td><td>Senior manager</td><td>Head of Operations, Head of Finance</td><td>Sets direction for the whole company</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Market data in general words</h3>
          <p>To set fair pay, you compare your jobs with the market. The market is what other employers pay for similar jobs in similar places.</p>
          <ul class="lc-list">
            <li><strong>Salary surveys:</strong> paid reports from pay data companies. Employers share their pay data and get back market figures.</li>
            <li><strong>Public data:</strong> for example, official earnings statistics such as the UK ONS (Office for National Statistics) or the US BLS (Bureau of Labor Statistics). They are free, but often broad.</li>
            <li><strong>Job adverts:</strong> pay ranges in local job ads. They are useful for a quick view, but they are not a full survey.</li>
          </ul>
          <p>Match jobs by their content, not their title. A "Supervisor" in one company can be a "Team Leader" in another. Surveys often show <strong>percentiles</strong>. The median (50th percentile) is the middle value: half of the market pays more and half pays less.</p>
          <p>Many companies set each band's <strong>midpoint</strong> at the market median for that level. This is a pay policy choice that leaders make.</p>
          <p><strong>Do not ask AI for market rates.</strong> A general AI tool does not have reliable, current salary survey data. It may invent a figure that looks exact. Use AI to explain your survey data, not to replace it.</p>
        </div>
        <div class="lc-card">
          <h3>Build bands with formulas</h3>
          <p>A <strong>salary band</strong> (or pay range) has a minimum, a midpoint and a maximum. Priya set each midpoint from market data. Then she chose a <strong>width</strong>: how far the band goes above and below the midpoint. Higher levels get wider bands, because people grow more in senior roles.</p>
          <p>Her sheet has the level in column A, the midpoint in B and the width in C. Row 2 is L1:</p>
          <pre><code>Minimum (D2):           =B2*(1-C2)
        Maximum (E2):           =B2*(1+C2)
        Range spread (F2):      =(E2-D2)/D2
        Midpoint step (G3):     =B3/B2-1</code></pre>
          <table class="lc-table">
            <thead><tr><th>Level</th><th>Midpoint</th><th>Width</th><th>Minimum</th><th>Maximum</th><th>Range spread</th><th>Midpoint step</th></tr></thead>
            <tbody>
              <tr><td>L1</td><td>£30,000</td><td>±10%</td><td>£27,000</td><td>£33,000</td><td>22.2%</td><td>n/a</td></tr>
              <tr><td>L2</td><td>£35,000</td><td>±10%</td><td>£31,500</td><td>£38,500</td><td>22.2%</td><td>16.7%</td></tr>
              <tr><td>L3</td><td>£42,000</td><td>±15%</td><td>£35,700</td><td>£48,300</td><td>35.3%</td><td>20.0%</td></tr>
              <tr><td>L4</td><td>£52,000</td><td>±15%</td><td>£44,200</td><td>£59,800</td><td>35.3%</td><td>23.8%</td></tr>
              <tr><td>L5</td><td>£65,000</td><td>±20%</td><td>£52,000</td><td>£78,000</td><td>50.0%</td><td>25.0%</td></tr>
            </tbody>
          </table>
          <p><strong>Range spread</strong> is the gap between maximum and minimum, as a % of the minimum. <strong>Midpoint step</strong> is how much each midpoint rises from the level below. Next to each other, the bands overlap. For example, L1 goes up to £33,000 and L2 starts at £31,500. Some overlap is normal, because an expert L1 can be worth more than a new L2.</p>
          <p>A person must still check these points:</p>
          <ul class="lc-list">
            <li>Is every band minimum above the legal minimum wage for the hours worked?</li>
            <li>How many people are below the minimum or above the maximum? Use =COUNTIF on each level.</li>
            <li>Do leaders agree with the pay policy, and can the company afford it?</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Activity: Priya builds bands with AI</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Priya asks">"Here are 5 levels with midpoints from our salary survey, and a width for each. Give me Google Sheets formulas for min, max and range spread."</li>
              <li data-kind="answer" data-label="AI replies">The AI gives the formulas and a filled table. It also adds: "The market median for HGV drivers in London is about £41,000."</li>
              <li data-kind="warn" data-label="Invented figure">Priya did not give that figure, and the AI has no survey access. It may be made up. She deletes it and keeps her own survey data.</li>
              <li data-kind="tool" data-label="Priya uses the sheet">She pastes the formulas into her sheet and checks L3 by hand: £42,000 x 0.85 = £35,700.</li>
              <li data-kind="result" data-label="Sheet shows">The AI's range spread column shows 18.2% for L1. Priya's own result is 22.2%.</li>
              <li data-kind="thought" data-label="Priya thinks">18.2% is £6,000 ÷ £33,000. The AI divided by the maximum, not the minimum. She fixes the formula to =(E2-D2)/D2.</li>
              <li data-kind="check" data-label="Final checks">She counts people outside each band with COUNTIF. NB11 is £500 below the L2 minimum, and NB18 is £700 above the L4 maximum. She notes both for the pay review.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to turn midpoints and widths into a salary band table with formulas. Then check one row by hand.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a reward analyst. Use simple English.

        Company: [Northbridge Logistics, a made-up UK warehouse and delivery company]. Currency: [£].
        These midpoints come from our own salary survey. Do not change them and do not add market data.
        Levels (level, name, midpoint, width above and below the midpoint):
        [L1 Operative 30000 10%
        L2 Skilled 35000 10%
        L3 Supervisor 42000 15%
        L4 Manager 52000 15%
        L5 Senior manager 65000 20%]

        Please:
        1. Make a table: Level, Name, Minimum, Midpoint, Maximum, Range spread (max minus min, divided by min), Midpoint step (% rise from the level below).
        2. Give the Excel or Google Sheets formula for each column. Say which column holds what.
        3. Show the full working for one level so I can check it.
        4. List where bands overlap and by how much.
        5. Give 3 things a person must check before the bands are used, including the legal minimum wage.</pre>
            <ul class="ai-try-checks">
              <li>Range spread is divided by the minimum, not the maximum.</li>
              <li>The midpoints are unchanged and no market figures were added.</li>
              <li>Your hand check of one row matches the table.</li>
              <li>The overlap amounts are correct.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Levels group jobs of similar size, and bands give each level a fair pay range. Simple formulas make the bands easy to check and update. Use AI to build and explain the sheet. Take market data from real sources, and let people approve the pay policy.
        </div>
      HTML
      starter_code: nil
    },
    6 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-hr">HR & Recruitment</div>
          <h1 class="lc-title">Compa-Ratio and Pay Positioning</h1>
        </div>
        <p class="lc-lead">A salary band tells you the fair range for a level. Now you need to see where each person sits inside it. In this lesson you will learn two simple measures: compa-ratio and range position. You will calculate both with spreadsheet formulas, using the made-up Northbridge Logistics sample. You will also learn how to read the results, which people to look at more closely, and why a number is a question, not an answer.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 340" role="img" aria-label="The L3 Supervisor band runs from 35,700 pounds (range position 0%) through the midpoint of 42,000 pounds (50%) to 48,300 pounds (100%). Four made-up Shift Supervisors are marked on the band. NB14, a woman, is at 38,500 pounds with compa-ratio 0.917. NB15, a woman, is at 39,000 pounds with compa-ratio 0.929. NB12, a man, is at 44,500 pounds with compa-ratio 1.060. NB13, a man, is at 45,500 pounds with compa-ratio 1.083. Below, two formulas: compa-ratio equals salary divided by midpoint, and range position equals salary minus minimum, divided by maximum minus minimum.">
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <text x="20" y="24" font-weight="700" fill="#c4b5fd">L3 band: four Shift Supervisors (made up)</text>
              <circle cx="560" cy="20" r="6" fill="#ec4899"/>
              <text x="572" y="24" font-size="11" fill="#9b99b8">Women</text>
              <circle cx="640" cy="20" r="6" fill="#3b82f6"/>
              <text x="652" y="24" font-size="11" fill="#9b99b8">Men</text>
              <text x="246.7" y="62" font-size="12" text-anchor="middle">NB15</text>
              <text x="246.7" y="78" font-size="11" fill="#9b99b8" text-anchor="middle">CR 0.929</text>
              <line x1="246.7" y1="84" x2="246.7" y2="120" stroke="#9b99b8" stroke-width="1"/>
              <text x="535.6" y="62" font-size="12" text-anchor="middle">NB13</text>
              <text x="535.6" y="78" font-size="11" fill="#9b99b8" text-anchor="middle">CR 1.083</text>
              <line x1="535.6" y1="84" x2="535.6" y2="120" stroke="#9b99b8" stroke-width="1"/>
              <rect x="100" y="110" width="560" height="36" rx="6" fill="#1f1f44" stroke="#3b82f6"/>
              <line x1="380" y1="104" x2="380" y2="152" stroke="#f59e0b" stroke-width="3"/>
              <circle cx="224.4" cy="128" r="7" fill="#ec4899"/>
              <circle cx="246.7" cy="128" r="7" fill="#ec4899"/>
              <circle cx="491.1" cy="128" r="7" fill="#3b82f6"/>
              <circle cx="535.6" cy="128" r="7" fill="#3b82f6"/>
              <line x1="224.4" y1="136" x2="224.4" y2="160" stroke="#9b99b8" stroke-width="1"/>
              <text x="224.4" y="174" font-size="12" text-anchor="middle">NB14</text>
              <text x="224.4" y="190" font-size="11" fill="#9b99b8" text-anchor="middle">CR 0.917</text>
              <line x1="491.1" y1="136" x2="491.1" y2="160" stroke="#9b99b8" stroke-width="1"/>
              <text x="491.1" y="174" font-size="12" text-anchor="middle">NB12</text>
              <text x="491.1" y="190" font-size="11" fill="#9b99b8" text-anchor="middle">CR 1.060</text>
              <text x="100" y="220" font-size="12" text-anchor="middle">Min £35,700</text>
              <text x="380" y="220" font-size="12" fill="#fcd34d" text-anchor="middle">Midpoint £42,000</text>
              <text x="660" y="220" font-size="12" text-anchor="middle">Max £48,300</text>
              <text x="100" y="238" font-size="11" fill="#9b99b8" text-anchor="middle">position 0%</text>
              <text x="380" y="238" font-size="11" fill="#9b99b8" text-anchor="middle">position 50%</text>
              <text x="660" y="238" font-size="11" fill="#9b99b8" text-anchor="middle">position 100%</text>
              <rect x="20" y="258" width="350" height="66" rx="8" fill="#27274e" stroke="#10b981"/>
              <text x="36" y="282" font-weight="700">Compa-ratio = salary ÷ midpoint</text>
              <text x="36" y="308" font-size="12" fill="#9b99b8">NB14: £38,500 ÷ £42,000 = 0.917</text>
              <rect x="390" y="258" width="350" height="66" rx="8" fill="#27274e" stroke="#8b5cf6"/>
              <text x="406" y="282" font-size="12" font-weight="700">Range position = (pay − min) ÷ (max − min)</text>
              <text x="406" y="308" font-size="12" fill="#9b99b8">NB14: £2,800 ÷ £12,600 = 22.2%</text>
            </g>
          </svg>
          <figcaption>Compa-ratio compares pay with the midpoint. Range position shows how far through the band a person is. Both are made-up figures for teaching.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Two ways to see where pay sits</h3>
          <ul class="lc-list">
            <li><strong>Compa-ratio</strong> (comparison ratio) is salary divided by the band midpoint. A compa-ratio of 1.00 means the person earns exactly the midpoint. 0.917 means 91.7% of the midpoint, so 8.3% below it.</li>
            <li><strong>Range position</strong> (or range penetration) is how far through the band a salary is. 0% is the band minimum, 50% is the midpoint and 100% is the maximum. Below 0% means under the minimum. Above 100% means over the maximum.</li>
          </ul>
          <p>The two measures answer different questions. Compa-ratio compares pay with the market, because the midpoint comes from market data. Range position shows how much room is left in the band.</p>
          <table class="lc-table">
            <thead><tr><th>ID (made up)</th><th>Level</th><th>Salary</th><th>Midpoint</th><th>Compa-ratio</th><th>Range position</th></tr></thead>
            <tbody>
              <tr><td>NB04</td><td>L1</td><td>£27,500</td><td>£30,000</td><td>0.917</td><td>8.3%</td></tr>
              <tr><td>NB09</td><td>L2</td><td>£35,000</td><td>£35,000</td><td>1.000</td><td>50.0%</td></tr>
              <tr><td>NB11</td><td>L2</td><td>£31,000</td><td>£35,000</td><td>0.886</td><td>-7.1% (below min)</td></tr>
              <tr><td>NB14</td><td>L3</td><td>£38,500</td><td>£42,000</td><td>0.917</td><td>22.2%</td></tr>
              <tr><td>NB18</td><td>L4</td><td>£60,500</td><td>£52,000</td><td>1.163</td><td>104.5% (above max)</td></tr>
              <tr><td>NB19</td><td>L5</td><td>£74,000</td><td>£65,000</td><td>1.138</td><td>84.6%</td></tr>
            </tbody>
          </table>
          <p>Look at NB04 and NB14. Both have a compa-ratio of 0.917. But NB04 is only 8.3% through the L1 band, and NB14 is 22.2% through the L3 band. The L3 band is wider, so the same compa-ratio gives a different range position.</p>
        </div>
        <div class="lc-card">
          <h3>Calculate it in a spreadsheet</h3>
          <p>Priya keeps the bands on a sheet called <code>Bands</code>: level in column A, minimum in B, midpoint in C and maximum in D. The staff sheet has the ID in A, the level in B and the salary in E. Row 2 is the first person.</p>
          <pre><code>Compa-ratio (F2):     =E2/VLOOKUP(B2,Bands!A:D,3,FALSE)
        Range position (G2):  =(E2-VLOOKUP(B2,Bands!A:D,2,FALSE))/(VLOOKUP(B2,Bands!A:D,4,FALSE)-VLOOKUP(B2,Bands!A:D,2,FALSE))
        Flag (H2):            =IF(F2&lt;0.9,"Low",IF(F2&gt;1.1,"High","OK"))
        Level average (L3):   =AVERAGEIF(B$2:B$21,"L3",F$2:F$21)</code></pre>
          <p>Copy the formulas down to row 21. Format F as a number with 3 decimals, and G as a percentage. In Excel 365 or Google Sheets you can use XLOOKUP instead of VLOOKUP.</p>
          <p>Northbridge uses three zones: below 0.90 is "Low", 0.90 to 1.10 is "OK", and above 1.10 is "High". Low and High do not mean "wrong". They mean "a person should look at this". Here are the results for the 20-person sample:</p>
          <table class="lc-table">
            <thead><tr><th>Group</th><th>Average compa-ratio</th><th>What Priya notes</th></tr></thead>
            <tbody>
              <tr><td>L1 (6 people)</td><td>0.978</td><td>A little below the midpoint</td></tr>
              <tr><td>L2 (5 people)</td><td>0.989</td><td>NB11 is Low (0.886) and below the band minimum</td></tr>
              <tr><td>L3 (4 people)</td><td>0.997</td><td>The average looks fine, but the men are above 1.05 and the women below 0.93</td></tr>
              <tr><td>L4 (3 people)</td><td>1.080</td><td>NB18 is High (1.163) and above the band maximum</td></tr>
              <tr><td>L5 (2 people)</td><td>1.077</td><td>NB19 is High (1.138)</td></tr>
              <tr><td>All 20</td><td>1.01</td><td>Women 0.952, men 1.067</td></tr>
            </tbody>
          </table>
          <p>The L3 row shows a common trap. A group average near 1.00 can hide a big split inside the group. Always look at the people, not only the average.</p>
        </div>
        <div class="lc-card">
          <h3>Use AI to explain, not to judge</h3>
          <p>AI can write the formulas, find people outside the zones and draft questions for managers. It cannot know why a person is paid where they are. There are often fair reasons for a low or high compa-ratio:</p>
          <ul class="lc-list">
            <li>A person who is new in the role often starts low in the band. NB04 has 1 year in role.</li>
            <li>A long-serving expert can sit high in the band. NB18 has 9 years in role.</li>
            <li>A person may have kept their old pay after moving to a lower level. This is sometimes called "red-circled" pay: pay above the band maximum that is protected for a time.</li>
          </ul>
          <p>But some reasons are not fair. NB14 has a rating of 4 and 5 years in role, yet is paid below both men in the same job. That needs a pay equity check, which comes next in this course.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Who is overpaid and who is underpaid in this list?</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Below is a made-up, anonymised table: ID, level, salary, rating,
        years in role. The bands are: [level, min, midpoint, max].
        1. Work out compa-ratio and range position for each person.
           Show the sum for the first two rows.
        2. Flag compa-ratios below 0.90 or above 1.10.
        3. For each flag, list possible reasons to check, using only
           the columns I gave. Do not say anyone is over- or underpaid.
        4. Give me the spreadsheet formulas so I can check your numbers.</code></pre>
          <p>Before you act, check every flagged number in your own sheet. Then ask the manager and HR for the real reasons.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: which zone?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Work out the compa-ratio (salary ÷ midpoint) for each made-up Northbridge employee. Then sort them into Northbridge's zones.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="low" data-label="Low (below 0.90)"></div>
              <div data-sorter-target="bucket" data-bucket="ok" data-label="OK (0.90 to 1.10)"></div>
              <div data-sorter-target="bucket" data-bucket="high" data-label="High (above 1.10)"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="low" data-why="£31,000 ÷ £35,000 = 0.886. This is below 0.90, and NB11 is also below the band minimum.">NB11: £31,000, L2 midpoint £35,000</li>
              <li data-bucket="high" data-why="£60,500 ÷ £52,000 = 1.163. NB18 is also above the band maximum.">NB18: £60,500, L4 midpoint £52,000</li>
              <li data-bucket="high" data-why="£74,000 ÷ £65,000 = 1.138, which is above 1.10.">NB19: £74,000, L5 midpoint £65,000</li>
              <li data-bucket="ok" data-why="£38,500 ÷ £42,000 = 0.917. It is in the OK zone, but the equity check still looks at it.">NB14: £38,500, L3 midpoint £42,000</li>
              <li data-bucket="ok" data-why="£27,500 ÷ £30,000 = 0.917. NB04 is new in role, so a low position is expected.">NB04: £27,500, L1 midpoint £30,000</li>
              <li data-bucket="ok" data-why="£37,500 ÷ £35,000 = 1.071, which is inside 0.90 to 1.10.">NB08: £37,500, L2 midpoint £35,000</li>
              <li data-bucket="ok" data-why="£66,000 ÷ £65,000 = 1.015, close to the midpoint.">NB20: £66,000, L5 midpoint £65,000</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to calculate compa-ratios and range positions for a small made-up team. Then check two rows by hand.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a reward analyst. Use simple English. All data below is made up.

        Band for [L3 Shift Supervisor]: minimum [£35,700], midpoint [£42,000], maximum [£48,300].
        Team (ID, salary, rating 1 to 5, years in role):
        [S1 £44,500 3 4
        S2 £45,500 3 6
        S3 £38,500 4 5
        S4 £39,000 3 3
        S5 £36,200 3 1]

        Please:
        1. Make a table: ID, Salary, Compa-ratio (salary ÷ midpoint, 3 decimals), Range position (salary minus minimum, divided by maximum minus minimum, as %).
        2. Show the full sum for S1 and S3.
        3. Give the average compa-ratio for the team.
        4. Flag anyone below 0.90 or above 1.10.
        5. For each person, write one question a manager should answer about their pay position. Use only the data given.
        6. Give Excel or Google Sheets formulas for both measures.

        Do not say anyone is overpaid or underpaid. People will decide after they check the reasons.</pre>
            <ul class="ai-try-checks">
              <li>Your hand check of S1 and S3 matches the table.</li>
              <li>Range position divides by (maximum minus minimum), not by the midpoint.</li>
              <li>It notices that S3 has a high rating but a low position.</li>
              <li>It does not label anyone as overpaid or underpaid.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Compa-ratio shows pay against the market midpoint, and range position shows how far through the band a person is. Both are easy to calculate and easy to get wrong, so check the formulas. Treat every flag as a question for a person to answer, not as a decision.
        </div>
      HTML
      starter_code: nil
    },
    7 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-hr">HR & Recruitment</div>
          <h1 class="lc-title">Pay Equity Checks</h1>
        </div>
        <p class="lc-lead">Pay equity means people doing the same or equal work get fair pay, whatever their sex, race or other protected characteristic. A pay equity check compares people in like roles, looks for gaps and asks if fair reasons explain them. In this lesson you will run a simple check on the made-up Northbridge Logistics sample. You will see how to separate explained gaps from unexplained ones, and what to do next. This is general education, not legal advice. Real equal pay questions need an employment lawyer.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 320" role="img" aria-label="Top: a five-step pay equity check. 1, group like roles at the same level. 2, compare mean pay by gender. 3, check fair reasons such as rating, years in role and site. 4, find the gap that is left. 5, people decide with a lawyer. Bottom: a bar chart of made-up gaps in mean pay between men and women in the same role. Warehouse Operative 9.0 percent, mostly explained by rating and years. Van Driver 4.9 percent, needs a check. HGV Driver 4.8 percent, mostly explained by years in role. Shift Supervisor 13.9 percent, not explained.">
            <defs><marker id="cp7a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <g text-anchor="middle">
                <rect x="15" y="30" width="130" height="58" rx="8" fill="#27274e" stroke="#8b5cf6"/>
                <text x="80" y="54" font-weight="700">1. Like roles</text>
                <text x="80" y="74" font-size="11" fill="#9b99b8">same level and job</text>
                <rect x="165" y="30" width="130" height="58" rx="8" fill="#27274e" stroke="#3b82f6"/>
                <text x="230" y="54" font-weight="700">2. Compare</text>
                <text x="230" y="74" font-size="11" fill="#9b99b8">mean pay by gender</text>
                <rect x="315" y="30" width="130" height="58" rx="8" fill="#27274e" stroke="#22d3ee"/>
                <text x="380" y="54" font-weight="700">3. Fair reasons</text>
                <text x="380" y="74" font-size="11" fill="#9b99b8">rating, years, site</text>
                <rect x="465" y="30" width="130" height="58" rx="8" fill="#27274e" stroke="#f59e0b"/>
                <text x="530" y="54" font-weight="700">4. Gap left?</text>
                <text x="530" y="74" font-size="11" fill="#9b99b8">the unexplained part</text>
                <rect x="615" y="30" width="130" height="58" rx="8" fill="#27274e" stroke="#10b981"/>
                <text x="680" y="54" font-weight="700">5. Decide</text>
                <text x="680" y="74" font-size="11" fill="#9b99b8">people and a lawyer</text>
              </g>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#cp7a)">
                <line x1="146" y1="59" x2="162" y2="59"/>
                <line x1="296" y1="59" x2="312" y2="59"/>
                <line x1="446" y1="59" x2="462" y2="59"/>
                <line x1="596" y1="59" x2="612" y2="59"/>
              </g>
              <text x="20" y="130" font-weight="700" fill="#c4b5fd">Gap in mean pay, same role (made up)</text>
              <text x="590" y="130" font-weight="700" fill="#c4b5fd">Fair reasons?</text>
              <text x="20" y="166">Warehouse Operative</text>
              <rect x="220" y="150" width="194.4" height="22" rx="4" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="422" y="166">9.0%</text>
              <text x="590" y="166" fill="#6ee7b7">Mostly: rating, years</text>
              <text x="20" y="202">Van Driver</text>
              <rect x="220" y="186" width="105.8" height="22" rx="4" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="334" y="202">4.9%</text>
              <text x="590" y="202" fill="#fcd34d">Check: mixed</text>
              <text x="20" y="238">HGV Driver</text>
              <rect x="220" y="222" width="103.7" height="22" rx="4" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="332" y="238">4.8%</text>
              <text x="590" y="238" fill="#6ee7b7">Mostly: years in role</text>
              <text x="20" y="274" font-weight="700">Shift Supervisor</text>
              <rect x="220" y="258" width="300.2" height="22" rx="4" fill="#1f1f44" stroke="#ec4899" stroke-width="2"/>
              <text x="528" y="274" font-weight="700">13.9%</text>
              <text x="590" y="274" font-weight="700" fill="#f9a8d4">Not explained</text>
              <text x="20" y="306" font-size="11" fill="#9b99b8">Gap = (men's mean − women's mean) ÷ men's mean. Each group has only 2 to 4 people.</text>
            </g>
          </svg>
          <figcaption>Group like roles, compare pay, test fair reasons, and act on the gap that is left. Only the Shift Supervisor gap has no fair reason in the data.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>What a pay equity check is</h3>
          <p>A <strong>pay equity check</strong> (or equal pay audit) compares the pay of people doing equal work. It asks two questions. Is there a gap between groups, such as men and women? If so, is there a fair reason for it?</p>
          <ul class="lc-list">
            <li><strong>UK:</strong> under the Equality Act 2010, equal work can be like work, work rated as equivalent in a job evaluation, or work of equal value. An employer may defend a gap with a genuine "material factor" that is not related to sex.</li>
            <li><strong>US:</strong> the Equal Pay Act covers substantially equal work in the same workplace. Fair defences are seniority, merit, quantity or quality of output, or a factor other than sex. Title VII covers pay discrimination more widely.</li>
          </ul>
          <p>A <strong>fair reason</strong> must be real, applied the same way to everyone, and recorded. Common examples are performance rating, time in role, a needed skill or licence, and location. Check the reasons too. For example, "years in role" can be unfair to people who took parental leave, if leave stops the count.</p>
          <p>This check is a sex-based example. You can run the same steps for other protected characteristics, if you hold that data lawfully and the groups are big enough. This is not legal advice. Many companies ask an employment lawyer to guide the check from the start.</p>
        </div>
        <div class="lc-card">
          <h3>Worked example: four like roles at Northbridge</h3>
          <p>Priya groups the made-up sample by role and level. She only compares roles that have both men and women. For each role she works out the mean pay for men and for women. The gap is shown as a % of the men's mean.</p>
          <table class="lc-table">
            <thead><tr><th>Role (level)</th><th>Men's mean</th><th>Women's mean</th><th>Gap</th><th>What the data shows</th></tr></thead>
            <tbody>
              <tr><td>Warehouse Operative (L1)</td><td>£30,500</td><td>£27,750</td><td>£2,750 (9.0%)</td><td>Men have more years (4 and 7 vs 2 and 1). NB04 has rating 2.</td></tr>
              <tr><td>Van Driver (L1)</td><td>£30,500</td><td>£29,000</td><td>£1,500 (4.9%)</td><td>NB05 (M) has 5 years. NB06 (F) has 3 years but a higher rating.</td></tr>
              <tr><td>HGV Driver (L2)</td><td>£36,750</td><td>£35,000</td><td>£1,750 (4.8%)</td><td>NB09 (F) has 4 years. The men have 6 and 8.</td></tr>
              <tr><td>Shift Supervisor (L3)</td><td>£45,000</td><td>£38,750</td><td>£6,250 (13.9%)</td><td>Same ratings or better, and similar years. No fair reason in the data.</td></tr>
            </tbody>
          </table>
          <p>The spreadsheet formula for one group is simple. With role in column C, gender in D and salary in E:</p>
          <pre><code>Men's mean (H2):    =AVERAGEIFS(E$2:E$21,C$2:C$21,"Shift Supervisor",D$2:D$21,"M")
        Women's mean (H3):  =AVERAGEIFS(E$2:E$21,C$2:C$21,"Shift Supervisor",D$2:D$21,"F")
        Gap (H4):           =(H2-H3)/H2          result: 13.9%</code></pre>
          <p>"Explained" is not the same as "fine". For the Van Drivers, NB06 has a higher rating but lower pay. Priya asks the manager how ratings affect pay for this role. She records the answer.</p>
        </div>
        <div class="lc-card">
          <h3>The Shift Supervisor gap and what to do next</h3>
          <table class="lc-table">
            <thead><tr><th>ID</th><th>Gender</th><th>Salary</th><th>Rating</th><th>Years in role</th><th>Compa-ratio</th></tr></thead>
            <tbody>
              <tr><td>NB12</td><td>M</td><td>£44,500</td><td>3</td><td>4</td><td>1.060</td></tr>
              <tr><td>NB13</td><td>M</td><td>£45,500</td><td>3</td><td>6</td><td>1.083</td></tr>
              <tr><td>NB14</td><td>F</td><td>£38,500</td><td>4</td><td>5</td><td>0.917</td></tr>
              <tr><td>NB15</td><td>F</td><td>£39,000</td><td>3</td><td>3</td><td>0.929</td></tr>
            </tbody>
          </table>
          <p>NB14 has a better rating and more years than NB12, but earns £6,000 less. Priya finds no fair reason in the data. Her next steps:</p>
          <ul class="lc-list">
            <li><strong>Look for the cause.</strong> Check how starting pay and past raises were set for all four people. The cause shows what to fix for the future, too.</li>
            <li><strong>Get advice.</strong> Ask the employment lawyer before anything is shared or decided.</li>
            <li><strong>Propose a fix.</strong> Priya proposes raising NB14 and NB15 to £44,500, the same as NB12, from 1 January 2027. The cost is £6,000 + £5,500 = £11,500. It comes from a separate equity fund, not the merit budget.</li>
            <li><strong>Protect privacy.</strong> The group has only 2 men and 2 women, so anyone in the team could guess who is who. Share the detail only with the people who must decide.</li>
          </ul>
          <p>The finance director and Priya make the decision. AI only helped with the sums and the summary.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Is our pay fair? Do we have an equal pay problem?</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Below is made-up, anonymised data for one role: ID, gender,
        salary, rating, years in role. 1. Work out the mean pay for men
        and women and the gap as a % of men's mean. Show your working.
        2. Test each column as a possible fair reason: does it explain
        the gap? 3. Say how much of the gap is left unexplained.
        4. List questions for HR and an employment lawyer.
        Do not decide if this is legal or illegal.</code></pre>
        </div>
        <div class="lc-card">
          <h3>Activity: Priya tests an AI explanation</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Priya asks">Priya gives the company's approved AI tool the four anonymised Shift Supervisor rows. She asks it to compare pay by gender and test fair reasons.</li>
              <li data-kind="answer" data-label="AI replies">"The men earn £6,250 more on average (13.9%). This is likely explained by longer service in the role."</li>
              <li data-kind="thought" data-label="Priya thinks">The men have 4 and 6 years. The women have 5 and 3. That is a mean of 5 years for the men and 4 for the women. One year cannot explain £6,250.</li>
              <li data-kind="tool" data-label="Priya uses the sheet">She sorts the four rows by years in role and puts salary next to it.</li>
              <li data-kind="result" data-label="Sheet shows">NB14 has 5 years and earns £38,500. NB12 has 4 years and earns £44,500. More years does not mean more pay here.</li>
              <li data-kind="warn" data-label="The risk">The AI gave a likely-sounding reason that the data does not support. Accepting it would leave an unfair gap in place.</li>
              <li data-kind="check" data-label="Priya acts">She records the gap as unexplained, asks the employment lawyer for advice, and writes a proposal for the finance director.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to run a like-role pay equity check on a made-up table. Then test its reasons against the data yourself.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a pay equity analyst. Use simple English. This is general education, not legal advice. All data is made up.

        Company: [a UK warehouse company]. Currency: [£].
        Data (ID, role, level, gender, salary, rating 1 to 5, years in role):
        [A1 Team Leader L3 M 44500 3 4
        A2 Team Leader L3 M 45500 3 6
        A3 Team Leader L3 F 38500 4 5
        A4 Team Leader L3 F 39000 3 3
        B1 Picker L1 M 29500 3 4
        B2 Picker L1 F 28000 3 2]

        Please:
        1. For each role, give the mean pay for men and women, and the gap as a % of the men's mean. Show the sums.
        2. For each gap, test rating and years in role as fair reasons. Say if each one explains the gap, partly explains it, or does not.
        3. Mark each gap as "explained", "partly explained" or "not explained", with one sentence why.
        4. For any gap that is not explained, suggest 3 next steps and the cost to close it.
        5. Note any small-group privacy risk.

        Do not say whether anything is legal or illegal. Use only the data given.</pre>
            <ul class="ai-try-checks">
              <li>Each gap is divided by the men's mean, and the sums are correct.</li>
              <li>The reasons match the data (check the years and ratings yourself).</li>
              <li>The Team Leader gap is marked as not explained.</li>
              <li>It mentions advice from an employment lawyer and the small-group risk.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A pay equity check compares like with like, then tests every gap against real, recorded reasons. AI is quick at the sums, but it can invent a reason that sounds right. You test each reason against the data, and people decide on the fix with expert advice.
        </div>
      HTML
      starter_code: nil
    },
    8 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-hr">HR & Recruitment</div>
          <h1 class="lc-title">Gender Pay Gap Reporting</h1>
        </div>
        <p class="lc-lead">In the UK, employers with 250 or more employees must publish their gender pay gap every year. Northbridge Logistics has 420 staff, so Priya must report. In this lesson you will learn the six figures in a UK report, in general words. You will calculate the mean and median gaps and the pay quarters correctly with spreadsheet formulas. You will also use AI to draft the written explanation, and check it. This is general education, not legal advice. Check the current GOV.UK guidance before you report.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 330" role="img" aria-label="Three tiles for the made-up practice sample of 20 Northbridge employees. Mean gap 14.8 percent: men 21.42 pounds and women 18.25 pounds an hour. Median gap 16.5 percent: men 19.71 pounds and women 16.47 pounds an hour. Deadline: snapshot date 5 April 2026, publish by 4 April 2027. Below, four pay quarters of 5 people each. Upper quarter 40 percent women, upper middle 40 percent women, lower middle 60 percent women, lower 60 percent women.">
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <rect x="20" y="20" width="230" height="92" rx="10" fill="#27274e" stroke="#ec4899"/>
              <text x="135" y="44" text-anchor="middle" fill="#9b99b8">Mean gap (hourly)</text>
              <text x="135" y="76" font-size="26" font-weight="700" text-anchor="middle">14.8%</text>
              <text x="135" y="100" font-size="11" fill="#9b99b8" text-anchor="middle">men £21.42, women £18.25</text>
              <rect x="265" y="20" width="230" height="92" rx="10" fill="#27274e" stroke="#ec4899"/>
              <text x="380" y="44" text-anchor="middle" fill="#9b99b8">Median gap (hourly)</text>
              <text x="380" y="76" font-size="26" font-weight="700" text-anchor="middle">16.5%</text>
              <text x="380" y="100" font-size="11" fill="#9b99b8" text-anchor="middle">men £19.71, women £16.47</text>
              <rect x="510" y="20" width="230" height="92" rx="10" fill="#27274e" stroke="#f59e0b"/>
              <text x="625" y="44" text-anchor="middle" fill="#9b99b8">Publish by</text>
              <text x="625" y="76" font-size="22" font-weight="700" text-anchor="middle">4 April 2027</text>
              <text x="625" y="100" font-size="11" fill="#9b99b8" text-anchor="middle">snapshot date 5 April 2026</text>
              <text x="20" y="144" font-weight="700" fill="#c4b5fd">Pay quarters: 5 people each, highest paid at the top</text>
              <text x="20" y="173">Upper</text>
              <rect x="150" y="156" width="200" height="26" fill="#ec4899" fill-opacity="0.35" stroke="#ec4899"/>
              <rect x="350" y="156" width="300" height="26" fill="#3b82f6" fill-opacity="0.35" stroke="#3b82f6"/>
              <text x="250" y="173" text-anchor="middle">Women 40%</text>
              <text x="500" y="173" text-anchor="middle">Men 60%</text>
              <text x="20" y="209">Upper middle</text>
              <rect x="150" y="192" width="200" height="26" fill="#ec4899" fill-opacity="0.35" stroke="#ec4899"/>
              <rect x="350" y="192" width="300" height="26" fill="#3b82f6" fill-opacity="0.35" stroke="#3b82f6"/>
              <text x="250" y="209" text-anchor="middle">Women 40%</text>
              <text x="500" y="209" text-anchor="middle">Men 60%</text>
              <text x="20" y="245">Lower middle</text>
              <rect x="150" y="228" width="300" height="26" fill="#ec4899" fill-opacity="0.35" stroke="#ec4899"/>
              <rect x="450" y="228" width="200" height="26" fill="#3b82f6" fill-opacity="0.35" stroke="#3b82f6"/>
              <text x="300" y="245" text-anchor="middle">Women 60%</text>
              <text x="550" y="245" text-anchor="middle">Men 40%</text>
              <text x="20" y="281">Lower</text>
              <rect x="150" y="264" width="300" height="26" fill="#ec4899" fill-opacity="0.35" stroke="#ec4899"/>
              <rect x="450" y="264" width="200" height="26" fill="#3b82f6" fill-opacity="0.35" stroke="#3b82f6"/>
              <text x="300" y="281" text-anchor="middle">Women 60%</text>
              <text x="550" y="281" text-anchor="middle">Men 40%</text>
              <text x="20" y="318" font-size="11" fill="#9b99b8">Practice sample of 20 (made up). The real report uses all full-pay relevant employees.</text>
            </g>
          </svg>
          <figcaption>Three of the six reported figures (mean gap, median gap and pay quarters) and the deadline, for the made-up practice sample. Women are paid less on average and sit more often in the lower pay quarters.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The rules in general words</h3>
          <p>The <strong>gender pay gap</strong> is the difference between the average hourly pay of men and women across the whole organisation. It is not the same as equal pay. Equal pay compares people doing equal work. The pay gap compares everyone, so it also shows if women are fewer in senior, higher-paid jobs.</p>
          <ul class="lc-list">
            <li><strong>Who:</strong> employers with 250 or more employees on the snapshot date.</li>
            <li><strong>When:</strong> private and voluntary sector employers use a snapshot date of 5 April. They must publish by 4 April the next year. Most public bodies use 31 March.</li>
            <li><strong>Where:</strong> on the government's gender pay gap service, and on the employer's own website for at least 3 years.</li>
            <li><strong>Sign-off:</strong> private employers add a written statement, signed by a senior person such as a director, that the figures are accurate. A supporting narrative (an explanation of the figures) is optional but common.</li>
          </ul>
          <p>Employers report six figures:</p>
          <ol class="lc-list">
            <li>The mean gender pay gap in hourly pay.</li>
            <li>The median gender pay gap in hourly pay.</li>
            <li>The mean bonus gap.</li>
            <li>The median bonus gap.</li>
            <li>The % of men and the % of women who got a bonus.</li>
            <li>The % of men and women in each of four pay quarters.</li>
          </ol>
          <p>Bonus figures use bonus pay in the 12 months up to the snapshot date. The rules and the guidance can change, so check GOV.UK each year. This is not legal advice.</p>
        </div>
        <div class="lc-card">
          <h3>Calculate the figures correctly</h3>
          <p>The gaps use <strong>hourly pay</strong>, not yearly salary. This matters when people work different hours, such as part-time staff. Hourly pay uses <strong>ordinary pay</strong> in the pay period that includes the snapshot date. In general words:</p>
          <ul class="lc-list">
            <li><strong>Include:</strong> basic pay, allowances (such as a night shift allowance), shift premium pay and pay for leave. Bonus paid in that period is also added, in the way the guidance sets out.</li>
            <li><strong>Leave out:</strong> overtime pay, redundancy pay, expenses and benefits in kind (non-cash benefits, such as a company car).</li>
            <li><strong>People:</strong> use <strong>full-pay relevant employees</strong>. These are people paid their usual full pay in that period. For example, leave out someone on reduced pay because of sick leave or maternity leave.</li>
          </ul>
          <p>Here is the practice sample of 20. Everyone works 40 hours a week, so hourly pay is salary ÷ 2,080. Column D has the gender, and column F has the hourly pay.</p>
          <pre><code>Hourly pay (F2):     =E2/2080
        Men's mean (J2):     =AVERAGEIF(D2:D21,"M",F2:F21)           £21.42
        Women's mean (J3):   =AVERAGEIF(D2:D21,"F",F2:F21)           £18.25
        Mean gap (J4):       =(J2-J3)/J2                             14.8%
        Men's median (K2):   =MEDIAN(FILTER(F2:F21,D2:D21="M"))      £19.71
        Women's median (K3): =MEDIAN(FILTER(F2:F21,D2:D21="F"))      £16.47
        Median gap (K4):     =(K2-K3)/K2                             16.5%</code></pre>
          <p>FILTER works in Excel 365 and Google Sheets. Do not round the hourly pay before you work out the gaps. Always divide by the men's figure.</p>
          <p><strong>Pay quarters:</strong> sort everyone by hourly pay, from highest to lowest. Split the list into four equal groups. With 20 people, each quarter has 5. With 420 people, each quarter would have 105, if all are full-pay relevant. Then count the % of women and men in each quarter. In the sample, women are 40% of each of the top two quarters and 60% of each of the bottom two.</p>
        </div>
        <div class="lc-card">
          <h3>Use AI to draft the narrative</h3>
          <p>Many employers publish a short narrative. It explains why the gap exists and what the company will do. AI can draft it fast. But it may add causes you did not give, or promise actions nobody agreed.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Write our gender pay gap statement. Make us look good.</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Draft a 200-word gender pay gap narrative for a UK logistics
        company. Use only these figures: mean gap [x]%, median gap [y]%,
        women in each quarter [a]%, [b]%, [c]%, [d]%. Causes we found:
        [fewer women in L4 and L5 roles; an unexplained gap in one role
        that we are fixing]. Actions agreed by the board: [list].
        Plain English. Do not add causes, figures or promises.
        After the draft, list every claim that someone must check.</code></pre>
          <p>Before it is published, check every figure against the spreadsheet. The person who signs the written statement must be sure the figures are accurate. Also check that the text does not identify anyone. Under the Employment Rights Act 2025, larger employers will also need equality action plans. Check GOV.UK for which parts are in force and when.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: the reporting steps in order</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put Priya's steps for Northbridge's gender pay gap report in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Confirm there are 250 or more employees on the snapshot date of 5 April 2026.</li>
              <li data-order="2">List the full-pay relevant employees for the pay period that includes the snapshot date.</li>
              <li data-order="3">Work out each person's hourly ordinary pay, without overtime.</li>
              <li data-order="4">Calculate the mean and median hourly pay gaps as a % of men's pay.</li>
              <li data-order="5">Sort by hourly pay and work out the % of women and men in each quarter.</li>
              <li data-order="6">Calculate the bonus figures for the 12 months up to the snapshot date.</li>
              <li data-order="7">Get the written statement signed and publish by 4 April 2027.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to check a set of made-up pay gap figures and draft a short narrative. Then check every number it uses.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a reward analyst in the UK. Use simple English. This is general education, not legal advice. All figures are made up.

        Company: [Northbridge Logistics, a made-up warehouse and delivery company with 420 staff].
        Snapshot date: [5 April 2026].
        Hourly pay: men's mean [£21.42], women's mean [£18.25]; men's median [£19.71], women's median [£16.47].
        Women in each pay quarter, top to bottom: [40%, 40%, 60%, 60%].
        Causes we found: [more men than women in L4 and L5 jobs; one role with an unexplained gap, now being fixed].
        Actions agreed: [fix the unexplained gap from 1 January 2027; check starting pay for every new hire].

        Please:
        1. Calculate the mean and median gaps as a % of men's pay. Show the sums.
        2. Draft a narrative of about 150 words for our website.
        3. Use only the causes and actions above. Do not invent figures or promises.
        4. Tell me the deadline to publish, and say I should check it on GOV.UK.
        5. List every claim in your draft that a person must check.</pre>
            <ul class="ai-try-checks">
              <li>The gaps are 14.8% (mean) and 16.5% (median), divided by men's pay.</li>
              <li>The narrative uses only the causes and actions you gave.</li>
              <li>It gives 4 April 2027 as the deadline and points you to GOV.UK.</li>
              <li>The text does not identify any person or small group.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A gender pay gap report is simple maths with strict rules: the right people, the right pay, hourly figures and men's pay as the base. Use formulas you can check, not AI's arithmetic. Let AI draft the narrative, then make sure every figure and promise is true.
        </div>
      HTML
      starter_code: nil
    },
    9 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-hr">HR & Recruitment</div>
          <h1 class="lc-title">Pay Reviews and Raise Budgets</h1>
        </div>
        <p class="lc-lead">Once a year, many companies review pay and give raises from a fixed budget. The hard part is to share the budget fairly and stay inside it. In this lesson you will learn how a merit matrix works and how to do the budget maths in a spreadsheet. You will follow Priya and Tom through the made-up Northbridge Logistics 2026 pay review. You will also learn the fairness checks to run before any raise is agreed.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 320" role="img" aria-label="Left: Northbridge's made-up merit matrix. Rows are performance ratings 5 to 1. Columns are compa-ratio below 0.95, 0.95 to 1.05, and above 1.05. Rating 5 gets 6.0, 5.0 and 4.0 percent. Rating 4 gets 5.5, 4.5 and 3.5 percent. Rating 3 gets 4.5, 3.5 and 2.5 percent. Rating 2 gets 2.0, 1.5 and 0 percent. Rating 1 gets 0 percent. Right: the budget. Merit budget 28,875 pounds, which is 3.5 percent of 825,000 pounds. Merit given 28,405 pounds, including 1,825 pounds of lump sums. 470 pounds left. A separate equity fund of 11,500 pounds.">
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <text x="20" y="24" font-weight="700" fill="#c4b5fd">Merit matrix (made up)</text>
              <g text-anchor="middle" font-size="12" fill="#9b99b8">
                <text x="80" y="58">Rating</text>
                <text x="202" y="50">Compa-ratio</text>
                <text x="202" y="66">below 0.95</text>
                <text x="312" y="50">Compa-ratio</text>
                <text x="312" y="66">0.95 to 1.05</text>
                <text x="422" y="50">Compa-ratio</text>
                <text x="422" y="66">above 1.05</text>
              </g>
              <g font-size="12">
                <text x="20" y="102">5 Outstanding</text>
                <text x="20" y="142">4 Exceeds</text>
                <text x="20" y="182">3 Meets</text>
                <text x="20" y="222">2 Partly meets</text>
                <text x="20" y="262">1 Does not meet</text>
              </g>
              <g text-anchor="middle">
                <rect x="150" y="80" width="104" height="34" rx="6" fill="#1f1f44" stroke="#10b981"/><text x="202" y="102">6.0%</text>
                <rect x="260" y="80" width="104" height="34" rx="6" fill="#1f1f44" stroke="#10b981"/><text x="312" y="102">5.0%</text>
                <rect x="370" y="80" width="104" height="34" rx="6" fill="#1f1f44" stroke="#10b981"/><text x="422" y="102">4.0%</text>
                <rect x="150" y="120" width="104" height="34" rx="6" fill="#1f1f44" stroke="#10b981"/><text x="202" y="142">5.5%</text>
                <rect x="260" y="120" width="104" height="34" rx="6" fill="#1f1f44" stroke="#22d3ee"/><text x="312" y="142">4.5%</text>
                <rect x="370" y="120" width="104" height="34" rx="6" fill="#1f1f44" stroke="#22d3ee"/><text x="422" y="142">3.5%</text>
                <rect x="150" y="160" width="104" height="34" rx="6" fill="#1f1f44" stroke="#22d3ee"/><text x="202" y="182">4.5%</text>
                <rect x="260" y="160" width="104" height="34" rx="6" fill="#1f1f44" stroke="#3b82f6"/><text x="312" y="182">3.5%</text>
                <rect x="370" y="160" width="104" height="34" rx="6" fill="#1f1f44" stroke="#3b82f6"/><text x="422" y="182">2.5%</text>
                <rect x="150" y="200" width="104" height="34" rx="6" fill="#1f1f44" stroke="#f59e0b"/><text x="202" y="222">2.0%</text>
                <rect x="260" y="200" width="104" height="34" rx="6" fill="#1f1f44" stroke="#f59e0b"/><text x="312" y="222">1.5%</text>
                <rect x="370" y="200" width="104" height="34" rx="6" fill="#1f1f44" stroke="#f59e0b"/><text x="422" y="222">0%</text>
                <rect x="150" y="240" width="104" height="34" rx="6" fill="#1f1f44" stroke="#ec4899"/><text x="202" y="262">0%</text>
                <rect x="260" y="240" width="104" height="34" rx="6" fill="#1f1f44" stroke="#ec4899"/><text x="312" y="262">0%</text>
                <rect x="370" y="240" width="104" height="34" rx="6" fill="#1f1f44" stroke="#ec4899"/><text x="422" y="262">0%</text>
              </g>
              <text x="500" y="24" font-weight="700" fill="#c4b5fd">The budget</text>
              <rect x="500" y="40" width="240" height="52" rx="8" fill="#27274e" stroke="#8b5cf6"/>
              <text x="514" y="62">Merit budget</text>
              <text x="726" y="62" text-anchor="end" font-weight="700">£28,875</text>
              <text x="514" y="81" font-size="11" fill="#9b99b8">3.5% of £825,000 base pay</text>
              <rect x="500" y="100" width="240" height="52" rx="8" fill="#27274e" stroke="#3b82f6"/>
              <text x="514" y="122">Merit given</text>
              <text x="726" y="122" text-anchor="end" font-weight="700">£28,405</text>
              <text x="514" y="141" font-size="11" fill="#9b99b8">includes £1,825 of lump sums</text>
              <rect x="500" y="160" width="240" height="52" rx="8" fill="#27274e" stroke="#10b981"/>
              <text x="514" y="182">Left in budget</text>
              <text x="726" y="182" text-anchor="end" font-weight="700" fill="#6ee7b7">£470</text>
              <text x="514" y="201" font-size="11" fill="#9b99b8">inside budget</text>
              <rect x="500" y="220" width="240" height="54" rx="8" fill="#1f1f44" stroke="#f59e0b" stroke-dasharray="6 4"/>
              <text x="514" y="242">Equity fund</text>
              <text x="726" y="242" text-anchor="end" font-weight="700">£11,500</text>
              <text x="514" y="262" font-size="11" fill="#9b99b8">separate: NB14 and NB15</text>
              <text x="20" y="306" font-size="11" fill="#9b99b8">Equity fixes first. Then the merit % uses the new compa-ratio. Base pay above the band max is paid as a lump sum.</text>
            </g>
          </svg>
          <figcaption>A merit matrix gives bigger raises for higher ratings and for people lower in their band. The total must stay inside the budget.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>How a pay review budget works</h3>
          <p>In a <strong>pay review</strong>, leaders set a budget for raises. HR then shares it out by clear rules. Northbridge has three separate pots:</p>
          <ul class="lc-list">
            <li><strong>Merit budget:</strong> raises linked to performance. It is 3.5% of the base pay of the people in the review. For the sample: 3.5% x £825,000 = £28,875.</li>
            <li><strong>Equity fund:</strong> money to fix unfair gaps. The pay equity check found the Shift Supervisor gap. Raising NB14 and NB15 to £44,500 costs £11,500.</li>
            <li><strong>Promotions:</strong> raises for people who move up a level. These are planned and costed on their own.</li>
          </ul>
          <p>Keep the pots apart. If equity fixes come from the merit budget, everyone else gets less for a problem they did not cause.</p>
          <p>A <strong>merit matrix</strong> is a grid that sets the raise %. One side is the performance rating. The other side is the compa-ratio (salary ÷ band midpoint). A higher rating gives more. A lower compa-ratio also gives more, so good performers who are low in their band catch up faster.</p>
          <p>At Northbridge, base pay may not go above the band maximum. Any part of a raise above the maximum is paid as a <strong>lump sum</strong>: a one-off payment that is not added to base pay. New pay starts on 1 January 2027.</p>
        </div>
        <div class="lc-card">
          <h3>The budget maths in a spreadsheet</h3>
          <p>Tom puts the matrix on a sheet called <code>Matrix</code>, in cells B2:D6, with rating 5 in row 2 and rating 1 in row 6. On the staff sheet, D has the rating and E has the salary after any equity fix. F has the compa-ratio and L has the band maximum.</p>
          <pre><code>Matrix column (G2):  =IF(F2&lt;0.95,1,IF(F2&lt;=1.05,2,3))
        Merit % (H2):        =INDEX(Matrix!$B$2:$D$6,6-D2,G2)
        Merit £ (I2):        =E2*H2
        New base (J2):       =MIN(E2+I2,L2)
        Lump sum (K2):       =E2+I2-J2
        Total merit:         =SUM(I2:I21)           result: £28,405
        Left in budget:      =28875-SUM(I2:I21)     result: £470</code></pre>
          <p>Here are the results for the made-up sample. NB14 and NB15 start from £44,500 after their equity fix.</p>
          <table class="lc-table">
            <thead><tr><th>ID</th><th>Rating</th><th>Start salary</th><th>Compa-ratio</th><th>Merit %</th><th>Merit £</th><th>New base</th><th>Lump sum</th></tr></thead>
            <tbody>
              <tr><td>NB01</td><td>3</td><td>£29,500</td><td>0.983</td><td>3.5%</td><td>£1,032.50</td><td>£30,532.50</td><td>£0</td></tr>
              <tr><td>NB02</td><td>3</td><td>£28,000</td><td>0.933</td><td>4.5%</td><td>£1,260.00</td><td>£29,260.00</td><td>£0</td></tr>
              <tr><td>NB03</td><td>4</td><td>£31,500</td><td>1.050</td><td>4.5%</td><td>£1,417.50</td><td>£32,917.50</td><td>£0</td></tr>
              <tr><td>NB04</td><td>2</td><td>£27,500</td><td>0.917</td><td>2.0%</td><td>£550.00</td><td>£28,050.00</td><td>£0</td></tr>
              <tr><td>NB05</td><td>3</td><td>£30,500</td><td>1.017</td><td>3.5%</td><td>£1,067.50</td><td>£31,567.50</td><td>£0</td></tr>
              <tr><td>NB06</td><td>4</td><td>£29,000</td><td>0.967</td><td>4.5%</td><td>£1,305.00</td><td>£30,305.00</td><td>£0</td></tr>
              <tr><td>NB07</td><td>3</td><td>£36,000</td><td>1.029</td><td>3.5%</td><td>£1,260.00</td><td>£37,260.00</td><td>£0</td></tr>
              <tr><td>NB08</td><td>4</td><td>£37,500</td><td>1.071</td><td>3.5%</td><td>£1,312.50</td><td>£38,500.00 (max)</td><td>£312.50</td></tr>
              <tr><td>NB09</td><td>3</td><td>£35,000</td><td>1.000</td><td>3.5%</td><td>£1,225.00</td><td>£36,225.00</td><td>£0</td></tr>
              <tr><td>NB10</td><td>4</td><td>£33,500</td><td>0.957</td><td>4.5%</td><td>£1,507.50</td><td>£35,007.50</td><td>£0</td></tr>
              <tr><td>NB11</td><td>3</td><td>£31,000</td><td>0.886</td><td>4.5%</td><td>£1,395.00</td><td>£32,395.00</td><td>£0</td></tr>
              <tr><td>NB12</td><td>3</td><td>£44,500</td><td>1.060</td><td>2.5%</td><td>£1,112.50</td><td>£45,612.50</td><td>£0</td></tr>
              <tr><td>NB13</td><td>3</td><td>£45,500</td><td>1.083</td><td>2.5%</td><td>£1,137.50</td><td>£46,637.50</td><td>£0</td></tr>
              <tr><td>NB14</td><td>4</td><td>£44,500</td><td>1.060</td><td>3.5%</td><td>£1,557.50</td><td>£46,057.50</td><td>£0</td></tr>
              <tr><td>NB15</td><td>3</td><td>£44,500</td><td>1.060</td><td>2.5%</td><td>£1,112.50</td><td>£45,612.50</td><td>£0</td></tr>
              <tr><td>NB16</td><td>3</td><td>£56,000</td><td>1.077</td><td>2.5%</td><td>£1,400.00</td><td>£57,400.00</td><td>£0</td></tr>
              <tr><td>NB17</td><td>4</td><td>£52,000</td><td>1.000</td><td>4.5%</td><td>£2,340.00</td><td>£54,340.00</td><td>£0</td></tr>
              <tr><td>NB18</td><td>3</td><td>£60,500</td><td>1.163</td><td>2.5%</td><td>£1,512.50</td><td>£60,500.00 (above max)</td><td>£1,512.50</td></tr>
              <tr><td>NB19</td><td>4</td><td>£74,000</td><td>1.138</td><td>3.5%</td><td>£2,590.00</td><td>£76,590.00</td><td>£0</td></tr>
              <tr><td>NB20</td><td>3</td><td>£66,000</td><td>1.015</td><td>3.5%</td><td>£2,310.00</td><td>£68,310.00</td><td>£0</td></tr>
              <tr><td><strong>Total</strong></td><td></td><td></td><td></td><td></td><td><strong>£28,405.00</strong></td><td></td><td><strong>£1,825.00</strong></td></tr>
            </tbody>
          </table>
          <p>NB11 was £500 below the L2 minimum. The merit raise lifts her to £32,395, which is inside the band. NB18 was already above the L4 maximum, so all of his raise is a lump sum.</p>
        </div>
        <div class="lc-card">
          <h3>Fair decisions: check before you agree</h3>
          <p>A matrix makes raises consistent, but it is only as fair as its inputs. Before the review is agreed, Priya runs these checks:</p>
          <table class="lc-table">
            <thead><tr><th>Check</th><th>Result for the sample</th><th>What it tells Priya</th></tr></thead>
            <tbody>
              <tr><td>Average rating by gender</td><td>Women 3.3, men 3.3</td><td>No sign that ratings favour one group</td></tr>
              <tr><td>Average merit % by gender</td><td>Women 3.75%, men 3.20%</td><td>Women get more, because more of them sit low in their band</td></tr>
              <tr><td>Shift Supervisor gap after the review</td><td>Men £46,125, women £45,835 (0.6%)</td><td>The unfair gap is nearly closed. The small gap left comes from NB13, who started £1,000 higher and has the most years in role.</td></tr>
              <tr><td>Anyone below the band minimum</td><td>Nobody</td><td>NB11 is now inside the L2 band</td></tr>
            </tbody>
          </table>
          <p>Ratings come from people, so they can carry bias. Many companies hold a <strong>calibration</strong> meeting, where managers compare ratings across teams before pay is set. If a manager wants a raise outside the matrix, they must write down the reason, and HR must approve it.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Give everyone a fair raise. Budget is 3.5%.</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Use this merit matrix: [rows = rating, columns = compa-ratio
        below 0.95 / 0.95 to 1.05 / above 1.05]. For this made-up,
        anonymised table [ID, rating, salary, midpoint, band max],
        work out each merit %, merit £, new base (capped at band max)
        and lump sum. Give the total and compare it with a budget of
        [£ amount]. Show the sums for 2 rows. Give the spreadsheet
        formulas. Do not change any rating or matrix value.</code></pre>
        </div>
        <div class="lc-card">
          <h3>Activity: Tom checks an AI raise sheet</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Tom asks">Tom gives the approved AI tool the matrix and the 20 anonymised rows. He asks for each raise and the total.</li>
              <li data-kind="answer" data-label="AI replies">"Total merit is £28,090. NB03 gets 3.5% (£1,102.50). NB18 gets 2.5%, so his new base is £62,012.50."</li>
              <li data-kind="thought" data-label="Tom thinks">NB03's compa-ratio is exactly 1.050. The rule says 0.95 to 1.05 is the middle column, so it should be 4.5%. And NB18 is already above the L4 maximum.</li>
              <li data-kind="tool" data-label="Tom uses the sheet">He pastes his own formulas into the sheet. They use F2&lt;=1.05 for the middle column and MIN() for the band maximum.</li>
              <li data-kind="result" data-label="Sheet shows">NB03: 4.5%, £1,417.50. NB18: base stays £60,500, with a £1,512.50 lump sum. Total merit: £28,405.</li>
              <li data-kind="warn" data-label="The risk">The AI put a boundary case in the wrong column and broke the band rule. NB03 would have lost £315 a year.</li>
              <li data-kind="check" data-label="Tom and Priya act">They keep the sheet's figures, not the AI's. Priya checks NB03 and NB18 by hand before the review goes to the finance director.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to apply a merit matrix to a small made-up team and compare the cost with a budget. Then check two rows by hand.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a reward analyst. Use simple English. All data is made up.

        Merit matrix (rating, then % for compa-ratio below 0.95 / 0.95 to 1.05 / above 1.05):
        [5: 6.0 / 5.0 / 4.0
        4: 5.5 / 4.5 / 3.5
        3: 4.5 / 3.5 / 2.5
        2: 2.0 / 1.5 / 0
        1: 0 / 0 / 0]
        Rule: base pay cannot go above the band maximum. Pay any extra as a one-off lump sum.

        Team (ID, rating, salary, band midpoint, band maximum):
        [T1 4 £31,500 £30,000 £33,000
        T2 3 £28,000 £30,000 £33,000
        T3 2 £27,500 £30,000 £33,000
        T4 4 £37,500 £35,000 £38,500
        T5 3 £60,500 £52,000 £59,800]
        Budget: [3.5% of total salary].

        Please:
        1. Make a table: ID, Compa-ratio, Merit %, Merit £, New base, Lump sum.
        2. Show the full sums for T1 and T5.
        3. Give the total cost and the budget, and say if we are inside it.
        4. Give Excel or Google Sheets formulas for each column.
        5. List 3 fairness checks a person should run before the raises are agreed.</pre>
            <ul class="ai-try-checks">
              <li>T1 has a compa-ratio of exactly 1.05, so it uses the middle column (4.5%).</li>
              <li>T4's base stops at £38,500 and T5's raise is all lump sum.</li>
              <li>The total and the budget match your own sums.</li>
              <li>No rating or matrix value was changed.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A merit matrix turns a raise budget into clear, consistent rules. Keep merit, equity and promotion money in separate pots, and check boundary cases and band limits in your own sheet. Then check the results for fairness, because people, not the matrix, own the final decision.
        </div>
      HTML
      starter_code: nil
    },
    10 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-hr">HR & Recruitment</div>
          <h1 class="lc-title">Bonuses and Incentives</h1>
        </div>
        <p class="lc-lead">A bonus is pay that depends on results. A good bonus scheme has clear rules, so everyone can work out what they will get. In this lesson you will learn the common types of bonus and the rules every scheme needs. You will work out payouts with a payout curve and spreadsheet formulas, using the made-up Northbridge Logistics company bonus. You will also use AI to test the rules for gaps, and check the results for fairness.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 310" role="img" aria-label="Left: Northbridge's made-up payout curve. The x axis is company profit as a percentage of target, from 85 to 115 percent. Below 90 percent the payout is zero. At 90 percent it is 50 percent of target bonus, at 100 percent it is 100 percent, and at 110 percent or more it is capped at 150 percent. A dot marks 2026: 97 percent of target gives a payout of 85 percent. Right: three examples. NB09, 35,000 pounds times 3 percent times 85 percent equals 892.50 pounds. NB17, 52,000 pounds times 8 percent times 85 percent equals 3,536 pounds. NB19, 74,000 pounds times 12 percent times 85 percent equals 7,548 pounds.">
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <text x="20" y="24" font-weight="700" fill="#c4b5fd">Payout curve (made up)</text>
              <g stroke="#3a3a66" stroke-width="1">
                <line x1="70" y1="60" x2="470" y2="60"/>
                <line x1="70" y1="126.7" x2="470" y2="126.7"/>
                <line x1="70" y1="193.3" x2="470" y2="193.3"/>
              </g>
              <line x1="70" y1="260" x2="470" y2="260" stroke="#9b99b8" stroke-width="1"/>
              <line x1="70" y1="50" x2="70" y2="260" stroke="#9b99b8" stroke-width="1"/>
              <g font-size="11" fill="#9b99b8" text-anchor="end">
                <text x="62" y="264">0%</text>
                <text x="62" y="197.3">50%</text>
                <text x="62" y="130.7">100%</text>
                <text x="62" y="64">150%</text>
              </g>
              <g font-size="11" fill="#9b99b8" text-anchor="middle">
                <text x="70" y="278">85%</text>
                <text x="136.7" y="278">90%</text>
                <text x="270" y="278">100%</text>
                <text x="403.3" y="278">110%</text>
                <text x="470" y="278">115%</text>
              </g>
              <text x="270" y="298" font-size="12" fill="#9b99b8" text-anchor="middle">Company profit as % of target</text>
              <polyline points="70,260 136.7,260" fill="none" stroke="#ec4899" stroke-width="3"/>
              <line x1="136.7" y1="260" x2="136.7" y2="193.3" stroke="#ec4899" stroke-width="1.5" stroke-dasharray="4 3"/>
              <polyline points="136.7,193.3 270,126.7 403.3,60 470,60" fill="none" stroke="#10b981" stroke-width="3"/>
              <circle cx="230" cy="146.7" r="7" fill="#f59e0b"/>
              <text x="244" y="176" font-size="12" font-weight="700" fill="#fcd34d">2026: 97% of target</text>
              <text x="244" y="192" font-size="12" fill="#fcd34d">payout factor 85%</text>
              <text x="410" y="52" font-size="11" fill="#9b99b8" text-anchor="middle">cap</text>
              <text x="500" y="24" font-weight="700" fill="#c4b5fd">Bonus = salary x target x factor</text>
              <rect x="500" y="40" width="240" height="66" rx="8" fill="#27274e" stroke="#22d3ee"/>
              <text x="514" y="62" font-weight="700">NB09 (L2, target 3%)</text>
              <text x="514" y="88" font-size="12">£35,000 x 3% x 85% = £892.50</text>
              <rect x="500" y="116" width="240" height="66" rx="8" fill="#27274e" stroke="#8b5cf6"/>
              <text x="514" y="138" font-weight="700">NB17 (L4, target 8%)</text>
              <text x="514" y="164" font-size="12">£52,000 x 8% x 85% = £3,536</text>
              <rect x="500" y="192" width="240" height="66" rx="8" fill="#27274e" stroke="#ec4899"/>
              <text x="514" y="214" font-weight="700">NB19 (L5, target 12%)</text>
              <text x="514" y="240" font-size="12">£74,000 x 12% x 85% = £7,548</text>
            </g>
          </svg>
          <figcaption>The payout curve turns company results into a payout factor. In the made-up 2026 bonus year, profit was 97% of target, so everyone gets 85% of their target bonus.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Types of bonus and the rules they need</h3>
          <table class="lc-table">
            <thead><tr><th>Type</th><th>What it pays for</th><th>Example (made up)</th></tr></thead>
            <tbody>
              <tr><td>Company bonus</td><td>Results of the whole company</td><td>Northbridge pays a % of base pay if profit hits target</td></tr>
              <tr><td>Team bonus</td><td>Results of a team or site</td><td>The Manchester site hits its on-time delivery goal</td></tr>
              <tr><td>Individual bonus</td><td>A person's own goals or rating</td><td>A manager's bonus depends partly on their rating</td></tr>
              <tr><td>Sales commission</td><td>A share of each sale</td><td>A Brightside Software salesperson in New York earns a % of new contracts</td></tr>
              <tr><td>Spot award</td><td>One great piece of work</td><td>A £200 award for fixing a safety problem</td></tr>
            </tbody>
          </table>
          <p>Every scheme needs written rules that answer these questions:</p>
          <ul class="lc-list">
            <li><strong>Who</strong> can join, and what happens to joiners, leavers and people on leave?</li>
            <li><strong>What</strong> is measured, who confirms the result, and what is the target?</li>
            <li><strong>How much:</strong> the target bonus %, the payout curve and the cap (the most it can pay).</li>
            <li><strong>When</strong> is it paid, and on which salary is it based?</li>
            <li><strong>Discretion:</strong> can leaders change the payout, and how will they explain it?</li>
          </ul>
          <p>The wording matters in law. In the UK, a bonus can be contractual (the person has a right to it) or discretionary (the company decides). Even discretion must be used fairly. In the US, a bonus paid under set, announced rules is usually "nondiscretionary". Under the FLSA, it must then be included in the regular rate used for overtime pay of non-exempt staff. Ask an employment lawyer or payroll specialist to check your scheme. This is not legal advice.</p>
        </div>
        <div class="lc-card">
          <h3>Payout maths: the Northbridge company bonus</h3>
          <p>Here are the made-up rules. The bonus year is 1 January to 31 December 2026. The bonus is paid in the March 2027 payroll. It is based on base salary on 31 December 2026, before the January raises.</p>
          <ul class="lc-list">
            <li><strong>Target bonus:</strong> 3% of base pay for L1 to L3, 8% for L4 and 12% for L5.</li>
            <li><strong>Measure:</strong> operating profit (profit from normal business). The target is £4.0 million. The 2026 result is £3.88 million, which is 97% of target.</li>
            <li><strong>Payout curve:</strong> below 90% of target pays nothing. 90% pays 50% of target bonus, 100% pays 100%, and 110% or more pays 150% (the cap). Between these points, the payout rises in a straight line.</li>
          </ul>
          <p>In a sheet, put actual ÷ target in B1. The payout factor goes in B2. Each person's row has the salary in E and the target % in F:</p>
          <pre><code>Profit vs target (B1):  =3.88/4.0                        result: 97%
        Payout factor (B2):     =IF(B1&lt;0.9,0,MIN(1.5,IF(B1&lt;1,0.5+(B1-0.9)*5,1+(B1-1)*5)))
                                                                 result: 85%
        Bonus (G2):             =ROUND(E2*F2*$B$2,2)</code></pre>
          <p>Check the factor by hand. 97% is 7 points above 90%. Each point adds 5%, so 50% + 35% = 85%. For the 20-person sample, the target bonuses add up to £45,775. The payout is £45,775 x 85% = £38,908.75.</p>
          <p><strong>Joiners:</strong> Northbridge pays a pro rata bonus (a share based on time worked) by full months. A made-up new Van Driver joined on 1 July 2026 on £28,000. The bonus is £28,000 x 3% x 85% x 6/12 = £357.00.</p>
          <p>Before payroll pays anything, a person checks the profit figure with the finance director. Grace, the payroll specialist, then checks a sample of payouts by hand.</p>
        </div>
        <div class="lc-card">
          <h3>Use AI to test the rules, and check fairness</h3>
          <p>AI is useful for finding gaps in scheme rules. Ask it to play the role of a confused employee, or to list edge cases (unusual situations the rules may not cover).</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Write a bonus scheme for our warehouse staff.</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Here are our made-up bonus rules: [paste rules]. 1. List 8 edge
        cases the rules do not answer clearly, such as joiners, leavers,
        long-term sick leave, parental leave and a change of level.
        2. For each, say why it matters. 3. Work out the bonus for these
        test cases and show the sums: [profit 89.9%, 90%, 97%, 112%].
        Do not suggest legal rules. Mark items for an employment lawyer.</code></pre>
          <p>Then check the results for fairness. In the sample, the mean bonus gap between men and women is 22.9%, and the median gap is 16.5%. The bonus gap is larger than the pay gap because L4 and L5 have bigger targets, and more men are in those levels. A % of base pay also copies any unfair base pay gap into the bonus. This bonus is paid in March 2027, so it will count in the bonus figures of the next gender pay gap report.</p>
          <p>Rules for people on leave need special care. For example, how a bonus treats maternity leave or long-term sick leave can raise equality law questions. Get specialist advice before you set these rules.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: clear rule or needs fixing?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each made-up bonus rule. Is it clear enough for an employee to work out their bonus, or does it need fixing?</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="clear" data-label="Clear rule"></div>
              <div data-sorter-target="bucket" data-bucket="fix" data-label="Needs fixing"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="clear" data-why="It names the salary, the date, the target % and the factor. Anyone can do the sum.">The bonus is your target % times your base salary on 31 December 2026, times the payout factor.</li>
              <li data-bucket="clear" data-why="It sets the most the scheme can pay, so the cost is known.">The payout factor cannot go above 150%.</li>
              <li data-bucket="clear" data-why="It gives a clear way to work out the share for part of a year.">Joiners get a pro rata bonus for each full month worked in the bonus year.</li>
              <li data-bucket="clear" data-why="It says who confirms the result, so nobody argues about the number.">The profit figure is the one signed off by the finance director.</li>
              <li data-bucket="fix" data-why="There is no measure and no target. Nobody can work out what they will get.">A bonus is paid if the company has a good year.</li>
              <li data-bucket="fix" data-why="No criteria and no limit. This can lead to unfair or biased payouts. Add criteria, a cap and a written reason.">Managers may give extra bonus to anyone who did well.</li>
              <li data-bucket="fix" data-why="A missing rule for leave causes unfair results and legal risk. Write a rule with an employment lawyer.">Bonus for staff on long-term leave: to be decided each year.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to turn bonus rules into a plain-English summary and a test table. Then check the payout factors yourself.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a reward adviser. Use simple English for staff who may not be native English speakers. This is not legal advice. All details are made up.

        Company: [Northbridge Logistics, a made-up UK warehouse and delivery company]. Currency: [£].
        Bonus rules:
        - Bonus year: [1 January to 31 December 2026], paid in [March 2027].
        - Target bonus: [3% of base salary for L1 to L3, 8% for L4, 12% for L5].
        - Measure: [operating profit; target £4.0 million].
        - Payout curve: [below 90% of target = 0; 90% = 50%; 100% = 100%; 110% or more = 150% cap; straight line in between].
        - Joiners: [pro rata by full months worked].

        Please:
        1. Write a 6-sentence summary for employees.
        2. Make a table of the payout factor at [85%, 90%, 95%, 97%, 100%, 105%, 110%, 120%] of target. Show the sum for 95% and 105%.
        3. Work out the bonus for: [an L2 driver on £35,000 at 97%; an L4 manager on £52,000 at 97%; an L1 joiner from 1 July on £28,000 at 97%].
        4. List 5 questions the rules do not answer. Mark any for an employment lawyer.</pre>
            <ul class="ai-try-checks">
              <li>The factor is 75% at 95% of target and 125% at 105%.</li>
              <li>At 97% the bonuses are £892.50, £3,536 and £357.00.</li>
              <li>The factor at 120% stays at the 150% cap, and 85% pays nothing.</li>
              <li>The open questions include leave and leavers.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A good bonus scheme lets every employee do the sum themselves: salary, target %, payout factor, cap and timing. Use AI to explain the rules and find edge cases. Check every payout in a spreadsheet, check the results for fairness, and get expert advice on the legal wording.
        </div>
      HTML
      starter_code: nil
    },
    11 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-hr">HR & Recruitment</div>
          <h1 class="lc-title">Explaining Pay and Benefits</h1>
        </div>
        <p class="lc-lead">Pay only feels fair when people understand it. In this lesson you will learn to explain pay and benefits in plain words. You will build a total reward statement: a yearly summary of everything a person gets for their work. You will also draft a clear pay rise letter with AI, and check it before it goes out. You will follow Priya Shah at Northbridge Logistics as she prepares the letters for the 2026 pay review.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 360" role="img" aria-label="Left: a made-up total reward statement for employee NB09, an HGV Driver at level L2. Cash pay: base salary 35,000 pounds, night shift allowance 1,500, overtime last year 2,200, bonus at target 1,050. Total cash pay 39,750. Benefits: employer pension 1,750 and life assurance 150. Total yearly value 41,650 pounds, plus holiday and a helpline. Right: a clear pay letter in four parts: what is changing, the numbers, when it starts, and who to ask.">
            <defs><marker id="cp11a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <rect x="20" y="20" width="380" height="326" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="36" y="46" font-weight="700" fill="#c4b5fd">Your total reward 2026</text>
              <text x="384" y="46" font-size="11" fill="#9b99b8" text-anchor="end">Made up</text>
              <text x="36" y="66" font-size="11" fill="#9b99b8">NB09 · HGV Driver · Level L2 · Northbridge Logistics</text>
              <text x="36" y="92" font-weight="700" fill="#6ee7b7">Cash pay</text>
              <text x="36" y="114">Base salary</text>
              <text x="384" y="114" text-anchor="end">£35,000</text>
              <text x="36" y="136">Night shift allowance</text>
              <text x="384" y="136" text-anchor="end">£1,500</text>
              <text x="36" y="158">Overtime (last year, varies)</text>
              <text x="384" y="158" text-anchor="end">£2,200</text>
              <text x="36" y="180">Bonus at target (not guaranteed)</text>
              <text x="384" y="180" text-anchor="end">£1,050</text>
              <line x1="36" y1="190" x2="384" y2="190" stroke="#3a3a66"/>
              <text x="36" y="208" font-weight="700">Total cash pay</text>
              <text x="384" y="208" font-weight="700" text-anchor="end">£39,750</text>
              <text x="36" y="234" font-weight="700" fill="#c4b5fd">Benefits</text>
              <text x="36" y="256">Employer pension (5% of base)</text>
              <text x="384" y="256" text-anchor="end">£1,750</text>
              <text x="36" y="278">Life assurance (cost to us)</text>
              <text x="384" y="278" text-anchor="end">£150</text>
              <line x1="36" y1="288" x2="384" y2="288" stroke="#3a3a66"/>
              <text x="36" y="308" font-weight="700" fill="#fcd34d">Total yearly value</text>
              <text x="384" y="308" font-weight="700" fill="#fcd34d" text-anchor="end">£41,650</text>
              <text x="36" y="332" font-size="11" fill="#9b99b8">Also: 25 days' holiday + 8 bank holidays, staff helpline</text>
              <text x="585" y="46" font-weight="700" fill="#c4b5fd" text-anchor="middle">A clear pay letter in 4 parts</text>
              <rect x="430" y="62" width="310" height="54" rx="8" fill="#27274e" stroke="#3b82f6"/>
              <text x="446" y="84" font-weight="700">1. What is changing</text>
              <text x="446" y="104" font-size="12" fill="#9b99b8">Your salary goes up by 3.5%</text>
              <rect x="430" y="132" width="310" height="54" rx="8" fill="#27274e" stroke="#22d3ee"/>
              <text x="446" y="154" font-weight="700">2. The numbers</text>
              <text x="446" y="174" font-size="12" fill="#9b99b8">£35,000 to £36,225 a year</text>
              <rect x="430" y="202" width="310" height="54" rx="8" fill="#27274e" stroke="#10b981"/>
              <text x="446" y="224" font-weight="700">3. When it starts</text>
              <text x="446" y="244" font-size="12" fill="#9b99b8">From 1 January 2027</text>
              <rect x="430" y="272" width="310" height="54" rx="8" fill="#27274e" stroke="#f59e0b"/>
              <text x="446" y="294" font-weight="700">4. Who to ask</text>
              <text x="446" y="314" font-size="12" fill="#9b99b8">Your manager or the HR team</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#cp11a)">
                <line x1="585" y1="117" x2="585" y2="129"/>
                <line x1="585" y1="187" x2="585" y2="199"/>
                <line x1="585" y1="257" x2="585" y2="269"/>
              </g>
            </g>
          </svg>
          <figcaption>A total reward statement shows the full value of a job. A clear pay letter answers four questions in plain words.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Plain words for pay</h3>
          <p>Many pay letters use HR words that staff do not know. Many readers are not native English speakers. Write for them, and follow these rules:</p>
          <ul class="lc-list">
            <li>Use one idea per sentence, with 8 to 15 words.</li>
            <li>Give every number with its currency and period, for example "£36,225 a year" or "£696.63 a week".</li>
            <li>Say the date a change starts.</li>
            <li>Say what the person must do, if anything.</li>
            <li>Explain any HR word, or do not use it.</li>
          </ul>
          <table class="lc-table">
            <thead><tr><th>HR word</th><th>Plain words</th></tr></thead>
            <tbody>
              <tr><td>Remuneration</td><td>Pay</td></tr>
              <tr><td>Merit increase, uplift</td><td>Pay rise</td></tr>
              <tr><td>Effective date</td><td>The date the change starts</td></tr>
              <tr><td>Paid in arrears</td><td>Paid later, after the work is done</td></tr>
              <tr><td>Gross pay</td><td>Pay before tax and other deductions</td></tr>
              <tr><td>Pensionable pay</td><td>The pay we use to work out your pension</td></tr>
              <tr><td>Compa-ratio</td><td>How your pay compares with the middle of your pay range</td></tr>
              <tr><td>Bonus at target</td><td>The bonus paid if the targets are met exactly</td></tr>
            </tbody>
          </table>
          <p>Keep any legal term that your contract or policy needs. Explain it in plain words next to the term.</p>
        </div>
        <div class="lc-card">
          <h3>Total reward statements</h3>
          <p>A <strong>total reward statement</strong> is a yearly document for each employee. It shows the value of their pay and benefits in one place. Many people do not know what their pension or insurance is worth. The statement shows them. The diagram above shows NB09's statement. Cash pay is £39,750 and benefits are £1,900, so the total is £41,650.</p>
          <p>Rules for a good statement:</p>
          <ul class="lc-list">
            <li>Take every number from payroll and the HRIS (HR information system), not from AI.</li>
            <li>Mark values that change, such as overtime. Say clearly that a bonus is not guaranteed.</li>
            <li>Use one date for all figures, for example "figures at 31 October 2026".</li>
            <li>Add time off and other benefits in words, even if they have no price.</li>
            <li>Check a sample by hand before you send them all. For example, check 1 in 10 statements and every unusual case.</li>
          </ul>
          <p>AI can draft the wording and the layout once. A mail merge (a tool that fills one template with data for each person) then makes each statement. Do not paste the whole staff list into an AI tool.</p>
        </div>
        <div class="lc-card">
          <h3>Pay rise letters with AI</h3>
          <p>After the pay review, each person gets a letter. Priya uses AI to draft one template. She tests it with the made-up details of NB09, who gets a 3.5% merit rise.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Write a pay rise letter for a driver.</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>You are an HR adviser at a UK logistics company. Draft a short pay
        rise letter template in simple English (sentences of 8 to 15 words).
        Use these made-up details as placeholders: {First name},
        {Role: HGV Driver}, {Old salary: £35,000}, {New salary: £36,225},
        {Rise: 3.5%}, {Start date: 1 January 2027}, {New weekly pay before
        tax: £696.63}. Cover what is changing, the numbers, when it starts
        and who to ask. Do not explain other people's pay. Do not promise
        future rises or bonuses. Do not mention tax amounts.</code></pre>
          <p>Here is a draft the AI might give:</p>
          <pre><code>Dear {First name},
        Your pay is going up after this year's pay review.
        Your salary will rise by 3.5%, from £35,000 to £36,225 a year.
        The new salary starts on 1 January 2027.
        Your weekly pay before tax will go from £673.08 to £696.63.
        Your pension is a % of base pay, so it will go up too.
        The 2026 bonus, paid in March 2027, still uses your 2026 salary.
        If you have questions, please talk to your manager or the HR team.</code></pre>
          <p>Priya then checks the draft:</p>
          <ul class="lc-list">
            <li>Every amount matches the approved pay review list: £35,000 x 1.035 = £36,225.</li>
            <li>The weekly figure is right: £36,225 ÷ 52 = £696.63.</li>
            <li>The start date matches the payroll calendar.</li>
            <li>Nothing promises a future rise or a bonus.</li>
            <li>The letter does not compare the person with colleagues.</li>
          </ul>
          <p>A real letter must follow your contract terms and pay policy. This is not legal advice, so check with an HR adviser where needed.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: send it or rewrite it?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">These sentences come from AI drafts of Northbridge pay letters. Sort each one.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="ok" data-label="Clear and safe to send"></div>
              <div data-sorter-target="bucket" data-bucket="fix" data-label="Rewrite it"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="ok" data-why="It gives the amount, the period and the start date in one short sentence.">Your new salary is £36,225 a year from 1 January 2027.</li>
              <li data-bucket="fix" data-why="Remuneration, uplift and merit matrix are HR words. Say: your pay will go up by 3.5%.">Your remuneration has been uplifted in line with the merit matrix outcome.</li>
              <li data-bucket="ok" data-why="It explains the bonus and says clearly that it depends on targets.">Your bonus at target is 3% of base pay. It is paid only if company targets are met.</li>
              <li data-bucket="fix" data-why="A bonus is not guaranteed. This sentence makes a promise the company may not keep.">You will get a bonus of £1,050 next year.</li>
              <li data-bucket="fix" data-why="Pay is private. A letter must never compare the person with named or unnamed colleagues.">Your rise is higher than most drivers in your team.</li>
              <li data-bucket="ok" data-why="It tells the person what to do and who to contact.">If you have questions, talk to your manager or email the HR team.</li>
              <li data-bucket="fix" data-why="In arrears and payroll calendar are HR words. Say: overtime is paid one week after you work it.">Overtime is paid in arrears per the payroll calendar.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to build a total reward statement and a short cover note for a made-up employee. Then check the sums and the words yourself.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a reward (pay and benefits) adviser. Write for staff who may not be native English speakers. Use sentences of 8 to 15 words. All details are made up.

        Company: [Northbridge Logistics, a UK warehouse and delivery company]. Currency: [£].
        Employee: [ID NB09, HGV Driver, level L2]. Figures at [31 October 2026].
        Cash pay: [base salary 35,000; night shift allowance 1,500; overtime last year 2,200; bonus at target 3% of base].
        Benefits: [employer pension 5% of base; life assurance 2 x salary, cost 150 a year].
        Other: [25 days' holiday plus 8 bank holidays; a staff helpline].

        Please:
        1. Make a total reward statement table: Item, What it is (one plain sentence), Yearly value, Can it change? (yes or no).
        2. Show a subtotal for cash pay, a subtotal for benefits and a grand total. Show your sums.
        3. Write a 5-sentence cover note to the employee.
        4. Say clearly that the bonus is not guaranteed.
        5. List any HR word you used, with its plain meaning.

        Do not invent extra benefits, tax amounts or legal rules.</pre>
            <ul class="ai-try-checks">
              <li>With the example figures, cash pay is £39,750, benefits are £1,900 and the total is £41,650.</li>
              <li>Overtime and bonus are marked as values that can change.</li>
              <li>The note says the bonus is not guaranteed.</li>
              <li>No extra benefits, tax amounts or legal rules were added.</li>
              <li>The words are plain enough for a new starter to understand.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A pay letter answers four questions: what changes, by how much, from when, and who to ask. A total reward statement shows the full value of a job. AI can draft clear words fast, but every number must come from payroll and be checked by a person.
        </div>
      HTML
      starter_code: nil
    },
    12 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-hr">HR & Recruitment</div>
          <h1 class="lc-title">Payroll Basics</h1>
        </div>
        <p class="lc-lead">Payroll turns pay decisions into money in people's bank accounts. In this lesson you will learn how gross pay becomes net pay, in general words. You will learn how a payroll calendar works and why bank holidays matter. You will also learn the most common payroll errors and how to prevent them. This is general education, not tax advice. Payroll specialists and payroll software do the real calculations.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="Top: gross to net for one made-up week for employee NB09. Gross pay 802.89 pounds, minus employee pension 33.65, minus Income Tax of about 105, minus National Insurance of about 45, gives net pay of about 619 pounds. Bottom: weekly pay days in December 2026. Friday 4, 11 and 18 December are normal. Christmas Day and New Year's Day are bank holidays, so pay moves to Thursday 24 December and Thursday 31 December, with Bacs files sent on Tuesday 22 and Tuesday 29 December.">
            <defs><marker id="cp12a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <text x="380" y="22" font-weight="700" fill="#c4b5fd" text-anchor="middle">Gross to net: NB09, one made-up week (tax and NI are approximate)</text>
              <g text-anchor="middle">
                <rect x="20" y="38" width="120" height="58" rx="8" fill="#27274e" stroke="#10b981"/>
                <text x="80" y="61" font-weight="700">Gross pay</text>
                <text x="80" y="83">£802.89</text>
                <rect x="170" y="38" width="120" height="58" rx="8" fill="#27274e" stroke="#8b5cf6"/>
                <text x="230" y="61" font-weight="700">Pension (5%)</text>
                <text x="230" y="83">−£33.65</text>
                <rect x="320" y="38" width="120" height="58" rx="8" fill="#27274e" stroke="#ec4899"/>
                <text x="380" y="61" font-weight="700">Income Tax</text>
                <text x="380" y="83">about −£105</text>
                <rect x="470" y="38" width="120" height="58" rx="8" fill="#27274e" stroke="#ec4899"/>
                <text x="530" y="61" font-weight="700">Nat. Insurance</text>
                <text x="530" y="83">about −£45</text>
                <rect x="620" y="38" width="120" height="58" rx="8" fill="#1f1f44" stroke="#22d3ee" stroke-width="2"/>
                <text x="680" y="61" font-weight="700">Net pay</text>
                <text x="680" y="83">about £619</text>
                <text x="380" y="120" font-size="11" fill="#9b99b8">Gross = basic £673.08 + night allowance £28.85 + 4 hours of overtime £100.96</text>
              </g>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#cp12a)">
                <line x1="141" y1="67" x2="167" y2="67"/>
                <line x1="291" y1="67" x2="317" y2="67"/>
                <line x1="441" y1="67" x2="467" y2="67"/>
                <line x1="591" y1="67" x2="617" y2="67"/>
              </g>
              <text x="380" y="164" font-weight="700" fill="#c4b5fd" text-anchor="middle">Weekly pay days, December 2026 (L1 and L2 staff)</text>
              <line x1="40" y1="214" x2="720" y2="214" stroke="#3a3a66" stroke-width="2"/>
              <g text-anchor="middle">
                <text x="60" y="196">Fri 4 Dec</text>
                <circle cx="60" cy="214" r="7" fill="#10b981"/>
                <text x="60" y="240" font-size="11" fill="#9b99b8">normal</text>
                <text x="220" y="196">Fri 11 Dec</text>
                <circle cx="220" cy="214" r="7" fill="#10b981"/>
                <text x="220" y="240" font-size="11" fill="#9b99b8">normal</text>
                <text x="380" y="196">Fri 18 Dec</text>
                <circle cx="380" cy="214" r="7" fill="#10b981"/>
                <text x="380" y="240" font-size="11" fill="#9b99b8">normal</text>
                <text x="540" y="196" fill="#fcd34d">Thu 24 Dec</text>
                <circle cx="540" cy="214" r="7" fill="#f59e0b"/>
                <text x="540" y="240" font-size="11" fill="#9b99b8">25 Dec is a</text>
                <text x="540" y="256" font-size="11" fill="#9b99b8">bank holiday</text>
                <text x="540" y="276" font-size="11" fill="#fcd34d">Bacs sent Tue 22 Dec</text>
                <text x="690" y="196" fill="#fcd34d">Thu 31 Dec</text>
                <circle cx="690" cy="214" r="7" fill="#f59e0b"/>
                <text x="690" y="240" font-size="11" fill="#9b99b8">1 Jan is a</text>
                <text x="690" y="256" font-size="11" fill="#9b99b8">bank holiday</text>
                <text x="690" y="276" font-size="11" fill="#fcd34d">Bacs sent Tue 29 Dec</text>
              </g>
            </g>
          </svg>
          <figcaption>Deductions turn gross pay into net pay. Bank holidays move pay days, so the payroll calendar must be planned early.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>From gross pay to net pay</h3>
          <p><strong>Gross pay</strong> is pay before deductions. <strong>Net pay</strong> is what reaches the bank account. <strong>Deductions</strong> are amounts taken off gross pay. The main types are similar in the UK and the US, but the details are very different.</p>
          <table class="lc-table">
            <thead><tr><th>Type</th><th>UK (Northbridge)</th><th>US (Brightside Software, New York)</th></tr></thead>
            <tbody>
              <tr><td>Income tax</td><td>Income Tax through PAYE (Pay As You Earn: the employer takes tax from pay and sends it to HMRC). HMRC's tax code sets the amount.</td><td>Federal income tax. The employee's Form W-4 sets how much is withheld (taken from pay).</td></tr>
              <tr><td>Social security</td><td>National Insurance contributions</td><td>Social Security and Medicare taxes, together called FICA</td></tr>
              <tr><td>Local rules</td><td>Scotland has its own Income Tax rates</td><td>New York State income tax, plus New York City income tax for city residents</td></tr>
              <tr><td>Pension</td><td>Workplace pension contributions</td><td>401(k) contributions (a retirement savings plan), if the employee joins</td></tr>
              <tr><td>Other</td><td>Student loan repayments, court orders</td><td>Health insurance, New York disability and Paid Family Leave contributions</td></tr>
            </tbody>
          </table>
          <p>Rates and thresholds change, often each tax year. The UK tax year starts on 6 April. Always use payroll software and the official guidance, such as GOV.UK or the IRS.</p>
        </div>
        <div class="lc-card">
          <h3>A worked example: one week for NB09</h3>
          <p>Here is one made-up week for NB09, the HGV driver. Northbridge pays L1 and L2 staff weekly, on Fridays. The pay week runs from Saturday to Friday. Overtime is paid one week after it is worked.</p>
          <table class="lc-table">
            <thead><tr><th>Line</th><th>How it is worked out</th><th>Amount</th></tr></thead>
            <tbody>
              <tr><td>Basic pay</td><td>£35,000 ÷ 52</td><td>£673.08</td></tr>
              <tr><td>Night shift allowance</td><td>£1,500 ÷ 52</td><td>£28.85</td></tr>
              <tr><td>Overtime (4 hours last week)</td><td>£35,000 ÷ 2,080 hours x 1.5 = £25.24 an hour, x 4</td><td>£100.96</td></tr>
              <tr><td><strong>Gross pay</strong></td><td>The three lines added up</td><td><strong>£802.89</strong></td></tr>
              <tr><td>Employee pension</td><td>5% of basic pay (made-up scheme)</td><td>−£33.65</td></tr>
              <tr><td>Income Tax (PAYE)</td><td>Payroll software, from the tax code</td><td>about −£105</td></tr>
              <tr><td>National Insurance</td><td>Payroll software</td><td>about −£45</td></tr>
              <tr><td><strong>Net pay</strong></td><td>Gross pay minus deductions</td><td><strong>about £619</strong></td></tr>
            </tbody>
          </table>
          <p>The tax and NI figures are rough. They assume the common tax code 1257L and the 2026 to 2027 rates for England. In this made-up scheme, the pension is taken before tax. So tax is worked out on £769.24, but National Insurance uses the full £802.89. Real amounts also depend on pay so far in the tax year.</p>
          <p>In the UK, employers must give a payslip on or before pay day. It shows pay before and after deductions, and each deduction. If pay depends on hours worked, it must show the hours too. In New York, employers must give a wage statement with every payment. For non-exempt staff, it also shows hours, rates and overtime.</p>
        </div>
        <div class="lc-card">
          <h3>The payroll calendar</h3>
          <p>A <strong>payroll calendar</strong> lists the key dates for every pay run. A <strong>pay run</strong> is one round of payroll: collect changes, calculate, check, pay and report. Here is Northbridge's weekly pattern (made up):</p>
          <table class="lc-table">
            <thead><tr><th>Day</th><th>Step</th></tr></thead>
            <tbody>
              <tr><td>Monday 12:00</td><td>Timesheets and overtime close (the cut-off)</td></tr>
              <tr><td>Tuesday</td><td>Grace runs payroll and the error checks</td></tr>
              <tr><td>Wednesday</td><td>Priya approves, and Grace sends the Bacs payment file</td></tr>
              <tr><td>Thursday</td><td>Bacs processes the payments</td></tr>
              <tr><td>Friday</td><td>Pay day: money arrives and payslips are ready</td></tr>
            </tbody>
          </table>
          <p><strong>Bacs</strong> is a UK bank payment system. Bacs uses a 3-day cycle. The file is sent on day 1, the banks process it on day 2, and the money arrives on day 3. The employer also sends HMRC a <strong>Full Payment Submission</strong> (FPS) on or before pay day. An FPS reports each person's pay and deductions.</p>
          <p>Bank holidays move the dates. In England, 25 December 2026, 28 December 2026 and 1 January 2027 are bank holidays. So Northbridge pays early, on Thursday 24 and Thursday 31 December. Grace sends those Bacs files on Tuesday 22 and Tuesday 29 December. The timesheet cut-offs move earlier too. Grace checks HMRC's current guidance on which pay date to report.</p>
          <p>New pay rates start on 1 January 2027. The pay week that ends on Friday 1 January has one day at the new rate. Grace agrees in advance how payroll will handle it.</p>
        </div>
        <div class="lc-card">
          <h3>Common payroll errors</h3>
          <table class="lc-table">
            <thead><tr><th>Error</th><th>Example (made up)</th><th>How to prevent it</th></tr></thead>
            <tbody>
              <tr><td>Keying error</td><td>40 overtime hours typed instead of 4</td><td>Variance checks before approval</td></tr>
              <tr><td>Missed pay change</td><td>New salaries from 1 January not loaded</td><td>A change list signed off by HR</td></tr>
              <tr><td>Starters and leavers</td><td>A leaver still paid, or a starter missed</td><td>Match HRIS and payroll lists every pay run</td></tr>
              <tr><td>Wrong tax code</td><td>An old code still used</td><td>Always use the latest code HMRC sends</td></tr>
              <tr><td>Below the minimum wage</td><td>Unpaid extra time pushes the hourly rate too low</td><td>A minimum wage check for each pay period</td></tr>
              <tr><td>Wrong pay date</td><td>A bank holiday not planned</td><td>A full calendar agreed months ahead</td></tr>
            </tbody>
          </table>
          <p>AI can explain payslip lines in plain words, draft a payroll calendar and list checks. It must not calculate real tax or National Insurance. Never paste real payslips or NI numbers into a public AI tool.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Work out the tax for my employee who earns £802.89 this week.</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Explain in simple English each line of a UK weekly payslip: basic
        pay, allowance, overtime, pension, Income Tax, National Insurance
        and net pay. Say which lines payroll software calculates and which
        come from HR data. Do not give tax rates or amounts. Mark anything
        that depends on the tax code.</code></pre>
        </div>
        <div class="lc-card">
          <h3>Activity: one weekly pay run</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put the steps of a normal Northbridge weekly pay run in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">HR sends payroll the new starters, leavers and pay changes.</li>
              <li data-order="2">Timesheets and overtime close on Monday at 12:00.</li>
              <li data-order="3">Grace runs payroll and the variance checks on Tuesday.</li>
              <li data-order="4">Grace fixes any errors, and Priya approves the pay run.</li>
              <li data-order="5">Grace sends the Bacs file on Wednesday.</li>
              <li data-order="6">Staff get their pay and payslips on Friday, and the FPS reaches HMRC on or before pay day.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to draft a payroll calendar for three months, with bank holidays. Then check every date yourself.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a UK payroll assistant. Use simple English. This is not tax advice.

        Company: [Northbridge Logistics, a made-up warehouse and delivery company in England].
        Pay groups: [weekly staff paid on Fridays; monthly staff paid on the last working day of the month].
        Payment method: [Bacs. Send the file 2 working days before pay day: day 1 send, day 2 processing, day 3 money arrives].
        Timesheet cut-off: [Monday 12:00 before each weekly pay day].
        Period: [November 2026 to January 2027].

        Please:
        1. Make a table of every pay day in the period with these columns: Pay group, Normal pay day, Actual pay day, Send Bacs file by, Timesheet cut-off.
        2. If a pay day falls on a weekend or a bank holiday in England, move it to the working day before. Say why.
        3. List every bank holiday you used, so I can check it on GOV.UK.
        4. List 3 risks around these dates, with one check for each.

        Do not give tax rates or legal rules.</pre>
            <ul class="ai-try-checks">
              <li>The bank holidays match GOV.UK: 25 and 28 December 2026 and 1 January 2027.</li>
              <li>Each Bacs file is sent 2 working days before pay day, skipping weekends and bank holidays.</li>
              <li>The last working days are right: Monday 30 November, Thursday 31 December and Friday 29 January.</li>
              <li>No tax rates or legal rules were added.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Payroll is a fixed routine with hard deadlines. Know the deductions in general words, plan the calendar months ahead and check for common errors on every run. AI can explain and plan, but payroll software and a payroll specialist do the real tax sums.
        </div>
      HTML
      starter_code: nil
    },
    13 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-hr">HR & Recruitment</div>
          <h1 class="lc-title">Answering Payroll Questions</h1>
        </div>
        <p class="lc-lead">After a pay review or a payroll change, staff ask many questions. Good answers build trust. Wrong answers cause money problems and complaints. In this lesson you will build a library of approved answers. You will use AI to draft replies only from those answers. You will also learn when to pass a question to a payroll specialist or to HR. You will follow Tom Reed, an HR adviser at Northbridge Logistics, in December 2026.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 330" role="img" aria-label="A triage flow for payroll questions. An employee question goes to a check: does an approved answer fit? If yes, AI drafts a reply from the approved text and Tom checks and sends it. If no, questions about pay amounts, tax codes or missing pay go to Grace in payroll. Questions about pay decisions, fairness or complaints go to Priya, the HR manager. A note says: never guess, never promise money, never share another person's pay.">
            <defs><marker id="cp13a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <rect x="20" y="132" width="130" height="50" rx="8" fill="#27274e" stroke="#8b5cf6"/>
              <text x="85" y="153" text-anchor="middle" font-weight="700">Employee</text>
              <text x="85" y="171" text-anchor="middle">question</text>
              <rect x="180" y="127" width="180" height="60" rx="8" fill="#1f1f44" stroke="#f59e0b" stroke-width="2"/>
              <text x="270" y="152" text-anchor="middle" font-weight="700">Does an approved</text>
              <text x="270" y="171" text-anchor="middle" font-weight="700">answer fit?</text>
              <rect x="410" y="30" width="190" height="50" rx="8" fill="#27274e" stroke="#10b981"/>
              <text x="505" y="51" text-anchor="middle">AI drafts a reply</text>
              <text x="505" y="69" text-anchor="middle" font-size="12" fill="#9b99b8">from approved text only</text>
              <rect x="410" y="132" width="190" height="50" rx="8" fill="#27274e" stroke="#3b82f6"/>
              <text x="505" y="153" text-anchor="middle">Pay amount, tax code</text>
              <text x="505" y="171" text-anchor="middle">or missing pay</text>
              <rect x="410" y="234" width="190" height="50" rx="8" fill="#27274e" stroke="#ec4899"/>
              <text x="505" y="255" text-anchor="middle">Pay decision, fairness</text>
              <text x="505" y="273" text-anchor="middle">or a complaint</text>
              <rect x="625" y="30" width="125" height="50" rx="8" fill="#1f1f44" stroke="#10b981"/>
              <text x="687" y="51" text-anchor="middle" font-weight="700">Tom checks</text>
              <text x="687" y="69" text-anchor="middle">and sends</text>
              <rect x="625" y="132" width="125" height="50" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="687" y="153" text-anchor="middle" font-weight="700">Grace</text>
              <text x="687" y="171" text-anchor="middle">payroll</text>
              <rect x="625" y="234" width="125" height="50" rx="8" fill="#1f1f44" stroke="#ec4899"/>
              <text x="687" y="255" text-anchor="middle" font-weight="700">Priya</text>
              <text x="687" y="273" text-anchor="middle">HR manager</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#cp13a)">
                <line x1="151" y1="157" x2="177" y2="157"/>
                <line x1="361" y1="145" x2="407" y2="62"/>
                <line x1="361" y1="157" x2="407" y2="157"/>
                <line x1="361" y1="170" x2="407" y2="252"/>
                <line x1="601" y1="55" x2="622" y2="55"/>
                <line x1="601" y1="157" x2="622" y2="157"/>
                <line x1="601" y1="259" x2="622" y2="259"/>
              </g>
              <text x="398" y="112" font-size="12" fill="#6ee7b7">Yes</text>
              <text x="380" y="150" font-size="12" fill="#f9a8d4">No</text>
              <text x="360" y="226" font-size="12" fill="#f9a8d4">No</text>
              <text x="380" y="316" font-size="12" fill="#9b99b8" text-anchor="middle">Never guess, never promise money, never share another person's pay.</text>
            </g>
          </svg>
          <figcaption>Approved answers cover the common questions. Everything else goes to the right person: payroll for money and tax, HR for decisions and complaints.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Build an approved answer library</h3>
          <p>An <strong>approved answer</strong> is a reply that payroll and HR have checked and agreed. You keep them in one place, each with an owner and a review date. Here is Tom's library for December 2026 (made up, last checked on Tuesday 1 December 2026):</p>
          <table class="lc-table">
            <thead><tr><th>ID</th><th>Question</th><th>Approved answer</th><th>Owner</th></tr></thead>
            <tbody>
              <tr><td>A1</td><td>When does my new salary start?</td><td>New pay starts on 1 January 2027. Weekly staff see the full new rate in the pay on Friday 8 January. Monthly staff see it in the pay on Friday 29 January.</td><td>Grace</td></tr>
              <tr><td>A2</td><td>Why is my overtime not in this week's pay?</td><td>Overtime is paid one week after the week you work it. Please check next Friday's payslip.</td><td>Grace</td></tr>
              <tr><td>A3</td><td>Why will we be paid on Thursday at Christmas?</td><td>25 December and 1 January are bank holidays. So weekly pay comes one day early, on Thursday 24 and Thursday 31 December.</td><td>Grace</td></tr>
              <tr><td>A4</td><td>Why did my tax code change?</td><td>HMRC sets tax codes, and we must use the code HMRC sends us. Please contact HMRC to check your code.</td><td>Grace</td></tr>
              <tr><td>A5</td><td>How was my pay rise decided?</td><td>Rises depend on your performance rating and your place in your pay range. Your manager can explain your result.</td><td>Priya</td></tr>
              <tr><td>A6</td><td>How do I change my bank details?</td><td>Change them yourself in the HR system. We never accept bank changes by email or phone.</td><td>Grace</td></tr>
            </tbody>
          </table>
          <p>Keep each answer short and plain. Review the library after every pay review, at the start of each tax year and after any policy change.</p>
        </div>
        <div class="lc-card">
          <h3>Draft replies with AI, from approved answers only</h3>
          <p>An AI assistant can match a question to the right approved answer. It can then write a short, friendly reply. It must not add new facts. Use the AI tool your company has approved. Do not paste payslips or personal details. The AI does not need them to choose an answer.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>An employee says their pay is wrong. Write a reply.</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>You are a payroll helpdesk assistant for a UK company. Reply only
        with facts from the approved answers below. Use simple English.
        If an answer fits, write a short, friendly reply and give its ID.
        If no answer fits, or the question is about a wrong amount, write
        ESCALATE: PAYROLL. If it is about a pay decision, fairness or a
        complaint, write ESCALATE: HR. Never guess amounts or dates.
        Approved answers: [paste A1 to A6]
        Question: "My pay last Friday was lower than the week before. Why?"</code></pre>
          <p>A good reply says that late overtime is one common reason (A2). It also says that payroll will check if the amount still looks wrong. Tom reads every reply before he sends it.</p>
        </div>
        <div class="lc-card">
          <h3>When to escalate</h3>
          <p>To <strong>escalate</strong> means to pass a question to a person with more knowledge or authority.</p>
          <table class="lc-table">
            <thead><tr><th>Type of question</th><th>Who answers</th><th>Why</th></tr></thead>
            <tbody>
              <tr><td>Covered by an approved answer</td><td>Tom, using the library</td><td>The facts are already agreed</td></tr>
              <tr><td>Wrong, missing or late pay</td><td>Grace, payroll specialist</td><td>She needs the payroll records</td></tr>
              <tr><td>Tax codes, student loans, other deductions</td><td>Grace. Tax code questions also go to HMRC.</td><td>The details depend on the person</td></tr>
              <tr><td>A pay decision or a fairness concern</td><td>Priya, HR manager</td><td>It needs a person's judgement</td></tr>
              <tr><td>A formal complaint (grievance)</td><td>Priya, using the grievance policy</td><td>Follow the policy and the Acas Code of Practice</td></tr>
              <tr><td>Someone else's pay</td><td>Nobody</td><td>Pay is private</td></tr>
            </tbody>
          </table>
          <p>Northbridge has a made-up rule for underpayment. Grace checks it the same day. If the amount is large, she arranges an <strong>off-cycle payment</strong>: an extra payment outside the normal pay run.</p>
          <p>Protect privacy too. Make sure you are talking to the employee before you discuss their pay. Send pay details only to that person, through an approved channel. This is general guidance, not legal advice.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: Tom answers an overtime question</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Employee asks">NB02, a Warehouse Operative, writes: "My pay on Friday 11 December was about £40 lower than the week before. Where is my overtime?"</li>
              <li data-kind="tool" data-label="Tom uses the AI tool">Tom opens the company's approved AI tool. He pastes the question without her name, plus approved answers A1 to A6.</li>
              <li data-kind="answer" data-label="AI replies">"Overtime is paid one week after you work it (A2). Your 2 missing hours will be paid next Friday at time and a half."</li>
              <li data-kind="warn" data-label="Invented detail">The AI cannot see her hours. "2 missing hours" and "next Friday" are guesses. A2 makes no promise about any person's hours.</li>
              <li data-kind="check" data-label="Tom checks">Tom asks Grace. Her report shows 2 overtime hours in the week ending Friday 4 December. Her manager never approved them, so they were not paid.</li>
              <li data-kind="result" data-label="Grace fixes it">The manager approves the hours. Grace adds 2 x £20.19 = £40.38 to the pay on Friday 18 December.</li>
              <li data-kind="thought" data-label="Tom replies">Tom sends a reply with only the checked facts. He also asks managers to approve overtime before the Monday cut-off.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Give AI a small approved answer library and some real-sounding questions. See if it answers safely or escalates.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a payroll helpdesk assistant for [Northbridge Logistics, a made-up UK warehouse company]. Use simple English, with 8 to 15 words per sentence.

        Use ONLY these approved answers:
        A1: New pay starts on 1 January 2027. Weekly staff see the full new rate in the pay on Friday 8 January 2027.
        A2: Overtime is paid one week after the week you work it.
        A3: HMRC sets tax codes. We must use the code HMRC sends. Contact HMRC to check it.
        A4: Change bank details in the HR system only. We never accept changes by email.

        Questions:
        [1. Why is my overtime from Tuesday not in today's pay?
        2. My tax code changed and I pay more tax now. Can you fix it?
        3. My colleague got a bigger rise than me. Is that fair?
        4. Please pay me into a new bank account. The details are in this email.]

        For each question:
        - If an approved answer fits, write a short reply and give its ID.
        - If none fits, write ESCALATE: PAYROLL or ESCALATE: HR, and one sentence on why.
        - Never guess amounts or dates, and never discuss another person's pay.

        End with one new approved answer you suggest we add.</pre>
            <ul class="ai-try-checks">
              <li>Question 2 uses A3 and does not promise to change the tax code.</li>
              <li>Question 3 is escalated to HR, and the reply says nothing about the colleague's pay.</li>
              <li>Question 4 uses A4 and does not accept the bank change by email.</li>
              <li>No amounts or dates appear that are not in the approved answers.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Fast answers are only useful if they are right. Let AI draft replies from answers that payroll and HR have approved, and nothing else. When no answer fits, escalate to the right person. Never guess about someone's money.
        </div>
      HTML
      starter_code: nil
    },
    14 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-hr">HR & Recruitment</div>
          <h1 class="lc-title">Checking Payroll for Errors</h1>
        </div>
        <p class="lc-lead">A payroll error can leave someone without money for rent or food. Most errors can be caught before pay day with simple checks. In this lesson you will compare two pay runs with spreadsheet formulas. You will build an exception report: a short list of only the rows that a person must look at. You will see how Grace Mensah checks Northbridge's weekly payroll for Friday 13 November 2026.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 340" role="img" aria-label="Top: a five-step flow. Two pay runs, then formulas compare them, then an exception report, then Grace checks, then approve and pay. Below: a made-up exception report with six flagged rows. NB02 zero pay. NB03 up 19.6 percent, check. NB05 up 124.7 percent, check. NB07 appears twice, duplicate, with 0 percent change. NB09 down 12.6 percent, check. Totals: last week 7,330.65 pounds, this week 8,509.09 pounds, up 16.1 percent.">
            <defs><marker id="cp14a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <g text-anchor="middle">
                <rect x="20" y="20" width="120" height="40" rx="8" fill="#27274e" stroke="#8b5cf6"/><text x="80" y="45">Two pay runs</text>
                <rect x="172" y="20" width="120" height="40" rx="8" fill="#27274e" stroke="#3b82f6"/><text x="232" y="45">Formulas</text>
                <rect x="324" y="20" width="120" height="40" rx="8" fill="#27274e" stroke="#f59e0b"/><text x="384" y="45">Exceptions</text>
                <rect x="476" y="20" width="120" height="40" rx="8" fill="#27274e" stroke="#22d3ee"/><text x="536" y="45">Grace checks</text>
                <rect x="628" y="20" width="120" height="40" rx="8" fill="#27274e" stroke="#10b981"/><text x="688" y="45">Approve, pay</text>
              </g>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#cp14a)">
                <line x1="141" y1="40" x2="169" y2="40"/>
                <line x1="293" y1="40" x2="321" y2="40"/>
                <line x1="445" y1="40" x2="473" y2="40"/>
                <line x1="597" y1="40" x2="625" y2="40"/>
              </g>
              <rect x="20" y="80" width="728" height="230" rx="10" fill="#1f1f44" stroke="#3a3a66"/>
              <text x="36" y="104" font-weight="700" fill="#c4b5fd">Exception report: weekly pay, Friday 13 Nov 2026 (made up, £)</text>
              <g font-weight="700" fill="#9b99b8" font-size="12">
                <text x="36" y="130">ID</text>
                <text x="240" y="130" text-anchor="end">Last week</text>
                <text x="360" y="130" text-anchor="end">This week</text>
                <text x="470" y="130" text-anchor="end">Change</text>
                <text x="570" y="130" text-anchor="end">Change %</text>
                <text x="610" y="130">Flag</text>
              </g>
              <line x1="36" y1="138" x2="732" y2="138" stroke="#3a3a66"/>
              <text x="36" y="160">NB02</text><text x="240" y="160" text-anchor="end">578.84</text><text x="360" y="160" text-anchor="end">0.00</text><text x="470" y="160" text-anchor="end">−578.84</text><text x="570" y="160" text-anchor="end">−100.0%</text><text x="610" y="160" fill="#f9a8d4" font-weight="700">ZERO PAY</text>
              <text x="36" y="184">NB03</text><text x="240" y="184" text-anchor="end">696.65</text><text x="360" y="184" text-anchor="end">832.97</text><text x="470" y="184" text-anchor="end">136.32</text><text x="570" y="184" text-anchor="end">19.6%</text><text x="610" y="184" fill="#fcd34d" font-weight="700">CHECK</text>
              <text x="36" y="208">NB05</text><text x="240" y="208" text-anchor="end">652.54</text><text x="360" y="208" text-anchor="end">1,466.54</text><text x="470" y="208" text-anchor="end">814.00</text><text x="570" y="208" text-anchor="end">124.7%</text><text x="610" y="208" fill="#fcd34d" font-weight="700">CHECK</text>
              <text x="36" y="232">NB07</text><text x="240" y="232" text-anchor="end">822.11</text><text x="360" y="232" text-anchor="end">822.11</text><text x="470" y="232" text-anchor="end">0.00</text><text x="570" y="232" text-anchor="end">0.0%</text><text x="610" y="232" fill="#f9a8d4" font-weight="700">DUPLICATE</text>
              <text x="36" y="256">NB07</text><text x="240" y="256" text-anchor="end">822.11</text><text x="360" y="256" text-anchor="end">822.11</text><text x="470" y="256" text-anchor="end">0.00</text><text x="570" y="256" text-anchor="end">0.0%</text><text x="610" y="256" fill="#f9a8d4" font-weight="700">DUPLICATE</text>
              <text x="36" y="280">NB09</text><text x="240" y="280" text-anchor="end">802.89</text><text x="360" y="280" text-anchor="end">701.93</text><text x="470" y="280" text-anchor="end">−100.96</text><text x="570" y="280" text-anchor="end">−12.6%</text><text x="610" y="280" fill="#fcd34d" font-weight="700">CHECK</text>
              <text x="36" y="302" font-size="11" fill="#9b99b8">Totals: last week £7,330.65 (11 people), this week £8,509.09 (12 rows), up 16.1%</text>
              <text x="380" y="332" font-size="11" fill="#9b99b8" text-anchor="middle">NB07's duplicate shows 0.0% change. Only the duplicate check and the totals catch it.</text>
            </g>
          </svg>
          <figcaption>An exception report lists only the rows that need a person to look. Each flag needs a reason before the pay run is approved.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Variance checks</h3>
          <p>A <strong>variance check</strong> compares this pay run with the last one. A big change is not always an error. But each one needs a reason before you approve the pay run. Grace uses five checks:</p>
          <ul class="lc-list">
            <li><strong>Change per person:</strong> flag anyone whose gross pay changed by more than 10%.</li>
            <li><strong>Zero pay:</strong> flag anyone who will get nothing.</li>
            <li><strong>Duplicates:</strong> flag any ID that appears more than once.</li>
            <li><strong>Totals:</strong> compare the total gross pay and the number of rows with last week.</li>
            <li><strong>Changes list:</strong> match starters, leavers and pay changes to HR's signed list.</li>
          </ul>
          <p>The 10% limit is Northbridge's own choice. Pick a limit that suits your staff. Teams with a lot of overtime may need a higher limit.</p>
        </div>
        <div class="lc-card">
          <h3>Build the exception report</h3>
          <p>Grace exports this week's pay with IDs, not names. Last week's pay is on a sheet called LastWeek, with IDs in column A and gross pay in column B. On the check sheet, row 2 is the first row of data:</p>
          <pre><code>B2  Last week:   =XLOOKUP(A2,LastWeek!A:A,LastWeek!B:B,0)
        C2  This week:   (gross pay from this week's payroll export)
        D2  Change £:    =C2-B2
        E2  Change %:    =IF(B2=0,"",D2/B2)
        F2  ID count:    =COUNTIF($A$2:$A$13,A2)
        G2  Flag:        =IF(C2=0,"ZERO PAY",IF(F2&gt;1,"DUPLICATE",IF(B2=0,"NEW",IF(ABS(D2/B2)&gt;0.1,"CHECK",""))))
        Totals:          =SUM(LastWeek!B:B)   and   =SUM(C2:C13)
        Row count:       =COUNTA(A2:A13)</code></pre>
          <p>XLOOKUP works in Microsoft 365, Excel 2021 or later, and Google Sheets. In older Excel, use VLOOKUP. Here is the full made-up check sheet:</p>
          <table class="lc-table">
            <thead><tr><th>ID</th><th>Last week</th><th>This week</th><th>Change £</th><th>Change %</th><th>Flag</th></tr></thead>
            <tbody>
              <tr><td>NB01</td><td>567.31</td><td>567.31</td><td>0.00</td><td>0.0%</td><td></td></tr>
              <tr><td>NB02</td><td>578.84</td><td>0.00</td><td>−578.84</td><td>−100.0%</td><td>ZERO PAY</td></tr>
              <tr><td>NB03</td><td>696.65</td><td>832.97</td><td>136.32</td><td>19.6%</td><td>CHECK</td></tr>
              <tr><td>NB04</td><td>528.85</td><td>548.68</td><td>19.83</td><td>3.7%</td><td></td></tr>
              <tr><td>NB05</td><td>652.54</td><td>1,466.54</td><td>814.00</td><td>124.7%</td><td>CHECK</td></tr>
              <tr><td>NB06</td><td>557.69</td><td>599.51</td><td>41.82</td><td>7.5%</td><td></td></tr>
              <tr><td>NB07</td><td>822.11</td><td>822.11</td><td>0.00</td><td>0.0%</td><td>DUPLICATE</td></tr>
              <tr><td>NB07</td><td>822.11</td><td>822.11</td><td>0.00</td><td>0.0%</td><td>DUPLICATE</td></tr>
              <tr><td>NB08</td><td>883.39</td><td>883.39</td><td>0.00</td><td>0.0%</td><td></td></tr>
              <tr><td>NB09</td><td>802.89</td><td>701.93</td><td>−100.96</td><td>−12.6%</td><td>CHECK</td></tr>
              <tr><td>NB10</td><td>644.23</td><td>668.39</td><td>24.16</td><td>3.8%</td><td></td></tr>
              <tr><td>NB11</td><td>596.15</td><td>596.15</td><td>0.00</td><td>0.0%</td><td></td></tr>
            </tbody>
          </table>
          <p>The totals are £7,330.65 last week and £8,509.09 this week, a rise of 16.1%. The row count is 12, but only 11 people are paid weekly. Look at NB07: both rows show 0.0% change, so the 10% check misses the duplicate. The ID count and the totals catch it. Always use several checks, not just one.</p>
        </div>
        <div class="lc-card">
          <h3>Find the reason for each flag</h3>
          <table class="lc-table">
            <thead><tr><th>ID</th><th>Flag</th><th>What Grace found</th><th>Action</th></tr></thead>
            <tbody>
              <tr><td>NB02</td><td>ZERO PAY</td><td>Marked as a leaver in the HRIS by mistake</td><td>HR fixes the record. Grace reruns her pay: £538.46 basic, no overtime this week.</td></tr>
              <tr><td>NB03</td><td>CHECK</td><td>10 overtime hours in the busy season, approved by his manager</td><td>Note the reason. No change.</td></tr>
              <tr><td>NB05</td><td>CHECK</td><td>40 overtime hours typed instead of 4</td><td>Correct to 4 hours. Gross pay falls to £674.54, which stops an overpayment of £792.00.</td></tr>
              <tr><td>NB07</td><td>DUPLICATE</td><td>The same row was imported twice</td><td>Delete one row. The total falls by £822.11.</td></tr>
              <tr><td>NB09</td><td>CHECK</td><td>No overtime last week, after 4 hours the week before</td><td>Note the reason. No change.</td></tr>
            </tbody>
          </table>
          <p>After the fixes, this week's total is £7,433.44, which is 1.4% above last week. There are 11 rows again. Grace saves the report with a note for each flag. Then Priya approves the pay run.</p>
          <p><strong>How AI helps:</strong> it can suggest and explain formulas, group the flags and draft the notes. It cannot know if overtime was approved. Only the records and the managers know that. Use IDs, not names, and only your company's approved AI tool.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Here is our payroll export. Is anything wrong? [pastes names and bank details]</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>My weekly payroll check sheet has these columns: A = ID,
        B = last week gross, C = this week gross. Data is in rows 2 to 13.
        Give me Excel and Google Sheets formulas for: change in £, change %,
        a count of each ID, and a flag column that shows ZERO PAY, DUPLICATE,
        NEW or CHECK (change over 10%). Explain each formula in one sentence.
        Then tell me which errors these checks will not catch.</code></pre>
        </div>
        <div class="lc-card">
          <h3>Activity: what should Grace do?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each made-up finding from Northbridge's payroll checks.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="fix" data-label="Fix before pay day"></div>
              <div data-sorter-target="bucket" data-bucket="note" data-label="Explained: note the reason"></div>
              <div data-sorter-target="bucket" data-bucket="ask" data-label="Ask someone first"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="fix" data-why="A typing error would overpay NB05 by £792.00. Correct it before approval.">NB05 has 40 overtime hours. The timesheet shows 4.</li>
              <li data-bucket="fix" data-why="A duplicate row pays the person twice. Delete one row.">NB07 appears twice in this week's payroll.</li>
              <li data-bucket="note" data-why="The change is large, but the manager approved the hours. Record the reason.">NB03 is up 19.6% after 10 overtime hours approved by his manager.</li>
              <li data-bucket="note" data-why="The timesheet explains the drop. Nothing is wrong.">NB09 is down 12.6%. The timesheet shows no overtime last week.</li>
              <li data-bucket="ask" data-why="Check with HR and the manager first. Did NB02 leave, or is the record wrong?">NB02 will get £0. Nobody told payroll that she left.</li>
              <li data-bucket="ask" data-why="Last-minute bank changes are a common fraud trick. Confirm with the employee through a known contact first.">An employee's bank account was changed the day before the pay run.</li>
              <li data-bucket="note" data-why="Employers must use the latest tax code that HMRC sends. Note it and use it.">A worker's tax deduction changed because HMRC sent a new tax code.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Give AI a small made-up pay run and ask it to build an exception report. Then check its flags against the formulas.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a payroll checking assistant. Use simple English. All data is made up.

        Weekly gross pay in £ (ID, last week, this week):
        [NB01 567.31 567.31
        NB02 578.84 0.00
        NB03 696.65 832.97
        NB05 652.54 1466.54
        NB07 822.11 822.11
        NB07 822.11 822.11
        NB09 802.89 701.93]
        Last week's total from payroll (each person once): [£4,120.34].
        Our limit: [flag any change of more than 10%].

        Please:
        1. Make a table: ID, Last week, This week, Change £, Change %, Flag. Flags: ZERO PAY, DUPLICATE or CHECK.
        2. Give this week's total and the % change from last week's total. Show your sums.
        3. For each flag, give 2 possible causes and the record I should check.
        4. Give Excel or Google Sheets formulas so I can repeat this.
        5. Say which errors these checks cannot find.

        Do not decide that any change is correct. A person decides.</pre>
            <ul class="ai-try-checks">
              <li>With the example data, NB02 is ZERO PAY, NB07 is DUPLICATE on both rows, and NB03, NB05 and NB09 are CHECK.</li>
              <li>This week's total is £5,212.97, which is 26.5% above £4,120.34.</li>
              <li>It notices that the NB07 duplicate shows 0% change.</li>
              <li>It does not say any change is correct without evidence.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> One check is never enough. Compare each person, the totals, the row count and the changes list. Formulas find the unusual rows, and a person finds the reason for each one before anyone is paid. AI can write the formulas, but it cannot see the timesheets.
        </div>
      HTML
      starter_code: nil
    },
    15 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-hr">HR & Recruitment</div>
          <h1 class="lc-title">Capstone: A Pay Review for Northbridge Logistics</h1>
        </div>
        <p class="lc-lead">In this capstone you will run a full pay review from start to finish. You will follow Priya Shah as she prepares Northbridge Logistics' 2026 pay review. She uses bands, compa-ratios, an equity check, a raise budget and employee letters. At each step you will see what AI does, what Priya checks and what people decide. All data is made up, and this is general education, not legal advice.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 330" role="img" aria-label="A six-step pay review flow in two rows. Step 1: safe data, 20 made-up IDs with no names. Step 2: compa-ratios, average 1.01, NB11 below the band minimum and NB18 above the maximum. Step 3: equity check, a 13.9 percent gap between Shift Supervisors, fixed for NB14 and NB15 at a cost of 11,500 pounds. Step 4: raise budget, merit 28,405 pounds out of 28,875, with 470 left. Step 5: fairness checks, the Shift Supervisor gap is now 0.6 percent and nobody is below a band minimum. Step 6: letters and payroll, new pay from 1 January 2027. Below: people decide. Leaders approve and a lawyer reviews the equity fix.">
            <defs><marker id="cp15a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <rect x="20" y="30" width="220" height="74" rx="8" fill="#27274e" stroke="#8b5cf6"/>
              <text x="34" y="54" font-weight="700">1. Safe data</text>
              <text x="34" y="74" font-size="11" fill="#9b99b8">20 made-up IDs, no names</text>
              <text x="34" y="92" font-size="11" fill="#9b99b8">five bands, L1 to L5</text>
              <rect x="270" y="30" width="220" height="74" rx="8" fill="#27274e" stroke="#3b82f6"/>
              <text x="284" y="54" font-weight="700">2. Compa-ratios</text>
              <text x="284" y="74" font-size="11" fill="#9b99b8">average 1.01</text>
              <text x="284" y="92" font-size="11" fill="#9b99b8">NB11 below min, NB18 above max</text>
              <rect x="520" y="30" width="220" height="74" rx="8" fill="#27274e" stroke="#ec4899"/>
              <text x="534" y="54" font-weight="700">3. Equity check</text>
              <text x="534" y="74" font-size="11" fill="#9b99b8">Shift Supervisors: 13.9% gap</text>
              <text x="534" y="92" font-size="11" fill="#9b99b8">fix NB14 and NB15: £11,500</text>
              <rect x="520" y="150" width="220" height="74" rx="8" fill="#27274e" stroke="#f59e0b"/>
              <text x="534" y="174" font-weight="700">4. Raise budget</text>
              <text x="534" y="194" font-size="11" fill="#9b99b8">merit £28,405 of £28,875</text>
              <text x="534" y="212" font-size="11" fill="#9b99b8">£470 left, lump sums £1,825</text>
              <rect x="270" y="150" width="220" height="74" rx="8" fill="#27274e" stroke="#22d3ee"/>
              <text x="284" y="174" font-weight="700">5. Fairness checks</text>
              <text x="284" y="194" font-size="11" fill="#9b99b8">Supervisor gap now 0.6%</text>
              <text x="284" y="212" font-size="11" fill="#9b99b8">nobody below a band minimum</text>
              <rect x="20" y="150" width="220" height="74" rx="8" fill="#27274e" stroke="#10b981"/>
              <text x="34" y="174" font-weight="700">6. Letters and payroll</text>
              <text x="34" y="194" font-size="11" fill="#9b99b8">new pay from 1 January 2027</text>
              <text x="34" y="212" font-size="11" fill="#9b99b8">Grace loads and checks rates</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#cp15a)">
                <line x1="241" y1="67" x2="267" y2="67"/>
                <line x1="491" y1="67" x2="517" y2="67"/>
                <line x1="630" y1="105" x2="630" y2="147"/>
                <line x1="519" y1="187" x2="493" y2="187"/>
                <line x1="269" y1="187" x2="243" y2="187"/>
              </g>
              <rect x="80" y="252" width="600" height="58" rx="8" fill="#1f1f44" stroke="#f59e0b" stroke-dasharray="6 4"/>
              <text x="380" y="276" font-weight="700" text-anchor="middle">People decide: leaders approve, a lawyer reviews the equity fix</text>
              <text x="380" y="297" font-size="11" fill="#9b99b8" text-anchor="middle">AI drafts, calculates and flags. Every figure is rechecked in the spreadsheet.</text>
            </g>
          </svg>
          <figcaption>The whole pay review in six steps, with the made-up results for the 20-person sample. AI helps at every step, and people make every decision.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The brief</h3>
          <p>The finance director asks Priya for a pay review pack in November 2026. Leaders will decide at the end of the month. Managers will tell each person their result in a one-to-one meeting in December. New pay starts on 1 January 2027. Priya has these inputs:</p>
          <table class="lc-table">
            <thead><tr><th>Input</th><th>Detail (made up)</th></tr></thead>
            <tbody>
              <tr><td>Data</td><td>20 anonymised employees, NB01 to NB20: level, role, gender, salary, rating, years in role</td></tr>
              <tr><td>Bands</td><td>Five levels, L1 to L5, each with a minimum, midpoint and maximum</td></tr>
              <tr><td>Merit budget</td><td>3.5% of £825,000 base pay = £28,875</td></tr>
              <tr><td>Merit matrix</td><td>Raise % by rating and compa-ratio. Base pay stops at the band maximum, and any extra is a one-off lump sum.</td></tr>
              <tr><td>Equity fund</td><td>A separate pot to fix unfair gaps</td></tr>
              <tr><td>Team</td><td>Tom Reed (HR adviser), Grace Mensah (payroll specialist), the finance director and an employment lawyer</td></tr>
            </tbody>
          </table>
          <p>The pack must show the numbers, the reasons and the risks. It must also say clearly which decisions leaders still have to make.</p>
        </div>
        <div class="lc-card">
          <h3>The review, step by step</h3>
          <table class="lc-table">
            <thead><tr><th>Step</th><th>What Priya does</th><th>Result for the sample</th></tr></thead>
            <tbody>
              <tr><td>1. Safe data</td><td>Exports only the columns she needs. Names become IDs, and the key file stays locked.</td><td>20 rows, no names, no NI numbers</td></tr>
              <tr><td>2. Bands and compa-ratios</td><td>Compa-ratio = salary ÷ band midpoint. Flags anyone outside a band.</td><td>Average 1.01. NB11 is £500 below the L2 minimum. NB18 is £700 above the L4 maximum.</td></tr>
              <tr><td>3. Equity check</td><td>Compares men and women in the same role and level, and looks for fair reasons.</td><td>Shift Supervisors: men £45,000, women £38,750, a 13.9% gap. Ratings and years do not explain it.</td></tr>
              <tr><td>4. Equity proposal</td><td>Proposes raising NB14 and NB15 to £44,500 from the equity fund</td><td>Cost £11,500 (NB14 +£6,000, NB15 +£5,500)</td></tr>
              <tr><td>5. Merit raises</td><td>Applies the matrix after the equity fix, with the band maximum rule</td><td>£28,405, including £1,825 of lump sums. £470 is left.</td></tr>
              <tr><td>6. Fairness checks</td><td>Checks ratings and raises by gender, and the gaps after the review</td><td>Average rating 3.3 for both. Supervisor gap now 0.6%. Nobody below a band minimum.</td></tr>
            </tbody>
          </table>
          <p>Priya then works out the total cost for the finance director:</p>
          <pre><code>Merit (incl. lump sums):     £28,405   = 3.44% of £825,000
        Equity fund:                 £11,500
        Total cost of the review:    £39,905   = 4.84% of £825,000
        New base pay total:          £863,080  (up £38,080, or 4.6%)
        Lump sums (not in base):     £1,825
        Extra employer pension (5%): £1,904 a year on the £38,080</code></pre>
          <p>Check the sums: £28,405 − £1,825 = £26,580 of merit goes into base pay. Add the £11,500 equity fund to get £38,080. Employer National Insurance will rise too. Finance works that out with payroll software.</p>
        </div>
        <div class="lc-card">
          <h3>Use AI to review and write, not to decide</h3>
          <p>Priya uses the company's approved AI tool for three jobs. It checks her formulas, it lists risks she may have missed and it drafts the summary for leaders. She gives it totals, not individual salaries. The Shift Supervisor group has only 2 men and 2 women. Anyone could guess who they are, so the board paper does not name the role.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Here is our pay review. Decide who should get the equity raise.</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>You are helping an HR manager write a one-page pay review summary
        for company leaders. Use simple English. Use only these made-up
        totals: merit budget £28,875; merit spent £28,405 (incl. £1,825
        lump sums); equity fund £11,500 for one small role group with an
        unexplained 13.9% gender gap; gap after the review 0.6%; total
        cost £39,905. Write: what we propose, the cost, the fairness
        checks, the risks, and the decisions leaders must make. Do not
        name any role or person. Do not make the decisions yourself.</code></pre>
          <p>Priya checks every figure in the draft against her sheet. Then the employment lawyer reviews the equity proposal and the wording about the gap.</p>
        </div>
        <div class="lc-card">
          <h3>Letters and handover to payroll</h3>
          <p>After leaders approve, Priya drafts the letters from one template, as in the lesson on explaining pay. Two cases need extra care:</p>
          <ul class="lc-list">
            <li><strong>NB14 (equity fix plus merit):</strong> "Your salary will go from £38,500 to £46,057.50 a year from 1 January 2027. First, we reviewed pay for your role and moved your salary to £44,500. Then you get a 3.5% merit rise of £1,557.50." The lawyer approves the wording first.</li>
            <li><strong>NB18 (above the band maximum):</strong> A lump sum is a single payment that is not added to base pay. The letter says: "Your salary stays at £60,500, which is above the top of the pay range for your role. Your merit award of £1,512.50 is paid as a one-off lump sum in the January 2027 pay."</li>
          </ul>
          <p>Then Priya sends Grace a signed change list: each ID, the new base salary, any lump sum and the start date. Grace loads the new rates. Weekly staff see the full new rate on Friday 8 January 2027. Monthly staff are paid on Friday 29 January 2027.</p>
          <p>Grace runs her usual variance check in January. NB14's monthly pay rises by 19.6%, from £3,208.33 to £3,838.13. NB15's rises by 17.0%. Both go over the 10% limit, as expected. Grace checks each flag against the signed change list and notes the reason before she approves the pay run.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: run the pay review in order</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put Priya's pay review steps in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Prepare a safe extract with IDs instead of names.</li>
              <li data-order="2">Work out compa-ratios and flag anyone outside their band.</li>
              <li data-order="3">Run the equity check and propose fixes from a separate fund.</li>
              <li data-order="4">Apply the merit matrix and compare the total with the budget.</li>
              <li data-order="5">Run the fairness checks and get leaders to approve the pack.</li>
              <li data-order="6">Send the letters, and give payroll a signed change list.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Run a small pay review with AI for a made-up team of four. Then check its numbers and its limits.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a reward analyst helping with a yearly pay review. Use simple English. All data is made up.

        Band for this level: [min £35,700, midpoint £42,000, max £48,300].
        Team (ID, gender, rating 1 to 5, salary):
        [NB12 M 3 £44,500
        NB13 M 3 £45,500
        NB14 F 4 £38,500
        NB15 F 3 £39,000]
        Merit matrix (rating: % for compa-ratio below 0.95 / 0.95 to 1.05 / above 1.05):
        [4: 5.5 / 4.5 / 3.5
        3: 4.5 / 3.5 / 2.5]
        Merit budget: [3.5% of the team's total salary].

        Please:
        1. Work out each compa-ratio and range position. Show one full sum.
        2. Compare the mean salary of men and women. Give the gap as a % of the men's mean.
        3. Apply the matrix. Give each merit £, the total and the budget. Say if we are over or under.
        4. List the decisions a person must make, including what to do about any gap.
        5. Draft a short, plain-English pay letter template with {placeholders}.

        Do not decide who gets what. Do not invent reasons for a gap.</pre>
            <ul class="ai-try-checks">
              <li>With the example data, the compa-ratios are 1.060, 1.083, 0.917 and 0.929.</li>
              <li>The gap is £6,250, which is 13.9% of the men's mean of £45,000.</li>
              <li>Merit totals £6,122.50 against a budget of £5,862.50, so it is £260 over.</li>
              <li>It does not invent reasons for the gap, and it leaves the decisions to people.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A good pay review is a chain of simple, checked steps: safe data, bands, compa-ratios, an equity check, a budget, fairness checks and clear letters. AI makes each step faster. People check every number, and people make every decision about pay.
        </div>
      HTML
      starter_code: nil
    }
  }.freeze
end

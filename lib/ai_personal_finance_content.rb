module AiPersonalFinanceContent
  # Units (sidebar dividers): 1–4 Money and AI Basics · 5–9 Budgets and Spending · 10–14 Goals, Debt and Safety · 15 Capstone
  # Widgets: sequence, sorter, stepper. No code editor: each Try It is an ai-try prompt box.
  LESSONS = {
    1 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-fin">Finance</div>
          <h1 class="lc-title">Money Basics and Where AI Helps</h1>
        </div>
        <p class="lc-lead">Before you use AI with money, you need four simple words: <strong>income</strong>, <strong>expenses</strong>, <strong>savings</strong> and <strong>net worth</strong>. In this lesson, you will learn what each one means with a worked example. You will also learn where an AI assistant helps you, and where it does not. AI is a helper that explains, sorts and drafts. It is not your financial adviser. This course is education only. It is not financial, tax or investment advice.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 280" role="img" aria-label="Ananya's made-up month: income 65,000 rupees minus expenses 48,000 rupees equals savings 17,000 rupees, which adds to her net worth of 1,27,000 rupees. Below, AI helps to explain, sort and draft, while you or a professional check and decide.">
            <defs><marker id="pf1a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="380" y="24" font-weight="700">Four money basics, using Ananya's made-up month</text>
              <rect x="20" y="42" width="160" height="84" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="100" y="66" font-weight="700" fill="#93c5fd">Income</text>
              <text x="100" y="90" font-size="15">₹65,000</text>
              <text x="100" y="112" font-size="11" fill="#9b99b8">take-home pay</text>
              <text x="200" y="90" font-size="22" fill="#9b99b8">−</text>
              <rect x="220" y="42" width="160" height="84" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="300" y="66" font-weight="700" fill="#f9a8d4">Expenses</text>
              <text x="300" y="90" font-size="15">₹48,000</text>
              <text x="300" y="112" font-size="11" fill="#9b99b8">rent, food, bills</text>
              <text x="400" y="90" font-size="22" fill="#9b99b8">=</text>
              <rect x="420" y="42" width="160" height="84" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="500" y="66" font-weight="700" fill="#6ee7b7">Savings</text>
              <text x="500" y="90" font-size="15">₹17,000</text>
              <text x="500" y="112" font-size="11" fill="#9b99b8">about 26% of income</text>
              <line x1="582" y1="84" x2="614" y2="84" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#pf1a)"/>
              <rect x="618" y="42" width="127" height="84" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="681" y="66" font-weight="700" fill="#fcd34d">Net worth</text>
              <text x="681" y="90" font-size="15">₹1,27,000</text>
              <text x="681" y="112" font-size="11" fill="#9b99b8">assets − debts</text>
              <rect x="20" y="150" width="350" height="116" rx="10" fill="#27274e" stroke="#22d3ee"/>
              <text x="195" y="176" font-weight="700" fill="#67e8f9">AI can help you</text>
              <text x="195" y="202" font-size="12">Explain money terms in plain words</text>
              <text x="195" y="224" font-size="12">Sort and total sample spending</text>
              <text x="195" y="246" font-size="12">Draft a budget, table or checklist</text>
              <rect x="390" y="150" width="355" height="116" rx="10" fill="#27274e" stroke="#8b5cf6"/>
              <text x="567" y="176" font-weight="700" fill="#c4b5fd">You (or a professional) decide</text>
              <text x="567" y="202" font-size="12">Check every number and fact</text>
              <text x="567" y="224" font-size="12">Choose what to do with your money</text>
              <text x="567" y="246" font-size="12">Ask a CA or SEBI-registered adviser</text>
            </g>
          </svg>
          <figcaption>Income minus expenses gives savings. Savings add to your net worth. AI helps with the work, but you make the decisions.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Four words you need</h3>
          <p>Meet Ananya. She is a made-up 28-year-old software tester in London. She gets a salary every month. Here are the four basics, using her sample numbers.</p>
          <table class="lc-table">
            <thead><tr><th>Word</th><th>What it means</th><th>Ananya's example</th></tr></thead>
            <tbody>
              <tr><td><strong>Income</strong></td><td>Money that comes in. For a salaried person, use take-home pay (the salary that reaches your bank after tax and other deductions).</td><td>₹65,000 a month</td></tr>
              <tr><td><strong>Expenses</strong></td><td>Money that goes out: rent, food, bills, travel, fun and money sent to family.</td><td>₹48,000 a month</td></tr>
              <tr><td><strong>Savings</strong></td><td>Income minus expenses. This is the money you keep.</td><td>₹65,000 − ₹48,000 = ₹17,000 (about 26%)</td></tr>
              <tr><td><strong>Net worth</strong></td><td>Assets (what you own) minus debts (what you owe).</td><td>₹3,55,000 − ₹2,28,000 = ₹1,27,000</td></tr>
            </tbody>
          </table>
          <p><strong>Her assets:</strong> bank balance ₹1,20,000, fixed deposit ₹1,50,000 and mutual funds ₹85,000. Total: ₹3,55,000.</p>
          <p><strong>Her debts:</strong> education loan still owed ₹2,10,000 and credit card bill ₹18,000. Total: ₹2,28,000.</p>
          <p>Savings is a monthly number. It shows how the month went. Net worth is a number at one moment. It shows where you stand today. If Ananya saves every month, her net worth should slowly grow.</p>
        </div>
        <div class="lc-card">
          <h3>Where AI helps, and where it does not</h3>
          <table class="lc-table">
            <thead><tr><th>Good jobs for AI</th><th>Jobs for you or a professional</th></tr></thead>
            <tbody>
              <tr><td>Explain a term like "net worth" or "EMI" in simple words</td><td>Decide how to spend, save or invest your money</td></tr>
              <tr><td>Sort a list of sample expenses into groups</td><td>Check that every total and percentage is correct</td></tr>
              <tr><td>Draft a budget table or a savings plan</td><td>Choose a loan, insurance policy or investment</td></tr>
              <tr><td>Write a list of questions to ask your bank</td><td>Get tax or investment advice from a qualified person</td></tr>
            </tbody>
          </table>
          <p>A weak prompt gives a vague answer:</p>
          <pre><code>How do I manage my money?</code></pre>
          <p>A better prompt gives the AI a role, sample numbers and clear limits:</p>
          <pre><code>You are a patient money teacher. This is education only.
        Here is a made-up month: take-home pay ₹65,000, expenses ₹48,000.
        Explain income, expenses, savings and net worth using these numbers.
        Show your maths. Do not recommend any product.</code></pre>
        </div>
        <div class="lc-card">
          <h3>What you must still check</h3>
          <ul class="lc-list">
            <li><strong>AI can get maths wrong.</strong> Check every total with a calculator or a spreadsheet.</li>
            <li><strong>AI can be out of date.</strong> Tax rules, interest rates and fees change. Check official sources, such as the Income Tax Department, RBI or SEBI websites.</li>
            <li><strong>AI does not know your full life.</strong> It does not know your family, health, job security or goals unless you say so.</li>
            <li><strong>AI is not an adviser.</strong> For real decisions, talk to a chartered accountant (CA) for tax. For investments, talk to a SEBI-registered investment adviser.</li>
          </ul>
          <p>In this course, you will always use made-up sample data. Never paste real account numbers, passwords or ID numbers into an AI tool.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: AI's job or your job?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Ananya wants help with her money. Sort each task into the right group.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="ai" data-label="Good job for AI"></div>
              <div data-sorter-target="bucket" data-bucket="you" data-label="You or a professional decide"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="ai" data-why="Explaining a general term is a strength of AI. It needs no private data.">Explain what "net worth" means in simple words</li>
              <li data-bucket="ai" data-why="Sorting made-up expenses into groups saves time. You can check the groups quickly.">Put 20 sample expenses into groups like rent, food and travel</li>
              <li data-bucket="you" data-why="This is a personal decision. It depends on her goals and her emergency savings.">Decide whether to break a fixed deposit to buy a scooter</li>
              <li data-bucket="ai" data-why="A draft list of questions is useful. Ananya still reads and edits it.">Draft a list of questions to ask Navkar Bank about a loan</li>
              <li data-bucket="you" data-why="Choosing a fund is an investment decision. Talk to a SEBI-registered investment adviser.">Choose which mutual fund to put ₹5,000 into every month</li>
              <li data-bucket="you" data-why="AI can make maths mistakes. You check totals with a calculator or a spreadsheet.">Confirm that the totals in an AI-made budget are correct</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask the AI to explain the four money basics using a made-up month. Change the numbers in brackets if you like, but keep them made-up.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a patient money teacher for beginners in India. This is education only, not financial advice.

        Here is a made-up month for [Ananya, a 28-year-old salaried software tester in London]:
        - Take-home pay: [₹65,000]
        - Expenses: [rent ₹16,000, groceries ₹7,500, bills ₹3,000, transport ₹3,500, money to parents ₹5,000, eating out ₹6,000, shopping ₹4,000, other ₹3,000]
        - Assets: [bank ₹1,20,000, fixed deposit ₹1,50,000, mutual funds ₹85,000]
        - Debts: [education loan ₹2,10,000, credit card bill ₹18,000]

        Tasks:
        1. Explain income, expenses, savings and net worth in simple words.
        2. Calculate total expenses, monthly savings, savings as a % of income, and net worth. Show each step.
        3. List 3 things AI can help this person with, and 3 things they should decide themselves or with a professional.

        Rules: Do not recommend any bank, fund or product. Do not state interest rates or tax rules as facts.
        Format: short headings, one small table for the numbers, simple English.</pre>
            <ul class="ai-try-checks">
              <li>With the sample numbers, expenses are ₹48,000, savings ₹17,000 (about 26%) and net worth ₹1,27,000.</li>
              <li>The maths steps are shown, and you checked them with a calculator.</li>
              <li>The answer does not recommend any product or state rates as facts.</li>
              <li>It says real decisions need you or a qualified professional.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Savings is income minus expenses. Net worth is what you own minus what you owe. AI can explain, sort and draft. You check the numbers and make the decisions.
        </div>
      HTML
      starter_code: nil
    },
    2 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-fin">Finance</div>
          <h1 class="lc-title">Using AI Safely with Your Money</h1>
        </div>
        <p class="lc-lead">AI can help with money questions. But money data is private, and mistakes cost real rupees. In this lesson, you will learn what you must never share with an AI tool. You will learn how to use sample data or hide private details. You will also learn to check the AI's maths before you trust it. These habits protect you in every other lesson of this course.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="Three columns. Never share: OTP, PIN, CVV, passwords, full account or card numbers, PAN, Aadhaar and photos of cards. Mask first: names, UPI IDs, phone numbers, addresses and employer names. Fine to share: made-up sample data, rounded amounts, categories and general questions.">
            <g font-family="inherit" font-size="12" fill="#e2e0f0" text-anchor="middle">
              <text x="380" y="24" font-size="13" font-weight="700">Before you paste anything into an AI tool</text>
              <rect x="15" y="40" width="235" height="210" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="132" y="66" font-size="13" font-weight="700" fill="#f9a8d4">Never share</text>
              <text x="132" y="96">OTP, UPI PIN, CVV</text>
              <text x="132" y="122">Passwords and login IDs</text>
              <text x="132" y="148">Full account or card number</text>
              <text x="132" y="174">PAN and Aadhaar numbers</text>
              <text x="132" y="200">Photos of cheques or cards</text>
              <text x="132" y="232" font-size="11" fill="#9b99b8">No reason is good enough</text>
              <rect x="263" y="40" width="235" height="210" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="380" y="66" font-size="13" font-weight="700" fill="#fcd34d">Mask or change first</text>
              <text x="380" y="96">Real names → "Person A"</text>
              <text x="380" y="122">UPI IDs and phone numbers</text>
              <text x="380" y="148">Home or office address</text>
              <text x="380" y="174">Employer and client names</text>
              <text x="380" y="200">Account no. → "XXXX"</text>
              <text x="380" y="232" font-size="11" fill="#9b99b8">Keep only what the task needs</text>
              <rect x="511" y="40" width="234" height="210" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="628" y="66" font-size="13" font-weight="700" fill="#6ee7b7">Fine to share</text>
              <text x="628" y="96">Made-up sample data</text>
              <text x="628" y="122">Rounded amounts (₹48,000)</text>
              <text x="628" y="148">Categories (rent, food)</text>
              <text x="628" y="174">General money questions</text>
              <text x="628" y="200">Totals with no ID numbers</text>
              <text x="628" y="232" font-size="11" fill="#9b99b8">Still check the answer</text>
              <text x="380" y="282" fill="#9b99b8">Then check the AI's maths yourself, with a calculator or =SUM() in a sheet.</text>
            </g>
          </svg>
          <figcaption>Sort every detail before you share it. Some details must never leave your hands. Others need masking first.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Never share these details</h3>
          <ul class="lc-list">
            <li><strong>OTP</strong> (one-time password: the short code your bank sends to confirm a payment), UPI PIN, CVV (the 3-digit code on the back of a card) and passwords.</li>
            <li>Full bank account numbers and full card numbers.</li>
            <li>PAN (Permanent Account Number: your income tax ID) and Aadhaar numbers.</li>
            <li>Net banking login IDs, and photos or scans of cards, cheques or ID documents.</li>
          </ul>
          <p>Why? Many AI tools save your chats. Some tools may use chats to improve their models, unless you turn this off. Check each tool's privacy settings and data policy, because they change. A work account may also have different rules from a personal one.</p>
          <p>Remember this simple rule too. Your bank will never need your OTP, PIN or password from you. Anyone who asks for them is likely a scammer. This includes a chatbot, a caller or a website.</p>
        </div>
        <div class="lc-card">
          <h3>Use sample data, or mask the real data</h3>
          <p>Most money questions do not need your real details. The AI only needs the amounts and the categories. To mask data means to replace private details with safe labels.</p>
          <table class="lc-table">
            <thead><tr><th>Real line (made-up here)</th><th>Safe version to share</th></tr></thead>
            <tbody>
              <tr><td>12 Sep, UPI to rohan.k@navkar, ₹2,340, A/c 123456789012</td><td>12 Sep, UPI to Friend A, ₹2,340, groceries</td></tr>
              <tr><td>Salary from LedgerLite Pvt Ltd, ₹65,000, Ananya K.</td><td>Salary from Employer, ₹65,000</td></tr>
              <tr><td>Card 4821 7788 1203 5566, ₹1,875, online grocery order</td><td>Card, ₹1,875, groceries</td></tr>
            </tbody>
          </table>
          <p><strong>Tip:</strong> you can round amounts too. "About ₹48,000 of expenses" is enough for most budget questions.</p>
          <p>Business owners must be extra careful. Customer names, supplier bank details and company accounts are not yours to share with a public AI tool. Follow your company's AI rules.</p>
        </div>
        <div class="lc-card">
          <h3>Check the AI's maths</h3>
          <p>AI tools can make adding mistakes, especially with long lists. They can also sound very sure while being wrong. Here is a worked example.</p>
          <p>Ananya asks an AI to add four sample grocery bills: ₹2,340, ₹1,875, ₹960 and ₹3,125. The AI says the total is ₹7,300. That is wrong.</p>
          <pre><code>  A            B
        1 Bill         Amount
        2 Shop 1       2340
        3 Shop 2       1875
        4 Shop 3       960
        5 Shop 4       3125
        6 Total        =SUM(B2:B5)      shows 8300
        7 Share of pay =B6/65000        shows 12.8%</code></pre>
          <p>The real total is ₹8,300. That is about 12.8% of her ₹65,000 pay, not 11.2%.</p>
          <ul class="lc-list">
            <li><strong>Estimate first.</strong> 2,300 + 1,900 + 1,000 + 3,100 is about 8,300. So ₹7,300 looks wrong at once.</li>
            <li><strong>Ask the AI to show each step.</strong> Mistakes are easier to spot.</li>
            <li><strong>Check facts too.</strong> Tax rules, interest rates and fees change. Check official sources, not only the AI.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Activity: a safe AI session, step by step</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="warn" data-label="Stop">Ananya is about to upload her full bank statement PDF. It shows her account number, her PAN and her UPI IDs.</li>
              <li data-kind="thought" data-label="Think">She only wants her grocery total. So she copies just the four grocery amounts and leaves out every name and number.</li>
              <li data-kind="user" data-label="Ananya asks">"Add these sample grocery bills: ₹2,340, ₹1,875, ₹960 and ₹3,125. What share of ₹65,000 is the total?"</li>
              <li data-kind="answer" data-label="AI replies">"Your grocery total is ₹7,300. That is about 11.2% of your income."</li>
              <li data-kind="tool" data-label="Spreadsheet">She types the four amounts into a sheet and adds =SUM(B2:B5) below them.</li>
              <li data-kind="result" data-label="Sheet shows">The total is ₹8,300, and =B6/65000 shows 12.8%. The AI was wrong by ₹1,000.</li>
              <li data-kind="check" data-label="Fix it">She tells the AI the correct total. She uses ₹8,300 in her budget, and she keeps the checking habit.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask the AI to act as a privacy checker. It will find the private details in a made-up note and give you a safe version.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a privacy checker for people who ask AI tools about money.
        I want to ask an AI about my spending. Before I share, check the text below. All details are made-up.

        Text:
        [Name: Ananya K. Navkar Bank A/c 123456789012. PAN ABCDE1234F.
        12 Sep UPI to rohan.k@navkar ₹2,340 groceries
        14 Sep card 4821 7788 1203 5566 ₹1,875 groceries
        15 Sep salary from LedgerLite Pvt Ltd ₹65,000
        My OTP for the last payment was 482913.]

        Tasks:
        1. List every private detail in the text. Say why each one is risky.
        2. Rewrite the text with private details removed or replaced (for example "Friend A" or "XXXX").
        3. Keep only what is needed to answer a spending question.
        4. Give me 3 simple rules for sharing money data with AI.

        Format: a table for task 1, then the safe text, then the rules. Use simple English.</pre>
            <ul class="ai-try-checks">
              <li>It finds the account number, PAN, UPI ID, card number, OTP, name and employer.</li>
              <li>The safe text keeps the dates, amounts and categories, and nothing that identifies a person.</li>
              <li>It says an OTP must never be shared with anyone.</li>
              <li>The rules are simple and match this lesson.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> The AI needs amounts and categories, not your identity. Never share OTPs, PINs, passwords, PAN or account numbers. Always check the AI's maths yourself.
        </div>
      HTML
      starter_code: nil
    },
    3 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-fin">Finance</div>
          <h1 class="lc-title">Your Money Snapshot</h1>
        </div>
        <p class="lc-lead">A <strong>money snapshot</strong> is one simple sheet that shows your whole money picture. It lists your income, your fixed and variable expenses, what you own and what you owe. In this lesson, you will build one for a made-up family with the help of AI. You will also write the spreadsheet formulas and check the totals. A good snapshot is the starting point for a budget and for savings goals.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 290" role="img" aria-label="A dashboard for Ravi and Meena. Top row: monthly income 1,10,000 rupees, monthly expenses 81,500 rupees, and 28,500 rupees left each month. Bottom row: assets 15,70,000 rupees minus debts 3,02,000 rupees equals net worth 12,68,000 rupees.">
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="380" y="24" font-weight="700">Ravi and Meena's money snapshot (made-up numbers)</text>
              <text x="15" y="50" text-anchor="start" font-size="11" fill="#9b99b8">EVERY MONTH</text>
              <rect x="15" y="58" width="230" height="80" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="130" y="82" fill="#93c5fd">Monthly income</text>
              <text x="130" y="108" font-size="17" font-weight="700">₹1,10,000</text>
              <text x="130" y="127" font-size="11" fill="#9b99b8">two take-home salaries</text>
              <rect x="265" y="58" width="230" height="80" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="380" y="82" fill="#f9a8d4">Monthly expenses</text>
              <text x="380" y="108" font-size="17" font-weight="700">₹81,500</text>
              <text x="380" y="127" font-size="11" fill="#9b99b8">fixed ₹45,800 + variable ₹35,700</text>
              <rect x="515" y="58" width="230" height="80" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="630" y="82" fill="#6ee7b7">Left each month</text>
              <text x="630" y="108" font-size="17" font-weight="700">₹28,500</text>
              <text x="630" y="127" font-size="11" fill="#9b99b8">income − expenses</text>
              <text x="15" y="166" text-anchor="start" font-size="11" fill="#9b99b8">TODAY</text>
              <rect x="15" y="174" width="230" height="80" rx="10" fill="#27274e" stroke="#22d3ee"/>
              <text x="130" y="198" fill="#67e8f9">Assets (own)</text>
              <text x="130" y="224" font-size="17" font-weight="700">₹15,70,000</text>
              <text x="130" y="243" font-size="11" fill="#9b99b8">bank, FD, funds, PPF, car</text>
              <text x="255" y="221" font-size="20" fill="#9b99b8">−</text>
              <rect x="265" y="174" width="230" height="80" rx="10" fill="#27274e" stroke="#8b5cf6"/>
              <text x="380" y="198" fill="#c4b5fd">Debts (owe)</text>
              <text x="380" y="224" font-size="17" font-weight="700">₹3,02,000</text>
              <text x="380" y="243" font-size="11" fill="#9b99b8">car loan, credit card bill</text>
              <text x="505" y="221" font-size="20" fill="#9b99b8">=</text>
              <rect x="515" y="174" width="230" height="80" rx="10" fill="#27274e" stroke="#f59e0b"/>
              <text x="630" y="198" fill="#fcd34d">Net worth</text>
              <text x="630" y="224" font-size="17" font-weight="700">₹12,68,000</text>
              <text x="630" y="243" font-size="11" fill="#9b99b8">assets − debts</text>
              <text x="380" y="280" font-size="12" fill="#9b99b8">The top row is a monthly flow. The bottom row is a picture of one day.</text>
            </g>
          </svg>
          <figcaption>A snapshot answers two questions: how does a normal month go, and where do we stand today?</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The five parts of a snapshot</h3>
          <table class="lc-table">
            <thead><tr><th>Part</th><th>What it means</th><th>Examples</th></tr></thead>
            <tbody>
              <tr><td><strong>Income</strong></td><td>Money that comes in each month, after tax</td><td>Salary, business income, rent you receive</td></tr>
              <tr><td><strong>Fixed expenses</strong></td><td>Costs that stay about the same every month</td><td>Rent, loan EMI (the same amount you pay each month on a loan), school fees</td></tr>
              <tr><td><strong>Variable expenses</strong></td><td>Costs that change from month to month</td><td>Groceries, electricity, fuel, eating out</td></tr>
              <tr><td><strong>Assets</strong></td><td>Things you own that have money value</td><td>Bank balance, FD (fixed deposit), mutual funds, PPF, a car</td></tr>
              <tr><td><strong>Debts</strong></td><td>Money you still owe</td><td>Loan balance left to pay, unpaid credit card bill</td></tr>
            </tbody>
          </table>
          <p>PPF means Public Provident Fund: a long-term savings scheme backed by the government. Some costs come once a year, like school fees or insurance premiums. Divide them by 12 to get a monthly share. For example, school fees of ₹72,000 a year are ₹6,000 a month.</p>
        </div>
        <div class="lc-card">
          <h3>Worked example: Ravi and Meena's sheet</h3>
          <p>Ravi and Meena are a made-up married couple in Los Angeles with one child. Here is their monthly sheet. Column A has labels. Column B has amounts in ₹.</p>
          <pre><code>   A                              B
        1  Item                           Amount (₹)
        2  Ravi take-home pay             72000
        3  Meena take-home pay            38000
        4  TOTAL INCOME                   =SUM(B2:B3)       110000
        5  Rent                           22000
        6  School fees (monthly share)    6000
        7  Car loan EMI                   9500
        8  Insurance (monthly share)      3000
        9  Phone, internet, streaming     1800
        10 Domestic help                  3500
        11 FIXED TOTAL                    =SUM(B5:B10)      45800
        12 Groceries                      14000
        13 Electricity                    2200
        14 Fuel and transport             5000
        15 Eating out                     5500
        16 Medical                        2000
        17 Shopping and gifts             4500
        18 Child's classes                2500
        19 VARIABLE TOTAL                 =SUM(B12:B18)     35700
        20 LEFT EACH MONTH                =B4-B11-B19       28500</code></pre>
          <p>Now the "today" part. Their assets are: bank ₹2,40,000, FDs ₹3,00,000, mutual funds ₹4,60,000, PPF ₹2,20,000 and the car at about ₹3,50,000. That adds up to ₹15,70,000.</p>
          <p>Their debts are: car loan still owed ₹2,80,000 and credit card bill ₹22,000. That adds up to ₹3,02,000.</p>
          <p><strong>Net worth</strong> = ₹15,70,000 − ₹3,02,000 = <strong>₹12,68,000</strong>.</p>
          <p>Notice two things. The car loan appears twice, in different ways. The EMI of ₹9,500 is a monthly expense. The ₹2,80,000 still owed is a debt. Also, the car value is only an estimate, and a car loses value every year.</p>
        </div>
        <div class="lc-card">
          <h3>How AI helps, and what you check</h3>
          <ul class="lc-list">
            <li><strong>AI can:</strong> turn messy notes into a clean layout, suggest groups, write formulas, and point out missing items like yearly costs or festival spending.</li>
            <li><strong>You check:</strong> that each formula covers the right cells. A formula like =SUM(B5:B9) would miss row 10.</li>
            <li><strong>You check:</strong> that the totals match a quick estimate. ₹22,000 rent plus ₹9,500 EMI plus other fixed costs should be near ₹45,000.</li>
            <li><strong>You decide:</strong> what counts as fixed or variable for your family. There is no single right answer.</li>
          </ul>
          <p>Use made-up or rounded numbers when you ask AI for help. Never paste account numbers or real statements into a public AI tool. Update your snapshot once a month, on the same day.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: sort Ravi and Meena's items</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Put each item from the snapshot into the right group.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="fixed" data-label="Fixed expense"></div>
              <div data-sorter-target="bucket" data-bucket="variable" data-label="Variable expense"></div>
              <div data-sorter-target="bucket" data-bucket="asset" data-label="Asset"></div>
              <div data-sorter-target="bucket" data-bucket="debt" data-label="Debt"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="fixed" data-why="Rent is the same amount every month.">Rent of ₹22,000 a month</li>
              <li data-bucket="variable" data-why="The grocery bill changes from month to month.">Groceries, about ₹14,000 a month</li>
              <li data-bucket="debt" data-why="This is money they still owe the bank.">Car loan still owed: ₹2,80,000</li>
              <li data-bucket="asset" data-why="PPF is savings they own.">PPF balance of ₹2,20,000</li>
              <li data-bucket="variable" data-why="It goes up in summer when the AC runs more.">Electricity bill, about ₹2,200 a month</li>
              <li data-bucket="fixed" data-why="The EMI is the same payment every month. It is an expense, not the debt itself.">Car loan EMI of ₹9,500 a month</li>
              <li data-bucket="debt" data-why="An unpaid card bill is money owed to the card company.">Credit card bill of ₹22,000</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask the AI to build a snapshot sheet with formulas. Then type it into Excel or Google Sheets and check that the totals match.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a friendly spreadsheet coach. This is education only, not financial advice.
        Build a money snapshot for [Ravi and Meena, a couple in Los Angeles with one child]. All numbers are made-up and monthly unless stated.

        Income: [Ravi ₹72,000, Meena ₹38,000]
        Fixed: [rent ₹22,000, school fees ₹72,000 a year, car EMI ₹9,500, insurance ₹36,000 a year, phone and internet ₹1,800, domestic help ₹3,500]
        Variable: [groceries ₹14,000, electricity ₹2,200, fuel ₹5,000, eating out ₹5,500, medical ₹2,000, shopping ₹4,500, child's classes ₹2,500]
        Assets today: [bank ₹2,40,000, FDs ₹3,00,000, mutual funds ₹4,60,000, PPF ₹2,20,000, car ₹3,50,000]
        Debts today: [car loan ₹2,80,000, credit card ₹22,000]

        Tasks:
        1. Turn yearly costs into monthly amounts.
        2. Give a sheet layout: row numbers, labels in column A, amounts in column B.
        3. Write Excel or Google Sheets formulas for each total, money left each month and net worth.
        4. Show the result of each formula so I can check it.
        5. List 3 costs families often forget.</pre>
            <ul class="ai-try-checks">
              <li>With the sample numbers: income ₹1,10,000, fixed ₹45,800, variable ₹35,700, left ₹28,500.</li>
              <li>Net worth is ₹15,70,000 − ₹3,02,000 = ₹12,68,000.</li>
              <li>Each SUM formula covers the right rows. Test it in a real sheet.</li>
              <li>The car EMI is an expense, and the car loan balance is a debt.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A snapshot has two views: a normal month (income, fixed and variable costs) and today (assets and debts). Let AI draft the layout and formulas. You check every total in a real sheet.
        </div>
      HTML
      starter_code: nil
    },
    4 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-fin">Finance</div>
          <h1 class="lc-title">Prompts for Money Questions</h1>
        </div>
        <p class="lc-lead">The way you ask a money question changes the answer you get. In this lesson, you will learn four useful kinds of money prompts: explain a term, compare options, list pros and cons, and ask what to check. You will see a weak prompt next to a better one, with a worked example. Good prompts give you clear, checkable answers instead of vague or risky advice.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 290" role="img" aria-label="Four kinds of money questions: explain, compare, pros and cons, and what to check. Arrows lead down to one good money prompt made of a role, sample numbers, a question, an output format and a request to list what to check.">
            <defs><marker id="pf4a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="380" y="24" font-weight="700">Four kinds of money questions to ask AI</text>
              <rect x="15" y="40" width="170" height="112" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="100" y="66" font-weight="700" fill="#93c5fd">1. Explain</text>
              <text x="100" y="94" font-size="11.5" fill="#9b99b8">"What is a SIP?</text>
              <text x="100" y="112" font-size="11.5" fill="#9b99b8">Use a ₹ example."</text>
              <rect x="205" y="40" width="170" height="112" rx="10" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="290" y="66" font-weight="700" fill="#67e8f9">2. Compare</text>
              <text x="290" y="94" font-size="11.5" fill="#9b99b8">"FD or recurring</text>
              <text x="290" y="112" font-size="11.5" fill="#9b99b8">deposit? Use a table."</text>
              <rect x="395" y="40" width="170" height="112" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="480" y="66" font-weight="700" fill="#fcd34d">3. Pros and cons</text>
              <text x="480" y="94" font-size="11.5" fill="#9b99b8">"EMI or pay in full:</text>
              <text x="480" y="112" font-size="11.5" fill="#9b99b8">pros and cons?"</text>
              <rect x="585" y="40" width="160" height="112" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="665" y="66" font-weight="700" fill="#f9a8d4">4. What to check</text>
              <text x="665" y="94" font-size="11.5" fill="#9b99b8">"What should I ask</text>
              <text x="665" y="112" font-size="11.5" fill="#9b99b8">the bank first?"</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#pf4a)">
                <line x1="100" y1="154" x2="100" y2="190"/>
                <line x1="290" y1="154" x2="290" y2="190"/>
                <line x1="480" y1="154" x2="480" y2="190"/>
                <line x1="665" y1="154" x2="665" y2="190"/>
              </g>
              <rect x="15" y="194" width="730" height="80" rx="10" fill="#27274e" stroke="#10b981"/>
              <text x="380" y="222" font-weight="700" fill="#6ee7b7">A good money prompt = role + your sample numbers + one clear question</text>
              <text x="380" y="252" font-size="12">+ output format + "show your maths" + "list what I should check"</text>
            </g>
          </svg>
          <figcaption>Pick the kind of question you need. Then add context, sample numbers and a clear format.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Four kinds of money prompts</h3>
          <table class="lc-table">
            <thead><tr><th>Kind</th><th>Use it when</th><th>Start your prompt like this</th></tr></thead>
            <tbody>
              <tr><td><strong>Explain</strong></td><td>You meet a word you do not know</td><td>"Explain [term] in simple English, with a small ₹ example."</td></tr>
              <tr><td><strong>Compare</strong></td><td>You have two or more options</td><td>"Compare [option A] and [option B] in a table: cost, risk, flexibility."</td></tr>
              <tr><td><strong>Pros and cons</strong></td><td>You are weighing one choice</td><td>"List the pros and cons of [choice] for someone like me."</td></tr>
              <tr><td><strong>What to check</strong></td><td>You are close to a decision</td><td>"What should I check, and whom should I ask, before I [action]?"</td></tr>
            </tbody>
          </table>
          <p>The last kind is the most useful and the most forgotten. It turns the AI from a "decider" into a helper that prepares you. Then you can ask the right questions to the bank, the seller or a professional.</p>
        </div>
        <div class="lc-card">
          <h3>Weak prompt vs better prompt: a worked example</h3>
          <p>Ananya wants a new phone. She can pay ₹30,000 now. Or she can pay 6 monthly EMIs of ₹5,300. An EMI (equated monthly instalment) is the same amount you pay every month.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Is EMI good for buying a phone?</code></pre>
          <p>This gives a general answer that may not fit her case. It may also sound like advice.</p>
          <p><strong>Better prompt:</strong></p>
          <pre><code>You are a patient money teacher. This is education only.
        Made-up situation: I earn ₹65,000 a month (take-home).
        A phone costs ₹30,000 if I pay now, or 6 EMIs of ₹5,300.
        1. Compare the total cost of both options. Show your maths.
        2. List pros and cons of each option.
        3. List what I should check in the offer before I decide.
        Do not tell me which to choose.</code></pre>
          <p><strong>The maths to check:</strong></p>
          <table class="lc-table">
            <thead><tr><th>Option</th><th>Total paid</th><th>Extra cost</th></tr></thead>
            <tbody>
              <tr><td>Pay now</td><td>₹30,000</td><td>₹0</td></tr>
              <tr><td>6 EMIs of ₹5,300</td><td>6 × ₹5,300 = ₹31,800</td><td>₹1,800, which is 6% of ₹30,000</td></tr>
            </tbody>
          </table>
          <p>Also check the offer terms for a processing fee or a lost cash discount. Some "no-cost EMI" offers still have costs like these.</p>
        </div>
        <div class="lc-card">
          <h3>Simple rules for every money prompt</h3>
          <ul class="lc-list">
            <li><strong>Use made-up or rounded numbers.</strong> Never share account numbers, PAN or passwords.</li>
            <li><strong>Ask it to show the maths.</strong> Then check it with a calculator.</li>
            <li><strong>Ask for pros and cons, not "the best".</strong> "Best" depends on your whole life, which the AI does not know.</li>
            <li><strong>Ask it not to state rates or tax rules as facts.</strong> These change. Ask where to check them, such as RBI, SEBI or the Income Tax Department website.</li>
            <li><strong>Be careful with links and sources.</strong> AI can invent a source that does not exist. Open and read it yourself.</li>
            <li><strong>Ask "who should I talk to?"</strong> For big decisions, that may be a chartered accountant or a SEBI-registered investment adviser.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Activity: improving a money question</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Weak prompt">"Should I buy the phone on EMI?"</li>
              <li data-kind="answer" data-label="AI replies">"Yes. No-cost EMI is always free, so it is a smart choice."</li>
              <li data-kind="warn" data-label="Problem">"Always free" is too strong. Offers can have fees or a lost discount. Also, the AI chose for her without knowing her situation.</li>
              <li data-kind="user" data-label="Better prompt">Ananya adds a role, the made-up numbers (₹30,000 now or 6 × ₹5,300), and asks for a comparison, pros and cons, and what to check.</li>
              <li data-kind="answer" data-label="AI replies">A table: pay now ₹30,000, EMI total ₹31,800, extra ₹1,800 (6%). Then pros, cons and a list: fees, discounts lost, missed-payment charges.</li>
              <li data-kind="tool" data-label="Calculator">She types 6 × 5,300 and gets 31,800. Then 1,800 ÷ 30,000 gives 0.06, which is 6%.</li>
              <li data-kind="check" data-label="Decide">The maths is right. She reads the real offer terms and decides herself, based on her own budget.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Use this template for any money question. Change the situation and the question in brackets. Keep the numbers made-up or rounded.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a patient money teacher for beginners in India. This is education only, not financial advice.

        My situation (made-up sample): [I am 28, salaried, take-home pay ₹65,000 a month, emergency savings ₹1,20,000].
        My question: [Should I buy a ₹30,000 phone by paying in full now, or with 6 monthly EMIs of ₹5,300?]

        Please:
        1. Explain any money terms in my question in simple words.
        2. Compare the options in a table: total cost, monthly cost, extra cost in ₹ and in %. Show your maths.
        3. List the pros and cons of each option.
        4. List what I should check before deciding, and who can help (for example the seller, my bank or a qualified professional).

        Rules: Do not tell me what to choose. Do not state interest rates, fees or tax rules as facts. Say where I can check them. If you are not sure about something, say so.</pre>
            <ul class="ai-try-checks">
              <li>With the sample numbers, the EMI total is ₹31,800 and the extra cost is ₹1,800 (6%).</li>
              <li>The maths steps are shown, and they match your calculator.</li>
              <li>The answer does not choose for you or state rates as facts.</li>
              <li>The "what to check" list includes fees, discounts and missed-payment charges.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Ask AI to explain, compare, list pros and cons, and list what to check. Give it sample numbers and ask it to show the maths. Do not ask it to choose for you.
        </div>
      HTML
      starter_code: nil
    },
    5 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-fin">Finance</div>
          <h1 class="lc-title">Making a Budget with AI</h1>
        </div>
        <p class="lc-lead">A <strong>budget</strong> is a plan for your money before the month starts. In this lesson, you will learn two simple budget methods: the <strong>50/30/20 idea</strong> and <strong>zero-based budgeting</strong>. You will adapt them to real Indian household costs, like city rent, school fees and money for parents. You will use AI to draft a budget, and you will check its numbers in a sheet.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="Two bars. The 50/30/20 guide for 65,000 rupees: needs 50 percent or 32,500 rupees, wants 30 percent or 19,500 rupees, save 20 percent or 13,000 rupees. Ananya's real month: needs 54 percent or 35,000 rupees, wants 20 percent or 13,000 rupees, save 26 percent or 17,000 rupees.">
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="380" y="24" font-weight="700">The 50/30/20 idea vs Ananya's real month (₹65,000 take-home)</text>
              <text x="15" y="86" text-anchor="start" font-weight="700">50/30/20 guide</text>
              <rect x="140" y="52" width="300" height="60" fill="#27274e" stroke="#8b5cf6"/>
              <text x="290" y="77" fill="#c4b5fd">Needs 50%</text>
              <text x="290" y="98">₹32,500</text>
              <rect x="440" y="52" width="180" height="60" fill="#27274e" stroke="#3b82f6"/>
              <text x="530" y="77" fill="#93c5fd">Wants 30%</text>
              <text x="530" y="98">₹19,500</text>
              <rect x="620" y="52" width="120" height="60" fill="#27274e" stroke="#10b981"/>
              <text x="680" y="77" fill="#6ee7b7">Save 20%</text>
              <text x="680" y="98">₹13,000</text>
              <text x="15" y="171" text-anchor="start" font-weight="700">Ananya's month</text>
              <rect x="140" y="137" width="323" height="60" fill="#27274e" stroke="#8b5cf6"/>
              <text x="301" y="162" fill="#c4b5fd">Needs 54%</text>
              <text x="301" y="183">₹35,000</text>
              <rect x="463" y="137" width="120" height="60" fill="#27274e" stroke="#3b82f6"/>
              <text x="523" y="162" fill="#93c5fd">Wants 20%</text>
              <text x="523" y="183">₹13,000</text>
              <rect x="583" y="137" width="157" height="60" fill="#27274e" stroke="#10b981"/>
              <text x="661" y="162" fill="#6ee7b7">Save 26%</text>
              <text x="661" y="183">₹17,000</text>
              <text x="380" y="228" font-size="12" fill="#9b99b8">Needs: rent, groceries, bills, transport, money to parents</text>
              <text x="380" y="250" font-size="12" fill="#9b99b8">Wants: eating out, shopping, other fun. Save: emergency fund, investing, goals</text>
              <text x="380" y="282" font-size="12" fill="#fcd34d">A guide, not a rule. Big-city rent can push needs above 50%.</text>
            </g>
          </svg>
          <figcaption>The 50/30/20 idea gives a starting shape. Ananya spends more on needs, less on wants, and saves more than 20%.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The 50/30/20 idea</h3>
          <p>This idea splits your take-home pay into three parts:</p>
          <ul class="lc-list">
            <li><strong>50% for needs:</strong> things you must pay for, like rent, groceries, bills, transport and loan EMIs.</li>
            <li><strong>30% for wants:</strong> things you enjoy but could cut, like eating out, shopping and trips.</li>
            <li><strong>20% for saving:</strong> an emergency fund (money kept aside for surprises, like a job loss or a hospital bill), investing and goals.</li>
          </ul>
          <p>Here is Ananya's made-up month, sorted into the three parts.</p>
          <table class="lc-table">
            <thead><tr><th>Part</th><th>50/30/20 guide</th><th>Ananya's actual</th><th>Actual share</th></tr></thead>
            <tbody>
              <tr><td>Needs (rent ₹16,000, groceries ₹7,500, bills ₹3,000, transport ₹3,500, parents ₹5,000)</td><td>₹32,500</td><td>₹35,000</td><td>about 54%</td></tr>
              <tr><td>Wants (eating out ₹6,000, shopping ₹4,000, other ₹3,000)</td><td>₹19,500</td><td>₹13,000</td><td>20%</td></tr>
              <tr><td>Savings</td><td>₹13,000</td><td>₹17,000</td><td>about 26%</td></tr>
              <tr><td><strong>Total</strong></td><td>₹65,000</td><td>₹65,000</td><td>100%</td></tr>
            </tbody>
          </table>
          <p>In a sheet, put her pay in B1. Then =B1*50% gives ₹32,500, =B1*30% gives ₹19,500 and =B1*20% gives ₹13,000. To find an actual share, use =35000/B1 and format the cell as a percentage.</p>
        </div>
        <div class="lc-card">
          <h3>Adapting it to an Indian household</h3>
          <p>The 50/30/20 split is only a starting point. Many Indian families have costs that push "needs" higher:</p>
          <ul class="lc-list">
            <li>High rent in big cities like New York, San Francisco or London</li>
            <li>School fees, tuition and coaching classes</li>
            <li>Money sent to parents or other family members</li>
            <li>Yearly costs like festivals, weddings and insurance premiums</li>
          </ul>
          <p>Take Ravi and Meena in Los Angeles. Their take-home pay is ₹1,10,000. Their needs are ₹69,000 (about 63%). Their wants are ₹12,500 (about 11%). They have ₹28,500 left to save (about 26%). Needs are above 50%, but they still save more than 20%. That is fine. The split should fit your life.</p>
          <p><strong>Yearly costs:</strong> turn them into a monthly amount. If they spend about ₹18,000 on Pongal and Diwali gifts each year, they set aside ₹18,000 ÷ 12 = ₹1,500 every month.</p>
        </div>
        <div class="lc-card">
          <h3>Zero-based budgeting: give every rupee a job</h3>
          <p>In a <strong>zero-based budget</strong>, you plan where every rupee goes before the month starts. Income minus your plan should equal zero. "Zero" does not mean you spend everything. Savings are also a job for your money.</p>
          <table class="lc-table">
            <thead><tr><th>Job for the money</th><th>Ananya's plan (₹)</th></tr></thead>
            <tbody>
              <tr><td>Rent</td><td>16,000</td></tr>
              <tr><td>Groceries</td><td>7,500</td></tr>
              <tr><td>Electricity, phone and internet</td><td>3,000</td></tr>
              <tr><td>Transport</td><td>3,500</td></tr>
              <tr><td>Money to parents</td><td>5,000</td></tr>
              <tr><td>Eating out</td><td>5,000</td></tr>
              <tr><td>Shopping</td><td>3,000</td></tr>
              <tr><td>Buffer for small surprises</td><td>2,000</td></tr>
              <tr><td>Emergency fund</td><td>10,000</td></tr>
              <tr><td>Monthly investing, for example a SIP</td><td>5,000</td></tr>
              <tr><td>Trip fund</td><td>5,000</td></tr>
              <tr><td><strong>Total planned</strong></td><td><strong>65,000</strong></td></tr>
            </tbody>
          </table>
          <p>A SIP (systematic investment plan) means putting a fixed amount into a mutual fund every month. This is only an example, not a suggestion to invest. In a sheet, a check cell like =B1-SUM(B2:B12) should show 0. If it shows a number, some rupees still have no job.</p>
          <p><strong>How AI helps:</strong> it can sort your sample expenses, draft both budget types and explain the gaps. <strong>What you check:</strong> the totals, the needs and wants groups, and whether the plan is realistic for you. This is education only. For personal advice, speak to a qualified professional.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: build a zero-based budget</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put the steps for making a zero-based budget in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Write down your take-home pay for the coming month.</li>
              <li data-order="2">List your fixed costs, like rent, EMIs and school fees.</li>
              <li data-order="3">Set your saving amount next, before any wants.</li>
              <li data-order="4">Plan your variable spending, like groceries, travel and eating out.</li>
              <li data-order="5">Give any leftover rupees a job, until income minus the plan is zero.</li>
              <li data-order="6">Track your spending during the month and adjust next month's plan.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask the AI to draft two budgets from a made-up month. Then check its totals in a sheet.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a friendly budget coach for people in India. This is education only, not financial advice.

        Made-up month for [Ananya, 28, salaried, lives alone in London]:
        Take-home pay: [₹65,000]
        Spending: [rent ₹16,000, groceries ₹7,500, bills ₹3,000, transport ₹3,500, money to parents ₹5,000, eating out ₹6,000, shopping ₹4,000, other ₹3,000]
        Goals: [build an emergency fund, save for a trip]

        Tasks:
        1. Sort the spending into needs and wants. Explain any item that could go either way.
        2. Show the 50/30/20 amounts and compare them with the actual amounts and percentages.
        3. Draft a zero-based budget where income minus the plan equals ₹0. Include saving for the goals.
        4. Give Excel or Google Sheets formulas to check the totals.
        5. Suggest 2 small changes to try, and say what I should check first.

        Rules: Show your maths. Do not recommend any fund or product. Use simple English and tables.</pre>
            <ul class="ai-try-checks">
              <li>With the sample numbers, 50/30/20 gives ₹32,500, ₹19,500 and ₹13,000.</li>
              <li>The zero-based plan adds up to exactly ₹65,000. Check it with =SUM() in a sheet.</li>
              <li>The needs and wants groups make sense for your life.</li>
              <li>No fund or product is recommended.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> The 50/30/20 idea gives a starting shape. A zero-based budget gives every rupee a job. Change the split to fit your life, and always check the totals yourself.
        </div>
      HTML
      starter_code: nil
    },
    6 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-fin">Finance</div>
          <h1 class="lc-title">Sorting Your Spending</h1>
        </div>
        <p class="lc-lead">A budget tells you what you <em>plan</em> to spend. Your bank or UPI statement shows what you <em>really</em> spent. In this lesson, you will sort a sample statement into categories with the help of AI. Then you will total each category in a spreadsheet and look for patterns and <strong>leaks</strong> (small, repeated costs that add up without you noticing). This is the fastest way to find money you can save.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 330" role="img" aria-label="A five-step workflow: export the statement, hide private data, let AI sort the rows, total them in a sheet, then check the results yourself. Below it, a bar chart of Ananya's made-up September spending by category, with eating out, subscriptions and an unclear transfer marked as places to look.">
            <defs><marker id="pf6a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="10" y="14" width="130" height="54" rx="8" fill="#27274e" stroke="#3b82f6"/><text x="75" y="37">Export statement</text><text x="75" y="56" font-size="11" fill="#9b99b8">CSV or PDF</text>
              <rect x="162" y="14" width="130" height="54" rx="8" fill="#27274e" stroke="#ec4899"/><text x="227" y="37">Hide private data</text><text x="227" y="56" font-size="11" fill="#9b99b8">account no., names</text>
              <rect x="314" y="14" width="130" height="54" rx="8" fill="#27274e" stroke="#8b5cf6"/><text x="379" y="37">AI sorts rows</text><text x="379" y="56" font-size="11" fill="#9b99b8">into categories</text>
              <rect x="466" y="14" width="130" height="54" rx="8" fill="#27274e" stroke="#22d3ee"/><text x="531" y="37">Totals in a sheet</text><text x="531" y="56" font-size="11" fill="#9b99b8">SUMIF by category</text>
              <rect x="618" y="14" width="130" height="54" rx="8" fill="#27274e" stroke="#10b981"/><text x="683" y="37">You check</text><text x="683" y="56" font-size="11" fill="#9b99b8">odd rows, leaks</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#pf6a)">
                <line x1="141" y1="41" x2="159" y2="41"/>
                <line x1="293" y1="41" x2="311" y2="41"/>
                <line x1="445" y1="41" x2="463" y2="41"/>
                <line x1="597" y1="41" x2="615" y2="41"/>
              </g>
              <rect x="10" y="88" width="740" height="234" rx="12" fill="#1f1f44" stroke="#4b4a78"/>
              <text x="380" y="112" font-weight="700" fill="#86efac">Ananya's September spending (made-up sample)</text>
              <g text-anchor="end" font-size="12">
                <text x="150" y="140">Rent</text>
                <text x="150" y="163">Groceries</text>
                <text x="150" y="186">Savings (SIP)</text>
                <text x="150" y="209">Unclear transfer</text>
                <text x="150" y="232">Eating out</text>
                <text x="150" y="255">Utilities</text>
                <text x="150" y="278">Subscriptions</text>
                <text x="150" y="301">Transport</text>
              </g>
              <rect x="160" y="128" width="448" height="16" rx="3" fill="#3b82f6"/>
              <rect x="160" y="151" width="144" height="16" rx="3" fill="#3b82f6"/>
              <rect x="160" y="174" width="140" height="16" rx="3" fill="#10b981"/>
              <rect x="160" y="197" width="56" height="16" rx="3" fill="#f59e0b"/>
              <rect x="160" y="220" width="50" height="16" rx="3" fill="#ec4899"/>
              <rect x="160" y="243" width="49" height="16" rx="3" fill="#3b82f6"/>
              <rect x="160" y="266" width="48" height="16" rx="3" fill="#ec4899"/>
              <rect x="160" y="289" width="28" height="16" rx="3" fill="#3b82f6"/>
              <g text-anchor="start" font-size="12">
                <text x="616" y="140">₹16,000</text>
                <text x="312" y="163">₹5,150</text>
                <text x="308" y="186">₹5,000</text>
                <text x="224" y="209">₹2,000</text>
                <text x="218" y="232">₹1,770</text>
                <text x="217" y="255">₹1,749</text>
                <text x="216" y="278">₹1,699</text>
                <text x="196" y="301">₹1,000</text>
              </g>
              <g text-anchor="start" font-size="12">
                <text x="420" y="209" fill="#fcd34d">Who is this? Ask before you sort it.</text>
                <text x="420" y="232" fill="#f9a8d4">4 small food orders: a possible leak</text>
                <text x="420" y="278" fill="#f9a8d4">Gym not used this month</text>
              </g>
            </g>
          </svg>
          <figcaption>AI does the slow sorting. The spreadsheet does the maths. You decide what each pattern means.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Step 1: get your data ready safely</h3>
          <p>Most banks and UPI apps let you download a statement as a PDF or a CSV file. A CSV is a simple table file that opens in Excel or Google Sheets. It is easier to work with.</p>
          <p>Before you share any part of it with an AI tool, remove private details:</p>
          <ul class="lc-list">
            <li>Delete account numbers, card numbers, UPI IDs and phone numbers.</li>
            <li>Replace people's names with a label, such as "Friend" or "Landlord".</li>
            <li>Keep only three columns: date, description and amount.</li>
          </ul>
          <p>Even safer: do the sorting in your own spreadsheet, and only ask AI for help with category names and formulas. In this lesson, we use a made-up statement for Ananya, a 28-year-old software tester in London.</p>
          <table class="lc-table">
            <thead><tr><th>Date</th><th>Description (cleaned)</th><th>Amount (₹)</th><th>Category</th></tr></thead>
            <tbody>
              <tr><td>01 Sep</td><td>Rent to landlord</td><td>16,000</td><td>Rent</td></tr>
              <tr><td>02 Sep</td><td>Electricity bill</td><td>1,450</td><td>Utilities</td></tr>
              <tr><td>03 Sep</td><td>QuickBite food order</td><td>420</td><td>Eating out</td></tr>
              <tr><td>05 Sep</td><td>FreshCart groceries</td><td>2,800</td><td>Groceries</td></tr>
              <tr><td>06 Sep</td><td>QuickBite food order</td><td>380</td><td>Eating out</td></tr>
              <tr><td>08 Sep</td><td>StreamMax monthly plan</td><td>499</td><td>Subscriptions</td></tr>
              <tr><td>09 Sep</td><td>Metro card recharge</td><td>1,000</td><td>Transport</td></tr>
              <tr><td>12 Sep</td><td>QuickBite food order</td><td>510</td><td>Eating out</td></tr>
              <tr><td>14 Sep</td><td>SIP to mutual fund</td><td>5,000</td><td>Savings</td></tr>
              <tr><td>15 Sep</td><td>FitZone gym fee</td><td>1,200</td><td>Subscriptions</td></tr>
              <tr><td>18 Sep</td><td>Mobile recharge</td><td>299</td><td>Utilities</td></tr>
              <tr><td>20 Sep</td><td>QuickBite food order</td><td>460</td><td>Eating out</td></tr>
              <tr><td>22 Sep</td><td>UPI transfer to "Friend"</td><td>2,000</td><td>Ask me</td></tr>
              <tr><td>25 Sep</td><td>FreshCart groceries</td><td>2,350</td><td>Groceries</td></tr>
            </tbody>
          </table>
          <p>QuickBite, FreshCart, StreamMax and FitZone are made-up names. All amounts are sample data.</p>
        </div>
        <div class="lc-card">
          <h3>Step 2: let AI sort, then total in a sheet</h3>
          <p>A weak prompt leaves the AI to guess everything:</p>
          <pre><code>Categorise my spending.</code></pre>
          <p>A better prompt gives a fixed list of categories and a rule for unclear rows:</p>
          <pre><code>You are helping me sort a made-up bank statement.
        Use only these categories: Rent, Groceries, Eating out, Transport,
        Utilities, Subscriptions, Savings, Other.
        If a row is unclear, write "Ask me". Do not guess.
        Return a table: Date | Description | Amount | Category.
        Do not add up the totals. I will do that in my spreadsheet.</code></pre>
          <p>Why not let AI add the totals? AI tools can make arithmetic mistakes, and a long list makes this more likely. A spreadsheet is exact. Paste the categories back into your sheet and use <code>SUMIF</code> (a formula that adds only the rows that match a label):</p>
          <pre><code>=SUMIF(D2:D15, "Eating out", C2:C15)</code></pre>
          <p>For Ananya, this gives ₹1,770 for eating out. All the rows together add up to ₹34,368. Check that your category totals add up to the same number as the whole column. If they do not, a row is missing or sorted twice.</p>
        </div>
        <div class="lc-card">
          <h3>Step 3: find patterns and leaks</h3>
          <p>Now ask questions about the totals. You can ask AI to suggest questions, but you answer them from your own sheet.</p>
          <ul class="lc-list">
            <li><strong>Repeated small costs.</strong> Ananya ordered food four times. Each order looks small, but together they cost ₹1,770.</li>
            <li><strong>Things you pay for but do not use.</strong> She paid ₹1,200 for the gym but did not go this month.</li>
            <li><strong>Unclear rows.</strong> The ₹2,000 transfer could be a loan to a friend or a shared bill. Only Ananya knows.</li>
            <li><strong>Good news.</strong> She saved ₹5,000 through an SIP (systematic investment plan: a fixed amount invested every month).</li>
          </ul>
          <p>One month can be unusual. Look at two or three months before you decide that something is a real pattern.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: sort Ananya's spending</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each payment into a group. Is it a need, a want, savings, or something only Ananya can explain?</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="need" data-label="Need"></div>
              <div data-sorter-target="bucket" data-bucket="want" data-label="Want"></div>
              <div data-sorter-target="bucket" data-bucket="save" data-label="Savings"></div>
              <div data-sorter-target="bucket" data-bucket="ask" data-label="Ask first"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="need" data-why="She must pay rent to keep her home.">Rent to landlord, ₹16,000</li>
              <li data-bucket="need" data-why="Basic food at home is an essential cost.">FreshCart groceries, ₹2,800</li>
              <li data-bucket="want" data-why="It is nice to have, but she can cook or eat out less.">QuickBite food order, ₹510</li>
              <li data-bucket="save" data-why="This money goes towards her future, not spending.">SIP to mutual fund, ₹5,000</li>
              <li data-bucket="want" data-why="She did not use it this month, so it is not a need right now.">FitZone gym fee, ₹1,200</li>
              <li data-bucket="ask" data-why="The statement does not say why. AI must not guess this.">UPI transfer to "Friend", ₹2,000</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to sort a made-up statement and point out patterns. Replace the sample rows with your own cleaned rows, or leave them as they are.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a friendly money helper. This is education only, not financial advice.

        Here is a made-up UPI statement for [Ananya, a salaried tester in London] for [September]:
        01 Sep | Rent to landlord | 16000
        03 Sep | QuickBite food order | 420
        05 Sep | FreshCart groceries | 2800
        08 Sep | StreamMax monthly plan | 499
        12 Sep | QuickBite food order | 510
        15 Sep | FitZone gym fee | 1200
        22 Sep | UPI transfer to Friend | 2000
        [add or change rows here]

        Tasks:
        1. Put each row in one category: Rent, Groceries, Eating out, Transport, Utilities, Subscriptions, Savings, Other.
        2. If a row is unclear, write "Ask me". Do not guess.
        3. Show a table: Date | Description | Amount | Category.
        4. List 3 patterns or possible leaks, with the rows that show each one.
        5. Give me the Google Sheets SUMIF formula to total each category myself.
        Do not ask for account numbers or other private details.</pre>
            <ul class="ai-try-checks">
              <li>Every row appears once, with the same amount you gave.</li>
              <li>The unclear transfer is marked "Ask me", not guessed.</li>
              <li>The patterns point to real rows, not invented ones.</li>
              <li>You total the categories in your sheet, and they match the whole column.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Let AI do the sorting, let the spreadsheet do the maths, and do the thinking yourself. Remove private details first. The biggest savings often hide in small costs that repeat every week.
        </div>
      HTML
      starter_code: nil
    },
    7 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-fin">Finance</div>
          <h1 class="lc-title">Cutting Costs Without Pain</h1>
        </div>
        <p class="lc-lead">Cutting costs does not have to mean giving up everything you enjoy. The easiest savings come from things you do not use, bills you never compare, and small habits that repeat. In this lesson, you will use AI to find these savings in a sample family budget. You will also learn to check every AI suggestion, because AI does not know your real prices, plans or needs.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="A before and after bar chart of monthly costs for Ravi and Meena, a made-up family in Los Angeles. Subscriptions fall from 3,546 to 1,747 rupees, phone and internet from 1,800 to 1,300, groceries from 14,000 to 13,300 and eating out from 6,000 to 4,500. The total falls from 25,346 to 20,847 rupees a month.">
            <g font-family="inherit" font-size="12" fill="#e2e0f0">
              <text x="380" y="24" text-anchor="middle" font-size="13" font-weight="700" fill="#86efac">Ravi and Meena: monthly costs before and after (made-up)</text>
              <rect x="250" y="38" width="14" height="10" fill="#9b99b8"/><text x="270" y="47">Before</text>
              <rect x="340" y="38" width="14" height="10" fill="#10b981"/><text x="360" y="47">After</text>
              <g text-anchor="end" font-size="13">
                <text x="160" y="84">Subscriptions</text>
                <text x="160" y="138">Phone + internet</text>
                <text x="160" y="192">Groceries</text>
                <text x="160" y="246">Eating out</text>
              </g>
              <rect x="170" y="66" width="101" height="14" rx="3" fill="#9b99b8"/><text x="279" y="77">₹3,546</text>
              <rect x="170" y="84" width="50" height="14" rx="3" fill="#10b981"/><text x="228" y="95">₹1,747</text>
              <rect x="170" y="120" width="51" height="14" rx="3" fill="#9b99b8"/><text x="229" y="131">₹1,800</text>
              <rect x="170" y="138" width="37" height="14" rx="3" fill="#10b981"/><text x="215" y="149">₹1,300</text>
              <rect x="170" y="174" width="400" height="14" rx="3" fill="#9b99b8"/><text x="578" y="185">₹14,000</text>
              <rect x="170" y="192" width="380" height="14" rx="3" fill="#10b981"/><text x="558" y="203">₹13,300</text>
              <rect x="170" y="228" width="171" height="14" rx="3" fill="#9b99b8"/><text x="349" y="239">₹6,000</text>
              <rect x="170" y="246" width="129" height="14" rx="3" fill="#10b981"/><text x="307" y="257">₹4,500</text>
              <g text-anchor="start" font-size="11.5" fill="#9b99b8">
                <text x="420" y="84">Cancelled: unused gym, 2nd video app</text>
                <text x="420" y="138">Moved to a cheaper plan after comparing</text>
                <text x="420" y="246">Home-cooked Sunday dinner</text>
              </g>
              <text x="380" y="288" text-anchor="middle" font-size="13" fill="#86efac">Total: ₹25,346 before, ₹20,847 after. About ₹4,500 saved each month.</text>
            </g>
          </svg>
          <figcaption>Most of the saving came from things the family did not miss. Groceries changed only a little.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Four places to look first</h3>
          <table class="lc-table">
            <thead><tr><th>Place</th><th>What to look for</th><th>How AI helps</th><th>What you must check</th></tr></thead>
            <tbody>
              <tr><td><strong>Subscriptions</strong></td><td>Apps, streaming, gym, cloud storage you rarely use</td><td>Lists them from your cleaned statement and adds a yearly cost</td><td>Do you really use it? Is there a cancel fee or a lock-in (a minimum time you must pay for)?</td></tr>
              <tr><td><strong>Bills</strong></td><td>Mobile, internet, electricity, insurance premiums</td><td>Suggests questions to ask your provider and what to compare</td><td>Current plans and prices on the provider's own website</td></tr>
              <tr><td><strong>Bulk buying</strong></td><td>Rice, oil, dal, soap and other things you use every month</td><td>Works out the price per kg or per litre</td><td>Storage space, expiry dates, and whether you will use it all</td></tr>
              <tr><td><strong>Habits</strong></td><td>Food delivery, cabs, impulse shopping</td><td>Suggests small swaps and a weekly limit</td><td>Whether the swap fits your family's life</td></tr>
            </tbody>
          </table>
          <p>Always count costs over a year. A ₹499 monthly plan looks small, but it is ₹5,988 a year.</p>
        </div>
        <div class="lc-card">
          <h3>Worked example: Ravi and Meena's subscriptions</h3>
          <p>Ravi and Meena live in Los Angeles with their young son. Here are their monthly subscriptions (made-up names and prices):</p>
          <table class="lc-table">
            <thead><tr><th>Subscription</th><th>Per month (₹)</th><th>How often used</th><th>Decision</th></tr></thead>
            <tbody>
              <tr><td>Video app A</td><td>499</td><td>Every day</td><td>Keep</td></tr>
              <tr><td>Video app B</td><td>299</td><td>Twice in 3 months</td><td>Cancel</td></tr>
              <tr><td>Music app</td><td>119</td><td>Every day</td><td>Keep</td></tr>
              <tr><td>Cloud storage</td><td>130</td><td>Holds family photos</td><td>Keep</td></tr>
              <tr><td>Gym membership</td><td>1,500</td><td>Twice in 3 months</td><td>Cancel, walk instead</td></tr>
              <tr><td>Son's learning app</td><td>999</td><td>Every day</td><td>Keep</td></tr>
            </tbody>
          </table>
          <p>Total before: ₹3,546 a month, or ₹42,552 a year. Cancelling two items saves ₹1,799 a month. That is ₹21,588 a year. They lose almost nothing they enjoy.</p>
          <p><strong>Bulk buying example.</strong> A 5 kg rice bag costs ₹340, so ₹68 per kg. A 25 kg bag costs ₹1,550, so ₹62 per kg. The family uses 20 kg a month, so they save ₹120 a month. That is small, but it only works if they have dry storage space.</p>
          <p><strong>A savings challenge.</strong> Try the 52-week challenge: save ₹50 in week 1, ₹100 in week 2, and so on, up to ₹2,600 in week 52. At the end of the year, you have ₹68,900. The last weeks are hard, so some people start with the biggest amount first.</p>
        </div>
        <div class="lc-card">
          <h3>Weak prompt, better prompt</h3>
          <pre><code>How can I save money?</code></pre>
          <p>This gives a general list, such as "make coffee at home". A better prompt gives your real (cleaned) numbers and asks for checks:</p>
          <pre><code>Here are our monthly costs in ₹ (a family of 3 in Los Angeles):
        [list of costs]
        Suggest 5 ways to cut costs that will not hurt our quality of life.
        For each: the likely saving per month and per year,
        how hard it is (easy, medium, hard), and what we must check first.
        Do not state prices of specific plans or brands. Mark anything you are unsure about.</code></pre>
          <p>AI does not know today's prices. It may suggest a "cheaper plan" that no longer exists. Check every suggestion on the provider's own website before you act.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: a cost-cutting session with AI</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Meena asks">Here are our six subscriptions with prices and how often we use them. Which ones should we look at first? Give the yearly cost of each.</li>
              <li data-kind="answer" data-label="AI replies">Look at the gym (₹1,500 a month, used twice in 3 months) and Video app B (₹299 a month, used twice). Together they cost ₹1,799 a month, or about ₹21,000 a year.</li>
              <li data-kind="tool" data-label="Meena opens her sheet">She types <code>=1799*12</code> in Google Sheets to check the yearly number.</li>
              <li data-kind="result" data-label="The sheet shows">₹21,588. The AI rounded it down. The exact number is a little higher.</li>
              <li data-kind="warn" data-label="A mistake to catch">The AI also says, "Switch your mobile to the ₹199 family plan." Meena never gave it any plan names or prices. The AI may have invented this plan.</li>
              <li data-kind="check" data-label="Meena checks">She checks her mobile provider's website. The plan it named does not exist. She compares the real plans herself.</li>
              <li data-kind="check" data-label="Before cancelling">She reads the gym's terms. There is no lock-in, so she cancels before the next billing date.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI for cost-cutting ideas based on a made-up family budget. Change the costs to your own rough numbers if you like.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a practical money coach. This is education only, not financial advice.

        Household: [Ravi and Meena, a couple in Los Angeles with one child].
        Monthly costs in ₹ (made-up):
        [Rent 22,000; Groceries 14,000; Eating out and delivery 6,000; Mobile and internet 1,800; Electricity 2,200; Video apps 798; Gym 1,500 (used twice in 3 months); Child's learning app 999; Cabs 2,500]

        Tasks:
        1. Suggest 5 ways to cut costs that will not hurt our quality of life.
        2. For each idea, give the likely saving per month and per year in ₹.
        3. Rate each idea: easy, medium or hard.
        4. Say what we must check before we act (terms, lock-in, real prices).
        5. Suggest one simple savings challenge for the family.

        Rules: Do not name or price specific plans, brands or offers. Show your maths for each saving. Put the ideas in a table.</pre>
            <ul class="ai-try-checks">
              <li>Each yearly saving is the monthly saving times 12. Check it in a sheet.</li>
              <li>No invented plan names, prices or offers.</li>
              <li>The ideas keep the things the family uses every day.</li>
              <li>Each idea says what to check before acting.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Start with what you do not use, then compare your bills, then change small habits. Count every cost over a full year. AI can list ideas quickly, but only you and the provider's website can confirm the real prices and terms.
        </div>
      HTML
      starter_code: nil
    },
    8 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-fin">Finance</div>
          <h1 class="lc-title">Saving Goals</h1>
        </div>
        <p class="lc-lead">"I want to save more" is a wish. "I will save ₹1,50,000 in 20 months for my emergency fund" is a goal. A clear goal has an amount, a deadline and a monthly saving. In this lesson, you will turn wishes into goals and build a goals table in a spreadsheet. You will use AI to check whether your goals fit your budget. You will also learn what an emergency fund is and why it usually comes first.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 270" role="img" aria-label="The saving goal formula for Ananya's emergency fund: a target of 2,10,000 rupees minus 60,000 already saved leaves 1,50,000 still needed. Divided by 20 months, that is 7,500 rupees a month. A progress bar shows about 29 percent saved. Below, her four goals in priority order: emergency fund, laptop, beach holiday and home deposit.">
            <defs><marker id="pf8a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="380" y="22" font-weight="700" fill="#86efac">Ananya's emergency fund (made-up numbers)</text>
              <rect x="10" y="36" width="125" height="60" rx="8" fill="#27274e" stroke="#3b82f6"/><text x="72" y="58" font-size="11" fill="#9b99b8">Target</text><text x="72" y="82" font-size="15" font-weight="700">₹2,10,000</text>
              <rect x="163" y="36" width="125" height="60" rx="8" fill="#27274e" stroke="#22d3ee"/><text x="225" y="58" font-size="11" fill="#9b99b8">Saved so far</text><text x="225" y="82" font-size="15" font-weight="700">₹60,000</text>
              <rect x="316" y="36" width="125" height="60" rx="8" fill="#27274e" stroke="#8b5cf6"/><text x="378" y="58" font-size="11" fill="#9b99b8">Still needed</text><text x="378" y="82" font-size="15" font-weight="700">₹1,50,000</text>
              <rect x="469" y="36" width="125" height="60" rx="8" fill="#27274e" stroke="#f59e0b"/><text x="531" y="58" font-size="11" fill="#9b99b8">Months left</text><text x="531" y="82" font-size="15" font-weight="700">20</text>
              <rect x="622" y="36" width="125" height="60" rx="8" fill="#1f1f44" stroke="#10b981" stroke-width="2"/><text x="684" y="58" font-size="11" fill="#9b99b8">Save each month</text><text x="684" y="82" font-size="15" font-weight="700" fill="#86efac">₹7,500</text>
              <g font-size="20" fill="#9b99b8">
                <text x="149" y="73">−</text>
                <text x="302" y="73">=</text>
                <text x="455" y="73">÷</text>
                <text x="608" y="73">=</text>
              </g>
              <text x="380" y="122" font-size="12" fill="#9b99b8">Target = 6 months × ₹35,000 of essential costs</text>
              <text x="40" y="148" text-anchor="start" font-size="12">Progress: ₹60,000 of ₹2,10,000 (about 29%)</text>
              <rect x="40" y="156" width="680" height="18" rx="9" fill="#27274e" stroke="#4b4a78"/>
              <rect x="40" y="156" width="194" height="18" rx="9" fill="#10b981"/>
              <text x="380" y="206" font-size="12" fill="#9b99b8">Her goals in priority order</text>
              <rect x="20" y="218" width="160" height="38" rx="8" fill="#27274e" stroke="#10b981"/><text x="100" y="242">1. Emergency fund</text>
              <rect x="210" y="218" width="160" height="38" rx="8" fill="#27274e" stroke="#3b82f6"/><text x="290" y="242">2. New laptop</text>
              <rect x="400" y="218" width="160" height="38" rx="8" fill="#27274e" stroke="#ec4899"/><text x="480" y="242">3. Beach holiday</text>
              <rect x="590" y="218" width="160" height="38" rx="8" fill="#27274e" stroke="#f59e0b"/><text x="670" y="242">4. Home deposit</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#pf8a)">
                <line x1="182" y1="237" x2="207" y2="237"/>
                <line x1="372" y1="237" x2="397" y2="237"/>
                <line x1="562" y1="237" x2="587" y2="237"/>
              </g>
            </g>
          </svg>
          <figcaption>Every saving goal uses the same simple sum. The hard part is choosing which goal comes first.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The emergency fund comes first</h3>
          <p>An <strong>emergency fund</strong> is money you keep only for surprises. For example: losing your job, a medical bill or an urgent home repair. Without it, people often use a credit card or a loan in an emergency. That makes a bad month much more expensive.</p>
          <ul class="lc-list">
            <li><strong>How much?</strong> A common rule of thumb is 3 to 6 months of <em>essential</em> costs (rent, food, bills, EMIs, insurance). It is a starting point, not a fixed rule.</li>
            <li><strong>Who may need more?</strong> Freelancers and business owners with uneven income, and families with only one earner.</li>
            <li><strong>Where to keep it?</strong> Somewhere safe that you can reach quickly. For example, a savings account, or a fixed deposit that allows early withdrawal (check the penalty).</li>
          </ul>
          <p>Ananya's essential costs (rent, groceries, bills, transport and money to her parents) are ₹35,000 a month. Six months is ₹2,10,000. She already has ₹60,000, so she needs ₹1,50,000 more.</p>
          <p>This is general education, not financial advice. For your own plan, speak to a qualified adviser, such as a SEBI-registered investment adviser.</p>
        </div>
        <div class="lc-card">
          <h3>Build a goals table</h3>
          <p>Put every goal in one table. Use these columns and formulas in Excel or Google Sheets (goal names in column A, starting in row 2):</p>
          <table class="lc-table">
            <thead><tr><th>Goal</th><th>Target (₹)</th><th>Saved (₹)</th><th>Still needed</th><th>Months</th><th>Per month (₹)</th></tr></thead>
            <tbody>
              <tr><td>Emergency fund</td><td>2,10,000</td><td>60,000</td><td>1,50,000</td><td>20</td><td>7,500</td></tr>
              <tr><td>New laptop</td><td>80,000</td><td>0</td><td>80,000</td><td>10</td><td>8,000</td></tr>
              <tr><td>Beach holiday</td><td>30,000</td><td>0</td><td>30,000</td><td>6</td><td>5,000</td></tr>
              <tr><td>Home deposit</td><td>6,00,000</td><td>0</td><td>6,00,000</td><td>60</td><td>10,000</td></tr>
              <tr><td><strong>Total</strong></td><td></td><td></td><td></td><td></td><td><strong>30,500</strong></td></tr>
            </tbody>
          </table>
          <pre><code>Still needed (D2):   =B2-C2
        Per month (F2):      =ROUNDUP(D2/E2, 0)
        Total per month:     =SUM(F2:F5)</code></pre>
          <p>Ananya can save ₹20,000 a month after her budget. Her goals need ₹30,500. The gap is ₹10,500. So she must change some deadlines.</p>
          <table class="lc-table">
            <thead><tr><th>Goal</th><th>New plan</th><th>Per month (₹)</th></tr></thead>
            <tbody>
              <tr><td>Emergency fund</td><td>Keep 20 months (top priority)</td><td>7,500</td></tr>
              <tr><td>New laptop</td><td>16 months instead of 10</td><td>5,000</td></tr>
              <tr><td>Beach holiday</td><td>10 months instead of 6</td><td>3,000</td></tr>
              <tr><td>Home deposit</td><td>A smaller start for now</td><td>4,500</td></tr>
              <tr><td><strong>Total</strong></td><td></td><td><strong>20,000</strong></td></tr>
            </tbody>
          </table>
          <p>When the emergency fund is full, she moves that ₹7,500 to the home deposit. The goals now fit her real budget.</p>
        </div>
        <div class="lc-card">
          <h3>Using AI for goals, and what to watch</h3>
          <p>AI is good at turning a vague wish into a clear goal. It can also suggest a fair order and new deadlines. But check its maths in your sheet. AI sometimes divides wrongly or forgets a goal in the total.</p>
          <p><strong>Be careful with "expected returns".</strong> AI may say, "Invest the money and it will grow at 12%." Returns are never guaranteed. For goals only a few years away, many people plan with no return, or a small one. Here is the difference for a ₹3,00,000 goal in 36 months:</p>
          <pre><code>No return:              =ROUNDUP(300000/36, 0)      gives ₹8,334 a month
        A made-up 6% a year:    =PMT(6%/12, 36, 0, -300000) gives about ₹7,627 a month</code></pre>
          <p>If the return does not come, the lower amount leaves you short. Plan with the safer number.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: set a saving goal, step by step</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put these steps in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Write down the goal and why it matters to you</li>
              <li data-order="2">Find out the target amount (check real prices)</li>
              <li data-order="3">Subtract the money you have already saved for it</li>
              <li data-order="4">Choose a deadline and count the months</li>
              <li data-order="5">Divide to get the monthly saving</li>
              <li data-order="6">Check that all your goals together fit your budget</li>
              <li data-order="7">Set up an automatic transfer on salary day</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to build a goals table and check whether your goals fit your budget. Change the goals and numbers in brackets, or use the sample.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a patient money coach. This is education only, not financial advice.

        About me: [a 28-year-old salaried tester in London].
        Essential monthly costs: [₹35,000]. Money I can save each month: [₹20,000].
        My goals (made-up):
        [Emergency fund: target 6 months of essential costs, saved ₹60,000, 20 months
        New laptop: ₹80,000, saved 0, 10 months
        Beach holiday: ₹30,000, saved 0, 6 months
        Home deposit: ₹6,00,000, saved 0, 60 months]

        Tasks:
        1. Make a table: Goal | Target | Saved | Still needed | Months | Per month.
        2. Assume no investment return. Show your maths.
        3. Add up the monthly total. Does it fit my monthly saving?
        4. If not, suggest a priority order and new deadlines that fit. Explain why.
        5. Give me the Excel or Google Sheets formulas so I can check the table myself.</pre>
            <ul class="ai-try-checks">
              <li>The emergency fund target is 6 × the essential costs you gave.</li>
              <li>Each monthly amount is "still needed" divided by months. Check it in a sheet.</li>
              <li>The new plan adds up to no more than your monthly saving.</li>
              <li>No promised returns, and no advice to buy a specific product.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A goal needs an amount, a deadline and a monthly saving. Build the emergency fund first. Then make sure all your goals together fit your real budget. If they do not, change the deadlines, not the maths.
        </div>
      HTML
      starter_code: nil
    },
    9 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-fin">Finance</div>
          <h1 class="lc-title">Understanding Compounding and Inflation</h1>
        </div>
        <p class="lc-lead">Two quiet forces change the value of your money over time. <strong>Compounding</strong> makes savings grow faster the longer you leave them. <strong>Inflation</strong> makes the same rupees buy less each year. In this lesson, you will work through both with made-up numbers. You will also learn to check AI's answers in a spreadsheet, because AI often gets these sums wrong.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 270" role="img" aria-label="Left: 1,00,000 rupees at a made-up 8 percent a year. After 5 years, simple interest gives 1,40,000 and compound interest gives 1,46,933. After 10 years, simple gives 1,80,000 and compound gives 2,15,892. Right: with 6 percent inflation a year, 1,00,000 rupees in 10 years buys only what 55,839 rupees buys today.">
            <g font-family="inherit" font-size="12" fill="#e2e0f0">
              <rect x="10" y="10" width="395" height="215" rx="12" fill="#1f1f44" stroke="#10b981"/>
              <text x="207" y="36" text-anchor="middle" font-size="13" font-weight="700" fill="#86efac">₹1,00,000 at 8% a year</text>
              <g text-anchor="end">
                <text x="125" y="72">5 yrs simple</text>
                <text x="125" y="102">5 yrs compound</text>
                <text x="125" y="146">10 yrs simple</text>
                <text x="125" y="176">10 yrs compound</text>
              </g>
              <rect x="132" y="60" width="123" height="16" rx="3" fill="#9b99b8"/><text x="262" y="72">₹1,40,000</text>
              <rect x="132" y="90" width="129" height="16" rx="3" fill="#10b981"/><text x="268" y="102">₹1,46,933</text>
              <rect x="132" y="134" width="158" height="16" rx="3" fill="#9b99b8"/><text x="297" y="146">₹1,80,000</text>
              <rect x="132" y="164" width="190" height="16" rx="3" fill="#10b981"/><text x="329" y="176">₹2,15,892</text>
              <text x="207" y="210" text-anchor="middle" font-size="11.5" fill="#9b99b8">The gap grows every year you wait.</text>
              <rect x="420" y="10" width="330" height="215" rx="12" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="585" y="36" text-anchor="middle" font-size="13" font-weight="700" fill="#fcd34d">Inflation at 6% a year</text>
              <text x="585" y="62" text-anchor="middle" font-size="11.5" fill="#9b99b8">What ₹1,00,000 can buy, in today's rupees</text>
              <g text-anchor="end">
                <text x="518" y="98">Today</text>
                <text x="518" y="138">In 10 years</text>
              </g>
              <rect x="525" y="86" width="150" height="16" rx="3" fill="#f59e0b"/><text x="682" y="98">₹1,00,000</text>
              <rect x="525" y="126" width="84" height="16" rx="3" fill="#ec4899"/><text x="616" y="138">₹55,839</text>
              <text x="585" y="180" text-anchor="middle" font-size="11.5" fill="#9b99b8">Same notes, but they buy less.</text>
              <text x="585" y="200" text-anchor="middle" font-size="11.5" fill="#9b99b8">Prices rise about 1.79 times.</text>
              <text x="380" y="255" text-anchor="middle" font-size="13" fill="#e2e0f0">Real return: 8% growth with 6% inflation is only about 2% a year.</text>
            </g>
          </svg>
          <figcaption>All numbers are made up for learning. Real interest rates and inflation change over time.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Simple interest and compound interest</h3>
          <p><strong>Simple interest</strong> is paid only on the money you first put in (the <strong>principal</strong>). <strong>Compound interest</strong> is paid on the principal <em>and</em> on the interest you have already earned. So the interest itself starts to earn interest.</p>
          <p>Example: Ananya puts ₹1,00,000 in a made-up deposit that pays 8% a year, added once a year.</p>
          <table class="lc-table">
            <thead><tr><th>After</th><th>Simple interest (₹)</th><th>Compound interest (₹)</th></tr></thead>
            <tbody>
              <tr><td>1 year</td><td>1,08,000</td><td>1,08,000</td></tr>
              <tr><td>2 years</td><td>1,16,000</td><td>1,16,640</td></tr>
              <tr><td>3 years</td><td>1,24,000</td><td>1,25,971</td></tr>
              <tr><td>5 years</td><td>1,40,000</td><td>1,46,933</td></tr>
              <tr><td>10 years</td><td>1,80,000</td><td>2,15,892</td></tr>
            </tbody>
          </table>
          <pre><code>Simple:    =100000 + 100000*8%*10       gives 1,80,000
        Compound:  =100000*(1+8%)^10            gives 2,15,892.50
        Same, with a built-in formula:  =FV(8%, 10, 0, -100000)</code></pre>
          <p>The two are the same after year 1. After that, compounding pulls ahead. Time matters more than anything else here. That is why starting early helps, even with small amounts.</p>
          <p><strong>A quick check: the rule of 72.</strong> Divide 72 by the yearly rate to guess how many years it takes to double. At 8%, 72 ÷ 8 = 9 years. It is only a rough guide, but it helps you spot an AI answer that is far off.</p>
        </div>
        <div class="lc-card">
          <h3>Inflation and real return</h3>
          <p><strong>Inflation</strong> is the general rise in prices over time. If prices rise 6% a year, something that costs ₹1,00,000 today will cost about ₹1,79,085 in 10 years. Put another way, ₹1,00,000 in 10 years will buy only what about ₹55,839 buys today.</p>
          <pre><code>Future price:      =100000*(1+6%)^10     gives about 1,79,085
        Today's value:     =100000/(1+6%)^10     gives about 55,839</code></pre>
          <p>Now join the two ideas. Ananya's ₹2,15,892 after 10 years is worth about ₹1,20,553 in today's rupees. Her money doubled on paper, but it bought only about 20% more.</p>
          <p>The <strong>real return</strong> is your growth after inflation. A quick guess is: return minus inflation. So 8% minus 6% is about 2%. The exact figure is a little lower: 1.08 ÷ 1.06 − 1 = about 1.89%.</p>
          <p>This matters for every goal. If your savings grow more slowly than prices, you are losing buying power, even though the number in your account goes up. Taxes on interest can reduce the real return further. Ask a chartered accountant how tax applies to you.</p>
          <p>Inflation and interest rates change. For current figures, check official sources such as the Reserve Bank of India (RBI) or your bank's website. Do not trust a rate an AI gives you without checking it.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: catch the AI's maths mistake</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Ananya asks">If I put ₹1,00,000 in a deposit at 8% a year, compounded yearly, how much will I have after 10 years?</li>
              <li data-kind="answer" data-label="AI replies">You earn ₹8,000 a year, so after 10 years you will have ₹1,80,000.</li>
              <li data-kind="warn" data-label="Something is wrong">₹8,000 every year is <em>simple</em> interest. With compounding, the interest grows each year. The answer should be higher.</li>
              <li data-kind="check" data-label="Quick sense check">Rule of 72: 72 ÷ 8 = about 9 years to double. So after 10 years she should have a bit more than ₹2,00,000.</li>
              <li data-kind="tool" data-label="Ananya opens her sheet">She types <code>=100000*(1+8%)^10</code> in Google Sheets.</li>
              <li data-kind="result" data-label="The sheet shows">215892.4997. That is about ₹2,15,892.</li>
              <li data-kind="user" data-label="Ananya asks again">You used simple interest. Please recalculate with yearly compounding and show each year in a table.</li>
              <li data-kind="answer" data-label="AI corrects itself">The table now ends at ₹2,15,892.50 after 10 years. It matches her sheet.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to explain compounding and inflation with your own numbers, and to give you formulas so you can check its answers.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a clear, patient maths teacher. This is education only, not financial advice.

        Use these made-up numbers:
        Amount: [₹1,00,000]. Yearly return: [8%], compounded once a year. Time: [10 years]. Inflation: [6% a year].

        Tasks:
        1. Explain simple interest and compound interest in 3 short sentences each.
        2. Make a table for each year: Year | Simple interest total | Compound interest total.
        3. Say what the final compound amount is worth in today's rupees after inflation.
        4. Work out the real return per year, both the quick way and the exact way.
        5. Give the Excel or Google Sheets formula for every number, so I can check it.

        Rules: Round to the nearest rupee. Use Indian number format (1,00,000). Do not suggest any product or say what returns I will get.</pre>
            <ul class="ai-try-checks">
              <li>The compound total after 10 years matches <code>=100000*(1+8%)^10</code> in your sheet.</li>
              <li>The simple interest total goes up by exactly ₹8,000 each year.</li>
              <li>With the sample numbers, the final amount is worth about ₹1,20,553 in today's rupees.</li>
              <li>The real return is about 2%, not 14%.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Compounding rewards time, and inflation quietly takes value away. Always think in real returns: growth minus inflation. Check every AI calculation with one spreadsheet formula, because AI often confuses simple and compound interest.
        </div>
      HTML
      starter_code: nil
    },
    10 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-fin">Finance</div>
          <h1 class="lc-title">Loans, EMIs and Credit Cards</h1>
        </div>
        <p class="lc-lead">A loan lets you buy something now and pay for it over time. But you always pay back more than you borrow. In this lesson, you will learn how an EMI works, how to find the real cost of a loan, and how to compare two loan offers. You will also learn the most common credit card traps. AI can explain terms and help with the maths, but you check every number against the lender's own documents.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 294" role="img" aria-label="Two made-up car loan offers for 5,00,000 rupees. Offer A: 10 percent for 5 years, EMI about 10,624 rupees, total interest about 1,37,400, fee 2,500, total cost about 1,39,900. Offer B: 9 percent for 7 years, EMI about 8,045 rupees, total interest about 1,75,700, fee 7,500, total cost about 1,83,200. Offer B has the lower EMI but costs about 43,300 rupees more.">
            <defs><marker id="pf10a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12.5" fill="#e2e0f0">
              <rect x="20" y="10" width="330" height="196" rx="12" fill="#1f1f44" stroke="#10b981"/>
              <text x="185" y="36" text-anchor="middle" font-size="14" font-weight="700" fill="#86efac">Offer A: Navkar Bank</text>
              <g text-anchor="start">
                <text x="40" y="60">Loan amount</text>
                <text x="40" y="82">Interest rate</text>
                <text x="40" y="104">Time</text>
                <text x="40" y="126">EMI</text>
                <text x="40" y="148">Total interest</text>
                <text x="40" y="170">Processing fee</text>
                <text x="40" y="192" font-weight="700">Total cost</text>
              </g>
              <g text-anchor="end">
                <text x="330" y="60">₹5,00,000</text>
                <text x="330" y="82">10% a year</text>
                <text x="330" y="104">5 years (60 EMIs)</text>
                <text x="330" y="126">about ₹10,624</text>
                <text x="330" y="148">about ₹1,37,400</text>
                <text x="330" y="170">₹2,500</text>
                <text x="330" y="192" font-weight="700" fill="#86efac">about ₹1,39,900</text>
              </g>
              <rect x="410" y="10" width="330" height="196" rx="12" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="575" y="36" text-anchor="middle" font-size="14" font-weight="700" fill="#fcd34d">Offer B: a dealer's lender</text>
              <g text-anchor="start">
                <text x="430" y="60">Loan amount</text>
                <text x="430" y="82">Interest rate</text>
                <text x="430" y="104">Time</text>
                <text x="430" y="126">EMI</text>
                <text x="430" y="148">Total interest</text>
                <text x="430" y="170">Processing fee</text>
                <text x="430" y="192" font-weight="700">Total cost</text>
              </g>
              <g text-anchor="end">
                <text x="720" y="60">₹5,00,000</text>
                <text x="720" y="82">9% a year</text>
                <text x="720" y="104">7 years (84 EMIs)</text>
                <text x="720" y="126" fill="#fcd34d">about ₹8,045</text>
                <text x="720" y="148">about ₹1,75,700</text>
                <text x="720" y="170">₹7,500</text>
                <text x="720" y="192" font-weight="700" fill="#fca5a5">about ₹1,83,200</text>
              </g>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#pf10a)">
                <path d="M185,208 L300,236"/>
                <path d="M575,208 L460,236"/>
              </g>
              <rect x="130" y="240" width="500" height="44" rx="10" fill="#27274e" stroke="#ec4899"/>
              <text x="380" y="267" text-anchor="middle" font-size="13">Lower rate and lower EMI, but B costs about ₹43,300 more</text>
            </g>
          </svg>
          <figcaption>Made-up offers for Ravi and Meena's car loan. A longer loan means more months of interest, so a lower EMI can cost more in total.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>What an EMI is</h3>
          <p>An <strong>EMI</strong> (equated monthly instalment) is the fixed amount you pay the lender every month. Each EMI has two parts: <strong>interest</strong> (the lender's charge) and <strong>principal</strong> (the part that pays back the amount you borrowed).</p>
          <p>Most home, car and personal loans in India use a <strong>reducing balance</strong> method. Interest is charged only on the amount you still owe. So early EMIs are mostly interest. Later EMIs are mostly principal.</p>
          <pre><code>EMI = P × r × (1 + r)^n ÷ ((1 + r)^n − 1)
        P = loan amount, r = yearly rate ÷ 12 ÷ 100, n = number of months

        In Excel or Google Sheets:
        =PMT(10%/12, 60, -500000)     gives 10,623.52</code></pre>
          <p>For Offer A, month 1 interest is ₹5,00,000 × 10% ÷ 12 = ₹4,166.67. The rest of the EMI, ₹6,456.85, pays back principal. Total paid over 60 months is about ₹6,37,411. So the interest is about ₹1,37,411.</p>
          <p>Watch for two things in offers:</p>
          <ul class="lc-list">
            <li><strong>Flat rate.</strong> Some lenders quote a "flat" rate, charged on the full loan for the whole time. A flat rate costs much more than the same number as a reducing rate.</li>
            <li><strong>Floating rate.</strong> The rate can change during the loan. The lender may then change your EMI or the number of months.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Comparing loan offers</h3>
          <p>Compare the <strong>total cost</strong>, not only the EMI. Total cost = all EMIs + all fees − the loan amount. In the diagram, Offer B has a lower rate and a lower EMI. But it runs two years longer and has a bigger fee. So it costs about ₹43,300 more.</p>
          <p>In India, RBI rules require regulated lenders to give a <strong>Key Fact Statement</strong> (KFS) for most retail loans. It shows the <strong>APR</strong> (annual percentage rate: the yearly cost including fees) and the total amount you will pay. Ask for it and compare the numbers. Check the RBI website for the current rules.</p>
          <p>A weak prompt:</p>
          <pre><code>Which loan is better?</code></pre>
          <p>A better prompt gives the facts and asks for the maths and the questions to ask:</p>
          <pre><code>Compare two made-up loan offers for ₹5,00,000.
        Offer A: 10% a year, reducing balance, 60 months, fee ₹2,500.
        Offer B: 9% a year, reducing balance, 84 months, fee ₹7,500.
        For each: EMI, total interest, total cost with fees. Show the PMT formula.
        Then list questions I should ask each lender before I sign.</code></pre>
          <p>Ask the lender about prepayment charges (fees for paying early), late fees, and any insurance added to the loan. Check the AI's numbers with the PMT formula. This is education, not financial advice. For a big loan, speak to a qualified adviser.</p>
        </div>
        <div class="lc-card">
          <h3>Credit card traps</h3>
          <p>A credit card gives you an <strong>interest-free period</strong> (the days between a purchase and the due date). It is free only if you pay the <em>full</em> bill by the due date.</p>
          <ul class="lc-list">
            <li><strong>Paying only the "minimum amount due".</strong> This avoids a late fee, but interest is charged on the rest. At many banks, new purchases also lose the interest-free period.</li>
            <li><strong>Cash withdrawals.</strong> These usually carry a fee, and interest often starts from the day you withdraw.</li>
            <li><strong>Easy EMI and "no-cost EMI".</strong> Read the terms. There may be a processing fee, or you may lose a discount you would get by paying in full.</li>
            <li><strong>Late payment.</strong> You pay a fee and interest, and it can hurt your credit score.</li>
          </ul>
          <p>A rough example with a made-up rate: Ravi leaves ₹20,000 unpaid on his Navkar Bank card. At 3% a month, that is ₹600 of interest in the first month. If he pays nothing for a year, the ₹20,000 grows to about ₹28,515, before fees and taxes. Real card rates are high, so check your card's own terms.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: trap or safer habit?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each loan or credit card habit.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="trap" data-label="Costly trap"></div>
              <div data-sorter-target="bucket" data-bucket="safe" data-label="Safer habit"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="trap" data-why="Interest is charged on the unpaid amount, often at a high rate.">Paying only the minimum amount due every month</li>
              <li data-bucket="safe" data-why="You keep the interest-free period and pay no interest.">Paying the full card bill by the due date</li>
              <li data-bucket="trap" data-why="There is usually a fee, and interest can start at once.">Taking cash out with a credit card</li>
              <li data-bucket="trap" data-why="A lower EMI over more months can cost much more in total.">Choosing a loan only because the EMI is lowest</li>
              <li data-bucket="safe" data-why="Total cost shows the real price of the loan, including fees.">Comparing offers by total cost and APR</li>
              <li data-bucket="safe" data-why="A formula is exact. AI and quick guesses can be wrong.">Checking the EMI with the PMT formula in a spreadsheet</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to compare two made-up loan offers and give you formulas to check. Change the numbers in brackets to any offers you want to understand.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a clear loan explainer. This is education only, not financial advice.

        Loan amount: [₹5,00,000] for [a car].
        Offer A: [10% a year, reducing balance, 60 months, processing fee ₹2,500].
        Offer B: [9% a year, reducing balance, 84 months, processing fee ₹7,500].

        Tasks:
        1. For each offer, work out the EMI, total interest and total cost including fees.
        2. Show the Excel or Google Sheets PMT formula for each EMI.
        3. For Offer A, show how month 1's EMI splits into interest and principal.
        4. Explain in simple words why the offer with the lower EMI may cost more.
        5. List 5 questions to ask the lender before signing (fees, prepayment, rate changes, insurance, Key Fact Statement).

        Rules: Round to the nearest rupee. Use Indian number format. Do not recommend a specific lender.</pre>
            <ul class="ai-try-checks">
              <li>The EMIs match <code>=PMT(rate/12, months, -amount)</code> in your sheet.</li>
              <li>Total interest = EMI × months − loan amount.</li>
              <li>The fees are added to the total cost.</li>
              <li>The answer does not promise a rate or recommend a lender.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Judge a loan by its total cost, not its EMI. A longer loan means more months of interest. Pay your credit card bill in full, and check every AI number with the PMT formula and the lender's Key Fact Statement.
        </div>
      HTML
      starter_code: nil
    },
    11 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-fin">Finance</div>
          <h1 class="lc-title">Credit Scores</h1>
        </div>
        <p class="lc-lead">A <strong>credit score</strong> is a three-digit number. It shows lenders how you have handled borrowed money in the past. Banks look at it when you ask for a loan or a credit card. In this lesson, you will learn what affects your score and how to check your credit report. You will also learn how to fix mistakes in it. AI can help you read the report and write a clear complaint. This is general education only, not financial advice.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 270" role="img" aria-label="Five things feed into your credit report: paying on time, how much of your card limit you use, length of credit history, mix of loans and cards, and new loan applications. The credit bureau turns the report into a credit score, usually from 300 to 900.">
            <defs><marker id="pf11a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="130" y="22" font-weight="700" fill="#86efac">What the report records</text>
              <rect x="20" y="34" width="220" height="36" rx="8" fill="#27274e" stroke="#10b981"/><text x="130" y="57">Paying on time</text>
              <rect x="20" y="78" width="220" height="36" rx="8" fill="#27274e" stroke="#3b82f6"/><text x="130" y="101">Card use vs card limit</text>
              <rect x="20" y="122" width="220" height="36" rx="8" fill="#27274e" stroke="#8b5cf6"/><text x="130" y="145">Length of credit history</text>
              <rect x="20" y="166" width="220" height="36" rx="8" fill="#27274e" stroke="#22d3ee"/><text x="130" y="189">Mix of loans and cards</text>
              <rect x="20" y="210" width="220" height="36" rx="8" fill="#27274e" stroke="#f59e0b"/><text x="130" y="233">New loan applications</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#pf11a)">
                <path d="M242,52 L318,128"/><path d="M242,96 L318,133"/><path d="M242,140 L318,140"/><path d="M242,184 L318,147"/><path d="M242,228 L318,152"/>
              </g>
              <rect x="322" y="100" width="170" height="80" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="407" y="134" font-weight="700">Credit report</text>
              <text x="407" y="156" font-size="11" fill="#9b99b8">kept by a credit bureau</text>
              <line x1="494" y1="140" x2="552" y2="140" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#pf11a)"/>
              <rect x="556" y="90" width="184" height="100" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="648" y="122" font-weight="700" fill="#86efac">Credit score</text>
              <text x="648" y="150" font-size="22" font-weight="700">300 to 900</text>
              <text x="648" y="174" font-size="11" fill="#9b99b8">higher is usually better</text>
              <text x="530" y="236" font-size="11.5" fill="#9b99b8">Lenders see the report and the score</text>
              <text x="530" y="254" font-size="11.5" fill="#9b99b8">when you apply for a loan or card.</text>
            </g>
          </svg>
          <figcaption>Your habits go into your credit report. The bureau turns the report into a score. Exact formulas are not public.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>What a credit score is and what affects it</h3>
          <p>A <strong>credit bureau</strong> (credit information company) collects records of your loans and credit cards. In India, these companies are licensed by the RBI (Reserve Bank of India). The four bureaus are TransUnion CIBIL, Experian, Equifax and CRIF High Mark. Each one keeps its own report on you. So your score can be a little different at each bureau.</p>
          <p>Most Indian scores run from 300 to 900. A higher score usually means lenders see you as lower risk. The bureaus do not publish their exact formulas. But these things are known to matter:</p>
          <table class="lc-table">
            <thead><tr><th>Factor</th><th>What it means</th><th>Good habit</th></tr></thead>
            <tbody>
              <tr><td><strong>Payment history</strong></td><td>Did you pay EMIs and card bills on time?</td><td>Set auto-pay for at least the minimum due. Pay the full bill if you can.</td></tr>
              <tr><td><strong>Credit utilisation</strong></td><td>The share of your card limit that you use. ₹60,000 used on a ₹1,00,000 limit is 60%.</td><td>Keep your balance low compared to your limit.</td></tr>
              <tr><td><strong>Length of history</strong></td><td>How long you have had loans or cards</td><td>Think before you close your oldest card.</td></tr>
              <tr><td><strong>Credit mix</strong></td><td>The types of credit you have, such as a card and a home loan</td><td>Do not take a loan only to improve your mix.</td></tr>
              <tr><td><strong>New enquiries</strong></td><td>A <em>hard enquiry</em> is when a lender checks your report after you apply. Many in a short time can look risky.</td><td>Apply only for credit you really need.</td></tr>
            </tbody>
          </table>
          <p>Checking your <em>own</em> score is a soft enquiry. It does not lower your score.</p>
        </div>
        <div class="lc-card">
          <h3>Check your report and let AI help you read it</h3>
          <p>RBI rules say each bureau must give you one free full credit report every calendar year. Get it only from the bureau's official website. Fake "free score" sites may steal your details. Rules can change, so check the RBI website for the current rules.</p>
          <p>Here is a made-up summary of Ananya's report. She is a 28-year-old software tester in London.</p>
          <table class="lc-table">
            <thead><tr><th>Account</th><th>Report says</th><th>What Ananya knows</th></tr></thead>
            <tbody>
              <tr><td>Navkar Bank credit card</td><td>Limit ₹1,00,000, balance ₹72,000</td><td>Correct. But 72% use is high.</td></tr>
              <tr><td>Navkar Bank personal loan</td><td>Status: Active, ₹18,000 due</td><td>Wrong. She closed it in January and has a closure letter.</td></tr>
              <tr><td>Enquiry by "QuickCash Finance"</td><td>Hard enquiry in March</td><td>She never applied. This may be fraud.</td></tr>
            </tbody>
          </table>
          <p>Before you paste anything into an AI tool, remove your PAN, account numbers, date of birth, address and phone number. Replace them with labels like "Card A" and "Loan B".</p>
          <pre><code>Weak prompt:
        Is my CIBIL score good?

        Better prompt:
        I am learning to read my credit report. Here is a summary
        with personal details removed: [paste summary].
        1. Explain each line in simple English.
        2. Mark any line that may be an error, and say why.
        3. List what proof I would need to dispute it.
        4. Say which habits may be pulling my score down.
        Do not guess my score. Do not recommend any lender.</code></pre>
          <p>The AI can explain terms and spot lines to question. It cannot see the bureau's data. You must match each line against your own bank records.</p>
        </div>
        <div class="lc-card">
          <h3>Fixing errors in your report</h3>
          <ul class="lc-list">
            <li><strong>Raise a dispute</strong> (a formal request to correct a record) on the bureau's official website. You can also contact the lender that sent the wrong data.</li>
            <li><strong>Attach proof</strong>, such as a loan closure letter or a NOC (no objection certificate: a letter from the lender saying you owe nothing).</li>
            <li><strong>Save the complaint number and date.</strong> RBI rules set a time limit for fixing complaints. They also set compensation when the fix is late. Check the RBI website for the current details.</li>
            <li><strong>If it is not fixed</strong>, you can complain to the RBI Ombudsman (a free official complaint service) through the RBI's complaint website, cms.rbi.org.in.</li>
            <li><strong>An enquiry you never made</strong> can mean someone used your details. Tell the lender at once. For fraud, report it on cybercrime.gov.in or call the 1930 helpline.</li>
          </ul>
          <p>Be careful of "credit repair" agents who promise to remove late payments for a fee. Nobody can legally remove <em>correct</em> information. Only real errors can be fixed, and you can dispute them yourself for free.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: fix an error in your report</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Ananya found a closed loan shown as "Active". Put her steps in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Download the free full report from the bureau's official website</li>
              <li data-order="2">Mark every line that does not match her own records</li>
              <li data-order="3">Find her proof: the loan closure letter from Navkar Bank</li>
              <li data-order="4">Raise a dispute on the bureau's website and attach the proof</li>
              <li data-order="5">Save the complaint number and the date</li>
              <li data-order="6">Download the report again and check the line is fixed</li>
              <li data-order="7">If it is still wrong after the time limit, complain to the RBI Ombudsman</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to explain a sample credit report and draft a dispute letter. Use made-up data, never your real PAN or account numbers.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a patient teacher who explains credit reports in India in simple English. This is for learning only, not financial advice.

        Here is a made-up credit report summary for [Ananya, a salaried person in London]. Personal details are removed.
        - Card A (Navkar Bank): limit Rs 1,00,000, balance Rs 72,000, all payments on time
        - Loan B (Navkar Bank personal loan): status Active, Rs 18,000 due. I closed it on [15 January] and have a closure letter.
        - Enquiry: "QuickCash Finance", [March]. I never applied.

        Please:
        1. Explain each line in 1 to 2 simple sentences.
        2. Say which lines look like errors and why.
        3. Say which habit may be pulling the score down, and one fix for it.
        4. Write a short, polite dispute letter to the credit bureau about Loan B. Use [placeholders] for my name and reference numbers.
        5. List what I should do about the unknown enquiry.
        Do not guess my score. Do not name or recommend any lender. Remind me to check the bureau's and RBI's official websites for the current rules.</pre>
            <ul class="ai-try-checks">
              <li>Is the utilisation maths right? (72,000 of 1,00,000 is 72%.)</li>
              <li>Does the letter use placeholders, not made-up real account numbers?</li>
              <li>Does it treat the unknown enquiry as possible fraud to report?</li>
              <li>Does it avoid promising a new score or a time frame as fact?</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Your score comes from your report, so check the report first. Pay on time, keep card use low and dispute real errors with proof. AI can explain the report and write the letter, but you must check every line against your own records.
        </div>
      HTML
      starter_code: nil
    },
    12 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-fin">Finance</div>
          <h1 class="lc-title">Investing Basics</h1>
        </div>
        <p class="lc-lead">Investing means putting money into something that may grow over time. Every investment has <strong>risk</strong> (the chance that its value goes down) and <strong>return</strong> (what you may earn). In this lesson, you will learn the main types: fixed deposits, mutual funds, SIPs and shares. You will also learn why spreading your money out helps. AI can explain terms and help you prepare questions. It must not choose investments for you. This is education only, not investment advice. For real decisions, talk to a SEBI-registered investment adviser.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 270" role="img" aria-label="A chart of risk against possible return. Savings account and fixed deposit are low risk and low return. Debt fund and hybrid fund are in the middle. Equity index fund and a single stock are higher risk with higher possible return.">
            <defs><marker id="pf12a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12" fill="#e2e0f0" text-anchor="middle">
              <line x1="70" y1="225" x2="730" y2="225" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#pf12a)"/>
              <line x1="70" y1="225" x2="70" y2="20" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#pf12a)"/>
              <text x="400" y="252" fill="#9b99b8" font-size="12">Risk: how much the value can go up and down</text>
              <text x="30" y="125" fill="#9b99b8" font-size="12" transform="rotate(-90 30 125)">Possible return</text>
              <circle cx="130" cy="200" r="7" fill="#10b981"/><text x="130" y="186">Savings account</text>
              <circle cx="235" cy="178" r="7" fill="#10b981"/><text x="235" y="164">Fixed deposit</text>
              <circle cx="345" cy="150" r="7" fill="#22d3ee"/><text x="345" y="136">Debt fund</text>
              <circle cx="455" cy="118" r="7" fill="#3b82f6"/><text x="455" y="104">Hybrid fund</text>
              <circle cx="565" cy="84" r="7" fill="#f59e0b"/><text x="565" y="70">Equity index fund</text>
              <circle cx="670" cy="50" r="7" fill="#ec4899"/><text x="670" y="36">Single stock</text>
              <text x="250" y="60" fill="#9b99b8" font-size="11.5">A general picture, not a promise.</text>
              <text x="250" y="78" fill="#9b99b8" font-size="11.5">Returns can be lower, even negative.</text>
            </g>
          </svg>
          <figcaption>In general, a chance of higher return comes with higher risk. Each dot is a broad type, not a specific product.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The main types, in plain words</h3>
          <table class="lc-table">
            <thead><tr><th>Type</th><th>What it is</th><th>Risk in general</th></tr></thead>
            <tbody>
              <tr><td><strong>Fixed deposit (FD)</strong></td><td>You lock money with a bank for a fixed time. The bank pays a fixed interest rate.</td><td>Low. Bank deposits are insured by DICGC up to a limit for each depositor in each bank. Breaking an FD early may cost a penalty.</td></tr>
              <tr><td><strong>Mutual fund</strong></td><td>Money from many people, pooled and invested by a fund manager. Mutual funds in India are regulated by SEBI (Securities and Exchange Board of India).</td><td>Depends on what the fund buys. Each fund shows a <em>riskometer</em>: a label from low to very high risk.</td></tr>
              <tr><td><strong>Debt fund</strong></td><td>A mutual fund that lends money to governments and companies</td><td>Lower to medium. Not guaranteed.</td></tr>
              <tr><td><strong>Equity fund</strong></td><td>A mutual fund that buys shares of many companies. An <em>index fund</em> copies a market index, such as the Nifty 50.</td><td>Higher. Can fall a lot in a bad year.</td></tr>
              <tr><td><strong>Shares (stocks)</strong></td><td>A small part of one company, bought on the NSE or BSE (India's stock exchanges)</td><td>Highest of these. One company can do very badly.</td></tr>
            </tbody>
          </table>
          <p>A <strong>SIP</strong> (Systematic Investment Plan) is not a product. It is a way to invest: a fixed amount goes into a mutual fund every month. It builds a habit, and you buy at many different prices over time. A SIP does not remove risk.</p>
        </div>
        <div class="lc-card">
          <h3>Why spreading your money helps: a made-up example</h3>
          <p><strong>Diversification</strong> means spreading money across many investments. Then one bad result does less damage. Here is an example with made-up numbers.</p>
          <table class="lc-table">
            <thead><tr><th>Plan</th><th>What happens</th><th>Value after</th></tr></thead>
            <tbody>
              <tr><td>All ₹1,00,000 in Coastal Cement Ltd shares</td><td>The share price falls 40%.</td><td>₹60,000</td></tr>
              <tr><td>₹20,000 each in 5 different investments</td><td>One falls 40%. The other four stay the same.</td><td>₹92,000</td></tr>
            </tbody>
          </table>
          <p>Maths check for the second plan: 4 × ₹20,000 = ₹80,000, plus ₹12,000 left from the one that fell. Total: ₹92,000. A spreadsheet can check this for you: <code>=4*20000 + 20000*(1-40%)</code>.</p>
          <p>Before investing, many people first keep an emergency fund in a safe place. They also think about their goal date. Money needed in one year is usually not put in high-risk investments. Your own plan depends on your situation, so ask a qualified adviser.</p>
        </div>
        <div class="lc-card">
          <h3>How AI can help, and where it must stop</h3>
          <pre><code>Weak prompt:
        Which stock will double this year?

        Better prompt:
        I am a beginner in India learning about investing. This is for
        education only. Explain in simple English:
        1. The difference between an FD, a debt fund and an equity index fund.
        2. The risks of each, with a small made-up example.
        3. Ten questions I should ask a SEBI-registered adviser.
        4. What to look for in a mutual fund factsheet.
        Do not recommend any fund, stock or company.</code></pre>
          <p>A <em>factsheet</em> is a monthly document about a mutual fund. It shows what the fund holds, its costs and its risk label. AI can explain the words in it. But AI does not know your full money situation. Its data may also be old. No one can predict next month's share price, not AI and not a WhatsApp "expert". Check fund details on the fund house's official site. Check any adviser's registration on the SEBI website.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: who should answer this question?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each question: is it a good one for AI, one for a qualified adviser, or one nobody can answer?</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="ai" data-label="Good for AI"></div>
              <div data-sorter-target="bucket" data-bucket="adviser" data-label="Ask an adviser"></div>
              <div data-sorter-target="bucket" data-bucket="nobody" data-label="Nobody can know"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="ai" data-why="Explaining a general term is a safe, useful job for AI. Still check it on an official source.">What does "expense ratio" mean in a mutual fund?</li>
              <li data-bucket="ai" data-why="A list of questions helps you prepare. You still decide.">What questions should I ask before I start a SIP?</li>
              <li data-bucket="adviser" data-why="This depends on your income, goals, debts and risk comfort. A SEBI-registered adviser should look at your full situation.">How much of my savings should go into equity funds?</li>
              <li data-bucket="adviser" data-why="Choosing a specific product for your money is personal advice. AI should not make this choice.">Which exact fund should Ravi and Meena use for their child's education?</li>
              <li data-bucket="nobody" data-why="Short-term share prices cannot be predicted. Anyone who promises this may be running a scam.">Will Sahyadri Foods Ltd shares go up next month?</li>
              <li data-bucket="ai" data-why="A general comparison with made-up numbers is education. It is not a recommendation.">How is a fixed deposit different from a debt fund?</li>
              <li data-bucket="nobody" data-why="Market returns are never guaranteed. A promise of fixed high returns is a warning sign.">Which fund will surely give 20% every year?</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to explain investing options for one goal and to prepare questions for an adviser. It should teach, not pick products.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a friendly teacher of personal finance basics in India. This is education only, not investment advice.

        My made-up situation: I am [28], I earn a salary in [London], and I have an emergency fund. I want to save for [a goal] in [5] years. I can put aside about [Rs 10,000] a month.

        Please:
        1. Explain in simple English how an FD, a debt fund and an equity index fund work.
        2. Make a table: type, risk level in general, what can go wrong, and when a person might use it.
        3. Show a small made-up example of why spreading money across investments reduces damage from one bad result. Show the maths.
        4. Explain what a SIP is and what it does not protect against.
        5. List 8 questions I should ask a SEBI-registered investment adviser.
        Rules: do not name or recommend any fund, stock or company. Do not promise any return. Say that interest rates and returns change.</pre>
            <ul class="ai-try-checks">
              <li>Is the example maths correct?</li>
              <li>Does it avoid naming specific funds or promising returns?</li>
              <li>Does it say equity can fall, especially over short periods?</li>
              <li>Does it point you to a SEBI-registered adviser for decisions?</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Higher possible return comes with higher risk, and spreading your money reduces the damage from one bad result. Use AI to understand terms and prepare questions. Leave product choices to yourself and a SEBI-registered adviser.
        </div>
      HTML
      starter_code: nil
    },
    13 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-fin">Finance</div>
          <h1 class="lc-title">Tax Basics for Individuals</h1>
        </div>
        <p class="lc-lead"><strong>Income tax</strong> is money you pay to the government from your income. In this lesson, you will learn the main tax words. You will see how your income becomes "taxable income". You will also learn which documents to keep and when to ask a chartered accountant (CA). AI can explain terms and make checklists. It often gets tax rates and rules wrong, so never use it for final numbers. This is general education only, not tax advice.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 270" role="img" aria-label="A flow: all income, minus deductions if allowed, gives taxable income. Tax is worked out by the current rules. Tax already cut as TDS is subtracted. The result is either a refund or more tax to pay.">
            <defs><marker id="pf13a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12.5" fill="#e2e0f0" text-anchor="middle">
              <rect x="10" y="30" width="130" height="60" rx="8" fill="#27274e" stroke="#3b82f6"/><text x="75" y="56" font-weight="700">All income</text><text x="75" y="76" font-size="11" fill="#9b99b8">salary, FD interest</text>
              <rect x="160" y="30" width="130" height="60" rx="8" fill="#27274e" stroke="#8b5cf6"/><text x="225" y="56" font-weight="700">Deductions</text><text x="225" y="76" font-size="11" fill="#9b99b8">only if allowed</text>
              <rect x="310" y="30" width="130" height="60" rx="8" fill="#27274e" stroke="#22d3ee"/><text x="375" y="56" font-weight="700">Taxable income</text><text x="375" y="76" font-size="11" fill="#9b99b8">what is left</text>
              <rect x="460" y="30" width="130" height="60" rx="8" fill="#27274e" stroke="#f59e0b"/><text x="525" y="56" font-weight="700">Tax worked out</text><text x="525" y="76" font-size="11" fill="#9b99b8">rules change yearly</text>
              <rect x="610" y="30" width="140" height="60" rx="8" fill="#27274e" stroke="#ec4899"/><text x="680" y="56" font-weight="700">Minus TDS paid</text><text x="680" y="76" font-size="11" fill="#9b99b8">see Form 26AS / AIS</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#pf13a)">
                <path d="M141,60 L156,60"/><path d="M291,60 L306,60"/><path d="M441,60 L456,60"/><path d="M591,60 L606,60"/>
                <path d="M680,92 L680,120 L560,120 L560,146"/><path d="M680,92 L680,146"/>
              </g>
              <rect x="480" y="150" width="140" height="44" rx="8" fill="#1f1f44" stroke="#10b981"/><text x="550" y="177">Refund due</text>
              <rect x="630" y="150" width="120" height="44" rx="8" fill="#1f1f44" stroke="#f59e0b"/><text x="690" y="177">More to pay</text>
              <rect x="10" y="150" width="440" height="100" rx="10" fill="#1f1f44" stroke="#4b4a78"/>
              <text x="230" y="176" font-weight="700" fill="#86efac">Where the numbers come from</text>
              <text x="230" y="200" font-size="11.5" fill="#9b99b8">Form 16 from your employer, bank interest certificates,</text>
              <text x="230" y="218" font-size="11.5" fill="#9b99b8">and the AIS on the income tax portal.</text>
              <text x="230" y="236" font-size="11.5" fill="#9b99b8">Rates and limits: check incometax.gov.in each year.</text>
            </g>
          </svg>
          <figcaption>The basic flow of an income tax return. The steps stay similar, but rates, limits and deductions change, so always check the official rules.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Tax words in plain English</h3>
          <table class="lc-table">
            <thead><tr><th>Word</th><th>What it means</th></tr></thead>
            <tbody>
              <tr><td><strong>PAN</strong></td><td>Permanent Account Number. Your 10-character tax ID. Never paste it into a public AI tool.</td></tr>
              <tr><td><strong>Tax year</strong></td><td>The 12 months your income is counted for: 1 April to 31 March.</td></tr>
              <tr><td><strong>ITR</strong></td><td>Income tax return. The form you file to report your income and tax.</td></tr>
              <tr><td><strong>TDS</strong></td><td>Tax deducted at source. Tax that your employer or bank cuts before paying you.</td></tr>
              <tr><td><strong>Form 16</strong></td><td>A certificate from your employer. It shows your salary and the TDS cut from it.</td></tr>
              <tr><td><strong>Form 26AS and AIS</strong></td><td>Statements on the income tax portal. They show tax paid for you and income the department knows about. AIS means Annual Information Statement.</td></tr>
              <tr><td><strong>Deduction</strong></td><td>An amount the rules let you subtract before tax is worked out.</td></tr>
              <tr><td><strong>Tax regime</strong></td><td>A set of tax rules. India has an old and a new regime. Which one gives lower tax depends on your situation.</td></tr>
            </tbody>
          </table>
          <p>A new law, the Income-tax Act, 2025, applies from 1 April 2026. Some names, section numbers and form numbers have changed. For example, under the new rules Form 16 becomes Form 130, and Form 26AS becomes Form 168. Papers for earlier years keep the old names. Rates, slabs and limits can change in every Budget. So always check the Income Tax Department's website (incometax.gov.in) or ask a CA. Do not trust a number from AI or an old article.</p>
        </div>
        <div class="lc-card">
          <h3>Keep your documents in one place</h3>
          <p>Ananya keeps a folder for each tax year. Here is her checklist:</p>
          <table class="lc-table">
            <thead><tr><th>Document</th><th>Why keep it</th></tr></thead>
            <tbody>
              <tr><td>Form 16 and salary slips</td><td>Salary and TDS details</td></tr>
              <tr><td>Bank interest certificates (savings and FD)</td><td>Interest is income too. People often forget it.</td></tr>
              <tr><td>Rent receipts and rent agreement</td><td>Needed for some rent-related claims, if your regime allows them</td></tr>
              <tr><td>Receipts for investments and insurance premiums</td><td>Proof for deductions, if your regime allows them</td></tr>
              <tr><td>AIS and Form 26AS downloads</td><td>To match against your own records</td></tr>
              <tr><td>ITR acknowledgement</td><td>Proof that you filed</td></tr>
            </tbody>
          </table>
          <p>Ask your CA how many years to keep these papers. The time can differ from case to case.</p>
          <p><strong>When to ask a chartered accountant:</strong> when you have freelance or business income (like the owner of Sweet Crumbs bakery). Also when you sell shares or property, earn rent or have income from abroad. Ask one if you get a notice from the tax department, or if you are unsure which regime suits you.</p>
        </div>
        <div class="lc-card">
          <h3>Good and bad ways to ask AI about tax</h3>
          <pre><code>Weak prompt:
        How much tax will I pay on a salary of 12 lakh?

        Better prompt:
        I am a salaried person in India. Do not state any tax rates,
        slabs or limits. Instead:
        1. Explain TDS, Form 16, AIS and the two tax regimes in simple English.
        2. Make a checklist of documents to collect before filing.
        3. List 8 questions to ask my chartered accountant.
        4. Tell me which official website to check for current rules.</code></pre>
          <p>AI tools often mix up years or countries. They can quote old slabs, or invent a section number. Use AI to understand and organise. Take every number from the official portal, your Form 16 or your CA.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: Ananya gets ready to file</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Ananya asks AI">"I am salaried. Make a checklist of documents I need to file my ITR. Do not state any rates."</li>
              <li data-kind="answer" data-label="AI replies">A checklist: Form 16, salary slips, savings and FD interest certificates, investment receipts, AIS and Form 26AS.</li>
              <li data-kind="tool" data-label="Income tax portal">Ananya logs in to incometax.gov.in herself and downloads her AIS.</li>
              <li data-kind="result" data-label="AIS shows">FD interest from Navkar Bank that she had forgotten to add to her notes.</li>
              <li data-kind="check" data-label="Ananya checks">She matches the AIS amount with the bank's interest certificate. They agree.</li>
              <li data-kind="warn" data-label="Mistake to catch">In a later answer, the AI states a tax slab as fact. Ananya ignores it and checks the official website instead.</li>
              <li data-kind="answer" data-label="Next step">She takes her folder and the AI's question list to a chartered accountant, because she also sold some shares this year.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI for a tax document checklist and a question list for a CA. Tell it not to state rates.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a helpful teacher who explains Indian income tax basics in simple English. This is general education, not tax advice.

        My made-up situation: I am a [salaried software tester in London]. This tax year I had [salary, savings account interest, FD interest] and [I sold some mutual fund units].

        Please:
        1. Explain these words in one or two sentences each: PAN, tax year, ITR, TDS, Form 16, AIS, Form 26AS, deduction, tax regime.
        2. Make a checklist table of documents I should collect: document, where I get it, why it matters.
        3. List the parts of my situation that may need a chartered accountant, and why.
        4. Write 8 questions I can ask my chartered accountant.
        Rules: do NOT state any tax rates, slabs, limits or due dates as facts. Say that these change and must be checked on incometax.gov.in. Do not ask for my PAN or any real numbers.</pre>
            <ul class="ai-try-checks">
              <li>Does it avoid stating tax rates, slabs or due dates?</li>
              <li>Are the terms explained correctly and simply?</li>
              <li>Does it remember that interest and investment sales can be income?</li>
              <li>Does it send you to incometax.gov.in or a CA for real numbers?</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Tax words and documents stay mostly the same, but rates and rules change. Use AI to understand the words and build your checklist. Take the numbers from official sources, and ask a chartered accountant when your case is not simple.
        </div>
      HTML
      starter_code: nil
    },
    14 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-fin">Finance</div>
          <h1 class="lc-title">Avoiding Money Scams</h1>
        </div>
        <p class="lc-lead">Money scams try to make you pay, or share a secret like an OTP (one-time password). Scammers now use AI too: perfect messages, cloned voices and fake videos. In this lesson, you will learn the common scams in India and their warning signs. You will also learn how to check a message and where to report fraud. AI can help you spot red flags, but you must check on official sources yourself.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 230" role="img" aria-label="Four steps: a message or call arrives; stop and look for red flags; check using official sources; report fraud to 1930, cybercrime.gov.in and your bank.">
            <defs><marker id="pf14a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="10" y="20" width="170" height="160" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="95" y="48" font-weight="700" fill="#93c5fd">1. It arrives</text>
              <text x="95" y="80" font-size="11.5" fill="#9b99b8">call, SMS, WhatsApp</text>
              <text x="95" y="102" font-size="11.5" fill="#9b99b8">email, video call</text>
              <text x="95" y="124" font-size="11.5" fill="#9b99b8">urgent or emotional</text>
              <rect x="202" y="20" width="170" height="160" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="287" y="48" font-weight="700" fill="#f9a8d4">2. Stop</text>
              <text x="287" y="80" font-size="11.5" fill="#9b99b8">no OTP, PIN, password</text>
              <text x="287" y="102" font-size="11.5" fill="#9b99b8">no screen-share apps</text>
              <text x="287" y="124" font-size="11.5" fill="#9b99b8">no rushed payment</text>
              <rect x="394" y="20" width="170" height="160" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="479" y="48" font-weight="700" fill="#fcd34d">3. Check</text>
              <text x="479" y="80" font-size="11.5" fill="#9b99b8">call bank's own number</text>
              <text x="479" y="102" font-size="11.5" fill="#9b99b8">SEBI Check tool</text>
              <text x="479" y="124" font-size="11.5" fill="#9b99b8">ask family by phone</text>
              <rect x="586" y="20" width="164" height="160" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="668" y="48" font-weight="700" fill="#86efac">4. Report</text>
              <text x="668" y="80" font-size="11.5" fill="#9b99b8">call 1930 at once</text>
              <text x="668" y="102" font-size="11.5" fill="#9b99b8">cybercrime.gov.in</text>
              <text x="668" y="124" font-size="11.5" fill="#9b99b8">tell your bank</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#pf14a)">
                <path d="M181,100 L198,100"/><path d="M373,100 L390,100"/><path d="M565,100 L582,100"/>
              </g>
              <text x="380" y="214" font-size="12" fill="#9b99b8">Good spelling or a familiar voice is not proof. Scammers use AI too.</text>
            </g>
          </svg>
          <figcaption>Stop, check, report. If you lost money, report it fast. Quick reports give the best chance to stop the money.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Common scams and their warning signs</h3>
          <table class="lc-table">
            <thead><tr><th>Scam</th><th>How it works</th><th>Warning sign</th></tr></thead>
            <tbody>
              <tr><td><strong>Fake investment tips</strong></td><td>A WhatsApp or Telegram group shares "sure" stock tips. A fake app shows big profits but will not let you withdraw.</td><td>Guaranteed or very high returns. Pressure to pay fast. No SEBI registration.</td></tr>
              <tr><td><strong>UPI "receive money" trick</strong></td><td>You get a collect request or QR code to "receive" a refund or prize.</td><td>You only need your UPI PIN to <em>pay</em>. You never need it to receive money.</td></tr>
              <tr><td><strong>KYC update scam</strong></td><td>An SMS says your account will be blocked unless you update KYC (know your customer: ID checks) through a link.</td><td>Short links, threats, requests for OTP or card details.</td></tr>
              <tr><td><strong>Fake customer care</strong></td><td>A fake helpline number appears in search results or social media.</td><td>They ask you to install a screen-sharing app or share an OTP.</td></tr>
              <tr><td><strong>"Digital arrest"</strong></td><td>A fake police or officer video call says you are under arrest and must pay.</td><td>Real police do not arrest people over video calls or ask for money transfers.</td></tr>
              <tr><td><strong>AI voice or deepfake</strong></td><td>A cloned voice of a relative asks for urgent money. A fake video of a famous person praises a scheme.</td><td>Urgency, secrecy, "do not tell anyone", a new number.</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>How to check, and where to report</h3>
          <ul class="lc-list">
            <li><strong>Banks:</strong> call the number on the back of your card or on the bank's official website. Never use a number from the message.</li>
            <li><strong>Investment advisers and brokers:</strong> check their registration on the SEBI website. SEBI also has a "SEBI Check" tool. Payments to registered brokers and mutual funds can use a special "@valid" UPI ID. Check SEBI's website for details.</li>
            <li><strong>Family voice calls:</strong> hang up and call the person back on the number you already have. Agree a family code word for emergencies.</li>
            <li><strong>If you lost money:</strong> call the national cybercrime helpline <strong>1930</strong> at once. Also file a complaint on cybercrime.gov.in and tell your bank to block the card or account.</li>
            <li><strong>Suspicious messages you did not lose money to:</strong> you can report them on the government's Sanchar Saathi portal (the "Chakshu" option). Check the portal for current features.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Using AI as a second opinion</h3>
          <p>You can paste a suspicious message into an AI tool and ask for red flags. First remove your own name, number and any account details.</p>
          <pre><code>Weak prompt:
        Is this real?

        Better prompt:
        I received this message. My personal details are removed:
        "[paste message]"
        1. List every red flag you see, and explain each one simply.
        2. Say what the sender probably wants me to do.
        3. Tell me how to check it through official channels.
        Do not give me any phone number or link to use.</code></pre>
          <p>AI can miss a clever scam, or wrongly call a real message fake. Never call a number or open a link that the AI gives you. Find the official contact yourself. If it feels urgent, slow down. Scammers depend on panic.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: scam or normal?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Ravi and Meena got these messages and requests. Sort each one.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="scam" data-label="Scam: stop"></div>
              <div data-sorter-target="bucket" data-bucket="ok" data-label="Looks normal: still check"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="scam" data-why="Threats, a short link and a same-day deadline are classic KYC scam signs. Banks do not block accounts this way.">"Navkar Bank: your KYC expires today. Update at bit.ly/nvk-kyc or your account will be blocked."</li>
              <li data-bucket="scam" data-why="Real police do not arrest people on video calls or ask for money in a 'safe account'.">A video call from a "police officer" says Ravi is under digital arrest and must transfer money.</li>
              <li data-bucket="scam" data-why="No one can promise a share will double. Paid 'VIP tips' from unknown groups are a common fraud.">A WhatsApp group: "Sahyadri Foods Ltd will double this week. Join VIP tips for ₹5,000."</li>
              <li data-bucket="scam" data-why="Urgency, secrecy and a new number are signs of a cloned voice. Hang up and call the brother on his usual number.">A crying voice like Meena's brother calls from a new number and asks for ₹40,000 by UPI now.</li>
              <li data-bucket="scam" data-why="You never enter a UPI PIN to receive money. Entering it sends money out.">A UPI request asks Meena to enter her PIN to "receive" a ₹2,000 refund.</li>
              <li data-bucket="ok" data-why="This is a normal alert for a payment they made. They can confirm it inside the official bank app.">The Navkar Bank app shows an alert for the electricity bill Meena just paid.</li>
              <li data-bucket="ok" data-why="They started the payment from the fund's official app, and it goes to a verified '@valid' UPI ID. It is still wise to check the details.">A SIP payment that Ravi started in the fund house's official app, going to an "@valid" UPI ID</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to check a sample suspicious message and make a family safety card. The sample message is made up.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a fraud awareness trainer for families in India. Explain in simple English.

        Here is a made-up message my family received:
        "Dear customer, your [Navkar Bank] account is suspended due to pending KYC. Update within 2 hours at [short link] or call our officer at [phone number]. Share the OTP you receive to confirm."

        Please:
        1. List every red flag in this message and explain each in one sentence.
        2. Say what the scammer wants the person to do.
        3. Explain how to check with the real bank safely, without using anything in the message.
        4. Make a one-page "family money safety card" with: 6 never-do rules (like never share an OTP), how to check a caller, and what to do in the first hour after a fraud. Include the 1930 helpline and cybercrime.gov.in.
        Do not include any real bank phone numbers or links.</pre>
            <ul class="ai-try-checks">
              <li>Does it catch the urgency, the link, the phone number and the OTP request?</li>
              <li>Does it say to find the bank's number yourself from the card or official site?</li>
              <li>Are 1930 and cybercrime.gov.in given correctly?</li>
              <li>Is the safety card short and simple enough for older family members?</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Urgency, secrecy and requests for an OTP, PIN or payment are the signs of a scam. Stop, check through official channels you find yourself, and report fast to 1930. AI can point out red flags, but it cannot confirm that a message is safe.
        </div>
      HTML
      starter_code: nil
    },
    15 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-fin">Finance</div>
          <h1 class="lc-title">Capstone: Your Personal Money Plan</h1>
        </div>
        <p class="lc-lead">In this capstone, you will put everything together into one simple money plan. It has five parts: a money snapshot, a budget, a spending review, goals and a monthly check-in. You will see a worked example for Ravi and Meena, a couple in Los Angeles with one child. Then you will use AI to build a plan from sample data. The plan is for learning and planning only, not financial advice.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 220" role="img" aria-label="Five steps in a row: snapshot, budget, spending review, goals and monthly check-in. An arrow from check-in goes back to snapshot, labelled repeat each month.">
            <defs><marker id="pf15a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12.5" fill="#e2e0f0" text-anchor="middle">
              <rect x="10" y="40" width="130" height="70" rx="10" fill="#27274e" stroke="#3b82f6"/><text x="75" y="70" font-weight="700">1. Snapshot</text><text x="75" y="92" font-size="11" fill="#9b99b8">own, owe, earn</text>
              <rect x="160" y="40" width="130" height="70" rx="10" fill="#27274e" stroke="#8b5cf6"/><text x="225" y="70" font-weight="700">2. Budget</text><text x="225" y="92" font-size="11" fill="#9b99b8">plan each rupee</text>
              <rect x="310" y="40" width="130" height="70" rx="10" fill="#27274e" stroke="#22d3ee"/><text x="375" y="70" font-weight="700">3. Review spend</text><text x="375" y="92" font-size="11" fill="#9b99b8">find the leaks</text>
              <rect x="460" y="40" width="130" height="70" rx="10" fill="#27274e" stroke="#f59e0b"/><text x="525" y="70" font-weight="700">4. Goals</text><text x="525" y="92" font-size="11" fill="#9b99b8">amount and date</text>
              <rect x="610" y="40" width="140" height="70" rx="10" fill="#27274e" stroke="#10b981"/><text x="680" y="70" font-weight="700">5. Check-in</text><text x="680" y="92" font-size="11" fill="#9b99b8">30 minutes a month</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#pf15a)">
                <path d="M141,75 L156,75"/><path d="M291,75 L306,75"/><path d="M441,75 L456,75"/><path d="M591,75 L606,75"/>
                <path d="M680,112 L680,160 L75,160 L75,114"/>
              </g>
              <text x="380" y="182" font-size="12" fill="#86efac">repeat each month</text>
              <text x="380" y="206" font-size="11.5" fill="#9b99b8">Once a year: credit report, tax papers, insurance and a talk with a professional</text>
            </g>
          </svg>
          <figcaption>A money plan is a loop, not a one-time task. The monthly check-in keeps the numbers true.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>What goes into your plan</h3>
          <table class="lc-table">
            <thead><tr><th>Part</th><th>What to include</th><th>Where AI helps</th></tr></thead>
            <tbody>
              <tr><td><strong>Snapshot</strong></td><td>Monthly income, fixed and variable costs, assets (what you own), debts (what you owe)</td><td>Builds the sheet layout and simple formulas</td></tr>
              <tr><td><strong>Budget</strong></td><td>A plan for needs, wants and savings, such as the 50/30/20 idea</td><td>Suggests a split that fits your made-up numbers</td></tr>
              <tr><td><strong>Spending review</strong></td><td>Categories from last month's statement, with patterns and leaks</td><td>Sorts sample transactions and finds repeats</td></tr>
              <tr><td><strong>Goals</strong></td><td>Emergency fund first, then other goals with an amount and a date</td><td>Works out the monthly saving (check the maths)</td></tr>
              <tr><td><strong>Debt and safety</strong></td><td>EMIs, card dues, credit report check, scam rules for the family</td><td>Explains terms and makes checklists</td></tr>
              <tr><td><strong>Monthly check-in</strong></td><td>A short routine on the same day each month</td><td>Writes the checklist and a summary template</td></tr>
            </tbody>
          </table>
          <p>Use made-up or rounded numbers when you talk to AI. Never paste account numbers, PAN, Aadhaar, passwords or OTPs.</p>
        </div>
        <div class="lc-card">
          <h3>Worked example: Ravi and Meena's plan (made-up numbers)</h3>
          <p>Take-home pay: ₹1,10,000 a month. Essential costs (rent, food, school fees, bills, EMI): about ₹70,000 a month. They have ₹60,000 set aside for emergencies and a car loan EMI of ₹9,500.</p>
          <table class="lc-table">
            <thead><tr><th>Goal</th><th>Target</th><th>Saved</th><th>Months</th><th>Monthly saving</th></tr></thead>
            <tbody>
              <tr><td>Emergency fund (6 months of essential costs)</td><td>₹4,20,000</td><td>₹60,000</td><td>36</td><td>₹10,000</td></tr>
              <tr><td>Family trip</td><td>₹90,000</td><td>₹0</td><td>18</td><td>₹5,000</td></tr>
              <tr><td>Child's education (long-term)</td><td>Ask an adviser</td><td>₹0</td><td>120</td><td>Decide with a SEBI-registered adviser</td></tr>
            </tbody>
          </table>
          <p>Formula for the monthly saving in a sheet (Target in B2, Saved in C2, Months in D2):</p>
          <pre><code>=ROUNDUP((B2-C2)/D2, -2)</code></pre>
          <p>For the emergency fund: (4,20,000 − 60,000) ÷ 36 = ₹10,000. This ignores interest, so it is a simple, safe estimate. How many months of costs to keep is a personal choice. Six months is only an example.</p>
          <p>Their spending review found ₹2,400 a month on three streaming apps they rarely use. Cancelling two of them frees money for the trip goal.</p>
        </div>
        <div class="lc-card">
          <h3>Your monthly check-in routine (about 30 minutes)</h3>
          <ol class="lc-list">
            <li>Update your snapshot: bank balances, card dues and loan balances.</li>
            <li>Compare budget with actual spending for each category.</li>
            <li>Move this month's savings to each goal. Update the goals table.</li>
            <li>Check card due dates and EMIs. Make sure auto-pay worked.</li>
            <li>Look for any payment you do not recognise. Report fraud to your bank and 1930 at once.</li>
            <li>Write three lines: what went well, what went wrong, one change for next month.</li>
          </ol>
          <p><strong>Once a year:</strong> download your free credit report, collect tax documents, review insurance and meet a qualified professional. For example, a chartered accountant for tax, or a SEBI-registered adviser for investing.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: build the plan in order</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put the steps for building a personal money plan in a sensible order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">List income, costs, assets and debts in a snapshot sheet</li>
              <li data-order="2">Sort last month's spending into categories</li>
              <li data-order="3">Make a budget for needs, wants and savings</li>
              <li data-order="4">Set the emergency fund goal first</li>
              <li data-order="5">Add other goals with an amount, a date and a monthly saving</li>
              <li data-order="6">Check all AI maths in the spreadsheet</li>
              <li data-order="7">Hold a 30-minute check-in on the same day each month</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to build a complete money plan from sample data. Change the numbers in brackets to your own rounded numbers if you like.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a friendly money coach who teaches budgeting in simple English. This is for learning and planning, not financial advice.

        Made-up household: [a couple in Los Angeles with one child].
        - Take-home pay: [Rs 1,10,000] a month
        - Essential costs: [Rs 70,000] a month (rent, food, school, bills, car EMI of Rs 9,500)
        - Other spending last month: [eating out Rs 8,000, shopping Rs 12,000, streaming apps Rs 2,400]
        - Savings now: [Rs 60,000]. No credit card debt.
        - Goals: emergency fund of 6 months' essential costs; [a family trip of Rs 90,000 in 18 months]

        Please make:
        1. A money snapshot table.
        2. A budget using the 50/30/20 idea, adjusted to fit these numbers. Explain any change.
        3. Three possible spending leaks, with a small action for each.
        4. A goals table: goal, target, saved, months, monthly saving. Show the maths.
        5. A 6-step monthly check-in checklist.
        6. A list of topics to take to a chartered accountant or a SEBI-registered adviser.
        Do not recommend any specific fund, loan or product. Do not state interest or tax rates as facts.</pre>
            <ul class="ai-try-checks">
              <li>Do the budget parts add up to the take-home pay?</li>
              <li>Is the goal maths right? (Check one line in a spreadsheet.)</li>
              <li>Does the plan put the emergency fund before other goals?</li>
              <li>Does it avoid naming products or stating rates as facts?</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A money plan is a small routine, not one big document. Snapshot, budget, review, goals and a monthly check-in keep you in control. AI does the drafting and explaining. You check the maths, make the choices and ask a professional for the big decisions.
        </div>
      HTML
      starter_code: nil
    }
  }.freeze
end

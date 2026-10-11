module AiBankingFraudContent
  # Units (sidebar dividers): 1–4 Banking and AI Basics · 5–9 Fraud and Risk · 10–14 Credit, Compliance and Fairness · 15 Capstone
  # Widgets: sequence, sorter, stepper. No code editor: each Try It is an ai-try prompt box.
  LESSONS = {
    1 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-fin">Finance</div>
          <h1 class="lc-title">How Banking Works</h1>
        </div>
        <p class="lc-lead">Before you can understand AI in banking, you need to know what a bank does. A bank does three main jobs. It keeps people's money (deposits). It lends money (loans). It moves money from one person to another (payments). In this lesson you will learn these three jobs, the main ways to pay in India, and how a bank earns money. Every fraud check and credit model later in this course sits on top of these jobs.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 270" role="img" aria-label="Depositors such as Ravi and Meena put money in Navkar Bank and receive interest. The bank lends to borrowers such as Sweet Crumbs, who pay back interest and fees. The bank earns the gap. Below, five payment rails move money: UPI, cards, NEFT, IMPS and RTGS.">
            <defs><marker id="bf1a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="20" y="30" width="180" height="90" rx="10" fill="#27274e" stroke="#3b82f6"/>
              <text x="110" y="60" font-weight="700">Depositors</text>
              <text x="110" y="82" font-size="11" fill="#9b99b8">Ravi and Meena</text>
              <text x="110" y="100" font-size="11" fill="#9b99b8">savings account</text>
              <rect x="290" y="25" width="180" height="100" rx="12" fill="#1f1f44" stroke="#eab308"/>
              <text x="380" y="56" font-weight="700" fill="#fde68a">Navkar Bank</text>
              <text x="380" y="80" font-size="11" fill="#9b99b8">lends most deposits</text>
              <text x="380" y="98" font-size="11" fill="#9b99b8">keeps some in reserve</text>
              <rect x="560" y="30" width="180" height="90" rx="10" fill="#27274e" stroke="#10b981"/>
              <text x="650" y="60" font-weight="700">Borrowers</text>
              <text x="650" y="82" font-size="11" fill="#9b99b8">Sweet Crumbs</text>
              <text x="650" y="100" font-size="11" fill="#9b99b8">business loan</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#bf1a)">
                <line x1="202" y1="60" x2="286" y2="60"/>
                <line x1="288" y1="95" x2="204" y2="95"/>
                <line x1="472" y1="60" x2="556" y2="60"/>
                <line x1="558" y1="95" x2="474" y2="95"/>
              </g>
              <g font-size="10.5" fill="#9b99b8">
                <text x="245" y="52">deposits</text>
                <text x="245" y="112">interest</text>
                <text x="515" y="52">loans</text>
                <text x="515" y="112">interest, fees</text>
              </g>
              <text x="380" y="158" font-size="12" fill="#fde68a">Bank earns the gap: loan interest minus deposit interest, plus fees</text>
              <text x="380" y="192" font-size="12" font-weight="700" fill="#c4b5fd">Payment rails move money between accounts</text>
              <rect x="20" y="206" width="124" height="46" rx="8" fill="#27274e" stroke="#8b5cf6"/>
              <text x="82" y="226" font-weight="700">UPI</text><text x="82" y="243" font-size="10.5" fill="#9b99b8">phone, QR code</text>
              <rect x="164" y="206" width="124" height="46" rx="8" fill="#27274e" stroke="#8b5cf6"/>
              <text x="226" y="226" font-weight="700">Cards</text><text x="226" y="243" font-size="10.5" fill="#9b99b8">debit, credit</text>
              <rect x="308" y="206" width="144" height="46" rx="8" fill="#27274e" stroke="#8b5cf6"/>
              <text x="380" y="226" font-weight="700">NEFT</text><text x="380" y="243" font-size="10.5" fill="#9b99b8">settled in batches</text>
              <rect x="472" y="206" width="124" height="46" rx="8" fill="#27274e" stroke="#8b5cf6"/>
              <text x="534" y="226" font-weight="700">IMPS</text><text x="534" y="243" font-size="10.5" fill="#9b99b8">instant transfer</text>
              <rect x="616" y="206" width="124" height="46" rx="8" fill="#27274e" stroke="#8b5cf6"/>
              <text x="678" y="226" font-weight="700">RTGS</text><text x="678" y="243" font-size="10.5" fill="#9b99b8">large amounts</text>
            </g>
          </svg>
          <figcaption>A bank takes deposits, lends money and moves payments. It earns mainly from the gap between loan interest and deposit interest, plus fees.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The three main jobs of a bank</h3>
          <table class="lc-table">
            <thead><tr><th>Job</th><th>What it means</th><th>Example</th></tr></thead>
            <tbody>
              <tr><td><strong>Deposits</strong></td><td>People and businesses keep money in the bank. The bank may pay interest on it.</td><td>Ravi and Meena keep their savings in a savings account and a fixed deposit (FD: money locked for a set time at a set rate).</td></tr>
              <tr><td><strong>Loans</strong></td><td>The bank lends money. The borrower pays it back with interest.</td><td>Sweet Crumbs borrows money to buy a new oven. Ananya has a credit card, which is a kind of short-term loan.</td></tr>
              <tr><td><strong>Payments</strong></td><td>The bank moves money from one account to another.</td><td>Ananya pays Sweet Crumbs by UPI. LedgerLite Pvt Ltd pays salaries by NEFT.</td></tr>
            </tbody>
          </table>
          <p>Banks also sell other products, such as insurance, mutual funds and lockers. Non-banking financial companies (NBFCs) can also give loans. In India, the Reserve Bank of India (RBI) regulates banks and NBFCs.</p>
        </div>
        <div class="lc-card">
          <h3>The main ways to pay in India</h3>
          <table class="lc-table">
            <thead><tr><th>Method</th><th>How it works</th><th>Common use</th></tr></thead>
            <tbody>
              <tr><td><strong>UPI</strong> (Unified Payments Interface)</td><td>Pay from a phone app to a UPI ID, a phone number or a QR code. You approve with your UPI PIN. It is run by NPCI (National Payments Corporation of India).</td><td>Shops, friends, bills</td></tr>
              <tr><td><strong>Debit and credit cards</strong></td><td>Pay at a card machine, online or at an ATM. A debit card takes money from your account. A credit card uses the bank's money, which you repay later.</td><td>Shopping, travel, online orders</td></tr>
              <tr><td><strong>NEFT</strong> (National Electronic Funds Transfer)</td><td>Bank-to-bank transfer that is settled in half-hourly batches, day and night</td><td>Salaries, supplier payments</td></tr>
              <tr><td><strong>IMPS</strong> (Immediate Payment Service)</td><td>Instant bank-to-bank transfer at any time</td><td>Urgent transfers</td></tr>
              <tr><td><strong>RTGS</strong> (Real Time Gross Settlement)</td><td>Instant transfer meant for large amounts</td><td>Big business payments</td></tr>
            </tbody>
          </table>
          <p>Limits, timings and charges for each method change from time to time. Check the RBI, NPCI or your bank's website for the current rules.</p>
          <p>One rule never changes: <strong>you never need a PIN or OTP to receive money.</strong> A PIN or OTP (one-time password) is only for sending money or approving an action. You will see why this matters in the fraud lessons.</p>
        </div>
        <div class="lc-card">
          <h3>How a bank earns money: a worked example</h3>
          <p>Here is a simple example with made-up numbers for Navkar Bank, a made-up bank. Real rates are different and change often.</p>
          <table class="lc-table">
            <thead><tr><th>Item</th><th>Made-up amount</th></tr></thead>
            <tbody>
              <tr><td>Deposits taken</td><td>₹100 crore at 4% a year</td></tr>
              <tr><td>Interest the bank pays depositors</td><td>₹4 crore</td></tr>
              <tr><td>Loans given</td><td>₹80 crore at 10% a year</td></tr>
              <tr><td>Interest the bank earns on loans</td><td>₹8 crore</td></tr>
              <tr><td><strong>Interest gap (before costs)</strong></td><td><strong>₹4 crore</strong></td></tr>
            </tbody>
          </table>
          <p>The bank also earns fees, such as card fees and processing fees on loans. From this income, it pays staff, rent and technology costs. It also loses money when borrowers do not repay and when fraud is not caught. This is why banks spend a lot on fraud checks and credit checks. AI helps with both.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Explain banking.</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Explain in simple English how a bank earns money from deposits and loans.
        Use a made-up example in ₹ with round numbers.
        Keep it under 150 words. Do not state current interest rates as facts.</code></pre>
          <p>The better prompt asks for simple words, a made-up example and no "current rates". AI often states old rates as if they were true today.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: follow a UPI payment</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Ananya buys a cake for ₹450 at Sweet Crumbs and pays by UPI. Put the steps in order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Ananya scans the Sweet Crumbs QR code in her UPI app.</li>
              <li data-order="2">She checks that the name shown is "Sweet Crumbs" and types ₹450.</li>
              <li data-order="3">She enters her UPI PIN to approve the payment.</li>
              <li data-order="4">Her bank checks her balance and runs its fraud checks.</li>
              <li data-order="5">The UPI network passes the payment to the bakery's bank.</li>
              <li data-order="6">The bakery's bank adds ₹450 to its account. Both sides get a message.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to explain the lines of a made-up bank statement in plain words. Then check that it did not invent any facts.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a patient banking teacher. Explain a bank statement to [Ananya, a 28-year-old salaried software tester in Maharashtra] in simple English.

        For each line below, give a table with columns: Date, Line, Payment method (UPI, card, NEFT, IMPS, ATM or other), Money in or out, What it probably means (one short sentence).
        If you are not sure what a line means, write "Not sure" and the question she should ask her bank.
        Do not invent fees, rates or rules. This is for learning only.

        Made-up statement lines (Navkar Bank, a made-up bank):
        01-09-2026 | NEFT CR LEDGERLITE PVT LTD SALARY | in 62,000
        02-09-2026 | UPI/SWEET CRUMBS/PUNE | out 450
        04-09-2026 | POS 4XXX DMART PUNE | out 2,318
        06-09-2026 | ATM WDL KOTHRUD | out 5,000
        08-09-2026 | IMPS/P2A/RAVI | out 3,000
        10-09-2026 | CHG SMS ALERT QTR | out 15

        After the table, add the total money in and total money out.</pre>
            <ul class="ai-try-checks">
              <li>All six lines appear with the same amounts.</li>
              <li>If you did not change the lines, money in is ₹62,000 and money out is ₹10,783.</li>
              <li>POS is explained as a card payment at a shop's machine, and CHG as a bank charge.</li>
              <li>It does not state a fee amount or rule as a fact without telling you to check with the bank.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A bank keeps money, lends money and moves money. It earns from the interest gap and fees, and it loses money to bad loans and fraud. That is why AI in banking focuses on payments, credit and fraud.
        </div>
      HTML
      starter_code: nil
    },
    2 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-fin">Finance</div>
          <h1 class="lc-title">Where AI Is Used in Banking</h1>
        </div>
        <p class="lc-lead">Banks and fintechs (technology companies that offer financial services) use AI in many places. Some uses are hidden, such as checking every card payment for fraud. Some you can see, such as a chatbot in a banking app. In this lesson you will learn the five main areas where AI is used and what it does in each. You will also learn what people must still check and decide. You will also see how you can use an AI assistant in your own finance work.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 280" role="img" aria-label="Five areas around Navkar Bank's AI: fraud checks score each payment, credit helps judge loan risk, service bots answer common questions, compliance helps with KYC and AML checks, and personalisation suggests offers and reminders. A person checks key decisions.">
            <defs><marker id="bf2a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="290" y="105" width="180" height="60" rx="12" fill="#1f1f44" stroke="#eab308"/>
              <text x="380" y="131" font-weight="700" fill="#fde68a">Navkar Bank AI</text>
              <text x="380" y="151" font-size="11" fill="#9b99b8">models + rules + data</text>
              <rect x="20" y="20" width="200" height="60" rx="10" fill="#27274e" stroke="#ec4899"/>
              <text x="120" y="45" font-weight="700">Fraud checks</text>
              <text x="120" y="65" font-size="11" fill="#9b99b8">score each payment</text>
              <rect x="540" y="20" width="200" height="60" rx="10" fill="#27274e" stroke="#3b82f6"/>
              <text x="640" y="45" font-weight="700">Credit</text>
              <text x="640" y="65" font-size="11" fill="#9b99b8">help judge loan risk</text>
              <rect x="20" y="190" width="200" height="60" rx="10" fill="#27274e" stroke="#10b981"/>
              <text x="120" y="215" font-weight="700">Service bots</text>
              <text x="120" y="235" font-size="11" fill="#9b99b8">answer common questions</text>
              <rect x="540" y="190" width="200" height="60" rx="10" fill="#27274e" stroke="#22d3ee"/>
              <text x="640" y="215" font-weight="700">Compliance</text>
              <text x="640" y="235" font-size="11" fill="#9b99b8">help with KYC and AML</text>
              <rect x="280" y="205" width="200" height="60" rx="10" fill="#27274e" stroke="#8b5cf6"/>
              <text x="380" y="230" font-weight="700">Personalisation</text>
              <text x="380" y="250" font-size="11" fill="#9b99b8">offers and reminders</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#bf2a)">
                <line x1="290" y1="115" x2="224" y2="70"/>
                <line x1="470" y1="115" x2="536" y2="70"/>
                <line x1="290" y1="158" x2="224" y2="200"/>
                <line x1="470" y1="158" x2="536" y2="200"/>
                <line x1="380" y1="167" x2="380" y2="201"/>
              </g>
              <text x="380" y="45" font-size="12" fill="#6ee7b7">A person checks key decisions</text>
              <text x="380" y="65" font-size="11" fill="#9b99b8">blocks, loans, reports</text>
            </g>
          </svg>
          <figcaption>AI supports five main areas of banking work. People stay responsible for the important decisions.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The five main areas</h3>
          <table class="lc-table">
            <thead><tr><th>Area</th><th>What AI does</th><th>What people still check or decide</th></tr></thead>
            <tbody>
              <tr><td><strong>Fraud checks</strong></td><td>Gives each card, UPI or net banking payment a risk score in a fraction of a second. High scores are held or sent for review.</td><td>Analysts review alerts. They call the customer and decide to block or release.</td></tr>
              <tr><td><strong>Credit</strong></td><td>Helps estimate how likely a borrower is to repay. It uses credit bureau data, income and past repayments.</td><td>Credit officers check documents and unusual cases. Decisions must follow lending rules and be explainable.</td></tr>
              <tr><td><strong>Service bots</strong></td><td>Answers common questions, such as "How do I block my card?" It can also route a chat to the right team.</td><td>Hard or sensitive cases go to a person. The bot must never ask for an OTP, PIN or password.</td></tr>
              <tr><td><strong>Compliance</strong></td><td>Helps with KYC (Know Your Customer: checking who a customer is) and AML (anti-money laundering: spotting dirty money). It matches names with watchlists and finds odd patterns.</td><td>Analysts decide if activity is suspicious and if a report must be filed.</td></tr>
              <tr><td><strong>Personalisation</strong></td><td>Suggests products and sends reminders, such as a bill due date.</td><td>Offers must be suitable and fair. Customers must not be pushed into products they do not need.</td></tr>
            </tbody>
          </table>
          <p>Each bank uses AI differently, and the details are usually private. So treat this table as a general picture, not as a description of any one bank.</p>
        </div>
        <div class="lc-card">
          <h3>AI on your own desk</h3>
          <p>You do not need to build a model to use AI in finance work. Staff in banks, fintechs and business finance teams use AI assistants (chat tools such as Claude) for everyday tasks:</p>
          <ul class="lc-list">
            <li><strong>Explaining terms.</strong> "What is a chargeback?" (a chargeback is when a card payment is reversed after a customer disputes it).</li>
            <li><strong>Summarising documents.</strong> A long circular or policy becomes a one-page note. You still read the key parts yourself.</li>
            <li><strong>Drafting messages.</strong> A clear fraud-warning SMS or an email to a customer.</li>
            <li><strong>Reviewing sample data.</strong> Spotting odd lines in a made-up or masked transaction list.</li>
          </ul>
          <p>Only use tools your employer has approved. Never paste real customer data into a public AI tool. The lesson on using AI safely covers this in detail.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>How does my bank use AI?</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Explain in simple English the common ways banks use AI for fraud checks,
        credit, service bots, compliance and personalisation.
        For each, give one example a customer might notice, and one risk.
        Say clearly that each bank is different and details are not public.</code></pre>
          <p>The AI cannot know what your bank does inside. The better prompt asks for general patterns and tells the AI not to pretend.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: which area is it?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each AI use into the right area of the bank.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="fraud" data-label="Fraud checks"></div>
              <div data-sorter-target="bucket" data-bucket="credit" data-label="Credit"></div>
              <div data-sorter-target="bucket" data-bucket="service" data-label="Service bots"></div>
              <div data-sorter-target="bucket" data-bucket="compliance" data-label="Compliance"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="fraud" data-why="Scoring a payment for risk before it goes through is a fraud check.">Ananya's card is used at 2 a.m. in another country, and the payment is held</li>
              <li data-bucket="credit" data-why="Estimating if a borrower can repay is credit work.">Sweet Crumbs applies for a business loan, and a model estimates repayment risk</li>
              <li data-bucket="service" data-why="Answering a common question in the app is a service bot's job.">Ravi asks the app chatbot how to change his card's spending limit</li>
              <li data-bucket="compliance" data-why="Matching names with watchlists is part of KYC and AML checks.">A new customer's name is checked against official watchlists</li>
              <li data-bucket="fraud" data-why="A login from a new phone right after a password reset is a common sign of account takeover.">A login from a new phone, just after a password reset, triggers an extra check</li>
              <li data-bucket="compliance" data-why="Spotting many cash deposits just under a reporting level is AML work.">Many cash deposits just below a reporting level are flagged for an analyst</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to explain how a bank might use AI, from a small business owner's point of view. Then check that it stays general and honest.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a banking trainer. Explain to [the owner of Sweet Crumbs, a small bakery in Maharashtra] how a bank might use AI in these five areas: fraud checks, credit, service bots, compliance (KYC and AML), and personalisation.

        Give a table with columns:
        Area | What the AI does (one sentence) | What the owner might notice | One risk or limit | One question the owner can ask the bank

        Rules:
        - Use simple English and explain any banking term in brackets.
        - Say clearly that each bank is different and most details are private.
        - Do not name any real bank or claim what a real bank does.
        - Remind the owner that the bank will never ask for an OTP, PIN or password.
        - End with two sentences on what people, not AI, must decide.</pre>
            <ul class="ai-try-checks">
              <li>All five areas are in the table.</li>
              <li>It does not claim facts about a real, named bank.</li>
              <li>Terms such as KYC and AML are explained in plain words.</li>
              <li>It says a bank will never ask for an OTP, PIN or password.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> In banking, AI mostly scores, sorts and drafts. It flags risky payments, estimates loan risk, answers simple questions and helps compliance teams. People review the alerts and make the decisions that affect customers.
        </div>
      HTML
      starter_code: nil
    },
    3 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-fin">Finance</div>
          <h1 class="lc-title">Rules vs AI Models</h1>
        </div>
        <p class="lc-lead">Banks decide which payments look risky in two main ways. A <strong>rule</strong> is a condition that people write, such as "hold payments over ₹50,000 to a new payee". A <strong>model</strong> is a program that learns patterns from past examples and gives a <strong>risk score</strong>. A <strong>threshold</strong> is the score where the bank takes action. In this lesson you will learn how each works, where each is strong, and why most banks use both. No coding is needed.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 250" role="img" aria-label="Rule path: a ₹62,000 payment meets a rule written by people, over ₹50,000 and a new payee, so it is held. Model path: the same payment goes to a model learned from past cases, which gives a risk score of 86. The threshold is 80, so the payment is sent for review.">
            <defs><marker id="bf3a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="20" y="24" text-anchor="start" font-weight="700" fill="#fcd34d">A. Rule (written by people)</text>
              <rect x="20" y="38" width="160" height="54" rx="8" fill="#27274e" stroke="#3b82f6"/>
              <text x="100" y="60">Payment</text><text x="100" y="80" font-size="11" fill="#9b99b8">₹62,000, new payee</text>
              <rect x="250" y="38" width="230" height="54" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="365" y="60">Rule check</text><text x="365" y="80" font-size="11" fill="#9b99b8">over ₹50,000 and new payee?</text>
              <rect x="550" y="38" width="190" height="54" rx="8" fill="#27274e" stroke="#ec4899"/>
              <text x="645" y="60">Yes: hold</text><text x="645" y="80" font-size="11" fill="#9b99b8">ask the customer</text>
              <text x="20" y="134" text-anchor="start" font-weight="700" fill="#c4b5fd">B. Model (learned from data)</text>
              <rect x="20" y="148" width="160" height="54" rx="8" fill="#27274e" stroke="#3b82f6"/>
              <text x="100" y="170">Payment</text><text x="100" y="190" font-size="11" fill="#9b99b8">amount, device, time</text>
              <rect x="250" y="148" width="230" height="54" rx="8" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="365" y="170">Model</text><text x="365" y="190" font-size="11" fill="#9b99b8">learned from past cases</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#bf3a)">
                <line x1="182" y1="65" x2="246" y2="65"/>
                <line x1="482" y1="65" x2="546" y2="65"/>
                <line x1="182" y1="175" x2="246" y2="175"/>
                <line x1="482" y1="175" x2="546" y2="175"/>
              </g>
              <text x="696" y="160" font-size="11" fill="#fde68a" text-anchor="end">threshold 80</text>
              <rect x="550" y="166" width="152" height="16" rx="3" fill="#10b981" opacity="0.55"/>
              <rect x="702" y="166" width="38" height="16" rx="3" fill="#ec4899" opacity="0.75"/>
              <line x1="702" y1="158" x2="702" y2="190" stroke="#fde68a" stroke-width="2"/>
              <text x="560" y="200" font-size="10.5" fill="#9b99b8" text-anchor="start">0</text>
              <text x="735" y="200" font-size="10.5" fill="#9b99b8" text-anchor="end">100</text>
              <text x="645" y="222" font-size="12" fill="#fca5a5">score 86: send for review</text>
              <text x="380" y="244" font-size="11" fill="#9b99b8">Most banks run both. Rules catch known patterns. Models catch mixes of small signs.</text>
            </g>
          </svg>
          <figcaption>A rule gives a yes or no answer. A model gives a score from 0 to 100, and the threshold decides what happens next.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Rules: clear conditions written by people</h3>
          <p>A rule is an "if this, then that" check. Fraud and risk teams write rules from experience. Here are some made-up rules for Navkar Bank:</p>
          <table class="lc-table">
            <thead><tr><th>Rule</th><th>Action</th></tr></thead>
            <tbody>
              <tr><td>Card payment in a new country within 1 hour of a payment in India</td><td>Decline and send an alert</td></tr>
              <tr><td>Payment over ₹50,000 to a payee added less than 24 hours ago</td><td>Hold and call the customer</td></tr>
              <tr><td>More than 5 failed PIN attempts</td><td>Block the card for a while</td></tr>
            </tbody>
          </table>
          <p><strong>Good points:</strong> rules are easy to understand and to explain to a customer or an auditor. <strong>Weak points:</strong> fraudsters learn the rules and stay just under them. A long list of rules also gets hard to manage, and rules often flag many good customers.</p>
        </div>
        <div class="lc-card">
          <h3>Models, risk scores and thresholds</h3>
          <p>A machine-learning model studies many past payments that were marked as fraud or genuine. It learns which mixes of signs usually go with fraud. Signs include the amount, the time, the device, the place and how new the payee is. For each new payment, it gives a <strong>risk score</strong>, for example from 0 (looks normal) to 100 (looks very risky).</p>
          <p>The score alone does nothing. The bank picks a <strong>threshold</strong>. Payments above the threshold are held, declined or sent for review. Here is a made-up example for 10,000 payments:</p>
          <table class="lc-table">
            <thead><tr><th>Threshold</th><th>Payments flagged</th><th>Real frauds caught (of 20)</th><th>Good payments flagged by mistake</th></tr></thead>
            <tbody>
              <tr><td>90</td><td>15</td><td>11</td><td>4</td></tr>
              <tr><td>80</td><td>40</td><td>16</td><td>24</td></tr>
              <tr><td>60</td><td>150</td><td>19</td><td>131</td></tr>
            </tbody>
          </table>
          <p>A lower threshold catches more fraud but also stops more good customers. A higher one annoys fewer people but misses more fraud. Choosing the threshold is a business decision made by people, not by the model. Later in this course you will study these mistakes in detail.</p>
          <p><strong>Good points:</strong> models can spot patterns that no one wrote as a rule. <strong>Weak points:</strong> they are harder to explain, and they can go wrong when fraud patterns or customer habits change. So teams must watch their results over time.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: set a threshold in a spreadsheet</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Prompt">A trainee at Navkar Bank asks an AI assistant: "In simple words, what does a risk score of 86 mean if our threshold is 80? Use only this made-up example."</li>
              <li data-kind="answer" data-label="AI reply">"A score of 86 is above 80, so this payment would be sent for review. The score is not a probability of fraud unless your team has set it up that way. It only ranks how unusual the payment looks."</li>
              <li data-kind="tool" data-label="Spreadsheet">The trainee opens a made-up sheet of 10 payments with scores in column C. In D2 they type <code>=IF(C2&gt;=80,"Review","Pass")</code> and copy it down.</li>
              <li data-kind="result" data-label="Result">3 of the 10 payments show "Review". <code>=COUNTIF(D2:D11,"Review")</code> returns 3.</li>
              <li data-kind="check" data-label="Check">The trainee looks at the 3 flagged payments. One is a genuine ₹62,000 rent payment to a new landlord. The model flagged it because the payee was new.</li>
              <li data-kind="warn" data-label="Mistake to avoid">The trainee wants to lower the threshold to 60 "to be safe". Now 7 payments show "Review". The team would need to check more than twice as many cases, and more good customers would be stopped.</li>
              <li data-kind="check" data-label="Decision">The trainee writes a short note with both counts. The fraud team lead, not the trainee or the AI, decides the threshold.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to apply a rule and a threshold to eight made-up payments. Then compare what each one catches.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a trainer in a bank's fraud team. Use only the made-up data below.

        Rule: flag a payment if the amount is over ₹[40,000] AND the payee is new.
        Model threshold: flag a payment if the risk score is [70] or more.

        Payments (ID | amount ₹ | payee | model risk score):
        T1 | 450 | known | 5
        T2 | 62,000 | new | 86
        T3 | 1,200 | known | 12
        T4 | 48,000 | new | 74
        T5 | 9,999 | new | 91
        T6 | 75,000 | known | 30
        T7 | 2,500 | new | 45
        T8 | 41,000 | new | 66

        Give a table with columns: ID, Flagged by rule (Yes/No), Flagged by model (Yes/No).
        Then list: flagged by both, only by the rule, only by the model.
        Explain in simple English why a rule and a model can disagree.
        End with one sentence on who should choose the threshold.</pre>
            <ul class="ai-try-checks">
              <li>If you did not change the brackets, the rule flags T2, T4 and T8.</li>
              <li>The model flags T2, T4 and T5 (scores 70 or more).</li>
              <li>T2 and T4 are flagged by both. T8 is only by the rule. T5 is only by the model.</li>
              <li>It says people in the bank, not the AI, choose the threshold.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A rule says yes or no. A model gives a score, and a threshold turns that score into an action. Rules are easy to explain. Models find patterns people missed. The threshold is a human choice between catching more fraud and stopping fewer good customers.
        </div>
      HTML
      starter_code: nil
    },
    4 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-fin">Finance</div>
          <h1 class="lc-title">Using AI Safely in Financial Work</h1>
        </div>
        <p class="lc-lead">Financial data is some of the most private data there is. A leaked account number, PAN or card number can lead to fraud and to legal trouble for your employer. In this lesson you will learn what data you must never paste into an AI tool. You will also learn how to make safe sample data and follow your organisation's AI policy. This is general education, not legal advice. Your compliance team and your organisation's policy come first.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 260" role="img" aria-label="Before and after. Left: real data you must not paste, such as full account numbers, PAN and Aadhaar, OTP, PIN or passwords, and customer names with phone numbers. Middle: mask it or make it up. Right: safe data such as CUST-001, ACC-0001, city only and sample amounts. Bottom: use only tools your organisation has approved.">
            <defs><marker id="bf4a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="20" y="20" width="270" height="180" rx="12" fill="#1f1f44" stroke="#ec4899"/>
              <text x="155" y="46" font-weight="700" fill="#fca5a5">Real data: do not paste</text>
              <text x="40" y="78" text-anchor="start" font-size="12">Full account or card number</text>
              <text x="40" y="104" text-anchor="start" font-size="12">PAN, Aadhaar, passport</text>
              <text x="40" y="130" text-anchor="start" font-size="12">OTP, PIN, passwords</text>
              <text x="40" y="156" text-anchor="start" font-size="12">Customer name + phone</text>
              <text x="40" y="182" text-anchor="start" font-size="12">Internal reports, limits</text>
              <rect x="315" y="85" width="130" height="50" rx="10" fill="#27274e" stroke="#f59e0b"/>
              <text x="380" y="106" font-weight="700">Mask it</text>
              <text x="380" y="124" font-size="11" fill="#9b99b8">or make it up</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#bf4a)">
                <line x1="292" y1="110" x2="311" y2="110"/>
                <line x1="447" y1="110" x2="466" y2="110"/>
              </g>
              <rect x="470" y="20" width="270" height="180" rx="12" fill="#1f1f44" stroke="#10b981"/>
              <text x="605" y="46" font-weight="700" fill="#6ee7b7">Safe to use</text>
              <text x="490" y="78" text-anchor="start" font-size="12">ACC-0001, CARD-A</text>
              <text x="490" y="104" text-anchor="start" font-size="12">Labels, not ID numbers</text>
              <text x="490" y="130" text-anchor="start" font-size="12">Never any OTP or password</text>
              <text x="490" y="156" text-anchor="start" font-size="12">CUST-001, city only</text>
              <text x="490" y="182" text-anchor="start" font-size="12">Sample or rounded figures</text>
              <rect x="120" y="215" width="520" height="34" rx="8" fill="#27274e" stroke="#3b82f6"/>
              <text x="380" y="237" font-size="12">Use only AI tools your organisation has approved for this data</text>
            </g>
          </svg>
          <figcaption>Before you use AI, remove or replace anything that points to a real person, account or secret.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>What counts as confidential</h3>
          <table class="lc-table">
            <thead><tr><th>Data</th><th>Why it is risky</th><th>Safe alternative</th></tr></thead>
            <tbody>
              <tr><td>Account, card and UPI IDs</td><td>Can be used in fraud or to find a person</td><td>Labels such as ACC-0001 or CARD-A</td></tr>
              <tr><td>PAN, Aadhaar, passport, date of birth</td><td>Used to prove identity. Can be misused to open accounts or loans.</td><td>Remove them. Use "ID checked: yes/no".</td></tr>
              <tr><td>OTP, PIN, CVV, passwords</td><td>Give direct access to money</td><td>Never write them anywhere. There is no safe version.</td></tr>
              <tr><td>Customer names, phones, addresses</td><td>Personal data protected by law</td><td>CUST-001, "Maharashtra", "salaried, 28"</td></tr>
              <tr><td>Internal fraud rules, thresholds, limits</td><td>Fraudsters could use them to stay under the radar</td><td>Describe the idea in general words</td></tr>
              <tr><td>Unpublished company results</td><td>Can be price-sensitive for listed companies</td><td>Use public figures or made-up numbers</td></tr>
            </tbody>
          </table>
          <p>India's Digital Personal Data Protection Act, 2023 sets rules for handling personal data. Banks also have duties of customer confidentiality, and the RBI issues guidance on technology and AI risk. The details are for your compliance and legal teams. Your job is to follow your organisation's policy.</p>
        </div>
        <div class="lc-card">
          <h3>Public AI tools vs approved tools</h3>
          <ul class="lc-list">
            <li><strong>Public or personal accounts.</strong> A free chat tool on your personal login is outside your employer's control. What you type may be stored. Depending on the settings, it may also be used to improve the tool. Treat it as public.</li>
            <li><strong>Approved business tools.</strong> Many organisations buy business versions of AI tools with a contract. These often promise not to train on your data and keep it under stricter controls. Your IT or security team decides which tools are approved, and for what data.</li>
            <li><strong>Settings change.</strong> Data rules for AI tools change often. Check the tool's current privacy and data-use pages, and your company's policy.</li>
          </ul>
          <p>Even in an approved tool, share the least data needed for the task. Deleting a chat afterwards does not undo sharing. And AI answers can be wrong, so check every number and claim before you use it.</p>
        </div>
        <div class="lc-card">
          <h3>Making safe sample data</h3>
          <p>For learning and for testing prompts, made-up data is the safest choice. You can ask AI to create it:</p>
          <pre><code>Create 10 made-up bank transactions for training.
        Columns: ID (T01 to T10), Date (September 2026), Customer (CUST-001 to CUST-004),
        Method (UPI, card, NEFT or IMPS), Amount in ₹, Payee (new or known).
        Do not use any real names, account numbers, PAN or phone numbers.
        Add the word SAMPLE to the table title.</code></pre>
          <p>If you must work with real records in an approved tool, mask them first in the spreadsheet. For example, this formula turns a customer's row number into a label:</p>
          <pre><code>="CUST-"&amp;TEXT(ROW()-1,"000")</code></pre>
          <p>Then delete the column with real names before you share anything. Check the sheet one more time for hidden columns and notes.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: a safe routine before using AI</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">An analyst at LedgerLite Pvt Ltd wants AI help to review last month's vendor payments. Put the safe steps in order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Read the company's AI policy and see which tools are approved.</li>
              <li data-order="2">Decide the smallest set of columns needed for the task.</li>
              <li data-order="3">Replace vendor names and account numbers with labels such as VEN-01 and ACC-01.</li>
              <li data-order="4">Check the sheet for hidden columns, notes and any remaining IDs.</li>
              <li data-order="5">Paste the masked data into the approved AI tool with a clear prompt.</li>
              <li data-order="6">Check the AI's answer against the original sheet before sharing it.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to find the sensitive data in a made-up case note and rewrite it safely. Every detail below is fake.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a data privacy helper for [a bank's fraud team]. The note below is made up for training.

        1. List every piece of personal or confidential data in the note. For each, say what type it is and why it is risky.
        2. Suggest a safe replacement (a label such as CUST-001, or remove it).
        3. Rewrite the note with all sensitive data replaced, keeping the useful facts.
        4. Say if anything in the note should never be written down at all.

        Made-up note:
        "Customer Ananya K., phone 90000 00000, PAN ABCDE1234F, account 000111222333 at Navkar Bank, main branch. On 12 Sept she reported a UPI payment of ₹9,999 she did not make. She said she had read out an OTP 482913 to a caller who claimed to be from the bank. Her date of birth is 01-01-1998. Our internal rule holds new-payee payments over ₹[50,000]."</pre>
            <ul class="ai-try-checks">
              <li>It finds the name, phone, PAN, account number, date of birth and OTP.</li>
              <li>It says the OTP should never be written in a note at all.</li>
              <li>It points out that the internal rule and its amount are confidential.</li>
              <li>The rewritten note still keeps the useful facts: date, ₹9,999, UPI, and the fake bank call.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Use approved tools only, share the least data needed, and prefer made-up or masked data. Never type an OTP, PIN, password or full ID number into any AI tool. Check every AI answer before you use it.
        </div>
      HTML
      starter_code: nil
    },
    5 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-fin">Finance</div>
          <h1 class="lc-title">Common Fraud Types</h1>
        </div>
        <p class="lc-lead">To spot fraud, you first need to know its common forms. In this lesson you will learn five types that affect bank customers in India: card fraud, UPI and QR scams, account takeover, loan app scams and identity fraud. For each, you will learn the warning signs and how to protect yourself and your customers. The goal is protection only. You will also see how to use AI to check a message that looks suspicious.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 260" role="img" aria-label="Five fraud types with one warning sign each. Card fraud: payments you did not make. UPI or QR scam: asked for a PIN to receive money. Account takeover: OTP or password shared or stolen. Loan app scam: an unregistered app wants your contacts. Identity fraud: a loan in your name you never took. Below: never share OTP, PIN or passwords, and report fast.">
            <defs><marker id="bf5a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="380" y="22" font-size="12" fill="#9b99b8">Warning signs to look for</text>
              <rect x="15" y="35" width="140" height="120" rx="10" fill="#27274e" stroke="#ec4899"/>
              <text x="85" y="62" font-weight="700">Card fraud</text>
              <text x="85" y="100" font-size="11" fill="#9b99b8">Payments you</text>
              <text x="85" y="116" font-size="11" fill="#9b99b8">did not make</text>
              <rect x="160" y="35" width="140" height="120" rx="10" fill="#27274e" stroke="#f59e0b"/>
              <text x="230" y="62" font-weight="700">UPI / QR scam</text>
              <text x="230" y="100" font-size="11" fill="#9b99b8">Asked for PIN</text>
              <text x="230" y="116" font-size="11" fill="#9b99b8">to receive money</text>
              <rect x="305" y="35" width="150" height="120" rx="10" fill="#27274e" stroke="#8b5cf6"/>
              <text x="380" y="62" font-weight="700">Account takeover</text>
              <text x="380" y="100" font-size="11" fill="#9b99b8">OTP or password</text>
              <text x="380" y="116" font-size="11" fill="#9b99b8">shared or stolen</text>
              <rect x="460" y="35" width="140" height="120" rx="10" fill="#27274e" stroke="#3b82f6"/>
              <text x="530" y="62" font-weight="700">Loan app scam</text>
              <text x="530" y="100" font-size="11" fill="#9b99b8">Unregistered app</text>
              <text x="530" y="116" font-size="11" fill="#9b99b8">wants contacts</text>
              <rect x="605" y="35" width="140" height="120" rx="10" fill="#27274e" stroke="#22d3ee"/>
              <text x="675" y="62" font-weight="700">Identity fraud</text>
              <text x="675" y="100" font-size="11" fill="#9b99b8">A loan in your name</text>
              <text x="675" y="116" font-size="11" fill="#9b99b8">you never took</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#bf5a)">
                <line x1="380" y1="158" x2="380" y2="184"/>
              </g>
              <rect x="110" y="188" width="540" height="58" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="380" y="212" font-weight="700" fill="#6ee7b7">Never share OTP, PIN or passwords</text>
              <text x="380" y="233" font-size="12" fill="#9b99b8">Report fast: your bank, then 1930 or cybercrime.gov.in</text>
            </g>
          </svg>
          <figcaption>Five common fraud types, each with one key warning sign. The same basic protection works for all of them.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The five types at a glance</h3>
          <table class="lc-table">
            <thead><tr><th>Type</th><th>What happens</th><th>Warning signs</th><th>Protection</th></tr></thead>
            <tbody>
              <tr><td><strong>Card fraud</strong></td><td>Someone uses your card details without your permission, often online.</td><td>Alerts for payments you do not know. Small "test" charges.</td><td>Turn on alerts. Turn off online or international use when not needed. Block the card at once if in doubt.</td></tr>
              <tr><td><strong>UPI and QR scams</strong></td><td>You are tricked into approving a payment, when you think you are receiving money.</td><td>A "buyer" or "refund" asks you to scan a QR code or enter your PIN to receive money.</td><td>Remember: receiving money never needs a PIN or a scan. Read every request before you approve it.</td></tr>
              <tr><td><strong>Account takeover</strong></td><td>A criminal gets control of your net banking, app or SIM.</td><td>A caller asks for an OTP. Your password changes. Your SIM suddenly stops working.</td><td>Never share an OTP. Use strong, different passwords. Call your mobile operator and bank if your SIM dies suddenly.</td></tr>
              <tr><td><strong>Loan app scams</strong></td><td>A fake or unregistered app gives a small loan, then charges huge fees and harasses the borrower.</td><td>No clear lender name. Asks for access to contacts and photos. Threatening calls.</td><td>Borrow only from banks or RBI-registered NBFCs, or apps clearly linked to them. Check the lender's name on the RBI website. RBI also lists the lending apps that regulated lenders use.</td></tr>
              <tr><td><strong>Identity fraud</strong></td><td>Someone uses copies of your PAN, Aadhaar or photos to open accounts or take loans.</td><td>Loans or cards on your credit report that you never applied for</td><td>Share ID copies only when needed, and write the purpose on them. Check your credit report now and then.</td></tr>
            </tbody>
          </table>
          <p>Scam methods change often. Check the RBI's and your bank's current awareness pages for new warnings.</p>
        </div>
        <div class="lc-card">
          <h3>If it happens: what to do</h3>
          <ul class="lc-list">
            <li><strong>Act fast.</strong> Speed matters. Call your bank using the number on your card or the bank's official website. Ask them to block the card, UPI or account.</li>
            <li><strong>Report the fraud.</strong> In India, you can call the national cyber crime helpline 1930 or report at cybercrime.gov.in.</li>
            <li><strong>Secure your accounts.</strong> Change passwords and UPI PIN from a safe device. Remove unknown apps, especially screen-sharing apps.</li>
            <li><strong>Keep records.</strong> Save messages, call times and transaction IDs. Do not delete anything.</li>
          </ul>
          <p>Never use a phone number from a search result or a message to "reach the bank". Fake customer care numbers are a common trick.</p>
        </div>
        <div class="lc-card">
          <h3>Using AI to check a suspicious message</h3>
          <p>An AI assistant can help you spot warning signs in a message. It is a second opinion, not proof. It cannot tell if a link or number is real. Remove your personal details before you paste the message.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Is this message real?</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>I received the message below. My personal details are removed.
        List the warning signs of fraud in it, in simple English.
        Tell me the safe next step. Do not tell me to click any link,
        reply, or call any number in the message.
        Message: [paste the message with your details removed]</code></pre>
          <p>Whatever the AI says, the safe action is the same: do not click, and contact your bank through its official channel.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: name the fraud type</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Each story is made up. Sort it into the fraud type it shows.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="card" data-label="Card fraud"></div>
              <div data-sorter-target="bucket" data-bucket="upi" data-label="UPI or QR scam"></div>
              <div data-sorter-target="bucket" data-bucket="takeover" data-label="Account takeover"></div>
              <div data-sorter-target="bucket" data-bucket="loanid" data-label="Loan app or identity fraud"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="card" data-why="The card is still with Ravi, so someone used its details online. This is card fraud.">Ravi sees a ₹3,999 online charge on his credit card. His card is still in his wallet.</li>
              <li data-bucket="upi" data-why="Receiving money never needs a PIN. Entering it here would send money instead.">A "buyer" for Meena's old sofa sends a QR code and asks her to enter her PIN to receive ₹8,000</li>
              <li data-bucket="takeover" data-why="Sharing an OTP let the caller get into her account and change the password.">Ananya reads out an OTP to a "bank officer" on the phone. Soon after, her net banking password changes.</li>
              <li data-bucket="takeover" data-why="A SIM that suddenly stops working can be a sign of SIM swap, a way to take over accounts.">The Sweet Crumbs owner's SIM suddenly stops working, and bank SMS alerts stop too</li>
              <li data-bucket="loanid" data-why="An app with no clear lender that wants all contacts and makes threats is a loan app scam.">An app gives an instant loan with no checks, asks for all contacts, then threatens the borrower</li>
              <li data-bucket="loanid" data-why="A loan she never applied for means someone used her identity.">Ananya's credit report shows a personal loan she never applied for</li>
              <li data-bucket="upi" data-why="A payment request that asks for your PIN takes money from you. A real refund does not need your PIN.">A UPI payment request labelled "Refund" appears in Ravi's app and asks for his PIN</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to find the warning signs in a made-up scam message and suggest safe next steps.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a fraud-awareness trainer for [bank customers in India]. The message below is made up for training. It is not real.

        Message:
        "Dear customer, your Navkar Bank KYC expires today and your account will be blocked tonight. Update now at the link below. Our officer will call you. Share the OTP you receive to finish the update. [link removed]"

        Please:
        1. Say which fraud type this message is most like, and why.
        2. List every warning sign, one per line.
        3. Give 4 safe next steps for the customer.
        4. List what the customer must NOT do.
        5. Write a 2-line warning SMS a bank could send to customers about this kind of message.

        Rules: simple English. Do not tell anyone to click the link, reply or call a number in the message. Say that the customer should contact the bank only through its official number or website.</pre>
            <ul class="ai-try-checks">
              <li>It names account takeover or phishing (a fake message that tries to steal details).</li>
              <li>It lists the urgency, the link, the fake officer call and the OTP request as warning signs.</li>
              <li>It says to contact the bank only through official channels, and never share the OTP.</li>
              <li>If it mentions reporting in India, check that it says 1930 or cybercrime.gov.in.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Most fraud needs your help: a PIN, an OTP, a scan or a click. Your bank will never ask for these. If something feels urgent or strange, stop and contact your bank through its official channel.
        </div>
      HTML
      starter_code: nil
    },
    6 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-fin">Finance</div>
          <h1 class="lc-title">Fraud Signals</h1>
        </div>
        <p class="lc-lead">A <strong>fraud signal</strong> is a small clue that a payment may not be genuine. Examples are an unusual amount, a new device or a payment at 3 am. One clue alone often means nothing. Many clues together can mean real trouble. In this lesson, you will learn the main signals, read a sample transaction list, and use AI to explain what you see. These skills help you in a bank job, and they also help you protect your own account.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 280" role="img" aria-label="A UPI payment of 48,000 rupees at 2:47 am to a new payee shows five signals: new device 30 points, new payee 20, amount far above usual 25, night time 10 and unusual location 15. Together they make a risk score of 100. The score is above the threshold of 60, so an alert goes to a person.">
            <defs><marker id="bf6a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="10" y="80" width="170" height="110" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="95" y="106" font-weight="700" fill="#93c5fd">Payment</text>
              <text x="95" y="130">UPI ₹48,000</text>
              <text x="95" y="152">02:47 am</text>
              <text x="95" y="174" font-size="12" fill="#9b99b8">to: R K Traders</text>
              <rect x="220" y="20" width="250" height="34" rx="8" fill="#27274e" stroke="#8b5cf6"/>
              <text x="232" y="42" text-anchor="start">New device</text><text x="458" y="42" text-anchor="end" fill="#fcd34d">+30</text>
              <rect x="220" y="62" width="250" height="34" rx="8" fill="#27274e" stroke="#8b5cf6"/>
              <text x="232" y="84" text-anchor="start">New payee</text><text x="458" y="84" text-anchor="end" fill="#fcd34d">+20</text>
              <rect x="220" y="104" width="250" height="34" rx="8" fill="#27274e" stroke="#8b5cf6"/>
              <text x="232" y="126" text-anchor="start">Amount far above usual</text><text x="458" y="126" text-anchor="end" fill="#fcd34d">+25</text>
              <rect x="220" y="146" width="250" height="34" rx="8" fill="#27274e" stroke="#8b5cf6"/>
              <text x="232" y="168" text-anchor="start">Night time (1 to 5 am)</text><text x="458" y="168" text-anchor="end" fill="#fcd34d">+10</text>
              <rect x="220" y="188" width="250" height="34" rx="8" fill="#27274e" stroke="#8b5cf6"/>
              <text x="232" y="210" text-anchor="start">Unusual location</text><text x="458" y="210" text-anchor="end" fill="#fcd34d">+15</text>
              <rect x="510" y="80" width="110" height="110" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="565" y="110" fill="#fcd34d">Risk score</text>
              <text x="565" y="150" font-size="28" font-weight="700" fill="#fcd34d">100</text>
              <text x="565" y="174" font-size="11" fill="#9b99b8">points</text>
              <rect x="645" y="80" width="105" height="110" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="697" y="110" font-weight="700" fill="#f9a8d4">Alert</text>
              <text x="697" y="140" font-size="12">score ≥ 60</text>
              <text x="697" y="162" font-size="11" fill="#9b99b8">sent to a</text>
              <text x="697" y="178" font-size="11" fill="#9b99b8">person</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#bf6a)">
                <line x1="182" y1="135" x2="216" y2="135"/>
                <line x1="472" y1="135" x2="506" y2="135"/>
                <line x1="622" y1="135" x2="641" y2="135"/>
              </g>
              <text x="380" y="262" font-size="12" fill="#9b99b8">One signal alone is weak. Many signals together raise the score.</text>
            </g>
          </svg>
          <figcaption>A simple points system adds up the signals for one payment. A high total sends an alert to a person, who then checks it.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The main fraud signals</h3>
          <p>A bank compares each new payment with the customer's normal <strong>pattern</strong> (how, where and when they usually pay). A signal is anything that does not fit the pattern. Every signal can also have an innocent reason, so a signal is a question, not proof.</p>
          <table class="lc-table">
            <thead><tr><th>Signal</th><th>What it means</th><th>Possible innocent reason</th></tr></thead>
            <tbody>
              <tr><td><strong>Unusual amount</strong></td><td>Much bigger than the customer's normal payments</td><td>Buying a laptop, paying a deposit</td></tr>
              <tr><td><strong>Unusual location</strong></td><td>A payment or login from a new city or country</td><td>Travel for work or a holiday</td></tr>
              <tr><td><strong>New device</strong></td><td>A phone or computer the bank has not seen before</td><td>The customer bought a new phone</td></tr>
              <tr><td><strong>Odd timing</strong></td><td>Payments at night, or many payments in a few minutes</td><td>Night shift work, a festival sale</td></tr>
              <tr><td><strong>New payee</strong></td><td>A person or account the customer never paid before</td><td>A new electrician, a new supplier</td></tr>
              <tr><td><strong>Changes before payment</strong></td><td>Password, email or mobile number changed just before a large transfer</td><td>Rare. Treat this as a strong warning.</td></tr>
            </tbody>
          </table>
          <p>The last signal often points to <strong>account takeover</strong>: a criminal gets control of someone's account and then sends money out.</p>
        </div>
        <div class="lc-card">
          <h3>Reading a sample transaction list</h3>
          <p>Here is a made-up list for Ananya, a 28-year-old software tester in Maharashtra. She banks with Navkar Bank, a made-up bank. Her usual UPI payments are between ₹100 and ₹3,000, from one phone, in Maharashtra.</p>
          <table class="lc-table">
            <thead><tr><th>Date and time</th><th>Details</th><th>Amount (₹)</th><th>Signals found</th><th>Points</th></tr></thead>
            <tbody>
              <tr><td>03 Sep, 09:15</td><td>UPI to local grocery shop</td><td>640</td><td>None</td><td>0</td></tr>
              <tr><td>05 Sep, 20:30</td><td>Card, online shopping</td><td>2,150</td><td>None</td><td>0</td></tr>
              <tr><td>10 Sep, 11:00</td><td>NEFT rent to landlord</td><td>18,000</td><td>None (same payee every month)</td><td>0</td></tr>
              <tr><td>12 Sep, 19:05</td><td>Card at a hotel, Kerala</td><td>6,800</td><td>Unusual location (+15), new payee (+20)</td><td>35</td></tr>
              <tr><td>14 Sep, 02:47</td><td>UPI to R K Traders</td><td>48,000</td><td>New device, new payee, amount, night, location</td><td>100</td></tr>
              <tr><td>14 Sep, 02:52</td><td>UPI to R K Traders</td><td>49,000</td><td>All five above, plus a quick repeat (+15)</td><td>115</td></tr>
            </tbody>
          </table>
          <p>The points come from the diagram: new device 30, new payee 20, amount far above usual 25, night time 10, unusual location 15. One extra signal is added here: quick repeat 15. The alert threshold is 60 points. So only the two night payments create alerts. The Kerala payment scores 35. Her phone was also in Kerala, so it looks like a holiday.</p>
          <p>The rent is ₹18,000, which is large for Ananya. But she pays the same landlord every month, so it fits her pattern. In a spreadsheet, you can put the points for each signal in columns C to H and add a check column:</p>
          <pre><code>=IF(SUM(C2:H2)&gt;=60,"Alert","OK")</code></pre>
          <p>Real banks use far more signals. Many use <strong>machine-learning models</strong> (programs that learn the weight of each signal from past fraud cases). The idea is the same: add up the clues and compare the total with a threshold.</p>
        </div>
        <div class="lc-card">
          <h3>How AI helps you read a list</h3>
          <p>AI can scan a list, name the signals and suggest innocent reasons. It is useful for training and for writing notes. Here is a weak prompt:</p>
          <pre><code>Which of these transactions are fraud?</code></pre>
          <p>The AI does not know the customer's pattern, so it guesses. It may also sound certain when it should not. A better prompt gives the pattern and asks for signals, not verdicts:</p>
          <pre><code>You are helping a fraud analyst trainee.
        Customer pattern: salaried, Maharashtra, UPI payments ₹100 to ₹3,000, one phone.
        For each transaction below, list the fraud signals, one innocent reason,
        and a risk level (Low, Medium, High). Do not say "fraud" or "not fraud".
        [made-up or masked transactions]</code></pre>
          <p>What you must still do:</p>
          <ul class="lc-list">
            <li>Check each signal against the real data. AI can misread times and amounts.</li>
            <li>Use made-up or masked data only. Never paste real account numbers, card numbers or customer names into a public AI tool.</li>
            <li>Leave the decision to a trained person who can contact the customer.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Activity: How strong is the signal?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each situation. Is it a strong warning, a weak signal that needs context, or a normal pattern?</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="strong" data-label="Strong warning"></div>
              <div data-sorter-target="bucket" data-bucket="weak" data-label="Weak alone: check context"></div>
              <div data-sorter-target="bucket" data-bucket="normal" data-label="Normal pattern"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="strong" data-why="Many signals appear together: new device, new payee, a large amount and night time.">A new device adds a new payee and sends ₹48,000 at 2:47 am</li>
              <li data-bucket="weak" data-why="The location is new, but the phone is there too. A holiday is a likely reason.">A card payment at a hotel in Kerala, while the customer's phone is also in Kerala</li>
              <li data-bucket="normal" data-why="Same payee, same amount, same date every month. It fits the pattern.">Monthly rent of ₹18,000 to the same landlord on the 10th</li>
              <li data-bucket="strong" data-why="Many quick payments just under a round number can be an attempt to stay under a limit.">Five payments of ₹9,900 each to a new payee within ten minutes</li>
              <li data-bucket="weak" data-why="New payees are common. The amount is small, so check the context before you worry.">A first payment of ₹2,500 to a new electrician</li>
              <li data-bucket="normal" data-why="A small payment at a regular shop is the usual pattern.">A ₹640 UPI payment at the usual grocery shop</li>
              <li data-bucket="strong" data-why="Changing login details just before a big transfer is a classic sign of account takeover.">Password and mobile number changed, then a large transfer an hour later</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to find the signals in a made-up transaction list. Then compare its answer with the table in this lesson.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a trainer for new fraud analysts at a bank. All data below is made up.

        Customer: [Ananya, 28, salaried software tester in Maharashtra]. Usual pattern: UPI payments of [₹100 to ₹3,000], from one phone, in [Maharashtra], in the daytime.

        Transactions:
        1. 03 Sep 09:15, UPI to local grocery shop, ₹640, usual phone
        2. 10 Sep 11:00, NEFT rent to landlord (paid every month), ₹18,000, usual phone
        3. 12 Sep 19:05, card at a hotel in Kerala, ₹6,800, phone also in Kerala
        4. 14 Sep 02:47, UPI to new payee R K Traders, ₹48,000, new device, login from another state
        5. 14 Sep 02:52, UPI to R K Traders, ₹49,000, same new device

        For each transaction, give a table with: number, signals found, one possible innocent reason, risk level (Low, Medium or High).
        Then list three questions the analyst should ask the customer.
        Rules: do not call any transaction "fraud". Use only the facts given. If a fact is missing, say so. End with one line saying a trained person must make the decision.</pre>
            <ul class="ai-try-checks">
              <li>Every signal matches the data. The AI did not invent new facts.</li>
              <li>The rent is not flagged, because it fits the monthly pattern.</li>
              <li>Transactions 4 and 5 get the highest risk level.</li>
              <li>The answer leaves the final decision to a person.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A signal is a clue, not proof. Look for many signals together, compare them with the customer's normal pattern, and always think of the innocent reason too.
        </div>
      HTML
      starter_code: nil
    },
    7 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-fin">Finance</div>
          <h1 class="lc-title">False Positives and False Negatives</h1>
        </div>
        <p class="lc-lead">No fraud system is perfect. Sometimes it blocks a good customer. This is a <strong>false positive</strong> (a false alarm). Sometimes it lets real fraud through. This is a <strong>false negative</strong> (a miss). If you catch more fraud, you usually annoy more good customers. In this lesson, you will count both kinds of mistakes, work out simple rates, and see how a bank chooses its alert threshold.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="A two by two table for 10,000 made-up payments at a threshold of 60. Real fraud: 40 flagged (true positives) and 10 not flagged (false negatives). Genuine: 210 flagged (false positives) and 9,740 not flagged (true negatives). A side panel shows a catch rate of 80 percent, alert accuracy of 16 percent and a false alarm rate of 2.1 percent.">
            <defs><marker id="bf7a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="250" y="40" font-weight="700" fill="#c4b5fd">Flagged (alert)</text>
              <text x="435" y="40" font-weight="700" fill="#c4b5fd">Not flagged</text>
              <text x="80" y="96" font-weight="700">Real fraud</text>
              <text x="80" y="116" font-size="11" fill="#9b99b8">50 in total</text>
              <text x="80" y="191" font-weight="700">Genuine</text>
              <text x="80" y="211" font-size="11" fill="#9b99b8">9,950 in total</text>
              <rect x="160" y="55" width="180" height="90" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="250" y="80" fill="#6ee7b7">True positive</text>
              <text x="250" y="110" font-size="22" font-weight="700">40</text>
              <text x="250" y="132" font-size="11" fill="#9b99b8">fraud caught</text>
              <rect x="345" y="55" width="180" height="90" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="435" y="80" fill="#f9a8d4">False negative</text>
              <text x="435" y="110" font-size="22" font-weight="700">10</text>
              <text x="435" y="132" font-size="11" fill="#9b99b8">fraud missed</text>
              <rect x="160" y="150" width="180" height="90" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="250" y="175" fill="#fcd34d">False positive</text>
              <text x="250" y="205" font-size="22" font-weight="700">210</text>
              <text x="250" y="227" font-size="11" fill="#9b99b8">good customers stopped</text>
              <rect x="345" y="150" width="180" height="90" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="435" y="175" fill="#93c5fd">True negative</text>
              <text x="435" y="205" font-size="22" font-weight="700">9,740</text>
              <text x="435" y="227" font-size="11" fill="#9b99b8">good payments allowed</text>
              <rect x="560" y="55" width="190" height="185" rx="10" fill="#27274e" stroke="#8b5cf6"/>
              <text x="655" y="80" font-weight="700" fill="#c4b5fd">Threshold: 60</text>
              <text x="655" y="108" font-size="12">Catch rate: 80%</text>
              <text x="655" y="124" font-size="11" fill="#9b99b8">40 of 50 frauds</text>
              <text x="655" y="152" font-size="12">Alert accuracy: 16%</text>
              <text x="655" y="168" font-size="11" fill="#9b99b8">40 of 250 alerts</text>
              <text x="655" y="196" font-size="12">False alarm rate: 2.1%</text>
              <text x="655" y="212" font-size="11" fill="#9b99b8">210 of 9,950 genuine</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#bf7a)">
                <line x1="342" y1="262" x2="170" y2="262"/>
                <line x1="342" y1="262" x2="515" y2="262"/>
              </g>
              <text x="160" y="286" text-anchor="start" font-size="11" fill="#9b99b8">lower threshold = more alerts</text>
              <text x="525" y="286" text-anchor="end" font-size="11" fill="#9b99b8">higher = more misses</text>
            </g>
          </svg>
          <figcaption>Every payment lands in one of four boxes. The threshold decides how many land in each box.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The four outcomes</h3>
          <p>Navkar Bank, a made-up bank, tests its fraud score on 10,000 past payments. It already knows that 50 of them were fraud and 9,950 were genuine. With an alert threshold of 60 points, the system flags 250 payments.</p>
          <table class="lc-table">
            <thead><tr><th>Outcome</th><th>Plain meaning</th><th>Count</th><th>Who is hurt</th></tr></thead>
            <tbody>
              <tr><td><strong>True positive</strong></td><td>Fraud, and the system flagged it</td><td>40</td><td>Nobody. This is a win.</td></tr>
              <tr><td><strong>False negative</strong></td><td>Fraud, but no alert</td><td>10</td><td>The victim loses money, and the bank may have to pay</td></tr>
              <tr><td><strong>False positive</strong></td><td>Genuine, but the system flagged it</td><td>210</td><td>A good customer is blocked or delayed</td></tr>
              <tr><td><strong>True negative</strong></td><td>Genuine, and no alert</td><td>9,740</td><td>Nobody</td></tr>
            </tbody>
          </table>
          <p>Check the totals: 40 + 10 = 50 frauds. 210 + 9,740 = 9,950 genuine payments. 40 + 210 = 250 alerts. All four add up to 10,000.</p>
          <p>Three simple rates describe the result:</p>
          <ul class="lc-list">
            <li><strong>Catch rate</strong> (also called recall): frauds caught ÷ all frauds = 40 ÷ 50 = 80%.</li>
            <li><strong>Alert accuracy</strong> (also called precision): frauds caught ÷ all alerts = 40 ÷ 250 = 16%. So 84 of every 100 alerts are false alarms.</li>
            <li><strong>False alarm rate</strong>: false positives ÷ all genuine payments = 210 ÷ 9,950 = about 2.1%.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Choosing a threshold</h3>
          <p>The bank tests two more thresholds on the same 10,000 payments. All numbers are made up for learning.</p>
          <table class="lc-table">
            <thead><tr><th>Threshold</th><th>Alerts</th><th>Caught</th><th>Missed</th><th>False alarms</th><th>Catch rate</th><th>Alert accuracy</th><th>False alarm rate</th></tr></thead>
            <tbody>
              <tr><td>40</td><td>700</td><td>47</td><td>3</td><td>653</td><td>94%</td><td>6.7%</td><td>6.6%</td></tr>
              <tr><td>60</td><td>250</td><td>40</td><td>10</td><td>210</td><td>80%</td><td>16%</td><td>2.1%</td></tr>
              <tr><td>80</td><td>90</td><td>30</td><td>20</td><td>60</td><td>60%</td><td>33%</td><td>0.6%</td></tr>
            </tbody>
          </table>
          <p>Now add a rough cost. Say each missed fraud loses about ₹40,000. Say each false alarm costs about ₹100 of staff time, plus an unhappy customer.</p>
          <table class="lc-table">
            <thead><tr><th>Threshold</th><th>Missed fraud cost</th><th>False alarm cost</th><th>Total (₹)</th></tr></thead>
            <tbody>
              <tr><td>40</td><td>3 × 40,000 = 1,20,000</td><td>653 × 100 = 65,300</td><td>1,85,300</td></tr>
              <tr><td>60</td><td>10 × 40,000 = 4,00,000</td><td>210 × 100 = 21,000</td><td>4,21,000</td></tr>
              <tr><td>80</td><td>20 × 40,000 = 8,00,000</td><td>60 × 100 = 6,000</td><td>8,06,000</td></tr>
            </tbody>
          </table>
          <p>Threshold 40 has the lowest cost. But it stops 653 good customers, and the team must review 700 alerts. If the team can only review about 300, threshold 40 will not work. Many banks use two levels. A medium score asks the customer to confirm in the app. Only a high score blocks the payment.</p>
          <p>You can do these sums in a spreadsheet. Put Caught in B2, Missed in C2, False alarms in D2 and True negatives in E2:</p>
          <pre><code>Catch rate:        =B2/(B2+C2)
        Alert accuracy:    =B2/(B2+D2)
        False alarm rate:  =D2/(D2+E2)
        Rough cost:        =C2*40000+D2*100</code></pre>
        </div>
        <div class="lc-card">
          <h3>How AI helps, and what you decide</h3>
          <p>AI can explain these trade-offs in plain words for a manager or a customer team. It can also draft a short options note. Here is a weak prompt:</p>
          <pre><code>What is the best fraud threshold?</code></pre>
          <p>There is no single best threshold. It depends on your data, costs and team size. A better prompt gives the numbers and asks for working:</p>
          <pre><code>Here are test results for three thresholds (made-up data): [table].
        Calculate catch rate, alert accuracy and false alarm rate for each.
        Show every calculation. Then explain the trade-off in five simple
        sentences for a branch manager. Do not choose for me.</code></pre>
          <p>AI often makes arithmetic slips. Check every rate in your spreadsheet. The final choice of threshold belongs to the bank's risk team, not to the AI. They also check that false alarms do not fall much more on one group of customers, such as people who travel or new customers.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: Name the outcome</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Put each case in the right box.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="tp" data-label="True positive"></div>
              <div data-sorter-target="bucket" data-bucket="fp" data-label="False positive"></div>
              <div data-sorter-target="bucket" data-bucket="fn" data-label="False negative"></div>
              <div data-sorter-target="bucket" data-bucket="tn" data-label="True negative"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="tp" data-why="It was fraud, and the system flagged it. This is a correct alert.">A ₹48,000 night payment is held. The customer confirms it was a scam.</li>
              <li data-bucket="fp" data-why="The payment was genuine, but the system stopped it. This is a false alarm.">Ravi's ₹12,000 school fee payment is blocked. It was genuine.</li>
              <li data-bucket="fn" data-why="It was fraud, but no alert fired. This is a miss.">A scam payment of ₹9,000 goes through with no alert. The customer reports it two days later.</li>
              <li data-bucket="tn" data-why="Genuine payment, no alert. The system was right to stay quiet.">Ananya's ₹640 grocery payment goes through with no alert.</li>
              <li data-bucket="fp" data-why="An alert fired on a real business payment. The owner was delayed for nothing.">Rangrez Crafts pays a new supplier ₹75,000. An alert fires, but the payment was real.</li>
              <li data-bucket="tp" data-why="Real fraud, caught in time. A correct alert.">A stolen card is used online. An alert fires and the card is blocked in time.</li>
              <li data-bucket="fn" data-why="The score stayed under the threshold, so real fraud was missed.">A criminal logs in from a new device at night, but the score stays below the threshold.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to compare two thresholds and explain the trade-off. Then check its sums yourself.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a fraud analytics tutor. Explain in simple English for a reader who is new to banking. All numbers are made up.

        A bank tested its fraud score on [10,000] past payments. [50] were real fraud.

        Threshold [60]: [250] alerts, [40] frauds caught, [10] frauds missed.
        Threshold [80]: [90] alerts, [30] frauds caught, [20] frauds missed.

        Tasks:
        1. For each threshold, work out: false positives, true negatives, catch rate (caught / all frauds), alert accuracy (caught / alerts) and false alarm rate (false positives / genuine payments). Show every calculation.
        2. Assume each missed fraud costs [₹40,000] and each false alarm costs [₹100]. Work out the total cost for each threshold.
        3. Write a note of five short sentences for a manager. Explain the trade-off. Do not pick the threshold. Say who must decide.
        Put the results in one table.</pre>
            <ul class="ai-try-checks">
              <li>With the sample numbers, the catch rates are 80% and 60%.</li>
              <li>False positives are 210 and 60. True negatives are 9,740 and 9,890.</li>
              <li>Total costs are ₹4,21,000 and ₹8,06,000. Check each sum in a spreadsheet.</li>
              <li>The note explains the trade-off and leaves the choice to people.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Every threshold is a trade-off. A lower one catches more fraud but stops more good customers. Count both kinds of mistakes, add their costs, and let people choose.
        </div>
      HTML
      starter_code: nil
    },
    8 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-fin">Finance</div>
          <h1 class="lc-title">Investigating an Alert with AI</h1>
        </div>
        <p class="lc-lead">An alert is only the start. A fraud analyst must now find out what really happened. This is called an <strong>investigation</strong>. The analyst collects the facts, builds a timeline, talks to the customer and decides what to do. In this lesson, you will see how AI can summarise a case, build a timeline and suggest next steps. You will also see why a person must check every fact and make the decision.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 270" role="img" aria-label="Six steps: alert, gather facts, AI drafts, you check, decide, case note. Below is the timeline of a made-up case for Sweet Crumbs: a new payee added on 14 September, an NEFT of 1,85,000 rupees tried on 15 September at 9:12, an alert and hold at 9:13, and a call to the customer at 9:40.">
            <defs><marker id="bf8a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="10" y="20" width="108" height="64" rx="10" fill="#1f1f44" stroke="#ec4899"/><text x="64" y="47">Alert</text><text x="64" y="68" font-size="11" fill="#9b99b8">score 88</text>
              <rect x="138" y="20" width="108" height="64" rx="10" fill="#1f1f44" stroke="#3b82f6"/><text x="192" y="47">Gather facts</text><text x="192" y="68" font-size="11" fill="#9b99b8">masked data</text>
              <rect x="266" y="20" width="108" height="64" rx="10" fill="#1f1f44" stroke="#8b5cf6"/><text x="320" y="47">AI drafts</text><text x="320" y="68" font-size="11" fill="#9b99b8">timeline, gaps</text>
              <rect x="394" y="20" width="108" height="64" rx="10" fill="#1f1f44" stroke="#f59e0b"/><text x="448" y="47">You check</text><text x="448" y="68" font-size="11" fill="#9b99b8">facts vs source</text>
              <rect x="522" y="20" width="108" height="64" rx="10" fill="#1f1f44" stroke="#10b981"/><text x="576" y="47">Decide</text><text x="576" y="68" font-size="11" fill="#9b99b8">a person only</text>
              <rect x="650" y="20" width="100" height="64" rx="10" fill="#1f1f44" stroke="#22d3ee"/><text x="700" y="47">Case note</text><text x="700" y="68" font-size="11" fill="#9b99b8">reasons</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#bf8a)">
                <line x1="120" y1="52" x2="134" y2="52"/><line x1="248" y1="52" x2="262" y2="52"/><line x1="376" y1="52" x2="390" y2="52"/><line x1="504" y1="52" x2="518" y2="52"/><line x1="632" y1="52" x2="646" y2="52"/>
              </g>
              <text x="20" y="130" text-anchor="start" font-size="12" fill="#9b99b8">Made-up case: Sweet Crumbs, a bakery in Maharashtra, Navkar Bank current account</text>
              <line x1="40" y1="170" x2="730" y2="170" stroke="#4b4a78" stroke-width="2"/>
              <circle cx="100" cy="170" r="7" fill="#8b5cf6"/>
              <circle cx="290" cy="170" r="7" fill="#f59e0b"/>
              <circle cx="480" cy="170" r="7" fill="#ec4899"/>
              <circle cx="670" cy="170" r="7" fill="#10b981"/>
              <text x="100" y="200" font-size="12" fill="#9b99b8">14 Sep, 16:40</text><text x="100" y="220">New payee added</text><text x="100" y="238" font-size="11" fill="#9b99b8">"SHREE FLOUR MILS"</text>
              <text x="290" y="200" font-size="12" fill="#9b99b8">15 Sep, 09:12</text><text x="290" y="220">NEFT ₹1,85,000 tried</text><text x="290" y="238" font-size="11" fill="#9b99b8">usual: ₹6,000 to ₹9,000</text>
              <text x="480" y="200" font-size="12" fill="#9b99b8">15 Sep, 09:13</text><text x="480" y="220">Alert, payment held</text><text x="480" y="238" font-size="11" fill="#9b99b8">usual device and place</text>
              <text x="670" y="200" font-size="12" fill="#9b99b8">15 Sep, 09:40</text><text x="670" y="220">Call to customer</text><text x="670" y="238" font-size="11" fill="#9b99b8">registered number</text>
            </g>
          </svg>
          <figcaption>AI speeds up the paperwork: summary, timeline and questions. A person checks the facts and makes the decision.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The case and its facts</h3>
          <p>Navkar Bank's system raises an alert on Sweet Crumbs, a small bakery in Maharashtra. All details here are made up. The analyst first gathers the facts from the bank's own systems.</p>
          <table class="lc-table">
            <thead><tr><th>Fact</th><th>What the systems show</th></tr></thead>
            <tbody>
              <tr><td>Alert</td><td>NEFT of ₹1,85,000 to a new payee. Risk score 88. Payment held for a check.</td></tr>
              <tr><td>Usual pattern</td><td>Weekly payments of ₹6,000 to ₹9,000 to "SHREE FLOUR MILLS" at another bank</td></tr>
              <tr><td>New payee</td><td>"SHREE FLOUR MILS" (one L missing), a different account, added the day before</td></tr>
              <tr><td>Login</td><td>Usual device and usual location. No password or mobile number change.</td></tr>
              <tr><td>Past contact</td><td>No complaints or earlier alerts on this account</td></tr>
            </tbody>
          </table>
          <p>The login looks normal, so this is probably not account takeover. The owner may be making the payment herself. The payee name is almost the same as the real supplier. This pattern fits a <strong>supplier bank-change scam</strong>: a fake email says the supplier has a "new bank account". The amount is also more than 20 times the usual weekly payment.</p>
        </div>
        <div class="lc-card">
          <h3>How AI helps with the case</h3>
          <p>An analyst may handle many alerts a day. AI can save time on the writing parts:</p>
          <ul class="lc-list">
            <li><strong>Summary:</strong> three or four sentences on what happened.</li>
            <li><strong>Timeline:</strong> the events in time order, in one table.</li>
            <li><strong>Gaps:</strong> facts that are still missing, as questions.</li>
            <li><strong>Next steps:</strong> options for the analyst to consider.</li>
            <li><strong>Case note draft:</strong> a clear record for auditors and other staff.</li>
          </ul>
          <p>Here is a weak prompt:</p>
          <pre><code>Is this fraud? Here is the case.</code></pre>
          <p>This asks the AI to decide, which is not its job. A better prompt asks for help with the paperwork only:</p>
          <pre><code>Use ONLY the facts below. Build a timeline table (time, event, source).
        Write a 3-sentence summary. List missing facts as questions.
        Suggest next steps, each marked "for analyst decision".
        If you are not sure of something, say so. Do not decide the case.
        [masked case facts]</code></pre>
          <p>Only use the AI tool your bank has approved. Mask customer details before you paste them. For example, write "Customer A" and "account ending 41".</p>
        </div>
        <div class="lc-card">
          <h3>The decision and the case note</h3>
          <p>The analyst calls the owner on the <strong>registered</strong> phone number, not a number from any email. The owner says the supplier emailed new bank details yesterday. The analyst asks her to call the supplier on the number she already knows. The supplier says it never changed its account. The owner cancels the payment.</p>
          <pre><code>Case BF-2291 (made-up)
        Customer: Sweet Crumbs (current account ending 41)
        Alert: NEFT ₹1,85,000 to new payee, score 88, held 15 Sep 09:13
        Findings: payee name is one letter different from the usual supplier.
        Login normal. Customer received an email about "new bank details".
        Supplier confirmed by phone that its account did not change.
        Decision: payment cancelled at the customer's request. Payee blocked.
        Customer advised to report the fake email at cybercrime.gov.in.
        Decided by: [analyst name], 15 Sep 10:05</code></pre>
          <p>The AI can draft this note. But the analyst must check every time, amount and name against the source systems. The decision line must show a person's name, not "AI".</p>
        </div>
        <div class="lc-card">
          <h3>Activity: Work the alert</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="result" data-label="Alert">Alert BF-2291: Sweet Crumbs, NEFT ₹1,85,000 to a new payee. Risk score 88. The payment is held.</li>
              <li data-kind="tool" data-label="Case system">You open the account in the bank's case system. The login is from the usual device and place. The payee "SHREE FLOUR MILS" was added yesterday at 16:40.</li>
              <li data-kind="user" data-label="Prompt">You paste the masked facts into the bank's approved AI tool. You ask for a timeline, a summary and open questions. You tell it not to decide.</li>
              <li data-kind="answer" data-label="AI draft">The AI gives a timeline and says the case fits a supplier bank-change pattern. It asks: "Did the customer receive a message about new bank details?"</li>
              <li data-kind="warn" data-label="Mistake to catch">The AI timeline says the payee was added on 15 Sep. The source shows 14 Sep, 16:40. You fix the date before you use the draft.</li>
              <li data-kind="check" data-label="Call the customer">You call the owner on the registered number. She got an email about new bank details. You ask her to call the supplier on the number she already has.</li>
              <li data-kind="result" data-label="Outcome">The supplier says its account never changed. The owner cancels the payment, and the fake payee is blocked.</li>
              <li data-kind="check" data-label="Case note">You write and check the case note. You sign the decision with your own name.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Give AI a made-up case and ask for a timeline, summary and questions. Then check every line against the facts.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are helping a bank fraud analyst with paperwork. All facts are made up. Use ONLY these facts.

        Customer: [Sweet Crumbs, a small bakery in Maharashtra], current account ending [41].
        - [14 Sep 16:40]: new payee "SHREE FLOUR MILS" added in net banking. The usual supplier is "SHREE FLOUR MILLS" at a different account.
        - [15 Sep 09:12]: NEFT of [₹1,85,000] to the new payee tried. Usual weekly payment to the supplier: [₹6,000 to ₹9,000].
        - [15 Sep 09:13]: alert, risk score [88], payment held.
        - Login from the usual device and location. No password or mobile number change.

        Please give:
        1. A timeline table: time, event.
        2. A summary in three short sentences.
        3. Missing facts, written as questions.
        4. Three possible next steps, each marked "for analyst decision".
        Rules: do not decide if this is fraud. Do not add facts. If you are unsure, say so. Use simple English.</pre>
            <ul class="ai-try-checks">
              <li>Every time, name and amount matches the facts given.</li>
              <li>The AI did not invent facts, such as an email the facts do not mention.</li>
              <li>Next steps include calling the customer on the registered number.</li>
              <li>The AI does not make the final decision.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Let AI do the writing work: summary, timeline and questions. Keep the thinking work for people: checking each fact against the source, talking to the customer and making the decision.
        </div>
      HTML
      starter_code: nil
    },
    9 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-fin">Finance</div>
          <h1 class="lc-title">Protecting Customers from Scams</h1>
        </div>
        <p class="lc-lead">In many scams, the criminal does not break into the account. Instead, they trick the customer into sending money or sharing an OTP (one-time password). Fraud models find these cases hard, because the customer makes the payment. So banks also protect customers with clear warnings and education. In this lesson, you will learn to write warnings that work, spot AI voice and deepfake scams, and know what to do after a scam. This lesson is general education, not legal advice.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 290" role="img" aria-label="Left: six warning signs of a scam: pressure to act fast, keep it secret, share your OTP or PIN, install a screen-sharing app, enter your UPI PIN to receive money, and a loved one's voice asking for money. Right: five steps if you are scammed: stop paying, call 1930, block your card or UPI, report to your bank in writing, and file a complaint at cybercrime.gov.in.">
            <defs><marker id="bf9a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="185" y="28" font-weight="700" fill="#fcd34d">Warning signs of a scam</text>
              <g text-anchor="start">
                <rect x="10" y="44" width="350" height="32" rx="8" fill="#27274e" stroke="#f59e0b"/><text x="24" y="65">"Act now, or your account is blocked"</text>
                <rect x="10" y="84" width="350" height="32" rx="8" fill="#27274e" stroke="#f59e0b"/><text x="24" y="105">"Do not tell your family or the bank"</text>
                <rect x="10" y="124" width="350" height="32" rx="8" fill="#27274e" stroke="#f59e0b"/><text x="24" y="145">Asks for your OTP, PIN or password</text>
                <rect x="10" y="164" width="350" height="32" rx="8" fill="#27274e" stroke="#f59e0b"/><text x="24" y="185">Asks you to install a screen-sharing app</text>
                <rect x="10" y="204" width="350" height="32" rx="8" fill="#27274e" stroke="#f59e0b"/><text x="24" y="225">"Enter your UPI PIN to receive money"</text>
                <rect x="10" y="244" width="350" height="32" rx="8" fill="#27274e" stroke="#f59e0b"/><text x="24" y="265">A loved one's voice asks for money fast</text>
              </g>
              <text x="575" y="28" font-weight="700" fill="#6ee7b7">If you are scammed: act fast</text>
              <g text-anchor="start">
                <rect x="400" y="44" width="350" height="32" rx="8" fill="#1f1f44" stroke="#10b981"/><text x="414" y="65">1. Stop: do not send any more money</text>
                <rect x="400" y="92" width="350" height="32" rx="8" fill="#1f1f44" stroke="#10b981"/><text x="414" y="113">2. Call 1930 (cyber fraud helpline)</text>
                <rect x="400" y="140" width="350" height="32" rx="8" fill="#1f1f44" stroke="#10b981"/><text x="414" y="161">3. Block your card or UPI via the bank</text>
                <rect x="400" y="188" width="350" height="32" rx="8" fill="#1f1f44" stroke="#10b981"/><text x="414" y="209">4. Report to your bank in writing</text>
                <rect x="400" y="236" width="350" height="32" rx="8" fill="#1f1f44" stroke="#10b981"/><text x="414" y="257">5. File at cybercrime.gov.in</text>
              </g>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#bf9a)">
                <line x1="575" y1="77" x2="575" y2="89"/><line x1="575" y1="125" x2="575" y2="137"/><line x1="575" y1="173" x2="575" y2="185"/><line x1="575" y1="221" x2="575" y2="233"/>
              </g>
            </g>
          </svg>
          <figcaption>Learn the warning signs so you can stop a scam early. If money is lost, speed matters: report at once.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Warnings that work</h3>
          <p>People ignore long, general warnings. A good warning is short and specific. It appears at the right moment, for example just before a payment to a new payee. Compare these two in-app messages:</p>
          <pre><code>Weak:   Beware of fraud. Stay safe online.

        Better: You are paying a new person ₹25,000.
                Did someone call you and ask you to pay?
                Navkar Bank will never ask you to move money
                to a "safe account". If you are unsure, stop.</code></pre>
          <p>Match the warning to the scam. Here are common, harmless examples to learn from:</p>
          <table class="lc-table">
            <thead><tr><th>Scam story</th><th>The trick</th><th>A short warning</th></tr></thead>
            <tbody>
              <tr><td>"Update your KYC or your account closes today"</td><td>A link to a fake bank page that steals login details</td><td>Do not click KYC links in messages. Update KYC only through the bank's official app, website or branch.</td></tr>
              <tr><td>"Scan this QR code to get your refund"</td><td>Scanning and entering a UPI PIN sends money out</td><td>You never need your UPI PIN to receive money.</td></tr>
              <tr><td>A fake customer care number found online</td><td>The "agent" asks for an OTP or a screen-sharing app</td><td>Use only the number on your card or on the bank's official website.</td></tr>
              <tr><td>A video call from a fake "officer" who says you are under "digital arrest"</td><td>Fear and secrecy, then a demand for money</td><td>Real officials do not arrest people on a video call. Hang up and tell your family.</td></tr>
              <tr><td>"Earn money by liking videos" or a stock tips group</td><td>Small early payouts, then big "deposits"</td><td>Easy money offers are a warning sign. Check SEBI-registered advisers only.</td></tr>
            </tbody>
          </table>
          <p>AI can help a bank team write these warnings in simple words and in many languages. A person who speaks the language must check every translation. Warnings must never contain links, and must never ask for any secret.</p>
        </div>
        <div class="lc-card">
          <h3>AI voice and deepfake scams</h3>
          <p>Criminals can now use AI to copy a person's voice from a short clip, such as a social media video. This is called <strong>voice cloning</strong>. A <strong>deepfake</strong> is a fake video or image made with AI. A scammer may call Meena with a voice that sounds like her brother: "I had an accident. Send ₹50,000 now. Do not tell anyone."</p>
          <p>Ravi and Meena, a couple in Tamil Nadu, agree on a simple family plan:</p>
          <ul class="lc-list">
            <li><strong>Hang up and call back</strong> on the number already saved in your phone. Do not use a number the caller gives.</li>
            <li><strong>Use a family code word.</strong> Pick a word that is not on social media. Ask for it in any urgent money call.</li>
            <li><strong>Slow down.</strong> Pressure and secrecy are the scammer's main tools. A real emergency can wait five minutes for a check.</li>
            <li><strong>Remember the rule:</strong> no bank, police or government office asks for an OTP, PIN or password on a call.</li>
          </ul>
          <p>Voice and video checks are no longer enough alone. Banks now add other checks, such as confirming big changes through the official app.</p>
        </div>
        <div class="lc-card">
          <h3>What to do if you are scammed</h3>
          <p>Speed matters. Money moves quickly between accounts, and early reports give the best chance to stop it.</p>
          <ul class="lc-list">
            <li><strong>1930</strong> is India's national cyber fraud helpline. <strong>cybercrime.gov.in</strong> is the national portal for full complaints. Both are run under the Ministry of Home Affairs. They work with banks to try to hold the money.</li>
            <li><strong>Tell your bank</strong> through its official app, website, branch or the number on your card. Ask for a complaint reference number.</li>
            <li><strong>Save evidence:</strong> screenshots, transaction IDs, phone numbers and messages.</li>
            <li><strong>Report scam calls and messages</strong> on the government's Sanchar Saathi portal. Check the portal for the current reporting options.</li>
          </ul>
          <p><strong>RBI rules on customer liability (general).</strong> RBI (the Reserve Bank of India) has rules that limit what a customer loses in an unauthorised electronic transaction. Under the long-standing rules, your loss can be zero if the bank was at fault. It can also be zero if the fault lay elsewhere and you reported quickly, within three working days. If you report later, you may have to bear part of the loss. If you shared your OTP or PIN, you may bear the loss until you report it. The bank is also expected to credit the disputed amount while it investigates, within a set number of days.</p>
          <p>In 2026, RBI issued an updated customer protection framework for electronic banking fraud. It covers more types of scams and puts more duty on banks. It is due to apply to transactions from 1 January 2027. Rules change, so check the RBI website and your bank's customer protection policy for the rules that apply today.</p>
          <p>If your bank does not reply within 30 days, or you are unhappy with its reply, you can complain to the RBI Ombudsman at cms.rbi.org.in. This is free, under the Reserve Bank - Integrated Ombudsman Scheme. Time limits apply, so check the portal. For legal help, speak to a qualified lawyer.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: After a scam, in order</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Meena sent money to a caller who used her brother's cloned voice. Put her next steps in order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Right away: stop talking to the caller and send no more money</li>
              <li data-order="2">Within minutes: call 1930 and give the transaction details</li>
              <li data-order="3">Next: block the card or UPI through the bank's official app or card number</li>
              <li data-order="4">Same day: report the transaction to the bank in writing and note the reference number</li>
              <li data-order="5">Same day: file a full complaint at cybercrime.gov.in with screenshots</li>
              <li data-order="6">After 30 days with no reply from the bank: complain to the RBI Ombudsman</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to write scam warnings for one scam type and one group of customers. Then check them against the rules in this lesson.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a customer education writer for [Navkar Bank], a bank in India. Write scam warnings for [older customers in Tamil Nadu] about [fake KYC update messages].

        Write three versions:
        1. An SMS of under 160 characters.
        2. An in-app pop-up shown just before a payment to a new payee (under 50 words).
        3. A short WhatsApp-style message that a son or daughter can forward to their parents (under 80 words).

        Rules:
        - Use simple, calm words. No fear or panic.
        - Include no links and no phone numbers, except the national cyber fraud helpline 1930.
        - Say that the bank will never ask for an OTP, PIN or password.
        - Say exactly what to do: stop, do not click, call the bank on the number on the card, and call 1930 if money is lost.

        Then give the SMS in [Tamil]. Mark it "Check with a native speaker before use".
        Finally, show the character count of the English SMS.</pre>
            <ul class="ai-try-checks">
              <li>No message contains a link or a phone number other than 1930.</li>
              <li>Each message says the bank never asks for an OTP, PIN or password.</li>
              <li>Count the SMS characters yourself. AI often counts wrongly.</li>
              <li>A native speaker checks the translation before it is used.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Scammers use pressure, secrecy and now cloned voices. Short, specific warnings and a family plan stop many scams. If money is lost, call 1930 and your bank at once, because speed gives the best chance to stop it.
        </div>
      HTML
      starter_code: nil
    },
    10 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-fin">Finance</div>
          <h1 class="lc-title">Credit Scoring Explained</h1>
        </div>
        <p class="lc-lead">When you ask for a loan or a credit card, the lender wants to know one thing: will you pay back on time? A <strong>credit score</strong> is a number that helps answer this. It comes from your past borrowing and repayments. In this lesson, you will learn what credit bureaus do, what affects a score, and how lenders use scores in their own models. You will also use AI to understand a sample credit report. This is general education, not financial advice.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 280" role="img" aria-label="Five steps: your repayments are reported to a credit bureau, which keeps your credit report and gives a credit score, often 300 to 900. The lender's model uses the score plus income to make a decision. Below, things that help a score: paying on time, using a small share of the limit, a long clean history. Things that hurt: late payments, maxed-out cards, many applications in a short time.">
            <defs><marker id="bf10a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="10" y="20" width="130" height="66" rx="10" fill="#1f1f44" stroke="#3b82f6"/><text x="75" y="48">Your repayments</text><text x="75" y="70" font-size="11" fill="#9b99b8">loans, cards, EMIs</text>
              <rect x="162" y="20" width="130" height="66" rx="10" fill="#1f1f44" stroke="#8b5cf6"/><text x="227" y="48">Credit bureau</text><text x="227" y="70" font-size="11" fill="#9b99b8">keeps your report</text>
              <rect x="314" y="20" width="130" height="66" rx="10" fill="#1f1f44" stroke="#f59e0b"/><text x="379" y="48">Credit score</text><text x="379" y="70" font-size="11" fill="#9b99b8">often 300 to 900</text>
              <rect x="466" y="20" width="130" height="66" rx="10" fill="#1f1f44" stroke="#ec4899"/><text x="531" y="48">Lender's model</text><text x="531" y="70" font-size="11" fill="#9b99b8">score + income</text>
              <rect x="618" y="20" width="130" height="66" rx="10" fill="#1f1f44" stroke="#10b981"/><text x="683" y="48">Decision</text><text x="683" y="70" font-size="11" fill="#9b99b8">yes/no, rate, limit</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#bf10a)">
                <line x1="142" y1="53" x2="158" y2="53"/><line x1="294" y1="53" x2="310" y2="53"/><line x1="446" y1="53" x2="462" y2="53"/><line x1="598" y1="53" x2="614" y2="53"/>
              </g>
              <rect x="10" y="120" width="360" height="146" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="190" y="146" font-weight="700" fill="#6ee7b7">Helps a score</text>
              <g text-anchor="start">
                <text x="30" y="178">✓ Paying every EMI and bill on time</text>
                <text x="30" y="208">✓ Using a small share of your card limit</text>
                <text x="30" y="238">✓ A long, clean credit history</text>
              </g>
              <rect x="390" y="120" width="360" height="146" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="570" y="146" font-weight="700" fill="#f9a8d4">Hurts a score</text>
              <g text-anchor="start">
                <text x="410" y="178">✗ Late or missed payments</text>
                <text x="410" y="208">✗ Cards used up to the limit</text>
                <text x="410" y="238">✗ Many loan applications in a short time</text>
              </g>
            </g>
          </svg>
          <figcaption>Your repayment record flows to credit bureaus. The score is one input to the lender's own model, which makes the decision.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Credit bureaus and credit reports</h3>
          <p>A <strong>credit bureau</strong> collects data about loans and credit cards from banks and other lenders. In India, these companies are called credit information companies. They are licensed by RBI. The four are TransUnion CIBIL, Experian, Equifax and CRIF High Mark.</p>
          <p>Each bureau keeps a <strong>credit report</strong> for you. It lists your loans and cards, your limits, your balances and your payment record. It also lists <strong>enquiries</strong> (times a lender checked your report after you applied). From this report, the bureau works out a score. Scores in India often run from 300 to 900. A higher score means lower risk.</p>
          <p>You can get a free credit report from each bureau at least once a year. Check each bureau's official website for how to get it. Beware of fake "free credit score" sites that ask for too much personal data.</p>
        </div>
        <div class="lc-card">
          <h3>What affects your score</h3>
          <p>Each bureau has its own formula and does not publish the exact weights. But the main factors are well known. Here they are with Ananya's made-up example. Ananya is a 28-year-old software tester in Maharashtra.</p>
          <table class="lc-table">
            <thead><tr><th>Factor</th><th>What it means</th><th>Ananya's example</th></tr></thead>
            <tbody>
              <tr><td><strong>Payment history</strong></td><td>Do you pay on time? Late payments show as DPD (days past due).</td><td>One payment was 30 days late last March</td></tr>
              <tr><td><strong>Credit utilisation</strong></td><td>How much of your card limit you use</td><td>₹45,000 used of a ₹1,00,000 limit = 45%</td></tr>
              <tr><td><strong>Length of history</strong></td><td>How long you have had credit</td><td>First card four years ago</td></tr>
              <tr><td><strong>Credit mix</strong></td><td>Types of credit, such as cards and loans</td><td>One card and one personal loan</td></tr>
              <tr><td><strong>Recent enquiries</strong></td><td>How many times you applied for credit recently</td><td>Three applications in two months</td></tr>
            </tbody>
          </table>
          <p>If Ananya pays her card balance down to ₹20,000, her utilisation falls to 20,000 ÷ 1,00,000 = 20%. Checking your <em>own</em> score does not lower it. Only lender checks after you apply count as enquiries.</p>
        </div>
        <div class="lc-card">
          <h3>How lenders use scores and models</h3>
          <p>The bureau score is only one input. Most lenders also run their own <strong>credit model</strong> (a scoring system built from their past loans). It may use your income, job, existing EMIs and bank statement patterns.</p>
          <p>One common check is how much of your income already goes to EMIs. Say Ananya's take-home pay is ₹75,000 a month. She pays an EMI of ₹8,000, and the new loan EMI would be ₹12,000. Her total EMIs would be ₹20,000. That is 20,000 ÷ 75,000 = about 26.7% of her pay. Each lender sets its own limit for this ratio.</p>
          <p>AI can explain a credit report in simple words. A weak prompt:</p>
          <pre><code>What will my credit score be next month?</code></pre>
          <p>No AI can know this. A better prompt:</p>
          <pre><code>Explain this made-up credit report summary in simple English.
        What does each term mean? Which items may help or hurt a score, and why?
        Do not guess score numbers. List questions I should ask the bureau.
        [summary with no PAN, account numbers or full name]</code></pre>
          <p>Never paste your PAN, full report or account numbers into a public AI tool. For real borrowing decisions, speak to your bank or a qualified adviser.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: Ananya checks her credit report</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="tool" data-label="Bureau website">Ananya downloads her free credit report from a credit bureau's official website.</li>
              <li data-kind="result" data-label="Report">Score 712. Card: ₹45,000 used of ₹1,00,000. One "30 DPD" entry last March. Three enquiries in two months. One enquiry is from a lender she does not know.</li>
              <li data-kind="user" data-label="Prompt">She types a summary with no PAN or account numbers into an AI assistant. She asks what "30 DPD" and "enquiry" mean, and what may affect her score.</li>
              <li data-kind="answer" data-label="AI reply">The AI explains that 30 DPD means one payment was about 30 days late. It says a 45% utilisation is on the high side. It suggests she check the unknown enquiry.</li>
              <li data-kind="warn" data-label="Mistake to catch">The AI adds: "Your score will rise by 50 points next month." No one can promise this. She ignores that line.</li>
              <li data-kind="check" data-label="Unknown enquiry">An enquiry she never made may mean someone used her details to apply for a loan. She raises a dispute on the bureau's website and contacts the lender.</li>
              <li data-kind="check" data-label="Plan">She sets up auto-pay for her card and plans to lower her balance. She notes to check her report again in a few months.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to explain a made-up credit report summary. Then check its numbers and claims.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a patient teacher of personal finance in India. Explain in simple English. This is general education, not financial advice. All data is made up.

        Credit report summary for [a salaried person, 28, in Maharashtra]:
        - Score: [712] (scale 300 to 900)
        - Credit card: limit [₹1,00,000], current balance [₹45,000]
        - Personal loan: EMI [₹8,000], all paid on time
        - One "30 DPD" entry on a [consumer durable loan] last [March]
        - [3] enquiries in the last [2] months; one from a lender the person does not know

        Please:
        1. Explain each term (score, limit, utilisation, DPD, enquiry) in one or two sentences.
        2. Work out the credit utilisation and show the calculation.
        3. List which items may help and which may hurt the score, and why.
        4. Say what the person should do about the unknown enquiry.
        5. Give three questions to ask the bureau or the bank.
        Do not predict an exact future score. Do not ask for PAN or account numbers.</pre>
            <ul class="ai-try-checks">
              <li>With the sample data, utilisation is 45,000 ÷ 1,00,000 = 45%.</li>
              <li>The AI does not promise an exact score or a score change.</li>
              <li>It suggests disputing the unknown enquiry with the bureau.</li>
              <li>It does not ask for PAN, Aadhaar or account numbers.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A credit score sums up your repayment record. Pay on time, use a small share of your limits and check your report for errors. The score is one input: each lender's own model makes the final decision.
        </div>
      HTML
      starter_code: nil
    },
    11 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-fin">Finance</div>
          <h1 class="lc-title">Loan Decisions and Explainability</h1>
        </div>
        <p class="lc-lead">When a lender says "no", the customer wants to know why. <strong>Explainability</strong> means you can say, in plain words, which facts led to a decision. In this lesson, you will learn how lenders turn a model's score into clear reasons. You will also write a fair and helpful decline letter with AI. We use <em>Ananya</em>, a 28-year-old software tester in Maharashtra, and a personal loan application at <em>Navkar Bank</em>, a made-up bank.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 270" role="img" aria-label="Ananya's loan application goes into a credit model. The model gives a score and a decision to decline. The top reasons are listed. Below, a letter explains the reasons in plain language, and a person checks that the reasons are true and fair.">
            <defs><marker id="bf11a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="10" y="20" width="170" height="120" rx="10" fill="#27274e" stroke="#8b5cf6"/>
              <text x="95" y="44" font-weight="700">Application</text>
              <text x="95" y="70" font-size="12" fill="#9b99b8">Pay ₹65,000/month</text>
              <text x="95" y="92" font-size="12" fill="#9b99b8">EMIs ₹18,500/month</text>
              <text x="95" y="114" font-size="12" fill="#9b99b8">Asks ₹5,00,000</text>
              <rect x="215" y="35" width="150" height="90" rx="10" fill="#27274e" stroke="#3b82f6"/>
              <text x="290" y="68" font-weight="700">Credit model</text>
              <text x="290" y="92" font-size="12" fill="#9b99b8">score + rules</text>
              <rect x="400" y="35" width="150" height="90" rx="10" fill="#27274e" stroke="#ec4899"/>
              <text x="475" y="68" font-weight="700">Decision</text>
              <text x="475" y="92" font-size="12" fill="#fca5a5">Decline</text>
              <rect x="585" y="20" width="165" height="120" rx="10" fill="#27274e" stroke="#f59e0b"/>
              <text x="667" y="44" font-weight="700">Top reasons</text>
              <text x="667" y="70" font-size="12" fill="#9b99b8">EMIs 54% of pay</text>
              <text x="667" y="92" font-size="12" fill="#9b99b8">Late card payment</text>
              <text x="667" y="114" font-size="12" fill="#9b99b8">5 recent enquiries</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#bf11a)">
                <line x1="182" y1="80" x2="211" y2="80"/>
                <line x1="367" y1="80" x2="396" y2="80"/>
                <line x1="552" y1="80" x2="581" y2="80"/>
              </g>
              <rect x="10" y="160" width="740" height="40" rx="8" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="380" y="185" font-size="12">Letter to Ananya: the main reasons, what she can do next, and how to complain</text>
              <rect x="10" y="214" width="740" height="40" rx="8" fill="#1f1f44" stroke="#10b981"/>
              <text x="380" y="239" font-size="12">A person checks: are the reasons true, specific, lawful and fair?</text>
            </g>
          </svg>
          <figcaption>A model gives a score. The lender must still turn it into true, clear reasons that a customer can understand and act on.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Why explanations matter</h3>
          <p>Lenders use credit models (tools that turn data about a person into a risk score). A score alone does not tell the customer anything useful. Good explanations help in three ways:</p>
          <ul class="lc-list">
            <li><strong>The customer</strong> learns what to fix, such as paying down a loan or correcting an error in a credit report.</li>
            <li><strong>The lender</strong> can catch mistakes, for example wrong data or a reason that is unfair.</li>
            <li><strong>The regulator</strong> can see that decisions follow the lender's policy.</li>
          </ul>
          <p>In the United States, the rejection letter is called an <strong>adverse action notice</strong> (a letter that tells a person the main reasons a credit application was turned down). In India, RBI's Fair Practices Code for lenders also asks lenders to tell applicants the main reasons for rejection in writing. RBI's report on responsible AI in finance, the <strong>FREE-AI</strong> framework, also stresses that AI decisions should be understandable. The exact rules change over time. Check the current RBI directions, and ask your compliance team.</p>
          <p>This lesson is general education only. It is not legal or financial advice.</p>
        </div>
        <div class="lc-card">
          <h3>Worked example: Ananya's loan</h3>
          <p>Ananya asks Navkar Bank for a ₹5,00,000 personal loan over 3 years. All numbers here are made up. They are a new example, so they differ from her credit report example. The bank's sample rate gives a new EMI (equated monthly instalment: the fixed amount you pay each month) of about ₹16,847.</p>
          <table class="lc-table">
            <thead><tr><th>Item</th><th>Value</th><th>How it is worked out</th></tr></thead>
            <tbody>
              <tr><td>Net monthly salary</td><td>₹65,000</td><td>From salary slips</td></tr>
              <tr><td>Existing EMIs</td><td>₹18,500</td><td>Two-wheeler loan ₹6,500 + phone and laptop EMIs ₹12,000</td></tr>
              <tr><td>EMIs after the new loan</td><td>₹35,347</td><td>₹18,500 + ₹16,847</td></tr>
              <tr><td>FOIR (share of pay that goes to EMIs)</td><td>54.4%</td><td>₹35,347 ÷ ₹65,000</td></tr>
              <tr><td>Bank's limit (made-up policy)</td><td>50%</td><td>So the most she can add is ₹32,500 − ₹18,500 = ₹14,000 a month</td></tr>
            </tbody>
          </table>
          <p>At the same sample rate and term, an EMI of ₹14,000 fits a loan of about ₹4,15,000. So the bank could offer a smaller loan. The model also found one late credit card payment and five loan enquiries in three months. You can check the FOIR in a spreadsheet: <code>=(B2+B3)/B1</code>, where B1 is salary, B2 is existing EMIs and B3 is the new EMI.</p>
        </div>
        <div class="lc-card">
          <h3>Writing the reasons: weak vs better prompt</h3>
          <p>A weak prompt gives a vague, cold letter. It may even invent reasons.</p>
          <pre><code>Write a loan rejection letter for Ananya.</code></pre>
          <p>A better prompt gives the real reasons, the tone and the limits:</p>
          <pre><code>You write customer letters for Navkar Bank (a made-up bank).
        Write a short decline letter for a personal loan applicant, Ananya.
        Use ONLY these reasons, in this order:
        1. EMIs would be 54.4% of monthly pay. Our limit is 50%.
        2. One credit card payment was late in the last 6 months.
        3. Five loan enquiries in the last 3 months.
        Also say: a smaller loan of about ₹4,15,000 may be possible.
        Explain how to get a free credit report and how to raise a complaint.
        Rules: plain English, under 200 words, polite, no blame,
        no reasons that are not in the list, no promises of approval.</code></pre>
          <p>Before you send any letter, a person must check it. Are the reasons true for this customer? Are they specific? Does the letter avoid any hint about religion, caste, gender or other protected traits? Real letters use the bank's approved templates. Never paste real customer details into a public AI tool.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: good reason or bad reason?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each reason for declining a loan. Is it a clear, fair reason to give the customer, or a bad one?</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="good" data-label="Clear, fair reason"></div>
              <div data-sorter-target="bucket" data-bucket="bad" data-label="Bad reason"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="good" data-why="It is specific, true and something the customer can change.">Your EMIs would be 54% of your monthly pay. Our limit is 50%.</li>
              <li data-bucket="bad" data-why="It says nothing. The customer cannot learn or fix anything.">The system gave you a low score.</li>
              <li data-bucket="good" data-why="It points to a real item in the credit report that the customer can check.">One credit card payment was more than 30 days late in the last 6 months.</li>
              <li data-bucket="bad" data-why="Gender is a protected trait. It must never be a reason for a credit decision.">Applicants like you, young single women, often do not repay.</li>
              <li data-bucket="bad" data-why="This is not the real reason. Letters must be honest.">We are not giving loans right now (when the bank is giving loans).</li>
              <li data-bucket="good" data-why="It is a fact from the credit report and the customer can wait or reduce new applications.">You made five loan applications in the last three months.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to turn a list of model reasons into a clear letter. Then check that it did not add any reason of its own.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You help a lender write plain-language decision letters. This is a training exercise with made-up data.

        Customer: [Ananya, 28, software tester in Maharashtra]
        Product: [personal loan of ₹5,00,000 over 3 years]
        Decision: [decline, with a smaller offer of about ₹4,15,000]
        Reasons from the model, most important first:
        1. [EMIs would be 54.4% of monthly pay; bank limit is 50%]
        2. [one card payment more than 30 days late in the last 6 months]
        3. [five loan enquiries in the last 3 months]

        Tasks:
        1. Write a polite letter under 200 words in simple English.
        2. Give each reason in one short sentence, plus one thing the customer can do about it.
        3. Explain how to get a free credit report and how to raise a complaint (in general words).
        4. After the letter, list any sentence where you added a fact that was not in my reasons.

        Rules: use only the reasons above. Do not mention age, gender, religion, caste or location as reasons.</pre>
            <ul class="ai-try-checks">
              <li>Every reason in the letter comes from your list, in the same order</li>
              <li>Numbers match: 54.4%, 50% and about ₹4,15,000</li>
              <li>No protected trait (age, gender, religion, caste) is used as a reason</li>
              <li>The tone is polite and the next steps are practical</li>
              <li>Complaint and credit report steps are general; check the current process on official sites</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A good loan decision can be explained with true, specific reasons that the customer can act on. AI can help you write the letter. A person must check that every reason is real and fair.
        </div>
      HTML
      starter_code: nil
    },
    12 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-fin">Finance</div>
          <h1 class="lc-title">Fairness in Financial AI</h1>
        </div>
        <p class="lc-lead">A credit model can treat some groups of people worse than others, even when nobody meant it to. This is called <strong>bias</strong>. In this lesson, you will learn where bias comes from and what a <strong>proxy variable</strong> is. You will also check a model's results across groups with simple spreadsheet formulas. Banks, fintechs and regulators all care about this. RBI's FREE-AI report lists fairness as one of its core principles for AI in finance.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 275" role="img" aria-label="Two bar charts. Left: approval rate is 60 percent for city PIN codes and 40 percent for rural PIN codes, a ratio of 0.67. Right: good payers wrongly declined is 10 percent for city PIN codes and 30 percent for rural PIN codes, three times higher.">
            <defs><marker id="bf12a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="10" y="8" width="360" height="262" rx="10" fill="#1f1f44" stroke="#4b4a78"/>
              <text x="190" y="32" font-weight="700">Approval rate</text>
              <rect x="80" y="65" width="80" height="150" fill="#3b82f6"/>
              <text x="120" y="57">60%</text>
              <rect x="220" y="115" width="80" height="100" fill="#f59e0b"/>
              <text x="260" y="107">40%</text>
              <line x1="40" y1="215" x2="340" y2="215" stroke="#9b99b8"/>
              <text x="120" y="236" font-size="12" fill="#9b99b8">City PINs</text>
              <text x="260" y="236" font-size="12" fill="#9b99b8">Rural PINs</text>
              <text x="190" y="258" font-size="12" fill="#fcd34d">Ratio: 40 ÷ 60 = 0.67</text>
              <rect x="390" y="8" width="360" height="262" rx="10" fill="#1f1f44" stroke="#4b4a78"/>
              <text x="570" y="32" font-weight="700">Good payers wrongly declined</text>
              <rect x="460" y="190" width="80" height="25" fill="#3b82f6"/>
              <text x="500" y="182">10%</text>
              <rect x="600" y="140" width="80" height="75" fill="#f59e0b"/>
              <text x="640" y="132">30%</text>
              <line x1="420" y1="215" x2="720" y2="215" stroke="#9b99b8"/>
              <text x="500" y="236" font-size="12" fill="#9b99b8">City PINs</text>
              <text x="640" y="236" font-size="12" fill="#9b99b8">Rural PINs</text>
              <text x="570" y="258" font-size="12" fill="#fcd34d">3 times the error rate</text>
            </g>
          </svg>
          <figcaption>Made-up results from a pilot loan model at Navkar Bank. Rural applicants are approved less often, and good rural payers are wrongly declined three times as often.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Where bias comes from</h3>
          <ul class="lc-list">
            <li><strong>Old decisions in the training data.</strong> A model learns from past loans. If past officers approved fewer loans for some groups, the model copies that pattern.</li>
            <li><strong>Missing data.</strong> People with no credit history (new to credit) may look risky only because the data is thin.</li>
            <li><strong>Proxy variables.</strong> A proxy is a harmless-looking input that closely tracks a protected trait. Examples are PIN code, first name, language setting, college name or phone model. Removing "religion" or "gender" from the data is not enough if a proxy carries the same signal.</li>
            <li><strong>Different error rates.</strong> A model can be right on average but make more mistakes for one group.</li>
          </ul>
          <p>A <strong>protected trait</strong> is a personal feature that must not be used to treat people unfairly, such as religion, caste, gender or disability. Which traits are protected, and how, depends on the law and the regulator. Ask your legal or compliance team. This lesson is general education, not legal advice.</p>
        </div>
        <div class="lc-card">
          <h3>Worked example: checking outcomes across groups</h3>
          <p>Navkar Bank tested a new loan model on past applications. The team split applicants by PIN code type. All numbers are made up.</p>
          <table class="lc-table">
            <thead><tr><th>Group</th><th>Applied</th><th>Approved</th><th>Approval rate</th><th>Good payers</th><th>Good payers declined</th><th>Wrong decline rate</th></tr></thead>
            <tbody>
              <tr><td>City PIN codes</td><td>800</td><td>480</td><td>60%</td><td>500</td><td>50</td><td>10%</td></tr>
              <tr><td>Rural PIN codes</td><td>400</td><td>160</td><td>40%</td><td>200</td><td>60</td><td>30%</td></tr>
            </tbody>
          </table>
          <p>"Good payers" are applicants who later repaid well, in a test where the bank knows the outcome. In a spreadsheet, with the table starting in A1:</p>
          <pre><code>Approval rate (D2):        =C2/B2        → 480/800 = 60%
        Wrong decline rate (G2):   =F2/E2        → 50/500 = 10%
        Approval ratio:            =D3/D2        → 40% / 60% = 0.67
        Error gap:                 =G3/G2        → 30% / 10% = 3</code></pre>
          <p>Some teams use a rough rule of thumb from US hiring practice, the "four-fifths rule". It says a ratio below 0.8 needs a closer look. It is not an Indian legal test. It is only a warning light. A gap is not proof of bias, but you must find the cause. Here, the team found the model gave PIN code a lot of weight. Rural applicants were also more often new to credit.</p>
        </div>
        <div class="lc-card">
          <h3>How AI assistants can help, and what you decide</h3>
          <p>An AI assistant can help you plan the checks, write formulas and explain results in plain words. It cannot decide what is fair for your bank. That needs your risk, compliance and legal teams.</p>
          <p>Weak prompt:</p>
          <pre><code>Is our loan model biased?</code></pre>
          <p>Better prompt:</p>
          <pre><code>I have made-up summary results from a loan model test (below).
        1. Work out approval rates and wrong decline rates by group.
        2. Show each formula and each result.
        3. List possible causes, including proxy variables.
        4. Suggest 3 follow-up checks. Do not say the model is fair or unfair.
        [paste the summary table, no customer-level data]</code></pre>
          <p>Only share summary numbers, never customer records. Check every number the AI gives you against your own spreadsheet.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: run a fairness check</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="You ask">"Here are summary results by PIN code type for our pilot loan model. Work out approval rates and the ratio between groups."</li>
              <li data-kind="answer" data-label="AI replies">"City: 480 of 800 approved, 60%. Rural: 160 of 400 approved, 40%. Ratio 0.67, which is below the 0.8 rule of thumb."</li>
              <li data-kind="tool" data-label="Spreadsheet">You type <code>=C2/B2</code>, <code>=C3/B3</code> and <code>=D3/D2</code> into your own sheet.</li>
              <li data-kind="result" data-label="Sheet shows">60%, 40% and 0.67. The AI's numbers match.</li>
              <li data-kind="warn" data-label="Catch this">The AI adds: "So the model is biased and must be switched off." That is a conclusion, not a fact. The gap needs a cause first.</li>
              <li data-kind="check" data-label="You check">You compare wrong decline rates: 10% vs 30%. You check how much weight PIN code has in the model.</li>
              <li data-kind="check" data-label="You decide">You write a short note for the model risk team with the numbers, the likely proxy and the next tests. They decide what to change.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Give AI a made-up summary table and ask it to plan a fairness review. Then check every number yourself.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a model risk analyst at [Navkar Bank, a made-up bank]. This is a training exercise with made-up summary data only.

        Loan model test results by group:
        Group | Applied | Approved | Good payers | Good payers declined
        [City PIN codes] | [800] | [480] | [500] | [50]
        [Rural PIN codes] | [400] | [160] | [200] | [60]

        Tasks:
        1. Work out the approval rate and the wrong decline rate for each group. Show the working.
        2. Work out the approval ratio (lower rate divided by higher rate).
        3. List 4 inputs that could act as proxy variables for a protected trait in a loan model, and why.
        4. Suggest 3 next checks the team should run.
        5. Write a 5-line summary for managers in simple English.

        Rules: do not say the model is legal or illegal. Say which points need a compliance or legal review.</pre>
            <ul class="ai-try-checks">
              <li>Rates are correct: 60%, 40%, 10% and 30%, and the ratio is 0.67</li>
              <li>The AI explains that a gap is a warning sign, not proof of bias</li>
              <li>Proxy examples are sensible, such as PIN code or first name</li>
              <li>It leaves the final decision to people in risk and compliance</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Removing protected traits from the data does not make a model fair. You must measure outcomes and errors for each group, look for proxies, and let people decide what to change.
        </div>
      HTML
      starter_code: nil
    },
    13 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-fin">Finance</div>
          <h1 class="lc-title">KYC and Anti-Money Laundering</h1>
        </div>
        <p class="lc-lead">Banks must know who their customers are. They must also watch for money that comes from crime. These two jobs are called <strong>KYC</strong> (Know Your Customer: checking a customer's identity and risk) and <strong>AML</strong> (anti-money laundering: stopping criminals from hiding illegal money in the banking system). In this lesson, you will learn the main checks, the common warning patterns and how analysts use AI to work faster. You will also learn what AI must never decide on its own.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 260" role="img" aria-label="Six AML steps in a row: onboard with KYC, screen against lists, monitor transactions, raise an alert, analyst review, and report an STR to FIU-IND. Below, one band shows how AI helps and one band shows what people decide.">
            <defs><marker id="bf13a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="10" y="30" width="112" height="86" rx="10" fill="#27274e" stroke="#8b5cf6"/>
              <text x="66" y="52" font-size="11" fill="#9b99b8">Step 1</text>
              <text x="66" y="76" font-weight="700">Onboard</text>
              <text x="66" y="98" font-size="11" fill="#9b99b8">ID, address, risk</text>
              <rect x="135" y="30" width="112" height="86" rx="10" fill="#27274e" stroke="#3b82f6"/>
              <text x="191" y="52" font-size="11" fill="#9b99b8">Step 2</text>
              <text x="191" y="76" font-weight="700">Screen</text>
              <text x="191" y="98" font-size="11" fill="#9b99b8">sanctions, PEPs</text>
              <rect x="260" y="30" width="112" height="86" rx="10" fill="#27274e" stroke="#22d3ee"/>
              <text x="316" y="52" font-size="11" fill="#9b99b8">Step 3</text>
              <text x="316" y="76" font-weight="700">Monitor</text>
              <text x="316" y="98" font-size="11" fill="#9b99b8">rules + models</text>
              <rect x="385" y="30" width="112" height="86" rx="10" fill="#27274e" stroke="#f59e0b"/>
              <text x="441" y="52" font-size="11" fill="#9b99b8">Step 4</text>
              <text x="441" y="76" font-weight="700">Alert</text>
              <text x="441" y="98" font-size="11" fill="#9b99b8">with risk score</text>
              <rect x="510" y="30" width="112" height="86" rx="10" fill="#27274e" stroke="#10b981"/>
              <text x="566" y="52" font-size="11" fill="#9b99b8">Step 5</text>
              <text x="566" y="76" font-weight="700">Review</text>
              <text x="566" y="98" font-size="11" fill="#9b99b8">analyst decides</text>
              <rect x="635" y="30" width="112" height="86" rx="10" fill="#27274e" stroke="#ec4899"/>
              <text x="691" y="52" font-size="11" fill="#9b99b8">Step 6</text>
              <text x="691" y="76" font-weight="700">Report STR</text>
              <text x="691" y="98" font-size="11" fill="#9b99b8">to FIU-IND</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#bf13a)">
                <line x1="123" y1="73" x2="133" y2="73"/>
                <line x1="248" y1="73" x2="258" y2="73"/>
                <line x1="373" y1="73" x2="383" y2="73"/>
                <line x1="498" y1="73" x2="508" y2="73"/>
                <line x1="623" y1="73" x2="633" y2="73"/>
              </g>
              <rect x="10" y="144" width="737" height="40" rx="8" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="378" y="169" font-size="12">AI helps: summarises accounts, groups alerts, drafts case notes, cuts name-match noise</text>
              <rect x="10" y="200" width="737" height="40" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="378" y="225" font-size="12">People decide: close or escalate, file the STR, and never warn the customer</text>
            </g>
          </svg>
          <figcaption>KYC starts at account opening. AML monitoring never stops. AI can speed up the review, but trained people make every reporting decision.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>KYC: knowing the customer</h3>
          <p>In India, RBI's Master Direction on KYC sets the rules for banks and other regulated lenders. RBI updates it from time to time. In general words, KYC covers:</p>
          <ul class="lc-list">
            <li><strong>Identity and address checks</strong> using official documents, such as PAN and an officially valid document. Many checks now happen digitally, for example through video KYC (a live video call with a bank official).</li>
            <li><strong>Central KYC records</strong>, so a customer does not have to submit the same documents to every institution.</li>
            <li><strong>Beneficial owner checks</strong> for companies and firms: finding the real people who own or control them.</li>
            <li><strong>Risk categories</strong> (low, medium, high) based on things like occupation, business type, location and products. High-risk customers get closer checks and more frequent KYC updates.</li>
            <li><strong>Screening</strong> against sanctions lists and lists of PEPs (politically exposed persons: people who hold or held important public jobs, and their family and close associates). The RBI direction says exactly who counts as a PEP.</li>
          </ul>
          <p>Exact documents, thresholds and update periods change. Always follow the current RBI direction and your bank's KYC policy.</p>
        </div>
        <div class="lc-card">
          <h3>AML: suspicious patterns and reports</h3>
          <p>Money laundering usually has three stages. <strong>Placement</strong> puts illegal money into the system. <strong>Layering</strong> moves it around to hide where it came from. <strong>Integration</strong> brings it back as money that looks clean. Common warning patterns include:</p>
          <table class="lc-table">
            <thead><tr><th>Pattern</th><th>What it looks like</th></tr></thead>
            <tbody>
              <tr><td>Structuring</td><td>Many cash deposits just below a reporting or checking limit</td></tr>
              <tr><td>Pass-through or mule account</td><td>Money comes in from many people and leaves within hours</td></tr>
              <tr><td>Profile mismatch</td><td>Turnover far above the customer's stated job or business</td></tr>
              <tr><td>Round-tripping</td><td>Money goes out and comes back through other accounts</td></tr>
              <tr><td>Sudden change</td><td>A quiet account suddenly becomes very active</td></tr>
            </tbody>
          </table>
          <p>Under India's PMLA (Prevention of Money Laundering Act), banks must send an <strong>STR</strong> (suspicious transaction report) to <strong>FIU-IND</strong> (Financial Intelligence Unit - India). There is no minimum amount for an STR. Attempted transactions can count too. The bank's Principal Officer files it within the time limit in the rules. The customer must never be told about an STR. Telling them is called <strong>tipping off</strong>, and it is prohibited.</p>
          <p><strong>Made-up example:</strong> A student savings account at Navkar Bank is 3 weeks old. The stated income is under ₹2 lakh a year. In 5 days it receives 38 UPI credits from 31 different people, a total of ₹4,62,000. Within hours, ₹4,55,000 moves out to 3 accounts. This looks like a mule account. An analyst must still review it before any decision.</p>
          <p>This is general education, not legal advice. Your bank's compliance team gives the real rules.</p>
        </div>
        <div class="lc-card">
          <h3>How AI helps analysts</h3>
          <p>AML teams get many alerts, and most are false positives (alerts about normal activity). Banks use approved internal AI tools to:</p>
          <ul class="lc-list">
            <li>Summarise an account's activity and KYC profile in one page.</li>
            <li>Group related alerts and accounts, for example many accounts that send money to the same place.</li>
            <li>Sort name-match hits, so "R. Kumar" does not match every Kumar on a list.</li>
            <li>Draft a case note that the analyst edits and signs.</li>
          </ul>
          <p>Weak prompt: <code>Is this customer a money launderer?</code> This asks the AI to judge a person. Better prompt: <code>Summarise this made-up account activity. List which warning patterns it matches and which facts are missing. Do not decide.</code> Never paste real customer data or STR details into a public AI tool.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: order an AML alert review</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put the steps of an AML alert review in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">The monitoring system raises an alert on the account</li>
              <li data-order="2">The analyst reads the customer's KYC profile and risk category</li>
              <li data-order="3">The analyst reviews the transactions around the alert</li>
              <li data-order="4">An approved AI tool drafts a summary and lists matching patterns</li>
              <li data-order="5">The analyst checks the draft against the source data and fixes errors</li>
              <li data-order="6">The analyst closes the alert with a reason, or escalates it</li>
              <li data-order="7">The Principal Officer decides whether to file an STR with FIU-IND</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to review a made-up account and draft a case summary. Check that it lists facts and leaves the decision to you.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You help an AML analyst at [Navkar Bank, a made-up bank]. This is a training exercise. All data is made up.

        Customer profile: [student, 21, savings account opened 3 weeks ago, stated income under ₹2 lakh a year, low risk category]
        Activity in the last 5 days:
        - [38 UPI credits from 31 different senders, total ₹4,62,000]
        - [₹4,55,000 sent out to 3 accounts, most within 2 hours of the credits]
        - [balance now about ₹7,000]

        Tasks:
        1. Summarise the activity in 4 short lines.
        2. List which money laundering or mule patterns it matches, and why.
        3. List 5 facts the analyst should check next.
        4. Say whether the risk category should be reviewed.
        5. Draft a short, neutral case note.

        Rules: do not decide if a crime happened. Do not suggest contacting the customer about a possible report.</pre>
            <ul class="ai-try-checks">
              <li>The totals match: ₹4,62,000 in and ₹4,55,000 out</li>
              <li>It names patterns such as a pass-through or mule account and profile mismatch</li>
              <li>The case note is neutral and does not call the customer a criminal</li>
              <li>It does not suggest telling the customer about a report (tipping off)</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> KYC tells you who the customer is. AML monitoring asks if their activity makes sense. AI can summarise and sort alerts, but trained people decide what to report, and the customer is never tipped off.
        </div>
      HTML
      starter_code: nil
    },
    14 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-fin">Finance</div>
          <h1 class="lc-title">Banking Chatbots and Rules</h1>
        </div>
        <p class="lc-lead">Many banks and fintechs now answer customers with chatbots. A good banking bot is fast, polite and safe. A bad one can leak data, give wrong answers or help a scammer. In this lesson, you will learn the safety rules for service bots. These include never asking for an OTP, handing over to a human at the right time, and respecting privacy. You will also write and test rules for a made-up bank's bot.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 290" role="img" aria-label="A customer message goes to the bot, which sorts the request into three paths. General questions get an answer from approved help content. Complaints, fraud and distress go to a human. Anything that needs an OTP, PIN or password is never asked for in chat; the bot warns the customer and points to the secure app.">
            <defs><marker id="bf14a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="280" y="10" width="200" height="40" rx="8" fill="#27274e" stroke="#8b5cf6"/>
              <text x="380" y="35">Customer message</text>
              <rect x="255" y="80" width="250" height="44" rx="8" fill="#27274e" stroke="#3b82f6"/>
              <text x="380" y="99" font-weight="700">Bot sorts the request</text>
              <text x="380" y="116" font-size="11" fill="#9b99b8">and says it is an AI assistant</text>
              <rect x="10" y="170" width="235" height="50" rx="8" fill="#27274e" stroke="#10b981"/>
              <text x="127" y="191" font-weight="700">General question</text>
              <text x="127" y="210" font-size="11" fill="#9b99b8">branch hours, how to update KYC</text>
              <rect x="262" y="170" width="236" height="50" rx="8" fill="#27274e" stroke="#f59e0b"/>
              <text x="380" y="191" font-weight="700">Complaint, fraud, distress</text>
              <text x="380" y="210" font-size="11" fill="#9b99b8">money lost, angry, confused</text>
              <rect x="515" y="170" width="235" height="50" rx="8" fill="#27274e" stroke="#ec4899"/>
              <text x="632" y="191" font-weight="700">Needs OTP, PIN, password</text>
              <text x="632" y="210" font-size="11" fill="#9b99b8">or card number, CVV</text>
              <rect x="10" y="236" width="235" height="44" rx="8" fill="#1f1f44" stroke="#10b981"/>
              <text x="127" y="263" font-size="12">Answer from approved help text</text>
              <rect x="262" y="236" width="236" height="44" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="380" y="263" font-size="12">Hand over to a trained human</text>
              <rect x="515" y="236" width="235" height="44" rx="8" fill="#1f1f44" stroke="#ec4899"/>
              <text x="632" y="263" font-size="12">Never ask. Warn, use secure app</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#bf14a)">
                <line x1="380" y1="52" x2="380" y2="76"/>
                <path d="M300,126 L127,166"/>
                <line x1="380" y1="126" x2="380" y2="166"/>
                <path d="M460,126 L632,166"/>
              </g>
            </g>
          </svg>
          <figcaption>A safe banking bot knows three paths: answer, hand over, or refuse. It never collects secrets in chat.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The safety rules for a banking bot</h3>
          <table class="lc-table">
            <thead><tr><th>Rule</th><th>Why it matters</th></tr></thead>
            <tbody>
              <tr><td><strong>Never ask for an OTP, PIN, password, CVV or full card number</strong></td><td>Banks do not ask for these in chat, calls or messages. Scammers do. The bot must say this clearly and often.</td></tr>
              <tr><td><strong>Say it is an AI assistant</strong></td><td>Customers should know when they talk to AI. RBI's FREE-AI report suggests telling customers when they deal with AI.</td></tr>
              <tr><td><strong>Hand over to a human</strong></td><td>Fraud reports, complaints, disputes, bereavement and confused or upset customers need a trained person.</td></tr>
              <tr><td><strong>Answer only from approved content</strong></td><td>A bot that guesses interest rates, fees or rules can mislead customers. It should say "I am not sure" and hand over.</td></tr>
              <tr><td><strong>No personal advice</strong></td><td>The bot should not tell a customer which fund to buy or which loan to take. That needs a qualified, registered adviser.</td></tr>
              <tr><td><strong>Protect data</strong></td><td>Show only masked details (for example, the last 4 digits). Collect the minimum data. Follow India's Digital Personal Data Protection Act, 2023 and the bank's privacy policy.</td></tr>
              <tr><td><strong>Show the complaint path</strong></td><td>Customers can complain to the bank and, if not solved, escalate through RBI's complaint system under the Integrated Ombudsman Scheme.</td></tr>
            </tbody>
          </table>
          <p>For fraud, Indian customers can also call the national cybercrime helpline 1930 or report at cybercrime.gov.in. Check official sites for current details. This lesson is general education, not legal advice.</p>
        </div>
        <div class="lc-card">
          <h3>Writing bot rules: weak vs better</h3>
          <p>Bots follow written instructions, often called a system prompt (the hidden rules a bot follows in every chat). You do not need code to write them. A weak rule set:</p>
          <pre><code>You are Navkar Bank's helpful assistant. Help customers with anything.</code></pre>
          <p>"Anything" is the problem. A better rule set:</p>
          <pre><code>You are the Navkar Bank assistant (a made-up bank). You are an AI.
        Say so in your first message.
        Answer only from the approved help articles given to you.
        If you are not sure, say so and offer a human agent.
        NEVER ask for or accept an OTP, PIN, password, CVV or full card number.
        If a customer shares one, tell them not to, and advise them
        to change it through the official app right away.
        Hand over to a human for: fraud, lost money, complaints,
        disputes, death of an account holder, or an upset customer.
        Do not give investment, tax or legal advice.
        Show account numbers only as the last 4 digits.</code></pre>
          <p>Then test the bot with tricky messages. Real bots are built and tested by the bank's teams, with compliance approval. Do not test with real customer data.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: what should the bot do?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each customer message into what a safe banking bot should do.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="answer" data-label="Answer from help text"></div>
              <div data-sorter-target="bucket" data-bucket="human" data-label="Hand over to a human"></div>
              <div data-sorter-target="bucket" data-bucket="refuse" data-label="Refuse, warn or redirect"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="answer" data-why="This is a simple question with an approved answer.">"What are your branch timings?"</li>
              <li data-bucket="human" data-why="Money has left the account without consent. A trained person must act fast.">"₹40,000 went from my account and I did not send it!"</li>
              <li data-bucket="refuse" data-why="A bot must never take an OTP. It should warn the customer and point to the secure app.">"Here is my OTP 482913, please unblock my card."</li>
              <li data-bucket="answer" data-why="The bot can share the general steps from an approved help article.">"How do I update my KYC?"</li>
              <li data-bucket="human" data-why="This is a complaint. A person must record and resolve it.">"I want to complain. You charged me a fee twice."</li>
              <li data-bucket="refuse" data-why="The bot must not give personal investment advice. It can offer general information or a qualified adviser.">"Tell me which mutual fund will double my money."</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to act as a banking bot with safety rules. Then test it with tricky customer messages.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">Act as the customer chat assistant for [Navkar Bank, a made-up Indian bank]. This is a training test.

        Your rules:
        - Say you are an AI assistant.
        - Never ask for or accept an OTP, PIN, password, CVV or full card number. If one is shared, warn the customer and tell them to change it in the official app.
        - Hand over to a human for fraud, lost money, complaints, disputes or an upset customer. Say what happens next.
        - Do not give investment, tax or legal advice.
        - If you do not know a fact such as a fee or rate, say so. Do not guess.

        Reply to each of these messages separately, in under 60 words each:
        1. [What time does the main branch open?]
        2. [My OTP is 482913. Please fix my UPI now.]
        3. [₹40,000 left my account and I did not do it.]
        4. [Which fund should I put my ₹2 lakh bonus in?]
        5. [What is your personal loan interest rate?]

        After the replies, list any rule you think you did not follow fully.</pre>
            <ul class="ai-try-checks">
              <li>It never repeats or uses the OTP, and it warns the customer</li>
              <li>The fraud message goes to a human, with urgent next steps such as calling the bank and 1930</li>
              <li>It does not recommend a fund</li>
              <li>It does not invent an interest rate or a branch time</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A safe banking bot answers simple questions, hands hard ones to people and refuses to collect secrets. Write these rules clearly, test them with tricky messages, and keep a human in charge of anything that involves lost money or complaints.
        </div>
      HTML
      starter_code: nil
    },
    15 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-fin">Finance</div>
          <h1 class="lc-title">Capstone: Review a Fraud Case and a Loan Decision</h1>
        </div>
        <p class="lc-lead">In this capstone, you will do two real tasks from bank work, with made-up data. First, you will investigate fraud alerts on a customer's account and write a case note. Second, you will check a small-business loan decision for errors and fairness. You will use an AI assistant and a spreadsheet, and you will make the final recommendation yourself. Everything here is for learning. It is not financial or legal advice.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 250" role="img" aria-label="Two tracks. Part A, fraud case: read alerts, build a timeline, write a case note, recommend an action. Part B, loan decision: read the application, check the numbers, check fairness, recommend an outcome. Both end with a person signing off.">
            <defs><marker id="bf15a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="20" y="24" text-anchor="start" font-weight="700" fill="#fcd34d">Part A: fraud case (Ravi and Meena)</text>
              <rect x="20" y="36" width="160" height="44" rx="8" fill="#27274e" stroke="#ec4899"/><text x="100" y="63">Read alerts</text>
              <rect x="210" y="36" width="160" height="44" rx="8" fill="#27274e" stroke="#ec4899"/><text x="290" y="63">Build timeline</text>
              <rect x="400" y="36" width="160" height="44" rx="8" fill="#27274e" stroke="#ec4899"/><text x="480" y="63">Write case note</text>
              <rect x="590" y="36" width="160" height="44" rx="8" fill="#27274e" stroke="#ec4899"/><text x="670" y="63">Recommend action</text>
              <text x="20" y="114" text-anchor="start" font-weight="700" fill="#fcd34d">Part B: loan decision (Sweet Crumbs)</text>
              <rect x="20" y="126" width="160" height="44" rx="8" fill="#27274e" stroke="#3b82f6"/><text x="100" y="153">Read application</text>
              <rect x="210" y="126" width="160" height="44" rx="8" fill="#27274e" stroke="#3b82f6"/><text x="290" y="153">Check numbers</text>
              <rect x="400" y="126" width="160" height="44" rx="8" fill="#27274e" stroke="#3b82f6"/><text x="480" y="153">Check fairness</text>
              <rect x="590" y="126" width="160" height="44" rx="8" fill="#27274e" stroke="#3b82f6"/><text x="670" y="153">Recommend</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#bf15a)">
                <line x1="182" y1="58" x2="206" y2="58"/>
                <line x1="372" y1="58" x2="396" y2="58"/>
                <line x1="562" y1="58" x2="586" y2="58"/>
                <line x1="182" y1="148" x2="206" y2="148"/>
                <line x1="372" y1="148" x2="396" y2="148"/>
                <line x1="562" y1="148" x2="586" y2="148"/>
              </g>
              <rect x="20" y="194" width="730" height="42" rx="8" fill="#1f1f44" stroke="#10b981"/>
              <text x="385" y="220" font-size="12">AI summarises and drafts. You check every fact and number. A supervisor signs off.</text>
            </g>
          </svg>
          <figcaption>The capstone has two parts. In both, AI does the drafting and a person makes the decision.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Part A: the fraud case</h3>
          <p>Ravi and Meena are a married couple in Tamil Nadu. They have a joint savings account at Navkar Bank. On a Sunday night, the fraud system raised these alerts. All data is made up.</p>
          <table class="lc-table">
            <thead><tr><th>Time</th><th>Event</th><th>Normal for this account?</th></tr></thead>
            <tbody>
              <tr><td>20:55</td><td>Ravi receives a call from someone who says he is from the bank "KYC team"</td><td>Customer said this later</td></tr>
              <tr><td>21:10</td><td>Mobile banking login from a new device in another state</td><td>No: same phone for 2 years</td></tr>
              <tr><td>21:14</td><td>New UPI payee added</td><td>Rare</td></tr>
              <tr><td>21:16</td><td>UPI transfer ₹25,000 to the new payee</td><td>No: largest in 6 months was ₹8,000</td></tr>
              <tr><td>21:19</td><td>UPI transfer ₹25,000 to the new payee</td><td>No</td></tr>
              <tr><td>21:23</td><td>Third transfer of ₹25,000 held by the system, risk score 91 (out of 100)</td><td>Alert raised</td></tr>
            </tbody>
          </table>
          <p>₹50,000 left the account. ₹25,000 was stopped. The pattern looks like account takeover (a criminal gets control of someone's account) after a fake bank call. Use this case note template:</p>
          <pre><code>CASE NOTE: [case ID]            Analyst: [your name]   Date: [date]
        1. Summary (3 lines):
        2. Timeline (time, event, source):
        3. Signals: new device, new payee, amounts far above normal, speed
        4. Customer contact: [who called whom, when, what they confirmed]
        5. Money: sent ₹[ ], stopped ₹[ ], recovery steps started [ ]
        6. Open questions / missing facts:
        7. Recommended action: [block access, reset login, raise recovery
           request, advise customer to report on 1930 / cybercrime.gov.in]
        8. Decision by: [supervisor name]</code></pre>
        </div>
        <div class="lc-card">
          <h3>Part B: the loan decision</h3>
          <p>Sweet Crumbs is a small bakery in Maharashtra. It asked Navkar Bank for a ₹8,00,000 loan over 5 years to buy a new oven. The loan model said "decline". Its top reasons were "area risk (PIN code)" and "business age under 5 years". Check the numbers yourself.</p>
          <table class="lc-table">
            <thead><tr><th>Item</th><th>Amount</th><th>Working</th></tr></thead>
            <tbody>
              <tr><td>Net operating cash per year</td><td>₹6,60,000</td><td>From 2 years of made-up accounts</td></tr>
              <tr><td>Existing loan payments per year</td><td>₹1,80,000</td><td>₹15,000 × 12</td></tr>
              <tr><td>New loan payments per year</td><td>₹2,13,552</td><td>EMI ₹17,796 × 12, at a sample 12% rate</td></tr>
              <tr><td>Total loan payments per year</td><td>₹3,93,552</td><td>₹1,80,000 + ₹2,13,552</td></tr>
              <tr><td>DSCR</td><td>1.68</td><td>₹6,60,000 ÷ ₹3,93,552</td></tr>
            </tbody>
          </table>
          <p><strong>DSCR</strong> (debt service coverage ratio) shows how many times the business's cash covers its loan payments. The bank's made-up policy asks for at least 1.25. Sweet Crumbs passes easily. In a spreadsheet, put the cash in B1, existing payments in B2 and new payments in B3. Then use <code>=B1/(B2+B3)</code>.</p>
          <p>Now look at the model's results for small-business loans by area:</p>
          <table class="lc-table">
            <thead><tr><th>Area group</th><th>Applied</th><th>Approved</th><th>Approval rate</th></tr></thead>
            <tbody>
              <tr><td>Central PIN codes</td><td>240</td><td>156</td><td>65%</td></tr>
              <tr><td>Outer PIN codes (includes Sweet Crumbs)</td><td>160</td><td>72</td><td>45%</td></tr>
            </tbody>
          </table>
          <p>The ratio is 45% ÷ 65% = 0.69. That is below the 0.8 rule of thumb. The top reason is PIN code, which can be a proxy variable. A fair recommendation is: send the case for manual review, and ask the model risk team to check the area input. You recommend. A credit officer decides.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: walk through the capstone</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="You ask">"Here are made-up fraud alerts for a joint account. Build a timeline and list the fraud signals. Do not decide the outcome."</li>
              <li data-kind="answer" data-label="AI replies">A clear timeline, with signals: new device, new payee, three transfer attempts of ₹25,000 in 7 minutes, and a fake bank call before it.</li>
              <li data-kind="warn" data-label="Catch this">The AI says "₹75,000 was lost". Wrong: the third transfer was held. Only ₹50,000 left the account.</li>
              <li data-kind="check" data-label="You check">You fix the amount in the case note and add the open questions: did Ravi share an OTP or install an app?</li>
              <li data-kind="tool" data-label="Spreadsheet">For Sweet Crumbs, you type <code>=B1/(B2+B3)</code> for DSCR. On a second sheet, you type <code>=C2/B2</code> and <code>=C3/B3</code> for approval rates.</li>
              <li data-kind="result" data-label="Sheet shows">DSCR 1.68. Approval rates 65% and 45%. Ratio 0.69.</li>
              <li data-kind="check" data-label="You decide">You recommend blocking and resetting access for Ravi and Meena's account, and a manual review of the Sweet Crumbs loan. Your supervisor signs off both.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Give AI both made-up cases. Ask for a case note and a loan review. Then check every number against the tables above.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You help a bank analyst at [Navkar Bank, a made-up bank]. This is a training exercise. All data is made up.

        CASE A (fraud alerts, joint account of [Ravi and Meena, Tamil Nadu]):
        20:55 caller claims to be from the bank KYC team; 21:10 login from a new device in another state; 21:14 new UPI payee added; 21:16 and 21:19 UPI ₹25,000 each to that payee; 21:23 third ₹25,000 transfer held, risk score 91 out of 100. Largest payment in the last 6 months: ₹8,000.

        CASE B (loan for [Sweet Crumbs, a bakery in Maharashtra]):
        Loan ₹8,00,000 over 5 years, EMI ₹17,796. Net operating cash ₹6,60,000 a year. Existing loan payments ₹15,000 a month. Policy: DSCR at least 1.25. Model says decline; top reason "area risk (PIN code)". Area approval rates: central 156 of 240, outer 72 of 160.

        Tasks:
        1. Case A: timeline, fraud signals, money sent and money stopped, open questions, recommended next steps.
        2. Case B: work out DSCR and approval rates with the working shown. Say if the decline reason could be a proxy.
        3. Give one recommendation per case. Say who should make the final decision.</pre>
            <ul class="ai-try-checks">
              <li>Case A: ₹50,000 sent and ₹25,000 stopped, not ₹75,000 lost</li>
              <li>Case B: DSCR about 1.68, approval rates 65% and 45%, ratio about 0.69</li>
              <li>It flags PIN code as a possible proxy and suggests a manual review</li>
              <li>It leaves the final decisions to a supervisor or credit officer</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> In banking work, AI is a fast first drafter. Your value is in checking the facts, fixing the numbers, spotting unfair reasons and writing a clear recommendation that a person can sign off.
        </div>
      HTML
      starter_code: nil
    }
  }.freeze
end

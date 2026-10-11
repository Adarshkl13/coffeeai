module AiVoiceCallCentresContent
  # Units (sidebar dividers): 1–4 Call Centre Basics · 5–9 AI During and After Calls · 10–14 Voice Bots and Quality · 15 Capstone
  # Widgets: sequence, sorter, stepper. No code editor: each Try It is an ai-try prompt box.
  LESSONS = {
    1 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-cs">Customer Support</div>
          <h1 class="lc-title">How Call Centres Work</h1>
        </div>
        <p class="lc-lead">A <strong>call centre</strong> is a team that answers and makes phone calls for a business. Behind every call there is a menu, a queue, an agent and a plan for staff. In this lesson you will learn each part and the people who run it. You will follow one bank helpline through the whole course. You need this map before you add AI, because AI changes each part in a different way.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 290" role="img" aria-label="One inbound call moves from the customer to the IVR menu, then a queue, then an agent, then wrap-up. Below, workforce planning, the supervisor and the QA lead support every call.">
            <defs><marker id="vc1a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="380" y="24" font-weight="700" fill="#67e8f9">One inbound call at Navkar Bank</text>
              <rect x="10" y="40" width="130" height="70" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="75" y="68" font-weight="700">Customer</text><text x="75" y="90" font-size="11" fill="#9b99b8">dials the helpline</text>
              <rect x="160" y="40" width="130" height="70" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="225" y="68" font-weight="700">IVR menu</text><text x="225" y="90" font-size="11" fill="#9b99b8">language + reason</text>
              <rect x="310" y="40" width="130" height="70" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="375" y="68" font-weight="700">Queue (ACD)</text><text x="375" y="90" font-size="11" fill="#9b99b8">waits for a skill</text>
              <rect x="460" y="40" width="130" height="70" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="525" y="68" font-weight="700">Agent</text><text x="525" y="90" font-size="11" fill="#9b99b8">verify + solve</text>
              <rect x="610" y="40" width="130" height="70" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="675" y="68" font-weight="700">Wrap-up</text><text x="675" y="90" font-size="11" fill="#9b99b8">notes + code</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#vc1a)"><line x1="141" y1="75" x2="157" y2="75"/><line x1="291" y1="75" x2="307" y2="75"/><line x1="441" y1="75" x2="457" y2="75"/><line x1="591" y1="75" x2="607" y2="75"/></g>
              <text x="380" y="148" font-size="12" fill="#9b99b8">People and plans behind every call</text>
              <rect x="10" y="165" width="235" height="105" rx="10" fill="#27274e" stroke="#22d3ee"/>
              <text x="127" y="192" font-weight="700">Workforce planning</text>
              <text x="127" y="216" font-size="11.5" fill="#9b99b8">forecasts calls per 30 min</text>
              <text x="127" y="236" font-size="11.5" fill="#9b99b8">builds the shift rosters</text>
              <rect x="262" y="165" width="235" height="105" rx="10" fill="#27274e" stroke="#22d3ee"/>
              <text x="379" y="192" font-weight="700">Supervisor (Sneha)</text>
              <text x="379" y="216" font-size="11.5" fill="#9b99b8">watches the live wallboard</text>
              <text x="379" y="236" font-size="11.5" fill="#9b99b8">helps on hard calls</text>
              <rect x="514" y="165" width="236" height="105" rx="10" fill="#27274e" stroke="#22d3ee"/>
              <text x="632" y="192" font-weight="700">QA lead (Arvind)</text>
              <text x="632" y="216" font-size="11.5" fill="#9b99b8">listens to sample calls</text>
              <text x="632" y="236" font-size="11.5" fill="#9b99b8">scores and coaches agents</text>
            </g>
          </svg>
          <figcaption>A call passes through five parts. Planners, supervisors and QA staff work on all of them.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Inbound and outbound calls</h3>
          <p><strong>Inbound</strong> calls are calls that customers make to you. <strong>Outbound</strong> calls are calls your team makes to customers. Many centres do both.</p>
          <table class="lc-table">
            <thead><tr><th>Type</th><th>What it is</th><th>Navkar Bank examples</th></tr></thead>
            <tbody>
              <tr><td>Inbound</td><td>The customer calls the helpline number</td><td>Block a lost card. Ask about a failed UPI payment. Ask about an EMI.</td></tr>
              <tr><td>Outbound</td><td>An agent calls the customer</td><td>Call back a customer who asked for a callback. Confirm a large, unusual transaction.</td></tr>
            </tbody>
          </table>
          <p>Outbound sales calls in India must follow TRAI's rules on unwanted commercial calls. Customers can block such calls with the Do Not Disturb (DND) register. Rules change, so check TRAI's current pages before you plan a calling campaign.</p>
          <p>A bank has one more duty on outbound calls. Fraudsters often pretend to be bank staff. So Navkar's agents never ask for an OTP, PIN or CVV, on any call. They say this out loud to customers too.</p>
        </div>
        <div class="lc-card">
          <h3>The parts of a call centre</h3>
          <table class="lc-table">
            <thead><tr><th>Part</th><th>What it means in plain words</th></tr></thead>
            <tbody>
              <tr><td><strong>IVR</strong> (interactive voice response)</td><td>The recorded menu: "Press 1 for Marathi". It asks why the customer is calling. It can also do simple tasks, like reading out a balance.</td></tr>
              <tr><td><strong>ACD</strong> (automatic call distributor)</td><td>The system that puts callers in queues. It sends each call to the next free agent with the right skill.</td></tr>
              <tr><td><strong>Queue</strong></td><td>The line of callers who are waiting. Each queue has its own skill, such as "Marathi, cards".</td></tr>
              <tr><td><strong>Skills-based routing</strong></td><td>Sending a call to an agent who speaks the language and knows the topic</td></tr>
              <tr><td><strong>Agent</strong></td><td>The person who answers. The agent checks who the caller is, solves the problem and writes notes.</td></tr>
              <tr><td><strong>After-call work (ACW)</strong></td><td>The time after the call: notes, follow-up tasks and a <strong>disposition code</strong> (a label for the call reason and result)</td></tr>
              <tr><td><strong>Wallboard</strong></td><td>A live screen with calls waiting, wait times and free agents</td></tr>
            </tbody>
          </table>
          <p>People have roles too. <strong>Agents</strong> take calls. A <strong>team leader</strong> guides about 10 to 15 agents. A <strong>supervisor</strong> runs the floor during a shift. The <strong>QA</strong> (quality assurance) team listens to calls and scores them. The <strong>workforce planner</strong> decides how many agents work at each hour.</p>
        </div>
        <div class="lc-card">
          <h3>Meet the Navkar Bank helpline</h3>
          <p>Navkar Bank is a made-up bank. Its helpline centre is in London. It has 60 agents on three overlapping shifts, from 8 am to 10 pm. Card blocking works all day and night through the IVR. About 45,000 calls a month reach the agents. That is about 1,500 calls a day. Callers use Marathi (45%), Hindi (30%) and English (25%). Sneha is the supervisor. Arvind is the QA lead.</p>
          <table class="lc-table">
            <thead><tr><th>Why customers call (one month)</th><th>Calls</th><th>Share</th></tr></thead>
            <tbody>
              <tr><td>Balance, statement and transaction queries</td><td>9,900</td><td>22%</td></tr>
              <tr><td>Failed UPI or IMPS payment, money debited</td><td>7,200</td><td>16%</td></tr>
              <tr><td>Card lost, stolen or needs blocking</td><td>5,400</td><td>12%</td></tr>
              <tr><td>Card declined, PIN reset help, card delivery</td><td>4,500</td><td>10%</td></tr>
              <tr><td>Net banking or mobile app login problems</td><td>4,500</td><td>10%</td></tr>
              <tr><td>Loan and EMI queries</td><td>4,050</td><td>9%</td></tr>
              <tr><td>KYC update, address or mobile number change</td><td>3,600</td><td>8%</td></tr>
              <tr><td>Suspected fraud or unknown transaction</td><td>3,150</td><td>7%</td></tr>
              <tr><td>Charges complaints and other</td><td>2,700</td><td>6%</td></tr>
              <tr><td><strong>Total</strong></td><td><strong>45,000</strong></td><td><strong>100%</strong></td></tr>
            </tbody>
          </table>
          <p>This table is the most useful page in any call centre. It shows where time goes. It also shows where AI or self-service could help first.</p>
        </div>
        <div class="lc-card">
          <h3>Workforce basics: how many agents do you need?</h3>
          <p>Calls do not arrive evenly. Monday mornings and salary days (the 1st to 5th of the month) are busy. So planners <strong>forecast</strong> calls for every 30-minute slot. Then they build shifts to match. Here is a rough check for one busy slot at Navkar:</p>
          <pre><code>Forecast: 80 calls between 10:00 and 10:30 on Monday
        Work per call (AHT): 7.5 minutes
        Total work: 80 x 7.5 = 600 minutes
        Agents fully busy for 30 minutes: 600 / 30 = 20 agents
        Agents cannot be busy 100% of the time.
        At 85% busy: 20 / 0.85 = 23.5, so about 24 agents on the phones
        Shrinkage (breaks, training, leave, meetings) of 25%:
        24 / 0.75 = 32 agents on the roster for that slot</code></pre>
          <p><strong>Shrinkage</strong> means paid time when agents cannot take calls. Real planners use Erlang C tools (a standard queue formula built into workforce software) for exact numbers. The rough check above still helps you spot a roster that is clearly too thin.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: follow one call</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Mrs Kulkarni has lost her debit card. Put the steps of her call to Navkar Bank in order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">She dials the helpline and hears the recording notice</li>
              <li data-order="2">She presses 1 for Marathi in the IVR</li>
              <li data-order="3">She presses 1 for "lost or stolen card"</li>
              <li data-order="4">The ACD places her in the priority queue for Marathi card agents</li>
              <li data-order="5">Agent Rohit answers and does a basic identity check</li>
              <li data-order="6">Rohit blocks the card and explains how to get a new one</li>
              <li data-order="7">Rohit writes notes and picks the disposition code for a lost card that was blocked</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to draw a simple map of a call centre you know. Use it to find the parts you want to improve.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a call centre operations coach. Explain things in simple English.

        Help me map how calls flow in [Navkar Bank's helpline in London: 60 agents, about 45,000 inbound calls a month, in Marathi, Hindi and English].
        Our top call reasons are [balance queries, failed UPI payments, lost cards, app login problems].

        Give me:
        1. A table of the journey: IVR, queue, agent, after-call work. For each part, write what happens and one common problem.
        2. A suggested IVR menu with no more than 5 options, plus "0 to speak to an agent".
        3. Which queues or skills we need (language + topic).
        4. The roles we need (agent, team leader, supervisor, QA, planner) and one job each.
        5. Five questions I should ask our supervisor to check this map.

        Rules: mark anything you assumed with [ASSUMED]. Do not invent real statistics. Keep it under 400 words.</pre>
            <ul class="ai-try-checks">
              <li>The IVR menu is short and always has a way to reach a person.</li>
              <li>Queues match your real languages and call reasons.</li>
              <li>Assumptions are marked, not stated as facts.</li>
              <li>The five questions would help you check the map with real staff.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A call centre is a system: a menu, queues, people and a staffing plan. Most problems start in one part and show up in another. Map the flow first. Then you will know where AI can really help.
        </div>
      HTML
      starter_code: nil
    },
    2 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-cs">Customer Support</div>
          <h1 class="lc-title">Where AI Helps in Call Centres</h1>
        </div>
        <p class="lc-lead">AI can now listen to calls, write them down, summarise them and suggest answers. It can also score calls and answer simple ones by itself. But AI makes mistakes, and a phone call is often about money, stress or trust. In this lesson you will learn the main uses of AI in a call centre. You will also learn the limits, and how to pick a safe place to start.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 280" role="img" aria-label="AI helps at four stages. Before the call: voice bots and routing. During: live transcript and agent assist. After: summaries and disposition codes. Across all calls: QA and top call reasons. People own refunds, fraud, disputes, upset callers and final QA scores.">
            <defs><marker id="vc2a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12" fill="#e2e0f0" text-anchor="middle">
              <rect x="10" y="20" width="170" height="36" rx="8" fill="#27274e" stroke="#3b82f6"/><text x="95" y="43" font-weight="700" font-size="13">Before the call</text>
              <rect x="200" y="20" width="170" height="36" rx="8" fill="#27274e" stroke="#8b5cf6"/><text x="285" y="43" font-weight="700" font-size="13">During the call</text>
              <rect x="390" y="20" width="170" height="36" rx="8" fill="#27274e" stroke="#10b981"/><text x="475" y="43" font-weight="700" font-size="13">After the call</text>
              <rect x="580" y="20" width="170" height="36" rx="8" fill="#27274e" stroke="#f59e0b"/><text x="665" y="43" font-weight="700" font-size="13">Across all calls</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#vc2a)"><line x1="181" y1="38" x2="197" y2="38"/><line x1="371" y1="38" x2="387" y2="38"/><line x1="561" y1="38" x2="577" y2="38"/></g>
              <rect x="10" y="70" width="170" height="34" rx="6" fill="#1f1f44"/><text x="95" y="92">Voice bot, smart IVR</text>
              <rect x="10" y="112" width="170" height="34" rx="6" fill="#1f1f44"/><text x="95" y="134">Route by reason</text>
              <rect x="200" y="70" width="170" height="34" rx="6" fill="#1f1f44"/><text x="285" y="92">Live transcript</text>
              <rect x="200" y="112" width="170" height="34" rx="6" fill="#1f1f44"/><text x="285" y="134">Agent assist tips</text>
              <rect x="390" y="70" width="170" height="34" rx="6" fill="#1f1f44"/><text x="475" y="92">Call summary</text>
              <rect x="390" y="112" width="170" height="34" rx="6" fill="#1f1f44"/><text x="475" y="134">Disposition code</text>
              <rect x="580" y="70" width="170" height="34" rx="6" fill="#1f1f44"/><text x="665" y="92">QA on more calls</text>
              <rect x="580" y="112" width="170" height="34" rx="6" fill="#1f1f44"/><text x="665" y="134">Top call reasons</text>
              <text x="380" y="172" font-size="11.5" fill="#9b99b8">AI drafts, routes and flags. It does not make the final call.</text>
              <rect x="10" y="186" width="740" height="80" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="380" y="212" font-weight="700" font-size="13" fill="#f9a8d4">People own the hard parts</text>
              <text x="380" y="236" font-size="11.5">Refund and fee decisions · fraud and disputes · angry or vulnerable callers</text>
              <text x="380" y="256" font-size="11.5">Final QA scores · anything the AI is not sure about</text>
            </g>
          </svg>
          <figcaption>AI can help before, during and after each call, and across all calls. People keep the decisions that affect money, safety and trust.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The main uses of AI</h3>
          <table class="lc-table">
            <thead><tr><th>Use</th><th>What it does</th><th>Navkar Bank example</th><th>What a person still checks</th></tr></thead>
            <tbody>
              <tr><td><strong>Speech-to-text</strong></td><td>Turns the call audio into written words (a transcript)</td><td>Every call gets a searchable transcript</td><td>Amounts, names and reference numbers</td></tr>
              <tr><td><strong>After-call summary</strong></td><td>Writes short notes and suggests a disposition code</td><td>The agent gets a draft note after each call</td><td>The agent reads and edits it before saving</td></tr>
              <tr><td><strong>Agent assist</strong></td><td>Shows tips and help articles during the call</td><td>Shows the steps for a failed UPI payment</td><td>The agent decides if the tip fits this caller</td></tr>
              <tr><td><strong>QA support</strong></td><td>Scores calls against a checklist and flags risky calls</td><td>Flags calls where an agent asked for an OTP</td><td>Arvind's team reviews flags and final scores</td></tr>
              <tr><td><strong>Voice bot</strong></td><td>A computer voice that talks with the caller</td><td>Tells a verified caller their balance</td><td>The team tests it and watches for failed calls</td></tr>
              <tr><td><strong>Trend analysis</strong></td><td>Groups thousands of calls by reason and finds patterns</td><td>"UPI failure calls doubled on Monday"</td><td>A person checks the pattern in real data</td></tr>
            </tbody>
          </table>
          <p>Today, Arvind's team listens to about 5 calls per agent each month. That is 300 calls out of about 42,300 answered calls, or under 1%. AI can look at many more calls. But a person must still check what the AI flags.</p>
        </div>
        <div class="lc-card">
          <h3>Limits and risks you must plan for</h3>
          <ul class="lc-list">
            <li><strong>Transcripts have errors.</strong> Accents, noise and mixed Hindi, Marathi and English cause wrong words. One wrong amount can change the meaning of a call.</li>
            <li><strong>Summaries can add things.</strong> A summary may say "refund promised" when the agent never said that.</li>
            <li><strong>Bots cannot always check facts.</strong> A voice bot must never promise a refund or a date it cannot confirm in the bank's systems.</li>
            <li><strong>Privacy.</strong> Calls contain personal and money details. Use only tools your company has approved. Never paste real calls into public AI tools.</li>
            <li><strong>Unfair scoring.</strong> AI may score some accents or languages lower. People must check samples for fairness.</li>
            <li><strong>Agent trust.</strong> If agents feel watched all the time, morale drops. Explain what AI is used for, and what it is not used for.</li>
            <li><strong>Always a way to a person.</strong> Every bot and menu needs an easy option to reach a human agent.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Where to start: pick low risk and high volume</h3>
          <p>Score each idea on three things. How many calls does it touch? What is the harm if the AI is wrong? How easy is it to test? Here is Sneha's first list:</p>
          <table class="lc-table">
            <thead><tr><th>Idea</th><th>Volume</th><th>Harm if wrong</th><th>Decision</th></tr></thead>
            <tbody>
              <tr><td>Draft after-call summaries that agents edit</td><td>Every call</td><td>Low (agent checks)</td><td>Start here</td></tr>
              <tr><td>Tag calls by reason for the monthly report</td><td>Every call</td><td>Low</td><td>Start here</td></tr>
              <tr><td>Voice bot for balance queries (9,900 a month)</td><td>High</td><td>Medium</td><td>Later, after testing</td></tr>
              <tr><td>Voice bot that handles fraud reports</td><td>3,150 a month</td><td>High</td><td>No. People handle fraud.</td></tr>
            </tbody>
          </table>
          <p>A rough estimate helps you explain the idea. Say AI summaries cut after-call work from 75 seconds to 45 seconds. Then 30 seconds x 42,300 calls = 1,269,000 seconds. That is 352.5 hours a month. This is only an estimate. Agents still need time to check each summary, so test it with a small pilot first.</p>
          <pre><code>Weak prompt:
        How can AI help my call centre?

        Better prompt:
        I run a bank helpline with 60 agents and 45,000 calls a month
        in Marathi, Hindi and English. Here are our top 9 call reasons
        with volumes: [table]. For each reason, suggest one AI use,
        rate the harm if the AI is wrong (low, medium, high), and say
        what a person must still check. Put fraud and complaints in
        the "people own it" group.</code></pre>
        </div>
        <div class="lc-card">
          <h3>Activity: AI or a person?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">At Navkar Bank, who should own each task?</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="ai" data-label="AI drafts it, a person checks"></div>
              <div data-sorter-target="bucket" data-bucket="person" data-label="A person owns it"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="ai" data-why="Low risk and high volume. The agent reads the draft before saving it.">Write a draft summary of a balance query call</li>
              <li data-bucket="ai" data-why="A help article is useful. The agent still decides if it fits the caller.">Suggest the help article on failed UPI payments during a call</li>
              <li data-bucket="person" data-why="This is a money decision. It needs a person with the right authority.">Decide whether to reverse a disputed charge as a goodwill gesture</li>
              <li data-bucket="person" data-why="A scared or upset caller needs a caring human. The case may also need fraud steps.">Talk with an elderly customer who has just lost money to a scam</li>
              <li data-bucket="ai" data-why="Tagging is a good AI task. A person checks a sample of the tags each month.">Tag 45,000 calls by call reason for the monthly report</li>
              <li data-bucket="person" data-why="Only a person who has checked the case should confirm the result.">Tell a caller that their fraud claim is approved</li>
              <li data-bucket="ai" data-why="Translation saves time. A fluent person checks key words, names and amounts.">Translate a Marathi call transcript into English for the complaints team</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to build an AI opportunity list for a call centre, with risks and checks. Then choose one safe first pilot.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an adviser who helps call centres use AI safely. Use simple English.

        Our centre: [Navkar Bank helpline, London, 60 agents, 45,000 inbound calls a month, Marathi/Hindi/English].
        Call reasons per month:
        [Balance and transaction queries 9,900; Failed UPI payments 7,200; Lost or blocked cards 5,400; Card declined or PIN help 4,500; App login problems 4,500; Loan and EMI 4,050; KYC and address change 3,600; Suspected fraud 3,150; Charges complaints and other 2,700]

        Make a table with these columns: Call reason, AI idea, Harm if AI is wrong (low/medium/high), What a person must check.
        Rules:
        - Fraud, complaints and money decisions stay with people. AI may only help them.
        - Never suggest that a bot promises refunds or dates.
        - Every bot idea needs a way to reach a person.
        Then recommend ONE first pilot and give 3 simple ways to measure if it worked.</pre>
            <ul class="ai-try-checks">
              <li>Fraud and complaints are in the "people own it" group.</li>
              <li>The first pilot is low risk and touches many calls.</li>
              <li>No bot idea promises refunds, dates or approvals.</li>
              <li>The success measures can really be counted in your centre.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> AI is strongest on the repeated work around a call: writing it down, summarising it and sorting it. People must keep the decisions about money, fraud and upset customers. Start with a low-risk, high-volume task and measure it.
        </div>
      HTML
      starter_code: nil
    },
    3 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-cs">Customer Support</div>
          <h1 class="lc-title">Call Centre Metrics</h1>
        </div>
        <p class="lc-lead">Call centres run on numbers. Five metrics tell you most of the story: average handle time, first call resolution, service level, abandonment rate and occupancy. In this lesson you will learn what each one means and how to calculate it. You will use one month of Navkar Bank data. You will also learn why AI must never be your only calculator.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 265" role="img" aria-label="A dashboard for Navkar Bank last month. AHT 7 minutes 30 seconds. FCR 68 percent against a 75 percent target. Service level 72 percent in 20 seconds against 80 percent. Abandonment 6.0 percent against under 5 percent. Occupancy 75 percent against 80 to 85 percent.">
            <g font-family="inherit" font-size="12" fill="#e2e0f0" text-anchor="middle">
              <text x="380" y="26" font-weight="700" font-size="13" fill="#67e8f9">Navkar Bank helpline · last month (made-up data)</text>
              <rect x="10" y="45" width="140" height="150" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="80" y="72" fill="#9b99b8">AHT</text>
              <text x="80" y="115" font-size="28" font-weight="700">7:30</text>
              <text x="80" y="145" font-size="11" fill="#9b99b8">no fixed target</text>
              <text x="80" y="172" font-size="11" fill="#fcd34d">read with FCR</text>
              <rect x="160" y="45" width="140" height="150" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="230" y="72" fill="#9b99b8">FCR</text>
              <text x="230" y="115" font-size="28" font-weight="700">68%</text>
              <text x="230" y="145" font-size="11" fill="#9b99b8">target 75%</text>
              <text x="230" y="172" font-size="11" fill="#f9a8d4">below target</text>
              <rect x="310" y="45" width="140" height="150" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="380" y="72" fill="#9b99b8">Service level</text>
              <text x="380" y="115" font-size="28" font-weight="700">72%</text>
              <text x="380" y="145" font-size="11" fill="#9b99b8">target 80% in 20 s</text>
              <text x="380" y="172" font-size="11" fill="#f9a8d4">below target</text>
              <rect x="460" y="45" width="140" height="150" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="530" y="72" fill="#9b99b8">Abandoned</text>
              <text x="530" y="115" font-size="28" font-weight="700">6.0%</text>
              <text x="530" y="145" font-size="11" fill="#9b99b8">target under 5%</text>
              <text x="530" y="172" font-size="11" fill="#f9a8d4">above target</text>
              <rect x="610" y="45" width="140" height="150" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="680" y="72" fill="#9b99b8">Occupancy</text>
              <text x="680" y="115" font-size="28" font-weight="700">75%</text>
              <text x="680" y="145" font-size="11" fill="#9b99b8">target 80–85%</text>
              <text x="680" y="172" font-size="11" fill="#fcd34d">low on average</text>
              <text x="380" y="224" font-size="11.5" fill="#9b99b8">Calls offered 45,000 · answered 42,300 · abandoned 2,700</text>
              <text x="380" y="246" font-size="11.5" fill="#9b99b8">Agents are not busy on average, yet callers wait. Staff do not match the peaks.</text>
            </g>
          </svg>
          <figcaption>Navkar Bank's monthly dashboard. Read the metrics together, not one at a time.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The five core metrics</h3>
          <table class="lc-table">
            <thead><tr><th>Metric</th><th>What it means</th><th>Formula</th><th>Navkar last month</th></tr></thead>
            <tbody>
              <tr><td><strong>AHT</strong> (average handle time)</td><td>Average time an agent spends on one call, including hold and notes</td><td>(talk time + hold time + after-call work) ÷ calls handled</td><td>5:30 + 0:45 + 1:15 = <strong>7:30</strong></td></tr>
              <tr><td><strong>FCR</strong> (first call resolution)</td><td>Share of calls solved on the first call, with no need to call again</td><td>calls solved first time ÷ calls handled</td><td>28,764 ÷ 42,300 = <strong>68%</strong></td></tr>
              <tr><td><strong>Service level</strong></td><td>Share of calls answered within a target time</td><td>calls answered within 20 s ÷ calls offered</td><td>32,400 ÷ 45,000 = <strong>72%</strong></td></tr>
              <tr><td><strong>Abandonment rate</strong></td><td>Share of callers who hung up before an agent answered</td><td>calls abandoned ÷ calls offered</td><td>2,700 ÷ 45,000 = <strong>6.0%</strong></td></tr>
              <tr><td><strong>Occupancy</strong></td><td>Share of logged-in time that agents spend handling calls</td><td>total handle time ÷ logged-in time</td><td>5,287.5 h ÷ 7,050 h = <strong>75%</strong></td></tr>
            </tbody>
          </table>
          <p><strong>Calls offered</strong> means all calls that reached the agent queue. <strong>Calls handled</strong> means the calls an agent answered. A target like "80/20" means 80% of calls answered within 20 seconds.</p>
          <p>Definitions vary between centres. Some leave out callers who hang up in the first 5 seconds. Some measure FCR with a survey instead of repeat calls. Navkar uses repeat calls. A call counts as solved first time if there is no repeat call on the same issue within 7 days. Write your own definitions down, and use them every month.</p>
        </div>
        <div class="lc-card">
          <h3>Worked example: one month at Navkar Bank</h3>
          <p>Here is how Sneha builds the numbers in a spreadsheet. Column B holds the data. Column C shows the formula for each result.</p>
          <pre><code>Row  A (item)                          B (value)     C (formula)
        2    Calls offered                       45,000
        3    Calls abandoned                     2,700
        4    Calls answered (handled)            42,300        =B2-B3
        5    Answered within 20 seconds          32,400
        6    Avg talk time (seconds)             330
        7    Avg hold time (seconds)             45
        8    Avg after-call work (seconds)       75
        9    AHT (seconds)                       450           =B6+B7+B8
        10   Total handle time (hours)           5,287.5       =B4*B9/3600
        11   Logged-in agent hours               7,050
        12   Occupancy                           75.0%         =B10/B11
        13   Solved first time (no repeat)       28,764
        14   FCR                                 68.0%         =B13/B4
        15   Service level (20 s)                72.0%         =B5/B2
        16   Abandonment rate                    6.0%          =B3/B2</code></pre>
          <p>Check the hours: 42,300 calls x 450 seconds = 19,035,000 seconds. Divide by 3,600 to get 5,287.5 hours. AHT of 450 seconds is 7 minutes 30 seconds.</p>
          <p>Now read the story. Occupancy is only 75%, so agents are not overloaded on average. Yet service level and abandonment miss their targets. This usually means staff do not match the peaks. Sneha should look at the numbers for each 30-minute slot, not only the monthly total.</p>
        </div>
        <div class="lc-card">
          <h3>Metrics pull against each other</h3>
          <ul class="lc-list">
            <li><strong>Pushing AHT down can hurt FCR.</strong> Rushed agents solve fewer problems. Say FCR falls from 68% to 60%. Unsolved first calls rise from 13,536 to 16,920. That is 3,384 more customers who may call again.</li>
            <li><strong>Very high occupancy burns agents out.</strong> Above about 90% for long periods, agents get no breathing time between calls. Quality and attendance often fall.</li>
            <li><strong>Averages hide peaks.</strong> A good monthly service level can hide a terrible Monday morning.</li>
            <li><strong>Abandonment has two causes.</strong> Long waits are one. A confusing IVR is the other. Check both.</li>
          </ul>
          <p>AI can explain metrics, suggest spreadsheet formulas and point out patterns. But AI chat tools can make arithmetic mistakes and mix up definitions. Always recalculate in a spreadsheet. Share only totals with AI, never customer-level records.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: Sneha's monthly review with AI</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Sneha asks">"Here are last month's totals: 45,000 offered, 2,700 abandoned, 32,400 answered within 20 seconds. Talk 330 s, hold 45 s, ACW 75 s. Calculate AHT, service level and abandonment. Show each step."</li>
              <li data-kind="answer" data-label="AI replies">"AHT = 330 + 45 + 75 = 450 seconds (7:30). Abandonment = 2,700 ÷ 45,000 = 6.0%. Service level = 32,400 ÷ 42,300 = 76.6%."</li>
              <li data-kind="warn" data-label="Catch the mistake">The AI divided by answered calls (42,300), not calls offered (45,000). Navkar's definition uses calls offered. The right answer is 72%, not 76.6%.</li>
              <li data-kind="tool" data-label="Google Sheets">Sneha puts the totals in a sheet and types the formulas herself: =B5/B2 for service level.</li>
              <li data-kind="result" data-label="Sheet shows">AHT 450 s. Service level 72.0%. Abandonment 6.0%. These match the bank's definitions.</li>
              <li data-kind="user" data-label="Sneha asks again">"Using service level 72%, abandonment 6.0% and occupancy 75%, list 3 possible reasons and what data I should check for each."</li>
              <li data-kind="check" data-label="Sneha decides">The AI suggests peaks, IVR confusion and long calls. Sneha pulls 30-minute data for Mondays and the 1st to 5th of the month before she changes any roster.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Give AI one month of totals. Ask it to calculate the five metrics, show its working and suggest what to check next.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a call centre analyst. Explain in simple English.

        Last month's totals for [Navkar Bank helpline]:
        - Calls offered: [45,000]
        - Calls abandoned: [2,700]
        - Answered within 20 seconds: [32,400]
        - Average talk [330] s, hold [45] s, after-call work [75] s
        - Logged-in agent hours: [7,050]
        - Calls solved first time (no repeat call within 7 days): [28,764]
        Targets: service level [80% in 20 s], abandonment [under 5%], FCR [75%], occupancy [80-85%].

        Definitions to use:
        - Calls handled = offered - abandoned
        - Service level and abandonment divide by calls OFFERED
        - Occupancy = total handle time / logged-in time

        1. Calculate AHT, FCR, service level, abandonment and occupancy. Show every step.
        2. Give the Google Sheets formula for each one.
        3. Compare each result with its target in a table.
        4. Suggest 3 likely causes and the data I should check for each.
        Do not invent any extra numbers.</pre>
            <ul class="ai-try-checks">
              <li>Recalculate each metric yourself in a spreadsheet.</li>
              <li>With the default numbers, you should get AHT 7:30, FCR 68%, service level 72%, abandonment 6.0% and occupancy 75%.</li>
              <li>Service level and abandonment use calls offered, not calls answered.</li>
              <li>The causes are ideas to check, not stated as facts.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A metric is only useful if everyone uses the same definition. Read the metrics together, because improving one can hurt another. Let AI explain and suggest, but let the spreadsheet do the maths.
        </div>
      HTML
      starter_code: nil
    },
    4 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-cs">Customer Support</div>
          <h1 class="lc-title">Call Recording, Consent and Privacy</h1>
        </div>
        <p class="lc-lead">Recorded calls help with quality checks, training and disputes. They are also the raw material for AI transcripts and summaries. But a recording holds a person's voice, name and money details. That is personal data. In this lesson you will learn how to announce recording and what consent means. You will also learn how to store and delete recordings safely. You will also learn the basics of India's data protection law. This lesson is general education, not legal advice.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 255" role="img" aria-label="The life of a call recording in five steps: announce, record, store, use and delete. The bank stays responsible even when a vendor stores or transcribes the calls.">
            <defs><marker id="vc4a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="380" y="24" font-weight="700" fill="#67e8f9">The life of a call recording</text>
              <rect x="10" y="40" width="130" height="95" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="75" y="66" font-weight="700">1 Announce</text>
              <text x="75" y="90" font-size="11" fill="#9b99b8">say it is recorded</text><text x="75" y="108" font-size="11" fill="#9b99b8">and why</text>
              <rect x="160" y="40" width="130" height="95" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="225" y="66" font-weight="700">2 Record</text>
              <text x="225" y="90" font-size="11" fill="#9b99b8">stop card or OTP</text><text x="225" y="108" font-size="11" fill="#9b99b8">details being said</text>
              <rect x="310" y="40" width="130" height="95" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="375" y="66" font-weight="700">3 Store</text>
              <text x="375" y="90" font-size="11" fill="#9b99b8">encrypted</text><text x="375" y="108" font-size="11" fill="#9b99b8">limited access</text>
              <rect x="460" y="40" width="130" height="95" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="525" y="66" font-weight="700">4 Use</text>
              <text x="525" y="90" font-size="11" fill="#9b99b8">QA, disputes, AI</text><text x="525" y="108" font-size="11" fill="#9b99b8">approved tools only</text>
              <rect x="610" y="40" width="130" height="95" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="675" y="66" font-weight="700">5 Delete</text>
              <text x="675" y="90" font-size="11" fill="#9b99b8">after retention</text><text x="675" y="108" font-size="11" fill="#9b99b8">log the deletion</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#vc4a)"><line x1="141" y1="87" x2="157" y2="87"/><line x1="291" y1="87" x2="307" y2="87"/><line x1="441" y1="87" x2="457" y2="87"/><line x1="591" y1="87" x2="607" y2="87"/></g>
              <rect x="10" y="160" width="740" height="80" rx="10" fill="#27274e" stroke="#22d3ee"/>
              <text x="380" y="186" font-weight="700" fill="#67e8f9">Who is responsible?</text>
              <text x="380" y="208" font-size="12">The bank decides why and how calls are recorded (the data fiduciary).</text>
              <text x="380" y="227" font-size="12">It stays responsible even when a vendor stores or transcribes them.</text>
            </g>
          </svg>
          <figcaption>Every recording goes through five steps. Each step needs a clear rule and an owner.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Announce recording clearly</h3>
          <p>Tell callers at the start that the call is recorded, and why. Use the caller's language. Keep it short, because every second in the IVR adds to wait time. If you will use AI to turn calls into text, it is good practice to say so too. Navkar's announcement plays after the caller picks a language:</p>
          <pre><code>English: This call is recorded to check quality, train our staff
        and keep a record of your request. We may use secure software
        to turn calls into text. Navkar Bank will never ask for your
        OTP, PIN or CVV.

        हिंदी [native speaker to check]: गुणवत्ता जाँचने, स्टाफ़ के प्रशिक्षण और
        आपके अनुरोध का रिकॉर्ड रखने के लिए यह कॉल रिकॉर्ड की जाती है। कॉल को
        टेक्स्ट में बदलने के लिए हम सुरक्षित सॉफ़्टवेयर का उपयोग कर सकते हैं।
        नवकार बैंक कभी भी आपका OTP, PIN या CVV नहीं माँगेगा।

        मराठी [native speaker to check]: गुणवत्ता तपासणे, कर्मचाऱ्यांचे प्रशिक्षण
        आणि तुमच्या विनंतीची नोंद ठेवण्यासाठी हा कॉल रेकॉर्ड केला जातो. कॉलचे
        मजकुरात रूपांतर करण्यासाठी आम्ही सुरक्षित सॉफ्टवेअर वापरू शकतो. नवकार
        बँक कधीही तुमचा OTP, PIN किंवा CVV विचारणार नाही.</code></pre>
          <p>The Hindi and Marathi lines are drafts. A native speaker must check every translation before it goes live. Your legal or compliance team must approve the final wording.</p>
        </div>
        <div class="lc-card">
          <h3>India's data protection law in plain words</h3>
          <p>India's <strong>Digital Personal Data Protection Act, 2023</strong> (DPDP Act) covers digital personal data. The <strong>DPDP Rules, 2025</strong> add detail on how to follow it. The Rules were notified in November 2025. They come into force in phases. Under the Rules as notified, many main duties apply 18 months later, in May 2027. The government has discussed changing some deadlines, so check the current status with your legal team. Here are the main ideas, in general terms:</p>
          <table class="lc-table">
            <thead><tr><th>Idea</th><th>What it means for call recordings</th></tr></thead>
            <tbody>
              <tr><td><strong>Personal data</strong></td><td>A voice, name, account details or transaction story in a call is personal data.</td></tr>
              <tr><td><strong>Data fiduciary</strong></td><td>The organisation that decides why and how data is used. Here, that is the bank.</td></tr>
              <tr><td><strong>Data processor</strong></td><td>A vendor that handles data for the bank, such as a recording or AI transcription company.</td></tr>
              <tr><td><strong>Notice and consent</strong></td><td>People should get a clear notice of what data is used and why. Where consent is the basis, it must be free, specific and clear, and people can withdraw it. The law also allows some "legitimate uses" without consent. Your legal team decides which basis applies.</td></tr>
              <tr><td><strong>Security</strong></td><td>The fiduciary must take reasonable security steps. Serious breaches must be reported to the Data Protection Board and the affected people.</td></tr>
              <tr><td><strong>Deletion</strong></td><td>Delete data when its purpose is over, unless a law says you must keep it.</td></tr>
              <tr><td><strong>Rights</strong></td><td>People can ask about their data, ask for corrections or deletion, and raise complaints.</td></tr>
            </tbody>
          </table>
          <p><strong>Banks have extra rules.</strong> In general, RBI expects banks to keep customer information confidential and secure. A bank stays responsible for vendors it outsources work to. RBI also has cyber security rules, and rules that payment system data be stored in India. Card data rules such as PCI DSS (the card industry's security standard) forbid keeping CVV numbers after a payment is authorised. This includes call recordings and transcripts.</p>
          <p>This is general education, not legal advice. Real decisions need your bank's legal and compliance team or a qualified lawyer.</p>
        </div>
        <div class="lc-card">
          <h3>Storing, using and deleting recordings</h3>
          <p>Navkar Bank's recording policy is a made-up example. The real periods and rules must come from your legal and compliance team.</p>
          <table class="lc-table">
            <thead><tr><th>Topic</th><th>Navkar's rule (made-up example)</th></tr></thead>
            <tbody>
              <tr><td>Who can listen</td><td>QA team, supervisors and the complaints team only. Every playback is logged.</td></tr>
              <tr><td>Where it is kept</td><td>An encrypted system. No downloads to personal phones or laptops.</td></tr>
              <tr><td>Sensitive numbers</td><td>Agents never ask for OTP, PIN, CVV or the full card number. If a caller starts to read one out, the agent stops them. Transcripts mask long numbers.</td></tr>
              <tr><td>How long</td><td>180 days as standard. Calls linked to an open complaint, dispute or fraud case are kept until it closes, plus any period legal sets.</td></tr>
              <tr><td>Deletion</td><td>Automatic after the period ends. The system keeps a log that the deletion happened.</td></tr>
              <tr><td>AI vendors</td><td>Only approved tools with a signed contract. The contract says where data is stored, who can see it, and when it is deleted. It also says whether the vendor may use calls to train its AI.</td></tr>
            </tbody>
          </table>
          <p>The simplest rule for everyone: never paste a real recording or transcript into a public AI tool. Use your company's approved tool, or remove all personal details first.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: good practice or needs fixing?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each situation at Navkar Bank.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="good" data-label="Good practice"></div>
              <div data-sorter-target="bucket" data-bucket="fix" data-label="Needs fixing"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="good" data-why="A clear notice in the caller's language, with the purpose, is the right start.">Callers hear in their chosen language that calls are recorded, and why</li>
              <li data-bucket="fix" data-why="Recordings must stay in the secure system, where access is controlled and logged.">A team leader downloads recordings to a personal phone to coach at home</li>
              <li data-bucket="fix" data-why="Card numbers must be masked. The agent should also stop callers from reading them out.">Transcripts show full card numbers because a caller read them out</li>
              <li data-bucket="good" data-why="Evidence for an open case is kept until the case is closed.">Recordings linked to an open fraud case are kept until it is closed</li>
              <li data-bucket="fix" data-why="Public AI tools are not approved for customer data. Use the bank's approved tool.">Arvind pastes a real transcript into a free public chatbot for a summary</li>
              <li data-bucket="fix" data-why="Someone must read and approve how the vendor uses the bank's data.">Nobody checked whether the AI vendor may train its models on the bank's calls</li>
              <li data-bucket="good" data-why="Deleting on time, with a record, follows the retention rule.">Old recordings are deleted automatically after the retention period, with a log</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to draft a recording notice and a list of privacy questions for an AI transcription vendor. Then take both to your compliance team.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a helper for a call centre privacy team. Use simple English. This is a draft for our legal team, not legal advice.

        We are [Navkar Bank's helpline in London]. We want to use an AI tool to transcribe and summarise recorded calls in [Marathi, Hindi and English].

        1. Write a recording announcement of no more than 35 words. Say that calls are recorded, why, and that software may turn calls into text. End with: "We will never ask for your OTP, PIN or CVV."
        2. Give it in [English and Hindi]. Mark the translation "Check with a fluent speaker".
        3. Write 10 questions to ask the AI vendor. Cover: where data is stored, who can access it, encryption, how long it is kept, deletion, whether it trains on our calls, masking of numbers, breach reporting, and sub-vendors.
        4. List 5 items our legal team must decide under India's DPDP Act and Rules and RBI's expectations. Do not quote section numbers or penalties.</pre>
            <ul class="ai-try-checks">
              <li>The announcement is short and names the purpose.</li>
              <li>A fluent speaker must check any translation.</li>
              <li>The vendor questions cover storage, access, deletion and training on your data.</li>
              <li>The answer does not claim to give final legal advice or quote made-up laws.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Treat every recording as sensitive personal data. Tell callers, collect only what you need, lock it down, and delete it on time. The bank stays responsible, even when a vendor or an AI tool does the work.
        </div>
      HTML
      starter_code: nil
    },
    5 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-cs">Customer Support</div>
          <h1 class="lc-title">Speech-to-Text and Transcripts</h1>
        </div>
        <p class="lc-lead">Speech-to-text (also called transcription) turns spoken words into written text. It is the first step for almost every AI tool in a call centre. Summaries, agent assist and QA all read the transcript, not the audio. So if the transcript is wrong, everything after it can be wrong too. In this lesson you will learn how transcription works and why accents and Indian languages cause errors. You will also learn how to find and fix errors.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 290" role="img" aria-label="Call audio goes into speech-to-text, then speaker labels, then a draft transcript, then a person checks key facts. Below, an example: the customer said pachees hazaar, 25,000 rupees, but the transcript shows pachas hazaar, 50,000 rupees.">
            <defs><marker id="vc5a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="10" y="20" width="130" height="75" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="75" y="50" font-weight="700">Call audio</text><text x="75" y="72" font-size="11" fill="#9b99b8">phone-quality sound</text>
              <rect x="160" y="20" width="130" height="75" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="225" y="50" font-weight="700">Speech-to-text</text><text x="225" y="72" font-size="11" fill="#9b99b8">words + timestamps</text>
              <rect x="310" y="20" width="130" height="75" rx="10" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="375" y="50" font-weight="700">Speaker labels</text><text x="375" y="72" font-size="11" fill="#9b99b8">agent or customer</text>
              <rect x="460" y="20" width="130" height="75" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="525" y="50" font-weight="700">Draft transcript</text><text x="525" y="72" font-size="11" fill="#9b99b8">some words unsure</text>
              <rect x="610" y="20" width="130" height="75" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="675" y="50" font-weight="700">Person checks</text><text x="675" y="72" font-size="11" fill="#9b99b8">amounts, names, IDs</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#vc5a)"><line x1="141" y1="57" x2="157" y2="57"/><line x1="291" y1="57" x2="307" y2="57"/><line x1="441" y1="57" x2="457" y2="57"/><line x1="591" y1="57" x2="607" y2="57"/></g>
              <text x="380" y="132" font-size="12" fill="#9b99b8">One wrong word can change the whole call</text>
              <rect x="40" y="148" width="280" height="90" rx="10" fill="#27274e" stroke="#10b981"/>
              <text x="180" y="174" fill="#6ee7b7" font-weight="700">Customer said</text>
              <text x="180" y="200">"pachees hazaar"</text>
              <text x="180" y="222" font-size="12" fill="#9b99b8">₹25,000</text>
              <rect x="440" y="148" width="280" height="90" rx="10" fill="#27274e" stroke="#ec4899"/>
              <text x="580" y="174" fill="#f9a8d4" font-weight="700">Transcript shows</text>
              <text x="580" y="200">"pachas hazaar"</text>
              <text x="580" y="222" font-size="12" fill="#9b99b8">₹50,000</text>
              <line x1="322" y1="193" x2="436" y2="193" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#vc5a)"/>
              <text x="380" y="272" font-size="11.5" fill="#9b99b8">A low overall error rate can still hide a costly mistake.</text>
            </g>
          </svg>
          <figcaption>Transcription is a chain of steps. A person must check the facts that matter most.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>How transcription works</h3>
          <p>A speech-to-text model listens to the audio in small pieces. For each piece, it predicts the most likely words. It does not "understand" the call like a person. It guesses words from sounds and context. Most tools also give you:</p>
          <ul class="lc-list">
            <li><strong>Timestamps:</strong> the time each line was spoken, such as [00:01:42]. You can jump to that point in the audio.</li>
            <li><strong>Speaker labels</strong> (also called diarisation): which words the agent said and which the customer said. Separate agent and customer audio channels make this much more accurate.</li>
            <li><strong>Confidence scores:</strong> how sure the tool is about a word. Low scores point to words you should check.</li>
            <li><strong>Real-time or after the call:</strong> real-time transcripts feed agent assist. After-call transcripts are usually more accurate, because the tool hears the whole call.</li>
          </ul>
          <p>Many tools also let you add a <strong>custom vocabulary</strong> (a list of special words): product names, bank terms and place names. Features differ by tool, so check the tool's current help pages.</p>
        </div>
        <div class="lc-card">
          <h3>Accents and Indian languages</h3>
          <p>Transcription of Indian languages has improved a lot, but it is not perfect. Accuracy changes by language, accent, tool and line quality. Common problems at Navkar Bank:</p>
          <table class="lc-table">
            <thead><tr><th>Problem</th><th>Example</th></tr></thead>
            <tbody>
              <tr><td><strong>Code-mixing</strong> (mixing languages in one sentence)</td><td>"Maine UPI se payment kiya but amount debit ho gaya."</td></tr>
              <tr><td><strong>Numbers in words</strong></td><td>"pachees hazaar" (25,000) heard as "pachas hazaar" (50,000)</td></tr>
              <tr><td><strong>Names and brands</strong></td><td>"Navkar Bank" written as "Naukar Bank"</td></tr>
              <tr><td><strong>Bank terms</strong></td><td>"UPI" written as "you pee eye". "NEFT" written as "and if tea".</td></tr>
              <tr><td><strong>Same word, two meanings</strong></td><td>In Hindi, "kal" means both "yesterday" and "tomorrow". Only context tells you which.</td></tr>
              <tr><td><strong>Phone line and noise</strong></td><td>Traffic, a TV, a weak mobile signal, or two people talking at once</td></tr>
            </tbody>
          </table>
          <p>A common accuracy measure is <strong>WER</strong> (word error rate). WER = (wrong words + missing words + extra words) ÷ words actually spoken. Example: a 200-word stretch of a call has 9 wrong words, 4 missing words and 3 extra words. That is 16 ÷ 200 = 8% WER. But WER treats every word the same. A wrong "the" and a wrong amount both count as one error. So also check <strong>key facts</strong>: amounts, dates, names and reference numbers.</p>
          <p>Test any tool on your own calls, in each of your languages. Do not trust a general accuracy claim from a sales page.</p>
        </div>
        <div class="lc-card">
          <h3>Worked example: fixing a transcript</h3>
          <p>Here is part of a made-up Navkar call, with the raw transcript from the tool. The Hindi lines are in Latin letters. A native speaker should check them before you use them in training.</p>
          <pre><code>[00:00:04] Agent: Namaste, Naukar Bank se Rohit bol raha hoon.
        [00:00:09] Customer: Maine kal you pee eye se pachas hazaar bheja,
                   paisa kat gaya but receiver ko nahi mila.
        [00:00:18] Agent: Aapke paas UTR number hai?
        [00:00:21] Customer: Haan, 4172 8830 5561... ek minute... 5516.</code></pre>
          <table class="lc-table">
            <thead><tr><th>Transcript shows</th><th>Likely correct</th><th>How to check</th></tr></thead>
            <tbody>
              <tr><td>Naukar Bank</td><td>Navkar Bank</td><td>Safe to fix. Add "Navkar" to the custom vocabulary.</td></tr>
              <tr><td>you pee eye</td><td>UPI</td><td>Safe to fix. Add bank terms to the vocabulary.</td></tr>
              <tr><td>pachas hazaar (₹50,000)</td><td>Maybe pachees hazaar (₹25,000)</td><td>Do not guess. Listen at 00:00:09 and check the transaction record.</td></tr>
              <tr><td>kal</td><td>Yesterday</td><td>"bheja" (sent) is past tense, so "kal" means yesterday here. Check the transaction date too.</td></tr>
              <tr><td>UTR 4172 8830 5561... 5516</td><td>Unclear: the customer corrected themselves</td><td>Read the UTR from the bank's system. Never copy it from the transcript.</td></tr>
            </tbody>
          </table>
          <p>A <strong>UTR</strong> (unique transaction reference) is the ID of a bank payment. Fix brand names and common terms with a find-and-replace list. For amounts, dates and IDs, always go back to the audio or the bank's system.</p>
          <p>AI can help clean a transcript. But an AI tool may "fix" an unclear word into a normal-looking wrong word. So tell it to mark unsure words, not to guess.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: Arvind tests a transcription tool</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="tool" data-label="Bank-approved tool">Arvind runs 30 test calls through the transcription tool: 10 in Marathi, 10 in Hindi and 10 in English.</li>
              <li data-kind="check" data-label="Make the answer key">Arvind and two agents listen to all 30 calls. They type exactly what was said, to compare with the tool.</li>
              <li data-kind="result" data-label="Test results (made-up)">Word error rate: English 9%, Hindi 13%, Marathi 19%. Bank terms and code-mixed sentences cause most errors.</li>
              <li data-kind="warn" data-label="Hidden problem">An amount was wrong in 3 of the 30 calls. The overall error rate looked fine, but these mistakes matter most.</li>
              <li data-kind="user" data-label="Arvind asks AI">"From this transcript, list every amount, date, name and reference number with its timestamp. Mark any you are unsure of with [CHECK]. Do not correct them."</li>
              <li data-kind="answer" data-label="AI replies">The AI lists 7 items. It marks "pachas hazaar" and the UTR number with [CHECK].</li>
              <li data-kind="check" data-label="Decision">Use transcripts for summaries and search. Agents confirm amounts and IDs in the bank's system. Add Marathi bank terms to the vocabulary, and test again next month.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to review a raw call transcript. It should mark likely errors and list the facts a person must check, without guessing.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a transcript checker for a bank call centre. Use simple English.

        Below is a raw, machine-made transcript of a [Hindi-English] call to [Navkar Bank]. It is made up and has no real customer data.

        [00:00:04] Agent: Namaste, Naukar Bank se Rohit bol raha hoon.
        [00:00:09] Customer: Maine kal you pee eye se pachas hazaar bheja, paisa kat gaya but receiver ko nahi mila.
        [00:00:18] Agent: Aapke paas UTR number hai?
        [00:00:21] Customer: Haan, 4172 8830 5561... ek minute... 5516.
        [00:00:30] Agent: Theek hai, main check karta hoon. Aapko teen working din mein update milega.

        Tasks:
        1. Make a table: Timestamp, Words in transcript, Likely meaning, Safe to fix? (Yes / No - check audio or system).
        2. Fix only brand names and common bank terms. Never change amounts, dates or reference numbers. Mark them [CHECK].
        3. Rewrite the transcript in clean English, keeping the [CHECK] marks and masking long numbers like 4172 XXXX XXXX 5516.
        4. List anything the agent promised, so a supervisor can check it was allowed.</pre>
            <ul class="ai-try-checks">
              <li>The amount "pachas hazaar" is marked [CHECK], not silently changed.</li>
              <li>The UTR number is masked and marked for checking in the bank's system.</li>
              <li>"Kal" is read as "yesterday", with a reason.</li>
              <li>The promise of an update in three working days is listed for a supervisor to check.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A transcript is a useful draft, not a record of truth. Measure accuracy on your own calls in every language. Always check amounts, dates, names and IDs against the audio or the bank's system.
        </div>
      HTML
      starter_code: nil
    },
    6 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-cs">Customer Support</div>
          <h1 class="lc-title">After-Call Summaries with AI</h1>
        </div>
        <p class="lc-lead">After every call, the agent writes a short note and picks a <strong>disposition code</strong> (a label for why the customer called and what happened). This after-call work (ACW) takes Navkar Bank's agents 75 seconds per call on average. AI can draft the note and suggest the code in a few seconds. But a wrong note can cause a wrong refund, a broken promise or a bad report. In this lesson you will learn a good summary template, a simple code list, and how to check a draft against the call.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 310" role="img" aria-label="Workflow: the call transcript goes to an AI draft of the summary and code, then the agent checks it, then it is saved to the CRM with the agent's name. Below, four checks before saving: facts match the system, only real promises, no secrets or opinions, and the right code. A made-up pilot cut after-call work from 75 to 52 seconds, but 12 of 200 drafts had a factual error.">
            <defs><marker id="vc6a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="10" y="20" width="170" height="75" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="95" y="50" font-weight="700">Call transcript</text><text x="95" y="72" font-size="11" fill="#9b99b8">after the call ends</text>
              <rect x="200" y="20" width="170" height="75" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="285" y="50" font-weight="700">AI draft</text><text x="285" y="72" font-size="11" fill="#9b99b8">summary + code</text>
              <rect x="390" y="20" width="170" height="75" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="475" y="50" font-weight="700">Agent checks</text><text x="475" y="72" font-size="11" fill="#9b99b8">reads, edits, confirms</text>
              <rect x="580" y="20" width="170" height="75" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="665" y="50" font-weight="700">Saved to CRM</text><text x="665" y="72" font-size="11" fill="#9b99b8">under agent's name</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#vc6a)"><line x1="181" y1="57" x2="197" y2="57"/><line x1="371" y1="57" x2="387" y2="57"/><line x1="561" y1="57" x2="577" y2="57"/></g>
              <text x="380" y="128" font-size="12" fill="#9b99b8">Four checks before you save</text>
              <rect x="10" y="142" width="170" height="70" rx="10" fill="#27274e" stroke="#22d3ee"/>
              <text x="95" y="170" font-size="12" font-weight="700">Facts match system</text><text x="95" y="192" font-size="11" fill="#9b99b8">amounts, dates, refs</text>
              <rect x="200" y="142" width="170" height="70" rx="10" fill="#27274e" stroke="#22d3ee"/>
              <text x="285" y="170" font-size="12" font-weight="700">Only real promises</text><text x="285" y="192" font-size="11" fill="#9b99b8">check the audio</text>
              <rect x="390" y="142" width="170" height="70" rx="10" fill="#27274e" stroke="#22d3ee"/>
              <text x="475" y="170" font-size="12" font-weight="700">No secrets, opinions</text><text x="475" y="192" font-size="11" fill="#9b99b8">no DOB, OTP or PIN</text>
              <rect x="580" y="142" width="170" height="70" rx="10" fill="#27274e" stroke="#22d3ee"/>
              <text x="665" y="170" font-size="12" font-weight="700">Right code</text><text x="665" y="192" font-size="11" fill="#9b99b8">reason + outcome</text>
              <rect x="10" y="236" width="740" height="62" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="380" y="261" font-size="12">Pilot (made-up): after-call work fell from 75 s to 52 s.</text>
              <text x="380" y="282" font-size="12" fill="#f9a8d4">But 12 of 200 drafts had a factual error, and agents missed 5 of them.</text>
            </g>
          </svg>
          <figcaption>AI writes the first draft. The agent checks four things and owns the saved note.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>A summary template that everyone uses</h3>
          <p>A free-text note like "cust called abt fee, done" helps nobody. The next agent cannot tell what was agreed. A fixed template makes notes quick to read and easy for AI to fill. Here is Navkar Bank's template:</p>
          <pre><code>Reason for call:     one line, in the customer's words
        Verification:        Passed / Basic (card block only) / Failed
        Customer said:       key facts only (amount, date, what went wrong)
        Agent did:           checks made and actions taken
        Promises made:       exactly what the agent said, or "None"
        Reference numbers:   copied from the bank's system, not the transcript
        Next step and owner: who does what, and by when
        Disposition code:    reason + outcome
        Follow-up needed:    Yes / No</code></pre>
          <p>Three rules keep notes safe. First, write <strong>Passed</strong> or <strong>Failed</strong> for verification, never the answers (such as the date of birth). Second, never write an OTP, PIN, CVV or full card number. Third, write facts, not opinions. "Customer was rude" is an opinion. "Customer is unhappy and may close the card" is a fact the next agent can use.</p>
        </div>
        <div class="lc-card">
          <h3>Disposition codes: reason + outcome</h3>
          <p>Navkar Bank uses two short parts for each code. The first part is the call reason. The second part is the outcome. For example, <code>UPI-RAISED</code> means "failed UPI payment, complaint raised".</p>
          <table class="lc-table">
            <thead><tr><th>Reason codes</th><th>Outcome codes</th></tr></thead>
            <tbody>
              <tr><td><code>BAL</code> balance, statement, transaction query</td><td><code>SOLVED</code> solved on this call</td></tr>
              <tr><td><code>UPI</code> failed UPI or IMPS payment</td><td><code>RAISED</code> request or complaint raised, with a reference number</td></tr>
              <tr><td><code>CARD-LOST</code> lost or stolen card</td><td><code>TRANSFER</code> passed to another team</td></tr>
              <tr><td><code>CARD-HELP</code> declined card, PIN help, delivery</td><td><code>SELF</code> sent to the app or a branch (for example, a mobile number change)</td></tr>
              <tr><td><code>APP</code> app or net banking login</td><td><code>NOT-VERIFIED</code> general information only</td></tr>
              <tr><td><code>LOAN</code>, <code>KYC</code>, <code>FRAUD</code>, <code>CHG</code> (charges and other)</td><td></td></tr>
            </tbody>
          </table>
          <p>Codes feed the call reason report and the FCR report. So a wrong code quietly breaks the numbers Sneha uses to plan staff. AI can suggest a code from the transcript. The agent confirms it. Each month, Arvind checks a sample. In a made-up check of 200 calls, the AI's code matched Arvind's code in 176 calls. That is 176 ÷ 200 = 88%. The other 24 were mostly "SOLVED" when the right outcome was "RAISED".</p>
        </div>
        <div class="lc-card">
          <h3>Worked example: check the draft against the call</h3>
          <p>Here is part of a made-up call. Agent Pooja speaks with Mr Anil Joshi, a customer in London.</p>
          <pre><code>[00:00:10] Customer: You took 590 rupees for the debit card fee.
                   I was told this card is free for life.
        [00:01:40] Agent: Thank you, Mr Joshi, your details are confirmed.
                   I can see a ₹590 debit card annual fee on 12 September.
        [00:02:05] Customer: This is wrong. Reverse it today, or I will
                   close my card.
        [00:02:20] Agent: I understand this is annoying. I cannot reverse
                   it myself, but I have raised a fee review request.
                   The number is SR-58213.
        [00:02:40] Agent: The charges team replies within 7 working days.
                   You will get an SMS with their decision.
        [00:03:05] Customer: If they say no, I want to close the card.
        [00:03:12] Agent: I have noted that. Please remember, Navkar Bank
                   will never ask for your OTP, PIN or CVV.</code></pre>
          <p>The AI tool gave this draft:</p>
          <pre><code>Reason for call:   Complaint about ₹950 debit card annual fee
        Verification:      Passed (DOB 14/03/1968, account ending 4417)
        Customer said:     Was told the card is free for life.
                           Customer was rude and threatened the agent.
        Agent did:         Confirmed fee debited on 12 September.
                           Raised fee review request SR-58213.
        Promises made:     Fee will be reversed within 7 working days.
        Next step:         Charges team to decide. SMS to customer.
        Disposition code:  CHG-SOLVED</code></pre>
          <p>It looks neat. But it has five problems. Find them in the activity below. Notice the most dangerous one: a promise the agent never made. If Mr Joshi calls again, the next agent may read "fee will be reversed" and repeat it. That is how a wrong note turns into a broken promise.</p>
          <p>How to check fast: jump to the timestamps for money, dates and promises. Check amounts and reference numbers in the bank's system. Remove anything you cannot find in the call.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: keep it or fix it?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each line of the AI draft for Mr Joshi's call.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="keep" data-label="Keep as written"></div>
              <div data-sorter-target="bucket" data-bucket="fix" data-label="Fix or remove"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="fix" data-why="The call says ₹590 at 00:10 and 01:40. Check the amount in the bank's system too.">Complaint about ₹950 debit card annual fee</li>
              <li data-bucket="fix" data-why="Write only &quot;Passed&quot;. Verification answers do not belong in notes.">Verification: Passed (DOB 14/03/1968, account ending 4417)</li>
              <li data-bucket="fix" data-why="This is an opinion. The fact is that he is unhappy and may close the card if the review says no.">Customer was rude and threatened the agent</li>
              <li data-bucket="keep" data-why="Pooja read this from the system at 01:40.">Confirmed fee debited on 12 September</li>
              <li data-bucket="keep" data-why="Pooja said this at 02:20. Check that the SR number matches the system.">Raised fee review request SR-58213</li>
              <li data-bucket="fix" data-why="Pooja never promised a reversal. She said the team will reply with a decision within 7 working days.">Promises made: fee will be reversed within 7 working days</li>
              <li data-bucket="fix" data-why="The problem is not solved yet. A request was raised, so the code is CHG-RAISED.">Disposition code: CHG-SOLVED</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to write an after-call summary from a made-up call. Then check each line against the call, the way an agent would.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a note-taking assistant for a bank call centre. Use simple English.

        Write an after-call summary of the made-up call below. Use this template:
        Reason for call / Verification (Passed, Basic or Failed only) / Customer said / Agent did / Promises made / Reference numbers / Next step and owner / Disposition code (reason + outcome) / Follow-up needed (Yes or No)

        Rules:
        - Use only facts said in the call. If something is unclear, write [CHECK].
        - Promises made: copy only what the agent actually said. If none, write "None".
        - No opinions about the customer. No date of birth, OTP, PIN or full account numbers.
        - Outcome codes: SOLVED, RAISED, TRANSFER, SELF, NOT-VERIFIED.
        - Keep the summary under 90 words.

        Call: [Customer says ₹1,200 was debited twice for one electricity bill paid by UPI on 3 September. Agent Rohit checks and sees two debits of ₹1,200 on 3 September. He raises dispute SR-60771 and says the bank will send an SMS update within 5 working days. The customer asks if the money will come back. Rohit says the team will confirm after checking.]

        After the summary, list each promise next to the words in the call that it came from.</pre>
            <ul class="ai-try-checks">
              <li>The amount (₹1,200) and date (3 September) match the call exactly.</li>
              <li>The only promise is an SMS update within 5 working days. There is no promise of a refund.</li>
              <li>The code is UPI-RAISED, not UPI-SOLVED.</li>
              <li>Nothing appears that was not in the call, such as a UTR number or a reason for the double debit.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> An AI summary saves time only if the agent checks it. Use one template and one code list for everyone. Check money, dates, reference numbers and promises against the call before you save. The note carries the agent's name, so the agent owns it.
        </div>
      HTML
      starter_code: nil
    },
    7 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-cs">Customer Support</div>
          <h1 class="lc-title">Agent Assist During Calls</h1>
        </div>
        <p class="lc-lead"><strong>Agent assist</strong> is AI that listens to a live call and helps the agent on screen. It can find the right help article, suggest what to say, tick off a checklist and warn about risks. Used well, it cuts hold time and helps new agents give correct answers. Used badly, it can push an agent to say something wrong or unsafe. In this lesson you will learn what agent assist does and how to set its rules. You will also learn when an agent should ignore it.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 330" role="img" aria-label="A mock-up of an agent's screen during a live call. On the left, the live transcript: the customer's card was declined and she gave an OTP to someone who called. On the right, AI assist shows a help article with its review date, a fraud alert, and an unsafe suggested reply to ask for the OTP, marked ignore. At the bottom, a checklist.">
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <rect x="10" y="10" width="740" height="305" rx="12" fill="#27274e" stroke="#3b82f6"/>
              <text x="30" y="36" font-weight="700" fill="#67e8f9">Agent desktop · Pooja · live call 03:12</text>
              <text x="730" y="36" font-size="11.5" fill="#6ee7b7" text-anchor="end">Caller verified</text>
              <rect x="25" y="50" width="345" height="200" rx="10" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="40" y="74" font-weight="700">Live transcript</text>
              <text x="40" y="100" font-size="11.5">Customer: My card was declined at a shop.</text>
              <text x="40" y="124" font-size="11.5">Agent: I can check that for you.</text>
              <text x="40" y="148" font-size="11.5">Customer: Yesterday someone from the bank</text>
              <text x="40" y="166" font-size="11.5">called to unblock my card...</text>
              <text x="40" y="190" font-size="11.5">Customer: ...and I gave him the OTP.</text>
              <text x="40" y="228" font-size="11" fill="#9b99b8">Words heard by the AI may be wrong.</text>
              <rect x="390" y="50" width="345" height="200" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="405" y="74" font-weight="700">AI assist</text>
              <rect x="405" y="86" width="315" height="44" rx="8" fill="#27274e" stroke="#10b981"/>
              <text x="417" y="104" font-size="11.5">Article: Card declined, common reasons</text>
              <text x="417" y="121" font-size="10.5" fill="#9b99b8">KB-CARD-07 · last reviewed Aug 2026</text>
              <rect x="405" y="138" width="315" height="44" rx="8" fill="#27274e" stroke="#ec4899"/>
              <text x="417" y="156" font-size="11.5" fill="#f9a8d4">Alert: OTP shared. Possible fraud.</text>
              <text x="417" y="173" font-size="10.5" fill="#9b99b8">Block card · fraud team · 1930</text>
              <rect x="405" y="190" width="315" height="48" rx="8" fill="#27274e" stroke="#f59e0b"/>
              <text x="417" y="208" font-size="11.5">Suggested reply (from an old article):</text>
              <text x="417" y="227" font-size="11" fill="#f9a8d4">"Please read out the OTP you got."  ✗ Ignore</text>
              <rect x="25" y="262" width="710" height="40" rx="8" fill="#1f1f44" stroke="#9b99b8"/>
              <text x="380" y="287" font-size="12" text-anchor="middle">Checklist:  ✓ Verified    ☐ Card blocked    ☐ Fraud reference    ☐ Safety line said</text>
            </g>
          </svg>
          <figcaption>Agent assist shows articles, alerts and suggested lines. The agent decides what to use, and ignores anything that breaks a rule.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>What agent assist can do</h3>
          <table class="lc-table">
            <thead><tr><th>Feature</th><th>What the agent sees</th><th>Navkar Bank example</th><th>What can go wrong</th></tr></thead>
            <tbody>
              <tr><td><strong>Knowledge lookup</strong></td><td>The help article that fits what the customer just said</td><td>"Failed UPI debit: steps and timelines"</td><td>The article is old or wrong</td></tr>
              <tr><td><strong>Suggested replies</strong></td><td>A line the agent could say next</td><td>"I can raise a complaint now and give you a reference number."</td><td>The line promises too much</td></tr>
              <tr><td><strong>Live checklist</strong></td><td>Steps that tick off as the call goes on</td><td>Verified, reference number given, safety line said</td><td>A misheard word ticks the wrong box</td></tr>
              <tr><td><strong>Alerts</strong></td><td>A warning when risky words come up</td><td>"Customer mentioned OTP"</td><td>False alarms, or a missed alarm</td></tr>
              <tr><td><strong>Form filling</strong></td><td>A complaint form filled from the call</td><td>Amount, date and UTR filled in</td><td>Wrong numbers from the transcript</td></tr>
            </tbody>
          </table>
          <p>Agent assist reads a live transcript. So every transcript error can flow into its suggestions. Suggestions also arrive a few seconds after the words. The agent must keep listening to the customer, not only reading the screen. Features differ by tool, so check your tool's current help pages.</p>
        </div>
        <div class="lc-card">
          <h3>Good suggestions need a good knowledge base</h3>
          <p>Agent assist is only as good as the articles behind it. If an article is out of date, the AI will suggest out-of-date answers, fast and with confidence. So Navkar Bank gives every article an owner and a "last reviewed" date. The AI shows the article name and date next to each suggestion.</p>
          <p>Team leads often help write the rules for the assist tool. Compare these two versions:</p>
          <pre><code>Weak rules:
        Help agents answer customer questions.

        Better rules:
        Answer only from the approved Navkar articles provided.
        Show the article ID and "last reviewed" date with every answer.
        If no article fits, or two articles disagree, say:
        "No approved answer. Ask your supervisor."
        Never suggest asking for an OTP, PIN, CVV, full card number
        or net banking password.
        Never suggest a refund, fee waiver or date that the article
        does not state.
        If the customer mentions a scam, a shared OTP or money they
        did not send, show the fraud alert first.</code></pre>
          <p>RBI sets <strong>turnaround times</strong> (TAT: the time limit to reverse a failed payment) and compensation when a bank is late. The article must follow RBI's current rules. The article owner checks those rules, not the AI.</p>
        </div>
        <div class="lc-card">
          <h3>When agents should ignore the AI</h3>
          <table class="lc-table">
            <thead><tr><th>Situation</th><th>What the agent does</th></tr></thead>
            <tbody>
              <tr><td>The suggestion breaks a safety rule, such as asking for an OTP</td><td>Ignore it. Flag it. Tell the supervisor the same day.</td></tr>
              <tr><td>The suggestion promises a refund, waiver or date</td><td>Say only what the approved article or system confirms</td></tr>
              <tr><td>The AI seems to have misheard (wrong amount, wrong reason)</td><td>Ask the customer again. Trust the customer and the system, not the transcript.</td></tr>
              <tr><td>The customer is upset, scared or grieving</td><td>Put the screen aside. Listen. Skip offers and sales suggestions.</td></tr>
              <tr><td>The article is older than its review date, or has no date</td><td>Check with a senior agent or the supervisor before using it</td></tr>
            </tbody>
          </table>
          <p>Ask agents to rate suggestions with a simple "useful" or "not useful" button. In one made-up week, Navkar's agents rated 1,000 suggestions: 640 useful, 250 not relevant and 110 wrong. Of the 110 wrong ones, 70 came from out-of-date articles and 40 from transcript errors. So the first fix was the articles, not the agents.</p>
          <p>Never score agents on how often they use AI suggestions. Using a bad suggestion is worse than ignoring a good one.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: a live call with agent assist</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="result" data-label="Live transcript">Mrs Fernandes: "My debit card was declined at a shop this morning."</li>
              <li data-kind="answer" data-label="AI assist">Shows article KB-CARD-07, "Card declined: common reasons", last reviewed August 2026. The checklist shows "Verify the customer" first.</li>
              <li data-kind="check" data-label="Pooja">She checks full name and date of birth, then the last 4 digits of the account and the registered city. She opens the article.</li>
              <li data-kind="result" data-label="Live transcript">"Yesterday someone from the bank called to unblock my card. I gave him the OTP."</li>
              <li data-kind="answer" data-label="AI alert">"OTP shared. Possible fraud. Block the card now and follow the fraud steps."</li>
              <li data-kind="warn" data-label="Unsafe suggestion">A suggested reply says: "Please read out the OTP you received so I can check it." It came from an old article. Pooja ignores it. Navkar never asks for an OTP.</li>
              <li data-kind="tool" data-label="Card system">With Mrs Fernandes's agreement, Pooja blocks the card. She sees two recent transactions the customer does not recognise.</li>
              <li data-kind="check" data-label="Pooja and Sneha">Pooja transfers the call to the fraud team on the priority line. She tells the customer she can also report the fraud on the national cyber fraud helpline, 1930, or at cybercrime.gov.in. She flags the bad suggestion. Sneha has the old article removed that day.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to turn a help article into a one-screen "assist card" for live calls. Look for the gaps it finds in the article.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a knowledge editor for a bank call centre. Use simple English.

        Turn the article below into a one-screen "assist card" that an agent can read during a live call.

        Article (made up): [Failed UPI payment, money debited. Most failed UPI debits are reversed automatically. If the money has not come back within the time in RBI's current rules, raise a complaint with the UTR number, amount and date. Give the customer the complaint number. Tell them updates come by SMS. Do not promise a refund date. Never ask for the UPI PIN or OTP.]

        Make the card with these parts:
        1. Checklist: 5 to 7 short steps, in call order
        2. Questions to ask the customer (no more than 4)
        3. Two lines the agent can say, in plain English
        4. "Do not say" list (3 items)
        5. When to stop and escalate (3 triggers)
        6. Source: article name and "last reviewed [date]"

        Rules: use only facts in the article. If an agent would need something the article does not give (for example the exact number of days), write "GAP:" and the question for the article owner. Keep the card under 180 words.</pre>
            <ul class="ai-try-checks">
              <li>The card adds no facts that are not in the article, such as a number of days.</li>
              <li>Missing facts are listed as GAP questions for the article owner.</li>
              <li>Nothing asks for a UPI PIN, OTP or full card number.</li>
              <li>The escalation triggers include signs of fraud or a scam.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Agent assist is a helper, not a boss. Its answers are only as good as your articles and your transcripts. Keep articles owned and dated. Teach agents to ignore any suggestion that breaks a rule, and thank them for reporting it.
        </div>
      HTML
      starter_code: nil
    },
    8 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-cs">Customer Support</div>
          <h1 class="lc-title">Call Scripts and Talk Tracks</h1>
        </div>
        <p class="lc-lead">A <strong>script</strong> gives agents the exact words to say. A <strong>talk track</strong> gives them the key points and lets them use their own words. Good calls use both. Safety and legal lines need exact words. The rest of the call sounds better when the agent talks like a person. In this lesson you will learn the parts of a call and how to write empathy lines that sound real. You will also use AI to draft scripts in several languages.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 240" role="img" aria-label="A call in six parts: open, verify, listen, solve, recap and close. Verify and close use exact words. Open and recap have fixed items said in the agent's own words. Listen and solve use the agent's own words.">
            <defs><marker id="vc8a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="380" y="24" font-weight="700" fill="#67e8f9">A call in six parts</text>
              <rect x="10" y="40" width="110" height="70" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="65" y="68" font-weight="700">1 Open</text><text x="65" y="90" font-size="11" fill="#9b99b8">greet + name</text>
              <rect x="136" y="40" width="110" height="70" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="191" y="68" font-weight="700">2 Verify</text><text x="191" y="90" font-size="11" fill="#9b99b8">ID checks</text>
              <rect x="262" y="40" width="110" height="70" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="317" y="68" font-weight="700">3 Listen</text><text x="317" y="90" font-size="11" fill="#9b99b8">ask + confirm</text>
              <rect x="388" y="40" width="110" height="70" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="443" y="68" font-weight="700">4 Solve</text><text x="443" y="90" font-size="11" fill="#9b99b8">article facts</text>
              <rect x="514" y="40" width="110" height="70" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="569" y="68" font-weight="700">5 Recap</text><text x="569" y="90" font-size="11" fill="#9b99b8">ref + timeline</text>
              <rect x="640" y="40" width="110" height="70" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="695" y="68" font-weight="700">6 Close</text><text x="695" y="90" font-size="11" fill="#9b99b8">safety line</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#vc8a)"><line x1="121" y1="75" x2="133" y2="75"/><line x1="247" y1="75" x2="259" y2="75"/><line x1="373" y1="75" x2="385" y2="75"/><line x1="499" y1="75" x2="511" y2="75"/><line x1="625" y1="75" x2="637" y2="75"/></g>
              <g font-size="11">
                <rect x="10" y="122" width="110" height="24" rx="12" fill="#27274e" stroke="#22d3ee"/><text x="65" y="138">Fixed items</text>
                <rect x="136" y="122" width="110" height="24" rx="12" fill="#27274e" stroke="#f59e0b"/><text x="191" y="138">Exact words</text>
                <rect x="262" y="122" width="110" height="24" rx="12" fill="#27274e" stroke="#10b981"/><text x="317" y="138">Own words</text>
                <rect x="388" y="122" width="110" height="24" rx="12" fill="#27274e" stroke="#10b981"/><text x="443" y="138">Own words</text>
                <rect x="514" y="122" width="110" height="24" rx="12" fill="#27274e" stroke="#22d3ee"/><text x="569" y="138">Fixed items</text>
                <rect x="640" y="122" width="110" height="24" rx="12" fill="#27274e" stroke="#f59e0b"/><text x="695" y="138">Exact words</text>
              </g>
              <rect x="10" y="165" width="740" height="62" rx="10" fill="#27274e" stroke="#8b5cf6"/>
              <text x="380" y="190" font-size="12">Exact words: the same on every call (safety, verification, legal lines).</text>
              <text x="380" y="212" font-size="12">Fixed items: must be there, in your words. Own words: key points only.</text>
            </g>
          </svg>
          <figcaption>Script the parts where mistakes are costly. Use a talk track where the customer needs a real conversation.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Script or talk track?</h3>
          <table class="lc-table">
            <thead><tr><th>Part of the call</th><th>Use</th><th>Why</th></tr></thead>
            <tbody>
              <tr><td>Recording notice</td><td>Exact words (played by the IVR)</td><td>Legal and compliance teams approve it</td></tr>
              <tr><td>Opening</td><td>Fixed items: bank name, your name, an offer to help</td><td>Customers must know who they are talking to</td></tr>
              <tr><td>Verification</td><td>Exact words</td><td>Every customer gets the same fair, safe checks</td></tr>
              <tr><td>Listening and questions</td><td>Talk track</td><td>Every problem is different</td></tr>
              <tr><td>Empathy</td><td>Own words, with good examples</td><td>Copied lines sound fake after the tenth call</td></tr>
              <tr><td>Solving</td><td>Talk track + facts from the help article</td><td>Facts must be right. The words can be natural.</td></tr>
              <tr><td>Recap and close</td><td>Fixed items + the exact safety line</td><td>The customer must leave with a reference number and a clear next step</td></tr>
            </tbody>
          </table>
          <p>Too much script makes agents sound like robots. Customers then trust them less. Too little script makes important lines go missing. Arvind's QA checks usually find the same missing items: the safety line and the timeline.</p>
        </div>
        <div class="lc-card">
          <h3>Example: talk track for a failed UPI payment</h3>
          <pre><code>OPEN (fixed items)
        "Good morning, Navkar Bank, this is Pooja. How can I help you today?"

        VERIFY (exact words)
        "Before I open your account, I need to check a few details.
        Please tell me your full name and date of birth."
        "Thank you. Now please tell me any two of these: the last 4 digits
        of your account number, your registered city, the rough amount of
        your last transaction, or your registered email address."
        "Please do not tell me any OTP, PIN or CVV. We never ask for them."

        LISTEN AND CONFIRM (own words)
        Ask: amount, date and time, UPI app used, who it was sent to.
        Confirm: "So ₹4,000 left your account on 8 September, but your
        landlord has not received it. Is that right?"

        EMPATHY (own words, name the real problem)
        "Rent money going missing is stressful. Let me check it now."

        SOLVE (facts from the help article only)
        Check the transaction. Raise a complaint if the article says so.
        Give no refund date unless the article or system confirms it.

        RECAP AND CLOSE (fixed items + exact safety line)
        Complaint number, what happens next, when they will hear from us,
        and what to do if they do not. "Is there anything else I can help with?"
        "Please remember, Navkar Bank will never ask for your OTP, PIN or CVV."</code></pre>
          <p>Time your scripts. People speak about 2 to 2.5 words a second on the phone. That is a rough guide, not a rule. At 2.5 words a second, a 60-word opening takes about 24 seconds. Long openings make callers impatient before the real talk starts.</p>
        </div>
        <div class="lc-card">
          <h3>Empathy lines that sound real</h3>
          <p><strong>Empathy</strong> means showing that you understand how the customer feels. The best empathy lines name the customer's real problem. Then they move to action.</p>
          <table class="lc-table">
            <thead><tr><th>Weak</th><th>Better</th><th>Why it is better</th></tr></thead>
            <tbody>
              <tr><td>"I understand your frustration." (said on every call)</td><td>"Paying a fee you were told you would never pay is annoying. Let me look at it."</td><td>It names the real problem</td></tr>
              <tr><td>"Please calm down, sir."</td><td>"I can hear this has upset you. I want to sort it out. Can I ask two quick questions?"</td><td>It does not tell the customer how to feel</td></tr>
              <tr><td>"That is the bank's policy."</td><td>"I cannot remove the fee myself, but I can ask the charges team to review it today."</td><td>It says what you <em>can</em> do</td></tr>
              <tr><td>"Sorry for the inconvenience caused."</td><td>"I'm sorry your payment did not reach your landlord."</td><td>It is specific, not a stock phrase</td></tr>
            </tbody>
          </table>
          <p>Navkar's callers use Marathi, Hindi and English, and often mix them. So each script needs all three languages. AI can draft the translations. But AI translations often sound too formal, like a government letter. Callers speak everyday language, with English words like "payment" and "account". Here are two draft lines. <strong>Both must be checked by a native speaker before use.</strong></p>
          <pre><code>Hindi [native speaker to check]:
        आपको हुई परेशानी के लिए मुझे खेद है। मैं अभी इसे देखती हूँ।
        (I am sorry for the trouble. I will look at it now.)

        Marathi [native speaker to check]:
        तुम्हाला झालेल्या त्रासाबद्दल मला खेद वाटतो. मी लगेच तपासते.
        (I am sorry for the trouble. I will check it right away.)</code></pre>
          <p>Both lines use the female verb form ("देखती", "तपासते"). Male agents need "देखता" and "तपासतो". AI tools often miss this, so ask for both forms.</p>
        </div>
        <div class="lc-card">
          <h3>Writing scripts with AI</h3>
          <pre><code>Weak prompt:
        Write a call centre script for UPI problems.

        Better prompt:
        Write a talk track for Navkar Bank agents for this call type:
        a failed UPI payment where money was debited. Use six parts:
        Open, Verify, Listen, Solve, Recap, Close. Mark each part
        EXACT WORDS or OWN WORDS. Use our verification checks: [list].
        Use only facts from this help article: [article]. Add a
        "Do not say" list. Keep the opening under 25 words.</code></pre>
          <p>Then test the draft before agents use it:</p>
          <ul class="lc-list">
            <li><strong>Read it aloud and time it.</strong> Cut any line that is hard to say.</li>
            <li><strong>Role-play it</strong> with two agents, in each language.</li>
            <li><strong>Check every fact</strong> against the help article. AI may add timelines or fees that are not there.</li>
            <li><strong>Get approval</strong> from compliance for the exact-words parts.</li>
            <li><strong>Add a version number and date.</strong> Review it after a month, using QA findings.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Activity: build the call in order</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put the parts of Pooja's failed UPI call in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Greets the customer with the bank name and her own name</li>
              <li data-order="2">Checks full name and date of birth, then two more details</li>
              <li data-order="3">Says: "Please do not tell me any OTP, PIN or CVV."</li>
              <li data-order="4">Asks questions and repeats the problem back to confirm it</li>
              <li data-order="5">Names the customer's worry, then checks the transaction</li>
              <li data-order="6">Raises a complaint and gives the reference number</li>
              <li data-order="7">Recaps the next step and timeline, then says the safety line and closes</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to write a talk track for one call type. Check which parts use exact words and whether any facts were invented.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a call centre trainer who writes clear talk tracks. Use simple English that a new agent can say out loud.

        Write a talk track for this call type: [a customer's debit card was declined at a shop, and they do not know why].
        Centre: [Navkar Bank helpline, London. Callers speak Marathi, Hindi and English.]

        Use six parts: Open, Verify, Listen and confirm, Empathy, Solve, Recap and close.
        - Mark each part EXACT WORDS or OWN WORDS.
        - Verify (EXACT WORDS): full name and date of birth, then any two of: last 4 digits of the account number, registered city, rough amount of the last transaction, registered email.
        - Include this line exactly: "Please do not tell me any OTP, PIN or CVV. We never ask for them."
        - Give 3 empathy lines that name the customer's real problem. Do not use "sorry for the inconvenience".
        - For Solve, list the questions to ask and the likely reasons to check. Write [CHECK ARTICLE] wherever a fact must come from our help articles.
        - Add a "Do not say" list with 4 items.
        - Keep the opening under 25 words.

        Finally, give the Open and one Empathy line in [Hindi], in both male and female forms, marked "for a native speaker to check".</pre>
            <ul class="ai-try-checks">
              <li>Verification and the safety line are marked EXACT WORDS and match your rules.</li>
              <li>No fees, limits or timelines are stated without [CHECK ARTICLE].</li>
              <li>The empathy lines are specific, not stock phrases.</li>
              <li>The Hindi lines are marked for a native speaker to check.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Script the lines where a mistake is costly: verification, safety and legal wording. Give agents a talk track for the rest, so they sound like people. AI is fast at drafting and translating scripts, but people must time them, test them and check every fact and translation.
        </div>
      HTML
      starter_code: nil
    },
    9 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-cs">Customer Support</div>
          <h1 class="lc-title">Handling Difficult Calls</h1>
        </div>
        <p class="lc-lead">Some calls are hard. A customer may be angry about a fee, scared after a fraud, or confused and under pressure from a scammer. These calls matter most, because money and trust are at risk. In this lesson you will learn a simple way to calm an angry caller. You will learn to spot a <strong>vulnerable customer</strong> (a person who is more likely to be harmed because of their situation). You will also learn when to escalate, and how AI can help without taking over.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 320" role="img" aria-label="Decision flow for a difficult call. First ask: is money or safety at risk right now? If yes, take urgent steps: block the card, involve the fraud team, follow the safety plan. If no, de-escalate: listen, acknowledge, ask, explain and agree the next step. Then ask: is the customer calm and the issue solved? If yes, recap and close with clear notes. If no, escalate with a warm transfer. For abusive language, give one calm warning, then end the call as the policy says.">
            <defs><marker id="vc9a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="10" y="20" width="150" height="50" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="85" y="42" font-weight="700">Difficult call</text><text x="85" y="60" font-size="11" fill="#9b99b8">angry, scared, upset</text>
              <rect x="200" y="20" width="230" height="50" rx="25" fill="#27274e" stroke="#f59e0b"/>
              <text x="315" y="42" font-size="12.5" font-weight="700">Money or safety at risk</text><text x="315" y="60" font-size="12">right now?</text>
              <rect x="480" y="15" width="270" height="60" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="615" y="38" font-weight="700" fill="#f9a8d4">Urgent steps now</text><text x="615" y="58" font-size="11" fill="#9b99b8">block card · fraud team · safety plan</text>
              <rect x="200" y="120" width="230" height="70" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="315" y="144" font-weight="700">De-escalate</text>
              <text x="315" y="164" font-size="11" fill="#9b99b8">listen, acknowledge, ask,</text>
              <text x="315" y="180" font-size="11" fill="#9b99b8">explain, agree next step</text>
              <rect x="480" y="112" width="270" height="78" rx="10" fill="#27274e" stroke="#9b99b8" stroke-dasharray="5 4"/>
              <text x="615" y="136" font-size="12" font-weight="700">Abusive language?</text>
              <text x="615" y="156" font-size="11" fill="#9b99b8">one calm warning, then end the</text>
              <text x="615" y="173" font-size="11" fill="#9b99b8">call as policy says, and log it</text>
              <rect x="200" y="230" width="230" height="50" rx="25" fill="#27274e" stroke="#f59e0b"/>
              <text x="315" y="260" font-size="12.5" font-weight="700">Calm and solved?</text>
              <rect x="10" y="230" width="150" height="50" rx="10" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="85" y="252" font-weight="700">Recap + close</text><text x="85" y="270" font-size="11" fill="#9b99b8">clear, neutral notes</text>
              <rect x="480" y="225" width="270" height="60" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="615" y="248" font-weight="700">Escalate</text><text x="615" y="268" font-size="11" fill="#9b99b8">warm transfer: supervisor or complaints</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#vc9a)">
                <line x1="161" y1="45" x2="197" y2="45"/>
                <line x1="431" y1="45" x2="477" y2="45"/>
                <line x1="315" y1="71" x2="315" y2="117"/>
                <line x1="315" y1="191" x2="315" y2="227"/>
                <line x1="199" y1="255" x2="163" y2="255"/>
                <line x1="431" y1="255" x2="477" y2="255"/>
              </g>
              <g font-size="11" fill="#9b99b8">
                <text x="454" y="33">Yes</text><text x="332" y="99" text-anchor="start">No</text>
                <text x="181" y="243">Yes</text><text x="454" y="243">No</text>
              </g>
              <text x="380" y="310" font-size="11.5" fill="#9b99b8">AI can flag and draft notes. The agent and supervisor make the decisions.</text>
            </g>
          </svg>
          <figcaption>Check for urgent risk first. Then calm the caller, solve what you can, and escalate early when you cannot.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Calming an angry caller in five steps</h3>
          <p><strong>De-escalation</strong> means lowering the anger in a conversation so you can solve the problem. Here are five steps, using Mr Joshi's fee complaint as the example. He is calling for the second time.</p>
          <table class="lc-table">
            <thead><tr><th>Step</th><th>What you do</th><th>Example line</th></tr></thead>
            <tbody>
              <tr><td>1. Let them finish</td><td>Do not interrupt. Take notes. Silence is fine.</td><td>(listen)</td></tr>
              <tr><td>2. Acknowledge</td><td>Name the feeling and the fact</td><td>"You were told the card was free, and now there is a ₹590 charge. And this is your second call. I understand why you are upset."</td></tr>
              <tr><td>3. Ask</td><td>Ask short questions to get the facts</td><td>"Do you remember when you opened the account, and who told you about the card?"</td></tr>
              <tr><td>4. Explain</td><td>Say what you <em>can</em> do, not only what you cannot</td><td>"I cannot reverse it myself. I can see your review request SR-58213, and I will mark it as a repeat call."</td></tr>
              <tr><td>5. Agree the next step</td><td>Give a clear timeline you can confirm</td><td>"The charges team replies within 7 working days of the request. You will get an SMS."</td></tr>
            </tbody>
          </table>
          <p>Keep your voice low and slow. Do not argue, and do not blame the customer or another team. Never promise a result you cannot confirm just to end the call. The customer will call again, angrier.</p>
          <p><strong>Abuse is different from anger.</strong> Navkar's made-up policy allows one calm warning. If the abuse continues after that, the agent may end the call, log it and tell the supervisor. A calm warning sounds like this: "I want to help you, but I cannot continue if you use that language."</p>
        </div>
        <div class="lc-card">
          <h3>Spotting vulnerable customers</h3>
          <p>Anyone can be vulnerable for a time: after a death in the family, during illness, in money trouble, or while a scammer is pressuring them. Look for these signs:</p>
          <table class="lc-table">
            <thead><tr><th>Sign</th><th>What the agent does</th></tr></thead>
            <tbody>
              <tr><td>Confused, repeats questions, forgets what was said</td><td>Slow down. Use short sentences. Check they understood. Offer a callback at a better time.</td></tr>
              <tr><td>Someone in the background tells them what to say, or they rush to move money</td><td>This may be a scam or pressure. Ask gently if they are alone. Pause any change. Bring in the fraud team.</td></tr>
              <tr><td>Mentions "police", "CBI", "customs" or a "digital arrest" on a video call</td><td>This is a known scam pattern. There is no "digital arrest" in Indian law. Real officials do not arrest people on video calls or ask them to move money. Follow the fraud steps. Mention the 1930 cyber fraud helpline and cybercrime.gov.in.</td></tr>
              <tr><td>The account holder has died</td><td>Use gentle words. Follow the bank's process for families. Share no account details without proper authority.</td></tr>
              <tr><td>Mentions harming themselves</td><td>Stay calm and listen. Bring in the supervisor. Follow the centre's safety procedure. In India, Tele-MANAS (14416 or 1-800-891-4416) is a free national mental health helpline. Check the number is current.</td></tr>
            </tbody>
          </table>
          <p>A family member may help on the call only if the customer agrees. That person still gets no account access without proper authority. Record only what helps the next agent, for example "prefers slow, clear speech; callback preferred". Treat these notes as sensitive personal data. Follow your bank's privacy policy.</p>
        </div>
        <div class="lc-card">
          <h3>When and how to escalate</h3>
          <table class="lc-table">
            <thead><tr><th>Trigger</th><th>Where it goes</th></tr></thead>
            <tbody>
              <tr><td>Money is being taken right now, or an OTP was shared</td><td>Block the card at once. Priority transfer to the fraud team.</td></tr>
              <tr><td>The customer asks for a manager after you have tried to help</td><td>Supervisor. In Navkar's made-up rule, a supervisor joins within 2 minutes, or calls back the same working day.</td></tr>
              <tr><td>A formal complaint, or a decision you cannot make</td><td>Complaints team, with a reference number</td></tr>
              <tr><td>Threats of harm to anyone</td><td>Supervisor at once. Follow the safety procedure.</td></tr>
            </tbody>
          </table>
          <p>Use a <strong>warm transfer</strong>: tell the next person the story before you connect the customer. Then the customer does not have to repeat everything.</p>
          <p>Customers have the right to escalate outside the bank. If the bank does not reply in time (usually 30 days), or they are unhappy with the reply, they can complain to the RBI Ombudsman. Complaints go online through RBI's complaint portal (cms.rbi.org.in). A new scheme, RB-IOS 2026, applies to complaints made from 1 July 2026. Agents must never discourage this. Check RBI's current rules for the details. This is general information, not legal advice.</p>
        </div>
        <div class="lc-card">
          <h3>How AI can help, and where it must not</h3>
          <ul class="lc-list">
            <li><strong>Live alerts:</strong> some tools flag raised voices or words like "fraud" or "police". Treat these as hints only. A loud voice may be normal for that caller or that language. Never use an alert to label a customer.</li>
            <li><strong>Escalation notes:</strong> AI can draft the handover note, so the supervisor gets the full story. The agent checks it first.</li>
            <li><strong>Practice:</strong> AI can play an angry customer, so agents can practise safely. The Try It below does this.</li>
            <li><strong>Not for AI:</strong> deciding that a customer is vulnerable, handling a scared fraud victim by bot, or deciding a complaint.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Activity: which route?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Choose the right route for each Navkar Bank call.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="agent" data-label="Agent de-escalates and solves"></div>
              <div data-sorter-target="bucket" data-bucket="escalate" data-label="Supervisor or complaints team"></div>
              <div data-sorter-target="bucket" data-bucket="urgent" data-label="Urgent: fraud or safety steps now"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="agent" data-why="He is angry but not abusive. Listen, acknowledge and explain the review process.">A customer is shouting about a ₹590 card fee, but he answers your questions</li>
              <li data-bucket="urgent" data-why="This is the &quot;digital arrest&quot; scam pattern. Protect the money and bring in the fraud team now.">A 72-year-old says a "police officer" on a video call told him to move his savings to a "safe account"</li>
              <li data-bucket="urgent" data-why="Money is at risk right now. Block the card first, then transfer to the fraud team.">A caller's card was stolen 10 minutes ago, and she is getting debit SMS messages</li>
              <li data-bucket="escalate" data-why="You have tried to help. A supervisor can take over with a warm transfer.">After two clear explanations, a customer asks to speak to a manager</li>
              <li data-bucket="urgent" data-why="Safety comes first. Stay with the caller, bring in the supervisor and follow the safety procedure.">A customer in debt says, "I do not want to live any more"</li>
              <li data-bucket="agent" data-why="Slow down, check understanding and offer a callback in her language. This is not an emergency.">An elderly customer is confused about her statement and asks the same question three times</li>
              <li data-bucket="escalate" data-why="The customer wants a formal complaint and a decision the agent cannot make. Raise it with a reference number.">A customer wants a formal complaint about repeated wrong charges and asks for compensation</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Practise a difficult call with AI playing the customer. Type your replies as the agent, then type END to get feedback.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">Let's practise a difficult call. You play the customer. I am the agent at [Navkar Bank's helpline].

        Your character: [Mr Anil Joshi, 58, a retired teacher in London. A ₹590 debit card annual fee was taken from his account. He was told the card was free for life. This is his second call.] He is angry but not abusive. He calms down only if the agent listens, says sorry for the right thing and gives a clear next step with a timeline.

        Rules for you:
        - Stay in character. Reply in 1 to 3 short sentences, then wait for me.
        - Get calmer or angrier based on what I say.
        - If I promise a refund I cannot confirm, push me for an exact date.
        - If I ask for an OTP, PIN or CVV, say: "Why would the bank ask me for that?"

        When I type END, step out of character and give feedback:
        1. Two things I did well
        2. Three things to improve, each with a better line I could say
        3. Did I verify the customer without asking for secret details?
        4. Did I promise anything I could not confirm?

        Start now with your first line as the customer.</pre>
            <ul class="ai-try-checks">
              <li>The AI stays in character and gives short replies.</li>
              <li>The customer reacts to how you speak, not only to what you offer.</li>
              <li>The feedback quotes your actual lines, not general advice.</li>
              <li>Any promise you could not confirm is pointed out.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> On a difficult call, check for urgent risk first: money being taken, a scam in progress, or a person in danger. Then listen, acknowledge and give a next step you can keep. Escalate early and warmly. AI can help you practise and write notes, but people handle the people.
        </div>
      HTML
      starter_code: nil
    },
    10 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-cs">Customer Support</div>
          <h1 class="lc-title">IVR and Call Flows</h1>
        </div>
        <p class="lc-lead">The <strong>IVR</strong> (interactive voice response) is the first thing every caller meets. A good IVR sends callers to the right agent fast and solves simple tasks by itself. A bad one wastes time, sends calls to the wrong team and makes people hang up. In this lesson you will learn how to design a short menu, read IVR data, set up routing and offer callbacks. You will use AI to review and redesign Navkar Bank's menu.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 345" role="img" aria-label="Navkar Bank's IVR tree. Greeting and recording notice, then a language menu: 1 Marathi, 2 Hindi, 3 English. Then the main menu: 1 block card, 2 fraud, 3 balance, 4 payments, 5 all other with 43 percent of calls, and 0 for an agent at any time. A proposed sub-menu splits option 5 into card help, app login, loans, KYC and 0 for an agent. Callers who would wait over 3 minutes can press 1 for a callback.">
            <defs><marker id="vc10a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12.5" fill="#e2e0f0" text-anchor="middle">
              <rect x="190" y="12" width="380" height="34" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="380" y="34">Greeting + recording notice (every call)</text>
              <line x1="380" y1="47" x2="380" y2="60" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#vc10a)"/>
              <rect x="190" y="63" width="380" height="34" rx="8" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="380" y="85">Language: 1 Marathi · 2 Hindi · 3 English</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none">
                <line x1="380" y1="98" x2="380" y2="115"/>
                <line x1="67.5" y1="115" x2="692.5" y2="115"/>
              </g>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#vc10a)">
                <line x1="67.5" y1="115" x2="67.5" y2="128"/><line x1="192.5" y1="115" x2="192.5" y2="128"/><line x1="317.5" y1="115" x2="317.5" y2="128"/>
                <line x1="442.5" y1="115" x2="442.5" y2="128"/><line x1="567.5" y1="115" x2="567.5" y2="128"/><line x1="692.5" y1="115" x2="692.5" y2="128"/>
              </g>
              <rect x="10" y="131" width="115" height="62" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="67.5" y="155" font-weight="700">1 Block card</text><text x="67.5" y="176" font-size="10.5" fill="#9b99b8">priority · 24x7</text>
              <rect x="135" y="131" width="115" height="62" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="192.5" y="155" font-weight="700">2 Fraud</text><text x="192.5" y="176" font-size="10.5" fill="#9b99b8">priority queue</text>
              <rect x="260" y="131" width="115" height="62" rx="8" fill="#1f1f44" stroke="#10b981"/>
              <text x="317.5" y="155" font-weight="700">3 Balance</text><text x="317.5" y="176" font-size="10.5" fill="#9b99b8">self-service first</text>
              <rect x="385" y="131" width="115" height="62" rx="8" fill="#1f1f44" stroke="#10b981"/>
              <text x="442.5" y="155" font-weight="700">4 Payments</text><text x="442.5" y="176" font-size="10.5" fill="#9b99b8">UPI, IMPS</text>
              <rect x="510" y="131" width="115" height="62" rx="8" fill="#1f1f44" stroke="#ec4899"/>
              <text x="567.5" y="155" font-weight="700">5 All other</text><text x="567.5" y="176" font-size="10.5" fill="#f9a8d4">43% of calls</text>
              <rect x="635" y="131" width="115" height="62" rx="8" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="692.5" y="155" font-weight="700">0 Agent</text><text x="692.5" y="176" font-size="10.5" fill="#9b99b8">any time</text>
              <line x1="567.5" y1="194" x2="567.5" y2="226" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#vc10a)"/>
              <rect x="200" y="229" width="550" height="76" rx="10" fill="#27274e" stroke="#ec4899"/>
              <text x="475" y="250" font-weight="700" fill="#f9a8d4">Proposed sub-menu for option 5</text>
              <text x="475" y="272" font-size="11.5">1 Card declined, PIN, delivery · 2 App or net banking login</text>
              <text x="475" y="292" font-size="11.5">3 Loans and EMI · 4 KYC and address · 0 Agent</text>
              <rect x="10" y="229" width="175" height="76" rx="10" fill="#27274e" stroke="#22d3ee"/>
              <text x="97.5" y="250" font-weight="700">Callback</text>
              <text x="97.5" y="270" font-size="11" fill="#9b99b8">wait over 3 minutes?</text>
              <text x="97.5" y="288" font-size="11" fill="#9b99b8">press 1, same language</text>
              <text x="380" y="332" font-size="11.5" fill="#9b99b8">9 repeats the menu. 0 reaches an agent from any menu.</text>
            </g>
          </svg>
          <figcaption>Navkar Bank's IVR today, with a proposed fix for the crowded option 5.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Menu design rules</h3>
          <p>Callers must hold every option in their head while they listen. So short menus work best. Here are the main rules, with weak and better examples:</p>
          <table class="lc-table">
            <thead><tr><th>Rule</th><th>Weak</th><th>Better</th></tr></thead>
            <tbody>
              <tr><td>Few options</td><td>9 options in one menu</td><td>No more than 5, plus 0 for an agent and 9 to repeat</td></tr>
              <tr><td>Reason first, then the key</td><td>"Press 1 for lost cards"</td><td>"For a lost or stolen card, press 1"</td></tr>
              <tr><td>Urgent first</td><td>Card blocking is option 6</td><td>Lost cards and fraud are options 1 and 2</td></tr>
              <tr><td>Plain words</td><td>"For NEFT or IMPS grievance redressal"</td><td>"For a payment that failed"</td></tr>
              <tr><td>Nothing before the menu</td><td>A 20-second loan offer before the options</td><td>Greeting, recording notice, then the menu</td></tr>
              <tr><td>Always a way out</td><td>No agent option in the main menu</td><td>"To speak to an agent, press 0" works in every menu</td></tr>
              <tr><td>Kind time-outs</td><td>No key pressed, so the call ends</td><td>Repeat the menu once, then send the caller to an agent</td></tr>
            </tbody>
          </table>
          <p>Record every prompt in all three languages, with a native speaker. Ask them to use everyday words. A menu in formal Hindi or Marathi can confuse callers as much as English jargon.</p>
        </div>
        <div class="lc-card">
          <h3>Read the IVR data before you change it</h3>
          <p>Here is a made-up month at Navkar. About 60,000 calls entered the IVR. About 12,000 were finished in self-service, such as a balance check or an automatic card block. About 3,000 callers hung up in the IVR. So 45,000 calls reached agents (60,000 − 12,000 − 3,000).</p>
          <table class="lc-table">
            <thead><tr><th>Main menu option</th><th>Calls reaching agents</th><th>Share</th></tr></thead>
            <tbody>
              <tr><td>1 Lost or stolen card</td><td>5,400</td><td>12%</td></tr>
              <tr><td>2 Fraud or unknown transaction</td><td>3,150</td><td>7%</td></tr>
              <tr><td>3 Balance and transactions</td><td>9,900</td><td>22%</td></tr>
              <tr><td>4 UPI or payment problems</td><td>7,200</td><td>16%</td></tr>
              <tr><td>5 Cards, loans and all other services</td><td>19,350</td><td>43%</td></tr>
              <tr><td><strong>Total</strong></td><td><strong>45,000</strong></td><td><strong>100%</strong></td></tr>
            </tbody>
          </table>
          <p>These counts come from call reason codes, grouped under the option that should handle each reason. Option 5 is a <strong>catch-all</strong>: one option for many different problems. It holds 19,350 ÷ 45,000 = 43% of calls. Five different reasons land in one general queue. About 20% of option 5 calls (3,870 a month) are then transferred to another team. Each transfer adds waiting time and makes the customer repeat their story.</p>
          <p>Useful IVR measures:</p>
          <ul class="lc-list">
            <li><strong>Self-service rate:</strong> calls finished in the IVR ÷ calls entering it. Here 12,000 ÷ 60,000 = 20%. A high rate is good only if callers really got their answer and did not call back.</li>
            <li><strong>IVR hang-up rate:</strong> 3,000 ÷ 60,000 = 5%. Listen to where in the menu people hang up. These hang-ups are not part of the 6.0% abandonment rate. That rate counts only callers who hung up while waiting for an agent (2,700 of 45,000).</li>
            <li><strong>Transfer rate by option:</strong> a high rate means the option is unclear or too broad.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Routing and callbacks</h3>
          <p><strong>Routing</strong> decides which agent gets each call. Good routing at Navkar uses:</p>
          <ul class="lc-list">
            <li><strong>Language + topic skills:</strong> a Marathi UPI call goes to an agent who speaks Marathi and knows UPI.</li>
            <li><strong>Priority:</strong> lost cards and fraud jump ahead of balance queries.</li>
            <li><strong>Overflow:</strong> if the Marathi queue is long, the call goes to agents who have Marathi as a second language.</li>
            <li><strong>Screen pop:</strong> the agent's screen shows the language and option the caller chose. It also shows if the call is from the registered mobile. The customer does not repeat it.</li>
          </ul>
          <p>Remember: a call from the registered number is a signal, not proof. Caller ID can be faked. Agents still verify.</p>
          <p>A <strong>callback</strong> lets a caller keep their place without waiting on the line. Navkar offers one when the wait is over 3 minutes. Here is a rough what-if. Last month 2,700 callers hung up while waiting. Say 900 of them take a callback instead. Abandonment would fall to 1,800 ÷ 45,000 = 4.0%. The callbacks add 900 × 7.5 minutes = 6,750 minutes, or 112.5 agent hours. Agents already have spare time outside the peaks, because occupancy is 75%. So callbacks move work from busy times to quiet times. This is an estimate to test, not a promise.</p>
          <p>Fraudsters copy bank callbacks. So Navkar's callback agent says the bank name and the customer's request first. The agent verifies the customer as usual and never asks for an OTP, PIN or CVV. Customers who are unsure can hang up and call the official helpline number.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: Sneha redesigns option 5 with AI</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Sneha asks">"Here are our main menu options and monthly calls per option. Option 5 has 19,350 calls, and 20% are transferred. Suggest a better menu. No customer data is included."</li>
              <li data-kind="answer" data-label="AI replies">It suggests a main menu with 8 options, one for each call reason, plus 0 for an agent.</li>
              <li data-kind="warn" data-label="Catch the problem">8 options is too many to remember, in any language. Sneha keeps the main menu at 5 options plus 0 and 9. She asks for a sub-menu under option 5 instead.</li>
              <li data-kind="tool" data-label="Google Sheets">Sneha splits option 5 by call reason: card declined or PIN 4,500; app login 4,500; loans and EMI 4,050; KYC and address 3,600; charges and other 2,700.</li>
              <li data-kind="result" data-label="Sheet shows">The five parts add up to 19,350. Each sub-option gets its own trained queue. Charges and other calls go to option 0.</li>
              <li data-kind="user" data-label="Sneha asks again">"Write the sub-menu prompts in English, under 25 words each. For KYC changes, say that address and mobile changes are done in the app or at a branch."</li>
              <li data-kind="check" data-label="Before launch">Native speakers record the Marathi and Hindi prompts. Sneha tests the new menu for 4 weeks. She tracks the transfer rate, IVR hang-ups, abandonment and repeat calls.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to review an IVR menu using real call volumes. Check its maths and its menu length before you use any idea.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an IVR designer for call centres. Use simple English.

        Review our IVR and suggest a better version.
        Centre: [Navkar Bank helpline, London]. Languages: [Marathi, Hindi, English].
        Current main menu: 1 Lost or stolen card (24x7 block), 2 Fraud or unknown transaction, 3 Balance and recent transactions, 4 UPI or payment problems, 5 Cards, loans and all other services, 0 Agent, 9 Repeat.
        Calls a month reaching agents, by option: [1: 5,400. 2: 3,150. 3: 9,900. 4: 7,200. 5: 19,350.] About 20% of option 5 calls are transferred to another team.

        Rules:
        - Keep lost card and fraud as options 1 and 2. They are urgent.
        - No more than 5 options in any menu, plus 0 for an agent and 9 to repeat.
        - Say the reason before the key: "For a lost card, press 1."
        - Keep each menu prompt under 25 words.
        - No step may ask for an OTP, PIN, CVV or full card number.

        Give me:
        1. A new menu tree, with the English wording for each prompt.
        2. The share of calls for each option, with your working.
        3. A callback offer for waits over 3 minutes.
        4. Four things to measure in a 4-week test.</pre>
            <ul class="ai-try-checks">
              <li>No menu has more than 5 options, and 0 works in every menu.</li>
              <li>The shares add up to 100%. With the default numbers, option 5 is 43%.</li>
              <li>Lost card and fraud stay as options 1 and 2.</li>
              <li>No prompt asks for an OTP, PIN, CVV or full card number.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A good IVR is short, urgent-first and always offers a person. Use your call data to find the options that are too broad, then fix those first. Let AI draft menus and prompts, but check the maths, the length and the translations, and test every change with real callers.
        </div>
      HTML
      starter_code: nil
    },
    11 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-cs">Customer Support</div>
          <h1 class="lc-title">Voice Bots</h1>
        </div>
        <p class="lc-lead">A <strong>voice bot</strong> is a computer program that talks with callers. It listens with speech-to-text, decides what to say, and speaks with a computer voice. A good voice bot answers simple questions fast, at any hour. A bad one traps callers, gives wrong answers and makes promises the bank cannot keep. In this lesson you will learn how to choose what a bot should handle. You will also learn to design a conversation for the ear, and to hand callers to a person smoothly.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 310" role="img" aria-label="A voice bot call: the bot greets and says it is a bot, asks the reason, checks if the reason is in scope, checks identity, then answers and reads facts back. If the reason is out of scope, or the caller says agent, mentions fraud, is upset or needs a money decision, the bot makes a warm handover to an agent who sees the reason and what was checked.">
            <defs><marker id="vc11a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="380" y="24" font-weight="700" fill="#67e8f9">A voice bot call at Navkar Bank</text>
              <rect x="10" y="40" width="130" height="70" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="75" y="68" font-weight="700">Bot greets</text><text x="75" y="90" font-size="11" fill="#9b99b8">says it is a bot</text>
              <rect x="160" y="40" width="130" height="70" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="225" y="68" font-weight="700">Asks reason</text><text x="225" y="90" font-size="11" fill="#9b99b8">one question</text>
              <rect x="310" y="40" width="130" height="70" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="375" y="68" font-weight="700">In scope?</text><text x="375" y="90" font-size="11" fill="#9b99b8">yes: continue</text>
              <rect x="460" y="40" width="130" height="70" rx="10" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="525" y="68" font-weight="700">Check identity</text><text x="525" y="90" font-size="11" fill="#9b99b8">bank's rules</text>
              <rect x="610" y="40" width="130" height="70" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="675" y="68" font-weight="700">Answer</text><text x="675" y="90" font-size="11" fill="#9b99b8">reads facts back</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#vc11a)"><line x1="141" y1="75" x2="157" y2="75"/><line x1="291" y1="75" x2="307" y2="75"/><line x1="441" y1="75" x2="457" y2="75"/><line x1="591" y1="75" x2="607" y2="75"/><line x1="385" y1="111" x2="470" y2="163"/><line x1="371" y1="228" x2="387" y2="228"/></g>
              <text x="448" y="134" font-size="11" fill="#fcd34d">no</text>
              <rect x="10" y="165" width="360" height="130" rx="10" fill="#27274e" stroke="#ec4899"/>
              <text x="190" y="190" font-weight="700" fill="#f9a8d4">Hand over at once when the caller</text>
              <text x="190" y="214" font-size="11.5">says "agent" or presses 0</text>
              <text x="190" y="235" font-size="11.5">mentions fraud, a scam or an unknown debit</text>
              <text x="190" y="256" font-size="11.5">is upset, or is not understood twice</text>
              <text x="190" y="277" font-size="11.5">needs a money decision or a complaint</text>
              <rect x="390" y="165" width="360" height="130" rx="10" fill="#27274e" stroke="#10b981"/>
              <text x="570" y="190" font-weight="700" fill="#6ee7b7">Warm handover to an agent</text>
              <text x="570" y="214" font-size="11.5">Same language queue, right skill</text>
              <text x="570" y="235" font-size="11.5">Agent screen shows the reason,</text>
              <text x="570" y="256" font-size="11.5">what the bot checked and what it said</text>
              <text x="570" y="277" font-size="11.5">The caller does not repeat the story</text>
            </g>
          </svg>
          <figcaption>A voice bot handles a small set of simple tasks. Everything else goes to a person, with the details passed along.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>What a voice bot can handle</h3>
          <p>An <strong>IVR</strong> (interactive voice response) menu asks callers to press keys. A voice bot lets them speak in their own words, such as "What was the ₹4,999 debit on the 3rd?". Many new voice bots use an AI language model to understand the caller. That makes them flexible. It also means they can make things up. So a bank bot must answer only from the bank's systems and approved help articles.</p>
          <p>Start from the call reasons table, not from the bot's features. For each reason, ask two questions. Can the bot get the facts from a bank system? What is the harm if it gets it wrong?</p>
          <table class="lc-table">
            <thead><tr><th>Call reason (per month)</th><th>Bot role</th><th>Why</th></tr></thead>
            <tbody>
              <tr><td>Balance, statement and transactions (9,900)</td><td><strong>Bot finishes</strong> (pilot)</td><td>Facts come from the core banking system. Low harm after an identity check.</td></tr>
              <tr><td>Failed UPI or IMPS payment (7,200)</td><td><strong>Bot finishes status checks</strong> (pilot)</td><td>The bot reads the payment status. Overdue or disputed cases go to an agent.</td></tr>
              <tr><td>Card lost or stolen (5,400)</td><td>Bot blocks the card</td><td>Blocking protects the customer and needs only a basic check. Any unknown transaction goes to the fraud queue.</td></tr>
              <tr><td>Card declined, PIN help, delivery (4,500)</td><td>Bot starts, then hands over</td><td>It can give delivery status and explain PIN reset in the app. Declines need an agent to look.</td></tr>
              <tr><td>App login problems (4,500)</td><td>Bot starts, then hands over</td><td>It can give standard steps. It must never ask for the MPIN or password.</td></tr>
              <tr><td>Loan and EMI (4,050)</td><td>Bot starts, then hands over</td><td>It can tell the next EMI date and amount. Payment trouble needs a caring person.</td></tr>
              <tr><td>KYC, address or mobile change (3,600)</td><td>Bot explains the process only</td><td>These changes are never done on a call. The bot explains the app or branch steps.</td></tr>
              <tr><td>Suspected fraud (3,150)</td><td><strong>People only</strong></td><td>The bot moves the caller to the priority fraud queue at once.</td></tr>
              <tr><td>Charges complaints and other (2,700)</td><td><strong>People only</strong></td><td>These need money decisions and a logged complaint.</td></tr>
            </tbody>
          </table>
          <p>Sneha picks two reasons for the first pilot: balance queries and UPI status checks. Together they are 9,900 + 7,200 = 17,100 calls, or 38% of 45,000. Why do balance calls reach agents when the IVR already reads out the balance? Because callers ask about a single debit or want a statement, and the keypad menu cannot handle that.</p>
          <p>For identity, the bot uses the IVR's current check (a call from the registered mobile number). It adds one more step that the security team approves, such as a confirmation in the Navkar app. Caller ID alone is not proof. It can be faked.</p>
        </div>
        <div class="lc-card">
          <h3>Designing a conversation for the ear</h3>
          <p>People cannot scroll back on a phone call. They forget long lists. So a voice conversation needs different rules from a chat or a website.</p>
          <ul class="lc-list">
            <li><strong>Say it is a bot, first.</strong> The very first sentence says the caller is talking to an automated assistant.</li>
            <li><strong>Short turns.</strong> One idea and one question at a time.</li>
            <li><strong>Read facts back.</strong> "I heard ₹2,500. Is that right?" Speech-to-text often mishears numbers.</li>
            <li><strong>Mask numbers.</strong> Say only the last 4 digits of an account or card.</li>
            <li><strong>Let callers interrupt.</strong> This is called <strong>barge-in</strong>. Regular callers do not want to hear the whole message.</li>
            <li><strong>Plan for silence and confusion.</strong> If the bot hears nothing or does not understand, it asks once more in simpler words. After two failed tries, it hands over.</li>
            <li><strong>Handle mixed languages.</strong> Callers mix Hindi, Marathi and English. Test the bot on real mixed speech, not only on clean sentences.</li>
            <li><strong>Never promise what the system does not show.</strong> No refund promises and no dates unless the system shows that date.</li>
          </ul>
          <pre><code>Weak greeting:
        Welcome to Navkar Bank's virtual assistant powered by advanced AI.
        You can ask me about balances, statements, UPI payments, cards,
        loans, EMIs, KYC and much more. Please tell me in detail how I
        can help you today.

        Better greeting:
        Hello, this is Navkar Bank's automated assistant. I can check
        your balance or a UPI payment. To speak to a person, say "agent"
        or press 0. What do you need today?

        Hindi version (a native speaker must check):
        नमस्ते, मैं नवकार बैंक का ऑटोमेटेड असिस्टेंट हूँ।
        किसी व्यक्ति से बात करने के लिए कभी भी 0 दबाएँ।</code></pre>
          <p>The weak greeting is long, lists too many topics and hides the way to a person. The better one is honest, short and gives the exit in the first 10 seconds.</p>
        </div>
        <div class="lc-card">
          <h3>Handover, and how to measure the bot</h3>
          <p>Here is a made-up pilot call. The caller speaks Hindi mixed with English. The bot replies in Hindi, shown here in English. A native speaker should check the Hindi lines.</p>
          <pre><code>Bot:    Hello, this is Navkar Bank's automated assistant. [...]
        Caller: Maine UPI se payment kiya but amount debit ho gaya.
        Bot:    I am sorry about that. I will check it. I have sent a
                request to your Navkar app. Please tap "Yes, it's me".
        Caller: Done.
        Bot:    Thank you. I see a failed UPI payment of ₹2,500 on
                14 September to Sharma Kirana. Is that the one?
        Caller: Haan.
        Bot:    Our system shows the money is being returned. The
                expected credit date is 16 September. You will get
                an SMS when it arrives.
        Caller: Agent se baat karni hai.
        Bot:    Sure. I am connecting you to a Hindi-speaking agent.
                I will pass on what we discussed.

        Agent screen after handover:
        Reason: failed UPI ₹2,500, 14 Sep, Sharma Kirana
        Identity: registered mobile + app confirmation passed
        Bot said: expected credit date 16 Sep (from system)
        Caller asked for an agent. No complaint raised yet.</code></pre>
          <p>This is a <strong>warm handover</strong>: the agent gets the context, so the caller does not repeat everything. A <strong>cold handover</strong> just drops the caller in a queue.</p>
          <p>Measure the bot with clear definitions:</p>
          <ul class="lc-list">
            <li><strong>Containment rate:</strong> the share of in-scope calls the bot finishes with no person involved. Navkar counts a call only if there is no repeat call on the same issue within 7 days.</li>
            <li><strong>Handover rate</strong> and the reasons for handover.</li>
            <li><strong>Results by language.</strong> Marathi speech-to-text was weakest in testing, so watch Marathi calls closely.</li>
            <li><strong>Complaints about the bot</strong> and callers who hang up inside it.</li>
          </ul>
          <p>Sneha's made-up pilot target: the bot finishes 40% of balance calls (3,960) and 25% of UPI calls (1,800). That is 5,760 calls, or 12.8% of the 45,000 calls a month. It is a target to test, not a promise.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: what should the bot do?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Callers say these things to Navkar Bank's voice bot. Sort each one.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="finish" data-label="Bot can finish"></div>
              <div data-sorter-target="bucket" data-bucket="handover" data-label="Bot starts, then hands over"></div>
              <div data-sorter-target="bucket" data-bucket="people" data-label="Straight to a person"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="finish" data-why="The fact comes from the bank's system and the caller passed the identity check.">"What is my balance?" (the caller passed the app check)</li>
              <li data-bucket="finish" data-why="The bot reads the payment status from the system. It gives a date only if the system shows one.">"My UPI payment failed yesterday. Has the money come back?"</li>
              <li data-bucket="finish" data-why="Blocking protects the customer and needs only a basic check. The bot then offers an agent for a new card.">"I lost my wallet. Please block my debit card."</li>
              <li data-bucket="handover" data-why="The expected date has passed. The bot collects the details, then an agent raises a complaint.">"My UPI refund was due last week and still has not come."</li>
              <li data-bucket="handover" data-why="The bot can check the card status first. Finding the cause needs an agent.">"My new card is declined at every shop."</li>
              <li data-bucket="people" data-why="A possible fraud needs fast action by a trained person in the priority queue.">"There is a ₹40,000 debit that I did not make."</li>
              <li data-bucket="people" data-why="A customer in money trouble may be vulnerable. They need a caring person who can explain options.">"I lost my job and cannot pay this month's EMI."</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to scope a voice bot from a call reasons table and write one short bot dialogue with a handover. Then check it against the rules.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a conversation designer for a bank voice bot. Use simple English.

        Helpline: [Navkar Bank, London]. Languages: [Marathi, Hindi, English].
        Calls per month: [Balance and transactions 9,900; Failed UPI 7,200; Lost card 5,400; Card declined or PIN 4,500; App login 4,500; Loan and EMI 4,050; KYC or mobile change 3,600; Suspected fraud 3,150; Charges complaints 2,700]

        Rules:
        - The bot says it is automated in its first sentence.
        - The caller can say "agent" or press 0 at any time.
        - Fraud, unknown debits, charges complaints and money decisions go straight to a person.
        - The bot never asks for OTP, PIN, CVV, full card number or passwords.
        - The bot never promises a refund, date or approval unless the bank's system shows it.

        Tasks:
        1. Table: call reason, bot role (Bot finishes / Starts then hands over / People only), why.
        2. Pick 2 reasons for a first pilot and explain why.
        3. Write a short voice dialogue for [a failed UPI payment status check], ending in a handover.
        4. List what the agent screen shows after handover.
        5. List 5 test calls, including one that tries to trick the bot.</pre>
            <ul class="ai-try-checks">
              <li>Fraud and charges complaints are "People only".</li>
              <li>The bot says it is automated in its first sentence.</li>
              <li>The dialogue uses short turns and reads numbers back.</li>
              <li>No date or refund is promised unless it comes from the system.</li>
              <li>The tests cover all your languages and mixed-language speech.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Choose a bot's scope from your call reasons, not from the vendor's feature list. Let the bot finish only simple tasks it can check in a system. Hand everything else to a person with the context, and make the way out easy.
        </div>
      HTML
      starter_code: nil
    },
    12 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-cs">Customer Support</div>
          <h1 class="lc-title">Quality Assurance with AI</h1>
        </div>
        <p class="lc-lead"><strong>QA</strong> (quality assurance) means checking calls against a standard, so customers get correct and safe help. Today most centres can only listen to a tiny sample of calls. AI can score every call from its transcript. But AI scores can be wrong, and unfair to some languages. In this lesson you will build a QA form, see how AI scoring works, and learn how people check the AI. You will also run a <strong>calibration</strong> session: people and the AI score the same calls and compare.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 335" role="img" aria-label="All 42,300 answered calls go to AI scoring with quotes as evidence. The results split into three paths: people check all 180 critical flags, people re-score a random sample of 120 calls, and a person decides on agent disputes. All paths lead to a final score by the QA team, then coaching. Every month, people and the AI score the same 10 calls in a calibration session.">
            <defs><marker id="vc12a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="380" y="22" font-weight="700" fill="#67e8f9">AI scores every call. People own the final score.</text>
              <rect x="10" y="108" width="130" height="70" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="75" y="136" font-weight="700">All calls</text><text x="75" y="158" font-size="11" fill="#9b99b8">42,300 answered</text>
              <rect x="160" y="108" width="130" height="70" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="225" y="136" font-weight="700">AI scores</text><text x="225" y="158" font-size="11" fill="#9b99b8">with quotes</text>
              <rect x="320" y="40" width="190" height="55" rx="10" fill="#27274e" stroke="#ec4899"/>
              <text x="415" y="63" font-weight="700">Critical flags</text><text x="415" y="82" font-size="11" fill="#9b99b8">people check all 180</text>
              <rect x="320" y="115" width="190" height="55" rx="10" fill="#27274e" stroke="#f59e0b"/>
              <text x="415" y="138" font-weight="700">Random sample</text><text x="415" y="157" font-size="11" fill="#9b99b8">people re-score 120</text>
              <rect x="320" y="190" width="190" height="55" rx="10" fill="#27274e" stroke="#22d3ee"/>
              <text x="415" y="213" font-weight="700">Agent disputes</text><text x="415" y="232" font-size="11" fill="#9b99b8">a person decides</text>
              <rect x="535" y="108" width="105" height="70" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="587" y="136" font-weight="700">Final score</text><text x="587" y="158" font-size="11" fill="#9b99b8">by QA team</text>
              <rect x="660" y="108" width="90" height="70" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="705" y="136" font-weight="700">Coaching</text><text x="705" y="158" font-size="11" fill="#9b99b8">one skill</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#vc12a)"><line x1="141" y1="143" x2="157" y2="143"/><line x1="291" y1="138" x2="317" y2="70"/><line x1="291" y1="143" x2="317" y2="143"/><line x1="291" y1="148" x2="317" y2="215"/><line x1="511" y1="70" x2="532" y2="135"/><line x1="511" y1="143" x2="532" y2="143"/><line x1="511" y1="215" x2="532" y2="151"/><line x1="641" y1="143" x2="657" y2="143"/></g>
              <rect x="10" y="265" width="740" height="55" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="380" y="287" font-weight="700" fill="#c4b5fd">Every month: calibration</text>
              <text x="380" y="307" font-size="12">People and the AI score the same 10 calls, compare, and agree the rules.</text>
            </g>
          </svg>
          <figcaption>AI widens QA from a few hundred calls to every call. People check the flags, a sample and every dispute, and they set the final score.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The QA form</h3>
          <p>A <strong>QA form</strong> (also called a scorecard) lists what a good call looks like, with points for each item. Everyone must use the same form, the same way. Here is Navkar Bank's form (made up):</p>
          <table class="lc-table">
            <thead><tr><th>Item</th><th>Points</th><th>What good looks like</th></tr></thead>
            <tbody>
              <tr><td>Greeting</td><td>5</td><td>Bank name, agent name, offer to help</td></tr>
              <tr><td>Verification</td><td>20</td><td>Full name + date of birth + two more checks from the approved list</td></tr>
              <tr><td>Understanding the issue</td><td>15</td><td>Asks clear questions and repeats the problem back</td></tr>
              <tr><td>Correct information and fix</td><td>25</td><td>Follows the process and gives correct facts</td></tr>
              <tr><td>Hold and transfer</td><td>10</td><td>Asks before a hold. Checks back on holds over 1 minute.</td></tr>
              <tr><td>Empathy and tone</td><td>10</td><td>Acknowledges the problem, polite and patient words</td></tr>
              <tr><td>Closing, no false promises</td><td>10</td><td>Clear next steps. Only dates the system shows.</td></tr>
              <tr><td>Notes and disposition code</td><td>5</td><td>Notes match the call. The right code is chosen.</td></tr>
              <tr><td><strong>Total</strong></td><td><strong>100</strong></td><td></td></tr>
            </tbody>
          </table>
          <p><strong>Critical fails</strong> are mistakes so serious that the call is marked "critical fail", whatever the score. At Navkar they are: asking for an OTP, PIN or CVV; sharing account details before verification; and promising a refund or date the system does not show.</p>
          <p>Notice that "Empathy and tone" is scored from the words the agent used. It is not scored from a machine's guess about feelings. The safe use lesson explains why.</p>
        </div>
        <div class="lc-card">
          <h3>How AI scoring works, and why people check it</h3>
          <p>An AI QA tool reads each transcript and scores each item. A good tool also gives <strong>evidence</strong>: a short quote and a timestamp for each score. It should say "not sure" when the transcript is unclear. Some items, such as the disposition code, may not be in the transcript at all.</p>
          <pre><code>Weak scoring instruction:
        Score this call out of 100 for quality.

        Better scoring instruction:
        Score this call with the attached QA form. For each item give:
        points, a quote with its timestamp, and "Not sure" if the
        transcript is unclear. Never guess. List any critical fail
        separately. If an item cannot be judged from the transcript,
        write "Cannot score" and leave it for a person.</code></pre>
          <p>Arvind's team can check about 300 calls a month. In a made-up pilot month, they used that time differently:</p>
          <table class="lc-table">
            <thead><tr><th>People check</th><th>Calls</th><th>What they found</th></tr></thead>
            <tbody>
              <tr><td>Every AI critical flag</td><td>180</td><td>117 were real (65%). 63 were false alarms (35%).</td></tr>
              <tr><td>A random sample of AI-scored calls</td><td>120</td><td>Used to measure how close the AI is to people</td></tr>
              <tr><td><strong>Total</strong></td><td><strong>300</strong></td><td>Same team time as before</td></tr>
            </tbody>
          </table>
          <p>Check the maths: 117 + 63 = 180, and 117 ÷ 180 = 65%. More than a third of the flags were wrong. So a flag is a reason to listen, not a verdict.</p>
          <p>Navkar's rules for AI scores:</p>
          <ul class="lc-list">
            <li>An AI score is a draft. The QA team sets the final score.</li>
            <li>No rating, pay or warning decision uses an AI score alone.</li>
            <li>Agents can see the evidence and dispute any score.</li>
            <li>Only the bank's approved tool is used. Real transcripts never go into public AI tools.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Calibration: a worked example</h3>
          <p>In <strong>calibration</strong>, several reviewers score the same calls on their own. Then they compare scores and agree how to use the form. At Navkar, Arvind and two QA analysts, Meera and Kiran, scored 10 calls. The AI scored them too. Here are 5 of the calls:</p>
          <table class="lc-table">
            <thead><tr><th>Call</th><th>Arvind</th><th>Meera</th><th>Kiran</th><th>People average</th><th>AI</th><th>AI gap</th></tr></thead>
            <tbody>
              <tr><td>C1 English, balance</td><td>86</td><td>84</td><td>88</td><td>86</td><td>85</td><td>-1</td></tr>
              <tr><td>C2 Marathi, UPI</td><td>78</td><td>80</td><td>76</td><td>78</td><td>58</td><td><strong>-20</strong></td></tr>
              <tr><td>C3 Hindi, card block</td><td>90</td><td>75</td><td>87</td><td>84</td><td>88</td><td>+4</td></tr>
              <tr><td>C4 English, charges</td><td>64</td><td>66</td><td>62</td><td>64</td><td>80</td><td><strong>+16</strong></td></tr>
              <tr><td>C5 Marathi, EMI</td><td>82</td><td>80</td><td>84</td><td>82</td><td>79</td><td>-3</td></tr>
            </tbody>
          </table>
          <p>The team's made-up target: the AI is within 5 points of the people's average on at least 8 of 10 calls. On these 5 calls it managed 3 (C1, C3 and C5), which is 60%. Here is what they found:</p>
          <ul class="lc-list">
            <li><strong>C2:</strong> The AI gave 0 of 20 for verification. The Marathi transcript had garbled the date-of-birth question. People listened, and verification was done. Fix: a person listens before any "verification missed" flag counts. Add Marathi bank phrases to the vocabulary.</li>
            <li><strong>C4:</strong> The agent said "the ₹590 will be refunded by tomorrow". Nothing in the system showed that. People marked a critical fail. The AI gave full marks for closing. Fix: add examples of false promises to the AI's instructions.</li>
            <li><strong>C3:</strong> People disagreed too. Meera took points off for a 3-minute hold with no check-back. The others did not. The team agreed a rule and wrote it in the QA guide: check back on any hold over 1 minute.</li>
          </ul>
          <p>Also look for patterns by language. Both Marathi calls scored lower with the AI than with people. If that holds across more calls, the AI is unfair to Marathi-speaking agents. Their AI scores must not be used until the cause is fixed.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: run a calibration session</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put Arvind's monthly calibration steps in order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Pick 10 recent calls in all three languages, including some hard ones</li>
              <li data-order="2">Each reviewer scores the calls alone, and the AI scores them too</li>
              <li data-order="3">Put all the scores side by side in a spreadsheet</li>
              <li data-order="4">Listen together to the calls with the biggest gaps</li>
              <li data-order="5">Agree how each rule applies and write it in the QA guide</li>
              <li data-order="6">Update the AI's scoring instructions and test them on new calls</li>
              <li data-order="7">Repeat next month and track whether the gaps shrink</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to score a short made-up call with a QA form, with evidence for each score. Then compare its answer with your own score.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a QA analyst for [a bank call centre]. Use simple English.

        Score this made-up call with our QA form. For each item: points plus a quote with timestamp, or "Not sure". Never guess.
        QA form (100): Greeting 5; Verification 20; Understanding 15; Correct information 25; Hold and transfer 10; Empathy 10; Closing, no false promises 10; Notes 5.
        Verification: full name + date of birth + TWO of: last 4 account digits, registered city, last transaction amount, email.
        Critical fail: asking for OTP/PIN/CVV; sharing details before full verification; promising a refund or date the system does not show.

        [00:00:03] Agent: Good morning, Navkar Bank, how can I help?
        [00:00:08] Customer: I was charged 590 rupees and I don't know why.
        [00:00:14] Agent: Your full name and date of birth, please?
        [00:00:20] Customer: Ravi Deshpande, 12 March 1980.
        [00:00:26] Agent: Last four digits of your account?
        [00:00:31] Customer: 4471.
        [00:00:35] Agent: Thanks. It is a cheque book charge. Don't worry, it will be refunded by tomorrow.
        [00:00:44] Customer: Okay, thanks.
        [00:00:46] Agent: Anything else? Bye.

        Output: score table, total, critical fails, items a person must check, 2 coaching points.</pre>
            <ul class="ai-try-checks">
              <li>It notices only one extra check was done, so verification was not complete.</li>
              <li>It marks "refunded by tomorrow" as a critical fail. Sharing the charge before full verification is one too.</li>
              <li>"Notes" is marked as not possible to score from the transcript.</li>
              <li>Each score has a quote and a timestamp.</li>
              <li>Score the call yourself first, then compare with the AI.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> AI lets you look at every call, but it does not make QA automatic. Use AI scores to choose which calls people should hear. Calibrate people and the AI every month, check results by language, and never judge an agent on an AI score alone.
        </div>
      HTML
      starter_code: nil
    },
    13 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-cs">Customer Support</div>
          <h1 class="lc-title">Coaching Agents</h1>
        </div>
        <p class="lc-lead">Scores do not improve calls by themselves. People improve when someone helps them see one thing to change, and gives them time to practise it. In this lesson you will use call data to choose what to coach. You will learn how to hold a clear, kind feedback conversation. You will also use AI as a role-play partner, so agents can practise hard calls safely.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 290" role="img" aria-label="A coaching cycle of six steps: look at the data, pick one behaviour, listen to calls together, have the feedback talk, practise with AI role-play, and follow up in two weeks, then back to the data.">
            <defs><marker id="vc13a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="380" y="24" font-weight="700" fill="#67e8f9">The coaching cycle</text>
              <rect x="40" y="45" width="200" height="70" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="140" y="73" font-weight="700">1 Look at the data</text><text x="140" y="95" font-size="11" fill="#9b99b8">AHT, FCR, QA items</text>
              <rect x="280" y="45" width="200" height="70" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="380" y="73" font-weight="700">2 Pick one behaviour</text><text x="380" y="95" font-size="11" fill="#9b99b8">the biggest gain</text>
              <rect x="520" y="45" width="200" height="70" rx="10" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="620" y="73" font-weight="700">3 Listen together</text><text x="620" y="95" font-size="11" fill="#9b99b8">2 or 3 real calls</text>
              <rect x="520" y="175" width="200" height="70" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="620" y="203" font-weight="700">4 Feedback talk</text><text x="620" y="225" font-size="11" fill="#9b99b8">ask first, then tell</text>
              <rect x="280" y="175" width="200" height="70" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="380" y="203" font-weight="700">5 Practise with AI</text><text x="380" y="225" font-size="11" fill="#9b99b8">role-play, no real data</text>
              <rect x="40" y="175" width="200" height="70" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="140" y="203" font-weight="700">6 Follow up</text><text x="140" y="225" font-size="11" fill="#9b99b8">check again in 2 weeks</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#vc13a)"><line x1="241" y1="80" x2="277" y2="80"/><line x1="481" y1="80" x2="517" y2="80"/><line x1="620" y1="116" x2="620" y2="172"/><line x1="519" y1="210" x2="483" y2="210"/><line x1="279" y1="210" x2="243" y2="210"/><line x1="140" y1="174" x2="140" y2="118"/></g>
              <text x="380" y="275" font-size="11.5" fill="#9b99b8">Coach one behaviour at a time. Say what the agent does well, too.</text>
            </g>
          </svg>
          <figcaption>Good coaching is a loop. Data points to a behaviour, practice builds the skill, and a follow-up checks that it stuck.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Use call data to choose what to coach</h3>
          <p>Start with a few numbers per agent, next to the centre average. Here are two Navkar agents for one month (made-up data):</p>
          <table class="lc-table">
            <thead><tr><th>Measure</th><th>Rohit</th><th>Pooja</th><th>Centre</th></tr></thead>
            <tbody>
              <tr><td>Calls handled</td><td>700</td><td>700</td><td>about 705 per agent</td></tr>
              <tr><td>AHT (average handle time)</td><td>8:40 (520 s)</td><td>6:20 (380 s)</td><td>7:30 (450 s)</td></tr>
              <tr><td>Average hold time</td><td>110 s</td><td>20 s</td><td>45 s</td></tr>
              <tr><td>FCR (solved on the first call)</td><td>74% (518 calls)</td><td>61% (427 calls)</td><td>68%</td></tr>
              <tr><td>Lowest QA item</td><td>Hold and transfer</td><td>Understanding the issue</td><td></td></tr>
            </tbody>
          </table>
          <p>Read the numbers together. <strong>Rohit</strong> is slow, but he solves more problems first time. His long holds add (110 − 45) × 700 = 45,500 seconds a month, about 12.6 hours. When the team listened, they found he puts callers on hold to ask colleagues about UPI disputes. So the coaching goal is "use the UPI dispute guide on screen", not "be faster". Pushing his AHT down could hurt his FCR.</p>
          <p><strong>Pooja</strong> is fast, but 700 − 427 = 273 of her calls were not solved first time. Many are app login calls. At the centre's 68%, she would solve 476 calls first time, which is 49 more customers helped. The goal: "check the problem is fixed before you close the call".</p>
          <p>Data shows <em>where</em> to look. Only listening to calls shows <em>why</em>. Always listen to 2 or 3 calls before you coach.</p>
        </div>
        <div class="lc-card">
          <h3>The feedback conversation</h3>
          <p>A good coaching talk is short, specific and two-way. Use this order:</p>
          <ol class="lc-list">
            <li><strong>Ask first.</strong> "How did that call feel to you?" Agents often spot the problem themselves.</li>
            <li><strong>Describe the moment.</strong> Give the situation, what the agent said or did, and the effect on the customer. Use a timestamp.</li>
            <li><strong>Say what went well.</strong> Real, specific praise, not a routine "good job".</li>
            <li><strong>Agree one action.</strong> One behaviour, in the agent's own words.</li>
            <li><strong>Practise it now.</strong> A quick role-play is better than a promise.</li>
            <li><strong>Set a follow-up date.</strong> Listen to new calls in two weeks.</li>
          </ol>
          <pre><code>Weak feedback:
        Your FCR is bad. Be more careful with customers.

        Better feedback:
        On Tuesday's call, at 02:10, the customer said the app still
        showed an error. The call ended there, and she called back
        the next day. You explained the steps very clearly, though.
        Next time, could you ask her to try logging in while you are
        still on the line? Shall we practise that now?</code></pre>
          <p>AI can help the team leader prepare. It can summarise the QA notes from 10 of an agent's calls, find patterns and suggest role-play scenarios. But agent performance data is personal data. Use only the bank's approved AI tool. The team leader decides what to say, and coaching is for growth, not punishment.</p>
        </div>
        <div class="lc-card">
          <h3>Role-play practice with AI</h3>
          <p>Agents learn hard calls best by practising them. An AI assistant can play a customer: angry, confused, elderly, or in a hurry. The agent types or speaks replies. Some AI assistants have a voice mode, so practice can feel like a real call. Check your tool's current help pages.</p>
          <p>After the role-play, the AI gives feedback against a checklist. The team leader reads the feedback before it reaches the agent. Watch out for three problems:</p>
          <ul class="lc-list">
            <li><strong>Too easy.</strong> AI customers are often too polite. Tell the AI how upset to be, and when to calm down.</li>
            <li><strong>Made-up rules.</strong> AI feedback may invent bank policy, such as a goodwill credit. Check every rule against the bank's guide.</li>
            <li><strong>Real data.</strong> Use made-up customers only. Never paste a real call into a role-play.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Activity: Pooja practises an app login call</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Sneha sets it up">"Play a Navkar customer who changed phones and cannot log in to the app. Be impatient. When I type END, give feedback on: checking the fix, never asking for MPIN or passwords, and clear next steps."</li>
              <li data-kind="answer" data-label="AI as customer">"I got a new phone and your app says 'device not registered'. I have to pay my electricity bill today!"</li>
              <li data-kind="user" data-label="Pooja replies">"I'm sorry, let's fix it now. Please open the app and choose to register this device. You'll get an OTP by SMS. Type it only in the app. Please don't tell it to me or anyone."</li>
              <li data-kind="answer" data-label="AI as customer">"Okay... it says the device is registered now."</li>
              <li data-kind="check" data-label="Pooja checks the fix">"Great. While I'm still on the line, can you log in and open your account page?" This is the new habit she agreed to practise.</li>
              <li data-kind="warn" data-label="Catch the mistake">The AI's feedback says "You should have offered a ₹100 goodwill credit." Navkar agents have no such policy. Sneha removes it before sharing the feedback.</li>
              <li data-kind="check" data-label="Follow-up">Sneha notes the practice. In two weeks, she and Pooja listen to three real app login calls together.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Use AI as a practice customer for a hard call. Type your replies as the agent, then type END to get feedback.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a role-play partner for call centre agent training. Use simple English.

        Play a made-up customer of [Navkar Bank]: [an elderly caller whose UPI payment of ₹2,500 failed but the money was debited. Worried and a little confused.]

        Rules for you:
        - Stay in character. Reply in 1 to 3 short sentences, like a real caller.
        - Get more upset if I use bank jargon or rush you. Calm down if I explain clearly.
        - At some point, start to read out your OTP, so I can practise stopping you.
        - Use no real person's details.

        When I type END, step out of the role. Give feedback on this checklist: [greeting; verification without asking for OTP or PIN; empathy; clear next steps; checked the customer understood; no date promised unless the system shows it].
        For each item write Done, Partly or Not done, with a quote from my replies.
        Then give one thing I did well and one thing to practise next.
        Do not invent bank policies. If unsure, say "check your bank's guide".

        Start now with the customer's first words.</pre>
            <ul class="ai-try-checks">
              <li>The AI stays in character until you type END.</li>
              <li>It tries to read out an OTP, and you stop it politely.</li>
              <li>The feedback quotes your own words for each item.</li>
              <li>The feedback does not invent refunds, credits or bank rules.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Use data to find where to look, and real calls to find out why. Coach one behaviour at a time, and let agents practise it with AI role-play. A person reads all AI feedback first, and a follow-up shows whether the change stuck.
        </div>
      HTML
      starter_code: nil
    },
    14 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-cs">Customer Support</div>
          <h1 class="lc-title">Fair and Safe Use of Voice AI</h1>
        </div>
        <p class="lc-lead">Voice AI can do things that sound impressive. Vendors say it can read emotions, recognise voices and sound just like a person. Some of these claims are weak. Some create new ways to cheat customers and banks. In this lesson you will learn to question emotion-detection claims. You will see why cloned voices mean a voice must never prove identity for money actions. You will also learn to be honest with callers and fair across languages. This is general guidance, not legal advice.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="Caller ID can be faked, a voice can be cloned by AI, and answers to questions can be stolen. These are signals only. They are combined with other checks under bank rules. Information and card blocking can follow the agent's checks. Money actions such as transfers, new payees, limits and mobile number changes are done only in the app on a registered device or at a branch.">
            <defs><marker id="vc14a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="380" y="24" font-weight="700" fill="#67e8f9">A voice alone never proves who is calling</text>
              <rect x="10" y="45" width="220" height="50" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="120" y="66" font-weight="700">Caller ID</text><text x="120" y="84" font-size="11" fill="#9b99b8">can be faked</text>
              <rect x="10" y="105" width="220" height="50" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="120" y="126" font-weight="700">The voice</text><text x="120" y="144" font-size="11" fill="#9b99b8">can be cloned by AI</text>
              <rect x="10" y="165" width="220" height="50" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="120" y="186" font-weight="700">Answers to questions</text><text x="120" y="204" font-size="11" fill="#9b99b8">can be stolen or guessed</text>
              <rect x="290" y="85" width="170" height="90" rx="10" fill="#27274e" stroke="#8b5cf6"/>
              <text x="375" y="115" font-weight="700">Combine checks</text>
              <text x="375" y="137" font-size="11" fill="#9b99b8">bank's rules</text>
              <text x="375" y="155" font-size="11" fill="#9b99b8">+ risk signals</text>
              <rect x="520" y="45" width="230" height="80" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="635" y="70" font-weight="700" fill="#6ee7b7">Information, card block</text>
              <text x="635" y="92" font-size="11" fill="#9b99b8">after the agent's checks</text>
              <text x="635" y="110" font-size="11" fill="#9b99b8">as the rules say</text>
              <rect x="520" y="145" width="230" height="100" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="635" y="170" font-weight="700" fill="#f9a8d4">Money actions</text>
              <text x="635" y="192" font-size="11" fill="#9b99b8">transfers, new payee, limits,</text>
              <text x="635" y="210" font-size="11" fill="#9b99b8">mobile number change</text>
              <text x="635" y="230" font-size="11">app on registered device or branch</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#vc14a)"><line x1="231" y1="70" x2="287" y2="110"/><line x1="231" y1="130" x2="287" y2="130"/><line x1="231" y1="190" x2="287" y2="150"/><line x1="461" y1="115" x2="517" y2="88"/><line x1="461" y1="145" x2="517" y2="190"/></g>
              <text x="380" y="280" font-size="11.5" fill="#9b99b8">A voice match may add one signal. It must never approve a money action alone.</text>
            </g>
          </svg>
          <figcaption>Every call signal can be copied or faked. Banks combine checks, and keep money actions out of normal phone calls.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Be careful with emotion-detection claims</h3>
          <p>Some tools say they can detect a caller's or agent's <strong>emotion</strong> from their voice: anger, stress, even lying. Treat these claims with great care. Tone of voice changes with language, region, age, health and the phone line. A loud, fast speaker may not be angry at all. The same tone can mean different things in different cultures. There is no reliable way to read a person's inner feelings from their voice.</p>
          <p>Wrong emotion scores can harm people. An agent could get a low "empathy score" because of their accent. An honest customer could be marked as "suspicious". Some places now limit this. For example, since February 2025 the European Union's AI Act bans AI that infers people's emotions at work, except for medical or safety reasons. Check the current rules where you operate. This is general information, not legal advice.</p>
          <table class="lc-table">
            <thead><tr><th>Vendor claim</th><th>The problem</th><th>Safer use</th></tr></thead>
            <tbody>
              <tr><td>"Detects angry callers from tone"</td><td>Tone is not the same as feeling. It varies by language and accent.</td><td>Flag words such as "complaint", "fraud" or "ombudsman", and long holds, for a supervisor to hear</td></tr>
              <tr><td>"Scores agent empathy from voice"</td><td>Unfair to some accents and speaking styles</td><td>QA people score empathy from the words used, with quotes</td></tr>
              <tr><td>"Detects when a caller is lying"</td><td>No reliable evidence. Honest customers could be refused help.</td><td>Do not use. Follow the bank's verification and fraud rules.</td></tr>
              <tr><td>"Gives every call a mood score"</td><td>A guess that looks like a fact</td><td>Ask customers: short surveys, and track repeat calls</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Voice cloning and bank-grade verification</h3>
          <p><strong>Voice cloning</strong> means using AI to copy a person's voice from a short recording. Clips from social media or voice messages can be enough. The fake voice can then say anything. Fraudsters use it in three ways:</p>
          <ul class="lc-list">
            <li><strong>Pretending to be a customer</strong> when they call the helpline, to get details or change the account.</li>
            <li><strong>Pretending to be bank staff</strong>, or a relative in trouble, when they call customers.</li>
            <li><strong>Fooling voice ID systems.</strong> Some systems let the voice itself confirm who is speaking (a "voiceprint"). A good clone may pass.</li>
          </ul>
          <p>So Navkar Bank has one firm rule: <strong>a voice alone never verifies identity for any money action.</strong> A voice match can be one extra signal for low-risk help. Caller ID is only a signal too. Transfers, new payees, higher limits and mobile or email changes are never done on a normal call. The customer uses the app on a registered device, or visits a branch.</p>
          <pre><code>Agent words when a caller pushes for a money action:
        "I understand this is urgent. For your safety, I can't make
        this change on a phone call, even for the account holder.
        You can do it in the Navkar app on your registered phone,
        or at any branch. I can block your card right now if you
        are worried."

        Warning signs to report to the fraud team:
        - Strong pressure to act fast, or to skip steps
        - The caller knows the details but not the usual answers
        - A request to change the mobile number, then a transfer
        - Background audio that loops, or odd pauses before answers</code></pre>
          <p>Teach customers too. Navkar will never ask for an OTP, PIN or CVV. If someone says they are from the bank, the customer should hang up and call the number on the back of their card.</p>
        </div>
        <div class="lc-card">
          <h3>Honest disclosure and fair service</h3>
          <ul class="lc-list">
            <li><strong>Say it is a bot.</strong> Never give a synthetic voice a fake human identity, or tell callers it is a person.</li>
            <li><strong>Say how calls are used.</strong> Tell callers about recording, and that software may turn calls into text.</li>
            <li><strong>No tricks.</strong> India's 2023 CCPA guidelines on dark patterns list tricks such as false urgency and nagging. Hiding the way to a person goes against the same idea.</li>
            <li><strong>Check results by language.</strong> If the bot fails more for Marathi callers, fix it or send them to agents. No language should get worse service.</li>
            <li><strong>Plan for everyone.</strong> Keep a keypad option for people with speech difficulties, and a slower pace for elderly callers.</li>
            <li><strong>Be open with agents.</strong> Tell them what AI checks on their calls, and what it does not do.</li>
          </ul>
          <p>Navkar wrote its rules down as a short policy (made up):</p>
          <pre><code>Navkar Bank voice AI red lines
        1. No emotion or lie detection to judge customers or agents.
        2. A voice never verifies identity alone. No money actions on calls.
        3. Bots say they are automated in the first sentence.
        4. A person is always one step away: press 0 or say "agent".
        5. Bot and QA results are checked by language every month.
        6. Approved vendors only. No training on bank calls without approval.
        7. A person checks every AI QA flag before it affects an agent.</code></pre>
        </div>
        <div class="lc-card">
          <h3>Activity: safe or not?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Navkar Bank is looking at these uses of voice AI. Sort each one.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="safe" data-label="Safe to use, with checks"></div>
              <div data-sorter-target="bucket" data-bucket="unsafe" data-label="Do not do this"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="unsafe" data-why="A voice can be cloned. Money actions need the app on a registered device or a branch.">Let a voice match approve a ₹2 lakh transfer</li>
              <li data-bucket="unsafe" data-why="There is no reliable way to detect lies from a voice. Honest customers could be refused help.">Mark callers as "possibly lying" from their voice stress</li>
              <li data-bucket="unsafe" data-why="Voice tone varies by accent and language. Scores like this are unfair to agents.">Rank agents by an "empathy score" taken from their voice tone</li>
              <li data-bucket="unsafe" data-why="Callers must know they are talking to a machine. Hiding it breaks trust.">Give the bot a human name and tell callers it is a person</li>
              <li data-bucket="safe" data-why="Honest disclosure at the start is required good practice.">The bot says "I am Navkar Bank's automated assistant" first</li>
              <li data-bucket="safe" data-why="Words are a clear signal. A supervisor listens and decides what to do.">Flag calls where the caller says "fraud" or "ombudsman" for a supervisor</li>
              <li data-bucket="safe" data-why="This finds unfair gaps between languages before they harm callers.">Compare bot success rates for Marathi, Hindi and English every month</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to review a vendor's voice AI claims. It should find the risks and write questions to ask before you buy.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a risk reviewer for [a bank call centre]. Use simple English. This is general guidance, not legal advice.

        A vendor sent us these claims (made up):
        1. "Our voice AI detects angry, stressed or lying callers with high accuracy."
        2. "Voiceprint login lets customers approve payments by voice alone."
        3. "Our bot sounds so human that callers never know it is a bot."
        4. "We score agent empathy automatically from tone."
        5. "Works equally well in all Indian languages."

        Our rules at [Navkar Bank]: a voice never verifies money actions alone; bots say they are automated; people check every AI QA flag; results must be tested in [Marathi, Hindi and English].

        For each claim give:
        - The risk, in one or two sentences
        - 3 questions to ask the vendor (test data, languages, accents, cloned-voice tests)
        - A safer way to use it, or "Do not use"
        Then write 5 red lines for our contract. Do not invent laws, statistics or test results.</pre>
            <ul class="ai-try-checks">
              <li>Claims 1, 2 and 3 are marked "Do not use" or heavily limited.</li>
              <li>The questions ask for proof on your own languages and accents.</li>
              <li>Cloned-voice (spoofing) tests are asked about for the voiceprint claim.</li>
              <li>No made-up laws, statistics or test results appear.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Question every claim that AI can read feelings or prove who someone is from their voice. Voices can be cloned, so money actions need stronger checks than a phone call. Be honest that a bot is a bot, and check that every language gets equal service.
        </div>
      HTML
      starter_code: nil
    },
    15 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-cs">Customer Support</div>
          <h1 class="lc-title">Capstone: Improve a Call Centre Process</h1>
        </div>
        <p class="lc-lead">In this capstone you will put the whole course together. You will build a six-month improvement plan for the Navkar Bank helpline. It has five parts: a metrics review, AI call summaries, a new call flow, a voice bot scope and a QA plan. You will set clear targets, estimate the benefit honestly and add stop rules. All targets here are made up for practice. The same method works for any call centre.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 290" role="img" aria-label="Five steps of the plan: metrics, summaries, call flow, bot scope and QA plan. Below, four made-up six-month targets: service level from 72 to 80 percent, abandonment from 6.0 percent to under 5 percent, FCR from 68 to 72 percent, and after-call work from 75 to 45 seconds. A pilot team has already reached 52 seconds.">
            <defs><marker id="vc15a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="380" y="24" font-weight="700" fill="#67e8f9">Navkar Bank helpline: six-month plan</text>
              <rect x="10" y="40" width="130" height="70" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="75" y="68" font-weight="700">1 Metrics</text><text x="75" y="90" font-size="11" fill="#9b99b8">find the gaps</text>
              <rect x="160" y="40" width="130" height="70" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="225" y="68" font-weight="700">2 Summaries</text><text x="225" y="90" font-size="11" fill="#9b99b8">cut after-call work</text>
              <rect x="310" y="40" width="130" height="70" rx="10" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="375" y="68" font-weight="700">3 Call flow</text><text x="375" y="90" font-size="11" fill="#9b99b8">bot + callbacks</text>
              <rect x="460" y="40" width="130" height="70" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="525" y="68" font-weight="700">4 Bot scope</text><text x="525" y="90" font-size="11" fill="#9b99b8">balance + UPI</text>
              <rect x="610" y="40" width="130" height="70" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="675" y="68" font-weight="700">5 QA plan</text><text x="675" y="90" font-size="11" fill="#9b99b8">AI + people</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#vc15a)"><line x1="141" y1="75" x2="157" y2="75"/><line x1="291" y1="75" x2="307" y2="75"/><line x1="441" y1="75" x2="457" y2="75"/><line x1="591" y1="75" x2="607" y2="75"/></g>
              <text x="380" y="145" font-size="12" fill="#9b99b8">Made-up targets for six months</text>
              <rect x="10" y="160" width="179" height="110" rx="10" fill="#27274e" stroke="#ec4899"/>
              <text x="99" y="186" fill="#9b99b8">Service level</text>
              <text x="99" y="222" font-size="22" font-weight="700">72% → 80%</text>
              <text x="99" y="250" font-size="11" fill="#9b99b8">answered in 20 s</text>
              <rect x="197" y="160" width="179" height="110" rx="10" fill="#27274e" stroke="#ec4899"/>
              <text x="286" y="186" fill="#9b99b8">Abandonment</text>
              <text x="286" y="222" font-size="22" font-weight="700">6.0% → &lt;5%</text>
              <text x="286" y="250" font-size="11" fill="#9b99b8">of calls offered</text>
              <rect x="384" y="160" width="179" height="110" rx="10" fill="#27274e" stroke="#f59e0b"/>
              <text x="473" y="186" fill="#9b99b8">FCR</text>
              <text x="473" y="222" font-size="22" font-weight="700">68% → 72%</text>
              <text x="473" y="250" font-size="11" fill="#9b99b8">75% stays long term</text>
              <rect x="571" y="160" width="179" height="110" rx="10" fill="#27274e" stroke="#10b981"/>
              <text x="660" y="186" fill="#9b99b8">After-call work</text>
              <text x="660" y="222" font-size="22" font-weight="700">75 s → 45 s</text>
              <text x="660" y="250" font-size="11" fill="#9b99b8">pilot team: 52 s</text>
            </g>
          </svg>
          <figcaption>Five parts, one plan. Each part links to a target you can measure every month.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Step 1: review the metrics</h3>
          <p>Start from last month's numbers and the bank's own definitions. Recalculate them in a spreadsheet before you plan anything.</p>
          <table class="lc-table">
            <thead><tr><th>Metric</th><th>Last month</th><th>Target</th><th>Working</th></tr></thead>
            <tbody>
              <tr><td>Service level</td><td>72%</td><td>80% in 20 s</td><td>32,400 ÷ 45,000 calls offered</td></tr>
              <tr><td>Abandonment rate</td><td>6.0%</td><td>under 5%</td><td>2,700 ÷ 45,000</td></tr>
              <tr><td>FCR (first call resolution)</td><td>68%</td><td>75%</td><td>28,764 ÷ 42,300 calls handled</td></tr>
              <tr><td>Occupancy</td><td>75%</td><td>80–85%</td><td>5,287.5 ÷ 7,050 hours</td></tr>
              <tr><td>AHT (average handle time)</td><td>7:30</td><td>no fixed target</td><td>330 + 45 + 75 seconds</td></tr>
            </tbody>
          </table>
          <p>Three findings for the plan:</p>
          <ul class="lc-list">
            <li><strong>Peaks, not total staff.</strong> Agents are only 75% busy on average, yet callers wait. Staff do not match Monday mornings and the 1st to 5th of the month.</li>
            <li><strong>Repeat calls.</strong> 13,536 calls a month were not solved first time. Each one may bring another call.</li>
            <li><strong>Simple calls fill the queue.</strong> Balance and failed UPI calls are 17,100 a month, or 38%. Many are simple status checks.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Steps 2 to 4: summaries, call flow and bot scope</h3>
          <p><strong>Summaries.</strong> A four-week pilot with one team already cut after-call work (ACW) from 75 to 52 seconds. That is 23 seconds saved per call. Now roll summaries out to all teams in stages. Keep the pilot's template: reason, verification result (never the answers), what the customer said, what the agent did, promises made, reference numbers, next step, disposition code and follow-up. Agents still read and edit every draft. The six-month target is 45 seconds, a further 7 seconds. That time must come from fixes, not from skipping checks. For example, reference numbers can fill in from the bank's system, and code suggestions can improve (most pilot misses were SOLVED instead of RAISED).</p>
          <p><strong>Call flow.</strong> Sneha builds on the IVR redesign. She keeps the urgent options first. She adds the voice bot only for the bot's scope: balance and UPI status. She keeps the option 5 sub-menu if its 4-week test cut transfers:</p>
          <pre><code>Recording notice, then language: 1 Marathi, 2 Hindi, 3 English
        1  Lost or stolen card: automatic block + priority queue (no change)
        2  Fraud or unknown transaction: priority agent, never the bot
        3  Balance and transactions: keypad balance as today; other
           questions go to the voice bot (pilot)
        4  UPI or payment problems: voice bot status check (pilot);
           overdue or disputed payments go to an agent
        5  Cards, loans and other services: the tested sub-menu
           (1 card declined, PIN, delivery; 2 app login; 3 loans and EMI;
           4 KYC and address: app or branch steps; 0 agent)
        0  Agent at any time. In the bot, say "agent" too.
        9  Repeat the menu
        Callback: offered when the wait is over 3 minutes, in the same
        language. Rosters move hours to Monday mornings and the 1st-5th.</code></pre>
          <p>Callbacks support the abandonment target. The what-if in the IVR lesson showed this: if 900 of the 2,700 callers who hung up took a callback, abandonment would fall to 1,800 ÷ 45,000 = 4.0%.</p>
          <p><strong>Bot scope.</strong> Phase 1 covers balance and UPI status only (17,100 calls a month). The bot checks identity with the registered mobile number plus a "Yes, it's me" tap in the Navkar app. The made-up target is 40% of balance calls (3,960) and 25% of UPI calls (1,800). That is 5,760 calls a month.</p>
          <p><strong>Estimate the benefit honestly.</strong> Do not add the two savings as if they were separate. The bot removes calls, so summaries save time on fewer calls:</p>
          <pre><code>Bot:        5,760 calls x 450 s = 2,592,000 s = 720 hours
        Calls left: 42,300 - 5,760 = 36,540 answered calls
        Summaries at the pilot result (75 s to 52 s, so 23 s saved):
                    36,540 x 23 s = 840,420 s = 233.45 hours
        Total:      720 + 233.45 = 953.45 hours a month (about 18%
                    of the 5,287.5 hours of handle time)
        If ACW reaches the 45 s target (30 s saved):
                    36,540 x 30 s = 1,096,200 s = 304.5 hours
        Total:      720 + 304.5 = 1,024.5 hours a month (about 19%)</code></pre>
          <p>This is a rough estimate, not a promise. It assumes every call the bot finishes would have been answered by an agent. Some of those callers would have hung up, so the real saving is a little lower. Handovers from the bot may take longer, and agents need time to check summaries. Plan to use saved hours for peak staffing and coaching first, where the service gaps are.</p>
        </div>
        <div class="lc-card">
          <h3>Step 5: QA plan, targets and stop rules</h3>
          <p><strong>QA plan.</strong> The approved AI tool scores all answered calls with evidence. Arvind's team checks every critical flag and re-scores a random sample, about 300 calls a month in total. Calibration happens monthly in all three languages. No agent is judged on an AI score alone.</p>
          <table class="lc-table">
            <thead><tr><th>Measure</th><th>Now</th><th>Six-month target (made up)</th></tr></thead>
            <tbody>
              <tr><td>Service level (20 s)</td><td>72%</td><td>80%</td></tr>
              <tr><td>Abandonment rate</td><td>6.0%</td><td>under 5%</td></tr>
              <tr><td>FCR</td><td>68%</td><td>72% (75% stays the long-term goal)</td></tr>
              <tr><td>After-call work</td><td>75 s (52 s in the pilot team)</td><td>45 s across all teams</td></tr>
              <tr><td>Calls the bot finishes</td><td>0</td><td>5,760 a month, with no repeat call in 7 days</td></tr>
              <tr><td>AI and people QA scores within 5 points</td><td>3 of 5 calls</td><td>8 of 10 calls in calibration</td></tr>
            </tbody>
          </table>
          <p><strong>Stop rules</strong> say when to pause a change. Agree them before the pilot starts (made up):</p>
          <ul class="lc-list">
            <li>Pause the bot if more than 15% of calls it finished lead to a repeat call within 7 days.</li>
            <li>Pause the bot if complaints about it rise two weeks in a row.</li>
            <li>Do not add a language to the bot until its results are within 10 points of the others.</li>
            <li>Pause the summaries roll-out if Arvind's monthly check of 200 saved notes finds more than 5 with a factual error. That would be worse than the pilot (5 of 200, or 2.5%).</li>
          </ul>
          <p>Fraud, charges complaints and money decisions stay with people throughout.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: Sneha builds the plan with AI</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Sneha asks">"Here are last month's totals and our call reasons. Draft a six-month plan with summaries, a voice bot for balance and UPI status, and a QA plan. Show targets and time saved."</li>
              <li data-kind="answer" data-label="AI replies">"Targets: FCR 90% and AHT 5 minutes next month. Time saved: bot 720 hours + summaries 352.5 hours = 1,072.5 hours."</li>
              <li data-kind="warn" data-label="Catch two mistakes">FCR 90% in one month is not realistic, and cutting AHT may hurt FCR. The summary saving uses the old 30-second estimate on all 42,300 calls. It counts calls the bot has already taken, and it ignores the pilot result.</li>
              <li data-kind="tool" data-label="Google Sheets">Sneha rebuilds the savings: 42,300 − 5,760 = 36,540 calls. At the pilot's 23 seconds: 36,540 × 23 ÷ 3,600 = 233.45 hours.</li>
              <li data-kind="result" data-label="Sheet shows">Bot 720 hours + summaries 233.45 hours = 953.45 hours a month. If ACW reaches 45 seconds, the total is 1,024.5 hours. Both are estimates to test.</li>
              <li data-kind="check" data-label="Sneha and Arvind review">They set FCR to 72% in six months. They check that fraud stays with people and the bot never promises dates.</li>
              <li data-kind="check" data-label="Before launch">They agree stop rules, and share the plan with agents, compliance and IT for comments.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to draft a full improvement plan for a call centre. Use Navkar Bank's numbers, or change them to your own.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a call centre improvement coach. Use simple English.

        Centre: [Navkar Bank helpline, London, 60 agents, Marathi/Hindi/English].
        Last month: calls offered [45,000]; answered [42,300]; answered in 20 s [32,400]; abandoned [2,700]; AHT [450] s including ACW [75] s; solved first time [28,764]; occupancy [75%].
        Biggest call reasons: [balance 9,900; failed UPI 7,200; lost card 5,400; fraud 3,150].
        Peaks: [Monday mornings and the 1st-5th of the month].

        Write a six-month plan with these sections:
        1. Metrics review: calculate service level, abandonment and FCR, with working.
        2. AI after-call summaries: a pilot cut ACW from [75] to [52] s. Plan the roll-out, template and checks.
        3. New call flow: keep fraud and card block with people or priority queues.
        4. Voice bot scope: which reasons, identity check, handover rules.
        5. QA plan: AI scoring, people's checks, monthly calibration.
        6. Targets table (label them "made up") and 3 stop rules.
        7. Time saved: do not double count calls the bot takes.

        Rules: fraud and money decisions stay with people. No bot promises refunds or dates. Mark assumptions [ASSUMED].</pre>
            <ul class="ai-try-checks">
              <li>Recalculate every metric and saving in a spreadsheet.</li>
              <li>With the default numbers: service level 72%, abandonment 6.0%, FCR 68%.</li>
              <li>The savings do not count the bot's calls twice.</li>
              <li>Targets are realistic and clearly marked as made up.</li>
              <li>Fraud stays with people, and every flow has a way to reach an agent.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A good AI plan starts with your numbers and call reasons, not with the tools. Keep people on the hard and risky calls, estimate savings without double counting, and agree stop rules before you start. Then measure every month and adjust.
        </div>
      HTML
      starter_code: nil
    }
  }.freeze
end

module AiTicketManagementContent
  # Units (sidebar dividers): 1–4 Ticketing Basics · 5–9 Sorting, Routing and Replying · 10–14 SLAs, Quality and Improving · 15 Capstone
  # Widgets: sequence, sorter, stepper. No code editor: each Try It is an ai-try prompt box.
  LESSONS = {
    1 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-cs">Customer Support</div>
          <h1 class="lc-title">How Ticketing Works</h1>
        </div>
        <p class="lc-lead">A <strong>ticket</strong> is one customer request, saved as a record in a helpdesk tool. In this lesson you will learn what a ticket contains and where tickets come from. You will also learn what each status means and how queues work. You will follow one ticket from open to closed. This matters because AI can only help a team that already has a clear ticket process. In this course you will follow <em>LedgerLite</em>, a made-up accounting software company in San Francisco. Its support lead, Deepa, runs a team of 8 agents. They handle about 3,000 tickets a month.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 280" role="img" aria-label="A ticket's life. Tickets arrive by email, in-app chat or phone and start as New. An agent makes it Open. It can move to Pending while waiting on the customer, or On hold while waiting on another team, and back to Open. Then it becomes Solved, and later Closed. If the customer replies to a solved ticket, it is reopened.">
            <defs><marker id="tm1a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="65" y="34" font-weight="700" fill="#67e8f9">Channels</text>
              <rect x="15" y="48" width="100" height="34" rx="8" fill="#27274e" stroke="#22d3ee"/>
              <text x="65" y="70">Email</text>
              <rect x="15" y="94" width="100" height="34" rx="8" fill="#27274e" stroke="#22d3ee"/>
              <text x="65" y="116">In-app chat</text>
              <rect x="15" y="140" width="100" height="34" rx="8" fill="#27274e" stroke="#22d3ee"/>
              <text x="65" y="162">Phone</text>
              <rect x="140" y="88" width="90" height="44" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="185" y="107" font-weight="700">New</text>
              <text x="185" y="124" font-size="10.5" fill="#9b99b8">not yet seen</text>
              <rect x="260" y="88" width="90" height="44" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="305" y="107" font-weight="700">Open</text>
              <text x="305" y="124" font-size="10.5" fill="#9b99b8">agent working</text>
              <rect x="380" y="18" width="130" height="48" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="445" y="38" font-weight="700">Pending</text>
              <text x="445" y="56" font-size="10.5" fill="#9b99b8">waiting on customer</text>
              <rect x="380" y="154" width="130" height="48" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="445" y="174" font-weight="700">On hold</text>
              <text x="445" y="192" font-size="10.5" fill="#9b99b8">waiting on a team</text>
              <rect x="540" y="88" width="90" height="44" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="585" y="107" font-weight="700">Solved</text>
              <text x="585" y="124" font-size="10.5" fill="#9b99b8">answer given</text>
              <rect x="655" y="88" width="90" height="44" rx="10" fill="#1f1f44" stroke="#4b4a78"/>
              <text x="700" y="107" font-weight="700">Closed</text>
              <text x="700" y="124" font-size="10.5" fill="#9b99b8">locked</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#tm1a)">
                <line x1="117" y1="65" x2="136" y2="100"/>
                <line x1="117" y1="111" x2="136" y2="110"/>
                <line x1="117" y1="157" x2="136" y2="120"/>
                <line x1="232" y1="110" x2="256" y2="110"/>
                <line x1="330" y1="86" x2="384" y2="69"/>
                <line x1="404" y1="70" x2="350" y2="94"/>
                <line x1="330" y1="134" x2="384" y2="151"/>
                <line x1="404" y1="150" x2="350" y2="126"/>
                <line x1="352" y1="110" x2="536" y2="110"/>
                <line x1="632" y1="110" x2="651" y2="110"/>
                <path d="M570,134 Q445,340 300,136"/>
              </g>
              <text x="445" y="262" font-size="11.5" fill="#9b99b8">Reopened: the customer replies to a solved ticket</text>
            </g>
          </svg>
          <figcaption>A ticket's life at LedgerLite. Status names vary a little between helpdesk tools, but the idea is the same.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>What is inside a ticket</h3>
          <p>A <strong>helpdesk</strong> is software that collects customer messages and turns each one into a ticket. Examples are Freshdesk, Zendesk and Zoho Desk. Every ticket has a unique ID and a set of <strong>fields</strong> (labelled boxes of information). Here is one LedgerLite ticket.</p>
          <table class="lc-table">
            <thead><tr><th>Field</th><th>Value</th><th>Why it matters</th></tr></thead>
            <tbody>
              <tr><td><strong>Ticket ID</strong></td><td>LL-20413</td><td>Everyone can find the same ticket fast.</td></tr>
              <tr><td><strong>Requester</strong></td><td>Lakshmi, Kaveri Textiles (Fort Worth)</td><td>The customer who asked. You see their history.</td></tr>
              <tr><td><strong>Channel</strong></td><td>Email</td><td>Where the request came in.</td></tr>
              <tr><td><strong>Subject</strong></td><td>Charged twice for annual plan</td><td>A short line that says what the problem is.</td></tr>
              <tr><td><strong>Status</strong></td><td>Open</td><td>Where the ticket is in its life.</td></tr>
              <tr><td><strong>Priority</strong></td><td>P2 (High)</td><td>How soon it needs work. P1 is the most urgent.</td></tr>
              <tr><td><strong>Tag</strong></td><td>refund</td><td>The topic. Tags make reports and routing possible.</td></tr>
              <tr><td><strong>Group and assignee</strong></td><td>Billing Desk, Rohan</td><td>The team and the person who own it now.</td></tr>
              <tr><td><strong>SLA due</strong></td><td>First reply by 11:40 am</td><td>The promised time for a reply. You will learn SLAs soon.</td></tr>
            </tbody>
          </table>
          <p>A ticket also keeps the full <strong>thread</strong>. That is every message between the customer and the team. Agents can add <strong>internal notes</strong> too. Only the team sees these notes. The customer never does.</p>
        </div>
        <div class="lc-card">
          <h3>Channels, statuses and queues</h3>
          <p>LedgerLite gets tickets from three <strong>channels</strong> (ways customers contact you). In a normal month, that is about 1,350 emails, 1,200 in-app chats and 450 phone calls. The helpdesk turns each one into a ticket. Phone calls become tickets when the agent logs the call.</p>
          <p>The <strong>status</strong> tells everyone what happens next. Most tools use statuses like these:</p>
          <table class="lc-table">
            <thead><tr><th>Status</th><th>Meaning</th><th>Who acts next</th></tr></thead>
            <tbody>
              <tr><td><strong>New</strong></td><td>Arrived. No agent has looked at it yet.</td><td>The team</td></tr>
              <tr><td><strong>Open</strong></td><td>An agent owns it and is working on it.</td><td>The agent</td></tr>
              <tr><td><strong>Pending</strong></td><td>The agent asked the customer a question.</td><td>The customer</td></tr>
              <tr><td><strong>On hold</strong></td><td>Waiting on another team, such as Finance or Engineering.</td><td>The other team</td></tr>
              <tr><td><strong>Solved</strong></td><td>The agent gave an answer or a fix.</td><td>Nobody, unless the customer replies</td></tr>
              <tr><td><strong>Closed</strong></td><td>Locked after some days. A new reply creates a new ticket.</td><td>Nobody</td></tr>
            </tbody>
          </table>
          <p>A <strong>queue</strong> is a list of tickets that one person or team should work on. In most tools, a queue is a saved filter, often called a "view". Deepa's team uses these views every day:</p>
          <ul class="lc-list">
            <li><strong>Unassigned:</strong> New tickets with no owner. Someone must pick them up.</li>
            <li><strong>My open tickets:</strong> Each agent's own work.</li>
            <li><strong>Billing Desk</strong> and <strong>Technical Support:</strong> Team queues for specialist work.</li>
            <li><strong>Due in the next hour:</strong> Tickets close to missing their promised reply time.</li>
          </ul>
          <p>In many tools, the reply-time clock pauses while a ticket is Pending. Some tools can also pause it for On hold. Check your helpdesk's settings, because this changes your reports.</p>
        </div>
        <div class="lc-card">
          <h3>Common status mistakes</h3>
          <ul class="lc-list">
            <li><strong>Pending when you are the one who must act.</strong> The clock pauses and the customer waits. Use Pending only after you ask the customer something.</li>
            <li><strong>Solving too early.</strong> "We are checking with Finance" is not a solution. That ticket is On hold.</li>
            <li><strong>No owner.</strong> A ticket with a team but no assignee often gets forgotten.</li>
            <li><strong>One ticket, many problems.</strong> If a customer raises two separate issues, split them into two tickets. Then each gets the right team and tag.</li>
          </ul>
          <p>These mistakes matter even more when you add AI later. AI reads statuses and fields to decide what to do. Wrong statuses give it wrong information.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: follow ticket LL-20413</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Kaveri Textiles was charged ₹11,800 twice for its annual plan. Put the ticket's life in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Lakshmi's email arrives. The helpdesk creates LL-20413 as New and sends an automatic acknowledgement.</li>
              <li data-order="2">Rohan in the Billing Desk takes the ticket. The status becomes Open.</li>
              <li data-order="3">Rohan asks for the payment reference numbers. The status becomes Pending.</li>
              <li data-order="4">Lakshmi replies with both references. The ticket goes back to Open.</li>
              <li data-order="5">Rohan asks Finance to confirm the double charge. The status becomes On hold.</li>
              <li data-order="6">Finance confirms and starts the refund. Rohan tells Lakshmi the details. The status becomes Solved.</li>
              <li data-order="7">Lakshmi does not reply for a few days. The helpdesk closes the ticket.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to write a one-page status guide for new agents on your team. Change the details in brackets to match your own helpdesk.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a customer support operations coach. I lead support at [LedgerLite, a San Francisco accounting software company for small businesses]. We use [a helpdesk tool such as Freshdesk or Zoho Desk]. Tickets come by [email, in-app chat and phone]. Our statuses are: [New, Open, Pending, On hold, Solved, Closed].

        Write a one-page status guide for new agents. Include:
        1. A table: Status | What it means | Who acts next | Does the reply-time clock usually run? | An example from our business.
        2. Five clear rules for changing status. Explain the difference between Pending and On hold.
        3. Three common status mistakes and how to avoid each one.
        4. When a solved ticket should be reopened, and when a new ticket is better.

        Rules: Use simple English and short sentences. Do not guess how our tool is set up. If something depends on settings (for example, pausing the clock), write "Check your helpdesk settings".</pre>
            <ul class="ai-try-checks">
              <li>Pending means waiting on the customer. On hold means waiting on another team.</li>
              <li>Clock rules are marked "check your settings", not stated as facts.</li>
              <li>The examples fit your business and your channels.</li>
              <li>A new agent could follow the rules without asking you.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A ticket is only as useful as its fields. A clear owner, status, priority and tag on every ticket tells the team what to do next. Get these basics right before you add AI.
        </div>
      HTML
      starter_code: nil
    },
    2 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-cs">Customer Support</div>
          <h1 class="lc-title">Where AI Helps with Tickets</h1>
        </div>
        <p class="lc-lead">AI can read a ticket in a second. It can suggest a tag and a priority, pick a team, summarise a long thread and draft a reply. This saves agents a lot of time on simple work. But AI can also be wrong, sound too sure, or promise things your company cannot do. In this lesson you will learn the five main jobs AI does in ticketing. You will also learn the risks, and which decisions must stay with a person.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="A new ticket goes to the AI. The AI suggests a tag and priority, suggests a team, summarises the thread and drafts a reply. An agent checks all four and edits or rejects them. Only then does the customer get a reply. A box below lists what AI must not do: approve refunds, invent policy or promise fixes. Hard cases go to a person.">
            <defs><marker id="tm2a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="15" y="102" width="110" height="50" rx="10" fill="#27274e" stroke="#22d3ee"/>
              <text x="70" y="123" font-weight="700">New ticket</text>
              <text x="70" y="142" font-size="11" fill="#9b99b8">LL-20414</text>
              <rect x="155" y="102" width="110" height="50" rx="10" fill="#27274e" stroke="#8b5cf6"/>
              <text x="210" y="123" font-weight="700">AI reads it</text>
              <text x="210" y="142" font-size="11" fill="#9b99b8">text + history</text>
              <rect x="300" y="36" width="170" height="38" rx="8" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="385" y="60">Suggest tag + priority</text>
              <rect x="300" y="84" width="170" height="38" rx="8" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="385" y="108">Suggest a team</text>
              <rect x="300" y="132" width="170" height="38" rx="8" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="385" y="156">Summarise the thread</text>
              <rect x="300" y="180" width="170" height="38" rx="8" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="385" y="204">Draft a reply</text>
              <rect x="505" y="102" width="110" height="50" rx="10" fill="#27274e" stroke="#f59e0b"/>
              <text x="560" y="123" font-weight="700">Agent checks</text>
              <text x="560" y="142" font-size="11" fill="#9b99b8">edits or rejects</text>
              <rect x="645" y="102" width="100" height="50" rx="10" fill="#27274e" stroke="#10b981"/>
              <text x="695" y="123" font-weight="700">Customer</text>
              <text x="695" y="142" font-size="11" fill="#9b99b8">gets the reply</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#tm2a)">
                <line x1="127" y1="127" x2="151" y2="127"/>
                <line x1="267" y1="120" x2="296" y2="57"/>
                <line x1="267" y1="124" x2="296" y2="104"/>
                <line x1="267" y1="130" x2="296" y2="150"/>
                <line x1="267" y1="134" x2="296" y2="197"/>
                <line x1="472" y1="55" x2="502" y2="118"/>
                <line x1="472" y1="103" x2="502" y2="123"/>
                <line x1="472" y1="151" x2="502" y2="131"/>
                <line x1="472" y1="199" x2="502" y2="136"/>
                <line x1="617" y1="127" x2="641" y2="127"/>
              </g>
              <rect x="15" y="236" width="730" height="54" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="380" y="259" font-weight="700" fill="#f9a8d4">AI must not approve refunds, invent policy or promise fixes.</text>
              <text x="380" y="279" font-size="12" fill="#9b99b8">Hard cases (legal threats, safety, data problems) go straight to a person.</text>
            </g>
          </svg>
          <figcaption>AI prepares the work. A person checks it and decides what the customer sees.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The five jobs AI can do</h3>
          <p>Many helpdesk tools now include AI features. Freshdesk, Zendesk, Zoho Desk and Intercom all offer some of them. The names and details change often, so check each tool's current help pages. You can also use a general AI assistant, such as Claude, with care. Here is what each job means at LedgerLite.</p>
          <table class="lc-table">
            <thead><tr><th>Job</th><th>What AI does</th><th>What a person still does</th></tr></thead>
            <tbody>
              <tr><td><strong>Tagging</strong></td><td>Reads the ticket and suggests a topic, such as <code>bank-sync</code>.</td><td>Checks a sample often. Fixes wrong tags.</td></tr>
              <tr><td><strong>Priority</strong></td><td>Spots urgent words, deadlines and how many users are affected.</td><td>Confirms P1 tickets. Sets rules for VIP and safety cases.</td></tr>
              <tr><td><strong>Routing</strong></td><td>Suggests the right team, such as Billing Desk or Technical Support.</td><td>Handles tickets that fit no team. Owns the routing rules.</td></tr>
              <tr><td><strong>Summaries</strong></td><td>Turns a 20-message thread into five lines.</td><td>Reads the key messages before acting on the summary.</td></tr>
              <tr><td><strong>Reply drafts</strong></td><td>Writes a reply from your help articles and the ticket.</td><td>Checks every fact, date and amount. Sends it or rewrites it.</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Worked example: ticket LL-20414</h3>
          <p>Here is a real-looking ticket (made up for this course) and what an AI tool suggested.</p>
          <pre><code>From: Farhan, accounts head, Noor Pharma Distributors (Tulsa)
        Subject: GSTR-1 export totals wrong!!
        Our GSTR-1 report shows ₹4,12,300 in B2B sales. Our invoices
        add up to ₹4,21,300. We must file in 2 days. Please help.

        AI suggestion
        Tag:      gst-reports
        Priority: P2 (one customer, filing deadline in 2 days)
        Team:     Technical Support
        Summary:  Report total is ₹9,000 lower than invoice total.
                  Filing deadline in 2 days.
        Draft:    "Hi Farhan, sorry for the trouble. This is a known
                  issue and our team fixed it yesterday. Please
                  export the report again."</code></pre>
          <p>The tag, team and priority are good. The summary maths is right: ₹4,21,300 minus ₹4,12,300 is ₹9,000. But the draft has a serious problem. Nobody told the AI about a known issue or a fix. It <strong>invented</strong> that. If Farhan exports again and the numbers are still wrong, he may file a wrong return.</p>
          <p>Vikram in Technical Support rewrites the reply. He asks for two example invoice numbers and promises an update by 4 pm. He does not promise a fix. He also checks if other customers report the same problem. If many do, it becomes a P1 for the whole team.</p>
        </div>
        <div class="lc-card">
          <h3>Risks and simple rules</h3>
          <ul class="lc-list">
            <li><strong>Made-up facts.</strong> AI can write things that sound right but are false. People check every fact, amount and date before sending.</li>
            <li><strong>Promises.</strong> AI must never approve a refund, a discount or a deadline. Only people with authority decide these.</li>
            <li><strong>Private data.</strong> Tickets contain names, phone numbers, GSTINs (GST registration numbers) and bank details. Do not paste them into a public AI tool. Use the AI that your company has approved. Or remove personal details first. India's DPDP Act 2023 (Digital Personal Data Protection Act) and the DPDP Rules 2025 set rules for handling personal data. Many duties start in phases. Ask your company's privacy or legal team what is allowed.</li>
            <li><strong>Language and tone.</strong> Customers write in Hinglish, Kannada, Tamil and more. AI can misread mixed-language messages. Check these tickets more often.</li>
            <li><strong>A way to reach a person.</strong> Any reply that AI writes or sends must tell customers how to reach a person.</li>
          </ul>
          <p>A good starting rule: AI <em>suggests</em>, a person <em>approves</em>. Give AI more freedom only for one task at a time. Do it only after you have measured its accuracy on real tickets.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: who should do it?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each LedgerLite task. Who should do it?</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="ai" data-label="AI, with spot checks"></div>
              <div data-sorter-target="bucket" data-bucket="draft" data-label="AI drafts, person approves"></div>
              <div data-sorter-target="bucket" data-bucket="person" data-label="Person only"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="ai" data-why="Low risk and high volume. A wrong tag is easy to fix. Check a sample every week.">Tag a "How do I add a second user?" chat</li>
              <li data-bucket="ai" data-why="A summary only helps the agent read faster. The agent still reads key messages before acting.">Summarise a 20-message thread for the next agent</li>
              <li data-bucket="draft" data-why="AI can write a good first draft from the help article. A person checks the steps and sends it.">Reply to "How do I send payment reminders to my customers?"</li>
              <li data-bucket="draft" data-why="AI can explain the charge. A person checks the invoice and the amounts before sending.">Explain why a customer's invoice shows 18% GST</li>
              <li data-bucket="person" data-why="Money leaves the company. Only someone with authority can approve a refund.">Approve a ₹11,800 refund for a double charge</li>
              <li data-bucket="person" data-why="Legal threats need a trained person and often the legal team. AI should only flag them.">Reply to "I will send you a legal notice"</li>
              <li data-bucket="person" data-why="A person must confirm the data was really deleted, and follow the company's privacy process.">Confirm to a customer that all their data is deleted</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Use AI to plan where AI could help your team first. Replace the sample numbers with your own ticket counts if you have them.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a customer support operations adviser. I lead a team of [8 agents] at [LedgerLite, a San Francisco accounting software company]. We get about [3,000] tickets a month. Our top ticket types last month:
        - [How-to questions: 690]
        - [Bank feed not syncing: 540]
        - [Login and OTP problems: 420]
        - [Billing questions: 360]
        - [GST report errors: 330]
        - [Refund requests: 30]

        1. Make a table: Ticket type | Best AI job (tagging, priority, routing, summary or reply draft) | Risk (low, medium or high) and why | What a person must check | Must a person always handle it? (yes or no)
        2. Recommend ONE 30-day pilot to start with. Explain why. List what to measure before and after, and what result would make us stop the pilot.

        Rules: AI must never approve refunds or promise fixes. Do not invent statistics about time or money saved. Use simple English.</pre>
            <ul class="ai-try-checks">
              <li>Refund requests are high risk, and a person decides.</li>
              <li>The pilot is high volume and low risk, such as tagging or how-to drafts.</li>
              <li>The measures are clear, such as tag accuracy, first response time and CSAT.</li>
              <li>The answer does not invent "AI saves 40%" style numbers.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Let AI do the reading, sorting and first drafts. Keep people in charge of money, promises, legal issues and anything the AI cannot check. Start small, measure, then give AI more work.
        </div>
      HTML
      starter_code: nil
    },
    3 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-cs">Customer Support</div>
          <h1 class="lc-title">Support Metrics</h1>
        </div>
        <p class="lc-lead">Metrics are numbers that show how well your support team works. They tell you if customers wait too long, if work is piling up and if customers are happy. In this lesson you will learn six key support metrics. You will see how to calculate each one with a worked example from LedgerLite's August numbers. You will also learn to use AI to explain the numbers, and why you must still check its maths.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 270" role="img" aria-label="A dashboard of LedgerLite's support in August 2026 with six tiles: median first response 2 hours 10 minutes for email, median resolution time 28 hours, backlog 480 open tickets, first-response SLA met 95.0 percent, first contact resolution 60.0 percent and CSAT 85.0 percent.">
            <g font-family="inherit" fill="#e2e0f0" text-anchor="middle">
              <text x="380" y="24" font-size="13" font-weight="700" fill="#67e8f9">LedgerLite support · August 2026 (made-up numbers)</text>
              <rect x="15" y="40" width="235" height="100" rx="12" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="132" y="64" font-size="12" fill="#9b99b8">First response (median)</text>
              <text x="132" y="98" font-size="24" font-weight="700" fill="#93c5fd">2 h 10 min</text>
              <text x="132" y="124" font-size="11" fill="#9b99b8">email (chat: 3 min)</text>
              <rect x="262" y="40" width="235" height="100" rx="12" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="380" y="64" font-size="12" fill="#9b99b8">Resolution time (median)</text>
              <text x="380" y="98" font-size="24" font-weight="700" fill="#c4b5fd">28 h</text>
              <text x="380" y="124" font-size="11" fill="#9b99b8">average: 41 h</text>
              <rect x="509" y="40" width="235" height="100" rx="12" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="627" y="64" font-size="12" fill="#9b99b8">Backlog (open tickets)</text>
              <text x="627" y="98" font-size="24" font-weight="700" fill="#fcd34d">480</text>
              <text x="627" y="124" font-size="11" fill="#9b99b8">up from 410 on 1 August</text>
              <rect x="15" y="152" width="235" height="100" rx="12" fill="#1f1f44" stroke="#10b981"/>
              <text x="132" y="176" font-size="12" fill="#9b99b8">First-response SLA met</text>
              <text x="132" y="210" font-size="24" font-weight="700" fill="#6ee7b7">95.0%</text>
              <text x="132" y="236" font-size="11" fill="#9b99b8">150 breaches of 3,000</text>
              <rect x="262" y="152" width="235" height="100" rx="12" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="380" y="176" font-size="12" fill="#9b99b8">First contact resolution</text>
              <text x="380" y="210" font-size="24" font-weight="700" fill="#67e8f9">60.0%</text>
              <text x="380" y="236" font-size="11" fill="#9b99b8">1,758 of 2,930 solved</text>
              <rect x="509" y="152" width="235" height="100" rx="12" fill="#1f1f44" stroke="#ec4899"/>
              <text x="627" y="176" font-size="12" fill="#9b99b8">CSAT</text>
              <text x="627" y="210" font-size="24" font-weight="700" fill="#f9a8d4">85.0%</text>
              <text x="627" y="236" font-size="11" fill="#9b99b8">748 happy of 880 replies</text>
            </g>
          </svg>
          <figcaption>Six numbers give Deepa a quick picture of the month. Each one needs a clear definition, or people will read it differently.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Six metrics and how to calculate them</h3>
          <p>In August, LedgerLite got 3,000 new tickets and solved 2,930. Here is how each metric works, with its August value.</p>
          <table class="lc-table">
            <thead><tr><th>Metric</th><th>What it means</th><th>How to calculate</th><th>August</th></tr></thead>
            <tbody>
              <tr><td><strong>First response time (FRT)</strong></td><td>How long a customer waits for the first reply from a person.</td><td>First human reply time minus ticket creation time. Automatic "we got your email" messages do not count.</td><td>Median 2 h 10 min (email), 3 min (chat)</td></tr>
              <tr><td><strong>Resolution time</strong></td><td>How long it takes to solve a ticket.</td><td>Time solved minus time created.</td><td>Median 28 h, average 41 h</td></tr>
              <tr><td><strong>Backlog</strong></td><td>Open tickets not yet solved.</td><td>Start backlog + new tickets − solved tickets.</td><td>410 + 3,000 − 2,930 = 480</td></tr>
              <tr><td><strong>SLA met rate</strong></td><td>SLA (service level agreement) means a promised time, such as "first reply within 4 hours". This is the share of tickets that met it.</td><td>Tickets that met the target ÷ all tickets measured × 100.</td><td>2,850 ÷ 3,000 = 95.0% (150 breaches)</td></tr>
              <tr><td><strong>First contact resolution (FCR)</strong></td><td>Tickets solved in the first reply or the first call, with no follow-up.</td><td>Tickets solved on first contact ÷ all solved tickets × 100.</td><td>1,758 ÷ 2,930 = 60.0%</td></tr>
              <tr><td><strong>CSAT</strong></td><td>Customer satisfaction. Customers rate the help, often from 1 to 5.</td><td>Ratings of 4 or 5 ÷ all ratings received × 100.</td><td>748 ÷ 880 = 85.0%</td></tr>
            </tbody>
          </table>
          <p>A <strong>breach</strong> is a ticket that missed its SLA target. The backlog grew by 70 tickets in August (480 − 410). That is an early warning. If it keeps growing, reply times will get worse.</p>
          <p>Note the CSAT base. Only 880 of the 2,930 solved tickets got a survey reply. That is about 30%. Very happy or very unhappy customers may be more likely to answer. So treat CSAT as a signal, not the full truth.</p>
        </div>
        <div class="lc-card">
          <h3>Median or average?</h3>
          <p>The <strong>average</strong> (mean) adds all values and divides by how many there are. The <strong>median</strong> is the middle value when you sort them. One very slow ticket can pull the average up a lot. The median shows the normal customer's wait better.</p>
          <p>Here are the first response times of five LedgerLite emails:</p>
          <pre><code>20 min, 45 min, 90 min, 120 min, 660 min (sent after 7 pm on Saturday, answered at 10 am on Tuesday)

        Average = (20 + 45 + 90 + 120 + 660) ÷ 5 = 935 ÷ 5 = 187 min (3 h 7 min)
        Median  = the middle value of the sorted list  = 90 min (1 h 30 min)</code></pre>
          <p>Four of five customers waited 2 hours or less. The average says 3 hours because of one weekend email. Report both, and look at the slow tickets on their own.</p>
          <p>Also decide if you count <strong>business hours</strong> (LedgerLite: Monday to Saturday, 9 am to 7 pm) or all hours. Most helpdesks can report both. Write your choice on the report.</p>
        </div>
        <div class="lc-card">
          <h3>SLA breaches by priority</h3>
          <p>LedgerLite's first-response targets are in business hours: P1 30 minutes, P2 2 hours, P3 4 hours, P4 1 business day. The goal is to meet the target on at least 95% of tickets (98% for P1).</p>
          <table class="lc-table">
            <thead><tr><th>Priority</th><th>Tickets</th><th>Breaches</th><th>SLA met</th><th>Goal met?</th></tr></thead>
            <tbody>
              <tr><td>P1 Urgent</td><td>60</td><td>3</td><td>57 ÷ 60 = 95.0%</td><td>No (goal 98%)</td></tr>
              <tr><td>P2 High</td><td>450</td><td>36</td><td>414 ÷ 450 = 92.0%</td><td>No</td></tr>
              <tr><td>P3 Normal</td><td>1,740</td><td>87</td><td>1,653 ÷ 1,740 = 95.0%</td><td>Yes, just</td></tr>
              <tr><td>P4 Low</td><td>750</td><td>24</td><td>726 ÷ 750 = 96.8%</td><td>Yes</td></tr>
              <tr><td><strong>All</strong></td><td><strong>3,000</strong></td><td><strong>150</strong></td><td><strong>2,850 ÷ 3,000 = 95.0%</strong></td><td>Overall yes</td></tr>
            </tbody>
          </table>
          <p>The overall number looks fine. But the most urgent tickets missed their goal. Always break a metric down before you celebrate it.</p>
          <p>In a spreadsheet export with one row per ticket, simple formulas give these numbers. Suppose column E has first response minutes, G has "Yes" or "No" for SLA met, and H has CSAT scores:</p>
          <pre><code>Median FRT:    =MEDIAN(E2:E3001)
        Average FRT:   =AVERAGE(E2:E3001)
        Breaches:      =COUNTIF(G2:G3001,"No")
        SLA met rate:  =COUNTIF(G2:G3001,"Yes")/COUNTA(G2:G3001)
        CSAT:          =COUNTIF(H2:H3001,"&gt;=4")/COUNT(H2:H3001)</code></pre>
          <p>COUNT only counts cells with numbers, so blank CSAT cells (no survey reply) are left out. That is correct. Format the result cells as percentages.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: Deepa's monthly report with AI</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="tool" data-label="Spreadsheet">Deepa exports August's tickets from the helpdesk. She removes customer names and emails. She counts breaches by priority with COUNTIF.</li>
              <li data-kind="result" data-label="Her table">P1 57 of 60 met. P2 414 of 450. P3 1,653 of 1,740. P4 726 of 750.</li>
              <li data-kind="user" data-label="Deepa's prompt">"Here is our SLA table for August. Write a short summary for my manager. Give the overall SLA met rate and the two biggest concerns."</li>
              <li data-kind="answer" data-label="AI draft">"Overall, 94.7% of tickets met the SLA. The main concerns are P2 (92.0%) and P1 (95.0%)..."</li>
              <li data-kind="warn" data-label="Wrong number">94.7% is the simple average of the four percentages. But P3 has 1,740 tickets and P1 has only 60. Averaging percentages gives small groups too much weight.</li>
              <li data-kind="check" data-label="Deepa recalculates">Total met ÷ total tickets = 2,850 ÷ 3,000 = 95.0%. She corrects the draft and checks the other numbers against her sheet.</li>
              <li data-kind="answer" data-label="Final summary">"95.0% of tickets met the first-response SLA. P1 (95.0%, goal 98%) and P2 (92.0%) missed their goals. The backlog grew from 410 to 480."</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Give AI a small sample of tickets and ask it to calculate the metrics with its working. Then check its answers against the checklist below.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a support analyst at [LedgerLite, an accounting software company]. Calculate metrics for these 10 solved tickets. Show your working for every number.

        First-response SLA targets (business minutes): P1 30, P2 120, P3 240, P4 600.
        FCR = solved with exactly 1 agent reply. CSAT = share of scores that are 4 or 5. "-" means no survey reply.

        ID | Priority | First reply (min) | Agent replies | CSAT
        LL-30101 | P2 | 95 | 1 | 5
        LL-30102 | P3 | 310 | 2 | 3
        LL-30103 | P1 | 25 | 3 | 4
        LL-30104 | P4 | 480 | 1 | -
        LL-30105 | P3 | 150 | 1 | 5
        LL-30106 | P2 | 140 | 2 | 2
        LL-30107 | P3 | 60 | 1 | 4
        LL-30108 | P4 | 700 | 1 | 5
        LL-30109 | P3 | 200 | 4 | -
        LL-30110 | P2 | 45 | 1 | 4

        Give: 1) median and average first response time; 2) SLA breaches (list the IDs) and the SLA met rate; 3) FCR rate; 4) CSAT and how many ratings it is based on; 5) two sentences for a team lead, plus one warning about small samples; 6) spreadsheet formulas to check each number.</pre>
            <ul class="ai-try-checks">
              <li>Median is 145 min. Average is 220.5 min.</li>
              <li>3 breaches (LL-30102, LL-30106, LL-30108), so 70% met.</li>
              <li>FCR is 6 of 10 = 60%.</li>
              <li>CSAT is 6 of 8 ratings = 75%, not 6 of 10.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A metric is only useful when everyone agrees how it is calculated. Use the median for wait times, break numbers down by priority and channel, and let the spreadsheet do the maths. AI can explain the numbers, but you check them.
        </div>
      HTML
      starter_code: nil
    },
    4 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-cs">Customer Support</div>
          <h1 class="lc-title">Designing Ticket Categories and Tags</h1>
        </div>
        <p class="lc-lead">A <strong>tag</strong> is a label that says what a ticket is about, such as <code>refund</code> or <code>bank-sync</code>. Good tags let you route tickets, count problems and find root causes. Bad tags make every report useless. In this lesson you will learn how to design a short, clear tag list and a tagging guide. You will see LedgerLite's tag list, and use AI to draft a list from real ticket subjects. AI can only tag well if your list is clear, so this work comes first.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 275" role="img" aria-label="Before and after. Before: 47 messy tags, such as billing, Billing issue, payment, Payment Issue, pymnt-fail, urgent, angry, misc, other and other2. The same topic has many names, and priority and channel are saved as tags. After: 11 topic tags, one per ticket, plus 3 optional flags: vip, churn-risk and privacy-request. Priority, channel and team are fields, not tags.">
            <defs><marker id="tm4a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="11.5" fill="#e2e0f0" text-anchor="middle">
              <rect x="15" y="10" width="350" height="255" rx="12" fill="#1f1f44" stroke="#ec4899"/>
              <text x="190" y="34" font-size="13" font-weight="700" fill="#f9a8d4">Before: 47 tags</text>
              <rect x="30" y="50" width="62" height="24" rx="12" fill="#27274e" stroke="#ec4899"/><text x="61" y="66">billing</text>
              <rect x="100" y="50" width="102" height="24" rx="12" fill="#27274e" stroke="#ec4899"/><text x="151" y="66">Billing issue</text>
              <rect x="210" y="50" width="62" height="24" rx="12" fill="#27274e" stroke="#ec4899"/><text x="241" y="66">payment</text>
              <rect x="30" y="82" width="82" height="24" rx="12" fill="#27274e" stroke="#ec4899"/><text x="71" y="98">pymnt-fail</text>
              <rect x="120" y="82" width="56" height="24" rx="12" fill="#27274e" stroke="#ec4899"/><text x="148" y="98">urgent</text>
              <rect x="184" y="82" width="49" height="24" rx="12" fill="#27274e" stroke="#ec4899"/><text x="208.5" y="98">angry</text>
              <rect x="241" y="82" width="102" height="24" rx="12" fill="#27274e" stroke="#ec4899"/><text x="292" y="98">Payment Issue</text>
              <rect x="30" y="114" width="42" height="24" rx="12" fill="#27274e" stroke="#ec4899"/><text x="51" y="130">misc</text>
              <rect x="80" y="114" width="42" height="24" rx="12" fill="#27274e" stroke="#ec4899"/><text x="101" y="130">bank</text>
              <rect x="130" y="114" width="75" height="24" rx="12" fill="#27274e" stroke="#ec4899"/><text x="167.5" y="130">bank-feed</text>
              <rect x="213" y="114" width="82" height="24" rx="12" fill="#27274e" stroke="#ec4899"/><text x="254" y="130">sync-error</text>
              <rect x="303" y="114" width="49" height="24" rx="12" fill="#27274e" stroke="#ec4899"/><text x="327.5" y="130">email</text>
              <rect x="30" y="146" width="49" height="24" rx="12" fill="#27274e" stroke="#ec4899"/><text x="54.5" y="162">other</text>
              <rect x="87" y="146" width="56" height="24" rx="12" fill="#27274e" stroke="#ec4899"/><text x="115" y="162">other2</text>
              <rect x="151" y="146" width="42" height="24" rx="12" fill="#27274e" stroke="#ec4899"/><text x="172" y="162">help</text>
              <rect x="201" y="146" width="69" height="24" rx="12" fill="#27274e" stroke="#ec4899"/><text x="235.5" y="162">urgent!!</text>
              <rect x="278" y="146" width="36" height="24" rx="12" fill="#27274e" stroke="#ec4899"/><text x="296" y="162">GST</text>
              <text x="190" y="196" fill="#9b99b8">+ 30 more tags</text>
              <text x="190" y="224" font-size="12">One topic, many names</text>
              <text x="190" y="246" font-size="12">Priority and channel saved as tags</text>
              <line x1="367" y1="137" x2="391" y2="137" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#tm4a)"/>
              <rect x="395" y="10" width="350" height="255" rx="12" fill="#1f1f44" stroke="#10b981"/>
              <text x="570" y="34" font-size="13" font-weight="700" fill="#6ee7b7">After: 11 topics + 3 flags</text>
              <text x="410" y="58" text-anchor="start" fill="#67e8f9">Topic: exactly one per ticket</text>
              <rect x="410" y="66" width="56" height="24" rx="12" fill="#27274e" stroke="#22d3ee"/><text x="438" y="82">how-to</text>
              <rect x="474" y="66" width="75" height="24" rx="12" fill="#27274e" stroke="#22d3ee"/><text x="511.5" y="82">bank-sync</text>
              <rect x="557" y="66" width="95" height="24" rx="12" fill="#27274e" stroke="#22d3ee"/><text x="604.5" y="82">login-access</text>
              <rect x="660" y="66" width="62" height="24" rx="12" fill="#27274e" stroke="#22d3ee"/><text x="691" y="82">billing</text>
              <rect x="410" y="96" width="89" height="24" rx="12" fill="#27274e" stroke="#22d3ee"/><text x="454.5" y="112">gst-reports</text>
              <rect x="507" y="96" width="75" height="24" rx="12" fill="#27274e" stroke="#22d3ee"/><text x="544.5" y="112">invoicing</text>
              <rect x="590" y="96" width="89" height="24" rx="12" fill="#27274e" stroke="#22d3ee"/><text x="634.5" y="112">data-import</text>
              <rect x="687" y="96" width="36" height="24" rx="12" fill="#27274e" stroke="#22d3ee"/><text x="705" y="112">bug</text>
              <rect x="410" y="126" width="115" height="24" rx="12" fill="#27274e" stroke="#22d3ee"/><text x="467.5" y="142">account-changes</text>
              <rect x="533" y="126" width="56" height="24" rx="12" fill="#27274e" stroke="#22d3ee"/><text x="561" y="142">refund</text>
              <rect x="597" y="126" width="115" height="24" rx="12" fill="#27274e" stroke="#22d3ee"/><text x="654.5" y="142">feature-request</text>
              <text x="410" y="178" text-anchor="start" fill="#fcd34d">Flags: zero or more</text>
              <rect x="410" y="186" width="36" height="24" rx="12" fill="#27274e" stroke="#f59e0b"/><text x="428" y="202">vip</text>
              <rect x="454" y="186" width="82" height="24" rx="12" fill="#27274e" stroke="#f59e0b"/><text x="495" y="202">churn-risk</text>
              <rect x="544" y="186" width="115" height="24" rx="12" fill="#27274e" stroke="#f59e0b"/><text x="601.5" y="202">privacy-request</text>
              <text x="570" y="246" font-size="12">Priority, channel and team are fields, not tags</text>
            </g>
          </svg>
          <figcaption>LedgerLite's old tag list had grown to 47 tags. The new list has 11 topics and 3 flags.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Rules for a good tag list</h3>
          <p>Before the clean-up, LedgerLite agents made up tags as they worked. The same problem had five names. A report on "payment problems" missed most of them. Deepa used these rules to rebuild the list.</p>
          <ul class="lc-list">
            <li><strong>One topic tag per ticket.</strong> Each ticket gets exactly one topic. Then your counts add up to your total tickets.</li>
            <li><strong>Keep it short.</strong> About 8 to 15 topics is enough for most teams. Agents cannot remember 47 tags, and AI confuses similar ones.</li>
            <li><strong>No overlaps.</strong> Two tags should never fit the same ticket equally well. If they do, write a rule to decide.</li>
            <li><strong>Topics, not feelings or fields.</strong> Priority, channel and team already have their own fields. "Angry" is a feeling, and it changes during a ticket.</li>
            <li><strong>Use flags for extras.</strong> A <strong>flag</strong> is an optional extra label that sits on top of the topic, such as <code>vip</code>.</li>
            <li><strong>Watch the leftovers.</strong> Some tickets will fit no tag well. If they grow above about 5% of tickets, you are missing a topic.</li>
            <li><strong>One owner.</strong> Only the team lead adds or changes tags. Agents suggest new ones.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>LedgerLite's tag list and tagging guide</h3>
          <p>A <strong>tagging guide</strong> explains each tag with a definition and examples. People and AI both use it. Here is LedgerLite's list, with August's ticket counts.</p>
          <table class="lc-table">
            <thead><tr><th>Tag</th><th>Use it when</th><th>Not for</th><th>Team</th><th>August</th></tr></thead>
            <tbody>
              <tr><td><code>how-to</code></td><td>The customer asks how to use a feature.</td><td>Something is broken (use the problem's tag)</td><td>General Support</td><td>690</td></tr>
              <tr><td><code>bank-sync</code></td><td>Bank feeds do not import, repeat, or show an error.</td><td>"How do I match entries?" (<code>how-to</code>)</td><td>Technical Support</td><td>540</td></tr>
              <tr><td><code>login-access</code></td><td>Cannot log in, OTP or password problems, user permissions.</td><td>Changing the plan (<code>account-changes</code>)</td><td>General Support</td><td>420</td></tr>
              <tr><td><code>billing</code></td><td>LedgerLite's own charges, invoices, failed payments.</td><td>Asking for money back (<code>refund</code>)</td><td>Billing Desk</td><td>360</td></tr>
              <tr><td><code>gst-reports</code></td><td>GST reports are wrong or will not export.</td><td>GST on LedgerLite's own invoice (<code>billing</code>)</td><td>Technical Support</td><td>330</td></tr>
              <tr><td><code>invoicing</code></td><td>Problems with the customer's own sales invoices or e-invoices.</td><td>LedgerLite's invoice to them (<code>billing</code>)</td><td>Technical Support</td><td>240</td></tr>
              <tr><td><code>data-import</code></td><td>Importing data from Tally, Excel or other software.</td><td>Bank feeds (<code>bank-sync</code>)</td><td>Technical Support</td><td>150</td></tr>
              <tr><td><code>bug</code></td><td>Something is broken and no topic above fits, such as a crash.</td><td>Bank feed errors (<code>bank-sync</code>)</td><td>Technical Support</td><td>120</td></tr>
              <tr><td><code>account-changes</code></td><td>Plan changes, company details, cancellation.</td><td>Login problems (<code>login-access</code>)</td><td>General Support</td><td>90</td></tr>
              <tr><td><code>refund</code></td><td>The customer asks for money back.</td><td>Questions about a charge (<code>billing</code>)</td><td>Billing Desk</td><td>30</td></tr>
              <tr><td><code>feature-request</code></td><td>The customer asks for something the product does not do.</td><td>A feature that exists (<code>how-to</code>)</td><td>General Support</td><td>30</td></tr>
            </tbody>
          </table>
          <p>The counts add up to 3,000, because every ticket has exactly one topic. The three flags are <code>vip</code> (Enterprise plan customer), <code>churn-risk</code> (the customer says they may leave) and <code>privacy-request</code> (the customer asks to see, correct or delete their personal data).</p>
          <p>The guide also has <strong>tie-break rules</strong> for tickets that seem to fit two tags:</p>
          <ul class="lc-list">
            <li>Money back is always <code>refund</code>, even when a billing error caused it.</li>
            <li>Bank feed errors are always <code>bank-sync</code>. Technical Support decides later if it is a bug for Engineering.</li>
            <li>"I want to cancel" is <code>account-changes</code> plus the <code>churn-risk</code> flag.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>How AI helps you design tags</h3>
          <p>AI is good at reading hundreds of ticket subjects and grouping similar ones. It can suggest names, write definitions and find overlaps. You still decide the final list, because you know your teams and your reports.</p>
          <pre><code>Weak prompt:
        Make tags for my support tickets.

        Better prompt:
        Here are 200 ticket subjects from last month (names removed).
        Group them into 8 to 12 topics. Each ticket must fit exactly
        one topic. For each topic give a short lowercase name, a
        one-line definition, 2 examples and a count. List subjects
        that fit no topic. Do not use priority, channel or feelings
        as topics.</code></pre>
          <p>Check the AI's work. Read 20 subjects from each group yourself. Look for groups that are too wide, such as "technical issues". Look for groups that are really the same topic. And check the counts in a spreadsheet, because AI often miscounts long lists.</p>
          <p>Remove customer names, emails and phone numbers first. Do this before you paste subjects into any AI tool your company has not approved.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: clean up the old tags</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">These tags come from LedgerLite's old list. What should Deepa do with each one?</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="keep" data-label="Keep as a topic tag"></div>
              <div data-sorter-target="bucket" data-bucket="field" data-label="Make it a field or flag"></div>
              <div data-sorter-target="bucket" data-bucket="merge" data-label="Merge or remove"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="keep" data-why="A clear topic with its own team and enough tickets to track.">gst-reports</li>
              <li data-bucket="keep" data-why="A clear topic. It also needs a special team, because money leaves the company.">refund</li>
              <li data-bucket="field" data-why="Urgency belongs in the priority field. A tag cannot drive SLA timers or queues well.">urgent</li>
              <li data-bucket="field" data-why="The helpdesk already records the channel. A tag repeats it and can disagree with it.">email</li>
              <li data-bucket="field" data-why="VIP is extra information that sits on top of any topic, so it is a flag.">vip</li>
              <li data-bucket="merge" data-why="It means the same as billing. Two names split your counts in half.">Billing issue</li>
              <li data-bucket="merge" data-why="A feeling is not a topic. It changes during the ticket. Some tools track sentiment separately.">angry</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to draft a tag list and tagging guide from ticket subjects. Use the sample below, or paste your own subjects with all personal details removed.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a support operations expert. Help me design ticket tags for [LedgerLite, accounting software for small businesses in India]. Here are recent ticket subjects:
        1. Bank feed stopped updating since Monday
        2. How do I add my CA as a user?
        3. Charged twice for annual plan
        4. OTP not received, cannot log in
        5. GSTR-1 totals do not match my invoices
        6. Bought wrong plan, want money back
        7. Tally import stuck at 60%
        8. E-invoice IRN not generating
        9. Please add dark mode
        10. App crashes when I open Reports
        11. How to record a cash expense?
        12. Cancel my subscription
        13. Bank transactions showing twice after sync
        14. Need GST invoice for my subscription
        15. Excel import error on row 12
        16. Delete all my data, closing business

        Tasks:
        1. Suggest 6 to 10 topic tags (lowercase, hyphens). Each ticket gets exactly one.
        2. For each tag: a one-line definition, one "use it for" and one "not for" example.
        3. A table assigning every subject to a tag. Mark unclear ones.
        4. Up to 3 optional flags.
        5. Tag pairs agents may confuse, with a rule to decide.
        Do not use priority, channel or feelings as tags.</pre>
            <ul class="ai-try-checks">
              <li>All 16 subjects have exactly one tag.</li>
              <li>"Charged twice" and "want money back" are handled by a clear rule.</li>
              <li>"Bank transactions showing twice" is not a vague "technical" tag.</li>
              <li>"Delete all my data" gets a privacy flag or note, not just "cancel".</li>
              <li>No tag is too wide, such as "general" or "issues".</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A short list with clear definitions beats a long list every time. Give each ticket one topic, put extras in flags, and keep priority and channel in their own fields. Clear tags make AI tagging, routing and reports work.
        </div>
      HTML
      starter_code: nil
    },
    5 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-cs">Customer Support</div>
          <h1 class="lc-title">Tagging Tickets with AI</h1>
        </div>
        <p class="lc-lead">Once you have a clear tag list, AI can tag most tickets in seconds. But you must know how often it is right before you trust it. In this lesson you will write a tagging prompt with a label list and examples. You will test the AI on a sample of real tickets and measure its accuracy. Then you will fix the most common mistakes. You will follow Deepa as she tests AI tagging for LedgerLite's 3,000 tickets a month.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 270" role="img" aria-label="A testing loop. Write a tag guide with examples. AI tags 100 sample tickets. A person tags the same 100 without seeing the AI's answers. Compare them to get accuracy and common mix-ups. Fix the guide, then re-test. Repeat until accuracy meets the goal. Round 1 had 87 of 100 correct. Round 2, on a new sample, had 94 of 100. After that, AI sets tags and people spot-check 20 tickets a week.">
            <defs><marker id="tm5a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="15" y="30" width="130" height="62" rx="10" fill="#27274e" stroke="#22d3ee"/>
              <text x="80" y="56" font-weight="700">Tag guide</text>
              <text x="80" y="76" font-size="11.5" fill="#9b99b8">+ examples</text>
              <rect x="165" y="30" width="130" height="62" rx="10" fill="#27274e" stroke="#8b5cf6"/>
              <text x="230" y="56" font-weight="700">AI tags</text>
              <text x="230" y="76" font-size="11.5" fill="#9b99b8">100 tickets</text>
              <rect x="315" y="30" width="130" height="62" rx="10" fill="#27274e" stroke="#3b82f6"/>
              <text x="380" y="56" font-weight="700">Person tags</text>
              <text x="380" y="76" font-size="11.5" fill="#9b99b8">same 100, blind</text>
              <rect x="465" y="30" width="130" height="62" rx="10" fill="#27274e" stroke="#f59e0b"/>
              <text x="530" y="56" font-weight="700">Compare</text>
              <text x="530" y="76" font-size="11.5" fill="#9b99b8">accuracy, mix-ups</text>
              <rect x="615" y="30" width="130" height="62" rx="10" fill="#27274e" stroke="#ec4899"/>
              <text x="680" y="56" font-weight="700">Fix the guide</text>
              <text x="680" y="76" font-size="11.5" fill="#9b99b8">then re-test</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#tm5a)">
                <line x1="147" y1="61" x2="161" y2="61"/>
                <line x1="297" y1="61" x2="311" y2="61"/>
                <line x1="447" y1="61" x2="461" y2="61"/>
                <line x1="597" y1="61" x2="611" y2="61"/>
                <path d="M680,94 L680,126 L230,126 L230,98"/>
              </g>
              <text x="455" y="148" font-size="11.5" fill="#9b99b8">repeat until accuracy meets your goal</text>
              <rect x="15" y="170" width="730" height="84" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="380" y="196">Round 1: 87 of 100 match = 87%   ·   Round 2 (new sample): 94 of 100 = 94%</text>
              <text x="380" y="220" font-weight="700" fill="#6ee7b7">Goal met (90% or more): AI sets tags for most topics</text>
              <text x="380" y="242" font-size="12" fill="#9b99b8">People still spot-check 20 tickets a week, and Billing checks every refund tag.</text>
            </g>
          </svg>
          <figcaption>Test AI tagging like a new employee: give it a guide, check its work on a sample, coach it, and check again.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Write a good tagging prompt</h3>
          <p>Many helpdesks (such as Freshdesk, Zendesk and Zoho Desk) now have built-in AI that suggests or sets ticket fields. Features and setup differ, so check your tool's current help pages. Either way, the AI needs the same things a new agent needs: the tag list, clear definitions and examples.</p>
          <pre><code>Weak prompt:
        What tag should this ticket have?

        Better prompt:
        You tag support tickets for LedgerLite, an accounting app.
        Choose exactly ONE tag from this list. Never invent a new tag.
          bank-sync: bank feeds do not import, repeat or show an error
          billing: LedgerLite's own charges, invoices, failed payments
          refund: the customer asks for money back
          ... (all 11 tags from the tagging guide)
        Rules: Money back is always refund. Bank feed errors are
        always bank-sync, even if they look like a bug.
        Examples:
          "Paid twice, return the extra ₹11,800" -&gt; refund
          "Feed shows error BF-102 since the update" -&gt; bank-sync
        If no tag fits well, answer needs-review.
        Output one line per ticket: ID | tag | confidence (high,
        medium or low) | reason in 10 words or less.</code></pre>
          <p>Each part has a job. The <strong>label list</strong> stops the AI from inventing tags. The <strong>rules</strong> handle tickets that seem to fit two tags. The <strong>examples</strong> show hard cases. The <strong>reason</strong> helps you see why it chose a tag. And <code>needs-review</code> gives the AI a safe way to say "I am not sure", so it does not guess.</p>
          <p>AI's own "confidence" is only a hint. Low-confidence tickets are worth checking. But high confidence does not prove the tag is right, so you still test.</p>
        </div>
        <div class="lc-card">
          <h3>Check accuracy on a sample</h3>
          <p><strong>Accuracy</strong> is the share of tickets where the AI's tag matches the correct tag. To find it, you need a correct answer for each ticket. Deepa did it like this:</p>
          <ul class="lc-list">
            <li>She picked 100 tickets from last month and removed names, emails and phone numbers.</li>
            <li>Most were random. But she made sure small tags, such as <code>refund</code>, had at least 5 tickets each. A purely random 100 might hold only one refund ticket.</li>
            <li>Kavya, an experienced agent, tagged all 100 with the guide. She did not see the AI's tags. This is a <strong>blind</strong> check.</li>
            <li>The AI tagged the same 100 tickets.</li>
            <li>In a spreadsheet, she compared them. If column C is Kavya's tag and D is the AI's tag, <code>=IF(C2=D2,"Yes","No")</code> marks each match. <code>=COUNTIF(E2:E101,"Yes")</code> counts them.</li>
          </ul>
          <p>Result: 87 of 100 matched, so accuracy was 87 ÷ 100 = 87%. LedgerLite's goal is 90% before AI sets tags on its own. The 13 misses were not random:</p>
          <table class="lc-table">
            <thead><tr><th>Correct tag</th><th>AI said</th><th>Tickets</th><th>Fix</th></tr></thead>
            <tbody>
              <tr><td><code>bank-sync</code></td><td><code>bug</code></td><td>6</td><td>Add the rule "bank feed errors are always bank-sync" and two examples.</td></tr>
              <tr><td><code>refund</code></td><td><code>billing</code></td><td>4</td><td>Add the rule "money back is always refund" and a Hinglish example: "paise wapas chahiye".</td></tr>
              <tr><td><code>login-access</code></td><td><code>how-to</code></td><td>3</td><td>Example: "How do I reset my password? The link expired" is login-access.</td></tr>
              <tr><td colspan="2"><strong>Total misses</strong></td><td><strong>13</strong></td><td>100 − 13 = 87 correct</td></tr>
            </tbody>
          </table>
          <p>Look at each tag, not just the total. The sample had 6 refund tickets, and the AI got only 2 right. That is 33%, even though the total was 87%. A wrong <code>refund</code> tag sends money questions to the wrong team.</p>
        </div>
        <div class="lc-card">
          <h3>Fix wrong tags and go live safely</h3>
          <ul class="lc-list">
            <li><strong>Fix the guide, not only the ticket.</strong> Every repeated mistake needs a new rule or example. Deepa added the three fixes above.</li>
            <li><strong>Re-test on a new sample.</strong> Do not re-use the same 100 tickets, or you only test what you just fixed. Round 2 on 100 new tickets: 94 matched (94%).</li>
            <li><strong>Start with suggestions.</strong> For two weeks, AI suggests a tag and agents accept or change it. The <strong>correction rate</strong> (changed tags ÷ all AI tags) shows how it works on live tickets.</li>
            <li><strong>Automate step by step.</strong> Let AI set tags alone for strong topics. Keep a person checking risky ones, such as <code>refund</code> and the <code>privacy-request</code> flag.</li>
            <li><strong>Keep checking.</strong> Spot-check 20 random tickets a week. Re-test after any change: a new tag, a new product feature or a tool update.</li>
            <li><strong>Watch <code>needs-review</code>.</strong> If it grows, customers may have a new problem that no tag covers.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Activity: Deepa tests AI tagging</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="thought" data-label="The plan">Deepa wants AI to tag all new tickets. First she must know how often it is right. She plans a blind test on 100 tickets.</li>
              <li data-kind="tool" data-label="Helpdesk export">She exports 100 tickets from last month into a spreadsheet, with at least 5 for each small tag. She removes personal details. Kavya tags them with the guide.</li>
              <li data-kind="user" data-label="Deepa's prompt">She pastes the tagging prompt, with all 11 tags and definitions, and the 100 tickets. She asks for ID, tag, confidence and reason.</li>
              <li data-kind="answer" data-label="AI tags">"LL-20452 | bug | high | error message after bank update". "LL-20467 | billing | medium | payment charged twice"...</li>
              <li data-kind="result" data-label="Spreadsheet">87 of 100 match Kavya's tags. Accuracy is 87%, below the 90% goal.</li>
              <li data-kind="warn" data-label="Pattern in the misses">6 bank feed errors were tagged <code>bug</code>. 4 refund requests were tagged <code>billing</code>. One says "paise wapas chahiye" (Hindi: "I want my money back").</li>
              <li data-kind="check" data-label="Fix and re-test">Deepa adds two tie-break rules and four examples. On 100 new tickets, 94 match. She starts with suggestions only and spot-checks every week.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Test an AI on six tricky tickets. Decide your own answers first, then compare them with the AI's tags.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You tag support tickets for [LedgerLite, an accounting software company for small businesses]. Choose exactly ONE tag per ticket from this list. Never invent a new tag.
        - bank-sync: bank feeds do not import, repeat or show an error
        - bug: something is broken and no other tag fits
        - billing: our own charges, invoices and failed payments
        - refund: the customer asks for money back
        - login-access: cannot log in, OTP or password problems
        - how-to: the customer asks how to use a feature

        Rules: Money back is always refund. Bank feed errors are always bank-sync. If no tag fits well, answer needs-review.

        Tickets:
        T1: Paid ₹11,800 twice this morning. Please return the extra.
        T2: Bank feed shows error BF-102 since yesterday.
        T3: Reports page is blank for all our users after the update.
        T4: Why is there 18% GST on my LedgerLite invoice?
        T5: OTP arrives only after it has expired.
        T6: How do I match a bank entry to a sales invoice?
        [Add your own tricky tickets here, with personal details removed.]

        Output a table: Ticket | Tag | Confidence (high, medium or low) | Reason (10 words or less). Then list any ticket you found hard, and say what rule or example would help.</pre>
            <ul class="ai-try-checks">
              <li>T1 is refund, not billing.</li>
              <li>T2 is bank-sync and T3 is bug.</li>
              <li>T6 is how-to, not bank-sync. Nothing is broken.</li>
              <li>Every ticket has one tag from the list, or needs-review.</li>
              <li>The suggested rules would really help an agent decide.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Never trust AI tagging you have not measured. Test it blind on a sample, look at the mix-ups by tag, fix the guide and test again. Then keep spot-checking, because tickets and products change.
        </div>
      HTML
      starter_code: nil
    },
    6 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-cs">Customer Support</div>
          <h1 class="lc-title">Setting Priority and Urgency</h1>
        </div>
        <p class="lc-lead"><strong>Priority</strong> tells your team which ticket to work on first. If priority is wrong, a customer with a tax deadline waits behind a question about logos. In this lesson you will learn to set priority from two things: <strong>impact</strong> and <strong>urgency</strong>. You will use LedgerLite's priority matrix and add rules for VIP customers, security and legal threats. You will work out when a reply is due. You will also learn to let AI suggest a priority with reasons, while a person confirms the most urgent tickets.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 280" role="img" aria-label="LedgerLite's priority matrix. Rows are impact: high, medium and low. Columns are urgency: high, medium and low. High impact and high urgency is P1 Urgent. High impact with medium urgency, or medium impact with high urgency, is P2 High. The middle diagonal is P3 Normal. Low combinations are P4 Low. Next to the matrix, override rules: a security issue or data leak is always P1, wrong tax data for many customers is P1, the vip flag raises priority one level but never above P1, and legal threats also go to Deepa. A person confirms every P1.">
            <defs><marker id="tm6a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="290" y="24" font-weight="700" fill="#67e8f9">Urgency: how soon harm happens</text>
              <rect x="120" y="36" width="110" height="30" rx="6" fill="#27274e"/>
              <text x="175" y="56" font-size="12">High urgency</text>
              <rect x="235" y="36" width="110" height="30" rx="6" fill="#27274e"/>
              <text x="290" y="56" font-size="12">Medium urgency</text>
              <rect x="350" y="36" width="110" height="30" rx="6" fill="#27274e"/>
              <text x="405" y="56" font-size="12">Low urgency</text>
              <rect x="15" y="72" width="100" height="50" rx="6" fill="#27274e"/>
              <text x="65" y="102" font-size="12">High impact</text>
              <rect x="15" y="127" width="100" height="50" rx="6" fill="#27274e"/>
              <text x="65" y="157" font-size="12">Medium impact</text>
              <rect x="15" y="182" width="100" height="50" rx="6" fill="#27274e"/>
              <text x="65" y="212" font-size="12">Low impact</text>
              <rect x="120" y="72" width="110" height="50" rx="6" fill="#1f1f44" stroke="#ec4899" stroke-width="2"/>
              <text x="175" y="102" font-weight="700" fill="#f9a8d4">P1 Urgent</text>
              <rect x="235" y="72" width="110" height="50" rx="6" fill="#1f1f44" stroke="#f59e0b" stroke-width="2"/>
              <text x="290" y="102" font-weight="700" fill="#fcd34d">P2 High</text>
              <rect x="350" y="72" width="110" height="50" rx="6" fill="#1f1f44" stroke="#3b82f6" stroke-width="2"/>
              <text x="405" y="102" font-weight="700" fill="#93c5fd">P3 Normal</text>
              <rect x="120" y="127" width="110" height="50" rx="6" fill="#1f1f44" stroke="#f59e0b" stroke-width="2"/>
              <text x="175" y="157" font-weight="700" fill="#fcd34d">P2 High</text>
              <rect x="235" y="127" width="110" height="50" rx="6" fill="#1f1f44" stroke="#3b82f6" stroke-width="2"/>
              <text x="290" y="157" font-weight="700" fill="#93c5fd">P3 Normal</text>
              <rect x="350" y="127" width="110" height="50" rx="6" fill="#1f1f44" stroke="#10b981" stroke-width="2"/>
              <text x="405" y="157" font-weight="700" fill="#6ee7b7">P4 Low</text>
              <rect x="120" y="182" width="110" height="50" rx="6" fill="#1f1f44" stroke="#3b82f6" stroke-width="2"/>
              <text x="175" y="212" font-weight="700" fill="#93c5fd">P3 Normal</text>
              <rect x="235" y="182" width="110" height="50" rx="6" fill="#1f1f44" stroke="#10b981" stroke-width="2"/>
              <text x="290" y="212" font-weight="700" fill="#6ee7b7">P4 Low</text>
              <rect x="350" y="182" width="110" height="50" rx="6" fill="#1f1f44" stroke="#10b981" stroke-width="2"/>
              <text x="405" y="212" font-weight="700" fill="#6ee7b7">P4 Low</text>
              <text x="237" y="262" font-size="12" fill="#9b99b8">First reply: P1 30 min · P2 2 h · P3 4 h · P4 1 business day</text>
              <line x1="464" y1="152" x2="486" y2="152" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#tm6a)"/>
              <rect x="490" y="36" width="255" height="196" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="617" y="62" font-weight="700" fill="#f9a8d4">Then apply override rules</text>
              <g text-anchor="start" font-size="12">
                <text x="505" y="92">Security issue or data leak → P1</text>
                <text x="505" y="118">Wrong tax data, many users → P1</text>
                <text x="505" y="144">vip flag → one level higher</text>
                <text x="505" y="162" fill="#9b99b8">(never above P1)</text>
                <text x="505" y="188">Legal threat → also tell Deepa</text>
                <text x="505" y="214">A person confirms every P1</text>
              </g>
              <text x="617" y="262" font-size="12" fill="#9b99b8">Capital letters do not make it urgent</text>
            </g>
          </svg>
          <figcaption>Priority = impact × urgency, then a few override rules. LedgerLite's first-reply targets are in business hours.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Impact and urgency</h3>
          <p>Priority mixes two separate questions. Ask them one at a time.</p>
          <ul class="lc-list">
            <li><strong>Impact</strong> means how much damage the problem does, and to how many customers.</li>
            <li><strong>Urgency</strong> means how soon the damage happens if nobody acts.</li>
          </ul>
          <table class="lc-table">
            <thead><tr><th>Level</th><th>Impact at LedgerLite</th><th>Urgency at LedgerLite</th></tr></thead>
            <tbody>
              <tr><td><strong>High</strong></td><td>Many customers are affected. Or money, a tax filing or data is at risk. Example: a customer was charged ₹11,800 twice.</td><td>Harm within 24 hours. Example: a GST return is due tomorrow, or payroll runs in the morning.</td></tr>
              <tr><td><strong>Medium</strong></td><td>One business is blocked on a key task. Example: a Tally import is stuck.</td><td>Harm within a few days. Example: month-end closing is on Friday.</td></tr>
              <tr><td><strong>Low</strong></td><td>One user, a workaround exists, or it is only a question.</td><td>No deadline at all.</td></tr>
            </tbody>
          </table>
          <p>Then read the result from the matrix in the diagram. For example, LL-20414 (Noor Pharma's GSTR-1 totals are ₹9,000 short) has high impact, because a tax filing is at risk. The filing is due in 2 days, so urgency is medium. High plus medium gives <strong>P2</strong>. If Farhan wrote the same message one day before the deadline, urgency would be high and the ticket would be <strong>P1</strong>.</p>
          <p>Keep P1 rare. In August, LedgerLite had 60 P1, 450 P2, 1,740 P3 and 750 P4 tickets. That is 2%, 15%, 58% and 25% of 3,000. If P1 grows to 10%, the team cannot reply to all of them in 30 minutes. Then "urgent" stops meaning anything. This problem is called <strong>priority inflation</strong>.</p>
        </div>
        <div class="lc-card">
          <h3>Override rules: VIP, security and legal threats</h3>
          <p>A matrix cannot see everything. LedgerLite adds a few <strong>override rules</strong>. These rules change the priority, or add an extra step, whatever the matrix says.</p>
          <ul class="lc-list">
            <li><strong>Security or data leak: always P1.</strong> Examples: "Someone I do not know logged in", or "I got an email from LedgerLite asking for my OTP". The customer may sound calm, but other customers may be at risk too.</li>
            <li><strong>Wrong tax data for many customers: always P1.</strong> One wrong GST report is P2 or P3. Twenty customers with the same wrong report is an incident (a problem that affects many customers at once).</li>
            <li><strong>vip: raise one level.</strong> Enterprise plan customers get the <code>vip</code> flag. A P3 becomes P2. A P1 stays P1, because nothing is above P1.</li>
            <li><strong>Legal threats: tell Deepa.</strong> "Legal notice" or "consumer court" in a message sends a copy to Deepa, the support lead, whatever the priority.</li>
            <li><strong>Safety: a lead acts at once.</strong> If a message mentions any threat to a person's safety, a lead handles it immediately. This is rare, but everyone must know the rule.</li>
          </ul>
          <p>Two more rules stop common mistakes. <strong>Shouting is not urgency.</strong> "URGENT!!!" on a question about invoice logos is still P4. And <strong>calm is not low priority.</strong> A polite message about an unknown login is still P1.</p>
          <p>Priority can also change during a ticket. If three more customers report the same GST problem as Farhan, Vikram raises LL-20414 to P1 and tells Deepa.</p>
        </div>
        <div class="lc-card">
          <h3>Worked example: when is the reply due?</h3>
          <p>LedgerLite measures SLA targets in <strong>business hours</strong>: Monday to Saturday, 9 am to 7 pm. The clock stops at 7 pm and starts again at 9 am on the next working day. An SLA (service level agreement) is the time the team promises to reply or solve.</p>
          <table class="lc-table">
            <thead><tr><th>Ticket</th><th>Arrives</th><th>Priority and target</th><th>Working</th><th>Due</th></tr></thead>
            <tbody>
              <tr><td>LL-20414</td><td>Tue 5:30 pm</td><td>P2: first reply in 2 h</td><td>1 h 30 min on Tuesday (to 7 pm), then 30 min on Wednesday</td><td>Wed 9:30 am</td></tr>
              <tr><td>LL-30111</td><td>Sat 6:00 pm</td><td>P3: first reply in 4 h</td><td>1 h on Saturday. Sunday does not count. 3 h on Monday</td><td>Mon 12:00 pm</td></tr>
              <tr><td>LL-30112</td><td>Mon 11:00 am</td><td>P1: solve in 4 business h</td><td>All 4 hours fit on Monday</td><td>Mon 3:00 pm</td></tr>
              <tr><td>LL-30113</td><td>Thu 3:00 pm</td><td>P4: first reply in 1 business day (10 h)</td><td>4 h on Thursday, then 6 h on Friday</td><td>Fri 3:00 pm</td></tr>
            </tbody>
          </table>
          <p>Your helpdesk calculates these times for you, once you set the business hours and holidays. Check that the settings are right. AI assistants often get business-hour maths wrong, so do not ask AI for due times.</p>
          <p>Also decide what happens to a P1 that arrives at 6:45 pm. Many teams keep one person on call for P1 tickets outside business hours. Decide this before it happens.</p>
        </div>
        <div class="lc-card">
          <h3>Let AI suggest priority, with reasons</h3>
          <p>AI is good at spotting deadlines, the number of people affected and risky words. Ask it for impact and urgency <em>separately</em>, with a reason for each. Then the matrix gives the priority, not the AI's mood.</p>
          <pre><code>Weak prompt:
        Is this ticket urgent?

        Better prompt:
        Rate this ticket for LedgerLite.
        Impact: High, Medium or Low (use our definitions below).
        Urgency: High, Medium or Low (use our definitions below).
        Override check: security, data leak, wrong tax data for many
        customers, vip, legal threat, safety. Say "none" if none apply.
        Give a reason of 12 words or less for each rating.
        Ignore capital letters and exclamation marks.
        If a deadline is unclear, say "deadline unclear".</code></pre>
          <p>In a spreadsheet, a formula can turn the two ratings into a priority. Put the matrix on a sheet called Matrix: impact levels in A2:A4, urgency levels in B1:D1 and priorities in B2:D4. If column C holds impact and column D holds urgency:</p>
          <pre><code>=INDEX(Matrix!$B$2:$D$4, MATCH(C2, Matrix!$A$2:$A$4, 0), MATCH(D2, Matrix!$B$1:$D$1, 0))</code></pre>
          <p>A person must still check some tickets:</p>
          <ul class="lc-list">
            <li>Every P1, before the team starts an incident process.</li>
            <li>Every ticket the AI marks lower than the customer asked for, such as "customer says urgent, AI says P4".</li>
            <li>Every ticket with "deadline unclear". Ask the customer for the date.</li>
            <li>Once a week, the share of tickets at each priority. A jump in P1 may mean an incident, or it may mean the AI or the rules need fixing.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Activity: set the priority</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Use LedgerLite's matrix and override rules. What is the final priority of each ticket?</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="p1" data-label="P1 Urgent"></div>
              <div data-sorter-target="bucket" data-bucket="p2" data-label="P2 High"></div>
              <div data-sorter-target="bucket" data-bucket="p3" data-label="P3 Normal"></div>
              <div data-sorter-target="bucket" data-bucket="p4" data-label="P4 Low"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="p1" data-why="Wrong tax data for many customers is always P1. It is also High impact and High urgency.">23 customers say GSTR-1 totals are wrong since Tuesday's update. Their filing is due tomorrow.</li>
              <li data-bucket="p1" data-why="A possible security issue is always P1, even when the customer sounds calm.">"Someone we do not know logged in and changed our bank details."</li>
              <li data-bucket="p2" data-why="One business is blocked on a key task (Medium impact). Payroll is tomorrow (High urgency). Medium + High = P2.">"Salary slips will not generate. We run payroll tomorrow at 10 am."</li>
              <li data-bucket="p2" data-why="Money is at risk (High impact), but the harm is not within 24 hours (Medium urgency). High + Medium = P2.">"You charged our ₹11,800 annual plan twice. Please fix it."</li>
              <li data-bucket="p3" data-why="One business is blocked (Medium impact) with a deadline next week (Medium urgency). Medium + Medium = P3.">"Tally import stuck at 60%. We want to go live next week."</li>
              <li data-bucket="p3" data-why="A question with no deadline is Low + Low = P4. The vip flag raises it one level to P3.">An Enterprise (vip) customer asks how to set up approval rules. No deadline.</li>
              <li data-bucket="p4" data-why="One user, a simple question and no deadline. Low + Low = P4. Capital letters do not change that.">"URGENT!!! How do I change the logo on my invoices?"</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to set priorities for six tickets using a clear matrix and override rules. Decide your own answers first, then compare.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a support triage lead at [LedgerLite, accounting software]. Set a priority for each ticket.

        Impact: High = many customers, or money, tax filing or data at risk. Medium = one business blocked on a key task. Low = one user, a workaround exists, or a question.
        Urgency: High = harm within 24 hours. Medium = within a few days. Low = no deadline.
        Matrix (impact + urgency): H+H P1, H+M P2, H+L P3, M+H P2, M+M P3, M+L P4, L+H P3, L+M P4, L+L P4.
        Overrides: security issue or data leak = P1. vip = one level higher, never above P1. Legal threat = also alert the support lead. Ignore capital letters.

        T1: Our GSTR-3B is due tomorrow and the tax summary page is blank.
        T2: I got an email from "LedgerLite" asking for my OTP. Is it real?
        T3: URGENT!!! Please add a dark mode.
        T4 (vip): Invoices for 3 branches will not export as PDF. Month-end close is in 3 days.
        T5: Your update deleted 2 months of my entries. I will take you to consumer court.
        T6: How do I add my CA as a user?
        [Add your own tickets, with personal details removed.]

        Output a table: Ticket | Impact | Urgency | Matrix priority | Override | Final priority | Reason (12 words max). Then list tickets a person must double-check, and why.</pre>
            <ul class="ai-try-checks">
              <li>T1 is P1: a tax filing is at risk and it is due tomorrow.</li>
              <li>T2 is P1 as a possible security issue, even though it sounds calm.</li>
              <li>T3 stays P4. Capital letters do not change the rating.</li>
              <li>T4 is P3 by the matrix, raised to P2 by the vip flag.</li>
              <li>T5 alerts the support lead because of the legal threat.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Rate impact and urgency separately, then let a fixed matrix give the priority. Add a few clear override rules for VIPs, security and legal threats. Keep P1 rare, and have a person confirm every P1.
        </div>
      HTML
      starter_code: nil
    },
    7 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-cs">Customer Support</div>
          <h1 class="lc-title">Routing to the Right Team</h1>
        </div>
        <p class="lc-lead"><strong>Routing</strong> means sending each ticket to the right team, and then to the right person in that team. Good routing means the customer talks to someone who can help the first time. Bad routing means tickets bounce between teams while the customer waits. In this lesson you will learn skills-based routing, round-robin, routing rules and escalation paths. You will also see how AI helps, and how to measure if routing works. You will follow LedgerLite's three support teams.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="Routing at LedgerLite. A new ticket goes to the AI, which adds a tag and flags. Routing rules are then checked from top to bottom, and the first match wins. Legal threats or security issues go to Deepa. The privacy-request flag goes to the privacy process. Otherwise the tag decides the team: General Support got 1,230 tickets in August, Billing Desk 390 and Technical Support 1,380. Tickets marked needs-review go to a triage view for a person. Inside a team, the agent is picked by skills, load or round-robin.">
            <defs><marker id="tm7a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="15" y="112" width="110" height="50" rx="10" fill="#27274e" stroke="#22d3ee"/>
              <text x="70" y="133" font-weight="700">New ticket</text>
              <text x="70" y="151" font-size="11" fill="#9b99b8">email, chat, phone</text>
              <rect x="150" y="112" width="130" height="50" rx="10" fill="#27274e" stroke="#8b5cf6"/>
              <text x="215" y="133" font-weight="700">AI adds</text>
              <text x="215" y="151" font-size="11" fill="#9b99b8">tag + flags</text>
              <rect x="305" y="112" width="130" height="50" rx="10" fill="#27274e" stroke="#f59e0b"/>
              <text x="370" y="133" font-weight="700">Routing rules</text>
              <text x="370" y="151" font-size="11" fill="#9b99b8">first match wins</text>
              <text x="607" y="20" font-size="12" fill="#9b99b8">Checked from top to bottom</text>
              <rect x="470" y="30" width="275" height="32" rx="8" fill="#1f1f44" stroke="#ec4899"/>
              <text x="607" y="51">Legal threat or security → Deepa</text>
              <rect x="470" y="70" width="275" height="32" rx="8" fill="#1f1f44" stroke="#ec4899"/>
              <text x="607" y="91">privacy-request → privacy process</text>
              <rect x="470" y="110" width="275" height="32" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="607" y="131">Tag → General Support · 1,230</text>
              <rect x="470" y="150" width="275" height="32" rx="8" fill="#1f1f44" stroke="#10b981"/>
              <text x="607" y="171">Tag → Billing Desk · 390</text>
              <rect x="470" y="190" width="275" height="32" rx="8" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="607" y="211">Tag → Technical Support · 1,380</text>
              <rect x="470" y="230" width="275" height="32" rx="8" fill="#1f1f44" stroke="#9b99b8"/>
              <text x="607" y="251">needs-review → triage view</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#tm7a)">
                <line x1="127" y1="137" x2="146" y2="137"/>
                <line x1="282" y1="137" x2="301" y2="137"/>
                <line x1="437" y1="130" x2="466" y2="48"/>
                <line x1="437" y1="133" x2="466" y2="88"/>
                <line x1="437" y1="135" x2="466" y2="127"/>
                <line x1="437" y1="139" x2="466" y2="164"/>
                <line x1="437" y1="142" x2="466" y2="203"/>
                <line x1="437" y1="145" x2="466" y2="243"/>
              </g>
              <text x="380" y="288" font-size="12" fill="#9b99b8">Inside a team, pick the agent by skills, load or round-robin. The vip flag adds Customer Success.</text>
            </g>
          </svg>
          <figcaption>LedgerLite's routing: risky cases first, then the topic tag picks the team. Numbers are August 2026 tickets (made up).</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Two decisions: which team, then which person</h3>
          <p>At LedgerLite, the topic tag decides the team. Each team is a <strong>group</strong> in the helpdesk (a set of agents who share one queue). Here is how August's 3,000 tickets split across the three teams.</p>
          <table class="lc-table">
            <thead><tr><th>Team</th><th>Agents</th><th>Tags it handles</th><th>August tickets</th><th>Per agent</th></tr></thead>
            <tbody>
              <tr><td><strong>General Support</strong></td><td>Arjun, Kavya, Imran, Sneha</td><td>how-to 690, login-access 420, account-changes 90, feature-request 30</td><td>1,230</td><td>about 308</td></tr>
              <tr><td><strong>Billing Desk</strong></td><td>Rohan, Meera</td><td>billing 360, refund 30</td><td>390</td><td>195</td></tr>
              <tr><td><strong>Technical Support</strong></td><td>Vikram, Ananya</td><td>bank-sync 540, gst-reports 330, invoicing 240, data-import 150, bug 120</td><td>1,380</td><td>690</td></tr>
              <tr><td><strong>Total</strong></td><td>8 agents</td><td></td><td><strong>3,000</strong></td><td>375 on average</td></tr>
            </tbody>
          </table>
          <p>Look at the last column. Each Technical Support agent got 690 tickets. Each General Support agent got about 308. That is more than twice as many. This may be one reason why P2 tickets missed their SLA goal in August. Check it before you decide.</p>
          <p>Routing can fix some of this. Many bank-sync tickets have a known fix, such as "reconnect the feed after you change your bank password". Suppose General Support handles 180 of the 540 bank-sync tickets with a help article. It passes the rest to Technical Support. Then Technical Support gets 1,380 − 180 = 1,200 tickets, or 600 per agent. General Support gets 1,230 + 180 = 1,410, or about 353 per agent. Deepa must train General Support first and test it for a few weeks.</p>
        </div>
        <div class="lc-card">
          <h3>Three ways to pick the agent</h3>
          <p>Once the ticket is in the right team, the helpdesk picks one agent. Most helpdesks, such as Freshdesk, Zendesk and Zoho Desk, offer some of these methods. Names and settings differ, so check your tool's current help pages.</p>
          <table class="lc-table">
            <thead><tr><th>Method</th><th>How it works</th><th>Good for</th><th>Watch out</th></tr></thead>
            <tbody>
              <tr><td><strong>Round-robin</strong></td><td>Each agent gets the next ticket in turn: A, B, C, D, then A again.</td><td>Similar, simple tickets. It feels fair.</td><td>A basic setup can give a ticket to someone who is already busy.</td></tr>
              <tr><td><strong>Load-based</strong></td><td>The agent with the fewest open tickets gets the next one. Some tools set a maximum per agent.</td><td>Busy teams with tickets of mixed length.</td><td>Agents who solve fast get more work. Leaders must see this.</td></tr>
              <tr><td><strong>Skills-based</strong></td><td>The ticket goes to an agent with the right skill. Examples: a language, GST knowledge or vip accounts.</td><td>Special topics and Indian languages.</td><td>If only one agent has a skill, tickets wait when that agent is away.</td></tr>
            </tbody>
          </table>
          <p>LedgerLite mixes them. First it uses skills, such as Kannada, Tamil or Hindi for a customer who writes in that language. Then it uses load. It also skips agents who are on leave or offline. Check that your tool does this. Otherwise tickets sit with someone who is not at work.</p>
        </div>
        <div class="lc-card">
          <h3>Routing rules and escalation paths</h3>
          <p>A <strong>routing rule</strong> is an "if this, then that" setting in the helpdesk. The order matters. Put the risky, specific rules first. At LedgerLite, the first matching rule picks the team. Some rules only add a follower (someone who gets updates) or a note.</p>
          <pre><code>1. Legal threat, or possible security issue or data leak
           → Deepa (support lead). She brings in the legal team if needed.
        2. privacy-request flag → General Support + privacy team process
        3. Topic tag → that tag's team (see the table above)
        4. needs-review, or AI confidence is low → Triage view
           (the day's triage agent decides by hand)
        Extra rules that do not change the team:
        - vip flag → add Customer Success as a follower
        - churn-risk flag → add a note for the team lead</code></pre>
          <p>An <strong>escalation path</strong> says where a ticket goes when the first team cannot finish it. Write it down, so nobody guesses.</p>
          <table class="lc-table">
            <thead><tr><th>From</th><th>To</th><th>When</th></tr></thead>
            <tbody>
              <tr><td>General Support</td><td>Technical Support</td><td>The help article fix did not work, or something is broken.</td></tr>
              <tr><td>Technical Support</td><td>Engineering</td><td>Technical Support confirms a product bug.</td></tr>
              <tr><td>Billing Desk</td><td>Finance</td><td>A charge must be checked, or a refund must be approved and paid.</td></tr>
              <tr><td>Any team</td><td>Customer Success</td><td>A vip account has a serious problem, or may leave.</td></tr>
              <tr><td>Any agent</td><td>Deepa</td><td>Legal threats, a customer asks for a manager, or a P1 may miss its SLA.</td></tr>
            </tbody>
          </table>
          <p>When you escalate, write an internal note with what you tried, and set the ticket to On hold. Support still owns the customer conversation. Tell the customer when they will hear from you next.</p>
        </div>
        <div class="lc-card">
          <h3>Where AI helps, and how to measure routing</h3>
          <p>AI does not need to pick the team itself. At LedgerLite, AI adds the tag, the flags and the customer's language. Clear rules then do the routing. This keeps routing easy to check and easy to change.</p>
          <ul class="lc-list">
            <li><strong>Never let AI route straight to Finance or Engineering.</strong> These teams only take work that a support agent has checked.</li>
            <li><strong>Low confidence goes to a person.</strong> The triage view catches tickets the AI is not sure about.</li>
            <li><strong>A wrong tag is not always a wrong team.</strong> The AI's common mix-ups (bank-sync or bug, refund or billing) stay inside one team. But they still spoil your reports, so fix them.</li>
          </ul>
          <p>Measure routing with the <strong>reassignment rate</strong>: the share of tickets moved to another team after the first assignment. In August, 270 of 3,000 tickets were moved at least once. That is 270 ÷ 3,000 = 9.0%. Each move adds waiting time. Deepa's goal is 5% or less, which is 150 tickets or fewer a month.</p>
          <p>Many helpdesks can report group changes. In an export where column F has the number of group changes per ticket:</p>
          <pre><code>Reassignment rate:  =COUNTIF(F2:F3001,"&gt;0")/COUNTA(F2:F3001)</code></pre>
          <p>Then look at the moved tickets. Which rule sent them to the wrong place? Fix that rule or the tagging guide.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: route ticket LL-30121</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Sunita from Hampi Heritage Hotels (Hosapete) is an Enterprise customer. She writes in Kannada and English: "Since I reconnected the bank feed, every entry shows twice. Month-end close is in 3 days." Put the routing steps in order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">The chat arrives and the helpdesk creates LL-30121 as New.</li>
              <li data-order="2">AI suggests the tag bank-sync, the vip flag and the language Kannada. Medium impact and medium urgency give P3. The vip flag raises it to P2.</li>
              <li data-order="3">The rules run from the top. There is no legal threat, no security issue and no privacy request.</li>
              <li data-order="4">The tag rule sends the ticket to Technical Support. The vip rule adds Customer Success as a follower.</li>
              <li data-order="5">Skills and load pick the agent. Ananya reads Kannada and has the fewest open tickets, so she gets it.</li>
              <li data-order="6">Ananya finds a product bug. She writes an internal note with her steps, escalates to Engineering and sets the ticket On hold.</li>
              <li data-order="7">Ananya tells Sunita what is happening and when she will update her next. Ananya still owns the ticket.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to design routing rules for your team and test them on five tickets. Change the teams and numbers in brackets to your own.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a support operations adviser. Design ticket routing for [LedgerLite, accounting software].
        Teams and tags:
        - [General Support, 4 agents: how-to, login-access, account-changes, feature-request]
        - [Billing Desk, 2 agents: billing, refund]
        - [Technical Support, 2 agents: bank-sync, gst-reports, invoicing, data-import, bug]
        Other teams: [Finance, Engineering, Customer Success (vip accounts), privacy and legal team, support lead].
        Flags: vip, churn-risk, privacy-request. Agent languages: [English, Hindi, Kannada, Tamil].
        Last month's tickets: [General 1,230, Billing 390, Technical 1,380].

        1. Write the routing rules in order. Mark rules that only add a follower or note.
        2. Add a fallback for unclear tickets.
        3. An escalation table: From | To | When | What the note must include.
        4. How to pick the agent in each team (round-robin, load or skills), and why.
        5. Route: T1 "Paise wapas chahiye, charged twice". T2 "Delete my personal data". T3 "Fix the bank feed or I send a legal notice". T4 "Bank feed error BF-102". T5 "Tally import help in Tamil, please".
        6. Point out any workload problem.
        Rule: AI never routes straight to Finance or Engineering. Use simple English.</pre>
            <ul class="ai-try-checks">
              <li>Legal and privacy rules come before the topic rules, so T3 reaches the support lead.</li>
              <li>T1 goes to Billing Desk as a refund, not to Finance directly.</li>
              <li>T5 goes to Technical Support and an agent who speaks Tamil, with a plan if nobody is free.</li>
              <li>It spots that Technical Support has about twice the tickets per agent.</li>
              <li>No ticket can end up without a team.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Let AI read the ticket and add tags and flags, but let clear, ordered rules do the routing. Put risky cases first, write down your escalation paths and watch the reassignment rate. Every move between teams is extra waiting time for the customer.
        </div>
      HTML
      starter_code: nil
    },
    8 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-cs">Customer Support</div>
          <h1 class="lc-title">Drafting Replies with AI</h1>
        </div>
        <p class="lc-lead">Writing replies takes most of an agent's day. AI can write a good first draft in seconds. But a draft is only safe when it uses your own help articles and your real policies. In this lesson you will learn to give AI the right sources, set the tone and personalise the reply. Most important, you will learn to check every fact and stop AI from inventing policy. You will follow Vikram at LedgerLite as he drafts a reply to a bank feed ticket.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 280" role="img" aria-label="Three inputs, the ticket, the help article and the tone guide, go to the AI. The AI writes a draft using only these. The agent checks facts and steps, amounts and dates, policy and promises, name and tone, and a way to reach a person. Then the agent sends the reply. If the help article does not cover something, the AI writes a CHECK note, promises nothing, and the agent asks a lead.">
            <defs><marker id="tm8a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="15" y="16" width="160" height="52" rx="10" fill="#27274e" stroke="#22d3ee"/>
              <text x="95" y="38" font-weight="700">Ticket</text>
              <text x="95" y="56" font-size="11" fill="#9b99b8">LL-30131</text>
              <rect x="15" y="80" width="160" height="52" rx="10" fill="#27274e" stroke="#22d3ee"/>
              <text x="95" y="102" font-weight="700">Help article</text>
              <text x="95" y="120" font-size="11" fill="#9b99b8">KB-112</text>
              <rect x="15" y="144" width="160" height="52" rx="10" fill="#27274e" stroke="#22d3ee"/>
              <text x="95" y="166" font-weight="700">Tone guide</text>
              <text x="95" y="184" font-size="11" fill="#9b99b8">warm, clear, simple</text>
              <rect x="215" y="80" width="140" height="52" rx="10" fill="#27274e" stroke="#8b5cf6"/>
              <text x="285" y="102" font-weight="700">AI draft</text>
              <text x="285" y="120" font-size="11" fill="#9b99b8">uses only these</text>
              <rect x="395" y="16" width="180" height="180" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="485" y="40" font-weight="700" fill="#fcd34d">Agent checks</text>
              <g text-anchor="start" font-size="12">
                <text x="412" y="68">✓ Facts and steps</text>
                <text x="412" y="94">✓ Amounts and dates</text>
                <text x="412" y="120">✓ Policy and promises</text>
                <text x="412" y="146">✓ Name and tone</text>
                <text x="412" y="172">✓ Way to reach a person</text>
              </g>
              <rect x="610" y="80" width="135" height="52" rx="10" fill="#27274e" stroke="#10b981"/>
              <text x="677" y="102" font-weight="700">Send</text>
              <text x="677" y="120" font-size="11" fill="#9b99b8">reply to customer</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#tm8a)">
                <line x1="177" y1="42" x2="211" y2="96"/>
                <line x1="177" y1="106" x2="211" y2="106"/>
                <line x1="177" y1="170" x2="211" y2="116"/>
                <line x1="357" y1="106" x2="391" y2="106"/>
                <line x1="577" y1="106" x2="606" y2="106"/>
                <line x1="285" y1="134" x2="285" y2="216"/>
              </g>
              <rect x="15" y="220" width="730" height="48" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="380" y="241" font-size="12.5" fill="#f9a8d4">Not in the help article? The AI writes [CHECK: …] and promises nothing.</text>
              <text x="380" y="259" font-size="12" fill="#9b99b8">The agent finds the answer or asks a lead before sending.</text>
            </g>
          </svg>
          <figcaption>AI writes from your sources. The agent checks and decides. Anything the sources do not cover goes to a person.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Give AI the right sources</h3>
          <p>A <strong>knowledge base</strong> (KB) is your library of help articles and internal policy pages. It is the most important input for a reply draft. Without it, AI writes what "usually" happens at software companies. That may not be true for your company.</p>
          <p>Here is ticket LL-30131, and the help article that answers it (both made up):</p>
          <pre><code>Ticket LL-30131 · Email · Anil Kumar, Malabar Spice Traders, Boston
        Our bank feed stopped after we changed our net banking password on
        Monday. Nothing has come in since. Also, if this makes us miss our
        GST filing date, will LedgerLite pay the late fee?

        KB-112: Reconnect a bank feed after a bank password change
        1. Go to Banking &gt; Bank Feeds.
        2. Click Reconnect next to the account.
        3. Log in on your bank's page and approve access.
        4. Transactions from the last 7 days import within about 1 hour.
        5. For older gaps, import a bank statement: Banking &gt; Import Statement.</code></pre>
          <p>The article answers the first question. Nothing in the KB answers the late fee question. That is a money and policy question, so a person must decide it.</p>
          <pre><code>Weak prompt:
        Write a reply to this customer.

        Better prompt:
        You draft replies for LedgerLite support. An agent will check and send.
        Use ONLY the help article and the ticket below.
        - If the article does not answer something, do not guess. Write
          [CHECK: what the agent must find out] in its place.
        - Never promise refunds, discounts, fees, fixes or dates.
        - Use the customer's first name. Keep it under 120 words.
        - Warm, clear, simple English. Say sorry once.
        - End with how to reach a person: reply to this email, or call us
          Monday to Saturday, 9 am to 7 pm.
        After the draft, list each fact you used and where it came from.</code></pre>
          <p>Many helpdesks can now draft replies from your own help articles. Check your tool's current help pages for how it picks sources. If you use a general AI assistant, use the one your company has approved, and remove personal details first.</p>
        </div>
        <div class="lc-card">
          <h3>Tone and personal touches</h3>
          <p>Write down your team's tone in a short <strong>tone guide</strong>. Give it to agents and to the AI. Here is part of LedgerLite's guide.</p>
          <table class="lc-table">
            <thead><tr><th>Write this</th><th>Not this</th><th>Why</th></tr></thead>
            <tbody>
              <tr><td>Hi Anil,</td><td>Dear Customer,</td><td>Use the person's name. It shows a person read the message.</td></tr>
              <tr><td>Sorry that your bank feed stopped.</td><td>We regret the inconvenience caused.</td><td>Name the real problem, in plain words.</td></tr>
              <tr><td>I will update you by 4 pm today.</td><td>We will revert ASAP.</td><td>A clear time builds trust. "Revert" confuses some readers.</td></tr>
              <tr><td>Here is how to fix it:</td><td>As per policy, kindly do the needful.</td><td>Old office phrases sound cold and are hard to understand.</td></tr>
            </tbody>
          </table>
          <p>Personalising means using what you know about this customer. Mention what they already tried, so you do not repeat it. Mention their business, plan or earlier ticket when it helps. Do not add fake feelings, such as "I completely understand how you feel", to every reply.</p>
          <p>A customer may write in Hindi, Kannada or Hinglish. If your team supports that language, you may reply in it. AI translation of Indian languages is useful but not perfect. Ask a colleague who speaks the language to check it, at least until you trust it.</p>
        </div>
        <div class="lc-card">
          <h3>Check every fact before you send</h3>
          <p>The AI's first draft for LL-30131 (see the activity below) looked polished. It still had three errors. Use this checklist on every draft:</p>
          <ul class="lc-list">
            <li><strong>Steps and menu names</strong> match the help article word for word.</li>
            <li><strong>Numbers</strong> (days, amounts, limits) match the source. "7 days" must not become "30 days".</li>
            <li><strong>Policy and promises:</strong> nothing about refunds, fees, discounts or fix dates unless a person decided it.</li>
            <li><strong>The right customer:</strong> correct name, business and ticket. Nothing from another customer's ticket.</li>
            <li><strong>No [CHECK] left</strong> in the text, and a clear way to reach a person at the end.</li>
          </ul>
          <p>Here is Vikram's final reply, after his checks:</p>
          <pre><code>Hi Anil,

        Sorry that your bank feed stopped. This often happens after a bank
        password change, and it is quick to fix:
        1. Go to Banking &gt; Bank Feeds.
        2. Click Reconnect next to your account.
        3. Log in on your bank's page and approve access.
        Transactions from the last 7 days will then import within about an
        hour. That covers the gap since Monday.

        About the late fee: I have shared your question with Deepa, our
        support lead. She will reply to you by 5 pm tomorrow.

        If the feed does not reconnect, reply to this email or call us
        (Monday to Saturday, 9 am to 7 pm). I will look into it myself.

        Vikram, LedgerLite Support</code></pre>
          <p>Track how drafts perform. Compare the reopen rate and CSAT of AI-drafted replies with other replies. If agents rewrite most drafts, improve the prompt or the help articles.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: Vikram drafts a reply</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Quick prompt">Vikram pastes Anil's email, with the phone number removed. He types: "Write a reply to this customer."</li>
              <li data-kind="answer" data-label="AI draft">"Dear Customer, we regret the inconvenience. Please reconnect the feed from Settings &gt; Bank. All transactions from the last 30 days will import. Don't worry: LedgerLite will cover any late fee caused by this issue."</li>
              <li data-kind="warn" data-label="Three errors">The menu is wrong. The article says 7 days, not 30. And the late fee promise is invented policy. It could cost money and break trust.</li>
              <li data-kind="user" data-label="Better prompt">Vikram uses the team's drafting prompt. He pastes KB-112 and the ticket, and asks for a list of facts with their sources.</li>
              <li data-kind="answer" data-label="New draft">The draft uses Anil's name, the three steps and "7 days". For the fee it writes: "[CHECK: late fee question. Ask the support lead.]"</li>
              <li data-kind="tool" data-label="Help article and team chat">Vikram compares every step with KB-112. He asks Deepa about the late fee in the team chat.</li>
              <li data-kind="result" data-label="Deepa's answer">"This is a money question. I will reply to Anil myself by 5 pm tomorrow."</li>
              <li data-kind="check" data-label="Final check">Vikram replaces the [CHECK] line, reads the whole reply once more and sends it.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to draft a reply from a help article, for a customer who writes in Hinglish. Then check the draft against the article.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You help a support agent at [LedgerLite, accounting software]. Draft a reply. The agent will check it before sending.
        Use ONLY the help article below. If it does not answer something, write [CHECK: what the agent must find out]. Never promise refunds, fixes, dates or anything not in the article.
        Style: warm, simple, under 130 words. Use the customer's first name. Reply in Hinglish if the customer wrote in Hinglish. End with how to reach a person: [reply here, or call Monday to Saturday, 9 am to 7 pm].

        Help article [KB-205: Fix the GSTIN on your invoices]
        1. Go to Settings &gt; Company &gt; Tax details.
        2. Edit the GSTIN and click Save.
        3. New invoices will show the new GSTIN.
        4. Invoices already sent keep the old GSTIN. To correct one, issue a credit note, then a new invoice. Ask your CA about the tax effect.

        Ticket [LL-30133] from [Pooja, Shree Balaji Fabrics, Birmingham]:
        "Invoice pe hamara purana GSTIN print ho raha hai. Ek customer ne payment rok diya. Kya aap last month ke 12 invoices khud theek kar sakte ho?"

        After the draft, list each fact you used and its source, then any [CHECK] items.</pre>
            <ul class="ai-try-checks">
              <li>The steps and menu names match the article exactly.</li>
              <li>It does not promise that LedgerLite will fix the 12 sent invoices itself.</li>
              <li>It explains the credit note and new invoice, and suggests asking a CA, without giving tax advice.</li>
              <li>It uses Pooja's name, stays under 130 words and ends with a way to reach a person.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> AI drafts are only as good as their sources. Give AI your help article and tone guide, and tell it to mark what it does not know. Never let it promise money, fixes or dates. The agent checks every fact and owns what the customer reads.
        </div>
      HTML
      starter_code: nil
    },
    9 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-cs">Customer Support</div>
          <h1 class="lc-title">Macros and Templates</h1>
        </div>
        <p class="lc-lead">Many tickets ask the same thing. A <strong>macro</strong> lets an agent answer them in one click, with the same correct steps every time. But an old or careless macro spreads the same mistake to hundreds of customers. In this lesson you will learn what makes a good macro and how to use variables. You will also learn to keep macros up to date. Finally, you will see when not to use a macro, and how AI can help you write and check them.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="Left: a sample macro card called BL-02 Refund started. It has a reply with placeholders for first name, refund amount, invoice number, refund reference and expected date, and an EDIT slot for a personal line. Its actions set the status to Solved and add an internal note. It has an owner, Rohan, and a review month. Right: the macro life cycle. Create it from past replies, use and personalise it, measure use and reopens, review it every 3 months, then update or retire it, and start again.">
            <defs><marker id="tm9a" markerWidth="8" markerHeight="8" refX="7" refY="4" orient="auto"><path d="M0,0 L8,4 L0,8 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <rect x="15" y="12" width="445" height="276" rx="12" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="32" y="40" font-weight="700" fill="#c4b5fd">Macro: BL-02 · Refund started</text>
              <text x="32" y="64" font-size="11.5" fill="#9b99b8">REPLY</text>
              <g font-size="12">
                <text x="32" y="86">Hi <tspan fill="#67e8f9">{first_name}</tspan>, our Finance team has started</text>
                <text x="32" y="106">your refund of ₹<tspan fill="#67e8f9">{refund_amount}</tspan> for <tspan fill="#67e8f9">{invoice_number}</tspan>.</text>
                <text x="32" y="126">Reference: <tspan fill="#67e8f9">{refund_reference}</tspan>. Expected by <tspan fill="#67e8f9">{date}</tspan>.</text>
                <text x="32" y="146" fill="#fcd34d">[EDIT: one line about this customer's case]</text>
                <text x="32" y="166">Questions? Reply here or call us, Mon to Sat, 9 to 7.</text>
              </g>
              <text x="32" y="194" font-size="11.5" fill="#9b99b8">ACTIONS</text>
              <text x="32" y="216" font-size="12">Status → Solved · Internal note → Finance confirmation</text>
              <text x="32" y="244" font-size="11.5" fill="#9b99b8">OWNER AND REVIEW</text>
              <text x="32" y="266" font-size="12">Rohan, Billing Desk · Next review: December</text>
              <g text-anchor="middle">
                <text x="617" y="24" font-weight="700" fill="#67e8f9">Macro life cycle</text>
                <rect x="490" y="36" width="250" height="34" rx="8" fill="#27274e" stroke="#22d3ee"/>
                <text x="615" y="58">Create from past replies</text>
                <rect x="490" y="86" width="250" height="34" rx="8" fill="#27274e" stroke="#8b5cf6"/>
                <text x="615" y="108">Use and personalise</text>
                <rect x="490" y="136" width="250" height="34" rx="8" fill="#27274e" stroke="#3b82f6"/>
                <text x="615" y="158">Measure use and reopens</text>
                <rect x="490" y="186" width="250" height="34" rx="8" fill="#27274e" stroke="#f59e0b"/>
                <text x="615" y="208">Review every 3 months</text>
                <rect x="490" y="236" width="250" height="34" rx="8" fill="#27274e" stroke="#10b981"/>
                <text x="615" y="258">Update or retire</text>
              </g>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#tm9a)">
                <line x1="615" y1="71" x2="615" y2="83"/>
                <line x1="615" y1="121" x2="615" y2="133"/>
                <line x1="615" y1="171" x2="615" y2="183"/>
                <line x1="615" y1="221" x2="615" y2="233"/>
                <path d="M741,253 L753,253 L753,53 L744,53"/>
              </g>
            </g>
          </svg>
          <figcaption>A good macro has a clear job and placeholders for customer details. It has a slot for a personal line, matching actions and an owner.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Macros, templates and variables</h3>
          <ul class="lc-list">
            <li>A <strong>macro</strong> is a saved reply plus actions. One click adds the text and can also set the status, add a tag or add an internal note. For example, Freshdesk has "canned responses" (saved replies) and "scenario automations" (one-click actions), and Zendesk has "macros". Other tools use other names, and names change. Check your tool's current help pages.</li>
            <li>A <strong>template</strong> is saved text only, such as an email template or a chat shortcut.</li>
            <li>A <strong>variable</strong> (or placeholder) is a slot that the helpdesk fills in, such as the customer's first name or the ticket ID. Each tool writes variables in its own way. In this lesson we write them like <code>{first_name}</code>.</li>
          </ul>
          <p>Variables stop copy-paste mistakes, such as the wrong customer's name. But the helpdesk can only fill fields it knows. It cannot know a refund reference until someone types it into a field or a note. If a field is empty, the customer may see "Hi ," or a raw code. Test every macro on a real ticket before you share it.</p>
          <p>WhatsApp works a little differently. On the WhatsApp Business Platform, you can reply freely for a limited time after the customer's last message. This is often called the 24-hour customer service window. To start a conversation after that, you must use a message template that Meta has approved. Harbour Trails, a Boston travel agency, uses approved templates for booking reminders. The rules change, so check Meta's current documentation.</p>
        </div>
        <div class="lc-card">
          <h3>What a good macro looks like</h3>
          <p>Here is LedgerLite's refund macro, written out in full.</p>
          <pre><code>Name:        BL-02 · Refund started
        Use when:    Finance has confirmed and started the refund.
        Do not use:  Refund not yet approved. Angry customer. Legal threat.
        Reply:
          Hi {first_name},
          Our Finance team has started your refund of ₹{refund_amount}
          for invoice {invoice_number}. Refund reference: {refund_reference}.
          Finance expects it to reach your account by {expected_date}.
          [EDIT: one line about this customer's case]
          If you have any questions, reply to this email or call us,
          Monday to Saturday, 9 am to 7 pm.
        Actions:     Status → Solved. Internal note → Finance confirmation.
        Owner:       Rohan, Billing Desk. Next review: December.</code></pre>
          <ul class="lc-list">
            <li><strong>One job per macro.</strong> "Refund started" and "refund not approved" are two macros, not one.</li>
            <li><strong>A clear name with a team code</strong>, such as BL for Billing Desk and BS for bank-sync. Agents find it fast.</li>
            <li><strong>"Use when" and "do not use".</strong> These two lines prevent most macro mistakes.</li>
            <li><strong>Facts come from the source.</strong> The refund date comes from Finance, not from a fixed "3 days" in the text.</li>
            <li><strong>An [EDIT] slot</strong> reminds the agent to add one personal line.</li>
            <li><strong>An owner and a review date</strong>, so someone keeps it correct.</li>
          </ul>
          <p><strong>When not to use a macro:</strong> when the customer is angry, upset or threatens legal action. Also when the message has several separate problems, or the customer already tried the macro's steps. Privacy requests follow their own process. In these cases, write a personal reply.</p>
        </div>
        <div class="lc-card">
          <h3>Keep macros up to date and measure them</h3>
          <p>Deepa checked LedgerLite's 64 macros. In the last 90 days, 21 were never used. That is about a third (21 ÷ 64 = 33%). Nine macros had old facts. One still said the annual plan cost "₹9,999 + GST". The real price is ₹10,000 + 18% GST (₹1,800) = ₹11,800. Others used menu names from before a product update.</p>
          <p>She deleted the unused macros, fixed the nine and gave each macro an owner. She also linked each macro to one help article. When the article changes, the owner updates the macro the same week.</p>
          <p>Next, she measured how well the busiest macros work. The <strong>reopen rate</strong> is the share of solved tickets where the customer replies again, because the answer did not solve the problem.</p>
          <table class="lc-table">
            <thead><tr><th>Macro</th><th>Used in August</th><th>Reopened</th><th>Reopen rate</th></tr></thead>
            <tbody>
              <tr><td>BS-01 · Reconnect feed after password change</td><td>212</td><td>17</td><td>17 ÷ 212 = 8.0%</td></tr>
              <tr><td>BL-05 · Download your LedgerLite invoice</td><td>150</td><td>3</td><td>3 ÷ 150 = 2.0%</td></tr>
              <tr><td>LG-02 · OTP not received</td><td>180</td><td>27</td><td>27 ÷ 180 = 15.0%</td></tr>
            </tbody>
          </table>
          <p>LG-02 stands out. Deepa read 10 of the reopened tickets. Many customers had changed their mobile number, and the macro did not mention this. She added one step: "Check that your mobile number in LedgerLite is up to date."</p>
          <p>If column B has the macro name and column C has "Yes" for reopened tickets:</p>
          <pre><code>Reopen rate for LG-02:  =COUNTIFS(B:B,"LG-02",C:C,"Yes")/COUNTIF(B:B,"LG-02")</code></pre>
        </div>
        <div class="lc-card">
          <h3>How AI helps with macros</h3>
          <ul class="lc-list">
            <li><strong>Find repeated answers.</strong> Paste 30 past replies on one topic, with personal details removed. Ask AI to group the common answers and draft one macro for each group.</li>
            <li><strong>Rewrite in plain English.</strong> AI can remove old phrases such as "kindly do the needful" and "revert". It can also shorten long macros.</li>
            <li><strong>Check macros against help articles.</strong> Paste a macro and the current article. Ask AI to list every difference in steps, numbers and menu names.</li>
            <li><strong>Suggest a macro and personalise it.</strong> Some helpdesks can suggest the right macro for a ticket. AI can also draft the [EDIT] line from the customer's message.</li>
          </ul>
          <p>A person approves every new or changed macro before agents use it. One wrong macro can reach hundreds of customers in a week, so check it more carefully than a single reply.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: macro or personal reply?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">For each LedgerLite ticket, choose the best way to reply.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="macro" data-label="Macro as it is"></div>
              <div data-sorter-target="bucket" data-bucket="edit" data-label="Macro + personal edit"></div>
              <div data-sorter-target="bucket" data-bucket="personal" data-label="Personal reply"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="macro" data-why="A simple, common question. The macro has the correct steps and the customer's name.">"How do I download my LedgerLite invoice for last month?"</li>
              <li data-bucket="macro" data-why="A standard how-to question with no special details. The macro answers it fully.">"Where can I change my login password?"</li>
              <li data-bucket="edit" data-why="The refund macro fits, but the agent must check the amount and reference, and add a line about this case.">Finance has started a ₹11,800 refund for a double charge.</li>
              <li data-bucket="edit" data-why="An outage update macro keeps facts the same for everyone. A vip customer also deserves a personal line.">An Enterprise (vip) customer asks about a bank feed problem that many customers have today.</li>
              <li data-bucket="personal" data-why="The macro would repeat steps the customer already tried. That feels like nobody read the message.">"I already reconnected the bank feed three times. It still fails."</li>
              <li data-bucket="personal" data-why="A legal threat needs a careful, personal reply, and Deepa must know.">"Refund me today or I will send a legal notice."</li>
              <li data-bucket="personal" data-why="A sensitive situation and a privacy request. It needs care and the privacy process, not a standard text.">"My father owned this business and has passed away. Please close the account and delete his data."</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to fix an old, risky macro. Use the sample below, or paste one of your own macros with the facts it depends on.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a support quality lead at [LedgerLite, accounting software]. Rewrite this old macro so it is accurate, clear and safe.

        Old macro "Refund":
        "Dear Sir/Madam, as per policy your refund of Rs 9,999 has been processed and will be credited in 3 days. Kindly do the needful and revert for any queries. Regards, Team"

        Current facts: [Annual plan: ₹10,000 + 18% GST = ₹11,800]. Finance approves and starts every refund. The time to reach the bank depends on the bank, so agents give the date that Finance shares. Support hours: [Monday to Saturday, 9 am to 7 pm].

        Give me:
        1. A macro name with a team code, plus "Use when" and "Do not use when".
        2. The reply in simple, warm English. Use {curly braces} for customer details and one [EDIT] line for a personal note.
        3. Actions: status, tag and internal note.
        4. Every change you made, and why.
        5. Three test tickets to try it on, including one where it must NOT be used.</pre>
            <ul class="ai-try-checks">
              <li>No fixed "3 days" promise. The date comes from Finance.</li>
              <li>The amount is a placeholder, not the old ₹9,999.</li>
              <li>"Do not use" covers refunds Finance has not approved, and angry or legal cases.</li>
              <li>It ends with a clear way to reach a person.</li>
              <li>"Kindly do the needful" and "revert" are gone.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A macro repeats itself hundreds of times, so its mistakes do too. Give each macro one job, clear "use when" rules and variables for facts. Add a personal line, an owner and a review date. Measure reopen rates, and write a personal reply whenever the macro does not fit.
        </div>
      HTML
      starter_code: nil
    },
    10 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-cs">Customer Support</div>
          <h1 class="lc-title">Ticket Summaries and Handoffs</h1>
        </div>
        <p class="lc-lead">Some tickets grow into long threads with emails, chats and phone calls. When a new agent takes over, they must understand the whole story fast. If they miss one promise, the customer has to repeat everything, or waits for a call that never comes. In this lesson you will use AI to summarise long threads. You will write clear handover notes and good internal notes. You will also learn what to check in every AI summary. One wrong fact in a summary can do real harm.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 265" role="img" aria-label="A long thread of 16 messages over 6 days goes to the AI, which writes a short summary. The agent checks promises and dates, amounts and names, and details from phone calls. The result is a handover note, posted as an internal note, mentioning Vikram, with the ticket reassigned to him. A band at the bottom says: never put passwords, OTPs, or full bank or card numbers in notes.">
            <defs><marker id="tm10a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="95" y="22" font-weight="700" fill="#67e8f9">16 messages, 6 days</text>
              <rect x="15" y="32" width="160" height="176" rx="10" fill="#1f1f44" stroke="#22d3ee"/>
              <rect x="28" y="44" width="120" height="12" rx="4" fill="#27274e" stroke="#22d3ee"/>
              <rect x="42" y="64" width="120" height="12" rx="4" fill="#27274e" stroke="#8b5cf6"/>
              <rect x="28" y="84" width="96" height="12" rx="4" fill="#27274e" stroke="#22d3ee"/>
              <rect x="42" y="104" width="120" height="12" rx="4" fill="#27274e" stroke="#8b5cf6"/>
              <rect x="28" y="124" width="110" height="12" rx="4" fill="#27274e" stroke="#f59e0b"/>
              <rect x="42" y="144" width="120" height="12" rx="4" fill="#27274e" stroke="#8b5cf6"/>
              <rect x="28" y="164" width="104" height="12" rx="4" fill="#27274e" stroke="#22d3ee"/>
              <rect x="42" y="184" width="100" height="12" rx="4" fill="#27274e" stroke="#8b5cf6"/>
              <rect x="210" y="85" width="135" height="70" rx="10" fill="#27274e" stroke="#8b5cf6"/>
              <text x="277" y="115" font-weight="700">AI summary</text>
              <text x="277" y="135" font-size="11.5" fill="#9b99b8">8 short lines</text>
              <rect x="380" y="65" width="155" height="110" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="457" y="90" font-weight="700" fill="#fcd34d">Agent checks</text>
              <text x="457" y="114" font-size="12">promises + dates</text>
              <text x="457" y="136" font-size="12">amounts + names</text>
              <text x="457" y="158" font-size="12">phone call details</text>
              <rect x="570" y="65" width="175" height="110" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="657" y="90" font-weight="700" fill="#6ee7b7">Handover note</text>
              <text x="657" y="114" font-size="12">posted as internal note</text>
              <text x="657" y="136" font-size="12">@Vikram mentioned</text>
              <text x="657" y="158" font-size="12">ticket reassigned</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#tm10a)">
                <line x1="177" y1="120" x2="206" y2="120"/>
                <line x1="347" y1="120" x2="376" y2="120"/>
                <line x1="537" y1="120" x2="566" y2="120"/>
              </g>
              <rect x="15" y="222" width="730" height="34" rx="8" fill="#1f1f44" stroke="#ec4899"/>
              <text x="380" y="244" font-size="12.5" fill="#f9a8d4">Never put passwords, OTPs, or full bank or card numbers in notes.</text>
            </g>
          </svg>
          <figcaption>AI shortens the thread. The agent checks it against the thread, then hands it over as an internal note.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>When summaries and handoffs matter</h3>
          <p>A <strong>handoff</strong> (or handover) is when a ticket moves from one person to another. At LedgerLite this happens when:</p>
          <ul class="lc-list">
            <li>An agent goes on leave or ends a shift with open P1 or P2 tickets.</li>
            <li>A ticket is escalated, for example from General Support to Technical Support.</li>
            <li>Another team joins, such as Finance, Engineering or Customer Success.</li>
            <li>A lead, such as Deepa, steps in on a difficult ticket.</li>
          </ul>
          <p>Each handoff can lose information. The biggest risk is a lost <strong>promise</strong>, such as "I will call you on Thursday at 11 am". The customer remembers it. The new agent does not know it exists.</p>
          <p>An <strong>internal note</strong> is a message on the ticket that only your team can see. The customer never sees it. Handover notes go there. In most helpdesks, the note box and the reply box sit side by side. Always check which one you are using before you click send.</p>
        </div>
        <div class="lc-card">
          <h3>Worked example: ticket LL-30151</h3>
          <p>Sunrise Diagnostics in Austin is an Enterprise (vip) customer. Its finance manager, Meenakshi, has a Tally import problem. Ananya in Technical Support owns the ticket. Her leave starts on Thursday, so Vikram takes over. Here is the thread in short (made up):</p>
          <pre><code>LL-30151 · data-import · P2 (P3 raised by vip) · 16 messages, 6 days
        Mon  Meenakshi: Tally import done, but opening balances are wrong for
             3 of our 12 branch ledgers. Our auditor visits next Monday.
        Mon  Ananya: asks for the Tally export file and the ledger names.
        Tue  Meenakshi: sends the file. Ledgers: San Antonio, El Paso, Fort Worth.
        Tue  Ananya: re-imports twice. Same error.
        Wed  Internal note to Engineering: the 3 ledgers use a different
             date format in the Tally export.
        Wed  Phone call (logged by Ananya): workaround agreed. Fix the dates
             in Excel, then re-import. Ananya will join a screen-share
             on Thursday at 11 am.
        Wed  Meenakshi: "This has cost us a week. Can we get a discount?"
        Wed  Ananya: "I will ask our team lead and reply by Friday."</code></pre>
          <p>Here is the checked handover note that Ananya posted as an internal note:</p>
          <pre><code>HANDOVER · LL-30151 · Ananya → Vikram · Wed 6 pm
        Customer:   Meenakshi, finance manager, Sunrise Diagnostics (vip)
        Problem:    Opening balances wrong for 3 of 12 branch ledgers
                    (San Antonio, El Paso, Fort Worth) after Tally import.
        Cause:      Those 3 ledgers use a different date format in the
                    Tally export. Engineering has the details.
        Done:       2 re-imports, same error. Workaround agreed on a call:
                    fix dates in Excel, then re-import.
        Promises:   1) Screen-share on Thu at 11 am to help re-import.
                    2) Reply about the discount by Fri. NOT approved.
                       Deepa must decide.
        Deadline:   Auditor visits next Monday.
        Mood:       Frustrated ("This has cost us a week").
        Next step:  Vikram joins the Thu 11 am call. Ask Deepa about the
                    discount before Fri.</code></pre>
          <p>Vikram can act from this note alone. He does not need to read 16 messages before the call. He should still read the last two messages, to hear the customer's own words.</p>
        </div>
        <div class="lc-card">
          <h3>Ask AI for the right summary</h3>
          <pre><code>Weak prompt:
        Summarise this ticket.

        Better prompt:
        Write a handover note for the next agent from this ticket thread.
        Use these headings: Customer, Problem, Cause, Done, Promises
        (with dates and times), Deadline, Mood, Next step.
        Use only facts in the thread and call notes. Do not guess.
        If something is unclear, write "Unclear:" and say what.
        Say clearly if a refund, discount or fix is only requested
        and not approved. Keep it under 120 words.</code></pre>
          <p>The headings make the AI look for what matters. "Promises" is the most important heading. The rule about requests stops a common AI mistake: turning "Can we get a discount?" into "discount approved".</p>
          <p>Before you post an AI summary, check it against the thread:</p>
          <ul class="lc-list">
            <li><strong>Every promise, date and time</strong> is there and correct.</li>
            <li><strong>Amounts, names and ticket numbers</strong> match the thread.</li>
            <li><strong>Phone calls and chats</strong> are included. Details from a call may only be in a call log, and AI can miss them.</li>
            <li><strong>Nothing is upgraded:</strong> "asked" did not become "agreed", and "checking" did not become "fixed".</li>
          </ul>
          <p>Good notes follow a few simple rules. Write facts, not opinions about the customer. Write politely, as if the customer might read it one day. Never put passwords, OTPs, or full bank or card numbers in a note. Keep only the personal data the next person really needs. India's DPDP Act 2023 (the Digital Personal Data Protection Act) and the DPDP Rules 2025 set rules for personal data. Ask your privacy team what applies to you.</p>
          <p>Finally, tell the customer about the handoff: "Vikram from our technical team will join tomorrow's 11 am call. He has all the details, so you do not need to explain again."</p>
        </div>
        <div class="lc-card">
          <h3>Activity: Ananya hands over LL-30151</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="thought" data-label="The situation">Ananya's leave starts tomorrow. Vikram will take over LL-30151. The thread has 16 messages and one phone call log.</li>
              <li data-kind="user" data-label="Her prompt">Ananya uses the team's handover prompt with the headings. She pastes the thread and her call log, with phone numbers removed.</li>
              <li data-kind="answer" data-label="AI summary">"... Promises: Deepa approved a 10% discount as goodwill. Next step: wait for Engineering to fix the import."</li>
              <li data-kind="warn" data-label="Two errors">Nobody approved a discount. Meenakshi only asked for one. The summary also missed the Thursday 11 am screen-share, which was only in the call log.</li>
              <li data-kind="check" data-label="Ananya checks">She compares every promise, date and name with the thread. She fixes both lines and adds the auditor's deadline.</li>
              <li data-kind="tool" data-label="Helpdesk">She posts the note as an internal note, mentions @Vikram and reassigns the ticket. Customer Success stays as a follower.</li>
              <li data-kind="result" data-label="Customer update">Meenakshi gets a short reply: Vikram will join the Thursday call and already has all the details.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to write a handover note from a short thread. Then check it against the thread, line by line.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a senior support agent at [LedgerLite, accounting software]. [Rohan] goes on leave and [Meera] takes over this ticket. Write a handover note from the thread below.

        Headings, one short line each: Customer | Problem | Done so far | Waiting on | Promises (with dates) | Risks | Next step and owner.
        Rules: Use only facts in the thread. If something is unclear, write "Unclear:". Never say a refund is approved unless the thread says so. Under 120 words.

        Thread [LL-30152, Harish, Deccan Auto Parts, Tulsa]:
        Mon, Harish (email): I cancelled on 20 Aug, but you charged ₹11,800 on 1 Sep for renewal. Refund it.
        Mon, Rohan: Sorry about this. Please send your cancellation confirmation email.
        Tue, Harish: Attached. Also, stop the sales calls to my mobile.
        Tue, Rohan (internal note): Cancellation found, dated 20 Aug. Renewal ran anyway. Sent to Finance.
        Wed, Rohan: Finance is checking. I will update you by Friday 5 pm.
        Thu, Harish (chat): Still nothing. If this is not solved, I will complain to the consumer helpline.

        Then list the 2 things [Meera] should do first.</pre>
            <ul class="ai-try-checks">
              <li>It says Finance is still checking. No refund is approved or promised.</li>
              <li>It includes Rohan's promise: an update by Friday 5 pm.</li>
              <li>The request to stop sales calls is listed as an open action.</li>
              <li>The complaint threat is a risk that the team lead should know about.</li>
              <li>Nothing is added that is not in the thread.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A handover note must let the next person act without reading the whole thread. Use fixed headings, and put promises and deadlines first. Check every AI summary against the thread. AI can turn a request into an approval, or miss a phone call.
        </div>
      HTML
      starter_code: nil
    },
    11 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-cs">Customer Support</div>
          <h1 class="lc-title">SLAs and Queue Management</h1>
        </div>
        <p class="lc-lead">An <strong>SLA</strong> (service level agreement) is a promise about time, such as "we reply within 2 hours". A <strong>queue</strong> is the list of tickets waiting for work. In this lesson you will set SLA targets and calculate due times in business hours. You will spot tickets that are about to miss their target, and run a short daily queue review. You will also do simple staffing maths. AI can read a busy queue fast and suggest an order of work. But it does not know the time or your rules unless you tell it, so you still check.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="A timeline for ticket LL-30201, a P2 ticket created on Tuesday at 5:30 pm. Business hours are 9 am to 7 pm. The clock runs for 90 minutes on Tuesday, stops overnight, and runs again on Wednesday. The first reply is due at 9:30 am on Wednesday and the resolution is due at 5:30 pm on Wednesday. Below, three boxes show that the clock runs for New, Open and On hold, pauses for Pending, and stops for Solved and Closed.">
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="380" y="24" font-weight="700" fill="#67e8f9">LL-30201 · P2 · created Tuesday 5:30 pm</text>
              <rect x="20" y="70" width="320" height="36" rx="6" fill="#27274e" stroke="#3b82f6"/>
              <rect x="292" y="70" width="48" height="36" fill="#78350f" stroke="#f59e0b"/>
              <text x="150" y="93">Tuesday 9 am to 7 pm</text>
              <text x="316" y="92" font-size="11">90 min</text>
              <rect x="340" y="70" width="80" height="36" fill="#15152e" stroke="#4b4a78" stroke-dasharray="4 3"/>
              <text x="380" y="86" font-size="11" fill="#9b99b8">night</text>
              <text x="380" y="100" font-size="11" fill="#9b99b8">clock off</text>
              <rect x="420" y="70" width="320" height="36" rx="6" fill="#27274e" stroke="#3b82f6"/>
              <rect x="420" y="70" width="16" height="36" fill="#065f46" stroke="#10b981"/>
              <rect x="436" y="70" width="256" height="36" fill="#3b2a6b" stroke="#8b5cf6"/>
              <text x="564" y="93">Wednesday</text>
              <line x1="292" y1="60" x2="292" y2="112" stroke="#f59e0b" stroke-width="2"/>
              <text x="292" y="52" font-size="12" fill="#fcd34d">Created 5:30 pm</text>
              <line x1="436" y1="64" x2="436" y2="116" stroke="#10b981" stroke-width="2"/>
              <text x="436" y="130" font-size="12" fill="#6ee7b7">First reply due 9:30 am</text>
              <line x1="692" y1="64" x2="692" y2="116" stroke="#8b5cf6" stroke-width="2"/>
              <text x="740" y="130" font-size="12" fill="#c4b5fd" text-anchor="end">Resolution due 5:30 pm</text>
              <text x="380" y="162" font-size="12" fill="#9b99b8">First reply: 90 min on Tuesday + 30 min on Wednesday = 120 business minutes (2 h)</text>
              <text x="380" y="184" font-size="12" fill="#9b99b8">Resolution: 1.5 h on Tuesday + 8.5 h on Wednesday = 10 business hours (1 business day)</text>
              <rect x="15" y="206" width="230" height="74" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="130" y="234" font-weight="700" fill="#6ee7b7">Clock runs</text>
              <text x="130" y="258" font-size="12">New · Open · On hold</text>
              <rect x="265" y="206" width="230" height="74" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="380" y="234" font-weight="700" fill="#fcd34d">Clock paused</text>
              <text x="380" y="258" font-size="12">Pending (waiting on customer)</text>
              <rect x="515" y="206" width="230" height="74" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="630" y="234" font-weight="700" fill="#c4b5fd">Clock stops</text>
              <text x="630" y="258" font-size="12">Solved · Closed</text>
            </g>
          </svg>
          <figcaption>LedgerLite counts SLA time in business hours only. These are LedgerLite's clock settings. Check how your own helpdesk is set up.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>SLA targets and how the clock works</h3>
          <p>LedgerLite has two SLA targets for every ticket. <strong>First response</strong> is the time until a person first replies. <strong>Resolution</strong> is the time until the ticket is solved. Both count only business hours: Monday to Saturday, 9 am to 7 pm.</p>
          <table class="lc-table">
            <thead><tr><th>Priority</th><th>First response</th><th>Resolution</th></tr></thead>
            <tbody>
              <tr><td>P1 Urgent</td><td>30 minutes</td><td>4 business hours</td></tr>
              <tr><td>P2 High</td><td>2 hours</td><td>1 business day (10 business hours)</td></tr>
              <tr><td>P3 Normal</td><td>4 hours</td><td>2 business days</td></tr>
              <tr><td>P4 Low</td><td>1 business day</td><td>5 business days</td></tr>
            </tbody>
          </table>
          <p>The goal is to meet each target on at least 95% of tickets, and 98% for P1. A <strong>breach</strong> is a ticket that missed its target.</p>
          <p><strong>Worked example.</strong> Patil Auto Parts in London emails at 5:30 pm on a Tuesday. The bank feed has not updated for two days. Arjun tags it <code>bank-sync</code> and P2. There are 90 business minutes left on Tuesday. The first reply needs 120 minutes, so 30 minutes carry over to Wednesday. The first reply is due at 9:30 am on Wednesday. The resolution needs 10 business hours: 1.5 on Tuesday and 8.5 on Wednesday. So it is due at 5:30 pm on Wednesday.</p>
          <p>At LedgerLite, the clock pauses while a ticket is Pending, because the customer must act. It keeps running while a ticket is On hold with Finance or Engineering. The customer is still waiting for LedgerLite, so the wait still counts. Helpdesk tools such as Freshdesk, Zendesk and Zoho Desk let you choose these settings. Check your tool's help pages for how it works.</p>
        </div>
        <div class="lc-card">
          <h3>Resolution SLA in August: break it down</h3>
          <p>In August, LedgerLite solved 2,930 tickets. 293 missed their resolution target. The breach rate is 293 ÷ 2,930 = 10.0%, so 90.0% met the target. That is below the 95% goal. Deepa splits the number by team:</p>
          <table class="lc-table">
            <thead><tr><th>Team (agents)</th><th>New tickets</th><th>Solved</th><th>Resolution breaches</th><th>Met rate</th></tr></thead>
            <tbody>
              <tr><td>General Support (4)</td><td>1,230</td><td>1,230</td><td>49</td><td>1,181 ÷ 1,230 = 96.0%</td></tr>
              <tr><td>Billing Desk (2)</td><td>390</td><td>385</td><td>23</td><td>362 ÷ 385 = 94.0%</td></tr>
              <tr><td>Technical Support (2)</td><td>1,380</td><td>1,315</td><td>221</td><td>1,094 ÷ 1,315 = 83.2%</td></tr>
              <tr><td><strong>All</strong></td><td><strong>3,000</strong></td><td><strong>2,930</strong></td><td><strong>293</strong></td><td><strong>2,637 ÷ 2,930 = 90.0%</strong></td></tr>
            </tbody>
          </table>
          <p>The problem is clear now. Technical Support has 2 of the 8 agents. But it got 1,380 of the 3,000 new tickets, which is 46%. It solved 65 fewer tickets than it received. That explains most of the backlog growth. General Support took all its 1,230 tickets and the Billing Desk left only 5 unsolved.</p>
          <p>Suppose you export one row per solved ticket. Column C is the team, and column F says "Yes" or "No" for resolution SLA met. These formulas check the Technical Support row:</p>
          <pre><code>Breaches:  =COUNTIFS(C2:C2931,"Technical Support",F2:F2931,"No")   gives 221
        Solved:    =COUNTIF(C2:C2931,"Technical Support")                  gives 1315
        Met rate:  =1-221/1315                                             gives 83.2%</code></pre>
        </div>
        <div class="lc-card">
          <h3>The daily queue review</h3>
          <p>A <strong>queue review</strong> is a short check of all open tickets. Deepa does it at 9:15 am and 2:00 pm. It takes about 15 minutes. She uses a helpdesk view (a saved filter) sorted by time left before the next SLA target.</p>
          <ul class="lc-list">
            <li><strong>Breached tickets:</strong> Send an honest update now. Then solve them fast. A breach still needs work.</li>
            <li><strong>At risk:</strong> At LedgerLite this means 60 business minutes or less left. Give each one a named owner.</li>
            <li><strong>Unassigned New tickets</strong> older than 30 minutes: assign them.</li>
            <li><strong>Pending</strong> for more than 3 days: send one reminder. Then solve them, as your policy says.</li>
            <li><strong>On hold</strong> for more than 2 days: chase the other team, and update the customer.</li>
            <li><strong>Clusters:</strong> 5 or more new tickets about the same problem in 2 hours may mean an outage. Tell Deepa at once.</li>
          </ul>
          <p>If you export the queue, one formula can label each ticket. Column D is the status and column E is business minutes left (negative means breached):</p>
          <pre><code>=IF(D2="Pending","Paused",IF(E2&lt;0,"Breached",IF(E2&lt;=60,"At risk","OK")))

        D2 = "Open",    E2 = 35    gives  At risk
        D2 = "Open",    E2 = -20   gives  Breached
        D2 = "Pending", E2 = 40    gives  Paused
        D2 = "New",     E2 = 220   gives  OK</code></pre>
          <p>AI can then read the labelled list and suggest an order of work. Give it the rules and the numbers. Do not ask it to work out time left by itself.</p>
          <pre><code>Weak prompt:
        Which tickets should we do first?

        Better prompt:
        Here is our open queue at 11:00 am (names removed). Rules: the
        clock pauses for Pending and runs for On hold. At risk = 60
        business minutes or less left. Give a table of breached and
        at-risk tickets, sorted by minutes left, with a suggested owner
        from this list: [agents on shift]. Then list any 3 or more
        tickets that look like the same problem. Do not change any
        numbers I gave you.</code></pre>
          <p>Check the AI's list against the spreadsheet labels. A person decides who takes each ticket.</p>
        </div>
        <div class="lc-card">
          <h3>Staffing basics</h3>
          <p><strong>AHT</strong> (average handle time) is the average time an agent actively works on a ticket, across all replies. Waiting time does not count. With AHT, you can estimate how many agents a queue needs.</p>
          <pre><code>Hours of work per day  = tickets per day × AHT (minutes) ÷ 60
        Agents needed          = hours of work ÷ productive hours per agent</code></pre>
          <p>Here is Technical Support in August. The team had 25 working days (Monday to Saturday, minus the 15 August holiday). Its AHT is 12 minutes.</p>
          <ul class="lc-list">
            <li>New tickets per day: 1,380 ÷ 25 = 55.2, so about 55.</li>
            <li>Hours of work: 55 × 12 = 660 minutes = 11 hours.</li>
            <li>Productive hours per agent: an 8-hour shift × 75% = 6 hours. The other 25% goes on breaks, meetings, training and handovers.</li>
            <li>Agents needed: 11 ÷ 6 = 1.8. The team has 2 agents, so they are 11 ÷ 12 = 92% busy.</li>
          </ul>
          <p>92% leaves no room for leave, hard bugs or a busy day. On a spike day with 80 tickets, the work is 80 × 12 = 960 minutes = 16 hours. That needs 16 ÷ 6 = 2.7, so 3 agents. Deepa has three choices. She can train General Support in basic bank-sync checks, so they take about 180 simple bank-sync tickets a month. She can set shifts of 9 am to 5 pm and 11 am to 7 pm, so all business hours are covered. And she can cut the ticket volume by fixing root causes, which you will learn later in this course.</p>
          <p>This simple maths works well for email tickets. Live chat and phone queues need more care, because customers wait in real time. Workforce tools use queue models (such as Erlang C) for them. Check your helpdesk's reporting or planning features.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: the 11 am queue check</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">It is 11:00 am on Wednesday. At risk means 60 business minutes or less left. The clock pauses for Pending and runs for On hold. Sort each ticket.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="now" data-label="Act now"></div>
              <div data-sorter-target="bucket" data-bucket="later" data-label="Later today, in order"></div>
              <div data-sorter-target="bucket" data-bucket="paused" data-label="Clock paused: no action yet"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="now" data-why="12 minutes is well under 60, and it is a P1. Someone replies in the next few minutes.">LL-30203 · P1 · Open · first reply due in 12 min</li>
              <li data-bucket="later" data-why="3 h 40 min is more than 60 minutes. It joins the normal work order.">LL-30204 · P3 · New · first reply due in 3 h 40 min</li>
              <li data-bucket="now" data-why="It already breached. The customer needs an honest update now, and the fix still matters.">LL-30205 · P2 · Open · resolution target missed 20 min ago</li>
              <li data-bucket="paused" data-why="The ticket is Pending, so the clock is paused. The customer must send the statement first.">LL-30206 · P2 · Pending · waiting for the customer's bank statement</li>
              <li data-bucket="now" data-why="On hold does not pause LedgerLite's clock. Chase Engineering and update the customer now.">LL-30207 · P3 · On hold with Engineering · resolution due in 45 min</li>
              <li data-bucket="later" data-why="A P4 feature request due tomorrow can wait until urgent work is done.">LL-30208 · P4 · New · feature request, first reply due tomorrow</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to sort a morning queue and plan the next hour. Change the tickets and names to match your own team, with personal details removed.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You help the support lead at [LedgerLite, an accounting software company]. It is [Wednesday, 11:00 am]. Business hours: [Monday to Saturday, 9 am to 7 pm].
        Rules: The SLA clock pauses for Pending and runs for On hold. "At risk" means 60 business minutes or less left. A negative number means the target is already breached.

        ID | Priority | Status | Next target | Business minutes left
        LL-30211 | P1 | Open | first reply | 10
        LL-30212 | P3 | New | first reply | 150
        LL-30213 | P2 | Open | resolution | -25
        LL-30214 | P2 | Pending | resolution | 40
        LL-30215 | P3 | On hold (Engineering) | resolution | 55
        LL-30216 | P4 | New | first reply | 420
        LL-30217 | P2 | New | first reply | 35
        LL-30218 | P3 | Open | resolution | -90

        Agents free now: [Vikram and Ananya (Technical), Arjun, Kavya and Imran (General)].

        Give me:
        1. A table: ID | State (Breached, At risk, OK or Paused) | Reason.
        2. A work order for the next hour, with a suggested owner for each ticket.
        3. A 3-line update for the team chat.
        4. A short, honest update for customers whose ticket breached. Do not promise a fix time.
        Do not change any numbers I gave you.</pre>
            <ul class="ai-try-checks">
              <li>Breached: LL-30213 and LL-30218.</li>
              <li>At risk: LL-30211 (10 min), LL-30217 (35 min) and LL-30215 (55 min).</li>
              <li>LL-30214 is Paused, not at risk, because it is Pending.</li>
              <li>The P1 ticket LL-30211 is at the top of the work order.</li>
              <li>The customer update says sorry and gives a next step, with no invented fix time.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> An SLA number only helps when you break it down. Split breaches by priority and team, check the queue twice a day, and act before tickets breach. If one team is always over 90% busy, fix the staffing or the causes of its tickets. Do not just ask people to work faster.
        </div>
      HTML
      starter_code: nil
    },
    12 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-cs">Customer Support</div>
          <h1 class="lc-title">Quality Assurance for Replies</h1>
        </div>
        <p class="lc-lead"><strong>Quality assurance</strong> (QA) means checking a sample of replies against a clear standard. Then you coach agents and fix the causes of mistakes. Fast replies are not enough if they are wrong. In this lesson you will build a QA scorecard, score a real-looking reply and choose a fair sample. You will also use AI to pre-score replies. AI can read far more tickets than a person. But it can miss wrong facts and misjudge tone, so a person still owns the final score.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="The QA loop in five steps: pick a sample of 40 tickets a week, AI pre-scores and flags problems, a person reviews and sets the final score, the agent is coached with real examples, and help articles and macros are fixed. Below, a scorecard of 100 points: accuracy 30, solved the problem 25, clarity and tone 15, process 15, personal touch 15. A red box lists critical fails that make the score 0.">
            <defs><marker id="tm12a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="15" y="20" width="130" height="54" rx="10" fill="#27274e" stroke="#22d3ee"/>
              <text x="80" y="43" font-weight="700">Pick a sample</text>
              <text x="80" y="62" font-size="11" fill="#9b99b8">40 tickets a week</text>
              <rect x="165" y="20" width="130" height="54" rx="10" fill="#27274e" stroke="#8b5cf6"/>
              <text x="230" y="43" font-weight="700">AI pre-scores</text>
              <text x="230" y="62" font-size="11" fill="#9b99b8">flags problems</text>
              <rect x="315" y="20" width="130" height="54" rx="10" fill="#27274e" stroke="#f59e0b"/>
              <text x="380" y="43" font-weight="700">Person reviews</text>
              <text x="380" y="62" font-size="11" fill="#9b99b8">sets final score</text>
              <rect x="465" y="20" width="130" height="54" rx="10" fill="#27274e" stroke="#10b981"/>
              <text x="530" y="43" font-weight="700">Coach the agent</text>
              <text x="530" y="62" font-size="11" fill="#9b99b8">2 real examples</text>
              <rect x="615" y="20" width="130" height="54" rx="10" fill="#27274e" stroke="#ec4899"/>
              <text x="680" y="43" font-weight="700">Fix KB, macros</text>
              <text x="680" y="62" font-size="11" fill="#9b99b8">stop repeats</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#tm12a)">
                <line x1="147" y1="47" x2="161" y2="47"/>
                <line x1="297" y1="47" x2="311" y2="47"/>
                <line x1="447" y1="47" x2="461" y2="47"/>
                <line x1="597" y1="47" x2="611" y2="47"/>
                <path d="M680,76 L680,96 L80,96 L80,80"/>
              </g>
              <text x="380" y="114" font-size="11.5" fill="#9b99b8">repeat every week</text>
              <rect x="15" y="126" width="470" height="164" rx="12" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="250" y="150" font-weight="700" fill="#93c5fd">QA scorecard (100 points)</text>
              <g font-size="12" text-anchor="start">
                <text x="30" y="178">Accuracy</text>
                <rect x="190" y="167" width="240" height="14" rx="3" fill="#3b82f6"/>
                <text x="438" y="178">30</text>
                <text x="30" y="204">Solved the problem</text>
                <rect x="190" y="193" width="200" height="14" rx="3" fill="#8b5cf6"/>
                <text x="398" y="204">25</text>
                <text x="30" y="230">Clarity and tone</text>
                <rect x="190" y="219" width="120" height="14" rx="3" fill="#10b981"/>
                <text x="318" y="230">15</text>
                <text x="30" y="256">Process</text>
                <rect x="190" y="245" width="120" height="14" rx="3" fill="#22d3ee"/>
                <text x="318" y="256">15</text>
                <text x="30" y="282">Personal touch</text>
                <rect x="190" y="271" width="120" height="14" rx="3" fill="#f59e0b"/>
                <text x="318" y="282">15</text>
              </g>
              <rect x="500" y="126" width="245" height="164" rx="12" fill="#1f1f44" stroke="#ef4444"/>
              <text x="622" y="150" font-weight="700" fill="#fca5a5">Critical fail = score 0</text>
              <g font-size="11.5" fill="#e2e0f0">
                <text x="622" y="180">Promises money or a fix</text>
                <text x="622" y="206">Invents a policy</text>
                <text x="622" y="232">Asks for a password or OTP</text>
                <text x="622" y="258">Shares another customer's data</text>
              </g>
            </g>
          </svg>
          <figcaption>QA is a loop. The goal is not to catch people out. It is to stop the same mistake from reaching the next customer.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>What a QA scorecard checks</h3>
          <p>A <strong>scorecard</strong> is a short list of things every good reply must do, each with points. It makes scoring fair, because every reviewer uses the same list. Here is LedgerLite's scorecard. A score of 80 or more is a pass.</p>
          <table class="lc-table">
            <thead><tr><th>Item</th><th>Points</th><th>Full marks looks like</th></tr></thead>
            <tbody>
              <tr><td><strong>Accuracy</strong></td><td>30</td><td>Every fact, step, amount and date matches the help articles and the customer's account.</td></tr>
              <tr><td><strong>Solved the problem</strong></td><td>25</td><td>The customer can finish the task without writing back.</td></tr>
              <tr><td><strong>Clarity and tone</strong></td><td>15</td><td>Short sentences, numbered steps, polite and calm. No blame.</td></tr>
              <tr><td><strong>Process</strong></td><td>15</td><td>Right tag and status, a help article link, an internal note when needed.</td></tr>
              <tr><td><strong>Personal touch</strong></td><td>15</td><td>Uses the customer's name and details. Answers their exact situation.</td></tr>
            </tbody>
          </table>
          <p>Some mistakes are so serious that the whole reply fails. These are <strong>critical fails</strong>, and they make the final score 0. At LedgerLite, a reply fails if it promises a refund, a discount or a fix without approval. It also fails if it invents a policy, asks for a password or OTP, or shares another customer's data.</p>
        </div>
        <div class="lc-card">
          <h3>Worked example: scoring ticket LL-20412</h3>
          <p>Green Leaf Cafe in the Mission District asks on chat: "How do I add a second GST number? We opened a branch in Tamil Nadu." GST registration is state by state, so the cafe generally needs a second GSTIN (GST registration number) for that state. Its CA (chartered accountant) can confirm this. LedgerLite's help article (made up) says: go to <em>Settings &gt; Company &gt; GST details &gt; Add GSTIN</em>, choose the state, then set an invoice series for the new branch.</p>
          <pre><code>Imran's reply:
        Hi, go to Settings &gt; Taxes and add the new number there. Thanks.</code></pre>
          <table class="lc-table">
            <thead><tr><th>Item</th><th>Score</th><th>Evidence</th></tr></thead>
            <tbody>
              <tr><td>Accuracy</td><td>15 / 30</td><td>The menu path is wrong. There is no "Taxes" menu.</td></tr>
              <tr><td>Solved the problem</td><td>10 / 25</td><td>The customer will get stuck. The invoice series step is missing.</td></tr>
              <tr><td>Clarity and tone</td><td>12 / 15</td><td>Polite and short, but no steps.</td></tr>
              <tr><td>Process</td><td>10 / 15</td><td>No help article link. Status left Open.</td></tr>
              <tr><td>Personal touch</td><td>5 / 15</td><td>No name. Ignores the new Tamil Nadu branch.</td></tr>
              <tr><td><strong>Total</strong></td><td><strong>52 / 100</strong></td><td>15 + 10 + 12 + 10 + 5 = 52. Below the pass mark of 80.</td></tr>
            </tbody>
          </table>
          <p>In a QA spreadsheet, columns C to G hold the five scores and column H says "Yes" if there is a critical fail. This formula gives the final score. For this row it gives 52.</p>
          <pre><code>=IF(H2="Yes",0,SUM(C2:G2))</code></pre>
          <p>Deepa's coaching note to Imran is short and specific: "Copy the path from the help article. Add the invoice series step. Mention their new Tamil Nadu branch." She also asks why he wrote "Taxes". The old menu was called that before a product update. So the <code>how-to</code> macro was out of date too. Fixing the macro stops the same mistake for every agent.</p>
        </div>
        <div class="lc-card">
          <h3>Sampling: which tickets to check</h3>
          <p>You cannot check every ticket by hand. So you check a <strong>sample</strong>. LedgerLite reviews 5 solved tickets per agent per week. That is 5 × 8 = 40 a week, or 160 in a 4-week month. It is 160 ÷ 2,930 = about 5.5% of August's solved tickets.</p>
          <ul class="lc-list">
            <li><strong>3 random tickets per agent.</strong> These show normal quality. Use a random number column in the sheet, then sort by it.</li>
            <li><strong>2 targeted tickets per agent.</strong> Pick risky ones: CSAT of 1 or 2, reopened tickets, escalations and AI-drafted replies.</li>
          </ul>
          <p>Report the two groups on their own. Targeted tickets are harder, so they score lower. In August: the random sample (96 tickets) averaged 86. The targeted sample (64 tickets) averaged 78. The mixed average is (86 × 96 + 78 × 64) ÷ 160 = 82.8. That mixes two different things. Use 86 as the team's normal quality. Use the targeted group to find problems. There were 3 critical fails in 160 tickets, which is 1.9%.</p>
        </div>
        <div class="lc-card">
          <h3>AI-assisted QA, with human checks</h3>
          <p>AI can pre-score many more replies than a person. It can quote evidence, spot risky words such as "guaranteed" or "refunded today", and check tone. Some helpdesks now include AI QA features. Check your tool's current help pages for what it does.</p>
          <pre><code>Weak prompt:
        Rate this reply out of 10.

        Better prompt:
        Score this reply with the scorecard below. For each item give
        the score, a quote from the reply as evidence and one fix.
        Check facts ONLY against the help article I pasted. If a fact
        is not in the article, write "cannot check" and do not guess.
        Mark any critical fail and set the final score to 0.</code></pre>
          <p>Before you trust AI scores, <strong>calibrate</strong>: score the same tickets and compare. Deepa and the AI each scored the same 20 tickets. In column B she put her score, and in column C the AI's score.</p>
          <pre><code>=IF(ABS(B2-C2)&lt;=5,"Agree","Differ")      in column D, for each ticket
        =COUNTIF(D2:D21,"Agree")                  gives 15, so 15 of 20 = 75%</code></pre>
          <p>The AI missed two wrong facts, because the correct answer was not in the article it was given. It also marked one short, correct reply too harshly. So Deepa's rule is: AI pre-scores and flags, and a person sets every final score. She calibrates again each month and after any scorecard change.</p>
          <ul class="lc-list">
            <li>Use only the AI tool your company has approved for ticket data. Or remove names, phone numbers and GSTINs first.</li>
            <li>Never use an AI score alone for pay, warnings or other decisions about a person.</li>
            <li>Share QA with agents as coaching. Show one good example and one to improve.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Activity: run a weekly QA round</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put Deepa's weekly QA round in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Pick 5 solved tickets per agent: 3 random and 2 targeted.</li>
              <li data-order="2">Remove names, phone numbers and GSTINs, or use the company's approved AI tool.</li>
              <li data-order="3">AI pre-scores each reply with the scorecard and the help articles, and quotes its evidence.</li>
              <li data-order="4">A reviewer checks every AI score, especially accuracy and critical fails, and sets the final score.</li>
              <li data-order="5">The reviewer shares two real examples with each agent: one good, one to improve.</li>
              <li data-order="6">Deepa looks for mistakes that repeat across agents and updates help articles and macros.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to score a risky reply with a scorecard. Decide your own score first, then compare it with the AI's.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a QA reviewer for customer support at [LedgerLite, an accounting software company]. Score the agent's reply with this scorecard:
        Accuracy 30 · Solved the problem 25 · Clarity and tone 15 · Process 15 (right tag, status, notes) · Personal touch 15.
        Critical fail (final score 0): promises money, a refund date or a free month without approval; invents a policy; asks for a password or OTP.

        Policy from our help article: [Finance approves refunds for double charges and confirms within 2 business days. The bank then needs some more days to show the money. Only the support lead can approve a free month.]

        Ticket LL-30225 (email, tag: refund): "I was charged ₹11,800 twice for our annual plan today. Please return one payment. Lalitha, Anand Sweets, Glasgow"

        Agent reply: "Hi, no problem, I have refunded ₹11,800 and you will see it today. As a sorry, I have added 1 free month to your plan. Thanks!"

        Give me:
        1. A table: Item | Score | Evidence (quote the reply) | What to fix.
        2. Critical fail: yes or no, and why.
        3. The final score.
        4. A better reply in under 90 words.
        5. Anything you could not check from the policy given.</pre>
            <ul class="ai-try-checks">
              <li>It marks a critical fail for "you will see it today" and for the free month.</li>
              <li>The final score is 0, whatever the item scores add up to.</li>
              <li>The better reply says Finance confirms within 2 business days and gives no date for the money.</li>
              <li>The better reply uses Lalitha's name and says how to reach a person.</li>
              <li>It says it cannot check if both payments really went through.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A scorecard makes quality fair and clear. Sample random and risky tickets, and report them apart. Let AI pre-score and quote evidence, but calibrate it against a person and keep people in charge of the final score. The best QA finding is one that fixes a help article or macro for the whole team.
        </div>
      HTML
      starter_code: nil
    },
    13 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-cs">Customer Support</div>
          <h1 class="lc-title">Finding Root Causes</h1>
        </div>
        <p class="lc-lead">A <strong>root cause</strong> is the real reason behind a group of tickets. "The bank feed shows an error" is a symptom. "The bank changed its login step and our connector did not handle it" is a root cause. Fixing root causes is the best way to cut ticket volume, because the tickets stop coming. In this lesson you will compare tag counts month by month, find spikes and dig into them. You will also use AI to group ticket texts and write a problem report for the product team. AI can find patterns fast. But its explanations are guesses until data confirms them.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 318" role="img" aria-label="A bar chart comparing LedgerLite tickets by tag in July and August 2026. how-to 700 then 690. bank-sync 330 then 540, up 64 percent. login-access 280 then 420, up 50 percent. billing 360 and 360. gst-reports 320 then 330. invoicing 240 and 240. The five other tags 430 then 420. Total tickets rose from 2,660 to 3,000. bank-sync rose by 210 and login-access by 140. All other tags together fell by 10.">
            <g font-family="inherit" font-size="12" fill="#e2e0f0">
              <text x="380" y="24" font-size="13" font-weight="700" fill="#67e8f9" text-anchor="middle">Tickets by tag: July vs August 2026 (made-up numbers)</text>
              <g text-anchor="end">
                <text x="140" y="67">how-to</text>
                <text x="140" y="101" fill="#f9a8d4" font-weight="700">bank-sync</text>
                <text x="140" y="135" fill="#f9a8d4" font-weight="700">login-access</text>
                <text x="140" y="169">billing</text>
                <text x="140" y="203">gst-reports</text>
                <text x="140" y="237">invoicing</text>
                <text x="140" y="271">5 other tags</text>
              </g>
              <rect x="150" y="50" width="350" height="11" rx="2" fill="#4b4a78"/>
              <rect x="150" y="63" width="345" height="11" rx="2" fill="#22d3ee"/>
              <rect x="150" y="84" width="165" height="11" rx="2" fill="#4b4a78"/>
              <rect x="150" y="97" width="270" height="11" rx="2" fill="#ec4899"/>
              <rect x="150" y="118" width="140" height="11" rx="2" fill="#4b4a78"/>
              <rect x="150" y="131" width="210" height="11" rx="2" fill="#ec4899"/>
              <rect x="150" y="152" width="180" height="11" rx="2" fill="#4b4a78"/>
              <rect x="150" y="165" width="180" height="11" rx="2" fill="#22d3ee"/>
              <rect x="150" y="186" width="160" height="11" rx="2" fill="#4b4a78"/>
              <rect x="150" y="199" width="165" height="11" rx="2" fill="#22d3ee"/>
              <rect x="150" y="220" width="120" height="11" rx="2" fill="#4b4a78"/>
              <rect x="150" y="233" width="120" height="11" rx="2" fill="#22d3ee"/>
              <rect x="150" y="254" width="215" height="11" rx="2" fill="#4b4a78"/>
              <rect x="150" y="267" width="210" height="11" rx="2" fill="#22d3ee"/>
              <g font-size="11" fill="#9b99b8">
                <text x="506" y="60">700</text><text x="501" y="73">690</text>
                <text x="321" y="94">330</text><text x="426" y="107" fill="#f9a8d4">540 (+64%)</text>
                <text x="296" y="128">280</text><text x="366" y="141" fill="#f9a8d4">420 (+50%)</text>
                <text x="336" y="162">360</text><text x="336" y="175">360</text>
                <text x="316" y="196">320</text><text x="321" y="209">330</text>
                <text x="276" y="230">240</text><text x="276" y="243">240</text>
                <text x="371" y="264">430</text><text x="366" y="277">420</text>
              </g>
              <rect x="560" y="84" width="185" height="130" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <g text-anchor="middle">
                <text x="652" y="108" font-weight="700">Total: 2,660 to 3,000</text>
                <text x="652" y="132" fill="#fcd34d" font-weight="700">+340 tickets</text>
                <text x="652" y="156" fill="#f9a8d4">bank-sync +210</text>
                <text x="652" y="176" fill="#f9a8d4">login-access +140</text>
                <text x="652" y="198" fill="#9b99b8">all others -10</text>
              </g>
              <rect x="150" y="296" width="14" height="10" rx="2" fill="#4b4a78"/>
              <text x="170" y="305" fill="#9b99b8">July</text>
              <rect x="220" y="296" width="14" height="10" rx="2" fill="#22d3ee"/>
              <text x="240" y="305" fill="#9b99b8">August</text>
            </g>
          </svg>
          <figcaption>Two tags explain the whole rise in tickets. That tells Deepa where to dig first.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Step 1: compare tag counts over time</h3>
          <p>A single month's counts do not show a problem. You need a comparison. Deepa puts July and August side by side. The five small tags (<code>data-import</code>, <code>bug</code>, <code>account-changes</code>, <code>refund</code>, <code>feature-request</code>) are grouped as "5 other tags".</p>
          <table class="lc-table">
            <thead><tr><th>Tag</th><th>July</th><th>August</th><th>Change</th><th>% change</th></tr></thead>
            <tbody>
              <tr><td><code>how-to</code></td><td>700</td><td>690</td><td>−10</td><td>−1.4%</td></tr>
              <tr><td><code>bank-sync</code></td><td>330</td><td>540</td><td><strong>+210</strong></td><td><strong>+63.6%</strong></td></tr>
              <tr><td><code>login-access</code></td><td>280</td><td>420</td><td><strong>+140</strong></td><td><strong>+50.0%</strong></td></tr>
              <tr><td><code>billing</code></td><td>360</td><td>360</td><td>0</td><td>0.0%</td></tr>
              <tr><td><code>gst-reports</code></td><td>320</td><td>330</td><td>+10</td><td>+3.1%</td></tr>
              <tr><td><code>invoicing</code></td><td>240</td><td>240</td><td>0</td><td>0.0%</td></tr>
              <tr><td>5 other tags</td><td>430</td><td>420</td><td>−10</td><td>−2.3%</td></tr>
              <tr><td><strong>Total</strong></td><td><strong>2,660</strong></td><td><strong>3,000</strong></td><td><strong>+340</strong></td><td><strong>+12.8%</strong></td></tr>
            </tbody>
          </table>
          <p>Two tags grew by 210 + 140 = 350 tickets. All the others together fell by 10. So the whole rise of 340 comes from <code>bank-sync</code> and <code>login-access</code>. If column B is July and column C is August, these formulas give the numbers:</p>
          <pre><code>Change:    =C3-B3           for bank-sync gives 210
        % change:  =(C3-B3)/B3      for bank-sync gives 63.6%   (210 ÷ 330)
                                    for login-access gives 50.0% (140 ÷ 280)</code></pre>
          <p>Note that <code>how-to</code> is the biggest tag, but it is steady. A big, steady tag needs a slow fix, such as better help articles. A sudden jump usually has one clear cause, so look at jumps first.</p>
        </div>
        <div class="lc-card">
          <h3>Step 2: find when, where and what</h3>
          <p>Next, Deepa slices the <code>bank-sync</code> tickets in three ways. <strong>When:</strong> tickets per week. <strong>Where:</strong> the "Bank" field on each ticket. <strong>What:</strong> the kind of problem, from the ticket text.</p>
          <table class="lc-table">
            <thead><tr><th>Week in August</th><th>Working days</th><th>bank-sync tickets</th><th>Per day</th></tr></thead>
            <tbody>
              <tr><td>1 to 8 Aug</td><td>7</td><td>84</td><td>12</td></tr>
              <tr><td>10 to 14 Aug (15th holiday)</td><td>5</td><td>130</td><td>26</td></tr>
              <tr><td>17 to 22 Aug</td><td>6</td><td>150</td><td>25</td></tr>
              <tr><td>24 to 29 Aug</td><td>6</td><td>146</td><td>24.3</td></tr>
              <tr><td>31 Aug</td><td>1</td><td>30</td><td>30</td></tr>
              <tr><td><strong>Total</strong></td><td><strong>25</strong></td><td><strong>540</strong></td><td><strong>21.6</strong></td></tr>
            </tbody>
          </table>
          <p>The daily rate doubled from Monday 10 August and never came back down. That points to a change on or near that date. By bank, <strong>Navkar Bank</strong> (a made-up bank) went from 40 tickets in July to 260 in August. All other banks went from 290 to 280. With a "Bank" field in column D and the tag in column C, this formula counts one group:</p>
          <pre><code>=COUNTIFS(C2:C3001,"bank-sync",D2:D3001,"Navkar Bank")     gives 260</code></pre>
          <p>For the "what", Deepa asks AI to group the 540 ticket texts (with names removed) into kinds of problem. It found four groups: "error BF-102 after reconnecting" 230, "duplicate entries" 140, "feed not updated" 110 and "other" 60. That adds up to 540. Vikram checked 50 random tickets. The AI's group was right for 44 of them (88%). That is good enough for spotting patterns. But it is not good enough to report exact counts without saying they are estimates.</p>
          <p>She does the same for <code>login-access</code>. "OTP not received" went from 90 in July to 230 in August. Password resets (110) and user permissions (80) did not change. The OTP tickets jumped from Monday 17 August.</p>
        </div>
        <div class="lc-card">
          <h3>Step 3: ask "why" until you reach a fixable cause</h3>
          <p>The <strong>5 Whys</strong> method means asking "why?" again and again, until you reach a cause someone can fix. You often need three to five rounds. Each answer must come from evidence, not a guess.</p>
          <pre><code>Why do customers see error BF-102?
          Navkar Bank added a new login step on 10 Aug. Our connector
          rejects it. (Engineering confirmed this from their logs.)
        Why are there so many duplicate entries?
          Help article KB-112 tells customers to reconnect. A reconnect
          imports the last 7 days again. (Vikram tested this.)
        Why did this go on for three weeks?
          No alert fires when one bank's errors jump. There was no
          known-issue macro, so each agent investigated alone.</code></pre>
          <p>So <code>bank-sync</code> has three root causes. Two belong to the product team: the connector and the duplicate import. One belongs to support: no early alert and no known-issue process.</p>
          <p>For the OTP spike, the operations team found that the OTP message text changed on 17 August. In India, under TRAI's rules, business SMS generally must match a template registered on the telecom operators' DLT (Distributed Ledger Technology) platform. The new text did not match, so some networks delayed or blocked it. Rules and provider steps change, so check with your SMS provider.</p>
          <p>AI is useful for listing <strong>hypotheses</strong> (possible causes to test). It is not useful for deciding which one is true. Only logs, tests and the teams who own the systems can confirm a cause.</p>
        </div>
        <div class="lc-card">
          <h3>Step 4: work with product and operations teams</h3>
          <p>Other teams act faster on clear numbers than on complaints. Deepa sends a short <strong>problem report</strong>. She adds the cost to support in agent hours. Technical Support's AHT (average handle time) is 12 minutes. So the extra 210 bank-sync tickets cost 210 × 12 = 2,520 minutes. That is 42 agent hours.</p>
          <pre><code>Problem report: Navkar Bank feeds fail with BF-102
        What customers see: error BF-102, then duplicate entries
          after they reconnect.
        Since: Monday 10 August 2026.
        Size: bank-sync tickets 330 (July) to 540 (August), +63.6%.
          Navkar Bank: 40 to 260. 18 of the affected customers are vip.
        Examples: LL-30241, LL-30242, LL-30243 (names removed).
        Cost to support: about 42 extra agent hours in August.
        Ask: 1) support Navkar Bank's new login step;
          2) stop reconnects from importing duplicates;
          3) share a fix date we can tell customers.
        Owner in support: Vikram. Next update: Friday.</code></pre>
          <p>Support also fixes its own part. Vikram writes a known-issue macro that explains the problem and how to remove duplicates. Deepa sets an alert: if one bank gets more than 10 <code>bank-sync</code> tickets in a day, she hears about it. After Engineering ships a fix, she checks the weekly counts again. A root cause is only fixed when the tickets go down.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: Deepa digs into the bank-sync spike</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="tool" data-label="Spreadsheet">Deepa puts July and August tag counts side by side, with change and % change columns.</li>
              <li data-kind="result" data-label="Two tags stand out">bank-sync +210 (+63.6%) and login-access +140 (+50.0%). All other tags together fell by 10.</li>
              <li data-kind="user" data-label="Deepa's prompt">"Here are 540 bank-sync ticket texts with names removed. Group them into 3 to 6 kinds of problem. Give a count and 2 example texts for each group."</li>
              <li data-kind="answer" data-label="AI groups">"Error BF-102 after reconnecting: 230. Duplicate entries: 140. Feed not updated: 110. Other: 60. Most BF-102 tickets mention Navkar Bank."</li>
              <li data-kind="check" data-label="Checks">Vikram checks 50 random tickets: 44 are grouped correctly. COUNTIFS on the Bank field gives 260 Navkar Bank tickets.</li>
              <li data-kind="warn" data-label="A guess, not a fact">The AI also wrote "root cause: Navkar Bank's servers are down". Nothing in the tickets shows that. Engineering's logs show a new login step from 10 August.</li>
              <li data-kind="answer" data-label="Problem report">Deepa sends Engineering the counts, dates, three example tickets and the cost of 42 agent hours. She asks for a fix date.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to find the tags behind a rise in tickets and suggest causes to test. Replace the counts and ticket texts with your own, with names removed.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a support analyst at [LedgerLite, an accounting software company]. Find likely root causes behind last month's rise in tickets.

        Tickets by tag, [July to August]: how-to 700 to 690, bank-sync 330 to 540, login-access 280 to 420, billing 360 to 360, gst-reports 320 to 330, invoicing 240 to 240, data-import 160 to 150, bug 120 to 120, account-changes 90 to 90, refund 25 to 30, feature-request 35 to 30.

        August ticket texts (names removed):
        1. Navkar Bank feed shows error BF-102 since the 10th
        2. Reconnected my bank, now every entry appears twice
        3. OTP SMS never arrives, but the email OTP works
        4. BF-102 again after reconnecting Navkar Bank
        5. Feed not updated for 3 days
        6. OTP comes after 10 minutes and has already expired
        [Add your own ticket texts here.]

        Give me:
        1. A table: Tag | July | August | Change | % change. Include totals and show your working.
        2. Which tags explain the rise in total tickets.
        3. Groups of similar problems in the sample texts.
        4. Up to 3 possible root causes. Label each one a hypothesis and say what data would test it.
        5. A short problem report for the engineering team: what customers see, the numbers, sample tickets and what we ask them to do.</pre>
            <ul class="ai-try-checks">
              <li>Totals: 2,660 in July and 3,000 in August, a rise of 340.</li>
              <li>bank-sync +210 (+63.6%) and login-access +140 (+50.0%).</li>
              <li>Causes are labelled hypotheses, each with a way to test it.</li>
              <li>The report does not invent fix dates, customer names or other numbers.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Tag counts show where to look. Slice a spike by when, where and what, then ask "why" until you reach a cause someone can fix. Let AI group tickets and list hypotheses, but confirm causes with data. Send other teams a short report with numbers and cost, then check that the tickets really go down.
        </div>
      HTML
      starter_code: nil
    },
    14 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-cs">Customer Support</div>
          <h1 class="lc-title">Escalations and Difficult Tickets</h1>
        </div>
        <p class="lc-lead">Most tickets are routine. A few are hard: an angry customer, a legal threat, a possible data leak or a message about someone's safety. These tickets carry the most risk for the customer and the company. In this lesson you will learn to spot difficult tickets and to <strong>escalate</strong> them, which means handing them to someone with more skill or authority. You will write calm replies and clear escalation notes. AI can spot warning signs and draft a calm first reply. But a person must handle these tickets, and some must go straight to a manager.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 320" role="img" aria-label="A decision tree for difficult tickets. First question: is there a safety or security risk? If yes, it is P1 now, with Deepa and the security or privacy team. If no, second question: is there a legal threat or a complaint to an authority? If yes, it goes to Deepa and the legal team, and AI only flags it. If no, third question: is the customer angry, contacting again, or a vip who may leave? If yes, a senior agent or Deepa takes it, with Customer Success for vip customers. If no, it stays in the normal queue with a calm reply. A side box lists what to do in every case: log it, write an internal note, make no promises and offer a call.">
            <defs><marker id="tm14a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="15" y="20" width="130" height="50" rx="10" fill="#27274e" stroke="#22d3ee"/>
              <text x="80" y="50" font-weight="700">Difficult ticket</text>
              <rect x="15" y="110" width="130" height="160" rx="10" fill="#1f1f44" stroke="#4b4a78"/>
              <text x="80" y="136" font-weight="700" fill="#67e8f9">Always</text>
              <g font-size="12">
                <text x="80" y="164">Log it</text>
                <text x="80" y="190">Internal note</text>
                <text x="80" y="216">No promises</text>
                <text x="80" y="242">Offer a call</text>
              </g>
              <rect x="180" y="20" width="250" height="50" rx="10" fill="#27274e" stroke="#ef4444"/>
              <text x="305" y="50">Safety or security risk?</text>
              <rect x="180" y="120" width="250" height="50" rx="10" fill="#27274e" stroke="#f59e0b"/>
              <text x="305" y="150">Legal threat or regulator?</text>
              <rect x="180" y="220" width="250" height="50" rx="10" fill="#27274e" stroke="#8b5cf6"/>
              <text x="305" y="250">Angry, repeat or vip churn?</text>
              <rect x="475" y="20" width="270" height="50" rx="10" fill="#1f1f44" stroke="#ef4444"/>
              <text x="610" y="40" font-weight="700" fill="#fca5a5">P1 now</text>
              <text x="610" y="59" font-size="11.5" fill="#9b99b8">Deepa + security or privacy team</text>
              <rect x="475" y="120" width="270" height="50" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="610" y="140" font-weight="700" fill="#fcd34d">Deepa + legal team</text>
              <text x="610" y="159" font-size="11.5" fill="#9b99b8">AI flags only, no AI reply</text>
              <rect x="475" y="220" width="270" height="50" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="610" y="240" font-weight="700" fill="#c4b5fd">Senior agent or Deepa</text>
              <text x="610" y="259" font-size="11.5" fill="#9b99b8">vip: Customer Success too</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#tm14a)">
                <line x1="147" y1="45" x2="176" y2="45"/>
                <line x1="432" y1="45" x2="471" y2="45"/>
                <line x1="432" y1="145" x2="471" y2="145"/>
                <line x1="432" y1="245" x2="471" y2="245"/>
                <line x1="305" y1="72" x2="305" y2="116"/>
                <line x1="305" y1="172" x2="305" y2="216"/>
                <line x1="305" y1="272" x2="305" y2="290"/>
              </g>
              <g font-size="11.5" fill="#9b99b8">
                <text x="451" y="38">yes</text>
                <text x="451" y="138">yes</text>
                <text x="451" y="238">yes</text>
                <text x="320" y="98">no</text>
                <text x="320" y="198">no</text>
              </g>
              <text x="305" y="308" font-size="12" fill="#9b99b8">No: normal queue, calm reply, named person</text>
            </g>
          </svg>
          <figcaption>Ask the questions in this order. Safety and security come first, because harm can happen fast.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>What makes a ticket difficult</h3>
          <p>There are two kinds of escalation. A <strong>functional escalation</strong> sends a ticket to a team with the right skills, such as Technical Support. A <strong>hierarchical escalation</strong> sends it up to someone with more authority, such as the team lead. Difficult tickets usually need the second kind.</p>
          <table class="lc-table">
            <thead><tr><th>Type</th><th>Signs</th><th>Why it is risky</th></tr></thead>
            <tbody>
              <tr><td><strong>Angry customer</strong></td><td>Capitals, "useless", "worst", many exclamation marks</td><td>A cold or copied reply makes it worse.</td></tr>
              <tr><td><strong>Repeat contact</strong></td><td>3 or more contacts about the same issue</td><td>The process has already failed this customer.</td></tr>
              <tr><td><strong>Legal threat</strong></td><td>"Legal notice", "lawyer", "consumer court"</td><td>A careless word can harm the company's legal position.</td></tr>
              <tr><td><strong>Complaint to an authority</strong></td><td>National Consumer Helpline (1915), the e-Jagriti consumer commission portal, a regulator</td><td>The company's formal response matters. Never discourage it.</td></tr>
              <tr><td><strong>Security or data issue</strong></td><td>"I can see another company's data", an unknown login</td><td>Personal and business data may be exposed right now.</td></tr>
              <tr><td><strong>Safety</strong></td><td>Words about self-harm or threats to someone</td><td>A person's safety comes before any process.</td></tr>
              <tr><td><strong>vip who may leave</strong></td><td>An Enterprise customer says they are "looking at other software"</td><td>A large account is at risk.</td></tr>
            </tbody>
          </table>
          <p>Anger alone is not a reason to escalate. A calm, complete reply solves most angry tickets. Escalate when anger continues, or when one of the other signs appears.</p>
        </div>
        <div class="lc-card">
          <h3>LedgerLite's escalation rules</h3>
          <table class="lc-table">
            <thead><tr><th>Trigger</th><th>Who takes it</th><th>How fast</th></tr></thead>
            <tbody>
              <tr><td>Suspected data leak or security issue</td><td>P1. Technical Support, the privacy team and Deepa</td><td>30 minutes</td></tr>
              <tr><td>Safety words (self-harm, threats)</td><td>The agent tells Deepa at once and follows the company's safety process</td><td>Straight away</td></tr>
              <tr><td>Legal threat, or a complaint to an authority</td><td>Deepa, whatever the priority. She involves the legal team.</td><td>The ticket's normal SLA</td></tr>
              <tr><td>Privacy request (see, correct or delete data)</td><td>The privacy team's process</td><td>As their process says</td></tr>
              <tr><td>vip customer who may leave</td><td>Deepa and Customer Success</td><td>Same business day</td></tr>
              <tr><td>3 or more contacts on one issue</td><td>Deepa reviews and names one owner</td><td>Same business day</td></tr>
              <tr><td>Abuse of an agent</td><td>The agent may hand over to Deepa. She decides on any warning.</td><td>When it happens</td></tr>
            </tbody>
          </table>
          <p>Escalating does not mean forwarding and forgetting. The new owner needs a clear <strong>escalation note</strong>, so nobody asks the customer to repeat the story.</p>
          <pre><code>Escalation note: LL-30250
        Why escalated: legal threat + 4th contact + wrong GST filing
        Customer: Iyer Hardware, Austin (Pro plan)
        Problem: duplicate Navkar Bank entries after reconnecting.
          Their CA filed GST figures that included the duplicates.
        Done so far: 3 replies with general steps. Duplicates not removed.
        Customer wants: duplicates fixed, and help with the filing.
        Risk: says he will send a legal notice and post online.
        Suggested next step: Deepa calls today. Vikram joins to remove
          duplicates on a screen-share.</code></pre>
        </div>
        <div class="lc-card">
          <h3>Worked example: an angry customer with a legal threat</h3>
          <pre><code>LL-30250 · Email · 4th contact
        This is my FOURTH email!! Your bank feed doubled all my Navkar
        Bank entries and my CA filed wrong GST figures because of it.
        Nobody helps. I will send you a legal notice and post about
        this online. - Suresh Iyer, Iyer Hardware, Austin</code></pre>
          <p>The ticket is <code>bank-sync</code> with the <code>churn-risk</code> flag. Tax data is at risk, so it is at least P2. The legal threat sends it to Deepa. The helpdesk AI drafted this reply:</p>
          <pre><code>AI draft (do not send):
        We are very sorry that our software error caused your wrong GST
        filing. We will pay any penalty you face. Please do not send
        a legal notice, as we are fixing this today.</code></pre>
          <p>This draft has three serious problems. It admits legal fault, which only the legal team can decide. It promises money that nobody approved. It promises a fix today, which nobody knows. Asking him not to send a notice can also sound like pressure. Deepa writes this instead:</p>
          <pre><code>Dear Mr Iyer,
        I am Deepa, the support lead. I am sorry you had to write four
        times. That should not have happened.
        We know about a problem with Navkar Bank feeds: reconnecting
        can create duplicate entries. Our engineers are working on it.
        Vikram from our technical team can remove the duplicates with
        you on a 30-minute screen-share today. Can we call you at
        4 pm, or at a time that suits you?
        For correcting the GST filing, please speak to your CA. We can
        give them a clean report once the duplicates are removed.
        I have noted your concerns and shared them with the right team.
        You can reply here or call me directly on [number].
        Deepa</code></pre>
          <p>It says sorry for the experience, not for legal fault. It states only confirmed facts and gives a clear next step with named people. It does not give tax advice. And it does not argue about the legal notice. Deepa passes that part to the legal team.</p>
        </div>
        <div class="lc-card">
          <h3>How AI helps, and where it must stop</h3>
          <ul class="lc-list">
            <li><strong>Spot the signs.</strong> AI can flag words such as "legal notice", "consumer court", "hacked" or "someone else's data". It can also flag repeat contacts and strong anger. Many helpdesks offer sentiment or intent detection. Check your tool's help pages. Test it on your own tickets, including Hinglish and regional languages, because it will miss some.</li>
            <li><strong>Summarise the history.</strong> A manager can read a five-line summary of 12 messages fast. Check the key messages yourself before you call.</li>
            <li><strong>Draft a calm reply</strong> for a person to edit and approve.</li>
          </ul>
          <p>AI must not reply alone to legal threats, security issues or safety messages. It must not admit fault, offer money or argue with a customer. Any chatbot must offer an easy way to reach a person. If a message mentions self-harm, a trained person follows the company's safety process. They share a helpline number the company has approved.</p>
          <pre><code>Weak prompt:
        Reply to this angry customer.

        Better prompt:
        Draft a calm reply to this ticket for me to review. Say sorry
        for the experience, but do not admit legal fault. Use only
        these confirmed facts: [facts]. Offer this next step: [step],
        with a named person. Do not promise money, dates or fixes.
        Do not mention the legal threat, and do not give tax advice.
        Under 120 words. Then list any sentence you were unsure of.</code></pre>
          <p>This is general guidance, not legal advice. Your legal team decides how the company answers legal notices and formal complaints.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: who should handle it?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each LedgerLite ticket. Who should handle it first?</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="agent" data-label="Agent handles, with care"></div>
              <div data-sorter-target="bucket" data-bucket="lead" data-label="Deepa steps in"></div>
              <div data-sorter-target="bucket" data-bucket="specialist" data-label="Specialist team now"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="agent" data-why="Anger alone is not a reason to escalate. A calm, complete reply usually works. Escalate if it goes on.">"Your app is useless! This is the second time I am asking how to export my ledger."</li>
              <li data-bucket="lead" data-why="Legal threats go to Deepa whatever the priority. She involves the legal team.">"If this is not fixed by Monday, I will file a case in consumer court."</li>
              <li data-bucket="specialist" data-why="Possible data leak. It is P1, and the privacy team and Technical Support must act within 30 minutes.">"I can see another company's invoices in my account."</li>
              <li data-bucket="specialist" data-why="Privacy requests follow the privacy team's process. The agent confirms receipt and passes it on.">"Please delete all the personal data you hold about me."</li>
              <li data-bucket="lead" data-why="A vip customer who may leave. Deepa brings in Customer Success on the same day.">Enterprise customer: "We are looking at other software because of these sync problems."</li>
              <li data-bucket="lead" data-why="Agents do not have to accept abuse. Deepa takes over and decides on any warning.">A caller swears at the agent for the third time in one call.</li>
              <li data-bucket="agent" data-why="A normal how-to question. The polite complaint about slow replies deserves a sorry and a complete answer.">"Sorry to chase, your replies are slow. How do I undo a payment I recorded twice?"</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to help you handle a difficult ticket safely. Replace the ticket, facts and rules with your own, with personal details removed.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a senior support agent at [LedgerLite, an accounting software company]. Help me handle this ticket safely.

        Ticket [LL-30251] (email, 4th contact, Enterprise plan): "[This is the fourth time I am writing. Your bank feed has duplicated our entries for two weeks and my accountant is wasting days fixing them. If this is not solved by Friday, I will send a legal notice and cancel all 12 of our user licences. Harpreet, Singh Logistics, Coventry]"

        Confirmed facts you may use: [Duplicate entries after reconnecting Navkar Bank feeds are a known issue. Engineering is working on a fix. There is no fix date yet. Vikram can remove duplicates on a 30-minute screen-share.]

        Our rules: [Legal threats go to the team lead, Deepa. A vip customer who may leave also goes to Customer Success. Enterprise customers are vip. Priority is raised one level for vip.] Never admit legal fault, promise money or give a fix date we do not have.

        Give me:
        1. Tag, priority, flags and who must be told, with reasons.
        2. A 5-line escalation note for Deepa.
        3. A calm reply under 120 words for Deepa to approve, with a clear next step and a named person.
        4. Three things a person must check before sending.</pre>
            <ul class="ai-try-checks">
              <li>Tag bank-sync, with the vip and churn-risk flags.</li>
              <li>Deepa and Customer Success are both told.</li>
              <li>The reply does not promise a fix by Friday or admit legal fault.</li>
              <li>The reply offers the screen-share with Vikram and names a person.</li>
              <li>No facts are added beyond the confirmed ones.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Difficult tickets need clear rules, not bravery. Check for safety, security and legal risk first, then escalate with a full note. Reply calmly with confirmed facts, a named person and a next step. AI can spot the signs and draft the words, but a person owns every difficult ticket.
        </div>
      HTML
      starter_code: nil
    },
    15 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-cs">Customer Support</div>
          <h1 class="lc-title">Capstone: Improve a Support Queue</h1>
        </div>
        <p class="lc-lead">In this capstone you are Deepa, LedgerLite's support lead. It is Monday 7 September 2026. August was a hard month: the backlog grew, and the resolution SLA missed its goal. You will tag, prioritise and route a sample queue, and draft replies with AI. Then you will turn August's root causes into a September plan with clear targets. This is the real job of a support lead: fix today's queue, and make next month's queue smaller. AI helps at every step, and you check every step.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 285" role="img" aria-label="The capstone in five steps: tag and prioritise 8 sample tickets, route them to the right team, draft replies that a person approves, find root causes such as bank-sync and OTP problems, and write a September plan with targets. Below, six made-up September targets: backlog from 480 to 400, tickets from 3,000 to 2,690, first-response SLA from 95.0 to 96 percent, resolution SLA from 90.0 to 93 percent, first contact resolution from 60 to 62 percent, and CSAT from 85 to 86 percent.">
            <defs><marker id="tm15a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12.5" fill="#e2e0f0" text-anchor="middle">
              <rect x="15" y="15" width="130" height="54" rx="10" fill="#27274e" stroke="#22d3ee"/>
              <text x="80" y="38" font-weight="700">1 Tag, prioritise</text>
              <text x="80" y="57" font-size="11" fill="#9b99b8">8 sample tickets</text>
              <rect x="165" y="15" width="130" height="54" rx="10" fill="#27274e" stroke="#3b82f6"/>
              <text x="230" y="38" font-weight="700">2 Route</text>
              <text x="230" y="57" font-size="11" fill="#9b99b8">right team first</text>
              <rect x="315" y="15" width="130" height="54" rx="10" fill="#27274e" stroke="#8b5cf6"/>
              <text x="380" y="38" font-weight="700">3 Draft replies</text>
              <text x="380" y="57" font-size="11" fill="#9b99b8">a person approves</text>
              <rect x="465" y="15" width="130" height="54" rx="10" fill="#27274e" stroke="#ec4899"/>
              <text x="530" y="38" font-weight="700">4 Root causes</text>
              <text x="530" y="57" font-size="11" fill="#9b99b8">bank-sync, OTP</text>
              <rect x="615" y="15" width="130" height="54" rx="10" fill="#27274e" stroke="#10b981"/>
              <text x="680" y="38" font-weight="700">5 Plan, targets</text>
              <text x="680" y="57" font-size="11" fill="#9b99b8">for September</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#tm15a)">
                <line x1="147" y1="42" x2="161" y2="42"/>
                <line x1="297" y1="42" x2="311" y2="42"/>
                <line x1="447" y1="42" x2="461" y2="42"/>
                <line x1="597" y1="42" x2="611" y2="42"/>
              </g>
              <text x="380" y="100" font-size="13" font-weight="700" fill="#67e8f9">September targets (made up): August to target</text>
              <rect x="15" y="114" width="235" height="74" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="132" y="136" font-size="12" fill="#9b99b8">Backlog on the last day</text>
              <text x="132" y="170" font-size="20" font-weight="700" fill="#fcd34d">480 to 400</text>
              <rect x="262" y="114" width="235" height="74" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="380" y="136" font-size="12" fill="#9b99b8">New tickets (forecast)</text>
              <text x="380" y="170" font-size="20" font-weight="700" fill="#f9a8d4">3,000 to 2,690</text>
              <rect x="509" y="114" width="235" height="74" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="627" y="136" font-size="12" fill="#9b99b8">First-response SLA met</text>
              <text x="627" y="170" font-size="20" font-weight="700" fill="#6ee7b7">95.0% to 96%</text>
              <rect x="15" y="200" width="235" height="74" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="132" y="222" font-size="12" fill="#9b99b8">Resolution SLA met</text>
              <text x="132" y="256" font-size="20" font-weight="700" fill="#c4b5fd">90.0% to 93%</text>
              <rect x="262" y="200" width="235" height="74" rx="10" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="380" y="222" font-size="12" fill="#9b99b8">First contact resolution</text>
              <text x="380" y="256" font-size="20" font-weight="700" fill="#67e8f9">60% to 62%</text>
              <rect x="509" y="200" width="235" height="74" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="627" y="222" font-size="12" fill="#9b99b8">CSAT</text>
              <text x="627" y="256" font-size="20" font-weight="700" fill="#93c5fd">85% to 86%</text>
            </g>
          </svg>
          <figcaption>Fix today's queue, then fix the causes behind it. Every target has a number, an owner and a way to measure it.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The brief</h3>
          <p>Here is what you know from August (all numbers made up):</p>
          <ul class="lc-list">
            <li>3,000 new tickets and 2,930 solved. The backlog grew from 410 to 480.</li>
            <li>First-response SLA met: 95.0% overall, but P1 was 95.0% (goal 98%) and P2 was 92.0%.</li>
            <li>Resolution SLA met: 90.0% (goal 95%). Technical Support was only 83.2%, and its 2 agents are about 92% busy.</li>
            <li>FCR (first contact resolution) was 60%. CSAT was 85%, from about 30% of solved tickets.</li>
            <li>Root causes found: Navkar Bank's new login step broke feeds (<code>bank-sync</code> 330 to 540). Reconnecting imports duplicates. A changed OTP SMS text was blocked by some networks (<code>login-access</code> 280 to 420).</li>
          </ul>
          <p>Your rules: remove personal details before you use any AI tool your company has not approved. AI suggests, and you decide. No reply promises money, dates or fixes that nobody has confirmed.</p>
        </div>
        <div class="lc-card">
          <h3>Steps 1 and 2: tag, prioritise and route the morning queue</h3>
          <p>Eight new tickets arrived before 9 am. Use the tagging guide and the priority matrix. Remember the override rules: a possible data leak is always P1, <code>vip</code> raises priority one level (never above P1), and legal threats go to Deepa.</p>
          <table class="lc-table">
            <thead><tr><th>ID</th><th>Message (short)</th><th>Tag and flags</th><th>Priority</th><th>Team</th></tr></thead>
            <tbody>
              <tr><td>LL-30230</td><td>Chat: "Navkar Bank feed shows BF-102 again after I reconnected. Now entries appear twice."</td><td><code>bank-sync</code></td><td>P3</td><td>Technical</td></tr>
              <tr><td>LL-30231</td><td>Email: "OTP never arrives. I must approve salary payments by 5 pm today."</td><td><code>login-access</code></td><td>P2</td><td>General</td></tr>
              <tr><td>LL-30232</td><td>Email, Enterprise plan: "GSTR-1 export for our 14 branches misses all credit notes. We file on 11 September."</td><td><code>gst-reports</code> + <code>vip</code></td><td>P1 (P2 raised)</td><td>Technical, and Customer Success told</td></tr>
              <tr><td>LL-30233</td><td>Email: "You charged ₹11,800 for renewal but we cancelled in August. Paise wapas chahiye."</td><td><code>refund</code></td><td>P2</td><td>Billing Desk. Finance approves.</td></tr>
              <tr><td>LL-30234</td><td>Chat: "How do I send payment reminders to my customers by email?"</td><td><code>how-to</code></td><td>P4</td><td>General</td></tr>
              <tr><td>LL-30235</td><td>Email: "I can see another company's invoices and bank balance in my dashboard!"</td><td><code>bug</code></td><td>P1 (data leak rule)</td><td>Technical, privacy team and Deepa</td></tr>
              <tr><td>LL-30236</td><td>Email: "We are closing our business. Delete all our data and stop the renewal."</td><td><code>account-changes</code> + <code>privacy-request</code> + <code>churn-risk</code></td><td>P3</td><td>General, and the privacy team</td></tr>
              <tr><td>LL-30237</td><td>Phone: "Tally import stuck at 60% for 2 days. Our CA needs the data by Friday."</td><td><code>data-import</code></td><td>P3</td><td>Technical</td></tr>
            </tbody>
          </table>
          <p>Why these priorities? LL-30231 is one business blocked on a key task (medium impact) with harm today (high urgency), so it is P2. LL-30232 puts tax data at risk (high impact) with a deadline in 4 days (medium urgency), so it is P2. The <code>vip</code> flag raises it to P1. "Paise wapas chahiye" is Hindi for "I want my money back", so LL-30233 is <code>refund</code>, not <code>billing</code>.</p>
          <p>The mix is 2 × P1, 2 × P2, 3 × P3 and 1 × P4. The work order starts with the two P1 tickets, which need a first reply within 30 minutes. LL-30231 comes next, because of the 5 pm payroll deadline. Note that LL-30230 matches August's biggest root cause. So Vikram uses the known-issue macro, not a fresh investigation.</p>
        </div>
        <div class="lc-card">
          <h3>Step 3: draft replies with AI, then check them</h3>
          <p>Kavya owns LL-30231, from a customer named Ramesh. She gives the AI the ticket, the help article and the confirmed facts. The facts are: SMS OTP is delayed on some networks, and the team can switch an account to email OTP after checking the registered email address.</p>
          <pre><code>AI draft (before checks):
        Hi Ramesh, sorry about the OTP trouble, especially with salaries
        due today. Our SMS problem was fixed on 4 September, so please
        try again. If it still fails, we can send OTPs to your email.

        Kavya's final reply:
        Hi Ramesh, I am sorry about the OTP trouble, especially with
        salaries due by 5 pm. Some mobile networks are delaying our SMS
        OTPs, and we are working on it. You wrote from your registered
        email address, so I can switch your login OTP to email now.
        Please reply "Yes", or call us on [number], and I will do it
        straight away. I will stay on this ticket until you are in.
        Kavya, LedgerLite Support</code></pre>
          <p>The AI invented "fixed on 4 September". Nobody gave it that fact. Kavya removed it and kept the deadline, a clear next step and her name. Use this checklist for every draft:</p>
          <ul class="lc-list">
            <li>Every fact is in the help article or the ticket. Nothing is invented.</li>
            <li>No promise of money, dates or fixes that nobody has confirmed.</li>
            <li>It answers the customer's exact situation, such as the 5 pm deadline.</li>
            <li>It gives one clear next step and a way to reach a person.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Steps 4 and 5: from root causes to a September plan</h3>
          <p>Deepa turns each root cause into an action with an owner, a date and a measure.</p>
          <table class="lc-table">
            <thead><tr><th>Root cause</th><th>Action</th><th>Owner</th><th>By</th><th>Measure</th></tr></thead>
            <tbody>
              <tr><td>Navkar Bank login change</td><td>Ship the connector fix. Stop reconnects importing duplicates.</td><td>Engineering (Vikram tracks)</td><td>12 Sep</td><td><code>bank-sync</code> 350 or fewer</td></tr>
              <tr><td>No known-issue process</td><td>Known-issue macro. Alert when one bank gets more than 10 tickets a day.</td><td>Vikram, Deepa</td><td>9 Sep</td><td>Alert tested. Macro used on every Navkar ticket.</td></tr>
              <tr><td>OTP text blocked</td><td>Match the SMS text to the registered template. Offer email OTP.</td><td>Operations</td><td>10 Sep</td><td><code>login-access</code> 300 or fewer</td></tr>
              <tr><td>Technical team 92% busy</td><td>Train Imran so General Support takes about 180 simple bank-sync tickets (Technical 1,380 to 1,200). Shifts 9 to 5 and 11 to 7.</td><td>Deepa</td><td>14 Sep</td><td>Technical resolution SLA 90%</td></tr>
              <tr><td>Steady <code>how-to</code> volume</td><td>Rewrite the 10 most-used help articles.</td><td>Kavya</td><td>30 Sep</td><td>FCR 62%</td></tr>
            </tbody>
          </table>
          <p>Now check that the targets add up. If the two fixes work, new tickets fall by 190 (<code>bank-sync</code> 540 to 350) and 120 (<code>login-access</code> 420 to 300). The forecast is 3,000 − 190 − 120 = 2,690.</p>
          <pre><code>Solved needed  = start backlog + new tickets − target backlog
                       = 480 + 2,690 − 400 = 2,770      (August solved 2,930)
        Check:          =480+2690-2770                    gives 400

        Resolution SLA 93% of 2,770 solved:
          most breaches allowed = 193   (2,577 ÷ 2,770 = 93.0%)
        First-response SLA 96% of 2,690 new:
          most breaches allowed = 107   (2,583 ÷ 2,690 = 96.0%)
        FCR 62% of 2,770 solved:
          at least 1,718 solved on first contact</code></pre>
          <p>The team solved 2,930 in August, so 2,770 is realistic, even with a few days lost to training. The backlog target depends on the fixes. If the forecast is wrong, the plan is wrong, so Deepa checks the weekly counts every Monday. CSAT moves only 1 point, from 85% to 86%. With about 800 survey replies a month, a change that small can happen by chance. So she watches the trend over three months.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: Deepa's capstone session with AI</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Deepa's prompt">"Here are 8 new tickets with names removed, our tag list, the priority matrix and the override rules. Suggest a tag, flags, priority and team for each, with a short reason."</li>
              <li data-kind="answer" data-label="AI suggestion">"LL-30235: login-access, P3. The customer sees the wrong account data." The other seven match the answer table.</li>
              <li data-kind="warn" data-label="Dangerous miss">Seeing another company's invoices is a possible data leak. The rule says always P1, with Technical Support, the privacy team and Deepa.</li>
              <li data-kind="check" data-label="Deepa fixes it">She sets LL-30235 to P1 and alerts the privacy team. She adds this case as an example in the tagging prompt.</li>
              <li data-kind="tool" data-label="Spreadsheet">She enters the September forecast: start backlog 480, new tickets 2,690, target backlog 400.</li>
              <li data-kind="result" data-label="Targets">Solved needed: 2,770. At most 193 resolution breaches for 93%. At most 107 first-response breaches for 96%.</li>
              <li data-kind="check" data-label="Final plan">Each action has one owner, a date and a measure. She shares the plan with Engineering, Operations and her team, and books a review on 5 October.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Run the whole capstone with AI on your own queue. Use your own tickets and numbers, with personal details removed, or run it as it is.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a support operations adviser for [LedgerLite, an accounting software company with 8 agents].
        Tags: how-to, bank-sync, login-access, billing, refund, gst-reports, invoicing, data-import, bug, account-changes, feature-request. Flags: vip, churn-risk, privacy-request.
        Priority: P1 to P4 by impact and urgency. A possible data leak is always P1. vip raises priority one level.

        New tickets:
        1. OTP never arrives. Must approve salaries by 5 pm today.
        2. Enterprise customer: GSTR-1 export misses credit notes. Filing in 4 days.
        3. I can see another company's invoices in my account.
        4. Charged ₹11,800 after we cancelled. Want the money back.
        5. How do I email payment reminders to customers?

        Last month: [3,000 new tickets, 2,930 solved, backlog 410 to 480. bank-sync 330 to 540, login-access 280 to 420. Resolution SLA met 90.0%, goal 95%.]

        Give me:
        1. A table: # | Tag | Flags | Priority | Team | Reason.
        2. A reply draft for ticket 1, under 100 words, with no promises we cannot keep.
        3. Two likely root causes to investigate, labelled as hypotheses.
        4. A plan for next month: 4 actions with owner, date and measure, plus targets with the maths shown. The backlog must fall to [400].</pre>
            <ul class="ai-try-checks">
              <li>Ticket 3 is P1 and goes to a person and the privacy or security team.</li>
              <li>Ticket 2 is gst-reports with the vip flag, raised from P2 to P1.</li>
              <li>Ticket 4 is refund, and a person approves any money back.</li>
              <li>Backlog maths: solved needed = 480 + new tickets − 400.</li>
              <li>The reply for ticket 1 does not invent a fix date.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A good support lead works on two levels. Today, every ticket gets the right tag, priority, team and a checked reply. This month, the biggest causes of tickets get fixed, with owners, dates and targets that add up. AI speeds up both, but you own the decisions and the numbers.
        </div>
      HTML
      starter_code: nil
    }
  }.freeze
end

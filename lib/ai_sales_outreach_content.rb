module AiSalesOutreachContent
  # Units (sidebar dividers): 1–4 Outreach Basics · 5–9 Writing Outreach · 10–14 Sequences and Improving · 15 Capstone
  # Widgets: sequence, sorter, stepper. No code editor: each Try It is an ai-try prompt box.
  LESSONS = {
    1 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-sales">Sales & CRM</div>
          <h1 class="lc-title">How Sales Outreach Works</h1>
        </div>
        <p class="lc-lead"><strong>Sales outreach</strong> means contacting people who might buy from you and starting a conversation. You do it by email, LinkedIn, phone or WhatsApp. In this lesson you will learn the difference between cold and warm outreach. You will see which channel fits which situation. You will also learn to measure outreach with two simple numbers: reply rate and meeting rate. In this course you will use AI to do each step faster, but you stay honest and in control.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 290" role="img" aria-label="A funnel for one made-up month: 200 prospects contacted, 18 replied, 8 meetings booked, 2 new customers. A panel shows the maths: reply rate 9 percent, meeting rate 4 percent, replies to meetings about 44 percent, meetings to customers 25 percent.">
            <defs><marker id="so1a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="20" y="24" text-anchor="start" font-size="12" fill="#c4b5fd">Kavya's month at LedgerLite (made-up numbers)</text>
              <rect x="20" y="40" width="340" height="44" rx="8" fill="#27274e" stroke="#3b82f6"/>
              <text x="190" y="67">200 prospects contacted</text>
              <rect x="55" y="96" width="270" height="44" rx="8" fill="#27274e" stroke="#8b5cf6"/>
              <text x="190" y="123">18 replied</text>
              <rect x="90" y="152" width="200" height="44" rx="8" fill="#27274e" stroke="#22d3ee"/>
              <text x="190" y="179">8 meetings booked</text>
              <rect x="125" y="208" width="130" height="44" rx="8" fill="#27274e" stroke="#10b981"/>
              <text x="190" y="235">2 customers</text>
              <line x1="364" y1="146" x2="396" y2="146" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#so1a)"/>
              <rect x="400" y="40" width="340" height="212" rx="12" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="570" y="66" font-weight="700" fill="#fcd34d">The maths</text>
              <g text-anchor="start">
                <text x="420" y="100">Reply rate = 18 ÷ 200 = 9%</text>
                <text x="420" y="132">Meeting rate = 8 ÷ 200 = 4%</text>
                <text x="420" y="164">Replies to meetings = 8 ÷ 18 ≈ 44%</text>
                <text x="420" y="196">Meetings to customers = 2 ÷ 8 = 25%</text>
                <text x="420" y="232" font-size="11" fill="#9b99b8">Each rate = part ÷ whole × 100</text>
              </g>
              <text x="380" y="278" font-size="12" fill="#9b99b8">Made-up numbers for learning. Track your own results. Do not copy benchmarks.</text>
            </g>
          </svg>
          <figcaption>Outreach is a funnel. Fewer people move to each next step, so you measure each step.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Cold and warm outreach</h3>
          <p>A <strong>prospect</strong> is a person or company that might buy from you. How well they know you changes how you write to them.</p>
          <table class="lc-table">
            <thead><tr><th></th><th>Cold outreach</th><th>Warm outreach</th></tr></thead>
            <tbody>
              <tr><td><strong>Meaning</strong></td><td>The prospect has never heard of you</td><td>The prospect already knows you in some way</td></tr>
              <tr><td><strong>Example</strong></td><td>Kavya emails the finance head of Tulsi Textiles, Gujarat, for the first time</td><td>A café owner downloaded LedgerLite's free GST invoice template, and Kavya follows up</td></tr>
              <tr><td><strong>What works</strong></td><td>A short message, a clear reason for writing, and one easy question</td><td>Mention the link you share, then offer the next helpful step</td></tr>
              <tr><td><strong>Main risk</strong></td><td>Sounding like spam</td><td>Forgetting to follow up</td></tr>
            </tbody>
          </table>
          <p>Warm leads usually reply more often, but you have fewer of them. So most teams do both. Here is a made-up month for Kavya at LedgerLite, a Karnataka accounting software startup:</p>
          <table class="lc-table">
            <thead><tr><th>Group</th><th>Contacted</th><th>Replies</th><th>Reply rate</th><th>Meetings</th><th>Meeting rate</th></tr></thead>
            <tbody>
              <tr><td>Cold list</td><td>200</td><td>18</td><td>18 ÷ 200 = 9%</td><td>8</td><td>8 ÷ 200 = 4%</td></tr>
              <tr><td>Warm leads</td><td>40</td><td>12</td><td>12 ÷ 40 = 30%</td><td>7</td><td>7 ÷ 40 = 17.5%</td></tr>
              <tr><td><strong>Total</strong></td><td>240</td><td>30</td><td>30 ÷ 240 = 12.5%</td><td>15</td><td>15 ÷ 240 = 6.25%</td></tr>
            </tbody>
          </table>
          <p>The warm group has better rates. But the cold list still brought 8 of the 15 meetings. These numbers are made up. Real results change a lot by industry, offer and list quality.</p>
        </div>
        <div class="lc-card">
          <h3>The four main channels</h3>
          <table class="lc-table">
            <thead><tr><th>Channel</th><th>Good for</th><th>Rules and care</th></tr></thead>
            <tbody>
              <tr><td><strong>Email</strong></td><td>First contact in B2B (selling to businesses), longer details, follow-ups</td><td>Give an easy way to opt out (say "no more emails"). Keep it short.</td></tr>
              <tr><td><strong>LinkedIn</strong></td><td>Reaching business people and seeing their role first</td><td>Write every message yourself. LinkedIn's User Agreement bans scraping and most automation tools.</td></tr>
              <tr><td><strong>Phone</strong></td><td>Fast, real conversations with people who expect calls</td><td>In India, TRAI rules cover commercial calls and the DND (Do Not Disturb) register. Check them first.</td></tr>
              <tr><td><strong>WhatsApp</strong></td><td>Quick updates for people who already know you</td><td>Only message people who agreed to hear from you (opt-in). Business messaging has its own rules.</td></tr>
            </tbody>
          </table>
          <p>This is general information, not legal advice. Rules change, so check the current rules for your country and channel.</p>
        </div>
        <div class="lc-card">
          <h3>How to calculate your outreach numbers</h3>
          <p>Keep a simple sheet with one row per prospect. Add a column for "Replied" (Yes/No) and "Meeting" (Yes/No). Then use these Google Sheets or Excel formulas:</p>
          <pre><code>Reply rate:   =COUNTIF(E2:E201,"Yes")/COUNTA(A2:A201)
        Meeting rate: =COUNTIF(F2:F201,"Yes")/COUNTA(A2:A201)</code></pre>
          <p>Column A holds the prospect names. Column E is "Replied" and column F is "Meeting". Format the cells as percentages. If an AI tool calculates rates for you, check them with these formulas. AI often makes small maths mistakes.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: cold or warm?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each situation. Is it cold outreach or warm outreach?</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="cold" data-label="Cold"></div>
              <div data-sorter-target="bucket" data-bucket="warm" data-label="Warm"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="cold" data-why="Meena has never heard of LedgerLite. This is a first contact.">Kavya emails Meena, the finance head of Tulsi Textiles, who has never heard of LedgerLite</li>
              <li data-bucket="warm" data-why="The owner already took something from LedgerLite. There is a link to mention.">Kavya follows up with a café owner who downloaded LedgerLite's free GST invoice template</li>
              <li data-bucket="warm" data-why="A referral from a happy customer makes the prospect know of you before you write.">Rohit at Nimbus Logistics writes to a store founder that an existing customer introduced</li>
              <li data-bucket="cold" data-why="Rohit has never met this person, and they have no link to Nimbus.">Rohit sends a LinkedIn connection note to a head of operations he has never met</li>
              <li data-bucket="warm" data-why="GreenLeaf asked for a demo. They came to you first, so this is very warm.">GreenLeaf Organics, Maharashtra, fills in the "book a demo" form on LedgerLite's website</li>
              <li data-bucket="cold" data-why="The office manager does not know Sweet Crumbs yet. A directory listing is not a relationship.">Sweet Crumbs emails an office manager whose company it found in a business directory</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to make a simple outreach plan for your business. Change the parts in [square brackets] or leave them to see an example.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a sales coach for small businesses in India.

        My business: [LedgerLite, a Karnataka startup that sells simple accounting software to small businesses].
        Who I want to reach: [owners and finance heads of textile and food businesses in Gujarat and Maharashtra].
        Warm leads I have: [35 people who downloaded our free GST invoice template].
        Time I have for outreach: [5 hours a week].

        Make a simple one-month outreach plan:
        1. Split my prospects into cold and warm. Give one line on how to treat each group.
        2. For email, LinkedIn, phone and WhatsApp: when to use it, and one rule to follow. WhatsApp only for people who opted in. Calls must respect India's DND rules.
        3. A weekly table: people to contact, expected replies and expected meetings. Label every number as a starting guess that I must replace with my own results.
        4. Show how to calculate reply rate and meeting rate with one worked example.

        Use simple English. Keep it under 300 words. Do not invent facts about my business or give industry benchmarks.</pre>
            <ul class="ai-try-checks">
              <li>Reply rate is replies ÷ people contacted × 100. Check the worked example with a calculator.</li>
              <li>The numbers are clearly labelled as guesses, not real benchmarks.</li>
              <li>WhatsApp is only for opted-in people, and calls mention DND rules.</li>
              <li>The weekly targets fit the hours you gave.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Outreach is a funnel. Measure each step with a simple rate: part ÷ whole × 100. Your own numbers matter more than any benchmark you read online.
        </div>
      HTML
      starter_code: nil
    },
    2 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-sales">Sales & CRM</div>
          <h1 class="lc-title">Where AI Helps in Outreach</h1>
        </div>
        <p class="lc-lead">AI assistants such as Claude can save you a lot of time in outreach. They can sum up research, write first drafts, give you many versions of a line and help you practise answers to objections. But AI can also invent facts, fake a personal touch and help people send spam. In this lesson you will learn where AI helps, where it hurts, and what you must check before any message leaves your inbox.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 290" role="img" aria-label="Four jobs where AI helps: research, first drafts, variations and objection replies. All four lead to one step where you check facts, tone and consent before you send. Below are three risks: fake personalisation, invented facts and spam at scale.">
            <defs><marker id="so2a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="20" y="24" text-anchor="start" font-size="12" fill="#c4b5fd">AI helps with four jobs</text>
              <rect x="20" y="40" width="164" height="60" rx="10" fill="#27274e" stroke="#3b82f6"/>
              <text x="102" y="65" font-weight="700">Research</text><text x="102" y="85" font-size="11" fill="#9b99b8">sums up public info</text>
              <rect x="202" y="40" width="164" height="60" rx="10" fill="#27274e" stroke="#8b5cf6"/>
              <text x="284" y="65" font-weight="700">First drafts</text><text x="284" y="85" font-size="11" fill="#9b99b8">a place to start</text>
              <rect x="384" y="40" width="164" height="60" rx="10" fill="#27274e" stroke="#22d3ee"/>
              <text x="466" y="65" font-weight="700">Variations</text><text x="466" y="85" font-size="11" fill="#9b99b8">subject lines, openers</text>
              <rect x="566" y="40" width="164" height="60" rx="10" fill="#27274e" stroke="#f59e0b"/>
              <text x="648" y="65" font-weight="700">Objection replies</text><text x="648" y="85" font-size="11" fill="#9b99b8">practice answers</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#so2a)">
                <line x1="102" y1="102" x2="102" y2="138"/>
                <line x1="284" y1="102" x2="284" y2="138"/>
                <line x1="466" y1="102" x2="466" y2="138"/>
                <line x1="648" y1="102" x2="648" y2="138"/>
              </g>
              <rect x="20" y="142" width="710" height="50" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="375" y="164" font-weight="700" fill="#6ee7b7">You check and decide</text>
              <text x="375" y="183" font-size="12" fill="#9b99b8">facts · tone · consent · the final send</text>
              <text x="20" y="222" text-anchor="start" font-size="12" fill="#f9a8d4">Risks to watch</text>
              <rect x="20" y="232" width="226" height="44" rx="8" fill="#27274e" stroke="#ec4899"/>
              <text x="133" y="259">Fake personalisation</text>
              <rect x="262" y="232" width="226" height="44" rx="8" fill="#27274e" stroke="#ec4899"/>
              <text x="375" y="259">Invented facts</text>
              <rect x="504" y="232" width="226" height="44" rx="8" fill="#27274e" stroke="#ec4899"/>
              <text x="617" y="259">Spam at scale</text>
            </g>
          </svg>
          <figcaption>AI speeds up four jobs. A person checks every message before it is sent.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>What AI does well, and what you check</h3>
          <table class="lc-table">
            <thead><tr><th>Job</th><th>How AI helps</th><th>What you check</th></tr></thead>
            <tbody>
              <tr><td>Research</td><td>Sums up text you copied from a company website or a public post</td><td>Every fact must match a source you can open</td></tr>
              <tr><td>First drafts</td><td>Writes an email or LinkedIn note in seconds</td><td>Tone, length, product claims and the ask</td></tr>
              <tr><td>Variations</td><td>Gives 10 subject lines or 5 opening lines to choose from</td><td>No clickbait, no false "Re:" or "Fwd:" tricks</td></tr>
              <tr><td>Objection replies</td><td>Plays a doubtful buyer so you can practise</td><td>Your answers must be true about your product and price</td></tr>
            </tbody>
          </table>
          <p>Some AI tools can search the web. Even then, open each link yourself. AI can give a link that does not say what the AI claims.</p>
        </div>
        <div class="lc-card">
          <h3>Three risks to catch</h3>
          <ul class="lc-list">
            <li><strong>Fake personalisation.</strong> "I loved your recent talk on supply chains" when nobody watched the talk. People notice this, and it breaks trust fast.</li>
            <li><strong>Invented facts.</strong> AI may write "LedgerLite cuts accounting time by 70%" or "congratulations on your award". If you cannot prove it, delete it.</li>
            <li><strong>Spam at scale.</strong> AI makes it easy to send 1,000 near-identical emails. That hurts your sender reputation (how email providers judge you) and annoys people.</li>
          </ul>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Write a personalised cold email to Meena Shah at Tulsi Textiles.</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>You write short, honest B2B emails for LedgerLite, a Karnataka
        accounting software startup for small businesses.
        Prospect: Meena Shah, Finance Head, Tulsi Textiles, Gujarat.
        The ONLY facts you may use about her:
        - Her LinkedIn post (last week): month-end closing takes about 10 days.
        - Their careers page: hiring an accounts assistant.
        Our product fact: LedgerLite matches bank entries to invoices.
        Write a 90-word email with one question as the ask.
        Do not invent numbers, awards, results or anything else about her.</code></pre>
          <p>The better prompt lists the facts AI may use. It also bans invented details. The AI has nothing to fake.</p>
        </div>
        <div class="lc-card">
          <h3>Keep private data out of public AI tools</h3>
          <p>Do not paste your full CRM export (a file of customer records from a tool such as Zoho CRM or HubSpot) into a public AI chat. Phone numbers, emails and deal notes are personal data. In India, the DPDP Act 2023 (Digital Personal Data Protection Act) sets rules on how you collect and use personal data. Use your company's approved AI tool, or remove names and contact details first. This is general information, not legal advice.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: catch the AI mistake</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Kavya asks">Write a personalised cold email to Meena Shah at Tulsi Textiles about LedgerLite.</li>
              <li data-kind="answer" data-label="AI drafts">"Hi Meena, congratulations on Tulsi Textiles winning the Best Exporter award! LedgerLite cuts accounting time by 70%. Can we talk?"</li>
              <li data-kind="warn" data-label="Problem">The award is invented. The 70% claim has no proof. The AI filled the gaps with guesses that sound real.</li>
              <li data-kind="tool" data-label="Kavya checks">She opens the Tulsi Textiles website and Meena's LinkedIn profile.</li>
              <li data-kind="result" data-label="What she finds">No award anywhere. But Meena posted last week that month-end closing takes about 10 days.</li>
              <li data-kind="user" data-label="Better prompt">She lists only the checked facts and adds: "Do not invent numbers, awards or results."</li>
              <li data-kind="answer" data-label="New draft">"Hi Meena, you mentioned month-end takes about 10 days. LedgerLite matches bank entries to invoices automatically. Would a 15-minute call be useful?"</li>
              <li data-kind="check" data-label="Final check">Kavya checks every fact, edits the tone to sound like her, and sends it from her own inbox.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Use AI as a reviewer. It checks a draft outreach message for invented facts, fake personal lines and spammy words. Paste your own draft, or use the sample.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a strict sales outreach reviewer. You care about honesty and clear writing.

        Facts I have checked about the prospect: [Meena Shah is Finance Head at Tulsi Textiles, Gujarat. Her LinkedIn post last week said month-end closing takes about 10 days.]
        Facts I have checked about my product: [LedgerLite matches bank entries to invoices and sends payment reminders.]

        My draft:
        [Subject: URGENT: Save 70% on accounting!!!
        Hi Meena, I loved your recent talk at the Gujarat Textile Summit. Congrats on your award! LedgerLite is the best accounting software in India and cuts work by 70%. Can we book a demo, a call and a free trial this week?]

        Review the draft:
        1. A table with columns: Line, Problem type (invented fact, fake personalisation, spammy wording, unclear ask, other), Why it is a problem, Fix.
        2. Anything that is not in my checked facts is a problem. Say so.
        3. Then write a clean version under 90 words with one clear ask and an easy way to say no.

        Use simple English.</pre>
            <ul class="ai-try-checks">
              <li>The review flags the talk, the award and the 70% claim as unchecked.</li>
              <li>The clean version uses only your checked facts.</li>
              <li>The clean version has one ask, not three.</li>
              <li>You still read the clean version yourself before you use it.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> AI writes fast, but it fills gaps with guesses. Give it only facts you have checked, tell it not to invent anything, and read every line before you send.
        </div>
      HTML
      starter_code: nil
    },
    3 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-sales">Sales & CRM</div>
          <h1 class="lc-title">Research Before You Write</h1>
        </div>
        <p class="lc-lead">A good outreach message starts before you write a word. You need a few true facts about the person and their company. You also need a reason to contact them now. In this lesson you will learn to collect 3 useful facts, find a "why now" reason, and note a source for each fact. You will also use AI to turn your notes into a short research note, without letting it invent anything.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 290" role="img" aria-label="Four sources: company website, job posts, their LinkedIn posts and news articles, feed a research note with three facts, each with a source and date, plus a why-now reason. The research note leads to your first line, which is about them, not you.">
            <defs><marker id="so3a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="105" y="24" font-size="12" fill="#c4b5fd">Sources you can check</text>
              <rect x="20" y="40" width="170" height="40" rx="8" fill="#27274e" stroke="#3b82f6"/><text x="105" y="65">Company website</text>
              <rect x="20" y="92" width="170" height="40" rx="8" fill="#27274e" stroke="#3b82f6"/><text x="105" y="117">Job posts</text>
              <rect x="20" y="144" width="170" height="40" rx="8" fill="#27274e" stroke="#3b82f6"/><text x="105" y="169">Their LinkedIn posts</text>
              <rect x="20" y="196" width="170" height="40" rx="8" fill="#27274e" stroke="#3b82f6"/><text x="105" y="221">News articles</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#so3a)">
                <line x1="192" y1="60" x2="246" y2="60"/>
                <line x1="192" y1="112" x2="246" y2="112"/>
                <line x1="192" y1="164" x2="246" y2="164"/>
                <line x1="192" y1="216" x2="246" y2="216"/>
                <line x1="512" y1="138" x2="556" y2="138"/>
              </g>
              <rect x="250" y="40" width="260" height="196" rx="12" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="380" y="66" font-weight="700" fill="#fcd34d">Research note</text>
              <g text-anchor="start" font-size="12">
                <text x="268" y="96">Fact 1 + source + date</text>
                <text x="268" y="122">Fact 2 + source + date</text>
                <text x="268" y="148">Fact 3 + source + date</text>
                <text x="268" y="182" fill="#6ee7b7">Why now: a recent change</text>
                <text x="268" y="212" font-size="11" fill="#9b99b8">Only facts you checked yourself</text>
              </g>
              <rect x="560" y="98" width="180" height="80" rx="10" fill="#27274e" stroke="#10b981"/>
              <text x="650" y="132" font-weight="700">Your first line</text>
              <text x="650" y="154" font-size="11" fill="#9b99b8">about them, not you</text>
              <text x="380" y="272" font-size="12" fill="#9b99b8">No source you can open? Do not use the fact.</text>
            </g>
          </svg>
          <figcaption>Collect facts from sources you can open. Then write a first line that is about the prospect.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>What to find: 3 facts and a "why now"</h3>
          <p>You do not need a full report. Ten minutes is often enough for one important prospect. Look for:</p>
          <ul class="lc-list">
            <li><strong>A fact about the person:</strong> their role, a recent post, or a problem they wrote about.</li>
            <li><strong>A fact about the company:</strong> what they sell, where they work, how they sell (shop, wholesale, online).</li>
            <li><strong>A fact that links to your product:</strong> something your product can help with.</li>
            <li><strong>A "why now":</strong> a trigger event (a recent change that creates a need). Examples: hiring, a new branch, a new product, moving to online sales, or a new rule in their industry.</li>
          </ul>
          <p>Here is Kavya's research note for one prospect. The company and person are made up.</p>
          <table class="lc-table">
            <thead><tr><th>#</th><th>Fact</th><th>Source</th><th>Checked on</th></tr></thead>
            <tbody>
              <tr><td>1</td><td>Tulsi Textiles, Gujarat, makes cotton sarees and started selling online across India in 2025</td><td>Company "About us" page</td><td>[date]</td></tr>
              <tr><td>2</td><td>They are hiring an accounts assistant to handle 400+ invoices a month</td><td>Their careers page</td><td>[date]</td></tr>
              <tr><td>3</td><td>Meena Shah, Finance Head, posted that month-end closing takes about 10 days</td><td>Meena's LinkedIn post</td><td>[date]</td></tr>
              <tr><td>Why now</td><td colspan="3">Online sales mean more invoices, and they are hiring to cope. A faster close could help right now.</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>How AI helps with research, safely</h3>
          <p>Do not ask AI "Tell me about Tulsi Textiles" and trust the answer. For small companies, AI often knows nothing and may invent details. Instead, copy the public text yourself and ask AI to pull out facts from it only.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Research Tulsi Textiles in Gujarat and tell me their revenue and problems.</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Below is text I copied from Tulsi Textiles' website and a public LinkedIn post.
        Use ONLY this text. For each fact, quote the exact sentence it came from.
        If something is not in the text, write "not found". Do not guess.
        Give me: 3 facts, 1 possible "why now" reason, and 3 questions I still need to answer.
        [paste text]</code></pre>
          <p>Copy text by hand from pages you can see. Do not use tools that scrape (automatically copy) LinkedIn profiles. LinkedIn's User Agreement does not allow scraping. Also skip personal life details, such as family photos. Using them feels creepy, even when they are public.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: use it, check it, or skip it?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Kavya found these facts about Tulsi Textiles and Meena. Sort each one.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="use" data-label="Use it"></div>
              <div data-sorter-target="bucket" data-bucket="check" data-label="Check first"></div>
              <div data-sorter-target="bucket" data-bucket="skip" data-label="Do not use"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="use" data-why="It is recent, public, work-related and you can open the source.">Their careers page lists an opening for an accounts assistant at their Gujarat office</li>
              <li data-bucket="use" data-why="Meena shared this herself, in public, about her work. It links to your product.">Meena posted on LinkedIn last week that month-end closing takes about 10 days</li>
              <li data-bucket="check" data-why="There is no source. AI may have invented it. Find a real source or leave it out.">An AI chat says Tulsi Textiles has ₹50 crore yearly revenue</li>
              <li data-bucket="check" data-why="It may be out of date. Check that it is still true before you mention it.">A news article from 2019 says they had 40 staff</li>
              <li data-bucket="skip" data-why="It is personal, not work-related. Mentioning it feels creepy.">Meena's personal Instagram shows her family holiday</li>
              <li data-bucket="skip" data-why="It is a rumour and it is sensitive. Never use gossip about a prospect.">A friend says the company is having cash problems</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Turn copied public text into a research note with sources. Paste your own text in the brackets, or use the sample.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a careful sales research assistant. You never guess.

        I sell: [LedgerLite, accounting software that matches bank entries to invoices for small businesses].
        Prospect: [Meena Shah, Finance Head, Tulsi Textiles, Gujarat].

        Here is public text I copied myself:
        [About page: "Tulsi Textiles has made cotton sarees in Gujarat since 1998. In 2025 we started selling online across India."
        Careers page: "Hiring: Accounts Assistant, Gujarat office. Must handle 400+ invoices a month and bank reconciliation."
        LinkedIn post by Meena Shah: "Month-end closing still takes us almost 10 days. Too many spreadsheets!"]

        Use ONLY the text above. Give me:
        1. A table: Fact, Exact quote it came from, Why it matters for my product.
        2. Up to 3 facts. Write "not found" rather than guess.
        3. One "why now" reason, in one sentence.
        4. Two possible first lines for an email, each under 25 words, about her, not about me.
        5. Three things I should check or find out before I write.

        Use simple English.</pre>
            <ul class="ai-try-checks">
              <li>Every fact has a quote that really appears in your pasted text.</li>
              <li>Nothing is added that the text does not say, such as revenue or team size.</li>
              <li>The first lines are about the prospect and are under 25 words.</li>
              <li>You open the real pages again to confirm the facts are current.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Good personalisation comes from true, recent, work-related facts with a source you can open. Let AI sort and sum up what you found, but never let it be the source.
        </div>
      HTML
      starter_code: nil
    },
    4 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-sales">Sales & CRM</div>
          <h1 class="lc-title">Your Value Proposition</h1>
        </div>
        <p class="lc-lead">A <strong>value proposition</strong> is a short, clear statement of the result a customer gets from you. It has three parts: the problem you solve, the result you deliver, and proof that it is true. Every outreach message needs one. In this lesson you will turn product features into outcomes that buyers care about. You will also build a simple value proposition canvas with AI.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 310" role="img" aria-label="Top row: feature leads to benefit, then outcome, then proof, with a LedgerLite example under each. Bottom row: the value proposition canvas, with a customer profile of jobs, pains and gains on the left, and a value map of products, pain relievers and gain creators on the right, joined by the word fit.">
            <defs>
              <marker id="so4a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker>
            </defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="20" y="24" text-anchor="start" font-size="12" fill="#c4b5fd">Turn a feature into an outcome, then prove it</text>
              <rect x="20" y="40" width="156" height="86" rx="10" fill="#27274e" stroke="#3b82f6"/>
              <text x="98" y="64" font-weight="700">Feature</text>
              <text x="98" y="86" font-size="11" fill="#9b99b8">Bank feed matching</text><text x="98" y="104" font-size="11" fill="#9b99b8">in LedgerLite</text>
              <rect x="208" y="40" width="156" height="86" rx="10" fill="#27274e" stroke="#8b5cf6"/>
              <text x="286" y="64" font-weight="700">Benefit</text>
              <text x="286" y="86" font-size="11" fill="#9b99b8">No manual ticking</text><text x="286" y="104" font-size="11" fill="#9b99b8">of bank entries</text>
              <rect x="396" y="40" width="156" height="86" rx="10" fill="#27274e" stroke="#10b981"/>
              <text x="474" y="64" font-weight="700">Outcome</text>
              <text x="474" y="86" font-size="11" fill="#9b99b8">Month-end done</text><text x="474" y="104" font-size="11" fill="#9b99b8">in days, not weeks</text>
              <rect x="584" y="40" width="156" height="86" rx="10" fill="#27274e" stroke="#f59e0b"/>
              <text x="662" y="64" font-weight="700">Proof</text>
              <text x="662" y="86" font-size="11" fill="#9b99b8">A real customer story</text><text x="662" y="104" font-size="11" fill="#9b99b8">shared with permission</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#so4a)">
                <line x1="178" y1="83" x2="204" y2="83"/>
                <line x1="366" y1="83" x2="392" y2="83"/>
                <line x1="554" y1="83" x2="580" y2="83"/>
                <line x1="380" y1="228" x2="346" y2="228"/>
                <line x1="380" y1="228" x2="414" y2="228"/>
              </g>
              <text x="20" y="160" text-anchor="start" font-size="12" fill="#c4b5fd">The value proposition canvas</text>
              <rect x="20" y="172" width="320" height="106" rx="12" fill="#1f1f44" stroke="#ec4899"/>
              <text x="180" y="196" font-weight="700" fill="#f9a8d4">Customer profile</text>
              <g text-anchor="start" font-size="12">
                <text x="36" y="222">Jobs: what they must get done</text>
                <text x="36" y="244">Pains: what annoys or costs them</text>
                <text x="36" y="266">Gains: what they want to have</text>
              </g>
              <text x="380" y="216" font-size="12" fill="#6ee7b7">fit</text>
              <rect x="420" y="172" width="320" height="106" rx="12" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="580" y="196" font-weight="700" fill="#67e8f9">Value map</text>
              <g text-anchor="start" font-size="12">
                <text x="436" y="222">Products: what you offer</text>
                <text x="436" y="244">Pain relievers: how you fix pains</text>
                <text x="436" y="266">Gain creators: how you add gains</text>
              </g>
              <text x="380" y="300" font-size="12" fill="#9b99b8">Match each pain to a feature. Remove any claim you cannot prove.</text>
            </g>
          </svg>
          <figcaption>Buyers care about outcomes, not features. The canvas helps you match what you offer to what they need.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Features, benefits and outcomes</h3>
          <p>A <strong>feature</strong> is what your product has or does. A <strong>benefit</strong> is what that feature saves or gives. An <strong>outcome</strong> is the business result the buyer really wants. Most weak outreach lists features. Strong outreach talks about outcomes.</p>
          <table class="lc-table">
            <thead><tr><th>Feature (LedgerLite)</th><th>Benefit</th><th>Outcome for a small business</th></tr></thead>
            <tbody>
              <tr><td>GST invoice templates</td><td>Invoices have the right fields every time</td><td>Fewer invoice corrections and cleaner reports to share with your CA</td></tr>
              <tr><td>Bank entry matching</td><td>No manual ticking of bank lines against invoices</td><td>You close the month faster</td></tr>
              <tr><td>Automatic payment reminders</td><td>No need to remember who to chase</td><td>Customers pay sooner, and cash is less tight</td></tr>
              <tr><td>Unpaid invoices dashboard</td><td>One screen shows who owes what</td><td>The owner knows the cash position every day</td></tr>
            </tbody>
          </table>
          <p>A second example from Nimbus Logistics, a delivery company in India. Feature: "next-day delivery within Maharashtra". Outcome for an online store: "fewer order cancellations from customers who want their order quickly". Rohit, the sales manager, should only claim this if he has seen it with real customers.</p>
        </div>
        <div class="lc-card">
          <h3>Proof: the part people skip</h3>
          <p>Claims without proof sound like every other sales email. Good proof is specific and true. Use only proof you really have:</p>
          <ul class="lc-list">
            <li><strong>A customer story</strong> with the customer's permission to share it.</li>
            <li><strong>A result you measured</strong>, for example "In our pilot, 3 of 5 customers set up bank matching in one day".</li>
            <li><strong>Something the buyer can see</strong>: a free trial, a sample report or a 10-minute demo.</li>
          </ul>
          <p>Never write "save 50% of your time" or "trusted by 1,000 businesses" unless you have the numbers. AI adds claims like these often. Delete them.</p>
          <p>A simple template for your one-line value proposition:</p>
          <pre><code>We help [who] [get what result] by [how], unlike [what they do today].
        Proof: [a real story, number or demo].</code></pre>
          <pre><code>We help small textile businesses close their books faster
        by matching bank entries to invoices, unlike checking by hand in spreadsheets.
        Proof: a free 14-day trial with your own bank statement.</code></pre>
          <p>In this made-up example, the trial length is LedgerLite's own offer. Use your real offer.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: build a value proposition</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put the steps for building a value proposition in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Pick one customer group, for example small textile businesses in Gujarat</li>
              <li data-order="2">List their jobs, pains and gains, in their own words if you can</li>
              <li data-order="3">List your product's features</li>
              <li data-order="4">Match each feature to a pain it removes or a gain it creates</li>
              <li data-order="5">Rewrite each match as an outcome the buyer cares about</li>
              <li data-order="6">Add real proof for each outcome, or remove the claim</li>
              <li data-order="7">Read the one-line version to a customer or colleague and make it clearer</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to build a value proposition canvas for one customer group. It will also write three short value propositions you can test.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a B2B sales strategist who writes clear, honest value propositions.

        My product: [LedgerLite, accounting software for small businesses in India].
        Features: [GST invoice templates; bank entry matching; automatic payment reminders by email; a dashboard of unpaid invoices].
        Proof I really have: [a free 14-day trial; one customer, Rangoli Prints, agreed we can share that they now close the month in 4 days instead of 10].
        Customer group: [owners and finance heads of small textile businesses in Gujarat].

        Please give me:
        1. A value proposition canvas as two tables. Customer profile: jobs, pains, gains (4 each). Value map: products, pain relievers, gain creators.
        2. A table: Feature, Benefit, Outcome for this customer group.
        3. Three one-line value propositions using: "We help [who] [result] by [how], unlike [today's way]."
        4. A list of every claim that needs proof. Mark each one "have proof" or "need proof", using only the proof I listed.

        Do not invent numbers, customers or results. Use simple English.</pre>
            <ul class="ai-try-checks">
              <li>The only numbers used come from your proof list (for example 4 days instead of 10).</li>
              <li>Outcomes are business results, not a list of features.</li>
              <li>Each value proposition is one sentence and easy to say out loud.</li>
              <li>Claims marked "need proof" stay out of your emails until you have proof.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A strong value proposition names the buyer's problem, the result they get and the proof. If you cannot prove a claim, remove it. Honest, specific outcomes beat big promises.
        </div>
      HTML
      starter_code: nil
    },
    5 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-sales">Sales & CRM</div>
          <h1 class="lc-title">Cold Emails That Get Replies</h1>
        </div>
        <p class="lc-lead">A cold email is a first email to someone who does not know you. Most cold emails are ignored because they talk about the sender, are too long, or ask for too much. In this lesson you will learn the five parts of a cold email that people answer. These are the subject line, the first line, the value, one clear ask and an easy way to say no. You will compare a weak email with a strong one and use AI to write your own.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="A short cold email from Kavya to Meena at Tulsi Textiles, with five labelled parts: a short specific subject, a first line about the prospect, one clear result as the value, one easy question as the ask, and an easy way to say no.">
            <defs><marker id="so5a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12" fill="#e2e0f0" text-anchor="start">
              <rect x="20" y="20" width="470" height="264" rx="12" fill="#1f1f44" stroke="#4b4a78"/>
              <rect x="20" y="20" width="470" height="32" rx="12" fill="#27274e"/>
              <text x="36" y="41" fill="#9b99b8">To: Meena Shah, Tulsi Textiles</text>
              <text x="36" y="80" font-weight="700" fill="#fcd34d">Subject: month-end close at Tulsi Textiles</text>
              <text x="36" y="116">Hi Meena, you wrote that month-end takes 10 days.</text>
              <text x="36" y="152">LedgerLite matches bank entries to invoices,</text>
              <text x="36" y="170">so small finance teams close the month faster.</text>
              <text x="36" y="206">Would a 15-minute call next Tuesday be useful?</text>
              <text x="36" y="242">If not, reply "no" and I will not follow up.</text>
              <text x="36" y="270" fill="#9b99b8">Kavya, LedgerLite</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#so5a)">
                <line x1="534" y1="76" x2="496" y2="76"/>
                <line x1="534" y1="112" x2="496" y2="112"/>
                <line x1="534" y1="157" x2="496" y2="157"/>
                <line x1="534" y1="202" x2="496" y2="202"/>
                <line x1="534" y1="238" x2="496" y2="238"/>
              </g>
              <text x="540" y="80" fill="#fcd34d">1. Subject: short, specific</text>
              <text x="540" y="116" fill="#93c5fd">2. First line: about them</text>
              <text x="540" y="161" fill="#c4b5fd">3. Value: one clear result</text>
              <text x="540" y="206" fill="#6ee7b7">4. Ask: one easy question</text>
              <text x="540" y="242" fill="#f9a8d4">5. An easy way to say no</text>
            </g>
          </svg>
          <figcaption>A shortened version of Kavya's cold email. Each part has one job.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The five parts</h3>
          <table class="lc-table">
            <thead><tr><th>Part</th><th>Its job</th><th>Good habits</th></tr></thead>
            <tbody>
              <tr><td><strong>Subject line</strong></td><td>Get the email opened</td><td>2 to 6 words, specific, plain. No ALL CAPS, no "!!!", no fake "Re:"</td></tr>
              <tr><td><strong>First line</strong></td><td>Show you wrote to them on purpose</td><td>Use one fact from your research. Do not start with "I hope you are well" or "My name is"</td></tr>
              <tr><td><strong>Value</strong></td><td>Say why it matters to them</td><td>One outcome, plus proof if you have it. No list of features</td></tr>
              <tr><td><strong>Ask</strong></td><td>Make the next step easy</td><td>One question with a small yes. For example, a 15-minute call or "Shall I send a 2-minute video?"</td></tr>
              <tr><td><strong>Easy no</strong></td><td>Respect their time and choice</td><td>"If this is not a priority, just reply no." It also keeps your list clean</td></tr>
            </tbody>
          </table>
          <p><strong>Length:</strong> keep a cold email short. Many sales teams aim for about 50 to 125 words, so it can be read on a phone in seconds. Test what works for your own buyers.</p>
        </div>
        <div class="lc-card">
          <h3>Weak email vs strong email</h3>
          <p><strong>Weak email (about 80 words, not counting the subject line):</strong></p>
          <pre><code>Subject: URGENT!!! Best accounting software in India

        Dear Sir/Madam,

        I hope this email finds you well. My name is Kavya and I work at
        LedgerLite. We are the leading, best-in-class accounting platform with
        cutting-edge AI features, GST invoicing, bank matching, reminders,
        dashboards, reports, multi-user access and much more. Thousands of
        businesses love us. I would love to show you everything our platform
        can do. Could we set up a demo, a call and a free trial this week?
        Please let me know your availability at the earliest.

        Regards,
        Kavya</code></pre>
          <p>Problems: a spammy subject, no name, all about the sender, a list of features, an unproven "thousands" claim, and three asks.</p>
          <p><strong>Strong email (about 75 words, not counting the subject line):</strong></p>
          <pre><code>Subject: month-end close at Tulsi Textiles

        Hi Meena,

        You wrote on LinkedIn last week that month-end closing takes your team
        about 10 days.

        LedgerLite matches bank entries to invoices, so small finance teams do
        less manual checking. Rangoli Prints, another Gujarat business, now closes
        in 4 days (they said we can share this).

        Would a 15-minute call next Tuesday or Wednesday be useful?

        If this is not a priority, just reply "no" and I will not follow up.

        Kavya
        LedgerLite, Karnataka</code></pre>
          <p>Rangoli Prints is a made-up customer for this example. In real emails, use only proof that is true and approved.</p>
          <p>A named person's work email is personal data under India's DPDP Act 2023, so always give an easy way to opt out and honour it. If you also email people in other countries, their rules apply too, such as CAN-SPAM in the US. This is general information, not legal advice.</p>
        </div>
        <div class="lc-card">
          <h3>Using AI to write and improve cold emails</h3>
          <p>Give AI your research note, your value proposition and your rules. Ask for two or three versions, then pick and edit one. Do not let AI choose the facts.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Write a cold email selling LedgerLite.</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Write a cold email from Kavya (LedgerLite) to Meena Shah, Finance Head, Tulsi Textiles.
        Facts: [her post: month-end takes about 10 days]. Proof: [Rangoli Prints: 4 days].
        Rules: under 100 words, one ask, first line about her, an easy way to say no.
        No hype words, no invented facts. Give 2 versions and 3 subject lines under 6 words.</code></pre>
          <p>AI word counts are often wrong. Paste the email into a word counter, or use this Google Sheets formula on a cell that holds the email. It splits the text at spaces and line breaks, then counts the pieces:</p>
          <pre><code>=COUNTA(SPLIT(A2, " "&amp;CHAR(10)))</code></pre>
        </div>
        <div class="lc-card">
          <h3>Activity: keep it or change it?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Kavya is editing her cold email. Sort each line.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="keep" data-label="Keep"></div>
              <div data-sorter-target="bucket" data-bucket="change" data-label="Change"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="keep" data-why="Short, specific and about the prospect's company.">Subject: month-end close at Tulsi Textiles</li>
              <li data-bucket="change" data-why="Capitals, exclamation marks and an unproven number look like spam.">Subject: URGENT!!! Save 50% on accounting</li>
              <li data-bucket="change" data-why="It says nothing about the reader. Start with a fact about them.">I hope this email finds you well.</li>
              <li data-bucket="keep" data-why="It uses a real, checked fact and shows you wrote to her on purpose.">You wrote on LinkedIn last week that month-end closing takes about 10 days.</li>
              <li data-bucket="change" data-why="Vague praise with no proof. Say one outcome instead.">We are the leading, best-in-class accounting platform.</li>
              <li data-bucket="change" data-why="Three asks make the reader do more work. Ask for one small thing.">Could we set up a demo, a call and a free trial this week?</li>
              <li data-bucket="keep" data-why="One small, clear ask with a suggested time.">Would a 15-minute call next Tuesday or Wednesday be useful?</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Write a cold email with AI using your research and your value proposition. Change the brackets to your own details, or run it as it is.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an expert B2B cold email writer. You write short, honest, human emails.

        Sender: [Kavya, sales rep at LedgerLite, a Karnataka accounting software startup].
        Prospect: [Meena Shah, Finance Head, Tulsi Textiles, Gujarat].
        Checked facts about the prospect: [Her LinkedIn post last week: month-end closing takes about 10 days. They are hiring an accounts assistant.]
        Our value: [LedgerLite matches bank entries to invoices, so finance teams close the month faster.]
        Proof we can share: [Rangoli Prints, a Gujarat business, now closes in 4 days instead of 10.]
        The ask: [a 15-minute call next week].

        Rules:
        - 50 to 110 words. First line about the prospect, not us.
        - One outcome, one proof, one clear question as the ask.
        - End with an easy way to say no.
        - No hype words (best, leading, revolutionary), no ALL CAPS, no "!!!".
        - Use only the facts above. Do not invent anything.

        Give me: 2 email versions, 3 subject lines of 2 to 6 words, and one line saying which version you would send and why.</pre>
            <ul class="ai-try-checks">
              <li>Count the words yourself. Each email should be 50 to 110 words.</li>
              <li>Every fact and number comes from your brackets. Nothing new was added.</li>
              <li>There is exactly one ask and an easy way to say no.</li>
              <li>Subject lines are plain and honest, with no fake "Re:".</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A cold email gets replies when it is short and about the reader. Use one true fact about them, one outcome with proof, and one easy ask. Always give them an easy way to say no.
        </div>
      HTML
      starter_code: nil
    },
    6 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-sales">Sales & CRM</div>
          <h1 class="lc-title">Personalisation at Scale</h1>
        </div>
        <p class="lc-lead">A cold email that could go to anyone gets ignored. But you cannot write 50 emails from scratch every day. The answer is a <strong>template with one real personal line</strong>. The template holds the parts that stay the same. The personal line shows you looked at this person's business. In this lesson, you will learn what good personalisation looks like and how merge fields work. You will also use AI to draft personal lines in bulk, and learn where "personal" becomes "creepy".</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 270" role="img" aria-label="A scale from too generic, to relevant, to creepy. Generic lines could go to anyone. Relevant lines use a checkable business fact linked to the offer. Creepy lines use private life details. The goal is the middle.">
            <defs><marker id="so6a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12.5" fill="#e2e0f0" text-anchor="middle">
              <line x1="30" y1="22" x2="730" y2="22" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#so6a)"/>
              <text x="30" y="14" text-anchor="start" fill="#9b99b8" font-size="11">less personal</text>
              <text x="730" y="14" text-anchor="end" fill="#9b99b8" font-size="11">more personal</text>
              <rect x="15" y="40" width="230" height="170" rx="12" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="130" y="66" font-weight="700" fill="#fcd34d">Too generic</text>
              <text x="130" y="98">"Hope you are doing well.</text>
              <text x="130" y="118">I came across your company</text>
              <text x="130" y="138">and loved what you do."</text>
              <text x="130" y="186" fill="#9b99b8" font-size="11">could be sent to anyone</text>
              <rect x="265" y="40" width="230" height="170" rx="12" fill="#1f1f44" stroke="#10b981" stroke-width="2"/>
              <text x="380" y="66" font-weight="700" fill="#6ee7b7">Relevant (aim here)</text>
              <text x="380" y="98">"Saw Tulsi Textiles opened</text>
              <text x="380" y="118">a second shop in Gujarat.</text>
              <text x="380" y="138">Two shops can mean double</text>
              <text x="380" y="158">the billing work."</text>
              <text x="380" y="186" fill="#9b99b8" font-size="11">checkable fact + link to your offer</text>
              <rect x="515" y="40" width="230" height="170" rx="12" fill="#1f1f44" stroke="#ec4899"/>
              <text x="630" y="66" font-weight="700" fill="#f9a8d4">Creepy</text>
              <text x="630" y="98">"Saw your son's wedding</text>
              <text x="630" y="118">photos. Congrats! Now,</text>
              <text x="630" y="138">about your accounts..."</text>
              <text x="630" y="186" fill="#9b99b8" font-size="11">private life, not business</text>
              <text x="380" y="245" fill="#9b99b8" font-size="12">A good personal line is true, about their work, and linked to why you are writing.</text>
            </g>
          </svg>
          <figcaption>Personalisation works when it is relevant. Too little feels like spam. Too much feels like spying.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>What good personalisation looks like</h3>
          <p>Kavya sells LedgerLite, a made-up Karnataka accounting app for small businesses. She uses a simple test for every personal line. The line must pass all three checks:</p>
          <ol class="lc-list">
            <li><strong>True and checkable.</strong> It comes from a source you can open again, such as their website, a news item or their own post.</li>
            <li><strong>About their work.</strong> It is about the business, their role or something they said in public as a professional.</li>
            <li><strong>Linked to your reason.</strong> It leads naturally to the problem your product helps with.</li>
          </ol>
          <table class="lc-table">
            <thead><tr><th>Personal line</th><th>Verdict</th><th>Why</th></tr></thead>
            <tbody>
              <tr><td>"Hi Meena, I love your brand!"</td><td>Too generic</td><td>No fact. It could go to anyone.</td></tr>
              <tr><td>"Hi Meena, you are based in Gujarat."</td><td>Fake personal</td><td>It is a merge field pretending to be research.</td></tr>
              <tr><td>"Hi Meena, I saw Tulsi Textiles opened a second shop on Ring Road in August."</td><td>Good</td><td>A real, recent business fact. It links to more billing work.</td></tr>
              <tr><td>"Hi Meena, I saw you were at a family wedding last weekend."</td><td>Creepy</td><td>Private life. It feels like you are watching her.</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Templates and merge fields</h3>
          <p>A <strong>merge field</strong> is a placeholder, such as <code>{{first_name}}</code>. Your email or CRM tool (customer relationship management software, such as Zoho CRM, HubSpot or Freshsales) fills it from a column in your list. The exact format of merge fields differs by tool, so check its help pages.</p>
          <p>Kavya's template has four parts. Only the personal line changes a lot from person to person.</p>
          <pre><code>Subject: {{company}} and month-end billing

        Hi {{first_name}},

        {{personal_line}}

        LedgerLite helps small shops send GST-ready invoices,
        send payment reminders and see unpaid bills in one place.

        Would a 15-minute call next Tuesday or Wednesday be useful?

        Kavya, LedgerLite, Karnataka</code></pre>
          <p>Her research sheet has one row per prospect. Column E holds the personal line. Before sending, she checks for gaps with two formulas:</p>
          <pre><code>=COUNTBLANK(E2:E51)                         counts prospects with no personal line yet
        =IF(E2="", "RESEARCH FIRST", "Ready")         labels each row in column F</code></pre>
          <p>A row with no personal line is not ready. Do not send it with an empty gap or a fake line. Also set a <strong>fallback</strong> (the text used when a field is empty) for <code>{{first_name}}</code>, such as "there". Then an empty cell never shows as "Hi ,".</p>
        </div>
        <div class="lc-card">
          <h3>Let AI draft personal lines in bulk</h3>
          <p>You find the facts. AI turns each fact into a short, natural line. This is where AI saves the most time. A weak prompt asks the AI to invent the research:</p>
          <pre><code>Write personalised first lines for these 20 companies: [list of names]</code></pre>
          <p>The AI does not know these companies. It will guess, and guesses sound like facts. A better prompt gives the facts and strict rules:</p>
          <pre><code>For each row, write one opening line under 25 words.
        Use ONLY the fact in that row. Link it to billing or GST work.
        If the fact is empty or about private life, write SKIP.
        Output a table: Name | Line | Fact used.</code></pre>
          <p>Then <strong>you</strong> check every line against its source before sending. Also protect privacy. Paste only what the AI needs: first name, company and the public business fact. Do not paste phone numbers, personal emails or notes from private calls into a public AI tool. Use the AI tool your company has approved.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: good, generic or creepy?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Kavya is writing to small business owners. Sort each opening line.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="good" data-label="Good personal line"></div>
              <div data-sorter-target="bucket" data-bucket="generic" data-label="Too generic"></div>
              <div data-sorter-target="bucket" data-bucket="creepy" data-label="Creepy or fake"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="good" data-why="A public, recent business fact. Hiring for accounts links directly to LedgerLite.">"Saw GreenLeaf Organics is hiring an accounts assistant."</li>
              <li data-bucket="generic" data-why="There is no fact here. Every prospect could get this line.">"I have been following your company and I am impressed."</li>
              <li data-bucket="creepy" data-why="Health is private. Never use it in a sales message.">"Hope your knee surgery went well last month."</li>
              <li data-bucket="creepy" data-why="There was no earlier talk. Pretending there was is dishonest.">"As we discussed, here is the information you asked for."</li>
              <li data-bucket="good" data-why="It quotes their own public post and links it to a real problem.">"You posted that festive orders doubled your invoicing work. That is the exact problem we help with."</li>
              <li data-bucket="generic" data-why="A city name from a merge field is not research.">"I see you are a business in Maharashtra."</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Give the AI a small research sheet and let it draft one personal line per prospect. Watch how it handles the empty and the private rows.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a sales assistant for [LedgerLite, an accounting app for small businesses in India].
        Our offer: [GST-ready invoices, payment reminders and a simple view of unpaid bills].

        Write one opening line for each prospect below.
        Rules:
        - Use ONLY the fact in that row. Do not add any detail.
        - Link the fact to a problem our offer can help with.
        - Under 25 words. Friendly and plain. No flattery.
        - If the fact is empty or about private life (family, health, home), write SKIP and say why.

        Prospects:
        1. [Meena, Finance Head, Tulsi Textiles, Gujarat. Fact: opened a second shop on Ring Road in August (their Instagram post).]
        2. [Sanjay, founder, GreenLeaf Organics, Maharashtra. Fact: hiring an accounts assistant (job post on their website).]
        3. [Farah, partner, Farah Interiors, Kerala. Fact: none found.]
        4. [Deepak, director, Rao Pharma Distributors, Telangana. Fact: posted photos from his son's wedding.]

        Output a table: Prospect | Opening line | Fact used | Source to check.
        Then list any line where you were unsure.</pre>
            <ul class="ai-try-checks">
              <li>Each line uses only the fact from its own row. Nothing is added.</li>
              <li>Rows 3 and 4 are marked SKIP, with a reason.</li>
              <li>No invented numbers, results or "as we discussed" lines.</li>
              <li>You would still open each source to check the fact before sending.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Personalisation at scale means real research plus a fast template, not fake research. You find one true business fact. AI helps you word it. If you have no fact, fix the research before you send.
        </div>
      HTML
      starter_code: nil
    },
    7 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-sales">Sales & CRM</div>
          <h1 class="lc-title">LinkedIn Connection Requests and Messages</h1>
        </div>
        <p class="lc-lead">LinkedIn is a good place to reach business buyers, because people use it for work. But it is also easy to annoy people there. In this lesson, you will prepare your own profile, write short connection notes, and send follow-up messages that start real conversations. You will also learn LinkedIn's rules on automation. Breaking them can get your account limited or closed.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 240" role="img" aria-label="Five steps: fix your profile, read their profile and posts, send a short connection note, after they accept thank them and share something useful, then send one follow-up and stop. Below: never use bots, scraping tools or auto-invite extensions. AI drafts, you read, edit and send by hand.">
            <defs><marker id="so7a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12.5" fill="#e2e0f0" text-anchor="middle">
              <rect x="15" y="20" width="130" height="92" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="80" y="48" font-weight="700">1. Fix your</text><text x="80" y="66" font-weight="700">profile</text>
              <text x="80" y="94" font-size="11" fill="#9b99b8">headline, About</text>
              <rect x="165" y="20" width="130" height="92" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="230" y="48" font-weight="700">2. Read their</text><text x="230" y="66" font-weight="700">profile, posts</text>
              <text x="230" y="94" font-size="11" fill="#9b99b8">find a real reason</text>
              <rect x="315" y="20" width="130" height="92" rx="10" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="380" y="48" font-weight="700">3. Short</text><text x="380" y="66" font-weight="700">note</text>
              <text x="380" y="94" font-size="11" fill="#9b99b8">no pitch yet</text>
              <rect x="465" y="20" width="130" height="92" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="530" y="48" font-weight="700">4. Thank them,</text><text x="530" y="66" font-weight="700">add value</text>
              <text x="530" y="94" font-size="11" fill="#9b99b8">after they accept</text>
              <rect x="615" y="20" width="130" height="92" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="680" y="48" font-weight="700">5. One follow-</text><text x="680" y="66" font-weight="700">up, then stop</text>
              <text x="680" y="94" font-size="11" fill="#9b99b8">no reply = no spam</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#so7a)">
                <line x1="147" y1="66" x2="161" y2="66"/><line x1="297" y1="66" x2="311" y2="66"/>
                <line x1="447" y1="66" x2="461" y2="66"/><line x1="597" y1="66" x2="611" y2="66"/>
              </g>
              <rect x="15" y="135" width="730" height="38" rx="8" fill="#27274e" stroke="#ec4899"/>
              <text x="380" y="159" fill="#f9a8d4">Never: bots, scraping tools, or extensions that send invites or messages for you</text>
              <rect x="15" y="185" width="730" height="38" rx="8" fill="#27274e" stroke="#10b981"/>
              <text x="380" y="209" fill="#6ee7b7">AI drafts the words. You read, edit and send each one by hand.</text>
            </g>
          </svg>
          <figcaption>A LinkedIn outreach flow that respects people's time and LinkedIn's rules.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Your profile comes first</h3>
          <p>When you send an invitation, most people look at your profile before they accept. So your profile is part of your message. Check three parts:</p>
          <table class="lc-table">
            <thead><tr><th>Part</th><th>Weak</th><th>Better (Kavya at LedgerLite)</th></tr></thead>
            <tbody>
              <tr><td>Headline (the line under your name)</td><td>Sales Executive at LedgerLite</td><td>I help small businesses in India keep billing and GST simple | LedgerLite</td></tr>
              <tr><td>About section</td><td>"Passionate, result-driven professional."</td><td>Who you help, the problem you solve, and one example you can back up</td></tr>
              <tr><td>Photo and activity</td><td>No photo, no posts</td><td>A clear, friendly photo and a few useful posts or comments</td></tr>
            </tbody>
          </table>
          <p>AI can suggest five headline options in seconds. But do not let it add claims like "trusted by 1,000+ businesses" unless that is true and you can prove it.</p>
        </div>
        <div class="lc-card">
          <h3>Connection notes: short, real, no pitch</h3>
          <p>A <strong>connection note</strong> is the short message you add to an invitation. LinkedIn limits its length, and free accounts may only send a few notes each month. These limits change, so check LinkedIn's current help pages. Plan for about 200 characters.</p>
          <p>Weak note (a pitch to a stranger):</p>
          <pre><code>Hi Sanjay, LedgerLite is India's best accounting software.
        Can we schedule a demo this week? Book here: [link]</code></pre>
          <p>Better note (a real reason, no ask):</p>
          <pre><code>Hi Sanjay, I saw GreenLeaf is hiring for accounts. I work
        with small food businesses on billing and GST. Would be
        glad to connect. Kavya</code></pre>
          <p>The better note has a checkable fact, says who Kavya helps, and asks for nothing except the connection. "Best in India" is also a claim she cannot prove, so it is gone.</p>
        </div>
        <div class="lc-card">
          <h3>After they accept</h3>
          <table class="lc-table">
            <thead><tr><th>Message</th><th>When</th><th>Goal</th><th>Example</th></tr></thead>
            <tbody>
              <tr><td>Thank you + value</td><td>A day or two after they accept</td><td>Be useful, not pushy</td><td>"Thanks for connecting, Sanjay. When you hire for accounts, this one-page GST checklist may help new staff. Happy to share it."</td></tr>
              <tr><td>One clear question</td><td>About a week later, if no reply</td><td>Start a conversation</td><td>"Quick question: do you plan to keep billing in Excel as you grow, or move to software?"</td></tr>
              <tr><td>Stop</td><td>No reply after that</td><td>Respect their silence</td><td>Stay connected. Like or comment on their posts only when you have something real to add.</td></tr>
            </tbody>
          </table>
          <p>If they reply with interest, then suggest a short call. If they say "not interested", thank them and stop.</p>
        </div>
        <div class="lc-card">
          <h3>LinkedIn's rules on automation</h3>
          <p>LinkedIn's User Agreement and help pages describe what is not allowed. In general, you must not:</p>
          <ul class="lc-list">
            <li>Use bots or other unapproved automated methods to send invitations or messages, or to add or download contacts.</li>
            <li>Use software to scrape (automatically copy) profiles or other data from LinkedIn.</li>
            <li>Use browser extensions or plugins that change LinkedIn or act on your account for you.</li>
          </ul>
          <p>LinkedIn says it may restrict or close accounts that break these rules. Sending many invitations that people ignore can also get your invitations limited. LinkedIn's own paid tools, such as Sales Navigator, are a different case, because LinkedIn provides them. Rules change, so read LinkedIn's current User Agreement before you use any outside tool.</p>
          <p>The safe way to use AI here is simple. Read the profile yourself. Ask AI to help with the words. Then send each message yourself. Paste only the business facts the AI needs into it. This is not legal advice.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: Kavya writes a connection note</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="tool" data-label="Kavya opens LinkedIn">She reads Sanjay's profile at GreenLeaf Organics, Maharashtra, and his recent posts.</li>
              <li data-kind="result" data-label="What she finds">A post from last week: "GreenLeaf now delivers to 12 cities. We are hiring an accounts assistant."</li>
              <li data-kind="user" data-label="Her prompt">"Write a LinkedIn connection note under 200 characters to Sanjay, founder of GreenLeaf Organics. Fact: they now deliver to 12 cities and are hiring for accounts. I sell LedgerLite billing software. No pitch, no link."</li>
              <li data-kind="answer" data-label="AI draft">"Hi Sanjay, congrats on crossing ₹5 crore revenue and delivering to 12 cities! Growth like that means more invoices. I help food brands with GST billing. Let's connect. Kavya"</li>
              <li data-kind="warn" data-label="Invented fact">The ₹5 crore figure is not in Sanjay's post. The AI made it up. Sending it would be false and embarrassing.</li>
              <li data-kind="check" data-label="Kavya edits">She removes the revenue claim, checks the "12 cities" fact against the post, and counts the characters.</li>
              <li data-kind="tool" data-label="She sends it by hand">She pastes the final note into the invitation on LinkedIn herself. No extension or bot is used.</li>
              <li data-kind="result" data-label="Two days later">Sanjay accepts. Kavya notes the date in her CRM and plans a thank-you message with a useful checklist.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask the AI for a connection note, two follow-up messages and a better headline for your own profile.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You help me write LinkedIn outreach. I send every message by hand.

        Me: [Kavya, sales at LedgerLite, billing and GST software for small businesses in India].
        Prospect: [Sanjay, founder of GreenLeaf Organics, an online organic food store in Maharashtra].
        Public fact from his profile: [his post says GreenLeaf now delivers to 12 cities and is hiring an accounts assistant].

        Write:
        1. A connection note under 200 characters. Use the fact. No pitch, no link.
        2. A thank-you message for after he accepts. Offer one useful thing, not a demo.
        3. A follow-up for one week later if he does not reply. End with one simple question.
        4. Three options for my LinkedIn headline, each under 120 characters.

        Rules: plain, friendly English. Use only the facts above. Do not invent numbers, clients or awards.
        Show the character count next to the connection note.</pre>
            <ul class="ai-try-checks">
              <li>The connection note is really under 200 characters. Count it yourself.</li>
              <li>No numbers, clients or awards appear that were not in the prompt.</li>
              <li>The first two messages do not push for a demo or a call.</li>
              <li>The headlines make no claims you cannot prove.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> On LinkedIn, AI should help you write, never act for you. Read the profile yourself, use one real reason, keep notes short, and send each one by hand. That keeps your messages human and your account safe.
        </div>
      HTML
      starter_code: nil
    },
    8 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-sales">Sales & CRM</div>
          <h1 class="lc-title">Cold Calls and Voicemail Scripts</h1>
        </div>
        <p class="lc-lead">A phone call can do in five minutes what ten emails cannot. You hear the person's voice, their questions and their doubts. But a cold call interrupts someone's day. So you need a clear opener, good questions and respect for their time. In this lesson, you will use AI to prepare openers, discovery questions and a voicemail script. You will also learn the basic do-not-disturb (DND) rules for sales calls in India.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 270" role="img" aria-label="A cold call flow. Check DND and consent first. Dial. If there is no answer, leave a short voicemail. If they answer, give an opener and ask permission. If they are busy, book a callback. If they agree, ask discovery questions and agree one next step.">
            <defs><marker id="so8a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12.5" fill="#e2e0f0" text-anchor="middle">
              <rect x="15" y="30" width="140" height="58" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="85" y="54" font-weight="700">Check first</text><text x="85" y="74" font-size="11" fill="#9b99b8">DND list + consent</text>
              <rect x="185" y="30" width="140" height="58" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="255" y="54" font-weight="700">Dial</text><text x="255" y="74" font-size="11" fill="#9b99b8">script beside you</text>
              <rect x="365" y="30" width="170" height="58" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="450" y="54" font-weight="700">Opener + permission</text><text x="450" y="74" font-size="11" fill="#9b99b8">"Is now a bad time?"</text>
              <rect x="575" y="30" width="170" height="58" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="660" y="54" font-weight="700">Discovery questions</text><text x="660" y="74" font-size="11" fill="#9b99b8">3 to 5 open questions</text>
              <rect x="185" y="160" width="140" height="58" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="255" y="184" font-weight="700">Voicemail</text><text x="255" y="204" font-size="11" fill="#9b99b8">20 to 30 seconds</text>
              <rect x="365" y="160" width="170" height="58" rx="10" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="450" y="184" font-weight="700">Busy: book a callback</text><text x="450" y="204" font-size="11" fill="#9b99b8">offer two times</text>
              <rect x="575" y="160" width="170" height="58" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="660" y="184" font-weight="700">Agree a next step</text><text x="660" y="204" font-size="11" fill="#9b99b8">meeting, demo or "no"</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#so8a)">
                <line x1="157" y1="59" x2="181" y2="59"/>
                <line x1="327" y1="59" x2="361" y2="59"/>
                <line x1="537" y1="59" x2="571" y2="59"/>
                <line x1="255" y1="90" x2="255" y2="156"/>
                <line x1="450" y1="90" x2="450" y2="156"/>
                <line x1="660" y1="90" x2="660" y2="156"/>
              </g>
              <g font-size="11" fill="#9b99b8">
                <text x="344" y="50">answer</text>
                <text x="554" y="50">OK</text>
                <text x="222" y="128">no answer</text>
                <text x="475" y="128">busy</text>
              </g>
              <text x="380" y="252" fill="#9b99b8" font-size="12">AI helps you prepare and practise. You make the call, listen and take notes.</text>
            </g>
          </svg>
          <figcaption>A simple cold call plan for Rohit, a sales manager at the made-up Nimbus Logistics in India.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Openers: who you are, why you called, and permission</h3>
          <p>The first 20 seconds decide if the call continues. A <strong>permission-based opener</strong> says who you are and why you called. Then it lets the person choose to continue. People relax when they feel in control.</p>
          <table class="lc-table">
            <thead><tr><th>Weak opener</th><th>Why it fails</th></tr></thead>
            <tbody>
              <tr><td>"Hi, how are you today?"</td><td>It sounds fake from a stranger. It wastes their time.</td></tr>
              <tr><td>"We are India's leading logistics company and we..."</td><td>It is about you, and "leading" is a claim they cannot check.</td></tr>
              <tr><td>"Do you have 30 minutes to talk?"</td><td>Nobody has 30 minutes for a stranger.</td></tr>
            </tbody>
          </table>
          <p>Rohit's permission-based opener to Harsh Patel, the operations head at the made-up Tulsi Textiles, Gujarat:</p>
          <pre><code>Hi Harsh, this is Rohit from Nimbus Logistics.
        I'll be honest, this is a cold call.
        I'm calling because Tulsi Textiles sells sarees online across India,
        and we handle deliveries for online stores in Gujarat and Maharashtra.
        Can I take 30 seconds to say why I called?
        Then you can tell me if it's worth talking more.</code></pre>
          <p>If he says "not now", ask: "Would Thursday at 11 or Friday at 4 be better?" Then send a calendar invite. If he says "no", thank him and end the call.</p>
        </div>
        <div class="lc-card">
          <h3>Discovery questions</h3>
          <p><strong>Discovery</strong> means asking questions to understand the buyer's situation before you pitch. Use <strong>open questions</strong> (questions that need more than "yes" or "no"). Rohit prepares five:</p>
          <ol class="lc-list">
            <li>"How do you ship online orders today?"</li>
            <li>"Roughly how many orders do you send in a normal week, and in the festive season?"</li>
            <li>"What happens when a delivery is late or an order is returned?"</li>
            <li>"What would you change about your current delivery partner?"</li>
            <li>"Who else would be part of a decision like this?"</li>
          </ol>
          <p>AI is good at two jobs here. It can suggest questions for a type of buyer. It can also <strong>role-play</strong> the buyer so you can practise. Try a prompt like this:</p>
          <pre><code>Act as Harsh, operations head at a textile brand in Gujarat.
        You are busy and a bit doubtful. I am calling from a logistics company.
        Answer my questions in 1 or 2 short sentences. Raise one real concern.
        After 6 turns, tell me which of my questions worked and which did not.</code></pre>
          <p>On the real call, write down the answers in your CRM. Do not trust memory, and do not let AI fill in answers you did not hear.</p>
        </div>
        <div class="lc-card">
          <h3>A voicemail script</h3>
          <p>Many calls go to voicemail or are not answered. A good voicemail is short, gives one reason and makes calling back easy.</p>
          <pre><code>Hi Harsh, this is Rohit from Nimbus Logistics.
        I'm calling about deliveries for Tulsi Textiles' online store,
        especially before the festive rush.
        I'll also send you a short email today.
        My number is 98XXX XXXXX. Again, 98XXX XXXXX.
        Thanks, Harsh.</code></pre>
          <p>Say your number slowly, twice. Keep it to about 20 to 30 seconds. On WhatsApp or SMS, do not send a voice note to someone who has not agreed to hear from you. The WhatsApp lesson explains why.</p>
        </div>
        <div class="lc-card">
          <h3>DND rules for sales calls in India (not legal advice)</h3>
          <p>India's telecom regulator, TRAI, controls commercial calls and SMS through rules called the TCCCPR (Telecom Commercial Communications Customer Preference Regulations). In general terms:</p>
          <ul class="lc-list">
            <li><strong>DND list.</strong> People can register on the National Customer Preference Register to block promotional calls, fully or by category. They do this by calling or texting 1909, or through TRAI's DND app.</li>
            <li><strong>Registered senders and number series.</strong> Promotional calls must come from registered senders using the 140 number series. The 1600 series is for service and transactional calls, mainly from banks, insurers, other financial firms and government offices.</li>
            <li><strong>Normal mobile numbers.</strong> Using ordinary 10-digit numbers for promotional calls without registration can get the number blocked or disconnected. The sender can also be blacklisted.</li>
            <li><strong>Complaints.</strong> Since the 2025 changes, people can complain about spam calls even if they are not on the DND list. They can use 1909 or the TRAI DND app.</li>
          </ul>
          <p>Many business people use personal mobiles. So treat every number as covered unless your compliance team says otherwise. India's DPDP Act 2023 (Digital Personal Data Protection Act) also applies to the personal data in your call list. Automated or AI voice calls have extra rules. Other countries have their own do-not-call rules. The rules changed in 2025 and may change again. Check TRAI's website and ask a legal adviser before you plan a calling campaign.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: order the cold call</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put Rohit's call steps in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Check the number against your DND and opt-out lists, and review your research notes.</li>
              <li data-order="2">Say who you are and that this is a cold call.</li>
              <li data-order="3">Give one reason for calling, then ask permission to continue.</li>
              <li data-order="4">Ask 3 to 5 open discovery questions and listen.</li>
              <li data-order="5">Agree one next step, such as a 20-minute meeting on Thursday.</li>
              <li data-order="6">Write the answers and the next step in the CRM right after the call.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask the AI to write a complete call plan: opener, questions, answers to two objections and a voicemail. Then read it aloud and time it.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a sales coach. Help me prepare a cold call.

        Me: [Rohit, sales manager at Nimbus Logistics. We deliver orders for online stores in Maharashtra and Gujarat.]
        Prospect: [Harsh Patel, operations head at Tulsi Textiles, Gujarat. They sell sarees online across India.]
        Goal of the call: [book a 20-minute meeting next week].

        Write:
        1. A permission-based opener under 40 words. Say it is a cold call.
        2. Five open discovery questions, in a sensible order.
        3. Short, honest replies to two objections: "We already have a courier partner" and "Send me an email".
        4. A voicemail script of about 25 seconds, with a place for my number said twice.
        5. A line to end the call politely if he says no.

        Rules: simple spoken English. No claims about prices, speed or clients that I did not give you. Mark any place where I must add a real fact with [ADD FACT].</pre>
            <ul class="ai-try-checks">
              <li>The opener is short, honest and asks permission.</li>
              <li>The discovery questions are open, not yes-or-no.</li>
              <li>No invented prices, delivery times or client names. Real facts are marked [ADD FACT].</li>
              <li>The voicemail takes about 25 seconds when you read it aloud.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A good cold call is honest, short and about the buyer. AI helps you prepare the words and practise with role-play. But you make the call, you listen, and you follow the DND rules before you dial.
        </div>
      HTML
      starter_code: nil
    },
    9 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-sales">Sales & CRM</div>
          <h1 class="lc-title">WhatsApp and Other Channels</h1>
        </div>
        <p class="lc-lead">In India, many customers prefer WhatsApp to email. It feels fast and personal. But that is also why an unwanted WhatsApp message feels rude. In this lesson, you will learn when WhatsApp is the right channel, what <strong>opt-in</strong> (a person's clear agreement to receive your messages) means, the main business messaging rules, and the right tone. You will also see where SMS, Instagram and other channels fit.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="A decision tree. Did they share their number and agree to messages from you? If no, do not WhatsApp them: use email, LinkedIn or a call. A number from a website, card or bought list is not opt-in. If yes, message with care: if you write first, say who you are and why; if they reply, answer fast and be human; if they say stop, stop and note it in the CRM.">
            <defs><marker id="so9a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12.5" fill="#e2e0f0" text-anchor="middle">
              <rect x="200" y="12" width="360" height="56" rx="10" fill="#1f1f44" stroke="#8b5cf6" stroke-width="2"/>
              <text x="380" y="36" font-weight="700">Did they share their number</text>
              <text x="380" y="55" font-weight="700">and agree to messages from you?</text>
              <rect x="20" y="110" width="260" height="56" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="150" y="134" font-weight="700" fill="#f9a8d4">No: do not WhatsApp them</text>
              <text x="150" y="154" font-size="11" fill="#9b99b8">use email, LinkedIn or a call</text>
              <rect x="480" y="110" width="260" height="56" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="610" y="134" font-weight="700" fill="#6ee7b7">Yes: message with care</text>
              <text x="610" y="154" font-size="11" fill="#9b99b8">keep a record of the opt-in</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#so9a)">
                <line x1="300" y1="70" x2="190" y2="106"/>
                <line x1="460" y1="70" x2="570" y2="106"/>
                <line x1="560" y1="168" x2="370" y2="206"/>
                <line x1="610" y1="168" x2="525" y2="206"/>
                <line x1="660" y1="168" x2="680" y2="206"/>
              </g>
              <text x="228" y="80" font-size="11" fill="#9b99b8">no</text>
              <text x="532" y="80" font-size="11" fill="#9b99b8">yes</text>
              <rect x="300" y="210" width="140" height="60" rx="10" fill="#27274e" stroke="#3b82f6"/>
              <text x="370" y="236">You write first</text><text x="370" y="256" font-size="11" fill="#9b99b8">who you are + why</text>
              <rect x="455" y="210" width="140" height="60" rx="10" fill="#27274e" stroke="#22d3ee"/>
              <text x="525" y="236">They reply</text><text x="525" y="256" font-size="11" fill="#9b99b8">answer fast, be human</text>
              <rect x="610" y="210" width="140" height="60" rx="10" fill="#27274e" stroke="#f59e0b"/>
              <text x="680" y="236">They say stop</text><text x="680" y="256" font-size="11" fill="#9b99b8">stop + note in CRM</text>
              <text x="150" y="214" font-size="11.5" fill="#9b99b8">A number on a website,</text>
              <text x="150" y="232" font-size="11.5" fill="#9b99b8">a visiting card or a bought</text>
              <text x="150" y="250" font-size="11.5" fill="#9b99b8">list is NOT opt-in.</text>
            </g>
          </svg>
          <figcaption>Before any WhatsApp message, ask one question: did this person agree to hear from you?</figcaption>
        </figure>
        <div class="lc-card">
          <h3>When WhatsApp is the right channel</h3>
          <p>Sweet Crumbs is a made-up home bakery in Maharashtra that sells catering to offices. Here is when WhatsApp fits, and when it does not:</p>
          <table class="lc-table">
            <thead><tr><th>Situation</th><th>WhatsApp?</th><th>Why</th></tr></thead>
            <tbody>
              <tr><td>An office admin filled the website form and ticked "Send me menus on WhatsApp"</td><td>Yes</td><td>Clear opt-in for this business</td></tr>
              <tr><td>A regular client asked, "Message me the Diwali menu when it is ready"</td><td>Yes</td><td>They asked for this message</td></tr>
              <tr><td>An HR manager's number from a visiting card collected at an event</td><td>No, not yet</td><td>A card shares a number. It is not agreement to marketing messages. Email or call, and ask.</td></tr>
              <tr><td>A list of 500 "HR managers in Maharashtra" bought online</td><td>No</td><td>No consent. It also risks breaking data protection law.</td></tr>
              <tr><td>A company number from an online map listing</td><td>No</td><td>Public does not mean permission</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Opt-in and the business messaging rules</h3>
          <p>WhatsApp's Business Messaging Policy says, in general, that you may contact people only if they gave you their number and gave you <strong>opt-in permission</strong> to get messages from you. You must also respect every request to stop, whether it comes on WhatsApp or anywhere else. Good practice: the opt-in clearly names your business and WhatsApp, and the person takes an action, such as ticking an empty box or replying "YES". A pre-ticked box is not clear agreement.</p>
          <p>There are two main WhatsApp tools for businesses:</p>
          <ul class="lc-list">
            <li><strong>WhatsApp Business app.</strong> A free app for small businesses, used on a phone by one or a few people.</li>
            <li><strong>WhatsApp Business Platform.</strong> For larger teams, usually through a provider. You can reply freely within 24 hours of the customer's last message (the customer service window). When you start a conversation, or write after that window closes, you must use a <strong>message template</strong> that WhatsApp has approved.</li>
          </ul>
          <p>People can block or report your number. Many blocks and reports can lower your quality rating and limit your account. Keep a record of each opt-in: date, how you got it, and what they agreed to. India's DPDP Act 2023 also expects clear consent for a clear purpose. Details change, so check WhatsApp's current policy pages. This is not legal advice.</p>
        </div>
        <div class="lc-card">
          <h3>Tone for chat messages</h3>
          <p>A chat message should feel like a message from a helpful person, not an advert. Compare these two first messages to an office admin who opted in:</p>
          <pre><code>Weak:
        Dear Sir/Madam, Greetings from Sweet Crumbs!!! 🎉🎉 We are Maharashtra's
        No.1 bakery offering cakes, cookies, snacks, breakfast boxes,
        birthday cakes, farewell cakes... [long list and 3 PDFs]

        Better:
        Hi Priya, this is Neha from Sweet Crumbs. You asked for
        our office snack menu, so here it is: [link]. Boxes start at
        ₹[price] per person for 20+ people. Would you like a free tasting
        box for your team next week? Reply STOP and I will not message again.</code></pre>
          <p>The better message says who is writing and why. It has one offer and one question, and it gives an easy way out. Also send messages in business hours. Do not send voice notes or large files unless the person asks. AI can shorten long drafts and make them friendlier. But you must check the price, the dates and every offer.</p>
        </div>
        <div class="lc-card">
          <h3>Other channels</h3>
          <table class="lc-table">
            <thead><tr><th>Channel</th><th>Good for</th><th>Watch out for</th></tr></thead>
            <tbody>
              <tr><td>SMS</td><td>Short reminders and confirmations</td><td>In India, business SMS must go through DLT (a telecom registration system for senders and message templates). TRAI's DND rules apply.</td></tr>
              <tr><td>Instagram or Facebook messages</td><td>Replying to people who messaged you or commented</td><td>Cold messages to strangers look like spam, and the platforms limit them</td></tr>
              <tr><td>Events and trade shows</td><td>Meeting buyers face to face</td><td>Ask before you add someone to a list</td></tr>
              <tr><td>Referrals</td><td>Warm introductions from happy customers</td><td>Ask the customer first. Never use their name without permission.</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Activity: OK to send on WhatsApp?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sweet Crumbs wants to message these people on WhatsApp. Sort each one.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="ok" data-label="OK to send"></div>
              <div data-sorter-target="bucket" data-bucket="no" data-label="Do not send"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="ok" data-why="She took an action and named this business. That is clear opt-in.">An admin who ticked an empty box saying "Send me Sweet Crumbs menus on WhatsApp"</li>
              <li data-bucket="no" data-why="A bought list has no consent from these people.">500 numbers from a bought "Maharashtra HR managers" list</li>
              <li data-bucket="ok" data-why="The client asked for this exact message.">A regular client who said, "WhatsApp me the Diwali menu"</li>
              <li data-bucket="no" data-why="They opted out. You must stop, even if the new offer is good.">A client who replied STOP last month, about a new offer</li>
              <li data-bucket="no" data-why="Sharing a number on a card is not agreement to marketing messages.">A manager whose visiting card you collected at a business event</li>
              <li data-bucket="no" data-why="A pre-ticked box is not a real action by the person.">A person who signed up where the WhatsApp box was already ticked</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask the AI to write short WhatsApp messages for a customer who has opted in, with an easy way to stop.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You write short WhatsApp messages for [Sweet Crumbs, a home bakery in Maharashtra that supplies snack boxes to offices].

        Customer: [Priya, office admin at a 60-person IT company in Maharashtra].
        Opt-in: [she ticked "Send me menus on WhatsApp" on our website form on 12 September].
        Facts you may use: [snack boxes for 20+ people, free tasting box for new offices, orders need 2 days' notice].

        Write:
        1. A first message: who we are, why we are writing, one offer, one question.
        2. A follow-up for 5 days later if she does not reply. Shorter than the first.
        3. A reply for when she writes "Not now, maybe after Diwali."
        4. A reply for when she writes "STOP".

        Rules:
        - Each message under 60 words. Friendly, plain English. At most one emoji.
        - Messages 1 and 2 end with a simple way to opt out.
        - Use only the facts above. Write [ADD PRICE] where a price is needed.
        - No pressure, fake urgency or claims like "Maharashtra's No.1".</pre>
            <ul class="ai-try-checks">
              <li>Message 1 says who is writing and why, in the first line.</li>
              <li>Each message is under 60 words and has one clear question or offer.</li>
              <li>The STOP reply confirms she will get no more messages, and sells nothing.</li>
              <li>No invented prices, offers or claims. Prices show as [ADD PRICE].</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> WhatsApp works best for people who asked to hear from you. Get a clear opt-in, keep a record of it, write short and human messages, and stop the moment someone asks. Everyone else gets email, LinkedIn or a call.
        </div>
      HTML
      starter_code: nil
    },
    10 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-sales">Sales & CRM</div>
          <h1 class="lc-title">Follow-Up Sequences</h1>
        </div>
        <p class="lc-lead">Busy people miss messages. A "no reply" often means "not seen" or "not today", not "no". A <strong>follow-up sequence</strong> is a planned series of touches (one touch is one email, message or call) sent over a few weeks. In this lesson, you will plan timing, choose how many touches to send, and give each touch a new angle. You will build a 5-touch sequence with AI. You will also learn when to stop.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 250" role="img" aria-label="A timeline of five touches: day 1 email about the problem, day 3 LinkedIn connection, day 8 email with a useful idea, day 13 phone call with a quick question, day 20 email to close the loop. Stop at once if they reply, say no, opt out or the email bounces.">
            <defs><marker id="so10a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12.5" fill="#e2e0f0" text-anchor="middle">
              <line x1="30" y1="90" x2="735" y2="90" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#so10a)"/>
              <g font-weight="700">
                <text x="80" y="52">Day 1</text><text x="230" y="52">Day 3</text><text x="380" y="52">Day 8</text><text x="530" y="52">Day 13</text><text x="680" y="52">Day 20</text>
              </g>
              <circle cx="80" cy="90" r="14" fill="#1f1f44" stroke="#3b82f6" stroke-width="2"/><text x="80" y="95" font-size="12">1</text>
              <circle cx="230" cy="90" r="14" fill="#1f1f44" stroke="#8b5cf6" stroke-width="2"/><text x="230" y="95" font-size="12">2</text>
              <circle cx="380" cy="90" r="14" fill="#1f1f44" stroke="#3b82f6" stroke-width="2"/><text x="380" y="95" font-size="12">3</text>
              <circle cx="530" cy="90" r="14" fill="#1f1f44" stroke="#10b981" stroke-width="2"/><text x="530" y="95" font-size="12">4</text>
              <circle cx="680" cy="90" r="14" fill="#1f1f44" stroke="#f59e0b" stroke-width="2"/><text x="680" y="95" font-size="12">5</text>
              <rect x="20" y="118" width="120" height="50" rx="8" fill="#27274e"/><text x="80" y="138">Email</text><text x="80" y="156" font-size="11" fill="#9b99b8">the problem</text>
              <rect x="170" y="118" width="120" height="50" rx="8" fill="#27274e"/><text x="230" y="138">LinkedIn</text><text x="230" y="156" font-size="11" fill="#9b99b8">short note</text>
              <rect x="320" y="118" width="120" height="50" rx="8" fill="#27274e"/><text x="380" y="138">Email</text><text x="380" y="156" font-size="11" fill="#9b99b8">a useful idea</text>
              <rect x="470" y="118" width="120" height="50" rx="8" fill="#27274e"/><text x="530" y="138">Call</text><text x="530" y="156" font-size="11" fill="#9b99b8">quick question</text>
              <rect x="620" y="118" width="120" height="50" rx="8" fill="#27274e"/><text x="680" y="138">Email</text><text x="680" y="156" font-size="11" fill="#9b99b8">close the loop</text>
              <rect x="20" y="192" width="720" height="40" rx="8" fill="#1f1f44" stroke="#ec4899"/>
              <text x="380" y="217" fill="#f9a8d4">Stop at once if they reply, say no, opt out, or the email bounces</text>
            </g>
          </svg>
          <figcaption>A made-up 5-touch sequence from Nimbus Logistics. The gaps grow, the channels mix, and every touch has a new angle.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Timing and number of touches</h3>
          <p>There is no perfect number. Many teams use about 4 to 6 touches over 2 to 4 weeks. Treat that as a starting point to test, not a rule. Three simple habits help:</p>
          <ul class="lc-list">
            <li><strong>Make the gaps grow.</strong> For example 2 days, then 5, then 5, then 7. Daily messages feel like pressure.</li>
            <li><strong>Use working days.</strong> Skip weekends and big holidays such as Diwali week.</li>
            <li><strong>Mix channels.</strong> Email, a LinkedIn note and a call reach people in different ways.</li>
          </ul>
          <p>A spreadsheet can plan the dates. If column B holds the first-touch date, these formulas work in Excel and Google Sheets:</p>
          <pre><code>=WORKDAY(B2, 2)                    next touch, 2 working days later
        =WORKDAY(B2, 5, Holidays!A2:A20)   5 working days later, skipping your holiday list</code></pre>
          <p>Many CRM tools, such as HubSpot, Zoho CRM and Freshsales, have sequence features that schedule touches for you. Features differ by plan, so check the tool's help pages.</p>
        </div>
        <div class="lc-card">
          <h3>Change the angle every time</h3>
          <p>Each touch must give the reader a new reason to reply. Never just repeat yourself. Weak follow-ups sound like this:</p>
          <pre><code>Just bumping this to the top of your inbox.
        Did you see my last email?
        As discussed, sharing our brochure again.   (there was no discussion)</code></pre>
          <p>Better angles, each with one new thing:</p>
          <table class="lc-table">
            <thead><tr><th>Angle</th><th>What it adds</th><th>Example line (Rohit to GreenLeaf Organics)</th></tr></thead>
            <tbody>
              <tr><td>The problem</td><td>Why you are writing</td><td>"Late deliveries often lead to refund requests for food stores."</td></tr>
              <tr><td>A useful idea</td><td>Free value, no ask</td><td>"Here is a one-page checklist for packing organic produce so it arrives fresh."</td></tr>
              <tr><td>Proof</td><td>A real, checkable example</td><td>"We deliver for a spice store in Gujarat. I can share their contact if they agree."</td></tr>
              <tr><td>A quick question</td><td>An easy way to reply</td><td>"Do you manage deliveries yourself, or through a courier partner?"</td></tr>
              <tr><td>Close the loop</td><td>A polite last message</td><td>"I won't follow up again. If delivery becomes a priority, just reply to this email."</td></tr>
            </tbody>
          </table>
          <p>Only use a proof line if it is true and the client has agreed to be named. AI may invent proof, so check every line.</p>
        </div>
        <div class="lc-card">
          <h3>When to stop, and how to track</h3>
          <ul class="lc-list">
            <li><strong>They reply</strong>, even with a question: stop the sequence and answer by hand.</li>
            <li><strong>They say no or ask you to stop</strong>: stop, and mark them in your CRM so nobody adds them again.</li>
            <li><strong>The email bounces</strong> (cannot be delivered): stop and fix or remove the address.</li>
            <li><strong>Out of office</strong>: pause and restart after they return.</li>
            <li><strong>"Not now, try in March"</strong>: stop, and set a CRM reminder for March.</li>
          </ul>
          <p>Track the <strong>reply rate</strong> for each touch: replies to that touch ÷ prospects who got that touch × 100. For example, with made-up numbers, 40 prospects get touch 1 and 3 reply. The reply rate is 3 ÷ 40 × 100 = 7.5%. With such small numbers, one or two replies change the rate a lot. So do not judge a sequence too early.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: Rohit builds a sequence with AI</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Rohit's prompt">"Plan a 5-touch sequence over about 3 weeks for GreenLeaf Organics, Maharashtra. They sell organic food online. Nimbus Logistics offers next-day delivery in Maharashtra. Mix email, LinkedIn and one call. Give each touch a new angle."</li>
              <li data-kind="answer" data-label="AI draft">A table of 5 touches. Touch 3 says: "As we discussed on our call, here are our rates." Touch 5 says: "Last chance: our 20% discount ends Friday."</li>
              <li data-kind="warn" data-label="Invented history">There was no earlier call. "As we discussed" would mislead Sanjay. Rohit removes it.</li>
              <li data-kind="warn" data-label="Fake urgency">Nimbus has no 20% discount. Rohit replaces touch 5 with an honest "close the loop" message.</li>
              <li data-kind="check" data-label="Rohit checks the claims">"Next-day delivery in Maharashtra" is true for Nimbus, but only for some cities. He adds "in most Maharashtra cities" and names them.</li>
              <li data-kind="tool" data-label="Spreadsheet">He plans dates with <code>=WORKDAY(B2, 2)</code> and a holiday list, so no touch lands on a Sunday or during Diwali.</li>
              <li data-kind="result" data-label="Ready">Five touches on working days, each with a new angle, true claims and clear stop rules. He loads them into the CRM sequence.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask the AI to plan a complete 5-touch sequence as a table, with the messages written out. Then check every claim against your facts.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a B2B sales coach. Plan a follow-up sequence.

        Seller: [Rohit, Nimbus Logistics. We deliver orders for online stores in Maharashtra and Gujarat.]
        True facts you may use: [next-day delivery in most Maharashtra and Gujarat cities; cash-on-delivery support; free packing checklist PDF].
        Prospect: [Sanjay, founder of GreenLeaf Organics, an online organic food store in Maharashtra].
        Goal: [a 20-minute call].

        Make a table with 5 touches over about 3 weeks, on working days only:
        Touch | Day | Channel (email, LinkedIn or call) | Angle | Message (under 80 words; for a call, 3 talking points)

        Rules:
        - Each touch has a new angle: problem, useful idea, question, and a polite last message.
        - Gaps between touches get longer.
        - Use only the true facts above. No fake discounts, deadlines or "as we discussed".
        - Every email ends with a simple way to opt out.
        After the table, list the stop rules: when the sequence must stop or pause.</pre>
            <ul class="ai-try-checks">
              <li>There are 5 touches, the gaps grow, and no touch falls on a weekend.</li>
              <li>Every angle is different. No touch just says "following up".</li>
              <li>Only the given facts appear. No invented discounts, clients or past calls.</li>
              <li>The stop rules include reply, no, opt-out, bounce and out-of-office.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A good sequence is polite persistence. Space the touches out, give each one a new reason to reply, and stop the moment someone answers or says no. AI can draft the whole plan in minutes, but you must remove every invented fact before it goes out.
        </div>
      HTML
      starter_code: nil
    },
    11 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-sales">Sales & CRM</div>
          <h1 class="lc-title">Handling Objections</h1>
        </div>
        <p class="lc-lead">An <strong>objection</strong> is a reason a prospect gives for not buying or not meeting. "Too expensive." "Not now." "We already use something." Objections are normal. They often mean the person has a question, not a final no. In this lesson, you will learn a simple way to answer them: listen, acknowledge, ask, then answer. You will also use AI to build an objection guide and to practise with a pretend prospect before you talk to real ones.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 250" role="img" aria-label="A prospect says the software is too expensive. The rep answers in five steps: listen, acknowledge, ask a question, answer with one honest fact, and suggest a small next step.">
            <defs><marker id="so11a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="180" y="12" width="400" height="44" rx="12" fill="#27274e" stroke="#ec4899"/>
              <text x="380" y="31" font-size="11" fill="#9b99b8">Meena Shah, Finance Head, Tulsi Textiles, Gujarat</text>
              <text x="380" y="48" fill="#f9a8d4">"Your software is too expensive for us."</text>
              <line x1="380" y1="58" x2="380" y2="80" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#so11a)"/>
              <rect x="12" y="86" width="128" height="96" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="76" y="112" font-weight="700">1. Listen</text>
              <text x="76" y="140" font-size="11" fill="#9b99b8">let her finish</text>
              <text x="76" y="158" font-size="11" fill="#9b99b8">note her words</text>
              <rect x="162" y="86" width="128" height="96" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="226" y="112" font-weight="700">2. Acknowledge</text>
              <text x="226" y="140" font-size="11" fill="#9b99b8">"That is fair."</text>
              <text x="226" y="158" font-size="11" fill="#9b99b8">no arguing</text>
              <rect x="312" y="86" width="128" height="96" rx="10" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="376" y="112" font-weight="700">3. Ask</text>
              <text x="376" y="140" font-size="11" fill="#9b99b8">"Compared to</text>
              <text x="376" y="158" font-size="11" fill="#9b99b8">what you pay now?"</text>
              <rect x="462" y="86" width="128" height="96" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="526" y="112" font-weight="700">4. Answer</text>
              <text x="526" y="140" font-size="11" fill="#9b99b8">one honest fact</text>
              <text x="526" y="158" font-size="11" fill="#9b99b8">proof you can show</text>
              <rect x="612" y="86" width="128" height="96" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="676" y="112" font-weight="700">5. Next step</text>
              <text x="676" y="140" font-size="11" fill="#9b99b8">one small ask</text>
              <text x="676" y="158" font-size="11" fill="#9b99b8">or accept a no</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#so11a)">
                <line x1="141" y1="134" x2="159" y2="134"/>
                <line x1="291" y1="134" x2="309" y2="134"/>
                <line x1="441" y1="134" x2="459" y2="134"/>
                <line x1="591" y1="134" x2="609" y2="134"/>
              </g>
              <text x="380" y="216" font-size="12" fill="#9b99b8">Never answer with invented proof, a fake discount or a false deadline.</text>
              <text x="380" y="236" font-size="12" fill="#9b99b8">Step 3 matters most: the first objection is often not the real one.</text>
            </g>
          </svg>
          <figcaption>Listen, acknowledge, ask, answer, then suggest one small next step. Do not jump straight to step 4.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The common objections, and what they may really mean</h3>
          <p>Most objections fall into a few groups. The words are the same in every industry. What the person means can be different. So your first job is to find out, with a question. Here are examples for <em>LedgerLite</em>, a made-up Karnataka accounting software startup. Its sales rep, Kavya, sells to small businesses. The price below is made up.</p>
          <table class="lc-table">
            <thead><tr><th>Objection</th><th>What it may mean</th><th>A good question</th><th>An honest answer idea</th></tr></thead>
            <tbody>
              <tr><td><strong>Price:</strong> "₹1,499 a month is too much."</td><td>They cannot see the value yet, or the budget is really small.</td><td>"Compared to what you spend now on accounts work?"</td><td>Work out the cost of the current problem using <em>their</em> numbers.</td></tr>
              <tr><td><strong>Timing:</strong> "Not now. It is GST filing time."</td><td>They are busy, or it is a polite no.</td><td>"Which month is calmer for you?"</td><td>Agree. Set a follow-up on a real date, and keep it.</td></tr>
              <tr><td><strong>No need:</strong> "Our CA handles everything."</td><td>They are happy, or they do not see a problem.</td><td>"When you need a sales report fast, how do you get it?"</td><td>Show one specific gap. If there is no gap, accept the no.</td></tr>
              <tr><td><strong>Competitor:</strong> "We already use another software."</td><td>Switching feels like hard work.</td><td>"What do you like about it? What would you change?"</td><td>Never criticise the other product. Mention a difference only if it is true.</td></tr>
              <tr><td><strong>Brush-off:</strong> "Just send me some information."</td><td>They want to end the call politely.</td><td>"Sure. Which matters more to you: GST invoices or cash flow?"</td><td>Send one short, specific page. Ask one question at the end.</td></tr>
            </tbody>
          </table>
          <p>A <strong>CA</strong> is a chartered accountant. Many small Indian businesses use one. In LedgerLite's case, the CA may be a friend of the sale, not an enemy. Kavya can offer to show the CA the reports.</p>
        </div>
        <div class="lc-card">
          <h3>Build your objection guide with AI</h3>
          <p>An <strong>objection guide</strong> is a short document. It lists the objections you hear and good ways to answer them. AI can write a strong first draft in minutes. But it needs real details, or it will write general, pushy answers.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Give me answers to sales objections.</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>You are a sales coach for LedgerLite, accounting software for small
        businesses in India. Plan: ₹1,499 a month (GST invoices, payment
        reminders, bank reconciliation, reports for the CA).
        Our buyers: owners of shops and small manufacturers.
        True proof we have: a free 14-day trial; one customer, Rangoli
        Prints, agreed to share that month-end close now takes 4 days
        instead of 10. We have NO other case studies with numbers.

        For each objection: price, timing, "our CA handles it",
        "we use another software", "send me information":
        1. What the person may really mean (2 ideas)
        2. One question to ask first
        3. An honest answer in under 40 words
        Rules: no invented numbers, no discounts, no pressure,
        never criticise other products.</code></pre>
          <p>Notice the lines about proof. Without them, AI often invents proof, such as "Our customers save 40% of their time." If you cannot show it, you cannot say it. Also, one customer's result is not a promise. Say "Rangoli Prints went from 10 days to 4", not "You will close in 4 days". Delete any claim you cannot prove, and keep the guide where your team can improve it.</p>
        </div>
        <div class="lc-card">
          <h3>Practise with an AI role-play</h3>
          <p>A <strong>role-play</strong> is a practice conversation. The AI pretends to be the prospect. You type your answers. Then the AI steps out of the role and gives you feedback. You can make mistakes here, not on real calls. Use a chat assistant (such as Claude) for this, because it needs many messages back and forth.</p>
          <pre><code>Let us role-play. You are Meena Shah, Finance Head of Tulsi Textiles,
        a made-up textile company in Gujarat. Month-end closing takes about
        10 days. You handle 400+ invoices a month and are hiring an
        accounts assistant. You are busy and a bit doubtful. Your team does everything in spreadsheets.
        I am Kavya from LedgerLite. I called you after you replied
        to my email. Raise ONE objection at a time. Wait for my answer.
        Act like a real person: if my answer is weak, stay doubtful.
        After 4 of my answers, stop the role-play. Score me from 1 to 5
        on: listened, acknowledged, asked a question, answered honestly,
        suggested a next step. Quote my best and worst line.</code></pre>
          <p>Practise each objection three or four times. Try a "hard" version too: "Make Meena impatient." But remember: AI does not know how your real buyers talk. Ask your best sales colleague to read your answers as well.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: a role-play practice session</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Kavya sets up the role-play">Kavya pastes the role-play prompt. The AI will play Meena from Tulsi Textiles.</li>
              <li data-kind="answer" data-label="AI as Meena">"Honestly, ₹1,499 every month is a lot. And we are already hiring an accounts assistant for the invoices."</li>
              <li data-kind="warn" data-label="First try: a weak answer">Kavya types: "I can give you 30% off if you sign today!" This skips listening. It also offers a discount she is not allowed to give, with a false deadline.</li>
              <li data-kind="thought" data-label="Think about the real objection">Meena did not say "no budget". She plans to solve the problem with a new hire. The real question is what the invoice work costs her team each month.</li>
              <li data-kind="user" data-label="Second try">"That is fair. ₹1,499 is real money. Can I ask how long month-end closing takes your team today?"</li>
              <li data-kind="answer" data-label="AI as Meena">"About 10 days. We have over 400 invoices a month, and we always find mistakes late."</li>
              <li data-kind="answer" data-label="AI steps out as coach">"Score 4 out of 5. You acknowledged and asked a good question. Next, share one real proof point and suggest the free 14-day trial or a short demo."</li>
              <li data-kind="check" data-label="Kavya checks the feedback">The coach's sample answer says "LedgerLite will cut your close to 4 days." That is a promise. Kavya rewrites it: "One customer, Rangoli Prints, went from 10 days to 4. Results differ by business."</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Write your own answer to one objection. The AI will react as the prospect, score your answer, and suggest a better one.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a strict but kind sales coach for honest B2B selling in India.

        My product: [LedgerLite, accounting software for small businesses, ₹1,499 a month, with a free 14-day trial. Proof: customer Rangoli Prints now closes its month in 4 days, not 10].
        Prospect: [Meena Shah, Finance Head of Tulsi Textiles, Gujarat. Month-end closing takes about 10 days. They handle 400+ invoices a month].
        Her objection: [&quot;It is too expensive. We are already hiring an accounts assistant for the invoices.&quot;]
        My answer: [&quot;I understand. But our software is much better than Excel and it will save you a lot of time. Can we book a demo?&quot;]

        Please do 4 things:
        1. Reply as Meena would, in 1 or 2 sentences.
        2. Score my answer from 1 to 5 on each: listened, acknowledged, asked a question, answered with a fact, suggested a clear next step.
        3. Write a better answer in under 50 words. Use this order: acknowledge, ask one question, then suggest a small next step.
        4. Give me 2 follow-up questions I can ask to find the real reason behind this objection.

        Rules: use only the proof I gave, and never present one customer's result as a promise. Do not invent numbers, results or discounts.</pre>
            <ul class="ai-try-checks">
              <li>The better answer acknowledges the objection before it answers</li>
              <li>It asks a real question instead of repeating the pitch</li>
              <li>No invented numbers, results or discounts appear</li>
              <li>The next step is small and clear, such as a short demo</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> An objection is usually a question in disguise. Ask before you answer. Use AI to prepare and to practise, but answer real people only with facts you can prove. Sometimes the honest answer is: "Then this is not a fit for you right now."
        </div>
      HTML
      starter_code: nil
    },
    12 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-sales">Sales & CRM</div>
          <h1 class="lc-title">Booking the Meeting</h1>
        </div>
        <p class="lc-lead">A good reply is not a meeting yet. Many deals are lost between "Sounds interesting" and a date in the calendar. In this lesson, you will learn how to write a clear <strong>call to action</strong> (CTA: the one thing you ask the prospect to do). You will also learn when to use a scheduling link, and how to write confirmation, reminder and no-show messages. AI can draft all of these quickly. You still choose the times, the tone and the facts.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 270" role="img" aria-label="The path from a positive reply to a meeting: offer two times or a link, send an invite and confirmation, send a reminder the day before. If the prospect does not show up, send a friendly follow-up with two new times.">
            <defs><marker id="so12a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="15" y="30" width="160" height="64" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="95" y="56" font-weight="700">Positive reply</text>
              <text x="95" y="78" font-size="11" fill="#9b99b8">"Sounds useful"</text>
              <rect x="205" y="30" width="160" height="64" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="285" y="56" font-weight="700">Offer 2 times</text>
              <text x="285" y="78" font-size="11" fill="#9b99b8">or a booking link</text>
              <rect x="395" y="30" width="160" height="64" rx="10" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="475" y="56" font-weight="700">Invite + confirm</text>
              <text x="475" y="78" font-size="11" fill="#9b99b8">agenda, IST, link</text>
              <rect x="585" y="30" width="160" height="64" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="665" y="56" font-weight="700">Reminder</text>
              <text x="665" y="78" font-size="11" fill="#9b99b8">the day before</text>
              <rect x="585" y="150" width="160" height="64" rx="10" fill="#27274e" stroke="#10b981"/>
              <text x="665" y="176" font-weight="700" fill="#6ee7b7">Meeting held</text>
              <text x="665" y="198" font-size="11" fill="#9b99b8">send recap + next step</text>
              <rect x="395" y="150" width="160" height="64" rx="10" fill="#27274e" stroke="#ec4899"/>
              <text x="475" y="176" font-weight="700" fill="#f9a8d4">No-show</text>
              <text x="475" y="198" font-size="11" fill="#9b99b8">it happens, stay kind</text>
              <rect x="205" y="150" width="160" height="64" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="285" y="176" font-weight="700">Friendly follow-up</text>
              <text x="285" y="198" font-size="11" fill="#9b99b8">2 new times, no guilt</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#so12a)">
                <line x1="176" y1="62" x2="202" y2="62"/>
                <line x1="366" y1="62" x2="392" y2="62"/>
                <line x1="556" y1="62" x2="582" y2="62"/>
                <line x1="665" y1="96" x2="665" y2="146"/>
                <path d="M620,96 L520,146"/>
                <line x1="394" y1="182" x2="369" y2="182"/>
                <line x1="285" y1="148" x2="285" y2="98"/>
              </g>
              <text x="380" y="250" font-size="12" fill="#9b99b8">Each message makes the next step easy for the prospect.</text>
            </g>
          </svg>
          <figcaption>From "sounds useful" to a held meeting. A no-show is not the end: send one kind follow-up with new times.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>A clear ask at the right moment</h3>
          <p>Your ask should match how warm the prospect is. In a first cold email, a small "interest ask" works better than a demand for a long meeting. After a positive reply, make booking as easy as possible.</p>
          <table class="lc-table">
            <thead><tr><th>Type of ask</th><th>When to use it</th><th>Example (Nimbus Logistics, a made-up delivery company in India)</th></tr></thead>
            <tbody>
              <tr><td><strong>Interest ask</strong></td><td>First cold email</td><td>"Worth a 15-minute call to see if this fits your Maharashtra orders?"</td></tr>
              <tr><td><strong>Two-time ask</strong></td><td>After a positive reply</td><td>"Does Tuesday 11:00 or Thursday 16:00 IST suit you, for 20 minutes?"</td></tr>
              <tr><td><strong>Scheduling link</strong></td><td>After they agree, or when they ask for it</td><td>"Here is my calendar. Pick any 20-minute slot this week."</td></tr>
              <tr><td><strong>Referral ask</strong></td><td>You wrote to the wrong person</td><td>"Who looks after deliveries at GreenLeaf Organics?"</td></tr>
            </tbody>
          </table>
          <p>A <strong>scheduling link</strong> opens a page where the prospect picks a free slot in your calendar. Tools such as Calendly, Zoho Bookings, Microsoft Bookings and HubSpot's meetings tool do this. Features and free plans change, so check the tool's current help pages. A link in the very first email can feel pushy. It asks a stranger to do work for you.</p>
          <p>Always write the time zone, such as "IST" (Indian Standard Time). For a prospect in another country, write both times, or use a link that shows their local time.</p>
        </div>
        <div class="lc-card">
          <h3>Confirmation, reminder and no-show messages</h3>
          <p>Rohit is the sales manager at Nimbus Logistics. GreenLeaf Organics, a made-up organic food store in Maharashtra, has agreed to a call. Here are three short messages AI helped him draft. He checked every detail before sending.</p>
          <pre><code>CONFIRMATION (send at once, with the calendar invite)
        Subject: Confirmed: Nimbus + GreenLeaf, Thu 16:00 IST
        Hi Sanjay, thank you. We are booked for Thursday, 16:00 IST,
        20 minutes, on Google Meet (link in the invite).
        Plan: 1) your current delivery set-up, 2) how we handle
        Maharashtra orders, 3) whether a trial makes sense.
        If the time stops working, just reply with a better one.

        REMINDER (the day before)
        Hi Sanjay, a quick reminder of our call tomorrow, Thursday,
        16:00 IST. If you can, keep last month's order count handy.
        See you then. Rohit

        NO-SHOW (about 30 minutes after the missed call)
        Hi Sanjay, I think today got busy. No problem at all.
        Would Monday 11:00 or Tuesday 15:00 IST work instead?</code></pre>
          <p>Keep the tone kind. Do not write "You missed our meeting" or add guilt. After two no-shows, stop asking for a meeting. Send one short, useful note and follow up next quarter.</p>
          <p><strong>WhatsApp reminders:</strong> send them only if the prospect gave you their number for this purpose and agreed to messages there. Otherwise, use email.</p>
        </div>
        <div class="lc-card">
          <h3>Measure your show rate</h3>
          <p><strong>Show rate</strong> is the share of booked meetings that really happen. Show rate = meetings held ÷ meetings booked. <strong>No-show rate</strong> = no-shows ÷ meetings booked. Here are Rohit's sample numbers:</p>
          <table class="lc-table">
            <thead><tr><th>Month</th><th>Booked</th><th>No-shows</th><th>Held</th><th>Show rate</th><th>No-show rate</th></tr></thead>
            <tbody>
              <tr><td>June (no reminders)</td><td>20</td><td>5</td><td>15</td><td>15 ÷ 20 = 75.0%</td><td>5 ÷ 20 = 25.0%</td></tr>
              <tr><td>July (confirmation + reminder)</td><td>22</td><td>3</td><td>19</td><td>19 ÷ 22 = 86.4%</td><td>3 ÷ 22 = 13.6%</td></tr>
            </tbody>
          </table>
          <p>In a spreadsheet, if booked is in B2 and held is in D2, use <code>=D2/B2</code> and format it as a percentage. The reminders may have helped. But these are small numbers, and other things also changed in July. Keep tracking for a few more months before you decide.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: clear ask or weak ask?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each line. Is it a clear, easy ask, or a weak one?</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="clear" data-label="Clear ask"></div>
              <div data-sorter-target="bucket" data-bucket="weak" data-label="Weak ask"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="clear" data-why="Two specific times, a time zone and a short length. The prospect only has to pick one.">"Does Tuesday 11:00 or Thursday 16:00 IST suit you, for 20 minutes?"</li>
              <li data-bucket="weak" data-why="There is no time, no length and no reason to act. It is easy to ignore.">"Let me know if you ever want to chat sometime."</li>
              <li data-bucket="clear" data-why="A small yes-or-no question for a first email. It links the call to their situation.">"Worth a 15-minute call to see if this fits your Maharashtra orders?"</li>
              <li data-bucket="weak" data-why="Three asks at once. The prospect has to decide too much, so they often do nothing.">"Can we meet? Or should I send a brochure? Or would you like a trial?"</li>
              <li data-bucket="weak" data-why="An hour plus a long form is a big ask from a stranger. Start small.">"Please book a 60-minute demo with my link and fill in the 12-question form first."</li>
              <li data-bucket="clear" data-why="The prospect already agreed. Now a link saves emails back and forth.">After a "yes": "Here is my calendar. Pick any 20-minute slot this week."</li>
              <li data-bucket="weak" data-why="It assumes a yes the prospect never gave. It feels like pressure.">"I will call you tomorrow at 10 to finalise the deal."</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI for a complete meeting-booking kit for one interested prospect. Change the details in [brackets], or leave them as they are.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an experienced sales assistant. Write short, polite messages in simple English.

        Me: [Rohit, sales manager at Nimbus Logistics. We deliver orders for online stores.]
        Prospect: [Sanjay, founder of GreenLeaf Organics, an online organic food store in Maharashtra.]
        His reply to my email: [&quot;Sounds interesting, but we are busy until the 15th. Maybe after that?&quot;]
        Meeting: [20 minutes on Google Meet]. My free times after the 15th: [Tue 17th 11:00, Thu 19th 16:00, Fri 20th 12:00 IST].

        Write:
        1. A reply that thanks him and offers 2 of my free times (under 60 words).
        2. A calendar invite: title, a 3-point agenda, and one line on what he could prepare.
        3. A reminder for the day before (under 40 words).
        4. A no-show follow-up with 2 new times (under 40 words, no guilt).
        5. A list of every date, time and fact in your messages that I must check before sending.

        Rules: always write IST. No pressure, no fake urgency, no claims about results.</pre>
            <ul class="ai-try-checks">
              <li>Every time offered is after the 15th and is one of your free times</li>
              <li>Each message states IST and the meeting length</li>
              <li>The no-show message is kind and offers new times</li>
              <li>No claims about savings or results were added</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Make every step easy: one clear ask, specific times, a clear agenda and a kind reminder. A booked meeting is only a win when it is held, so measure your show rate, not just meetings booked.
        </div>
      HTML
      starter_code: nil
    },
    13 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-sales">Sales & CRM</div>
          <h1 class="lc-title">Testing and Improving Outreach</h1>
        </div>
        <p class="lc-lead">You will never know the best subject line by guessing. You find out by testing. An <strong>A/B test</strong> sends two versions of one message to two similar groups, then compares the results. In this lesson, you will learn what to test, how to calculate reply rates correctly, and why small tests often fool people. AI can write the versions and explain the results. You must check the maths.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="300 similar prospects are split at random into two groups of 150. Version A gets 9 replies, which is 6.0 percent. Version B gets 15 replies, which is 10.0 percent. The gap could still come from luck about 1 time in 5.">
            <defs><marker id="so13a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="10" y="85" width="150" height="90" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="85" y="115" font-weight="700">300 prospects</text>
              <text x="85" y="138" font-size="11" fill="#9b99b8">similar shops</text>
              <text x="85" y="156" font-size="11" fill="#9b99b8">split at random</text>
              <rect x="200" y="30" width="270" height="70" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="335" y="58" font-weight="700">Version A · 150 delivered</text>
              <text x="335" y="80" font-size="11" fill="#9b99b8">"Question about your GST invoices"</text>
              <rect x="200" y="160" width="270" height="70" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="335" y="188" font-weight="700">Version B · 150 delivered</text>
              <text x="335" y="210" font-size="11" fill="#9b99b8">"3 days of month-end work?"</text>
              <rect x="510" y="30" width="240" height="70" rx="10" fill="#27274e" stroke="#3b82f6"/>
              <text x="630" y="58" font-weight="700">9 replies</text>
              <text x="630" y="80" font-size="12" fill="#93c5fd">9 ÷ 150 = 6.0%</text>
              <rect x="510" y="160" width="240" height="70" rx="10" fill="#27274e" stroke="#ec4899"/>
              <text x="630" y="188" font-weight="700">15 replies</text>
              <text x="630" y="210" font-size="12" fill="#f9a8d4">15 ÷ 150 = 10.0%</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#so13a)">
                <line x1="161" y1="115" x2="197" y2="72"/>
                <line x1="161" y1="148" x2="197" y2="190"/>
                <line x1="471" y1="65" x2="507" y2="65"/>
                <line x1="471" y1="195" x2="507" y2="195"/>
              </g>
              <rect x="10" y="244" width="740" height="50" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="380" y="265" font-size="12">B is ahead by 4 percentage points. But a gap this big could come from luck about 1 time in 5.</text>
              <text x="380" y="284" font-size="12" fill="#fcd34d">Not proof yet. Test with more prospects before you switch.</text>
            </g>
          </svg>
          <figcaption>A sample test by Kavya at LedgerLite (made-up numbers). B looks better, but 150 per group is too small to be sure.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>What to test, one thing at a time</h3>
          <p>In a fair test, the two versions differ in <strong>one</strong> thing only. Everything else stays the same: the kind of prospect, the send days, the sender and the follow-ups. If you change three things, you will not know which one made the difference.</p>
          <table class="lc-table">
            <thead><tr><th>What you test</th><th>Version A</th><th>Version B</th></tr></thead>
            <tbody>
              <tr><td><strong>Subject line</strong></td><td>"Question about your GST invoices"</td><td>"3 days of month-end work?"</td></tr>
              <tr><td><strong>First line</strong></td><td>A line about their new shop in the next town</td><td>A line about their recent job post for an accountant</td></tr>
              <tr><td><strong>Value angle</strong></td><td>Save time on GST invoices</td><td>See your cash flow every day</td></tr>
              <tr><td><strong>Call to action</strong></td><td>"Worth a 15-minute call?"</td><td>"Shall I send a 3-minute video?"</td></tr>
            </tbody>
          </table>
          <p>Before you start, write your <strong>hypothesis</strong> (your guess and the reason). For example: "A subject line about a real pain (month-end work) will get more replies than a general one." Also choose your main measure before you start. For cold outreach, the best one is usually <strong>positive replies</strong> or <strong>meetings booked</strong>, not opens. Open tracking is not reliable, because some email apps load emails automatically.</p>
        </div>
        <div class="lc-card">
          <h3>Reply rate maths, done correctly</h3>
          <p>Always divide by <strong>delivered</strong> emails, not sent emails. Delivered = sent − bounced. A <strong>bounce</strong> is an email that came back because the address does not work. Here are Kavya's sample numbers for one month:</p>
          <table class="lc-table">
            <thead><tr><th>Measure</th><th>How to calculate</th><th>Kavya's numbers</th><th>Spreadsheet formula</th></tr></thead>
            <tbody>
              <tr><td>Delivered</td><td>sent − bounced</td><td>320 − 20 = 300</td><td><code>=B2-C2</code></td></tr>
              <tr><td>Reply rate</td><td>all replies ÷ delivered</td><td>24 ÷ 300 = 8.0%</td><td><code>=E2/D2</code></td></tr>
              <tr><td>Positive reply rate</td><td>interested replies ÷ delivered</td><td>10 ÷ 300 = 3.3%</td><td><code>=F2/D2</code></td></tr>
              <tr><td>Meeting rate</td><td>meetings booked ÷ delivered</td><td>6 ÷ 300 = 2.0%</td><td><code>=G2/D2</code></td></tr>
            </tbody>
          </table>
          <p>(Sent is in B2, bounced in C2, delivered in D2, replies in E2, positive replies in F2, meetings in G2.)</p>
          <p><strong>Percent or percentage points?</strong> Version A had 6.0% and version B had 10.0%. B is <strong>4 percentage points</strong> higher (10 − 6). It is also <strong>66.7% higher</strong> in relative terms ((10 − 6) ÷ 6 = 0.667). Both are correct. But they sound very different. Always say which one you mean. AI answers often mix them up.</p>
        </div>
        <div class="lc-card">
          <h3>Why small tests fool you</h3>
          <p>With small groups, luck plays a big part. One busy week or two chatty prospects can change the result. A <strong>significance check</strong> asks: "If A and B were really equally good, how often would a gap this big appear just by luck?" The answer is called the <strong>p-value</strong>. Many teams want it below 0.05 (1 time in 20) before they pick a winner.</p>
          <table class="lc-table">
            <thead><tr><th>Test size</th><th>Version A</th><th>Version B</th><th>Gap by luck, about</th><th>Decision</th></tr></thead>
            <tbody>
              <tr><td>150 per version</td><td>9 replies (6.0%)</td><td>15 replies (10.0%)</td><td>1 time in 5 (p ≈ 0.20)</td><td>Not proof yet</td></tr>
              <tr><td>600 per version</td><td>36 replies (6.0%)</td><td>60 replies (10.0%)</td><td>1 time in 100 (p ≈ 0.01)</td><td>B is likely better</td></tr>
            </tbody>
          </table>
          <p>The rates are the same in both rows. Only the size changed. You can check this with a free online "A/B test significance calculator". For the curious, this Google Sheets or Excel formula gives the p-value. Put delivered in B2 and B3, and replies in C2 and C3:</p>
          <pre><code>=2*(1-NORM.S.DIST(ABS((C3/B3-C2/B2)/SQRT((C2+C3)/(B2+B3)*(1-(C2+C3)/(B2+B3))*(1/B2+1/B3))),TRUE))</code></pre>
          <p>Two more rules. Decide the test size <em>before</em> you start. Do not stop the test early just because one version is ahead on day two. And if your list is small, test bigger changes (a new angle), not tiny ones (one word in the subject).</p>
          <p><strong>Where AI helps:</strong> writing versions to test, writing the hypothesis, sorting reply texts into "interested", "not now" and "no" (remove names first), and explaining results. <strong>Where it does not:</strong> AI can make maths mistakes, so recalculate in a spreadsheet. If AI quotes an "average cold email reply rate", ignore it. Compare against your own past results instead.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: run a fair A/B test</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put the steps of a fair outreach A/B test in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Pick one thing to test and write your hypothesis</li>
              <li data-order="2">Choose the main measure and the test size before you start</li>
              <li data-order="3">Split similar prospects into two groups at random</li>
              <li data-order="4">Send both versions on the same days, from the same sender</li>
              <li data-order="5">Wait the same number of days for replies in both groups</li>
              <li data-order="6">Calculate the rates on delivered emails and run a significance check</li>
              <li data-order="7">Keep the winner, write down what you learned and plan the next test</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Give AI the results of a sample test and ask it to do the maths and suggest what to test next. Then recalculate the numbers yourself.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a sales analyst. Explain things in simple English for a small sales team.

        We ran an A/B test on cold email subject lines for [Nimbus Logistics, a delivery company in India that works with online stores].
        Version A subject: [&quot;Quick question about your deliveries&quot;]
        Version B subject: [&quot;Late deliveries during Diwali?&quot;]
        Version A: [210] sent, [10] bounced, [8] positive replies.
        Version B: [210] sent, [10] bounced, [14] positive replies.
        Everything else (prospect type, send days, email body) was the same.

        Please:
        1. Calculate delivered emails and the positive reply rate for each version. Show each calculation.
        2. Give the difference in percentage points and in relative percent.
        3. Say if this is enough evidence to pick a winner. Use a two-proportion test, give the p-value, and explain it in one simple sentence.
        4. Suggest what to do next.
        5. Write 3 new subject lines to test against the better version. Each under 45 characters, honest, with no fake &quot;Re:&quot; or false urgency.</pre>
            <ul class="ai-try-checks">
              <li>Delivered is 200 for each version (210 − 10), not 210</li>
              <li>The rates are 4.0% and 7.0%: a gap of 3 percentage points, or 75% in relative terms</li>
              <li>It says this is not enough evidence yet (p is about 0.19)</li>
              <li>The new subject lines are honest and under 45 characters</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Test one change at a time, divide by delivered emails, and be careful with small groups. A result that looks like a big win can be luck. Let AI write the versions and explain the results, but check every number yourself.
        </div>
      HTML
      starter_code: nil
    },
    14 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-sales">Sales & CRM</div>
          <h1 class="lc-title">Deliverability and Rules</h1>
        </div>
        <p class="lc-lead">Your best email is wasted if it lands in the spam folder. <strong>Deliverability</strong> means how well your emails reach the inbox. Outreach also has rules: what the email providers ask for, and what the law says about contacting people. In this lesson, you will learn why cold emails go to spam and how to send at a safe pace. You will also learn how to handle opt-outs and the main consent rules. This is general education, not legal advice.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 280" role="img" aria-label="An outreach email passes two checks. First: are you allowed to contact this person? Then: does your domain pass SPF, DKIM and DMARC, and does the inbox provider trust you? The email reaches the inbox, the spam folder, or is rejected. Opt-outs go to a do-not-contact list that is removed from future sends.">
            <defs><marker id="so14a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="10" y="40" width="130" height="90" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="75" y="72" font-weight="700">Prospect list</text>
              <text x="75" y="96" font-size="11" fill="#9b99b8">source noted</text>
              <text x="75" y="114" font-size="11" fill="#9b99b8">for each person</text>
              <rect x="165" y="40" width="140" height="90" rx="10" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="235" y="72" font-weight="700">Allowed?</text>
              <text x="235" y="96" font-size="11" fill="#9b99b8">consent, purpose,</text>
              <text x="235" y="114" font-size="11" fill="#9b99b8">local rules</text>
              <rect x="330" y="40" width="140" height="90" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="400" y="72" font-weight="700">Your domain</text>
              <text x="400" y="96" font-size="11" fill="#9b99b8">SPF, DKIM, DMARC</text>
              <text x="400" y="114" font-size="11" fill="#9b99b8">set up correctly</text>
              <rect x="495" y="40" width="130" height="90" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="560" y="72" font-weight="700">Inbox checks</text>
              <text x="560" y="96" font-size="11" fill="#9b99b8">reputation,</text>
              <text x="560" y="114" font-size="11" fill="#9b99b8">volume, complaints</text>
              <rect x="650" y="20" width="100" height="36" rx="8" fill="#27274e" stroke="#10b981"/>
              <text x="700" y="43" fill="#6ee7b7">Inbox</text>
              <rect x="650" y="68" width="100" height="36" rx="8" fill="#27274e" stroke="#f59e0b"/>
              <text x="700" y="91" fill="#fcd34d">Spam</text>
              <rect x="650" y="116" width="100" height="36" rx="8" fill="#27274e" stroke="#ec4899"/>
              <text x="700" y="139" fill="#f9a8d4">Rejected</text>
              <rect x="220" y="185" width="330" height="40" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="385" y="210">Opt-outs go to a do-not-contact list</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#so14a)">
                <line x1="141" y1="85" x2="162" y2="85"/>
                <line x1="306" y1="85" x2="327" y2="85"/>
                <line x1="471" y1="85" x2="492" y2="85"/>
                <line x1="626" y1="75" x2="647" y2="40"/>
                <line x1="626" y1="86" x2="647" y2="86"/>
                <line x1="626" y1="97" x2="647" y2="132"/>
                <path d="M751,38 L756,38 L756,205 L553,205"/>
                <path d="M218,205 L75,205 L75,134"/>
              </g>
              <text x="655" y="198" font-size="11" fill="#9b99b8">"no" replies</text>
              <text x="385" y="262" font-size="12" fill="#9b99b8">Two questions: are you allowed to send it, and will it arrive?</text>
            </g>
          </svg>
          <figcaption>First check you may contact the person. Then make sure the inbox provider trusts your email. Every opt-out is removed from future sends.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Why cold emails land in spam</h3>
          <p>Inbox providers such as Gmail, Yahoo and Outlook decide where each email goes. They look at your <strong>sender reputation</strong> (how much they trust your domain, built from how people react to your emails over time) and at the email itself.</p>
          <table class="lc-table">
            <thead><tr><th>Cause</th><th>Why it hurts</th><th>Fix</th></tr></thead>
            <tbody>
              <tr><td>No SPF, DKIM or DMARC</td><td>The provider cannot confirm the email is really from you</td><td>Ask whoever manages your domain to set them up</td></tr>
              <tr><td>Guessed email addresses</td><td>Many <strong>hard bounces</strong> (addresses that do not exist)</td><td>Use addresses from real, checkable sources</td></tr>
              <tr><td>Sudden high volume</td><td>A jump from 0 to hundreds a day looks like spam</td><td>Increase slowly (see below)</td></tr>
              <tr><td>Spam complaints</td><td>People click "Report spam" when an email feels unwanted</td><td>Target well, personalise, make saying no easy</td></tr>
              <tr><td>Heavy first emails</td><td>Attachments, many links and big images look like marketing</td><td>Plain text, no attachment, at most one link</td></tr>
            </tbody>
          </table>
          <p><strong>SPF</strong> lists the servers that may send email for your domain. <strong>DKIM</strong> adds a digital signature that shows the email was not changed. <strong>DMARC</strong> tells providers what to do when those checks fail. Your email provider's help pages show how to set them up.</p>
          <p>Some teams send cold email from a second domain, so problems do not hurt their main company email. If you do this, the domain must still clearly belong to your business and be set up with the same checks.</p>
        </div>
        <div class="lc-card">
          <h3>Bulk-sender rules, sending limits and warm-up</h3>
          <p>Gmail and Yahoo have had stricter rules for <strong>bulk senders</strong> since 2024. Gmail started rejecting more emails that break them from late 2025. Microsoft added similar rules for Outlook.com, Hotmail and Live addresses in May 2025. They mainly apply to senders of about 5,000 or more emails a day to their users. In general, they ask you to:</p>
          <ul class="lc-list">
            <li>Set up SPF, DKIM and DMARC, with your "From" domain matching the checked domain.</li>
            <li>Offer easy unsubscribe for marketing emails (one-click for bulk mail), and act on it within about two days.</li>
            <li>Keep spam complaints very low. Google says to stay below 0.3%, and to aim for below 0.1%.</li>
          </ul>
          <p>Most one-to-one sales outreach is far below 5,000 a day. But these rules show what providers value. Follow them anyway. Details change, so check each provider's current sender guidelines.</p>
          <p><strong>Complaint rate</strong> = spam complaints ÷ delivered emails. Example: Kavya gets 3 complaints from 1,200 delivered emails. 3 ÷ 1,200 = 0.25%. That is below 0.3%, but well above the 0.1% target. She should pause and fix her targeting now. Google Postmaster Tools (a free Google service) shows this rate for Gmail users, once you send enough email.</p>
          <p><strong>Sending limits and warm-up.</strong> Google Workspace and Microsoft 365 limit how many emails one account may send each day. Check their current help pages. A new domain or mailbox has no reputation yet. <strong>Warm-up</strong> means starting with a few emails to people likely to reply, then increasing slowly. Here is Kavya's own sample plan (not an official number):</p>
          <table class="lc-table">
            <thead><tr><th>Week</th><th>Emails per day</th><th>Continue only if</th></tr></thead>
            <tbody>
              <tr><td>1</td><td>10</td><td>Bounces and complaints stay near zero</td></tr>
              <tr><td>2</td><td>20</td><td>Replies are coming in, no spam warnings</td></tr>
              <tr><td>3</td><td>30</td><td>Same checks</td></tr>
              <tr><td>4 onwards</td><td>up to 40</td><td>Same checks. Pause and investigate if anything rises.</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Opt-outs and consent rules (not legal advice)</h3>
          <p>Every outreach message should make saying no easy. A simple line works: "If this is not relevant, reply 'no' and I will not write again." Then keep that promise. Add the person to a <strong>do-not-contact list</strong> in your CRM, so no colleague or sequence emails them again.</p>
          <table class="lc-table">
            <thead><tr><th>Where</th><th>Main rules, in general terms</th></tr></thead>
            <tbody>
              <tr><td><strong>India: DPDP Act 2023 and DPDP Rules 2025</strong></td><td>Covers <strong>personal data</strong>, including a named person's work email and phone. Key ideas: a clear purpose, consent or another lawful reason, easy withdrawal, safe storage and deletion when done. The Rules were notified in November 2025 and start in phases. Most duties for businesses apply from May 2027.</td></tr>
              <tr><td><strong>India: TRAI rules (TCCCPR)</strong></td><td>Cover commercial <strong>calls and SMS</strong>, not email. Respect people's DND (Do Not Disturb) choices on the National Customer Preference Register. The rules were tightened in 2025.</td></tr>
              <tr><td><strong>USA: CAN-SPAM</strong></td><td>Covers commercial email, including business-to-business. No misleading "From" or subject lines. Include a valid postal address and a clear way to opt out. Honour opt-outs within 10 business days.</td></tr>
              <tr><td><strong>EU and UK: GDPR and e-privacy rules</strong></td><td>Stricter. The rules for emailing business people differ by country. Some need consent before the first email.</td></tr>
            </tbody>
          </table>
          <p>Every cold email should have: your real name and company, an honest subject line, why you are writing, an easy way to say no, and your business address in the signature. Keep a note of where you found each contact. Laws change and differ by country, so ask a qualified lawyer before a large campaign.</p>
          <p><strong>How AI helps:</strong> it can check a draft for spam-like wording, write polite opt-out lines, turn these rules into a checklist and explain a DMARC report you paste in. It cannot see your real reputation or your domain settings. It may also be wrong about laws. Never paste your prospect list into a public AI tool.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: helps or hurts?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each action. Does it help your emails arrive and keep you within the rules, or does it hurt?</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="help" data-label="Helps"></div>
              <div data-sorter-target="bucket" data-bucket="hurt" data-label="Hurts"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="help" data-why="These checks prove the email is really from your domain. Providers expect them.">Setting up SPF, DKIM and DMARC for your sending domain</li>
              <li data-bucket="hurt" data-why="Many guessed addresses do not exist. The hard bounces damage your reputation fast.">Guessing 500 addresses from name patterns and emailing all of them</li>
              <li data-bucket="hurt" data-why="A brand-new domain has no reputation. A sudden jump in volume looks like spam.">Sending 400 emails on the first day from a new domain</li>
              <li data-bucket="help" data-why="An easy way to say no lowers spam complaints. It also respects the person's choice.">Adding "Reply 'no' and I will not write again", and keeping that promise</li>
              <li data-bucket="hurt" data-why="It pretends you spoke before. It is misleading, and laws such as CAN-SPAM ban misleading subject lines.">Using the subject "Re: our call" when you never spoke</li>
              <li data-bucket="help" data-why="Removing bad addresses and opt-outs keeps bounces and complaints low.">Removing bounced addresses and adding opt-outs to a do-not-contact list</li>
              <li data-bucket="hurt" data-why="Attachments and many links in a first email from a stranger look like spam.">Attaching a 5 MB brochure and six links to a first cold email</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to check your outreach set-up for deliverability and rule risks. Change the details in [brackets], or leave them to see an example.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an email deliverability adviser. Explain things in simple English for a sales team with no technical skills. Give general guidance only, not legal advice.

        Business: [LedgerLite, a Karnataka accounting software startup. We email owners of small businesses in India.]
        Set-up: [a new domain, 3 weeks old]. SPF [yes], DKIM [yes], DMARC [not sure].
        Volume: [we plan to send 150 cold emails a day from one mailbox].
        Last month: [900 delivered, 45 hard bounces, 3 spam complaints].
        Where contacts come from: [company websites and a list a friend shared].
        Opt-out: [none in our emails yet].

        Please give me:
        1. The 5 biggest risks, most urgent first. For each: why it matters and one clear fix.
        2. My bounce rate and complaint rate. Show the maths.
        3. A 4-week sending plan that increases slowly, with the checks to do each week.
        4. Two short, polite opt-out lines for a cold email.
        5. Five questions I should ask a lawyer about consent rules in India.

        Do not invent official limits. If a rule may have changed, tell me to check the provider's current guidelines.</pre>
            <ul class="ai-try-checks">
              <li>The bounce rate is 45 ÷ 945 sent, about 4.8% (or 45 ÷ 900 delivered = 5.0%, if it says so clearly)</li>
              <li>The complaint rate is 3 ÷ 900 = about 0.33%, above Google's 0.3% line</li>
              <li>It flags the shared list and the missing opt-out as serious risks</li>
              <li>It does not present made-up limits as official rules</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Ask two questions before every campaign: "Am I allowed to contact this person?" and "Will my email arrive?" Honest targeting, an easy opt-out and a slow, steady sending pace answer both. When in doubt about the law, ask a qualified professional.
        </div>
      HTML
      starter_code: nil
    },
    15 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-sales">Sales & CRM</div>
          <h1 class="lc-title">Capstone: A Complete Outreach Campaign</h1>
        </div>
        <p class="lc-lead">In this capstone, you will plan a complete outreach campaign from start to finish. You will work as Rohit, sales manager at <strong>Nimbus Logistics</strong>, a made-up company in India that delivers orders for online stores. You will research 5 prospects, write a cold email, a LinkedIn note and a call script, and build a 5-touch follow-up sequence. You will use AI at every step, and check every fact yourself. At the end, you will have a campaign kit you can copy for your own product.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 250" role="img" aria-label="Six campaign steps: research, value proposition, write, sequence, send and track, improve. An arrow goes from improve back to write. Under all steps: checks for true facts, consent and DND, opt-out, and no fake urgency.">
            <defs><marker id="so15a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="10" y="30" width="112" height="96" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="66" y="58" font-weight="700">Research</text>
              <text x="66" y="84" font-size="11" fill="#9b99b8">5 prospects</text>
              <text x="66" y="102" font-size="11" fill="#9b99b8">facts + why now</text>
              <rect x="136" y="30" width="112" height="96" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="192" y="58" font-weight="700">Value prop</text>
              <text x="192" y="84" font-size="11" fill="#9b99b8">problem, result,</text>
              <text x="192" y="102" font-size="11" fill="#9b99b8">real proof</text>
              <rect x="262" y="30" width="112" height="96" rx="10" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="318" y="58" font-weight="700">Write</text>
              <text x="318" y="84" font-size="11" fill="#9b99b8">email, LinkedIn,</text>
              <text x="318" y="102" font-size="11" fill="#9b99b8">call script</text>
              <rect x="388" y="30" width="112" height="96" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="444" y="58" font-weight="700">Sequence</text>
              <text x="444" y="84" font-size="11" fill="#9b99b8">5 touches</text>
              <text x="444" y="102" font-size="11" fill="#9b99b8">over 15 days</text>
              <rect x="514" y="30" width="112" height="96" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="570" y="58" font-weight="700">Send + track</text>
              <text x="570" y="84" font-size="11" fill="#9b99b8">CRM or sheet</text>
              <text x="570" y="102" font-size="11" fill="#9b99b8">replies, meetings</text>
              <rect x="640" y="30" width="112" height="96" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="696" y="58" font-weight="700">Improve</text>
              <text x="696" y="84" font-size="11" fill="#9b99b8">one test</text>
              <text x="696" y="102" font-size="11" fill="#9b99b8">at a time</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#so15a)">
                <line x1="123" y1="78" x2="133" y2="78"/>
                <line x1="249" y1="78" x2="259" y2="78"/>
                <line x1="375" y1="78" x2="385" y2="78"/>
                <line x1="501" y1="78" x2="511" y2="78"/>
                <line x1="627" y1="78" x2="637" y2="78"/>
                <path d="M696,128 L696,150 L318,150 L318,130"/>
              </g>
              <text x="507" y="166" font-size="11" fill="#9b99b8">learn and rewrite</text>
              <rect x="10" y="186" width="742" height="48" rx="10" fill="#27274e" stroke="#f59e0b"/>
              <text x="381" y="215" font-size="12" fill="#fcd34d">Checks at every step: true facts · consent and DND · easy opt-out · no fake urgency</text>
            </g>
          </svg>
          <figcaption>The whole campaign on one page. The checks in the bottom bar apply to every step, not just the last one.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Step 1: The brief and your 5 prospects</h3>
          <p><strong>Seller:</strong> Nimbus Logistics. <strong>Offer (made up for this capstone):</strong> daily pick-up from sellers in Maharashtra and Gujarat, and next-day delivery across Maharashtra and Gujarat. COD (cash on delivery) money is paid to the store every 2 days. <strong>Buyer:</strong> the person who runs orders and deliveries at an online store.</p>
          <p>Rohit researched 5 prospects. All of these companies and facts are made up. For real prospects, only use facts you found yourself, and keep the link to each source.</p>
          <table class="lc-table">
            <thead><tr><th>Prospect</th><th>A fact you can check</th><th>Reason to write now</th><th>Source</th></tr></thead>
            <tbody>
              <tr><td><strong>Tulsi Textiles, Gujarat</strong> (sarees, online store)</td><td>Website says orders ship in 3–5 days</td><td>Festive season orders are starting</td><td>Their website</td></tr>
              <tr><td><strong>GreenLeaf Organics, Maharashtra</strong> (organic food)</td><td>Launched a fresh flour range last month</td><td>Fresh products need fast delivery</td><td>Their Instagram post</td></tr>
              <tr><td><strong>Chai Chapter, Maharashtra</strong> (tea gift boxes)</td><td>Founder posted about corporate Diwali gift orders</td><td>Big gift orders, fixed delivery dates</td><td>Founder's LinkedIn post</td></tr>
              <tr><td><strong>Kavach Covers, Maharashtra</strong> (phone covers)</td><td>Opened a new warehouse in Gujarat</td><td>New warehouse, new delivery set-up</td><td>A local news article</td></tr>
              <tr><td><strong>Mitti Pottery, Gujarat</strong> (handmade pottery)</td><td>Some public reviews mention broken items</td><td>They added a "careful packing" promise</td><td>Public reviews, website</td></tr>
            </tbody>
          </table>
          <p>AI can help you turn your notes into this table. It can also suggest what to look for. But do not ask AI to "find facts" about a company. It may invent them. Never scrape LinkedIn or copy data from it with tools. LinkedIn's User Agreement does not allow that.</p>
        </div>
        <div class="lc-card">
          <h3>Step 2: Write the email, LinkedIn note and call script</h3>
          <p>Here is Rohit's kit for Tulsi Textiles. His contact there is Harsh Patel, the operations head. Words in [brackets] must be true before he sends them.</p>
          <pre><code>COLD EMAIL
        Subject: Festive orders at Tulsi Textiles
        Hi Harsh,
        Your website says saree orders ship in 3-5 days. With festive
        orders starting, that window may get tight.
        Nimbus Logistics picks up from Gujarat every day and delivers
        next day across Maharashtra and Gujarat. COD money reaches you every 2 days.
        [One real result from a client who agreed to share it.]
        Worth a 15-minute call next week to see if this fits your plan?
        Rohit, Sales Manager, Nimbus Logistics, [business address]
        Not relevant? Reply "no" and I will not write again.

        LINKEDIN CONNECTION NOTE (short, no pitch)
        Hi Harsh, I saw Tulsi Textiles sells sarees online across India.
        I work with online stores in Gujarat and Maharashtra on delivery.
        Would be glad to connect. Rohit

        CALL OPENER (permission-based)
        "Hi Harsh, this is Rohit from Nimbus Logistics. I am
        calling about delivery for your online orders. Is now a bad time
        for 30 seconds?"
        Discovery questions:
        1. How do you ship orders to customers in Maharashtra today?
        2. What happens when a delivery fails?
        3. How quickly does COD money reach you now?

        VOICEMAIL (about 20 seconds)
        "Hi Harsh, Rohit from Nimbus Logistics. I emailed about next-day
        delivery for your festive orders. I will send one short note by
        email. No need to call back."</code></pre>
          <p>LinkedIn limits the length of connection notes, and it may limit how many notes free accounts can send. Check its current help pages. Before any cold call in India, check TRAI's rules on commercial calls and the DND register, and call only business numbers the company has published.</p>
        </div>
        <div class="lc-card">
          <h3>Step 3: The 5-touch sequence and tracking</h3>
          <table class="lc-table">
            <thead><tr><th>Day</th><th>Channel</th><th>Angle</th><th>Message idea</th></tr></thead>
            <tbody>
              <tr><td>1</td><td>Email</td><td>Festive speed</td><td>The cold email above</td></tr>
              <tr><td>3</td><td>LinkedIn</td><td>Connect only</td><td>Short note, no pitch</td></tr>
              <tr><td>6</td><td>Email</td><td>Failed deliveries</td><td>A new angle: RTO (return to origin: parcels sent back when delivery fails) and how you handle it</td></tr>
              <tr><td>10</td><td>Call</td><td>Quick check</td><td>Permission opener, 3 questions, voicemail if no answer</td></tr>
              <tr><td>15</td><td>Email</td><td>Polite close</td><td>"Should I close your file for now?" and a clear opt-out</td></tr>
            </tbody>
          </table>
          <p><strong>Stop rules:</strong> stop the sequence at any reply. If the answer is "no", add them to the do-not-contact list. If it is "not now", set a dated follow-up in your CRM.</p>
          <p><strong>Tracking:</strong> use your CRM (such as Zoho CRM, HubSpot, Salesforce or Freshsales) or a simple sheet. Columns: prospect, contact, source link, touch, date, reply (yes/no), positive (yes/no), meeting (yes/no), notes. With only 5 prospects, count results. Do not calculate rates yet: 2 replies out of 5 is "40%", but it tells you very little. Rates start to mean something when you repeat the campaign with many more prospects. Then use the reply rate maths from the testing lesson.</p>
          <p><strong>Final check before sending:</strong> every fact is true and has a source. Every claim about Nimbus is true. There is no fake urgency and no false "Re:". Each message has an easy way to say no. No private customer data went into a public AI tool.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: Rohit's campaign session</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Rohit asks for a research summary">He pastes his own notes from the Tulsi Textiles website and asks AI for 3 facts, a reason to write now and a list of sources.</li>
              <li data-kind="answer" data-label="AI returns a summary">Three facts, a reason to write now, and one extra line: "They ship about 2,000 orders a month."</li>
              <li data-kind="warn" data-label="An invented fact">That number was not in Rohit's notes. The AI made it up. Rohit deletes it.</li>
              <li data-kind="tool" data-label="CRM">Rohit adds Tulsi Textiles to the CRM with the contact name, the source link and the date he found it.</li>
              <li data-kind="user" data-label="Rohit asks for the kit">He asks AI for a cold email, a LinkedIn note, a call opener and a 5-touch sequence, using only his checked facts.</li>
              <li data-kind="check" data-label="Rohit checks every claim">The draft says "same-day delivery in Gujarat". Nimbus does not offer that. Rohit changes it to "next-day delivery in Maharashtra and Gujarat".</li>
              <li data-kind="result" data-label="Sequence ready">Five touches over 15 days, with stop rules and an opt-out line. Rohit repeats the steps for the other 4 prospects.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Build a full outreach kit for one prospect. Leave the brackets as they are for the Nimbus example, or put in your own product and a prospect you have really researched.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a B2B sales writer. Build an outreach kit for one prospect. Use only the facts I give. If you need anything else, write [check] or [proof you can show].

        Seller: [Nimbus Logistics. We deliver for online stores: daily pick-up in Gujarat, next-day delivery across Maharashtra and Gujarat, COD money paid every 2 days.]
        Me: [Rohit, sales manager].
        Prospect: [Harsh Patel, operations head, Tulsi Textiles, Gujarat. They sell sarees online.]
        Facts I checked: [1. Their website says orders ship in 3-5 days. 2. They posted a job for a warehouse lead. 3. Festive season orders are starting.]

        Write:
        1. A cold email: subject under 45 characters, body under 100 words, one clear ask, and a polite opt-out line.
        2. A LinkedIn connection note under 200 characters, with no sales pitch.
        3. A permission-based call opener, 3 discovery questions and a 20-second voicemail.
        4. A 5-touch sequence over 15 days as a table: day, channel, angle, message summary.
        5. A list of every claim I must check before sending.

        Tone: friendly, plain Indian English. No fake urgency, no invented numbers.</pre>
            <ul class="ai-try-checks">
              <li>Every fact about the prospect comes from your list, with nothing added</li>
              <li>Claims about the seller match the offer exactly (for example, no "same-day")</li>
              <li>The email has one clear ask and an easy opt-out line</li>
              <li>The sequence changes the angle at each touch and has 5 touches in 15 days</li>
              <li>Each touch follows the channel's rules: LinkedIn note with no pitch, calls only after checking DND rules</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A good campaign is a chain: real research, an honest offer, clear messages, polite follow-ups and careful tracking. AI makes every step faster. Your checks make it trustworthy. Repeat the chain, test one change at a time, and your outreach will keep getting better.
        </div>
      HTML
      starter_code: nil
    }
  }.freeze
end

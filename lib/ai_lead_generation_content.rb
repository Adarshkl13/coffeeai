module AiLeadGenerationContent
  # Units (sidebar dividers): 1–4 Lead Generation Basics · 5–9 Finding and Researching Leads · 10–14 Scoring and Qualifying · 15 Capstone
  # Widgets: sequence, sorter, stepper. No code editor: each Try It is an ai-try prompt box.
  LESSONS = {
    1 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-sales">Sales & CRM</div>
          <h1 class="lc-title">How Lead Generation Works</h1>
        </div>
        <p class="lc-lead">Every sale starts with a person or company that might buy. <strong>Lead generation</strong> is the work of finding those people and starting a conversation with them. In this lesson you will learn the basic words: lead, prospect, MQL and SQL. You will see the difference between inbound and outbound. You will also read a lead funnel with real maths. You will use these words and numbers in every later lesson.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="A lead funnel for LedgerLite in one quarter. 400 leads become 120 MQLs, which is 30 percent. 120 MQLs become 48 SQLs, which is 40 percent. 48 SQLs become 12 customers, which is 25 percent. The lead-to-customer rate is 12 divided by 400, which is 3 percent.">
            <defs><marker id="lg1a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="60" y="20" width="480" height="50" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="300" y="42" font-weight="700">Leads: 400</text>
              <text x="300" y="60" font-size="11" fill="#9b99b8">gave contact details or were found by you</text>
              <rect x="110" y="80" width="380" height="50" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="300" y="102" font-weight="700">MQLs: 120</text>
              <text x="300" y="120" font-size="11" fill="#9b99b8">good fit + showed interest</text>
              <rect x="160" y="140" width="280" height="50" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="300" y="162" font-weight="700">SQLs: 48</text>
              <text x="300" y="180" font-size="11" fill="#9b99b8">sales checked and accepted</text>
              <rect x="210" y="200" width="180" height="50" rx="10" fill="#27274e" stroke="#10b981"/>
              <text x="300" y="222" font-weight="700">Customers: 12</text>
              <text x="300" y="240" font-size="11" fill="#9b99b8">signed and paid</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#lg1a)">
                <line x1="560" y1="45" x2="560" y2="100"/>
                <line x1="560" y1="110" x2="560" y2="160"/>
                <line x1="560" y1="170" x2="560" y2="220"/>
              </g>
              <g text-anchor="start" font-size="12.5">
                <text x="575" y="78">120 ÷ 400 = 30%</text>
                <text x="575" y="140">48 ÷ 120 = 40%</text>
                <text x="575" y="200">12 ÷ 48 = 25%</text>
              </g>
              <text x="380" y="274" fill="#fcd34d">Lead-to-customer rate: 12 ÷ 400 = 3%</text>
              <text x="380" y="293" font-size="11" fill="#9b99b8">Made-up numbers for one quarter. Yours will differ.</text>
            </g>
          </svg>
          <figcaption>A lead funnel. At each stage some leads drop out. The rate on the right shows how many moved on to the next stage.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The basic words</h3>
          <p>Our example business is <strong>LedgerLite</strong>, a Karnataka startup. It sells accounting software to small businesses. Kavya is a sales rep there, and Arjun is the founder.</p>
          <table class="lc-table">
            <thead><tr><th>Word</th><th>What it means</th><th>LedgerLite example</th></tr></thead>
            <tbody>
              <tr><td><strong>Lead</strong></td><td>A person or company that might buy. You have their contact details, but you know little else.</td><td>A shop owner downloads a free GST checklist from the website.</td></tr>
              <tr><td><strong>Prospect</strong></td><td>A lead that fits your target customer. You plan to talk to them.</td><td>Tulsi Textiles, Gujarat: a 45-person textile trader that fits LedgerLite well.</td></tr>
              <tr><td><strong>MQL</strong> (marketing qualified lead)</td><td>A lead that marketing thinks is ready for sales. It is a good fit and it showed interest.</td><td>The owner visited the pricing page twice and booked a webinar.</td></tr>
              <tr><td><strong>SQL</strong> (sales qualified lead)</td><td>A lead that a salesperson has checked and accepted. There is a real need and a real chance to buy.</td><td>Kavya called the owner. He wants to switch tools before 1 April.</td></tr>
              <tr><td><strong>Opportunity</strong></td><td>An SQL with an active deal in your CRM (customer relationship management tool: software that stores your leads and deals).</td><td>Kavya sends a quote for 5 users.</td></tr>
            </tbody>
          </table>
          <p>Every company defines MQL and SQL a little differently. What matters is that marketing and sales agree on the same rules and write them down.</p>
        </div>
        <div class="lc-card">
          <h3>Inbound and outbound</h3>
          <ul class="lc-list">
            <li><strong>Inbound</strong> means the lead comes to you. They find your website, read a blog post, fill a form or call you. Example: a Maharashtra business owner searches "GST software for traders" and signs up for a LedgerLite demo.</li>
            <li><strong>Outbound</strong> means you go to the lead first. You send a personal email, make a call or meet them at an event. Example: Kavya writes to GreenLeaf Organics, Maharashtra, after she reads that they opened a new warehouse.</li>
          </ul>
          <p>Most businesses use both. Inbound leads are often warmer, because they asked first. Outbound lets you choose the exact companies you want. Both must follow consent and do-not-disturb rules. You will learn these rules later in this course.</p>
        </div>
        <div class="lc-card">
          <h3>Reading the funnel numbers</h3>
          <p>Here are LedgerLite's made-up numbers for last quarter. A <strong>conversion rate</strong> is the share of leads that move from one stage to the next. The formula is: number at the next stage ÷ number at this stage × 100.</p>
          <table class="lc-table">
            <thead><tr><th>Stage</th><th>Count</th><th>Conversion to next stage</th></tr></thead>
            <tbody>
              <tr><td>Leads</td><td>400</td><td>120 ÷ 400 = 30% became MQLs</td></tr>
              <tr><td>MQLs</td><td>120</td><td>48 ÷ 120 = 40% became SQLs</td></tr>
              <tr><td>SQLs</td><td>48</td><td>12 ÷ 48 = 25% became customers</td></tr>
              <tr><td>Customers</td><td>12</td><td>Lead-to-customer rate: 12 ÷ 400 = 3%</td></tr>
            </tbody>
          </table>
          <p>You can also work backwards. Arjun wants 20 new customers next quarter. At these rates he needs 20 ÷ 0.03 ≈ 667 leads. Or he can improve one stage. If 50% of SQLs became customers, the lead-to-customer rate would be 30% × 40% × 50% = 6%. Then he would need only about 334 leads (20 ÷ 0.06).</p>
          <p>These numbers are made up for practice. Do not trust "industry average" rates from an AI chat. Use your own numbers from your CRM or spreadsheet.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: lead, MQL or SQL?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each LedgerLite contact into the right stage.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="lead" data-label="Lead"></div>
              <div data-sorter-target="bucket" data-bucket="mql" data-label="MQL"></div>
              <div data-sorter-target="bucket" data-bucket="sql" data-label="SQL"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="lead" data-why="You have contact details, but no sign of fit or buying interest yet.">A student downloads the free GST checklist</li>
              <li data-bucket="mql" data-why="Good fit and clear interest, but no salesperson has checked the need yet.">A 25-person distributor visits the pricing page three times and joins a webinar</li>
              <li data-bucket="sql" data-why="Kavya talked to the owner and confirmed a real need and a timeline.">After a call, the owner of Tulsi Textiles says he wants to switch before the new financial year</li>
              <li data-bucket="lead" data-why="A business card is only contact details. You do not know the fit or interest yet.">Kavya collects a business card at a trade fair in Maharashtra</li>
              <li data-bucket="mql" data-why="The form shows fit and interest. Sales has not spoken to them yet.">A trader fills the "Book a demo" form and says they have 40 staff</li>
              <li data-bucket="sql" data-why="A salesperson confirmed the budget, the decision maker and the timing.">GreenLeaf Organics' finance head confirms a budget and asks for a quote</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Give AI your own funnel numbers. It will explain the stages for your business and do the maths with you.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a patient sales coach for small businesses in India. I am new to lead generation.

        My business: [LedgerLite, accounting software for small businesses, based in Karnataka].
        Last month's numbers: [leads: 250, MQLs: 80, SQLs: 30, new customers: 6].

        Please:
        1. Define lead, MQL and SQL for my business. Give one line and one realistic example for each.
        2. Calculate the conversion rate for each stage and the lead-to-customer rate. Show each division.
        3. Tell me which stage loses the most people. Suggest 2 questions I should ask my team about that stage.
        4. Give 2 inbound and 2 outbound ideas that fit my business. Each outbound idea must respect consent and do-not-disturb rules.

        Rules: use simple English. Do not compare my numbers with "industry averages" and do not invent statistics. Use a table for point 2.</pre>
            <ul class="ai-try-checks">
              <li>Check the maths yourself. With the sample numbers: 80 ÷ 250 = 32%, 30 ÷ 80 = 37.5%, 6 ÷ 30 = 20%, 6 ÷ 250 = 2.4%.</li>
              <li>MQL and SQL are clearly different: marketing's view versus sales' check.</li>
              <li>There are no made-up benchmarks or "average" rates.</li>
              <li>The outbound ideas do not include bought lists or bulk messages.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A lead becomes a customer in steps: lead, MQL, SQL, customer. Measure the conversion rate at each step with your own numbers. Then you know exactly which step to fix.
        </div>
      HTML
      starter_code: nil
    },
    2 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-sales">Sales & CRM</div>
          <h1 class="lc-title">Where AI Helps in Lead Generation</h1>
        </div>
        <p class="lc-lead">AI assistants such as Claude can save you many hours in lead work. They can summarise a company's website, clean a messy list, suggest a scoring table and write a first email. But AI can also invent company facts that sound true. It can also make it easy to send spam. In this lesson you will learn which jobs to give AI, what risks to watch for, and which decisions always stay with you.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 270" role="img" aria-label="Four jobs where AI helps: research, list building, scoring and first drafts. All four lead to one step where you check facts and decide who to contact, what to say and whether consent is in place. Below are three risks to catch: made-up facts, scraped data and spam at scale.">
            <defs><marker id="lg2a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="20" y="26" text-anchor="start" font-size="12" fill="#c4b5fd">AI gives you a fast first version</text>
              <rect x="20" y="40" width="160" height="60" rx="10" fill="#27274e" stroke="#8b5cf6"/>
              <text x="100" y="65" font-weight="700">Research</text><text x="100" y="85" font-size="11" fill="#9b99b8">summarise websites</text>
              <rect x="206" y="40" width="160" height="60" rx="10" fill="#27274e" stroke="#3b82f6"/>
              <text x="286" y="65" font-weight="700">List building</text><text x="286" y="85" font-size="11" fill="#9b99b8">sort, clean, dedupe</text>
              <rect x="392" y="40" width="160" height="60" rx="10" fill="#27274e" stroke="#22d3ee"/>
              <text x="472" y="65" font-weight="700">Scoring</text><text x="472" y="85" font-size="11" fill="#9b99b8">suggest a points table</text>
              <rect x="578" y="40" width="160" height="60" rx="10" fill="#27274e" stroke="#f59e0b"/>
              <text x="658" y="65" font-weight="700">First drafts</text><text x="658" y="85" font-size="11" fill="#9b99b8">emails, call notes</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#lg2a)">
                <line x1="100" y1="102" x2="170" y2="140"/>
                <line x1="286" y1="102" x2="300" y2="140"/>
                <line x1="472" y1="102" x2="460" y2="140"/>
                <line x1="658" y1="102" x2="590" y2="140"/>
              </g>
              <rect x="120" y="144" width="520" height="56" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="380" y="167" font-weight="700" fill="#6ee7b7">You check the facts and decide</text>
              <text x="380" y="188" font-size="11" fill="#9b99b8">who to contact, what to say, is consent in place?</text>
              <text x="20" y="248" text-anchor="start" font-size="12" fill="#fca5a5">Risks:</text>
              <rect x="150" y="226" width="170" height="34" rx="8" fill="#1f1f44" stroke="#ec4899"/><text x="235" y="248">Made-up facts</text>
              <rect x="350" y="226" width="170" height="34" rx="8" fill="#1f1f44" stroke="#ec4899"/><text x="435" y="248">Scraped data</text>
              <rect x="550" y="226" width="170" height="34" rx="8" fill="#1f1f44" stroke="#ec4899"/><text x="635" y="248">Spam at scale</text>
            </g>
          </svg>
          <figcaption>AI speeds up four jobs. A person still checks every fact and makes every decision about contact.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Four jobs where AI helps</h3>
          <table class="lc-table">
            <thead><tr><th>Job</th><th>What AI can do</th><th>What you must still do</th></tr></thead>
            <tbody>
              <tr><td><strong>Research</strong></td><td>Summarise a company's website or annual report that you paste in. List questions to ask.</td><td>Open the source and check every fact, name and number.</td></tr>
              <tr><td><strong>List building</strong></td><td>Suggest columns, spot duplicates, fix spelling and city names, write spreadsheet formulas.</td><td>Make sure every contact came from an allowed source. Note where it came from.</td></tr>
              <tr><td><strong>Scoring</strong></td><td>Suggest a points table, for example +10 for the right industry.</td><td>Test the table on your real past deals. Change points that do not match reality.</td></tr>
              <tr><td><strong>First drafts</strong></td><td>Write a first email, a call plan or a follow-up note.</td><td>Remove anything untrue. Make it personal. Decide if you should send it at all.</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Three risks to watch</h3>
          <ul class="lc-list">
            <li><strong>Made-up facts.</strong> AI tools sometimes "hallucinate": they write facts that sound right but are false. Some tools can search the web, but they can still misread a page. An email that praises a funding round that never happened will lose you the deal.</li>
            <li><strong>Scraped data.</strong> Scraping means using a tool to copy data from websites in bulk. LinkedIn's User Agreement does not allow scraping or most automation tools. Many other sites have similar terms. Data protection laws may also apply.</li>
            <li><strong>Spam at scale.</strong> AI can write 1,000 emails in minutes. That does not mean you should send them. Mass messages to people who did not agree can break rules and hurt your brand.</li>
          </ul>
          <p>Also, do not paste private customer data into public AI tools. Remove names, phone numbers and emails first, or use a tool your company has approved.</p>
        </div>
        <div class="lc-card">
          <h3>A weak prompt and a better prompt</h3>
          <pre><code>Weak:
        Tell me about GreenLeaf Organics and write a sales email to them.</code></pre>
          <pre><code>Better:
        You are a research assistant for LedgerLite, accounting software for small businesses.
        Below is text I copied from the "About us" page of GreenLeaf Organics, Maharashtra.
        1. Summarise the company in 5 bullet points. Use only facts from this text.
        2. For each fact, quote the sentence it came from.
        3. List 3 things that are NOT in the text but I should find out on a call.
        If something is not in the text, write "Not stated". Do not guess.
        [paste the page text here]</code></pre>
          <p>The better prompt gives the AI a source, a role and a clear rule: do not guess. It also asks for quotes, so you can check each fact quickly.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: catch the made-up fact</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Kavya's prompt">Write a short research brief on GreenLeaf Organics, Maharashtra, for a first call about accounting software.</li>
              <li data-kind="answer" data-label="AI reply">GreenLeaf Organics sells organic flour and pulses. It has about 60 staff. It raised ₹5 crore last month and plans to open 10 stores this year.</li>
              <li data-kind="warn" data-label="Catch this">The funding and the 10 stores have no source. Kavya did not give the AI any text, so it may have guessed.</li>
              <li data-kind="tool" data-label="Company website">Kavya opens GreenLeaf's website and news page. She also searches the news for the company name.</li>
              <li data-kind="result" data-label="What she finds">The website confirms organic flour and pulses. A news post says they opened one new warehouse. There is no news of any funding. The staff count is not shown anywhere.</li>
              <li data-kind="check" data-label="Fixed brief">Kavya deletes the funding and store claims. She writes "Staff: ask on the call". She keeps the warehouse news, with its link, as her reason to contact.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to split your weekly lead work into AI jobs and human jobs. You will get a simple plan with the risks marked.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an honest sales operations coach. Help me use AI safely in lead generation.

        My role: [sales rep at Nimbus Logistics, a Maharashtra company that sells delivery contracts to online stores].
        My weekly lead tasks: [research 15 online stores, update my lead spreadsheet, decide who to call first, write first emails, prepare for 5 calls].

        Make a table with these columns: Task | What AI can draft | What I must check or decide | Main risk.

        Rules:
        - For each task, name one fact or number I must check at the source.
        - Mark any task where private customer data could be shared. Suggest how to remove it first.
        - Do not suggest scraping websites, buying lists or automating LinkedIn.
        - Do not promise time savings or results as numbers.

        After the table, give me 3 rules to stick on my desk, one line each. Use simple English.</pre>
            <ul class="ai-try-checks">
              <li>Every task has a clear human check, not only "review it".</li>
              <li>The plan does not suggest scraping, bought lists or LinkedIn automation.</li>
              <li>Private data is removed or kept out of public AI tools.</li>
              <li>There are no invented time savings or success rates.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Let AI do the first draft of research, lists, scores and emails. You check every fact at its source. You decide who to contact and what to say. AI speeds up the work, but the responsibility stays with you.
        </div>
      HTML
      starter_code: nil
    },
    3 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-sales">Sales & CRM</div>
          <h1 class="lc-title">Your Ideal Customer Profile</h1>
        </div>
        <p class="lc-lead">You cannot sell to everyone. An <strong>ideal customer profile</strong> (ICP) describes the type of company that gets the most value from you and stays with you. It helps you choose which leads to chase and which to skip. In this lesson you will learn the three parts of an ICP: firmographics, pain points and buying triggers. You will also build one from your own best customers with help from AI.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 270" role="img" aria-label="Your customer data goes to AI, which finds patterns that you check. The result is LedgerLite's ICP card: firmographics (traders and distributors, 10 to 50 staff, tier-2 Indian cities), pain points (late, messy GST filings and unclear cash flow) and buying triggers (a new branch or a new accountant).">
            <defs><marker id="lg3a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12.5" fill="#e2e0f0" text-anchor="middle">
              <rect x="20" y="40" width="190" height="180" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="115" y="70" font-weight="700" font-size="13">Your customers</text>
              <text x="115" y="100">40 accounts</text>
              <text x="115" y="122">who stayed, who left</text>
              <text x="115" y="144">size, city, fee</text>
              <text x="115" y="166">why they bought</text>
              <text x="115" y="200" font-size="11" fill="#9b99b8">names removed</text>
              <rect x="250" y="95" width="160" height="70" rx="10" fill="#27274e" stroke="#8b5cf6"/>
              <text x="330" y="125" font-weight="700">AI finds patterns</text>
              <text x="330" y="146" font-size="11" fill="#9b99b8">you check the maths</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#lg3a)">
                <line x1="212" y1="130" x2="246" y2="130"/>
                <line x1="412" y1="130" x2="446" y2="130"/>
              </g>
              <rect x="450" y="20" width="290" height="232" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="595" y="46" font-weight="700" font-size="13" fill="#fcd34d">ICP: LedgerLite</text>
              <g text-anchor="start">
                <text x="470" y="72" font-size="11" fill="#9b99b8">FIRMOGRAPHICS</text>
                <text x="470" y="92">Industry: traders, distributors</text>
                <text x="470" y="110">Size: 10–50 staff</text>
                <text x="470" y="128">Location: tier-2 Indian cities</text>
                <text x="470" y="154" font-size="11" fill="#9b99b8">PAIN POINTS</text>
                <text x="470" y="174">Late, messy GST filings</text>
                <text x="470" y="192">Cash flow is unclear</text>
                <text x="470" y="218" font-size="11" fill="#9b99b8">BUYING TRIGGERS</text>
                <text x="470" y="238">New branch, new accountant</text>
              </g>
            </g>
          </svg>
          <figcaption>An ICP turns patterns in your best customers into a short, clear description of who to target.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The three parts of an ICP</h3>
          <table class="lc-table">
            <thead><tr><th>Part</th><th>What it means</th><th>LedgerLite example</th></tr></thead>
            <tbody>
              <tr><td><strong>Firmographics</strong></td><td>Facts about the company: industry, size (staff or turnover), location and type of business.</td><td>Traders and distributors with 10–50 staff in tier-2 cities in Gujarat, Maharashtra and Karnataka.</td></tr>
              <tr><td><strong>Pain points</strong></td><td>The problems that cost them time, money or sleep. Your product must solve at least one.</td><td>GST returns are filed late. Cash flow is only known at month end.</td></tr>
              <tr><td><strong>Buying triggers</strong></td><td>Events that make a company ready to buy now, not "some day".</td><td>They open a second branch, hire their first accountant or get a notice about filing errors.</td></tr>
            </tbody>
          </table>
          <p>An ICP describes <em>companies</em>. The people inside those companies are called buyer personas. You will learn about them in the next lesson.</p>
        </div>
        <div class="lc-card">
          <h3>Worked example: LedgerLite looks at its own customers</h3>
          <p>Arjun exports 40 customer accounts from the CRM. He removes company names and phone numbers. He keeps only the type of business, staff count, monthly fee and whether they stayed 12 months or more. Then he groups them.</p>
          <table class="lc-table">
            <thead><tr><th>Group</th><th>Customers</th><th>Still with LedgerLite after 12 months</th><th>Average monthly fee</th></tr></thead>
            <tbody>
              <tr><td>Traders and distributors, 10–50 staff</td><td>16</td><td>14 of 16 = 87.5%</td><td>₹3,000</td></tr>
              <tr><td>Small shops, under 10 staff</td><td>18</td><td>7 of 18 ≈ 38.9%</td><td>₹1,200</td></tr>
              <tr><td>Large firms, 100+ staff</td><td>6</td><td>2 of 6 ≈ 33.3%</td><td>₹6,000</td></tr>
              <tr><td><strong>Total</strong></td><td><strong>40</strong></td><td><strong>23 of 40 = 57.5%</strong></td><td></td></tr>
            </tbody>
          </table>
          <p>The first group stays much longer. The large firms pay more, but most of them left. Their notes say they needed features LedgerLite does not have. So Arjun's ICP focuses on traders and distributors with 10–50 staff. This is a small sample of made-up data. Arjun will test the ICP for a few months and update it.</p>
          <p>A good ICP also says who to <strong>skip</strong>. For LedgerLite, that means firms with 100+ staff that need custom features.</p>
        </div>
        <div class="lc-card">
          <h3>Building the ICP with AI</h3>
          <pre><code>Weak:
        Who is the ideal customer for accounting software in India?</code></pre>
          <pre><code>Better:
        You are a B2B sales analyst. Below is a table of 40 customers of my
        accounting software. Names are removed. Columns: Type, Staff, City tier,
        Monthly fee (₹), Stayed 12+ months (Yes/No), Reason they bought.
        1. Group the customers and show how many stayed in each group. Show your maths.
        2. Suggest an ICP: firmographics, top 2 pain points, top 3 buying triggers.
        3. Say which group I should NOT target and why.
        4. List anything that my data is too small to prove.
        [paste the table here]</code></pre>
          <p>The weak prompt gets a general answer about "all businesses". The better prompt makes the AI use <em>your</em> data. Always recount the groups yourself in the spreadsheet, for example with <code>=COUNTIFS(A2:A41,"Trader",E2:E41,"Yes")</code>. AI can miscount rows.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: build an ICP in order</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put Arjun's steps in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Export customer accounts from the CRM with size, type, fee and whether they stayed</li>
              <li data-order="2">Remove names, phone numbers and emails before using any AI tool</li>
              <li data-order="3">Ask AI to group the customers and suggest patterns</li>
              <li data-order="4">Recount the groups in the spreadsheet to check the AI's maths</li>
              <li data-order="5">Write the ICP: firmographics, pain points, buying triggers and who to skip</li>
              <li data-order="6">Test the ICP on new leads and update it after a few months</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Use the sample data in this prompt, or replace it with your own customers (names removed). AI will draft an ICP that you can check.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a B2B sales analyst. Help me write an ideal customer profile (ICP).

        My business: [Sweet Crumbs, a Maharashtra bakery that sells office catering: snack boxes, cakes and meeting trays].
        My customer data, names removed: [
        C1 | IT company | 120 staff | orders 4 times a month | stayed 12+ months: Yes
        C2 | Co-working space | 60 members | 2 per month | Yes
        C3 | Law firm | 15 staff | 1 per quarter | No
        C4 | IT company | 80 staff | 3 per month | Yes
        C5 | Clinic | 10 staff | once | No
        C6 | Bank branch | 25 staff | 1 per month | Yes
        C7 | IT company | 200 staff | 6 per month | Yes
        C8 | School office | 30 staff | once | No ]

        Please:
        1. Group the customers by type. Show how many stayed in each group.
        2. Draft my ICP: firmographics (industry, size, location), 2 pain points and 3 buying triggers.
        3. Say which customers I should not target first, and why.
        4. List what this small sample cannot prove.
        Use only my data. Do not invent market statistics. Use simple English.</pre>
            <ul class="ai-try-checks">
              <li>Recount the groups. In the sample, all 3 IT companies stayed, and all 3 one-time or rare buyers left.</li>
              <li>Pain points and triggers are marked as guesses to test on calls.</li>
              <li>The answer admits that 8 customers is a small sample.</li>
              <li>There are no invented market sizes or statistics.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Build your ICP from your own best customers, not from a general guess. Let AI find patterns, then check the counts yourself. Update the ICP as you learn more.
        </div>
      HTML
      starter_code: nil
    },
    4 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-sales">Sales & CRM</div>
          <h1 class="lc-title">Buyer Personas and Buying Committees</h1>
        </div>
        <p class="lc-lead">Companies do not buy. People inside them do. In most business deals, more than one person has a say. This group is the <strong>buying committee</strong>. A <strong>buyer persona</strong> is a short description of one of these people: their job, goals, worries and questions. In this lesson you will learn who decides, who uses and who pays. You will write persona cards with AI and check your guesses in real calls.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 280" role="img" aria-label="The buying committee for one LedgerLite deal with Tulsi Textiles. The owner decides and cares about risk and time. The finance head pays and cares about cost and the contract. The accounts clerk uses the product and cares about easy daily use. The outside chartered accountant influences and cares about clean GST reports.">
            <defs><marker id="lg4a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="20" y="20" width="230" height="64" rx="10" fill="#27274e" stroke="#f59e0b"/>
              <text x="135" y="46" font-weight="700">Decides: owner</text>
              <text x="135" y="68" font-size="11" fill="#9b99b8">cares about risk and time</text>
              <rect x="510" y="20" width="230" height="64" rx="10" fill="#27274e" stroke="#10b981"/>
              <text x="625" y="46" font-weight="700">Pays: finance head</text>
              <text x="625" y="68" font-size="11" fill="#9b99b8">cares about cost and contract</text>
              <rect x="20" y="186" width="230" height="64" rx="10" fill="#27274e" stroke="#3b82f6"/>
              <text x="135" y="212" font-weight="700">Uses: accounts clerk</text>
              <text x="135" y="234" font-size="11" fill="#9b99b8">cares about easy daily use</text>
              <rect x="510" y="186" width="230" height="64" rx="10" fill="#27274e" stroke="#ec4899"/>
              <text x="625" y="212" font-weight="700">Influences: outside CA</text>
              <text x="625" y="234" font-size="11" fill="#9b99b8">cares about clean GST reports</text>
              <rect x="290" y="112" width="180" height="46" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="380" y="132" font-weight="700">Tulsi Textiles</text>
              <text x="380" y="150" font-size="11" fill="#9b99b8">one deal, four people</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#lg4a)">
                <line x1="252" y1="84" x2="290" y2="110"/>
                <line x1="508" y1="84" x2="470" y2="110"/>
                <line x1="252" y1="186" x2="290" y2="160"/>
                <line x1="508" y1="186" x2="470" y2="160"/>
              </g>
              <text x="380" y="272" font-size="12" fill="#fcd34d">These are guesses until you check them in real calls.</text>
            </g>
          </svg>
          <figcaption>One deal, four people with different worries. Your message must answer each of them.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Who is in the buying committee?</h3>
          <table class="lc-table">
            <thead><tr><th>Role</th><th>What they do</th><th>At Tulsi Textiles, Gujarat</th></tr></thead>
            <tbody>
              <tr><td><strong>Decision maker</strong></td><td>Gives the final yes or no.</td><td>The owner, Mr Desai</td></tr>
              <tr><td><strong>Payer</strong> (budget holder)</td><td>Controls the money and signs the contract.</td><td>The finance head</td></tr>
              <tr><td><strong>User</strong></td><td>Uses the product every day. Can make or break the rollout.</td><td>The accounts clerk</td></tr>
              <tr><td><strong>Influencer</strong></td><td>Gives advice that others trust.</td><td>The outside CA (chartered accountant) who files their GST returns</td></tr>
              <tr><td><strong>Gatekeeper</strong></td><td>Controls access to the others.</td><td>The office manager who picks up the phone</td></tr>
            </tbody>
          </table>
          <p>In a small company, one person may play three roles. At a Sweet Crumbs customer, the office admin may choose the caterer, pay the bill and receive the food. In a bigger company, like the online stores Nimbus Logistics sells to, each role is often a different person.</p>
        </div>
        <div class="lc-card">
          <h3>A persona card</h3>
          <p>Keep each persona card short. One page is enough. Here is Kavya's first draft for the user role.</p>
          <pre><code>PERSONA: Priya, accounts clerk at a trading company
        Company:   trader or distributor, 10–50 staff (fits our ICP)
        Her job:   enters bills, tracks payments, sends data to the CA
        Goals:     finish month-end work on time, fewer errors
        Worries:   learning new software, losing old data
        Questions: "Can I import my old data?" "Will it work in Hindi or Gujarati?"
        Best message: "Your old data moves over, and training is included."
        Status:    GUESS. Check in 5 calls before using.</code></pre>
          <p>AI can help you draft cards like this in minutes. But the card is only a guess. AI does not know your buyers. It writes what sounds likely. The "Status" line reminds your team to check it.</p>
        </div>
        <div class="lc-card">
          <h3>Checking your guesses with real calls</h3>
          <ul class="lc-list">
            <li><strong>Talk to real people.</strong> Speak to 5 to 10 current customers or prospects in each role.</li>
            <li><strong>Ask open questions.</strong> "What was hard about your last month-end close?" works better than "Do you want faster reports?"</li>
            <li><strong>Write down their exact words.</strong> Their words make better email lines than AI's words.</li>
            <li><strong>Update the card.</strong> Change or remove anything the calls did not support.</li>
          </ul>
          <p>If you use AI to summarise call notes, remove names and phone numbers first. Or use an AI tool your company has approved for customer data.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: which role is this?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Nimbus Logistics wants a delivery contract with a growing online store. Sort each person by their main role.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="decide" data-label="Decides"></div>
              <div data-sorter-target="bucket" data-bucket="use" data-label="Uses"></div>
              <div data-sorter-target="bucket" data-bucket="pay" data-label="Pays"></div>
              <div data-sorter-target="bucket" data-bucket="infl" data-label="Influences"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="decide" data-why="The founder gives the final yes on a big new contract.">The founder, who signs off on all new partners</li>
              <li data-bucket="use" data-why="The warehouse team hands parcels to the courier every day.">The warehouse lead who packs and hands over parcels</li>
              <li data-bucket="pay" data-why="Finance controls the budget and checks the rates and terms.">The finance manager who checks rates and payment terms</li>
              <li data-bucket="infl" data-why="Customer complaints shape what the founder thinks, but support does not decide.">The customer support head who hears about late deliveries</li>
              <li data-bucket="use" data-why="They book pickups and track orders in the system every day.">The operations executive who books pickups daily</li>
              <li data-bucket="infl" data-why="An outside adviser gives advice that the founder trusts.">A friend of the founder who runs another online store</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to draft persona cards for a buying committee. It will also give you questions to test each guess on a real call.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a B2B sales coach. Help me understand the buying committee for my product.

        My product: [LedgerLite, accounting and GST software for small businesses in India].
        My target company: [a textile trader in Gujarat with 45 staff, an owner, a finance head, an accounts clerk and an outside chartered accountant].

        Please:
        1. List the buying committee roles: who decides, who pays, who uses, who influences. Say if one person may have two roles.
        2. For each role, write a short persona card: job, goals, worries, 2 questions they will ask me, and one honest message that answers their main worry.
        3. For each card, give me 3 open questions to ask on a real call to check if my guess is right.
        4. Mark every card "GUESS: check in calls".

        Rules: do not invent statistics or facts about real companies. Use simple English. Keep each card under 80 words.</pre>
            <ul class="ai-try-checks">
              <li>Each role has different goals and worries, not the same text copied.</li>
              <li>The call questions are open questions, not yes or no questions.</li>
              <li>The messages are honest and make no promises your product cannot keep.</li>
              <li>Every card is marked as a guess to check.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Most business deals have several buyers: someone decides, someone pays, someone uses and someone advises. AI can draft a persona card for each. Only real conversations turn those guesses into facts.
        </div>
      HTML
      starter_code: nil
    },
    5 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-sales">Sales & CRM</div>
          <h1 class="lc-title">Finding Leads the Right Way</h1>
        </div>
        <p class="lc-lead">Once you know your ideal customer, you need to find real companies and people that match it. There are many good sources: your own website, events, directories, LinkedIn, referrals and partners. There are also shortcuts that can break rules and harm your name, such as scraping tools and bought lists. In this lesson you will learn which sources to use, how to use them honestly, and how AI can help you plan.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 280" role="img" aria-label="Good sources on the left: website forms and chat, events and trade fairs, directories used under their terms, LinkedIn used by hand, referrals and partners. They feed your lead list, where the source and consent are noted. Sources to avoid on the right: scraping tools, bought or rented lists, bots that auto-message, and promotional calls to DND numbers.">
            <defs><marker id="lg5a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12.5" fill="#e2e0f0">
              <rect x="20" y="20" width="250" height="240" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="145" y="46" text-anchor="middle" font-weight="700" font-size="13" fill="#6ee7b7">Good sources</text>
              <text x="40" y="80">Website forms and chat</text>
              <text x="40" y="110">Events and trade fairs</text>
              <text x="40" y="140">Directories, under their terms</text>
              <text x="40" y="170">LinkedIn, used by hand</text>
              <text x="40" y="200">Referrals from customers</text>
              <text x="40" y="230">Partners (for example CAs)</text>
              <rect x="305" y="105" width="150" height="70" rx="10" fill="#27274e" stroke="#f59e0b"/>
              <text x="380" y="135" text-anchor="middle" font-weight="700" font-size="13">Your lead list</text>
              <text x="380" y="156" text-anchor="middle" font-size="11" fill="#9b99b8">source + consent noted</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#lg5a)">
                <line x1="272" y1="140" x2="301" y2="140"/>
              </g>
              <rect x="490" y="20" width="250" height="240" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="615" y="46" text-anchor="middle" font-weight="700" font-size="13" fill="#fca5a5">Do not use</text>
              <text x="510" y="90">Scraping tools</text>
              <text x="510" y="130">Bought or rented lists</text>
              <text x="510" y="170">Bots that auto-message</text>
              <text x="510" y="210">Promo calls to DND numbers</text>
              <line x1="462" y1="140" x2="484" y2="140" stroke="#ec4899" stroke-width="1.5" stroke-dasharray="4 3"/>
              <text x="473" y="128" text-anchor="middle" font-size="13" fill="#fca5a5">✕</text>
            </g>
          </svg>
          <figcaption>Good sources feed a clean lead list with notes on where each lead came from. Shortcuts on the right stay out.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Good lead sources</h3>
          <table class="lc-table">
            <thead><tr><th>Source</th><th>How it works</th><th>Example</th></tr></thead>
            <tbody>
              <tr><td><strong>Your website</strong></td><td>Visitors fill a demo form, download a guide or use chat. They give details and agree to hear from you.</td><td>A LedgerLite visitor downloads a "GST year-end checklist".</td></tr>
              <tr><td><strong>Events</strong></td><td>Trade fairs, local business meetings and webinars. People give you cards or sign up.</td><td>Kavya meets traders at a textile fair in Gujarat.</td></tr>
              <tr><td><strong>Directories</strong></td><td>Online business directories and member lists of trade associations. Read each site's terms of use first.</td><td>Rohit looks up online stores listed on a small business directory, one by one.</td></tr>
              <tr><td><strong>LinkedIn</strong></td><td>Search by hand, read profiles and company pages, and send personal connection requests.</td><td>Rohit finds the operations head of a Maharashtra online store.</td></tr>
              <tr><td><strong>Referrals</strong></td><td>Happy customers introduce you to people they know.</td><td>A Sweet Crumbs client in an IT park refers the office next door.</td></tr>
              <tr><td><strong>Partners</strong></td><td>Businesses that serve the same customers but do not compete with you.</td><td>A CA firm tells its trader clients about LedgerLite.</td></tr>
            </tbody>
          </table>
          <p>For every lead, write down where it came from and what the person agreed to. You will use this "source" note when you build your lead list later in this course.</p>
        </div>
        <div class="lc-card">
          <h3>What is not allowed, and why</h3>
          <ul class="lc-list">
            <li><strong>Scraping.</strong> Scraping means using software to copy data from websites in bulk. LinkedIn's User Agreement does not allow it. Many directories also ban it in their terms of use.</li>
            <li><strong>Bots and auto-messaging.</strong> LinkedIn also does not allow most third-party tools that send connection requests or messages for you. Accounts can be restricted. Check LinkedIn's current help pages for its rules.</li>
            <li><strong>Bought or rented lists.</strong> The people on them did not agree to hear from you. The data is often old or wrong. Using them can break data protection laws.</li>
            <li><strong>Promotional calls and SMS to DND numbers.</strong> In India, TRAI's rules control commercial calls and SMS. People can register on the NCPR (National Customer Preference Register, often called DND) to block them.</li>
          </ul>
          <p>India has the DPDP Act 2023 (Digital Personal Data Protection Act) and the DPDP Rules 2025. They set rules for consent and for using personal data only for a clear purpose. Europe has the GDPR, and the USA has CAN-SPAM for commercial email. A work email address of a person can still be personal data. These rules change and have details. This lesson is general education, not legal advice. Ask a qualified lawyer about your own business.</p>
        </div>
        <div class="lc-card">
          <h3>How AI helps you find leads</h3>
          <p>AI should not collect contacts for you. It is very useful for <em>planning</em> where to look.</p>
          <pre><code>Weak:
        Give me a list of 100 textile companies in Gujarat with phone numbers and emails.</code></pre>
          <pre><code>Better:
        I sell LedgerLite, accounting software for small businesses.
        My ICP: traders and distributors with 10–50 staff in tier-2 Indian cities.
        1. Suggest 6 kinds of places where these businesses gather, online and offline.
        2. Suggest 3 types of partners who already serve them.
        3. For each idea, say what I must check (terms of use, consent) before I use it.
        Do not give me names, phone numbers or emails of real people.</code></pre>
          <p>The weak prompt asks for contact data. AI may invent it or copy it from unknown places. The better prompt asks for a plan. Then you find the real people yourself through allowed sources.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: OK or not OK?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each lead-finding idea.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="ok" data-label="OK to use"></div>
              <div data-sorter-target="bucket" data-bucket="no" data-label="Do not use"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="ok" data-why="The visitor chose to give details and asked for the demo.">A demo request form on the LedgerLite website</li>
              <li data-bucket="no" data-why="LinkedIn's User Agreement does not allow scraping tools.">A browser add-on that copies 500 LinkedIn profiles into a sheet</li>
              <li data-bucket="ok" data-why="A happy customer made a personal introduction.">A Sweet Crumbs client introduces the admin of the office next door</li>
              <li data-bucket="no" data-why="These people never agreed to hear from you, and the data may be old.">A "50,000 Indian business owners" email list bought for ₹5,000</li>
              <li data-bucket="ok" data-why="Rohit talked to people who stopped at his stand and gave their cards.">Business cards collected at a Maharashtra e-commerce event</li>
              <li data-bucket="no" data-why="Most tools that send LinkedIn messages for you are not allowed.">A tool that sends 200 LinkedIn connection requests a day by itself</li>
              <li data-bucket="ok" data-why="A partner who serves the same customers makes a trusted introduction.">A CA firm that tells its trader clients about LedgerLite</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI for an honest lead source plan for your business. It will rank sources and tell you what to check before you use each one.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an honest B2B lead generation adviser.

        My business: [Nimbus Logistics, a Maharashtra company that sells delivery contracts to online stores].
        My ideal customer: [online stores in Maharashtra that ship 500 or more orders a month].
        My time: [5 hours a week for finding new leads].

        Please:
        1. Suggest 6 lead sources that fit my ideal customer. Mix inbound (they come to me) and outbound (I contact them first).
        2. Make a table: Source | How to use it honestly | What to check first (terms of use, consent, do-not-disturb rules) | Hours per week.
        3. Rank the sources from best to worst for my business and explain the top 2 in one line each.
        4. List 3 shortcuts I must avoid and say why.

        Rules: do not give names, phone numbers or emails of real people. Do not suggest scraping, bought lists or LinkedIn automation. Say that rules can change and this is not legal advice. Use simple English.</pre>
            <ul class="ai-try-checks">
              <li>The hours in the table add up to your weekly time (5 in the sample).</li>
              <li>No real names, phone numbers or emails appear.</li>
              <li>Scraping, bought lists and auto-messaging are listed as things to avoid.</li>
              <li>The answer says it is not legal advice.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Good leads come from people who chose to talk to you or were introduced by someone they trust. Use AI to plan where to look, not to collect contacts. Note the source of every lead, and never use scraped or bought data.
        </div>
      HTML
      starter_code: nil
    },
    6 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-sales">Sales & CRM</div>
          <h1 class="lc-title">Researching a Company with AI</h1>
        </div>
        <p class="lc-lead">Before you contact a company, you should know what it does and what has changed there recently. This is called <strong>account research</strong>. It used to take 30 minutes or more per company. AI can read a long website, news story or annual report and summarise it in a minute. But AI can also mix up two companies with similar names, use old news, or invent numbers. In this lesson, you will build a short <strong>research brief</strong> with AI. You will also learn to check every fact at its source before you use it.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 250" role="img" aria-label="A research workflow. Text from the company website, news articles and the annual report goes into an AI step that summarises it. The AI produces a research brief with four parts: facts with links, guesses that are marked, questions to ask and a reason to call. Then you check the brief by opening every link.">
            <defs><marker id="lg6a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="95" y="22" font-size="11" fill="#9b99b8">Public sources</text>
              <rect x="20" y="34" width="150" height="44" rx="8" fill="#27274e" stroke="#3b82f6"/><text x="95" y="61">Company website</text>
              <rect x="20" y="102" width="150" height="44" rx="8" fill="#27274e" stroke="#ec4899"/><text x="95" y="129">News articles</text>
              <rect x="20" y="170" width="150" height="44" rx="8" fill="#27274e" stroke="#f59e0b"/><text x="95" y="197">Annual report</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#lg6a)">
                <path d="M172,56 L226,110"/>
                <line x1="172" y1="124" x2="226" y2="124"/>
                <path d="M172,192 L226,138"/>
                <line x1="372" y1="124" x2="426" y2="124"/>
                <line x1="592" y1="124" x2="616" y2="124"/>
              </g>
              <rect x="230" y="94" width="140" height="60" rx="10" fill="#1f1f44" stroke="#8b5cf6" stroke-width="2"/>
              <text x="300" y="120" font-weight="700" fill="#c4b5fd">AI</text><text x="300" y="140" font-size="12">summarise</text>
              <rect x="430" y="20" width="160" height="210" rx="10" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="510" y="42" font-weight="700" fill="#67e8f9">Research brief</text>
              <rect x="442" y="54" width="136" height="34" rx="6" fill="#27274e"/><text x="510" y="76" font-size="12">Facts + links</text>
              <rect x="442" y="96" width="136" height="34" rx="6" fill="#27274e"/><text x="510" y="118" font-size="12">Guesses (marked)</text>
              <rect x="442" y="138" width="136" height="34" rx="6" fill="#27274e"/><text x="510" y="160" font-size="12">Questions to ask</text>
              <rect x="442" y="180" width="136" height="34" rx="6" fill="#27274e"/><text x="510" y="202" font-size="12">Reason to call</text>
              <rect x="620" y="94" width="125" height="60" rx="10" fill="#1f1f44" stroke="#10b981" stroke-width="2"/>
              <text x="682" y="120" font-weight="700" fill="#6ee7b7">You check</text><text x="682" y="140" font-size="11" fill="#9b99b8">open every link</text>
            </g>
          </svg>
          <figcaption>AI reads and summarises. You decide what is true by opening the source for every fact.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Where to find company facts</h3>
          <p>Start with public sources. Each one tells you something different, and each one has a trap.</p>
          <table class="lc-table">
            <thead><tr><th>Source</th><th>What you learn</th><th>Watch out for</th></tr></thead>
            <tbody>
              <tr><td>Company website (About, Products, Careers pages)</td><td>What they sell, where they work, roles they are hiring for</td><td>Pages can be years old. Look for a date.</td></tr>
              <tr><td>News articles and press releases</td><td>New branches, funding, big orders, awards</td><td>Check the date. Old news is not a reason to call today.</td></tr>
              <tr><td>Annual report</td><td>Revenue, plans, risks, locations</td><td>Listed companies publish one. Most small private companies do not share much.</td></tr>
              <tr><td>MCA and GST portal lookups</td><td>Registered name, status and registration date</td><td>Basic details only. MCA covers companies and LLPs, not sole owners. The GST search needs a GSTIN or PAN. Check each portal's current help pages.</td></tr>
              <tr><td>LinkedIn company page</td><td>Team size range, recent posts, new hires</td><td>Read it yourself. LinkedIn's User Agreement bans scraping and most automation tools.</td></tr>
              <tr><td>Your CRM and past emails</td><td>Earlier talks, who you met, what they said</td><td>Do not paste private notes into a public AI tool.</td></tr>
            </tbody>
          </table>
          <p>MCA is the Ministry of Corporate Affairs. A <strong>CRM</strong> (customer relationship management tool) is where your team stores contacts and deals, for example Zoho CRM or HubSpot.</p>
        </div>
        <div class="lc-card">
          <h3>A weak prompt and a better prompt</h3>
          <p>Kavya is a sales rep at LedgerLite, a Karnataka accounting software startup. She wants to research Tulsi Textiles, a made-up saree and dress material trader in Gujarat. Her first prompt is weak:</p>
          <pre><code>Tell me everything about Tulsi Textiles Gujarat.</code></pre>
          <p>The AI answers from memory. It may describe a different company with a similar name. It may also invent a turnover figure that sounds real. A better prompt gives the AI the text and strict rules:</p>
          <pre><code>You are a sales researcher for LedgerLite (accounting software for small businesses).
        Below is text I copied from Tulsi Textiles' About page, Careers page and one news story.
        Use ONLY this text. Do not add facts from memory.
        Write a research brief: what they do, size, recent news with dates,
        likely pain points (label each one GUESS), 3 questions for a first call.
        For every fact, quote the words from my text that support it.
        If something is missing, write "Not found".
        [paste text here]</code></pre>
          <p>Some AI assistants can search the web and show links. That helps, but still open every link. The tool can misread a page or link to the wrong one.</p>
        </div>
        <div class="lc-card">
          <h3>Worked example: checking Kavya's brief</h3>
          <p>The AI gave Kavya a brief. She opened each source and added a <strong>Check</strong> column.</p>
          <table class="lc-table">
            <thead><tr><th>What the AI wrote</th><th>Source</th><th>Check</th></tr></thead>
            <tbody>
              <tr><td>Trades sarees and dress material, supplies 400+ shops in Gujarat and Maharashtra</td><td>About page</td><td>Correct. Keep.</td></tr>
              <tr><td>Team of 45 people</td><td>About page says "team of 45"</td><td>Correct. Keep.</td></tr>
              <tr><td>Opened a second warehouse in Gujarat</td><td>News story, 8 September 2026</td><td>Correct and recent. Good reason to contact.</td></tr>
              <tr><td>Founded in 1998</td><td>About page says 2001</td><td>Wrong. Fix it.</td></tr>
              <tr><td>Turnover of ₹40 crore</td><td>No source</td><td>Invented. Delete it.</td></tr>
              <tr><td>GUESS: invoices are made by hand in spreadsheets</td><td>Careers page asks for "billing and GST" staff</td><td>Only a guess. Turn it into a question for the call.</td></tr>
            </tbody>
          </table>
          <p>Two of six lines were wrong. This is normal. That is why you check every line. Research the company and the person's work role only. Do not look into anyone's private life.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: follow Kavya's research session</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="tool" data-label="Browser">Kavya opens the Tulsi Textiles website. She copies the About page and the Careers page. She finds one news story about a new warehouse.</li>
              <li data-kind="user" data-label="Kavya's prompt">Use ONLY the text below. Write a research brief with facts, quoted sources, marked guesses and 3 questions for a first call. Write "Not found" for anything missing.</li>
              <li data-kind="answer" data-label="AI brief">Saree and dress material trader in Gujarat, founded 1998. 45 staff. Turnover ₹40 crore. New warehouse opened. GUESS: billing is done by hand.</li>
              <li data-kind="warn" data-label="Catch this">The prompt said "quote your source", but the turnover line has no quote. The AI added it from nowhere. Kavya deletes it.</li>
              <li data-kind="check" data-label="Open the source">Kavya reads the About page again. It says "since 2001", not 1998. She fixes the year.</li>
              <li data-kind="tool" data-label="News page">She checks the news story's date: 8 September 2026. It is recent, so it is a fair reason to contact them.</li>
              <li data-kind="check" data-label="Save it">Kavya saves the checked brief in the CRM with the source links and the date she checked them.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Paste public text about a real prospect into the brackets, or keep the sample text. The AI will build a research brief that separates facts from guesses.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a B2B sales researcher for [LedgerLite, accounting software for small businesses in India].
        Write a research brief about a prospect company. Use ONLY the text I paste below. Do not add facts from memory.

        Brief format:
        1. What they do (1 line)
        2. Size and locations
        3. Recent news, with dates
        4. Facts table: Fact | Exact words from my text that support it
        5. Likely pain points. Label each one GUESS and say why you think so.
        6. One honest reason to contact them now
        7. Three questions to ask on a first call
        8. Missing information I should look for

        If something is not in my text, write "Not found". Never guess numbers such as turnover or staff count.

        My text:
        [About page: Tulsi Textiles has traded sarees and dress material in Gujarat since 2001. Our team of 45 supplies over 400 shops in Gujarat and Maharashtra.
        News, 8 September 2026: Tulsi Textiles opens a second warehouse in Gujarat to speed up orders.
        Careers page: Hiring 2 accounts assistants for billing and GST work.]</pre>
            <ul class="ai-try-checks">
              <li>Every fact in the table has matching words from your text.</li>
              <li>No turnover, profit or staff number appears that is not in your text.</li>
              <li>Guesses are labelled GUESS, not written as facts.</li>
              <li>Dates and years are copied correctly.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> AI makes company research fast, but speed is only useful if the facts are right. Give the AI the source text, ask it to quote its evidence and mark its guesses, and open every source yourself before you use a fact.
        </div>
      HTML
      starter_code: nil
    },
    7 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-sales">Sales & CRM</div>
          <h1 class="lc-title">Buying Signals and Triggers</h1>
        </div>
        <p class="lc-lead">A <strong>buying signal</strong> is a public sign that a company may need what you sell soon. Examples are a new job post, a new branch or a new online store. A <strong>trigger</strong> is the event itself, and it gives you a good time to reach out. Contacting a company right after a trigger works better than contacting it at a random time. Your message is timely and has a clear reason. In this lesson, you will spot signals, judge how strong they are, and use AI to turn them into honest reasons to contact.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 290" role="img" aria-label="A three-column chart. Signal you see, what it may mean, and reason to contact. A job post for an accountant may mean accounts work is growing, so LedgerLite can offer less manual entry. A new branch may mean more bills in more places, so LedgerLite can offer branch reports. A new online store may mean it needs fast deliveries, so Nimbus can offer a delivery contract. A new office with 40 staff may mean team events are likely, so Sweet Crumbs can offer catering.">
            <defs><marker id="lg7a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12.5" fill="#e2e0f0" text-anchor="middle">
              <text x="125" y="24" font-weight="700" fill="#93c5fd">Signal you see</text>
              <text x="380" y="24" font-weight="700" fill="#fcd34d">What it may mean</text>
              <text x="635" y="24" font-weight="700" fill="#6ee7b7">Reason to contact</text>
              <rect x="20" y="40" width="210" height="44" rx="8" fill="#27274e" stroke="#3b82f6"/><text x="125" y="67">Job post: accountant</text>
              <rect x="275" y="40" width="210" height="44" rx="8" fill="#1f1f44" stroke="#f59e0b" stroke-dasharray="5 4"/><text x="380" y="67">Accounts work is growing</text>
              <rect x="530" y="40" width="210" height="44" rx="8" fill="#27274e" stroke="#10b981"/><text x="635" y="67" font-size="12">LedgerLite: less manual entry</text>
              <rect x="20" y="100" width="210" height="44" rx="8" fill="#27274e" stroke="#3b82f6"/><text x="125" y="127">New branch opened</text>
              <rect x="275" y="100" width="210" height="44" rx="8" fill="#1f1f44" stroke="#f59e0b" stroke-dasharray="5 4"/><text x="380" y="127">More bills in more places</text>
              <rect x="530" y="100" width="210" height="44" rx="8" fill="#27274e" stroke="#10b981"/><text x="635" y="127" font-size="12">LedgerLite: branch reports</text>
              <rect x="20" y="160" width="210" height="44" rx="8" fill="#27274e" stroke="#3b82f6"/><text x="125" y="187">Online store launched</text>
              <rect x="275" y="160" width="210" height="44" rx="8" fill="#1f1f44" stroke="#f59e0b" stroke-dasharray="5 4"/><text x="380" y="187">Needs fast deliveries</text>
              <rect x="530" y="160" width="210" height="44" rx="8" fill="#27274e" stroke="#10b981"/><text x="635" y="187" font-size="12">Nimbus: delivery contract</text>
              <rect x="20" y="220" width="210" height="44" rx="8" fill="#27274e" stroke="#3b82f6"/><text x="125" y="247">New office, 40 staff</text>
              <rect x="275" y="220" width="210" height="44" rx="8" fill="#1f1f44" stroke="#f59e0b" stroke-dasharray="5 4"/><text x="380" y="247">Team events likely</text>
              <rect x="530" y="220" width="210" height="44" rx="8" fill="#27274e" stroke="#10b981"/><text x="635" y="247" font-size="12">Sweet Crumbs: catering</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#lg7a)">
                <line x1="232" y1="62" x2="271" y2="62"/><line x1="487" y1="62" x2="526" y2="62"/>
                <line x1="232" y1="122" x2="271" y2="122"/><line x1="487" y1="122" x2="526" y2="122"/>
                <line x1="232" y1="182" x2="271" y2="182"/><line x1="487" y1="182" x2="526" y2="182"/>
                <line x1="232" y1="242" x2="271" y2="242"/><line x1="487" y1="242" x2="526" y2="242"/>
              </g>
              <text x="380" y="283" font-size="11" fill="#9b99b8">The middle column is a guess. Ask the buyer. Do not assume.</text>
            </g>
          </svg>
          <figcaption>A signal points to a possible need. The dashed boxes are guesses that you confirm on the call.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Common buying signals</h3>
          <table class="lc-table">
            <thead><tr><th>Signal</th><th>Where you see it</th><th>Who might care</th></tr></thead>
            <tbody>
              <tr><td><strong>Hiring</strong> for a role linked to your product</td><td>Careers page, job sites, LinkedIn jobs</td><td>LedgerLite, when a shop hires "accounts assistants"</td></tr>
              <tr><td><strong>Funding</strong> or a big new order</td><td>News, press releases</td><td>Nimbus Logistics, because growth means more deliveries</td></tr>
              <tr><td><strong>New branch</strong>, warehouse or office</td><td>News, website "Locations" page</td><td>LedgerLite for branch accounts, Sweet Crumbs for the opening event</td></tr>
              <tr><td><strong>A new rule</strong> that affects them</td><td>Government notices, trade news</td><td>LedgerLite, when GST invoicing rules change for small businesses</td></tr>
              <tr><td><strong>Website change</strong></td><td>A new "Shop online" page or a delivery promise</td><td>Nimbus Logistics</td></tr>
              <tr><td><strong>New decision maker</strong></td><td>A new finance head or operations head is announced</td><td>Anyone. New leaders often review tools and suppliers.</td></tr>
            </tbody>
          </table>
          <p>Always check a new rule at its official source before you mention it. Rules change, and AI may describe an old version.</p>
        </div>
        <div class="lc-card">
          <h3>Strong, weak or skip?</h3>
          <ul class="lc-list">
            <li><strong>Strong:</strong> recent (weeks, not years) and clearly linked to what you sell. Contact them soon.</li>
            <li><strong>Weak:</strong> old, vague or only loosely linked. Note it, but do not build a message on it alone.</li>
            <li><strong>Skip:</strong> personal information, such as family photos or health posts. Never use it, even if it is public.</li>
          </ul>
          <p>Two strong signals together are better than one. For example, Rohit, a sales manager at Nimbus Logistics, sees two things about GreenLeaf Organics in Maharashtra. It launched an online store 10 days ago. It also posted a job for a "dispatch coordinator". Both point to delivery work growing.</p>
        </div>
        <div class="lc-card">
          <h3>From signal to an honest reason to contact</h3>
          <p>A weak prompt makes the AI pretend it knows the prospect's problems:</p>
          <pre><code>Write a sales email to GreenLeaf Organics saying their deliveries are slow
        and Nimbus can fix it.</code></pre>
          <p>You do not know their deliveries are slow. The email makes a claim you cannot support. A better prompt names the signal and asks for honest wording:</p>
          <pre><code>Write a first email (under 90 words) from Rohit at Nimbus Logistics, Maharashtra,
        to the operations head at GreenLeaf Organics, Maharashtra.
        Signal: they launched an online store 10 days ago (their website).
        Say what we noticed in plain words. Say what online stores often find hard
        as a general point, not as a claim about them.
        Offer one thing: a short call about delivery options in Maharashtra.
        Do not invent our results, clients or prices. End with one easy question.</code></pre>
          <p>The result sounds like this: "I saw that GreenLeaf now sells online. New online stores often need to plan delivery times and costs early. Would a 15-minute call about options in Maharashtra be useful?" Rohit still checks the store launch date before he sends it.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: sort Rohit's signals</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Rohit sells delivery contracts to online stores. Sort each signal he found.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="strong" data-label="Strong signal"></div>
              <div data-sorter-target="bucket" data-bucket="weak" data-label="Weak signal"></div>
              <div data-sorter-target="bucket" data-bucket="skip" data-label="Skip"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="strong" data-why="Recent and directly linked to deliveries.">GreenLeaf Organics launched an online store 10 days ago</li>
              <li data-bucket="strong" data-why="A new delivery promise means they must deliver fast across the state.">A shop's website now says "Free delivery across Maharashtra"</li>
              <li data-bucket="strong" data-why="A new dispatch role shows delivery work is growing now.">A Gujarat retailer posted a job for a dispatch coordinator last week</li>
              <li data-bucket="weak" data-why="It is old and has no clear link to deliveries.">A company won a local business award in 2022</li>
              <li data-bucket="weak" data-why="A new logo does not show a delivery need.">A company changed its logo colours</li>
              <li data-bucket="skip" data-why="This is personal. Never use it in sales, even if it is public.">The founder posted photos from a family holiday</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Give the AI a list of signals about one prospect. It will rate them, mark guesses and write a short, honest first email.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a sales research assistant for [Nimbus Logistics, a Maharashtra company that sells delivery contracts to online stores].
        Below are signals I noted about one prospect. For each signal:
        1. Rate it Strong, Weak or Skip. Strong = recent and linked to what we sell. Skip = personal or not linked.
        2. Say what need it MAY point to. Label this as a guess.
        3. Write one honest reason to contact, in one sentence.

        Then write a first email (under 90 words) using the strongest signal. Mention the signal plainly. Do not claim to know their problems. End with one easy question. Do not invent results, clients or prices.

        Prospect: [GreenLeaf Organics, Maharashtra, sells organic groceries]
        Signals:
        [- Launched an online store 10 days ago (their website)
        - Job post 5 days ago: "Dispatch coordinator" (their careers page)
        - Won a local business award in 2022 (news)
        - Founder posted photos from a family holiday (personal social media)
        - Website banner: "Free delivery across Maharashtra" (their website)]</pre>
            <ul class="ai-try-checks">
              <li>The family holiday photos are marked Skip and are not used.</li>
              <li>Each possible need is labelled as a guess.</li>
              <li>The email does not claim facts about their problems or invent results.</li>
              <li>Count the words yourself. The email should be under 90 words.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A buying signal tells you when to reach out, not what the buyer needs. Use recent, business-related signals, mention them honestly, and let the buyer tell you their real problem.
        </div>
      HTML
      starter_code: nil
    },
    8 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-sales">Sales & CRM</div>
          <h1 class="lc-title">Building a Clean Lead List</h1>
        </div>
        <p class="lc-lead">A <strong>lead list</strong> is a spreadsheet of companies and people you may contact. A messy list causes real problems. Two reps call the same person. Emails go to wrong addresses. Nobody knows where a contact came from or if they agreed to hear from you. In this lesson, you will set up clear columns and clean the data with spreadsheet formulas. You will also flag duplicates, fill gaps honestly and keep source and consent notes. AI helps you tidy the list, but you check every change.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 230" role="img" aria-label="Five steps from a messy sheet to a list you can trust: collect into one sheet with a source column, tidy text with TRIM, PROPER and LOWER, flag duplicates with COUNTIF, enrich from named sources only, and check consent and DND. Before: 6 rows with 2 duplicates and 1 missing contact. After: 4 leads, with 1 marked needs contact.">
            <defs><marker id="lg8a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="380" y="30" font-size="12" fill="#9b99b8">From a messy sheet to a list you can trust</text>
              <rect x="14" y="60" width="128" height="56" rx="8" fill="#27274e" stroke="#3b82f6"/><text x="78" y="83" font-weight="700">1. Collect</text><text x="78" y="102" font-size="11" fill="#9b99b8">one sheet + source</text>
              <rect x="164" y="60" width="128" height="56" rx="8" fill="#27274e" stroke="#8b5cf6"/><text x="228" y="83" font-weight="700">2. Tidy</text><text x="228" y="102" font-size="11" fill="#9b99b8">spaces + capitals</text>
              <rect x="314" y="60" width="128" height="56" rx="8" fill="#27274e" stroke="#ec4899"/><text x="378" y="83" font-weight="700">3. Dedupe</text><text x="378" y="102" font-size="11" fill="#9b99b8">COUNTIF flag</text>
              <rect x="464" y="60" width="128" height="56" rx="8" fill="#27274e" stroke="#f59e0b"/><text x="528" y="83" font-weight="700">4. Enrich</text><text x="528" y="102" font-size="11" fill="#9b99b8">named sources</text>
              <rect x="614" y="60" width="128" height="56" rx="8" fill="#27274e" stroke="#10b981"/><text x="678" y="83" font-weight="700">5. Consent</text><text x="678" y="102" font-size="11" fill="#9b99b8">note + DND check</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#lg8a)">
                <line x1="143" y1="88" x2="161" y2="88"/><line x1="293" y1="88" x2="311" y2="88"/>
                <line x1="443" y1="88" x2="461" y2="88"/><line x1="593" y1="88" x2="611" y2="88"/>
                <line x1="342" y1="178" x2="416" y2="178"/>
              </g>
              <rect x="100" y="150" width="240" height="56" rx="10" fill="#1f1f44" stroke="#f87171"/>
              <text x="220" y="173" font-weight="700" fill="#fca5a5">Before: 6 rows</text><text x="220" y="193" font-size="11" fill="#9b99b8">2 duplicates, 1 missing contact</text>
              <rect x="420" y="150" width="240" height="56" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="540" y="173" font-weight="700" fill="#6ee7b7">After: 4 leads</text><text x="540" y="193" font-size="11" fill="#9b99b8">1 marked "needs contact"</text>
            </g>
          </svg>
          <figcaption>Five steps turn a messy sheet into a list you can trust. Nothing is deleted without a person looking at it.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The columns every lead list needs</h3>
          <table class="lc-table">
            <thead><tr><th>Column</th><th>Example</th><th>Why it matters</th></tr></thead>
            <tbody>
              <tr><td>Company, State, Industry</td><td>Tulsi Textiles, Gujarat, Textiles</td><td>Lets you filter by your ICP (ideal customer profile)</td></tr>
              <tr><td>Staff size (range)</td><td>10 to 50</td><td>Used later for lead scoring</td></tr>
              <tr><td>Contact name and job title</td><td>Meena Shah, Finance Head</td><td>Tells you who decides</td></tr>
              <tr><td>Work email and phone</td><td>A work address, not a personal one</td><td>Only if they shared it or it is published for business use</td></tr>
              <tr><td>Source and source date</td><td>Trade fair, Jan 2026</td><td>Shows where the data came from</td></tr>
              <tr><td>Consent note</td><td>"Ticked email updates box, 3 Feb 2026"</td><td>Shows what they agreed to, and when</td></tr>
              <tr><td>Owner and status</td><td>Kavya, New</td><td>Stops two reps calling the same person</td></tr>
            </tbody>
          </table>
          <p>Agree on formats before you start. For example, use one spelling for each city and one set of industry names. Use dropdown lists where your spreadsheet allows them.</p>
        </div>
        <div class="lc-card">
          <h3>Worked example: clean and flag duplicates with formulas</h3>
          <p>Kavya at LedgerLite merged leads from a trade fair, website forms and a webinar. Here are 6 rows (made-up data). Column A is Company, B is State, C is Contact and D is Email.</p>
          <table class="lc-table">
            <thead><tr><th>Row</th><th>Company (A)</th><th>State (B)</th><th>Email (D)</th><th>Source</th></tr></thead>
            <tbody>
              <tr><td>2</td><td>Tulsi Textiles</td><td>Gujarat</td><td>meena@tulsitextiles.example</td><td>Trade fair</td></tr>
              <tr><td>3</td><td>&nbsp;&nbsp;tulsi textiles</td><td>gujarat</td><td>Meena@TulsiTextiles.example&nbsp;</td><td>Website form</td></tr>
              <tr><td>4</td><td>GreenLeaf Organics</td><td>Maharashtra</td><td>farhan@greenleaf.example</td><td>Referral</td></tr>
              <tr><td>5</td><td>Shree Ganesh Hardware</td><td>Madhya Pradesh</td><td>(empty)</td><td>Directory</td></tr>
              <tr><td>6</td><td>GREENLEAF ORGANICS</td><td>Maharashtra</td><td>farhan@greenleaf.example</td><td>Webinar</td></tr>
              <tr><td>7</td><td>Apex Auto Parts</td><td>Maharashtra</td><td>accounts@apexauto.example</td><td>Event</td></tr>
            </tbody>
          </table>
          <p>She adds three helper columns and fills each formula down to row 7. These work in both Excel and Google Sheets:</p>
          <pre><code>E2  Clean company:  =PROPER(TRIM(A2))
        F2  Email key:      =LOWER(TRIM(D2))
        G2  Flag:           =IF(F2="","Check",IF(COUNTIF($F$2:F2,F2)&gt;1,"Duplicate","Keep"))</code></pre>
          <p><code>TRIM</code> removes extra spaces. <code>PROPER</code> makes each word start with a capital. <code>LOWER</code> makes all letters small, so the same email always looks the same. <code>COUNTIF($F$2:F2,F2)</code> counts how many times this email has appeared so far. The first copy shows "Keep" and later copies show "Duplicate".</p>
          <table class="lc-table">
            <thead><tr><th>Row</th><th>E: Clean company</th><th>G: Flag</th></tr></thead>
            <tbody>
              <tr><td>2</td><td>Tulsi Textiles</td><td>Keep</td></tr>
              <tr><td>3</td><td>Tulsi Textiles</td><td>Duplicate</td></tr>
              <tr><td>4</td><td>Greenleaf Organics</td><td>Keep</td></tr>
              <tr><td>5</td><td>Shree Ganesh Hardware</td><td>Check</td></tr>
              <tr><td>6</td><td>Greenleaf Organics</td><td>Duplicate</td></tr>
              <tr><td>7</td><td>Apex Auto Parts</td><td>Keep</td></tr>
            </tbody>
          </table>
          <p>Result: 6 rows become 4 leads, and one needs a contact. Now look closely. <code>PROPER</code> changed "GreenLeaf" to "Greenleaf". Formulas do not know brand spellings, so fix those by hand. When you merge duplicates, keep both source notes, for example "Trade fair, Jan 2026; Website form, Feb 2026". Both spreadsheet tools also have a built-in "remove duplicates" option. Flag and review first, because it deletes rows without asking why.</p>
        </div>
        <div class="lc-card">
          <h3>Enrich honestly, and keep consent notes</h3>
          <p><strong>Enrichment</strong> means adding missing details, such as industry or staff size. Do it honestly:</p>
          <ul class="lc-list">
            <li><strong>Use sources you can name:</strong> the company's own website, your call notes, or a directory whose terms allow this use. Write the source in the Source column.</li>
            <li><strong>Do not ask AI to "find emails".</strong> It cannot look them up reliably. It will often make up addresses that look real.</li>
            <li><strong>Do not scrape or buy lists.</strong> LinkedIn's User Agreement bans scraping. Bought lists usually have no consent behind them.</li>
            <li><strong>Protect personal data.</strong> Before you paste a list into a public AI tool, remove names, emails and phone numbers. Company names alone are usually enough for cleaning.</li>
            <li><strong>Record consent.</strong> In India, the DPDP Act 2023 (Digital Personal Data Protection Act) and its Rules expect clear consent for a stated purpose. Commercial calls and SMS must follow TRAI rules, including the DND (Do Not Disturb) register. Other countries have their own laws, such as GDPR in Europe.</li>
          </ul>
          <p>This is general education, not legal advice. Ask your company's legal or compliance team what your list may be used for.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: clean a lead list in the right order</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put Kavya's list-cleaning steps in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Agree on the column list and formats with the team</li>
              <li data-order="2">Put all leads into one sheet, with a Source column for every row</li>
              <li data-order="3">Tidy the text with TRIM, PROPER and LOWER, then fix brand spellings by hand</li>
              <li data-order="4">Flag duplicates with COUNTIF and look at each flagged row</li>
              <li data-order="5">Merge real duplicates and keep both source notes</li>
              <li data-order="6">Fill gaps only from sources you can name</li>
              <li data-order="7">Check consent notes and DND status before anyone is contacted</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Paste your own lead list with personal details removed, or keep the sample. The AI will standardise it, flag possible duplicates and list what is missing.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a data assistant. Help me clean a B2B lead list. I removed names, emails and phone numbers for privacy.

        Tasks:
        1. Standardise company names and states: remove extra spaces and fix capitals. Keep brand spellings such as "GreenLeaf".
        2. Standardise the industry names into a short list.
        3. Flag rows that may be duplicates of another row, and say why.
        4. List the missing information for each row.
        5. Do not invent websites, staff sizes or contact details. Write "unknown" instead.
        6. Give me Google Sheets formulas to flag duplicates myself, using a helper key column.

        Return a table: Row | Clean company | Clean state | Industry | Possible duplicate of | Missing | Source.

        My list (Row | Company | State | Industry | Source):
        [2 | Tulsi Textiles | Gujarat | Textiles | Trade fair, Jan 2026
        3 |  tulsi textiles  | gujarat | textile | Website form, Feb 2026
        4 | GreenLeaf Organics | Maharashtra | Grocery | Referral
        5 | Shree Ganesh Hardware | Madhya Pradesh |  | Business directory
        6 | GREENLEAF ORGANICS | Maharashtra  | Groceries | Webinar, Mar 2026
        7 | Apex Auto Parts | Maharashtra | Auto parts | Event, Mar 2026
        8 | Apex Auto Parts Pvt Ltd | Maharashtra | Auto parts | Website form]</pre>
            <ul class="ai-try-checks">
              <li>The table has the same number of rows as your list. Count them.</li>
              <li>The flagged duplicates are real. In the sample, rows 3, 6 and 8 should be flagged.</li>
              <li>No website, staff size or email has been invented.</li>
              <li>Test the formulas on two or three rows in your own sheet before you trust them.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A smaller, clean list beats a big, messy one. Use formulas to tidy and flag, look at every flagged row yourself, and keep a source and consent note for every contact.
        </div>
      HTML
      starter_code: nil
    },
    9 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-sales">Sales & CRM</div>
          <h1 class="lc-title">Inbound Leads: Forms and Lead Magnets</h1>
        </div>
        <p class="lc-lead"><strong>Inbound leads</strong> are people who come to you first. They fill in a form, download a guide or chat on your website. They already show some interest, so they are often easier to talk to than cold contacts. In this lesson, you will plan a lead magnet, a landing page and a short form. You will also plan a chatbot that asks a few qualifying questions. Finally, you will measure <strong>speed to lead</strong>: how fast a person replies after a form comes in. AI helps you draft all of this quickly. You check every claim.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 250" role="img" aria-label="An inbound flow in five steps: a lead magnet such as a free checklist, a landing page with one clear goal, a short form with an unticked consent box, a chatbot that qualifies with 3 or 4 questions, and a fast reply from a person. A bracket from the form to the fast reply shows speed to lead: the time from form to first reply.">
            <defs><marker id="lg9a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="380" y="30" font-size="12" fill="#9b99b8">Inbound: people come to you</text>
              <rect x="14" y="60" width="128" height="60" rx="8" fill="#27274e" stroke="#f59e0b"/><text x="78" y="85" font-weight="700">Lead magnet</text><text x="78" y="105" font-size="11" fill="#9b99b8">free checklist</text>
              <rect x="164" y="60" width="128" height="60" rx="8" fill="#27274e" stroke="#3b82f6"/><text x="228" y="85" font-weight="700">Landing page</text><text x="228" y="105" font-size="11" fill="#9b99b8">one clear goal</text>
              <rect x="314" y="60" width="128" height="60" rx="8" fill="#27274e" stroke="#8b5cf6"/><text x="378" y="85" font-weight="700">Short form</text><text x="378" y="105" font-size="11" fill="#9b99b8">consent unticked</text>
              <rect x="464" y="60" width="128" height="60" rx="8" fill="#27274e" stroke="#ec4899"/><text x="528" y="85" font-weight="700">Qualify</text><text x="528" y="105" font-size="11" fill="#9b99b8">3 or 4 questions</text>
              <rect x="614" y="60" width="128" height="60" rx="8" fill="#27274e" stroke="#10b981"/><text x="678" y="85" font-weight="700">Fast reply</text><text x="678" y="105" font-size="11" fill="#9b99b8">a person follows up</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#lg9a)">
                <line x1="143" y1="90" x2="161" y2="90"/><line x1="293" y1="90" x2="311" y2="90"/>
                <line x1="443" y1="90" x2="461" y2="90"/><line x1="593" y1="90" x2="611" y2="90"/>
              </g>
              <path d="M378,126 L378,160 L678,160 L678,126" fill="none" stroke="#22d3ee" stroke-width="1.5" stroke-dasharray="5 4"/>
              <text x="528" y="186" font-size="12" fill="#67e8f9">Speed to lead: time from form to first reply</text>
              <text x="380" y="226" font-size="11" fill="#9b99b8">Track it for every lead. Set your own target and check it each week.</text>
            </g>
          </svg>
          <figcaption>Each step has one job. The dashed bracket is the time you measure: from form to first human reply.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Lead magnets and landing pages</h3>
          <p>A <strong>lead magnet</strong> is something free and useful that people get in exchange for their contact details. A <strong>landing page</strong> is a web page with one goal, such as "download the checklist". Good lead magnets solve one small problem for your ideal buyer.</p>
          <table class="lc-table">
            <thead><tr><th>Business</th><th>Lead magnet idea</th><th>Why the buyer wants it</th></tr></thead>
            <tbody>
              <tr><td>LedgerLite (accounting software)</td><td>"Month-end closing checklist for shop owners" (a spreadsheet)</td><td>Month-end work is a regular pain for small traders</td></tr>
              <tr><td>Nimbus Logistics (deliveries)</td><td>"Delivery cost planner for online stores"</td><td>New online stores struggle to price delivery</td></tr>
              <tr><td>Sweet Crumbs (office catering)</td><td>"Free tasting box for HR teams in Maharashtra"</td><td>HR teams plan many office events each year</td></tr>
            </tbody>
          </table>
          <p>A weak prompt gets a page full of hype:</p>
          <pre><code>Write a landing page for LedgerLite. Make it exciting.</code></pre>
          <p>A better prompt gives the buyer, the offer and the rules:</p>
          <pre><code>Write a landing page for a free "Month-end closing checklist for shop owners"
        from LedgerLite, Karnataka. Buyer: owners of trading firms with 10 to 50 staff.
        Include: a headline under 10 words, 3 benefit bullets, button text,
        and one line saying what we will do with their details.
        Do not invent customer numbers, reviews or awards.
        Write [PROOF] where we must add a real customer quote.</code></pre>
          <p>Never publish a made-up review or number. Only use real customer quotes, with the customer's permission.</p>
        </div>
        <div class="lc-card">
          <h3>Short forms and chatbots that qualify</h3>
          <p>Every extra form field makes some people give up. Ask only for what you need now.</p>
          <ul class="lc-list">
            <li><strong>Keep:</strong> name, work email, company, and one dropdown such as staff size.</li>
            <li><strong>Maybe:</strong> phone number. Make it optional, and say why you ask for it.</li>
            <li><strong>Consent:</strong> add a separate box for marketing emails. Leave it unticked. Getting the checklist should not depend on it.</li>
            <li><strong>Say the purpose</strong> in plain words, and link to your privacy notice.</li>
          </ul>
          <p>A website <strong>chatbot</strong> can qualify visitors. It asks 3 or 4 questions, such as "How many staff do you have?" and "What do you use for billing today?". Set clear rules for it. It says that it is a bot. It never makes up prices or features. It hands the chat to a person when someone asks for one or looks like a strong lead. Test it with tricky questions before it goes live.</p>
          <p>Consent rules differ by country. In India, see the DPDP Act 2023 and TRAI rules for calls and SMS. This is general education, not legal advice.</p>
        </div>
        <div class="lc-card">
          <h3>Worked example: measuring speed to lead</h3>
          <p>Kavya tracks six form leads from last week. Column B has the form time and column C has her first reply time. Both are date-time values. This formula gives the gap in minutes:</p>
          <pre><code>D2:  =(C2-B2)*24*60</code></pre>
          <p>Format column D as a number. The six results were 12, 45, 8, 240, 30 and 1,440 minutes. The 1,440 was a form that came in on Friday evening and got a reply the next evening.</p>
          <table class="lc-table">
            <thead><tr><th>Measure</th><th>Formula</th><th>Result</th></tr></thead>
            <tbody>
              <tr><td>Average reply time</td><td><code>=AVERAGE(D2:D7)</code></td><td>1,775 ÷ 6 = about 296 minutes</td></tr>
              <tr><td>Median reply time (the middle value)</td><td><code>=MEDIAN(D2:D7)</code></td><td>(30 + 45) ÷ 2 = 37.5 minutes</td></tr>
              <tr><td>Replies within 60 minutes</td><td><code>=COUNTIF(D2:D7,"&lt;=60")</code></td><td>4 of 6 = 66.7%</td></tr>
            </tbody>
          </table>
          <p>The average looks terrible because of one slow reply. The median shows the usual reply time. Report both, and look at the slow ones. Here, the fix is simple: an auto-reply for weekend forms and a Monday morning check. Set your own target, such as "a reply within one working hour", and track it each week.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: Kavya handles a new form lead</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="tool" data-label="CRM alert">At 10:02, the CRM shows a new lead. Someone from GreenLeaf Organics, Maharashtra, downloaded the month-end checklist.</li>
              <li data-kind="result" data-label="Form data">Staff size: 11 to 50. Question box: "We use spreadsheets for GST invoices. Is there an easier way?" Marketing box: ticked.</li>
              <li data-kind="user" data-label="Kavya's prompt">Draft a 3-line reply to this lead. Thank them, answer their question in general words, and offer a 15-minute call. Do not mention prices or offers.</li>
              <li data-kind="answer" data-label="AI draft">Thanks for downloading the checklist! LedgerLite creates GST invoices in a few clicks, and setup is free this month. Can we talk for 15 minutes this week?</li>
              <li data-kind="warn" data-label="Catch this">"Setup is free this month" is not a real LedgerLite offer. The AI invented it. Kavya deletes that part.</li>
              <li data-kind="check" data-label="Send and log">Kavya checks the rest, sends the reply at 10:14 and logs it in the CRM. Speed to lead: 12 minutes.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Change the business details in the brackets, or keep the sample. The AI will draft a complete inbound plan that you can check and edit.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a marketing assistant for [LedgerLite, a Karnataka accounting software startup for small businesses].
        Target buyer: [owners of trading and distribution firms with 10 to 50 staff].
        Their problem: [month-end accounts and GST invoices take too long].

        Create an inbound lead plan:
        1. Three lead magnet ideas (free, useful, quick to make). For each: title, format, and why this buyer wants it.
        2. A landing page for the best idea: headline (under 10 words), 3 benefit bullets, button text, and one line on how we use their details.
        3. Form fields: the fewest fields we need, and why each one is needed. Add a separate, unticked box for marketing emails.
        4. Four chatbot questions to qualify a visitor, and when the bot should hand the chat to a person.
        5. A 3-line first reply that a sales rep can send within one hour of a form.

        Rules: simple English. Do not invent customer numbers, reviews, awards, prices or offers. Write [PROOF] where we must add a real customer quote.</pre>
            <ul class="ai-try-checks">
              <li>No made-up reviews, numbers, prices or special offers appear.</li>
              <li>The form asks only for what you need, and the marketing box is separate and unticked.</li>
              <li>The chatbot hands over to a person and never quotes prices.</li>
              <li>Every product claim in the page is true for your business.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Inbound leads have already raised their hand, so do not waste it. Offer something truly useful, ask for as little as you can, get clear consent, and reply quickly with a person who checks what the AI drafted.
        </div>
      HTML
      starter_code: nil
    },
    10 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-sales">Sales & CRM</div>
          <h1 class="lc-title">Lead Scoring Basics</h1>
        </div>
        <p class="lc-lead"><strong>Lead scoring</strong> gives each lead points, so your team knows who to call first. It uses two scores. The <strong>fit score</strong> shows how well the lead matches your ideal customer. The <strong>engagement score</strong> shows how interested they are, based on what they did. In this lesson, you will build a simple points table and set thresholds. You will also build a scoring sheet with formulas. AI can suggest a first model, but you test it against real results and keep improving it.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 275" role="img" aria-label="A lead scoring model. The fit score has a maximum of 50: target industry 15, 10 to 50 staff 15, owner or finance head 20, accountant 10. The engagement score has a maximum of 50: demo request 20, pricing page 10, webinar 10, checklist 5, three or more email opens 5. They add up to a total from 0 to 100. Hot is 70 or more and goes to sales. Warm is 40 to 69 and gets nurture emails. Cold is under 40 and is low priority.">
            <defs><marker id="lg10a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12" fill="#e2e0f0" text-anchor="middle">
              <rect x="20" y="10" width="220" height="120" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="130" y="32" font-size="13" font-weight="700" fill="#93c5fd">Fit score (max 50)</text>
              <text x="130" y="54">Target industry: 15</text>
              <text x="130" y="74">10 to 50 staff: 15</text>
              <text x="130" y="94">Owner or finance head: 20</text>
              <text x="130" y="114" fill="#9b99b8">(Accountant: 10)</text>
              <rect x="20" y="142" width="220" height="126" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="130" y="164" font-size="13" font-weight="700" fill="#f9a8d4">Engagement (max 50)</text>
              <text x="130" y="184">Demo request: 20</text>
              <text x="130" y="202">Pricing page visit: 10</text>
              <text x="130" y="220">Webinar: 10</text>
              <text x="130" y="238">Checklist download: 5</text>
              <text x="130" y="256">3+ email opens: 5</text>
              <rect x="300" y="110" width="140" height="60" rx="10" fill="#27274e" stroke="#8b5cf6" stroke-width="2"/>
              <text x="370" y="135" font-size="13" font-weight="700" fill="#c4b5fd">Total</text><text x="370" y="155" fill="#9b99b8">0 to 100</text>
              <rect x="500" y="40" width="240" height="50" rx="10" fill="#27274e" stroke="#f87171"/>
              <text x="620" y="61" font-size="13" font-weight="700" fill="#fca5a5">Hot: 70 or more</text><text x="620" y="79" font-size="11" fill="#9b99b8">send to sales</text>
              <rect x="500" y="110" width="240" height="50" rx="10" fill="#27274e" stroke="#f59e0b"/>
              <text x="620" y="131" font-size="13" font-weight="700" fill="#fcd34d">Warm: 40 to 69</text><text x="620" y="149" font-size="11" fill="#9b99b8">nurture with useful emails</text>
              <rect x="500" y="180" width="240" height="50" rx="10" fill="#27274e" stroke="#22d3ee"/>
              <text x="620" y="201" font-size="13" font-weight="700" fill="#67e8f9">Cold: under 40</text><text x="620" y="219" font-size="11" fill="#9b99b8">low priority, check later</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#lg10a)">
                <path d="M242,70 L296,128"/>
                <path d="M242,205 L296,152"/>
                <path d="M442,140 L496,68"/>
                <line x1="442" y1="140" x2="496" y2="136"/>
                <path d="M442,140 L496,202"/>
              </g>
            </g>
          </svg>
          <figcaption>LedgerLite's first scoring model. Fit plus engagement gives a total, and the total picks the next action.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Fit, engagement and thresholds</h3>
          <ul class="lc-list">
            <li><strong>Fit score:</strong> points for matching your ICP (ideal customer profile), such as industry, size and job role. It changes rarely.</li>
            <li><strong>Engagement score:</strong> points for actions, such as a demo request or a pricing page visit. Big actions get more points than small ones.</li>
            <li><strong>Threshold:</strong> the score where the next action changes. At LedgerLite, 70 or more is Hot. A Hot lead counts as an MQL (marketing qualified lead) and goes to sales the same day.</li>
            <li><strong>Exclude, do not score:</strong> students, competitors and current customers go in a separate "Exclude" column. Points should not decide these.</li>
          </ul>
          <p>Old actions matter less. A pricing visit from six months ago is not the same as one from yesterday. A simple fix is to count only actions from the last 90 days.</p>
        </div>
        <div class="lc-card">
          <h3>Worked example: a scoring sheet with formulas</h3>
          <p>Kavya sets up one row per lead. Column A is the lead, B is target industry (Yes/No), C is staff count and D is role. Columns E to H are Yes/No: E demo request, F pricing visit, G webinar, H checklist. Column I is the number of email opens. She adds four formula columns and fills them down:</p>
          <pre><code>J2  Fit:         =IF(B2="Yes",15,0)
                           +IF(AND(C2&gt;=10,C2&lt;=50),15,IF(AND(C2&gt;=2,C2&lt;=9),5,0))
                           +IF(OR(D2="Owner",D2="Finance head"),20,IF(D2="Accountant",10,0))
        K2  Engagement:  =IF(E2="Yes",20,0)+IF(F2="Yes",10,0)+IF(G2="Yes",10,0)
                           +IF(H2="Yes",5,0)+IF(I2&gt;=3,5,0)
        L2  Total:       =J2+K2
        M2  Grade:       =IF(L2&gt;=70,"Hot",IF(L2&gt;=40,"Warm","Cold"))</code></pre>
          <p>Type each formula on one line in the cell. It is split here only to fit the page. Size gives 15 points for 10 to 50 staff (the ICP size) and 5 points for 2 to 9 staff. Larger firms get 0, because the ICP says to skip them. Here are five made-up leads:</p>
          <table class="lc-table">
            <thead><tr><th>Lead</th><th>Fit</th><th>Engagement</th><th>Total</th><th>Grade</th></tr></thead>
            <tbody>
              <tr><td>Tulsi Textiles, Gujarat: finance head, 45 staff, demo, pricing, checklist, 4 opens</td><td>15+15+20 = 50</td><td>20+10+5+5 = 40</td><td>90</td><td>Hot</td></tr>
              <tr><td>Apex Auto Parts, Maharashtra: distributor, finance head, 40 staff, demo, 0 opens</td><td>15+15+20 = 50</td><td>20</td><td>70</td><td>Hot</td></tr>
              <tr><td>GreenLeaf Organics, Maharashtra: accountant, 12 staff, pricing, webinar, checklist, 2 opens</td><td>15+15+10 = 40</td><td>10+10+5 = 25</td><td>65</td><td>Warm</td></tr>
              <tr><td>Shree Ganesh Hardware, Madhya Pradesh: owner, 6 staff, checklist, 1 open</td><td>15+5+20 = 40</td><td>5</td><td>45</td><td>Warm</td></tr>
              <tr><td>Coastal Crafts Studio, Kerala: designer, 3 staff, not target industry, webinar, checklist, 5 opens</td><td>0+5+0 = 5</td><td>10+5+5 = 20</td><td>25</td><td>Cold</td></tr>
            </tbody>
          </table>
          <p>Look at Apex. It scores exactly 70, so <code>&gt;=70</code> makes it Hot. Coastal Crafts is very active, but it is a poor fit. Engagement alone would have ranked it above Shree Ganesh.</p>
        </div>
        <div class="lc-card">
          <h3>Let AI suggest, then test with real results</h3>
          <p>AI can draft a points table from your ICP and a summary of past won and lost deals. Remove names and contact details first. AI cannot see which leads really bought, so its points are only a starting guess. Test the model on last quarter's leads. These are the same 400 leads as in LedgerLite's funnel. Kavya scores them again with the new model, so the grade counts do not match the old MQL count of 120. Here are the made-up numbers:</p>
          <table class="lc-table">
            <thead><tr><th>Grade</th><th>Leads</th><th>Became customers</th><th>Lead-to-customer rate</th></tr></thead>
            <tbody>
              <tr><td>Hot</td><td>40</td><td>7</td><td>7 ÷ 40 = 17.5%</td></tr>
              <tr><td>Warm</td><td>120</td><td>4</td><td>4 ÷ 120 = about 3.3%</td></tr>
              <tr><td>Cold</td><td>240</td><td>1</td><td>1 ÷ 240 = about 0.4%</td></tr>
              <tr><td><strong>All leads</strong></td><td>400</td><td>12</td><td>12 ÷ 400 = 3%</td></tr>
            </tbody>
          </table>
          <p>The <strong>lead-to-customer rate</strong> is customers divided by leads in that group. Here, Hot leads were only 10% of all leads, but they gave 7 of the 12 customers. In a sheet with the grade in column M and the result ("Won" or "Lost") in column N, use <code>=COUNTIFS(M:M,"Hot",N:N,"Won")/COUNTIF(M:M,"Hot")</code>. If Hot leads do not buy more often than Warm leads, change the points. Ask the sales team too. They know which "Hot" leads were a waste of time. Review the model every quarter.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: grade these leads</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Use LedgerLite's points table from the diagram. Add the points and sort each lead into Hot (70+), Warm (40 to 69) or Cold (under 40).</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="hot" data-label="Hot"></div>
              <div data-sorter-target="bucket" data-bucket="warm" data-label="Warm"></div>
              <div data-sorter-target="bucket" data-bucket="cold" data-label="Cold"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="hot" data-why="Fit 15+15+20 = 50. Engagement: demo 20. Total 70, which is Hot.">Owner of a 30-staff wholesaler (target industry). Requested a demo.</li>
              <li data-bucket="hot" data-why="Fit 50. Engagement 10+10+5+5 = 30. Total 80.">Finance head, 40-staff distributor (target industry). Pricing page, webinar, checklist, 3 email opens.</li>
              <li data-bucket="warm" data-why="Fit 15+15+10 = 40. Engagement 10+10 = 20. Total 60.">Accountant at a 15-staff trader (target industry). Pricing page and webinar.</li>
              <li data-bucket="warm" data-why="Fit 15+5+20 = 40. Engagement 10+5 = 15. Total 55.">Owner of a 5-staff shop (target industry). Pricing page and checklist.</li>
              <li data-bucket="cold" data-why="Fit 0+5+0 = 5. Engagement 5+5 = 10. Total 15.">Designer at a 3-person studio (not target industry). Checklist and 4 email opens.</li>
              <li data-bucket="cold" data-why="No company, so fit is 0. Webinar 10 + checklist 5 = 15. Also mark students as Exclude.">A student with no company. Joined a webinar and downloaded the checklist.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Describe your ideal customer and the actions you can track. The AI will draft a scoring model, formulas and a test on sample leads.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a sales operations assistant for [LedgerLite, accounting software for small businesses in India].
        Our ideal customer: [traders and distributors with 10 to 50 staff in tier-2 Indian cities; the buyer is the owner or finance head].
        Actions we can track: [demo request, pricing page visit, webinar, checklist download, email opens].

        1. Draft a lead scoring model with a fit score (max 50) and an engagement score (max 50). Show a points table.
        2. Suggest thresholds for Hot, Warm and Cold, and what sales should do with each.
        3. Give Google Sheets formulas for fit, engagement, total and grade. Say which column holds what.
        4. Score these sample leads. Show the points for each line, then the total:
        [A: owner, 45-staff textile trader, requested a demo, opened 4 emails
        B: accountant, 12-staff grocery wholesaler, visited pricing page, joined a webinar
        C: student, no company, downloaded the checklist]
        5. List 3 ways this model could be wrong, and how I can test it with last quarter's leads.

        Do not quote any conversion rates or industry benchmarks.</pre>
            <ul class="ai-try-checks">
              <li>Add up each lead's points yourself. AI often makes adding mistakes.</li>
              <li>The formulas point to the columns the AI described. Test them on 2 rows.</li>
              <li>The student is Cold or marked Exclude.</li>
              <li>No conversion rates or benchmarks are given as facts.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A lead score is a guess about who will buy, written as numbers. Keep it simple, score fit and engagement separately, and check it against real sales results every quarter.
        </div>
      HTML
      starter_code: nil
    },
    11 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-sales">Sales & CRM</div>
          <h1 class="lc-title">Qualifying Leads with Frameworks</h1>
        </div>
        <p class="lc-lead">A high lead score tells you who to call first. It does not tell you if the lead can really buy. <strong>Qualifying</strong> means finding out, in a real conversation, if a lead can buy. Do they have a problem you can solve? Can they pay? Can they decide? Do they have a reason to act soon? In this lesson, you will learn the BANT framework and two others. You will ask better discovery questions. You will also use AI to turn messy call notes into a clear qualification note. You will also see the mistakes AI makes with these notes, and how to catch them.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 250" role="img" aria-label="A discovery call feeds a BANT check with four boxes: Budget, Authority, Need and Timeline. The result is one of three outcomes: qualified and passed to sales as an SQL, not yet and put in nurture, or a poor fit and closed politely.">
            <defs><marker id="lg11a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="10" y="90" width="130" height="80" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="75" y="124" font-weight="700">Discovery call</text>
              <text x="75" y="144" font-size="11" fill="#9b99b8">Kavya + prospect</text>
              <rect x="165" y="12" width="340" height="218" rx="12" fill="#1f1f44" stroke="#4b4a78"/>
              <text x="335" y="33" font-weight="700" fill="#fcd34d">BANT check</text>
              <rect x="180" y="44" width="150" height="62" rx="8" fill="#27274e" stroke="#f59e0b"/>
              <text x="255" y="70" font-weight="700">Budget</text>
              <text x="255" y="90" font-size="11" fill="#9b99b8">Can they pay?</text>
              <rect x="340" y="44" width="150" height="62" rx="8" fill="#27274e" stroke="#3b82f6"/>
              <text x="415" y="70" font-weight="700">Authority</text>
              <text x="415" y="90" font-size="11" fill="#9b99b8">Who signs off?</text>
              <rect x="180" y="150" width="150" height="62" rx="8" fill="#27274e" stroke="#ec4899"/>
              <text x="255" y="176" font-weight="700">Need</text>
              <text x="255" y="196" font-size="11" fill="#9b99b8">What problem?</text>
              <rect x="340" y="150" width="150" height="62" rx="8" fill="#27274e" stroke="#22d3ee"/>
              <text x="415" y="176" font-weight="700">Timeline</text>
              <text x="415" y="196" font-size="11" fill="#9b99b8">When to start?</text>
              <text x="335" y="132" font-size="11" fill="#9b99b8">write "Unknown" if not asked</text>
              <rect x="560" y="22" width="190" height="60" rx="10" fill="#27274e" stroke="#10b981"/>
              <text x="655" y="47" font-weight="700" fill="#6ee7b7">Qualified</text>
              <text x="655" y="67" font-size="11" fill="#9b99b8">SQL: book a demo</text>
              <rect x="560" y="98" width="190" height="60" rx="10" fill="#27274e" stroke="#f59e0b"/>
              <text x="655" y="123" font-weight="700" fill="#fcd34d">Not yet</text>
              <text x="655" y="143" font-size="11" fill="#9b99b8">nurture, follow up later</text>
              <rect x="560" y="174" width="190" height="60" rx="10" fill="#27274e" stroke="#ec4899"/>
              <text x="655" y="199" font-weight="700" fill="#f9a8d4">Poor fit</text>
              <text x="655" y="219" font-size="11" fill="#9b99b8">close politely</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#lg11a)">
                <line x1="141" y1="130" x2="161" y2="130"/>
                <line x1="506" y1="110" x2="556" y2="56"/>
                <line x1="506" y1="125" x2="556" y2="127"/>
                <line x1="506" y1="140" x2="556" y2="200"/>
              </g>
            </g>
          </svg>
          <figcaption>A framework is a checklist for the call. The answers decide the next step, not the lead score alone.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>BANT and two other frameworks</h3>
          <p>A <strong>qualification framework</strong> is a short list of things you must learn before you spend more sales time on a lead. <strong>BANT</strong> is one of the oldest and simplest. Here it is for <em>LedgerLite</em>, a made-up Karnataka accounting software startup. Its sales rep Kavya sells to small businesses.</p>
          <table class="lc-table">
            <thead><tr><th>Letter</th><th>What you need to learn</th><th>Good sign for LedgerLite</th></tr></thead>
            <tbody>
              <tr><td><strong>B</strong>udget</td><td>Can they pay for a solution like yours?</td><td>They already pay for software or an outside bookkeeper</td></tr>
              <tr><td><strong>A</strong>uthority</td><td>Who makes the final decision, and who else has a say?</td><td>You know the owner signs, and the accounts head supports it</td></tr>
              <tr><td><strong>N</strong>eed</td><td>What problem do they have, and how much does it hurt?</td><td>GST work takes days each month, and mistakes cost money</td></tr>
              <tr><td><strong>T</strong>imeline</td><td>When do they want the problem solved, and why then?</td><td>They want to switch before the new financial year in April</td></tr>
            </tbody>
          </table>
          <p>Two other frameworks you may hear about:</p>
          <ul class="lc-list">
            <li><strong>CHAMP</strong> (Challenges, Authority, Money, Prioritisation) puts the problem first. It suits small businesses that do not have a fixed budget yet.</li>
            <li><strong>MEDDIC</strong> (Metrics, Economic buyer, Decision criteria, Decision process, Identify pain, Champion) suits large deals with many people involved. A <em>champion</em> is a person inside the company who wants you to win.</li>
          </ul>
          <p>Pick one framework for your team and use it every time. Then everyone's notes look the same. Your CRM (customer relationship management system, such as Zoho CRM or HubSpot) can store each part in its own field.</p>
        </div>
        <div class="lc-card">
          <h3>Ask discovery questions, not a checklist</h3>
          <p>A <strong>discovery call</strong> is a first real conversation to understand the buyer's situation. Do not read the four BANT letters like a form. Start with the problem. Budget and authority questions feel natural once the buyer has explained the pain.</p>
          <table class="lc-table">
            <thead><tr><th>Weak question</th><th>Better question</th><th>Why it is better</th></tr></thead>
            <tbody>
              <tr><td>"What is your budget?"</td><td>"What do you spend now on accounts work, including your CA's fees and staff time?"</td><td>Most small owners have no budget line. They do know their current costs.</td></tr>
              <tr><td>"Are you the decision maker?"</td><td>"Apart from you, who will want a say before you change software?"</td><td>It is polite, and it finds the CA or partner who can block the deal.</td></tr>
              <tr><td>"Do you need accounting software?"</td><td>"Walk me through your month-end. Which part takes the longest?"</td><td>An open question gets real details, not a yes or no.</td></tr>
              <tr><td>"When do you want to buy?"</td><td>"What happens if nothing changes for the next six months?"</td><td>It shows if the timeline is real or just a wish.</td></tr>
            </tbody>
          </table>
          <p>AI is good at drafting question lists for a type of buyer. Ask it for open questions for a textile trader, a food brand or a clinic. Then cut the list to five or six. A person, not the AI, runs the call and listens.</p>
        </div>
        <div class="lc-card">
          <h3>Turn call notes into a qualification note with AI</h3>
          <p>Kavya had a call with <em>Tulsi Textiles, Gujarat</em> (a made-up prospect). Her rough notes:</p>
          <pre><code>Tulsi Textiles call. Spoke to Meena Shah (Finance Head).
        45 staff, 2 godowns. Accounts in old desktop software + Excel.
        GST reconciliation takes ~3 days every month. CA files returns.
        Owner signs any purchase above Rs 50,000.
        Want to switch before April (new financial year).
        Asked price for 5 users. No budget figure given.</code></pre>
          <p><strong>Weak prompt:</strong> "Summarise this call." The AI will write a nice paragraph. It will not show what is missing.</p>
          <p><strong>Better prompt:</strong></p>
          <pre><code>You are a sales assistant. Turn my call notes into a BANT
        qualification note. For each of Budget, Authority, Need and
        Timeline, write: what we know, the exact words from my notes
        that support it, and "Unknown" if the notes do not say.
        Do not guess or add facts. Then suggest a status
        (Qualified, Nurture or Disqualify) with one reason,
        and 3 questions for the next call.
        Notes: [paste notes]</code></pre>
          <p>Suppose the AI writes <em>"Budget: ₹50,000 approved."</em> That is wrong. ₹50,000 is the owner's sign-off limit, not a budget. The real budget is <strong>Unknown</strong>. Kavya must fix the note before saving it to the CRM. This is the most common AI mistake here: turning a number from the notes into the wrong fact.</p>
          <p><strong>You still check and decide:</strong> every field against your notes, the final status, and the next step. Use only an AI tool your company allows for customer data. Leave out personal phone numbers and email addresses. The AI does not need them to write the note.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: which BANT letter?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Each line is something a prospect said on a call with LedgerLite. Sort it into the BANT part it tells you about.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="b" data-label="Budget"></div>
              <div data-sorter-target="bucket" data-bucket="a" data-label="Authority"></div>
              <div data-sorter-target="bucket" data-bucket="n" data-label="Need"></div>
              <div data-sorter-target="bucket" data-bucket="t" data-label="Timeline"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="b" data-why="Their current spend on bookkeeping shows what they can afford.">"We pay a part-time bookkeeper about ₹15,000 a month."</li>
              <li data-bucket="a" data-why="This tells you who else must agree before a purchase.">"My brother and I are partners. We both sign on any new software."</li>
              <li data-bucket="n" data-why="This is the pain: slow, manual work every month.">"GST matching takes our accountant three full days every month."</li>
              <li data-bucket="t" data-why="A date and a reason make the timeline real.">"We want the new system running before our audit in March."</li>
              <li data-bucket="a" data-why="The CA can block or support the change. Find out early.">"Our CA will have to approve whatever we choose."</li>
              <li data-bucket="n" data-why="Missed input tax credit is a real cost. It shows how much the problem hurts.">"Last year we missed some input tax credit because bills were lost."</li>
              <li data-bucket="t" data-why="No urgency yet. This lead may belong in nurture for now.">"Maybe next year, once the new branch is settled."</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Paste your own call notes (without personal contact details), or leave the sample notes. The AI will draft a BANT note that shows the gaps.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a careful sales assistant for [LedgerLite, accounting software for small Indian businesses]. Turn my discovery call notes into a qualification note.

        Call notes:
        [Tulsi Textiles, Gujarat. Spoke to Meena Shah, Finance Head. 45 staff, 2 godowns. Accounts in old desktop software and Excel. GST reconciliation takes about 3 days a month. CA files returns. Owner signs any purchase above Rs 50,000. Wants to switch before April. Asked price for 5 users. No budget figure given.]

        Please give me:
        1. A table with rows Budget, Authority, Need, Timeline and columns: What we know | Words from my notes that show it | Still unknown.
        2. A suggested status (Qualified, Nurture or Disqualify) with one sentence explaining why.
        3. Five open discovery questions for the next call, aimed at the unknowns.
        4. A 3-line summary I can paste into the CRM.

        Rules: use only facts in my notes. Write "Unknown" instead of guessing. Do not treat a sign-off limit or a price question as a budget.</pre>
            <ul class="ai-try-checks">
              <li>Every fact in the table appears in your notes</li>
              <li>Budget says "Unknown" if no budget was given</li>
              <li>The status reason matches the evidence</li>
              <li>The questions are open and target the gaps</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A good qualification note shows what you do not know yet. "Unknown" is a useful answer. It tells you what to ask next. A guess that looks like a fact can waste weeks of sales time.
        </div>
      HTML
      starter_code: nil
    },
    12 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-sales">Sales & CRM</div>
          <h1 class="lc-title">Handing Leads to Sales</h1>
        </div>
        <p class="lc-lead">Many good leads are lost between marketing and sales. Marketing sends a lead, but sales calls too late, or does not know why the lead matters. In this lesson, you will learn how a clean <strong>handover</strong> works: agreed definitions, a service level agreement, a handover note and a feedback loop. You will also use AI to write handover notes and to find patterns in rejected leads.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 270" role="img" aria-label="Marketing creates an MQL, writes a handover note and passes it to sales review within one working day. Sales accepts the lead and qualifies it, or rejects it with a reason code. Reason codes go back to marketing to improve targeting.">
            <defs><marker id="lg12a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="10" y="80" width="120" height="70" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="70" y="111" font-weight="700">Marketing</text>
              <text x="70" y="131" font-size="11" fill="#9b99b8">finds and scores</text>
              <rect x="160" y="80" width="120" height="70" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="220" y="111" font-weight="700">MQL</text>
              <text x="220" y="131" font-size="11" fill="#9b99b8">score passed</text>
              <rect x="310" y="80" width="140" height="70" rx="10" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="380" y="111" font-weight="700">Handover note</text>
              <text x="380" y="131" font-size="11" fill="#9b99b8">why + what we know</text>
              <rect x="480" y="80" width="120" height="70" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="540" y="111" font-weight="700">Sales review</text>
              <text x="540" y="131" font-size="11" fill="#9b99b8">in 1 working day</text>
              <rect x="630" y="22" width="120" height="66" rx="10" fill="#27274e" stroke="#10b981"/>
              <text x="690" y="50" font-weight="700" fill="#6ee7b7">Accept</text>
              <text x="690" y="70" font-size="11" fill="#9b99b8">call, then SQL</text>
              <rect x="630" y="142" width="120" height="66" rx="10" fill="#27274e" stroke="#ec4899"/>
              <text x="690" y="170" font-weight="700" fill="#f9a8d4">Reject</text>
              <text x="690" y="190" font-size="11" fill="#9b99b8">with reason code</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#lg12a)">
                <line x1="131" y1="115" x2="156" y2="115"/>
                <line x1="281" y1="115" x2="306" y2="115"/>
                <line x1="451" y1="115" x2="476" y2="115"/>
                <line x1="601" y1="105" x2="626" y2="62"/>
                <line x1="601" y1="125" x2="626" y2="168"/>
                <path d="M690,210 L690,240 L70,240 L70,154"/>
              </g>
              <text x="380" y="258" font-size="12" fill="#9b99b8">Feedback: reason codes show marketing which leads to stop sending</text>
            </g>
          </svg>
          <figcaption>A handover is a loop, not a one-way throw. Rejected leads teach marketing what "good" means.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Agree the words and the service levels</h3>
          <p>Here are the stages most teams use. Write your own definitions down and share them.</p>
          <ul class="lc-list">
            <li><strong>MQL</strong> (marketing qualified lead): a lead that fits your customer profile and has shown enough interest, usually by passing a lead score.</li>
            <li><strong>SAL</strong> (sales accepted lead): an MQL that a salesperson has reviewed and agreed to work on.</li>
            <li><strong>SQL</strong> (sales qualified lead): a lead that sales has spoken to and qualified, for example with BANT.</li>
          </ul>
          <p>An <strong>SLA</strong> (service level agreement) is a written promise between the two teams. Here is a sample for <em>Nimbus Logistics</em>, a made-up Maharashtra company that sells delivery contracts to online stores. Rohit is the sales manager.</p>
          <table class="lc-table">
            <thead><tr><th>Who</th><th>Promise (sample)</th></tr></thead>
            <tbody>
              <tr><td>Marketing</td><td>Sends only leads that meet the MQL definition, with a complete handover note.</td></tr>
              <tr><td>Sales</td><td>Makes first contact within 1 working day. Demo requests get a call the same day.</td></tr>
              <tr><td>Sales</td><td>Accepts or rejects each MQL within 2 working days. Every rejection gets a reason code.</td></tr>
              <tr><td>Both</td><td>Meet once a month to review numbers and change the definition if needed.</td></tr>
            </tbody>
          </table>
          <p>These times are examples. Choose times your team can really keep. Your CRM can usually show how long each lead waited for first contact.</p>
        </div>
        <div class="lc-card">
          <h3>A handover note template</h3>
          <p>A salesperson should understand a lead in under a minute. Use the same template every time:</p>
          <pre><code>HANDOVER NOTE
        Lead: [company], [city]      Contact role: [e.g. operations head]
        Source: [e.g. webinar sign-up, 12 Sep]  Consent: [what they agreed to]
        Why MQL: [score + the 2-3 signals that raised it]
        What they asked for: [their words, if any]
        Known facts (checked): [size, current setup, pain]
        Unknown: [budget? decision maker? timeline?]
        Suggested next step: [call / demo / send case study]
        SLA: first contact by [date and time]</code></pre>
          <p>AI can fill this template from a CRM record and the lead's form answers. Tell it: "Use only the data I give you. Write Unknown for anything missing." Then check two things before you send it. Is every fact right? Does the consent line match what the person really agreed to?</p>
        </div>
        <div class="lc-card">
          <h3>Close the loop with feedback</h3>
          <p>Rohit's team reviewed September (sample numbers). Marketing sent <strong>80 MQLs</strong>. Sales accepted <strong>56</strong> and rejected <strong>24</strong>.</p>
          <table class="lc-table">
            <thead><tr><th>Reason code</th><th>Rejected</th><th>Fix for next month</th></tr></thead>
            <tbody>
              <tr><td>Too small (fewer than 500 orders a month)</td><td>10</td><td>Add "orders per month" to the sign-up form</td></tr>
              <tr><td>Not a buyer (student or job seeker)</td><td>8</td><td>Stop giving score points for downloads alone</td></tr>
              <tr><td>Duplicate or already a customer</td><td>6</td><td>Check the CRM before creating a new lead</td></tr>
              <tr><td><strong>Total</strong></td><td><strong>24</strong></td><td></td></tr>
            </tbody>
          </table>
          <p>Acceptance rate = accepted ÷ sent = 56 ÷ 80 = <strong>70%</strong>. Later, 21 of the 56 accepted leads became SQLs. That is 21 ÷ 56 = <strong>37.5%</strong>.</p>
          <p>Sales reps often write reasons as free text, such as "tiny shop, about 100 orders a month". AI can group these notes into reason codes. Ask it to show the count for each code and two example notes. Then check a sample by hand, because AI can put a note in the wrong group.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: put the handover in order</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">A new lead from an online store reaches the MQL score at Nimbus Logistics. Put the handover steps in order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">The lead's score passes the agreed MQL threshold.</li>
              <li data-order="2">Marketing checks the CRM for duplicates and existing customers.</li>
              <li data-order="3">Marketing drafts the handover note with AI and checks every fact.</li>
              <li data-order="4">The lead is assigned to a sales rep, and the SLA clock starts.</li>
              <li data-order="5">The rep reviews the lead and makes first contact within 1 working day.</li>
              <li data-order="6">The rep accepts the lead, or rejects it with a reason code.</li>
              <li data-order="7">Both teams review the month's reason codes and adjust the MQL definition.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to write a handover note and a simple SLA from one lead record. Change the [brackets] or keep the sample.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You help the marketing team at [Nimbus Logistics, a Maharashtra company that sells delivery contracts to online stores] hand leads to sales.

        Lead record (sample, no personal contact details):
        [Company: a home decor online store in Maharashtra. Contact role: operations head. Source: webinar on faster deliveries, 12 Sep. Consent: agreed to be contacted about delivery services. Score: 72 (Nimbus's own MQL threshold is 60). Signals: visited pricing page twice, downloaded a courier cost calculator. Form answer: about 120 orders a day, mostly Maharashtra. Budget and current courier: not given.]

        Please write:
        1. A handover note with these lines: Lead, Source, Consent, Why MQL, What they asked for, Known facts, Unknown, Suggested next step, First contact due.
        2. Three questions the sales rep should ask on the first call.
        3. A 5-point sample SLA between marketing and sales, in simple English.

        Use only the data above. Write "Unknown" for anything missing. Do not invent the company name or numbers.</pre>
            <ul class="ai-try-checks">
              <li>Every fact in the note appears in the lead record</li>
              <li>The consent line matches what the lead agreed to</li>
              <li>Budget and current courier are marked Unknown</li>
              <li>The SLA includes a first-contact time and reason codes for rejections</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> The handover works when both teams agree on three things: what a good lead is, how fast sales responds, and why a lead was rejected. Reason codes turn complaints into fixes.
        </div>
      HTML
      starter_code: nil
    },
    13 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-sales">Sales & CRM</div>
          <h1 class="lc-title">Measuring Lead Generation</h1>
        </div>
        <p class="lc-lead">You cannot improve what you do not measure. In this lesson, you will calculate the numbers that show if your lead generation works. These include conversion rate by stage, cost per lead, lead-to-customer rate, CAC, win rate and more. You will build a source report in a spreadsheet. You will also use AI to explain the numbers. And you will see why you must check every number the AI gives you.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 270" role="img" aria-label="A funnel for LedgerLite for last quarter with sample numbers: 400 leads, 120 MQLs (30 percent of leads), 48 SQLs (40 percent of MQLs) and 12 customers (25 percent of SQLs). A side panel shows spend of 2,40,000 rupees, cost per lead of 600 rupees, lead to customer rate of 3 percent and cost per customer of 20,000 rupees.">
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="50" y="20" width="440" height="40" rx="8" fill="#27274e" stroke="#8b5cf6"/>
              <text x="270" y="45" font-weight="700">Leads: 400</text>
              <text x="270" y="78" font-size="11" fill="#9b99b8">30.0% of leads become MQLs</text>
              <rect x="105" y="86" width="330" height="40" rx="8" fill="#27274e" stroke="#3b82f6"/>
              <text x="270" y="111" font-weight="700">MQLs: 120</text>
              <text x="270" y="144" font-size="11" fill="#9b99b8">40.0% of MQLs become SQLs</text>
              <rect x="160" y="152" width="220" height="40" rx="8" fill="#27274e" stroke="#f59e0b"/>
              <text x="270" y="177" font-weight="700">SQLs: 48</text>
              <text x="270" y="210" font-size="11" fill="#9b99b8">25.0% of SQLs become customers</text>
              <rect x="205" y="218" width="130" height="40" rx="8" fill="#27274e" stroke="#10b981"/>
              <text x="270" y="243" font-weight="700" fill="#6ee7b7">Customers: 12</text>
              <rect x="530" y="20" width="220" height="238" rx="12" fill="#1f1f44" stroke="#4b4a78"/>
              <text x="640" y="46" font-weight="700" fill="#fcd34d">Last quarter</text>
              <text x="640" y="64" font-size="11" fill="#9b99b8">sample numbers</text>
              <text x="640" y="98" font-size="12" fill="#9b99b8">Spend</text>
              <text x="640" y="118" font-weight="700">₹2,40,000</text>
              <text x="640" y="148" font-size="12" fill="#9b99b8">Cost per lead</text>
              <text x="640" y="168" font-weight="700">₹600</text>
              <text x="640" y="198" font-size="12" fill="#9b99b8">Lead to customer</text>
              <text x="640" y="218" font-weight="700">3.0% (12 of 400)</text>
              <text x="640" y="244" font-size="11" fill="#9b99b8">₹20,000 per customer</text>
            </g>
          </svg>
          <figcaption>Each stage has its own conversion rate. The side panel turns the funnel into cost.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The key numbers, defined</h3>
          <p>Here are LedgerLite's made-up numbers for last quarter. LedgerLite is a made-up Karnataka accounting software startup. Every example uses these numbers.</p>
          <table class="lc-table">
            <thead><tr><th>Metric</th><th>How to calculate it</th><th>LedgerLite example</th></tr></thead>
            <tbody>
              <tr><td><strong>Stage conversion rate</strong></td><td>Leads that reached the next stage ÷ leads at this stage</td><td>MQL to SQL: 48 ÷ 120 = 40.0%</td></tr>
              <tr><td><strong>Cost per lead (CPL)</strong></td><td>Marketing spend ÷ number of leads</td><td>₹2,40,000 ÷ 400 = ₹600</td></tr>
              <tr><td><strong>Lead-to-customer rate</strong></td><td>New customers ÷ leads</td><td>12 ÷ 400 = 3.0%</td></tr>
              <tr><td><strong>Cost per customer</strong> (campaigns only)</td><td>Marketing spend ÷ new customers</td><td>₹2,40,000 ÷ 12 = ₹20,000</td></tr>
              <tr><td><strong>CAC</strong> (customer acquisition cost)</td><td>All sales and marketing costs, including salaries and tools ÷ new customers</td><td>₹4,80,000 ÷ 12 = ₹40,000</td></tr>
              <tr><td><strong>Win rate</strong></td><td>Deals won ÷ (deals won + deals lost). Open deals are left out.</td><td>12 ÷ (12 + 18) = 40.0%</td></tr>
              <tr><td><strong>Average deal size</strong></td><td>Revenue from won deals ÷ number of won deals</td><td>₹2,88,000 ÷ 12 = ₹24,000</td></tr>
              <tr><td><strong>Sales cycle length</strong></td><td>Average days from SQL to won deal</td><td>Five sample won deals: (18 + 25 + 32 + 35 + 40) ÷ 5 = 30 days</td></tr>
              <tr><td><strong>Pipeline coverage</strong></td><td>Value of open deals ÷ sales target for the period</td><td>₹12,00,000 ÷ ₹4,00,000 = 3.0x</td></tr>
            </tbody>
          </table>
          <p>Notice two traps. First, <strong>win rate is not the same as SQL-to-customer rate</strong>. 12 of 48 SQLs became customers (25.0%). But 18 SQLs are still open, and 18 were lost. So the win rate on closed deals is 40.0%. Second, <strong>CAC is bigger than campaign cost</strong>. It includes Kavya's salary share and the CRM fee.</p>
          <p>Use your own history to judge coverage. With a 40% win rate, you need open deals worth at least 1 ÷ 0.4 = 2.5 times your target. Do not copy "industry benchmarks" from AI. It often invents them.</p>
        </div>
        <div class="lc-card">
          <h3>Build a source report in a spreadsheet</h3>
          <p>A <strong>source report</strong> shows the numbers for each place your leads come from. Put the raw counts in columns A to F. Let formulas do the maths.</p>
          <table class="lc-table">
            <thead><tr><th>Source</th><th>Spend (B)</th><th>Leads (C)</th><th>MQLs (D)</th><th>SQLs (E)</th><th>Customers (F)</th><th>CPL</th><th>Lead to customer</th><th>Cost per customer</th></tr></thead>
            <tbody>
              <tr><td>Website content</td><td>₹40,000</td><td>180</td><td>50</td><td>18</td><td>4</td><td>₹222</td><td>2.2%</td><td>₹10,000</td></tr>
              <tr><td>LinkedIn ads</td><td>₹1,00,000</td><td>120</td><td>30</td><td>10</td><td>2</td><td>₹833</td><td>1.7%</td><td>₹50,000</td></tr>
              <tr><td>CA partner referrals</td><td>₹20,000</td><td>40</td><td>28</td><td>16</td><td>5</td><td>₹500</td><td>12.5%</td><td>₹4,000</td></tr>
              <tr><td>Trade events</td><td>₹80,000</td><td>60</td><td>12</td><td>4</td><td>1</td><td>₹1,333</td><td>1.7%</td><td>₹80,000</td></tr>
              <tr><td><strong>Total</strong></td><td><strong>₹2,40,000</strong></td><td><strong>400</strong></td><td><strong>120</strong></td><td><strong>48</strong></td><td><strong>12</strong></td><td><strong>₹600</strong></td><td><strong>3.0%</strong></td><td><strong>₹20,000</strong></td></tr>
            </tbody>
          </table>
          <p>The formulas for row 2 (copy them down to each source row):</p>
          <pre><code>CPL:               =B2/C2
        Lead to customer:  =F2/C2          (format as %)
        Cost per customer: =IFERROR(B2/F2,"No customers yet")
        MQL to SQL rate:   =IFERROR(E2/D2,0)
        Total spend:       =SUM(B2:B5)</code></pre>
          <p>Look at what the table says. LinkedIn ads brought 120 leads, but each customer cost ₹50,000. CA partner referrals brought only 40 leads, but 5 became customers at ₹4,000 each. The cheapest leads are not always the cheapest customers.</p>
          <p>Two cautions. <strong>Time lag:</strong> leads from late September may buy in October, so recent numbers look worse. <strong>Credit:</strong> decide which source gets credit for a customer, for example the first source that brought them. Use the same rule every month.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: check the AI's analysis</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Kavya asks">"Here is our source table for last quarter. Which source works best? Show cost per customer for each source."</li>
              <li data-kind="answer" data-label="AI replies">"LinkedIn ads work well because they brought 120 leads. Cost per customer: website ₹10,000, LinkedIn ₹5,000, referrals ₹4,000, events ₹80,000."</li>
              <li data-kind="tool" data-label="Spreadsheet">Kavya types =100000/2 in a spare cell to check the LinkedIn number.</li>
              <li data-kind="result" data-label="Result">The sheet shows 50,000. The AI's ₹5,000 is wrong by a factor of 10.</li>
              <li data-kind="warn" data-label="Wrong reasoning">Lead volume is not the same as results. LinkedIn has the second-highest cost per customer, after trade events.</li>
              <li data-kind="thought" data-label="Kavya thinks">Referrals are cheapest per customer (₹4,000) and convert best (12.5%). But 40 leads is a small number. Can she get more CA partners?</li>
              <li data-kind="check" data-label="Before sharing">She corrects the report, adds the formulas, and notes that September leads may still convert.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to calculate and explain a source report. Then check at least two numbers yourself in a spreadsheet.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a sales analyst. Explain in simple English for a small business team.

        Our lead sources for [last quarter] (sample numbers):
        [Website content: spend 40000, leads 180, MQLs 50, SQLs 18, customers 4
        LinkedIn ads: spend 100000, leads 120, MQLs 30, SQLs 10, customers 2
        Partner referrals: spend 20000, leads 40, MQLs 28, SQLs 16, customers 5
        Trade events: spend 80000, leads 60, MQLs 12, SQLs 4, customers 1]
        Currency: [Indian rupees].

        Please:
        1. Make a table with, for each source and the total: cost per lead, lead-to-MQL rate, MQL-to-SQL rate, lead-to-customer rate and cost per customer. Round money to whole rupees and rates to one decimal place.
        2. Show the calculation for each number (for example 100000 / 2 = 50000).
        3. Give the spreadsheet formula for each metric, assuming spend is in column B and leads, MQLs, SQLs and customers are in columns C to F.
        4. Write 3 findings and 2 questions we should answer before moving budget.

        Do not quote industry benchmarks. Say if the numbers are too small to be sure.</pre>
            <ul class="ai-try-checks">
              <li>Recalculate two numbers in a spreadsheet (for example LinkedIn cost per customer is 50,000)</li>
              <li>The totals row uses total spend ÷ total leads, not an average of the rates</li>
              <li>Findings talk about cost per customer, not just lead volume</li>
              <li>No made-up industry benchmarks appear</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Measure all the way to customers, not just leads. The source with the most leads is often not the source with the best customers. Let the spreadsheet do the maths, and use AI to explain it.
        </div>
      HTML
      starter_code: nil
    },
    14 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-sales">Sales & CRM</div>
          <h1 class="lc-title">Data, Consent and Honest Outreach</h1>
        </div>
        <p class="lc-lead">Lead generation uses personal data: names, phone numbers, email addresses and notes about people. Laws and platform rules control how you collect and use it. In this lesson, you will learn the main rules in India: the DPDP Act and TRAI's rules for calls and SMS. You will also learn LinkedIn's rules and the basics of GDPR and CAN-SPAM. You will also learn what never to paste into an AI tool, and how to write outreach that is honest. This is general education, <strong>not legal advice</strong>. For real decisions, talk to a qualified lawyer.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 245" role="img" aria-label="Four checks before you contact a lead: is the source clean, do you have consent or a clear basis, have you checked DND and opt-outs, and is the message honest with an opt-out. If all are yes, send. A no at any step means stop, fix it, or ask a qualified lawyer.">
            <defs><marker id="lg14a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="5" y="40" width="135" height="70" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="72" y="69" font-weight="700" font-size="12.5">1. Clean source?</text>
              <text x="72" y="89" font-size="11" fill="#9b99b8">not bought or scraped</text>
              <rect x="169" y="40" width="135" height="70" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="236" y="69" font-weight="700" font-size="12.5">2. Consent?</text>
              <text x="236" y="89" font-size="11" fill="#9b99b8">or a clear basis</text>
              <rect x="333" y="40" width="135" height="70" rx="10" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="400" y="69" font-weight="700" font-size="12.5">3. DND checked?</text>
              <text x="400" y="89" font-size="11" fill="#9b99b8">no opt-out on file</text>
              <rect x="497" y="40" width="135" height="70" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="564" y="69" font-weight="700" font-size="12.5">4. Honest?</text>
              <text x="564" y="89" font-size="11" fill="#9b99b8">true facts, opt-out</text>
              <rect x="661" y="40" width="94" height="70" rx="10" fill="#27274e" stroke="#10b981"/>
              <text x="708" y="80" font-weight="700" fill="#6ee7b7">Send</text>
              <g font-size="11" fill="#6ee7b7">
                <text x="154" y="32">yes</text><text x="318" y="32">yes</text><text x="482" y="32">yes</text><text x="646" y="32">yes</text>
              </g>
              <g font-size="11" fill="#f9a8d4" text-anchor="start">
                <text x="78" y="142">no</text><text x="242" y="142">no</text><text x="406" y="142">no</text><text x="570" y="142">no</text>
              </g>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#lg14a)">
                <line x1="141" y1="75" x2="166" y2="75"/>
                <line x1="305" y1="75" x2="330" y2="75"/>
                <line x1="469" y1="75" x2="494" y2="75"/>
                <line x1="633" y1="75" x2="658" y2="75"/>
                <line x1="72" y1="112" x2="72" y2="164"/>
                <line x1="236" y1="112" x2="236" y2="164"/>
                <line x1="400" y1="112" x2="400" y2="164"/>
                <line x1="564" y1="112" x2="564" y2="164"/>
              </g>
              <rect x="5" y="168" width="627" height="44" rx="10" fill="#27274e" stroke="#ec4899"/>
              <text x="318" y="195" fill="#f9a8d4">No at any step: stop, fix it, or ask a qualified lawyer</text>
              <text x="380" y="235" font-size="11" fill="#9b99b8">General education only, not legal advice. Rules change, so check the official sources.</text>
            </g>
          </svg>
          <figcaption>Four questions before every call, SMS, email or message. One "no" is enough to stop.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>India: the DPDP Act and Rules</h3>
          <p>The <strong>Digital Personal Data Protection Act, 2023</strong> (DPDP Act) is India's main data protection law. The government notified the <strong>DPDP Rules, 2025</strong> in November 2025. Some parts started at once, such as the Data Protection Board. The rules then start in phases over 18 months. Most duties for businesses, such as consent and notice, apply from around May 2027. Check the current dates on the official MeitY website, because timelines can change.</p>
          <p>Two terms: the <strong>Data Principal</strong> is the person the data is about. The <strong>Data Fiduciary</strong> is the business that decides why and how the data is used. When LedgerLite collects leads, LedgerLite is the Data Fiduciary.</p>
          <p>In general, the law expects you to:</p>
          <ul class="lc-list">
            <li><strong>Get clear consent.</strong> Consent must be free, specific, informed, unconditional and unambiguous. It must be given by a clear action, such as ticking an empty box. A pre-ticked box is not clear consent.</li>
            <li><strong>Give a clear notice.</strong> Tell people, in simple words, what data you collect and why.</li>
            <li><strong>Use data only for that purpose.</strong> A webinar sign-up for "GST tips" is not permission for sales calls about something else.</li>
            <li><strong>Make it easy to withdraw.</strong> Withdrawing consent should be as easy as giving it. Then stop using the data.</li>
            <li><strong>Delete data you no longer need</strong>, unless another law says you must keep it.</li>
            <li><strong>Keep data safe</strong>, and report data breaches as the rules require.</li>
          </ul>
          <p>The Act allows very large penalties for serious failures. Your lead sheet needs a <strong>source</strong> and a <strong>consent note</strong> for every row.</p>
        </div>
        <div class="lc-card">
          <h3>India: calls, SMS and do-not-disturb</h3>
          <p>TRAI (Telecom Regulatory Authority of India) controls promotional calls and SMS through its commercial communication rules, known as <strong>TCCCPR</strong>. TRAI made these rules stricter in 2025. In general:</p>
          <ul class="lc-list">
            <li>People can block promotional calls and SMS by registering on the <strong>National Customer Preference Register</strong>, often called DND (do not disturb). They can do this through their telecom operator, by calling or texting 1909, or with TRAI's DND app.</li>
            <li>A business that sends promotional SMS or calls must register with the telecom operators. It must also register its sender names and message templates.</li>
            <li>Promotional calls must come from the special 140 number series. Service and transactional calls from banks, insurers and similar regulated firms use the 1600 series. Using ordinary 10-digit mobile numbers for bulk promotion is not allowed. Operators can disconnect and blacklist such numbers.</li>
            <li>Promotional messages must give an easy way to opt out. Honour every opt-out.</li>
          </ul>
          <p>If someone has given you clear, recorded consent, the rules may let you contact them even on DND. Ask your telecom operator or SMS provider how consent is recorded. For WhatsApp, the WhatsApp Business Messaging Policy also requires the person's opt-in before you message them, and you must honour every request to stop. Check TRAI's website (trai.gov.in) and your provider's current rules.</p>
        </div>
        <div class="lc-card">
          <h3>LinkedIn, email rules abroad, and honest messages</h3>
          <table class="lc-table">
            <thead><tr><th>Rule</th><th>What it means for you (general)</th></tr></thead>
            <tbody>
              <tr><td><strong>LinkedIn User Agreement</strong></td><td>No scraping (copying profile data with tools). No bots or browser extensions that send connection requests or messages for you. No fake profiles. Research and message people yourself.</td></tr>
              <tr><td><strong>GDPR</strong> (EU and UK)</td><td>You need a lawful reason to use personal data. People can object to direct marketing at any time, and you must stop.</td></tr>
              <tr><td><strong>CAN-SPAM</strong> (USA)</td><td>No false sender names or misleading subject lines. Include a postal address and a working opt-out. Honour opt-outs within 10 business days. It covers business-to-business email too.</td></tr>
            </tbody>
          </table>
          <p><strong>Honest outreach</strong> also means no tricks. Do not write "Re:" on a first email. Do not say "as we discussed" if you never spoke. Do not invent a referral, a shared contact or a fake deadline. Do not state facts about the prospect that you have not checked.</p>
          <p><strong>A real example of the risk:</strong> Arjun, LedgerLite's founder, gets an offer to buy "50,000 SME owner mobile numbers" for bulk SMS. That list fails the first check. Nobody on it agreed to hear from LedgerLite, and many numbers will be on DND.</p>
          <p><strong>What never to paste into a public AI tool:</strong></p>
          <ul class="lc-list">
            <li>Personal phone numbers, email addresses and home addresses of leads</li>
            <li>ID numbers such as PAN or Aadhaar, and bank or card details</li>
            <li>Full call recordings or transcripts with personal details</li>
            <li>Confidential deal terms, price lists or customer lists</li>
          </ul>
          <p>Instead, replace names with labels such as "Lead-07". Use only AI tools your company has approved, and check their data settings.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: OK, not OK, or check first?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each action by LedgerLite's sales team.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="ok" data-label="OK"></div>
              <div data-sorter-target="bucket" data-bucket="no" data-label="Not OK"></div>
              <div data-sorter-target="bucket" data-bucket="check" data-label="Check first"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="ok" data-why="The person ticked an empty box for product updates. That is clear consent for this purpose.">Emailing a webinar attendee who ticked "Send me product updates"</li>
              <li data-bucket="no" data-why="Nobody on a bought list agreed to hear from you. Many numbers will also be on DND.">Buying 10,000 business owners' mobile numbers from an online seller</li>
              <li data-bucket="no" data-why="LinkedIn's User Agreement bans bots and extensions that automate activity.">Using a browser extension that sends 200 LinkedIn requests a day for you</li>
              <li data-bucket="no" data-why="These are personal and ID details. Never paste them into a public AI tool.">Pasting 500 customers' names, phones and PAN numbers into a free AI chatbot</li>
              <li data-bucket="check" data-why="No consent note means you do not know the basis. Find out before you contact them.">Messaging a lead whose consent column in the sheet is empty</li>
              <li data-bucket="check" data-why="GDPR may apply, and the partner's consent may not cover you. Check the basis first.">Emailing contacts in Germany from a list a partner shared</li>
              <li data-bucket="ok" data-why="Honouring an opt-out quickly is exactly what the rules expect.">Removing a lead who replied "please stop" from all lists the same day</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to review an outreach plan and a message for consent and honesty problems. Use the sample or describe your own plan.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a careful reviewer of sales outreach in [India]. Give general education only, not legal advice.

        Our plan: [LedgerLite, a Karnataka accounting software startup, wants to contact small business owners. Lead sources: our GST webinar sign-ups (they ticked a box for product updates), CA partner referrals, and a list of 5,000 mobile numbers we can buy. Channels: email, SMS from a sales rep's personal number, and LinkedIn messages sent by an automation tool.]

        Draft message: [Subject: Re: our chat. Hi, as discussed, LedgerLite cuts GST work by 80%. Only 3 free trials left this week!]

        Please:
        1. Make a table: Issue | Why it is a problem (DPDP Act, TRAI DND rules, LinkedIn rules or honesty) | Safer alternative.
        2. Rewrite the message so it is honest, has no invented facts or fake urgency, and has a clear opt-out.
        3. List 3 questions we should ask a qualified lawyer.

        Describe rules in general terms. If you are not sure about a rule or date, say so and tell me to check the official source.</pre>
            <ul class="ai-try-checks">
              <li>It flags the bought list, the personal-number SMS and the LinkedIn automation</li>
              <li>It removes "Re:", "as discussed", the unproven 80% claim and the fake scarcity</li>
              <li>The rewrite has a clear opt-out</li>
              <li>It says this is not legal advice and does not invent exact penalties or dates</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> The legal way and the effective way are usually the same. People who agreed to hear from you read your messages. Bought lists, bots and tricks bring complaints, blocked numbers and banned accounts.
        </div>
      HTML
      starter_code: nil
    },
    15 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-sales">Sales & CRM</div>
          <h1 class="lc-title">Capstone: A Lead Generation Plan</h1>
        </div>
        <p class="lc-lead">In this capstone, you put the whole course together. You will build a complete lead generation plan for <em>LedgerLite</em>, the made-up Karnataka accounting software startup. Founder Arjun has asked sales rep Kavya for a plan for the next 30 days. The plan has six parts: an ideal customer profile, buyer personas, lead sources, a 20-row lead list, a scoring model and a 30-day action plan. AI drafts each part quickly. You check the facts, the maths and the rules, and you make the decisions.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 250" role="img" aria-label="Six parts of the plan: 1 ICP, 2 personas, 3 sources, 4 a lead list of 20 checked rows, 5 scoring with fit and engagement, and 6 a 30-day plan. An arrow from the plan goes back to the ICP: measure, then adjust.">
            <defs><marker id="lg15a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="20" y="30" width="200" height="70" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="120" y="60" font-weight="700">1. ICP</text>
              <text x="120" y="80" font-size="11" fill="#9b99b8">who fits: industry, size</text>
              <rect x="280" y="30" width="200" height="70" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="380" y="60" font-weight="700">2. Personas</text>
              <text x="380" y="80" font-size="11" fill="#9b99b8">who decides, pays, uses</text>
              <rect x="540" y="30" width="200" height="70" rx="10" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="640" y="60" font-weight="700">3. Sources</text>
              <text x="640" y="80" font-size="11" fill="#9b99b8">allowed channels only</text>
              <rect x="540" y="160" width="200" height="70" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="640" y="190" font-weight="700">4. Lead list</text>
              <text x="640" y="210" font-size="11" fill="#9b99b8">20 checked rows</text>
              <rect x="280" y="160" width="200" height="70" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="380" y="190" font-weight="700">5. Scoring</text>
              <text x="380" y="210" font-size="11" fill="#9b99b8">fit + engagement</text>
              <rect x="20" y="160" width="200" height="70" rx="10" fill="#27274e" stroke="#10b981"/>
              <text x="120" y="190" font-weight="700" fill="#6ee7b7">6. 30-day plan</text>
              <text x="120" y="210" font-size="11" fill="#9b99b8">weekly goals + review</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#lg15a)">
                <line x1="221" y1="65" x2="276" y2="65"/>
                <line x1="481" y1="65" x2="536" y2="65"/>
                <line x1="640" y1="101" x2="640" y2="156"/>
                <line x1="539" y1="195" x2="484" y2="195"/>
                <line x1="279" y1="195" x2="224" y2="195"/>
                <line x1="120" y1="158" x2="120" y2="104"/>
              </g>
              <text x="132" y="135" font-size="11" fill="#9b99b8" text-anchor="start">measure, then adjust</text>
            </g>
          </svg>
          <figcaption>Build the parts in order. Then let the results of the 30 days improve your ICP and scoring.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Parts 1 to 3: who to find, and where</h3>
          <p><strong>1. ICP (ideal customer profile).</strong> Start from real customers, not guesses. LedgerLite studied its 40 customers. Its best group kept 14 of its 16 customers (87.5%). Kavya writes a sample ICP based on that group:</p>
          <pre><code>ICP (sample): GST-registered traders and distributors,
        10 to 50 staff, in tier-2 Indian cities in Gujarat,
        Maharashtra and Karnataka. Accounts kept in spreadsheets or old
        desktop software.
        Pains: late, messy GST filings; cash flow is only known
        at month end.
        Triggers: a second branch, a first accountant hired,
        a notice about filing errors, the new financial year.
        Skip: firms with 100+ staff that need custom features.</code></pre>
          <p><strong>2. Personas.</strong> For a buyer like <em>Tulsi Textiles, Gujarat</em> (a made-up prospect), the buying committee looks like this:</p>
          <table class="lc-table">
            <thead><tr><th>Role</th><th>Example</th><th>What they care about</th></tr></thead>
            <tbody>
              <tr><td>Decides</td><td>The owner, Mr Desai</td><td>Risk, time to switch</td></tr>
              <tr><td>Pays</td><td>Meena Shah, Finance Head</td><td>Cost, contract, fewer errors</td></tr>
              <tr><td>Uses</td><td>The accounts clerk</td><td>Easy daily entry, training, support</td></tr>
              <tr><td>Influences</td><td>The outside chartered accountant (CA)</td><td>Clean data for returns and audits</td></tr>
            </tbody>
          </table>
          <p><strong>3. Sources.</strong> Choose sources that are allowed and match the ICP: GST webinar sign-ups, CA partner referrals, website trial sign-ups, local trade association events, and customer referrals. Use LinkedIn for manual research and personal messages only. No bought lists, no scraping and no automation tools.</p>
        </div>
        <div class="lc-card">
          <h3>Parts 4 and 5: the lead list and the scoring model</h3>
          <p><strong>4. Lead list.</strong> Build a sheet with 20 rows. Use these columns: Company, City, Industry, Staff (approx.), Contact role, Source, Consent note, Signal, Fit score, Engagement score, Total, Status, Owner, Next step, Date checked. Every row needs a source and a consent note. If AI helps with research, check each fact at the company's own website or a trusted source. Mark anything you cannot confirm as "Unknown".</p>
          <p><strong>5. Scoring model (sample).</strong> Kavya reuses LedgerLite's model from the lead scoring lesson. Fit shows if the lead matches the ICP. Engagement shows how interested they are. Each part is out of 50.</p>
          <table class="lc-table">
            <thead><tr><th>Fit (max 50)</th><th>Points</th><th>Engagement (max 50)</th><th>Points</th></tr></thead>
            <tbody>
              <tr><td>Industry in ICP (trader or distributor)</td><td>15</td><td>Asked for a demo</td><td>20</td></tr>
              <tr><td>10 to 50 staff (2 to 9 staff: 5)</td><td>15</td><td>Visited pricing page</td><td>10</td></tr>
              <tr><td>Owner or finance head (accountant: 10)</td><td>20</td><td>Attended webinar</td><td>10</td></tr>
              <tr><td></td><td></td><td>Downloaded checklist</td><td>5</td></tr>
              <tr><td></td><td></td><td>3 or more email opens</td><td>5</td></tr>
            </tbody>
          </table>
          <p>Grades: 70 or more is Hot. A Hot lead is an MQL and goes to Kavya the same day. 40 to 69 is Warm and gets useful nurture emails. Under 40 is Cold and is low priority. Six sample rows (all made up):</p>
          <table class="lc-table">
            <thead><tr><th>Company</th><th>Fit</th><th>Engagement</th><th>Total</th><th>Status</th></tr></thead>
            <tbody>
              <tr><td>Tulsi Textiles, Gujarat (trader, 45 staff, finance head)</td><td>15+15+20 = 50</td><td>pricing + checklist + 4 opens = 10+5+5 = 20</td><td>70</td><td>Hot (MQL)</td></tr>
              <tr><td>GreenLeaf Organics, Maharashtra (wholesaler, 12 staff, accountant)</td><td>15+15+10 = 40</td><td>demo + pricing + webinar = 20+10+10 = 40</td><td>80</td><td>Hot (MQL)</td></tr>
              <tr><td>Kaveri Auto Parts, Tamil Nadu (distributor, 35 staff, owner)</td><td>15+15+20 = 50</td><td>none = 0</td><td>50</td><td>Warm</td></tr>
              <tr><td>Sahyadri Hardware, Maharashtra (trader, 8 staff, owner)</td><td>15+5+20 = 40</td><td>checklist = 5</td><td>45</td><td>Warm</td></tr>
              <tr><td>Coastal Spices, Kerala (trader, 30 staff, accountant)</td><td>15+15+10 = 40</td><td>webinar + checklist = 10+5 = 15</td><td>55</td><td>Warm</td></tr>
              <tr><td>BluePeak Design, Karnataka (6-person agency, designer)</td><td>0+5+0 = 5</td><td>pricing = 10</td><td>15</td><td>Cold</td></tr>
            </tbody>
          </table>
          <p>Let the sheet calculate the status. If Fit is in column I and Engagement in column J:</p>
          <pre><code>Total (K2):  =I2+J2
        Status (L2): =IF(K2&gt;=70,"Hot",IF(K2&gt;=40,"Warm","Cold"))</code></pre>
          <p>Notice Kaveri Auto Parts. It fits perfectly but has not engaged yet. A score is a guide for who to call first. Kavya may still reach out with a useful, personal reason, such as a relevant webinar invitation.</p>
        </div>
        <div class="lc-card">
          <h3>Part 6: the 30-day plan</h3>
          <p>The goals below are sample goals that Kavya sets for herself. They are not benchmarks. Set goals from your own past numbers.</p>
          <table class="lc-table">
            <thead><tr><th>Week</th><th>Actions</th><th>What to measure</th></tr></thead>
            <tbody>
              <tr><td>Days 1 to 7</td><td>Finish the ICP, persona cards and scoring sheet. Check them with Arjun and 3 short customer calls.</td><td>ICP, personas and sheet agreed</td></tr>
              <tr><td>Days 8 to 14</td><td>Build the 20-row list from allowed sources. Write AI research briefs for the top 10. Check every fact.</td><td>20 rows, each with a source and consent note</td></tr>
              <tr><td>Days 15 to 21</td><td>Send personal emails and messages to leads with a clear basis. Run one GST webinar with 2 CA partners. Reply to inbound leads within 1 working day.</td><td>Replies, webinar sign-ups, meetings booked</td></tr>
              <tr><td>Days 22 to 30</td><td>Score everyone again. Hand MQLs over with handover notes. Qualify calls with BANT. Review the numbers with Arjun.</td><td>Leads, MQLs, SQLs, stage conversion rates, cost per lead</td></tr>
            </tbody>
          </table>
          <p><strong>Before you share the plan, check these five things:</strong></p>
          <ul class="lc-list">
            <li>Every company fact has a source.</li>
            <li>Every number is recalculated in the sheet.</li>
            <li>Every lead has a consent note.</li>
            <li>Nothing breaks DND, DPDP or LinkedIn rules.</li>
            <li>No private data went into a public AI tool.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Activity: build the plan in order</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put Kavya's capstone steps in the order that makes sense.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Study the best current customers and write the ICP.</li>
              <li data-order="2">Write persona cards for who decides, pays, uses and influences.</li>
              <li data-order="3">Choose allowed lead sources that match the ICP.</li>
              <li data-order="4">Build the 20-row lead list with source and consent notes.</li>
              <li data-order="5">Score each lead for fit and engagement with sheet formulas.</li>
              <li data-order="6">Write the 30-day plan with weekly actions and measures.</li>
              <li data-order="7">Review the results after 30 days and adjust the ICP and scores.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to draft a full plan for LedgerLite, or change the [brackets] to your own business. Then check it with the list below.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a B2B lead generation coach. Use simple English.

        Business: [LedgerLite, accounting software for small businesses, based in Karnataka].
        Best customers: [GST-registered traders and distributors with 10 to 50 staff in tier-2 cities, who used spreadsheets before].
        Team: [one sales rep and the founder]. Market: [India].

        Draft a lead generation plan with:
        1. An ICP: industry, size, location, pains, buying triggers.
        2. Four short persona cards: who decides, pays, uses and influences.
        3. Five lead sources that are allowed. No bought lists, scraping or LinkedIn automation.
        4. Lead list column headings, plus 3 example rows using clearly made-up company names.
        5. A fit + engagement scoring table (each out of 50) with Hot, Warm and Cold thresholds (Hot means MQL), and a spreadsheet IF formula for the grade.
        6. A 30-day plan in a table: week, actions, what to measure.

        Do not invent facts about real companies or industry benchmarks. Add a note on consent and do-not-disturb rules (general, not legal advice).</pre>
            <ul class="ai-try-checks">
              <li>The ICP matches your real best customers, not a guess</li>
              <li>Every source is allowed, with no bought lists or automation</li>
              <li>Scoring points add up to 50 for each part, and the formula works in your sheet</li>
              <li>Example companies are clearly made up</li>
              <li>The 30-day plan has measures you can really track</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A lead generation plan is a loop, not a document. AI helps you draft all six parts in an afternoon. Your real customers, checked facts and honest outreach decide if it works. Review it every month and improve it.
        </div>
      HTML
      starter_code: nil
    }
  }.freeze
end

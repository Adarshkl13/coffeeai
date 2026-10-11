module AiLegalDraftingContent
  # Units (sidebar dividers): 1–4 Drafting Basics · 5–9 Letters and Notices · 10–14 Agreements and Quality · 15 Capstone
  # Widgets: sequence, sorter, stepper. No code editor: each Try It is an ai-try prompt box.
  LESSONS = {
    1 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-law">Law</div>
          <h1 class="lc-title">Principles of Good Legal Drafting</h1>
        </div>
        <p class="lc-lead">A legal document is read by people who may disagree about it later. A client, the other side and one day perhaps a judge will all read the same words. Good drafting makes sure those words have one meaning only. In this lesson you will learn five principles: clarity, precision, plain language, defined terms and consistency. You will see weak clauses and better clauses side by side. These principles matter even more when AI writes the first draft, because you must be able to spot what is wrong.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 290" role="img" aria-label="Five principles of good drafting in a row: clarity, precision, plain language, defined terms and consistency. Below, a vague payment clause becomes a clear one.">
            <defs><marker id="ld1a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="16" y="22" text-anchor="start" font-size="12" fill="#9b99b8">Five principles of a good draft</text>
              <rect x="16" y="34" width="136" height="70" rx="10" fill="#27274e" stroke="#8b5cf6"/>
              <text x="84" y="63" font-weight="700">Clarity</text><text x="84" y="85" font-size="11" fill="#9b99b8">one meaning only</text>
              <rect x="164" y="34" width="136" height="70" rx="10" fill="#27274e" stroke="#3b82f6"/>
              <text x="232" y="63" font-weight="700">Precision</text><text x="232" y="85" font-size="11" fill="#9b99b8">exact dates, sums</text>
              <rect x="312" y="34" width="136" height="70" rx="10" fill="#27274e" stroke="#22d3ee"/>
              <text x="380" y="63" font-weight="700">Plain language</text><text x="380" y="85" font-size="11" fill="#9b99b8">simple, active words</text>
              <rect x="460" y="34" width="136" height="70" rx="10" fill="#27274e" stroke="#f59e0b"/>
              <text x="528" y="63" font-weight="700">Defined terms</text><text x="528" y="85" font-size="11" fill="#9b99b8">define once, reuse</text>
              <rect x="608" y="34" width="136" height="70" rx="10" fill="#27274e" stroke="#10b981"/>
              <text x="676" y="63" font-weight="700">Consistency</text><text x="676" y="85" font-size="11" fill="#9b99b8">same word, same thing</text>
              <rect x="16" y="130" width="330" height="140" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="181" y="156" font-weight="700" fill="#f9a8d4">Before: vague</text>
              <text x="181" y="184" font-size="12.5">"Payment to be made by the</text>
              <text x="181" y="204" font-size="12.5">purchaser within a reasonable</text>
              <text x="181" y="224" font-size="12.5">time after receipt."</text>
              <text x="181" y="252" font-size="11" fill="#9b99b8">Who pays? How long? Receipt of what?</text>
              <line x1="350" y1="200" x2="408" y2="200" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ld1a)"/>
              <rect x="414" y="130" width="330" height="140" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="579" y="156" font-weight="700" fill="#6ee7b7">After: clear</text>
              <text x="579" y="184" font-size="12.5">"The Buyer shall pay each</text>
              <text x="579" y="204" font-size="12.5">invoice in full within 30 days</text>
              <text x="579" y="224" font-size="12.5">of the invoice date."</text>
              <text x="579" y="252" font-size="11" fill="#9b99b8">Clear party, duty, time and start date</text>
            </g>
          </svg>
          <figcaption>Each principle removes one kind of doubt. The clear clause answers who, what, how much and by when.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The five principles</h3>
          <p>In this course we follow one made-up matter. <strong>Mehra &amp; Rao Associates</strong> is a made-up law firm in Maharashtra. It acts for <strong>Rangrez Crafts</strong>, a Rajasthan handicrafts brand owned by Neha. A Maharashtra shop chain, Neelkamal Lifestyle Pvt Ltd, has not paid three invoices. The examples below come from that matter.</p>
          <table class="lc-table">
            <thead><tr><th>Principle</th><th>What it means</th><th>Weak</th><th>Better</th></tr></thead>
            <tbody>
              <tr><td><strong>Clarity</strong></td><td>A reader can find only one meaning.</td><td>"The Seller shall deliver the Goods to the store or warehouse and pay transport."</td><td>"The Seller shall deliver the Goods to the Buyer's warehouse named in Schedule 2. The Seller shall pay the transport cost."</td></tr>
              <tr><td><strong>Precision</strong></td><td>Exact amounts, dates, periods and parties.</td><td>"Approx Rs 2.85 lakhs"</td><td>"₹2,85,000 (Rupees Two Lakh Eighty-Five Thousand only)"</td></tr>
              <tr><td><strong>Plain language</strong></td><td>Everyday words and the active voice. Legal terms only where they are needed.</td><td>"The party of the first part, hereinafter referred to as the Vendor…"</td><td>"Neha Rathore, sole proprietor of Rangrez Crafts (the "<strong>Seller</strong>")"</td></tr>
              <tr><td><strong>Defined terms</strong></td><td>Give a key idea a name once, then use that name every time.</td><td>"the goods", "the products", "the items"</td><td>"<strong>Goods</strong>" means the items listed in Schedule 1.</td></tr>
              <tr><td><strong>Consistency</strong></td><td>The same word always means the same thing. A new word suggests a new meaning.</td><td>"Buyer" in clause 2, "Purchaser" in clause 7</td><td>"Buyer" in every clause</td></tr>
            </tbody>
          </table>
          <p>Plain language does not mean casual language. A plain clause can be just as exact as an old-style clause. It is usually easier to check, too.</p>
        </div>
        <div class="lc-card">
          <h3>Common traps that create doubt</h3>
          <table class="lc-table">
            <thead><tr><th>Trap</th><th>Example</th><th>Why it causes doubt</th><th>Fix</th></tr></thead>
            <tbody>
              <tr><td>No start date for a period</td><td>"within 7 days"</td><td>7 days from delivery, from the invoice or from the notice?</td><td>"within 7 days of delivery"</td></tr>
              <tr><td>Vague words</td><td>"promptly", "reasonable time", "soon"</td><td>Each party will read them to suit itself.</td><td>Give a number of days, or a clear test.</td></tr>
              <tr><td>"and/or"</td><td>"The Seller and/or the Buyer may end this Agreement."</td><td>Can both act together? Must one act alone?</td><td>"Either party may end this Agreement."</td></tr>
              <tr><td>Number-only dates</td><td>"05/06/2026"</td><td>5 June in India, but 6 May in the US.</td><td>"5 June 2026"</td></tr>
              <tr><td>Figures and words that differ</td><td>"₹95,000 (Rupees Ninety Thousand only)"</td><td>Two different amounts in one line.</td><td>Check that the figures and the words match.</td></tr>
              <tr><td>Unclear "it" or "they"</td><td>"The Buyer shall inform the Seller if it is late."</td><td>Who is late: the Buyer or the Seller?</td><td>Repeat the name: "if the Seller's delivery is late"</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Worked example: fixing a payment clause</h3>
          <p>Pooja, the paralegal, wrote this first draft for Rangrez Crafts' standard terms:</p>
          <pre><code>Payment shall be made promptly and in case of any delay the
        purchaser will be liable for interest at 18% and all costs.</code></pre>
          <p>Adv. Kavita Mehra, the partner, marked five problems. "Promptly" has no fixed time. The payer is "the purchaser" here but "the Buyer" elsewhere. "18%" does not say per year, or from which date. "All costs" is open-ended. The passive voice hides who must act. Here is the improved clause:</p>
          <pre><code>3.1 The Buyer shall pay each invoice in full within 30 (thirty)
            days of the invoice date.
        3.2 If the Buyer does not pay an amount by its due date, the Buyer
            shall pay simple interest on that amount at 18% (eighteen per
            cent) per year, from the due date until the date of payment.</code></pre>
          <p>AI tools are good at finding traps like these. You can ask an AI assistant to list every vague word in a draft. But the lawyer decides the fix. Only the client can say if 30 days and 18% are the real commercial terms. Only the lawyer can decide if the clause works under the law that applies. This course is general education. It is not legal advice.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: clear or needs fixing?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each piece of drafting. Is it clear and precise, or does it need fixing?</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="clear" data-label="Clear and precise"></div>
              <div data-sorter-target="bucket" data-bucket="fix" data-label="Needs fixing"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="clear" data-why="It names the party, the duty, the period and the start date.">"The Buyer shall pay each invoice within 30 days of the invoice date."</li>
              <li data-bucket="fix" data-why="&quot;Promptly&quot; has no fixed time, and the passive voice hides who must pay.">"Payment shall be made promptly."</li>
              <li data-bucket="fix" data-why="It can be read as 5 June or 6 May. Write the month as a word.">"The goods were delivered on 05/06/2026."</li>
              <li data-bucket="clear" data-why="The figures and the words match, and the currency is clear.">"₹95,000 (Rupees Ninety-Five Thousand only)"</li>
              <li data-bucket="fix" data-why="&quot;and/or&quot; leaves doubt about who may act. Say &quot;Either party may…&quot;.">"The Seller and/or the Buyer may end this Agreement."</li>
              <li data-bucket="clear" data-why="It defines the term once and points to an exact list.">"In this Agreement, "Goods" means the items listed in Schedule 1."</li>
              <li data-bucket="fix" data-why="Two words for one thing suggest two meanings. Use the defined term every time.">Clause 4 says "Goods" but clause 9 says "Products".</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to review a clause against the five principles and suggest a clearer version. Paste your own clause, or use the sample one.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a senior drafting lawyer in India. You are training a junior colleague.

        Review this clause against five principles: clarity, precision, plain language, defined terms and consistency.

        Clause: [The purchaser shall make payment of the invoices raised by the Supplier within a reasonable time and in case of delay interest shall be payable at 18% and the Buyer shall also bear all costs.]

        Give your answer in three parts:
        1. A table with columns: Words in the clause | Problem | Why it matters | Suggested fix.
        2. One rewritten clause. Use the defined terms "Buyer" and "Seller". Use numbered sub-clauses, "shall" for duties, and figures with words for numbers.
        3. A list of questions I must ask the client before the clause is final (for example, the start date for interest).

        Rules: Do not add new commercial terms. Mark any assumption as [ASSUMPTION]. Do not cite cases or sections of any Act. Use simple English.</pre>
            <ul class="ai-try-checks">
              <li>Every problem in the table points to real words in the clause.</li>
              <li>The rewrite uses one name for each party all the way through.</li>
              <li>Periods say from which date they run, and interest says "per year".</li>
              <li>The AI did not invent new terms, such as a new interest rate or penalty.</li>
              <li>You still decide the final wording with the client's real terms.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Good drafting removes doubt. For every sentence, ask: who must do what, by when, and what happens if they do not? AI can help you find weak words fast. The lawyer still decides the right words and is responsible for them.
        </div>
      HTML
      starter_code: nil
    },
    2 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-law">Law</div>
          <h1 class="lc-title">Where AI Helps in Drafting</h1>
        </div>
        <p class="lc-lead">AI assistants can write a first draft in seconds. They can also suggest a structure, rewrite a clause in plain English and check a long document for mistakes. But AI can also invent cases, use old law and copy foreign clauses. In this lesson you will learn which drafting jobs AI does well, which risks to watch for, and how to use it safely. The rule for the whole course is simple: AI drafts, the lawyer checks, decides and signs off.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="A drafting workflow: the lawyer collects facts, AI writes a first draft, the lawyer checks each line and signs off, and the client approves. Below, a list of what AI helps with and a list of AI risks.">
            <defs><marker id="ld2a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="20" y="20" width="128" height="70" rx="10" fill="#27274e" stroke="#3b82f6"/>
              <text x="84" y="50" font-weight="700">Collect facts</text><text x="84" y="72" font-size="11" fill="#93c5fd">Lawyer</text>
              <rect x="168" y="20" width="128" height="70" rx="10" fill="#27274e" stroke="#8b5cf6"/>
              <text x="232" y="50" font-weight="700">First draft</text><text x="232" y="72" font-size="11" fill="#c4b5fd">AI assistant</text>
              <rect x="316" y="20" width="128" height="70" rx="10" fill="#27274e" stroke="#3b82f6"/>
              <text x="380" y="50" font-weight="700">Check each line</text><text x="380" y="72" font-size="11" fill="#93c5fd">Lawyer</text>
              <rect x="464" y="20" width="128" height="70" rx="10" fill="#27274e" stroke="#3b82f6"/>
              <text x="528" y="50" font-weight="700">Sign off</text><text x="528" y="72" font-size="11" fill="#93c5fd">Lawyer decides</text>
              <rect x="612" y="20" width="128" height="70" rx="10" fill="#27274e" stroke="#10b981"/>
              <text x="676" y="50" font-weight="700">Approve, send</text><text x="676" y="72" font-size="11" fill="#6ee7b7">Client</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#ld2a)">
                <line x1="150" y1="55" x2="165" y2="55"/>
                <line x1="298" y1="55" x2="313" y2="55"/>
                <line x1="446" y1="55" x2="461" y2="55"/>
                <line x1="594" y1="55" x2="609" y2="55"/>
              </g>
              <rect x="16" y="120" width="355" height="160" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="193" y="146" font-weight="700" fill="#6ee7b7">AI helps with</text>
              <g text-anchor="start" font-size="12.5">
                <text x="36" y="176">• structure and outlines</text>
                <text x="36" y="200">• first drafts from your facts</text>
                <text x="36" y="224">• plain-language rewrites</text>
                <text x="36" y="248">• checks of terms, dates and numbers</text>
              </g>
              <rect x="389" y="120" width="355" height="160" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="566" y="146" font-weight="700" fill="#f9a8d4">Watch for</text>
              <g text-anchor="start" font-size="12.5">
                <text x="409" y="176">• invented cases and citations</text>
                <text x="409" y="200">• old law (IPC instead of BNS)</text>
                <text x="409" y="224">• foreign-law clauses</text>
                <text x="409" y="248">• client data pasted into public tools</text>
              </g>
            </g>
          </svg>
          <figcaption>AI sits in one box of the workflow. The lawyer owns the facts before it and every check after it.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Drafting jobs where AI helps</h3>
          <table class="lc-table">
            <thead><tr><th>Job</th><th>How AI helps</th><th>What the lawyer still checks</th></tr></thead>
            <tbody>
              <tr><td>First draft</td><td>Turns a fact sheet into a first version of a letter, notice or clause.</td><td>Every fact, amount and date against the documents.</td></tr>
              <tr><td>Structure</td><td>Suggests headings and an order for a reply or an agreement.</td><td>That nothing important is missing for this matter.</td></tr>
              <tr><td>Plain-language rewrite</td><td>Rewrites old-style clauses in simple words.</td><td>That the meaning did not change.</td></tr>
              <tr><td>Consistency check</td><td>Lists defined terms, numbering, names and amounts that do not match.</td><td>Each flag, one by one. AI can miss some and invent others.</td></tr>
              <tr><td>Summary</td><td>Summarises a long email chain into a date-wise list.</td><td>The summary against the original emails.</td></tr>
              <tr><td>Translation</td><td>Gives a first Hindi or Marathi version of a client letter.</td><td>A qualified person checks it before use.</td></tr>
            </tbody>
          </table>
          <p>Notice the pattern. AI is fast with words and structure. It does not know your client, the documents or the law that applies today. You bring those.</p>
        </div>
        <div class="lc-card">
          <h3>The risks, with real examples</h3>
          <ul class="lc-list">
            <li><strong>Invented cases and citations.</strong> AI can produce case names, citations and quotes that look real but do not exist. In <em>Mata v. Avianca</em> (June 2023), a US federal court in New York fined two lawyers and their firm US$5,000. Their brief cited fake cases made up by ChatGPT. Check every citation in a trusted source such as SCC Online, Manupatra or Indian Kanoon. Read the judgment itself.</li>
            <li><strong>Out-of-date law.</strong> Many AI tools learned from older text. In India, the Bharatiya Nyaya Sanhita, the Bharatiya Nagarik Suraksha Sanhita and the Bharatiya Sakshya Adhiniyam came into force on 1 July 2024. They replaced the IPC, the CrPC and the Evidence Act. An AI draft that cites the IPC for new facts is a warning sign.</li>
            <li><strong>Foreign law.</strong> Many AI templates follow US or UK practice. Clauses about "attorneys' fees" or jury trials do not fit Indian courts.</li>
            <li><strong>Guessed facts.</strong> If a fact is missing, AI often fills the gap with something that sounds right. A wrong date in a legal notice can cause real harm.</li>
            <li><strong>Confidentiality.</strong> Client facts are private. Pasting them into a public AI tool can break your duty to the client.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Rules and duties that still apply</h3>
          <p>No law lets you hand responsibility to a machine. In India, advocates have duties to the client and the court under the Advocates Act 1961 and the Bar Council of India Rules. Section 132 of the Bharatiya Sakshya Adhiniyam protects communications between an advocate and a client. The Digital Personal Data Protection Act 2023 and its 2025 Rules also cover personal data. Their duties start in phases, so check the current rules.</p>
          <p>Courts are also writing AI rules. In July 2025, the Kerala High Court issued a policy for its district judiciary. It says AI must not be used to reach findings, orders or judgments. It asks staff to avoid cloud AI tools, except approved ones, to protect confidential data. In the US, the American Bar Association's Formal Opinion 512 (2024) says lawyers who use AI keep their duties of competence and confidentiality.</p>
          <table class="lc-table">
            <thead><tr><th>Safe habit</th><th>What it looks like at Mehra &amp; Rao Associates</th></tr></thead>
            <tbody>
              <tr><td>Use approved tools</td><td>Only the AI tool the firm has approved, with its data settings checked.</td></tr>
              <tr><td>Mask client details</td><td>"Client A, a Rajasthan supplier" instead of the real name, when the tool is not approved.</td></tr>
              <tr><td>Check at the source</td><td>Every Act, section and case is checked on India Code or a research database.</td></tr>
              <tr><td>Lawyer signs off</td><td>Adv. Sameer Rao or Adv. Kavita Mehra approves every document before it goes out.</td></tr>
            </tbody>
          </table>
          <p>This course is general education, not legal advice. Follow your firm's AI policy and your Bar Council's rules.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: Pooja's first AI draft</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Pooja's prompt">Pooja uses the firm's approved AI tool. She types: "Draft a firm payment reminder from our client, a Rajasthan supplier, to a Maharashtra buyer. Three invoices are unpaid: ₹95,000, ₹1,10,000 and ₹80,000. Payment terms: 30 days from the invoice date."</li>
              <li data-kind="answer" data-label="AI draft">The AI writes a polite, well-structured letter. It says the total is ₹2,85,000. It adds: "As held in Sharma Traders v. Gupta Textiles (2019), non-payment is actionable." It also warns of "criminal action under Section 420 of the IPC". It says payment was due "within 45 days".</li>
              <li data-kind="tool" data-label="Research database">Pooja searches for "Sharma Traders v. Gupta Textiles" in the firm's research database and on Indian Kanoon.</li>
              <li data-kind="result" data-label="No such case">She finds nothing. The AI invented the case. (It is a made-up name for this example.) The line must go.</li>
              <li data-kind="warn" data-label="Old law and threats">The IPC was replaced by the Bharatiya Nyaya Sanhita from 1 July 2024. Also, threatening criminal action in a simple money demand needs a lawyer's judgment. Pooja deletes the line and flags it for Adv. Sameer Rao.</li>
              <li data-kind="check" data-label="Numbers and terms">She adds up the invoices: 95,000 + 1,10,000 + 80,000 = 2,85,000. The total is right. But the terms say 30 days, not 45. She fixes it.</li>
              <li data-kind="check" data-label="Lawyer sign-off">Adv. Sameer Rao reads every line, adjusts the tone and approves it. Neha, the client, approves the final letter before it is sent.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Use AI as a first checker for an AI-written draft. The sample draft has errors on purpose. You can replace it with your own draft, with client names removed.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a careful legal drafting reviewer in India. A junior lawyer will review your notes before a senior lawyer signs off.

        Check the draft below. Do NOT rewrite it. Make a table with columns: Line | Issue type | What is wrong | What a person must check.

        Issue types:
        - Citation: any case name or citation. Do not say it is real. List it so a person can check it at the source.
        - Law: any Act or section, and whether it may be out of date (India replaced the IPC, CrPC and Evidence Act from 1 July 2024).
        - Fact: anything not supported by the facts given.
        - Number or date: any amount, total or period to recheck.
        - Tone: threats or rude words.

        Facts: [Client A supplied goods to Buyer B. Invoices: ₹95,000, ₹1,10,000 and ₹80,000. Terms: payment within 30 days of the invoice date.]

        Draft: [Our client supplied goods worth ₹2,75,000. Payment was due within 45 days. As held in Sharma Traders v. Gupta Textiles (2019), non-payment is actionable. You will face criminal action under Section 420 of the IPC.]

        End with a list of the three most serious problems.</pre>
            <ul class="ai-try-checks">
              <li>It flags the case name for checking and does not claim it is real. (The sample case is made up.)</li>
              <li>It catches the wrong total: the invoices add up to ₹2,85,000, not ₹2,75,000.</li>
              <li>It catches 45 days against the 30-day term.</li>
              <li>It flags the IPC reference as out of date and the threat as a tone problem.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> AI is a fast drafting assistant, not a lawyer. Give it the facts, let it draft and check, then check its work yourself. Every citation, section, fact and number must be checked at the source before the lawyer signs off.
        </div>
      HTML
      starter_code: nil
    },
    3 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-law">Law</div>
          <h1 class="lc-title">Templates, Precedents and Clause Banks</h1>
        </div>
        <p class="lc-lead">Most good drafts do not start from a blank page. They start from a document that has worked before. In this lesson you will learn the difference between a template, a precedent and a clause bank. You will see why a generic template from an AI tool is risky for an Indian matter. You will also learn how to build your own clause bank, so that AI adapts clauses you trust instead of clauses it made up.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="Building a clause bank: past documents are cleaned and masked, the best clauses are approved, and they go into a clause bank. Below, a generic AI template with its risks is compared with a clause bank entry and its fields.">
            <defs><marker id="ld3a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="12" y="20" width="160" height="70" rx="10" fill="#27274e" stroke="#3b82f6"/>
              <text x="92" y="50" font-weight="700">Past documents</text><text x="92" y="72" font-size="11" fill="#9b99b8">your best precedents</text>
              <rect x="204" y="20" width="160" height="70" rx="10" fill="#27274e" stroke="#22d3ee"/>
              <text x="284" y="50" font-weight="700">Clean and mask</text><text x="284" y="72" font-size="11" fill="#9b99b8">remove client details</text>
              <rect x="396" y="20" width="160" height="70" rx="10" fill="#27274e" stroke="#f59e0b"/>
              <text x="476" y="50" font-weight="700">Approve</text><text x="476" y="72" font-size="11" fill="#9b99b8">a partner signs off</text>
              <rect x="588" y="20" width="160" height="70" rx="10" fill="#27274e" stroke="#10b981"/>
              <text x="668" y="50" font-weight="700">Clause bank</text><text x="668" y="72" font-size="11" fill="#9b99b8">tagged and dated</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#ld3a)">
                <line x1="174" y1="55" x2="201" y2="55"/>
                <line x1="366" y1="55" x2="393" y2="55"/>
                <line x1="558" y1="55" x2="585" y2="55"/>
                <line x1="668" y1="92" x2="668" y2="126"/>
              </g>
              <rect x="12" y="130" width="360" height="150" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="192" y="156" font-weight="700" fill="#f9a8d4">Generic AI template: risky</text>
              <g text-anchor="start" font-size="12.5">
                <text x="32" y="186">• US or UK law and words</text>
                <text x="32" y="210">• no stamp duty, no arbitration seat</text>
                <text x="32" y="234">• clauses that may be void in India</text>
                <text x="32" y="258">• no source, no date last checked</text>
              </g>
              <rect x="396" y="130" width="352" height="150" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="572" y="156" font-weight="700" fill="#6ee7b7">Clause bank entry: CB-PAY-01</text>
              <g text-anchor="start" font-size="12.5">
                <text x="416" y="186">• standard text and fallback text</text>
                <text x="416" y="210">• when to use it, when not to</text>
                <text x="416" y="234">• Indian law points to check</text>
                <text x="416" y="258">• owner and date last checked</text>
              </g>
            </g>
          </svg>
          <figcaption>A clause bank holds clauses your firm has used, checked and approved. A generic template has none of that history.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Template, precedent or clause bank?</h3>
          <table class="lc-table">
            <thead><tr><th>Tool</th><th>What it is</th><th>Example at Mehra &amp; Rao Associates</th><th>Main risk</th></tr></thead>
            <tbody>
              <tr><td><strong>Template</strong></td><td>A blank form with gaps to fill.</td><td>A standard demand letter with [Client], [Amount] and [Due date].</td><td>People fill the gaps and stop thinking.</td></tr>
              <tr><td><strong>Precedent</strong></td><td>A real document from a past matter, reused as a model.</td><td>The supply agreement the firm drafted last year for a textile client.</td><td>Old facts, old names or old law left inside.</td></tr>
              <tr><td><strong>Clause bank</strong></td><td>A library of approved clauses, each with notes on when and how to use it.</td><td>Payment, late interest, delivery, notices and dispute clauses, each with an ID.</td><td>Clauses go out of date if nobody owns and checks them.</td></tr>
            </tbody>
          </table>
          <p>A precedent is only as good as the matter it came from. Before you reuse one, ask: who drafted it, for which side, and when? A clause that protected a seller may hurt a buyer.</p>
        </div>
        <div class="lc-card">
          <h3>Why generic AI templates are risky in India</h3>
          <p>Ask a public AI tool for "a supply agreement" and you will get a neat document. It often follows US practice, because much of its training text is from the US. Look for these red flags.</p>
          <table class="lc-table">
            <thead><tr><th>Red flag in the template</th><th>Why it matters in India</th><th>What to do</th></tr></thead>
            <tbody>
              <tr><td>"Governed by the laws of the State of Delaware"</td><td>Two Indian parties usually want Indian law and Indian courts or arbitration.</td><td>Choose the governing law and courts with the lawyer.</td></tr>
              <tr><td>An arbitration clause with no seat or rules</td><td>The Arbitration and Conciliation Act 1996 applies. A vague clause can lead to extra court fights.</td><td>State the seat (for example, a named city in India), the number of arbitrators and the language.</td></tr>
              <tr><td>A wide non-compete after the deal or job ends</td><td>Section 27 of the Indian Contract Act 1872 makes agreements in restraint of trade void, with narrow exceptions.</td><td>Ask the lawyer. Use confidentiality and non-solicitation clauses where they fit.</td></tr>
              <tr><td>"A penalty of ₹10,000 per day"</td><td>Under section 74 of the Indian Contract Act, a court awards reasonable compensation up to the stated amount. It does not simply enforce a penalty.</td><td>Draft a genuine pre-estimate of loss, and let the lawyer check it.</td></tr>
              <tr><td>No thought about stamp duty</td><td>Stamp duty is set by the Indian Stamp Act and state stamp laws. An unstamped document can cause problems as evidence.</td><td>Check the state's stamp law and e-stamping rules for each document.</td></tr>
              <tr><td>"Signed electronically" for every document</td><td>The Information Technology Act 2000 allows electronic signatures for most documents. Some types are left out.</td><td>Check the Act's First Schedule on India Code for the current list.</td></tr>
              <tr><td>A data clause copied from the EU's GDPR</td><td>India has the Digital Personal Data Protection Act 2023 and its 2025 Rules.</td><td>Use a clause written for Indian law, and check the current rules.</td></tr>
            </tbody>
          </table>
          <p>These are general points for education, not legal advice. The lawyer decides what each document needs.</p>
        </div>
        <div class="lc-card">
          <h3>Build your own clause bank</h3>
          <ol class="lc-list">
            <li><strong>Collect</strong> your best signed documents. Pick ones that worked well in practice.</li>
            <li><strong>Clean</strong> them. Remove client names, amounts and other private details.</li>
            <li><strong>Split</strong> each document into clauses and give each clause an ID, such as CB-PAY-01.</li>
            <li><strong>Add notes</strong>: purpose, when to use it, a fallback version and the law points to check.</li>
            <li><strong>Approve and date</strong> each clause. A partner signs off. Set a date to check it again.</li>
          </ol>
          <p>Here is one entry from the Mehra &amp; Rao clause bank. The firm's style is: defined terms in bold at first use, numbering 1, 1.1, (a), "shall" for duties, and amounts in figures and words.</p>
          <pre><code>ID: CB-PAY-01   Title: Payment and late interest (supplier side)
        Standard text:
          5.1 The Buyer shall pay each invoice in full within [30 (thirty)]
              days of the invoice date.
          5.2 If the Buyer does not pay an amount by its due date, the Buyer
              shall pay simple interest on that amount at [18% (eighteen per
              cent)] per year, from the due date until the date of payment.
        Fallback: 45 days from the invoice date; interest at [12%] per year.
        Use when: we act for the seller or supplier.
        Do not use when: we act for the buyer (see CB-PAY-02).
        Check: if the supplier is a registered micro or small enterprise,
          the MSMED Act 2006 sets its own payment period and interest.
        Source: supply agreement, textile client, 2025 (names removed)
        Owner: Adv. Kavita Mehra   Last checked: [date]</code></pre>
          <p>Now AI works for you. You can say: "Adapt clause CB-PAY-01 to these facts. Do not change the wording except the bracketed parts." The AI fills in your trusted text. It does not invent new clauses.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: keep it or flag it?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">An AI tool drafted a supply agreement for two Indian companies. Sort each clause.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="keep" data-label="Fits Indian practice"></div>
              <div data-sorter-target="bucket" data-bucket="flag" data-label="Red flag: fix first"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="flag" data-why="Two Indian parties usually want Indian law. The lawyer must choose the governing law.">"This Agreement is governed by the laws of the State of New York."</li>
              <li data-bucket="flag" data-why="Jury trial waivers and &quot;attorneys' fees&quot; come from US practice. They do not fit Indian courts.">"Each party waives trial by jury and shall pay reasonable attorneys' fees."</li>
              <li data-bucket="keep" data-why="It states the seat, the number of arbitrators and the Indian Act. The lawyer still checks the details.">"Disputes shall be settled by a sole arbitrator under the Arbitration and Conciliation Act 1996. The seat is [agreed Indian city]."</li>
              <li data-bucket="flag" data-why="Section 27 of the Indian Contract Act makes restraint of trade void, with narrow exceptions. Ask the lawyer.">"The Buyer shall not deal with any other supplier for 3 years after this Agreement ends."</li>
              <li data-bucket="keep" data-why="It thinks about stamp duty under the state law. The lawyer checks the amount and who pays.">"The Buyer shall pay the stamp duty on this Agreement under the Maharashtra Stamp Act."</li>
              <li data-bucket="flag" data-why="India has its own data law, the DPDP Act 2023. A GDPR-only clause misses it.">"Personal data shall be handled only as required by the GDPR."</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to check a generic clause for Indian law fit, then turn a good clause into a clause bank entry.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a contracts lawyer in [India], building a clause bank for a small law firm.

        Part 1. Review these clauses from a generic online template for use between two Indian companies. Make a table: Clause | Red flag | Why it may not fit Indian law or practice | What the lawyer should decide.
        [A. This Agreement is governed by the laws of the State of Delaware.
        B. The Buyer shall pay a penalty of Rs 10,000 per day of delay.
        C. Each party waives trial by jury.
        D. Notices may be sent by email to the addresses in Schedule 2.]

        Part 2. Turn the clause that fits best into a clause bank entry with these fields: ID, Title, Purpose, Standard text, Fallback text, Use when, Do not use when, Indian law points to check, Owner, Last checked.

        Rules: Name Indian Acts only in general words, and say "check the current law". Do not cite any cases. Use numbered sub-clauses and "shall" for duties. Use simple English.</pre>
            <ul class="ai-try-checks">
              <li>It flags the Delaware law, the penalty and the jury waiver, and explains each in plain words.</li>
              <li>Any Act it names is real, such as the Indian Contract Act 1872. Check it on India Code.</li>
              <li>It does not quote or invent any case.</li>
              <li>The clause bank entry has every field, including a fallback and points to check.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> AI is best at adapting text you already trust. Build a clause bank from your own checked precedents, keep it dated and owned, and ask AI to fill it in. Do not let a generic template decide the law of your client's deal.
        </div>
      HTML
      starter_code: nil
    },
    4 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-law">Law</div>
          <h1 class="lc-title">Instructions and Facts First</h1>
        </div>
        <p class="lc-lead">AI writes from what you give it. If the facts are wrong or missing, the draft will be wrong too, and it will still sound confident. So good drafting starts before any prompt. You take the client's instructions, collect the documents and write the facts in date order, with a source for each one. In this lesson you will learn to build a fact sheet and turn it into a prompt that gives AI the right facts and clear rules.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 285" role="img" aria-label="Emails, invoices and challans, the cheque and return memo, and call notes all feed into a fact sheet. Gaps go back to the client as questions. The fact sheet becomes a prompt, and the prompt gives a first draft that the lawyer checks.">
            <defs><marker id="ld4a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto-start-reverse"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="16" y="30" width="150" height="40" rx="8" fill="#27274e" stroke="#3b82f6"/><text x="91" y="55">Emails</text>
              <rect x="16" y="90" width="150" height="40" rx="8" fill="#27274e" stroke="#3b82f6"/><text x="91" y="115">Invoices, challans</text>
              <rect x="16" y="150" width="150" height="40" rx="8" fill="#27274e" stroke="#3b82f6"/><text x="91" y="175">Cheque + memo</text>
              <rect x="16" y="210" width="150" height="40" rx="8" fill="#27274e" stroke="#3b82f6"/><text x="91" y="235">Call notes</text>
              <rect x="230" y="90" width="160" height="100" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="310" y="124" font-weight="700" fill="#fcd34d">Fact sheet</text>
              <text x="310" y="148" font-size="11" fill="#9b99b8">facts with sources</text>
              <text x="310" y="166" font-size="11" fill="#9b99b8">instructions, gaps</text>
              <rect x="470" y="20" width="180" height="44" rx="8" fill="#27274e" stroke="#ec4899"/><text x="560" y="47">Gaps? Ask the client</text>
              <rect x="440" y="110" width="130" height="60" rx="10" fill="#27274e" stroke="#8b5cf6"/>
              <text x="505" y="136" font-weight="700">Prompt</text><text x="505" y="156" font-size="11" fill="#9b99b8">facts + rules</text>
              <rect x="614" y="110" width="130" height="60" rx="10" fill="#27274e" stroke="#10b981"/>
              <text x="679" y="136" font-weight="700">First draft</text><text x="679" y="156" font-size="11" fill="#9b99b8">lawyer checks</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none">
                <line x1="168" y1="50" x2="226" y2="112" marker-end="url(#ld4a)"/>
                <line x1="168" y1="110" x2="226" y2="130" marker-end="url(#ld4a)"/>
                <line x1="168" y1="170" x2="226" y2="150" marker-end="url(#ld4a)"/>
                <line x1="168" y1="230" x2="226" y2="168" marker-end="url(#ld4a)"/>
                <line x1="392" y1="140" x2="436" y2="140" marker-end="url(#ld4a)"/>
                <line x1="572" y1="140" x2="610" y2="140" marker-end="url(#ld4a)"/>
                <path d="M352,86 Q380,44 466,42" stroke-dasharray="5 4" marker-start="url(#ld4a)" marker-end="url(#ld4a)"/>
              </g>
              <text x="440" y="268" font-size="12" fill="#9b99b8">Every fact has a source. Every gap is a question, not a guess.</text>
            </g>
          </svg>
          <figcaption>The fact sheet sits between the documents and the prompt. Gaps go back to the client, not to the AI.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Instructions and facts are different</h3>
          <p><strong>Instructions</strong> are what the client wants and allows you to do. <strong>Facts</strong> are what happened, shown by documents. You need both before you draft. Here is what Mehra &amp; Rao Associates noted after a video call with Neha of Rangrez Crafts.</p>
          <table class="lc-table">
            <thead><tr><th>Type</th><th>Question to ask</th><th>Rangrez Crafts example</th></tr></thead>
            <tbody>
              <tr><td>Instruction: goal</td><td>What result do you want?</td><td>Recover ₹2,85,000 plus interest as per the terms.</td></tr>
              <tr><td>Instruction: limits</td><td>What will you accept? What must we not do?</td><td>Open to two instalments within 45 days. Wants to keep Neelkamal as a customer.</td></tr>
              <tr><td>Instruction: tone</td><td>How firm should we be?</td><td>Firm and professional. No threats.</td></tr>
              <tr><td>Instruction: approval</td><td>Who approves before anything is sent?</td><td>Neha approves every final draft.</td></tr>
              <tr><td>Fact</td><td>What happened, and which document shows it?</td><td>Invoice RC/26-27/041 for ₹95,000 dated 5 June 2026 (copy of invoice).</td></tr>
            </tbody>
          </table>
          <p>Confirm the instructions in writing. A short email to the client works: "As discussed, you have asked us to…". It avoids arguments later about what the client wanted.</p>
        </div>
        <div class="lc-card">
          <h3>The fact sheet</h3>
          <p>A <strong>fact sheet</strong> is a one or two page summary of the matter. It lists the facts in date order, with the document that proves each one. It also lists the gaps. The firm uses this format:</p>
          <pre><code>FACT SHEET
        Matter: [ ] | File no.: [ ] | Prepared by: [ ] | Date: [ ] | Checked by: [ ]
        1. Client: name, legal form, address, who gives instructions
        2. Other party: full legal name, legal form, registered address
        3. Instructions: goal, limits, tone, settlement room, who approves
        4. Key facts in date order: No. | Date | Event | Source document
        5. Money: each amount, due date, amount paid, balance, total
        6. Documents we have, and documents we still need
        7. Deadlines: legal time limits to check, client deadlines
        8. Gaps and open questions
        9. Confidential: what must not go into an AI tool</code></pre>
          <p>Here is part of section 4 for Rangrez Crafts (all names and facts are made up):</p>
          <table class="lc-table">
            <thead><tr><th>No.</th><th>Date</th><th>Event</th><th>Source</th></tr></thead>
            <tbody>
              <tr><td>1</td><td>25 May 2026</td><td>Rangrez sends a quotation with its standard terms: payment in 30 days, 18% interest a year on late payment.</td><td>Quotation RC/Q/2026/019</td></tr>
              <tr><td>2</td><td>28 May 2026</td><td>Neelkamal accepts the quotation and terms by email.</td><td>Email from purchase manager</td></tr>
              <tr><td>3</td><td>5 June 2026</td><td>Invoice RC/26-27/041, ₹95,000. Goods delivered 8 June.</td><td>Invoice, delivery challan DC-041</td></tr>
              <tr><td>4</td><td>3 July 2026</td><td>Invoice RC/26-27/052, ₹1,10,000. Goods delivered 6 July.</td><td>Invoice, challan DC-052</td></tr>
              <tr><td>5</td><td>1 August 2026</td><td>Invoice RC/26-27/063, ₹80,000. Goods delivered 4 August.</td><td>Invoice, challan DC-063</td></tr>
              <tr><td>6</td><td>10 September 2026</td><td>Cheque no. 318204 for ₹95,000 returned unpaid: "Funds Insufficient".</td><td>Bank return memo</td></tr>
              <tr><td>7</td><td>17 September 2026</td><td>Neelkamal says for the first time that some vases were chipped.</td><td>Email from accounts head</td></tr>
            </tbody>
          </table>
          <p>Section 8 (gaps) for this matter has two key questions. First: "Has Neha got her Udyam registration certificate, and what is its date?" Second: "On which date did Rangrez first learn that the cheque bounced?" Both answers affect the law that applies and the deadlines. Adv. Sameer Rao will decide on them.</p>
        </div>
        <div class="lc-card">
          <h3>From fact sheet to prompt</h3>
          <p>A weak prompt makes the AI guess. A good prompt gives the facts, the instructions and clear rules.</p>
          <table class="lc-table">
            <thead><tr><th>Weak prompt</th><th>Better prompt</th></tr></thead>
            <tbody>
              <tr><td><pre><code>Write a legal notice to
        Neelkamal for the money
        they owe my client.</code></pre></td><td><pre><code>You are assisting an Indian advocate.
        Draft a first-draft payment demand
        letter for the advocate to review.
        Use ONLY the facts in the fact sheet
        below. If a fact you need is missing,
        write [MISSING: what is needed].
        Do not cite cases or sections.
        Tone: firm, professional, no threats.
        Fact sheet: [paste sections 1-5]</code></pre></td></tr>
            </tbody>
          </table>
          <p>Three rules make the biggest difference:</p>
          <ul class="lc-list">
            <li><strong>Only these facts.</strong> Tell the AI not to add facts, law or cases.</li>
            <li><strong>Mark the gaps.</strong> A <code>[MISSING]</code> tag is much safer than a smooth guess.</li>
            <li><strong>Protect the client.</strong> In a tool your firm has not approved, replace names with labels such as "Client A" and "Buyer B". Leave out bank details and personal data.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Activity: from first call to prompt</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put Pooja's steps for the Rangrez Crafts matter in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Take Neha's instructions on the call and confirm them to her by email</li>
              <li data-order="2">Collect the quotation, invoices, challans, emails, cheque and bank memo</li>
              <li data-order="3">Write the key facts in date order, with a source for each one</li>
              <li data-order="4">Check every amount and date against the documents</li>
              <li data-order="5">List the gaps and send the questions to Neha</li>
              <li data-order="6">Mask confidential details if the AI tool is not approved by the firm</li>
              <li data-order="7">Give the AI the fact sheet with clear drafting rules</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Turn messy call notes into a clean fact sheet. The sample notes have mistakes on purpose. You can paste your own notes instead, with names masked.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a paralegal at an Indian law firm. Turn my rough call notes into a fact sheet for the advocate.

        Notes: [Call with client A (Rajasthan supplier), 24 Sept 2026. Buyer B (Maharashtra) has not paid 3 invoices: 041 dated 5 June for 95k, 052 dated 3 July for 1.1L, 063 dated 1 Aug for about 80k. Client says total is 2.95L. B gave a cheque for 90k against 041. It bounced, "funds insufficient". Client got the bank memo around 11 Sept. B now says some vases were chipped. B told us only last week. Terms on quotation: pay in 30 days, 18% interest. Client wants the money but is OK with instalments. Wants to keep B as a customer.]

        Use these headings: Client; Other party; Instructions; Key facts (table: No. | Date | Event | Source document); Money (table with a total); Documents needed; Deadlines to check; Gaps and questions for the client.

        Rules: Use only the notes. Do not invent facts. If notes conflict or numbers do not add up, write [CHECK: ...]. If a source is unknown, write [SOURCE?]. Do not give legal advice or state time limits.</pre>
            <ul class="ai-try-checks">
              <li>It flags the total: 95,000 + 1,10,000 + 80,000 is ₹2,85,000, not ₹2,95,000.</li>
              <li>It flags the cheque amount (90k) as something to check against the cheque and invoice 041.</li>
              <li>Every key fact has a source or a [SOURCE?] tag.</li>
              <li>The gaps list includes the exact date the client learned of the bounce and any written damage complaint.</li>
              <li>It does not add facts or legal deadlines that are not in the notes.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Facts first, prompt second. A fact sheet with sources and a clear gaps list is the best prompt you can write. When AI meets a gap, it should ask a question, not make up an answer.
        </div>
      HTML
      starter_code: nil
    },
    5 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-law">Law</div>
          <h1 class="lc-title">Business Letters and Emails</h1>
        </div>
        <p class="lc-lead">Much legal work is done by letter and email. A formal letter to the other side, a clear update to the client and a careful settlement offer all need different styles. In this lesson you will learn the parts of a formal legal letter. You will also learn to write a client update that a busy business owner can act on. Finally, you will learn what "without prejudice" means and when to use it. AI can draft each of these quickly, if you give it the facts and the purpose.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 290" role="img" aria-label="A mock-up of a formal law firm letter with its parts labelled: letterhead, reference and date, how it is sent, addressee, heading, subject line, body, and signature with enclosures.">
            <defs><marker id="ld5a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12" fill="#e2e0f0">
              <rect x="40" y="14" width="300" height="266" rx="8" fill="#1f1f44" stroke="#8b5cf6"/>
              <rect x="40" y="14" width="300" height="38" rx="8" fill="#27274e"/>
              <text x="190" y="38" text-anchor="middle" font-weight="700" fill="#c4b5fd">MEHRA &amp; RAO ASSOCIATES</text>
              <text x="56" y="70">Ref: MRA/2026/118</text>
              <text x="326" y="70" text-anchor="end">3 October 2026</text>
              <text x="56" y="90" font-size="11" fill="#9b99b8">By email and speed post</text>
              <text x="56" y="110">Neelkamal Lifestyle Pvt Ltd</text>
              <text x="56" y="126" font-size="11" fill="#9b99b8">Station Road, Maharashtra</text>
              <text x="56" y="150" font-weight="700" fill="#fcd34d">WITHOUT PREJUDICE</text>
              <text x="56" y="170" font-weight="700">Re: Invoices RC/26-27/041, 052, 063</text>
              <rect x="56" y="186" width="268" height="8" rx="3" fill="#4b4a78"/>
              <rect x="56" y="200" width="250" height="8" rx="3" fill="#4b4a78"/>
              <rect x="56" y="214" width="262" height="8" rx="3" fill="#4b4a78"/>
              <rect x="56" y="228" width="180" height="8" rx="3" fill="#4b4a78"/>
              <text x="56" y="254">Adv. Sameer Rao</text>
              <text x="56" y="270" font-size="11" fill="#9b99b8">Encl: invoices, challans</text>
              <g font-size="12.5" text-anchor="start">
                <text x="402" y="37">Letterhead and firm details</text>
                <text x="402" y="68">Reference number and date</text>
                <text x="402" y="92">How it is sent</text>
                <text x="402" y="116">Addressee: exact legal name</text>
                <text x="402" y="150" fill="#fcd34d">Heading: open or without prejudice</text>
                <text x="402" y="174">Subject line with references</text>
                <text x="402" y="214">Body: facts, request, deadline</text>
                <text x="402" y="262">Signature and enclosures</text>
              </g>
              <g stroke="#9b99b8" stroke-width="1.2" fill="none" marker-end="url(#ld5a)">
                <line x1="396" y1="33" x2="346" y2="33"/>
                <line x1="396" y1="64" x2="346" y2="64"/>
                <line x1="396" y1="88" x2="346" y2="88"/>
                <line x1="396" y1="112" x2="346" y2="112"/>
                <line x1="396" y1="146" x2="346" y2="146"/>
                <line x1="396" y1="170" x2="346" y2="170"/>
                <line x1="396" y1="210" x2="346" y2="210"/>
                <line x1="396" y1="258" x2="346" y2="258"/>
              </g>
            </g>
          </svg>
          <figcaption>Every part has a job. The heading tells the reader, and later a court, what kind of letter this is.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The parts of a formal letter</h3>
          <table class="lc-table">
            <thead><tr><th>Part</th><th>Why it matters</th><th>Example</th></tr></thead>
            <tbody>
              <tr><td>Reference and date</td><td>Links the letter to the file and fixes when it was sent.</td><td>Ref: MRA/2026/118, 3 October 2026</td></tr>
              <tr><td>How it is sent</td><td>You may need proof that the letter was sent and received.</td><td>By email and speed post. Keep the receipts and tracking records.</td></tr>
              <tr><td>Addressee</td><td>The exact legal name and address of the other party.</td><td>Neelkamal Lifestyle Pvt Ltd, at its registered office</td></tr>
              <tr><td>Subject line</td><td>Tells the reader at once what the letter is about.</td><td>Re: Unpaid invoices RC/26-27/041, 052 and 063</td></tr>
              <tr><td>Opening</td><td>Says who you act for.</td><td>"We act for Rangrez Crafts, Rajasthan, and write on its instructions."</td></tr>
              <tr><td>Body</td><td>Facts in date order, then the request, then the deadline.</td><td>"Please pay ₹2,85,000 within 15 (fifteen) days of receiving this letter."</td></tr>
              <tr><td>Signature and enclosures</td><td>Shows who is responsible, and what is attached.</td><td>Adv. Sameer Rao; Encl: copies of invoices and challans</td></tr>
            </tbody>
          </table>
          <p>One more rule for law firms in India. Bar Council of India rules do not allow advocates to advertise or solicit work. So do not use AI to write "cold" letters or emails asking businesses to become clients. Check the current rules.</p>
        </div>
        <div class="lc-card">
          <h3>Client updates that people can act on</h3>
          <p>Neha runs a business. She does not want a long legal essay. She wants to know what happened, what happens next and what she must do. A good update has five parts: a one-line summary, what happened, next steps, decisions or documents needed from the client, and a date.</p>
          <table class="lc-table">
            <thead><tr><th>Weak prompt</th><th>Better prompt</th></tr></thead>
            <tbody>
              <tr><td><pre><code>Write an update email
        to my client about
        her case.</code></pre></td><td><pre><code>Write a client update email from an
        advocate to a small-business owner.
        Use this structure: summary in one line,
        what happened, next steps, what we need
        from you (with a date).
        Facts: [paste from the fact sheet]
        Under 200 words. Plain English, no legal
        jargon. Do not promise any result.</code></pre></td></tr>
            </tbody>
          </table>
          <p>Here is the kind of update the better prompt gives, after Adv. Sameer Rao checks and edits it:</p>
          <pre><code>Subject: Neelkamal payment: next steps (our ref MRA/2026/118)

        Dear Neha,

        In short: we will send the legal notices to Neelkamal this week.

        What happened: We have checked the three invoices (total
        ₹2,85,000), the delivery challans and the bank memo for the
        ₹95,000 cheque.

        Next steps: The law sets a strict time limit for a cheque bounce
        notice. We will send it well within that limit.

        What we need from you by Thursday, 1 October:
        1. Your Udyam registration certificate.
        2. Your packing photos for the vases under invoice 052.
        3. Your approval of the draft notices, which we will email tomorrow.

        Regards,
        Adv. Sameer Rao, Mehra &amp; Rao Associates</code></pre>
          <p>Check before sending: every amount, every date and every promise. An update is not the place to guess the outcome of the case.</p>
        </div>
        <div class="lc-card">
          <h3>Without-prejudice letters</h3>
          <p>A <strong>without-prejudice</strong> letter is a genuine offer to settle a dispute. The label means the parties do not want the offer used as evidence against them. In India, section 21 of the Bharatiya Sakshya Adhiniyam 2023 deals with this. It replaced section 23 of the Indian Evidence Act. In civil cases, an admission made on an express condition that it will not be given in evidence is generally not relevant.</p>
          <ul class="lc-list">
            <li><strong>Use it</strong> for real settlement talks: an offer of instalments, a discount or a meeting.</li>
            <li><strong>Keep it separate.</strong> Do not put a settlement offer inside a legal notice or an open letter. Send two documents.</li>
            <li><strong>The label is not magic.</strong> A court looks at the substance. A letter with no real offer to settle may not be protected.</li>
            <li><strong>Still write carefully.</strong> Do not admit facts you do not need to admit, and reserve the client's rights.</li>
          </ul>
          <p>Neha is willing to accept two instalments within 45 days and to drop the interest if both are paid on time. That offer goes in a without-prejudice letter. The demand for the full amount goes in an open notice. Whether and how to make any offer is a decision for the client and the lawyer. This lesson is general education, not legal advice.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: which document does it belong in?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Mehra &amp; Rao Associates is writing to Neelkamal and to Neha. Sort each item.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="open" data-label="Open letter or notice"></div>
              <div data-sorter-target="bucket" data-bucket="wp" data-label="Without-prejudice letter"></div>
              <div data-sorter-target="bucket" data-bucket="internal" data-label="Internal only: do not send"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="open" data-why="A demand for the full amount is an open position. You may want to show it to a court later.">A demand to pay all three invoices, ₹2,85,000, by a fixed date</li>
              <li data-bucket="wp" data-why="It is a genuine offer to settle, so it belongs in a separate without-prejudice letter.">An offer: pay in two instalments within 45 days and the interest is waived</li>
              <li data-bucket="internal" data-why="This is the lawyer's own view of the case. It must never go to the other side.">Sameer's note that Neelkamal's damage claim looks weak</li>
              <li data-bucket="open" data-why="Sending documents that support your claim is an open step.">A covering letter enclosing copies of the signed delivery challans</li>
              <li data-bucket="wp" data-why="A proposal to discuss a discount is part of settlement talks.">A proposal to meet and discuss a small discount on the disputed vases</li>
              <li data-bucket="internal" data-why="Working notes and gaps stay inside the firm.">Pooja's list of gaps in the fact sheet</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to draft a without-prejudice settlement letter and then check its own draft for risky sentences.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an associate at an Indian law firm. Draft a short letter headed "WITHOUT PREJUDICE" from our firm, for our client [a Rajasthan handicrafts supplier], to [a Maharashtra retail chain].

        Purpose: a genuine offer to settle unpaid invoices.
        Facts: [Three invoices total ₹2,85,000. All are overdue. The buyer now says some vases were chipped, but raised this only in September, weeks after delivery.]
        Offer: [The buyer pays ₹2,85,000 in two equal instalments within 45 days. If both are paid on time, our client will waive interest.]
        The offer is open until [15 October 2026].

        Rules: Do not admit that any goods were damaged. Do not threaten. Say that our client's rights are reserved if the offer is not accepted. Do not cite cases or sections. Polite, firm, simple English, under 250 words.

        After the letter, list:
        1. Any sentence that could be read as an admission.
        2. Facts and numbers I must check before sending.
        3. Decisions for the lawyer and the client.</pre>
            <ul class="ai-try-checks">
              <li>The letter is clearly headed "WITHOUT PREJUDICE" and makes a real offer.</li>
              <li>Two equal instalments of ₹2,85,000 are ₹1,42,500 each. Check any figure the AI gives.</li>
              <li>No sentence accepts that the goods were damaged.</li>
              <li>It reserves the client's rights and does not threaten.</li>
              <li>The lawyer and the client approve the final version before it is sent.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Decide the purpose before you draft. Is it an open letter, a client update or a settlement offer? Tell the AI the purpose and the facts, then check every fact, number and possible admission yourself.
        </div>
      HTML
      starter_code: nil
    },
    6 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-law">Law</div>
          <h1 class="lc-title">Legal Notices</h1>
        </div>
        <p class="lc-lead">A legal notice is a formal letter from a lawyer. It tells the other side what they owe and what will happen if they do not act. Some notices are required by law before a case can be filed, and they have strict time limits. In this lesson you will learn the structure of a demand notice for unpaid invoices. You will also learn the special rules for a cheque bounce notice under section 138 of the Negotiable Instruments Act 1881. You will see how to use AI for the first draft, and which dates, amounts and words the lawyer must check.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="A timeline of the Rangrez Crafts cheque: deposited 7 September, return memo 10 September, notice sent 3 October within the 30-day limit, notice received 6 October, and 15 days to pay ending 21 October. Below, the demand notice covers all three invoices and the section 138 notice covers only the cheque.">
            <defs><marker id="ld6a" markerUnits="userSpaceOnUse" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="16" y="22" text-anchor="start" font-size="12" fill="#9b99b8">Cheque no. 318204: key dates (made-up example)</text>
              <path d="M225,62 L225,52 L380,52 L380,62" stroke="#f59e0b" fill="none" stroke-width="1.5"/>
              <text x="302" y="44" font-size="12" fill="#fcd34d">30 days from the bank's information</text>
              <path d="M535,62 L535,52 L680,52 L680,62" stroke="#22d3ee" fill="none" stroke-width="1.5"/>
              <text x="607" y="44" font-size="12" fill="#67e8f9">15 days to pay</text>
              <line x1="40" y1="90" x2="736" y2="90" stroke="#4b4a78" stroke-width="3" marker-end="url(#ld6a)"/>
              <circle cx="80" cy="90" r="9" fill="#27274e" stroke="#3b82f6" stroke-width="2"/>
              <circle cx="225" cy="90" r="9" fill="#27274e" stroke="#ec4899" stroke-width="2"/>
              <circle cx="380" cy="90" r="9" fill="#27274e" stroke="#f59e0b" stroke-width="2"/>
              <circle cx="535" cy="90" r="9" fill="#27274e" stroke="#22d3ee" stroke-width="2"/>
              <circle cx="680" cy="90" r="9" fill="#27274e" stroke="#10b981" stroke-width="2"/>
              <text x="80" y="124" font-weight="700">7 Sep</text><text x="80" y="144" font-size="11.5" fill="#9b99b8">cheque deposited</text>
              <text x="225" y="124" font-weight="700">10 Sep</text><text x="225" y="144" font-size="11.5" fill="#9b99b8">return memo</text>
              <text x="380" y="124" font-weight="700">3 Oct</text><text x="380" y="144" font-size="11.5" fill="#9b99b8">notice sent</text>
              <text x="535" y="124" font-weight="700">6 Oct</text><text x="535" y="144" font-size="11.5" fill="#9b99b8">notice received</text>
              <text x="680" y="124" font-weight="700">21 Oct</text><text x="680" y="144" font-size="11.5" fill="#9b99b8">time to pay ends</text>
              <text x="225" y="162" font-size="11" fill="#f9a8d4">info: 10 or 11 Sep?</text>
              <text x="680" y="162" font-size="11" fill="#6ee7b7">then 1 month to file</text>
              <rect x="16" y="182" width="355" height="104" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="193" y="206" font-weight="700" fill="#c4b5fd">Demand notice</text>
              <g text-anchor="start" font-size="12.5">
                <text x="34" y="232">• all three invoices: ₹2,85,000</text>
                <text x="34" y="254">• interest at 18% a year, "as on" a date</text>
                <text x="34" y="276">• pay within 15 days of receipt</text>
              </g>
              <rect x="389" y="182" width="355" height="104" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="566" y="206" font-weight="700" fill="#fcd34d">Section 138 notice</text>
              <g text-anchor="start" font-size="12.5">
                <text x="407" y="232">• only cheque no. 318204</text>
                <text x="407" y="254">• demand exactly ₹95,000</text>
                <text x="407" y="276">• 15 days from receipt, set by the Act</text>
              </g>
            </g>
          </svg>
          <figcaption>The cheque notice has a legal deadline. Here the safe course is to count 30 days from 10 September, the earlier date. The lawyer decides and counts.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Two notices for the Rangrez Crafts matter</h3>
          <p>Neelkamal Lifestyle Pvt Ltd owes Rangrez Crafts ₹2,85,000 for three invoices. Its cheque for ₹95,000 against invoice RC/26-27/041 also bounced. Adv. Sameer Rao at Mehra &amp; Rao Associates decides to send two separate notices. Many lawyers keep them separate, so that the cheque notice stays simple. The lawyer decides this for each matter.</p>
          <table class="lc-table">
            <thead><tr><th></th><th>Demand notice</th><th>Section 138 notice</th></tr></thead>
            <tbody>
              <tr><td>Purpose</td><td>Asks for payment of all unpaid invoices before a civil claim.</td><td>A notice the Act requires before a cheque bounce complaint can be filed.</td></tr>
              <tr><td>Amount</td><td>₹2,85,000 plus interest at 18% a year under the standard terms.</td><td>Exactly the cheque amount: ₹95,000 (Rupees Ninety-Five Thousand only).</td></tr>
              <tr><td>Time limit to send</td><td>No fixed legal limit, but send it soon. Claims have limitation periods.</td><td>In general, within 30 days of receiving information from the bank that the cheque was returned.</td></tr>
              <tr><td>Time to pay</td><td>You choose a fair period, for example 15 days of receipt.</td><td>In general, 15 days from receipt of the notice, as set by the Act.</td></tr>
              <tr><td>Addressed to</td><td>The company at its registered office.</td><td>The company that drew the cheque, and the director who signed it. The lawyer decides who else.</td></tr>
            </tbody>
          </table>
          <p>These are general points, not legal advice. Time limits in cheque cases are strict. Missing one can end the case. Always check the current law and count the days with the lawyer.</p>
        </div>
        <div class="lc-card">
          <h3>The structure of a legal notice</h3>
          <p>Most Indian legal notices follow the same order. Pooja, the paralegal, uses this skeleton for the demand notice:</p>
          <pre><code>MEHRA &amp; RAO ASSOCIATES, Advocates, 3rd floor, Law Chambers, Maharashtra
        Ref: MRA/2026/118                              Date: 3 October 2026
        By speed post and email

        To: Neelkamal Lifestyle Private Limited, 2nd floor, Station Road,
            Maharashtra
            Attn: Mr Vikram Shah, Director; Mr Rakesh Bhatia, Accounts Head

        LEGAL NOTICE: DEMAND FOR PAYMENT OF ₹2,85,000 AND INTEREST

        1. Who we act for: Neha Rathore, sole proprietor of Rangrez Crafts,
           Rajasthan (our "Client").
        2. The contract: quotation RC/Q/2026/019 and its Standard Terms of
           Sale, accepted by your email of 28 May 2026.
        3. Supplies: three invoices, delivery challans signed without remarks.
        4. The amounts due: table of invoices, due dates and interest.
        5. Reminders: emails of 8 July, 10 August and 2 September 2026.
        6. Demand: pay ₹[total] within 15 (fifteen) days of receipt.
        7. What happens next: our Client may take the steps the law allows.
        8. Rights reserved: nothing in this notice waives any right.
        Signed: Adv. Sameer Rao, for Mehra &amp; Rao Associates</code></pre>
          <p>The amounts table must add up. Here is the interest worked out <strong>as on 3 October 2026</strong>, using simple interest: amount x 18% x days late / 365.</p>
          <table class="lc-table">
            <thead><tr><th>Invoice</th><th>Amount (₹)</th><th>Due date</th><th>Days late</th><th>Interest (₹)</th></tr></thead>
            <tbody>
              <tr><td>RC/26-27/041</td><td>95,000</td><td>5 July 2026</td><td>90</td><td>4,216.44</td></tr>
              <tr><td>RC/26-27/052</td><td>1,10,000</td><td>2 August 2026</td><td>62</td><td>3,363.29</td></tr>
              <tr><td>RC/26-27/063</td><td>80,000</td><td>31 August 2026</td><td>33</td><td>1,301.92</td></tr>
              <tr><td><strong>Total</strong></td><td><strong>2,85,000</strong></td><td></td><td></td><td><strong>8,881.65</strong></td></tr>
            </tbody>
          </table>
          <p>Principal plus interest on that date is ₹2,93,881.65. Interest keeps running, so the notice says "as on 3 October 2026" and "until the date of payment". Two more points for the lawyer. If Rangrez is a registered micro or small enterprise, the MSMED Act 2006 sets its own interest: compound interest with monthly rests at three times the bank rate notified by the RBI. It may be higher or lower than 18%, so the lawyer compares the two. And if the cheque is paid, the notice should say it will be adjusted against invoice 041, so nobody counts it twice.</p>
        </div>
        <div class="lc-card">
          <h3>The section 138 notice: precise and plain</h3>
          <p>The section 138 notice deals with one thing: the bounced cheque. It must state the cheque details exactly and demand the cheque amount. In <em>Kaveri Plastics v. Mahdoom Bawa Bahrudeen Noorul</em> (2025 INSC 1133), the Supreme Court held a notice invalid. The amount demanded was different from the cheque amount, and a typing error was no excuse. Read the judgment at the source before you rely on it.</p>
          <table class="lc-table">
            <thead><tr><th>Weak prompt</th><th>Better prompt</th></tr></thead>
            <tbody>
              <tr><td><pre><code>Write a cheque bounce
        notice to Neelkamal.
        Make it scary so they
        pay fast.</code></pre></td><td><pre><code>Draft a first-draft notice under
        section 138 of the NI Act for an
        advocate to review. Use ONLY these
        facts: cheque no. 318204 dated
        5 September 2026 for ₹95,000, drawn
        on [bank] by [company], signed by
        [director], returned "Funds
        Insufficient" by memo of 10 September
        2026. Demand exactly ₹95,000 within
        15 days of receipt. Firm, polite, no
        threats. Mark gaps as [MISSING].</code></pre></td></tr>
            </tbody>
          </table>
          <p><strong>Tone: firm, not threatening.</strong> A notice may state lawful next steps. For example: "our Client may file a complaint under section 138." The notice should not threaten arrest, police action, calls to Neelkamal's customers or posts on social media. Adding criminal "cheating" charges to a money dispute is a serious step. Only the lawyer should decide that. Neha also asked for a firm but respectful tone, because she wants to keep Neelkamal as a customer.</p>
          <p><strong>Proof of sending.</strong> Send by speed post or registered post with acknowledgement, and also by email. Keep the receipts, tracking pages and delivery proof in the file. In this example, the tracking shows delivery on 6 October 2026. So the 15 days to pay end on 21 October 2026. The lawyer confirms every count.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: from bounced cheque to notice</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put the steps for the Rangrez Crafts cheque notice in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Collect the original cheque, the return memo and the date the client first learned of the bounce</li>
              <li data-order="2">The lawyer counts the 30-day limit from the earlier date, 10 September 2026</li>
              <li data-order="3">Draft the notice with AI from the fact sheet, demanding exactly ₹95,000</li>
              <li data-order="4">Check the cheque number, date, bank, amount in figures and words, and the memo reason</li>
              <li data-order="5">The lawyer approves the tone and the addressees, and Neha approves the final draft</li>
              <li data-order="6">Send by speed post and email, and keep the receipts and tracking proof</li>
              <li data-order="7">Note the delivery date and diary the end of the 15 days to pay</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI for a first draft of a cheque bounce notice and a checklist for the lawyer. The facts are made up. Replace them with your own masked facts if you like.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an associate at an Indian law firm. Draft a FIRST DRAFT of a notice under section 138 of the Negotiable Instruments Act 1881. A senior advocate will review it.

        Facts (use only these):
        - Our client: [Client A, a Rajasthan supplier].
        - Drawer: [Buyer B Pvt Ltd, Maharashtra]. Signed by [Director X].
        - Cheque no. [318204] dated [5 September 2026] for [₹95,000], given against invoice [041].
        - Returned unpaid by memo dated [10 September 2026], reason "[Funds Insufficient]".

        Rules:
        1. Demand EXACTLY the cheque amount, in figures and words. Put no other sum in the demand.
        2. Ask for payment within 15 days of receipt of the notice.
        3. Firm and polite. No threats of arrest, police or public shaming.
        4. Do not cite any cases. Do not add facts. Mark gaps as [MISSING: ...].
        5. Use numbered paragraphs and simple English.

        After the draft, give a checklist for the advocate: every date, number and name to check against the documents, and the deadlines to count.</pre>
            <ul class="ai-try-checks">
              <li>The demand is exactly the cheque amount, and the figures match the words.</li>
              <li>The cheque number, date, bank and memo reason match the facts you gave.</li>
              <li>It gives 15 days from receipt and contains no threats.</li>
              <li>No invented cases, facts or extra charges appear.</li>
              <li>The lawyer still counts the 30-day limit to send the notice.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A legal notice can be the first document a court reads. Keep it factual, exact and calm. AI can build the structure in seconds, but the lawyer must check every date, amount and addressee, and count every time limit.
        </div>
      HTML
      starter_code: nil
    },
    7 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-law">Law</div>
          <h1 class="lc-title">Replies to Notices</h1>
        </div>
        <p class="lc-lead">When a legal notice arrives, the reply matters as much as the notice. A reply can be shown to a court later. Every sentence can help or hurt the person who sends it. In this lesson you will learn to answer a notice point by point, to avoid careless admissions and to reserve your client's rights. You will study a made-up reply from Neelkamal Lifestyle Pvt Ltd, which now says some vases were damaged. You will also see how AI can map a reply against the documents in minutes.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 290" role="img" aria-label="A point-by-point table for Neelkamal's reply. Each row shows what the reply says, the answer for Rangrez Crafts and the proof: goods received is admitted, chipped vases is denied with the challan, 18 percent never agreed is denied with the 28 May email, cheque as security is denied with the 12 August email, and Maharashtra courts only is for the lawyer to check.">
            <g font-family="inherit" font-size="12.5" fill="#e2e0f0">
              <rect x="16" y="14" width="728" height="36" rx="8" fill="#27274e" stroke="#8b5cf6"/>
              <g font-weight="700" fill="#c4b5fd">
                <text x="32" y="37">Neelkamal's reply says</text>
                <text x="296" y="37">Answer for Rangrez Crafts</text>
                <text x="566" y="37">Proof</text>
              </g>
              <rect x="16" y="54" width="728" height="186" rx="8" fill="#1f1f44" stroke="#4b4a78"/>
              <g stroke="#4b4a78"><line x1="16" y1="91" x2="744" y2="91"/><line x1="16" y1="128" x2="744" y2="128"/><line x1="16" y1="165" x2="744" y2="165"/><line x1="16" y1="202" x2="744" y2="202"/><line x1="280" y1="54" x2="280" y2="240"/><line x1="550" y1="54" x2="550" y2="240"/></g>
              <text x="32" y="77">Goods received (para 1)</text><text x="296" y="77" fill="#6ee7b7">Noted: an admission</text><text x="566" y="77">Their own reply</text>
              <text x="32" y="114">18 vases chipped (para 2)</text><text x="296" y="114" fill="#f9a8d4">Denied: no report in 7 days</text><text x="566" y="114">Challan DC-052</text>
              <text x="32" y="151">18% never agreed (para 3)</text><text x="296" y="151" fill="#f9a8d4">Denied: terms accepted</text><text x="566" y="151">Email of 28 May</text>
              <text x="32" y="188">Cheque was security (para 4)</text><text x="296" y="188" fill="#f9a8d4">Denied: sent for 041</text><text x="566" y="188">Email of 12 August</text>
              <text x="32" y="225">Maharashtra courts only (para 6)</text><text x="296" y="225" fill="#fcd34d">Lawyer to check</text><text x="566" y="225">Terms, clause 6</text>
              <text x="380" y="272" text-anchor="middle" font-size="12" fill="#9b99b8">Answer every point. Silence on a point can look like acceptance.</text>
            </g>
          </svg>
          <figcaption>A point-by-point table turns a long reply into a clear list of what is admitted, what is denied and what proof you have.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Neelkamal's reply (made-up example)</h3>
          <p>Neelkamal's advocate replied on 16 October 2026. This was within the 15 days, but Neelkamal did not pay. A reply does not stop the time limit in a cheque case. Here is a short version of the reply:</p>
          <pre><code>1. Our client admits it placed purchase orders NL/PO/0318, 0342 and
           0371 and received the goods.
        2. 18 of the 60 vases under invoice RC/26-27/052 were chipped on
           arrival. Our client's warehouse staff told your client's driver.
        3. Our client never agreed to interest at 18% per year.
        4. Cheque no. 318204 was given only as a security, not for any debt.
        5. Our client is ready to pay invoices 041 and 063 once your client
           issues a credit note of ₹27,000 for the damaged vases.
        6. Only the courts in Maharashtra have jurisdiction.
        7. Our client reserves all its rights.</code></pre>
          <p>Pooja asks the firm's approved AI tool to compare each paragraph with the documents. Then Adv. Sameer Rao checks the table himself. He finds two useful admissions, three claims that the documents contradict and two points he must decide.</p>
          <table class="lc-table">
            <thead><tr><th>Para</th><th>What it means for Rangrez</th><th>Document to check</th></tr></thead>
            <tbody>
              <tr><td>1</td><td>An admission. Neelkamal accepts it ordered and received all the goods.</td><td>POs and signed challans</td></tr>
              <tr><td>2</td><td>A new claim. The terms say damage must be reported in writing within 7 days of delivery. The first written complaint was the email of 17 September, about 10 weeks later.</td><td>Challan DC-052 (no remarks), terms clause 4, emails</td></tr>
              <tr><td>3</td><td>Contradicted. On 28 May 2026 Neelkamal wrote: "We accept your quotation and terms."</td><td>Email of 28 May, quotation page 2</td></tr>
              <tr><td>4</td><td>Contradicted. On 12 August Neelkamal wrote: "Sending a PDC for 041 today." A PDC is a post-dated cheque.</td><td>Email of 12 August</td></tr>
              <tr><td>5</td><td>An admission that invoices 041 and 063 are payable. The ₹27,000 figure has no basis given.</td><td>Ask for photos and a price calculation</td></tr>
              <tr><td>6</td><td>A legal point. The terms name Rajasthan courts. Cheque cases have their own rule on which court can hear them.</td><td>Terms clause 6; the lawyer checks the law</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>How to write a point-by-point reply</h3>
          <p>Rangrez does not have to answer every letter. But Adv. Sameer Rao wants the record to be clear on the damage claim. He drafts a short <strong>rejoinder</strong> (a reply to a reply). A good reply follows this structure:</p>
          <ol class="lc-list">
            <li><strong>Opening:</strong> who you act for, and the notice or letter you are answering, with its date and reference.</li>
            <li><strong>General denial:</strong> "Anything in your letter that is not expressly admitted below is denied." This stops silence being read as acceptance.</li>
            <li><strong>Each point in turn:</strong> admitted, denied or not known, with a short reason and the document.</li>
            <li><strong>Your client's position:</strong> the amount due and the demand, repeated in one place.</li>
            <li><strong>Reservation of rights:</strong> "Our Client reserves all its rights and remedies." Say nothing that sounds like a waiver.</li>
          </ol>
          <table class="lc-table">
            <thead><tr><th>Weak prompt</th><th>Better prompt</th></tr></thead>
            <tbody>
              <tr><td><pre><code>Reply to this letter
        and say they are
        wrong.</code></pre></td><td><pre><code>Map this reply against our facts. For
        each paragraph give: Admitted by them |
        Denied by us | Our proof | Gap. Then
        draft a point-by-point rejoinder with a
        general denial and a reservation of
        rights. Do not concede any fact not in
        our fact sheet. Mark every assumption
        as [CHECK]. Facts: [fact sheet].
        Reply: [their reply].</code></pre></td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Admissions to avoid</h3>
          <p>An <strong>admission</strong> is a statement that accepts a fact against your own side. Neelkamal's reply shows how easily this happens. Paragraph 5 was meant as an offer. It now reads as proof that two invoices are payable. If you act for the person replying, watch for these risky sentences:</p>
          <table class="lc-table">
            <thead><tr><th>Risky sentence</th><th>Why it is risky</th><th>Safer approach</th></tr></thead>
            <tbody>
              <tr><td>"We are ready to pay 041 and 063."</td><td>Admits the debt for those invoices.</td><td>Put any settlement offer in a separate without-prejudice letter.</td></tr>
              <tr><td>"We accept the goods were delivered in good condition, except the vases."</td><td>Gives up any other quality claim.</td><td>State only the facts your client can prove.</td></tr>
              <tr><td>"The cheque was given for invoice 041."</td><td>Links the cheque to a debt. In a cheque case, that helps the other side.</td><td>Say only what the documents show, after the lawyer decides.</td></tr>
              <tr><td>"Sorry, we were short of money."</td><td>An apology can read as accepting the claim.</td><td>Keep the reply factual. Apologies go in business talks, not in a reply.</td></tr>
              <tr><td>No answer to a key point</td><td>A court may ask why it was not denied.</td><td>Use a general denial and answer each point.</td></tr>
            </tbody>
          </table>
          <p>AI tools often write friendly, agreeable sentences. That habit is dangerous in a reply. Ask the AI to list every sentence that could be read as an admission, then check them yourself. This is general education, not legal advice. The lawyer decides what to admit.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: read the reply like a lawyer</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each statement from Neelkamal's reply. How should Mehra &amp; Rao Associates treat it?</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="admit" data-label="An admission we can use"></div>
              <div data-sorter-target="bucket" data-bucket="docs" data-label="The documents contradict it"></div>
              <div data-sorter-target="bucket" data-bucket="lawyer" data-label="Lawyer must check or ask"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="admit" data-why="Neelkamal accepts it ordered and received the goods. That supports the claim.">"Our client placed the purchase orders and received the goods."</li>
              <li data-bucket="admit" data-why="Meant as an offer, it reads as accepting that two invoices are payable.">"Our client is ready to pay invoices 041 and 063."</li>
              <li data-bucket="docs" data-why="The 28 May email says: &quot;We accept your quotation and terms.&quot;">"Our client never agreed to interest at 18% per year."</li>
              <li data-bucket="docs" data-why="The 12 August email says a PDC was being sent for invoice 041.">"The cheque was given only as a security."</li>
              <li data-bucket="docs" data-why="Challan DC-052 was signed with no remarks, and the first written complaint came about 10 weeks later.">"The vases were chipped on arrival and our staff said so."</li>
              <li data-bucket="lawyer" data-why="No photos, count check or price calculation support it. Ask for them.">"A credit note of ₹27,000 is due for the damaged vases."</li>
              <li data-bucket="lawyer" data-why="The terms name Rajasthan courts, and cheque cases have their own rule. This is a legal question for the lawyer.">"Only the courts in Maharashtra have jurisdiction."</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to map a reply against your facts and draft a short point-by-point rejoinder. The sample reply is made up. You can paste your own, with names masked.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an associate at an Indian law firm. We sent a demand notice for unpaid invoices. The other side has replied. Help me prepare a rejoinder for my senior to review.

        Our facts: [Buyer B accepted our quotation and terms by email on 28 May 2026. Terms: pay in 30 days; interest 18% a year; damage must be reported in writing within 7 days of delivery. All delivery challans were signed with no remarks. The first damage complaint was an email of 17 September 2026. On 12 August B emailed: "Sending a PDC for 041 today."]

        Their reply: [1. We received the goods. 2. Some vases were chipped and our staff told your driver. 3. We never agreed to 18% interest. 4. The cheque was only a security. 5. We will pay invoices 041 and 063 after a credit note.]

        Step 1: A table: Para | Their point | Admission, denial or new claim | Our proof | Gap to check.
        Step 2: A point-by-point rejoinder under 300 words. Include a general denial and a reservation of rights.

        Rules: Do not admit any fact. Do not threaten. Do not cite cases. Mark assumptions as [CHECK].</pre>
            <ul class="ai-try-checks">
              <li>Each of the five paragraphs is answered, with a document as proof where one exists.</li>
              <li>It spots the admissions in paragraphs 1 and 5 and uses them.</li>
              <li>It uses the 7-day term and the clean challans against the damage claim.</li>
              <li>The rejoinder has a general denial and reserves the client's rights.</li>
              <li>No sentence in your draft accepts any damage or waives interest.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Treat every reply as evidence. Answer each point, deny what is not admitted, back each answer with a document and reserve your rights. AI can map a reply against the facts fast. The lawyer decides what to say, and what to leave out.
        </div>
      HTML
      starter_code: nil
    },
    8 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-law">Law</div>
          <h1 class="lc-title">Consumer Complaints and Simple Petitions</h1>
        </div>
        <p class="lc-lead">A consumer complaint is how a buyer asks a Consumer Commission for help against a seller or service provider. It is one of the most common simple petitions in India, and many people file it online. In this lesson you will learn when the Consumer Protection Act 2019 applies, which commission to choose and how a complaint is built. You will also see why the Rangrez Crafts dispute is not a consumer case. AI can turn a client's story into a clear first draft. The lawyer checks the facts, the forum and the reliefs before anything is filed.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 320" role="img" aria-label="A decision tree. Who bought it and for what? If for personal use, the buyer is a consumer and can complain to a Consumer Commission: District up to 50 lakh rupees, State from 50 lakh to 2 crore, National above 2 crore. If for resale or business use, the buyer is not a consumer and other routes apply, such as a civil suit, the MSE Facilitation Council or a section 138 complaint.">
            <defs><marker id="ld8a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="250" y="14" width="260" height="46" rx="10" fill="#27274e" stroke="#8b5cf6"/>
              <text x="380" y="42" font-weight="700">Who bought it, and for what?</text>
              <rect x="16" y="104" width="372" height="62" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="202" y="130" font-weight="700" fill="#6ee7b7">Personal use: a consumer</text>
              <text x="202" y="152" font-size="11.5" fill="#9b99b8">example: Farzana's sofa for her home</text>
              <rect x="420" y="104" width="324" height="62" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="582" y="130" font-weight="700" fill="#f9a8d4">Resale or business use</text>
              <text x="582" y="152" font-size="11.5" fill="#9b99b8">example: Neelkamal buying stock</text>
              <rect x="16" y="206" width="120" height="62" rx="8" fill="#27274e" stroke="#3b82f6"/>
              <text x="76" y="231" font-weight="700">District</text><text x="76" y="252" font-size="11" fill="#9b99b8">up to ₹50 lakh</text>
              <rect x="142" y="206" width="120" height="62" rx="8" fill="#27274e" stroke="#3b82f6"/>
              <text x="202" y="231" font-weight="700">State</text><text x="202" y="252" font-size="11" fill="#9b99b8">₹50 lakh–₹2 crore</text>
              <rect x="268" y="206" width="120" height="62" rx="8" fill="#27274e" stroke="#3b82f6"/>
              <text x="328" y="231" font-weight="700">National</text><text x="328" y="252" font-size="11" fill="#9b99b8">above ₹2 crore</text>
              <rect x="420" y="206" width="324" height="62" rx="8" fill="#27274e" stroke="#f59e0b"/>
              <text x="582" y="231" font-weight="700">Not consumer law</text>
              <text x="582" y="252" font-size="11" fill="#9b99b8">civil suit, MSE Council, section 138</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#ld8a)">
                <line x1="330" y1="62" x2="230" y2="100"/>
                <line x1="430" y1="62" x2="560" y2="100"/>
                <line x1="150" y1="168" x2="86" y2="202"/>
                <line x1="202" y1="168" x2="202" y2="202"/>
                <line x1="254" y1="168" x2="318" y2="202"/>
                <line x1="582" y1="168" x2="582" y2="202"/>
              </g>
              <text x="380" y="300" font-size="12" fill="#9b99b8">Value means what was paid for the goods or service. Check the current limits.</text>
            </g>
          </svg>
          <figcaption>First ask whether the buyer is a consumer. Then choose the commission by the value paid. The limits shown are from the 2021 Rules; check the current rules before filing.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Is it a consumer dispute?</h3>
          <p>Under the Consumer Protection Act 2019, a <strong>consumer</strong> is a person who buys goods or hires a service for their own use. The Act leaves out a person who buys goods to resell them or for a commercial purpose. There is a narrow exception for people who use goods to earn a living by self-employment. Check the exact definition in section 2(7) on India Code.</p>
          <p><strong>Why Rangrez Crafts vs Neelkamal is not a consumer case.</strong> Neelkamal bought cushion covers, vases and diyas to sell in its six stores. That is buying for resale. Also, Rangrez is the seller asking for its money. Consumer law protects buyers against sellers, not sellers against buyers. So Rangrez uses other routes. It can make a civil claim for the invoices and a cheque bounce complaint. If its Udyam registration is valid, it may also go to the MSE Facilitation Council. This is a state body that hears late-payment claims by micro and small suppliers. The lawyer chooses.</p>
          <p><strong>A consumer example.</strong> Mehra &amp; Rao Associates also acts for Mrs Farzana Shaikh, who lives in Maharashtra. On 12 June 2026 she paid ₹1,18,000 for a sofa set from Sukhasan Furniture Pvt Ltd, a showroom near her home. (All names are made up.) It was delivered on 20 June with a cracked frame and torn fabric. She emailed photos the same day. A technician visited on 27 June and promised a replacement in 15 days. On 14 August the store refused, citing a "no returns" policy. The firm sent a legal notice on 2 September 2026. There was no reply.</p>
          <table class="lc-table">
            <thead><tr><th>Question</th><th>Farzana's answer</th><th>Rule to check</th></tr></thead>
            <tbody>
              <tr><td>Is she a consumer?</td><td>Yes. She bought the sofa for her home.</td><td>Section 2(7) of the 2019 Act</td></tr>
              <tr><td>Defect or deficiency?</td><td>A defect in goods, and a deficiency in after-sales service.</td><td>The definitions in section 2</td></tr>
              <tr><td>Which commission?</td><td>District Commission. ₹1,18,000 is well below ₹50 lakh.</td><td>The 2021 Jurisdiction Rules (check for changes)</td></tr>
              <tr><td>Which place?</td><td>The District Commission for her area, because the Act lets a complainant file where they live or work.</td><td>Section 34</td></tr>
              <tr><td>In time?</td><td>Yes. The limit is generally two years from the cause of action.</td><td>Section 69</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>The structure of a consumer complaint</h3>
          <p>The seller is called the <strong>opposite party</strong> in a consumer complaint. Commissions follow their own regulations on format, so check the current rules and the commission's checklist. A typical complaint has these parts:</p>
          <pre><code>BEFORE THE DISTRICT CONSUMER DISPUTES REDRESSAL COMMISSION, [place]
        Consumer Complaint No. ____ of 2026
        Mrs Farzana Shaikh, [address] ................... Complainant
                                versus
        Sukhasan Furniture Pvt Ltd, [address] ........... Opposite Party

        1. Index and list of dates (short, date-wise)
        2. The parties: who the complainant is, and why she is a consumer
        3. Facts: purchase, payment, delivery, defect, complaints, replies
        4. Defect or deficiency: what went wrong, in plain words
        5. Legal notice sent and the response (none)
        6. Cause of action: when and where it arose
        7. Jurisdiction: value paid (pecuniary) and place (territorial)
        8. Limitation: filed within time
        9. Reliefs (prayer): refund, compensation, costs, other relief
        10. Verification and affidavit signed by the complainant
        Annexures: invoice, payment proof, photos, emails, legal notice</code></pre>
          <p><strong>Filing online.</strong> Complaints were filed online on e-Daakhil from 2020. On 1 January 2025 the government merged e-Daakhil and older systems into one platform, <strong>e-Jagriti</strong>. It handles filing, fee payment and case tracking. Screens and steps change, so check the portal's current help pages. A consumer may file without a lawyer. Small complaints may have no fee, but check the current fee table.</p>
          <p><strong>Other simple petitions</strong> follow a similar pattern: a heading with the court and case number, the parties, a list of dates, facts, grounds, the prayer (what you ask for), then verification. Every court and commission has its own rules on format, court fees and affidavits. Use the forum's current rules, not an AI's memory of them.</p>
        </div>
        <div class="lc-card">
          <h3>Where AI helps, and where the lawyer decides</h3>
          <table class="lc-table">
            <thead><tr><th>AI can help with</th><th>The lawyer or client must decide or check</th></tr></thead>
            <tbody>
              <tr><td>Turning the client's emails into a list of dates</td><td>Every date against the original emails and invoice</td></tr>
              <tr><td>A first draft of the facts in numbered paragraphs</td><td>That nothing is exaggerated. The client signs an affidavit that the facts are true.</td></tr>
              <tr><td>Suggesting reliefs to consider</td><td>The actual amounts. Compensation must be reasonable and explained.</td></tr>
              <tr><td>A list of annexures</td><td>That each document exists and is legible</td></tr>
              <tr><td>A plain-language summary for the client</td><td>That the client understands and approves the complaint</td></tr>
            </tbody>
          </table>
          <p>Watch for three common AI errors. It may cite the Consumer Protection Act 1986, which was replaced by the 2019 Act. It may use old money limits for the commissions. And it may invent judgments on compensation. Check every rule and case at the source. This is general education, not legal advice.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: drafting Farzana's complaint</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Sameer's prompt">Adv. Sameer Rao gives the firm's approved AI tool the fact sheet for Farzana's sofa. He asks for a first-draft consumer complaint with a list of dates and a prayer.</li>
              <li data-kind="answer" data-label="AI draft">The AI writes a clear complaint. But it says the complaint is "under the Consumer Protection Act 1986". It addresses it to the State Commission. It asks for ₹10,00,000 as compensation.</li>
              <li data-kind="warn" data-label="Old Act, wrong forum">The 1986 Act was replaced by the 2019 Act. The value paid is ₹1,18,000, so the District Commission is the right forum under the current rules.</li>
              <li data-kind="warn" data-label="Invented number">Nobody gave the AI a compensation figure. It made one up. Sameer marks it [DECIDE WITH CLIENT].</li>
              <li data-kind="tool" data-label="Check the source">Pooja checks section 2(7), section 34 and the 2021 Jurisdiction Rules on India Code and the Department of Consumer Affairs website.</li>
              <li data-kind="result" data-label="Rules confirmed">The limits in the draft are corrected. The complaint goes to the District Commission for Farzana's area.</li>
              <li data-kind="check" data-label="Facts and affidavit">Farzana reads every paragraph. She corrects the technician's visit date to 27 June. Then she signs the affidavit, and the firm files on e-Jagriti.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to check whether a dispute is a consumer case and to outline a complaint. The sample facts are made up. Use your own masked facts if you like.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an associate at an Indian law firm. Help me prepare a first-draft outline of a consumer complaint for my senior to review.

        Facts: [On 12 June 2026, Mrs F paid ₹1,18,000 for a sofa set for her home from a local furniture showroom. It was delivered on 20 June with a cracked frame. She emailed photos the same day. A technician visited on 27 June and promised a replacement. On 14 August the store refused, citing a "no returns" policy. We sent a legal notice on 2 September 2026. No reply.]

        Part 1. Answer briefly, with the provision to check: Is she a "consumer" under the Consumer Protection Act 2019? Which commission fits the value paid? Which place can she file in? Is she within time?

        Part 2. An outline with headings: parties, list of dates, facts, defect or deficiency, cause of action, jurisdiction, limitation, reliefs, annexures.

        Rules: Use the 2019 Act, not the 1986 Act. Do not cite any cases. Do not invent compensation amounts; write [AMOUNT: decide with client]. Say "check the current rules" for money limits and fees. Simple English.</pre>
            <ul class="ai-try-checks">
              <li>It uses the 2019 Act and chooses the District Commission for this value.</li>
              <li>The list of dates matches the facts exactly.</li>
              <li>No compensation figure or court case is invented.</li>
              <li>It tells you to check the current limits, fees and filing steps.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Before you draft, ask two questions: is the buyer a consumer, and which commission fits the value paid? AI can shape the story into a clear complaint. The lawyer checks the forum, the rules and every relief, and the client confirms the facts on oath.
        </div>
      HTML
      starter_code: nil
    },
    9 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-law">Law</div>
          <h1 class="lc-title">Plain Language for Clients</h1>
        </div>
        <p class="lc-lead">Clients must understand what their documents say before they approve them. A business owner like Neha cannot decide well if she cannot follow the notice sent in her name. In this lesson you will learn to explain legal documents in simple words without changing what they mean. AI is very good at simplifying text. It is also good at dropping a condition or turning "may" into "will". You will learn a method to catch those changes before the client reads them.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="Before and after. A legal sentence from the cheque notice is rewritten in plain words for Neha. Below, four checks that must stay the same: the same people, the same amount, the same deadline and start date, and the same conditions such as may or will.">
            <defs><marker id="ld9a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="16" y="14" width="330" height="170" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="181" y="40" font-weight="700" fill="#c4b5fd">In the notice</text>
              <g font-size="12.5">
                <text x="181" y="70">"In the event the said sum of</text>
                <text x="181" y="92">₹95,000 is not paid within 15 days</text>
                <text x="181" y="114">of receipt hereof, our Client shall</text>
                <text x="181" y="136">be constrained to initiate</text>
                <text x="181" y="158">appropriate proceedings."</text>
              </g>
              <line x1="350" y1="99" x2="408" y2="99" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ld9a)"/>
              <rect x="414" y="14" width="330" height="170" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="579" y="40" font-weight="700" fill="#6ee7b7">For Neha</text>
              <g font-size="12.5">
                <text x="579" y="70">"If Neelkamal does not pay</text>
                <text x="579" y="92">₹95,000 within 15 days of getting</text>
                <text x="579" y="114">our notice, you can file a cheque</text>
                <text x="579" y="136">bounce case. We will advise you</text>
                <text x="579" y="158">first. You decide."</text>
              </g>
              <text x="380" y="214" font-size="12" fill="#9b99b8">Before you send a plain version, check that these did not change:</text>
              <rect x="16" y="230" width="172" height="52" rx="8" fill="#27274e" stroke="#3b82f6"/><text x="102" y="261">Same people</text>
              <rect x="201" y="230" width="172" height="52" rx="8" fill="#27274e" stroke="#22d3ee"/><text x="287" y="261">Same amount</text>
              <rect x="386" y="230" width="172" height="52" rx="8" fill="#27274e" stroke="#f59e0b"/><text x="472" y="252">Same deadline</text><text x="472" y="271" font-size="11" fill="#9b99b8">and start date</text>
              <rect x="571" y="230" width="173" height="52" rx="8" fill="#27274e" stroke="#ec4899"/><text x="657" y="252">Same conditions</text><text x="657" y="271" font-size="11" fill="#9b99b8">"may" is not "will"</text>
            </g>
          </svg>
          <figcaption>A plain version changes the words, not the deal. The people, amounts, deadlines and conditions must match the original.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>What plain language means for clients</h3>
          <p>Plain language is writing the reader can understand the first time. It is not a summary that leaves out the hard parts. For a client, a good explanation answers four questions:</p>
          <ol class="lc-list">
            <li><strong>What is this document?</strong> "This is the formal notice we will send about the bounced cheque."</li>
            <li><strong>What does it say?</strong> The main points, in order, in short sentences.</li>
            <li><strong>What happens next?</strong> Dates and possible steps, without promising a result.</li>
            <li><strong>What do you need to do?</strong> Approve, send a document or make a choice, by a date.</li>
          </ol>
          <table class="lc-table">
            <thead><tr><th>Legal wording</th><th>Plain wording for Neha</th><th>What must not change</th></tr></thead>
            <tbody>
              <tr><td>"within 15 days of receipt hereof"</td><td>"within 15 days after Neelkamal receives the notice"</td><td>The period starts on receipt, not on the date we send it.</td></tr>
              <tr><td>"cause of action"</td><td>"the event that gives you the right to file a case"</td><td>The exact date still matters for time limits.</td></tr>
              <tr><td>"without prejudice"</td><td>"a settlement offer that, in general, cannot be used as evidence against you"</td><td>"In general": the label does not protect every letter.</td></tr>
              <tr><td>"our Client reserves all its rights"</td><td>"you do not give up any legal right by sending this"</td><td>It does not mean you will use every right.</td></tr>
              <tr><td>"the Buyer shall pay interest at 18% per annum"</td><td>"Neelkamal must pay interest at 18% a year on late amounts"</td><td>"Must", not "may". It runs from the due date.</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>How AI changes meaning by accident</h3>
          <p>When you ask AI to "simplify", it tries to make the text shorter and friendlier. That is useful, but it can quietly change the law. Here are real kinds of mistakes to look for:</p>
          <table class="lc-table">
            <thead><tr><th>Original</th><th>AI's "simple" version</th><th>What went wrong</th></tr></thead>
            <tbody>
              <tr><td>"within 15 days of receipt of this notice"</td><td>"in 15 days"</td><td>The start date disappeared.</td></tr>
              <tr><td>"our Client may file a complaint"</td><td>"we will file a case"</td><td>A choice became a promise.</td></tr>
              <tr><td>"damage must be reported in writing within 7 days of delivery"</td><td>"damage must be reported quickly"</td><td>The fixed period and "in writing" were lost.</td></tr>
              <tr><td>"₹2,85,000 plus interest as on 3 October 2026"</td><td>"about ₹2.9 lakh"</td><td>An exact amount became a guess.</td></tr>
              <tr><td>"The claim is weak unless the challans show no remarks."</td><td>"The claim is weak."</td><td>The condition was dropped.</td></tr>
            </tbody>
          </table>
          <p>Fix this with your prompt. Tell the AI what must stay the same. Then ask it to show a table of every change it made. Read that table against the original yourself.</p>
          <table class="lc-table">
            <thead><tr><th>Weak prompt</th><th>Better prompt</th></tr></thead>
            <tbody>
              <tr><td><pre><code>Make this notice
        simple for my client.</code></pre></td><td><pre><code>Explain this notice to a business owner
        with no legal training. Keep every
        name, amount, date, period, start date
        and condition exactly. Keep "may" and
        "must" as they are. Use short sentences.
        Then list each legal term you replaced
        and your plain version. Do not add
        advice or predict the result.</code></pre></td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Worked example: explaining Neelkamal's reply to Neha</h3>
          <p>Adv. Sameer Rao asks AI for a first-draft email to Neha, then edits it. Here is the final version:</p>
          <pre><code>Subject: Neelkamal's reply to our notices (our ref MRA/2026/118)

        Dear Neha,

        In short: Neelkamal has replied but has not paid. Our position
        is still strong on the documents.

        What they say:
        1. They received all the goods. (This helps you.)
        2. 18 vases were chipped. They want a credit of ₹27,000.
        3. They never agreed to 18% interest.
        4. The cheque was only a "security".

        What we think: Their own emails of 28 May and 12 August go against
        points 3 and 4. The signed challans have no remarks, and your terms
        needed damage to be reported in writing within 7 days.

        What happens next: If Neelkamal does not pay ₹95,000 by 21 October
        2026, you can file a cheque bounce case. We will advise you before
        that date. You decide.

        What we need from you by 20 October 2026:
        1. Your packing photos for the vases.
        2. Your decision on whether to offer anything on the vases.

        Regards,
        Adv. Sameer Rao</code></pre>
          <p>Notice what the email does not do. It does not promise that Neha will win. It does not paste Neelkamal's whole reply. It keeps "you can" and "you decide", because filing is her choice. If Neha prefers Hindi, a first AI translation is fine as a draft. A qualified person must check it before it is sent. This is general education, not legal advice.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: meaning kept or meaning changed?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">An AI tool simplified parts of the Rangrez Crafts documents. Sort each plain version.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="kept" data-label="Meaning kept"></div>
              <div data-sorter-target="bucket" data-bucket="changed" data-label="Meaning changed: fix it"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="kept" data-why="The amount, the period and its start date are all the same.">"Neelkamal must pay each invoice within 30 days of the invoice date."</li>
              <li data-bucket="changed" data-why="&quot;May file&quot; became &quot;will file&quot;. A choice became a promise.">Original: "our Client may file a complaint". Plain: "we will file a case".</li>
              <li data-bucket="changed" data-why="The start date (receipt of the notice) was dropped.">Original: "within 15 days of receipt". Plain: "within 15 days".</li>
              <li data-bucket="kept" data-why="It explains the term correctly and keeps &quot;in general&quot;.">"Without prejudice" explained as "a settlement offer that, in general, cannot be used as evidence against you".</li>
              <li data-bucket="changed" data-why="&quot;In writing&quot; and the 7-day period were lost.">Original: "report damage in writing within 7 days of delivery". Plain: "tell us soon if anything is damaged".</li>
              <li data-bucket="kept" data-why="The exact figure and the &quot;as on&quot; date are both kept.">"You are owed ₹2,85,000, plus interest worked out as on 3 October 2026."</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to explain a legal paragraph to a client and to show every change it made. Use the sample, or paste your own paragraph with names masked.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an Indian advocate writing to a small-business client who has no legal training. English is her second language.

        Explain this paragraph from a legal notice we are sending for her:
        [In the event the said sum of ₹95,000 (Rupees Ninety-Five Thousand only) is not paid within 15 (fifteen) days of receipt of this notice, our Client may, without further reference to you, initiate appropriate proceedings, including under section 138 of the Negotiable Instruments Act 1881, at your risk as to costs and consequences.]

        Give three parts:
        1. A plain explanation in 3 to 5 short sentences. Say what the paragraph means and what the client may need to decide.
        2. A table: Original words | Plain words | Anything that could change the meaning.
        3. One sentence the client can reply with to approve or ask a question.

        Rules: Keep every amount, period and start date exactly. Keep "may" as a choice. Do not promise any result. Do not add legal advice.</pre>
            <ul class="ai-try-checks">
              <li>The amount is still ₹95,000 and the 15 days still start on receipt.</li>
              <li>"May" stays a choice. It does not become "will".</li>
              <li>The table covers the hard terms, such as "costs and consequences".</li>
              <li>It does not promise a result or add advice.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Simpler words, same meaning. Before a plain version goes to a client, check that the people, amounts, deadlines, start dates and conditions all match the original. Ask AI to list its changes, then read that list yourself.
        </div>
      HTML
      starter_code: nil
    },
    10 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-law">Law</div>
          <h1 class="lc-title">Drafting Agreements</h1>
        </div>
        <p class="lc-lead">Most agreements share one structure: parties, recitals, definitions, operative clauses, boilerplate, signatures and schedules. When you know what each part does, you can build any agreement faster, and you can spot what an AI draft has missed. In this lesson you will learn each part with examples from a supply agreement for Rangrez Crafts. The Rangrez dispute started because the deal rested on terms printed on a quotation. A proper agreement makes the rules clear before anything goes wrong.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 330" role="img" aria-label="A mock-up of an agreement with its parts stacked in order: title and date, parties, recitals, definitions, operative clauses, boilerplate, signatures and schedules. Labels on the right explain the job of each part.">
            <defs><marker id="ld10a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <rect x="40" y="12" width="300" height="306" rx="8" fill="#1f1f44" stroke="#8b5cf6"/>
              <g text-anchor="middle">
                <rect x="56" y="22" width="268" height="28" rx="5" fill="#27274e"/><text x="190" y="41" font-weight="700" fill="#c4b5fd">Title, date and place</text>
                <rect x="56" y="56" width="268" height="28" rx="5" fill="#27274e"/><text x="190" y="75">1. Parties</text>
                <rect x="56" y="90" width="268" height="28" rx="5" fill="#27274e"/><text x="190" y="109">2. Recitals (background)</text>
                <rect x="56" y="124" width="268" height="28" rx="5" fill="#27274e"/><text x="190" y="143">3. Definitions</text>
                <rect x="56" y="158" width="268" height="54" rx="5" fill="#27274e" stroke="#10b981"/><text x="190" y="181" font-weight="700" fill="#6ee7b7">4. Operative clauses</text><text x="190" y="200" font-size="11" fill="#9b99b8">supply, price, payment, delivery…</text>
                <rect x="56" y="218" width="268" height="28" rx="5" fill="#27274e"/><text x="190" y="237">5. Boilerplate</text>
                <rect x="56" y="252" width="268" height="28" rx="5" fill="#27274e"/><text x="190" y="271">6. Signatures</text>
                <rect x="56" y="286" width="268" height="24" rx="5" fill="#27274e" stroke="#f59e0b"/><text x="190" y="303">Schedules</text>
              </g>
              <g font-size="12.5" text-anchor="start">
                <text x="402" y="41">What deal, when and where signed</text>
                <text x="402" y="75">Who is bound: exact legal names</text>
                <text x="402" y="109">Why the deal exists: no duties here</text>
                <text x="402" y="143">Key words, defined once</text>
                <text x="402" y="190" fill="#6ee7b7">Who must do what, when, how much</text>
                <text x="402" y="237">Standard rules: notices, law, disputes</text>
                <text x="402" y="271">Authority to sign, stamp duty</text>
                <text x="402" y="303" fill="#fcd34d">Details: goods, prices, addresses</text>
              </g>
              <g stroke="#9b99b8" stroke-width="1.2" fill="none" marker-end="url(#ld10a)">
                <line x1="396" y1="37" x2="346" y2="37"/>
                <line x1="396" y1="71" x2="346" y2="71"/>
                <line x1="396" y1="105" x2="346" y2="105"/>
                <line x1="396" y1="139" x2="346" y2="139"/>
                <line x1="396" y1="186" x2="346" y2="186"/>
                <line x1="396" y1="233" x2="346" y2="233"/>
                <line x1="396" y1="267" x2="346" y2="267"/>
                <line x1="396" y1="299" x2="346" y2="299"/>
              </g>
            </g>
          </svg>
          <figcaption>Every part has one job. The operative clauses carry the deal. The other parts make it clear, complete and enforceable.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Parties and recitals</h3>
          <p>The <strong>parties</strong> clause names exactly who is bound. Use the full legal name, the legal form and the address. The legal form matters. Rangrez Crafts is a sole proprietorship, so it is not a separate legal person. The party is Neha herself, trading under the business name. Neelkamal is a company, so it signs through an authorised person.</p>
          <pre><code>THIS SUPPLY AGREEMENT is made at [place] on [date] between:

        1. NEHA RATHORE, sole proprietor of RANGREZ CRAFTS, Plot 14,
           Industrial Area, Rajasthan (the "Seller"); and

        2. NEELKAMAL LIFESTYLE PRIVATE LIMITED, a company incorporated
           under the Companies Act, [year], CIN [ ], having its
           registered office at 2nd floor, Station Road,
           Maharashtra, acting through [name, title],
           authorised by a board resolution dated [ ] (the "Buyer").

        BACKGROUND
        A. The Seller makes and sells handcrafted textiles, pottery and
           brass decor.
        B. The Buyer runs home-decor stores and wishes to buy goods from
           the Seller from time to time.
        C. The parties wish to record the terms that apply to every
           purchase order.</code></pre>
          <p><strong>Recitals</strong> (the "Background") explain why the deal exists. They can help a court understand the purpose. Do not put duties in recitals. "The Buyer shall pay" belongs in an operative clause. Also note the style rules: defined terms in bold quotes at first use, no "hereinafter" and no "witnesseth".</p>
        </div>
        <div class="lc-card">
          <h3>Definitions and operative clauses</h3>
          <p><strong>Definitions</strong> give key words one fixed meaning. Put long ones in clause 1. Define only words you use, and use every word you define.</p>
          <pre><code>1.1 "Goods" means the products listed in Schedule 1, as updated
            in writing by the parties.
        1.2 "Purchase Order" means a written order for Goods sent by
            the Buyer and accepted in writing by the Seller.
        1.3 "Delivery Date" means the date on which the Buyer or its
            staff signs the delivery challan for the Goods.</code></pre>
          <p><strong>Operative clauses</strong> carry the deal. Each one says who must do what, by when and what happens if they do not. For this supply agreement they are:</p>
          <table class="lc-table">
            <thead><tr><th>Clause</th><th>Example for Rangrez and Neelkamal</th><th>Choice the lawyer and client make</th></tr></thead>
            <tbody>
              <tr><td>Orders and supply</td><td>The Seller shall supply Goods under accepted Purchase Orders.</td><td>Minimum order size, lead time</td></tr>
              <tr><td>Price</td><td>Prices as in Schedule 1, inclusive of GST.</td><td>How and when prices can change</td></tr>
              <tr><td>Delivery, inspection and acceptance</td><td>The Buyer shall report shortage or damage in writing, with photos, within 7 (seven) days of the Delivery Date.</td><td>The period; what counts as a report</td></tr>
              <tr><td>Payment and late interest</td><td>The Buyer shall pay each invoice within 30 (thirty) days of the invoice date.</td><td>The Seller may be a registered micro or small enterprise. If so, the MSMED Act caps the period at 45 days from acceptance of the goods. It also sets its own interest.</td></tr>
              <tr><td>Title and risk</td><td>Risk passes on the Delivery Date; title passes on full payment.</td><td>Fit with the Sale of Goods Act 1930</td></tr>
              <tr><td>Term and termination</td><td>Two years; either party may end it on 60 days' written notice.</td><td>Length, notice, what survives</td></tr>
            </tbody>
          </table>
          <p>Look at the inspection clause. It asks for "photos". The Neelkamal dispute shows why that detail helps both sides.</p>
        </div>
        <div class="lc-card">
          <h3>Boilerplate, signatures and schedules</h3>
          <p><strong>Boilerplate</strong> is the set of standard clauses near the end. People skip them, but they decide what happens when something goes wrong. Never copy boilerplate from an AI template without checking it fits Indian law.</p>
          <table class="lc-table">
            <thead><tr><th>Boilerplate clause</th><th>What it does</th><th>Check</th></tr></thead>
            <tbody>
              <tr><td>Notices</td><td>How and where formal notices are sent.</td><td>Addresses in a schedule; email and post both allowed?</td></tr>
              <tr><td>Entire agreement</td><td>This document replaces earlier talks and quotation terms.</td><td>That nothing needed is left in old emails.</td></tr>
              <tr><td>Amendment</td><td>Changes only in writing, signed by both parties.</td><td>Who can sign changes.</td></tr>
              <tr><td>Governing law and disputes</td><td>Indian law; courts or arbitration, and where.</td><td>The seat and rules under the Arbitration and Conciliation Act 1996.</td></tr>
              <tr><td>Force majeure</td><td>What happens when events outside a party's control stop performance.</td><td>Which events; whether payment is excluded.</td></tr>
              <tr><td>Severability, waiver, assignment, counterparts</td><td>Keep the rest valid; no silent waiver; no transfer without consent; signing in copies.</td><td>Electronic signing under the Information Technology Act 2000.</td></tr>
            </tbody>
          </table>
          <p><strong>Signatures and stamping.</strong> Each signatory needs authority, such as a board resolution for a company. Stamp duty depends on the state stamp law and where the document is signed. Many states allow e-stamping. Check the current state law before signing.</p>
          <p><strong>Schedules</strong> hold the details that change more often: Schedule 1 Goods and prices, Schedule 2 delivery addresses (stores and warehouse), Schedule 3 packing and quality standards, Schedule 4 notice details. The main text stays clean, and the parties can update a schedule in writing.</p>
          <table class="lc-table">
            <thead><tr><th>Weak prompt</th><th>Better prompt</th></tr></thead>
            <tbody>
              <tr><td><pre><code>Write a supply
        agreement between my
        client and a retailer.</code></pre></td><td><pre><code>Give me a SKELETON only: headings and
        one line on what each clause must
        cover, for a supply agreement under
        Indian law. Seller: a Rajasthan sole
        proprietor. Buyer: a Maharashtra company.
        Use: parties, recitals, definitions,
        operative clauses, boilerplate,
        signatures, schedules. Mark every
        commercial choice as [DECIDE] and
        every law point as [CHECK LAW].</code></pre></td></tr>
            </tbody>
          </table>
          <p>A skeleton first is safer than a full AI draft. You then fill each heading from your clause bank. This is general education, not legal advice. The lawyer settles the final text.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: build the agreement in order</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put the parts of the Rangrez Crafts supply agreement in the order they usually appear.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Title, date and place of signing</li>
              <li data-order="2">Parties: Neha Rathore trading as Rangrez Crafts, and Neelkamal Lifestyle Private Limited</li>
              <li data-order="3">Recitals: the background to the deal</li>
              <li data-order="4">Definitions: "Goods", "Purchase Order", "Delivery Date"</li>
              <li data-order="5">Operative clauses: supply, price, inspection, payment, termination</li>
              <li data-order="6">Boilerplate: notices, entire agreement, governing law, disputes</li>
              <li data-order="7">Signature blocks, then Schedule 1 (Goods and prices)</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to turn a short term sheet into an agreement skeleton and a list of decisions. The sample terms are made up. Use your own terms with names masked.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a contracts lawyer in India. Build a SKELETON of a supply agreement, not a full draft.

        Term sheet: [Seller: a sole proprietor in Rajasthan making handicrafts. Buyer: a private limited company with stores in Maharashtra. Goods under purchase orders. Prices in a schedule, inclusive of GST. Payment within 30 days of invoice; interest on late payment. Damage reported in writing with photos within 7 days of delivery. Term: 2 years. Disputes: arbitration.]

        Give:
        1. The skeleton in this order: parties, recitals, definitions, operative clauses, boilerplate, signatures, schedules. For each heading, one line on what it must cover.
        2. A list of [DECIDE] points for the client, such as price changes and minimum orders.
        3. A list of [CHECK LAW] points for the lawyer, such as stamp duty, the arbitration seat and the MSMED Act if the Seller is a registered micro or small enterprise.
        4. Every defined term you would use, with a one-line meaning.

        Rules: No full clauses. Do not cite cases. Name Indian Acts only in general words. Simple English.</pre>
            <ul class="ai-try-checks">
              <li>The parties section treats the sole proprietor as the person, not the business name alone.</li>
              <li>No duties are placed in the recitals.</li>
              <li>The lists separate business choices from law points.</li>
              <li>Every defined term is used, and no US-style clauses (such as jury trial) appear.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Know the structure, and you can check any agreement. Ask AI for the skeleton, fill it from clauses you trust, and let the lawyer decide the law points. The client decides the business terms.
        </div>
      HTML
      starter_code: nil
    },
    11 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-law">Law</div>
          <h1 class="lc-title">NDAs and Service Agreements</h1>
        </div>
        <p class="lc-lead">Two documents that businesses sign very often are the NDA and the service agreement. An NDA (non-disclosure agreement) is a contract in which the parties promise to keep shared information secret. AI can produce both in seconds. But every clause hides a choice: who is protected, for how long, who owns the work and who pays if things go wrong. In this lesson you will go through both documents clause by clause. You will learn which parts AI can draft well and which choices the client and the lawyer must make.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 330" role="img" aria-label="Two panels. Left: the clauses of an NDA, each with the choice it needs, such as mutual or one-way and how many years. Right: the clauses of a service agreement, each with its choice, such as who owns the designs.">
            <defs><marker id="ld11a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12.5" fill="#e2e0f0">
              <rect x="16" y="14" width="355" height="276" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="193" y="38" text-anchor="middle" font-size="13" font-weight="700" fill="#c4b5fd">NDA: Rangrez and Kesar Studio</text>
              <rect x="389" y="14" width="355" height="276" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="566" y="38" text-anchor="middle" font-size="13" font-weight="700" fill="#93c5fd">Service agreement: design work</text>
              <g>
                <rect x="30" y="52" width="327" height="28" rx="6" fill="#27274e"/>
                <text x="42" y="71">Parties and purpose</text><text x="345" y="71" text-anchor="end" font-size="11" fill="#fcd34d">mutual or one-way?</text>
                <rect x="30" y="86" width="327" height="28" rx="6" fill="#27274e"/>
                <text x="42" y="105">Confidential Information</text><text x="345" y="105" text-anchor="end" font-size="11" fill="#fcd34d">what is covered?</text>
                <rect x="30" y="120" width="327" height="28" rx="6" fill="#27274e"/>
                <text x="42" y="139">Exclusions</text><text x="345" y="139" text-anchor="end" font-size="11" fill="#9b99b8">standard list</text>
                <rect x="30" y="154" width="327" height="28" rx="6" fill="#27274e"/>
                <text x="42" y="173">Use and sharing</text><text x="345" y="173" text-anchor="end" font-size="11" fill="#9b99b8">purpose only</text>
                <rect x="30" y="188" width="327" height="28" rx="6" fill="#27274e"/>
                <text x="42" y="207">How long it lasts</text><text x="345" y="207" text-anchor="end" font-size="11" fill="#fcd34d">how many years?</text>
                <rect x="30" y="222" width="327" height="28" rx="6" fill="#27274e"/>
                <text x="42" y="241">Return or destroy</text><text x="345" y="241" text-anchor="end" font-size="11" fill="#9b99b8">within 15 days</text>
                <rect x="30" y="256" width="327" height="28" rx="6" fill="#27274e"/>
                <text x="42" y="275">Remedies and law</text><text x="345" y="275" text-anchor="end" font-size="11" fill="#fcd34d">courts or arbitration?</text>
              </g>
              <g>
                <rect x="403" y="52" width="327" height="28" rx="6" fill="#27274e"/>
                <text x="415" y="71">Scope and deliverables</text><text x="718" y="71" text-anchor="end" font-size="11" fill="#9b99b8">Schedule 1</text>
                <rect x="403" y="86" width="327" height="28" rx="6" fill="#27274e"/>
                <text x="415" y="105">Timeline and approval</text><text x="718" y="105" text-anchor="end" font-size="11" fill="#fcd34d">what if late?</text>
                <rect x="403" y="120" width="327" height="28" rx="6" fill="#27274e"/>
                <text x="415" y="139">Fees and milestones</text><text x="718" y="139" text-anchor="end" font-size="11" fill="#9b99b8">₹1,80,000 in 3 parts</text>
                <rect x="403" y="154" width="327" height="28" rx="6" fill="#27274e"/>
                <text x="415" y="173">Who owns the designs</text><text x="718" y="173" text-anchor="end" font-size="11" fill="#fcd34d">assign or licence?</text>
                <rect x="403" y="188" width="327" height="28" rx="6" fill="#27274e"/>
                <text x="415" y="207">Confidentiality</text><text x="718" y="207" text-anchor="end" font-size="11" fill="#9b99b8">link to the NDA</text>
                <rect x="403" y="222" width="327" height="28" rx="6" fill="#27274e"/>
                <text x="415" y="241">Liability</text><text x="718" y="241" text-anchor="end" font-size="11" fill="#fcd34d">cap or no cap?</text>
                <rect x="403" y="256" width="327" height="28" rx="6" fill="#27274e"/>
                <text x="415" y="275">Ending and disputes</text><text x="718" y="275" text-anchor="end" font-size="11" fill="#9b99b8">notice, seat</text>
              </g>
              <line x1="373" y1="207" x2="400" y2="207" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ld11a)"/>
              <text x="16" y="314" font-size="12" fill="#fcd34d">Amber: a choice for the client and the lawyer.</text>
              <text x="744" y="314" text-anchor="end" font-size="12" fill="#9b99b8">Grey: AI can draft it, you check it.</text>
            </g>
          </svg>
          <figcaption>Both documents follow a clear clause order. The amber items are decisions, not drafting. AI cannot make them for you.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The matter: a new design studio</h3>
          <p>Neha of Rangrez Crafts wants a design studio in Rajasthan to design her Spring 2027 collection. The studio is <strong>Kesar Design Studio LLP</strong> (a made-up name). Its designated partner is Ms Tara Singhvi. Before any work starts, both sides will share secrets.</p>
          <table class="lc-table">
            <thead><tr><th>Rangrez will share</th><th>Kesar will share</th></tr></thead>
            <tbody>
              <tr><td>Sales figures for its best-selling designs</td><td>Unreleased sketches and colour boards</td></tr>
              <tr><td>Its list of artisan clusters and their prices</td><td>Its design methods and mood boards</td></tr>
              <tr><td>Cost prices and planned launch dates</td><td>Quotes from its own suppliers</td></tr>
            </tbody>
          </table>
          <p>So Adv. Sameer Rao plans two documents. First, a <strong>mutual NDA</strong> (both parties share and both are protected), signed before any secrets are sent. Second, a <strong>service agreement</strong> for the design work itself. A <strong>one-way NDA</strong> protects only one party. It fits when only one side shares secrets. Here both share, so mutual is the natural choice. The lawyer confirms it with Neha.</p>
        </div>
        <div class="lc-card">
          <h3>The NDA, clause by clause</h3>
          <table class="lc-table">
            <thead><tr><th>Clause</th><th>What it does</th><th>The choice you must make</th></tr></thead>
            <tbody>
              <tr><td>Parties and purpose</td><td>Names each party by its exact legal name. States why information is shared.</td><td>Mutual or one-way? Name the right party. A sole proprietorship is not a separate legal person, so the party is Neha Rathore, sole proprietor of Rangrez Crafts. A narrow purpose protects better: "to discuss and carry out design work for the Rangrez Spring 2027 collection".</td></tr>
              <tr><td>Confidential Information</td><td>Defines what is secret.</td><td>A broad list, or only documents marked "confidential"? Are spoken disclosures covered?</td></tr>
              <tr><td>Exclusions</td><td>Lists what is not secret.</td><td>Usually: public information, things already known, things built independently, things received lawfully from others, and disclosures the law or a court requires.</td></tr>
              <tr><td>Use and sharing</td><td>Limits use to the purpose. Allows sharing only with staff who need to know.</td><td>Can advisers and freelancers see it? They must be bound by similar duties.</td></tr>
              <tr><td>How long it lasts</td><td>Sets the term of the duty.</td><td>For example, 3 years after the NDA ends. Trade secrets, such as a dye recipe, may need protection for as long as they stay secret.</td></tr>
              <tr><td>Return or destroy</td><td>Gets the information back at the end.</td><td>How many days? Is a written confirmation needed? What about backups?</td></tr>
              <tr><td>Remedies</td><td>Says what happens after a breach.</td><td>An injunction (a court order that stops the breach) and damages. Avoid a fixed "penalty": under section 74 of the Indian Contract Act, courts award reasonable compensation up to the stated amount.</td></tr>
              <tr><td>Law and disputes</td><td>Indian law, and courts or arbitration.</td><td>Courts at [place], or arbitration under the Arbitration and Conciliation Act 1996 with a stated seat?</td></tr>
            </tbody>
          </table>
          <p>Two more points for Indian practice. Stamp duty depends on the state stamp law. Check the rules of the state where it is signed, and e-stamping, for this NDA. And if Rangrez shares artisans' names and phone numbers, that is personal data under the Digital Personal Data Protection Act 2023. Its Rules of 2025 start in phases, so check the current position.</p>
          <p>Here is a weak prompt next to a better one.</p>
          <table class="lc-table">
            <thead><tr><th>Weak prompt</th><th>Better prompt</th></tr></thead>
            <tbody>
              <tr><td><pre><code>Write an NDA between
        a craft company and
        a design studio.</code></pre></td><td><pre><code>Draft clauses 1 to 3 of a MUTUAL NDA
        under Indian law, for a lawyer to review.
        Parties: Client A (Rajasthan handicrafts
        brand) and Studio B (Rajasthan design LLP).
        Purpose: design work for a 2027 collection.
        Cover written and spoken information.
        Use defined terms in bold, numbered
        clauses and "shall" for duties.
        Mark every choice as [CHOICE: ...].
        Do not cite cases.</code></pre></td></tr>
            </tbody>
          </table>
          <p>After Adv. Sameer Rao's edits, clause 2 in the firm's style reads:</p>
          <pre><code>2.1 "Confidential Information" means all information, in any form,
            that one party (the "Discloser") gives to the other party (the
            "Recipient") for the Purpose, including sales data, cost prices,
            supplier and artisan lists, sketches and designs. Information
            given orally is included if the Discloser confirms it in writing
            within 7 (seven) days.
        2.2 Confidential Information does not include information that the
            Recipient can show:
            (a) is or becomes public, other than through the Recipient's breach;
            (b) was already known to the Recipient before disclosure;
            (c) was developed by the Recipient independently; or
            (d) was received lawfully from a third party without a duty of
                confidence.
        2.3 The Recipient may disclose Confidential Information if the law or
            a court requires it, after giving the Discloser prompt written
            notice where the law allows.</code></pre>
        </div>
        <div class="lc-card">
          <h3>The service agreement, clause by clause</h3>
          <p>Kesar Design Studio will create 12 block-print patterns and 6 pottery motifs. First concepts are due by 6 November 2026. Final files are due by 15 December 2026. The fee is ₹1,80,000 (Rupees One Lakh Eighty Thousand only), paid in three milestones.</p>
          <table class="lc-table">
            <thead><tr><th>Milestone</th><th>When</th><th>Amount (₹)</th></tr></thead>
            <tbody>
              <tr><td>1. Signing</td><td>On signing the agreement</td><td>54,000 (30%)</td></tr>
              <tr><td>2. Concepts approved</td><td>Within 7 days of Rangrez's written approval of the first concepts</td><td>72,000 (40%)</td></tr>
              <tr><td>3. Final files</td><td>Within 7 days of delivery and acceptance of the final files</td><td>54,000 (30%)</td></tr>
              <tr><td><strong>Total</strong></td><td></td><td><strong>1,80,000</strong></td></tr>
            </tbody>
          </table>
          <p>The biggest choice is <strong>who owns the designs</strong>. Under the Copyright Act 1957, the author is usually the first owner. An outside studio is not Rangrez's employee, so Kesar would own the designs unless it assigns them. Section 19 says an assignment must be in writing. It should name the work, the rights, the period and the territory. If the period is not stated, it is treated as five years. If the territory is not stated, it is treated as India. So a vague clause could leave Neha with far less than she paid for.</p>
          <pre><code>9.1 On payment of each milestone, the Studio assigns to the Client all
            copyright in the Deliverables covered by that milestone, for the
            full term of copyright and throughout the world.
        9.2 The Studio keeps ownership of its Pre-existing Materials and
            grants the Client a perpetual, royalty-free licence to use them
            as part of the Deliverables.
        [CHOICE: assignment or exclusive licence; check design registration
        needs under the Designs Act 2000 with the lawyer]</code></pre>
          <p>There are other choices too. How many rounds of changes are included? What happens if Kesar is late? Is liability capped (limited to a set amount, often the fee)? How much notice must either side give to end the agreement? State whether GST is extra. Say that Kesar is an independent contractor, not an employee. These notes are general education, not legal advice.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: drafting the NDA with AI</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put Adv. Sameer Rao's steps for the Rangrez and Kesar NDA in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Confirm with Neha what each side will share, and that the NDA should be mutual</li>
              <li data-order="2">Check Kesar's exact legal name and LLP details before drafting</li>
              <li data-order="3">Pick the firm's checked NDA precedent from the clause bank</li>
              <li data-order="4">Ask the approved AI tool to adapt it, with every choice marked [CHOICE]</li>
              <li data-order="5">Decide each choice with Neha: term, spoken information, courts or arbitration</li>
              <li data-order="6">Check stamp duty and signing, then send the draft to Kesar for comments</li>
              <li data-order="7">Get the NDA signed before Rangrez shares any sales data</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI for a first draft of a mutual NDA and a list of the choices you must still make. Change the details in brackets to suit your matter.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are assisting an Indian advocate. Draft a first draft of a MUTUAL non-disclosure agreement under Indian law, for the advocate to review.

        Parties: [Client A, a Rajasthan handicrafts brand (sole proprietorship)] and [Studio B, a Rajasthan design studio (LLP)].
        Purpose: [to discuss and carry out design work for Client A's Spring 2027 collection].
        Information shared: [sales data, cost prices, artisan lists, unreleased sketches].

        Clauses: 1 Definitions; 2 Confidential Information and exclusions; 3 Use and sharing; 4 Term; 5 Return or destruction; 6 No licence; 7 Remedies; 8 Law and disputes; 9 General.

        Rules:
        - Defined terms in bold at first use. Numbered clauses. "shall" for duties.
        - Mark every business or legal decision as [CHOICE: options].
        - No fixed penalty amounts. Do not cite cases or quote any Act.
        - Plain English, no "hereinafter".

        After the draft, add a table: Choice | Options | Who decides (client or lawyer) | Risk if left vague.</pre>
            <ul class="ai-try-checks">
              <li>Both parties are protected equally, as a mutual NDA should do.</li>
              <li>The exclusions and the "required by law" clause are present.</li>
              <li>The term, courts or arbitration and spoken information are marked as choices.</li>
              <li>There is no penalty clause and no invented case or section.</li>
              <li>The lawyer checks stamp duty and signing before the NDA is used.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> An NDA or a service agreement is a set of decisions written as clauses. Let AI draft the clauses and mark every decision. Then the client and the lawyer make those decisions, especially who is protected, for how long and who owns the work.
        </div>
      HTML
      starter_code: nil
    },
    12 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-law">Law</div>
          <h1 class="lc-title">Employment and HR Documents</h1>
        </div>
        <p class="lc-lead">Every hire creates legal documents: an offer letter, an appointment letter and a set of workplace policies. They are often copied from old files or from the internet. Many AI tools still learned from the old labour laws. In this lesson you will learn what each HR document is for. You will see, in general terms, how India's four Labour Codes changed the rules. You will also learn to spot risky clauses, such as a non-compete after the job ends. You will draft with AI and check with care.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="The hiring path: offer letter, acceptance, appointment letter, policies, then probation and confirmation. Below, the four Labour Codes in force from 21 November 2025, with state rules and other laws beside them.">
            <defs><marker id="ld12a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="16" y="22" text-anchor="start" font-size="12" fill="#9b99b8">The hiring path at LedgerLite Pvt Ltd</text>
              <rect x="16" y="34" width="128" height="64" rx="10" fill="#27274e" stroke="#8b5cf6"/>
              <text x="80" y="61" font-weight="700">Offer letter</text><text x="80" y="82" font-size="11" fill="#9b99b8">conditional offer</text>
              <rect x="166" y="34" width="128" height="64" rx="10" fill="#27274e" stroke="#8b5cf6"/>
              <text x="230" y="61" font-weight="700">Acceptance</text><text x="230" y="82" font-size="11" fill="#9b99b8">signed, dated</text>
              <rect x="316" y="34" width="128" height="64" rx="10" fill="#27274e" stroke="#10b981"/>
              <text x="380" y="61" font-weight="700">Appointment</text><text x="380" y="82" font-size="11" fill="#6ee7b7">letter for everyone</text>
              <rect x="466" y="34" width="128" height="64" rx="10" fill="#27274e" stroke="#3b82f6"/>
              <text x="530" y="61" font-weight="700">Policies</text><text x="530" y="82" font-size="11" fill="#9b99b8">leave, conduct, POSH</text>
              <rect x="616" y="34" width="128" height="64" rx="10" fill="#27274e" stroke="#3b82f6"/>
              <text x="680" y="61" font-weight="700">Confirmation</text><text x="680" y="82" font-size="11" fill="#9b99b8">after probation</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#ld12a)">
                <line x1="146" y1="66" x2="163" y2="66"/>
                <line x1="296" y1="66" x2="313" y2="66"/>
                <line x1="446" y1="66" x2="463" y2="66"/>
                <line x1="596" y1="66" x2="613" y2="66"/>
              </g>
              <rect x="16" y="124" width="728" height="160" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="380" y="148" font-weight="700" fill="#fcd34d">The four Labour Codes (in force from 21 November 2025)</text>
              <rect x="32" y="162" width="164" height="58" rx="8" fill="#27274e"/>
              <text x="114" y="186" font-size="12.5">Code on Wages</text><text x="114" y="206" font-size="11" fill="#9b99b8">2019</text>
              <rect x="210" y="162" width="164" height="58" rx="8" fill="#27274e"/>
              <text x="292" y="186" font-size="12.5">Industrial Relations</text><text x="292" y="206" font-size="11" fill="#9b99b8">Code 2020</text>
              <rect x="388" y="162" width="164" height="58" rx="8" fill="#27274e"/>
              <text x="470" y="186" font-size="12.5">Social Security</text><text x="470" y="206" font-size="11" fill="#9b99b8">Code 2020</text>
              <rect x="566" y="162" width="162" height="58" rx="8" fill="#27274e"/>
              <text x="647" y="186" font-size="12.5">Safety, Health and</text><text x="647" y="206" font-size="11" fill="#9b99b8">Working Conditions 2020</text>
              <text x="380" y="248" font-size="12">Also check: central and state rules, the state shops and establishments law,</text>
              <text x="380" y="268" font-size="12">the POSH Act 2013 and the Indian Contract Act (section 27 on restraints).</text>
            </g>
          </svg>
          <figcaption>Each document on the path must fit the Labour Codes and the other laws that still apply. The rules differ by state, so always check the current position.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Three kinds of HR document</h3>
          <table class="lc-table">
            <thead><tr><th>Document</th><th>What it does</th><th>Key contents</th><th>Watch for</th></tr></thead>
            <tbody>
              <tr><td><strong>Offer letter</strong></td><td>Offers the job. It is usually conditional.</td><td>Role, pay, joining date, place, conditions (such as documents and background checks), last date to accept.</td><td>Promises that the company cannot keep. Background checks need the candidate's consent.</td></tr>
              <tr><td><strong>Appointment letter</strong></td><td>Sets the terms of the job once the person joins.</td><td>Role, wages and their parts, hours, leave, probation, notice period, confidentiality, work ownership, policies that apply.</td><td>Old law names. Clauses that conflict with the offer letter or the policies.</td></tr>
              <tr><td><strong>Policies</strong></td><td>Workplace rules for everyone.</td><td>Leave, conduct, anti-harassment (POSH), IT and data use, travel, grievances.</td><td>Policies that were never shared with staff, or that differ by state.</td></tr>
            </tbody>
          </table>
          <p>Our example is <strong>LedgerLite Pvt Ltd</strong>, a Karnataka software company. Its in-house counsel, Nandini, is hiring Mr Karan Iyer as a Senior Software Engineer. His fixed pay is ₹18,00,000 (Rupees Eighteen Lakh only) a year. He joins on 2 November 2026. Probation is 6 months and the notice period is 60 days.</p>
        </div>
        <div class="lc-card">
          <h3>The Labour Codes, in general words</h3>
          <p>From 21 November 2025, four Labour Codes replaced 29 central labour laws. They are the Code on Wages 2019 and the Industrial Relations Code 2020. The others are the Code on Social Security 2020 and the Occupational Safety, Health and Working Conditions Code 2020. Some points that affect HR documents:</p>
          <ul class="lc-list">
            <li><strong>Appointment letters for all.</strong> In general, employers covered by the Codes must give every employee an appointment letter. Check which establishments are covered.</li>
            <li><strong>One meaning of "wages".</strong> The Codes use one definition of wages. In general, if allowances are more than half of total pay, the extra is counted as wages. This affects gratuity, provident fund and leave pay.</li>
            <li><strong>Fixed-term staff.</strong> A fixed-term employee (hired for a set period) gets the same pay and benefits as a permanent employee doing the same work. Gratuity is payable after one year of continuous service.</li>
            <li><strong>Wider social security.</strong> The Social Security Code also covers gig and platform workers.</li>
          </ul>
          <p>The central rules under the Codes were notified in 2026. Many states are still finalising their own rules. State laws, such as the Karnataka shops and commercial establishments law, and the POSH Act 2013 still apply. Some transition rules also apply to older matters. Check the current Codes, the rules and your state's position on India Code and the labour department websites. This is general education, not legal advice.</p>
          <p>A salary structure the payroll team can check against the 50% idea:</p>
          <table class="lc-table">
            <thead><tr><th>Part of pay</th><th>Amount a year (₹)</th><th>Share of total</th></tr></thead>
            <tbody>
              <tr><td>Basic pay</td><td>9,00,000</td><td>50%</td></tr>
              <tr><td>House rent allowance</td><td>3,60,000</td><td>20%</td></tr>
              <tr><td>Special allowance</td><td>5,40,000</td><td>30%</td></tr>
              <tr><td><strong>Total fixed pay</strong></td><td><strong>18,00,000</strong></td><td><strong>100%</strong></td></tr>
            </tbody>
          </table>
          <p>Ask a payroll adviser or chartered accountant to confirm the structure. AI can add up the numbers, but it cannot tell you how your state's rules apply.</p>
        </div>
        <div class="lc-card">
          <h3>Non-competes and other risky clauses</h3>
          <p>Section 27 of the Indian Contract Act 1872 deals with restraint of trade. An agreement that stops a person from carrying on a lawful profession, trade or business is void, with narrow exceptions. Indian courts have generally held that a non-compete that applies <em>after</em> the job ends cannot be enforced. A duty not to work for a competitor <em>during</em> the job is treated differently. Many AI templates come from the US and add long non-competes. Flag them.</p>
          <table class="lc-table">
            <thead><tr><th>AI draft says</th><th>Problem</th><th>Safer approach (lawyer decides)</th></tr></thead>
            <tbody>
              <tr><td>"The Employee shall not join any competitor for 24 months after leaving."</td><td>A post-employment restraint. Likely void under section 27.</td><td>Confidentiality that continues after exit. A duty to work only for LedgerLite during the job.</td></tr>
              <tr><td>"The Employee shall not approach any client of the Company for 24 months."</td><td>Courts look closely at non-solicitation clauses (clauses against taking clients or staff) too.</td><td>A narrower clause, limited to clients he dealt with. The lawyer checks the current case law.</td></tr>
              <tr><td>"Gratuity as per the Payment of Gratuity Act 1972."</td><td>That Act is now part of the Code on Social Security.</td><td>"Gratuity as required by applicable law", with the Code checked.</td></tr>
              <tr><td>"Any dispute shall be decided under the Industrial Disputes Act 1947."</td><td>Replaced by the Industrial Relations Code 2020.</td><td>Refer to applicable law. The lawyer checks which rules apply.</td></tr>
              <tr><td>"The Employee shall pay ₹5,00,000 if he leaves within 2 years."</td><td>A fixed penalty. Section 74 allows only reasonable compensation.</td><td>A training cost clause linked to real costs, if the lawyer agrees.</td></tr>
            </tbody>
          </table>
          <p>One more contrast with a design studio agreement. Under the Copyright Act 1957, the employer usually owns work that an employee makes in the course of the job. The appointment letter should still say so clearly, and cover software and inventions.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: keep it or fix it?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Nandini's AI tool drafted Karan Iyer's appointment letter. Sort each clause.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="keep" data-label="Fine: check the details"></div>
              <div data-sorter-target="bucket" data-bucket="fix" data-label="Fix or ask the lawyer"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="keep" data-why="It states the role, place and joining date clearly. Check them against the offer letter.">"You are appointed as Senior Software Engineer at our Karnataka office from 2 November 2026."</li>
              <li data-bucket="fix" data-why="A restraint after the job ends is likely void under section 27 of the Indian Contract Act.">"For 2 years after leaving, you shall not work for any software company in India."</li>
              <li data-bucket="keep" data-why="Confidentiality that lasts after exit is common and useful. The lawyer checks the wording.">"You shall keep the Company's confidential information secret during and after your employment."</li>
              <li data-bucket="fix" data-why="The Payment of Gratuity Act is now part of the Code on Social Security. Check the current law.">"Gratuity will be paid under the Payment of Gratuity Act 1972 after 5 years."</li>
              <li data-bucket="keep" data-why="Probation and notice are clear. Check they match the offer letter and policy.">"Your probation is 6 months. After confirmation, either party may end this employment by giving 60 days' written notice."</li>
              <li data-bucket="fix" data-why="A fixed sum for leaving early looks like a penalty. Section 74 allows only reasonable compensation.">"If you resign within 2 years, you shall pay the Company ₹5,00,000."</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to draft an appointment letter and flag every clause that needs the lawyer. Change the bracketed details to your own hire, without real personal data.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are helping an in-house lawyer in India. Draft a first-draft appointment letter for the lawyer to review.

        Details: [Employer: a Karnataka software company. Role: Senior Software Engineer. Joining: 2 November 2026. Fixed pay: ₹18,00,000 a year (basic 50%, HRA 20%, special allowance 30%). Probation: 6 months. Notice: 60 days after confirmation.]

        Include: role and place, pay table, hours and leave (refer to policy), probation, notice, confidentiality, ownership of work, policies, data use.

        Rules:
        - India's four Labour Codes are in force from 21 November 2025. Do not cite the old laws they replaced as current law.
        - No non-compete after employment ends. Mark any restraint as [LAWYER TO CHECK: section 27].
        - No fixed penalty for leaving.
        - Write [CHECK STATE RULES] where the state's rules may matter.
        - Plain English, "shall" for duties, amounts in figures and words.

        After the letter, list every point the lawyer must check.</pre>
            <ul class="ai-try-checks">
              <li>The pay parts add up to ₹18,00,000 and match the details given.</li>
              <li>It does not cite the Industrial Disputes Act or the Payment of Gratuity Act as current law.</li>
              <li>There is no post-employment non-compete and no fixed penalty.</li>
              <li>State rule points are marked for checking, not guessed.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> HR documents change when the law changes. AI often writes from the old labour laws and from US templates. Give it the current framework in your prompt, and ask it to flag restraints and old laws. Then the lawyer checks the Codes, the rules and your state's position.
        </div>
      HTML
      starter_code: nil
    },
    13 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-law">Law</div>
          <h1 class="lc-title">Proofreading and Consistency Checks</h1>
        </div>
        <p class="lc-lead">Small errors in legal documents cause big problems. A wrong cheque date can weaken a notice. A misspelt company name or a cross-reference to a missing clause can start a dispute. In this lesson you will learn what to check in every draft: names, defined terms, cross-references, numbers, dates and legal references. You will also learn how to use AI as a fast first checker, and why a person must still confirm every flag at the source.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="A draft service agreement page with five errors marked: a wrong party name, a changed defined term, a cross-reference to a missing clause, figures and words that do not match, and a number-only date.">
            <defs><marker id="ld13a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12" fill="#e2e0f0">
              <rect x="16" y="14" width="360" height="272" rx="8" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="196" y="38" text-anchor="middle" font-weight="700" fill="#c4b5fd">Service Agreement: draft v02</text>
              <text x="32" y="66">1. Kesar <tspan fill="#f9a8d4" text-decoration="underline">Designs</tspan> LLP (the "Studio")</text>
              <rect x="32" y="78" width="320" height="7" rx="3" fill="#4b4a78"/>
              <text x="32" y="106">6.2 The <tspan fill="#f9a8d4" text-decoration="underline">Designer</tspan> shall revise twice.</text>
              <rect x="32" y="118" width="300" height="7" rx="3" fill="#4b4a78"/>
              <text x="32" y="146">7.2 Subject to <tspan fill="#f9a8d4" text-decoration="underline">clause 7.4</tspan>, the Client…</text>
              <rect x="32" y="158" width="310" height="7" rx="3" fill="#4b4a78"/>
              <text x="32" y="186">8.1 ₹72,000 <tspan fill="#f9a8d4" text-decoration="underline">(Seventy-Five Thousand)</tspan></text>
              <rect x="32" y="198" width="290" height="7" rx="3" fill="#4b4a78"/>
              <text x="32" y="226">8.3 Final files by <tspan fill="#f9a8d4" text-decoration="underline">15/12/2026</tspan>.</text>
              <rect x="32" y="238" width="320" height="7" rx="3" fill="#4b4a78"/>
              <rect x="32" y="254" width="220" height="7" rx="3" fill="#4b4a78"/>
              <g font-size="12.5">
                <text x="436" y="66">Name: should be Kesar Design Studio LLP</text>
                <text x="436" y="106">Defined term: use "Studio" every time</text>
                <text x="436" y="146">Cross-reference: there is no clause 7.4</text>
                <text x="436" y="186">Number: figures and words differ</text>
                <text x="436" y="226">Date: write 15 December 2026</text>
              </g>
              <g stroke="#ec4899" stroke-width="1.2" fill="none" marker-end="url(#ld13a)">
                <line x1="430" y1="62" x2="382" y2="62"/>
                <line x1="430" y1="102" x2="382" y2="102"/>
                <line x1="430" y1="142" x2="382" y2="142"/>
                <line x1="430" y1="182" x2="382" y2="182"/>
                <line x1="430" y1="222" x2="382" y2="222"/>
              </g>
              <rect x="436" y="248" width="308" height="38" rx="8" fill="#27274e" stroke="#10b981"/>
              <text x="590" y="272" text-anchor="middle" font-size="12" fill="#6ee7b7">AI flags. A person checks each one.</text>
            </g>
          </svg>
          <figcaption>Five common errors in one short page. Each is easy to miss when you read for meaning, and easy to catch when you check one thing at a time.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>What to check in every draft</h3>
          <p>Read a draft several times, and look for one kind of error each time. This works better than one long read. Here is the checklist Mehra &amp; Rao Associates uses.</p>
          <table class="lc-table">
            <thead><tr><th>Check</th><th>What to look for</th><th>Rangrez Crafts example</th></tr></thead>
            <tbody>
              <tr><td>Names and parties</td><td>Exact legal names, addresses and legal form, the same everywhere.</td><td>"Neelkamal Lifestyle Pvt Ltd", not "Neelkamal Lifestyles".</td></tr>
              <tr><td>Defined terms</td><td>Each term defined once, used with a capital letter, never swapped for a synonym. Terms defined but never used.</td><td>"Buyer" in every clause, never "Purchaser".</td></tr>
              <tr><td>Cross-references</td><td>Every "clause 7.2" or "Schedule 1" points to the right place, after all renumbering.</td><td>A clause deleted in v02 still referred to in v03.</td></tr>
              <tr><td>Numbers</td><td>Figures match words. Totals and percentages add up. Indian digit grouping.</td><td>95,000 + 1,10,000 + 80,000 = ₹2,85,000.</td></tr>
              <tr><td>Dates and periods</td><td>Day month year format. Each period says when it starts. Day counts are right.</td><td>Cheque dated 5 September 2026. Bank memo dated 10 September 2026.</td></tr>
              <tr><td>References</td><td>Invoice, cheque, file and PO numbers copied exactly.</td><td>Cheque no. 318204, invoice RC/26-27/052, file MRA/2026/118.</td></tr>
              <tr><td>Law and citations</td><td>Correct Act names and sections, no old laws for new facts, every case checked at the source.</td><td>No IPC for new facts. No case that cannot be found, such as the made-up "Sharma Traders v. Gupta Textiles (2019)".</td></tr>
              <tr><td>Leftovers</td><td>Old names from precedents, empty [brackets], comments and tracked changes.</td><td>A "Seller" left over from a supply agreement precedent.</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Using AI as a first checker</h3>
          <p>AI is good at making lists from a long document. Ask it to <strong>list and flag</strong>, not to fix. If it rewrites the draft, it may add new errors that you then have to find. Use only a tool your firm has approved for client documents.</p>
          <table class="lc-table">
            <thead><tr><th>Weak prompt</th><th>Better prompt</th></tr></thead>
            <tbody>
              <tr><td><pre><code>Proofread this agreement
        and fix any mistakes.</code></pre></td><td><pre><code>Do NOT rewrite this draft. Make tables:
        1. Defined terms: term | where defined |
           where used | any synonyms used.
        2. Cross-references: reference | clause
           it points to | does that clause exist?
        3. Numbers: figure | words | match?
           Then check that all totals add up.
        4. Dates: date | format | what it means.
        Quote the exact words for each flag.
        Say "none found" if a table is empty.</code></pre></td></tr>
            </tbody>
          </table>
          <p>Then check each flag yourself. AI can miss errors, and it can flag correct text as wrong. It is weak at legal points, such as a wrong time limit. Your word processor helps too. Use Find to search for every synonym of a defined term. Use the navigation pane to see the heading order. Update automatic cross-references before the final read. Check your tool's current help pages for these features.</p>
          <pre><code>FINAL PROOF CHECKLIST (file MRA/2026/118)
        [ ] Party names match the company records and the documents
        [ ] Every defined term: defined once, used the same way
        [ ] Every cross-reference opened and checked
        [ ] Every figure matches its words; totals recalculated by hand
        [ ] Every date and day count checked against the source documents
        [ ] Every Act, section and case checked on India Code or a database
        [ ] No [brackets], comments or tracked changes left
        [ ] Read once more on paper or at a larger size
        Checked by: ________   Date: ________</code></pre>
        </div>
        <div class="lc-card">
          <h3>Activity: Pooja proofreads the cheque notice</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Pooja's prompt">In the firm's approved AI tool, Pooja pastes the draft cheque bounce notice and the fact sheet. She asks: "List every name, number, date and reference. Flag any that do not match the fact sheet. Do not rewrite."</li>
              <li data-kind="answer" data-label="AI flags">The AI flags three things. The cheque is dated "5 August 2026" in the notice. The company is "Neelkamal Lifestyles Pvt Ltd" in one paragraph. It also says "Funds Insufficient" should read "Insufficient Funds".</li>
              <li data-kind="tool" data-label="Source documents">Pooja opens the scan of cheque no. 318204, the bank return memo and the company's details from the records.</li>
              <li data-kind="result" data-label="What the sources show">The cheque is dated 5 September 2026, so the first flag is right. The company name is Neelkamal Lifestyle Pvt Ltd, so the second flag is right. The memo says exactly "Funds Insufficient".</li>
              <li data-kind="warn" data-label="A false alarm">The third flag is wrong. A notice should quote the reason exactly as the bank memo states it. Pooja keeps "Funds Insufficient".</li>
              <li data-kind="warn" data-label="A miss">The AI did not notice that one paragraph gives the drawer "30 days" to pay. In general, the law allows 15 days from receipt of the notice. Pooja flags it for Adv. Sameer Rao.</li>
              <li data-kind="check" data-label="Lawyer check">Adv. Sameer Rao fixes the legal points, counts the days again from the bank memo, and signs the checklist.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Use AI to run a consistency check on a short draft. The sample has errors on purpose. You can paste your own draft instead, with names masked.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a careful proofreader at an Indian law firm. Check the draft below for consistency. Do NOT rewrite it.

        Draft:
        [1. This Agreement is between Neha Rathore, sole proprietor of Rangrez Crafts (the "Client"), and Kesar Design Studio LLP (the "Studio").
        6.2 The Designer shall make up to 2 (two) rounds of changes.
        7.2 Subject to clause 7.4, the Client may end this Agreement.
        8.1 The fee is ₹1,80,000 (Rupees One Lakh Eighty Thousand only), paid as ₹54,000, ₹72,000 (Rupees Seventy-Five Thousand only) and ₹45,000.
        8.3 The Studio shall deliver final files by 15/12/2026.
        8.4 The Client shall pay within 7 days.]

        Give four tables:
        1. Defined terms: term | where defined | where used | problems.
        2. Cross-references: reference | exists in the draft? (Only clauses shown here exist.)
        3. Numbers: figures | words | match? Then add up all instalments and compare with the total.
        4. Dates and periods: text | problem | suggested wording.

        Quote the exact words for each flag. If unsure, write [PERSON TO CHECK]. End with a count of issues by type.</pre>
            <ul class="ai-try-checks">
              <li>It catches "Designer" used instead of the defined term "Studio".</li>
              <li>It flags clause 7.4 as missing.</li>
              <li>It finds that ₹54,000 + ₹72,000 + ₹45,000 = ₹1,71,000, not ₹1,80,000, and that the words for ₹72,000 are wrong.</li>
              <li>It flags "15/12/2026" and "within 7 days" with no start date.</li>
              <li>You check every flag yourself before changing the draft.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Check one kind of error at a time. AI can make the lists fast, but it can raise false alarms and miss legal errors. Confirm every flag against the source document, and let the lawyer check the law and the day counts.
        </div>
      HTML
      starter_code: nil
    },
    14 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-law">Law</div>
          <h1 class="lc-title">Version Control and Collaboration</h1>
        </div>
        <p class="lc-lead">A contract often goes back and forth many times before anyone signs it. The partner edits it, the client comments, the other side's lawyer sends changes. If the versions get mixed up, a client may sign terms that nobody approved. In this lesson you will learn simple habits for file names, version logs, tracked changes and comments. You will also learn how to compare versions, where AI helps, and how to record the client's approval of the exact final text.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 290" role="img" aria-label="A version timeline for the Rangrez and Kesar service agreement: v01 first draft, v02 partner edits, v03 sent to Kesar, v04 returned by Kesar, v05 approved by Neha, then the signed copy. Below, a compare check between v03 and v04 finds one change that was not tracked.">
            <defs><marker id="ld14a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="16" y="22" text-anchor="start" font-size="12" fill="#9b99b8">Service agreement: Rangrez Crafts and Kesar Design Studio LLP</text>
              <rect x="16" y="34" width="110" height="62" rx="10" fill="#27274e" stroke="#8b5cf6"/>
              <text x="71" y="60" font-weight="700">v01</text><text x="71" y="81" font-size="11" fill="#9b99b8">Pooja + AI</text>
              <rect x="139" y="34" width="110" height="62" rx="10" fill="#27274e" stroke="#8b5cf6"/>
              <text x="194" y="60" font-weight="700">v02</text><text x="194" y="81" font-size="11" fill="#9b99b8">Sameer edits</text>
              <rect x="262" y="34" width="110" height="62" rx="10" fill="#27274e" stroke="#3b82f6"/>
              <text x="317" y="60" font-weight="700">v03</text><text x="317" y="81" font-size="11" fill="#93c5fd">sent to Kesar</text>
              <rect x="385" y="34" width="110" height="62" rx="10" fill="#27274e" stroke="#ec4899"/>
              <text x="440" y="60" font-weight="700">v04</text><text x="440" y="81" font-size="11" fill="#f9a8d4">Kesar returns</text>
              <rect x="508" y="34" width="110" height="62" rx="10" fill="#27274e" stroke="#f59e0b"/>
              <text x="563" y="60" font-weight="700">v05</text><text x="563" y="81" font-size="11" fill="#fcd34d">Neha approves</text>
              <rect x="631" y="34" width="113" height="62" rx="10" fill="#27274e" stroke="#10b981"/>
              <text x="687" y="60" font-weight="700">Signed</text><text x="687" y="81" font-size="11" fill="#6ee7b7">PDF stored</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#ld14a)">
                <line x1="127" y1="65" x2="136" y2="65"/>
                <line x1="250" y1="65" x2="259" y2="65"/>
                <line x1="373" y1="65" x2="382" y2="65"/>
                <line x1="496" y1="65" x2="505" y2="65"/>
                <line x1="619" y1="65" x2="628" y2="65"/>
              </g>
              <path d="M317,98 L317,130" stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#ld14a)"/>
              <path d="M440,98 L440,130" stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#ld14a)"/>
              <rect x="170" y="136" width="420" height="138" rx="10" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="380" y="160" font-weight="700" fill="#67e8f9">Compare v03 (sent) with v04 (returned)</text>
              <text x="380" y="188" font-size="12.5">Tracked: 3 changes, all listed in Kesar's email</text>
              <text x="380" y="212" font-size="12.5" fill="#f9a8d4">Not tracked: clause 9.1 "assigns" became</text>
              <text x="380" y="232" font-size="12.5" fill="#f9a8d4">"grants a licence to use"</text>
              <text x="380" y="258" font-size="11" fill="#9b99b8">Added to the issues list for Neha and Sameer</text>
            </g>
          </svg>
          <figcaption>Every version has a number and an owner. Comparing what you sent with what came back finds changes that were not tracked.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>File names and a version log</h3>
          <p>The firm has opened a new file for the Kesar work: MRA/2026/131. Every draft gets a clear file name. Nobody saves over an older version. Words like "final" or "latest" are not allowed in file names, because they stop being true.</p>
          <pre><code>[File no.]_[Document]_[Parties]_v[number]_[status]_[date YYYY-MM-DD]

        MRA-2026-131_ServiceAgmt_Rangrez-Kesar_v03_to-Kesar_2026-10-12.docx
        MRA-2026-131_ServiceAgmt_Rangrez-Kesar_v04_from-Kesar_2026-10-16.docx</code></pre>
          <p>The date goes year first in file names, so files sort in date order. In the letters themselves, the firm still writes dates as "12 October 2026". A <strong>version log</strong> is a short table that records each version:</p>
          <table class="lc-table">
            <thead><tr><th>Version</th><th>Date</th><th>By</th><th>What changed</th><th>Sent to</th></tr></thead>
            <tbody>
              <tr><td>v01</td><td>7 October 2026</td><td>Pooja (AI-assisted)</td><td>First draft from the clause bank</td><td>Internal</td></tr>
              <tr><td>v02</td><td>9 October 2026</td><td>Adv. Sameer Rao</td><td>IP clause, milestones, liability</td><td>Neha, for comments</td></tr>
              <tr><td>v03</td><td>12 October 2026</td><td>Adv. Sameer Rao</td><td>Neha's comments added</td><td>Kesar Design Studio</td></tr>
              <tr><td>v04</td><td>16 October 2026</td><td>Kesar's lawyer</td><td>3 tracked changes, 1 untracked change</td><td>Received</td></tr>
            </tbody>
          </table>
          <p>One person owns the master copy at any time. Others send comments to that person. This stops two people editing two copies at once.</p>
        </div>
        <div class="lc-card">
          <h3>Tracked changes, comments and compare</h3>
          <ul class="lc-list">
            <li><strong>Tracked changes</strong> show every insertion and deletion. Turn them on before you edit a draft that others will review. Online tools have a similar "suggesting" mode and a version history.</li>
            <li><strong>Comments</strong> explain why. Internal comments, such as "client may accept 45 days", must never reach the other side.</li>
            <li><strong>Compare</strong> means asking the word processor to put two files side by side and mark every difference. Always compare the version you sent with the version you got back. Do not rely only on the other side's tracked changes.</li>
            <li><strong>Clean before sending.</strong> Use your word processor's document inspection feature to find hidden comments, tracked changes and author details. Check your tool's current help pages for the steps.</li>
          </ul>
          <p>AI can help after the compare. It can turn a long list of changes into an issues list. Use only your firm's approved tool. Then check the issues list against the compare report line by line.</p>
          <table class="lc-table">
            <thead><tr><th>Clause</th><th>Change in v04</th><th>Effect for Rangrez</th><th>Our view</th><th>Neha to decide?</th></tr></thead>
            <tbody>
              <tr><td>6.2</td><td>Rounds of changes cut from 3 to 2</td><td>Less free revision</td><td>Can accept</td><td>Yes</td></tr>
              <tr><td>8.1</td><td>Milestone 1 raised from 30% to 40%</td><td>More paid before work is seen</td><td>Push back</td><td>Yes</td></tr>
              <tr><td>9.1</td><td>"assigns" changed to "grants a licence to use" (not tracked)</td><td>Rangrez would not own the designs</td><td>Reject</td><td>Yes, urgent</td></tr>
              <tr><td>12.3</td><td>Notice to end the agreement cut from 30 to 15 days</td><td>Less time to find another studio</td><td>Can accept</td><td>Yes</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Client approval of the exact text</h3>
          <p>Neha must approve the exact version that will be signed. A phone call saying "looks fine" is not enough. Ask for approval by email, and name the version in the email.</p>
          <pre><code>Subject: MRA/2026/131: please approve service agreement v05

        Dear Neha,
        Attached is v05 of the service agreement with Kesar Design Studio.
        It includes the changes you agreed on our call today. Clause 9.1
        again says that Kesar assigns the designs to Rangrez.
        Please reply "Approved: v05" if you are happy for us to send it
        for signing. Nothing will be sent before we hear from you.

        Regards, Adv. Sameer Rao</code></pre>
          <p>Record the approval in the version log. After signing, keep one signed copy as a PDF in the file. Mark it clearly as the signed copy. Check that the signed text matches v05. Electronic signatures are generally valid under the Information Technology Act 2000, but some documents are left out. The lawyer checks the current law and the stamp duty before signing.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: good habit or risky habit?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each habit you might see in a busy law office.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="good" data-label="Good habit"></div>
              <div data-sorter-target="bucket" data-bucket="risky" data-label="Risky habit"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="good" data-why="Comparing the file you sent with the file you got back finds changes that were not tracked.">Running a compare between v03 (sent) and v04 (returned) before reading Kesar's email</li>
              <li data-bucket="risky" data-why="&quot;Final&quot; soon stops being true, and nobody knows which file is the real one.">Saving the file as "ServiceAgmt_FINAL_final2.docx"</li>
              <li data-bucket="risky" data-why="Internal comments can show your client's limits to the other side.">Sending the draft to Kesar with internal comments still inside</li>
              <li data-bucket="good" data-why="Approval of a named version leaves no doubt about what the client agreed.">Asking Neha to reply "Approved: v05" by email</li>
              <li data-bucket="risky" data-why="Two people editing two copies creates two different drafts.">Pooja and Sameer both editing their own copies of v02 at the same time</li>
              <li data-bucket="risky" data-why="Client documents must go only into the firm's approved tools.">Uploading Kesar's draft to a free public AI tool to summarise the changes</li>
              <li data-bucket="good" data-why="A version log shows who changed what and when.">Adding a line to the version log each time a draft is sent or received</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to turn a list of changes from the other side into an issues list and a short email to the client. Use the sample list, or paste your own compare notes with names masked.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an associate at an Indian law firm. We act for [Client A, a handicrafts brand]. The other side, [Studio B, a design studio], returned our draft service agreement v03 as v04. Here is our compare report:

        [6.2 Rounds of changes: 3 changed to 2 (tracked).
        8.1 Milestone 1: 30% changed to 40% (tracked).
        9.1 "the Studio assigns to the Client all copyright" changed to "the Studio grants the Client a licence to use" (NOT tracked).
        12.3 Notice to end the agreement: 30 days changed to 15 days (tracked).]

        Task 1: Make an issues list: Clause | Change | Effect on our client | Tracked? | Suggested position (accept, push back, reject) | Client decision needed? (yes or no).
        Task 2: Draft a short email to the client (under 150 words) that explains the changes in plain English and asks for decisions by [date].
        Rules: Do not invent changes that are not in the report. Point out any untracked change clearly. Give no legal conclusions; mark legal points as [LAWYER TO CONFIRM].</pre>
            <ul class="ai-try-checks">
              <li>Every change in the report appears once in the issues list, and nothing is added.</li>
              <li>The untracked change to clause 9.1 is clearly called out as the most serious.</li>
              <li>The client email is short, plain and asks for decisions by a date.</li>
              <li>You check the issues list against the compare report before sending anything.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Versions are evidence of what was agreed. Name every file clearly and keep one master copy. Compare what you sent with what came back. Get the client's written approval of the exact version before signing.
        </div>
      HTML
      starter_code: nil
    },
    15 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-law">Law</div>
          <h1 class="lc-title">Capstone: A Drafting Pack for Rangrez Crafts</h1>
        </div>
        <p class="lc-lead">In this capstone you bring the whole course together. You will build a drafting pack for Rangrez Crafts. It has two notices to Neelkamal Lifestyle Pvt Ltd: a section 138 notice and a demand notice. It also has a reply letter, an NDA with Kesar Design Studio and an outline for a future supply agreement. Every document starts from the same checked fact sheet. AI writes the first drafts. You check the facts, the numbers, the dates and the law. The lawyer signs off, and Neha approves each document before it goes out.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 310" role="img" aria-label="The drafting pack. A checked fact sheet feeds five documents: a section 138 notice, a demand notice, a reply to Neelkamal, an NDA with Kesar and a supply agreement outline. All five go through pack checks, then Neha approves, then the firm sends them and keeps proof. A bar at the bottom shows the cheque notice deadline.">
            <defs><marker id="ld15a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <rect x="16" y="86" width="150" height="104" rx="10" fill="#27274e" stroke="#10b981"/>
              <text x="91" y="120" text-anchor="middle" font-weight="700">Fact sheet</text>
              <text x="91" y="142" text-anchor="middle" font-size="11" fill="#9b99b8">checked and dated</text>
              <text x="91" y="162" text-anchor="middle" font-size="11" fill="#9b99b8">MRA/2026/118</text>
              <g stroke="#9b99b8" stroke-width="1.3" fill="none" marker-end="url(#ld15a)">
                <line x1="168" y1="138" x2="206" y2="36"/>
                <line x1="168" y1="138" x2="206" y2="86"/>
                <line x1="168" y1="138" x2="206" y2="136"/>
                <line x1="168" y1="138" x2="206" y2="186"/>
                <line x1="168" y1="138" x2="206" y2="236"/>
              </g>
              <rect x="210" y="16" width="272" height="40" rx="8" fill="#1f1f44" stroke="#ec4899"/>
              <text x="222" y="34" font-weight="700" font-size="12.5">1. Section 138 notice</text>
              <text x="222" y="49" font-size="11" fill="#9b99b8">cheque 318204: ₹95,000 only</text>
              <rect x="210" y="66" width="272" height="40" rx="8" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="222" y="84" font-weight="700" font-size="12.5">2. Demand notice</text>
              <text x="222" y="99" font-size="11" fill="#9b99b8">₹2,85,000 plus interest</text>
              <rect x="210" y="116" width="272" height="40" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="222" y="134" font-weight="700" font-size="12.5">3. Reply to Neelkamal</text>
              <text x="222" y="149" font-size="11" fill="#9b99b8">point by point, rights reserved</text>
              <rect x="210" y="166" width="272" height="40" rx="8" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="222" y="184" font-weight="700" font-size="12.5">4. NDA with Kesar Studio</text>
              <text x="222" y="199" font-size="11" fill="#9b99b8">mutual, signed before sharing</text>
              <rect x="210" y="216" width="272" height="40" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="222" y="234" font-weight="700" font-size="12.5">5. Supply agreement outline</text>
              <text x="222" y="249" font-size="11" fill="#9b99b8">future orders, lessons built in</text>
              <line x1="484" y1="96" x2="520" y2="96" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ld15a)"/>
              <rect x="524" y="16" width="220" height="152" rx="10" fill="#27274e" stroke="#10b981"/>
              <text x="634" y="40" text-anchor="middle" font-weight="700" fill="#6ee7b7">Pack checks</text>
              <g font-size="12" text-anchor="start">
                <text x="540" y="66">• names, numbers match</text>
                <text x="540" y="90">• dates and day counts</text>
                <text x="540" y="114">• every citation checked</text>
                <text x="540" y="138">• open or without prejudice</text>
              </g>
              <line x1="634" y1="170" x2="634" y2="182" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ld15a)"/>
              <rect x="524" y="186" width="220" height="32" rx="8" fill="#27274e" stroke="#f59e0b"/>
              <text x="634" y="207" text-anchor="middle" font-size="12.5">Neha approves each version</text>
              <line x1="634" y1="220" x2="634" y2="232" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ld15a)"/>
              <rect x="524" y="236" width="220" height="32" rx="8" fill="#27274e" stroke="#3b82f6"/>
              <text x="634" y="257" text-anchor="middle" font-size="12.5">Send and keep proof</text>
              <rect x="16" y="278" width="728" height="26" rx="6" fill="#1f1f44" stroke="#ec4899"/>
              <text x="380" y="296" text-anchor="middle" font-size="12" fill="#f9a8d4">Cheque notice: send by 10 October 2026 at the latest, counting from 10 September. The lawyer counts.</text>
            </g>
          </svg>
          <figcaption>One checked fact sheet feeds every document, so the pack stays consistent. The cheque notice has the strictest deadline, so it is drafted first.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The pack at a glance</h3>
          <p>The matter is Mehra &amp; Rao Associates file MRA/2026/118 (the NDA sits in file MRA/2026/131). Adv. Sameer Rao leads, Pooja drafts with the firm's approved AI tool, and Adv. Kavita Mehra reviews. All names and facts are made up.</p>
          <table class="lc-table">
            <thead><tr><th>Document</th><th>Purpose</th><th>Key facts it must get right</th><th>Timing</th></tr></thead>
            <tbody>
              <tr><td>1. Section 138 notice</td><td>The notice the Act requires before a cheque bounce complaint.</td><td>Cheque no. 318204 dated 5 September 2026, ₹95,000. Memo of 10 September 2026, "Funds Insufficient". Demand exactly ₹95,000.</td><td>Dated 3 October 2026 (2 October is a holiday). Delivered 6 October, so the 15 days to pay end on 21 October 2026. If unpaid, a complaint is due by about 21 November 2026.</td></tr>
              <tr><td>2. Demand notice</td><td>An open demand for all three invoices.</td><td>₹2,85,000 plus interest of ₹8,881.65 as on 3 October 2026, at 18% a year under the terms. A total of ₹2,93,881.65.</td><td>Same date, sent separately. Payment of the cheque is adjusted against invoice 041.</td></tr>
              <tr><td>3. Reply to Neelkamal</td><td>A point-by-point reply to Neelkamal's advocate's letter of 16 October 2026.</td><td>Damage first raised on 17 September, about 10 weeks after delivery. Challan DC-052 signed without remarks. Terms accepted on 28 May 2026.</td><td>After Neha approves. It does not stop or change any cheque case time limit.</td></tr>
              <tr><td>4. NDA with Kesar</td><td>Protects both sides before the design work starts.</td><td>Exact name: Kesar Design Studio LLP. Mutual. Stated purpose, term and exclusions.</td><td>Signed before Rangrez shares any sales data.</td></tr>
              <tr><td>5. Supply agreement outline</td><td>Terms for future orders, if Neha and Neelkamal settle.</td><td>The dispute's lessons: written damage reports, a credit limit, Udyam details.</td><td>Only after the dispute is settled and Neha decides.</td></tr>
              <tr><td colspan="4">The lawyer confirms every date and day count in this table.</td></tr>
            </tbody>
          </table>
          <p>A settlement offer, if Neha wants one, goes in a separate without-prejudice letter. It never goes inside a notice or the reply. Before drafting, Pooja closes two gaps on the fact sheet: a copy of Neha's Udyam certificate, and the date Neha first learned of the bounce. Adv. Sameer Rao counts the 30 days from 10 September 2026, the earlier date, as the safe course.</p>
        </div>
        <div class="lc-card">
          <h3>Model skeletons: the notice and the reply</h3>
          <p>Here is the core of the section 138 notice, in the firm's style. Brackets show points the lawyer must settle. It demands exactly the cheque amount. The Supreme Court has held that a notice demanding a different amount is invalid: <em>Kaveri Plastics v. Mahdoom Bawa Bahrudeen Noorul</em>, 2025 INSC 1133. Read it at the source.</p>
          <pre><code>LEGAL NOTICE UNDER SECTION 138 OF THE NEGOTIABLE INSTRUMENTS ACT 1881
        Ref: MRA/2026/118      Date: 3 October 2026      By speed post and email
        To: Neelkamal Lifestyle Private Limited, 2nd floor, Station Road,
            Maharashtra
            and Mr Vikram Shah, Director [LAWYER: confirm all addressees]

        1. We act for Neha Rathore, sole proprietor of Rangrez Crafts, Rajasthan.
        2. Towards invoice RC/26-27/041 dated 5 June 2026, you issued cheque
           no. 318204 dated 5 September 2026 for ₹95,000 (Rupees Ninety-Five
           Thousand only), drawn on Konkan Mercantile Bank, Station Road branch.
        3. Our client presented the cheque on 7 September 2026. It was
           returned unpaid by memo dated 10 September 2026, with the reason
           "Funds Insufficient".
        4. We call upon you to pay ₹95,000 (Rupees Ninety-Five Thousand only),
           the amount of the cheque, within 15 (fifteen) days of receipt of
           this notice.
        5. If you do not pay, our client may take action under the Act and
           other action available in law.
        6. Our client's other claims are set out in a separate notice of the
           same date. All rights are reserved.
        Adv. Sameer Rao, for Mehra &amp; Rao Associates</code></pre>
          <p>The reply to Neelkamal's letter of 16 October 2026 answers each point with a document:</p>
          <pre><code>1. General: anything in your letter not expressly admitted is denied.
        2. Your para 2 (damage): denied. Clause 4 of the accepted terms needs
           a written report within 7 days of delivery. Challan DC-052 was
           signed at your warehouse on 6 July 2026 without remarks. The first
           complaint was the email of 17 September 2026. No photos, count or
           calculation has been given for the figure of ₹27,000.
        3. Your para 3 (interest): denied. Your email of 28 May 2026 says:
           "We accept your quotation and terms."
        4. Your para 4 (security cheque): denied. Your email of 12 August 2026
           says you were sending a post-dated cheque for invoice 041.
        5. Your para 5: noted that invoices 041 and 063 are not disputed.
        6. Your para 6 (jurisdiction): [LAWYER TO DECIDE].
        7. Our client's demand of 3 October 2026 stands. All rights reserved.</code></pre>
          <p>This is general education, not legal advice. The lawyer decides every legal point, and checks every Act and case at the source.</p>
        </div>
        <div class="lc-card">
          <h3>The supply outline and the pack check</h3>
          <p>Neha wants to keep Neelkamal as a customer if the dispute settles. So the pack ends with an outline, not a full agreement. It follows the supply agreement structure from the agreements lesson. Each clause uses a lesson from the dispute.</p>
          <table class="lc-table">
            <thead><tr><th>Clause</th><th>Lesson from the dispute</th></tr></thead>
            <tbody>
              <tr><td>Parties</td><td>Neha Rathore, sole proprietor of Rangrez Crafts (the "Seller"), and Neelkamal Lifestyle Private Limited (the "Buyer"). A proprietorship is not a separate legal person.</td></tr>
              <tr><td>Orders and acceptance</td><td>Each purchase order is accepted in writing and refers to the agreement.</td></tr>
              <tr><td>Delivery and inspection</td><td>The Buyer reports damage in writing, with photos and a count, within 7 days of the Delivery Date (the date the challan is signed).</td></tr>
              <tr><td>Payment and interest</td><td>Payment within 30 days of the invoice date by bank transfer, with late interest stated.</td></tr>
              <tr><td>MSMED Act details</td><td>Rangrez's Udyam number is stated. The lawyer checks the 45-day limit and the statutory interest.</td></tr>
              <tr><td>Credit limit and suspension</td><td>A maximum unpaid amount. Rangrez may pause supplies while invoices are overdue.</td></tr>
              <tr><td>Disputes</td><td>Mediation, then courts or arbitration with a stated seat. The lawyer checks the Commercial Courts Act and the Arbitration Act.</td></tr>
              <tr><td>Term and ending</td><td>2 years, with 60 days' written notice to end. Rangrez may end sooner for repeated late payment.</td></tr>
              <tr><td>General</td><td>Notices, stamp duty, signing, and whole agreement.</td></tr>
            </tbody>
          </table>
          <p>Before anything goes to Neha, Pooja runs one check across the whole pack. She uses this prompt in the approved tool, then checks every flag herself:</p>
          <pre><code>Here are five draft documents for one matter. Do NOT rewrite them.
        Make one table: Item | Doc 1 | Doc 2 | Doc 3 | Doc 4 | Doc 5 | Match?
        Items: party names, addresses, cheque and invoice numbers, amounts
        in figures and words, dates, the "as on" date for interest.
        Then list: any case or section cited (for a person to check), any
        sentence that could be read as an admission, and any settlement
        offer that appears in an open document.</code></pre>
        </div>
        <div class="lc-card">
          <h3>Activity: finishing one document in the pack</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put the steps for finishing any document in the pack in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Check the facts on the fact sheet against the source documents</li>
              <li data-order="2">Pick the checked precedent or clause bank entry to start from</li>
              <li data-order="3">Ask the approved AI tool for a first draft, with gaps marked [MISSING]</li>
              <li data-order="4">Proofread one kind of error at a time: names, numbers, dates, references</li>
              <li data-order="5">The lawyer checks the law, the deadlines and the tone, and signs off</li>
              <li data-order="6">Neha approves the named version by email</li>
              <li data-order="7">Send by speed post and email, keep the proof and update the version log</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI for the last document in the pack: a supply agreement outline that builds in the lessons from the dispute. Change the details in brackets to suit your own client.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are assisting an Indian advocate who acts for the SUPPLIER. Prepare an OUTLINE (not a full draft) of a supply agreement for future orders, for the advocate to review.

        Supplier: [a Rajasthan handicrafts brand, sole proprietorship, says it has Udyam registration]. Buyer: [a Maharashtra home-decor chain with 6 stores].
        Lessons from a past dispute: [the buyer raised damage 10 weeks after delivery; paid late; gave a cheque that bounced].
        Commercial terms: [payment within 30 days of invoice date; 18% a year late interest; credit limit ₹1,50,000].

        For each clause give: Clause heading | What it covers (one line) | Supplier's preferred position | Likely buyer push-back | Point for the lawyer to check.
        Cover: definitions, orders, delivery, inspection and damage reports, price and payment, late interest, MSMED Act, credit limit and suspension, title and risk, confidentiality, term and ending, disputes, notices, general.

        Rules: Indian law. Name the sole proprietor, not the brand, as the party. Name Acts only in general words and add "check the current law". Do not cite cases. Mark every business decision as [CLIENT DECIDES]. Simple English.</pre>
            <ul class="ai-try-checks">
              <li>Inspection needs a written report within a fixed number of days, from delivery.</li>
              <li>The MSMED Act point is flagged for the lawyer to check, not stated as settled.</li>
              <li>Business choices, such as the credit limit, are marked for the client.</li>
              <li>No cases are cited, and no foreign law or US-style clauses appear.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A drafting pack is only as good as its fact sheet and its checks. Start every document from the same checked facts, and draft the most urgent one first. Run one check across the whole pack. Send nothing until the lawyer signs off and the client approves.
        </div>
      HTML
      starter_code: nil
    }
  }.freeze
end

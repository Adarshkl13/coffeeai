module AiContractReviewContent
  # Units (sidebar dividers): 1–4 Contract Basics · 5–9 Reviewing with AI · 10–14 Risk, Negotiation and Workflow · 15 Capstone
  # Widgets: sequence, sorter, stepper. No code editor: each Try It is an ai-try prompt box.
  LESSONS = {
    1 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-law">Law</div>
          <h1 class="lc-title">How Contracts Work</h1>
        </div>
        <p class="lc-lead">Before you use AI to review a contract, you need to know what makes a contract valid. In India, the main law is the <strong>Indian Contract Act 1872</strong>. In this lesson you will learn its key words in plain English: proposal, acceptance, promise, consideration, agreement and contract. You will also learn the five essentials in section 10 that turn an agreement into a contract. With these basics, you can ask AI better questions and spot when its answer is wrong. This course is general education, not legal advice.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 275" role="img" aria-label="A proposal is accepted and becomes a promise. Promises that are consideration for each other form an agreement. If all five essentials of section 10 are met, the agreement becomes a contract that the law will enforce.">
            <defs><marker id="cr1a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="15" y="24" text-anchor="start" font-size="12" fill="#9b99b8">From an offer to a contract (Indian Contract Act 1872)</text>
              <rect x="15" y="40" width="160" height="82" rx="10" fill="#27274e" stroke="#3b82f6"/>
              <text x="95" y="70" font-weight="700">Proposal</text>
              <text x="95" y="90" font-size="11" fill="#9b99b8">section 2(a)</text>
              <text x="95" y="107" font-size="11" fill="#9b99b8">an offer to do something</text>
              <rect x="205" y="40" width="160" height="82" rx="10" fill="#27274e" stroke="#22d3ee"/>
              <text x="285" y="70" font-weight="700">Acceptance</text>
              <text x="285" y="90" font-size="11" fill="#9b99b8">section 2(b)</text>
              <text x="285" y="107" font-size="11" fill="#9b99b8">a clear yes to it</text>
              <rect x="395" y="40" width="160" height="82" rx="10" fill="#27274e" stroke="#8b5cf6"/>
              <text x="475" y="70" font-weight="700">Promise</text>
              <text x="475" y="90" font-size="11" fill="#9b99b8">section 2(b)</text>
              <text x="475" y="107" font-size="11" fill="#9b99b8">the accepted proposal</text>
              <rect x="585" y="40" width="160" height="82" rx="10" fill="#27274e" stroke="#ec4899"/>
              <text x="665" y="70" font-weight="700">Agreement</text>
              <text x="665" y="90" font-size="11" fill="#9b99b8">section 2(e)</text>
              <text x="665" y="107" font-size="11" fill="#9b99b8">promises + consideration</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#cr1a)">
                <line x1="176" y1="81" x2="202" y2="81"/>
                <line x1="366" y1="81" x2="392" y2="81"/>
                <line x1="556" y1="81" x2="582" y2="81"/>
                <line x1="665" y1="124" x2="665" y2="155"/>
                <line x1="556" y1="212" x2="582" y2="212"/>
              </g>
              <rect x="15" y="160" width="540" height="100" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="285" y="184" font-size="12.5" fill="#fcd34d">Section 10: all five must be true</text>
              <g font-size="11">
                <rect x="25" y="198" width="100" height="48" rx="7" fill="#27274e"/>
                <text x="75" y="226">Free consent</text>
                <rect x="130" y="198" width="100" height="48" rx="7" fill="#27274e"/>
                <text x="180" y="218">Competent</text><text x="180" y="234">parties</text>
                <rect x="235" y="198" width="100" height="48" rx="7" fill="#27274e"/>
                <text x="285" y="218">Lawful</text><text x="285" y="234">consideration</text>
                <rect x="340" y="198" width="100" height="48" rx="7" fill="#27274e"/>
                <text x="390" y="226">Lawful object</text>
                <rect x="445" y="198" width="100" height="48" rx="7" fill="#27274e"/>
                <text x="495" y="218">Not declared</text><text x="495" y="234">void</text>
              </g>
              <rect x="585" y="160" width="160" height="100" rx="10" fill="#27274e" stroke="#10b981"/>
              <text x="665" y="192" font-weight="700" fill="#6ee7b7">Contract</text>
              <text x="665" y="212" font-size="11" fill="#9b99b8">section 2(h)</text>
              <text x="665" y="230" font-size="11" fill="#9b99b8">an agreement the</text>
              <text x="665" y="246" font-size="11" fill="#9b99b8">law will enforce</text>
            </g>
          </svg>
          <figcaption>Every contract is an agreement. But an agreement is a contract only when the section 10 essentials are met.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The key words in section 2</h3>
          <p>Section 2 of the Act defines the basic words. Here they are in plain English, with the example used across this course. LedgerLite Pvt Ltd, a Karnataka software company, wants to buy a helpdesk platform from CloudDesk Solutions Pvt Ltd, a made-up Maharashtra vendor.</p>
          <table class="lc-table">
            <thead><tr><th>Word</th><th>Plain meaning</th><th>In the CloudDesk deal</th></tr></thead>
            <tbody>
              <tr><td><strong>Proposal</strong> (offer), 2(a)</td><td>One person says they are willing to do something. They ask the other person to agree.</td><td>CloudDesk sends a quote: 250 seats for ₹18,00,000 a year.</td></tr>
              <tr><td><strong>Acceptance</strong>, 2(b)</td><td>The other person clearly says yes. Under section 7, the yes must be absolute. A "yes, but" is a new proposal (a counter-offer).</td><td>LedgerLite agrees to the final price and terms.</td></tr>
              <tr><td><strong>Promise</strong>, 2(b)</td><td>A proposal that has been accepted.</td><td>CloudDesk promises to provide the platform.</td></tr>
              <tr><td><strong>Promisor and promisee</strong>, 2(c)</td><td>The person who makes the proposal, and the person who accepts it.</td><td>Each side is both, because each makes a promise.</td></tr>
              <tr><td><strong>Consideration</strong>, 2(d)</td><td>What each side does or promises in return. It can be money, an act, or a promise not to do something.</td><td>LedgerLite pays fees. CloudDesk gives access and support.</td></tr>
              <tr><td><strong>Agreement</strong>, 2(e)</td><td>A promise, or a set of promises, that are consideration for each other.</td><td>Fees in return for the service.</td></tr>
              <tr><td><strong>Void</strong> and <strong>voidable</strong>, 2(g) and 2(i)</td><td>Void: the law will not enforce it at all. Voidable: one side may choose to cancel it, for example after fraud.</td><td>If CloudDesk lied about a security certificate, LedgerLite may be able to cancel.</td></tr>
              <tr><td><strong>Contract</strong>, 2(h)</td><td>An agreement that the law will enforce.</td><td>The signed Master Subscription Agreement (MSA).</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Section 10: the five essentials</h3>
          <p>Section 10 says an agreement is a contract when all of these are true. Always read the bare act (the exact text of the law) on India Code before you rely on a section.</p>
          <table class="lc-table">
            <thead><tr><th>Essential</th><th>Plain meaning</th><th>What a reviewer checks</th></tr></thead>
            <tbody>
              <tr><td><strong>Free consent</strong></td><td>Both sides agree freely. There is no coercion, undue influence, fraud, misrepresentation or mistake (sections 13 to 22).</td><td>Was anyone pressured or misled? Do the documents match what was said?</td></tr>
              <tr><td><strong>Competent parties</strong></td><td>Each party is an adult of sound mind and not barred by law (section 11).</td><td>For a company: is the signer authorised, for example by a board resolution?</td></tr>
              <tr><td><strong>Lawful consideration</strong></td><td>What is given in return is allowed by law (section 23).</td><td>Is the payment for something legal?</td></tr>
              <tr><td><strong>Lawful object</strong></td><td>The purpose is not illegal, fraudulent or against public policy (section 23).</td><td>What is the deal really for?</td></tr>
              <tr><td><strong>Not expressly declared void</strong></td><td>The Act does not say this type of agreement is void. One example is an agreement in restraint of trade (section 27).</td><td>Does any clause stop someone from working or trading?</td></tr>
            </tbody>
          </table>
          <p>Most contracts need no special form. They can even be made by email or online. The Information Technology Act 2000 (section 10A) accepts contracts made by electronic means. But some laws need writing, registration or stamp duty for certain documents. Check the current law for each document.</p>
        </div>
        <div class="lc-card">
          <h3>The parts of a written contract</h3>
          <p>Business contracts follow a common layout. Knowing it helps you tell AI exactly where to look.</p>
          <table class="lc-table">
            <thead><tr><th>Part</th><th>What it does</th><th>In the CloudDesk MSA</th></tr></thead>
            <tbody>
              <tr><td>Title, date and parties</td><td>Names who is bound</td><td>Clause 1: CloudDesk ("Provider") and LedgerLite ("Customer")</td></tr>
              <tr><td>Recitals</td><td>Background, often starting "Whereas"</td><td>Why LedgerLite needs a helpdesk platform</td></tr>
              <tr><td>Definitions</td><td>Fixes the meaning of key words</td><td>Clause 2: "Services", "Customer Data"</td></tr>
              <tr><td>Operative clauses</td><td>The main promises</td><td>Term, fees, service levels, data protection</td></tr>
              <tr><td>Boilerplate</td><td>Standard clauses near the end</td><td>Notices, governing law, entire agreement</td></tr>
              <tr><td>Schedules</td><td>Extra details attached to the contract</td><td>The Order Form with seats and prices</td></tr>
              <tr><td>Signature block</td><td>Who signs, and in what role</td><td>Authorised signatories of both companies</td></tr>
            </tbody>
          </table>
          <p>AI can label these parts and explain them in plain words. But you must still read the actual clauses yourself.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: from quote to contract</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put the steps of the CloudDesk deal in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">LedgerLite asks three vendors for quotes. This is an invitation to make offers, not an offer.</li>
              <li data-order="2">CloudDesk sends its quote and its standard MSA. This is the proposal.</li>
              <li data-order="3">Nandini, LedgerLite's in-house counsel, asks for a higher liability cap. This is a counter-offer.</li>
              <li data-order="4">CloudDesk sends a revised draft with the changes.</li>
              <li data-order="5">LedgerLite accepts the revised draft without further changes.</li>
              <li data-order="6">Authorised signatories of both companies sign the MSA.</li>
              <li data-order="7">Both sides start to perform: CloudDesk gives access and LedgerLite pays.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to test a simple deal against the basics of the Indian Contract Act. Then check its section numbers against the bare act.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a patient tutor on Indian contract law for business owners and law students.

        Here is a simple deal: [Rangrez Crafts, a Rajasthan handicrafts brand, asks a supplier in Uttar Pradesh on WhatsApp for 500 brass lamps. The supplier replies "₹450 each, delivery in 30 days". Neha, the owner, replies "OK, confirmed".]

        1. Name the proposal, the acceptance, the consideration and the parties.
        2. Make a table of the five essentials in section 10 of the Indian Contract Act 1872. Columns: Essential | Met? (Yes / No / Unclear) | Why | What to confirm.
        3. List 4 questions a lawyer would ask before relying on this deal.
        4. Say which facts are missing.

        Rules: use simple English. Mention only section numbers you are sure of, and tell me to check them in the bare act. Do not name any cases. End with one line saying this is general education, not legal advice.</pre>
            <ul class="ai-try-checks">
              <li>Look up every section number on India Code. Does it say what the AI claims?</li>
              <li>The answer names no cases, or you can find each one in a real database.</li>
              <li>It marks things as "Unclear" when facts are missing, instead of guessing.</li>
              <li>It notices open points such as payment terms, quality and delivery place.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A contract is an agreement that the law will enforce. Section 10 gives the five tests. When you know these basics, you can guide AI with the right questions and catch it when it applies the wrong law.
        </div>
      HTML
      starter_code: nil
    },
    2 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-law">Law</div>
          <h1 class="lc-title">Where AI Helps in Contract Review</h1>
        </div>
        <p class="lc-lead">Contract review is slow, careful reading. AI assistants such as Claude can read a 40-page contract in seconds. They can summarise it, find clauses, compare versions and flag possible risks. This gives you a fast first pass. But AI can miss a clause, apply the wrong country's law or invent a case. In this lesson you will learn which jobs to give AI, what goes wrong, and why the lawyer stays responsible for every word.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 270" role="img" aria-label="A contract goes to an AI first pass, which drafts a summary, finds clauses, compares versions and flags risks. The lawyer then checks the source clauses, Indian law and citations, and makes the decision. Risks to catch are a missed clause, the wrong law, a made-up citation and leaked client data.">
            <defs><marker id="cr2a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="15" y="40" width="130" height="150" rx="10" fill="#27274e" stroke="#3b82f6"/>
              <text x="80" y="95" font-weight="700">Contract</text>
              <text x="80" y="117" font-size="11" fill="#9b99b8">CloudDesk MSA</text>
              <text x="80" y="133" font-size="11" fill="#9b99b8">version 1</text>
              <rect x="175" y="20" width="200" height="190" rx="12" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="275" y="46" font-weight="700" fill="#c4b5fd">AI first pass</text>
              <g font-size="12">
                <text x="275" y="80">Summary of key terms</text>
                <text x="275" y="110">Find clauses</text>
                <text x="275" y="140">Compare versions</text>
                <text x="275" y="170">Flag possible risks</text>
              </g>
              <text x="275" y="198" font-size="10.5" fill="#9b99b8">a draft, not advice</text>
              <rect x="405" y="20" width="200" height="190" rx="12" fill="#1f1f44" stroke="#10b981"/>
              <text x="505" y="46" font-weight="700" fill="#6ee7b7">Lawyer checks</text>
              <g font-size="12">
                <text x="505" y="80">Open the source clause</text>
                <text x="505" y="110">Confirm Indian law</text>
                <text x="505" y="140">Check every citation</text>
                <text x="505" y="170">Add missing points</text>
              </g>
              <rect x="635" y="40" width="110" height="150" rx="10" fill="#27274e" stroke="#f59e0b"/>
              <text x="690" y="80" font-weight="700" fill="#fcd34d">Decision</text>
              <text x="690" y="100" font-size="11" fill="#9b99b8">by the lawyer</text>
              <text x="690" y="130" font-size="11">advise</text>
              <text x="690" y="148" font-size="11">negotiate</text>
              <text x="690" y="166" font-size="11">sign off</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#cr2a)">
                <line x1="146" y1="115" x2="172" y2="115"/>
                <line x1="376" y1="115" x2="402" y2="115"/>
                <line x1="606" y1="115" x2="632" y2="115"/>
              </g>
              <rect x="15" y="225" width="730" height="36" rx="8" fill="#1f1f44" stroke="#ec4899"/>
              <text x="380" y="248" font-size="12" fill="#f9a8d4">Risks to catch: a missed clause · the wrong law · a made-up citation · leaked client data</text>
            </g>
          </svg>
          <figcaption>AI gives a fast first draft. The lawyer checks it against the source and makes every decision.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Jobs where AI helps</h3>
          <table class="lc-table">
            <thead><tr><th>Job</th><th>What AI gives you</th><th>What you must still check</th></tr></thead>
            <tbody>
              <tr><td>Summary</td><td>A key terms sheet: parties, term, fees, termination</td><td>Every value against the clause it came from</td></tr>
              <tr><td>Clause finding</td><td>Where indemnity, liability or renewal clauses are</td><td>Related clauses in schedules and definitions</td></tr>
              <tr><td>Plain-language explanation</td><td>A clause explained for the finance or sales team</td><td>That the meaning is not changed or softened</td></tr>
              <tr><td>Comparing versions</td><td>A list of changes between two drafts</td><td>Use a document compare tool too. AI may miss small edits.</td></tr>
              <tr><td>Risk flags</td><td>Clauses that look one-sided or unusual</td><td>Whether the risk matters for this client and deal</td></tr>
              <tr><td>Drafting help</td><td>Comment wording, emails, a first memo draft</td><td>Tone, accuracy and the client's real position</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>What can go wrong</h3>
          <ul class="lc-list">
            <li><strong>Missed clauses.</strong> AI may skip a schedule or a scanned page. It may also miss a clause that changes another one, such as "subject to the Order Form".</li>
            <li><strong>Wrong law.</strong> Many AI answers lean on US or English law. A point that is true there may not be true in India. Ask for Indian law and check it.</li>
            <li><strong>Made-up citations.</strong> AI can invent cases that sound real. In the US case Mata v. Avianca (2023), lawyers filed a brief with fake cases from ChatGPT. The court sanctioned them.</li>
            <li><strong>Wrong numbers.</strong> AI may read "fees for 3 months" as "12 months". It may mix up a yearly fee and a total fee.</li>
            <li><strong>Confident tone.</strong> A wrong answer can sound as sure as a right one.</li>
            <li><strong>Confidentiality.</strong> Pasting client documents into an unapproved tool can break your duties. The next lesson covers this.</li>
          </ul>
          <p>Courts and bar bodies now expect care with AI. In 2025, the Kerala High Court issued a policy that stops its district judiciary from using AI to decide cases. In the US, ABA Formal Opinion 512 (2024) says lawyers keep their duties of competence and confidentiality when they use AI. Check the current rules where you practise.</p>
        </div>
        <div class="lc-card">
          <h3>Weak prompt, better prompt</h3>
          <p>A good review prompt says who you act for, which law applies and what you want back. It also tells AI to point to clause numbers.</p>
          <pre><code>Weak:
        Review this contract and tell me if it is OK to sign.

        Better:
        You are helping a lawyer with a first pass only.
        We act for LedgerLite Pvt Ltd, the customer.
        The contract is governed by Indian law.
        1. List the clauses on term, fees, liability,
           indemnity, termination and disputes.
        2. For each, quote the clause number and give
           its meaning in 2 plain sentences.
        3. Say which side each clause favours.
        4. If a topic is not covered, write "Not found".
        Do not cite cases. Do not say whether to sign.</code></pre>
          <p>The better prompt makes AI show its source. It also keeps the decision with the lawyer. At Mehra &amp; Rao Associates, Adv. Sameer Rao reads every flagged clause before any advice goes to the client.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: AI first pass or lawyer's job?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each task. Can AI do a first draft, or must the lawyer do or decide it?</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="ai" data-label="AI first draft, then checked"></div>
              <div data-sorter-target="bucket" data-bucket="lawyer" data-label="Lawyer does or decides"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="ai" data-why="Finding clauses is a search task. The lawyer still checks nothing was missed.">List every clause in the CloudDesk MSA that mentions termination</li>
              <li data-bucket="lawyer" data-why="Whether a cap is acceptable depends on the client's risk and the deal. That is a judgement.">Decide if a liability cap of 3 months' fees is acceptable for LedgerLite</li>
              <li data-bucket="ai" data-why="AI can draft a plain explanation. The lawyer checks that the meaning is correct.">Explain the arbitration clause in plain words for LedgerLite's finance team</li>
              <li data-bucket="lawyer" data-why="Only the original source proves a case is real and says what AI claims.">Confirm that a case AI mentioned is real by opening it in SCC Online or Indian Kanoon</li>
              <li data-bucket="ai" data-why="AI can list changes. A document compare tool and a human check confirm them.">Make a first list of changes between version 1 and version 2</li>
              <li data-bucket="lawyer" data-why="Advice to sign is legal advice. The lawyer is responsible for it.">Tell Nandini whether LedgerLite should sign</li>
              <li data-bucket="lawyer" data-why="Which risks matter depends on the client's business. The lawyer decides.">Choose which three points to push in the negotiation</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI for a first-pass review of three sample clauses. Then check each point against the clause text yourself.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are helping a lawyer with a FIRST PASS contract review. You do not give legal advice. We act for [LedgerLite Pvt Ltd, the customer]. The contract is governed by Indian law.

        Clauses:
        [3.2 The Agreement renews automatically for further terms of 3 years each, unless a party gives written notice of non-renewal at least 180 days before the end of the current term.
        11.2 Provider's total liability is capped at the fees paid by Customer in the 3 months before the claim.
        13.2 Disputes go to arbitration seated in Singapore, before a sole arbitrator appointed by the Provider.]

        For each clause, give:
        - Clause number
        - Plain meaning (2 short sentences)
        - Who it favours: Provider, Customer or balanced
        - Questions the lawyer should look into

        Rules: use only the text above. Do not name any cases or quote any law. If you are unsure, say "Unsure". End with a short list of what the lawyer must check before advising.</pre>
            <ul class="ai-try-checks">
              <li>Each point matches the clause text. Nothing is added that the text does not say.</li>
              <li>The numbers are right: 180 days, 3 years and 3 months.</li>
              <li>The answer does not invent cases, sections or quotes.</li>
              <li>It leaves the final decision to the lawyer.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> AI is a fast first reader, not a lawyer. Use it to find, summarise and flag. Then check every point against the source, confirm the law and every citation, and make the decisions yourself.
        </div>
      HTML
      starter_code: nil
    },
    3 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-law">Law</div>
          <h1 class="lc-title">Confidentiality and Safe Tools</h1>
        </div>
        <p class="lc-lead">Contracts are full of secrets: prices, business plans, personal data and negotiation limits. When you paste a contract into an AI tool, you share it with the tool's provider. So the first question is not about the prompt. The first question is: may I share this, and with which tool? In this lesson you will learn your professional duties and how business AI tools differ from public ones. You will also learn to redact a document.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 245" role="img" aria-label="A decision path before pasting a document into AI. First, is AI allowed for this matter? If no, stop and ask. Second, is this an approved business tool? If no, do not paste. If yes, redact what the task does not need, paste only the needed parts and check the answer. Keep a note of the tool, date and what was shared.">
            <defs><marker id="cr3a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12.5" fill="#e2e0f0" text-anchor="middle">
              <text x="15" y="22" text-anchor="start" font-size="12" fill="#9b99b8">Before you paste anything into AI</text>
              <rect x="15" y="40" width="160" height="62" rx="10" fill="#27274e" stroke="#3b82f6"/>
              <text x="95" y="66">Is AI allowed</text><text x="95" y="84">for this matter?</text>
              <rect x="205" y="40" width="160" height="62" rx="10" fill="#27274e" stroke="#8b5cf6"/>
              <text x="285" y="66">Is it an approved</text><text x="285" y="84">business tool?</text>
              <rect x="395" y="40" width="160" height="62" rx="10" fill="#27274e" stroke="#22d3ee"/>
              <text x="475" y="66">Redact what the</text><text x="475" y="84">task does not need</text>
              <rect x="585" y="40" width="160" height="62" rx="10" fill="#27274e" stroke="#10b981"/>
              <text x="665" y="66">Paste only needed</text><text x="665" y="84">parts, then check</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#cr3a)">
                <line x1="176" y1="71" x2="202" y2="71"/>
                <line x1="366" y1="71" x2="392" y2="71"/>
                <line x1="556" y1="71" x2="582" y2="71"/>
                <line x1="95" y1="104" x2="95" y2="146"/>
                <line x1="285" y1="104" x2="285" y2="146"/>
                <line x1="665" y1="104" x2="665" y2="146"/>
              </g>
              <g font-size="11" fill="#6ee7b7">
                <text x="189" y="62">yes</text><text x="379" y="62">yes</text>
              </g>
              <g font-size="11" fill="#fca5a5">
                <text x="110" y="130">no</text><text x="300" y="130">no</text>
              </g>
              <rect x="15" y="150" width="160" height="62" rx="10" fill="#1f1f44" stroke="#ef4444"/>
              <text x="95" y="176" fill="#fca5a5">Stop. Ask the</text><text x="95" y="194" fill="#fca5a5">partner or client</text>
              <rect x="205" y="150" width="160" height="62" rx="10" fill="#1f1f44" stroke="#ef4444"/>
              <text x="285" y="176" fill="#fca5a5">Do not paste.</text><text x="285" y="194" fill="#fca5a5">Use an approved tool</text>
              <rect x="395" y="150" width="350" height="62" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="570" y="176" fill="#6ee7b7">Keep a note in the matter file:</text>
              <text x="570" y="194" font-size="11" fill="#9b99b8">which tool, the date, what was shared, who checked</text>
            </g>
          </svg>
          <figcaption>Permission and the right tool come first. Redaction comes next. Only then do you write the prompt.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Your duties</h3>
          <ul class="lc-list">
            <li><strong>Professional duty.</strong> The Bar Council of India Rules set out an advocate's duties to the client. They say an advocate must not break the evidence law's duty of confidentiality. That duty was in section 126 of the Indian Evidence Act. From 1 July 2024 it is in section 132 of the Bharatiya Sakshya Adhiniyam 2023.</li>
            <li><strong>Contract duty.</strong> The client may be bound by an NDA (non-disclosure agreement). Even a draft may be confidential. The CloudDesk MSA itself has a confidentiality clause.</li>
            <li><strong>Data protection.</strong> Contracts often hold personal data, such as names, phone numbers and salaries. The Digital Personal Data Protection Act 2023 and its Rules apply. Check the current rules and dates.</li>
            <li><strong>In-house lawyers.</strong> In a judgment of 31 October 2025, the Supreme Court held that salaried in-house counsel cannot claim the section 132 privilege that practising advocates have. Some limited protection may apply under section 134. Nandini at LedgerLite should read the judgment with her team and follow company policy closely.</li>
            <li><strong>Firm and client rules.</strong> Many firms and clients now set AI rules in engagement letters or IT policies. Follow the stricter rule.</li>
          </ul>
          <p>This is general education, not legal advice. Check the current text of each rule before you rely on it.</p>
        </div>
        <div class="lc-card">
          <h3>Public tools and approved business tools</h3>
          <p>A <strong>public AI tool</strong> is a free or personal account that anyone can sign up for. An <strong>approved tool</strong> is one your firm or company has checked, signed a contract for and allowed for client work. A paid personal plan is still not approved unless your organisation approves it.</p>
          <table class="lc-table">
            <thead><tr><th>Question to ask</th><th>Why it matters</th></tr></thead>
            <tbody>
              <tr><td>Is our data used to train the provider's models?</td><td>If chats are used for training, your client's text leaves your control.</td></tr>
              <tr><td>How long are chats and files kept?</td><td>Shorter retention (how long data is stored) means less risk.</td></tr>
              <tr><td>Who can see our chats?</td><td>Admin controls and access logs show who used what.</td></tr>
              <tr><td>Where is the data stored and processed?</td><td>Some clients need data kept in certain countries.</td></tr>
              <tr><td>Is there a signed agreement with data protection terms?</td><td>It gives the firm legal promises about confidentiality and security.</td></tr>
            </tbody>
          </table>
          <p>Tool settings and terms change often. Read the tool's current terms and your firm's IT policy. Ask your IT or risk team when in doubt.</p>
        </div>
        <div class="lc-card">
          <h3>How to redact</h3>
          <p>To <strong>redact</strong> means to remove or replace private details. Replace each detail with a clear placeholder. Keep the key (which placeholder means what) in the matter file, not in the AI tool.</p>
          <pre><code>Before:
        LedgerLite Pvt Ltd (GSTIN 29AAAAA0000A1Z5) shall pay
        CloudDesk Solutions Pvt Ltd ₹18,00,000 a year.
        Notices to Nandini, nandini@ledgerlite.example.

        After:
        [CUSTOMER] (GSTIN [ID-1]) shall pay [VENDOR]
        [ANNUAL FEE] a year.
        Notices to [CONTACT-1], [EMAIL-1].</code></pre>
          <p>Remove names, addresses, emails, phone numbers, PAN, GSTIN, bank details and signatures. Remove amounts and dates if the task does not need them. Also check hidden parts of a Word file: comments, tracked changes, file names and document properties.</p>
          <p>Redaction lowers risk, but it does not remove it. A rare deal can still be recognised from its details. Redaction never replaces permission.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: where can this go?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Pooja, a paralegal at Mehra &amp; Rao Associates, wants AI help with these items. Sort each one.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="public" data-label="A public AI tool is fine"></div>
              <div data-sorter-target="bucket" data-bucket="approved" data-label="Approved tool only"></div>
              <div data-sorter-target="bucket" data-bucket="stop" data-label="Stop and ask first"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="public" data-why="The text of a law is public. No client data is involved.">Section 10 of the Indian Contract Act, copied from India Code</li>
              <li data-bucket="public" data-why="It is made up for training and has no client details.">A practice clause Pooja wrote herself for a training session</li>
              <li data-bucket="approved" data-why="It is client work with prices and names. Use only the firm's approved tool, and redact what the task does not need.">The CloudDesk MSA draft, for a first-pass summary for LedgerLite</li>
              <li data-bucket="approved" data-why="Negotiation limits are very sensitive. Share only in an approved tool, and only if the task needs them.">Nandini's note on the lowest liability cap LedgerLite will accept</li>
              <li data-bucket="stop" data-why="The client's NDA may forbid any outside service. Check with the partner and the client first.">A contract whose NDA forbids sharing it with any third-party service</li>
              <li data-bucket="stop" data-why="This is sensitive personal data. Ask whether AI is needed at all, and follow data protection rules.">A scanned staff file with Aadhaar numbers, for a quick summary</li>
              <li data-bucket="stop" data-why="The client has not agreed to AI use yet. Ask Adv. Kavita Mehra to confirm with the client.">Rangrez Crafts' supplier contract, before Neha has agreed that the firm may use AI</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Practise redaction on a made-up clause. Use only this sample, never real client text, in a tool your firm has not approved.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a careful legal assistant at an Indian law firm. Help me practise redaction. The text below is made up.

        Text:
        [This Agreement is made on 1 September 2026 between CloudDesk Solutions Pvt Ltd, 4th Floor, Tech Park Road, Maharashtra (GSTIN 27AAAAA0000A1Z5) and LedgerLite Pvt Ltd, Plot 9, IT Park, Karnataka. The Customer shall pay ₹18,00,000 a year to account no. 001122334455, IFSC ABCD0001234. Notices go to Nandini, Legal Counsel, nandini@ledgerlite.example, +91 90000 00000.]

        Tasks:
        1. Rewrite the text with every private detail replaced by a placeholder, such as [VENDOR], [CUSTOMER], [ADDRESS-1], [AMOUNT-1], [EMAIL-1].
        2. Make a table: Placeholder | Type of detail (do not repeat the real value).
        3. List any detail you were unsure about.
        4. Write a 10-point "before you paste" checklist for lawyers and paralegals in India. Include client permission, approved tools, hidden Word data and data protection.

        Use simple English.</pre>
            <ul class="ai-try-checks">
              <li>No name, address, GSTIN, account number, IFSC, email or phone is left in the rewritten text.</li>
              <li>The same detail uses the same placeholder every time.</li>
              <li>The placeholder table does not repeat the real values.</li>
              <li>The checklist puts permission and approved tools before redaction.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Confidentiality comes before the prompt. Get permission, use an approved tool, remove what the task does not need and keep a record. A fast answer is never worth a breach of a client's trust.
        </div>
      HTML
      starter_code: nil
    },
    4 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-law">Law</div>
          <h1 class="lc-title">Common Contract Types</h1>
        </div>
        <p class="lc-lead">Most business contracts belong to a small number of types. Each type has its own key clauses and its own common traps. When you know the type, you know what to look for. You can also give AI a much better prompt. In this lesson you will meet seven common types: NDA, service agreement, SaaS agreement, supply agreement, employment contract, lease and MoU.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 235" role="img" aria-label="Seven common contract types, each with its purpose and an example: NDA, service agreement, SaaS agreement, supply agreement, employment contract, lease deed and MoU.">
            <defs><marker id="cr4a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="15" y="22" text-anchor="start" font-size="12" fill="#9b99b8">Seven contracts you will see often</text>
              <rect x="15" y="36" width="172" height="80" rx="10" fill="#27274e" stroke="#8b5cf6"/>
              <text x="101" y="62" font-weight="700">NDA</text>
              <text x="101" y="82" font-size="11" fill="#9b99b8">keeps shared info secret</text>
              <text x="101" y="100" font-size="11" fill="#c4b5fd">Rangrez + a designer</text>
              <rect x="201" y="36" width="172" height="80" rx="10" fill="#27274e" stroke="#3b82f6"/>
              <text x="287" y="62" font-weight="700">Service agreement</text>
              <text x="287" y="82" font-size="11" fill="#9b99b8">one side does work</text>
              <text x="287" y="100" font-size="11" fill="#93c5fd">LedgerLite + a trainer</text>
              <rect x="387" y="36" width="172" height="80" rx="10" fill="#27274e" stroke="#22d3ee"/>
              <text x="473" y="62" font-weight="700">SaaS agreement</text>
              <text x="473" y="82" font-size="11" fill="#9b99b8">software used online</text>
              <text x="473" y="100" font-size="11" fill="#67e8f9">LedgerLite + CloudDesk</text>
              <rect x="573" y="36" width="172" height="80" rx="10" fill="#27274e" stroke="#10b981"/>
              <text x="659" y="62" font-weight="700">Supply agreement</text>
              <text x="659" y="82" font-size="11" fill="#9b99b8">regular sale of goods</text>
              <text x="659" y="100" font-size="11" fill="#6ee7b7">Rangrez + brass maker</text>
              <rect x="108" y="134" width="172" height="80" rx="10" fill="#27274e" stroke="#f59e0b"/>
              <text x="194" y="160" font-weight="700">Employment</text>
              <text x="194" y="180" font-size="11" fill="#9b99b8">terms of a job</text>
              <text x="194" y="198" font-size="11" fill="#fcd34d">LedgerLite + new hire</text>
              <rect x="294" y="134" width="172" height="80" rx="10" fill="#27274e" stroke="#ec4899"/>
              <text x="380" y="160" font-weight="700">Lease deed</text>
              <text x="380" y="180" font-size="11" fill="#9b99b8">use of property for rent</text>
              <text x="380" y="198" font-size="11" fill="#f9a8d4">Rangrez's Rajasthan shop</text>
              <rect x="480" y="134" width="172" height="80" rx="10" fill="#27274e" stroke="#9b99b8"/>
              <text x="566" y="160" font-weight="700">MoU</text>
              <text x="566" y="180" font-size="11" fill="#9b99b8">records a shared plan</text>
              <text x="566" y="198" font-size="11" fill="#e2e0f0">LedgerLite + a college</text>
            </g>
          </svg>
          <figcaption>Know the type first. The type tells you which clauses matter most.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Seven types and what to watch</h3>
          <table class="lc-table">
            <thead><tr><th>Type</th><th>What it is for</th><th>Key clauses to check</th></tr></thead>
            <tbody>
              <tr><td><strong>NDA</strong> (non-disclosure agreement)</td><td>Protects secret information shared before or during a deal</td><td>What counts as confidential, one-way or mutual, how long it lasts, exceptions, return of documents</td></tr>
              <tr><td><strong>Service agreement</strong></td><td>One party does work for a fee</td><td>Scope of work, deliverables, fees, who owns the work, liability, termination</td></tr>
              <tr><td><strong>SaaS agreement</strong> (software as a service)</td><td>Use of software over the internet by subscription</td><td>Service levels, data protection, sub-processors, price increases, renewal, exit and data export</td></tr>
              <tr><td><strong>Supply agreement</strong></td><td>Regular purchase of goods</td><td>Specifications, quality checks, delivery, when ownership and risk pass, returns, payment</td></tr>
              <tr><td><strong>Employment contract</strong></td><td>Terms of a job</td><td>Role, pay, probation, notice period, confidentiality, IP in work, restrictions after leaving</td></tr>
              <tr><td><strong>Lease deed</strong> (or leave and licence)</td><td>Use of property for rent</td><td>Rent and increases, deposit, lock-in period, repairs, renewal, registration and stamp duty</td></tr>
              <tr><td><strong>MoU</strong> (memorandum of understanding)</td><td>Records a shared plan before a final contract</td><td>Which parts bind and which do not, exclusivity, confidentiality, end date</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Points to watch under Indian law</h3>
          <p>These are general points. The details depend on the facts and the current law. A lawyer must check each one.</p>
          <ul class="lc-list">
            <li><strong>Employment.</strong> A ban on working for a competitor after the job ends is usually hard to enforce in India. This is because of section 27 of the Indian Contract Act. Labour laws, including the four Labour Codes, also apply. Check the current rules.</li>
            <li><strong>Lease.</strong> Longer leases may need registration and stamp duty. The rules and rates differ from state to state.</li>
            <li><strong>MoU.</strong> An MoU may or may not bind the parties. It depends on its words and what the parties meant. Good MoUs say clearly which clauses bind.</li>
            <li><strong>NDA.</strong> A court may order a party to stop a breach (an injunction). The Specific Relief Act 1963 covers injunctions.</li>
            <li><strong>SaaS.</strong> Customer data often includes personal data. Check the data protection terms against the DPDP Act and Rules.</li>
            <li><strong>Supply.</strong> If the buyer is an individual consumer, consumer protection law may also apply.</li>
          </ul>
          <p>Titles can mislead. A "Letter of Intent" may work like an MoU. A "Service Agreement" may really be a SaaS subscription. Read the clauses, not just the title.</p>
        </div>
        <div class="lc-card">
          <h3>Using AI to find the type and the checklist</h3>
          <p>Neha, owner of Rangrez Crafts, gets a 4-page "Letter of Intent" from a made-up Gujarat retailer. It asks for exclusivity for 12 months. She asks AI for help before she calls Mehra &amp; Rao Associates.</p>
          <pre><code>Weak:
        What is this document?

        Better:
        I run a small handicrafts brand in Rajasthan.
        A retailer sent me a "Letter of Intent" (summary below).
        1. Which contract type is this most like?
        2. Which parts may be binding, and which may not?
        3. List the 8 clauses I should check for this type.
        4. List the questions I should ask my lawyer.
        Use simple English. Do not give legal advice.</code></pre>
          <p>AI can name the type and give a starting checklist. Neha must still send the document to her lawyer. Only the lawyer can say what binds her.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: which contract fits?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each situation into the contract type it needs.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="nda" data-label="NDA"></div>
              <div data-sorter-target="bucket" data-bucket="saas" data-label="SaaS or service"></div>
              <div data-sorter-target="bucket" data-bucket="supply" data-label="Supply"></div>
              <div data-sorter-target="bucket" data-bucket="emp" data-label="Employment"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="nda" data-why="She shares secret designs before any deal. An NDA protects them.">Neha shows new lamp designs to a freelance designer before hiring her</li>
              <li data-bucket="saas" data-why="LedgerLite pays a subscription to use software online.">LedgerLite subscribes to CloudDesk's online helpdesk for 250 agents</li>
              <li data-bucket="supply" data-why="Regular purchases of goods need a supply agreement.">Rangrez Crafts buys 500 brass lamps every month from an Uttar Pradesh maker</li>
              <li data-bucket="emp" data-why="A salaried job is employment, with notice periods and pay terms.">LedgerLite hires a support team lead on a monthly salary</li>
              <li data-bucket="nda" data-why="Secret plans are shared before a possible deal.">LedgerLite shows its product plans to a possible partner before talks</li>
              <li data-bucket="saas" data-why="One party does work for a fee. This is a service agreement.">A freelance trainer runs a 3-day workshop for LedgerLite's staff</li>
              <li data-bucket="supply" data-why="Repeat orders of goods are a supply relationship.">Rangrez Crafts orders printed gift boxes from a local printer every quarter</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to name a document's type and build a review checklist for it.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a helpful contract reviewer who explains things to small business owners in India in simple English.

        I received this document: [a 4-page "Letter of Intent" from a Gujarat home-decor retailer. It says the retailer will stock Rangrez Crafts products. Rangrez Crafts must not sell to any other Gujarat retailer for 12 months. The retailer plans a first order of about ₹5,00,000 but does not promise it. It says Indian law applies.]

        1. Which contract type is this most like: NDA, service, SaaS, supply, employment, lease or MoU? Explain why in 2 sentences.
        2. Which parts seem meant to be binding, and which do not? Mark any you cannot tell as "Unclear".
        3. Make a checklist table: Clause to check | Why it matters | Question to ask. Give 8 rows that suit this contract type.
        4. List 3 clauses that seem to be missing.

        Rules: do not name cases or quote laws. Do not tell me whether to sign. End by saying a lawyer must review the document.</pre>
            <ul class="ai-try-checks">
              <li>The type fits the facts, with a clear reason.</li>
              <li>It notices the one-sided exclusivity against an order that is not promised.</li>
              <li>The checklist suits this type, not a general list for any contract.</li>
              <li>It marks unclear points and sends you to a lawyer.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Name the contract type before you review it. The type tells you which clauses matter and which are missing. Tell AI the type and the side you act for, and its checklist will be far more useful.
        </div>
      HTML
      starter_code: nil
    },
    5 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-law">Law</div>
          <h1 class="lc-title">Summarising a Contract with AI</h1>
        </div>
        <p class="lc-lead">Busy clients rarely read a 40-page contract. They want the key terms on one page. A <strong>key terms sheet</strong> gives them that: parties, term, fees, obligations, termination and disputes. AI can draft one in minutes. But one wrong number or a missed clause can mislead the client. In this lesson you will learn to ask for a summary that points to its sources, and to check every line against the contract.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 270" role="img" aria-label="A contract goes to AI, which drafts a key terms sheet. Each row shows the term, the value, the clause number and a check mark. The renewal notice row is wrong: AI wrote 90 days, but clause 3.2 says 180 days.">
            <defs><marker id="cr5a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12" fill="#e2e0f0" text-anchor="middle">
              <rect x="15" y="40" width="120" height="170" rx="8" fill="#27274e" stroke="#3b82f6"/>
              <text x="75" y="64" font-size="13" font-weight="700">MSA v1</text>
              <g stroke="#4b4a78" stroke-width="3">
                <line x1="32" y1="84" x2="118" y2="84"/><line x1="32" y1="100" x2="110" y2="100"/>
                <line x1="32" y1="116" x2="118" y2="116"/><line x1="32" y1="132" x2="100" y2="132"/>
                <line x1="32" y1="148" x2="118" y2="148"/><line x1="32" y1="164" x2="108" y2="164"/>
              </g>
              <text x="75" y="194" font-size="11" fill="#9b99b8">15 clauses</text>
              <rect x="160" y="95" width="100" height="60" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="210" y="121" fill="#c4b5fd" font-weight="700">AI drafts</text>
              <text x="210" y="139" font-size="11" fill="#9b99b8">the sheet</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#cr5a)">
                <line x1="136" y1="125" x2="157" y2="125"/>
                <line x1="261" y1="125" x2="282" y2="125"/>
              </g>
              <rect x="285" y="20" width="460" height="200" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <g text-anchor="start">
                <text x="300" y="46" fill="#9b99b8" font-weight="700">Term</text>
                <text x="430" y="46" fill="#9b99b8" font-weight="700">What it says</text>
                <text x="615" y="46" fill="#9b99b8" font-weight="700">Clause</text>
                <text x="685" y="46" fill="#9b99b8" font-weight="700">Check</text>
                <text x="300" y="76">Parties</text><text x="430" y="76">CloudDesk / LedgerLite</text><text x="615" y="76">1</text><text x="690" y="76" fill="#6ee7b7">✓</text>
                <text x="300" y="104">Term</text><text x="430" y="104">3 years</text><text x="615" y="104">3.1</text><text x="690" y="104" fill="#6ee7b7">✓</text>
                <text x="300" y="132">Fees</text><text x="430" y="132">₹18,00,000 a year</text><text x="615" y="132">4.1</text><text x="690" y="132" fill="#6ee7b7">✓</text>
                <text x="300" y="160" fill="#fca5a5">Renewal notice</text><text x="430" y="160" fill="#fca5a5">90 days</text><text x="615" y="160" fill="#fca5a5">3.2</text><text x="690" y="160" fill="#fca5a5">✗</text>
                <text x="300" y="188">Liability cap</text><text x="430" y="188">3 months' fees</text><text x="615" y="188">11.2</text><text x="690" y="188" fill="#6ee7b7">✓</text>
              </g>
              <line x1="295" y1="56" x2="735" y2="56" stroke="#4b4a78"/>
              <rect x="285" y="232" width="460" height="30" rx="8" fill="#1f1f44" stroke="#ef4444"/>
              <text x="515" y="252" font-size="11.5" fill="#fca5a5">Clause 3.2 says 180 days. Fix the row before it reaches the client.</text>
            </g>
          </svg>
          <figcaption>Each row points to a clause. You open that clause and tick the row only when it matches.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>What goes in a key terms sheet</h3>
          <p>Here is the start of a sheet for the CloudDesk Master Subscription Agreement (MSA), version 1. Adv. Sameer Rao of Mehra &amp; Rao Associates prepares it for Nandini at LedgerLite.</p>
          <table class="lc-table">
            <thead><tr><th>Term</th><th>What the contract says</th><th>Clause</th></tr></thead>
            <tbody>
              <tr><td>Parties</td><td>CloudDesk Solutions Pvt Ltd, Maharashtra (Provider); LedgerLite Pvt Ltd, Karnataka (Customer)</td><td>1</td></tr>
              <tr><td>Start date</td><td>Not stated in the MSA. The "Effective Date" depends on the Order Form.</td><td>2, Order Form</td></tr>
              <tr><td>Term</td><td>3 years from the Effective Date</td><td>3.1</td></tr>
              <tr><td>Renewal</td><td>Renews automatically for 3 years at a time, unless notice is given at least 180 days before the term ends</td><td>3.2</td></tr>
              <tr><td>Fees</td><td>₹18,00,000 a year for 250 seats, invoiced yearly in advance. GST extra.</td><td>4.1, 4.4</td></tr>
              <tr><td>Fee changes</td><td>Provider may revise fees at any time on 30 days' notice</td><td>4.2</td></tr>
              <tr><td>Payment</td><td>Within 15 days of invoice. Late interest 2% a month.</td><td>4.3</td></tr>
              <tr><td>Main obligations</td><td>Provider: run the platform, target 99.5% uptime. Customer: pay the fees on time.</td><td>4, 5</td></tr>
              <tr><td>Liability cap</td><td>Provider's liability is capped at fees paid in the 3 months before the claim</td><td>11.2</td></tr>
              <tr><td>Termination</td><td>Either side for uncured breach (30 days). Provider may also end on 60 days' notice.</td><td>12.1, 12.2</td></tr>
              <tr><td>Law and disputes</td><td>Indian law. Arbitration seated in Singapore.</td><td>13</td></tr>
            </tbody>
          </table>
          <p>A key terms sheet states facts. It does not rate risks. Risk rating comes later in this course, as a separate step.</p>
        </div>
        <div class="lc-card">
          <h3>Ask for a summary you can check</h3>
          <pre><code>Weak:
        Summarise this contract.

        Better:
        You are a careful paralegal. We act for the Customer.
        Make a key terms sheet from the contract below.
        Table: Term | What the contract says | Clause no. |
        Exact words (short quote).
        Rows: parties, start date, term, renewal, fees,
        fee changes, payment, obligations, liability cap,
        termination, governing law, disputes, notices.
        Use only the text given. If a term is missing,
        write "Not stated". Do not guess. Do not rate risks.
        After the table, list anything unclear.</code></pre>
          <p>The clause number and the short quote are the key. They let you check each row in seconds. "Not stated" stops AI from filling gaps with typical terms from other contracts.</p>
        </div>
        <div class="lc-card">
          <h3>Check every line</h3>
          <ul class="lc-list">
            <li><strong>Open the clause.</strong> Read the source for every row. Do not trust the quote alone.</li>
            <li><strong>Check numbers and units.</strong> Per year or in total? Days or business days? ₹18,00,000 a year for 3 years is ₹54,00,000 before GST.</li>
            <li><strong>Work out key dates yourself.</strong> Take a made-up end date of 30 September 2029. 180 days before it is 3 April 2029. Count on a calendar, and check how the contract counts days.</li>
            <li><strong>Follow definitions and cross-references.</strong> "Fees" may be defined in the Order Form. A clause "subject to clause 11" changes its meaning.</li>
            <li><strong>Check schedules and annexures.</strong> Service levels and prices often sit there.</li>
            <li><strong>Check the version.</strong> Write the draft date on the sheet, for example "MSA v1, 1 September 2026".</li>
            <li><strong>Record who checked.</strong> Add a "Checked by" name and date at the bottom.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Activity: checking the CloudDesk summary</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Sameer's prompt">Sameer pastes the MSA into the firm's approved AI tool. He uses the "better" prompt with clause numbers and short quotes.</li>
              <li data-kind="answer" data-label="AI draft">AI returns a 13-row key terms sheet with clause numbers. It says "Renewal notice: 90 days (clause 3.2)".</li>
              <li data-kind="check" data-label="Pooja checks clause 3.2">Pooja opens clause 3.2. It says "at least 180 days". She fixes the row and notes the error.</li>
              <li data-kind="warn" data-label="A total, not a yearly fee">The fees row says "₹18,00,000 total". Clause 4.1 says per year. The real 3-year value is ₹54,00,000 before GST.</li>
              <li data-kind="tool" data-label="Search in Word">Pooja searches the Word file for "notice", "terminate" and "renew" to find every related clause.</li>
              <li data-kind="result" data-label="A missed clause">The search finds clause 14. The Provider may give notice by posting on its website. The AI sheet missed this.</li>
              <li data-kind="check" data-label="Sign-off">Sameer reads the final sheet against the MSA. He adds "Checked by Sameer Rao, MSA v1" and sends it to Nandini.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI for a key terms sheet with clause numbers and quotes. Then check each row against the text.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a careful paralegal at an Indian law firm. Make a key terms sheet for the contract below. We act for [the Customer, LedgerLite Pvt Ltd].

        Contract text:
        [1 Parties: CloudDesk Solutions Pvt Ltd (Provider) and LedgerLite Pvt Ltd (Customer).
        3.1 Term: 3 years from the Effective Date.
        3.2 Renews for further 3-year terms unless notice is given at least 180 days before the term ends.
        4.1 Fee: ₹18,00,000 per year for 250 seats, invoiced in advance.
        4.2 Provider may revise the fees at any time on 30 days' notice.
        11.2 Provider's total liability is capped at the fees paid in the 3 months before the claim.
        13.2 Disputes go to arbitration seated in Singapore.]

        Make a table: Term | What the contract says | Clause no. | Exact words (short quote).
        Rows: parties, start date, term, renewal, fees, fee changes, payment, liability cap, termination, governing law, disputes, notices.

        Rules: use only the text above. If a term is missing, write "Not stated". Do not guess. Do not give legal advice or rate risks. After the table, list anything unclear for the lawyer.</pre>
            <ul class="ai-try-checks">
              <li>Every quote matches the contract text word for word.</li>
              <li>Payment, termination, governing law and notices say "Not stated".</li>
              <li>The numbers are right: 180 days, ₹18,00,000 per year, 30 days, 3 months.</li>
              <li>It does not add terms that are common in other contracts but missing here.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A good summary points to its source. Ask for clause numbers, short quotes and "Not stated" for gaps. Then open every clause and check every row before the sheet reaches the client.
        </div>
      HTML
      starter_code: nil
    },
    6 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-law">Law</div>
          <h1 class="lc-title">Finding and Explaining Key Clauses</h1>
        </div>
        <p class="lc-lead">A few clauses decide who carries the risk in a contract. They say who pays for claims, how much you can recover, how the deal ends and where disputes go. In this lesson you will learn seven key clauses: indemnity, limitation of liability, termination, confidentiality, IP, governing law and dispute resolution. You will use the CloudDesk MSA v1 as the example. You will also learn to ask AI to find each clause, quote it and explain it in plain words. This is general education, not legal advice.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 250" role="img" aria-label="Seven key clauses, each with the question it answers and what CloudDesk MSA version 1 says: indemnity, liability limits, termination, confidentiality, IP, governing law and disputes.">
            <defs><marker id="cr6a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="15" y="22" text-anchor="start" font-size="12" fill="#9b99b8">Seven key clauses in the CloudDesk MSA v1</text>
              <rect x="15" y="36" width="172" height="86" rx="10" fill="#27274e" stroke="#ec4899"/>
              <text x="101" y="60" font-weight="700">Indemnity</text>
              <text x="101" y="80" font-size="11" fill="#9b99b8">who pays for claims?</text>
              <text x="101" y="106" font-size="11" fill="#f9a8d4">cl. 10: only Customer</text>
              <rect x="201" y="36" width="172" height="86" rx="10" fill="#27274e" stroke="#f59e0b"/>
              <text x="287" y="60" font-weight="700">Liability limits</text>
              <text x="287" y="80" font-size="11" fill="#9b99b8">how much can you recover?</text>
              <text x="287" y="106" font-size="11" fill="#fcd34d">cl. 11: 3 months' fees</text>
              <rect x="387" y="36" width="172" height="86" rx="10" fill="#27274e" stroke="#3b82f6"/>
              <text x="473" y="60" font-weight="700">Termination</text>
              <text x="473" y="80" font-size="11" fill="#9b99b8">how can the deal end?</text>
              <text x="473" y="106" font-size="11" fill="#93c5fd">cl. 12: vendor may quit</text>
              <rect x="573" y="36" width="172" height="86" rx="10" fill="#27274e" stroke="#10b981"/>
              <text x="659" y="60" font-weight="700">Confidentiality</text>
              <text x="659" y="80" font-size="11" fill="#9b99b8">what stays secret?</text>
              <text x="659" y="106" font-size="11" fill="#6ee7b7">cl. 7: mutual, 2 years</text>
              <rect x="108" y="140" width="172" height="86" rx="10" fill="#27274e" stroke="#8b5cf6"/>
              <text x="194" y="164" font-weight="700">IP</text>
              <text x="194" y="184" font-size="11" fill="#9b99b8">who owns and uses what?</text>
              <text x="194" y="210" font-size="11" fill="#c4b5fd">cl. 8.2: data for ML</text>
              <rect x="294" y="140" width="172" height="86" rx="10" fill="#27274e" stroke="#22d3ee"/>
              <text x="380" y="164" font-weight="700">Governing law</text>
              <text x="380" y="184" font-size="11" fill="#9b99b8">which law applies?</text>
              <text x="380" y="210" font-size="11" fill="#67e8f9">cl. 13.1: India</text>
              <rect x="480" y="140" width="172" height="86" rx="10" fill="#27274e" stroke="#ef4444"/>
              <text x="566" y="164" font-weight="700">Disputes</text>
              <text x="566" y="184" font-size="11" fill="#9b99b8">where and how decided?</text>
              <text x="566" y="210" font-size="11" fill="#fca5a5">cl. 13.2: Singapore</text>
            </g>
          </svg>
          <figcaption>Each key clause answers one question about risk. The coloured line shows what CloudDesk's first draft says.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Seven clauses in plain words</h3>
          <table class="lc-table">
            <thead><tr><th>Clause</th><th>What it does</th><th>Ask this</th><th>CloudDesk MSA v1</th></tr></thead>
            <tbody>
              <tr><td><strong>Indemnity</strong></td><td>One party promises to cover the other's losses from certain events, often claims by third parties</td><td>Who covers whom, for what, and is it capped?</td><td>10.1: LedgerLite covers CloudDesk for all claims from its use of the Services. CloudDesk gives no indemnity, not even for IP claims.</td></tr>
              <tr><td><strong>Limitation of liability</strong></td><td>Sets the most a party must pay, and which losses are excluded</td><td>How big is the cap? What sits outside it (carve-outs)?</td><td>11.2: CloudDesk's cap is fees paid in 3 months, about ₹4,50,000. No carve-outs. 11.3: LedgerLite is not capped.</td></tr>
              <tr><td><strong>Termination</strong></td><td>Says how and when the contract can end, and what happens then</td><td>Can both sides end it? Is there a refund? Can we get our data back?</td><td>12.2: only CloudDesk may end for convenience. 12.3: no refund; 30 days to export data.</td></tr>
              <tr><td><strong>Confidentiality</strong></td><td>Keeps shared information secret</td><td>Is it mutual? How long does it last?</td><td>7: mutual, for the term and 2 years after</td></tr>
              <tr><td><strong>IP</strong> (intellectual property)</td><td>Says who owns software, data and outputs, and who may use them</td><td>Does the vendor get rights in our data?</td><td>8.1: LedgerLite owns its data. 8.2: CloudDesk may use it to train ML models, forever.</td></tr>
              <tr><td><strong>Governing law</strong></td><td>Chooses the law that decides what the contract means</td><td>Which country's law? Does it fit both parties?</td><td>13.1: laws of India</td></tr>
              <tr><td><strong>Dispute resolution</strong></td><td>Says how disputes are decided: court or arbitration, where, and by whom</td><td>Where is the seat? Who picks the arbitrator?</td><td>13.2: arbitration seated in Singapore; CloudDesk alone picks a sole arbitrator</td></tr>
            </tbody>
          </table>
          <p>A "carve-out" is a type of loss that is kept outside the cap. Common carve-outs are data breach, breach of confidentiality and IP indemnity claims.</p>
        </div>
        <div class="lc-card">
          <h3>Worked example: indemnity and the cap together</h3>
          <p>Clauses work together. Read indemnity, exclusions and the cap as one set. Here are two made-up events under MSA v1.</p>
          <ul class="lc-list">
            <li><strong>An IP claim.</strong> A software company says CloudDesk's chat feature copies its patented design. It sues LedgerLite. CloudDesk has no duty to defend LedgerLite. Worse, 10.1 is broad. LedgerLite may even have to cover CloudDesk's costs, because the claim "arises from" LedgerLite's use.</li>
            <li><strong>A data breach.</strong> CloudDesk's error leaks LedgerLite's end-customer data. LedgerLite spends a made-up ₹40,00,000 on investigation, notices and support. The cap in 11.2 allows about ₹4,50,000. Clause 11.1 may also exclude some of these losses as "indirect".</li>
          </ul>
          <p><strong>Indian law, in general words.</strong> Section 124 of the Indian Contract Act 1872 defines a contract of indemnity. Business contracts often go wider than that section. Section 73 covers damages for breach. Section 74 covers a sum named in the contract for breach: a court awards reasonable compensation up to that sum. Businesses use liability caps often, and courts may enforce them. But the result depends on the wording and the facts. Check with counsel before you advise on any of these points.</p>
        </div>
        <div class="lc-card">
          <h3>Governing law, seat and arbitrator</h3>
          <p>Clause 13 has two parts. People often mix them up.</p>
          <ul class="lc-list">
            <li><strong>Governing law</strong> (13.1) decides what the contract means. Here it is Indian law.</li>
            <li><strong>The seat</strong> (13.2) is the legal home of the arbitration. The law and courts of the seat usually control the process. A Singapore seat means Singapore's arbitration law and courts, even though Indian law governs the contract.</li>
            <li><strong>The arbitrator</strong> decides the dispute. Here CloudDesk alone appoints one arbitrator.</li>
          </ul>
          <p>In India, arbitration is governed by the Arbitration and Conciliation Act 1996. In 2021, the Supreme Court held in <em>PASL Wind Solutions v GE Power Conversion</em> that two Indian parties may choose a foreign seat. So the Singapore seat is not automatically invalid. But it may add cost, travel and a more complex route to enforce the award in India. The Supreme Court has also questioned clauses that let one party alone appoint the arbitrator, including in a 2024 Constitution Bench judgment. Ask counsel to check the current position before you advise.</p>
        </div>
        <div class="lc-card">
          <h3>Ask AI to find and explain a clause</h3>
          <pre><code>Weak:
        Explain the indemnity clause.

        Better:
        We act for LedgerLite Pvt Ltd, the Customer.
        Indian law governs the contract below.
        1. Find every clause on indemnity and liability,
           including definitions and exclusions they use.
        2. For each: clause no. | exact words (short quote) |
           meaning in 2 plain sentences | who it favours.
        3. Show how 10.1, 11.1 and 11.2 work together
           in one example with rupee amounts.
        4. Write "Not in text" for anything not covered.
        Do not name cases. Do not advise on enforceability.</code></pre>
          <p>Without these rules, AI often explains a <em>typical</em> indemnity clause, not this one. Watch for three traps:</p>
          <ul class="lc-list">
            <li><strong>Definitions.</strong> "Customer Data" includes end-customer personal data. That makes 8.2 far more serious.</li>
            <li><strong>Cross-references.</strong> Clause 14 lets CloudDesk give notice on its website. That links to the fee changes in 4.2.</li>
            <li><strong>Silence.</strong> A missing Provider indemnity is a key point. AI may not mention what is not there, so ask.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Activity: name the clause</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each piece of contract wording into the clause type it belongs to.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="ind" data-label="Indemnity"></div>
              <div data-sorter-target="bucket" data-bucket="lol" data-label="Limitation of liability"></div>
              <div data-sorter-target="bucket" data-bucket="term" data-label="Termination"></div>
              <div data-sorter-target="bucket" data-bucket="disp" data-label="Dispute resolution"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="ind" data-why="One party promises to cover the other's losses from third-party claims. That is an indemnity.">"Customer shall indemnify Provider against all claims arising from Customer's use of the Services."</li>
              <li data-bucket="ind" data-why="A promise to defend against IP claims is an IP indemnity. LedgerLite wants this, but v1 does not have it.">"Provider shall defend Customer against any claim that the platform infringes a third party's IP."</li>
              <li data-bucket="lol" data-why="It excludes a type of loss. Exclusions are part of the limitation of liability.">"Neither party is liable for indirect or consequential loss, or loss of profit."</li>
              <li data-bucket="lol" data-why="It sets the most one party must pay. That is a liability cap.">"Provider's total liability shall not exceed the fees paid in the 3 months before the claim."</li>
              <li data-bucket="term" data-why="It says when a party may end the contract after a breach.">"Either party may terminate for material breach not cured within 30 days of notice."</li>
              <li data-bucket="term" data-why="Ending the contract for no reason is termination for convenience.">"Provider may terminate this Agreement for convenience on 60 days' notice."</li>
              <li data-bucket="disp" data-why="It names the seat and how the arbitrator is chosen. That is dispute resolution.">"Disputes shall be referred to a sole arbitrator appointed by the Provider, seated in Singapore."</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to explain three linked clauses and test them with an example. Then check each quote against the text.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a careful contract reviewer helping an Indian lawyer. Explain the clauses below for a business reader. We act for [the Customer, LedgerLite Pvt Ltd]. Indian law governs the contract.

        Clauses (made-up):
        [10.1 Customer shall indemnify Provider against all claims, losses and costs arising from Customer's use of the Services or Customer Data.
        11.1 Neither party is liable for indirect or consequential loss, or loss of profit.
        11.2 Provider's total liability is capped at the fees paid by Customer in the 3 months before the claim.
        4.1 Fee: ₹18,00,000 per year.]

        1. Make a table: Clause no. | Exact words (short quote) | Meaning in 2 plain sentences | Who it favours.
        2. Work out the cap in rupees. Show your sum.
        3. Explain what happens in this event: [the Provider's error leaks customer data and the Customer spends ₹40,00,000 on the response].
        4. List what is NOT in these clauses that a customer would expect, such as an indemnity from the Provider.
        5. List 4 questions for the lawyer.

        Rules: use only the text above. Do not name cases. Do not say whether a clause is enforceable. Use simple English.</pre>
            <ul class="ai-try-checks">
              <li>Every quote matches the clause text word for word.</li>
              <li>The cap is right: 3 months of ₹18,00,000 a year is ₹4,50,000.</li>
              <li>It notes that 11.1 may exclude some losses, and that 10.1 can make the Customer pay for claims.</li>
              <li>It spots the missing Provider indemnity and the missing carve-outs.</li>
              <li>It names no cases and leaves enforceability to the lawyer.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Key clauses work as a set. Read indemnity, exclusions and the cap together, and always follow the definitions. Ask AI to quote each clause and say what is missing, then check every quote and every rupee figure yourself.
        </div>
      HTML
      starter_code: nil
    },
    7 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-law">Law</div>
          <h1 class="lc-title">Comparing Versions and Redlines</h1>
        </div>
        <p class="lc-lead">Contracts go back and forth many times. Each new draft can fix old problems and add new ones. Some changes are marked. Others are not, and nobody mentions them. In this lesson you will compare two versions of the CloudDesk MSA. You will learn why a document compare tool comes first. You will use AI to understand the changes. And you will catch a silent change before your client signs.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 285" role="img" aria-label="CloudDesk's cover email lists five changes in version 2. A full compare of version 1 and version 2 finds eight changes. Three of them were not mentioned: the Services definition now includes AI models, clause 4.3 allows suspension even for disputed amounts, and clause 12.3 cuts the data export period from 30 to 15 days.">
            <defs><marker id="cr7a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12.5" fill="#e2e0f0" text-anchor="middle">
              <rect x="15" y="20" width="320" height="200" rx="12" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="175" y="46" font-weight="700" fill="#93c5fd">Cover email: "5 changes"</text>
              <g text-anchor="start">
                <text x="35" y="78">3.2 renewal: 1 year, 90 days</text>
                <text x="35" y="104">6.2 breach notice: 72 hours</text>
                <text x="35" y="130">8.2 ML training words removed</text>
                <text x="35" y="156">11.2 cap: 12 months' fees</text>
                <text x="35" y="182">13.2 seat: Maharashtra</text>
              </g>
              <text x="175" y="208" font-size="11" fill="#9b99b8">"There are no other changes."</text>
              <line x1="340" y1="120" x2="400" y2="120" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#cr7a)"/>
              <text x="370" y="110" font-size="10.5" fill="#9b99b8">compare</text>
              <rect x="405" y="20" width="340" height="245" rx="12" fill="#1f1f44" stroke="#10b981"/>
              <text x="575" y="46" font-weight="700" fill="#6ee7b7">Word Compare: 8 changes</text>
              <g text-anchor="start">
                <text x="425" y="78">3.2 renewal: 1 year, 90 days</text>
                <text x="425" y="102">6.2 breach notice: 72 hours</text>
                <text x="425" y="126">8.2 ML training words removed</text>
                <text x="425" y="150">11.2 cap: 12 months' fees</text>
                <text x="425" y="174">13.2 seat: Maharashtra</text>
                <text x="425" y="202" fill="#fca5a5">2 "Services" now include AI models</text>
                <text x="425" y="226" fill="#fca5a5">4.3 suspension, even if disputed</text>
                <text x="425" y="250" fill="#fca5a5">12.3 data export: 30 to 15 days</text>
              </g>
              <line x1="420" y1="186" x2="730" y2="186" stroke="#4b4a78"/>
              <text x="175" y="252" font-size="11.5" fill="#fca5a5">Red: silent changes, not in the email.</text>
              <text x="175" y="272" font-size="11" fill="#9b99b8">Only a full compare shows them.</text>
            </g>
          </svg>
          <figcaption>CloudDesk said it made five changes. A full compare found eight. The three in red were silent.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Words you need, and what happened</h3>
          <ul class="lc-list">
            <li><strong>Redline:</strong> a marked-up copy that shows deleted words and added words, usually in colour.</li>
            <li><strong>Tracked changes:</strong> the Word feature that records each edit as someone makes it.</li>
            <li><strong>Clean version:</strong> a draft with no marks. You cannot see what changed.</li>
            <li><strong>Silent change:</strong> a change that is not marked and not mentioned by the other side.</li>
          </ul>
          <p>On 22 September 2026, CloudDesk sent MSA v2 as a clean Word file. Its cover email said: "We have accepted your main points. There are no other changes." Silent changes are often honest mistakes. Someone edits a different base draft, or accepts all tracked changes before sending. But the effect on your client is the same. So never trust a cover email or a clean copy. Always run your own compare.</p>
          <p>Compare against the version <em>you</em> last sent or received, not a copy the other side attaches. Save each draft with a clear name, for example "CloudDesk MSA v2 22-09-2026 (received)".</p>
        </div>
        <div class="lc-card">
          <h3>Compare tool or AI? Use both, in this order</h3>
          <table class="lc-table">
            <thead><tr><th></th><th>Document compare tool</th><th>AI comparison</th></tr></thead>
            <tbody>
              <tr><td>Examples</td><td>Compare in Microsoft Word, Compare documents in Google Docs, dedicated legal compare software</td><td>An approved AI assistant, given both texts or the redline</td></tr>
              <tr><td>Strength</td><td>Finds every changed word, comma and number. Gives the same result each time.</td><td>Explains what each change means, groups changes and links them to other clauses</td></tr>
              <tr><td>Weakness</td><td>Does not explain meaning. Can get noisy if clauses are renumbered or reformatted.</td><td>Can miss small edits in long texts, or report a change that is not there</td></tr>
              <tr><td>Use it for</td><td>The record of what changed</td><td>Understanding and sorting the changes</td></tr>
            </tbody>
          </table>
          <p>Run the compare tool first. Then give AI the redline, or both versions, and ask it to explain and sort the changes. Menu names change over time, so check the tool's current help pages.</p>
        </div>
        <div class="lc-card">
          <h3>The CloudDesk v2 changes</h3>
          <table class="lc-table">
            <thead><tr><th>Clause</th><th>v1 (1 Sept)</th><th>v2 (22 Sept)</th><th>In the email?</th><th>What it means for LedgerLite</th></tr></thead>
            <tbody>
              <tr><td>3.2</td><td>3-year renewals, 180 days' notice</td><td>1-year renewals, 90 days' notice</td><td>Yes</td><td>Real fix</td></tr>
              <tr><td>6.2</td><td>"without undue delay"</td><td>within 72 hours of becoming aware</td><td>Yes</td><td>Better, but still no details or help promised</td></tr>
              <tr><td>8.2</td><td>use data to improve the Services, "including training machine-learning models"</td><td>use data "to operate and improve the Services"</td><td>Yes</td><td>Looks fixed, but read it with clause 2</td></tr>
              <tr><td>11.2</td><td>cap: 3 months' fees</td><td>cap: 12 months' fees (about ₹18,00,000)</td><td>Yes</td><td>Better, but still no carve-outs</td></tr>
              <tr><td>13.2</td><td>Singapore seat</td><td>Maharashtra seat</td><td>Yes</td><td>Better, but CloudDesk still picks the arbitrator</td></tr>
              <tr><td><strong>2</strong></td><td>"Services" = platform and support</td><td>adds "CloudDesk AI Assist features, including the models that power them"</td><td><strong>No</strong></td><td>"Improve the Services" in 8.2 now covers AI models. Training is back.</td></tr>
              <tr><td><strong>4.3</strong></td><td>15 days to pay</td><td>adds: suspension if any amount, "including a disputed amount", is unpaid 7 days after the due date</td><td><strong>No</strong></td><td>CloudDesk can switch off 250 agents during a billing dispute</td></tr>
              <tr><td><strong>12.3</strong></td><td>30 days to export data</td><td>15 days to export data</td><td><strong>No</strong></td><td>Less time to move data to a new vendor</td></tr>
            </tbody>
          </table>
          <p>Note the clause 2 change. A definition change does not touch the clause that uses it. So a reader who checks only 8.2 thinks the problem is gone.</p>
        </div>
        <div class="lc-card">
          <h3>Prompt: explain and sort the changes</h3>
          <pre><code>Weak:
        What changed between these two drafts?

        Better:
        We act for the Customer. Below are: (a) the redline
        from Word Compare, v1 against v2, and (b) the other
        side's cover email.
        1. List EVERY change, however small, in a table:
           Clause | Old words | New words | In the cover
           email? (Yes/No) | Effect on the Customer.
        2. For each changed definition, list every clause
           that uses it and explain the new effect.
        3. Give the total number of changes you found.
        Do not skip formatting-only changes. Mark them
        "Format only". Do not guess.</code></pre>
          <p>Then check the AI's count against the compare tool. If the redline shows 8 changes and the table has 7 rows, find the missing one. Also read each red "No" row in the full contract yourself.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: Pooja checks v2</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="A quick question">Sameer pastes v1 and v2 into the firm's approved AI tool. He asks, "What changed?"</li>
              <li data-kind="answer" data-label="AI reply">AI lists five changes: 3.2, 6.2, 8.2, 11.2 and 13.2. It says, "There are no other changes."</li>
              <li data-kind="warn" data-label="Too neat">The AI list matches the cover email exactly. AI can miss small edits in a long text. This is not a record of changes.</li>
              <li data-kind="tool" data-label="Word Compare">Pooja opens Word's Compare feature. She picks v1 as the original and v2 as the revised document.</li>
              <li data-kind="result" data-label="8 changes">The redline shows eight changes. Clause 2, clause 4.3 and clause 12.3 changed too.</li>
              <li data-kind="check" data-label="Read the definition">Sameer reads the new clause 2 with 8.2. "Improve the Services" now includes the AI models. The training right is back.</li>
              <li data-kind="check" data-label="Count and save">Sameer gives AI the redline and the better prompt. The table has 8 rows, matching the redline. Pooja saves the redline with the date.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Give AI two versions of some clauses and the cover email. See whether it finds the silent changes.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a careful contract reviewer. We act for [the Customer, LedgerLite Pvt Ltd]. Compare version 1 and version 2 below. The text is made up.

        Version 1:
        [2 "Services" means the CloudDesk helpdesk platform and support.
        4.3 Invoices are payable within 15 days.
        8.2 Provider may use Customer Data to operate and improve the Services, including training machine-learning models.
        12.3 Customer may export its data within 30 days of termination.]

        Version 2:
        [2 "Services" means the CloudDesk helpdesk platform, support and CloudDesk AI Assist features, including the models that power them.
        4.3 Invoices are payable within 15 days. Provider may suspend the Services if any amount, including a disputed amount, is unpaid 7 days after the due date.
        8.2 Provider may use Customer Data to operate and improve the Services.
        12.3 Customer may export its data within 15 days of termination.]

        Cover email: [We removed ML training from 8.2. No other changes.]

        1. Table: Clause | Old words | New words | In the email? (Yes/No) | Effect on the Customer.
        2. Explain how any changed definition affects other clauses.
        3. Give the total number of changes.
        Use simple English. Do not guess.</pre>
            <ul class="ai-try-checks">
              <li>It finds all 4 changes, including the small ones in 4.3 and 12.3.</li>
              <li>It marks clauses 2, 4.3 and 12.3 as not in the email.</li>
              <li>It links the new "Services" definition to 8.2 and says AI training may be back.</li>
              <li>Its count matches the rows in its own table.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Never trust a cover email or a clean copy. Run a document compare first, so you have a full record. Then use AI to explain the changes and match them to the cover email. Always check changed definitions, because they change other clauses without touching them.
        </div>
      HTML
      starter_code: nil
    },
    8 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-law">Law</div>
          <h1 class="lc-title">Checking Against a Playbook</h1>
        </div>
        <p class="lc-lead">A <strong>playbook</strong> is a company's written guide for contract review. For each clause, it says what the company wants, what it can accept and when a senior person must decide. With a playbook, every reviewer gives the same answer on the same point. In this lesson you will check CloudDesk's MSA v2 against LedgerLite's playbook. You will build a <strong>deviations table</strong>: a list of every place where the contract differs from the playbook, with a status and an action.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 290" role="img" aria-label="A decision path for each clause. If it meets the standard position, mark Meets. If not, but it is within the fallback, mark Fallback. If not, check the escalation triggers: if one applies, mark Escalate for Nandini or the CFO; if none applies, mark Negotiate. Example: a 72-hour breach notice is not 24 hours, not within 48 hours and not over 72 hours, so it is Negotiate.">
            <defs><marker id="cr8a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="15" y="30" width="110" height="50" rx="10" fill="#27274e" stroke="#9b99b8"/>
              <text x="70" y="60" font-weight="700">Clause in v2</text>
              <rect x="150" y="30" width="140" height="50" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="220" y="60">Meets standard?</text>
              <rect x="315" y="30" width="140" height="50" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="385" y="60">Within fallback?</text>
              <rect x="480" y="30" width="140" height="50" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="550" y="60">Escalate trigger?</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#cr8a)">
                <line x1="126" y1="55" x2="147" y2="55"/>
                <line x1="291" y1="55" x2="312" y2="55"/>
                <line x1="456" y1="55" x2="477" y2="55"/>
                <line x1="220" y1="81" x2="220" y2="127"/>
                <line x1="385" y1="81" x2="385" y2="127"/>
                <line x1="550" y1="81" x2="550" y2="127"/>
                <path d="M621,55 L695,55 L695,127"/>
              </g>
              <g font-size="11" fill="#9b99b8">
                <text x="301" y="47">no</text>
                <text x="466" y="47">no</text>
                <text x="658" y="47">no</text>
                <text x="234" y="108">yes</text>
                <text x="399" y="108">yes</text>
                <text x="564" y="108">yes</text>
              </g>
              <rect x="150" y="130" width="140" height="56" rx="10" fill="#27274e" stroke="#10b981"/>
              <text x="220" y="154" font-weight="700" fill="#6ee7b7">Meets</text>
              <text x="220" y="174" font-size="11" fill="#9b99b8">accept</text>
              <rect x="315" y="130" width="140" height="56" rx="10" fill="#27274e" stroke="#3b82f6"/>
              <text x="385" y="154" font-weight="700" fill="#93c5fd">Fallback</text>
              <text x="385" y="174" font-size="11" fill="#9b99b8">accept or ask more</text>
              <rect x="480" y="130" width="140" height="56" rx="10" fill="#27274e" stroke="#ef4444"/>
              <text x="550" y="154" font-weight="700" fill="#fca5a5">Escalate</text>
              <text x="550" y="174" font-size="11" fill="#9b99b8">Nandini or CFO decides</text>
              <rect x="640" y="130" width="110" height="56" rx="10" fill="#27274e" stroke="#f59e0b"/>
              <text x="695" y="154" font-weight="700" fill="#fcd34d">Negotiate</text>
              <text x="695" y="174" font-size="11" fill="#9b99b8">beyond fallback</text>
              <rect x="15" y="212" width="735" height="64" rx="10" fill="#1f1f44" stroke="#4b4a78"/>
              <text x="382" y="238" font-size="12">Example: 6.2 breach notice "within 72 hours"</text>
              <text x="382" y="260" font-size="11.5" fill="#9b99b8">not 24 hours (standard) · not within 48 hours (fallback) · not over 72 hours (trigger) → Negotiate</text>
            </g>
          </svg>
          <figcaption>Ask the same three questions for every clause. The answer gives the status and the next action.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Three positions for every clause</h3>
          <p>Nandini owns LedgerLite's playbook for SaaS and vendor contracts. Each row has three positions:</p>
          <ul class="lc-list">
            <li><strong>Standard:</strong> what LedgerLite asks for first.</li>
            <li><strong>Fallback:</strong> the weaker position LedgerLite can still accept without special approval.</li>
            <li><strong>Escalate:</strong> terms that need written approval from Nandini or the CFO, or may end the deal.</li>
          </ul>
          <table class="lc-table">
            <thead><tr><th>Clause</th><th>Standard</th><th>Fallback</th><th>Escalate</th></tr></thead>
            <tbody>
              <tr><td>Data breach notice</td><td>Within 24 hours, with details and help</td><td>Within 48 hours</td><td>No fixed time, or over 72 hours</td></tr>
              <tr><td>Sub-processors</td><td>Published list, 30 days' notice of changes, right to object</td><td>15 days' notice, right to terminate if we object</td><td>Any country, no notice</td></tr>
              <tr><td>Limitation of liability</td><td>Cap of 12 months' fees, with a higher cap or no cap for data breach, confidentiality and IP indemnity</td><td>12 months' fees with a separate data-breach cap</td><td>Cap below 12 months' fees, or no carve-outs</td></tr>
              <tr><td>Disputes</td><td>Arbitration seated in Karnataka; arbitrator chosen jointly or by an institution</td><td>Seat in Maharashtra; institutional rules</td><td>Foreign seat for an Indian vendor; arbitrator chosen by one side only</td></tr>
            </tbody>
          </table>
          <p>Some clauses fall between fallback and escalate. They are worse than the fallback but do not hit a trigger. Mark them "Negotiate". The reviewer pushes for the fallback, but no senior approval is needed yet.</p>
        </div>
        <div class="lc-card">
          <h3>The deviations table for MSA v2</h3>
          <p>Adv. Sameer Rao builds this table. It is an extract. The full table has a row for every playbook clause.</p>
          <table class="lc-table">
            <thead><tr><th>Clause</th><th>v2 says</th><th>Status</th><th>Action</th></tr></thead>
            <tbody>
              <tr><td>3.2 Renewal</td><td>1-year renewals, 90 days' notice</td><td>Fallback</td><td>Accept. Ask for a reminder 30 days before the deadline.</td></tr>
              <tr><td>4.2 Fee increases</td><td>Any time, 30 days' notice, no cap</td><td>Escalate</td><td>Ask for fixed fees in the term and a 5% cap at renewal</td></tr>
              <tr><td>4.3 Payment</td><td>15 days; 2% a month interest; suspension even for disputed amounts</td><td>Escalate</td><td>Remove suspension for disputed amounts; interest 1% a month</td></tr>
              <tr><td>6.2 Breach notice</td><td>Within 72 hours, no details</td><td>Negotiate</td><td>Ask for 24 hours with details and help; accept 48</td></tr>
              <tr><td>6.3 Sub-processors</td><td>Any country, no notice</td><td>Escalate</td><td>Ask for a list, 30 days' notice and a right to object</td></tr>
              <tr><td>8.2 and 2 Use of data</td><td>"Improve the Services", which now include AI models</td><td>Escalate</td><td>No training on Customer Data</td></tr>
              <tr><td>11.2 and 11.3 Liability</td><td>12 months' fees, no carve-outs; Customer uncapped</td><td>Escalate</td><td>Carve-outs for data breach, confidentiality, IP; mutual cap</td></tr>
              <tr><td>12.3 Exit</td><td>15 days to export data</td><td>Negotiate</td><td>Ask for 60 days; accept 30</td></tr>
              <tr><td>13.2 Disputes</td><td>Maharashtra seat; CloudDesk appoints the arbitrator</td><td>Escalate</td><td>Keep the Maharashtra seat. Arbitrator chosen jointly or by an institution.</td></tr>
            </tbody>
          </table>
          <p>Look at 13.2. The seat meets the fallback, but the arbitrator part hits a trigger. One clause can touch two playbook points. The worse status wins.</p>
        </div>
        <div class="lc-card">
          <h3>Prompt: check the contract against the playbook</h3>
          <pre><code>Weak:
        Does this contract follow our playbook?

        Better:
        You are a contract reviewer for LedgerLite (Customer).
        Below: (a) our playbook table, (b) contract v2.
        For EACH playbook row, find the matching clause(s).
        Table: Playbook topic | Clause no. | Short quote |
        Status | Reason | Suggested ask.
        Status must be one of: Meets, Fallback, Negotiate,
        Escalate, Not found. Negotiate = worse than fallback
        but no escalate trigger. If a clause breaks two
        rows, list both. Check definitions used by each
        clause. Then list contract clauses the playbook
        does not cover. Do not guess.</code></pre>
          <p>Common AI mistakes to catch:</p>
          <ul class="lc-list">
            <li><strong>Rounding up.</strong> AI may call 72 hours "Fallback" because it is close to 48 hours. Close is not within.</li>
            <li><strong>One row per clause.</strong> AI may rate 4.3 on the payment days and miss the suspension sentence.</li>
            <li><strong>Missing definitions.</strong> AI may mark 8.2 "Meets" and miss the new "Services" definition.</li>
            <li><strong>Gaps in the playbook.</strong> AI checks only the rows you give it. A lawyer must still read the clauses the playbook does not cover.</li>
          </ul>
          <p>The playbook is confidential company data. Use only an approved AI tool.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: build the deviations table</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put Sameer's steps in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Get the latest playbook from Nandini and the current draft, MSA v2.</li>
              <li data-order="2">Put both into the firm's approved AI tool with the "better" playbook prompt.</li>
              <li data-order="3">AI drafts the table with clause numbers, quotes and a status for each row.</li>
              <li data-order="4">Check each row against the contract text and the exact playbook wording.</li>
              <li data-order="5">Add what AI missed: definition changes and clauses the playbook does not cover.</li>
              <li data-order="6">Send the Escalate rows to Nandini with a one-line reason for each.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Give AI a short playbook and some clauses. Check that it applies the status labels exactly.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You review contracts for [LedgerLite Pvt Ltd, the Customer]. Check the clauses against our playbook. All text is made up.

        Playbook (Standard / Fallback / Escalate):
        [Renewal: 1 year, 30-60 days' notice / 90 days (ask for a vendor reminder) / over 1 year or over 90 days
        Payment: 30 days, no suspension / 15-21 days / suspension for a disputed invoice
        Breach notice: 24 hours with details / 48 hours / no fixed time or over 72 hours
        Exit: 60 days' data export / 30 days / no export right
        Disputes: Karnataka seat, joint arbitrator / Maharashtra seat / foreign seat, or one side picks the arbitrator]

        Contract v2:
        [3.2 1-year renewals unless notice is given 90 days before the end.
        4.3 Pay in 15 days. Provider may suspend the Services over any unpaid amount, even a disputed one.
        6.2 Personal data breach notice within 72 hours.
        12.3 Customer may export its data within 15 days.
        13.2 Maharashtra seat; the Provider appoints the sole arbitrator.]

        Table: Topic | Clause | Short quote | Status | Reason | Ask.
        Status is exactly one of: Meets, Fallback, Negotiate (worse than fallback, no trigger), Escalate. If a clause touches two points, the worse status wins. End with a count of each status.</pre>
            <ul class="ai-try-checks">
              <li>6.2 is Negotiate, not Fallback: 72 hours is worse than 48 but not over 72.</li>
              <li>4.3 is Escalate because of suspension for disputed amounts.</li>
              <li>13.2 is Escalate: the Maharashtra seat is fine, but the Provider picks the arbitrator.</li>
              <li>3.2 is Fallback, and the ask includes the missing reminder.</li>
              <li>The status counts match the rows.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A playbook turns opinion into a clear rule: Meets, Fallback, Negotiate or Escalate. AI can fill the table fast, but it rounds, skips second points and misses definitions. Check every status against the exact playbook words, and read what the playbook does not cover.
        </div>
      HTML
      starter_code: nil
    },
    9 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-law">Law</div>
          <h1 class="lc-title">Spotting Risks and Missing Clauses</h1>
        </div>
        <p class="lc-lead">A contract can hurt your client in two ways. Some clauses are there but one-sided. Other clauses should be there but are missing. AI is good at finding the first kind, because it can read the words. It is weaker at the second kind, because it cannot read words that are not there. In this lesson you will find one-sided terms, unlimited liability and auto-renewal traps in CloudDesk's MSA v2. You will also use a checklist to find missing clauses, including data protection terms.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 270" role="img" aria-label="Two kinds of risk in the CloudDesk MSA version 2. In the text, one-sided terms: price rises at any time, only the Customer indemnifies, the Customer's liability is uncapped, only the vendor may end for convenience, website notices. Not in the text, missing clauses: data processing terms, a security standard, backups and continuity, force majeure, help on exit, a limit on suspension. AI finds the first kind easily. For the second kind, give it a checklist.">
            <defs><marker id="cr9a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12.5" fill="#e2e0f0" text-anchor="middle">
              <rect x="15" y="20" width="355" height="190" rx="12" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="192" y="46" font-weight="700" fill="#fcd34d">In the text: one-sided</text>
              <g text-anchor="start">
                <text x="35" y="78">4.2 fees can rise at any time</text>
                <text x="35" y="104">10 only the Customer indemnifies</text>
                <text x="35" y="130">11.3 Customer's liability uncapped</text>
                <text x="35" y="156">12.2 only the vendor may quit</text>
                <text x="35" y="182">14 notice by website posting</text>
              </g>
              <rect x="390" y="20" width="355" height="190" rx="12" fill="#1f1f44" stroke="#ec4899"/>
              <text x="567" y="46" font-weight="700" fill="#f9a8d4">Not in the text: missing</text>
              <g text-anchor="start" fill="#e2e0f0">
                <text x="410" y="78">Data processing terms</text>
                <text x="410" y="104">A security standard</text>
                <text x="410" y="130">Backups and continuity</text>
                <text x="410" y="156">Force majeure</text>
                <text x="410" y="182">Help on exit, limit on suspension</text>
              </g>
              <rect x="15" y="225" width="730" height="36" rx="8" fill="#27274e" stroke="#4b4a78"/>
              <text x="380" y="248" font-size="12" fill="#9b99b8">AI spots the left side well. For the right side, give it a checklist and search the text yourself.</text>
            </g>
          </svg>
          <figcaption>Look for what is in the text and what is not. Missing clauses need a checklist.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>One-sided terms: the mirror test</h3>
          <p>A simple test: swap the party names. Would CloudDesk accept the clause if it applied to CloudDesk? If not, the clause is one-sided.</p>
          <table class="lc-table">
            <thead><tr><th>Clause (v2)</th><th>What it says</th><th>Mirror question</th></tr></thead>
            <tbody>
              <tr><td>4.2</td><td>CloudDesk may raise fees at any time on 30 days' notice</td><td>Could LedgerLite cut the fees at any time on 30 days' notice?</td></tr>
              <tr><td>6.1</td><td>Data use follows CloudDesk's Privacy Policy, "as updated from time to time"</td><td>Could LedgerLite change CloudDesk's duties by editing its own policy?</td></tr>
              <tr><td>10.1</td><td>Only LedgerLite gives an indemnity</td><td>Would CloudDesk cover all LedgerLite's claims with nothing in return?</td></tr>
              <tr><td>12.2</td><td>Only CloudDesk may end for convenience, with no refund</td><td>Could LedgerLite walk away on 60 days' notice?</td></tr>
              <tr><td>14</td><td>CloudDesk may give notice by posting on its website</td><td>Could LedgerLite give notice by posting on its own website?</td></tr>
              <tr><td>15</td><td>CloudDesk may assign freely; LedgerLite needs consent</td><td>Would CloudDesk let LedgerLite assign without asking?</td></tr>
            </tbody>
          </table>
          <p>One-sided does not always mean unacceptable. Vendors have standard terms for real reasons. The question is whether the risk is fair for this deal. Consumer protection law has rules on unfair terms, but it protects consumers. A company buying software for its business is usually not a consumer. So these points are mostly won or lost in negotiation. Check with counsel.</p>
        </div>
        <div class="lc-card">
          <h3>Unlimited liability and auto-renewal</h3>
          <p><strong>Unlimited liability.</strong> Read 10.1 and 11.3 together. LedgerLite must cover "all claims, losses and costs" from its use of the Services. And 11.3 puts no cap on LedgerLite. So LedgerLite's risk has no upper limit. CloudDesk's risk stops at about ₹18,00,000. This gap often matters more than the size of the cap.</p>
          <p><strong>Auto-renewal.</strong> Auto-renewal means the contract continues unless someone gives notice in time. Work out the real deadline. Take a made-up end date: say the first term ends on 30 September 2029. With 90 days' notice, the last day is 2 July 2029. The real dates depend on the Effective Date in the signed contract. Count on a calendar and check how the contract counts days. If LedgerLite misses it, it pays for another year: ₹18,00,000 or more, since 4.2 lets fees rise.</p>
          <p>Ask AI to do the date sums, but always check them yourself. AI often gets date arithmetic wrong by a day or two.</p>
        </div>
        <div class="lc-card">
          <h3>Missing data protection clauses</h3>
          <p>The helpdesk will hold personal data of LedgerLite's own customers. Under the Digital Personal Data Protection Act 2023 (DPDP Act), LedgerLite is the <strong>data fiduciary</strong>: the one who decides why and how the data is used. CloudDesk is its <strong>data processor</strong>: it processes the data for LedgerLite. In general words:</p>
          <ul class="lc-list">
            <li>A data fiduciary may use a data processor only under a valid contract.</li>
            <li>The fiduciary stays responsible for processing done for it, whatever the contract says.</li>
            <li>After a personal data breach, the fiduciary must inform the Data Protection Board and each affected person.</li>
            <li>The DPDP Rules were notified in November 2025. Most duties, including breach reporting, start about 18 months later. That falls within this 3-year contract.</li>
            <li>The Rules expect a detailed breach report to the Board within 72 hours. If CloudDesk takes the full 72 hours to tell LedgerLite, LedgerLite has no time left.</li>
          </ul>
          <p>Check the current Act, Rules and start dates with counsel. MSA v2 has no data processing terms. Missing points include use only on LedgerLite's instructions and clear security measures. Help with breach reports and with requests from data principals (the people the data is about) is also missing. So are deletion with a certificate at the end, and limits on sub-processors and transfers.</p>
        </div>
        <div class="lc-card">
          <h3>Ask AI for what is missing</h3>
          <pre><code>Weak:
        Is anything missing from this contract?

        Better:
        We act for the Customer in a SaaS contract under
        Indian law. The vendor will process personal data.
        Check the contract against this checklist:
        data processing terms, security standard, breach
        help, sub-processors, backups and continuity,
        force majeure, exit help, suspension limits,
        price protection, insurance, audit or security
        reports, deletion certificate.
        Table: Topic | Found? (clause no. + short quote,
        or "Not found") | Risk for the Customer | Ask.
        Do not mark a topic "Found" without a quote.</code></pre>
          <p>For each "Not found", search the Word file yourself. Try words like "force majeure", "security", "backup" and "audit". AI may miss a clause in a schedule. It may also claim a clause exists when it does not. Also read the documents the contract links to, such as the Order Form and the Privacy Policy.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: one-sided, missing or fine?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each point about CloudDesk's MSA v2.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="one" data-label="One-sided term"></div>
              <div data-sorter-target="bucket" data-bucket="miss" data-label="Missing clause"></div>
              <div data-sorter-target="bucket" data-bucket="fine" data-label="Fine as drafted"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="one" data-why="Only CloudDesk can change the price, at any time. It fails the mirror test.">4.2: CloudDesk may revise the fees at any time on 30 days' notice</li>
              <li data-bucket="miss" data-why="The MSA says nothing about backups or disaster recovery. A helpdesk for 250 agents needs this.">No clause on backups or disaster recovery</li>
              <li data-bucket="fine" data-why="This is the right position for the customer, and it matches the playbook.">8.1: LedgerLite owns its Customer Data</li>
              <li data-bucket="miss" data-why="LedgerLite, as data fiduciary, needs the vendor's help with requests from data principals. The MSA is silent.">No duty to help LedgerLite answer requests from data principals</li>
              <li data-bucket="one" data-why="CloudDesk may assign freely but LedgerLite needs consent. The rights are not equal.">15: CloudDesk may assign the contract; LedgerLite needs consent</li>
              <li data-bucket="fine" data-why="Fees plus GST is normal. It matches the playbook.">4.4: fees exclude GST, which the Customer pays</li>
              <li data-bucket="miss" data-why="There is no force majeure clause in v1 or v2. The lawyer must decide what to ask for.">No force majeure clause</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Give AI a contract outline and a checklist. Ask for one-sided terms and missing clauses, with proof.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a careful contract reviewer in India. We act for [LedgerLite Pvt Ltd, the Customer] in a SaaS helpdesk contract. The vendor will store personal data of our customers. The text is made up.

        Contract outline:
        [3.2 Auto-renews for 1-year terms unless notice is given 90 days before the end.
        4.2 Provider may revise fees at any time on 30 days' notice.
        6.1 Provider processes data under its Privacy Policy, as updated from time to time.
        10.1 Customer indemnifies Provider for all claims from its use of the Services.
        11.2 Provider's liability is capped at 12 months' fees. 11.3 Customer's liability is not capped.
        12.2 Provider may terminate for convenience on 60 days' notice.
        15 Provider may assign freely. Customer needs consent.]

        1. One-sided terms: table of Clause | Mirror question | Who benefits.
        2. Missing clauses: check data processing terms, security, backups, force majeure, exit help, suspension limits, audit, insurance. Table: Topic | Found? (clause no. or "Not found") | Risk | Ask.
        3. Say the first term ends on [30 September 2029], a made-up date. Give the last day for non-renewal notice and show the count.
        Rules: no case names. Say what the lawyer must check.</pre>
            <ul class="ai-try-checks">
              <li>It pairs 10.1 with 11.3 and says the Customer's risk has no limit.</li>
              <li>It notes that 6.1 lets the Provider change the rules by editing its own policy.</li>
              <li>Every "Found" row gives a real clause number from the outline. The rest say "Not found".</li>
              <li>The notice date is right. For the made-up end date of 30 September 2029, 90 days before is 2 July 2029.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Review what is there and what is not. Use the mirror test for one-sided terms, and read liability and indemnity together. For missing clauses, give AI a checklist, demand a quote for every "Found", and search the text yourself for every "Not found".
        </div>
      HTML
      starter_code: nil
    },
    10 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-law">Law</div>
          <h1 class="lc-title">Risk Rating and Review Memos</h1>
        </div>
        <p class="lc-lead">A list of 20 issues does not help a busy client. They need to know which issues matter most and what to do. In this lesson you will rate each risk as high, medium or low, with a clear reason. Then you will turn the ratings into a short review memo for a business reader. You will use the CloudDesk MSA v2 review for LedgerLite. AI can draft the ratings and the memo. The lawyer checks every rating, number and word.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="A risk grid with impact on the vertical axis and likelihood on the horizontal axis. High-impact, likely risks such as AI use of data, price rises, suspension, liability and sub-processors are red. Medium risks such as the 72-hour breach notice, exit terms, SLA, arbitrator appointment and website notices are amber. Low risks such as renewal, assignment, confidentiality and warranty are green. Next to the grid, the review memo outline: bottom line, top risks, what was fixed, silent changes, next steps and limits.">
            <defs><marker id="cr10a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="11" fill="#e2e0f0" text-anchor="middle">
              <text x="25" y="140" font-size="11.5" fill="#9b99b8" transform="rotate(-90 25 140)">Impact</text>
              <text x="60" y="68" font-size="10.5" fill="#9b99b8">High</text>
              <text x="60" y="138" font-size="10.5" fill="#9b99b8">Med</text>
              <text x="60" y="208" font-size="10.5" fill="#9b99b8">Low</text>
              <rect x="80" y="30" width="120" height="70" fill="#3a2a1a" stroke="#f59e0b"/>
              <rect x="200" y="30" width="120" height="70" fill="#3b1f2e" stroke="#ef4444"/>
              <rect x="320" y="30" width="120" height="70" fill="#3b1f2e" stroke="#ef4444"/>
              <rect x="80" y="100" width="120" height="70" fill="#3a2a1a" stroke="#f59e0b"/>
              <rect x="200" y="100" width="120" height="70" fill="#3a2a1a" stroke="#f59e0b"/>
              <rect x="320" y="100" width="120" height="70" fill="#3b1f2e" stroke="#ef4444"/>
              <rect x="80" y="170" width="120" height="70" fill="#1a3330" stroke="#10b981"/>
              <rect x="200" y="170" width="120" height="70" fill="#1a3330" stroke="#10b981"/>
              <rect x="320" y="170" width="120" height="70" fill="#3a2a1a" stroke="#f59e0b"/>
              <text x="260" y="58">R2 liability</text>
              <text x="260" y="78">R3 sub-processors</text>
              <text x="380" y="50">R1 AI data use</text>
              <text x="380" y="70">R4 price rises</text>
              <text x="380" y="90">R5 suspension</text>
              <text x="140" y="128">R7 arbitrator</text>
              <text x="140" y="148">R10 notices</text>
              <text x="260" y="120">R6 72-hour notice</text>
              <text x="260" y="140">R8 exit terms</text>
              <text x="260" y="160">R9 SLA credits</text>
              <text x="140" y="198" font-size="10.5">R12 confidentiality</text>
              <text x="140" y="218">R14 warranty</text>
              <text x="260" y="198">R11 renewal</text>
              <text x="260" y="218">R13 assignment</text>
              <text x="140" y="258" font-size="10.5" fill="#9b99b8">Low</text>
              <text x="260" y="258" font-size="10.5" fill="#9b99b8">Medium</text>
              <text x="380" y="258" font-size="10.5" fill="#9b99b8">High</text>
              <text x="260" y="282" font-size="11.5" fill="#9b99b8">Likelihood during the term</text>
              <rect x="485" y="30" width="260" height="210" rx="12" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="615" y="56" font-size="13" font-weight="700" fill="#c4b5fd">Review memo</text>
              <g text-anchor="start" font-size="12">
                <text x="505" y="86">1. Bottom line</text>
                <text x="505" y="110">2. Top risks and asks</text>
                <text x="505" y="134">3. What CloudDesk fixed</text>
                <text x="505" y="158">4. Silent changes</text>
                <text x="505" y="182">5. Next steps and owners</text>
                <text x="505" y="206">6. Limits of this review</text>
              </g>
              <text x="615" y="230" font-size="10.5" fill="#9b99b8">one or two pages, plain words</text>
              <line x1="444" y1="135" x2="481" y2="135" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#cr10a)"/>
            </g>
          </svg>
          <figcaption>Rate each risk by impact and likelihood. Red is high, amber is medium, green is low. The ratings feed a short memo.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>A simple rating scale</h3>
          <p>Rate each issue on two things. <strong>Impact</strong> is how bad it would be if it happened: money, data, daily work or a legal duty. <strong>Likelihood</strong> is how likely it is to happen during the contract. Then use a fixed scale, so every reviewer means the same thing.</p>
          <table class="lc-table">
            <thead><tr><th>Rating</th><th>What it means for LedgerLite</th><th>Action</th></tr></thead>
            <tbody>
              <tr><td><strong>High</strong></td><td>Could cause a large loss, a data or legal problem, or stop the support team. Often an "Escalate" item in the playbook.</td><td>Must be fixed before signing, or approved in writing by Nandini or the CFO</td></tr>
              <tr><td><strong>Medium</strong></td><td>A real cost or problem, but limited or less likely</td><td>Negotiate. A fallback may be accepted.</td></tr>
              <tr><td><strong>Low</strong></td><td>Small effect, or already close to the playbook</td><td>Note it. Accept if needed to close the deal.</td></tr>
            </tbody>
          </table>
          <p>A rating is a judgement for this client and this deal. The same clause may be low risk for Rangrez Crafts' small software tool and high risk for LedgerLite. Write a one-line reason for every rating. AI can suggest ratings, but the lawyer decides them.</p>
        </div>
        <div class="lc-card">
          <h3>Rated risks for MSA v2 (extract)</h3>
          <table class="lc-table">
            <thead><tr><th>Risk</th><th>Clause</th><th>Rating</th><th>Why</th><th>Ask</th></tr></thead>
            <tbody>
              <tr><td>R1 AI use of our data</td><td>8.2 with 2</td><td>High</td><td>End-customer personal data could train CloudDesk's models, forever</td><td>No training on Customer Data</td></tr>
              <tr><td>R2 Liability and indemnity</td><td>10, 11.2, 11.3</td><td>High</td><td>Our risk is unlimited; theirs stops at about ₹18,00,000, with no data-breach carve-out</td><td>Mutual cap, carve-outs, IP indemnity from CloudDesk</td></tr>
              <tr><td>R4 Price rises</td><td>4.2</td><td>High</td><td>A made-up 15% rise adds ₹2,70,000 a year, with no cap</td><td>Fixed fees in the term; 5% cap at renewal</td></tr>
              <tr><td>R5 Suspension</td><td>4.3</td><td>High</td><td>250 agents could stop work during a billing dispute</td><td>No suspension for disputed amounts</td></tr>
              <tr><td>R6 Breach notice</td><td>6.2</td><td>Medium</td><td>72 hours could leave us no time to report a breach to the Board</td><td>24 hours with details; accept 48</td></tr>
              <tr><td>R7 Arbitrator</td><td>13.2</td><td>Medium</td><td>CloudDesk alone picks the arbitrator. The Maharashtra seat is fine.</td><td>Joint or institutional appointment</td></tr>
              <tr><td>R11 Renewal</td><td>3.2</td><td>Low</td><td>1 year, 90 days' notice meets the fallback</td><td>A reminder 30 days before the deadline</td></tr>
            </tbody>
          </table>
          <p>Check every rupee figure. ₹18,00,000 × 15% = ₹2,70,000. If AI writes a number, work it out again yourself.</p>
        </div>
        <div class="lc-card">
          <h3>Writing the review memo</h3>
          <p>A review memo is a short note that tells the client what the contract means for them and what to do next. Put the answer first. Use plain words and clause numbers. Here is the start of the memo from Mehra &amp; Rao Associates to Nandini.</p>
          <pre><code>To: Nandini, Legal Counsel, LedgerLite Pvt Ltd
        From: Mehra &amp; Rao Associates (prepared by Adv. Sameer
              Rao, reviewed by Adv. Kavita Mehra)
        Date: 29 September 2026
        Re: CloudDesk MSA v2 dated 22 September 2026

        1. Bottom line
        Do not sign v2 as it stands. Five high risks need
        changes. CloudDesk fixed renewal and moved the seat
        to Maharashtra. But it made three changes it did not
        mention (clauses 2, 4.3 and 12.3).

        2. Top risks and what to ask for
        R1 (8.2 with 2) High: CloudDesk may use our
        customers' data to improve its AI models. Ask: no
        training on Customer Data. ...

        6. Limits of this review
        We reviewed the MSA only. We did not review the
        Order Form, the Privacy Policy or security documents.</code></pre>
          <ul class="lc-list">
            <li><strong>Keep law general.</strong> Say "we recommend counsel confirm" for points on enforceability. Never add a case unless you have read it at the source.</li>
            <li><strong>Name owners and dates.</strong> For example, "Nandini to take R1 to R5 to the CFO by 5 October."</li>
            <li><strong>State the version.</strong> The memo covers v2 only. A new draft needs a new check.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Using AI to draft ratings and the memo</h3>
          <pre><code>Weak:
        Write a memo about the risks in this contract.

        Better:
        You are drafting for a lawyer. The reader is a
        business client, not a lawyer.
        Use ONLY the checked issues table below (MSA v2).
        1. Rate each issue High, Medium or Low using this
           scale: [paste scale]. One-line reason each.
        2. Draft a memo under 500 words: bottom line,
           top risks with asks, what was fixed, silent
           changes, next steps, limits of the review.
        Keep every clause number and rupee figure as given.
        Do not add new issues, laws or cases. Mark any
        point you are unsure of as [CHECK].</code></pre>
          <p>Then check the draft line by line. AI may soften a high risk, mix up v1 and v2, change a number, or add a legal claim that sounds right. Remove anything you cannot trace back to the contract or your checked notes.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: from ratings to memo</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Sameer's prompt">Sameer gives the firm's approved AI tool the checked issues table for v2 and the rating scale. He asks for ratings and a memo draft.</li>
              <li data-kind="answer" data-label="AI ratings">AI rates six issues High. One is renewal: "180 days' notice with 3-year renewals".</li>
              <li data-kind="warn" data-label="Old version">That is the v1 wording. In v2, renewal is 1 year with 90 days' notice. It meets the fallback, so Sameer rates it Low.</li>
              <li data-kind="warn" data-label="A case with no name">The draft says "courts have upheld such caps in a 2019 case". It gives no name. Sameer deletes the sentence. He never adds a case he has not read.</li>
              <li data-kind="tool" data-label="Calculator">Sameer checks the rupee figures in a spreadsheet: the cap and the price-rise example.</li>
              <li data-kind="result" data-label="Numbers match">₹18,00,000 cap and ₹2,70,000 for a 15% rise. Both are correct.</li>
              <li data-kind="check" data-label="Partner review">Adv. Kavita Mehra reads the memo. The bottom line comes first, with five high risks. She signs it off, and it goes to Nandini.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to rate a set of issues and draft a one-page memo for a business reader.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are helping a lawyer at an Indian law firm draft a contract review memo. The reader is [the in-house counsel and CFO of a software company]. They want the answer first, in plain words. All details are made up.

        Checked issues (vendor SaaS contract, version 2, fee ₹18,00,000 a year):
        [1. 8.2 with 2: vendor may use our customer data to improve its AI models.
        2. 10 and 11: only we give an indemnity; our liability is uncapped; vendor's cap is 12 months' fees with no carve-outs.
        3. 4.2: vendor may raise fees at any time on 30 days' notice.
        4. 6.2: breach notice within 72 hours, no details.
        5. 13.2: Maharashtra seat, but the vendor alone appoints the arbitrator.
        6. 3.2: 1-year renewals, 90 days' notice.]

        Scale: High = large loss, data or legal problem, fix before signing. Medium = real but limited, negotiate. Low = small, note it.

        1. Table: Issue | Clause | Rating | One-line reason | What to ask for.
        2. A memo under 400 words: bottom line, top risks, next steps, limits of the review.
        Rules: use only the facts above. Do not add laws or cases. Mark anything unsure as [CHECK]. Show any rupee sums.</pre>
            <ul class="ai-try-checks">
              <li>Issues 1 to 3 are rated High, and renewal is Low or Medium, each with a reason.</li>
              <li>The memo starts with a clear bottom line, not background.</li>
              <li>Clause numbers and rupee figures match the input. The cap is ₹18,00,000.</li>
              <li>It adds no new laws, cases or facts, and marks doubts as [CHECK].</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Clients act on priorities, not long lists. Rate each risk with a fixed scale and a one-line reason, then lead the memo with the bottom line. Let AI draft, but check every rating, version, number and legal claim before the memo leaves the firm.
        </div>
      HTML
      starter_code: nil
    },
    11 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-law">Law</div>
          <h1 class="lc-title">Negotiation Points and Counter-Drafting</h1>
        </div>
        <p class="lc-lead">A risk memo tells your client what is wrong. Negotiation fixes it. In this lesson you will turn each open problem in the CloudDesk contract into three things: an <strong>ask</strong> (the change you want), a <strong>counter-draft</strong> (the new clause wording) and a <strong>comment</strong> (a short, polite reason for the other side). You will work from the revised draft, version 2, because some problems are fixed and some are not. AI is very good at first drafts of wording and comments. But you choose the priorities, and you check that every word protects your client.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 290" role="img" aria-label="Counter-drafting clause 11.2 of the revised draft. Version 2 caps liability at 12 months' fees, about 18 lakh rupees, with no carve-outs, and the Customer is uncapped. The counter-draft asks for a mutual cap, twice the amount for data and confidentiality breaches, and the IP indemnity outside the cap. A comment to the vendor gives the reason. Below, four parts of every negotiation point: the ask and the reason are shared; the fallback and the walk-away point stay internal.">
            <defs><marker id="cr11a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12" fill="#e2e0f0" text-anchor="middle">
              <text x="15" y="22" text-anchor="start" fill="#9b99b8">Counter-drafting one clause: 11.2, the liability cap in version 2</text>
              <rect x="15" y="40" width="230" height="160" rx="10" fill="#27274e" stroke="#ef4444"/>
              <text x="130" y="66" font-size="13" font-weight="700" fill="#fca5a5">Vendor draft (v2)</text>
              <text x="130" y="96">Cap: fees paid in the</text>
              <text x="130" y="116">12 months before the claim</text>
              <text x="130" y="136">No carve-outs</text>
              <text x="130" y="156">Customer uncapped (11.3)</text>
              <text x="130" y="184" font-size="11" fill="#9b99b8">about ₹18,00,000</text>
              <rect x="275" y="40" width="230" height="160" rx="10" fill="#27274e" stroke="#10b981"/>
              <text x="390" y="66" font-size="13" font-weight="700" fill="#6ee7b7">Our counter-draft</text>
              <text x="390" y="96">Mutual cap: 12 months'</text>
              <text x="390" y="116">fees paid or payable</text>
              <text x="390" y="136">2x for data and</text>
              <text x="390" y="156">confidentiality breaches</text>
              <text x="390" y="176">IP indemnity outside cap</text>
              <rect x="535" y="40" width="210" height="160" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="640" y="66" font-size="13" font-weight="700" fill="#fcd34d">Comment to vendor</text>
              <text x="640" y="96">Thank you for the higher</text>
              <text x="640" y="116">cap. A data breach could</text>
              <text x="640" y="136">cost more than 12 months'</text>
              <text x="640" y="156">fees. We ask for a higher</text>
              <text x="640" y="176">cap for data breaches.</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#cr11a)">
                <line x1="246" y1="120" x2="272" y2="120"/>
                <line x1="506" y1="120" x2="532" y2="120"/>
              </g>
              <rect x="15" y="222" width="170" height="52" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="100" y="244" font-weight="700">1 The ask</text>
              <text x="100" y="262" font-size="11" fill="#9b99b8">shared with vendor</text>
              <rect x="200" y="222" width="170" height="52" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="285" y="244" font-weight="700">2 The reason</text>
              <text x="285" y="262" font-size="11" fill="#9b99b8">shared with vendor</text>
              <rect x="385" y="222" width="170" height="52" rx="8" fill="#1f1f44" stroke="#ec4899"/>
              <text x="470" y="244" font-weight="700">3 The fallback</text>
              <text x="470" y="262" font-size="11" fill="#f9a8d4">internal only</text>
              <rect x="570" y="222" width="175" height="52" rx="8" fill="#1f1f44" stroke="#ec4899"/>
              <text x="657" y="244" font-weight="700">4 The walk-away</text>
              <text x="657" y="262" font-size="11" fill="#f9a8d4">internal only</text>
            </g>
          </svg>
          <figcaption>Every negotiation point has four parts. Only the ask and the reason go to the other side.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Plan the negotiation before you draft</h3>
          <p>Start from the risk memo and the playbook (the client's list of standard and fallback positions). For each open issue, write four things:</p>
          <ul class="lc-list">
            <li><strong>The ask:</strong> the change you want. Start with the playbook's standard position.</li>
            <li><strong>The reason:</strong> one or two sentences the vendor can accept. Talk about business risk, not about the vendor's motives.</li>
            <li><strong>The fallback:</strong> what the client can accept if the vendor refuses. Keep this internal.</li>
            <li><strong>The walk-away point:</strong> the line the client will not cross. Keep this internal too.</li>
          </ul>
          <p>Then sort the issues by priority. A vendor rarely accepts every change. Spend your effort on the points that matter most. For version 2 (v2), Nandini agrees this order with Adv. Kavita Mehra of Mehra &amp; Rao Associates. It follows the high, medium and low ratings in the risk memo.</p>
          <table class="lc-table">
            <thead><tr><th>Priority</th><th>Open issues in v2</th><th>Why</th></tr></thead>
            <tbody>
              <tr><td><strong>Must win</strong></td><td>Use of data for AI (8.2 and the new "Services" definition), liability and indemnity (10, 11), sub-processors (6.3), price rises (4.2), suspension for disputed invoices (4.3)</td><td>These are the high risks. They involve end customers' personal data, large possible losses or the budget.</td></tr>
              <tr><td><strong>Push, with a fallback ready</strong></td><td>Breach notice details (6.2), who appoints the arbitrator (13.2), exit terms (12.2, 12.3), service credits (5.2), website notices (14)</td><td>Medium risks. The playbook allows a fallback position.</td></tr>
              <tr><td><strong>Ask, but can trade</strong></td><td>Renewal reminder (3.2), 2 years' confidentiality (7), one-sided assignment (15), narrow warranty (9)</td><td>Low risks. Giving one up can help you win a bigger point.</td></tr>
            </tbody>
          </table>
          <p>Thank the vendor for what it fixed: 1-year renewals and a Maharashtra seat. But do not accept its cover email as the full story. Counter-draft from the latest text, including the changes it did not mention.</p>
        </div>
        <div class="lc-card">
          <h3>Counter-drafting the open points</h3>
          <p>Adv. Sameer Rao drafted these in the firm's approved AI tool, then edited each line himself. This is example wording for learning. It is not a ready-made clause for your contract.</p>
          <table class="lc-table">
            <thead><tr><th>Issue</th><th>Where v2 stands</th><th>Suggested wording (short form)</th><th>Reason for the vendor</th></tr></thead>
            <tbody>
              <tr><td><strong>E</strong> 8.2 and 2</td><td>ML words removed from 8.2. But "Services" now includes the AI Assist models, so "improve the Services" still covers training.</td><td>"Provider may use Customer Data during the Term only to provide the Services to Customer. Provider will not use Customer Data to train, fine-tune or improve any machine-learning or AI model, including the models behind CloudDesk AI Assist."</td><td>The data belongs to our customers. Once data is used for training, it cannot be taken back.</td></tr>
              <tr><td><strong>G, F</strong> 10, 11</td><td>Cap raised to 12 months' fees, with no carve-outs. Customer still uncapped. Only Customer indemnifies.</td><td>"Each party's total liability is capped at the Fees paid or payable in the 12 months before the claim. For breach of clause 6 or 7, the cap is 2 times that amount." Provider indemnifies for third-party IP claims and its breach of clause 6. Delete 11.3.</td><td>Thank you for the higher cap. A data breach could cost far more than 12 months' fees. A mutual cap is fair to both sides.</td></tr>
              <tr><td><strong>D</strong> 6.3</td><td>Unchanged: any country, no notice</td><td>"Provider will publish a list of its sub-processors and their locations. It will give 30 days' written notice before adding or replacing one. Customer may object on reasonable data protection grounds."</td><td>We must know who handles our customers' data, and where.</td></tr>
              <tr><td><strong>B</strong> 4.2</td><td>Unchanged: fees can rise at any time</td><td>"The Fees are fixed for the Initial Term. For a renewal term, Provider may increase the Fees by no more than 5% over the previous year."</td><td>We need a fixed budget for the term.</td></tr>
              <tr><td><strong>S1</strong> 4.3</td><td>New: suspension 7 days after the due date, even for disputed amounts</td><td>"Provider may not suspend the Services for any amount that Customer disputes in good faith. For undisputed amounts, Provider must first give 15 days' written notice."</td><td>250 support agents depend on the platform. A billing query should not stop our support.</td></tr>
              <tr><td><strong>C</strong> 6.2</td><td>72 hours, with no details or help</td><td>"Provider will notify Customer within 24 hours after becoming aware of a Personal Data Breach. The notice will describe the breach, its likely impact and the steps taken. Provider will give the help Customer reasonably needs to meet its legal duties."</td><td>As the data fiduciary, LedgerLite has its own duties under the DPDP Act and Rules. We need facts fast.</td></tr>
              <tr><td><strong>H</strong> 13.2</td><td>Maharashtra seat, but Provider still appoints the arbitrator</td><td>"The sole arbitrator will be appointed jointly by the parties. If they do not agree within 30 days, the arbitrator will be appointed under the Arbitration and Conciliation Act 1996."</td><td>A jointly chosen arbitrator is fairer to both sides and avoids a challenge later.</td></tr>
              <tr><td><strong>S3</strong> 12.3</td><td>Export period cut from 30 days to 15</td><td>"Customer may export its data in a standard format for 60 days after termination. Provider will then delete it and confirm the deletion in writing."</td><td>Moving 250 agents' data safely takes time.</td></tr>
              <tr><td><strong>A</strong> 3.2</td><td>Fixed: 1-year renewals, 90 days' notice. No reminder.</td><td>Add: "Provider will send Customer a written reminder at least 30 days before the notice deadline, stating the Fees for the renewal term."</td><td>A reminder helps both sides plan the renewal.</td></tr>
            </tbody>
          </table>
          <p>A note on H. The Supreme Court has held that a party with an interest in the dispute should not appoint a sole arbitrator alone. See <em>Perkins Eastman Architects v. HSCC (India)</em> (2019). Read the judgment at the source, and check later cases, before you rely on it. The Maharashtra seat is inside LedgerLite's fallback, so you can accept it.</p>
        </div>
        <div class="lc-card">
          <h3>Polite comments that work</h3>
          <p>A comment (a note in the margin of the Word file) explains your change to the other side. Good comments are short, calm and specific. They make it easy for the vendor to say yes.</p>
          <pre><code>Weak comment:
        You have secretly put AI training back in through
        the definitions. This is unacceptable.

        Better comment:
        LedgerLite: Thank you for removing the ML wording
        from 8.2. The new definition of "Services" now
        includes the AI Assist models, so "improve the
        Services" could still cover training. We have added
        a clear line that Customer Data is not used to
        train any model. Happy to discuss.</code></pre>
          <p>Rules for every comment:</p>
          <ul class="lc-list">
            <li>Say what you changed and why, in two or three sentences.</li>
            <li>Point out a silent change calmly. Describe what the text does, not what the vendor intended.</li>
            <li>Never show your fallback or walk-away point. "We could accept 48 hours" in a comment gives away your position.</li>
            <li>Do not mention the playbook, internal notes or the lawyer's advice to the client.</li>
            <li>Do not cite cases in comments unless the partner agrees. Comments are business messages.</li>
            <li>Read the final comments yourself. AI can sound too harsh or too soft.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Activity: set the priorities</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Use LedgerLite's playbook and risk memo. Sort each point in CloudDesk's version 2 by how hard LedgerLite should push.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="must" data-label="Must change (walk-away point)"></div>
              <div data-sorter-target="bucket" data-bucket="fallback" data-label="Push, with a fallback ready"></div>
              <div data-sorter-target="bucket" data-bucket="accept" data-label="Can accept or trade"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="must" data-why="Any training on Customer Data is a walk-away point. The new definition brings training back in.">"Services" now includes the AI Assist models, and 8.2 lets Provider "improve the Services"</li>
              <li data-bucket="must" data-why="The playbook needs carve-outs for data breach and confidentiality. The Customer must not be uncapped.">11.2: cap of 12 months' fees with no carve-outs, and Customer uncapped</li>
              <li data-bucket="must" data-why="The playbook says suspension for a disputed invoice is an escalation point.">4.3: Provider may suspend the Services even over a disputed amount</li>
              <li data-bucket="fallback" data-why="Ask for 24 hours with details. The fallback is 48 hours. Details and help are the key.">6.2: breach notice within 72 hours, with no details or help</li>
              <li data-bucket="fallback" data-why="The Maharashtra seat is acceptable. Push for a jointly appointed arbitrator.">13.2: Maharashtra seat, but Provider appoints the sole arbitrator</li>
              <li data-bucket="accept" data-why="1-year renewals with 90 days' notice meet the fallback. Ask for the reminder, but it can be traded.">3.2: 1-year renewals, 90 days' notice, no vendor reminder</li>
              <li data-bucket="accept" data-why="This matches the playbook's standard position. There is nothing to change.">4.4: fees exclude GST; Customer pays applicable taxes</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to counter-draft one clause, with a reason and a polite comment. Then check the wording against your playbook.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are helping a lawyer at an Indian law firm prepare negotiation points. We act for [the Customer, LedgerLite Pvt Ltd]. Indian law applies.

        Vendor's clause (revised draft):
        [6.2 Provider will inform Customer of a personal data breach within 72 hours of becoming aware of it.]

        Our playbook position:
        [Standard: notice within 24 hours, with details of the breach and help to meet our legal duties. Fallback: within 48 hours. Walk-away: no fixed time, or over 72 hours.]

        Please give:
        1. A counter-draft of the clause in plain, formal English (under 90 words).
        2. The reason in 2 sentences, written for the vendor.
        3. A polite margin comment for the vendor (under 50 words).
        4. A fallback clause, marked INTERNAL ONLY.
        5. Two questions the lawyer should ask the client first.

        Rules: do not mention the playbook or the fallback in the comment. Do not cite any case or section unless you are sure, and tell me to check it. Mark any word you are unsure of.</pre>
            <ul class="ai-try-checks">
              <li>The counter-draft asks for 24 hours, with details and help, not only a time limit.</li>
              <li>The comment does not reveal the 48-hour fallback.</li>
              <li>The wording is clear: who must do what, and by when.</li>
              <li>Any law it mentions, such as the DPDP Act, is real and you have checked it at the source.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A good negotiation point has an ask, a reason, a fallback and a walk-away point. Share only the first two. Work from the latest draft, including its silent changes. Let AI draft the wording and comments, but you set the priorities and check every word.
        </div>
      HTML
      starter_code: nil
    },
    12 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-law">Law</div>
          <h1 class="lc-title">Stamp Duty, Signing and Execution</h1>
        </div>
        <p class="lc-lead">A contract is agreed only when it is properly signed. In India, many documents also need <strong>stamp duty</strong> (a tax on certain documents, set mostly by each state). Mistakes at this stage cause real problems later. The wrong version gets signed, the signer has no authority, or the stamp duty is missing. In this lesson you will learn the basics of stamp duty, e-stamping and electronic signatures under the Information Technology Act 2000. You will also build an execution checklist. This is general education, not legal advice. Stamp duty rules and rates change and differ by state, so always check the current law.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 270" role="img" aria-label="Six execution steps: confirm the final version, pay stamp duty by e-stamp, check the signer's authority, sign with Aadhaar eSign, a digital signature certificate or ink, date and exchange copies, and store the signed file with its certificate and audit trail. Stamp duty follows state law, signatures follow the IT Act 2000, and electronic evidence follows section 63 of the Bharatiya Sakshya Adhiniyam 2023.">
            <defs><marker id="cr12a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="15" y="20" width="220" height="62" rx="10" fill="#27274e" stroke="#3b82f6"/>
              <text x="125" y="45" font-weight="700">1 Final version</text>
              <text x="125" y="66" font-size="11" fill="#9b99b8">check it is the agreed one</text>
              <rect x="270" y="20" width="220" height="62" rx="10" fill="#27274e" stroke="#f59e0b"/>
              <text x="380" y="45" font-weight="700">2 Stamp duty</text>
              <text x="380" y="66" font-size="11" fill="#9b99b8">e-stamp before or at signing</text>
              <rect x="525" y="20" width="220" height="62" rx="10" fill="#27274e" stroke="#8b5cf6"/>
              <text x="635" y="45" font-weight="700">3 Signer authority</text>
              <text x="635" y="66" font-size="11" fill="#9b99b8">board resolution or approval</text>
              <rect x="15" y="130" width="220" height="62" rx="10" fill="#27274e" stroke="#22d3ee"/>
              <text x="125" y="155" font-weight="700">4 Sign</text>
              <text x="125" y="176" font-size="11" fill="#9b99b8">Aadhaar eSign, DSC or ink</text>
              <rect x="270" y="130" width="220" height="62" rx="10" fill="#27274e" stroke="#ec4899"/>
              <text x="380" y="155" font-weight="700">5 Date and exchange</text>
              <text x="380" y="176" font-size="11" fill="#9b99b8">all pages, all parties</text>
              <rect x="525" y="130" width="220" height="62" rx="10" fill="#27274e" stroke="#10b981"/>
              <text x="635" y="155" font-weight="700">6 Store safely</text>
              <text x="635" y="176" font-size="11" fill="#9b99b8">PDF, certificate, audit trail</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#cr12a)">
                <line x1="236" y1="51" x2="267" y2="51"/>
                <line x1="491" y1="51" x2="522" y2="51"/>
                <path d="M635,84 L635,106 L125,106 L125,127"/>
                <line x1="236" y1="161" x2="267" y2="161"/>
                <line x1="491" y1="161" x2="522" y2="161"/>
              </g>
              <rect x="15" y="214" width="730" height="40" rx="8" fill="#1f1f44" stroke="#4b4a78"/>
              <text x="380" y="239" font-size="12" fill="#9b99b8">Stamp duty: state law · Signatures: IT Act 2000 · Electronic evidence: BSA 2023, s. 63</text>
            </g>
          </svg>
          <figcaption>Execution is a chain of small checks. One broken link can make the contract hard to prove or use in court.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Stamp duty in plain words</h3>
          <p>Stamp duty is a tax on certain documents. The Indian Stamp Act 1899 is the central law. Most states have their own Stamp Act or changes, for example the Karnataka Stamp Act 1957 and the Maharashtra Stamp Act. The rate depends on the state and the type of document. So the same contract can need different duty in different states.</p>
          <ul class="lc-list">
            <li><strong>When to pay.</strong> The general rule is to stamp a document before or at the time of signing. There are special rules for documents signed outside a state and brought into it later. Check the state law.</li>
            <li><strong>What if it is not stamped?</strong> It is not void. But a court or arbitrator cannot admit it as evidence until the duty and any penalty are paid. In December 2023, a seven-judge bench of the Supreme Court confirmed this. The case is <em>In Re: Interplay between Arbitration Agreements under the Arbitration and Conciliation Act 1996 and the Indian Stamp Act 1899</em>.</li>
            <li><strong>Who pays?</strong> The contract can say which party pays. If it is silent, the law sets a default. Agree it before signing.</li>
            <li><strong>Which article applies?</strong> Each state's stamp law has a schedule of documents (articles) with a rate for each. A service agreement may fall under a general "agreement" article. Some deals need a different one.</li>
          </ul>
          <p>Do not ask AI for a stamp duty amount and use it. AI often gives old rates or another state's rate. Use it to list questions. Then check the state's current schedule, or ask a local lawyer or stamp expert.</p>
        </div>
        <div class="lc-card">
          <h3>E-stamping and electronic signatures</h3>
          <p><strong>E-stamping</strong> means paying stamp duty online. You get an e-stamp certificate with a unique number that anyone can check online. In many states, Stock Holding Corporation of India Limited (SHCIL) runs the system. Some states use their own portals. The certificate is usually attached as the first page of the contract.</p>
          <p>The <strong>Information Technology Act 2000</strong> (IT Act) gives legal recognition to electronic records and signatures (sections 4 and 5). Section 10A says a contract is not invalid just because it was made electronically.</p>
          <table class="lc-table">
            <thead><tr><th>Method</th><th>How it works</th><th>Watch out for</th></tr></thead>
            <tbody>
              <tr><td><strong>Aadhaar eSign</strong></td><td>The signer confirms with an Aadhaar OTP through a licensed eSign Service Provider. It is an electronic signature under section 3A, listed in the Second Schedule of the IT Act.</td><td>The person signs, not the company. Check that this person has authority to sign for the company.</td></tr>
              <tr><td><strong>Digital Signature Certificate (DSC)</strong></td><td>A certificate issued by a licensed Certifying Authority, often kept on a USB token (section 3 of the IT Act).</td><td>Check that the certificate has not expired and belongs to the right person.</td></tr>
              <tr><td><strong>Simple e-signature</strong></td><td>A typed name, drawn signature or "click to sign" on a platform</td><td>It can still show agreement. But proving it in court may need more evidence, such as the platform's audit trail.</td></tr>
              <tr><td><strong>Wet ink</strong></td><td>Printed and signed by hand, often with a company stamp</td><td>Initial every page. Keep the original safe.</td></tr>
            </tbody>
          </table>
          <p>Some documents are outside the IT Act's rules on electronic signatures. The First Schedule lists them, for example wills, trusts and certain powers of attorney. The government can change this list. Check the current First Schedule before you e-sign an unusual document.</p>
          <p>Evidence matters too. Section 63 of the Bharatiya Sakshya Adhiniyam 2023 replaced section 65B of the Evidence Act. Under it, a certificate may be needed to prove an electronic record in court. So keep the signing platform's audit trail with the signed file.</p>
        </div>
        <div class="lc-card">
          <h3>An execution checklist for the CloudDesk MSA</h3>
          <p>After negotiation, LedgerLite and CloudDesk agree the final text. The Effective Date is 1 November 2026. Pooja, the paralegal at Mehra &amp; Rao Associates, prepares this checklist. The two companies sign in different states, so she asks Adv. Kavita Mehra which state's duty applies.</p>
          <pre><code>EXECUTION CHECKLIST: CloudDesk MSA (final)

        Version
        [ ] Final PDF matches the agreed Word file
            (run a document compare, not only AI)
        [ ] All schedules and the Order Form attached
        [ ] Party names, addresses and CINs correct
        [ ] Effective Date filled in: 1 November 2026

        Stamp duty
        [ ] State and stamp article confirmed by the lawyer
        [ ] Contract says who pays the duty
        [ ] E-stamp certificate bought before signing
        [ ] Certificate number checked on the official site

        Authority
        [ ] LedgerLite: board resolution or delegation
            for the signer (CFO)
        [ ] CloudDesk: proof that its signer may sign

        Signing
        [ ] Method agreed: Aadhaar eSign or DSC
        [ ] Every signer's name and role correct
        [ ] Signing date recorded for each party

        After signing
        [ ] Fully signed PDF sent to both parties
        [ ] Audit trail and e-stamp certificate saved
        [ ] Key dates added to the contract tracker</code></pre>
          <p>AI can draft a checklist like this in seconds. It can also compare the final PDF text with the agreed draft. But a document compare tool is more reliable for the last check. The lawyer confirms the stamp duty and authority points.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: the signing day</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put Pooja's execution steps for the CloudDesk MSA in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Run a document compare between the agreed Word file and the final PDF.</li>
              <li data-order="2">Confirm with Adv. Kavita Mehra which state's stamp duty applies, and the amount.</li>
              <li data-order="3">Buy the e-stamp certificate and attach it as the first page of the PDF.</li>
              <li data-order="4">Check the board resolution that lets LedgerLite's CFO sign.</li>
              <li data-order="5">Send the PDF for signing: LedgerLite's CFO by Aadhaar eSign, CloudDesk's director by DSC.</li>
              <li data-order="6">Download the fully signed PDF and the platform's audit trail.</li>
              <li data-order="7">Save both in the contract repository and add the key dates to the tracker.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI for an execution checklist for your own contract. Then mark every stamp duty point for a lawyer to confirm.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a careful paralegal in India. Make an execution checklist for this contract.

        Details:
        - Contract: [a SaaS subscription agreement between a Karnataka customer and a Maharashtra vendor]
        - Signing method: [Aadhaar eSign for one party, DSC for the other]
        - Where each party signs: [the state for each party]
        - Signers: [customer's CFO, vendor's director]

        Group the checklist under: Version, Stamp duty, Authority, Signing, After signing.
        Use tick boxes. Keep each item under 15 words.

        Then list 5 questions for the lawyer about stamp duty and signing.

        Rules:
        - Do not state any stamp duty rate or amount. Write "check the current state schedule" instead.
        - Mention the Information Technology Act 2000 only in general words.
        - Say if any document type may be excluded from e-signing.
        - End with one line: this is general education, not legal advice.</pre>
            <ul class="ai-try-checks">
              <li>No stamp duty rate or amount appears. Stamp points are marked for a lawyer to check.</li>
              <li>The checklist covers signer authority, not only the signature.</li>
              <li>It includes saving the audit trail and the e-stamp certificate.</li>
              <li>Any section number it gives matches the bare act on India Code.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Signing is not a formality. Check the version, the stamp duty, the signer's authority and the signing method. Keep the certificate and audit trail. Let AI draft the checklist, but let a lawyer confirm every stamp duty point.
        </div>
      HTML
      starter_code: nil
    },
    13 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-law">Law</div>
          <h1 class="lc-title">Contract Management After Signing</h1>
        </div>
        <p class="lc-lead">A good contract helps only if people follow it. After signing, someone must track the key dates, the renewal deadline and each side's obligations (duties the contract puts on a party). Many costly mistakes happen here. A notice deadline is missed, and the contract renews for another year. In this lesson you will set up a contract repository and a key dates and obligations tracker for the signed CloudDesk agreement. AI helps you pull dates and duties out of the contract. A spreadsheet does the date maths. A person checks both.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 260" role="img" aria-label="A timeline for the signed CloudDesk agreement, not to scale. Effective Date 1 November 2026. Year 2 invoice 1 November 2027. Internal review 1 June 2029. Vendor reminder due 3 July 2029. Non-renewal notice deadline 2 August 2029, shown in red. Initial term ends 31 October 2029. Below, the tracker formula: notice deadline equals end date minus 90 days.">
            <defs><marker id="cr13a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12" fill="#e2e0f0" text-anchor="middle">
              <text x="15" y="22" text-anchor="start" fill="#9b99b8">Signed CloudDesk MSA: key dates (not to scale)</text>
              <line x1="40" y1="100" x2="735" y2="100" stroke="#9b99b8" stroke-width="2" marker-end="url(#cr13a)"/>
              <g>
                <circle cx="70" cy="100" r="7" fill="#3b82f6"/>
                <text x="70" y="72" font-weight="700">1 Nov 2026</text>
                <text x="70" y="128" font-size="11" fill="#9b99b8">Effective Date</text>
                <circle cx="195" cy="100" r="7" fill="#3b82f6"/>
                <text x="195" y="72" font-weight="700">1 Nov 2027</text>
                <text x="195" y="128" font-size="11" fill="#9b99b8">Year 2 invoice</text>
                <circle cx="320" cy="100" r="7" fill="#f59e0b"/>
                <text x="320" y="72" font-weight="700">1 Jun 2029</text>
                <text x="320" y="128" font-size="11" fill="#9b99b8">Internal review</text>
                <circle cx="445" cy="100" r="7" fill="#f59e0b"/>
                <text x="445" y="72" font-weight="700">3 Jul 2029</text>
                <text x="445" y="128" font-size="11" fill="#9b99b8">Vendor reminder</text>
                <circle cx="570" cy="100" r="9" fill="#ef4444"/>
                <text x="570" y="72" font-weight="700" fill="#fca5a5">2 Aug 2029</text>
                <text x="570" y="128" font-size="11" fill="#fca5a5">Notice deadline</text>
                <circle cx="690" cy="100" r="7" fill="#10b981"/>
                <text x="690" y="72" font-weight="700">31 Oct 2029</text>
                <text x="690" y="128" font-size="11" fill="#9b99b8">Term ends</text>
              </g>
              <rect x="15" y="160" width="730" height="84" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <g text-anchor="start">
                <text x="35" y="186" fill="#c4b5fd" font-weight="700">Tracker row</text>
                <text x="35" y="210">End date 31/10/2029  ·  Notice days 90  ·  Deadline =B2-C2 → 02/08/2029</text>
                <text x="35" y="232" font-size="11" fill="#9b99b8">Missing this date renews the contract for 1 more year at the renewal fee.</text>
              </g>
            </g>
          </svg>
          <figcaption>The notice deadline is the date that matters most. Plan your internal review well before it.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The signed CloudDesk MSA and its repository</h3>
          <p>After more rounds of negotiation, LedgerLite and CloudDesk signed the final MSA on 23 October 2026. Signing took longer than planned, so the Effective Date moved to 1 November 2026. Earlier lessons used a made-up end date of 30 September 2029. The signed dates below replace it. These made-up final terms are the ones we track:</p>
          <table class="lc-table">
            <thead><tr><th>Term</th><th>Signed position</th><th>Clause</th></tr></thead>
            <tbody>
              <tr><td>Term</td><td>3 years from the Effective Date, 1 November 2026, to 31 October 2029</td><td>3.1</td></tr>
              <tr><td>Renewal</td><td>1-year renewals unless notice is given at least 90 days before the term ends. CloudDesk must send a reminder, with renewal fees, at least 30 days before that deadline.</td><td>3.2</td></tr>
              <tr><td>Fees</td><td>₹18,00,000 a year, invoiced yearly in advance on 1 November. Fixed for the initial term. Renewal increase capped at 6%.</td><td>4.1, 4.2</td></tr>
              <tr><td>Payment</td><td>30 days from a valid invoice. No suspension for amounts disputed in good faith.</td><td>4.3</td></tr>
              <tr><td>Breach notice</td><td>CloudDesk tells LedgerLite within 48 hours, with details and help</td><td>6.2</td></tr>
              <tr><td>Sub-processors</td><td>15 days' notice of changes. LedgerLite may object within that time.</td><td>6.3</td></tr>
              <tr><td>Security report</td><td>CloudDesk shares its independent security audit report once a year, on request</td><td>Schedule 2</td></tr>
              <tr><td>Exit</td><td>60 days to export data after the end, then certified deletion</td><td>12.3</td></tr>
              <tr><td>Confidentiality</td><td>Lasts during the term and for 3 years after it ends</td><td>7</td></tr>
            </tbody>
          </table>
          <p>A <strong>contract repository</strong> is one safe place for every signed contract. For each contract, keep:</p>
          <ul class="lc-list">
            <li>The fully signed PDF, the e-stamp certificate and the signing audit trail.</li>
            <li>Order Forms, schedules, amendments and any side letters (extra signed letters that change terms).</li>
            <li>A clear file name, for example <code>2026-10-23_CloudDesk_MSA_signed.pdf</code>.</li>
            <li>A named owner. For CloudDesk, this is the head of customer support, with Nandini for legal points.</li>
            <li>Access limits. Only people who need the contract should see it.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Use AI to pull out dates and obligations</h3>
          <p>AI can read a signed contract and list every date and duty. This is a good first-pass job. But AI may miss a duty hidden in a schedule, or get a date wrong. So ask for clause numbers and check each row.</p>
          <pre><code>Weak:
        List the important dates in this contract.

        Better:
        You are a contract manager. From the signed contract
        below, list every obligation and every date or
        time limit. Table: Obligation | Who must do it |
        When or trigger event | Clause no. | Exact words.
        Include one-off dates, yearly duties, and duties
        that start with an event (for example "within 48
        hours of a breach"). Do not calculate dates.
        If something is unclear, write "Check".</code></pre>
          <p>Notice the line "Do not calculate dates". AI often makes mistakes with date maths. Let the spreadsheet do it.</p>
        </div>
        <div class="lc-card">
          <h3>The key dates and obligations tracker</h3>
          <p>Pooja builds the tracker in Excel. The same formulas work in Google Sheets. Row 2 is the CloudDesk contract. Columns A to D hold the start date, end date, notice days and notice deadline. Columns E to H hold the vendor reminder, review start, review on a working day and next invoice.</p>
          <table class="lc-table">
            <thead><tr><th>What</th><th>Formula</th><th>Result for CloudDesk</th></tr></thead>
            <tbody>
              <tr><td>Term end date (A2 = start date)</td><td><code>=EDATE(A2,36)-1</code></td><td>31/10/2029</td></tr>
              <tr><td>Notice deadline (C2 = 90 days)</td><td><code>=B2-C2</code></td><td>02/08/2029</td></tr>
              <tr><td>Vendor reminder due (30 days before deadline)</td><td><code>=D2-30</code></td><td>03/07/2029</td></tr>
              <tr><td>Internal review start (60 days before deadline)</td><td><code>=D2-60</code></td><td>03/06/2029 (a Sunday)</td></tr>
              <tr><td>Move a weekend date back to the Friday before</td><td><code>=WORKDAY(F2+1,-1)</code></td><td>01/06/2029</td></tr>
              <tr><td>Days left until the deadline</td><td><code>=D2-TODAY()</code></td><td>changes every day</td></tr>
              <tr><td>Status flag</td><td><code>=IF(D2-TODAY()&lt;=60,"ACT NOW","OK")</code></td><td>OK (in 2026)</td></tr>
              <tr><td>Next invoice (yearly)</td><td><code>=EDATE(A2,12)</code></td><td>01/11/2027</td></tr>
              <tr><td>Payment due (30 days)</td><td><code>=H2+30</code></td><td>01/12/2027</td></tr>
              <tr><td>Data export ends (60 days after end)</td><td><code>=B2+60</code></td><td>30/12/2029</td></tr>
              <tr><td>Confidentiality ends (3 years after end)</td><td><code>=EDATE(B2,36)</code></td><td>31/10/2032</td></tr>
            </tbody>
          </table>
          <p>Some tips:</p>
          <ul class="lc-list">
            <li>Format the cells as dates, or the formulas will show numbers.</li>
            <li>"At least 90 days before" means send the notice by the deadline, not on it. Plan to send it early.</li>
            <li>Check how the contract counts days. Business days and calendar days give different answers.</li>
            <li>Event-based duties (a breach notice, a sub-processor objection) have no fixed date. List them with their time limit and the person who must act.</li>
            <li>Set calendar reminders for the owner and for Nandini. Do not rely on the spreadsheet alone.</li>
            <li>Update the tracker after every amendment or renewal.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Activity: building the tracker</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Pooja's prompt">Pooja pastes the signed MSA into the firm's approved AI tool. She asks for every obligation and time limit, with clause numbers. She tells it not to calculate dates.</li>
              <li data-kind="answer" data-label="AI's list">AI returns 14 rows. It includes the renewal notice (3.2), yearly invoices (4.1), the 48-hour breach notice (6.2) and the 60-day data export (12.3).</li>
              <li data-kind="warn" data-label="A missed duty">The list has no row for the yearly security report. That duty is in Schedule 2, which the AI skipped.</li>
              <li data-kind="check" data-label="Pooja checks">Pooja reads the schedules herself. She adds the security report row and the vendor's renewal reminder.</li>
              <li data-kind="tool" data-label="Spreadsheet">She enters the start date 01/11/2026 and uses =EDATE(A2,36)-1 for the end date and =B2-C2 for the notice deadline.</li>
              <li data-kind="result" data-label="Dates">The sheet shows an end date of 31/10/2029 and a notice deadline of 02/08/2029. The internal review date falls on a Sunday, so WORKDAY moves it to 01/06/2029.</li>
              <li data-kind="check" data-label="Final check">Adv. Sameer Rao counts the 90 days on a calendar. He confirms the deadline and sends the tracker to Nandini.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to turn signed clauses into tracker rows with spreadsheet formulas. Then test the formulas in a real sheet.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a contract manager at an Indian company. Build a key dates and obligations tracker from these signed clauses.

        Clauses:
        [3.1 Term: 3 years from the Effective Date, 1 November 2026.
        3.2 Renews for 1-year periods unless either party gives notice at least 90 days before the term ends. Provider sends a reminder at least 30 days before the notice deadline.
        4.1 Fees invoiced yearly in advance. Payment within 30 days of invoice.
        6.2 Provider notifies Customer of a personal data breach within 48 hours.
        12.3 Customer may export data for 60 days after the Agreement ends.]

        Give:
        1. A table: Item | Who | Date or trigger | Clause | Owner.
        2. The Excel formula for each date (start date in cell A2). Use EDATE, WORKDAY and TODAY where useful.
        3. The date each formula gives, in DD/MM/YYYY.
        4. Three reminders to set, and when.

        Rules: show the formula for every date so I can check it. Mark event-based duties as "Trigger". Say if any date falls on a weekend.</pre>
            <ul class="ai-try-checks">
              <li>The end date is 31/10/2029 and the notice deadline is 02/08/2029.</li>
              <li>Test every formula in Excel or Google Sheets. Do the results match the AI's dates?</li>
              <li>The breach notice is shown as a trigger, not a fixed date.</li>
              <li>It notes that the export period ends on 30/12/2029, a Sunday.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Signing is the start of the work, not the end. Keep every signed contract in one place with an owner. Let AI list the obligations, let the spreadsheet do the date maths, and check the deadline on a calendar yourself.
        </div>
      HTML
      starter_code: nil
    },
    14 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-law">Law</div>
          <h1 class="lc-title">Building a Contract Review Workflow</h1>
        </div>
        <p class="lc-lead">One careful review is good. A team needs the same care for every contract, every week. A <strong>workflow</strong> is a fixed set of steps that every contract goes through, with a clear owner for each step. In this lesson you will design a review workflow for LedgerLite's legal team. It has six stages: intake, triage, AI first pass, lawyer review, sign-off, and execution and storage. You will also choose simple metrics (numbers you track) to see if the workflow is working. A good workflow makes AI use safe, because checks are built in and not left to memory.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 270" role="img" aria-label="Six workflow stages in a row: intake by request form, triage into low, medium or high, AI first pass in an approved tool, lawyer review against the source, sign-off by the right approver, and execute and store with the tracker and repository. Below, a sample metrics panel with made-up numbers: median turnaround 4 working days, 17 AI errors caught, 9 of 38 contracts escalated, 0 missed deadlines.">
            <defs><marker id="cr14a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12.5" fill="#e2e0f0" text-anchor="middle">
              <rect x="15" y="30" width="108" height="70" rx="10" fill="#27274e" stroke="#3b82f6"/>
              <text x="69" y="60" font-weight="700">Intake</text>
              <text x="69" y="80" font-size="11" fill="#9b99b8">request form</text>
              <rect x="139" y="30" width="108" height="70" rx="10" fill="#27274e" stroke="#f59e0b"/>
              <text x="193" y="60" font-weight="700">Triage</text>
              <text x="193" y="80" font-size="11" fill="#9b99b8">low, med, high</text>
              <rect x="263" y="30" width="108" height="70" rx="10" fill="#27274e" stroke="#8b5cf6"/>
              <text x="317" y="60" font-weight="700">AI first pass</text>
              <text x="317" y="80" font-size="11" fill="#9b99b8">approved tool</text>
              <rect x="387" y="30" width="108" height="70" rx="10" fill="#27274e" stroke="#10b981"/>
              <text x="441" y="60" font-weight="700">Lawyer review</text>
              <text x="441" y="80" font-size="11" fill="#9b99b8">checks source</text>
              <rect x="511" y="30" width="108" height="70" rx="10" fill="#27274e" stroke="#ec4899"/>
              <text x="565" y="60" font-weight="700">Sign-off</text>
              <text x="565" y="80" font-size="11" fill="#9b99b8">right approver</text>
              <rect x="635" y="30" width="110" height="70" rx="10" fill="#27274e" stroke="#22d3ee"/>
              <text x="690" y="60" font-weight="700">Execute, store</text>
              <text x="690" y="80" font-size="11" fill="#9b99b8">tracker, files</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#cr14a)">
                <line x1="124" y1="65" x2="136" y2="65"/>
                <line x1="248" y1="65" x2="260" y2="65"/>
                <line x1="372" y1="65" x2="384" y2="65"/>
                <line x1="496" y1="65" x2="508" y2="65"/>
                <line x1="620" y1="65" x2="632" y2="65"/>
              </g>
              <rect x="15" y="130" width="730" height="126" rx="12" fill="#1f1f44" stroke="#4b4a78"/>
              <text x="30" y="154" text-anchor="start" font-size="12" fill="#9b99b8">Quarter dashboard (sample numbers, made up)</text>
              <rect x="30" y="168" width="165" height="72" rx="8" fill="#27274e"/>
              <text x="112" y="200" font-size="20" font-weight="700" fill="#6ee7b7">4 days</text>
              <text x="112" y="224" font-size="11" fill="#9b99b8">median turnaround</text>
              <rect x="208" y="168" width="165" height="72" rx="8" fill="#27274e"/>
              <text x="290" y="200" font-size="20" font-weight="700" fill="#c4b5fd">17</text>
              <text x="290" y="224" font-size="11" fill="#9b99b8">AI errors caught</text>
              <rect x="386" y="168" width="165" height="72" rx="8" fill="#27274e"/>
              <text x="468" y="200" font-size="20" font-weight="700" fill="#fcd34d">9 of 38</text>
              <text x="468" y="224" font-size="11" fill="#9b99b8">contracts escalated</text>
              <rect x="564" y="168" width="165" height="72" rx="8" fill="#27274e"/>
              <text x="646" y="200" font-size="20" font-weight="700" fill="#6ee7b7">0</text>
              <text x="646" y="224" font-size="11" fill="#9b99b8">missed deadlines</text>
            </g>
          </svg>
          <figcaption>Every contract follows the same six stages. A few simple numbers show where the workflow is slow or unsafe.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The six stages</h3>
          <table class="lc-table">
            <thead><tr><th>Stage</th><th>What happens</th><th>Who</th><th>Output</th></tr></thead>
            <tbody>
              <tr><td><strong>1 Intake</strong></td><td>The business team fills in a short request form and uploads the contract.</td><td>Requester</td><td>A logged request with a number</td></tr>
              <tr><td><strong>2 Triage</strong></td><td>Legal sorts the request as low, medium or high risk, using fixed rules.</td><td>Paralegal or Nandini</td><td>A risk route and a target date</td></tr>
              <tr><td><strong>3 AI first pass</strong></td><td>Key terms sheet and playbook check in the approved AI tool, using saved prompts.</td><td>Paralegal</td><td>A draft deviations table</td></tr>
              <tr><td><strong>4 Lawyer review</strong></td><td>The lawyer checks every AI point against the contract and adds what AI missed.</td><td>Nandini or outside counsel</td><td>Mark-up, comments and a short memo</td></tr>
              <tr><td><strong>5 Sign-off</strong></td><td>The right person approves any deviation from the playbook.</td><td>Nandini, the CFO or a director</td><td>A written approval</td></tr>
              <tr><td><strong>6 Execute and store</strong></td><td>Stamp, sign, save and add key dates to the tracker.</td><td>Paralegal</td><td>Signed file in the repository and tracker rows</td></tr>
            </tbody>
          </table>
          <p>A simple intake form saves a lot of back-and-forth:</p>
          <pre><code>CONTRACT REQUEST FORM (LedgerLite legal)
        Requester and team:
        Counterparty name and city:
        Type: NDA / vendor / customer / other
        Whose template: ours / theirs
        Value per year (₹):
        Term and renewal:
        Personal data involved? yes / no / not sure
        Needed by (date) and why:
        Business owner after signing:</code></pre>
        </div>
        <div class="lc-card">
          <h3>Triage rules and guardrails</h3>
          <p>Triage means sorting work by risk, so that experts spend time where it matters. Write the rules down, so everyone sorts the same way.</p>
          <table class="lc-table">
            <thead><tr><th>Route</th><th>Rules (example)</th><th>Review path</th></tr></thead>
            <tbody>
              <tr><td><strong>Low</strong></td><td>Our template, no changes, no personal data, under ₹2 lakh a year</td><td>AI check against the template, then a paralegal check. Target: 1 working day.</td></tr>
              <tr><td><strong>Medium</strong></td><td>Their template or edits to ours, under ₹10 lakh a year, no sensitive data</td><td>AI first pass, then Nandini reviews. Target: 5 working days.</td></tr>
              <tr><td><strong>High</strong></td><td>Personal data of our customers, over ₹10 lakh a year, unusual liability, or foreign law</td><td>AI first pass, Nandini, and outside counsel if needed. CFO sign-off for escalations.</td></tr>
            </tbody>
          </table>
          <p>The CloudDesk MSA is a high-risk contract: ₹18,00,000 a year and customer personal data. So Nandini brought in Mehra &amp; Rao Associates.</p>
          <p>Build these guardrails into the workflow:</p>
          <ul class="lc-list">
            <li><strong>Approved tools only.</strong> Contracts go only into the company's approved AI tool, never a personal account.</li>
            <li><strong>Saved prompts.</strong> Keep a small library of tested prompts: key terms sheet, playbook check, comment drafting.</li>
            <li><strong>A human check at every step.</strong> No AI output goes to the business or the other side unchecked.</li>
            <li><strong>Version control.</strong> Name files with date and version. Use a document compare tool for each new draft.</li>
            <li><strong>A short log.</strong> Note which tool was used, on what, and who checked it.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Metrics: is the workflow working?</h3>
          <p>Track a few numbers in a spreadsheet, one row per contract. Column B is the intake date, column C the sign-off date and F the turnaround.</p>
          <table class="lc-table">
            <thead><tr><th>Metric</th><th>Formula (Excel or Google Sheets)</th><th>Why it matters</th></tr></thead>
            <tbody>
              <tr><td>Turnaround in working days</td><td><code>=NETWORKDAYS(B2,C2)</code></td><td>Shows how long the business waits. It counts both the start and end days.</td></tr>
              <tr><td>Median turnaround</td><td><code>=MEDIAN(F2:F39)</code></td><td>The middle value. One very slow contract does not distort it.</td></tr>
              <tr><td>Share on time (target 5 days)</td><td><code>=COUNTIF(F2:F39,"&lt;=5")/COUNT(F2:F39)</code></td><td>Shows whether targets are realistic</td></tr>
              <tr><td>High-risk contracts</td><td><code>=COUNTIF(D2:D39,"High")</code></td><td>Shows workload for senior review</td></tr>
              <tr><td>AI errors caught</td><td>Count from the review log</td><td>Shows why human checks matter, and which prompts need work</td></tr>
              <tr><td>Missed renewal or notice deadlines</td><td>Count from the tracker</td><td>The target is always zero</td></tr>
            </tbody>
          </table>
          <p>Here is a made-up quarter for LedgerLite: 38 contracts, median turnaround 4 working days, 9 escalations, and 17 AI errors caught in review. The most common AI error was a wrong number, such as a notice period.</p>
          <p>Use metrics to improve the workflow, not to rush lawyers. A fast review that misses a clause is not a success. Review the numbers every quarter and update the playbook and prompts.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: triage the requests</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Use the example triage rules above. Sort each new request at LedgerLite into its route.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="low" data-label="Low"></div>
              <div data-sorter-target="bucket" data-bucket="medium" data-label="Medium"></div>
              <div data-sorter-target="bucket" data-bucket="high" data-label="High"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="low" data-why="Our own template with no changes and no personal data is the low route.">An NDA with a possible partner on LedgerLite's template, with no changes</li>
              <li data-bucket="high" data-why="Customer personal data and a value over ₹10 lakh a year both make it high risk.">The CloudDesk MSA: ₹18,00,000 a year, holding end customers' personal data</li>
              <li data-bucket="medium" data-why="It is on the vendor's template, but the value is low and there is no sensitive data.">An office cleaning contract on the vendor's template, ₹3 lakh a year</li>
              <li data-bucket="high" data-why="Unusual liability terms always go to the high route.">A large customer asks LedgerLite to accept unlimited liability</li>
              <li data-bucket="medium" data-why="Edits to our template need a lawyer's review, but the risk is limited.">A freelance designer contract on our template, with changed payment dates</li>
              <li data-bucket="low" data-why="Our own template, no changes, no personal data and a low value.">A ₹60,000 event venue booking on LedgerLite's standard terms, no changes</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to design a contract review workflow for your own team. Then adjust the rules to fit your real risks.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a legal operations adviser. Design a simple contract review workflow for [a 3-person in-house legal team at a Karnataka software company]. They review about [40] contracts a quarter: NDAs, vendor contracts and customer contracts. They use [one approved business AI tool].

        Give:
        1. The stages (intake, triage, AI first pass, lawyer review, sign-off, execute and store), with who does each and the output.
        2. Triage rules for low, medium and high risk, using contract value, whose template, personal data and liability.
        3. Where a human must check AI output, and what they check.
        4. Five metrics, each with an Excel formula. Assume intake date in column B, sign-off date in column C, risk level in column D.
        5. Three guardrails for confidentiality.

        Rules: use tables. Keep it practical for a small team. Do not quote any law. Mark any number as an example to adjust.</pre>
            <ul class="ai-try-checks">
              <li>Every stage has a clear owner and output.</li>
              <li>There is a human check after every AI step.</li>
              <li>The formulas work when you test them in a spreadsheet.</li>
              <li>Metrics include quality, not only speed.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A workflow turns good habits into fixed steps. Triage by risk, give AI the first pass, put a human check after every AI step, and track a few numbers. Aim for zero missed deadlines, not just faster reviews.
        </div>
      HTML
      starter_code: nil
    },
    15 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-law">Law</div>
          <h1 class="lc-title">Capstone: Review a Vendor Agreement for LedgerLite</h1>
        </div>
        <p class="lc-lead">This capstone brings the whole course together. You will do a full review of CloudDesk's revised Master Subscription Agreement (MSA), version 2, for LedgerLite Pvt Ltd. You will make five things: a key terms sheet, a clause and changes table, a playbook check, a risk memo and a list of negotiation points. AI will help with each step. You will check every line against the contract, as a careful lawyer would. At the end, compare your work with the model answer in this lesson. This is a training exercise with made-up companies. It is not legal advice.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 295" role="img" aria-label="The CloudDesk MSA version 2, compared with version 1, goes through five deliverables: key terms sheet, clause and changes table, playbook deviations, risk memo and negotiation points. Together they form a review pack for Nandini, prepared by Sameer and approved by Kavita. Every row needs a clause number, a check at the source and no unverified citations.">
            <defs><marker id="cr15a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="15" y="60" width="150" height="150" rx="10" fill="#27274e" stroke="#3b82f6"/>
              <text x="90" y="104" font-weight="700">CloudDesk</text>
              <text x="90" y="124" font-weight="700">MSA v2</text>
              <text x="90" y="148" font-size="11" fill="#9b99b8">22 Sept 2026</text>
              <text x="90" y="170" font-size="11" fill="#9b99b8">compared with v1</text>
              <g font-size="12.5">
                <rect x="210" y="20" width="290" height="36" rx="8" fill="#1f1f44" stroke="#8b5cf6"/>
                <text x="355" y="43">1 Key terms sheet</text>
                <rect x="210" y="64" width="290" height="36" rx="8" fill="#1f1f44" stroke="#8b5cf6"/>
                <text x="355" y="87">2 Clause and changes table</text>
                <rect x="210" y="108" width="290" height="36" rx="8" fill="#1f1f44" stroke="#8b5cf6"/>
                <text x="355" y="131">3 Playbook deviations</text>
                <rect x="210" y="152" width="290" height="36" rx="8" fill="#1f1f44" stroke="#8b5cf6"/>
                <text x="355" y="175">4 Risk memo</text>
                <rect x="210" y="196" width="290" height="36" rx="8" fill="#1f1f44" stroke="#8b5cf6"/>
                <text x="355" y="219">5 Negotiation points</text>
              </g>
              <rect x="545" y="60" width="200" height="150" rx="10" fill="#27274e" stroke="#10b981"/>
              <text x="645" y="100" font-weight="700" fill="#6ee7b7">Review pack</text>
              <text x="645" y="120" font-weight="700" fill="#6ee7b7">for Nandini</text>
              <text x="645" y="150" font-size="11" fill="#9b99b8">prepared by Sameer</text>
              <text x="645" y="170" font-size="11" fill="#9b99b8">approved by Kavita</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#cr15a)">
                <line x1="166" y1="135" x2="206" y2="135"/>
                <line x1="501" y1="135" x2="541" y2="135"/>
              </g>
              <rect x="15" y="250" width="730" height="34" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="380" y="272" font-size="12" fill="#fcd34d">Every row: a clause number · checked at the source · no unverified citations</text>
            </g>
          </svg>
          <figcaption>Five deliverables make one review pack. Each one builds on the one before it.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The brief</h3>
          <p>You are Adv. Sameer Rao, an associate at Mehra &amp; Rao Associates, a made-up law firm in Maharashtra. On Tuesday 22 September 2026, Nandini, in-house counsel at LedgerLite, forwards CloudDesk's revised draft:</p>
          <pre><code>Subject: CloudDesk MSA v2 - full review please

        Hi Sameer,
        CloudDesk has sent v2 (clean Word file, dated
        22 Sept 2026). Their email says they accepted our
        main points and made "no other changes".
        Deal: 250 seats, ₹18 lakh a year. The platform
        will hold our end customers' personal data.
        Please send a full review pack by Tue 29 Sept:
        key terms, what changed from v1, issues against
        our playbook, risk ratings, and our next asks.
        Our CFO wants a one-page summary on top.
        Thanks, Nandini</code></pre>
          <p>Before you start, follow the safe-work rules:</p>
          <ul class="lc-list">
            <li>Use only the firm's approved AI tool. Remove anything the task does not need.</li>
            <li>Keep LedgerLite's playbook and the draft memo internal.</li>
            <li>Ask AI for clause numbers and short quotes, so you can check each point.</li>
            <li>Do not trust the cover email. Compare v1 and v2 with a document compare tool.</li>
            <li>Do not use any case or section until you have read it at the source, for example on India Code, SCC Online or Manupatra.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Step by step</h3>
          <table class="lc-table">
            <thead><tr><th>Step</th><th>Ask AI for</th><th>You check</th></tr></thead>
            <tbody>
              <tr><td>1 Key terms sheet</td><td>Parties, term, renewal, fees, payment, liability, termination, disputes, notices, with clause numbers and "Not stated" for gaps</td><td>Every number: 90 days, ₹18,00,000 a year, 15 days to pay, 72 hours, 12 months' fees, 15 days to export</td></tr>
              <tr><td>2 Clause and changes table</td><td>Each key clause in plain words, who it favours, and what changed from v1</td><td>Run Word's Compare as well. Check the definitions, not only the clauses the vendor named.</td></tr>
              <tr><td>3 Playbook check</td><td>A deviations table: Clause | Contract says | Playbook | Status (Meets, Fallback, Negotiate, Escalate)</td><td>Each status matches the playbook row. Missing clauses are listed too.</td></tr>
              <tr><td>4 Risk memo</td><td>A draft memo with High, Medium and Low ratings, reasons and a bottom line</td><td>The ratings reflect LedgerLite's business, not only the words.</td></tr>
              <tr><td>5 Negotiation points</td><td>For each open issue: ask, reason, counter-draft and a polite comment</td><td>No fallback or internal note appears in the comments.</td></tr>
            </tbody>
          </table>
          <p>Work in this order. Each step uses the checked output of the step before. If you find an error, fix it at the source row, then update the later steps.</p>
        </div>
        <div class="lc-card">
          <h3>Model answer: the main findings</h3>
          <p>Compare your work with this table. Your ratings may differ a little. What matters is that you can give a clear reason for each one.</p>
          <table class="lc-table">
            <thead><tr><th>Risk</th><th>What v2 says</th><th>Rating</th><th>Our ask</th></tr></thead>
            <tbody>
              <tr><td>Use of data for AI (8.2 and definition of "Services")</td><td>ML words removed, but "Services" now includes the AI Assist models. A silent change.</td><td>High</td><td>No training of any model on Customer Data</td></tr>
              <tr><td>Liability and indemnity (10, 11.2, 11.3)</td><td>12 months' fees, no carve-outs; Customer uncapped; only Customer indemnifies</td><td>High</td><td>Mutual cap; 2x for data and confidentiality; Provider IP indemnity</td></tr>
              <tr><td>Data protection (6.3)</td><td>Sub-processors anywhere, no notice. No data processing terms.</td><td>High</td><td>List, 30 days' notice, right to object; a data processing schedule</td></tr>
              <tr><td>Price rises (4.2)</td><td>Fees can rise at any time on 30 days' notice</td><td>High</td><td>Fixed for the term; renewal cap 5%</td></tr>
              <tr><td>Suspension (4.3)</td><td>Suspension even over disputed amounts. A silent change.</td><td>High</td><td>No suspension for good-faith disputes</td></tr>
              <tr><td>Breach notice (6.2)</td><td>72 hours, with no details or help</td><td>Medium</td><td>24 hours, with details and help</td></tr>
              <tr><td>Arbitrator (13.2)</td><td>Maharashtra seat, but Provider appoints the arbitrator</td><td>Medium</td><td>Keep the Maharashtra seat; joint appointment</td></tr>
              <tr><td>Exit (12.2, 12.3)</td><td>Export cut to 15 days (a silent change); no refund; Provider-only convenience termination</td><td>Medium</td><td>60 days' export; pro-rata refund</td></tr>
              <tr><td>Other medium points (5.2, 14)</td><td>Service credits are the only remedy. Notices can be posted on a website.</td><td>Medium</td><td>Exit right after repeated failures; notice to named contacts</td></tr>
              <tr><td>Low points (3.2, 7, 9, 15)</td><td>No renewal reminder; 2 years' confidentiality; narrow warranty; one-sided assignment</td><td>Low</td><td>Ask, but these can be traded</td></tr>
            </tbody>
          </table>
          <p>Also list what is missing: data processing terms, security standards and reports, backups, force majeure, transition help on exit and insurance. A strong memo starts with a bottom line for the CFO:</p>
          <pre><code>Bottom line: Do not sign v2 as it stands. Five high
        risks need changes. CloudDesk fixed renewal and
        moved the seat to Maharashtra, but made three changes
        it did not mention: suspension for disputed bills,
        AI models added to "Services", and a shorter data
        export period.
        Decisions needed from LedgerLite: (1) approve the
        negotiation priorities; (2) confirm the budget
        impact of a 5% renewal cap.</code></pre>
        </div>
        <div class="lc-card">
          <h3>Activity: the review session</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Compare prompt">Sameer pastes the text of v1 and v2 into the firm's approved AI tool. He asks for every change, with clause numbers.</li>
              <li data-kind="answer" data-label="AI's list">AI lists the five changes from CloudDesk's email. It says there are no other changes.</li>
              <li data-kind="tool" data-label="Word Compare">Pooja runs Word's Compare on the two files, as the workflow requires.</li>
              <li data-kind="result" data-label="Silent changes">The compare shows three more changes: suspension for disputed amounts (4.3), AI Assist models in "Services" (2), and a 15-day export period (12.3).</li>
              <li data-kind="warn" data-label="A wrong conclusion">The AI clause table says 8.2 "no longer allows AI training". Read with the new definition, it still does. Sameer fixes the row.</li>
              <li data-kind="warn" data-label="A case to check">The draft memo cites a court case on arbitrator appointment. Sameer cannot find it on SCC Online or Indian Kanoon. He deletes it.</li>
              <li data-kind="check" data-label="Partner review">Adv. Kavita Mehra reads the memo and negotiation points. She approves the pack, and it goes to Nandini on 29 September.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Run your own review of the revised draft. Use the CloudDesk clauses below, or paste a redacted contract you are allowed to use.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are helping a lawyer at an Indian law firm with a FIRST-PASS review of a revised draft. We act for [the Customer, LedgerLite Pvt Ltd]. Indian law applies.

        Clauses in the revised draft:
        [2 "Services" = the helpdesk platform, support and AI Assist features, including the models that power them.
        4.2 Provider may revise fees at any time on 30 days' notice.
        4.3 Provider may suspend the Services if any amount, including a disputed amount, is unpaid 7 days after the due date.
        6.2 Breach notice within 72 hours.
        8.2 Perpetual licence to use Customer Data to operate and improve the Services.
        11.2 Provider's liability capped at fees paid in the 12 months before the claim. 11.3 Customer's liability is not capped.
        13.2 Arbitration seated in Maharashtra; Provider appoints the sole arbitrator.]

        Give, in this order:
        1. A key terms table with clause numbers.
        2. A risk table: Clause | Issue | High/Medium/Low | Reason. Read clauses together where they link.
        3. A 5-line bottom line for a CFO.
        4. For the top 3 risks: our ask, a short counter-draft and a polite comment.

        Rules: use only the text above. Do not cite cases. Say "Check" when unsure.</pre>
            <ul class="ai-try-checks">
              <li>It links clause 2 and 8.2: "improve the Services" can cover training the AI models.</li>
              <li>It rates suspension for disputed amounts and the uncapped Customer liability as high risks.</li>
              <li>Every number matches the clauses: 30 days, 7 days, 72 hours, 12 months.</li>
              <li>The comments are polite and cite no case you have not checked.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A full review is a chain: key terms, changes, playbook, risks, then negotiation. AI speeds up every link. You keep the chain strong by checking each link against the contract, and by never trusting a cover email over a document compare.
        </div>
      HTML
      starter_code: nil
    }
  }.freeze
end

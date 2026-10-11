module LegalEthicsAiContent
  # Units (sidebar dividers): 1–4 Foundations · 5–9 Core Duties · 10–14 Policies and Practice · 15 Capstone
  # Widgets: sequence, sorter, stepper. No code editor: each Try It is an ai-try prompt box.
  LESSONS = {
    1 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-law">Law</div>
          <h1 class="lc-title">Why AI Raises Ethical Questions for Lawyers</h1>
        </div>
        <p class="lc-lead">AI tools can draft a notice in seconds and summarise a 60-page agreement in a minute. That speed is real, and clients will expect it. But a lawyer's work rests on three things: accurate work, kept secrets and trust. AI can damage all three in one careless click. In this lesson you will meet Mehra &amp; Rao Associates, a made-up Maharashtra firm that had two near misses in 2026. You will learn the main ethical questions AI raises, and why the lawyer stays responsible for every word. This course is general education, not legal advice.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="Two near misses at a made-up law firm. First, a client's draft share purchase agreement was pasted into a free public chat tool, so client data left the firm. Second, an AI tool added two fake case citations to a draft, which a check caught before filing. Both raise one question: how to get speed without losing accuracy, confidentiality and trust.">
            <defs><marker id="le1a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="20" y="26" text-anchor="start" fill="#c4b5fd" font-weight="700">Near miss 1 · February 2026 (made up)</text>
              <rect x="20" y="40" width="170" height="50" rx="8" fill="#27274e" stroke="#3b82f6"/><text x="105" y="70">Client's draft SPA</text>
              <line x1="192" y1="65" x2="226" y2="65" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#le1a)"/>
              <rect x="230" y="40" width="190" height="50" rx="8" fill="#27274e" stroke="#f59e0b"/><text x="325" y="70">Free public chat tool</text>
              <line x1="422" y1="65" x2="456" y2="65" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#le1a)"/>
              <rect x="460" y="40" width="180" height="50" rx="8" fill="#27274e" stroke="#ec4899"/><text x="550" y="70" fill="#f9a8d4">Data leaves the firm</text>
              <text x="700" y="62" font-size="11.5" fill="#9b99b8">Duty:</text><text x="700" y="78" font-size="11.5" fill="#9b99b8">confidentiality</text>
              <text x="20" y="126" text-anchor="start" fill="#c4b5fd" font-weight="700">Near miss 2 · April 2026 (made up)</text>
              <rect x="20" y="140" width="170" height="50" rx="8" fill="#27274e" stroke="#3b82f6"/><text x="105" y="170">AI adds case law</text>
              <line x1="192" y1="165" x2="226" y2="165" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#le1a)"/>
              <rect x="230" y="140" width="190" height="50" rx="8" fill="#27274e" stroke="#f59e0b"/><text x="325" y="170">2 citations are fake</text>
              <line x1="422" y1="165" x2="456" y2="165" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#le1a)"/>
              <rect x="460" y="140" width="180" height="50" rx="8" fill="#27274e" stroke="#10b981"/><text x="550" y="170" fill="#6ee7b7">Caught before filing</text>
              <text x="700" y="162" font-size="11.5" fill="#9b99b8">Duty:</text><text x="700" y="178" font-size="11.5" fill="#9b99b8">candour to court</text>
              <rect x="20" y="215" width="720" height="70" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="380" y="243" font-weight="700" fill="#c4b5fd">The question for every firm</text>
              <text x="380" y="266">How do we get the speed of AI without losing accuracy, confidentiality and trust?</text>
            </g>
          </svg>
          <figcaption>Two made-up near misses at Mehra &amp; Rao Associates. Each one touches a different duty.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Meet Mehra &amp; Rao Associates</h3>
          <p>Mehra &amp; Rao Associates is a made-up law firm in Maharashtra with 18 lawyers. The founding partner is Adv. Kavita Mehra. Adv. Sameer Rao is a senior associate, and Pooja is the paralegal. In 2026 the firm had two near misses. Nobody was harmed, but both could have been serious.</p>
          <ul class="lc-list">
            <li><strong>Near miss 1: the share purchase agreement.</strong> A first-year associate had a Friday deadline. He copied a client's whole draft SPA (share purchase agreement: the contract for buying a company's shares) into a free public chat tool. He used a personal account. The draft had both company names, the ₹42 crore price, pending tax notices and staff salaries. The tool's settings allowed chats to be used for training.</li>
            <li><strong>Near miss 2: the fake citations.</strong> Adv. Sameer Rao asked an AI tool to "add three or four Supreme Court judgments" to draft written submissions. The tool gave four neat citations. Pooja opened each one in the research database. Two cases did not exist. One was real but decided a different point.</li>
          </ul>
          <p>Kavita saw that the real problem was not one person. The firm had no written rules for AI. This course follows the firm as it writes its first AI use policy.</p>
        </div>
        <div class="lc-card">
          <h3>The four ethical questions AI raises</h3>
          <table class="lc-table">
            <thead><tr><th>Question</th><th>What can go wrong</th><th>The lawyer's duty involved</th></tr></thead>
            <tbody>
              <tr><td><strong>Is it accurate?</strong></td><td>AI writes fluent text that can be wrong. It can invent cases, sections and quotes.</td><td>Competence, and honesty to the court</td></tr>
              <tr><td><strong>Is it secret?</strong></td><td>Client facts typed into a public tool leave the firm's control.</td><td>Confidentiality and privilege (the legal protection of lawyer-client communications)</td></tr>
              <tr><td><strong>Is it fair?</strong></td><td>AI can repeat bias from its training text. Billing can hide how the work was done.</td><td>Fairness to clients, reasonable fees</td></tr>
              <tr><td><strong>Who is responsible?</strong></td><td>"The AI wrote it" is not a defence. Courts hold the person who signs or files.</td><td>Supervision and personal responsibility</td></tr>
            </tbody>
          </table>
          <p>This is not only a theory. Courts in India and abroad have already dealt with fake AI citations. You will see real examples, with sources, later in this course.</p>
        </div>
        <div class="lc-card">
          <h3>Speed is not the enemy</h3>
          <p>The answer is not "never use AI". Used well, AI helps with first drafts, checklists, plain-language summaries and translations for a first read. The answer is: <strong>AI drafts, the lawyer checks, decides and is responsible.</strong></p>
          <pre><code>Weak habit:   "Make this agreement stronger for my client." (paste whole SPA)
        Better habit: "Here is a clause with names and figures removed.
                      [BUYER] buys shares from [SELLER]. Suggest 3 ways to
                      make the tax indemnity clearer for [BUYER]. Explain
                      each change. Do not add any case law."</code></pre>
          <p>The better habit protects the secret, keeps the task small, and stops the tool inventing law. A person still reads every suggestion and decides.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: which risk is it?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each situation at a law firm by its main ethical risk.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="acc" data-label="Accuracy"></div>
              <div data-sorter-target="bucket" data-bucket="conf" data-label="Confidentiality"></div>
              <div data-sorter-target="bucket" data-bucket="trust" data-label="Trust and fairness"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="conf" data-why="Client documents and personal data leave the firm's control.">A junior uploads a client's bank statements to a free chat tool to "find odd payments"</li>
              <li data-bucket="acc" data-why="The section number may be wrong or out of date. Check it in India Code.">An AI summary says a notice period comes from "section 12" of an Act, with no source</li>
              <li data-bucket="trust" data-why="The client pays for hours that were not really worked. Fees must be fair.">The firm bills 6 hours for a draft that AI produced in 20 minutes</li>
              <li data-bucket="acc" data-why="A fake or wrong citation misleads the court. Every citation is opened at the source.">A draft submission cites a judgment that nobody has read</li>
              <li data-bucket="conf" data-why="A recording of a client meeting sits on a third-party app with unknown terms.">A lawyer records a client meeting with a free phone transcription app</li>
              <li data-bucket="trust" data-why="The client may assume a lawyer wrote it. Honest communication builds trust.">A client asks if AI was used on their contract, and the answer is vague</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask an AI assistant to build a first risk map of AI use in your own practice. Then you decide the ratings.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a legal ethics trainer. I work at [a 15-lawyer law firm in Maharashtra doing corporate contracts and commercial disputes].

        List 8 common tasks where our lawyers, paralegals or interns might use a general AI chat tool. Examples: first drafts of notices, summarising judgments, translating documents, preparing research notes.

        For each task, give a table row with:
        1. The task
        2. The main benefit
        3. The main ethical risk (accuracy, confidentiality, candour to the court, fairness to the client, or fees)
        4. One simple safeguard a busy lawyer will actually follow
        5. A rating: Green (fine with normal checks), Amber (only with an approved tool and review), Red (do not do)

        Rules:
        - Do not quote any specific rule, section or case. I will check the law myself.
        - Use simple English.
        - After the table, list 3 questions my partners should answer before we write an AI policy.</pre>
            <ul class="ai-try-checks">
              <li>Does any row put client documents into a free public tool without a Red or Amber rating?</li>
              <li>Are the safeguards specific (for example "open every citation in the database") rather than "be careful"?</li>
              <li>Did the AI add rules or cases even though you told it not to? Treat those as unchecked.</li>
              <li>Do you agree with each rating? The final decision is yours, not the tool's.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> AI changes how fast legal work is done, not who is responsible for it. Every ethical question in this course comes back to one rule: AI drafts, the lawyer checks, decides and answers for the result.
        </div>
      HTML
      starter_code: nil
    },
    2 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-law">Law</div>
          <h1 class="lc-title">How Generative AI Works in Plain Words</h1>
        </div>
        <p class="lc-lead">You do not need to be an engineer to use AI safely. But you do need to know one simple fact: a generative AI tool predicts likely words. It does not look up the truth unless it is connected to a source. This explains why AI can write a perfect-looking citation for a case that does not exist. In this lesson you will learn how these tools work in plain words, what hallucinations are, and what that means for legal work.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 330" role="img" aria-label="How a generative AI tool makes text. It learns word patterns from huge amounts of text. Given your prompt, it predicts the next likely word again and again, and gives a fluent answer. Inside one step, it picks from likely next words by probability, not by truth, so a case name can be invented.">
            <defs><marker id="le2a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12.5" fill="#e2e0f0" text-anchor="middle">
              <rect x="10" y="20" width="130" height="56" rx="8" fill="#27274e" stroke="#3b82f6"/><text x="75" y="44">Huge amounts</text><text x="75" y="62">of text</text>
              <line x1="142" y1="48" x2="162" y2="48" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#le2a)"/>
              <rect x="166" y="20" width="130" height="56" rx="8" fill="#27274e" stroke="#8b5cf6"/><text x="231" y="44">Model learns</text><text x="231" y="62">word patterns</text>
              <line x1="298" y1="48" x2="318" y2="48" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#le2a)"/>
              <rect x="322" y="20" width="130" height="56" rx="8" fill="#27274e" stroke="#22d3ee"/><text x="387" y="44">Your prompt</text><text x="387" y="62" fill="#9b99b8" font-size="11">"Cite SC cases…"</text>
              <line x1="454" y1="48" x2="474" y2="48" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#le2a)"/>
              <rect x="478" y="20" width="130" height="56" rx="8" fill="#27274e" stroke="#f59e0b"/><text x="543" y="44">Predicts next</text><text x="543" y="62">word, repeats</text>
              <line x1="610" y1="48" x2="630" y2="48" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#le2a)"/>
              <rect x="634" y="20" width="116" height="56" rx="8" fill="#27274e" stroke="#10b981"/><text x="692" y="44">Fluent</text><text x="692" y="62">answer</text>
              <rect x="10" y="100" width="740" height="160" rx="10" fill="#1f1f44" stroke="#4b4a78"/>
              <text x="30" y="126" text-anchor="start" fill="#c4b5fd" font-weight="700">Inside one step (made-up numbers)</text>
              <text x="30" y="152" text-anchor="start">"…as the Supreme Court held in ___"</text>
              <text x="30" y="182" text-anchor="start" fill="#9b99b8">Next word</text>
              <text x="120" y="182" text-anchor="start">State</text><rect x="200" y="171" width="220" height="14" rx="3" fill="#8b5cf6"/><text x="430" y="182" text-anchor="start" fill="#9b99b8">34%</text>
              <text x="120" y="206" text-anchor="start">Union</text><rect x="200" y="195" width="150" height="14" rx="3" fill="#8b5cf6"/><text x="360" y="206" text-anchor="start" fill="#9b99b8">23%</text>
              <text x="120" y="230" text-anchor="start">M/s</text><rect x="200" y="219" width="90" height="14" rx="3" fill="#8b5cf6"/><text x="300" y="230" text-anchor="start" fill="#9b99b8">14%</text>
              <text x="480" y="182" text-anchor="start" fill="#fcd34d">It picks a likely word.</text>
              <text x="480" y="206" text-anchor="start" fill="#fcd34d">Then the next, and the next.</text>
              <text x="480" y="230" text-anchor="start" fill="#fcd34d">Nothing checks the truth.</text>
              <rect x="10" y="276" width="740" height="44" rx="10" fill="#27274e" stroke="#ec4899"/>
              <text x="380" y="303" fill="#f9a8d4">Result: a case name, citation and holding that sound right but may not exist.</text>
            </g>
          </svg>
          <figcaption>A generative AI tool chooses likely words. Likely is not the same as true.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Four ideas in plain words</h3>
          <table class="lc-table">
            <thead><tr><th>Idea</th><th>Plain meaning</th><th>Why it matters to a lawyer</th></tr></thead>
            <tbody>
              <tr><td><strong>Prediction</strong></td><td>The tool writes one small piece of text at a time. Each piece is the one that seems most likely to come next.</td><td>It is built to sound right, not to be right.</td></tr>
              <tr><td><strong>Training data</strong></td><td>The huge amount of text the model learned from, collected up to a certain date.</td><td>It may not know a recent judgment or amendment. It may mix up old and new law, such as the IPC and the BNS.</td></tr>
              <tr><td><strong>Hallucination</strong></td><td>Confident text that is false, such as a made-up case, section or quote.</td><td>A fake citation in a court filing can mislead the court.</td></tr>
              <tr><td><strong>Grounding</strong></td><td>Connecting the tool to real sources, such as web search or a legal database, so it can quote them.</td><td>This helps, but it does not remove errors. The tool can still misread or misquote a real source.</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Why AI invents cases</h3>
          <p>Indian case names follow patterns: "State of X v. Y", "Union of India v. Z", "M/s ABC Traders v. …". Citations follow patterns too, like a year, a volume, "SCC" and a page. The model has seen millions of these. So it can build a new one that fits the pattern perfectly. It is not lying. It has no idea whether the case exists.</p>
          <p>In the firm's second near miss, the tool gave Adv. Sameer Rao four authorities. The result of Pooja's check in the database:</p>
          <table class="lc-table">
            <thead><tr><th>AI's citation</th><th>What the check found</th></tr></thead>
            <tbody>
              <tr><td>Authority 1</td><td>Did not exist. The citation pointed to an unrelated judgment.</td></tr>
              <tr><td>Authority 2</td><td>Did not exist. The party names gave no results anywhere.</td></tr>
              <tr><td>Authority 3</td><td>Real case, but it decided a different point. The AI's one-line "holding" was wrong.</td></tr>
              <tr><td>Authority 4</td><td>Real and relevant. Sameer read it in full before citing it.</td></tr>
            </tbody>
          </table>
          <p>Notice the third row. A real case with a wrong summary is just as dangerous as a fake case. It is also harder to spot.</p>
        </div>
        <div class="lc-card">
          <h3>Where AI is safer, and where it is risky</h3>
          <ul class="lc-list">
            <li><strong>Lower risk:</strong> tasks where you give the tool the text and ask it to reshape it. For example: "Rewrite this paragraph in plain English" or "Make a checklist from this clause."</li>
            <li><strong>Higher risk:</strong> tasks where the tool must supply facts from memory. For example: "What does the law say?", "Give me case law" or "What is the limitation period?"</li>
            <li><strong>Always:</strong> open every case, section and quote at the source. Use a research database such as SCC Online or Manupatra, or free sources such as Indian Kanoon and India Code.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Activity: a research session that goes wrong</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Sameer's prompt">"Add three or four Supreme Court judgments supporting interest on delayed commercial payments, with citations."</li>
              <li data-kind="answer" data-label="AI reply">Four authorities, each with a party name, a year, an SCC citation and a neat one-line holding. It sounds confident.</li>
              <li data-kind="thought" data-label="The trap">It is late at night. The list looks perfect. It is tempting to paste it straight into the submissions.</li>
              <li data-kind="tool" data-label="Research database">Next morning, Pooja searches each party name and citation in SCC Online and Indian Kanoon.</li>
              <li data-kind="result" data-label="What she finds">Two cases do not exist. One is real but decides a different point. Only one is real and relevant.</li>
              <li data-kind="warn" data-label="The risk avoided">Filing fake authorities could mislead the court. Courts have treated this very seriously.</li>
              <li data-kind="check" data-label="The fix">Sameer removes the fakes, reads the real judgment in full and cites the correct paragraph. He tells Kavita what happened.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Test an AI tool on a legal question and watch how it handles its own limits. Then check each citation yourself.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">I am learning how AI tools can make mistakes in legal research.

        Part 1: In 5 short sentences of simple English, explain how you produce answers. Say whether you can search a legal database right now, and what your training data cut-off means for recent Indian law.

        Part 2: Name up to three judgments of the Supreme Court of India on [interest on delayed payment of money under a commercial contract]. For each one give:
        - the case name and citation as you remember it
        - one line on what you think it decided
        - your confidence: high, medium or low
        - whether you checked a real source, yes or no

        Part 3: Give me a step-by-step method to check each judgment myself in SCC Online, Manupatra or Indian Kanoon. Include what to compare: party names, year, court, citation, and the exact paragraph.

        Be honest. If you are not sure a case exists, say so clearly.</pre>
            <ul class="ai-try-checks">
              <li>Search every case name and citation in a research database or Indian Kanoon. Count how many are real.</li>
              <li>For the real ones, read the judgment. Does it decide what the AI said it decided?</li>
              <li>Did the tool admit it could not search, or did it sound more certain than it should?</li>
              <li>Did it mention old law (such as the IPC or CrPC) where newer law now applies?</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A generative AI tool is a very good writer with no built-in sense of truth. Use it to shape text you give it. Never trust it to supply law from memory. Open every citation at the source.
        </div>
      HTML
      starter_code: nil
    },
    3 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-law">Law</div>
          <h1 class="lc-title">Professional Rules in India</h1>
        </div>
        <p class="lc-lead">India has no special law yet on lawyers using AI. But the existing rules already apply. The Advocates Act 1961 and the Bar Council of India Rules set an advocate's duties to the court, the client, the opponent and fellow advocates. In this lesson you will learn these duties in general words and see how each one applies when you use AI. This is general education, not legal advice. Always read the current rules at the source.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 330" role="img" aria-label="An advocate in the centre with four groups of duties from the Bar Council of India Rules: to the court, to the client, to the opponent, and to colleagues including the rule against advertising and solicitation. At the base, the Advocates Act 1961 lets the Bar Council of India make these rules and lets Bar Councils punish misconduct.">
            <defs><marker id="le3a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12.5" fill="#e2e0f0" text-anchor="middle">
              <rect x="20" y="15" width="260" height="80" rx="10" fill="#27274e" stroke="#3b82f6"/>
              <text x="150" y="40" font-weight="700" fill="#93c5fd">Duty to the court</text>
              <text x="150" y="62" fill="#9b99b8" font-size="11.5">be honest, respectful, fair;</text>
              <text x="150" y="80" fill="#9b99b8" font-size="11.5">no fake or misleading material</text>
              <rect x="480" y="15" width="260" height="80" rx="10" fill="#27274e" stroke="#10b981"/>
              <text x="610" y="40" font-weight="700" fill="#6ee7b7">Duty to the client</text>
              <text x="610" y="62" fill="#9b99b8" font-size="11.5">keep secrets, act fairly,</text>
              <text x="610" y="80" fill="#9b99b8" font-size="11.5">never abuse their trust</text>
              <rect x="20" y="165" width="260" height="80" rx="10" fill="#27274e" stroke="#f59e0b"/>
              <text x="150" y="190" font-weight="700" fill="#fcd34d">Duty to the opponent</text>
              <text x="150" y="212" fill="#9b99b8" font-size="11.5">talk through their advocate;</text>
              <text x="150" y="230" fill="#9b99b8" font-size="11.5">keep promises you make</text>
              <rect x="480" y="165" width="260" height="80" rx="10" fill="#27274e" stroke="#ec4899"/>
              <text x="610" y="190" font-weight="700" fill="#f9a8d4">Duty to colleagues</text>
              <text x="610" y="212" fill="#9b99b8" font-size="11.5">no advertising or soliciting</text>
              <text x="610" y="230" fill="#9b99b8" font-size="11.5">work (rule 36)</text>
              <rect x="315" y="105" width="130" height="50" rx="25" fill="#1f1f44" stroke="#8b5cf6" stroke-width="2"/>
              <text x="380" y="135" font-weight="700">Advocate</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#le3a)">
                <line x1="330" y1="112" x2="284" y2="80"/><line x1="430" y1="112" x2="476" y2="80"/>
                <line x1="330" y1="148" x2="284" y2="180"/><line x1="430" y1="148" x2="476" y2="180"/>
              </g>
              <rect x="20" y="265" width="720" height="55" rx="10" fill="#1f1f44" stroke="#4b4a78"/>
              <text x="380" y="287">Advocates Act 1961: the Bar Council of India makes conduct rules,</text>
              <text x="380" y="307">and State Bar Councils can punish professional misconduct.</text>
            </g>
          </svg>
          <figcaption>The four groups of duties in Part VI, Chapter II of the Bar Council of India Rules, set on the base of the Advocates Act 1961.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Where the rules come from</h3>
          <ul class="lc-list">
            <li><strong>The Advocates Act 1961</strong> is the main law for the legal profession in India. It lets the Bar Council of India make rules on standards of professional conduct and etiquette.</li>
            <li><strong>Misconduct can be punished.</strong> Under the Act, a State Bar Council's disciplinary committee can reprimand an advocate, suspend them from practice, or remove their name from the roll.</li>
            <li><strong>The Bar Council of India Rules, Part VI, Chapter II</strong> set the "Standards of Professional Conduct and Etiquette". The main sections cover duties to the court, to the client, to the opponent and to colleagues.</li>
            <li><strong>The rules say nothing about AI by name.</strong> They do not need to. The duties apply to the result, whichever tool produced it.</li>
          </ul>
          <p>Read the rules yourself on the Bar Council of India website or in a research database. Rules can change, and some rule numbers differ between sources.</p>
        </div>
        <div class="lc-card">
          <h3>Each duty, applied to AI</h3>
          <table class="lc-table">
            <thead><tr><th>Duty (in general words)</th><th>What it means with AI</th><th>Mehra &amp; Rao example (made up)</th></tr></thead>
            <tbody>
              <tr><td><strong>To the court:</strong> act with dignity, honesty and fairness. Do not try to influence the court by unfair means.</td><td>Never file a case, section or quote you have not checked. A fake citation misleads the court.</td><td>Near miss 2: two fake citations were removed before filing.</td></tr>
              <tr><td><strong>To the client:</strong> uphold the client's interests by fair and honourable means. Keep their communications secret. Do not abuse their trust.</td><td>Do not put client secrets into tools that may store or reuse them.</td><td>Near miss 1: a draft SPA went into a free public tool.</td></tr>
              <tr><td><strong>To the client:</strong> the rules forbid breaching the duty of confidence in the old Evidence Act. That duty is now in section 132 of the Bharatiya Sakshya Adhiniyam 2023.</td><td>AI use does not change what you may disclose. Only the client can allow disclosure.</td><td>Kavita told the client openly about near miss 1.</td></tr>
              <tr><td><strong>To the opponent:</strong> if the other side has an advocate, deal with them through that advocate. Keep promises you make.</td><td>An AI-drafted letter must go to the right person, with no false threats or claims.</td><td>Sameer checks every AI-drafted notice before it goes out.</td></tr>
              <tr><td><strong>To colleagues:</strong> rule 36 bans advertising or soliciting work, directly or indirectly. A limited proviso allows basic website information.</td><td>AI-written social media posts that promote the firm or its wins can break rule 36.</td><td>A junior wanted an AI-written LinkedIn post about "our big win". Kavita said no.</td></tr>
            </tbody>
          </table>
          <p>In July 2026 the Bar Council of India issued a circular on social media conduct. It repeats that advertising and solicitation are not allowed online. It also warns against AI deepfakes of judges, courts, advocates or clients. Check the circular's current text before you rely on it.</p>
        </div>
        <div class="lc-card">
          <h3>Privilege and in-house lawyers: a 2025 ruling</h3>
          <p>On 31 October 2025, a three-judge bench of the Supreme Court decided a case about summoning advocates during investigations. The case is called <em>In Re: Summoning Advocates Who Give Legal Opinion or Represent Parties During Investigation of Cases and Related Issues</em>. Reports of the judgment say:</p>
          <ul class="lc-list">
            <li>Investigating agencies cannot summon an advocate to ask about advice given to a client. The only exceptions are the narrow ones in section 132 of the Bharatiya Sakshya Adhiniyam.</li>
            <li>In-house counsel (lawyers employed by a company) are not treated as practising advocates for section 132. So their communications with the employer do not get that privilege.</li>
          </ul>
          <p><strong>Why it matters for AI:</strong> Nandini is in-house counsel at LedgerLite Pvt Ltd, a made-up software company. Her internal notes may already have weaker protection than an outside advocate's. If she also pastes them into a public AI tool, the risk grows. Read the full judgment before you rely on it.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: which duty is at stake?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each AI situation by the main duty it puts at risk.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="court" data-label="Duty to the court"></div>
              <div data-sorter-target="bucket" data-bucket="client" data-label="Duty to the client"></div>
              <div data-sorter-target="bucket" data-bucket="opp" data-label="Duty to the opponent"></div>
              <div data-sorter-target="bucket" data-bucket="coll" data-label="No advertising (rule 36)"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="court" data-why="An unchecked AI quote may be false. The court relies on what advocates place before it.">Quoting a paragraph from a judgment that AI "remembered", without opening the judgment</li>
              <li data-bucket="client" data-why="The client's private facts leave the firm without the client's agreement.">Pasting a client's divorce settlement terms into a free chat tool to shorten them</li>
              <li data-bucket="opp" data-why="The other side has an advocate, so communication should go through that advocate.">Sending an AI-drafted settlement offer straight to the other party, who has a lawyer</li>
              <li data-bucket="coll" data-why="Promoting the firm's wins to attract clients is advertising or soliciting work.">Using AI to create reels about the firm's court victories with a "Call us" message</li>
              <li data-bucket="client" data-why="The client pays for fair and honest work. Hiding how the work was done can abuse their trust.">Billing the client for AI-written research as if a lawyer spent a full day on it</li>
              <li data-bucket="court" data-why="A wrong statement of law misleads the court, even if made by mistake.">Arguing a point based on an old IPC section that AI gave, without checking the BNS</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Use AI to spot which professional duties a plan might touch. Then check each point against the rule text yourself.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a legal ethics tutor for Indian advocates. Explain in simple English. This is for learning, not legal advice.

        An advocate at a small Maharashtra law firm plans to use a general AI chat tool for these tasks:
        [1. Write a LinkedIn post about a recent win for a client, naming the client.
        2. Summarise a client's bank statements to prepare a cheque-bounce complaint.
        3. Draft a settlement letter and send it directly to the other party, who has a lawyer.
        4. Find case law for written submissions and paste it in as given.]

        For each task:
        - Name the group of duties it may affect under the Bar Council of India Rules, Part VI, Chapter II: duty to the court, to the client, to the opponent, or to colleagues (including the ban on advertising and solicitation).
        - Explain the risk in 2 sentences.
        - Suggest a safer way to do the task.
        - Mark any rule number you mention with "(check the rule text)".

        End with a short list of what the advocate must still decide personally.</pre>
            <ul class="ai-try-checks">
              <li>Look up any rule number it gives in the BCI Rules. Does the rule really say that?</li>
              <li>Did it spot the advertising problem with the LinkedIn post?</li>
              <li>Did it say the settlement letter should go through the other side's advocate?</li>
              <li>Did it treat the bank statements as confidential client data?</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> The Bar Council of India Rules do not mention AI, and they do not need to. The duties to the court, client, opponent and colleagues apply to every word you file, send or post, whoever or whatever wrote the first draft.
        </div>
      HTML
      starter_code: nil
    },
    4 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-law">Law</div>
          <h1 class="lc-title">Guidance from Courts and Bar Bodies</h1>
        </div>
        <p class="lc-lead">Courts and bar bodies have started to publish rules and warnings about AI. Some are for judges, some are for lawyers, and some are court orders in real cases. They come from India, the United States and the United Kingdom. They all send the same message: AI may assist, but a person must check the output and stays responsible. In this lesson you will learn the main guidance in general words, so you can build it into your own firm's rules. Always read the original document before you rely on it.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="A timeline of AI guidance and court orders from June 2023 to February 2026: Mata v. Avianca in the US, UK judicial guidance, ABA Formal Opinion 512, the Kerala High Court policy, a Delhi High Court case, the Supreme Court White Paper, Bombay High Court costs, and the Supreme Court calling fake citations misconduct. Common message: AI may assist, a human checks and stays responsible.">
            <defs><marker id="le4a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12" fill="#e2e0f0" text-anchor="middle">
              <line x1="20" y1="120" x2="745" y2="120" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#le4a)"/>
              <g fill="#8b5cf6"><circle cx="60" cy="120" r="6"/><circle cx="150" cy="120" r="6"/><circle cx="240" cy="120" r="6"/></g>
              <g fill="#10b981"><circle cx="330" cy="120" r="6"/><circle cx="420" cy="120" r="6"/><circle cx="510" cy="120" r="6"/><circle cx="600" cy="120" r="6"/><circle cx="690" cy="120" r="6"/></g>
              <g stroke="#4b4a78"><line x1="60" y1="70" x2="60" y2="112"/><line x1="240" y1="70" x2="240" y2="112"/><line x1="420" y1="70" x2="420" y2="112"/><line x1="600" y1="70" x2="600" y2="112"/>
              <line x1="150" y1="128" x2="150" y2="160"/><line x1="330" y1="128" x2="330" y2="160"/><line x1="510" y1="128" x2="510" y2="160"/><line x1="690" y1="128" x2="690" y2="160"/></g>
              <text x="60" y="44" fill="#c4b5fd">Jun 2023</text><text x="60" y="62">Mata (US)</text>
              <text x="240" y="44" fill="#c4b5fd">Jul 2024</text><text x="240" y="62">ABA Op. 512</text>
              <text x="420" y="44" fill="#6ee7b7">Sep 2025</text><text x="420" y="62">Delhi HC case</text>
              <text x="600" y="44" fill="#6ee7b7">Jan 2026</text><text x="600" y="62">Bombay HC costs</text>
              <text x="150" y="178" fill="#c4b5fd">Dec 2023</text><text x="150" y="196">UK judges' guide</text>
              <text x="330" y="178" fill="#6ee7b7">Jul 2025</text><text x="330" y="196">Kerala HC policy</text>
              <text x="510" y="178" fill="#6ee7b7">Nov 2025</text><text x="510" y="196">SC White Paper</text>
              <text x="690" y="178" fill="#6ee7b7">Feb 2026</text><text x="690" y="196">SC: misconduct</text>
              <circle cx="36" cy="222" r="5" fill="#8b5cf6"/><text x="48" y="226" text-anchor="start" fill="#9b99b8" font-size="11">Abroad</text>
              <circle cx="120" cy="222" r="5" fill="#10b981"/><text x="132" y="226" text-anchor="start" fill="#9b99b8" font-size="11">India</text>
              <rect x="20" y="240" width="720" height="48" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="380" y="269" fill="#fcd34d">Common message: AI may assist. A human checks every output and stays responsible.</text>
            </g>
          </svg>
          <figcaption>Key guidance and court orders on AI, 2023 to 2026. The UK judicial guidance was updated in 2025.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>India: courts and the Bar</h3>
          <table class="lc-table">
            <thead><tr><th>Date</th><th>Source</th><th>What it says, in general words</th></tr></thead>
            <tbody>
              <tr><td>19 July 2025</td><td>Kerala High Court, "Policy Regarding Use of Artificial Intelligence Tools in District Judiciary"</td><td>For district judges and court staff. AI is only an assistive tool. It must not be used to reach findings, reliefs, orders or judgments. Avoid public cloud AI tools, except approved ones. People must check AI citations, summaries and translations.</td></tr>
              <tr><td>25 September 2025</td><td>Delhi High Court, <em>Greenopolis Welfare Association v. Narender Singh</em></td><td>A petition relied on fake or misquoted extracts of Supreme Court judgments, said to be AI-generated. The court allowed the petitioner to withdraw it. The other side said it would take appropriate steps.</td></tr>
              <tr><td>November 2025</td><td>Supreme Court's Centre for Research and Planning, White Paper "Artificial Intelligence and the Judiciary"</td><td>AI can help with research, translation and administration. Judicial decisions must stay human and accountable.</td></tr>
              <tr><td>7 January 2026</td><td>Bombay High Court, <em>Deepak s/o Shivkumar Bahry v. Heart &amp; Soul Entertainment Ltd</em></td><td>Written submissions cited a judgment the court could not trace. The court imposed costs of ₹50,000. It said AI for research is welcome, but parties and advocates must check that references are genuine.</td></tr>
              <tr><td>27 February 2026</td><td>Supreme Court, <em>Gummadi Usha Rani v. Sure Mallikarjuna Rao</em></td><td>A trial court order had relied on four non-existent, AI-generated "judgments". The Supreme Court said a decision based on fake judgments is misconduct, not a mere error. It issued notice to the Attorney General, the Solicitor General and the Bar Council of India.</td></tr>
            </tbody>
          </table>
          <p>The Supreme Court also uses AI for support work. SUVAS helps translate judgments into Indian languages. SUPACE is a research assistant tool for judges. Both are presented as aids, not decision-makers.</p>
        </div>
        <div class="lc-card">
          <h3>Other countries: useful ideas, not Indian law</h3>
          <table class="lc-table">
            <thead><tr><th>Source</th><th>Main points</th></tr></thead>
            <tbody>
              <tr><td><em>Mata v. Avianca, Inc.</em>, US federal court in New York, 22 June 2023</td><td>Lawyers filed a brief with six non-existent cases from ChatGPT. They stood by them when questioned. The court fined the two lawyers and their firm US$5,000.</td></tr>
              <tr><td>ABA Formal Opinion 512, 29 July 2024 (American Bar Association)</td><td>Lawyers using generative AI keep their duties of competence, confidentiality, client communication, candour to the court, supervision and reasonable fees. Clients should give informed consent before their information goes into some AI tools. Lawyers should not bill clients for time spent learning a tool.</td></tr>
              <tr><td>UK judicial guidance on AI, first issued December 2023, updated in 2025</td><td>For judges and their staff. Do not put private information into public AI tools. Watch for hallucinations and bias. Judges stay personally responsible for their work.</td></tr>
              <tr><td>UK High Court, <em>R (Ayinde) v London Borough of Haringey</em>, 6 June 2025</td><td>Fake citations appeared in court papers. The court warned that lawyers who put false AI material before a court risk serious action. Some lawyers were referred to their regulators.</td></tr>
              <tr><td>Solicitors Regulation Authority and the Law Society (England and Wales)</td><td>Guidance on the risks of AI for firms: hallucination, bias, confidentiality and accountability.</td></tr>
            </tbody>
          </table>
          <p>These sources do not bind Indian courts or advocates. But they show where good practice is going. Mehra &amp; Rao can borrow their best ideas for its own policy.</p>
        </div>
        <div class="lc-card">
          <h3>Five common messages</h3>
          <ol class="lc-list">
            <li><strong>AI assists. People decide.</strong> No guidance lets AI make the decision.</li>
            <li><strong>Check every output,</strong> especially citations, quotes and translations.</li>
            <li><strong>Keep confidential data out of public tools.</strong> Use only approved tools.</li>
            <li><strong>Responsibility does not move to the tool.</strong> The person who signs or files answers for it.</li>
            <li><strong>Courts are acting.</strong> Costs, referrals and findings of misconduct have followed fake citations.</li>
          </ol>
        </div>
        <div class="lc-card">
          <h3>Activity: a safe path from AI draft to filing</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put Mehra &amp; Rao's new citation check in the right order. It follows the common messages in the guidance.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Use an approved tool, with client details removed where possible</li>
              <li data-order="2">Mark every case, section and quote in the AI draft as "unchecked"</li>
              <li data-order="3">Find each authority in a research database or official source</li>
              <li data-order="4">Read the relevant part and confirm it says what the draft claims</li>
              <li data-order="5">Delete or fix anything that is fake, wrong or out of date</li>
              <li data-order="6">A responsible advocate reviews and signs off before filing</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Use AI to turn a long guidance document into a clear summary. It includes a short made-up sample, so it works even before you paste real text.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are helping a law firm read AI guidance issued by a court or bar body.

        Summarise ONLY the text I paste below. Do not add anything from memory. If the text does not cover a point, write "Not stated".

        Give a table with these rows:
        1. Who it applies to
        2. What AI use is allowed
        3. What AI use is banned
        4. Checking and verification duties
        5. Confidentiality and data rules
        6. Disclosure to the court or client
        7. What happens if someone breaks it

        For each row, quote the paragraph number from the text.

        Then list 3 practical rules our firm could copy into its own AI policy.

        TEXT:
        [Paste the guidance here. Until you do, use this MADE-UP sample:
        "Para 1. This note applies to all advocates appearing before this made-up court.
        Para 2. AI tools may be used for research and drafting.
        Para 3. Every citation must be checked against an authentic source before filing.
        Para 4. Confidential client material must not be entered into public AI tools.
        Para 5. Filing fake authorities may lead to costs."]</pre>
            <ul class="ai-try-checks">
              <li>Does every point match a paragraph in the text? Check the paragraph numbers.</li>
              <li>Did the AI write "Not stated" where the text is silent, instead of guessing?</li>
              <li>Did it add rules that are not in the text? Remove them.</li>
              <li>Are the 3 firm rules practical and specific?</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> From Kerala to New York, every court and bar body says the same thing. AI can help, but a human checks every output, keeps client data safe and takes responsibility. Build your firm's rules on that shared message, and read each source yourself.
        </div>
      HTML
      starter_code: nil
    },
    5 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-law">Law</div>
          <h1 class="lc-title">Client Confidentiality and Privilege</h1>
        </div>
        <p class="lc-lead">Clients tell lawyers things they tell nobody else. That trust is the base of legal work. When you type client facts into an AI tool, you send them to another company's computers. In this lesson you will learn what never to paste and how business AI tools differ from free ones. You will also learn what to check in vendor terms, and how to redact a document before you use AI. This is general education, not legal advice.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 340" role="img" aria-label="A decision tree for client material. First question: is the tool approved by the firm, with a signed contract? If no, stop and do not paste. If yes, second question: does the task need names or deal facts? If no, redact first, then use. If yes, use only with partner approval and client consent where needed.">
            <defs><marker id="le5a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12.5" fill="#e2e0f0" text-anchor="middle">
              <rect x="280" y="10" width="200" height="40" rx="8" fill="#27274e" stroke="#3b82f6"/><text x="380" y="35">Client document or facts</text>
              <line x1="380" y1="52" x2="380" y2="74" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#le5a)"/>
              <rect x="230" y="78" width="300" height="50" rx="8" fill="#1f1f44" stroke="#8b5cf6"/><text x="380" y="99">Is the tool firm-approved,</text><text x="380" y="117">with a signed contract?</text>
              <path d="M230,103 L130,103 L130,160" fill="none" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#le5a)"/><text x="180" y="96" fill="#fca5a5">No</text>
              <rect x="30" y="164" width="200" height="50" rx="8" fill="#27274e" stroke="#ec4899"/><text x="130" y="186" fill="#f9a8d4" font-weight="700">Stop</text><text x="130" y="204" fill="#f9a8d4">Do not paste</text>
              <path d="M530,103 L630,103 L630,160" fill="none" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#le5a)"/><text x="580" y="96" fill="#6ee7b7">Yes</text>
              <rect x="480" y="164" width="270" height="50" rx="8" fill="#1f1f44" stroke="#8b5cf6"/><text x="615" y="185">Does the task need names</text><text x="615" y="203">or deal facts?</text>
              <path d="M540,216 L470,272" fill="none" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#le5a)"/><text x="486" y="240" fill="#6ee7b7">No</text>
              <path d="M690,216 L690,272" fill="none" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#le5a)"/><text x="710" y="248" fill="#fcd34d">Yes</text>
              <rect x="330" y="276" width="220" height="50" rx="8" fill="#27274e" stroke="#10b981"/><text x="440" y="298" fill="#6ee7b7">Redact first,</text><text x="440" y="316" fill="#6ee7b7">then use</text>
              <rect x="570" y="276" width="180" height="50" rx="8" fill="#27274e" stroke="#f59e0b"/><text x="660" y="298" fill="#fcd34d">Partner approval,</text><text x="660" y="316" fill="#fcd34d">client consent</text>
            </g>
          </svg>
          <figcaption>A simple test before any client material goes into an AI tool.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Confidentiality and privilege: not the same thing</h3>
          <ul class="lc-list">
            <li><strong>Confidentiality</strong> is your duty to keep everything about a client's matter secret. It covers all client information, from any source. The Bar Council of India Rules make this part of your duty to the client.</li>
            <li><strong>Privilege</strong> is a rule of evidence. It is in section 132 of the Bharatiya Sakshya Adhiniyam 2023. An advocate must not disclose communications with a client made for the work, without the client's express consent. There are narrow exceptions, such as communications made to further an illegal purpose.</li>
            <li><strong>Why AI matters:</strong> privilege and confidentiality depend on keeping things secret. If client material goes to a third party's tool, it may be harder to argue it stayed confidential. Indian courts have not settled this for AI tools, as far as we know. Treat it as a real risk.</li>
          </ul>
          <p>One US court has already looked at this. In <em>United States v. Heppner</em> (New York, February 2026), a defendant used a consumer AI chatbot on his own to prepare documents about his case. The judge held those documents were not privileged. This is not Indian law, but it shows the danger.</p>
        </div>
        <div class="lc-card">
          <h3>Free tools, business tools and vendor terms</h3>
          <table class="lc-table">
            <thead><tr><th>Question to check</th><th>Why it matters</th></tr></thead>
            <tbody>
              <tr><td>Can the provider use your chats to train its models?</td><td>Free and personal accounts often allow this by default, or ask you to choose. Business plans usually say they do not train on your data by default.</td></tr>
              <tr><td>How long are chats and files kept, and who can see them?</td><td>Stored data can be leaked, reviewed by staff for safety, or demanded in legal processes.</td></tr>
              <tr><td>Is there a signed contract or data processing agreement?</td><td>A personal account with click-through terms gives the firm little control.</td></tr>
              <tr><td>Where is the data stored and processed?</td><td>Cross-border transfer and India's DPDP Act 2023 may matter. Client files often hold personal data.</td></tr>
              <tr><td>Can an admin control accounts and settings?</td><td>The firm needs to switch off risky features and remove leavers.</td></tr>
            </tbody>
          </table>
          <p>Plans and terms change often. Read the provider's current terms and privacy pages before you approve a tool. A business plan reduces risk. It does not remove your duty to decide what goes in.</p>
        </div>
        <div class="lc-card">
          <h3>The "never paste" list, and how to redact</h3>
          <p>Mehra &amp; Rao's draft policy says: never paste these into any unapproved tool.</p>
          <ul class="lc-list">
            <li>Client and party names, and anything that identifies them (PAN, GSTIN, addresses, phone numbers)</li>
            <li>Deal prices, payment schedules and bank details</li>
            <li>Health, salary, family or criminal records of any person</li>
            <li>Unannounced deals, litigation strategy and settlement positions</li>
            <li>Whole documents, when you only need help with one clause</li>
          </ul>
          <p>To <strong>redact</strong> means to remove or replace identifying details. Here is a made-up example from the Sahyadri Foods SPA:</p>
          <pre><code>Before: "Sahyadri Foods Pvt Ltd shall pay ₹42,00,00,000 to the
                 Promoters of Konkan Cold Chain Pvt Ltd, less the GST
                 demand of ₹1,15,00,000 under notice dated 3 January 2026."

        After:  "[BUYER] shall pay [PRICE] to the [SELLERS] of [TARGET],
                 less the amount of [TAX DEMAND] under [NOTICE]."</code></pre>
          <p>The "after" version is enough to ask for help with the clause structure. Check the whole text for missed details before you paste. Watch for names in headers, footers, file names and tracked changes.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: Pooja prepares a clause for AI help</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="The request">Sameer asks Pooja to get AI help to make the tax indemnity in the Sahyadri SPA clearer.</li>
              <li data-kind="thought" data-label="First decision">She does not need the whole 30-page SPA. She needs only the indemnity clause and its definitions.</li>
              <li data-kind="tool" data-label="Word">She copies the clause into a new document. She replaces names, amounts, dates and notice numbers with placeholders such as [BUYER].</li>
              <li data-kind="warn" data-label="Missed detail">A defined term still says "Konkan Cold Chain". A footer shows the client matter number.</li>
              <li data-kind="check" data-label="Second read">She searches for every party name and the ₹ symbol, fixes both, and deletes the footer.</li>
              <li data-kind="tool" data-label="Approved AI tool">She uses the firm's approved business AI tool, not a personal account.</li>
              <li data-kind="result" data-label="AI suggestions">The tool suggests three wording changes and explains each one.</li>
              <li data-kind="check" data-label="Lawyer review">Sameer reviews the suggestions, puts the real names back in Word, and decides what to keep.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI for a redaction plan for your task, without pasting any real document.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a careful legal operations assistant at an Indian law firm. Do NOT ask me to paste any real document.

        I need AI help to [make the tax indemnity clause clearer] in a [share purchase agreement] for a client.

        Give me:
        1. A list of details I must remove or replace before using any AI tool. Group them: names and IDs, money, dates and reference numbers, personal data, strategy. Suggest a placeholder for each, such as [BUYER] or [PRICE].
        2. Places where hidden details often remain: headers, footers, file names, comments, tracked changes, defined terms.
        3. A 6-point checklist to run before I paste.
        4. A short made-up example clause shown before and after redaction. Use only invented names and numbers.
        5. What a lawyer must still review after the AI replies.

        Use simple English and short bullet points.</pre>
            <ul class="ai-try-checks">
              <li>Does the list cover PAN, GSTIN, bank details and notice numbers?</li>
              <li>Does the example use only invented names and figures?</li>
              <li>Does the checklist include checking tracked changes and file names?</li>
              <li>Remember: redaction reduces risk. Use only a firm-approved tool even for redacted text.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Before you paste, ask two questions. Is this tool approved by the firm, with proper terms? Does the task really need the client's names and facts? Most AI help needs only the shape of the problem, not the client's secrets.
        </div>
      HTML
      starter_code: nil
    },
    6 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-law">Law</div>
          <h1 class="lc-title">Competence and Supervision</h1>
        </div>
        <p class="lc-lead">Competence means you know enough to do the work well. With AI, that includes knowing what your tool can and cannot do. Supervision means the senior lawyer checks the work of juniors, paralegals and interns. In this lesson you will learn what competence with AI looks like. You will see why "the junior used AI" is no excuse for a partner. You will also get a simple supervision checklist. This is general education, not legal advice.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 330" role="img" aria-label="A supervision chain at a law firm. A junior or paralegal uses an approved AI tool, checks the output at the source, a named senior reviews it, and a partner signs off. Below, a six-point supervision checklist for the partner. Responsibility does not move down the chain.">
            <defs><marker id="le6a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12.5" fill="#e2e0f0" text-anchor="middle">
              <rect x="12" y="20" width="132" height="56" rx="8" fill="#27274e" stroke="#3b82f6"/><text x="78" y="44">Junior or</text><text x="78" y="62">paralegal</text>
              <line x1="146" y1="48" x2="160" y2="48" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#le6a)"/>
              <rect x="164" y="20" width="132" height="56" rx="8" fill="#27274e" stroke="#8b5cf6"/><text x="230" y="44">Approved</text><text x="230" y="62">AI tool</text>
              <line x1="298" y1="48" x2="312" y2="48" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#le6a)"/>
              <rect x="316" y="20" width="132" height="56" rx="8" fill="#27274e" stroke="#22d3ee"/><text x="382" y="44">Self-check</text><text x="382" y="62">at the source</text>
              <line x1="450" y1="48" x2="464" y2="48" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#le6a)"/>
              <rect x="468" y="20" width="132" height="56" rx="8" fill="#27274e" stroke="#f59e0b"/><text x="534" y="44">Senior review</text><text x="534" y="62" fill="#9b99b8" font-size="11">(a named person)</text>
              <line x1="602" y1="48" x2="616" y2="48" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#le6a)"/>
              <rect x="620" y="20" width="130" height="56" rx="8" fill="#27274e" stroke="#10b981"/><text x="685" y="44">Partner</text><text x="685" y="62">sign-off</text>
              <rect x="12" y="100" width="738" height="160" rx="10" fill="#1f1f44" stroke="#4b4a78"/>
              <text x="32" y="128" text-anchor="start" fill="#c4b5fd" font-weight="700">The partner's supervision checklist</text>
              <g text-anchor="start">
                <text x="32" y="160">1. Was the tool on the approved list?</text>
                <text x="32" y="192">2. Were client names and data removed?</text>
                <text x="32" y="224">3. Was every citation opened?</text>
                <text x="400" y="160">4. Did a named person review it?</text>
                <text x="400" y="192">5. Is the AI use noted on the file?</text>
                <text x="400" y="224">6. Can the junior explain every line?</text>
              </g>
              <rect x="12" y="276" width="738" height="44" rx="10" fill="#27274e" stroke="#ec4899"/>
              <text x="381" y="303" fill="#f9a8d4">Responsibility does not move down the chain. The signing lawyer answers for it.</text>
            </g>
          </svg>
          <figcaption>A simple supervision chain for AI-assisted work, with the six questions a partner asks before sign-off.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>What competence with AI means</h3>
          <p>You do not need to know how AI is built. But you do need a "reasonable understanding" of the tool you use. ABA Formal Opinion 512 (American Bar Association, 2024) uses this idea. It is a US opinion, not Indian law, but the idea is useful everywhere. In plain words, a competent lawyer using AI knows:</p>
          <ul class="lc-list">
            <li><strong>What the tool is good at:</strong> reshaping text you give it, first drafts, checklists, plain-English summaries.</li>
            <li><strong>What it is bad at:</strong> supplying law from memory, recent amendments, exact citations and quotes.</li>
            <li><strong>Where the data goes:</strong> whether chats are stored or used for training, and whether the firm has business terms.</li>
            <li><strong>How to check the output:</strong> open every case in SCC Online, Manupatra or Indian Kanoon, and every section in India Code.</li>
            <li><strong>When not to use it:</strong> for the final legal judgement, strategy, or advice the client will rely on.</li>
          </ul>
          <p>Competence also means knowing current law. An AI tool may still quote the IPC, CrPC or Evidence Act. Since 1 July 2024 the BNS, BNSS and BSA apply to most new matters. A competent lawyer catches that mix-up.</p>
        </div>
        <div class="lc-card">
          <h3>Supervision: the first near miss again</h3>
          <p>Look again at the firm's first near miss (made up). A first-year associate pasted the whole draft SPA for Sahyadri Foods into a free public chat tool on a Friday night. The deal was worth about ₹42 crore. Kavita asked herself a hard question: why did he think this was fine?</p>
          <table class="lc-table">
            <thead><tr><th>What was missing</th><th>What a supervisor should have given</th></tr></thead>
            <tbody>
              <tr><td>No written AI rules</td><td>A short policy with an approved tool list and a "never paste" list</td></tr>
              <tr><td>No approved tool for juniors</td><td>Access to the firm's business AI tool, or a clear "not yet"</td></tr>
              <tr><td>No training</td><td>A one-hour session on data, hallucinations and checking</td></tr>
              <tr><td>Weekend pressure, no one to ask</td><td>A named senior to call when a deadline feels impossible</td></tr>
              <tr><td>No review step for AI work</td><td>A rule that AI-assisted drafts are marked and reviewed</td></tr>
            </tbody>
          </table>
          <p>The associate was trained, not punished. Kavita saw that the failure was the firm's system. ABA Opinion 512 says the same thing in general words: managing lawyers should set clear policies and train the people they supervise. The Kerala High Court's 2025 policy for the district judiciary also requires training and a record of AI use.</p>
        </div>
        <div class="lc-card">
          <h3>A weak instruction and a better one</h3>
          <p>Supervision starts with how you hand out work. Compare these two instructions from a senior to a junior.</p>
          <pre><code>Weak:    "Use AI and get me a draft reply to the legal notice by 5 pm."

        Better:  "Draft a reply to the notice from Orbit Retail by 5 pm.
          - You may use the firm's approved AI tool only.
          - Remove client names and amounts before you paste anything.
          - Do not add case law from AI. List any points needing
            authority, and I will research them with you.
          - Mark the draft 'AI-assisted' and note what you used it for.
          - Be ready to explain every paragraph to me."</code></pre>
          <p>The better version sets the tool, the data rule, the citation rule and the review step. It also tells the junior that asking for help is expected. The senior must still read the whole draft and decide.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: who may do what?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each task by the level of supervision it needs at a firm like Mehra &amp; Rao.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="alone" data-label="Junior may do alone"></div>
              <div data-sorter-target="bucket" data-bucket="review" data-label="Needs senior review"></div>
              <div data-sorter-target="bucket" data-bucket="no" data-label="Not allowed"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="alone" data-why="No client data, and the output is only for the junior's own learning.">Asking the approved tool to explain "specific performance" in plain English for self-study</li>
              <li data-bucket="review" data-why="It will reach the client. A senior checks accuracy, tone and advice.">Using the approved tool to draft a plain-English summary of a lease for Rangrez Crafts</li>
              <li data-bucket="no" data-why="Client documents must not go into free public tools on personal accounts.">Pasting a client's full draft agreement into a free chat app on a personal phone</li>
              <li data-bucket="review" data-why="Anything that goes to the court needs a named reviewer and checked citations.">Preparing a first draft of written submissions with AI help, with no case law added</li>
              <li data-bucket="alone" data-why="The text is public and no client data is used. The junior still checks the result.">Turning a public section of India Code into a checklist with the approved tool</li>
              <li data-bucket="no" data-why="Filing unchecked AI citations can mislead the court. Every citation is opened first.">Filing AI-suggested citations because "the deadline is today"</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to draft a supervision checklist for your team. Then adjust it to how your office really works.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a practice manager for a law firm. Write in simple English. This is for internal training, not legal advice.

        Our firm: [18 lawyers in Maharashtra, corporate and commercial disputes, 2 paralegals, interns every summer].
        Our AI tools: [one approved business AI assistant; free public chat tools are not allowed for client work].

        Create a one-page supervision checklist for partners and senior associates whose juniors use AI. Include:
        1. Before the work: 4 points to tell the junior (tool, data, citations, deadline help).
        2. During the work: 3 signs that a junior may be using AI unsafely.
        3. Before sign-off: 6 yes/no questions the reviewer must answer.
        4. After a mistake: 4 steps, with no blame for honest reporting.

        Rules:
        - Do not quote any rule, section or case. I will add the law myself.
        - Keep each point under 15 words.
        - End with 3 questions I should ask my partners before we adopt this.</pre>
            <ul class="ai-try-checks">
              <li>Does the sign-off list include opening every citation at the source?</li>
              <li>Does it cover removing client names and data before pasting?</li>
              <li>Are the points specific enough for a busy senior to use in two minutes?</li>
              <li>Did the AI add rules or cases? Treat them as unchecked and verify them.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A junior's AI mistake is usually a supervision failure first. Give people an approved tool, clear rules, training and someone to ask. Then review every AI-assisted draft as if you wrote it, because you will answer for it.
        </div>
      HTML
      starter_code: nil
    },
    7 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-law">Law</div>
          <h1 class="lc-title">Duty of Candour and Fake Citations</h1>
        </div>
        <p class="lc-lead">Candour means honesty with the court. An advocate must never mislead the court, even by mistake. Fake AI citations are now the best-known way lawyers break this duty. Courts in India and abroad have already reacted with costs, warnings and referrals. In this lesson you will study the firm's second near miss in detail and see what real courts have said. You will also learn a checking method, and what to do if an error is found after filing. This is general education, not legal advice.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 330" role="img" aria-label="Near miss 2 in detail. The draft submissions had four AI authorities. Each was opened at the source. Two did not exist and were removed. One was real but about a different point. One was real and relevant, and was read in full and cited correctly. If an error is found after filing, tell the partner, correct the record and tell the court.">
            <defs><marker id="le7a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12.5" fill="#e2e0f0" text-anchor="middle">
              <rect x="10" y="125" width="200" height="60" rx="8" fill="#27274e" stroke="#3b82f6"/><text x="110" y="150">Draft submissions:</text><text x="110" y="170">4 AI authorities</text>
              <line x1="212" y1="155" x2="246" y2="155" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#le7a)"/>
              <rect x="250" y="125" width="180" height="60" rx="8" fill="#27274e" stroke="#8b5cf6"/><text x="340" y="150">Open each one</text><text x="340" y="170">at the source</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#le7a)">
                <line x1="432" y1="148" x2="476" y2="42"/><line x1="432" y1="152" x2="476" y2="117"/>
                <line x1="432" y1="158" x2="476" y2="192"/><line x1="432" y1="162" x2="476" y2="267"/>
              </g>
              <rect x="480" y="15" width="270" height="55" rx="8" fill="#27274e" stroke="#ec4899"/><text x="615" y="38" fill="#f9a8d4">Authority 1: does not exist</text><text x="615" y="57" fill="#9b99b8" font-size="11.5">Remove it</text>
              <rect x="480" y="90" width="270" height="55" rx="8" fill="#27274e" stroke="#ec4899"/><text x="615" y="113" fill="#f9a8d4">Authority 2: does not exist</text><text x="615" y="132" fill="#9b99b8" font-size="11.5">Remove it</text>
              <rect x="480" y="165" width="270" height="55" rx="8" fill="#27274e" stroke="#f59e0b"/><text x="615" y="188" fill="#fcd34d">Authority 3: real, wrong point</text><text x="615" y="207" fill="#9b99b8" font-size="11.5">Drop it, or cite what it really holds</text>
              <rect x="480" y="240" width="270" height="55" rx="8" fill="#27274e" stroke="#10b981"/><text x="615" y="263" fill="#6ee7b7">Authority 4: real, relevant</text><text x="615" y="282" fill="#9b99b8" font-size="11.5">Read in full, cite the paragraph</text>
              <text x="20" y="230" text-anchor="start" fill="#9b99b8" font-size="11.5">Found after filing?</text>
              <text x="20" y="250" text-anchor="start" fill="#9b99b8" font-size="11.5">Tell the partner, correct</text>
              <text x="20" y="270" text-anchor="start" fill="#9b99b8" font-size="11.5">the record, tell the court.</text>
              <text x="380" y="320" fill="#c4b5fd">One real case with a wrong summary is as dangerous as a fake one.</text>
            </g>
          </svg>
          <figcaption>The four authorities in the firm's second near miss (made up), and what happened to each one after the check.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Near miss 2, step by step (made up)</h3>
          <p>In April 2026, Adv. Sameer Rao was preparing written submissions for LedgerLite Pvt Ltd in a made-up Bombay High Court suit against "Orbit Retail Solutions Pvt Ltd". LedgerLite was claiming about ₹1.8 crore in unpaid licence fees, plus interest. Late at night, Sameer asked a general AI chat tool to "add three or four Supreme Court judgments supporting interest on delayed commercial payments, with citations".</p>
          <ul class="lc-list">
            <li><strong>What the tool gave:</strong> four authorities, each with SCC-style citations and a neat one-line holding.</li>
            <li><strong>Why it looked real:</strong> the names followed Indian patterns, for example "Pranav Traders v. Union of India (2019)" [MADE-UP: this case does not exist].</li>
            <li><strong>What saved the firm:</strong> Kavita's standing rule, "every citation is opened at the source". Pooja searched each one in SCC Online and Indian Kanoon the day before filing.</li>
            <li><strong>What Sameer did next:</strong> he removed the fakes, read the real judgment in full and told Kavita openly. Nothing wrong was filed.</li>
            <li><strong>Billing:</strong> the time spent finding and fixing the errors was not billed to LedgerLite.</li>
          </ul>
          <p>Sameer's openness matters. A lawyer who hides an AI mistake turns an error into a question of honesty.</p>
        </div>
        <div class="lc-card">
          <h3>What real courts have done</h3>
          <p>These are real matters, described in general words. Read the actual orders before you rely on them.</p>
          <table class="lc-table">
            <thead><tr><th>Court and date</th><th>What happened</th></tr></thead>
            <tbody>
              <tr><td>US federal court, New York, June 2023: <em>Mata v. Avianca, Inc.</em></td><td>Lawyers cited six non-existent cases from ChatGPT and stood by them when questioned. The court found bad faith and imposed a penalty of US$5,000. It also ordered them to write to their client and to the judges falsely named.</td></tr>
              <tr><td>High Court of England and Wales, June 2025: <em>R (Ayinde) v London Borough of Haringey</em></td><td>Fake citations appeared in court papers. The court warned that lawyers who put false AI material before a court risk contempt and referral to their regulator.</td></tr>
              <tr><td>Delhi High Court, September 2025: <em>Greenopolis Welfare Association v. Narender Singh</em></td><td>A petition relied on fake or misquoted extracts of Supreme Court judgments, said to be AI-generated. The petition was withdrawn. The other side told the court it would take appropriate steps.</td></tr>
              <tr><td>Bombay High Court, October 2025: <em>KMG Wires Pvt Ltd v. National Faceless Assessment Centre</em></td><td>A tax assessment order relied on three non-existent decisions. The court set the order aside and warned against relying blindly on AI results.</td></tr>
              <tr><td>Bombay High Court, January 2026: <em>Deepak s/o Shivkumar Bahry v. Heart &amp; Soul Entertainment Ltd</em></td><td>Written submissions cited a judgment that could not be traced. The court imposed costs of ₹50,000. It said advocates must cross-check that references are genuine.</td></tr>
              <tr><td>Supreme Court of India, February 2026: <em>Gummadi Usha Rani v. Sure Mallikarjuna Rao</em></td><td>A trial court order relied on four non-existent AI "judgments". The Court said deciding on fake judgments is misconduct, not a mere error.</td></tr>
            </tbody>
          </table>
          <p>Notice that the fakes came from lawyers, parties, a tax authority and even a trial court. Anyone who skips the check can be caught.</p>
        </div>
        <div class="lc-card">
          <h3>The five-point citation check</h3>
          <p>Do this for every authority in any document for a court or tribunal. Do it even when the case came from a colleague or a textbook, not only from AI.</p>
          <pre><code>For each authority:
        1. EXISTS     Search the party names and the citation in SCC Online,
              Manupatra or Indian Kanoon. Do they match one judgment?
        2. DETAILS    Same court, same year, same bench, same citation?
        3. HOLDING    Read the judgment. Does it decide the point you cite it for?
        4. QUOTE      Is every quoted line word for word in the judgment,
              at the paragraph number you give?
        5. STATUS     Is it still good law? Check later cases and amendments.

        Record: checked by [name], on [date], in [database].</code></pre>
          <p>A useful prompt habit: never ask AI to "add citations". Ask it to list the legal points that need authority. Then research those points yourself in a database.</p>
          <p><strong>If you find an error after filing:</strong> tell your supervising partner at once. Then correct the record quickly, in the way the court's procedure allows. Tell the court plainly what went wrong. Tell the client too. Do not wait for the other side to find it. Take advice from a senior on the exact steps.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: you find a fake citation after filing</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put these steps in a sensible order for correcting a filed error.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Stop and confirm the problem: search the citation again in two sources</li>
              <li data-order="2">Tell your supervising partner the same day, openly and in full</li>
              <li data-order="3">Check every other citation in the same document</li>
              <li data-order="4">Correct the record with the court quickly, as its procedure allows</li>
              <li data-order="5">Tell the client what happened and what was done</li>
              <li data-order="6">Do not bill the client for the time spent fixing the error</li>
              <li data-order="7">Record the incident and update the firm's checking rules</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Use AI to build a verification table for a draft, without letting it "confirm" any case. You will do the checking yourself. The sample case, Pranav Traders v. Union of India, is made up: it does not exist.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are helping me check a draft for a court filing in India. This is for my own review, not legal advice.

        Here is a paragraph from my draft:
        [The plaintiff is entitled to interest on delayed payment. See Pranav Traders v. Union of India (2019) 4 SCC 210, para 14 [MADE-UP practice case], where the Supreme Court held that interest follows a commercial debt. See also section 34 of the Code of Civil Procedure, 1908.]

        Tasks:
        1. List every authority in the paragraph: each case, each section, each quote.
        2. Make a table with columns: Authority | Exact citation as written | Point it is cited for | What I must check | Where to check (SCC Online, Manupatra, Indian Kanoon, India Code) | Checked by | Date.
        3. Do NOT tell me whether any case exists or what it decided. Leave those cells for me.
        4. List 3 legal points in the paragraph that may need authority, so I can research them.
        5. Point out any wording that states law without a source.</pre>
            <ul class="ai-try-checks">
              <li>Did the AI stay out of "confirming" cases? If it said a case exists, ignore that and check.</li>
              <li>The sample case is made up. A good check will find that it does not exist.</li>
              <li>Did the table catch the paragraph number and the quoted holding as items to check?</li>
              <li>Search every item yourself and fill in "Checked by" and "Date".</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> The court trusts what an advocate places before it. Open every citation at the source before filing, and if an error slips through, correct it quickly and openly. Honesty after a mistake protects your name far more than silence.
        </div>
      HTML
      starter_code: nil
    },
    8 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-law">Law</div>
          <h1 class="lc-title">Bias and Fairness</h1>
        </div>
        <p class="lc-lead">AI tools learn from huge amounts of text written by people. That text has gaps and prejudices, so AI output can too. Bias in AI means unfair patterns in its answers, such as stereotypes about gender, caste, religion, region or language. In legal work this can harm a client, a witness or an accused person. In this lesson you will learn where bias enters and why risk tools in criminal justice need great care. You will also learn how to keep your work fair to every client. This is general education, not legal advice.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 290" role="img" aria-label="Four points where bias can enter AI-assisted legal work: training data, the prompt, the AI output and the lawyer's decision. For each, a risk and a safeguard. At the bottom, a reminder that a risk score is not a finding and a human must weigh every fact.">
            <defs><marker id="le8a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="15" y="25" width="160" height="50" rx="8" fill="#27274e" stroke="#3b82f6"/><text x="95" y="55">Training data</text>
              <line x1="177" y1="50" x2="201" y2="50" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#le8a)"/>
              <rect x="205" y="25" width="160" height="50" rx="8" fill="#27274e" stroke="#8b5cf6"/><text x="285" y="55">Your prompt</text>
              <line x1="367" y1="50" x2="391" y2="50" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#le8a)"/>
              <rect x="395" y="25" width="160" height="50" rx="8" fill="#27274e" stroke="#f59e0b"/><text x="475" y="55">AI output</text>
              <line x1="557" y1="50" x2="581" y2="50" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#le8a)"/>
              <rect x="585" y="25" width="160" height="50" rx="8" fill="#27274e" stroke="#10b981"/><text x="665" y="55">Lawyer's decision</text>
              <g font-size="11.5">
                <text x="95" y="102" fill="#f9a8d4">Risk: one-sided,</text><text x="95" y="118" fill="#f9a8d4">foreign or old text</text>
                <text x="285" y="102" fill="#f9a8d4">Risk: loaded words</text><text x="285" y="118" fill="#f9a8d4">about the person</text>
                <text x="475" y="102" fill="#f9a8d4">Risk: stereotypes</text><text x="475" y="118" fill="#f9a8d4">and missing facts</text>
                <text x="665" y="102" fill="#f9a8d4">Risk: trusting</text><text x="665" y="118" fill="#f9a8d4">the tool too much</text>
                <text x="95" y="150" fill="#6ee7b7">Check: know its limits</text>
                <text x="285" y="150" fill="#6ee7b7">Check: ask neutrally</text>
                <text x="475" y="150" fill="#6ee7b7">Check: test and compare</text>
                <text x="665" y="150" fill="#6ee7b7">Check: your judgement</text>
              </g>
              <rect x="15" y="180" width="730" height="90" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="380" y="210" font-weight="700" fill="#f9a8d4">Risk tools in criminal justice</text>
              <text x="380" y="234">A risk score is not a finding of fact.</text>
              <text x="380" y="256">A human must weigh every fact about the person.</text>
            </g>
          </svg>
          <figcaption>Bias can enter at four points. Each point has a simple safeguard.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>How bias shows up in everyday legal work</h3>
          <p>Bias is rarely obvious. It often hides in word choice, missing facts or a default assumption. Here are made-up examples from a firm like Mehra &amp; Rao.</p>
          <table class="lc-table">
            <thead><tr><th>Task</th><th>What the AI did (made up)</th><th>Why it is unfair</th></tr></thead>
            <tbody>
              <tr><td>Summarise witness statements</td><td>Called one witness "emotional and unreliable" and another "calm and credible", with no reason in the text</td><td>It added judgements the statements did not contain.</td></tr>
              <tr><td>Draft a client intake note</td><td>Assumed the "director" was a man and the "accountant" was a woman</td><td>Gender stereotypes can creep into facts and letters.</td></tr>
              <tr><td>Translate a Marathi complaint</td><td>Flattened a village speaker's words into rough, broken English</td><td>The client may look less credible because of the translation.</td></tr>
              <tr><td>Explain tenant rights</td><td>Gave US-style rules as if they were Indian law</td><td>Much training text is foreign. Indian law may differ.</td></tr>
              <tr><td>Rank bail arguments</td><td>Treated a surname and a neighbourhood as signs of risk</td><td>Caste, religion or area are not evidence about a person.</td></tr>
            </tbody>
          </table>
          <p>In each case the lawyer must read the output against the source documents. Remove any label that the facts do not support.</p>
        </div>
        <div class="lc-card">
          <h3>Risk tools in criminal justice</h3>
          <p>A risk assessment tool gives a person a score for how likely they are to reoffend or miss court. Some courts in the United States use such tools. One well-known case is <em>State v. Loomis</em> (Wisconsin Supreme Court, 2016). The court allowed a risk score to be considered at sentencing. But it said the score must be used with caution and must not decide the sentence on its own. Critics said the defendant could not see how the score was worked out.</p>
          <p>The general lessons for any lawyer:</p>
          <ul class="lc-list">
            <li>A score can repeat past patterns, including past unfair treatment of some groups.</li>
            <li>If a tool is secret, the person cannot fully challenge it.</li>
            <li>A score is about groups. A court decides about one person, on the facts.</li>
          </ul>
          <p>In India, the Supreme Court released draft Regulations for Use of Artificial Intelligence in Courts in June 2026, for public comment. As reported, the draft would bar AI for risk scoring and profiling of people. It was still a draft when this course was written. Check its current status before you rely on it.</p>
        </div>
        <div class="lc-card">
          <h3>Fairness to clients</h3>
          <p>Fairness is not only about what AI says. It is also about how you treat each client.</p>
          <ul class="lc-list">
            <li><strong>Same care for small clients.</strong> Neha of Rangrez Crafts pays a small fee. She still deserves checked work, not a raw AI draft.</li>
            <li><strong>Plain language.</strong> Use AI to explain advice in simple English, Hindi or Marathi. A lawyer checks the translation before it is sent.</li>
            <li><strong>Neutral prompts.</strong> Do not describe people with loaded words. The AI will copy them.</li>
          </ul>
          <pre><code>Loaded:   "Summarise the statement of this aggressive, uneducated
           shopkeeper who is obviously lying about the cheque."

        Neutral:  "Summarise Witness B's statement below in 8 bullet points.
           Use only facts in the text. Quote any line about the cheque.
           Do not describe the witness's character or credibility.
           List any contradictions with Witness A as questions."</code></pre>
        </div>
        <div class="lc-card">
          <h3>Activity: checking an AI summary for bias</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Sameer's prompt">"Summarise these two witness statements for a cheque-bounce case. Names are replaced with Witness A and Witness B."</li>
              <li data-kind="answer" data-label="AI reply">A neat summary. It calls Witness B "hesitant and unreliable" and Witness A "clear and trustworthy".</li>
              <li data-kind="thought" data-label="Sameer's doubt">The statements do not describe anyone's manner. Where did these labels come from?</li>
              <li data-kind="tool" data-label="Word document">Sameer opens both original statements side by side with the summary.</li>
              <li data-kind="result" data-label="What he finds">Witness B's statement is shorter and in simpler English. Nothing in it shows she is unreliable.</li>
              <li data-kind="warn" data-label="The bias">The tool treated simpler language as a sign of weak evidence. That could harm a genuine witness.</li>
              <li data-kind="check" data-label="The fix">He deletes the labels, reruns the task with a neutral prompt and checks each bullet against the source.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to review a piece of text for bias. Then decide yourself which changes are right.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a careful legal editor in India who checks documents for bias and unfair wording. Use simple English. This is for review, not legal advice.

        Here is a draft note (names are made up):
        [Client intake note: Mr Iqbal, a street vendor from a slum area, says his cheque bounced because the bank made a mistake. He seemed nervous and his English was poor, so his story may not be reliable. His wife handles the money, which is unusual.]

        Tasks:
        1. List every word or sentence that may show bias about religion, caste, class, gender, language or place. Explain why in one line each.
        2. Separate facts from opinions in a two-column table.
        3. Rewrite the note using only facts, in neutral words.
        4. List 3 questions the lawyer should ask the client to fill real gaps in the facts.
        Do not add any law or case names.</pre>
            <ul class="ai-try-checks">
              <li>Did it flag "slum area", "poor English" and "unusual" as unfair or irrelevant?</li>
              <li>Does the rewrite keep every real fact and drop every opinion?</li>
              <li>Did the rewrite add new facts that were not in the note? Remove them.</li>
              <li>Do the questions help the client's case rather than judge the client?</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> AI copies the patterns in its training text and in your prompt, including unfair ones. Use neutral prompts, check every label against the source, and never let a score or summary replace your own judgement about a real person.
        </div>
      HTML
      starter_code: nil
    },
    9 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-law">Law</div>
          <h1 class="lc-title">Transparency with Clients and Courts</h1>
        </div>
        <p class="lc-lead">Transparency means being open about how you do the work. Clients have a right to know if their information goes into an AI tool. Some courts now ask lawyers to say when AI was used in a filing. In this lesson you will learn what to tell clients and how to write a clear AI clause for an engagement letter. You will also see how court disclosure rules are developing. This is general education, not legal advice. Always check the current rules of your court.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 320" role="img" aria-label="A law firm is open with two audiences. To the client: an AI clause in the engagement letter, which tools and what data, consent before client data goes into a tool, and honest answers. To the court: follow its rules, file a declaration where required, and vouch personally for every citation.">
            <defs><marker id="le9a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="270" y="15" width="220" height="48" rx="10" fill="#1f1f44" stroke="#8b5cf6" stroke-width="2"/><text x="380" y="45" font-weight="700">Mehra &amp; Rao</text>
              <line x1="320" y1="65" x2="200" y2="96" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#le9a)"/>
              <line x1="440" y1="65" x2="560" y2="96" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#le9a)"/>
              <rect x="15" y="100" width="340" height="170" rx="10" fill="#27274e" stroke="#10b981"/>
              <text x="185" y="128" font-weight="700" fill="#6ee7b7">Telling the client</text>
              <g text-anchor="start">
                <text x="35" y="160">• An AI clause in the engagement letter</text>
                <text x="35" y="188">• Which tools, and for what tasks</text>
                <text x="35" y="216">• Consent before client data goes in</text>
                <text x="35" y="244">• Honest answers when asked</text>
              </g>
              <rect x="405" y="100" width="340" height="170" rx="10" fill="#27274e" stroke="#3b82f6"/>
              <text x="575" y="128" font-weight="700" fill="#93c5fd">Telling the court</text>
              <g text-anchor="start">
                <text x="425" y="160">• Follow the court's current rules</text>
                <text x="425" y="188">• File a declaration if required</text>
                <text x="425" y="216">• You vouch for every citation</text>
                <text x="425" y="244">• Correct errors openly</text>
              </g>
              <text x="380" y="300" fill="#9b99b8">Openness builds trust. Hiding AI use turns a small issue into a question of honesty.</text>
            </g>
          </svg>
          <figcaption>Two audiences for transparency: the client, through the engagement letter and honest answers, and the court, through its rules.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>What to tell clients, and when</h3>
          <p>Indian rules do not yet have a specific AI disclosure duty for clients. But the duty to the client includes not abusing the client's trust and keeping their secrets. ABA Formal Opinion 512 (US, not binding in India) gives useful general guidance:</p>
          <ul class="lc-list">
            <li>Tell the client when AI use affects the work in a way they would care about, or when they ask.</li>
            <li>Get the client's informed consent before putting their confidential information into a tool that may learn from it.</li>
            <li>Informed consent means the client understands the risks and agrees. A line of boilerplate in the engagement letter is not enough.</li>
          </ul>
          <p>The firm's first near miss shows why. The Sahyadri Foods SPA went into a public tool without anyone asking the client. Kavita called Sahyadri's managing director the same week to explain. A clear clause and a real conversation at the start would have made the rules clear to everyone.</p>
        </div>
        <div class="lc-card">
          <h3>An engagement letter AI clause</h3>
          <p>An engagement letter sets out the work, the fees and the terms between the firm and the client. Here is a sample clause Mehra &amp; Rao might use. It is a made-up example for learning. Have a senior lawyer adapt it for real use.</p>
          <pre><code>Use of technology and AI tools

        1. We may use AI tools approved by the firm to help with tasks such as
           first drafts, summaries, checklists and translation for a first read.
        2. A lawyer at the firm reviews all AI-assisted work. We remain fully
           responsible for the advice and documents we give you.
        3. We only use tools with business terms under which your data is not
           used to train the provider's models. We do not use free public
           AI tools for your matter.
        4. We will not put your confidential documents into any AI tool
           without your consent. You may ask us not to use AI on your matter.
        5. Our fees for AI-assisted work are explained in the fees section.
        6. Ask us at any time which tools we use and how we protect your data.</code></pre>
          <p>Notice what the clause does. It names the tasks, the review step and the data rule. It also gives the client a choice. A partner should still explain it in plain words at the first meeting.</p>
        </div>
        <div class="lc-card">
          <h3>Court disclosure rules: a moving area</h3>
          <table class="lc-table">
            <thead><tr><th>Where</th><th>What is known (in general words)</th></tr></thead>
            <tbody>
              <tr><td>Supreme Court of India, draft of June 2026</td><td>Draft Regulations for Use of Artificial Intelligence in Courts, 2026 were released for public comment. As reported, lawyers would have to declare AI use when filing pleadings, documents or evidence. It was a draft when this course was written. Check whether it is now in force, and from when, for your court.</td></tr>
              <tr><td>Kerala High Court, July 2025</td><td>A policy for the district judiciary, not for lawyers. Judges and staff must keep a record of AI use and check every AI output.</td></tr>
              <tr><td>Bombay High Court, January 2026</td><td>In <em>Deepak s/o Shivkumar Bahry v. Heart &amp; Soul Entertainment Ltd</em>, the court said AI for research is welcome. But advocates must cross-check that references are genuine.</td></tr>
              <tr><td>United States, individual judges</td><td>Some judges have standing orders on AI. In 2023, Judge Brantley Starr in Texas made lawyers certify one of two things. Either no generative AI was used, or a human checked any AI-drafted text.</td></tr>
            </tbody>
          </table>
          <p>Whether or not a rule requires a declaration, one thing never changes. The advocate who signs the filing vouches for every fact and citation in it. A declaration of AI use does not reduce that duty.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: clear or vague?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each statement to a client or court as clear and honest, or vague and misleading.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="clear" data-label="Clear and honest"></div>
              <div data-sorter-target="bucket" data-bucket="vague" data-label="Vague or misleading"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="clear" data-why="It names the task, the tool type and the review. The client can ask more.">"We used the firm's approved AI tool for a first draft of the summary. Adv. Rao checked it against the documents."</li>
              <li data-bucket="vague" data-why="It hides AI use behind a general phrase and avoids the question.">"We use a range of modern methods." (in reply to "Did you use AI on my contract?")</li>
              <li data-bucket="clear" data-why="It asks first and explains the choice before data goes into a tool.">"May we use our business AI tool on your contracts? Your data is not used for training. You may say no."</li>
              <li data-bucket="vague" data-why="Boilerplate alone is not informed consent. The client may never read or understand it.">Relying on one line in small print that says "we may use technology" as consent to paste client files</li>
              <li data-bucket="vague" data-why="Blaming the tool does not reduce the advocate's duty to the court.">Telling the court "the AI tool made the error, so we are not responsible"</li>
              <li data-bucket="clear" data-why="It follows the rule and keeps personal responsibility for the content.">Filing the declaration a court requires and confirming that every citation was checked at the source</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to draft an AI clause and a short client explanation for your practice. Then review the wording carefully.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are helping a law firm in India write clear client communication about AI. Use simple English. This is a draft for a senior lawyer to review, not legal advice.

        Our firm: [a 10-lawyer firm in Maharashtra doing contracts and commercial disputes].
        Our AI use: [one approved business AI assistant for first drafts, summaries and checklists; no free public tools; all work reviewed by a lawyer].

        Write:
        1. An engagement letter clause titled "Use of technology and AI tools", with 5 to 7 numbered points. Cover: which tasks, human review, data protection, consent before confidential documents go into a tool, the client's right to say no, and how AI affects fees.
        2. A plain-language FAQ for clients with 5 short questions and answers, under 250 words in total.
        3. A 3-sentence script a partner can say at the first meeting.

        Rules: no promises we cannot keep (for example "zero risk"), no rule numbers or case names, no legal jargon.</pre>
            <ul class="ai-try-checks">
              <li>Does the clause ask for real consent, not just say "we may use technology"?</li>
              <li>Does it promise anything the firm cannot guarantee, such as "no risk"?</li>
              <li>Does it match the tools your firm really uses and their current terms?</li>
              <li>Would a small-business client understand the FAQ on first reading?</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Tell clients how you use AI before it matters, get real consent before their data goes into a tool, and follow each court's rules on disclosure. Whatever you declare, you still vouch personally for every word you file.
        </div>
      HTML
      starter_code: nil
    },
    10 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-law">Law</div>
          <h1 class="lc-title">Billing and Fees When Using AI</h1>
        </div>
        <p class="lc-lead">AI can turn a 20-hour task into a 6-hour one. That raises a fair question: who gets the benefit of the time saved? A fee must be reasonable and honest. Hourly billing must match hours really worked. In this lesson you will learn how to bill AI-assisted work fairly, when fixed or value fees make sense, and what to tell clients. You will also work through a made-up example with real numbers. This is general education, not legal or tax advice.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="A bar chart with made-up numbers for reviewing 40 NDAs for LedgerLite. Hourly without AI, 20 hours, 1,20,000 rupees. Hourly with AI, 6 hours, 36,000 rupees. An agreed fixed fee, 60,000 rupees. Below, a note: do not bill for learning the tool, fixing AI mistakes or hours not worked, and agree the method in writing in advance.">
            <defs><marker id="le10a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <text x="20" y="30" fill="#c4b5fd" font-weight="700">Review of 40 NDAs for LedgerLite (made-up numbers, ₹6,000 per hour)</text>
              <text x="20" y="72">Hourly, no AI (20 h)</text>
              <rect x="230" y="56" width="420" height="24" rx="4" fill="#ec4899"/><text x="660" y="73">₹1,20,000</text>
              <text x="20" y="117">Hourly, with AI (6 h)</text>
              <rect x="230" y="101" width="126" height="24" rx="4" fill="#3b82f6"/><text x="366" y="118">₹36,000</text>
              <text x="20" y="162">Agreed fixed fee</text>
              <rect x="230" y="146" width="210" height="24" rx="4" fill="#10b981"/><text x="450" y="163">₹60,000</text>
              <line x1="230" y1="45" x2="230" y2="182" stroke="#4b4a78"/>
              <rect x="20" y="200" width="720" height="84" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="380" y="228" text-anchor="middle" fill="#fcd34d">Never bill: learning the tool, fixing AI mistakes, or hours not worked.</text>
              <text x="380" y="256" text-anchor="middle">Agree the fee method with the client in writing, before the work starts.</text>
            </g>
          </svg>
          <figcaption>Three ways to charge for the same made-up task. The fair choice depends on what the client agreed in advance.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Fair billing rules in general words</h3>
          <p>In India, advocates' fees are mostly agreed between the advocate and the client. The Bar Council of India Rules also have rules on fees. For example, rule 20 says an advocate must not agree a fee that depends on the result of litigation. The advocate also must not take a share of what is won. Read the current rules yourself. ABA Formal Opinion 512 (US, not binding in India) gives clear general ideas for AI work:</p>
          <table class="lc-table">
            <thead><tr><th>Idea</th><th>What it means in practice</th></tr></thead>
            <tbody>
              <tr><td>Bill actual time</td><td>If you bill by the hour, bill the hours you really worked. That includes writing prompts and checking output. It does not include the hours the task "used to take".</td></tr>
              <tr><td>No charge for learning</td><td>Time spent learning a general AI tool is the firm's cost, not the client's. The exception is when the client asks for a specific new tool.</td></tr>
              <tr><td>Tool costs</td><td>A general AI subscription is usually overhead (a normal running cost of the firm). Charge a client for it only if you agreed that clearly in advance.</td></tr>
              <tr><td>Fixed and value fees</td><td>A value fee is priced on the value of the work to the client, not on hours. These can be fair, but the fee must still be reasonable. In India, it must not be a share of the result of a case.</td></tr>
              <tr><td>No billing for mistakes</td><td>Time spent fixing an AI error is not the client's cost. In the firm's second near miss, Sameer's fix-up time was not billed to LedgerLite.</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Worked example: 40 NDAs for LedgerLite (made up)</h3>
          <p>Nandini, in-house counsel at LedgerLite Pvt Ltd, asks Mehra &amp; Rao to review 40 NDAs (non-disclosure agreements: contracts to keep information secret) against the company's standard terms. The firm uses its approved business AI tool with client consent. All numbers are made up.</p>
          <table class="lc-table">
            <thead><tr><th>Step</th><th>Without AI</th><th>With AI</th></tr></thead>
            <tbody>
              <tr><td>Set up the review checklist</td><td>2 h</td><td>1 h</td></tr>
              <tr><td>First pass on 40 NDAs</td><td>14 h</td><td>1.5 h (AI flags differences)</td></tr>
              <tr><td>Lawyer checks each flag against the NDA</td><td>included above</td><td>2.5 h</td></tr>
              <tr><td>Summary report for Nandini</td><td>4 h</td><td>1 h</td></tr>
              <tr><td><strong>Total</strong></td><td><strong>20 h = ₹1,20,000</strong></td><td><strong>6 h = ₹36,000</strong></td></tr>
            </tbody>
          </table>
          <p>Billing 20 hours for 6 hours of work would be dishonest. There are two fair options:</p>
          <ul class="lc-list">
            <li><strong>Hourly:</strong> bill the 6 hours actually worked, including checking time. The client gets the saving.</li>
            <li><strong>Fixed fee:</strong> agree ₹60,000 in advance for a clear scope, for example "40 NDAs, one report, one call". The firm shares the gain from its investment in tools. The client gets a known cost.</li>
          </ul>
          <p>A fixed fee is fair only if it is agreed before the work, with a clear scope. Changing an hourly matter into a higher "value fee" after the work is done is not fair.</p>
        </div>
        <div class="lc-card">
          <h3>Telling the client: a weak and a better note</h3>
          <pre><code>Weak:    "Professional fees for document review: ₹1,20,000."

        Better:  "Review of 40 NDAs (hourly, as agreed in our engagement
          letter): 6 hours at ₹6,000 = ₹36,000. We used the firm's
          approved AI tool for the first pass. Adv. Rao checked every
          flagged clause. The tool subscription is not charged to you."</code></pre>
          <p>Use AI to help draft fee notes and explanations. But a partner must check every number, hour and statement before the invoice goes out. For GST and invoicing rules, ask the firm's chartered accountant.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: Kavita reviews a fee note</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="tool" data-label="Time records">Kavita opens the time records for the LedgerLite NDA matter. The draft invoice shows 20 hours.</li>
              <li data-kind="result" data-label="What she sees">Lawyers recorded 6 hours of real work. Someone added 14 hours as "standard time for this task".</li>
              <li data-kind="warn" data-label="The problem">Billing hours not worked is dishonest, whether or not AI was used.</li>
              <li data-kind="thought" data-label="Her question">What did we agree with Nandini? Hourly or fixed?</li>
              <li data-kind="check" data-label="The engagement letter">The letter says hourly billing. So only the 6 real hours can be billed.</li>
              <li data-kind="user" data-label="Her prompt">"Draft a short, clear fee note for 6 hours of NDA review. Explain that AI helped with the first pass and a lawyer checked every flag."</li>
              <li data-kind="answer" data-label="AI reply">A 4-line fee note. Kavita checks the hours and amount and fixes one wrong date before sending it.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to compare fee options for an AI-assisted task and draft a clear note for the client. Then check every number.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a law firm's billing adviser. Use simple English. This is general education, not legal or tax advice.

        Task: [review 25 supplier contracts for a small Rajasthan handicrafts business].
        Hourly rate: [₹5,000 per hour] (made up).
        Time without AI: [15 hours]. Time with our approved AI tool, including a lawyer checking every output: [5 hours].

        Please:
        1. Make a table comparing 3 fee options: hourly without AI, hourly with AI, and a fixed fee agreed in advance. Show the working for each amount.
        2. For each option, say in 2 lines whether it is fair to the client and why.
        3. Suggest a fair fixed fee range and the scope it should cover.
        4. Draft a 4-line note to the client that explains the fee and how AI was used.
        5. List 3 things that must never be billed to the client when using AI.

        Do not quote any rule numbers or tax rates.</pre>
            <ul class="ai-try-checks">
              <li>Check every multiplication yourself. AI can make arithmetic mistakes.</li>
              <li>Does it say to bill only hours really worked for hourly billing?</li>
              <li>Does the "never bill" list include learning the tool and fixing AI errors?</li>
              <li>Does the client note say a lawyer checked the work, without overclaiming?</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> AI changes how long work takes, so it must change how you think about fees. Bill real hours, or agree a clear fixed fee in advance. Never charge for time not worked, for learning the tool or for fixing AI mistakes.
        </div>
      HTML
      starter_code: nil
    },
    11 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-law">Law</div>
          <h1 class="lc-title">Data Protection Compliance</h1>
        </div>
        <p class="lc-lead">A law firm holds a lot of personal data. It has data about its staff, its clients and many other people named in its files. India's Digital Personal Data Protection Act 2023 (the DPDP Act) and the DPDP Rules 2025 apply to that data. AI tools add new places where the data can go. In this lesson you will learn the main DPDP ideas for a law firm: client data, vendors, retention and cross-border transfer. You will also build a simple data map. This is general education, not legal advice. Check the current Act and Rules before you rely on any point.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 320" role="img" aria-label="The life of personal data at a law firm in five steps: collect, store, use with AI, share or send abroad, and keep or erase. Each step has a DPDP question. Below, a timeline: the DPDP Rules were notified on 13 November 2025, consent manager rules start about November 2026, and most duties apply about May 2027. The firm is a data fiduciary for staff, clients and people named in its files.">
            <defs><marker id="le11a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="16" y="20" width="132" height="56" rx="8" fill="#27274e" stroke="#3b82f6"/><text x="82" y="43" fill="#93c5fd" font-weight="700">1</text><text x="82" y="63">Collect</text>
              <line x1="150" y1="48" x2="164" y2="48" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#le11a)"/>
              <rect x="168" y="20" width="132" height="56" rx="8" fill="#27274e" stroke="#8b5cf6"/><text x="234" y="43" fill="#c4b5fd" font-weight="700">2</text><text x="234" y="63">Store</text>
              <line x1="302" y1="48" x2="316" y2="48" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#le11a)"/>
              <rect x="320" y="20" width="132" height="56" rx="8" fill="#27274e" stroke="#f59e0b"/><text x="386" y="43" fill="#fcd34d" font-weight="700">3</text><text x="386" y="63">Use with AI</text>
              <line x1="454" y1="48" x2="468" y2="48" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#le11a)"/>
              <rect x="472" y="20" width="132" height="56" rx="8" fill="#27274e" stroke="#ec4899"/><text x="538" y="43" fill="#f9a8d4" font-weight="700">4</text><text x="538" y="63">Share, abroad</text>
              <line x1="606" y1="48" x2="620" y2="48" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#le11a)"/>
              <rect x="624" y="20" width="132" height="56" rx="8" fill="#27274e" stroke="#10b981"/><text x="690" y="43" fill="#6ee7b7" font-weight="700">5</text><text x="690" y="63">Keep or erase</text>
              <g font-size="11.5" fill="#9b99b8">
                <text x="82" y="100">Notice given?</text><text x="82" y="118">Only what we need?</text>
                <text x="234" y="100">Who can open it?</text><text x="234" y="118">Safeguards in place?</text>
                <text x="386" y="100">Approved tool?</text><text x="386" y="118">Processor contract?</text>
                <text x="538" y="100">Which country?</text><text x="538" y="118">Any restriction?</text>
                <text x="690" y="100">Purpose over?</text><text x="690" y="118">Law says keep?</text>
              </g>
              <text x="20" y="156" text-anchor="start" fill="#c4b5fd" font-weight="700">DPDP Rules 2025: phased start (check current dates)</text>
              <line x1="40" y1="190" x2="720" y2="190" stroke="#4b4a78" stroke-width="2"/>
              <circle cx="130" cy="190" r="7" fill="#3b82f6"/><circle cx="380" cy="190" r="7" fill="#f59e0b"/><circle cx="630" cy="190" r="7" fill="#ec4899"/>
              <text x="130" y="178" fill="#93c5fd" font-size="12">13 Nov 2025</text><text x="130" y="212" font-size="12">Rules notified</text>
              <text x="380" y="178" fill="#fcd34d" font-size="12">About Nov 2026</text><text x="380" y="212" font-size="12">Consent manager rules</text>
              <text x="630" y="178" fill="#f9a8d4" font-size="12">About May 2027</text><text x="630" y="212" font-size="12">Most duties apply</text>
              <rect x="20" y="240" width="720" height="66" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="380" y="266">Mehra &amp; Rao is a data fiduciary for its staff, its clients</text>
              <text x="380" y="288">and the people named in its files. AI vendors are usually its processors.</text>
            </g>
          </svg>
          <figcaption>Follow personal data through the firm, and ask one DPDP question at each step.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The DPDP Act in plain words, for a law firm</h3>
          <table class="lc-table">
            <thead><tr><th>Term</th><th>Plain meaning</th><th>Mehra &amp; Rao example (made up)</th></tr></thead>
            <tbody>
              <tr><td><strong>Personal data</strong></td><td>Any data about a person who can be identified from it.</td><td>A client's PAN, an employee's salary, a witness's phone number.</td></tr>
              <tr><td><strong>Data principal</strong></td><td>The person the data is about.</td><td>Neha, the owner of Rangrez Crafts. The key employees of Konkan Cold Chain.</td></tr>
              <tr><td><strong>Data fiduciary</strong></td><td>The person or organisation that decides why and how the data is used.</td><td>Mehra &amp; Rao, for its own staff records and client files.</td></tr>
              <tr><td><strong>Data processor</strong></td><td>A person or company that handles the data on the fiduciary's behalf.</td><td>An AI vendor or cloud provider working for the firm.</td></tr>
              <tr><td><strong>Personal data breach</strong></td><td>Any unauthorised use, sharing, loss or change of personal data.</td><td>Near miss 1: staff salaries went into a public AI tool.</td></tr>
            </tbody>
          </table>
          <p>Some key duties for a data fiduciary: give a clear notice, use data only for its purpose, keep it secure, and use a processor only under a valid contract. It must also report breaches, and erase data when it is no longer needed.</p>
          <p><strong>A note on litigation data.</strong> The Act has an exemption where processing is necessary to enforce a legal right or claim. It may cover much of a firm's dispute work. But the duty to keep data secure still applies. The exemption may not cover deal work, HR records or marketing. Take advice on how it applies to your firm.</p>
          <p><strong>Timing.</strong> The Rules were notified on 13 November 2025, with a phased start. Rules on consent managers follow about a year later. Most duties, such as notices, security and breach reporting, apply about 18 months later, around May 2027. The government has also proposed bringing some dates forward, so check the current dates. A firm should prepare now, not in May 2027.</p>
        </div>
        <div class="lc-card">
          <h3>Build a data map first</h3>
          <p>A <strong>data map</strong> is a simple table of what personal data you hold, where it sits and which tools touch it. You cannot protect data you have not found. Here is Pooja's first draft for the firm (made up).</p>
          <table class="lc-table">
            <thead><tr><th>Data</th><th>Where it sits</th><th>AI risk</th><th>Action</th></tr></thead>
            <tbody>
              <tr><td>Client KYC (PAN, ID copies, addresses)</td><td>OneDrive, WhatsApp on lawyers' phones</td><td>Pasted into a chat tool to "fill a form"</td><td>Keep in OneDrive only. Never paste.</td></tr>
              <tr><td>Deal papers with staff salaries (Konkan SPA schedule)</td><td>OneDrive, email</td><td>Whole SPA pasted into a public tool</td><td>Approved tool only. Remove schedules first.</td></tr>
              <tr><td>Client meeting recordings</td><td>A phone transcription app</td><td>Stored on an unknown vendor's cloud</td><td>Stop until the app is vetted.</td></tr>
              <tr><td>Staff HR records</td><td>HR folder</td><td>AI used to draft appraisals</td><td>Approved tool only. No health data.</td></tr>
              <tr><td>AI chat histories</td><td>The AI vendor's servers</td><td>A hidden extra copy of client data</td><td>Set history and retention settings. Add to the schedule.</td></tr>
            </tbody>
          </table>
          <p>Notice the last row. Every chat, upload and transcript is a new copy of personal data. It must be in your map and your retention plan.</p>
        </div>
        <div class="lc-card">
          <h3>Retention, cross-border transfer and breaches</h3>
          <ul class="lc-list">
            <li><strong>Retention</strong> (how long you keep data). The Act says erase personal data once its purpose is served, unless a law requires you to keep it. The Rules also require some logs to be kept for at least one year. A law firm must balance this with limitation periods, tax records and insurance needs. The firm decides its periods after checking the law.</li>
            <li><strong>Cross-border transfer</strong> (sending data outside India). Many AI tools process data abroad. Under the Rules, transfer is generally allowed unless the central government restricts it. But other laws, sector rules or a client's contract may be stricter. A bank client may insist its data stays in India. Ask each vendor where data is stored and processed.</li>
            <li><strong>Breaches.</strong> Once these duties apply, an event like near miss 1 may count as a personal data breach. The Rules require the firm to tell affected people and the Data Protection Board without delay. A detailed report goes to the Board within 72 hours. Write the incident plan now.</li>
          </ul>
          <pre><code>Retention schedule (made-up sample, firm to decide real periods)
        Record type          Trigger          Review by       Notes
        Litigation file      Matter closed    Partner         Check limitation first
        Client KYC copies    Matter closed    Pooja           Keep only if law requires
        AI chat history      Chat created     Kavita          Short; delete by default
        Meeting recordings   Notes approved   Lawyer          Delete once notes checked</code></pre>
          <p>Use AI for the structure, never for the facts. Compare these two prompts.</p>
          <pre><code>Weak:   "Is our firm DPDP compliant? Here is our client list: ..."

        Better: "List the types of personal data a 20-lawyer Indian law
                 firm usually holds. For each, suggest where it is kept,
                 the DPDP duty involved and one safeguard. Use no real
                 names. Mark any rule or date with (check the source)."</code></pre>
        </div>
        <div class="lc-card">
          <h3>Activity: which DPDP area is it?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each situation at Mehra &amp; Rao by the main DPDP area it touches.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="notice" data-label="Notice and purpose"></div>
              <div data-sorter-target="bucket" data-bucket="sec" data-label="Security and vendors"></div>
              <div data-sorter-target="bucket" data-bucket="ret" data-label="Retention and erasure"></div>
              <div data-sorter-target="bucket" data-bucket="xb" data-label="Cross-border transfer"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="notice" data-why="A person should know what personal data the firm uses and why. The engagement letter is a natural place.">A new individual client signs up, and the firm must explain how it uses their data</li>
              <li data-bucket="xb" data-why="Data processed on servers abroad is a cross-border transfer. Check for restrictions and client terms.">The firm wants an AI tool whose servers are only in another country</li>
              <li data-bucket="ret" data-why="The purpose ended long ago. Review whether any law requires keeping them, then erase.">Scanned ID cards from a matter closed years ago sit in a shared folder</li>
              <li data-bucket="sec" data-why="A processor needs a contract and proper safeguards before it handles client data.">A transcription app stores client meetings, with no contract and unknown security</li>
              <li data-bucket="ret" data-why="Chat histories are copies of personal data. They need a set period and deletion.">Old AI chat histories still hold client names from 2025</li>
              <li data-bucket="xb" data-why="A client's contract can be stricter than the DPDP Rules. The firm must follow it.">A bank client's contract says its data must stay in India</li>
              <li data-bucket="sec" data-why="Access control is a basic safeguard. Leavers must not keep access to client data.">A lawyer leaves the firm, and her AI tool login must be removed the same day</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to draft a data map and retention plan for a firm like yours. It uses no real client data.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a data protection trainer for Indian law firms. This is for learning, not legal advice. Do not ask me for real client data.

        Our firm: [a 12-lawyer firm in Maharashtra doing property, family and commercial disputes].
        Tools staff use: [Microsoft 365, WhatsApp for client documents, a paid research database, a free AI chat tool, a phone transcription app].

        1. Explain data fiduciary, data principal, data processor and personal data breach in one simple line each.
        2. Build a data map table: type of personal data | whose data | where it is kept | tools that touch it | main risk | one action.
        3. Draft a retention schedule: record type | trigger (for example "matter closed") | who reviews | notes. Do not give fixed legal time limits. Write "firm to decide after checking the law".
        4. List 5 questions to ask each AI vendor about where data is stored and processed.
        5. List the points we must confirm with a qualified data protection lawyer.

        Mark any section, rule or date with "(check the current Act and Rules)".</pre>
            <ul class="ai-try-checks">
              <li>Does the map include WhatsApp, recordings and AI chat histories, not just the office files?</li>
              <li>Did it avoid stating fixed time limits as facts?</li>
              <li>Did it say the whole firm is exempt from the DPDP Act? That would be wrong. Check any exemption with a lawyer.</li>
              <li>Does it mention breach reporting and processor contracts?</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Data protection starts with knowing where personal data sits. Every AI chat, upload and transcript is a new copy of it. Map it, keep it only as long as you need, know which country it goes to, and have a breach plan ready before the duties apply.
        </div>
      HTML
      starter_code: nil
    },
    12 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-law">Law</div>
          <h1 class="lc-title">Choosing and Vetting AI Tools</h1>
        </div>
        <p class="lc-lead">Every AI tool that touches client work is a supplier with access to your clients' secrets. So you must check it before you use it. This is called <strong>vendor due diligence</strong>: checking a supplier before you trust it with work or data. In this lesson you will learn what to ask an AI vendor about data use, training, security, location and contract terms. You will also learn how to score tools and spot red flags. This is general education, not legal advice.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 340" role="img" aria-label="A five-step vetting process: define the need, send questions, read the terms, run a trial with dummy data, and sign a data processing agreement. A red flag at steps two to four leads to reject or negotiate. Below, a scorecard compares two made-up tools. Tool A does not train on firm data, offers region choice, admin controls, a DPA and breach notice within 48 hours, so its trial is approved. Tool B fails most checks and is rejected.">
            <defs><marker id="le12a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12.5" fill="#e2e0f0" text-anchor="middle">
              <rect x="16" y="16" width="132" height="54" rx="8" fill="#27274e" stroke="#3b82f6"/><text x="82" y="38" fill="#93c5fd" font-weight="700">Step 1</text><text x="82" y="57">Define the need</text>
              <line x1="150" y1="43" x2="164" y2="43" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#le12a)"/>
              <rect x="168" y="16" width="132" height="54" rx="8" fill="#27274e" stroke="#8b5cf6"/><text x="234" y="38" fill="#c4b5fd" font-weight="700">Step 2</text><text x="234" y="57">Send questions</text>
              <line x1="302" y1="43" x2="316" y2="43" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#le12a)"/>
              <rect x="320" y="16" width="132" height="54" rx="8" fill="#27274e" stroke="#8b5cf6"/><text x="386" y="38" fill="#c4b5fd" font-weight="700">Step 3</text><text x="386" y="57">Read the terms</text>
              <line x1="454" y1="43" x2="468" y2="43" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#le12a)"/>
              <rect x="472" y="16" width="132" height="54" rx="8" fill="#27274e" stroke="#8b5cf6"/><text x="538" y="38" fill="#c4b5fd" font-weight="700">Step 4</text><text x="538" y="57">Dummy-data trial</text>
              <line x1="606" y1="43" x2="620" y2="43" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#le12a)"/>
              <rect x="624" y="16" width="132" height="54" rx="8" fill="#27274e" stroke="#10b981"/><text x="690" y="38" fill="#6ee7b7" font-weight="700">Step 5</text><text x="690" y="57">Sign the DPA</text>
              <g stroke="#ec4899" stroke-width="1.5" stroke-dasharray="4 3" marker-end="url(#le12a)"><line x1="234" y1="72" x2="330" y2="104"/><line x1="386" y1="72" x2="386" y2="102"/><line x1="538" y1="72" x2="442" y2="104"/></g>
              <rect x="270" y="106" width="232" height="34" rx="8" fill="#27274e" stroke="#ec4899"/><text x="386" y="128" fill="#f9a8d4">Red flag: reject or negotiate</text>
              <rect x="16" y="156" width="740" height="172" rx="10" fill="#1f1f44" stroke="#4b4a78"/>
              <text x="36" y="180" text-anchor="start" fill="#c4b5fd" font-weight="700">Scorecard (made-up tools)</text>
              <text x="470" y="180" fill="#9b99b8">Tool A</text><text x="650" y="180" fill="#9b99b8">Tool B</text>
              <line x1="36" y1="188" x2="736" y2="188" stroke="#4b4a78"/>
              <g text-anchor="start">
                <text x="36" y="208">Trains on our data by default?</text>
                <text x="36" y="229">Where data is processed</text>
                <text x="36" y="250">Admin controls and firm logins</text>
                <text x="36" y="271">Signs a data processing agreement</text>
                <text x="36" y="292">Breach notice to the firm</text>
              </g>
              <text x="470" y="208" fill="#6ee7b7">No</text><text x="650" y="208" fill="#f9a8d4">Yes</text>
              <text x="470" y="229" fill="#6ee7b7">Region choice</text><text x="650" y="229" fill="#f9a8d4">Not stated</text>
              <text x="470" y="250" fill="#6ee7b7">Yes</text><text x="650" y="250" fill="#f9a8d4">No</text>
              <text x="470" y="271" fill="#6ee7b7">Yes</text><text x="650" y="271" fill="#f9a8d4">No</text>
              <text x="470" y="292" fill="#6ee7b7">Within 48 hours</text><text x="650" y="292" fill="#f9a8d4">Not stated</text>
              <line x1="36" y1="302" x2="736" y2="302" stroke="#4b4a78"/>
              <text x="36" y="320" text-anchor="start" font-weight="700">Result</text>
              <text x="470" y="320" fill="#6ee7b7" font-weight="700">Trial approved</text><text x="650" y="320" fill="#f9a8d4" font-weight="700">Rejected</text>
            </g>
          </svg>
          <figcaption>Vet each tool in five steps. A DPA is a data processing agreement: the contract that controls how a vendor handles your data.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Why vetting matters: what Kavita found</h3>
          <p>After the two near misses, Adv. Kavita Mehra asked everyone which AI tools they used. The answers surprised her. Here is her list (made up).</p>
          <table class="lc-table">
            <thead><tr><th>Tool</th><th>Who uses it</th><th>Status</th></tr></thead>
            <tbody>
              <tr><td>Free public AI chat tools on personal accounts</td><td>Several juniors, for "quick drafts"</td><td><strong>Not approved.</strong> The main risk.</td></tr>
              <tr><td>A business-plan AI assistant</td><td>3 lawyers, on trial</td><td><strong>On trial.</strong> Needs a signed DPA.</td></tr>
              <tr><td>Free online translation</td><td>Staff, for Marathi and Hindi papers</td><td><strong>Not approved</strong> for client documents.</td></tr>
              <tr><td>A phone transcription app</td><td>Some lawyers, for meeting notes</td><td><strong>Not vetted.</strong> Terms unknown.</td></tr>
            </tbody>
          </table>
          <p>Nobody had chosen these tools on purpose. They just arrived, one download at a time. Vetting turns "whatever people use" into a short approved list.</p>
        </div>
        <div class="lc-card">
          <h3>The vendor questionnaire</h3>
          <table class="lc-table">
            <thead><tr><th>Area</th><th>Question to ask</th><th>Good answer</th><th>Red flag</th></tr></thead>
            <tbody>
              <tr><td><strong>Data use</strong></td><td>Do you use our prompts and files to train or improve models?</td><td>No, by default, in writing</td><td>Yes, or "you can opt out" only on some plans</td></tr>
              <tr><td><strong>Retention</strong></td><td>How long do you keep chats, files and logs? Can we delete them?</td><td>A set period, and admin deletion</td><td>"Indefinitely" or no answer</td></tr>
              <tr><td><strong>Security</strong></td><td>Do you have independent security checks?</td><td>Recent reports, such as ISO/IEC 27001 or SOC 2 (outside audits of security)</td><td>No outside checks at all</td></tr>
              <tr><td><strong>Location</strong></td><td>Where is data stored and processed? Who are your sub-processors (other companies you use)?</td><td>Named countries and a published list</td><td>"Anywhere" with no list</td></tr>
              <tr><td><strong>Access</strong></td><td>Can our admin control users, settings and logs?</td><td>Firm logins, single sign-on, audit logs</td><td>Personal sign-ups only</td></tr>
              <tr><td><strong>Contract</strong></td><td>Will you sign a DPA with confidentiality, breach notice and deletion on exit?</td><td>Yes, with a clear breach notice time</td><td>Click-through terms only</td></tr>
              <tr><td><strong>Legal quality</strong></td><td>For research tools: does each answer link to a real source?</td><td>Clickable sources you can open</td><td>Citations with no links</td></tr>
            </tbody>
          </table>
          <p>Get the answers in writing. A sales call is not a contract. Plans and terms change often, so set a review date for each approved tool.</p>
        </div>
        <div class="lc-card">
          <h3>Worked example: two tools, two decisions</h3>
          <p>Kavita set four <strong>must-haves</strong>. A tool that fails any of them is rejected, however good its drafts are.</p>
          <ol class="lc-list">
            <li>No training on firm data by default, confirmed in the contract.</li>
            <li>A signed DPA with confidentiality and a breach notice time.</li>
            <li>An admin can add and remove users.</li>
            <li>Data is deleted when the firm leaves.</li>
          </ol>
          <p><strong>The business-plan assistant</strong> passed, subject to checks. Its business terms say customer data is not used for training by default. The firm read the current terms, signed a DPA and switched on admin controls. It is approved for 3 lawyers, with a review in 6 months.</p>
          <p><strong>The phone transcription app</strong> failed. It had only personal click-through terms. The vendor would not say where recordings were stored. It is banned for client meetings.</p>
          <p>You can use AI to read vendor terms, because public terms are not secret. But AI can misread a clause. Read the key clauses yourself.</p>
          <pre><code>Weak:   "Is this AI tool safe for lawyers?"

        Better: "Below are a vendor's public terms. Quote the exact clause
                 on: training on customer data, retention, data location,
                 sub-processors, breach notice and deletion on exit.
                 If a point is not covered, write 'Not stated'.
                 Do not guess."</code></pre>
        </div>
        <div class="lc-card">
          <h3>Activity: Kavita vets the business AI assistant</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Kavita's prompt">She pastes the vendor's public business terms into the trial tool. She asks it to quote the clauses on training, retention, location and breach notice.</li>
              <li data-kind="answer" data-label="AI reply">A table of clauses. It says "Not stated" for breach notice time and for the list of sub-processors.</li>
              <li data-kind="tool" data-label="Vendor's trust pages">Pooja opens the vendor's security and privacy pages. She finds the sub-processor list and a security report summary.</li>
              <li data-kind="warn" data-label="A gap">One of the 3 lawyers signed up with a personal plan, not the business plan. His chats fall under different terms.</li>
              <li data-kind="check" data-label="Fix">The firm moves him to a firm login. His personal chats with client material are listed and deleted.</li>
              <li data-kind="result" data-label="Contract">The vendor signs a DPA. It includes confidentiality, deletion on exit and a breach notice time.</li>
              <li data-kind="check" data-label="Decision">Kavita adds the tool to the approved list for 3 lawyers. She sets a review date in 6 months.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to build a vendor questionnaire and test it on sample terms. The prompt includes made-up terms, so it works as it is.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are helping a law firm in India check an AI tool before lawyers use it for client work. This is not legal advice.

        Tool: [an AI drafting assistant for contracts].
        Our needs: [18 lawyers, client data, some clients require data to stay in India].

        Part 1: Write a vendor questionnaire of 12 questions. Group them: data use and training, retention and deletion, security, data location and sub-processors, admin and access, contract terms. For each, give a good answer and a red flag.

        Part 2: Check these terms against your questionnaire. Quote the exact words for each point. Write "Not stated" if the terms are silent. Do not guess.
        TERMS: [paste the vendor's public terms. Until you do, use this MADE-UP sample: "We may use content to improve our services. Content is kept for as long as needed. Data may be processed in any country where we or our partners operate. Enterprise customers may request a data processing addendum."]

        Part 3: Give a verdict: approve, negotiate or reject, with 3 reasons.</pre>
            <ul class="ai-try-checks">
              <li>Did it flag "improve our services" as possible training on client data?</li>
              <li>Did it flag "as long as needed" and "any country" as vague?</li>
              <li>Does each point quote the terms, or say "Not stated"?</li>
              <li>Read the real terms yourself before you decide.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A good AI tool with bad terms is still a bad choice for client work. Set a few must-haves, get the answers in writing, sign a proper contract, and review each approved tool on a fixed date.
        </div>
      HTML
      starter_code: nil
    },
    13 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-law">Law</div>
          <h1 class="lc-title">Writing an AI Use Policy for a Firm</h1>
        </div>
        <p class="lc-lead">Both of Mehra &amp; Rao's near misses had the same root cause. The firm had no written rules for AI. An <strong>AI use policy</strong> is a short document that says which tools staff may use, for what, and with which checks. In this lesson you will learn how to build one from real mistakes. You will set allowed and banned uses, approvals, training and incident handling. A good policy is short enough that people actually read it.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 310" role="img" aria-label="The two near misses lead to six policy rules. The share purchase agreement leak leads to: approved tools only, no personal accounts; and a never-paste list with redaction. The fake citations lead to: every citation opened at the source; and a named reviewer signs off. Both lead to: training for all staff; and reporting incidents the same day, without blame.">
            <defs><marker id="le13a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="20" y="36" width="210" height="64" rx="8" fill="#27274e" stroke="#ec4899"/><text x="125" y="62" fill="#f9a8d4" font-weight="700">Near miss 1</text><text x="125" y="84">SPA in a public tool</text>
              <rect x="20" y="146" width="210" height="64" rx="8" fill="#27274e" stroke="#f59e0b"/><text x="125" y="172" fill="#fcd34d" font-weight="700">Near miss 2</text><text x="125" y="194">Two fake citations</text>
              <rect x="20" y="238" width="210" height="50" rx="8" fill="#27274e" stroke="#8b5cf6"/><text x="125" y="268" fill="#c4b5fd" font-weight="700">Both near misses</text>
              <g text-anchor="start">
                <rect x="330" y="16" width="410" height="38" rx="8" fill="#1f1f44" stroke="#ec4899"/><text x="346" y="40">1. Approved tools only, no personal accounts</text>
                <rect x="330" y="64" width="410" height="38" rx="8" fill="#1f1f44" stroke="#ec4899"/><text x="346" y="88">2. Never-paste list and redaction</text>
                <rect x="330" y="112" width="410" height="38" rx="8" fill="#1f1f44" stroke="#f59e0b"/><text x="346" y="136">3. Every citation opened at the source</text>
                <rect x="330" y="160" width="410" height="38" rx="8" fill="#1f1f44" stroke="#f59e0b"/><text x="346" y="184">4. A named reviewer signs off</text>
                <rect x="330" y="208" width="410" height="38" rx="8" fill="#1f1f44" stroke="#8b5cf6"/><text x="346" y="232">5. Training for all staff and interns</text>
                <rect x="330" y="256" width="410" height="38" rx="8" fill="#1f1f44" stroke="#8b5cf6"/><text x="346" y="280">6. Report incidents the same day, no blame</text>
              </g>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#le13a)">
                <line x1="232" y1="60" x2="326" y2="36"/><line x1="232" y1="78" x2="326" y2="83"/>
                <line x1="232" y1="170" x2="326" y2="132"/><line x1="232" y1="188" x2="326" y2="180"/>
                <line x1="232" y1="256" x2="326" y2="228"/><line x1="232" y1="270" x2="326" y2="274"/>
              </g>
            </g>
          </svg>
          <figcaption>Each rule in the policy answers a real mistake. That makes the rules easy to explain and easy to remember.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>What goes into a firm AI policy</h3>
          <p>Kavita wanted a policy of about three pages, in plain words. These are the sections she chose.</p>
          <table class="lc-table">
            <thead><tr><th>Section</th><th>What it says</th></tr></thead>
            <tbody>
              <tr><td>Purpose and scope</td><td>Covers all partners, lawyers, paralegals, interns and support staff, on any device.</td></tr>
              <tr><td>Approved tools</td><td>A named list. Anything else is not allowed for firm work.</td></tr>
              <tr><td>Allowed, approval needed, banned</td><td>A simple traffic-light list of uses (below).</td></tr>
              <tr><td>Never-paste list</td><td>Client names, IDs, prices, salaries, strategy, whole documents.</td></tr>
              <tr><td>Checking and sign-off</td><td>Every citation opened at the source. A named lawyer approves AI-assisted work.</td></tr>
              <tr><td>Clients, courts and billing</td><td>What the firm tells clients, court disclosure rules, and fair billing for AI work.</td></tr>
              <tr><td>Data protection</td><td>Links to the data map, retention schedule and vendor contracts.</td></tr>
              <tr><td>Training</td><td>Who is trained, when, and a signed acknowledgement.</td></tr>
              <tr><td>Incidents</td><td>What to report, to whom, and how fast.</td></tr>
              <tr><td>Owner and review</td><td>Kavita owns the policy. It is reviewed every 6 months.</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Allowed, approval needed, banned</h3>
          <table class="lc-table">
            <thead><tr><th>Green: allowed with normal checks</th><th>Amber: approval needed</th><th>Red: banned</th></tr></thead>
            <tbody>
              <tr><td>Rewrite your own non-client text in plain English</td><td>Redacted client clauses in the approved tool</td><td>Any client material in a personal or free public tool</td></tr>
              <tr><td>Make a checklist from a public Act or rule</td><td>Summarising a whole client document in the approved tool</td><td>Filing any citation that nobody has opened at the source</td></tr>
              <tr><td>Brainstorm questions for a client meeting (no client facts)</td><td>Recording or transcribing a client meeting</td><td>Letting AI decide advice, strategy or settlement terms</td></tr>
              <tr><td>Draft an internal training note</td><td>First-read translation of a client document</td><td>AI deepfakes or voice clones of anyone</td></tr>
            </tbody>
          </table>
          <p>Amber uses need a named approver. At Mehra &amp; Rao, that is the matter partner. The approval can be a short email that is saved to the matter file.</p>
        </div>
        <div class="lc-card">
          <h3>Training and incident handling</h3>
          <ul class="lc-list">
            <li><strong>Training:</strong> a 60-minute session for everyone, including interns, before they get tool access. A short refresher every year. Each person signs that they read the policy.</li>
            <li><strong>What counts as an incident:</strong> client or personal data in an unapproved tool, a fake or wrong citation found in a draft, or AI output sent without review.</li>
            <li><strong>No blame for reporting:</strong> the first-year associate in near miss 1 was trained, not punished. People report fast when reporting is safe. Hiding an incident is the real offence.</li>
          </ul>
          <p>Use AI to draft the policy's wording. Give it your own rules, and ask it to write them clearly.</p>
          <pre><code>Weak:   "Write an AI policy for a law firm."

        Better: "Turn these rules into a 3-page AI use policy in plain
                 English for an 18-lawyer Maharashtra firm: [paste your rules].
                 Use short numbered clauses. Do not add new rules. Do not
                 quote any law. List anything unclear as a question."</code></pre>
          <p>The weak prompt gives a generic document that fits nobody. The better prompt keeps your decisions and asks the AI only to write them well.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: handle an AI incident</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">A trainee pasted a client's employment contract into a free chat tool. Put the firm's incident steps in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Stop using the tool and tell the policy owner (Kavita) the same working day</li>
              <li data-order="2">Write down what was pasted, where, when, and the tool's settings</li>
              <li data-order="3">Contain it: delete the chat, switch off training, secure the account</li>
              <li data-order="4">Assess the duties involved: confidentiality, privilege and data protection</li>
              <li data-order="5">The partner decides what to tell the client, and any legal reports</li>
              <li data-order="6">Fix the cause, train the person, and record lessons in the incident log</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to draft a short AI use policy from your own rules. Then edit it and have a partner approve it.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are helping a law firm in India write its first AI use policy. Write in plain English. This is not legal advice.

        Firm: [an 18-lawyer Maharashtra firm doing corporate deals and commercial disputes].
        Approved tools: [one business-plan AI assistant with a signed data processing agreement].
        Our incidents: [1. A junior pasted a whole client share purchase agreement into a free chat tool. 2. An AI tool added two fake case citations to draft submissions; a check caught them].

        Write a policy of no more than 3 pages with numbered clauses:
        1. Purpose and scope (who and which devices)
        2. Approved tools
        3. Green, Amber and Red uses, with 3 examples each
        4. Never-paste list
        5. Checking and sign-off, including citation checks at the source
        6. Training and acknowledgement
        7. Incident reporting: what, to whom, how fast, no blame
        8. Owner and review date

        Do not quote any law or case. After the policy, list 5 questions the partners must decide.</pre>
            <ul class="ai-try-checks">
              <li>Does every rule link back to a real risk, such as the two incidents?</li>
              <li>Is it short and plain enough that a trainee will read it?</li>
              <li>Did it add laws or cases anyway? Remove them or check them.</li>
              <li>Are the incident steps clear: who to tell and how fast?</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A useful AI policy is short, specific and built from real mistakes. Name the approved tools, list what never goes in, require a check at the source, train everyone, and make reporting safe.
        </div>
      HTML
      starter_code: nil
    },
    14 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-law">Law</div>
          <h1 class="lc-title">AI in Courts and Access to Justice</h1>
        </div>
        <p class="lc-lead">AI is not only a tool for law firms. Indian courts use it to translate judgments and to help judges with research. Many people without a lawyer now ask AI chatbots about their legal problems. AI can make the law easier to reach and read. It can also give confident, wrong answers to the people least able to check them. In this lesson you will see how courts use AI, what helps people get justice, and where the risks are. This is general education, not legal advice.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 330" role="img" aria-label="The journey of a person without a lawyer in five steps: get advice from legal aid, ask an AI chatbot, file and track the case on e-Courts, read the order in a SUVAS translation, and the hearing where the judge decides. Under each step is a risk and a safeguard. Below, a panel on the court system: SUVAS translates judgments, SUPACE helps judges with research, and AI assists while a human judge decides.">
            <defs><marker id="le14a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="20" y="24" text-anchor="start" fill="#c4b5fd" font-weight="700">A person without a lawyer: the journey</text>
              <rect x="16" y="38" width="132" height="58" rx="8" fill="#27274e" stroke="#3b82f6"/><text x="82" y="61" font-weight="700">Get advice</text><text x="82" y="82" font-size="12" fill="#9b99b8">Legal aid, 15100</text>
              <line x1="150" y1="67" x2="164" y2="67" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#le14a)"/>
              <rect x="168" y="38" width="132" height="58" rx="8" fill="#27274e" stroke="#8b5cf6"/><text x="234" y="61" font-weight="700">Ask AI</text><text x="234" y="82" font-size="12" fill="#9b99b8">Chatbot answer</text>
              <line x1="302" y1="67" x2="316" y2="67" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#le14a)"/>
              <rect x="320" y="38" width="132" height="58" rx="8" fill="#27274e" stroke="#22d3ee"/><text x="386" y="61" font-weight="700">File, track</text><text x="386" y="82" font-size="12" fill="#9b99b8">e-Courts, e-filing</text>
              <line x1="454" y1="67" x2="468" y2="67" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#le14a)"/>
              <rect x="472" y="38" width="132" height="58" rx="8" fill="#27274e" stroke="#f59e0b"/><text x="538" y="61" font-weight="700">Read order</text><text x="538" y="82" font-size="12" fill="#9b99b8">SUVAS translation</text>
              <line x1="606" y1="67" x2="620" y2="67" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#le14a)"/>
              <rect x="624" y="38" width="132" height="58" rx="8" fill="#27274e" stroke="#10b981"/><text x="690" y="61" font-weight="700">Hearing</text><text x="690" y="82" font-size="12" fill="#9b99b8">Judge decides</text>
              <g font-size="11.5" fill="#f9a8d4">
                <text x="82" y="122">Queues, distance</text><text x="234" y="122">Wrong or old law</text><text x="386" y="122">Hard portals</text><text x="538" y="122">Meaning can shift</text><text x="690" y="122">Fake citations</text>
              </g>
              <g font-size="11.5" fill="#6ee7b7">
                <text x="82" y="144">Phone, video help</text><text x="234" y="144">Check with a lawyer</text><text x="386" y="144">Help desks</text><text x="538" y="144">Check the original</text><text x="690" y="144">Open every case</text>
              </g>
              <g font-size="11.5" text-anchor="start">
                <rect x="250" y="164" width="12" height="12" rx="2" fill="#f9a8d4"/><text x="268" y="175" fill="#9b99b8">Risk</text>
                <rect x="330" y="164" width="12" height="12" rx="2" fill="#6ee7b7"/><text x="348" y="175" fill="#9b99b8">Safeguard</text>
              </g>
              <rect x="20" y="196" width="720" height="118" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="40" y="222" text-anchor="start" fill="#c4b5fd" font-weight="700">Inside the court system in India</text>
              <g text-anchor="start">
                <text x="40" y="248"><tspan fill="#fcd34d" font-weight="700">SUVAS:</tspan> translates judgments between English and Indian languages</text>
                <text x="40" y="272"><tspan fill="#93c5fd" font-weight="700">SUPACE:</tspan> an AI research assistant for judges (launched 2021)</text>
                <text x="40" y="296"><tspan fill="#6ee7b7" font-weight="700">The rule:</tspan> AI assists. A human judge decides and is accountable.</text>
              </g>
            </g>
          </svg>
          <figcaption>AI can help at every step of a case. At every step, a person must also check what it says.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>How Indian courts use AI today</h3>
          <p>Describe these tools in general words. Their features change, so read the official court pages for current details.</p>
          <table class="lc-table">
            <thead><tr><th>Tool or policy</th><th>What it does</th><th>What it means for you</th></tr></thead>
            <tbody>
              <tr><td><strong>SUVAS</strong> (Supreme Court Vidhik Anuvaad Software)</td><td>Machine translation of judgments between English and Indian languages. Many translated judgments are on the Supreme Court's e-SCR pages.</td><td>A client can read a judgment in Hindi, Marathi or another language. Translations often carry a note about which version to rely on. Read that note.</td></tr>
              <tr><td><strong>SUPACE</strong> (Supreme Court Portal for Assistance in Court's Efficiency)</td><td>An AI research assistant for judges, launched in April 2021.</td><td>Judges use AI to find and sort facts. They do not use it to decide.</td></tr>
              <tr><td><strong>e-Courts Project</strong> (Phase III, 2023 to 2027)</td><td>Case status, cause lists, e-filing, e-payment and virtual courts. Phase III also uses AI, OCR (reading text from scans) and language tools.</td><td>A litigant can track a case on a phone. Pooja uses the e-filing portals every week.</td></tr>
              <tr><td><strong>Kerala High Court policy</strong> (19 July 2025)</td><td>For the district judiciary: AI only as an assistive tool. It must never decide findings, orders or judgments. Translations must be checked by a person.</td><td>Courts expect the same care from lawyers.</td></tr>
              <tr><td><strong>Supreme Court White Paper</strong> (November 2025)</td><td>"Artificial Intelligence and the Judiciary": AI as an assistive tool only. Decisions stay human and accountable.</td><td>It lists the same risks: hallucination, bias and confidentiality.</td></tr>
            </tbody>
          </table>
          <p>The warning sign is real. In February 2026 the Supreme Court dealt with a trial court order that relied on four non-existent, AI-generated "judgments". It said a decision based on fake judgments is not a mere error. It is misconduct with legal consequences.</p>
        </div>
        <div class="lc-card">
          <h3>People without a lawyer: help and harm</h3>
          <p>A <strong>litigant in person</strong> is someone who runs their own case without a lawyer. For them, AI can explain a notice, a form or a court order in simple words. That is real help. But they often cannot tell a right answer from a wrong one.</p>
          <p><strong>Worked example (made up).</strong> Farida runs a small tailoring shop in Maharashtra. A customer's cheque for ₹60,000 bounced. She asks a free chatbot what to do. It answers with confidence. Here is what a lawyer at a legal aid clinic found.</p>
          <table class="lc-table">
            <thead><tr><th>What the chatbot said</th><th>The problem</th></tr></thead>
            <tbody>
              <tr><td>"File a complaint for cheating under IPC section 420."</td><td>Old law. The IPC was replaced by the Bharatiya Nyaya Sanhita from 1 July 2024. It also skipped the usual route for a bounced cheque: section 138 of the Negotiable Instruments Act.</td></tr>
              <tr><td>"You have 6 months to send a notice."</td><td>Wrong, and stated as fact. The law sets strict time limits for the notice and the complaint. They must be checked in the current Act.</td></tr>
              <tr><td>It cited a case with a neat citation.</td><td>The case could not be found in Indian Kanoon or SCC Online.</td></tr>
              <tr><td>It never said "talk to a lawyer".</td><td>Farida may be able to get free legal aid. It did not tell her.</td></tr>
            </tbody>
          </table>
          <p>Free help does exist. Under the Legal Services Authorities Act 1987, many people can get free legal aid. This includes women, children and people on low incomes; check who qualifies. The NALSA helpline 15100 and the government's Tele-Law service connect people to lawyers. Nyaya Bandhu links people to pro bono lawyers (lawyers who work for free).</p>
        </div>
        <div class="lc-card">
          <h3>What lawyers and firms can do</h3>
          <ul class="lc-list">
            <li><strong>Check translations.</strong> A machine translation is a first draft. A person who knows both languages and the law must check it before anyone relies on it.</li>
            <li><strong>Write plain-language guides, then check them.</strong> AI can draft a simple guide for a legal aid clinic. A lawyer must check every legal point and every time limit.</li>
            <li><strong>Design chatbots with safe limits.</strong> A legal aid chatbot should say it is not a lawyer. It should give general information, point to legal aid, and never give fixed time limits without a source.</li>
            <li><strong>Watch the other side.</strong> If a litigant in person files AI-made papers with fake cases, tell the court politely. Do not take unfair advantage. Your duty of fairness still applies.</li>
          </ul>
          <pre><code>Weak:   "Explain cheque bounce law."

        Better: "Write a one-page guide in simple English and simple Hindi
                 for a small shop owner whose customer's cheque bounced.
                 Give general steps only. Do not state any time limit or
                 section as fact: write [lawyer to check]. End with where
                 to get free legal aid in India. Say this is not advice."</code></pre>
          <p>Mehra &amp; Rao now gives one Saturday a month to a legal aid clinic. Sameer checks the AI-drafted guides before they are handed out.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: help, check or too risky?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each use of AI in the justice system by how safe it is.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="help" data-label="Helps access"></div>
              <div data-sorter-target="bucket" data-bucket="check" data-label="Needs a human check"></div>
              <div data-sorter-target="bucket" data-bucket="risk" data-label="Too risky"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="help" data-why="Case status and cause lists are official records. Tracking a case online saves trips to court.">A litigant checks the next hearing date on the e-Courts app</li>
              <li data-bucket="check" data-why="Machine translation can change legal meaning. A person who knows both languages must check it.">A client reads a SUVAS translation of a judgment in Marathi</li>
              <li data-bucket="risk" data-why="AI must never decide findings or orders. The judge decides and is accountable.">A court uses an AI tool to decide who wins a bail hearing</li>
              <li data-bucket="check" data-why="A draft guide can help many people. Every legal point and time limit must be checked by a lawyer first.">A clinic uses AI to draft a plain-language guide on tenant rights</li>
              <li data-bucket="risk" data-why="Unchecked citations can be fake. Filing them misleads the court and can lead to costs.">A person files AI-written submissions without opening any cited case</li>
              <li data-bucket="help" data-why="The helpline connects people to real lawyers and legal aid, for free.">A chatbot tells a worker to call the NALSA helpline 15100 for free legal aid</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to draft a plain-language guide for someone without a lawyer, with safe limits built in. Then check it as a lawyer would.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are helping a legal aid clinic in India write a guide for people who do not have a lawyer. This is general information, not legal advice.

        Topic: [a small shop owner whose customer's cheque bounced].
        Reader: [someone who left school after class 10 and reads Hindi and some English].
        Language: [simple English, then the same guide in simple Hindi].

        Rules:
        1. Use short sentences and everyday words.
        2. Give general steps only. Do not give personal advice.
        3. Do not state any time limit, fee or section number as fact. Write [lawyer to check] instead.
        4. Do not cite any case.
        5. Name the current laws only if you are sure. Remember that the BNS, BNSS and BSA replaced the IPC, CrPC and Evidence Act from 1 July 2024.
        6. End with "Where to get free help": the District Legal Services Authority, and the NALSA helpline 15100.

        After the guide, list 5 points a lawyer must check before the clinic hands it out.</pre>
            <ul class="ai-try-checks">
              <li>Did it state a time limit or fee as fact? Replace it with the current law, checked at the source.</li>
              <li>Did it mention the IPC as current law? That is out of date.</li>
              <li>Is the Hindi version a faithful match? Ask a fluent speaker to check it.</li>
              <li>Does it point clearly to free legal aid and say it is not advice?</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> AI can open the law to people who cannot pay a lawyer. But they are the least able to spot a wrong answer. Use AI to explain and translate, check every legal point, point people to real legal aid, and keep every decision with a human.
        </div>
      HTML
      starter_code: nil
    },
    15 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-law">Law</div>
          <h1 class="lc-title">Capstone: An AI Policy for Mehra & Rao</h1>
        </div>
        <p class="lc-lead">It is now September 2026. Adv. Kavita Mehra wants Mehra &amp; Rao's AI rules ready by the end of the year. In this capstone you will build the full <strong>AI policy pack</strong> with her: a set of five short documents that work together. They are a risk review, the policy, client disclosure wording, a training plan and a tool vetting checklist. Each part uses what you learned in this course. At the end you will build the same pack for a firm or legal team you know. This is general education, not legal advice.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="The AI policy pack has five parts, each with an owner: risk review (Kavita), AI policy (Kavita), client wording (Kavita), training plan (Sameer) and tool checklist (Pooja). All five go to the partners for approval in December 2026. Then staff are trained, the policy goes live, and it is reviewed every 6 months.">
            <defs><marker id="le15a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="20" y="24" text-anchor="start" fill="#c4b5fd" font-weight="700">The Mehra &amp; Rao AI policy pack (made up)</text>
              <rect x="16" y="38" width="132" height="62" rx="8" fill="#27274e" stroke="#ec4899"/><text x="82" y="62" font-weight="700">1 Risk review</text><text x="82" y="86" font-size="12" fill="#9b99b8">Owner: Kavita</text>
              <rect x="168" y="38" width="132" height="62" rx="8" fill="#27274e" stroke="#8b5cf6"/><text x="234" y="62" font-weight="700">2 AI policy</text><text x="234" y="86" font-size="12" fill="#9b99b8">Owner: Kavita</text>
              <rect x="320" y="38" width="132" height="62" rx="8" fill="#27274e" stroke="#3b82f6"/><text x="386" y="62" font-weight="700">3 Client wording</text><text x="386" y="86" font-size="12" fill="#9b99b8">Owner: Kavita</text>
              <rect x="472" y="38" width="132" height="62" rx="8" fill="#27274e" stroke="#f59e0b"/><text x="538" y="62" font-weight="700">4 Training plan</text><text x="538" y="86" font-size="12" fill="#9b99b8">Owner: Sameer</text>
              <rect x="624" y="38" width="132" height="62" rx="8" fill="#27274e" stroke="#22d3ee"/><text x="690" y="62" font-weight="700">5 Tool checklist</text><text x="690" y="86" font-size="12" fill="#9b99b8">Owner: Pooja</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#le15a)">
                <line x1="82" y1="102" x2="300" y2="146"/><line x1="234" y1="102" x2="340" y2="144"/><line x1="386" y1="102" x2="386" y2="142"/><line x1="538" y1="102" x2="432" y2="144"/><line x1="690" y1="102" x2="472" y2="146"/>
              </g>
              <rect x="256" y="148" width="260" height="46" rx="8" fill="#1f1f44" stroke="#10b981"/><text x="386" y="168" fill="#6ee7b7" font-weight="700">Partners approve</text><text x="386" y="186" font-size="12" fill="#9b99b8">December 2026</text>
              <line x1="386" y1="196" x2="386" y2="220" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#le15a)"/>
              <rect x="40" y="224" width="200" height="52" rx="8" fill="#27274e" stroke="#10b981"/><text x="140" y="246" font-weight="700">Train everyone</text><text x="140" y="265" font-size="12" fill="#9b99b8">Before tool access</text>
              <rect x="286" y="224" width="200" height="52" rx="8" fill="#27274e" stroke="#10b981"/><text x="386" y="246" font-weight="700">Go live</text><text x="386" y="265" font-size="12" fill="#9b99b8">Approved tools only</text>
              <rect x="532" y="224" width="200" height="52" rx="8" fill="#27274e" stroke="#10b981"/><text x="632" y="246" font-weight="700">Review</text><text x="632" y="265" font-size="12" fill="#9b99b8">Every 6 months</text>
              <line x1="242" y1="250" x2="282" y2="250" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#le15a)"/>
              <line x1="488" y1="250" x2="528" y2="250" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#le15a)"/>
            </g>
          </svg>
          <figcaption>Five short documents, each with an owner. The partners approve them together, and the firm reviews them twice a year.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Part 1: the risk review</h3>
          <p>A <strong>risk register</strong> is a table of what could go wrong, how bad it would be, and the control (the rule or step that reduces the risk). Kavita starts with the two near misses and the tools staff really use. All the details are made up.</p>
          <table class="lc-table">
            <thead><tr><th>Risk</th><th>Seen where</th><th>Level</th><th>Control in the pack</th></tr></thead>
            <tbody>
              <tr><td>Client data in a free public AI tool</td><td>Near miss 1: the Konkan Cold Chain SPA, February 2026</td><td>High</td><td>Approved tools only. Never-paste list. Personal accounts banned for firm work.</td></tr>
              <tr><td>Fake or wrong citations filed in court</td><td>Near miss 2: LedgerLite v. Orbit Retail submissions, April 2026</td><td>High</td><td>Every citation opened at the source. A named lawyer signs off.</td></tr>
              <tr><td>Client meetings on an unvetted app</td><td>The phone transcription app</td><td>Medium</td><td>Banned until vetted with the tool checklist.</td></tr>
              <tr><td>Machine translation of client documents</td><td>Free online translation for Marathi and Hindi papers</td><td>Medium</td><td>Approved tool only. A fluent person checks every translation.</td></tr>
              <tr><td>Client files sent by WhatsApp and then copied into AI</td><td>Clients send documents by WhatsApp</td><td>Medium</td><td>Save to OneDrive first. Same never-paste rules apply.</td></tr>
              <tr><td>Unfair billing for AI work</td><td>Time spent fixing the fake citations</td><td>Medium</td><td>Bill actual time only. Never bill for fixing AI errors or learning a tool.</td></tr>
              <tr><td>AI deepfakes or promotional posts</td><td>BCI circular on social media, July 2026</td><td>Low</td><td>Red use in the policy. No client information online.</td></tr>
            </tbody>
          </table>
          <p>The level is the firm's judgement, not a fact. Partners should agree on it together.</p>
        </div>
        <div class="lc-card">
          <h3>Part 2 and Part 3: the policy and the client wording</h3>
          <p>The full policy is about three pages. Staff also get a one-page summary to keep at their desk.</p>
          <pre><code>MEHRA &amp; RAO ASSOCIATES: AI USE POLICY, ONE-PAGE SUMMARY (made up)
        Applies to: all partners, lawyers, paralegals, interns and staff,
        on any device, from 1 January 2027.

        1. Use only approved tools with a firm login. Today: [the business
           AI assistant]. No personal or free public AI tools for firm work.
        2. Never paste: client or party names, IDs, prices, salaries,
           strategy, or whole documents. Redact first (use placeholders).
        3. Green uses are allowed. Amber uses need the matter partner's
           email approval, saved to the file. Red uses are banned.
        4. Open every citation at the source (SCC Online, Manupatra,
           Indian Kanoon, India Code). No exceptions.
        5. A named lawyer checks and signs off all AI-assisted work.
        6. Bill actual time only. Never bill for learning a tool or
           fixing an AI error.
        7. Follow court rules on AI disclosure. Ask the partner if unsure.
        8. Report any incident to Kavita the same working day. No blame
           for reporting. Hiding an incident breaks this policy.
        Owner: Adv. Kavita Mehra. Next review: [June 2027].</code></pre>
          <p>Clients should also hear about AI in plain words. Here is a draft clause for the firm's engagement letter (the letter that sets the terms of the work).</p>
          <pre><code>Use of AI tools (draft wording, to be approved by the partners)
        We may use approved AI tools to help with tasks such as first
        drafts, summaries and research. These tools work under contracts
        that keep your information confidential. They do not use your
        information to train their models. A lawyer at the firm checks
        all AI-assisted work and remains responsible for it. We bill only
        for actual time spent on your matter. Please tell us if you do not
        want us to use AI tools on your work.</code></pre>
          <p>A general clause is a start, not the end. If a task needs something new, such as recording a meeting, ask the client specifically. Every promise in the clause must be true. Check it against the signed vendor contract.</p>
        </div>
        <div class="lc-card">
          <h3>Part 4 and Part 5: training and tool vetting</h3>
          <table class="lc-table">
            <thead><tr><th>Who</th><th>Training</th><th>When</th></tr></thead>
            <tbody>
              <tr><td>Everyone, including interns</td><td>60 minutes: the policy, the never-paste list, the two near misses, how to report</td><td>Before tool access, then yearly</td></tr>
              <tr><td>Lawyers</td><td>Citation checking at the source, supervision, billing and court disclosure</td><td>December 2026</td></tr>
              <tr><td>Pooja and support staff</td><td>Admin settings, adding and removing users, the incident log</td><td>December 2026</td></tr>
              <tr><td>Partners</td><td>Approving Amber uses, handling incidents, what to tell clients</td><td>December 2026</td></tr>
            </tbody>
          </table>
          <p>Each person signs that they read the policy. Sameer leads the lawyer session. He tells the story of his own near miss, which makes the rule easy to remember.</p>
          <pre><code>TOOL VETTING CHECKLIST (a tool must pass every must-have)
        Must-haves
        [ ] No training on firm data by default, in the contract
        [ ] Signed data processing agreement (DPA): confidentiality,
            breach notice time, deletion when we leave
        [ ] Admin can add and remove users; firm logins only
        [ ] We know where data is stored and processed
        Also check
        [ ] Retention period for chats and files; admin can delete
        [ ] Outside security checks (for example ISO/IEC 27001, SOC 2)
        [ ] Sub-processor list
        [ ] Client contracts that require data to stay in India
        [ ] Research tools: every answer links to a real source
        Decision: approve / negotiate / reject   Review date: [ ]</code></pre>
          <p>Some points need expert help. Ask a data protection lawyer how the DPDP Act and Rules apply to the firm, and check the current dates. Ask the partners to decide the risk levels and the retention periods.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: build and launch the pack</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put Kavita's steps for the AI policy pack in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Ask every person which AI tools they use, and list what data those tools touch</li>
              <li data-order="2">Write the risk review, starting from the two near misses</li>
              <li data-order="3">Vet each tool with the checklist, and keep only the ones that pass</li>
              <li data-order="4">Draft the policy, the client wording and the training plan</li>
              <li data-order="5">The partners review and approve the whole pack</li>
              <li data-order="6">Train everyone and collect signed acknowledgements before giving tool access</li>
              <li data-order="7">Go live, log incidents, and review the pack every 6 months</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Build a first draft of the AI policy pack for a firm or legal team you know. Use no real client data.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are helping a law firm in India write its first AI policy pack. Write in plain English. This is not legal advice.

        Firm: [a 10-lawyer firm in Rajasthan doing property, family and small-business work].
        Tools staff use now: [free AI chat apps on phones, WhatsApp, Microsoft 365, a paid research database].
        Past incidents: [a junior pasted a client's sale deed into a free chat tool; a draft reply had one citation nobody could find].

        Create five short parts:
        1. Risk review: a table of 6 risks | where seen | level (high, medium, low) | control.
        2. AI policy summary: 8 numbered rules on one page.
        3. Client wording: a 100-word engagement letter clause about AI use.
        4. Training plan: a table of who | what | when.
        5. Tool vetting checklist: must-haves and other checks.

        Rules: do not quote any law, rule or case. Do not invent facts about real tools. Mark anything the partners must decide with [partners to decide]. End with 5 questions for a data protection lawyer.</pre>
            <ul class="ai-try-checks">
              <li>Does each control answer a real risk from the review?</li>
              <li>Is every promise in the client wording true for the tools the firm actually uses?</li>
              <li>Did it quote a law or case anyway? Remove it or check it at the source.</li>
              <li>Does the policy include a citation check at the source and same-day incident reporting?</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A good AI policy pack is short, owned and tested against real mistakes. AI can draft every part of it. The partners decide the rules, check every promise, train the people and stay responsible for how the firm uses AI.
        </div>
      HTML
      starter_code: nil
    }
  }.freeze
end

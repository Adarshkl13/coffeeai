module AiLegalResearchContent
  # Units (sidebar dividers): 1–4 Research Basics · 5–9 Finding the Law · 10–14 Checking and Writing · 15 Capstone
  # Widgets: sequence, sorter, stepper. No code editor: each Try It is an ai-try prompt box.
  LESSONS = {
    1 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-law">Law</div>
          <h1 class="lc-title">How Legal Research Works</h1>
        </div>
        <p class="lc-lead">Legal research means finding the law that applies to a problem, and checking that it is correct and current. Before AI can help you, you need a map. You need to know where law comes from, which courts decide what, and which judgments a court must follow. In this lesson you will learn the main sources of law in India, the idea of precedent and the court hierarchy. You will then use them to plan research for a real-looking client problem. This course is general education. It is not legal advice.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="Left: the court hierarchy in India. The Supreme Court binds all courts. High Courts bind the courts in their state. District and lower courts follow the courts above them. Right: the sources of law from the highest: the Constitution, statutes, rules and notifications, and case law that interprets them.">
            <defs><marker id="lr1a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="200" y="24" font-weight="700" fill="#c4b5fd">Court hierarchy</text>
              <rect x="80" y="38" width="240" height="52" rx="8" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="200" y="59" font-weight="700">Supreme Court of India</text>
              <text x="200" y="78" font-size="11" fill="#9b99b8">Article 141: binds all courts</text>
              <rect x="80" y="122" width="240" height="52" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="200" y="143" font-weight="700">High Courts</text>
              <text x="200" y="162" font-size="11" fill="#9b99b8">bind the courts in their state</text>
              <rect x="80" y="206" width="240" height="52" rx="8" fill="#1f1f44" stroke="#10b981"/>
              <text x="200" y="227" font-weight="700">District and lower courts</text>
              <text x="200" y="246" font-size="11" fill="#9b99b8">follow the courts above</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#lr1a)">
                <line x1="200" y1="92" x2="200" y2="118"/>
                <line x1="200" y1="176" x2="200" y2="202"/>
              </g>
              <text x="200" y="284" font-size="11" fill="#9b99b8">Tribunals also follow higher court rulings</text>
              <line x1="385" y1="30" x2="385" y2="275" stroke="#4b4a78" stroke-dasharray="4 4"/>
              <text x="580" y="24" font-weight="700" fill="#fcd34d">Sources of law</text>
              <rect x="425" y="38" width="310" height="44" rx="8" fill="#27274e" stroke="#f59e0b"/>
              <text x="580" y="65">Constitution: the highest law</text>
              <rect x="425" y="96" width="310" height="44" rx="8" fill="#27274e" stroke="#f59e0b"/>
              <text x="580" y="123">Statutes: Acts of Parliament and states</text>
              <rect x="425" y="154" width="310" height="44" rx="8" fill="#27274e" stroke="#f59e0b"/>
              <text x="580" y="181">Rules and notifications under Acts</text>
              <rect x="425" y="212" width="310" height="44" rx="8" fill="#27274e" stroke="#22d3ee"/>
              <text x="580" y="239">Case law: judgments that apply them</text>
              <text x="580" y="284" font-size="11" fill="#9b99b8">If two sources conflict, the higher one wins</text>
            </g>
          </svg>
          <figcaption>Two maps you need for every research task: which court's decisions bind, and which source of law sits above which.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The main sources of law in India</h3>
          <table class="lc-table">
            <thead><tr><th>Source</th><th>What it is</th><th>Example</th><th>Where to find the official text</th></tr></thead>
            <tbody>
              <tr><td><strong>Constitution</strong></td><td>The highest law. Every other law must follow it.</td><td>Article 19(1)(g): the right to carry on any trade or business</td><td>India Code, government websites</td></tr>
              <tr><td><strong>Statutes</strong></td><td>Acts passed by Parliament or a state legislature</td><td>Indian Contract Act, 1872; Sale of Goods Act, 1930</td><td>India Code (indiacode.nic.in)</td></tr>
              <tr><td><strong>Rules, regulations and notifications</strong></td><td>Detailed law made by the government or a regulator under an Act (also called subordinate legislation)</td><td>Rules made under the Information Technology Act, 2000</td><td>The Gazette of India, ministry and regulator websites</td></tr>
              <tr><td><strong>Case law</strong></td><td>Judgments of courts. They explain what the words of the law mean and apply them to facts.</td><td>Supreme Court judgments on section 74 of the Contract Act (liquidated damages)</td><td>Court websites, SCC Online, Manupatra, Indian Kanoon</td></tr>
            </tbody>
          </table>
          <p>A contract is not "law" in this sense. But the courts enforce it between the parties. So in a contract dispute you read three things: the contract, the statute and the case law.</p>
        </div>
        <div class="lc-card">
          <h3>Precedent: which judgments a court must follow</h3>
          <p><strong>Precedent</strong> means that courts follow earlier decisions of higher courts on the same point of law. This keeps the law steady and fair.</p>
          <ul class="lc-list">
            <li><strong>Supreme Court:</strong> Article 141 of the Constitution says the law it declares binds all courts in India.</li>
            <li><strong>High Courts:</strong> a High Court's decision binds the courts below it in its own state or region. There are 25 High Courts. Some cover more than one state.</li>
            <li><strong>Other High Courts:</strong> a Bombay High Court decision does not bind a court in Rajasthan. It is only <em>persuasive</em> (a court may follow it if it agrees).</li>
            <li><strong>Bench size:</strong> a decision by a larger bench (more judges) binds a smaller bench of the same court.</li>
            <li><strong>Foreign judgments:</strong> decisions from the UK or the USA never bind Indian courts. They can only persuade.</li>
          </ul>
          <p>Only the <em>reason</em> for a decision binds, not every sentence in it. You will learn to tell these apart when you study case law later in this course.</p>
        </div>
        <div class="lc-card">
          <h3>Worked example: Pooja's research map</h3>
          <p>Pooja is a paralegal at Mehra &amp; Rao Associates, a made-up Indian law firm. Their client is Rangrez Crafts, a made-up handicrafts brand in Rajasthan. Its owner, Neha, paid a ₹4,00,000 advance to a made-up supplier in Uttar Pradesh, Shiva Metalworks, for 800 brass lamps for Diwali. The lamps came three weeks late, and 240 were missing. The contract has a liquidated damages clause (a fixed sum payable for delay). Before she opens any AI tool, Pooja writes this map:</p>
          <pre><code>Research map: Rangrez Crafts v. Shiva Metalworks (made-up case)
        1. Contract:   clause 3 (delivery date), clause 9 (liquidated
                       damages), clause 15 (arbitration, seat in Rajasthan)
        2. Statutes:   Indian Contract Act 1872, sections 55, 73, 74
                       Sale of Goods Act 1930 (short delivery)
        3. Case law:   Supreme Court first (binds everyone)
                       then Rajasthan High Court (the seat is in Rajasthan)
                       other High Courts only as persuasive
        4. Check:      current text of each section, and whether
                       each judgment is still good law</code></pre>
          <p>The map tells her what to search for and in what order. It also tells her how much weight each result will carry. Adv. Sameer Rao, the associate, will review her map before she starts.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: binding, persuasive or not law?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Imagine Rangrez's dispute is heard in Rajasthan. Sort each source by how much weight it has there.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="bind" data-label="Binding"></div>
              <div data-sorter-target="bucket" data-bucket="pers" data-label="Persuasive only"></div>
              <div data-sorter-target="bucket" data-bucket="not" data-label="Not a source of law"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="bind" data-why="Article 141 of the Constitution makes the law declared by the Supreme Court binding on all courts in India.">A Supreme Court judgment on section 74 of the Contract Act</li>
              <li data-bucket="bind" data-why="A High Court's decisions bind the courts below it in its own state.">A Rajasthan High Court judgment on damages for late delivery</li>
              <li data-bucket="pers" data-why="Another High Court's decision does not bind courts in Rajasthan. A court may still follow it if it agrees.">A Bombay High Court judgment on liquidated damages</li>
              <li data-bucket="pers" data-why="Foreign judgments never bind Indian courts. They can only help as persuasive ideas.">A UK court judgment on penalty clauses</li>
              <li data-bucket="bind" data-why="A statute passed by Parliament is binding law.">Section 73 of the Indian Contract Act, 1872</li>
              <li data-bucket="not" data-why="A blog post is commentary. It can point you to sources, but you must read those sources yourself.">A law firm's blog post about liquidated damages</li>
              <li data-bucket="not" data-why="An AI summary is not law and may be wrong. Read the actual section and judgments.">An AI chatbot's summary of section 74</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to build a research map for a legal question. Then compare it with Pooja's map above.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a legal research trainer in India. This is general education, not legal advice.

        Build a research map for this question: [A small business in Rajasthan paid a supplier a large advance for goods. The goods came late and some were missing. The written contract has a fixed damages clause for delay and an arbitration clause with the seat in Rajasthan. What can the buyer claim?]

        Give a table with these columns:
        - Source type (contract, Constitution, statute, rules, case law)
        - What to look for (for example, the Act and section numbers)
        - Why it matters for this question
        - Binding or persuasive, and why (based on the court hierarchy)
        - Where to find the official text

        Rules:
        - Do not name any case. Describe the kind of judgment to look for instead.
        - Name only Acts and sections you are sure of. Mark each one "check the current text on India Code".
        - End with 3 facts I should confirm with the client before research starts.

        Use simple English and short sentences.</pre>
            <ul class="ai-try-checks">
              <li>The map covers the contract, statutes and case law, in a sensible order.</li>
              <li>Supreme Court judgments are marked binding, and other High Courts as persuasive.</li>
              <li>No case names appear. If any do, treat them as unverified.</li>
              <li>Open India Code and confirm that each section named is real and says what AI claims.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Good research starts with a map, not a search box. Know the sources of law and which courts bind which. Then you can judge every result, from AI or from a database, by how much weight it really carries.
        </div>
      HTML
      starter_code: nil
    },
    2 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-law">Law</div>
          <h1 class="lc-title">Where AI Helps in Legal Research</h1>
        </div>
        <p class="lc-lead">AI assistants can save hours in legal research. They can sort messy facts, spot issues, suggest search terms, summarise long documents and write first drafts. But they can also invent cases, quote old law and mix up the law of different countries. In this lesson you will see where AI helps at each step of research, and what you must always check yourself. The lawyer, not the AI, is responsible for the final work.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 256" role="img" aria-label="Five steps of legal research: gather facts, spot issues, find the law, read sources and draft the memo. For each step, AI can help with tasks such as timelines, search terms and summaries. Below, you check the facts, search the databases yourself, read the full judgments and check every citation.">
            <defs><marker id="lr2a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="16" y="12" width="136" height="36" rx="8" fill="#1f1f44" stroke="#3b82f6"/><text x="84" y="35" font-weight="700">Gather facts</text>
              <rect x="164" y="12" width="136" height="36" rx="8" fill="#1f1f44" stroke="#8b5cf6"/><text x="232" y="35" font-weight="700">Spot issues</text>
              <rect x="312" y="12" width="136" height="36" rx="8" fill="#1f1f44" stroke="#22d3ee"/><text x="380" y="35" font-weight="700">Find the law</text>
              <rect x="460" y="12" width="136" height="36" rx="8" fill="#1f1f44" stroke="#10b981"/><text x="528" y="35" font-weight="700">Read sources</text>
              <rect x="608" y="12" width="136" height="36" rx="8" fill="#1f1f44" stroke="#ec4899"/><text x="676" y="35" font-weight="700">Draft memo</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#lr2a)">
                <line x1="152" y1="30" x2="161" y2="30"/><line x1="300" y1="30" x2="309" y2="30"/><line x1="448" y1="30" x2="457" y2="30"/><line x1="596" y1="30" x2="605" y2="30"/>
              </g>
              <text x="16" y="72" text-anchor="start" font-size="12" fill="#c4b5fd">AI can help</text>
              <g font-size="11">
                <rect x="16" y="80" width="136" height="54" rx="8" fill="#27274e"/><text x="84" y="103">build a timeline</text><text x="84" y="121">list missing facts</text>
                <rect x="164" y="80" width="136" height="54" rx="8" fill="#27274e"/><text x="232" y="103">list possible issues</text><text x="232" y="121">suggest questions</text>
                <rect x="312" y="80" width="136" height="54" rx="8" fill="#27274e"/><text x="380" y="103">search terms</text><text x="380" y="121">synonyms, sections</text>
                <rect x="460" y="80" width="136" height="54" rx="8" fill="#27274e"/><text x="528" y="103">summarise</text><text x="528" y="121">find key paragraphs</text>
                <rect x="608" y="80" width="136" height="54" rx="8" fill="#27274e"/><text x="676" y="103">first draft</text><text x="676" y="121">plain language</text>
              </g>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#lr2a)">
                <line x1="84" y1="137" x2="84" y2="166"/><line x1="232" y1="137" x2="232" y2="166"/><line x1="380" y1="137" x2="380" y2="166"/><line x1="528" y1="137" x2="528" y2="166"/><line x1="676" y1="137" x2="676" y2="166"/>
              </g>
              <text x="16" y="160" text-anchor="start" font-size="12" fill="#fcd34d">You check</text>
              <g font-size="11">
                <rect x="16" y="170" width="136" height="54" rx="8" fill="#27274e" stroke="#f59e0b"/><text x="84" y="193">against documents</text><text x="84" y="211">and the client</text>
                <rect x="164" y="170" width="136" height="54" rx="8" fill="#27274e" stroke="#f59e0b"/><text x="232" y="193">nothing missed?</text><text x="232" y="211">right country's law?</text>
                <rect x="312" y="170" width="136" height="54" rx="8" fill="#27274e" stroke="#f59e0b"/><text x="380" y="193">search yourself</text><text x="380" y="211">in a real database</text>
                <rect x="460" y="170" width="136" height="54" rx="8" fill="#27274e" stroke="#f59e0b"/><text x="528" y="193">read the full</text><text x="528" y="211">judgment</text>
                <rect x="608" y="170" width="136" height="54" rx="8" fill="#27274e" stroke="#f59e0b"/><text x="676" y="193">every citation</text><text x="676" y="211">every conclusion</text>
              </g>
              <text x="380" y="248" font-size="11" fill="#9b99b8">AI speeds up the work at each step. A person checks each step before moving on.</text>
            </g>
          </svg>
          <figcaption>AI is a helper at every step of research. It is never the final source of the law.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Good jobs for AI, and what can go wrong</h3>
          <table class="lc-table">
            <thead><tr><th>Task</th><th>How AI helps</th><th>What can go wrong</th></tr></thead>
            <tbody>
              <tr><td><strong>Issue spotting</strong> (finding the legal questions in a set of facts)</td><td>Lists possible issues you may have missed</td><td>Misses an issue, or adds issues that do not fit Indian law</td></tr>
              <tr><td><strong>Search terms</strong></td><td>Suggests keywords, synonyms and likely sections, such as "liquidated damages", "penalty", "genuine pre-estimate"</td><td>Suggests section numbers that are wrong or old</td></tr>
              <tr><td><strong>Summaries</strong></td><td>Turns a 60-page judgment or contract into a short note</td><td>States the wrong holding (the court's decision), or mixes a dissent with the majority view</td></tr>
              <tr><td><strong>First drafts</strong></td><td>Writes a first version of a research note or email</td><td>Sounds confident but includes made-up cases or quotes</td></tr>
              <tr><td><strong>Explaining</strong></td><td>Explains a hard legal idea in simple words</td><td>Gives the rule from another country, such as the UK or USA</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>The five big risks</h3>
          <ul class="lc-list">
            <li><strong>Fake cases:</strong> AI can invent case names, citations and quotes that look real. The next lesson covers this in detail.</li>
            <li><strong>Old law:</strong> AI may quote a section that was amended or replaced. For example, it may cite the old Indian Penal Code for events after 1 July 2024.</li>
            <li><strong>Wrong country:</strong> much of an AI model's training text is from the USA and UK. It may give you their law without saying so.</li>
            <li><strong>Wrong summary:</strong> a summary can miss the one condition that changes the answer.</li>
            <li><strong>Confidentiality:</strong> lawyers must keep client information secret. Do not paste client names, documents or private facts into a public AI tool. Use tools your firm has approved, and remove names and details first.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Weak prompt and better prompt</h3>
          <p>Adv. Sameer Rao wants help with the made-up Rangrez Crafts matter. He does not use the client's name.</p>
          <pre><code>Weak prompt:   What cases say my client can get damages for late
                       delivery?

        Better prompt: You are helping an Indian lawyer plan research.
                       Facts (names removed): a buyer paid a supplier an
                       advance of Rs 4,00,000 for 800 lamps. Delivery was
                       3 weeks late and 240 lamps were short. The contract
                       has a clause fixing damages at 2% of the price per
                       week of delay.
                       1. List the legal issues under Indian law.
                       2. For each issue, name the likely statute sections.
                       3. Give 5 search terms for each issue.
                       Do not name any case. Mark anything you are unsure
                       of as "check".</code></pre>
          <p>The weak prompt invites the AI to invent cases. The better prompt asks for things AI does well: issues, sections and search terms. Sameer then runs the searches himself in a legal database.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: Sameer's AI session</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Prompt">Sameer pastes the "better prompt" above into his firm's approved AI assistant. No client names are included.</li>
              <li data-kind="answer" data-label="AI reply">The AI lists four issues: liquidated damages (section 74), general damages (section 73), time of delivery (section 55) and short delivery. It gives useful search terms, such as "genuine pre-estimate" and "time is of the essence". It also adds: "See Bharat Brass Works v. Deepmala Traders (2017)". (That name is made up for this lesson.)</li>
              <li data-kind="tool" data-label="Database">Sameer searches for that case name in SCC Online and Indian Kanoon.</li>
              <li data-kind="result" data-label="No match">Neither database has any case with that name. The AI invented it.</li>
              <li data-kind="warn" data-label="Catch it">He does not use the case anywhere. He notes in his research log: "AI suggested a case that does not exist."</li>
              <li data-kind="check" data-label="Real search">He runs the AI's search terms himself. He finds real Supreme Court judgments on section 74, and reads them in full.</li>
              <li data-kind="check" data-label="Section text">He opens sections 55, 73 and 74 on India Code to confirm the current wording.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Use AI for what it does well: issue spotting and search terms. Keep the facts anonymous.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a research assistant helping an Indian lawyer plan research. This is general education, not legal advice.

        Facts (names removed): [A buyer in Rajasthan paid a supplier an advance of Rs 4,00,000 for 800 brass lamps for the Diwali season. The contract said time of delivery is essential. The supplier delivered 560 lamps three weeks late. The buyer accepted them and bought 240 lamps elsewhere at a higher price. The contract has an arbitration clause.]

        Tasks:
        1. List the legal issues under Indian law, most important first.
        2. For each issue, give the statute and section you think applies. Add "check on India Code" after each.
        3. Give 5 search terms for each issue that I can use in a legal database.
        4. List 3 facts that are missing and could change the answer.

        Rules: Do not name or cite any case. Do not give a final answer on who wins. Use simple English and a table where it helps.</pre>
            <ul class="ai-try-checks">
              <li>The issues fit Indian law (for example, the Indian Contract Act), not UK or US law.</li>
              <li>Each section named is marked for checking. Open India Code and confirm them.</li>
              <li>No case names appear. If any do, treat them as possibly fake.</li>
              <li>The missing facts are useful questions for the client.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Give AI the jobs where a mistake is easy to spot, such as issues, search terms and summaries you can check. Never let it be the source of the law itself. You find the law yourself, at the source.
        </div>
      HTML
      starter_code: nil
    },
    3 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-law">Law</div>
          <h1 class="lc-title">The Danger of Fake Citations</h1>
        </div>
        <p class="lc-lead">A citation is the reference that tells a reader where to find a judgment, for example the case name, year, law report and page. AI tools can produce citations that look perfect but point to cases that do not exist. Lawyers in several countries have been punished for filing them, and Indian courts have found them in real orders. In this lesson you will learn why AI invents cases, what has happened in real courts, and the one rule that keeps you safe.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 290" role="img" aria-label="Top row: you ask for cases, the AI predicts likely text without looking anything up, and it produces a citation that looks real. Middle row: before use, three checks: does it exist, does it say that, is it still good law. Bottom: if all answers are yes you may cite it; if any answer is no, remove it.">
            <defs><marker id="lr3a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="15" y="20" width="220" height="54" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="125" y="43" font-weight="700">You ask for cases</text>
              <text x="125" y="62" font-size="11" fill="#9b99b8">"cases on section 74"</text>
              <rect x="270" y="20" width="220" height="54" rx="8" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="380" y="43" font-weight="700">AI predicts likely text</text>
              <text x="380" y="62" font-size="11" fill="#9b99b8">it does not look anything up</text>
              <rect x="525" y="20" width="220" height="54" rx="8" fill="#1f1f44" stroke="#ec4899"/>
              <text x="635" y="43" font-weight="700">A citation that looks real</text>
              <text x="635" y="62" font-size="11" fill="#9b99b8">name, year, report, page</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#lr3a)">
                <line x1="235" y1="47" x2="266" y2="47"/>
                <line x1="490" y1="47" x2="521" y2="47"/>
                <path d="M635,76 L635,104 L125,104 L125,124"/>
                <line x1="235" y1="155" x2="266" y2="155"/>
                <line x1="490" y1="155" x2="521" y2="155"/>
                <path d="M380,184 L250,220"/>
                <path d="M380,184 L510,220"/>
              </g>
              <text x="380" y="94" font-size="11" fill="#fcd34d">Before you use it, check at the source:</text>
              <rect x="15" y="128" width="220" height="54" rx="8" fill="#27274e" stroke="#f59e0b"/>
              <text x="125" y="151" font-weight="700">1. Does it exist?</text>
              <text x="125" y="170" font-size="11" fill="#9b99b8">find it in a trusted database</text>
              <rect x="270" y="128" width="220" height="54" rx="8" fill="#27274e" stroke="#f59e0b"/>
              <text x="380" y="151" font-weight="700">2. Does it say that?</text>
              <text x="380" y="170" font-size="11" fill="#9b99b8">read the paragraph yourself</text>
              <rect x="525" y="128" width="220" height="54" rx="8" fill="#27274e" stroke="#f59e0b"/>
              <text x="635" y="151" font-weight="700">3. Is it still good law?</text>
              <text x="635" y="170" font-size="11" fill="#9b99b8">not overruled or changed</text>
              <rect x="140" y="224" width="220" height="44" rx="8" fill="#1f1f44" stroke="#10b981"/>
              <text x="250" y="251" fill="#6ee7b7">All yes: you may cite it</text>
              <rect x="400" y="224" width="220" height="44" rx="8" fill="#1f1f44" stroke="#ef4444"/>
              <text x="510" y="251" fill="#fca5a5">Any no: remove it</text>
            </g>
          </svg>
          <figcaption>AI writes what a citation usually looks like. Only a check at the source tells you if it is real.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Why AI invents cases</h3>
          <p>A general AI assistant does not search a law library when it answers. It predicts the most likely next words, based on patterns in its training text. It has seen thousands of citations, so it knows their shape very well.</p>
          <ul class="lc-list">
            <li>It can write a believable party name, a year, a law report and a page number.</li>
            <li>It can attach a real case name to the wrong citation, or a real citation to the wrong point of law.</li>
            <li>It can make up a quote and a paragraph number that sound like a judge.</li>
            <li>If you ask "Is this case real?", it may simply say yes. Asking the same tool again is not a check.</li>
          </ul>
          <p>Legal research tools that search a real database and show their sources make this less likely. But they can still get things wrong. So the rule below applies to every tool.</p>
        </div>
        <div class="lc-card">
          <h3>What has happened in real courts</h3>
          <table class="lc-table">
            <thead><tr><th>Where and when</th><th>What happened (in general terms)</th></tr></thead>
            <tbody>
              <tr><td><strong>USA, 2023</strong>: <em>Mata v. Avianca, Inc.</em>, a federal court in New York</td><td>Lawyers filed a brief that cited six cases made up by ChatGPT. When asked, the chatbot had said the cases were real. The judge found the lawyers acted in bad faith. He fined them and their firm US$5,000. He also ordered them to write to the judges falsely named as authors.</td></tr>
              <tr><td><strong>India, 2026</strong>: the Supreme Court</td><td>In a property case from Andhra Pradesh, a trial court had relied on four "judgments" that did not exist. They had come from an AI tool. The Supreme Court said relying on fake AI-generated judgments would be misconduct with legal consequences. It asked the Attorney General, the Solicitor General and the Bar Council of India to help examine the problem.</td></tr>
              <tr><td><strong>India, 2025</strong>: the Kerala High Court</td><td>It issued a policy for its district courts. AI may only assist. It must not be used to decide cases or write findings, and its output, including citations, must be checked.</td></tr>
            </tbody>
          </table>
          <p>Many more cases have been reported since, in several countries. Details and penalties vary, so read the actual orders before you quote them. The lesson is the same everywhere: the person who files the document is responsible for every citation in it.</p>
        </div>
        <div class="lc-card">
          <h3>The verification rule</h3>
          <p><strong>No citation goes into any document until a person has found it at a trusted source, read the relevant part, and recorded the check.</strong></p>
          <p>Here is how Pooja checks an AI draft for the made-up Rangrez Crafts matter. The first citation below is <strong>made up for this lesson</strong>. It is not a real case.</p>
          <pre><code>AI draft:  "In Harbour Lamps Pvt Ltd v. Kesar Exports (2018) 9 SCC 412,
                    the Supreme Court held that a buyer need not prove any loss
                    to recover liquidated damages."        [MADE-UP EXAMPLE]

        Pooja's log:
        Case name found in SCC Online?     No
        Citation (2018) 9 SCC 412 opens?   Yes, but a different case
        Quote found in the judgment?       No
        Decision:                          Remove. Tell Adv. Sameer Rao.</code></pre>
          <p>Notice the trap in this made-up example. The citation opens a page in a real law report, but that page is a different case about something else. This happens with real AI errors too. So you must check the name, the citation <em>and</em> the words together.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: check a citation in the right order</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">An AI draft cites a Supreme Court judgment on liquidated damages. Put Pooja's checks in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Copy the case name, citation, and any quote or paragraph number from the draft</li>
              <li data-order="2">Search for the case in a trusted database or on the court's website</li>
              <li data-order="3">Confirm that the name, court, year and citation all match one real judgment</li>
              <li data-order="4">Open the paragraph and confirm that it says what the draft claims</li>
              <li data-order="5">Check that the judgment has not been overruled or changed by a later law</li>
              <li data-order="6">Record the result in the verification log, and remove or fix anything that failed</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to turn a draft into a verification checklist. It should list what to check, not tell you what is real. In the sample text, the second case is made up for practice.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a careful legal research assistant in India. This is general education, not legal advice.

        Below is a paragraph from a draft research note. [Paste your own paragraph here, or use this sample:]
        "Under section 74 of the Indian Contract Act, 1872, the court awards reasonable compensation up to the amount named in the contract: Kailash Nath Associates v. Delhi Development Authority, (2015) 4 SCC 136. A buyer never needs to prove any loss: Harbour Lamps Pvt Ltd v. Kesar Exports, (2018) 9 SCC 412, para 22."
        (Harbour Lamps is a made-up case for practice.)

        Tasks:
        1. List every citation, statute section and quote in a table with these columns: Item, Exact text in the draft, What I must check, Where to check it (official or trusted source).
        2. Flag any statement that sounds too absolute (for example "never" or "always").
        3. Do NOT tell me whether any case is real or what it says. You cannot confirm that. Tell me to check each one at the source.

        Use simple English.</pre>
            <ul class="ai-try-checks">
              <li>Every citation and section is in the table, with a clear check for each.</li>
              <li>The AI does not claim that a case is real or fake. If it does, ignore that claim.</li>
              <li>The absolute statement ("never needs to prove any loss") is flagged.</li>
              <li>Now check the first case yourself in a database. The second one is made up, so you should not find it.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A citation that looks right proves nothing. Before any case goes into your work, find it at a trusted source, read the paragraph and log the check. The court will hold you responsible, not the AI.
        </div>
      HTML
      starter_code: nil
    },
    4 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-law">Law</div>
          <h1 class="lc-title">Framing the Legal Question</h1>
        </div>
        <p class="lc-lead">Most research goes wrong at the start, with a vague question. "Can my client get money back?" is too wide to research well. In this lesson you will learn to turn a client's story into clear facts, legal issues and a precise research question. You will also learn IRAC (Issue, Rule, Application, Conclusion), a simple way to organise legal thinking. A well-framed question also gives AI a much better prompt.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="A funnel with five layers. The client's messy story becomes a dated timeline of facts, then the legal issues, then the jurisdiction and forum, and finally one precise question to research.">
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <polygon points="30,20 730,20 690,70 70,70" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="380" y="42" font-weight="700">The client's story</text>
              <text x="380" y="60" font-size="11" fill="#9b99b8">emails, WhatsApp messages, the contract, worries</text>
              <polygon points="72,76 688,76 648,126 112,126" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="380" y="98" font-weight="700">Facts</text>
              <text x="380" y="116" font-size="11" fill="#9b99b8">a dated timeline, with sources and gaps</text>
              <polygon points="114,132 646,132 606,182 154,182" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="380" y="154" font-weight="700">Issues</text>
              <text x="380" y="172" font-size="11" fill="#9b99b8">the legal questions the facts raise</text>
              <polygon points="156,188 604,188 564,238 196,238" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="380" y="210" font-weight="700">Jurisdiction and forum</text>
              <text x="380" y="228" font-size="11" fill="#9b99b8">which law, which court or tribunal</text>
              <polygon points="198,244 562,244 522,292 238,292" fill="#27274e" stroke="#10b981"/>
              <text x="380" y="266" font-weight="700" fill="#6ee7b7">Question presented</text>
              <text x="380" y="283" font-size="11" fill="#9b99b8">one precise question per issue</text>
            </g>
          </svg>
          <figcaption>Narrow the story step by step. Each layer makes the research question sharper.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Step 1: facts, with dates and sources</h3>
          <p>Neha, owner of the made-up Rangrez Crafts, sends Pooja a long voice note and 40 WhatsApp screenshots. Pooja turns them into a timeline. Every fact gets a date and a source. All details are made up.</p>
          <table class="lc-table">
            <thead><tr><th>Date (2026)</th><th>Fact</th><th>Source</th></tr></thead>
            <tbody>
              <tr><td>10 July</td><td>Contract for 800 brass lamps at ₹600 each (₹4,80,000). Clause 3: delivery by 31 August; "time is of the essence".</td><td>Signed contract</td></tr>
              <tr><td>12 July</td><td>Rangrez pays an advance of ₹4,00,000</td><td>Bank statement</td></tr>
              <tr><td>25 August</td><td>Supplier asks for "2-3 more weeks". Neha replies "Ok but please hurry".</td><td>WhatsApp</td></tr>
              <tr><td>21 September</td><td>560 lamps delivered, 3 weeks late. Neha accepts them and emails that she keeps her rights under clause 9.</td><td>Delivery note, email</td></tr>
              <tr><td>23 September</td><td>Rangrez buys 240 lamps elsewhere at ₹750 each</td><td>Invoice</td></tr>
            </tbody>
          </table>
          <p>Pooja also lists <strong>gaps</strong>. Did anyone agree a new delivery date in writing? What exactly does clause 9 say? Can Neha prove the profit she says she lost? AI can build a first timeline from messages. But you must check each line against the documents.</p>
        </div>
        <div class="lc-card">
          <h3>Step 2 and 3: issues, jurisdiction and forum</h3>
          <p><strong>Jurisdiction</strong> means which country's or state's law applies and which court has power to decide. <strong>Forum</strong> means where the dispute will actually be heard. Check these early, because they decide which cases carry weight.</p>
          <ul class="lc-list">
            <li><strong>Law:</strong> the contract says Indian law applies.</li>
            <li><strong>Forum:</strong> clause 15 sends disputes to arbitration (a private decision-maker chosen by the parties), with the seat in Rajasthan. So research the Arbitration and Conciliation Act, 1996 too.</li>
            <li><strong>Binding cases:</strong> Supreme Court judgments, then the Rajasthan High Court.</li>
            <li><strong>Time limit:</strong> claims must be brought within the limitation period set by law. Check the current law for the exact period.</li>
          </ul>
          <p>Now frame each issue as a precise question. A useful pattern is: <em>Under [law], can [party] [get result], when [key facts]?</em></p>
          <pre><code>Weak:    Can Neha get her money back?

        Better:  Under section 74 of the Indian Contract Act, 1872, can
                 Rangrez recover liquidated damages of 2% of the price per
                 week of delay (Rs 28,800 for 3 weeks) without proving its
                 actual loss, when it accepted the late delivery but gave
                 written notice on the same day that it kept its rights?</code></pre>
          <p>The better question names the law, the party, the result and the facts that matter. It gives you clear search terms, and it makes a far better AI prompt.</p>
        </div>
        <div class="lc-card">
          <h3>IRAC: a simple structure for legal thinking</h3>
          <table class="lc-table">
            <thead><tr><th>Part</th><th>What it means</th><th>Rangrez example (short)</th></tr></thead>
            <tbody>
              <tr><td><strong>Issue</strong></td><td>The legal question</td><td>Can Rangrez recover the fixed damages in clause 9 for the 3-week delay?</td></tr>
              <tr><td><strong>Rule</strong></td><td>The law that answers it: statute and case law</td><td>Section 74: the court awards reasonable compensation, up to the amount named in the contract. Add the Supreme Court cases you have verified.</td></tr>
              <tr><td><strong>Application</strong></td><td>Apply the rule to these facts</td><td>Clause 9 names a sum. Was it a genuine pre-estimate? Did Rangrez suffer some loss? Did the WhatsApp reply extend the date?</td></tr>
              <tr><td><strong>Conclusion</strong></td><td>The likely answer, with its limits</td><td>A cautious view, for example "likely, if Rangrez can show some loss and did not waive the delay". A lawyer makes the final call.</td></tr>
            </tbody>
          </table>
          <p>AI can help you lay out each part. But you supply the verified rule, and a lawyer decides the conclusion. This is general education, not legal advice.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: sort the IRAC parts</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">These sentences come from Pooja's notes on the made-up Rangrez matter. Sort each one into its IRAC part.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="i" data-label="Issue"></div>
              <div data-sorter-target="bucket" data-bucket="r" data-label="Rule"></div>
              <div data-sorter-target="bucket" data-bucket="a" data-label="Application"></div>
              <div data-sorter-target="bucket" data-bucket="c" data-label="Conclusion"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="i" data-why="It asks a legal question that the research must answer.">Did Neha's WhatsApp reply of 25 August extend the delivery date?</li>
              <li data-bucket="r" data-why="It states what the law says, from the statute.">Section 74 allows reasonable compensation, not more than the amount named in the contract.</li>
              <li data-bucket="a" data-why="It applies the law to Rangrez's own facts.">Rangrez paid ₹36,000 extra for replacement lamps, which shows it suffered some loss from the delay.</li>
              <li data-bucket="c" data-why="It gives the likely answer, with its limits and a next step.">Rangrez has a reasonable claim under clause 9, subject to the waiver question and a partner's review.</li>
              <li data-bucket="i" data-why="It is a legal question about the supplier's defence.">Can the supplier rely on a brass shortage when the force majeure clause does not mention it?</li>
              <li data-bucket="a" data-why="It tests a fact (the email) against the legal requirement of notice.">Neha's email on 21 September was sent on the day she accepted the late lamps.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Give AI a messy client story. Ask it to frame the research, not to answer it.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a legal research assistant helping an Indian lawyer frame a research task. This is general education, not legal advice.

        Client story (names removed): [A Rajasthan handicrafts business signed a contract on 10 July 2026 to buy 800 brass lamps at Rs 600 each. It paid Rs 4,00,000 in advance. Delivery was due on 31 August, and the contract said time is of the essence. On 25 August the supplier asked for more time and the buyer replied "Ok but please hurry". On 21 September only 560 lamps came. The buyer accepted them and emailed that it kept its rights. The contract has a damages clause of 2% of the price per week of delay and an arbitration clause with the seat in Rajasthan.]

        Tasks:
        1. Make a dated timeline table: Date, Fact, Source to check.
        2. List facts that are missing or unclear.
        3. State the governing law and the forum, and why.
        4. Write each legal issue as one precise question: "Under [law], can [party] [result], when [key facts]?"
        5. For the main issue, write an IRAC outline with the Rule part left as "[verified law to be added]".

        Do not cite any cases. Do not give a final answer.</pre>
            <ul class="ai-try-checks">
              <li>Every timeline row matches the story. Nothing has been added or changed.</li>
              <li>The questions name the law, the party, the result and the key facts.</li>
              <li>The Rule part is left blank for verified law. No cases are cited.</li>
              <li>The missing facts include the WhatsApp extension and proof of loss.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A precise question is half the research. Fix the facts with dates and sources, name the law and the forum, then write each issue as one clear question. Your searches and your AI prompts both get better.
        </div>
      HTML
      starter_code: nil
    },
    5 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-law">Law</div>
          <h1 class="lc-title">Researching Statutes and Rules</h1>
        </div>
        <p class="lc-lead">Statutes (Acts of Parliament or a state legislature) are often the first law you research. You must find the official text, the version in force on the date that matters, and any rules made under it. Section numbers also change. On 1 July 2024, three new criminal laws replaced the Indian Penal Code, the Code of Criminal Procedure and the Indian Evidence Act. AI tools often still quote the old numbers. In this lesson you will learn where to find statutes, how to read a section, and how to map old sections to new ones safely.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="Left: five steps to research a statute: find the official text on India Code, check amendments in the Gazette, check the date it came into force, find rules and notifications, and check any state law. Right: the old criminal codes and their replacements from 1 July 2024: IPC to BNS, CrPC to BNSS, Evidence Act to BSA. Example: IPC 420 is now BNS 318(4).">
            <defs><marker id="lr5a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="180" y="22" font-weight="700" fill="#c4b5fd">Research a statute</text>
              <rect x="20" y="34" width="320" height="38" rx="8" fill="#1f1f44" stroke="#3b82f6"/><text x="180" y="58">1. Official text on India Code</text>
              <rect x="20" y="86" width="320" height="38" rx="8" fill="#1f1f44" stroke="#3b82f6"/><text x="180" y="110">2. Amendments in the Gazette</text>
              <rect x="20" y="138" width="320" height="38" rx="8" fill="#1f1f44" stroke="#3b82f6"/><text x="180" y="162">3. Date it came into force</text>
              <rect x="20" y="190" width="320" height="38" rx="8" fill="#1f1f44" stroke="#3b82f6"/><text x="180" y="214">4. Rules and notifications</text>
              <rect x="20" y="242" width="320" height="38" rx="8" fill="#1f1f44" stroke="#3b82f6"/><text x="180" y="266">5. State laws, if any</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#lr5a)">
                <line x1="180" y1="72" x2="180" y2="83"/><line x1="180" y1="124" x2="180" y2="135"/><line x1="180" y1="176" x2="180" y2="187"/><line x1="180" y1="228" x2="180" y2="239"/>
              </g>
              <line x1="375" y1="30" x2="375" y2="285" stroke="#4b4a78" stroke-dasharray="4 4"/>
              <text x="572" y="22" font-weight="700" fill="#fcd34d">From 1 July 2024</text>
              <rect x="400" y="34" width="150" height="44" rx="8" fill="#27274e" stroke="#9b99b8"/><text x="475" y="61">IPC, 1860</text>
              <rect x="595" y="34" width="150" height="44" rx="8" fill="#27274e" stroke="#10b981"/><text x="670" y="61">BNS, 2023</text>
              <rect x="400" y="96" width="150" height="44" rx="8" fill="#27274e" stroke="#9b99b8"/><text x="475" y="123">CrPC, 1973</text>
              <rect x="595" y="96" width="150" height="44" rx="8" fill="#27274e" stroke="#10b981"/><text x="670" y="123">BNSS, 2023</text>
              <rect x="400" y="158" width="150" height="44" rx="8" fill="#27274e" stroke="#9b99b8"/><text x="475" y="185">Evidence Act, 1872</text>
              <rect x="595" y="158" width="150" height="44" rx="8" fill="#27274e" stroke="#10b981"/><text x="670" y="185">BSA, 2023</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#lr5a)">
                <line x1="552" y1="56" x2="591" y2="56"/><line x1="552" y1="118" x2="591" y2="118"/><line x1="552" y1="180" x2="591" y2="180"/>
              </g>
              <rect x="400" y="222" width="345" height="58" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="572" y="246">Example: IPC 420 is now BNS 318(4)</text>
              <text x="572" y="266" font-size="11" fill="#9b99b8">new numbers, and sometimes new wording</text>
            </g>
          </svg>
          <figcaption>Find the official text and the version in force. For criminal law, map old sections to the new codes and read the new text.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Where to find statutes and rules</h3>
          <table class="lc-table">
            <thead><tr><th>Source</th><th>What you find there</th><th>Tip</th></tr></thead>
            <tbody>
              <tr><td><strong>India Code</strong> (indiacode.nic.in)</td><td>The official government collection of central and state Acts. Rules and notifications are often linked to each Act.</td><td>Check the date the text was last updated.</td></tr>
              <tr><td><strong>The Gazette of India</strong> (egazette.gov.in)</td><td>Official notices: new Acts, amendments, dates of coming into force, rules</td><td>The Gazette is the final word on when a change starts.</td></tr>
              <tr><td><strong>State gazettes and websites</strong></td><td>State Acts and rules, such as state stamp laws</td><td>The same topic can differ from state to state.</td></tr>
              <tr><td><strong>Ministry and regulator websites</strong></td><td>Rules, regulations, circulars and FAQs</td><td>Use the original document, not a news summary.</td></tr>
              <tr><td><strong>Legal databases</strong> (SCC Online, Manupatra and others)</td><td>Acts with amendment history, notes and linked cases</td><td>Useful and fast. Still confirm key text at the official source.</td></tr>
            </tbody>
          </table>
          <p>A <strong>bare Act</strong> is the plain text of an Act, without commentary. Always read the bare text before any summary, whether written by a person or by AI.</p>
        </div>
        <div class="lc-card">
          <h3>How to read a section</h3>
          <p>A section has parts. Each part can change the answer.</p>
          <ul class="lc-list">
            <li><strong>Definitions:</strong> a word may have a special meaning, usually set out near the start of the Act.</li>
            <li><strong>Sub-sections and clauses:</strong> numbered parts such as 318(4). Cite the exact part.</li>
            <li><strong>Provisos:</strong> sentences starting "Provided that". They add an exception or a condition.</li>
            <li><strong>Explanations and illustrations:</strong> they show how the section applies. For example, section 73 of the Contract Act has an Explanation about the means of reducing loss. That is where the idea of mitigation (reducing your loss) comes from.</li>
          </ul>
          <p>Also check <strong>which version</strong> applies. Use the law in force on the date of the events. An Act can also be passed but not yet in force, fully or in part. For example, when the new criminal laws started on 1 July 2024, one sub-section of the BNS, section 106(2), was kept on hold. So always check the commencement notification.</p>
        </div>
        <div class="lc-card">
          <h3>The new criminal laws and mapping old sections</h3>
          <p>From 1 July 2024, the Bharatiya Nyaya Sanhita (BNS) replaced the Indian Penal Code (IPC). The Bharatiya Nagarik Suraksha Sanhita (BNSS) replaced the Code of Criminal Procedure (CrPC). The Bharatiya Sakshya Adhiniyam (BSA) replaced the Indian Evidence Act. These mappings come from official comparison tables:</p>
          <table class="lc-table">
            <thead><tr><th>Old section</th><th>Topic</th><th>New section</th></tr></thead>
            <tbody>
              <tr><td>IPC 420</td><td>Cheating and dishonestly inducing delivery of property</td><td>BNS 318(4)</td></tr>
              <tr><td>IPC 406</td><td>Criminal breach of trust (punishment)</td><td>BNS 316(2)</td></tr>
              <tr><td>IPC 499 and 500</td><td>Defamation and its punishment</td><td>BNS 356(1) and 356(2)</td></tr>
              <tr><td>CrPC 154</td><td>First information report (FIR)</td><td>BNSS 173</td></tr>
              <tr><td>CrPC 438</td><td>Anticipatory bail</td><td>BNSS 482</td></tr>
              <tr><td>CrPC 482</td><td>Inherent powers of the High Court</td><td>BNSS 528</td></tr>
              <tr><td>Evidence Act 65B</td><td>Electronic records as evidence</td><td>BSA 63</td></tr>
            </tbody>
          </table>
          <ul class="lc-list">
            <li><strong>Check the date.</strong> Offences committed before 1 July 2024 generally stay under the old IPC. Under BNSS section 531, cases pending on that date generally continue under the old CrPC. Check recent judgments for the details.</li>
            <li><strong>Read the new text.</strong> A new section is not always a copy of the old one. Some wording and punishments changed.</li>
            <li><strong>Use an official table.</strong> Government bodies have published comparison tables. Check any AI mapping against one.</li>
          </ul>
          <p>Example: Neha asks, "Can we file a 420 case against the supplier?" For events in 2026, the right reference is BNS 318(4), not IPC 420. Also, a simple breach of contract is generally not cheating by itself. A lawyer must study the facts carefully before any criminal complaint is considered. This is general education, not legal advice.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: fixing old sections in an AI draft</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Prompt">Pooja asks an AI tool to draft a list of possible legal points against the supplier, for events in September 2026. All names are removed.</li>
              <li data-kind="answer" data-label="AI draft">The draft mentions "cheating under section 420 IPC" and "WhatsApp messages proved under section 65B of the Evidence Act".</li>
              <li data-kind="warn" data-label="Old law">Both references are old. The events happened in 2026, after the new codes came into force on 1 July 2024.</li>
              <li data-kind="tool" data-label="Official table">Pooja opens an official comparison table and India Code.</li>
              <li data-kind="result" data-label="New sections">IPC 420 maps to BNS 318(4). Evidence Act 65B maps to BSA 63.</li>
              <li data-kind="check" data-label="Read text">She reads BSA section 63 in full. She notes that its certificate requirements differ from the old section 65B.</li>
              <li data-kind="check" data-label="Flag">She updates the note and flags the cheating point for Adv. Kavita Mehra. It is a serious step that needs a partner's judgment.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI for a statute research plan. It should point you to official sources and mark every section for checking.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a legal research assistant in India. This is general education, not legal advice.

        Research question: [Can a buyer in Rajasthan claim fixed damages and a refund from a supplier who delivered brass lamps 3 weeks late and 240 short, under a contract signed on 10 July 2026?]

        Make a statute research plan as a table with these columns:
        - Act and section to read
        - Why it may matter
        - What to check (amendments, date in force, provisos, explanations, rules made under it, state differences)
        - Official place to read it (for example India Code or the Gazette of India)

        Then:
        1. If the question involves any old IPC, CrPC or Evidence Act section, give the likely new BNS, BNSS or BSA section. Mark each one "verify in an official comparison table".
        2. List 3 mistakes people make when researching statutes with AI.

        Rules: Name only Acts and sections you are confident about. Mark all section numbers "check". Do not cite any cases.</pre>
            <ul class="ai-try-checks">
              <li>Each Act and section is real. Open it on India Code and read it.</li>
              <li>The plan checks the version in force on the dates of the events.</li>
              <li>Any old criminal law section is mapped to a new one and marked for checking.</li>
              <li>The plan points to official sources, not blogs or news sites.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Always read the official text, in the version in force on the date that matters. For criminal law, check whether the events fall before or after 1 July 2024. Then map old sections to new ones using an official table, not an AI's memory.
        </div>
      HTML
      starter_code: nil
    },
    6 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-law">Law</div>
          <h1 class="lc-title">Researching Case Law</h1>
        </div>
        <p class="lc-lead">Case law means the judgments of courts. Statutes give you the words of the law, and judgments tell you what those words mean in real disputes. In this lesson you will learn where to find judgments in India and what a headnote is. You will also learn to find the part of a judgment that binds other courts. You will also learn search methods that turn hundreds of results into a short list you can trust. This course is general education. It is not legal advice.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="Left: a search funnel. A broad search gives many results. You filter by court, date and Act, read headnotes to make a shortlist, read the full judgments and find the ratio. Right: inside a reported case there is a headnote written by editors, which is a guide and not law, and the judgment written by the court. Inside the judgment, the ratio decidendi is the reason for the decision and binds, and obiter dicta are other remarks that can persuade.">
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="200" y="22" font-weight="700" fill="#c4b5fd">Search funnel</text>
              <rect x="30" y="36" width="340" height="38" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="200" y="60">Broad search: many results</text>
              <rect x="55" y="84" width="290" height="38" rx="8" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="200" y="108">Filter: court, date, Act</text>
              <rect x="80" y="132" width="240" height="38" rx="8" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="200" y="156">Read headnotes, shortlist</text>
              <rect x="105" y="180" width="190" height="38" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="200" y="204">Read full judgments</text>
              <rect x="130" y="228" width="140" height="38" rx="8" fill="#1f1f44" stroke="#10b981"/>
              <text x="200" y="252" font-weight="700">Find the ratio</text>
              <text x="200" y="288" font-size="11" fill="#9b99b8">Each step makes the list shorter and surer</text>
              <line x1="392" y1="30" x2="392" y2="280" stroke="#4b4a78" stroke-dasharray="4 4"/>
              <rect x="410" y="30" width="330" height="252" rx="10" fill="#161634" stroke="#4b4a78"/>
              <text x="575" y="52" font-weight="700" fill="#fcd34d">Inside a reported case</text>
              <rect x="430" y="64" width="290" height="52" rx="8" fill="#27274e" stroke="#f59e0b"/>
              <text x="575" y="85" font-weight="700">Headnote</text>
              <text x="575" y="104" font-size="11" fill="#9b99b8">written by editors: a guide, not law</text>
              <rect x="430" y="128" width="290" height="142" rx="8" fill="#27274e" stroke="#3b82f6"/>
              <text x="575" y="150" font-weight="700">Judgment (the court's words)</text>
              <rect x="446" y="162" width="258" height="46" rx="8" fill="#1f1f44" stroke="#10b981"/>
              <text x="575" y="181" font-weight="700">Ratio decidendi</text>
              <text x="575" y="199" font-size="11" fill="#9b99b8">the reason for the decision: binds</text>
              <rect x="446" y="216" width="258" height="46" rx="8" fill="#1f1f44" stroke="#ec4899"/>
              <text x="575" y="235" font-weight="700">Obiter dicta</text>
              <text x="575" y="253" font-size="11" fill="#9b99b8">other remarks: can persuade</text>
            </g>
          </svg>
          <figcaption>Search wide, then narrow down. In each judgment, separate the editor's headnote from the court's words, and the ratio from the remarks.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Where to find judgments</h3>
          <table class="lc-table">
            <thead><tr><th>Source</th><th>What you get</th><th>Good to know</th></tr></thead>
            <tbody>
              <tr><td><strong>SCC Online, Manupatra</strong></td><td>Paid databases with Indian judgments, law reports, headnotes and search filters</td><td>Editors add headnotes and notes on later cases. Many firms and law schools subscribe.</td></tr>
              <tr><td><strong>Indian Kanoon</strong></td><td>A free database of Indian judgments and statutes</td><td>Each judgment shows a "Cited by" list of later judgments that mention it. Text may differ in small ways from the official report.</td></tr>
              <tr><td><strong>Supreme Court and High Court websites</strong></td><td>Official copies of judgments and orders</td><td>The Supreme Court also publishes its official law report, the Supreme Court Reports (SCR), online.</td></tr>
              <tr><td><strong>Westlaw, LexisNexis</strong></td><td>Large international databases</td><td>Useful for foreign law, which is only persuasive in India.</td></tr>
            </tbody>
          </table>
          <p>A <strong>law report</strong> is a series that publishes selected judgments, such as SCC (Supreme Court Cases) or AIR (All India Reporter). The same judgment can appear in several reports. For example, Fateh Chand v. Balkishan Dass is reported as AIR 1963 SC 1405 and as (1964) 1 SCR 515. Paragraph numbers can also differ between sources, so always note which source you used.</p>
        </div>
        <div class="lc-card">
          <h3>Headnotes, ratio and obiter</h3>
          <ul class="lc-list">
            <li><strong>Headnote:</strong> a short summary at the top of a reported judgment. The publisher's editors write it, not the judges. Use it to decide if a case is worth reading. Never cite it as the law.</li>
            <li><strong>Ratio decidendi</strong> ("the reason for the decision"): the legal rule the court needed to decide the actual dispute. This is the part that binds lower courts.</li>
            <li><strong>Obiter dicta</strong> ("things said by the way"): comments that were not needed for the decision. They can persuade a court but do not bind it. In India, lower courts usually give great weight even to Supreme Court obiter.</li>
          </ul>
          <p><strong>A real example.</strong> In Kailash Nath Associates v. Delhi Development Authority, (2015) 4 SCC 136, the Supreme Court found two things. The bidder had not broken the contract, and the DDA had suffered no loss. So the DDA could not keep the earnest money. That is the core of the decision. The Court also said section 74 would not apply to a forfeiture under auction terms before any agreement exists. That situation was not before the Court, so many lawyers would treat it as obiter. Lawyers can disagree about where the ratio ends, so explain your reasons in your note.</p>
          <p><strong>Binding or persuasive?</strong> Supreme Court judgments bind every court. A larger bench binds a smaller bench of the same court. Rangrez's arbitration has its seat in Rajasthan, so Rajasthan High Court judgments bind the courts there. Judgments of other High Courts only persuade.</p>
        </div>
        <div class="lc-card">
          <h3>Search strategies that work</h3>
          <ul class="lc-list">
            <li><strong>Start with the section:</strong> search the Act and section number, such as "section 74" with "Contract Act".</li>
            <li><strong>Use exact phrases:</strong> put quotation marks around the words courts use, such as "genuine pre-estimate".</li>
            <li><strong>Add synonyms:</strong> courts use different words for the same idea, such as "penalty", "liquidated damages", "earnest money" and "forfeiture".</li>
            <li><strong>Filter:</strong> limit by court (Supreme Court first), date and bench size.</li>
            <li><strong>Follow the trail:</strong> read one leading case, then check the cases it cites (backwards) and the later cases that cite it (forwards).</li>
            <li><strong>Read the latest Supreme Court case first:</strong> it often summarises the earlier law.</li>
          </ul>
          <p>Each database has its own search rules for words like AND, OR and NOT. Check its search help page. Here is Pooja's search log for the made-up Rangrez Crafts matter. The result counts are sample numbers.</p>
          <pre><code>Search log: Rangrez Crafts v. Shiva Metalworks (made-up matter)
        #  Database      Search                                      Hits  Kept
        1  SCC Online    "liquidated damages" AND "section 74"        900+  0
        2  SCC Online    + "genuine pre-estimate", Supreme Court only   60   6
        3  SCC Online    + "delay" AND "supply"                         14   3
        4  Indian Kanoon "Cited by" list of Kailash Nath (2015)        many  2
        Next: read the full text of all 11 kept judgments.
        Note for Adv. Sameer Rao: search 2 gave the leading cases.</code></pre>
          <p>AI can help here. Ask it for synonyms and search strings. Do not ask it for case names. You run the searches yourself in a real database.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: ratio, obiter or not the court's words?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Imagine a made-up High Court judgment about late delivery of goods. It is not a real case. Sort each part.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="ratio" data-label="Ratio (binds)"></div>
              <div data-sorter-target="bucket" data-bucket="obiter" data-label="Obiter (persuades)"></div>
              <div data-sorter-target="bucket" data-bucket="not" data-label="Not the court's words"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="ratio" data-why="This rule was needed to decide the dispute in front of the court, so it is part of the ratio.">The buyer gave written notice of its claim when it accepted the late goods, so it may claim compensation.</li>
              <li data-bucket="ratio" data-why="The court applied this rule to the facts to fix the amount. It was needed for the decision.">The buyer could prove its loss here, so it gets its actual loss, up to the sum named in the contract.</li>
              <li data-bucket="obiter" data-why="The judge talks about a different set of facts that was not before the court. It is a remark, not the decision.">The judge adds that the result might be different if the contract had no fixed delivery date.</li>
              <li data-bucket="obiter" data-why="A comment on foreign law was not needed to decide an Indian dispute. It can only persuade.">The judge comments on how English courts now treat penalty clauses.</li>
              <li data-bucket="not" data-why="Editors of the law report write headnotes. Use them to find cases, but never cite them as the law.">The headnote at the top of the report, written by the publisher's editors</li>
              <li data-bucket="not" data-why="Database keywords are added by the publisher to help searching. They are not part of the judgment.">Keywords added by the database, such as "Contract Act, s. 74, penalty"</li>
              <li data-bucket="not" data-why="An AI summary is not the court's words and may be wrong. Read the judgment itself.">An AI chatbot's one-line summary of what the court decided</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to build a case law search plan for a legal issue. Then run the searches yourself in a legal database.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a legal research trainer in India. This is general education, not legal advice.

        Build a case law search plan for this issue: [Under section 74 of the Indian Contract Act, 1872, must a buyer prove actual loss to recover liquidated damages for late delivery of goods?]
        The dispute will be heard in: [Rajasthan, India].

        Give me:
        1. Key legal phrases courts are likely to use, with synonyms (at least 8).
        2. Five search strings, from broad to narrow. Use quotation marks for phrases and AND, OR, NOT.
        3. Filters to apply (court, date, bench size), and why.
        4. Which courts' judgments would bind in [Rajasthan, India], and which would only persuade.
        5. How to follow the trail: backwards (cases a judgment cites) and forwards (later cases that cite it).

        Rules:
        - Do NOT name any case or citation. I will find the cases myself.
        - Mark any section number you are not sure of with "check on India Code".
        - Remind me that search rules differ between databases.

        Use simple English and short sentences.</pre>
            <ul class="ai-try-checks">
              <li>No case names or citations appear. If any do, treat them as unverified and do not use them.</li>
              <li>The search strings move from broad to narrow and use exact phrases.</li>
              <li>The Supreme Court is shown as binding, and other High Courts only as persuasive.</li>
              <li>Run at least two of the searches in a real database and note the results in a search log.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A headnote helps you find a case, but only the court's words are law. Search wide, filter hard, read the full judgment, and find the ratio. Then judge its weight by the court that decided it.
        </div>
      HTML
      starter_code: nil
    },
    7 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-law">Law</div>
          <h1 class="lc-title">Using AI Research Tools</h1>
        </div>
        <p class="lc-lead">Not all AI tools work the same way. A general AI assistant writes answers from patterns it learned. A legal research tool with AI searches a real collection of judgments and shows you links. Both can help you, and both can be wrong. In this lesson you will learn the difference, how to write prompts that demand sources, and the limits you must plan for. The lawyer stays responsible for every word that goes to a client or a court.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 240" role="img" aria-label="Two paths. A general AI assistant takes your question, predicts likely words and gives an answer that may have no links, with the risk of invented cases. A legal research tool with AI takes your question, searches a database and gives an answer with links, with the risk of wrong or weak links. Both paths end in the same step: you open and read every source.">
            <defs><marker id="lr7a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="20" y="28" text-anchor="start" font-weight="700" fill="#c4b5fd">General AI assistant</text>
              <rect x="20" y="40" width="150" height="44" rx="8" fill="#1f1f44" stroke="#8b5cf6"/><text x="95" y="67">Your question</text>
              <rect x="200" y="40" width="150" height="44" rx="8" fill="#1f1f44" stroke="#8b5cf6"/><text x="275" y="67">Predicts words</text>
              <rect x="380" y="40" width="150" height="44" rx="8" fill="#1f1f44" stroke="#8b5cf6"/><text x="455" y="67">Answer, no links</text>
              <text x="275" y="104" font-size="11" fill="#f9a8d4">risk: invented cases and quotes</text>
              <text x="20" y="138" text-anchor="start" font-weight="700" fill="#67e8f9">Legal research tool with AI</text>
              <rect x="20" y="150" width="150" height="44" rx="8" fill="#1f1f44" stroke="#22d3ee"/><text x="95" y="177">Your question</text>
              <rect x="200" y="150" width="150" height="44" rx="8" fill="#1f1f44" stroke="#22d3ee"/><text x="275" y="177">Searches database</text>
              <rect x="380" y="150" width="150" height="44" rx="8" fill="#1f1f44" stroke="#22d3ee"/><text x="455" y="177">Answer with links</text>
              <text x="275" y="214" font-size="11" fill="#f9a8d4">risk: wrong summary or weak link</text>
              <rect x="580" y="90" width="160" height="60" rx="10" fill="#27274e" stroke="#10b981"/>
              <text x="660" y="116" font-weight="700">You open and read</text>
              <text x="660" y="135" font-size="11" fill="#9b99b8">every source</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#lr7a)">
                <line x1="170" y1="62" x2="196" y2="62"/><line x1="350" y1="62" x2="376" y2="62"/>
                <line x1="170" y1="172" x2="196" y2="172"/><line x1="350" y1="172" x2="376" y2="172"/>
                <path d="M530,62 L555,62 L555,108 L576,108"/>
                <path d="M530,172 L555,172 L555,132 L576,132"/>
              </g>
            </g>
          </svg>
          <figcaption>Whichever tool you use, the last step is the same: open the source and read it yourself.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Three kinds of AI help</h3>
          <table class="lc-table">
            <thead><tr><th>Kind of tool</th><th>Good for</th><th>Main risk</th></tr></thead>
            <tbody>
              <tr><td><strong>General AI assistant</strong> (for example Claude, ChatGPT or Gemini)</td><td>Explaining ideas, listing issues, search terms, first drafts, plain-language letters</td><td>It may invent cases, quote old law or give another country's law. With web search on, it may rely on blogs.</td></tr>
              <tr><td><strong>Legal research tool with AI</strong> (AI features inside legal databases such as SCC Online, Manupatra, Westlaw or LexisNexis)</td><td>Finding judgments by meaning, not only keywords. Short answers with links to the cases it used.</td><td>A link can point to a real case that does not support the point. The summary can be wrong.</td></tr>
              <tr><td><strong>AI on your own documents</strong> (you upload a judgment or contract to an approved tool)</td><td>Summaries, timelines and questions about that one document</td><td>It can still misread the text or fill gaps from its general training.</td></tr>
            </tbody>
          </table>
          <p>Features change often. Check each tool's current help pages for what it searches and how up to date its collection is.</p>
          <p><strong>Do the tools with sources solve the problem?</strong> Not fully. Stanford researchers tested leading legal AI research tools. Their study was published in a peer-reviewed journal in 2025. The tools made fewer errors than a general chatbot. But each still gave wrong or unsupported answers to roughly one in six to one in three test questions.</p>
        </div>
        <div class="lc-card">
          <h3>Prompts that demand sources</h3>
          <pre><code>Weak prompt:   What is the law on liquidated damages in India?

        Better prompt: Answer only from the judgments you find in this
                       database. Question: under section 74 of the
                       Indian Contract Act, must a buyer prove actual
                       loss to recover liquidated damages for delay?
                       For each point, give the case name, the court,
                       the date and the paragraph number.
                       Keep what the judgment says separate from your
                       own view. If you cannot find support for a
                       point, write "no source found". Do not guess.</code></pre>
          <p>A good research prompt does five things:</p>
          <ul class="lc-list">
            <li>It limits the answer to a source: "only from the database" or "only from the text below".</li>
            <li>It asks for a pinpoint: the paragraph number that supports each point.</li>
            <li>It gives the AI permission to say "not found".</li>
            <li>It separates what the source says from the AI's own view.</li>
            <li>It names the country and the date: "Indian law, as of [date]".</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Limits to plan for</h3>
          <ul class="lc-list">
            <li><strong>Coverage:</strong> a tool searches only its own collection. Recent orders and some High Court judgments may be missing.</li>
            <li><strong>Dates:</strong> a general assistant has a training cut-off date. It may not know about recent amendments or judgments.</li>
            <li><strong>Overstatement:</strong> AI often turns "usually" into "always". Section 74 cases have careful conditions. Watch for words like "never" and "in all cases".</li>
            <li><strong>Confidentiality:</strong> use only tools your firm has approved. Check how the tool stores and uses what you enter. Remove client names and private details from prompts.</li>
            <li><strong>Responsibility:</strong> the lawyer who signs the work is responsible for it. "The tool said so" is not a defence.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Activity: Sameer tests a research tool</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Prompt">Adv. Sameer Rao uses the AI feature of his firm's legal database. He types the "better prompt" above. No client names are included.</li>
              <li data-kind="tool" data-label="Research tool">The tool searches its collection of Supreme Court judgments on section 74.</li>
              <li data-kind="answer" data-label="AI answer">It answers: "A buyer never needs to prove loss if the contract names a sum." It links to Kailash Nath Associates v. DDA (2015) and ONGC v. Saw Pipes (2003). It also links one High Court judgment (in this made-up session).</li>
              <li data-kind="check" data-label="Sameer checks">He opens Kailash Nath and reads paragraph 43. The Court says proof of loss is still needed where loss can be proved. It is excused only where loss is hard or impossible to prove.</li>
              <li data-kind="warn" data-label="Overstated">The word "never" is wrong. The AI turned a careful rule into an absolute one. Sameer rewrites the point in his own words, with the conditions.</li>
              <li data-kind="warn" data-label="Weak link">The High Court judgment is real, but it is about arbitration costs. It does not discuss section 74 at all. Sameer drops it.</li>
              <li data-kind="result" data-label="Outcome">Two useful cases, both read in full. The tool saved search time, but every point was checked at the source.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Practise a grounded prompt: the AI may answer only from the text you give it. The sample text is the made-up Rangrez Crafts contract. You can paste your own document instead.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a careful legal research assistant. This is general education, not legal advice.

        Answer ONLY from the contract text below. Do not use outside knowledge.
        Question: [Can the buyer claim liquidated damages for the delay, and did the supplier's request for "2-3 more weeks" change the delivery date?]

        Contract text: [paste your own clauses, or use this made-up sample]
        Clause 3: The Supplier shall deliver all 800 Products at the Buyer's Rajasthan warehouse on or before 31 August 2026. Time of delivery is of the essence.
        Clause 4: The Buyer may, in writing, extend the delivery date. Any extension is without prejudice to the Buyer's rights under Clause 9 unless the Buyer expressly waives them in writing.
        Clause 9: For each week or part of a week of delay, the Supplier shall pay 2% of the total Contract Price as liquidated damages, up to 10%.
        Clause 12: Force majeure covers acts of God, war, riot, government orders and epidemic.

        For each point in your answer:
        - quote the exact words and give the clause number
        - say "not in the text" if the text does not answer it
        - list the facts or law I must check outside this text

        Use simple English and a short table.</pre>
            <ul class="ai-try-checks">
              <li>Every point has a clause number, and each quote matches the text word for word.</li>
              <li>The AI says "not in the text" for things the clauses do not cover, such as the WhatsApp messages or section 74 case law.</li>
              <li>It does not bring in outside law without saying so.</li>
              <li>It lists what you still must check, such as the section 55 notice rule and the actual messages.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A tool that shows sources is better than one that does not, but a link is not proof. Tie the AI to a source, ask for pinpoints, let it say "not found", and then read every source yourself.
        </div>
      HTML
      starter_code: nil
    },
    8 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-law">Law</div>
          <h1 class="lc-title">Reading and Summarising Judgments</h1>
        </div>
        <p class="lc-lead">A judgment can run to 50 pages or more. A case brief is a one-page summary of it: the facts, the issues, what the court decided and why. Good briefs save time for the whole team. AI can write a first draft of a brief in seconds, but it can get the holding, the numbers or even the court wrong. In this lesson you will learn to read a judgment in a smart order and write a brief with paragraph numbers. You will also check an AI summary line by line.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 290" role="img" aria-label="Left: the parts of a judgment: cause title and bench, facts and history, arguments, analysis, and final order. Right: the parts of a case brief: citation and court, key facts, issues, reasoning, holding, and relevance to our case. Arrows link each part of the judgment to the matching part of the brief. Relevance to our case comes from your own analysis.">
            <defs><marker id="lr8a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="150" y="22" font-weight="700" fill="#93c5fd">The judgment</text>
              <rect x="30" y="34" width="240" height="36" rx="8" fill="#1f1f44" stroke="#3b82f6"/><text x="150" y="57">Cause title and bench</text>
              <rect x="30" y="78" width="240" height="36" rx="8" fill="#1f1f44" stroke="#3b82f6"/><text x="150" y="101">Facts and history</text>
              <rect x="30" y="122" width="240" height="36" rx="8" fill="#1f1f44" stroke="#3b82f6"/><text x="150" y="145">Arguments</text>
              <rect x="30" y="166" width="240" height="36" rx="8" fill="#1f1f44" stroke="#3b82f6"/><text x="150" y="189">Analysis</text>
              <rect x="30" y="210" width="240" height="36" rx="8" fill="#1f1f44" stroke="#3b82f6"/><text x="150" y="233">Final order</text>
              <text x="600" y="22" font-weight="700" fill="#6ee7b7">Your case brief</text>
              <rect x="470" y="34" width="260" height="36" rx="8" fill="#27274e" stroke="#10b981"/><text x="600" y="57">Citation and court</text>
              <rect x="470" y="78" width="260" height="36" rx="8" fill="#27274e" stroke="#10b981"/><text x="600" y="101">Key facts</text>
              <rect x="470" y="122" width="260" height="36" rx="8" fill="#27274e" stroke="#10b981"/><text x="600" y="145">Issues</text>
              <rect x="470" y="166" width="260" height="36" rx="8" fill="#27274e" stroke="#10b981"/><text x="600" y="189">Reasoning (with para nos.)</text>
              <rect x="470" y="210" width="260" height="36" rx="8" fill="#27274e" stroke="#10b981"/><text x="600" y="233">Holding</text>
              <rect x="470" y="254" width="260" height="32" rx="8" fill="#27274e" stroke="#f59e0b"/><text x="600" y="275">Relevance to our case</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#lr8a)">
                <line x1="270" y1="52" x2="466" y2="52"/>
                <line x1="270" y1="96" x2="466" y2="96"/>
                <line x1="270" y1="140" x2="466" y2="140"/>
                <line x1="270" y1="184" x2="466" y2="184"/>
                <line x1="270" y1="228" x2="466" y2="228"/>
              </g>
              <text x="368" y="274" font-size="11" fill="#fcd34d">your own analysis</text>
            </g>
          </svg>
          <figcaption>Each part of the brief comes from one part of the judgment, except the last. How the case helps your client is your own work.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Read a judgment in a smart order</h3>
          <ul class="lc-list">
            <li><strong>Check you have the right judgment:</strong> name, court, date and citation, from a trusted source.</li>
            <li><strong>Skim the headnote</strong> to get your bearings. Remember that editors wrote it.</li>
            <li><strong>Read the final order first:</strong> who won, and what the court ordered. The rest then makes more sense.</li>
            <li><strong>Read the facts and history:</strong> what happened, and what the lower courts decided.</li>
            <li><strong>Read the analysis slowly:</strong> find each issue and the court's answer. Note the paragraph numbers.</li>
            <li><strong>Check the bench:</strong> how many judges, and whether any judge disagreed (a dissent). A dissent is not the law.</li>
          </ul>
          <p>The <strong>holding</strong> is the court's answer to an issue. The <strong>reasoning</strong> is why it gave that answer. Keep them separate in your brief.</p>
        </div>
        <div class="lc-card">
          <h3>Worked example: a brief of a real judgment</h3>
          <p>Pooja briefs a real Supreme Court judgment on section 74 for the made-up Rangrez Crafts matter. She reads it in the Supreme Court Reports. The points below are paraphrased, and the paragraph numbers are from that report.</p>
          <pre><code>CASE BRIEF
        Case:      Kailash Nath Associates v. Delhi Development Authority
        Citation:  (2015) 4 SCC 136; [2015] 1 SCR 627
        Court:     Supreme Court of India, two judges (Ranjan Gogoi and
                   R.F. Nariman JJ.). Judgment by Nariman J.
        Date:      9 January 2015 (Civil Appeal No. 193 of 2015)

        Facts:     DDA auctioned a plot at Bhikaji Cama Place, New Delhi.
                   The bid was Rs 3.12 crore. The bidder paid 25%
                   (Rs 78 lakh) as earnest money. DDA accepted the bid in
                   Feb 1982 and asked for the balance within 3 months.
                   DDA extended the time at least twice. In Oct 1993 it
                   cancelled the allotment and kept the Rs 78 lakh.
                   In Feb 1994 it re-auctioned the plot for Rs 11.78 crore.
        History:   Delhi HC single judge (2007): refund with 9% interest.
                   Division Bench (2012): DDA may keep the money.

        Issues:    1. Did the bidder break the contract?
                   2. Can DDA keep earnest money when it lost nothing?

        Reasoning: No breach: DDA extended the time and never gave a
                   notice fixing a final date to pay (paras 15, 21).
                   Section 74 gives reasonable compensation for loss.
                   Loss is essential. Proof of loss is excused only when
                   it is hard or impossible to prove. The sum named is
                   the upper limit (para 43). DDA made a profit on the
                   re-auction, and the law gives no windfall (para 44).
        Holding:   Appeal allowed. Single judge's order restored: refund
                   of Rs 78 lakh with 9% interest (paras 46, 47).

        Relevance: Rangrez's Rs 28,800 under clause 9 is a ceiling, not
                   an automatic sum. Collect proof of actual loss, such
                   as the Rs 36,000 extra cost of replacement lamps.</code></pre>
          <p>Adv. Sameer Rao will review the "Relevance" part. That is legal judgement, not summary.</p>
        </div>
        <div class="lc-card">
          <h3>Checking an AI summary against the judgment</h3>
          <p>Pooja also asked an AI assistant for a summary of the same case. She checked each line against the judgment.</p>
          <table class="lc-table">
            <thead><tr><th>The AI summary said</th><th>The judgment says</th><th>Result</th></tr></thead>
            <tbody>
              <tr><td>"Decided by a Constitution Bench"</td><td>Two judges. (Fateh Chand, an older case on section 74, was a Constitution Bench. The AI mixed them up.)</td><td>Wrong: fix</td></tr>
              <tr><td>"The Court ordered refund with 7% interest"</td><td>The Court refused the plea for 7% and kept the single judge's 9% (para 46)</td><td>Wrong: fix</td></tr>
              <tr><td>"Earnest money can never be forfeited"</td><td>Section 74 applies to forfeiture of earnest money under a contract. Here there was no breach and no loss (paras 21, 43).</td><td>Overstated: rewrite</td></tr>
              <tr><td>"DDA re-auctioned the plot for a much higher price"</td><td>Re-auction in Feb 1994 for Rs 11.78 crore (para 10)</td><td>Correct</td></tr>
            </tbody>
          </table>
          <p>Three of four points needed fixing. Each error was small, but each could mislead a client or a court. Always brief from the judgment itself, and use AI only as a first draft.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: brief a judgment in the right order</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put Pooja's steps for briefing a judgment in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Get the full judgment from a trusted source and confirm the name, court, date and citation</li>
              <li data-order="2">Skim the headnote to get your bearings, without relying on it</li>
              <li data-order="3">Read the final order: who won and what the court ordered</li>
              <li data-order="4">Read the facts and the history in the lower courts</li>
              <li data-order="5">Find each issue and the court's answer, and note the paragraph numbers</li>
              <li data-order="6">Separate the ratio from the remarks, and note any dissent</li>
              <li data-order="7">Write the brief, then check every line against the paragraph it cites</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Use AI to draft a case brief from the full text of a judgment you have downloaded. If you paste nothing, the AI gives you a blank template instead.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a legal research assistant helping an Indian lawyer. This is general education, not legal advice.

        Task: draft a case brief of the judgment pasted below. Our issue is: [whether a buyer must prove actual loss to recover liquidated damages under section 74 of the Indian Contract Act].

        Judgment text: [paste the full text of the judgment here]

        Rules:
        - Use ONLY the pasted text. Do not add facts or law from memory.
        - Give the paragraph number for every point.
        - Do not quote anything unless it appears word for word in the text.
        - Keep the court's holding separate from its reasoning and from remarks not needed for the decision.
        - If a heading is not covered in the text, write "not in the text".

        Format, as a table: Case name and citation | Court and judges | Date | Key facts | Issues | Holding | Reasoning (with para numbers) | Any dissent | Relevance to our issue (mark this "for lawyer review").

        If no judgment text is pasted above, do NOT summarise any real case. Instead, give me a blank brief template with one line of guidance under each heading.</pre>
            <ul class="ai-try-checks">
              <li>Every point has a paragraph number. Open the judgment and check each one.</li>
              <li>Names, dates, amounts and the final order match the judgment exactly.</li>
              <li>The holding is not overstated. Watch for "always" or "never".</li>
              <li>If you pasted nothing, the AI gave a template and did not describe any real case.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A brief is only as good as its paragraph numbers. Read the final order first and tie every point to a paragraph. Check each line of any AI summary against the judgment before anyone relies on it.
        </div>
      HTML
      starter_code: nil
    },
    9 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-law">Law</div>
          <h1 class="lc-title">Checking Whether the Law Is Still Good</h1>
        </div>
        <p class="lc-lead">A real judgment can still be the wrong authority to cite. A higher court may have overruled it, Parliament may have changed the law, or later cases may have narrowed it. Lawyers call a case that is still reliable "good law". In this lesson you will learn how law goes out of date. You will use a citator (a tool that lists later cases that mention a judgment). You will also record a case's status point by point.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 270" role="img" aria-label="A timeline. 2003: ONGC v. Saw Pipes decides points on section 74 and on public policy. 2015: Kailash Nath explains section 74. 23 October 2015: an amendment to the Arbitration Act narrows section 34. 2019: Ssangyong says the wide Saw Pipes view of public policy is done away with. 2026: your check, point by point. Result: on section 74, Saw Pipes is still relied on, read with Kailash Nath. On public policy in section 34 challenges, it has been replaced by the 2015 amendment.">
            <defs><marker id="lr9a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <line x1="30" y1="40" x2="730" y2="40" stroke="#4b4a78" stroke-width="2"/>
              <circle cx="90" cy="40" r="6" fill="#3b82f6"/><circle cx="235" cy="40" r="6" fill="#8b5cf6"/><circle cx="380" cy="40" r="6" fill="#f59e0b"/><circle cx="525" cy="40" r="6" fill="#ec4899"/><circle cx="670" cy="40" r="6" fill="#10b981"/>
              <text x="90" y="26" font-size="12" fill="#9b99b8">2003</text><text x="235" y="26" font-size="12" fill="#9b99b8">Jan 2015</text><text x="380" y="26" font-size="12" fill="#9b99b8">23 Oct 2015</text><text x="525" y="26" font-size="12" fill="#9b99b8">2019</text><text x="670" y="26" font-size="12" fill="#9b99b8">2026</text>
              <rect x="25" y="58" width="130" height="58" rx="8" fill="#1f1f44" stroke="#3b82f6"/><text x="90" y="81" font-weight="700">Saw Pipes</text><text x="90" y="100" font-size="11" fill="#9b99b8">s.74 + public policy</text>
              <rect x="170" y="58" width="130" height="58" rx="8" fill="#1f1f44" stroke="#8b5cf6"/><text x="235" y="81" font-weight="700">Kailash Nath</text><text x="235" y="100" font-size="11" fill="#9b99b8">explains s.74</text>
              <rect x="315" y="58" width="130" height="58" rx="8" fill="#1f1f44" stroke="#f59e0b"/><text x="380" y="81" font-weight="700">Amendment</text><text x="380" y="100" font-size="11" fill="#9b99b8">narrows s.34 Arb Act</text>
              <rect x="460" y="58" width="130" height="58" rx="8" fill="#1f1f44" stroke="#ec4899"/><text x="525" y="81" font-weight="700">Ssangyong</text><text x="525" y="100" font-size="11" fill="#9b99b8">wide view done away</text>
              <rect x="605" y="58" width="130" height="58" rx="8" fill="#1f1f44" stroke="#10b981"/><text x="670" y="81" font-weight="700">Your check</text><text x="670" y="100" font-size="11" fill="#9b99b8">status by point</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#lr9a)">
                <path d="M670,118 L670,140 L205,140 L205,160"/>
                <path d="M670,118 L670,140 L555,140 L555,160"/>
              </g>
              <rect x="40" y="164" width="330" height="68" rx="10" fill="#27274e" stroke="#10b981"/>
              <text x="205" y="189" font-weight="700" fill="#6ee7b7">Point 1: section 74 (agreed damages)</text>
              <text x="205" y="210" font-size="11">still relied on; read with Kailash Nath</text>
              <rect x="390" y="164" width="330" height="68" rx="10" fill="#27274e" stroke="#ec4899"/>
              <text x="555" y="189" font-weight="700" fill="#f9a8d4">Point 2: "public policy" (s.34)</text>
              <text x="555" y="210" font-size="11">wide view replaced by the 2015 amendment</text>
              <text x="380" y="258" font-size="11" fill="#9b99b8">One judgment, two points, two different answers. Check status point by point.</text>
            </g>
          </svg>
          <figcaption>A case can be good law on one point and out of date on another. Record its status for the exact point you rely on.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>How a judgment goes out of date</h3>
          <table class="lc-table">
            <thead><tr><th>What happened</th><th>What it means</th><th>Can you rely on it?</th></tr></thead>
            <tbody>
              <tr><td><strong>Followed</strong></td><td>A later court applied the same rule</td><td>Yes, and the later case adds weight</td></tr>
              <tr><td><strong>Explained</strong></td><td>A later court said how the rule should be read</td><td>Yes, but read both cases together</td></tr>
              <tr><td><strong>Distinguished</strong></td><td>A later court did not apply it because the facts were different</td><td>Yes, if your facts are like the first case</td></tr>
              <tr><td><strong>Doubted or referred to a larger bench</strong></td><td>A later bench questioned it or asked a bigger bench to decide</td><td>With great care, and say so</td></tr>
              <tr><td><strong>Reversed</strong></td><td>A higher court changed the result in the same case on appeal</td><td>No</td></tr>
              <tr><td><strong>Overruled</strong></td><td>A higher court or larger bench said the rule was wrong, in a different case</td><td>No</td></tr>
              <tr><td><strong>Law changed</strong></td><td>Parliament amended or replaced the statute the case was about</td><td>Only for events the old law still covers</td></tr>
            </tbody>
          </table>
          <p>Also check that the section a case discusses still reads the same. You learned how to check amendments in the statutes lesson.</p>
        </div>
        <div class="lc-card">
          <h3>Citators, in general words</h3>
          <p>A <strong>citator</strong> is a tool that lists later judgments that cite a case. Some also mark how each later case treated it, such as "followed" or "overruled".</p>
          <ul class="lc-list">
            <li>Indian Kanoon shows a "Cited by" list for each judgment. It does not tell you how each later case treated it. You must open and read them.</li>
            <li>Paid databases such as SCC Online and Manupatra have their own features for later treatment. Check each tool's help pages for what they show.</li>
            <li>Search the case name as a phrase to catch later judgments that the citator may miss.</li>
            <li>Sort the later cases by court and date. Read Supreme Court cases and larger benches first.</li>
          </ul>
          <p>A long "Cited by" list does not mean a case is still good. A case can be cited many times and then overruled. Read the later cases that matter, especially the most recent ones.</p>
        </div>
        <div class="lc-card">
          <h3>Worked example: one case, two points</h3>
          <p>An AI draft for the made-up Rangrez Crafts matter cites Oil &amp; Natural Gas Corporation Ltd. v. Saw Pipes Ltd., (2003) 5 SCC 705, for two points. Pooja checks each point on its own.</p>
          <pre><code>Status note: ONGC v. Saw Pipes Ltd., (2003) 5 SCC 705 (Supreme Court)
        Point 1: agreed damages for delay; proof of loss under section 74
          Later cases: Kailash Nath Associates v. DDA, (2015) 4 SCC 136,
                       discusses Saw Pipes and restates the section 74 law
                       (para 43 of the SCR report).
          Status:      Still relied on. Cite it together with Kailash Nath.

        Point 2: wide meaning of "public policy" to set aside an
                 arbitral award (section 34, Arbitration Act 1996)
          Change:      2015 amendment to section 34 narrowed this ground.
          Later case:  Ssangyong Engineering v. NHAI, [2019] 7 SCR 522,
                       8 May 2019: the Saw Pipes expansion of "public
                       policy" has been done away with. The amended
                       section 34 applies to applications made on or
                       after 23 October 2015.
          Status:      Do not rely on Saw Pipes for this point.

        Checked by: Pooja, 29 Sept 2026. Reviewed by: Adv. Sameer Rao</code></pre>
          <p>This matters for Rangrez. Its contract has an arbitration clause with the seat in Rajasthan. Any later challenge to an award would be under the amended section 34. The same care applies to the time-of-essence issue. There, read older cases together with Welspun Specialty Solutions Ltd. v. ONGC Ltd., (2022) 2 SCC 382.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: can you still rely on it?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each authority by how safely you can rely on it today, after reading it in full.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="yes" data-label="Rely on it"></div>
              <div data-sorter-target="bucket" data-bucket="care" data-label="Use with care"></div>
              <div data-sorter-target="bucket" data-bucket="no" data-label="Do not rely on it"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="yes" data-why="Later courts have applied it on the same point, which adds weight.">A Supreme Court judgment that later benches have followed on your exact point</li>
              <li data-bucket="care" data-why="The appeal may change the result. Say that an appeal is pending, and check its status before you file.">A High Court judgment that is now under appeal in the Supreme Court</li>
              <li data-bucket="no" data-why="Once a larger bench overrules a rule, the old judgment is no longer good law on that point.">A judgment whose rule a larger bench of the same court has overruled</li>
              <li data-bucket="care" data-why="Check whether the amendment applies to your dates. The old law may still cover older events.">A judgment on a section that Parliament amended after the judgment</li>
              <li data-bucket="no" data-why="The 2015 amendment narrowed this ground, and Ssangyong (2019) said the Saw Pipes expansion has been done away with.">Saw Pipes, cited for its wide view of "public policy" in a new challenge to an arbitral award</li>
              <li data-bucket="care" data-why="A distinguished case still stands, but only for facts like its own. Compare the facts carefully.">A judgment that later courts have distinguished on different facts</li>
              <li data-bucket="no" data-why="A reversed judgment is replaced by the appeal court's decision in the same case. Cite the appeal decision instead.">A single judge's decision that was reversed on appeal in the same case</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI for a plan to check whether a case is still good law for your point. The AI must not decide the status. You do that with a citator and the later judgments.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a legal research trainer in India. This is general education, not legal advice.

        I want to rely on this judgment: [Oil &amp; Natural Gas Corporation Ltd. v. Saw Pipes Ltd., (2003) 5 SCC 705, Supreme Court]
        The point I rely on: [a party claiming agreed damages for delay need not prove actual loss when loss is hard to prove]
        Today's date: [29 September 2026]

        Give me a checking plan:
        1. The searches to run in a citator or database, including the case name as a phrase and the statute sections involved.
        2. Treatment words to look for in later judgments (followed, explained, distinguished, doubted, overruled), each explained in one line.
        3. Statute changes I should check since the judgment, with where to check the current text.
        4. A blank status table: Point relied on | Later case | Court and date | How it treated our case | Paragraph | Status | Checked by.

        Rules:
        - Do NOT tell me whether the case is still good law. You cannot confirm that. Tell me how to check it.
        - Do not name later cases unless you mark each one "unverified: check at the source".
        - Remind me that a case can be good on one point and not on another.

        Use simple English.</pre>
            <ul class="ai-try-checks">
              <li>The AI gives steps, not a verdict on the case's status.</li>
              <li>Any later case it names is marked unverified. Check each one before you use it.</li>
              <li>It reminds you to check each point separately.</li>
              <li>Run the searches yourself and fill in the status table from the judgments you read.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> "Real" is not the same as "good law". Check every authority for later cases and changes in the statute, point by point, and write down its status with the date you checked.
        </div>
      HTML
      starter_code: nil
    },
    10 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-law">Law</div>
          <h1 class="lc-title">Verifying Every Citation</h1>
        </div>
        <p class="lc-lead">Every citation in your work is a promise to the reader. It says: this case exists, it says this, and it is still the law. Before a research note goes to a partner, a client or a court, each citation needs a full check. In this lesson you will learn a seven-part checklist and how to keep a verification log (a record of each check: what you checked, where, when and by whom). The log protects the client, the court and you.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 240" role="img" aria-label="Seven checks in order: case name, citation, court and bench, year and date, paragraph, quote, and still good law. After the seven checks, you log the result. If any check fails, you fix or remove the citation.">
            <defs><marker id="lr10a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="20" y="30" width="160" height="56" rx="8" fill="#1f1f44" stroke="#3b82f6"/><text x="100" y="53" font-weight="700">1 Case name</text><text x="100" y="72" font-size="11" fill="#9b99b8">exact parties, spelling</text>
              <rect x="205" y="30" width="160" height="56" rx="8" fill="#1f1f44" stroke="#3b82f6"/><text x="285" y="53" font-weight="700">2 Citation</text><text x="285" y="72" font-size="11" fill="#9b99b8">report, volume, page</text>
              <rect x="390" y="30" width="160" height="56" rx="8" fill="#1f1f44" stroke="#3b82f6"/><text x="470" y="53" font-weight="700">3 Court and bench</text><text x="470" y="72" font-size="11" fill="#9b99b8">which court, how many</text>
              <rect x="575" y="30" width="160" height="56" rx="8" fill="#1f1f44" stroke="#3b82f6"/><text x="655" y="53" font-weight="700">4 Year and date</text><text x="655" y="72" font-size="11" fill="#9b99b8">date of decision</text>
              <rect x="20" y="124" width="160" height="56" rx="8" fill="#1f1f44" stroke="#8b5cf6"/><text x="100" y="147" font-weight="700">5 Paragraph</text><text x="100" y="166" font-size="11" fill="#9b99b8">it supports the point</text>
              <rect x="205" y="124" width="160" height="56" rx="8" fill="#1f1f44" stroke="#8b5cf6"/><text x="285" y="147" font-weight="700">6 Quote</text><text x="285" y="166" font-size="11" fill="#9b99b8">word for word</text>
              <rect x="390" y="124" width="160" height="56" rx="8" fill="#1f1f44" stroke="#8b5cf6"/><text x="470" y="147" font-weight="700">7 Still good law</text><text x="470" y="166" font-size="11" fill="#9b99b8">not overruled or changed</text>
              <rect x="575" y="124" width="160" height="56" rx="8" fill="#27274e" stroke="#10b981"/><text x="655" y="147" font-weight="700">Log the result</text><text x="655" y="166" font-size="11" fill="#9b99b8">source, date, name</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#lr10a)">
                <line x1="180" y1="58" x2="201" y2="58"/><line x1="365" y1="58" x2="386" y2="58"/><line x1="550" y1="58" x2="571" y2="58"/>
                <path d="M655,86 L655,105 L100,105 L100,120"/>
                <line x1="180" y1="152" x2="201" y2="152"/><line x1="365" y1="152" x2="386" y2="152"/><line x1="550" y1="152" x2="571" y2="152"/>
              </g>
              <rect x="190" y="198" width="380" height="32" rx="8" fill="#27274e" stroke="#ec4899"/>
              <text x="380" y="219" fill="#f9a8d4">Any check fails: fix or remove the citation</text>
            </g>
          </svg>
          <figcaption>Seven checks for every citation, then a line in the log. One failed check is enough to stop a citation.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The seven-part checklist</h3>
          <table class="lc-table">
            <thead><tr><th>Check</th><th>What you do</th><th>A common AI error</th></tr></thead>
            <tbody>
              <tr><td><strong>1. Case name</strong></td><td>Find the case in a trusted database. Match the parties exactly.</td><td>A made-up case, or a real name with the wrong parties</td></tr>
              <tr><td><strong>2. Citation</strong></td><td>Open the citation itself. Confirm it leads to the same case.</td><td>A real citation that opens a different case</td></tr>
              <tr><td><strong>3. Court and bench</strong></td><td>Note the court and the number of judges. This sets its weight.</td><td>Calling a High Court case a Supreme Court case</td></tr>
              <tr><td><strong>4. Year and date</strong></td><td>Note the date of decision. It can differ from the year of the report.</td><td>Using the report year as the decision year</td></tr>
              <tr><td><strong>5. Paragraph</strong></td><td>Open the pinpoint paragraph. Confirm it supports your point. Name the source of the numbering.</td><td>A paragraph number that says something else</td></tr>
              <tr><td><strong>6. Quote</strong></td><td>Match every word against the judgment. Read the paragraphs around it for context.</td><td>A made-up quote, or words from a dissent or a lawyer's argument</td></tr>
              <tr><td><strong>7. Still good law</strong></td><td>Check later cases and amendments, as in the good law lesson.</td><td>Citing an overruled case, or old law</td></tr>
            </tbody>
          </table>
          <p>Statutes need checks too. Confirm each section on India Code, in the version in force on the relevant date.</p>
        </div>
        <div class="lc-card">
          <h3>Worked example: Pooja's verification log</h3>
          <p>An AI tool helped draft a research note for the made-up Rangrez Crafts matter. Pooja checks every citation before the note goes to Adv. Kavita Mehra. Entries 4 and 5 are errors made up for this lesson.</p>
          <table class="lc-table">
            <thead><tr><th>#</th><th>Citation in the draft</th><th>Checked at</th><th>Result</th><th>Action</th></tr></thead>
            <tbody>
              <tr><td>1</td><td>Kailash Nath Associates v. DDA, (2015) 4 SCC 136, para 43</td><td>SCC Online; [2015] 1 SCR 627</td><td>All 7 checks pass. Supreme Court, 2 judges, 9 Jan 2015.</td><td>Keep</td></tr>
              <tr><td>2</td><td>ONGC v. Saw Pipes Ltd., (2003) 5 SCC 705</td><td>SCC Online; later cases</td><td>Real. Good on section 74, but not for the wide "public policy" view.</td><td>Keep, section 74 point only</td></tr>
              <tr><td>3</td><td>Maula Bux v. Union of India, AIR 1970 SC 1955, "decided in 1970"</td><td>SCC Online; Indian Kanoon</td><td>Case is real, but it was decided on 19 Aug 1969. Also reported as (1969) 2 SCC 554.</td><td>Fix the date</td></tr>
              <tr><td>4</td><td>Kailash Nath, para 22: "loss need never be proved" [MADE-UP ERROR]</td><td>[2015] 1 SCR 627</td><td>Quote not found. Para 43 says proof is needed where loss can be proved.</td><td>Remove the quote</td></tr>
              <tr><td>5</td><td>Harbour Lamps Pvt Ltd v. Kesar Exports, (2018) 9 SCC 412 [MADE-UP CASE]</td><td>SCC Online; Indian Kanoon</td><td>No such case. The citation opens a different case.</td><td>Remove. Tell Adv. Sameer Rao.</td></tr>
            </tbody>
          </table>
          <p>Each log entry also records who checked it and when. Pooja adds "Checked by Pooja, 29 Sept 2026" and keeps the log in the matter file with the final note.</p>
        </div>
        <div class="lc-card">
          <h3>Good habits for the log</h3>
          <ul class="lc-list">
            <li><strong>Check at the source:</strong> an official report or a trusted database. A blog or an AI answer is never the source.</li>
            <li><strong>Check every citation,</strong> including ones a senior lawyer or an old memo gave you.</li>
            <li><strong>Record the source</strong> of paragraph numbers, because numbering can differ between reports.</li>
            <li><strong>Prefer your own paraphrase</strong> with a pinpoint to a long quote. Quote only words you have matched exactly.</li>
            <li><strong>Re-check before filing</strong> if weeks have passed. New judgments and amendments appear all the time.</li>
            <li><strong>Get sign-off:</strong> the lawyer who signs the document reviews the log. Here that is Adv. Kavita Mehra.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Activity: Pooja checks one citation</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="thought" data-label="Start">The AI draft says: "Maula Bux v. Union of India, AIR 1970 SC 1955, decided in 1970." Pooja copies it into the log.</li>
              <li data-kind="tool" data-label="Search">She searches the case name as a phrase in SCC Online.</li>
              <li data-kind="result" data-label="Found">One Supreme Court judgment matches. It is reported as (1969) 2 SCC 554 and as AIR 1970 SC 1955.</li>
              <li data-kind="check" data-label="Date">The date of decision is 19 August 1969. The draft used the year of the AIR report.</li>
              <li data-kind="check" data-label="Point">She reads the judgment. It deals with forfeiting earnest money and security deposits under section 74. This supports the draft's point.</li>
              <li data-kind="warn" data-label="Pinpoint">The draft gives no paragraph number. She adds the paragraph she read and names the report she used.</li>
              <li data-kind="result" data-label="Log">Result: real, date fixed, pinpoint added, later cases checked. She marks it "Verified" with her name and the date.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to turn a draft into a blank verification log and to flag anything that looks inconsistent. You then do every check yourself. The sample includes one made-up case for practice.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a legal research assistant in India. This is general education, not legal advice.

        Draft text: [paste your draft here, or use this sample]
        "Liquidated damages are a ceiling, not an automatic sum: Kailash Nath Associates v. Delhi Development Authority, (2015) 4 SCC 136, para 43. Forfeiting a security deposit as a penalty falls under section 74: Maula Bux v. Union of India, AIR 1970 SC 1955, decided in 1970. A buyer never needs to prove any loss: Harbour Lamps Pvt Ltd v. Kesar Exports, (2018) 9 SCC 412."
        (Harbour Lamps is a made-up case for practice.)

        Tasks:
        1. Make a verification log with one row per citation and one row per statute section. Columns: # | Exact text in draft | Case name | Citation | Court (as stated) | Date (as stated) | Paragraph | Quote | Still good law? | Checked at | Result | Checked by.
        2. Fill only the "as stated" columns from the draft. Leave Result, Checked at and Checked by blank.
        3. Flag anything I should look at closely, for example a missing paragraph number, a decision year that may differ from the report year, or a point stated too strongly.

        Do NOT say whether any case is real or what it holds. You cannot confirm that. I will check each one at the source.</pre>
            <ul class="ai-try-checks">
              <li>Every citation and section in the draft has its own row.</li>
              <li>The Result column is blank. The AI has not marked anything as verified or fake.</li>
              <li>It flags the missing pinpoint, the possible date issue and the word "never".</li>
              <li>Now check each row yourself. The Harbour Lamps case is made up, so you should not find it.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A citation is verified only when a person has checked all seven parts at the source and logged the result. The log turns "I think it is right" into proof that you checked.
        </div>
      HTML
      starter_code: nil
    },
    11 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-law">Law</div>
          <h1 class="lc-title">Writing a Research Memo</h1>
        </div>
        <p class="lc-lead">A research memo is a short internal document that answers one legal question for a partner or a client. It has five parts: the question presented, the short answer, the facts, the discussion and the conclusion. A good memo lets a busy partner understand the answer in one minute and check the reasoning in ten. In this lesson you will learn what goes in each part. You will also learn to use AI to structure and tighten a memo, without letting it add law. You will work on the made-up Rangrez Crafts matter. This is general education, not legal advice.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 326" role="img" aria-label="The five parts of a research memo, from top to bottom: question presented, short answer, facts, discussion and conclusion. Next to each part is what it does. At the bottom: every case and section in the memo is listed in a verification log.">
            <defs><marker id="lr11a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <text x="135" y="20" text-anchor="middle" font-weight="700" fill="#c4b5fd">Part of the memo</text>
              <text x="515" y="20" text-anchor="middle" font-weight="700" fill="#fcd34d">What it does</text>
              <rect x="20" y="30" width="230" height="42" rx="8" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="135" y="56" text-anchor="middle" font-weight="700">1. Question presented</text>
              <rect x="20" y="84" width="230" height="42" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="135" y="110" text-anchor="middle" font-weight="700">2. Short answer</text>
              <rect x="20" y="138" width="230" height="42" rx="8" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="135" y="164" text-anchor="middle" font-weight="700">3. Facts</text>
              <rect x="20" y="192" width="230" height="42" rx="8" fill="#1f1f44" stroke="#10b981"/>
              <text x="135" y="218" text-anchor="middle" font-weight="700">4. Discussion</text>
              <rect x="20" y="246" width="230" height="42" rx="8" fill="#1f1f44" stroke="#ec4899"/>
              <text x="135" y="272" text-anchor="middle" font-weight="700">5. Conclusion</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#lr11a)">
                <line x1="252" y1="51" x2="282" y2="51"/>
                <line x1="252" y1="105" x2="282" y2="105"/>
                <line x1="252" y1="159" x2="282" y2="159"/>
                <line x1="252" y1="213" x2="282" y2="213"/>
                <line x1="252" y1="267" x2="282" y2="267"/>
              </g>
              <g font-size="12" fill="#e2e0f0">
                <rect x="290" y="30" width="450" height="42" rx="8" fill="#27274e"/>
                <text x="306" y="56">One precise question: law, party, result, key facts</text>
                <rect x="290" y="84" width="450" height="42" rx="8" fill="#27274e"/>
                <text x="306" y="110">Direct answer first: yes, no or probably, with one reason</text>
                <rect x="290" y="138" width="450" height="42" rx="8" fill="#27274e"/>
                <text x="306" y="164">Only the facts that matter, with dates and sources</text>
                <rect x="290" y="192" width="450" height="42" rx="8" fill="#27274e"/>
                <text x="306" y="218">Rule, application and counter-arguments for each issue</text>
                <rect x="290" y="246" width="450" height="42" rx="8" fill="#27274e"/>
                <text x="306" y="272">Likely outcome, risks, next steps, open questions</text>
              </g>
              <text x="380" y="314" text-anchor="middle" font-size="12" fill="#9b99b8">Every case and section in the memo also goes into a verification log.</text>
            </g>
          </svg>
          <figcaption>The answer comes first. The reasoning follows, so a reader can check it.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>What goes in each part</h3>
          <table class="lc-table">
            <thead><tr><th>Part</th><th>What to write</th><th>Common mistake</th></tr></thead>
            <tbody>
              <tr><td><strong>Heading</strong></td><td>To, from, date, client and matter. Firms usually mark it "Privileged and confidential".</td><td>No date. A reader cannot tell how current the law is.</td></tr>
              <tr><td><strong>Question presented</strong></td><td>One precise question for each issue, using the pattern from the framing lesson</td><td>A vague question such as "What are the client's rights?"</td></tr>
              <tr><td><strong>Short answer</strong></td><td>"Yes", "No" or "Probably", then one or two sentences on why</td><td>Hiding the answer at the end of the discussion</td></tr>
              <tr><td><strong>Facts</strong></td><td>Only the facts the analysis uses, with dates. Mark any fact still to be confirmed.</td><td>Adding facts that are not in the documents</td></tr>
              <tr><td><strong>Discussion</strong></td><td>For each issue: the rule (statute and verified cases), how it applies, the other side's best argument</td><td>Only the arguments that help the client</td></tr>
              <tr><td><strong>Conclusion</strong></td><td>The likely outcome, the main risks, next steps and open questions</td><td>Sounding more certain than the law allows</td></tr>
            </tbody>
          </table>
          <p>Write for a reader who is busy and careful. Use short paragraphs and headings for each issue. Put a pinpoint (the exact paragraph or page) with every case you cite.</p>
        </div>
        <div class="lc-card">
          <h3>Worked example: the short answer for Rangrez</h3>
          <p>Adv. Sameer Rao is writing a memo for Adv. Kavita Mehra on the made-up Rangrez Crafts matter. Here is his first issue. Compare the weak and better short answers.</p>
          <pre><code>Question presented
        Under section 74 of the Indian Contract Act, 1872, can Rangrez
        recover liquidated damages under clause 9 (2% of Rs 4,80,000 per
        week, so Rs 28,800 for 3 weeks) from Shiva Metalworks, when the
        lamps came 3 weeks late and Rangrez gave written notice of its
        rights on the day it accepted them?

        Weak short answer
        Yes. Liquidated damages are always payable as agreed.

        Better short answer
        Probably yes, up to Rs 28,800. Section 74 lets the tribunal award
        reasonable compensation up to the sum named in the contract.
        Rangrez can show real loss from the delay (for example, Rs 36,000
        paid for replacement lamps). Where part of the loss is hard to
        prove exactly, a genuine pre-estimate can be the measure.
        The main risk is Neha's WhatsApp reply of 25 August, which the
        supplier may call an extension. Clause 4 helps Rangrez here.</code></pre>
          <p>The weak answer is wrong in law. Section 74 does not make the named sum automatically payable. The better answer gives a direct view, the limit, one reason and the main risk.</p>
          <p>In the discussion, Sameer then sets out the rule with verified Supreme Court cases. For example, <em>Kailash Nath Associates v. Delhi Development Authority</em>, (2015) 4 SCC 136, summarises the law on section 74 at paragraph 43. He read that paragraph himself before citing it.</p>
        </div>
        <div class="lc-card">
          <h3>Where AI helps with a memo, and where it must not</h3>
          <ul class="lc-list">
            <li><strong>Good:</strong> turn your research notes into the five-part structure.</li>
            <li><strong>Good:</strong> write the facts section from a checked timeline, in plain words.</li>
            <li><strong>Good:</strong> suggest the other side's best arguments, so you can research them.</li>
            <li><strong>Good:</strong> shorten long sentences and flag words like "always" and "never".</li>
            <li><strong>Not allowed:</strong> adding any case, section or quote you have not verified yourself.</li>
          </ul>
          <pre><code>Weak prompt:   Write a legal memo on liquidated damages for my client.

        Better prompt: Turn my notes below into a research memo with five
                       parts: question presented, short answer, facts,
                       discussion, conclusion. Use ONLY the authorities in
                       my notes. Do not add any case, section or quote.
                       Where my notes have a gap, write [RESEARCH NEEDED].
                       Keep the short answer under 80 words.
                       [paste anonymised notes and verified authorities]</code></pre>
          <p>Use your firm's approved AI tool. Remove client names and private details before you paste notes into it.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: Sameer reviews an AI-drafted memo</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Prompt">Sameer pastes his anonymised notes and five verified authorities into the firm's approved AI tool. He asks for a five-part memo using only those sources.</li>
              <li data-kind="answer" data-label="AI draft">The AI returns a clear memo. The short answer says: "The buyer will certainly recover the full liquidated damages."</li>
              <li data-kind="warn" data-label="Too certain">"Certainly" is wrong. Section 74 allows reasonable compensation up to the named sum, and the tribunal decides. Sameer changes it to "probably, up to Rs 28,800".</li>
              <li data-kind="warn" data-label="Extra case">The discussion cites a sixth case that was not in his notes. He searches SCC Online and Indian Kanoon and cannot find it. He deletes it and records this in his log.</li>
              <li data-kind="check" data-label="Facts">He checks every date and amount in the facts section against the contract, bank statement and emails.</li>
              <li data-kind="check" data-label="Other side">He adds the supplier's best argument: that the WhatsApp reply of 25 August extended the delivery date.</li>
              <li data-kind="result" data-label="Ready">The memo, with its verification log, goes to Adv. Kavita Mehra for review.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Give AI your research notes and ask for a memo that uses only your sources. The sample notes describe the made-up Rangrez matter without names.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a legal writing assistant for an Indian law firm. This is general education, not legal advice.

        Turn my research notes into a research memo with these parts: Heading, Question presented, Short answer, Facts, Discussion, Conclusion.

        My notes (names removed): [Buyer paid Rs 4,00,000 advance for 800 lamps at Rs 600 each. Delivery due 31 August 2026; contract says time is of the essence. Supplier asked for "2-3 more weeks" on 25 August; buyer replied "Ok but please hurry". 560 lamps came on 21 September; buyer accepted them and emailed the same day reserving its rights under the damages clause. Clause 9: 2% of the price per week of delay, capped at 10%. Clause 4: an extension does not waive clause 9 unless the buyer waives it expressly in writing. Verified law: section 74 Indian Contract Act (reasonable compensation up to the named sum); section 55 (notice when accepting late performance).]

        Rules:
        1. Use ONLY the law in my notes. Do not add any case, section or quote.
        2. Where more research is needed, write [RESEARCH NEEDED].
        3. Short answer: under 80 words, starting with Yes, No or Probably.
        4. In the discussion, include the other side's best argument.
        5. Use simple English and short paragraphs.</pre>
            <ul class="ai-try-checks">
              <li>No case, section or quote appears that was not in your notes.</li>
              <li>The short answer is direct and does not say "certainly" or "always".</li>
              <li>Every date and amount in the facts matches your notes.</li>
              <li>The discussion covers the WhatsApp reply as the other side's argument.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Put the answer first and the reasoning after it. Let AI shape and shorten the memo, but only from law you have verified. The memo carries your name, so every sentence in it is your responsibility.
        </div>
      HTML
      starter_code: nil
    },
    12 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-law">Law</div>
          <h1 class="lc-title">Comparing Laws Across Jurisdictions</h1>
        </div>
        <p class="lc-lead">A jurisdiction is a place with its own legal system, such as India, England and Wales, or Singapore. Lawyers sometimes look at foreign law for ideas, for a contract with a foreign party, or because a judgment cites it. AI tools also mix up the law of different countries without warning. In this lesson you will learn what weight foreign law has in India, and how to compare laws carefully. You will use a real example: how India and England treat penalty clauses. This is general education, not legal advice.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 330" role="img" aria-label="One question, is a clause of 2% per week of delay enforceable, answered in three places. India: section 74 of the Contract Act, reasonable compensation up to the named sum, binding in India. England and Wales: Cavendish v Makdessi, 2015, asks if the detriment is out of all proportion to a legitimate interest; persuasive only. Singapore: Denka Advantech, 2020, kept the older genuine pre-estimate test; persuasive only. Bottom: in an Indian forum, Indian law decides.">
            <defs><marker id="lr12a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="170" y="12" width="420" height="40" rx="8" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="380" y="37" font-weight="700">Is "2% per week of delay" enforceable?</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#lr12a)">
                <path d="M300,54 L135,76"/>
                <line x1="380" y1="54" x2="380" y2="76"/>
                <path d="M460,54 L625,76"/>
              </g>
              <rect x="20" y="80" width="230" height="170" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="135" y="104" font-weight="700" fill="#6ee7b7">India</text>
              <g font-size="12">
                <text x="135" y="130">Contract Act, section 74</text>
                <text x="135" y="150">Reasonable compensation,</text>
                <text x="135" y="168">up to the named sum</text>
                <text x="135" y="194" fill="#9b99b8">Fateh Chand (1963): no</text>
                <text x="135" y="212" fill="#9b99b8">penalty or LD split</text>
              </g>
              <rect x="265" y="80" width="230" height="170" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="380" y="104" font-weight="700" fill="#93c5fd">England and Wales</text>
              <g font-size="12">
                <text x="380" y="130">Cavendish v Makdessi (2015)</text>
                <text x="380" y="150">Is the detriment out of all</text>
                <text x="380" y="168">proportion to a legitimate</text>
                <text x="380" y="186">interest? If so, a penalty.</text>
                <text x="380" y="212" fill="#9b99b8">A penalty is not enforced</text>
              </g>
              <rect x="510" y="80" width="230" height="170" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="625" y="104" font-weight="700" fill="#fcd34d">Singapore</text>
              <g font-size="12">
                <text x="625" y="130">Denka Advantech (2020)</text>
                <text x="625" y="150">Kept the older test:</text>
                <text x="625" y="168">a genuine pre-estimate</text>
                <text x="625" y="186">of the likely loss</text>
                <text x="625" y="212" fill="#9b99b8">Did not follow Cavendish</text>
              </g>
              <g font-size="12" font-weight="700">
                <rect x="60" y="226" width="150" height="16" rx="8" fill="#10b981" opacity="0.25"/>
                <text x="135" y="239" fill="#6ee7b7">Binding in India</text>
                <rect x="305" y="226" width="150" height="16" rx="8" fill="#3b82f6" opacity="0.25"/>
                <text x="380" y="239" fill="#93c5fd">Persuasive only</text>
                <rect x="550" y="226" width="150" height="16" rx="8" fill="#f59e0b" opacity="0.25"/>
                <text x="625" y="239" fill="#fcd34d">Persuasive only</text>
              </g>
              <rect x="20" y="268" width="720" height="48" rx="8" fill="#27274e" stroke="#ec4899"/>
              <text x="380" y="289">In an Indian court or arbitration, section 74 and Indian cases decide.</text>
              <text x="380" y="307" font-size="11" fill="#9b99b8">Foreign cases can only offer reasons. They never replace the Indian rule.</text>
            </g>
          </svg>
          <figcaption>The same clause is judged by different tests in different places. Always know which test your forum uses.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>What weight foreign law has in India</h3>
          <ul class="lc-list">
            <li><strong>Never binding:</strong> a judgment from the UK, the USA or Singapore does not bind any Indian court.</li>
            <li><strong>Sometimes persuasive:</strong> an Indian court may refer to a foreign judgment for its reasoning. This is more likely where Indian law is silent, or where the statute has similar words.</li>
            <li><strong>Indian law comes first:</strong> if an Indian statute or a Supreme Court judgment answers the point, foreign law cannot change that answer.</li>
            <li><strong>Foreign law as a fact:</strong> if a contract is governed by foreign law, that law may need to be proved, often with expert evidence. Research the rules of your forum on this.</li>
          </ul>
          <p>Many older Indian contract cases discuss English law, because the Contract Act of 1872 came from the English tradition. But the Indian statute can differ from English law in important ways. So you must always start from the Indian text.</p>
        </div>
        <div class="lc-card">
          <h3>Worked example: penalty clauses in India and England</h3>
          <p>Clause 9 of the made-up Rangrez contract calls its 2% per week sum "liquidated damages and not a penalty". An AI tool tells Pooja: "Under the Cavendish test, the clause is valid if it protects a legitimate interest." Is that useful for a Rajasthan arbitration? Pooja compares the two systems.</p>
          <table class="lc-table">
            <thead><tr><th>Point</th><th>India</th><th>England and Wales</th></tr></thead>
            <tbody>
              <tr><td><strong>Source of the rule</strong></td><td>Section 74 of the Indian Contract Act, 1872</td><td>Judge-made law (the common law)</td></tr>
              <tr><td><strong>Leading case</strong></td><td><em>Fateh Chand v. Balkishan Dass</em>, AIR 1963 SC 1405 (Supreme Court, Constitution Bench)</td><td><em>Cavendish Square Holding BV v Makdessi</em> [2015] UKSC 67 (UK Supreme Court, decided 4 November 2015)</td></tr>
              <tr><td><strong>The test</strong></td><td>The court awards reasonable compensation, not more than the sum named. It does not matter whether the clause is called a penalty.</td><td>A clause is a penalty if its burden on the party in breach is out of all proportion. The court compares it with the other party's legitimate interest.</td></tr>
              <tr><td><strong>Effect</strong></td><td>The named sum is an upper limit. Some loss is generally needed, though exact proof may not be, as <em>Kailash Nath</em> (2015) explains.</td><td>A penalty clause is not enforced. The claimant is left with ordinary damages.</td></tr>
              <tr><td><strong>Weight in Rajasthan</strong></td><td>Binding</td><td>Persuasive at most</td></tr>
            </tbody>
          </table>
          <p>So the AI's answer uses the wrong test for this forum. Under Indian law, the question is what reasonable compensation is, up to ₹28,800. <em>Cavendish</em> replaced the older English "genuine pre-estimate of loss" test. But other countries have not all followed it. In <em>Denka Advantech Pte Ltd v Seraya Energy Pte Ltd</em> [2020] SGCA 119, Singapore's Court of Appeal kept the older test. Read each judgment at a trusted source before you rely on this summary.</p>
        </div>
        <div class="lc-card">
          <h3>How to compare laws carefully</h3>
          <ol class="lc-list">
            <li><strong>Name the exact jurisdiction.</strong> "UK law" is not one system. England and Wales, Scotland and Northern Ireland differ.</li>
            <li><strong>Compare the sources.</strong> Is the rule in a statute or in case law? Are the words of the statutes the same?</li>
            <li><strong>Check that each rule is current.</strong> <em>Cavendish</em> changed English law in 2015. An older textbook may show the old test.</li>
            <li><strong>Compare results, not only labels.</strong> Two systems may use the same words, such as "penalty", with different effects.</li>
            <li><strong>Mark the weight.</strong> Write "binding" or "persuasive only" next to every foreign authority in your memo.</li>
          </ol>
          <pre><code>Weak prompt:   Is a 2% per week delay clause a penalty?

        Better prompt: Compare how India and England and Wales treat a
                       contract clause that fixes damages for delay.
                       For each: the source of the rule (statute or case
                       law), the test, and the effect if the clause fails.
                       Say which rule an arbitration seated in Rajasthan,
                       under Indian law, would apply. Mark every case you
                       name "verify" and do not quote judgments.</code></pre>
        </div>
        <div class="lc-card">
          <h3>Activity: can Pooja use this in the memo?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">The Rangrez dispute is under Indian law, with an arbitration seated in Rajasthan. Sort each statement.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="ok" data-label="Fine to use"></div>
              <div data-sorter-target="bucket" data-bucket="care" data-label="Use with care"></div>
              <div data-sorter-target="bucket" data-bucket="no" data-label="Do not use"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="ok" data-why="This is the Indian statute, applied by a verified Supreme Court case. It binds the tribunal.">Section 74 allows reasonable compensation up to the named sum, as explained in Fateh Chand.</li>
              <li data-bucket="care" data-why="It can be mentioned as a contrast, clearly marked as English law and persuasive only.">English law now asks whether a clause protects a legitimate interest (Cavendish, 2015).</li>
              <li data-bucket="no" data-why="Foreign judgments never bind Indian courts or tribunals.">Cavendish binds the Rajasthan tribunal because Indian contract law came from England.</li>
              <li data-bucket="no" data-why="This mixes two systems. Under section 74 the sum is an upper limit, not an automatic payment or a void clause.">Clause 9 is void as a penalty, so Rangrez can claim nothing under it.</li>
              <li data-bucket="care" data-why="A foreign case can show a line of reasoning, but it must be marked as persuasive and checked at the source.">A Singapore court kept the genuine pre-estimate test, so the idea still has support abroad.</li>
              <li data-bucket="ok" data-why="Marking the weight of each source is exactly what a careful comparison needs.">Foreign cases are listed separately in the memo, each marked "persuasive only".</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI for a careful comparison table between two jurisdictions. Then check every rule it gives at a trusted source.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a comparative law research assistant. This is general education, not legal advice.

        Topic: [how the law treats a contract clause that fixes the damages payable for late delivery]
        Jurisdictions: [India] and [England and Wales]
        My forum: [an arbitration seated in Rajasthan, India, under Indian law]

        Make a table with these rows: source of the rule (statute or case law), the main test, the effect if the clause fails the test, whether actual loss must be shown, and the weight of this law in my forum (binding or persuasive only).

        Then:
        1. List 3 ways the two systems differ that could change the result.
        2. List 2 mistakes a lawyer could make by mixing them up.
        3. List any cases you mention in a separate "To verify" list with the court and year only.

        Rules: Do not quote any judgment. If you are not sure a rule is current, say so. Use simple English.</pre>
            <ul class="ai-try-checks">
              <li>The table names the right source in each place (for India, section 74 of the Contract Act).</li>
              <li>Foreign law is marked "persuasive only" for an Indian forum.</li>
              <li>Every case in the "To verify" list is checked at a trusted source before use.</li>
              <li>The answer does not treat "UK law" as one system.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Foreign law can explain and persuade, but it never decides an Indian case. Name the exact jurisdiction, compare the sources and the effects, and mark the weight of every foreign authority you use.
        </div>
      HTML
      starter_code: nil
    },
    13 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-law">Law</div>
          <h1 class="lc-title">Research for Business and Compliance Questions</h1>
        </div>
        <p class="lc-lead">Business clients often ask what they must do to stay legal. This is a compliance question: which rules a business must follow, and how. The answers are often not in Acts alone. They are in rules, regulations, circulars and notifications from regulators such as the RBI, SEBI and MeitY. These change often. In this lesson you will learn where to find them and how to check that they are current. You will then turn them into a clear compliance checklist. This is general education, not legal, tax or financial advice.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="Six steps for compliance research in two rows: frame the question, find the regulator, read the source, check it is current, build a checklist, and assign an owner and a review date. Below, four example regulators: RBI for banks, payments and forex; SEBI for securities and listed firms; MeitY for IT Act rules and data protection; CBIC for GST.">
            <defs><marker id="lr13a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="20" y="16" width="220" height="56" rx="8" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="130" y="40" font-weight="700">1. Frame the question</text>
              <text x="130" y="59" font-size="11" fill="#9b99b8">who, what activity, where</text>
              <rect x="270" y="16" width="220" height="56" rx="8" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="380" y="40" font-weight="700">2. Find the regulator</text>
              <text x="380" y="59" font-size="11" fill="#9b99b8">which body makes the rules</text>
              <rect x="520" y="16" width="220" height="56" rx="8" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="630" y="40" font-weight="700">3. Read the source</text>
              <text x="630" y="59" font-size="11" fill="#9b99b8">Act, rules, circulars</text>
              <rect x="520" y="112" width="220" height="56" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="630" y="136" font-weight="700">4. Check it is current</text>
              <text x="630" y="155" font-size="11" fill="#9b99b8">amendments, dates in force</text>
              <rect x="270" y="112" width="220" height="56" rx="8" fill="#1f1f44" stroke="#10b981"/>
              <text x="380" y="136" font-weight="700">5. Build a checklist</text>
              <text x="380" y="155" font-size="11" fill="#9b99b8">duty, deadline, evidence</text>
              <rect x="20" y="112" width="220" height="56" rx="8" fill="#1f1f44" stroke="#10b981"/>
              <text x="130" y="136" font-weight="700">6. Owner and review</text>
              <text x="130" y="155" font-size="11" fill="#9b99b8">who acts, when to recheck</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#lr13a)">
                <line x1="240" y1="44" x2="266" y2="44"/>
                <line x1="490" y1="44" x2="516" y2="44"/>
                <line x1="630" y1="72" x2="630" y2="108"/>
                <line x1="520" y1="140" x2="494" y2="140"/>
                <line x1="270" y1="140" x2="244" y2="140"/>
              </g>
              <text x="380" y="200" font-size="12" fill="#c4b5fd">Some regulators and the areas they cover (examples)</text>
              <rect x="20" y="212" width="165" height="62" rx="8" fill="#27274e" stroke="#3b82f6"/>
              <text x="102" y="236" font-weight="700">RBI</text>
              <text x="102" y="256" font-size="11" fill="#9b99b8">banks, payments, forex</text>
              <rect x="205" y="212" width="165" height="62" rx="8" fill="#27274e" stroke="#3b82f6"/>
              <text x="287" y="236" font-weight="700">SEBI</text>
              <text x="287" y="256" font-size="11" fill="#9b99b8">securities, listed firms</text>
              <rect x="390" y="212" width="165" height="62" rx="8" fill="#27274e" stroke="#3b82f6"/>
              <text x="472" y="236" font-weight="700">MeitY</text>
              <text x="472" y="256" font-size="11" fill="#9b99b8">IT Act rules, DPDP</text>
              <rect x="575" y="212" width="165" height="62" rx="8" fill="#27274e" stroke="#3b82f6"/>
              <text x="657" y="236" font-weight="700">CBIC</text>
              <text x="657" y="256" font-size="11" fill="#9b99b8">central GST, customs</text>
              <text x="380" y="292" font-size="11" fill="#9b99b8">States also issue their own rules, for example on state GST, shops and labour.</text>
            </g>
          </svg>
          <figcaption>Compliance research ends with a checklist that someone owns and checks again, not with a summary.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The kinds of documents you will meet</h3>
          <table class="lc-table">
            <thead><tr><th>Document</th><th>What it is</th><th>How much it binds</th></tr></thead>
            <tbody>
              <tr><td><strong>Act</strong></td><td>The law passed by Parliament or a state, such as the Digital Personal Data Protection Act, 2023</td><td>Binding</td></tr>
              <tr><td><strong>Rules and regulations</strong></td><td>Detailed law made under an Act, by the government or a regulator such as SEBI</td><td>Binding, if made within the powers of the Act</td></tr>
              <tr><td><strong>Master directions and master circulars</strong></td><td>A regulator's collected instructions on one topic, updated over time (used by the RBI and SEBI)</td><td>Binding on the businesses they regulate. Check the latest version.</td></tr>
              <tr><td><strong>Circulars and notifications</strong></td><td>Changes, new duties, dates and procedures</td><td>Usually binding on those they are addressed to. Read who they apply to.</td></tr>
              <tr><td><strong>FAQs, advisories and press releases</strong></td><td>Explanations and guidance</td><td>Helpful, but usually not law. Rely on the Act and rules.</td></tr>
            </tbody>
          </table>
          <p>Find these on the regulator's own website, for example rbi.org.in, sebi.gov.in, meity.gov.in and cbic-gst.gov.in, and in the Gazette of India. News articles and AI summaries only tell you where to look.</p>
        </div>
        <div class="lc-card">
          <h3>Worked example: Rangrez starts selling online</h3>
          <p>Neha tells Mehra &amp; Rao that Rangrez Crafts will soon sell lamps from its own website to buyers across India. It will collect names, phone numbers and addresses. She asks: "What rules must we follow?" Pooja frames two research questions and builds a first checklist. All details are made up, and the checklist is general.</p>
          <table class="lc-table">
            <thead><tr><th>Duty to research</th><th>Source to read</th><th>What to confirm</th><th>Owner</th></tr></thead>
            <tbody>
              <tr><td>GST registration and invoices for sales to other states</td><td>CGST and IGST Acts, rules, CBIC notifications</td><td>Whether Rangrez's current registration covers these sales. Ask its chartered accountant (CA).</td><td>Neha and her CA</td></tr>
              <tr><td>Privacy notice and consent for customer data</td><td>DPDP Act 2023 and DPDP Rules 2025</td><td>What the notice must say, and from which date the duty applies</td><td>Pooja, then Adv. Sameer Rao</td></tr>
              <tr><td>Keeping customer data safe, and reporting a breach</td><td>DPDP Act and Rules; IT Act rules</td><td>Security steps, breach reporting, how long data may be kept</td><td>Rangrez's web developer, with the firm</td></tr>
              <tr><td>Consumer duties for online sellers</td><td>Consumer Protection Act 2019 and its e-commerce rules</td><td>Seller details, returns and refund information on the site</td><td>Pooja</td></tr>
            </tbody>
          </table>
          <p><strong>Dates matter here.</strong> The DPDP Rules were notified on 13 November 2025. As published, most duties for businesses start after an 18-month period. But the government has discussed changing some dates. So Pooja writes "check the current notification" next to every DPDP date.</p>
        </div>
        <div class="lc-card">
          <h3>How AI helps with compliance research</h3>
          <ul class="lc-list">
            <li><strong>Good:</strong> paste the official text of a rule or circular, and ask AI to list each duty, who it applies to and any deadline.</li>
            <li><strong>Good:</strong> paste an old and a new version, and ask what changed.</li>
            <li><strong>Good:</strong> turn a list of duties into a checklist table with owners and review dates.</li>
            <li><strong>Risky:</strong> asking "What are the current RBI rules on X?" from the AI's memory. Its training data may be months old, and circulars change often.</li>
          </ul>
          <pre><code>Weak prompt:   What does a small online seller need to do under the
                       DPDP law?

        Better prompt: Below is the official text of [rule number and title]
                       from [source], downloaded on [date]. List each duty it
                       creates in a table: duty, who must do it, deadline or
                       start date, evidence of compliance. Quote the rule
                       number for each duty. If the text does not say
                       something, write "not stated". Do not add duties
                       from other laws.
                       [paste official text]</code></pre>
          <p>The better prompt makes the AI work from the real text, so you can check each line against it.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: put the compliance research in order</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Pooja is researching Rangrez's duties for its new online store. Put her steps in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Write down the activity: online sales across India, collecting customer names, phones and addresses</li>
              <li data-order="2">List the laws and regulators that may apply, such as the DPDP Act, GST law and consumer rules</li>
              <li data-order="3">Download the official Acts, rules and latest notifications from government websites</li>
              <li data-order="4">Check the dates each duty starts, and any recent amendment or proposed change</li>
              <li data-order="5">Use AI to turn the official text into a draft checklist, then check each line against the text</li>
              <li data-order="6">Assign an owner and a review date for each duty, and send it to Adv. Sameer Rao for review</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Paste the text of an official rule or circular, or use the sample, and ask AI to turn it into a checklist.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a compliance research assistant for a small Indian business. This is general education, not legal or tax advice.

        Business: [a small handicrafts brand in Rajasthan that is starting to sell online to customers across India and will collect customer names, phone numbers and addresses]

        Official text: [paste the text of one rule, regulation or circular here. If you have none, list the kinds of duties that data protection and consumer laws commonly place on a small online seller, and mark every item "confirm in the official text".]

        Tasks:
        1. Make a checklist table with these columns: Duty, Source (Act, rule or circular number), Who must act, Start date or deadline, Evidence we keep, Owner, Next review date.
        2. Mark any date or number "check the current notification".
        3. List 3 questions to ask a lawyer or chartered accountant.

        Rules: Use only the official text I gave for the Source column. Do not invent rule numbers. Use simple English.</pre>
            <ul class="ai-try-checks">
              <li>Every duty with a source points to a rule or section you can find in the official text.</li>
              <li>No rule numbers appear that are not in the text you pasted.</li>
              <li>Dates and numbers are marked for checking against the current notification.</li>
              <li>Each duty has an owner and a review date.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Compliance law lives in rules and circulars that change often. Work from the official text, check the dates in force, and end with a checklist that has an owner and a review date. Let AI organise the text, not supply it.
        </div>
      HTML
      starter_code: nil
    },
    14 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-law">Law</div>
          <h1 class="lc-title">Ethics and Responsibility in AI Research</h1>
        </div>
        <p class="lc-lead">AI changes how legal work is done, but it does not change who is responsible for it. An advocate owes duties to the court and to the client. These include candour (being honest and never misleading the court), confidentiality, proper supervision of juniors, and fair dealing with clients. In this lesson you will see how each duty applies when you use AI. You will also see what courts and bar bodies have said about AI so far. This is general education, not legal advice.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 290" role="img" aria-label="Top row, a chain of responsibility: the AI tool drafts and can be wrong; Pooja the paralegal checks each source; Sameer Rao the associate reviews the work; Kavita Mehra the partner signs and is responsible; the court or client relies on it. Bottom row, four duties that apply at every step: candour, confidentiality, supervision and disclosure.">
            <defs><marker id="lr14a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="380" y="18" font-size="12" fill="#c4b5fd">Who is responsible for AI-assisted work</text>
              <rect x="16" y="30" width="136" height="56" rx="8" fill="#27274e" stroke="#9b99b8"/>
              <text x="84" y="54" font-weight="700">AI tool</text>
              <text x="84" y="73" font-size="11" fill="#9b99b8">a helper only</text>
              <rect x="164" y="30" width="136" height="56" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="232" y="54" font-weight="700">Pooja</text>
              <text x="232" y="73" font-size="11" fill="#9b99b8">paralegal</text>
              <rect x="312" y="30" width="136" height="56" rx="8" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="380" y="54" font-weight="700">Sameer Rao</text>
              <text x="380" y="73" font-size="11" fill="#9b99b8">associate</text>
              <rect x="460" y="30" width="136" height="56" rx="8" fill="#1f1f44" stroke="#ec4899"/>
              <text x="528" y="54" font-weight="700">Kavita Mehra</text>
              <text x="528" y="73" font-size="11" fill="#9b99b8">partner</text>
              <rect x="608" y="30" width="136" height="56" rx="8" fill="#1f1f44" stroke="#10b981"/>
              <text x="676" y="54" font-weight="700">Court or client</text>
              <text x="676" y="73" font-size="11" fill="#9b99b8">relies on the work</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#lr14a)">
                <line x1="152" y1="58" x2="161" y2="58"/><line x1="300" y1="58" x2="309" y2="58"/><line x1="448" y1="58" x2="457" y2="58"/><line x1="596" y1="58" x2="605" y2="58"/>
              </g>
              <g font-size="11" fill="#e2e0f0">
                <text x="84" y="106">drafts, can be wrong</text>
                <text x="232" y="106">checks each source</text>
                <text x="380" y="106">reviews the work</text>
                <text x="528" y="106">signs, is responsible</text>
                <text x="676" y="106">trusts it is accurate</text>
              </g>
              <line x1="16" y1="128" x2="744" y2="128" stroke="#4b4a78" stroke-dasharray="4 4"/>
              <text x="380" y="152" font-size="12" fill="#fcd34d">Duties that apply at every step</text>
              <rect x="16" y="166" width="172" height="70" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="102" y="194" font-weight="700">Candour</text>
              <text x="102" y="215" font-size="11" fill="#9b99b8">never mislead the court</text>
              <rect x="200" y="166" width="172" height="70" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="286" y="194" font-weight="700">Confidentiality</text>
              <text x="286" y="215" font-size="11" fill="#9b99b8">protect client secrets</text>
              <rect x="384" y="166" width="172" height="70" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="470" y="194" font-weight="700">Supervision</text>
              <text x="470" y="215" font-size="11" fill="#9b99b8">check juniors' AI work</text>
              <rect x="568" y="166" width="172" height="70" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="654" y="194" font-weight="700">Disclosure</text>
              <text x="654" y="215" font-size="11" fill="#9b99b8">be open, bill fairly</text>
              <text x="380" y="270" font-size="12" fill="#9b99b8">The advocate who signs or files the work answers for every word in it.</text>
            </g>
          </svg>
          <figcaption>AI sits at the start of the chain. Responsibility sits with the people who check, sign and file.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Your duties as an advocate in India</h3>
          <p>The Advocates Act, 1961 lets the Bar Council of India make rules on professional conduct. These are in Part VI, Chapter II of the Bar Council of India Rules. A State Bar Council can punish an advocate for professional misconduct under section 35 of the Act. Here is how the main duties apply to AI.</p>
          <table class="lc-table">
            <thead><tr><th>Duty</th><th>What it means</th><th>What it means with AI</th></tr></thead>
            <tbody>
              <tr><td><strong>Candour to the court</strong></td><td>Do not mislead the court on facts or law.</td><td>Every citation and quote you file is your statement to the court. Filing a fake AI case can mislead the court, even by mistake.</td></tr>
              <tr><td><strong>Confidentiality</strong></td><td>Keep the client's information secret. Communications with a legal adviser are also protected by law, now in section 132 of the Bharatiya Sakshya Adhiniyam.</td><td>Do not paste client names, documents or private facts into public AI tools. Use approved tools and remove details first.</td></tr>
              <tr><td><strong>Competence and care</strong></td><td>Do the work with proper skill and attention.</td><td>Know what your AI tool can and cannot do. Read the sources yourself.</td></tr>
              <tr><td><strong>No advertising or solicitation</strong></td><td>Rule 36 of the Bar Council of India Rules bars advocates from advertising or soliciting work.</td><td>Take care with AI-written posts or "client alerts" that promote the firm. Check the current Bar Council guidance.</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>What courts and bar bodies have said</h3>
          <table class="lc-table">
            <thead><tr><th>Source</th><th>What it says (in general words)</th><th>Weight in India</th></tr></thead>
            <tbody>
              <tr><td><strong>Kerala High Court</strong>, policy of 19 July 2025</td><td>For its district judiciary: AI only as an assistive tool, not for findings, orders or judgments. AI output, including citations, must be checked. Only approved tools may be used.</td><td>Binding on those courts and their staff. Useful guidance for everyone.</td></tr>
              <tr><td><strong>Supreme Court of India</strong>, 27 February 2026 (<em>Gummadi Usha Rani v. Sure Mallikarjuna Rao</em>)</td><td>A trial court had relied on four non-existent, AI-generated "judgments". The Court said relying on fake judgments would be misconduct with legal consequences. It sought help from the Attorney General, the Solicitor General and the Bar Council of India.</td><td>A strong signal from the highest court. Check the case for later orders.</td></tr>
              <tr><td><strong>American Bar Association</strong>, Formal Opinion 512 (29 July 2024)</td><td>US lawyers using generative AI must think about competence, confidentiality, client communication, candour to the court, supervision and reasonable fees.</td><td>Not binding in India. A clear list of issues to consider.</td></tr>
              <tr><td><strong>USA</strong>, <em>Mata v. Avianca, Inc.</em> (2023)</td><td>Lawyers who filed six fake AI cases were fined US$5,000 with their firm, and ordered to write to the judges falsely named.</td><td>Not binding. A warning of what can happen.</td></tr>
            </tbody>
          </table>
          <p>Courts keep issuing new guidance. Some courts may ask you to disclose AI use in filings. Before you file anything, check the current rules and practice directions of that court.</p>
        </div>
        <div class="lc-card">
          <h3>How Mehra &amp; Rao puts this into practice</h3>
          <p>Adv. Kavita Mehra writes a one-page AI policy for the made-up firm. Here is a short version.</p>
          <pre><code>Mehra &amp; Rao Associates: AI use rules (made-up example)
        1. Tools:        Use only firm-approved AI tools. No public chatbots
                         for client matters.
        2. Client data:  Remove names and private details before any prompt.
        3. Citations:    No case, section or quote is used until a person
                         has checked it at a trusted source and logged it.
        4. Supervision:  The associate reviews all AI-assisted work by
                         juniors. The partner signs off before it leaves.
        5. Court:        Follow each court's rules on AI use and disclosure.
        6. Clients:      Explain in the engagement letter how we use AI.
                         Bill only for real work done. Do not charge the
                         client for hours the AI saved.
        7. Decisions:    AI never decides advice, strategy or what to file.</code></pre>
          <p>A policy only works if people follow it. The partner is responsible for making sure juniors are trained and supervised.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: is this use of AI acceptable?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each action at Mehra &amp; Rao into the right bucket.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="ok" data-label="Acceptable"></div>
              <div data-sorter-target="bucket" data-bucket="care" data-label="Needs care first"></div>
              <div data-sorter-target="bucket" data-bucket="no" data-label="Not acceptable"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="ok" data-why="The facts are anonymised, the tool is approved and the output is only search terms that a person will run.">Pooja uses the firm's approved AI tool to suggest search terms, with client names removed.</li>
              <li data-bucket="no" data-why="This breaks confidentiality. Client documents must not go into public AI tools.">Sameer pastes Neha's full contract, with names, into a free public chatbot.</li>
              <li data-bucket="no" data-why="Candour to the court means every citation must be checked at the source before filing.">A junior files a written submission with AI-suggested cases that nobody has checked.</li>
              <li data-bucket="care" data-why="AI can help with a draft, but a lawyer must check every point and the client must not be misled.">Sameer asks AI to draft a letter to Neha explaining her options in plain words.</li>
              <li data-bucket="care" data-why="This may break the Bar Council rule against advertising and solicitation. Check the rules before posting.">Pooja asks AI to write a social media post promoting the firm's win in a case.</li>
              <li data-bucket="ok" data-why="Checking the court's own rules on AI before filing is exactly what a careful lawyer should do.">Kavita reads the court's latest practice directions on AI use before filing.</li>
              <li data-bucket="no" data-why="Billing must be fair and honest. Charging for work not done is not acceptable.">The firm bills Neha for 10 hours of research that AI finished in one hour.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to draft a short AI-use policy for a law office. Then compare it with the duties in this lesson.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a professional ethics adviser helping a small law firm in [India]. This is general education, not legal advice.

        Firm: [a law firm in India with 2 partners, 3 associates and 2 paralegals, doing contract and commercial disputes]

        Draft a one-page AI-use policy for this firm. Cover:
        1. Which tools may be used, and who approves them
        2. Protecting client confidentiality in prompts
        3. Checking every citation, section and quote before use
        4. Supervision of juniors' AI-assisted work
        5. Following each court's rules on AI use and disclosure
        6. Telling clients how AI is used, and fair billing
        7. What AI must never do (decide advice, sign, or file)

        Rules: Where a rule depends on the Advocates Act, the Bar Council of India Rules or a court's own directions, say "check the current rule" instead of quoting a rule number. Do not cite any case. Use simple English and numbered points.</pre>
            <ul class="ai-try-checks">
              <li>The policy covers candour, confidentiality, supervision and fair billing.</li>
              <li>It does not quote rule numbers or cases that you have not checked.</li>
              <li>It says a person checks every citation before use.</li>
              <li>It makes clear that a lawyer, not the AI, decides and signs.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Using AI does not move your duties to the AI. You still owe the court honesty, the client confidentiality and fair fees, and your juniors proper supervision. If you sign it or file it, you answer for it.
        </div>
      HTML
      starter_code: nil
    },
    15 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-law">Law</div>
          <h1 class="lc-title">Capstone: A Research Memo for Mehra & Rao</h1>
        </div>
        <p class="lc-lead">In this capstone you will bring the whole course together on the made-up Rangrez Crafts matter. You will start from the facts, list the issues, read the statutes, use only verified case law, and write a research memo for Adv. Kavita Mehra. You will also keep a verification log: a record of every source you checked, where, and what you found. The memo gives the answer. The log proves you can trust it. This is general education, not legal advice.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="Top: six steps: facts as a timeline, six issues, statutes on India Code, verified case law, the five-part memo, and the partner's review. Below: a sample verification log with four rows. Section 74 of the Contract Act checked on India Code, verified. Kailash Nath v DDA 2015 checked on SCC Online at paragraph 43, verified. Welspun v ONGC 2021, paragraph still to add, in progress. A case suggested by AI, not found in any database, removed.">
            <defs><marker id="lr15a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="14" y="14" width="112" height="54" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="70" y="37" font-weight="700">Facts</text><text x="70" y="56" font-size="11" fill="#9b99b8">timeline</text>
              <rect x="138" y="14" width="112" height="54" rx="8" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="194" y="37" font-weight="700">Issues</text><text x="194" y="56" font-size="11" fill="#9b99b8">6 questions</text>
              <rect x="262" y="14" width="112" height="54" rx="8" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="318" y="37" font-weight="700">Statutes</text><text x="318" y="56" font-size="11" fill="#9b99b8">India Code</text>
              <rect x="386" y="14" width="112" height="54" rx="8" fill="#1f1f44" stroke="#10b981"/>
              <text x="442" y="37" font-weight="700">Case law</text><text x="442" y="56" font-size="11" fill="#9b99b8">verified only</text>
              <rect x="510" y="14" width="112" height="54" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="566" y="37" font-weight="700">Memo</text><text x="566" y="56" font-size="11" fill="#9b99b8">five parts</text>
              <rect x="634" y="14" width="112" height="54" rx="8" fill="#1f1f44" stroke="#ec4899"/>
              <text x="690" y="37" font-weight="700">Review</text><text x="690" y="56" font-size="11" fill="#9b99b8">Adv. Mehra</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#lr15a)">
                <line x1="126" y1="41" x2="135" y2="41"/><line x1="250" y1="41" x2="259" y2="41"/><line x1="374" y1="41" x2="383" y2="41"/><line x1="498" y1="41" x2="507" y2="41"/><line x1="622" y1="41" x2="631" y2="41"/>
              </g>
              <text x="380" y="98" font-size="12" fill="#c4b5fd">Verification log (sample rows)</text>
              <rect x="14" y="108" width="732" height="182" rx="10" fill="#1f1f44" stroke="#4b4a78"/>
              <g font-size="12" text-anchor="start">
                <g font-weight="700" fill="#fcd34d">
                  <text x="30" y="134">Authority</text><text x="330" y="134">Checked at</text><text x="490" y="134">Pinpoint</text><text x="620" y="134">Status</text>
                </g>
                <line x1="24" y1="144" x2="736" y2="144" stroke="#4b4a78"/>
                <text x="30" y="170">Section 74, Contract Act</text><text x="330" y="170">India Code</text><text x="490" y="170">s. 74</text><text x="620" y="170" fill="#6ee7b7">Verified</text>
                <text x="30" y="204">Kailash Nath v DDA (2015)</text><text x="330" y="204">SCC Online</text><text x="490" y="204">para 43</text><text x="620" y="204" fill="#6ee7b7">Verified</text>
                <text x="30" y="238">Welspun v ONGC (2021)</text><text x="330" y="238">SCC Online</text><text x="490" y="238">to add</text><text x="620" y="238" fill="#fcd34d">In progress</text>
                <text x="30" y="272">Case suggested by AI</text><text x="330" y="272">not found</text><text x="490" y="272">none</text><text x="620" y="272" fill="#fca5a5">Removed</text>
              </g>
            </g>
          </svg>
          <figcaption>The memo and the log travel together. A partner can check any line of the memo against the log.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The brief from Adv. Kavita Mehra</h3>
          <p>On 29 September 2026, Neha of Rangrez Crafts calls the firm. Shiva Metalworks, the made-up supplier in Uttar Pradesh, has offered to send the missing 240 lamps "by 15 October". It wants the ₹80,000 balance. Neha wants a refund and damages instead. Kavita sends Sameer and Pooja this brief:</p>
          <pre><code>To: Adv. Sameer Rao, Pooja       Matter: Rangrez Crafts / Shiva
        Due: 2 October 2026              Metalworks (supply contract)

        1. A research memo, 3 pages at most, in five parts.
        2. Cover: refund for the 240 lamps, liquidated damages, extra
           cost of replacements, lost profit, the WhatsApp "extension",
           force majeure, the forum, and Neha's "420 case" question.
        3. A verification log for every section and case you cite.
        4. A list of documents and facts we still need from Neha.
        5. Use only firm-approved AI tools. No client names in prompts.</code></pre>
          <table class="lc-table">
            <thead><tr><th>Claim (made-up figures)</th><th>How it is worked out</th><th>Amount</th></tr></thead>
            <tbody>
              <tr><td>Refund of the advance for lamps not delivered</td><td>₹4,00,000 paid minus 560 × ₹600 (₹3,36,000)</td><td>₹64,000</td></tr>
              <tr><td>Liquidated damages under clause 9</td><td>2% of ₹4,80,000 × 3 weeks (cap 10%, ₹48,000)</td><td>₹28,800</td></tr>
              <tr><td>Extra cost of replacement lamps</td><td>240 × (₹750 minus ₹600)</td><td>₹36,000</td></tr>
              <tr><td>Lost profit on the cancelled Kesar Home Stores order</td><td>Neha's estimate, not yet proved by documents</td><td>about ₹27,000</td></tr>
            </tbody>
          </table>
          <p>Do not simply add these up. Some claims may overlap for the same delay, and the memo must say so.</p>
        </div>
        <div class="lc-card">
          <h3>The memo (short version)</h3>
          <p>Here is the core of Sameer's memo. Every authority in it is real and appears in the verification log. The facts and names are made up.</p>
          <pre><code>PRIVILEGED AND CONFIDENTIAL                         1 October 2026
        To: Adv. Kavita Mehra   From: Adv. Sameer Rao, with Pooja
        Matter: Rangrez Crafts v. Shiva Metalworks (made-up matter)

        QUESTIONS PRESENTED
        1. Can Rangrez get back Rs 64,000 of its advance for the 240
           lamps not delivered, and refuse the late delivery offered?
        2. Can it recover Rs 28,800 under clause 9 without proving the
           exact loss, after accepting the late lamps?
        3. Can it also recover the Rs 36,000 extra cost and the
           Rs 27,000 lost profit under section 73?
        4. Can the supplier rely on the brass shortage?
        5. Where must the claim be brought?
        6. Should Neha file a criminal complaint for cheating?

        SHORT ANSWERS
        1. Probably yes. Clause 10 gives a refund right on short supply.
           A written demand should be sent now to start its 15 days.
           Clause 3 makes time of the essence, so Rangrez may refuse the
           240 offered for 15 October. The extension point needs care.
        2. Probably yes, up to Rs 28,800. Rangrez can show real loss.
           The 21 September email helps on notice under section 55.
        3. The Rs 36,000 is a strong claim if the replacement price was
           reasonable. The lost profit is weaker: it needs documents and
           may overlap with clause 9 for the same delay.
        4. Unlikely. Clause 12 does not list raw-material shortage.
        5. Arbitration seated in Rajasthan under clause 15.
        6. Not advised on these facts. Cheating is now BNS 318(4). A
           breach alone is generally not cheating without dishonest
           intention from the start.

        FACTS  (see timeline, Annex A; all dates in 2026)

        DISCUSSION
        Issue 2, Rule: Section 74 allows reasonable compensation not
        exceeding the named sum (Fateh Chand v. Balkishan Dass, AIR 1963
        SC 1405). Proof of exact loss is not needed where loss is hard
        to prove, but no loss means nothing is payable (Kailash Nath
        Associates v. DDA, (2015) 4 SCC 136, para 43; ONGC v. Saw Pipes,
        (2003) 5 SCC 705).
        Application: Rangrez paid Rs 36,000 extra and lost part of an
        order, so it suffered real loss from the delay.
        Other side: the 25 August WhatsApp reply was an extension, and
        time stopped being of the essence (see Welspun v. ONGC, (2022) 2
        SCC 382). Reply: clause 4 says an extension keeps clause 9 rights
        unless expressly waived in writing. Neha waived nothing.
        [Issues 1, 3, 4, 5 and 6 follow the same pattern.]

        CONCLUSION AND NEXT STEPS
        Likely recovery: Rs 64,000 refund, Rs 28,800 under clause 9 and
        Rs 36,000 extra cost. Lost profit uncertain.
        1. Send a written demand under clauses 9 and 10.
        2. Get Kesar Home Stores' cancellation and profit records.
        3. Open item: find and verify a Supreme Court case on shortage
           or price rise as force majeure or frustration.
        4. Advise Neha against threatening a criminal case (Issue 6).</code></pre>
          <p>Notice what the memo does not do. It does not promise a result. It flags the overlap, the weak claim, and the one point where research is still open.</p>
        </div>
        <div class="lc-card">
          <h3>The verification log</h3>
          <p>Pooja keeps the log as she works. These rows are an example. Do your own checks at the source before you rely on any of them.</p>
          <table class="lc-table">
            <thead><tr><th>Authority</th><th>Where checked</th><th>What was confirmed</th><th>Status</th></tr></thead>
            <tbody>
              <tr><td>Indian Contract Act 1872, ss. 55, 73, 74</td><td>India Code</td><td>Current text, including the Explanation to s. 73 on mitigation</td><td>Verified</td></tr>
              <tr><td>Sale of Goods Act 1930, s. 37; Arbitration Act 1996, s. 8</td><td>India Code</td><td>Current text of each section</td><td>Verified</td></tr>
              <tr><td><em>Fateh Chand v. Balkishan Dass</em>, AIR 1963 SC 1405</td><td>Indian Kanoon, SCC Online</td><td>Supreme Court, Constitution Bench, 1963. Still followed in later cases.</td><td>Verified</td></tr>
              <tr><td><em>Kailash Nath Associates v. DDA</em>, (2015) 4 SCC 136</td><td>SCC Online</td><td>Paragraph 43 summarises the law on s. 74. Later cases checked: <em>K.R. Suresh v. R. Poornima</em> (Supreme Court, 2 May 2025) took a different view on forfeiting earnest money. Our point is not about earnest money.</td><td>Verified</td></tr>
              <tr><td><em>ONGC v. Saw Pipes</em>, (2003) 5 SCC 705</td><td>SCC Online</td><td>Point on pre-estimate of loss. Its wider view of "public policy" in arbitration was later narrowed.</td><td>Verified, with a note</td></tr>
              <tr><td><em>Murlidhar Chiranjilal v. Harishchandra Dwarkadas</em>, AIR 1962 SC 366</td><td>Indian Kanoon</td><td>Duty to take reasonable steps to reduce loss</td><td>Verified</td></tr>
              <tr><td><em>Welspun Specialty Solutions v. ONGC</em>, (2022) 2 SCC 382</td><td>SCC Online</td><td>Time of the essence depends on the whole contract. Paragraph number still to add.</td><td>In progress</td></tr>
              <tr><td>A "Supreme Court case on brass shortage" suggested by AI</td><td>SCC Online, Indian Kanoon</td><td>No such case found</td><td>Removed</td></tr>
              <tr><td>Force majeure and frustration (s. 56) case law</td><td>Not yet searched</td><td>Needed for Issue 4</td><td>Open</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Activity: the capstone workflow</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put the steps for producing the Rangrez memo in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Build a dated timeline from the contract, bank statement, WhatsApp messages and emails</li>
              <li data-order="2">Frame each issue as one precise question, and confirm the governing law and the forum</li>
              <li data-order="3">Read the current text of each statute section on India Code</li>
              <li data-order="4">Search the databases for case law, read the judgments and log every check</li>
              <li data-order="5">Use an approved AI tool to shape anonymised notes into the five-part memo, using only verified law</li>
              <li data-order="6">Check every fact, figure and citation in the memo against the documents and the log</li>
              <li data-order="7">Send the memo and log to Adv. Kavita Mehra for review and her final advice to Neha</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Draft the full memo and a log template with AI, from facts and authorities you supply. The sample below uses the made-up Rangrez facts without names.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a legal writing assistant for an Indian law firm. This is general education, not legal advice.

        Facts: [Buyer paid Rs 4,00,000 advance for 800 lamps at Rs 600 (total Rs 4,80,000). Due 31 Aug 2026, time of the essence. Supplier asked for "2-3 more weeks"; buyer said "Ok but please hurry". 560 lamps came 21 Sept; buyer accepted them, reserving its clause 9 rights by email. Buyer bought 240 elsewhere at Rs 750. A customer cancelled an order; lost profit about Rs 27,000. Clause 9: 2% per week, cap 10%. Clause 10: refund for short supply within 15 days of written demand. Clause 12 force majeure omits raw-material shortage. Clause 15: arbitration, seat in Rajasthan.]

        Verified authorities: [Contract Act ss. 55, 73, 74; Fateh Chand v. Balkishan Dass, AIR 1963 SC 1405; Kailash Nath Associates v. DDA, (2015) 4 SCC 136]

        Tasks:
        1. Write a memo: Questions presented, Short answers, Facts, Discussion (rule, application, other side), Conclusion and next steps.
        2. Then make a verification log table: Authority, Where to check, What to confirm, Status (leave blank).

        Rules: Use ONLY the authorities listed. Write [RESEARCH NEEDED] for gaps. Do not quote judgments. Flag any claims that overlap.</pre>
            <ul class="ai-try-checks">
              <li>Only the authorities you listed appear. Delete anything else.</li>
              <li>The figures are right: Rs 64,000 refund, Rs 28,800 under clause 9, Rs 36,000 extra cost.</li>
              <li>The memo flags the lost profit as weaker and a possible overlap with clause 9.</li>
              <li>Gaps such as force majeure case law are marked [RESEARCH NEEDED].</li>
              <li>Now check every authority at the source and fill in the Status column yourself.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A research memo is only as good as its sources. Answer first, reason clearly, show the other side, and name what is still open. Then attach a verification log, so your partner can trust every line.
        </div>
      HTML
      starter_code: nil
    }
  }.freeze
end

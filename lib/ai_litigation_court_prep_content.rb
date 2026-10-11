module AiLitigationCourtPrepContent
  # Units (sidebar dividers): 1–4 Litigation Basics · 5–9 Building the Case · 10–14 Hearing and Trial Preparation · 15 Capstone
  # Widgets: sequence, sorter, stepper. No code editor: each Try It is an ai-try prompt box.
  LESSONS = {
    1 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-law">Law</div>
          <h1 class="lc-title">How Litigation Works in India</h1>
        </div>
        <p class="lc-lead">Litigation means taking a dispute to a court or tribunal for a decision. Before you use AI on a case, you need a clear map of the process. In this lesson you will learn which courts and tribunals hear which cases. You will see the stages of a civil case and a criminal case, and the key document at each stage. You will also see who does what in a case team. With this map, you can give AI the right task and spot when its answer is in the wrong place.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 330" role="img" aria-label="Two rows of stages. A civil suit: notice and mediation, plaint, written statement, issues, evidence, arguments, judgment and decree, appeal or execution. A criminal case: FIR or complaint, investigation, police report, cognizance, charges framed, evidence, arguments, judgment and appeal. Below, the people in a case team.">
            <defs><marker id="lit1a" markerUnits="userSpaceOnUse" markerWidth="6" markerHeight="6" refX="6" refY="3" orient="auto"><path d="M0,0 L6,3 L0,6 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="11" fill="#e2e0f0" text-anchor="middle">
              <text x="12" y="22" text-anchor="start" font-size="13" font-weight="700" fill="#93c5fd">Civil suit (for example, a claim for money)</text>
              <rect x="12" y="34" width="85" height="50" rx="8" fill="#27274e" stroke="#3b82f6"/><text x="54" y="55">Notice &amp;</text><text x="54" y="71">mediation</text>
              <rect x="105" y="34" width="85" height="50" rx="8" fill="#27274e" stroke="#3b82f6"/><text x="147" y="63">Plaint</text>
              <rect x="198" y="34" width="85" height="50" rx="8" fill="#27274e" stroke="#3b82f6"/><text x="240" y="55">Written</text><text x="240" y="71">statement</text>
              <rect x="291" y="34" width="85" height="50" rx="8" fill="#27274e" stroke="#3b82f6"/><text x="333" y="63">Issues</text>
              <rect x="384" y="34" width="85" height="50" rx="8" fill="#27274e" stroke="#3b82f6"/><text x="426" y="63">Evidence</text>
              <rect x="477" y="34" width="85" height="50" rx="8" fill="#27274e" stroke="#3b82f6"/><text x="519" y="63">Arguments</text>
              <rect x="570" y="34" width="85" height="50" rx="8" fill="#27274e" stroke="#3b82f6"/><text x="612" y="55">Judgment</text><text x="612" y="71">&amp; decree</text>
              <rect x="663" y="34" width="85" height="50" rx="8" fill="#27274e" stroke="#3b82f6"/><text x="705" y="55">Appeal or</text><text x="705" y="71">execution</text>
              <g stroke="#9b99b8" stroke-width="1.3" marker-end="url(#lit1a)">
                <line x1="97" y1="59" x2="104" y2="59"/><line x1="190" y1="59" x2="197" y2="59"/><line x1="283" y1="59" x2="290" y2="59"/><line x1="376" y1="59" x2="383" y2="59"/><line x1="469" y1="59" x2="476" y2="59"/><line x1="562" y1="59" x2="569" y2="59"/><line x1="655" y1="59" x2="662" y2="59"/>
              </g>
              <text x="12" y="106" text-anchor="start" fill="#9b99b8">Rangrez Crafts v. Shiva Metalworks (made up) is now at the evidence stage.</text>
              <rect x="384" y="92" width="85" height="4" rx="2" fill="#f59e0b"/>
              <text x="12" y="140" text-anchor="start" font-size="13" font-weight="700" fill="#f9a8d4">Criminal case (under the BNSS from 1 July 2024)</text>
              <rect x="12" y="152" width="85" height="50" rx="8" fill="#27274e" stroke="#ec4899"/><text x="54" y="173">FIR or</text><text x="54" y="189">complaint</text>
              <rect x="105" y="152" width="85" height="50" rx="8" fill="#27274e" stroke="#ec4899"/><text x="147" y="181">Investigation</text>
              <rect x="198" y="152" width="85" height="50" rx="8" fill="#27274e" stroke="#ec4899"/><text x="240" y="173">Police</text><text x="240" y="189">report</text>
              <rect x="291" y="152" width="85" height="50" rx="8" fill="#27274e" stroke="#ec4899"/><text x="333" y="181">Cognizance</text>
              <rect x="384" y="152" width="85" height="50" rx="8" fill="#27274e" stroke="#ec4899"/><text x="426" y="173">Charges</text><text x="426" y="189">framed</text>
              <rect x="477" y="152" width="85" height="50" rx="8" fill="#27274e" stroke="#ec4899"/><text x="519" y="181">Evidence</text>
              <rect x="570" y="152" width="85" height="50" rx="8" fill="#27274e" stroke="#ec4899"/><text x="612" y="181">Arguments</text>
              <rect x="663" y="152" width="85" height="50" rx="8" fill="#27274e" stroke="#ec4899"/><text x="705" y="173">Judgment</text><text x="705" y="189">&amp; appeal</text>
              <g stroke="#9b99b8" stroke-width="1.3" marker-end="url(#lit1a)">
                <line x1="97" y1="177" x2="104" y2="177"/><line x1="190" y1="177" x2="197" y2="177"/><line x1="283" y1="177" x2="290" y2="177"/><line x1="376" y1="177" x2="383" y2="177"/><line x1="469" y1="177" x2="476" y2="177"/><line x1="562" y1="177" x2="569" y2="177"/><line x1="655" y1="177" x2="662" y2="177"/>
              </g>
              <text x="12" y="236" text-anchor="start" font-size="13" font-weight="700" fill="#6ee7b7">Who does what</text>
              <rect x="12" y="248" width="176" height="66" rx="8" fill="#1f1f44" stroke="#10b981"/><text x="100" y="272" font-weight="700">Client</text><text x="100" y="294" fill="#9b99b8">facts, documents</text>
              <rect x="198" y="248" width="176" height="66" rx="8" fill="#1f1f44" stroke="#10b981"/><text x="286" y="272" font-weight="700">Advocate</text><text x="286" y="294" fill="#9b99b8">advises, drafts, argues</text>
              <rect x="384" y="248" width="176" height="66" rx="8" fill="#1f1f44" stroke="#10b981"/><text x="472" y="272" font-weight="700">Paralegal</text><text x="472" y="294" fill="#9b99b8">files, dates, bundles</text>
              <rect x="570" y="248" width="178" height="66" rx="8" fill="#1f1f44" stroke="#10b981"/><text x="659" y="272" font-weight="700">Judge</text><text x="659" y="294" fill="#9b99b8">runs the case, decides</text>
            </g>
          </svg>
          <figcaption>The main stages of a civil suit and a criminal case, in simple form. Real cases can add, skip or repeat steps.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Courts and tribunals: who hears what</h3>
          <p>India has one court system with several levels. Some special disputes go to tribunals or commissions instead. The table gives a simple picture. Each state has its own details, so always check the right court for your case.</p>
          <table class="lc-table">
            <thead><tr><th>Forum</th><th>What it usually hears</th></tr></thead>
            <tbody>
              <tr><td><strong>Supreme Court</strong></td><td>Appeals from High Courts, some special cases, and petitions about fundamental rights.</td></tr>
              <tr><td><strong>High Courts</strong> (one for each state or group of states)</td><td>Appeals from lower courts, writ petitions, and in a few High Courts (such as the Bombay and Delhi High Courts) large civil suits.</td></tr>
              <tr><td><strong>District courts</strong></td><td>Most civil suits (civil judges and district judges) and most criminal trials (magistrates and sessions courts).</td></tr>
              <tr><td><strong>Commercial Courts</strong></td><td>Business disputes above a minimum value, under the Commercial Courts Act, 2015. They follow stricter time rules.</td></tr>
              <tr><td><strong>Tribunals and commissions</strong></td><td>Special subjects. Examples: company and insolvency cases (NCLT), bank debt recovery (DRT), and consumer complaints (Consumer Commissions under the Consumer Protection Act, 2019).</td></tr>
            </tbody>
          </table>
          <p>Choosing the wrong forum wastes months. It can also make the other side object that the court has no power (jurisdiction) to hear the case. <strong>Jurisdiction</strong> means the power of a court to hear a case. It depends on the subject, the place and the money value.</p>
        </div>
        <div class="lc-card">
          <h3>A civil suit, step by step</h3>
          <p>In this course we follow one made-up case. <strong>Mehra &amp; Rao Associates</strong>, a made-up law firm in Maharashtra, acts for <strong>Rangrez Crafts</strong>, a Rajasthan handicrafts brand owned by Neha Rathore. Rangrez ordered 800 brass lamps for ₹4,80,000 from <strong>Shiva Metalworks</strong>, a brass works in Uttar Pradesh. The lamps came late, and fewer came than ordered. Rangrez has sued in a Commercial Court in Rajasthan. All names and facts are made up.</p>
          <table class="lc-table">
            <thead><tr><th>Stage</th><th>Key document</th><th>In the Rangrez case (made up)</th></tr></thead>
            <tbody>
              <tr><td>Before the suit</td><td>Legal notice; mediation application</td><td>Notice sent 17 Nov 2025. Mediation failed on 20 Feb 2026.</td></tr>
              <tr><td>Plaint (the claim)</td><td>Plaint with documents</td><td>Filed 16 Mar 2026, claiming ₹3,04,200.</td></tr>
              <tr><td>Defence</td><td>Written statement, sometimes with a counterclaim</td><td>Filed 4 May 2026, with a counterclaim of ₹1,20,000.</td></tr>
              <tr><td>Issues</td><td>Court order listing the disputed questions</td><td>Eight issues framed on 8 Jul 2026.</td></tr>
              <tr><td>Evidence</td><td>Evidence affidavits; cross-examination</td><td>Neha is to be cross-examined on 14 Oct 2026.</td></tr>
              <tr><td>Arguments and judgment</td><td>Written arguments; judgment and decree</td><td>Written arguments due 9 Dec 2026. Oral arguments on 6 Jan 2027.</td></tr>
            </tbody>
          </table>
          <p>A <strong>plaint</strong> is the written claim that starts a civil suit. A <strong>written statement</strong> is the defendant's written reply. A <strong>decree</strong> is the formal order that says who gets what. <strong>Execution</strong> is the process to enforce a decree if the loser does not pay.</p>
        </div>
        <div class="lc-card">
          <h3>A criminal case, in general words</h3>
          <p>Since 1 July 2024, three new laws apply to criminal cases. The Bharatiya Nyaya Sanhita (BNS) replaced the Indian Penal Code. The Bharatiya Nagarik Suraksha Sanhita (BNSS) replaced the Code of Criminal Procedure. The Bharatiya Sakshya Adhiniyam (BSA) replaced the Indian Evidence Act. Older cases may still use the old laws, so check which law applies to your matter.</p>
          <ul class="lc-list">
            <li><strong>FIR</strong> (First Information Report): the police record of a complaint about a serious offence. Some cases start with a complaint to a magistrate instead.</li>
            <li><strong>Investigation</strong>: the police collect evidence. At the end they file a <strong>police report</strong>, often called a charge sheet.</li>
            <li><strong>Cognizance</strong>: the court formally takes up the case. Later the court frames <strong>charges</strong> (the exact offences the accused must answer).</li>
            <li><strong>Trial</strong>: evidence, cross-examination, arguments and judgment. Either side may then appeal.</li>
          </ul>
          <p>Not every "criminal" matter starts at a police station. A cheque-bounce case under section 138 of the Negotiable Instruments Act, 1881 starts with a complaint to a magistrate.</p>
        </div>
        <div class="lc-card">
          <h3>Who does what, and where AI fits</h3>
          <table class="lc-table">
            <thead><tr><th>Person</th><th>Main job</th><th>How AI can help</th></tr></thead>
            <tbody>
              <tr><td>Client (Neha)</td><td>Gives true facts and all documents. Makes the final decisions.</td><td>A plain-language summary of the next step.</td></tr>
              <tr><td>Advocate (Adv. Kavita Mehra, Adv. Sameer Rao)</td><td>Advises, drafts, appears in court, and is responsible for every filing.</td><td>First drafts, argument practice, lists of questions.</td></tr>
              <tr><td>Paralegal (Pooja)</td><td>Keeps the file, dates, indexes and court sets in order.</td><td>Chronologies, document indexes, date lists.</td></tr>
              <tr><td>Judge</td><td>Runs the case and decides it.</td><td>Not your tool to use. Courts set their own AI rules.</td></tr>
            </tbody>
          </table>
          <p>This course is general education, not legal advice. Procedure changes, and every court has local practice. Always check the current law and rules for your own case.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: put the civil suit in order</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put the main stages of the Rangrez commercial suit in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Legal notice, then pre-institution mediation</li>
              <li data-order="2">Plaint filed with the documents</li>
              <li data-order="3">Summons served on Shiva Metalworks</li>
              <li data-order="4">Written statement and counterclaim filed</li>
              <li data-order="5">Case management hearing: issues framed</li>
              <li data-order="6">Evidence affidavits and cross-examination</li>
              <li data-order="7">Final arguments, then judgment and decree</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to turn a short dispute into a stage-by-stage map. Use the made-up Rangrez facts, or change the brackets to a made-up dispute of your own.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a senior litigation lawyer in India. You are training a new paralegal.

        Dispute (made up): [Rangrez Crafts, a Rajasthan shop, paid a 75% advance for 800 brass lamps from Shiva Metalworks, a brass works in Uttar Pradesh. Only 500 came, three weeks late, and 80 were damaged. Rangrez wants its money back and its lost profit.]

        Tasks:
        1. Say if this is most likely a civil, criminal or consumer matter, and why, in 2 or 3 sentences.
        2. Give a table with columns: Stage | Key document | Who prepares it | How AI could help | What a person must check.
        3. List 5 questions the lawyer must answer before filing anything (for example, which court and whether a time limit applies).

        Rules: Use simple English. Name Indian laws only in general words. Do not give section numbers, time limits or fees as facts; write "check the current law" instead. Do not cite any case. End with one line saying this is general information, not legal advice.</pre>
            <ul class="ai-try-checks">
              <li>The stages are in a sensible order for a civil suit.</li>
              <li>The AI did not invent time limits, fees or case names.</li>
              <li>The "must check" column names real things to check, such as the court and the limitation period.</li>
              <li>The AI uses the new criminal laws (BNS, BNSS, BSA), not only the old ones, if it mentions them.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Know the map before you ask for directions. When you know the stage, the forum and the key document, you can give AI a precise task. You can also catch it when it mixes up stages, courts or old and new laws.
        </div>
      HTML
      starter_code: nil
    },
    2 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-law">Law</div>
          <h1 class="lc-title">Where AI Helps in Litigation</h1>
        </div>
        <p class="lc-lead">A case file can hold hundreds of emails, chats, invoices and orders. AI can help you sort them, find dates, write first drafts and practise arguments. It can also invent cases, leak client secrets and use the wrong procedure. In this lesson you will learn which litigation jobs AI does well, which risks come with it, and why the advocate stays fully responsible. The rule for this course is simple: AI drafts, the lawyer checks, decides and signs.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 330" role="img" aria-label="Four jobs where AI helps: chronologies, document review, first drafts and argument practice. All four flow into one step where the advocate checks every fact, citation and step, and then into court, where the advocate is responsible. On the right, a list of five risks.">
            <defs><marker id="lit2a" markerUnits="userSpaceOnUse" markerWidth="8" markerHeight="8" refX="8" refY="4" orient="auto"><path d="M0,0 L8,4 L0,8 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12" fill="#e2e0f0" text-anchor="middle">
              <text x="12" y="22" text-anchor="start" font-size="13" font-weight="700" fill="#6ee7b7">Where AI helps (a person checks)</text>
              <rect x="12" y="34" width="224" height="58" rx="8" fill="#27274e" stroke="#10b981"/><text x="124" y="58" font-weight="700">Chronologies</text><text x="124" y="78" font-size="11" fill="#9b99b8">dated events with sources</text>
              <rect x="248" y="34" width="224" height="58" rx="8" fill="#27274e" stroke="#10b981"/><text x="360" y="58" font-weight="700">Document review</text><text x="360" y="78" font-size="11" fill="#9b99b8">summaries, tags, key papers</text>
              <rect x="12" y="102" width="224" height="58" rx="8" fill="#27274e" stroke="#3b82f6"/><text x="124" y="126" font-weight="700">First drafts</text><text x="124" y="146" font-size="11" fill="#9b99b8">pleadings, letters, notes</text>
              <rect x="248" y="102" width="224" height="58" rx="8" fill="#27274e" stroke="#3b82f6"/><text x="360" y="126" font-weight="700">Argument practice</text><text x="360" y="146" font-size="11" fill="#9b99b8">play the other side or the judge</text>
              <line x1="242" y1="162" x2="242" y2="190" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#lit2a)"/>
              <rect x="12" y="194" width="460" height="52" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="242" y="216" font-weight="700" fill="#fcd34d">The advocate checks every fact, citation and step</text>
              <text x="242" y="235" font-size="11" fill="#9b99b8">open each source, read each judgment, check current rules</text>
              <line x1="242" y1="248" x2="242" y2="274" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#lit2a)"/>
              <rect x="12" y="278" width="460" height="40" rx="8" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="242" y="303">Filed or said in court: the advocate is responsible</text>
              <rect x="492" y="34" width="256" height="284" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="620" y="60" font-weight="700" fill="#f9a8d4" font-size="13">Risks to watch</text>
              <g text-anchor="start">
                <text x="508" y="96">1. Fake cases and fake quotes</text>
                <text x="508" y="136">2. Client secrets in public tools</text>
                <text x="508" y="176">3. Wrong or old procedure</text>
                <text x="508" y="216">4. "Facts" not in the file</text>
                <text x="508" y="256">5. A confident tone, wrong answer</text>
                <text x="508" y="296" font-size="11" fill="#9b99b8">Each one can mislead the court.</text>
              </g>
            </g>
          </svg>
          <figcaption>AI speeds up the work on the left. Nothing reaches the court until a lawyer has checked it.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Jobs where AI helps most</h3>
          <p>Here is how Mehra &amp; Rao uses AI in the made-up Rangrez Crafts v. Shiva Metalworks suit. Each job saves time. Each job still needs a person to check the result.</p>
          <table class="lc-table">
            <thead><tr><th>Job</th><th>Example in the Rangrez case</th><th>What a person must still check</th></tr></thead>
            <tbody>
              <tr><td><strong>Chronology</strong> (a dated list of events)</td><td>Pooja turns 30 documents into a table of about 25 dated events, each with a document ID such as D-09.</td><td>Every date and every source. AI sometimes merges two events or guesses a date.</td></tr>
              <tr><td><strong>Document review</strong></td><td>AI summarises 60 WhatsApp messages and finds the one where Shiva blamed a "brass shortage".</td><td>Open the original message. Check the words, the date and who sent it.</td></tr>
              <tr><td><strong>First drafts</strong></td><td>Adv. Sameer Rao asks for a first draft of a list of dates for the written arguments.</td><td>Every fact against the file. Every legal point against the law.</td></tr>
              <tr><td><strong>Argument practice</strong></td><td>AI plays Shiva's lawyer and attacks Neha's claim for lost profit.</td><td>The AI's legal points are only ideas. Research each one properly.</td></tr>
              <tr><td><strong>Client updates</strong></td><td>A plain-English email to Neha about the 14 October hearing.</td><td>Tone, facts, and no promise about the result.</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>The risks, with real examples</h3>
          <ul class="lc-list">
            <li><strong>Fake citations.</strong> AI can invent a case name, a citation or a quote that looks real. In <em>Mata v. Avianca</em> (a US federal court in New York, June 2023), lawyers filed a brief with non-existent cases from ChatGPT. The court fined the two lawyers and their firm US$5,000.</li>
            <li><strong>Indian courts have acted too.</strong> In January 2026 the Bombay High Court imposed costs of ₹50,000 on a litigant. His written submissions relied on a judgment that the court could not trace, and looked AI-generated.</li>
            <li><strong>Confidentiality.</strong> Pasting a client's documents into a public AI tool may break your duty of confidence. The next lesson covers safe tools and redaction.</li>
            <li><strong>Wrong or old procedure.</strong> AI may mix up the old IPC and CrPC with the new BNS and BNSS. It may also give US or UK rules. It may not know the special rules for commercial suits.</li>
            <li><strong>Invented facts.</strong> Ask for "a strong list of dates" and AI may fill gaps with dates that are not in any document.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>The advocate's duty to the court</h3>
          <p>An advocate must not mislead the court. The Bar Council of India Rules set out duties to the court and to the client. In general words: act fairly, do not state false facts or false law, and keep client secrets. Signing a filing means you stand behind every word in it. "The AI wrote it" is not a defence.</p>
          <p>A good prompt makes checking easier. Compare these two:</p>
          <pre><code>Weak:  Write strong written arguments for Rangrez Crafts with
               Supreme Court cases on lost profit.

        Better: Using ONLY the facts in the chronology below, draft a
               list of dates for written arguments. Put the source
               document ID after every entry. If a fact has no source,
               write [NO SOURCE]. Do not cite any case or section.
               I will add verified authorities myself.</code></pre>
          <p>The weak prompt invites invented cases. The better prompt keeps AI to the facts you gave it. It also marks every gap for a person to fill. Adv. Kavita Mehra adds the authorities after reading each judgment in a trusted database, such as SCC Online, Manupatra or Indian Kanoon.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: who should do this job?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each task. Can AI draft it for a person to check, must the lawyer do it, or should nobody do it?</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="ai" data-label="AI drafts, a person checks"></div>
              <div data-sorter-target="bucket" data-bucket="lawyer" data-label="Only the lawyer"></div>
              <div data-sorter-target="bucket" data-bucket="never" data-label="Never do this"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="ai" data-why="AI is fast at pulling dates from documents. Pooja then checks each entry against its source.">Make a first chronology from the emails and WhatsApp export</li>
              <li data-bucket="ai" data-why="Practice questions are only ideas. The lawyer decides which points are real risks.">List questions the judge may ask about the lost profit claim</li>
              <li data-bucket="lawyer" data-why="Strategy is a professional judgment that the advocate is responsible for.">Decide whether to drop the claim for Aangan's 5% deduction</li>
              <li data-bucket="lawyer" data-why="A citation must be read in full in a trusted source before it goes to court.">Confirm that a judgment exists and says what you rely on</li>
              <li data-bucket="never" data-why="This can break client confidentiality. Use an approved tool and redact first.">Paste Neha's full file with her settlement figure into a free public chatbot</li>
              <li data-bucket="never" data-why="Filing unchecked AI citations can mislead the court and lead to costs or action against the lawyer.">File written arguments with AI-suggested cases nobody has checked</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to build a "verification list" for a draft paragraph. It lists every fact and citation that a person must check before filing. The sample contains a made-up case name on purpose.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a careful senior associate in an Indian law firm. Do not rewrite the draft. Build a verification list for it.

        Draft paragraph (everything in it is made up, including the case name):
        "[The Defendant delivered only 500 of the 800 lamps, three weeks late, on 6 October 2025. It never gave any reason for the delay. The Plaintiff rejected 80 defective lamps within 7 days. As held in Kumar Traders v. Singh Metals (2019), a buyer may recover lost profit in such cases.]"

        Give a table with columns: # | Exact words from the draft | Type (fact / date / number / legal point / citation) | Where to check it (for example: the delivery challan, the email file, the full judgment) | Risk if wrong.

        Then:
        1. Name any statement that sounds stronger than the evidence may allow, and say why.
        2. Say clearly whether you can confirm that any case named in the draft exists. Do not guess.

        Use simple English.</pre>
            <ul class="ai-try-checks">
              <li>Every date, number and claim in the paragraph appears in the table.</li>
              <li>The AI does not claim the made-up case is real. It should say it cannot confirm it.</li>
              <li>"It never gave any reason" is flagged as a strong statement that needs checking.</li>
              <li>The "where to check" column names real documents, not "search online".</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Use AI for speed, and use people for truth. Let AI sort, summarise and draft. Then check every fact against the file, and read every authority in full, before anything goes to court.
        </div>
      HTML
      starter_code: nil
    },
    3 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-law">Law</div>
          <h1 class="lc-title">Confidentiality, Privilege and Safe Tools</h1>
        </div>
        <p class="lc-lead">A litigation file is full of secrets: the client's documents, private chats, your advice and the settlement figure. If these leak, the client can be harmed and the firm can face serious trouble. In this lesson you will learn what the law says about confidentiality and privilege, in general words. You will learn how to pick a safe AI tool, how to redact documents before using AI, and what courts have said about AI. This is general education, not legal advice.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 320" role="img" aria-label="Three columns. Red: never put into a public AI tool, such as the settlement position, full client files, advice notes and personal data. Amber: only in a firm-approved tool, such as redacted documents, draft pleadings, chronologies and witness notes. Green: fine in most tools, such as Bare Acts, your own templates, made-up examples and general questions. Below: redact, check the tool, keep a record.">
            <defs><marker id="lit3a" markerUnits="userSpaceOnUse" markerWidth="8" markerHeight="8" refX="8" refY="4" orient="auto"><path d="M0,0 L8,4 L0,8 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12" fill="#e2e0f0" text-anchor="middle">
              <rect x="12" y="12" width="236" height="220" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="130" y="38" font-weight="700" fill="#f9a8d4" font-size="13">Never in a public AI tool</text>
              <rect x="28" y="54" width="204" height="34" rx="6" fill="#27274e"/><text x="130" y="76">Settlement position</text>
              <rect x="28" y="96" width="204" height="34" rx="6" fill="#27274e"/><text x="130" y="118">Full, unredacted client files</text>
              <rect x="28" y="138" width="204" height="34" rx="6" fill="#27274e"/><text x="130" y="160">Advice and strategy notes</text>
              <rect x="28" y="180" width="204" height="34" rx="6" fill="#27274e"/><text x="130" y="202">IDs, phone and bank details</text>
              <rect x="262" y="12" width="236" height="220" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="380" y="38" font-weight="700" fill="#fcd34d" font-size="13">Only in a firm-approved tool</text>
              <rect x="278" y="54" width="204" height="34" rx="6" fill="#27274e"/><text x="380" y="76">Redacted case documents</text>
              <rect x="278" y="96" width="204" height="34" rx="6" fill="#27274e"/><text x="380" y="118">Draft pleadings</text>
              <rect x="278" y="138" width="204" height="34" rx="6" fill="#27274e"/><text x="380" y="160">Chronology and indexes</text>
              <rect x="278" y="180" width="204" height="34" rx="6" fill="#27274e"/><text x="380" y="202">Witness preparation notes</text>
              <rect x="512" y="12" width="236" height="220" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="630" y="38" font-weight="700" fill="#6ee7b7" font-size="13">Fine in most tools</text>
              <rect x="528" y="54" width="204" height="34" rx="6" fill="#27274e"/><text x="630" y="76">Bare Acts and public rules</text>
              <rect x="528" y="96" width="204" height="34" rx="6" fill="#27274e"/><text x="630" y="118">Your own blank templates</text>
              <rect x="528" y="138" width="204" height="34" rx="6" fill="#27274e"/><text x="630" y="160">Fully made-up examples</text>
              <rect x="528" y="180" width="204" height="34" rx="6" fill="#27274e"/><text x="630" y="202">General legal questions</text>
              <rect x="12" y="254" width="220" height="50" rx="8" fill="#27274e" stroke="#8b5cf6"/><text x="122" y="276" font-weight="700">1. Redact</text><text x="122" y="294" font-size="11" fill="#9b99b8">names, numbers, metadata</text>
              <rect x="270" y="254" width="220" height="50" rx="8" fill="#27274e" stroke="#8b5cf6"/><text x="380" y="276" font-weight="700">2. Check the tool</text><text x="380" y="294" font-size="11" fill="#9b99b8">approved? trains on data?</text>
              <rect x="528" y="254" width="220" height="50" rx="8" fill="#27274e" stroke="#8b5cf6"/><text x="638" y="276" font-weight="700">3. Keep a record</text><text x="638" y="294" font-size="11" fill="#9b99b8">what went in, who checked</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#lit3a)"><line x1="234" y1="279" x2="266" y2="279"/><line x1="492" y1="279" x2="524" y2="279"/></g>
            </g>
          </svg>
          <figcaption>Sort information by risk before it goes near an AI tool. Your firm's own policy decides the exact lists.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>What the law protects, in general words</h3>
          <ul class="lc-list">
            <li><strong>Professional communications.</strong> Section 132 of the Bharatiya Sakshya Adhiniyam, 2023 (BSA) replaced section 126 of the Indian Evidence Act. In general words, an advocate must not disclose what the client told them without the client's express consent. The same applies to the contents of the client's documents and to the advice given. There are narrow exceptions, for example communications made to further an illegal purpose.</li>
            <li><strong>Privilege</strong> is the legal protection that keeps these communications out of evidence. It belongs to the client. Only the client can give it up.</li>
            <li><strong>Professional duties.</strong> The Advocates Act, 1961 and the Bar Council of India Rules set duties to the client. Keeping the client's confidence is one of them.</li>
            <li><strong>Personal data.</strong> Case files hold personal data about clients, witnesses and staff. The Digital Personal Data Protection Act, 2023 and its Rules, notified in November 2025, are coming into force in phases. Some exemptions exist, for example for enforcing legal rights. Check the current position with your firm's data protection lead.</li>
          </ul>
          <p>Read the exact words of each law at the source, such as India Code, before you advise anyone. Section numbers and exceptions matter.</p>
        </div>
        <div class="lc-card">
          <h3>Choosing a safe AI tool</h3>
          <p>A free public chatbot and a firm-approved business tool can look the same. Their data terms can be very different. Before any client material goes into a tool, get answers to these questions. Tools change their terms often, so check the tool's current terms and privacy settings.</p>
          <table class="lc-table">
            <thead><tr><th>Question</th><th>Why it matters</th></tr></thead>
            <tbody>
              <tr><td>Has the firm approved this tool for client work?</td><td>Approval means someone has read the contract and the settings.</td></tr>
              <tr><td>Does the provider use your inputs to train its models?</td><td>If yes, client text could shape answers for other users.</td></tr>
              <tr><td>Where is the data stored, and for how long?</td><td>You may need to delete it or explain where it went.</td></tr>
              <tr><td>Who can see the chats inside the firm?</td><td>Other teams may act for the other side in a different matter.</td></tr>
              <tr><td>Has the client agreed to AI use on their file?</td><td>Many firms tell clients and ask for consent in the engagement letter.</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Redaction: a worked example</h3>
          <p><strong>Redaction</strong> means removing or replacing details that identify people or reveal secrets. Pooja wants AI to summarise part of the made-up Rangrez file. First she redacts it.</p>
          <pre><code>Before: Neha Rathore (mobile 90000 11111) of Rangrez Crafts, Industrial Area,
                paid Shiva Metalworks ₹3,60,000 from her bank account on
                18 July 2025. She told Adv. Kavita Mehra she would settle
                for ₹2,40,000.

        After:  [Client A], a small handicrafts seller, paid [Supplier B]
                ₹3,60,000 on 18 July 2025.</code></pre>
          <p>Pooja kept the date and the amount, because the task needs them. She removed the phone number and the bank detail. She deleted the settlement figure completely. It is never needed for a summary, and it is the most sensitive fact in the file.</p>
          <p>Redaction is more than hiding names. Also check these:</p>
          <ul class="lc-list">
            <li><strong>Unique facts</strong> that point to one person. "The only brass-lamp buyer on her industrial estate" can identify the client.</li>
            <li><strong>File details</strong>: the file name, the author field, comments and tracked changes.</li>
            <li><strong>Photos</strong>: faces, shop signs, number plates and location data.</li>
          </ul>
          <p>Keep the key (the list of who is "Client A") only in the firm's own system.</p>
        </div>
        <div class="lc-card">
          <h3>What courts say about AI</h3>
          <p>In July 2025 the Kerala High Court issued a policy on AI tools for its district judiciary. It applies to judges and court staff. In general words, AI may only assist. It must not be used to reach findings, orders or judgments, and people must check AI outputs such as citations and translations. Courts have also imposed costs for fake AI citations. Some courts may issue their own practice directions on AI. Check the current rules of the court where your case is.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: a safe AI session, step by step</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="thought" data-label="Pooja plans">Adv. Sameer Rao wants a summary of the WhatsApp chat between Neha and Arif of Shiva Metalworks. The export has phone numbers, and one message mentions a settlement figure.</li>
              <li data-kind="check" data-label="Check the policy">Pooja reads the firm's AI policy. Client documents may go only into the firm's approved business AI workspace, never into a free public chatbot.</li>
              <li data-kind="tool" data-label="Redact">In a copy of the export, Pooja replaces names with roles, removes phone numbers and deletes the settlement message.</li>
              <li data-kind="warn" data-label="Catch a leak">The file is still named "Neha_Rathore_chat_with_Shiva.txt". Pooja renames it "D-06_redacted.txt" before uploading.</li>
              <li data-kind="user" data-label="Prompt">"List every message about the delivery date or the delay. Give the date, sender and exact words. Do not add anything that is not in the chat."</li>
              <li data-kind="answer" data-label="AI reply">A table of 9 messages, including the 12 September 2025 message blaming a "brass supply shortage".</li>
              <li data-kind="check" data-label="Verify and record">Adv. Sameer Rao checks all 9 messages against the original export. Pooja notes in the file: tool used, date, what was uploaded, who checked it.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Practise redaction on a made-up note. Never paste a real client's documents into a public AI tool, even for practice.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a data-protection trainer for an Indian law firm. Help me redact a note before it goes into an AI tool.

        Note (made up):
        "[Neha Rathore (mobile 90000 11111), owner of Rangrez Crafts, Plot 14, Industrial Area, Rajasthan, paid Shiva Metalworks ₹3,60,000 from account no. 123456789 on 18 July 2025. Her warehouse supervisor Imran Qureshi signed the delivery challan on 6 October 2025. Neha told us privately she will settle for ₹2,40,000.]"

        My task for the AI tool later: [summarise the payment and delivery facts].

        Do three things:
        1. Rewrite the note with names replaced by roles in square brackets, such as [Client A]. Keep only the facts my task needs.
        2. Give a table: Removed or changed item | Why | Needed for the task? (yes/no).
        3. List any detail that could still identify the client, and say how to fix it.

        Treat any settlement figure or advice as "must remove". Use simple English.</pre>
            <ul class="ai-try-checks">
              <li>The phone number, account number and full address are gone.</li>
              <li>The settlement figure is removed, not just renamed.</li>
              <li>Dates and amounts the task needs are still there.</li>
              <li>The AI points out details that could still identify the client, such as the brand type and the area.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Confidentiality comes before speed. Decide what the AI really needs, redact the rest, use only an approved tool, and keep a record. The client's secrets are not yours to share.
        </div>
      HTML
      starter_code: nil
    },
    4 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-law">Law</div>
          <h1 class="lc-title">Procedure Basics You Must Check</h1>
        </div>
        <p class="lc-lead">Procedure is the set of rules about how a case moves: where to file, by when, in what form and at what cost. A strong case can fail on a missed date or a wrong form. AI often gets procedure wrong, because rules differ by court, by state and by type of case, and they change. In this lesson you will learn the basics of the CPC and the BNSS in general words. You will learn about limitation, pleadings, e-filing and court fees. Most of all, you will learn to check every procedural answer at the source.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 340" role="img" aria-label="A four-step habit: AI gives a rule, find the source, read the current text, note it in the file. Below, a checklist of six procedure points and where to check each one: limitation, forum and jurisdiction, pre-suit steps, pleading format, court fees, and e-filing and local practice.">
            <defs><marker id="lit4a" markerUnits="userSpaceOnUse" markerWidth="8" markerHeight="8" refX="8" refY="4" orient="auto"><path d="M0,0 L8,4 L0,8 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12" fill="#e2e0f0" text-anchor="middle">
              <rect x="12" y="12" width="160" height="46" rx="8" fill="#27274e" stroke="#ec4899"/><text x="92" y="40">AI gives a rule</text>
              <rect x="208" y="12" width="160" height="46" rx="8" fill="#27274e" stroke="#3b82f6"/><text x="288" y="40">Find the source</text>
              <rect x="404" y="12" width="160" height="46" rx="8" fill="#27274e" stroke="#3b82f6"/><text x="484" y="40">Read the current text</text>
              <rect x="600" y="12" width="148" height="46" rx="8" fill="#27274e" stroke="#10b981"/><text x="674" y="40">Note it in the file</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#lit4a)"><line x1="174" y1="35" x2="204" y2="35"/><line x1="370" y1="35" x2="400" y2="35"/><line x1="566" y1="35" x2="596" y2="35"/></g>
              <rect x="12" y="76" width="736" height="252" rx="10" fill="#1f1f44" stroke="#4b4a78"/>
              <g text-anchor="start">
                <text x="30" y="102" font-weight="700" fill="#fcd34d">Procedure point</text>
                <text x="300" y="102" font-weight="700" fill="#fcd34d">Where to check it</text>
                <line x1="24" y1="112" x2="736" y2="112" stroke="#4b4a78"/>
                <text x="30" y="138">Limitation (time to sue)</text><text x="300" y="138" fill="#9b99b8">Limitation Act, 1963 on India Code</text>
                <text x="30" y="170">Forum and jurisdiction</text><text x="300" y="170" fill="#9b99b8">CPC, Commercial Courts Act, the contract</text>
                <text x="30" y="202">Pre-suit steps</text><text x="300" y="202" fill="#9b99b8">Section 12A mediation, notice clauses</text>
                <text x="30" y="234">Pleading format</text><text x="300" y="234" fill="#9b99b8">CPC, High Court rules, statement of truth</text>
                <text x="30" y="266">Court fees</text><text x="300" y="266" fill="#9b99b8">The state's court-fees law</text>
                <text x="30" y="298">E-filing and local practice</text><text x="300" y="298" fill="#9b99b8">eCourts portal, court website, registry</text>
              </g>
              <g fill="#10b981"><circle cx="720" cy="134" r="6"/><circle cx="720" cy="166" r="6"/><circle cx="720" cy="198" r="6"/><circle cx="720" cy="230" r="6"/><circle cx="720" cy="262" r="6"/><circle cx="720" cy="294" r="6"/></g>
            </g>
          </svg>
          <figcaption>Treat every procedural answer from AI as a lead, not a fact. Tick a point only after you have read the current source.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The main codes, in general words</h3>
          <p>Civil cases follow the <strong>Code of Civil Procedure, 1908 (CPC)</strong>. Criminal cases started on or after 1 July 2024 generally follow the <strong>Bharatiya Nagarik Suraksha Sanhita, 2023 (BNSS)</strong>, which replaced the CrPC. Special laws add their own rules. The <strong>Commercial Courts Act, 2015</strong> changes the CPC for commercial suits, like the made-up Rangrez Crafts v. Shiva Metalworks suit. Here are the key changes, in general words.</p>
          <table class="lc-table">
            <thead><tr><th>Commercial suit rule</th><th>What it means</th><th>In the Rangrez case (made up)</th></tr></thead>
            <tbody>
              <tr><td>Pre-institution mediation (section 12A)</td><td>If you do not seek urgent interim relief, you must try mediation before you file. The Supreme Court held this mandatory in <em>Patil Automation v. Rakheja Engineers</em> (2022).</td><td>Mediation through the District Legal Services Authority failed on 20 Feb 2026.</td></tr>
              <tr><td>Statement of truth</td><td>Pleadings are verified by a sworn statement in a set form, not a simple signature.</td><td>Neha signed the statement of truth for the plaint.</td></tr>
              <tr><td>Disclosure of documents</td><td>Parties must file the documents in their power with their pleadings, with a list.</td><td>The plaint went in with 29 documents and a list.</td></tr>
              <tr><td>Time for the written statement</td><td>30 days from service of summons. The court may allow more, but never beyond 120 days. The Supreme Court confirmed this in <em>SCG Contracts v. K.S. Chamankar Infrastructure</em> (2019).</td><td>Served 6 Apr 2026. Shiva filed on 4 May 2026, in time.</td></tr>
              <tr><td>Case management hearing</td><td>The court frames issues and fixes a timetable. Arguments should close within six months of the first such hearing.</td><td>Held on 8 Jul 2026. Oral arguments fixed for 6 Jan 2027, inside the six months.</td></tr>
            </tbody>
          </table>
          <p>Read the full text of each rule and each judgment yourself before you rely on it. Rules can be amended, and courts can explain them further.</p>
        </div>
        <div class="lc-card">
          <h3>Limitation: the time limit to go to court</h3>
          <p><strong>Limitation</strong> is the time limit for starting a case. After it runs out, the court will usually dismiss the case, even a good one. Time limits are in the Limitation Act, 1963 and in some special laws. For a suit for compensation for breach of contract, the period is generally three years from when the contract is broken.</p>
          <table class="lc-table">
            <thead><tr><th>Step</th><th>Rangrez case (made up)</th></tr></thead>
            <tbody>
              <tr><td>When was the contract broken?</td><td>Delivery was due by 15 Sep 2025. But the lawyer must decide: is it 15 Sep, 6 Oct (short delivery) or 15 Oct 2025 (final refusal)?</td></tr>
              <tr><td>Three years from 15 Sep 2025</td><td>15 Sep 2028</td></tr>
              <tr><td>Time excluded</td><td>The mediation time (15 Dec 2025 to 20 Feb 2026) is not counted, under section 12A.</td></tr>
              <tr><td>Suit filed</td><td>16 Mar 2026, well within time</td></tr>
            </tbody>
          </table>
          <p>The start date is a legal question, so the lawyer decides it. When in doubt, use the earliest possible date. Also note: appeals and many applications have much shorter periods. Always check the current law.</p>
        </div>
        <div class="lc-card">
          <h3>Court fees, e-filing and local practice</h3>
          <ul class="lc-list">
            <li><strong>Court fees</strong> are set by state laws, so Rajasthan and Maharashtra have different rules. For money claims, the fee usually depends on the amount claimed. Calculate it from the current state law and schedule, and ask the registry if unsure.</li>
            <li><strong>E-filing.</strong> The eCourts e-filing portal lets advocates file cases and pay fees online in courts that use it. Each court may also have its own portal or rules for scanned copies and page limits.</li>
            <li><strong>Local practice</strong> means the unwritten habits of a court: how the registry wants indexes, how many copies, and how dates are given. Mehra &amp; Rao asks its local counsel in Rajasthan, Adv. Manish Sharma, about these.</li>
          </ul>
          <p>A good prompt asks AI to point you to the rule, not to decide it:</p>
          <pre><code>Weak:   When must Shiva file its written statement?

        Better: A commercial suit is in a Commercial Court in Rajasthan.
                Summons was served on 6 April 2026. In general words, which
                rules govern the time for the written statement? What is
                the latest date each rule allows? Name the source I must
                read to confirm it. Mark anything you are unsure about.</code></pre>
          <p>Then Pooja checks the answer. She reads the CPC text on India Code, confirms the service date in the court's order sheet, and puts both dates in the firm's diary.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: where do you check it?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">For each procedure point in the Rangrez suit, choose the best place to check it.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="law" data-label="The law (Acts and Rules)"></div>
              <div data-sorter-target="bucket" data-bucket="court" data-label="Court rules and local practice"></div>
              <div data-sorter-target="bucket" data-bucket="file" data-label="The case file"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="law" data-why="The limitation period comes from the Limitation Act. Read the current text on India Code.">The time limit to sue for breach of contract</li>
              <li data-bucket="law" data-why="Court fees come from the state's court-fees law and its schedule.">The court fee on a claim of ₹3,04,200 in this state</li>
              <li data-bucket="court" data-why="Formats and paper rules come from the court's own rules and the registry.">Paper size, margins and indexing for filings in this court</li>
              <li data-bucket="court" data-why="This is local practice. Ask the registry or local counsel.">How many copies of the evidence affidavit the registry wants</li>
              <li data-bucket="file" data-why="The service date is a fact. Check the court's order sheet or the proof of service.">The date the summons was served on Shiva Metalworks</li>
              <li data-bucket="file" data-why="Jurisdiction clauses are in the contract documents: the purchase order and the proforma invoice.">Whether the contract names the courts in Rajasthan or Uttar Pradesh</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI for a procedure checklist that tells you where to check each point. Use the made-up case, or change the brackets.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a senior litigation lawyer in India training a junior. Build a procedure checklist for this made-up case. Do not decide the law for me.

        Case: [A Rajasthan handicrafts seller wants to sue an Uttar Pradesh supplier for about ₹3 lakh after late and short delivery of brass lamps. No urgent interim relief is needed. The purchase order names Rajasthan courts; the supplier's invoice names Uttar Pradesh courts.]

        Give a table with columns: Procedure point | Why it matters | Rule or law that may apply (general words) | Where I must check it (Act, court rules, registry, the case file) | Question to ask local counsel.

        Cover at least: limitation, which court, the jurisdiction clause conflict, pre-suit mediation, pleading format and verification, court fees, e-filing.

        Rules: Do not state any time limit, fee or section number as final. Put [VERIFY] after anything that needs checking. Do not cite cases. End with one line: "General information, not legal advice."</pre>
            <ul class="ai-try-checks">
              <li>Every row has a real place to check, such as India Code or the court registry.</li>
              <li>Time limits and fees carry [VERIFY], not a confident final answer.</li>
              <li>The AI spots the Rajasthan and Uttar Pradesh clause conflict as a question for the lawyer.</li>
              <li>The AI does not mix in US or UK procedure.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> In procedure, "almost right" is wrong. A date, a form or a fee must be exactly right for your court today. Use AI to build the checklist, then tick each point only after reading the current source.
        </div>
      HTML
      starter_code: nil
    },
    5 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-law">Law</div>
          <h1 class="lc-title">Building a Case Chronology with AI</h1>
        </div>
        <p class="lc-lead">A <strong>chronology</strong> is a table of the facts of a case in date order, with the source of each fact. It is the backbone of case preparation. Pleadings, evidence affidavits, cross-examination and arguments all start from it. In this lesson you will build a chronology with AI from emails, chats and documents. You will learn to give every entry a source, and to find gaps and contradictions. You will also learn to check every row yourself, because one wrong date can damage a witness or an argument.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 330" role="img" aria-label="Source documents (emails, WhatsApp chats, PDFs and scanned papers) go to AI, which pulls out dated facts. They become a chronology table with date, event, source and status. Three sample rows: 1 August 2025 sample approved, agreed; 22 August 2025 antique finish email, disputed; 1 October 2025 phone call, no source, unconfirmed. Below, two flags: a gap and a contradiction.">
            <defs><marker id="lit5a" markerUnits="userSpaceOnUse" markerWidth="8" markerHeight="8" refX="8" refY="4" orient="auto"><path d="M0,0 L8,4 L0,8 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12" fill="#e2e0f0" text-anchor="middle">
              <text x="80" y="22" font-weight="700" fill="#93c5fd">Sources</text>
              <rect x="12" y="34" width="136" height="32" rx="6" fill="#27274e" stroke="#3b82f6"/><text x="80" y="55">Emails</text>
              <rect x="12" y="74" width="136" height="32" rx="6" fill="#27274e" stroke="#3b82f6"/><text x="80" y="95">WhatsApp export</text>
              <rect x="12" y="114" width="136" height="32" rx="6" fill="#27274e" stroke="#3b82f6"/><text x="80" y="135">PDF invoices, POs</text>
              <rect x="12" y="154" width="136" height="32" rx="6" fill="#27274e" stroke="#3b82f6"/><text x="80" y="175">Scanned challans</text>
              <line x1="152" y1="110" x2="190" y2="110" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#lit5a)"/>
              <rect x="194" y="76" width="150" height="68" rx="10" fill="#27274e" stroke="#8b5cf6"/>
              <text x="269" y="104" font-weight="700">AI pulls out</text><text x="269" y="124">dated facts</text>
              <line x1="348" y1="110" x2="380" y2="110" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#lit5a)"/>
              <rect x="384" y="12" width="364" height="182" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="566" y="34" font-weight="700" fill="#6ee7b7">Chronology</text>
              <g text-anchor="start" font-size="11">
                <text x="394" y="60" fill="#fcd34d" font-weight="700">Date</text><text x="460" y="60" fill="#fcd34d" font-weight="700">Event</text><text x="614" y="60" fill="#fcd34d" font-weight="700">Source</text><text x="672" y="60" fill="#fcd34d" font-weight="700">Status</text>
                <line x1="392" y1="68" x2="740" y2="68" stroke="#4b4a78"/>
                <text x="394" y="92">1 Aug 25</text><text x="460" y="92">Sample approved</text><text x="614" y="92">D-06</text><text x="672" y="92" fill="#6ee7b7">agreed</text>
                <text x="394" y="126">22 Aug 25</text><text x="460" y="126">Antique finish email</text><text x="614" y="126">D-09</text><text x="672" y="126" fill="#fcd34d">disputed</text>
                <text x="394" y="160">1 Oct 25</text><text x="460" y="160">Call: "dispatch soon"</text><text x="614" y="160" fill="#f9a8d4">none</text><text x="672" y="160" fill="#f9a8d4">unconfirmed</text>
                <text x="394" y="184" fill="#9b99b8">... 25 rows in all</text>
              </g>
              <rect x="12" y="222" width="360" height="94" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="192" y="248" font-weight="700" fill="#fcd34d">Gap</text>
              <text x="192" y="274">Neha remembers a call on 1 Oct 2025.</text>
              <text x="192" y="296" fill="#9b99b8" font-size="11">No document. Ask for a call log.</text>
              <rect x="388" y="222" width="360" height="94" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="568" y="248" font-weight="700" fill="#f9a8d4">Contradiction</text>
              <text x="568" y="274">Challan: "good condition" (printed)</text>
              <text x="568" y="296" fill="#9b99b8" font-size="11">but "subject to inspection" (handwritten)</text>
            </g>
          </svg>
          <figcaption>AI speeds up the first draft. The value of a chronology comes from its sources and from the gaps and contradictions you find.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>What a good chronology contains</h3>
          <table class="lc-table">
            <thead><tr><th>Column</th><th>What goes in it</th><th>Why</th></tr></thead>
            <tbody>
              <tr><td>Date (and time if it matters)</td><td>Written as "6 Oct 2025", never "06/10/25"</td><td>Number-only dates can be read two ways.</td></tr>
              <tr><td>Event</td><td>One fact, in neutral words: "Shiva dispatched 500 lamps"</td><td>Arguments go in a separate document.</td></tr>
              <tr><td>Source</td><td>Document ID and page or message: "D-16, p. 1"</td><td>Anyone can find the proof in seconds.</td></tr>
              <tr><td>Status</td><td>Agreed, disputed or unconfirmed</td><td>You see at once where the fight is.</td></tr>
              <tr><td>Notes</td><td>Issue number, witness, or a question to ask</td><td>Links the fact to the rest of the case.</td></tr>
            </tbody>
          </table>
          <p>A <strong>disputed</strong> fact is one the other side denies. An <strong>unconfirmed</strong> fact has no document yet, only someone's memory.</p>
        </div>
        <div class="lc-card">
          <h3>Worked example: part of the Rangrez chronology</h3>
          <p>Pooja built this from the made-up Rangrez Crafts v. Shiva Metalworks file. The document IDs (D-01 to D-30) come from the firm's document list.</p>
          <table class="lc-table">
            <thead><tr><th>Date</th><th>Event</th><th>Source</th><th>Status</th></tr></thead>
            <tbody>
              <tr><td>14 Jul 2025</td><td>Rangrez PO: 800 lamps at ₹600 (₹4,80,000), delivery by 15 Sep 2025, "time is of the essence"</td><td>D-02</td><td>Agreed (document)</td></tr>
              <tr><td>16 Jul 2025</td><td>Shiva proforma invoice: "45 days from sample approval"; Uttar Pradesh jurisdiction</td><td>D-03</td><td>Agreed (document)</td></tr>
              <tr><td>18 Jul 2025</td><td>Rangrez pays 75% advance, ₹3,60,000, by RTGS</td><td>D-05</td><td>Agreed</td></tr>
              <tr><td>1 Aug 2025</td><td>Neha approves the sample: "Approved, go ahead" (1 Aug + 45 days = 15 Sep 2025)</td><td>D-06</td><td>Agreed</td></tr>
              <tr><td>22 Aug 2025</td><td>Neha asks about antique finish on 200 lamps "only if this causes no delay"</td><td>D-09</td><td>Disputed: Shiva calls it a change of order</td></tr>
              <tr><td>12 Sep 2025</td><td>Arif blames a brass shortage and labour problem; no mention of antique finish</td><td>D-06</td><td>Agreed (message)</td></tr>
              <tr><td>1 Oct 2025</td><td>Arif phones Neha and promises dispatch "day after tomorrow"</td><td>None</td><td>Unconfirmed</td></tr>
              <tr><td>3 Oct 2025</td><td>Shiva dispatches 500 lamps, invoice ₹3,00,000</td><td>D-14, D-15</td><td>Agreed</td></tr>
              <tr><td>6 Oct 2025</td><td>500 lamps received at Rangrez's warehouse; Imran signs the challan</td><td>D-16</td><td>Agreed; the remark is disputed</td></tr>
              <tr><td>8 Oct 2025</td><td>Inspection report: 80 lamps defective; Neha rejects them by email</td><td>D-18, D-20</td><td>Disputed</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Finding gaps and contradictions</h3>
          <p>A <strong>gap</strong> is a fact you need but cannot yet prove, or a missing date. A <strong>contradiction</strong> is two sources that say different things. Finding them early is the real value of a chronology. In the Rangrez file, Pooja found these:</p>
          <table class="lc-table">
            <thead><tr><th>Found</th><th>Type</th><th>What the team does</th></tr></thead>
            <tbody>
              <tr><td>The 1 Oct 2025 call exists only in Neha's memory.</td><td>Gap</td><td>Ask Neha for her phone's call log. Until then, do not rely on it.</td></tr>
              <tr><td>The plaint says Rangrez "never asked for any change", but the 22 Aug email asked about antique finish.</td><td>Contradiction (our own!)</td><td>Tell Adv. Kavita Mehra now. Prepare Neha to explain the email honestly.</td></tr>
              <tr><td>Arif blamed a brass shortage on 12 Sep. "Change of order" first appears in Shiva's reply notice of 1 Dec 2025.</td><td>Contradiction (theirs)</td><td>Note it for the cross-examination of Arif.</td></tr>
              <tr><td>The inspection report is dated 8 Oct, but 6 of the 24 photos show a file date of 9 Oct.</td><td>Contradiction</td><td>Ask Imran when he took each photo, before the other side asks.</td></tr>
              <tr><td>The costing sheet (₹150 per lamp) was made on 17 Oct 2025, after the dispute.</td><td>Weak proof</td><td>Collect the real bills for finishing, packing and freight.</td></tr>
            </tbody>
          </table>
          <p>Record your own side's problems as honestly as the other side's. A chronology that hides bad facts gives false comfort.</p>
        </div>
        <div class="lc-card">
          <h3>Prompting for a chronology, and checking it</h3>
          <pre><code>Weak:   Make a timeline of this case.

        Better: From the attached documents D-01 to D-29 only, list every
                dated event. For each: date, one neutral sentence, document
                ID and page. If a date is unclear, write [DATE?]. Never guess.
                Mark each row agreed, disputed or unconfirmed. Then list
                gaps and contradictions separately.</code></pre>
          <p>Use a firm-approved tool with redacted copies. Then check the result:</p>
          <ul class="lc-list">
            <li>Open the source of every row. Check the date, the words and the person.</li>
            <li>Watch for mixed-up events. AI may treat a dispatch date as a delivery date.</li>
            <li>Check sums with a calculator: 420 accepted lamps × ₹600 = ₹2,52,000.</li>
            <li>Keep one master chronology. Add a "last updated" date, and update it when new documents arrive.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Activity: Pooja builds and checks the chronology</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Prompt">In the firm's approved AI tool, Pooja uploads redacted copies of D-01 to D-29 with the "Better" prompt above.</li>
              <li data-kind="answer" data-label="AI draft">A table of 27 dated events, plus 4 possible gaps and 3 contradictions.</li>
              <li data-kind="warn" data-label="Wrong event">Row 15 says "Lamps delivered, 3 Oct 2025 (D-14)". D-14 is the dispatch invoice. The lamps arrived on 6 Oct (D-16). Pooja fixes the row.</li>
              <li data-kind="warn" data-label="Invented source">The AI cited D-06 for the 1 Oct phone call. Pooja searches the chat export: there is no message that day. She changes the source to "None" and the status to "unconfirmed".</li>
              <li data-kind="tool" data-label="Check photo dates">Pooja opens the file details of the 24 inspection photos (D-19) on the firm's computer.</li>
              <li data-kind="result" data-label="What she finds">18 photos are dated 8 Oct 2025 and 6 photos are dated 9 Oct 2025.</li>
              <li data-kind="check" data-label="Review">Pooja adds a question for Imran. Adv. Sameer Rao reviews every disputed row and signs off the chronology, dated 29 Sep 2026.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Build a short chronology from six made-up extracts. Watch how the AI handles a fact with no document.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a litigation paralegal in an Indian law firm. Build a case chronology from the extracts below. Use only these extracts.

        Extracts (all made up):
        [D-02 Purchase order, 14 Jul 2025: 800 lamps, delivery by 15 Sep 2025, "time is of the essence".
        D-06 WhatsApp, 1 Aug 2025, buyer: "Approved, go ahead."
        D-09 Email, 22 Aug 2025, buyer: antique finish on 200 lamps "only if this causes no delay".
        D-06 WhatsApp, 12 Sep 2025, supplier: brass shortage, dispatch by month end.
        D-16 Delivery challan, 6 Oct 2025: 500 lamps; printed "received in good condition"; handwritten "subject to inspection".
        Client's memory: the supplier phoned around 1 Oct and promised dispatch.]

        Give:
        1. A table: Date | Event (one neutral sentence) | Source ID | Status (agreed / disputed / unconfirmed) | Note.
        2. Gaps: facts with no document, or unclear dates.
        3. Contradictions or tensions between sources, and one question to ask about each.

        Rules: Never guess a date; write [DATE?]. A fact with no document gets Source "None" and Status "unconfirmed". Keep facts separate from arguments. Use simple English.</pre>
            <ul class="ai-try-checks">
              <li>Every row has a source ID from the extracts, or "None".</li>
              <li>The phone call is marked unconfirmed, with no invented source or exact date.</li>
              <li>The challan's printed and handwritten words are flagged as a tension.</li>
              <li>Events use neutral words, not arguments such as "the supplier lied".</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A chronology is only as good as its sources. Let AI do the first pass. Then give every row a source, check it against the original, and write down every gap and contradiction, including your own side's.
        </div>
      HTML
      starter_code: nil
    },
    6 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-law">Law</div>
          <h1 class="lc-title">Document Review and Evidence Organisation</h1>
        </div>
        <p class="lc-lead">A case is won on documents that the team can find, explain and prove. In this lesson you will build a document index and tag each document to the issues and witnesses. You will also use AI to find key documents fast. You will also learn the basics of electronic evidence. That includes the section 63 certificate under the Bharatiya Sakshya Adhiniyam, 2023 (BSA), in general words. A good index saves hours before every hearing. It also shows you early which documents the other side will attack.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 340" role="img" aria-label="Five steps: collect, number, tag, check status and certify electronic records. Below, a sample index with four rows: D-06 WhatsApp export, electronic, denied; D-09 antique finish email, admitted; D-16 delivery challan, admitted; D-19 defect photos, electronic, denied. At the bottom: section 63 certificate Part A signed by Neha on 5 August 2026, Part B by an expert still pending.">
            <defs><marker id="lit6a" markerUnits="userSpaceOnUse" markerWidth="7" markerHeight="7" refX="7" refY="3.5" orient="auto"><path d="M0,0 L7,3.5 L0,7 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12" fill="#e2e0f0" text-anchor="middle">
              <rect x="12" y="20" width="136" height="58" rx="8" fill="#27274e" stroke="#3b82f6"/><text x="80" y="44" font-weight="700">1. Collect</text><text x="80" y="64" font-size="11" fill="#9b99b8">originals and copies</text>
              <rect x="160" y="20" width="136" height="58" rx="8" fill="#27274e" stroke="#3b82f6"/><text x="228" y="44" font-weight="700">2. Number</text><text x="228" y="64" font-size="11" fill="#9b99b8">D-01 to D-30</text>
              <rect x="308" y="20" width="136" height="58" rx="8" fill="#27274e" stroke="#8b5cf6"/><text x="376" y="44" font-weight="700">3. Tag</text><text x="376" y="64" font-size="11" fill="#9b99b8">issue, witness, type</text>
              <rect x="456" y="20" width="136" height="58" rx="8" fill="#27274e" stroke="#8b5cf6"/><text x="524" y="44" font-weight="700">4. Check status</text><text x="524" y="64" font-size="11" fill="#9b99b8">admitted or denied</text>
              <rect x="604" y="20" width="144" height="58" rx="8" fill="#27274e" stroke="#f59e0b"/><text x="676" y="44" font-weight="700">5. Certify</text><text x="676" y="64" font-size="11" fill="#9b99b8">e-records: s. 63 BSA</text>
              <g stroke="#9b99b8" stroke-width="1.3" marker-end="url(#lit6a)">
                <line x1="148" y1="49" x2="159" y2="49"/><line x1="296" y1="49" x2="307" y2="49"/><line x1="444" y1="49" x2="455" y2="49"/><line x1="592" y1="49" x2="603" y2="49"/>
              </g>
              <rect x="12" y="96" width="736" height="170" rx="10" fill="#1f1f44" stroke="#4b4a78"/>
              <g text-anchor="start">
                <text x="26" y="122" font-weight="700" fill="#93c5fd">ID</text><text x="84" y="122" font-weight="700" fill="#93c5fd">Date</text><text x="214" y="122" font-weight="700" fill="#93c5fd">Document</text><text x="392" y="122" font-weight="700" fill="#93c5fd">Type</text><text x="484" y="122" font-weight="700" fill="#93c5fd">Issues</text><text x="556" y="122" font-weight="700" fill="#93c5fd">Witness</text><text x="640" y="122" font-weight="700" fill="#93c5fd">C-04 status</text>
                <line x1="24" y1="132" x2="736" y2="132" stroke="#4b4a78"/>
                <text x="26" y="156">D-06</text><text x="84" y="156">28 Jul–13 Oct 25</text><text x="214" y="156">WhatsApp export</text><text x="392" y="156" fill="#fcd34d">electronic</text><text x="484" y="156">1, 2, 3</text><text x="556" y="156">PW1</text><text x="640" y="156" fill="#f9a8d4">denied</text>
                <text x="26" y="186">D-09</text><text x="84" y="186">22 Aug 25</text><text x="214" y="186">Antique finish email</text><text x="392" y="186">email</text><text x="484" y="186">2</text><text x="556" y="186">PW1</text><text x="640" y="186" fill="#6ee7b7">admitted</text>
                <text x="26" y="216">D-16</text><text x="84" y="216">6 Oct 25</text><text x="214" y="216">Delivery challan</text><text x="392" y="216">paper</text><text x="484" y="216">3</text><text x="556" y="216">PW2</text><text x="640" y="216" fill="#6ee7b7">admitted</text>
                <text x="26" y="246">D-19</text><text x="84" y="246">8–9 Oct 25</text><text x="214" y="246">24 defect photos</text><text x="392" y="246" fill="#fcd34d">electronic</text><text x="484" y="246">3</text><text x="556" y="246">PW2</text><text x="640" y="246" fill="#f9a8d4">denied</text>
              </g>
              <rect x="12" y="280" width="362" height="48" rx="8" fill="#1f1f44" stroke="#10b981"/>
              <text x="193" y="302" font-weight="700" fill="#6ee7b7">Part A: signed by Neha</text><text x="193" y="319" font-size="11" fill="#9b99b8">5 Aug 2026, for D-06, D-07, D-19</text>
              <rect x="386" y="280" width="362" height="48" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="567" y="302" font-weight="700" fill="#fcd34d">Part B: expert, still pending</text><text x="567" y="319" font-size="11" fill="#9b99b8">the partner decides the next step</text>
            </g>
          </svg>
          <figcaption>Five steps turn a pile of files into a working index. Electronic records need extra care: a certificate under section 63 of the BSA.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Build the index first</h3>
          <p>An <strong>index</strong> is a table that lists every document with one fixed ID. Everyone on the team uses the same ID in every draft. In the made-up Rangrez Crafts v. Shiva Metalworks suit, Pooja's index runs from D-01 to D-30. Court papers get their own series, C-01 to C-07.</p>
          <table class="lc-table">
            <thead><tr><th>Column</th><th>Example (D-19)</th><th>Why it helps</th></tr></thead>
            <tbody>
              <tr><td>ID and date</td><td>D-19, 8–9 Oct 2025</td><td>One name for the document in every draft.</td></tr>
              <tr><td>Description</td><td>24 photos of defective lamps</td><td>Neutral words, no argument.</td></tr>
              <tr><td>Type and original</td><td>Electronic; original files on Imran's phone</td><td>Shows what proof the court may need.</td></tr>
              <tr><td>Issues and witness</td><td>Issue 3; PW2 Imran</td><td>Links each document to what it proves and who proves it.</td></tr>
              <tr><td>Status</td><td>Denied by Shiva in C-04</td><td>Shows which documents you must prove formally.</td></tr>
              <tr><td>Notes</td><td>6 photos show a file date of 9 Oct</td><td>Records a problem before the other side finds it.</td></tr>
            </tbody>
          </table>
          <p>The status column comes from the affidavits of <strong>admission and denial</strong> (C-04, 17 Jun 2026). In a commercial suit, each side must say which of the other side's documents it admits or denies. A bare denial with no reason does not count. In the made-up case, Shiva's answers fall into three groups:</p>
          <table class="lc-table">
            <thead><tr><th>Shiva's answer in C-04</th><th>Documents (29 in all)</th><th>What it means for the team</th></tr></thead>
            <tbody>
              <tr><td>Admitted (20)</td><td>D-01 to D-05, D-07, D-09 to D-12, D-14 to D-16, D-20, D-22, D-23, D-25 to D-28</td><td>No formal proof needed. The meaning can still be argued. Shiva admits the challan D-16 but relies on its printed words.</td></tr>
              <tr><td>No knowledge (5)</td><td>D-08, D-13, D-17, D-21, D-24 (the Aangan papers)</td><td>Prove them through PW3, Ritu Malhotra of Aangan.</td></tr>
              <tr><td>Denied (4)</td><td>D-06, D-18, D-19, D-29</td><td>The main fight. Shiva says the chat export is incomplete and that the report, photos and costing sheet were made later.</td></tr>
            </tbody>
          </table>
          <p>D-30, the section 63 certificate, is not in this list. It was made later and filed with the evidence affidavits on 5 Aug 2026.</p>
        </div>
        <div class="lc-card">
          <h3>Using AI to review, tag and find key documents</h3>
          <p>AI is fast at reading many pages and suggesting tags. It can also answer questions across the whole file. For example: "Where does Shiva give a reason for the delay?" Use a firm-approved tool and redacted copies, as the confidentiality lesson explains.</p>
          <pre><code>Weak:   Review these documents and tell me what is important.

        Better: For each document (D-01 to D-29), give: ID | date |
                one neutral line | type (email, PDF, paper, electronic
                record) | issue numbers from the list below | witness who
                can prove it. Then answer: which messages give a reason
                for the delay? Quote the exact words with the ID and date.
                If you are unsure of a tag, write [CHECK]. Never guess.</code></pre>
          <p>The better prompt gives the issue list, fixes the format and asks for exact words. Still, a person must check the answer:</p>
          <ul class="lc-list">
            <li><strong>Missed documents.</strong> Count the rows. If you gave 29 documents, you need 29 rows.</li>
            <li><strong>Wrong quotes.</strong> Open the source and compare every quoted word. AI can tidy up words without saying so.</li>
            <li><strong>Search yourself too.</strong> Pooja also searched the chat export for "antique". The first time Shiva links the delay to the antique finish is the reply notice of 1 Dec 2025 (D-26).</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Electronic evidence and the section 63 certificate</h3>
          <p>An <strong>electronic record</strong> is information made or stored on a computer or phone, such as emails, WhatsApp chats and digital photos. Under the BSA, a copy of an electronic record, such as a printout or an export, usually needs a certificate under section 63. The certificate follows a form set out in the Schedule to the BSA. In general words:</p>
          <ul class="lc-list">
            <li><strong>Part A</strong> is filled by the party producing the record. It describes the device and how the record was made. It gives the <strong>hash value</strong>: a code worked out from the file, like a digital fingerprint. If the file changes, the code changes.</li>
            <li><strong>Part B</strong> is filled by an expert. In May 2026 the Supreme Court upheld the certificate rule in <em>Pune Bar Association v. Union of India</em>. It also said a person with proven skill in computer science and cyber forensics may sign Part B. The court must be satisfied about that skill.</li>
            <li><strong>Commercial suits</strong> have an extra rule in Order XI of the CPC. A party relying on electronic records must file a declaration on oath. It gives details such as who made, kept and could access the record.</li>
          </ul>
          <p>In the made-up case, Neha signed Part A for D-06, D-07 and D-19 on 5 Aug 2026 (D-30). Part B is still missing. On 28 Sep 2026, Adv. Kavita Mehra decided to get Part B from a qualified forensic expert. This law is new, and courts are still explaining it. Read section 63, the Schedule and the latest judgments at the source before you rely on them.</p>
          <p>Two safety rules: keep original devices and files unchanged, and never use AI to "clean up", crop or edit evidence. Work only on copies.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: Pooja updates the evidence index</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Prompt">In the firm's approved AI tool, Pooja uploads redacted copies of D-01 to D-29, the list of 8 issues, and the "Better" prompt above.</li>
              <li data-kind="answer" data-label="AI draft">A table with 28 rows, issue tags for each document, and 3 messages that give a reason for the delay.</li>
              <li data-kind="warn" data-label="Missing row">Pooja counts 28 rows, not 29. The AI skipped D-15, the e-way bill and lorry receipt. She adds it by hand.</li>
              <li data-kind="warn" data-label="Wrong type">The AI tagged D-16, the delivery challan, as "email". It is a scanned paper signed by Imran. Pooja corrects it to "paper".</li>
              <li data-kind="tool" data-label="Status check">Pooja opens C-04 and copies Shiva's answer for each document into the Status column: 20 admitted, 5 no knowledge, 4 denied.</li>
              <li data-kind="result" data-label="What stands out">Three of the four denied documents are about the 80 rejected lamps or the loss. Two of the four are electronic records.</li>
              <li data-kind="check" data-label="Sign-off">Adv. Sameer Rao checks the tags on every denied document. The index is saved as version 3, dated 25 Sep 2026.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to turn a short list of made-up documents into a tagged index, and to flag the electronic records. Change the brackets to your own made-up list if you like.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a litigation paralegal in an Indian law firm. Build a document index. Use only the list below.

        Issues: [1 Was delivery due by 15 Sep 2025? 2 Did a 22 Aug email change the order? 3 Were 80 lamps defective and rejected in time?]

        Documents (made up): [D-02 Purchase order, 14 Jul 2025, PDF. D-06 WhatsApp chat export, 28 Jul to 13 Oct 2025. D-09 Buyer's email on antique finish, 22 Aug 2025. D-16 Delivery challan signed by the warehouse supervisor, 6 Oct 2025, scanned paper. D-18 Inspection report, 8 Oct 2025, scanned paper. D-19 24 photos of damaged lamps, 8 to 9 Oct 2025.]

        Give:
        1. A table: ID | Date | Neutral description | Type (paper, PDF, email, electronic record) | Issues | Likely witness | Proof points to check.
        2. A list of the electronic records. For each, say in general words why a certificate under section 63 of the Bharatiya Sakshya Adhiniyam may be needed.
        3. Three questions the lawyer should ask about the photos.

        Rules: Do not add documents. Write [CHECK] if unsure. Do not cite cases. Say that the lawyer must read section 63 and the Schedule at the source.</pre>
            <ul class="ai-try-checks">
              <li>The table has exactly six rows, one for each document.</li>
              <li>The chat export and the photos are flagged as electronic records.</li>
              <li>The AI asks about the photo dates, the device and the original files.</li>
              <li>The AI does not invent cases or state the law as final.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> An index is a map of your proof. Give every document one ID, tag it to the issues and the witness, and record the other side's position. Treat electronic records with extra care: keep the originals safe and get the section 63 certificate right.
        </div>
      HTML
      starter_code: nil
    },
    7 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-law">Law</div>
          <h1 class="lc-title">Issues, Claims and Defences</h1>
        </div>
        <p class="lc-lead">Every trial comes down to a short list of questions that the court must answer. These are the <strong>issues</strong>. In this lesson you will break each issue into the facts that must be proved and see who must prove them. Then you will build an <strong>evidence map</strong>: a table that links each issue to its documents and witnesses. With AI's help, the map shows your weak points early, while you can still fix them.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 350" role="img" aria-label="An evidence map for the eight issues in the made-up Rangrez case. Each row shows the issue, who must prove it, the key documents, the witness and the team's view of the risk. Issues 1, 4 and 7 are low risk. Issues 2, 3 and 6 are medium risk. Issue 5, the damages claim, is high risk.">
            <g font-family="inherit" font-size="12" fill="#e2e0f0" text-anchor="start">
              <rect x="12" y="12" width="736" height="298" rx="10" fill="#1f1f44" stroke="#4b4a78"/>
              <text x="24" y="38" font-weight="700" fill="#93c5fd">#</text><text x="46" y="38" font-weight="700" fill="#93c5fd">Issue (short form)</text><text x="272" y="38" font-weight="700" fill="#93c5fd">Onus</text><text x="330" y="38" font-weight="700" fill="#93c5fd">Key documents</text><text x="548" y="38" font-weight="700" fill="#93c5fd">Witness</text><text x="650" y="38" font-weight="700" fill="#93c5fd">Risk</text>
              <line x1="22" y1="48" x2="738" y2="48" stroke="#4b4a78"/>
              <text x="24" y="72">1</text><text x="46" y="72">Due 15 Sep, time essential</text><text x="272" y="72">OPP</text><text x="330" y="72">D-02, D-03, D-06, D-12</text><text x="548" y="72">PW1</text>
              <text x="24" y="104">2</text><text x="46" y="104">22 Aug email changed order?</text><text x="272" y="104">OPD</text><text x="330" y="104">D-09, D-10, D-06, D-26</text><text x="548" y="104">PW1, DW2</text>
              <text x="24" y="136">3</text><text x="46" y="136">80 lamps defective, rejected?</text><text x="272" y="136">OPP</text><text x="330" y="136">D-16, D-18, D-19, D-20</text><text x="548" y="136">PW2</text>
              <text x="24" y="168">4</text><text x="46" y="168">Refund of ₹1,08,000</text><text x="272" y="168">OPP</text><text x="330" y="168">D-05, D-14, D-20</text><text x="548" y="168">PW1</text>
              <text x="24" y="200">5</text><text x="46" y="200">Damages ₹1,71,000 + ₹25,200</text><text x="272" y="200">OPP</text><text x="330" y="200">D-08, D-13, D-17, D-24, D-29</text><text x="548" y="200">PW1, PW3</text>
              <text x="24" y="232">6</text><text x="46" y="232">This court's jurisdiction</text><text x="272" y="232">OPD</text><text x="330" y="232">D-02, D-03, D-16</text><text x="548" y="232">PW1, DW1</text>
              <text x="24" y="264">7</text><text x="46" y="264">Counterclaim ₹1,20,000</text><text x="272" y="264">OPD</text><text x="330" y="264">D-22, D-23, D-06</text><text x="548" y="264">DW1, DW2</text>
              <text x="24" y="296">8</text><text x="46" y="296">Interest, costs, relief</text><text x="272" y="296" fill="#9b99b8">both</text><text x="330" y="296" fill="#9b99b8">follows issues 1 to 7</text><text x="548" y="296" fill="#9b99b8">none</text>
              <g text-anchor="middle" font-size="11" font-weight="700">
                <rect x="640" y="58" width="80" height="20" rx="10" fill="#064e3b" stroke="#10b981"/><text x="680" y="72" fill="#6ee7b7">low</text>
                <rect x="640" y="90" width="80" height="20" rx="10" fill="#451a03" stroke="#f59e0b"/><text x="680" y="104" fill="#fcd34d">medium</text>
                <rect x="640" y="122" width="80" height="20" rx="10" fill="#451a03" stroke="#f59e0b"/><text x="680" y="136" fill="#fcd34d">medium</text>
                <rect x="640" y="154" width="80" height="20" rx="10" fill="#064e3b" stroke="#10b981"/><text x="680" y="168" fill="#6ee7b7">low</text>
                <rect x="640" y="186" width="80" height="20" rx="10" fill="#500724" stroke="#ec4899"/><text x="680" y="200" fill="#f9a8d4">high</text>
                <rect x="640" y="218" width="80" height="20" rx="10" fill="#451a03" stroke="#f59e0b"/><text x="680" y="232" fill="#fcd34d">medium</text>
                <rect x="640" y="250" width="80" height="20" rx="10" fill="#064e3b" stroke="#10b981"/><text x="680" y="264" fill="#6ee7b7">low</text>
              </g>
              <text x="12" y="334" font-size="11" fill="#9b99b8">OPP = onus on the plaintiff (Rangrez). OPD = onus on the defendant (Shiva). Risk = the team's own view.</text>
            </g>
          </svg>
          <figcaption>An evidence map for the made-up Rangrez suit. One look shows where the proof is strong and where the team must work.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Claims, defences and issues</h3>
          <p>A <strong>claim</strong> is what the plaintiff asks for and why. A <strong>defence</strong> is the defendant's answer. An <strong>issue</strong> is a point where one side says yes and the other says no, on a fact or on the law. The court frames the issues from the pleadings, under Order XIV of the CPC. In a commercial suit, this usually happens at the case management hearing.</p>
          <p>In the made-up Rangrez Crafts v. Shiva Metalworks suit, the court framed eight issues on 8 Jul 2026. Each issue says who carries the <strong>onus</strong> (the duty to prove it). "OPP" means onus on the plaintiff. "OPD" means onus on the defendant.</p>
          <table class="lc-table">
            <thead><tr><th>Rangrez's claim</th><th>Shiva's defence</th><th>Issue</th></tr></thead>
            <tbody>
              <tr><td>Delivery was due by 15 Sep 2025, and time was essential.</td><td>The 22 Aug 2025 email changed the order and reset the 45 days.</td><td>1 (OPP) and 2 (OPD)</td></tr>
              <tr><td>80 lamps were defective and rejected within 7 days.</td><td>Only "normal handmade variation".</td><td>3 (OPP)</td></tr>
              <tr><td>Refund of ₹1,08,000 and damages of ₹1,71,000 + ₹25,200.</td><td>Lost profit is too remote. Shiva did not know about Aangan.</td><td>4 and 5 (OPP)</td></tr>
              <tr><td>This Commercial Court in Rajasthan can hear the case.</td><td>The invoice says "Subject to Uttar Pradesh jurisdiction".</td><td>6 (OPD)</td></tr>
              <tr><td>Nothing more is owed to Shiva.</td><td>Counterclaim: ₹4,80,000 − ₹3,60,000 = ₹1,20,000.</td><td>7 (OPD)</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Elements and the burden of proof</h3>
          <p>Break each issue into <strong>elements</strong>: the smaller facts that must all be proved. The <strong>burden of proof</strong> says who must prove them. Sections 104 to 106 of the Bharatiya Sakshya Adhiniyam, 2023 (BSA) set the basic rule. In general words, the person who asserts a fact must prove it. The burden lies on the side that would lose if no evidence were given. Section 109 adds that a fact especially within one person's knowledge is for that person to prove.</p>
          <table class="lc-table">
            <thead><tr><th>Issue</th><th>Elements to prove</th><th>Proof in the file</th></tr></thead>
            <tbody>
              <tr><td>1 (OPP)</td><td>(a) a fixed date; (b) the parties intended time to be essential</td><td>PO D-02 says "by 15 September 2025" and "Time is of the essence". Sample approved on 1 Aug 2025 + 45 days = 15 Sep 2025.</td></tr>
              <tr><td>2 (OPD)</td><td>(a) a request to change; (b) Shiva's acceptance; (c) a new date agreed</td><td>D-09 asks "only if this causes no delay". D-10 says "Noted, will try" with no new date.</td></tr>
              <tr><td>3 (OPP)</td><td>(a) 80 lamps did not match the contract; (b) rejection within 7 days of receipt</td><td>Received 6 Oct 2025. Rejected 8 Oct 2025, 2 days later (D-18, D-19, D-20).</td></tr>
              <tr><td>5 (OPP)</td><td>(a) the loss happened; (b) it was caused by the breach; (c) it was not too remote; (d) the amount</td><td>Aangan papers D-08, D-13, D-17, D-24. Costing sheet D-29 for the ₹150 per lamp.</td></tr>
            </tbody>
          </table>
          <p>Issue 5 needs the law on compensation. Section 73 of the Indian Contract Act, 1872 allows compensation for loss that arises naturally from the breach. It also covers loss the parties knew, when they made the contract, was likely. The PO mentions "our Diwali retail orders", which helps. Section 109 may help too: Shiva's own production records would show when the 300 lamps were really ready. Read each section in full at the source. How it applies is for the lawyer to decide.</p>
        </div>
        <div class="lc-card">
          <h3>Building the evidence map with AI</h3>
          <pre><code>Weak:   Who will win this case?

        Better: Here are the 8 issues with the onus, and my document
                index D-01 to D-30. For each issue, list the elements to
                prove, then map each element to document IDs and a
                witness (PW1-PW3, DW1-DW2). Mark an element "NO PROOF" if
                nothing supports it. Then act as Shiva's lawyer and give
                the 3 weakest points in Rangrez's proof, with the reason.
                Do not cite cases.</code></pre>
          <p>The weak prompt asks AI to predict a result, which it cannot do. The better prompt asks for a map and an honest attack. In the made-up case, the AI's "Shiva's lawyer" view found real weak points:</p>
          <ul class="lc-list">
            <li><strong>Issue 5:</strong> the costing sheet D-29 was made on 17 Oct 2025, after the dispute. The real bills are not on record. In a commercial suit, a document not filed with the plaint needs the court's leave and a reasonable cause. Adv. Kavita Mehra must decide what to do.</li>
            <li><strong>Issue 2:</strong> plaint para 9 says Rangrez "never asked for any change". D-09 shows a conditional request. Neha must explain this honestly.</li>
            <li><strong>Issue 3:</strong> 6 of the 24 photos show a file date of 9 Oct 2025, but the report is dated 8 Oct.</li>
          </ul>
          <p>Check the map yourself. AI may map a document to the wrong issue, or miss that a fact is admitted. The risk labels are the team's judgement, not the AI's.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: who must prove it?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each fact in the made-up Rangrez suit. Who must prove it, or is it not in dispute?</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="opp" data-label="Rangrez must prove (OPP)"></div>
              <div data-sorter-target="bucket" data-bucket="opd" data-label="Shiva must prove (OPD)"></div>
              <div data-sorter-target="bucket" data-bucket="admitted" data-label="Not in dispute"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="opp" data-why="This is issue 1. Rangrez asserts the fixed date and that time was essential, so it must prove both.">Delivery was due by 15 Sep 2025, and time was essential</li>
              <li data-bucket="opd" data-why="This is issue 2. Shiva asserts that the order changed, so Shiva must prove it.">The 22 Aug 2025 email changed the order and extended the time</li>
              <li data-bucket="opp" data-why="This is issue 3. Rangrez says the lamps were defective, so it must prove the defects and the rejection in time.">The 80 lamps were dented or badly polished</li>
              <li data-bucket="opd" data-why="Issue 6 was framed with the onus on Shiva. It relies on the Uttar Pradesh clause.">The Rajasthan court cannot hear the case because of the Uttar Pradesh clause</li>
              <li data-bucket="opd" data-why="This supports Shiva's counterclaim (issue 7). The fact is especially within Shiva's own knowledge.">The remaining 300 lamps were ready on 13 Oct 2025</li>
              <li data-bucket="admitted" data-why="Shiva admitted the bank statement D-05 in its affidavit of admission and denial (C-04).">Rangrez paid an advance of ₹3,60,000 on 18 Jul 2025</li>
              <li data-bucket="opp" data-why="This is part of issue 5. Rangrez must prove the loss and that the delay caused it, through PW3 and the Aangan papers.">Aangan cancelled 380 lamps because of the delay</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to build an evidence map for two issues and then attack it from the other side. Use the made-up facts, or change the brackets.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a senior litigation associate in India. Build an evidence map. Use only the facts below.

        Issues (made up):
        [Issue A (onus on buyer): Were 80 of 500 lamps defective, and rejected within 7 days of receipt?
        Issue B (onus on buyer): Is the buyer entitled to lost profit of ₹1,71,000 on 380 lamps its customer cancelled?]

        Documents (made up):
        [Challan, 6 Oct 2025: printed "received in good condition", handwritten "subject to inspection". Inspection report, 8 Oct 2025: 80 lamps dented. 24 photos; 6 have a file date of 9 Oct. Rejection email, 8 Oct 2025. Purchase order mentions "our Diwali retail orders". Customer's cancellation email, 7 Oct 2025. Costing sheet made 17 Oct 2025, no bills attached.]

        Give:
        1. A table: Issue | Element to prove | Document | Witness | Strength (strong / mixed / weak) | Gap.
        2. As the seller's lawyer, the 3 strongest attacks on this proof.
        3. For each attack, one honest step the buyer's lawyer could take to check or fix it.

        Rules: Do not invent documents or cases. Never suggest hiding a bad fact. Use simple English.</pre>
            <ul class="ai-try-checks">
              <li>Each issue is split into separate elements, not one long row.</li>
              <li>The challan's printed words and the photo dates appear as gaps.</li>
              <li>The late costing sheet is flagged as weak proof of the ₹150 per lamp.</li>
              <li>The fixes are honest, such as finding bills, not "change the date".</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Split every issue into elements, and link every element to a document and a witness. An empty cell in your evidence map is a problem you can still fix. Ask AI to attack your case, but decide the risk yourself.
        </div>
      HTML
      starter_code: nil
    },
    8 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-law">Law</div>
          <h1 class="lc-title">Drafting Pleadings with AI</h1>
        </div>
        <p class="lc-lead"><strong>Pleadings</strong> are the formal written statements of each side's case: the plaint, the written statement and the replies. They fix what each side can prove at trial. A careless sentence in a pleading can follow you to the witness box. In this lesson you will learn the structure of a plaint and a reply to a counterclaim, and the statement of truth. You will use AI to draft from the facts first, and you will check every line before the client signs.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 350" role="img" aria-label="Left: the parts of a plaint, from cause title to statement of truth. Right: the parts of a reply to a counterclaim, from preliminary objections to statement of truth. Middle: the drafting flow, from chronology and index, to AI first draft, to a line-by-line check, to the client confirming, to the statement of truth.">
            <defs><marker id="lit8a" markerUnits="userSpaceOnUse" markerWidth="7" markerHeight="7" refX="7" refY="3.5" orient="auto"><path d="M0,0 L7,3.5 L0,7 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12" fill="#e2e0f0" text-anchor="middle">
              <text x="152" y="22" font-size="13" font-weight="700" fill="#93c5fd">Plaint (C-01)</text>
              <g>
                <rect x="12" y="34" width="280" height="26" rx="6" fill="#27274e" stroke="#3b82f6"/><text x="152" y="52">Cause title and parties</text>
                <rect x="12" y="66" width="280" height="26" rx="6" fill="#27274e" stroke="#3b82f6"/><text x="152" y="84">Facts in numbered, dated paragraphs</text>
                <rect x="12" y="98" width="280" height="26" rx="6" fill="#27274e" stroke="#3b82f6"/><text x="152" y="116">Cause of action and when it arose</text>
                <rect x="12" y="130" width="280" height="26" rx="6" fill="#27274e" stroke="#3b82f6"/><text x="152" y="148">Jurisdiction</text>
                <rect x="12" y="162" width="280" height="26" rx="6" fill="#27274e" stroke="#3b82f6"/><text x="152" y="180">Limitation and s. 12A mediation</text>
                <rect x="12" y="194" width="280" height="26" rx="6" fill="#27274e" stroke="#3b82f6"/><text x="152" y="212">Valuation and court fee</text>
                <rect x="12" y="226" width="280" height="26" rx="6" fill="#27274e" stroke="#3b82f6"/><text x="152" y="244">Relief (what you ask for)</text>
                <rect x="12" y="258" width="280" height="26" rx="6" fill="#27274e" stroke="#3b82f6"/><text x="152" y="276">List of documents</text>
                <rect x="12" y="290" width="280" height="30" rx="6" fill="#1f1f44" stroke="#f59e0b"/><text x="152" y="310" font-weight="700" fill="#fcd34d">Statement of truth</text>
              </g>
              <text x="608" y="22" font-size="13" font-weight="700" fill="#f9a8d4">Reply to counterclaim (C-03)</text>
              <g>
                <rect x="468" y="34" width="280" height="36" rx="6" fill="#27274e" stroke="#ec4899"/><text x="608" y="57">Preliminary objections</text>
                <rect x="468" y="80" width="280" height="36" rx="6" fill="#27274e" stroke="#ec4899"/><text x="608" y="103">Reply to each paragraph</text>
                <rect x="468" y="126" width="280" height="36" rx="6" fill="#27274e" stroke="#ec4899"/><text x="608" y="149">Each denial with its reason</text>
                <rect x="468" y="172" width="280" height="36" rx="6" fill="#27274e" stroke="#ec4899"/><text x="608" y="195">Your own facts, with sources</text>
                <rect x="468" y="218" width="280" height="36" rx="6" fill="#27274e" stroke="#ec4899"/><text x="608" y="241">Prayer: dismiss the counterclaim</text>
                <rect x="468" y="290" width="280" height="30" rx="6" fill="#1f1f44" stroke="#f59e0b"/><text x="608" y="310" font-weight="700" fill="#fcd34d">Statement of truth</text>
              </g>
              <text x="380" y="22" font-size="13" font-weight="700" fill="#6ee7b7">Drafting flow</text>
              <rect x="306" y="34" width="148" height="36" rx="8" fill="#1f1f44" stroke="#10b981"/><text x="380" y="57">Chronology + index</text>
              <rect x="306" y="96" width="148" height="36" rx="8" fill="#1f1f44" stroke="#10b981"/><text x="380" y="119">AI first draft</text>
              <rect x="306" y="158" width="148" height="36" rx="8" fill="#1f1f44" stroke="#10b981"/><text x="380" y="181">Check each line</text>
              <rect x="306" y="220" width="148" height="36" rx="8" fill="#1f1f44" stroke="#10b981"/><text x="380" y="243">Client confirms</text>
              <rect x="306" y="286" width="148" height="36" rx="8" fill="#1f1f44" stroke="#f59e0b"/><text x="380" y="303" font-size="11">Client signs,</text><text x="380" y="317" font-size="11">lawyer files</text>
              <g stroke="#9b99b8" stroke-width="1.3" marker-end="url(#lit8a)">
                <line x1="380" y1="70" x2="380" y2="95"/><line x1="380" y1="132" x2="380" y2="157"/><line x1="380" y1="194" x2="380" y2="219"/><line x1="380" y1="256" x2="380" y2="285"/>
              </g>
              <text x="380" y="342" font-size="11" fill="#9b99b8">Facts come first. The law and the relief are the lawyer's call.</text>
            </g>
          </svg>
          <figcaption>The main parts of a plaint and of a reply to a counterclaim, with the drafting flow in the middle. Real formats vary by court, so check local practice.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>What goes into a plaint and a reply</h3>
          <p>A <strong>plaint</strong> starts a civil suit. Order VII of the Code of Civil Procedure, 1908 (CPC) lists what it must contain. Examples are the facts, the cause of action, jurisdiction, valuation and the relief claimed. A <strong>cause of action</strong> is the set of facts that gives you the right to sue. A commercial suit, like the made-up Rangrez Crafts v. Shiva Metalworks suit, has extra rules:</p>
          <ul class="lc-list">
            <li><strong>Statement of truth.</strong> Under Order VI rule 15A, every pleading in a commercial suit is verified by an affidavit in a set form. The person signing swears that the contents are true and that nothing material is hidden. A pleading that is not verified this way cannot be relied on as evidence, and the court may strike it out.</li>
            <li><strong>Documents.</strong> The plaint goes in with a list of the documents in the plaintiff's power and a declaration on oath (Order XI). C-01 listed D-01 to D-29.</li>
            <li><strong>Pre-institution mediation.</strong> The plaint shows that mediation under section 12A was tried and failed (D-28).</li>
            <li><strong>Specific denials.</strong> In a commercial suit, a written statement must deal with each allegation and give reasons for each denial (Order VIII). A fact not denied in that way may be taken as admitted. Apply the same care to a reply.</li>
          </ul>
          <p>Shiva's written statement came with a counterclaim of ₹1,20,000. Under Order VIII rule 6A, the plaintiff may file a written statement in answer to a counterclaim. Mehra &amp; Rao filed Rangrez's reply (C-03) on 2 Jun 2026.</p>
        </div>
        <div class="lc-card">
          <h3>Facts first: the para 9 lesson</h3>
          <p>In the made-up case, plaint para 9 says Rangrez "never asked for any change". The sentence came from an early first draft made with AI from Neha's interview notes. Nobody checked it against D-09, the 22 Aug 2025 email. Neha signed the statement of truth, and the plaint was filed. Now Shiva will use the sentence to attack her.</p>
          <pre><code>As filed (too absolute):
        9. The Plaintiff never asked for any change in the order.

        Better (every fact has a source):
        9. On 22 August 2025 the Plaintiff asked by email whether 200
           lamps could have an antique finish, "only if this causes no
           delay" (D-09). On 25 August 2025 the Defendant replied
           "Noted, will try" (D-10). No new delivery date was proposed
           or agreed. The order and the delivery date did not change.</code></pre>
          <p>The better version admits the email and explains it. It is also stronger, because D-09 itself says "no delay". Watch for absolute words such as "never", "at no time" and "always". Use them only when the documents support them.</p>
          <p>What now? After a trial has started, amending a pleading is hard. Under Order VI rule 17 of the CPC, the party must show it could not have raised the point earlier with due diligence. Adv. Kavita Mehra must decide whether to apply to amend or to explain the point in evidence. Neha's evidence affidavit already describes the email honestly.</p>
        </div>
        <div class="lc-card">
          <h3>Drafting a reply with AI, then checking it</h3>
          <pre><code>Weak:   Draft a strong reply to Shiva's counterclaim.

        Better: Draft a para-wise reply to the counterclaim paragraphs
                below. Use ONLY the facts in my chronology and index.
                For each paragraph: say admitted, denied or not known.
                For each denial, give the reason and the document ID.
                Write [NO SOURCE] where a fact has no document. Do not
                cite any case or section; I will add the law.</code></pre>
          <p>Here is part of the reply that Adv. Sameer Rao settled for C-03 (made up):</p>
          <pre><code>6. Para 11 of the counterclaim is denied. It is denied that the
           email of 22 August 2025 (D-09) changed the order. It was an
           enquiry "only if this causes no delay". The Defendant never
           agreed a new date (D-10). On 12 September 2025 it blamed a
           brass shortage and labour problems (D-06), not the finish.</code></pre>
          <p>Before anyone signs, check these points:</p>
          <ul class="lc-list">
            <li><strong>Every fact</strong> against its document. Every quote word for word.</li>
            <li><strong>Every number</strong> with a calculator. The accepted lamps were worth 420 × ₹600 = ₹2,52,000. The advance was ₹3,60,000, so Rangrez says it overpaid ₹1,08,000 and owes nothing more.</li>
            <li><strong>No accidental admissions.</strong> AI may write "the Defendant delivered 500 lamps in good condition". That admits Shiva's case on the 80 lamps.</li>
            <li><strong>The law and the relief</strong> are for the lawyer, after reading the sources.</li>
            <li><strong>The client reads the whole pleading</strong> before signing the statement of truth. A false statement on oath can lead to costs and even prosecution for false evidence.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Activity: put the drafting steps in order</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put the steps for drafting Rangrez's reply to the counterclaim in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Update the chronology and the document index</li>
              <li data-order="2">The lawyer decides the legal answer to each point of the counterclaim</li>
              <li data-order="3">Ask AI for a para-wise first draft, using only the chronology and index</li>
              <li data-order="4">Check every fact, quote and number against the documents</li>
              <li data-order="5">The lawyer adds the law and settles the wording and the prayer</li>
              <li data-order="6">The client reads the whole draft and corrects any fact</li>
              <li data-order="7">The client signs the statement of truth, and the lawyer files</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to draft a para-wise reply to two made-up counterclaim paragraphs, with a reason and a source for every denial.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a litigation associate in an Indian law firm. Draft a para-wise reply to the counterclaim paragraphs below, for a commercial suit. Use only the facts given.

        Counterclaim paragraphs (made up):
        [Para 11: The buyer's email of 22 Aug 2025 changed the order. The 45-day delivery period started again.
        Para 14: The 80 returned lamps had only normal handmade variation. The buyer must pay the balance of ₹1,20,000.]

        Our facts, with document IDs (made up):
        [D-09 (22 Aug 2025): buyer asked for antique finish on 200 lamps "only if this causes no delay". D-10 (25 Aug): seller replied "Noted, will try", no new date. D-06 (12 Sep): seller blamed a brass shortage and labour. D-16 (6 Oct): 500 lamps received "subject to inspection". D-18, D-19 (8 Oct): 80 lamps dented; 24 photos. D-20 (8 Oct): rejection email. Advance paid ₹3,60,000; 420 lamps accepted at ₹600.]

        Rules:
        1. For each paragraph, say admitted, denied or not known.
        2. Give the reason for each denial and the document ID.
        3. Show any sum you use, with the working.
        4. Write [NO SOURCE] for any fact without a document.
        5. Do not cite cases or sections. Add a list of points for the lawyer to decide.</pre>
            <ul class="ai-try-checks">
              <li>Every denial has a reason and a document ID.</li>
              <li>The sum is right: 420 × ₹600 = ₹2,52,000, less than the ₹3,60,000 advance.</li>
              <li>The draft does not admit that the lamps were in good condition.</li>
              <li>No case names or section numbers are invented.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A pleading is sworn evidence of your client's case, not a sales pitch. Draft from the chronology and give every fact a source. Avoid absolute words the documents do not support. Let the client read every line before signing.
        </div>
      HTML
      starter_code: nil
    },
    9 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-law">Law</div>
          <h1 class="lc-title">Drafting Applications and Written Submissions</h1>
        </div>
        <p class="lc-lead">Between the pleadings and the judgment, you will draft many shorter documents. These include applications for orders during the case, a synopsis with a list of dates, and written arguments. AI can build these quickly from your chronology and evidence map. It is also most likely to invent a case or a quote in exactly these documents. In this lesson you will learn the structure of each one. You will also learn a strict routine that lets only verified authorities reach the court.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 330" role="img" aria-label="Three documents: an interim application, a synopsis with list of dates, and written arguments due on 9 December 2026. All pass through an authority check with four steps: find it at the source, read it in full, match the paragraph, and record who checked. Then file with copies of the judgments. If an authority cannot be found, take it out.">
            <defs><marker id="lit9a" markerUnits="userSpaceOnUse" markerWidth="7" markerHeight="7" refX="7" refY="3.5" orient="auto"><path d="M0,0 L7,3.5 L0,7 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12" fill="#e2e0f0" text-anchor="middle">
              <rect x="12" y="16" width="232" height="84" rx="8" fill="#27274e" stroke="#3b82f6"/><text x="128" y="42" font-weight="700">Interim application</text><text x="128" y="64" font-size="11" fill="#9b99b8">leave to file Part B certificate</text><text x="128" y="84" font-size="11" fill="#9b99b8">planned: 7 Oct 2026</text>
              <rect x="264" y="16" width="232" height="84" rx="8" fill="#27274e" stroke="#8b5cf6"/><text x="380" y="42" font-weight="700">Synopsis + list of dates</text><text x="380" y="64" font-size="11" fill="#9b99b8">short facts, dates with doc IDs</text><text x="380" y="84" font-size="11" fill="#9b99b8">goes with the arguments</text>
              <rect x="516" y="16" width="232" height="84" rx="8" fill="#27274e" stroke="#22d3ee"/><text x="632" y="42" font-weight="700">Written arguments</text><text x="632" y="64" font-size="11" fill="#9b99b8">issue by issue</text><text x="632" y="84" font-size="11" fill="#9b99b8">due: 9 Dec 2026</text>
              <g stroke="#9b99b8" stroke-width="1.3" marker-end="url(#lit9a)">
                <line x1="128" y1="100" x2="128" y2="127"/><line x1="380" y1="100" x2="380" y2="127"/><line x1="632" y1="100" x2="632" y2="127"/>
              </g>
              <rect x="12" y="128" width="736" height="116" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="380" y="150" font-weight="700" fill="#fcd34d">Authority check: every case, section and quote</text>
              <rect x="24" y="164" width="168" height="66" rx="8" fill="#27274e" stroke="#f59e0b"/><text x="108" y="190" font-weight="700">1. Find it</text><text x="108" y="212" font-size="11" fill="#9b99b8">in a trusted database</text>
              <rect x="204" y="164" width="168" height="66" rx="8" fill="#27274e" stroke="#f59e0b"/><text x="288" y="190" font-weight="700">2. Read in full</text><text x="288" y="212" font-size="11" fill="#9b99b8">not just a summary</text>
              <rect x="384" y="164" width="168" height="66" rx="8" fill="#27274e" stroke="#f59e0b"/><text x="468" y="190" font-weight="700">3. Match the para</text><text x="468" y="212" font-size="11" fill="#9b99b8">does it say that?</text>
              <rect x="564" y="164" width="172" height="66" rx="8" fill="#27274e" stroke="#f59e0b"/><text x="650" y="190" font-weight="700">4. Record</text><text x="650" y="212" font-size="11" fill="#9b99b8">who checked, and when</text>
              <g stroke="#9b99b8" stroke-width="1.3" marker-end="url(#lit9a)">
                <line x1="192" y1="197" x2="203" y2="197"/><line x1="372" y1="197" x2="383" y2="197"/><line x1="552" y1="197" x2="563" y2="197"/>
                <line x1="240" y1="244" x2="240" y2="271"/><line x1="620" y1="244" x2="620" y2="271"/>
              </g>
              <rect x="12" y="272" width="456" height="46" rx="8" fill="#1f1f44" stroke="#10b981"/><text x="240" y="300" fill="#6ee7b7">Found and checked: file, with copies of judgments</text>
              <rect x="488" y="272" width="260" height="46" rx="8" fill="#1f1f44" stroke="#ec4899"/><text x="618" y="300" fill="#f9a8d4">Cannot find it? Take it out.</text>
            </g>
          </svg>
          <figcaption>Three kinds of document, one gate. No case, section or quote reaches the court until a person has found it, read it and recorded the check.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Applications during the case</h3>
          <p>An <strong>interim application</strong> (also called an interlocutory application, or IA) asks the court for an order while the suit is pending. Examples are a stay, an injunction, leave to file a document, or more time. Most applications follow the same shape:</p>
          <table class="lc-table">
            <thead><tr><th>Part</th><th>What it says</th><th>Who decides it</th></tr></thead>
            <tbody>
              <tr><td>Title and provision</td><td>The case number and the rule the application is made under</td><td>The lawyer, after research</td></tr>
              <tr><td>Short facts</td><td>Only the facts this application needs, with document IDs</td><td>AI can draft; a person checks</td></tr>
              <tr><td>Grounds</td><td>Why the court should make the order, and the honest reason for any delay</td><td>The lawyer, from the file</td></tr>
              <tr><td>Prayer</td><td>The exact order asked for</td><td>The lawyer</td></tr>
              <tr><td>Supporting affidavit</td><td>The facts on oath, sworn by someone who knows them</td><td>The client or witness</td></tr>
            </tbody>
          </table>
          <p>In the made-up Rangrez case, Adv. Kavita Mehra plans an application for leave to file the Part B expert certificate under section 63 of the Bharatiya Sakshya Adhiniyam (BSA). It is planned for 7 Oct 2026, before the cross-examination on 14 Oct. Under the old Evidence Act, the Supreme Court discussed late certificates in <em>Arjun Panditrao Khotkar v. Kailash Kushanrao Gorantyal</em> (2020). Whether that reasoning applies to section 63 is for the lawyer to research.</p>
          <p>The reason for the delay must come from the file, and it must be true. If you ask AI for "good grounds", it may invent a reason that sounds right. Never file an invented reason.</p>
        </div>
        <div class="lc-card">
          <h3>Synopsis and list of dates</h3>
          <p>A <strong>synopsis</strong> is a one-page summary of the case in neutral words. A <strong>list of dates</strong> is a short table of the key events, each with a document ID. Judges read these first, so they must be exact. Build them from your checked chronology, not from memory.</p>
          <table class="lc-table">
            <thead><tr><th>Date</th><th>Event</th><th>Doc</th></tr></thead>
            <tbody>
              <tr><td>14 Jul 2025</td><td>PO for 800 lamps at ₹600 (₹4,80,000), delivery by 15 Sep 2025, "time is of the essence"</td><td>D-02</td></tr>
              <tr><td>18 Jul 2025</td><td>Advance of ₹3,60,000 paid by RTGS</td><td>D-05</td></tr>
              <tr><td>1 Aug 2025</td><td>Sample approved (1 Aug + 45 days = 15 Sep 2025)</td><td>D-06</td></tr>
              <tr><td>22 Aug 2025</td><td>Enquiry on antique finish, "only if this causes no delay"</td><td>D-09</td></tr>
              <tr><td>12 Sep 2025</td><td>Shiva blames brass shortage and labour; dispatch "by month end"</td><td>D-06</td></tr>
              <tr><td>6 Oct 2025</td><td>500 lamps received "subject to inspection"</td><td>D-16</td></tr>
              <tr><td>8 Oct 2025</td><td>80 lamps rejected after inspection</td><td>D-18, D-20</td></tr>
              <tr><td>1 Dec 2025</td><td>Shiva's reply notice: first mention of a "change of order"</td><td>D-26</td></tr>
            </tbody>
          </table>
          <p>Notice what is left out: the 1 Oct 2025 phone call. It has no document, so it does not belong in a list of dates as a fact.</p>
        </div>
        <div class="lc-card">
          <h3>Written arguments and verified authorities</h3>
          <p>For commercial suits, Order XVIII rule 2 of the CPC (as changed by the Commercial Courts Act) sets rules for written arguments. A party must file them "within four weeks prior to" the start of oral arguments. They must be concise and under clear headings. They must show the provisions of law and the judgments relied on, with copies of those judgments. A copy goes to the other side. The court may allow revised written arguments within a week after oral arguments end. Read the exact words of the rule yourself. In the made-up case, the court's timetable fixed 9 Dec 2026 for written arguments and 6 Jan 2027 for oral arguments. That is exactly four weeks.</p>
          <p>An <strong>authority</strong> is a law or a judgment you rely on. Keep an authority table, and fill the last two columns only after a person has read the source:</p>
          <table class="lc-table">
            <thead><tr><th>Authority</th><th>Point relied on (issue)</th><th>Read at</th><th>Checked by</th></tr></thead>
            <tbody>
              <tr><td>Indian Contract Act, 1872, s. 55</td><td>Time as essence (1)</td><td>India Code</td><td>Sameer, 2 Dec 2026</td></tr>
              <tr><td>Indian Contract Act, 1872, s. 73</td><td>Loss the parties knew was likely (5)</td><td>India Code</td><td>Sameer, 2 Dec 2026</td></tr>
              <tr><td>Sale of Goods Act, 1930, s. 41</td><td>Buyer's right to examine goods (3)</td><td>India Code</td><td>Sameer, 2 Dec 2026</td></tr>
              <tr><td>[Judgment on remoteness of loss]</td><td>(5)</td><td>[not yet found]</td><td>[UNVERIFIED: cannot file]</td></tr>
            </tbody>
          </table>
          <pre><code>Weak:   Write written arguments for Rangrez with 10 strong
                Supreme Court judgments.

        Better: Using my evidence map and list of dates, draft written
                arguments under one heading per issue (1 to 8). Cite
                documents by ID. Where a legal point needs authority,
                write [AUTHORITY NEEDED: point]. Do not name any case,
                citation or quote. I will add verified authorities.</code></pre>
        </div>
        <div class="lc-card">
          <h3>Activity: drafting the written arguments</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Prompt">On 2 Dec 2026, Adv. Sameer Rao gives the firm's approved AI tool the evidence map, the list of dates and the "Better" prompt.</li>
              <li data-kind="answer" data-label="AI draft">Eight headings, one per issue, with document IDs, and 6 places marked [AUTHORITY NEEDED].</li>
              <li data-kind="warn" data-label="A case slips in">Under issue 5, the AI still names "Sharma Brass Works v. Lakshmi Lamp House (2018)". This name is made up for this lesson. Sameer treats it as unverified.</li>
              <li data-kind="tool" data-label="Search">Pooja searches SCC Online, Manupatra and Indian Kanoon for the name and the citation.</li>
              <li data-kind="result" data-label="Not found">No such judgment exists in any database. Sameer deletes it and notes it in the file.</li>
              <li data-kind="warn" data-label="Wrong quote">The draft "quotes" section 73 of the Contract Act. The words differ from the Act. Sameer replaces them with the text from India Code.</li>
              <li data-kind="check" data-label="Review and file">Adv. Kavita Mehra reviews the draft on 4 Dec 2026 and adds the authorities she has read. The arguments are filed on 9 Dec 2026, with copies of the judgments.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI for a synopsis, a list of dates and an argument outline, with every legal point marked for checking. Use the made-up facts, or change the brackets.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a senior associate in an Indian law firm. Prepare material for written arguments in a commercial suit. Use only the facts below.

        Facts (made up), with document IDs:
        [D-02 (14 Jul 2025): order for 800 lamps at ₹600, delivery by 15 Sep 2025, "time is of the essence", for "our Diwali retail orders". D-05 (18 Jul): advance ₹3,60,000. D-09 (22 Aug): buyer asked about antique finish "only if this causes no delay". D-06 (12 Sep): seller blamed brass shortage. D-16 (6 Oct): 500 lamps received "subject to inspection". D-20 (8 Oct): 80 lamps rejected. D-26 (1 Dec): seller first says the order was changed.]

        Give:
        1. A synopsis of no more than 150 words, in neutral words.
        2. A list of dates: Date | Event | Doc ID.
        3. An argument outline with one heading for each issue: [delivery date and time as essence; change of order; rejection of 80 lamps].
        4. Under each heading, write [AUTHORITY NEEDED: the point] where law is needed.

        Rules: Do not name any case, citation or quote from a judgment. Do not add facts. Show any sum with its working.</pre>
            <ul class="ai-try-checks">
              <li>Every date in the list matches the facts and has a document ID.</li>
              <li>The synopsis is neutral and under 150 words.</li>
              <li>No case names or quotes appear, only [AUTHORITY NEEDED] markers.</li>
              <li>The outline uses the "only if this causes no delay" words from D-09.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Let AI build the structure and the facts from your checked file, but keep the law in human hands. Every case, section and quote must be found, read in full and recorded before it goes to court. If you cannot find it, take it out.
        </div>
      HTML
      starter_code: nil
    },
    10 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-law">Law</div>
          <h1 class="lc-title">Preparing Witnesses Ethically</h1>
        </div>
        <p class="lc-lead">A witness who is calm, prepared and truthful helps the court. A witness who has been told what to say harms the case and breaks the law. In this lesson you will learn how an evidence affidavit is built, and how to prepare a witness for cross-examination without coaching. You will use AI to draft from the witness's own words and to act as a practice opponent. The rule is simple: you may help a witness give their own evidence clearly, but you must never shape what that evidence is.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 340" role="img" aria-label="A timeline for PW1 Neha: affidavit filed 5 August 2026, today 29 September, preparation sessions on 6 and 12 October, cross-examination on 14 October 2026. Below, two lists. Allowed: explain the process, review her own documents, practise with mock questions, and say I do not remember only if true. Never: suggest or script answers, ask her to change her story, hide bad documents, or invent proof.">
            <g font-family="inherit" font-size="12" fill="#e2e0f0" text-anchor="middle">
              <line x1="40" y1="62" x2="720" y2="62" stroke="#4b4a78" stroke-width="3"/>
              <circle cx="70" cy="62" r="8" fill="#3b82f6"/><circle cx="220" cy="62" r="8" fill="#9b99b8"/><circle cx="380" cy="62" r="8" fill="#10b981"/><circle cx="540" cy="62" r="8" fill="#10b981"/><circle cx="690" cy="62" r="9" fill="#f59e0b"/>
              <text x="70" y="40" font-weight="700">5 Aug 2026</text><text x="70" y="90" font-size="11" fill="#9b99b8">PW1 affidavit</text><text x="70" y="106" font-size="11" fill="#9b99b8">filed (C-06)</text>
              <text x="220" y="40" font-weight="700">29 Sep 2026</text><text x="220" y="90" font-size="11" fill="#9b99b8">today: plan</text><text x="220" y="106" font-size="11" fill="#9b99b8">the preparation</text>
              <text x="380" y="40" font-weight="700">6 Oct 2026</text><text x="380" y="90" font-size="11" fill="#9b99b8">session 1 (video):</text><text x="380" y="106" font-size="11" fill="#9b99b8">process, documents</text>
              <text x="540" y="40" font-weight="700">12 Oct 2026</text><text x="540" y="90" font-size="11" fill="#9b99b8">session 2 (in person):</text><text x="540" y="106" font-size="11" fill="#9b99b8">mock questions</text>
              <text x="690" y="40" font-weight="700" fill="#fcd34d">14 Oct 2026</text><text x="690" y="90" font-size="11" fill="#fcd34d">cross-examination</text><text x="690" y="106" font-size="11" fill="#fcd34d">of Neha (PW1)</text>
              <rect x="12" y="130" width="364" height="198" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="194" y="156" font-size="13" font-weight="700" fill="#6ee7b7">Allowed: preparation</text>
              <rect x="388" y="130" width="360" height="198" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="568" y="156" font-size="13" font-weight="700" fill="#f9a8d4">Never: coaching</text>
              <g text-anchor="start">
                <text x="30" y="192">Explain how cross-examination works</text>
                <text x="30" y="228">Re-read her own affidavit and documents</text>
                <text x="30" y="264">Practise with hard mock questions</text>
                <text x="30" y="300">"I don't remember" only when true</text>
                <text x="406" y="192">Suggest or script her answers</text>
                <text x="406" y="228">Ask her to change her story</text>
                <text x="406" y="264">Tell her to avoid a bad document</text>
                <text x="406" y="300">Invent proof she does not have</text>
              </g>
            </g>
          </svg>
          <figcaption>Preparation helps a witness tell the truth clearly. Coaching changes the evidence itself, and it is never allowed.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The evidence affidavit</h3>
          <p>In a commercial suit, a witness's main evidence (the <strong>examination-in-chief</strong>) is usually given by affidavit, under Order XVIII rule 4 of the CPC. The other side then cross-examines the witness in court. In general words, the commercial rules say:</p>
          <ul class="lc-list">
            <li>A party files the affidavits of all its witnesses together, at the time fixed at the case management hearing.</li>
            <li>A further affidavit needs the court's permission and a good reason.</li>
            <li>A party may withdraw an affidavit before that witness's cross-examination starts. The other side may still rely on any admission in it.</li>
            <li>Under Order XIX rule 3, an affidavit should state only facts the witness knows personally. Statements of belief are allowed only in interim applications, with the grounds given.</li>
          </ul>
          <p>In the made-up Rangrez Crafts v. Shiva Metalworks suit, Neha's affidavit as PW1 was filed on 5 Aug 2026 (C-06). Its outline (made up) looks like this:</p>
          <table class="lc-table">
            <thead><tr><th>Paras</th><th>Topic</th><th>Documents</th></tr></thead>
            <tbody>
              <tr><td>3 to 6</td><td>Quotation, purchase order, proforma invoice, advance of ₹3,60,000</td><td>D-01 to D-05</td></tr>
              <tr><td>7 to 8</td><td>Sample photos and approval on 1 Aug 2025</td><td>D-06, D-07</td></tr>
              <tr><td>11 to 12</td><td>Her 22 Aug 2025 email on antique finish, and Arif's reply</td><td>D-09, D-10</td></tr>
              <tr><td>14 to 16</td><td>Delay; Arif's 12 Sep WhatsApp; the 1 Oct call, from memory only</td><td>D-06, D-11, D-12</td></tr>
              <tr><td>18 to 20</td><td>Receipt of 500 lamps, what she saw, rejection of 80</td><td>D-16, D-20</td></tr>
              <tr><td>22 to 25</td><td>Aangan's order, deduction and cancellation; the loss</td><td>D-08, D-13, D-17, D-21, D-24, D-29</td></tr>
            </tbody>
          </table>
          <p>AI helped Adv. Sameer Rao turn Neha's interview notes into dated paragraphs. The prompt said: use only Neha's own words and knowledge; mark anything she did not see herself. Details of the inspection were left to Imran (PW2), who did it.</p>
        </div>
        <div class="lc-card">
          <h3>Preparation or coaching?</h3>
          <p><strong>Witness preparation</strong> means helping a witness understand the process and recall their own evidence. <strong>Coaching</strong> means telling a witness what to say, or changing their evidence. An advocate must not mislead the court, under the Bar Council of India Rules. Giving false evidence and fabricating false evidence are offences under sections 227 to 229 of the Bharatiya Nyaya Sanhita, 2023. Anyone who helps with them can be liable too.</p>
          <table class="lc-table">
            <thead><tr><th>Proper preparation</th><th>Coaching (never)</th></tr></thead>
            <tbody>
              <tr><td>Explain the courtroom, the oath and how cross-examination works.</td><td>Give the witness answers to learn by heart.</td></tr>
              <tr><td>Ask the witness to re-read their own affidavit, the plaint and their documents.</td><td>Suggest a "better" version of events.</td></tr>
              <tr><td>Practise with hard questions, then discuss clarity, not content.</td><td>Say "if they ask about X, just deny it".</td></tr>
              <tr><td>Advise: listen, pause, answer only the question, ask to see a document.</td><td>Tell the witness to "forget" a bad document.</td></tr>
              <tr><td>Say "I don't remember" is fine when it is true.</td><td>Use "I don't remember" to avoid a true answer.</td></tr>
            </tbody>
          </table>
          <p>Neha's hardest point is plaint para 9. It says Rangrez "never asked for any change", but her own email D-09 asked about an antique finish. The team does not tell her how to answer. They ask her to re-read both documents and to explain in her own words what she meant. If she finds a mistake in her affidavit, she tells the lawyer, and the lawyer decides how to correct it openly.</p>
        </div>
        <div class="lc-card">
          <h3>AI as a practice opponent</h3>
          <pre><code>Weak:   Write the best answers Neha should give when Shiva's
                lawyer cross-examines her.

        Better: Act as the defendant's lawyer. Ask short leading
                questions, one at a time, on: the 22 Aug email (D-09)
                and plaint para 9; the 1 Oct phone call; the costing
                sheet D-29. Wait for each answer. Never suggest or
                improve an answer. At the end, list only which answers
                did not match a document, with the document ID.</code></pre>
          <p>The weak prompt asks AI to script answers, which is coaching. The better prompt only produces questions. A <strong>leading question</strong> is one that suggests its own answer, such as "You asked for a change in the order, didn't you?". Leading questions are generally allowed in cross-examination, under section 146 of the Bharatiya Sakshya Adhiniyam, 2023.</p>
          <ul class="lc-list">
            <li><strong>Keep it confidential.</strong> Use only the firm's approved tool. Many teams let the lawyer read out the AI's questions, rather than giving the witness the tool.</li>
            <li><strong>Discuss the manner, not the content.</strong> After the practice, talk about pace and clarity. Never say which answer is "better".</li>
            <li><strong>Mind the language.</strong> If Neha is more comfortable in Hindi, check the court's practice on interpreters well before the hearing.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Activity: preparation or coaching?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each step the team might take before Neha's cross-examination on 14 Oct 2026.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="ok" data-label="Proper preparation"></div>
              <div data-sorter-target="bucket" data-bucket="never" data-label="Coaching (never)"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="ok" data-why="Explaining the process reduces fear. It does not change what she says.">Explain how cross-examination works and how long it may take</li>
              <li data-bucket="ok" data-why="A witness should know her own evidence and documents, including the difficult ones.">Ask Neha to re-read her affidavit, the plaint and D-09</li>
              <li data-bucket="ok" data-why="Hard practice questions are fine, as long as nobody tells her what to answer.">Run a mock cross-examination on the 22 Aug email</li>
              <li data-bucket="never" data-why="This puts words in her mouth. If it is not true, it is false evidence.">Tell Neha to say she never read the plaint before signing</li>
              <li data-bucket="never" data-why="A list of answers to memorise is coaching, even if each answer seems true.">Give Neha a typed list of "best answers" to learn</li>
              <li data-bucket="ok" data-why="This is honest advice. It protects both the witness and the court.">Tell her "I don't remember" is fine only when it is true</li>
              <li data-bucket="never" data-why="No call record exists. Suggesting one would invent evidence.">Suggest Neha says she has a call record for 1 Oct 2025</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to prepare mock cross-examination questions for a made-up witness, with no suggested answers. Then ask it to check a preparation note for coaching.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an experienced trial lawyer in India. Help me prepare a witness ethically.

        Witness (made up): [the owner of a Rajasthan handicrafts shop. Her evidence affidavit says the supplier delivered late and 80 of 500 lamps were defective.]
        Risky points: [1. Her plaint says she "never asked for any change", but her 22 Aug email asked about an antique finish "only if this causes no delay". 2. She remembers a 1 Oct phone call, with no record. 3. Her costing sheet was made after the dispute.]

        Tasks:
        1. As the other side's lawyer, write 12 short leading questions, 4 on each risky point.
        2. For each question, name the document the witness should re-read.
        3. Check this preparation note and flag anything that is coaching: "[Tell her to say the email was only a joke. If asked about the call, say it is in her phone.]"
        4. Rewrite the note so it is ethical.

        Rules: Never suggest or improve the witness's answers. Do not cite cases. Use simple English.</pre>
            <ul class="ai-try-checks">
              <li>The questions are short and leading, and there are no suggested answers.</li>
              <li>Each question is linked to a document to re-read.</li>
              <li>Both parts of the note are flagged as coaching.</li>
              <li>The rewritten note asks the witness to tell the truth in her own words.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Prepare the witness, never the answers. Use AI to draft from the witness's own words and to ask hard practice questions. The evidence itself must always be the witness's own truth, including the parts that hurt your case.
        </div>
      HTML
      starter_code: nil
    },
    11 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-law">Law</div>
          <h1 class="lc-title">Preparing Cross-Examination</h1>
        </div>
        <p class="lc-lead">Cross-examination means questioning the other side's witness. It is where a weak story can fall apart in front of the judge. Good cross-examination is prepared on paper, long before the hearing. In this lesson you will prepare the cross-examination of Shiva's main witness in the made-up Rangrez case. You will use AI to compare his affidavit with the documents and find contradictions. You will write short leading questions, one fact at a time. You will also use AI as a practice witness. The advocate still chooses every question and asks it in court.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 344" role="img" aria-label="A contradiction map. On the left, four statements from DW1's evidence affidavit: the 22 August email changed the order; the delay was only due to that change; Shiva did not know about resale; the counterclaim of 1,20,000 rupees is due. On the right, the documents that contradict each one: D-10, the WhatsApp message of 12 September, the purchase order D-02, and the tax invoice D-14. At the bottom, the rules for questions.">
            <defs><marker id="lit11a" markerUnits="userSpaceOnUse" markerWidth="8" markerHeight="8" refX="8" refY="4" orient="auto"><path d="M0,0 L8,4 L0,8 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12" fill="#e2e0f0" text-anchor="middle">
              <text x="162" y="22" font-size="13" font-weight="700" fill="#f9a8d4">DW1's affidavit says (C-07)</text>
              <text x="598" y="22" font-size="13" font-weight="700" fill="#6ee7b7">The documents show</text>
              <rect x="12" y="36" width="300" height="54" rx="8" fill="#27274e" stroke="#ec4899"/><text x="162" y="58" font-weight="700">Para 5: change of order</text><text x="162" y="78" font-size="11" fill="#9b99b8">the 22 Aug email changed the order</text>
              <rect x="12" y="100" width="300" height="54" rx="8" fill="#27274e" stroke="#ec4899"/><text x="162" y="122" font-weight="700">Para 7: reason for delay</text><text x="162" y="142" font-size="11" fill="#9b99b8">delay "only because of the change"</text>
              <rect x="12" y="164" width="300" height="54" rx="8" fill="#27274e" stroke="#ec4899"/><text x="162" y="186" font-weight="700">Para 12: no notice of resale</text><text x="162" y="206" font-size="11" fill="#9b99b8">"did not know" the lamps were for resale</text>
              <rect x="12" y="228" width="300" height="54" rx="8" fill="#27274e" stroke="#ec4899"/><text x="162" y="250" font-weight="700">Para 14: counterclaim</text><text x="162" y="270" font-size="11" fill="#9b99b8">₹1,20,000 balance price is due</text>
              <rect x="448" y="36" width="300" height="54" rx="8" fill="#27274e" stroke="#10b981"/><text x="598" y="58" font-weight="700">D-10 (25 Aug 2025)</text><text x="598" y="78" font-size="11" fill="#9b99b8">"Noted, will try". No new date or price.</text>
              <rect x="448" y="100" width="300" height="54" rx="8" fill="#27274e" stroke="#10b981"/><text x="598" y="122" font-weight="700">D-06 WhatsApp (12 Sep 2025)</text><text x="598" y="142" font-size="11" fill="#9b99b8">blames brass shortage and labour</text>
              <rect x="448" y="164" width="300" height="54" rx="8" fill="#27274e" stroke="#10b981"/><text x="598" y="186" font-weight="700">D-02 purchase order</text><text x="598" y="206" font-size="11" fill="#9b99b8">"Goods are for our Diwali retail orders"</text>
              <rect x="448" y="228" width="300" height="54" rx="8" fill="#27274e" stroke="#10b981"/><text x="598" y="250" font-weight="700">D-14 tax invoice</text><text x="598" y="270" font-size="11" fill="#9b99b8">only 500 lamps sent, ₹3,00,000</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#lit11a)">
                <line x1="316" y1="63" x2="444" y2="63"/><line x1="316" y1="127" x2="444" y2="127"/><line x1="316" y1="191" x2="444" y2="191"/><line x1="316" y1="255" x2="444" y2="255"/>
              </g>
              <g font-size="11" fill="#fcd34d"><text x="380" y="56">contradicts</text><text x="380" y="120">contradicts</text><text x="380" y="184">contradicts</text><text x="380" y="248">contradicts</text></g>
              <rect x="12" y="296" width="736" height="36" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="380" y="319" font-size="12">Rules: short leading questions, one fact each. Know the answer. Never ask "why".</text>
            </g>
          </svg>
          <figcaption>Map each claim in the witness's affidavit to the document that tests it. Every question in the plan comes from this map.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>What cross-examination is for</h3>
          <p>In a commercial suit, each witness's main evidence usually comes in as an evidence affidavit. The other side then cross-examines the witness in court. In the made-up Rangrez Crafts v. Shiva Metalworks suit, Shiva's managing partner Deepak Varshney is <strong>DW1</strong> (defence witness 1). Adv. Kavita Mehra will cross-examine him on 25 Nov 2026. Cross-examination has four main aims:</p>
          <ul class="lc-list">
            <li><strong>Test the story.</strong> Show where the affidavit does not match the documents.</li>
            <li><strong>Get admissions.</strong> An <strong>admission</strong> is a fact the witness agrees to, which helps your side.</li>
            <li><strong>Show limits of knowledge.</strong> DW1 did not write any of the emails or WhatsApp messages. Arif Khan (DW2) did.</li>
            <li><strong>Put your case.</strong> Give the witness a chance to deny your version. In Indian courts this is often done by a "suggestion", for example: "I suggest that the 22 August email did not change the order."</li>
          </ul>
          <p>The law, in general words: under section 146 of the Bharatiya Sakshya Adhiniyam, 2023 (BSA), a <strong>leading question</strong> is one that suggests the answer. You may ask leading questions in cross-examination. Under section 148 BSA, if you want to contradict a witness with his earlier written statement, you must first show him the parts you rely on. Read the full sections on India Code before the hearing.</p>
        </div>
        <div class="lc-card">
          <h3>Find the contradictions with AI</h3>
          <p>Adv. Sameer Rao uploads a redacted copy of DW1's affidavit (C-07) and the key documents to the firm's approved AI tool. He asks for a comparison, not for questions yet.</p>
          <pre><code>Weak:   Give me cross-examination questions for DW1.

        Better: Compare each numbered paragraph of the DW1 affidavit with
                documents D-02, D-06, D-09, D-10, D-14, D-22 and D-26.
                For each paragraph give: what DW1 says, the document that
                supports or contradicts it (ID and exact words), and
                whether DW1 has personal knowledge of it. Quote only words
                that appear in the documents. If nothing matches, write
                [NO DOCUMENT]. Do not suggest questions yet.</code></pre>
          <p>After checking every quote against the originals, the team keeps these points:</p>
          <table class="lc-table">
            <thead><tr><th>DW1 says (C-07)</th><th>The file shows (made up)</th></tr></thead>
            <tbody>
              <tr><td>Para 5: the 22 Aug 2025 email "changed the order".</td><td>D-09 asked about antique finish "only if this causes no delay". D-10 replied "Noted, will try", with no new date and no new price.</td></tr>
              <tr><td>Para 7: the delay was "only because of the change of order".</td><td>On 12 Sep 2025 (D-06) Arif blamed a brass supply shortage and a labour problem. He did not mention antique finish.</td></tr>
              <tr><td>Para 5 again: the story of a change.</td><td>"Change of order" appears first in the reply notice of 1 Dec 2025 (D-26). It is not in D-22 of 13 Oct 2025.</td></tr>
              <tr><td>Para 10: 300 lamps were ready on 13 Oct 2025.</td><td>Shiva filed no production register, job card or photo of these lamps.</td></tr>
              <tr><td>Para 12: Shiva "did not know" of any resale.</td><td>The PO (D-02) says: "Goods are for our Diwali retail orders."</td></tr>
              <tr><td>Para 14: ₹1,20,000 is due.</td><td>D-14 bills only 500 lamps: 500 × ₹600 = ₹3,00,000. Shiva holds ₹3,60,000, which is ₹60,000 more.</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Write short leading questions</h3>
          <p>Turn each contradiction into a <strong>chain</strong>: a short series of questions that each fix one fact. Each question should get "yes" or a short answer. The last step "closes the door", so the witness cannot escape later. Here is the chain on the reason for the delay:</p>
          <pre><code>Topic: the reason for the delay (Issue 2)       Source
        Q1. Mr Arif Khan is your sales manager?            C-07
        Q2. He dealt with Rangrez on your behalf?          C-07
        Q3. You did not write any message to Ms Rathore
            yourself?                                      D-06, D-09 to D-12
        Q4. Please see the WhatsApp message of
            12 September 2025. [show D-06]                 D-06
        Q5. Mr Khan wrote: brass supply shortage and a
            labour problem. Correct?                       D-06
        Q6. The message does not mention antique finish?   D-06
        Q7. The words "change of order" first appear in
            your lawyer's notice of 1 December 2025?       D-26
        Suggestion: I suggest that the delay was caused by
            the brass shortage, not by any change of order.</code></pre>
          <p>Follow these rules when you write or edit a chain:</p>
          <ul class="lc-list">
            <li><strong>One fact per question.</strong> Two facts in one question lets the witness answer the easier one.</li>
            <li><strong>Know the answer.</strong> Ask only what a document or an admission already proves.</li>
            <li><strong>Never ask "why" or "explain".</strong> Open questions let the witness give a speech.</li>
            <li><strong>Stop when you have it.</strong> Save the argument for final arguments.</li>
            <li><strong>Prove the document first.</strong> In its admission and denial (C-04), Shiva denied the WhatsApp export D-06 as incomplete. So get the witness to admit the 12 Sep message itself before you rely on it. Arif (DW2) wrote it.</li>
            <li><strong>Mind your own weak spot.</strong> Neha did ask about antique finish (D-09). The plaint says Rangrez "never asked for any change". Do not ask DW1 anything that invites a long answer on D-09. Adv. Kavita Mehra decides how the firm deals with this honestly.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>AI as a practice opponent</h3>
          <p>Before 25 Nov, Adv. Sameer Rao asks the AI tool to play DW1: evasive, polite and well prepared. Adv. Kavita Mehra runs her question chains against it. This shows which questions leave room for a long answer. It also shows where she needs a document ready to hand.</p>
          <p>Keep these limits in mind:</p>
          <ul class="lc-list">
            <li>The AI's answers are practice, not a forecast of what DW1 will say.</li>
            <li>The AI may "remember" facts that are not in the file. Check anything new against the documents.</li>
            <li>Use made-up or redacted material in the tool, and never the settlement figures.</li>
            <li>The court can stop questions that are not relevant, or that are meant only to insult or annoy. Keep the questions fair.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Activity: strong question or risky question?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Adv. Kavita Mehra is reviewing a draft list for DW1. Sort each question.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="good" data-label="Strong: short, leading, one fact"></div>
              <div data-sorter-target="bucket" data-bucket="risky" data-label="Risky: rewrite or drop"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="good" data-why="One fact, the answer is in D-10, and the witness can only say yes.">Mr Khan's reply of 25 August 2025 says "Noted, will try". Correct?</li>
              <li data-bucket="good" data-why="It fixes a gap in their story: no new date was ever given.">That reply gives no new delivery date. Correct?</li>
              <li data-bucket="good" data-why="The invoice D-14 proves it. It shows no extra charge for any change.">Your tax invoice charges ₹600 per lamp, the same price as the order?</li>
              <li data-bucket="risky" data-why="An open why-question lets DW1 repeat his whole defence in his own words.">Why did Shiva deliver late?</li>
              <li data-bucket="risky" data-why="Three facts in one question. The witness can deny one part and escape the rest.">You changed the finish, delayed the lamps and ignored the defects, didn't you?</li>
              <li data-bucket="risky" data-why="This is an argument, not a question. Save it for final arguments.">Would you agree that your whole defence is an afterthought?</li>
              <li data-bucket="risky" data-why="It invites a lecture on antique finish, which helps Shiva's change-of-order story.">Can you explain to the court how antique finish is made?</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to turn a made-up affidavit extract and a few documents into a cross-examination plan. Then check every question against its source.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a senior trial lawyer in India. Help me plan the cross-examination of the other side's witness. All facts are made up.

        Witness affidavit extract: [Para 5: On 22 Aug 2025 the buyer changed the order to antique finish for 200 lamps, which needed 4 more weeks. Para 7: The delay was only because of this change. Para 12: We did not know the lamps were for resale.]

        Documents: [D-02 PO: "Goods are for our Diwali retail orders." D-09 buyer email, 22 Aug 2025: antique finish "only if this causes no delay". D-10 supplier reply, 25 Aug 2025: "Noted, will try." No new date. D-06 supplier WhatsApp, 12 Sep 2025: "brass shortage and labour problem, dispatch by month end".]

        Tasks:
        1. Table: Para | What the witness says | Document that contradicts it (ID and exact words) | Strength (strong / medium / weak).
        2. For the two strongest points, write a chain of 5 to 7 short leading questions, one fact each, with the source ID after each question. End each chain with a "suggestion".
        3. List 3 questions I must NOT ask, and why.
        4. Name any weak point for the buyer in these documents.

        Rules: Quote only words that appear above. No "why" questions. No case law. Simple English.</pre>
            <ul class="ai-try-checks">
              <li>Every quote matches the documents word for word, with no new "facts".</li>
              <li>Each question holds only one fact and can be answered "yes" or "no".</li>
              <li>Every question has a source ID, and the chain ends with a suggestion.</li>
              <li>The AI names the buyer's own weak point: the 22 Aug email did ask about antique finish.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Good cross-examination is built from documents, not from clever questions. Let AI find where the affidavit and the file disagree. Then write short, fair questions that each fix one proven fact, and know your own weak points before you stand up.
        </div>
      HTML
      starter_code: nil
    },
    12 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-law">Law</div>
          <h1 class="lc-title">Oral Arguments and Hearing Notes</h1>
        </div>
        <p class="lc-lead">Oral arguments are your last chance to speak to the judge before judgment. The time is short, and the judge will interrupt with questions. In this lesson you will prepare for the final arguments in the made-up Rangrez case on 6 Jan 2027. You will build an issue-wise argument outline and a time plan. You will use AI to predict questions from the bench, and you will prepare a one-page hearing brief and a compilation. The advocate still decides what to argue and checks every fact and authority.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 334" role="img" aria-label="A 30-minute time plan for final arguments: opening 2 minutes, issues 1 and 2 on time 8 minutes, issue 3 on defects 5 minutes, issues 4 and 5 on money 7 minutes, issue 6 on the court 4 minutes, issue 7 on the counterclaim 2 minutes, relief 2 minutes. Below, three boxes: the one-page hearing brief, likely questions from the bench, and the compilation of documents and authorities.">
            <g font-family="inherit" font-size="12" fill="#e2e0f0" text-anchor="middle">
              <text x="12" y="22" text-anchor="start" font-size="13" font-weight="700" fill="#93c5fd">Time plan for 6 Jan 2027: 30 minutes (made up)</text>
              <g font-size="11">
                <rect x="12" y="34" width="49" height="44" fill="#27274e" stroke="#8b5cf6"/><text x="36" y="60">Open</text>
                <rect x="61" y="34" width="196" height="44" fill="#27274e" stroke="#3b82f6"/><text x="159" y="60">Issues 1-2: time and change</text>
                <rect x="257" y="34" width="123" height="44" fill="#27274e" stroke="#10b981"/><text x="318" y="60">Issue 3: defects</text>
                <rect x="380" y="34" width="172" height="44" fill="#27274e" stroke="#f59e0b"/><text x="466" y="60">Issues 4-5: money</text>
                <rect x="552" y="34" width="98" height="44" fill="#27274e" stroke="#ec4899"/><text x="601" y="60">Issue 6: court</text>
                <rect x="650" y="34" width="49" height="44" fill="#27274e" stroke="#22d3ee"/><text x="674" y="60">CC</text>
                <rect x="699" y="34" width="49" height="44" fill="#27274e" stroke="#8b5cf6"/><text x="723" y="60">Relief</text>
                <g fill="#9b99b8"><text x="36" y="96">2 min</text><text x="159" y="96">8 min</text><text x="318" y="96">5 min</text><text x="466" y="96">7 min</text><text x="601" y="96">4 min</text><text x="674" y="96">2 min</text><text x="723" y="96">2 min</text></g>
              </g>
              <text x="12" y="126" text-anchor="start" font-size="11" fill="#9b99b8">CC = Shiva's counterclaim (issue 7). Keep a few minutes for questions and a short reply.</text>
              <rect x="12" y="140" width="236" height="182" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="130" y="164" font-weight="700" fill="#93c5fd" font-size="13">Hearing brief (1 page)</text>
              <g text-anchor="start"><text x="28" y="192">Relief sought</text><text x="28" y="218">Issue-wise points</text><text x="28" y="244">Key document IDs</text><text x="28" y="270">Figures: ₹3,04,200</text><text x="28" y="296">Weak points, answers</text></g>
              <rect x="262" y="140" width="236" height="182" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="380" y="164" font-weight="700" fill="#fcd34d" font-size="13">Likely bench questions</text>
              <g text-anchor="start"><text x="278" y="192">Rajasthan or UP courts?</text><text x="278" y="218">Did 22 Aug change it?</text><text x="278" y="244">"Good condition" challan?</text><text x="278" y="270">Late goods accepted?</text><text x="278" y="296">Was lost profit foreseen?</text></g>
              <rect x="512" y="140" width="236" height="182" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="630" y="164" font-weight="700" fill="#6ee7b7" font-size="13">Compilation</text>
              <g text-anchor="start"><text x="528" y="192">Index of documents</text><text x="528" y="218">Key pages flagged</text><text x="528" y="244">Sections of the Acts</text><text x="528" y="270">Verified judgments only</text><text x="528" y="296">Copy to the other side</text></g>
            </g>
          </svg>
          <figcaption>A time plan keeps the argument on the issues that matter most. The brief, the bench questions and the compilation go to the hearing together.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Written arguments and oral arguments</h3>
          <p>In a commercial suit, the rules ask for written arguments "within four weeks prior to" the start of oral arguments. In general words, they must set out the provisions of law relied on, give the citations of judgments and attach copies. A copy goes to the other side. The court can also limit the time for oral arguments. Read Order XVIII of the CPC as amended for commercial suits, and follow the court's own timetable.</p>
          <p>In the made-up Rangrez case, the court fixed 9 Dec 2026 for written arguments and 6 Jan 2027 for oral arguments, four weeks later. Adv. Kavita Mehra will argue. Adv. Manish Sharma, local counsel in Rajasthan, will attend with her.</p>
          <p>Oral arguments are not a reading of the written arguments. The judge has the file. Your job is to lead the judge to your strongest points and answer the doubts. Two rules help:</p>
          <ul class="lc-list">
            <li><strong>Issue-wise.</strong> Follow the eight issues framed on 8 Jul 2026. The judgment will follow them too.</li>
            <li><strong>Evidence first.</strong> For each point, name the document and the witness answer that proves it.</li>
          </ul>
          <p>Evidence closes only after DW1 and DW2 are cross-examined on 25 Nov 2026. So the outline you build now is a draft. Update it with the actual answers from the deposition record (the typed record of each witness's evidence).</p>
        </div>
        <div class="lc-card">
          <h3>Build the argument outline</h3>
          <p>Adv. Sameer Rao asks the firm's approved AI tool for a first outline. He gives it the issues, the chronology and the evidence map. He does not ask it for case law.</p>
          <pre><code>Weak:   Write my final arguments for Rangrez Crafts with case law.

        Better: Using ONLY the issues, chronology and evidence map below,
                make an argument outline for a 30-minute hearing. For each
                issue: our point in one sentence, the 2 or 3 best document
                IDs, the witness answers that support it, the other side's
                best reply, and minutes. Name Acts and sections only in
                general words and mark each [VERIFY]. Do not cite cases.</code></pre>
          <table class="lc-table">
            <thead><tr><th>Issue</th><th>Our point (draft)</th><th>Key documents</th><th>Law to check at source</th></tr></thead>
            <tbody>
              <tr><td>1, 2: time and change</td><td>Delivery was due by 15 Sep 2025 and time was of the essence. The 22 Aug question was conditional and changed nothing.</td><td>D-02, D-09, D-10, D-06 (12 Sep), D-12</td><td>Indian Contract Act, section 55 (time as essential)</td></tr>
              <tr><td>3: rejection</td><td>80 lamps were inspected and rejected within 7 days of receipt.</td><td>D-16, D-18, D-19, D-20</td><td>Sale of Goods Act, sections 41 and 42 (examination and acceptance)</td></tr>
              <tr><td>4, 5: money</td><td>Refund ₹1,08,000; lost profit ₹1,71,000 and Aangan's deduction ₹25,200 were foreseeable.</td><td>D-02 ("Diwali retail orders"), D-08, D-13, D-17, D-24, D-29</td><td>Indian Contract Act, section 73 (compensation for loss)</td></tr>
              <tr><td>6: jurisdiction</td><td>The PO names Rajasthan courts, and part of the cause of action arose where the goods were delivered.</td><td>D-02, D-03, D-16</td><td>CPC, section 20; judgments on jurisdiction clauses (verified only)</td></tr>
              <tr><td>7: counterclaim</td><td>Shiva invoiced only 500 lamps (₹3,00,000) but holds ₹3,60,000.</td><td>D-05, D-14, D-22</td><td>Same as issues 1 to 5</td></tr>
            </tbody>
          </table>
          <p>Check each section in the full text on India Code before it goes into the written arguments. Adv. Kavita Mehra adds judgments only after reading each one in full in a trusted database.</p>
        </div>
        <div class="lc-card">
          <h3>Predict the questions from the bench</h3>
          <p>The <strong>bench</strong> means the judge hearing the case. A good hearing note answers the judge's hardest questions in one or two sentences, with a document ID. Ask AI to act as a careful judge who has read both sides. Here are some likely questions for 6 Jan (all made up):</p>
          <table class="lc-table">
            <thead><tr><th>Likely question</th><th>Short answer (draft)</th><th>Where</th></tr></thead>
            <tbody>
              <tr><td>Your client asked for antique finish. Is that not a change?</td><td>It was a question, "only if this causes no delay". Shiva never gave a new date or price.</td><td>D-09, D-10, D-14</td></tr>
              <tr><td>The challan says "received in good condition".</td><td>The same challan says "subject to inspection" in hand. The rejection came two days later.</td><td>D-16, D-20</td></tr>
              <tr><td>Your client accepted 420 lamps late. Can it still claim compensation?</td><td>A real risk. Section 55 has a rule on notice when late performance is accepted. Show every notice Rangrez gave, with dates.</td><td>D-12, D-20, D-23</td></tr>
              <tr><td>How did Shiva know about the resale?</td><td>The PO says the goods are for Diwali retail orders.</td><td>D-02</td></tr>
              <tr><td>The costing sheet was made after the dispute.</td><td>A real weak point. No bills are on record yet, and filing them now needs the court's leave. Adv. Kavita Mehra decides.</td><td>D-29, PW1</td></tr>
            </tbody>
          </table>
          <p>Notice the third row. A good bench-question list includes the questions you would rather not hear. Your own side's weak points need the most careful answers.</p>
        </div>
        <div class="lc-card">
          <h3>The hearing brief and the compilation</h3>
          <p>A <strong>hearing brief</strong> is a one-page note the advocate keeps open while arguing. A <strong>compilation</strong> is a small, indexed set of the key documents and authorities, often handed to the judge. Pooja prepares both from the verified outline.</p>
          <pre><code>HEARING BRIEF: Com. Suit 57/2026, Rangrez Crafts v. Shiva Metalworks
        Date: 6 Jan 2027 | For: Plaintiff | Argues: Adv. Kavita Mehra
        Relief: ₹3,04,200 + interest and costs as allowed; dismiss
                counterclaim of ₹1,20,000
        Figures: 800 x ₹600 = ₹4,80,000 | advance ₹3,60,000 |
                 500 delivered, 420 accepted, 80 rejected, 300 never came
        Issue 1-2 (8 min): D-02, D-09, D-10, D-06 (12 Sep) ...
        Weak points: D-09 antique finish email; costing sheet date;
                     photo file dates (9 Oct) ...
        Authorities: [only from the verified list, with page numbers]</code></pre>
          <p>Before the brief is final, check every figure, date and document ID against the file. Keep settlement figures out of every hearing document.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: a practice hearing with AI as the bench</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Set up">Adv. Sameer Rao gives the approved AI tool the redacted outline and asks: "Act as the judge. Interrupt me with hard questions, one at a time."</li>
              <li data-kind="answer" data-label="First question">"The challan says received in good condition. Why should I believe the rejection?"</li>
              <li data-kind="check" data-label="Answer from the file">Adv. Kavita Mehra answers with D-16 (handwritten "subject to inspection") and D-20 (rejection on 8 Oct). She notes the answer in the hearing brief.</li>
              <li data-kind="answer" data-label="Hard question">"Your client accepted 420 lamps after the due date. What notice did it give about compensation?"</li>
              <li data-kind="warn" data-label="Invented support">The AI then offers "a Supreme Court judgment" on this point, with a citation. Nobody can find it in any database. It is struck out.</li>
              <li data-kind="tool" data-label="Research">Adv. Sameer Rao reads section 55 of the Indian Contract Act on India Code and searches a legal database for real judgments.</li>
              <li data-kind="check" data-label="Update the brief">The team adds a two-line answer and one verified authority to the brief. The weak point is now prepared, not hidden.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to play the judge and test a short argument outline. Use the made-up outline below, or replace it with your own made-up matter.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an experienced, strict Commercial Court judge in India. You have read the file. Test my argument outline before the final hearing. Everything below is made up.

        Case: [Buyer v. Supplier. 800 brass lamps at ₹600. Delivery due 15 Sep 2025, "time is of the essence" in the PO, which also says "Goods are for our Diwali retail orders". Buyer asked on 22 Aug if 200 lamps could have antique finish "only if this causes no delay"; supplier replied "Noted, will try". 500 lamps arrived on 6 Oct; challan printed "received in good condition", handwritten "subject to inspection". 80 rejected on 8 Oct. Buyer claims ₹3,04,200.]

        My outline: [1. Time was of the essence. 2. No change of order. 3. Valid rejection. 4. Lost profit was foreseeable.]

        Tasks:
        1. Ask me the 8 hardest questions a judge would ask, ranked from hardest.
        2. For each: why it worries you, and the fact or document that would best answer it.
        3. Name the 2 weakest points in my outline.
        4. Suggest a 30-minute time plan by issue.

        Rules: Use only the facts above. Do not cite any case. Name laws only in general words with [VERIFY]. Simple English.</pre>
            <ul class="ai-try-checks">
              <li>The questions include the buyer's own weak points, such as the antique-finish email and the "good condition" words.</li>
              <li>Each answer points to a fact given in the prompt, not a new invented fact.</li>
              <li>No case names or citations appear. Laws carry [VERIFY].</li>
              <li>The time plan adds up to 30 minutes.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Prepare for the judge's questions, not only for your speech. Let AI play a sharp bench and draft the outline, then fix every answer to a document ID. Walk in with one page, a verified compilation and honest answers on your weak points.
        </div>
      HTML
      starter_code: nil
    },
    13 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-law">Law</div>
          <h1 class="lc-title">Deadlines, Cause Lists and Case Management</h1>
        </div>
        <p class="lc-lead">A missed date can cost a client the case, or at least costs and the court's trust. Litigation teams track many dates at once: hearing dates, court-set deadlines, time limits in the law and their own preparation dates. In this lesson you will build a case diary for the made-up Rangrez case. You will use e-Courts services to follow the case and read cause lists. You will use AI to turn court orders into diary entries, and you will learn to check every date yourself.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 306" role="img" aria-label="A timeline from 29 September 2026 to 8 January 2027 with the key dates of the made-up Rangrez case: cross-examination of PW1 and PW2 on 14 October, final cross-examination plans on 18 November, cross-examination of DW1 and DW2 on 25 November, written arguments on 9 December, final oral arguments on 6 January 2027, and six months from the first case management hearing on 8 January 2027. Below, a four-step routine for every hearing date.">
            <defs><marker id="lit13a" markerUnits="userSpaceOnUse" markerWidth="8" markerHeight="8" refX="8" refY="4" orient="auto"><path d="M0,0 L8,4 L0,8 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="11" fill="#e2e0f0" text-anchor="middle">
              <text x="12" y="22" text-anchor="start" font-size="13" font-weight="700" fill="#93c5fd">Rangrez case diary to 8 Jan 2027 (made up)</text>
              <line x1="40" y1="110" x2="720" y2="110" stroke="#9b99b8" stroke-width="2"/>
              <circle cx="40" cy="110" r="7" fill="#8b5cf6"/><circle cx="141" cy="110" r="7" fill="#ec4899"/><circle cx="377" cy="110" r="7" fill="#f59e0b"/><circle cx="424" cy="110" r="7" fill="#ec4899"/><circle cx="518" cy="110" r="7" fill="#3b82f6"/><circle cx="706" cy="110" r="6" fill="#10b981"/><circle cx="722" cy="110" r="6" fill="#9b99b8"/>
              <text x="34" y="70" text-anchor="start" font-weight="700">29 Sep 2026</text><text x="34" y="86" text-anchor="start" fill="#9b99b8">today</text>
              <text x="377" y="70" font-weight="700" fill="#fcd34d">18 Nov</text><text x="377" y="86" fill="#9b99b8">cross plans final</text>
              <text x="518" y="70" font-weight="700" fill="#93c5fd">9 Dec</text><text x="518" y="86" fill="#9b99b8">written arguments</text>
              <text x="748" y="70" text-anchor="end" font-weight="700">8 Jan 2027</text><text x="748" y="86" text-anchor="end" fill="#9b99b8">6 months from CMH</text>
              <text x="141" y="140" font-weight="700" fill="#f9a8d4">14-15 Oct</text><text x="141" y="156" fill="#9b99b8">cross PW1, PW2</text><text x="141" y="172" fill="#9b99b8">then PW3</text>
              <text x="424" y="140" font-weight="700" fill="#f9a8d4">25 Nov</text><text x="424" y="156" fill="#9b99b8">cross DW1, DW2</text>
              <text x="748" y="140" text-anchor="end" font-weight="700" fill="#6ee7b7">6 Jan 2027</text><text x="748" y="156" text-anchor="end" fill="#9b99b8">final oral args</text>
              <text x="12" y="200" text-anchor="start" font-size="13" font-weight="700" fill="#6ee7b7">Every hearing date: the routine</text>
              <rect x="12" y="212" width="169" height="52" rx="8" fill="#27274e" stroke="#3b82f6"/><text x="96" y="234" font-size="12" font-weight="700">Evening before</text><text x="96" y="252" fill="#9b99b8">check the cause list</text>
              <rect x="201" y="212" width="169" height="52" rx="8" fill="#27274e" stroke="#3b82f6"/><text x="285" y="234" font-size="12" font-weight="700">Hearing day</text><text x="285" y="252" fill="#9b99b8">note the item number</text>
              <rect x="390" y="212" width="169" height="52" rx="8" fill="#27274e" stroke="#3b82f6"/><text x="474" y="234" font-size="12" font-weight="700">After the hearing</text><text x="474" y="252" fill="#9b99b8">read the order sheet</text>
              <rect x="579" y="212" width="169" height="52" rx="8" fill="#27274e" stroke="#10b981"/><text x="663" y="234" font-size="12" font-weight="700">Same day</text><text x="663" y="252" fill="#9b99b8">update diary, tell client</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#lit13a)"><line x1="183" y1="238" x2="198" y2="238"/><line x1="372" y1="238" x2="387" y2="238"/><line x1="561" y1="238" x2="576" y2="238"/></g>
              <text x="12" y="290" text-anchor="start" fill="#9b99b8">Source for court dates: the order sheets in the court record. CMH = case management hearing.</text>
            </g>
          </svg>
          <figcaption>The case diary shows every coming date at a glance. The same four-step routine follows every hearing, so no change of date is missed.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>What a case diary tracks</h3>
          <p>A <strong>case diary</strong> is the firm's master list of dates and tasks for a case. Many firms keep it in practice software or a shared spreadsheet. It tracks four kinds of dates:</p>
          <ul class="lc-list">
            <li><strong>Court dates</strong>: hearings fixed by the court, taken from the order sheet (the court's daily record of what happened).</li>
            <li><strong>Court-set deadlines</strong>: dates in the timetable the court fixed at the case management hearing on 8 Jul 2026.</li>
            <li><strong>Time limits in the law</strong>: for example, limitation for an appeal after judgment. Check the current law.</li>
            <li><strong>Internal dates</strong>: preparation steps that the team sets for itself, always before the court date.</li>
          </ul>
          <table class="lc-table">
            <thead><tr><th>Date</th><th>What</th><th>Type</th><th>Owner</th></tr></thead>
            <tbody>
              <tr><td>6 Oct 2026 (Tue)</td><td>Neha's first preparation session (video)</td><td>Internal</td><td>Adv. Sameer Rao</td></tr>
              <tr><td>7 Oct 2026 (Wed)</td><td>Application for leave to file the section 63 BSA Part B certificate; Neha's instructions on Shiva's settlement offer</td><td>Filing; internal</td><td>Adv. Sameer Rao</td></tr>
              <tr><td>12 Oct 2026 (Mon)</td><td>Neha's second preparation session, in person</td><td>Internal</td><td>Adv. Kavita Mehra</td></tr>
              <tr><td>13 Oct 2026 (Tue)</td><td>Evening: check the cause list; confirm Neha and Imran</td><td>Internal</td><td>Pooja</td></tr>
              <tr><td>14 Oct 2026 (Wed)</td><td>Cross-examination of PW1 (Neha) and PW2 (Imran)</td><td>Court date</td><td>Adv. Kavita Mehra</td></tr>
              <tr><td>15 Oct 2026 (Thu)</td><td>Cross-examination of PW3 (Ritu Malhotra)</td><td>Court date</td><td>Adv. Kavita Mehra</td></tr>
              <tr><td>18 Nov 2026 (Wed)</td><td>DW1 and DW2 cross plans final</td><td>Internal</td><td>Adv. Sameer Rao</td></tr>
              <tr><td>25 Nov 2026 (Wed)</td><td>Cross-examination of DW1 and DW2</td><td>Court date</td><td>Adv. Kavita Mehra</td></tr>
              <tr><td>2 Dec and 4 Dec 2026</td><td>Draft written arguments (Wed); review by Adv. Kavita Mehra (Fri)</td><td>Internal</td><td>Adv. Sameer Rao</td></tr>
              <tr><td>9 Dec 2026 (Wed)</td><td>Written arguments to be filed, copy to Shiva's lawyer</td><td>Court-set deadline</td><td>Adv. Sameer Rao</td></tr>
              <tr><td>6 Jan 2027 (Wed)</td><td>Final oral arguments</td><td>Court date</td><td>Adv. Kavita Mehra</td></tr>
            </tbody>
          </table>
          <p>Commercial suits run on a strict timetable. Under Order XV-A of the CPC (as amended for commercial suits), arguments should close within six months of the first case management hearing. Here that is 8 Jan 2027 (Fri). The 6 Jan hearing leaves almost no room for an adjournment. The CPC also limits adjournments in general, and commercial courts can order costs for delay. Check the current rules.</p>
        </div>
        <div class="lc-card">
          <h3>e-Courts services and cause lists</h3>
          <p>The official e-Courts services website and mobile app give free case information for many Indian courts. Features change, so check the current help pages. In general, you can:</p>
          <ul class="lc-list">
            <li>Search a case by its <strong>CNR</strong> (Case Number Record: a 16-character number given to each case), or by case number, party name or advocate name.</li>
            <li>See the case status, the next date and past orders.</li>
            <li>Read the <strong>cause list</strong>: the list of cases a court will take up on a given day, with an item number for each.</li>
            <li>Save cases in the app, and set up SMS or email alerts where available.</li>
          </ul>
          <p>Pooja saves the Rangrez case in the app using its CNR. On the evening of 13 Oct she checks that the case appears in the cause list of the Commercial Court. She notes the item number and sends it to Adv. Manish Sharma, local counsel.</p>
          <p>Remember: the app is a helpful copy, not the official record. If the app and the signed order sheet differ, the court's order controls. Get a copy of the order, and ask the registry if something looks wrong.</p>
        </div>
        <div class="lc-card">
          <h3>Use AI for diary entries, then check every date</h3>
          <p>Order sheets are often long and hard to read. AI can turn them into clean diary entries. But AI often makes date mistakes: it gets weekdays wrong, adds days badly or invents a date. Use it to draft, and use a calendar or a spreadsheet to check.</p>
          <pre><code>Weak:   What are my deadlines in this case?

        Better: From the order sheet text below, list every date and task
                the court fixed. For each give: date as written in the
                order, the task, who must act, and the exact words of the
                order. Do not calculate any new date. Do not add holidays
                or weekdays. If a date is unclear, write [UNCLEAR].</code></pre>
          <p>Then Pooja checks the weekdays and the counts in a spreadsheet. If the hearing date is in cell B2, these formulas work in Excel and Google Sheets:</p>
          <pre><code>Weekday:            =TEXT(B2,"ddd")        6-Jan-2027 gives Wed
        4 weeks before:     =B2-28                 gives 9-Dec-2026
        Days left from today: =B2-TODAY()</code></pre>
          <p>Use the same care with rules. The rule on written arguments in commercial suits is in Order XVIII rule 2 of the CPC, as amended by the Commercial Courts Act. It says written arguments are due "within four weeks prior to" the oral arguments. Here the court's timetable fixed 9 Dec 2026, exactly four weeks before 6 Jan 2027. The formula above checks it. Pooja reads the exact words of the rule. If she has any doubt, she flags it to Adv. Kavita Mehra, who can ask local counsel about the court's practice. AI never decides a deadline.</p>
        </div>
        <div class="lc-card">
          <h3>When a date changes</h3>
          <p>Dates change often: the court may not reach the case, a judge may be on leave, or a party may ask for an adjournment (a postponement). When this happens, follow the same steps every time:</p>
          <ul class="lc-list">
            <li>Read the order sheet: the new date, any costs, and the reason recorded.</li>
            <li>Update the diary the same day. Move every internal date that depends on it.</li>
            <li>Check the effect on the court's timetable, such as the six-month target.</li>
            <li>Tell the client and the witnesses in plain words.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Activity: the routine for the 14 October hearing</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put Pooja's steps for the 14 Oct 2026 hearing in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Read the last order sheet and the diary entry for 14 Oct</li>
              <li data-order="2">Confirm with Neha, Imran and local counsel that they will attend</li>
              <li data-order="3">Evening of 13 Oct: find the case in the cause list and note the item number</li>
              <li data-order="4">Morning of 14 Oct: check the court's display for the item being heard</li>
              <li data-order="5">After the hearing: get the order sheet and record the next date</li>
              <li data-order="6">Update the diary, move dependent dates and email Neha a short update</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to turn a made-up order sheet into diary entries. Then check every date and weekday with a calendar.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a careful litigation paralegal in India. Turn this made-up court order into case diary entries.

        Order sheet (made up): [Commercial Suit No. 57 of 2026. Dated 8 July 2026. Issues framed. Plaintiff to file evidence affidavits by 7 August 2026. Defendant to file evidence affidavits by 4 September 2026. Cross-examination of plaintiff's witnesses PW1 and PW2 on 14 October 2026 and PW3 on 15 October 2026. Defendant's witnesses on 25 November 2026. Written arguments by 9 December 2026. Final arguments on 6 January 2027.]

        Today's date: [29 September 2026].

        Tasks:
        1. A table: Date | Task | Who acts (plaintiff / defendant / both) | Type (court date / court-set deadline) | Exact words from the order.
        2. Mark each date as past or coming, based on today's date.
        3. For each coming court date, suggest 2 internal preparation tasks with a suggested "by" date at least 5 days before.
        4. List anything a lawyer must check, such as the rules for written arguments in commercial suits.

        Rules: Do not invent any date the order does not give, except the suggested internal dates, which you must label "suggested". Do not state rules as final; write [CHECK]. Simple English.</pre>
            <ul class="ai-try-checks">
              <li>Every court date matches the order exactly, with nothing added.</li>
              <li>Check each weekday yourself: for example, 14 Oct 2026 is a Wednesday.</li>
              <li>Suggested internal dates are labelled and fall before the court dates.</li>
              <li>Rules carry [CHECK] and are not stated as final.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A deadline is only safe when it comes from the court's order and a person has checked it. Let AI draft the diary from the order sheet, check every date in a calendar, and follow the same routine after every hearing.
        </div>
      HTML
      starter_code: nil
    },
    14 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-law">Law</div>
          <h1 class="lc-title">Settlement, Mediation and Client Updates</h1>
        </div>
        <p class="lc-lead">Most disputes can settle at any stage, even during a trial. A good settlement can save the client time, money and stress. In this lesson you will learn the main settlement routes in India in general words: pre-institution mediation under the Commercial Courts Act, the Mediation Act, 2023, and settlement during a suit. You will use AI to compare options with the made-up Rangrez figures. You will also write a plain-language update for the client. The client decides whether to settle. The lawyer advises. AI only helps you prepare.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 262" role="img" aria-label="A settlement range bar from zero to the claim of 3,04,200 rupees. Shiva's mediation offer of 60,000 rupees and its new offer of 1,00,000 rupees are on the left. Neha's settlement figure of 2,40,000 rupees is further right. The gap between the new offer and Neha's figure is 1,40,000 rupees. Below, four routes: without prejudice talks, court-referred mediation, Lok Adalat, and a compromise recorded by the court.">
            <defs><marker id="lit14a" markerUnits="userSpaceOnUse" markerWidth="8" markerHeight="8" refX="8" refY="4" orient="auto"><path d="M0,0 L8,4 L0,8 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="11" fill="#e2e0f0" text-anchor="middle">
              <text x="12" y="22" text-anchor="start" font-size="13" font-weight="700" fill="#93c5fd">Settlement range in the Rangrez case (made up, confidential)</text>
              <rect x="40" y="90" width="680" height="16" rx="4" fill="#27274e"/>
              <rect x="252" y="90" width="298" height="16" fill="#f59e0b" fill-opacity="0.35"/>
              <text x="401" y="102" font-size="10" fill="#fcd34d">gap ₹1,40,000</text>
              <line x1="168" y1="84" x2="168" y2="112" stroke="#ec4899" stroke-width="3"/>
              <line x1="252" y1="84" x2="252" y2="112" stroke="#ec4899" stroke-width="3"/>
              <line x1="550" y1="84" x2="550" y2="112" stroke="#10b981" stroke-width="3"/>
              <line x1="686" y1="84" x2="686" y2="112" stroke="#3b82f6" stroke-width="3"/>
              <text x="252" y="60" font-weight="700" fill="#f9a8d4">₹1,00,000</text><text x="252" y="76" fill="#9b99b8">Shiva, 24 Sep 2026</text>
              <text x="550" y="60" font-weight="700" fill="#6ee7b7">₹2,40,000</text><text x="550" y="76" fill="#9b99b8">Neha's figure</text>
              <text x="168" y="130" font-weight="700" fill="#f9a8d4">₹60,000</text><text x="168" y="146" fill="#9b99b8">Shiva at mediation</text>
              <text x="686" y="130" font-weight="700" fill="#93c5fd">₹3,04,200</text><text x="686" y="146" fill="#9b99b8">the claim</text>
              <text x="40" y="130" fill="#9b99b8">₹0</text>
              <text x="12" y="180" text-anchor="start" font-size="13" font-weight="700" fill="#6ee7b7">Routes to settle during the suit</text>
              <rect x="12" y="192" width="169" height="52" rx="8" fill="#27274e" stroke="#8b5cf6"/><text x="96" y="214" font-size="12" font-weight="700">Without prejudice</text><text x="96" y="232" fill="#9b99b8">talks between lawyers</text>
              <rect x="201" y="192" width="169" height="52" rx="8" fill="#27274e" stroke="#8b5cf6"/><text x="285" y="214" font-size="12" font-weight="700">Court-referred</text><text x="285" y="232" fill="#9b99b8">mediation (s. 89 CPC)</text>
              <rect x="390" y="192" width="169" height="52" rx="8" fill="#27274e" stroke="#8b5cf6"/><text x="474" y="214" font-size="12" font-weight="700">Lok Adalat</text><text x="474" y="232" fill="#9b99b8">for pending cases</text>
              <rect x="579" y="192" width="169" height="52" rx="8" fill="#27274e" stroke="#10b981"/><text x="663" y="214" font-size="12" font-weight="700">Compromise</text><text x="663" y="232" fill="#9b99b8">recorded by the court</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#lit14a)"><line x1="183" y1="218" x2="198" y2="218"/><line x1="372" y1="218" x2="387" y2="218"/><line x1="561" y1="218" x2="576" y2="218"/></g>
            </g>
          </svg>
          <figcaption>The offers and Neha's figure are confidential. They never go into a court document or a public AI tool. The routes are options, not fixed steps.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Settlement routes, in general words</h3>
          <table class="lc-table">
            <thead><tr><th>Route</th><th>What it is (general words)</th><th>In the Rangrez case (made up)</th></tr></thead>
            <tbody>
              <tr><td><strong>Pre-institution mediation</strong> (section 12A, Commercial Courts Act, 2015)</td><td>If no urgent interim relief is sought, the plaintiff must try mediation before filing a commercial suit. Mediation should end within three months, and can be extended by two months with consent. The time is excluded from limitation. A settlement there has the same status as an arbitral award on agreed terms. The Mediation Act, 2023 also amends section 12A, for example with longer time limits, but only once that change is notified. Check the version in force.</td><td>Applied on 15 Dec 2025 to the District Legal Services Authority. Failed on 20 Feb 2026. Shiva offered only ₹60,000.</td></tr>
              <tr><td><strong>The Mediation Act, 2023</strong></td><td>A general law on mediation. It provides for voluntary pre-litigation mediation. Mediation should end within 120 days, plus up to 60 more with consent. A settlement agreement can be enforced like a court decree. Only some parts are in force so far. The Mediation Council of India was set up in August 2026. Check which sections apply on the date you act.</td><td>Not used. The suit is already pending.</td></tr>
              <tr><td><strong>Settlement during the suit</strong></td><td>Section 89 of the CPC lets the court refer a case to mediation and other routes. A pending case can also go to a Lok Adalat. If the parties settle, the court can record the compromise and pass a decree on it (Order XXIII rule 3 CPC).</td><td>Possible at any stage, before or after the final arguments on 6 Jan 2027.</td></tr>
            </tbody>
          </table>
          <p><strong>"Without prejudice"</strong> talks are settlement talks that cannot later be used as evidence of an admission. Section 21 of the Bharatiya Sakshya Adhiniyam, 2023 deals with this for civil cases. In general words, an admission is not relevant if it was made on the express condition that it will not be used as evidence. Mark such letters clearly. Read the section and the case law before you rely on it.</p>
        </div>
        <div class="lc-card">
          <h3>Compare the options with AI</h3>
          <p>On 24 Sep 2026, Shiva's lawyer, Adv. R. K. Saxena, sent a "without prejudice" email. Shiva offers ₹1,00,000 in full settlement, each side to bear its own costs. Rangrez must return the 80 rejected lamps at its own cost. Neha's position is ₹2,40,000 within 30 days, with Shiva collecting the 80 lamps at its cost. The gap is ₹1,40,000.</p>
          <p>Adv. Sameer Rao uses the firm's approved AI tool to lay out the options. He enters the figures himself and checks every sum.</p>
          <pre><code>Weak:   Should Neha take ₹1,00,000?

        Better: Make a table comparing settlement now with going to
                judgment, using ONLY these figures. Columns: option, money
                to Rangrez, time, costs and effort, risks, what is certain.
                Do not give odds or say which option is best. List the
                questions the lawyer should discuss with the client.</code></pre>
          <table class="lc-table">
            <thead><tr><th>Outcome (examples, not predictions)</th><th>Money to Rangrez</th><th>Notes</th></tr></thead>
            <tbody>
              <tr><td>Accept Shiva's offer now</td><td>₹1,00,000</td><td>Certain and quick. Rangrez bears the cost of returning 80 lamps.</td></tr>
              <tr><td>Settle at Neha's figure</td><td>₹2,40,000</td><td>Needs Shiva to move by ₹1,40,000. Shiva collects the lamps.</td></tr>
              <tr><td>Win in full</td><td>₹3,04,200, plus any interest and costs allowed</td><td>Counterclaim dismissed. Payment may still need execution against a firm in Uttar Pradesh.</td></tr>
              <tr><td>Win the refund only</td><td>₹1,08,000</td><td>If the lost profit and Aangan's deduction are held too remote.</td></tr>
              <tr><td>Refund and Aangan's deduction</td><td>₹1,33,200</td><td>₹1,08,000 + ₹25,200, without the lost profit.</td></tr>
              <tr><td>Lose, and counterclaim succeeds</td><td>Rangrez pays ₹1,20,000</td><td>Worst case, plus its own costs.</td></tr>
            </tbody>
          </table>
          <p>Neha's figure is ₹64,200 less than the claim. A lawyer's advice on the chances is professional judgment. It is not a number for AI to produce. This course is general education, not legal advice.</p>
        </div>
        <div class="lc-card">
          <h3>A plain-language client update</h3>
          <p>Clients need short, clear updates: what happened, what comes next, and what decision they must make. AI is good at turning legal notes into plain words. The lawyer checks every fact and removes any promise about the result.</p>
          <pre><code>PRIVILEGED AND CONFIDENTIAL: LAWYER-CLIENT COMMUNICATION
        To: Neha Rathore | From: Adv. Sameer Rao | Date: 29 Sep 2026
        Subject: Your case: next hearing and Shiva's offer

        1. Next hearing: 14 Oct 2026, in the Commercial Court. Shiva's
           lawyer will question you and Imran. We meet you by video on
           6 Oct and in person on 12 Oct.
        2. New offer: Shiva offers ₹1,00,000 in full settlement. You
           would return the 80 rejected lamps at your cost.
        3. Your options: accept, make a counter-offer, or continue to
           judgment (final arguments are fixed for 6 Jan 2027).
        4. Our view: we will explain the risks when we meet. No result
           in court is certain.
        5. What we need: your instructions by 7 Oct 2026.</code></pre>
          <p>Before sending, check the dates against the diary, the figures against Shiva's email, and the tone. Send it only through the firm's normal secure channel.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: where does each item belong?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Mehra &amp; Rao has several pieces of settlement work. Sort each item into the right place.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="client" data-label="Only for the client (privileged)"></div>
              <div data-sorter-target="bucket" data-bucket="wp" data-label="Without prejudice letter to Shiva"></div>
              <div data-sorter-target="bucket" data-bucket="court" data-label="Court filing"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="client" data-why="This is Neha's private bottom line. Revealing it would weaken her position.">Neha's lowest acceptable figure of ₹2,40,000</li>
              <li data-bucket="client" data-why="Your honest view of your own weak points is legal advice. It stays between lawyer and client.">The firm's view that the 22 Aug email is a risk on Issue 2</li>
              <li data-bucket="wp" data-why="A counter-offer goes to the other side, clearly marked without prejudice, and only after the client agrees in writing.">A counter-offer that Neha has approved in writing</li>
              <li data-bucket="wp" data-why="Explaining why an offer is too low is part of negotiation, not evidence for the court.">Reasons why Shiva's ₹1,00,000 offer is too low</li>
              <li data-bucket="court" data-why="Written arguments go to the court on the merits. They never mention settlement talks.">Written arguments on the lost profit claim</li>
              <li data-bucket="court" data-why="If the parties settle, the terms are filed so the court can record the compromise.">Signed settlement terms, if the parties agree, for the court to record</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to write a plain-language client update about a settlement offer. Use the made-up facts, or change the brackets. Never paste a real client's settlement figures into a public AI tool.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an Indian litigation lawyer writing to a small-business client who is not a lawyer. Write a short, plain-language update. Everything below is made up.

        Facts: [Client: Neha, owner of a Rajasthan handicrafts shop. She claims ₹3,04,200 from a supplier. The supplier counterclaims ₹1,20,000. Next hearing: 14 Oct 2026, when the supplier's lawyer will question Neha. Final arguments: 6 Jan 2027. On 24 Sep 2026 the supplier offered ₹1,00,000 in full settlement, "without prejudice", if Neha returns 80 rejected lamps at her own cost.]

        Write in [English], under 250 words, with these headings:
        1. What happened
        2. What happens next
        3. Your options (accept, counter-offer, continue), with one line on each
        4. What we need from you, and by when: [7 Oct 2026]

        Rules: Short sentences. Explain any legal word in brackets. Do not predict the result or give odds. Do not recommend an option; say "we will advise you when we meet". Mark the top "Privileged and confidential". After the email, list every fact and date I must check before sending.</pre>
            <ul class="ai-try-checks">
              <li>All figures and dates match the facts given, with no new numbers.</li>
              <li>There is no promise or prediction about winning.</li>
              <li>The email asks for a decision by a clear date.</li>
              <li>A non-lawyer could understand every sentence.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Settlement is the client's decision, made with clear facts and honest advice. Use AI to lay out the options and write plain updates. Keep the numbers confidential, check every figure, and never let AI give the odds.
        </div>
      HTML
      starter_code: nil
    },
    15 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-law">Law</div>
          <h1 class="lc-title">Capstone: Preparing a Commercial Suit for Hearing</h1>
        </div>
        <p class="lc-lead">In this capstone you bring the whole course together. You will build a hearing preparation pack for the made-up suit Rangrez Crafts v. Shiva Metalworks, Commercial Suit No. 57 of 2026, in a Commercial Court in Rajasthan. The pack holds the chronology, the issues, an evidence map, draft written submissions, a cross-examination plan and a hearing brief. You will use AI for first drafts in a firm-approved tool. You will check every fact, figure, date and authority, and you will record who checked what. This is the same careful method you would use on a real file.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 320" role="img" aria-label="A workflow. Three inputs, the case file D-01 to D-30, the court record C-01 to C-07, and the deposition record, go to AI first drafts, then to people who check, then into the hearing pack with eight tabs: hearing brief, chronology, issues and onus, evidence map, written arguments, cross plans, compilation, and diary and open points. Below, a verification log records who checked what and when.">
            <defs><marker id="lit15a" markerUnits="userSpaceOnUse" markerWidth="8" markerHeight="8" refX="8" refY="4" orient="auto"><path d="M0,0 L8,4 L0,8 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12" fill="#e2e0f0" text-anchor="middle">
              <text x="12" y="24" text-anchor="start" font-size="13" font-weight="700" fill="#93c5fd">Inputs</text>
              <rect x="12" y="40" width="180" height="60" rx="8" fill="#27274e" stroke="#3b82f6"/><text x="102" y="64" font-weight="700">Case file</text><text x="102" y="84" font-size="11" fill="#9b99b8">D-01 to D-30</text>
              <rect x="12" y="120" width="180" height="60" rx="8" fill="#27274e" stroke="#3b82f6"/><text x="102" y="144" font-weight="700">Court record</text><text x="102" y="164" font-size="11" fill="#9b99b8">C-01 to C-07, orders</text>
              <rect x="12" y="200" width="180" height="60" rx="8" fill="#27274e" stroke="#3b82f6"/><text x="102" y="224" font-weight="700">Deposition record</text><text x="102" y="244" font-size="11" fill="#9b99b8">witness answers</text>
              <rect x="226" y="120" width="150" height="60" rx="8" fill="#27274e" stroke="#8b5cf6"/><text x="301" y="144" font-weight="700">AI first drafts</text><text x="301" y="164" font-size="11" fill="#9b99b8">approved tool only</text>
              <rect x="410" y="120" width="150" height="60" rx="8" fill="#27274e" stroke="#f59e0b"/><text x="485" y="144" font-weight="700">People check</text><text x="485" y="164" font-size="11" fill="#9b99b8">every fact and source</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#lit15a)">
                <path d="M192,70 L208,70 L208,140 L222,140"/><line x1="192" y1="150" x2="222" y2="150"/><path d="M192,230 L208,230 L208,160 L222,160"/>
                <line x1="376" y1="150" x2="406" y2="150"/><line x1="560" y1="150" x2="590" y2="150"/>
              </g>
              <rect x="226" y="214" width="334" height="46" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="393" y="234" font-weight="700" fill="#fcd34d">Verification log</text><text x="393" y="251" font-size="11" fill="#9b99b8">who checked what, against which source, when</text>
              <rect x="594" y="40" width="154" height="266" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="671" y="64" font-weight="700" fill="#6ee7b7" font-size="13">Hearing pack</text>
              <g text-anchor="start" font-size="11"><text x="608" y="92">1 Hearing brief</text><text x="608" y="120">2 Chronology</text><text x="608" y="148">3 Issues and onus</text><text x="608" y="176">4 Evidence map</text><text x="608" y="204">5 Written arguments</text><text x="608" y="232">6 Cross plans</text><text x="608" y="260">7 Compilation</text><text x="608" y="288">8 Diary, open points</text></g>
            </g>
          </svg>
          <figcaption>AI drafts each tab from the file. People check each tab against its sources, and the log shows who checked it. Only then does it go into the pack.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Your brief and the pack</h3>
          <p>It is 29 Sep 2026. Adv. Kavita Mehra asks Adv. Sameer Rao and Pooja to build one hearing pack. It must serve the cross-examinations (14 and 15 Oct, and 25 Nov 2026), the written arguments (9 Dec) and the final arguments (6 Jan 2027). Here are the rules for the work:</p>
          <ul class="lc-list">
            <li>Use only the firm-approved AI tool, with redacted copies where possible.</li>
            <li>Every fact carries a document ID or a witness reference.</li>
            <li>No authority goes in until a lawyer has read it in full in a trusted source.</li>
            <li>The settlement position never appears anywhere in the pack.</li>
          </ul>
          <table class="lc-table">
            <thead><tr><th>Tab</th><th>What it holds</th><th>AI's role</th><th>Checked by</th></tr></thead>
            <tbody>
              <tr><td>1 Hearing brief</td><td>One page: relief, figures, issue-wise points, weak points</td><td>First draft from tabs 2 to 7</td><td>Adv. Kavita Mehra</td></tr>
              <tr><td>2 Chronology</td><td>25 dated events with sources; the 1 Oct 2025 call marked unconfirmed</td><td>Pulls dates from documents</td><td>Pooja</td></tr>
              <tr><td>3 Issues and onus</td><td>The 8 issues of 8 Jul 2026, with who must prove each</td><td>Copies from the order sheet C-05</td><td>Adv. Sameer Rao</td></tr>
              <tr><td>4 Evidence map</td><td>For each issue: documents, witnesses, the other side's evidence, risk</td><td>First draft of the table</td><td>Adv. Sameer Rao</td></tr>
              <tr><td>5 Written arguments</td><td>Issue-wise draft with a list of dates; verified authorities only</td><td>Structure and first draft</td><td>Adv. Kavita Mehra</td></tr>
              <tr><td>6 Cross plans</td><td>Question chains for DW1 and DW2, each with a source</td><td>Finds contradictions; practice witness</td><td>Adv. Kavita Mehra</td></tr>
              <tr><td>7 Compilation</td><td>Indexed key documents and the verified authorities</td><td>Draft index</td><td>Pooja</td></tr>
              <tr><td>8 Diary and open points</td><td>Dates, owners and unresolved problems</td><td>Drafts from order sheets</td><td>Pooja</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>The evidence map</h3>
          <p>An <strong>evidence map</strong> links each issue to the proof for it. It shows at a glance where the case is strong and where it is thin. <strong>Onus</strong> means the burden of proof: which side must prove the issue. Here is part of the made-up Rangrez map:</p>
          <table class="lc-table">
            <thead><tr><th>Issue (onus)</th><th>Our proof</th><th>Their proof</th><th>Risk and action</th></tr></thead>
            <tbody>
              <tr><td>1. Delivery by 15 Sep 2025, time of essence (plaintiff)</td><td>D-02, D-03 (1 Aug + 45 days = 15 Sep), D-12; PW1</td><td>DW1 para 5</td><td>Low. Show both documents give the same date.</td></tr>
              <tr><td>2. Did 22 Aug change the order? (defendant)</td><td>D-09 ("only if this causes no delay"), D-10, D-06 (12 Sep), D-14, D-26</td><td>D-09 itself; DW1, DW2</td><td>Medium. Plaint para 9 says Rangrez "never asked for any change". Adv. Kavita Mehra to decide how to deal with it openly.</td></tr>
              <tr><td>3. 80 lamps defective and rejected in 7 days (plaintiff)</td><td>D-16 ("subject to inspection"), D-18, D-19, D-20; PW2</td><td>D-16 printed "good condition"; C-04 denies D-18, D-19; DW2</td><td>Medium. 6 of 24 photos show 9 Oct. Use Imran's answer from 14 Oct. Section 63 BSA Part B certificate: leave to be sought on 7 Oct 2026.</td></tr>
              <tr><td>4. Refund ₹1,08,000 (plaintiff)</td><td>D-05, D-14: ₹3,60,000 − (420 × ₹600) = ₹1,08,000</td><td>Counterclaim</td><td>Low, if issue 3 is proved.</td></tr>
              <tr><td>5. Damages ₹1,71,000 and ₹25,200 (plaintiff)</td><td>D-02, D-08, D-13, D-17, D-24, D-29; PW1, PW3</td><td>DW1 para 12</td><td>High. Costing sheet D-29 was made after the dispute, and no bills are on record. Filing bills now needs the court's leave. Adv. Kavita Mehra to decide.</td></tr>
              <tr><td>6. Jurisdiction of this court (defendant)</td><td>D-02 "Courts in Rajasthan only"; delivery in Rajasthan (D-16)</td><td>D-03 "Subject to Uttar Pradesh jurisdiction"</td><td>Medium. Legal question; verified authorities needed.</td></tr>
              <tr><td>7. Counterclaim ₹1,20,000 (defendant)</td><td>D-14: only 500 lamps invoiced (₹3,00,000)</td><td>DW1 paras 10 and 14</td><td>Low. No production records for the 300 lamps.</td></tr>
            </tbody>
          </table>
          <p>Issue 8 (interest, costs and relief) follows the others. Check the claim total: ₹1,08,000 + ₹1,71,000 + ₹25,200 = ₹3,04,200.</p>
        </div>
        <div class="lc-card">
          <h3>Draft written submissions and cross plans</h3>
          <p>With the map checked, Adv. Sameer Rao asks the AI tool for a skeleton of the written arguments. He gives it only the checked tabs.</p>
          <pre><code>WRITTEN ARGUMENTS OF THE PLAINTIFF (draft skeleton)
        A. Brief facts and list of dates           [from Tab 2]
        B. Issue 1 and 2: time was of the essence; no change of order
           - D-02, D-03, D-09, D-10, D-06 (12 Sep 2025), D-14
           - Law: Indian Contract Act, s. 55          [VERIFY at source]
           - Authorities: [ONLY from the verified list]
        C. Issue 3: valid rejection within 7 days   [D-16, D-18, D-20]
        D. Issues 4 and 5: refund and damages       [figures from Tab 4]
        E. Issue 6: jurisdiction                    [VERIFY, authorities]
        F. Issue 7: counterclaim                    [D-14, D-05]
        G. Relief: ₹3,04,200, interest and costs as the court may allow</code></pre>
          <p>Tab 6 holds two cross plans. For DW1 (Deepak Varshney), the chains cover five points. He wrote none of the messages. The 12 Sep reason was a brass shortage. "Change of order" first appears on 1 Dec 2025. The invoice shows no extra charge. The PO mentions Diwali retail orders. For DW2 (Arif Khan): his own words in D-06, D-10 and D-22, none of which mention a change of order. Each question has a source.</p>
          <p>After the witnesses are examined, update the map and the arguments with their actual answers. A pack is a living document until the last hearing.</p>
        </div>
        <div class="lc-card">
          <h3>Final checks before sign-off</h3>
          <ul class="lc-list">
            <li><strong>Numbers.</strong> Recalculate every sum: 800 × ₹600 = ₹4,80,000; 500 = 420 accepted + 80 rejected; 300 never came.</li>
            <li><strong>Dates.</strong> Check each date and weekday against the source and a calendar.</li>
            <li><strong>Document IDs.</strong> Open each cited document and check the page and the words.</li>
            <li><strong>Authorities.</strong> Each one read in full in a trusted database, with the correct citation and page.</li>
            <li><strong>Own weak points.</strong> Each weak point has a planned, honest answer: plaint para 9 and D-09, the photo dates, the costing sheet, the unconfirmed 1 Oct call and the section 63 certificate.</li>
            <li><strong>Confidentiality.</strong> No settlement figures and no client advice in any tab meant for the court.</li>
            <li><strong>Sign-off.</strong> Adv. Kavita Mehra approves the pack and is responsible for what is filed and said in court.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Activity: building and checking the pack</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Prompt">Adv. Sameer Rao uploads the checked chronology, the issues and the redacted documents. He asks for a draft evidence map and hearing brief, with a source for every fact.</li>
              <li data-kind="answer" data-label="AI draft">A 7-row evidence map and a one-page brief. The brief says "Shiva filed its written statement late".</li>
              <li data-kind="warn" data-label="Wrong fact">The written statement was filed on 4 May 2026, within 30 days of service on 6 Apr 2026. Pooja checks C-02 and corrects the brief.</li>
              <li data-kind="warn" data-label="Invented authority">The brief lists a "High Court judgment" on jurisdiction clauses that is not on the firm's verified list. It is removed.</li>
              <li data-kind="warn" data-label="Confidential figure">The draft notes "client will accept ₹2,40,000". The line is deleted, and the tool history is checked under the firm's policy.</li>
              <li data-kind="tool" data-label="Recalculate">Pooja rechecks the money in a spreadsheet: =108000+171000+25200 gives 304200.</li>
              <li data-kind="check" data-label="Sign-off">Adv. Kavita Mehra reviews each tab and the verification log, then approves the pack for the hearings.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Build a mini hearing pack for a made-up dispute. Use the Rangrez facts below, or replace them with your own made-up case. Then check the AI's work line by line.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a senior associate in an Indian litigation firm. Build a mini hearing pack. All facts are made up.

        Facts: [Buyer ordered 800 lamps at ₹600 (₹4,80,000), paid ₹3,60,000 advance. PO: delivery by 15 Sep 2025, time of essence, "Goods are for our Diwali retail orders", Rajasthan courts. Supplier invoice: Uttar Pradesh courts. 500 lamps arrived 6 Oct 2025; 80 rejected on 8 Oct as defective. Buyer claims ₹3,04,200 (refund ₹1,08,000 + lost profit ₹1,71,000 + customer's deduction ₹25,200). Supplier says a 22 Aug email changed the order and counterclaims ₹1,20,000.]

        Give:
        1. Issues (4 to 6), with who must prove each.
        2. Evidence map: Issue | Buyer's proof | Supplier's proof | Risk (low/medium/high) and why.
        3. A one-page hearing brief outline.
        4. A verification list: every figure, date and legal point to check, with where to check it.

        Rules: Use only these facts. Check the sums and show the working. No case names. Laws in general words with [VERIFY]. Simple English.</pre>
            <ul class="ai-try-checks">
              <li>The sums are right: 1,08,000 + 1,71,000 + 25,200 = 3,04,200.</li>
              <li>The issues include the jurisdiction clash and the change-of-order defence.</li>
              <li>The evidence map shows the buyer's own weak points, not only the supplier's.</li>
              <li>No cases are named, and every legal point carries [VERIFY].</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A hearing pack is only as strong as its checks. AI can draft every tab quickly. The lawyer's value is in the sources, the honest handling of weak points and the final sign-off. That method works for any case in any court.
        </div>
      HTML
      starter_code: nil
    }
  }.freeze
end

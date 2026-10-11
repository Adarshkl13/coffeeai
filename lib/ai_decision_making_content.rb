module AiDecisionMakingContent
  # Units (sidebar dividers): 1–4 Decision Basics · 5–9 Analysing Options · 10–14 Deciding and Learning · 15 Capstone
  # Widgets: sequence, sorter, stepper. No code editor: each Try It is an ai-try prompt box.
  LESSONS = {
    1 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mgmt">Management</div>
          <h1 class="lc-title">How Good Decisions Are Made</h1>
        </div>
        <p class="lc-lead">Managers make decisions all day. Most are small, but a few shape the team for years. In this lesson you will learn the main types of decisions. You will learn to tell decisions that are easy to reverse from decisions that are hard to reverse. You will also learn to match your effort to the decision. Through this course you will follow James Okafor, operations manager at Northbridge Logistics. Northbridge is a made-up logistics company in London. James must help choose a new warehouse system.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 360" role="img" aria-label="A grid with two questions. Across: is the decision easy or hard to reverse? Up: how big is the impact if it is wrong? High impact and easy to reverse: try it, measure, adjust, for example a two-week trial of a new pick route. High impact and hard to reverse: slow, careful, consult widely, for example signing a three-year warehouse system deal. Low impact and easy to reverse: decide fast, close to the work, for example changing the shift handover checklist. Low impact and hard to reverse: check once, then decide, for example buying 20 label printers.">
            <defs><marker id="dm1a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <text x="70" y="175" font-weight="700" fill="#c4b5fd" text-anchor="middle" transform="rotate(-90 70 175)">Impact if it goes wrong</text>
              <text x="96" y="60" font-size="11" fill="#9b99b8" text-anchor="end">High</text>
              <text x="96" y="285" font-size="11" fill="#9b99b8" text-anchor="end">Low</text>
              <rect x="120" y="40" width="300" height="120" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="270" y="74" font-weight="700" text-anchor="middle">Try it, measure, adjust</text>
              <text x="270" y="102" font-size="12" fill="#9b99b8" text-anchor="middle">Example: a 2-week trial</text>
              <text x="270" y="122" font-size="12" fill="#9b99b8" text-anchor="middle">of a new pick route</text>
              <rect x="430" y="40" width="300" height="120" rx="10" fill="#27274e" stroke="#ec4899" stroke-width="2"/>
              <text x="580" y="74" font-weight="700" text-anchor="middle">Slow, careful, consult widely</text>
              <text x="580" y="102" font-size="12" fill="#9b99b8" text-anchor="middle">Example: sign a 3-year</text>
              <text x="580" y="122" font-size="12" fill="#9b99b8" text-anchor="middle">warehouse system deal</text>
              <rect x="120" y="170" width="300" height="120" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="270" y="204" font-weight="700" text-anchor="middle">Decide fast, close to the work</text>
              <text x="270" y="232" font-size="12" fill="#9b99b8" text-anchor="middle">Example: change the shift</text>
              <text x="270" y="252" font-size="12" fill="#9b99b8" text-anchor="middle">handover checklist</text>
              <rect x="430" y="170" width="300" height="120" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="580" y="204" font-weight="700" text-anchor="middle">Check once, then decide</text>
              <text x="580" y="232" font-size="12" fill="#9b99b8" text-anchor="middle">Example: buy 20 new</text>
              <text x="580" y="252" font-size="12" fill="#9b99b8" text-anchor="middle">label printers</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#dm1a)">
                <line x1="106" y1="290" x2="106" y2="44"/>
                <line x1="120" y1="306" x2="726" y2="306"/>
              </g>
              <text x="270" y="332" font-size="12" text-anchor="middle">Easy to reverse (two-way door)</text>
              <text x="580" y="332" font-size="12" text-anchor="middle">Hard to reverse (one-way door)</text>
            </g>
          </svg>
          <figcaption>Two questions set your effort: how big is the impact, and how easy is it to undo? The top-right box needs the most care.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>What a decision is, and the main types</h3>
          <p>A <strong>decision</strong> is a choice between options that commits time, money or people. "We will think about it" is not a decision. "We will trial a new pick route from Monday" is a decision.</p>
          <p>Decisions come in three common sizes:</p>
          <table class="lc-table">
            <thead><tr><th>Type</th><th>What it means</th><th>Made-up example</th></tr></thead>
            <tbody>
              <tr><td><strong>Operational</strong></td><td>Day-to-day choices about how work gets done. Often repeated.</td><td>Tom Hughes, night-shift supervisor at Northbridge, moves two pickers to the busy zone tonight.</td></tr>
              <tr><td><strong>Tactical</strong></td><td>Team or project choices for the next weeks or months.</td><td>Hannah Price, team lead at Bluefern Digital in London, picks which client project gets her two designers in May.</td></tr>
              <tr><td><strong>Strategic</strong></td><td>Big choices about direction, money or systems for years.</td><td>Northbridge Logistics chooses a new warehouse management system for its Park Royal warehouse in London.</td></tr>
            </tbody>
          </table>
          <p>A <strong>warehouse management system</strong> (WMS) is software that tracks stock and tells staff what to pick, pack and send. At Northbridge, the old WMS is 12 years old. Picking errors and overtime are rising. James Okafor must recommend a new system. Claire Bennett, the managing director, will make the final call.</p>
          <p>Decisions also differ in how often they happen. A <strong>routine decision</strong> repeats, so you can write a simple rule for it. A <strong>one-off decision</strong> happens rarely, so it needs fresh thinking each time.</p>
        </div>
        <div class="lc-card">
          <h3>Easy to reverse or hard to reverse?</h3>
          <p>The most useful question about any decision is: <strong>how easy is it to undo?</strong></p>
          <ul class="lc-list">
            <li><strong>Easy to reverse</strong>: you can change your mind quickly and cheaply. Example: a new layout for the daily stand-up meeting.</li>
            <li><strong>Hard to reverse</strong>: undoing it costs a lot of money, time or trust. Example: a three-year software contract, or making a role redundant.</li>
          </ul>
          <p>In his 2015 letter to Amazon shareholders, Jeff Bezos called these "two-way doors" and "one-way doors". You can walk back through a two-way door. A one-way door is very hard to walk back through.</p>
          <p>Match your effort to the door:</p>
          <table class="lc-table">
            <thead><tr><th></th><th>Easy to reverse</th><th>Hard to reverse</th></tr></thead>
            <tbody>
              <tr><td><strong>Who decides</strong></td><td>The person closest to the work</td><td>A senior owner, after consulting others</td></tr>
              <tr><td><strong>Time</strong></td><td>Minutes to days</td><td>Weeks, with a clear deadline</td></tr>
              <tr><td><strong>Evidence</strong></td><td>Enough to start. Learn by trying.</td><td>Checked data, costs, risks and people's input</td></tr>
              <tr><td><strong>Record</strong></td><td>A short note in the team chat</td><td>A written decision note with the reasons</td></tr>
            </tbody>
          </table>
          <p>Two common mistakes: treating small, reversible choices like big ones, so the team waits for weeks. And rushing a one-way door because it "feels obvious".</p>
          <p>You can often turn a one-way door into a two-way door. For example, James can ask for a pilot in one warehouse zone before a full roll-out. He can also ask for a shorter first contract.</p>
        </div>
        <div class="lc-card">
          <h3>What makes a good decision</h3>
          <p>A good decision is not the same as a good result. Luck plays a part. A careful decision can still turn out badly. A careless decision can still turn out well. So judge a decision by its <strong>process</strong>, not only its outcome.</p>
          <p>A good decision process usually has these parts:</p>
          <ol class="lc-list">
            <li>A clear question, goals and limits.</li>
            <li>Checked evidence, including what people on the ground say.</li>
            <li>More than two real options.</li>
            <li>A fair way to compare the options.</li>
            <li>Honest thinking about risks and what could go wrong.</li>
            <li>A named person who decides, and a deadline.</li>
            <li>A record of the reasons, and a date to review the result.</li>
          </ol>
          <p>AI tools, such as Claude or Microsoft 365 Copilot, can help with every part. But you own the decision. AI drafts and organises. You check, listen and decide.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Should we buy a new warehouse system?</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>I am an operations manager at a London logistics company.
        We are thinking about replacing our 12-year-old warehouse system.
        Is this decision easy or hard to reverse? Why?
        How much time, evidence and consultation does it need?
        Who should be involved? Answer in a short table.
        Do not invent prices or statistics.</code></pre>
          <p>The better prompt asks the AI to help you size the decision. It does not ask the AI to make the decision.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: one-way or two-way door?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each made-up decision. Is it easy to reverse or hard to reverse?</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="easy" data-label="Easy to reverse"></div>
              <div data-sorter-target="bucket" data-bucket="hard" data-label="Hard to reverse"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="easy" data-why="If the new route is slower, Tom can switch back the next night at almost no cost.">Tom tries a new picking route on the night shift for one week.</li>
              <li data-bucket="hard" data-why="A long contract, new hardware and staff retraining make this very costly to undo.">Northbridge signs a three-year contract for a new warehouse system.</li>
              <li data-bucket="easy" data-why="A meeting time is cheap to change if it does not work.">Hannah moves her team's weekly meeting from Monday to Tuesday.</li>
              <li data-bucket="hard" data-why="Ending a supplier relationship and moving clinic records takes months and is risky to undo.">Daniel Kim at Maple Street Health in New York moves all clinic booking to a new system.</li>
              <li data-bucket="hard" data-why="Decisions about people's jobs are very hard to undo and affect lives. They need HR advice and care.">A manager decides to close a team and make three roles redundant.</li>
              <li data-bucket="easy" data-why="A trial with a clear end date is designed to be reversed or kept.">Bluefern Digital tries a new project tracking board for one month.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Describe a decision you face at work. Ask AI to help you size it, so you know how much effort it deserves.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an experienced management coach. Use simple English.

        I need to make this decision: [whether to replace our 12-year-old warehouse system].
        My role: [operations manager at Northbridge Logistics, a made-up London logistics company].
        Who it affects: [85 warehouse staff, our customers and the finance team].
        Rough money involved: [up to £200,000 one-off].
        Deadline: [a decision by 15 December].

        Please:
        1. Say if this is operational, tactical or strategic, and why.
        2. Say if it is easy or hard to reverse. Give 2 reasons.
        3. Suggest one way to make it easier to reverse (for example a pilot or shorter contract).
        4. Suggest how much time, evidence and consultation it needs, in a short table.
        5. List who should decide, who should be consulted and who should just be told.

        Do not invent prices, laws or statistics. If you need more details, ask me up to 3 questions first.</pre>
            <ul class="ai-try-checks">
              <li>The reversibility answer has reasons that fit your real situation.</li>
              <li>The idea for making it more reversible is practical for your team.</li>
              <li>Effort fits the size: not too heavy for a small choice, not too light for a big one.</li>
              <li>No made-up prices, laws or numbers.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Before you decide anything, ask two questions. How big is the impact if I am wrong? How easy is it to undo? Move fast on two-way doors. Slow down, gather evidence and consult people on one-way doors.
        </div>
      HTML
      starter_code: nil
    },
    2 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mgmt">Management</div>
          <h1 class="lc-title">Where AI Helps Decision Makers and Its Limits</h1>
        </div>
        <p class="lc-lead">AI assistants can make you a faster and more careful decision maker. They can also lead you badly wrong if you trust them too much. In this lesson you will learn where AI helps: finding options, organising analysis and challenging your thinking. You will also learn its main risks: overconfidence, made-up data and bias. You will see how James Okafor at Northbridge Logistics uses AI safely.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 330" role="img" aria-label="Left column, where AI helps: widen the options, organise notes and data, do first-pass sums, and argue the other side. Right column, where AI fails: sounds sure when wrong, makes up facts and numbers, repeats bias, and does not know your context. Both columns point to the centre bottom box: you check, decide and own it.">
            <defs><marker id="dm2a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="190" y="26" font-weight="700" fill="#6ee7b7">Where AI helps</text>
              <text x="570" y="26" font-weight="700" fill="#f9a8d4">Where AI fails</text>
              <rect x="40" y="40" width="300" height="38" rx="8" fill="#1f1f44" stroke="#10b981"/>
              <text x="190" y="64">Widen the options</text>
              <rect x="40" y="88" width="300" height="38" rx="8" fill="#1f1f44" stroke="#10b981"/>
              <text x="190" y="112">Organise notes and data</text>
              <rect x="40" y="136" width="300" height="38" rx="8" fill="#1f1f44" stroke="#10b981"/>
              <text x="190" y="160">Do first-pass sums</text>
              <rect x="40" y="184" width="300" height="38" rx="8" fill="#1f1f44" stroke="#10b981"/>
              <text x="190" y="208">Argue the other side</text>
              <rect x="420" y="40" width="300" height="38" rx="8" fill="#1f1f44" stroke="#ec4899"/>
              <text x="570" y="64">Sounds sure when wrong</text>
              <rect x="420" y="88" width="300" height="38" rx="8" fill="#1f1f44" stroke="#ec4899"/>
              <text x="570" y="112">Makes up facts and numbers</text>
              <rect x="420" y="136" width="300" height="38" rx="8" fill="#1f1f44" stroke="#ec4899"/>
              <text x="570" y="160">Repeats bias, agrees with you</text>
              <rect x="420" y="184" width="300" height="38" rx="8" fill="#1f1f44" stroke="#ec4899"/>
              <text x="570" y="208">Does not know your context</text>
              <rect x="230" y="262" width="300" height="48" rx="10" fill="#27274e" stroke="#f59e0b" stroke-width="2"/>
              <text x="380" y="291" font-weight="700">You check, decide and own it</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#dm2a)">
                <line x1="190" y1="224" x2="290" y2="258"/>
                <line x1="570" y1="224" x2="470" y2="258"/>
              </g>
            </g>
          </svg>
          <figcaption>AI is a strong helper and a weak judge. Use its strengths, guard against its failures, and keep the decision with a person.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Where AI helps</h3>
          <p>Think of an AI assistant as a quick, tireless junior analyst. It has read a lot, but it has never worked in your company.</p>
          <table class="lc-table">
            <thead><tr><th>Job</th><th>How AI helps</th><th>Northbridge example (made up)</th></tr></thead>
            <tbody>
              <tr><td><strong>Options</strong></td><td>Lists choices you had not thought of.</td><td>James only thought of "buy a new system". AI also suggests a pilot in one zone and quick fixes at the packing desk.</td></tr>
              <tr><td><strong>Organising</strong></td><td>Turns messy notes into clear themes and tables.</td><td>James pastes notes from 12 picker interviews, with names removed. AI groups them into 4 themes.</td></tr>
              <tr><td><strong>Analysis</strong></td><td>Sets up comparisons, formulas and first-pass sums.</td><td>AI drafts a spreadsheet layout for comparing three vendors on cost and setup time.</td></tr>
              <tr><td><strong>Challenge</strong></td><td>Argues against your favourite option and asks hard questions.</td><td>AI lists 8 questions a sceptical finance lead would ask about the plan.</td></tr>
              <tr><td><strong>Writing</strong></td><td>Drafts decision notes, emails and summaries.</td><td>AI drafts a one-page note for Claire Bennett, the managing director.</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>The limits you must guard against</h3>
          <ul class="lc-list">
            <li><strong>Overconfidence.</strong> AI writes in a calm, sure voice even when it is guessing. A neat table is not proof.</li>
            <li><strong>Made-up data.</strong> AI can invent numbers, quotes, sources and even product features. People call this "hallucination". It is most likely when you ask for facts it cannot see, such as a vendor's price list.</li>
            <li><strong>Bias.</strong> AI learned from huge amounts of text, which contain human biases. It may favour well-known brands or common opinions.</li>
            <li><strong>Agreeing with you.</strong> If your prompt hints at the answer you want, AI often gives you that answer. Ask neutral questions.</li>
            <li><strong>No context.</strong> AI does not know your budget, your staff, your customers or your history unless you tell it.</li>
            <li><strong>Out-of-date knowledge.</strong> Some tools do not search the web. Others search, but can still misread pages.</li>
          </ul>
          <p>Protect your data too. Do not paste confidential company data or personal data about staff or customers into public AI tools. Use the tools your company has approved. Remove names before you paste notes. In the UK, staff data is covered by UK GDPR. This is general information, not legal advice. Follow your company's AI and data policy.</p>
        </div>
        <div class="lc-card">
          <h3>Weak and better ways to ask</h3>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Which warehouse management system is best for a UK logistics company?
        Give me prices.</code></pre>
          <p>This asks AI for facts it cannot check. It will likely name brands and invent prices.</p>
          <p><strong>Better prompt:</strong></p>
          <pre><code>I am choosing a warehouse system for an 85-person warehouse in London.
        Do not recommend brands and do not give prices.
        Instead:
        1. List the questions I should ask every vendor.
        2. List the evidence I should collect before I decide.
        3. List 5 ways this kind of project often goes wrong.
        For each point, say how sure you are: high, medium or low.</code></pre>
          <p>The better prompt uses AI for thinking and structure. Facts come from your own data and from the vendors, checked by you.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: James's first AI session</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="James asks">"Compare three warehouse system vendors for us and tell me which one has the best price."</li>
              <li data-kind="answer" data-label="AI replies">The AI gives a confident table. It shows three vendors, yearly prices and "average error reduction: 65%".</li>
              <li data-kind="warn" data-label="The problem">The AI has no access to these vendors' price lists. The prices and the 65% figure have no source. They may be invented.</li>
              <li data-kind="thought" data-label="James thinks">"I almost put these numbers in my report. I need real quotes, not AI guesses."</li>
              <li data-kind="tool" data-label="James gathers facts">He asks each of the three vendors for a written quote and a demo. He gets last year's error and overtime figures from the old system.</li>
              <li data-kind="user" data-label="Better prompt">"Here are the three quotes, with no confidential names. Set up a comparison table. Point out anything missing or unclear in each quote."</li>
              <li data-kind="check" data-label="James checks">He checks every number in the table against the quotes. Ruth Adeyemi, the finance lead, checks the sums.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Use AI as a thinking partner for a real decision, with honesty rules built into the prompt.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a careful decision-making assistant for a manager. Use simple English.

        My decision: [choosing a new warehouse system for our London warehouse].
        What I know: [our picking errors and overtime are rising; one-off budget up to £200,000; we must go live before 30 June next year].
        My current favourite option: [none yet].

        Please help me in 4 parts:
        1. Options: list 6 different options, including at least one I may not have thought of.
        2. Questions: list 6 questions I should answer before I decide.
        3. Challenge: give the strongest argument against my favourite option (or against acting at all).
        4. Limits: list what you do NOT know about my situation that could change your advice.

        Rules: do not invent prices, statistics, product features or sources. Mark each point as high, medium or low confidence. If something needs checking, write "CHECK:" before it.</pre>
            <ul class="ai-try-checks">
              <li>No invented prices, statistics or vendor claims.</li>
              <li>Confidence labels and "CHECK:" marks appear where facts are uncertain.</li>
              <li>The challenge is a real argument, not a weak one.</li>
              <li>The "limits" list shows what you must find out yourself.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Use AI for options, structure and challenge. Do not use it as a source of facts. Every number that goes into a decision must come from a source you can name and check.
        </div>
      HTML
      starter_code: nil
    },
    3 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mgmt">Management</div>
          <h1 class="lc-title">Framing the Problem</h1>
        </div>
        <p class="lc-lead">Many bad decisions answer the wrong question. Framing means writing down the real question before you look for answers. In this lesson you will learn to separate symptoms from the real problem. You will learn to set goals and constraints, and to agree who decides. You will see James Okafor turn a vague question into a clear frame. You will also use AI to challenge your framing.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 330" role="img" aria-label="Top: the weak question, which warehouse system vendor is best, has an arrow to the framed question: which system cuts errors and overtime, within £200,000, live before 30 June 2027. Below are four parts of the frame: goals, constraints, who decides, and the deadline with what is out of scope.">
            <defs><marker id="dm3a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <rect x="20" y="30" width="250" height="84" rx="10" fill="#1f1f44" stroke="#9b99b8" stroke-dasharray="5 4"/>
              <text x="145" y="56" font-size="11" fill="#9b99b8" text-anchor="middle">WEAK QUESTION</text>
              <text x="145" y="82" text-anchor="middle">"Which WMS vendor</text>
              <text x="145" y="100" text-anchor="middle">is best?"</text>
              <rect x="320" y="30" width="420" height="84" rx="10" fill="#27274e" stroke="#f59e0b" stroke-width="2"/>
              <text x="530" y="52" font-size="11" fill="#fcd34d" text-anchor="middle">FRAMED QUESTION</text>
              <text x="530" y="74" text-anchor="middle">Which system cuts errors and overtime,</text>
              <text x="530" y="92" text-anchor="middle">within £200,000 one-off,</text>
              <text x="530" y="108" text-anchor="middle">and goes live before 30 June 2027?</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#dm3a)">
                <line x1="274" y1="72" x2="314" y2="72"/>
              </g>
              <rect x="20" y="150" width="170" height="150" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="105" y="176" font-weight="700" text-anchor="middle">Goals</text>
              <text x="34" y="204" font-size="12">Errors: 1.2% to 0.6%</text>
              <text x="34" y="226" font-size="12">Overtime: -30%</text>
              <text x="34" y="248" font-size="12">Training: 5 to 2 days</text>
              <rect x="205" y="150" width="170" height="150" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="290" y="176" font-weight="700" text-anchor="middle">Constraints</text>
              <text x="219" y="204" font-size="12">£200,000 one-off</text>
              <text x="219" y="226" font-size="12">Links to transport</text>
              <text x="219" y="248" font-size="12">Data in UK or EU</text>
              <rect x="390" y="150" width="170" height="150" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="475" y="176" font-weight="700" text-anchor="middle">Who decides</text>
              <text x="404" y="204" font-size="12">Decides: Claire</text>
              <text x="404" y="226" font-size="12">Recommends: James</text>
              <text x="404" y="248" font-size="12">Consulted: Ruth,</text>
              <text x="404" y="266" font-size="12">Aisha, Tom</text>
              <rect x="575" y="150" width="165" height="150" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="657" y="176" font-weight="700" text-anchor="middle">Time and scope</text>
              <text x="589" y="204" font-size="12">Decide by 15 Dec</text>
              <text x="589" y="226" font-size="12">Live before 30 June</text>
              <text x="589" y="248" font-size="12">Out: new building</text>
            </g>
          </svg>
          <figcaption>A frame turns a vague question into a clear one, with goals, limits, a decider and a deadline.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Symptoms are not the problem</h3>
          <p>A <strong>symptom</strong> is what you notice. The <strong>problem</strong> is what causes it. If you fix only the symptom, it often comes back.</p>
          <p>At Northbridge Logistics, the first complaint was: "Customers are angry about wrong orders." James asked "why?" several times. This simple method is often called the "5 whys".</p>
          <ol class="lc-list">
            <li>Why are orders wrong? Pickers send the wrong item or quantity.</li>
            <li>Why? They pick from paper lists and the old scanners often freeze.</li>
            <li>Why? The old system cannot send pick lists to modern handheld scanners.</li>
            <li>Why is that still the case? The old system is 12 years old and gets no new versions.</li>
            <li>Why now? Its support contract ends on 30 June 2027.</li>
          </ol>
          <p>So the real problem is not "angry customers" or "careless pickers". It is an old system that no longer fits the work. Notice that the answer did not blame people. Good framing looks at systems first.</p>
          <p>The numbers behind the symptom (made up): Northbridge sends about 520,000 orders a year. 1.2% of them have a picking error. That is 6,240 errors a year.</p>
        </div>
        <div class="lc-card">
          <h3>The parts of a good frame</h3>
          <table class="lc-table">
            <thead><tr><th>Part</th><th>What to write</th><th>Northbridge (made up)</th></tr></thead>
            <tbody>
              <tr><td><strong>Real question</strong></td><td>One sentence. It names the choice, the goal and the main limits.</td><td>"Which warehouse system should we use from mid-2027 to cut picking errors and overtime, within a one-off budget of £200,000, live before 30 June 2027?"</td></tr>
              <tr><td><strong>Goals</strong></td><td>What success looks like, with numbers where possible.</td><td>Errors from 1.2% to 0.6% or lower. Overtime cost down at least 30%. New pickers productive in 2 days, not 5.</td></tr>
              <tr><td><strong>Constraints</strong></td><td>Limits you cannot break (money, time, rules, systems).</td><td>One-off budget £200,000. Must link to the transport system and customer portal. Data kept in the UK or EU.</td></tr>
              <tr><td><strong>Who decides</strong></td><td>One named decider, plus who recommends, who gives input and who is told.</td><td>Claire Bennett decides. James recommends. Ruth (finance), Aisha Rahman (IT) and Tom (night shift) give input. All staff are told.</td></tr>
              <tr><td><strong>Deadline</strong></td><td>When the decision must be made, and why.</td><td>By 15 December 2026, so the project can start on 4 January 2027.</td></tr>
              <tr><td><strong>Out of scope</strong></td><td>What this decision will not cover.</td><td>Moving to a new building. Changing the transport system.</td></tr>
            </tbody>
          </table>
          <p>The "who decides" part is like a simple <strong>RACI</strong> chart (a table showing who is Responsible, Accountable, Consulted and Informed). The key rule: one person is accountable for the final call.</p>
        </div>
        <div class="lc-card">
          <h3>Using AI to test your frame</h3>
          <p>AI is good at spotting gaps and hidden assumptions in a frame. An <strong>assumption</strong> is something you believe is true but have not checked.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Help me pick a warehouse system.</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Here is my draft decision frame. [paste frame]
        Act as a critical adviser. Do not suggest solutions yet.
        1. Is my question about the real problem or a symptom?
        2. Rewrite the question in 2 other ways that might be better.
        3. List the assumptions hidden in my frame.
        4. Which goals or constraints are missing or unclear?
        5. Is the decider clear? Who might feel left out?</code></pre>
          <p>In James's session, the AI pointed out a hidden assumption: "the old system cannot be upgraded". James checked with the old vendor. They confirmed there will be no new versions. Now that fact is checked, not assumed.</p>
          <p>The AI also asked about the staff side. James added a goal about training time. He is the one who decides which suggestions to keep.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: frame a decision in order</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put James's framing steps in a sensible order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Write down the symptom: "Customers complain about wrong orders."</li>
              <li data-order="2">Ask "why?" several times to find the real problem.</li>
              <li data-order="3">Write the real question in one sentence.</li>
              <li data-order="4">Add goals with numbers, and the constraints.</li>
              <li data-order="5">Name who decides, who recommends and who gives input.</li>
              <li data-order="6">Ask AI to find hidden assumptions and gaps, then check them.</li>
              <li data-order="7">Share the frame with Claire and agree it before comparing options.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Turn a vague work problem into a clear decision frame. Then check what the AI changed and why.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a decision coach for managers. Use simple English and short sentences.

        Help me frame a decision before I look at solutions.
        The problem as people describe it: [Customers complain about wrong orders, and overtime keeps rising in our warehouse].
        Background: [Northbridge Logistics, a made-up London company. Our warehouse system is 12 years old. Its support ends on 30 June next year. One-off budget up to £200,000].
        People involved: [managing director, operations manager (me), finance lead, IT lead, shift supervisors].

        Please:
        1. Separate the symptoms from the likely real problem. Use the "5 whys" and show your steps.
        2. Write the real question in one sentence.
        3. Suggest 3 goals with numbers I can measure, and list the constraints.
        4. Suggest who decides, who recommends, who is consulted and who is informed.
        5. List 3 hidden assumptions I should check.
        6. Say what should be out of scope.

        Do not suggest a solution yet. Mark any numbers you invent as "example only".</pre>
            <ul class="ai-try-checks">
              <li>The real question is about a cause, not a symptom or blame on people.</li>
              <li>Goals have numbers you could really measure.</li>
              <li>There is exactly one person who makes the final decision.</li>
              <li>The assumptions are things you can check this week.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Agree the question before you hunt for answers. A one-sentence frame with goals, limits, a decider and a deadline saves weeks of argument later.
        </div>
      HTML
      starter_code: nil
    },
    4 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mgmt">Management</div>
          <h1 class="lc-title">Gathering Evidence</h1>
        </div>
        <p class="lc-lead">Good decisions rest on good evidence. Evidence is information that helps you judge which option is better. In this lesson you will learn to gather three kinds of evidence: data, people's input and outside sources. You will learn to check each source and to list what is missing. You will see how James Okafor builds an evidence log for the warehouse system decision. You will also see how AI helps without becoming the source.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 320" role="img" aria-label="Three sources on the left: your data, people's input and outside sources. Each has an arrow to a check step in the middle with four questions: who made it, when, how was it measured, and does it agree with other evidence. The check step points to an evidence log on the right with three groups: known, unsure and missing.">
            <defs><marker id="dm4a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <rect x="20" y="30" width="200" height="74" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="120" y="60" font-weight="700" text-anchor="middle">Your data</text>
              <text x="120" y="84" font-size="12" fill="#9b99b8" text-anchor="middle">errors, overtime, costs</text>
              <rect x="20" y="122" width="200" height="74" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="120" y="152" font-weight="700" text-anchor="middle">People's input</text>
              <text x="120" y="176" font-size="12" fill="#9b99b8" text-anchor="middle">pickers, IT, customers</text>
              <rect x="20" y="214" width="200" height="74" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="120" y="244" font-weight="700" text-anchor="middle">Outside sources</text>
              <text x="120" y="268" font-size="12" fill="#9b99b8" text-anchor="middle">quotes, demos, references</text>
              <rect x="290" y="70" width="200" height="180" rx="10" fill="#27274e" stroke="#f59e0b" stroke-width="2"/>
              <text x="390" y="100" font-weight="700" text-anchor="middle">Check each one</text>
              <text x="306" y="132" font-size="12">Who made it?</text>
              <text x="306" y="158" font-size="12">When? Is it current?</text>
              <text x="306" y="184" font-size="12">How was it measured?</text>
              <text x="306" y="210" font-size="12">Does it agree with</text>
              <text x="306" y="228" font-size="12">other evidence?</text>
              <rect x="560" y="40" width="180" height="70" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="650" y="70" font-weight="700" text-anchor="middle">Known</text>
              <text x="650" y="92" font-size="12" fill="#9b99b8" text-anchor="middle">checked, with source</text>
              <rect x="560" y="125" width="180" height="70" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="650" y="155" font-weight="700" text-anchor="middle">Unsure</text>
              <text x="650" y="177" font-size="12" fill="#9b99b8" text-anchor="middle">claims to test</text>
              <rect x="560" y="210" width="180" height="70" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="650" y="240" font-weight="700" text-anchor="middle">Missing</text>
              <text x="650" y="262" font-size="12" fill="#9b99b8" text-anchor="middle">gaps to fill or accept</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#dm4a)">
                <line x1="222" y1="67" x2="286" y2="110"/>
                <line x1="222" y1="159" x2="286" y2="159"/>
                <line x1="222" y1="251" x2="286" y2="210"/>
                <line x1="492" y1="130" x2="556" y2="80"/>
                <line x1="492" y1="160" x2="556" y2="160"/>
                <line x1="492" y1="190" x2="556" y2="240"/>
              </g>
              <text x="650" y="304" font-size="11" fill="#9b99b8" text-anchor="middle">Evidence log</text>
            </g>
          </svg>
          <figcaption>Collect evidence from three kinds of source, check each one, then sort it into known, unsure and missing.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Three kinds of evidence</h3>
          <table class="lc-table">
            <thead><tr><th>Kind</th><th>What it is</th><th>Northbridge examples (made up)</th></tr></thead>
            <tbody>
              <tr><td><strong>Your data</strong></td><td>Numbers from your own systems and records.</td><td>520,000 orders last year. 6,240 picking errors (1.2%). Each error costs about £18 to fix. Overtime cost £96,000. The old system costs £38,000 a year.</td></tr>
              <tr><td><strong>People's input</strong></td><td>What staff, customers and experts tell you.</td><td>Tom Hughes talks to 12 pickers. Aisha Rahman, the IT lead, lists the systems the new WMS must connect to. Two big customers say what they need.</td></tr>
              <tr><td><strong>Outside sources</strong></td><td>Information from outside the company.</td><td>Written quotes and demos from three vendors. Calls with other warehouses that use each system. These calls are called <strong>reference calls</strong>.</td></tr>
            </tbody>
          </table>
          <p>Each kind catches things the others miss. The data showed that errors were high. Only the pickers could explain why: the old scanners freeze in the cold store.</p>
          <p>Where did "£18 per error" come from? Ruth Adeyemi, the finance lead, added up the cost of a re-pick, a second courier trip, customer credits and admin time. Always write down how a number was worked out.</p>
        </div>
        <div class="lc-card">
          <h3>Check every source</h3>
          <p>Before you trust a piece of evidence, ask four questions:</p>
          <ul class="lc-list">
            <li><strong>Who made it, and do they gain from it?</strong> A vendor brochure that says "cuts errors by up to 80%" is marketing. "Up to" means the best case, not the usual case.</li>
            <li><strong>When?</strong> Last year's prices or an old version of a product may not apply now.</li>
            <li><strong>How was it measured?</strong> "Errors" might mean wrong items, or wrong items plus late orders. Make sure you compare the same thing.</li>
            <li><strong>Does it agree with other evidence?</strong> If the data and the people disagree, dig deeper. Do not just pick the one you like.</li>
          </ul>
          <p>Treat AI answers as claims, not evidence. If an AI says "most warehouses see payback in six months", ask: what is the source? Usually there is none you can check. Leave it out.</p>
          <p>Be fair when you gather people's input. Ask a mix of people: day and night shift, new and experienced staff. Ask open questions, such as "What slows you down most?" Do not ask "Would a new system help?", which suggests the answer.</p>
        </div>
        <div class="lc-card">
          <h3>Missing information, and how AI helps</h3>
          <p>You will never have all the facts. For each gap, decide: is it worth the time to fill it? Fill gaps that could change your choice. Accept gaps that would not.</p>
          <p>James's evidence log has a "missing" list:</p>
          <ul class="lc-list">
            <li>How long will each vendor really take to set up? Ask their reference customers. This could change the choice.</li>
            <li>Will the vendor raise prices after year 2? Ask for it in writing. This could change the choice.</li>
            <li>What colour are the new scanners? Not important. Skip it.</li>
          </ul>
          <p>AI can help you gather and organise evidence. It should not create the evidence.</p>
          <pre><code>Here are anonymised notes from 12 picker interviews. [paste notes]
        1. Group the comments into themes. Count how many people
           mentioned each theme.
        2. Quote short examples for each theme, word for word.
        3. List questions these notes do not answer.
        Do not add anything that is not in the notes.</code></pre>
          <p>Remove names and personal details from interview notes before you paste them. Use a company-approved AI tool. Then check the AI's counts against the notes yourself.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: how strong is this evidence?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each piece of made-up evidence that James collected.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="solid" data-label="Solid: use it"></div>
              <div data-sorter-target="bucket" data-bucket="check" data-label="Check before use"></div>
              <div data-sorter-target="bucket" data-bucket="opinion" data-label="Opinion, not evidence"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="solid" data-why="It comes from your own system, covers a full year, and the method is known.">Old system report: 6,240 picking errors out of 520,000 orders last year.</li>
              <li data-bucket="check" data-why="A seller's best-case claim. Ask for their typical results and check with reference customers.">Vendor brochure: "Cuts picking errors by up to 80%."</li>
              <li data-bucket="check" data-why="AI gave no source you can check. Treat it as a guess until you find real evidence.">AI answer: "Most UK warehouses see payback in six months."</li>
              <li data-bucket="solid" data-why="Direct reports from many people who do the work, gathered with open questions.">9 of 12 pickers say the old scanners freeze in the cold store.</li>
              <li data-bucket="opinion" data-why="A belief with no data behind it. Note it, then look for facts.">A board member says, "Cloud systems are always cheaper."</li>
              <li data-bucket="check" data-why="Useful, but one customer is a small sample, and the vendor chose who you call. Ask for a second reference.">One reference customer, picked by the vendor, says setup was "smooth".</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to plan the evidence you need for a decision. Then you collect and check it.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a careful business analyst. Use simple English.

        My decision: [which new warehouse system to choose for our London warehouse].
        Goals: [cut picking errors from 1.2% to 0.6%; cut overtime by 30%; go live before 30 June next year].
        Evidence I already have: [last year's error count and overtime cost; 3 vendor quotes].

        Please make an evidence plan as a table with these columns:
        Evidence needed | Why it matters | Where to get it (data, people or outside) | How to check it | Could it change the decision? (yes or no)

        Include at least 8 rows. Include evidence from staff who do the work, not only managers.
        Then list 5 open questions I can ask staff in interviews. They must not suggest an answer.
        Finally, list 3 claims I should NOT trust without proof, such as vendor "up to" figures.

        Do not invent numbers, sources or vendor facts.</pre>
            <ul class="ai-try-checks">
              <li>The plan uses all three kinds of evidence: data, people and outside sources.</li>
              <li>Each row says how to check the evidence, not just where to find it.</li>
              <li>The interview questions are open and do not lead people to an answer.</li>
              <li>No invented numbers or sources.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Every fact in a decision needs a source you can name. Collect data, people's input and outside sources, check each one, and write down what is still missing. AI can organise evidence, but it cannot be the evidence.
        </div>
      HTML
      starter_code: nil
    },
    5 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mgmt">Management</div>
          <h1 class="lc-title">Generating Options</h1>
        </div>
        <p class="lc-lead">You can only choose from the options you have on the table. Many teams compare just two options, or only ask "yes or no?". In this lesson you will learn to spot false choices and widen your options. You will use AI to brainstorm, then screen the list against your goals and limits. You will see James Okafor grow a two-option choice into a list of real options for Northbridge Logistics.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 340" role="img" aria-label="Left: a narrow yes or no choice, buy WareFlow Cloud, yes or no. An arrow leads to the right: a wider set of eight options. Keep the old system as the baseline, StockPilot, WareFlow Cloud, Crateline WMS, pilot one zone first, quick fixes now, outsource to a partner, and a mix of quick fixes plus a new system.">
            <defs><marker id="dm5a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="135" y="28" font-weight="700" fill="#9b99b8">Narrow: yes or no?</text>
              <rect x="20" y="50" width="230" height="56" rx="10" fill="#1f1f44" stroke="#9b99b8" stroke-dasharray="5 4"/>
              <text x="135" y="83">"Buy WareFlow Cloud?"</text>
              <rect x="20" y="130" width="105" height="40" rx="8" fill="#1f1f44" stroke="#9b99b8"/>
              <text x="72" y="155">Yes</text>
              <rect x="145" y="130" width="105" height="40" rx="8" fill="#1f1f44" stroke="#9b99b8"/>
              <text x="197" y="155">No</text>
              <text x="135" y="204" font-size="12" fill="#9b99b8">Only two paths.</text>
              <text x="135" y="224" font-size="12" fill="#9b99b8">Better ideas stay hidden.</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#dm5a)">
                <line x1="258" y1="170" x2="298" y2="170"/>
              </g>
              <text x="520" y="28" font-weight="700" fill="#fcd34d">Wider: real options</text>
              <rect x="305" y="44" width="205" height="56" rx="8" fill="#1f1f44" stroke="#9b99b8"/>
              <text x="407" y="68">Keep old system</text>
              <text x="407" y="88" font-size="11" fill="#9b99b8">the baseline</text>
              <rect x="530" y="44" width="210" height="56" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="635" y="77">StockPilot</text>
              <rect x="305" y="112" width="205" height="56" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="407" y="145">WareFlow Cloud</text>
              <rect x="530" y="112" width="210" height="56" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="635" y="145">Crateline WMS</text>
              <rect x="305" y="180" width="205" height="56" rx="8" fill="#1f1f44" stroke="#10b981"/>
              <text x="407" y="213">Pilot one zone first</text>
              <rect x="530" y="180" width="210" height="56" rx="8" fill="#1f1f44" stroke="#10b981"/>
              <text x="635" y="213">Quick fixes now</text>
              <rect x="305" y="248" width="205" height="56" rx="8" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="407" y="281">Outsource to a partner</text>
              <rect x="530" y="248" width="210" height="56" rx="8" fill="#27274e" stroke="#f59e0b" stroke-width="2"/>
              <text x="635" y="281">Mix: fixes + new system</text>
              <text x="522" y="328" font-size="11" fill="#9b99b8">Blue: vendors. Green: safer ways to start. Amber: combined.</text>
            </g>
          </svg>
          <figcaption>A yes-or-no question hides options. A wider list includes the baseline, several vendors, safer ways to start and combined ideas.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Spot the false choice</h3>
          <p>A <strong>false choice</strong> is when a decision looks like it has only two options, but more exist. Watch for these signs:</p>
          <ul class="lc-list">
            <li><strong>Yes or no questions.</strong> "Should we buy WareFlow Cloud?" hides every other system.</li>
            <li><strong>This or that.</strong> "Hire a new person or work overtime" hides training, automation and changing the work.</li>
            <li><strong>The first idea wins.</strong> A salesperson's demo becomes the default before anyone looks around.</li>
          </ul>
          <p>At Northbridge, a WareFlow Cloud salesperson gave a great demo. A director then asked: "So, do we buy WareFlow or not?" James saw the false choice. He asked for time to build a wider list.</p>
          <p>Always include the <strong>baseline</strong>: what happens if you do nothing or delay. At Northbridge, the old system can be extended month by month after 30 June 2027 at £4,000 a month. But errors and overtime would stay high. The baseline is the option every other option must beat.</p>
        </div>
        <div class="lc-card">
          <h3>Ways to widen your options</h3>
          <table class="lc-table">
            <thead><tr><th>Technique</th><th>Question to ask</th><th>Northbridge idea (made up)</th></tr></thead>
            <tbody>
              <tr><td><strong>Look around</strong></td><td>Who else has solved this problem?</td><td>Ask two other warehouses which systems they use. This adds StockPilot and Crateline WMS.</td></tr>
              <tr><td><strong>Remove the options</strong></td><td>If all current options were gone, what would we do?</td><td>Quick fixes: a barcode check at the packing desk and better lighting in the cold store.</td></tr>
              <tr><td><strong>Make it smaller</strong></td><td>Can we test before we commit?</td><td>Pilot the new system in the fast-moving zone first.</td></tr>
              <tr><td><strong>Combine</strong></td><td>Can we do two things together?</td><td>Quick fixes now, plus a new system by summer.</td></tr>
              <tr><td><strong>Think bigger</strong></td><td>What if we changed the whole approach?</td><td>Outsource the warehouse to a partner company.</td></tr>
            </tbody>
          </table>
          <p>Not every idea stays on the list. "Outsource the warehouse" is out of scope in the frame that Claire agreed. James notes it as a future idea and moves on. That is a choice, not an oversight.</p>
          <p>Next, <strong>screen</strong> the list: check each option against the constraints. Remove options that clearly break a hard limit.</p>
          <table class="lc-table">
            <thead><tr><th>Option</th><th>One-off cost</th><th>Setup time</th><th>Screen result</th></tr></thead>
            <tbody>
              <tr><td>Keep old system</td><td>£0</td><td>None</td><td>Keep as the baseline to compare against</td></tr>
              <tr><td>StockPilot</td><td>£120,000</td><td>4 months</td><td>Pass</td></tr>
              <tr><td>WareFlow Cloud</td><td>£60,000</td><td>2 months</td><td>Pass</td></tr>
              <tr><td>Crateline WMS</td><td>£185,000</td><td>7 months</td><td>Keep with a condition: a 4 January start means go-live in early August, so the old system must be extended for about 2 months</td></tr>
              <tr><td>Outsource to a partner</td><td>Unknown</td><td>Long</td><td>Out of scope this time</td></tr>
            </tbody>
          </table>
          <p>The "pilot" and "quick fixes" ideas are not separate systems. They are ways to carry out any option, so James keeps them for later planning. All vendors, prices and times here are made up.</p>
        </div>
        <div class="lc-card">
          <h3>Brainstorm with AI, then filter yourself</h3>
          <p>AI is very good at producing many options fast. It does not get tired or attached to one idea. Use it to go wide. Then use your own judgement to narrow down.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Should we buy WareFlow Cloud?</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Our problem: picking errors and overtime are too high,
        and our warehouse system support ends on 30 June 2027.
        Give me 12 different options to solve this.
        Use these groups: do nothing or delay, fix the process,
        new technology, people and training, test small first,
        combine options, and a bold option.
        Do not name real vendors or give prices.
        For each option, give one benefit and one risk.</code></pre>
          <p>Ask for groups so that the AI does not give you 12 versions of one idea. Ask it not to name vendors, because it may invent features. You find real vendors yourself.</p>
          <p>Brainstorming works best with people too. Hold a 20-minute session with Tom, Aisha and Ruth. Ask everyone to write ideas alone first. Then share. This stops the loudest voice from setting the list.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: from two options to many</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="warn" data-label="The false choice">After a great demo, a director asks: "So, do we buy WareFlow Cloud or not?"</li>
              <li data-kind="thought" data-label="James thinks">"That is a yes-or-no question. We have not looked at other systems, or at doing nothing."</li>
              <li data-kind="user" data-label="James asks AI">"Give me 12 options in 7 groups to cut picking errors and overtime. No vendor names or prices. One benefit and one risk each."</li>
              <li data-kind="answer" data-label="AI replies">The AI lists options such as quick fixes at the packing desk, a pilot zone, staff training, and a new system.</li>
              <li data-kind="tool" data-label="Team session">James runs a 20-minute brainstorm. Tom adds an idea: better lighting and warm gloves for the cold store.</li>
              <li data-kind="result" data-label="Screened list">Against the frame, James keeps the baseline, StockPilot, WareFlow Cloud and Crateline WMS (with a condition). Outsourcing is out of scope.</li>
              <li data-kind="check" data-label="James checks">He confirms Crateline's 7-month setup time with its reference customer. He shares the list with Claire before any scoring.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Widen the options for a decision you face. Then screen them against your own limits.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a creative but practical adviser to a manager. Use simple English.

        My decision question: [How do we cut picking errors and overtime in our London warehouse before our old system's support ends on 30 June next year?]
        Options we have now: [buy WareFlow Cloud, or keep the old system].
        Hard limits: [one-off budget up to £200,000; must go live before 30 June; data kept in the UK or EU].

        Please:
        1. Tell me if my current options look like a false choice, and why.
        2. Give 12 options in these groups: do nothing or delay, fix the process, new technology, people and training, test small first, combine options, one bold idea.
        3. For each option give one benefit, one risk and one fact I must check.
        4. Screen each option against my hard limits: pass, fail, or "pass with a condition". Explain any fail.
        5. Suggest the 4 to 6 options most worth comparing in detail.

        Use a table for steps 3 and 4. Do not name real vendors or give real prices.</pre>
            <ul class="ai-try-checks">
              <li>"Do nothing or delay" is included as a baseline.</li>
              <li>The options are really different, not small changes of one idea.</li>
              <li>The screen uses your real limits, and "fail" results have clear reasons.</li>
              <li>No real vendor names or invented prices.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> When you hear "yes or no?", stop and ask "what else could we do?". Go wide first with AI and your team, always include the do-nothing baseline, then screen against your limits.
        </div>
      HTML
      starter_code: nil
    },
    6 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mgmt">Management</div>
          <h1 class="lc-title">Decision Matrices</h1>
        </div>
        <p class="lc-lead">A decision matrix is a table that scores each option against the things that matter. It turns a long debate into a clear, shared picture. In this lesson you will choose criteria, set weights and score options. A spreadsheet will do the sums for you. You will also test how much the result depends on the weights. You will see James Okafor compare three made-up warehouse systems at Northbridge Logistics.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 380" role="img" aria-label="A decision matrix as a spreadsheet. Six criteria with weights: 3-year cost 25%, fit with operations 25%, setup time 15%, vendor reliability 15%, ease of use 10%, security and integration 10%. Scores from 1 to 5 for StockPilot, WareFlow Cloud and Crateline WMS. Weighted totals: StockPilot 3.60, WareFlow Cloud 3.75, Crateline WMS 3.45. Below, a must-have goal check: StockPilot meets all goals, WareFlow Cloud misses the 0.6% error goal, Crateline WMS misses the 30 June go-live.">
            <defs><marker id="dm6a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <rect x="20" y="20" width="720" height="34" fill="#27274e" stroke="#8b5cf6"/>
              <text x="32" y="42" font-weight="700">Criterion</text>
              <text x="300" y="42" font-weight="700" text-anchor="middle">Weight</text>
              <text x="400" y="42" font-weight="700" text-anchor="middle">StockPilot</text>
              <text x="520" y="42" font-weight="700" text-anchor="middle">WareFlow Cloud</text>
              <text x="660" y="42" font-weight="700" text-anchor="middle">Crateline WMS</text>
              <rect x="20" y="54" width="720" height="180" fill="#1f1f44" stroke="#3b3b6e"/>
              <g stroke="#3b3b6e">
                <line x1="20" y1="84" x2="740" y2="84"/>
                <line x1="20" y1="114" x2="740" y2="114"/>
                <line x1="20" y1="144" x2="740" y2="144"/>
                <line x1="20" y1="174" x2="740" y2="174"/>
                <line x1="20" y1="204" x2="740" y2="204"/>
                <line x1="260" y1="20" x2="260" y2="272"/>
                <line x1="340" y1="20" x2="340" y2="272"/>
                <line x1="460" y1="20" x2="460" y2="272"/>
                <line x1="580" y1="20" x2="580" y2="272"/>
              </g>
              <text x="32" y="74">3-year cost</text>
              <text x="32" y="104">Fit with operations</text>
              <text x="32" y="134">Setup time, disruption</text>
              <text x="32" y="164">Vendor reliability</text>
              <text x="32" y="194">Ease of use for staff</text>
              <text x="32" y="224">Security, integration</text>
              <g text-anchor="middle">
                <text x="300" y="74">25%</text><text x="400" y="74">3</text><text x="520" y="74">4</text><text x="660" y="74">2</text>
                <text x="300" y="104">25%</text><text x="400" y="104">4</text><text x="520" y="104">3</text><text x="660" y="104">5</text>
                <text x="300" y="134">15%</text><text x="400" y="134">3</text><text x="520" y="134">5</text><text x="660" y="134">2</text>
                <text x="300" y="164">15%</text><text x="400" y="164">4</text><text x="520" y="164">3</text><text x="660" y="164">4</text>
                <text x="300" y="194">10%</text><text x="400" y="194">4</text><text x="520" y="194">5</text><text x="660" y="194">3</text>
                <text x="300" y="224">10%</text><text x="400" y="224">4</text><text x="520" y="224">3</text><text x="660" y="224">5</text>
              </g>
              <rect x="20" y="234" width="720" height="38" fill="#27274e" stroke="#f59e0b" stroke-width="2"/>
              <text x="32" y="258" font-weight="700">Weighted total</text>
              <g text-anchor="middle" font-weight="700">
                <text x="300" y="258">100%</text>
                <text x="400" y="258">3.60</text>
                <text x="520" y="258" fill="#fcd34d">3.75</text>
                <text x="660" y="258">3.45</text>
              </g>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#dm6a)">
                <line x1="400" y1="276" x2="400" y2="300"/>
                <line x1="520" y1="276" x2="520" y2="300"/>
                <line x1="660" y1="276" x2="660" y2="300"/>
              </g>
              <text x="32" y="328" font-weight="700" fill="#c4b5fd">Must-have goal check</text>
              <text x="32" y="348" font-size="12" fill="#9b99b8">Do the goals pass?</text>
              <rect x="345" y="304" width="110" height="52" rx="8" fill="#1f1f44" stroke="#10b981" stroke-width="2"/>
              <text x="400" y="326" font-size="12" text-anchor="middle">Meets</text>
              <text x="400" y="344" font-size="12" text-anchor="middle">all goals</text>
              <rect x="465" y="304" width="110" height="52" rx="8" fill="#1f1f44" stroke="#ec4899"/>
              <text x="520" y="326" font-size="12" text-anchor="middle">Misses</text>
              <text x="520" y="344" font-size="12" text-anchor="middle">0.6% errors</text>
              <rect x="595" y="304" width="130" height="52" rx="8" fill="#1f1f44" stroke="#ec4899"/>
              <text x="660" y="326" font-size="12" text-anchor="middle">Misses</text>
              <text x="660" y="344" font-size="12" text-anchor="middle">30 June go-live</text>
            </g>
          </svg>
          <figcaption>The matrix gives each option a weighted total. A separate must-have goal check shows what the totals can hide. All vendors and numbers are made up.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Criteria, weights and scores</h3>
          <p>A decision matrix has three parts:</p>
          <ul class="lc-list">
            <li><strong>Criteria</strong>: the things you judge each option on, such as cost or ease of use. Take them from your goals and constraints.</li>
            <li><strong>Weights</strong>: how much each criterion matters, as a percentage. All the weights must add up to 100%.</li>
            <li><strong>Scores</strong>: how well each option does on each criterion. Here, 1 is poor and 5 is best.</li>
          </ul>
          <p>Follow four rules to keep the matrix fair:</p>
          <ol class="lc-list">
            <li><strong>Must-haves are pass-or-fail checks, not criteria.</strong> Check them first. At Northbridge, data must stay in the UK or EU. All three vendors pass, so this is not scored.</li>
            <li><strong>Do not count one thing twice.</strong> If "price" and "value for money" are both criteria, cost gets double weight.</li>
            <li><strong>Agree the weights before anyone scores.</strong> If you set weights after scoring, people tilt them toward their favourite.</li>
            <li><strong>Write a scoring guide.</strong> Say what a 1, 3 and 5 mean for each criterion. Then two people give the same facts the same score.</li>
          </ol>
          <p>James wrote these scoring guides with Ruth Adeyemi, the finance lead. The figures come from the vendors' written quotes.</p>
          <table class="lc-table">
            <thead><tr><th>Score</th><th>3-year cost (one-off plus 3 yearly fees)</th><th>Setup time</th></tr></thead>
            <tbody>
              <tr><td>5</td><td>Under £220,000</td><td>2 months or less</td></tr>
              <tr><td>4</td><td>£220,000 to £239,999</td><td>3 months</td></tr>
              <tr><td>3</td><td>£240,000 to £259,999</td><td>4 months</td></tr>
              <tr><td>2</td><td>£260,000 to £279,999</td><td>5 to 7 months, needs the old system extended</td></tr>
              <tr><td>1</td><td>£280,000 or more</td><td>More than 7 months</td></tr>
            </tbody>
          </table>
          <p>So WareFlow Cloud (£234,000, 2 months) scores 4 and 5. StockPilot (£246,000, 4 months) scores 3 and 3. Crateline WMS (£275,000, 7 months) scores 2 and 2.</p>
        </div>
        <div class="lc-card">
          <h3>Let the spreadsheet do the sums</h3>
          <p>A <strong>weighted total</strong> multiplies each score by its weight, then adds the results. Here is StockPilot by hand:</p>
          <pre><code>0.25 x 3 + 0.25 x 4 + 0.15 x 3 + 0.15 x 4 + 0.10 x 4 + 0.10 x 4
        = 0.75 + 1.00 + 0.45 + 0.60 + 0.40 + 0.40
        = 3.60</code></pre>
          <p>Do not do this by hand for every option. Put it in Excel or Google Sheets. James uses this layout:</p>
          <table class="lc-table">
            <thead><tr><th>Cell</th><th>What goes there</th></tr></thead>
            <tbody>
              <tr><td>Row 1</td><td>Headers: A1 Criterion, B1 Weight, C1 StockPilot, D1 WareFlow Cloud, E1 Crateline WMS</td></tr>
              <tr><td>A2:A7</td><td>The six criteria</td></tr>
              <tr><td>B2:B7</td><td>The weights, formatted as percentages (25%, 25%, 15%, 15%, 10%, 10%)</td></tr>
              <tr><td>C2:E7</td><td>The scores from 1 to 5</td></tr>
            </tbody>
          </table>
          <p>Then add three formulas:</p>
          <pre><code>B8:  =SUM(B2:B7)                     shows 100%
        C8:  =SUMPRODUCT($B$2:$B$7,C2:C7)    shows 3.60
        C9:  =RANK(C8,$C$8:$E$8)             shows 2</code></pre>
          <p>Copy C8 and C9 across to columns D and E. D8 shows 3.75 and E8 shows 3.45. The ranks are 2, 1 and 3.</p>
          <ul class="lc-list">
            <li><code>SUMPRODUCT</code> multiplies each weight by its score and adds them all up.</li>
            <li>The <code>$</code> signs fix the weight cells, so they do not move when you copy the formula.</li>
            <li><code>B8</code> is a safety check. If it does not show 100%, fix the weights first.</li>
          </ul>
          <p>WareFlow Cloud comes first on 3.75. But the gap to StockPilot is only 0.15. The scores are the team's judgements, not measurements. A small gap like this needs a closer look.</p>
        </div>
        <div class="lc-card">
          <h3>Test the result: sensitivity and must-have goal checks</h3>
          <p>A <strong>sensitivity check</strong> means changing the weights a little to see if the winner changes. If it does, the result is fragile. Then the discussion matters more than the numbers.</p>
          <p>Tom Hughes, the night-shift supervisor, and Aisha Rahman, the IT lead, said fit with operations matters more than cost. James tried their weights in a copy of the sheet:</p>
          <table class="lc-table">
            <thead><tr><th>Weights</th><th>StockPilot</th><th>WareFlow Cloud</th><th>Crateline WMS</th></tr></thead>
            <tbody>
              <tr><td>Agreed: cost 25%, fit 25%, setup 15%, vendor 15%, ease 10%, security 10%</td><td>3.60</td><td><strong>3.75</strong></td><td>3.45</td></tr>
              <tr><td>"Fit first": cost 15%, fit 35%, setup 10%, vendor 15%, ease 15%, security 10%</td><td>3.75</td><td>3.65</td><td><strong>3.80</strong></td></tr>
            </tbody>
          </table>
          <p>The ranking turns upside down. So the matrix alone cannot pick the winner here. All three options are close.</p>
          <p>Next, James ran a <strong>must-have goal check</strong>: does each option meet the goals from the decision frame? A matrix adds everything together, so a big miss on one goal can hide behind good scores elsewhere.</p>
          <ul class="lc-list">
            <li><strong>WareFlow Cloud</strong> expects a 0.7% error rate. The goal is 0.6% or lower. It misses.</li>
            <li><strong>Crateline WMS</strong> needs 7 months. Starting on 4 January 2027, it goes live in early August. The goal is before 30 June 2027. It misses.</li>
            <li><strong>StockPilot</strong> expects 0.5% errors, a 40% overtime cut and go-live in early May. It meets every must-have goal.</li>
          </ul>
          <p>James's draft leaning is now StockPilot: second in the agreed matrix, but the only option that meets every must-have goal. Claire Bennett, the managing director, still makes the final call. The matrix helped the team see the trade-offs. It did not make the decision for them.</p>
        </div>
        <div class="lc-card">
          <h3>How AI helps, and what it must not do</h3>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Make a decision matrix and tell me which warehouse system wins.</code></pre>
          <p>The AI will invent criteria, weights and scores. Its "winner" means nothing.</p>
          <p><strong>Better prompt:</strong></p>
          <pre><code>I am comparing 3 warehouse systems. Our goals and limits are below.
        [paste goals, limits and the facts from each written quote]
        1. Suggest 5 to 7 criteria. Do not count one thing twice.
        2. Say which items are hard limits (pass or fail), not criteria.
        3. Suggest weights that add up to 100%, with a reason for each.
        4. Write a scoring guide: what 1, 3 and 5 mean for each criterion.
        Do not score the options. My team will do that.</code></pre>
          <p>Let people do the scoring. Ask each person to score alone first. Then discuss the scores that differ by 2 or more. Let the spreadsheet do the maths. AI can make arithmetic mistakes, and a formula is easy to check.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: build a matrix in the right order</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put James's steps for building a fair decision matrix in order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">List criteria from the goals and constraints in the decision frame.</li>
              <li data-order="2">Move hard limits, such as "data kept in the UK or EU", into a must-have (pass or fail) check.</li>
              <li data-order="3">Agree weights that add up to 100%, before anyone scores.</li>
              <li data-order="4">Write a scoring guide that says what 1, 3 and 5 mean.</li>
              <li data-order="5">Each person scores alone, then the team discusses big differences.</li>
              <li data-order="6">Let SUMPRODUCT work out the weighted totals.</li>
              <li data-order="7">Run a sensitivity check and a must-have goal check before you recommend.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to set up a fair decision matrix for your own choice. You keep the scoring for your team.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a decision analyst helping a manager. Use simple English.

        My decision: [choose one of 3 warehouse systems for our London warehouse].
        Options: [StockPilot, WareFlow Cloud, Crateline WMS (made-up names)].
        Goals: [cut picking errors from 1.2% to 0.6% or lower; cut overtime by 30%; go live before 30 June].
        Hard limits: [one-off budget up to £200,000; data kept in the UK or EU].

        Please:
        1. Separate the hard limits (pass or fail) from the criteria to score.
        2. Suggest 5 to 7 criteria with no double counting.
        3. Suggest weights that add up to 100%, with one reason each.
        4. Write a scoring guide for each criterion: what 1, 3 and 5 mean.
        5. Give a spreadsheet layout (which cells hold what) and the SUMPRODUCT formula for the weighted total.
        6. Suggest one other set of weights for a sensitivity check.

        Do not score the options and do not invent facts about them. Remind me to run a must-have goal check against the goals as well.</pre>
            <ul class="ai-try-checks">
              <li>Hard limits are kept out of the scored criteria.</li>
              <li>The weights add up to exactly 100%.</li>
              <li>Each scoring guide is clear enough for two people to give the same score.</li>
              <li>The SUMPRODUCT formula uses $ signs on the weight cells.</li>
              <li>The AI did not score the options itself.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A decision matrix makes your reasons visible, but it does not make the decision. Agree the weights before scoring, let the spreadsheet do the sums, and always run a sensitivity check and a must-have goal check. If small weight changes flip the winner, talk it through.
        </div>
      HTML
      starter_code: nil
    },
    7 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mgmt">Management</div>
          <h1 class="lc-title">Costs, Benefits and Simple ROI</h1>
        </div>
        <p class="lc-lead">Most big decisions come down to money at some point. Your finance team will ask: how much does it cost, what do we get back, and when? In this lesson you will learn three simple measures: payback, ROI and break-even. You will work through real sums for the Northbridge Logistics warehouse system. You will set them up in a spreadsheet and use AI to check your method, not to invent numbers.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 390" role="img" aria-label="A line chart of money over 36 months after go-live. Each system starts below zero by its one-off cost and climbs as savings arrive. WareFlow Cloud starts at minus 60,000 pounds and pays back in about 12.9 months, ending at plus 106,800 pounds. StockPilot starts at minus 120,000 pounds, pays back in about 14.4 months and ends at plus 179,760 pounds. Crateline WMS starts at minus 185,000 pounds, pays back in about 17.0 months and ends at plus 207,640 pounds.">
            <g font-family="inherit" font-size="12" fill="#e2e0f0">
              <line x1="80" y1="40" x2="80" y2="335" stroke="#3b3b6e"/>
              <line x1="80" y1="197" x2="700" y2="197" stroke="#9b99b8" stroke-dasharray="5 4"/>
              <text x="72" y="201" text-anchor="end" fill="#9b99b8">£0</text>
              <text x="72" y="61" text-anchor="end" fill="#9b99b8">+£200k</text>
              <text x="72" y="306" text-anchor="end" fill="#9b99b8">-£150k</text>
              <line x1="76" y1="57" x2="84" y2="57" stroke="#9b99b8"/>
              <line x1="76" y1="302" x2="84" y2="302" stroke="#9b99b8"/>
              <line x1="80" y1="335" x2="700" y2="335" stroke="#3b3b6e"/>
              <g text-anchor="middle" fill="#9b99b8">
                <text x="80" y="352">0</text>
                <text x="287" y="352">12</text>
                <text x="493" y="352">24</text>
                <text x="700" y="352">36</text>
                <text x="390" y="376">Months after go-live</text>
              </g>
              <line x1="80" y1="239" x2="700" y2="122" stroke="#10b981" stroke-width="2.5"/>
              <line x1="80" y1="281" x2="700" y2="71" stroke="#3b82f6" stroke-width="2.5"/>
              <line x1="80" y1="327" x2="700" y2="52" stroke="#f59e0b" stroke-width="2.5"/>
              <circle cx="302" cy="197" r="5" fill="#10b981"/>
              <circle cx="328" cy="197" r="5" fill="#3b82f6"/>
              <circle cx="373" cy="197" r="5" fill="#f59e0b"/>
              <line x1="100" y1="36" x2="124" y2="36" stroke="#3b82f6" stroke-width="3"/>
              <text x="132" y="40">StockPilot: payback 14.4 months, 3 years +£179,760</text>
              <line x1="100" y1="60" x2="124" y2="60" stroke="#10b981" stroke-width="3"/>
              <text x="132" y="64">WareFlow Cloud: payback 12.9 months, 3 years +£106,800</text>
              <line x1="100" y1="84" x2="124" y2="84" stroke="#f59e0b" stroke-width="3"/>
              <text x="132" y="88">Crateline WMS: payback 17.0 months, 3 years +£207,640</text>
              <text x="560" y="226" fill="#9b99b8">Dots: payback points</text>
            </g>
          </svg>
          <figcaption>Each line starts below zero by the one-off cost, then climbs with the net yearly saving. Where it crosses £0 is the payback point. Made-up numbers, simple model.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>One-off costs, yearly costs and benefits</h3>
          <p>Sort every money item into one of three groups:</p>
          <ul class="lc-list">
            <li><strong>One-off cost</strong>: you pay it once, at the start. Example: setup, new scanners and training.</li>
            <li><strong>Yearly cost</strong>: you pay it every year. Example: the new system's licence and support fee.</li>
            <li><strong>Yearly benefit</strong>: money you save or earn every year because of the change.</li>
          </ul>
          <p>First write down the <strong>baseline</strong>: what you spend today. Ruth Adeyemi, the finance lead, took these from last year's accounts (made-up numbers):</p>
          <table class="lc-table">
            <thead><tr><th>Item today</th><th>Number</th></tr></thead>
            <tbody>
              <tr><td>Orders a year</td><td>520,000</td></tr>
              <tr><td>Picking errors (1.2%)</td><td>6,240 a year, at £18 each = £112,320</td></tr>
              <tr><td>Overtime</td><td>£96,000 a year</td></tr>
              <tr><td>Old system licence and support</td><td>£38,000 a year</td></tr>
            </tbody>
          </table>
          <p>Now the StockPilot benefits. Its expected error rate is 0.5%. That is 2,600 errors a year, so 3,640 fewer. It expects to cut overtime by 40%. And the old licence is no longer needed.</p>
          <ul class="lc-list">
            <li>Error saving: 3,640 x £18 = £65,520</li>
            <li>Overtime saving: 40% of £96,000 = £38,400</li>
            <li>Old licence removed: £38,000</li>
            <li><strong>Gross yearly saving</strong> (before the new fee): £141,920</li>
            <li><strong>Net yearly saving</strong> (after the new £42,000 fee): £141,920 - £42,000 = £99,920</li>
          </ul>
          <p>Some benefits are hard to turn into money. Examples are a live stock view for customers, and new pickers who are productive in 2 days, not 5. List them in words. Do not invent a money value just to make the sums bigger.</p>
        </div>
        <div class="lc-card">
          <h3>Payback, ROI and break-even</h3>
          <table class="lc-table">
            <thead><tr><th>Measure</th><th>Plain meaning</th><th>StockPilot sum</th></tr></thead>
            <tbody>
              <tr><td><strong>Payback</strong></td><td>How long until the savings cover the one-off cost.</td><td>£120,000 / £99,920 = 1.20 years, about 14.4 months</td></tr>
              <tr><td><strong>3-year net benefit</strong></td><td>Total net savings over 3 years, minus the one-off cost.</td><td>3 x £99,920 - £120,000 = £179,760</td></tr>
              <tr><td><strong>3-year ROI</strong></td><td>Return on investment: the net benefit as a percentage of the one-off cost.</td><td>£179,760 / £120,000 = 149.8%</td></tr>
              <tr><td><strong>Break-even saving</strong></td><td>The smallest net yearly saving that still pays back within 3 years.</td><td>£120,000 / 3 = £40,000 a year</td></tr>
            </tbody>
          </table>
          <p>Break-even tells you how much room for error you have. StockPilot expects £99,920 a year but only needs £40,000. So the savings could fall by about 60% and it would still break even in 3 years.</p>
          <p>Here is James's spreadsheet for StockPilot. Inputs go in B1 to B9. Formulas go below them.</p>
          <pre><code>B1  Orders a year            520000
        B2  Error rate now           1.2%
        B3  New error rate           0.5%
        B4  Cost per error           18
        B5  Overtime now             96000
        B6  Overtime cut             40%
        B7  Old licence a year       38000
        B8  New yearly fee           42000
        B9  One-off cost             120000
        B10 Error saving       =(B1*B2-B1*B3)*B4    65,520
        B11 Overtime saving    =B5*B6               38,400
        B12 Gross saving       =B10+B11+B7          141,920
        B13 Net yearly saving  =B12-B8              99,920
        B14 Payback (years)    =B9/B13              1.20
        B15 Payback (months)   =B14*12              14.4
        B16 3-year net benefit =3*B13-B9            179,760
        B17 3-year ROI         =B16/B9              149.8%
        B18 3-year total cost  =B9+3*B8             246,000</code></pre>
          <p>Copy column B into columns C and D. Change only the inputs for WareFlow Cloud and Crateline WMS. The formulas stay the same, so the comparison is fair.</p>
        </div>
        <div class="lc-card">
          <h3>Compare all three, and look for hidden costs</h3>
          <table class="lc-table">
            <thead><tr><th></th><th>StockPilot</th><th>WareFlow Cloud</th><th>Crateline WMS</th></tr></thead>
            <tbody>
              <tr><td>One-off cost</td><td>£120,000</td><td>£60,000</td><td>£185,000</td></tr>
              <tr><td>Net yearly saving</td><td>£99,920</td><td>£55,600</td><td>£130,880</td></tr>
              <tr><td>Payback</td><td>14.4 months</td><td><strong>12.9 months</strong></td><td>17.0 months</td></tr>
              <tr><td>3-year net benefit</td><td>£179,760</td><td>£106,800</td><td><strong>£207,640</strong></td></tr>
              <tr><td>3-year ROI</td><td>149.8%</td><td><strong>178.0%</strong></td><td>112.2%</td></tr>
              <tr><td>3-year total cost</td><td>£246,000</td><td><strong>£234,000</strong></td><td>£275,000</td></tr>
            </tbody>
          </table>
          <p>Each measure picks a different winner. WareFlow Cloud has the fastest payback and the best ROI percentage. Crateline WMS brings the most money over 3 years. StockPilot sits in the middle on every line. So decide which measure matters most before you look for a winner.</p>
          <p>Then look for costs the simple model leaves out:</p>
          <ul class="lc-list">
            <li>Crateline goes live in early August 2027. The old system must run for about 2 extra months at £4,000 a month. That is about £8,000 more.</li>
            <li>Cost of delay: each month of late go-live loses about one month of net saving. For StockPilot that is about £8,327 a month.</li>
            <li>Staff time for training and testing, and a dip in speed in the first weeks.</li>
          </ul>
          <p>This model ignores tax, inflation and the time value of money. Ruth may use a fuller method, such as net present value (NPV: future money counted as worth less than money today). Simple sums are a good start, but finance checks them.</p>
        </div>
        <div class="lc-card">
          <h3>Use AI for the method, not the numbers</h3>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>What is the ROI of a new warehouse management system?</code></pre>
          <p>The AI does not know your costs. It may give a confident "typical ROI" with no source. Leave that out of your report.</p>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Here are my inputs from written quotes and our accounts. [paste inputs]
        1. Set up a spreadsheet: one input per cell, then formulas.
        2. Work out net yearly saving, payback, 3-year ROI and break-even.
        3. Show every step of each sum.
        4. List costs and benefits I may have missed.
        Use only my numbers. Do not add any of your own.</code></pre>
          <p>Always check AI sums in the spreadsheet. In James's test, the AI first wrote payback as £120,000 / £141,920 = 0.85 years. It used the gross saving and forgot the new yearly fee. The right answer is 1.20 years. Ruth checks the final numbers before anything goes to Claire.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: sort the money items</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each made-up item from the Northbridge sums into the right group.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="oneoff" data-label="One-off cost"></div>
              <div data-sorter-target="bucket" data-bucket="yearly" data-label="Yearly cost"></div>
              <div data-sorter-target="bucket" data-bucket="benefit" data-label="Yearly benefit"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="oneoff" data-why="Setup, scanners and training are paid once, at the start of the project.">StockPilot setup, new scanners and training: £120,000</li>
              <li data-bucket="yearly" data-why="A licence and support fee is paid every year the system runs.">StockPilot licence and support fee: £42,000</li>
              <li data-bucket="benefit" data-why="Once the new system is live, Northbridge stops paying for the old one every year.">Old system licence no longer needed: £38,000</li>
              <li data-bucket="benefit" data-why="3,640 fewer errors x £18 is a saving that repeats every year.">Fewer picking errors: £65,520</li>
              <li data-bucket="oneoff" data-why="It is paid once, to cover the gap until Crateline goes live in August.">About 2 extra months of the old system for Crateline: about £8,000</li>
              <li data-bucket="benefit" data-why="A 40% cut in a yearly overtime bill of £96,000 saves money every year.">Lower overtime: £38,400</li>
              <li data-bucket="yearly" data-why="It is the new system's fee, paid every year. It reduces the net saving.">WareFlow Cloud yearly fee: £58,000</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to build a payback, ROI and break-even sheet from your own numbers. Then check every result in a spreadsheet.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a careful finance assistant for a manager. Use simple English.

        I want to check the money case for: [a new warehouse system called StockPilot (made up)].
        One-off cost: [£120,000]
        New yearly fee: [£42,000]
        Yearly savings: [fewer errors £65,520; less overtime £38,400; old licence removed £38,000]
        Time frame: [3 years]

        Please:
        1. Work out the net yearly saving, payback in years and months, the 3-year net benefit and the 3-year ROI. Show each step.
        2. Work out the break-even net yearly saving for payback within the time frame.
        3. Give a spreadsheet layout with one input per cell and the formulas.
        4. List 4 costs or benefits I may have missed, and say which could be put into money.
        5. Say what this simple model ignores, such as tax or inflation.

        Use only my numbers. Do not invent typical ROI figures. Round money to the nearest pound.</pre>
            <ul class="ai-try-checks">
              <li>Payback uses the net saving (after the new fee), not the gross saving.</li>
              <li>The sums match your own spreadsheet results.</li>
              <li>No "typical ROI" or industry figures were added.</li>
              <li>The missed costs are realistic for your situation.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Payback, ROI and break-even each answer a different question, and each can crown a different winner. Use net savings, list hidden costs, keep unpriced benefits in words, and let finance check the sums. AI can set up the method, but every number must come from you.
        </div>
      HTML
      starter_code: nil
    },
    8 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mgmt">Management</div>
          <h1 class="lc-title">Risk and Uncertainty</h1>
        </div>
        <p class="lc-lead">Every option has things that could go wrong. Every forecast could be too high or too low. In this lesson you will learn to rate risks by likelihood and impact, and to keep a simple risk register. You will build best, likely and worst cases. You will also learn expected value in simple words. You will see James Okafor test the Northbridge Logistics options, with AI to help list risks.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 330" role="img" aria-label="Left: a five by five risk grid. Impact goes across, likelihood goes up. Cells are green for low scores, amber for medium and pink for high. Six numbered risks are placed on it. Right: the risk register list with scores. 1, StockPilot scanners late, 3 times 4 equals 12. 2, data moved wrongly, 3 times 5 equals 15. 3, staff not trained, 2 times 4 equals 8. 4, WareFlow price rise, 4 times 2 equals 8. 5, Crateline slips into peak, 2 times 5 equals 10. 6, Crateline small support team, 3 times 3 equals 9. Below: StockPilot net yearly saving, worst 52,640 pounds, likely 99,920 pounds, best 118,880 pounds.">
            <g font-family="inherit" font-size="12" fill="#e2e0f0">
              <rect x="70" y="200" width="40" height="40" fill="#14342b" stroke="#2e2e5c"/>
              <rect x="110" y="200" width="40" height="40" fill="#14342b" stroke="#2e2e5c"/>
              <rect x="150" y="200" width="40" height="40" fill="#14342b" stroke="#2e2e5c"/>
              <rect x="190" y="200" width="40" height="40" fill="#14342b" stroke="#2e2e5c"/>
              <rect x="230" y="200" width="40" height="40" fill="#14342b" stroke="#2e2e5c"/>
              <rect x="70" y="160" width="40" height="40" fill="#14342b" stroke="#2e2e5c"/>
              <rect x="110" y="160" width="40" height="40" fill="#14342b" stroke="#2e2e5c"/>
              <rect x="150" y="160" width="40" height="40" fill="#14342b" stroke="#2e2e5c"/>
              <rect x="190" y="160" width="40" height="40" fill="#3d3214" stroke="#2e2e5c"/>
              <rect x="230" y="160" width="40" height="40" fill="#3d3214" stroke="#2e2e5c"/>
              <rect x="70" y="120" width="40" height="40" fill="#14342b" stroke="#2e2e5c"/>
              <rect x="110" y="120" width="40" height="40" fill="#14342b" stroke="#2e2e5c"/>
              <rect x="150" y="120" width="40" height="40" fill="#3d3214" stroke="#2e2e5c"/>
              <rect x="190" y="120" width="40" height="40" fill="#3d3214" stroke="#2e2e5c"/>
              <rect x="230" y="120" width="40" height="40" fill="#4a1d33" stroke="#2e2e5c"/>
              <rect x="70" y="80" width="40" height="40" fill="#14342b" stroke="#2e2e5c"/>
              <rect x="110" y="80" width="40" height="40" fill="#3d3214" stroke="#2e2e5c"/>
              <rect x="150" y="80" width="40" height="40" fill="#3d3214" stroke="#2e2e5c"/>
              <rect x="190" y="80" width="40" height="40" fill="#4a1d33" stroke="#2e2e5c"/>
              <rect x="230" y="80" width="40" height="40" fill="#4a1d33" stroke="#2e2e5c"/>
              <rect x="70" y="40" width="40" height="40" fill="#14342b" stroke="#2e2e5c"/>
              <rect x="110" y="40" width="40" height="40" fill="#3d3214" stroke="#2e2e5c"/>
              <rect x="150" y="40" width="40" height="40" fill="#4a1d33" stroke="#2e2e5c"/>
              <rect x="190" y="40" width="40" height="40" fill="#4a1d33" stroke="#2e2e5c"/>
              <rect x="230" y="40" width="40" height="40" fill="#4a1d33" stroke="#2e2e5c"/>
              <g text-anchor="middle" fill="#9b99b8">
                <text x="90" y="256">1</text><text x="130" y="256">2</text><text x="170" y="256">3</text><text x="210" y="256">4</text><text x="250" y="256">5</text>
                <text x="170" y="278" font-weight="700" fill="#c4b5fd">Impact</text>
              </g>
              <g text-anchor="end" fill="#9b99b8">
                <text x="62" y="224">1</text><text x="62" y="184">2</text><text x="62" y="144">3</text><text x="62" y="104">4</text><text x="62" y="64">5</text>
              </g>
              <text x="32" y="140" font-weight="700" fill="#c4b5fd" text-anchor="middle" transform="rotate(-90 32 140)">Likelihood</text>
              <g font-weight="700" text-anchor="middle">
                <circle cx="210" cy="140" r="11" fill="#1f1f44" stroke="#e2e0f0"/><text x="210" y="144">1</text>
                <circle cx="250" cy="140" r="11" fill="#1f1f44" stroke="#e2e0f0"/><text x="250" y="144">2</text>
                <circle cx="210" cy="180" r="11" fill="#1f1f44" stroke="#e2e0f0"/><text x="210" y="184">3</text>
                <circle cx="130" cy="100" r="11" fill="#1f1f44" stroke="#e2e0f0"/><text x="130" y="104">4</text>
                <circle cx="250" cy="180" r="11" fill="#1f1f44" stroke="#e2e0f0"/><text x="250" y="184">5</text>
                <circle cx="170" cy="140" r="11" fill="#1f1f44" stroke="#e2e0f0"/><text x="170" y="144">6</text>
              </g>
              <rect x="74" y="296" width="12" height="12" fill="#14342b" stroke="#10b981"/><text x="92" y="306">Low 1-7</text>
              <rect x="152" y="296" width="12" height="12" fill="#3d3214" stroke="#f59e0b"/><text x="170" y="306">Medium 8-14</text>
              <rect x="258" y="296" width="12" height="12" fill="#4a1d33" stroke="#ec4899"/><text x="276" y="306">High 15-25</text>
              <text x="330" y="40" font-size="13" font-weight="700" fill="#c4b5fd">Risk register (made up)</text>
              <text x="330" y="70">1  StockPilot scanners arrive late</text><text x="736" y="70" text-anchor="end">3 x 4 = 12</text>
              <text x="330" y="96">2  Data moved wrongly at go-live</text><text x="736" y="96" text-anchor="end" fill="#f9a8d4">3 x 5 = 15</text>
              <text x="330" y="122">3  Staff not trained before go-live</text><text x="736" y="122" text-anchor="end">2 x 4 = 8</text>
              <text x="330" y="148">4  WareFlow price rise from year 3</text><text x="736" y="148" text-anchor="end">4 x 2 = 8</text>
              <text x="330" y="174">5  Crateline go-live slips into peak</text><text x="736" y="174" text-anchor="end">2 x 5 = 10</text>
              <text x="330" y="200">6  Crateline small support team</text><text x="736" y="200" text-anchor="end">3 x 3 = 9</text>
              <rect x="320" y="226" width="420" height="64" rx="10" fill="#27274e" stroke="#3b82f6"/>
              <text x="530" y="250" text-anchor="middle" font-weight="700">StockPilot net saving a year: three cases</text>
              <text x="530" y="276" text-anchor="middle">Worst £52,640 · Likely £99,920 · Best £118,880</text>
            </g>
          </svg>
          <figcaption>Rate each risk by likelihood and impact, from 1 to 5. Multiply them to get a score. Then test your forecast with a worst, likely and best case.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Rate risks: likelihood times impact</h3>
          <p>A <strong>risk</strong> is something that might happen and would hurt your goals. <strong>Uncertainty</strong> means you do not know the exact number, such as how much overtime will really fall.</p>
          <p>Rate each risk on two 1 to 5 scales:</p>
          <ul class="lc-list">
            <li><strong>Likelihood</strong>: how likely it is. 1 = very unlikely, 5 = almost certain.</li>
            <li><strong>Impact</strong>: how much harm it would do. 1 = small, 5 = very serious.</li>
          </ul>
          <p>Multiply them to get a <strong>risk score</strong> from 1 to 25. Keep the risks in a <strong>risk register</strong>: a list of risks, each with a score, an owner and an action. Many teams keep it in a RAID log (a list of Risks, Assumptions, Issues and Dependencies).</p>
          <table class="lc-table">
            <thead><tr><th>Risk (made up)</th><th>L</th><th>I</th><th>Score</th><th>Owner</th><th>Action</th></tr></thead>
            <tbody>
              <tr><td>StockPilot scanners arrive late</td><td>3</td><td>4</td><td>12 Medium</td><td>James</td><td>Put a delivery date in the contract.</td></tr>
              <tr><td>Stock data moved wrongly at go-live</td><td>3</td><td>5</td><td>15 High</td><td>Aisha</td><td>Test the data move twice before go-live.</td></tr>
              <tr><td>Staff not trained before go-live</td><td>2</td><td>4</td><td>8 Medium</td><td>Tom</td><td>Train both shifts. Name super-users.</td></tr>
              <tr><td>WareFlow raises its price from year 3</td><td>4</td><td>2</td><td>8 Medium</td><td>Ruth</td><td>Ask for a price cap in writing.</td></tr>
              <tr><td>Crateline go-live slips into peak season</td><td>2</td><td>5</td><td>10 Medium</td><td>James</td><td>Ask reference customers about delays.</td></tr>
              <tr><td>Crateline's small support team is slow</td><td>3</td><td>3</td><td>9 Medium</td><td>Aisha</td><td>Ask for response times in the contract.</td></tr>
            </tbody>
          </table>
          <p>In a spreadsheet, put likelihood in column C and impact in column D. Then use:</p>
          <pre><code>E2:  =C2*D2
        F2:  =IF(E2&gt;=15,"High",IF(E2&gt;=8,"Medium","Low"))</code></pre>
          <p>For the first row, E2 shows 12 and F2 shows "Medium". The ratings are judgements. Agree them with the people who know the work.</p>
        </div>
        <div class="lc-card">
          <h3>Best, likely and worst cases</h3>
          <p>A single forecast hides uncertainty. Make three versions instead. James asked: what if StockPilot works less well than the vendor expects?</p>
          <table class="lc-table">
            <thead><tr><th>Case</th><th>Error rate</th><th>Overtime cut</th><th>Net yearly saving</th><th>Payback</th><th>3-year net benefit</th></tr></thead>
            <tbody>
              <tr><td>Worst</td><td>0.8%</td><td>20%</td><td>£52,640</td><td>about 27.4 months</td><td>£37,920</td></tr>
              <tr><td>Likely</td><td>0.5%</td><td>40%</td><td>£99,920</td><td>about 14.4 months</td><td>£179,760</td></tr>
              <tr><td>Best</td><td>0.4%</td><td>50%</td><td>£118,880</td><td>about 12.1 months</td><td>£236,640</td></tr>
            </tbody>
          </table>
          <p>Worst case sum: 0.8% of 520,000 orders is 4,160 errors. That is 2,080 fewer than today, saving £37,440. Overtime saving is 20% of £96,000 = £19,200. Add the old licence (£38,000) and take off the new fee (£42,000). The net saving is £52,640.</p>
          <p>The key finding: even in the worst case, StockPilot pays back within 3 years. That makes the choice more robust. <strong>Robust</strong> means it still works when things go worse than planned.</p>
          <p>Ask one more question for each case: what would have to be true for this to happen? For the worst case, pickers might keep using paper lists. That points to a clear action: strong training.</p>
        </div>
        <div class="lc-card">
          <h3>Expected value in simple words</h3>
          <p><strong>Expected value</strong> is a weighted average of the possible results. You multiply each result by its chance, then add them up. It tells you the "average" cost of a risk over many similar decisions.</p>
          <p>Crateline WMS might be late. James and the team gave rough chances after talking to Crateline's reference customers:</p>
          <table class="lc-table">
            <thead><tr><th>Go-live</th><th>Chance</th><th>Extra months on the old system</th><th>Extra cost at £4,000 a month</th><th>Chance x cost</th></tr></thead>
            <tbody>
              <tr><td>Early August 2027</td><td>60%</td><td>2</td><td>£8,000</td><td>£4,800</td></tr>
              <tr><td>Early September 2027</td><td>30%</td><td>3</td><td>£12,000</td><td>£3,600</td></tr>
              <tr><td>Slips into peak, waits until late January 2028</td><td>10%</td><td>7</td><td>£28,000</td><td>£2,800</td></tr>
              <tr><td><strong>Expected extra cost</strong></td><td>100%</td><td></td><td></td><td><strong>£11,200</strong></td></tr>
            </tbody>
          </table>
          <p>Three warnings:</p>
          <ul class="lc-list">
            <li>You will never pay exactly £11,200. You will pay £8,000, £12,000 or £28,000.</li>
            <li>The chances are the team's best guesses, not facts. Write them down as guesses.</li>
            <li>Look at the worst case too. A late go-live during peak would also mean months of lost savings and unhappy customers. A small chance of a very bad result can matter more than the average.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>How AI helps with risk</h3>
          <p>AI is good at listing risks you forgot. It is poor at knowing how likely they are in your company.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>What is the chance that a warehouse system project fails?</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>We plan to replace our warehouse system. Go-live is planned for May.
        List 12 risks in these groups: people, technology, data, vendor,
        money and timing. For each, suggest one action to reduce it.
        Do not give likelihood numbers or statistics. My team will rate them.</code></pre>
        </div>
        <div class="lc-card">
          <h3>Activity: James builds a risk register with AI</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="James asks">"List 12 risks for replacing our warehouse system, in six groups. One action each. No likelihood numbers."</li>
              <li data-kind="answer" data-label="AI replies">The AI lists 12 risks. They include late hardware, errors when moving stock data, weak training and broken links to other systems.</li>
              <li data-kind="warn" data-label="Watch out">One line says "about 70% of these projects run late". It gives no source. James deletes the claim.</li>
              <li data-kind="tool" data-label="Spreadsheet">James puts the risks in a sheet. He adds likelihood and impact columns, and the score formula =C2*D2.</li>
              <li data-kind="check" data-label="Team rating">Aisha, Tom and Ruth rate each risk with him. Aisha moves "data moved wrongly" up to impact 5.</li>
              <li data-kind="result" data-label="Result">"Data moved wrongly" now scores 15, rated High. It gets an owner (Aisha) and an action: test the data move twice.</li>
              <li data-kind="thought" data-label="James thinks">"The AI found risks I missed. But the ratings and owners had to come from us."</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Build a first risk register and three cases for a decision you face. Then rate the risks with your team.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a practical risk adviser for a manager. Use simple English.

        My decision: [choose StockPilot, a made-up warehouse system, for our London warehouse].
        Plan: [4-month setup from January; go live in early May; busy season starts 1 October].
        Key forecast: [net yearly saving of £99,920 from fewer errors and less overtime].

        Please:
        1. List 10 risks in these groups: people, technology, data, vendor, money, timing.
        2. Make a risk register table: Risk | Likelihood (1-5) | Impact (1-5) | Score | Owner role | Action. Leave likelihood and impact blank for my team to fill in.
        3. Give the spreadsheet formulas for the score and a High (15+), Medium (8-14) or Low rating.
        4. Suggest what could make my forecast a worst case and a best case. Explain what would have to be true for each.
        5. Explain expected value in 3 simple sentences, with an example from my situation.

        Do not invent statistics or industry failure rates.</pre>
            <ul class="ai-try-checks">
              <li>The risks cover people and data, not only technology.</li>
              <li>Likelihood and impact are left for your team to rate.</li>
              <li>Each risk has an action you could really take.</li>
              <li>No made-up failure rates or statistics.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Do not trust a single forecast. Rate risks by likelihood and impact, give each one an owner and an action, and test your numbers with worst, likely and best cases. Expected value is a useful average, but always look at the worst case too.
        </div>
      HTML
      starter_code: nil
    },
    9 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mgmt">Management</div>
          <h1 class="lc-title">Thinking Biases</h1>
        </div>
        <p class="lc-lead">Smart people make poor decisions when their thinking takes shortcuts. These shortcuts are called biases. In this lesson you will learn four common ones: confirmation bias, anchoring, sunk cost and groupthink. You will also learn the new versions that AI tools can create or make worse. You will see the biases at work at Northbridge Logistics, and simple habits that guard against them.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 340" role="img" aria-label="Four rows. Each human bias on the left points to its AI version on the right. Confirmation bias, looking for proof you are right, becomes AI agreeing with a leading prompt. Anchoring, where the first number sticks, becomes the first AI estimate sticking. Sunk cost, keeping going because of past spend, becomes building on a long chat with a wrong early fact. Groupthink, where nobody challenges the group, becomes everyone asking the same AI and getting one view.">
            <defs><marker id="dm9a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <text x="160" y="24" font-weight="700" fill="#c4b5fd" text-anchor="middle">Human bias</text>
              <text x="550" y="24" font-weight="700" fill="#f9a8d4" text-anchor="middle">AI-made version</text>
              <rect x="20" y="40" width="280" height="62" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="36" y="66" font-weight="700">Confirmation bias</text>
              <text x="36" y="88" font-size="12" fill="#9b99b8">look for proof you are right</text>
              <rect x="360" y="40" width="380" height="62" rx="10" fill="#27274e" stroke="#ec4899"/>
              <text x="376" y="66" font-weight="700">AI agrees with you</text>
              <text x="376" y="88" font-size="12" fill="#9b99b8">a leading prompt gets the answer you hoped for</text>
              <rect x="20" y="114" width="280" height="62" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="36" y="140" font-weight="700">Anchoring</text>
              <text x="36" y="162" font-size="12" fill="#9b99b8">the first number sticks</text>
              <rect x="360" y="114" width="380" height="62" rx="10" fill="#27274e" stroke="#ec4899"/>
              <text x="376" y="140" font-weight="700">The first AI estimate sticks</text>
              <text x="376" y="162" font-size="12" fill="#9b99b8">an unsourced number shapes every later guess</text>
              <rect x="20" y="188" width="280" height="62" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="36" y="214" font-weight="700">Sunk cost</text>
              <text x="36" y="236" font-size="12" fill="#9b99b8">keep going because of past spend</text>
              <rect x="360" y="188" width="380" height="62" rx="10" fill="#27274e" stroke="#ec4899"/>
              <text x="376" y="214" font-weight="700">Building on a flawed long chat</text>
              <text x="376" y="236" font-size="12" fill="#9b99b8">hours of work rest on one wrong early fact</text>
              <rect x="20" y="262" width="280" height="62" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="36" y="288" font-weight="700">Groupthink</text>
              <text x="36" y="310" font-size="12" fill="#9b99b8">nobody challenges the group</text>
              <rect x="360" y="262" width="380" height="62" rx="10" fill="#27274e" stroke="#ec4899"/>
              <text x="376" y="288" font-weight="700">One AI, one view</text>
              <text x="376" y="310" font-size="12" fill="#9b99b8">everyone asks the same tool the same way</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#dm9a)">
                <line x1="304" y1="71" x2="354" y2="71"/>
                <line x1="304" y1="145" x2="354" y2="145"/>
                <line x1="304" y1="219" x2="354" y2="219"/>
                <line x1="304" y1="293" x2="354" y2="293"/>
              </g>
            </g>
          </svg>
          <figcaption>Each classic thinking bias has an AI-made version. AI can make old biases faster and harder to see.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Four biases that hurt decisions</h3>
          <p>A <strong>bias</strong> is a habit of thinking that pulls your judgement in one direction. Everyone has biases. You cannot switch them off, but you can build checks against them.</p>
          <table class="lc-table">
            <thead><tr><th>Bias</th><th>What it is</th><th>Northbridge example (made up)</th><th>A simple guard</th></tr></thead>
            <tbody>
              <tr><td><strong>Confirmation bias</strong></td><td>Looking for and trusting information that agrees with what you already think.</td><td>After the WareFlow Cloud demo, a director shared only the good online reviews.</td><td>Ask "What would change my mind?" Then look for that evidence.</td></tr>
              <tr><td><strong>Anchoring</strong></td><td>The first number you hear shapes every later judgement.</td><td>StockPilot's £120,000 was the first quote. Later, £60,000 felt "too cheap" before anyone checked what it included.</td><td>Compare like with like, for example 3-year total cost. Write your own estimate before you see quotes.</td></tr>
              <tr><td><strong>Sunk cost</strong></td><td>Keeping a choice because of money or time already spent, which you cannot get back.</td><td>"We spent years customising the old system. We can't just throw it away."</td><td>Only future costs and benefits count. Ask: "If we started fresh today, would we choose this?"</td></tr>
              <tr><td><strong>Groupthink</strong></td><td>A group wants agreement so much that nobody raises doubts.</td><td>At a meeting on Thursday 26 November 2026, Claire said early, "WareFlow looks good to me." Nobody disagreed.</td><td>The most senior person speaks last. People write their views alone first.</td></tr>
            </tbody>
          </table>
          <p>The psychologist Irving Janis made the word "groupthink" well known in a book in 1972. Claire did nothing wrong by sharing a view. But when the boss speaks first, others often stay quiet. After the meeting, she asked James to collect written views from everyone before the next one.</p>
        </div>
        <div class="lc-card">
          <h3>The AI-made versions</h3>
          <p>AI tools do not remove these biases. They can make them faster and harder to see.</p>
          <ul class="lc-list">
            <li><strong>AI agrees with you.</strong> Many AI tools tend to go along with the view in your question. "Why is WareFlow the best choice for us?" gets a list of reasons WareFlow is best. It is confirmation bias on demand.</li>
            <li><strong>The first AI estimate sticks.</strong> An AI says setup "usually takes about 3 months". It has no source. But the team now judges every vendor's timeline against that number.</li>
            <li><strong>Automation bias.</strong> This means trusting a computer's answer more than your own checks. A neat AI table looks finished, so people stop questioning it.</li>
            <li><strong>Building on a flawed long chat.</strong> Early in a long chat, James typed the wrong overtime figure. Every later answer used it. Starting a fresh chat with checked facts felt like wasted work, but it was the right move.</li>
            <li><strong>One AI, one view.</strong> Five team members ask the same tool similar questions. They get similar answers and feel they agree. In fact, they heard one source five times.</li>
          </ul>
          <p>Biases also affect the person running the process. James now leans towards StockPilot. So he is at risk of confirmation bias too. He asks AI to make the strongest case for WareFlow Cloud and Crateline WMS.</p>
        </div>
        <div class="lc-card">
          <h3>Ask neutral questions, then ask for the other side</h3>
          <p><strong>Weak prompt (leading):</strong></p>
          <pre><code>Why is StockPilot the best warehouse system for us?</code></pre>
          <p><strong>Better prompt (neutral, with a bias check):</strong></p>
          <pre><code>I am comparing StockPilot, WareFlow Cloud and Crateline WMS (made-up names).
        [paste the decision frame, matrix and ROI table]
        I currently lean towards StockPilot. Do not agree with me just because of that.
        1. Make the strongest honest case for each of the other two options.
        2. Point out where my reasons may show confirmation bias,
           anchoring, sunk cost or groupthink. Quote my words.
        3. List 3 facts that, if true, should change my choice.</code></pre>
          <p>Telling the AI your leaning, and asking it not to just agree, helps. It does not remove the problem. Read its answer with care, and ask people who disagree with you too.</p>
          <p>A short bias checklist for any big decision:</p>
          <ul class="lc-list">
            <li>Did I look for evidence against my favourite option?</li>
            <li>Did I compare options on the same basis, not on the first number I heard?</li>
            <li>Am I counting only future costs and benefits?</li>
            <li>Did people give their views before the senior person spoke?</li>
            <li>Did any number come from an AI with no source?</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Activity: name the bias</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each made-up moment into the bias it shows.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="confirm" data-label="Confirmation bias"></div>
              <div data-sorter-target="bucket" data-bucket="anchor" data-label="Anchoring"></div>
              <div data-sorter-target="bucket" data-bucket="sunk" data-label="Sunk cost"></div>
              <div data-sorter-target="bucket" data-bucket="group" data-label="Groupthink"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="confirm" data-why="The question assumes the answer, so the AI gives reasons that support it.">A director asks AI, "Why is WareFlow Cloud the right choice?" and forwards the answer.</li>
              <li data-bucket="anchor" data-why="The first quote set a reference point, and the others were judged against it, not on facts.">After the £120,000 quote, the team calls the £60,000 quote "suspiciously cheap" without reading it.</li>
              <li data-bucket="sunk" data-why="Money spent in the past cannot come back. Only future costs and benefits should count.">"We paid for years of custom work on the old system, so we should keep it."</li>
              <li data-bucket="group" data-why="People stay quiet to keep the peace after a senior person speaks.">In a meeting, Claire speaks first and nobody raises a doubt.</li>
              <li data-bucket="anchor" data-why="An unsourced AI number became the yardstick for every vendor.">An AI says setup "usually takes 3 months", and the team now calls every longer plan "slow".</li>
              <li data-bucket="group" data-why="Five people asking one tool the same way is one source, not five independent views.">Five team members ask the same AI tool the same question, then say "we all agree".</li>
              <li data-bucket="confirm" data-why="James looks only for facts that support his current leaning.">James saves every good review of StockPilot but skips the bad ones.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to look for bias in your own reasoning. Paste your notes with names and confidential details removed.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a fair, direct decision coach. Use simple English. Do not just agree with me.

        My decision: [which warehouse system to choose: StockPilot, WareFlow Cloud or Crateline WMS (made-up names)].
        My current leaning: [StockPilot].
        My reasons so far: [it meets all our goals; the first quote we got was £120,000 and it felt fair; the team agreed quickly in one meeting and nobody objected; we already spent 3 weeks talking to its sales team].

        Please:
        1. For each reason, say if it shows confirmation bias, anchoring, sunk cost, groupthink or none. Quote my words and explain in one sentence.
        2. Make the strongest honest case for one option I am not leaning towards.
        3. List 3 facts that, if true, should change my choice.
        4. Suggest 3 simple habits to reduce bias in our next meeting.

        If my reasons look sound, say so. Do not invent problems.</pre>
            <ul class="ai-try-checks">
              <li>The AI quotes your words when it names a bias.</li>
              <li>The case for the other option is strong, not a weak straw man.</li>
              <li>The "facts that would change my choice" are things you can check.</li>
              <li>The AI does not simply praise your current leaning.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> You cannot remove bias, but you can build checks against it. Ask neutral questions, look for evidence against your favourite option, count only future costs, and let people speak before the boss. Remember that AI can agree with you too easily, so ask it for the other side on purpose.
        </div>
      HTML
      starter_code: nil
    },
    10 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mgmt">Management</div>
          <h1 class="lc-title">Pre-Mortems and Red Teams</h1>
        </div>
        <p class="lc-lead">Once a team likes an option, it stops looking for problems. A pre-mortem and a red team bring the problems back into view before it is too late. In this lesson you will learn to run a pre-mortem: imagine the project has failed and explain why. You will learn to use a red team and AI as a devil's advocate. You will see James Okafor stress-test StockPilot at Northbridge Logistics.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="A five-step pre-mortem workflow. One: imagine it failed, 31 July 2027. Two: everyone writes reasons alone for 5 minutes. Three: share in turn, one reason each. Four: group and rank the top causes. Five: actions with an owner and date. Below, a red team box, with Ruth arguing for WareFlow Cloud, Aisha testing links and data, and AI as devil's advocate, feeds into step four. The result is a stronger plan.">
            <defs><marker id="dm10a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12" fill="#e2e0f0" text-anchor="middle">
              <rect x="20" y="40" width="132" height="70" rx="10" fill="#27274e" stroke="#ec4899" stroke-width="2"/>
              <text x="86" y="68" font-size="13" font-weight="700">Imagine it failed</text>
              <text x="86" y="92" fill="#9b99b8">31 July 2027</text>
              <rect x="167" y="40" width="132" height="70" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="233" y="68" font-size="13" font-weight="700">Write reasons</text>
              <text x="233" y="92" fill="#9b99b8">alone, 5 minutes</text>
              <rect x="314" y="40" width="132" height="70" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="380" y="68" font-size="13" font-weight="700">Share in turn</text>
              <text x="380" y="92" fill="#9b99b8">one reason each</text>
              <rect x="461" y="40" width="132" height="70" rx="10" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="527" y="68" font-size="13" font-weight="700">Group and rank</text>
              <text x="527" y="92" fill="#9b99b8">top 5 causes</text>
              <rect x="608" y="40" width="132" height="70" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="674" y="68" font-size="13" font-weight="700">Actions</text>
              <text x="674" y="92" fill="#9b99b8">owner and date</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#dm10a)">
                <line x1="153" y1="75" x2="163" y2="75"/>
                <line x1="300" y1="75" x2="310" y2="75"/>
                <line x1="447" y1="75" x2="457" y2="75"/>
                <line x1="594" y1="75" x2="604" y2="75"/>
                <line x1="527" y1="168" x2="527" y2="116"/>
                <line x1="674" y1="112" x2="674" y2="212"/>
              </g>
              <rect x="314" y="172" width="279" height="100" rx="10" fill="#1f1f44" stroke="#f59e0b" stroke-dasharray="5 4"/>
              <text x="453" y="196" font-size="13" font-weight="700" fill="#fcd34d">Red team</text>
              <text x="453" y="220">Ruth argues for WareFlow Cloud</text>
              <text x="453" y="240">Aisha tests links and data</text>
              <text x="453" y="260">AI plays devil's advocate</text>
              <rect x="608" y="216" width="132" height="56" rx="10" fill="#27274e" stroke="#10b981" stroke-width="2"/>
              <text x="674" y="240" font-size="13" font-weight="700">Stronger plan</text>
              <text x="674" y="260" fill="#9b99b8">before you commit</text>
              <text x="160" y="196" fill="#9b99b8">Held: Tuesday 1 December 2026</text>
              <text x="160" y="218" fill="#9b99b8">45 minutes, 6 people</text>
              <text x="160" y="240" fill="#9b99b8">including 2 pickers</text>
            </g>
          </svg>
          <figcaption>A pre-mortem imagines failure first, then works backwards to causes and actions. A red team and AI add pressure from the other side.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>What a pre-mortem is</h3>
          <p>A <strong>post-mortem</strong> asks "why did it fail?" after the damage is done. A <strong>pre-mortem</strong> asks the same question before you start. The psychologist Gary Klein described the method in the Harvard Business Review in 2007.</p>
          <p>The key move is to say: "Imagine it is some months from now. The project has failed. Write down why." This works better than "What could go wrong?" It gives people permission to doubt. It also makes failure feel real, so people think of specific causes.</p>
          <p>How to run one in 45 minutes:</p>
          <ol class="lc-list">
            <li>Share the plan in 5 minutes. Then set the scene: "It is 31 July 2027. The project failed."</li>
            <li>Everyone writes reasons alone for 5 minutes. No talking. This stops the loudest voice taking over.</li>
            <li>Go round the room. Each person shares one reason at a time. The leader writes them all down.</li>
            <li>Group similar reasons. Vote on the top 5 by likelihood and impact.</li>
            <li>For each top cause, agree an action, an owner and a date. Add them to the plan and the risk register.</li>
          </ol>
          <p>Invite people who do the work, not only managers. Thank people for bad news. If someone is criticised for raising a problem, nobody will raise the next one.</p>
        </div>
        <div class="lc-card">
          <h3>The Northbridge pre-mortem</h3>
          <p>On Tuesday 1 December 2026, James ran a 45-minute pre-mortem on StockPilot. He invited Ruth, Aisha, Tom and two pickers. Claire Bennett chose not to attend, so people could speak freely. The scene: "It is 31 July 2027. The StockPilot project failed."</p>
          <table class="lc-table">
            <thead><tr><th>Top cause of "failure"</th><th>Raised by</th><th>Action</th><th>Owner</th></tr></thead>
            <tbody>
              <tr><td>Scanners arrived late, so go-live slipped.</td><td>Tom</td><td>Order scanners in January. Put a delivery date of 1 April 2027 and a penalty in the contract.</td><td>James</td></tr>
              <tr><td>Stock data was moved wrongly. Stock counts were wrong for weeks.</td><td>Aisha</td><td>Test the data move twice. Do a full stock count just before go-live.</td><td>Aisha</td></tr>
              <tr><td>The night shift was never trained properly.</td><td>A picker</td><td>Train both shifts. Name 2 super-users per shift (staff trained first, who help others).</td><td>Tom</td></tr>
              <tr><td>The link to the transport system broke at go-live.</td><td>Aisha</td><td>Test the link end to end 4 weeks before go-live, and again in the 2-week pilot.</td><td>Aisha</td></tr>
              <tr><td>Go-live slipped close to peak season.</td><td>Ruth</td><td>Hold a go or no-go check in mid-April 2027. Agree with Claire that go-live will not move later than 31 August 2027.</td><td>James</td></tr>
            </tbody>
          </table>
          <p>The night-shift point was new to James. Only the pickers raised it. That alone made the meeting worth it.</p>
          <p>A pre-mortem can also change the choice. If a cause has no good action, the option may be too risky. Here every top cause had a clear action. So James kept StockPilot as his recommendation, with these actions as conditions.</p>
        </div>
        <div class="lc-card">
          <h3>Red teams and AI as devil's advocate</h3>
          <p>A <strong>red team</strong> is a person or small group whose job is to attack a plan and find its weak points. A <strong>devil's advocate</strong> argues the other side on purpose, even if they do not believe it.</p>
          <p>James asked two people to red-team his draft recommendation:</p>
          <ul class="lc-list">
            <li><strong>Ruth Adeyemi</strong> argued for WareFlow Cloud: half the one-off cost, faster payback and live in early March.</li>
            <li><strong>Aisha Rahman</strong> tested every claim about integration and data security against the vendors' written answers.</li>
          </ul>
          <p>Give the red team a clear role and a time limit. Make it clear they attack the plan, not the person. The decision owner must answer each point in writing: accept, fix or explain why not.</p>
          <p>AI makes a useful extra devil's advocate. It is available at once and has no stake in the result.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Is my plan good?</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Act as a tough but fair red team. Here is my recommendation and plan.
        [paste summary, with confidential prices and names removed]
        Imagine it is 31 July 2027 and the project has failed.
        1. Write the 8 most likely reasons, from different angles:
           people, data, vendor, money, timing and customers.
        2. Make the strongest case for the option I rejected.
        3. Name the single assumption that, if wrong, hurts most.</code></pre>
          <p>Treat the AI's list as a starting point. Check each point with the people who know the work. Use your company's approved AI tool, and remove confidential details before you paste.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: run a pre-mortem</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put the steps of James's pre-mortem in order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Invite the people who do the work, including two pickers.</li>
              <li data-order="2">Share the plan, then say: "It is 31 July 2027. The project failed."</li>
              <li data-order="3">Everyone writes reasons alone for 5 minutes, without talking.</li>
              <li data-order="4">Go round the room, one reason each, until all are shared.</li>
              <li data-order="5">Group similar reasons and vote on the top 5.</li>
              <li data-order="6">Agree an action, owner and date for each top cause.</li>
              <li data-order="7">Add the actions to the plan and the risk register.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Use AI to run a solo pre-mortem and red team on a plan of yours. Then test the results with your team.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a tough but fair red team for a manager. Use simple English.

        My recommendation: [choose StockPilot, a made-up warehouse system, for our London warehouse].
        The plan: [start 4 January; scanners ordered in January; go live in early May; 85 staff on two shifts; busy season starts 1 October].
        The option I rejected: [WareFlow Cloud: cheaper and faster, but higher expected picking errors].

        Please:
        1. Imagine it is [31 July next year] and the project has failed. Write the 8 most likely reasons. Cover people, data, vendor, money, timing and customers.
        2. For each reason, suggest one action I could take now, and an early warning sign to watch for.
        3. Make the strongest honest case for the option I rejected.
        4. Name the one assumption that, if wrong, would hurt most, and how I can test it this month.

        Be specific to my plan. Do not invent statistics. Mark anything I should check with people as "CHECK:".</pre>
            <ul class="ai-try-checks">
              <li>The reasons are specific to your plan, not general project advice.</li>
              <li>Each reason has an action and an early warning sign.</li>
              <li>The case for the rejected option is strong and fair.</li>
              <li>You can name who in your team should check each "CHECK:" point.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Imagine failure before you commit. A pre-mortem lets people say what they fear, a red team argues the other side, and AI adds a fast devil's advocate. Turn every top cause into an action with an owner, and thank the people who bring bad news.
        </div>
      HTML
      starter_code: nil
    },
    11 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mgmt">Management</div>
          <h1 class="lc-title">Deciding with Your Team</h1>
        </div>
        <p class="lc-lead">Most important decisions affect many people. If you decide alone, you miss what they know. If everyone decides together, nobody owns the result. In this lesson you will learn the main ways a team can decide: consult, consent, vote and consensus. You will learn to say which way you are using before the meeting starts. You will also learn to name one clear owner. You will see how James Okafor involves his team in the warehouse system decision at Northbridge Logistics.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 330" role="img" aria-label="Five ways to decide, from left to right. Decide alone: for urgent or small choices, such as moving two pickers tonight. Consult, then decide: for big choices with one owner, such as the new warehouse system, which Claire decides. Consent: when the team must live with it, such as the night-shift training rota. Vote: when there are many fair choices, such as an away-day venue. Consensus: everyone agrees, slow, for rare cases such as team rules. An arrow below runs from faster, one person, to slower, more buy-in. A box at the bottom says: always say the method first, name one owner and write the decision down.">
            <defs><marker id="dm11a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="30" y="30" width="132" height="130" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="96" y="58" font-weight="700">Decide alone</text>
              <text x="96" y="86" font-size="11" fill="#9b99b8">Urgent or small</text>
              <text x="96" y="112" font-size="11" fill="#9b99b8">Ex: move 2 pickers</text>
              <text x="96" y="128" font-size="11" fill="#9b99b8">tonight</text>
              <rect x="172" y="30" width="132" height="130" rx="10" fill="#27274e" stroke="#f59e0b" stroke-width="2"/>
              <text x="238" y="58" font-weight="700">Consult, decide</text>
              <text x="238" y="86" font-size="11" fill="#9b99b8">Big, one owner</text>
              <text x="238" y="112" font-size="11" fill="#9b99b8">Ex: the new WMS.</text>
              <text x="238" y="128" font-size="11" fill="#9b99b8">Claire decides</text>
              <rect x="314" y="30" width="132" height="130" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="380" y="58" font-weight="700">Consent</text>
              <text x="380" y="86" font-size="11" fill="#9b99b8">Team lives with it</text>
              <text x="380" y="112" font-size="11" fill="#9b99b8">Ex: night-shift</text>
              <text x="380" y="128" font-size="11" fill="#9b99b8">training rota</text>
              <rect x="456" y="30" width="132" height="130" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="522" y="58" font-weight="700">Vote</text>
              <text x="522" y="86" font-size="11" fill="#9b99b8">Many fair choices</text>
              <text x="522" y="112" font-size="11" fill="#9b99b8">Ex: away-day</text>
              <text x="522" y="128" font-size="11" fill="#9b99b8">venue</text>
              <rect x="598" y="30" width="132" height="130" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="664" y="58" font-weight="700">Consensus</text>
              <text x="664" y="86" font-size="11" fill="#9b99b8">Everyone agrees</text>
              <text x="664" y="112" font-size="11" fill="#9b99b8">Slow. Rare cases</text>
              <text x="664" y="128" font-size="11" fill="#9b99b8">Ex: team rules</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none">
                <line x1="380" y1="190" x2="40" y2="190" marker-end="url(#dm11a)"/>
                <line x1="380" y1="190" x2="720" y2="190" marker-end="url(#dm11a)"/>
              </g>
              <text x="150" y="214" font-size="12" fill="#93c5fd">Faster, one person</text>
              <text x="610" y="214" font-size="12" fill="#f9a8d4">Slower, more buy-in</text>
              <rect x="130" y="248" width="500" height="56" rx="10" fill="#27274e" stroke="#22d3ee"/>
              <text x="380" y="272" font-weight="700">Always: say the method first</text>
              <text x="380" y="292" font-size="12" fill="#9b99b8">Name one owner. Write the decision down.</text>
            </g>
          </svg>
          <figcaption>There is no single best way for a team to decide. Pick the way that fits the decision, and say it out loud before you start.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Five ways to decide, and when to use each</h3>
          <table class="lc-table">
            <thead><tr><th>Way</th><th>How it works</th><th>Use it when</th><th>Watch out for</th></tr></thead>
            <tbody>
              <tr><td><strong>Decide alone</strong></td><td>One person decides, then tells others.</td><td>The choice is urgent, small or easy to reverse.</td><td>Using it for big choices. People feel ignored.</td></tr>
              <tr><td><strong>Consult, then decide</strong></td><td>The owner asks for views, then decides alone.</td><td>The choice is big, but one person must be accountable.</td><td>"Fake" consultation, where the choice is already made.</td></tr>
              <tr><td><strong>Consent</strong></td><td>A proposal goes ahead unless someone has a reasoned objection.</td><td>The team must live with the result, and it can be tried and changed.</td><td>Objections that are only "I prefer something else".</td></tr>
              <tr><td><strong>Vote</strong></td><td>Each person gets one vote. The most votes win.</td><td>There are several fair choices and the stakes are low.</td><td>Big choices, where the losing side may stop helping.</td></tr>
              <tr><td><strong>Consensus</strong></td><td>Everyone must agree before you go ahead.</td><td>Rare cases, such as team rules everyone must keep.</td><td>Very slow. One person can block everything.</td></tr>
            </tbody>
          </table>
          <p>A <strong>reasoned objection</strong> in consent means: "This would cause harm, or we cannot safely try it." It is not "I like my idea better". Consent is faster than consensus, because people only need to say "I can live with this".</p>
          <p>At Northbridge, the vendor choice uses <strong>consult, then decide</strong>. Claire Bennett, the managing director, approves any spend over £50,000. So she is the decider. James recommends. Ruth Adeyemi (finance), Aisha Rahman (IT) and Tom Hughes (night shift) are consulted. But smaller choices inside the project use other ways. Tom's night team agrees its own training rota by consent.</p>
        </div>
        <div class="lc-card">
          <h3>Consult people for real</h3>
          <p>Good consultation means people can change your mind. If they cannot, do not call it consultation. Call it "telling", and be honest.</p>
          <p>James planned two events (made up):</p>
          <ul class="lc-list">
            <li><strong>Tuesday 17 November 2026: a 90-minute workshop.</strong> James, Ruth, Aisha, Tom and two picker representatives: Grace Mensah (day shift) and Liam Carter (night shift).</li>
            <li><strong>Thursday 19 November 2026: a scanner try-out.</strong> Ten pickers, five from each shift, used the StockPilot and WareFlow Cloud handhelds in the cold store.</li>
          </ul>
          <p>At the workshop, James used three simple rules:</p>
          <ol class="lc-list">
            <li>He said the method at the start: "I will recommend. Claire decides. Your views will shape my recommendation."</li>
            <li>Everyone wrote their views alone for 5 minutes before anyone spoke. This stops the most senior or loudest person from setting the tone.</li>
            <li>He asked the most junior people to speak first. Grace and Liam spoke before Ruth and Aisha.</li>
          </ol>
          <p>The try-out changed the picture. 7 of 10 pickers liked WareFlow's screens more. But 8 of 10 said StockPilot's scanners worked better with gloves in the cold. One picker with a hand condition found one trigger hard to press. James noted this for HR, because it may need a <strong>reasonable adjustment</strong> (a change that removes a disadvantage for a disabled worker).</p>
        </div>
        <div class="lc-card">
          <h3>Clear ownership, and how AI helps</h3>
          <p>Every decision needs <strong>one</strong> named owner. A RACI chart (a table of who is Responsible, Accountable, Consulted and Informed) makes this clear. Only one person is Accountable.</p>
          <p>After the decision, people who disagreed are asked to support it. Some teams call this "disagree and commit". It only works if people felt heard. So record the main concerns and say how you handled each one.</p>
          <p>AI can help you prepare and make sense of input. It must not decide whose view counts.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Here are everyone's comments from the workshop.
        Tell me what the team wants.</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Below are anonymised notes from a 90-minute workshop
        and a scanner try-out with 10 pickers. [paste notes, no names]
        1. Group the views into themes. Count how many people
           raised each theme.
        2. Show where people disagree. Give both sides fairly.
        3. List concerns raised by only one or two people that
           could still matter (for example safety or health).
        4. Draft a short "what we heard" note for staff.
        Do not add views that are not in the notes.
        Do not say which option should win.</code></pre>
          <p>Point 3 matters. A concern from one picker, like the hard trigger, can be more important than a view from many. AI counts. You judge what matters.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: which way should the team decide?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each made-up decision into the way that fits it best.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="alone" data-label="Decide alone"></div>
              <div data-sorter-target="bucket" data-bucket="consult" data-label="Consult, then decide"></div>
              <div data-sorter-target="bucket" data-bucket="consent" data-label="Consent"></div>
              <div data-sorter-target="bucket" data-bucket="vote" data-label="Vote"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="alone" data-why="It is urgent, small and easy to undo. Tom is closest to the work.">Two pickers are off sick tonight. Tom moves two people to the busy zone.</li>
              <li data-bucket="consult" data-why="A big, hard-to-reverse spend. One person must be accountable, but many people know useful things.">Northbridge chooses its new warehouse system.</li>
              <li data-bucket="consent" data-why="The night team must live with the rota. It can be tried and changed. Objections should be about real problems.">Tom proposes a training rota for the night shift and asks: "Can everyone live with this?"</li>
              <li data-bucket="vote" data-why="Several fair choices, low stakes and easy to accept for the people who lose the vote.">Hannah Price's 8-person team at Bluefern Digital picks a venue for its away day.</li>
              <li data-bucket="consult" data-why="It affects every clinic, so Daniel needs their views. But one person must own the go-live plan.">Daniel Kim at Maple Street Health decides which New York clinic goes live first on a new booking system.</li>
              <li data-bucket="alone" data-why="A small, reversible admin choice. Consulting would waste people's time.">James picks which meeting room to book for the workshop.</li>
              <li data-bucket="consent" data-why="The team works under these rules daily. A trial with a review date lets the team change it if it does not work.">Hannah proposes "no meetings on Friday afternoons" as a 6-week trial.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Plan how your team will make a real decision. Choose the method, the owner and a fair way to hear everyone.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an experienced team facilitator. Use simple English.

        Decision: [which new warehouse system our company should choose].
        Who is affected: [85 warehouse staff on two shifts, finance, IT, customers].
        Who must approve: [the managing director, because the spend is over £50,000].
        How easy to reverse: [hard: a multi-year contract and new hardware].
        Deadline: [decision by 15 December].

        Please:
        1. Recommend a decision method (decide alone, consult then decide, consent, vote or consensus). Explain why in 2 sentences.
        2. Make a RACI table with exactly one Accountable person.
        3. Plan one 90-minute consultation meeting: agenda with times, and 5 open questions that do not suggest an answer.
        4. Give 3 ways to make sure quiet and junior people are heard.
        5. Write the opening words I say to explain who decides and how views will be used.
        6. List smaller decisions inside this project that a team could decide by consent.</pre>
            <ul class="ai-try-checks">
              <li>The method fits how big and how reversible the decision is.</li>
              <li>The RACI table has only one Accountable person.</li>
              <li>The opening words are honest about who decides.</li>
              <li>The questions are open and do not lead people to an answer.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Before any team discussion, say three things: how the decision will be made, who makes it, and how people's views will be used. Then listen for real, record concerns, and let one named owner decide.
        </div>
      HTML
      starter_code: nil
    },
    12 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mgmt">Management</div>
          <h1 class="lc-title">Explaining Decisions</h1>
        </div>
        <p class="lc-lead">A good decision can still fail if people do not understand it. People accept hard choices more easily when they know the reasons. In this lesson you will learn to write a clear decision note. You will learn to state trade-offs openly and to be honest about what you do not know. You will also learn to explain the same decision to different audiences. You will see James Okafor explain the warehouse system choice to his managing director and to 85 warehouse staff.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 340" role="img" aria-label="On the left, a decision note with six parts in order: the decision, why, options compared, trade-offs, uncertainty, and next steps with a review date. Arrows lead to three audiences on the right: Claire, who decides and gets the full one-page note with numbers; 85 warehouse staff, who need to know what changes for them and when; and customers, who need to know about service, dates and who to contact.">
            <defs><marker id="dm12a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <rect x="30" y="20" width="330" height="300" rx="10" fill="#1f1f44" stroke="#f59e0b" stroke-width="2"/>
              <text x="195" y="46" font-weight="700" text-anchor="middle" fill="#fcd34d">Decision note</text>
              <rect x="48" y="62" width="294" height="34" rx="6" fill="#27274e" stroke="#f59e0b"/>
              <text x="62" y="84">1. The decision, in one line</text>
              <rect x="48" y="104" width="294" height="34" rx="6" fill="#27274e" stroke="#3b82f6"/>
              <text x="62" y="126">2. Why: the top 3 reasons</text>
              <rect x="48" y="146" width="294" height="34" rx="6" fill="#27274e" stroke="#3b82f6"/>
              <text x="62" y="168">3. Options we compared</text>
              <rect x="48" y="188" width="294" height="34" rx="6" fill="#27274e" stroke="#8b5cf6"/>
              <text x="62" y="210">4. Trade-offs: what we give up</text>
              <rect x="48" y="230" width="294" height="34" rx="6" fill="#27274e" stroke="#ec4899"/>
              <text x="62" y="252">5. What we are unsure about</text>
              <rect x="48" y="272" width="294" height="34" rx="6" fill="#27274e" stroke="#10b981"/>
              <text x="62" y="294">6. Next steps and review date</text>
              <rect x="450" y="20" width="280" height="76" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="590" y="50" font-weight="700" text-anchor="middle">Claire (decides)</text>
              <text x="590" y="74" font-size="12" fill="#9b99b8" text-anchor="middle">Full note, one page, numbers</text>
              <rect x="450" y="132" width="280" height="76" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="590" y="162" font-weight="700" text-anchor="middle">85 warehouse staff</text>
              <text x="590" y="186" font-size="12" fill="#9b99b8" text-anchor="middle">What changes for me, and when</text>
              <rect x="450" y="244" width="280" height="76" rx="10" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="590" y="274" font-weight="700" text-anchor="middle">Customers</text>
              <text x="590" y="298" font-size="12" fill="#9b99b8" text-anchor="middle">Service, dates, who to contact</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#dm12a)">
                <line x1="364" y1="150" x2="444" y2="60"/>
                <line x1="364" y1="170" x2="444" y2="170"/>
                <line x1="364" y1="190" x2="444" y2="280"/>
              </g>
            </g>
          </svg>
          <figcaption>Write one honest decision note. Then tell each audience the parts that matter to them, in their words.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Put the decision first</h3>
          <p>Busy readers want the answer first. Start with the decision in one line. Then give the reasons. Some people call this <strong>BLUF</strong> (bottom line up front).</p>
          <p>Here is the start of James's recommendation note to Claire Bennett (made up):</p>
          <pre><code>Recommendation: choose StockPilot as our new warehouse system.
        Start 4 January 2027. Go live about 4 May 2027.

        Why (top 3 reasons):
        1. It is the only option that meets every must-have goal.
        2. One-off cost £120,000 (budget £200,000). Yearly fee £42,000.
           Expected payback about 14 months.
        3. 8 of 10 pickers said its scanners work better in the cold store.</code></pre>
          <p>Keep the full note to one page. Put the detailed matrix, the ROI sums and the risk list in an appendix. Claire can read the summary in two minutes and check the detail if she wants.</p>
          <p>Every number in the note must match your spreadsheet. Ruth Adeyemi, the finance lead, checks them before the note goes out.</p>
        </div>
        <div class="lc-card">
          <h3>Show the trade-offs and be honest about uncertainty</h3>
          <p>A <strong>trade-off</strong> is what you give up to get something else. Every real decision has them. If your note shows none, readers will not trust it.</p>
          <pre><code>Trade-offs:
        - WareFlow Cloud scored higher in our matrix (3.75 vs 3.60).
          It is cheaper and pays back faster (about 13 vs 14 months).
          But its expected error rate (0.7%) misses our goal of 0.6%.
        - Crateline WMS has the most features and biggest saving.
          But it cannot go live before 30 June 2027.</code></pre>
          <p>Next, say what you do not know. Use plain words and ranges, not false precision.</p>
          <table class="lc-table">
            <thead><tr><th>Too sure (avoid)</th><th>Honest (use)</th></tr></thead>
            <tbody>
              <tr><td>"StockPilot will cut errors to 0.5%."</td><td>"The vendor expects 0.5%. Reference customers support this. Errors may be higher for the first months while staff learn."</td></tr>
              <tr><td>"Go-live is 4 May."</td><td>"We plan to go live about 4 May. The biggest risk is late scanners. We have about 8 weeks of spare time before 30 June."</td></tr>
              <tr><td>"There are no risks."</td><td>"Our top three risks, and what we will do about each, are in the appendix."</td></tr>
            </tbody>
          </table>
          <p>Also say <strong>what would change your mind</strong>. James wrote one. If StockPilot will not put a scanner delivery date in the contract, the team will look again at WareFlow Cloud. This shows you thought it through.</p>
        </div>
        <div class="lc-card">
          <h3>One decision, different audiences</h3>
          <p>Claire wants money, risk and timing. Pickers want to know what changes in their day. Explain the same decision in the words each group uses.</p>
          <p>Staff will ask hard questions. Answer them honestly, even when the answer is not what they want to hear:</p>
          <ul class="lc-list">
            <li><strong>"Will the scanners track my speed?"</strong> Say what data the system records, who sees it and what it will be used for.</li>
            <li><strong>"Will I lose overtime?"</strong> If the plan cuts overtime, say so. Do not hide it. Check the wording with HR first.</li>
            <li><strong>"When is training?"</strong> Give dates for both shifts, in paid time.</li>
          </ul>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Write an exciting announcement about our new warehouse system.</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Write a 200-word briefing for 85 warehouse pickers about
        our decision to move to a new warehouse system in May 2027.
        Use short sentences and plain words. Many readers speak
        English as a second language.
        Include: what changes, when, training dates, what data the
        scanners record, and that overtime will likely fall.
        Do not promise results. Do not use hype words.
        End with who to ask and how.</code></pre>
          <p>Then check the draft yourself. Ask Tom Hughes, the night-shift supervisor, to read it as a picker would.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: James drafts the staff briefing</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="James asks AI">"Write a short briefing for warehouse pickers about our new system, StockPilot. Go-live is May 2027."</li>
              <li data-kind="answer" data-label="AI draft">The draft says: "StockPilot guarantees error-free picking. Nothing about your job will change, except it gets easier!"</li>
              <li data-kind="warn" data-label="Two problems">"Guarantees error-free" is false. The expected rate is about 0.5%, not zero. "Nothing will change" is also false: scanners record pick data and overtime will likely fall.</li>
              <li data-kind="user" data-label="Better prompt">James asks again with clear rules: no promises, no hype, include data and overtime, plain English, 200 words.</li>
              <li data-kind="answer" data-label="New draft">The new draft says errors should fall a lot, explains what the scanners record, and says overtime will likely fall.</li>
              <li data-kind="check" data-label="Checks">Tom reads it as a picker would. HR checks the overtime wording. James checks every date against the project plan.</li>
              <li data-kind="result" data-label="Result">James reads the briefing aloud at both shift meetings and takes questions. He writes down every question he cannot answer yet.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Turn your decision into a clear, honest note and a short message for the people affected.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a clear business writer. Use simple English and short sentences.

        Decision: [We will move to StockPilot, a new warehouse system. Go-live about May 2027].
        Options we compared: [StockPilot, WareFlow Cloud, Crateline WMS, keep the old system].
        Main reasons: [only option meeting every must-have goal; one-off £120,000 within £200,000 budget; pickers prefer its scanners in the cold store].
        Trade-offs: [WareFlow is cheaper but misses our error goal; Crateline cannot go live before 30 June].
        Uncertainties: [scanners may arrive late; errors may stay higher while staff learn].
        Audiences: [managing director; 85 warehouse staff].

        Please write:
        1. A one-page decision note for the managing director: decision first, top 3 reasons, trade-offs, uncertainties, what would change our mind, next steps and review date.
        2. A 150-word message for staff: what changes, when, training, what data is recorded, who to ask.

        Rules: do not invent numbers or promise results. Mark anything I must confirm with "CHECK:".</pre>
            <ul class="ai-try-checks">
              <li>The decision comes first, in one line.</li>
              <li>Trade-offs and uncertainties are stated openly, not hidden.</li>
              <li>The staff message is honest about changes people may not like.</li>
              <li>No new numbers or promises that you did not give.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> People trust a decision more when you show what you gave up and what you are unsure about. Put the decision first, give the real reasons, name the trade-offs, and tell each audience the truth in their own words.
        </div>
      HTML
      starter_code: nil
    },
    13 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mgmt">Management</div>
          <h1 class="lc-title">Ethical and Fair Decisions</h1>
        </div>
        <p class="lc-lead">A decision can make sense on a spreadsheet and still be unfair to people. Ethics in decisions means asking who is affected, who gains, who loses and whether that is fair. In this lesson you will learn a simple fairness check. You will learn to think about privacy when a decision uses data about people. You will see how James Okafor finds the people side of the warehouse system choice. You will also see how AI can help you look for blind spots.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 320" role="img" aria-label="A people impact map. In the centre: new warehouse system with pick-rate tracking. Around it, six groups, each with a gain and a possible harm. Pickers: clearer pick lists, but their speed is tracked. Night shift: fewer late finishes, but less overtime pay. New starters: trained in 2 days, but new tech to learn. Staff who need adjustments: adjustable screens, but a trigger may be hard to use. Customers: fewer wrong orders, but risk at go-live. Supervisors: a live team view, but pressure to chase numbers.">
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <g stroke="#9b99b8" stroke-width="1.5" stroke-dasharray="4 4">
                <line x1="250" y1="56" x2="290" y2="140"/>
                <line x1="250" y1="160" x2="290" y2="160"/>
                <line x1="250" y1="264" x2="290" y2="180"/>
                <line x1="510" y1="56" x2="470" y2="140"/>
                <line x1="510" y1="160" x2="470" y2="160"/>
                <line x1="510" y1="264" x2="470" y2="180"/>
              </g>
              <rect x="290" y="126" width="180" height="68" rx="10" fill="#27274e" stroke="#f59e0b" stroke-width="2"/>
              <text x="380" y="154" font-weight="700" text-anchor="middle">New WMS with</text>
              <text x="380" y="174" font-weight="700" text-anchor="middle">pick-rate tracking</text>
              <rect x="20" y="20" width="230" height="72" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="34" y="42" font-weight="700">Pickers</text>
              <text x="34" y="62" font-size="12" fill="#6ee7b7">+ clearer pick lists</text>
              <text x="34" y="80" font-size="12" fill="#f9a8d4">- their speed is tracked</text>
              <rect x="20" y="124" width="230" height="72" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="34" y="146" font-weight="700">Night shift</text>
              <text x="34" y="166" font-size="12" fill="#6ee7b7">+ fewer late finishes</text>
              <text x="34" y="184" font-size="12" fill="#f9a8d4">- less overtime pay</text>
              <rect x="20" y="228" width="230" height="72" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="34" y="250" font-weight="700">New starters</text>
              <text x="34" y="270" font-size="12" fill="#6ee7b7">+ trained in 2 days</text>
              <text x="34" y="288" font-size="12" fill="#f9a8d4">- new tech to learn</text>
              <rect x="510" y="20" width="230" height="72" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="524" y="42" font-weight="700">Staff needing adjustments</text>
              <text x="524" y="62" font-size="12" fill="#6ee7b7">+ adjustable screens</text>
              <text x="524" y="80" font-size="12" fill="#f9a8d4">- a trigger may be hard to use</text>
              <rect x="510" y="124" width="230" height="72" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="524" y="146" font-weight="700">Customers</text>
              <text x="524" y="166" font-size="12" fill="#6ee7b7">+ fewer wrong orders</text>
              <text x="524" y="184" font-size="12" fill="#f9a8d4">- risk of delays at go-live</text>
              <rect x="510" y="228" width="230" height="72" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="524" y="250" font-weight="700">Supervisors</text>
              <text x="524" y="270" font-size="12" fill="#6ee7b7">+ a live team view</text>
              <text x="524" y="288" font-size="12" fill="#f9a8d4">- pressure to chase numbers</text>
            </g>
          </svg>
          <figcaption>A people impact map shows each group's likely gain (+) and possible harm (-). The harms are where fairness checks matter most.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Who is affected, and how?</h3>
          <p>Start with a <strong>people impact map</strong>: a list of every group the decision touches, with what each group gains and what it might lose. Include people who were not in the room.</p>
          <p>At Northbridge, the money case for StockPilot was strong. But the impact map showed harms that no spreadsheet showed:</p>
          <ul class="lc-list">
            <li><strong>Less overtime pay.</strong> The plan cuts overtime by about 40%. That saves the company money. It also lowers take-home pay for staff who rely on overtime, mostly on the night shift.</li>
            <li><strong>Tracking.</strong> The new scanners record each picker's pick rate (how many items a person picks per hour). This data could help planning. It could also be used to put unfair pressure on people.</li>
            <li><strong>Access.</strong> At the scanner try-out, one picker with a hand condition found one trigger hard to press. In the UK, the Equality Act 2010 requires employers to make reasonable adjustments for disabled workers.</li>
          </ul>
          <p>None of these harms means "do not decide". They mean "decide, and deal with the people side properly".</p>
        </div>
        <div class="lc-card">
          <h3>A simple fairness check</h3>
          <p>Ask these five questions before you decide. Write the answers down.</p>
          <table class="lc-table">
            <thead><tr><th>Question</th><th>Northbridge answer (made up)</th></tr></thead>
            <tbody>
              <tr><td><strong>Who carries the cost?</strong> Is it shared fairly, or does one group pay most?</td><td>Night-shift staff lose most overtime. James asks HR how to handle this fairly, with clear notice.</td></tr>
              <tr><td><strong>Could it harm a protected group?</strong> For example disabled, older or pregnant workers.</td><td>Check scanners for staff with hand or sight conditions. Offer other models if needed.</td></tr>
              <tr><td><strong>Does everyone get the same chance?</strong></td><td>Training is offered on both shifts, in paid time, with picture guides in plain English.</td></tr>
              <tr><td><strong>Would we be happy to explain it in public?</strong></td><td>Yes, if we tell staff openly what the scanners record and why.</td></tr>
              <tr><td><strong>Can people question it?</strong></td><td>Staff can raise concerns with Tom, HR or their union representative.</td></tr>
            </tbody>
          </table>
          <p>Fairness also applies to AI tools. Daniel Kim at Maple Street Health in New York considered an AI tool that predicts which patients will miss appointments. The clinics would then double-book those slots. Daniel asked: would this treat patients with long journeys or irregular work hours worse? He asked the vendor how the tool was tested for this. He also asked for a trial where staff review every double-booking.</p>
        </div>
        <div class="lc-card">
          <h3>Privacy: decisions that use data about people</h3>
          <p>When a decision means collecting new data about staff or customers, check privacy before you sign.</p>
          <ul class="lc-list">
            <li><strong>UK:</strong> UK GDPR covers staff data. The ICO (the UK data protection regulator) has guidance on monitoring workers. It expects employers to tell workers about monitoring and to keep it fair. It says a <strong>DPIA</strong> (data protection impact assessment: a written check of the privacy risks and how to reduce them) is needed for high-risk monitoring. It recommends one for any monitoring.</li>
            <li><strong>EU:</strong> If you use AI systems in the EU to allocate tasks or to monitor and judge workers' performance, the EU AI Act treats them as high-risk. That brings extra duties.</li>
            <li><strong>US:</strong> Rules differ by state. New York, for example, has rules on telling staff about electronic monitoring and on warehouse work quotas. Health data has its own rules, such as HIPAA.</li>
          </ul>
          <p>This is general information, not legal advice. Follow your HR policy and get HR or legal advice for your own case.</p>
          <p>James and HR agreed clear rules before go-live. There will be a DPIA, and the data stays in the UK. Team-level pick data is used for planning. Pick rates never trigger automatic warnings or discipline. Each picker can see their own data.</p>
          <p>Use AI to look for blind spots, with no personal data in the prompt:</p>
          <pre><code>We plan to bring in handheld scanners that record each
        warehouse picker's pick rate. 85 staff, two shifts, London.
        1. List every group this could affect, with one gain and
           one possible harm each.
        2. List fairness risks, including for disabled, older and
           night-shift staff.
        3. List privacy questions to ask HR and our data protection lead.
        Do not give legal conclusions. Mark points to check with "CHECK:".</code></pre>
        </div>
        <div class="lc-card">
          <h3>Activity: go ahead, fix first, or get advice?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each made-up plan or issue from the Northbridge project.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="go" data-label="Fine to go ahead"></div>
              <div data-sorter-target="bucket" data-bucket="fix" data-label="Fix it first"></div>
              <div data-sorter-target="bucket" data-bucket="advice" data-label="Get HR or legal advice"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="go" data-why="Open information about what is recorded and why builds trust. It is what the ICO guidance expects.">Explain at both shift meetings what data the scanners record and who sees it.</li>
              <li data-bucket="go" data-why="Team totals help planning without singling out individuals.">Show total team picks per hour on a screen to plan staffing.</li>
              <li data-bucket="fix" data-why="Night staff would get less chance to learn. Offer sessions on both shifts, in paid time.">Training sessions are planned only during day-shift hours.</li>
              <li data-bucket="fix" data-why="Never paste staff names and performance data into a public AI tool. Remove names and use an approved tool.">Paste a list of pickers' names and pick rates into a public AI chatbot to find "slow" staff.</li>
              <li data-bucket="fix" data-why="Keeping data with no end date is a privacy risk. Set a clear time limit and delete old data.">Keep every picker's location data for ever, "just in case".</li>
              <li data-bucket="advice" data-why="Automatic warnings based on monitoring can affect jobs and pay. This needs HR and legal advice, and a DPIA.">Send automatic warnings to pickers who fall below a target pick rate.</li>
              <li data-bucket="advice" data-why="Changes to pay and hours may depend on contracts and need proper notice. Talk to HR before you announce it.">Cut overtime by 40%, which lowers some people's take-home pay.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Run a fairness and privacy check on a decision you are about to make. Use no names or personal data.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a fair-minded adviser on the people side of business decisions. Use simple English.

        Decision: [bring in a new warehouse system with handheld scanners that record each picker's pick rate].
        Context: [85 warehouse staff on two shifts in London; the plan also cuts overtime by about 40%].
        Benefits we expect: [fewer picking errors, less overtime, faster training].

        Please:
        1. Make a people impact map as a table: group | likely gain | possible harm | how to reduce the harm.
        2. Answer these fairness questions: Who carries the cost? Could a protected group be harmed? Does everyone get the same chance? Would we be happy to explain this in public? Can people question it?
        3. List the privacy questions to ask HR and our data protection lead.
        4. Suggest 4 clear rules for how the new data will and will not be used.

        Rules: this is not legal advice, so do not give legal conclusions. Mark anything that needs an expert with "ASK HR/LEGAL:". Do not invent laws or numbers.</pre>
            <ul class="ai-try-checks">
              <li>The map includes groups who were not in the room, such as night staff or customers.</li>
              <li>Each harm has a practical way to reduce it.</li>
              <li>Legal points are marked for HR or legal advice, not decided by the AI.</li>
              <li>The data rules say clearly what the data will NOT be used for.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Before you decide, ask who gains, who loses and who was not asked. Fix fairness and privacy problems before go-live, not after a complaint. AI can help you find blind spots, but people with HR and legal knowledge must check the answers.
        </div>
      HTML
      starter_code: nil
    },
    14 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mgmt">Management</div>
          <h1 class="lc-title">Reviewing Decisions Later</h1>
        </div>
        <p class="lc-lead">Most teams make a decision and never look back at it. So they repeat the same mistakes. In this lesson you will learn to keep a decision log and to review decisions at set dates. You will learn to judge the decision process separately from the outcome. You will also learn to turn a review into lessons for next time. You will see an imagined review of the Northbridge Logistics warehouse system, three months after go-live.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 350" role="img" aria-label="A timeline with four points. 14 December 2026: decide and log it, expecting about 0.5% errors and 40% less overtime. 18 May 2027: go live, planned for 4 May. 17 August 2027: 3-month review, errors about 0.6%, overtime down 32.5%. May 2028: 12-month review with full-year numbers and lessons agreed. An arrow loops from the last point back to the first: lessons feed the next decision.">
            <defs><marker id="dm14a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <line x1="60" y1="90" x2="700" y2="90" stroke="#9b99b8" stroke-width="2"/>
              <circle cx="110" cy="90" r="9" fill="#f59e0b"/>
              <circle cx="290" cy="90" r="9" fill="#3b82f6"/>
              <circle cx="470" cy="90" r="9" fill="#10b981"/>
              <circle cx="650" cy="90" r="9" fill="#8b5cf6"/>
              <text x="110" y="60" font-weight="700">14 Dec 2026</text>
              <text x="290" y="60" font-weight="700">18 May 2027</text>
              <text x="470" y="60" font-weight="700">17 Aug 2027</text>
              <text x="650" y="60" font-weight="700">May 2028</text>
              <rect x="35" y="120" width="150" height="104" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="110" y="148" font-weight="700">Decide, log it</text>
              <text x="110" y="176" font-size="12" fill="#9b99b8">Expect: 0.5%</text>
              <text x="110" y="196" font-size="12" fill="#9b99b8">errors, -40% OT</text>
              <rect x="215" y="120" width="150" height="104" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="290" y="148" font-weight="700">Go live</text>
              <text x="290" y="176" font-size="12" fill="#9b99b8">Planned 4 May</text>
              <text x="290" y="196" font-size="12" fill="#9b99b8">Scanners late</text>
              <rect x="395" y="120" width="150" height="104" rx="10" fill="#27274e" stroke="#10b981" stroke-width="2"/>
              <text x="470" y="148" font-weight="700">3-month review</text>
              <text x="470" y="176" font-size="12" fill="#9b99b8">Errors about 0.6%</text>
              <text x="470" y="196" font-size="12" fill="#9b99b8">OT down 32.5%</text>
              <rect x="575" y="120" width="150" height="104" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="650" y="148" font-weight="700">12-month review</text>
              <text x="650" y="176" font-size="12" fill="#9b99b8">Full-year numbers</text>
              <text x="650" y="196" font-size="12" fill="#9b99b8">Lessons agreed</text>
              <path d="M650,228 L650,286 L110,286 L110,234" fill="none" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#dm14a)"/>
              <text x="380" y="314" font-size="12" fill="#c4b5fd">Lessons feed the next decision</text>
            </g>
          </svg>
          <figcaption>Log the decision with the results you expect. Review it at set dates. Feed the lessons into the next decision. (Dates after December 2026 are imagined for this lesson.)</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Keep a decision log</h3>
          <p>A <strong>decision log</strong> is a simple list of important decisions, written at the time you make them. A shared spreadsheet, or a page in Notion or Confluence, works well.</p>
          <p>The key rule: write down what you expect <strong>before</strong> you know the result. Later, people remember their old views wrongly. They feel they "knew it all along". This is called <strong>hindsight bias</strong>. A log written at the time protects you from it.</p>
          <p>James's log entry for the warehouse system (made up):</p>
          <table class="lc-table">
            <thead><tr><th>Field</th><th>Entry</th></tr></thead>
            <tbody>
              <tr><td>Date and decider</td><td>14 December 2026. Claire Bennett, on James Okafor's recommendation.</td></tr>
              <tr><td>Decision</td><td>Move to StockPilot. Start 4 January 2027. Go live about 4 May 2027.</td></tr>
              <tr><td>Options considered</td><td>Keep the old system, StockPilot, WareFlow Cloud, Crateline WMS.</td></tr>
              <tr><td>Main reasons</td><td>Only option meeting every must-have goal. Within budget. Scanners suit the cold store.</td></tr>
              <tr><td>Expected results</td><td>Errors from 1.2% to about 0.5%. Overtime down 40%. New pickers productive in 2 days. Payback about 14 months.</td></tr>
              <tr><td>Confidence</td><td>Medium-high on errors. Medium on go-live date (scanner delivery risk).</td></tr>
              <tr><td>Review dates</td><td>3 months and 12 months after go-live.</td></tr>
            </tbody>
          </table>
          <p>Not every decision needs a log entry. Log the hard-to-reverse ones, and any you want to learn from.</p>
        </div>
        <div class="lc-card">
          <h3>Judge the process, not only the outcome</h3>
          <p>A good outcome does not prove a good decision. A bad outcome does not prove a bad one. Judging a decision only by its result is sometimes called "resulting". Look at both:</p>
          <table class="lc-table">
            <thead><tr><th></th><th>Good outcome</th><th>Bad outcome</th></tr></thead>
            <tbody>
              <tr><td><strong>Good process</strong></td><td>Deserved success. Repeat the process.</td><td>Bad luck. Learn what you can, but do not blame people.</td></tr>
              <tr><td><strong>Poor process</strong></td><td>Lucky. Fix the process before luck runs out.</td><td>Expected result. Fix the process.</td></tr>
            </tbody>
          </table>
          <p>Now imagine it is 17 August 2027. James runs the 3-month review. Here are the imagined results:</p>
          <table class="lc-table">
            <thead><tr><th>Measure</th><th>Expected</th><th>Actual (imagined)</th><th>Why the gap?</th></tr></thead>
            <tbody>
              <tr><td>Go-live date</td><td>4 May 2027</td><td>18 May 2027</td><td>Scanners arrived 2 weeks late. The spare time before 30 June absorbed it.</td></tr>
              <tr><td>Error rate</td><td>0.5% (about 50 a week)</td><td>About 0.6% (about 60 a week)</td><td>0.8%, 0.55% and 0.45% in the three months. Falling as staff learn.</td></tr>
              <tr><td>Overtime a year</td><td>£57,600 (down 40%)</td><td>£64,800 (down 32.5%)</td><td>Late go-live meant less practice before summer orders.</td></tr>
              <tr><td>New picker training</td><td>2 days</td><td>3 days</td><td>Nobody asked reference customers about training time.</td></tr>
            </tbody>
          </table>
          <p>Ruth recalculates the net yearly saving at the actual rates. With the error rate in B2 (0.6%) and the overtime cut in B3 (32.5%):</p>
          <pre><code>Net yearly saving:  =(6240-520000*B2)*18+96000*B3+38000-42000   gives £83,360
        Payback in months:  =120000/B4*12                               gives 17.3</code></pre>
          <p>(B4 holds the net yearly saving.) The plan expected £99,920 a year and about 14.4 months. So the result is weaker than expected, but still good. James's judgement: the process was mostly good. The scanner risk was known and the spare time worked. One process gap was real: no one checked training time with reference customers.</p>
        </div>
        <div class="lc-card">
          <h3>Learn from reviews, with AI's help</h3>
          <p>Run reviews without blame. Ask "what happened and why?", not "whose fault was it?". A common format is the <strong>after-action review</strong>: what did we expect, what happened, why was there a difference, and what will we do next time?</p>
          <p>AI is useful here. It can compare expected and actual numbers, sort causes, and spot patterns across many log entries. But it can also invent a neat story after the fact. Make it stick to the log.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Our new warehouse system results were worse than planned.
        Who made the mistake?</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Below is our decision log entry and our 3-month results.
        [paste log entry and results table, no personal data]
        1. Compare expected and actual for each measure.
        2. For each gap, say if it looks like: a process gap,
           bad luck, or a new fact we could not know.
        3. Separate "was the decision good?" from "was the result good?".
        4. Suggest up to 3 lessons for our next big decision.
        Use only the information given. Do not blame individuals.</code></pre>
          <p>James agreed three lessons. Ask reference customers about training time. Keep at least 6 weeks of spare time in every go-live plan. Check results against the log at 12 months, as planned.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: run a decision review</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put the steps of James's 3-month review in a sensible order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Open the decision log entry. Read what was expected, and why.</li>
              <li data-order="2">Collect the actual results from the same sources as the original numbers.</li>
              <li data-order="3">Put expected and actual side by side in a table.</li>
              <li data-order="4">For each gap, ask: process gap, bad luck, or a new fact?</li>
              <li data-order="5">Judge the process separately from the outcome.</li>
              <li data-order="6">Agree up to 3 lessons, each with an owner.</li>
              <li data-order="7">Update the log and confirm the 12-month review date.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Review a past decision of your own. Compare what you expected with what happened, and pull out lessons.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a calm, fair facilitator of after-action reviews. Use simple English.

        The decision: [In December we chose a new warehouse system, StockPilot].
        What we expected: [errors down from 1.2% to 0.5%; overtime down 40%; go-live 4 May; new pickers trained in 2 days].
        What happened: [errors about 0.6% and falling; overtime down 32.5%; go-live 18 May because scanners were 2 weeks late; training takes 3 days].
        How we decided: [framed the question, gathered data and staff input, compared 4 options in a matrix, ran a pre-mortem, consulted staff].

        Please:
        1. Make a table: measure | expected | actual | gap | likely cause (process gap, bad luck, or new fact).
        2. Judge the process and the outcome separately, in 3 sentences each.
        3. List what went well that we should repeat.
        4. Suggest up to 3 lessons for our next big decision, each with a suggested owner role.
        5. Suggest what to measure at the 12-month review.

        Use only what I gave you. Do not blame individuals. Mark guesses with "GUESS:".</pre>
            <ul class="ai-try-checks">
              <li>Expected and actual numbers match what you gave.</li>
              <li>Process and outcome are judged separately.</li>
              <li>Lessons are specific actions, not general advice.</li>
              <li>No blame on individuals, and guesses are marked.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Write down what you expect when you decide, then check it at set dates. Judge the process and the outcome separately. Good process with bad luck needs no blame. Good luck with poor process needs fixing.
        </div>
      HTML
      starter_code: nil
    },
    15 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mgmt">Management</div>
          <h1 class="lc-title">Capstone: Choosing a New Warehouse System at Northbridge Logistics</h1>
        </div>
        <p class="lc-lead">In this capstone you will follow one big decision from start to finish. James Okafor, operations manager at Northbridge Logistics, must recommend a new warehouse system. Claire Bennett, the managing director, will decide. You will see every step together: framing, evidence, options, a decision matrix, ROI, a pre-mortem and a decision note. You will also see the moment where the matrix "winner" is not the right choice. Then you will run the same process on a decision of your own. All companies, vendors and numbers are made up.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="Seven steps in a row. Frame: one question, four goals. Evidence: data, people and quotes. Options: three vendors plus the baseline. Matrix: WareFlow Cloud 3.75, StockPilot 3.60. ROI: StockPilot pays back in about 14.4 months. Pre-mortem: five causes of failure, each with an action. Decision note: StockPilot, with a pilot. Below, a box: must-have goal check. WareFlow misses the error goal at 0.7 percent. Crateline misses the 30 June go-live.">
            <defs><marker id="dm15a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="22" y="40" width="92" height="120" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="68" y="68" font-weight="700">Frame</text>
              <text x="68" y="100" font-size="11" fill="#9b99b8">1 question</text>
              <text x="68" y="118" font-size="11" fill="#9b99b8">4 goals</text>
              <rect x="126" y="40" width="92" height="120" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="172" y="68" font-weight="700">Evidence</text>
              <text x="172" y="100" font-size="11" fill="#9b99b8">Data, people,</text>
              <text x="172" y="118" font-size="11" fill="#9b99b8">quotes</text>
              <rect x="230" y="40" width="92" height="120" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="276" y="68" font-weight="700">Options</text>
              <text x="276" y="100" font-size="11" fill="#9b99b8">3 vendors +</text>
              <text x="276" y="118" font-size="11" fill="#9b99b8">baseline</text>
              <rect x="334" y="40" width="92" height="120" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="380" y="68" font-weight="700">Matrix</text>
              <text x="380" y="100" font-size="11" fill="#9b99b8">WareFlow 3.75</text>
              <text x="380" y="118" font-size="11" fill="#9b99b8">StockPilot</text>
              <text x="380" y="136" font-size="11" fill="#9b99b8">3.60</text>
              <rect x="438" y="40" width="92" height="120" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="484" y="68" font-weight="700">ROI</text>
              <text x="484" y="100" font-size="11" fill="#9b99b8">StockPilot</text>
              <text x="484" y="118" font-size="11" fill="#9b99b8">pays back in</text>
              <text x="484" y="136" font-size="11" fill="#9b99b8">14.4 months</text>
              <rect x="542" y="40" width="92" height="120" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="588" y="68" font-weight="700">Pre-mortem</text>
              <text x="588" y="100" font-size="11" fill="#9b99b8">5 causes,</text>
              <text x="588" y="118" font-size="11" fill="#9b99b8">5 actions</text>
              <rect x="646" y="40" width="92" height="120" rx="10" fill="#27274e" stroke="#f59e0b" stroke-width="2"/>
              <text x="692" y="62" font-weight="700">Decision</text>
              <text x="692" y="78" font-weight="700">note</text>
              <text x="692" y="100" font-size="11" fill="#9b99b8">StockPilot,</text>
              <text x="692" y="118" font-size="11" fill="#9b99b8">with a pilot</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#dm15a)">
                <line x1="114" y1="100" x2="124" y2="100"/>
                <line x1="218" y1="100" x2="228" y2="100"/>
                <line x1="322" y1="100" x2="332" y2="100"/>
                <line x1="426" y1="100" x2="436" y2="100"/>
                <line x1="530" y1="100" x2="540" y2="100"/>
                <line x1="634" y1="100" x2="644" y2="100"/>
                <line x1="380" y1="162" x2="380" y2="204"/>
              </g>
              <rect x="80" y="210" width="600" height="66" rx="10" fill="#27274e" stroke="#10b981" stroke-width="2"/>
              <text x="380" y="236" font-weight="700" fill="#6ee7b7">Must-have goal check</text>
              <text x="380" y="260" font-size="12">WareFlow misses the error goal (0.7%). Crateline misses the 30 June go-live.</text>
            </g>
          </svg>
          <figcaption>The full process in seven steps. The must-have goal check changes the answer: the matrix leader fails a goal that Northbridge cannot give up.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Steps 1 to 3: frame, evidence and options</h3>
          <p><strong>Frame.</strong> James started with a weak question: "Which WMS vendor is best?" He turned it into a real question:</p>
          <pre><code>Which warehouse system should we use from mid-2027 so that we cut
        picking errors and overtime, within a one-off budget of £200,000,
        and go live before 30 June 2027 without disrupting customers?</code></pre>
          <p>There are four goals:</p>
          <ul class="lc-list">
            <li>Picking errors from 1.2% to 0.6% or lower.</li>
            <li>Overtime cost down at least 30%.</li>
            <li>Live before 30 June 2027, well before peak season on 1 October 2027.</li>
            <li>New pickers productive in 2 days, not 5.</li>
          </ul>
          <p>Claire decides by 15 December 2026.</p>
          <p><strong>Evidence.</strong> Ruth Adeyemi, the finance lead, built the baseline (the yearly cost of doing nothing) from Northbridge's own data:</p>
          <table class="lc-table">
            <thead><tr><th>Item</th><th>Yearly number</th></tr></thead>
            <tbody>
              <tr><td>Orders</td><td>520,000</td></tr>
              <tr><td>Picking errors (1.2%) at £18 each</td><td>6,240 errors = £112,320</td></tr>
              <tr><td>Overtime</td><td>£96,000</td></tr>
              <tr><td>Old system licence and support</td><td>£38,000</td></tr>
              <tr><td><strong>Total</strong></td><td><strong>£246,320</strong></td></tr>
            </tbody>
          </table>
          <p>James added people's input (interviews with 12 pickers, a workshop and a scanner try-out) and outside sources (written quotes, demos and reference calls).</p>
          <p><strong>Options.</strong> Keep the old system (the baseline, extendable at £4,000 a month after 30 June 2027), StockPilot, WareFlow Cloud and Crateline WMS.</p>
        </div>
        <div class="lc-card">
          <h3>Steps 4 and 5: the decision matrix and ROI</h3>
          <p>The team scored each option from 1 to 5 (5 = best) against weighted criteria. Weights are in B2:B7. StockPilot's scores are in C2:C7.</p>
          <table class="lc-table">
            <thead><tr><th>Criterion</th><th>Weight</th><th>StockPilot</th><th>WareFlow Cloud</th><th>Crateline WMS</th></tr></thead>
            <tbody>
              <tr><td>3-year cost</td><td>25%</td><td>3</td><td>4</td><td>2</td></tr>
              <tr><td>Fit with our operations</td><td>25%</td><td>4</td><td>3</td><td>5</td></tr>
              <tr><td>Setup time and disruption</td><td>15%</td><td>3</td><td>5</td><td>2</td></tr>
              <tr><td>Vendor reliability and support</td><td>15%</td><td>4</td><td>3</td><td>4</td></tr>
              <tr><td>Ease of use for staff</td><td>10%</td><td>4</td><td>5</td><td>3</td></tr>
              <tr><td>Data security and integration</td><td>10%</td><td>4</td><td>3</td><td>5</td></tr>
              <tr><td><strong>Weighted total</strong></td><td>100%</td><td><strong>3.60</strong></td><td><strong>3.75</strong></td><td><strong>3.45</strong></td></tr>
            </tbody>
          </table>
          <pre><code>StockPilot weighted total (in C8):  =SUMPRODUCT($B$2:$B$7,C2:C7)   gives 3.60
        Copy it to D8 and E8 for the other two vendors.</code></pre>
          <p>The totals are close. A sensitivity check shows this. If "fit" gets 35% and cost only 15%, Crateline leads with 3.80. So the matrix alone cannot settle it.</p>
          <p>Ruth's ROI model (savings from go-live, yearly, ignoring tax and inflation):</p>
          <table class="lc-table">
            <thead><tr><th></th><th>StockPilot</th><th>WareFlow Cloud</th><th>Crateline WMS</th></tr></thead>
            <tbody>
              <tr><td>One-off cost</td><td>£120,000</td><td>£60,000</td><td>£185,000</td></tr>
              <tr><td>Net yearly saving</td><td>£99,920</td><td>£55,600</td><td>£130,880</td></tr>
              <tr><td>Payback</td><td>about 14.4 months</td><td>about 12.9 months</td><td>about 17.0 months</td></tr>
              <tr><td>3-year net benefit</td><td>£179,760</td><td>£106,800</td><td>£207,640</td></tr>
              <tr><td>3-year ROI</td><td>149.8%</td><td>178.0%</td><td>112.2%</td></tr>
            </tbody>
          </table>
          <p>Each option "wins" on something. Then James ran a <strong>must-have goal check</strong>: does each option meet every goal Northbridge cannot give up?</p>
          <table class="lc-table">
            <thead><tr><th>Goal</th><th>StockPilot</th><th>WareFlow Cloud</th><th>Crateline WMS</th></tr></thead>
            <tbody>
              <tr><td>Errors 0.6% or lower</td><td>Yes (0.5%)</td><td><strong>No (0.7%)</strong></td><td>Yes (0.4%)</td></tr>
              <tr><td>Overtime down at least 30%</td><td>Yes (40%)</td><td>Yes (30%)</td><td>Yes (50%)</td></tr>
              <tr><td>Live before 30 June 2027</td><td>Yes (about 4 May)</td><td>Yes (about 4 March)</td><td><strong>No (about early August)</strong></td></tr>
            </tbody>
          </table>
          <p>Only StockPilot passes every must-have. The fourth goal, training in 2 days, had no vendor evidence yet, so it was not checked here. The lesson: put must-haves as a pass-or-fail check before you trust the matrix. Then use the matrix to compare the options that pass.</p>
        </div>
        <div class="lc-card">
          <h3>Steps 6 and 7: pre-mortem and decision note</h3>
          <p>At the pre-mortem on 1 December 2026, the team imagined it was 31 July 2027 and the StockPilot project had failed. They wrote down why, then planned actions:</p>
          <table class="lc-table">
            <thead><tr><th>Imagined cause of failure</th><th>Action</th><th>Owner</th></tr></thead>
            <tbody>
              <tr><td>Scanners arrive late</td><td>Order in January. Delivery date (1 April 2027) and a penalty in the contract.</td><td>James</td></tr>
              <tr><td>Data is moved wrongly</td><td>Test the data move twice. Count stock before go-live.</td><td>Aisha Rahman</td></tr>
              <tr><td>The night shift is not trained</td><td>Training on both shifts, in paid time. Two super-users per shift.</td><td>Tom Hughes</td></tr>
              <tr><td>The transport system link breaks</td><td>Test the link end to end 4 weeks before go-live.</td><td>Aisha Rahman</td></tr>
              <tr><td>Go-live slips toward peak season</td><td>A go/no-go check in mid-April 2027. Go-live must not move later than 31 August 2027.</td><td>James</td></tr>
            </tbody>
          </table>
          <p>James then wrote the decision note. Claire approved it at the decision meeting on Monday 14 December 2026.</p>
          <pre><code>DECISION: Move to StockPilot. Start 4 January 2027.
        Go live about 4 May 2027, with a 2-week pilot in
        the fast-moving zone.
        Decided by: Claire Bennett. Recommended by: James Okafor.

        WHY: The only option that meets every must-have goal.
        One-off £120,000 (budget £200,000). Yearly fee £42,000.
        Expected net saving £99,920 a year. Payback about 14.4 months.
        8 of 10 pickers preferred its scanners in the cold store.

        TRADE-OFFS: WareFlow Cloud scored higher (3.75 vs 3.60) and is
        cheaper, but expects 0.7% errors. Crateline WMS saves the most,
        but cannot go live before 30 June 2027.

        UNSURE ABOUT: scanner delivery; errors may be higher at first.

        CONDITIONS: scanner date and fee cap in the contract; DPIA
        before go-live; pick-rate data for team planning and coaching,
        not automatic warnings or discipline.

        REVIEW: 3 and 12 months after go-live.</code></pre>
          <p>AI helped at every step: testing the frame, brainstorming options, drafting the matrix layout and the note. But Ruth checked every number. The team gave the scores. Claire made the decision.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: the whole decision, step by step</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Frame">James asks AI to find hidden assumptions in his draft question. He checks each one with the people involved.</li>
              <li data-kind="tool" data-label="Evidence">Ruth builds the baseline from Northbridge's own data: £246,320 a year in errors, overtime and the old licence.</li>
              <li data-kind="result" data-label="Matrix">The spreadsheet shows WareFlow Cloud 3.75, StockPilot 3.60, Crateline WMS 3.45. Small changes to the weights change the leader.</li>
              <li data-kind="warn" data-label="The catch">WareFlow's expected error rate is 0.7%. That misses the goal of 0.6% or lower. Crateline misses the 30 June go-live.</li>
              <li data-kind="thought" data-label="James thinks">"Must-haves should be pass or fail. The matrix is for comparing the options that pass."</li>
              <li data-kind="check" data-label="Numbers checked">Ruth checks the ROI: StockPilot pays back in about 14.4 months. She also checks the 3-year net benefit of £179,760.</li>
              <li data-kind="tool" data-label="Pre-mortem">The team imagines the project has failed. Late scanners and a bad data move top the list, so each gets an action and an owner.</li>
              <li data-kind="answer" data-label="Decision">Claire approves StockPilot on 14 December 2026, with conditions and review dates in the log.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Run the full process on a real decision you face. Then check every number and fact yourself.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a decision coach. Use simple English. Guide me through a full decision.

        My situation: [We must choose a new warehouse system. One-off budget £200,000. Must go live before 30 June next year. Goals: cut picking errors from 1.2% to 0.6% or lower, cut overtime by 30%].
        Options: [StockPilot: £120,000 one-off, £42,000 a year, 4-month setup, 0.5% errors. WareFlow Cloud: £60,000, £58,000 a year, 2 months, 0.7% errors. Crateline WMS: £185,000, £30,000 a year, 7 months, 0.4% errors].

        Do these steps in order and use short headings:
        1. Frame: rewrite my question with goals, limits and who decides.
        2. Evidence: list what I still need to check.
        3. Must-have check: pass or fail for each option, with reasons.
        4. Matrix: 5 criteria with weights adding to 100%, and the spreadsheet formula.
        5. Pre-mortem: 4 ways the top option could fail, with an action each.
        6. Decision note: decision, reasons, trade-offs, uncertainty, review dates.

        Show your sums. Do not invent facts. Mark anything to confirm with "CHECK:".</pre>
            <ul class="ai-try-checks">
              <li>The must-have check comes before the matrix, and fails are explained.</li>
              <li>The weights add up to 100% and the formula is correct.</li>
              <li>Every number matches what you gave. Check the sums yourself.</li>
              <li>The decision note shows trade-offs and uncertainty honestly.</li>
              <li>A named person decides, not the AI.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A good decision is a process, not a single tool. Frame the question, check the evidence, widen the options, test must-haves before scores, check the money, imagine failure, and explain the choice honestly. AI speeds up every step, but people check the facts and own the decision.
        </div>
      HTML
      starter_code: nil
    }
  }.freeze
end

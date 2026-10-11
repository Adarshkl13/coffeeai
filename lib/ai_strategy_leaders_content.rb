module AiStrategyLeadersContent
  # Units (sidebar dividers): 1–4 AI for Leaders · 5–9 Choosing and Running AI Projects · 10–14 Leading the Change · 15 Capstone
  # Widgets: sequence, sorter, stepper. No code editor: each Try It is an ai-try prompt box.
  LESSONS = {
    1 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mgmt">Management</div>
          <h1 class="lc-title">What Leaders Need to Know About AI</h1>
        </div>
        <p class="lc-lead">As a leader, you do not need to build AI. You need to know what it can do, where it fails and which kind of tool fits a job. Then you can ask good questions, set safe rules and spend money wisely. In this lesson you will learn the main types of AI tools, their real strengths and their limits. Through this course you will follow Maple Street Health, a made-up chain of 6 clinics in New York. Its COO, Rosa Delgado, and project manager, Daniel Kim, are planning their first AI programme.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 340" role="img" aria-label="Top row: four types of AI tools. AI assistants for chat, drafting and summaries. AI built into the tools you already use. Specialist AI built for one job, such as a clinical scribe. Prediction models that learn from past data, such as no-show risk. Middle: AI is good at drafting, summarising, sorting and spotting patterns. AI is weak at facts it was not given, exact maths without checks, knowing your rules and taking responsibility. Bottom: AI drafts and suggests, a person checks, the leader decides.">
            <defs><marker id="asl1a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <text x="380" y="28" font-weight="700" fill="#c4b5fd" text-anchor="middle">Four common types of AI tools</text>
              <g text-anchor="middle">
                <rect x="20" y="45" width="170" height="90" rx="8" fill="#1f1f44" stroke="#8b5cf6"/>
                <text x="105" y="72" font-weight="700">AI assistants</text>
                <text x="105" y="96" font-size="11" fill="#9b99b8">chat, draft, summarise</text>
                <text x="105" y="114" font-size="11" fill="#9b99b8">e.g. Claude, Copilot</text>
                <rect x="203" y="45" width="170" height="90" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
                <text x="288" y="72" font-weight="700">AI in your tools</text>
                <text x="288" y="96" font-size="11" fill="#9b99b8">inside email, docs,</text>
                <text x="288" y="114" font-size="11" fill="#9b99b8">meetings and chat</text>
                <rect x="386" y="45" width="170" height="90" rx="8" fill="#1f1f44" stroke="#22d3ee"/>
                <text x="471" y="72" font-weight="700">Specialist AI</text>
                <text x="471" y="96" font-size="11" fill="#9b99b8">built for one job</text>
                <text x="471" y="114" font-size="11" fill="#9b99b8">e.g. clinical scribe</text>
                <rect x="569" y="45" width="170" height="90" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
                <text x="654" y="72" font-weight="700">Prediction models</text>
                <text x="654" y="96" font-size="11" fill="#9b99b8">learn from past data</text>
                <text x="654" y="114" font-size="11" fill="#9b99b8">e.g. no-show risk</text>
              </g>
              <rect x="20" y="152" width="355" height="118" rx="8" fill="#27274e" stroke="#10b981"/>
              <text x="36" y="176" font-weight="700" fill="#6ee7b7">Good at</text>
              <text x="36" y="200" font-size="12">• Drafting and rewriting text</text>
              <text x="36" y="219" font-size="12">• Summarising long documents</text>
              <text x="36" y="238" font-size="12">• Sorting and pulling out data</text>
              <text x="36" y="257" font-size="12">• Spotting patterns in numbers</text>
              <rect x="385" y="152" width="355" height="118" rx="8" fill="#27274e" stroke="#ec4899"/>
              <text x="401" y="176" font-weight="700" fill="#f9a8d4">Weak at</text>
              <text x="401" y="200" font-size="12">• Facts it was not given</text>
              <text x="401" y="219" font-size="12">• Exact maths without checks</text>
              <text x="401" y="238" font-size="12">• Knowing your rules and context</text>
              <text x="401" y="257" font-size="12">• Taking responsibility</text>
              <g text-anchor="middle">
                <rect x="20" y="288" width="220" height="38" rx="8" fill="#1f1f44" stroke="#8b5cf6"/>
                <text x="130" y="312">AI drafts and suggests</text>
                <rect x="270" y="288" width="220" height="38" rx="8" fill="#1f1f44" stroke="#22d3ee"/>
                <text x="380" y="312">A person checks it</text>
                <rect x="520" y="288" width="220" height="38" rx="8" fill="#1f1f44" stroke="#10b981"/>
                <text x="630" y="312">The leader decides</text>
              </g>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#asl1a)">
                <line x1="242" y1="307" x2="266" y2="307"/>
                <line x1="492" y1="307" x2="516" y2="307"/>
              </g>
            </g>
          </svg>
          <figcaption>Four types of AI tool, what they do well, where they fail, and who decides.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>What modern AI is, in plain words</h3>
          <p>Most of the AI people talk about today is <strong>generative AI</strong> (AI that creates new text, images or audio). Tools like Claude, ChatGPT, Gemini and Microsoft Copilot use a <strong>large language model</strong> (LLM: a program trained on a huge amount of text to predict the next words).</p>
          <p>This explains both its strength and its weakness:</p>
          <ul class="lc-list">
            <li>It writes fluent, well-organised text very fast. It can follow your instructions and your format.</li>
            <li>It does not "know" facts the way a database does. It produces likely words. So it can sound sure and still be wrong.</li>
            <li>A wrong answer that looks real is called a <strong>hallucination</strong>. Examples: an invented policy, a fake reference or a wrong total.</li>
            <li>It only knows your organisation if you give it your information. A public tool does not know your clinics, prices or rules.</li>
          </ul>
          <p>There is also an older kind of AI: the <strong>prediction model</strong> (a model that learns patterns from past data to predict a number or a label). Examples are a forecast of next month's demand or a "likely to miss the appointment" score. It can be very useful. It needs good, clean historical data.</p>
        </div>
        <div class="lc-card">
          <h3>The four types of AI tools you will meet</h3>
          <table class="lc-table">
            <thead><tr><th>Type</th><th>What it does</th><th>Maple Street Health example (made up)</th><th>Question a leader asks</th></tr></thead>
            <tbody>
              <tr><td><strong>AI assistant</strong></td><td>A chat tool for drafting, summarising and thinking through options</td><td>Daniel drafts a project plan and a staff update</td><td>Is it a business account with our data protected?</td></tr>
              <tr><td><strong>AI in your tools</strong></td><td>AI features inside Microsoft 365, Google Workspace, Zoom, Teams, Slack or Notion</td><td>Managers get meeting notes and action items</td><td>Is it turned on, who can use it and what can it see?</td></tr>
              <tr><td><strong>Specialist AI</strong></td><td>A product built for one job in one industry</td><td>An AI scribe drafts clinical notes from a visit</td><td>Has it been tested for our kind of work? Will the vendor sign our privacy terms?</td></tr>
              <tr><td><strong>Prediction model</strong></td><td>Learns from past data and gives a score or forecast</td><td>A list of appointments with a high no-show risk</td><td>Is our data good enough? Is the model fair to all patient groups?</td></tr>
            </tbody>
          </table>
          <p>Many tools now also offer <strong>agents</strong> (AI that can take several steps by itself, such as reading an inbox and booking a meeting). Agents can save more time. They also need tighter limits, because they act, not just suggest. Features change often, so check each tool's current help pages.</p>
        </div>
        <div class="lc-card">
          <h3>What leaders must decide (AI cannot)</h3>
          <p>AI changes how work gets done. It does not take away a leader's job. You still decide four things:</p>
          <ul class="lc-list">
            <li><strong>The problem:</strong> which work is worth changing, and why.</li>
            <li><strong>The data:</strong> what information the tool may see. Patient and staff data need approved, secure tools.</li>
            <li><strong>The check:</strong> who reviews AI output before it reaches a patient, a customer or a decision.</li>
            <li><strong>The owner:</strong> one named person who is responsible for results and problems.</li>
          </ul>
          <p>You can use an AI assistant to learn faster. Give it your context and ask for limits, not just benefits.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>How can AI help a healthcare company?</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>I am the COO of a chain of 6 primary care clinics in New York
        (146 staff). Explain, in simple English, the four types of AI tools:
        AI assistants, AI inside our existing tools, specialist AI and
        prediction models. For each type give one realistic task in a clinic,
        one main risk and one question I should ask a vendor.
        Do not invent statistics. Mark anything you are unsure about.</code></pre>
          <p>The better prompt gives the AI your size, sector and the exact output you want. Treat the answer as a starting list. Check facts with your IT, legal and clinical leads.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: is this a good job for AI?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each made-up task at Maple Street Health by how well it fits AI today.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="good" data-label="Good fit"></div>
              <div data-sorter-target="bucket" data-bucket="care" data-label="Use with care"></div>
              <div data-sorter-target="bucket" data-bucket="poor" data-label="Poor fit"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="good" data-why="Drafting from notes you give it is a core strength. The risk is low and a manager checks the result.">Turn a manager's rough notes into a clear staff newsletter.</li>
              <li data-bucket="good" data-why="Summarising a long, non-confidential document is a strength. Someone still checks key points.">Summarise a 40-page public report on primary care staffing.</li>
              <li data-bucket="care" data-why="AI can draft this, but it involves patient data. It needs an approved, secure tool and a clinician must approve each note.">Draft a clinical note from a recorded patient visit.</li>
              <li data-bucket="care" data-why="A prediction model can help, but it needs good past data and a check that it treats all patient groups fairly.">Flag appointments that are likely to be missed.</li>
              <li data-bucket="poor" data-why="This is a judgement about a person's job. AI can help organise facts, but a manager and HR must decide.">Decide which receptionist should get a formal warning.</li>
              <li data-bucket="poor" data-why="AI may invent or mix up rules. Legal questions need a qualified adviser who knows the current law.">Give the final answer on whether a new process meets HIPAA.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to map the four types of AI tools onto the real work of your team. Then mark which ideas need data or legal checks first.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an adviser who helps managers understand AI. Use simple English and short sentences.

        My organisation: [Maple Street Health, 6 primary care clinics in New York, 146 staff].
        My team or area: [clinic operations: front desk, scheduling, admin].
        Five tasks that take a lot of our time: [phone calls, rebooking missed appointments, reminder messages, insurance paperwork, weekly reports].

        Please:
        1. Explain these four types of AI tools in one line each: AI assistant, AI inside existing work tools, specialist AI, prediction model.
        2. For each of my five tasks, say which type of tool could help, what the AI would do and what a person must still check.
        3. Rate each idea: Good fit, Use with care or Poor fit, with one reason.
        4. List 3 questions I should ask before using any tool with personal or confidential data.

        Show steps 2 and 3 as one table. Do not name prices. Do not invent statistics. If a task involves health or personal data, say that it needs an approved, secure tool.</pre>
            <ul class="ai-try-checks">
              <li>Each idea names a person who checks the AI output.</li>
              <li>Tasks with personal or health data are marked "Use with care" or worse.</li>
              <li>No made-up statistics, prices or promises of exact time savings.</li>
              <li>The tool types match the task (a prediction model for forecasting, an assistant for drafting).</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> AI is a fast drafter and pattern finder, not a source of truth. Your job as a leader is to choose the right problem, protect the data, make sure a person checks the output and name an owner. If you do those four things, the tool choice becomes much easier.
        </div>
      HTML
      starter_code: nil
    },
    2 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mgmt">Management</div>
          <h1 class="lc-title">Myths and Realities</h1>
        </div>
        <p class="lc-lead">AI news is full of big promises. Some are true for some work. Many are not true for your work. In this lesson you will learn to separate hype from evidence. You will see why AI pilots often fail. You will also learn to set honest expectations with your team and your boss. A leader who promises too much loses trust. A leader who sets honest goals can show real progress.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 340" role="img" aria-label="Five myths about AI and the reality for each. Myth: AI will replace whole teams soon. Reality: AI changes tasks and people still review. Myth: buy the tool and value appears. Reality: value needs a changed workflow. Myth: the vendor demo shows our results. Reality: test it on your own work first. Myth: if it sounds sure, it is right. Reality: it can be fluent and wrong. Myth: one big project is the best start. Reality: start small, measure, then scale.">
            <defs><marker id="asl2a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <text x="180" y="28" font-weight="700" fill="#f9a8d4" text-anchor="middle">Myth</text>
              <text x="580" y="28" font-weight="700" fill="#6ee7b7" text-anchor="middle">Reality</text>
              <g text-anchor="middle">
                <rect x="20" y="42" width="320" height="40" rx="8" fill="#1f1f44" stroke="#ec4899"/>
                <text x="180" y="67">AI will replace whole teams soon</text>
                <rect x="420" y="42" width="320" height="40" rx="8" fill="#27274e" stroke="#10b981"/>
                <text x="580" y="67">AI changes tasks; people still review</text>
                <rect x="20" y="94" width="320" height="40" rx="8" fill="#1f1f44" stroke="#ec4899"/>
                <text x="180" y="119">Buy the tool and value appears</text>
                <rect x="420" y="94" width="320" height="40" rx="8" fill="#27274e" stroke="#10b981"/>
                <text x="580" y="119">Value needs a changed workflow</text>
                <rect x="20" y="146" width="320" height="40" rx="8" fill="#1f1f44" stroke="#ec4899"/>
                <text x="180" y="171">The vendor demo shows our results</text>
                <rect x="420" y="146" width="320" height="40" rx="8" fill="#27274e" stroke="#10b981"/>
                <text x="580" y="171">Test it on your own work first</text>
                <rect x="20" y="198" width="320" height="40" rx="8" fill="#1f1f44" stroke="#ec4899"/>
                <text x="180" y="223">If it sounds sure, it is right</text>
                <rect x="420" y="198" width="320" height="40" rx="8" fill="#27274e" stroke="#10b981"/>
                <text x="580" y="223">It can be fluent and wrong</text>
                <rect x="20" y="250" width="320" height="40" rx="8" fill="#1f1f44" stroke="#ec4899"/>
                <text x="180" y="275">One big project is the best start</text>
                <rect x="420" y="250" width="320" height="40" rx="8" fill="#27274e" stroke="#10b981"/>
                <text x="580" y="275">Start small, measure, then scale</text>
              </g>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#asl2a)">
                <line x1="344" y1="62" x2="414" y2="62"/>
                <line x1="344" y1="114" x2="414" y2="114"/>
                <line x1="344" y1="166" x2="414" y2="166"/>
                <line x1="344" y1="218" x2="414" y2="218"/>
                <line x1="344" y1="270" x2="414" y2="270"/>
              </g>
              <text x="380" y="322" font-size="12" fill="#9b99b8" text-anchor="middle">Ask for evidence from work like yours. Then test it yourself.</text>
            </g>
          </svg>
          <figcaption>Five common myths about AI at work, and the more honest reality for each.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Hype versus evidence</h3>
          <p>You will see headlines like "AI saves 50% of admin time". Some of these come from vendors, small tests or surveys where people guess their own savings. A number can be true in one place and wrong in yours.</p>
          <p>When you hear a claim, ask five questions:</p>
          <table class="lc-table">
            <thead><tr><th>Question</th><th>Why it matters</th></tr></thead>
            <tbody>
              <tr><td><strong>Who measured it?</strong></td><td>A vendor has a reason to show the best result.</td></tr>
              <tr><td><strong>On what work?</strong></td><td>A result from large hospitals may not fit 6 small clinics.</td></tr>
              <tr><td><strong>Compared to what?</strong></td><td>You need a "before" number. Without it, a saving is a guess.</td></tr>
              <tr><td><strong>For how long?</strong></td><td>Results in week one can fade, or grow, as people learn.</td></tr>
              <tr><td><strong>Did they count checking time?</strong></td><td>If a draft takes 5 minutes to check, the saving is smaller.</td></tr>
            </tbody>
          </table>
          <p>A vendor tells Maple Street Health that its AI scribe "saves every clinician 2 hours a day". Daniel compares it with Maple's own time survey (made-up data). Clinicians spend about 3 hours a week each on notes after visits. Two hours a day would be about 10 hours a week. That is more than the time they spend now. So the claim cannot be true for Maple, whatever it means elsewhere.</p>
        </div>
        <div class="lc-card">
          <h3>Why AI pilots fail</h3>
          <p>A <strong>pilot</strong> (a small, time-limited test with a few people) is the safe way to try AI. Pilots often fail for reasons that have little to do with the technology.</p>
          <table class="lc-table">
            <thead><tr><th>Reason</th><th>Warning sign</th><th>What to do instead</th></tr></thead>
            <tbody>
              <tr><td>No clear problem</td><td>"Let's try AI and see."</td><td>Start from one pain point with a number, such as hours a week.</td></tr>
              <tr><td>No owner</td><td>Everyone is "involved"; nobody decides.</td><td>Name one owner and one sponsor.</td></tr>
              <tr><td>The work did not change</td><td>The tool is added on top of the old steps.</td><td>Redesign the steps. Remove the work AI replaces.</td></tr>
              <tr><td>Staff were not asked</td><td>People quietly avoid the tool.</td><td>Involve the people who do the work from day one.</td></tr>
              <tr><td>No "before" number</td><td>Nobody can say if it worked.</td><td>Measure the current time, errors or delays first.</td></tr>
              <tr><td>Data and rules come late</td><td>Legal or IT stops the pilot halfway.</td><td>Check data, privacy and security before you start.</td></tr>
            </tbody>
          </table>
          <p>A made-up example: in 2025, Maple switched on a free website chatbot. Nobody owned it and nobody tested it. It told patients the wrong opening hours for the Flushing clinic. Staff turned it off after three weeks. The lesson was not "AI does not work". The lesson was "we skipped the basics".</p>
        </div>
        <div class="lc-card">
          <h3>Setting honest expectations</h3>
          <p>Honest expectations protect you and your team. Use these rules when you talk about AI plans:</p>
          <ul class="lc-list">
            <li><strong>Give ranges, not one number.</strong> Say "we expect to save 20 to 40% of note time" rather than "40%".</li>
            <li><strong>Plan a learning period.</strong> People may be slower at first while they learn a new tool.</li>
            <li><strong>Count the checking time.</strong> AI drafts still need a person to read them.</li>
            <li><strong>Say what will not change.</strong> At Maple, Rosa promised no job cuts from the first AI programme.</li>
            <li><strong>Agree what "success" means before you start.</strong> Then nobody moves the goal later.</li>
          </ul>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>How much time will AI save my team?</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Our 42 clinicians each spend about 3 hours a week on notes after
        patient visits. A vendor says its AI scribe saves "2 hours a day".
        1. Check if that claim is possible for us. Show the maths.
        2. Give a low, likely and high estimate of hours saved per week,
           and list the assumptions behind each one.
        3. Include the time clinicians need to check each AI draft.
        Do not use outside statistics. Use only my numbers.</code></pre>
          <p>The AI can check logic and show ranges. You still choose which estimate to plan with, and you test it in a pilot.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: check a vendor claim</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Daniel asks AI">"A vendor says its AI scribe saves every clinician 2 hours a day. What should I ask before I believe it?"</li>
              <li data-kind="answer" data-label="AI replies">The AI lists questions: who measured it, on what kind of clinic, compared to what, for how long, and whether checking time was counted.</li>
              <li data-kind="tool" data-label="Daniel emails the vendor">Daniel sends the five questions to the vendor's sales contact.</li>
              <li data-kind="result" data-label="Vendor answers">The figure came from a survey of 12 clinics. Clinicians guessed their own savings. Checking time was not counted.</li>
              <li data-kind="warn" data-label="Spot the problem">A self-reported survey is weak evidence. Also, Maple clinicians only spend about 3 hours a week on notes after visits. Two hours a day is about 10 hours a week, so the claim cannot fit Maple.</li>
              <li data-kind="thought" data-label="Daniel thinks">"The tool may still help. I need our own number, not theirs."</li>
              <li data-kind="check" data-label="Daniel decides">He plans with a likely case of 30% of note time saved (a range of 20 to 40%). He proposes a small pilot to measure the real result.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Paste a real AI claim you have heard from a vendor, a news story or a colleague. Ask AI to test it against your own situation.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a careful, practical adviser to managers. Use simple English.

        Here is an AI claim I heard: "[Our AI scribe saves every clinician 2 hours a day]".
        Source of the claim: [a vendor sales presentation].
        My situation: [6 clinics in New York, 42 clinicians, each spends about 3 hours a week on notes after visits].

        Please:
        1. List the 5 most important questions I should ask about this claim (who measured it, on what work, compared to what, for how long, was checking time counted).
        2. Check if the claim is even possible for my situation. Show the simple maths.
        3. List 3 warning signs that the claim may be hype.
        4. Suggest a small, low-risk test (who, how long, what to measure before and after) so I can get my own number.
        5. Write 3 sentences I could say to my boss to set honest expectations.

        Use only the numbers I gave you. Do not invent studies or statistics. If you are unsure, say so.</pre>
            <ul class="ai-try-checks">
              <li>The maths uses your numbers and is correct (check it yourself).</li>
              <li>No invented studies, surveys or percentages.</li>
              <li>The test has a "before" measure and an "after" measure.</li>
              <li>The message to your boss gives a range, not a promise.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Trust your own numbers more than anyone's headline. Ask how a claim was measured, check if it is even possible for your work, then run a small test. Honest, modest goals that you meet build more trust than big promises you miss.
        </div>
      HTML
      starter_code: nil
    },
    3 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mgmt">Management</div>
          <h1 class="lc-title">AI Rules and Risks</h1>
        </div>
        <p class="lc-lead">Before you use AI with real data, you need to know which rules apply and which risks to manage. In this lesson you will learn the basics of data protection, the EU AI Act, and the UK and US approaches to AI, in general words. You will also learn the main security risks and how to record them in a simple risk register. This is general education, not legal advice. For real decisions, check with a qualified lawyer or data protection adviser.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 330" role="img" aria-label="Left: rules in general terms. EU: the EU AI Act sets rules by risk level: banned, high-risk, transparency and minimal. UK: no single AI law yet; UK GDPR, the Data (Use and Access) Act and sector regulators. US: no single federal AI law; HIPAA, the FTC and anti-discrimination laws, plus state and city rules. Right: five risks to manage: private data leaking into AI tools, confident but wrong answers, unfair results for some groups, attacks such as prompt injection, and shadow AI, meaning unapproved tools. Bottom note: general education only, not legal advice.">
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <text x="190" y="26" font-weight="700" fill="#c4b5fd" text-anchor="middle">Rules (general view)</text>
              <text x="570" y="26" font-weight="700" fill="#c4b5fd" text-anchor="middle">Risks to manage</text>
              <rect x="20" y="40" width="340" height="78" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="36" y="63" font-weight="700">EU: the EU AI Act</text>
              <text x="36" y="84" font-size="12" fill="#9b99b8">Rules by risk level: banned,</text>
              <text x="36" y="102" font-size="12" fill="#9b99b8">high-risk, transparency, minimal</text>
              <rect x="20" y="128" width="340" height="78" rx="8" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="36" y="151" font-weight="700">UK: no single AI law (yet)</text>
              <text x="36" y="172" font-size="12" fill="#9b99b8">UK GDPR, Data (Use and Access) Act</text>
              <text x="36" y="190" font-size="12" fill="#9b99b8">and sector regulators</text>
              <rect x="20" y="216" width="340" height="78" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="36" y="239" font-weight="700">US: no single federal AI law</text>
              <text x="36" y="260" font-size="12" fill="#9b99b8">HIPAA, FTC, anti-discrimination laws</text>
              <text x="36" y="278" font-size="12" fill="#9b99b8">plus state and city rules</text>
              <g text-anchor="middle">
                <rect x="400" y="40" width="340" height="42" rx="8" fill="#27274e" stroke="#ec4899"/>
                <text x="570" y="66">Private data leaks into AI tools</text>
                <rect x="400" y="92" width="340" height="42" rx="8" fill="#27274e" stroke="#ec4899"/>
                <text x="570" y="118">Confident but wrong answers</text>
                <rect x="400" y="144" width="340" height="42" rx="8" fill="#27274e" stroke="#ec4899"/>
                <text x="570" y="170">Unfair results for some groups</text>
                <rect x="400" y="196" width="340" height="42" rx="8" fill="#27274e" stroke="#ec4899"/>
                <text x="570" y="222">Attacks, such as prompt injection</text>
                <rect x="400" y="248" width="340" height="42" rx="8" fill="#27274e" stroke="#ec4899"/>
                <text x="570" y="274">Shadow AI: unapproved tools</text>
              </g>
              <text x="380" y="318" font-size="12" fill="#9b99b8" text-anchor="middle">General education only. Not legal advice. Rules change, so check the current position.</text>
            </g>
          </svg>
          <figcaption>The main rules in the EU, UK and US in general terms, and the five risks every AI plan must manage.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Start with data protection</h3>
          <p>Most AI risk starts with data. <strong>Personal data</strong> is any information about a person who can be identified, such as a name, email or patient record. Health data is extra sensitive in both the UK and the US.</p>
          <table class="lc-table">
            <thead><tr><th>Where</th><th>Main rules (general)</th><th>What it means for AI</th></tr></thead>
            <tbody>
              <tr><td><strong>US healthcare</strong></td><td>HIPAA (the US health privacy law) protects patient health information, called PHI.</td><td>A vendor that stores or processes PHI for a clinic must sign a <strong>business associate agreement</strong> (BAA: a contract that commits it to protect the data). Use only the minimum data needed.</td></tr>
              <tr><td><strong>UK</strong></td><td>UK GDPR and the Data Protection Act 2018, updated by the Data (Use and Access) Act 2025. The ICO (the UK data regulator) gives guidance on AI.</td><td>You need a lawful reason to use the data. For high-risk uses you need a <strong>DPIA</strong> (data protection impact assessment: a written check of risks to people and how you reduce them).</td></tr>
              <tr><td><strong>EU</strong></td><td>The EU GDPR, plus the EU AI Act.</td><td>Similar duties to the UK, plus AI-specific rules for some uses.</td></tr>
            </tbody>
          </table>
          <p>One simple rule works everywhere: <strong>never paste personal, patient, staff or confidential data into a free or public AI tool.</strong> Use only tools your organisation has approved. Approved tools should have a business contract that says how data is stored and whether it is used to train the AI.</p>
        </div>
        <div class="lc-card">
          <h3>AI-specific rules in the EU, UK and US</h3>
          <p><strong>The EU AI Act</strong> sorts AI uses by risk level:</p>
          <ul class="lc-list">
            <li><strong>Banned:</strong> a short list of harmful uses, such as social scoring of people. These bans have applied since February 2025.</li>
            <li><strong>High-risk:</strong> for example, AI used to hire or manage workers, or AI inside medical devices. These uses need strict controls. A 2026 change to the Act, Regulation (EU) 2026/1744, moved most of these rules to December 2027 or later.</li>
            <li><strong>Transparency:</strong> for example, people must be told when they are talking to a chatbot. Most of these duties apply from August 2026.</li>
            <li><strong>Minimal risk:</strong> most everyday uses, such as drafting an email, have few extra duties.</li>
          </ul>
          <p>The Act can apply to organisations outside the EU when their AI is used in the EU. Bluefern Digital, a made-up London agency, has clients in France and Germany. Its team lead, Hannah Price, should ask a lawyer whether any of its AI services fall under the Act.</p>
          <p><strong>The UK</strong> has no single AI law at the moment. Existing regulators, such as the ICO, apply existing laws to AI in their own areas. <strong>The US</strong> has no single federal AI law either. Existing laws still apply: HIPAA for health data, the FTC (Federal Trade Commission) for unfair or misleading practices, and anti-discrimination laws. Some states and cities add their own rules. For example, New York City's Local Law 144 requires bias audits for some automated hiring tools.</p>
          <p>These rules are changing fast. Check the current position with a qualified adviser before you rely on any date.</p>
        </div>
        <div class="lc-card">
          <h3>Security risks and a simple risk register</h3>
          <p>AI tools also bring new security risks:</p>
          <ul class="lc-list">
            <li><strong>Data leaks:</strong> staff paste private data into a tool that keeps or shares it.</li>
            <li><strong>Prompt injection:</strong> hidden instructions in an email, web page or file trick the AI into doing something it should not.</li>
            <li><strong>Shadow AI:</strong> staff use tools that IT has not approved, often with good intentions.</li>
            <li><strong>Too much access:</strong> an AI tool can see files or inboxes that the user should not see.</li>
          </ul>
          <p>Record each risk in a <strong>risk register</strong> (a table of risks, how likely and serious each one is, the owner and the action). Here is part of Maple Street Health's register for the AI scribe idea (made up):</p>
          <table class="lc-table">
            <thead><tr><th>Risk</th><th>Likelihood</th><th>Impact</th><th>Owner</th><th>Action</th></tr></thead>
            <tbody>
              <tr><td>AI note contains a wrong medicine or dose</td><td>Medium</td><td>High</td><td>Dr Priya Nair</td><td>Clinician reads and signs every note. Track errors found.</td></tr>
              <tr><td>Vendor stores recordings without proper protection</td><td>Low</td><td>High</td><td>Marcus Bell</td><td>BAA signed and security review passed before any use.</td></tr>
              <tr><td>Patients are not told an AI is listening</td><td>Medium</td><td>High</td><td>Rosa Delgado</td><td>Clear notice and consent step. Lawyer checks New York and federal rules.</td></tr>
              <tr><td>Staff use a free AI tool for patient letters</td><td>Medium</td><td>High</td><td>Marcus Bell</td><td>Block unapproved tools. Give staff an approved option and training.</td></tr>
            </tbody>
          </table>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Is AI legal for clinics?</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>We are a group of 6 clinics in New York. We are thinking about an
        AI scribe that drafts clinical notes from recorded visits.
        List the main privacy, safety and security risks, in general terms.
        For each risk, suggest one control and the type of expert to ask
        (lawyer, privacy officer, IT security, clinical lead).
        Show it as a risk register table. This is for planning only,
        not legal advice. Say where rules may have changed recently.</code></pre>
          <p>The AI helps you build a first list. A lawyer, your privacy officer and your security lead must check it.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: allowed, review first, or do not do</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each made-up AI use by what Maple Street Health should do.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="ok" data-label="OK with an approved tool"></div>
              <div data-sorter-target="bucket" data-bucket="review" data-label="Review first"></div>
              <div data-sorter-target="bucket" data-bucket="no" data-label="Do not do"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="ok" data-why="No personal data and low risk. A manager checks the draft before it is sent.">Draft an agenda for the monthly managers' meeting.</li>
              <li data-bucket="ok" data-why="Public, non-personal information. Someone checks facts before publishing.">Summarise new public guidance on flu season for a staff update.</li>
              <li data-bucket="review" data-why="It uses patient data, so it needs a BAA, a security review, a consent process and clinical sign-off.">Use an AI scribe to draft notes from patient visits.</li>
              <li data-bucket="review" data-why="A chatbot that talks to patients needs testing, a clear notice that it is AI and a safe route to a person for urgent needs.">Add an AI chat helper to the booking page.</li>
              <li data-bucket="no" data-why="Patient data must never go into a free, public AI tool. There is no BAA and no control over the data.">Paste a patient's test results into a free chatbot to write a letter.</li>
              <li data-bucket="no" data-why="Decisions about people's jobs must be made by people. AI scoring of staff could also be unfair and hard to explain.">Let AI decide which front desk staff to move to part-time.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to draft a first risk register for one AI idea in your organisation. Then take it to your legal, privacy and IT leads.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a risk and compliance adviser who explains things in simple English. This is for planning only, not legal advice.

        Organisation: [Maple Street Health, 6 primary care clinics in New York].
        AI idea: [an AI tool that drafts replies to patient messages in our patient portal; a clinician approves each reply before it is sent].
        Data involved: [patient names, symptoms, medicines, appointment details].
        Countries where we work or have customers: [US only].

        Please:
        1. Name the types of rules that may apply, in general words (data protection, health privacy, AI-specific rules, sector rules). Say which experts should confirm them.
        2. Build a risk register table with 6 risks. Columns: Risk, Likelihood (Low/Medium/High), Impact (Low/Medium/High), Control, Owner role.
        3. Include at least one privacy risk, one accuracy risk, one fairness risk and one security risk.
        4. List 3 questions to ask the vendor before any real data is used.

        Do not quote exact fines or legal details you are not sure about. Mark anything that may have changed recently.</pre>
            <ul class="ai-try-checks">
              <li>It says clearly that this is not legal advice and names experts to check with.</li>
              <li>The register covers privacy, accuracy, fairness and security.</li>
              <li>Every risk has a control and an owner role.</li>
              <li>No invented fines, dates or law names; check any law it names yourself.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> You do not need to be a lawyer to lead AI safely. You need to ask the right questions early: what data does it use, which rules may apply, what could go wrong and who owns each risk. Then bring in your legal, privacy and security experts before real data goes anywhere.
        </div>
      HTML
      starter_code: nil
    },
    4 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mgmt">Management</div>
          <h1 class="lc-title">Finding Use Cases</h1>
        </div>
        <p class="lc-lead">A <strong>use case</strong> is one specific job where AI could help, such as "draft replies to patient messages". Good use cases start from real problems, not from a tool someone wants to buy. In this lesson you will learn where to look for pain points and how to collect facts from staff. You will also learn to test if a task fits AI and to write a clear use case card. You will see how Daniel Kim builds a long list of 8 ideas for Maple Street Health.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 350" role="img" aria-label="Top: four steps from pain points to a long list. One, listen to staff with interviews and a time diary. Two, find pain points that are slow, repeated or late. Three, check AI fit: text, clear rules and volume. Four, write one use case card each. Bottom: a bar chart of made-up staff hours a week at Maple Street Health. Phone calls 160 hours, clinical notes 126, portal replies 80, reminder texts 60, prior authorisation letters 50, policy questions 20, meeting notes 15. Use case 8, no-show prediction, is about 300 missed appointments a month, not hours.">
            <defs><marker id="asl4a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <text x="380" y="22" font-weight="700" fill="#c4b5fd" text-anchor="middle">From pain points to a long list</text>
              <g text-anchor="middle">
                <rect x="20" y="34" width="165" height="54" rx="8" fill="#1f1f44" stroke="#8b5cf6"/>
                <text x="102" y="56" font-weight="700">1. Listen to staff</text>
                <text x="102" y="76" font-size="11" fill="#9b99b8">interviews, time diary</text>
                <rect x="210" y="34" width="165" height="54" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
                <text x="292" y="56" font-weight="700">2. Find pain points</text>
                <text x="292" y="76" font-size="11" fill="#9b99b8">slow, repeated, late</text>
                <rect x="400" y="34" width="165" height="54" rx="8" fill="#1f1f44" stroke="#22d3ee"/>
                <text x="482" y="56" font-weight="700">3. Check AI fit</text>
                <text x="482" y="76" font-size="11" fill="#9b99b8">text, clear rules, volume</text>
                <rect x="590" y="34" width="150" height="54" rx="8" fill="#1f1f44" stroke="#10b981"/>
                <text x="665" y="56" font-weight="700">4. Write cards</text>
                <text x="665" y="76" font-size="11" fill="#9b99b8">one per use case</text>
              </g>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#asl4a)">
                <line x1="187" y1="61" x2="206" y2="61"/>
                <line x1="377" y1="61" x2="396" y2="61"/>
                <line x1="567" y1="61" x2="586" y2="61"/>
              </g>
              <text x="20" y="116" font-weight="700" fill="#c4b5fd">Maple Street Health: staff hours a week today (made up)</text>
              <g font-size="12">
                <text x="20" y="143">UC2 Phone calls</text>
                <rect x="190" y="130" width="440" height="16" rx="3" fill="#f59e0b"/>
                <text x="638" y="143">160 h</text>
                <text x="20" y="169">UC3 Clinical notes</text>
                <rect x="190" y="156" width="347" height="16" rx="3" fill="#ec4899"/>
                <text x="545" y="169">126 h</text>
                <text x="20" y="195">UC5 Portal replies</text>
                <rect x="190" y="182" width="220" height="16" rx="3" fill="#8b5cf6"/>
                <text x="418" y="195">80 h</text>
                <text x="20" y="221">UC1 Reminder texts</text>
                <rect x="190" y="208" width="165" height="16" rx="3" fill="#3b82f6"/>
                <text x="363" y="221">60 h</text>
                <text x="20" y="247">UC4 Prior auth letters</text>
                <rect x="190" y="234" width="138" height="16" rx="3" fill="#22d3ee"/>
                <text x="336" y="247">50 h</text>
                <text x="20" y="273">UC6 Policy questions</text>
                <rect x="190" y="260" width="55" height="16" rx="3" fill="#10b981"/>
                <text x="253" y="273">20 h</text>
                <text x="20" y="299">UC7 Meeting notes</text>
                <rect x="190" y="286" width="41" height="16" rx="3" fill="#10b981"/>
                <text x="239" y="299">15 h</text>
              </g>
              <text x="20" y="332" font-size="12" fill="#9b99b8">UC8 No-show prediction: about 300 missed appointments a month (not hours)</text>
            </g>
          </svg>
          <figcaption>Four steps turn staff pain points into use cases. The bar chart shows where Maple Street Health's staff time goes today.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Where to look for use cases</h3>
          <p>A <strong>pain point</strong> is a part of the work that is slow, boring, stressful or full of mistakes. Look for these signs:</p>
          <ul class="lc-list">
            <li><strong>Repeated work:</strong> the same kind of email, letter or form, many times a week.</li>
            <li><strong>Text-heavy work:</strong> reading, summarising or writing long documents.</li>
            <li><strong>Waiting:</strong> customers or patients wait because staff are busy with admin.</li>
            <li><strong>After-hours work:</strong> people finish tasks in the evening, such as clinical notes.</li>
            <li><strong>Searching:</strong> staff hunt for answers in policies, folders or old emails.</li>
            <li><strong>Rework:</strong> errors that must be fixed later, such as claims sent back by insurers.</li>
          </ul>
          <p>Collect facts, not opinions. Use three simple methods:</p>
          <ul class="lc-list">
            <li><strong>Short interviews:</strong> ask 5 to 8 people, "What takes too long? What do you do again and again? What would you stop doing if you could?"</li>
            <li><strong>A one-week time diary:</strong> staff note roughly how long they spend on each main task.</li>
            <li><strong>Watching the work:</strong> sit with a person for an hour and see the real steps.</li>
          </ul>
          <p>Daniel did all three across Maple's 6 clinics. Keisha Brown, front desk lead at the Astoria clinic, told him: "We spend half the morning on the phone moving appointments."</p>
        </div>
        <div class="lc-card">
          <h3>Does the task fit AI?</h3>
          <p>Not every pain point needs AI. Some need a better process, a simple form or one clear rule. Use this quick fit test:</p>
          <table class="lc-table">
            <thead><tr><th>Question</th><th>Good sign for AI</th><th>Warning sign</th></tr></thead>
            <tbody>
              <tr><td>How often does it happen?</td><td>Many times a week</td><td>A few times a year</td></tr>
              <tr><td>Is it mostly text, speech or patterns?</td><td>Letters, notes, messages, schedules</td><td>Physical work or face-to-face care</td></tr>
              <tr><td>Can a person check the output quickly?</td><td>A draft takes a minute to check</td><td>Checking takes as long as doing it</td></tr>
              <tr><td>Is the data available and allowed?</td><td>Approved tool, data in good order</td><td>Data is messy or must not be shared</td></tr>
              <tr><td>What if AI is wrong?</td><td>The mistake is easy to catch</td><td>A mistake could harm someone</td></tr>
              <tr><td>Is the real problem the process?</td><td>The process is clear and works</td><td>Nobody agrees on the steps</td></tr>
            </tbody>
          </table>
          <p>A "warning sign" does not always mean "no". It means the idea needs more care, more checks or a fix to the process first.</p>
        </div>
        <div class="lc-card">
          <h3>Write a use case card</h3>
          <p>Write each idea on a one-page <strong>use case card</strong>. It makes ideas easy to compare later. Here is Daniel's card for one idea (made-up numbers):</p>
          <pre><code>USE CASE CARD: UC5 Patient portal reply drafts
        Problem:      Nurses spend about 80 hours a week (all clinics) answering
                      patient portal messages. Replies are often late.
        Who:          38 nurses and medical assistants
        AI role:      Draft a reply from the message and the patient's
                      appointment details. Suggest "needs a clinician" when
                      symptoms sound urgent.
        Human check:  A nurse edits each draft. A clinician approves every
                      reply before it is sent.
        Data used:    Patient messages and records (PHI). Needs an approved
                      tool with a business associate agreement (BAA).
        Measure:      Hours a week on replies; average reply time; errors found.
        Concerns:     Nurses worry about blame if a draft is wrong.</code></pre>
          <p>Daniel's long list has 8 use cases (all made up):</p>
          <table class="lc-table">
            <thead><tr><th>ID</th><th>Use case</th><th>Staff group</th><th>Time today</th></tr></thead>
            <tbody>
              <tr><td>UC1</td><td>Appointment reminder and rebooking texts</td><td>Front desk</td><td>60 h a week</td></tr>
              <tr><td>UC2</td><td>AI phone assistant for routine calls</td><td>Front desk</td><td>160 h a week</td></tr>
              <tr><td>UC3</td><td>Clinical note drafts (AI scribe)</td><td>Clinicians</td><td>126 h a week (42 × 3 h)</td></tr>
              <tr><td>UC4</td><td>Prior authorisation letter drafts</td><td>Medical assistants</td><td>50 h a week</td></tr>
              <tr><td>UC5</td><td>Patient portal reply drafts</td><td>Nurses</td><td>80 h a week</td></tr>
              <tr><td>UC6</td><td>Staff policy Q&amp;A assistant</td><td>Managers</td><td>20 h a week</td></tr>
              <tr><td>UC7</td><td>Meeting notes and action items</td><td>Managers</td><td>15 h a week</td></tr>
              <tr><td>UC8</td><td>No-show prediction and fill-the-gap lists</td><td>Front desk</td><td>About 300 missed visits a month</td></tr>
            </tbody>
          </table>
          <p><strong>Prior authorisation</strong> means asking a patient's insurer to approve a treatment before it happens. It needs letters and forms.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Give me 20 AI ideas for my business.</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Here are anonymised notes from 6 staff interviews at our clinics
        (no names or patient details): [paste notes].
        1. List each pain point, who has it and roughly how often.
        2. For each one, say if it fits AI, needs a process fix first, or
           is not suitable for AI. Give one reason.
        3. Turn the AI-suitable ones into use case cards with: problem,
           who, AI role, human check, data used, measure.
        Use only what is in the notes. Mark any guess as a guess.</code></pre>
        </div>
        <div class="lc-card">
          <h3>Activity: put the steps in order</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put Daniel's steps for finding use cases in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Agree the goal with Rosa: find work where AI could save time or improve service.</li>
              <li data-order="2">Interview staff in each clinic and run a one-week time diary.</li>
              <li data-order="3">List the pain points with rough hours a week for each.</li>
              <li data-order="4">Use the fit test to mark each one: fits AI, fix the process first, or not for AI.</li>
              <li data-order="5">Write a use case card for each idea that fits AI.</li>
              <li data-order="6">Share the long list with staff and ask what is missing or wrong.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Use AI to turn rough interview notes into a clean list of pain points and use case cards. Remove names and private details first.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a business analyst who helps managers find good uses for AI. Use simple English.

        Organisation: [Maple Street Health, 6 primary care clinics in New York].
        Here are anonymised notes from staff interviews (no names, no patient details):
        [Front desk: "We spend half the morning on the phone moving appointments." Nurse: "Portal messages pile up; I answer them at home." Manager: "People ask me the same leave policy questions every week." Medical assistant: "Insurance approval letters take ages and get sent back."]

        Please:
        1. List each pain point, who has it, and a rough guess of hours a week (mark guesses clearly).
        2. Use this fit test for each: How often? Mostly text or patterns? Can a person check it quickly? Is the data allowed? What if AI is wrong? Then label it: Fits AI, Fix the process first, or Not for AI.
        3. For each idea that fits AI, write a short use case card: problem, who, AI role, human check, data used, measure, staff concerns.
        4. Suggest 2 follow-up questions I should ask staff.

        Do not invent facts that are not in the notes.</pre>
            <ul class="ai-try-checks">
              <li>Every hours figure from the AI is marked as a guess, so you can check it with a time diary.</li>
              <li>Each card has a human check and names the data used.</li>
              <li>At least one idea is labelled "Fix the process first" or "Not for AI" if the notes support it.</li>
              <li>Ideas using patient or staff data mention an approved, secure tool.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> The best AI ideas come from the people who do the work. Start with pain points and real hours, test each one for fit, and write it on a simple card. A long list built on facts makes the next step, choosing what to do first, much easier and fairer.
        </div>
      HTML
      starter_code: nil
    },
    5 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mgmt">Management</div>
          <h1 class="lc-title">Prioritising Use Cases</h1>
        </div>
        <p class="lc-lead">You will always have more AI ideas than time, money or people. Prioritising means choosing what to do first, what to do later and what to drop, in a way others can understand. In this lesson you will compare ideas by value, effort and risk. You will place them on a simple grid and score them with a weighted matrix. You will follow Daniel Kim as he ranks Maple Street Health's 8 use cases against a $150,000 first-year budget.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 380" role="img" aria-label="A value versus effort grid for Maple Street Health's 8 made-up use cases. Effort runs left to right from low to high. Value runs bottom to top from low to high. Quick wins, top left: use case 1, reminder texts. Big bets, top right: use cases 2 phone assistant, 3 AI scribe, 4 prior authorisation letters, 5 portal replies and 8 no-show prediction. Fill-ins, bottom left: use cases 6 policy Q and A and 7 meeting notes. Avoid for now, bottom right: none. Colour shows risk: green low, amber medium, pink high. A list on the right gives each weighted score: 3 AI scribe 3.70, 1 reminder texts 3.60, 7 meeting notes 3.55, 6 policy Q and A 3.45, 4 prior authorisation letters 3.15, 5 portal replies 3.15, 2 phone assistant 2.80, 8 no-show prediction 2.80.">
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <rect x="80" y="40" width="144" height="180" fill="#1f1f44" stroke="#3a3a6a"/>
              <rect x="224" y="40" width="216" height="180" fill="#27274e" stroke="#3a3a6a"/>
              <rect x="80" y="220" width="144" height="120" fill="#27274e" stroke="#3a3a6a"/>
              <rect x="224" y="220" width="216" height="120" fill="#1f1f44" stroke="#3a3a6a"/>
              <text x="88" y="58" font-size="12" font-weight="700" fill="#6ee7b7">Quick wins</text>
              <text x="432" y="58" font-size="12" font-weight="700" fill="#fcd34d" text-anchor="end">Big bets</text>
              <text x="88" y="332" font-size="12" font-weight="700" fill="#93c5fd">Fill-ins</text>
              <text x="432" y="332" font-size="12" font-weight="700" fill="#f9a8d4" text-anchor="end">Avoid for now</text>
              <text x="260" y="364" font-size="12" fill="#9b99b8" text-anchor="middle">Effort: low → high</text>
              <text x="44" y="194" font-size="12" fill="#9b99b8" text-anchor="middle">Value</text>
              <text x="72" y="56" font-size="11" fill="#9b99b8" text-anchor="end">high</text>
              <text x="72" y="336" font-size="11" fill="#9b99b8" text-anchor="end">low</text>
              <g text-anchor="middle" font-size="12" font-weight="700">
                <circle cx="188" cy="190" r="14" fill="#1f1f44" stroke="#10b981" stroke-width="2"/>
                <text x="188" y="194">1</text>
                <circle cx="332" cy="130" r="14" fill="#1f1f44" stroke="#ec4899" stroke-width="2"/>
                <text x="332" y="134">2</text>
                <circle cx="260" cy="76" r="14" fill="#1f1f44" stroke="#ec4899" stroke-width="2"/>
                <text x="260" y="80">3</text>
                <circle cx="260" cy="190" r="14" fill="#1f1f44" stroke="#f59e0b" stroke-width="2"/>
                <text x="260" y="194">4</text>
                <circle cx="260" cy="130" r="14" fill="#1f1f44" stroke="#ec4899" stroke-width="2"/>
                <text x="260" y="134">5</text>
                <circle cx="188" cy="250" r="14" fill="#1f1f44" stroke="#10b981" stroke-width="2"/>
                <text x="188" y="254">6</text>
                <circle cx="116" cy="250" r="14" fill="#1f1f44" stroke="#10b981" stroke-width="2"/>
                <text x="116" y="254">7</text>
                <circle cx="332" cy="190" r="14" fill="#1f1f44" stroke="#f59e0b" stroke-width="2"/>
                <text x="332" y="194">8</text>
              </g>
              <text x="470" y="40" font-weight="700" fill="#c4b5fd">Weighted score (out of 5)</text>
              <g font-size="12">
                <text x="470" y="70">3  AI scribe</text><text x="740" y="70" text-anchor="end">3.70</text>
                <text x="470" y="96">1  Reminder texts</text><text x="740" y="96" text-anchor="end">3.60</text>
                <text x="470" y="122">7  Meeting notes</text><text x="740" y="122" text-anchor="end">3.55</text>
                <text x="470" y="148">6  Policy Q&amp;A</text><text x="740" y="148" text-anchor="end">3.45</text>
                <text x="470" y="174">4  Prior auth letters</text><text x="740" y="174" text-anchor="end">3.15</text>
                <text x="470" y="200">5  Portal replies</text><text x="740" y="200" text-anchor="end">3.15</text>
                <text x="470" y="226">2  Phone assistant</text><text x="740" y="226" text-anchor="end">2.80</text>
                <text x="470" y="252">8  No-show prediction</text><text x="740" y="252" text-anchor="end">2.80</text>
              </g>
              <text x="470" y="290" font-size="12" fill="#9b99b8">Circle colour = risk:</text>
              <circle cx="480" cy="312" r="6" fill="none" stroke="#10b981" stroke-width="2"/>
              <text x="492" y="316" font-size="12">low</text>
              <circle cx="540" cy="312" r="6" fill="none" stroke="#f59e0b" stroke-width="2"/>
              <text x="552" y="316" font-size="12">medium</text>
              <circle cx="622" cy="312" r="6" fill="none" stroke="#ec4899" stroke-width="2"/>
              <text x="634" y="316" font-size="12">high</text>
            </g>
          </svg>
          <figcaption>Maple Street Health's 8 made-up use cases on a value versus effort grid, with risk shown by colour and the weighted score on the right.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Choose your criteria and scales</h3>
          <p>First agree how you will judge each idea. Keep it to 3 to 5 <strong>criteria</strong> (the things you compare). Score each one from 1 to 5, and write down what 1 and 5 mean so everyone scores the same way.</p>
          <table class="lc-table">
            <thead><tr><th>Criterion</th><th>1 means</th><th>5 means</th><th>Who scores it at Maple</th></tr></thead>
            <tbody>
              <tr><td><strong>Value</strong></td><td>Small time saving, little effect on patients</td><td>Large time saving or a clear gain for patients</td><td>Daniel with clinic managers</td></tr>
              <tr><td><strong>Effort</strong></td><td>A setting in a tool we already have</td><td>New systems, links to patient records, months of work</td><td>Marcus Bell (IT)</td></tr>
              <tr><td><strong>Risk</strong></td><td>No personal data; mistakes are easy to catch</td><td>Patient data; a mistake could harm someone</td><td>Dr Priya Nair and Marcus</td></tr>
              <tr><td><strong>Staff support</strong></td><td>Staff are against it</td><td>Staff asked for it</td><td>Team leads, such as Keisha Brown</td></tr>
            </tbody>
          </table>
          <p>For Effort and Risk, a high score is bad. So you turn them round before you add them up: <strong>Ease = 6 − Effort</strong> and <strong>Low risk = 6 − Risk</strong>. Now a high number is always good.</p>
        </div>
        <div class="lc-card">
          <h3>The value versus effort grid</h3>
          <p>A simple first view is a 2 × 2 grid. Put value on one side and effort on the other. Each idea lands in one of four boxes:</p>
          <ul class="lc-list">
            <li><strong>Quick wins</strong> (high value, low effort): do these early. At Maple: UC1 reminder texts.</li>
            <li><strong>Big bets</strong> (high value, high effort): worth it, but plan carefully and test with a pilot first. At Maple: UC2, UC3, UC4, UC5 and UC8.</li>
            <li><strong>Fill-ins</strong> (low value, low effort): cheap, useful, good for learning. At Maple: UC6 policy Q&amp;A and UC7 meeting notes.</li>
            <li><strong>Avoid for now</strong> (low value, high effort): park these. Maple has none.</li>
          </ul>
          <p>The grid hides one big thing: <strong>risk</strong>. That is why the diagram shows risk as colour. UC3, the AI scribe, has the highest value. It also has high risk, because it uses patient data and affects care. A big bet with high risk should start small, with strong checks.</p>
        </div>
        <div class="lc-card">
          <h3>The weighted scoring matrix</h3>
          <p>A <strong>weighted scoring matrix</strong> (a table where each criterion has a weight, so the most important ones count more) gives one number per idea. Rosa and Daniel agreed these weights: Value 40%, Ease 20%, Low risk 25%, Staff support 15%. The weights add up to 100%.</p>
          <p>In a spreadsheet, put Value in column B, Effort in C, Risk in D and Staff support in E. Then the score formula for row 2 is:</p>
          <pre><code>=0.4*B2 + 0.2*(6-C2) + 0.25*(6-D2) + 0.15*E2</code></pre>
          <p>Worked example for UC3, the AI scribe: <code>0.4 × 5 + 0.2 × (6 − 3) + 0.25 × (6 − 4) + 0.15 × 4 = 2.00 + 0.60 + 0.50 + 0.60 = 3.70</code>.</p>
          <table class="lc-table">
            <thead><tr><th>ID</th><th>Use case</th><th>Value</th><th>Effort</th><th>Risk</th><th>Staff support</th><th>Score</th><th>Year-1 cost (estimate)</th></tr></thead>
            <tbody>
              <tr><td>UC3</td><td>AI scribe</td><td>5</td><td>3</td><td>4</td><td>4</td><td><strong>3.70</strong></td><td>$100,600</td></tr>
              <tr><td>UC1</td><td>Reminder texts</td><td>3</td><td>2</td><td>2</td><td>4</td><td><strong>3.60</strong></td><td>$20,000</td></tr>
              <tr><td>UC7</td><td>Meeting notes</td><td>2</td><td>1</td><td>2</td><td>5</td><td><strong>3.55</strong></td><td>$9,200</td></tr>
              <tr><td>UC6</td><td>Policy Q&amp;A</td><td>2</td><td>2</td><td>1</td><td>4</td><td><strong>3.45</strong></td><td>$11,000</td></tr>
              <tr><td>UC4</td><td>Prior auth letters</td><td>3</td><td>3</td><td>3</td><td>4</td><td><strong>3.15</strong></td><td>$33,000</td></tr>
              <tr><td>UC5</td><td>Portal replies</td><td>4</td><td>3</td><td>4</td><td>3</td><td><strong>3.15</strong></td><td>$32,000</td></tr>
              <tr><td>UC2</td><td>Phone assistant</td><td>4</td><td>4</td><td>4</td><td>2</td><td><strong>2.80</strong></td><td>$66,000</td></tr>
              <tr><td>UC8</td><td>No-show prediction</td><td>3</td><td>4</td><td>3</td><td>3</td><td><strong>2.80</strong></td><td>$35,000</td></tr>
            </tbody>
          </table>
          <p>The year-1 cost is Tom Walsh's rough estimate: set-up cost plus one year of running costs. All 8 together would cost $306,800, about twice the $150,000 budget. So Daniel must choose.</p>
          <p>His draft first wave is UC3, UC1, UC7 and UC6: $100,600 + $20,000 + $9,200 + $11,000 = <strong>$140,800</strong>. That leaves $9,200 spare. Because UC3 is high risk, it starts as a pilot in 2 clinics before any full roll-out. UC2, the phone assistant, is parked. It is costly, staff support is low and urgent calls make it risky.</p>
          <p>Always test your weights. If Risk gets 35% and Value 30%, UC3 drops from first to fourth (3.40), and UC6 and UC7 tie at the top (3.75). When small weight changes flip the order, the decision needs discussion, not just maths.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: score with AI, then check</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Daniel asks AI">"Score these 8 use cases. Weights: Value 40%, Ease 20%, Low risk 25%, Staff support 15%. Ease = 6 − Effort. Low risk = 6 − Risk." He pastes the ratings table, with no patient data.</li>
              <li data-kind="answer" data-label="AI replies">The AI returns a ranked table. It puts UC3, the AI scribe, first with a score of 4.20.</li>
              <li data-kind="tool" data-label="Daniel uses a spreadsheet">Daniel enters the same ratings and the formula =0.4*B2 + 0.2*(6-C2) + 0.25*(6-D2) + 0.15*E2.</li>
              <li data-kind="result" data-label="Spreadsheet shows">UC3 scores 3.70, not 4.20.</li>
              <li data-kind="warn" data-label="Spot the mistake">The AI used Risk (4) instead of Low risk (6 − 4 = 2). That added 0.50 to the score. AI can make maths mistakes that look neat and sure.</li>
              <li data-kind="check" data-label="Daniel checks the rest">He uses the spreadsheet scores only, then tests other weights. With Risk at 35% and Value at 30%, UC3 drops to fourth. He notes this for the decision meeting.</li>
              <li data-kind="thought" data-label="Daniel thinks">"The score is a guide. Rosa, Priya and Marcus must agree the first wave, and staff should see how we decided."</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to build a weighted scoring matrix for your own ideas. Then check every score in a spreadsheet before you share it.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a planning adviser who helps managers choose AI projects. Use simple English.

        My budget for year 1: [$150,000].
        Weights: Value 40%, Ease 20%, Low risk 25%, Staff support 15%. Ease = 6 - Effort. Low risk = 6 - Risk. All ratings are 1 to 5.
        My use cases (Value, Effort, Risk, Staff support, year-1 cost):
        [Reminder texts: 3, 2, 2, 4, $20,000
        AI scribe for clinical notes: 5, 3, 4, 4, $100,600
        Portal reply drafts: 4, 3, 4, 3, $32,000
        Phone assistant: 4, 4, 4, 2, $66,000
        Meeting notes: 2, 1, 2, 5, $9,200]

        Please:
        1. Calculate each score. Show the working for every line.
        2. Rank them in a table and place each on a value versus effort grid (quick win, big bet, fill-in, avoid for now).
        3. Suggest a first wave that fits the budget. Show the cost total.
        4. Flag any high-risk idea that should start as a small pilot.
        5. Change the weights to Value 30% and Low risk 35%. Say if the order changes.

        Do not change my ratings. If something is unclear, ask me.</pre>
            <ul class="ai-try-checks">
              <li>Recalculate at least two scores yourself; check that Effort and Risk were turned round.</li>
              <li>The first wave's total cost is added up correctly and fits the budget.</li>
              <li>High-risk ideas are flagged for a pilot, not a full roll-out.</li>
              <li>The answer treats the score as a guide, not the final decision.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A scoring matrix does not make the decision. It makes your thinking visible. Agree the criteria and weights first, check the maths yourself, test what happens when weights change, and let the right people decide. Staff trust a priority list more when they can see how it was built.
        </div>
      HTML
      starter_code: nil
    },
    6 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mgmt">Management</div>
          <h1 class="lc-title">Build, Buy or Use Existing Tools</h1>
        </div>
        <p class="lc-lead">Once you know which AI ideas come first, you must decide how to get each one. You can turn on AI in tools you already pay for, buy a specialist product, or build your own. In this lesson you will compare the three options, learn the questions to ask every vendor and work out the total cost over three years. You will follow Daniel Kim as he chooses tools for Maple Street Health's first wave. The right choice saves money and avoids risky surprises later.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 365" role="img" aria-label="Three ways to get an AI tool, in the order to check them. One, use existing tools: turn on AI you already pay for. It is fast, low cost and gives less control. At Maple Street Health this fits reminder texts, policy questions and meeting notes. Two, buy a specialist tool: a product made for one job, with a licence fee and vendor checks, taking weeks to months. At Maple this fits the AI scribe. Three, build your own: developers make it for you. It is slow and costly but gives full control. Maple has nothing to build in wave one. An arrow shows that from left to right, time, cost and control all go up. Bottom: total cost of ownership equals licences plus set-up plus links to other systems plus training plus checking time plus exit costs.">
            <defs><marker id="asl6a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <text x="380" y="24" font-weight="700" fill="#c4b5fd" text-anchor="middle">Three ways to get an AI tool (check them in this order)</text>
              <g text-anchor="middle">
                <rect x="20" y="38" width="230" height="40" rx="8" fill="#27274e" stroke="#8b5cf6"/>
                <text x="135" y="63" font-weight="700">1. Use existing tools</text>
                <rect x="265" y="38" width="230" height="40" rx="8" fill="#27274e" stroke="#3b82f6"/>
                <text x="380" y="63" font-weight="700">2. Buy a specialist tool</text>
                <rect x="510" y="38" width="230" height="40" rx="8" fill="#27274e" stroke="#f59e0b"/>
                <text x="625" y="63" font-weight="700">3. Build your own</text>
              </g>
              <rect x="20" y="88" width="230" height="170" rx="8" fill="#1f1f44" stroke="#8b5cf6"/>
              <rect x="265" y="88" width="230" height="170" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
              <rect x="510" y="88" width="230" height="170" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
              <g font-size="12">
                <text x="36" y="115">Turn on AI you already pay for</text>
                <text x="36" y="145">Speed: days or weeks</text>
                <text x="36" y="175">Cost: low</text>
                <text x="36" y="205">Control: less</text>
                <text x="36" y="240" fill="#c4b5fd">Maple: UC1, UC6, UC7</text>
                <text x="281" y="115">A product made for one job</text>
                <text x="281" y="145">Speed: weeks to months</text>
                <text x="281" y="175">Cost: licence fee per user</text>
                <text x="281" y="205">Control: vendor checks</text>
                <text x="281" y="240" fill="#93c5fd">Maple: UC3 AI scribe</text>
                <text x="526" y="115">Developers make it for you</text>
                <text x="526" y="145">Speed: many months</text>
                <text x="526" y="175">Cost: high</text>
                <text x="526" y="205">Control: full, but you test it</text>
                <text x="526" y="240" fill="#fcd34d">Maple: nothing in wave 1</text>
              </g>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#asl6a)">
                <line x1="40" y1="276" x2="716" y2="276"/>
              </g>
              <text x="380" y="298" font-size="12" fill="#9b99b8" text-anchor="middle">Left to right: more time, more cost, more control</text>
              <rect x="20" y="312" width="720" height="40" rx="8" fill="#27274e" stroke="#10b981"/>
              <text x="380" y="337" font-size="12" text-anchor="middle">Total cost of ownership = licences + set-up + links to other systems + training + checking time + exit</text>
            </g>
          </svg>
          <figcaption>The three ways to get an AI tool, from fastest and cheapest to slowest and most costly, and what to count in the total cost.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The three options</h3>
          <p>Always check the options in this order. Many AI needs are already covered by tools you pay for. Building should be the last choice, not the first.</p>
          <table class="lc-table">
            <thead><tr><th>Option</th><th>What it means</th><th>Good when</th><th>Watch out for</th></tr></thead>
            <tbody>
              <tr><td><strong>Use existing tools</strong></td><td>Turn on AI features in software you already have, such as Microsoft 365, Google Workspace, Zoom or your scheduling system.</td><td>The task is common (notes, drafts, summaries) and the data rules are already agreed with that vendor.</td><td>Extra licence fees, features that change often, and AI that can see too many files.</td></tr>
              <tr><td><strong>Buy a specialist tool</strong></td><td>Pay for a product built for one job in your sector.</td><td>The task is specialist, such as clinical notes, and good products exist.</td><td>Vendor claims, links to your main systems, contract terms and how you leave later.</td></tr>
              <tr><td><strong>Build your own</strong></td><td>Pay your own developers or an outside firm to make a tool for you.</td><td>Your need is unusual, it gives you a real advantage and no product fits.</td><td>High cost, long timelines, and you own all the testing, fixes and safety checks.</td></tr>
            </tbody>
          </table>
          <p>Daniel's choices for Maple's first wave (made up):</p>
          <ul class="lc-list">
            <li><strong>UC1 reminder texts: use existing.</strong> Maple's scheduling system vendor offers an AI add-on. That vendor already has a BAA (business associate agreement: a contract that commits it to protect patient data) with Maple.</li>
            <li><strong>UC7 meeting notes: use existing.</strong> Maple already uses Microsoft 365 and Teams. A meeting-notes add-on covers 20 managers and clinic leads, for internal meetings only.</li>
            <li><strong>UC6 policy Q&amp;A: use existing.</strong> The approved work AI assistant is loaded with staff policies only. No patient data goes in.</li>
            <li><strong>UC3 AI scribe: buy.</strong> This is specialist clinical work. Good products exist, and building one would be slow and risky.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Questions to ask every vendor</h3>
          <p>A sales demo shows a tool at its best. Your questions show how it will work for you. Send them in writing and keep the answers.</p>
          <table class="lc-table">
            <thead><tr><th>Area</th><th>Questions</th></tr></thead>
            <tbody>
              <tr><td><strong>Data and privacy</strong></td><td>Will you sign a BAA (or a data processing agreement in the UK)? Do you train your AI on our data? Where is the data stored, and when is it deleted?</td></tr>
              <tr><td><strong>Security</strong></td><td>Can you share a recent SOC 2 Type II report or a HITRUST certification? Do you support single sign-on and two-step login? Do you keep audit logs?</td></tr>
              <tr><td><strong>Quality</strong></td><td>What evidence do you have from organisations like ours? Can we test the tool on our own work before we sign?</td></tr>
              <tr><td><strong>Fit</strong></td><td>Does it link to our main systems? How much admin time does it need each week?</td></tr>
              <tr><td><strong>Money and exit</strong></td><td>How can prices rise? What is the minimum contract length? Can we export our data if we leave?</td></tr>
            </tbody>
          </table>
          <p>A <strong>SOC 2 Type II report</strong> is an independent auditor's report that checks a company's security controls over a period of time. <strong>HITRUST</strong> is a security certification often asked for in US healthcare. Neither one replaces a BAA. Marcus Bell, Maple's IT and security lead, reads these documents before any patient data is used.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>What should I ask an AI vendor?</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>I run a project to choose an AI scribe for 6 primary care clinics
        in New York (42 clinicians). The tool will hear patient visits and
        draft clinical notes into our EHR. Write 15 vendor questions in
        5 groups: data and privacy, security, quality, fit, money and exit.
        For each question, say what a good answer and a warning sign
        look like. Do not name real vendors. Use simple English.</code></pre>
          <p>The AI gives you a strong first list. Marcus and your lawyer still decide which answers are good enough.</p>
        </div>
        <div class="lc-card">
          <h3>Total cost of ownership: a worked example</h3>
          <p><strong>Total cost of ownership</strong> (TCO: everything a tool costs over its life, not just the licence) is the fair way to compare options. Daniel and Tom Walsh, the finance director, compare three ways to get the AI scribe over 3 years. The vendors and prices are made up.</p>
          <table class="lc-table">
            <thead><tr><th>Option</th><th>One-off cost</th><th>Running cost a year</th><th>3-year TCO</th><th>Signs a BAA?</th></tr></thead>
            <tbody>
              <tr><td>ClearNote</td><td>$25,000 (set-up, EHR link, training)</td><td>$75,600 (42 × $150 × 12)</td><td><strong>$251,800</strong></td><td>Yes</td></tr>
              <tr><td>ScribeQuick, standard plan</td><td>$50,000 ($15,000 set-up + $35,000 EHR link)</td><td>$60,480 (42 × $120 × 12)</td><td><strong>$231,440</strong></td><td>No</td></tr>
              <tr><td>ScribeQuick, Enterprise plan</td><td>$50,000</td><td>$75,600 (42 × $150 × 12)</td><td><strong>$276,800</strong></td><td>Yes</td></tr>
              <tr><td>Build with an outside developer</td><td>$180,000</td><td>$45,000</td><td><strong>$315,000</strong></td><td>Maple owns all safety testing</td></tr>
            </tbody>
          </table>
          <p>The formula is simple: <code>3-year TCO = one-off cost + 3 × running cost a year</code>. For ClearNote that is $25,000 + 3 × $75,600 = $251,800.</p>
          <p>ScribeQuick's standard plan looks cheapest. But a BAA is a must-have, because the tool handles patient data. On the plan that includes a BAA, ScribeQuick costs $25,000 more than ClearNote over 3 years. Building would take 9 to 12 months and cost the most. So Daniel recommends ClearNote. Its first-year cost, $100,600, matches the budget line Tom already agreed.</p>
          <p>Also count costs that are not on the vendor's price list. Examples are staff training time, time to check AI drafts, IT admin and the cost of leaving. Check every quote in a spreadsheet yourself. Prices change, so ask for written quotes.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: use existing, buy or build?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each made-up need into the best first option.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="existing" data-label="Use existing"></div>
              <div data-sorter-target="bucket" data-bucket="buy" data-label="Buy a specialist tool"></div>
              <div data-sorter-target="bucket" data-bucket="build" data-label="Build your own"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="existing" data-why="Maple already pays for Microsoft 365 and Teams. An add-on uses the same accounts, logins and data rules.">Maple: summarise internal Teams meetings for 20 managers.</li>
              <li data-bucket="existing" data-why="The scheduling vendor already holds the appointment data and has a BAA, so its add-on is the fastest safe option.">Maple: send appointment reminders through an AI add-on from the scheduling vendor.</li>
              <li data-bucket="buy" data-why="Clinical notes are specialist work. Good products exist, and they can sign a BAA and link to the EHR.">Maple: draft clinical notes from patient visits.</li>
              <li data-bucket="existing" data-why="An approved AI assistant on a business account can draft posts. No new product is needed.">Bluefern Digital: first drafts of social media posts for Hannah Price's team.</li>
              <li data-bucket="buy" data-why="Prior authorisation letters are a common healthcare task. Specialist products exist, so building one makes little sense.">Maple: draft prior authorisation letters to insurers from the EHR.</li>
              <li data-bucket="build" data-why="The need is unusual and tied to Northbridge's own systems. If no product fits and it gives a real advantage, building can make sense.">Northbridge Logistics: plan loads using James Okafor's own depot rules, which no product supports.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to compare the three options for one of your AI ideas. Then use its questions with real vendors and check every cost yourself.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an adviser who helps managers choose AI tools. Use simple English and short sentences.

        My organisation: [Maple Street Health, 6 primary care clinics in New York, 146 staff].
        Tools we already pay for: [Microsoft 365 with Teams, a scheduling system, an EHR].
        The AI need: [draft replies to patient portal messages; a clinician approves each reply before it is sent].
        Data involved: [patient messages with health details].
        Users: [38 nurses and medical assistants].

        Please:
        1. Compare three options: use existing tools, buy a specialist tool, build our own. For each, give speed, cost level, control and the main risk.
        2. Recommend one option and explain why in 3 sentences.
        3. Write 10 vendor questions in these groups: data and privacy, security, quality, fit, money and exit.
        4. Make a 3-year total cost of ownership table with example prices that are clearly marked as made up. Show the formula: one-off cost + 3 x running cost a year.
        5. List the must-haves a tool needs before we can use it with patient data.

        Do not name real prices. Do not invent statistics.</pre>
            <ul class="ai-try-checks">
              <li>It checks your existing tools before it suggests buying or building.</li>
              <li>A BAA or data agreement is a must-have whenever patient or personal data is involved.</li>
              <li>The 3-year totals add up (check them in a spreadsheet).</li>
              <li>Example prices are clearly marked as made up.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Check what you already own before you buy, and buy before you build. Compare options on total cost over three years, not on the monthly price. Treat must-haves, such as a BAA for patient data, as a gate: an option that fails a must-have is out, however cheap it looks.
        </div>
      HTML
      starter_code: nil
    },
    7 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mgmt">Management</div>
          <h1 class="lc-title">Estimating Value and Cost</h1>
        </div>
        <p class="lc-lead">Your boss and your finance team will ask two questions: what will this AI project give us, and what will it cost? In this lesson you will turn time saved into money, count all the costs and work out ROI and payback with real formulas. You will also learn to show a range, not one hopeful number. You will follow Daniel Kim and Tom Walsh as they check the numbers for Maple Street Health's AI scribe and first wave.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 310" role="img" aria-label="Worked example for the made-up AI scribe at Maple Street Health. Top row: hours today, 126 a week, times time saved, 30 percent, which is 37.8 hours, times cost per hour, 110 dollars, times 48 weeks a year, gives an annual value of 199,584 dollars. Second row: net annual benefit 123,984 dollars after 75,600 dollars running cost; year-1 net 98,984 dollars after the 25,000 dollar one-off cost; year-1 ROI 98.4 percent; payback 2.4 months. Third row: the same maths for a range: low case 20 percent gives ROI 32.3 percent, likely case 30 percent gives 98.4 percent, high case 40 percent gives 164.5 percent. Note: time saved is capacity freed, not cash, unless you use that time.">
            <defs><marker id="asl7a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <text x="380" y="24" font-weight="700" fill="#c4b5fd" text-anchor="middle">UC3 AI scribe: from hours to ROI (made-up numbers)</text>
              <g text-anchor="middle">
                <rect x="20" y="40" width="128" height="60" rx="8" fill="#1f1f44" stroke="#8b5cf6"/>
                <text x="84" y="64" font-weight="700">Hours today</text>
                <text x="84" y="86" font-size="12" fill="#9b99b8">126 h a week</text>
                <rect x="168" y="40" width="128" height="60" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
                <text x="232" y="64" font-weight="700">Time saved</text>
                <text x="232" y="86" font-size="12" fill="#9b99b8">30% = 37.8 h</text>
                <rect x="316" y="40" width="128" height="60" rx="8" fill="#1f1f44" stroke="#22d3ee"/>
                <text x="380" y="64" font-weight="700">Cost per hour</text>
                <text x="380" y="86" font-size="12" fill="#9b99b8">$110 (loaded)</text>
                <rect x="464" y="40" width="128" height="60" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
                <text x="528" y="64" font-weight="700">Weeks a year</text>
                <text x="528" y="86" font-size="12" fill="#9b99b8">48</text>
                <rect x="612" y="40" width="128" height="60" rx="8" fill="#27274e" stroke="#10b981"/>
                <text x="676" y="64" font-weight="700">Annual value</text>
                <text x="676" y="86" font-size="12" fill="#6ee7b7">$199,584</text>
                <rect x="20" y="136" width="160" height="62" rx="8" fill="#27274e" stroke="#10b981"/>
                <text x="100" y="158" font-weight="700">Net annual benefit</text>
                <text x="100" y="176" font-size="12" fill="#6ee7b7">$123,984</text>
                <text x="100" y="191" font-size="11" fill="#9b99b8">minus $75,600 running</text>
                <rect x="200" y="136" width="160" height="62" rx="8" fill="#27274e" stroke="#10b981"/>
                <text x="280" y="158" font-weight="700">Year-1 net</text>
                <text x="280" y="176" font-size="12" fill="#6ee7b7">$98,984</text>
                <text x="280" y="191" font-size="11" fill="#9b99b8">minus $25,000 one-off</text>
                <rect x="380" y="136" width="160" height="62" rx="8" fill="#27274e" stroke="#ec4899"/>
                <text x="460" y="158" font-weight="700">Year-1 ROI</text>
                <text x="460" y="176" font-size="12" fill="#f9a8d4">98.4%</text>
                <text x="460" y="191" font-size="11" fill="#9b99b8">÷ $100,600 year-1 cost</text>
                <rect x="560" y="136" width="180" height="62" rx="8" fill="#27274e" stroke="#ec4899"/>
                <text x="650" y="158" font-weight="700">Payback</text>
                <text x="650" y="176" font-size="12" fill="#f9a8d4">2.4 months</text>
                <text x="650" y="191" font-size="11" fill="#9b99b8">$25,000 ÷ monthly net</text>
              </g>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#asl7a)">
                <line x1="150" y1="70" x2="164" y2="70"/>
                <line x1="298" y1="70" x2="312" y2="70"/>
                <line x1="446" y1="70" x2="460" y2="70"/>
                <line x1="594" y1="70" x2="608" y2="70"/>
                <path d="M676,102 L676,116 L100,116 L100,132"/>
                <line x1="182" y1="167" x2="196" y2="167"/>
                <line x1="362" y1="167" x2="376" y2="167"/>
                <line x1="542" y1="167" x2="556" y2="167"/>
              </g>
              <rect x="20" y="218" width="720" height="44" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="36" y="245" font-size="12" font-weight="700" fill="#fcd34d">Show a range:</text>
              <text x="160" y="245" font-size="12">Low 20% → ROI 32.3%</text>
              <text x="360" y="245" font-size="12">Likely 30% → ROI 98.4%</text>
              <text x="560" y="245" font-size="12">High 40% → ROI 164.5%</text>
              <text x="380" y="290" font-size="12" fill="#9b99b8" text-anchor="middle">Time saved is capacity freed, not cash, unless you use that time.</text>
            </g>
          </svg>
          <figcaption>How Maple Street Health turns hours saved into annual value, then net benefit, ROI and payback, and why it shows a range.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Three kinds of value</h3>
          <p>AI can give you value in three ways. Count each one separately, so nobody mixes them up.</p>
          <table class="lc-table">
            <thead><tr><th>Kind of value</th><th>What it means</th><th>Maple example (made up)</th></tr></thead>
            <tbody>
              <tr><td><strong>Time (capacity)</strong></td><td>Hours freed for other work</td><td>Clinicians spend less time on notes after visits.</td></tr>
              <tr><td><strong>Cash</strong></td><td>Money saved or earned</td><td>Less overtime, less agency cover, or more visits filled (UC8).</td></tr>
              <tr><td><strong>Quality and risk</strong></td><td>Better service, fewer errors, less stress</td><td>Faster replies to patients, less evening work for clinicians.</td></tr>
            </tbody>
          </table>
          <p>To turn time into money, use a <strong>loaded hourly cost</strong> (pay plus benefits for one hour of work). Maple's made-up loaded costs are $36 for front desk staff, $55 for nurses and medical assistants, $60 for managers and $110 for clinicians.</p>
          <p>Be honest about one thing. <strong>Time saved is capacity freed, not cash saved</strong>, unless the organisation uses that time. Rosa Delgado has promised no job cuts from this programme. So the freed time goes to patient calls, rebooking and less after-hours work. Tom Walsh, the finance director, only counts it as cash where it cuts real spending, such as overtime.</p>
        </div>
        <div class="lc-card">
          <h3>The formulas, step by step</h3>
          <p>Put each use case on one row of a spreadsheet. Column B holds hours a week today, and column C the % saved. Column D holds the loaded hourly cost. Columns E and F hold the one-off cost and the running cost a year. Then add these formulas in row 2:</p>
          <pre><code>G2  Annual value        =B2*C2*D2*48
        H2  Net annual benefit  =G2-F2
        I2  Year-1 net          =G2-F2-E2
        J2  Year-1 ROI          =I2/(E2+F2)
        K2  Payback (months)    =E2/(H2/12)</code></pre>
          <p>Format J2 as a percentage. <strong>ROI</strong> (return on investment) shows what you get back compared with what you spend. <strong>Payback</strong> is how many months the net benefit takes to repay the one-off cost.</p>
          <p>Worked example for UC3, the AI scribe, with B2 = 126, C2 = 30%, D2 = 110, E2 = 25,000 and F2 = 75,600:</p>
          <ul class="lc-list">
            <li>Annual value: 126 × 0.30 × $110 × 48 = <strong>$199,584</strong></li>
            <li>Net annual benefit: $199,584 − $75,600 = <strong>$123,984</strong></li>
            <li>Year-1 net: $123,984 − $25,000 = <strong>$98,984</strong></li>
            <li>Year-1 ROI: $98,984 ÷ $100,600 = <strong>98.4%</strong></li>
            <li>Payback: $25,000 ÷ ($123,984 ÷ 12) = <strong>2.4 months</strong></li>
          </ul>
          <table class="lc-table">
            <thead><tr><th>ID</th><th>Use case</th><th>Annual value</th><th>Year-1 cost</th><th>Year-1 net</th><th>Year-1 ROI</th><th>Payback</th></tr></thead>
            <tbody>
              <tr><td>UC3</td><td>AI scribe</td><td>$199,584</td><td>$100,600</td><td>$98,984</td><td>98.4%</td><td>2.4 months</td></tr>
              <tr><td>UC1</td><td>Reminder texts</td><td>$41,472</td><td>$20,000</td><td>$21,472</td><td>107.4%</td><td>3.3 months</td></tr>
              <tr><td>UC7</td><td>Meeting notes</td><td>$21,600</td><td>$9,200</td><td>$12,400</td><td>134.8%</td><td>1.7 months</td></tr>
              <tr><td>UC6</td><td>Policy Q&amp;A</td><td>$23,040</td><td>$11,000</td><td>$12,040</td><td>109.5%</td><td>3.5 months</td></tr>
              <tr><td><strong>Total</strong></td><td>First wave</td><td><strong>$285,696</strong></td><td><strong>$140,800</strong></td><td><strong>$144,896</strong></td><td><strong>102.9%</strong></td><td><strong>2.6 months</strong></td></tr>
              <tr><td>UC2</td><td>Phone assistant (parked)</td><td>$55,296</td><td>$66,000</td><td>−$10,704</td><td>−16.2%</td><td>18.7 months</td></tr>
            </tbody>
          </table>
          <p>The first-wave payback uses the totals: $40,000 one-off ÷ ($184,896 net annual benefit ÷ 12) = 2.6 months. UC2 shows why the numbers matter. Its running cost eats most of its value, so it loses money in year 1.</p>
        </div>
        <div class="lc-card">
          <h3>Show a range and check the maths</h3>
          <p>One number looks precise, but it hides your guesses. Show a <strong>low, likely and high case</strong>. For the AI scribe, Daniel uses 20%, 30% and 40% of note time saved, after checking time.</p>
          <table class="lc-table">
            <thead><tr><th>Case</th><th>Hours saved a week</th><th>Annual value</th><th>Year-1 net</th><th>Year-1 ROI</th><th>Payback</th></tr></thead>
            <tbody>
              <tr><td>Low (20%)</td><td>25.2</td><td>$133,056</td><td>$32,456</td><td>32.3%</td><td>5.2 months</td></tr>
              <tr><td>Likely (30%)</td><td>37.8</td><td>$199,584</td><td>$98,984</td><td>98.4%</td><td>2.4 months</td></tr>
              <tr><td>High (40%)</td><td>50.4</td><td>$266,112</td><td>$165,512</td><td>164.5%</td><td>1.6 months</td></tr>
            </tbody>
          </table>
          <p>Even the low case pays back within the year. That gives Rosa more confidence than the likely case alone.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>What is the ROI of an AI scribe?</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Calculate the value of an AI scribe using only my numbers.
        42 clinicians each spend 3 hours a week on notes (126 hours).
        Time saved: low 20%, likely 30%, high 40%. Loaded cost $110 an hour.
        48 working weeks a year. One-off cost $25,000. Running cost $75,600
        a year. For each case give: annual value, net annual benefit,
        year-1 net, year-1 ROI and payback in months. Show every step.
        Say which part is capacity freed and which part is cash.</code></pre>
          <p>Then check the AI's answer in your spreadsheet. Common mistakes to look for:</p>
          <ul class="lc-list">
            <li>Using 52 weeks instead of your 48 working weeks. That gives $216,216 for UC3, not $199,584.</li>
            <li>Forgetting to take away the running cost, which makes ROI look far too high.</li>
            <li>Counting all time saved as cash.</li>
            <li>Leaving out checking time, training time or a slow first few weeks.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Activity: build an honest estimate</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put Daniel's steps for estimating the AI scribe's value and cost in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Measure today's hours with the staff who do the work (126 hours a week on notes).</li>
              <li data-order="2">Agree a low, likely and high % saved, after checking time (20%, 30%, 40%).</li>
              <li data-order="3">Collect every cost: one-off set-up and the running cost a year.</li>
              <li data-order="4">Calculate annual value, net benefit, ROI and payback in a spreadsheet.</li>
              <li data-order="5">Check one row by hand and compare with any AI answer.</li>
              <li data-order="6">Mark which value is capacity and which is cash, then share it with Tom and Rosa.</li>
              <li data-order="7">Test the likely case in a pilot and update the numbers with real results.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to build a value and cost estimate for one of your AI ideas. Then rebuild the key numbers in your own spreadsheet.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a finance adviser who explains numbers in simple English.

        AI idea: [AI drafts of replies to patient portal messages].
        Hours spent today: [80 hours a week, by nurses].
        Time saved after checking: [low 15%, likely 25%, high 35%].
        Loaded cost per hour: [$55]. Working weeks a year: [48].
        One-off cost: [$12,000]. Running cost a year: [$20,000].

        Please:
        1. For each case, calculate: hours saved a week, annual value (hours saved x cost per hour x weeks), net annual benefit (value - running cost), year-1 net (net benefit - one-off cost), year-1 ROI (year-1 net / (one-off + running cost)) and payback in months (one-off / (net benefit / 12)).
        2. Show each step and put the results in one table.
        3. Give the spreadsheet formulas I can copy, with the column letters you used.
        4. Explain which part is capacity freed and which part could become cash.
        5. List 3 hidden costs I may have missed.

        Use only my numbers. Do not invent statistics.</pre>
            <ul class="ai-try-checks">
              <li>Recalculate the likely case yourself (with the default numbers, the annual value is $52,800).</li>
              <li>It uses your working weeks, not 52.</li>
              <li>The running cost is taken away before ROI and payback.</li>
              <li>Capacity and cash are kept separate.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A good estimate is simple, honest and easy to check. Start from measured hours and show a low, likely and high case. Take away every cost. Say clearly which value is cash and which is freed time. Then let a pilot replace your guesses with real numbers.
        </div>
      HTML
      starter_code: nil
    },
    8 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mgmt">Management</div>
          <h1 class="lc-title">Running a Pilot</h1>
        </div>
        <p class="lc-lead">A <strong>pilot</strong> is a small, time-limited test of a new tool with a few people. It lets you learn with low risk before you spend the full budget. In this lesson you will set a clear goal, choose success measures before you start, run a fair test and make a go or no-go decision. You will follow Daniel Kim as he runs an 8-week pilot of the AI scribe at two Maple Street Health clinics. A good pilot gives you your own evidence, not a vendor's.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 392" role="img" aria-label="Timeline of the made-up AI scribe pilot at Maple Street Health in 2026. Baseline: 2 to 13 March. Pilot: 8 weeks, 16 March to 8 May, with weeks 1 and 2 as a learning period and weeks 5 to 8 measured. Go or no-go meeting: 19 May. Roll-out: from 1 June. Below, a scorecard of five measures with target and result. Note time after visits: target 2.4 hours a week or less, result 2.1, met. Serious errors in signed notes: target 0, result 0, met. Patients who agreed: target 70 percent or more, result 84 percent, met. Clinician satisfaction: target 7 or more out of 10, result 7.4, met. Patient complaints about the AI: target 0, result 0, met. Decision: go with conditions.">
            <defs><marker id="asl8a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <text x="380" y="24" font-weight="700" fill="#c4b5fd" text-anchor="middle">AI scribe pilot: Upper West Side and Astoria, 2026 (made up)</text>
              <g text-anchor="middle">
                <rect x="20" y="40" width="125" height="70" rx="8" fill="#1f1f44" stroke="#9b99b8"/>
                <text x="82" y="66" font-weight="700">Baseline</text>
                <text x="82" y="88" font-size="11" fill="#9b99b8">2 to 13 March</text>
                <rect x="165" y="40" width="290" height="70" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
                <text x="310" y="62" font-weight="700">Pilot: 8 weeks, 10 clinicians</text>
                <text x="310" y="82" font-size="11" fill="#9b99b8">16 March to 8 May</text>
                <text x="310" y="99" font-size="11" fill="#9b99b8">weeks 1-2 learning, weeks 5-8 measured</text>
                <rect x="475" y="40" width="125" height="70" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
                <text x="537" y="66" font-weight="700">Go/no-go</text>
                <text x="537" y="88" font-size="11" fill="#9b99b8">19 May</text>
                <rect x="620" y="40" width="120" height="70" rx="8" fill="#1f1f44" stroke="#10b981"/>
                <text x="680" y="66" font-weight="700">Roll-out</text>
                <text x="680" y="88" font-size="11" fill="#9b99b8">from 1 June</text>
              </g>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#asl8a)">
                <line x1="147" y1="75" x2="161" y2="75"/>
                <line x1="457" y1="75" x2="471" y2="75"/>
                <line x1="602" y1="75" x2="616" y2="75"/>
              </g>
              <rect x="20" y="128" width="720" height="200" rx="8" fill="#27274e" stroke="#8b5cf6"/>
              <g font-size="12">
                <text x="36" y="152" font-weight="700" fill="#c4b5fd">Measure</text>
                <text x="400" y="152" font-weight="700" fill="#c4b5fd">Target</text>
                <text x="540" y="152" font-weight="700" fill="#c4b5fd">Result</text>
                <text x="650" y="152" font-weight="700" fill="#c4b5fd">Met?</text>
                <text x="36" y="180">Note time after visits (h a week)</text>
                <text x="400" y="180">2.4 or less</text>
                <text x="540" y="180">2.1</text>
                <text x="650" y="180" fill="#6ee7b7">Yes</text>
                <text x="36" y="206">Serious errors in signed notes</text>
                <text x="400" y="206">0</text>
                <text x="540" y="206">0</text>
                <text x="650" y="206" fill="#6ee7b7">Yes</text>
                <text x="36" y="232">Patients who agreed to the scribe</text>
                <text x="400" y="232">70% or more</text>
                <text x="540" y="232">84%</text>
                <text x="650" y="232" fill="#6ee7b7">Yes</text>
                <text x="36" y="258">Clinician satisfaction (out of 10)</text>
                <text x="400" y="258">7 or more</text>
                <text x="540" y="258">7.4</text>
                <text x="650" y="258" fill="#6ee7b7">Yes</text>
                <text x="36" y="284">Patient complaints about the AI</text>
                <text x="400" y="284">0</text>
                <text x="540" y="284">0</text>
                <text x="650" y="284" fill="#6ee7b7">Yes</text>
                <text x="36" y="312" fill="#9b99b8">Weeks 5 to 8 compared with the 2-week baseline</text>
              </g>
              <rect x="20" y="342" width="720" height="36" rx="8" fill="#1f1f44" stroke="#10b981"/>
              <text x="380" y="365" text-anchor="middle" font-weight="700" fill="#6ee7b7">Decision: go with conditions (clinician sign-off stays)</text>
            </g>
          </svg>
          <figcaption>The pilot timeline and scorecard. Targets were set before the pilot started, and the decision was made against them.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Set the goal and the measures before you start</h3>
          <p>Write a one-page pilot plan before anyone uses the tool. It should answer six questions:</p>
          <ul class="lc-list">
            <li><strong>Goal:</strong> what problem are we testing? "Cut clinicians' note time after visits, safely."</li>
            <li><strong>Scope:</strong> who, where and for how long? 10 volunteer clinicians, 5 at Upper West Side and 5 at Astoria, for 8 weeks.</li>
            <li><strong>Baseline:</strong> the "before" number. The 10 clinicians logged their note time for 2 weeks first: 3.0 hours a week each.</li>
            <li><strong>Success measures:</strong> the targets that mean "it worked". They are set now, so nobody moves them later.</li>
            <li><strong>Stop rules:</strong> what makes you stop at once. At Maple: a serious error in a signed note, harm to a patient, or a data leak.</li>
            <li><strong>Owners:</strong> Daniel runs it, Dr Priya Nair owns clinical safety, Marcus Bell owns security, and Rosa Delgado makes the decision.</li>
          </ul>
          <table class="lc-table">
            <thead><tr><th>Success measure</th><th>Target</th><th>Why it matters</th></tr></thead>
            <tbody>
              <tr><td>Note time after visits</td><td>2.4 hours a week or less (20% less)</td><td>The low case in the business case</td></tr>
              <tr><td>Serious errors in signed notes</td><td>0 in Dr Nair's audit of 200 random notes</td><td>Patient safety comes first</td></tr>
              <tr><td>Patients who agree to the scribe</td><td>70% or more</td><td>Low agreement means low value</td></tr>
              <tr><td>Clinician satisfaction</td><td>7 or more out of 10</td><td>People must want to keep using it</td></tr>
              <tr><td>Patient complaints about the AI</td><td>0</td><td>Trust with patients</td></tr>
            </tbody>
          </table>
          <p>Include a mix of people. Two of Maple's 10 volunteers were unsure about AI. Their views make the results more honest.</p>
        </div>
        <div class="lc-card">
          <h3>Run a small, fair test</h3>
          <p>The pilot ran from Monday 16 March to Friday 8 May 2026. Daniel kept it simple and safe:</p>
          <ul class="lc-list">
            <li><strong>Real data, approved tool:</strong> ClearNote signed a BAA and passed Marcus's security review before the first patient visit.</li>
            <li><strong>Patient notice:</strong> front desk staff gave each patient a short leaflet. The clinician asked each patient before turning the scribe on.</li>
            <li><strong>Human review:</strong> the clinician read, corrected and signed every AI draft. Nothing was saved without that check.</li>
            <li><strong>A learning period:</strong> weeks 1 and 2 were for learning, so they were not used for the main result.</li>
            <li><strong>A weekly check-in:</strong> 15 minutes with the 10 clinicians to log problems and share tips.</li>
            <li><strong>An error log:</strong> clinicians logged every draft they had to correct for a medicine, dose or diagnosis.</li>
          </ul>
          <p>The extra cost was small: 10 licences × $150 × 2 months = $3,000, inside the AI scribe's budget line.</p>
        </div>
        <div class="lc-card">
          <h3>Make the go or no-go decision</h3>
          <p>At the end, you choose one of four options: <strong>go</strong>, <strong>go with conditions</strong>, <strong>change and test again</strong>, or <strong>stop</strong>. Stopping is not a failure. It is a cheap lesson.</p>
          <p>Maple's results (made up), presented on Tuesday 19 May 2026:</p>
          <ul class="lc-list">
            <li>Note time fell from 3.0 to 2.1 hours a week in weeks 5 to 8. That is 30% less, the business case's likely case. In weeks 1 and 2 it was 2.9 hours.</li>
            <li>The scribe wrote about 8,300 drafts. Clinicians caught 25 drafts with a wrong medicine name or dose before signing (0.3%). Most were medicines with similar names.</li>
            <li>Dr Nair found 0 serious errors in 200 random signed notes.</li>
            <li>84% of patients agreed. Satisfaction was 7.4 out of 10, and 8 of the 10 clinicians want to keep it.</li>
          </ul>
          <p>The 25 caught errors are important. They show the tool is useful but not safe without review. So Rosa chose <strong>go with conditions</strong>: roll out to the other 4 clinics, two at a time, from Monday 1 June 2026. The conditions are: clinician sign-off stays, ClearNote fixes the medicine-name problem, Dr Nair audits 50 random notes each month, and the error log continues.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Summarise our pilot. Was it a success?</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Draft a one-page pilot summary for our COO. Use only the scorecard
        below. It has totals only, no patient data.
        [paste the targets, results and error log totals]
        Structure: goal, what we tested, results against each target,
        risks and problems found, options (go, go with conditions,
        change and test again, stop) with pros and cons for each.
        Do not recommend an option. Do not add numbers I did not give you.</code></pre>
          <p>The AI organises the facts. The people who own safety, security and budget discuss them, and the sponsor decides.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: the go or no-go meeting</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Daniel asks AI">"Draft a pilot summary from this scorecard and error log." He pastes totals only, with no patient details.</li>
              <li data-kind="answer" data-label="AI replies">The draft says: "The scribe saves 30% of note time and makes no errors. We recommend a full roll-out to all clinics now."</li>
              <li data-kind="warn" data-label="Spot the problem">"Makes no errors" is wrong. Clinicians caught 25 drafts with a wrong medicine or dose. The signed notes were clean only because people checked them.</li>
              <li data-kind="tool" data-label="Tom checks the numbers">Tom Walsh rebuilds the saving in a spreadsheet: 0.9 hours a week × 42 clinicians = 37.8 hours, the same as the business case.</li>
              <li data-kind="check" data-label="Dr Nair confirms safety">Dr Priya Nair confirms her audit: 0 serious errors in 200 signed notes. She asks for a monthly audit to continue.</li>
              <li data-kind="thought" data-label="Rosa weighs it up">"Every target is met. But the caught errors show the review step must stay, and the vendor must fix the medicine-name problem."</li>
              <li data-kind="check" data-label="Rosa decides">Go with conditions. Roll out two clinics at a time from 1 June. Daniel corrects the summary and shares it with all staff.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to draft a one-page pilot plan for an AI idea in your team. Then agree the targets with your sponsor before the pilot starts.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a project manager who plans small, safe AI pilots. Use simple English.

        AI tool to test: [AI drafts of replies to patient portal messages; a clinician approves every reply before it is sent].
        Team and place: [nurses at 2 of our 6 clinics in New York].
        Problem today: [nurses spend about 80 hours a week across all clinics on portal replies, and patients wait too long].
        Pilot length: [6 weeks]. Sponsor who decides: [our COO].

        Write a one-page pilot plan with these headings:
        1. Goal (one sentence).
        2. Scope: who, where, how long, and why these people.
        3. Baseline: what to measure before the pilot and for how long.
        4. Success measures: 4 to 5 measures, each with a target. Include time, quality, safety and staff views.
        5. Stop rules: what makes us stop at once.
        6. Roles: who runs it, who owns safety, who owns security, who decides.
        7. Weekly routine during the pilot.
        8. Decision options at the end: go, go with conditions, change and test again, stop.

        Mark every target as a suggestion for us to agree. Do not invent statistics.</pre>
            <ul class="ai-try-checks">
              <li>There is a baseline measured before the pilot starts.</li>
              <li>Every success measure has a clear target number.</li>
              <li>Stop rules cover safety and data problems.</li>
              <li>A named role makes the final decision, not the AI.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Decide what success looks like before the pilot starts, and measure a baseline first. Keep the test small, safe and honest, with a learning period and clear stop rules. At the end, decide against the targets you set, and read the problems you caught as carefully as the time you saved.
        </div>
      HTML
      starter_code: nil
    },
    9 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mgmt">Management</div>
          <h1 class="lc-title">Data and Security Readiness</h1>
        </div>
        <p class="lc-lead">An AI tool is only as good as the data it uses and the safety around it. Many AI projects stall because the data is messy, too many people can see private files, or staff use tools nobody approved. In this lesson you will check three things before any AI tool goes live: data quality, access and approved tools. You will follow Marcus Bell, Maple Street Health's IT and security lead, as he finds problems early, when they are still cheap to fix.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 330" role="img" aria-label="Three checks before an AI tool goes live. An AI use case passes three gates in order: is the data good enough, is access right, and is the tool approved. If all three say yes, the tool can go live. If a gate says no, fix it first. Made-up examples from Maple Street Health: 7 percent of appointment rows have no appointment type; an HR salary folder is open to all staff; a tool with no BAA cannot hold patient data. Bottom: three data levels. Green is public, such as website text. Amber is internal with no personal data, such as rotas and policies. Red is patient or staff personal data, allowed only in approved tools with a BAA.">
            <defs><marker id="asl9a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <text x="380" y="24" font-weight="700" fill="#c4b5fd" text-anchor="middle">Three checks before an AI tool goes live</text>
              <g text-anchor="middle">
                <rect x="20" y="42" width="110" height="56" rx="8" fill="#1f1f44" stroke="#9b99b8"/>
                <text x="75" y="75" font-weight="700">AI use case</text>
                <rect x="150" y="42" width="140" height="56" rx="8" fill="#27274e" stroke="#3b82f6"/>
                <text x="220" y="66" font-weight="700">1. Data quality?</text>
                <text x="220" y="86" font-size="11" fill="#9b99b8">complete, consistent</text>
                <rect x="310" y="42" width="140" height="56" rx="8" fill="#27274e" stroke="#8b5cf6"/>
                <text x="380" y="66" font-weight="700">2. Right access?</text>
                <text x="380" y="86" font-size="11" fill="#9b99b8">only what is needed</text>
                <rect x="470" y="42" width="140" height="56" rx="8" fill="#27274e" stroke="#22d3ee"/>
                <text x="540" y="66" font-weight="700">3. Tool approved?</text>
                <text x="540" y="86" font-size="11" fill="#9b99b8">BAA, security review</text>
                <rect x="630" y="42" width="110" height="56" rx="8" fill="#1f1f44" stroke="#10b981"/>
                <text x="685" y="75" font-weight="700" fill="#6ee7b7">Go live</text>
                <rect x="150" y="146" width="140" height="56" rx="8" fill="#1f1f44" stroke="#ec4899"/>
                <text x="220" y="168" font-size="11">UC8: 7% of rows</text>
                <text x="220" y="186" font-size="11">have no type</text>
                <rect x="310" y="146" width="140" height="56" rx="8" fill="#1f1f44" stroke="#ec4899"/>
                <text x="380" y="168" font-size="11">HR salary folder</text>
                <text x="380" y="186" font-size="11">open to all staff</text>
                <rect x="470" y="146" width="140" height="56" rx="8" fill="#1f1f44" stroke="#ec4899"/>
                <text x="540" y="168" font-size="11">No BAA: no patient</text>
                <text x="540" y="186" font-size="11">data in the tool</text>
              </g>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#asl9a)">
                <line x1="132" y1="70" x2="146" y2="70"/>
                <line x1="292" y1="70" x2="306" y2="70"/>
                <line x1="452" y1="70" x2="466" y2="70"/>
                <line x1="612" y1="70" x2="626" y2="70"/>
                <line x1="220" y1="100" x2="220" y2="142"/>
                <line x1="380" y1="100" x2="380" y2="142"/>
                <line x1="540" y1="100" x2="540" y2="142"/>
              </g>
              <g font-size="11" fill="#f9a8d4">
                <text x="226" y="125">No: fix first</text>
                <text x="386" y="125">No: fix first</text>
                <text x="546" y="125">No: fix first</text>
              </g>
              <text x="20" y="232" font-weight="700" fill="#c4b5fd">Data levels at Maple (made up)</text>
              <rect x="20" y="244" width="230" height="64" rx="8" fill="#1f1f44" stroke="#10b981"/>
              <text x="36" y="268" font-weight="700" fill="#6ee7b7">Green: public</text>
              <text x="36" y="290" font-size="11" fill="#9b99b8">website text, public guidance</text>
              <rect x="265" y="244" width="230" height="64" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="281" y="268" font-weight="700" fill="#fcd34d">Amber: internal</text>
              <text x="281" y="290" font-size="11" fill="#9b99b8">no personal data: rotas, policies</text>
              <rect x="510" y="244" width="230" height="64" rx="8" fill="#1f1f44" stroke="#ec4899"/>
              <text x="526" y="268" font-weight="700" fill="#f9a8d4">Red: personal data</text>
              <text x="526" y="290" font-size="11" fill="#9b99b8">patients or staff: BAA tools only</text>
            </g>
          </svg>
          <figcaption>Every AI use case passes three gates before it goes live. The data level decides which approved tools may hold the data.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Check 1: is the data good enough?</h3>
          <p>AI that learns from your data, such as a prediction model, copies the mistakes in that data. AI that answers from your documents repeats any out-of-date rules. So check that your data is <strong>complete</strong> (no big gaps), <strong>consistent</strong> (the same thing is recorded the same way), <strong>current</strong> (up to date) and <strong>correct</strong>.</p>
          <p>Marcus checked 24 months of appointment data for UC8, the no-show prediction idea. He did it inside Maple's secure systems, not in an AI tool. He found these problems (made-up data):</p>
          <table class="lc-table">
            <thead><tr><th>Problem</th><th>Size</th><th>Why it matters</th></tr></thead>
            <tbody>
              <tr><td>No appointment type recorded</td><td>About 39,400 of 562,400 rows (7%)</td><td>The model cannot learn which visit types are missed most.</td></tr>
              <tr><td>Two codes for a no-show</td><td>Astoria and Flushing used "DNA", the other clinics used "NS", until a 2025 system update</td><td>A model may miss many no-shows at two clinics.</td></tr>
              <tr><td>Duplicate rows</td><td>3,100 rows (0.55%) from the system change</td><td>Some patients look like they missed twice.</td></tr>
              <tr><td>No reason for most cancellations</td><td>Most cancelled rows</td><td>You cannot tell a no-show from a planned change.</td></tr>
            </tbody>
          </table>
          <p>Simple spreadsheet checks find most problems. If appointment types are in column D and status codes in column E, for rows 2 to 562401:</p>
          <pre><code>Share of rows with no type:  =COUNTBLANK(D2:D562401)/ROWS(D2:D562401)
        Rows marked "DNA":           =COUNTIF(E2:E562401,"DNA")
        Rows marked "NS":            =COUNTIF(E2:E562401,"NS")</code></pre>
          <p>Decision: fix the data for 3 months before choosing any no-show model. The same check applies to documents. For UC6, policy Q&amp;A, 19 of Maple's 64 staff policies (about 30%) were past their review date. There were also 3 versions of the sick leave policy. The policy owners fix these before the assistant is loaded.</p>
        </div>
        <div class="lc-card">
          <h3>Check 2: is access right?</h3>
          <p>Use the rule of <strong>least privilege</strong> (each person and each tool gets only the access it needs, and nothing more). In US healthcare, HIPAA's <strong>minimum necessary</strong> standard asks for a similar idea in many cases: use or share only the patient information a task needs.</p>
          <p>AI features inside your office tools, such as Microsoft 365 Copilot, usually work with the user's own permissions. They can find any file that user is allowed to open. They do not create new access. But they make old sharing mistakes much easier to find.</p>
          <p>Before Maple turned on meeting notes and policy Q&amp;A, Marcus searched for files shared too widely. He found an "HR salary review 2025" folder open to all staff. Nobody had noticed for a year. An AI search would have shown it to anyone who asked about pay. He fixed the sharing first.</p>
          <p>Marcus's access checklist:</p>
          <ul class="lc-list">
            <li>Staff sign in with single sign-on and two-step login.</li>
            <li>Each tool gets only the data its job needs. The scribe sees today's visit, not every patient record.</li>
            <li>Sensitive folders (HR, finance, patient files) are shared only with named groups.</li>
            <li>Leavers lose access on their last day.</li>
            <li>Audit logs show who used the tool and what it accessed.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Check 3: is the tool approved?</h3>
          <p>Staff will use AI with or without your approval. Give them safe, approved tools and a clear list. Maple matches each tool to the highest data level it may hold:</p>
          <table class="lc-table">
            <thead><tr><th>Tool (made-up list)</th><th>Highest data level allowed</th><th>Why</th></tr></thead>
            <tbody>
              <tr><td>Work AI assistant (business account)</td><td>Amber</td><td>Business terms and staff sign-in, but no BAA.</td></tr>
              <tr><td>Microsoft 365 meeting-notes add-on</td><td>Amber</td><td>Internal meetings only. No patient details in meetings.</td></tr>
              <tr><td>ClearNote AI scribe</td><td>Red</td><td>BAA signed, security review passed.</td></tr>
              <tr><td>Scheduling system reminders</td><td>Red</td><td>BAA already in place with this vendor.</td></tr>
              <tr><td>Free public AI chatbots</td><td>None</td><td>Not approved for any work data.</td></tr>
            </tbody>
          </table>
          <p>A tool reaches the list only after Marcus's review. It needs a signed BAA if it holds patient data, and a security report such as SOC 2 Type II. It also needs clear terms on data storage, AI training and deletion, and a named owner. Check vendor terms yourself, because they change.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Is our data ready for AI?</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>We plan an AI tool that predicts missed appointments for 6 clinics.
        We have 24 months of appointment data. Do not ask me for any real
        data. Give me a readiness checklist in three parts: data quality
        (what to check, and a simple spreadsheet test for each), access
        (who and what should see the data) and tool approval (what we need
        from the vendor). Also list fairness checks: how could the model
        treat some patient groups unfairly, and how would we notice?</code></pre>
          <p>The AI helps you plan the checks. Marcus and the data owners run them on the real data, inside secure systems.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: ready, fix first, or not allowed?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each made-up situation at Maple Street Health.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="ready" data-label="Ready to go"></div>
              <div data-sorter-target="bucket" data-bucket="fix" data-label="Fix first"></div>
              <div data-sorter-target="bucket" data-bucket="no" data-label="Not allowed"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="ready" data-why="These are Amber documents, now up to date, going into an approved tool that may hold Amber data.">Load the 45 up-to-date staff policies into the approved work AI assistant.</li>
              <li data-bucket="ready" data-why="The tool is approved for Red data: the BAA is signed and the security review is passed.">Use the ClearNote scribe at the pilot clinics, with patient agreement and clinician sign-off.</li>
              <li data-bucket="fix" data-why="The AI could surface salary files to anyone who asks. Fix the folder sharing before turning the feature on.">Turn on AI meeting notes and search while the HR salary folder is still open to all staff.</li>
              <li data-bucket="fix" data-why="Two different no-show codes would teach the model wrong patterns. Clean and join the codes first.">Train a no-show model on data where two clinics use a different no-show code.</li>
              <li data-bucket="fix" data-why="This breaks least privilege and the minimum necessary idea. Limit the tool to the data its job needs.">Give the scribe access to every patient record, though it only needs today's visit.</li>
              <li data-bucket="no" data-why="Patient data must never go into a free public tool. There is no BAA and no control over the data.">Paste a list of patients into a free chatbot to guess who will miss appointments.</li>
              <li data-bucket="no" data-why="Staff health data is Red data. A personal account is not an approved tool. Talk to HR about a proper process.">Upload staff sickness records to a personal AI account to spot patterns.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to build a readiness checklist for one AI idea. Do not paste any real data. Then run the checks with your IT and data owners.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an IT and data adviser who explains things in simple English. Do not ask me for any real or personal data.

        AI idea: [an assistant that answers staff questions from our policy documents].
        Data it will use: [64 staff policies on a shared drive; some may be out of date].
        People who will use it: [146 staff across 6 clinics].
        Tools we already have: [Microsoft 365 with SharePoint and Teams].
        Data levels: Green = public, Amber = internal with no personal data, Red = patient or staff personal data.

        Please:
        1. Say which data level this idea uses and why.
        2. Data quality: list 5 checks (complete, consistent, current, correct) with a simple way to do each one.
        3. Access: list 5 checks, including files that are shared too widely.
        4. Tool approval: list what we need from the vendor before go-live.
        5. Give a final table: Check, Owner role, Ready / Fix first / Not allowed.

        Mark anything that depends on our tool settings as "check the tool's current help pages".</pre>
            <ul class="ai-try-checks">
              <li>It never asks you to paste real policies, staff or patient data.</li>
              <li>The access checks include folders that are shared too widely.</li>
              <li>Every check has an owner role.</li>
              <li>Tool details are marked to check against current help pages.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> AI makes old data problems bigger and old sharing mistakes easier to find. Before go-live, check that the data is good enough. Check that each person and tool sees only what it needs. Check that the tool is approved for that level of data. Fixing these first is cheaper than fixing a leak later.
        </div>
      HTML
      starter_code: nil
    },
    10 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mgmt">Management</div>
          <h1 class="lc-title">Writing an AI Use Policy</h1>
        </div>
        <p class="lc-lead">An <strong>AI use policy</strong> is a short document that tells staff how they may and may not use AI at work. Without one, people guess. Some avoid useful tools, and others paste private data into public chatbots. In this lesson you will learn what goes into a good policy: approved tools, data rules, allowed and banned uses, approvals and human review. You will see how Daniel Kim drafted Maple Street Health's policy. You will also see a shorter policy from Hannah Price's team at Bluefern Digital in London.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 370" role="img" aria-label="Left: the eight sections of Maple Street Health's made-up AI Use Policy version 1.0: purpose and scope, approved tools, data rules, allowed uses, banned uses, approval for new tools, human review, and incidents, training and review. Right: three groups of uses. Allowed: drafts with no personal data that you check yourself. Needs approval: new tools, patient data, or anything patients see. Banned: personal data in free tools, and AI deciding about people. Bottom: the approval path for a new tool: a request form, Daniel Kim logs it, Marcus Bell checks security and the BAA, Dr Priya Nair checks it if it is clinical, and Rosa Delgado signs off. The aim is a decision within 10 working days.">
            <defs><marker id="asl10a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <text x="380" y="24" font-weight="700" fill="#c4b5fd" text-anchor="middle">Maple Street Health AI Use Policy v1.0 (made up)</text>
              <rect x="20" y="40" width="310" height="220" rx="8" fill="#1f1f44" stroke="#8b5cf6"/>
              <g font-size="12">
                <text x="36" y="68">1. Purpose and scope</text>
                <text x="36" y="92">2. Approved tools</text>
                <text x="36" y="116">3. Data rules: Green, Amber, Red</text>
                <text x="36" y="140">4. Allowed uses</text>
                <text x="36" y="164">5. Banned uses</text>
                <text x="36" y="188">6. Approval for new tools</text>
                <text x="36" y="212">7. Human review</text>
                <text x="36" y="236">8. Incidents, training, review</text>
              </g>
              <rect x="350" y="40" width="390" height="64" rx="8" fill="#27274e" stroke="#10b981"/>
              <text x="366" y="64" font-weight="700" fill="#6ee7b7">Allowed</text>
              <text x="366" y="88" font-size="12">Drafts with no personal data, checked by you</text>
              <rect x="350" y="118" width="390" height="64" rx="8" fill="#27274e" stroke="#f59e0b"/>
              <text x="366" y="142" font-weight="700" fill="#fcd34d">Needs approval</text>
              <text x="366" y="166" font-size="12">New tools, patient data, anything patients see</text>
              <rect x="350" y="196" width="390" height="64" rx="8" fill="#27274e" stroke="#ec4899"/>
              <text x="366" y="220" font-weight="700" fill="#f9a8d4">Banned</text>
              <text x="366" y="244" font-size="12">Personal data in free tools; AI deciding about people</text>
              <text x="20" y="292" font-weight="700" fill="#c4b5fd">New tool approval (aim: a decision within 10 working days)</text>
              <g text-anchor="middle">
                <rect x="20" y="304" width="128" height="52" rx="8" fill="#1f1f44" stroke="#9b99b8"/>
                <text x="84" y="335" font-weight="700">Request form</text>
                <rect x="168" y="304" width="128" height="52" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
                <text x="232" y="325" font-weight="700">Daniel Kim</text>
                <text x="232" y="344" font-size="11" fill="#9b99b8">logs it</text>
                <rect x="316" y="304" width="128" height="52" rx="8" fill="#1f1f44" stroke="#22d3ee"/>
                <text x="380" y="325" font-weight="700">Marcus Bell</text>
                <text x="380" y="344" font-size="11" fill="#9b99b8">security, BAA</text>
                <rect x="464" y="304" width="128" height="52" rx="8" fill="#1f1f44" stroke="#ec4899"/>
                <text x="528" y="325" font-weight="700">Dr Priya Nair</text>
                <text x="528" y="344" font-size="11" fill="#9b99b8">if clinical</text>
                <rect x="612" y="304" width="128" height="52" rx="8" fill="#1f1f44" stroke="#10b981"/>
                <text x="676" y="325" font-weight="700">Rosa Delgado</text>
                <text x="676" y="344" font-size="11" fill="#9b99b8">signs off</text>
              </g>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#asl10a)">
                <line x1="150" y1="330" x2="164" y2="330"/>
                <line x1="298" y1="330" x2="312" y2="330"/>
                <line x1="446" y1="330" x2="460" y2="330"/>
                <line x1="594" y1="330" x2="608" y2="330"/>
              </g>
            </g>
          </svg>
          <figcaption>The eight sections of Maple's policy, the three groups of uses, and the path a new AI tool takes before staff can use it.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>What goes into an AI use policy</h3>
          <p>A good policy is short, plain and practical. Aim for two or three pages that any member of staff can read in ten minutes. Maple's AI Use Policy v1.0 has eight sections:</p>
          <table class="lc-table">
            <thead><tr><th>Section</th><th>What it says</th><th>Maple example (made up)</th></tr></thead>
            <tbody>
              <tr><td>1. Purpose and scope</td><td>Why the policy exists and who it covers</td><td>All 146 staff, contractors and volunteers, on any device used for work.</td></tr>
              <tr><td>2. Approved tools</td><td>Where to find the list and who keeps it</td><td>Marcus Bell keeps the approved tools list on the staff intranet.</td></tr>
              <tr><td>3. Data rules</td><td>Which data may go into which tool</td><td>Green (public), Amber (internal, no personal data), Red (patient or staff personal data: BAA tools only).</td></tr>
              <tr><td>4. Allowed uses</td><td>Everyday uses staff can start now</td><td>Drafting agendas, emails and rotas with Amber data in the work AI assistant.</td></tr>
              <tr><td>5. Banned uses</td><td>Clear lines nobody may cross</td><td>Patient or staff data in free tools; AI making decisions about patients or staff.</td></tr>
              <tr><td>6. Approval for new tools</td><td>How to ask for a new tool or use</td><td>A short form to Daniel, then Marcus, Dr Nair if clinical, and Rosa.</td></tr>
              <tr><td>7. Human review</td><td>Who checks AI output, and when</td><td>A clinician approves every AI note, letter or patient reply.</td></tr>
              <tr><td>8. Incidents, training, review</td><td>What to do when something goes wrong, and when the policy is updated</td><td>Report to Marcus the same working day. Review every 6 months.</td></tr>
            </tbody>
          </table>
          <p>Rosa Delgado approved v1.0 on Monday 23 February 2026, before the AI scribe pilot started. Daniel owns the policy. Rosa, Daniel, Dr Priya Nair and Marcus review it every 6 months, so the next review is due on Monday 24 August 2026.</p>
        </div>
        <div class="lc-card">
          <h3>Allowed, needs approval, banned</h3>
          <p>Staff need clear examples, not only rules. Write each one as a simple action:</p>
          <table class="lc-table">
            <thead><tr><th>Group</th><th>Maple examples (made up)</th></tr></thead>
            <tbody>
              <tr><td><strong>Allowed</strong> (approved tool, you check it)</td><td>Draft a meeting agenda. Summarise public health guidance for a staff update. Rewrite a rota email more clearly. Ask the policy assistant about leave rules.</td></tr>
              <tr><td><strong>Needs approval</strong></td><td>Any new AI tool or add-on. Any use with patient (Red) data. Anything patients will see or hear, such as a chatbot on the website. Any AI that scores or ranks people.</td></tr>
              <tr><td><strong>Banned</strong></td><td>Patient or staff personal data in free or personal AI accounts. AI deciding about a patient's care, a hire, a warning or pay. Saving or sending clinical text that no clinician has checked. Hiding AI use from patients when the policy says to tell them.</td></tr>
            </tbody>
          </table>
          <p>The <strong>human review</strong> rule is the heart of the policy. At Maple, a clinician reads and approves every AI-drafted note, letter or patient reply before it is saved or sent. A manager checks any AI draft that goes outside Maple. The person who approves it owns it, not the AI.</p>
          <p>Say why each rule exists. A rule with a reason is easier to follow. For example: "No patient data in free tools. There is no BAA, so we cannot control the data."</p>
        </div>
        <div class="lc-card">
          <h3>Draft with AI, then check with people</h3>
          <p>AI is good at a first draft of a policy. It cannot know your law, your tools or your culture. Use it to save time, then check every line.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Write an AI policy for my company.</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Draft a 2-page AI use policy for a chain of 6 primary care clinics
        in New York (146 staff). Use these 8 headings: purpose and scope,
        approved tools, data rules (Green, Amber, Red), allowed uses,
        banned uses, approval for new tools, human review, incidents,
        training and review. Give 3 concrete examples under allowed and
        banned. Write in plain English at a reading age of 12. Mark every
        legal point "check with our lawyer". Do not quote laws in detail.</code></pre>
          <p>Before you approve it:</p>
          <ul class="lc-list">
            <li><strong>Get expert review.</strong> IT security, your clinical or quality lead, HR and a lawyer should each read it. This lesson is general education, not legal advice.</li>
            <li><strong>Test it with staff.</strong> Daniel asked Keisha Brown and four front desk staff to read the draft. They found two unclear rules, such as whether a patient's first name counts as personal data. (It does.)</li>
            <li><strong>Ask what people already use.</strong> Ask without blame. Hidden tools become visible, and you can approve or replace them.</li>
            <li><strong>Launch it with training.</strong> A policy nobody has read protects nobody.</li>
          </ul>
          <p><strong>A UK example.</strong> Bluefern Digital is a made-up 40-person digital agency in London. Hannah Price's team wrote a one-page policy. It says the team asks clients before using AI on their work, and keeps client confidential data out of public tools. It also follows UK GDPR for any personal data, and a person checks all AI output before a client sees it. Because Bluefern has clients in France and Germany, Hannah also asked a lawyer how the EU AI Act might apply.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: write and launch the policy</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put the steps for writing and launching an AI use policy in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Agree the purpose and who the policy covers with the sponsor.</li>
              <li data-order="2">Ask staff, without blame, which AI tools they already use.</li>
              <li data-order="3">Draft the data rules, allowed uses and banned uses (AI can help with the first draft).</li>
              <li data-order="4">Get reviews from IT security, the clinical lead, HR and a lawyer.</li>
              <li data-order="5">Test the draft with a few staff and fix any unclear rules.</li>
              <li data-order="6">Approve, publish and train everyone on it.</li>
              <li data-order="7">Review it every 6 months, or sooner after an incident or a new tool.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to draft a short AI use policy for your team. Then take the draft to your IT, HR and legal advisers before anyone relies on it.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a policy writer who uses plain English that any member of staff can understand.

        Organisation: [Bluefern Digital, a 40-person digital agency in London, with some clients in France and Germany].
        Approved AI tools: [one work AI assistant on a business account; AI features in our office software].
        Kinds of data we handle: [client briefs and plans, client customer lists, staff records].
        Main AI uses today: [first drafts of copy, summaries of meetings, ideas for campaigns].

        Draft a one-page AI use policy with these headings:
        1. Purpose and scope
        2. Approved tools
        3. Data rules: Green (public), Amber (internal or client work, no personal data), Red (personal data)
        4. Allowed uses (4 examples)
        5. Uses that need approval (3 examples), and who approves them
        6. Banned uses (4 examples), each with a one-line reason
        7. Human review: who checks AI output before a client sees it
        8. What to do if something goes wrong
        9. When the policy will be reviewed

        Mark every legal point "check with a qualified adviser". Do not quote laws in detail.</pre>
            <ul class="ai-try-checks">
              <li>Banned uses include personal or client confidential data in free or personal AI tools.</li>
              <li>Each banned use has a short reason.</li>
              <li>A named role checks AI output before it leaves the team.</li>
              <li>Legal points are marked for a qualified adviser, with no invented law details.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A good AI use policy is short, clear and full of real examples. It tells staff which tools to use, which data may go where, what needs approval and who checks the output. Draft it with AI if you like, but test it with staff, have experts review it and keep it up to date.
        </div>
      HTML
      starter_code: nil
    },
    11 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mgmt">Management</div>
          <h1 class="lc-title">Bringing People with You</h1>
        </div>
        <p class="lc-lead">An AI plan only works if people use it. Staff often hear "AI" and think "my job is at risk". If you stay silent, rumours fill the gap. In this lesson you will learn how to explain an AI change clearly, talk honestly about jobs and involve staff in the work. You will follow Rosa Delgado and Daniel Kim as they bring 146 staff at Maple Street Health with them.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 370" role="img" aria-label="A table of four staff groups at Maple Street Health, their main worry and what leaders do about it. Front desk, 54 staff, worry: will AI take my job? Leaders: no job cuts from this programme, and freed time goes to patient calls. Clinicians, 42 staff, worry: checking drafts may take longer. Leaders: the pilot measures checking time and clinicians judge the results. Nurses and medical assistants, 38 staff, worry: who is blamed if a draft is wrong? Leaders: clear check rules and training, and reporting errors is never punished. Managers, 12 staff, worry: when will we find the time? Leaders: a champion in every clinic and practice time in the rota. Bottom: a cycle of four steps: explain why, listen, involve, show results.">
            <defs><marker id="asl11a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <text x="95" y="26" font-weight="700" fill="#c4b5fd" text-anchor="middle">Staff group</text>
              <text x="317" y="26" font-weight="700" fill="#f9a8d4" text-anchor="middle">Their main worry</text>
              <text x="602" y="26" font-weight="700" fill="#6ee7b7" text-anchor="middle">What leaders do</text>
              <rect x="20" y="40" width="150" height="50" rx="8" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="34" y="61" font-weight="700">Front desk</text>
              <text x="34" y="80" font-size="11" fill="#9b99b8">54 staff</text>
              <rect x="185" y="40" width="265" height="50" rx="8" fill="#27274e" stroke="#ec4899"/>
              <text x="199" y="70" font-size="12">"Will AI take my job?"</text>
              <rect x="465" y="40" width="275" height="50" rx="8" fill="#27274e" stroke="#10b981"/>
              <text x="479" y="61" font-size="12">No job cuts from this programme</text>
              <text x="479" y="80" font-size="12">Freed time goes to patient calls</text>
              <rect x="20" y="100" width="150" height="50" rx="8" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="34" y="121" font-weight="700">Clinicians</text>
              <text x="34" y="140" font-size="11" fill="#9b99b8">42 staff</text>
              <rect x="185" y="100" width="265" height="50" rx="8" fill="#27274e" stroke="#ec4899"/>
              <text x="199" y="130" font-size="12">"Checking drafts may take longer."</text>
              <rect x="465" y="100" width="275" height="50" rx="8" fill="#27274e" stroke="#10b981"/>
              <text x="479" y="121" font-size="12">The pilot measures checking time</text>
              <text x="479" y="140" font-size="12">Clinicians judge the results</text>
              <rect x="20" y="160" width="150" height="50" rx="8" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="34" y="181" font-weight="700">Nurses and MAs</text>
              <text x="34" y="200" font-size="11" fill="#9b99b8">38 staff</text>
              <rect x="185" y="160" width="265" height="50" rx="8" fill="#27274e" stroke="#ec4899"/>
              <text x="199" y="190" font-size="12">"Who is blamed if a draft is wrong?"</text>
              <rect x="465" y="160" width="275" height="50" rx="8" fill="#27274e" stroke="#10b981"/>
              <text x="479" y="181" font-size="12">Clear check rules and training</text>
              <text x="479" y="200" font-size="12">Reporting errors is never punished</text>
              <rect x="20" y="220" width="150" height="50" rx="8" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="34" y="241" font-weight="700">Managers</text>
              <text x="34" y="260" font-size="11" fill="#9b99b8">12 staff</text>
              <rect x="185" y="220" width="265" height="50" rx="8" fill="#27274e" stroke="#ec4899"/>
              <text x="199" y="250" font-size="12">"When will we find the time?"</text>
              <rect x="465" y="220" width="275" height="50" rx="8" fill="#27274e" stroke="#10b981"/>
              <text x="479" y="241" font-size="12">A champion in every clinic</text>
              <text x="479" y="260" font-size="12">Practice time in the rota</text>
              <g text-anchor="middle">
                <rect x="20" y="296" width="150" height="40" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
                <text x="95" y="321">1. Explain why</text>
                <rect x="216" y="296" width="150" height="40" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
                <text x="291" y="321">2. Listen</text>
                <rect x="412" y="296" width="150" height="40" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
                <text x="487" y="321">3. Involve</text>
                <rect x="608" y="296" width="132" height="40" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
                <text x="674" y="321">4. Show results</text>
              </g>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#asl11a)">
                <line x1="172" y1="316" x2="212" y2="316"/>
                <line x1="368" y1="316" x2="408" y2="316"/>
                <line x1="564" y1="316" x2="604" y2="316"/>
              </g>
              <text x="380" y="358" font-size="12" fill="#9b99b8" text-anchor="middle">Repeat the cycle at every stage: before the pilot, during it and at roll-out.</text>
            </g>
          </svg>
          <figcaption>Each staff group at Maple Street Health has a different worry. Leaders answer each one, then repeat a simple cycle: explain, listen, involve, show results.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>What every person wants to know</h3>
          <p><strong>Change management</strong> means helping people move from the old way of working to the new way. With AI, the tool is often the easy part. The hard part is trust.</p>
          <p>When you announce an AI change, each person quietly asks five questions. Answer all five in your first message:</p>
          <table class="lc-table">
            <thead><tr><th>The question in their head</th><th>Rosa's answer at Maple Street Health (made up)</th></tr></thead>
            <tbody>
              <tr><td><strong>Why are we doing this?</strong></td><td>Clinicians write notes in the evening. Patients wait on the phone. We want to give that time back.</td></tr>
              <tr><td><strong>What changes for me?</strong></td><td>First: reminder texts, meeting notes, a policy Q&amp;A helper and a small AI scribe pilot in 2 clinics.</td></tr>
              <tr><td><strong>What will not change?</strong></td><td>There are no job cuts because of this first AI programme. A person checks every note, letter and patient reply.</td></tr>
              <tr><td><strong>How will I be involved?</strong></td><td>Staff join a working group, test tools and decide if the pilot passes.</td></tr>
              <tr><td><strong>Where do I take worries?</strong></td><td>Your manager, a listening session, or an anonymous question form.</td></tr>
            </tbody>
          </table>
          <p>Say it more than once, in more than one way. Use an all-staff email, a short talk at each clinic's team meeting and a page of questions and answers. People who were on leave or on a night shift need the message too.</p>
        </div>
        <div class="lc-card">
          <h3>Talking honestly about jobs</h3>
          <p>Fear about jobs is normal and reasonable. Do not wave it away. Honest answers build trust. Vague comfort destroys it.</p>
          <ul class="lc-list">
            <li><strong>Only promise what you can keep.</strong> Rosa's promise is exact: no job cuts because of the first AI programme. She does not promise "AI will never change any job". She could not keep that.</li>
            <li><strong>Say where the freed time goes.</strong> At Maple it goes to patient calls, rebooking and less after-hours work.</li>
            <li><strong>Say what you do not know yet.</strong> "We do not know if the scribe will work for us. The pilot will tell us. We will share the results when the pilot ends in May."</li>
            <li><strong>Separate tasks from jobs.</strong> AI changes some tasks inside a job. Say which tasks, and which skills will matter more.</li>
          </ul>
          <table class="lc-table">
            <thead><tr><th>Instead of saying</th><th>Say</th></tr></thead>
            <tbody>
              <tr><td>"Nothing will change."</td><td>"Some tasks will change. Here is which ones, and how we will help you learn."</td></tr>
              <tr><td>"Don't worry about your job."</td><td>"There are no job cuts because of this programme. Here is where the freed time will go."</td></tr>
              <tr><td>"The AI is very accurate."</td><td>"We will test it on our own work. You will see the error numbers."</td></tr>
              <tr><td>"It's been decided."</td><td>"This is the plan. Here is what you can still change, and how."</td></tr>
            </tbody>
          </table>
          <p>If a change could affect roles, hours or contracts, follow your HR policy and get HR or legal advice first. In the UK, Acas (the free employment advice service) has guidance on how to consult staff about changes at work. In the US, practice depends on the state, any union agreement and your own policies. This is general education, not legal advice.</p>
        </div>
        <div class="lc-card">
          <h3>Involve people, do not just inform them</h3>
          <p>People support what they help to build. Daniel set up four ways to involve staff (made-up details):</p>
          <ul class="lc-list">
            <li><strong>An AI working group:</strong> Keisha Brown (front desk lead, Astoria), two clinicians from the pilot clinics, a nurse and a manager. They meet every two weeks and can change the plan.</li>
            <li><strong>Listening sessions:</strong> a 30-minute session at each of the 6 clinics, run by Daniel and a local team member.</li>
            <li><strong>An anonymous question form:</strong> answers are posted every Friday on the staff page.</li>
            <li><strong>A pulse survey</strong> (a short survey of 3 to 5 questions, repeated to track change).</li>
          </ul>
          <p>The pulse survey asked: "Are you worried about your job because of AI?" (made-up results)</p>
          <table class="lc-table">
            <thead><tr><th>Survey</th><th>Replies (of 146 staff)</th><th>Said "worried"</th><th>Share worried</th></tr></thead>
            <tbody>
              <tr><td>Before the listening sessions</td><td>118</td><td>51</td><td>43.2%</td></tr>
              <tr><td>Six weeks later</td><td>121</td><td>23</td><td>19.0%</td></tr>
            </tbody>
          </table>
          <p>In a spreadsheet, the share is <code>=C2/B2</code>, formatted as a percentage. The drop is good news. But 23 people are still worried, and most of them work on the front desk. Daniel asks Keisha to run a second session just for front desk staff. A survey shows feelings. It does not prove why they changed.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Write an email telling staff we are using AI.</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>I am the COO of 6 clinics in New York (146 staff). Draft a short,
        warm all-staff email in plain English about our first AI programme.
        Answer five questions: why we are doing it, what changes, what will
        not change, how staff will be involved, where to take worries.
        Facts to use: no job cuts because of this programme; a person checks
        every AI draft; a small AI scribe pilot in 2 clinics; listening
        sessions in every clinic. Do not promise anything I have not listed.
        Under 300 words. Then list 5 hard questions staff may ask.</code></pre>
          <p>Read the draft as a worried receptionist would. Remove any phrase that sounds like spin. The message must sound like you, so rewrite it in your own words.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: does it build trust?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each made-up action by its likely effect on staff trust.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="builds" data-label="Builds trust"></div>
              <div data-sorter-target="bucket" data-bucket="damages" data-label="Damages trust"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="builds" data-why="It is a clear, exact promise that Rosa can keep, and it says where the freed time goes.">Rosa says: "No job cuts because of this programme. Freed time goes to patient calls."</li>
              <li data-bucket="builds" data-why="Giving staff a real role, including the power to change the plan, makes the change theirs too.">Keisha Brown joins the AI working group and can change the plan.</li>
              <li data-bucket="builds" data-why="Sharing bad news as well as good shows that the numbers are honest.">Daniel shares the pilot's error numbers, including the mistakes.</li>
              <li data-bucket="damages" data-why="A promise nobody can keep will be broken later. Then people stop believing anything you say.">A manager tells the team: "AI will never change your jobs."</li>
              <li data-bucket="damages" data-why="Staff hear about it from someone else first. It feels like something was hidden from them.">Staff learn about the AI scribe from a vendor's press release.</li>
              <li data-bucket="damages" data-why="If people fear blame, they hide errors. Then nobody can fix the real problem.">A nurse is criticised in a team meeting for reporting a wrong AI draft.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to help you plan how to tell your team about an AI change. You get a staff message, honest answers to hard questions and a short listening session plan.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an experienced change manager. Use plain, warm, simple English.

        My organisation: [6 primary care clinics in New York, 146 staff].
        The AI change: [AI-drafted clinical notes, tested first in 2 clinics; a clinician checks every note].
        Groups affected and their worries: [front desk: job loss; clinicians: extra checking time; nurses: blame if a draft is wrong].
        What I can promise: [no job cuts because of this programme; freed time goes to patient calls].
        What I do not know yet: [whether the tool saves enough time; we will know after the pilot].

        Please:
        1. Draft a staff message under 250 words that answers: why, what changes, what will not change, how staff are involved, where to take worries.
        2. For each group, write the 2 hardest questions they may ask and an honest answer. Use only my promises.
        3. Plan a 30-minute listening session: agenda, who runs it, how to collect questions anonymously.
        4. List 3 phrases I should avoid because they sound like spin.

        Do not add promises I have not given you.</pre>
            <ul class="ai-try-checks">
              <li>The message makes no promise beyond the ones you gave.</li>
              <li>It says clearly what you do not know yet.</li>
              <li>Each group's worry gets a direct answer, not general comfort.</li>
              <li>There is an anonymous way to ask questions.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> People do not resist AI. They resist uncertainty and changes done to them. Explain why, make only promises you can keep, say what you do not know and give staff a real say. Then share the results, good and bad. Trust grows when your actions match your words.
        </div>
      HTML
      starter_code: nil
    },
    12 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mgmt">Management</div>
          <h1 class="lc-title">Training and Skills</h1>
        </div>
        <p class="lc-lead">Buying an AI tool does not make people good at using it. People need to know the rules, practise on real tasks and get help when they are stuck. In this lesson you will build a <strong>role-based training plan</strong> (a plan that gives each group the skills for its own work). You will also set up champions and protected practice time. You will follow Daniel Kim as he plans training for the first wave at Maple Street Health, and counts what it costs in staff time.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 360" role="img" aria-label="Maple Street Health's made-up training plan as a grid. Columns: basics, role module, practice and total hours per person. Front desk and admin, 54 people: basics 1 hour, reminder texts and policy helper 1.5 hours, practice 2 hours, total 4.5 hours. Clinicians, 32 new users: basics 1 hour, ClearNote scribe 2 hours with the vendor's trainer, practice 2 hours, total 5 hours. Nurses and medical assistants, 38 people: basics 1 hour, policy helper 0.5 hours, no practice block, total 1.5 hours. Managers, 12 people: basics 1 hour, meeting notes and coaching 2 hours, practice 2 hours, total 5 hours. Champions, 6, one per clinic: 4 extra hours of training, then 1 hour a week for 8 weeks helping colleagues, 12 more hours each. Total: 602 staff hours, about 39,000 dollars of staff time.">
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <g font-weight="700" fill="#c4b5fd" text-anchor="middle">
                <text x="110" y="28">Group</text>
                <text x="270" y="28">Basics</text>
                <text x="430" y="28">Role module</text>
                <text x="585" y="28">Practice</text>
                <text x="695" y="28">Total each</text>
              </g>
              <rect x="20" y="42" width="180" height="46" rx="8" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="32" y="61" font-weight="700">Front desk, admin</text>
              <text x="32" y="79" font-size="11" fill="#9b99b8">54 people</text>
              <rect x="20" y="96" width="180" height="46" rx="8" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="32" y="115" font-weight="700">Clinicians</text>
              <text x="32" y="133" font-size="11" fill="#9b99b8">32 new users</text>
              <rect x="20" y="150" width="180" height="46" rx="8" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="32" y="169" font-weight="700">Nurses and MAs</text>
              <text x="32" y="187" font-size="11" fill="#9b99b8">38 people</text>
              <rect x="20" y="204" width="180" height="46" rx="8" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="32" y="223" font-weight="700">Managers</text>
              <text x="32" y="241" font-size="11" fill="#9b99b8">12 people</text>
              <g text-anchor="middle">
                <rect x="210" y="42" width="120" height="208" rx="8" fill="#27274e" stroke="#3b82f6"/>
                <text x="270" y="132" font-weight="700">1 h each</text>
                <text x="270" y="152" font-size="11" fill="#9b99b8">AI basics and</text>
                <text x="270" y="168" font-size="11" fill="#9b99b8">our AI policy</text>
                <rect x="340" y="42" width="180" height="46" rx="8" fill="#27274e" stroke="#22d3ee"/>
                <text x="430" y="61" font-size="12">Texts + policy helper</text>
                <text x="430" y="79" font-size="11" fill="#9b99b8">1.5 h</text>
                <rect x="340" y="96" width="180" height="46" rx="8" fill="#27274e" stroke="#22d3ee"/>
                <text x="430" y="115" font-size="12">ClearNote scribe</text>
                <text x="430" y="133" font-size="11" fill="#9b99b8">2 h, vendor trainer</text>
                <rect x="340" y="150" width="180" height="46" rx="8" fill="#27274e" stroke="#22d3ee"/>
                <text x="430" y="169" font-size="12">Policy helper</text>
                <text x="430" y="187" font-size="11" fill="#9b99b8">0.5 h</text>
                <rect x="340" y="204" width="180" height="46" rx="8" fill="#27274e" stroke="#22d3ee"/>
                <text x="430" y="223" font-size="12">Meeting notes, coaching</text>
                <text x="430" y="241" font-size="11" fill="#9b99b8">2 h</text>
                <rect x="530" y="42" width="110" height="46" rx="8" fill="#27274e" stroke="#10b981"/>
                <text x="585" y="70" font-size="12">4 x 30 min</text>
                <rect x="530" y="96" width="110" height="46" rx="8" fill="#27274e" stroke="#10b981"/>
                <text x="585" y="124" font-size="12">4 x 30 min</text>
                <rect x="530" y="150" width="110" height="46" rx="8" fill="#27274e" stroke="#10b981"/>
                <text x="585" y="178" font-size="12" fill="#9b99b8">none yet</text>
                <rect x="530" y="204" width="110" height="46" rx="8" fill="#27274e" stroke="#10b981"/>
                <text x="585" y="232" font-size="12">4 x 30 min</text>
                <rect x="650" y="42" width="90" height="46" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
                <text x="695" y="70" font-weight="700">4.5 h</text>
                <rect x="650" y="96" width="90" height="46" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
                <text x="695" y="124" font-weight="700">5 h</text>
                <rect x="650" y="150" width="90" height="46" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
                <text x="695" y="178" font-weight="700">1.5 h</text>
                <rect x="650" y="204" width="90" height="46" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
                <text x="695" y="232" font-weight="700">5 h</text>
              </g>
              <rect x="20" y="262" width="180" height="46" rx="8" fill="#1f1f44" stroke="#ec4899"/>
              <text x="32" y="281" font-weight="700">Champions</text>
              <text x="32" y="299" font-size="11" fill="#9b99b8">6, one per clinic</text>
              <rect x="210" y="262" width="430" height="46" rx="8" fill="#27274e" stroke="#ec4899"/>
              <text x="425" y="290" font-size="12" text-anchor="middle">+4 h training, then 1 h a week for 8 weeks helping others</text>
              <rect x="650" y="262" width="90" height="46" rx="8" fill="#1f1f44" stroke="#ec4899"/>
              <text x="695" y="290" font-weight="700" text-anchor="middle">+12 h</text>
              <text x="380" y="334" font-size="12" fill="#9b99b8" text-anchor="middle">Total: 602 staff hours, about $39,000 of staff time (made-up rates).</text>
              <text x="380" y="352" font-size="12" fill="#9b99b8" text-anchor="middle">The 10 pilot clinicians take the basics only. They trained during the pilot.</text>
            </g>
          </svg>
          <figcaption>A made-up role-based training plan for Maple Street Health's first wave. Everyone gets the basics. Each group gets its own module and practice time. Six champions get extra training.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Train by role, not "AI for everyone"</h3>
          <p>One long "Introduction to AI" talk for everyone is easy to organise. It rarely changes how people work. People learn best when training uses their own tasks. So build training in three layers:</p>
          <ul class="lc-list">
            <li><strong>Basics for everyone:</strong> what AI can and cannot do, the approved tools, the data rules and how to report a problem. At Maple this is a 1-hour session on the AI Use Policy and the Green, Amber and Red data levels.</li>
            <li><strong>A role module:</strong> the exact tool and task for each group. Front desk staff learn the reminder and rebooking texts. Clinicians learn the ClearNote scribe.</li>
            <li><strong>Practice and support:</strong> protected time to try the tool on real work, with help close by.</li>
          </ul>
          <p>This kind of basic understanding is often called <strong>AI literacy</strong> (knowing enough about AI to use it safely and judge its output). Some rules now expect it. The EU AI Act asks organisations that provide or use AI systems to take steps to support AI literacy among their staff. A 2026 change to the Act, Regulation (EU) 2026/1744, says this means taking steps to support AI literacy. It does not require a guaranteed level. Bluefern Digital, a made-up London agency with clients in the EU, should ask its lawyer how this applies to it. This is general education, not legal advice.</p>
          <p>Every role module should teach three things: <strong>how to use the tool</strong>, <strong>how to check its output</strong> and <strong>when not to use it</strong>. The checking part matters most. A clinician who signs an AI note without reading it is less safe than one with no AI at all.</p>
        </div>
        <div class="lc-card">
          <h3>Count the cost in staff time</h3>
          <p>Training takes people away from patients and customers. Plan it like any other cost. Daniel's plan uses the loaded hourly costs from the business case (all made up):</p>
          <table class="lc-table">
            <thead><tr><th>Training</th><th>People</th><th>Hours each</th><th>Rate $/h</th><th>Staff hours</th><th>Staff-time cost</th></tr></thead>
            <tbody>
              <tr><td>Basics: clinicians</td><td>42</td><td>1</td><td>110</td><td>42</td><td>$4,620</td></tr>
              <tr><td>Basics: nurses and MAs</td><td>38</td><td>1</td><td>55</td><td>38</td><td>$2,090</td></tr>
              <tr><td>Basics: front desk and admin</td><td>54</td><td>1</td><td>36</td><td>54</td><td>$1,944</td></tr>
              <tr><td>Basics: managers</td><td>12</td><td>1</td><td>60</td><td>12</td><td>$720</td></tr>
              <tr><td>Role: front desk (texts, policy helper)</td><td>54</td><td>1.5</td><td>36</td><td>81</td><td>$2,916</td></tr>
              <tr><td>Role: clinicians (ClearNote)</td><td>32</td><td>2</td><td>110</td><td>64</td><td>$7,040</td></tr>
              <tr><td>Role: nurses (policy helper)</td><td>38</td><td>0.5</td><td>55</td><td>19</td><td>$1,045</td></tr>
              <tr><td>Role: managers (notes, coaching)</td><td>12</td><td>2</td><td>60</td><td>24</td><td>$1,440</td></tr>
              <tr><td>Practice: front desk</td><td>54</td><td>2</td><td>36</td><td>108</td><td>$3,888</td></tr>
              <tr><td>Practice: clinicians</td><td>32</td><td>2</td><td>110</td><td>64</td><td>$7,040</td></tr>
              <tr><td>Practice: managers</td><td>12</td><td>2</td><td>60</td><td>24</td><td>$1,440</td></tr>
              <tr><td>Champions (2 front desk, 2 nurses, 2 clinicians)</td><td>6</td><td>12</td><td>mixed</td><td>72</td><td>$4,824</td></tr>
              <tr><td><strong>Total</strong></td><td></td><td></td><td></td><td><strong>602</strong></td><td><strong>$39,007</strong></td></tr>
            </tbody>
          </table>
          <p>In a spreadsheet, put People in column B, Hours each in C and Rate in D. Staff hours in E2 is <code>=B2*C2</code>. Staff-time cost in F2 is <code>=B2*C2*D2</code>. For the champions row, first add the hourly rates of the 6 people: 2 × 36 + 2 × 55 + 2 × 110 = $402. Then multiply by 12 hours: $4,824.</p>
          <p>Tom Walsh, the finance director, points out two things. First, this is staff time, not extra cash. It is not part of the $140,800 first-wave budget, but it is real. Second, the vendor's own trainer runs the clinician module. That cost is already inside ClearNote's $25,000 one-off fee. Daniel books training in quiet hours and in small groups, so every front desk still has cover.</p>
        </div>
        <div class="lc-card">
          <h3>Champions, practice time and a skills check</h3>
          <p>A <strong>champion</strong> is a respected colleague who learns a tool early and helps others in their own team. People ask a colleague more easily than IT. Maple has one champion per clinic. Keisha Brown is the champion at Astoria.</p>
          <ul class="lc-list">
            <li><strong>Choose by respect, not job title.</strong> A good champion is patient and trusted. They do not need to love technology.</li>
            <li><strong>Give them real time.</strong> Each champion gets 4 extra hours of training, then 1 hour a week for 8 weeks to help others. Their manager agrees this in the rota.</li>
            <li><strong>Protect practice time.</strong> Staff get 30 minutes a week for 4 weeks to try the tool on their own work. Without booked time, practice does not happen.</li>
            <li><strong>Practise safely.</strong> Use made-up examples, such as invented patient cases, in practice sessions. Never use real patient data outside the approved tools.</li>
            <li><strong>Share good prompts.</strong> Keep a short prompt library (a shared page of tested prompts for common tasks) on SharePoint.</li>
          </ul>
          <p>Check skills, not attendance. A clinician finishes ClearNote training by checking a made-up AI note with 3 planted errors. To pass, they must find all 3. Someone who misses one gets a short follow-up with the champion.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Make an AI training course for my staff.</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>I lead 54 front desk staff across 6 clinics. They will use an AI
        add-on in our scheduling system to send reminder and rebooking texts.
        Plan a 1.5-hour training session in plain English:
        1. Learning goals: use the tool, check each text, know when not to use it.
        2. A timed agenda with 2 hands-on exercises using made-up patients.
        3. A one-page cheat sheet: 5 steps and 3 common mistakes.
        4. A 5-minute skills check at the end.
        Staff work shifts, so the session must run in small groups.</code></pre>
          <p>The AI gives you a solid first draft. Ask a champion to try it and cut what does not fit real shifts.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: a champion's drop-in session</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="A receptionist asks">At Keisha's Thursday drop-in, a new receptionist asks: "How do I rebook a patient who replied to the reminder text?"</li>
              <li data-kind="tool" data-label="Keisha opens the tool">Keisha opens the scheduling system's AI add-on and shows the rebooking screen.</li>
              <li data-kind="result" data-label="The tool shows">The AI suggests three free slots and a draft reply text for the patient.</li>
              <li data-kind="check" data-label="Keisha teaches the check">She shows how to check the clinic name, the date and the doctor before sending. "The AI suggests. You send."</li>
              <li data-kind="warn" data-label="Spot the risk">The receptionist says a colleague pasted a patient's message into a free chatbot to make the reply "nicer". That puts patient data into an unapproved tool.</li>
              <li data-kind="thought" data-label="Keisha thinks">"This is not about blame. People need a better option, and Marcus needs to know today."</li>
              <li data-kind="answer" data-label="Keisha acts">She reports it to Marcus Bell the same day, as the policy says. She asks Daniel to add a "polite reply" prompt to the library for the approved tool. She raises it at the next working group meeting.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to build a role-based training plan for your team, with the staff-time cost. Then check the maths in a spreadsheet.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a learning and development lead. Use simple English.

        My organisation: [6 clinics in New York].
        AI tools we are rolling out: [reminder texts in our scheduling system; an AI meeting-notes add-on; an approved AI assistant for staff policy questions].
        Staff groups (number of people, loaded cost per hour):
        [Front desk: 54, $36
        Nurses: 38, $55
        Managers: 12, $60]
        Rules: [no patient data outside approved tools; a person checks every AI draft].

        Please:
        1. Build a training plan table: group, module, hours each, format (live, video, drop-in), who trains, skills check.
        2. Include 1 hour of basics for everyone: approved tools, data rules, how to report a problem.
        3. Add practice time and a champion plan (how many, hours, how to choose them).
        4. Calculate staff hours and staff-time cost per row and in total. Show the working.
        5. List 3 ways to keep services running while people train.

        Use made-up examples only in practice exercises.</pre>
            <ul class="ai-try-checks">
              <li>Recalculate two rows yourself: people × hours × rate.</li>
              <li>Every module teaches how to check the output, not just how to use the tool.</li>
              <li>Practice time and champion time are actually booked, not "when people have time".</li>
              <li>The skills check tests real skill, not just attendance.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Good AI training is short, role-based and practical. Teach each group its own tool, how to check the output and when not to use it. Then protect practice time, support people with champions and count the staff time honestly. A tool people do not know how to check is a risk, not a saving.
        </div>
      HTML
      starter_code: nil
    },
    13 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mgmt">Management</div>
          <h1 class="lc-title">Measuring Results and Scaling</h1>
        </div>
        <p class="lc-lead">After launch, the real question is simple: is it working? In this lesson you will learn to measure AI in three ways: are people using it, is the work better, and is it safe. You will compare results with your "before" numbers and with your plan. Then you will decide, for each tool, whether to scale it, fix it or stop it. You will follow Daniel Kim at Maple Street Health's first-wave review in September 2026.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 360" role="img" aria-label="A dashboard for Maple Street Health's first-wave review on 15 September 2026, with made-up data. AI scribe: adoption 37 of 42 clinicians, note time down 26.7 percent, zero serious errors in audits. Decision: keep and support. Reminder texts: admin time down 36.7 percent, no-shows down 18 percent, 4 wrong texts fixed. Decision: scale. Meeting notes: adoption 9 of 20 licences, 3 hours a week saved against a plan of 7.5. Decision: fix. Policy helper: 6 of 40 test answers wrong, 3 hours a week saved against a plan of 8. Decision: pause. Bottom bar: annualised value 232,704 dollars, which is 81.5 percent of the planned 285,696 dollars.">
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <text x="380" y="26" font-weight="700" fill="#c4b5fd" text-anchor="middle">First-wave review, 15 September 2026 (made-up data)</text>
              <rect x="20" y="42" width="172" height="220" rx="8" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="34" y="66" font-weight="700">AI scribe (UC3)</text>
              <text x="34" y="94" font-size="11" fill="#9b99b8">Adoption</text>
              <text x="34" y="112" font-size="12">37 of 42 clinicians</text>
              <text x="34" y="138" font-size="11" fill="#9b99b8">Outcome</text>
              <text x="34" y="156" font-size="12">Note time -26.7%</text>
              <text x="34" y="182" font-size="11" fill="#9b99b8">Safety</text>
              <text x="34" y="200" font-size="12">0 serious errors</text>
              <rect x="34" y="218" width="144" height="30" rx="15" fill="#27274e" stroke="#3b82f6"/>
              <text x="106" y="238" font-size="12" font-weight="700" text-anchor="middle" fill="#93c5fd">KEEP + SUPPORT</text>
              <rect x="202" y="42" width="172" height="220" rx="8" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="216" y="66" font-weight="700">Reminder texts (UC1)</text>
              <text x="216" y="94" font-size="11" fill="#9b99b8">Outcome</text>
              <text x="216" y="112" font-size="12">Admin time -36.7%</text>
              <text x="216" y="138" font-size="11" fill="#9b99b8">Outcome</text>
              <text x="216" y="156" font-size="12">No-shows -18%</text>
              <text x="216" y="182" font-size="11" fill="#9b99b8">Quality</text>
              <text x="216" y="200" font-size="12">4 wrong texts, fixed</text>
              <rect x="216" y="218" width="144" height="30" rx="15" fill="#27274e" stroke="#10b981"/>
              <text x="288" y="238" font-size="12" font-weight="700" text-anchor="middle" fill="#6ee7b7">SCALE</text>
              <rect x="384" y="42" width="172" height="220" rx="8" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="398" y="66" font-weight="700">Meeting notes (UC7)</text>
              <text x="398" y="94" font-size="11" fill="#9b99b8">Adoption</text>
              <text x="398" y="112" font-size="12">9 of 20 licences</text>
              <text x="398" y="138" font-size="11" fill="#9b99b8">Outcome</text>
              <text x="398" y="156" font-size="12">3 h a week saved</text>
              <text x="398" y="182" font-size="11" fill="#9b99b8">Plan</text>
              <text x="398" y="200" font-size="12">7.5 h a week</text>
              <rect x="398" y="218" width="144" height="30" rx="15" fill="#27274e" stroke="#f59e0b"/>
              <text x="470" y="238" font-size="12" font-weight="700" text-anchor="middle" fill="#fcd34d">FIX</text>
              <rect x="566" y="42" width="174" height="220" rx="8" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="580" y="66" font-weight="700">Policy helper (UC6)</text>
              <text x="580" y="94" font-size="11" fill="#9b99b8">Quality</text>
              <text x="580" y="112" font-size="12">6 of 40 answers wrong</text>
              <text x="580" y="138" font-size="11" fill="#9b99b8">Outcome</text>
              <text x="580" y="156" font-size="12">3 h a week saved</text>
              <text x="580" y="182" font-size="11" fill="#9b99b8">Plan</text>
              <text x="580" y="200" font-size="12">8 h a week</text>
              <rect x="580" y="218" width="146" height="30" rx="15" fill="#27274e" stroke="#ec4899"/>
              <text x="653" y="238" font-size="12" font-weight="700" text-anchor="middle" fill="#f9a8d4">PAUSE</text>
              <text x="20" y="292" font-size="12">Annualised value of time freed, against the plan</text>
              <rect x="20" y="302" width="720" height="22" rx="6" fill="#27274e" stroke="#9b99b8"/>
              <rect x="20" y="302" width="587" height="22" rx="6" fill="#22d3ee" fill-opacity="0.35" stroke="#22d3ee"/>
              <text x="313" y="318" font-size="12" text-anchor="middle">$232,704 (81.5%)</text>
              <text x="673" y="318" font-size="12" text-anchor="middle" fill="#9b99b8">plan $285,696</text>
              <text x="380" y="348" font-size="12" fill="#9b99b8" text-anchor="middle">Time freed is capacity, not cash, unless the clinics use it.</text>
            </g>
          </svg>
          <figcaption>A made-up review dashboard: each first-wave tool gets adoption, outcome and safety numbers, and a clear decision to keep, scale, fix or pause.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Measure three things, not one</h3>
          <p>Many AI reports only count logins. That is a <strong>vanity metric</strong> (a number that looks good but does not show real value). Measure three layers instead:</p>
          <table class="lc-table">
            <thead><tr><th>Layer</th><th>The question</th><th>Example measures at Maple (made up)</th></tr></thead>
            <tbody>
              <tr><td><strong>Adoption</strong></td><td>Are people really using it?</td><td>Clinicians who use the scribe in most visits; licences used each week</td></tr>
              <tr><td><strong>Outcomes</strong></td><td>Is the work better, faster or cheaper?</td><td>Hours a week on notes; missed appointments a month; reply times</td></tr>
              <tr><td><strong>Quality and safety</strong></td><td>Is it accurate and safe?</td><td>Serious errors in audited notes; wrong answers in a test set; complaints</td></tr>
            </tbody>
          </table>
          <p>Add <strong>experience</strong> too: a short staff and patient survey. A tool that saves time but makes staff miserable will not last.</p>
          <p>Every measure needs three numbers: the <strong>baseline</strong> (the "before" number), the <strong>target</strong> agreed before launch and the <strong>actual</strong> result. Daniel took baselines for all four tools before they went live. Without them, he could only guess.</p>
          <p>Watch for false signals. No-shows change with the seasons, so Daniel also compares August 2026 with August 2025. And early numbers are often low while people learn. That is why the review waited until all 6 clinics had used the scribe for at least 8 weeks.</p>
        </div>
        <div class="lc-card">
          <h3>The first-wave review at Maple</h3>
          <p>The AI scribe went live in Harlem and Park Slope on Monday 1 June 2026, and in Williamsburg and Flushing on Monday 6 July 2026. Daniel presented these made-up results on Tuesday 15 September 2026:</p>
          <table class="lc-table">
            <thead><tr><th>Use case</th><th>Baseline</th><th>Target</th><th>Actual (August)</th><th>Change</th><th>Hours saved a week: plan, actual</th></tr></thead>
            <tbody>
              <tr><td>UC3 AI scribe</td><td>3.0 h a week per clinician</td><td>At most 2.4 h (20% less)</td><td>2.2 h</td><td>-26.7%</td><td>37.8, 33.6 (42 × 0.8)</td></tr>
              <tr><td>UC1 Reminder texts</td><td>60 h a week</td><td>At most 42 h (30% less)</td><td>38 h</td><td>-36.7%</td><td>24, 22</td></tr>
              <tr><td>UC7 Meeting notes</td><td>15 h a week</td><td>16 of 20 licences used</td><td>12 h; 9 licences used</td><td>-20.0%</td><td>7.5, 3</td></tr>
              <tr><td>UC6 Policy helper</td><td>20 h a week</td><td>At most 1 wrong answer in 40</td><td>17 h; 6 wrong in 40</td><td>-15.0%</td><td>8, 3</td></tr>
            </tbody>
          </table>
          <p>The targets are minimum levels, agreed with Rosa before launch. They are lower than the business case, which used the likely case. So a tool can pass its target and still save less than planned, like UC3 and UC1.</p>
          <p>In a spreadsheet, the change is <code>=(C2-B2)/B2</code>, formatted as a percentage. The annual value uses the same formula as the business case: hours saved a week × hourly cost × 48 weeks.</p>
          <ul class="lc-list">
            <li>UC3: 33.6 × $110 × 48 = $177,408 (plan $199,584)</li>
            <li>UC1: 22 × $36 × 48 = $38,016 (plan $41,472)</li>
            <li>UC7: 3 × $60 × 48 = $8,640 (plan $21,600)</li>
            <li>UC6: 3 × $60 × 48 = $8,640 (plan $23,040)</li>
          </ul>
          <p>Total: <strong>$232,704</strong>, which is 81.5% of the planned $285,696. After $100,800 of running costs, the net annual benefit is $131,904, against a plan of $184,896. That is still a good result. But Daniel reports it honestly, tool by tool.</p>
          <p>Tom Walsh repeats his warning: this is capacity freed, not cash saved. So Daniel also shows where the time went. Front desk staff used it for rebooking calls. In the staff survey, clinicians said they finish notes in the evening less often.</p>
        </div>
        <div class="lc-card">
          <h3>Scale, fix or stop</h3>
          <p>Agree your decision rules before you see the results. Then nobody can bend them later.</p>
          <table class="lc-table">
            <thead><tr><th>Decision</th><th>When</th><th>Maple's first wave</th></tr></thead>
            <tbody>
              <tr><td><strong>Scale</strong></td><td>Adoption, outcome and safety all meet the target</td><td>UC1: add a text that offers freed slots to patients on the waiting list.</td></tr>
              <tr><td><strong>Keep and support</strong></td><td>It works, but some people are not using it yet</td><td>UC3: champions help the 5 clinicians who rarely use it. The monthly audit of 50 notes continues.</td></tr>
              <tr><td><strong>Fix</strong></td><td>It is safe, but adoption or results are below target</td><td>UC7: only 9 of 20 licences are used. Retrain managers, then cut to 10 licences at renewal. That saves 10 × $30 × 12 = $3,600 a year. Review again in December.</td></tr>
              <tr><td><strong>Pause or stop</strong></td><td>Quality or safety is below the line, or a fix has already failed</td><td>UC6: a test of 40 real staff questions found 6 wrong answers (15%). The July leave policy was saved in a folder the assistant could not see. Pause it. Relaunch only if a new 40-question test has at most 1 wrong answer.</td></tr>
            </tbody>
          </table>
          <p>Stopping a tool that does not work is good management, not failure. It frees money and attention for the tools that do work. Say clearly why you stopped and what you learned.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Is our AI project a success?</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Here are made-up results for 4 AI tools: baseline, target and actual
        for adoption, outcome and quality [paste table, no personal data].
        Our rules: Scale if all three meet target. Fix if safe but below
        target. Pause if quality is below the line.
        1. Check my percentage changes and value sums. Show the working.
        2. Suggest scale, fix or pause for each tool, with one reason.
        3. Point out any number that could be misleading (season, learning
           period, small sample).
        Do not change my numbers.</code></pre>
          <p>The AI can check maths and spot weak evidence. Rosa and the steering group make the final call.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: scale, fix or stop?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each made-up review result by the decision it most needs.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="scale" data-label="Scale"></div>
              <div data-sorter-target="bucket" data-bucket="fix" data-label="Fix"></div>
              <div data-sorter-target="bucket" data-bucket="stop" data-label="Pause or stop"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="scale" data-why="Adoption, outcome and quality all meet the target. It is ready for more people or more tasks.">Maple's reminder texts: admin time down 36.7%, no-shows down 18%, the 4 wrong texts were fixed.</li>
              <li data-bucket="scale" data-why="All 14 supervisors use it, the time saving is clear and spot checks found no missed safety issues. A second site is a sensible next step.">Northbridge Logistics: all 14 shift supervisors use AI handover summaries, and spot checks found no missed safety issues.</li>
              <li data-bucket="fix" data-why="It is safe, but most licences are unused. Find out why, retrain, and pay only for what people use.">Maple's meeting notes: only 9 of 20 licences are used each week.</li>
              <li data-bucket="fix" data-why="Low use with a clear reason is a fixable problem. Better templates and prompts may solve it. Set a review date.">Bluefern Digital: only 2 of 8 team members use AI report drafts. Others say the drafts ignore the client's style.</li>
              <li data-bucket="stop" data-why="Wrong answers about staff policies can mislead people. Quality is below the line, so pause until the cause is fixed and tested.">Maple's policy helper: 6 of 40 test answers were wrong.</li>
              <li data-bucket="stop" data-why="A fix was already tried and the tool is still worse than the people it should help. Stop it and use the budget elsewhere.">Northbridge Logistics: after a 3-month fix, an AI late-delivery forecast is still less accurate than the dispatchers.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Give AI your own results (with no personal data) and ask for a clear review summary. Check every calculation yourself.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a performance analyst who helps managers review AI tools. Use simple English.

        Results after 3 months (made up; replace with mine):
        [Tool A, reminder texts: hours a week 60 before, 38 now; target at most 42; 4 wrong texts, fixed.
        Tool B, meeting notes: 9 of 20 licences used weekly; target 16; hours a week 15 before, 12 now.
        Tool C, policy helper: 6 of 40 test answers wrong; target at most 1; hours a week 20 before, 17 now.]
        Hourly staff cost: [$36 for Tool A, $60 for Tools B and C]. Working weeks a year: [48].

        Please:
        1. For each tool, show adoption, outcome and quality against target in one table.
        2. Calculate the % change and the annual value of hours saved (hours saved x cost x weeks). Show the working.
        3. Recommend Scale, Fix or Pause for each tool, with one reason.
        4. List 2 things that could make these numbers misleading.
        5. Write a 5-sentence summary for my boss. Say that time saved is capacity, not cash.

        Do not change my numbers. If data is missing, say so.</pre>
            <ul class="ai-try-checks">
              <li>Recalculate the % changes and annual values yourself.</li>
              <li>A tool with quality below target is not marked "Scale".</li>
              <li>The summary separates time freed from cash saved.</li>
              <li>The risks to the numbers are specific (season, learning period, sample size).</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Measure adoption, outcomes and safety against a baseline and a target you agreed before launch. Then make a clear call for each tool: scale, keep and support, fix or stop. Reporting a lower-than-planned result honestly builds more trust than a glossy dashboard, and stopping what does not work frees money for what does.
        </div>
      HTML
      starter_code: nil
    },
    14 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mgmt">Management</div>
          <h1 class="lc-title">Governance</h1>
        </div>
        <p class="lc-lead"><strong>Governance</strong> means clear rules for who decides, who checks and who must be told. With AI, it keeps good tools safe as they spread, and stops risky ones early. In this lesson you will set up an AI steering group, run regular risk reviews and handle incidents calmly. You will see how Maple Street Health governs its AI tools. You will also see how a small team like Bluefern Digital can do it in a lighter way.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 380" role="img" aria-label="Maple Street Health's made-up AI governance. Top: the AI steering group meets monthly for 60 minutes. Chair: Rosa Delgado, COO and sponsor. Members: Daniel Kim, Dr Priya Nair, Marcus Bell, Grace Liu, Tom Walsh and Keisha Brown. It oversees three processes. Tool approvals: a request form and a decision within 10 working days. Risk reviews: the risk register and AI register, every quarter. Incident handling: report on the same working day to Marcus Bell. Bottom: staff, champions and the AI working group raise ideas, risks and incidents.">
            <defs><marker id="asl14a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <g text-anchor="middle">
                <rect x="150" y="30" width="460" height="100" rx="8" fill="#1f1f44" stroke="#8b5cf6" stroke-width="2"/>
                <text x="380" y="56" font-weight="700" fill="#c4b5fd">AI steering group: monthly, 60 minutes</text>
                <text x="380" y="82" font-size="12">Chair: Rosa Delgado (COO, sponsor)</text>
                <text x="380" y="104" font-size="12" fill="#9b99b8">Daniel Kim, Dr Priya Nair, Marcus Bell, Grace Liu,</text>
                <text x="380" y="121" font-size="12" fill="#9b99b8">Tom Walsh, Keisha Brown</text>
                <rect x="20" y="176" width="230" height="92" rx="8" fill="#27274e" stroke="#3b82f6"/>
                <text x="135" y="204" font-weight="700">Tool approvals</text>
                <text x="135" y="228" font-size="12" fill="#9b99b8">Request form, decision</text>
                <text x="135" y="246" font-size="12" fill="#9b99b8">within 10 working days</text>
                <rect x="265" y="176" width="230" height="92" rx="8" fill="#27274e" stroke="#f59e0b"/>
                <text x="380" y="204" font-weight="700">Risk reviews</text>
                <text x="380" y="228" font-size="12" fill="#9b99b8">Risk register and AI</text>
                <text x="380" y="246" font-size="12" fill="#9b99b8">register, every quarter</text>
                <rect x="510" y="176" width="230" height="92" rx="8" fill="#27274e" stroke="#ec4899"/>
                <text x="625" y="204" font-weight="700">Incident handling</text>
                <text x="625" y="228" font-size="12" fill="#9b99b8">Report the same working</text>
                <text x="625" y="246" font-size="12" fill="#9b99b8">day to Marcus Bell</text>
                <rect x="20" y="314" width="720" height="44" rx="8" fill="#1f1f44" stroke="#10b981"/>
                <text x="380" y="341">Staff, champions and the AI working group raise ideas, risks and incidents</text>
              </g>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#asl14a)">
                <line x1="300" y1="132" x2="150" y2="172"/>
                <line x1="380" y1="132" x2="380" y2="172"/>
                <line x1="460" y1="132" x2="610" y2="172"/>
                <line x1="135" y1="312" x2="135" y2="272"/>
                <line x1="380" y1="312" x2="380" y2="272"/>
                <line x1="625" y1="312" x2="625" y2="272"/>
              </g>
              <text x="140" y="294" font-size="11" fill="#9b99b8">ideas</text>
              <text x="386" y="294" font-size="11" fill="#9b99b8">risks</text>
              <text x="631" y="294" font-size="11" fill="#9b99b8">incidents</text>
            </g>
          </svg>
          <figcaption>A made-up governance set-up: one steering group, three simple processes, and a clear way for staff to raise ideas, risks and incidents.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>An AI steering group that decides</h3>
          <p>An <strong>AI steering group</strong> is a small group of leaders who set direction, approve AI uses and watch the risks. It must be able to make decisions. A group that only listens to updates wastes time.</p>
          <p>Write a one-page <strong>terms of reference</strong> (a short document that sets out the group's purpose, members, powers and how often it meets). Maple's steering group (made up):</p>
          <table class="lc-table">
            <thead><tr><th>Member</th><th>Brings</th><th>Decides or advises on</th></tr></thead>
            <tbody>
              <tr><td>Rosa Delgado, COO (chair)</td><td>Authority and budget</td><td>Final decisions: new uses, scale, fix or stop</td></tr>
              <tr><td>Daniel Kim, project manager</td><td>The programme plan and results</td><td>Runs the meetings, keeps the registers, owns the AI Use Policy</td></tr>
              <tr><td>Dr Priya Nair, medical director</td><td>Clinical safety</td><td>Any use that touches patient care</td></tr>
              <tr><td>Marcus Bell, IT and security lead</td><td>Security and vendors</td><td>Approved tools, access, incident response</td></tr>
              <tr><td>Grace Liu, compliance and privacy officer</td><td>Privacy rules</td><td>Patient data questions and possible breaches, with legal advice</td></tr>
              <tr><td>Tom Walsh, finance director</td><td>Costs and value</td><td>Budgets, ROI and licence numbers</td></tr>
              <tr><td>Keisha Brown, front desk lead</td><td>The staff view</td><td>How changes affect daily work</td></tr>
            </tbody>
          </table>
          <p>Use a <strong>RACI</strong> chart for the main decisions. It is a table that shows who is Responsible (does the work), Accountable (owns the result), Consulted and Informed:</p>
          <table class="lc-table">
            <thead><tr><th>Decision</th><th>Responsible</th><th>Accountable</th><th>Consulted</th><th>Informed</th></tr></thead>
            <tbody>
              <tr><td>Approve a new AI tool</td><td>Daniel</td><td>Rosa</td><td>Marcus, Priya, Grace</td><td>All staff</td></tr>
              <tr><td>Handle an AI incident</td><td>Marcus</td><td>Rosa</td><td>Priya, Grace</td><td>Steering group</td></tr>
              <tr><td>Quarterly risk review</td><td>Daniel</td><td>Rosa</td><td>All members</td><td>Managers</td></tr>
            </tbody>
          </table>
          <p>Keep it in proportion. Bluefern Digital has 40 people. Hannah Price and the managing director meet for 30 minutes a month. They use the same agenda: new requests, risks, incidents. Public frameworks can help larger organisations. One is the NIST AI Risk Management Framework, with four functions: Govern, Map, Measure and Manage. Another is ISO/IEC 42001, a standard for AI management systems. You do not need them to start.</p>
        </div>
        <div class="lc-card">
          <h3>Regular risk reviews</h3>
          <p>Risks change after launch. People start to trust the tool more. Vendors update their AI. New staff join. So review the risk register every quarter, not just once.</p>
          <p>Keep an <strong>AI register</strong> too (a list of every AI tool in use, with its owner, purpose, data level and next review date). If a tool is not on the register, it is not approved.</p>
          <p>At its quarterly review on Tuesday 22 September 2026, Maple's steering group added these made-up risks:</p>
          <table class="lc-table">
            <thead><tr><th>New risk</th><th>Likelihood</th><th>Impact</th><th>Owner</th><th>Action</th></tr></thead>
            <tbody>
              <tr><td><strong>Automation bias</strong> (trusting a computer's output too much): clinicians check scribe drafts less carefully over time</td><td>Medium</td><td>High</td><td>Dr Priya Nair</td><td>The monthly audit of 50 notes now also records how many drafts were signed with no edits at all.</td></tr>
              <tr><td>ClearNote updates its AI and the error pattern changes</td><td>Medium</td><td>Medium</td><td>Marcus Bell</td><td>The vendor must give notice of major updates. Re-test 20 made-up visits after each one.</td></tr>
              <tr><td>Staff use free AI tools for patient messages</td><td>Medium</td><td>High</td><td>Marcus Bell</td><td>Block the tools on work devices. Add approved prompts to the library. Repeat the data rules in team meetings.</td></tr>
              <tr><td>Wrong answers from the paused policy helper</td><td>Low (paused)</td><td>Medium</td><td>Daniel Kim</td><td>Relaunch only after a 40-question test with at most 1 wrong answer.</td></tr>
            </tbody>
          </table>
          <p>The group had also reviewed the AI Use Policy at its 6-month review on Monday 24 August 2026. Version 1.1 adds two lines: re-test a tool after each major vendor update, and "reporting an AI mistake is never punished".</p>
        </div>
        <div class="lc-card">
          <h3>Handling AI incidents</h3>
          <p>An <strong>AI incident</strong> is any event where an AI tool causes, or nearly causes, harm. Examples: a wrong medicine in a note, a text sent to the wrong patient, or patient data put into an unapproved tool. Sort incidents by level, so people know what to do:</p>
          <table class="lc-table">
            <thead><tr><th>Level</th><th>Example</th><th>What happens</th></tr></thead>
            <tbody>
              <tr><td><strong>1. Near miss</strong></td><td>A clinician spots a wrong dose in a draft and fixes it before signing.</td><td>Log it in the weekly error log. Look for patterns.</td></tr>
              <tr><td><strong>2. Reached a record, a patient or the wrong tool</strong></td><td>Patient details are pasted into a free chatbot.</td><td>Report to Marcus Bell the same working day. Contain, assess, fix.</td></tr>
              <tr><td><strong>3. Harm or a likely data breach</strong></td><td>A patient gets wrong advice from an AI draft, or many records leak.</td><td>Report at once to Marcus, Dr Nair and Rosa. Grace Liu gets legal advice.</td></tr>
            </tbody>
          </table>
          <p>In the US, HIPAA has breach notification rules. If an incident counts as a breach of patient information, the organisation must tell the affected patients without unreasonable delay. The latest is 60 calendar days after it found the breach. It must also report to HHS (the US health department), and the timing depends on how many people are affected. In the UK, a personal data breach may need to be reported to the ICO within 72 hours. Deciding if something is a "breach" is a legal question. This is general education, not legal advice.</p>
          <p>A made-up example: on Thursday 9 July 2026, Keisha Brown reported that an Astoria receptionist had pasted a patient's message into a free chatbot. Marcus asked the receptionist to delete the chat and blocked the tool on work devices. Grace and Maple's lawyer assessed whether it was a reportable breach, and recorded the decision and the reasons. The receptionist got extra coaching, not a warning. The root cause was simple: the approved tool had no quick "polite reply" prompt. Daniel added one to the prompt library.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>What do we do if AI makes a mistake?</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>We are 6 clinics in New York using an AI scribe, AI reminder texts
        and an AI meeting-notes tool. Draft a one-page AI incident process:
        3 incident levels with examples, who to tell and how fast, the
        steps from report to lessons learned, and what to record.
        Mark where a privacy officer or lawyer must decide. Do not state
        legal deadlines as fact; list them as "check with legal".</code></pre>
          <p>Then test the process with a short practice drill. Walk through one made-up incident with the steering group, step by step.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: handle an AI incident in order</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put the steps for handling the made-up chatbot incident at Astoria in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Report: Keisha tells Marcus Bell the same working day.</li>
              <li data-order="2">Contain: the chat is deleted and the free tool is blocked on work devices.</li>
              <li data-order="3">Assess: Grace Liu and the lawyer decide whether it is a reportable breach.</li>
              <li data-order="4">Notify, if required: tell the patient and the regulator within the legal deadlines.</li>
              <li data-order="5">Fix the cause: add an approved "polite reply" prompt and coach the receptionist.</li>
              <li data-order="6">Learn and share: the steering group reviews it and an anonymous lesson goes to all clinics.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to draft the terms of reference for an AI steering group and a simple incident process that fits the size of your organisation.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a governance adviser for small and mid-sized organisations. Use simple English.

        My organisation: [6 clinics in New York, 146 staff; patient data is involved].
        AI tools in use: [AI scribe for clinical notes, reminder texts, meeting notes, an AI assistant for staff questions].
        People available: [COO, project manager, medical director, IT and security lead, privacy officer, finance director, a front desk lead].

        Please:
        1. Draft a one-page terms of reference for an AI steering group: purpose, members, powers, meeting rhythm, standard agenda.
        2. Make a RACI table for: approving a new AI tool, handling an AI incident, the quarterly risk review.
        3. Suggest 3 incident levels with one example each, who to tell and how fast.
        4. List the columns for an AI register.
        5. Suggest how to make this lighter for a 40-person team.

        Mark any legal point as "check with a qualified adviser". Do not invent deadlines or fines.</pre>
            <ul class="ai-try-checks">
              <li>The group has real decision powers, not just updates.</li>
              <li>Each RACI row has exactly one Accountable person.</li>
              <li>Legal points such as breach reporting are marked for a qualified adviser.</li>
              <li>The lighter version for a small team is actually simpler.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Good governance is small, regular and clear. One group that can decide, a register of every AI tool, a risk review each quarter and an incident process people actually use. Treat incidents as chances to fix the system, not to blame a person. Then people report problems early, while they are still small.
        </div>
      HTML
      starter_code: nil
    },
    15 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mgmt">Management</div>
          <h1 class="lc-title">Capstone: An AI Plan for Maple Street Health</h1>
        </div>
        <p class="lc-lead">In this capstone you bring the whole course together in one AI plan. A good plan covers seven parts: use cases, priorities, a pilot plan, value and cost, a policy outline, a training plan and a measurement plan. You will see the plan Daniel Kim takes to Maple Street Health's board on Tuesday 20 October 2026, for its second wave of AI in 2027. Then you will use AI to build the same kind of plan for your own team.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 390" role="img" aria-label="Maple Street Health's made-up AI plan for 2027 on one page, in seven parts. 1, use cases: 8 found, 4 live in wave 1, UC4 and UC5 next. 2, priorities: the same scoring matrix; UC2 stays parked and UC8 waits for clean data. 3, pilot plan: UC5 portal replies with 8 nurses in 2 clinics for 8 weeks. 4, value and cost: wave 2 costs 65,000 dollars in year 1, ROI 52.3 percent, payback 5.3 months. 5, policy outline: version 1.2 adds clear approval rules for portal replies. 6, training plan: 38 nurses and medical assistants get a 2-hour module and 2 hours of practice. 7, measurement plan: adoption, outcome and safety with baselines and targets. Footer: 2027 budget 180,000 dollars equals 97,200 dollars running costs for wave 1, plus 65,000 dollars for wave 2, plus 17,800 dollars spare.">
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <text x="380" y="26" font-weight="700" fill="#c4b5fd" text-anchor="middle">Maple Street Health AI plan 2027: one page (made up)</text>
              <rect x="20" y="42" width="210" height="38" rx="8" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="34" y="66" font-weight="700">1. Use cases</text>
              <rect x="240" y="42" width="500" height="38" rx="8" fill="#27274e" stroke="#8b5cf6"/>
              <text x="256" y="66" font-size="12">8 found; 4 live in wave 1; UC4 and UC5 come next</text>
              <rect x="20" y="86" width="210" height="38" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="34" y="110" font-weight="700">2. Priorities</text>
              <rect x="240" y="86" width="500" height="38" rx="8" fill="#27274e" stroke="#3b82f6"/>
              <text x="256" y="110" font-size="12">Same scoring matrix; UC2 stays parked, UC8 waits for clean data</text>
              <rect x="20" y="130" width="210" height="38" rx="8" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="34" y="154" font-weight="700">3. Pilot plan</text>
              <rect x="240" y="130" width="500" height="38" rx="8" fill="#27274e" stroke="#22d3ee"/>
              <text x="256" y="154" font-size="12">UC5 portal replies: 8 nurses, 2 clinics, 8 weeks</text>
              <rect x="20" y="174" width="210" height="38" rx="8" fill="#1f1f44" stroke="#10b981"/>
              <text x="34" y="198" font-weight="700">4. Value and cost</text>
              <rect x="240" y="174" width="500" height="38" rx="8" fill="#27274e" stroke="#10b981"/>
              <text x="256" y="198" font-size="12">Wave 2: $65,000 in year 1, ROI 52.3%, payback 5.3 months</text>
              <rect x="20" y="218" width="210" height="38" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="34" y="242" font-weight="700">5. Policy outline</text>
              <rect x="240" y="218" width="500" height="38" rx="8" fill="#27274e" stroke="#f59e0b"/>
              <text x="256" y="242" font-size="12">Version 1.2 adds clear approval rules for portal replies</text>
              <rect x="20" y="262" width="210" height="38" rx="8" fill="#1f1f44" stroke="#ec4899"/>
              <text x="34" y="286" font-weight="700">6. Training plan</text>
              <rect x="240" y="262" width="500" height="38" rx="8" fill="#27274e" stroke="#ec4899"/>
              <text x="256" y="286" font-size="12">38 nurses and MAs: 2 h module and 2 h practice; champions</text>
              <rect x="20" y="306" width="210" height="38" rx="8" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="34" y="330" font-weight="700">7. Measurement plan</text>
              <rect x="240" y="306" width="500" height="38" rx="8" fill="#27274e" stroke="#8b5cf6"/>
              <text x="256" y="330" font-size="12">Adoption, outcome and safety, each with a baseline and a target</text>
              <text x="380" y="372" font-size="12" fill="#9b99b8" text-anchor="middle">2027 budget $180,000 = $97,200 wave 1 running + $65,000 wave 2 + $17,800 spare</text>
            </g>
          </svg>
          <figcaption>The seven parts of a complete AI plan, filled in for Maple Street Health's made-up second wave.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Start from where you are</h3>
          <p>A plan for the next step must start with honest results from the last one. Daniel opens with the first-wave review (all made up):</p>
          <ul class="lc-list">
            <li><strong>AI scribe (UC3):</strong> live in all 6 clinics. Note time down 26.7%. No serious errors in audits. Keep and support.</li>
            <li><strong>Reminder texts (UC1):</strong> admin time down 36.7%, no-shows down 18%. Scale with waiting-list texts.</li>
            <li><strong>Meeting notes (UC7):</strong> only 9 of 20 licences used. Fix, and cut to 10 licences.</li>
            <li><strong>Policy helper (UC6):</strong> 6 of 40 test answers wrong. Paused until a new test passes.</li>
            <li><strong>Value:</strong> $232,704 a year of time freed, 81.5% of plan. This is capacity, not cash.</li>
          </ul>
          <p>Rosa Delgado has asked for a 2027 plan within <strong>$180,000</strong>. The first wave keeps running, so its costs come first:</p>
          <pre><code>Wave 1 running costs in 2027:
          AI scribe (UC3)          $75,600
          Reminder texts (UC1)     $12,000
          Meeting notes (UC7)       $3,600  (10 licences x $30 x 12)
          Policy helper (UC6)       $6,000
          Total                    $97,200
        Left for new work: $180,000 - $97,200 = $82,800</code></pre>
          <p>Next, Daniel goes back to the scoring matrix. The highest-scoring ideas not yet started are UC4, prior authorisation letters (3.15), and UC5, portal reply drafts (3.15). UC2, the phone assistant, stays parked: its year-1 ROI is negative and staff support is low. UC8, no-show prediction, waits until Marcus Bell confirms the appointment data is clean.</p>
        </div>
        <div class="lc-card">
          <h3>The plan, part by part</h3>
          <table class="lc-table">
            <thead><tr><th>Part</th><th>What Maple's plan says (made up)</th></tr></thead>
            <tbody>
              <tr><td><strong>1. Use cases</strong></td><td>UC4: draft prior authorisation letters for medical assistants (50 h a week today). UC5: draft replies to patient portal messages for nurses (80 h a week today).</td></tr>
              <tr><td><strong>2. Priorities</strong></td><td>UC5 has higher value but higher risk (Risk 4), because replies go to patients. So it starts as a pilot. UC4 (Risk 3) starts after UC5's pilot, at one clinic first.</td></tr>
              <tr><td><strong>3. Pilot plan</strong></td><td>UC5 with 8 volunteer nurses at Harlem and Park Slope. Baseline: Monday 11 to Friday 22 January 2027. Pilot: 8 weeks, Monday 25 January to Friday 19 March 2027. Go or no-go: Tuesday 30 March 2027, decided by Rosa. Stop at once if an urgent message is missed or an unsafe reply is sent.</td></tr>
              <tr><td><strong>4. Value and cost</strong></td><td>See the worked numbers below.</td></tr>
              <tr><td><strong>5. Policy outline</strong></td><td>Versions 1.0 and 1.1 say a clinician approves every AI note, letter or patient reply. Version 1.2 proposes a clear rule for portal replies: a nurse may approve routine replies, and anything about new symptoms, medicines or test results goes to a clinician. The AI never sends anything by itself. A clinician still signs every prior authorisation letter. Dr Priya Nair must agree these rules, and the vendor must sign a BAA and pass Marcus's security review.</td></tr>
              <tr><td><strong>6. Training plan</strong></td><td>38 nurses and medical assistants: a 2-hour module on both tools and 4 × 30 minutes of practice with made-up messages. Staff time: 38 × 4 h × $55 = $8,360. Pilot nurses train first and become champions.</td></tr>
              <tr><td><strong>7. Measurement plan</strong></td><td>Adoption: share of portal replies drafted with AI. Outcome: nurse hours a week on replies (target at least 15% less) and time until patients get a reply. Safety: Dr Priya Nair audits 100 sent replies; target 0 unsafe replies and 100% of urgent messages sent to a clinician. Experience: nurse satisfaction at least 7 out of 10.</td></tr>
            </tbody>
          </table>
          <p><strong>Worked numbers for wave 2</strong> (from the business case; all made up):</p>
          <table class="lc-table">
            <thead><tr><th></th><th>UC4 letters</th><th>UC5 replies</th><th>Wave 2 total</th></tr></thead>
            <tbody>
              <tr><td>Annual value of time (hours × rate × 48)</td><td>17.5 × $55 × 48 = $46,200</td><td>20 × $55 × 48 = $52,800</td><td>$99,000</td></tr>
              <tr><td>Annual running cost</td><td>$18,000</td><td>$20,000</td><td>$38,000</td></tr>
              <tr><td>One-off cost</td><td>$15,000</td><td>$12,000</td><td>$27,000</td></tr>
              <tr><td>Year-1 cost (one-off + running)</td><td>$33,000</td><td>$32,000</td><td>$65,000</td></tr>
              <tr><td>Net annual benefit (value − running)</td><td>$28,200</td><td>$32,800</td><td>$61,000</td></tr>
              <tr><td>Year-1 net (net benefit − one-off)</td><td>$13,200</td><td>$20,800</td><td>$34,000</td></tr>
              <tr><td>Year-1 ROI (year-1 net ÷ year-1 cost)</td><td>40.0%</td><td>65.0%</td><td>52.3%</td></tr>
              <tr><td>Payback (one-off ÷ monthly net benefit)</td><td>6.4 months</td><td>4.4 months</td><td>5.3 months</td></tr>
            </tbody>
          </table>
          <p>In a spreadsheet with value in B2, running cost in C2 and one-off cost in D2: ROI is <code>=(B2-C2-D2)/(C2+D2)</code> and payback in months is <code>=D2/((B2-C2)/12)</code>. Wave 2 costs $65,000 in year 1. That leaves $82,800 − $65,000 = $17,800 spare for surprises. Tom Walsh adds the usual note: the value is time freed, not cash. So the plan says where that time goes: faster replies to patients and less work after hours.</p>
        </div>
        <div class="lc-card">
          <h3>Presenting the plan</h3>
          <p>Board members are busy. Put a one-page summary first, with the details behind it. The summary answers five questions:</p>
          <ul class="lc-list">
            <li><strong>What did we learn from wave 1?</strong> Honest results, including what was paused.</li>
            <li><strong>What do we want to do next, and why?</strong> UC5 then UC4, from the scoring matrix.</li>
            <li><strong>What will it cost and return?</strong> $65,000 in year 1, ROI 52.3%, with the capacity-not-cash note.</li>
            <li><strong>What are the main risks and controls?</strong> Patient safety, privacy (BAA), staff workload and blame.</li>
            <li><strong>What do we need from the board?</strong> Approval of the $180,000 budget and the UC5 pilot.</li>
          </ul>
          <p>Before the board meeting, Daniel shares the plan with the AI working group. Nurses raised the same worry as in the first wave: "Who is blamed if a draft is wrong?" The answer is now in the policy. Clear rules say what a nurse may approve and what goes to a clinician. When something goes wrong, the process is reviewed. Reporting an AI mistake is never punished.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Write an AI strategy for our clinics.</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Using only the facts below (no patient data), draft a one-page
        summary for our board. Sections: wave 1 results, wave 2 proposal,
        cost and ROI, risks and controls, decisions needed.
        Facts: [paste the 7-part plan and the cost table].
        Keep my numbers exactly. Recalculate ROI and payback and show the
        working. Say that time saved is capacity, not cash.
        Under 400 words, plain English.</code></pre>
        </div>
        <div class="lc-card">
          <h3>Activity: Daniel builds the plan with AI</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Daniel asks AI">"Here is our wave 1 review, our scoring matrix and the costs for UC4 and UC5. Draft a 7-part AI plan for 2027 within $180,000." No patient or staff data is included.</li>
              <li data-kind="answer" data-label="AI replies">The AI drafts all 7 parts. It says wave 2 has a year-1 ROI of 266.7%.</li>
              <li data-kind="tool" data-label="Daniel uses a spreadsheet">He enters value $99,000, running cost $38,000 and one-off cost $27,000, with the ROI formula from the business case.</li>
              <li data-kind="result" data-label="Spreadsheet shows">Year-1 ROI is 52.3% and payback is 5.3 months.</li>
              <li data-kind="warn" data-label="Spot the mistake">The AI left out the $38,000 running cost: ($99,000 − $27,000) ÷ $27,000 = 266.7%. It also suggested adding the phone assistant "because it has high value". That ignores its negative ROI and low staff support.</li>
              <li data-kind="check" data-label="Daniel checks">He keeps the spreadsheet numbers, keeps UC2 parked and asks Dr Nair to check the patient safety parts of the pilot plan.</li>
              <li data-kind="thought" data-label="Daniel thinks">"The AI saved me a day of writing. The numbers, the risks and the decisions are still mine and Rosa's."</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Now build your own AI plan. Replace the brackets with your team's details, or leave them to see a full example. Remove any personal or confidential data first.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an AI strategy adviser for managers. Use simple English and short sentences.

        My organisation and team: [Bluefern Digital, a 40-person digital agency in London; my team of 8].
        Budget for year 1: [£25,000].
        Pain points with rough hours a week: [client reports 20 h; meeting notes 10 h; first drafts of proposals 12 h; answering the same client questions 6 h].
        Hourly staff cost: [£40]. Working weeks: [46].
        Rules: [UK GDPR; ask clients before AI is used on their work; a person checks all AI output].

        Build a 7-part AI plan:
        1. Use cases: one line each.
        2. Priorities: score Value, Effort, Risk and Staff support from 1 to 5, with weights. Show the ranking.
        3. Pilot plan for the top idea: who, how long, baseline, success measures, stop rules, decision date.
        4. Value and cost: annual value, year-1 cost, ROI and payback. Show the working. Use estimated costs and mark them as estimates.
        5. Policy outline: 6 headings with one rule each.
        6. Training plan by role.
        7. Measurement plan: adoption, outcome, safety.
        Say that time saved is capacity, not cash.</pre>
            <ul class="ai-try-checks">
              <li>Recalculate the ROI and payback yourself, including running costs.</li>
              <li>The highest-risk idea starts as a pilot with stop rules.</li>
              <li>Costs are marked as estimates for you to check with suppliers.</li>
              <li>Every part names who checks AI output and who decides.</li>
              <li>The plan fits the budget you gave.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A strong AI plan is honest about the last wave and chooses the next steps with a clear method. It tests risky ideas small and shows its maths. It plans for people as carefully as for tools. AI can draft every part of it. You check the numbers, listen to staff and own the decisions.
        </div>
      HTML
      starter_code: nil
    }
  }.freeze
end

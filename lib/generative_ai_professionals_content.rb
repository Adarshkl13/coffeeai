module GenerativeAiProfessionalsContent
  # Units (sidebar dividers): 1–4 Generative AI at Work · 5–9 Core Work Skills · 10–14 Working Smarter and Safer · 15 Capstone
  # Widgets: sequence, sorter, stepper. No code editor: each Try It is an ai-try prompt box.
  LESSONS = {
    1 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-genai">Generative AI</div>
          <h1 class="lc-title">How Generative AI Is Changing Work</h1>
        </div>
        <p class="lc-lead">Generative AI can now draft, summarise and reorganise work in seconds. That changes how professionals spend their day. In this lesson you will learn which work tasks AI helps with, and which tasks still need you. You will also learn to think "augment, not replace": AI does parts of a task, and you keep the whole job. Through this course you will follow Olivia Grant, a consultant at Crestline Consulting in London. Crestline is a made-up 60-person consultancy. Olivia works with her manager Ben Hughes and with Nina Alvarez, an analyst in New York. They are helping a made-up client, Harbourview Housing in Leeds, improve its repairs service.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 320" role="img" aria-label="Two columns. Left, AI helps you with: first drafts of emails and reports, summaries of long documents, outlines and options, rewriting for a new audience, and ideas and counter-arguments. Right, people lead on: judgement and final decisions, client relationships and trust, facts, numbers and sources, ethics, fairness and empathy, and accountability for the result. Both columns lead to the best pattern: you brief, AI drafts, you check, decide and own it.">
            <defs><marker id="gp1a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <text x="190" y="28" font-weight="700" fill="#c4b5fd" text-anchor="middle">AI helps you with</text>
              <text x="570" y="28" font-weight="700" fill="#c4b5fd" text-anchor="middle">People lead on</text>
              <g text-anchor="middle">
                <rect x="30" y="42" width="320" height="36" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
                <text x="190" y="65">First drafts of emails and reports</text>
                <rect x="30" y="86" width="320" height="36" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
                <text x="190" y="109">Summaries of long documents</text>
                <rect x="30" y="130" width="320" height="36" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
                <text x="190" y="153">Outlines, structure and options</text>
                <rect x="30" y="174" width="320" height="36" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
                <text x="190" y="197">Rewriting for a new audience</text>
                <rect x="30" y="218" width="320" height="36" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
                <text x="190" y="241">Ideas, questions, counter-arguments</text>
                <rect x="410" y="42" width="320" height="36" rx="8" fill="#27274e" stroke="#ec4899"/>
                <text x="570" y="65">Judgement and final decisions</text>
                <rect x="410" y="86" width="320" height="36" rx="8" fill="#27274e" stroke="#ec4899"/>
                <text x="570" y="109">Client relationships and trust</text>
                <rect x="410" y="130" width="320" height="36" rx="8" fill="#27274e" stroke="#ec4899"/>
                <text x="570" y="153">Facts, numbers and sources</text>
                <rect x="410" y="174" width="320" height="36" rx="8" fill="#27274e" stroke="#ec4899"/>
                <text x="570" y="197">Ethics, fairness and empathy</text>
                <rect x="410" y="218" width="320" height="36" rx="8" fill="#27274e" stroke="#ec4899"/>
                <text x="570" y="241">Accountability for the result</text>
                <rect x="30" y="274" width="700" height="36" rx="8" fill="#1f1f44" stroke="#10b981"/>
                <text x="380" y="297" font-weight="700">Best pattern: you brief, AI drafts, you check, decide and own it</text>
              </g>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#gp1a)">
                <line x1="190" y1="255" x2="190" y2="271"/>
                <line x1="570" y1="255" x2="570" y2="271"/>
              </g>
            </g>
          </svg>
          <figcaption>AI is strong at producing and reshaping text. People stay in charge of judgement, relationships, facts and responsibility.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>What generative AI does at work</h3>
          <p><strong>Generative AI</strong> is AI that makes new content, such as text, images or slides, from your instructions. Your instruction is called a <strong>prompt</strong>. Tools such as ChatGPT, Claude, Gemini and Microsoft Copilot are <strong>AI assistants</strong>: chat tools that use generative AI.</p>
          <p>The technology grew fast. The Transformer design behind today's models was published in 2017. ChatGPT launched on 30 November 2022. Since then, AI features have appeared inside email, documents, slides and meeting tools.</p>
          <p>An AI assistant predicts likely words based on patterns in its training data. It does not "know" facts the way a reference book does. So it can write a confident sentence that is wrong. This is called a <strong>hallucination</strong>.</p>
          <table class="lc-table">
            <thead><tr><th>Task type</th><th>Crestline example (made up)</th><th>What Olivia still does</th></tr></thead>
            <tbody>
              <tr><td>Drafting</td><td>First draft of the kick-off follow-up email to Harbourview</td><td>Checks names, dates and promises. Makes it sound like her.</td></tr>
              <tr><td>Summarising</td><td>A summary of Harbourview's 46-page repairs policy</td><td>Checks key points against the real pages.</td></tr>
              <tr><td>Structuring</td><td>An outline for the interim findings pack</td><td>Decides the main message with Ben.</td></tr>
              <tr><td>Rewriting</td><td>A plain-English version of a technical finding for tenants</td><td>Checks that the meaning did not change.</td></tr>
              <tr><td>Thinking partner</td><td>"What questions will the board ask about these findings?"</td><td>Chooses which questions matter.</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Augment, not replace</h3>
          <p>To <strong>augment</strong> means to add to something and make it stronger. AI augments your work when it does parts of a task faster. You still own the full job: the thinking, the client and the result.</p>
          <p>AI is not equally good at everything. In 2023, researchers from Harvard Business School and others ran a field experiment with Boston Consulting Group consultants. AI helped the consultants on tasks inside its abilities. On a task outside its abilities, consultants who used AI got the answer wrong more often. The researchers called this uneven edge a "jagged frontier". The lesson for you: test AI on each type of task, and do not assume.</p>
          <p>These human strengths stay at the centre of professional work:</p>
          <ul class="lc-list">
            <li><strong>Judgement</strong>: choosing what matters for this client, at this moment.</li>
            <li><strong>Relationships</strong>: Grace Whitfield, Harbourview's Director of Property Services, trusts Olivia, not a tool.</li>
            <li><strong>Local knowledge</strong>: what Olivia heard at the tenant focus groups in Leeds is not in any AI model.</li>
            <li><strong>Responsibility</strong>: if a number in a client report is wrong, the firm is responsible, not the AI.</li>
          </ul>
          <p>Time savings are real for some tasks, but they vary. Here is a made-up example from Olivia's own log. It is an example only, not research. Her total for five tasks went from 335 minutes to 195 minutes, including checking time. One task took longer with AI, because the AI misread a column in a data table. Count the checking time, and count the tasks where AI did not help.</p>
        </div>
        <div class="lc-card">
          <h3>Your first work prompt: weak and better</h3>
          <p>An AI assistant only knows what you tell it. A short, vague prompt gets a generic answer.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>How can AI help me at work?</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>I am a consultant at a management consultancy. This week I must:
        1. send a follow-up email after a client kick-off meeting,
        2. summarise a 46-page client repairs policy,
        3. outline slides for an interim findings workshop,
        4. check a table of repairs data before it goes to the client.
        For each task, tell me: which parts AI can do well, which parts
        I must do myself, and one risk to watch for. Use a table.
        Do not invent statistics about time saved.</code></pre>
          <p>The better prompt names the role, the real tasks and the format. It also tells the AI what not to do. Even then, you decide. Olivia's firm also has rules about which AI tool she may use for client work. The workplace rules lesson covers those.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: a morning with AI</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="thought" data-label="Plan">It is Tuesday 6 October 2026. Olivia has a check-in call with Harbourview on Thursday. She must understand the client's 46-page repairs policy first. She decides AI can do a first summary. She will do the checking.</li>
              <li data-kind="user" data-label="Olivia's prompt">In Crestline Assist, the firm's approved AI assistant: "Summarise this repairs policy in 8 bullet points for a consultant. Include every target time. Give the page number for each point."</li>
              <li data-kind="answer" data-label="AI reply">The AI gives 8 clear bullet points with page numbers. One says: "Routine repairs: completed within 20 working days (page 12)."</li>
              <li data-kind="check" data-label="Olivia checks">Olivia opens page 12. The real target is 28 calendar days. She fixes the summary and checks the other target times too.</li>
              <li data-kind="warn" data-label="Why it matters">If the wrong target had gone into the client pack, Harbourview's on-time figures would look wrong. One bad number can damage trust in the whole report.</li>
              <li data-kind="thought" data-label="Human work">Next, Olivia calls Daniel Osei, Harbourview's Repairs Manager. She asks why routine jobs are late. The AI could not know about staff shortages in one in-house repair team. Only a person could find that out.</li>
              <li data-kind="result" data-label="Outcome">In this made-up example, the summary took 35 minutes instead of 90, including 20 minutes of checking. Olivia notes the time in her AI log, with the error she caught.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to map your own week: which tasks it can help with, and which parts must stay with you. Change the tasks in brackets to your own.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a practical adviser who helps professionals use generative AI well. Use simple English.

        My role: [consultant at a management consultancy].
        My main tasks this week:
        - [write a follow-up email after a client meeting]
        - [summarise a long client policy document]
        - [plan slides for a findings workshop]
        - [check a data table before it goes to the client]
        - [prepare for a difficult conversation with a client]

        For each task, make a table with these columns:
        1. Task
        2. What AI can do well (be specific)
        3. What I must do myself (judgement, facts, relationships)
        4. Main risk (for example a wrong number or a made-up source)
        5. AI fit: High, Medium or Low, with one reason

        Then list my 2 best tasks to try AI on first, and why.
        Do not invent statistics or research about time saved. Remind me not to paste confidential or personal data into tools my employer has not approved.</pre>
            <ul class="ai-try-checks">
              <li>Each task has a clear split between AI work and your work.</li>
              <li>The risks are specific, not generic.</li>
              <li>At least one task is rated Low, with a good reason.</li>
              <li>There are no made-up statistics about time saved.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Generative AI changes tasks, not responsibility. Let it draft, summarise and reorganise. Keep judgement, relationships, facts and the final decision with you, and check every output before you use it.
        </div>
      HTML
      starter_code: nil
    },
    2 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-genai">Generative AI</div>
          <h1 class="lc-title">Your Workplace AI Rules</h1>
        </div>
        <p class="lc-lead">Before you paste anything into an AI tool, you need to know your organisation's rules. In this lesson you will learn what a workplace AI policy covers, how data classes work, and why client confidentiality matters. You will also learn when to stop and ask. You will use the made-up AI policy of Crestline Consulting, which Olivia, Ben and Nina follow on the Harbourview Housing project.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 380" role="img" aria-label="Decision tree with four questions before using AI on work data. One: is the tool approved by Crestline? If no, stop and use Crestline Assist. Two: is the data free of Restricted data? If no, anonymise first or do it by hand. Three: does the client allow AI use? If no, ask Hannah in the AI help channel. Four: will a named person check the output? If no, do not use it yet. If all answers are yes: go, use the tool, check the output and log it.">
            <defs><marker id="gp2a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <text x="220" y="24" font-weight="700" fill="#c4b5fd" text-anchor="middle">Before you paste work data</text>
              <text x="600" y="24" font-weight="700" fill="#c4b5fd" text-anchor="middle">If the answer is No</text>
              <g text-anchor="middle">
                <rect x="40" y="40" width="360" height="44" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
                <text x="220" y="67">1. Is the tool approved by Crestline?</text>
                <rect x="40" y="110" width="360" height="44" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
                <text x="220" y="137">2. Is it free of Restricted data?</text>
                <rect x="40" y="180" width="360" height="44" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
                <text x="220" y="207">3. Does the client allow AI use?</text>
                <rect x="40" y="250" width="360" height="44" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
                <text x="220" y="277">4. Will a named person check it?</text>
                <rect x="40" y="320" width="360" height="44" rx="8" fill="#27274e" stroke="#10b981"/>
                <text x="220" y="347" font-weight="700">Go: use the tool, check, log it</text>
                <rect x="480" y="40" width="250" height="44" rx="8" fill="#27274e" stroke="#f59e0b"/>
                <text x="605" y="67">Stop. Use Crestline Assist</text>
                <rect x="480" y="110" width="250" height="44" rx="8" fill="#27274e" stroke="#ec4899"/>
                <text x="605" y="137">Anonymise first, or do by hand</text>
                <rect x="480" y="180" width="250" height="44" rx="8" fill="#27274e" stroke="#f59e0b"/>
                <text x="605" y="207">Ask Hannah in #ai-help</text>
                <rect x="480" y="250" width="250" height="44" rx="8" fill="#27274e" stroke="#f59e0b"/>
                <text x="605" y="277">Do not use it yet</text>
              </g>
              <g font-size="11" fill="#9b99b8">
                <text x="228" y="101">Yes</text>
                <text x="228" y="171">Yes</text>
                <text x="228" y="241">Yes</text>
                <text x="228" y="311">Yes</text>
                <text x="430" y="56">No</text>
                <text x="430" y="126">No</text>
                <text x="430" y="196">No</text>
                <text x="430" y="266">No</text>
              </g>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#gp2a)">
                <line x1="220" y1="85" x2="220" y2="107"/>
                <line x1="220" y1="155" x2="220" y2="177"/>
                <line x1="220" y1="225" x2="220" y2="247"/>
                <line x1="220" y1="295" x2="220" y2="317"/>
                <line x1="401" y1="62" x2="477" y2="62"/>
                <line x1="401" y1="132" x2="477" y2="132"/>
                <line x1="401" y1="202" x2="477" y2="202"/>
                <line x1="401" y1="272" x2="477" y2="272"/>
              </g>
            </g>
          </svg>
          <figcaption>Crestline's four questions before any AI use with work data (made-up policy). Public data, such as a published annual report, may go into any tool.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>What a workplace AI policy covers</h3>
          <p>An <strong>AI policy</strong> is your organisation's written rules for using AI at work. Most policies answer four questions. Which tools may you use? What data may you put in? Who checks the output? What must you tell clients? If your employer has a policy, it comes before anything a tool or a website says.</p>
          <p>Crestline's made-up policy, version 2.1, started on Monday 1 June 2026. Here are its main rules:</p>
          <table class="lc-table">
            <thead><tr><th>Rule</th><th>What it means for Olivia</th></tr></thead>
            <tbody>
              <tr><td>1. Use approved tools only</td><td>For work data, use Crestline Assist (the firm's AI assistant) or the AI features in the firm's office apps. Free public AI tools are for Public data only.</td></tr>
              <tr><td>2. Check the data class first</td><td>Decide if the data is Public, Internal, Confidential or Restricted before you paste or upload.</td></tr>
              <tr><td>3. No Restricted data in any AI tool</td><td>Remove or anonymise personal details first.</td></tr>
              <tr><td>4. A named person checks every output</td><td>The checker owns the result, not the tool.</td></tr>
              <tr><td>5. Tell the client when AI helped</td><td>Add the agreed note to deliverables.</td></tr>
              <tr><td>6. Record meetings only with agreement</td><td>Ask every attendee at the start.</td></tr>
              <tr><td>7. Log AI use on client work</td><td>Date, tool, task, data class and who checked.</td></tr>
              <tr><td>8. Not sure? Ask first</td><td>Ask Hannah Price, Head of Risk and Data Protection, in the #ai-help channel. Report any mistake within 24 hours.</td></tr>
            </tbody>
          </table>
          <p>Why approved tools? Business plans of AI assistants usually come with a contract. The contract often says your prompts are not used to train the vendor's models, and IT can control access. Free personal accounts may not give these promises. Check your own tool's terms with your IT team.</p>
        </div>
        <div class="lc-card">
          <h3>Data classes: what may go where</h3>
          <p>A <strong>data class</strong> is a label that shows how sensitive information is. Many organisations use labels like these. Crestline uses four:</p>
          <table class="lc-table">
            <thead><tr><th>Class</th><th>Meaning</th><th>Harbourview project examples</th><th>Where it may go</th></tr></thead>
            <tbody>
              <tr><td><strong>Public</strong></td><td>Already published</td><td>Harbourview's published annual report; government guidance</td><td>Any tool</td></tr>
              <tr><td><strong>Internal</strong></td><td>Crestline's own non-public material</td><td>Proposal templates, method guides, the team prompt library</td><td>Approved tools only</td></tr>
              <tr><td><strong>Confidential</strong></td><td>Client information that is not public</td><td>Repairs data with no personal details, draft findings, fees, gas servicing contract terms</td><td>Approved tools only, and only if the client allows it</td></tr>
              <tr><td><strong>Restricted</strong></td><td>Personal or highly sensitive data</td><td>Tenant names, addresses, phone numbers, health or vulnerability notes, staff HR records</td><td>Never in any AI tool</td></tr>
            </tbody>
          </table>
          <p>To <strong>anonymise</strong> means to remove details that could identify a person. Watch for combinations too. A rare health condition plus a street name can identify someone.</p>
          <p><strong>Before (Restricted, made up):</strong></p>
          <pre><code>Mrs Janet Clarke, 14 Elm Row, has asthma and has waited
        six weeks for mould treatment. Phone 07700 900123.</code></pre>
          <p><strong>After (safe to use in Crestline Assist):</strong></p>
          <pre><code>Tenant A, in a flat in east Leeds, reports a health condition
        and has waited six weeks for mould treatment.</code></pre>
          <p>If you cannot anonymise the data well, do the task by hand, or ask.</p>
        </div>
        <div class="lc-card">
          <h3>Client confidentiality and when to ask</h3>
          <p>Client information belongs to the client. Your contract with them may say what you can do with it. Harbourview's made-up engagement letter (the contract for the project) has a clause about AI. It allows Crestline's approved tools on Confidential project data. It bans tenant and staff personal data in any AI tool. It also says Crestline must note AI use in deliverables.</p>
          <p>Laws apply too. In the UK, UK GDPR covers personal data. In the EU, the EU AI Act sets duties for AI providers and users. Its transparency rules, such as telling people when they deal with AI, are being phased in. The EU has proposed delaying some dates, so check the official EU AI Act timeline. In regulated professions, such as law, accounting or medicine, follow your professional body's guidance as well. This is general education, not legal advice. Check with your compliance team or a qualified adviser.</p>
          <p><strong>Ask before you act</strong> when:</p>
          <ul class="lc-list">
            <li>You are not sure of the data class.</li>
            <li>A tool is not on the approved list, even a "free trial".</li>
            <li>A client asks you not to use AI, or asks how you use it.</li>
            <li>The task involves decisions about people, such as hiring or performance.</li>
            <li>You think you made a mistake. Report it quickly: early reports limit harm.</li>
          </ul>
          <p>Example: Nina works in New York. She wants to tidy Harbourview's repairs data at night with a free AI app on her phone. The data is Confidential and the app is not approved. She asks in #ai-help instead. Hannah tells her to use Crestline Assist the next morning.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: which data class?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each made-up item from the Harbourview project into Crestline's data classes.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="public" data-label="Public"></div>
              <div data-sorter-target="bucket" data-bucket="internal" data-label="Internal"></div>
              <div data-sorter-target="bucket" data-bucket="confidential" data-label="Confidential"></div>
              <div data-sorter-target="bucket" data-bucket="restricted" data-label="Restricted"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="public" data-why="It is already published on the client's website, so any tool is fine.">Harbourview's published annual report</li>
              <li data-bucket="internal" data-why="It is Crestline's own material and not published. Use approved tools only.">Crestline's proposal template for housing clients</li>
              <li data-bucket="confidential" data-why="It is the client's non-public business data, but it has no personal details.">The table of 31,200 repairs jobs by priority, with no tenant details</li>
              <li data-bucket="restricted" data-why="Names and addresses are personal data. They must never go into an AI tool.">A spreadsheet of tenant names, addresses and repair dates</li>
              <li data-bucket="confidential" data-why="Fees and draft findings are private client business information.">The draft interim findings and the project fee</li>
              <li data-bucket="restricted" data-why="Health and vulnerability notes are very sensitive personal data.">Notes on which tenants have health conditions or disabilities</li>
              <li data-bucket="internal" data-why="Prompt templates are Crestline's own work. They should hold no client data.">The team's saved prompt library</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Turn an AI policy into a one-page cheat sheet you can follow. Use your own policy if your employer allows it in this tool, or use the sample rules.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You help staff understand their workplace AI policy. Use simple English.

        Here is the policy (made-up sample; replace it with [my organisation's policy], only if I may share it in this tool):
        - Use only approved AI tools for work data. Free public tools: public data only.
        - Data classes: Public, Internal, Confidential (client data), Restricted (personal data).
        - Never put Restricted data into any AI tool. Anonymise first.
        - A named person checks every AI output before it is used.
        - Tell clients when AI helped with a deliverable.
        - Record meetings only if everyone agrees.
        - If unsure, ask the risk team before you start.

        Please:
        1. Make a one-page cheat sheet: "Do", "Do not", "Ask first".
        2. Write 5 short work situations from [consulting work] and say what the policy means for each.
        3. List 3 questions the policy does not answer clearly, to ask my risk team.

        Use only the rules above. Do not add rules that are not there. If a rule is unclear, say so.</pre>
            <ul class="ai-try-checks">
              <li>The cheat sheet uses only the rules given, with no invented rules.</li>
              <li>Each situation gives a clear answer and points to a rule.</li>
              <li>The "questions to ask" are real gaps in the policy.</li>
              <li>Personal data is always treated as never-in-AI.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> The question is not "Can AI do this?" but "Am I allowed to put this data into this tool?". Know your approved tools and data classes, keep personal data out, and ask early when you are not sure.
        </div>
      HTML
      starter_code: nil
    },
    3 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-genai">Generative AI</div>
          <h1 class="lc-title">Prompting for Professional Work</h1>
        </div>
        <p class="lc-lead">A good prompt is like a good brief to a new colleague. The colleague is fast and clever, but knows nothing about your client, your audience or your standards. In this lesson you will learn the six parts of a strong work brief: goal, context, audience, format, example and limits. You will also learn to improve an answer step by step. Then you will share prompts that work in a team prompt library.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 330" role="img" aria-label="Left: the six parts of a work brief. Goal: what you need and why. Context: client, facts, data. Audience: who will read it. Format: length, layout, tone. Example: a sample of good output. Limits: what to avoid and check. An arrow leads to the right side: AI first draft, you review it, ask for specific changes, with a loop back to the draft, and finally save what works to the team prompt library.">
            <defs><marker id="gp3a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <text x="175" y="24" font-weight="700" fill="#c4b5fd" text-anchor="middle">The brief: six parts</text>
              <text x="560" y="24" font-weight="700" fill="#c4b5fd" text-anchor="middle">Then improve it</text>
              <rect x="30" y="38" width="290" height="36" rx="8" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="44" y="61"><tspan font-weight="700">Goal:</tspan> what you need and why</text>
              <rect x="30" y="82" width="290" height="36" rx="8" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="44" y="105"><tspan font-weight="700">Context:</tspan> client, facts, data</text>
              <rect x="30" y="126" width="290" height="36" rx="8" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="44" y="149"><tspan font-weight="700">Audience:</tspan> who will read it</text>
              <rect x="30" y="170" width="290" height="36" rx="8" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="44" y="193"><tspan font-weight="700">Format:</tspan> length, layout, tone</text>
              <rect x="30" y="214" width="290" height="36" rx="8" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="44" y="237"><tspan font-weight="700">Example:</tspan> a sample of good output</text>
              <rect x="30" y="258" width="290" height="36" rx="8" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="44" y="281"><tspan font-weight="700">Limits:</tspan> what to avoid and check</text>
              <g text-anchor="middle">
                <rect x="440" y="40" width="240" height="40" rx="8" fill="#27274e" stroke="#3b82f6"/>
                <text x="560" y="65">AI first draft</text>
                <rect x="440" y="110" width="240" height="40" rx="8" fill="#27274e" stroke="#f59e0b"/>
                <text x="560" y="135">You review it</text>
                <rect x="440" y="180" width="240" height="40" rx="8" fill="#27274e" stroke="#ec4899"/>
                <text x="560" y="205">Ask for specific changes</text>
                <rect x="410" y="254" width="300" height="40" rx="8" fill="#27274e" stroke="#10b981"/>
                <text x="560" y="279">Save what works to the library</text>
                <text x="735" y="135" font-size="11" fill="#9b99b8">repeat</text>
              </g>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#gp3a)">
                <line x1="322" y1="166" x2="436" y2="64"/>
                <line x1="560" y1="81" x2="560" y2="107"/>
                <line x1="560" y1="151" x2="560" y2="177"/>
                <line x1="560" y1="221" x2="560" y2="251"/>
                <path d="M681,200 L705,200 L705,60 L684,60"/>
              </g>
            </g>
          </svg>
          <figcaption>Brief the AI with six parts, then review and ask for specific changes. Save prompts that work so your team can reuse them.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Brief AI like a new colleague</h3>
          <p>Imagine you hand a task to a new colleague on their first day. You would explain the goal, the client and the reader. You would show a good example. AI needs the same brief. Here are the six parts, with Olivia's made-up example: a one-page briefing note for Grace Whitfield, Harbourview's Director of Property Services.</p>
          <table class="lc-table">
            <thead><tr><th>Part</th><th>Question it answers</th><th>Olivia's example</th></tr></thead>
            <tbody>
              <tr><td><strong>Goal</strong></td><td>What do you need, and why?</td><td>A briefing note so Grace can prepare for Thursday's check-in call.</td></tr>
              <tr><td><strong>Context</strong></td><td>What facts does the AI need?</td><td>The repairs data table for July 2025 to June 2026, with no personal details.</td></tr>
              <tr><td><strong>Audience</strong></td><td>Who will read it?</td><td>A busy director who knows repairs well but has 5 minutes.</td></tr>
              <tr><td><strong>Format</strong></td><td>How long, what layout, what tone?</td><td>Under 250 words, 3 headed sections, calm and factual, British spelling.</td></tr>
              <tr><td><strong>Example</strong></td><td>What does good look like?</td><td>A short note from an earlier project, with client details removed.</td></tr>
              <tr><td><strong>Limits</strong></td><td>What must it avoid? What should it flag?</td><td>No recommendations yet. No numbers that are not in the table. Mark guesses.</td></tr>
            </tbody>
          </table>
          <p>The repairs data is Confidential, so Olivia uses Crestline Assist, the firm's approved tool. The client's contract allows this.</p>
        </div>
        <div class="lc-card">
          <h3>Weak prompt and better prompt</h3>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Summarise the repairs data for the client.</code></pre>
          <p>The AI does not know who the client is, what matters or how long to write. It may also invent reasons for the numbers.</p>
          <p><strong>Better prompt (made-up data):</strong></p>
          <pre><code>Goal: Write a one-page briefing note so a client director can
        prepare for a 30-minute check-in call on Thursday.
        Context: We are reviewing the repairs service of a housing
        association with about 9,800 homes. Data, July 2025 to June 2026:
        - Emergency (24 hours): 3,900 jobs, 94.0% on time
        - Urgent (5 working days): 9,100 jobs, 81.0% on time
        - Routine (28 days): 18,200 jobs, 70.0% on time
        - All jobs: 31,200, 76.2% on time
        - First-time fix: 68.0%. Repairs complaints: 1,140 (860 last year)
        Audience: The Director of Property Services. Expert, very busy.
        Format: Under 250 words. Headings: What the data shows,
        Questions for Thursday, Data gaps. British spelling. Calm tone.
        Limits: Use only these numbers. Do not give recommendations.
        Do not guess causes. If you suggest a possible cause, label it
        "Possible cause, not yet checked".</code></pre>
          <p>Now the AI has a clear job. Olivia still checks every number against the source table before she sends the note.</p>
        </div>
        <div class="lc-card">
          <h3>Improve the answer step by step</h3>
          <p>The first answer is a draft. <strong>Iteration</strong> means improving it in small, specific steps. Vague feedback such as "make it better" gives random changes. Specific feedback works:</p>
          <ul class="lc-list">
            <li>"Move the complaints point to the top. The board cares most about it."</li>
            <li>"Cut the Data gaps section to two bullet points."</li>
            <li>"Rewrite the second paragraph for a reader who is not a repairs expert."</li>
            <li>"List every number you used and where it came from in my data."</li>
          </ul>
          <p>Two more useful moves:</p>
          <ul class="lc-list">
            <li><strong>Ask the AI to ask you first:</strong> "Before you write, ask me up to 3 questions you need answered." This finds gaps in your brief.</li>
            <li><strong>Give an example:</strong> paste a short sample of good work, with client details removed. The AI copies its length, tone and layout.</li>
          </ul>
          <p>If a chat goes in circles, start a new chat with a better brief. Old mistakes in a long chat can keep coming back.</p>
        </div>
        <div class="lc-card">
          <h3>A team prompt library</h3>
          <p>A <strong>prompt library</strong> is a shared list of tested prompts that your team reuses. It saves time and keeps quality the same across people. Crestline keeps its made-up library in a shared folder that only staff can open.</p>
          <table class="lc-table">
            <thead><tr><th>Prompt name</th><th>Use it for</th><th>Highest data class allowed</th><th>Owner</th><th>Last tested</th></tr></thead>
            <tbody>
              <tr><td>Client briefing note</td><td>One-page notes before client calls</td><td>Confidential</td><td>Ben Hughes</td><td>September 2026</td></tr>
              <tr><td>Policy summariser</td><td>Summaries with page numbers</td><td>Confidential</td><td>Olivia Grant</td><td>September 2026</td></tr>
              <tr><td>Plain-English rewrite</td><td>Rewriting findings for tenants</td><td>Confidential</td><td>Nina Alvarez</td><td>August 2026</td></tr>
              <tr><td>Meeting actions</td><td>Turning notes into actions and owners</td><td>Confidential</td><td>Nina Alvarez</td><td>July 2026</td></tr>
            </tbody>
          </table>
          <p>Good library rules: keep client data out of saved prompts and use [placeholders] instead. Name an owner for each prompt. Test prompts again when the AI tool changes. Tools change often, so check your tool's current help pages for features such as saved prompts or shared projects.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: build and improve a prompt</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put Olivia's steps for the briefing note in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Decide the goal and the audience: a one-page note for Grace before Thursday's call.</li>
              <li data-order="2">Gather the repairs data and check its data class: Confidential, with no personal details.</li>
              <li data-order="3">Write the brief in Crestline Assist with context, format, an example and limits.</li>
              <li data-order="4">Ask the AI to ask up to 3 questions, answer them, then get the first draft.</li>
              <li data-order="5">Review the draft against the goal, and check every number against the table.</li>
              <li data-order="6">Ask for specific changes, such as "move the complaints point to the top".</li>
              <li data-order="7">Save the final prompt, with placeholders and no client data, to the team library.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Use AI as a prompt coach. It will turn a rough request into a full six-part brief. Replace the rough request with one of your own tasks.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a prompt coach for busy professionals. Use simple English.

        My rough request: "[Write an update for my client about how the project is going.]"
        My role: [consultant at a management consultancy].
        The reader: [the client's director, an expert with little time].

        Step 1. Ask me up to 4 short questions that would most improve this request.
        Step 2. Then rewrite my request as a full brief with six labelled parts: Goal, Context, Audience, Format, Example, Limits. Use [square brackets] for facts I must fill in. If I have not answered your questions, make sensible assumptions and label each one "ASSUMPTION".
        Step 3. Suggest 3 specific follow-up instructions I could use to improve the first draft.
        Step 4. Give the brief a short name and say which data class it needs (Public, Internal, Confidential or Restricted), so I can save it in a team prompt library.

        Do not write the update itself. Do not invent facts about my client.</pre>
            <ul class="ai-try-checks">
              <li>The brief has all six parts, each clearly labelled.</li>
              <li>Facts you must supply are in [brackets], not invented.</li>
              <li>Assumptions are labelled, so you can correct them.</li>
              <li>The follow-up instructions are specific, not "make it better".</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> AI output is only as good as your brief. Give the goal, context, audience, format, an example and limits. Then improve the draft with specific feedback, and share prompts that work so your whole team gets better results.
        </div>
      HTML
      starter_code: nil
    },
    4 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-genai">Generative AI</div>
          <h1 class="lc-title">Checking and Owning AI Output</h1>
        </div>
        <p class="lc-lead">When you use AI output in your work, it becomes your work. If it is wrong, you are responsible, not the tool. In this lesson you will learn a five-step checking routine for facts, numbers, sources, fit and ownership. You will learn how to deal with citations that AI makes up. You will also learn how to say clearly when you used AI. You will follow Olivia and Nina as they check an AI draft for Harbourview Housing's interim findings pack.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 330" role="img" aria-label="Top: a five-step checking routine. One, facts: names, dates, claims. Two, numbers: redo the maths. Three, sources: open each one. Four, fit: brief and tone. Five, own it: disclose and log. Bottom: a made-up AI draft with three problems found. On-time repairs 82 percent is wrong; the real figure is 76.2 percent. Awaab's Law means all mould fixed in 24 hours is wrong; check GOV.UK. A source called UK Repairs Benchmark Review 2025 was not found.">
            <defs><marker id="gp4a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <text x="380" y="24" font-weight="700" fill="#c4b5fd" text-anchor="middle">Check before it leaves you</text>
              <g text-anchor="middle">
                <rect x="20" y="40" width="130" height="56" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
                <text x="85" y="63" font-weight="700">1 Facts</text>
                <text x="85" y="83" font-size="11" fill="#9b99b8">names, dates</text>
                <rect x="168" y="40" width="130" height="56" rx="8" fill="#1f1f44" stroke="#22d3ee"/>
                <text x="233" y="63" font-weight="700">2 Numbers</text>
                <text x="233" y="83" font-size="11" fill="#9b99b8">redo the maths</text>
                <rect x="316" y="40" width="130" height="56" rx="8" fill="#1f1f44" stroke="#8b5cf6"/>
                <text x="381" y="63" font-weight="700">3 Sources</text>
                <text x="381" y="83" font-size="11" fill="#9b99b8">open each one</text>
                <rect x="464" y="40" width="130" height="56" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
                <text x="529" y="63" font-weight="700">4 Fit</text>
                <text x="529" y="83" font-size="11" fill="#9b99b8">brief and tone</text>
                <rect x="612" y="40" width="130" height="56" rx="8" fill="#1f1f44" stroke="#10b981"/>
                <text x="677" y="63" font-weight="700">5 Own it</text>
                <text x="677" y="83" font-size="11" fill="#9b99b8">disclose, log</text>
              </g>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#gp4a)">
                <line x1="151" y1="68" x2="165" y2="68"/>
                <line x1="299" y1="68" x2="313" y2="68"/>
                <line x1="447" y1="68" x2="461" y2="68"/>
                <line x1="595" y1="68" x2="609" y2="68"/>
              </g>
              <rect x="20" y="120" width="722" height="196" rx="10" fill="#27274e" stroke="#9b99b8"/>
              <text x="40" y="146" font-weight="700" fill="#c4b5fd">Made-up AI draft for the interim pack: what the checks found</text>
              <rect x="40" y="160" width="682" height="44" rx="6" fill="#1f1f44" stroke="#ec4899"/>
              <text x="56" y="187">"On-time repairs were 82%."</text>
              <text x="706" y="187" text-anchor="end" fill="#f9a8d4">Wrong: real figure is 76.2%</text>
              <rect x="40" y="212" width="682" height="44" rx="6" fill="#1f1f44" stroke="#ec4899"/>
              <text x="56" y="239">"Awaab's Law: fix all mould in 24 hours."</text>
              <text x="706" y="239" text-anchor="end" fill="#f9a8d4">Wrong: check GOV.UK</text>
              <rect x="40" y="264" width="682" height="44" rx="6" fill="#1f1f44" stroke="#ec4899"/>
              <text x="56" y="291">"Source: UK Repairs Benchmark Review 2025"</text>
              <text x="706" y="291" text-anchor="end" fill="#f9a8d4">Not found: made up</text>
            </g>
          </svg>
          <figcaption>The routine catches three common AI errors: a wrong number, a wrong legal claim and a made-up source.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>You own the result</h3>
          <p><strong>Accountability</strong> means you answer for the result. Clients, managers and courts do not accept "the AI wrote it" as an excuse. Two real cases show why:</p>
          <ul class="lc-list">
            <li>In June 2023, in the Mata v. Avianca case, a US federal court in New York fined two lawyers and their law firm $5,000. Their court filing cited six cases that ChatGPT had made up.</li>
            <li>In October 2025, Deloitte Australia agreed to partly refund the Australian government for a report. The report contained AI-generated errors, including references that did not exist and a made-up quote from a court judgment.</li>
          </ul>
          <p>At Crestline, rule 4 of the made-up AI policy says a named person checks every AI output. On the Harbourview project, Olivia checks her drafts. Ben Hughes, the engagement manager, reviews every deliverable before it goes to the client.</p>
          <p>AI errors are hard to spot because the writing sounds confident. A wrong sentence looks just as polished as a right one. So you need a routine, not a quick read.</p>
        </div>
        <div class="lc-card">
          <h3>A five-step checking routine</h3>
          <p>Nina asked Crestline Assist to draft the "key facts" slide for the interim pack. Here is what each check found in the made-up draft:</p>
          <table class="lc-table">
            <thead><tr><th>Check</th><th>How to do it</th><th>What Nina found</th></tr></thead>
            <tbody>
              <tr><td><strong>1. Facts</strong></td><td>Check names, dates, job titles and claims against your own records.</td><td>The AI called Daniel Osei "Head of Repairs". His title is Repairs Manager.</td></tr>
              <tr><td><strong>2. Numbers</strong></td><td>Recalculate every number from the source data. Never trust AI maths.</td><td>The AI said on-time repairs were 82%. It averaged the three priority rates (94.0%, 81.0% and 70.0%). But routine jobs are the biggest group. The real figure is 23,777 of 31,200 jobs: 76.2%.</td></tr>
              <tr><td><strong>3. Sources</strong></td><td>Open every source. Check it exists and says what the AI claims.</td><td>The AI cited a "UK Repairs Benchmark Review 2025". Nina searched and could not find it. The AI made it up.</td></tr>
              <tr><td><strong>4. Fit</strong></td><td>Compare the output with your brief: audience, length, tone, client facts.</td><td>The slide gave recommendations. The brief said findings only.</td></tr>
              <tr><td><strong>5. Own it</strong></td><td>Put your name on it, add the AI note if required, and log the use.</td><td>Nina logged the task and asked Olivia for a second check.</td></tr>
            </tbody>
          </table>
          <p>The draft also said: "Under Awaab's Law, landlords must fix all damp and mould within 24 hours." Olivia checked the GOV.UK guidance on Awaab's Law. It applies to social landlords in England. Since 27 October 2025, emergency hazards must be investigated and made safe within 24 hours. Possible significant damp and mould hazards must be investigated within 10 working days, with further time limits after that. More hazard types are added from 30 November 2026. Olivia rewrote the line and asked Harbourview's legal team to confirm it. This is general information, not legal advice.</p>
        </div>
        <div class="lc-card">
          <h3>Citations: make AI show its working</h3>
          <p>A <strong>citation</strong> is a reference to a source, such as a report, a web page or a law. AI can invent citations that look real: a sensible title, a real-sounding author and a year. Some AI tools can search the web and give links. That helps, but the page may still not say what the AI claims. Open it and read the part that matters.</p>
          <p>You can ask AI to help you plan your checks. It does not replace them.</p>
          <pre><code>Below is a draft. List every factual claim, number and source
        in a table with these columns: Claim, Where it came from
        (my data, a named source, or your own knowledge), How I can
        check it, and Risk if wrong (High, Medium, Low).
        Put any claim from your own knowledge in its own row and
        mark it "UNVERIFIED". Do not add new claims.
        [paste the draft]</code></pre>
          <p>Then do the checks yourself: open the sources, redo the sums and ask the people who know.</p>
        </div>
        <div class="lc-card">
          <h3>Saying when you used AI</h3>
          <p><strong>Disclosure</strong> means telling people that AI helped. Follow your organisation's policy and your client contract. Crestline's made-up standard note for deliverables is:</p>
          <pre><code>Prepared with help from Crestline's approved AI assistant.
        Checked by [name], [date].</code></pre>
          <p>Crestline also keeps an AI log for each project. A made-up entry: "Tue 6 Oct 2026. Crestline Assist. Draft of key facts slide. Confidential. Checked by Nina Alvarez and Olivia Grant."</p>
          <p>Some rules also touch on AI content. The US Copyright Office said in January 2025 that prompts alone do not make you the author of AI output. Your own creative changes and choices can be protected. In the EU, the EU AI Act requires some AI-generated content to be labelled. In regulated professions, follow your professional body's guidance on AI. This is general education, not legal advice. Ask your legal or compliance team about your own case.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: check the key facts slide</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Nina's prompt">In Crestline Assist: "Using the repairs table below, draft a key facts slide for a housing client's interim findings workshop. Five bullet points."</li>
              <li data-kind="answer" data-label="AI draft">The draft looks polished. One bullet says "On-time repairs were 82%". Another cites a "UK Repairs Benchmark Review 2025".</li>
              <li data-kind="tool" data-label="Spreadsheet">Nina recalculates in a spreadsheet: 23,777 jobs on time out of 31,200.</li>
              <li data-kind="result" data-label="Real figure">The result is 76.2%. The AI averaged the three priority rates instead of using the job counts.</li>
              <li data-kind="check" data-label="Source check">Nina searches for the benchmark review. It does not exist. She deletes the bullet and notes the error in the AI log.</li>
              <li data-kind="warn" data-label="Near miss">The 82% figure would have made Harbourview look better than it is. The client might have repeated it to its board.</li>
              <li data-kind="check" data-label="Second check">Olivia reviews the corrected slide. Ben gives the final approval before the workshop on Thursday 15 October.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to build a checking list for a draft. Use the sample paragraph, or paste your own draft if your policy allows it in this tool.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a careful reviewer who helps professionals check AI-assisted drafts before they reach a client. Use simple English.

        Source data (made up): repairs jobs by priority. Emergency 3,900 jobs, 3,666 on time. Urgent 9,100 jobs, 7,371 on time. Routine 18,200 jobs, 12,740 on time. Complaints: 1,140 this year, 860 last year.

        Draft to check: "[On-time repairs were 82% this year. Complaints rose by almost half. A UK Repairs Benchmark Review 2025 says most landlords reach 90%. The data shows repair operatives are the main cause of delays.]"

        Please:
        1. Make a table: Claim, Correct or not, Your working (show the maths from the source data), What to do.
        2. Mark any source you cannot confirm as "NOT CONFIRMED: check by hand". Do not pretend you checked it.
        3. Mark any claim about causes that the data does not prove as "OPINION, NOT SHOWN BY DATA".
        4. Rewrite the draft so it uses only what the source data supports. Keep it under 80 words.

        Do not add new facts or numbers.</pre>
            <ul class="ai-try-checks">
              <li>The AI finds that on-time is 76.2% (23,777 of 31,200), not 82%.</li>
              <li>It finds that complaints rose about 33%, not "almost half".</li>
              <li>It does not claim the benchmark source exists.</li>
              <li>Redo at least one calculation yourself to check its maths.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> AI output becomes your work the moment you use it. Check facts, redo the numbers, open every source and compare the result with your brief. Then put your name on it and say how AI helped.
        </div>
      HTML
      starter_code: nil
    },
    5 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-genai">Generative AI</div>
          <h1 class="lc-title">Emails and Messages</h1>
        </div>
        <p class="lc-lead">Email takes a large part of many working days. AI can draft a clear email from your bullet points, reply to a long thread, or soften a blunt message. In this lesson you will learn to brief AI for emails, get the tone right, and handle difficult messages. You will also learn how to keep your messages human: accurate, personal and clearly yours. You will help Ben and Olivia write emails to Harbourview Housing.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="Top: six steps for an AI-assisted email. One, purpose: who and why. Two, key points: you decide. Three, AI draft in an approved tool. Four, check facts and tone. Five, make it yours in your voice. Six, send: you own it. Bottom: a tone scale from too blunt, to clear and kind, to too vague. Too blunt example: We can't do that. Clear and kind example: That is outside scope, here are two options. Too vague example: We'll see what we can do.">
            <defs><marker id="gp5a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <text x="380" y="24" font-weight="700" fill="#c4b5fd" text-anchor="middle">Six steps for an AI-assisted email</text>
              <g text-anchor="middle">
                <rect x="10" y="40" width="110" height="56" rx="8" fill="#1f1f44" stroke="#8b5cf6"/>
                <text x="65" y="63" font-weight="700">1 Purpose</text>
                <text x="65" y="83" font-size="11" fill="#9b99b8">who and why</text>
                <rect x="136" y="40" width="110" height="56" rx="8" fill="#1f1f44" stroke="#8b5cf6"/>
                <text x="191" y="63" font-weight="700">2 Key points</text>
                <text x="191" y="83" font-size="11" fill="#9b99b8">you decide</text>
                <rect x="262" y="40" width="110" height="56" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
                <text x="317" y="63" font-weight="700">3 AI draft</text>
                <text x="317" y="83" font-size="11" fill="#9b99b8">approved tool</text>
                <rect x="388" y="40" width="110" height="56" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
                <text x="443" y="63" font-weight="700">4 Check</text>
                <text x="443" y="83" font-size="11" fill="#9b99b8">facts and tone</text>
                <rect x="514" y="40" width="110" height="56" rx="8" fill="#1f1f44" stroke="#ec4899"/>
                <text x="569" y="63" font-weight="700" font-size="12">5 Make it yours</text>
                <text x="569" y="83" font-size="11" fill="#9b99b8">your voice</text>
                <rect x="640" y="40" width="110" height="56" rx="8" fill="#1f1f44" stroke="#10b981"/>
                <text x="695" y="63" font-weight="700">6 Send</text>
                <text x="695" y="83" font-size="11" fill="#9b99b8">you own it</text>
              </g>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#gp5a)">
                <line x1="121" y1="68" x2="133" y2="68"/>
                <line x1="247" y1="68" x2="259" y2="68"/>
                <line x1="373" y1="68" x2="385" y2="68"/>
                <line x1="499" y1="68" x2="511" y2="68"/>
                <line x1="625" y1="68" x2="637" y2="68"/>
              </g>
              <text x="380" y="136" font-weight="700" fill="#c4b5fd" text-anchor="middle">Find the right tone</text>
              <rect x="40" y="150" width="680" height="10" rx="5" fill="#27274e" stroke="#9b99b8"/>
              <circle cx="380" cy="155" r="9" fill="#10b981"/>
              <g text-anchor="middle">
                <rect x="20" y="180" width="220" height="100" rx="8" fill="#27274e" stroke="#ec4899"/>
                <text x="130" y="206" font-weight="700">Too blunt</text>
                <text x="130" y="232" font-size="12">"We can't do that.</text>
                <text x="130" y="250" font-size="12">It's not in the contract."</text>
                <rect x="270" y="180" width="220" height="100" rx="8" fill="#1f1f44" stroke="#10b981"/>
                <text x="380" y="206" font-weight="700">Clear and kind</text>
                <text x="380" y="232" font-size="12">"That is outside our scope.</text>
                <text x="380" y="250" font-size="12">Here are two options."</text>
                <rect x="520" y="180" width="220" height="100" rx="8" fill="#27274e" stroke="#f59e0b"/>
                <text x="630" y="206" font-weight="700">Too vague</text>
                <text x="630" y="232" font-size="12">"We'll see what we</text>
                <text x="630" y="250" font-size="12">can do at some point."</text>
              </g>
            </g>
          </svg>
          <figcaption>You decide the purpose and key points. AI drafts. You check facts and tone, and make the message yours before you send it.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Where AI helps with email</h3>
          <p>AI is useful for these email jobs:</p>
          <ul class="lc-list">
            <li><strong>Drafting from bullet points:</strong> you give the key points, AI writes clear sentences.</li>
            <li><strong>Replying to a long thread:</strong> AI summarises who asked what, so nothing is missed.</li>
            <li><strong>Changing tone or length:</strong> "Make this warmer", "Cut this to 80 words".</li>
            <li><strong>Writing for a different reader:</strong> a version for a client director and a simpler one for tenants.</li>
          </ul>
          <p>Many email apps now have AI built in. Examples are Copilot in Outlook and Gemini in Gmail. Check that your organisation has approved these features, and check the tool's current help pages, because features change often. At Crestline, the AI features in the firm's office apps are approved for the same data as Crestline Assist.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Write a follow-up email after our meeting.</code></pre>
          <p><strong>Better prompt (made up):</strong></p>
          <pre><code>Write a follow-up email from Olivia Grant, consultant at Crestline
        Consulting, to Grace Whitfield, Director of Property Services at
        Harbourview Housing, after today's kick-off meeting in Leeds.
        Key points:
        - Thank her and her team for their time.
        - Confirm: Daniel Osei sends the repairs data by Friday 11 September.
        - Confirm: weekly check-in calls, Thursdays at 10:00.
        - Confirm: interim findings workshop on Thursday 15 October.
        Tone: warm, professional, British spelling. Under 150 words.
        Use only the facts above. Add a clear subject line.</code></pre>
          <p>After the AI drafts it, Olivia checks every name, date and promise against her meeting notes. Then she adds one personal line about the site visit.</p>
        </div>
        <div class="lc-card">
          <h3>Difficult messages</h3>
          <p>Difficult messages include saying no, giving bad news or answering a complaint. AI can help you find calm, clear words. You still decide what to say and what to offer.</p>
          <p>Made-up situation: Grace emails Ben. She asks Crestline to add a review of gas servicing contracts to the interim pack. That work is not in the agreed <strong>scope</strong> (the list of work in the contract). Ben must say no to the request in its current form, but keep a good relationship.</p>
          <pre><code>Help me reply to a client. I am Ben Hughes, engagement manager.
        The client asked us to add a review of gas servicing contracts
        to our interim findings pack for Thursday 15 October. It is not
        in our agreed scope, and adding it would delay the pack.
        I want to: thank her, say clearly it is outside scope, and offer
        two options: (1) a separate piece of work after the main
        project ends, with its own quote, or (2) list it as a
        recommendation for a later phase. Ask which she prefers.
        Tone: warm, direct, no jargon, no long apology. Under 130 words.
        Do not promise dates or prices.</code></pre>
          <p>Ben checks the draft. He removes "Unfortunately, we are unable to accommodate your request", because it sounds cold. He adds a line about Grace's board meeting, which only he knows about. Ben also does not let AI decide whether to offer a discount. That is a business decision. Later, at the weekly check-in call on Thursday 8 October, Grace chooses the separate piece of work. It becomes Phase 2, and Ben's proposal is due on Friday 23 October.</p>
          <p>Keep personal data out. A tenant's complaint letter may contain names, addresses or health details. Under Crestline's made-up policy, that is Restricted data. Remove those details first, or write the reply yourself.</p>
        </div>
        <div class="lc-card">
          <h3>Keeping it human</h3>
          <p>People notice emails that sound generic. Some messages also need your own words. Use these habits:</p>
          <table class="lc-table">
            <thead><tr><th>Habit</th><th>Why</th></tr></thead>
            <tbody>
              <tr><td>Check every name, date, number and promise</td><td>AI may invent a date or change a commitment. "Thursday 15 October" must match the calendar.</td></tr>
              <tr><td>Cut empty phrases</td><td>Remove lines like "I hope this email finds you well" if you would not say them.</td></tr>
              <tr><td>Add one real, personal detail</td><td>Only you know what happened in the room or on the call.</td></tr>
              <tr><td>Read it aloud before you send</td><td>If it does not sound like you, change it.</td></tr>
              <tr><td>Write sensitive messages yourself</td><td>A personal apology, sympathy or feedback to a colleague needs your own words. AI can check the tone afterwards.</td></tr>
              <tr><td>Never let AI send for you without review</td><td>You own every message that leaves your account.</td></tr>
            </tbody>
          </table>
          <p>Writing across countries: Nina, in New York, writes to the UK client. She asks AI to "use British spelling and UK date style, for example 15 October 2026". She still checks the result.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: judge the tone</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each made-up line from a Crestline email by its tone.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="blunt" data-label="Too blunt"></div>
              <div data-sorter-target="bucket" data-bucket="clear" data-label="Clear and kind"></div>
              <div data-sorter-target="bucket" data-bucket="vague" data-label="Too vague"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="blunt" data-why="It is correct but cold, and it gives the client no way forward.">"We can't do the gas servicing review. It's not in the contract."</li>
              <li data-bucket="clear" data-why="It states the limit clearly, offers options and asks for a decision.">"The gas servicing review is outside our agreed scope. We can quote for it as a separate piece of work, or list it for a later phase. Which would you prefer?"</li>
              <li data-bucket="vague" data-why="It makes no clear promise and gives no date, so the client cannot plan.">"We'll see what we can do about the gas servicing piece at some point."</li>
              <li data-bucket="blunt" data-why="It blames the client and gives no plan. State facts and the next step instead.">"Your data came late, so our work will be late."</li>
              <li data-bucket="clear" data-why="It gives facts, a date and the reason, without blame.">"The diagnostic will reach you on Friday 9 October as planned. The repairs data arrived a week later than planned, so two charts will follow on Tuesday 13 October."</li>
              <li data-bucket="vague" data-why="It sounds polite but says nothing. Name the problem and what you will do.">"Apologies for any possible inconvenience that may have been caused."</li>
              <li data-bucket="clear" data-why="It is short, polite and gives a clear action and deadline.">"Thank you for the quick reply. The agenda for Thursday is attached. Please send any changes by Friday."</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Draft a difficult work email with AI. Change the situation in brackets to a real one. Remove any personal or confidential details first.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an experienced communications coach for professionals. Use simple, clear English.

        Help me write a difficult email.
        Me: [engagement manager at a consultancy].
        Reader: [a client director I have a good relationship with].
        Situation: [The client asked us to add extra analysis that is not in our agreed scope. Adding it now would delay a deliverable due next week.]
        What I want to say: [thank them; say clearly it is outside scope; offer two options: a separate quote, or a later phase; ask which they prefer].
        Things I must not promise: [new dates, prices or discounts].

        Please give me:
        1. A subject line.
        2. Version A: short and direct (under 100 words).
        3. Version B: warmer (under 150 words).
        4. A list of every fact, date or promise in the drafts, so I can check them.
        5. One sentence I should replace with a personal detail only I know.

        Use British spelling. Avoid jargon, long apologies and phrases like "I hope this email finds you well".</pre>
            <ul class="ai-try-checks">
              <li>The "no" is clear, and both options are offered.</li>
              <li>No new dates, prices or discounts are promised.</li>
              <li>The tone fits your relationship with the reader.</li>
              <li>You add a personal detail before you send it.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Let AI handle the wording, but you own the message. Decide the purpose and the key points yourself. Check every fact and promise, and make sure the final email sounds like you.
        </div>
      HTML
      starter_code: nil
    },
    6 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-genai">Generative AI</div>
          <h1 class="lc-title">Reports and Documents</h1>
        </div>
        <p class="lc-lead">Reports and documents are where your thinking is judged. AI can help at every stage: planning the outline, drafting sections, summarising long source documents and editing for clarity. But a report is only as good as its facts and its argument, and those stay your job. In this lesson you will help Olivia finish Crestline's current-state diagnostic for Harbourview Housing. It is due on Friday 9 October.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 330" role="img" aria-label="Top: five steps to write a report with AI. One, outline: you choose the story. Two, draft: AI drafts from your notes. Three, summarise: sources with page numbers. Four, edit: plain, short, clear. Five, check: Ben signs off. Bottom: the made-up diagnostic outline with six sections and who does what. Summary: you write it last. Background and scope: AI drafts, you check. What the data shows: AI drafts, you redo every number. Damp and mould: you write it, with a legal check. Data gaps and limits: AI lists them, you confirm. Next steps: you write them.">
            <defs><marker id="gp6a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <text x="380" y="24" font-weight="700" fill="#c4b5fd" text-anchor="middle">Five steps for a report written with AI</text>
              <g text-anchor="middle">
                <rect x="12" y="40" width="134" height="56" rx="8" fill="#1f1f44" stroke="#8b5cf6"/>
                <text x="79" y="63" font-weight="700">1 Outline</text>
                <text x="79" y="83" font-size="11" fill="#9b99b8">you choose the story</text>
                <rect x="162" y="40" width="134" height="56" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
                <text x="229" y="63" font-weight="700">2 Draft</text>
                <text x="229" y="83" font-size="11" fill="#9b99b8">AI uses your notes</text>
                <rect x="312" y="40" width="134" height="56" rx="8" fill="#1f1f44" stroke="#22d3ee"/>
                <text x="379" y="63" font-weight="700">3 Summarise</text>
                <text x="379" y="83" font-size="11" fill="#9b99b8">with page numbers</text>
                <rect x="462" y="40" width="134" height="56" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
                <text x="529" y="63" font-weight="700">4 Edit</text>
                <text x="529" y="83" font-size="11" fill="#9b99b8">plain, short, clear</text>
                <rect x="612" y="40" width="134" height="56" rx="8" fill="#1f1f44" stroke="#10b981"/>
                <text x="679" y="63" font-weight="700">5 Check</text>
                <text x="679" y="83" font-size="11" fill="#9b99b8">Ben signs off</text>
              </g>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#gp6a)">
                <line x1="147" y1="68" x2="159" y2="68"/>
                <line x1="297" y1="68" x2="309" y2="68"/>
                <line x1="447" y1="68" x2="459" y2="68"/>
                <line x1="597" y1="68" x2="609" y2="68"/>
              </g>
              <rect x="12" y="118" width="734" height="198" rx="10" fill="#27274e" stroke="#9b99b8"/>
              <text x="32" y="144" font-weight="700" fill="#c4b5fd">Made-up diagnostic outline: who does what</text>
              <rect x="32" y="158" width="340" height="44" rx="6" fill="#1f1f44" stroke="#ec4899"/>
              <text x="46" y="177" font-weight="700">1 Summary</text>
              <text x="46" y="194" font-size="11" fill="#9b99b8">You write it, last</text>
              <rect x="32" y="210" width="340" height="44" rx="6" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="46" y="229" font-weight="700">2 Background and scope</text>
              <text x="46" y="246" font-size="11" fill="#9b99b8">AI drafts from the brief, you check</text>
              <rect x="32" y="262" width="340" height="44" rx="6" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="46" y="281" font-weight="700">3 What the data shows</text>
              <text x="46" y="298" font-size="11" fill="#9b99b8">AI drafts, you redo every number</text>
              <rect x="388" y="158" width="340" height="44" rx="6" fill="#1f1f44" stroke="#ec4899"/>
              <text x="402" y="177" font-weight="700">4 Damp and mould</text>
              <text x="402" y="194" font-size="11" fill="#9b99b8">You write it, client legal team checks</text>
              <rect x="388" y="210" width="340" height="44" rx="6" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="402" y="229" font-weight="700">5 Data gaps and limits</text>
              <text x="402" y="246" font-size="11" fill="#9b99b8">AI lists them, you confirm with Daniel</text>
              <rect x="388" y="262" width="340" height="44" rx="6" fill="#1f1f44" stroke="#ec4899"/>
              <text x="402" y="281" font-weight="700">6 Next steps</text>
              <text x="402" y="298" font-size="11" fill="#9b99b8">You write them</text>
            </g>
          </svg>
          <figcaption>AI helps most with structure, first drafts and editing. You write the parts that carry judgement: the summary, the legal points and the next steps.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Start with the outline, not the text</h3>
          <p>The <strong>current-state diagnostic</strong> is a short report on how Harbourview's repairs service works today. It uses 12 months of repairs data. The readers are Grace Whitfield, the client sponsor, and Daniel Osei, the Repairs Manager.</p>
          <p>A common mistake is to ask AI for the whole report in one prompt. You get smooth text with no clear argument. Start with the outline instead. An <strong>outline</strong> is the list of sections, with the main message of each one. Decide the story first, then fill it in.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Write a diagnostic report on the client's repairs service.</code></pre>
          <p><strong>Better prompt (made up):</strong></p>
          <pre><code>I am writing a 10 to 12 page current-state diagnostic for a
        housing association's Director of Property Services.
        Purpose: show how the repairs service performs today, before
        we make any recommendations.
        My key message: routine repairs are the biggest problem, and
        one in three jobs needs more than one visit.
        Suggest 2 different outlines. For each section give:
        a heading, the one-sentence message, and the evidence needed.
        Do not write the report. Do not suggest recommendations.</code></pre>
          <p>Olivia compares the two outlines. She picks one and moves "Data gaps and limits" before "Next steps". She wants Grace to see the limits before any next steps. That is a judgement about the reader, so Olivia makes it.</p>
        </div>
        <div class="lc-card">
          <h3>Draft sections from your own notes</h3>
          <p>AI drafts best when you give it your notes, your data and the section's message. Ask it to mark anything it is not sure about. Olivia uses this instruction at the end of every section prompt:</p>
          <pre><code>Use only my notes and the data below. Where a fact is missing,
        write [CHECK: what is missing] instead of guessing.</code></pre>
          <p>Here is part of the made-up AI draft for "What the data shows", and what Olivia found:</p>
          <table class="lc-table">
            <thead><tr><th>AI draft sentence</th><th>Olivia's check</th><th>Final version</th></tr></thead>
            <tbody>
              <tr><td>"7,423 jobs were late. Most were routine jobs."</td><td>Correct. Routine: 18,200 jobs, 12,740 on time, so 5,460 late. That is 73.6% of the late jobs.</td><td>Kept, with the number added: "5,460 of the 7,423 late jobs (73.6%) were routine."</td></tr>
              <tr><td>"This is mainly because the repair operatives are slow."</td><td>The data does not show causes. This is a guess.</td><td>Removed. Added to the questions for the workshop.</td></tr>
              <tr><td>"First-time fix was [CHECK: figure]."</td><td>The AI flagged the gap, as asked.</td><td>"21,216 of 31,200 jobs (68.0%) were fixed at the first visit."</td></tr>
            </tbody>
          </table>
          <p>The repairs data is Confidential. It has no tenant details, so Olivia may use it in Crestline Assist, the firm's approved AI tool.</p>
        </div>
        <div class="lc-card">
          <h3>Summarise long documents safely</h3>
          <p>Harbourview's repairs policy is 46 pages long. It is not published, so it is Confidential. Olivia needs a one-page summary of the targets and rules. She uses the team's "Policy summariser" prompt:</p>
          <pre><code>Summarise the attached repairs policy for a consultant.
        For each point give the page number where it appears.
        Sections: repair priorities and target times, how jobs are
        booked, rules on second visits, rules on damp and mould.
        Quote the exact words for every target time.
        If a topic is not in the document, say "Not found".
        Do not add anything from outside the document.</code></pre>
          <p>Page numbers and exact quotes make the summary easy to check. Olivia checks every target time against the page. Earlier in the project, an AI summary said routine repairs had a 20 working day target. Page 12 says 28 calendar days. Olivia now checks every target time.</p>
          <p>With very long files, some AI tools may read only part of the text. Others may give less attention to the middle. Check your tool's current help pages for its file limits. For a long document, ask for a summary one section at a time. Then spot-check a few pages yourself.</p>
        </div>
        <div class="lc-card">
          <h3>Edit for clarity</h3>
          <p>AI is a good editor. It can shorten sentences, remove jargon and fix the order of ideas. Ask it to show what it changed, so you can accept or reject each change.</p>
          <p><strong>Before (Olivia's first draft):</strong></p>
          <pre><code>Analysis of the responsive repairs dataset indicates that, in
        terms of performance against target timescales, there is
        considerable variation across priority categories, with the
        routine category demonstrating the lowest level of compliance.</code></pre>
          <p><strong>After (AI edit, checked by Olivia):</strong></p>
          <pre><code>Routine repairs perform worst. Only 70.0% were done within the
        28-day target, compared with 94.0% of emergency repairs.</code></pre>
          <p>Useful editing requests:</p>
          <ul class="lc-list">
            <li>"Cut this section by a third. Keep every number."</li>
            <li>"Rewrite for a reader who is not a repairs expert. Explain any technical term."</li>
            <li>"List each change you made and why, in a table."</li>
            <li>"Find any sentence that makes a claim without a number or a source."</li>
          </ul>
          <p>After editing, read the numbers again. An AI edit can change "70.0% of routine jobs" into "70% of jobs", which means something different. The AI features in your document app can also edit text. At Crestline they are approved for the same data as Crestline Assist.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: finish the diagnostic</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put Olivia's steps for the diagnostic report in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Write the key message and ask Crestline Assist for two possible outlines.</li>
              <li data-order="2">Choose the outline and the order of sections herself.</li>
              <li data-order="3">Draft each section from her notes and the data, with [CHECK] markers for gaps.</li>
              <li data-order="4">Redo every number from the source table, and remove claims about causes.</li>
              <li data-order="5">Ask AI to edit for clarity and list each change, then review the changes.</li>
              <li data-order="6">Write the summary last, add the AI note and log the AI use.</li>
              <li data-order="7">Send it to Ben for review before it goes to Harbourview on Friday 9 October.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to plan a report and draft one section from your notes. Use the sample notes, or replace them with your own if your policy allows it in this tool.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an experienced report editor for a management consultancy. Use simple, clear English and British spelling.

        Report: [a 10-page review of a housing association's repairs service].
        Reader: [the client's Director of Property Services: expert, very busy].
        My key message: [routine repairs perform worst, and many jobs need a second visit].
        My notes (made-up sample data): [31,200 repairs in 12 months. 76.2% on time. Routine: 18,200 jobs, 70.0% on time. Emergency: 94.0% on time. First-time fix 68.0%. Complaints 1,140, up from 860.]

        Please:
        1. Suggest an outline of 5 to 7 sections. For each: heading, one-sentence message, evidence needed.
        2. Draft only the section "What the data shows", under 200 words.
        3. Use only my notes. Where a fact is missing, write [CHECK: what is missing].
        4. Do not explain causes. If a cause seems likely, put it in a list called "Questions to test".
        5. End with a list of every number you used, so I can check it.</pre>
            <ul class="ai-try-checks">
              <li>Each section in the outline has a clear one-sentence message.</li>
              <li>Every number in the draft matches your notes.</li>
              <li>Missing facts show as [CHECK] markers, not guesses.</li>
              <li>Possible causes are listed as questions, not stated as facts.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Decide the story before AI writes a word. Use AI for outlines, first drafts, summaries and editing, but give it your notes and ask it to mark gaps. Then check every number and quote against the source, because your name goes on the report.
        </div>
      HTML
      starter_code: nil
    },
    7 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-genai">Generative AI</div>
          <h1 class="lc-title">Research and Analysis</h1>
        </div>
        <p class="lc-lead">AI can read and summarise sources much faster than you. It can also spot patterns in a table and compare options side by side. But AI mixes facts with confident guesses, and it often reads numbers too quickly. In this lesson you will learn to summarise sources, compare options and read data carefully. You will also learn to keep facts apart from AI guesses. Nina and Olivia are preparing the research for Harbourview's interim findings workshop.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 340" role="img" aria-label="Two bar charts of made-up Harbourview data, January to June 2026, both with axes starting at zero. Left: repairs complaints each month: 112, 104, 98, 95, 91, 88. The count fell 21.4 percent. Right: complaints per 1,000 repairs: 39.3, 38.4, 37.1, 37.7, 36.7, 35.9. The rate fell only 8.6 percent, and it rose in April.">
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <rect x="10" y="10" width="365" height="320" rx="10" fill="#27274e" stroke="#9b99b8"/>
              <rect x="385" y="10" width="365" height="320" rx="10" fill="#27274e" stroke="#9b99b8"/>
              <text x="192" y="36" font-weight="700" fill="#c4b5fd" text-anchor="middle">Complaints each month</text>
              <text x="567" y="36" font-weight="700" fill="#c4b5fd" text-anchor="middle">Complaints per 1,000 repairs</text>
              <g stroke="#9b99b8">
                <line x1="40" y1="250" x2="350" y2="250"/>
                <line x1="415" y1="250" x2="725" y2="250"/>
              </g>
              <g fill="#3b82f6">
                <rect x="52" y="100" width="36" height="150"/>
                <rect x="98" y="111" width="36" height="139"/>
                <rect x="144" y="119" width="36" height="131"/>
                <rect x="190" y="123" width="36" height="127"/>
                <rect x="236" y="128" width="36" height="122"/>
                <rect x="282" y="132" width="36" height="118"/>
              </g>
              <g fill="#22d3ee">
                <rect x="427" y="100" width="36" height="150"/>
                <rect x="473" y="103" width="36" height="147"/>
                <rect x="519" y="108" width="36" height="142"/>
                <rect x="565" y="106" width="36" height="144"/>
                <rect x="611" y="110" width="36" height="140"/>
                <rect x="657" y="113" width="36" height="137"/>
              </g>
              <g font-size="11" text-anchor="middle">
                <text x="70" y="94">112</text>
                <text x="116" y="105">104</text>
                <text x="162" y="113">98</text>
                <text x="208" y="117">95</text>
                <text x="254" y="122">91</text>
                <text x="300" y="126">88</text>
                <text x="445" y="94">39.3</text>
                <text x="491" y="97">38.4</text>
                <text x="537" y="102">37.1</text>
                <text x="583" y="100" fill="#f59e0b">37.7</text>
                <text x="629" y="104">36.7</text>
                <text x="675" y="107">35.9</text>
              </g>
              <g font-size="11" fill="#9b99b8" text-anchor="middle">
                <text x="70" y="266">Jan</text>
                <text x="116" y="266">Feb</text>
                <text x="162" y="266">Mar</text>
                <text x="208" y="266">Apr</text>
                <text x="254" y="266">May</text>
                <text x="300" y="266">Jun</text>
                <text x="445" y="266">Jan</text>
                <text x="491" y="266">Feb</text>
                <text x="537" y="266">Mar</text>
                <text x="583" y="266">Apr</text>
                <text x="629" y="266">May</text>
                <text x="675" y="266">Jun</text>
                <text x="192" y="62">Axis starts at 0. Made-up data, 2026.</text>
                <text x="567" y="62">Axis starts at 0. April went up.</text>
              </g>
              <g text-anchor="middle">
                <text x="192" y="296" font-weight="700">Count: 112 to 88</text>
                <text x="192" y="316" fill="#f9a8d4">down 21.4%</text>
                <text x="567" y="296" font-weight="700">Rate: 39.3 to 35.9</text>
                <text x="567" y="316" fill="#f9a8d4">down only 8.6%</text>
              </g>
            </g>
          </svg>
          <figcaption>The same made-up data tells two stories. Complaints fell by about a fifth, but repairs fell too. Per 1,000 repairs, complaints fell by less than a tenth.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Summarise sources and keep the link</h3>
          <p>Research for the workshop uses four kinds of source. Each one has a data class under Crestline's made-up policy:</p>
          <table class="lc-table">
            <thead><tr><th>Source</th><th>Data class</th><th>Where it may go</th></tr></thead>
            <tbody>
              <tr><td>GOV.UK guidance on Awaab's Law</td><td>Public</td><td>Any AI tool</td></tr>
              <tr><td>Published Tenant Satisfaction Measures results</td><td>Public</td><td>Any AI tool</td></tr>
              <tr><td>Harbourview's repairs data, with no tenant details</td><td>Confidential</td><td>Crestline Assist only</td></tr>
              <tr><td>Focus group notes from 29 and 30 September</td><td>Restricted until names are removed</td><td>Anonymise first, then Crestline Assist</td></tr>
            </tbody>
          </table>
          <p><strong>Tenant Satisfaction Measures</strong> (TSMs) are standard measures that the Regulator of Social Housing asks landlords in England to report. One of them, RP02, is the share of repairs completed within the landlord's own target time. It is reported separately for emergency and non-emergency repairs.</p>
          <p>When AI summarises a source, ask for a quote or page number for each point. Summarise each source on its own before you combine them. Then you can trace every claim back to where it came from.</p>
          <p>Some AI assistants have a research mode. It searches many web pages and writes a report with links. That can save time, but it can still misread a page or cite a weak source. Open every link that supports an important claim. Check your tool's current help pages for how its research mode works.</p>
        </div>
        <div class="lc-card">
          <h3>Read the data carefully</h3>
          <p>Nina asked AI to describe the monthly complaints data for January to June 2026. The AI wrote: "Complaints fell by over 20% in six months, so the service is clearly improving." The first half is true. The second half does not follow.</p>
          <table class="lc-table">
            <thead><tr><th>Month (2026)</th><th>Repairs</th><th>Complaints</th><th>Complaints per 1,000 repairs</th></tr></thead>
            <tbody>
              <tr><td>Jan</td><td>2,850</td><td>112</td><td>39.3</td></tr>
              <tr><td>Feb</td><td>2,710</td><td>104</td><td>38.4</td></tr>
              <tr><td>Mar</td><td>2,640</td><td>98</td><td>37.1</td></tr>
              <tr><td>Apr</td><td>2,520</td><td>95</td><td>37.7</td></tr>
              <tr><td>May</td><td>2,480</td><td>91</td><td>36.7</td></tr>
              <tr><td>Jun</td><td>2,450</td><td>88</td><td>35.9</td></tr>
            </tbody>
          </table>
          <p>Nina checks it in a spreadsheet. Month is in column A, repairs in B and complaints in C, starting in row 2. She works out a <strong>rate</strong> (a number per 1,000 repairs), because the number of repairs also changed:</p>
          <pre><code>D2:  =C2/B2*1000          gives 39.3 for January (copy down to D7)
        Count change:  =(C7-C2)/C2    gives -21.4%
        Repairs change: =(B7-B2)/B2   gives -14.0%
        Rate change:   =(D7-D2)/D2    gives -8.6%</code></pre>
          <p>What Nina finds:</p>
          <ul class="lc-list">
            <li>Repairs also fell by 14.0%, so fewer complaints is partly just fewer jobs.</li>
            <li>The rate fell by only 8.6%, and it went up in April.</li>
            <li>Six months is a short period. Repair demand can change with the seasons, so part of the fall may be seasonal.</li>
            <li>From July to December 2025 the rate was 35.5 per 1,000 repairs (552 of 15,550). From January to June 2026 it was 37.6 (588 of 15,650). So the rate was higher in 2026, not lower.</li>
          </ul>
          <p>Her final line: "Complaints fell from 112 in January to 88 in June. But repairs also fell, and complaints per 1,000 repairs were higher than in the second half of 2025. We cannot yet say the service is improving."</p>
        </div>
        <div class="lc-card">
          <h3>Fact, AI guess or needs checking</h3>
          <p>Ask AI to label every statement in its answer. Olivia uses three labels:</p>
          <ul class="lc-list">
            <li><strong>FACT</strong>: comes from a named source or your data, with a page or cell you can check.</li>
            <li><strong>AI GUESS</strong>: the AI's own reasoning or general knowledge. Treat it as an idea to test.</li>
            <li><strong>TO CHECK</strong>: may be true, but needs a person to confirm it.</li>
          </ul>
          <pre><code>For every statement in your answer, add a label:
        FACT (give the source and page, or the table row),
        AI GUESS (your own reasoning or general knowledge), or
        TO CHECK (plausible, but a person must confirm it).
        Never label something FACT unless it is in the sources I gave.</code></pre>
          <p>The labels help, but the AI can still label wrongly. Check every FACT label against its source.</p>
        </div>
        <div class="lc-card">
          <h3>Compare options fairly</h3>
          <p>Grace wants to know how Harbourview compares with other landlords. Olivia lists three ways to answer, and asks AI for the pros and cons of each:</p>
          <table class="lc-table">
            <thead><tr><th>Option</th><th>Verdict</th><th>Why</th></tr></thead>
            <tbody>
              <tr><td>Ask AI what "typical" landlords achieve</td><td>No</td><td>No source. The AI may invent a benchmark, as it did earlier with a "UK Repairs Benchmark Review 2025" that did not exist.</td></tr>
              <tr><td>Use published TSM results from similar landlords</td><td>Yes, with care</td><td>Public and checkable. But each landlord sets its own target times, so compare like with like.</td></tr>
              <tr><td>Use data from Crestline's other housing clients</td><td>No</td><td>That data is Confidential to those clients. It cannot be shared with Harbourview.</td></tr>
            </tbody>
          </table>
          <p>Comparing like with like matters. TSM results report emergency and non-emergency repairs separately. Harbourview's 76.2% covers all repairs. For non-emergency repairs alone (urgent and routine), 20,111 of 27,300 jobs were on time: 73.7%. That is the figure to compare. The choice of comparison is Olivia's judgement, not the AI's.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: fact or AI guess?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each made-up statement from an AI research summary for the Harbourview workshop.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="fact" data-label="Fact from a source"></div>
              <div data-sorter-target="bucket" data-bucket="guess" data-label="AI guess"></div>
              <div data-sorter-target="bucket" data-bucket="check" data-label="Needs checking"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="fact" data-why="It comes straight from the repairs table: 12,740 of 18,200 routine jobs.">"70.0% of routine repairs were completed within the target time."</li>
              <li data-bucket="guess" data-why="The data shows late jobs, not why they were late. This is a cause to test.">"Routine repairs are late because repair operatives give them low priority."</li>
              <li data-bucket="check" data-why="It sounds right, but you must open the GOV.UK guidance and read the exact rule.">"Awaab's Law adds more hazard types in a later phase."</li>
              <li data-bucket="fact" data-why="It comes from the complaints data: 1,140 against 860 is up 280, or 32.6%.">"Repairs complaints rose from 860 to 1,140 in a year."</li>
              <li data-bucket="guess" data-why="No source supports it. AI often invents numbers that sound like benchmarks.">"Most landlords complete about 90% of repairs on time."</li>
              <li data-bucket="check" data-why="It came from focus group notes. Confirm it reflects more than one or two people.">"Tenants said missed appointments made them take extra time off work."</li>
              <li data-bucket="guess" data-why="A fall in the count does not prove improvement. The rate per 1,000 repairs fell much less.">"Fewer complaints in June shows the service is now improving."</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to analyse a small table carefully and label what is fact and what is a guess. Use the sample data, or swap in your own Public or approved data.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a careful research analyst. Use simple English and show your working.

        Data (made-up sample; replace with [my data]):
        Month, Repairs, Complaints
        Jan, 2850, 112
        Feb, 2710, 104
        Mar, 2640, 98
        Apr, 2520, 95
        May, 2480, 91
        Jun, 2450, 88

        Question from my manager: "[Is the repairs service getting better?]"

        Please:
        1. Work out complaints per 1,000 repairs for each month. Show the sum for January.
        2. Compare the change in the count with the change in the rate, as percentages.
        3. List 3 reasons the data might mislead (for example season, short period, changes in volume).
        4. Answer the question in under 80 words. Label each sentence FACT (from the table), AI GUESS, or TO CHECK.
        5. List the extra data that would let me answer with more confidence.

        Do not use any numbers that are not in the table or worked out from it.</pre>
            <ul class="ai-try-checks">
              <li>January works out at about 39.3 complaints per 1,000 repairs.</li>
              <li>It shows the count fell about 21% but the rate only about 9%.</li>
              <li>Causes are labelled AI GUESS or TO CHECK, not FACT.</li>
              <li>Recalculate two of the rates yourself in a spreadsheet.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> AI makes research faster, not more certain. Keep every claim linked to its source, and work out rates as well as counts. Label each statement as fact, guess or to check. Then you decide what the evidence really shows.
        </div>
      HTML
      starter_code: nil
    },
    8 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-genai">Generative AI</div>
          <h1 class="lc-title">Presentations and Storytelling</h1>
        </div>
        <p class="lc-lead">A good presentation tells one clear story, and every slide moves it forward. AI can help you shape the storyline, draft slides and write speaker notes. It can also make numbers look more dramatic than they are. In this lesson you will learn to build a storyline, draft slides and notes with AI, and present numbers honestly. Nina and Ben are preparing the interim findings pack for the workshop in Leeds on Thursday 15 October.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 340" role="img" aria-label="Top: a storyline in four parts. Situation: 31,200 repairs a year. Complication: complaints up 32.6 percent. Question: what will fix it? Answer: three early themes. Build it in this order, present the answer first. Bottom: two bar charts of the same made-up complaints data, 860 last year and 1,140 this year. Left, misleading: the axis starts at 800, so this year's bar looks almost six times as tall as last year's. Right, honest: the axis starts at zero, and the rise looks like what it is, about a third.">
            <defs><marker id="gp8a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <g text-anchor="middle">
                <rect x="12" y="20" width="170" height="60" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
                <text x="97" y="44" font-weight="700">Situation</text>
                <text x="97" y="64" font-size="11" fill="#9b99b8">31,200 repairs a year</text>
                <rect x="200" y="20" width="170" height="60" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
                <text x="285" y="44" font-weight="700">Complication</text>
                <text x="285" y="64" font-size="11" fill="#9b99b8">complaints up 32.6%</text>
                <rect x="388" y="20" width="170" height="60" rx="8" fill="#1f1f44" stroke="#8b5cf6"/>
                <text x="473" y="44" font-weight="700">Question</text>
                <text x="473" y="64" font-size="11" fill="#9b99b8">what will fix it?</text>
                <rect x="576" y="20" width="170" height="60" rx="8" fill="#1f1f44" stroke="#10b981"/>
                <text x="661" y="44" font-weight="700">Answer</text>
                <text x="661" y="64" font-size="11" fill="#9b99b8">three early themes</text>
                <text x="380" y="110" font-size="12" fill="#9b99b8">Build the story in this order. Present the answer first.</text>
              </g>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#gp8a)">
                <line x1="183" y1="50" x2="197" y2="50"/>
                <line x1="371" y1="50" x2="385" y2="50"/>
                <line x1="559" y1="50" x2="573" y2="50"/>
              </g>
              <rect x="12" y="130" width="362" height="200" rx="10" fill="#27274e" stroke="#ec4899"/>
              <rect x="386" y="130" width="362" height="200" rx="10" fill="#27274e" stroke="#10b981"/>
              <g text-anchor="middle">
                <text x="193" y="154" font-weight="700" fill="#f9a8d4">Misleading: axis starts at 800</text>
                <text x="567" y="154" font-weight="700" fill="#6ee7b7">Honest: axis starts at 0</text>
              </g>
              <g stroke="#9b99b8">
                <line x1="70" y1="296" x2="330" y2="296"/>
                <line x1="444" y1="296" x2="704" y2="296"/>
              </g>
              <rect x="110" y="277" width="70" height="19" fill="#9b99b8"/>
              <rect x="230" y="186" width="70" height="110" fill="#ec4899"/>
              <rect x="484" y="213" width="70" height="83" fill="#9b99b8"/>
              <rect x="604" y="186" width="70" height="110" fill="#10b981"/>
              <g font-size="11" text-anchor="middle">
                <text x="145" y="271">860</text>
                <text x="265" y="180">1,140</text>
                <text x="519" y="207">860</text>
                <text x="639" y="180">1,140</text>
              </g>
              <g font-size="11" fill="#9b99b8">
                <text x="64" y="300" text-anchor="end">800</text>
                <text x="438" y="300" text-anchor="end">0</text>
                <g text-anchor="middle">
                  <text x="145" y="314">Last year</text>
                  <text x="265" y="314">This year</text>
                  <text x="519" y="314">Last year</text>
                  <text x="639" y="314">This year</text>
                </g>
              </g>
            </g>
          </svg>
          <figcaption>Top: a storyline gives your slides one clear argument. Bottom: the same made-up complaints data. Cutting the axis makes this year's bar look almost six times as tall. The real rise is about a third.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Build the storyline first</h3>
          <p>Many people open a slide app and start with slide 1. A better way is to write the storyline first. A <strong>storyline</strong> is the argument of the whole presentation in a few sentences. A common structure is <strong>SCQA</strong>: Situation, Complication, Question, Answer. It comes from Barbara Minto's book <em>The Pyramid Principle</em>.</p>
          <ul class="lc-list">
            <li><strong>Situation:</strong> what the audience already knows and accepts.</li>
            <li><strong>Complication:</strong> what has changed or gone wrong.</li>
            <li><strong>Question:</strong> the question this raises.</li>
            <li><strong>Answer:</strong> your main message. In the presentation, you usually give it first.</li>
          </ul>
          <p>Next, write an <strong>action title</strong> for each slide. An action title is a headline that states the slide's message as a full sentence. Read only the titles, in order, and you should hear the whole story. Nina asks Crestline Assist for a draft storyline:</p>
          <pre><code>Here are our checked findings for an interim workshop with a
        housing association's leadership team (made-up data):
        [paste the checked findings list]
        1. Write the storyline in SCQA form, in 4 sentences.
        2. Suggest 8 to 10 slides. For each, write an action title
           (a full sentence, under 15 words) and the evidence it uses.
        3. Use only the findings above. Mark any slide that needs
           evidence we do not have with [EVIDENCE NEEDED].</code></pre>
          <p>Ben edits the result. He moves the tenants' views earlier, because Grace's board cares most about tenants. Choosing the order is a judgement about the audience, so Ben makes it.</p>
          <p>Some of the made-up action titles they keep:</p>
          <ul class="lc-list">
            <li>"Only 76.2% of the 31,200 repairs were completed on time."</li>
            <li>"Routine repairs cause most delays: 5,460 of the 7,423 late jobs."</li>
            <li>"One in three jobs needs more than one visit."</li>
            <li>"Complaints rose by almost a third in a year, to 1,140."</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Slide drafts and speaker notes</h3>
          <p>AI features in slide apps can draft slides from a prompt or a document. For example, Copilot in PowerPoint can build a draft presentation from a Word file. Gemini in Google Slides can create slides and images. Your organisation must approve these features, and they change often. Check the tool's current help pages.</p>
          <p>Treat a generated deck as a rough first draft. Common problems are:</p>
          <ul class="lc-list">
            <li>Too many words on each slide.</li>
            <li>Numbers that are rounded, changed or not in your data.</li>
            <li>Stock images or icons that do not fit a serious client topic.</li>
            <li>Titles that describe the topic ("Complaints") instead of the message.</li>
          </ul>
          <p><strong>Speaker notes</strong> are the words the presenter plans to say for each slide. Ben presents the pack, so Nina asks AI for notes in Ben's style:</p>
          <pre><code>Write speaker notes for this slide, for a 2-minute talk.
        Presenter: an engagement manager, calm and direct.
        Audience: the client's leadership team, who may feel defensive.
        Slide title: "Complaints rose by almost a third in a year, to 1,140."
        Evidence: 1,140 repairs complaints this year, 860 last year.
        Include: one sentence on why this matters to tenants, and one
        question to ask the room. Do not blame staff or repair teams.
        Under 180 words.</code></pre>
          <p>Ben rewrites the notes in his own words and practises them aloud. Notes are a guide, not a script to read.</p>
        </div>
        <div class="lc-card">
          <h3>Present numbers honestly</h3>
          <p>AI may choose the most dramatic way to show a number. A client may repeat your slide to its board, so every number must be fair as well as correct.</p>
          <table class="lc-table">
            <thead><tr><th>Trap</th><th>Misleading version</th><th>Honest version</th></tr></thead>
            <tbody>
              <tr><td>Cutting the chart axis</td><td>Complaints chart starts at 800, so the rise looks huge.</td><td>Start the axis at 0, or clearly mark the break.</td></tr>
              <tr><td>Percent and percentage points</td><td>"Satisfaction fell 8%."</td><td>"Satisfaction fell 8 percentage points, from 71% to 63%." That is a relative fall of 11.3%.</td></tr>
              <tr><td>Averaging percentages</td><td>"On-time repairs: 82%" (the average of 94.0%, 81.0% and 70.0%).</td><td>"76.2%": 23,777 of 31,200 jobs.</td></tr>
              <tr><td>Counts without rates</td><td>"Complaints fell by a fifth from January to June."</td><td>Also show the rate: 39.3 to 35.9 per 1,000 repairs.</td></tr>
              <tr><td>False precision</td><td>"Complaints rose 32.5581%."</td><td>"Complaints rose by 32.6%", or "by about a third".</td></tr>
            </tbody>
          </table>
          <p>A <strong>percentage point</strong> is the plain difference between two percentages. From 71% to 63% is 8 points. A percent change compares the change with the starting value: 8 divided by 71 is 11.3%. AI tools often mix these up, so check every "%" on every slide.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: build the interim pack</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Nina's prompt">In Crestline Assist: "Using these checked findings, write an SCQA storyline and 10 action titles for an interim workshop."</li>
              <li data-kind="answer" data-label="AI storyline">The AI gives a clear storyline. One title says "Satisfaction collapsed by 8%". Another slide says "Repair operatives are the root cause".</li>
              <li data-kind="check" data-label="Number check">Nina checks the satisfaction figure. It fell from 71% to 63%: 8 percentage points, not 8%. She also removes "collapsed".</li>
              <li data-kind="warn" data-label="Unproved claim">The data does not show the repair operatives are the cause. Nina turns that slide into "Questions to test at the workshop".</li>
              <li data-kind="tool" data-label="Slide app">Nina drafts the slides with the approved AI feature in the firm's slide app, then fixes the layout by hand.</li>
              <li data-kind="result" data-label="Chart check">The complaints chart axis started at 800. Nina resets it to 0 so the rise looks like what it is: about a third.</li>
              <li data-kind="check" data-label="Ben's review">Ben reads only the action titles, in order, to test the story. He adds the AI note to the last slide and approves the pack.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to turn your findings into a storyline, slide titles and an honesty check. Use the sample findings, or replace them with your own.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a presentation coach for consultants. Use simple English and British spelling.

        Audience: [a client's leadership team, 30-minute slot].
        Goal: [agree which problems to look at in more depth].
        Checked findings (made-up sample; replace with mine):
        [- 31,200 repairs in 12 months; 23,777 on time (76.2%).
        - Routine repairs: 5,460 of the 7,423 late jobs.
        - 9,984 jobs needed more than one visit.
        - Complaints: 1,140 this year, 860 last year.
        - Satisfaction with repairs: 63%, down from 71%.]

        Please:
        1. Write the storyline in SCQA form (Situation, Complication, Question, Answer), one sentence each.
        2. Suggest 8 slides. For each give an action title (a full sentence, under 15 words) and the finding it uses.
        3. Write 120-word speaker notes for the most important slide.
        4. Honesty check: for each number, say how to show it fairly. Flag percent versus percentage point mix-ups and any chart that needs an axis starting at 0.

        Use only the findings above. Do not invent causes or new numbers.</pre>
            <ul class="ai-try-checks">
              <li>Reading only the action titles tells the whole story.</li>
              <li>Satisfaction is described as 8 percentage points, not 8%.</li>
              <li>The complaints rise is shown as 32.6%, or about a third.</li>
              <li>No causes or numbers appear that are not in your findings.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Write the story before the slides, and make every title a clear message. Let AI draft slides and notes, but check every number and chart for fairness. Your audience will trust and repeat what you show them.
        </div>
      HTML
      starter_code: nil
    },
    9 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-genai">Generative AI</div>
          <h1 class="lc-title">Meetings</h1>
        </div>
        <p class="lc-lead">Meetings work when everyone knows the purpose, and everyone leaves knowing who does what. AI can draft agendas, turn notes or transcripts into actions, and write the follow-up email. But AI note-taking also raises questions of consent and accuracy. In this lesson you will use AI before, during and after a meeting. You will also learn to ask for agreement before anything is recorded. You will help Olivia with Thursday's weekly check-in call with Harbourview.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 320" role="img" aria-label="A meeting timeline in four stages. Before: agenda with a purpose, send papers early, check the data class. Start: ask every attendee about recording; if anyone says no, take notes by hand. During: AI notes only if agreed, you note decisions, park off-topic items. After: check the AI summary, list actions with owner and due date, send the follow-up the same day. A banner at the bottom says: consent gate, no agreement means no recording or AI notes, Crestline rule 6.">
            <defs><marker id="gp9a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <g text-anchor="middle">
                <rect x="12" y="20" width="172" height="40" rx="8" fill="#1f1f44" stroke="#8b5cf6"/>
                <text x="98" y="45" font-weight="700">Before</text>
                <rect x="200" y="20" width="172" height="40" rx="8" fill="#1f1f44" stroke="#ec4899"/>
                <text x="286" y="45" font-weight="700">Start</text>
                <rect x="388" y="20" width="172" height="40" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
                <text x="474" y="45" font-weight="700">During</text>
                <rect x="576" y="20" width="172" height="40" rx="8" fill="#1f1f44" stroke="#10b981"/>
                <text x="662" y="45" font-weight="700">After</text>
              </g>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#gp9a)">
                <line x1="185" y1="40" x2="197" y2="40"/>
                <line x1="373" y1="40" x2="385" y2="40"/>
                <line x1="561" y1="40" x2="573" y2="40"/>
              </g>
              <rect x="12" y="72" width="172" height="150" rx="8" fill="#27274e" stroke="#8b5cf6"/>
              <rect x="200" y="72" width="172" height="150" rx="8" fill="#27274e" stroke="#ec4899"/>
              <rect x="388" y="72" width="172" height="150" rx="8" fill="#27274e" stroke="#3b82f6"/>
              <rect x="576" y="72" width="172" height="150" rx="8" fill="#27274e" stroke="#10b981"/>
              <g font-size="12" text-anchor="middle">
                <text x="98" y="108">Agenda with a purpose</text>
                <text x="98" y="148">Send papers early</text>
                <text x="98" y="188">Check the data class</text>
                <text x="286" y="108">Ask every attendee</text>
                <text x="286" y="148">Anyone says no?</text>
                <text x="286" y="188">Notes by hand</text>
                <text x="474" y="108">AI notes, if agreed</text>
                <text x="474" y="148">You note decisions</text>
                <text x="474" y="188">Park off-topic items</text>
                <text x="662" y="108">Check the AI summary</text>
                <text x="662" y="148">Owner and due date</text>
                <text x="662" y="188">Follow-up same day</text>
              </g>
              <rect x="12" y="246" width="736" height="56" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="380" y="270" font-weight="700" fill="#fcd34d" text-anchor="middle">Consent gate: no agreement, no recording or AI notes</text>
              <text x="380" y="290" font-size="11" fill="#9b99b8" text-anchor="middle">Crestline rule 6 (made-up policy): ask every attendee at the start</text>
            </g>
          </svg>
          <figcaption>AI helps at every stage of a meeting. Recording or AI notes happen only after every attendee agrees at the start.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Before: an agenda with a purpose</h3>
          <p>The weekly check-in with Harbourview is on Thursday 8 October at 10:00, by video call. It lasts 30 minutes. Grace Whitfield, Daniel Osei, Ben and Olivia will join. Nina cannot join, because 10:00 in London is 05:00 in New York. She will rely on the notes.</p>
          <p>An <strong>agenda</strong> is the list of topics for a meeting, with times and a lead for each. A good agenda also states the purpose: what the meeting must decide.</p>
          <pre><code>Draft an agenda for a 30-minute weekly client check-in call.
        Purpose: confirm plans for next week's interim workshop, and
        agree the extra data we need.
        Topics: [diagnostic status; workshop plan; data request;
        any other business].
        For each topic: time, lead person, and the decision or
        output needed. Leave 5 minutes at the end to agree actions.</code></pre>
          <p>Olivia's final agenda (made up):</p>
          <table class="lc-table">
            <thead><tr><th>Time</th><th>Topic</th><th>Lead</th><th>Output needed</th></tr></thead>
            <tbody>
              <tr><td>10:00</td><td>Diagnostic: on track for Friday 9 October</td><td>Olivia</td><td>Note that two charts follow on Tuesday 13 October</td></tr>
              <tr><td>10:05</td><td>Interim workshop, Thursday 15 October</td><td>Ben</td><td>Agree goals and who attends</td></tr>
              <tr><td>10:15</td><td>Appointment and visit data</td><td>Daniel</td><td>Agree what data and by when</td></tr>
              <tr><td>10:25</td><td>Any other business and actions</td><td>Ben</td><td>Owners and dates for every action</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Start: ask before you record</h3>
          <p>Many meeting tools can record, transcribe and write AI notes. A <strong>transcript</strong> is a written record of everything people said. Crestline's made-up rule 6 says: record and transcribe only if every attendee agrees, and ask at the start.</p>
          <p>Ben asks at the start of the call:</p>
          <pre><code>Before we start: are you happy for us to turn on the meeting
        tool's AI notes and transcript today? It helps Nina, who
        can't join. We'll share the notes with you after the call.
        If anyone would rather not, that's fine. We'll take notes
        by hand.</code></pre>
          <p>Keep these points in mind:</p>
          <ul class="lc-list">
            <li>Many tools show a notice to everyone when AI notes or recording start. A notice is not the same as asking. Ask first.</li>
            <li>If one person says no, do not record. Take notes by hand.</li>
            <li>Laws differ. In the UK, a recording of people is personal data under UK GDPR. In the US, recording consent rules differ between states, and some need every person's consent. This is general information, not legal advice. Follow your policy, and ask your legal or risk team.</li>
            <li>Watch the data class. If someone mentions a named tenant, that part of the notes is Restricted. Remove it before you use the notes in any AI tool.</li>
          </ul>
          <p>Some meetings should not be recorded at all. Harbourview ran its tenant focus groups on 29 and 30 September. Crestline only observed and took notes by hand. Olivia removed all names before she used the notes in Crestline Assist.</p>
        </div>
        <div class="lc-card">
          <h3>After: notes, actions and the follow-up</h3>
          <p>Everyone agreed, so the tool made an AI summary. It looked complete. Olivia compared it with her own notes and found three errors:</p>
          <table class="lc-table">
            <thead><tr><th>AI summary said</th><th>What really happened</th></tr></thead>
            <tbody>
              <tr><td>"Grace agreed to add the gas servicing review to the interim pack."</td><td>Grace chose a separate piece of work, called Phase 2. Ben will send her a short proposal. No fee was agreed.</td></tr>
              <tr><td>"Daniel will send the appointment data by Monday."</td><td>Daniel said Wednesday 14 October.</td></tr>
              <tr><td>"Attendees: Grace, Daniel, Ben, Olivia, Nina."</td><td>Nina was not there. The AI took her name from the invite.</td></tr>
            </tbody>
          </table>
          <p>Each error could cause real trouble. A client agreement that never happened is a serious mistake. Always check decisions, names and dates in an AI summary.</p>
          <p>Then Olivia uses the team's "Meeting actions" prompt to make a clean list. Every action has one owner and a due date:</p>
          <table class="lc-table">
            <thead><tr><th>Action</th><th>Owner</th><th>Due</th></tr></thead>
            <tbody>
              <tr><td>Send the workshop invite and agenda</td><td>Olivia Grant</td><td>Fri 9 Oct</td></tr>
              <tr><td>Confirm who attends the workshop</td><td>Grace Whitfield</td><td>Mon 12 Oct</td></tr>
              <tr><td>Send the two remaining diagnostic charts</td><td>Nina Alvarez</td><td>Tue 13 Oct</td></tr>
              <tr><td>Send appointment and visit data, with no tenant details</td><td>Daniel Osei</td><td>Wed 14 Oct</td></tr>
              <tr><td>Send the Phase 2 proposal for the gas servicing review</td><td>Ben Hughes</td><td>Fri 23 Oct</td></tr>
            </tbody>
          </table>
          <p>Olivia asks AI to draft a short follow-up email with this table. She checks it and sends it the same afternoon. She also adds an entry to the project's AI log.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: run the check-in</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put the steps for Thursday's check-in call in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Draft the agenda with AI, with a purpose and an output for each topic.</li>
              <li data-order="2">Send the agenda and the diagnostic status to Grace and Daniel the day before.</li>
              <li data-order="3">At the start of the call, ask every attendee if they agree to AI notes.</li>
              <li data-order="4">During the call, note decisions and actions yourself as well.</li>
              <li data-order="5">Compare the AI summary with your notes, and fix names, dates and decisions.</li>
              <li data-order="6">Make the action list: one owner and one due date per action.</li>
              <li data-order="7">Send the checked follow-up email the same day, and log the AI use.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Turn rough meeting notes into actions and a follow-up email. Use the sample notes, or paste your own after you remove personal details.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an assistant who turns meeting notes into clear actions. Use simple English and British spelling.

        Meeting: [weekly client check-in, Thursday 8 October, 30 minutes].
        My rough notes (made-up sample; replace with mine, with no personal details):
        [- report on track for Fri, 2 charts later (Tue 13th)
        - workshop Thu 15th - G to confirm who's coming by Mon
        - D: appointment and visit data by Wed 14th, no tenant names
        - gas servicing review: G wants it as a separate piece of work. Ben to send proposal by Fri 23rd. Fee NOT agreed yet
        - Nina not on call - send her notes]

        Please:
        1. List decisions made. Only include clear decisions.
        2. Make an action table: Action, Owner, Due date. Use "[OWNER?]" or "[DATE?]" if the notes do not say.
        3. List anything unclear that I should confirm.
        4. Draft a follow-up email to the client, under 150 words, with the action table.

        Do not invent decisions, owners or dates. Do not treat questions as decisions.</pre>
            <ul class="ai-try-checks">
              <li>The fee for the gas servicing work is not shown as agreed.</li>
              <li>Every action has one owner and a date, or a clear [OWNER?] or [DATE?] gap.</li>
              <li>Dates match the notes exactly.</li>
              <li>The email has no new promises that were not in the meeting.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> AI can save a lot of meeting admin, but only after everyone agrees to it. Ask before you record. Check every decision, name and date in the AI summary. Give each action one owner and a due date.
        </div>
      HTML
      starter_code: nil
    },
    10 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-genai">Generative AI</div>
          <h1 class="lc-title">Planning and Problem Solving</h1>
        </div>
        <p class="lc-lead">AI is a fast thinking partner. It can list many ideas and organise them with a framework. It can weigh pros and cons and imagine how a plan could fail. But it does not know your client's budget, politics or people as you do. It also does not carry the risk of a wrong choice. In this lesson you will use AI to brainstorm, structure a problem, compare options and run a pre-mortem. Then you will decide. The team is working on one of Harbourview's goals: first-time fix up from 68% to 80%.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 370" role="img" aria-label="An issue tree. The problem: why do 9,984 jobs need another visit? That is 32.0 percent of 31,200 jobs. Five possible causes, each with evidence to check. Wrong diagnosis at first call: check call records. Parts not on the van: check the van stock list. Wrong trade sent: check job trade codes. Tenant not at home: check no-access visits. Job bigger than reported: check job notes. Below, five steps: brainstorm, where AI gives many ideas; structure with an issue tree; weigh up pros and cons; pre-mortem, asking how it could fail; and decide, which is done by you and the client.">
            <defs><marker id="gp10a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <g font-weight="700" fill="#c4b5fd" text-anchor="middle">
                <text x="121" y="34">The problem</text>
                <text x="425" y="34">Possible causes</text>
                <text x="662" y="34">Evidence to check</text>
              </g>
              <rect x="16" y="130" width="210" height="96" rx="10" fill="#27274e" stroke="#ec4899"/>
              <g text-anchor="middle">
                <text x="121" y="164" font-weight="700">Why do 9,984 jobs</text>
                <text x="121" y="184" font-weight="700">need another visit?</text>
                <text x="121" y="208" font-size="11" fill="#9b99b8">32.0% of 31,200 jobs</text>
              </g>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none">
                <path d="M226,178 L258,178"/>
                <path d="M258,68 L258,260"/>
                <path d="M258,68 L290,68"/>
                <path d="M258,116 L290,116"/>
                <path d="M258,164 L290,164"/>
                <path d="M258,212 L290,212"/>
                <path d="M258,260 L290,260"/>
              </g>
              <g text-anchor="middle">
                <rect x="290" y="50" width="270" height="36" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
                <text x="425" y="73">Wrong diagnosis at first call</text>
                <rect x="290" y="98" width="270" height="36" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
                <text x="425" y="121">Parts not on the van</text>
                <rect x="290" y="146" width="270" height="36" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
                <text x="425" y="169">Wrong trade sent</text>
                <rect x="290" y="194" width="270" height="36" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
                <text x="425" y="217">Tenant not at home</text>
                <rect x="290" y="242" width="270" height="36" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
                <text x="425" y="265">Job bigger than reported</text>
              </g>
              <g font-size="11" fill="#9b99b8" text-anchor="middle">
                <rect x="580" y="50" width="164" height="36" rx="8" fill="#27274e" stroke="#22d3ee"/>
                <text x="662" y="72">call records</text>
                <rect x="580" y="98" width="164" height="36" rx="8" fill="#27274e" stroke="#22d3ee"/>
                <text x="662" y="120">van stock list</text>
                <rect x="580" y="146" width="164" height="36" rx="8" fill="#27274e" stroke="#22d3ee"/>
                <text x="662" y="168">job trade codes</text>
                <rect x="580" y="194" width="164" height="36" rx="8" fill="#27274e" stroke="#22d3ee"/>
                <text x="662" y="216">no-access visits</text>
                <rect x="580" y="242" width="164" height="36" rx="8" fill="#27274e" stroke="#22d3ee"/>
                <text x="662" y="264">job notes</text>
              </g>
              <g text-anchor="middle">
                <rect x="12" y="306" width="134" height="50" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
                <text x="79" y="326" font-weight="700">Brainstorm</text>
                <text x="79" y="344" font-size="11" fill="#9b99b8">AI: many ideas</text>
                <rect x="162" y="306" width="134" height="50" rx="8" fill="#1f1f44" stroke="#8b5cf6"/>
                <text x="229" y="326" font-weight="700">Structure</text>
                <text x="229" y="344" font-size="11" fill="#9b99b8">issue tree</text>
                <rect x="312" y="306" width="134" height="50" rx="8" fill="#1f1f44" stroke="#22d3ee"/>
                <text x="379" y="326" font-weight="700">Weigh up</text>
                <text x="379" y="344" font-size="11" fill="#9b99b8">pros and cons</text>
                <rect x="462" y="306" width="134" height="50" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
                <text x="529" y="326" font-weight="700">Pre-mortem</text>
                <text x="529" y="344" font-size="11" fill="#9b99b8">how could it fail?</text>
                <rect x="612" y="306" width="134" height="50" rx="8" fill="#1f1f44" stroke="#10b981"/>
                <text x="679" y="326" font-weight="700">Decide</text>
                <text x="679" y="344" font-size="11" fill="#9b99b8">you and the client</text>
              </g>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#gp10a)">
                <line x1="147" y1="331" x2="159" y2="331"/>
                <line x1="297" y1="331" x2="309" y2="331"/>
                <line x1="447" y1="331" x2="459" y2="331"/>
                <line x1="597" y1="331" x2="609" y2="331"/>
              </g>
            </g>
          </svg>
          <figcaption>An issue tree splits a problem into possible causes, each with evidence to check. AI helps with the first four steps. People make the decision.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Brainstorm wide, then filter</h3>
          <p>A <strong>first-time fix</strong> is a repair finished at the first visit. At Harbourview, 21,216 of 31,200 jobs (68.0%) were fixed first time. So 9,984 jobs needed another visit. To reach 80%, about 24,960 jobs a year would need a first-time fix.</p>
          <p>AI is good at producing many ideas quickly, including ideas you would not think of. Ask for range first, and judge quality later.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>How can a landlord improve first-time fix?</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>A housing association with about 9,800 homes fixes 68% of
        repairs at the first visit. The goal is 80% in 12 months.
        List 20 possible reasons why jobs need a second visit.
        Group them under: before the visit, at the visit, after the
        visit. For each, say what data would show if it is true.
        Mark ideas you are unsure about with "(guess)".</code></pre>
          <p>Olivia gets a long list. She removes ideas that repeat each other. She keeps the ideas that the data can test. AI widens the list. People choose what is worth testing.</p>
        </div>
        <div class="lc-card">
          <h3>Use a framework to structure the problem</h3>
          <p>A <strong>framework</strong> is a standard way to organise thinking. AI knows many frameworks and can fill one in quickly. Three useful ones:</p>
          <table class="lc-table">
            <thead><tr><th>Framework</th><th>What it does</th><th>Harbourview example</th></tr></thead>
            <tbody>
              <tr><td><strong>Issue tree</strong></td><td>Splits a problem into smaller causes, with no gaps and no overlaps.</td><td>The five causes of repeat visits in the diagram.</td></tr>
              <tr><td><strong>Five whys</strong></td><td>Asks "why?" again and again to find a deeper cause.</td><td>Why a second visit? Wrong part. Why? The fault was not clear at booking.</td></tr>
              <tr><td><strong>Pros and cons</strong></td><td>Lists the benefits and costs of each option.</td><td>Three options to improve first-time fix (next card).</td></tr>
            </tbody>
          </table>
          <p>Check the AI's structure. AI issue trees often have overlapping branches, such as "parts problems" and "van stock problems". Overlaps make you count one cause twice. Also check that each branch has evidence you can actually get. The diagram shows the evidence column Olivia added.</p>
        </div>
        <div class="lc-card">
          <h3>Pros, cons and a simple scoring table</h3>
          <p>The team has three made-up options to discuss at the workshop. A <strong>scoring table</strong> gives each option a score of 1 to 5 for each criterion. Each criterion has a weight, which shows how much it matters. For cost, 5 means cheapest.</p>
          <table class="lc-table">
            <thead><tr><th>Option</th><th>Impact (50%)</th><th>Cost (30%)</th><th>Speed (20%)</th><th>Weighted score</th></tr></thead>
            <tbody>
              <tr><td>A. Better fault diagnosis when tenants call</td><td>4</td><td>4</td><td>3</td><td>3.8</td></tr>
              <tr><td>B. Review of parts carried on vans</td><td>4</td><td>2</td><td>3</td><td>3.2</td></tr>
              <tr><td>C. Two-hour appointment slots with text reminders</td><td>2</td><td>3</td><td>5</td><td>2.9</td></tr>
            </tbody>
          </table>
          <p>In a spreadsheet, put the options in rows 2 to 4 and the scores in columns B to D. Put the weights in B6:D6 (0.5, 0.3, 0.2). Then:</p>
          <pre><code>E2:  =SUMPRODUCT(B2:D2,$B$6:$D$6)     gives 3.8 for option A
        (copy down to E4: option B gives 3.2, option C gives 2.9)</code></pre>
          <p>AI can suggest scores and list pros and cons. But scores and weights are judgements, not facts. Watch what happens if Grace cares most about quick results. With weights of 30% impact, 20% cost and 50% speed, option C scores 3.7 and comes first. Option A scores 3.5, and B scores 3.1.</p>
          <p>So the table does not make the decision. It makes the reasons clear. Ben and Grace agree the weights together. Grace decides, because she knows Harbourview's budget, contracts and staff.</p>
        </div>
        <div class="lc-card">
          <h3>Run a pre-mortem</h3>
          <p>A <strong>pre-mortem</strong> is a planning exercise. You imagine the plan has already failed, then list the reasons why. The psychologist Gary Klein described it in the Harvard Business Review in 2007. It helps people raise worries that they might not mention in a normal meeting.</p>
          <pre><code>Imagine it is November 2027. A housing association's 12-month
        plan to raise first-time fix from 68% to 80% has failed.
        It is still 68%. The plan was: [option A and option B].
        1. Write 10 realistic reasons why it failed.
        2. For each: an early warning sign to watch for, and one
           action that would reduce the risk.
        3. Mark the 3 risks you think matter most, and say why.</code></pre>
          <p>The AI suggests risks such as "the van stock list was never updated". Another is "call handlers had no time for the new questions". Olivia adds a risk the AI could not know. Daniel has told her that Harbourview is replacing its repairs IT system next spring. Ben plans a full pre-mortem with the team on the 12-month roadmap before the steering group on Thursday 12 November.</p>
          <p>AI helps you think. It does not carry the risk of a wrong choice. Keep AI out of decisions about people, such as choosing which staff to retrain or let go. Crestline's policy needs HR and Risk approval for that.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: AI task or your decision?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each made-up task from the first-time fix work.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="ai" data-label="Good task for AI"></div>
              <div data-sorter-target="bucket" data-bucket="you" data-label="You decide"></div>
              <div data-sorter-target="bucket" data-bucket="out" data-label="Keep AI out"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="ai" data-why="Producing a wide range of ideas is a strength of AI. You filter them afterwards.">List 20 possible reasons why jobs need a second visit</li>
              <li data-bucket="ai" data-why="AI can fill in a framework quickly. You still check for overlaps and gaps.">Turn the list of reasons into an issue tree</li>
              <li data-bucket="you" data-why="Weights show what matters to the client. That is a judgement for people to agree.">Set the weights for impact, cost and speed</li>
              <li data-bucket="you" data-why="The recommendation carries Crestline's name and needs knowledge of the client.">Choose which option Crestline recommends to Grace</li>
              <li data-bucket="out" data-why="This is a decision about people, and it uses personal data. It needs HR and Risk approval, not AI.">Rank named repair operatives by first-time fix to choose who gets retrained</li>
              <li data-bucket="ai" data-why="Imagining many ways a plan could fail is a good use of AI. People judge which risks are real.">Suggest risks for a pre-mortem on the roadmap</li>
              <li data-bucket="you" data-why="Only the client knows its budget and its other priorities.">Decide whether Harbourview can afford a van stock change this year</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Use AI to compare options and run a pre-mortem on a real decision. Change the problem and options in brackets to your own.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a thinking partner for a professional who must make a decision. Use simple English. You help me think. I make the decision.

        Problem: [Too many repairs need a second visit. The goal is to raise first-time fix from 68% to 80% in 12 months.]
        Options:
        [A. Better fault diagnosis when tenants call.
        B. Review the parts carried on repair vans.
        C. Two-hour appointment slots with text reminders.]
        What matters most: [impact, cost, speed].

        Please:
        1. For each option, list 3 pros and 3 cons.
        2. Suggest a score of 1 to 5 for each criterion and option, with one line of reasoning. Mark every score "(suggested)".
        3. Show how the ranking changes if speed matters most instead of impact.
        4. Pre-mortem: imagine the top option failed after 12 months. Give 5 reasons why, each with an early warning sign.
        5. List 5 questions I must answer myself before deciding (for example budget, contracts, people).

        Do not make the final decision. Do not invent facts or statistics.</pre>
            <ul class="ai-try-checks">
              <li>Every score is marked as suggested, with a reason you can question.</li>
              <li>The ranking changes, or is shown to stay the same, when the weights change.</li>
              <li>The pre-mortem risks are specific, with warning signs.</li>
              <li>The AI leaves the final decision to you.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Use AI to widen your thinking: more ideas, clearer structure, honest pros and cons and a pre-mortem. Then narrow it yourself. Scores and weights are judgements, and the decision belongs to the people who know the context and carry the risk.
        </div>
      HTML
      starter_code: nil
    },
    11 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-genai">Generative AI</div>
          <h1 class="lc-title">Client and Customer Work</h1>
        </div>
        <p class="lc-lead">Clients pay for your judgement, your honesty and your care. AI can help you write proposals, answer common questions and send personal messages at scale. But one invented fact in a proposal, or one false promise to a customer, can break trust fast. In this lesson you will use AI for three kinds of client work: proposals, FAQs and personalised messages. You will also learn how to be honest with clients about your AI use. You will follow Ben and Olivia as they work for Harbourview Housing.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="Top: five steps for an AI-assisted proposal. One, client need, from your notes. Two, approach, which you choose. Three, AI drafts sections in an approved tool. Four, check scope, fees and claims. Five, approve and send, with the AI note. Bottom left: AI must never invent fees, dates, past projects, team experience or client quotes. Bottom right: the honest note: Prepared with help from Crestline's approved AI assistant. Checked by name.">
            <defs><marker id="gp11a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <text x="380" y="24" font-weight="700" fill="#c4b5fd" text-anchor="middle">From client need to a proposal you can stand behind</text>
              <g text-anchor="middle">
                <rect x="10" y="40" width="134" height="58" rx="8" fill="#1f1f44" stroke="#8b5cf6"/>
                <text x="77" y="64" font-weight="700">1 Client need</text>
                <text x="77" y="84" font-size="11" fill="#9b99b8">from your notes</text>
                <rect x="160" y="40" width="134" height="58" rx="8" fill="#1f1f44" stroke="#8b5cf6"/>
                <text x="227" y="64" font-weight="700">2 Approach</text>
                <text x="227" y="84" font-size="11" fill="#9b99b8">you choose it</text>
                <rect x="310" y="40" width="134" height="58" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
                <text x="377" y="64" font-weight="700">3 AI drafts</text>
                <text x="377" y="84" font-size="11" fill="#9b99b8">approved tool</text>
                <rect x="460" y="40" width="134" height="58" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
                <text x="527" y="64" font-weight="700">4 Check</text>
                <text x="527" y="84" font-size="11" fill="#9b99b8">scope, fees, claims</text>
                <rect x="610" y="40" width="140" height="58" rx="8" fill="#1f1f44" stroke="#10b981"/>
                <text x="680" y="64" font-weight="700">5 Approve, send</text>
                <text x="680" y="84" font-size="11" fill="#9b99b8">with the AI note</text>
              </g>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#gp11a)">
                <line x1="145" y1="69" x2="157" y2="69"/>
                <line x1="295" y1="69" x2="307" y2="69"/>
                <line x1="445" y1="69" x2="457" y2="69"/>
                <line x1="595" y1="69" x2="607" y2="69"/>
              </g>
              <rect x="20" y="130" width="340" height="150" rx="10" fill="#27274e" stroke="#ec4899"/>
              <text x="190" y="156" font-weight="700" text-anchor="middle">AI must never invent</text>
              <g font-size="12">
                <text x="44" y="184">✗  Fees, discounts or day rates</text>
                <text x="44" y="206">✗  Dates and deadlines</text>
                <text x="44" y="228">✗  Past projects or case studies</text>
                <text x="44" y="250">✗  Team members' experience</text>
                <text x="44" y="272">✗  Quotes from clients or tenants</text>
              </g>
              <rect x="400" y="130" width="340" height="150" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="570" y="156" font-weight="700" text-anchor="middle">Be honest about AI</text>
              <g font-size="12" text-anchor="middle">
                <text x="570" y="186" fill="#9b99b8">The standard note (made up):</text>
                <text x="570" y="210">"Prepared with help from</text>
                <text x="570" y="228">Crestline's approved AI assistant.</text>
                <text x="570" y="246">Checked by [name]."</text>
                <text x="570" y="270" fill="#9b99b8">Answer client questions truthfully.</text>
              </g>
            </g>
          </svg>
          <figcaption>You decide the approach and every commitment. AI drafts the words. A named person checks scope, fees and claims, and the client is told that AI helped.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Proposals: AI drafts, you commit</h3>
          <p>A <strong>proposal</strong> is a document that offers a client a piece of work. It explains the problem, your approach, the timeline, the team and the fee. Every line is a promise. So AI may draft the words, but people decide what the firm promises.</p>
          <p>Made-up situation: Grace Whitfield asked for a review of Harbourview's gas servicing contracts. It was outside the current scope. At the weekly check-in call on Thursday 8 October, she chose a separate piece of work, called Phase 2. No fee has been agreed yet. Ben Hughes must send her a short proposal by Friday 23 October 2026.</p>
          <p>Ben decides the key facts himself, before he opens any AI tool:</p>
          <table class="lc-table">
            <thead><tr><th>Item</th><th>Ben's decision (made up)</th><th>Who decides</th></tr></thead>
            <tbody>
              <tr><td>Scope</td><td>Review 3 gas servicing contracts: terms, performance data and value for money</td><td>Ben, with Grace</td></tr>
              <tr><td>Timeline</td><td>4 weeks, Monday 23 November to Friday 18 December 2026</td><td>Ben</td></tr>
              <tr><td>Proposed fee</td><td>£22,500 fixed (18 consultant days)</td><td>Ben, approved by a Crestline partner</td></tr>
              <tr><td>Team</td><td>Ben (lead), Olivia Grant, Nina Alvarez</td><td>Ben</td></tr>
            </tbody>
          </table>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Write a proposal for a gas servicing contracts review for a housing association.</code></pre>
          <p>This invites the AI to invent a fee, a timeline and "similar projects". Those claims could end up in front of the client.</p>
          <p><strong>Better prompt (in Crestline Assist, because the facts are Confidential):</strong></p>
          <pre><code>Draft the "Our approach" and "Timeline" sections of a short
        proposal. Reader: the Director of Property Services at a housing
        association, an expert with little time.
        Facts (use only these):
        - Scope: review 3 gas servicing contracts: terms, performance
          data and value for money.
        - 4 weeks: Mon 23 Nov to Fri 18 Dec 2026.
        - Weekly 30-minute update call. Final report on Fri 18 Dec.
        Format: under 250 words, 3 stages with one line each.
        British spelling, plain English, no sales language.
        Do not mention fees, past projects or team experience.
        If a fact is missing, write [TO CONFIRM] instead of guessing.</code></pre>
          <p>Ben writes the fee and team sections himself. He checks the draft against his notes. Then a Crestline partner approves the fee before the proposal goes out.</p>
        </div>
        <div class="lc-card">
          <h3>FAQs and customer answers</h3>
          <p>An <strong>FAQ</strong> (frequently asked questions) is a list of common questions with short, clear answers. AI is good at turning a long policy into plain-English answers. The danger is an answer that sounds helpful but is not in the policy.</p>
          <p>Crestline is writing a tenant communications toolkit for Harbourview, due Friday 30 October. It includes a repairs FAQ for tenants. Olivia gives Crestline Assist the relevant pages of Harbourview's 46-page repairs policy and asks for an FAQ. She tells it to use only the policy text.</p>
          <p>One AI answer says: "If we miss your appointment, you will receive £10 compensation." Olivia searches the policy. There is no compensation rule. The AI added it because many landlords have one. If this went to 9,800 homes, Harbourview would face a promise it never made.</p>
          <p>Use these rules for any customer FAQ:</p>
          <ul class="lc-list">
            <li><strong>One source:</strong> every answer must come from an approved document. Ask the AI to give the page number for each answer.</li>
            <li><strong>Flag gaps:</strong> ask the AI to list questions the policy does not answer. Send those to the client. Do not let AI fill them.</li>
            <li><strong>Plain words:</strong> ask for short sentences and everyday words. Then test the FAQ with a few real readers, such as members of a tenant panel.</li>
            <li><strong>Legal topics:</strong> answers about rights or laws, such as Awaab's Law on damp and mould, need the client's own checked wording. This is general education, not legal advice.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Personalised messages without personal data in AI</h3>
          <p>A <strong>personalised message</strong> speaks to one reader: their name, their appointment, their repair. You can get this without pasting anyone's personal data into AI. Use a <strong>template</strong> with <strong>merge fields</strong>: placeholders that the client's own system fills in for each tenant.</p>
          <p>Olivia asks Crestline Assist to draft appointment text messages. She gives it placeholders only, never the tenant list. Tenant names and phone numbers are Restricted data under Crestline's policy.</p>
          <pre><code>Draft 3 versions of a text message that confirms a repair
        appointment. Use these merge fields exactly: {first_name},
        {date}, {slot}, {job_ref}. Slots are "8am to 12pm" or
        "12pm to 4pm". Include how to rearrange: call [phone number].
        Keep each under 160 characters, so it fits one text.
        Warm, clear, no jargon. No promises about compensation.</code></pre>
          <p>Example result: "Hi {first_name}, your Harbourview repair ({job_ref}) is booked for {date}, {slot}. Can't make it? Call [phone number] to rearrange." Olivia counts the characters with a long name and a long date. Harbourview's team adds the real phone number and tests the message in their own system.</p>
          <p>Personal also means honest. Do not let AI add fake warmth, such as "I was just thinking about you". Clients and customers notice. A short, true personal line from you is worth more.</p>
        </div>
        <div class="lc-card">
          <h3>Honesty with clients about AI</h3>
          <p>Clients have a right to know how you made what they pay for. Crestline's made-up engagement letter with Harbourview says that AI use must be noted in deliverables. Crestline's policy says the same.</p>
          <p>On the Thursday check-in call, Grace asks: "Are you just putting our data into ChatGPT?" Ben answers truthfully. He explains that Crestline uses its approved AI assistant on a business plan. Its contract says prompts are not used to train the vendor's models. No tenant personal data goes in. AI helps with first drafts and summaries. Olivia and Ben check every number and every claim, and Ben signs off every deliverable.</p>
          <p>Honest habits:</p>
          <ul class="lc-list">
            <li>Add the agreed AI note to deliverables. Do not hide it in small print.</li>
            <li>Answer questions about AI use truthfully. If you do not know a detail, say you will find out.</li>
            <li>Never claim work is fully hand-written when AI drafted parts of it.</li>
            <li>If you put an AI chat assistant in front of customers, tell them it is AI. In the EU, the EU AI Act requires this for many AI systems that talk to people; check the official EU AI Act timeline for when each rule applies. This is not legal advice; check with a qualified adviser.</li>
            <li>If a client says "no AI on our work", follow it, and tell your team.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Activity: honest or misleading?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each made-up action from Crestline's client work.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="honest" data-label="Honest"></div>
              <div data-sorter-target="bucket" data-bucket="misleading" data-label="Misleading"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="honest" data-why="This follows the engagement letter and the policy. The client can see how the pack was made.">Adding the standard AI note to the interim findings pack</li>
              <li data-bucket="misleading" data-why="Crestline Assist drafted parts of the work. Saying otherwise is untrue, even if people checked it.">Telling Grace "every word was written by our team" after AI drafted the first outline</li>
              <li data-bucket="honest" data-why="It is true, clear and explains who checked the work.">"Yes, we used our approved AI assistant for first drafts. Olivia and Ben checked every number."</li>
              <li data-bucket="misleading" data-why="AI invented these projects. A proposal must only describe real past work, checked by people.">A proposal line about "similar reviews for 12 housing associations" that the AI made up</li>
              <li data-bucket="misleading" data-why="It is not in Harbourview's policy. The FAQ would promise tenants something the landlord never agreed.">An FAQ answer promising £10 for a missed appointment, added by AI</li>
              <li data-bucket="misleading" data-why="Customers must know when they talk to AI. In the EU this is often a legal duty too.">A website chat assistant that calls itself "Sarah from the repairs team" and hides that it is AI</li>
              <li data-bucket="honest" data-why="It gives a true picture: AI helped with drafting, and people did the checking.">Explaining that AI saved drafting time, while people did all the checking</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Draft one section of a client proposal from your own facts. Keep fees, names and confidential details out unless your approved tool allows them.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an experienced proposal writer for a professional services firm. Use plain British English.

        Draft the "Our approach" section of a short proposal.
        Client type: [a housing association with about 9,800 homes].
        Reader: [the Director of Property Services, an expert with little time].
        Client need: [review 3 gas servicing contracts: terms, performance and value for money].
        Timeline: [4 weeks, with a weekly update call and a final report].
        Our method, in my own words: [interview the contracts team; analyse 12 months of performance data; compare contract terms; test findings with the client before the final report].

        Rules:
        1. Use only the facts above. Where a fact is missing, write [TO CONFIRM].
        2. Do not mention fees, discounts, past projects, team experience or results we will achieve.
        3. Under 250 words. Three stages, each with a heading and 2 to 3 sentences.
        4. No sales language such as "world-class" or "cutting-edge".

        After the draft, list every promise the text makes (dates, outputs, meetings), so I can check that we can deliver each one.</pre>
            <ul class="ai-try-checks">
              <li>The draft uses only your facts, with [TO CONFIRM] where facts are missing.</li>
              <li>There are no fees, past projects or invented results.</li>
              <li>The list of promises matches what your team can really deliver.</li>
              <li>You would be happy for the client to know AI helped draft it.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> In client work, AI can draft the words, but people make the promises. Decide scope, dates and fees yourself. Check every claim against a real source, keep personal data out with templates, and tell clients honestly how AI helped.
        </div>
      HTML
      starter_code: nil
    },
    12 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-genai">Generative AI</div>
          <h1 class="lc-title">Learning and Upskilling with AI</h1>
        </div>
        <p class="lc-lead">Every new client, role or project brings new words and ideas to learn. AI can be a patient tutor: it explains jargon, gives examples, asks you questions and helps you plan your learning. But a tutor that is sometimes wrong needs checking. In this lesson you will learn to use AI to learn faster, test what you know and practise for real conversations. You will follow Nina Alvarez, an analyst in Crestline's New York office, as she learns about UK social housing.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 320" role="img" aria-label="A learning loop with five steps. One, explain: AI explains a topic simply. Two, check: compare with an official source. Three, practise: AI quizzes you. Four, apply: use it in real work. Five, reflect: note what was hard. An arrow returns from step five to step one, labelled repeat with the next topic. Below, three boxes. AI is good at: plain explanations, examples, quiz questions and role-play. Watch for: out-of-date facts, the wrong country, confident errors. Check with: official sources, colleagues, your own notes.">
            <defs><marker id="gp12a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <text x="380" y="24" font-weight="700" fill="#c4b5fd" text-anchor="middle">A learning loop with an AI tutor</text>
              <g text-anchor="middle">
                <rect x="10" y="40" width="134" height="58" rx="8" fill="#1f1f44" stroke="#8b5cf6"/>
                <text x="77" y="64" font-weight="700">1 Explain</text>
                <text x="77" y="84" font-size="11" fill="#9b99b8">AI explains simply</text>
                <rect x="160" y="40" width="134" height="58" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
                <text x="227" y="64" font-weight="700">2 Check</text>
                <text x="227" y="84" font-size="11" fill="#9b99b8">official source</text>
                <rect x="310" y="40" width="134" height="58" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
                <text x="377" y="64" font-weight="700">3 Practise</text>
                <text x="377" y="84" font-size="11" fill="#9b99b8">AI quizzes you</text>
                <rect x="460" y="40" width="134" height="58" rx="8" fill="#1f1f44" stroke="#10b981"/>
                <text x="527" y="64" font-weight="700">4 Apply</text>
                <text x="527" y="84" font-size="11" fill="#9b99b8">use it at work</text>
                <rect x="610" y="40" width="140" height="58" rx="8" fill="#1f1f44" stroke="#ec4899"/>
                <text x="680" y="64" font-weight="700">5 Reflect</text>
                <text x="680" y="84" font-size="11" fill="#9b99b8">what was hard?</text>
              </g>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#gp12a)">
                <line x1="145" y1="69" x2="157" y2="69"/>
                <line x1="295" y1="69" x2="307" y2="69"/>
                <line x1="445" y1="69" x2="457" y2="69"/>
                <line x1="595" y1="69" x2="607" y2="69"/>
                <path d="M680,99 L680,130 L77,130 L77,102"/>
              </g>
              <text x="380" y="150" font-size="12" fill="#9b99b8" text-anchor="middle">repeat with the next topic</text>
              <g text-anchor="middle">
                <rect x="10" y="172" width="236" height="132" rx="10" fill="#27274e" stroke="#10b981"/>
                <text x="128" y="198" font-weight="700">AI is good at</text>
                <text x="128" y="226" font-size="12">plain explanations</text>
                <text x="128" y="246" font-size="12">examples and comparisons</text>
                <text x="128" y="266" font-size="12">quiz questions</text>
                <text x="128" y="286" font-size="12">role-play practice</text>
                <rect x="262" y="172" width="236" height="132" rx="10" fill="#27274e" stroke="#ec4899"/>
                <text x="380" y="198" font-weight="700">Watch for</text>
                <text x="380" y="226" font-size="12">out-of-date facts</text>
                <text x="380" y="246" font-size="12">the wrong country's rules</text>
                <text x="380" y="266" font-size="12">confident errors</text>
                <text x="380" y="286" font-size="12">answers that skip the hard part</text>
                <rect x="514" y="172" width="236" height="132" rx="10" fill="#27274e" stroke="#f59e0b"/>
                <text x="632" y="198" font-weight="700">Check with</text>
                <text x="632" y="226" font-size="12">official sources (GOV.UK)</text>
                <text x="632" y="246" font-size="12">experienced colleagues</text>
                <text x="632" y="266" font-size="12">the client's own documents</text>
                <text x="632" y="286" font-size="12">your own notes</text>
              </g>
            </g>
          </svg>
          <figcaption>Learn in a loop: AI explains, you check, AI quizzes you, you apply it and reflect. Then repeat with the next topic.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>AI as a tutor for new topics</h3>
          <p>Nina is a data analyst from New York. She knows data well, but UK social housing is new to her. The interim findings workshop in Leeds is on Thursday 15 October. She has about one week to learn the key words.</p>
          <p>A good tutor prompt says who you are, what you already know, and what you need the knowledge for. It also asks the AI to check your understanding, not just talk.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Explain UK social housing.</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>I am a data analyst from New York. I am new to social housing
        in England. Next week I join a workshop with a housing
        association about its repairs service.
        Teach me the 8 terms I am most likely to hear. For each term:
        one plain sentence, one example, and the closest US idea,
        with how it is different.
        Then ask me 3 questions to check I understood. Wait for my
        answers before you give the correct ones.
        Say clearly if a rule may have changed recently, and tell me
        which official source to check.</code></pre>
          <p>This prompt has no client data. It is general learning, so it is Public data under Crestline's policy. Nina still uses Crestline Assist, because she may later add client questions to the same chat.</p>
          <p>Many AI assistants now have a study or learning mode. In this mode, the AI asks guiding questions instead of giving the answer at once. Names and features change, so check the tool's current help pages.</p>
        </div>
        <div class="lc-card">
          <h3>Explaining jargon, then checking it</h3>
          <p><strong>Jargon</strong> means special words that a group uses, which outsiders do not understand. Here are some terms Nina needs, with what she checked:</p>
          <table class="lc-table">
            <thead><tr><th>Term</th><th>Plain meaning</th><th>Where Nina checked</th></tr></thead>
            <tbody>
              <tr><td>Housing association</td><td>An independent, not-for-profit organisation that owns and rents out homes at lower rents</td><td>GOV.UK and Harbourview's annual report</td></tr>
              <tr><td>Regulator of Social Housing</td><td>The body that regulates social landlords in England</td><td>The regulator's pages on GOV.UK</td></tr>
              <tr><td>TSMs (Tenant Satisfaction Measures)</td><td>22 measures that social landlords in England collect and publish each year, including satisfaction with repairs</td><td>The regulator's TSM guidance</td></tr>
              <tr><td>Responsive repairs</td><td>Repairs done when a tenant reports a problem, as opposed to planned work</td><td>Harbourview's repairs policy</td></tr>
              <tr><td>First-time fix</td><td>A repair finished at the first visit</td><td>Harbourview's repairs policy and data</td></tr>
              <tr><td>Awaab's Law</td><td>Time limits for social landlords in England to deal with damp, mould and other hazards</td><td>GOV.UK guidance on Awaab's Law</td></tr>
            </tbody>
          </table>
          <p>Watch for three common tutor errors:</p>
          <ul class="lc-list">
            <li><strong>Wrong country:</strong> rules differ between England, Scotland, Wales, Northern Ireland and the US. Always name the country in your prompt.</li>
            <li><strong>Out of date:</strong> an AI model learns from data up to a certain date. New rules, such as later phases of Awaab's Law, may be missing.</li>
            <li><strong>Too simple:</strong> a one-line explanation can drop an important exception. Ask, "What is the most common mistake people make about this?"</li>
          </ul>
          <p>This is general education about laws and rules, not legal advice.</p>
        </div>
        <div class="lc-card">
          <h3>Practice questions, role-play and a learning plan</h3>
          <p>You remember more when you test yourself than when you reread notes. AI can write <strong>practice questions</strong> and play a role for <strong>role-play</strong> (practising a real conversation).</p>
          <p>Olivia uses role-play to prepare for the workshop. In Crestline Assist, she gives the AI the repairs summary table and asks: "Play a sceptical member of a housing association's leadership team. Ask me 5 hard questions about these repairs results, one at a time. After each answer, tell me what was clear and what was weak". The AI asks why on-time repairs are only 76.2% when emergency repairs are at 94.0%. Olivia realises she needs a clear answer about routine jobs, which are the largest group.</p>
          <p>Nina asks AI for a short <strong>learning plan</strong> (a list of what to learn, when, and how to check it). She edits it to fit her diary:</p>
          <table class="lc-table">
            <thead><tr><th>Day (2026)</th><th>Topic, 20 minutes a day</th><th>How she checks</th></tr></thead>
            <tbody>
              <tr><td>Wed 7 Oct</td><td>Housing associations, the regulator and TSMs</td><td>GOV.UK pages</td></tr>
              <tr><td>Thu 8 Oct</td><td>Repairs words: priorities, target times, first-time fix</td><td>Reads the check-in notes for them</td></tr>
              <tr><td>Fri 9 Oct</td><td>Damp, mould and Awaab's Law</td><td>GOV.UK guidance</td></tr>
              <tr><td>Mon 12 Oct</td><td>AI quiz: 10 questions, answers after each try</td><td>Asks Olivia about any answer she doubts</td></tr>
              <tr><td>Tue 13 Oct</td><td>Teach-back: explain the repairs data to Olivia in 2 minutes</td><td>Olivia gives feedback</td></tr>
              <tr><td>Wed 14 Oct</td><td>Role-play: AI plays a tenant board member</td><td>Reviews the hard questions with Ben</td></tr>
            </tbody>
          </table>
          <p>AI does not know what your job needs most. Your manager and colleagues do. Ask them to check your plan.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: Nina's tutor session</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Nina's prompt">In Crestline Assist: "I am a US data analyst, new to social housing in England. Teach me 8 key terms for a repairs workshop. Then quiz me with 3 questions, one at a time."</li>
              <li data-kind="answer" data-label="AI reply">The AI explains 8 terms with US comparisons. One line says: "Housing associations are run by local councils."</li>
              <li data-kind="warn" data-label="Something feels wrong">Harbourview's annual report calls itself an independent housing association. The AI has mixed up two kinds of social landlord.</li>
              <li data-kind="check" data-label="Nina checks">Nina reads GOV.UK and Harbourview's published annual report. Housing associations are independent, not-for-profit organisations. Councils are a different kind of landlord. She corrects her notes.</li>
              <li data-kind="user" data-label="Follow-up">"You said housing associations are run by councils. My sources say they are independent. Explain the difference, and tell me what else in your list I should check."</li>
              <li data-kind="answer" data-label="AI reply">The AI corrects itself and explains the difference. It suggests she checks the Awaab's Law dates on GOV.UK, because rules may have changed.</li>
              <li data-kind="result" data-label="Quiz">Nina answers the 3 quiz questions. She gets 2 right. She mixes up "responsive repairs" and "planned work", so she adds both to her glossary.</li>
              <li data-kind="thought" data-label="Reflect">Nina notes: "AI was fast and clear, but one fact was wrong. I check every rule against an official source before I use it at the workshop."</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Use AI as a tutor for a topic you need at work. Change the details in brackets to your own situation.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a patient tutor for busy professionals. Use simple English.

        About me: [I am a data analyst. I know spreadsheets well.]
        What I need to learn: [the basics of social housing repairs in England].
        Why: [I join a client workshop in 7 days and must follow the discussion].
        Time: [20 minutes a day].

        Please do this in order:
        1. Teach me the 6 most important terms. For each: one plain sentence, one example, and one common mistake people make about it.
        2. For any law or rule, name the official source I should check, and say if it may have changed recently.
        3. Ask me 3 questions, one at a time. Wait for my answer each time. Then tell me what I got right and what I missed.
        4. Give me a 5-day learning plan as a table: Day, Topic, Activity, How I check it.

        Do not invent statistics or sources. If you are not sure about a fact, say "check this".</pre>
            <ul class="ai-try-checks">
              <li>The AI waits for your answers instead of giving them away.</li>
              <li>Each law or rule comes with an official source to check.</li>
              <li>You check at least one fact against that source yourself.</li>
              <li>The plan fits your real diary and includes a check step each day.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> AI is a fast, patient tutor, but not a trusted source. Let it explain, quiz and role-play with you. Check every fact and rule against an official source, and test yourself instead of only reading.
        </div>
      HTML
      starter_code: nil
    },
    13 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-genai">Generative AI</div>
          <h1 class="lc-title">Building Personal AI Workflows</h1>
        </div>
        <p class="lc-lead">If you type the same long brief every week, you waste time and get uneven results. A <strong>personal AI workflow</strong> is a repeatable way to do one task with AI: the same setup, the same template and the same checks each time. In this lesson you will learn to use three building blocks: custom instructions, projects and templates. You will also learn to measure honestly whether a workflow saves time. You will follow Olivia as she sets up her workflows for the Harbourview project.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 320" role="img" aria-label="Three building blocks stacked, feeding a workflow. Custom instructions: who you are and how you write, used in every chat. Project: client files and project rules, used for one client. Template: the prompt for one task, with placeholders. These feed into: AI draft, then your check, then the AI log. On the right, a measuring box: time before AI, time with AI including checking, errors caught, keep or stop.">
            <defs><marker id="gp13a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <text x="380" y="24" font-weight="700" fill="#c4b5fd" text-anchor="middle">Three building blocks for a personal workflow</text>
              <rect x="10" y="44" width="300" height="70" rx="8" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="26" y="70" font-weight="700">Custom instructions</text>
              <text x="26" y="92" font-size="12" fill="#9b99b8">who you are, how you write</text>
              <text x="296" y="70" font-size="11" fill="#c4b5fd" text-anchor="end">every chat</text>
              <rect x="10" y="126" width="300" height="70" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="26" y="152" font-weight="700">Project</text>
              <text x="26" y="174" font-size="12" fill="#9b99b8">client files and project rules</text>
              <text x="296" y="152" font-size="11" fill="#93c5fd" text-anchor="end">one client</text>
              <rect x="10" y="208" width="300" height="70" rx="8" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="26" y="234" font-weight="700">Template</text>
              <text x="26" y="256" font-size="12" fill="#9b99b8">one task, with [placeholders]</text>
              <text x="296" y="234" font-size="11" fill="#67e8f9" text-anchor="end">one task</text>
              <g text-anchor="middle">
                <rect x="360" y="44" width="150" height="56" rx="8" fill="#27274e" stroke="#9b99b8"/>
                <text x="435" y="77" font-weight="700">AI draft</text>
                <rect x="360" y="134" width="150" height="56" rx="8" fill="#27274e" stroke="#f59e0b"/>
                <text x="435" y="167" font-weight="700">Your check</text>
                <rect x="360" y="224" width="150" height="56" rx="8" fill="#27274e" stroke="#10b981"/>
                <text x="435" y="257" font-weight="700">AI log</text>
              </g>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#gp13a)">
                <line x1="311" y1="79" x2="357" y2="72"/>
                <line x1="311" y1="161" x2="357" y2="80"/>
                <line x1="311" y1="243" x2="357" y2="88"/>
                <line x1="435" y1="101" x2="435" y2="131"/>
                <line x1="435" y1="191" x2="435" y2="221"/>
              </g>
              <rect x="540" y="44" width="210" height="236" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="645" y="70" font-weight="700" text-anchor="middle">Measure honestly</text>
              <g font-size="12">
                <text x="556" y="102">Time before AI</text>
                <text x="556" y="130">Time with AI,</text>
                <text x="556" y="148">including checking</text>
                <text x="556" y="176">Errors caught</text>
                <text x="556" y="204">Tasks where AI</text>
                <text x="556" y="222">did not help</text>
                <text x="556" y="254" font-weight="700" fill="#f9a8d4">Keep, change or stop?</text>
              </g>
              <text x="380" y="308" font-size="12" fill="#9b99b8" text-anchor="middle">Feature names differ between tools. Check your tool's current help pages.</text>
            </g>
          </svg>
          <figcaption>Custom instructions apply to every chat, a project holds one client's files and rules, and a template runs one task. Every draft is checked and logged, and you measure whether the workflow really helps.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Custom instructions: your standing brief</h3>
          <p><strong>Custom instructions</strong> are standing rules that the AI reads before every chat. Different tools use different names, such as "personalisation" or "preferences". They save you from repeating the same lines in every prompt.</p>
          <p>Good custom instructions describe you and your standards. They never hold client data, because they apply to every chat. Olivia's version (Internal, no client data):</p>
          <pre><code>I am a management consultant in London. I write for busy
        senior clients in the UK public and housing sectors.
        - Use British spelling and plain English. Short sentences.
        - Use tables when comparing options or numbers.
        - Never invent numbers, sources, quotes or job titles.
          If you are not sure, write [CHECK].
        - Label any guess or opinion as "Assumption".
        - When you summarise a document, give page numbers.
        - Ask me up to 3 questions if my brief is unclear.</code></pre>
          <p>Some tools also have a <strong>memory</strong> feature. It saves facts from your chats to use later. Check what it has saved, and follow your firm's rules about memory for client work. Crestline's IT team controls these settings in Crestline Assist.</p>
        </div>
        <div class="lc-card">
          <h3>Projects and custom assistants</h3>
          <p>Many assistants let you create a <strong>project</strong>: a workspace with its own instructions, files and chats. Some tools also let you build a simple <strong>custom assistant</strong> for one repeated job. Google calls these Gems. Names and features change often. OpenAI has custom GPTs in ChatGPT, but tools rename, merge or retire features like these. Check the tool's current help pages.</p>
          <p>Olivia sets up a "Harbourview repairs review" project in Crestline Assist. The engagement letter allows Confidential project data in approved tools, but no personal data about tenants or staff.</p>
          <table class="lc-table">
            <thead><tr><th>Put in the project</th><th>Keep out of the project</th></tr></thead>
            <tbody>
              <tr><td>Project rules: data classes, the AI note, "no tenant or staff personal data"</td><td>Tenant names, addresses or phone numbers</td></tr>
              <tr><td>The client brief and the deliverables list</td><td>Complaint letters with names</td></tr>
              <tr><td>The repairs data table, with no personal details</td><td>Staff HR data or notes about named people</td></tr>
              <tr><td>A glossary of housing terms</td><td>Anything another client owns</td></tr>
            </tbody>
          </table>
          <p>Remember the retention rule. Crestline Assist deletes chats after 90 days. So Olivia saves final, checked outputs in the project folder, not only in the chat.</p>
        </div>
        <div class="lc-card">
          <h3>Templates and measuring time saved honestly</h3>
          <p>A <strong>template</strong> is a saved prompt for one task, with [placeholders] for the parts that change. Olivia writes a weekly update to Grace after every Thursday check-in call. Her template:</p>
          <pre><code>Using my notes from today's check-in call below, draft a
        weekly update email to [client name].
        Sections: Done this week, Next week, Decisions needed,
        Risks. Under 200 words. Use only facts in my notes.
        Mark anything unclear as [CHECK].
        Notes: [paste notes with no personal data]</code></pre>
          <p>Does the workflow save time? Measure it. Olivia logs each task with the time before AI and the time with AI, <em>including checking</em>. Here is her made-up week 2 log in a spreadsheet. It is an example only, not research.</p>
          <table class="lc-table">
            <thead><tr><th></th><th>A: Task</th><th>B: Before AI (min)</th><th>C: With AI, incl. checking (min)</th><th>D: Saved (min)</th></tr></thead>
            <tbody>
              <tr><td>2</td><td>Kick-off follow-up email</td><td>25</td><td>10</td><td>15</td></tr>
              <tr><td>3</td><td>Summarise 46-page repairs policy</td><td>90</td><td>35</td><td>55</td></tr>
              <tr><td>4</td><td>First outline of interim pack</td><td>120</td><td>60</td><td>60</td></tr>
              <tr><td>5</td><td>Tidy meeting notes into actions</td><td>40</td><td>15</td><td>25</td></tr>
              <tr><td>6</td><td>Check repairs data table</td><td>60</td><td>75</td><td>-15</td></tr>
              <tr><td>7</td><td><strong>Total</strong></td><td><strong>335</strong></td><td><strong>195</strong></td><td><strong>140</strong></td></tr>
            </tbody>
          </table>
          <p>The formulas, which work in Excel and Google Sheets:</p>
          <pre><code>D2:  =B2-C2                 gives 15 (copy down to D6)
        B7:  =SUM(B2:B6)            gives 335
        C7:  =SUM(C2:C6)            gives 195
        D7:  =B7-C7                 gives 140
        D8:  =D7/B7                 gives 41.8% (format as %)
        D9:  =COUNTIF(D2:D6,"&lt;0")   gives 1 (tasks that took longer)</code></pre>
          <p>Honest measuring means three things. Count the checking time. Keep the tasks where AI made things slower, like the data check. And note the errors you caught, because a fast draft with a wrong number is not a saving. Do not turn one person's log into a claim such as "AI saves 40% of our time". It is a small, made-up example, not a study.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: where does it belong?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Olivia is setting up her workflows. Sort each item into the right place.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="instructions" data-label="Custom instructions"></div>
              <div data-sorter-target="bucket" data-bucket="project" data-label="Harbourview project"></div>
              <div data-sorter-target="bucket" data-bucket="template" data-label="Task template"></div>
              <div data-sorter-target="bucket" data-bucket="nowhere" data-label="Not in any AI tool"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="instructions" data-why="It is a personal writing standard for every chat, with no client data.">"Use British spelling and plain English. Short sentences."</li>
              <li data-bucket="instructions" data-why="This rule should apply to all your work, not just one client.">"Never invent numbers or sources. Write [CHECK] if unsure."</li>
              <li data-bucket="project" data-why="It is Confidential client data with no personal details. The engagement letter allows it in approved tools.">The repairs data table for July 2025 to June 2026</li>
              <li data-bucket="project" data-why="These rules belong to this client and this contract, so they sit in the project.">A summary of the AI rules in Harbourview's engagement letter</li>
              <li data-bucket="template" data-why="It is a reusable prompt for one task, with placeholders for what changes each week.">The weekly update prompt with [client name] and [notes]</li>
              <li data-bucket="nowhere" data-why="Names and addresses are Restricted personal data. They never go into any AI tool.">A spreadsheet of tenant names, addresses and repair dates</li>
              <li data-bucket="template" data-why="It is a tested task prompt that the team reuses across projects.">The "Meeting actions" prompt from the team library</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Design one personal AI workflow for a task you do every week. Do not paste real client or personal data.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a workflow coach who helps professionals use AI safely and well. Use simple English.

        My role: [consultant at a management consultancy].
        A task I do every week: [write a weekly update email to a client after a check-in call].
        Time it takes now: [40 minutes].
        Data it uses: [my call notes; client information but no personal data].

        Please design a personal AI workflow for this task:
        1. Custom instructions: 5 to 7 standing rules about how I write (no client data).
        2. Project setup: what files and rules to add, and what must stay out.
        3. A reusable prompt template with [placeholders].
        4. A checking list of 4 to 6 items for every output.
        5. A simple log table to measure it for 4 weeks: Date, Minutes before AI, Minutes with AI including checking, Errors caught, Notes.
        6. A rule for when I should stop using the workflow.

        Do not promise or estimate time savings. Remind me to follow my organisation's AI policy and approved tools.</pre>
            <ul class="ai-try-checks">
              <li>The custom instructions contain no client or personal data.</li>
              <li>The template uses [placeholders] for everything that changes.</li>
              <li>The log counts checking time and errors, not just speed.</li>
              <li>The AI does not invent a time-saving figure.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Good AI habits are built, not typed fresh each time. Put your standards in custom instructions, client context in a project and each task in a template. Then measure honestly, including checking time and failures, and keep only the workflows that really help.
        </div>
      HTML
      starter_code: nil
    },
    14 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-genai">Generative AI</div>
          <h1 class="lc-title">Ethics, Bias and Professional Responsibility</h1>
        </div>
        <p class="lc-lead">Using AI well is not only about speed and quality. It is also about doing the right thing for clients, colleagues and the public. In this lesson you will learn how to protect confidentiality and spot bias in AI output. You will also learn to follow the rules of regulated professions and be open about your AI use. Finally, you will learn when not to use AI at all. You will follow Olivia and Ben as they face a hard request from Harbourview Housing.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 330" role="img" aria-label="A decision tree: should I use AI for this? Question one: is there personal or Restricted data? If yes, stop: anonymise it or do it by hand. Question two: is it a decision about people, such as hiring, performance or pay? If yes, stop and ask HR and Risk first. Question three: can I check the output properly? If no, do not use AI for this. Question four: do the client and the policy allow it? If no, do not use AI. If yes, use an approved tool, check for bias, disclose and log it.">
            <defs><marker id="gp14a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <text x="380" y="24" font-weight="700" fill="#c4b5fd" text-anchor="middle">Should I use AI for this?</text>
              <g text-anchor="middle">
                <rect x="20" y="40" width="330" height="44" rx="8" fill="#1f1f44" stroke="#8b5cf6"/>
                <text x="185" y="67">1 Personal or Restricted data?</text>
                <rect x="20" y="108" width="330" height="44" rx="8" fill="#1f1f44" stroke="#8b5cf6"/>
                <text x="185" y="135">2 A decision about people?</text>
                <rect x="20" y="176" width="330" height="44" rx="8" fill="#1f1f44" stroke="#8b5cf6"/>
                <text x="185" y="203">3 Can I check the output properly?</text>
                <rect x="20" y="244" width="330" height="44" rx="8" fill="#1f1f44" stroke="#8b5cf6"/>
                <text x="185" y="271">4 Do the client and policy allow it?</text>
                <rect x="420" y="40" width="320" height="44" rx="8" fill="#27274e" stroke="#ec4899"/>
                <text x="580" y="67">Stop: anonymise it or do it by hand</text>
                <rect x="420" y="108" width="320" height="44" rx="8" fill="#27274e" stroke="#ec4899"/>
                <text x="580" y="135">Stop: ask HR and Risk first</text>
                <rect x="420" y="176" width="320" height="44" rx="8" fill="#27274e" stroke="#ec4899"/>
                <text x="580" y="203">Do not use AI for this task</text>
                <rect x="420" y="244" width="320" height="44" rx="8" fill="#27274e" stroke="#ec4899"/>
                <text x="580" y="271">Do not use AI for this task</text>
              </g>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#gp14a)">
                <line x1="351" y1="62" x2="417" y2="62"/>
                <line x1="351" y1="130" x2="417" y2="130"/>
                <line x1="351" y1="198" x2="417" y2="198"/>
                <line x1="351" y1="266" x2="417" y2="266"/>
                <line x1="185" y1="85" x2="185" y2="105"/>
                <line x1="185" y1="153" x2="185" y2="173"/>
                <line x1="185" y1="221" x2="185" y2="241"/>
                <line x1="185" y1="289" x2="185" y2="300"/>
              </g>
              <g font-size="11" fill="#9b99b8">
                <text x="362" y="56">yes</text>
                <text x="362" y="124">yes</text>
                <text x="366" y="192">no</text>
                <text x="366" y="260">no</text>
                <text x="194" y="99">no</text>
                <text x="194" y="167">no</text>
                <text x="194" y="235">yes</text>
              </g>
              <rect x="20" y="302" width="720" height="24" rx="6" fill="#1f1f44" stroke="#10b981"/>
              <text x="380" y="319" font-size="12" text-anchor="middle">yes: use an approved tool, check for bias, disclose and log it</text>
            </g>
          </svg>
          <figcaption>Ask four questions before you use AI. Personal data, decisions about people, output you cannot check, or a client who says no are all reasons to stop.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Confidentiality and transparency</h3>
          <p><strong>Confidentiality</strong> means keeping information private when it was shared with you in trust. Clients share their data because they trust your firm. A leak can harm real people and end the relationship.</p>
          <p>Made-up example: late one evening, Olivia pastes a tenant's complaint letter into Crestline Assist to summarise it. Then she sees the tenant's name and address in the text. That is Restricted data. It must never go into any AI tool. She deletes the chat. The next morning she reports it to Hannah Price in #ai-help, well within the 24-hour rule. Hannah records it and checks whether any further steps are needed. Olivia is not punished for reporting quickly. Early reports limit harm.</p>
          <p><strong>Transparency</strong> means being open about how work was made. At Crestline, it means three things. Add the AI note to deliverables. Log AI use in the project's AI log. Answer client questions about AI truthfully.</p>
        </div>
        <div class="lc-card">
          <h3>Bias: when AI is unfair</h3>
          <p><strong>Bias</strong> in AI means output that treats some groups unfairly or less accurately. AI learns from large amounts of human writing, so it can repeat stereotypes and gaps. Bias often sounds reasonable, so you must look for it on purpose.</p>
          <table class="lc-table">
            <thead><tr><th>Made-up AI output</th><th>The bias</th><th>What Olivia does</th></tr></thead>
            <tbody>
              <tr><td>"Move all repairs bookings to the online portal to save money."</td><td>It ignores tenants without internet access, many older tenants, and some disabled tenants.</td><td>Keeps phone and in-person booking in the recommendation, and asks Harbourview for data on how tenants book now.</td></tr>
              <tr><td>A focus group summary that repeats the views of the three loudest speakers</td><td>Quiet voices and people who did not attend are missing.</td><td>Checks the full notes, and says who the focus groups did and did not reach.</td></tr>
              <tr><td>"Tenants on the Beckside estate are difficult and often refuse access."</td><td>It blames a whole group, using loaded words.</td><td>Rewrites with facts: the number of "no access" visits, and the possible reasons, such as appointment times.</td></tr>
            </tbody>
          </table>
          <p>In the UK, the Equality Act 2010 protects people from discrimination because of characteristics such as age, disability and race. A recommendation that shuts out some groups can raise legal as well as ethical problems. This is general education, not legal advice; check with a qualified adviser.</p>
          <p>A simple bias check prompt:</p>
          <pre><code>Review this recommendation for fairness. Which groups of
        tenants could it disadvantage, for example by age, disability,
        language, income or internet access? What assumptions does
        it make? What data would show whether those groups are
        affected? Do not rewrite it yet. List the issues only.</code></pre>
          <p>The AI helps you find questions. You and the client decide the answers, ideally with input from the people affected.</p>
        </div>
        <div class="lc-card">
          <h3>Regulated professions and when not to use AI</h3>
          <p>A <strong>regulated profession</strong> is a job with a legal or official body that sets standards, such as law, accountancy, medicine or financial advice. Many of these bodies now publish guidance on AI. If you work in one, follow that guidance as well as your employer's policy. You stay personally responsible for your professional work.</p>
          <p>Decisions about people need extra care. In the EU, the EU AI Act treats many AI systems used in hiring and managing workers as high-risk, with strict duties. In the UK, data protection law has safeguards for significant decisions about people. They apply when a decision is made by automated means with no meaningful human involvement. These include the right to ask for a person to review the decision. This is general education, not legal advice.</p>
          <p>Do not use AI when:</p>
          <ul class="lc-list">
            <li>the task needs Restricted data that you cannot remove;</li>
            <li>it decides something about a person's job, pay or performance, without HR and Risk approval;</li>
            <li>you cannot check the output, for example in a field you do not know;</li>
            <li>the client or your policy says no;</li>
            <li>the message needs real human care, such as sympathy or serious bad news;</li>
            <li>someone needs regulated advice, such as legal advice to a tenant.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Activity: a hard request from the client</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="The request">On the Thursday check-in call, Daniel Osei asks: "Can you use AI to rank our 42 in-house repair operatives from the job data? Then we know who to performance-manage."</li>
              <li data-kind="thought" data-label="Olivia thinks">This is a decision about people's jobs. The data would include staff names, which are Restricted. Crestline's policy says AI must not be used for decisions about people without HR and Risk approval. It is also outside the agreed scope.</li>
              <li data-kind="check" data-label="Ask first">Olivia does not promise anything on the call. She says she will come back. Then she asks Hannah Price in #ai-help and tells Ben.</li>
              <li data-kind="result" data-label="Hannah's reply">Hannah says no to ranking named staff with AI. It is out of scope, and job data alone does not show why jobs fail. She suggests team-level analysis with no names instead.</li>
              <li data-kind="tool" data-label="Safer analysis">In a spreadsheet, Nina groups first-time fix rates by trade and by area, with no names. Olivia uses Crestline Assist to draft the commentary on these anonymised results.</li>
              <li data-kind="warn" data-label="Bias check">One area looks much worse. Olivia checks before anyone blames the team. That area has more older homes with damp problems, which need more visits.</li>
              <li data-kind="answer" data-label="Ben replies">Ben explains to Daniel why Crestline will not rank individuals. He offers the team-level findings, and suggests Harbourview's HR team leads any performance process.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to review a work recommendation for fairness and responsibility. Use the sample, or replace it with your own recommendation without confidential details.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an ethics and fairness reviewer for professional advice. Use simple English.

        Context: [a consultancy advising a UK housing association on its repairs service].
        Draft recommendation: "[Move all repairs bookings to a new online portal and close the phone line, to cut costs and speed up booking.]"

        Please:
        1. List the groups of people who could be disadvantaged (for example by age, disability, language, income or internet access), and explain how.
        2. List the assumptions in the recommendation that need evidence.
        3. Suggest what data or input from affected people would test those assumptions.
        4. Say whether any part of this needs a human decision-maker, legal advice or a check against equality duties. Do not give legal advice yourself.
        5. Rewrite the recommendation so it is fairer, in under 80 words.

        Do not invent statistics. Mark any guess as "Assumption".</pre>
            <ul class="ai-try-checks">
              <li>It names specific groups and real ways they could be affected.</li>
              <li>It asks for evidence instead of inventing numbers.</li>
              <li>It does not give legal advice, and points to a qualified adviser.</li>
              <li>You decide whether the rewrite is fair, ideally with the people affected.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Your professional duties do not change when you use AI. Protect confidential and personal data, look for bias on purpose, follow your profession's rules and be open about AI use. When a task affects people's jobs, rights or safety, a human decides, and sometimes the right choice is not to use AI.
        </div>
      HTML
      starter_code: nil
    },
    15 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-genai">Generative AI</div>
          <h1 class="lc-title">Capstone: Your AI Work Plan at Crestline Consulting</h1>
        </div>
        <p class="lc-lead">In this capstone you bring the whole course together into one practical plan. You will audit your tasks, design three AI workflows, set a checking routine and write a 30-day plan with honest measures. You will follow Olivia Grant as she builds her plan for the rest of the Harbourview Housing project. Then you will build your own plan for your real job.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="Top: four parts of the AI work plan. One, audit your tasks: time, data class, AI fit. Two, design three workflows: template, tool, checks. Three, a checking routine by risk level: low, medium, high. Four, a 30-day plan: try, measure, review. Bottom: a timeline for Olivia's 30 days. Wednesday 7 October: start, set up and baseline. Thursday 15 October: interim workshop. Friday 30 October: toolkit due. Thursday 5 November: day 30 review with Ben. Thursday 12 November: steering group, after the plan.">
            <defs><marker id="gp15a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <text x="380" y="24" font-weight="700" fill="#c4b5fd" text-anchor="middle">Olivia's AI work plan: four parts</text>
              <g text-anchor="middle">
                <rect x="10" y="40" width="168" height="76" rx="8" fill="#1f1f44" stroke="#8b5cf6"/>
                <text x="94" y="66" font-weight="700">1 Audit tasks</text>
                <text x="94" y="86" font-size="11" fill="#9b99b8">time, data class,</text>
                <text x="94" y="102" font-size="11" fill="#9b99b8">AI fit</text>
                <rect x="200" y="40" width="168" height="76" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
                <text x="284" y="66" font-weight="700">2 Three workflows</text>
                <text x="284" y="86" font-size="11" fill="#9b99b8">template, tool,</text>
                <text x="284" y="102" font-size="11" fill="#9b99b8">checks, owner</text>
                <rect x="390" y="40" width="168" height="76" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
                <text x="474" y="66" font-weight="700">3 Checking routine</text>
                <text x="474" y="86" font-size="11" fill="#9b99b8">by risk level:</text>
                <text x="474" y="102" font-size="11" fill="#9b99b8">low, medium, high</text>
                <rect x="580" y="40" width="170" height="76" rx="8" fill="#1f1f44" stroke="#10b981"/>
                <text x="665" y="66" font-weight="700">4 30-day plan</text>
                <text x="665" y="86" font-size="11" fill="#9b99b8">try, measure,</text>
                <text x="665" y="102" font-size="11" fill="#9b99b8">review</text>
              </g>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#gp15a)">
                <line x1="179" y1="78" x2="197" y2="78"/>
                <line x1="369" y1="78" x2="387" y2="78"/>
                <line x1="559" y1="78" x2="577" y2="78"/>
              </g>
              <text x="380" y="156" font-weight="700" fill="#c4b5fd" text-anchor="middle">Olivia's 30 days (2026)</text>
              <line x1="60" y1="196" x2="700" y2="196" stroke="#9b99b8" stroke-width="2"/>
              <g text-anchor="middle">
                <circle cx="80" cy="196" r="7" fill="#8b5cf6"/>
                <text x="80" y="182" font-size="12" font-weight="700">Wed 7 Oct</text>
                <text x="80" y="220" font-size="11" fill="#9b99b8">day 1: set up,</text>
                <text x="80" y="236" font-size="11" fill="#9b99b8">record baseline</text>
                <circle cx="230" cy="196" r="7" fill="#3b82f6"/>
                <text x="230" y="182" font-size="12" font-weight="700">Thu 15 Oct</text>
                <text x="230" y="220" font-size="11" fill="#9b99b8">interim</text>
                <text x="230" y="236" font-size="11" fill="#9b99b8">workshop</text>
                <circle cx="400" cy="196" r="7" fill="#f59e0b"/>
                <text x="400" y="182" font-size="12" font-weight="700">Fri 30 Oct</text>
                <text x="400" y="220" font-size="11" fill="#9b99b8">tenant toolkit</text>
                <text x="400" y="236" font-size="11" fill="#9b99b8">due</text>
                <circle cx="540" cy="196" r="7" fill="#10b981"/>
                <text x="540" y="182" font-size="12" font-weight="700">Thu 5 Nov</text>
                <text x="540" y="220" font-size="11" fill="#9b99b8">day 30: review</text>
                <text x="540" y="236" font-size="11" fill="#9b99b8">with Ben</text>
                <circle cx="670" cy="196" r="7" fill="#27274e" stroke="#ec4899" stroke-width="2"/>
                <text x="670" y="182" font-size="12" font-weight="700">Thu 12 Nov</text>
                <text x="670" y="220" font-size="11" fill="#9b99b8">steering group</text>
                <text x="670" y="236" font-size="11" fill="#9b99b8">(after the plan)</text>
              </g>
              <text x="380" y="280" font-size="12" fill="#9b99b8" text-anchor="middle">Measure all 30 days: minutes with AI including checking, errors caught, and keep, change or stop.</text>
            </g>
          </svg>
          <figcaption>A good AI work plan has four parts: a task audit, three workflows, a checking routine and a 30-day plan with honest measures. Olivia's plan runs from Wednesday 7 October to Thursday 5 November 2026.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Part 1: Audit your tasks</h3>
          <p>A <strong>task audit</strong> is a list of the work you do each week, with the time it takes and how well AI fits. It stops you from using AI only on the tasks that come to mind first. For each task, Olivia notes the data class from Crestline's policy and the main risk.</p>
          <table class="lc-table">
            <thead><tr><th>Task (made up)</th><th>Hours a week</th><th>Data class</th><th>AI fit</th><th>Main risk</th></tr></thead>
            <tbody>
              <tr><td>Client emails and messages</td><td>4.0</td><td>Confidential</td><td>High</td><td>Wrong date or promise</td></tr>
              <tr><td>Weekly update after the Thursday call</td><td>2.0</td><td>Confidential</td><td>High</td><td>Missing a decision or risk</td></tr>
              <tr><td>Data analysis and charts</td><td>8.0</td><td>Confidential</td><td>Medium</td><td>AI maths errors, misread columns</td></tr>
              <tr><td>Report sections</td><td>6.0</td><td>Confidential</td><td>Medium</td><td>Invented sources or causes</td></tr>
              <tr><td>Slides for client packs</td><td>5.0</td><td>Confidential</td><td>Medium</td><td>Numbers shown unfairly</td></tr>
              <tr><td>Tenant toolkit drafts</td><td>3.0</td><td>Confidential (no personal data)</td><td>High</td><td>Promises not in the policy</td></tr>
              <tr><td>Client calls and workshops</td><td>5.0</td><td>Confidential</td><td>Low</td><td>Needs live judgement and trust</td></tr>
              <tr><td>Reading complaint letters with names</td><td>2.0</td><td>Restricted</td><td>None</td><td>Personal data: by hand only</td></tr>
              <tr><td><strong>Total</strong></td><td><strong>35.0</strong></td><td></td><td></td><td></td></tr>
            </tbody>
          </table>
          <p>The three "High" fit tasks take 9 hours a week. Olivia picks workflows from these first. They repeat often, the drafts are easy to check, and a mistake is caught before the client sees it. She keeps the data analysis maths in a spreadsheet, not in AI, after the misread column in week 2.</p>
        </div>
        <div class="lc-card">
          <h3>Part 2: Design three workflows</h3>
          <p>Each workflow answers the same questions: what starts it, what goes in, which tool, which template, who checks and what gets logged.</p>
          <table class="lc-table">
            <thead><tr><th></th><th>A: Weekly client update</th><th>B: Tenant toolkit drafts</th><th>C: Client emails</th></tr></thead>
            <tbody>
              <tr><td><strong>Trigger</strong></td><td>The Thursday 10:00 check-in call ends</td><td>A new template is needed for the toolkit</td><td>An email needs more than a quick reply</td></tr>
              <tr><td><strong>Input</strong></td><td>Olivia's call notes, no personal data</td><td>The relevant policy pages and merge fields only</td><td>Her key points and the thread</td></tr>
              <tr><td><strong>Tool</strong></td><td>Crestline Assist, Harbourview project</td><td>Crestline Assist, Harbourview project</td><td>The approved AI in the office suite</td></tr>
              <tr><td><strong>Template</strong></td><td>Weekly update prompt</td><td>Plain-English rewrite (team library)</td><td>Her email brief: purpose, points, tone</td></tr>
              <tr><td><strong>Checks</strong></td><td>Every decision, date and risk against notes</td><td>Each line against the policy; test with real readers</td><td>Names, dates, promises, tone</td></tr>
              <tr><td><strong>Owner</strong></td><td>Olivia; Ben reads before it goes</td><td>Olivia; Ben signs off the toolkit</td><td>Olivia</td></tr>
              <tr><td><strong>Log</strong></td><td>AI log entry each week</td><td>AI log entry, AI note in the toolkit</td><td>Time log only (not a deliverable)</td></tr>
            </tbody>
          </table>
          <p>Notice what is not in the plan. AI does not see complaint letters with names. AI does not do the maths for client charts. AI does not join client calls without everyone's agreement.</p>
        </div>
        <div class="lc-card">
          <h3>Part 3: A checking routine by risk level</h3>
          <p>Not every output needs the same checks. Olivia sets the routine by <strong>risk level</strong>: how much harm a mistake could do.</p>
          <table class="lc-table">
            <thead><tr><th>Risk level</th><th>Examples</th><th>Checks</th></tr></thead>
            <tbody>
              <tr><td><strong>Low</strong></td><td>Her own notes, internal to-do lists</td><td>Quick read for facts and sense</td></tr>
              <tr><td><strong>Medium</strong></td><td>Client emails, the weekly update</td><td>All five checks: facts, numbers, sources, fit, own it</td></tr>
              <tr><td><strong>High</strong></td><td>Deliverables, numbers, anything legal, anything tenants will read</td><td>All five checks, every source opened, numbers redone in a spreadsheet, and a second checker (Ben)</td></tr>
            </tbody>
          </table>
          <p>She writes her routine as a short checklist and pins it next to her template folder:</p>
          <pre><code>Before anything AI-assisted leaves me:
        [ ] Facts: names, titles, dates match my records
        [ ] Numbers: redone from the source data
        [ ] Sources: opened and read, none invented
        [ ] Fit: matches the brief, fair to every group
        [ ] Own it: AI note added if needed, AI log updated
        High risk? [ ] Ben has checked it too</code></pre>
        </div>
        <div class="lc-card">
          <h3>Part 4: A 30-day plan with honest measures</h3>
          <p>Olivia's plan runs for 30 days, from Wednesday 7 October to Thursday 5 November 2026.</p>
          <table class="lc-table">
            <thead><tr><th>Dates (2026)</th><th>Focus</th><th>Measure</th></tr></thead>
            <tbody>
              <tr><td>Wed 7 Oct to Fri 9 Oct</td><td>Set up custom instructions and the Harbourview project. Time each task once without AI.</td><td>Baseline minutes for each task</td></tr>
              <tr><td>Mon 12 Oct to Fri 16 Oct</td><td>Start workflow A after the Thursday call. Start workflow C.</td><td>Minutes with AI, including checking; errors caught</td></tr>
              <tr><td>Mon 19 Oct to Fri 23 Oct</td><td>Start workflow B for toolkit templates. Ben reviews the first drafts.</td><td>Errors caught; Ben's feedback</td></tr>
              <tr><td>Mon 26 Oct to Fri 30 Oct</td><td>Finish the toolkit for Friday 30 October. Fix any weak templates.</td><td>Toolkit delivered on time; changes to templates</td></tr>
              <tr><td>Mon 2 Nov to Thu 5 Nov</td><td>Review the log with Ben on Thursday 5 November.</td><td>Keep, change or stop each workflow</td></tr>
            </tbody>
          </table>
          <p>Honest measures include more than speed. Olivia counts checking time, errors caught, tasks where AI did not help, and client feedback. She will not claim a saving she cannot show from her own log. After the review, she shares the workflows that worked in the team prompt library.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: build the plan in order</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put Olivia's steps for building and running her AI work plan in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">List every weekly task with its hours, data class, AI fit and main risk.</li>
              <li data-order="2">Pick three high-fit tasks that repeat often and are easy to check.</li>
              <li data-order="3">Design each workflow: trigger, input, approved tool, template, checks, owner and log.</li>
              <li data-order="4">Write a checking routine with extra checks for high-risk outputs.</li>
              <li data-order="5">Record baseline times, then run the workflows for 30 days and log the results.</li>
              <li data-order="6">Review the log with Ben on day 30: keep, change or stop each workflow.</li>
              <li data-order="7">Share the workflows that worked in the team prompt library, with no client data.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Build your own AI work plan. Replace the tasks in brackets with your real weekly tasks. Do not include confidential or personal details.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a coach who helps professionals plan safe, useful AI use at work. Use simple English.

        My role: [consultant at a management consultancy].
        My approved AI tools: [our firm's AI assistant and the AI in our office apps].
        My weekly tasks, with hours: [client emails 4h; weekly client update 2h; data analysis 8h; report writing 6h; slides 5h; client meetings 5h].

        Please build my AI work plan:
        1. Task audit table: Task, Hours, Likely data class (Public, Internal, Confidential or Restricted), AI fit (High, Medium, Low or None), Main risk.
        2. Pick 3 tasks for AI workflows and explain why. For each: Trigger, Input, Tool, Template idea, Checks, Owner.
        3. A checking routine for Low, Medium and High risk outputs.
        4. A 30-day plan in 4 or 5 stages, with what to measure in each.
        5. Three warning signs that a workflow should stop.

        Do not estimate or promise time savings. Mark any guess about my data as "Assumption: check your policy".</pre>
            <ul class="ai-try-checks">
              <li>Meetings and personal data are not given high AI fit.</li>
              <li>Each workflow has a named checker and a log.</li>
              <li>The 30-day plan measures checking time and errors, not just speed.</li>
              <li>You check the data classes against your own organisation's policy.</li>
              <li>There are no invented time-saving figures.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A good AI work plan is small, safe and measured. Audit your tasks, start with a few high-fit workflows, check by risk level and review the results honestly after 30 days. Keep what works, stop what does not, and stay accountable for everything that leaves your desk.
        </div>
      HTML
      starter_code: nil
    }
  }.freeze
end

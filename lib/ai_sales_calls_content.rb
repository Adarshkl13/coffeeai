module AiSalesCallsContent
  # Units (sidebar dividers): 1–4 Sales Call Basics · 5–9 During and After the Call · 10–14 Coaching and Improving · 15 Capstone
  # Widgets: sequence, sorter, stepper. No code editor: each Try It is an ai-try prompt box.
  LESSONS = {
    1 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-sales">Sales & CRM</div>
          <h1 class="lc-title">Types of Sales Calls</h1>
        </div>
        <p class="lc-lead">A sales call is a planned conversation with a possible buyer. Not all sales calls are the same. A first call to learn about the buyer needs different skills from a call about price. In this lesson you will learn the four main types of sales calls: discovery, demo, negotiation and closing. You will learn the goal of each one and what makes a call "good". When you know which call you are on, you can prepare better, and AI can help you better.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 260" role="img" aria-label="Four sales calls in order: discovery, demo, negotiation and closing. Each box shows the goal of the call and an example from LedgerLite's deal with Tulsi Textiles. A line at the bottom lists what every good call has.">
            <defs><marker id="sc1a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12" fill="#e2e0f0" text-anchor="middle">
              <text x="20" y="22" text-anchor="start" font-size="12" fill="#c4b5fd">Kavya (LedgerLite) and Tulsi Textiles, Gujarat: one deal, four calls</text>
              <rect x="15" y="40" width="160" height="150" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="95" y="66" font-size="14" font-weight="700" fill="#93c5fd">1. Discovery</text>
              <text x="95" y="92" fill="#9b99b8" font-size="11">Goal</text>
              <text x="95" y="110">Learn their problem</text>
              <text x="95" y="127">and if you can help</text>
              <rect x="27" y="146" width="136" height="30" rx="6" fill="#27274e"/>
              <text x="95" y="166" font-size="11">Close takes 10 days</text>
              <rect x="205" y="40" width="160" height="150" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="285" y="66" font-size="14" font-weight="700" fill="#c4b5fd">2. Demo</text>
              <text x="285" y="92" fill="#9b99b8" font-size="11">Goal</text>
              <text x="285" y="110">Show how you solve</text>
              <text x="285" y="127">their problem</text>
              <rect x="217" y="146" width="136" height="30" rx="6" fill="#27274e"/>
              <text x="285" y="166" font-size="11">Invoice import, live</text>
              <rect x="395" y="40" width="160" height="150" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="475" y="66" font-size="14" font-weight="700" fill="#fcd34d">3. Negotiation</text>
              <text x="475" y="92" fill="#9b99b8" font-size="11">Goal</text>
              <text x="475" y="110">Agree price, scope</text>
              <text x="475" y="127">and terms</text>
              <rect x="407" y="146" width="136" height="30" rx="6" fill="#27274e"/>
              <text x="475" y="166" font-size="11">Plan, users, start</text>
              <rect x="585" y="40" width="160" height="150" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="665" y="66" font-size="14" font-weight="700" fill="#6ee7b7">4. Closing</text>
              <text x="665" y="92" fill="#9b99b8" font-size="11">Goal</text>
              <text x="665" y="110">Get a clear decision</text>
              <text x="665" y="127">and a start date</text>
              <rect x="597" y="146" width="136" height="30" rx="6" fill="#27274e"/>
              <text x="665" y="166" font-size="11">Order signed</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#sc1a)">
                <line x1="177" y1="115" x2="201" y2="115"/>
                <line x1="367" y1="115" x2="391" y2="115"/>
                <line x1="557" y1="115" x2="581" y2="115"/>
              </g>
              <rect x="15" y="208" width="730" height="36" rx="8" fill="#27274e" stroke="#ec4899"/>
              <text x="380" y="231">Every good call: one clear goal · the buyer talks more · an agreed next step with a date</text>
            </g>
          </svg>
          <figcaption>A B2B deal often moves through four kinds of calls. Each call has its own goal and ends with a next step.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The four main call types</h3>
          <p>Here is the example we use in this course. Kavya is a sales rep at LedgerLite, an accounting software startup in Karnataka. Her prospect (a possible buyer) is Meena Shah, Finance Head of Tulsi Textiles in Gujarat. All names and numbers are made up.</p>
          <table class="lc-table">
            <thead><tr><th>Call type</th><th>Main goal</th><th>Who talks most</th><th>A good ending</th></tr></thead>
            <tbody>
              <tr><td><strong>Discovery</strong></td><td>Understand the buyer's problem, its cost and how they decide. Find out if you are a good fit.</td><td>The buyer</td><td>Both sides agree the problem is worth solving. A demo is booked.</td></tr>
              <tr><td><strong>Demo</strong></td><td>Show how the product solves the problems you heard. Do not show every feature.</td><td>Both</td><td>The buyer says "this would work for us" and names who else must see it.</td></tr>
              <tr><td><strong>Negotiation</strong></td><td>Agree the price, the scope (what is included) and the terms (payment, start date, contract length).</td><td>Both</td><td>A written proposal that both sides accept in principle.</td></tr>
              <tr><td><strong>Closing</strong></td><td>Get a clear decision and plan the start.</td><td>Both</td><td>A signed order, or a clear "no" with a reason.</td></tr>
            </tbody>
          </table>
          <p>Small deals often use fewer calls. For example, Sweet Crumbs, a home bakery in Maharashtra, sells office catering. One 15-minute call can cover the office's needs, the menu and the price. Large deals may need several calls of each type. The names matter less than the goal. Always know the goal of <em>this</em> call.</p>
        </div>
        <div class="lc-card">
          <h3>What makes a good call</h3>
          <ul class="lc-list">
            <li><strong>One clear goal.</strong> Write it in one line before the call. For example: "Understand how Tulsi Textiles closes its books each month."</li>
            <li><strong>Preparation.</strong> Know who will join, what you already know, and what you need to learn.</li>
            <li><strong>The buyer talks more on a discovery call.</strong> You learn nothing while you are talking.</li>
            <li><strong>Honest answers.</strong> If you do not know, say "I will check and tell you by tomorrow." Never guess about the product.</li>
            <li><strong>A clear next step.</strong> A next step has an action, an owner and a date.</li>
          </ul>
          <p>Compare these two endings to Kavya's discovery call:</p>
          <table class="lc-table">
            <thead><tr><th>Weak ending</th><th>Strong ending</th></tr></thead>
            <tbody>
              <tr><td>"I will send you some information. Let's stay in touch."</td><td>"Meena will invite her accounts lead. Kavya will show invoice import and bank matching. Demo on Tuesday 6 October at 11 am."</td></tr>
            </tbody>
          </table>
          <p>The weak ending has no owner and no date. Deals with endings like this often stop moving.</p>
        </div>
        <div class="lc-card">
          <h3>How AI helps you plan a call</h3>
          <p>AI can help you set the goal, plan the questions and think of risks. But it only knows what you tell it. Compare these two prompts:</p>
          <pre><code>Weak:
        Help me with my sales call tomorrow.

        Better:
        I sell LedgerLite, accounting software for small businesses in India.
        Tomorrow I have a first call with the Finance Head of a textile
        company in Gujarat. From her email I know two facts: month-end close
        takes about 10 days, and they process 400+ invoices a month.
        Tell me: (1) what type of call this is, (2) one main goal,
        (3) five questions to ask, (4) a good next step to ask for.
        Do not invent facts about the company.</code></pre>
          <p>The better prompt gives the product, the buyer, the known facts and the output you want. It also sets a rule: no invented facts. You still decide the goal. You still check that the questions fit this buyer.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: which call is it?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Read each situation. Which type of call is it?</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="disc" data-label="Discovery"></div>
              <div data-sorter-target="bucket" data-bucket="demo" data-label="Demo"></div>
              <div data-sorter-target="bucket" data-bucket="nego" data-label="Negotiation"></div>
              <div data-sorter-target="bucket" data-bucket="close" data-label="Closing"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="disc" data-why="Kavya is still learning how Tulsi Textiles works today. That is discovery.">Kavya asks Meena how her team closes the books each month</li>
              <li data-bucket="demo" data-why="Kavya shows the product, using the problem Meena described.">Kavya shows Meena how 400+ invoices could be imported instead of typed</li>
              <li data-bucket="nego" data-why="They are agreeing price and terms, not learning or showing.">Meena asks for a lower price if she pays for two years at once</li>
              <li data-bucket="close" data-why="The decision is made. This call confirms the order and the start.">Meena confirms the order and they fix the first training date</li>
              <li data-bucket="disc" data-why="Rohit is learning the store's needs before he offers anything.">Rohit at Nimbus Logistics asks an online store how many orders it ships each day</li>
              <li data-bucket="nego" data-why="The office wants to change the scope and the price. That is negotiation.">An office asks Sweet Crumbs for a monthly rate if they order snacks every Friday</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Describe one of your own deals. The AI will name the call type, suggest one goal and plan a strong next step.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an experienced B2B sales coach. Be practical and honest.

        My product: [LedgerLite, accounting software for small businesses in India]
        My buyer: [Meena Shah, Finance Head of Tulsi Textiles, Gujarat]
        What has happened so far: [She replied to my email. She said month-end close takes about 10 days and they handle 400+ invoices a month. We have not spoken yet.]
        My next call: [30 minutes, video call, next Thursday]

        Please give me:
        1. The type of this call (discovery, demo, negotiation or closing) and why.
        2. One main goal for the call, in one sentence.
        3. Three things I must learn or confirm on this call.
        4. A strong next step to ask for at the end, with an owner and a date.
        5. Two common mistakes on this type of call, and how to avoid them.

        Rules: Use only the facts I gave. Do not invent facts about the buyer or her company. If you need more information, list it as a question for me to find out.</pre>
            <ul class="ai-try-checks">
              <li>Is the call type right for where the deal is now?</li>
              <li>Is the goal one clear sentence that you could check after the call?</li>
              <li>Does the next step have an action, an owner and a date?</li>
              <li>Did the AI add any "facts" about the buyer that you did not give it?</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Before every call, know which type of call it is and write its one goal. A call is good when it reaches that goal and ends with a next step that has an owner and a date.
        </div>
      HTML
      starter_code: nil
    },
    2 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-sales">Sales & CRM</div>
          <h1 class="lc-title">Where AI Helps with Calls</h1>
        </div>
        <p class="lc-lead">AI can save you time before, during and after a sales call. It can draft a research brief, turn a recording into notes, write a summary and draft a follow-up email. It can even play the buyer so you can practise. But AI cannot build trust, make promises or decide what is true. In this lesson you will see where AI helps, where a person must stay in charge, and why you must ask before you record a call.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 290" role="img" aria-label="A grid with four stages of a sales call: before, during, after and coaching. The top row shows what AI can help with at each stage. The bottom row shows what the person must do. A red line at the bottom says: ask before recording, and keep private data out of public AI tools.">
            <defs><marker id="sc2a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12" fill="#e2e0f0" text-anchor="middle">
              <text x="185" y="26" font-weight="700" fill="#93c5fd">Before</text>
              <text x="345" y="26" font-weight="700" fill="#93c5fd">During</text>
              <text x="505" y="26" font-weight="700" fill="#93c5fd">After</text>
              <text x="665" y="26" font-weight="700" fill="#93c5fd">Coaching</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#sc2a)">
                <line x1="215" y1="22" x2="310" y2="22"/>
                <line x1="375" y1="22" x2="474" y2="22"/>
                <line x1="530" y1="22" x2="624" y2="22"/>
              </g>
              <text x="55" y="85" font-weight="700" fill="#6ee7b7">AI helps</text>
              <text x="55" y="185" font-weight="700" fill="#fcd34d">You must</text>
              <rect x="110" y="42" width="150" height="80" rx="8" fill="#1f1f44" stroke="#10b981"/>
              <text x="185" y="76">Research brief</text><text x="185" y="96">Question list</text>
              <rect x="270" y="42" width="150" height="80" rx="8" fill="#1f1f44" stroke="#10b981"/>
              <text x="345" y="76">Transcript, notes</text><text x="345" y="96" fill="#9b99b8" font-size="11">only with consent</text>
              <rect x="430" y="42" width="150" height="80" rx="8" fill="#1f1f44" stroke="#10b981"/>
              <text x="505" y="76">Summary draft</text><text x="505" y="96">Follow-up draft</text>
              <rect x="590" y="42" width="150" height="80" rx="8" fill="#1f1f44" stroke="#10b981"/>
              <text x="665" y="76">Find patterns</text><text x="665" y="96">Play the buyer</text>
              <rect x="110" y="142" width="150" height="80" rx="8" fill="#27274e" stroke="#f59e0b"/>
              <text x="185" y="176">Check every fact</text><text x="185" y="196">Set the goal</text>
              <rect x="270" y="142" width="150" height="80" rx="8" fill="#27274e" stroke="#f59e0b"/>
              <text x="345" y="176">Ask for consent</text><text x="345" y="196">Listen and decide</text>
              <rect x="430" y="142" width="150" height="80" rx="8" fill="#27274e" stroke="#f59e0b"/>
              <text x="505" y="176">Fix errors, send</text><text x="505" y="196">Update the CRM</text>
              <rect x="590" y="142" width="150" height="80" rx="8" fill="#27274e" stroke="#f59e0b"/>
              <text x="665" y="176">Judge the advice</text><text x="665" y="196">Practise, improve</text>
              <rect x="110" y="240" width="630" height="36" rx="8" fill="#1f1f44" stroke="#ec4899"/>
              <text x="425" y="263" fill="#f9a8d4">Red lines: ask before you record · no private data in public AI tools</text>
            </g>
          </svg>
          <figcaption>AI drafts and organises at every stage. You check, decide and stay responsible for what reaches the buyer.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Five jobs where AI saves time</h3>
          <table class="lc-table">
            <thead><tr><th>Job</th><th>How AI helps</th><th>What you must check</th></tr></thead>
            <tbody>
              <tr><td><strong>Preparation</strong></td><td>Turns your research notes into a one-page brief, questions and an agenda</td><td>Every fact has a source. Nothing is guessed.</td></tr>
              <tr><td><strong>Notes</strong></td><td>A meeting tool or AI note-taker makes a transcript (a written record of every word)</td><td>Names, numbers and product terms. Transcripts often mishear these.</td></tr>
              <tr><td><strong>Summaries</strong></td><td>Pulls out pains, decisions, next steps, owners and dates</td><td>Nothing is missing or added. Dates are right.</td></tr>
              <tr><td><strong>Follow-ups</strong></td><td>Drafts the recap email the same day</td><td>No promise you did not make. The tone sounds like you.</td></tr>
              <tr><td><strong>Coaching</strong></td><td>Scores a call against a checklist, finds patterns, plays a buyer for practice</td><td>The advice fits your buyer and your market.</td></tr>
            </tbody>
          </table>
          <p>Many video meeting tools and CRM tools (software that keeps customer records, such as Zoho CRM, HubSpot, Salesforce or Freshsales) now offer AI notes and summaries. Features and plans change often. Check the tool's current help pages before you rely on one.</p>
        </div>
        <div class="lc-card">
          <h3>What a person must do</h3>
          <ul class="lc-list">
            <li><strong>Build trust.</strong> The buyer is trusting you, not a tool.</li>
            <li><strong>Listen and decide in the moment.</strong> When Meena sounds worried, you slow down and ask why.</li>
            <li><strong>Make promises.</strong> Only you can agree a price, a discount or a start date. AI must never do this for you.</li>
            <li><strong>Check the truth.</strong> AI can mishear, mix up numbers or invent details. For example, a transcript may turn "400 invoices" into "40 invoices".</li>
            <li><strong>Judge fit.</strong> Sometimes the honest answer is "our product is not right for you". A person must make that call.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Recording, consent and privacy</h3>
          <p><strong>Consent</strong> means the person clearly agrees. Always ask before you record or transcribe a call. Say it at the start, before the tool starts:</p>
          <pre><code>"Meena, is it OK if I record this call? I use the recording
        only to make accurate notes, and it stays inside LedgerLite.
        If you prefer, I will just take notes by hand."</code></pre>
          <p>If anyone says no, do not record. Rules differ by country. In India, the Digital Personal Data Protection Act 2023 and its Rules (2025) cover personal data, including consent and using data only for a clear purpose. In the EU, the GDPR applies. Some places need every person on a call to agree to recording. This is general information, not legal advice. Ask your company or a lawyer about the rules for you.</p>
          <p><strong>Privacy:</strong> Do not paste customer names, phone numbers, bank details or full transcripts into a public AI tool. Use the AI tool your company has approved. If you practise with a free tool, remove names and replace them with labels such as "[Client A]".</p>
        </div>
        <div class="lc-card">
          <h3>Activity: Kavya's call day with AI</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Before the call">Kavya pastes her research notes into the company's approved AI assistant: "Make a one-page call brief for my first call with Tulsi Textiles. Use only these notes."</li>
              <li data-kind="answer" data-label="AI draft">The brief lists the goal, 6 questions and an agenda. It also says "Tulsi Textiles has three factories".</li>
              <li data-kind="check" data-label="Kavya checks">Kavya's notes never mention factories. She deletes the line and adds "How many sites do you have?" as a question.</li>
              <li data-kind="tool" data-label="During the call">Kavya asks Meena for consent. Meena agrees, so Kavya turns on transcription in the video meeting tool.</li>
              <li data-kind="result" data-label="Transcript">The transcript says: "We process about 40 invoices a month."</li>
              <li data-kind="warn" data-label="Mistake to catch">Meena said "400". Kavya's own notes say 400+. If she trusts the transcript, her summary and her proposal will be wrong.</li>
              <li data-kind="answer" data-label="After the call">AI drafts the summary and the follow-up email. Kavya fixes the number, checks the demo date and sends it herself.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Make your own map of where AI can help with your calls, with the risks and a consent script.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a sales operations adviser who helps small teams use AI safely.

        About me: I am a [sales rep] at [LedgerLite, an accounting software startup in Karnataka]. I sell to [small and mid-size businesses in India]. I do about [10] sales calls a week, mostly on [video calls]. My tools: [Google Sheets, email and Zoho CRM].

        Please make a table with these columns: Stage (before, during, after, coaching), Task, How AI can help, Risk, What I must check myself. Give 2 tasks for each stage.

        Then:
        1. Write a short, friendly script (2 or 3 sentences) to ask a buyer for consent to record a call. Include what happens if they say no.
        2. List 5 kinds of data I should never paste into a public AI tool.
        3. List 3 decisions on a call that only a person should make.

        Keep it practical and in simple English. Do not name exact prices of tools. Add a note that recording rules differ by country and this is not legal advice.</pre>
            <ul class="ai-try-checks">
              <li>Does every task in the table have a real "what I must check" step?</li>
              <li>Does the consent script ask first and offer a no-recording option?</li>
              <li>Does the privacy list include customer contact details and full transcripts?</li>
              <li>Does the answer say it is not legal advice?</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Let AI draft and organise, but keep the person in charge of trust, promises and truth. Ask before you record, and keep private customer data out of public AI tools.
        </div>
      HTML
      starter_code: nil
    },
    3 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-sales">Sales & CRM</div>
          <h1 class="lc-title">Preparing for a Call with AI</h1>
        </div>
        <p class="lc-lead">Good calls start before you dial. Fifteen minutes of preparation helps you ask better questions and sound like you care about the buyer. In this lesson you will build a <strong>call prep brief</strong>: a one-page plan with the account, the attendees, your goal, an agenda and likely objections. You will collect the facts yourself, use AI to organise them, and then check every line before the call.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 270" role="img" aria-label="Four sources of facts (company website, LinkedIn profile, CRM notes, the buyer's email) go into an AI assistant. The AI drafts a one-page brief with five parts: account, attendees, goal, agenda and likely objections. Then the rep checks every fact before the call.">
            <defs><marker id="sc3a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12" fill="#e2e0f0" text-anchor="middle">
              <text x="100" y="24" fill="#9b99b8" font-size="11">Facts you collect</text>
              <rect x="15" y="38" width="170" height="36" rx="8" fill="#27274e" stroke="#3b82f6"/><text x="100" y="61">Company website</text>
              <rect x="15" y="86" width="170" height="36" rx="8" fill="#27274e" stroke="#3b82f6"/><text x="100" y="109">LinkedIn profile</text>
              <rect x="15" y="134" width="170" height="36" rx="8" fill="#27274e" stroke="#3b82f6"/><text x="100" y="157">CRM notes</text>
              <rect x="15" y="182" width="170" height="36" rx="8" fill="#27274e" stroke="#3b82f6"/><text x="100" y="205">The buyer's email</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#sc3a)">
                <path d="M187,56 L230,120"/>
                <path d="M187,104 L230,124"/>
                <path d="M187,152 L230,132"/>
                <path d="M187,200 L230,136"/>
                <line x1="377" y1="128" x2="418" y2="128"/>
                <line x1="607" y1="128" x2="636" y2="128"/>
              </g>
              <rect x="235" y="98" width="140" height="60" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="305" y="124" font-weight="700" fill="#c4b5fd">AI organises</text>
              <text x="305" y="143" font-size="11" fill="#9b99b8">uses only your facts</text>
              <rect x="422" y="30" width="183" height="200" rx="10" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="513" y="54" font-weight="700" fill="#67e8f9">One-page brief</text>
              <g text-anchor="start">
                <text x="440" y="86">1. Account</text>
                <text x="440" y="114">2. Attendees</text>
                <text x="440" y="142">3. Goal of the call</text>
                <text x="440" y="170">4. Agenda</text>
                <text x="440" y="198">5. Likely objections</text>
              </g>
              <rect x="640" y="98" width="110" height="60" rx="10" fill="#27274e" stroke="#10b981"/>
              <text x="695" y="124" font-weight="700" fill="#6ee7b7">You check</text>
              <text x="695" y="143" font-size="11" fill="#9b99b8">every fact</text>
              <text x="380" y="258" font-size="11.5" fill="#9b99b8">No source for a "fact"? Turn it into a question to ask on the call.</text>
            </g>
          </svg>
          <figcaption>You collect the facts. AI organises them into a brief. You check the brief before the call.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>What goes in a call prep brief</h3>
          <p>Here is Kavya's brief for her first call with Tulsi Textiles on Thursday 1 October, 3 pm, 30 minutes on video. Everything is made up for this course.</p>
          <table class="lc-table">
            <thead><tr><th>Part</th><th>Kavya's brief</th><th>Source</th></tr></thead>
            <tbody>
              <tr><td><strong>Account</strong></td><td>Tulsi Textiles, Gujarat. Makes and sells fabric to shops and traders.</td><td>Company website</td></tr>
              <tr><td><strong>Attendees</strong></td><td>Meena Shah, Finance Head. Has been in the role for about 3 years.</td><td>Her LinkedIn profile</td></tr>
              <tr><td><strong>What we know</strong></td><td>Month-end close takes about 10 days. They process 400+ invoices a month.</td><td>Meena's email reply</td></tr>
              <tr><td><strong>Goal</strong></td><td>Understand how they close the month and where time is lost. If it is a fit, book a demo.</td><td>Kavya decides</td></tr>
              <tr><td><strong>Agenda</strong></td><td>Intros and agenda (3 min), her process and pains (15 min), impact and who decides (7 min), next step (5 min)</td><td>Kavya decides</td></tr>
              <tr><td><strong>Likely objections</strong></td><td>"We already have software." "Switching in the middle of the year is risky."</td><td>Kavya's guess, to check</td></tr>
            </tbody>
          </table>
          <p>Check the agenda adds up: 3 + 15 + 7 + 5 = 30 minutes. Send it to Meena a day before, so she knows what to expect.</p>
        </div>
        <div class="lc-card">
          <h3>Use AI to organise, not to research alone</h3>
          <p>If you ask an AI chat about a small company, it may invent facts that sound real. It may give a wrong revenue, a wrong owner or a product they do not sell. So collect the facts yourself, then give them to the AI.</p>
          <pre><code>Weak:
        Tell me everything about Tulsi Textiles, Gujarat and write a call brief.

        Better:
        Make a one-page call prep brief for my discovery call.
        Use ONLY the notes below. For each line, say which note it came from.
        If something is not in my notes, do not guess. Put it under
        "Questions to ask" instead.
        Sections: Account, Attendees, What we know, Goal, Agenda (30 min),
        Likely objections with a calm one-line answer, Questions to ask.
        My notes:
        - Website: fabric maker in Gujarat, sells to shops and traders.
        - Meena Shah, Finance Head (LinkedIn).
        - Her email: "Our month-end close takes about 10 days.
          We process 400+ invoices a month."</code></pre>
          <p>Some AI assistants can search the web. That can help, but always open the source links and read them yourself. Only use public, business information. Do not scrape LinkedIn or use tools that automate it. LinkedIn's User Agreement does not allow scraping or most automation.</p>
        </div>
        <div class="lc-card">
          <h3>Check the brief before the call</h3>
          <ul class="lc-list">
            <li><strong>Every fact has a source.</strong> If you cannot point to one, delete it or turn it into a question.</li>
            <li><strong>Facts are current.</strong> A job title from an old article may be out of date.</li>
            <li><strong>Objections are guesses.</strong> Do not act as if the buyer has already said them.</li>
            <li><strong>Nothing private.</strong> Personal details, such as family or health, do not belong in a sales brief.</li>
            <li><strong>The goal is yours.</strong> AI can suggest one, but you choose it.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Activity: build the brief in the right order</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put Kavya's preparation steps in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Write the one goal of the call</li>
              <li data-order="2">Collect facts from the website, LinkedIn profile, CRM and Meena's email</li>
              <li data-order="3">Paste the facts into the approved AI tool with the rule "use only these notes"</li>
              <li data-order="4">Check each line of the draft against its source and delete guesses</li>
              <li data-order="5">Add questions to ask and calm answers to likely objections</li>
              <li data-order="6">Send a short agenda to Meena the day before the call</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Paste your own notes (or use the sample notes) and get a one-page call brief with sources.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a careful sales assistant. Make a one-page call prep brief for my next sales call.

        Call: [discovery call, 30 minutes, video]
        My product: [LedgerLite, accounting software for small businesses in India]
        My notes (the ONLY facts you may use):
        [- Website: Tulsi Textiles, Gujarat. Makes fabric and sells to shops and traders.
        - LinkedIn: Meena Shah, Finance Head.
        - Her email: "Our month-end close takes about 10 days. We process 400+ invoices a month."
        - CRM: She downloaded our GST invoice guide last month.]

        Sections:
        1. Account (with the source of each fact)
        2. Attendees and what each person probably cares about (mark this as a guess)
        3. Goal of the call (one sentence)
        4. Agenda with minutes that add up to the call length
        5. Three likely objections, each with a calm one-line answer
        6. Five open questions to ask
        7. Missing information: things I should confirm on the call

        Rules: Do not invent any fact, number or name. If something is not in my notes, put it in section 7.</pre>
            <ul class="ai-try-checks">
              <li>Does each fact in the Account section match one of your notes?</li>
              <li>Do the agenda minutes add up to the call length?</li>
              <li>Are the guesses clearly marked as guesses?</li>
              <li>Are the questions open (starting with how, what or tell me)?</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> You collect the facts and AI organises them. Any "fact" without a source becomes a question for the call, not a line in your brief.
        </div>
      HTML
      starter_code: nil
    },
    4 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-sales">Sales & CRM</div>
          <h1 class="lc-title">Discovery Questions</h1>
        </div>
        <p class="lc-lead">On a discovery call, your questions do most of the work. Good questions help the buyer explain their problem in their own words. They also show you whether you can really help. In this lesson you will learn open and closed questions, and the four areas to cover: current process, pain, impact and decision process. Then you will use AI to build a question bank (a saved list of good questions) for your buyers.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 250" role="img" aria-label="Five question areas in order: current process, pain, impact, decision process and next step. Each box has an example question for Meena at Tulsi Textiles. A bar at the bottom explains open questions for learning and closed questions for confirming.">
            <defs><marker id="sc4a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12" fill="#e2e0f0" text-anchor="middle">
              <rect x="10" y="30" width="136" height="120" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="78" y="56" font-weight="700" fill="#93c5fd">Current process</text>
              <text x="78" y="90" font-size="11.5">"How do you close</text>
              <text x="78" y="108" font-size="11.5">the month today?"</text>
              <rect x="162" y="30" width="136" height="120" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="230" y="56" font-weight="700" fill="#f9a8d4">Pain</text>
              <text x="230" y="90" font-size="11.5">"Which step takes</text>
              <text x="230" y="108" font-size="11.5">the most time?"</text>
              <rect x="314" y="30" width="136" height="120" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="382" y="56" font-weight="700" fill="#fcd34d">Impact</text>
              <text x="382" y="90" font-size="11.5">"What does a slow</text>
              <text x="382" y="108" font-size="11.5">close cost you?"</text>
              <rect x="466" y="30" width="136" height="120" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="534" y="56" font-weight="700" fill="#c4b5fd">Decision process</text>
              <text x="534" y="90" font-size="11.5">"Who else decides,</text>
              <text x="534" y="108" font-size="11.5">and by when?"</text>
              <rect x="618" y="30" width="132" height="120" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="684" y="56" font-weight="700" fill="#6ee7b7">Next step</text>
              <text x="684" y="90" font-size="11.5">"What should we</text>
              <text x="684" y="108" font-size="11.5">do next?"</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#sc4a)">
                <line x1="147" y1="90" x2="159" y2="90"/>
                <line x1="299" y1="90" x2="311" y2="90"/>
                <line x1="451" y1="90" x2="463" y2="90"/>
                <line x1="603" y1="90" x2="615" y2="90"/>
              </g>
              <rect x="10" y="172" width="365" height="60" rx="8" fill="#27274e" stroke="#22d3ee"/>
              <text x="192" y="196" font-weight="700" fill="#67e8f9">Open questions: to learn</text>
              <text x="192" y="218" font-size="11.5">Start with how, what, why, tell me about</text>
              <rect x="385" y="172" width="365" height="60" rx="8" fill="#27274e" stroke="#9b99b8"/>
              <text x="567" y="196" font-weight="700">Closed questions: to confirm</text>
              <text x="567" y="218" font-size="11.5">Start with is, do, can, did (yes or no)</text>
            </g>
          </svg>
          <figcaption>Move from how things work today, to what hurts, to what it costs, to who decides. Then agree the next step.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Open and closed questions</h3>
          <p>An <strong>open question</strong> cannot be answered with yes or no. It invites the buyer to explain. A <strong>closed question</strong> gets a short answer. Use it to confirm a detail.</p>
          <table class="lc-table">
            <thead><tr><th>Closed (confirms)</th><th>Open (explores)</th></tr></thead>
            <tbody>
              <tr><td>"Do you use Excel for invoices?"</td><td>"Walk me through what happens when an invoice arrives."</td></tr>
              <tr><td>"Is month-end close slow?"</td><td>"What makes month-end close take about 10 days?"</td></tr>
              <tr><td>"Are you the decision maker?"</td><td>"How does your company usually decide on new software?"</td></tr>
            </tbody>
          </table>
          <p>Avoid three common mistakes:</p>
          <ul class="lc-list">
            <li><strong>Leading questions</strong> push the answer you want: "Don't you agree typing invoices is a waste of time?"</li>
            <li><strong>Stacked questions</strong> ask three things at once. The buyer answers only the last one.</li>
            <li><strong>Too many questions</strong> feel like a test. Ask one, listen, then follow up on what you heard.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>The four areas to cover</h3>
          <table class="lc-table">
            <thead><tr><th>Area</th><th>Why it matters</th><th>Questions for Meena</th></tr></thead>
            <tbody>
              <tr><td><strong>Current process</strong></td><td>You cannot improve what you do not understand.</td><td>"Walk me through a normal month-end, from day 1 to closing." "Who does each step?"</td></tr>
              <tr><td><strong>Pain</strong></td><td>The pain is the reason to change.</td><td>"Which step takes the most time?" "Where do mistakes usually happen?"</td></tr>
              <tr><td><strong>Impact</strong></td><td>The cost of the pain tells you if it is worth solving now.</td><td>"How many hours does your team spend on invoice entry?" "What happens when the close runs late?"</td></tr>
              <tr><td><strong>Decision process</strong></td><td>You learn who decides, how and by when.</td><td>"Apart from you, who needs to be involved?" "What would you need to see before you decide?"</td></tr>
            </tbody>
          </table>
          <p>You may hear about sales question methods such as SPIN (Situation, Problem, Implication, Need-payoff) or BANT (Budget, Authority, Need, Timeline). They cover similar areas. The four areas above are a simple place to start.</p>
        </div>
        <div class="lc-card">
          <h3>Worked example: turning pain into impact</h3>
          <p>Meena says: "My team types every invoice by hand. Each one takes about 4 minutes to enter and check." Kavya does not argue or pitch. She asks for the numbers and does the maths with Meena:</p>
          <pre><code>Invoices a month:        400 (Meena said 400+, so this is the lowest figure)
        Minutes per invoice:     4 (Meena's estimate)
        Minutes a month:         400 × 4 = 1,600 minutes
        Hours a month:           1,600 ÷ 60 = about 27 hours</code></pre>
          <p>Then Kavya asks an impact question: "If your team got back about 27 hours a month, what would they do with that time?" Now Meena explains the value in her own words.</p>
          <p>Use the buyer's numbers, not your own. Say "about", because these are estimates. Never make the problem sound bigger than the buyer said.</p>
        </div>
        <div class="lc-card">
          <h3>Build a question bank with AI</h3>
          <p>A question bank saves time before every call. AI is good at writing many question ideas quickly. You pick the best ones.</p>
          <pre><code>Weak:
        Give me some sales questions.

        Better:
        I sell LedgerLite, accounting software, to finance heads at
        manufacturing companies in India with 50 to 300 staff.
        Write discovery questions in four groups: current process,
        pain, impact, decision process. Five open questions per group.
        No leading questions. No yes/no questions. Simple English.
        For each group, add one follow-up question to go deeper.</code></pre>
          <p>Then read every question aloud. Remove any that sound pushy or unnatural. Save the best ones in a shared document for your team.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: which area does this question cover?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each of Kavya's questions into the area it covers.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="process" data-label="Current process"></div>
              <div data-sorter-target="bucket" data-bucket="pain" data-label="Pain"></div>
              <div data-sorter-target="bucket" data-bucket="impact" data-label="Impact"></div>
              <div data-sorter-target="bucket" data-bucket="decision" data-label="Decision process"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="process" data-why="It asks how the work happens today, step by step.">"Walk me through what happens when a supplier invoice arrives."</li>
              <li data-bucket="pain" data-why="It asks where the problem is, not what it costs.">"Which part of month-end close frustrates your team the most?"</li>
              <li data-bucket="impact" data-why="It asks about the result of the problem for the business.">"What happens when the numbers reach your MD late?"</li>
              <li data-bucket="decision" data-why="It asks who is involved in the decision.">"Apart from you, who would need to agree to a new tool?"</li>
              <li data-bucket="impact" data-why="It measures the cost of the pain in time.">"Roughly how many hours a month does invoice entry take?"</li>
              <li data-bucket="process" data-why="It asks which tools and people do the work today.">"Which tools does your team use to record invoices now?"</li>
              <li data-bucket="decision" data-why="It asks about timing and the steps to a decision.">"By when would you want a new process in place, and why then?"</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Build a question bank for your own buyers. Change the details in brackets, or run it as it is.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a B2B sales trainer. Build a discovery question bank for me.

        What I sell: [LedgerLite, accounting software for small businesses in India]
        Who I call: [Finance heads at manufacturing and trading companies with 50 to 300 staff, for example a textile company in Gujarat]
        The problem we usually solve: [slow month-end close and too much manual invoice entry]

        Please write:
        1. Four groups of questions: Current process, Pain, Impact, Decision process. Give 5 open questions in each group.
        2. For each group, one follow-up question that goes deeper (for example "Tell me more about..." or "What happens then?").
        3. Two impact questions that ask the buyer to put a number on the problem (hours, days or rupees).
        4. Three examples of bad questions (leading, stacked, or yes/no) and a better version of each.

        Rules: Use simple, polite English. No questions that push the buyer to agree. Do not mention competitors by name. Keep each question under 20 words.</pre>
            <ul class="ai-try-checks">
              <li>Are the questions open, not yes/no?</li>
              <li>Are any questions leading or pushy? Rewrite or remove them.</li>
              <li>Do the impact questions ask the buyer for their numbers, instead of assuming numbers?</li>
              <li>Would you feel comfortable asking each question aloud?</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Ask open questions in four areas: current process, pain, impact and decision process. Let the buyer put numbers on the problem in their own words. AI can write many questions, but you choose the ones that sound natural and honest.
        </div>
      HTML
      starter_code: nil
    },
    5 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-sales">Sales & CRM</div>
          <h1 class="lc-title">Running a Discovery Call</h1>
        </div>
        <p class="lc-lead">You have a brief and a list of questions. Now you need to run the call. In this lesson you will learn how to open with a clear agenda, how to listen actively, and how to keep your talk-to-listen ratio healthy. You will also learn what to write in your notes. Then you will follow Kavya's discovery call with Meena Shah of Tulsi Textiles, step by step, and see where AI helps after the call.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 250" role="img" aria-label="A 30-minute call timeline: open and agenda for 3 minutes, process and pains for 15 minutes, impact and decision for 7 minutes, next step for 5 minutes. Below, a bar shows Kavya talked 12 minutes, which is 40 percent, and Meena talked 18 minutes, which is 60 percent.">
            <defs><marker id="sc5a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12" fill="#e2e0f0" text-anchor="middle">
              <text x="30" y="28" text-anchor="start" fill="#c4b5fd">Kavya's 30-minute discovery call with Meena (made-up example)</text>
              <rect x="30" y="42" width="70" height="40" fill="#27274e" stroke="#3b82f6"/>
              <text x="65" y="67">Open</text>
              <rect x="100" y="42" width="350" height="40" fill="#1f1f44" stroke="#ec4899"/>
              <text x="275" y="67">Her process and pains</text>
              <rect x="450" y="42" width="163" height="40" fill="#27274e" stroke="#f59e0b"/>
              <text x="531" y="67">Impact, who decides</text>
              <rect x="613" y="42" width="117" height="40" fill="#1f1f44" stroke="#10b981"/>
              <text x="671" y="67">Next step</text>
              <g font-size="11" fill="#9b99b8">
                <text x="65" y="100">0-3 min</text>
                <text x="275" y="100">3-18 min</text>
                <text x="531" y="100">18-25 min</text>
                <text x="671" y="100">25-30 min</text>
              </g>
              <text x="30" y="136" text-anchor="start" fill="#c4b5fd">Who talked? (from the meeting tool's talk-time report)</text>
              <rect x="30" y="148" width="280" height="36" rx="6" fill="#27274e" stroke="#8b5cf6"/>
              <text x="170" y="171">Kavya: 12 min (40%)</text>
              <rect x="310" y="148" width="420" height="36" rx="6" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="520" y="171">Meena: 18 min (60%)</text>
              <text x="380" y="220">Kavya's talk share = 12 ÷ 30 = 40%</text>
              <text x="380" y="240" font-size="11" fill="#9b99b8">Talk-to-listen ratio = 12 : 18 = 2 : 3</text>
            </g>
          </svg>
          <figcaption>Plan the time for each part of the call. After the call, check how much you talked and how much you listened.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Open the call with a clear agenda</h3>
          <p>The first two minutes set the tone. Thank the buyer, say how long the call will take, share the agenda, and ask if they want to add anything. If you want to record, ask now.</p>
          <pre><code>"Thanks for your time, Meena. We have 30 minutes.
        I'd like to understand how your month-end close works today
        and where it slows down. Then we can decide together if a
        next step makes sense. Is there anything you want to add?
        Also, is it OK if I record this call for my notes?
        If not, no problem, I will take notes by hand."</code></pre>
          <p>Notice what Kavya does not do. She does not start with a product tour. On a discovery call, the buyer's problem comes first.</p>
        </div>
        <div class="lc-card">
          <h3>Active listening and the talk-to-listen ratio</h3>
          <p><strong>Active listening</strong> means you focus fully on the buyer and show that you understood. Try these habits:</p>
          <ul class="lc-list">
            <li><strong>Pause.</strong> Wait two or three seconds after the buyer stops. They often add the most useful detail.</li>
            <li><strong>Follow up.</strong> Ask "Tell me more about that" or "What happens then?" before your next planned question.</li>
            <li><strong>Play it back.</strong> Summarise in your own words: "So invoices are typed twice, once in Excel and once in your accounting software. Is that right?"</li>
            <li><strong>Write the buyer's exact words.</strong> "The MD wants numbers by the 5th" is stronger than "wants faster reports".</li>
          </ul>
          <p>The <strong>talk-to-listen ratio</strong> compares how long you talked with how long the buyer talked. Many meeting and call-recording tools can show talk time. You can also calculate it:</p>
          <table class="lc-table">
            <thead><tr><th>Measure</th><th>Formula</th><th>Kavya's call</th></tr></thead>
            <tbody>
              <tr><td>Your talk share</td><td>your talk time ÷ total talk time × 100</td><td>12 ÷ 30 × 100 = 40%</td></tr>
              <tr><td>Talk-to-listen ratio</td><td>your talk time : buyer's talk time</td><td>12 : 18, which is 2 : 3</td></tr>
            </tbody>
          </table>
          <p>In a spreadsheet, if your minutes are in B2 and the buyer's are in C2, use <code>=B2/(B2+C2)</code> and format the cell as a percentage. There is no perfect number for every call. On a discovery call, the buyer should usually talk more than you. If your share is high, look for places where you explained too much.</p>
        </div>
        <div class="lc-card">
          <h3>What to write in your notes</h3>
          <p>Even if a tool makes a transcript, keep short notes. They help you ask follow-up questions during the call. They also help you check the AI summary later.</p>
          <pre><code>Call: Tulsi Textiles | Meena Shah, Finance Head | Thu 1 Oct, 3 pm
        Current process: invoices typed into Excel, then into accounting software
        Pain (her words): "We type everything twice."
        Impact: close takes about 10 days; MD wants numbers by the 5th
        Numbers: 400+ invoices a month; about 4 min each (her estimate)
        Decision process: Meena + accounts lead; MD approves new software
        Next steps: Kavya sends a note on GST reports by Fri 2 Oct
          Meena sends 20 sample invoices by Mon 5 Oct
          Demo Tue 6 Oct, 11 am, with her accounts lead | Kavya sends invite today</code></pre>
        </div>
        <div class="lc-card">
          <h3>Activity: walk through Kavya's call</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Kavya opens">Kavya shares the 30-minute agenda and asks for consent to record. Meena agrees and adds: "I also want to know if you handle GST reports."</li>
              <li data-kind="thought" data-label="Kavya thinks">She notes the GST question for the next-step part. She does not answer it at length now, because she wants to understand the process first.</li>
              <li data-kind="user" data-label="Kavya asks">"Walk me through what happens from the first day of the month until the books are closed."</li>
              <li data-kind="answer" data-label="Meena says">"About 400 or more invoices come in each month. Two people type them into Excel and then into our accounting software. The close takes about 10 days."</li>
              <li data-kind="warn" data-label="Mistake to avoid">Kavya wants to say "LedgerLite imports invoices automatically!" That would be pitching too early. She asks about the impact instead.</li>
              <li data-kind="user" data-label="Kavya asks">"What happens when the close takes 10 days?"</li>
              <li data-kind="answer" data-label="Meena says">"Our MD wants the numbers by the 5th. We usually send them on the 10th or 11th. He also approves any new software."</li>
              <li data-kind="check" data-label="Kavya plays it back">"So the main pain is typing invoices twice, and the cost is late numbers for your MD. Did I get that right?" Meena says yes.</li>
              <li data-kind="result" data-label="Next step agreed">Kavya will send a note on GST reports by Friday 2 October. Meena will send 20 sample invoices by Monday 5 October. The demo is on Tuesday 6 October at 11 am, with Meena and her accounts lead. Talk time: Kavya 12 min, Meena 18 min.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to review a short piece of a discovery call. Use the sample below, or replace it with your own notes after you remove names and private details.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a friendly sales coach. Review this part of a discovery call and help me improve.

        My product: [LedgerLite, accounting software for small businesses]
        Call excerpt:
        [Rep: Thanks for joining. Let me first show you our dashboard, it has 40 reports and automatic bank matching, and we are rated very highly.
        Buyer: OK. Our close takes about 10 days.
        Rep: That's because you don't use good software. Do you want faster closing?
        Buyer: Yes, of course.
        Rep: Great. Can we book a demo?]

        Please give me:
        1. Two things that went well (if any).
        2. The three biggest mistakes, each with the exact line and why it hurts.
        3. A better version of each weak line, as an open question.
        4. Three follow-up questions I should have asked about process, impact and decision.
        5. A rough estimate of who talked more in this excerpt, based on word count. Show your counting.
        6. A clear next step I could have asked for, with an owner and a date.

        Be specific. Do not invent anything the buyer did not say.</pre>
            <ul class="ai-try-checks">
              <li>Did the AI spot the early pitch, the leading question and the rude line about their software?</li>
              <li>Are the better questions open and polite?</li>
              <li>Check the word count yourself. AI often counts wrongly.</li>
              <li>Does the next step have an action, an owner and a date?</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> On a discovery call, open with an agenda, ask one open question at a time, and listen more than you talk. Write down the buyer's own words and numbers, play them back, and end with a next step that has an owner and a date.
        </div>
      HTML
      starter_code: nil
    },
    6 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-sales">Sales & CRM</div>
          <h1 class="lc-title">Giving a Great Demo</h1>
        </div>
        <p class="lc-lead">A <strong>demo</strong> (a live showing of your product) is not a tour of every feature. A great demo shows the buyer how <em>their</em> problem gets solved. In this lesson, you will plan a demo around the pain you heard in discovery. You will learn a simple story flow, how to check that the buyer understands, and how to handle questions calmly. You will also use AI to turn your discovery notes into a demo plan. Buyers remember demos that are about them, not about you.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 220" role="img" aria-label="A 30-minute demo plan for Tulsi Textiles in six steps: recap their pain, show the end result, invoice capture, month-end close, check understanding, agree the next step. Notes below say to use the buyer's words, to link each workflow to a pain, and to ask and listen.">
            <defs><marker id="sc6a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12.5" fill="#e2e0f0" text-anchor="middle">
              <text x="380" y="24" font-weight="700" fill="#fdba74">A 30-minute demo plan for Tulsi Textiles</text>
              <rect x="11" y="40" width="108" height="84" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="65" y="68">1. Recap</text><text x="65" y="86">their pain</text><text x="65" y="110" font-size="11" fill="#9b99b8">3 min</text>
              <rect x="137" y="40" width="108" height="84" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="191" y="68">2. Show the</text><text x="191" y="86">end result</text><text x="191" y="110" font-size="11" fill="#9b99b8">3 min</text>
              <rect x="263" y="40" width="108" height="84" rx="10" fill="#27274e" stroke="#3b82f6"/>
              <text x="317" y="68">3. Invoice</text><text x="317" y="86">capture</text><text x="317" y="110" font-size="11" fill="#9b99b8">8 min</text>
              <rect x="389" y="40" width="108" height="84" rx="10" fill="#27274e" stroke="#3b82f6"/>
              <text x="443" y="68">4. Month-end</text><text x="443" y="86">close</text><text x="443" y="110" font-size="11" fill="#9b99b8">8 min</text>
              <rect x="515" y="40" width="108" height="84" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="569" y="68">5. Check</text><text x="569" y="86">understanding</text><text x="569" y="110" font-size="11" fill="#9b99b8">3 min</text>
              <rect x="641" y="40" width="108" height="84" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="695" y="68">6. Agree</text><text x="695" y="86">next step</text><text x="695" y="110" font-size="11" fill="#9b99b8">5 min</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#sc6a)">
                <line x1="120" y1="82" x2="134" y2="82"/>
                <line x1="246" y1="82" x2="260" y2="82"/>
                <line x1="372" y1="82" x2="386" y2="82"/>
                <line x1="498" y1="82" x2="512" y2="82"/>
                <line x1="624" y1="82" x2="638" y2="82"/>
              </g>
              <g stroke="#4b4a78" stroke-width="1.5">
                <line x1="65" y1="124" x2="65" y2="150"/><line x1="191" y1="124" x2="191" y2="150"/>
                <line x1="317" y1="124" x2="317" y2="150"/><line x1="443" y1="124" x2="443" y2="150"/>
                <line x1="569" y1="124" x2="569" y2="150"/><line x1="695" y1="124" x2="695" y2="150"/>
              </g>
              <rect x="11" y="150" width="234" height="54" rx="8" fill="#1f1f44" stroke="#4b4a78"/>
              <text x="128" y="173">Use her words and numbers</text><text x="128" y="193" font-size="11" fill="#9b99b8">"Our close takes 10 days"</text>
              <rect x="263" y="150" width="234" height="54" rx="8" fill="#1f1f44" stroke="#4b4a78"/>
              <text x="380" y="173">Each workflow fixes one pain</text><text x="380" y="193" font-size="11" fill="#9b99b8">400+ invoices, 10-day close</text>
              <rect x="515" y="150" width="234" height="54" rx="8" fill="#1f1f44" stroke="#4b4a78"/>
              <text x="632" y="173">Ask, listen, then move on</text><text x="632" y="193" font-size="11" fill="#9b99b8">End with a date, not a hope</text>
            </g>
          </svg>
          <figcaption>Kavya's demo plan for Meena Shah. Only two workflows, because Meena named two big pains.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Tailor the demo to the pain</h3>
          <p>In discovery, Kavya from LedgerLite learned a lot about Tulsi Textiles, Gujarat. Meena Shah, the Finance Head, said the month-end close takes about 10 days. Her team types 400+ invoices a month by hand, first into Excel and then into their accounting software. The MD (managing director) wants the numbers by the 5th of each month. The <strong>month-end close</strong> is the work of finishing and checking the books for the month.</p>
          <p>The demo is on Tuesday 6 October 2026 at 11 am. Their accounts lead will also join. After discovery, Kavya sent Meena a short note on GST reports on Friday 2 October. Meena sent 20 sample invoices on Monday 5 October.</p>
          <p>Kavya does not plan to show all 40 LedgerLite features. She links each pain to one demo moment and one checking question.</p>
          <table class="lc-table">
            <thead><tr><th>What Meena said</th><th>What Kavya shows</th><th>Question to check</th></tr></thead>
            <tbody>
              <tr><td>"We type each invoice into Excel, then into our software."</td><td>Upload the 20 sample invoices Meena sent. LedgerLite reads them and fills the entries.</td><td>"How is this different from how your team works today?"</td></tr>
              <tr><td>"Our close takes about 10 days."</td><td>The month-end checklist, with a status for each task</td><td>"Which of these steps takes your team the longest?"</td></tr>
              <tr><td>"We match bank lines in Excel."</td><td>Automatic bank matching. Only the unclear lines need a person.</td><td>"Would this remove the Excel step, or just change it?"</td></tr>
              <tr><td>"Can we get GST reports?"</td><td>The GST reports screen, filled with sample data</td><td>"Which GST reports does your team prepare each month?"</td></tr>
            </tbody>
          </table>
          <p>Use <strong>sample data</strong> that looks like the buyer's world, such as textile invoices in ₹ with GST lines. Never show another customer's real data in a demo.</p>
        </div>
        <div class="lc-card">
          <h3>Plan the demo with AI</h3>
          <p>A weak prompt gets a generic feature list:</p>
          <pre><code>Make a demo script for LedgerLite.</code></pre>
          <p>A better prompt gives the AI your discovery notes, your real feature list and clear rules:</p>
          <pre><code>You are a sales coach. Plan a 30-minute demo of LedgerLite, an accounting
        software for small businesses.
        Buyer: Meena Shah, Finance Head, Tulsi Textiles, Gujarat.
        Discovery notes: month-end close takes about 10 days; 400+ invoices a
        month typed twice, into Excel and then our old software; bank
        matching done in Excel; the MD wants numbers by the 5th and approves
        new software; Meena asked about GST reports.
        Features we really have: invoice reading, bank matching, month-end
        checklist, CA read-only access, GST reports.
        Plan: 6 steps with minutes. Link each step to one pain.
        Add one checking question after each workflow.
        Rules: only use the features listed. If a pain has no matching
        feature, say so. Do not invent numbers or results.</code></pre>
          <p>The AI gives you a first plan. <strong>You</strong> must still check it. Does every feature work the way the plan says? Is your demo account ready with sample invoices? Did the AI promise any time saving? Remove any number you cannot prove.</p>
        </div>
        <div class="lc-card">
          <h3>Check understanding and handle questions</h3>
          <p>Use <strong>tell, show, tell</strong> for each workflow. First, tell the buyer what you will show and why. Then show it. Then tell them what it means for their team.</p>
          <p>After each workflow, stop and ask a checking question. Good checking questions are open (they cannot be answered with just "yes"):</p>
          <ul class="lc-list">
            <li>"How would this fit with the way your team works now?"</li>
            <li>"What would your accounts lead say about this?"</li>
            <li>"What is missing for you so far?"</li>
          </ul>
          <p>Questions will come during the demo. Use these simple rules:</p>
          <table class="lc-table">
            <thead><tr><th>Type of question</th><th>What to do</th></tr></thead>
            <tbody>
              <tr><td>About the pain you are showing</td><td>Answer it now, briefly.</td></tr>
              <tr><td>Off topic, such as payroll</td><td>Write it on a <strong>parking list</strong> (a list of questions to answer later). Say when you will answer.</td></tr>
              <tr><td>You do not know the answer</td><td>Say so. "I will check with our product team and reply by Thursday."</td></tr>
              <tr><td>"Can it do X?" and you are not sure</td><td>Never say yes to be safe. Check first, then answer in writing.</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Activity: order the demo</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put Kavya's demo for Tulsi Textiles in a good order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Recap Meena's pain in her own words: "a 10-day close and 400+ invoices typed by hand"</li>
              <li data-order="2">Show the end result first: a finished month-end checklist</li>
              <li data-order="3">Show invoice reading with the 20 sample invoices Meena sent</li>
              <li data-order="4">Show bank matching and the month-end checklist in action</li>
              <li data-order="5">Ask: "How would this fit with the way your team works now?"</li>
              <li data-order="6">Answer the parking list questions, or say when you will answer them</li>
              <li data-order="7">Agree a next step with a date, such as a call with the MD</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Turn your discovery notes into a demo plan. Change the brackets to your own product and buyer, or leave them to see an example.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an experienced sales coach. Help me plan a [30]-minute demo.

        My product: [LedgerLite, accounting software for small businesses in India].
        Features we really have (use only these): [invoice reading from PDFs, automatic bank matching, month-end checklist, read-only access for the CA, GST reports].

        Buyer: [Meena Shah, Finance Head, Tulsi Textiles, Gujarat].
        Discovery notes: [month-end close takes about 10 days; 400+ invoices a month typed twice, into Excel and then the accounting software; bank matching done in Excel; the MD wants the numbers by the 5th and approves new software; she asked about GST reports].

        Give me:
        1. A demo plan of 5 to 7 steps, with minutes for each step. Link each step to one pain from my notes.
        2. One "tell, show, tell" line for each workflow step.
        3. One open checking question after each workflow.
        4. Three questions the buyer may ask, and a short, honest answer for each.
        5. A clear next step to ask for at the end.

        Rules: do not invent features, numbers or customer results. If a pain has no matching feature, say so plainly.</pre>
            <ul class="ai-try-checks">
              <li>Every step links to a pain from your notes, not to a random feature.</li>
              <li>No feature appears that is not in your list.</li>
              <li>The minutes add up to your demo length.</li>
              <li>No made-up time savings or customer results.</li>
              <li>The next step has a person and a date, not just "stay in touch".</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Show less, but show what matters to this buyer. Start with their pain, show the result, and stop to check understanding. AI can draft the plan fast, but only you know which features are real and ready.
        </div>
      HTML
      starter_code: nil
    },
    7 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-sales">Sales & CRM</div>
          <h1 class="lc-title">Handling Objections on the Call</h1>
        </div>
        <p class="lc-lead">An <strong>objection</strong> is a reason the buyer gives for not moving ahead. For example: "It is too expensive" or "Not now". Objections are normal. They often mean the buyer is thinking seriously. In this lesson, you will learn a calm five-step way to answer objections. You will learn when to pause and follow up instead of guessing. You will also practise with AI playing the buyer, so the real call feels easier.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 240" role="img" aria-label="Five steps to handle an objection: listen, acknowledge, ask why, answer, check. From the answer step, a branch says: if you do not know, say so and follow up by a set date.">
            <defs><marker id="sc7a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="380" y="26" fill="#fdba74">Meena: "It looks useful, but it costs more than what we use now."</text>
              <rect x="10" y="50" width="124" height="64" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="72" y="77" font-weight="700">1. Listen</text><text x="72" y="98" font-size="10.5" fill="#9b99b8">Let them finish</text>
              <rect x="164" y="50" width="124" height="64" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="226" y="77" font-weight="700">2. Acknowledge</text><text x="226" y="98" font-size="10.5" fill="#9b99b8">Show you heard</text>
              <rect x="318" y="50" width="124" height="64" rx="10" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="380" y="77" font-weight="700">3. Ask why</text><text x="380" y="98" font-size="10.5" fill="#9b99b8">Find the real worry</text>
              <rect x="472" y="50" width="124" height="64" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="534" y="77" font-weight="700">4. Answer</text><text x="534" y="98" font-size="10.5" fill="#9b99b8">Facts and proof</text>
              <rect x="626" y="50" width="124" height="64" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="688" y="77" font-weight="700">5. Check</text><text x="688" y="98" font-size="10.5" fill="#9b99b8">"Does that help?"</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#sc7a)">
                <line x1="136" y1="82" x2="160" y2="82"/>
                <line x1="290" y1="82" x2="314" y2="82"/>
                <line x1="444" y1="82" x2="468" y2="82"/>
                <line x1="598" y1="82" x2="622" y2="82"/>
                <line x1="534" y1="116" x2="534" y2="152"/>
              </g>
              <rect x="424" y="156" width="220" height="64" rx="10" fill="#27274e" stroke="#ec4899"/>
              <text x="534" y="183" fill="#f9a8d4">Not sure? Say so.</text><text x="534" y="204" font-size="11" fill="#9b99b8">Follow up by a set date</text>
              <g text-anchor="start" font-size="12" fill="#9b99b8">
                <text x="20" y="160">Stay calm. Do not argue.</text>
                <text x="20" y="182">Do not jump to a discount.</text>
                <text x="20" y="204">One objection at a time.</text>
              </g>
            </g>
          </svg>
          <figcaption>A calm way to answer any objection. If you do not know the answer, pausing is better than guessing.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Common objections and calm answers</h3>
          <p>The words of an objection often hide the real worry. So <strong>ask before you answer</strong>. Here are common objections from Kavya's calls for LedgerLite:</p>
          <table class="lc-table">
            <thead><tr><th>Objection</th><th>Ask first</th><th>Calm answer or next step</th></tr></thead>
            <tbody>
              <tr><td>"It is too expensive."</td><td>"That is fair. What are you comparing it with?"</td><td>Link the price to her pain: hours of invoice typing each month.</td></tr>
              <tr><td>"Let us talk after Diwali."</td><td>"Makes sense. What is busy for your team right now?"</td><td>Agree a date in November. Offer to send a short summary now.</td></tr>
              <tr><td>"Our current system works."</td><td>"What works well? What would you change?"</td><td>Focus only on the part that does not work, such as the 10-day close.</td></tr>
              <tr><td>"Is our data safe online?"</td><td>"What does your team need to see to feel safe?"</td><td>Share your real security document. Never invent certificates.</td></tr>
              <tr><td>"I need to ask our MD."</td><td>"What will your MD want to know?"</td><td>Offer a one-page summary for him, or a short call with him.</td></tr>
            </tbody>
          </table>
          <p>For a price objection, simple maths helps. In discovery, Meena said her team spends about 4 minutes per invoice. Then 400 invoices × 4 minutes = 1,600 minutes, or about 27 hours a month. This is <em>her</em> estimate, not a promise. Offer a trial with her own invoices to measure the real saving.</p>
        </div>
        <div class="lc-card">
          <h3>When to pause and follow up</h3>
          <p>You do not need to answer everything on the call. It is better to pause than to guess. Pause and follow up when:</p>
          <ul class="lc-list">
            <li><strong>You do not know the answer.</strong> For example, a detailed question about data storage.</li>
            <li><strong>The question is about law or tax.</strong> For example, a GST rule. Suggest they ask their CA.</li>
            <li><strong>They ask for a discount you cannot approve.</strong> At LedgerLite, Kavya can give up to 10% off. Only Arjun, the founder, can approve more.</li>
            <li><strong>The buyer is upset.</strong> Listen first. Solve it later, in writing.</li>
          </ul>
          <p>Use a clear line: <em>"Good question. I do not want to guess. I will check and send you a written answer by Thursday."</em> Then write it in your call notes, and do it.</p>
          <p>Never use pressure, such as "This price is only for today", unless it is true. Honest answers build trust. False urgency breaks it.</p>
        </div>
        <div class="lc-card">
          <h3>Practise with AI as the buyer</h3>
          <p>A <strong>role-play</strong> is a practice conversation where the AI acts as the buyer. You type your answers. At the end, the AI gives you feedback. Good role-play prompts include:</p>
          <ul class="lc-list">
            <li>Who the buyer is, and what they care about</li>
            <li>Which objections to raise, one at a time</li>
            <li>A rule to stay in character and wait for your reply</li>
            <li>A request for honest feedback at the end, with one thing to improve</li>
          </ul>
          <p>Remember: the AI is not the real buyer. It may accept weak answers too easily. Its feedback can also include made-up facts about your product. Check every product claim against your real feature list.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: a role-play session</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Kavya sets up">"Play Meena Shah, Finance Head at Tulsi Textiles. Raise a price objection. Wait for my reply each time. Give feedback when I type END."</li>
              <li data-kind="answer" data-label="AI as Meena">"The demo was good. But this costs more than what we use now. Why should we pay more?"</li>
              <li data-kind="user" data-label="Kavya's first try">"I can give you 30% off if you sign today."</li>
              <li data-kind="warn" data-label="Mistake">Kavya jumped to a discount she cannot approve. She also used false urgency. She did not ask what Meena compares the price with.</li>
              <li data-kind="user" data-label="Kavya tries again">"That is fair. What are you comparing it with? And what does the 10-day close cost your team now?"</li>
              <li data-kind="answer" data-label="AI as Meena">"Our current software is cheap. But my team spends about 27 hours a month typing invoices."</li>
              <li data-kind="answer" data-label="AI feedback">"Good: you asked before answering. Improve: use her numbers. Also, tell her LedgerLite connects to every Indian bank."</li>
              <li data-kind="check" data-label="Kavya checks">The feedback is useful, but "every Indian bank" is not on LedgerLite's feature list. Kavya ignores that claim and keeps the rest.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Practise objections with the AI as your buyer. Change the brackets, send the prompt, then type your answers one by one.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">Let us do a sales role-play. You play the buyer. I am the sales rep.

        Buyer: [Meena Shah, Finance Head at Tulsi Textiles, Gujarat]. Careful with money, polite but direct.
        Situation: I just showed a demo of [LedgerLite, accounting software]. She liked it. Her pains: [month-end close takes about 10 days; 400+ invoices a month typed by hand].
        What I can offer: [a 14-day trial with her own invoices; a security document; a call with our founder]. I cannot approve discounts above [10%].

        Rules for you:
        1. Raise these objections one at a time: [price is higher than our current software], [we are busy until after Diwali], [I need to ask our MD].
        2. After each objection, stop and wait for my reply.
        3. React like a real buyer. If my answer is weak or pushy, push back.
        4. Stay in character until I type END.

        When I type END, step out of the role. Give me feedback in a table: objection, what I did well, one thing to improve, a better line I could say. Do not invent facts about my product.</pre>
            <ul class="ai-try-checks">
              <li>The AI raises one objection at a time and waits for you.</li>
              <li>Your answers ask a question before they give a solution.</li>
              <li>You did not offer a discount above your limit.</li>
              <li>The feedback does not add product claims you cannot prove.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Treat an objection as a question, not an attack. Listen, ask why, and answer with facts. If you do not know, say so and follow up by a set date. Practise with AI, but check its feedback like any other draft.
        </div>
      HTML
      starter_code: nil
    },
    8 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-sales">Sales & CRM</div>
          <h1 class="lc-title">Call Notes and Summaries with AI</h1>
        </div>
        <p class="lc-lead">After a call, you need clear notes: what the buyer said, what was decided, and who does what by when. AI can turn a long <strong>transcript</strong> (the written text of a call) into a short summary in seconds. But AI summaries can contain mistakes. They can change a number or turn a "maybe" into a "yes". In this lesson, you will learn what a good call summary contains and how to prompt for it. You will also learn to check it before it goes into your CRM (customer relationship management tool: where your team keeps records of customers and deals).</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 230" role="img" aria-label="Four steps: a 30-minute call transcript goes to an AI draft summary. You check numbers, names, dates and promises. Then the checked summary goes into the CRM and the follow-up email.">
            <defs><marker id="sc8a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="10" y="30" width="160" height="170" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="90" y="56" font-weight="700">Transcript</text>
              <text x="90" y="76" font-size="11" fill="#9b99b8">30-minute call</text>
              <rect x="30" y="92" width="120" height="8" rx="4" fill="#4b4a78"/>
              <rect x="30" y="110" width="100" height="8" rx="4" fill="#4b4a78"/>
              <rect x="30" y="128" width="115" height="8" rx="4" fill="#4b4a78"/>
              <rect x="30" y="146" width="90" height="8" rx="4" fill="#4b4a78"/>
              <rect x="30" y="164" width="110" height="8" rx="4" fill="#4b4a78"/>
              <rect x="203" y="30" width="160" height="170" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="283" y="56" font-weight="700">AI draft</text>
              <text x="283" y="76" font-size="11" fill="#9b99b8">summary</text>
              <g font-size="12" text-anchor="start"><text x="220" y="104">Pains</text><text x="220" y="126">Decisions</text><text x="220" y="148">Next steps</text><text x="220" y="170">Open questions</text></g>
              <rect x="396" y="30" width="160" height="170" rx="10" fill="#27274e" stroke="#f59e0b"/>
              <text x="476" y="56" font-weight="700" fill="#fcd34d">You check</text>
              <g font-size="12" text-anchor="start"><text x="416" y="92">Numbers</text><text x="416" y="116">Names</text><text x="416" y="140">Dates</text><text x="416" y="164">Promises</text></g>
              <g font-size="12" fill="#6ee7b7" text-anchor="start"><text x="520" y="92">✓</text><text x="520" y="116">✓</text><text x="520" y="140">✓</text><text x="520" y="164">✓</text></g>
              <text x="476" y="188" font-size="11" fill="#9b99b8">against the transcript</text>
              <rect x="589" y="30" width="160" height="170" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="669" y="56" font-weight="700">Use it</text>
              <rect x="609" y="80" width="120" height="40" rx="8" fill="#27274e"/><text x="669" y="105">CRM notes</text>
              <rect x="609" y="136" width="120" height="40" rx="8" fill="#27274e"/><text x="669" y="161">Follow-up</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#sc8a)">
                <line x1="172" y1="115" x2="199" y2="115"/>
                <line x1="365" y1="115" x2="392" y2="115"/>
                <line x1="558" y1="115" x2="585" y2="115"/>
              </g>
              <text x="380" y="222" font-size="12" fill="#9b99b8">The AI saves time on writing. You spend part of that time on checking.</text>
            </g>
          </svg>
          <figcaption>From transcript to CRM. The checking step is not optional.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>What a good call summary contains</h3>
          <p>Here is the end of Kavya's demo call with Meena Shah of Tulsi Textiles. The call was on Tuesday 6 October 2026.</p>
          <pre><code>Kavya: Last week you said the close takes about 10 days?
        Meena: Yes, 10 days. Sometimes 12 in March. We type all
               400-plus invoices twice: into Excel, then our software.
        Kavya: What happens when the close is late?
        Meena: Our MD wants the numbers by the 5th. We are often late.
        Kavya: Who decides on new software?
        Meena: The MD approves any new software. I will take it to him.
        Kavya: Would a trial help?
        Meena: Maybe in November. October is busy with Diwali orders.
        Kavya: I will send the security document and a quote by Thursday.
        Meena: Good. Send it to me. I will share it with our MD.</code></pre>
          <p>A good summary turns this into clear sections:</p>
          <table class="lc-table">
            <thead><tr><th>Section</th><th>From this call</th></tr></thead>
            <tbody>
              <tr><td><strong>Pains</strong> (with numbers)</td><td>Close takes about 10 days (up to 12 in March). 400+ invoices a month typed twice: into Excel, then the accounting software.</td></tr>
              <tr><td><strong>Impact</strong></td><td>The MD wants the numbers by the 5th of each month. The team is often late.</td></tr>
              <tr><td><strong>Decision process</strong></td><td>The MD approves any new software. Meena will share the documents with him.</td></tr>
              <tr><td><strong>Decisions made</strong></td><td>None yet. A trial is possible in November, not agreed.</td></tr>
              <tr><td><strong>Next steps</strong> (owner, date)</td><td>Kavya: send security document and quote to Meena by Thursday 8 October 2026.</td></tr>
              <tr><td><strong>Risks</strong></td><td>Busy season in October. Final decision is with someone not yet on the calls.</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Prompt for a summary you can trust</h3>
          <p>A weak prompt lets the AI decide what matters:</p>
          <pre><code>Summarise this call.</code></pre>
          <p>A better prompt sets the sections and asks for <strong>evidence</strong> (the exact line from the transcript that supports each point):</p>
          <pre><code>Summarise this sales call transcript for our CRM.
        Call date: Tuesday 6 October 2026.
        Sections: Pains (with numbers), Impact, Decision process,
        Decisions made, Next steps (owner + exact date), Risks,
        Open questions.
        For each decision and next step, quote the transcript line.
        Turn words like "Thursday" into full dates.
        If something was only a "maybe", label it MAYBE.
        If a section has nothing, write "Not discussed".
        Do not add anything that is not in the transcript.</code></pre>
          <p><strong>Privacy first.</strong> Transcripts contain names and business details. Use only an AI tool your company has approved for customer data. Do not paste call transcripts into a free public chatbot.</p>
        </div>
        <div class="lc-card">
          <h3>Check for these common mistakes</h3>
          <table class="lc-table">
            <thead><tr><th>Mistake</th><th>Example</th><th>How to catch it</th></tr></thead>
            <tbody>
              <tr><td>Wrong number</td><td>"40 invoices" instead of "400+"</td><td>Check every number against the transcript.</td></tr>
              <tr><td>"Maybe" becomes "yes"</td><td>"Meena agreed to a November trial"</td><td>Look for words like "maybe" and "let me think".</td></tr>
              <tr><td>Wrong person</td><td>The accounts lead approves, not the MD</td><td>Check who said what. Speaker labels can be wrong.</td></tr>
              <tr><td>Vague or wrong date</td><td>"Next week" or the wrong Thursday</td><td>Check the call date and a calendar.</td></tr>
              <tr><td>Invented next step</td><td>"Kavya to book a demo for the MD"</td><td>Every next step needs a quoted line.</td></tr>
              <tr><td>Missing objection</td><td>The busy October is left out</td><td>Skim the transcript for "but", "worried" and "not sure".</td></tr>
            </tbody>
          </table>
          <p>After checking, copy the summary into your CRM, such as Zoho CRM, HubSpot, Salesforce or Freshsales. Put the next step and date in the task field, so you get a reminder.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: check the AI summary</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">An AI summarised the Tulsi Textiles call above. Sort each line of its summary.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="ok" data-label="Correct"></div>
              <div data-sorter-target="bucket" data-bucket="fix" data-label="Wrong: fix it"></div>
              <div data-sorter-target="bucket" data-bucket="remove" data-label="Not said: remove it"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="ok" data-why="Meena said the team types all 400-plus invoices, first into Excel and then the software.">The team types 400+ invoices a month by hand.</li>
              <li data-bucket="fix" data-why="Meena said about 10 days, sometimes 12. The AI changed the number.">The month-end close takes about 1 day.</li>
              <li data-bucket="remove" data-why="Meena only said a trial was possible. Nobody agreed to buy anything.">Meena agreed to buy LedgerLite.</li>
              <li data-bucket="ok" data-why="Meena said the MD approves any new software.">The MD approves any new software.</li>
              <li data-bucket="fix" data-why="Kavya sends the documents to Meena. Rohit is not part of this deal.">Kavya to send the quote to Rohit by Thursday.</li>
              <li data-bucket="ok" data-why="The call was on Tuesday 6 October, so Thursday is 8 October 2026.">Kavya to send the security document by Thursday 8 October 2026.</li>
              <li data-bucket="remove" data-why="Nobody said this. The AI filled a gap with a guess.">Tulsi Textiles will stop using Excel next week.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask the AI to summarise a call with evidence for each point. Use the sample transcript, or replace it with a practice transcript that has no real customer data.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a careful sales assistant. Summarise this sales call for our CRM.
        Call date: [Tuesday 6 October 2026]. Rep: [Kavya, LedgerLite]. Buyer: [Meena Shah, Tulsi Textiles].

        Transcript:
        [Kavya: Last week you said the close takes about 10 days?
        Meena: Yes, 10 days. Sometimes 12 in March. We type all 400-plus invoices twice: into Excel, then our software.
        Kavya: What happens when the close is late?
        Meena: Our MD wants the numbers by the 5th. We are often late.
        Kavya: Who decides on new software?
        Meena: The MD approves any new software. I will take it to him.
        Kavya: Would a trial help?
        Meena: Maybe in November. October is busy with Diwali orders.
        Kavya: I will send the security document and a quote by Thursday.
        Meena: Good. Send it to me. I will share it with our MD.]

        Output these sections: Pains (with numbers), Impact, Decision process, Decisions made, Next steps (owner, exact date), Risks, Open questions.
        Rules:
        - For each decision and next step, quote the transcript line.
        - Change words like "Thursday" into full dates using the call date.
        - Label anything uncertain as MAYBE.
        - If a section has nothing, write "Not discussed".
        - Do not add anything that is not in the transcript.</pre>
            <ul class="ai-try-checks">
              <li>Numbers match the transcript: about 10 days (12 in March), 400+ invoices, the 5th of the month.</li>
              <li>The November trial is labelled MAYBE, not agreed.</li>
              <li>"Thursday" became Thursday 8 October 2026.</li>
              <li>Every next step has an owner and a quoted line.</li>
              <li>Nothing appears that was not said on the call.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> AI writes the summary. You own the facts. Ask for set sections and a quoted line for each next step. Then check numbers, names, dates and promises before the summary goes into your CRM.
        </div>
      HTML
      starter_code: nil
    },
    9 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-sales">Sales & CRM</div>
          <h1 class="lc-title">Follow-Up Emails After a Call</h1>
        </div>
        <p class="lc-lead">A <strong>follow-up email</strong> is the message you send after a sales call. It reminds the buyer what you discussed and what happens next. It also gives the buyer something to forward to others, such as their boss. In this lesson, you will learn the four parts of a good follow-up: recap, value, next steps and attachments. You will use AI to draft it from your checked call notes. You will also learn why sending it the same day matters.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 250" role="img" aria-label="A same-day timeline: the demo call ends at 11:30 am, notes are checked by 12:00, AI drafts the email by 12:15, you edit and attach files by 12:40, and you send before 5 pm. Below are the four parts of the email: thanks and recap, value in her numbers, next steps with owners and dates, and attachments.">
            <defs><marker id="sc9a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12.5" fill="#e2e0f0" text-anchor="middle">
              <text x="380" y="22" font-weight="700" fill="#fdba74">Same day, while the call is fresh</text>
              <rect x="10" y="36" width="132" height="62" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="76" y="60" fill="#c4b5fd">11:30 am</text><text x="76" y="82">Call ends</text>
              <rect x="162" y="36" width="132" height="62" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="228" y="60" fill="#93c5fd">12:00 pm</text><text x="228" y="82">Notes checked</text>
              <rect x="314" y="36" width="132" height="62" rx="10" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="380" y="60" fill="#67e8f9">12:15 pm</text><text x="380" y="82">AI drafts email</text>
              <rect x="466" y="36" width="132" height="62" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="532" y="60" fill="#fcd34d">12:40 pm</text><text x="532" y="82">You edit, attach</text>
              <rect x="618" y="36" width="132" height="62" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="684" y="60" fill="#6ee7b7">Before 5 pm</text><text x="684" y="82">Send, log in CRM</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#sc9a)">
                <line x1="143" y1="67" x2="158" y2="67"/>
                <line x1="295" y1="67" x2="310" y2="67"/>
                <line x1="447" y1="67" x2="462" y2="67"/>
                <line x1="599" y1="67" x2="614" y2="67"/>
              </g>
              <text x="380" y="130" font-weight="700" fill="#fdba74">The four parts of the email</text>
              <rect x="10" y="146" width="170" height="84" rx="10" fill="#27274e" stroke="#8b5cf6"/>
              <text x="95" y="176" font-weight="700">1. Recap</text><text x="95" y="198" font-size="11" fill="#9b99b8">Thanks, what you heard</text>
              <rect x="200" y="146" width="170" height="84" rx="10" fill="#27274e" stroke="#3b82f6"/>
              <text x="285" y="176" font-weight="700">2. Value</text><text x="285" y="198" font-size="11" fill="#9b99b8">In her words and numbers</text>
              <rect x="390" y="146" width="170" height="84" rx="10" fill="#27274e" stroke="#f59e0b"/>
              <text x="475" y="176" font-weight="700">3. Next steps</text><text x="475" y="198" font-size="11" fill="#9b99b8">Who, what, by when</text>
              <rect x="580" y="146" width="170" height="84" rx="10" fill="#27274e" stroke="#10b981"/>
              <text x="665" y="176" font-weight="700">4. Attachments</text><text x="665" y="198" font-size="11" fill="#9b99b8">Only what you promised</text>
            </g>
          </svg>
          <figcaption>Kavya's day after her demo call with Meena Shah on Tuesday 6 October. The email goes out the same day.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Why the same day?</h3>
          <p>After a call, both of you remember the details. A same-day email shows you are organised and that you keep promises. It also catches mistakes early. If you wrote down the wrong date, the buyer can correct it now.</p>
          <p>The buyer may forward your email to others, such as the MD. So write it so that someone who was <em>not</em> on the call can understand it.</p>
          <table class="lc-table">
            <thead><tr><th>Part</th><th>What to write</th><th>For Meena</th></tr></thead>
            <tbody>
              <tr><td><strong>Recap</strong></td><td>2 or 3 points you heard, in the buyer's words</td><td>10-day close, 400+ invoices typed by hand</td></tr>
              <tr><td><strong>Value</strong></td><td>How your product helps with those points. No promises you cannot keep.</td><td>Invoice reading and a month-end checklist, tested in a trial with her own invoices</td></tr>
              <tr><td><strong>Next steps</strong></td><td>Each task with an owner and a date</td><td>Kavya promised the documents by Thursday 8 October. They are ready, so she attaches them today. Meena shares them with the MD. Kavya calls on Monday 12 October.</td></tr>
              <tr><td><strong>Attachments</strong></td><td>Only the files you promised, with clear names</td><td>Security overview and quote (PDF)</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>A sample follow-up email</h3>
          <pre><code>Subject: Tulsi Textiles and LedgerLite: notes and next steps

        Hi Meena,

        Thank you for your time today. Here is a short recap.

        What I heard:
        - Your month-end close takes about 10 days (up to 12 in March).
        - Your team types 400+ invoices a month twice: into Excel,
          then into your accounting software.
        - Your MD wants the numbers by the 5th, and the close often
          runs late.

        How LedgerLite can help:
        - Invoice reading can cut the typing work. A trial with your own
          invoices will show how much time it saves your team.
        - The month-end checklist shows what is done and what is late.

        Next steps:
        - Me: I promised the security overview and quote by Thursday
          8 October. They are ready, so they are attached.
        - You: share them with your MD this week.
        - Me: I will call you on Monday 12 October at 11 am for his
          questions.
        - Trial: we can plan it for November, after your Diwali orders.

        Attached: LedgerLite_Security_Overview.pdf,
        Quote_TulsiTextiles_Oct2026.pdf

        Thanks again,
        Kavya
        LedgerLite</code></pre>
          <p>Notice what is <strong>not</strong> in the email. There is no "save 50% of your time" claim, and no pressure. The trial is not called "agreed", because Meena only said "maybe".</p>
        </div>
        <div class="lc-card">
          <h3>Draft with AI, then check</h3>
          <p>A weak prompt gives the AI nothing true to work with:</p>
          <pre><code>Write a follow-up email to Meena after our call.</code></pre>
          <p>The AI will guess what happened. It may invent benefits or next steps. Instead, paste your <strong>checked</strong> summary and set rules:</p>
          <pre><code>Write a follow-up email from Kavya (LedgerLite) to Meena Shah.
        Use only these checked notes: [paste your checked summary].
        Parts: subject line, recap (3 bullets), how we can help
        (2 bullets), next steps (owner + date), attachments list.
        Rules: under 180 words, warm and simple, no pressure, no
        promises of results. Mark anything uncertain as "to confirm".</code></pre>
          <p>Before you press Send, check:</p>
          <ul class="lc-list">
            <li><strong>Files:</strong> are they really attached? Do they open? Is it the right version of the quote?</li>
            <li><strong>Dates:</strong> is each date correct, with the day and the date?</li>
            <li><strong>Promises:</strong> does the email promise anything you did not agree on the call?</li>
            <li><strong>People:</strong> are the right people in To and CC? Ask before you add the buyer's boss.</li>
          </ul>
          <p>After sending, log the email in your CRM. Add a task for the next step, such as the call on Monday 12 October.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: from call to sent email</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put Kavya's steps in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">At the end of the call, say the next steps aloud and agree them with Meena</li>
              <li data-order="2">Check the AI call summary against the transcript</li>
              <li data-order="3">Ask the AI to draft the follow-up email from the checked summary</li>
              <li data-order="4">Edit the draft: fix the tone and remove anything not agreed</li>
              <li data-order="5">Attach the security overview and quote, and check that they open</li>
              <li data-order="6">Send the email the same day</li>
              <li data-order="7">Log it in the CRM with a task for the Monday call</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Draft a follow-up email from call notes. Replace the notes in brackets with your own checked notes, or leave them to see an example.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a helpful sales writing assistant. Write a follow-up email after a sales call.

        From: [Kavya, sales rep at LedgerLite, accounting software, Karnataka]
        To: [Meena Shah, Finance Head, Tulsi Textiles, Gujarat]
        Call date: [Tuesday 6 October 2026]

        Checked call notes (use only these facts):
        - Pains: [month-end close takes about 10 days, up to 12 in March; 400+ invoices a month typed twice, into Excel and then the accounting software]
        - Impact: [the MD wants the numbers by the 5th; the close often runs late]
        - Decision: [the MD approves any new software]
        - Next steps agreed: [Kavya sends the security overview and quote by Thursday 8 October (they are ready, so attach them now); Meena shares them with the MD this week; Kavya calls Meena on Monday 12 October at 11 am]
        - Maybe: [a trial in November, after Diwali orders]

        Write: a clear subject line, a short thank-you, a recap (3 bullets), how we can help (2 bullets), next steps (owner and date for each), and a list of attachments.
        Rules: under 180 words. Warm, simple English. No pressure and no promised results. Do not call the "Maybe" item agreed. Do not add any fact that is not in the notes.</pre>
            <ul class="ai-try-checks">
              <li>Every next step has an owner and a date.</li>
              <li>The trial is written as a possibility, not a decision.</li>
              <li>No invented numbers, such as "save 50% of your time".</li>
              <li>The email is under 180 words and easy to forward.</li>
              <li>You still need to attach the real files before sending.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A good follow-up is short, true and sent the same day. Build it from checked notes, never from memory alone. Recap their words, link your value to their pain, and end with clear next steps with owners and dates.
        </div>
      HTML
      starter_code: nil
    },
    10 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-sales">Sales & CRM</div>
          <h1 class="lc-title">Call Recording and Transcripts</h1>
        </div>
        <p class="lc-lead">Recording a sales call lets you check what was really said. A transcript turns the recording into text that AI can summarise. But recordings contain people's voices and personal details. So you need <strong>consent</strong> (the person's clear agreement), careful checking and safe storage. In this lesson, you will learn how to ask for consent and how recording rules differ between places. You will see why transcripts often go wrong with Indian accents and mixed languages. You will also learn to keep recordings private. This lesson is general education, not legal advice.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 250" role="img" aria-label="On the left, a consent line said at the start of the call: Is it OK if I record this call for my notes? If the answer is no, take notes by hand. On the right, four steps: record only with a yes, transcribe with an approved tool, check names, numbers and languages, then store with limited access and delete after a set time.">
            <defs><marker id="sc10a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="10" y="20" width="250" height="210" rx="12" fill="#1f1f44" stroke="#fb923c"/>
              <text x="135" y="46" font-weight="700" fill="#fdba74">At the start of the call</text>
              <rect x="26" y="60" width="218" height="86" rx="10" fill="#27274e"/>
              <g font-size="12"><text x="135" y="84">"Is it OK if I record this</text><text x="135" y="104">call for my notes? It stays</text><text x="135" y="124">inside LedgerLite."</text></g>
              <text x="135" y="174" fill="#6ee7b7">Yes: note it, then record</text>
              <text x="135" y="200" fill="#fca5a5">No: take notes by hand</text>
              <rect x="300" y="40" width="200" height="64" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="400" y="67" font-weight="700">1. Record</text><text x="400" y="88" font-size="11" fill="#9b99b8">only after a clear yes</text>
              <rect x="540" y="40" width="200" height="64" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="640" y="67" font-weight="700">2. Transcribe</text><text x="640" y="88" font-size="11" fill="#9b99b8">with an approved tool</text>
              <rect x="540" y="150" width="200" height="64" rx="10" fill="#27274e" stroke="#f59e0b"/>
              <text x="640" y="177" font-weight="700">3. Check</text><text x="640" y="198" font-size="11" fill="#9b99b8">names, numbers, languages</text>
              <rect x="300" y="150" width="200" height="64" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="400" y="177" font-weight="700">4. Store, then delete</text><text x="400" y="198" font-size="11" fill="#9b99b8">limited access, set time</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#sc10a)">
                <line x1="262" y1="72" x2="296" y2="72"/>
                <line x1="502" y1="72" x2="536" y2="72"/>
                <line x1="640" y1="106" x2="640" y2="146"/>
                <line x1="538" y1="182" x2="504" y2="182"/>
              </g>
            </g>
          </svg>
          <figcaption>Consent comes first. After that, check the transcript and store the recording safely.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Consent first (not legal advice)</h3>
          <p>Rules about recording calls are different in each country. In some countries, such as the US, they also differ by state. Two terms help you understand them:</p>
          <ul class="lc-list">
            <li><strong>One-party consent:</strong> only one person on the call must agree. That person can be you.</li>
            <li><strong>All-party consent</strong> (often called two-party consent): everyone on the call must agree.</li>
          </ul>
          <table class="lc-table">
            <thead><tr><th>Place</th><th>General picture</th></tr></thead>
            <tbody>
              <tr><td>India</td><td>There is no single law just for recording calls. But a recording of a person is personal data under the DPDP Act 2023 (Digital Personal Data Protection Act). The Act and the DPDP Rules 2025 expect clear notice, a stated purpose and consent. Their duties start in phases, with most due by 2027. Check the current dates.</td></tr>
              <tr><td>United States</td><td>Federal law and many states use one-party consent. Some states, such as California, need all parties to agree.</td></tr>
              <tr><td>EU and UK</td><td>Data protection laws (GDPR and UK GDPR) apply. You must tell people about the recording and have a lawful reason for it.</td></tr>
            </tbody>
          </table>
          <p>When a call crosses states or countries, the stricter rule may apply. So the simple and honest habit is this: <strong>tell everyone and ask at the start, every time</strong>. Note the "yes" in your CRM. If someone says no, or asks you to stop, stop recording.</p>
          <p>This also applies to AI note-taker bots that join video meetings. Tell people before the bot joins. Some companies do not allow these bots. Respect that.</p>
          <p>This is general information, not legal advice. Rules change. Ask your company's legal team or a qualified lawyer about your exact situation.</p>
        </div>
        <div class="lc-card">
          <h3>Transcription tools and accuracy</h3>
          <p>You can get transcripts from several kinds of tools. Many video meeting apps, such as Zoom, Microsoft Teams and Google Meet, have transcription features. Their availability depends on your plan and admin settings. These apps usually show a notice when recording or transcription starts. A notice on the screen does not replace asking people first. There are also AI note-taker apps and call-recording tools built for sales teams. Check each tool's current help pages for features, languages and data storage.</p>
          <p>No transcript is perfect. Errors are more common with accents, mixed languages, fast speech and poor networks. Here is what often goes wrong on Indian calls:</p>
          <table class="lc-table">
            <thead><tr><th>Problem</th><th>Example</th><th>What to do</th></tr></thead>
            <tbody>
              <tr><td>Names and places</td><td>"Tulsi" becomes "Tulsa". "LedgerLite" becomes "Ledger Light".</td><td>Add a word list if your tool allows it. Check names.</td></tr>
              <tr><td>Numbers</td><td>"four hundred" becomes "40". "1 lakh" becomes "one luck".</td><td>Check every number against the recording.</td></tr>
              <tr><td>Mixed languages</td><td>A Hindi or Gujarati phrase in an English sentence is dropped or wrong.</td><td>Choose a tool that supports your languages. Mark unclear parts.</td></tr>
              <tr><td>Speaker labels</td><td>Kavya's promise is shown as Meena's words.</td><td>Check who said each promise.</td></tr>
              <tr><td>Missing parts</td><td>Two people talk at once, or the network drops.</td><td>Listen to that part again.</td></tr>
            </tbody>
          </table>
          <p>Simple habits help: use a headset mic, let one person speak at a time, and repeat key numbers. For example: "So that is four hundred invoices, 4-0-0?"</p>
        </div>
        <div class="lc-card">
          <h3>Keep recordings private</h3>
          <ul class="lc-list">
            <li><strong>Use approved tools only.</strong> Do not paste transcripts into a free public AI chatbot.</li>
            <li><strong>Limit access.</strong> Only people who need the recording should see it.</li>
            <li><strong>Remove extra personal data.</strong> For example, a phone number or bank detail said on the call.</li>
            <li><strong>Keep it for a set time.</strong> Follow your company's retention rule (how long data is kept), then delete it.</li>
            <li><strong>Use it only for the stated purpose.</strong> Do not use a buyer's words in marketing without asking them first.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Activity: good practice or not?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each recording habit.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="good" data-label="Good practice"></div>
              <div data-sorter-target="bucket" data-bucket="check" data-label="Check the rules first"></div>
              <div data-sorter-target="bucket" data-bucket="bad" data-label="Not OK"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="good" data-why="Clear notice and a clear yes, written down. This is the honest habit.">Asking "Is it OK if I record?" at the start and noting the yes in the CRM</li>
              <li data-bucket="bad" data-why="Secret recording breaks trust. Personal data rules also expect notice and consent.">Recording secretly because "only one person needs to agree"</li>
              <li data-bucket="check" data-why="Rules differ between countries, and some places need everyone on the call to agree. Ask everyone, and check the rules with your legal team.">Recording a call with a buyer in another country</li>
              <li data-bucket="bad" data-why="This puts private customer data into a tool your company has not approved.">Pasting a transcript with a buyer's phone number into a free public chatbot</li>
              <li data-bucket="good" data-why="An approved tool and a set retention time keep the data safe.">Using the company's approved tool and deleting recordings after the set time</li>
              <li data-bucket="bad" data-why="People must know a bot is recording. Tell everyone before it joins.">Letting an AI note-taker bot join a buyer's meeting without telling anyone</li>
              <li data-bucket="check" data-why="Coaching may be fine if your consent line mentioned training. Check your notice and company policy first.">Sharing a clip of the call with your manager for coaching</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask the AI to clean up a messy transcript and flag the parts a person must check. The sample has typical errors from a mixed-language Indian call.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a careful transcript editor for a sales team in India.
        Below is a machine transcript of a sales call. It has errors from accents, mixed Hindi, Gujarati and English, and a poor network.

        Known names and terms: [Kavya (LedgerLite), Meena Shah, Tulsi Textiles, Gujarat, MD, GST, lakh, Diwali].

        Transcript:
        [Kavya: Is it okay if I record this for my notes?
        Meena: Haan, fine.
        Kavya: So the close takes about ten days?
        Meena: Ten, sometimes twelve in March. We type all the for hundred invoices two times.
        Meena: Emdee sir wants the numbers by the fifth. Our old software costs less than one luck.
        Meena: Abhi Diwali ka time hai, thoda busy hai.
        Kavya: I will send the quote by [inaudible].
        Meena: Tulsa textiles sir at office mein bhej do.
        Meena: Saru, pachhi vaat kariye.]

        Do this:
        1. Fix clear errors using the known names and terms.
        2. Translate non-English phrases into English in brackets.
        3. Make a table: original text, your fix, confidence (high, medium or low).
        4. List every part a person must check against the recording, including all numbers and any [inaudible] part.
        Rules: do not guess missing words. Mark unclear parts as [CHECK].</pre>
            <ul class="ai-try-checks">
              <li>"for hundred" becomes 400, but it is still listed for checking.</li>
              <li>"one luck" becomes 1 lakh, and "Emdee" becomes MD.</li>
              <li>The [inaudible] date is marked [CHECK], not guessed.</li>
              <li>Hindi and Gujarati phrases have English translations in brackets.</li>
              <li>The consent at the start is kept in the clean transcript.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Ask before you record, every time, even where the law may not require it. Treat every transcript as a draft: names, numbers and mixed-language parts often go wrong. Keep recordings in approved tools, for a set time, and only for the stated purpose.
        </div>
      HTML
      starter_code: nil
    },
    11 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-sales">Sales & CRM</div>
          <h1 class="lc-title">Finding Patterns in Many Calls</h1>
        </div>
        <p class="lc-lead">One sales call tells you a story. Forty calls can show you a pattern. In this lesson, you will learn to find the <strong>objections</strong>, <strong>competitor mentions</strong> and <strong>customer questions</strong> that come up again and again. You will use AI to summarise and tag many calls. Then you will count the results in a spreadsheet and check them yourself. You will also learn to do this safely, without leaking private customer data.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="A five-step workflow: 40 call notes, remove private data, one row per call, tag themes, count and check. Below it, a bar chart of the top objections in 40 calls: rate per parcel too high in 14 calls, COD payout too slow in 9, pickup cut-off too early in 7, and return handling unclear in 5.">
            <defs><marker id="sc11a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="380" y="24" font-weight="700">From 40 calls to clear patterns</text>
              <rect x="10" y="40" width="128" height="60" rx="8" fill="#27274e" stroke="#8b5cf6"/>
              <text x="74" y="66">40 call notes</text>
              <text x="74" y="86" font-size="11" fill="#9b99b8">last month</text>
              <rect x="160" y="40" width="128" height="60" rx="8" fill="#27274e" stroke="#ec4899"/>
              <text x="224" y="66">Remove private</text>
              <text x="224" y="86" font-size="11" fill="#9b99b8">names, phones</text>
              <rect x="310" y="40" width="128" height="60" rx="8" fill="#27274e" stroke="#3b82f6"/>
              <text x="374" y="66">One row per call</text>
              <text x="374" y="86" font-size="11" fill="#9b99b8">same template</text>
              <rect x="460" y="40" width="128" height="60" rx="8" fill="#27274e" stroke="#22d3ee"/>
              <text x="524" y="66">Tag themes</text>
              <text x="524" y="86" font-size="11" fill="#9b99b8">AI suggests</text>
              <rect x="610" y="40" width="128" height="60" rx="8" fill="#27274e" stroke="#10b981"/>
              <text x="674" y="66">Count and check</text>
              <text x="674" y="86" font-size="11" fill="#9b99b8">you, in a sheet</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#sc11a)">
                <line x1="140" y1="70" x2="157" y2="70"/>
                <line x1="290" y1="70" x2="307" y2="70"/>
                <line x1="440" y1="70" x2="457" y2="70"/>
                <line x1="590" y1="70" x2="607" y2="70"/>
              </g>
              <rect x="10" y="120" width="740" height="170" rx="12" fill="#1f1f44" stroke="#4b4a78"/>
              <text x="380" y="144" font-size="12.5" fill="#9b99b8">Top objections in Rohit's 40 calls (one call can have more than one)</text>
              <g text-anchor="start">
                <text x="30" y="175">Rate per parcel too high</text>
                <rect x="230" y="160" width="392" height="22" rx="4" fill="#f59e0b"/>
                <text x="632" y="175">14 calls (35%)</text>
                <text x="30" y="207">COD payout too slow</text>
                <rect x="230" y="192" width="252" height="22" rx="4" fill="#ec4899"/>
                <text x="492" y="207">9 calls (22.5%)</text>
                <text x="30" y="239">Pickup cut-off too early</text>
                <rect x="230" y="224" width="196" height="22" rx="4" fill="#3b82f6"/>
                <text x="436" y="239">7 calls (17.5%)</text>
                <text x="30" y="271">Return handling unclear</text>
                <rect x="230" y="256" width="140" height="22" rx="4" fill="#8b5cf6"/>
                <text x="380" y="271">5 calls (12.5%)</text>
              </g>
            </g>
          </svg>
          <figcaption>AI helps with the middle steps. You do the first step (remove private data) and the last step (count and check).</figcaption>
        </figure>
        <div class="lc-card">
          <h3>What to look for in many calls</h3>
          <p>Rohit is the sales manager at Nimbus Logistics, a delivery company in India. His team sells delivery contracts to online stores. Last month, his team had 40 recorded discovery calls. He wants to know what customers say again and again. He looks for four kinds of patterns.</p>
          <table class="lc-table">
            <thead><tr><th>Pattern</th><th>What it means</th><th>Example from a Nimbus call</th></tr></thead>
            <tbody>
              <tr><td><strong>Objection</strong></td><td>A reason the customer gives for not buying, or not buying now</td><td>"Your rate per parcel is higher than our current courier."</td></tr>
              <tr><td><strong>Competitor mention</strong></td><td>The customer names another company they use or are talking to</td><td>"Competitor A pays our COD money the next day."</td></tr>
              <tr><td><strong>Customer question</strong></td><td>Something the customer wants to know before they decide</td><td>"Can you pick up from our Secaucus warehouse after 7 pm?"</td></tr>
              <tr><td><strong>Customer words</strong></td><td>The exact words customers use for their problems</td><td>"Too many RTOs." (RTO: return to origin, a parcel that comes back undelivered)</td></tr>
            </tbody>
          </table>
          <p>COD means cash on delivery. The courier collects cash from the buyer. Later, it pays that money to the store. This payment is the <strong>COD payout</strong>. Online stores care a lot about how fast it arrives.</p>
          <p>Patterns help the whole team. Rohit can improve the answer to the most common objection. He can add common questions to the sales FAQ. He can also send useful feedback to the pricing and product teams.</p>
        </div>
        <div class="lc-card">
          <h3>Summarise many calls safely</h3>
          <p>Call transcripts contain personal data: names, phone numbers, email addresses and sometimes bank details. Follow these rules before you use AI on many calls.</p>
          <ul class="lc-list">
            <li><strong>Use only calls with recording consent.</strong> The customer agreed to the recording at the start of the call.</li>
            <li><strong>Use a company-approved AI tool.</strong> Do not paste transcripts into a free public chatbot. Your company should check how the tool stores data and whether it trains on it.</li>
            <li><strong>Remove private details first.</strong> Replace names with call IDs (C01 to C40). Delete phone numbers, email addresses and addresses. Many transcription tools can hide some of these for you. Check the tool's current help pages.</li>
            <li><strong>Summarise each call into the same template.</strong> Short, fixed fields are easier to count than long transcripts.</li>
          </ul>
          <p>Rohit asks AI to fill this template for each call. It uses the customer's own words where possible.</p>
          <pre><code>Call ID: C07
        Date: 14 Sep 2026
        Store type: online saree store, about 300 orders a month
        Objections (customer's words): "We cannot wait 7 days for COD money."
        Competitors mentioned: Competitor A
        Questions asked: Do you pick up on Sundays?
        Next step: pricing call on 21 Sep 2026
        Not clear from the call: monthly return rate</code></pre>
          <p>The last field is important. It tells the AI to say what it does not know, instead of guessing.</p>
        </div>
        <div class="lc-card">
          <h3>Tag, count and check</h3>
          <p>Rohit puts the 40 rows into a spreadsheet. Then he asks AI to suggest themes.</p>
          <pre><code>Weak:
        Here are 40 calls. What are customers saying?</code></pre>
          <pre><code>Better:
        You are a sales analyst. Below are 40 call summaries, one per line,
        with call IDs. Names are removed.
        1. Suggest 4 to 6 objection themes. Give each a short name.
        2. For each theme, list the call IDs where it appears.
        3. Give one short quote per theme, copied exactly from the summaries.
        4. Only use what is written. If a theme appears in one call only, say so.
        [paste the 40 rows]</code></pre>
          <p>The AI suggests themes. Rohit then adds a "theme" column (column E) and counts it himself with a formula. If a call has several themes, he lists them all in the same cell, separated by commas. This formula counts rows in column E that contain the word "rate":</p>
          <pre><code>=COUNTIF(E2:E41,"*rate*")</code></pre>
          <p>The star (*) means "any text before or after". It works the same way in Excel and Google Sheets, and it ignores capital letters. It also matches words like "separate", so keep theme names short and clear. To get the share of calls, divide by the number of calls: <code>=14/40</code> gives 0.35, which is 35%.</p>
          <table class="lc-table">
            <thead><tr><th>Objection theme</th><th>Calls</th><th>Share of 40 calls</th></tr></thead>
            <tbody>
              <tr><td>Rate per parcel too high</td><td>14</td><td>14 ÷ 40 = 35%</td></tr>
              <tr><td>COD payout too slow</td><td>9</td><td>9 ÷ 40 = 22.5%</td></tr>
              <tr><td>Pickup cut-off too early</td><td>7</td><td>7 ÷ 40 = 17.5%</td></tr>
              <tr><td>Return handling unclear</td><td>5</td><td>5 ÷ 40 = 12.5%</td></tr>
            </tbody>
          </table>
          <p>The shares do not need to add up to 100%. Here they add up to 87.5%. One call can have several objections, and some calls have none. Competitor mentions were also common: Competitor A came up in 11 calls, and Competitor B in 4.</p>
          <p><strong>What Rohit checks:</strong></p>
          <ul class="lc-list">
            <li><strong>The words.</strong> The AI wrote: "Most customers complain about price." But 14 of 40 is 35%. It is the top theme, but it is not "most".</li>
            <li><strong>The quotes.</strong> He opens 2 or 3 calls for each theme. He makes sure each quote is real and means what the AI says.</li>
            <li><strong>The sample.</strong> These are only recorded calls from one month, mostly with stores in one state. The pattern may not be true for every region.</li>
            <li><strong>The next action.</strong> He improves the team's answer about rate per parcel. He asks finance if faster COD payouts are possible. Until finance says yes, nobody promises faster payouts on a call.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Activity: tag the customer's words</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">These lines come from Nimbus Logistics calls. Put each line in the right group.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="obj" data-label="Objection"></div>
              <div data-sorter-target="bucket" data-bucket="comp" data-label="Competitor mention"></div>
              <div data-sorter-target="bucket" data-bucket="q" data-label="Customer question"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="obj" data-why="The customer gives a reason not to switch: the price is higher.">"Your rate per parcel is ₹8 higher than what we pay now."</li>
              <li data-bucket="obj" data-why="The customer states a problem with your offer. That is an objection about the COD payout time.">"We cannot wait 7 days for our COD money."</li>
              <li data-bucket="comp" data-why="The customer names another company they already use.">"We already use Competitor B for our Gujarat orders."</li>
              <li data-bucket="comp" data-why="The customer talks about what a competitor offers. Count it as a competitor mention.">"Competitor A's app shows live tracking to our buyers."</li>
              <li data-bucket="q" data-why="The customer wants information before deciding. It is not a reason to say no.">"Do you pick up from Secaucus warehouses on Sundays?"</li>
              <li data-bucket="q" data-why="This is a question about how the service works. Add it to the sales FAQ.">"How does a refused parcel come back to us?"</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Give AI six short, anonymised call notes and ask it to find the patterns. Then count the calls yourself and compare.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a sales analyst. Below are short notes from [6] sales calls for [Nimbus Logistics, a company in India that sells delivery contracts to online stores]. Names and contact details are already removed.

        C01: Rate per parcel feels high. Asked about Sunday pickups. Uses Competitor A.
        C02: Wants COD money faster than 7 days. Asked how returns are picked up.
        C03: Price is fine. Worried about damaged parcels. Mentioned Competitor B.
        C04: Rate is higher than current courier. Wants COD payout in 2 days. Uses Competitor A.
        C05: Asked if we deliver to pin codes in the North-East. No objections yet.
        C06: Rate per parcel is high. Asked how refused parcels come back.

        Tasks:
        1. Make a table of objection themes: theme, number of calls, call IDs, one short quote copied from the notes.
        2. Make the same kind of table for competitor mentions and for customer questions.
        3. Use only what is in the notes. Do not guess. If a theme appears in one call only, say so.
        4. Suggest 2 actions for the sales manager. For each, say what he should check before acting.
        Use simple English. Keep it short.</pre>
            <ul class="ai-try-checks">
              <li>The price theme should have 3 calls: C01, C04 and C06. C03 said price is fine, so it must not be counted.</li>
              <li>The COD payout theme should have 2 calls (C02, C04). Competitor A should have 2 calls, and Competitor B 1 call.</li>
              <li>Every quote should appear in the notes, word for word.</li>
              <li>The actions should not promise anything to customers, such as faster payouts, before the company agrees.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A pattern comes from counting, not from a feeling. Let AI summarise and suggest themes. Then count with a formula, read a few source calls, and remove private data before any of it reaches an AI tool.
        </div>
      HTML
      starter_code: nil
    },
    12 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-sales">Sales & CRM</div>
          <h1 class="lc-title">Coaching with Call Reviews</h1>
        </div>
        <p class="lc-lead">A <strong>call review</strong> is when a manager or a teammate listens to a sales call and gives feedback. Good reviews help reps improve fast. Poor reviews feel like blame and change nothing. In this lesson, you will build a simple <strong>scorecard</strong>, use AI to draft a review with evidence, give feedback that helps, and use AI as a practice partner.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="A call review dashboard for Imran's call with GreenLeaf Organics. Six criteria are scored out of 5: opening and agenda 4, discovery questions 2, listening 2, value linked to pain 3, objection handling 3, clear next step 4. Talk time: Imran 26 minutes, customer 12 minutes, so the rep's share is 68 percent. Total score 18 out of 30.">
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <rect x="10" y="10" width="470" height="280" rx="12" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="245" y="36" text-anchor="middle" font-weight="700">Call review: Imran with GreenLeaf Organics</text>
              <text x="30" y="60" font-size="11" fill="#9b99b8">Criterion</text>
              <text x="220" y="60" font-size="11" fill="#9b99b8">Score (1 to 5)</text>
              <text x="410" y="60" font-size="11" fill="#9b99b8">Evidence</text>
              <text x="30" y="90">Opening and agenda</text>
              <g fill="#8b5cf6"><rect x="220" y="74" width="22" height="22" rx="4"/><rect x="248" y="74" width="22" height="22" rx="4"/><rect x="276" y="74" width="22" height="22" rx="4"/><rect x="304" y="74" width="22" height="22" rx="4"/></g>
              <rect x="332" y="74" width="22" height="22" rx="4" fill="#27274e" stroke="#4b4a78"/>
              <text x="366" y="90">4/5</text><text x="410" y="90" font-size="11" fill="#9b99b8">clear</text>
              <text x="30" y="124">Discovery questions</text>
              <g fill="#ec4899"><rect x="220" y="108" width="22" height="22" rx="4"/><rect x="248" y="108" width="22" height="22" rx="4"/></g>
              <g fill="#27274e" stroke="#4b4a78"><rect x="276" y="108" width="22" height="22" rx="4"/><rect x="304" y="108" width="22" height="22" rx="4"/><rect x="332" y="108" width="22" height="22" rx="4"/></g>
              <text x="366" y="124">2/5</text><text x="410" y="124" font-size="11" fill="#9b99b8">closed Qs</text>
              <text x="30" y="158">Listening</text>
              <g fill="#ec4899"><rect x="220" y="142" width="22" height="22" rx="4"/><rect x="248" y="142" width="22" height="22" rx="4"/></g>
              <g fill="#27274e" stroke="#4b4a78"><rect x="276" y="142" width="22" height="22" rx="4"/><rect x="304" y="142" width="22" height="22" rx="4"/><rect x="332" y="142" width="22" height="22" rx="4"/></g>
              <text x="366" y="158">2/5</text><text x="410" y="158" font-size="11" fill="#9b99b8">68% talk</text>
              <text x="30" y="192">Value linked to pain</text>
              <g fill="#f59e0b"><rect x="220" y="176" width="22" height="22" rx="4"/><rect x="248" y="176" width="22" height="22" rx="4"/><rect x="276" y="176" width="22" height="22" rx="4"/></g>
              <g fill="#27274e" stroke="#4b4a78"><rect x="304" y="176" width="22" height="22" rx="4"/><rect x="332" y="176" width="22" height="22" rx="4"/></g>
              <text x="366" y="192">3/5</text><text x="410" y="192" font-size="11" fill="#9b99b8">partial</text>
              <text x="30" y="226">Objection handling</text>
              <g fill="#f59e0b"><rect x="220" y="210" width="22" height="22" rx="4"/><rect x="248" y="210" width="22" height="22" rx="4"/><rect x="276" y="210" width="22" height="22" rx="4"/></g>
              <g fill="#27274e" stroke="#4b4a78"><rect x="304" y="210" width="22" height="22" rx="4"/><rect x="332" y="210" width="22" height="22" rx="4"/></g>
              <text x="366" y="226">3/5</text><text x="410" y="226" font-size="11" fill="#9b99b8">no proof</text>
              <text x="30" y="260">Clear next step</text>
              <g fill="#10b981"><rect x="220" y="244" width="22" height="22" rx="4"/><rect x="248" y="244" width="22" height="22" rx="4"/><rect x="276" y="244" width="22" height="22" rx="4"/><rect x="304" y="244" width="22" height="22" rx="4"/></g>
              <rect x="332" y="244" width="22" height="22" rx="4" fill="#27274e" stroke="#4b4a78"/>
              <text x="366" y="260">4/5</text><text x="410" y="260" font-size="11" fill="#9b99b8">date set</text>
              <rect x="500" y="10" width="250" height="280" rx="12" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="625" y="36" text-anchor="middle" font-weight="700">Talk time</text>
              <text x="625" y="58" text-anchor="middle" font-size="11" fill="#9b99b8">38 minutes of speech</text>
              <text x="515" y="86">Imran (rep)</text>
              <rect x="515" y="94" width="150" height="20" rx="4" fill="#ec4899"/>
              <text x="673" y="109">26 min</text>
              <text x="515" y="138">Customer</text>
              <rect x="515" y="146" width="70" height="20" rx="4" fill="#10b981"/>
              <text x="593" y="161">12 min</text>
              <text x="625" y="198" text-anchor="middle">Rep share: 26 ÷ 38 = 68%</text>
              <text x="625" y="236" text-anchor="middle" font-size="11" fill="#9b99b8">Total score</text>
              <text x="625" y="268" text-anchor="middle" font-size="22" font-weight="700" fill="#fcd34d">18 / 30</text>
            </g>
          </svg>
          <figcaption>A scorecard turns "that call felt weak" into clear facts. Here, the two lowest scores show Rohit what to coach first.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Build a simple scorecard</h3>
          <p>A <strong>scorecard</strong> is a short list of things a good call should do. Each item gets a score from 1 to 5. Each item also has a clear description of what "good" looks like. Everyone on the team uses the same scorecard, so reviews are fair.</p>
          <p>Rohit, the sales manager at Nimbus Logistics, uses this scorecard for discovery calls (first calls to learn the customer's needs):</p>
          <table class="lc-table">
            <thead><tr><th>Criterion</th><th>What a 5 looks like</th><th>Evidence to look for</th></tr></thead>
            <tbody>
              <tr><td>Opening and agenda</td><td>Asks consent to record, sets the goal and the time, checks the plan with the customer</td><td>"We have 30 minutes. Does this plan work for you?"</td></tr>
              <tr><td>Discovery questions</td><td>Open questions about process, pain, impact and decision process</td><td>"Walk me through what happens when an order is returned."</td></tr>
              <tr><td>Listening</td><td>Lets the customer finish, asks follow-up questions, sums up</td><td>"So returns cost you most in the festive season. Is that right?"</td></tr>
              <tr><td>Value linked to pain</td><td>Talks about features only after a pain is clear, and links them to it</td><td>"You said COD money is slow. Here is how our payout works."</td></tr>
              <tr><td>Objection handling</td><td>Stays calm, asks why, answers with facts, offers proof</td><td>"Can I ask what you compare our rate with?"</td></tr>
              <tr><td>Clear next step</td><td>A next step with an owner, a date and a time</td><td>"Pricing call on Friday at 4 pm with your founder."</td></tr>
            </tbody>
          </table>
          <p>The <strong>talk-to-listen ratio</strong> compares the rep's talk time with the customer's. The rep's <strong>talk share</strong> shows how much of the speaking time the rep used. In Imran's call, Imran spoke for 26 minutes and the customer spoke for 12 minutes. The ratio is 26 : 12. The rep's share is 26 ÷ (26 + 12) = 26 ÷ 38 = 68%. In discovery calls, many teams want the customer to talk more than the rep. Set your own team's target. Look at the trend over several calls, not one.</p>
        </div>
        <div class="lc-card">
          <h3>Let AI draft the review, then check it</h3>
          <p>Imran, a rep in Rohit's team, had a discovery call with Ravi, the operations head of GreenLeaf Organics, Punjab. The call was recorded with consent. The transcript is in the company's approved call tool. Rohit asks AI for a first draft of the review.</p>
          <pre><code>Weak:
        Rate this sales call out of 10.</code></pre>
          <pre><code>Better:
        You are a sales coach. Score this discovery call with the scorecard below.
        For each criterion: give a score from 1 to 5, a timestamp,
        and a short quote from the transcript as evidence.
        If there is not enough evidence, write "not enough evidence".
        Do not guess. Then list the 2 lowest scores and why.
        Scorecard: [paste the scorecard]
        Transcript: [paste the transcript]</code></pre>
          <p>The AI gives a draft in a few seconds. But Rohit still checks it, because AI can make these mistakes:</p>
          <ul class="lc-list">
            <li><strong>Wrong speaker.</strong> Transcripts sometimes mix up who said what. A great question may belong to the customer, not the rep.</li>
            <li><strong>Missed tone.</strong> AI cannot always tell a joke, a pause or a friendly tone from the text.</li>
            <li><strong>Too kind or too harsh.</strong> AI scores can change from one run to the next. Rohit plays each quoted moment and fixes any score he disagrees with.</li>
          </ul>
          <p>Tell your team how call recordings are used for coaching. Follow your company's rules on who can listen to them.</p>
        </div>
        <div class="lc-card">
          <h3>Give feedback that helps</h3>
          <p>Ask the rep to score their own call first. People accept feedback more easily when they found the problem themselves. Then share one or two strengths and <strong>one</strong> thing to change. A long list of mistakes is hard to act on.</p>
          <table class="lc-table">
            <thead><tr><th>Weak feedback</th><th>Helpful feedback</th></tr></thead>
            <tbody>
              <tr><td>"Your discovery was weak. Talk less."</td><td>"At 06:10, Ravi said returns are his biggest cost. You moved to our price list. Next time, ask: 'How many orders came back last month, and what did that cost you?'"</td></tr>
              <tr><td>"Good call, well done."</td><td>"Your next step was strong. You set Friday at 4 pm, and you invited the founder. Keep doing that."</td></tr>
              <tr><td>"Handle price better."</td><td>"When Ravi said the rate was high, you said 'Our service is better.' Try asking what he compares it with first."</td></tr>
            </tbody>
          </table>
          <p><strong>AI as a practice partner.</strong> After the review, Imran practises the one change. He asks AI to play the customer:</p>
          <pre><code>Act as Ravi, operations head of GreenLeaf Organics, an online store
        in Punjab that sells organic food. You get many returns.
        You are busy and a little doubtful. Answer my discovery questions
        in 1 to 3 sentences. Do not give away your problems unless I ask
        good follow-up questions. When I type END, score my questions
        from 1 to 5 and tell me one question I should have asked.</code></pre>
          <p>Role-play is practice, not a real customer. Real people will surprise you. Use it to build the habit, then check the next real call.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: run a coaching review</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put Rohit's coaching steps in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Pick one recent recorded call and tell Imran which call you will review.</li>
              <li data-order="2">Imran scores his own call with the team scorecard.</li>
              <li data-order="3">AI drafts scores, with a timestamp and a quote for each criterion.</li>
              <li data-order="4">Rohit plays each quoted moment and fixes any wrong scores.</li>
              <li data-order="5">In a one-to-one meeting, Rohit shares one strength and one thing to change.</li>
              <li data-order="6">Imran practises the change in an AI role-play, and Rohit reviews his next real call.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to review a short, made-up call excerpt with a scorecard. Then check its quotes and scores yourself.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a fair and specific sales coach. Review this discovery call excerpt with the scorecard below.

        Scorecard (score each 1 to 5, with a short quote as evidence):
        1. Opening and agenda  2. Discovery questions  3. Listening
        4. Value linked to pain  5. Objection handling  6. Clear next step

        Excerpt: [Imran], a rep at [Nimbus Logistics, a delivery company], talks to [Ravi, operations head of GreenLeaf Organics, an online store in Punjab].
        [00:30] Imran: Thanks for your time. Let me tell you about Nimbus. We cover a lot of pin codes.
        [03:10] Ravi: Our real problem is returns. Many orders come back.
        [03:20] Imran: We handle returns too. Our rate is ₹42 per parcel.
        [04:05] Ravi: Your rate is higher than what we pay now.
        [04:15] Imran: But our service is better. Everyone says so.
        [05:00] Imran: I'll send the proposal. Let's talk soon.

        Give me:
        1. A table: criterion, score, quote, reason. Then the total out of 30.
        2. If the excerpt is too short to judge a criterion, write "not enough evidence". Do not guess.
        3. One strength and the one most important change, with a better line Imran could say.
        4. A 5-minute practice drill for that change.</pre>
            <ul class="ai-try-checks">
              <li>Every quote in the table appears in the excerpt, word for word.</li>
              <li>The total adds up correctly. If a criterion has "not enough evidence", the total should say how many criteria were scored.</li>
              <li>It notices that "Let's talk soon" has no date or owner, and that "Everyone says so" is not proof.</li>
              <li>The feedback focuses on one main change and is specific, not rude.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A good call review uses evidence, not opinion. AI can draft scores fast, but the manager checks every quote. The rep then works on one change at a time and practises it before the next real call.
        </div>
      HTML
      starter_code: nil
    },
    13 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-sales">Sales & CRM</div>
          <h1 class="lc-title">Negotiation and Closing Calls</h1>
        </div>
        <p class="lc-lead">A <strong>negotiation call</strong> is where you and the buyer agree on price, terms and what is included. A <strong>closing call</strong> is where you ask for a clear decision and agree how to sign. In this lesson, you will plan discounts with real maths, trade them for something useful, ask good closing questions, and avoid promises you cannot keep. AI helps you prepare and practise. You check every number and every claim.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 280" role="img" aria-label="Four price options for Tulsi Textiles, 10 users per year. List price 1,20,000 rupees. Option A, 20 percent off with nothing back, 96,000 rupees. Option B, 10 percent off for a 2-year term, 1,08,000 rupees a year. Option C, list price plus free onboarding, 1,20,000 rupees. A dashed line marks Kavya's limit of 10 percent off, 1,08,000 rupees. Option A's price is below this line, so its discount is bigger than Kavya can give.">
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <text x="380" y="24" text-anchor="middle" font-size="12.5" fill="#9b99b8">Tulsi Textiles, 10 users, price per year (made-up prices, before tax)</text>
              <text x="20" y="64">List price</text>
              <text x="20" y="80" font-size="11" fill="#9b99b8">10 × ₹1,000 × 12</text>
              <rect x="250" y="50" width="400" height="32" rx="4" fill="#3b82f6"/>
              <text x="262" y="71" fill="#ffffff" font-weight="700">₹1,20,000</text>
              <text x="20" y="114">A: 20% off</text>
              <text x="20" y="130" font-size="11" fill="#9b99b8">get nothing back</text>
              <rect x="250" y="100" width="320" height="32" rx="4" fill="#ec4899"/>
              <text x="262" y="121" fill="#ffffff" font-weight="700">₹96,000</text>
              <text x="20" y="164">B: 10% off</text>
              <text x="20" y="180" font-size="11" fill="#9b99b8">get a 2-year term</text>
              <rect x="250" y="150" width="360" height="32" rx="4" fill="#10b981"/>
              <text x="262" y="171" fill="#ffffff" font-weight="700">₹1,08,000</text>
              <text x="20" y="214">C: list price</text>
              <text x="20" y="230" font-size="11" fill="#9b99b8">+ free onboarding</text>
              <rect x="250" y="200" width="400" height="32" rx="4" fill="#8b5cf6"/>
              <text x="262" y="221" fill="#ffffff" font-weight="700">₹1,20,000</text>
              <line x1="610" y1="42" x2="610" y2="242" stroke="#f59e0b" stroke-width="2" stroke-dasharray="6 4"/>
              <text x="610" y="264" text-anchor="middle" fill="#fcd34d">Kavya's limit: 10% off = ₹1,08,000</text>
            </g>
          </svg>
          <figcaption>Option A gives away ₹24,000 and gets nothing back. Its 20% discount is also above Kavya's 10% limit. Options B and C trade something for something.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Prepare before the call</h3>
          <p>Kavya is a sales rep at LedgerLite, an accounting software startup in Karnataka. Her prospect is Meena Shah, Finance Head of Tulsi Textiles, Gujarat. Their month-end close takes about 10 days. The month-end close is the work of checking and finishing the month's accounts. The team also processes 400+ invoices a month. After the demo, Meena's team did LedgerLite's free 14-day trial in November, after Diwali. Now Meena wants a lower price.</p>
          <p>Before the negotiation call, Kavya writes down these five things:</p>
          <table class="lc-table">
            <thead><tr><th>Item</th><th>What it means</th><th>Kavya's answer (made-up numbers)</th></tr></thead>
            <tbody>
              <tr><td><strong>List price</strong></td><td>The normal price</td><td>₹1,000 per user per month. 10 users × ₹1,000 × 12 months = ₹1,20,000 a year, before tax.</td></tr>
              <tr><td><strong>Discount limit</strong></td><td>The most discount you can give without asking your manager</td><td>10%. Above that, Arjun (the founder) must approve.</td></tr>
              <tr><td><strong>Walk-away point</strong></td><td>The weakest deal you will accept. Below it, you say no politely.</td><td>No more than 10% off, and only with something in return</td></tr>
              <tr><td><strong>Things to trade</strong></td><td>Things you can give, and things you can ask for</td><td>Give: free onboarding, a small discount. Get: a 2-year term, a decision by a date, a case study.</td></tr>
              <tr><td><strong>Decision process</strong></td><td>Who decides and who signs on the buyer's side</td><td>Meena recommends. The MD (managing director) approves any new software.</td></tr>
            </tbody>
          </table>
          <p>Know the decision process early. If only the MD can approve, invite the MD to the closing call. Otherwise, Meena may agree, and the deal still stops later.</p>
        </div>
        <div class="lc-card">
          <h3>Discounts and value: do the maths</h3>
          <p>A good rule is <strong>"give and get"</strong>. Never give a discount for nothing. Every discount should get you something back. Here are Kavya's options. You can check each one in a spreadsheet.</p>
          <table class="lc-table">
            <thead><tr><th>Option</th><th>Formula</th><th>Price per year</th><th>LedgerLite gets</th></tr></thead>
            <tbody>
              <tr><td>A: 20% off</td><td><code>=120000*(1-20%)</code></td><td>₹96,000</td><td>Nothing. Gives away ₹24,000.</td></tr>
              <tr><td>B: 10% off, 2-year term</td><td><code>=120000*(1-10%)</code></td><td>₹1,08,000 (₹2,16,000 over 2 years)</td><td>A second year of business</td></tr>
              <tr><td>C: list price + free onboarding</td><td><code>=120000</code></td><td>₹1,20,000</td><td>Full price. Onboarding costs the team some time.</td></tr>
              <tr><td>D: start with 8 users</td><td><code>=8*1000*12</code></td><td>₹96,000</td><td>Full price per user. More users can join later.</td></tr>
            </tbody>
          </table>
          <p>Look at option B closely. Over two years, Tulsi saves ₹12,000 a year, so ₹24,000 in total. That is the same total discount as option A. But in option B, LedgerLite also gets a second year.</p>
          <p><strong>Talk about value, not only price.</strong> Use the buyer's own numbers. Today, Meena's team types each invoice into Excel and then into their accounting software. That takes about 4 minutes per invoice. During the free trial, her team timed some invoices in LedgerLite. Each took about 1 minute. So the time saved each month is:</p>
          <pre><code>=400*(4-1)/60      → 20 hours a month
        =400*(4-1)/60*12   → 240 hours a year</code></pre>
          <p>These are Meena's trial numbers, not a promise. Say that clearly on the call. Real results may be different.</p>
          <pre><code>Weak prompt:
        Write a script to make Meena sign today.</code></pre>
          <pre><code>Better prompt:
        Help me prepare an honest negotiation call. Deal: [10 users,
        ₹1,20,000 a year]. Buyer wants [20% off]. My limit is [10%].
        I can trade [2-year term, free onboarding, fewer users].
        Give 3 give-and-get options with the maths shown step by step.
        Use only the value numbers I give. Mark anything unsure as [check].</code></pre>
        </div>
        <div class="lc-card">
          <h3>Closing questions, and no over-promising</h3>
          <p>A <strong>closing question</strong> asks for a clear decision or the next step to a decision. It should be calm and direct. It should not trick or push the buyer.</p>
          <ul class="lc-list">
            <li>"Does option B work for you and your MD?"</li>
            <li>"Is anything stopping you from signing by 15 December?"</li>
            <li>"Who else needs to see the contract before you sign?"</li>
            <li>"If we agree on the price today, what are the next steps on your side?"</li>
          </ul>
          <p>Under pressure, reps often promise too much. The deal closes, but the customer is angry later. Change risky promises into honest ones:</p>
          <table class="lc-table">
            <thead><tr><th>Over-promise</th><th>Honest version</th></tr></thead>
            <tbody>
              <tr><td>"LedgerLite will cut your close to 3 days."</td><td>"In your trial, invoice entry took about 1 minute instead of 4. Let's set a close-time goal together and check it after 60 days."</td></tr>
              <tr><td>"The GST report you asked for is coming next month."</td><td>"It is on our plan, but I cannot promise a date. Please decide based on what works today."</td></tr>
              <tr><td>"I can give you 20% if you sign today."</td><td>"I can offer 10% off for a two-year plan. This offer is open until 15 December."</td></tr>
            </tbody>
          </table>
          <p>After the call, write the agreed terms in an email the same day. This avoids confusion later.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: check the AI's negotiation plan</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Kavya asks">Meena from Tulsi Textiles wants 20% off our 10-user plan. The plan is ₹1,20,000 a year. My limit is 10%. Give me options and what to say.</li>
              <li data-kind="answer" data-label="AI replies">Option 1: give 20% off, so the price becomes ₹1,00,000. Option 2: 10% off for a 2-year deal. Tell her: "LedgerLite will cut your month-end close from 10 days to 3."</li>
              <li data-kind="tool" data-label="Spreadsheet">Kavya types <code>=120000*(1-20%)</code> into a cell.</li>
              <li data-kind="result" data-label="Spreadsheet shows">96000</li>
              <li data-kind="warn" data-label="Mistake 1">The AI's maths was wrong. 20% off ₹1,20,000 is ₹96,000, not ₹1,00,000. Also, 20% is above Kavya's limit.</li>
              <li data-kind="warn" data-label="Mistake 2">The "3 days" claim is not proven. The trial only measured invoice entry time. Kavya deletes this line.</li>
              <li data-kind="check" data-label="Kavya decides">She asks Arjun about her plan. He agrees: 10% off only with a two-year term. She writes options B and C into her call plan, with two closing questions.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to build an honest negotiation plan, then practise the call in a role-play. Change the details in [brackets], or leave them to see the example.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a B2B negotiation coach. Help me prepare an honest negotiation call.

        Deal: [LedgerLite accounting software, 10 users at ₹1,000 per user per month, so ₹1,20,000 a year before tax].
        Buyer: [Meena Shah, Finance Head, Tulsi Textiles, Gujarat]. [The MD approves any new software.]
        Buyer's ask: [20% off, or they will stay with their current software].
        My limit: [up to 10% off without approval].
        Things I can trade: [2-year term, free onboarding, start with fewer users].
        Value from the trial (buyer's own numbers): [invoice entry fell from about 4 minutes to about 1 minute; 400 invoices a month].

        Please give me:
        1. Three give-and-get options. Show the price maths step by step.
        2. The hours saved per month, using only the numbers above.
        3. A calm answer to the 20% request, under 60 words.
        4. Two closing questions.
        5. A list of things I must not promise.
        Then ask if I want to role-play. If I say yes, act as the buyer and push back on price. Stay in character until I type STOP. Then give me 3 points of feedback.</pre>
            <ul class="ai-try-checks">
              <li>Check the maths: 10% off ₹1,20,000 is ₹1,08,000, and 20% off is ₹96,000.</li>
              <li>Hours saved: 400 × (4 − 1) ÷ 60 is 20 hours a month.</li>
              <li>Every discount gets something back, and no option goes above the 10% limit without approval.</li>
              <li>It does not promise a close time, future features or results the trial did not show.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Never give a discount for nothing. Trade it for something useful, like a longer term or a clear decision date. Check every number in a spreadsheet, and promise only what is true today.
        </div>
      HTML
      starter_code: nil
    },
    14 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-sales">Sales & CRM</div>
          <h1 class="lc-title">Ethics on Sales Calls</h1>
        </div>
        <p class="lc-lead">Ethics means doing what is honest and fair, even when nobody checks. On sales calls, this means true claims, no pressure tactics, and respect for people's choices and data. Honest selling builds trust, repeat business and referrals. In this lesson, you will learn a simple test for claims, spot pressure tactics, and learn the basic rules on recording, calls and data. You will also see how AI can help, and where it can cause harm.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 270" role="img" aria-label="A decision tree for anything you say or do on a call. Is it true today? If no, do not say it. Can you prove it? If no, check first. Did they agree, to recording or to calls? If no, ask first. If all three are yes, go ahead.">
            <defs><marker id="sc14a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="380" y="24" font-weight="700">Before you say it or do it on a call, ask three questions</text>
              <rect x="10" y="44" width="170" height="64" rx="10" fill="#27274e" stroke="#3b82f6"/>
              <text x="95" y="72">Is it true today?</text>
              <text x="95" y="92" font-size="11" fill="#9b99b8">true now, not a plan</text>
              <rect x="210" y="44" width="170" height="64" rx="10" fill="#27274e" stroke="#8b5cf6"/>
              <text x="295" y="72">Can you prove it?</text>
              <text x="295" y="92" font-size="11" fill="#9b99b8">data, contract, case</text>
              <rect x="410" y="44" width="170" height="64" rx="10" fill="#27274e" stroke="#22d3ee"/>
              <text x="495" y="72">Did they agree?</text>
              <text x="495" y="92" font-size="11" fill="#9b99b8">to recording, to calls</text>
              <rect x="610" y="44" width="140" height="64" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="680" y="72" fill="#6ee7b7" font-weight="700">Go ahead</text>
              <text x="680" y="92" font-size="11" fill="#9b99b8">honest and fair</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#sc14a)">
                <line x1="182" y1="76" x2="207" y2="76"/>
                <line x1="382" y1="76" x2="407" y2="76"/>
                <line x1="582" y1="76" x2="607" y2="76"/>
                <line x1="95" y1="110" x2="95" y2="166"/>
                <line x1="295" y1="110" x2="295" y2="166"/>
                <line x1="495" y1="110" x2="495" y2="166"/>
              </g>
              <g font-size="11" fill="#9b99b8">
                <text x="195" y="68">Yes</text>
                <text x="395" y="68">Yes</text>
                <text x="595" y="68">Yes</text>
                <text x="112" y="142">No</text>
                <text x="312" y="142">No</text>
                <text x="512" y="142">No</text>
              </g>
              <rect x="10" y="170" width="170" height="60" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="95" y="196" fill="#f9a8d4" font-weight="700">Don't say it</text>
              <text x="95" y="216" font-size="11" fill="#9b99b8">fix or drop the claim</text>
              <rect x="210" y="170" width="170" height="60" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="295" y="196" fill="#fcd34d" font-weight="700">Check first</text>
              <text x="295" y="216" font-size="11" fill="#9b99b8">or say you'll confirm</text>
              <rect x="410" y="170" width="170" height="60" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="495" y="196" fill="#fcd34d" font-weight="700">Ask first</text>
              <text x="495" y="216" font-size="11" fill="#9b99b8">or stop</text>
              <text x="380" y="258" font-size="11" fill="#9b99b8">Rules on consent and calls differ by country. This is not legal advice.</text>
            </g>
          </svg>
          <figcaption>Three quick questions catch most problems: false claims, claims without proof, and actions without consent.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Honest claims</h3>
          <p>A <strong>claim</strong> is anything you state as a fact: about your product, your results, your price or a competitor. Every claim should be true today, and you should be able to show proof.</p>
          <table class="lc-table">
            <thead><tr><th>Risky claim</th><th>Why it is a problem</th><th>Honest version</th></tr></thead>
            <tbody>
              <tr><td>"Our customers close their books in 3 days."</td><td>Based on one customer only</td><td>"One customer, a trading firm, now closes in about 4 days. Your result may differ."</td></tr>
              <tr><td>"We are the fastest courier in India."</td><td>Cannot be proved</td><td>"Last quarter, 9 out of 10 of our Maharashtra parcels arrived on the promised day." (Only if your data shows this.)</td></tr>
              <tr><td>"Competitor A loses parcels all the time."</td><td>Unfair and unproven</td><td>"Here is our lost-parcel policy. Compare it with what you have today."</td></tr>
              <tr><td>"Yes, we support that bank's format."</td><td>Said without checking</td><td>"I am not sure. I will check and email you by Thursday."</td></tr>
            </tbody>
          </table>
          <p>AI tools can invent facts that sound real. If AI writes a claim in your call plan or email, check it against real data before you use it. "I don't know yet, but I will find out" is a strong answer, not a weak one.</p>
        </div>
        <div class="lc-card">
          <h3>No pressure tactics</h3>
          <p>A <strong>pressure tactic</strong> pushes people to decide before they are ready, often using fear or false facts. Common examples:</p>
          <ul class="lc-list">
            <li><strong>Fake deadlines.</strong> "This price ends tonight," when it does not.</li>
            <li><strong>Fake scarcity.</strong> "Only 2 slots left," when there are many.</li>
            <li><strong>Not accepting "no".</strong> Calling again and again after the person said no.</li>
            <li><strong>Hiding costs.</strong> Leaving out setup fees or extra charges until the contract.</li>
            <li><strong>Skipping the decision maker.</strong> Pushing someone to sign before the person who must approve has seen it.</li>
          </ul>
          <p>Real urgency is fine when it is true and you explain why. Sweet Crumbs, a home bakery in Maharashtra, sells office catering. It can honestly say: "Your party is on 20 November. We need final numbers by 16 November, because we buy fresh ingredients for each order."</p>
          <pre><code>Weak prompt:
        Write a closing script that makes the customer feel they must buy today.</code></pre>
          <pre><code>Better prompt:
        Write an honest closing script for [Sweet Crumbs office catering].
        Use only these facts: [menu, price per person, order deadline and reason].
        No fake deadlines, no fake scarcity, no claims I did not give you.
        End with one calm question that asks for a decision.</code></pre>
        </div>
        <div class="lc-card">
          <h3>Recording, calls and data rules (not legal advice)</h3>
          <p>This section is general education, not legal advice. Laws change and differ by country. Ask your company's legal team or a qualified lawyer before you set your process.</p>
          <ul class="lc-list">
            <li><strong>Recording and AI notetakers.</strong> Tell everyone at the start that the call is recorded and why. Say so if an AI notetaker (a tool that joins the call and writes notes) is present. Ask if that is OK. If someone says no, stop the recording. Some places require every person on the call to agree.</li>
            <li><strong>Personal data in India.</strong> The Digital Personal Data Protection (DPDP) Act, 2023 and the DPDP Rules, 2025 cover personal data. In general, you need a clear purpose and usually consent. Use the data only for that purpose, keep it safe, and delete it when you no longer need it. The Rules come into force in stages, so check the current status.</li>
            <li><strong>Sales calls and SMS in India.</strong> TRAI (the telecom regulator) has rules on commercial calls and messages, called TCCCPR. People can block unwanted sales calls and SMS by registering on DND (Do Not Disturb). The official name of this list is the National Customer Preference Register (NCPR). Businesses that make promotional calls or send promotional SMS must register and follow these rules. TRAI updates them often. Check the current rules before any calling campaign.</li>
            <li><strong>Other countries.</strong> The GDPR covers personal data of people in the EU. In the US, the CAN-SPAM Act sets rules for commercial emails, such as a clear way to opt out. Local rules may apply too.</li>
            <li><strong>AI tools.</strong> Use only company-approved tools for call recordings and transcripts. Never paste a customer's private details into a free public chatbot.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Activity: fair or not?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each action on a sales call. Is it honest and fair, or not OK?</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="ok" data-label="Honest and fair"></div>
              <div data-sorter-target="bucket" data-bucket="bad" data-label="Not OK"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="ok" data-why="She tells the customer about the recording and gives them a real choice.">At the start, Kavya says the call is recorded for her notes and asks if that is OK.</li>
              <li data-bucket="ok" data-why="She admits she does not know and gives a clear date to answer. That is honest.">Kavya says: "I don't know if we support that bank's format. I'll check and email you by Thursday."</li>
              <li data-bucket="ok" data-why="The deadline is real, and the reason is explained.">Sweet Crumbs asks for final numbers by 16 November because it buys fresh ingredients for each order.</li>
              <li data-bucket="bad" data-why="This is fake scarcity. It is a false fact used to push a decision.">A rep says "Only 2 onboarding slots left this month" when the team has many free slots.</li>
              <li data-bucket="bad" data-why="The customer must know that a tool is recording and writing notes. Ask first.">A rep adds an AI notetaker to the call without telling the customer.</li>
              <li data-bucket="bad" data-why="One customer's result is not proof for all customers. It is a misleading claim.">A rep says "Our customers close their books in 3 days" because one customer did.</li>
              <li data-bucket="bad" data-why="Free public chatbots are not approved for private customer data. Remove details and use approved tools.">A rep pastes a full call transcript, with phone numbers, into a free public AI chatbot.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to review a made-up call script for honesty, pressure and consent problems, and to rewrite it. Remember that AI's answer is not legal advice.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a sales ethics reviewer. Read this call script from [a sales rep at Nimbus Logistics, a delivery company in India that sells to online stores]. Find the problems and rewrite it honestly.

        Script:
        "Hi, this is [Imran] from Nimbus. I'm recording this call. We are the fastest courier in India. From next month, our COD payouts will be next-day. Only 3 contract slots are left at this price, so you must decide today. Everyone who switched to us cut their returns by half. I got your number from a list, so I'll keep calling until we find a time."

        Please:
        1. Make a table with 3 columns: line from the script, the problem (unproven claim, pressure tactic, or consent and data issue), and a better honest line.
        2. Rewrite the whole script in under 120 words. Ask for consent to record. Use only claims I can prove. Use a deadline only if I give a real one. My real deadline: [none].
        3. List 3 questions I should ask my manager or legal team before using the script, for example about consent and DND rules.
        Say clearly that your answer is not legal advice.</pre>
            <ul class="ai-try-checks">
              <li>It flags "fastest courier in India", the future COD promise, "only 3 slots", "cut returns by half" and the repeated calls.</li>
              <li>It notices that the rep announces recording but does not ask for consent.</li>
              <li>The rewrite has no deadline, because no real deadline was given.</li>
              <li>It says clearly that this is not legal advice.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Honest selling is good selling. If a claim is not true today, you cannot prove it, or the person did not agree, do not say it or do it. Rules differ by country, so check your process with your legal team.
        </div>
      HTML
      starter_code: nil
    },
    15 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-sales">Sales & CRM</div>
          <h1 class="lc-title">Capstone: Plan, Run and Review a Sales Call</h1>
        </div>
        <p class="lc-lead">In this capstone, you will use everything from this course on one sales call. You will follow Kavya from LedgerLite through her discovery call with Meena Shah, Finance Head of Tulsi Textiles, Gujarat. You will make five things: a prep brief, a question plan, a call summary, a follow-up email and a coaching scorecard. At each step, AI does the first draft. You check the facts, names, numbers and promises.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 250" role="img" aria-label="Five capstone steps. Before the call: 1 prep brief, 2 question plan. After the call: 3 call summary, 4 follow-up email, 5 scorecard. Under each step is what you check: facts are real, open not leading, names and dates, no new promises, quotes match.">
            <defs><marker id="sc15a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="380" y="22" font-size="12" fill="#9b99b8">Tulsi Textiles, Gujarat · Meena Shah, Finance Head · 10-day close · 400+ invoices a month</text>
              <text x="150" y="48" font-size="12" font-weight="700" fill="#93c5fd">Before the call</text>
              <text x="522" y="48" font-size="12" font-weight="700" fill="#6ee7b7">After the call</text>
              <rect x="10" y="60" width="128" height="64" rx="8" fill="#27274e" stroke="#3b82f6"/>
              <text x="74" y="88">1. Prep brief</text>
              <text x="74" y="108" font-size="11" fill="#9b99b8">goals, agenda</text>
              <rect x="159" y="60" width="128" height="64" rx="8" fill="#27274e" stroke="#3b82f6"/>
              <text x="223" y="88">2. Question plan</text>
              <text x="223" y="108" font-size="11" fill="#9b99b8">open questions</text>
              <rect x="308" y="60" width="128" height="64" rx="8" fill="#27274e" stroke="#10b981"/>
              <text x="372" y="88">3. Call summary</text>
              <text x="372" y="108" font-size="11" fill="#9b99b8">owners, dates</text>
              <rect x="457" y="60" width="128" height="64" rx="8" fill="#27274e" stroke="#10b981"/>
              <text x="521" y="88">4. Follow-up</text>
              <text x="521" y="108" font-size="11" fill="#9b99b8">email, same day</text>
              <rect x="606" y="60" width="128" height="64" rx="8" fill="#27274e" stroke="#10b981"/>
              <text x="670" y="88">5. Scorecard</text>
              <text x="670" y="108" font-size="11" fill="#9b99b8">score, feedback</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#sc15a)">
                <line x1="140" y1="92" x2="156" y2="92"/>
                <line x1="289" y1="92" x2="305" y2="92"/>
                <line x1="438" y1="92" x2="454" y2="92"/>
                <line x1="587" y1="92" x2="603" y2="92"/>
              </g>
              <g stroke="#4b4a78" stroke-width="1.5" stroke-dasharray="4 3">
                <line x1="74" y1="126" x2="74" y2="164"/>
                <line x1="223" y1="126" x2="223" y2="164"/>
                <line x1="372" y1="126" x2="372" y2="164"/>
                <line x1="521" y1="126" x2="521" y2="164"/>
                <line x1="670" y1="126" x2="670" y2="164"/>
              </g>
              <text x="10" y="150" text-anchor="start" font-size="11" fill="#9b99b8">You check:</text>
              <g font-size="12" fill="#fcd34d">
                <rect x="10" y="166" width="128" height="40" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
                <text x="74" y="191">facts are real</text>
                <rect x="159" y="166" width="128" height="40" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
                <text x="223" y="191">open, not leading</text>
                <rect x="308" y="166" width="128" height="40" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
                <text x="372" y="191">names, dates</text>
                <rect x="457" y="166" width="128" height="40" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
                <text x="521" y="191">no new promises</text>
                <rect x="606" y="166" width="128" height="40" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
                <text x="670" y="191">quotes match</text>
              </g>
              <text x="380" y="236" font-size="11" fill="#9b99b8">AI drafts each part. You check it before the customer sees it.</text>
            </g>
          </svg>
          <figcaption>Five outputs, one call. Each output has one main thing you must check yourself.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The project</h3>
          <p>Kavya is a sales rep at LedgerLite, an accounting software startup in Karnataka. Meena Shah sent LedgerLite an enquiry. It says two things: the month-end close takes about 10 days, and the team processes 400+ invoices a month. The month-end close is the work of checking and finishing the month's accounts. The discovery call is on Thursday 1 October 2026 at 3 pm, for 30 minutes. All names and details are made up.</p>
          <table class="lc-table">
            <thead><tr><th>Part</th><th>What you make</th><th>AI helps with</th><th>You must check</th></tr></thead>
            <tbody>
              <tr><td>1. Prep brief</td><td>One page: account, people, goal, agenda, likely objections</td><td>Structure, likely objections</td><td>Every fact comes from a real source. Guesses are marked.</td></tr>
              <tr><td>2. Question plan</td><td>6 open questions</td><td>Ideas and wording</td><td>Questions are open, not leading. They fit this customer.</td></tr>
              <tr><td>3. Call summary</td><td>Pains, decisions, next steps with owners and dates</td><td>First draft from the transcript</td><td>Numbers, names and dates match the transcript</td></tr>
              <tr><td>4. Follow-up email</td><td>A short recap sent the same day</td><td>First draft from the summary</td><td>No new claims or promises</td></tr>
              <tr><td>5. Coaching scorecard</td><td>Scores with evidence, one strength, one change</td><td>Draft scores with quotes</td><td>Each quote is real. The total adds up.</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Parts 1 and 2: prep brief and question plan</h3>
          <p>Kavya asks AI to turn her notes into a brief. She marks every guess clearly.</p>
          <pre><code>PREP BRIEF: Tulsi Textiles, Gujarat (discovery call, Thu 1 Oct 2026, 3 pm, 30 min)
        Who: Meena Shah, Finance Head.
        Known (from her enquiry): month-end close takes about 10 days;
          400+ invoices a month.
        Goal: understand her close process and agree a next step.
        Agenda: intros 3 min, her process and pains 15 min, impact and
          who decides 7 min, next step 5 min.
        Likely objections: "We already have accounting software."
          "My team is too busy at month-end." "Does it handle GST reports?"
        Unknown (ask, do not guess): who else decides, current software,
          when budgets are approved.</code></pre>
          <p><strong>Question plan.</strong> Open questions start with words like "what", "how" and "walk me through". They let the customer explain in their own words.</p>
          <table class="lc-table">
            <thead><tr><th>Area</th><th>Question</th></tr></thead>
            <tbody>
              <tr><td>Current process</td><td>"Walk me through what your team does from the 1st to the 10th of the month."</td></tr>
              <tr><td>Pain</td><td>"Which step takes the most time?"</td></tr>
              <tr><td>Impact</td><td>"What happens when the close runs late? Who waits for the numbers?"</td></tr>
              <tr><td>Current process</td><td>"How are the 400 invoices entered today, and by how many people?"</td></tr>
              <tr><td>Decision process</td><td>"If you change software, who else is part of the decision?"</td></tr>
              <tr><td>Goal</td><td>"What would a good month-end look like for you?"</td></tr>
            </tbody>
          </table>
          <p>A leading question pushes the customer to your answer, for example "Wouldn't automatic invoice entry solve this?" Avoid these in discovery.</p>
        </div>
        <div class="lc-card">
          <h3>Part 3: from transcript to summary</h3>
          <p>The call was recorded with Meena's consent. Here is part of the transcript:</p>
          <pre><code>[00:20] Kavya: Is it OK if I record this call for my notes?
        [00:25] Meena: Yes, that's fine.
        [00:30] Kavya: I'd like to understand your month-end close, then agree
                what's next. We have 30 minutes. Does that work?
        [02:10] Meena: Our close takes about 10 days. We get 400 plus
                invoices a month.
        [04:40] Kavya: Walk me through how one invoice gets entered.
        [04:50] Meena: We type it into Excel first, then into our
                accounting software. About 4 minutes each.
        [09:30] Meena: Our MD wants the numbers by the 5th. We usually
                give them around the 10th.
        [18:00] Meena: Can your software make our GST reports?
        [18:10] Kavya: I'm not sure which ones we support. I'll check
                and send you a note by tomorrow.
        [27:30] Kavya: Can we do a demo next week for you and your team?
        [27:40] Meena: Tuesday 6 October at 11 works. Our accounts lead
                will join. I'll send 20 sample invoices by Monday.</code></pre>
          <p>Kavya pastes the transcript into LedgerLite's approved AI tool. She asks for pains, decisions and next steps. The AI's draft has two mistakes. It says Meena will send <strong>50</strong> sample invoices, but she said 20. It also adds "LedgerLite can cut the close to 3 days", which nobody said. Kavya fixes both. Here are the corrected next steps:</p>
          <table class="lc-table">
            <thead><tr><th>Next step</th><th>Owner</th><th>Date</th></tr></thead>
            <tbody>
              <tr><td>Send a note on which GST reports LedgerLite supports</td><td>Kavya</td><td>Fri 2 Oct 2026</td></tr>
              <tr><td>Send 20 sample invoices</td><td>Meena</td><td>Mon 5 Oct 2026</td></tr>
              <tr><td>Demo for Meena and her accounts lead</td><td>Kavya (sends the invite)</td><td>Tue 6 Oct 2026, 11 am</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Parts 4 and 5: follow-up email and scorecard</h3>
          <p>Kavya sends this email on the same day, and saves the notes in the CRM (customer relationship management: the system that stores customer records).</p>
          <pre><code>Subject: Notes from today's call and demo on 6 October

        Hi Meena,

        Thank you for your time today. Here is what I understood:
        - Your month-end close takes about 10 days.
        - You get 400+ invoices a month.
        - Your team types each invoice into Excel, then into your
          accounting software. This takes about 4 minutes per invoice.
          By my maths, 400 × 4 minutes is about 27 hours a month.
        - Your MD wants the numbers by the 5th. Today they are ready
          around the 10th.

        Next steps:
        - Me: a note on which GST reports we support, by Friday 2 October.
        - You: 20 sample invoices by Monday 5 October.
        - Demo for you and your accounts lead: Tuesday 6 October, 11 am.
          I will send the calendar invite today.

        If I missed or got anything wrong, please reply and tell me.

        Regards,
        Kavya, LedgerLite</code></pre>
          <p>Next, Arjun (LedgerLite's founder) reviews the call with the team scorecard. In the 30-minute call, Kavya spoke for 12 minutes and Meena spoke for 18 minutes. That is a 12:18, or 2:3, ratio. Kavya's talk share is 12 ÷ (12 + 18) = 12 ÷ 30 = 40%.</p>
          <table class="lc-table">
            <thead><tr><th>Criterion</th><th>Score</th><th>Evidence</th></tr></thead>
            <tbody>
              <tr><td>Opening and agenda</td><td>5</td><td>[00:20] asked consent; [00:30] set the goal and time</td></tr>
              <tr><td>Discovery questions</td><td>4</td><td>[04:40] "Walk me through how one invoice gets entered."</td></tr>
              <tr><td>Listening</td><td>4</td><td>Meena spoke most of the time (Kavya's share: 40%)</td></tr>
              <tr><td>Value linked to pain</td><td>3</td><td>Heard the late-numbers pain but did not ask what it costs the business</td></tr>
              <tr><td>Objection handling</td><td>4</td><td>[18:10] honest answer on GST reports, with a follow-up date</td></tr>
              <tr><td>Clear next step</td><td>5</td><td>[27:40] demo date, time and people agreed</td></tr>
              <tr><td><strong>Total</strong></td><td><strong>25 / 30</strong></td><td>5 + 4 + 4 + 3 + 4 + 5 = 25</td></tr>
            </tbody>
          </table>
          <p><strong>Feedback.</strong> Keep: the clear agenda and the dated next step. Change: after a pain, ask about its impact. For example: "When the MD gets the numbers on the 10th instead of the 5th, what does that change for the business?"</p>
        </div>
        <div class="lc-card">
          <h3>Activity: Kavya's after-call work session</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Kavya asks">In the approved AI tool: "Summarise this call transcript. List Meena's pains, any decisions, and next steps with owner and date."</li>
              <li data-kind="answer" data-label="AI replies">Pains: 10-day close, each of 400+ invoices typed twice, numbers late for the MD. Next steps: Meena sends 50 sample invoices by 5 Oct. LedgerLite can cut the close to 3 days.</li>
              <li data-kind="check" data-label="Kavya checks">She reads [27:40] in the transcript. Meena said 20 sample invoices, not 50.</li>
              <li data-kind="warn" data-label="Mistake">Nobody said "cut the close to 3 days". The AI added a claim. Kavya deletes it.</li>
              <li data-kind="user" data-label="Kavya asks">"Draft a follow-up email from this corrected summary. Under 150 words. Do not add any claims or promises."</li>
              <li data-kind="answer" data-label="AI replies">A short email with the recap, the three next steps and the demo on Tuesday 6 October at 11 am.</li>
              <li data-kind="tool" data-label="Calendar">Kavya checks that 6 October 2026 is a Tuesday. She sends the demo invite to Meena and her accounts lead.</li>
              <li data-kind="check" data-label="Kavya finishes">She sends the email the same day and saves the summary in the CRM.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Run the whole capstone with AI as your coach, one step at a time. Use the Tulsi Textiles example, or change the [brackets] to your own product and prospect.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are my sales coach. Guide me through a practice sales call project, one step at a time. Wait for my reply after each step.

        Scenario: I am [Kavya, a sales rep at LedgerLite, an accounting software startup in Karnataka]. My prospect is [Meena Shah, Finance Head of Tulsi Textiles, Gujarat]. Known facts: [month-end close takes about 10 days; 400+ invoices a month]. Do not invent other facts about the company. Mark any guess as [guess].

        Step 1: Write a short prep brief: goal, a 30-minute agenda, 3 likely objections, 3 things I do not know yet.
        Step 2: Give me 6 open discovery questions about process, pain, impact and decision process.
        Step 3: Play the prospect in a short text role-play. I ask the questions. Keep your answers realistic and brief. I type END to finish.
        Step 4: Summarise the role-play: pains, decisions, next steps with owner and date.
        Step 5: Draft a follow-up email under 150 words. Add no claims I did not make.
        Step 6: Score my questions from 1 to 5 on: opening and agenda, discovery questions, listening, value linked to pain, objection handling, clear next step. Give a quote for each score, one strength and one change.

        Start with Step 1.</pre>
            <ul class="ai-try-checks">
              <li>The prep brief uses only the known facts, and marks other ideas as guesses.</li>
              <li>The summary and email match what was said in the role-play, with an owner and a date for each next step.</li>
              <li>The email does not add promises, prices or results you never mentioned.</li>
              <li>Each score has a real quote from your role-play, and the total out of 30 adds up.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> AI can speed up every part of a sales call: the plan, the notes, the email and the review. But you own the facts, the promises and the relationship. Check names, numbers, dates and quotes before anything reaches the customer.
        </div>
      HTML
      starter_code: nil
    }
  }.freeze
end

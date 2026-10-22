module AiMeetingsCommunicationContent
  # Units (sidebar dividers): 1–4 Communication Basics · 5–9 Meetings · 10–14 Writing and Sharing · 15 Capstone
  # Widgets: sequence, sorter, stepper. No code editor: each Try It is an ai-try prompt box.
  LESSONS = {
    1 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mgmt">Management</div>
          <h1 class="lc-title">Why Clear Communication Matters at Work</h1>
        </div>
        <p class="lc-lead">Unclear messages cost time. People ask the same questions, guess, and make mistakes. In this lesson you will see what confusion costs, how to think about your audience, and which channels you can use. Through this course you will follow Bluefern Digital, a made-up 40-person digital agency in London. Bluefern is moving office in early 2027, and it also has too many meetings. You will help team lead Hannah Price and operations manager Grace Mensah communicate clearly, with AI as a helper.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 310" role="img" aria-label="Left: an unclear message, We're moving end of Feb, more soon, leads to 23 questions, a wrong booking and people guessing. The result is about 2 hours of answers. Right: a clear message gives what, when, what you must do and where to ask. The result is few questions and no surprises.">
            <defs><marker id="mc1a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <text x="195" y="26" font-weight="700" fill="#c4b5fd" text-anchor="middle">Unclear message</text>
              <text x="565" y="26" font-weight="700" fill="#c4b5fd" text-anchor="middle">Clear message</text>
              <g text-anchor="middle">
                <rect x="40" y="42" width="310" height="58" rx="8" fill="#1f1f44" stroke="#ec4899"/>
                <text x="195" y="66">"We're moving end of Feb.</text>
                <text x="195" y="88">More soon!"</text>
                <rect x="40" y="140" width="96" height="44" rx="8" fill="#27274e" stroke="#ec4899"/>
                <text x="88" y="167" font-size="12">23 questions</text>
                <rect x="147" y="140" width="96" height="44" rx="8" fill="#27274e" stroke="#ec4899"/>
                <text x="195" y="167" font-size="12">Wrong booking</text>
                <rect x="254" y="140" width="96" height="44" rx="8" fill="#27274e" stroke="#ec4899"/>
                <text x="302" y="167" font-size="12">People guess</text>
                <rect x="40" y="214" width="310" height="44" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
                <text x="195" y="241">Lost time: about 2 hours of answers</text>
                <text x="195" y="284" font-size="11" fill="#9b99b8">Plus a client workshop to rebook.</text>
              </g>
              <rect x="410" y="42" width="310" height="40" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="426" y="67">What: office moves to King's Cross</text>
              <rect x="410" y="90" width="310" height="40" rx="8" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="426" y="115">When: Monday 1 March 2027</text>
              <rect x="410" y="138" width="310" height="40" rx="8" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="426" y="163">You: pack by 4pm, Thu 25 Feb</text>
              <rect x="410" y="186" width="310" height="40" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="426" y="211">Ask: Grace or #office-move</text>
              <rect x="410" y="246" width="310" height="40" rx="8" fill="#27274e" stroke="#10b981"/>
              <text x="565" y="271" text-anchor="middle">Result: few questions, no surprises</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#mc1a)">
                <line x1="195" y1="101" x2="88" y2="137"/>
                <line x1="195" y1="101" x2="195" y2="137"/>
                <line x1="195" y1="101" x2="302" y2="137"/>
                <line x1="88" y1="185" x2="88" y2="211"/>
                <line x1="195" y1="185" x2="195" y2="211"/>
                <line x1="302" y1="185" x2="302" y2="211"/>
                <line x1="565" y1="227" x2="565" y2="243"/>
              </g>
            </g>
          </svg>
          <figcaption>The same news, written two ways. The clear version answers the reader's questions before they ask.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>What confusion costs</h3>
          <p>In September 2026, Grace posted this in Bluefern's all-staff Slack channel:</p>
          <pre><code>Heads up, we're moving end of Feb. More soon!</code></pre>
          <p>The message had no date, no address and no actions. Here is what happened next (all made up):</p>
          <ul class="lc-list">
            <li>Grace answered <strong>23 separate questions</strong> in chat. Each took about 5 minutes. That is 115 minutes, almost 2 hours.</li>
            <li>Chloe Evans, a project coordinator, booked a client workshop for Friday 26 February. That turned out to be move day. The client, Harbour &amp; Finch, had to rebook.</li>
            <li>Some people guessed the new location and talked about it with clients.</li>
          </ul>
          <p>None of this is a big disaster. But small confusions add up every week. They cost time, trust and sometimes money.</p>
          <p>A clear work message answers five questions:</p>
          <table class="lc-table">
            <thead><tr><th>Question</th><th>Bluefern answer</th></tr></thead>
            <tbody>
              <tr><td>What is happening?</td><td>We are moving to a new office in King's Cross, London.</td></tr>
              <tr><td>Why?</td><td>The new office has more meeting rooms and is near a main station.</td></tr>
              <tr><td>When?</td><td>First day in the new office: Monday 1 March 2027.</td></tr>
              <tr><td>What must I do?</td><td>Pack your desk by 4pm on Thursday 25 February.</td></tr>
              <tr><td>Where do I ask?</td><td>Ask Grace or post in the #office-move channel.</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Know your audience</h3>
          <p>Your <strong>audience</strong> is the group of people who will read or hear your message. Different audiences need different details. Bluefern has three main audiences for the office move:</p>
          <table class="lc-table">
            <thead><tr><th>Audience</th><th>What they want to know</th><th>What they do not need</th></tr></thead>
            <tbody>
              <tr><td><strong>Team</strong> (all 40 staff)</td><td>What changes for me, key dates, and what I must do</td><td>The full budget and lease details</td></tr>
              <tr><td><strong>Leadership</strong> (managing director Oliver Grant and 3 directors)</td><td>Progress, the £48,000 budget, risks and decisions needed</td><td>Every small task on the packing list</td></tr>
              <tr><td><strong>Clients</strong> (about 25, such as Harbour &amp; Finch)</td><td>The new address, any change to service, who to contact</td><td>Internal details like desk numbers</td></tr>
            </tbody>
          </table>
          <p>Before you write, ask: "Who will read this? What do they already know? What do they need to do?" A message that is perfect for leaders can confuse clients.</p>
        </div>
        <div class="lc-card">
          <h3>Channels and where AI helps</h3>
          <p>A <strong>channel</strong> is the way you send a message. The four main work channels are:</p>
          <ul class="lc-list">
            <li><strong>Meeting</strong>: people talk together, in a room or on a video call.</li>
            <li><strong>Email</strong>: a written message for news, requests and records.</li>
            <li><strong>Chat</strong>: short, quick messages in tools like Slack or Microsoft Teams.</li>
            <li><strong>Document</strong>: a page people come back to, such as an FAQ (frequently asked questions) page.</li>
          </ul>
          <p>The channel lesson later in this course gives a simple guide for choosing one. For now, notice that a big change often needs several channels.</p>
          <p>An AI assistant such as Claude can help you spot gaps before you send. Compare these two prompts.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Make this message better: "We're moving end of Feb. More soon!"</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>I am the operations manager at a 40-person agency in London.
        Here is a draft message to all staff about our office move:
        "We're moving end of Feb. More soon!"
        1. List the questions staff will ask after reading it.
        2. Rewrite it so it answers what, why, when, what to do and where to ask.
        Use [square brackets] for any fact you do not know. Do not invent dates.</code></pre>
          <p>The better prompt gives the AI the audience and the goal. It also stops the AI from making up facts. You still fill in and check every date yourself.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: steps to a clear message</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put these steps for writing a clear work message in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Name your audience and what they already know.</li>
              <li data-order="2">Decide the one main point you want them to remember.</li>
              <li data-order="3">Add the facts: what, why, when and where.</li>
              <li data-order="4">Say what the reader must do, and by when.</li>
              <li data-order="5">Ask AI to list the questions a reader might still have.</li>
              <li data-order="6">Check every fact yourself, then send it in the right channel.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Give AI a short, unclear message from your work. Ask it to find the gaps and rewrite the message for one audience.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a workplace communication coach. Use simple, plain English.

        My role: [operations manager at Bluefern Digital, a 40-person digital agency in London].
        Audience: [all staff].
        My draft message: [Heads up, we're moving end of Feb. More soon!]
        Channel: [all-staff Slack channel].

        Please:
        1. List the questions my audience will ask after reading this draft (up to 6).
        2. Say which of these five parts are missing: what, why, when, what to do, where to ask.
        3. Rewrite the message in under 90 words. Put the main point in the first sentence.
        4. Use [square brackets] for every fact you do not know, such as dates or addresses. Do not invent them.
        5. List the facts I must confirm before I send it.</pre>
            <ul class="ai-try-checks">
              <li>The main point is in the first sentence.</li>
              <li>Unknown facts are shown in [brackets], not invented.</li>
              <li>The reader can see exactly what to do and by when.</li>
              <li>The length and tone fit the channel and audience.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Every unclear message creates hidden work for someone else. Before you send, check that your message answers what, why, when, what to do and where to ask, for the audience who will read it.
        </div>
      HTML
      starter_code: nil
    },
    2 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mgmt">Management</div>
          <h1 class="lc-title">Where AI Helps and Its Limits</h1>
        </div>
        <p class="lc-lead">AI can save you real time on drafts, summaries and meeting notes. It can also get facts wrong, choose the wrong tone or create privacy problems. In this lesson you will learn where AI helps with communication, the four main risks, and a safe way to work. The rule for the whole course is simple: AI drafts, you check, decide and send.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 330" role="img" aria-label="A four-step workflow: you give context, AI drafts, you check facts, tone and privacy, then you send and own it. Below, AI helps with drafts, summaries, meeting notes and rewrites. The risks are wrong facts, wrong tone, recording without consent and private data in public tools.">
            <defs><marker id="mc2a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <text x="380" y="26" font-weight="700" fill="#c4b5fd" text-anchor="middle">AI drafts. You check, decide and send.</text>
              <g text-anchor="middle">
                <rect x="20" y="44" width="160" height="56" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
                <text x="100" y="68" font-weight="700">1. You</text>
                <text x="100" y="88" font-size="12">give context</text>
                <rect x="210" y="44" width="160" height="56" rx="8" fill="#1f1f44" stroke="#8b5cf6"/>
                <text x="290" y="68" font-weight="700">2. AI</text>
                <text x="290" y="88" font-size="12">drafts or summarises</text>
                <rect x="400" y="44" width="160" height="56" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
                <text x="480" y="68" font-weight="700">3. You check</text>
                <text x="480" y="88" font-size="12">facts, tone, privacy</text>
                <rect x="590" y="44" width="150" height="56" rx="8" fill="#1f1f44" stroke="#10b981"/>
                <text x="665" y="68" font-weight="700">4. You send</text>
                <text x="665" y="88" font-size="12">and own it</text>
              </g>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#mc2a)">
                <line x1="181" y1="72" x2="207" y2="72"/>
                <line x1="371" y1="72" x2="397" y2="72"/>
                <line x1="561" y1="72" x2="587" y2="72"/>
              </g>
              <rect x="20" y="130" width="350" height="180" rx="10" fill="#27274e" stroke="#10b981"/>
              <text x="40" y="158" font-weight="700" fill="#6ee7b7">Where AI helps</text>
              <text x="40" y="190">First drafts of emails and updates</text>
              <text x="40" y="218">Summaries of long documents</text>
              <text x="40" y="246">Meeting notes and action lists</text>
              <text x="40" y="274">Rewrites: shorter, simpler, warmer</text>
              <rect x="390" y="130" width="350" height="180" rx="10" fill="#27274e" stroke="#ec4899"/>
              <text x="410" y="158" font-weight="700" fill="#f9a8d4">Where it can go wrong</text>
              <text x="410" y="190">Wrong facts, dates or numbers</text>
              <text x="410" y="218">Wrong tone for the reader</text>
              <text x="410" y="246">Recording without telling people</text>
              <text x="410" y="274">Private data in public AI tools</text>
            </g>
          </svg>
          <figcaption>AI is fast at drafting. You stay responsible for facts, tone, consent and privacy.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Where AI helps with communication</h3>
          <table class="lc-table">
            <thead><tr><th>Task</th><th>How AI helps</th><th>Bluefern example (made up)</th></tr></thead>
            <tbody>
              <tr><td>Drafting</td><td>Turns your bullet points into a first draft</td><td>Grace turns 6 notes about the move into a staff email.</td></tr>
              <tr><td>Summarising</td><td>Shortens a long document into key points</td><td>Hannah asks for a 5-line summary of the 12-page lease FAQ from the landlord.</td></tr>
              <tr><td>Meeting notes</td><td>Tools in Microsoft Teams, Zoom and Google Meet can write a summary and action list</td><td>The office move working group gets a draft list of actions after each meeting.</td></tr>
              <tr><td>Rewriting</td><td>Makes text shorter, simpler or warmer</td><td>Hannah simplifies a technical note about new Wi-Fi for the whole team.</td></tr>
              <tr><td>Preparing</td><td>Suggests questions people may ask</td><td>Grace asks for the 10 questions staff will ask about bookable desks.</td></tr>
            </tbody>
          </table>
          <p>AI meeting tools change often. Check your tool's current help pages, and your company's rules, before you use them.</p>
        </div>
        <div class="lc-card">
          <h3>The four main risks</h3>
          <p><strong>1. Wrong facts.</strong> AI can state wrong things in a confident voice. Hannah asked AI to summarise working group notes. The summary said "move day is Monday 1 March". In fact, move day is Friday 26 February. Monday 1 March is the first day in the new office. One wrong date could send 40 people to an empty building.</p>
          <p><strong>2. Wrong tone.</strong> Tone is how a message feels to the reader. Bluefern is going from 40 fixed desks to 28 bookable desks. An AI draft called this "exciting news for everyone!" Some staff will worry about it, so a calm, honest tone is better.</p>
          <p><strong>3. Recording consent.</strong> AI note-takers often need to record or transcribe a meeting. Always tell people before you record, say why, and follow your company policy. Teams, Zoom and Google Meet usually show a notice when recording or AI notes are on. In the UK, recordings of people are personal data under UK GDPR (the UK data protection law). In some US states, such as California, everyone on a call must agree before it is recorded. This is not legal advice; check with your company's data protection or legal adviser.</p>
          <p><strong>4. Privacy.</strong> Do not paste personal or confidential data into public AI tools. That includes health details, pay, performance notes and client contracts. Use the AI tool your company has approved, and remove names when you can.</p>
        </div>
        <div class="lc-card">
          <h3>A safer way to prompt</h3>
          <p>You can lower the risks with a better prompt. Ask the AI to mark what it is not sure about.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Write an email telling staff about the office move.</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Draft a short email to 40 staff about our office move.
        Facts (use only these):
        - First day in the new office: Monday 1 March 2027
        - Pack your desk by 4pm on Thursday 25 February 2027
        - 40 fixed desks become 28 bookable desks; lockers for everyone
        Tone: calm and honest. Some people will worry about desks.
        Mark any sentence that adds a fact I did not give you with [CHECK].
        Do not include any names or personal details.</code></pre>
          <p>After the AI replies, you still read every line. Compare each date and number with your source. Then you decide whether to send it.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: safe, check or stop?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each made-up task. Is it fine to use AI, fine only with careful checking, or something you should not do?</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="fine" data-label="Fine to use AI"></div>
              <div data-sorter-target="bucket" data-bucket="check" data-label="Use AI, then check carefully"></div>
              <div data-sorter-target="bucket" data-bucket="stop" data-label="Do not do this"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="fine" data-why="Low risk: no private data, and you will read the result before using it.">Ask AI for five subject line ideas for the office move email.</li>
              <li data-bucket="fine" data-why="Plain rewriting of general information carries little risk.">Turn your bullet points about bike storage into a friendly paragraph.</li>
              <li data-bucket="check" data-why="AI summaries can mix up dates, owners and decisions. Check against the meeting.">Use an AI note-taker's summary of the working group meeting as the action list.</li>
              <li data-bucket="check" data-why="AI can make maths mistakes. Recalculate the numbers in a spreadsheet.">Ask AI how many meeting hours the team would save by cutting two meetings.</li>
              <li data-bucket="stop" data-why="Health details are private. Never paste them into a public AI tool. Talk to HR about the request.">Paste Leo's medical note into a free chatbot to write his fixed-desk request.</li>
              <li data-bucket="stop" data-why="Client contracts are confidential. Use only an approved company tool, and follow your policy.">Paste the Harbour &amp; Finch contract and prices into a public AI tool.</li>
              <li data-bucket="stop" data-why="People must be told before a meeting is recorded or transcribed.">Turn on AI notes in a 1:1 with Sam without telling him.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to draft a short update from facts you give it, and to flag anything it adds. Then check the flags.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a careful writing assistant for a team lead. Use simple English.

        Write a short update for [my team of 8 at a London digital agency].
        Topic: [our office move].
        Facts you may use (use ONLY these):
        - [First day in the new office: Monday 1 March 2027]
        - [Pack your desk by 4pm on Thursday 25 February 2027]
        - [40 fixed desks become 28 bookable desks. Every person gets a locker.]
        - [Questions go to Grace, the operations manager]
        Tone: [calm and honest; some people are worried about desks].

        Rules:
        1. Keep it under 120 words.
        2. If you add any fact I did not give you, mark it with [CHECK].
        3. Do not add names, health details or other personal data.
        4. After the draft, list: (a) any part where the tone may upset someone, (b) every date and number you used, so I can check them.</pre>
            <ul class="ai-try-checks">
              <li>Every date and number matches your list exactly.</li>
              <li>Any added fact is marked [CHECK], or removed.</li>
              <li>The tone is honest about the change, not falsely cheerful.</li>
              <li>No personal data appears in the draft.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> AI is a fast first-draft writer, not a source of truth. Give it only the facts you want used, ask it to flag guesses, keep private data out, and tell people before any meeting is recorded. You own what you send.
        </div>
      HTML
      starter_code: nil
    },
    3 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mgmt">Management</div>
          <h1 class="lc-title">Choosing the Right Channel</h1>
        </div>
        <p class="lc-lead">The same message can work well or badly depending on how you send it. A quick question in a long meeting wastes time. Big news in a chat message gets lost. In this lesson you will learn what each channel is good for. You will use a simple three-question guide. You will also combine channels for a big change: Bluefern's office move.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 380" role="img" aria-label="A decision guide. Question 1: is it urgent today? Yes: use chat or a quick call. No: Question 2: does it need discussion or a decision together? Yes: hold a meeting with an agenda. No: Question 3: will people need to find it again later? Yes: write a document and share the link. No: send an email. Note: for sensitive news, talk first, then follow up in writing.">
            <defs><marker id="mc3a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <text x="195" y="26" font-weight="700" fill="#c4b5fd" text-anchor="middle">Ask in this order</text>
              <text x="595" y="26" font-weight="700" fill="#c4b5fd" text-anchor="middle">Best channel</text>
              <g text-anchor="middle">
                <rect x="30" y="40" width="330" height="50" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
                <text x="195" y="70">1. Is it urgent (needed today)?</text>
                <rect x="30" y="130" width="330" height="50" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
                <text x="195" y="160">2. Does it need a discussion?</text>
                <rect x="30" y="220" width="330" height="50" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
                <text x="195" y="250">3. Will people look for it later?</text>
                <rect x="470" y="40" width="250" height="50" rx="8" fill="#27274e" stroke="#22d3ee"/>
                <text x="595" y="70">Chat or a quick call</text>
                <rect x="470" y="130" width="250" height="50" rx="8" fill="#27274e" stroke="#8b5cf6"/>
                <text x="595" y="160">Meeting, with an agenda</text>
                <rect x="470" y="220" width="250" height="50" rx="8" fill="#27274e" stroke="#10b981"/>
                <text x="595" y="250">Document, link it in email</text>
                <rect x="30" y="300" width="330" height="44" rx="8" fill="#27274e" stroke="#3b82f6"/>
                <text x="195" y="327">Email</text>
              </g>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#mc3a)">
                <line x1="361" y1="65" x2="467" y2="65"/>
                <line x1="361" y1="155" x2="467" y2="155"/>
                <line x1="361" y1="245" x2="467" y2="245"/>
                <line x1="195" y1="91" x2="195" y2="127"/>
                <line x1="195" y1="181" x2="195" y2="217"/>
                <line x1="195" y1="271" x2="195" y2="297"/>
              </g>
              <g font-size="12" fill="#9b99b8">
                <text x="414" y="58" text-anchor="middle">Yes</text>
                <text x="414" y="148" text-anchor="middle">Yes</text>
                <text x="414" y="238" text-anchor="middle">Yes</text>
                <text x="205" y="114">No</text>
                <text x="205" y="204">No</text>
                <text x="205" y="290">No</text>
              </g>
              <text x="595" y="310" font-size="12" fill="#9b99b8" text-anchor="middle">Sensitive news? Talk first,</text>
              <text x="595" y="330" font-size="12" fill="#9b99b8" text-anchor="middle">then follow up in writing.</text>
            </g>
          </svg>
          <figcaption>Three questions point you to a sensible channel. Sensitive news is the exception: talk first, then write.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>What each channel is good for</h3>
          <table class="lc-table">
            <thead><tr><th>Channel</th><th>Good for</th><th>Not good for</th><th>Bluefern example (made up)</th></tr></thead>
            <tbody>
              <tr><td><strong>Meeting</strong> (in person or video)</td><td>Discussion, decisions, sensitive talks, building trust</td><td>Sharing simple updates that people could read</td><td>The working group decides the desk-booking rules.</td></tr>
              <tr><td><strong>Email</strong></td><td>Formal news, requests, messages to clients, a written record</td><td>Fast back-and-forth chat</td><td>Account leads email each client the new address.</td></tr>
              <tr><td><strong>Chat</strong> (Slack, Teams chat)</td><td>Quick questions, reminders, urgent short notes</td><td>Big news or anything people must find again later</td><td>"Reminder: crates labelled by 4pm today."</td></tr>
              <tr><td><strong>Document</strong> (Notion, SharePoint, Google Docs)</td><td>Detail people return to: FAQs, plans, guides</td><td>Urgent news (people may not open it)</td><td>An office move FAQ page with desk, locker and bike rules.</td></tr>
              <tr><td><strong>1:1 call</strong></td><td>Personal or sensitive news for one person</td><td>News for many people</td><td>Hannah calls Leo about his fixed-desk request.</td></tr>
            </tbody>
          </table>
          <p>A useful idea: <strong>rich</strong> channels (face to face, video) carry tone and allow questions. <strong>Lean</strong> channels (chat, email) are fast and leave a record. The harder or more emotional the message, the richer the channel should be.</p>
        </div>
        <div class="lc-card">
          <h3>Big changes need several channels</h3>
          <p>One message in one channel is rarely enough for a big change. People miss emails, forget meetings and skim chat. Grace's plan uses each channel for one job:</p>
          <table class="lc-table">
            <thead><tr><th>When</th><th>Audience</th><th>Channel</th><th>Job</th></tr></thead>
            <tbody>
              <tr><td>Mon 2 Nov 2026</td><td>Leadership</td><td>Leadership update meeting</td><td>Sign off the plan and £48,000 budget</td></tr>
              <tr><td>Wed 4 Nov 2026</td><td>All 40 staff</td><td>All-hands meeting</td><td>Explain the news; take questions</td></tr>
              <tr><td>Wed 4 Nov 2026</td><td>All 40 staff</td><td>Email</td><td>Written record of the key facts and dates</td></tr>
              <tr><td>Wed 4 Nov 2026</td><td>All 40 staff</td><td>Document (FAQ page)</td><td>Detail people can check at any time</td></tr>
              <tr><td>Mon 11 Jan 2027</td><td>About 25 clients</td><td>Email from each account lead</td><td>New address; no in-person meetings on 25 and 26 Feb</td></tr>
              <tr><td>Thu 25 Feb 2027</td><td>All 40 staff</td><td>Chat (#office-move)</td><td>Reminder: pack by 4pm</td></tr>
            </tbody>
          </table>
          <p>Notice the order. Leaders hear first. Staff hear before clients, so nobody learns the news from a client.</p>
        </div>
        <div class="lc-card">
          <h3>How AI helps you choose</h3>
          <p>AI can suggest a channel plan and point out gaps. It does not know your company culture, so you make the final choice.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>How should I tell people about the move?</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>I am the operations manager of a 40-person agency in London.
        We move office on 1 March 2027. Audiences: staff, 4 leaders, 25 clients.
        Our channels: all-hands meeting, email, Slack, a Notion FAQ page.
        Suggest which channel to use for each audience and message,
        and in what order. Explain each choice in one line.
        Flag any message that is sensitive and needs a conversation first.</code></pre>
          <p>Check the plan against what you know. For example, AI may not know that your clients prefer phone calls, or that Slack is not used by part-time staff.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: pick the channel</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each made-up Bluefern message into the best channel.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="meeting" data-label="Meeting"></div>
              <div data-sorter-target="bucket" data-bucket="email" data-label="Email"></div>
              <div data-sorter-target="bucket" data-bucket="chat" data-label="Chat"></div>
              <div data-sorter-target="bucket" data-bucket="document" data-label="Document"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="chat" data-why="Short, urgent and for today. Chat is ideal.">"Reminder: label your crates by 4pm today."</li>
              <li data-bucket="chat" data-why="A quick yes-or-no question does not need a meeting or email.">"Is Meeting Room 2 free at 2pm?"</li>
              <li data-bucket="meeting" data-why="Several options and people need to agree. That needs discussion.">Decide with the working group which of three packing-day plans to use.</li>
              <li data-bucket="meeting" data-why="Big news with feelings and questions. Say it live first, then follow up in writing.">First announcement of the move to all staff, with time for questions.</li>
              <li data-bucket="email" data-why="Clients need a clear, formal written message they can keep.">Tell Harbour &amp; Finch the new address and that there are no in-person meetings on 25 and 26 February.</li>
              <li data-bucket="email" data-why="After the all-hands, staff need a written record of the key facts.">Send all staff the key dates after the all-hands meeting.</li>
              <li data-bucket="document" data-why="Detailed rules that people will look up again belong in a document.">Desk-booking rules, locker numbers and bike storage details.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>List the messages you need to send for a change at your work. Ask AI to suggest a channel and an order for each one.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an internal communications adviser. Use simple English.

        Situation: [Our 40-person agency in London is moving office. First day in the new office is Monday 1 March 2027. Fixed desks become bookable desks.]
        Audiences: [all staff, 4 leaders, about 25 clients].
        Channels we use: [all-hands meeting, email, Slack, a Notion FAQ page, 1:1 calls].
        Messages I need to send:
        - [the first announcement of the move]
        - [the new desk-booking rules]
        - [the new address for clients]
        - [a packing reminder on the day before move day]
        - [a reply to one person who asked for a fixed desk for health reasons]

        Please make a table with columns: Message, Audience, Channel, When (order), Why this channel.
        Then:
        1. Flag any message that is sensitive and should start with a conversation.
        2. Suggest one follow-up channel for each important message.
        3. Ask me 2 questions about my company that would change your advice.</pre>
            <ul class="ai-try-checks">
              <li>Sensitive or personal messages start with a conversation, not a group message.</li>
              <li>Staff hear big news before clients do.</li>
              <li>Detailed rules go in a document people can find again.</li>
              <li>The plan fits the channels your company really uses.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Choose the channel by the job: chat for quick and urgent, meetings for discussion, email for a record, documents for detail. For big changes, use several channels in a planned order. For sensitive news, talk first.
        </div>
      HTML
      starter_code: nil
    },
    4 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mgmt">Management</div>
          <h1 class="lc-title">Do You Need a Meeting?</h1>
        </div>
        <p class="lc-lead">Many teams spend hours each week in meetings that could be an email, a chat message or a shared document. In this lesson you will learn when a meeting is worth it, what to use instead, and how to make meetings shorter. You will also follow Hannah Price as she audits her team's meetings with AI and a spreadsheet. An audit is a careful check of how things are now.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="Bar chart of weekly person-hours before and after Hannah's meeting audit. Stand-up 11.25 to 6.75. Status round-up 6.75 to 0, replaced by a written update. Monday planning 9 to 6.75. Move working group 7 to 5.25. All team meetings: 53.5 to 38.25 person-hours, saving 15.25 a week. Hannah's own meeting time goes from 11 hours to 9 hours 15 minutes.">
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <text x="30" y="26" font-weight="700" fill="#c4b5fd">Person-hours per week (made-up data)</text>
              <rect x="230" y="38" width="12" height="12" fill="#8b5cf6"/>
              <text x="248" y="49" font-size="12" fill="#9b99b8">Before</text>
              <rect x="300" y="38" width="12" height="12" fill="#10b981"/>
              <text x="318" y="49" font-size="12" fill="#9b99b8">After</text>
              <g text-anchor="end">
                <text x="160" y="88">Stand-up</text>
                <text x="160" y="146">Status round-up</text>
                <text x="160" y="204">Monday planning</text>
                <text x="160" y="262">Move working group</text>
              </g>
              <rect x="170" y="70" width="225" height="16" rx="3" fill="#8b5cf6"/>
              <text x="401" y="83" font-size="12">11.25</text>
              <rect x="170" y="90" width="135" height="16" rx="3" fill="#10b981"/>
              <text x="311" y="103" font-size="12">6.75</text>
              <rect x="170" y="128" width="135" height="16" rx="3" fill="#8b5cf6"/>
              <text x="311" y="141" font-size="12">6.75</text>
              <text x="174" y="161" font-size="12" fill="#6ee7b7">0 (written update)</text>
              <rect x="170" y="186" width="180" height="16" rx="3" fill="#8b5cf6"/>
              <text x="356" y="199" font-size="12">9</text>
              <rect x="170" y="206" width="135" height="16" rx="3" fill="#10b981"/>
              <text x="311" y="219" font-size="12">6.75</text>
              <rect x="170" y="244" width="140" height="16" rx="3" fill="#8b5cf6"/>
              <text x="316" y="257" font-size="12">7</text>
              <rect x="170" y="264" width="105" height="16" rx="3" fill="#10b981"/>
              <text x="281" y="277" font-size="12">5.25</text>
              <rect x="470" y="70" width="270" height="210" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="490" y="98" font-weight="700" fill="#fcd34d">All team meetings</text>
              <text x="490" y="124">Before: 53.5 person-hours</text>
              <text x="490" y="148">After: 38.25 person-hours</text>
              <text x="490" y="172" font-weight="700" fill="#6ee7b7">Saved: 15.25 a week</text>
              <text x="490" y="210" font-weight="700" fill="#fcd34d">Hannah's own time</text>
              <text x="490" y="236">11 h to 9 h 15 min a week</text>
              <text x="490" y="262" font-size="12" fill="#9b99b8">Kept: 1:1s, design review</text>
            </g>
          </svg>
          <figcaption>Hannah changed four meetings and kept the rest. Her team gets back 15.25 person-hours of meeting time a week.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>When a meeting is worth it</h3>
          <p>A meeting is worth the time when people need to talk <em>together</em>, at the same time. Good reasons are:</p>
          <ul class="lc-list">
            <li><strong>Decide</strong>: several people must agree, and there are options to weigh.</li>
            <li><strong>Solve</strong>: a problem needs ideas from different people.</li>
            <li><strong>Connect</strong>: build trust, welcome new people, or have a 1:1 (a regular private talk between a manager and one team member).</li>
            <li><strong>Handle sensitive news</strong>: people need to hear it and ask questions.</li>
          </ul>
          <p>If the only goal is to <strong>share information</strong>, a written update is usually better. People can read it in less time and at a time that suits them. This is called <strong>async</strong> communication (people take part at different times).</p>
          <p>Before you book a meeting, answer four questions:</p>
          <ol class="lc-list">
            <li>Can I write the goal in one sentence?</li>
            <li>Does it need back-and-forth discussion?</li>
            <li>Who really needs to be there?</li>
            <li>Could a message, document or short recorded video do the job?</li>
          </ol>
        </div>
        <div class="lc-card">
          <h3>Alternatives and shorter meetings</h3>
          <table class="lc-table">
            <thead><tr><th>Instead of…</th><th>Try…</th></tr></thead>
            <tbody>
              <tr><td>A status meeting where everyone reads updates aloud</td><td>A written update in Slack, Teams or Notion. Meet only about blockers.</td></tr>
              <tr><td>A meeting to share news</td><td>An email or short recorded video, with a chat thread for questions</td></tr>
              <tr><td>A meeting to review a design</td><td>Comments on the shared file, then a short meeting only if people disagree</td></tr>
              <tr><td>A meeting for a quick question</td><td>A chat message to the one person who knows</td></tr>
              <tr><td>A long brainstorm</td><td>Ideas in a shared document first, then a shorter meeting to choose</td></tr>
            </tbody>
          </table>
          <p>When you do need a meeting, make it shorter:</p>
          <ul class="lc-list">
            <li>Book 25 or 45 minutes instead of 30 or 60, so people have a break.</li>
            <li>Invite only the people who must decide or contribute. Share notes with the rest.</li>
            <li>Send an agenda. No agenda, no meeting.</li>
            <li>End with actions, owners and dates.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Worked example: Hannah's meeting audit</h3>
          <p>Hannah leads a team of 8, so 9 people with her. She lists her weekly meetings in a spreadsheet. <strong>Person-hours</strong> means the total time of all the people in a meeting. A 60-minute meeting with 9 people costs 9 person-hours.</p>
          <table class="lc-table">
            <thead><tr><th>Meeting</th><th>Length (min)</th><th>Times a week</th><th>People</th><th>Person-hours</th></tr></thead>
            <tbody>
              <tr><td>Daily stand-up (a short daily check-in)</td><td>15</td><td>5</td><td>9</td><td>11.25</td></tr>
              <tr><td>Monday planning</td><td>60</td><td>1</td><td>9</td><td>9.00</td></tr>
              <tr><td>Thursday design review</td><td>60</td><td>1</td><td>6</td><td>6.00</td></tr>
              <tr><td>Friday status round-up</td><td>45</td><td>1</td><td>9</td><td>6.75</td></tr>
              <tr><td>Harbour &amp; Finch client call</td><td>45</td><td>1</td><td>4</td><td>3.00</td></tr>
              <tr><td>1:1s (one with each of 8 people)</td><td>30</td><td>8</td><td>2</td><td>8.00</td></tr>
              <tr><td>Office move working group</td><td>60</td><td>1</td><td>7</td><td>7.00</td></tr>
              <tr><td>Leadership update</td><td>30</td><td>1</td><td>5</td><td>2.50</td></tr>
              <tr><td><strong>Total</strong></td><td></td><td></td><td></td><td><strong>53.50</strong></td></tr>
            </tbody>
          </table>
          <p>The spreadsheet formula for one row is below. Column B is length, C is times a week and D is people.</p>
          <pre><code>=B2*C2*D2/60</code></pre>
          <p>Bluefern's finance team uses a made-up planning rate of £40 per person-hour. So these meetings cost about 53.5 × £40 = £2,140 a week.</p>
          <p>Hannah's decisions:</p>
          <ul class="lc-list">
            <li><strong>Stand-up:</strong> 3 days a week, not 5. On Tuesday and Thursday, people post a written check-in in Slack. 11.25 becomes 6.75.</li>
            <li><strong>Status round-up:</strong> replaced by a written update. 6.75 becomes 0.</li>
            <li><strong>Monday planning</strong> and the <strong>move working group:</strong> 45 minutes with an agenda. 9 becomes 6.75, and 7 becomes 5.25.</li>
            <li><strong>Kept:</strong> design review, client call, leadership update and all 1:1s. They need real discussion.</li>
          </ul>
          <p>Meeting time falls from 53.5 to 38.25 person-hours, a saving of 15.25. Be honest about the cost of writing: the written update takes about 10 minutes per person a week. That is 1.5 person-hours, so the real saving is 13.75 person-hours a week (£550 at £40).</p>
          <p>Hannah's own meeting time also falls. She is in every meeting in the table. Before the audit she spent 615 minutes (10 hours 15 minutes) a week in them. Now she spends 510 minutes (8 hours 30 minutes).</p>
        </div>
        <div class="lc-card">
          <h3>Activity: Hannah audits her meetings with AI</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Hannah's prompt">Here are my team's 8 weekly meetings with length, times a week and attendees. For each one, give its purpose and recommend keep, shorten, replace or cancel. Show person-hours and your maths.</li>
              <li data-kind="answer" data-label="AI reply">The AI suggests a written update instead of the status round-up, and shorter planning. It says the total is 51.5 person-hours. It also suggests cancelling the 1:1s "to save 8 hours".</li>
              <li data-kind="tool" data-label="Spreadsheet">Hannah puts the same data in a spreadsheet with <code>=B2*C2*D2/60</code> in each row and a total.</li>
              <li data-kind="result" data-label="Spreadsheet total">The spreadsheet shows 53.5 person-hours, not 51.5. The AI made a maths mistake.</li>
              <li data-kind="warn" data-label="Bad advice">Cancelling 1:1s would save time but hurt support for people. Hannah keeps all 1:1s.</li>
              <li data-kind="check" data-label="Ask the team">Hannah asks the team in a 2-minute Slack poll. Most people agree to drop the Friday round-up. Two people ask to keep a Friday chat about blockers.</li>
              <li data-kind="answer" data-label="Final plan">New plan: 38.25 meeting person-hours a week. Blockers go in the Friday written update, and Hannah calls anyone who is stuck. She will review the changes in 6 weeks.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Paste your own weekly meeting list, or use the sample. Ask AI to audit it, then check the numbers yourself.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a meeting coach for team leads. Use simple English.

        My team: [9 people, including me, at a London digital agency].
        My weekly meetings (name, length in minutes, times per week, number of people):
        [Daily stand-up, 15, 5, 9
        Monday planning, 60, 1, 9
        Thursday design review, 60, 1, 6
        Friday status round-up, 45, 1, 9
        Client call, 45, 1, 4
        1:1s, 30, 8, 2
        Office move working group, 60, 1, 7]

        Please:
        1. Make a table: Meeting, Purpose (decide, solve, connect or inform), Person-hours per week (length x times x people / 60), Recommendation (keep, shorten, replace or cancel), Reason.
        2. Show the total person-hours before and after your changes.
        3. For each "replace", suggest the alternative (for example a written update).
        4. Do not recommend cancelling 1:1s. Mark any idea I should test with my team first.</pre>
            <ul class="ai-try-checks">
              <li>Recalculate every person-hours number in a spreadsheet.</li>
              <li>Meetings that only share information are replaced or shortened.</li>
              <li>1:1s and meetings for decisions are kept.</li>
              <li>You plan to ask your team before you change anything.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Meet to decide, solve, connect or handle sensitive news. Share information in writing. Count meeting time in person-hours, check the maths yourself, and agree changes with your team instead of cutting meetings alone.
        </div>
      HTML
      starter_code: nil
    },
    5 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mgmt">Management</div>
          <h1 class="lc-title">Writing Agendas</h1>
        </div>
        <p class="lc-lead">An agenda is the plan for a meeting: its goal, the topics, how long each takes and who leads each one. A good agenda helps people prepare, keeps the meeting on time and makes decisions more likely. In this lesson you will learn the parts of a good agenda. You will also use AI to draft one and check it before you send it.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 320" role="img" aria-label="A sample agenda for the Bluefern office move working group on Tuesday 3 November 2026, 10:00 to 10:45. Goal: agree desk rules and the packing plan. Pre-read: desk options, 2 pages. Five items with times and owners add up to 45 minutes. Roles: chair Grace, notes Sam, timekeeper Chloe. Labels point out the goal, the pre-read, times and owners, the total and the roles.">
            <defs><marker id="mc5a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12" fill="#e2e0f0">
              <rect x="30" y="16" width="430" height="290" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="50" y="42" font-size="14" font-weight="700" fill="#c4b5fd">Office move working group</text>
              <text x="50" y="62" fill="#9b99b8">Tue 3 Nov 2026, 10:00-10:45, Room 2 + Teams</text>
              <text x="50" y="90"><tspan font-weight="700">Goal:</tspan> agree desk rules and packing plan</text>
              <text x="50" y="114"><tspan font-weight="700">Pre-read:</tspan> desk options (2 pages)</text>
              <line x1="50" y1="126" x2="440" y2="126" stroke="#3b3b66"/>
              <text x="50" y="146">1. Last week's actions</text>
              <text x="330" y="146">5 min</text>
              <text x="390" y="146">Grace</text>
              <text x="50" y="170">2. Desk-booking rules (decide)</text>
              <text x="330" y="170">15 min</text>
              <text x="390" y="170">Grace</text>
              <text x="50" y="194">3. Packing-day plan (decide)</text>
              <text x="330" y="194">15 min</text>
              <text x="390" y="194">Chloe</text>
              <text x="50" y="218">4. Client message timing</text>
              <text x="330" y="218">5 min</text>
              <text x="390" y="218">Hannah</text>
              <text x="50" y="242">5. Actions and owners</text>
              <text x="330" y="242">5 min</text>
              <text x="390" y="242">Sam</text>
              <text x="330" y="266" font-weight="700" fill="#6ee7b7">Total: 45 min</text>
              <text x="50" y="292" fill="#9b99b8">Chair: Grace. Notes: Sam. Time: Chloe.</text>
              <g font-size="13" text-anchor="middle">
                <rect x="500" y="66" width="240" height="36" rx="8" fill="#27274e" stroke="#3b82f6"/>
                <text x="620" y="89">Goal: one clear outcome</text>
                <rect x="500" y="112" width="240" height="36" rx="8" fill="#27274e" stroke="#22d3ee"/>
                <text x="620" y="135">Pre-read sent a day before</text>
                <rect x="500" y="166" width="240" height="36" rx="8" fill="#27274e" stroke="#f59e0b"/>
                <text x="620" y="189">Time and owner per item</text>
                <rect x="500" y="220" width="240" height="36" rx="8" fill="#27274e" stroke="#10b981"/>
                <text x="620" y="243">Times fit the slot</text>
                <rect x="500" y="266" width="240" height="36" rx="8" fill="#27274e" stroke="#ec4899"/>
                <text x="620" y="289">Roles agreed in advance</text>
              </g>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#mc5a)">
                <line x1="499" y1="84" x2="464" y2="86"/>
                <line x1="499" y1="130" x2="464" y2="110"/>
                <line x1="499" y1="184" x2="464" y2="184"/>
                <line x1="499" y1="238" x2="464" y2="262"/>
                <line x1="499" y1="284" x2="464" y2="288"/>
              </g>
            </g>
          </svg>
          <figcaption>A 45-minute agenda for Bluefern's office move working group. Every item has a time and an owner, and the times add up to the slot.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The parts of a good agenda</h3>
          <table class="lc-table">
            <thead><tr><th>Part</th><th>What it means</th><th>Tip</th></tr></thead>
            <tbody>
              <tr><td><strong>Goal</strong></td><td>What the meeting must achieve</td><td>Write an outcome ("agree desk rules"), not a topic ("desks").</td></tr>
              <tr><td><strong>Items</strong></td><td>The topics, in order</td><td>Mark each one: decide, discuss or inform. Put decisions early.</td></tr>
              <tr><td><strong>Timings</strong></td><td>Minutes for each item</td><td>The total must fit the slot. Leave 5 minutes for actions.</td></tr>
              <tr><td><strong>Owners</strong></td><td>Who leads each item</td><td>Ask owners first. Do not surprise people.</td></tr>
              <tr><td><strong>Pre-read</strong></td><td>A short document to read before the meeting</td><td>Keep it short and give a "read by" time. Move pure updates here.</td></tr>
              <tr><td><strong>Roles</strong></td><td>Chair (runs the meeting), note-taker (records decisions and actions), timekeeper (watches the clock)</td><td>Rotate the note-taker role so it is fair.</td></tr>
            </tbody>
          </table>
          <p>Many teams send the agenda at least one working day before. Then people can read, prepare and say if something is missing.</p>
        </div>
        <div class="lc-card">
          <h3>A weak agenda and a better one</h3>
          <p><strong>Weak agenda:</strong></p>
          <pre><code>Office move catch-up
        - Desks
        - Packing
        - Clients
        - AOB</code></pre>
          <p>Nobody knows what must be decided, how long each topic takes or what to read first. "AOB" (any other business) often fills the last 15 minutes with surprises.</p>
          <p><strong>Better agenda:</strong></p>
          <pre><code>Office move working group
        Tuesday 3 November 2026, 10:00-10:45, Meeting Room 2 + Teams
        Goal: agree the desk-booking rules and the packing-day plan.
        Pre-read: "Desk options" (2 pages). Please read by Monday 2 November, 5pm.
        Roles: Chair Grace Mensah. Notes Sam O'Neill. Timekeeper Chloe Evans.

        1. Actions from last week (inform)       5 min   Grace
        2. Desk-booking rules (decide)           15 min  Grace
           Options A, B or C in the pre-read.
        3. Packing-day plan (decide)             15 min  Chloe
           Crates labelled by 4pm on Thu 25 Feb 2027?
        4. Client message timing (discuss)        5 min  Hannah
        5. Actions, owners and dates              5 min  Sam
                                          Total: 45 min</code></pre>
          <p>There is no AOB. New topics go to the next agenda, or into the Slack channel.</p>
        </div>
        <div class="lc-card">
          <h3>Drafting an agenda with AI, and what to check</h3>
          <p>AI is good at turning messy notes into a neat agenda. Give it the goal, the slot length, the people and your notes.</p>
          <pre><code>Turn my notes into a 45-minute meeting agenda.
        Goal: agree desk-booking rules and the packing-day plan.
        People: Grace (chair), Hannah, Chloe, Sam, Ben (IT), Priya (finance), Tom.
        Notes: desks 3 options; packing day Thu 25 Feb; when to tell clients;
        Ben's Wi-Fi update; check last week's actions.
        Mark each item decide, discuss or inform. Add times and owners.
        Times must add up to exactly 45 minutes. Suggest what could be a pre-read.</code></pre>
          <p>In Hannah's test, the first AI draft looked good. But she found three problems:</p>
          <ul class="lc-list">
            <li>The times added up to 55 minutes, not 45. Always add them up yourself.</li>
            <li>It made Priya the owner of the desk item. Priya had not agreed, and Grace owns that decision.</li>
            <li>Ben's Wi-Fi update was a 10-minute item. It is information only, so Hannah moved it into the pre-read.</li>
          </ul>
          <p>Only you know who owns what, and which topics are sensitive. Check those before you send.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: build an agenda</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put the steps for writing an agenda in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Write the goal of the meeting as one clear outcome.</li>
              <li data-order="2">List the decisions and questions that the meeting must cover.</li>
              <li data-order="3">Move information-only items into a short pre-read.</li>
              <li data-order="4">Give each item a time and an owner who has agreed.</li>
              <li data-order="5">Check that the times add up to the slot, including 5 minutes for actions.</li>
              <li data-order="6">Name the chair, note-taker and timekeeper.</li>
              <li data-order="7">Send the agenda and pre-read at least a working day before.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Give AI your rough notes for a real meeting. Ask for a timed agenda, then check the timings and owners.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a meeting planner for busy managers. Use simple English.

        Meeting: [Office move working group]
        Date, time and place: [Tuesday 3 November 2026, 10:00-10:45, Meeting Room 2 and Teams]
        Goal: [agree the desk-booking rules and the packing-day plan]
        People and roles: [Grace (operations manager, chair), Hannah (team lead), Chloe (project coordinator), Sam (QA tester), Ben (IT), Priya (finance), Tom (client services)]
        My rough notes: [3 desk options to choose from; packing day is Thursday 25 February 2027; when to tell clients; Ben's Wi-Fi update; check last week's actions]

        Please:
        1. Write an agenda with: goal, pre-read, roles (chair, note-taker, timekeeper), and numbered items.
        2. For each item give: type (decide, discuss or inform), minutes, owner.
        3. Times must add up to exactly the meeting length. Show the total.
        4. Move information-only items into a pre-read with a "read by" time.
        5. End with 5 minutes for actions, owners and dates. Do not add "AOB".
        6. List anything you guessed, such as owners, so I can confirm it.</pre>
            <ul class="ai-try-checks">
              <li>Add the minutes yourself: they must equal the slot.</li>
              <li>Every owner is a real person who has agreed.</li>
              <li>Information-only items are in the pre-read, not the meeting.</li>
              <li>Decisions come early, and there is time for actions at the end.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A good agenda states one outcome, gives every item a time and an owner, and fits the slot. Let AI tidy your notes, but add up the minutes and confirm the owners yourself before you send it.
        </div>
      HTML
      starter_code: nil
    },
    6 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mgmt">Management</div>
          <h1 class="lc-title">Running Inclusive Meetings</h1>
        </div>
        <p class="lc-lead">An inclusive meeting is one where everyone can hear, see, follow and speak. This matters most in hybrid meetings, where some people are in the room and some join online. In this lesson you will learn simple ways to give every person a voice. You will also learn accessibility basics and how AI can help you prepare. Good ideas often come from quiet or remote people, so inclusion also leads to better decisions.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 330" role="img" aria-label="A hybrid meeting plan. Left: six people in Meeting Room 2, with Hannah as chair and Chloe as chat watcher. Right: three people on Teams, including Nadia in Bristol. In the middle: live captions on, room joins on laptops, remote people speak first, chat read aloud. Below: before the meeting send the agenda and pre-read by Friday 2pm; during the meeting use rounds, captions and the chat; after the meeting send notes and actions to everyone.">
            <defs><marker id="mc6a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto-start-reverse"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <text x="380" y="26" font-weight="700" fill="#c4b5fd" text-anchor="middle">One meeting, two places: plan so both sides take part</text>
              <rect x="20" y="44" width="250" height="170" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="40" y="70" font-weight="700" fill="#93c5fd">In Meeting Room 2</text>
              <text x="40" y="96">Hannah (chair)</text>
              <text x="40" y="116">Chloe (chat watcher)</text>
              <text x="40" y="136">Leo, Ravi</text>
              <text x="40" y="156">Sam, Marcus</text>
              <text x="40" y="190" font-size="12" fill="#9b99b8">Each on a laptop, sound off</text>
              <rect x="490" y="44" width="250" height="170" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="510" y="70" font-weight="700" fill="#f9a8d4">On Teams (remote)</text>
              <text x="510" y="96">Nadia (Bristol)</text>
              <text x="510" y="116">Amira (home)</text>
              <text x="510" y="136">Jade (home)</text>
              <text x="510" y="190" font-size="12" fill="#9b99b8">Cameras optional, chat open</text>
              <g text-anchor="middle">
                <rect x="290" y="50" width="180" height="34" rx="8" fill="#27274e" stroke="#22d3ee"/>
                <text x="380" y="72">Live captions on</text>
                <rect x="290" y="92" width="180" height="34" rx="8" fill="#27274e" stroke="#10b981"/>
                <text x="380" y="114">Room joins on laptops</text>
                <rect x="290" y="134" width="180" height="34" rx="8" fill="#27274e" stroke="#f59e0b"/>
                <text x="380" y="156">Remote speak first</text>
                <rect x="290" y="176" width="180" height="34" rx="8" fill="#27274e" stroke="#8b5cf6"/>
                <text x="380" y="198">Chat read aloud</text>
              </g>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-start="url(#mc6a)" marker-end="url(#mc6a)">
                <line x1="274" y1="130" x2="286" y2="130"/>
                <line x1="474" y1="130" x2="486" y2="130"/>
              </g>
              <g text-anchor="middle">
                <rect x="20" y="236" width="230" height="74" rx="8" fill="#27274e" stroke="#3b82f6"/>
                <text x="135" y="262" font-weight="700">Before</text>
                <text x="135" y="286" font-size="12">Agenda, pre-read by Fri 2pm</text>
                <rect x="265" y="236" width="230" height="74" rx="8" fill="#27274e" stroke="#f59e0b"/>
                <text x="380" y="262" font-weight="700">During</text>
                <text x="380" y="286" font-size="12">Rounds, captions, chat</text>
                <rect x="510" y="236" width="230" height="74" rx="8" fill="#27274e" stroke="#10b981"/>
                <text x="625" y="262" font-weight="700">After</text>
                <text x="625" y="286" font-size="12">Notes and actions to all</text>
              </g>
            </g>
          </svg>
          <figcaption>Hannah's plan for her hybrid Monday planning meeting. Small habits before, during and after make the meeting fair for people in the room and online.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>What went wrong in Hannah's hybrid meeting</h3>
          <p>A <strong>hybrid meeting</strong> has some people in the same room and some people online. Hannah's Monday planning is hybrid. Six people sit in Meeting Room 2. Nadia Kowalski, a UX researcher, works from home in Bristol. Amira and Jade often join from home on Mondays.</p>
          <p>Here is what happened at the planning meeting on Monday 19 October 2026 (made up):</p>
          <ul class="lc-list">
            <li>People in the room talked over each other. The room microphone did not pick up the far end of the table.</li>
            <li>Nadia typed a good idea in the chat. Nobody in the room saw it.</li>
            <li>Sam O'Neill, a quiet tester, did not speak at all. Later he told Hannah he had a concern about the test dates.</li>
            <li>The slides were shown on the room screen only. Remote people could not read them clearly.</li>
          </ul>
          <p>Nobody meant to leave people out. But the meeting was easy for the room and hard for everyone else. The team made decisions without hearing three people.</p>
          <table class="lc-table">
            <thead><tr><th>Problem</th><th>Simple fix</th></tr></thead>
            <tbody>
              <tr><td>Remote people cannot hear the room</td><td>Everyone in the room joins the call on a laptop with sound off, or use a good room mic. Test it before the meeting.</td></tr>
              <tr><td>The chat is ignored</td><td>Name a <strong>chat watcher</strong>: a person who reads chat questions aloud. Rotate this role.</td></tr>
              <tr><td>Remote people are asked last, or never</td><td>In each round, ask remote people first.</td></tr>
              <tr><td>Slides are hard to see</td><td>Share the screen in the call, and send the slide link before the meeting.</td></tr>
              <tr><td>Quiet people do not speak</td><td>Use rounds and silent writing time (see below).</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Giving everyone a voice</h3>
          <p>The chair (the person who runs the meeting) controls who speaks. These habits help every person take part:</p>
          <ul class="lc-list">
            <li><strong>Rounds:</strong> ask each person in turn for a short view. Start with remote people. Anyone may say "pass".</li>
            <li><strong>Silent writing time:</strong> give 2 minutes for everyone to write ideas in a shared document first. Then discuss. This helps people who think before they speak.</li>
            <li><strong>Hand raise:</strong> use the hand-raise button in Teams, Zoom or Meet. People in the room raise a real hand.</li>
            <li><strong>Stop interruptions kindly:</strong> "Leo, hold that thought. Nadia was still speaking."</li>
            <li><strong>Invite, do not put people on the spot:</strong> "Sam, you know the test plan. Is there anything we have missed?"</li>
            <li><strong>Check-out round:</strong> at the end, each person says one word or one open question.</li>
          </ul>
          <p>Some people speak English as a second language. Speak clearly, avoid slang and explain abbreviations. Put key decisions in writing in the chat, so everyone can read them as well as hear them.</p>
        </div>
        <div class="lc-card">
          <h3>Accessibility basics</h3>
          <p><strong>Accessibility</strong> means people with different needs can take part fully. That includes people who are deaf, have low vision, are dyslexic, or are neurodivergent. You often will not know who needs what, so make good habits normal for everyone:</p>
          <ul class="lc-list">
            <li>Turn on live captions. Teams, Zoom and Google Meet all offer them. Some paid plans also offer translated captions. Check your tool's current help pages.</li>
            <li>Send the agenda and pre-read early. Hannah now sends them by Friday 2pm for Monday planning.</li>
            <li>Use clear documents: headings, plain words, good colour contrast and alt text (a short text description) for images.</li>
            <li>Describe what is on screen. Say "the chart shows bookings going up", not "as you can see".</li>
            <li>Make cameras optional. Plan a short break in meetings longer than about an hour.</li>
            <li>Ask everyone, privately and in the same way: "Is there anything that would make meetings easier for you?"</li>
          </ul>
          <p>In the UK, the Equality Act 2010 says employers must make reasonable adjustments for disabled staff. In the US, the ADA (Americans with Disabilities Act) requires reasonable accommodations. This is general education, not legal advice. Follow your HR policy and ask HR for help. Keep any person's health details private. Never mention them in the meeting or in the notes.</p>
        </div>
        <div class="lc-card">
          <h3>How AI helps, and what it cannot see</h3>
          <p>AI can help you prepare a fairer meeting. It cannot see who stayed quiet or who could not hear. That is your job as the chair.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Write an agenda for our planning meeting.</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>I lead a hybrid planning meeting: 6 people in a room, 3 on Teams.
        Length: 45 minutes. Goal: agree next week's priorities.
        Some people speak English as a second language.
        1. Write an agenda that includes a round where remote people speak first.
        2. Add 2 minutes of silent writing time before the main discussion.
        3. Name the roles we need: chair, note-taker, timekeeper, chat watcher.
        4. Rewrite my pre-read below in plain English, under 200 words.
        Pre-read: [paste text with no personal data]</code></pre>
          <p>AI can also find jargon in your slides, suggest alt text for a chart, or summarise chat questions after the meeting. You still decide the order of speakers, watch the room and the screen, and follow up with anyone who did not get a chance to speak.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: include or exclude?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each made-up meeting habit. Does it help everyone take part, or does it leave people out?</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="in" data-label="Helps everyone take part"></div>
              <div data-sorter-target="bucket" data-bucket="out" data-label="Leaves people out"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="in" data-why="Remote people are often forgotten. Asking them first balances the room.">Hannah asks Nadia, Amira and Jade for their view first in each round.</li>
              <li data-bucket="in" data-why="A named chat watcher makes sure written questions are heard.">Chloe reads chat questions aloud every few minutes.</li>
              <li data-bucket="in" data-why="Early pre-reads help people who need time to read, think or translate.">The agenda and pre-read go out by Friday 2pm for Monday's meeting.</li>
              <li data-bucket="out" data-why="Remote people cannot read small slides on a room screen. Share them in the call too.">Slides are shown only on the screen in Meeting Room 2.</li>
              <li data-bucket="out" data-why="This rewards the fastest talkers. Quiet and remote people rarely get a turn.">"Just jump in if you have something to say."</li>
              <li data-bucket="out" data-why="Health details are private. Ask privately and follow your HR policy.">Asking Jade in front of everyone why she uses captions.</li>
              <li data-bucket="in" data-why="Writing first gives everyone the same chance to share ideas.">Two minutes of silent writing in a shared doc before the discussion.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Describe a hybrid meeting you run. Ask AI for an inclusive plan, then decide which ideas fit your team.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a coach for inclusive, hybrid meetings. Use simple English.

        My meeting: [weekly team planning, 45 minutes]
        Goal: [agree the team's priorities for the week]
        People: [6 people in a meeting room, 3 people on Microsoft Teams]
        Tools: [Teams with live captions, a shared document, Slack]
        Problems last time: [the room talked over each other; a remote person's chat idea was missed; one quiet person did not speak; slides were hard to see online]

        Please give me:
        1. A checklist for before, during and after the meeting (5 items each, at most).
        2. A 45-minute agenda with times, including a round where remote people speak first and 2 minutes of silent writing.
        3. The roles I need (chair, note-taker, timekeeper, chat watcher) and one line on what each does.
        4. Three short phrases the chair can say to stop interruptions or invite quiet people kindly.
        Do not ask about anyone's health or personal needs. Suggest how I can ask the whole team privately what helps them.</pre>
            <ul class="ai-try-checks">
              <li>Remote people get a fair turn, not only "any questions online?" at the end.</li>
              <li>The agenda times add up to 45 minutes.</li>
              <li>The plan asks everyone the same way and keeps personal needs private.</li>
              <li>You pick the ideas that fit your team and tools, and test them.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> An inclusive meeting is planned, not hoped for. Send papers early, turn on captions, ask remote and quiet people first, and read the chat aloud. AI can help you prepare, but only you can notice who has not been heard.
        </div>
      HTML
      starter_code: nil
    },
    7 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mgmt">Management</div>
          <h1 class="lc-title">AI Meeting Notes and Action Items</h1>
        </div>
        <p class="lc-lead">AI note-takers can turn a meeting into a summary and a list of actions in minutes. But they also make mistakes, and recording people needs their consent. In this lesson you will learn how to tell people before you record, what good notes contain, and how to check an AI summary. Every action must end with a named owner and a due date.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 350" role="img" aria-label="Top: four steps. Tell people and get consent, AI transcribes and summarises, the note-taker checks, then checked notes are shared within 24 hours. Below: the first AI summary of Bluefern's working group meeting compared with Sam's checked notes. Option C becomes Option B. Client email owner Tom becomes Hannah, due 4 December. Tell clients in December becomes Monday 11 January 2027. A private health detail about Leo is removed.">
            <defs><marker id="mc7a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <g text-anchor="middle">
                <rect x="20" y="20" width="160" height="56" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
                <text x="100" y="44" font-weight="700">1. Tell people</text>
                <text x="100" y="64" font-size="12">and get consent</text>
                <rect x="210" y="20" width="160" height="56" rx="8" fill="#1f1f44" stroke="#8b5cf6"/>
                <text x="290" y="44" font-weight="700">2. AI drafts</text>
                <text x="290" y="64" font-size="12">transcript, summary</text>
                <rect x="400" y="20" width="160" height="56" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
                <text x="480" y="44" font-weight="700">3. A person checks</text>
                <text x="480" y="64" font-size="12">decisions, owners, dates</text>
                <rect x="590" y="20" width="150" height="56" rx="8" fill="#1f1f44" stroke="#10b981"/>
                <text x="665" y="44" font-weight="700">4. Share</text>
                <text x="665" y="64" font-size="12">within 24 hours</text>
              </g>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#mc7a)">
                <line x1="181" y1="48" x2="207" y2="48"/>
                <line x1="371" y1="48" x2="397" y2="48"/>
                <line x1="561" y1="48" x2="587" y2="48"/>
              </g>
              <rect x="20" y="100" width="320" height="230" rx="10" fill="#27274e" stroke="#ec4899"/>
              <text x="40" y="128" font-weight="700" fill="#f9a8d4">First AI summary</text>
              <text x="40" y="164">Desk rules: Option C</text>
              <text x="40" y="210">Client email: Tom</text>
              <text x="40" y="256">Tell clients in December</text>
              <text x="40" y="302">"Leo needs a fixed desk</text>
              <text x="40" y="320" font-size="12" fill="#9b99b8">because of his back"</text>
              <rect x="420" y="100" width="320" height="230" rx="10" fill="#27274e" stroke="#10b981"/>
              <text x="440" y="128" font-weight="700" fill="#6ee7b7">After Sam's check</text>
              <text x="440" y="164">Desk rules: Option B</text>
              <text x="440" y="210">Client email: Hannah, by 4 Dec</text>
              <text x="440" y="256">Clients told Mon 11 Jan 2027</text>
              <text x="440" y="302">Removed: private matter</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#mc7a)">
                <line x1="344" y1="160" x2="414" y2="160"/>
                <line x1="344" y1="206" x2="414" y2="206"/>
                <line x1="344" y1="252" x2="414" y2="252"/>
                <line x1="344" y1="298" x2="414" y2="298"/>
              </g>
            </g>
          </svg>
          <figcaption>The AI summary of the working group meeting looked tidy, but four lines were wrong or private. A person checked it before anyone saw it.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Before you record: tell people and get consent</h3>
          <p>Most AI note-takers record or <strong>transcribe</strong> the meeting (turn speech into text). Then they write a summary. Examples are Zoom AI Companion, "Take notes for me" in Google Meet and the recap features in Microsoft Teams. Teams AI recaps usually need an extra licence, such as Teams Premium or Microsoft 365 Copilot. Features and licences change often, so check your tool's current help pages.</p>
          <p>Recording people is serious. Follow these steps every time:</p>
          <ul class="lc-list">
            <li>Say in the invite that AI notes will be on, and why.</li>
            <li>Say it again at the start. Ask if anyone objects. Be ready to turn it off.</li>
            <li>Say who will see the notes and how long they are kept.</li>
            <li>Do not use AI notes for 1:1s about health, performance or personal problems, unless your policy allows it and the person agrees.</li>
            <li>Use only the tools your company has approved.</li>
          </ul>
          <p>Grace opened the working group meeting on Tuesday 3 November 2026 like this:</p>
          <pre><code>"Before we start: Teams transcription and AI notes are on today.
        They help Sam write the action list. Sam checks the notes before
        anyone sees them, and only this group gets them.
        If you would rather we did not record, say so now or message me."</code></pre>
          <p>In the UK, a recording of people is personal data under UK GDPR. In some US states, everyone on a call must agree before it is recorded. This is general education, not legal advice. Follow your company policy and ask your data protection or legal adviser.</p>
        </div>
        <div class="lc-card">
          <h3>What good meeting notes contain</h3>
          <p>Good notes are not a full transcript. They record what people need to act on. Use the same four headings every time:</p>
          <pre><code>Office move working group: Tuesday 3 November 2026
        DECISIONS
        D1 Desk-booking rules: Option B. Each team has a desk zone on
           anchor days (Tue, Wed, Thu). Book up to 2 weeks ahead.
           Cancel by 10am if you will not come in. (Decided by Grace)
        D2 Packing: crates arrive Mon 22 Feb 2027. Labelled by 4pm
           on Thu 25 Feb 2027. (Owner: Chloe)
        D3 Clients told on Mon 11 Jan 2027 by each account lead.
        ACTIONS (owner, due date)
        A1 Share checked meeting notes             Sam     Wed 4 Nov
        A2 Add desk-booking rules to the FAQ page  Grace   Wed 4 Nov
        A3 Write the packing-day plan              Chloe   Fri 13 Nov
        A4 List all 25 clients with account leads  Tom     Fri 13 Nov
        A5 Check mover quotes against the budget   Priya   Fri 20 Nov
        A6 Test the desk-booking app with 5 people Ben     Fri 27 Nov
        A7 Draft the Harbour &amp; Finch client email  Hannah  Fri 4 Dec
        OPEN QUESTIONS
        Can internal teams book the Fern Room? Back on the agenda 10 Nov.
        NEXT MEETING: Tuesday 10 November 2026, 10:00-10:45</code></pre>
          <p>An <strong>action item</strong> is one task with one owner and one due date. "Look into crates" is not an action. "Chloe: write the packing-day plan by Friday 13 November" is.</p>
        </div>
        <div class="lc-card">
          <h3>Checking the AI summary</h3>
          <p>Sam O'Neill was the note-taker. He compared the AI summary with his own short notes and the agenda. He found four problems:</p>
          <table class="lc-table">
            <thead><tr><th>The AI summary said</th><th>What really happened</th><th>Why the AI got it wrong</th></tr></thead>
            <tbody>
              <tr><td>"The group chose Option C."</td><td>The group discussed C, then chose B.</td><td>It picked up the option people talked about most.</td></tr>
              <tr><td>"Tom will draft the client email."</td><td>Tom spoke about clients, but Hannah owns the email.</td><td>It guessed the owner from who spoke.</td></tr>
              <tr><td>"Tell clients in December."</td><td>Clients are told on Monday 11 January 2027.</td><td>Someone said "draft in December". The AI mixed the two.</td></tr>
              <tr><td>"Leo needs a fixed desk because of his back."</td><td>Hannah said only "one fixed-desk request, I will take it to HR".</td><td>It added a private health detail from a side comment.</td></tr>
            </tbody>
          </table>
          <p>Use this checklist on every AI summary:</p>
          <ul class="lc-list">
            <li><strong>Decisions:</strong> was it really decided, or only discussed?</li>
            <li><strong>Owners:</strong> did that person agree to the action?</li>
            <li><strong>Dates and numbers:</strong> check each one against the agenda and your notes.</li>
            <li><strong>Privacy:</strong> remove health, pay, performance and other personal details.</li>
            <li><strong>Fairness:</strong> does it quote people in a way they would accept?</li>
          </ul>
          <p>Sam then asked each owner in Slack to confirm their action. He shared the checked notes on Wednesday 4 November at 10am, within 24 hours.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: Sam checks the AI notes</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="tool" data-label="Teams recap">After the meeting, Teams shows an AI summary and a list of suggested tasks.</li>
              <li data-kind="user" data-label="Sam's prompt">In the company-approved AI tool, Sam asks: "Turn this transcript into Decisions, Actions (owner, due date), Open questions. Mark anything you are not sure about with [CHECK]. Leave out personal or health details."</li>
              <li data-kind="answer" data-label="AI draft">The AI returns tidy notes with 3 decisions and 7 actions. Two items are marked [CHECK].</li>
              <li data-kind="warn" data-label="Wrong decision">The draft says Option C. Sam's own notes say the group chose Option B. He fixes it.</li>
              <li data-kind="warn" data-label="Wrong owner">The client email is given to Tom. Sam checks with Hannah. She owns it, due Friday 4 December.</li>
              <li data-kind="warn" data-label="Private detail">A line about Leo's health is still there. Sam deletes it and tells Hannah.</li>
              <li data-kind="check" data-label="Owners confirm">Sam posts each action in Slack and asks owners to reply "OK" or suggest a new date.</li>
              <li data-kind="result" data-label="Notes shared">Checked notes go to the 7 group members on Wednesday 4 November, 10am. The raw transcript is not shared.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Paste rough notes from a meeting, with no personal details. Ask AI to turn them into decisions and actions, then check every line.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a careful meeting note-taker. Use simple English.

        Meeting: [Office move working group, Tuesday 3 November 2026]
        People: [Grace (chair), Hannah, Chloe, Sam (notes), Ben (IT), Priya (finance), Tom (client services)]
        My rough notes:
        [Desks: talked a lot about option C, then went with B (team zones Tue-Thu, book 2 weeks ahead, cancel by 10am). Grace final say.
        Packing: crates come Mon 22 Feb, labels done by 4pm Thu 25 Feb. Chloe writes plan by 13 Nov.
        Clients: tell them Mon 11 Jan. Tom to list clients and account leads by 13 Nov. Hannah drafts client email by 4 Dec.
        Fern Room for internal use? Not decided.]

        Please write notes with four headings: Decisions, Actions, Open questions, Next meeting.
        Rules:
        1. Each action: one task, one owner, one due date (weekday and date).
        2. Do not turn a discussion into a decision.
        3. Mark anything unclear or guessed with [CHECK].
        4. Leave out personal, health or pay details.
        5. Under 200 words.</pre>
            <ul class="ai-try-checks">
              <li>Option B is the decision, not Option C.</li>
              <li>Every action has one owner and a date that matches your notes.</li>
              <li>The Fern Room question is an open question, not a decision.</li>
              <li>Guesses are marked [CHECK], and no personal details appear.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> AI notes save time only if a person checks them. Tell people before you record, check every decision, owner and date, remove private details, and ask owners to confirm their actions before you share the notes.
        </div>
      HTML
      starter_code: nil
    },
    8 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mgmt">Management</div>
          <h1 class="lc-title">Following Up</h1>
        </div>
        <p class="lc-lead">A meeting is only useful if the actions happen. Following up means you track each action, remind people before it is due, and record what was decided. In this lesson you will build a simple action tracker with spreadsheet formulas. You will also keep a decision log and use AI to draft polite reminders and status updates.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 340" role="img" aria-label="A follow-up loop: meeting, notes within 24 hours, action tracker, reminders, check-in, then the next meeting starts with open actions. Below left: Bluefern's action tracker on Tuesday 17 November. Tom's client list, due 13 November, is overdue by 4 days. Priya has 3 days left, Ben 10 and Hannah 17. Below right: a decision log with D1 desk rules Option B, D2 labels by 4pm on 25 February, and D3 clients told on 11 January.">
            <defs><marker id="mc8a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <g text-anchor="middle">
                <rect x="14" y="20" width="124" height="56" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
                <text x="76" y="44" font-weight="700">Meeting</text>
                <text x="76" y="64" font-size="12">decide, assign</text>
                <rect x="166" y="20" width="124" height="56" rx="8" fill="#1f1f44" stroke="#8b5cf6"/>
                <text x="228" y="44" font-weight="700">Notes</text>
                <text x="228" y="64" font-size="12">within 24 hours</text>
                <rect x="318" y="20" width="124" height="56" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
                <text x="380" y="44" font-weight="700">Tracker</text>
                <text x="380" y="64" font-size="12">owner, due date</text>
                <rect x="470" y="20" width="124" height="56" rx="8" fill="#1f1f44" stroke="#22d3ee"/>
                <text x="532" y="44" font-weight="700">Reminders</text>
                <text x="532" y="64" font-size="12">before due date</text>
                <rect x="622" y="20" width="124" height="56" rx="8" fill="#1f1f44" stroke="#10b981"/>
                <text x="684" y="44" font-weight="700">Check-in</text>
                <text x="684" y="64" font-size="12">review actions</text>
              </g>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#mc8a)">
                <line x1="139" y1="48" x2="163" y2="48"/>
                <line x1="291" y1="48" x2="315" y2="48"/>
                <line x1="443" y1="48" x2="467" y2="48"/>
                <line x1="595" y1="48" x2="619" y2="48"/>
                <path d="M684,77 V104 H76 V80"/>
              </g>
              <text x="380" y="124" font-size="12" fill="#9b99b8" text-anchor="middle">The next meeting starts with open actions</text>
              <rect x="14" y="140" width="490" height="186" rx="10" fill="#27274e" stroke="#f59e0b"/>
              <text x="30" y="164" font-weight="700" fill="#fcd34d">Action tracker, checked Tue 17 Nov</text>
              <g font-size="12">
                <text x="30" y="192" fill="#9b99b8">ID</text>
                <text x="64" y="192" fill="#9b99b8">Action</text>
                <text x="250" y="192" fill="#9b99b8">Owner</text>
                <text x="318" y="192" fill="#9b99b8">Due</text>
                <text x="392" y="192" fill="#9b99b8">Status</text>
                <text x="30" y="220">A4</text>
                <text x="64" y="220">Client list</text>
                <text x="250" y="220">Tom</text>
                <text x="318" y="220">13 Nov</text>
                <text x="392" y="220" fill="#f9a8d4" font-weight="700">Overdue (-4)</text>
                <text x="30" y="248">A5</text>
                <text x="64" y="248">Mover quotes vs budget</text>
                <text x="250" y="248">Priya</text>
                <text x="318" y="248">20 Nov</text>
                <text x="392" y="248">3 days left</text>
                <text x="30" y="276">A6</text>
                <text x="64" y="276">Test desk-booking app</text>
                <text x="250" y="276">Ben</text>
                <text x="318" y="276">27 Nov</text>
                <text x="392" y="276">10 days left</text>
                <text x="30" y="304">A7</text>
                <text x="64" y="304">Draft client email</text>
                <text x="250" y="304">Hannah</text>
                <text x="318" y="304">4 Dec</text>
                <text x="392" y="304">17 days left</text>
              </g>
              <rect x="520" y="140" width="226" height="186" rx="10" fill="#27274e" stroke="#8b5cf6"/>
              <text x="536" y="164" font-weight="700" fill="#c4b5fd">Decision log</text>
              <g font-size="12">
                <text x="536" y="196">D1 Desk rules: Option B</text>
                <text x="536" y="224">D2 Labels by 4pm 25 Feb</text>
                <text x="536" y="252">D3 Clients told 11 Jan</text>
                <text x="536" y="290" fill="#9b99b8">Each with date, who</text>
                <text x="536" y="308" fill="#9b99b8">decided and why</text>
              </g>
            </g>
          </svg>
          <figcaption>Follow-up is a loop. The tracker shows what is late, and the decision log stops people deciding the same thing twice.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Three follow-up tools</h3>
          <table class="lc-table">
            <thead><tr><th>Tool</th><th>What it is</th><th>Where it can live</th></tr></thead>
            <tbody>
              <tr><td><strong>Action tracker</strong></td><td>A list of every action: owner, due date and status</td><td>A spreadsheet, Microsoft Planner, Asana, Trello, Jira, Monday.com or Notion</td></tr>
              <tr><td><strong>Reminders</strong></td><td>Short messages before a task is due</td><td>Task tool notifications, Slack or Teams, calendar</td></tr>
              <tr><td><strong>Decision log</strong></td><td>A record of each decision: date, what, who decided and why</td><td>A shared page, such as the working group's Notion page</td></tr>
            </tbody>
          </table>
          <p>Keep one tracker per project, in one place everyone can see. If actions live in five different chats, nobody knows what is late.</p>
          <p>Bigger projects often use a <strong>RAID log</strong> (a list of Risks, Assumptions, Issues and Dependencies). A decision log can be part of it. Start simple. A clear tracker and decision log are enough for most teams.</p>
        </div>
        <div class="lc-card">
          <h3>Worked example: Grace's action tracker</h3>
          <p>Grace keeps the office move actions in a spreadsheet. She checks it before each working group meeting. Cell H1 holds the check date, Tuesday 17 November 2026. Column E is the due date, F is the status, G shows late actions and I shows days left. All data is made up.</p>
          <table class="lc-table">
            <thead><tr><th>ID</th><th>Action</th><th>Owner</th><th>Due (E)</th><th>Status (F)</th><th>Late? (G)</th><th>Days left (I)</th></tr></thead>
            <tbody>
              <tr><td>A1</td><td>Share checked meeting notes</td><td>Sam</td><td>Wed 4 Nov</td><td>Done</td><td></td><td></td></tr>
              <tr><td>A2</td><td>Add desk-booking rules to the FAQ page</td><td>Grace</td><td>Wed 4 Nov</td><td>Done</td><td></td><td></td></tr>
              <tr><td>A3</td><td>Write the packing-day plan</td><td>Chloe</td><td>Fri 13 Nov</td><td>Done</td><td></td><td></td></tr>
              <tr><td>A4</td><td>List all 25 clients with account leads</td><td>Tom</td><td>Fri 13 Nov</td><td>In progress</td><td>Overdue</td><td>-4</td></tr>
              <tr><td>A5</td><td>Check mover quotes against the £48,000 budget</td><td>Priya</td><td>Fri 20 Nov</td><td>In progress</td><td></td><td>3</td></tr>
              <tr><td>A6</td><td>Test the desk-booking app with 5 people</td><td>Ben</td><td>Fri 27 Nov</td><td>Not started</td><td></td><td>10</td></tr>
              <tr><td>A7</td><td>Draft the Harbour &amp; Finch client email</td><td>Hannah</td><td>Fri 4 Dec</td><td>Not started</td><td></td><td>17</td></tr>
            </tbody>
          </table>
          <p>The formulas in row 2 (copy them down to row 8):</p>
          <pre><code>Late? (G2):      =IF(AND(F2&lt;&gt;"Done",E2&lt;$H$1),"Overdue","")
        Days left (I2):  =IF(F2="Done","",E2-$H$1)
        Open actions:    =COUNTIF(F2:F8,"&lt;&gt;Done")        result: 4
        Overdue actions: =COUNTIF(G2:G8,"Overdue")       result: 1</code></pre>
          <p>Format the "Days left" column as a number, not a date. In a live tracker you can use <code>TODAY()</code> instead of a fixed check date.</p>
          <p>The tracker shows one problem: Tom's client list is 4 days late. Grace does not blame him in the group. She asks him privately what is blocking him. Some account leads have not replied. They agree a new date, Friday 20 November, and Grace updates the tracker.</p>
        </div>
        <div class="lc-card">
          <h3>Decision log and reminders</h3>
          <p>A decision log stops the group from deciding the same thing again. It also helps new people understand why things are the way they are.</p>
          <table class="lc-table">
            <thead><tr><th>ID</th><th>Date</th><th>Decision</th><th>Who decided</th><th>Why</th></tr></thead>
            <tbody>
              <tr><td>D1</td><td>Tue 3 Nov 2026</td><td>Desk rules Option B: team zones on Tue, Wed and Thu; book up to 2 weeks ahead; cancel by 10am</td><td>Grace, with the working group</td><td>28 desks for 40 people. Teams can sit together on anchor days.</td></tr>
              <tr><td>D2</td><td>Tue 3 Nov 2026</td><td>Crates arrive Mon 22 Feb; labelled by 4pm on Thu 25 Feb 2027</td><td>Working group (owner: Chloe)</td><td>Movers collect on Fri 26 Feb.</td></tr>
              <tr><td>D3</td><td>Tue 3 Nov 2026</td><td>Clients told on Mon 11 Jan 2027 by account leads</td><td>Working group, after leadership sign-off</td><td>Staff hear first. Clients get 7 weeks' notice before the new address starts on 1 March.</td></tr>
            </tbody>
          </table>
          <p><strong>Reminders:</strong> send the checked notes within 24 hours. Then let tools do the routine reminders. Task tools such as Planner or Asana notify owners when a task is due. In Slack, <code>/remind</code> sets a reminder for yourself or a channel. Check your tool's current help pages for details.</p>
          <p><strong>Where AI helps:</strong> it can draft a weekly status summary from the tracker and polite reminder messages. It does not know the real status. Only the owners know that.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Write reminders for overdue tasks.</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Here is our action tracker (no personal data): [paste rows].
        Today is Tuesday 17 November 2026.
        1. Write a 5-line status summary for the working group.
        2. For each open action due in the next 7 days, draft a short,
           friendly Slack reminder to the owner. Offer help; do not blame.
        3. For overdue actions, draft a private message asking what is
           blocking the owner and suggesting we agree a new date.</code></pre>
          <p>Read each message before you send it. Check the dates and the tone. A reminder that sounds like blame can hurt trust.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: where does it go?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each line from the working group notes. Does it belong in the action tracker, the decision log, or neither?</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="action" data-label="Action tracker"></div>
              <div data-sorter-target="bucket" data-bucket="decision" data-label="Decision log"></div>
              <div data-sorter-target="bucket" data-bucket="neither" data-label="Neither"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="action" data-why="One task, one owner, one due date. Track it.">Ben: test the desk-booking app with 5 people by Friday 27 November.</li>
              <li data-bucket="action" data-why="A task with an owner and a date belongs in the tracker.">Priya: check mover quotes against the £48,000 budget by Friday 20 November.</li>
              <li data-bucket="decision" data-why="The group agreed a rule. Record the date, who decided and why.">Desk rules: Option B, with team zones on anchor days.</li>
              <li data-bucket="decision" data-why="An agreed date for an important step is a decision.">Clients will be told on Monday 11 January 2027.</li>
              <li data-bucket="neither" data-why="This is discussion, not an outcome. It does not need tracking.">Tom said the new kitchen looks nice.</li>
              <li data-bucket="neither" data-why="It is still open. Put it on the next agenda as an open question.">Can internal teams book the Fern Room? Not decided yet.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Paste your own action list, with no personal data, or use the sample. Ask AI for a status summary and reminder drafts, then check them.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a project assistant who helps a manager follow up. Use simple, friendly English.

        Today's date: [Tuesday 17 November 2026]
        Project: [office move]
        Action tracker (ID, action, owner, due date, status):
        [A3, Write the packing-day plan, Chloe, Fri 13 Nov 2026, Done
        A4, List all 25 clients with account leads, Tom, Fri 13 Nov 2026, In progress
        A5, Check mover quotes against the budget, Priya, Fri 20 Nov 2026, In progress
        A6, Test the desk-booking app with 5 people, Ben, Fri 27 Nov 2026, Not started
        A7, Draft the client email, Hannah, Fri 4 Dec 2026, Not started]

        Please:
        1. Make a table: ID, owner, due date, days left (negative if late), Overdue yes/no. Show how you counted the days.
        2. Write a status summary for the team in 5 lines or fewer.
        3. Draft a friendly reminder for each open action due in the next 7 days.
        4. Draft a private, kind message for each overdue action. Ask what is blocking them and suggest agreeing a new date.
        Do not blame anyone. Mark anything you are unsure about with [CHECK].</pre>
            <ul class="ai-try-checks">
              <li>Recount the days left yourself, or use a spreadsheet formula.</li>
              <li>Only late actions are marked overdue, and "Done" items are not chased.</li>
              <li>Reminders are friendly, and overdue messages go privately.</li>
              <li>You confirm the real status with each owner before reporting it.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Follow-up turns talk into results. Keep one tracker with owners and dates, log decisions with the reason, and remind people before things are due. Let formulas find what is late and AI draft the messages, but talk to people yourself about what is blocking them.
        </div>
      HTML
      starter_code: nil
    },
    9 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mgmt">Management</div>
          <h1 class="lc-title">Writing Clear Emails</h1>
        </div>
        <p class="lc-lead">Busy people read the subject line and the first two lines of an email. Then they decide whether to act. In this lesson you will learn three habits for clear emails. Write a clear subject line. Put the main point first. Give one clear call to action. You will also use AI to draft and tighten an email, and check it before you send.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 330" role="img" aria-label="A sample email from Hannah to Sophie Lang at Harbour and Finch. Subject: please confirm by Friday 15 January, workshop moves to 3 March. The main point is first, then a short reason, the key details, one clear ask with a deadline, and a sign-off. Labels on the right point to each part.">
            <defs><marker id="mc9a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12" fill="#e2e0f0">
              <rect x="20" y="16" width="450" height="298" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="40" y="42" fill="#9b99b8">To: Sophie Lang, Harbour &amp; Finch</text>
              <text x="40" y="66"><tspan font-weight="700">Subject:</tspan> Please confirm by Fri 15 Jan: workshop moves to 3 Mar</text>
              <line x1="40" y1="80" x2="450" y2="80" stroke="#3b3b66"/>
              <text x="40" y="104">Hi Sophie,</text>
              <text x="40" y="130">Our workshop moves to Wed 3 March, 10:00-12:00.</text>
              <text x="40" y="156">Why: we move office on Fri 26 Feb, the original date.</text>
              <text x="40" y="182">Where: the Fern Room, Lockside House,</text>
              <text x="40" y="200">22 Granary Walk, King's Cross, London N1.</text>
              <text x="40" y="226" font-weight="700">Please reply by Friday 15 January to confirm.</text>
              <text x="40" y="252">Same team, same phone numbers and email.</text>
              <text x="40" y="278">Thanks,</text>
              <text x="40" y="296">Hannah Price, Bluefern Digital</text>
              <g font-size="13" text-anchor="middle">
                <rect x="510" y="46" width="230" height="32" rx="8" fill="#27274e" stroke="#3b82f6"/>
                <text x="625" y="67">Subject: action + date</text>
                <rect x="510" y="110" width="230" height="32" rx="8" fill="#27274e" stroke="#10b981"/>
                <text x="625" y="131">Main point first</text>
                <rect x="510" y="150" width="230" height="32" rx="8" fill="#27274e" stroke="#22d3ee"/>
                <text x="625" y="171">Short reason</text>
                <rect x="510" y="190" width="230" height="32" rx="8" fill="#27274e" stroke="#f59e0b"/>
                <text x="625" y="211">Key details</text>
                <rect x="510" y="230" width="230" height="32" rx="8" fill="#27274e" stroke="#ec4899"/>
                <text x="625" y="251">One ask + deadline</text>
                <rect x="510" y="270" width="230" height="32" rx="8" fill="#27274e" stroke="#8b5cf6"/>
                <text x="625" y="291">Name and company</text>
              </g>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#mc9a)">
                <line x1="509" y1="62" x2="474" y2="62"/>
                <line x1="509" y1="126" x2="474" y2="126"/>
                <line x1="509" y1="166" x2="474" y2="152"/>
                <line x1="509" y1="206" x2="474" y2="190"/>
                <line x1="509" y1="246" x2="474" y2="222"/>
                <line x1="509" y1="286" x2="474" y2="292"/>
              </g>
            </g>
          </svg>
          <figcaption>Hannah's email to a client. The reader can see the change, the reason and the one thing she must do from the first lines.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Three habits of a clear email</h3>
          <p><strong>1. A subject line that works.</strong> Say what the email is about, and any action and deadline. The reader should know what to do before opening it.</p>
          <table class="lc-table">
            <thead><tr><th>Weak subject line</th><th>Better subject line</th></tr></thead>
            <tbody>
              <tr><td>Update</td><td>Office move: first day in King's Cross is Mon 1 March</td></tr>
              <tr><td>Quick question</td><td>Your view needed by Mon 9 Nov: Fern Room for internal use?</td></tr>
              <tr><td>Workshop</td><td>Please confirm by Fri 15 Jan: workshop moves to 3 Mar</td></tr>
              <tr><td>Notes</td><td>Notes and actions: office move group, Tue 3 Nov</td></tr>
            </tbody>
          </table>
          <p><strong>2. The main point first.</strong> Put the most important sentence at the top. Some teams call this BLUF (bottom line up front). Background comes after, and only if the reader needs it.</p>
          <p><strong>3. One clear call to action.</strong> A <strong>call to action</strong> is the thing you want the reader to do. Say who must do what, by when. If you need several things, number them. If you need nothing, say "No action needed. This is for your information."</p>
          <p>Also keep it short. Use short paragraphs, bullet points for details, and plain words. Check the To and CC lines. Only include people who need to act or know.</p>
        </div>
        <div class="lc-card">
          <h3>Worked example: moving a client workshop</h3>
          <p>Chloe once booked a Harbour &amp; Finch workshop for Friday 26 February 2027. That is move day, and the old office is closed. On Monday 11 January 2027, the day clients are told about the move, Hannah writes to Sophie Lang. Hannah leads the Harbour &amp; Finch project. All details are made up.</p>
          <p><strong>Weak email:</strong></p>
          <pre><code>Subject: Workshop

        Hi Sophie,
        Hope you had a lovely break! As you may know, things have been very
        busy here and there has been a lot going on with our plans for this
        year, including some changes to our premises which we are excited
        about. Unfortunately this has an impact on the workshop. We were
        wondering if it might be possible to find another time? Let us know
        your thoughts when you can.
        Best, Hannah</code></pre>
          <p>The main point is in sentence four. There is no new date, no place and no deadline. Sophie must reply just to ask questions.</p>
          <p><strong>Better email:</strong></p>
          <pre><code>Subject: Please confirm by Fri 15 Jan: workshop moves to Wed 3 Mar

        Hi Sophie,

        Our workshop on Friday 26 February needs to move. Can we hold it on
        Wednesday 3 March, 10:00-12:00, instead?

        Why: Bluefern moves office that week. On 26 February our old office
        is closed and our team works from home.

        Where: the Fern Room, 5th floor, Lockside House, 22 Granary Walk,
        King's Cross, London N1. It is about a 5-minute walk from
        King's Cross St Pancras station. The room has video kit if
        colleagues want to join online.

        Please reply by Friday 15 January to confirm, or suggest another
        time that week.

        Nothing else changes: same team, same phone numbers and email.
        Sorry for the change, and thank you.

        Hannah Price
        Web Projects Lead, Bluefern Digital</code></pre>
        </div>
        <div class="lc-card">
          <h3>Drafting with AI, and what to check</h3>
          <p>AI tools can draft and rewrite emails. Examples are Copilot in Outlook, "Help me write" in Gmail, or an assistant such as Claude. Features depend on your plan, so check the tool's current help pages.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Write an email to a client to move a workshop.</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Draft a short email to a client contact, Sophie.
        Main point (first line): our workshop moves from Fri 26 Feb 2027
        to Wed 3 Mar 2027, 10:00-12:00.
        Reason: we move office that week; the old office is closed on 26 Feb.
        Place: Fern Room, 5th floor, Lockside House, 22 Granary Walk, London N1.
        Call to action: reply by Fri 15 Jan 2027 to confirm.
        Tone: friendly, brief, sorry for the change. Under 120 words.
        Write a subject line with the action and the deadline.
        Use only these facts. Mark anything you add with [CHECK].</code></pre>
          <p>Before you send, check:</p>
          <ul class="lc-list">
            <li><strong>Dates and weekdays match.</strong> AI often writes the wrong weekday. 3 March 2027 is a Wednesday. Check it in a calendar.</li>
            <li><strong>Names, addresses and times</strong> are exactly right.</li>
            <li><strong>Nothing is invented</strong>, such as parking or a free lunch.</li>
            <li><strong>Tone fits the reader.</strong> Remove "excited" if the change causes them work.</li>
            <li><strong>No confidential data</strong> went into a public AI tool. Use your company's approved tool for client emails.</li>
          </ul>
          <p>Never let AI send an email for you. You read it, you decide and you press send.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: build a clear email</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put the parts of Hannah's email in the right order, from top to bottom.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Subject line with the action and the deadline</li>
              <li data-order="2">A short greeting: "Hi Sophie,"</li>
              <li data-order="3">The main point: the workshop moves to Wednesday 3 March, 10:00-12:00</li>
              <li data-order="4">A short reason: the office move closes the old office on 26 February</li>
              <li data-order="5">The key details: the new place and how to get there</li>
              <li data-order="6">One call to action: reply by Friday 15 January to confirm</li>
              <li data-order="7">Sign-off with name, role and company</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Give AI the facts for an email you need to send. Ask for a clear draft and a check of its own work.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an email coach for busy managers. Use plain, friendly English.

        Reader: [Sophie, my main contact at a client company]
        Main point: [our workshop moves from Friday 26 February 2027 to Wednesday 3 March 2027, 10:00-12:00]
        Reason: [we move office that week; our old office is closed on 26 February]
        Key details: [new place: Fern Room, 5th floor, Lockside House, 22 Granary Walk, King's Cross, London N1; same team and contacts]
        Call to action: [reply by Friday 15 January 2027 to confirm, or suggest another time]
        Tone: [friendly and brief; sorry for the change]

        Please:
        1. Write 3 subject lines. Each must include the action and the deadline.
        2. Write the email in under 130 words. Put the main point in the first two lines. End with one clear call to action.
        3. Use only the facts above. Mark anything you add with [CHECK].
        4. Then list every date in the email with its weekday, so I can check them in a calendar.</pre>
            <ul class="ai-try-checks">
              <li>The main point and new date are in the first two lines.</li>
              <li>Every date has the correct weekday in your calendar.</li>
              <li>There is one clear call to action with a deadline.</li>
              <li>Nothing is invented, and added facts are marked [CHECK].</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Write emails for a reader who only reads the subject line and the first two lines. Say the main point first and give one clear call to action with a deadline. Check every date, name and fact the AI writes before you press send.
        </div>
      HTML
      starter_code: nil
    },
    10 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mgmt">Management</div>
          <h1 class="lc-title">Announcements and Change Messages</h1>
        </div>
        <p class="lc-lead">When something changes at work, people want to know three things: what is changing, why, and what happens next for them. A change message that misses one of these creates worry, rumours and many questions. In this lesson you will learn a simple six-part structure for change messages. You will see it used for Bluefern's office move and for a change in Hannah's team. You will also use AI to draft one honestly.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="Six parts of a change message, with Hannah's team example. 1, what changes: stand-up on Monday, Wednesday and Friday. 2, why: more focus time; the team agreed in a poll. 3, what it means for you: write check-ins on Tuesday and Thursday. 4, what stays the same: one-to-ones, design review and the client call. 5, what happens next: starts Monday 9 November, review on 21 December. 6, where to ask: Hannah or the web-projects Slack channel.">
            <defs><marker id="mc10a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <text x="380" y="26" font-weight="700" fill="#c4b5fd" text-anchor="middle">Six parts of a change message (Hannah's team example)</text>
              <g text-anchor="middle">
                <rect x="20" y="46" width="220" height="80" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
                <text x="130" y="74" font-weight="700">1. What changes</text>
                <text x="130" y="100" font-size="12">Stand-up Mon, Wed, Fri</text>
                <rect x="270" y="46" width="220" height="80" rx="8" fill="#1f1f44" stroke="#8b5cf6"/>
                <text x="380" y="74" font-weight="700">2. Why</text>
                <text x="380" y="100" font-size="12">More focus time; team poll</text>
                <rect x="520" y="46" width="220" height="80" rx="8" fill="#1f1f44" stroke="#22d3ee"/>
                <text x="630" y="74" font-weight="700">3. What it means for you</text>
                <text x="630" y="100" font-size="12">Write check-ins Tue, Thu</text>
                <rect x="20" y="186" width="220" height="80" rx="8" fill="#1f1f44" stroke="#10b981"/>
                <text x="130" y="214" font-weight="700">4. What stays the same</text>
                <text x="130" y="240" font-size="12">1:1s, design review, client call</text>
                <rect x="270" y="186" width="220" height="80" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
                <text x="380" y="214" font-weight="700">5. What happens next</text>
                <text x="380" y="240" font-size="12">Starts 9 Nov, review 21 Dec</text>
                <rect x="520" y="186" width="220" height="80" rx="8" fill="#1f1f44" stroke="#ec4899"/>
                <text x="630" y="214" font-weight="700">6. Where to ask</text>
                <text x="630" y="240" font-size="12">Hannah or #web-projects</text>
              </g>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#mc10a)">
                <line x1="241" y1="86" x2="267" y2="86"/>
                <line x1="491" y1="86" x2="517" y2="86"/>
                <path d="M630,127 V156 H130 V182"/>
                <line x1="241" y1="226" x2="267" y2="226"/>
                <line x1="491" y1="226" x2="517" y2="226"/>
              </g>
            </g>
          </svg>
          <figcaption>Answer all six parts and most questions are answered before people ask them.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The six parts of a change message</h3>
          <p>An <strong>announcement</strong> shares news with a group. A <strong>change message</strong> is an announcement about something that will affect how people work. Here are the six parts in Grace's office move announcement. She emails all 40 staff on Wednesday 4 November 2026, straight after the all-hands meeting.</p>
          <table class="lc-table">
            <thead><tr><th>Part</th><th>Office move example (made up)</th></tr></thead>
            <tbody>
              <tr><td><strong>1. What changes</strong></td><td>We move to the 5th floor, Lockside House, 22 Granary Walk, King's Cross, London N1.</td></tr>
              <tr><td><strong>2. Why</strong></td><td>Our lease ends on 31 March 2027. The new office has more meeting rooms and is near a main station.</td></tr>
              <tr><td><strong>3. What it means for you</strong></td><td>40 fixed desks become 28 bookable desks, with a locker for everyone. Anchor days are Tuesday, Wednesday and Thursday.</td></tr>
              <tr><td><strong>4. What stays the same</strong></td><td>Phone numbers, email addresses, working hours, client teams and contacts.</td></tr>
              <tr><td><strong>5. What happens next</strong></td><td>Pack by 4pm on Thu 25 Feb. Work from home on Fri 26 Feb. First day in the new office is Mon 1 March 2027. Collect your pass at reception.</td></tr>
              <tr><td><strong>6. Where to ask</strong></td><td>The FAQ page, the #office-move Slack channel, or Grace.</td></tr>
            </tbody>
          </table>
          <p>Put the main news in the first two lines. Put the actions and dates in a short list, so people can find them again.</p>
        </div>
        <div class="lc-card">
          <h3>Be honest about the hard parts</h3>
          <p>Most changes have a downside for someone. If you hide it, people stop trusting the whole message. Say what is hard, what you are doing about it, and what is not decided yet.</p>
          <table class="lc-table">
            <thead><tr><th>Avoid</th><th>Better</th></tr></thead>
            <tbody>
              <tr><td>"Exciting news! Our amazing new office will transform how we work!"</td><td>"We are moving office. Here is what changes for you and what stays the same."</td></tr>
              <tr><td>"Desks will be flexible."</td><td>"We will have 28 desks for 40 people. You book a desk in the app. Each team has a zone on anchor days."</td></tr>
              <tr><td>"Everything will be fine."</td><td>"We know bookable desks will not suit everyone. If you have a concern, talk to your team lead or Grace."</td></tr>
              <tr><td>Saying nothing about open questions</td><td>"We have not decided yet whether teams can book the Fern Room. We will tell you by the end of November."</td></tr>
            </tbody>
          </table>
          <p>Some news should not start with a group message. If a change hits one person hard, tell them first, in person or on a call. For example, Hannah talks to Leo privately about his fixed-desk request before the announcement. Follow your HR policy for anything personal.</p>
        </div>
        <div class="lc-card">
          <h3>Worked example: Hannah's team change</h3>
          <p>After her meeting audit and a Slack poll, Hannah changes her team's meeting rhythm. She tells the team at the stand-up on Thursday 5 November 2026 first. Then she posts this in the #web-projects channel the same day, so everyone has it in writing.</p>
          <pre><code>New team meeting rhythm from Monday 9 November

        What changes:
        - Stand-up is on Monday, Wednesday and Friday, 9:30-9:45.
        - Tuesday and Thursday: post a written check-in here by 10am.
        - The Friday status round-up stops. Instead, post your Friday
          written update here by 2pm.
        - Monday planning is 45 minutes (10:00-10:45), with an agenda.

        Why: you asked for more time to focus. Most of you agreed in the
        poll. Reading updates aloud took 45 minutes of everyone's Friday.

        What stays the same: design review, the Harbour &amp; Finch call
        and all 1:1s.

        If you are stuck on something, say so in your update. I will call
        you the same day. You do not need to wait for a meeting.

        We will review this together at Monday planning on 21 December.
        Questions or worries? Reply here or message me. Hannah</code></pre>
          <p>Notice what Hannah does. She uses facts from the poll, not big promises. She keeps the 1:1s. She gives a review date, so people know the change can be adjusted.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: Hannah drafts her message with AI</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Hannah's prompt">Hannah gives AI her notes on the new rhythm. She asks for a short Slack message with all six parts of a change message.</li>
              <li data-kind="answer" data-label="AI draft">The AI writes a cheerful draft: "Great news! We're cutting meetings to boost productivity by 30%!"</li>
              <li data-kind="warn" data-label="Invented number">There is no 30% figure. The AI made it up. Hannah removes it and uses the real reason: the team asked for focus time.</li>
              <li data-kind="warn" data-label="Missing part">The draft does not say that 1:1s stay. Some people may worry. Hannah adds a "what stays the same" line.</li>
              <li data-kind="thought" data-label="Hannah thinks">"Two people wanted a Friday chat about blockers. The message should say how they get help."</li>
              <li data-kind="user" data-label="Follow-up prompt">"Remove all numbers I did not give you. Make the tone calm, not salesy. Add: if you are stuck, say so and I will call you the same day."</li>
              <li data-kind="check" data-label="Final check">Hannah checks every day, time and date against her plan. She posts it after telling the team in person.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Use AI to draft a change message for a real or sample change. Then check it for honesty and missing parts.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an internal communications adviser. Use plain, calm English.

        Audience: [all 40 staff at a London digital agency]
        Channel: [email after an all-hands meeting]
        The change: [we move office to King's Cross, London. 40 fixed desks become 28 desks booked in an app. Everyone gets a locker.]
        Why: [the lease ends on 31 March 2027; the new office has more meeting rooms and is near a main station]
        Key dates and actions: [pack by 4pm on Thursday 25 February 2027; work from home on Friday 26 February; first day in the new office Monday 1 March 2027]
        What stays the same: [phone numbers, email addresses, working hours, client contacts]
        Not decided yet: [whether teams can book the client meeting room]
        Where to ask: [the FAQ page, the #office-move Slack channel, or Grace]

        Please:
        1. Write a subject line and an email under 200 words with six parts: what changes, why, what it means for you, what stays the same, what happens next, where to ask.
        2. Put the main news in the first two lines and the dates in a short list.
        3. Be honest about the hard part (fewer desks). No hype words.
        4. Use only my facts. Mark anything you add with [CHECK].
        5. Then list 5 questions staff may still ask.</pre>
            <ul class="ai-try-checks">
              <li>All six parts are there, and the main news is first.</li>
              <li>Every date and weekday matches your plan.</li>
              <li>The hard part is stated honestly, with no hype or invented numbers.</li>
              <li>The likely questions are answered in your FAQ page.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A good change message answers what changes, why, what it means for me, what stays the same, what happens next and where to ask. Be honest about the hard parts, tell the most affected people first, and remove any number or promise the AI invented.
        </div>
      HTML
      starter_code: nil
    },
    11 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mgmt">Management</div>
          <h1 class="lc-title">Reports and One-Page Summaries</h1>
        </div>
        <p class="lc-lead">Leaders are busy. They want to know quickly if a project is on track, what it costs and what they must decide. A one-page summary gives them that on a single page. In this lesson you will learn a simple structure for reports, how to choose the key numbers and how to write a clear recommendation. You will follow Grace Mensah as she uses AI to write a progress report on Bluefern's office move for the leadership team.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 340" role="img" aria-label="A mock-up of a one-page progress report on the Bluefern office move for leadership, Monday 7 December 2026. Status amber. Summary: on time, forecast 46,200 pounds of the 48,000 pound budget, one decision needed by Monday 14 December. Three key numbers: budget 48,000, forecast 46,200, committed 26,500. Top risks: Wi-Fi install date and desk demand on anchor days. Decision needed: move 1,500 pounds to IT for the Fern Room video kit. Labels point out the status, the answer first, three key numbers, risks with actions, and the decision.">
            <defs><marker id="mc11a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12" fill="#e2e0f0">
              <rect x="30" y="14" width="440" height="314" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="50" y="40" font-size="14" font-weight="700" fill="#c4b5fd">Office move: progress report</text>
              <text x="50" y="60" fill="#9b99b8">For leadership, Mon 7 Dec 2026. By Grace</text>
              <rect x="360" y="26" width="90" height="24" rx="12" fill="#27274e" stroke="#f59e0b"/>
              <text x="405" y="43" text-anchor="middle" font-weight="700" fill="#fcd34d">AMBER</text>
              <text x="50" y="92">Summary: on time. Forecast £46,200 of £48,000.</text>
              <text x="50" y="110">One decision needed by Monday 14 December.</text>
              <g text-anchor="middle">
                <rect x="50" y="128" width="126" height="56" rx="8" fill="#27274e" stroke="#3b82f6"/>
                <text x="113" y="150" fill="#9b99b8">Budget</text>
                <text x="113" y="172" font-size="14" font-weight="700">£48,000</text>
                <rect x="187" y="128" width="126" height="56" rx="8" fill="#27274e" stroke="#10b981"/>
                <text x="250" y="150" fill="#9b99b8">Forecast</text>
                <text x="250" y="172" font-size="14" font-weight="700">£46,200</text>
                <rect x="324" y="128" width="126" height="56" rx="8" fill="#27274e" stroke="#22d3ee"/>
                <text x="387" y="150" fill="#9b99b8">Committed</text>
                <text x="387" y="172" font-size="14" font-weight="700">£26,500</text>
              </g>
              <text x="50" y="210" font-weight="700" fill="#fcd34d">Top risks</text>
              <text x="50" y="228">1. Wi-Fi install is late (backup: 4G routers)</text>
              <text x="50" y="246">2. Too many people on anchor days (rota)</text>
              <text x="50" y="272" font-weight="700" fill="#6ee7b7">Decision needed</text>
              <text x="50" y="290">Move £1,500 to IT for the Fern Room video kit</text>
              <text x="50" y="314" fill="#9b99b8">Next: clients told on Mon 11 Jan 2027</text>
              <g font-size="13" text-anchor="middle">
                <rect x="500" y="22" width="240" height="36" rx="8" fill="#27274e" stroke="#f59e0b"/>
                <text x="620" y="45">Status first: red, amber, green</text>
                <rect x="500" y="82" width="240" height="36" rx="8" fill="#27274e" stroke="#3b82f6"/>
                <text x="620" y="105">The answer in two lines</text>
                <rect x="500" y="138" width="240" height="36" rx="8" fill="#27274e" stroke="#10b981"/>
                <text x="620" y="161">Only three key numbers</text>
                <rect x="500" y="200" width="240" height="36" rx="8" fill="#27274e" stroke="#ec4899"/>
                <text x="620" y="223">Each risk has an action</text>
                <rect x="500" y="258" width="240" height="36" rx="8" fill="#27274e" stroke="#22d3ee"/>
                <text x="620" y="281">The decision and a deadline</text>
              </g>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#mc11a)">
                <line x1="499" y1="40" x2="474" y2="40"/>
                <line x1="499" y1="100" x2="474" y2="100"/>
                <line x1="499" y1="156" x2="474" y2="156"/>
                <line x1="499" y1="218" x2="474" y2="230"/>
                <line x1="499" y1="276" x2="474" y2="282"/>
              </g>
            </g>
          </svg>
          <figcaption>Grace's one-page report. A leader can see the status, the money, the risks and the decision in under a minute.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>A simple structure for any report</h3>
          <p>A good work report puts the answer first. Many people call this <strong>BLUF</strong> (bottom line up front: the main point comes before the detail). The reader can stop after the first lines and still know what matters.</p>
          <table class="lc-table">
            <thead><tr><th>Part</th><th>What it says</th><th>Tip</th></tr></thead>
            <tbody>
              <tr><td><strong>Status</strong></td><td>A RAG rating: red (in trouble), amber (some risk), green (on track)</td><td>Say why it has that colour in one line.</td></tr>
              <tr><td><strong>Summary</strong></td><td>The main point in two or three sentences</td><td>Write it last, but put it first.</td></tr>
              <tr><td><strong>Key numbers</strong></td><td>Three to five numbers that show progress</td><td>Compare each number with the plan or budget.</td></tr>
              <tr><td><strong>Progress</strong></td><td>What happened since the last report</td><td>Short bullet points, not a story.</td></tr>
              <tr><td><strong>Risks and issues</strong></td><td>A risk might happen. An issue is happening now.</td><td>Give each one an action and an owner.</td></tr>
              <tr><td><strong>Decision needed</strong></td><td>What you recommend and by when</td><td>Give the options and your choice.</td></tr>
              <tr><td><strong>Next steps</strong></td><td>The next two or three milestones</td><td>Use full dates.</td></tr>
            </tbody>
          </table>
          <p>Put extra detail, such as full quotes or long lists, in an <strong>appendix</strong> (extra pages at the end) or a linked document.</p>
        </div>
        <div class="lc-card">
          <h3>Worked example: the key numbers</h3>
          <p>Grace keeps the move budget in a spreadsheet. Column B is the budget. Column C is the forecast: what she now expects to spend. Column D is the difference. Column E is money already committed in signed orders. All numbers are made up.</p>
          <table class="lc-table">
            <thead><tr><th>Line (row)</th><th>Budget (B)</th><th>Forecast (C)</th><th>Difference (D)</th><th>Committed (E)</th></tr></thead>
            <tbody>
              <tr><td>Movers and crates (2)</td><td>£9,600</td><td>£9,600</td><td>£0</td><td>£9,600</td></tr>
              <tr><td>Furniture and lockers (3)</td><td>£17,400</td><td>£16,900</td><td>-£500</td><td>£16,900</td></tr>
              <tr><td>IT, network and video kit (4)</td><td>£12,800</td><td>£14,300</td><td>£1,500</td><td>£0</td></tr>
              <tr><td>Signs, printing and stationery (5)</td><td>£1,800</td><td>£1,800</td><td>£0</td><td>£0</td></tr>
              <tr><td>Cleaning and repairs at the old office (6)</td><td>£3,600</td><td>£3,600</td><td>£0</td><td>£0</td></tr>
              <tr><td>Contingency, for surprises (7)</td><td>£2,800</td><td>£0</td><td>-£2,800</td><td>£0</td></tr>
              <tr><td><strong>Total (8)</strong></td><td><strong>£48,000</strong></td><td><strong>£46,200</strong></td><td><strong>-£1,800</strong></td><td><strong>£26,500</strong></td></tr>
            </tbody>
          </table>
          <pre><code>Difference, row 2:        =C2-B2        (copy down to row 7)
        Total budget:             =SUM(B2:B7)   gives 48000
        Total forecast:           =SUM(C2:C7)   gives 46200
        Total difference:         =C8-B8        gives -1800
        Forecast as % of budget:  =C8/B8        gives 96.25%
        Committed as % of budget: =E8/B8        gives 55.2% (rounded)</code></pre>
          <p>Here is the story behind the numbers. The IT line is £1,500 over. The video kit for the Fern Room (the client meeting room) costs more than quoted. Furniture is £500 under. So the lines are £1,000 over in total. The contingency of £2,800 covers this, and £1,800 is left.</p>
          <p>Grace's recommendation for leaders:</p>
          <pre><code>Decision needed by Monday 14 December 2026:
        Approve £1,500 more for IT (Fern Room video kit).
        Paid by: the £500 furniture saving + £1,000 from contingency.
        Effect: total forecast stays at £46,200. £1,800 contingency is left.
        Option B: buy a cheaper kit (saves £1,500) but no hybrid
        client meetings in the Fern Room. I recommend option A.</code></pre>
        </div>
        <div class="lc-card">
          <h3>Using AI to draft the report, and what to check</h3>
          <p>AI is good at turning notes and numbers into a tidy structure. It is not good at knowing what your leaders care about, or at maths you have not checked.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Write a progress report on our office move.</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>You are helping an operations manager write a one-page report for 4 leaders.
        Structure: status (red, amber or green, with one reason), summary in 2 lines,
        3 key numbers, progress, top 2 risks with actions and owners,
        decision needed with options, next steps.
        Use ONLY the facts and numbers below. Do not calculate new totals.
        Mark anything you are unsure of with [CHECK]. Maximum 300 words.
        Facts: [budget table, progress notes, risks]</code></pre>
          <p>When Grace tried this, the first draft had three problems:</p>
          <ul class="lc-list">
            <li>It added the forecast again and wrote £47,200. The spreadsheet says £46,200. Always copy totals from your spreadsheet.</li>
            <li>It said "green, under budget, no action needed". That hides the IT overspend and the decision. Grace chose amber.</li>
            <li>It listed eight risks. Leaders need the top two, each with an action and an owner.</li>
          </ul>
          <p>The recommendation is Grace's own judgement. AI can list options, but you decide what to recommend and you sign the report.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: what goes on the one page?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Grace has a lot of material. Sort each item: on the one page, in the appendix, or leave it out.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="page" data-label="On the one page"></div>
              <div data-sorter-target="bucket" data-bucket="appendix" data-label="In the appendix"></div>
              <div data-sorter-target="bucket" data-bucket="out" data-label="Leave out"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="page" data-why="This is a key number. Leaders compare it with the budget at once.">Forecast £46,200 against the £48,000 budget</li>
              <li data-bucket="page" data-why="Leaders must see what they need to decide, and by when.">Decision: approve £1,500 more for IT by Monday 14 December</li>
              <li data-bucket="page" data-why="A top risk with its backup plan belongs on the page.">Risk: the Wi-Fi installer may be late. Backup: 4G routers.</li>
              <li data-bucket="appendix" data-why="Useful if a leader wants detail, but too long for the front page.">The three mover quotes, compared line by line</li>
              <li data-bucket="appendix" data-why="Detail for anyone who wants to check. Link it, do not paste it.">The full list of 25 clients and their account leads</li>
              <li data-bucket="out" data-why="Private health details never go in a report. Hannah handles this with HR.">Leo's private reason for his fixed-desk request</li>
              <li data-bucket="out" data-why="Opinions about colleagues do not help a decision and can hurt trust.">Who disagreed with whom in last week's meeting</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Give AI your own project notes, or use the sample. Ask for a one-page summary, then check every number against your source.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a report writer for busy leaders. Use simple English.

        Write a one-page progress report on [our office move] for [4 company leaders].
        Use ONLY these facts. Do not calculate new totals.
        - Budget [£48,000]. Forecast [£46,200]. Already committed [£26,500].
        - Progress: [movers booked; furniture ordered; desk-booking app tested by 5 people]
        - Problem: [IT is £1,500 over because the meeting-room video kit costs more. Furniture is £500 under.]
        - Risks: [Wi-Fi installer may be late; more people than desks on busy days]
        - Decision needed by [Monday 14 December]: [approve £1,500 more for IT, paid by the furniture saving and £1,000 of contingency]

        Format:
        1. Status (red, amber or green) and one reason.
        2. Summary in 2 sentences, main point first.
        3. Key numbers as a short table: number, plan, now.
        4. Progress (3 bullets).
        5. Top 2 risks, each with an action and [owner].
        6. Decision needed: 2 options and a recommendation.
        7. Next steps with dates.
        Maximum 300 words. Mark anything you guessed with [CHECK].</pre>
            <ul class="ai-try-checks">
              <li>Every number matches your facts exactly. No new totals appear.</li>
              <li>The status colour is honest, not too positive.</li>
              <li>Each risk has an action and an owner.</li>
              <li>The decision, the options and the deadline are clear.</li>
              <li>You agree with the recommendation before you sign it.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A good report answers "Are we on track, and what do you need from me?" in the first few lines. Choose a few key numbers, copy them from your spreadsheet, give every risk an action, and make the recommendation your own decision.
        </div>
      HTML
      starter_code: nil
    },
    12 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mgmt">Management</div>
          <h1 class="lc-title">Presentations with AI Help</h1>
        </div>
        <p class="lc-lead">A presentation is not a document on a big screen. People listen to you and glance at the slides. In this lesson you will plan a storyline first, then turn it into simple slides and speaker notes with AI help. You will follow Grace Mensah and Oliver Grant as they prepare the all-hands talk that announces Bluefern's office move. You will also see what to check before you present.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 320" role="img" aria-label="The storyline for the Bluefern office move all-hands talk: seven slides in order. Slide 1 why we move, 2 minutes, Oliver. Slide 2 where, 2 minutes. Slide 3 key dates, 3 minutes. Slide 4 what changes, 3 minutes. Slide 5 what stays the same, 1 minute. Slide 6 your to-dos, 2 minutes. Slide 7 where to ask, 2 minutes. Grace presents slides 2 to 7. A bar shows the 30-minute slot: talk 15 minutes, questions 12 minutes, next steps 3 minutes.">
            <defs><marker id="mc12a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12" fill="#e2e0f0">
              <text x="380" y="24" font-size="13" font-weight="700" fill="#c4b5fd" text-anchor="middle">Storyline: one message per slide</text>
              <g text-anchor="middle">
                <rect x="21" y="40" width="94" height="76" rx="8" fill="#1f1f44" stroke="#8b5cf6"/>
                <text x="68" y="60" font-size="11" fill="#9b99b8">Slide 1</text>
                <text x="68" y="82">Why we move</text>
                <text x="68" y="104" font-size="11" fill="#9b99b8">2 min</text>
                <rect x="125" y="40" width="94" height="76" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
                <text x="172" y="60" font-size="11" fill="#9b99b8">Slide 2</text>
                <text x="172" y="82">Where</text>
                <text x="172" y="104" font-size="11" fill="#9b99b8">2 min</text>
                <rect x="229" y="40" width="94" height="76" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
                <text x="276" y="60" font-size="11" fill="#9b99b8">Slide 3</text>
                <text x="276" y="82">Key dates</text>
                <text x="276" y="104" font-size="11" fill="#9b99b8">3 min</text>
                <rect x="333" y="40" width="94" height="76" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
                <text x="380" y="60" font-size="11" fill="#9b99b8">Slide 4</text>
                <text x="380" y="82">What changes</text>
                <text x="380" y="104" font-size="11" fill="#9b99b8">3 min</text>
                <rect x="437" y="40" width="94" height="76" rx="8" fill="#1f1f44" stroke="#10b981"/>
                <text x="484" y="60" font-size="11" fill="#9b99b8">Slide 5</text>
                <text x="484" y="82">Stays same</text>
                <text x="484" y="104" font-size="11" fill="#9b99b8">1 min</text>
                <rect x="541" y="40" width="94" height="76" rx="8" fill="#1f1f44" stroke="#22d3ee"/>
                <text x="588" y="60" font-size="11" fill="#9b99b8">Slide 6</text>
                <text x="588" y="82">Your to-dos</text>
                <text x="588" y="104" font-size="11" fill="#9b99b8">2 min</text>
                <rect x="645" y="40" width="94" height="76" rx="8" fill="#1f1f44" stroke="#ec4899"/>
                <text x="692" y="60" font-size="11" fill="#9b99b8">Slide 7</text>
                <text x="692" y="82">Where to ask</text>
                <text x="692" y="104" font-size="11" fill="#9b99b8">2 min</text>
              </g>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#mc12a)">
                <line x1="21" y1="130" x2="736" y2="130"/>
              </g>
              <text x="68" y="152" text-anchor="middle" fill="#c4b5fd">Oliver</text>
              <text x="432" y="152" text-anchor="middle" fill="#c4b5fd">Grace presents slides 2 to 7</text>
              <text x="21" y="186" font-size="13" font-weight="700" fill="#c4b5fd">The 30-minute slot</text>
              <rect x="21" y="198" width="358" height="36" rx="6" fill="#27274e" stroke="#8b5cf6"/>
              <text x="200" y="221" text-anchor="middle">Talk: 7 slides, 15 min</text>
              <rect x="381" y="198" width="286" height="36" rx="6" fill="#27274e" stroke="#10b981"/>
              <text x="524" y="221" text-anchor="middle">Questions: 12 min</text>
              <rect x="669" y="198" width="70" height="36" rx="6" fill="#27274e" stroke="#f59e0b"/>
              <text x="704" y="221" text-anchor="middle">3 min</text>
              <text x="704" y="252" text-anchor="middle" font-size="11" fill="#9b99b8">Next steps</text>
              <rect x="21" y="266" width="718" height="40" rx="8" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="380" y="291" text-anchor="middle">Speaker notes: 3 to 5 short points per slide, in your own words</text>
            </g>
          </svg>
          <figcaption>Grace and Oliver plan the story before they make any slides. The talk is half the slot, so there is real time for questions.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Start with the storyline, not the slides</h3>
          <p>A <strong>storyline</strong> is the list of messages you want people to remember, in order. Write it as full sentences before you open any slide tool. Each sentence becomes one slide title.</p>
          <p>The all-hands meeting is on Wednesday 4 November 2026, 10:00 to 10:30, in the old office and on Teams. Grace asks: "What will 40 people want to know, in what order?" Her answer has seven parts. They are why, where, when, what changes, what stays the same, what I do, and where to ask.</p>
          <p>Use <strong>headline titles</strong>: a slide title that is a full sentence with the main point. A topic title only names the subject.</p>
          <table class="lc-table">
            <thead><tr><th>Topic title (weak)</th><th>Headline title (better)</th></tr></thead>
            <tbody>
              <tr><td>New office</td><td>We move to King's Cross on Monday 1 March 2027</td></tr>
              <tr><td>Key dates</td><td>Pack by 4pm on Thursday 25 February. Work from home on Friday 26 February.</td></tr>
              <tr><td>Desks</td><td>Our 40 fixed desks become 28 bookable desks, with a locker for everyone</td></tr>
              <tr><td>What stays the same</td><td>Your phone number, email, hours and clients stay the same</td></tr>
              <tr><td>Questions</td><td>Ask Grace, post in #office-move or read the FAQ page</td></tr>
            </tbody>
          </table>
          <p>If someone reads only the titles, they should still get the whole story.</p>
        </div>
        <div class="lc-card">
          <h3>Slides and speaker notes with AI</h3>
          <p>Slide tools now include AI helpers. For example, Copilot in PowerPoint can draft a presentation from a prompt or from a Word file, and can suggest speaker notes. Gemini in Google Slides can generate slides from a prompt and your Drive files. Features depend on your licence and change often, so check the tool's current help pages. You can also ask any AI assistant for a slide-by-slide outline and paste it in yourself.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Make a presentation about our office move.</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Make a 7-slide outline for a 15-minute all-hands talk to 40 staff.
        Storyline (one slide each): why we move; where; key dates;
        what changes; what stays the same; your to-dos; where to ask.
        Use ONLY these facts: [paste the facts list].
        For each slide give: a headline title (a full sentence),
        at most 3 short bullets, and speaker notes of 3 to 5 points.
        Give minutes per slide. The total must be exactly 15.
        Do not add statistics, quotes or facts I did not give you.</code></pre>
          <p>Speaker notes are the points you say out loud. They are not a script to read. Here are Grace's notes for slide 4:</p>
          <pre><code>Slide 4: Our 40 fixed desks become 28 bookable desks (3 min)
        - Say it plainly: there will be fewer desks than people.
        - Why it works: most of us are in on Tue, Wed and Thu (anchor days).
        - Each team gets a zone of desks on anchor days.
        - Book up to 2 weeks ahead in the app. Cancel by 10am if you cannot come.
        - Everyone gets a locker. Pause here: "What worries you about this?"</code></pre>
        </div>
        <div class="lc-card">
          <h3>What to check before you present</h3>
          <p>Grace's first AI draft looked polished. But a careful read found problems that would have hurt trust:</p>
          <ul class="lc-list">
            <li><strong>An invented statistic.</strong> Slide 4 said "studies show hot-desking makes teams 30% more productive". Grace gave no such fact. Delete any number you cannot trace to a real source.</li>
            <li><strong>A wrong number.</strong> One bullet said "30 bookable desks". The right number is 28.</li>
            <li><strong>A false picture.</strong> The tool added a stock photo of a glass tower. It is not Lockside House. Use a real photo or a simple map.</li>
            <li><strong>Too much text.</strong> Some slides had eight bullets. People read the slide and stop listening. Keep three short bullets at most.</li>
          </ul>
          <p>Also make the talk easy for everyone to follow:</p>
          <ul class="lc-list">
            <li>Use large text and strong colour contrast. Add alt text (a short description for screen readers) to every image.</li>
            <li>Turn on live captions in Teams for the people who join remotely.</li>
            <li>Share the slides as a link afterwards, so people can read them again.</li>
            <li>Rehearse once with a timer. If the talk runs long, cut words, not question time.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Activity: Grace builds the all-hands deck</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Grace's prompt">Grace gives AI the 7-part storyline, the facts list and the 15-minute limit. She asks for headline titles, 3 bullets per slide and speaker notes.</li>
              <li data-kind="answer" data-label="AI draft">The AI returns 7 slides with notes. The minutes add up to 15. Slide 4 includes "studies show hot-desking makes teams 30% more productive".</li>
              <li data-kind="warn" data-label="Invented claim">Grace never gave that statistic, and she cannot find a source. She deletes it. Staff would rightly distrust it.</li>
              <li data-kind="check" data-label="Fact check">Grace checks every date and number against the plan. She fixes "30 desks" to 28 and checks that move day is Friday 26 February, not 1 March.</li>
              <li data-kind="tool" data-label="Slide tool">She builds the slides in PowerPoint, adds a simple map of the walk from King's Cross St Pancras, and writes alt text for it.</li>
              <li data-kind="result" data-label="Rehearsal">A timed run with Hannah takes 19 minutes. Grace cuts slide 3 to a simple timeline and shortens her notes. The next run takes 15 minutes.</li>
              <li data-kind="answer" data-label="Ready">Final deck: 7 slides, headline titles, speaker notes, captions on in Teams, and a link to share after the meeting.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Plan a short talk for your own team, or use the sample. Ask AI for a storyline, slide titles and speaker notes. Then check the facts and the timing.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a presentation coach for managers. Use simple English.

        Talk: [an all-hands announcement of our office move]
        Audience: [40 staff, in the room and on Teams]
        Time: [15 minutes of talk, then 12 minutes of questions]
        Facts (use ONLY these):
        [- New office: Lockside House, King's Cross, London. First day: Monday 1 March 2027.
        - Pack by 4pm on Thursday 25 February 2027. Office closed Friday 26 February (work from home).
        - 40 fixed desks become 28 bookable desks. Lockers for everyone.
        - Anchor office days: Tuesday, Wednesday, Thursday.
        - Same phone numbers, emails, hours and client contacts.
        - Questions: Grace or the #office-move channel.]

        Please:
        1. Write the storyline as 5 to 7 headline sentences, one per slide.
        2. For each slide: the headline title, at most 3 short bullets, speaker notes (3 to 5 points) and minutes.
        3. The minutes must add up to exactly the talk time. Show the total.
        4. Suggest one simple picture or chart per slide, with alt text.
        5. List 3 questions the audience will probably ask.
        Do not add statistics, quotes or facts I did not give you.</pre>
            <ul class="ai-try-checks">
              <li>Each slide title is a full sentence with one main point.</li>
              <li>The minutes add up to your talk time.</li>
              <li>No statistic, quote or fact appears that you did not give.</li>
              <li>The speaker notes are short points, not a script.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Plan the story before the slides. Write one headline sentence per slide, keep the slides simple and leave real time for questions. AI can build the first draft fast, but you must remove invented claims and check every fact before you stand up.
        </div>
      HTML
      starter_code: nil
    },
    13 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mgmt">Management</div>
          <h1 class="lc-title">Sensitive and Difficult Messages</h1>
        </div>
        <p class="lc-lead">Some messages are hard to give: a "no" to a request, bad news about a project, or a change that people will not like. How you give the news matters as much as the news itself. In this lesson you will learn a simple structure for difficult messages and when to talk first. You will also use AI to prepare without sharing private data. You will follow Hannah Price as she answers a flexible working request from her team. This lesson is general education, not legal advice. Always follow your HR policy and get HR or legal advice.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 320" role="img" aria-label="Five steps for a sensitive message: prepare the facts and check with HR, talk in private and give the news first, listen and show you care, confirm in writing the same day, then check in later. Below, two lists. Say: the decision clearly and early, the real reason, what we can offer, what happens next. Avoid: hiding the news in long text, false promises, blame or jokes, private details in group chats or public AI tools.">
            <defs><marker id="mc13a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <g text-anchor="middle">
                <rect x="20" y="30" width="128" height="62" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
                <text x="84" y="56" font-weight="700">1. Prepare</text>
                <text x="84" y="78" font-size="12" fill="#9b99b8">facts + HR check</text>
                <rect x="168" y="30" width="128" height="62" rx="8" fill="#1f1f44" stroke="#8b5cf6"/>
                <text x="232" y="56" font-weight="700">2. Talk</text>
                <text x="232" y="78" font-size="12" fill="#9b99b8">private, news first</text>
                <rect x="316" y="30" width="128" height="62" rx="8" fill="#1f1f44" stroke="#ec4899"/>
                <text x="380" y="56" font-weight="700">3. Listen</text>
                <text x="380" y="78" font-size="12" fill="#9b99b8">and show you care</text>
                <rect x="464" y="30" width="128" height="62" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
                <text x="528" y="56" font-weight="700">4. Write it</text>
                <text x="528" y="78" font-size="12" fill="#9b99b8">the same day</text>
                <rect x="612" y="30" width="128" height="62" rx="8" fill="#1f1f44" stroke="#10b981"/>
                <text x="676" y="56" font-weight="700">5. Check in</text>
                <text x="676" y="78" font-size="12" fill="#9b99b8">a week or two later</text>
              </g>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#mc13a)">
                <line x1="149" y1="61" x2="165" y2="61"/>
                <line x1="297" y1="61" x2="313" y2="61"/>
                <line x1="445" y1="61" x2="461" y2="61"/>
                <line x1="593" y1="61" x2="609" y2="61"/>
              </g>
              <rect x="20" y="120" width="350" height="180" rx="10" fill="#27274e" stroke="#10b981"/>
              <text x="40" y="148" font-weight="700" fill="#6ee7b7">Say</text>
              <text x="40" y="180">The decision, clearly and early</text>
              <text x="40" y="208">The real reason, honestly</text>
              <text x="40" y="236">What we can offer instead</text>
              <text x="40" y="264">What happens next, with dates</text>
              <rect x="390" y="120" width="350" height="180" rx="10" fill="#27274e" stroke="#ec4899"/>
              <text x="410" y="148" font-weight="700" fill="#f9a8d4">Avoid</text>
              <text x="410" y="180">Hiding the news in long text</text>
              <text x="410" y="208">Promises you cannot keep</text>
              <text x="410" y="236">Blame, jokes or "the rules say no"</text>
              <text x="410" y="264">Private details in groups or AI</text>
            </g>
          </svg>
          <figcaption>Prepare, talk, listen, write it down and check in. Be clear and kind at the same time.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>What makes a message sensitive</h3>
          <p>A message is <strong>sensitive</strong> when it affects someone's job, pay, health, family life or feelings. Examples are a "no" to a request, feedback about poor work, a project that is cancelled, or a change that makes someone's day harder.</p>
          <p>For sensitive news, talk first, then write. Choose a private conversation in person or on video. Never let someone learn bad news about themselves from a group message or a document.</p>
          <p>A simple structure helps you stay clear and kind:</p>
          <ol class="lc-list">
            <li><strong>The news</strong>: say it in the first minute. Do not make people wait through small talk.</li>
            <li><strong>The reason</strong>: give the real reason in one or two sentences.</li>
            <li><strong>Empathy</strong>: show you understand how it affects them. For example: "I know this is not the answer you hoped for."</li>
            <li><strong>Options</strong>: say what you can offer, if anything. Only offer what is already agreed.</li>
            <li><strong>Next steps</strong>: what happens now, by when, and who they can talk to.</li>
          </ol>
          <p>Then stop and listen. Silence is fine. People need time to take in hard news.</p>
        </div>
        <div class="lc-card">
          <h3>Worked example: a flexible working request</h3>
          <p>On Monday 9 November 2026, Amira Hassan (designer) asked in writing to work from home every day after the move, for family reasons. Bluefern's anchor days are Tuesday, Wednesday and Thursday. Hannah cannot decide this alone. She brings in Laura Bennett, Bluefern's HR manager. All details are made up.</p>
          <table class="lc-table">
            <thead><tr><th>Date</th><th>Step</th></tr></thead>
            <tbody>
              <tr><td>Mon 9 Nov 2026</td><td>Amira sends a written request. Hannah thanks her and says when they will talk.</td></tr>
              <tr><td>Tue 17 Nov 2026</td><td>Hannah and Laura meet Amira to discuss the request and other options.</td></tr>
              <tr><td>Fri 27 Nov 2026</td><td>Hannah gives the decision in a private video call, then confirms it in writing the same day.</td></tr>
              <tr><td>Mon 1 Mar to Fri 28 May 2027</td><td>A 3-month trial, then a review meeting.</td></tr>
            </tbody>
          </table>
          <p>The decision: working from home every day cannot be agreed, because the design team runs client workshops in person on anchor days. But Bluefern offers a trial: Amira comes in on Tuesday and Thursday only.</p>
          <p>Hannah's written follow-up after the call:</p>
          <pre><code>Subject: Your flexible working request: our decision

        Hi Amira,
        Thank you for talking with Laura and me today.
        As we discussed, we cannot agree to home working every day.
        Our design workshops with clients happen in person on anchor days.
        We can offer a 3-month trial: you work in the office on Tuesdays
        and Thursdays, and from home on other days.
        The trial runs from Monday 1 March to Friday 28 May 2027.
        We will review it together in the last week of May.
        If you want to appeal, Laura can explain the steps in our policy.
        I know this is not everything you asked for. My door is open.
        Hannah</code></pre>
          <p><strong>The rules, in general terms.</strong> In the UK, employees can make a statutory flexible working request from their first day. They can make up to two requests in 12 months. The employer must consult the employee before saying no. It must decide within two months, unless both agree to a longer time. More changes are planned under the Employment Rights Act 2025, expected from autumn 2027. ACAS (the UK's workplace advice service) has a Code of Practice and guidance. In the US, there is no general federal right to request flexible working. But disability law, such as the ADA, and some state or city rules may apply. This is not legal advice: follow your HR policy and check with HR or a qualified adviser.</p>
        </div>
        <div class="lc-card">
          <h3>Using AI to prepare, safely</h3>
          <p>AI can help you plan what to say, find softer words and guess the questions you will get. But sensitive messages often contain personal data. Remove names, health details and family details before you use any AI tool. Use only the tool your company approves.</p>
          <p><strong>Weak prompt (unsafe):</strong></p>
          <pre><code>Amira Hassan wants to work from home because of her child's
        health problems. Write an email saying no.</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>I am a team lead. A team member asked to work from home every day.
        HR and I have decided: not every day, but a 3-month trial of
        2 office days a week. The reason: client workshops are in person.
        Help me prepare a private video call:
        1. Opening lines that give the news in the first minute.
        2. Three kind, honest phrases that do not promise more than this.
        3. Five questions the person may ask, with short honest answers.
        4. Phrases to avoid. Use a warm, calm tone. No legal statements.</code></pre>
          <p>Check the AI's draft carefully. In Hannah's test, the AI wrote "the law does not allow us to agree". That is not true, and it hides the real business reason. It also suggested "we can look at this again any time". Hannah removed it, because the trial has a fixed review date. HR checked the final wording.</p>
          <p><strong>Privacy in group messages.</strong> Leo Barnes asked for a fixed desk for a health reason. Bluefern agreed it with HR. In the UK, the Equality Act 2010 may require "reasonable adjustments" for a disabled employee. The team message says only: "A few desks are kept fixed for people who need them. If you need one, talk to Grace or HR in confidence." It never names Leo or his reason.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: deliver a difficult decision</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put Hannah's steps for giving Amira the decision in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Agree the decision and the wording with HR, and check the company policy.</li>
              <li data-order="2">Prepare talking points with AI, using no names or private details.</li>
              <li data-order="3">Book a private call and give the news in the first minute.</li>
              <li data-order="4">Explain the real reason and the trial you can offer.</li>
              <li data-order="5">Stop, listen and answer questions honestly.</li>
              <li data-order="6">Send a written summary the same day, including how to appeal.</li>
              <li data-order="7">Check in a week or two later to see how the person is.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Prepare for a difficult conversation from your work, with all names and private details removed. Ask AI for talking points, likely questions and a written follow-up.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a calm, kind coach for new managers. Use simple English.

        I need to give difficult news to [one team member]. Do not ask me for names or personal details.
        The news: [their request to work from home every day is not agreed].
        The real reason: [client workshops happen in person on our 3 office days].
        What we can offer (already agreed with HR): [a 3-month trial of 2 office days a week, with a review at the end].
        Channel: [a private video call, then a written summary the same day].

        Please give me:
        1. Opening lines that share the news in the first minute.
        2. A short, honest explanation of the reason.
        3. Three empathy phrases that do not promise anything extra.
        4. Five questions the person may ask, with honest short answers. Where the answer depends on HR policy, say "check with HR".
        5. A written follow-up of under 150 words: decision, reason, offer, dates, next steps and who to contact.
        6. Five phrases to avoid, and why.
        Do not give legal advice or quote laws.</pre>
            <ul class="ai-try-checks">
              <li>The news comes in the first minute, not after small talk.</li>
              <li>Nothing promises more than you and HR agreed.</li>
              <li>No private details or names appear anywhere.</li>
              <li>The tone is warm and honest, not cold or falsely cheerful.</li>
              <li>You plan to check the final wording with HR.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Be clear and kind at the same time. Give the news early, give the real reason, offer only what is agreed and listen. Use AI to prepare your words, but keep private details out, check with HR and have the conversation yourself.
        </div>
      HTML
      starter_code: nil
    },
    14 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mgmt">Management</div>
          <h1 class="lc-title">Writing for Different Audiences</h1>
        </div>
        <p class="lc-lead">The same news needs different words for different readers. Leaders want the risk and the decision. Your team wants to know what to do. Clients want to know what changes for them. Readers whose first language is not English want short, plain sentences. In this lesson you will write one piece of news for each audience and use AI to adapt it. You will also check that every version keeps the same facts.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="One set of move-day facts on the left: pack by 4pm Thursday 25 February, office closed Friday 26 February, new office Monday 1 March. Arrows go to four versions. Leaders: 3 lines on risk, cost and decisions. Team: what to do, and by when. Clients: what changes for you, same contacts. Plain English: short words, full dates, no idioms.">
            <defs><marker id="mc14a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <rect x="20" y="70" width="250" height="160" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="40" y="98" font-weight="700" fill="#c4b5fd">One set of facts</text>
              <text x="40" y="128" font-size="12">Pack by 4pm, Thu 25 Feb</text>
              <text x="40" y="152" font-size="12">Office closed, Fri 26 Feb</text>
              <text x="40" y="176" font-size="12">New office from Mon 1 Mar</text>
              <text x="40" y="208" font-size="11" fill="#9b99b8">Check every version against these</text>
              <rect x="350" y="18" width="390" height="56" rx="8" fill="#27274e" stroke="#f59e0b"/>
              <text x="366" y="42" font-weight="700" fill="#fcd34d">Leaders</text>
              <text x="366" y="62" font-size="12">3 lines: risk, cost, decisions needed</text>
              <rect x="350" y="86" width="390" height="56" rx="8" fill="#27274e" stroke="#3b82f6"/>
              <text x="366" y="110" font-weight="700" fill="#93c5fd">Team</text>
              <text x="366" y="130" font-size="12">What you must do, and by when</text>
              <rect x="350" y="154" width="390" height="56" rx="8" fill="#27274e" stroke="#10b981"/>
              <text x="366" y="178" font-weight="700" fill="#6ee7b7">Clients</text>
              <text x="366" y="198" font-size="12">What changes for you; same contacts</text>
              <rect x="350" y="222" width="390" height="56" rx="8" fill="#27274e" stroke="#ec4899"/>
              <text x="366" y="246" font-weight="700" fill="#f9a8d4">Plain English readers</text>
              <text x="366" y="266" font-size="12">Short words, full dates, no idioms</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#mc14a)">
                <line x1="271" y1="150" x2="347" y2="46"/>
                <line x1="271" y1="150" x2="347" y2="114"/>
                <line x1="271" y1="150" x2="347" y2="182"/>
                <line x1="271" y1="150" x2="347" y2="250"/>
              </g>
            </g>
          </svg>
          <figcaption>One set of facts, four versions. The words change for each reader. The facts never change.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Same news, different needs</h3>
          <p>Before you write, ask three questions about your reader. What do they already know? What do they care about? What must they do? Then choose the length, tone and detail.</p>
          <table class="lc-table">
            <thead><tr><th>Audience</th><th>They care about</th><th>Length and tone</th><th>Channel</th></tr></thead>
            <tbody>
              <tr><td><strong>Leaders</strong> (Oliver Grant and 3 directors)</td><td>Risk, money, decisions, effect on clients</td><td>Very short, direct, numbers first</td><td>Report or short email</td></tr>
              <tr><td><strong>Team</strong> (40 staff)</td><td>What changes for me, what I must do, by when</td><td>Short, friendly, clear actions</td><td>Email, then chat reminders</td></tr>
              <tr><td><strong>Clients</strong> (about 25, such as Harbour &amp; Finch)</td><td>Any effect on their work, who to contact</td><td>Polite, calm, no internal detail</td><td>Personal email from the account lead</td></tr>
              <tr><td><strong>Readers with English as a second language</strong></td><td>Understanding the message the first time</td><td>Short sentences, common words</td><td>Any, in plain English</td></tr>
            </tbody>
          </table>
          <p>Many of your readers are in more than one group. Plain English helps all of them.</p>
        </div>
        <div class="lc-card">
          <h3>Worked example: move-day news, three ways</h3>
          <p>Here is the same move-day news for three audiences. All details are made up.</p>
          <p><strong>For leaders</strong> (in the weekly report):</p>
          <pre><code>Move days: on track. Packing Thu 25 Feb, office closed Fri 26 Feb,
        new office open Mon 1 Mar. Risk: Wi-Fi install on Fri 19 Feb;
        backup 4G routers booked. No decision needed this week.</code></pre>
          <p><strong>For the team</strong> (email from Grace):</p>
          <pre><code>Subject: Move days: pack by 4pm on Thursday 25 February

        What you need to do:
        1. Label your crates and pack your personal items by 4pm on Thursday 25 February.
        2. Work from home on Friday 26 February. The office is closed.
        3. From Monday 1 March, go to Lockside House, 22 Granary Walk, King's Cross.
           Collect your new access pass at reception.
        Questions? Ask me or post in #office-move.</code></pre>
          <p><strong>For a client</strong> (email from Tom Hughes in client services to Greenway Lettings, a client in Manchester):</p>
          <pre><code>Subject: Our new office from 1 March 2027

        Hello,
        From Monday 1 March 2027, our office address will be:
        5th floor, Lockside House, 22 Granary Walk, King's Cross, London N1.
        Your project team, phone numbers and email addresses stay the same.
        We cannot hold in-person meetings on 25 and 26 February.
        Video calls on those days go ahead as normal.
        Please use the new address for post and invoices from 1 March.
        Best wishes, Tom</code></pre>
          <p>Notice what changes: the leaders get the risk, the team gets actions, and the client gets only what affects them. The dates are the same in all three.</p>
        </div>
        <div class="lc-card">
          <h3>Plain English for every reader</h3>
          <p>Some readers use English as a second language. Some use translation tools. Plain English makes your message clear for them and faster for everyone else.</p>
          <table class="lc-table">
            <thead><tr><th>Hard to understand</th><th>Plain English</th></tr></thead>
            <tbody>
              <tr><td>Let's touch base before the move.</td><td>Let's talk before the move.</td></tr>
              <tr><td>Can you give me a ballpark figure?</td><td>Can you give me a rough number?</td></tr>
              <tr><td>We need to hit the ground running on day one.</td><td>We need to start work quickly on 1 March.</td></tr>
              <tr><td>Crates by COB Thu.</td><td>Pack your crates by 4pm on Thursday 25 February.</td></tr>
              <tr><td>Meeting on 01/03/2027.</td><td>Meeting on Monday 1 March 2027.</td></tr>
            </tbody>
          </table>
          <p>Dates and places can confuse international readers too. Bluefern also builds an app for Maple Street Health, a made-up chain of clinics in New York. Its project manager, Daniel Kim, reads "01/03/2027" as 3 January, because the US puts the month first. Always write the month as a word. Floors differ too: a UK "ground floor" is a US "first floor". For times, give both zones, for example "3pm London time (10am New York time)". The UK and US change their clocks on different dates, so check the gap in March and in the autumn.</p>
          <p>AI is good at this kind of rewrite. Try a prompt like this:</p>
          <pre><code>Rewrite this message for [a client in New York whose first language is not English].
        Use short sentences and common words. Remove idioms and abbreviations.
        Write every date with the day and month as words.
        Keep every fact, date and number exactly the same.
        Then list each fact in the original and in your version, side by side.</code></pre>
          <p>The side-by-side list helps you check that no fact changed. Some tools, such as Microsoft Word, can also show a readability score. Use it as a guide, not a rule.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: who is this sentence for?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Each sentence comes from a message about the Bluefern move. Sort it to the audience it was written for.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="leaders" data-label="Leaders"></div>
              <div data-sorter-target="bucket" data-bucket="team" data-label="Team"></div>
              <div data-sorter-target="bucket" data-bucket="clients" data-label="Clients"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="leaders" data-why="Budget numbers and a decision are what leaders need.">Forecast is £46,200 of the £48,000 budget. Please approve £1,500 more for IT by Monday 14 December.</li>
              <li data-bucket="leaders" data-why="A risk with a backup plan is useful for leaders. Staff and clients do not need it.">Risk: the Wi-Fi install is close to move day. Backup 4G routers are booked.</li>
              <li data-bucket="team" data-why="A clear action with a deadline is for staff.">Please label your crates by 4pm on Thursday 25 February.</li>
              <li data-bucket="team" data-why="Desk booking affects staff only. Clients do not need internal rules.">Book a desk in the app up to 2 weeks ahead. Cancel by 10am if you cannot come in.</li>
              <li data-bucket="clients" data-why="Clients need to know their contacts stay the same.">Your project team, phone numbers and email addresses stay the same.</li>
              <li data-bucket="clients" data-why="This tells clients about the only service change that affects them.">We cannot hold in-person meetings on 25 and 26 February.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Take one piece of news from your work, or use the sample. Ask AI to write it for three audiences and in plain English, then check that the facts match.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a business writing coach. Use simple English.

        The news: [Our office moves on Monday 1 March 2027. Staff pack by 4pm on Thursday 25 February. The office is closed on Friday 26 February, so everyone works from home. No in-person client meetings on 25 and 26 February. Phone numbers and email addresses stay the same.]
        Extra facts for leaders only: [The project is on budget. One risk: the Wi-Fi install is one week before the move; backup routers are booked.]

        Please write:
        1. For leaders: 3 lines. Status, risk, any decision needed.
        2. For the team: a short email with numbered actions and dates.
        3. For a client: a polite email of under 100 words. Only what affects them.
        4. A plain English version of the team email for readers whose first language is not English: short sentences, no idioms, dates written with words.
        5. A table that lists every fact and shows it is the same in all four versions.
        Do not add any fact that is not above.</pre>
            <ul class="ai-try-checks">
              <li>Every date and number is the same in all four versions.</li>
              <li>The client email has no internal details, such as budgets or desks.</li>
              <li>The leader version is short and shows the risk.</li>
              <li>The plain English version has no idioms and writes dates in words.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Keep one set of facts and change only the words. Leaders want risk and decisions, teams want actions, clients want what affects them, and everyone benefits from plain English. Ask AI to adapt your message, then check the facts line by line.
        </div>
      HTML
      starter_code: nil
    },
    15 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mgmt">Management</div>
          <h1 class="lc-title">Capstone: A Communication Plan for a Bluefern Office Move</h1>
        </div>
        <p class="lc-lead">In this capstone you bring the whole course together. You will build a complete communication plan for Bluefern's office move: who hears what, when and through which channel. It includes meeting agendas, checked meeting notes, the staff announcement, an FAQ page and a follow-up plan for after the move. You will see how Grace Mensah builds each piece with AI, and what she checks and decides herself. Then you will build a plan for a change at your own work.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 320" role="img" aria-label="A timeline of the Bluefern office move communication plan, not to scale. 2026: Monday 2 November leaders sign off; Wednesday 4 November all-hands and email. 2027: Monday 11 January clients emailed; Monday 15 February desk booking opens; Thursday 25 February packing day; Friday 26 February move day, everyone works from home; Monday 1 March first day in the new office; Friday 12 March pulse survey; Wednesday 31 March old lease ends. Running all the time: the working group every Tuesday, the #office-move chat channel and the FAQ page.">
            <g font-family="inherit" font-size="12" fill="#e2e0f0" text-anchor="middle">
              <text x="380" y="22" font-size="13" font-weight="700" fill="#c4b5fd">The communication plan (not to scale)</text>
              <line x1="40" y1="160" x2="720" y2="160" stroke="#9b99b8" stroke-width="2"/>
              <line x1="267" y1="146" x2="267" y2="174" stroke="#9b99b8" stroke-dasharray="3 3"/>
              <text x="245" y="150" font-size="11" fill="#9b99b8">2026</text>
              <text x="287" y="150" font-size="11" fill="#9b99b8">2027</text>
              <g stroke="#1f1f44" stroke-width="2">
                <circle cx="80" cy="160" r="7" fill="#f59e0b"/>
                <circle cx="155" cy="160" r="7" fill="#8b5cf6"/>
                <circle cx="305" cy="160" r="7" fill="#10b981"/>
                <circle cx="380" cy="160" r="7" fill="#22d3ee"/>
                <circle cx="455" cy="160" r="7" fill="#3b82f6"/>
                <circle cx="530" cy="160" r="7" fill="#ec4899"/>
                <circle cx="605" cy="160" r="7" fill="#10b981"/>
                <circle cx="680" cy="160" r="7" fill="#8b5cf6"/>
                <circle cx="716" cy="160" r="5" fill="#9b99b8"/>
              </g>
              <rect x="20" y="56" width="120" height="46" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="80" y="75" font-weight="700">Mon 2 Nov</text>
              <text x="80" y="93" fill="#9b99b8">Leaders sign off</text>
              <rect x="95" y="210" width="120" height="46" rx="8" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="155" y="229" font-weight="700">Wed 4 Nov</text>
              <text x="155" y="247" fill="#9b99b8">All-hands, email</text>
              <rect x="245" y="56" width="120" height="46" rx="8" fill="#1f1f44" stroke="#10b981"/>
              <text x="305" y="75" font-weight="700">Mon 11 Jan</text>
              <text x="305" y="93" fill="#9b99b8">Clients emailed</text>
              <rect x="315" y="210" width="130" height="46" rx="8" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="380" y="229" font-weight="700">Mon 15 Feb</text>
              <text x="380" y="247" fill="#9b99b8">Desk booking opens</text>
              <rect x="395" y="56" width="120" height="46" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="455" y="75" font-weight="700">Thu 25 Feb</text>
              <text x="455" y="93" fill="#9b99b8">Packing day</text>
              <rect x="465" y="210" width="130" height="46" rx="8" fill="#1f1f44" stroke="#ec4899"/>
              <text x="530" y="229" font-weight="700">Fri 26 Feb</text>
              <text x="530" y="247" fill="#9b99b8">Move day: at home</text>
              <rect x="545" y="56" width="120" height="46" rx="8" fill="#1f1f44" stroke="#10b981"/>
              <text x="605" y="75" font-weight="700">Mon 1 Mar</text>
              <text x="605" y="93" fill="#9b99b8">First day</text>
              <rect x="615" y="210" width="130" height="46" rx="8" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="680" y="229" font-weight="700">Fri 12 Mar</text>
              <text x="680" y="247" fill="#9b99b8">Pulse survey</text>
              <g stroke="#9b99b8" stroke-width="1">
                <line x1="80" y1="103" x2="80" y2="152"/>
                <line x1="155" y1="168" x2="155" y2="209"/>
                <line x1="305" y1="103" x2="305" y2="152"/>
                <line x1="380" y1="168" x2="380" y2="209"/>
                <line x1="455" y1="103" x2="455" y2="152"/>
                <line x1="530" y1="168" x2="530" y2="209"/>
                <line x1="605" y1="103" x2="605" y2="152"/>
                <line x1="680" y1="168" x2="680" y2="209"/>
              </g>
              <text x="690" y="128" font-size="11" fill="#9b99b8">Wed 31 Mar:</text>
              <text x="690" y="142" font-size="11" fill="#9b99b8">old lease ends</text>
              <rect x="20" y="276" width="720" height="34" rx="8" fill="#27274e" stroke="#9b99b8"/>
              <text x="380" y="298">All the time: working group every Tuesday, #office-move chat, FAQ page</text>
            </g>
          </svg>
          <figcaption>Leaders hear first, then staff, then clients. Reminders come close to each date, and the plan continues after the move.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Step 1: the plan on one page</h3>
          <p>A <strong>communication plan</strong> is a table of every message: the date, the audience, the message, the channel and the owner. Grace builds it in a shared spreadsheet so the working group can see it. All details are made up.</p>
          <table class="lc-table">
            <thead><tr><th>Date</th><th>Audience</th><th>Message</th><th>Channel</th><th>Owner</th></tr></thead>
            <tbody>
              <tr><td>Mon 2 Nov 2026</td><td>Leaders</td><td>Sign off the plan and the £48,000 budget</td><td>Leadership update meeting</td><td>Grace</td></tr>
              <tr><td>Tue 3 Nov 2026</td><td>Working group</td><td>Decide desk rules and the packing plan</td><td>Meeting, then checked notes</td><td>Grace, Sam</td></tr>
              <tr><td>Wed 4 Nov 2026</td><td>All 40 staff</td><td>The announcement</td><td>All-hands at 10:00, email at 11:00, FAQ page</td><td>Oliver, Grace</td></tr>
              <tr><td>Every Tuesday</td><td>Working group</td><td>Progress, risks and actions</td><td>Meeting and action tracker</td><td>Grace</td></tr>
              <tr><td>Mon 7 Dec 2026</td><td>Leaders</td><td>Progress report and one decision</td><td>One-page report</td><td>Grace</td></tr>
              <tr><td>Mon 11 Jan 2027</td><td>About 25 clients</td><td>New address; no in-person meetings on 25 and 26 Feb</td><td>Email from each account lead</td><td>Account leads</td></tr>
              <tr><td>Mon 15 Feb 2027</td><td>All staff</td><td>Desk booking opens for the first week</td><td>Email and Slack</td><td>Grace</td></tr>
              <tr><td>Mon 22 Feb 2027</td><td>All staff</td><td>Crates arrive; how to label them</td><td>Slack and FAQ page</td><td>Chloe</td></tr>
              <tr><td>Thu 25 Feb 2027</td><td>All staff</td><td>Reminder: pack by 4pm</td><td>Slack #office-move</td><td>Chloe</td></tr>
              <tr><td>Fri 26 Feb 2027</td><td>All staff</td><td>Where to go on Monday; collect your pass</td><td>Email</td><td>Grace</td></tr>
              <tr><td>Fri 12 Mar 2027</td><td>All staff</td><td>Pulse survey: how is the new office?</td><td>Online form</td><td>Grace</td></tr>
              <tr><td>Fri 26 Mar 2027</td><td>All staff</td><td>"You said, we did" update</td><td>Email and all-hands</td><td>Grace</td></tr>
              <tr><td>Wed 31 Mar 2027</td><td>Leaders</td><td>Close report: final spend and lessons learned</td><td>One-page report</td><td>Grace</td></tr>
            </tbody>
          </table>
          <p>Check the order: leaders, then staff, then clients. Desk booking opens on 15 February because staff can book up to 2 weeks ahead, and the first office day is 1 March.</p>
        </div>
        <div class="lc-card">
          <h3>Step 2: meetings, agendas and notes</h3>
          <p>The all-hands agenda for the announcement. The times add up to the 30-minute slot.</p>
          <pre><code>All-hands: our office move
        Wednesday 4 November 2026, 10:00-10:30, old office + Teams (captions on)
        Goal: everyone knows what is happening, when, and what to do.

        1. Why we move (inform)                       2 min   Oliver
        2. Where, key dates, what changes (inform)   13 min   Grace
        3. Questions from the room and Teams chat    12 min   Oliver, Grace
        4. Next steps: email at 11:00, FAQ page       3 min   Grace
                                               Total: 30 min</code></pre>
          <p>After each working group meeting, Sam checks the AI notes and shares only decisions and actions. Here are the checked notes from Tuesday 16 February 2027:</p>
          <pre><code>Office move working group, Tue 16 Feb 2027. AI notes on (agreed at start).
        Decision: packing reminders in Slack at 2pm on Wed 24 Feb
                  and 10am on Thu 25 Feb.
        Actions (added to the action tracker):
        - Test Wi-Fi and the desk-booking app in the new office   Ben     Mon 22 Feb
        - Send the two packing reminders                          Chloe   Thu 25 Feb
        - Send the "where to go on Monday" email                  Grace   Fri 26 Feb
        - Test the Fern Room video kit before the client workshop Ben     Tue 2 Mar
        Checked by Sam O'Neill. Shared Wed 17 Feb, 10am.</code></pre>
        </div>
        <div class="lc-card">
          <h3>Step 3: the announcement and the FAQ page</h3>
          <p>The written announcement goes out at 11:00, half an hour after the all-hands ends. It repeats the key facts, so people who missed the meeting get the same news.</p>
          <pre><code>Subject: Our new office: first day in King's Cross is Monday 1 March 2027

        Hi everyone,
        As Oliver and I shared this morning, Bluefern is moving office.
        Where: 5th floor, Lockside House, 22 Granary Walk, King's Cross, London N1.
               About 5 minutes' walk from King's Cross St Pancras station.
        Why: our lease ends on 31 March 2027. The new office has 5 meeting
        rooms instead of 2, and it is near a main station.
        Key dates:
        - Thu 25 Feb: pack your personal items and label crates by 4pm.
        - Fri 26 Feb: the office is closed. Please work from home.
        - Mon 1 Mar: first day. Collect your new pass at reception.
        What changes: 28 bookable desks with team zones on our anchor days
        (Tue, Wed, Thu). A locker for everyone. Bike storage and showers.
        What stays the same: your phone number, email, hours and clients.
        Questions: read the FAQ page, post in #office-move, or ask me.
        Grace</code></pre>
          <p>The FAQ page answers the questions people ask most. Grace asked AI to list 15 likely questions, then kept the most useful ones and wrote every answer from the facts.</p>
          <table class="lc-table">
            <thead><tr><th>Question</th><th>Answer</th></tr></thead>
            <tbody>
              <tr><td>Will I have my own desk?</td><td>No. There are 28 bookable desks. Each team has a zone on Tuesday, Wednesday and Thursday. If you need a fixed desk for a personal reason, talk to Grace or HR in confidence.</td></tr>
              <tr><td>How do I book a desk?</td><td>Use the desk-booking app. Book up to 2 weeks ahead. Cancel by 10am if you cannot come in.</td></tr>
              <tr><td>What must I pack?</td><td>Your personal items and your labelled crates, by 4pm on Thursday 25 February. Crates arrive on Monday 22 February.</td></tr>
              <tr><td>Where do I work on Friday 26 February?</td><td>At home. The old office is closed for the move.</td></tr>
              <tr><td>How do I get in on 1 March?</td><td>Collect your new access pass at reception in Lockside House.</td></tr>
              <tr><td>Is there parking?</td><td>There is no car parking. There are 20 bike spaces and showers.</td></tr>
              <tr><td>Do clients know?</td><td>Yes. Each account lead emails their clients on Monday 11 January 2027.</td></tr>
              <tr><td>What stays the same?</td><td>Phone numbers, email addresses, working hours, client teams and contacts.</td></tr>
            </tbody>
          </table>
          <p>Keep the FAQ page up to date. When a new question appears twice in #office-move, add it to the page.</p>
        </div>
        <div class="lc-card">
          <h3>Step 4: the follow-up plan</h3>
          <p>Communication does not stop on move day. People find problems only when they start using the new office.</p>
          <table class="lc-table">
            <thead><tr><th>When</th><th>What</th><th>Owner</th><th>What to measure</th></tr></thead>
            <tbody>
              <tr><td>Mon 1 Mar 2027</td><td>Help desk at reception from 8:30 to 10:00</td><td>Grace, Ben</td><td>Passes collected; problems reported</td></tr>
              <tr><td>Weeks 1 and 2</td><td>Answer #office-move questions the same day</td><td>Grace</td><td>Number of questions each day</td></tr>
              <tr><td>Weeks 1 and 2</td><td>Check desk bookings on anchor days</td><td>Grace</td><td>Desks booked out of 28</td></tr>
              <tr><td>Fri 12 Mar 2027</td><td>Anonymous 5-question pulse survey</td><td>Grace</td><td>Response rate; top three problems</td></tr>
              <tr><td>Tue 16 Mar 2027</td><td>Working group reviews the results and agrees actions</td><td>Grace</td><td>Actions with owners and dates</td></tr>
              <tr><td>Fri 26 Mar 2027</td><td>"You said, we did" update to all staff</td><td>Grace</td><td>Fewer repeat questions</td></tr>
            </tbody>
          </table>
          <p>AI can group the survey comments into themes. Remove names first, and read the comments yourself. A small but serious problem, such as a fire door or an access issue, can hide in a long list.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: Grace builds the plan with AI</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Grace's prompt">Grace gives AI the key facts, the dates, the three audiences and Bluefern's channels. She asks for a communication plan table with date, audience, message, channel and owner.</li>
              <li data-kind="answer" data-label="AI plan">The AI returns a clear table with 12 messages. It plans the client email for Monday 2 November and the staff announcement for Wednesday 4 November.</li>
              <li data-kind="warn" data-label="Wrong order">Clients would hear before staff. Grace moves the client email back to Monday 11 January 2027, as the working group decided.</li>
              <li data-kind="check" data-label="Date check">Grace checks every date and weekday against the plan. The AI wrote "move day: Monday 1 March". She fixes it: move day is Friday 26 February.</li>
              <li data-kind="tool" data-label="Spreadsheet">She puts the plan in a shared spreadsheet, adds owners who have agreed, and links the agenda, the announcement and the FAQ page.</li>
              <li data-kind="result" data-label="Working group review">At Tuesday's meeting, Chloe spots a gap: nobody tells staff where to go on Monday 1 March. Grace adds a Friday 26 February email.</li>
              <li data-kind="answer" data-label="Final plan">Leaders sign off the plan on Monday 2 November 2026. Grace owns it and updates it every Tuesday.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Build a communication plan for a change at your own work, or use the sample. Ask AI for the plan, an agenda, an announcement, an FAQ and a follow-up plan. Then check every date and decide on every owner yourself.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an internal communications planner. Use simple English.

        The change: [our 40-person agency moves to a new office. First day: Monday 1 March 2027. Packing day: Thursday 25 February. Office closed Friday 26 February. 40 fixed desks become 28 bookable desks.]
        Audiences: [leaders, all staff, about 25 clients]
        Channels we use: [all-hands meeting, email, Slack, an FAQ page, a weekly working group]
        Key decision date: [leaders sign off on Monday 2 November 2026]

        Please create:
        1. A communication plan table: date, audience, message, channel, owner. Leaders first, then staff, then clients.
        2. A 30-minute all-hands agenda with minutes and owners. The minutes must add up to 30.
        3. A staff announcement email of under 200 words: what, why, key dates, what to do, where to ask.
        4. An FAQ with 8 questions and short answers.
        5. A follow-up plan for the first month after the change, with what to measure.
        Use [brackets] for any fact you do not know. Do not invent dates or numbers.</pre>
            <ul class="ai-try-checks">
              <li>Leaders hear first, then staff, then clients.</li>
              <li>Every date has the right weekday and matches your facts.</li>
              <li>The agenda minutes add up to the slot.</li>
              <li>Owners are real people who have agreed.</li>
              <li>The follow-up plan continues after the change.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A good communication plan tells the right people the right facts, in the right order and channel, and keeps going after the change. AI can draft every piece quickly. You check every fact, choose the order, name the owners and stay accountable for the result.
        </div>
      HTML
      starter_code: nil
    }
  }.freeze
end

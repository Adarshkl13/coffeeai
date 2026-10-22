module AiStartingABusinessContent
  # Units (sidebar dividers): 1–4 Idea and Customer · 5–9 Market and Money · 10–14 Plan and Pitch · 15 Capstone
  # Widgets: sequence, sorter, stepper. No code editor: each Try It is an ai-try prompt box.
  LESSONS = {
    1 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-biz">Small Business</div>
          <h1 class="lc-title">From Idea to Business</h1>
        </div>
        <p class="lc-lead">An idea is not yet a business. A business has real customers who pay, again and again, for more than it costs to serve them. In this lesson you will learn the four stages every new business goes through: idea, check, plan and launch. You will also see what AI can do for a founder at each stage, and what only you can do. Knowing this early saves you money and months of wasted work.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 280" role="img" aria-label="Four stages in a row: idea, check, plan and launch. Under each stage, one box shows how AI can help and another box shows what the founder must do.">
            <defs><marker id="sb1a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="20" y="22" text-anchor="start" font-size="12" fill="#9b99b8">Four stages from idea to business (example: Chai Chowk)</text>
              <rect x="20" y="36" width="160" height="62" rx="10" fill="#27274e" stroke="#8b5cf6"/>
              <text x="100" y="62" font-weight="700">1. Idea</text><text x="100" y="84" font-size="11" fill="#9b99b8">a problem to solve</text>
              <rect x="210" y="36" width="160" height="62" rx="10" fill="#27274e" stroke="#3b82f6"/>
              <text x="290" y="62" font-weight="700">2. Check</text><text x="290" y="84" font-size="11" fill="#9b99b8">talk, test, measure</text>
              <rect x="400" y="36" width="160" height="62" rx="10" fill="#27274e" stroke="#f59e0b"/>
              <text x="480" y="62" font-weight="700">3. Plan</text><text x="480" y="84" font-size="11" fill="#9b99b8">numbers and a plan</text>
              <rect x="590" y="36" width="160" height="62" rx="10" fill="#27274e" stroke="#10b981"/>
              <text x="670" y="62" font-weight="700">4. Launch</text><text x="670" y="84" font-size="11" fill="#9b99b8">open, learn, adjust</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#sb1a)">
                <line x1="182" y1="67" x2="207" y2="67"/>
                <line x1="372" y1="67" x2="397" y2="67"/>
                <line x1="562" y1="67" x2="587" y2="67"/>
              </g>
              <g font-size="12">
                <rect x="20" y="116" width="160" height="62" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
                <text x="100" y="138" font-size="11" fill="#93c5fd">AI can help</text><text x="100" y="160">brainstorm ideas</text>
                <rect x="210" y="116" width="160" height="62" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
                <text x="290" y="138" font-size="11" fill="#93c5fd">AI can help</text><text x="290" y="160">interview questions</text>
                <rect x="400" y="116" width="160" height="62" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
                <text x="480" y="138" font-size="11" fill="#93c5fd">AI can help</text><text x="480" y="160">drafts and formulas</text>
                <rect x="590" y="116" width="160" height="62" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
                <text x="670" y="138" font-size="11" fill="#93c5fd">AI can help</text><text x="670" y="160">posts and replies</text>
                <rect x="20" y="194" width="160" height="62" rx="8" fill="#1f1f44" stroke="#10b981"/>
                <text x="100" y="216" font-size="11" fill="#6ee7b7">You must</text><text x="100" y="238">pick a real problem</text>
                <rect x="210" y="194" width="160" height="62" rx="8" fill="#1f1f44" stroke="#10b981"/>
                <text x="290" y="216" font-size="11" fill="#6ee7b7">You must</text><text x="290" y="238">meet real customers</text>
                <rect x="400" y="194" width="160" height="62" rx="8" fill="#1f1f44" stroke="#10b981"/>
                <text x="480" y="216" font-size="11" fill="#6ee7b7">You must</text><text x="480" y="238">find real figures</text>
                <rect x="590" y="194" width="160" height="62" rx="8" fill="#1f1f44" stroke="#10b981"/>
                <text x="670" y="216" font-size="11" fill="#6ee7b7">You must</text><text x="670" y="238">sign, pay, serve</text>
              </g>
              <text x="380" y="274" font-size="11" fill="#9b99b8">Skip stage 2, and you spend your savings on a guess.</text>
            </g>
          </svg>
          <figcaption>AI speeds up the thinking and writing at every stage. The facts, the money and the decisions stay with you.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Meet Aman and Chai Chowk</h3>
          <p>In this course you will follow one made-up founder. <strong>Aman</strong> is 27 and lives in Madhya Pradesh. He worked for four years at a busy café. He wants to open <strong>Chai Chowk</strong>, a tea-and-snacks kiosk near a busy group of colleges and coaching centres. Later he hopes to open a second outlet.</p>
          <p>Aman has ₹6,00,000 of his own savings and ₹2,00,000 from his family. That is ₹8,00,000 in total. If he spends it on a kiosk that nobody visits, most of it is gone. So he will not start by building. He will start by checking.</p>
          <p>You will also meet <strong>Anjali</strong>, who runs Sweet Crumbs, a home bakery in Maharashtra. All names, places and numbers in this course are made up for teaching.</p>
        </div>
        <div class="lc-card">
          <h3>The four stages</h3>
          <table class="lc-table">
            <thead><tr><th>Stage</th><th>The key question</th><th>What Aman does</th><th>You are ready to move on when…</th></tr></thead>
            <tbody>
              <tr><td><strong>1. Idea</strong></td><td>Which problem will I solve, and for whom?</td><td>Lists problems he has seen, such as long tea queues in short class breaks. He scores three ideas.</td><td>You can say the customer and the problem in one sentence.</td></tr>
              <tr><td><strong>2. Check</strong></td><td>Do real people have this problem, and will they pay?</td><td>Talks to 15 students and staff. Runs a 7-day pop-up tea stall.</td><td>You have evidence from actions (money, visits), not only kind words.</td></tr>
              <tr><td><strong>3. Plan</strong></td><td>Can this make money, and how much do I need?</td><td>Works out costs, prices, break-even and cash flow. Writes a one-page plan.</td><td>The numbers work in a bad month, not only in a good one.</td></tr>
              <tr><td><strong>4. Launch</strong></td><td>How do I get and keep the first customers?</td><td>Registers the business, opens the kiosk and tracks cups sold each day.</td><td>You track a few numbers every week and change what does not work.</td></tr>
            </tbody>
          </table>
          <p>The stages are not a straight road. A result in the check stage can send you back to the idea stage. That is not failure. It is the cheapest time to learn you were wrong.</p>
        </div>
        <div class="lc-card">
          <h3>What AI can and cannot do for a founder</h3>
          <table class="lc-table">
            <thead><tr><th>AI assistants (such as Claude) are good at</th><th>AI cannot do this for you</th></tr></thead>
            <tbody>
              <tr><td>Giving you many ideas and angles quickly</td><td>Know what people on your street need and will pay</td></tr>
              <tr><td>Drafting interview questions, emails, plans and posts</td><td>Talk to your customers or build trust with them</td></tr>
              <tr><td>Explaining business words in simple language</td><td>Give current, correct rules, fees and licences for your city</td></tr>
              <tr><td>Building spreadsheet formulas and "what if" tables</td><td>Supply true numbers: rent, costs and market size must come from real sources</td></tr>
              <tr><td>Playing a tough investor or a doubtful customer</td><td>Take the risk, sign the rent agreement or decide to spend the money</td></tr>
            </tbody>
          </table>
          <p>AI can sound sure and still be wrong. It can invent a number, a rule or a competitor. Treat every AI answer as a first draft. You check it, and you decide.</p>
          <p>This course is general education. It is not financial, tax or legal advice. Before you put real money at risk, talk to a chartered accountant (CA) and, where needed, a lawyer.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: AI or you?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Aman has a long to-do list. Sort each task: can AI do most of the work, or must Aman do it or check it himself?</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="ai" data-label="AI can do most of it"></div>
              <div data-sorter-target="bucket" data-bucket="you" data-label="Aman must do or check it"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="ai" data-why="Brainstorming names is a good AI job. Aman still checks that no one else already uses the name.">Write 20 possible names for the kiosk</li>
              <li data-bucket="you" data-why="Only real students, and a real test, can show if they will pay. AI can only guess.">Find out if students near his spot will really pay ₹15 for a cup of chai</li>
              <li data-bucket="ai" data-why="AI is good at sorting notes into a table. Aman checks the counts against his notes.">Turn 15 pages of interview notes into a summary table</li>
              <li data-bucket="you" data-why="Signing a contract is a legal and money decision. Only Aman can make it.">Sign the rent agreement for the kiosk space</li>
              <li data-bucket="ai" data-why="AI can draft good questions quickly. Aman removes any question that leads the customer.">Suggest questions for a customer interview</li>
              <li data-bucket="you" data-why="This is a personal and family decision about risk. AI can list the risks, but it cannot decide.">Decide whether to put the family's ₹2,00,000 into the business</li>
              <li data-bucket="you" data-why="Rules change and AI can be out of date. Aman checks the official FSSAI website or asks a CA.">Confirm which food licence the kiosk needs</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to turn your idea into a simple stage-by-stage roadmap. Change the parts in [square brackets], or send it as it is to see Aman's version.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a practical mentor for first-time founders in India. You are honest and you do not over-praise ideas.

        My idea: [a tea-and-snacks kiosk near colleges and coaching centres in Madhya Pradesh]
        My background: [4 years working at a busy café]
        Money I can use: [₹8,00,000]. Time I can give: [full time].

        1. Make a table with the 4 stages: Idea, Check, Plan, Launch. For each stage give: the key question, 3 tasks for me, how AI can help, what I must do myself, and the evidence I need before I move to the next stage.
        2. List the 5 riskiest assumptions in my idea, most risky first.
        3. For each assumption, suggest one cheap way to test it in the next 30 days.
        4. End with 3 questions you need me to answer to make this roadmap better.

        Rules: use simple English. Do not state any market size, growth rate or statistic. Do not state licence fees or tax rules as facts; tell me to check them with official sources or a CA.</pre>
            <ul class="ai-try-checks">
              <li>Each stage ends with evidence you can see or count, not a feeling.</li>
              <li>The riskiest assumptions are about customers and money, not only about the logo or the name.</li>
              <li>The answer does not invent market sizes, statistics or licence fees.</li>
              <li>The tests really cost little and fit into 30 days.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A business grows in four stages: idea, check, plan and launch. The check stage is the cheapest place to find out you are wrong. AI makes every stage faster, but real customers, real numbers and your own decisions make it a business.
        </div>
      HTML
      starter_code: nil
    },
    2 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-biz">Small Business</div>
          <h1 class="lc-title">Where AI Helps a Founder</h1>
        </div>
        <p class="lc-lead">A founder does many jobs at once: researcher, writer, accountant and marketer. AI can make each of these jobs faster. But AI can also invent market numbers, agree with every idea you have, or copy someone else's work. In this lesson you will learn the four main jobs where AI helps a founder, and the four big risks. You will also learn one simple habit that protects you: keeping a source list.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 280" role="img" aria-label="Four kinds of AI help, brainstorm, research, drafts and numbers, all pass through a check gate. The gate asks about the source, the maths, copying and private data. Answers that pass are used and added to a source list. Answers that fail are dropped or labelled as estimates.">
            <defs><marker id="sb2a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="20" y="20" width="190" height="50" rx="8" fill="#27274e" stroke="#8b5cf6"/>
              <text x="115" y="41" font-weight="700">Brainstorm</text><text x="115" y="59" font-size="11" fill="#9b99b8">ideas, names, angles</text>
              <rect x="20" y="85" width="190" height="50" rx="8" fill="#27274e" stroke="#3b82f6"/>
              <text x="115" y="106" font-weight="700">Research</text><text x="115" y="124" font-size="11" fill="#9b99b8">questions, where to look</text>
              <rect x="20" y="150" width="190" height="50" rx="8" fill="#27274e" stroke="#22d3ee"/>
              <text x="115" y="171" font-weight="700">Drafts</text><text x="115" y="189" font-size="11" fill="#9b99b8">emails, plans, posts</text>
              <rect x="20" y="215" width="190" height="50" rx="8" fill="#27274e" stroke="#ec4899"/>
              <text x="115" y="236" font-weight="700">Numbers</text><text x="115" y="254" font-size="11" fill="#9b99b8">formulas, what-ifs</text>
              <rect x="270" y="60" width="210" height="160" rx="12" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="375" y="88" font-weight="700" fill="#fcd34d">Check gate</text>
              <text x="375" y="118" font-size="12">Where is the source?</text>
              <text x="375" y="143" font-size="12">Does the maths add up?</text>
              <text x="375" y="168" font-size="12">Is it copied?</text>
              <text x="375" y="193" font-size="12">Is private data safe?</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#sb2a)">
                <line x1="212" y1="45" x2="266" y2="82"/>
                <line x1="212" y1="110" x2="266" y2="120"/>
                <line x1="212" y1="175" x2="266" y2="165"/>
                <line x1="212" y1="240" x2="266" y2="200"/>
                <line x1="482" y1="110" x2="536" y2="82"/>
                <line x1="482" y1="170" x2="536" y2="198"/>
              </g>
              <text x="505" y="84" font-size="11" fill="#6ee7b7">pass</text>
              <text x="505" y="206" font-size="11" fill="#f9a8d4">fail</text>
              <rect x="540" y="40" width="200" height="84" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="640" y="72" font-weight="700" fill="#6ee7b7">Use it</text>
              <text x="640" y="94" font-size="11" fill="#9b99b8">add it to your source list</text>
              <text x="640" y="110" font-size="11" fill="#9b99b8">with a link and a date</text>
              <rect x="540" y="156" width="200" height="84" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="640" y="188" font-weight="700" fill="#f9a8d4">Drop it, or</text>
              <text x="640" y="210" font-size="11" fill="#9b99b8">label it "estimate"</text>
              <text x="640" y="226" font-size="11" fill="#9b99b8">and show your working</text>
            </g>
          </svg>
          <figcaption>Everything AI gives you passes through the same check gate before it goes into your plan.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Four jobs where AI helps</h3>
          <table class="lc-table">
            <thead><tr><th>Job</th><th>Example for Chai Chowk</th><th>What Aman still checks</th></tr></thead>
            <tbody>
              <tr><td><strong>Brainstorm</strong></td><td>30 kiosk names, 10 snack ideas that go well with tea, 5 ways to reach coaching students</td><td>Is the name already used by another tea business? Can he make the snack in a small kiosk?</td></tr>
              <tr><td><strong>Research</strong></td><td>Which questions to ask, which kinds of sources to look at, what a kiosk owner usually pays for</td><td>He opens each real source himself. AI may point to a report that does not exist.</td></tr>
              <tr><td><strong>Drafts</strong></td><td>An interview guide, a WhatsApp message to a landlord, a one-page plan</td><td>Tone, facts, and that every promise is one he can keep</td></tr>
              <tr><td><strong>Numbers</strong></td><td>A break-even formula, a 12-month cash flow layout, "what if rent goes up by ₹5,000?"</td><td>He puts in his own real costs and checks every total in the spreadsheet</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Four risks, and how to handle them</h3>
          <ul class="lc-list">
            <li><strong>Made-up market data.</strong> AI tools sometimes "hallucinate": they write a number, a report name or a quote that is not real. A made-up market size in your plan can mislead a bank or an investor. Never use a figure without a real source.</li>
            <li><strong>Overconfidence and praise.</strong> AI often agrees with you and calls your idea "promising". Ask it to argue against your idea too.</li>
            <li><strong>Copying.</strong> AI can suggest a name, logo idea or text that is close to another business. Check names on the IP India trademark search before you use them.</li>
            <li><strong>Private data.</strong> Do not paste customers' names, phone numbers or your bank details into a public AI tool. Use IDs such as C01, C02 instead.</li>
          </ul>
          <p>Here is the difference a better prompt makes:</p>
          <pre><code>Weak prompt:
        What is the size of the tea market in Madhya Pradesh? Is my kiosk a good idea?</code></pre>
          <pre><code>Better prompt:
        You are a careful research assistant. I plan a tea kiosk near coaching
        centres in Madhya Pradesh. Do NOT give me any market size numbers.
        1. List the questions I must answer to estimate demand for my kiosk.
        2. For each question, suggest what kind of real source could answer it
           (government data, a trade body, my own counts, quotes from landlords).
        3. Say clearly where you are unsure.
        4. Then act as a doubtful investor. Give 5 reasons this idea could fail.</code></pre>
          <p>The weak prompt invites a confident guess. The better prompt asks for a method, real sources and honest doubts.</p>
        </div>
        <div class="lc-card">
          <h3>Keep a source list</h3>
          <p>A <strong>source list</strong> is a simple table. It records where every important fact in your plan came from. It takes five minutes a day. It makes your plan trustworthy and easy to update. Here is part of Aman's list (made-up entries):</p>
          <table class="lc-table">
            <thead><tr><th>Claim</th><th>Type</th><th>Source</th><th>Date checked</th></tr></thead>
            <tbody>
              <tr><td>640 people walked past the stall spot from 5 pm to 6 pm on a weekday</td><td>My own data</td><td>Aman's tally count, clicker in hand</td><td>10 Aug 2026</td></tr>
              <tr><td>Kiosk rent is ₹30,000 a month, with 3 months' deposit</td><td>Quote</td><td>WhatsApp message from the property owner</td><td>12 Aug 2026</td></tr>
              <tr><td>A food kiosk needs FSSAI registration or a licence</td><td>Official rule</td><td>The FSSAI website, then confirmed with a CA</td><td>14 Aug 2026</td></tr>
              <tr><td>"The tea market grows fast every year" (from an AI chat)</td><td>No source</td><td>None found. Removed from the plan.</td><td>14 Aug 2026</td></tr>
            </tbody>
          </table>
          <p>Mark every number as one of three kinds: a <strong>fact</strong> with a source, <strong>your own data</strong>, or an <strong>estimate</strong> with your working shown.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: the number that came from nowhere</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Aman asks">How big is the tea market in Madhya Pradesh? Give me one number for my business plan.</li>
              <li data-kind="answer" data-label="AI replies">The tea market in Madhya Pradesh is worth about ₹450 crore a year and grows 12% a year. (This is a made-up answer for this activity.)</li>
              <li data-kind="thought" data-label="Aman thinks">That sounds exact. But there is no source, no year and no method.</li>
              <li data-kind="user" data-label="Aman asks">Where does ₹450 crore come from? Give me the exact source and year.</li>
              <li data-kind="answer" data-label="AI replies">I do not have a specific source for that figure. It was a rough estimate.</li>
              <li data-kind="warn" data-label="Mistake caught">Aman nearly pasted the number into his plan. A number with no source is not a fact. A bank or investor could ask about it.</li>
              <li data-kind="user" data-label="Aman asks">Do not give me a number. Help me build an estimate from things I can count myself near my kiosk spot.</li>
              <li data-kind="answer" data-label="AI replies">Count people passing at busy hours. Find how many buy tea in a test stall. Note what they pay and how often they come.</li>
              <li data-kind="tool" data-label="Spreadsheet">Aman adds each input to his source list, marked "my data" or "estimate".</li>
              <li data-kind="check" data-label="Aman checks">Every number in the plan now has a source, a date and a type. The ₹450 crore figure is gone.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to act as a doubtful adviser. It will list the assumptions behind your idea and start your source list.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a doubtful but fair small business adviser in India. You never invent numbers.

        My business idea: [Chai Chowk, a tea-and-snacks kiosk near coaching centres in Madhya Pradesh. Kadak chai at ₹15, snacks at ₹20 to ₹30. Budget ₹8,00,000.]

        1. List the 10 assumptions my idea depends on. Put the riskiest first.
        2. For each assumption, give: its type (customers, price, costs, place, rules, competition), how I can check it cheaply, and what kind of real source could confirm it.
        3. Make an empty source list table with these columns: Claim, Type (fact / my data / estimate), Source, Link or place, Date checked.
        4. Give 3 honest reasons this idea could fail.

        Rules: do not write any market size, growth rate or statistic. If you are not sure about a rule or licence, say "check with the official website or a CA". Use simple English.</pre>
            <ul class="ai-try-checks">
              <li>The answer contains no invented market sizes, growth rates or statistics.</li>
              <li>The riskiest assumptions are about customers paying, not small details.</li>
              <li>Each check is something you can really do yourself, cheaply.</li>
              <li>Rules and licences are sent to official sources or a CA, not stated as facts.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Use AI to brainstorm, research, draft and calculate. But pass every answer through a check gate: source, maths, copying and privacy. A plan with fewer numbers, each with a real source, is stronger than a plan full of confident guesses.
        </div>
      HTML
      starter_code: nil
    },
    3 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-biz">Small Business</div>
          <h1 class="lc-title">Finding and Choosing Ideas</h1>
        </div>
        <p class="lc-lead">Good business ideas usually start with a problem you have seen yourself. In this lesson you will learn three places to look for ideas: problems you know, your own skills, and trends. Then you will learn to compare ideas fairly with a simple scoring matrix in a spreadsheet. You will also see how to use AI for brainstorming without letting it choose for you.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 250" role="img" aria-label="A funnel narrows 20 brainstormed ideas to a shortlist of 3 and then to 1 idea to test, Chai Chowk. A bar chart shows the weighted scores: Chai Chowk kiosk 41, tiffin service 34, print and stationery shop 25, out of 50.">
            <defs><marker id="sb3a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <polygon points="20,40 320,40 290,95 50,95" fill="#27274e" stroke="#8b5cf6"/>
              <text x="170" y="63" font-weight="700">Brainstorm: 20 ideas</text>
              <text x="170" y="83" font-size="11" fill="#9b99b8">problems, skills, trends</text>
              <polygon points="55,105 285,105 255,160 85,160" fill="#27274e" stroke="#3b82f6"/>
              <text x="170" y="128" font-weight="700">Shortlist: 3 ideas</text>
              <text x="170" y="148" font-size="11" fill="#9b99b8">score each one</text>
              <polygon points="90,170 250,170 220,225 120,225" fill="#27274e" stroke="#10b981"/>
              <text x="170" y="193" font-weight="700">Test: 1 idea</text>
              <text x="170" y="213" font-size="11" fill="#6ee7b7">Chai Chowk</text>
              <line x1="330" y1="130" x2="380" y2="130" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#sb3a)"/>
              <text x="400" y="36" text-anchor="start" font-size="12" fill="#9b99b8">Weighted score (out of 50)</text>
              <text x="400" y="66" text-anchor="start" font-size="12">Chai Chowk kiosk</text>
              <rect x="400" y="74" width="205" height="22" rx="4" fill="#10b981"/>
              <text x="615" y="90" text-anchor="start" font-weight="700">41</text>
              <text x="400" y="126" text-anchor="start" font-size="12">Tiffin service for PG students</text>
              <rect x="400" y="134" width="170" height="22" rx="4" fill="#3b82f6"/>
              <text x="580" y="150" text-anchor="start" font-weight="700">34</text>
              <text x="400" y="186" text-anchor="start" font-size="12">Print and stationery shop</text>
              <rect x="400" y="194" width="125" height="22" rx="4" fill="#8b5cf6"/>
              <text x="535" y="210" text-anchor="start" font-weight="700">25</text>
              <text x="400" y="240" text-anchor="start" font-size="11" fill="#9b99b8">Scores are Aman's own made-up judgements.</text>
            </g>
          </svg>
          <figcaption>Go wide first, then narrow down. A scoring matrix makes the choice fair and easy to explain.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Three places to find ideas</h3>
          <table class="lc-table">
            <thead><tr><th>Source</th><th>Question to ask yourself</th><th>Example</th></tr></thead>
            <tbody>
              <tr><td><strong>Problems you know</strong></td><td>What annoys me or people around me, again and again?</td><td>Aman saw students queue for 10 minutes at a tea cart during a 15-minute class break.</td></tr>
              <tr><td><strong>Your skills</strong></td><td>What can I do better than most people? What have I done for years?</td><td>Aman ran a café counter for four years. He knows stock, staff shifts and fast service.</td></tr>
              <tr><td><strong>Trends</strong></td><td>What is changing around me? New buildings, new habits, new rules?</td><td>New coaching centres keep opening in his area. He checks this by walking the streets, not by trusting a headline.</td></tr>
            </tbody>
          </table>
          <p>Anjali's Sweet Crumbs started the same way. Office friends kept asking her for eggless birthday cakes. That was a problem she knew, plus a skill she had.</p>
          <p>Be careful with trends. A trend that AI tells you about is only a guess until you find a real source for it.</p>
        </div>
        <div class="lc-card">
          <h3>Score your ideas with a matrix</h3>
          <p>A <strong>scoring matrix</strong> is a table. Each idea gets a score from 1 (poor) to 5 (great) for each criterion. A <strong>criterion</strong> is one thing you care about, such as cost. A <strong>weight</strong> shows how much each criterion matters. Aman chose his criteria and weights <em>before</em> he scored anything.</p>
          <table class="lc-table">
            <thead><tr><th>Criterion</th><th>Weight</th><th>Chai Chowk kiosk</th><th>Tiffin service</th><th>Print shop</th></tr></thead>
            <tbody>
              <tr><td>Customer problem is real and frequent</td><td>3</td><td>4</td><td>4</td><td>3</td></tr>
              <tr><td>Fits my skills and experience</td><td>2</td><td>5</td><td>2</td><td>2</td></tr>
              <tr><td>Fits my ₹8 lakh budget</td><td>2</td><td>4</td><td>4</td><td>3</td></tr>
              <tr><td>Cheap to test in 30 days</td><td>1</td><td>5</td><td>4</td><td>2</td></tr>
              <tr><td>Profit potential</td><td>2</td><td>3</td><td>3</td><td>2</td></tr>
              <tr><td><strong>Weighted score (out of 50)</strong></td><td>10</td><td><strong>41</strong></td><td><strong>34</strong></td><td><strong>25</strong></td></tr>
            </tbody>
          </table>
          <p>The weights add up to 10, so the best possible score is 5 × 10 = 50. For the kiosk: 4×3 + 5×2 + 4×2 + 5×1 + 3×2 = 12 + 10 + 8 + 5 + 6 = 41.</p>
          <p>In a spreadsheet, turn the table on its side. Put the five weights in cells B2 to F2. Put each idea in its own row, starting with the kiosk in row 3. Then type this in G3 and copy it down:</p>
          <pre><code>=SUMPRODUCT($B$2:$F$2,B3:F3)</code></pre>
          <p>For the kiosk row this gives 41. The <code>$</code> signs keep the weights fixed when you copy the formula down.</p>
          <p>Look at the weak scores too. The kiosk gets only 3 for profit potential, because tea is cheap and profit depends on selling many cups. Aman writes this down as a risk to check later. The matrix helps you think. It does not decide for you.</p>
        </div>
        <div class="lc-card">
          <h3>Brainstorming with AI, and its limits</h3>
          <pre><code>Weak prompt:
        Give me some good business ideas.</code></pre>
          <pre><code>Better prompt:
        I live in Madhya Pradesh. I have ₹8 lakh and 4 years of café experience.
        Problems I see every day: long tea queues in short class breaks,
        students with no clean place to sit, PG residents with poor food.
        Suggest 15 business ideas that solve one of these problems.
        For each: the problem, the customer, and a rough setup cost range
        marked "estimate". Do not include ideas that need more than ₹8 lakh.</code></pre>
          <p>The weak prompt gives generic ideas that anyone could get. The better prompt gives AI your real problems, skills and limits.</p>
          <ul class="lc-list">
            <li><strong>AI does not know your street.</strong> It cannot see the queue outside the coaching centre. You can.</li>
            <li><strong>AI cost ranges are rough guesses.</strong> Get real quotes before you trust any cost.</li>
            <li><strong>AI may suggest ideas that need licences</strong> or permissions it does not mention. Check with official sources.</li>
            <li><strong>AI ideas are not private or unique.</strong> Others can get the same list. Your edge is your local knowledge and your skills.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Activity: from many ideas to one</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put Aman's steps for choosing an idea in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Write down problems he has seen himself and the skills he has</li>
              <li data-order="2">Ask AI for more ideas, giving it his problems, skills and budget</li>
              <li data-order="3">Cut the long list to 3 ideas he could really start</li>
              <li data-order="4">Choose the criteria and weights before scoring anything</li>
              <li data-order="5">Score each idea from 1 to 5 and calculate the weighted totals</li>
              <li data-order="6">Look at the weak scores of the winner and note them as risks</li>
              <li data-order="7">Pick one idea to test with real customers</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to brainstorm ideas from your real problems and skills, then score your top three with a weighted matrix.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a practical business coach for first-time founders in India.

        About me:
        - State: [Madhya Pradesh]
        - Skills and experience: [4 years running a café counter, good with people]
        - Money I can use: [₹8,00,000]
        - Problems I see often: [long tea queues in short class breaks; no clean place for students to sit; PG residents want home-style food]

        1. Suggest 10 business ideas. Each must solve one of my problems. For each give: the problem, the customer, and why my skills fit.
        2. Pick the 3 ideas that best fit my money and skills.
        3. Score these 3 ideas from 1 to 5 on these criteria and weights: customer problem is real and frequent (weight 3), fits my skills (2), fits my budget (2), cheap to test in 30 days (1), profit potential (2).
        4. Show the table, the working for each total (out of 50), and the Google Sheets SUMPRODUCT formula.
        5. For the winner, list its 2 weakest points and one way to check each.

        Do not state market sizes or statistics. Mark any cost as "rough estimate, get real quotes".</pre>
            <ul class="ai-try-checks">
              <li>Recalculate each total yourself: score times weight, then add.</li>
              <li>Every idea is linked to a problem you actually listed.</li>
              <li>The ideas fit your budget, and costs are labelled as rough estimates.</li>
              <li>Your own scores may differ from the AI's scores. Change them where you know better.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> The best ideas mix a problem you know with a skill you have. Use AI to widen your list, then choose with a scoring matrix whose weights you set first. Treat the winner's weak scores as risks to test, not as details to ignore.
        </div>
      HTML
      starter_code: nil
    },
    4 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-biz">Small Business</div>
          <h1 class="lc-title">Understanding Your Customer</h1>
        </div>
        <p class="lc-lead">"Everyone" is not a customer. Before you build anything, you need to know exactly who will buy. You also need to know their problem, and what they do about it today. In this lesson you will learn to split customers into segments and describe the "job" they want done. You will learn to ask interview questions that do not lead people to the answer you want. You will also use AI to draft an interview guide and to summarise your notes safely.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 270" role="img" aria-label="Three customer segments for Chai Chowk from 15 interviews: coaching students (7 people), college students (3 people), and staff and nearby adults (5 people). Each segment shows its job to be done and what it pays now per visit.">
            <defs><marker id="sb4a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="20" y="20" text-anchor="start" font-size="12" fill="#9b99b8">Chai Chowk: 15 interviews, 3 segments (made-up data)</text>
              <rect x="20" y="32" width="230" height="58" rx="10" fill="#27274e" stroke="#3b82f6"/>
              <text x="135" y="56" font-weight="700">Coaching students</text><text x="135" y="77" font-size="11" fill="#9b99b8">7 of 15 interviews</text>
              <rect x="265" y="32" width="230" height="58" rx="10" fill="#27274e" stroke="#8b5cf6"/>
              <text x="380" y="56" font-weight="700">College students</text><text x="380" y="77" font-size="11" fill="#9b99b8">3 of 15 interviews</text>
              <rect x="510" y="32" width="230" height="58" rx="10" fill="#27274e" stroke="#f59e0b"/>
              <text x="625" y="56" font-weight="700">Staff and nearby adults</text><text x="625" y="77" font-size="11" fill="#9b99b8">5 of 15 interviews</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#sb4a)">
                <line x1="135" y1="92" x2="135" y2="110"/>
                <line x1="380" y1="92" x2="380" y2="110"/>
                <line x1="625" y1="92" x2="625" y2="110"/>
              </g>
              <rect x="20" y="114" width="230" height="84" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="135" y="136" font-size="11" fill="#93c5fd">Job to be done</text>
              <text x="135" y="158" font-size="12">a quick, clean tea</text><text x="135" y="178" font-size="12">in a 15-minute break</text>
              <rect x="265" y="114" width="230" height="84" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="380" y="136" font-size="11" fill="#c4b5fd">Job to be done</text>
              <text x="380" y="158" font-size="12">a cheap place to sit</text><text x="380" y="178" font-size="12">and talk with friends</text>
              <rect x="510" y="114" width="230" height="84" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="625" y="136" font-size="11" fill="#fcd34d">Job to be done</text>
              <text x="625" y="158" font-size="12">tea for 8 to 10 staff,</text><text x="625" y="178" font-size="12">or a clean place to wait</text>
              <rect x="20" y="212" width="230" height="40" rx="8" fill="#1f1f44" stroke="#4b4a78"/>
              <text x="135" y="237" font-size="12" fill="#6ee7b7">Pays now: ₹15 to ₹35 a visit</text>
              <rect x="265" y="212" width="230" height="40" rx="8" fill="#1f1f44" stroke="#4b4a78"/>
              <text x="380" y="237" font-size="12" fill="#6ee7b7">Pays now: ₹20 to ₹40 a visit</text>
              <rect x="510" y="212" width="230" height="40" rx="8" fill="#1f1f44" stroke="#4b4a78"/>
              <text x="625" y="237" font-size="12" fill="#6ee7b7">Pays now: ₹20 to ₹50 a visit</text>
            </g>
          </svg>
          <figcaption>Each segment has its own job to be done. The same kiosk must serve each one in a slightly different way.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Segments, problems and jobs to be done</h3>
          <p>A <strong>customer segment</strong> is a group of customers with the same need and similar habits. A <strong>job to be done</strong> is the progress a customer wants to make in their day. People do not want "a tea". A coaching student wants to wake up and take a real break, and be back before class starts.</p>
          <table class="lc-table">
            <thead><tr><th>Segment</th><th>Main problem</th><th>Job to be done</th><th>What they use now</th></tr></thead>
            <tbody>
              <tr><td>Coaching students</td><td>The break is short. The queue at the tea cart is long.</td><td>"Give me a quick, clean tea and snack, and get me back to class on time."</td><td>Roadside tea cart, or nothing</td></tr>
              <tr><td>College students</td><td>No cheap place to sit. Cafés cost too much for daily use.</td><td>"Give me a place to hang out with friends for under ₹50."</td><td>Canteen, or a café on weekends</td></tr>
              <tr><td>Staff and nearby adults</td><td>Need tea for 8 to 10 staff at 11 am. Parents have nowhere clean to wait.</td><td>"Bring tea for my team on time," or "Give me a clean seat while I wait."</td><td>Someone walks to the cart with a flask</td></tr>
            </tbody>
          </table>
          <p>At the start, segments are only guesses. Interviews show you which guesses are true. Aman did not plan for the staff segment. Two people in his interviews asked for bulk orders.</p>
        </div>
        <div class="lc-card">
          <h3>Ask questions that do not lead</h3>
          <p>A <strong>leading question</strong> pushes people towards the answer you want. People are polite. They will say "Yes, great idea!" and then never come. Ask about what they <em>did</em> in the past, not what they <em>might do</em> in the future.</p>
          <table class="lc-table">
            <thead><tr><th>Weak question</th><th>Why it is weak</th><th>Better question</th></tr></thead>
            <tbody>
              <tr><td>Would you buy chai from a clean new kiosk?</td><td>It asks about the future and hints at the answer.</td><td>Tell me about the last time you had tea between classes. Where did you go?</td></tr>
              <tr><td>Is ₹15 a good price for chai?</td><td>People guess. Their guess is not what they pay.</td><td>What did you spend on tea and snacks yesterday?</td></tr>
              <tr><td>Don't you hate the queue at the tea stall?</td><td>It puts your words in their mouth.</td><td>Walk me through your last break, from the moment class ended.</td></tr>
              <tr><td>Would you pay for a monthly tea card?</td><td>A promise costs nothing.</td><td>Have you ever paid in advance for food or tea? What happened?</td></tr>
            </tbody>
          </table>
          <ul class="lc-list">
            <li>Listen more than you talk. Do not describe your idea until the last few minutes.</li>
            <li>Write down their exact words, especially about problems and money.</li>
            <li>Ask for consent first. Talk only to adults (18 or over), or get a parent's permission.</li>
            <li>End with: "Who else should I talk to about this?"</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Using AI for the guide and the summary</h3>
          <p>AI is useful twice: before the interviews, to draft a guide, and after, to summarise notes. Before you paste notes into AI, remove names and phone numbers. Use IDs such as C01 to C15.</p>
          <p>Here is the summary of Aman's 15 interviews (made-up data):</p>
          <table class="lc-table">
            <thead><tr><th>Finding</th><th>Result</th></tr></thead>
            <tbody>
              <tr><td>Short break or long queue</td><td>7 of 15 people</td></tr>
              <tr><td>Worried about cleanliness</td><td>5 of 15</td></tr>
              <tr><td>No place to sit or wait</td><td>4 of 15</td></tr>
              <tr><td>Very price sensitive</td><td>4 of 15</td></tr>
              <tr><td>Spend now per visit (tea + snack)</td><td>average ₹27, median ₹25</td></tr>
              <tr><td>Visits per week now</td><td>average 4.7, median 5</td></tr>
              <tr><td>Visit 5 or more times a week</td><td>9 of 15</td></tr>
              <tr><td>Said "I would try it"</td><td>13 of 15 (weak evidence: only a promise)</td></tr>
            </tbody>
          </table>
          <p>The <strong>median</strong> is the middle value when you sort the answers. It is not pulled up by one big spender. In Aman's sheet, spend per visit is in E2:E16 and visits per week in F2:F16.</p>
          <pre><code>=AVERAGE(E2:E16)            gives 27
        =MEDIAN(E2:E16)             gives 25
        =AVERAGE(F2:F16)            gives 4.73
        =COUNTIF(F2:F16,"&gt;=5")      gives 9</code></pre>
          <p>Always count a few findings yourself from the notes. AI can miscount, or add a problem that nobody said.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: from a leading guide to honest notes</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Aman asks">Write interview questions that prove students want my Chai Chowk kiosk.</li>
              <li data-kind="answer" data-label="AI replies">1. Would you visit a clean new tea kiosk near your coaching centre? 2. Would you pay ₹15 for great kadak chai? 3. Would you tell your friends?</li>
              <li data-kind="warn" data-label="Mistake caught">Every question is about the future, and each one hints at the answer. The word "prove" in Aman's prompt caused this.</li>
              <li data-kind="user" data-label="Aman asks">Rewrite the guide. Ask only about past behaviour and real spending. Do not mention my kiosk until the last two minutes.</li>
              <li data-kind="answer" data-label="AI replies">1. Walk me through your last break between classes. 2. Where did you get tea or a snack? 3. What did you pay? 4. What annoyed you?</li>
              <li data-kind="tool" data-label="Interviews">Aman talks to 15 adults near the coaching centres by his spot. He types his notes with IDs C01 to C15, with no names or phone numbers.</li>
              <li data-kind="user" data-label="Aman asks">Summarise these 15 notes. List each problem, how many people said it, their IDs, and what they pay now.</li>
              <li data-kind="answer" data-label="AI replies">Short break or long queue: 7 of 15. Cleanliness: 5 of 15. Bulk staff orders: 2 of 15 (C12, C14). Average spend ₹27 a visit.</li>
              <li data-kind="check" data-label="Aman checks">He counts the notes himself and the numbers match. He marks "13 of 15 would try it" as weak evidence to test next.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to build your customer interview kit: segments, a guide with non-leading questions, and a notes template.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a customer research coach. You follow one rule: ask about past behaviour and real spending, never about opinions of my idea.

        My business idea: [Chai Chowk, a tea-and-snacks kiosk near coaching centres in Madhya Pradesh]
        Customers I think I have: [coaching students, college students, coaching centre staff]

        1. Describe 3 possible customer segments. For each, write one job to be done in the customer's own words. Label these as guesses to test.
        2. Write a 20-minute interview guide with 12 questions in 3 parts: warm-up, "tell me about the last time...", and money and frequency. Add one follow-up for each question.
        3. List 5 leading questions I must avoid, and say why each is weak.
        4. Write a short, polite consent line to say before I start.
        5. Make a notes template table with these columns: ID, Who, Problem (their words), What they use now, Spend per visit (₹), Visits per week, Surprises.

        Use simple English. Do not describe my idea in any question.</pre>
            <ul class="ai-try-checks">
              <li>No question asks "would you" or hints at the answer you want.</li>
              <li>Most questions ask about a real past event and real money spent.</li>
              <li>The notes template uses IDs, not names or phone numbers.</li>
              <li>The segments are clearly labelled as guesses to test.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Know your segments and the job each one wants done. Ask about what people did and paid, not what they might do. AI drafts the guide and sorts the notes. But only real conversations, counted by you, tell you who your customer is.
        </div>
      HTML
      starter_code: nil
    },
    5 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-biz">Small Business</div>
          <h1 class="lc-title">Checking an Idea Cheaply</h1>
        </div>
        <p class="lc-lead">Before you spend lakhs of rupees, spend a few thousand to find out if people will really buy. In this lesson you will learn four cheap tests: interviews, a landing page or sign-up form, pre-orders, and a small pilot. You will learn to set a pass line before each test, and to tell real evidence from kind words. You will also see how AI helps you plan a test and read the results.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 280" role="img" aria-label="An evidence ladder with four steps. Kind words, 13 of 15 said they would try it, is weak. Sign-ups, 212 on a free form, are a little stronger. Pre-orders, 27 prepaid cards worth 6,750 rupees, are strong. Pilot sales, 758 cups in 7 days with 45 percent coming back, are the strongest.">
            <defs><marker id="sb5a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="20" y="22" text-anchor="start" font-size="12" fill="#9b99b8">Evidence gets stronger when people give money or time, or come back (Chai Chowk, made-up data)</text>
              <rect x="20" y="180" width="170" height="60" rx="8" fill="#27274e" stroke="#9b99b8"/>
              <text x="105" y="202" font-weight="700">Kind words</text>
              <text x="105" y="224" font-size="11" fill="#9b99b8">13 of 15: "I'd try it"</text>
              <rect x="205" y="140" width="170" height="100" rx="8" fill="#27274e" stroke="#3b82f6"/>
              <text x="290" y="164" font-weight="700">Sign-ups</text>
              <text x="290" y="186" font-size="12">212 on a free form</text>
              <text x="290" y="206" font-size="11" fill="#9b99b8">easy to give</text>
              <rect x="390" y="100" width="170" height="140" rx="8" fill="#27274e" stroke="#f59e0b"/>
              <text x="475" y="124" font-weight="700">Pre-orders</text>
              <text x="475" y="146" font-size="12">27 prepaid cards</text>
              <text x="475" y="166" font-size="12">₹6,750 paid</text>
              <text x="475" y="186" font-size="11" fill="#fcd34d">real money</text>
              <rect x="575" y="60" width="170" height="180" rx="8" fill="#27274e" stroke="#10b981"/>
              <text x="660" y="84" font-weight="700">Pilot sales</text>
              <text x="660" y="106" font-size="12">758 cups in 7 days</text>
              <text x="660" y="126" font-size="12">45% came back 3+</text>
              <text x="660" y="146" font-size="11" fill="#6ee7b7">money and repeat visits</text>
              <line x1="20" y1="258" x2="740" y2="258" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#sb5a)"/>
              <text x="20" y="274" text-anchor="start" font-size="11" fill="#9b99b8">weaker, cheaper</text>
              <text x="740" y="274" text-anchor="end" font-size="11" fill="#9b99b8">stronger, costs more effort</text>
            </g>
          </svg>
          <figcaption>Climb the ladder step by step. Each step costs a little more, and tells you much more.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Four cheap tests</h3>
          <table class="lc-table">
            <thead><tr><th>Test</th><th>What it checks</th><th>Cost and time</th><th>Aman's result (made-up)</th></tr></thead>
            <tbody>
              <tr><td><strong>Interviews</strong></td><td>Is the problem real? What do people do and pay today?</td><td>Almost free, 1 week</td><td>15 interviews. The queue in short breaks was the top problem.</td></tr>
              <tr><td><strong>Landing page or sign-up form</strong></td><td>Will people leave their contact details for your offer?</td><td>Free to low cost, a few days</td><td>212 sign-ups on a "notify me" Google Form, shared by flyers and Instagram</td></tr>
              <tr><td><strong>Pre-orders</strong></td><td>Will people pay before the product exists?</td><td>Low cost, 1 to 2 weeks</td><td>27 prepaid launch cards (20 kadak chai for ₹250) = ₹6,750</td></tr>
              <tr><td><strong>Small pilot</strong></td><td>Will people buy the real product, at your price, and come back?</td><td>A few thousand rupees, 1 to 4 weeks</td><td>7-day evening pop-up stall: 758 cups of tea sold</td></tr>
            </tbody>
          </table>
          <p>A <strong>landing page</strong> is one simple web page. It describes your offer and has one button, such as "Notify me". You can make one with a website builder or a free form tool.</p>
          <p>Be honest in every test. For pre-orders, state clearly what people get, when, and how they get a full refund. Aman promised a full refund if the kiosk does not open by 31 January 2027. Never use fake reviews or fake "only 3 left" messages. For a pop-up food stall, get the space owner's permission and check local food safety rules first. Ask a CA how to record money you receive in advance.</p>
        </div>
        <div class="lc-card">
          <h3>Set the pass line before the test</h3>
          <p>A <strong>pass line</strong> is the result that counts as "yes, continue". Write it down <em>before</em> the test. If you set it after, you will move the line to match your hopes. On 10 August 2026, Aman wrote down three pass lines.</p>
          <table class="lc-table">
            <thead><tr><th>Pass line (set before)</th><th>Result</th><th>Pass?</th></tr></thead>
            <tbody>
              <tr><td>Weekday average of at least 100 cups in the 5-hour evening stall</td><td>122.2 cups</td><td>Yes</td></tr>
              <tr><td>At least 20 prepaid launch cards sold</td><td>27 cards</td><td>Yes</td></tr>
              <tr><td>At least 30% of stamp-card customers come back 3 or more times</td><td>29 of 64 = 45.3%</td><td>Yes</td></tr>
            </tbody>
          </table>
          <p>Here are the pilot sales. The stall ran from Monday 17 to Sunday 23 August 2026, from 4 pm to 9 pm.</p>
          <table class="lc-table">
            <thead><tr><th>Day</th><th>Kadak chai (₹15)</th><th>Masala chai (₹25)</th><th>Tea cups</th><th>Poha (₹30)</th><th>Samosa (₹20)</th><th>Sales (₹)</th></tr></thead>
            <tbody>
              <tr><td>Mon</td><td>62</td><td>34</td><td>96</td><td>18</td><td>25</td><td>2,820</td></tr>
              <tr><td>Tue</td><td>78</td><td>40</td><td>118</td><td>22</td><td>31</td><td>3,450</td></tr>
              <tr><td>Wed</td><td>81</td><td>43</td><td>124</td><td>24</td><td>33</td><td>3,670</td></tr>
              <tr><td>Thu</td><td>86</td><td>45</td><td>131</td><td>25</td><td>35</td><td>3,865</td></tr>
              <tr><td>Fri</td><td>92</td><td>50</td><td>142</td><td>27</td><td>38</td><td>4,200</td></tr>
              <tr><td>Sat</td><td>70</td><td>39</td><td>109</td><td>20</td><td>28</td><td>3,185</td></tr>
              <tr><td>Sun</td><td>22</td><td>16</td><td>38</td><td>6</td><td>9</td><td>1,090</td></tr>
              <tr><td><strong>Total</strong></td><td><strong>491</strong></td><td><strong>267</strong></td><td><strong>758</strong></td><td><strong>142</strong></td><td><strong>199</strong></td><td><strong>22,280</strong></td></tr>
            </tbody>
          </table>
          <p>In the sheet, the days are in rows 2 to 8 (Monday is row 2). The columns follow the table above: B kadak chai, C masala chai, D tea cups, E poha, F samosa and G sales.</p>
          <pre><code>D2:  =B2+C2                          gives 96
        G2:  =B2*15+C2*25+E2*30+F2*20        gives 2820
        Weekday average cups:  =AVERAGE(D2:D6)   gives 122.2
        Total cups:            =SUM(D2:D8)       gives 758
        Came back 3+ times:    =29/64            gives 45.3% (format as %)</code></pre>
          <p>The pilot cost ₹12,600 to run (space fee, a helper, hired equipment, flyers and cards). The ingredients cost ₹8,721. So 22,280 − 8,721 − 12,600 = ₹959. The test roughly paid for itself.</p>
        </div>
        <div class="lc-card">
          <h3>What counts as real evidence</h3>
          <ul class="lc-list">
            <li><strong>Strong:</strong> people pay money, give real time, or come back again. Prepaid cards, pilot sales and repeat visits are strong.</li>
            <li><strong>Weak:</strong> things that cost people nothing. Compliments, "likes", free sign-ups and "I would buy it" are weak.</li>
            <li><strong>Not evidence:</strong> AI opinions, your friends' excitement, and numbers without a source.</li>
          </ul>
          <p>Also write down the limits of your test. Aman's pilot ran for one week, in one spot, only in the evening. Some people came just because it was new. He paid no kiosk rent. Sunday was very weak (38 cups), because most coaching centres close. So he plans to close on Sundays.</p>
          <p>AI can help you plan a test, draft the form and flyer text, and spot patterns in daily sales. But AI cannot create evidence. Never ask it to "improve" your results or to write reviews.</p>
          <pre><code>Weak prompt:
        Here are my sales. Is my business a success?

        Better prompt:
        Here are 7 days of pilot sales (table below) and my 3 pass lines,
        which I set before the test. For each pass line, say pass or fail
        and show the working. Then list the limits of this test and 3
        questions a doubtful bank manager would ask about these numbers.</code></pre>
        </div>
        <div class="lc-card">
          <h3>Activity: strong, weak or not evidence?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Aman collected many signals. Sort each one by how much it proves.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="strong" data-label="Strong evidence"></div>
              <div data-sorter-target="bucket" data-bucket="weak" data-label="Weak evidence"></div>
              <div data-sorter-target="bucket" data-bucket="none" data-label="Not evidence"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="strong" data-why="People paid real money before the kiosk even exists.">27 people paid ₹250 each for a prepaid launch card</li>
              <li data-bucket="weak" data-why="A free form costs nothing to fill in. Aman cannot tell how many of these people will buy.">212 people filled in a free "notify me" form</li>
              <li data-bucket="weak" data-why="A promise about the future is polite, but it costs nothing.">13 of 15 people said "I would definitely try it"</li>
              <li data-bucket="strong" data-why="Coming back again and again shows real value.">29 of 64 stamp-card customers came back 3 or more times in the week</li>
              <li data-bucket="none" data-why="An AI does not know Aman's customers. Its opinion proves nothing.">An AI chat said "students love premium chai, so this will work"</li>
              <li data-bucket="weak" data-why="Likes are free, and many came from Aman's friends and family.">The Instagram launch post got 90 likes</li>
              <li data-bucket="strong" data-why="A business paid for a real order. This also points to a new segment.">Two coaching centres paid for staff tea trays on 3 days</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to design a cheap test for your riskiest assumption, with pass lines and a daily tracking sheet.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a lean startup coach for small businesses in India. You are strict about evidence.

        My idea: [Chai Chowk, a tea-and-snacks kiosk near coaching centres in Madhya Pradesh]
        My riskiest assumption: [enough students will buy kadak chai at ₹15 during short class breaks]
        Money for testing: [₹15,000]. Time: [2 weeks].

        1. Suggest 3 cheap tests (for example a sign-up form, pre-orders, a pop-up stall). For each: what it proves, cost, time, and how strong the evidence is.
        2. Recommend one test and explain why.
        3. Write 3 pass lines as clear numbers that I must set before the test starts.
        4. Design a daily tracking sheet: column names, plus Google Sheets formulas for daily totals and the average.
        5. List honest-practice rules: refund terms for any pre-orders, permissions I need, no fake reviews or fake scarcity.
        6. Say what results should make me stop, change the idea, or continue.

        Use simple English. Do not invent statistics or market data.</pre>
            <ul class="ai-try-checks">
              <li>The pass lines are numbers, set before the test, not feelings.</li>
              <li>The tests fit your money and time limits.</li>
              <li>Pre-orders come with a clear refund promise.</li>
              <li>Try each formula on two or three rows of sample numbers.</li>
              <li>The answer names the limits of the test, such as a short time or one location.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Real evidence is money, time and repeat visits, not kind words. Set your pass lines before the test. Run the cheapest test that can prove you wrong, and write down its limits. AI can plan the test and read the numbers, but only real customers can give you the evidence.
        </div>
      HTML
      starter_code: nil
    },
    6 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-biz">Small Business</div>
          <h1 class="lc-title">Market Research with AI</h1>
        </div>
        <p class="lc-lead">Banks, investors and family members will ask you one question: "How big is your market?" A big number copied from a chat or a headline does not answer it. In this lesson you will learn three market sizes: TAM, SAM and SOM. You will work them out from the bottom up, using things you can count and check. You will also learn which real sources to use, and how to use AI to build the method without letting it invent the numbers.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 290" role="img" aria-label="Three nested market sizes for Chai Chowk, built from Aman's own counts. TAM is about 6.07 crore rupees a year from 12,000 people within 1 kilometre. SAM is about 2.53 crore rupees a year from 5,000 people within 300 metres. SOM is about 32 lakh rupees a year, the base-case sales, which is 12.7 percent of SAM.">
            <defs><marker id="sb6a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="20" y="22" text-anchor="start" font-size="12" fill="#9b99b8">Chai Chowk market sizes, bottom up (made-up counts and estimates)</text>
              <rect x="20" y="38" width="300" height="66" rx="10" fill="#27274e" stroke="#8b5cf6"/>
              <text x="170" y="64" font-weight="700">TAM: about ₹6.07 crore a year</text>
              <text x="170" y="86" font-size="11" fill="#9b99b8">12,000 people within 1 km</text>
              <rect x="50" y="120" width="240" height="66" rx="10" fill="#27274e" stroke="#3b82f6"/>
              <text x="170" y="146" font-weight="700">SAM: about ₹2.53 crore</text>
              <text x="170" y="168" font-size="11" fill="#9b99b8">5,000 people within 300 m</text>
              <rect x="80" y="202" width="180" height="66" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="170" y="228" font-weight="700" fill="#6ee7b7">SOM: about ₹32 lakh</text>
              <text x="170" y="250" font-size="11" fill="#9b99b8">base case, first year</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#sb6a)">
                <line x1="325" y1="71" x2="355" y2="71"/>
                <line x1="295" y1="153" x2="355" y2="153"/>
                <line x1="265" y1="235" x2="355" y2="235"/>
              </g>
              <g text-anchor="start" font-size="12">
                <text x="365" y="66">12,000 people × 60% who buy</text>
                <text x="365" y="84" fill="#9b99b8">× ₹27 a visit × 312 days</text>
                <text x="365" y="148">5,000 people × 60% who buy</text>
                <text x="365" y="166" fill="#9b99b8">× ₹27 a visit × 312 days</text>
                <text x="365" y="230">₹10,250 a day × 312 days</text>
                <text x="365" y="248" fill="#9b99b8">= 12.7% of SAM. Is that realistic?</text>
              </g>
              <text x="20" y="284" text-anchor="start" font-size="11" fill="#9b99b8">Every input is labelled: own count, interview data or estimate. None is a real market figure.</text>
            </g>
          </svg>
          <figcaption>Build each size from people you can count, the share who buy, what they spend and how often. Then ask if the result makes sense.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>TAM, SAM and SOM in plain words</h3>
          <table class="lc-table">
            <thead><tr><th>Term</th><th>Plain meaning</th><th>For Chai Chowk</th></tr></thead>
            <tbody>
              <tr><td><strong>TAM</strong> (total addressable market)</td><td>All the money that people in your chosen area spend on this kind of product</td><td>Tea and snacks bought outside home by students and workers within 1 km of the kiosk</td></tr>
              <tr><td><strong>SAM</strong> (serviceable available market)</td><td>The part of the TAM you can really reach with your place, hours, menu and prices</td><td>People within about 300 m, a 3 to 4 minute walk. Farther away, a 15-minute break is too short.</td></tr>
              <tr><td><strong>SOM</strong> (serviceable obtainable market)</td><td>The part of the SAM you can realistically win in your first year, against competitors</td><td>Aman's base-case sales, which come from his pilot results</td></tr>
            </tbody>
          </table>
          <p>There are two ways to size a market. <strong>Top down</strong> starts with a huge figure, such as "the Indian tea market", and cuts it down with guesses. <strong>Bottom up</strong> starts with things you can count: people, the share who buy, what they spend and how often. For a small local business, bottom up is much more honest. A national figure tells you almost nothing about one street in one city.</p>
        </div>
        <div class="lc-card">
          <h3>Aman's bottom-up sizing, with labelled assumptions</h3>
          <p>An <strong>assumption</strong> is a number you use before you know it for sure. Aman writes every assumption in its own row, with its source type. All numbers here are made up for teaching.</p>
          <table class="lc-table">
            <thead><tr><th>Assumption</th><th>Value</th><th>Where it came from</th><th>Type</th></tr></thead>
            <tbody>
              <tr><td>Coaching centres within 1 km</td><td>22</td><td>Walked every lane on 25 Aug 2026, then checked against map listings</td><td>Own count</td></tr>
              <tr><td>Students a day per centre (average)</td><td>300</td><td>Asked 8 front desks. Answers ranged from 150 to 500.</td><td>Estimate</td></tr>
              <tr><td>College students on campus a day (2 colleges)</td><td>3,000</td><td>Colleges found in the AISHE list. Numbers from each college office, then cut for attendance.</td><td>Estimate</td></tr>
              <tr><td>Office staff, shop workers and others</td><td>2,400</td><td>Counted shops and offices, then guessed staff per place</td><td>Estimate</td></tr>
              <tr><td>Share who buy tea or snacks outside on a class day</td><td>60%</td><td>9 of 15 interviews visit 5 or more times a week</td><td>Interview data (may be too high)</td></tr>
              <tr><td>Spend per visit</td><td>₹27</td><td>Average of 15 interviews</td><td>Interview data</td></tr>
              <tr><td>Open days a year</td><td>312</td><td>26 days a month × 12. Closed on Sundays.</td><td>Aman's plan</td></tr>
            </tbody>
          </table>
          <p>People within 1 km: 22 × 300 + 3,000 + 2,400 = 12,000. So <strong>TAM</strong> = 12,000 × 60% × ₹27 × 312 = ₹6,06,52,800, about ₹6.07 crore a year.</p>
          <p>Within 300 m, Aman counted 9 coaching centres (9 × 300 = 2,700 students), 1 college (1,500 a day, estimate) and about 800 others. That is 5,000 people. So <strong>SAM</strong> = 5,000 × 60% × ₹27 × 312 = ₹2,52,72,000, about ₹2.53 crore.</p>
          <p>His base-case sales are ₹10,250 a day, or ₹31,98,000 a year. That is his <strong>SOM</strong>: 31,98,000 ÷ 2,52,72,000 = 12.7% of the SAM. The low case (₹4,910 a day) is 6.1%. The high case (₹15,000 a day) is 18.5%, nearly 1 in 5 rupees spent nearby. With three competitors close by, Aman thinks the high case is a stretch.</p>
          <p>In a sheet, put the inputs in B2 to B5 and B7. Then:</p>
          <pre><code>B2 people within 1 km      12000
        B3 share who buy           60%
        B4 spend per visit (₹)     27
        B5 open days a year        312
        B6 TAM:  =B2*B3*B4*B5      gives 60652800
        B7 people within 300 m     5000
        B8 SAM:  =B7*B3*B4*B5      gives 25272000
        B9 base-case sales a year  3198000
        B10 SOM share:  =B9/B8     gives 12.7% (format as %)</code></pre>
          <p>Now test the result against something real. Aman's own tally showed 640 people walking past his spot in one busy hour. His pilot sold about 122 cups on a weekday evening. The base case needs 280 cups over 14 hours. That is 20 cups an hour, below the pilot's 24 an hour. The numbers fit together.</p>
        </div>
        <div class="lc-card">
          <h3>Real sources, and how AI helps</h3>
          <table class="lc-table">
            <thead><tr><th>Source type</th><th>What it can tell you</th><th>Limits</th></tr></thead>
            <tbody>
              <tr><td><strong>Census of India</strong></td><td>Population and households by area</td><td>The latest full data is from 2011. A new census is under way, so check the official census website for new releases. It counts residents, not daytime visitors.</td></tr>
              <tr><td><strong>AISHE</strong> (All India Survey on Higher Education, Ministry of Education)</td><td>Lists of colleges and universities, and enrolment reports</td><td>Enrolment is not daily attendance. Figures may be a year or two old.</td></tr>
              <tr><td><strong>Local counts</strong></td><td>Footfall (people passing), coaching centres, shops, queues at competitors</td><td>One day or one hour can be unusual. Count on several days.</td></tr>
              <tr><td><strong>Industry reports and news</strong></td><td>Trends and context</td><td>Check who wrote it, the year and the method. Many free "market reports" online have no clear method.</td></tr>
            </tbody>
          </table>
          <pre><code>Weak prompt:
        What is the market size for tea in Madhya Pradesh? Give me TAM, SAM and SOM.</code></pre>
          <pre><code>Better prompt:
        Help me size the market for a tea kiosk from the bottom up.
        Do NOT give me any market size figure from memory.
        1. List the inputs I need (people, share who buy, spend, frequency).
        2. For each input, say how I can count or check it locally, and
           which official source type could help (Census, AISHE, etc.).
        3. Give me the spreadsheet formulas for TAM, SAM and SOM.
        4. List 3 ways my estimate could be too high.</code></pre>
          <p>The weak prompt invites a confident number with no source. The better prompt asks AI for a method. You fill in the numbers yourself. Always check any source name that AI gives you. It may point to a report that does not exist. Keep every input in your source list, with its type and date.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: can this number go into the plan?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Aman has collected these numbers. Sort each one by where it came from and how he should use it.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="official" data-label="Official source"></div>
              <div data-sorter-target="bucket" data-bucket="own" data-label="Own count or data"></div>
              <div data-sorter-target="bucket" data-bucket="estimate" data-label="Estimate: label it"></div>
              <div data-sorter-target="bucket" data-bucket="drop" data-label="Do not use"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="official" data-why="It is official, but it is from 2011 and counts residents only. Aman uses it for context, with the year.">Ward population from the Census 2011 tables</li>
              <li data-bucket="official" data-why="AISHE is a Ministry of Education survey. It helps Aman list the colleges near his spot.">The list of colleges near his spot in AISHE data</li>
              <li data-bucket="own" data-why="Aman counted this himself, with a date and time. He should repeat it on other days.">640 people walked past the spot from 5 pm to 6 pm</li>
              <li data-bucket="own" data-why="Aman walked every lane and checked map listings. It is his own data.">22 coaching centres within 1 km</li>
              <li data-bucket="estimate" data-why="It comes from 15 interviews near tea spots, so it may be too high. Label it and test it.">60% of people buy tea or snacks outside on a class day</li>
              <li data-bucket="drop" data-why="There is no source, year or method. It may be an AI hallucination.">An AI chat says "the tea market in your city is worth crores and growing fast"</li>
              <li data-bucket="drop" data-why="A blog with no method is not evidence. Aman can check this himself in interviews.">A blog post says "every student drinks three teas a day"</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to build a bottom-up TAM, SAM and SOM method for your business, with an assumptions table and formulas. You will fill in the real numbers later.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a careful market research coach for small businesses in India. You never state a market size from memory.

        My business: [a tea-and-snacks kiosk near coaching centres in Madhya Pradesh]
        My customers: [coaching students, college students, nearby office and shop staff]
        My area: [within 1 km for TAM; within a 4-minute walk for SAM]

        1. Explain TAM, SAM and SOM for my business in 3 short lines.
        2. Make an assumptions table with columns: Input, How I can count or check it, Official or other source type (for example Census, AISHE, local counts), Type (own count / estimate).
        3. Give Google Sheets formulas for TAM, SAM and SOM (SOM as a share of SAM), using clear cell references.
        4. Show a worked example with sample numbers, and label every number "sample".
        5. List 4 ways my estimate could be too high, and one sanity check for each.

        Use simple English.</pre>
            <ul class="ai-try-checks">
              <li>The answer gives no real market size figure from memory.</li>
              <li>Every sample number is labelled as a sample or estimate.</li>
              <li>Try each formula with the sample numbers and check the result.</li>
              <li>If a source is named, check that it really exists before you use it.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Size your market from the bottom up: people you can count, the share who buy, what they spend and how often. Label every input with its source. Then test the result against your own counts and pilot. Let AI design the method, but never let it supply the market figures.
        </div>
      HTML
      starter_code: nil
    },
    7 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-biz">Small Business</div>
          <h1 class="lc-title">Studying Competitors</h1>
        </div>
        <p class="lc-lead">Your customers already solve their problem somehow. They go to another shop, use a cheaper option, or do without. Those options are your competitors. In this lesson you will learn to find direct and indirect competitors, compare them in a simple table, and choose a clear position for your business. You will also see what AI often gets wrong about competitors, and how to check it on the street.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="A positioning map. The horizontal axis is the price of a cup of chai, from 10 to 60 rupees. The vertical axis is comfort and cleanliness, from low to high. Sharma Tea Stall is cheap with low comfort. Garam Glass is mid-priced with medium comfort. Kettle Street Café is costly with high comfort. Chai Chowk plans to fill the gap: low price with good comfort.">
            <defs><marker id="sb7a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="20" y="20" text-anchor="start" font-size="12" fill="#9b99b8">Positioning map near Aman's spot (made-up competitors, Aman's judgement from visits)</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#sb7a)">
                <line x1="80" y1="250" x2="735" y2="250"/>
                <line x1="80" y1="250" x2="80" y2="38"/>
              </g>
              <text x="410" y="290" font-size="12" fill="#9b99b8">Price of a cup of chai</text>
              <g font-size="11" fill="#9b99b8">
                <text x="116" y="268">₹10</text>
                <text x="232" y="268">₹20</text>
                <text x="348" y="268">₹30</text>
                <text x="696" y="268">₹60</text>
              </g>
              <text x="72" y="60" text-anchor="end" font-size="11" fill="#9b99b8">high</text>
              <text x="72" y="244" text-anchor="end" font-size="11" fill="#9b99b8">low</text>
              <text x="30" y="150" font-size="11" fill="#9b99b8" transform="rotate(-90 30 150)">Comfort and cleanliness</text>
              <circle cx="116" cy="215" r="9" fill="#f59e0b"/>
              <text x="132" y="220" text-anchor="start" font-size="12">Sharma Tea Stall</text>
              <circle cx="290" cy="150" r="9" fill="#3b82f6"/>
              <text x="306" y="155" text-anchor="start" font-size="12">Garam Glass</text>
              <circle cx="696" cy="70" r="9" fill="#ec4899"/>
              <text x="682" y="75" text-anchor="end" font-size="12">Kettle Street Café</text>
              <circle cx="232" cy="85" r="30" fill="none" stroke="#10b981" stroke-width="2" stroke-dasharray="5 4"/>
              <circle cx="232" cy="85" r="9" fill="#10b981"/>
              <text x="272" y="80" text-anchor="start" font-size="12" font-weight="700" fill="#6ee7b7">Chai Chowk (planned)</text>
              <text x="272" y="98" text-anchor="start" font-size="11" fill="#9b99b8">₹15 to ₹25, clean, fast, a few seats</text>
            </g>
          </svg>
          <figcaption>The map shows a gap: nobody nearby offers a clean, quick cup at a low price. That gap is Aman's position, if customers really want it.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Direct and indirect competitors</h3>
          <p>A <strong>direct competitor</strong> sells almost the same thing to the same customers. An <strong>indirect competitor</strong> solves the same problem in a different way. Both take money and visits away from you.</p>
          <table class="lc-table">
            <thead><tr><th>Type</th><th>Chai Chowk examples (made up)</th><th>Why it matters</th></tr></thead>
            <tbody>
              <tr><td><strong>Direct</strong></td><td>Sharma Tea Stall (a roadside cart), Garam Glass (a small branded tea outlet), Kettle Street Café (a sit-down AC café)</td><td>Customers compare your price, speed and taste with theirs every day.</td></tr>
              <tr><td><strong>Indirect</strong></td><td>The college canteen, a flask of tea from home, food delivery apps, energy drinks from a general store</td><td>If your break is short, a flask from home may win on speed and price.</td></tr>
            </tbody>
          </table>
          <p>Ask your interview notes: "What do you use now?" Aman's customers named roadside carts, a café, the canteen and flasks from home. Every answer is a competitor.</p>
        </div>
        <div class="lc-card">
          <h3>Build a comparison table from real visits</h3>
          <p>Aman visited each competitor as a normal paying customer on 26 and 27 August 2026. He went at 5 pm to 6 pm, the busy hour. He noted prices from the menu board and timed his own wait. These notes are made up for teaching.</p>
          <table class="lc-table">
            <thead><tr><th></th><th>Sharma Tea Stall</th><th>Garam Glass</th><th>Kettle Street Café</th><th>Chai Chowk (plan)</th></tr></thead>
            <tbody>
              <tr><td>Distance</td><td>about 150 m</td><td>about 400 m</td><td>about 700 m</td><td>on the coaching lane</td></tr>
              <tr><td>Chai price</td><td>₹10</td><td>₹20 to ₹30</td><td>₹60 (masala)</td><td>₹15 and ₹25</td></tr>
              <tr><td>Snacks</td><td>samosa ₹15</td><td>₹30 to ₹50</td><td>sandwich ₹120</td><td>₹20 to ₹30</td></tr>
              <tr><td>Wait at 5:30 pm</td><td>about 2 minutes</td><td>about 9 minutes, 14 people in the queue</td><td>table service, about 10 minutes</td><td>target: under 3 minutes</td></tr>
              <tr><td>Seating</td><td>none</td><td>a few seats</td><td>AC, Wi-Fi, 6 tables</td><td>stools and one table</td></tr>
              <tr><td>Strengths</td><td>cheapest, very fast, known for years</td><td>clean, good branding, kulhad chai</td><td>comfortable, good for groups</td><td>clean, quick, bulk staff orders</td></tr>
              <tr><td>Weak points (from interviews)</td><td>hygiene worries, closes about 8 pm</td><td>long queue from 5 pm to 6 pm</td><td>too costly and too far for a short break</td><td>new and unknown, pays rent</td></tr>
            </tbody>
          </table>
          <p>Be honest about your own weak points too. Sharma Tea Stall is cheaper and has loyal customers. Chai Chowk will not win on price alone.</p>
          <p>From the table, Aman writes a <strong>positioning statement</strong>. This is one sentence about who you serve, what you offer, and why you are different:</p>
          <pre><code>For coaching students and staff nearby who have a short break,
        Chai Chowk is the clean tea kiosk that serves you in minutes,
        at close to street prices. Unlike the cart, it is clean.
        Unlike the café, it is quick and affordable.</code></pre>
          <p>A position is a promise. Aman must test it: time real orders and ask customers after a month.</p>
        </div>
        <div class="lc-card">
          <h3>What AI gets wrong about competitors</h3>
          <ul class="lc-list">
            <li><strong>It invents details.</strong> AI may give a competitor a star rating, a number of outlets or a price that it made up.</li>
            <li><strong>It is out of date.</strong> Prices, menus and opening hours change. AI may use old information from the internet.</li>
            <li><strong>It misses small local players.</strong> A roadside cart may have no website and no online listing. AI does not know it exists.</li>
            <li><strong>It mixes up names.</strong> A business with a similar name in another city may appear in the answer.</li>
          </ul>
          <pre><code>Weak prompt:
        Who are the tea competitors near the coaching centres in my area? Give their ratings.

        Better prompt:
        Here are my own visit notes on 3 competitors (below). Build a comparison
        table with price, wait time, seating, strengths and weak points.
        Use ONLY my notes. Write "not known" where my notes have no answer.
        Then suggest 3 ways I could stand out, and one risk for each.</code></pre>
          <p>Use AI to organise what you saw, not to tell you what exists. Compete fairly. Do not copy a competitor's name, logo or menu design. Never post fake reviews, about yourself or about them.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: checking an AI competitor summary</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Aman asks">List the tea outlets near my kiosk spot, with their prices and ratings.</li>
              <li data-kind="answer" data-label="AI replies">Garam Glass has 12 outlets in the city and a 4.6-star rating. Chai prices start at ₹40. Other options include several branded chains. (A made-up answer for this activity.)</li>
              <li data-kind="thought" data-label="Aman thinks">I saw Garam Glass myself. The chai was ₹20 to ₹30. The AI also did not mention Sharma Tea Stall, which is the closest one.</li>
              <li data-kind="warn" data-label="Mistake caught">The outlet count, the rating and the price have no source. At least one is wrong. A cart with no online listing is missing.</li>
              <li data-kind="tool" data-label="Street visit">Aman buys a cup at each competitor at 5:30 pm. He photographs the menu boards and times his wait.</li>
              <li data-kind="user" data-label="Aman asks">Here are my visit notes. Turn them into a comparison table. Use only my notes, and write "not known" for any gap.</li>
              <li data-kind="answer" data-label="AI replies">A clear table with 3 competitors. Wait time and seating are filled in. Kettle Street's opening hours say "not known".</li>
              <li data-kind="check" data-label="Aman checks">He checks each cell against his photos and notes. He plans a second visit on a weekday morning.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Give AI your own notes on competitors. Ask it for a comparison table, a positioning map and a positioning statement based only on those notes.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a small business strategy coach. Use ONLY the notes I give you. Write "not known" for any missing detail. Never add ratings, outlet counts or prices that are not in my notes.

        My business: [Chai Chowk, a tea kiosk near coaching centres. Chai ₹15 and ₹25, snacks ₹20 to ₹30.]
        My notes from visits:
        [Sharma Tea Stall: roadside cart, 150 m away, chai ₹10, samosa ₹15, 2-minute wait, no seats, closes about 8 pm.
        Garam Glass: branded outlet, 400 m, chai ₹20 to ₹30, 9-minute wait at 5:30 pm, few seats, clean.
        Kettle Street Café: AC café, 700 m, masala chai ₹60, sandwich ₹120, Wi-Fi, too costly for daily use.]
        Indirect options customers named: [canteen, flask from home, delivery apps]

        1. Make a comparison table: price, wait, seating, strengths, weak points.
        2. Suggest two axes for a positioning map and place each business on it.
        3. Point out any gap, and say what evidence would prove customers want it.
        4. Write a one-sentence positioning statement.
        5. List 3 things I should check on a second visit.</pre>
            <ul class="ai-try-checks">
              <li>Every detail in the table comes from your notes, or says "not known".</li>
              <li>No ratings, outlet counts or prices were added by the AI.</li>
              <li>Indirect competitors are included, not only shops like yours.</li>
              <li>The positioning statement is a promise you can really keep every day.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Your competitors are everything your customers use today, including a flask from home. Visit them, pay, time the wait and write down what you see. Let AI turn your notes into tables and ideas, but never let it fill the gaps with invented facts.
        </div>
      HTML
      starter_code: nil
    },
    8 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-biz">Small Business</div>
          <h1 class="lc-title">Pricing and Unit Economics</h1>
        </div>
        <p class="lc-lead">Many small businesses are busy every day and still lose money. Usually the problem is in the small numbers: the cost of one cup, the price, and the profit left on each sale. These are called unit economics. In this lesson you will work out the cost and gross margin of each item. You will compare three ways to set a price and find your break-even point. You will build it all in a spreadsheet, with AI helping you write and check the formulas.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="A break-even chart for Chai Chowk. The horizontal axis shows tea cups a day from 0 to 400. A flat line shows fixed costs of 3,000 rupees a day. A rising line shows gross profit a day at about 22.55 rupees per tea cup. The lines cross at about 134 cups, the break-even point. The low case of 140 cups is just above it. The base case of 280 cups makes 6,315 rupees of gross profit a day, and the high case of 400 cups makes 9,250 rupees.">
            <defs><marker id="sb8a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="20" y="22" text-anchor="start" font-size="12" fill="#9b99b8">Chai Chowk break-even per open day (made-up estimates)</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#sb8a)">
                <line x1="80" y1="250" x2="735" y2="250"/>
                <line x1="80" y1="250" x2="80" y2="36"/>
              </g>
              <g font-size="11" fill="#9b99b8">
                <text x="72" y="254" text-anchor="end">₹0</text>
                <text x="72" y="191" text-anchor="end">₹3,000</text>
                <text x="72" y="128" text-anchor="end">₹6,000</text>
                <text x="72" y="65" text-anchor="end">₹9,000</text>
                <text x="80" y="268">0</text>
                <text x="235" y="268">100</text>
                <text x="390" y="268">200</text>
                <text x="545" y="268">300</text>
                <text x="700" y="268">400</text>
              </g>
              <text x="390" y="292" font-size="12" fill="#9b99b8">Tea cups a day</text>
              <line x1="80" y1="187" x2="735" y2="187" stroke="#ec4899" stroke-width="2"/>
              <text x="735" y="180" text-anchor="end" font-size="12" fill="#f9a8d4">Fixed costs: ₹3,000 a day</text>
              <line x1="80" y1="250" x2="700" y2="60.5" stroke="#10b981" stroke-width="2"/>
              <text x="95" y="60" text-anchor="start" font-size="12" fill="#6ee7b7">Gross profit a day (₹22.55 per tea cup)</text>
              <line x1="286" y1="187" x2="286" y2="250" stroke="#f59e0b" stroke-width="1.5" stroke-dasharray="4 3"/>
              <text x="286" y="268" font-size="11" font-weight="700" fill="#fcd34d">134</text>
              <text x="180" y="208" font-size="11" fill="#f9a8d4">loss</text>
              <text x="440" y="168" font-size="11" fill="#6ee7b7">profit</text>
              <circle cx="297" cy="186.6" r="5" fill="#e2e0f0"/>
              <text x="305" y="208" text-anchor="start" font-size="11">Low: 140 cups</text>
              <circle cx="514" cy="117.4" r="5" fill="#e2e0f0"/>
              <text x="526" y="142" text-anchor="start" font-size="11">Base: 280 cups, ₹6,315</text>
              <circle cx="700" cy="55.8" r="5" fill="#e2e0f0"/>
              <text x="688" y="44" text-anchor="end" font-size="11">High: 400 cups, ₹9,250</text>
            </g>
          </svg>
          <figcaption>Below about 134 tea cups a day, the kiosk loses money. The low case of 140 cups only just covers the fixed costs.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Cost per unit and gross margin</h3>
          <p>The <strong>cost per unit</strong> is what one item costs you to make and serve. For Aman, it is the ingredients plus the cup or plate and a little wastage. <strong>Gross profit per unit</strong> is the price minus that cost. <strong>Gross margin</strong> is gross profit as a share of the price.</p>
          <table class="lc-table">
            <thead><tr><th>Item</th><th>Price (₹)</th><th>Cost per unit (₹)</th><th>Gross profit (₹)</th><th>Gross margin</th></tr></thead>
            <tbody>
              <tr><td>Kadak chai (about 90 ml)</td><td>15</td><td>5.50</td><td>9.50</td><td>63.3%</td></tr>
              <tr><td>Masala chai (about 150 ml)</td><td>25</td><td>8.50</td><td>16.50</td><td>66.0%</td></tr>
              <tr><td>Cold coffee</td><td>60</td><td>22.00</td><td>38.00</td><td>63.3%</td></tr>
              <tr><td>Poha</td><td>30</td><td>11.00</td><td>19.00</td><td>63.3%</td></tr>
              <tr><td>Samosa (bought in)</td><td>20</td><td>11.00</td><td>9.00</td><td>45.0%</td></tr>
              <tr><td>Bun maska</td><td>30</td><td>12.00</td><td>18.00</td><td>60.0%</td></tr>
            </tbody>
          </table>
          <p>For kadak chai: (15 − 5.50) ÷ 15 = 63.3%. The samosa has the lowest margin, because Aman buys it from a local maker. But a samosa often comes with a cup of tea, so it still helps.</p>
          <p>At Chai Chowk, ingredients are the only cost that grows with each sale. So gross profit per unit is also the <strong>contribution margin</strong>: what each sale adds towards rent, salaries and other fixed costs. In a business with card fees or delivery commission, subtract those too.</p>
          <p>Get the cost per unit from real bills: the price of milk, tea leaves, sugar and cups divided by the number of cups they make. Do not use an AI guess for your costs.</p>
        </div>
        <div class="lc-card">
          <h3>Three ways to set a price</h3>
          <table class="lc-table">
            <thead><tr><th>Method</th><th>How it works</th><th>Chai Chowk example</th></tr></thead>
            <tbody>
              <tr><td><strong>Cost-plus</strong></td><td>Cost per unit plus a markup you choose</td><td>Kadak chai costs ₹5.50. Aiming for a margin near 60% gives a price close to ₹14. Aman rounds to ₹15.</td></tr>
              <tr><td><strong>Competitor-based</strong></td><td>Set your price against what nearby options charge</td><td>Sharma Tea Stall charges ₹10. Garam Glass charges ₹20 to ₹30. Chai Chowk sits between them.</td></tr>
              <tr><td><strong>Value-based</strong></td><td>Price by what the customer gains, such as time saved or a clean place to sit</td><td>Masala chai at ₹25 in a larger cup, for customers who want a treat and a seat</td></tr>
            </tbody>
          </table>
          <p>Use all three together. Cost-plus sets your floor. Competitors show the range customers accept. Value tells you where in that range you fit. Check price against evidence: in the interviews, one student named ₹15 as the most they would pay for chai. The pilot sold 491 cups of kadak chai at ₹15 in one week.</p>
          <p>Tax can change your numbers. If the business registers for GST (Goods and Services Tax), part of each price may go to the government as tax. Ask a chartered accountant (CA) how GST applies before you fix your menu prices. This lesson is general education, not tax or financial advice.</p>
        </div>
        <div class="lc-card">
          <h3>Weighted margin and break-even, in a spreadsheet</h3>
          <p>Each item has its own margin. The <strong>weighted margin</strong> is the margin on your whole sales mix. Items you sell more of count more. The <strong>break-even point</strong> is the sales level where gross profit exactly covers fixed costs. Fixed costs are costs that stay the same however much you sell, such as rent.</p>
          <p>Aman's sheet has one item per row, from kadak chai in row 2 to bun maska in row 7. Column F holds base-case units a day.</p>
          <pre><code>A item | B price | C cost | D gross profit | E margin | F units a day | G sales | H gross profit a day
        D2:  =B2-C2              (kadak chai: 9.5)
        E2:  =D2/B2              (63.3%)
        G2:  =B2*F2              (15 × 170 = 2550)
        H2:  =D2*F2              (9.5 × 170 = 1615)
        G8:  =SUM(G2:G7)         gives 10250  (sales a day)
        H8:  =SUM(H2:H7)         gives 6315   (gross profit a day)
        H9:  =H8/G8              gives 61.6%  (weighted margin)

        B11: 78000               fixed costs a month
        B12: 26                  open days a month
        B13: =B11/B12            gives 3000   (fixed costs a day)
        B14: =F2+F3              gives 280    (tea cups a day)
        B15: =H8/B14             gives 22.55  (gross profit per tea cup, snacks included)
        B16: =ROUNDUP(B13/B15,0) gives 134    (break-even tea cups a day)</code></pre>
          <p>Here, "gross profit per tea cup" includes the snacks that people buy with their tea in the base mix. So 3,000 ÷ 22.55 = 133.02. Aman rounds <em>up</em> to 134 cups, because 133 cups would leave a small loss.</p>
          <table class="lc-table">
            <thead><tr><th>What if…</th><th>New number</th><th>Break-even tea cups a day</th></tr></thead>
            <tbody>
              <tr><td>No change (base mix)</td><td>₹3,000 fixed a day, ₹22.55 a cup</td><td>134</td></tr>
              <tr><td>Aman pays himself ₹20,000 a month</td><td>Fixed costs ₹98,000 a month = ₹3,769 a day</td><td>168</td></tr>
              <tr><td>Milk costs rise by ₹1 on every tea cup</td><td>₹21.55 a cup</td><td>140</td></tr>
              <tr><td>Kadak chai rises to ₹18, and sales stay the same</td><td>₹24.38 a cup</td><td>124</td></tr>
            </tbody>
          </table>
          <p>Notice the first what-if. Aman's own salary is not in the ₹78,000. A plan that only breaks even with the owner earning nothing is weaker than it looks. The last row assumes no customers leave after a price rise. That may not be true for the price-sensitive students.</p>
          <p>Ask AI to explain a formula or find an error. Then test each formula with one row you can work out by hand.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: find the break-even point</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put Aman's steps in the right order to find his break-even point.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Work out the cost per unit of each item from real bills</li>
              <li data-order="2">Set each price and calculate gross profit and gross margin per item</li>
              <li data-order="3">Estimate units sold a day for each item (the sales mix)</li>
              <li data-order="4">Add up gross profit a day and work out the weighted margin</li>
              <li data-order="5">Divide monthly fixed costs by 26 open days to get fixed costs a day</li>
              <li data-order="6">Divide fixed costs a day by gross profit per tea cup, and round up</li>
              <li data-order="7">Run what-ifs: owner's salary, higher costs and a price change</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to build your unit economics sheet: margins per item, the weighted margin, break-even and what-ifs, with formulas you can check.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a patient small business finance tutor. Show all working and check your own maths.

        My menu (price in ₹, cost per unit in ₹, units sold a day):
        [Kadak chai 15, 5.50, 170
        Masala chai 25, 8.50, 110
        Cold coffee 60, 22, 25
        Poha 30, 11, 45
        Samosa 20, 11, 60
        Bun maska 30, 12, 30]
        Fixed costs: [₹78,000 a month]. Open days: [26 a month]. Owner's salary: [not included yet].

        1. Make a table: gross profit per unit, gross margin, sales a day and gross profit a day for each item.
        2. Work out total sales a day, total gross profit a day and the weighted margin.
        3. Work out the break-even tea cups a day (kadak plus masala, snacks included in profit per cup). Round up.
        4. Give Google Sheets formulas with cell references for every step.
        5. Show 3 what-ifs: the owner takes [₹20,000 a month], costs rise 10%, and one price rises by ₹3.
        6. Name my weakest item and suggest one way to improve it.

        This is for learning, not financial advice.</pre>
            <ul class="ai-try-checks">
              <li>Check two margins by hand, for example (15 − 5.50) ÷ 15.</li>
              <li>With the sample numbers, sales should be ₹10,250 and gross profit ₹6,315 a day.</li>
              <li>The break-even answer is rounded up, not down.</li>
              <li>Each formula points to the right cells. Test it with one row.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Know the cost, price and gross profit of every item, then look at the whole mix. Divide your fixed costs by the profit each sale brings, and you have your break-even point. Add your own salary and run what-ifs, because a plan that only works when you earn nothing is not safe.
        </div>
      HTML
      starter_code: nil
    },
    9 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-biz">Small Business</div>
          <h1 class="lc-title">Startup Costs and Cash Flow</h1>
        </div>
        <p class="lc-lead">A business can be profitable on paper and still run out of money. That happens when cash goes out faster than it comes in. In this lesson you will list your one-time and monthly costs, and build a simple 12-month cash flow sheet. You will learn to work out your burn rate and runway, so you know how long your money lasts in a bad case. You will also meet the main ways to fund a small business in India, in general terms.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="A line chart of Chai Chowk's cash in the bank. It starts at 8 lakh rupees and falls to 3.25 lakh after 4.75 lakh of setup costs. In the planned ramp-up, cash rises to about 8.57 lakh after 12 months, with a small dip in month 6. In a slow case, where sales stay at 140 cups a day, cash falls slowly to about 1.71 lakh after 12 months.">
            <defs><marker id="sb9a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="20" y="20" text-anchor="start" font-size="12" fill="#9b99b8">Chai Chowk cash in the bank (made-up plan)</text>
              <line x1="420" y1="16" x2="440" y2="16" stroke="#10b981" stroke-width="3"/>
              <text x="446" y="20" text-anchor="start" font-size="11">Planned ramp-up</text>
              <line x1="560" y1="16" x2="580" y2="16" stroke="#f59e0b" stroke-width="3"/>
              <text x="586" y="20" text-anchor="start" font-size="11">Slow: 140 cups all year</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#sb9a)">
                <line x1="70" y1="250" x2="735" y2="250"/>
                <line x1="70" y1="250" x2="70" y2="36"/>
              </g>
              <g font-size="11" fill="#9b99b8">
                <text x="64" y="254" text-anchor="end">₹0</text>
                <text x="64" y="187" text-anchor="end">₹3 lakh</text>
                <text x="64" y="121" text-anchor="end">₹6 lakh</text>
                <text x="64" y="54" text-anchor="end">₹9 lakh</text>
                <text x="90" y="268">Start</text>
                <text x="135" y="268">0</text>
                <text x="276" y="268">3</text>
                <text x="417" y="268">6</text>
                <text x="558" y="268">9</text>
                <text x="699" y="268">12</text>
              </g>
              <text x="400" y="292" font-size="12" fill="#9b99b8">Months after opening</text>
              <g stroke="#4b4a78" stroke-width="1" stroke-dasharray="3 4">
                <line x1="70" y1="183.3" x2="735" y2="183.3"/>
                <line x1="70" y1="116.7" x2="735" y2="116.7"/>
                <line x1="70" y1="50" x2="735" y2="50"/>
              </g>
              <polyline points="90,72.2 135,177.8" fill="none" stroke="#9b99b8" stroke-width="2.5"/>
              <circle cx="90" cy="72.2" r="4" fill="#e2e0f0"/>
              <text x="100" y="66" text-anchor="start" font-size="11">₹8 lakh</text>
              <text x="118" y="100" text-anchor="start" font-size="11" fill="#9b99b8">setup: ₹4,75,000 spent</text>
              <polyline points="135,177.8 182,177.7 229,177.6 276,167.8 323,158.1 370,143.4 417,147.7 464,133.0 511,118.3 558,103.6 605,88.9 652,74.2 699,59.5" fill="none" stroke="#10b981" stroke-width="2.5"/>
              <polyline points="135,177.8 182,177.7 229,177.6 276,177.5 323,177.4 370,181.7 417,186.0 464,190.4 511,194.7 558,199.1 605,203.4 652,207.7 699,212.1" fill="none" stroke="#f59e0b" stroke-width="2.5"/>
              <text x="690" y="44" text-anchor="end" font-size="11" fill="#6ee7b7">₹8.57 lakh</text>
              <text x="690" y="232" text-anchor="end" font-size="11" fill="#fcd34d">₹1.71 lakh</text>
              <text x="417" y="168" font-size="11" fill="#9b99b8">slow month</text>
            </g>
          </svg>
          <figcaption>The same kiosk can end the year with more than it started, or with only ₹1.71 lakh left. The cash flow sheet shows both paths before you spend.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>One-time costs and monthly costs</h3>
          <p><strong>Startup costs</strong> are one-time costs you pay before you open. <strong>Fixed monthly costs</strong> repeat every month, even if you sell nothing. Aman got quotes for each line. All figures are made-up estimates.</p>
          <table class="lc-table">
            <thead><tr><th>One-time startup cost</th><th>₹</th><th>Fixed monthly cost</th><th>₹ a month</th></tr></thead>
            <tbody>
              <tr><td>Kiosk build, counter and branding</td><td>1,80,000</td><td>Kiosk rent</td><td>30,000</td></tr>
              <tr><td>Equipment (burners, boiler, fridge, blender, utensils)</td><td>1,20,000</td><td>2 helpers × ₹14,000</td><td>28,000</td></tr>
              <tr><td>Security deposit (3 months' rent)</td><td>90,000</td><td>Cooking gas</td><td>7,000</td></tr>
              <tr><td>First stock (tea, sugar, cups, snacks)</td><td>25,000</td><td>Electricity</td><td>3,500</td></tr>
              <tr><td>Seating (stools, table, umbrella)</td><td>20,000</td><td>Marketing</td><td>3,000</td></tr>
              <tr><td>Launch marketing</td><td>20,000</td><td>Licences and accountant (monthly share)</td><td>2,000</td></tr>
              <tr><td>Phone, UPI sound box, billing app setup</td><td>10,000</td><td>Repairs and other</td><td>2,000</td></tr>
              <tr><td>Registrations and CA help</td><td>10,000</td><td>Water and cleaning; phone and internet</td><td>2,500</td></tr>
              <tr><td><strong>Total</strong></td><td><strong>4,75,000</strong></td><td><strong>Total</strong></td><td><strong>78,000</strong></td></tr>
            </tbody>
          </table>
          <p>Aman has ₹8,00,000. After startup costs, ₹3,25,000 is left as a <strong>cash buffer</strong>: money kept aside for slow months and surprises. The security deposit may come back one day, but the cash is gone for now.</p>
          <p>Ask AI for a checklist of costs people often forget, such as repairs, licence renewals or a second gas cylinder. Then get a real quote for each one.</p>
        </div>
        <div class="lc-card">
          <h3>A 12-month cash flow sheet</h3>
          <p><strong>Cash flow</strong> is the money that actually comes in and goes out each month. It is not the same as profit. For example, the 27 prepaid launch cards brought in ₹6,750 before opening. The 540 cups on those cards bring no new cash, but their ingredients still cost about ₹2,970. The table below leaves that small cost out.</p>
          <p>Aman's planned ramp-up: 140 tea cups a day in months 1 and 2, 210 in months 3 and 4, then 280. He plans for one slow month (month 6) in case of a break between coaching batches. He takes ₹0 pay for 4 months, then ₹20,000 a month.</p>
          <table class="lc-table">
            <thead><tr><th>Month</th><th>Tea cups a day</th><th>Sales (₹)</th><th>Ingredients (₹)</th><th>Fixed costs + Aman's pay (₹)</th><th>Net cash flow (₹)</th><th>Closing cash (₹)</th></tr></thead>
            <tbody>
              <tr><td>1</td><td>140</td><td>1,27,660</td><td>49,192</td><td>78,000</td><td>+468</td><td>3,25,468</td></tr>
              <tr><td>2</td><td>140</td><td>1,27,660</td><td>49,192</td><td>78,000</td><td>+468</td><td>3,25,936</td></tr>
              <tr><td>3</td><td>210</td><td>1,97,860</td><td>76,024</td><td>78,000</td><td>+43,836</td><td>3,69,772</td></tr>
              <tr><td>4</td><td>210</td><td>1,97,860</td><td>76,024</td><td>78,000</td><td>+43,836</td><td>4,13,608</td></tr>
              <tr><td>5</td><td>280</td><td>2,66,500</td><td>1,02,310</td><td>98,000</td><td>+66,190</td><td>4,79,798</td></tr>
              <tr><td>6 (slow)</td><td>140</td><td>1,27,660</td><td>49,192</td><td>98,000</td><td>−19,532</td><td>4,60,266</td></tr>
              <tr><td>7</td><td>280</td><td>2,66,500</td><td>1,02,310</td><td>98,000</td><td>+66,190</td><td>5,26,456</td></tr>
              <tr><td>8</td><td>280</td><td>2,66,500</td><td>1,02,310</td><td>98,000</td><td>+66,190</td><td>5,92,646</td></tr>
              <tr><td>9</td><td>280</td><td>2,66,500</td><td>1,02,310</td><td>98,000</td><td>+66,190</td><td>6,58,836</td></tr>
              <tr><td>10</td><td>280</td><td>2,66,500</td><td>1,02,310</td><td>98,000</td><td>+66,190</td><td>7,25,026</td></tr>
              <tr><td>11</td><td>280</td><td>2,66,500</td><td>1,02,310</td><td>98,000</td><td>+66,190</td><td>7,91,216</td></tr>
              <tr><td>12</td><td>280</td><td>2,66,500</td><td>1,02,310</td><td>98,000</td><td>+66,190</td><td>8,57,406</td></tr>
            </tbody>
          </table>
          <p>The 210-cup months use a middle sales mix that Aman estimated: ₹7,610 of sales and ₹2,924 of ingredients a day. All months use 26 open days. The sheet leaves out GST, income tax and any loan repayments. Ask a CA to help you add them.</p>
          <p>In the sheet, put the months in columns B (month 1) to M (month 12):</p>
          <pre><code>Row 3  Sales a day (₹)          typed from the scenario, e.g. 4910
        Row 4  Ingredients a day (₹)    typed, e.g. 1892
        Row 5  Open days                26
        Row 6  Sales:        =B3*B5     gives 127660
        Row 7  Ingredients:  =B4*B5     gives 49192
        Row 8  Fixed costs              78000
        Row 9  Aman's pay               0 (20000 from month 5)
        Row 10 Net cash flow: =B6-B7-B8-B9   gives 468
        Row 11 Opening cash:  B11 = 325000, then C11: =B12 (copy right)
        Row 12 Closing cash:  =B11+B10       gives 325468
        Lowest cash in the year:  =MIN(B12:M12)</code></pre>
        </div>
        <div class="lc-card">
          <h3>Burn rate, runway and the slow case</h3>
          <p><strong>Burn rate</strong> is how much cash you lose in a month. <strong>Runway</strong> is how many months your cash lasts at that burn rate: cash ÷ monthly burn. Always work out runway for bad cases, not only the plan.</p>
          <table class="lc-table">
            <thead><tr><th>Bad case (made-up)</th><th>Monthly burn</th><th>Runway from ₹3,25,000</th></tr></thead>
            <tbody>
              <tr><td>No sales at all (for example, the kiosk is shut for repairs)</td><td>₹78,000 of fixed costs</td><td>3,25,000 ÷ 78,000 = about 4.2 months</td></tr>
              <tr><td>Stuck at 100 tea cups a day, Aman takes no pay</td><td>about ₹21,951</td><td>about 14.8 months</td></tr>
              <tr><td>Stuck at 100 tea cups a day, Aman takes ₹20,000</td><td>about ₹41,951</td><td>about 7.7 months</td></tr>
            </tbody>
          </table>
          <p>In the slow case, sales stay at 140 cups a day all year. Cash grows by ₹468 a month for 4 months. After Aman starts his pay, it falls by ₹19,532 a month. By month 12, only ₹1,70,616 is left. That is about 8.7 more months of runway.</p>
          <p>So Aman writes down a warning rule before he opens. It says: if cash falls below ₹2,00,000, or cups stay under 134 a day for two months, I cut costs or change the plan. A rule set early is easier to follow than a decision made in a panic.</p>
          <p>In a sheet: <code>=IF(M10&lt;0, M12/-M10, "not burning cash")</code> gives the months of runway left at the end of month 12.</p>
        </div>
        <div class="lc-card">
          <h3>Funding options, in general terms</h3>
          <table class="lc-table">
            <thead><tr><th>Option</th><th>What it is</th><th>Points to think about</th></tr></thead>
            <tbody>
              <tr><td><strong>Own savings and family</strong></td><td>Aman's ₹6,00,000 plus ₹2,00,000 from family</td><td>Write down the terms: is it a gift, a loan or a share of the business?</td></tr>
              <tr><td><strong>Bank business loan</strong></td><td>A loan you repay with interest each month</td><td>Repayments are a new monthly cost. Add them to the cash flow sheet.</td></tr>
              <tr><td><strong>Mudra loans</strong> (PM Mudra Yojana)</td><td>Loans for small non-farm businesses, given through banks and other lenders, in size bands called Shishu, Kishore, Tarun and Tarun Plus</td><td>Check the current limits and rules on the official Mudra website or with your bank.</td></tr>
              <tr><td><strong>PMEGP</strong> (Prime Minister's Employment Generation Programme)</td><td>A government scheme, run through KVIC, that supports bank loans for new micro-enterprises with a part-subsidy</td><td>The owner pays a share of the project cost. Limits differ by category and area. Check the official PMEGP portal.</td></tr>
              <tr><td><strong>Stand-Up India</strong></td><td>Bank loans for new businesses started by women, SC or ST entrepreneurs</td><td>Check eligibility and loan sizes on the official Stand-Up India portal.</td></tr>
              <tr><td><strong>Investors</strong></td><td>People who give money for a share of the business</td><td>Rare for a single kiosk. You give up part of the ownership and profits.</td></tr>
            </tbody>
          </table>
          <p>Scheme rules and limits change. Use only official websites, and be careful of agents who charge fees to "guarantee" a loan. This lesson is general education, not financial advice. Talk to your bank and a chartered accountant (CA) before you borrow.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: what kind of money is it?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each line from Aman's notes into the right place in his plan.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="once" data-label="One-time startup cost"></div>
              <div data-sorter-target="bucket" data-bucket="month" data-label="Fixed monthly cost"></div>
              <div data-sorter-target="bucket" data-bucket="fund" data-label="Funding, not a cost"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="once" data-why="Aman pays for the build once, before opening.">Kiosk build, counter and branding: ₹1,80,000</li>
              <li data-bucket="once" data-why="It is paid once at the start. It may come back later, but the cash is gone for now.">Security deposit of 3 months' rent: ₹90,000</li>
              <li data-bucket="month" data-why="Rent is due every month, even in a slow month.">Kiosk rent: ₹30,000</li>
              <li data-bucket="month" data-why="Salaries repeat every month, whatever the sales.">Two helpers at ₹14,000 each</li>
              <li data-bucket="once" data-why="This is the first stock, bought once before opening. Later stock is paid from daily sales.">First stock of tea, sugar, cups and snacks: ₹25,000</li>
              <li data-bucket="fund" data-why="This is money coming in to start the business. Aman should write down if it must be paid back.">₹2,00,000 from Aman's family</li>
              <li data-bucket="fund" data-why="A loan is cash in, not income. Its monthly repayments would become a new cost.">A possible ₹2,00,000 bank loan for the kiosk build</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to set up a 12-month cash flow sheet for your business, with a slow case, runway and a warning rule.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a careful small business finance tutor in India. Show all working. This is for learning, not financial advice.

        My business: [a tea-and-snacks kiosk]
        Money I have: [₹8,00,000]. One-time startup costs: [₹4,75,000].
        Fixed costs: [₹78,000 a month]. Open days: [26 a month].
        Sales and ingredient cost per day: [low ₹4,910 and ₹1,892; middle ₹7,610 and ₹2,924; base ₹10,250 and ₹3,935]
        Plan: [low for months 1 and 2, middle for months 3 and 4, base after that, one slow month at low in month 6]
        My pay: [₹0 for 4 months, then ₹20,000 a month]

        1. Build a 12-month cash flow table: sales, ingredients, fixed costs, my pay, net cash flow, opening and closing cash.
        2. Give the Google Sheets layout and formulas (months in columns B to M).
        3. Add a slow case where sales stay low all year. Show the closing cash for each month.
        4. Work out the burn rate and runway for: no sales, and the slow case after month 12.
        5. Suggest a warning rule and 3 ways to cut costs if it is hit.
        6. List costs I may have forgotten, such as taxes and loan repayments.</pre>
            <ul class="ai-try-checks">
              <li>Check two months by hand: sales minus ingredients minus fixed costs minus pay.</li>
              <li>Each month's opening cash equals the last month's closing cash.</li>
              <li>With the sample numbers, the plan should end month 12 near ₹8,57,406.</li>
              <li>Runway is cash divided by monthly burn, and it is shown for a bad case.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Profit on paper does not pay the rent: cash does. List every one-time and monthly cost, then build a 12-month cash flow sheet for the plan and for a slow case. Know your runway, and write your warning rule before you open, not in a panic later.
        </div>
      HTML
      starter_code: nil
    },
    10 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-biz">Small Business</div>
          <h1 class="lc-title">Business Structure and Registrations</h1>
        </div>
        <p class="lc-lead">Before you open, you must decide what kind of business you are in law, and which registrations you need. The choice affects your personal risk, your paperwork and how easily you can bring in partners or investors. In this lesson you will compare the main business structures in India. You will also learn the common registrations for a small business: FSSAI for food, Shops and Establishments, Udyam, GST and local licences. You will use AI to build a checklist, and then check every item with official sources and a professional.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="Five business structures from simple to complex: sole proprietor, partnership, LLP, One Person Company and private limited company. The first two leave owners personally liable. The last three are separate legal entities with limited liability, and need more paperwork. Below, five registrations Aman checks for Chai Chowk: FSSAI, Shops and Establishments, Udyam, GST and a local licence.">
            <defs><marker id="sb10a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="20" y="20" text-anchor="start" font-size="12" fill="#9b99b8">Business structures in India, from simple to complex</text>
              <rect x="20" y="32" width="136" height="58" rx="8" fill="#27274e" stroke="#10b981"/>
              <text x="88" y="56" font-weight="700">Sole proprietor</text><text x="88" y="76" font-size="11" fill="#9b99b8">1 owner</text>
              <rect x="166" y="32" width="136" height="58" rx="8" fill="#27274e" stroke="#10b981"/>
              <text x="234" y="56" font-weight="700">Partnership</text><text x="234" y="76" font-size="11" fill="#9b99b8">2 or more partners</text>
              <rect x="312" y="32" width="136" height="58" rx="8" fill="#27274e" stroke="#3b82f6"/>
              <text x="380" y="56" font-weight="700">LLP</text><text x="380" y="76" font-size="11" fill="#9b99b8">2 or more partners</text>
              <rect x="458" y="32" width="136" height="58" rx="8" fill="#27274e" stroke="#3b82f6"/>
              <text x="526" y="56" font-weight="700">One Person Co.</text><text x="526" y="76" font-size="11" fill="#9b99b8">1 owner</text>
              <rect x="604" y="32" width="136" height="58" rx="8" fill="#27274e" stroke="#8b5cf6"/>
              <text x="672" y="56" font-weight="700">Private limited</text><text x="672" y="76" font-size="11" fill="#9b99b8">2 or more owners</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none">
                <path d="M20,100 L20,106 L302,106 L302,100"/>
                <path d="M312,100 L312,106 L740,106 L740,100"/>
              </g>
              <text x="161" y="124" font-size="11" fill="#fcd34d">owners are personally liable</text>
              <text x="526" y="124" font-size="11" fill="#93c5fd">separate legal entity, limited liability</text>
              <line x1="20" y1="142" x2="736" y2="142" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#sb10a)"/>
              <text x="380" y="160" font-size="11" fill="#9b99b8">more paperwork, cost and yearly filings</text>
              <text x="20" y="194" text-anchor="start" font-size="12" fill="#9b99b8">Registrations Aman checks for Chai Chowk</text>
              <g font-size="12">
                <rect x="20" y="204" width="136" height="58" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
                <text x="88" y="228" font-weight="700">FSSAI</text><text x="88" y="248" font-size="11" fill="#9b99b8">food safety</text>
                <rect x="166" y="204" width="136" height="58" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
                <text x="234" y="228" font-weight="700">Shops and Est.</text><text x="234" y="248" font-size="11" fill="#9b99b8">state labour rules</text>
                <rect x="312" y="204" width="136" height="58" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
                <text x="380" y="228" font-weight="700">Udyam</text><text x="380" y="248" font-size="11" fill="#9b99b8">MSME, free online</text>
                <rect x="458" y="204" width="136" height="58" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
                <text x="526" y="228" font-weight="700">GST</text><text x="526" y="248" font-size="11" fill="#9b99b8">above the limit</text>
                <rect x="604" y="204" width="136" height="58" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
                <text x="672" y="228" font-weight="700">Local licence</text><text x="672" y="248" font-size="11" fill="#9b99b8">municipal body</text>
              </g>
              <text x="380" y="288" font-size="11" fill="#9b99b8">Not legal or tax advice. Rules change, so check official websites and ask a CA.</text>
            </g>
          </svg>
          <figcaption>Start with the simplest structure that fits your risk and plans. Then list every registration, and confirm each one with an official source.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The main business structures</h3>
          <p><strong>Limited liability</strong> means that if the business owes money, the owners usually risk only what they put in, not their house or personal savings. A <strong>separate legal entity</strong> is a business that exists in law on its own, apart from its owners.</p>
          <table class="lc-table">
            <thead><tr><th>Structure</th><th>Owners</th><th>Personal risk</th><th>Paperwork</th><th>Often suits</th></tr></thead>
            <tbody>
              <tr><td><strong>Sole proprietorship</strong></td><td>1</td><td>The owner is personally liable for all business debts</td><td>Lowest. No separate registration for the structure itself. The business is shown through other registrations and a bank account.</td><td>One person starting small</td></tr>
              <tr><td><strong>Partnership firm</strong></td><td>2 or more</td><td>Partners are personally liable</td><td>A written partnership deed. Registering the firm with the state is optional, but an unregistered firm has fewer legal rights.</td><td>Friends or family starting together</td></tr>
              <tr><td><strong>LLP</strong> (limited liability partnership)</td><td>At least 2 partners</td><td>Limited liability</td><td>Registered with the Ministry of Corporate Affairs (MCA), with yearly filings</td><td>Partners who want protection with fewer rules than a company</td></tr>
              <tr><td><strong>One Person Company</strong> (OPC)</td><td>1</td><td>Limited liability</td><td>A company registered with the MCA, with company filings</td><td>One owner who wants a company structure</td></tr>
              <tr><td><strong>Private limited company</strong></td><td>At least 2 shareholders and 2 directors</td><td>Limited liability</td><td>The most: MCA registration, board meetings, audits and yearly filings</td><td>Businesses that plan to raise money from investors</td></tr>
            </tbody>
          </table>
          <p>Limited liability does not protect you from everything. Banks often ask owners to sign a personal guarantee for a loan. Tax also differs between structures.</p>
          <p><strong>Aman's example (not advice):</strong> Aman plans to start as a sole proprietor, because he is the only owner and the setup is simple. He writes down whether the family's ₹2,00,000 is a loan or a gift. He will think again with his CA if he opens a second outlet or takes on a partner or investor.</p>
        </div>
        <div class="lc-card">
          <h3>Common registrations for a small business</h3>
          <table class="lc-table">
            <thead><tr><th>Registration</th><th>What it is</th><th>Where to check</th><th>Aman's note</th></tr></thead>
            <tbody>
              <tr><td><strong>FSSAI</strong> (Food Safety and Standards Authority of India)</td><td>Every food business needs FSSAI registration or a licence. Small businesses need basic registration. Larger ones need a state or central licence, based on turnover and type.</td><td>The FSSAI FoSCoS portal</td><td>FSSAI updates its turnover limits from time to time. Aman checks the current limits on the portal before he applies.</td></tr>
              <tr><td><strong>Shops and Establishments</strong></td><td>A state law on working hours, holidays and staff in shops. Many states need shops to register.</td><td>The state labour department website</td><td>Rules differ by state. Some states exempt very small shops. Aman checks Madhya Pradesh's rules, since he will have 2 helpers.</td></tr>
              <tr><td><strong>Udyam registration</strong></td><td>Registration as an MSME (micro, small or medium enterprise). It is free and online, and uses Aadhaar.</td><td>The official Udyam registration website</td><td>Optional, but it can help with some government schemes and bank loans. Aman avoids websites that charge a fee for it.</td></tr>
              <tr><td><strong>GST</strong> (Goods and Services Tax)</td><td>Tax registration. It is needed when yearly turnover crosses a threshold, and in some other cases.</td><td>The official GST portal, and a CA</td><td>The threshold is usually lower for services than for goods. Selling cooked food is usually treated as a service. His base case (about ₹32 lakh a year) is likely above the limit, so he asks a CA before opening.</td></tr>
              <tr><td><strong>Local licences</strong></td><td>For example, a trade licence, signboard permission, or fire safety rules for gas cylinders</td><td>The local municipal body</td><td>Aman asks the municipal office what a food kiosk on private land needs.</td></tr>
            </tbody>
          </table>
          <p>Also open a bank account and UPI (Unified Payments Interface) account for the business, not mixed with personal money. Search the business name on the IP India trademark search before you print signboards. If you collect customers' phone numbers, for example for sign-ups, follow India's data protection law (the DPDP Act).</p>
          <p>This lesson is general education. It is not legal or tax advice. Rules, fees and limits change. Confirm each registration on the official website and with a chartered accountant (CA) or lawyer.</p>
        </div>
        <div class="lc-card">
          <h3>Using AI for a checklist, safely</h3>
          <pre><code>Weak prompt:
        What licences do I need for a tea stall? Tell me the fees.

        Better prompt:
        I am opening a tea-and-snacks kiosk in Madhya Pradesh, on
        rented private land, with 2 staff. Make a checklist of registrations
        a business like mine may need. For each: what it is, which office or
        official website to check, the documents usually asked for, and
        "must confirm" if rules may have changed. Do not state fees or
        turnover limits as facts. End with 8 questions to ask my CA.</code></pre>
          <p>AI is good at listing things to check and explaining terms in plain words. But its knowledge may be out of date, and rules differ by state and city. It may state an old limit or fee with confidence. Use the AI checklist as a starting point. Open each official website yourself, and note the date you checked in your source list.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: an out-of-date answer</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Aman asks">My kiosk will sell about ₹32 lakh a year. Which FSSAI registration do I need?</li>
              <li data-kind="answer" data-label="AI replies">Basic FSSAI registration is only for turnover up to ₹12 lakh. With ₹32 lakh, you need a State Licence.</li>
              <li data-kind="thought" data-label="Aman thinks">The answer sounds sure, but it has no date and no source. Food rules are updated from time to time.</li>
              <li data-kind="tool" data-label="FoSCoS portal">Aman opens the official FSSAI portal and reads the latest orders on registration and licensing.</li>
              <li data-kind="result" data-label="Portal shows">A newer FSSAI order has changed the turnover limits. The ₹12 lakh figure the AI gave is out of date.</li>
              <li data-kind="warn" data-label="Mistake caught">The AI gave the old rule. Aman nearly applied for the wrong licence, and could have paid higher fees for no reason.</li>
              <li data-kind="check" data-label="Aman checks">He confirms the right category with his CA. He saves the order link and the date in his source list.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to compare business structures for your situation and build a registration checklist, with a column for what you must confirm.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a helpful guide for first-time founders in India. You are not a lawyer or CA, and you say so. You never state fees, tax rates or turnover limits as facts.

        My business: [a tea-and-snacks kiosk on rented private land]
        State: [Madhya Pradesh]
        Owners: [just me, with ₹2,00,000 from family]
        Staff: [2 helpers]. Expected yearly sales: [about ₹32 lakh]
        Future plans: [a second outlet in year 2]

        1. Compare sole proprietorship, partnership, LLP, One Person Company and private limited for me: personal risk, paperwork, and when each makes sense. Use a table.
        2. List the registrations a business like mine may need (for example FSSAI, Shops and Establishments, Udyam, GST, local licences). For each: what it is, where to check officially, and "must confirm".
        3. Put the registrations in a sensible order, before and after opening.
        4. Write 8 questions to ask a CA, including how the family money should be recorded.

        Use simple English.</pre>
            <ul class="ai-try-checks">
              <li>The answer says it is not legal or tax advice.</li>
              <li>No fees, tax rates or turnover limits are stated as facts.</li>
              <li>Each registration points to an official website or office for you to check.</li>
              <li>Check each item yourself and note the date in your source list.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Choose the simplest structure that fits your risk and your plans, and review it as the business grows. Make a list of every registration you may need, then confirm each one on the official website and with a CA. AI can build the checklist, but it can be out of date, so the final answers must come from official sources.
        </div>
      HTML
      starter_code: nil
    },
    11 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-biz">Small Business</div>
          <h1 class="lc-title">Writing a Simple Business Plan</h1>
        </div>
        <p class="lc-lead">A business plan puts your idea, your evidence and your numbers in one place. It helps you think clearly. It also helps a bank, a partner or your family understand your idea quickly. In this lesson you will build a plan in three steps: a one-page plan, a lean canvas and then a full plan outline. You will see how AI can draft each part fast, and why every fact in it must come from you.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 356" role="img" aria-label="A lean canvas for Chai Chowk with nine boxes. Problem: queue in short breaks, hygiene worries, nowhere to sit. Solution: quick counter, clean visible cooking, a few stools. Key metrics: cups per open day, repeat visits, gross profit a day. Unique value proposition: clean, quick chai and snacks for a short break, from 15 rupees. Unfair advantage: four years of café work and 27 prepaid buyers, but easy to copy. Channels: walk-past traffic, flyers and Instagram, coaching centres. Customer segments: coaching students, college students, staff and nearby adults, bulk office trays. Cost structure: 78,000 rupees fixed a month and 4,75,000 rupees to start. Revenue streams: tea and snacks, gross margin about 62 percent, break-even about 134 cups a day.">
            <defs><marker id="sb11a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="11" fill="#e2e0f0" text-anchor="start">
              <text x="10" y="20" font-size="12" fill="#9b99b8">Chai Chowk lean canvas (made-up data; E = estimate)</text>
              <rect x="10" y="32" width="144" height="212" rx="8" fill="#1f1f44" stroke="#ec4899"/>
              <text x="20" y="52" font-size="12" font-weight="700" fill="#f9a8d4">Problem</text>
              <text x="20" y="74">Queue in short</text>
              <text x="20" y="89">breaks: 7 of 15</text>
              <text x="20" y="109">Hygiene worries: 5</text>
              <text x="20" y="129">Nowhere to sit: 4</text>
              <text x="20" y="157" fill="#9b99b8">Today they use:</text>
              <text x="20" y="172" fill="#9b99b8">tea carts, canteen,</text>
              <text x="20" y="187" fill="#9b99b8">a flask from home</text>
              <rect x="159" y="32" width="144" height="104" rx="8" fill="#1f1f44" stroke="#10b981"/>
              <text x="169" y="52" font-size="12" font-weight="700" fill="#6ee7b7">Solution</text>
              <text x="169" y="74">Quick counter</text>
              <text x="169" y="94">Clean, visible prep</text>
              <text x="169" y="114">A few stools</text>
              <rect x="159" y="140" width="144" height="104" rx="8" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="169" y="160" font-size="12" font-weight="700" fill="#67e8f9">Key metrics</text>
              <text x="169" y="182">Cups per open day</text>
              <text x="169" y="202">Repeat visits</text>
              <text x="169" y="222">Gross profit a day</text>
              <rect x="308" y="32" width="144" height="212" rx="8" fill="#27274e" stroke="#f59e0b"/>
              <text x="318" y="52" font-size="12" font-weight="700" fill="#fcd34d">Value proposition</text>
              <text x="318" y="78">Clean, quick chai</text>
              <text x="318" y="94">and snacks for a</text>
              <text x="318" y="110">short class break,</text>
              <text x="318" y="126">with a place to sit,</text>
              <text x="318" y="142">from ₹15 a cup.</text>
              <rect x="457" y="32" width="144" height="104" rx="8" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="467" y="52" font-size="12" font-weight="700" fill="#c4b5fd">Unfair advantage</text>
              <text x="467" y="74">4 years café work</text>
              <text x="467" y="94">27 prepaid buyers</text>
              <text x="467" y="114" fill="#9b99b8">Weak: easy to copy</text>
              <rect x="457" y="140" width="144" height="104" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="467" y="160" font-size="12" font-weight="700" fill="#93c5fd">Channels</text>
              <text x="467" y="182">Walk-past traffic</text>
              <text x="467" y="202">Flyers, Instagram</text>
              <text x="467" y="222">Coaching centres</text>
              <rect x="606" y="32" width="144" height="212" rx="8" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="616" y="52" font-size="12" font-weight="700" fill="#c4b5fd">Customers</text>
              <text x="616" y="74">Coaching students</text>
              <text x="616" y="94">College students</text>
              <text x="616" y="114">Staff and nearby</text>
              <text x="616" y="129">adults</text>
              <text x="616" y="149">Bulk: office trays</text>
              <text x="616" y="177" fill="#9b99b8">Early buyers:</text>
              <text x="616" y="192" fill="#9b99b8">27 card holders</text>
              <rect x="10" y="250" width="367" height="96" rx="8" fill="#1f1f44" stroke="#ec4899"/>
              <text x="20" y="270" font-size="12" font-weight="700" fill="#f9a8d4">Cost structure</text>
              <text x="20" y="292">Fixed: ₹78,000 a month (E), rent and staff biggest</text>
              <text x="20" y="312">Start: ₹4,75,000 one-time (E)</text>
              <text x="20" y="332" fill="#9b99b8">Aman's own pay is not included yet</text>
              <rect x="383" y="250" width="367" height="96" rx="8" fill="#1f1f44" stroke="#10b981"/>
              <text x="393" y="270" font-size="12" font-weight="700" fill="#6ee7b7">Revenue streams</text>
              <text x="393" y="292">Tea ₹15 and ₹25, other items ₹20 to ₹60</text>
              <text x="393" y="312">Gross margin about 62% (E)</text>
              <text x="393" y="332">Break-even: about 134 cups a day (E)</text>
            </g>
          </svg>
          <figcaption>A lean canvas fits the whole business on one page. Every line comes from Aman's own tests, quotes or estimates, not from AI.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Step 1: the one-page plan</h3>
          <p>Start small. A <strong>one-page plan</strong> answers the ten questions that anyone will ask first. If you cannot fill one page, a 20-page plan will not help. Here is Aman's one-page plan, built from his own work so far.</p>
          <table class="lc-table">
            <thead><tr><th>Question</th><th>Chai Chowk (made-up data)</th></tr></thead>
            <tbody>
              <tr><td><strong>What problem?</strong></td><td>Students have short class breaks and long tea queues. Many worry about hygiene. There is nowhere to sit.</td></tr>
              <tr><td><strong>For whom?</strong></td><td>Coaching and college students in Madhya Pradesh. Also staff, parents and nearby workers. Some offices want staff tea trays.</td></tr>
              <tr><td><strong>What do we sell?</strong></td><td>Six items: kadak chai ₹15, masala chai ₹25, cold coffee ₹60, poha ₹30, samosa ₹20, bun maska ₹30.</td></tr>
              <tr><td><strong>What is the proof?</strong></td><td>15 interviews. 212 sign-ups. 27 prepaid cards (₹6,750). A 7-day pilot sold 758 cups, and 45.3% of stamp-card customers came back 3+ times.</td></tr>
              <tr><td><strong>Who else is there?</strong></td><td>Sharma Tea Stall (cheap, no seats), Garam Glass (clean, long queue), Kettle Street Café (costly, far).</td></tr>
              <tr><td><strong>How do we make money?</strong></td><td>Gross margin about 62% (estimate). Fixed costs about ₹78,000 a month. Break-even is about 134 cups a day.</td></tr>
              <tr><td><strong>How much to start?</strong></td><td>About ₹4,75,000 (estimate). Aman has ₹8,00,000 of his own and family money. About ₹3,25,000 stays as a cash buffer.</td></tr>
              <tr><td><strong>What if sales are low?</strong></td><td>Low case (140 cups a day): about ₹468 a month. Base case (280 cups): about ₹86,190. High case (400 cups): about ₹1,62,500. All before Aman's pay and tax.</td></tr>
              <tr><td><strong>Who runs it?</strong></td><td>Aman, with 4 years at a busy café in Madhya Pradesh. Two helpers.</td></tr>
              <tr><td><strong>What happens next?</strong></td><td>Register, sign the rent agreement, build the kiosk, open, then track cups and repeat visits every week.</td></tr>
            </tbody>
          </table>
          <p>Notice the honest parts. Each result says what was measured. The low case is shown, not hidden. The line "before Aman's pay" tells the reader that Aman takes no salary yet. If he paid himself ₹20,000 a month, break-even would rise to about 168 cups a day.</p>
        </div>
        <div class="lc-card">
          <h3>Step 2: the lean canvas</h3>
          <p>A <strong>lean canvas</strong> is a one-page template with nine boxes. Ash Maurya made it for new businesses, based on the older Business Model Canvas. It shows how the parts of your business fit together. The diagram above shows Aman's canvas.</p>
          <ul class="lc-list">
            <li><strong>Fill it in this order:</strong> customers, problem, value proposition, solution, channels, revenue, costs, key metrics, unfair advantage.</li>
            <li><strong>Value proposition</strong> means the main reason a customer picks you. Write it in the customer's words.</li>
            <li><strong>Key metrics</strong> are the few numbers that show if the business works. For a kiosk, cups per open day matters most.</li>
            <li><strong>Unfair advantage</strong> is something others cannot easily copy. Be honest. Aman's advantage is weak, and his canvas says so.</li>
          </ul>
          <p>Write short notes, not sentences. Use a pencil or a spreadsheet, because the canvas will change after every test.</p>
        </div>
        <div class="lc-card">
          <h3>Step 3: the full plan outline</h3>
          <p>A bank may ask for a longer plan. Most full plans use the same sections. AI can suggest headings and draft the words. The facts inside must come from your own work.</p>
          <table class="lc-table">
            <thead><tr><th>Section</th><th>What goes in it</th><th>AI can help with</th><th>You must add</th></tr></thead>
            <tbody>
              <tr><td>1. Summary</td><td>The one-page plan in short paragraphs</td><td>Clear, short wording</td><td>Write it last, from the real sections</td></tr>
              <tr><td>2. Problem and customers</td><td>Segments, interview findings</td><td>Summarising your notes</td><td>Real counts, such as 7 of 15</td></tr>
              <tr><td>3. Product and prices</td><td>Menu, prices, cost per item</td><td>Layout of the menu table</td><td>Supplier quotes and your own recipes</td></tr>
              <tr><td>4. Evidence</td><td>Tests, pass lines, results, limits</td><td>Wording the limits clearly</td><td>Only results you really measured</td></tr>
              <tr><td>5. Market and competitors</td><td>Your bottom-up estimate, a comparison table</td><td>Structure and what to compare</td><td>Your counts, visits and sources</td></tr>
              <tr><td>6. Operations</td><td>Location, hours, staff, suppliers</td><td>A checklist of tasks</td><td>Rent quote, staff plan, suppliers</td></tr>
              <tr><td>7. Legal and registrations</td><td>Business structure, licences</td><td>A list of questions for your CA</td><td>Answers from a CA and official websites</td></tr>
              <tr><td>8. Money</td><td>Startup costs, unit economics, three scenarios, cash flow</td><td>Spreadsheet formulas</td><td>Every input and every checked total</td></tr>
              <tr><td>9. Risks</td><td>What could go wrong, and your plan for each</td><td>Listing risks you missed</td><td>Your honest judgement</td></tr>
              <tr><td>10. Next steps</td><td>Launch plan and milestones</td><td>A dated task list</td><td>Dates you can really keep</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Ask AI to draft, not to invent</h3>
          <pre><code>Weak prompt:
        Write a business plan for a tea kiosk in Madhya Pradesh.</code></pre>
          <pre><code>Better prompt:
        You are a small business adviser. Draft section 4 (Evidence) of my plan.
        Use ONLY these facts. Do not add any number I did not give you.
        - 15 interviews: 7 of 15 named the queue in short breaks as a problem.
        - 212 sign-ups on a free "notify me" form.
        - 27 prepaid cards sold at ₹250 each = ₹6,750.
        - 7-day evening pilot: 758 cups, weekday average 122.2 cups a day.
        - 29 of 64 stamp-card customers came back 3+ times (45.3%).
        Add a short "Limits of this evidence" paragraph.
        Write under 200 words in plain English.</code></pre>
          <p>The weak prompt makes AI guess everything. You will get a smooth plan full of made-up figures. The better prompt gives only real facts and bans new numbers.</p>
          <p>After AI drafts a section, check three things. Does every number match your sheet? Is every claim marked as a fact, your data or an estimate? Did AI add praise, such as "huge demand", that you cannot prove? Delete anything you cannot back up.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: which box of the canvas?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Aman has notes from his tests. Put each note into the right box of his lean canvas.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="problem" data-label="Problem"></div>
              <div data-sorter-target="bucket" data-bucket="customers" data-label="Customer segments"></div>
              <div data-sorter-target="bucket" data-bucket="uvp" data-label="Value proposition"></div>
              <div data-sorter-target="bucket" data-bucket="costs" data-label="Cost structure"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="problem" data-why="This is a pain the customer has today. It belongs in Problem.">7 of 15 people said the queue in a short break is a problem</li>
              <li data-bucket="customers" data-why="This is a group of people who may buy. It is a customer segment.">Coaching centre office staff who need 8 to 10 cups at 11 am</li>
              <li data-bucket="costs" data-why="Rent is a fixed monthly cost. It goes in Cost structure.">Kiosk rent quote of ₹30,000 a month</li>
              <li data-bucket="uvp" data-why="This is the main reason a customer would pick Chai Chowk. It is the value proposition.">Clean, quick chai for a short class break, from ₹15</li>
              <li data-bucket="problem" data-why="Hygiene worries are a pain with the options people use now.">Worries about hygiene at roadside tea carts</li>
              <li data-bucket="costs" data-why="Staff pay is a fixed monthly cost.">Two helpers at ₹14,000 a month each</li>
              <li data-bucket="customers" data-why="Parents who wait outside coaching centres are another group who may buy.">Parents waiting outside coaching centres</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Give AI your real facts and ask for a lean canvas and a one-page plan. It must mark every line and list what is still missing.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a careful small business adviser in India. Use ONLY the facts I give you. Never invent numbers, customers or results.

        My business: [Chai Chowk, a tea-and-snacks kiosk near coaching centres in Madhya Pradesh]
        My facts:
        - Customers: [coaching and college students, staff, parents; some offices want staff tea trays]
        - Problems found: [queue in short breaks 7 of 15; hygiene 5 of 15; nowhere to sit 4 of 15]
        - Prices: [chai ₹15 and ₹25, cold coffee ₹60, snacks ₹20 to ₹30]
        - Tests: [27 prepaid cards = ₹6,750; 7-day pilot sold 758 cups]
        - Money: [start-up ₹4,75,000 (estimate); fixed costs ₹78,000 a month (estimate); I have ₹8,00,000]

        1. Make a lean canvas as a table with the 9 boxes. Use short notes.
        2. Write a one-page plan with 10 short headings.
        3. Tag each line [fact], [my data], [estimate] or [MISSING].
        4. List the 5 most important missing facts and where I could find each one.
        Use simple English.</pre>
            <ul class="ai-try-checks">
              <li>Every number in the answer is one you gave. Nothing new was added.</li>
              <li>Lines without a source are tagged [MISSING] or [estimate], not stated as facts.</li>
              <li>The unfair advantage box is honest, even if it is weak.</li>
              <li>The missing-facts list points to real places: quotes, your own counts, a CA or official websites.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Build your plan from small to big: one page, then a lean canvas, then a full outline. Let AI shape the words and the layout. The facts, the counts and the honest limits must come from your own tests and sources.
        </div>
      HTML
      starter_code: nil
    },
    12 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-biz">Small Business</div>
          <h1 class="lc-title">Building a Pitch Deck</h1>
        </div>
        <p class="lc-lead">A pitch deck is a short set of slides that explains your business to a bank, an investor or a partner. Most good decks have 10 to 12 slides and tell one clear story. In this lesson you will learn what goes on each slide and how to show your traction honestly. You will also see how AI can help with the structure and the wording, while every number stays true.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="Twelve slides in three rows, grouped by colour into four parts of the story. Why it matters: title, problem, customers, solution. Proof: traction, market, competitors. Money: business model and financials. Us and the ask: team, plan and the ask.">
            <defs><marker id="sb12a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="start">
              <text x="20" y="20" font-size="12" fill="#9b99b8">Chai Chowk pitch deck: 12 slides, one story (made-up data; E = estimate)</text>
              <rect x="20" y="34" width="170" height="62" rx="6" fill="#27274e" stroke="#ec4899"/>
              <text x="32" y="58" font-weight="700">1. Title</text><text x="32" y="80" font-size="11" fill="#9b99b8">Chai Chowk, one line</text>
              <rect x="203" y="34" width="170" height="62" rx="6" fill="#27274e" stroke="#ec4899"/>
              <text x="215" y="58" font-weight="700">2. Problem</text><text x="215" y="80" font-size="11" fill="#9b99b8">Queue in breaks: 7 of 15</text>
              <rect x="386" y="34" width="170" height="62" rx="6" fill="#27274e" stroke="#ec4899"/>
              <text x="398" y="58" font-weight="700">3. Customers</text><text x="398" y="80" font-size="11" fill="#9b99b8">Students, staff, trays</text>
              <rect x="569" y="34" width="170" height="62" rx="6" fill="#27274e" stroke="#ec4899"/>
              <text x="581" y="58" font-weight="700">4. Solution</text><text x="581" y="80" font-size="11" fill="#9b99b8">Clean kiosk, 6 items</text>
              <rect x="20" y="110" width="170" height="62" rx="6" fill="#27274e" stroke="#f59e0b"/>
              <text x="32" y="134" font-weight="700">5. Traction</text><text x="32" y="156" font-size="11" fill="#9b99b8">27 cards, 758 cups</text>
              <rect x="203" y="110" width="170" height="62" rx="6" fill="#27274e" stroke="#f59e0b"/>
              <text x="215" y="134" font-weight="700">6. Market</text><text x="215" y="156" font-size="11" fill="#9b99b8">Bottom-up, own counts</text>
              <rect x="386" y="110" width="170" height="62" rx="6" fill="#27274e" stroke="#f59e0b"/>
              <text x="398" y="134" font-weight="700">7. Competitors</text><text x="398" y="156" font-size="11" fill="#9b99b8">3 nearby, compared</text>
              <rect x="569" y="110" width="170" height="62" rx="6" fill="#27274e" stroke="#10b981"/>
              <text x="581" y="134" font-weight="700">8. Business model</text><text x="581" y="156" font-size="11" fill="#9b99b8">Prices, margin 62% (E)</text>
              <rect x="20" y="186" width="170" height="62" rx="6" fill="#27274e" stroke="#10b981"/>
              <text x="32" y="210" font-weight="700">9. Financials</text><text x="32" y="232" font-size="11" fill="#9b99b8">140 / 280 / 400 cups (E)</text>
              <rect x="203" y="186" width="170" height="62" rx="6" fill="#27274e" stroke="#3b82f6"/>
              <text x="215" y="210" font-weight="700">10. Team</text><text x="215" y="232" font-size="11" fill="#9b99b8">Aman: 4 years in a café</text>
              <rect x="386" y="186" width="170" height="62" rx="6" fill="#27274e" stroke="#3b82f6"/>
              <text x="398" y="210" font-weight="700">11. Plan</text><text x="398" y="232" font-size="11" fill="#9b99b8">First 90 days, milestones</text>
              <rect x="569" y="186" width="170" height="62" rx="6" fill="#27274e" stroke="#3b82f6"/>
              <text x="581" y="210" font-weight="700">12. The ask</text><text x="581" y="232" font-size="11" fill="#9b99b8">How much, for what</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#sb12a)">
                <line x1="191" y1="65" x2="200" y2="65"/><line x1="374" y1="65" x2="383" y2="65"/><line x1="557" y1="65" x2="566" y2="65"/>
                <line x1="191" y1="141" x2="200" y2="141"/><line x1="374" y1="141" x2="383" y2="141"/><line x1="557" y1="141" x2="566" y2="141"/>
                <line x1="191" y1="217" x2="200" y2="217"/><line x1="374" y1="217" x2="383" y2="217"/><line x1="557" y1="217" x2="566" y2="217"/>
              </g>
              <g font-size="11">
                <rect x="20" y="268" width="12" height="12" rx="2" fill="#ec4899"/><text x="38" y="278">Why it matters</text>
                <rect x="200" y="268" width="12" height="12" rx="2" fill="#f59e0b"/><text x="218" y="278">Proof</text>
                <rect x="380" y="268" width="12" height="12" rx="2" fill="#10b981"/><text x="398" y="278">Money</text>
                <rect x="560" y="268" width="12" height="12" rx="2" fill="#3b82f6"/><text x="578" y="278">Us and the ask</text>
              </g>
            </g>
          </svg>
          <figcaption>Twelve slides, four parts: why it matters, proof, money, and who you are and what you ask for.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The 12 slides for Chai Chowk</h3>
          <p>Each slide has one message. Write that message as a full sentence at the top of the slide. This sentence is called the <strong>headline</strong>. A reader who only reads the headlines should still understand your story.</p>
          <table class="lc-table">
            <thead><tr><th>Slide</th><th>Aman's headline</th><th>What is on the slide</th></tr></thead>
            <tbody>
              <tr><td>1. Title</td><td>Chai Chowk: clean, quick chai for a short class break</td><td>Name, location in Madhya Pradesh, Aman's phone and email</td></tr>
              <tr><td>2. Problem</td><td>Students get short breaks, and the tea queue uses them up</td><td>7 of 15 named the queue, 5 hygiene, 4 no seating</td></tr>
              <tr><td>3. Customers</td><td>Coaching students buy tea almost every day</td><td>The 7 coaching students we interviewed visit about 5.7 times a week. Offices want staff trays.</td></tr>
              <tr><td>4. Solution</td><td>A clean kiosk with a quick counter, stools and six items from ₹15</td><td>Menu, opening hours, a sketch of the kiosk</td></tr>
              <tr><td>5. Traction</td><td>In one test week, people paid, bought and came back</td><td>The real test results (see below)</td></tr>
              <tr><td>6. Market</td><td>We start with one street that we counted ourselves</td><td>640 people walked past the spot in one hour (own count), and the bottom-up estimate with its working</td></tr>
              <tr><td>7. Competitors</td><td>Carts are cheap but have no seats. The café is too costly for daily use.</td><td>A table of Sharma Tea Stall, Garam Glass and Kettle Street Café</td></tr>
              <tr><td>8. Business model</td><td>About 62% of each sale is gross profit (estimate)</td><td>Prices, cost per item, gross margin</td></tr>
              <tr><td>9. Financials</td><td>We break even at about 134 cups a day</td><td>Low, base and high cases, before Aman's pay and tax. Startup cost and cash buffer.</td></tr>
              <tr><td>10. Team</td><td>Aman ran the counter, stock and shifts at a busy café for 4 years</td><td>Aman, two helpers, a CA for accounts and registrations</td></tr>
              <tr><td>11. Plan</td><td>Open, reach 100 regulars, then break even</td><td>The 90-day launch plan and the numbers Aman will track weekly</td></tr>
              <tr><td>12. The ask</td><td>We ask for a ₹2,00,000 loan for the kiosk build</td><td>Amount, what it pays for, how it is repaid, what happens without it</td></tr>
            </tbody>
          </table>
          <p><strong>About the ask:</strong> Aman has ₹8,00,000 of his own, and opening costs about ₹4,75,000, so he can open without a loan. But ₹2,00,000 of his savings is family money that he wants to keep safe as a reserve. So he will ask his bank about a small business loan of ₹2,00,000 (a made-up example). His plan still works if the bank says no. A deck for an angel investor would ask for something different. For example, money for a second outlet in return for a share of the business.</p>
        </div>
        <div class="lc-card">
          <h3>Honest traction</h3>
          <p><strong>Traction</strong> means real proof that people want what you sell: money paid, things bought, people coming back. It is the slide readers trust most, so it is also the easiest one to spoil. Compare these two versions.</p>
          <table class="lc-table">
            <thead><tr><th>Hype (do not use)</th><th>Honest (use this)</th></tr></thead>
            <tbody>
              <tr><td>"212 customers already waiting!"</td><td>212 people signed up on a free "notify me" form. We cannot tell how many came to the stall.</td></tr>
              <tr><td>"Proven demand: ₹22,280 in one week"</td><td>A 7-day evening pilot sold 758 cups of tea (₹22,280 in sales). One spot, one week, August, no rent paid.</td></tr>
              <tr><td>"Customers love us"</td><td>27 people paid ₹250 each for a prepaid launch card, ₹6,750 in total, with a full refund promise.</td></tr>
              <tr><td>"Loyal customers from day one"</td><td>29 of 64 stamp-card customers came back 3 or more times in the week (45.3%).</td></tr>
              <tr><td>"The tea market is huge and growing"</td><td>Remove it. There is no source.</td></tr>
            </tbody>
          </table>
          <p>Aman also shows his pass lines, which he wrote down before the tests. All three were met. This builds more trust than big words. Never add fake reviews, fake logos of "partners" or numbers you did not measure. In a loan application, false claims can have serious legal results.</p>
        </div>
        <div class="lc-card">
          <h3>Visuals and how AI helps</h3>
          <ul class="lc-list">
            <li><strong>One message, one visual.</strong> Slide 5 can show a simple bar chart of cups sold each day of the pilot. Slide 9 can show a small table of the three cases.</li>
            <li><strong>Big numbers, few words.</strong> Aim for under 30 words on a slide. Put details in your speaker notes.</li>
            <li><strong>Real photos.</strong> Use a real photo of the pilot stall, with permission from anyone in it. Label any sketch as a design idea.</li>
            <li><strong>Tools.</strong> You can build slides in Canva, Google Slides or PowerPoint. Many of these now have AI features. Check each tool's current help pages.</li>
          </ul>
          <pre><code>Weak prompt:
        Make an amazing pitch deck for my tea kiosk that will impress investors.

        Better prompt:
        Act as a pitch coach. Write a 12-slide outline for a bank loan officer.
        For each slide give: a one-sentence headline, up to 4 bullet points,
        one visual idea, and a 40-word speaker note.
        Use ONLY the facts below. Where a fact is missing, write [ADD FACT].
        Then list any headline that claims more than my evidence shows.
        Facts: [paste your one-page plan here]</code></pre>
          <p>The weak prompt asks AI to "impress". It will add excitement and invented figures. The better prompt asks for structure, bans new numbers and asks AI to check your claims.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: put the story in order</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Here are seven of Aman's slides. Put them in the order that tells the clearest story.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Title: Chai Chowk, clean, quick chai for a short class break</li>
              <li data-order="2">Problem: students get short breaks, and the tea queue uses them up</li>
              <li data-order="3">Customers: coaching students buy tea almost every day</li>
              <li data-order="4">Solution: a clean kiosk with stools and six items from ₹15</li>
              <li data-order="5">Traction: 27 prepaid cards and 758 cups sold in a 7-day pilot</li>
              <li data-order="6">Financials: break-even at about 134 cups a day (estimate)</li>
              <li data-order="7">The ask: a ₹2,00,000 loan for the kiosk build</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to build a slide-by-slide outline from your facts, then to check your traction slide for hype.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a pitch coach for small businesses in India. You are strict about honesty.

        Audience: [a bank loan officer]
        My business: [Chai Chowk, a tea-and-snacks kiosk near coaching centres in Madhya Pradesh]
        My real results: [15 interviews, 7 of 15 named the queue; 212 form sign-ups; 27 prepaid cards = ₹6,750; 7-day evening pilot sold 758 cups; 29 of 64 came back 3+ times]
        My numbers (estimates): [start-up ₹4,75,000; fixed costs ₹78,000 a month; break-even about 134 cups a day]
        My ask: [a ₹2,00,000 loan for the kiosk build]

        1. Write an outline of 10 to 12 slides. For each: a one-sentence headline, up to 4 bullets and one visual idea.
        2. Use ONLY my facts. Write [ADD FACT] where something is missing.
        3. Mark estimates with (estimate).
        4. Then review the traction slide. List any wording that sounds stronger than the evidence, and suggest a more honest line.
        Use simple English.</pre>
            <ul class="ai-try-checks">
              <li>The deck has 10 to 12 slides and each headline is a full sentence.</li>
              <li>No new numbers, customers, partners or reviews were added.</li>
              <li>Sign-ups are not called customers, and estimates are marked.</li>
              <li>The ask says how much, what it pays for and how it will be repaid.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A strong deck tells one simple story in 10 to 12 slides, with one headline sentence per slide. Your traction slide wins trust only if every number is real and its limits are clear. AI can shape the slides, but it must never add results you did not measure.
        </div>
      HTML
      starter_code: nil
    },
    13 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-biz">Small Business</div>
          <h1 class="lc-title">Pitching and Answering Questions</h1>
        </div>
        <p class="lc-lead">Slides do not get you a loan or an investment. The conversation does. In this lesson you will write a one-minute pitch. You will learn the questions a bank and an angel investor usually ask. You will also practise a simple way to answer them. You will also use AI to play a tough loan officer, so you can practise before the real meeting.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 270" role="img" aria-label="Top: a one-minute pitch shown as a 60-second bar. Hook from 0 to 10 seconds, problem 10 to 20, solution 20 to 30, proof 30 to 42, money 42 to 52 and the ask 52 to 60. Bottom: a four-step answer pattern. Give a short answer, add a number, say its source, then say the limit and your plan.">
            <defs><marker id="sb13a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="20" y="20" text-anchor="start" font-size="12" fill="#9b99b8">The one-minute pitch (60 seconds)</text>
              <rect x="20" y="32" width="120" height="58" fill="#27274e" stroke="#8b5cf6"/>
              <text x="80" y="56" font-weight="700">Hook</text><text x="80" y="76" font-size="11" fill="#9b99b8">0 to 10 s</text>
              <rect x="140" y="32" width="120" height="58" fill="#27274e" stroke="#ec4899"/>
              <text x="200" y="56" font-weight="700">Problem</text><text x="200" y="76" font-size="11" fill="#9b99b8">10 to 20 s</text>
              <rect x="260" y="32" width="120" height="58" fill="#27274e" stroke="#10b981"/>
              <text x="320" y="56" font-weight="700">Solution</text><text x="320" y="76" font-size="11" fill="#9b99b8">20 to 30 s</text>
              <rect x="380" y="32" width="144" height="58" fill="#27274e" stroke="#f59e0b"/>
              <text x="452" y="56" font-weight="700">Proof</text><text x="452" y="76" font-size="11" fill="#9b99b8">30 to 42 s</text>
              <rect x="524" y="32" width="120" height="58" fill="#27274e" stroke="#22d3ee"/>
              <text x="584" y="56" font-weight="700">Money</text><text x="584" y="76" font-size="11" fill="#9b99b8">42 to 52 s</text>
              <rect x="644" y="32" width="96" height="58" fill="#27274e" stroke="#3b82f6"/>
              <text x="692" y="56" font-weight="700">Ask</text><text x="692" y="76" font-size="11" fill="#9b99b8">52 to 60 s</text>
              <text x="380" y="116" font-size="11" fill="#9b99b8">Proof gets the most time: it is what the listener trusts.</text>
              <text x="20" y="150" text-anchor="start" font-size="12" fill="#9b99b8">Answering any question: four short parts</text>
              <rect x="20" y="164" width="160" height="70" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="100" y="192" font-weight="700">1. Answer</text><text x="100" y="214" font-size="11" fill="#9b99b8">yes, no, or the point</text>
              <rect x="207" y="164" width="160" height="70" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="287" y="192" font-weight="700">2. Number</text><text x="287" y="214" font-size="11" fill="#9b99b8">one clear figure</text>
              <rect x="394" y="164" width="160" height="70" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="474" y="192" font-weight="700">3. Source</text><text x="474" y="214" font-size="11" fill="#9b99b8">test, quote or estimate</text>
              <rect x="581" y="164" width="160" height="70" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="661" y="192" font-weight="700">4. Limit</text><text x="661" y="214" font-size="11" fill="#9b99b8">and your plan for it</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#sb13a)">
                <line x1="182" y1="199" x2="204" y2="199"/>
                <line x1="369" y1="199" x2="391" y2="199"/>
                <line x1="556" y1="199" x2="578" y2="199"/>
              </g>
              <text x="380" y="258" font-size="11" fill="#9b99b8">Do not know? Say so, and promise the answer by a date.</text>
            </g>
          </svg>
          <figcaption>A pitch is a short story with proof in the middle. Each answer is short, has a number and admits its limits.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The one-minute pitch</h3>
          <p>A <strong>one-minute pitch</strong> is a short spoken summary of your business. You use it at the start of a meeting, at events, or when someone asks, "So what do you do?" Say it out loud. At a normal speed, one minute is about 130 to 150 words. Here is Aman's pitch for a bank meeting.</p>
          <pre><code>(Hook) I'm Aman. For four years I ran the counter at a busy café
        in Madhya Pradesh.
        (Problem) Coaching students near my spot get short breaks. In my
        interviews, 7 of 15 said the tea queue uses up their break. Many
        worry about hygiene, and there is nowhere to sit.
        (Solution) Chai Chowk is a clean kiosk with a quick counter, a few
        stools and six items from ₹15.
        (Proof) In August I ran a 7-day evening stall. It sold 758 cups.
        On weekdays it averaged 122 cups in five hours. 45% of stamp-card
        customers came back three or more times. 27 people prepaid ₹250
        each for a launch card.
        (Money) The kiosk costs about ₹4,75,000 to start. By my estimate,
        I break even at about 134 cups a day.
        (Ask) I am asking for a ₹2,00,000 loan for the kiosk build. I will
        still keep ₹3,25,000 of my savings as a cash buffer.</code></pre>
          <p>Every number in it is real or marked as an estimate. Aman practises it until he can say it without notes. He changes the ask for each listener.</p>
        </div>
        <div class="lc-card">
          <h3>What a bank and an angel investor ask</h3>
          <p>A <strong>bank</strong> lends money and wants it back with interest. It asks, "Can you repay?" An <strong>angel investor</strong> is a person who puts their own money into a young business for a share of it. They ask, "How big can this grow?" Prepare for both kinds of questions.</p>
          <table class="lc-table">
            <thead><tr><th>Question</th><th>Who asks</th><th>Aman's answer (made-up data)</th></tr></thead>
            <tbody>
              <tr><td>How much of your own money goes in?</td><td>Bank</td><td>₹2,75,000 of my savings goes into the ₹4,75,000 startup. I keep ₹3,25,000 as a buffer. My family's ₹2,00,000 stays as a reserve.</td></tr>
              <tr><td>How will you repay in a bad month?</td><td>Bank</td><td>My low case (140 cups a day) is about break-even. Then the repayment comes from my buffer. I will change the plan long before the buffer runs low.</td></tr>
              <tr><td>Why borrow if you have the money?</td><td>Bank</td><td>To keep a bigger safety net in the first months. If you say no, I will still open with my own money.</td></tr>
              <tr><td>What if the rent goes up?</td><td>Bank or angel</td><td>If rent rises by ₹5,000 a month, break-even rises from about 134 to about 142 cups a day (estimate).</td></tr>
              <tr><td>What do you pay yourself?</td><td>Angel</td><td>Nothing at first. At ₹20,000 a month, break-even rises to about 168 cups a day (estimate).</td></tr>
              <tr><td>Why can't someone copy you?</td><td>Angel</td><td>They can. My edge is the spot, my café experience, the regulars and the office tray orders. I must earn loyalty daily.</td></tr>
              <tr><td>How big can this grow?</td><td>Angel</td><td>First, one kiosk must work. A second outlet is my year-2 goal, only if the first kiosk passes break-even.</td></tr>
            </tbody>
          </table>
          <p>A bank will also ask for documents. These often include KYC papers, bank statements, your registrations, your plan and your cash flow sheet. Ask your bank for its exact list.</p>
        </div>
        <div class="lc-card">
          <h3>Check the repayment maths before the meeting</h3>
          <p>An <strong>EMI</strong> (equated monthly instalment) is the fixed amount you repay the bank every month. It covers interest and part of the loan. You can work it out in Excel or Google Sheets with the <code>PMT</code> function. The rate below is made up for practice. Your bank will quote its own rate, fees and terms.</p>
          <pre><code>Loan: ₹2,00,000   Example rate: 12% a year (made up)   Term: 36 months
        EMI:   =PMT(12%/12, 36, -200000)        gives about ₹6,643 a month
        Total repaid: =36*6642.86               gives about ₹2,39,143
        Interest paid: =239143-200000           gives about ₹39,143</code></pre>
          <table class="lc-table">
            <thead><tr><th>Case (estimates)</th><th>Monthly profit before Aman's pay and tax</th><th>After the example EMI</th></tr></thead>
            <tbody>
              <tr><td>Low: 140 cups a day</td><td>₹468</td><td>about −₹6,175 (paid from the buffer)</td></tr>
              <tr><td>Base: 280 cups a day</td><td>₹86,190</td><td>about ₹79,547 (EMI covered about 13 times)</td></tr>
              <tr><td>High: 400 cups a day</td><td>₹1,62,500</td><td>about ₹1,55,857</td></tr>
            </tbody>
          </table>
          <p>Say the low case first. A bank trusts a founder who shows the bad month. This is general education, not financial advice. Before you sign a loan, read every term and ask a CA to check the numbers.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: a role-play with a tough loan officer</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Aman asks">Play a strict bank loan officer. Here are my facts. Ask me one hard question at a time. After each answer, score it from 1 to 5.</li>
              <li data-kind="answer" data-label="AI asks">Your low case earns about ₹468 a month. How will you pay an EMI of about ₹6,643 in a month like that?</li>
              <li data-kind="user" data-label="Aman's first try">Don't worry, sir. We will easily sell 400 cups a day.</li>
              <li data-kind="warn" data-label="Mistake caught">400 cups is the high case, not evidence. The pilot sold about 122 cups on a weekday in five evening hours. The officer will not trust this answer.</li>
              <li data-kind="user" data-label="Aman's second try">In the low case, the EMI comes from my ₹3,25,000 buffer. In the base case, profit covers the EMI about 13 times. If sales stay under break-even for four weeks, I will change the hours or the menu.</li>
              <li data-kind="answer" data-label="AI feedback">Score 4 out of 5. Clear and honest. Say where your break-even of 113 cups comes from.</li>
              <li data-kind="check" data-label="Aman checks">His sheet says about 134 cups, not 113. AI can mix up numbers, even in a role-play. Aman corrects it and asks for the next question.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Practise with AI before the real meeting. It will list the hardest questions first, then question you one at a time.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a [strict bank loan officer in India] meeting me about my business. You are fair but tough. Never invent facts about my business.

        My facts:
        - Business: [Chai Chowk, a tea-and-snacks kiosk near coaching centres in Madhya Pradesh]
        - Evidence: [7-day evening pilot sold 758 cups; weekday average 122 cups; 27 prepaid cards = ₹6,750; 45% came back 3+ times]
        - Money (estimates): [start-up ₹4,75,000; fixed costs ₹78,000 a month; break-even about 134 cups a day; low case ₹468 a month]
        - My ask: [a ₹2,00,000 loan for the kiosk build]

        Part 1: List the 8 hardest questions you would ask me, hardest first. For each, write a model answer in 4 short parts: answer, one number, its source, the limit. Use only my facts. Write [I need this fact] if something is missing.
        Part 2: Then ask me question 1 and wait for my reply. After each reply, give a score from 1 to 5 and one tip. If I use a number that is not in my facts, ask where it came from.</pre>
            <ul class="ai-try-checks">
              <li>The questions include the bad case, repayment and your own money, not only easy ones.</li>
              <li>The model answers use only your numbers. Check each one against your sheet.</li>
              <li>Missing facts are flagged, not filled in with guesses.</li>
              <li>The feedback points out hype, such as quoting the high case as if it were certain.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A good pitch is short, and proof takes the most time. A good answer is short too: answer, number, source and limit. Practise with AI playing a tough listener, but check every number it says against your own sheet.
        </div>
      HTML
      starter_code: nil
    },
    14 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-biz">Small Business</div>
          <h1 class="lc-title">Your Launch Plan</h1>
        </div>
        <p class="lc-lead">Opening day is not the finish line. The first 90 days decide if your business survives. In this lesson you will build a 90-day launch plan in three phases. You will plan where your first 100 regular customers will come from. You will choose a few simple, cheap ways to market. You will also set up a weekly numbers sheet. You will also see how AI helps you plan, and where its ideas need a reality check.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="A 90-day timeline in three phases. Days 1 to 30, open and serve: serve the 27 card holders, message the 212 sign-ups, free samples. Days 31 to 60, grow regulars: office tea trays, stamp cards, reach 134 cups a day. Days 61 to 90, fix and decide: 100 regulars, change one thing at a time, decide with the numbers. Below, a weekly loop: count, review, change one thing.">
            <defs><marker id="sb14a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="start">
              <text x="20" y="20" font-size="12" fill="#9b99b8">Chai Chowk: first 90 days (planned opening Mon 16 Nov 2026, made-up plan)</text>
              <rect x="20" y="34" width="228" height="150" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="34" y="58" font-weight="700" fill="#93c5fd">Days 1 to 30</text>
              <text x="34" y="78" font-weight="700">Open and serve</text>
              <text x="34" y="104" font-size="11">Serve the 27 card holders</text>
              <text x="34" y="124" font-size="11">Message the 212 sign-ups</text>
              <text x="34" y="144" font-size="11">Free samples, opening week</text>
              <text x="34" y="170" font-size="11" fill="#9b99b8">Goal: 30 regulars</text>
              <rect x="266" y="34" width="228" height="150" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="280" y="58" font-weight="700" fill="#fcd34d">Days 31 to 60</text>
              <text x="280" y="78" font-weight="700">Grow regulars</text>
              <text x="280" y="104" font-size="11">Office tea tray trials</text>
              <text x="280" y="124" font-size="11">Stamp cards for everyone</text>
              <text x="280" y="144" font-size="11">Ask for honest reviews</text>
              <text x="280" y="170" font-size="11" fill="#9b99b8">Goal: 134+ cups a day</text>
              <rect x="512" y="34" width="228" height="150" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="526" y="58" font-weight="700" fill="#6ee7b7">Days 61 to 90</text>
              <text x="526" y="78" font-weight="700">Fix and decide</text>
              <text x="526" y="104" font-size="11">Change one thing at a time</text>
              <text x="526" y="124" font-size="11">Drop items that do not sell</text>
              <text x="526" y="144" font-size="11">Review numbers with a CA</text>
              <text x="526" y="170" font-size="11" fill="#9b99b8">Goal: 100 regulars</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#sb14a)">
                <line x1="250" y1="109" x2="263" y2="109"/>
                <line x1="496" y1="109" x2="509" y2="109"/>
              </g>
              <text x="20" y="214" font-size="12" fill="#9b99b8">Every week, all 90 days:</text>
              <g text-anchor="middle">
                <rect x="190" y="226" width="150" height="50" rx="25" fill="#27274e" stroke="#22d3ee"/>
                <text x="265" y="256" font-weight="700">Count</text>
                <rect x="385" y="226" width="150" height="50" rx="25" fill="#27274e" stroke="#8b5cf6"/>
                <text x="460" y="256" font-weight="700">Review</text>
                <rect x="580" y="226" width="160" height="50" rx="25" fill="#27274e" stroke="#ec4899"/>
                <text x="660" y="256" font-weight="700">Change one thing</text>
              </g>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#sb14a)">
                <line x1="342" y1="251" x2="382" y2="251"/>
                <line x1="537" y1="251" x2="577" y2="251"/>
                <path d="M660,278 C660,296 265,296 265,281"/>
              </g>
              <text x="20" y="256" font-size="11" fill="#9b99b8">cups, profit, regulars</text>
            </g>
          </svg>
          <figcaption>Three phases, each with one clear goal, and the same weekly loop from day 1 to day 90.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Where the first 100 regulars come from</h3>
          <p>A kiosk may serve 100 people on its first day. That is not the hard part. The hard part is getting people to come back. So Aman's goal is <strong>100 regulars</strong> by day 90. He defines a regular as a stamp-card customer who comes 3 or more times in one week. This is the same test he used in the pilot.</p>
          <table class="lc-table">
            <thead><tr><th>Source</th><th>What Aman knows</th><th>What he will do</th></tr></thead>
            <tbody>
              <tr><td>Prepaid card holders</td><td>27 people, 540 prepaid cups (27 × 20)</td><td>Send each one a WhatsApp message on opening day. Their cards are valid for 3 months.</td></tr>
              <tr><td>Form sign-ups</td><td>212 people asked to be told when he opens</td><td>Send one "we are open" message, as the form promised. No other messages without consent.</td></tr>
              <tr><td>Pilot regulars</td><td>29 people came back 3+ times in the test week</td><td>Put up a poster at the old pilot spot, with the owner's permission</td></tr>
              <tr><td>Offices and coaching centres</td><td>2 centres ordered staff tea trays in the pilot</td><td>Visit 10 offices and centres. Offer a free first tray.</td></tr>
              <tr><td>People walking past</td><td>640 people passed in one hour, 5 pm to 6 pm (own count)</td><td>Banner, free sample kadak chai in the opening week, stamp cards</td></tr>
            </tbody>
          </table>
          <p>These groups overlap. A card holder may also have filled in the form. So do not add them up as if they were different people. Also remember: the 540 prepaid cups bring no new cash. Aman was paid ₹6,750 before opening, and each cup still costs about ₹5.50 to make. That is about ₹2,970 in total.</p>
        </div>
        <div class="lc-card">
          <h3>Simple, cheap marketing</h3>
          <p>Aman has ₹20,000 for launch marketing, plus ₹3,000 a month in his fixed costs. He spends it on things that reach people within walking distance.</p>
          <table class="lc-table">
            <thead><tr><th>Launch marketing (made-up plan)</th><th>₹</th></tr></thead>
            <tbody>
              <tr><td>Flyers and posters for coaching lanes (with permission)</td><td>4,000</td></tr>
              <tr><td>Free sample kadak chai, opening week (1,000 cups × ₹5.50)</td><td>5,500</td></tr>
              <tr><td>Free first staff tray for 10 offices (10 × 10 cups × ₹5.50)</td><td>550</td></tr>
              <tr><td>Stamp cards (printing)</td><td>1,500</td></tr>
              <tr><td>Banner and standee</td><td>3,000</td></tr>
              <tr><td>Instagram boosted posts</td><td>3,000</td></tr>
              <tr><td>Kept in reserve</td><td>2,450</td></tr>
              <tr><td><strong>Total</strong></td><td><strong>20,000</strong></td></tr>
            </tbody>
          </table>
          <ul class="lc-list">
            <li><strong>Free tools.</strong> A Google Business Profile puts the kiosk on Google Maps. The WhatsApp Business app lets you share a menu and take tray orders. Features change, so check each tool's current help pages.</li>
            <li><strong>Honest reviews only.</strong> Ask happy customers to leave a review. Never write fake reviews or pay for them.</li>
            <li><strong>Consent.</strong> Message only people who agreed to hear from you. Keep phone lists safe, and stop when someone asks. India's DPDP Act 2023 sets rules for personal data. This is not legal advice, so ask a lawyer or CA what applies to you.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>The weekly numbers sheet</h3>
          <p>Track a few numbers every week, not fifty. Aman's sheet has one row per week. Week 0 is his real pilot, kept for comparison. From week 1, he adds a row every Saturday night.</p>
          <table class="lc-table">
            <thead><tr><th>Column</th><th>What it shows</th><th>Formula (row 2)</th><th>Week 0: pilot</th></tr></thead>
            <tbody>
              <tr><td>B Open days</td><td>Days open this week</td><td>typed in</td><td>7</td></tr>
              <tr><td>C Tea cups</td><td>Kadak + masala chai sold</td><td>typed in</td><td>758</td></tr>
              <tr><td>D Cups per open day</td><td>The key metric</td><td><code>=C2/B2</code></td><td>108.3</td></tr>
              <tr><td>E Sales (₹)</td><td>All sales, from the billing app</td><td>typed in</td><td>22,280</td></tr>
              <tr><td>F Ingredient cost (₹)</td><td>Cost of what was sold</td><td>typed in</td><td>8,721</td></tr>
              <tr><td>G Gross profit (₹)</td><td>Sales minus ingredient cost</td><td><code>=E2-F2</code></td><td>13,559</td></tr>
              <tr><td>H Gross margin</td><td>Share of sales kept as gross profit</td><td><code>=G2/E2</code></td><td>60.9%</td></tr>
              <tr><td>I Gap to break-even (₹)</td><td>Gross profit minus ₹3,000 per open day</td><td><code>=G2-3000*B2</code></td><td>−7,441</td></tr>
              <tr><td>J Regulars</td><td>Stamp cards with 3+ visits this week</td><td>typed in</td><td>29</td></tr>
              <tr><td>K Office accounts</td><td>Offices that ordered trays this week</td><td>typed in</td><td>2</td></tr>
            </tbody>
          </table>
          <p>The pilot ran only 5 hours a day and paid no rent, so its gap is a rough guide only. Use conditional formatting to colour column D red when it is below 134. Then a bad week is easy to see.</p>
          <p><strong>Write your decision rules now, before you open.</strong> Here are two examples.</p>
          <ul class="lc-list">
            <li>If cups per open day stay below 134 for 4 weeks in a row, change one thing. Try new hours, a menu change or new marketing, and test it for 2 weeks.</li>
            <li>If gross margin falls below 58% for 2 weeks, check wastage and supplier prices.</li>
          </ul>
          <p>Rules like these stop you from waiting too long, or changing everything at once.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: set weekly targets with AI</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="tool" data-label="Spreadsheet">Aman types the pilot week into his new sheet as week 0.</li>
              <li data-kind="result" data-label="Sheet shows">108.3 cups per open day. Gross profit ₹13,559. Gross margin 60.9%. Sunday sold only 38 cups.</li>
              <li data-kind="user" data-label="Aman asks">Here is my week 0 row. Suggest weekly targets for cups per open day for my first 13 weeks.</li>
              <li data-kind="answer" data-label="AI replies">Aim for 400 cups a day by week 2. Go viral on Instagram to get there.</li>
              <li data-kind="warn" data-label="Mistake caught">400 cups is Aman's high case, not a starting point. "Go viral" is not a plan. Targets must start near what the pilot showed.</li>
              <li data-kind="user" data-label="Aman asks">Start at 140 cups a day, my low case. Reach 280, my base case, by week 13. Show the weekly steps. I open 6 days a week.</li>
              <li data-kind="answer" data-label="AI replies">A table from 140 to 280 cups a day, rising a little each week, with weekly cup totals.</li>
              <li data-kind="check" data-label="Aman checks">Week 13 shows 280 × 6 = 1,680 cups a week. That matches his base case. He adds his decision rules under the table.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI for a 90-day launch plan that fits your budget, with a weekly numbers sheet and decision rules.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a practical launch coach for small local businesses in India. Keep plans cheap, simple and honest.

        My business: [Chai Chowk, a tea-and-snacks kiosk near coaching centres in Madhya Pradesh, open Monday to Saturday]
        Opening date: [Monday 16 November 2026]
        People I can reach: [27 prepaid card holders, 212 form sign-ups who asked to be told when I open, 2 coaching centres that ordered staff trays]
        Launch marketing budget: [₹20,000]
        Key numbers (estimates): [break-even about 134 cups a day; low case 140; base case 280]

        1. Write a 90-day plan in 3 phases (days 1-30, 31-60, 61-90). Give each phase one goal and 4 to 6 dated tasks.
        2. Show where my first 100 regular customers will come from, and one action for each source.
        3. Split my budget into a table. The total must equal my budget.
        4. Design a weekly numbers sheet: 6 to 10 columns, with Google Sheets formulas.
        5. Write 3 decision rules, such as "if X for Y weeks, then Z".
        Rules: no fake reviews, message only people who agreed, and no invented statistics.</pre>
            <ul class="ai-try-checks">
              <li>The budget table adds up exactly to your budget.</li>
              <li>Targets start near your low case, not your high case.</li>
              <li>Messages go only to people who agreed to hear from you.</li>
              <li>The sheet formulas are correct. Test them on one row of real numbers.</li>
              <li>Decision rules have a number, a time limit and an action.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A launch plan is a 90-day test, not a party. Aim for regulars, not just first-day crowds. Track a few numbers every week. Set your decision rules before you open, so the numbers decide and not your hopes.
        </div>
      HTML
      starter_code: nil
    },
    15 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-biz">Small Business</div>
          <h1 class="lc-title">Capstone: A Business Plan and Pitch for Chai Chowk</h1>
        </div>
        <p class="lc-lead">In this capstone you will put the whole course together. You will take Aman's real work so far and turn it into one plan and pitch pack. It has an evidence summary, a one-page plan, a money summary, a 12-slide deck outline and a one-minute pitch with answers. AI will help you draft each part quickly. Your job is to check every fact, show the bad case honestly and make the final decisions. Then you can repeat the same steps for your own idea.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 330" role="img" aria-label="Six inputs on the left: idea check, customers, market, competitors, unit economics and cash flow. They pass through a fact check, where every number is tagged as a fact, own data or an estimate. The output is a one-page plan and a pitch deck outline, and then a one-minute pitch practised with AI.">
            <defs><marker id="sb15a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="start">
              <text x="20" y="20" font-size="12" fill="#9b99b8">From course work to a plan and pitch pack (Chai Chowk, made-up data)</text>
              <rect x="20" y="34" width="210" height="40" rx="8" fill="#27274e" stroke="#8b5cf6"/>
              <text x="32" y="52" font-weight="700" font-size="12">Idea check</text><text x="32" y="67" font-size="11" fill="#9b99b8">score 41 of 50</text>
              <rect x="20" y="82" width="210" height="40" rx="8" fill="#27274e" stroke="#8b5cf6"/>
              <text x="32" y="100" font-weight="700" font-size="12">Customers</text><text x="32" y="115" font-size="11" fill="#9b99b8">15 interviews, tests</text>
              <rect x="20" y="130" width="210" height="40" rx="8" fill="#27274e" stroke="#3b82f6"/>
              <text x="32" y="148" font-weight="700" font-size="12">Market</text><text x="32" y="163" font-size="11" fill="#9b99b8">own counts, bottom-up (E)</text>
              <rect x="20" y="178" width="210" height="40" rx="8" fill="#27274e" stroke="#3b82f6"/>
              <text x="32" y="196" font-weight="700" font-size="12">Competitors</text><text x="32" y="211" font-size="11" fill="#9b99b8">3 nearby, compared</text>
              <rect x="20" y="226" width="210" height="40" rx="8" fill="#27274e" stroke="#10b981"/>
              <text x="32" y="244" font-weight="700" font-size="12">Unit economics</text><text x="32" y="259" font-size="11" fill="#9b99b8">margin 62%, 134 cups (E)</text>
              <rect x="20" y="274" width="210" height="40" rx="8" fill="#27274e" stroke="#10b981"/>
              <text x="32" y="292" font-weight="700" font-size="12">Cash flow</text><text x="32" y="307" font-size="11" fill="#9b99b8">₹4,75,000 start, buffer (E)</text>
              <rect x="280" y="104" width="170" height="140" rx="12" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="365" y="134" text-anchor="middle" font-weight="700" fill="#fcd34d">Fact check</text>
              <text x="365" y="162" text-anchor="middle" font-size="12">fact</text>
              <text x="365" y="184" text-anchor="middle" font-size="12">my data</text>
              <text x="365" y="206" text-anchor="middle" font-size="12">estimate</text>
              <text x="365" y="230" text-anchor="middle" font-size="11" fill="#9b99b8">no tag, no use</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#sb15a)">
                <line x1="232" y1="54" x2="277" y2="120"/>
                <line x1="232" y1="102" x2="277" y2="140"/>
                <line x1="232" y1="150" x2="277" y2="160"/>
                <line x1="232" y1="198" x2="277" y2="186"/>
                <line x1="232" y1="246" x2="277" y2="208"/>
                <line x1="232" y1="294" x2="277" y2="228"/>
                <line x1="452" y1="150" x2="497" y2="100"/>
                <line x1="452" y1="198" x2="497" y2="228"/>
                <line x1="620" y1="136" x2="620" y2="190"/>
              </g>
              <rect x="500" y="64" width="240" height="70" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="620" y="92" text-anchor="middle" font-weight="700" fill="#6ee7b7">One-page plan</text>
              <text x="620" y="114" text-anchor="middle" font-size="11" fill="#9b99b8">and a lean canvas</text>
              <rect x="500" y="194" width="240" height="70" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="620" y="222" text-anchor="middle" font-weight="700" fill="#93c5fd">12-slide deck outline</text>
              <text x="620" y="244" text-anchor="middle" font-size="11" fill="#9b99b8">plus a one-minute pitch</text>
              <text x="620" y="292" text-anchor="middle" font-size="11" fill="#9b99b8">Then practise answers with AI</text>
              <text x="620" y="308" text-anchor="middle" font-size="11" fill="#9b99b8">and share with a mentor or CA</text>
            </g>
          </svg>
          <figcaption>Everything you built in this course flows through one fact check. Only tagged numbers reach the plan and the deck.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Your capstone brief</h3>
          <p>Build a plan and pitch pack for Chai Chowk. It has five parts. Keep each part short.</p>
          <table class="lc-table">
            <thead><tr><th>Part</th><th>What to produce</th><th>Length</th></tr></thead>
            <tbody>
              <tr><td>1. Evidence summary</td><td>Idea score, interviews, tests, pass lines, results and limits</td><td>Half a page</td></tr>
              <tr><td>2. One-page plan</td><td>The ten questions, plus a lean canvas</td><td>One page</td></tr>
              <tr><td>3. Money summary</td><td>Menu margins, fixed and startup costs, three cases, break-even, cash buffer</td><td>One table and five lines</td></tr>
              <tr><td>4. Deck outline</td><td>12 slides, each with a headline sentence and up to 4 bullets</td><td>One page</td></tr>
              <tr><td>5. Pitch and answers</td><td>A one-minute pitch and answers to 8 hard questions</td><td>One page</td></tr>
            </tbody>
          </table>
          <p>Rule for every part: tag each number as a <strong>fact</strong> (with a source), <strong>my data</strong> (from Aman's own tests) or an <strong>estimate</strong> (with the working). If a number has no tag, it does not go in.</p>
        </div>
        <div class="lc-card">
          <h3>The Chai Chowk fact pack</h3>
          <p>These are the facts from this course. All of them are made up for teaching. Use only these, and do not add new ones.</p>
          <table class="lc-table">
            <thead><tr><th>Area</th><th>Key facts</th><th>Type</th></tr></thead>
            <tbody>
              <tr><td>Founder and money</td><td>Aman, 27, 4 years at a busy café in Madhya Pradesh. ₹6,00,000 savings + ₹2,00,000 from family = ₹8,00,000.</td><td>Fact</td></tr>
              <tr><td>Idea check</td><td>Kiosk scored 41 of 50. Tiffin service 34, print shop 25. Weak point: profit potential only 3 of 5.</td><td>My data</td></tr>
              <tr><td>Customers</td><td>15 interviews. Queue in short breaks 7 of 15, hygiene 5, no seating 4, price 4. Average spend ₹27 a visit. Bulk staff orders were a surprise.</td><td>My data</td></tr>
              <tr><td>Tests</td><td>212 form sign-ups. 27 prepaid cards = ₹6,750. Pilot: 758 cups in 7 evenings, weekday average 122.2, 29 of 64 came back 3+ times (45.3%). All 3 pass lines met.</td><td>My data</td></tr>
              <tr><td>Market</td><td>640 people walked past the spot from 5 pm to 6 pm on one weekday. Use your bottom-up estimate from the market research lesson, with its working.</td><td>My data, estimate</td></tr>
              <tr><td>Competitors</td><td>Sharma Tea Stall (chai ₹10, no seats), Garam Glass (₹20 to ₹30, long queue), Kettle Street Café (masala chai ₹60, too costly for daily use).</td><td>My data</td></tr>
              <tr><td>Unit economics</td><td>Gross margin 45% (samosa) to 66% (masala chai), about 62% overall. Fixed costs ₹78,000 a month. Break-even about 134 cups a day.</td><td>Estimate</td></tr>
              <tr><td>Startup and cash</td><td>Startup ₹4,75,000. Cash buffer ₹3,25,000. Use your 12-month cash flow sheet from the cash flow lesson.</td><td>Estimate</td></tr>
              <tr><td>Three cases</td><td>140, 280 and 400 cups a day give about ₹468, ₹86,190 and ₹1,62,500 a month, before Aman's pay and tax.</td><td>Estimate</td></tr>
              <tr><td>Launch</td><td>Planned opening Monday 16 November 2026. Goal: 100 regulars by day 90. Optional ask: a ₹2,00,000 bank loan.</td><td>Plan</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Work in four rounds</h3>
          <ol class="lc-list">
            <li><strong>Draft.</strong> Paste the fact pack into your AI assistant. Ask for all five parts, using only these facts.</li>
            <li><strong>Check.</strong> Compare every number with the fact pack. Look for new numbers, lost labels such as "estimate", and hype words such as "huge", "proven" or "guaranteed".</li>
            <li><strong>Challenge.</strong> Ask AI to act as a doubtful bank officer and find the three weakest points. Fix the plan, or say the weakness openly.</li>
            <li><strong>Decide.</strong> You choose the final wording, the ask and the next steps. AI does not.</li>
          </ol>
          <p>Before you share the pack, make sure these five things are true:</p>
          <ul class="lc-list">
            <li>The low case is shown next to the base case.</li>
            <li>The plan says clearly that Aman takes no pay yet. It also says the profit figures are before tax.</li>
            <li>The limits of the pilot are stated: one week, one spot, evenings only, August, no rent.</li>
            <li>There are no customer names or phone numbers. Interview IDs such as C01 are used instead.</li>
            <li>Registrations, tax and the loan terms are marked "to confirm with a CA". This pack is general education, not financial, tax or legal advice.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Activity: keep, label or fix?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">AI drafted these lines for Aman's deck. Decide what to do with each one before he shares it.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="keep" data-label="Keep as it is"></div>
              <div data-sorter-target="bucket" data-bucket="label" data-label="Label as an estimate"></div>
              <div data-sorter-target="bucket" data-bucket="fix" data-label="Remove or rewrite"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="keep" data-why="This is Aman's own data. People paid real money, and the total is correct.">27 people paid ₹250 each for a prepaid launch card</li>
              <li data-bucket="keep" data-why="This is a real count from 15 interviews, and it shows the sample size.">7 of 15 people named the queue in short breaks as a problem</li>
              <li data-bucket="label" data-why="280 cups is the base case, not a result. Write: base case, 280 cups a day (estimate).">We will sell 280 cups a day</li>
              <li data-bucket="label" data-why="Break-even comes from estimated costs and an estimated sales mix. Mark it as an estimate.">Break-even is about 134 cups a day</li>
              <li data-bucket="fix" data-why="They signed up on a free form. They are sign-ups, not customers.">212 customers are waiting for us to open</li>
              <li data-bucket="fix" data-why="There is no source for this figure. Remove it.">The tea market in Madhya Pradesh grows 12% a year</li>
              <li data-bucket="fix" data-why="Chai Chowk has no reviews yet. Never add reviews that do not exist.">Customers love us: 5-star reviews</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to build the whole pack from the fact pack. Then check it with the list above. Afterwards, swap in your own business facts and run it again.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a strict, honest business plan coach in India. Use ONLY my facts. Never add numbers, reviews or partners.

        Facts: [Chai Chowk, tea-and-snacks kiosk, Madhya Pradesh. Founder Aman, 4 years in a café. Money ₹8,00,000. Interviews: queue 7 of 15, hygiene 5. Tests: 212 sign-ups, 27 prepaid cards = ₹6,750, pilot 758 cups in 7 evenings, 45% came back 3+ times. Estimates: start-up ₹4,75,000, fixed ₹78,000 a month, break-even 134 cups a day; low/base/high 140/280/400 cups = ₹468/₹86,190/₹1,62,500 a month before owner pay and tax. Ask: ₹2,00,000 bank loan.]

        Make:
        1. A one-page plan with 10 short headings.
        2. A 12-slide outline: headline sentence and 3 bullets each.
        3. A one-minute pitch of 130 to 150 words.
        4. The 5 hardest bank questions, with short answers: answer, number, source, limit.
        Tag each number (fact), (my data) or (estimate). Then list 3 weak points and 3 missing facts. Simple English.</pre>
            <ul class="ai-try-checks">
              <li>Every number matches the facts you gave. Nothing was added.</li>
              <li>The low case and "before owner pay and tax" appear, not only the base case.</li>
              <li>Sign-ups are not called customers, and the pilot's limits are stated.</li>
              <li>The pitch is about 130 to 150 words when you count it.</li>
              <li>The weak points are real, such as the weak unfair advantage.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A good plan and pitch are built from real evidence, honest estimates and a clear bad case. AI can turn your facts into a plan, a deck and a pitch in minutes. Checking every number, and making every final decision, is still your job as the founder.
        </div>
      HTML
      starter_code: nil
    }
  }.freeze
end

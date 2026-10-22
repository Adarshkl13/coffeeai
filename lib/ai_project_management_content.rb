module AiProjectManagementContent
  # Units (sidebar dividers): 1–4 Project Basics · 5–9 Planning · 10–14 Delivering and Closing · 15 Capstone
  # Widgets: sequence, sorter, stepper. No code editor: each Try It is an ai-try prompt box.
  LESSONS = {
    1 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mgmt">Management</div>
          <h1 class="lc-title">How Projects Work</h1>
        </div>
        <p class="lc-lead">A project is a piece of work with a clear goal, a start date and an end date. Every project has to balance four things: scope, time, cost and quality. In this lesson you will learn these four limits and the three common ways to run a project: waterfall, agile and hybrid. Through this course you will follow Daniel Kim, a project manager at Maple Street Health. Maple Street Health is a made-up chain of 6 clinics in New York. Daniel is leading a 5-month project to launch an online booking app for patients.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 320" role="img" aria-label="Left: a triangle with Scope at the top, Time at the bottom left and Cost at the bottom right. Quality sits in the middle. If you change one corner, the others move. Right: three ways to run a project. Waterfall goes Plan, Build, Test, Launch in order. Agile builds in short sprints, one after another. Hybrid plans up front, builds in sprints, then launches. Maple Street Health uses hybrid.">
            <defs><marker id="prj1a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <text x="190" y="26" font-weight="700" fill="#fcd34d" text-anchor="middle">Four project limits</text>
              <polygon points="190,70 70,250 310,250" fill="none" stroke="#f59e0b" stroke-width="2"/>
              <circle cx="190" cy="182" r="40" fill="#27274e" stroke="#10b981"/>
              <text x="190" y="187" text-anchor="middle" font-weight="700">Quality</text>
              <rect x="140" y="44" width="100" height="32" rx="8" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="190" y="65" text-anchor="middle" font-weight="700">Scope</text>
              <rect x="20" y="238" width="100" height="32" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="70" y="259" text-anchor="middle" font-weight="700">Time</text>
              <rect x="260" y="238" width="100" height="32" rx="8" fill="#1f1f44" stroke="#ec4899"/>
              <text x="310" y="259" text-anchor="middle" font-weight="700">Cost</text>
              <text x="190" y="302" font-size="12" fill="#9b99b8" text-anchor="middle">Change one corner and the others move.</text>
              <line x1="372" y1="40" x2="372" y2="300" stroke="#3a3a66"/>
              <text x="567" y="26" font-weight="700" fill="#fcd34d" text-anchor="middle">Three ways to run a project</text>
              <text x="400" y="58" font-weight="700">Waterfall</text>
              <text x="738" y="58" font-size="11" fill="#9b99b8" text-anchor="end">plan it all, then work in order</text>
              <g text-anchor="middle">
                <rect x="400" y="66" width="74" height="30" rx="6" fill="#27274e" stroke="#3b82f6"/><text x="437" y="86">Plan</text>
                <rect x="488" y="66" width="74" height="30" rx="6" fill="#27274e" stroke="#3b82f6"/><text x="525" y="86">Build</text>
                <rect x="576" y="66" width="74" height="30" rx="6" fill="#27274e" stroke="#3b82f6"/><text x="613" y="86">Test</text>
                <rect x="664" y="66" width="74" height="30" rx="6" fill="#27274e" stroke="#3b82f6"/><text x="701" y="86">Launch</text>
              </g>
              <text x="400" y="138" font-weight="700">Agile</text>
              <text x="738" y="138" font-size="11" fill="#9b99b8" text-anchor="end">small pieces in short sprints</text>
              <g text-anchor="middle">
                <rect x="400" y="146" width="74" height="30" rx="6" fill="#27274e" stroke="#10b981"/><text x="437" y="166">Sprint 1</text>
                <rect x="488" y="146" width="74" height="30" rx="6" fill="#27274e" stroke="#10b981"/><text x="525" y="166">Sprint 2</text>
                <rect x="576" y="146" width="74" height="30" rx="6" fill="#27274e" stroke="#10b981"/><text x="613" y="166">Sprint 3</text>
                <rect x="664" y="146" width="74" height="30" rx="6" fill="#27274e" stroke="#10b981"/><text x="701" y="166">Sprint 4</text>
              </g>
              <text x="400" y="218" font-weight="700">Hybrid</text>
              <text x="738" y="218" font-size="11" fill="#9b99b8" text-anchor="end">plan up front, build in sprints</text>
              <g text-anchor="middle">
                <rect x="400" y="226" width="74" height="30" rx="6" fill="#27274e" stroke="#3b82f6"/><text x="437" y="246">Plan</text>
                <rect x="488" y="226" width="162" height="30" rx="6" fill="#27274e" stroke="#10b981"/><text x="569" y="246">Build in sprints</text>
                <rect x="664" y="226" width="74" height="30" rx="6" fill="#27274e" stroke="#3b82f6"/><text x="701" y="246">Launch</text>
              </g>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#prj1a)">
                <line x1="475" y1="81" x2="486" y2="81"/>
                <line x1="563" y1="81" x2="574" y2="81"/>
                <line x1="651" y1="81" x2="662" y2="81"/>
                <line x1="475" y1="161" x2="486" y2="161"/>
                <line x1="563" y1="161" x2="574" y2="161"/>
                <line x1="651" y1="161" x2="662" y2="161"/>
                <line x1="475" y1="241" x2="486" y2="241"/>
                <line x1="651" y1="241" x2="662" y2="241"/>
              </g>
              <text x="567" y="292" font-size="12" fill="#9b99b8" text-anchor="middle">Maple Street Health uses hybrid.</text>
            </g>
          </svg>
          <figcaption>Every project balances scope, time, cost and quality. You can run the work as waterfall, agile or a mix of both (hybrid).</figcaption>
        </figure>
        <div class="lc-card">
          <h3>What a project is</h3>
          <p>A <strong>project</strong> is temporary work that makes something new. It has a goal, a start date, an end date and a team. Normal daily work, such as answering patient calls, is called <strong>operations</strong> (or "business as usual"). Operations never really end.</p>
          <p>This course uses three made-up organisations:</p>
          <table class="lc-table">
            <thead><tr><th>Organisation (made up)</th><th>Person</th><th>Example project</th></tr></thead>
            <tbody>
              <tr><td>Maple Street Health, 6 clinics in New York</td><td>Daniel Kim, project manager</td><td>An online booking app, from Mon 1 Feb to Mon 28 Jun 2027</td></tr>
              <tr><td>Bluefern Digital, a 40-person digital agency in London</td><td>Hannah Price, team lead of 8 people</td><td>A new website for a client</td></tr>
              <tr><td>Northbridge Logistics, a London logistics company</td><td>James Okafor, operations manager</td><td>New handheld scanners in two warehouses</td></tr>
            </tbody>
          </table>
          <p>Today, Maple Street Health patients can only book by phone or at the desk. The clinics handle about 9,000 appointments a month. The average phone hold time is 7 minutes. Daniel's project should let patients book, change and cancel online at any time.</p>
        </div>
        <div class="lc-card">
          <h3>The four limits: scope, time, cost and quality</h3>
          <p>Every project has four limits. They are linked. If you change one, at least one other must move.</p>
          <table class="lc-table">
            <thead><tr><th>Limit</th><th>Plain meaning</th><th>Maple Street Health (made up)</th></tr></thead>
            <tbody>
              <tr><td><strong>Scope</strong></td><td>What the project will deliver, and what it will not</td><td>Booking app, reminders, staff admin screen, training. Not payments or video visits.</td></tr>
              <tr><td><strong>Time</strong></td><td>The dates for the work and the end date</td><td>103 working days, from Mon 1 Feb to Mon 28 Jun 2027</td></tr>
              <tr><td><strong>Cost</strong></td><td>The money the project may spend</td><td>$286,000 approved, including a $26,000 contingency (money kept for surprises)</td></tr>
              <tr><td><strong>Quality</strong></td><td>How well the result must work</td><td>Patient data kept safe. Bookings appear correctly in the clinic system.</td></tr>
            </tbody>
          </table>
          <p><strong>Example:</strong> Dr Lauren Mitchell is the project <strong>sponsor</strong> (the senior person who pays for the project and makes the big decisions). She asks: "Can we launch three weeks earlier?" Daniel cannot just say yes. He gives her three honest options:</p>
          <ul class="lc-list">
            <li><strong>Cut scope:</strong> launch without the staff admin screen at first.</li>
            <li><strong>Add cost:</strong> pay the app agency for an extra developer.</li>
            <li><strong>Risk quality:</strong> test for less time. Daniel advises against this, because the app handles patient data.</li>
          </ul>
          <p>The sponsor decides. Daniel's job is to make the trade-off clear.</p>
        </div>
        <div class="lc-card">
          <h3>Waterfall, agile and hybrid</h3>
          <table class="lc-table">
            <thead><tr><th>Approach</th><th>How it works</th><th>Good when</th><th>Watch out for</th></tr></thead>
            <tbody>
              <tr><td><strong>Waterfall</strong></td><td>You plan everything first. Then you do each phase in order: plan, build, test, launch.</td><td>The result is clear and fixed, such as an office move or new scanners in a warehouse.</td><td>You see the result late. Changes are costly.</td></tr>
              <tr><td><strong>Agile</strong></td><td>You deliver small pieces in short cycles called <strong>sprints</strong> (often 1 to 4 weeks). You get feedback after each one.</td><td>The needs are not fully known, such as a new website or app.</td><td>Harder to give a fixed end date and cost.</td></tr>
              <tr><td><strong>Hybrid</strong></td><td>You plan the fixed parts up front. You build the uncertain parts in sprints.</td><td>Some parts have fixed dates (contracts, training, launch). Other parts need feedback (screens).</td><td>Needs clear rules about which parts can change.</td></tr>
            </tbody>
          </table>
          <p>Daniel uses <strong>hybrid</strong>. The contract, privacy review, training and launch are planned in a fixed order. The app agency, Hudson App Studio, builds the app in 2-week sprints. Front-desk staff test early versions and give feedback.</p>
        </div>
        <div class="lc-card">
          <h3>Ask AI to help you choose an approach</h3>
          <p>An AI assistant such as Claude can explain the options for your project. It only knows what you tell it.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Should my project be agile or waterfall?</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>I am a project manager at a chain of 6 clinics in New York.
        Project: a patient booking app (web and mobile), built by an outside agency.
        Fixed: launch at all 6 clinics before July, budget $286,000,
        staff training must happen before launch.
        Not fixed: the exact screens and features patients need.
        Compare waterfall, agile and hybrid for this project in a table.
        Say which limit (scope, time, cost or quality) looks most fixed.
        List 3 questions I should ask my sponsor before I choose.</code></pre>
          <p>The AI gives you options and questions. You still decide, with your sponsor and your team. Check that the answer fits your organisation's real rules and contracts.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: which approach fits?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each made-up project into the approach that fits it best.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="waterfall" data-label="Waterfall"></div>
              <div data-sorter-target="bucket" data-bucket="agile" data-label="Agile"></div>
              <div data-sorter-target="bucket" data-bucket="hybrid" data-label="Hybrid"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="waterfall" data-why="The result is clear and fixed. Each step must happen in order: order, install, test, train.">Northbridge Logistics replaces handheld scanners in two warehouses. The model is already chosen.</li>
              <li data-bucket="agile" data-why="The client's needs will change as they see pages. Short cycles with feedback suit this.">Bluefern Digital builds a new website. The client is not sure yet what pages it needs.</li>
              <li data-bucket="hybrid" data-why="The contract, training and launch dates are fixed, but the screens need patient feedback.">Maple Street Health launches a booking app with a fixed launch date and screens that need testing with patients.</li>
              <li data-bucket="waterfall" data-why="A move has fixed steps and a fixed date. Little will change once planned.">Bluefern Digital moves to a new London office on a set date.</li>
              <li data-bucket="agile" data-why="The team learns what works each week and changes the next piece of work.">Hannah Price's team improves a client's mobile app every two weeks, based on user feedback.</li>
              <li data-bucket="hybrid" data-why="The go-live date is fixed, but the reports are improved in short cycles with users.">Northbridge Logistics must switch to a new delivery system by a fixed date, and builds its reports in sprints with drivers.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Describe a real or practice project. Ask AI to map its four limits and suggest an approach. Then decide for yourself.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an experienced project manager. Use simple English.

        My project: [launch an online booking app for a chain of 6 clinics in New York].
        Team: [a project manager, an IT lead, a product owner and an outside app agency].
        Dates: [start Mon 1 Feb 2027, must launch before July 2027].
        Budget: [$286,000 including a 10% contingency].
        What is fixed: [launch date, training before launch, patient data must stay private].
        What is unclear: [which screens and features patients really need].

        Please:
        1. Make a table of the four limits (scope, time, cost, quality). For each, say what it means for my project and how fixed it looks.
        2. Recommend waterfall, agile or hybrid. Give 3 short reasons.
        3. Name one trade-off I may face, and give 2 options for it.
        4. List 4 questions I should ask my sponsor.

        Do not invent facts about my organisation. If you need a detail, ask or mark it as an assumption.</pre>
            <ul class="ai-try-checks">
              <li>All four limits appear, with your real facts, not invented ones.</li>
              <li>The recommended approach fits what is fixed and what is unclear.</li>
              <li>The trade-off options are honest (for example, not "test less" for a data-heavy app).</li>
              <li>Assumptions are clearly marked.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Scope, time, cost and quality are linked. When someone asks for more, faster or cheaper, show the trade-off in plain words and let the sponsor decide. Choose waterfall, agile or hybrid by asking which parts of your project are fixed and which are still unclear.
        </div>
      HTML
      starter_code: nil
    },
    2 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mgmt">Management</div>
          <h1 class="lc-title">Where AI Helps Project Managers and Its Limits</h1>
        </div>
        <p class="lc-lead">AI can save a project manager hours every week. It can draft charters, task lists, status reports and emails in minutes. But it can also invent dates, miss important tasks, add numbers wrongly and leak private data. In this lesson you will learn where AI helps, the four main risks, and a simple way to check every AI draft. You will see what happened when Daniel Kim at Maple Street Health asked AI for a project plan.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="A four-step flow: your facts such as goals, dates and team go into an AI draft such as a plan, report or email. Then you check dates, tasks and maths, and then you decide, share and own it. Below, a green panel lists what AI is good at: first drafts of charters and plans, task lists and checklists, risk ideas you may have missed, status reports and summaries, and clear emails for each audience. A pink panel lists what to watch out for: made-up dates and facts, missing tasks, wrong totals and maths, confidential data pasted in, and sounding sure when wrong.">
            <defs><marker id="prj2a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <g text-anchor="middle">
                <rect x="20" y="30" width="160" height="56" rx="8" fill="#27274e" stroke="#3b82f6"/>
                <text x="100" y="53" font-weight="700">Your facts</text>
                <text x="100" y="73" font-size="11" fill="#9b99b8">goals, dates, team</text>
                <rect x="206" y="30" width="160" height="56" rx="8" fill="#27274e" stroke="#8b5cf6"/>
                <text x="286" y="53" font-weight="700">AI draft</text>
                <text x="286" y="73" font-size="11" fill="#9b99b8">plan, report, email</text>
                <rect x="392" y="30" width="160" height="56" rx="8" fill="#27274e" stroke="#f59e0b"/>
                <text x="472" y="53" font-weight="700">You check</text>
                <text x="472" y="73" font-size="11" fill="#9b99b8">dates, tasks, maths</text>
                <rect x="578" y="30" width="160" height="56" rx="8" fill="#27274e" stroke="#10b981"/>
                <text x="658" y="53" font-weight="700">You decide</text>
                <text x="658" y="73" font-size="11" fill="#9b99b8">share and own it</text>
              </g>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#prj2a)">
                <line x1="181" y1="58" x2="203" y2="58"/>
                <line x1="367" y1="58" x2="389" y2="58"/>
                <line x1="553" y1="58" x2="575" y2="58"/>
              </g>
              <rect x="20" y="110" width="350" height="175" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="40" y="138" font-weight="700" fill="#6ee7b7">AI is good at</text>
              <text x="40" y="166">First drafts of charters and plans</text>
              <text x="40" y="190">Task lists and checklists</text>
              <text x="40" y="214">Risk ideas you may have missed</text>
              <text x="40" y="238">Status reports and summaries</text>
              <text x="40" y="262">Clear emails for each audience</text>
              <rect x="390" y="110" width="350" height="175" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="410" y="138" font-weight="700" fill="#f9a8d4">Watch out for</text>
              <text x="410" y="166">Made-up dates and facts</text>
              <text x="410" y="190">Missing tasks</text>
              <text x="410" y="214">Wrong totals and maths</text>
              <text x="410" y="238">Confidential data pasted in</text>
              <text x="410" y="262">Sounding sure when wrong</text>
            </g>
          </svg>
          <figcaption>AI turns your facts into a fast first draft. You check the dates, tasks and maths, then you decide and own the result.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Where AI helps a project manager</h3>
          <p>Use AI for the first draft. Then check it with real facts and real people.</p>
          <table class="lc-table">
            <thead><tr><th>Task</th><th>How AI helps</th><th>What you still check</th></tr></thead>
            <tbody>
              <tr><td>Project charter</td><td>Turns your notes into a clear one-page draft</td><td>Goals, budget and dates match what the sponsor agreed</td></tr>
              <tr><td>Task list</td><td>Suggests tasks you may forget</td><td>Nothing important is missing. Each task has a real owner.</td></tr>
              <tr><td>Schedule</td><td>Puts tasks in order and adds them up</td><td>Weekends, holidays and the maths</td></tr>
              <tr><td>Risks</td><td>Brainstorms what could go wrong</td><td>The risks are real for your project, not generic</td></tr>
              <tr><td>Status report</td><td>Turns notes into a short, clear update</td><td>The status is honest. Bad news is not softened.</td></tr>
              <tr><td>Meeting notes</td><td>Lists decisions and actions from your notes</td><td>Every action has the right owner and date</td></tr>
            </tbody>
          </table>
          <p>Many work tools now include AI features, for example Microsoft 365 Copilot, Google Workspace, Asana, Notion and Jira. Features change often, so check each tool's current help pages. Use only the AI tools your organisation has approved.</p>
        </div>
        <div class="lc-card">
          <h3>The four big risks</h3>
          <table class="lc-table">
            <thead><tr><th>Risk</th><th>What it looks like</th><th>Maple Street Health example (made up)</th></tr></thead>
            <tbody>
              <tr><td><strong>Made-up dates and facts</strong></td><td>The AI gives exact dates or numbers it cannot know</td><td>It sets the pilot go-live on Mon 31 May 2027. That is Memorial Day, a US public holiday.</td></tr>
              <tr><td><strong>Missing tasks</strong></td><td>The plan looks complete but skips key work</td><td>No privacy review, no vendor privacy contract, no time for app store review</td></tr>
              <tr><td><strong>Wrong maths</strong></td><td>Totals and durations do not add up</td><td>The plan says "12 weeks" but the tasks add up to 16 weeks</td></tr>
              <tr><td><strong>Confidential data</strong></td><td>People paste private data into a public AI tool</td><td>A real patient list or the agency's contract prices</td></tr>
            </tbody>
          </table>
          <p><strong>Health data needs extra care.</strong> In the US, HIPAA (the Health Insurance Portability and Accountability Act) protects patient health information. When an outside company handles that information for a clinic, the clinic usually needs a <strong>business associate agreement</strong> (BAA: a contract that says how the company must protect the data). Never paste patient details into an AI tool unless your organisation has approved that tool for health data. This is general education, not legal advice. Check with your privacy officer or a qualified adviser.</p>
        </div>
        <div class="lc-card">
          <h3>Safe prompts and better prompts</h3>
          <p>Before you paste anything, sort it into three groups:</p>
          <table class="lc-table">
            <thead><tr><th>Safe to share</th><th>Remove or replace first</th><th>Never paste into a public AI tool</th></tr></thead>
            <tbody>
              <tr><td>Task names, made-up examples, public facts, general goals</td><td>People's names, supplier names, contract prices, internal budget details</td><td>Patient or customer records, health information, passwords, staff performance or pay</td></tr>
            </tbody>
          </table>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Make a project plan for a clinic booking app with dates.</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>I manage a project to launch a patient booking app for 6 clinics in New York.
        Start: Mon 1 Feb 2027. Working days: Monday to Friday.
        Holidays: Mon 15 Feb, Mon 31 May, Fri 18 Jun 2027.
        Draft a task list with phases. For each task, suggest a duration in working days.
        Include privacy and security work, because the app handles patient data.
        Do NOT give calendar dates. I will calculate them myself.
        At the end, list every assumption you made and anything you could not know.</code></pre>
          <p>The better prompt gives the facts, keeps private data out and asks the AI to show its assumptions. It also keeps the date maths with you, where you can check it.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: Daniel checks an AI plan</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Daniel asks">"Make a 5-month plan with dates for a clinic booking app. Start Mon 1 Feb 2027."</li>
              <li data-kind="answer" data-label="AI replies">The AI gives a neat table: 9 tasks, exact dates, and a pilot go-live on Mon 31 May 2027.</li>
              <li data-kind="warn" data-label="Mistake 1">Mon 31 May 2027 is Memorial Day. The clinics' project team does not work that day.</li>
              <li data-kind="warn" data-label="Mistake 2">There is no privacy review, no BAA with the app agency and no app store review time.</li>
              <li data-kind="tool" data-label="Daniel checks">He adds up the durations in a spreadsheet and checks every date against a calendar.</li>
              <li data-kind="result" data-label="What he finds">The tasks add up to 118 working days, not the 103 he has. The plan does not fit.</li>
              <li data-kind="check" data-label="Real people">He asks Aisha Bello, the privacy officer, and Marcus Lee, the IT lead, what is missing.</li>
              <li data-kind="answer" data-label="Better use of AI">He asks AI again for tasks and durations only, with no dates. He builds the schedule himself and checks it.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Paste a short draft plan (or use the example). Ask AI to find problems in it. Then check its findings yourself.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a careful project reviewer. Use simple English.

        Context: [a US clinic chain is launching a patient booking app. Working days are Monday to Friday. Holidays: Mon 31 May 2027 and Fri 18 Jun 2027].

        Here is a draft plan:
        [1. Requirements: 10 working days, Mon 1 Feb to Fri 12 Feb 2027
        2. Build the app: 25 working days, Mon 15 Feb to Fri 19 Mar
        3. Testing: 10 working days, Mon 22 Mar to Fri 2 Apr
        4. Staff training: 5 working days, Sat 3 Apr to Thu 8 Apr
        5. Go-live: Mon 31 May 2027
        Total: 45 working days]

        Please review the plan and make a table with: problem, why it matters, suggested fix.
        Check for:
        1. Dates on weekends or holidays.
        2. Durations that do not match the dates.
        3. Totals that do not add up.
        4. Missing tasks (for example privacy, security, approvals, launch).
        5. Anything that looks like confidential data I should not have shared.

        Show your date working. If you are not sure about a date, say so. Do not invent new facts.</pre>
            <ul class="ai-try-checks">
              <li>It spots the Saturday start and the holiday go-live.</li>
              <li>It checks the total against the task durations, and shows its working.</li>
              <li>It names missing tasks such as privacy review and security testing.</li>
              <li>Check each date it gives in a real calendar. AI date maths can also be wrong.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> AI is a fast first-draft writer, not a fact checker. Give it your facts, keep private data out, and ask it to list its assumptions. Then check every date, total and task yourself, because you own the plan.
        </div>
      HTML
      starter_code: nil
    },
    3 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mgmt">Management</div>
          <h1 class="lc-title">Starting a Project</h1>
        </div>
        <p class="lc-lead">Many projects go wrong in the first week. People start work before they agree on the goal, the scope and what success looks like. A project charter fixes this. It is a short document that the sponsor signs before the real work starts. In this lesson you will learn what goes in a charter and how to write clear goals and success measures. You will also use AI to draft one quickly. You will see the charter Daniel Kim wrote for the Maple Street Health booking app.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 330" role="img" aria-label="A one-page project charter for the Online Booking App with eight sections. Purpose: patients book online at all 6 clinics at any time. Goals: 35 percent booked online, hold time under 4 minutes, no-shows from 11 to 8 percent. Scope: in, the app and reminders; out, payments, video, records and Spanish. Success measures: checked at the end of September 2027, baseline against target, and who measures. Milestones: charter Friday 5 February, pilot Friday 28 May, launch Monday 14 June. Budget: 260,000 dollars of costs plus 26,000 contingency equals 286,000 approved. Team: sponsor Lauren Mitchell, project manager Daniel Kim, product owner Priya Shah. Risks: the scheduling link, patient data privacy and low patient use. The sponsor signs at the bottom.">
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <rect x="20" y="16" width="720" height="306" rx="12" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="380" y="44" font-weight="700" fill="#fcd34d" text-anchor="middle">Project charter: Online Booking App (made up)</text>
              <rect x="36" y="60" width="160" height="104" rx="8" fill="#27274e" stroke="#3b82f6"/>
              <text x="48" y="82" font-weight="700">Purpose</text>
              <text x="48" y="106" font-size="11" fill="#9b99b8">Patients book online</text>
              <text x="48" y="124" font-size="11" fill="#9b99b8">at all 6 clinics,</text>
              <text x="48" y="142" font-size="11" fill="#9b99b8">at any time of day</text>
              <rect x="212" y="60" width="160" height="104" rx="8" fill="#27274e" stroke="#10b981"/>
              <text x="224" y="82" font-weight="700">Goals</text>
              <text x="224" y="106" font-size="11" fill="#9b99b8">35% booked online</text>
              <text x="224" y="124" font-size="11" fill="#9b99b8">Hold time under 4 min</text>
              <text x="224" y="142" font-size="11" fill="#9b99b8">No-shows 11% to 8%</text>
              <rect x="388" y="60" width="160" height="104" rx="8" fill="#27274e" stroke="#8b5cf6"/>
              <text x="400" y="82" font-weight="700">Scope</text>
              <text x="400" y="106" font-size="11" fill="#9b99b8">In: app, reminders</text>
              <text x="400" y="124" font-size="11" fill="#9b99b8">Out: payments, video</text>
              <text x="400" y="142" font-size="11" fill="#9b99b8">Out: records, Spanish</text>
              <rect x="564" y="60" width="160" height="104" rx="8" fill="#27274e" stroke="#22d3ee"/>
              <text x="576" y="82" font-weight="700">Success measures</text>
              <text x="576" y="106" font-size="11" fill="#9b99b8">Checked end Sep 2027</text>
              <text x="576" y="124" font-size="11" fill="#9b99b8">Baseline vs target</text>
              <text x="576" y="142" font-size="11" fill="#9b99b8">Who measures it</text>
              <rect x="36" y="176" width="160" height="104" rx="8" fill="#27274e" stroke="#f59e0b"/>
              <text x="48" y="198" font-weight="700">Milestones</text>
              <text x="48" y="222" font-size="11" fill="#9b99b8">Charter: Fri 5 Feb</text>
              <text x="48" y="240" font-size="11" fill="#9b99b8">Pilot: Fri 28 May</text>
              <text x="48" y="258" font-size="11" fill="#9b99b8">Launch: Mon 14 Jun</text>
              <rect x="212" y="176" width="160" height="104" rx="8" fill="#27274e" stroke="#ec4899"/>
              <text x="224" y="198" font-weight="700">Budget</text>
              <text x="224" y="222" font-size="11" fill="#9b99b8">$260,000 costs</text>
              <text x="224" y="240" font-size="11" fill="#9b99b8">+$26,000 contingency</text>
              <text x="224" y="258" font-size="11" fill="#9b99b8">= $286,000 approved</text>
              <rect x="388" y="176" width="160" height="104" rx="8" fill="#27274e" stroke="#3b82f6"/>
              <text x="400" y="198" font-weight="700">Team</text>
              <text x="400" y="222" font-size="11" fill="#9b99b8">Sponsor: L. Mitchell</text>
              <text x="400" y="240" font-size="11" fill="#9b99b8">PM: Daniel Kim</text>
              <text x="400" y="258" font-size="11" fill="#9b99b8">Owner: Priya Shah</text>
              <rect x="564" y="176" width="160" height="104" rx="8" fill="#27274e" stroke="#ec4899"/>
              <text x="576" y="198" font-weight="700">Top risks</text>
              <text x="576" y="222" font-size="11" fill="#9b99b8">Scheduling link</text>
              <text x="576" y="240" font-size="11" fill="#9b99b8">Patient data privacy</text>
              <text x="576" y="258" font-size="11" fill="#9b99b8">Low patient use</text>
              <text x="380" y="306" font-size="12" fill="#9b99b8" text-anchor="middle">Signed by the sponsor, Dr Lauren Mitchell, on Fri 5 Feb 2027</text>
            </g>
          </svg>
          <figcaption>A charter fits on one page. It answers why, what, when, how much, who and what could go wrong. The sponsor signs it before work starts.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>What a project charter is</h3>
          <p>A <strong>project charter</strong> is a short document that starts a project officially. It says why the project exists, what it will deliver and who is in charge. The <strong>sponsor</strong> (the senior person who pays for the project and makes the big decisions) signs it.</p>
          <p>A charter does three jobs:</p>
          <ul class="lc-list">
            <li>It gets everyone to agree on the same goal before money is spent.</li>
            <li>It gives the project manager the authority to use people and budget.</li>
            <li>It gives you something to point to when people ask for extra work later.</li>
          </ul>
          <p>A charter is usually 1 to 3 pages. A typical charter has these parts: purpose, goals, scope, success measures, milestones, budget, team and roles, and top risks and assumptions. Your organisation may have its own template. Use it if it does.</p>
        </div>
        <div class="lc-card">
          <h3>Goals and success measures</h3>
          <p>Write goals that are <strong>SMART</strong>: Specific, Measurable, Achievable, Relevant and Time-bound. A SMART goal says what will change, by how much and by when.</p>
          <table class="lc-table">
            <thead><tr><th>Weak goal</th><th>SMART goal (made-up numbers)</th></tr></thead>
            <tbody>
              <tr><td>Make booking easier.</td><td>35% of appointments are booked online by the end of September 2027 (3 months after full launch).</td></tr>
              <tr><td>Reduce phone calls.</td><td>Average phone hold time falls from 7 minutes to under 4 minutes by the end of September 2027.</td></tr>
              <tr><td>Fewer missed appointments.</td><td>The no-show rate falls from 11% to 8% by the end of September 2027, using text and email reminders.</td></tr>
            </tbody>
          </table>
          <p>Each <strong>success measure</strong> needs four things: a <strong>baseline</strong> (the number today), a target, a date and a person who measures it. Daniel asked Sofia Ramirez, the Clinic Operations Manager, for the real baselines. The AI did not invent them.</p>
        </div>
        <div class="lc-card">
          <h3>Scope: in and out</h3>
          <p><strong>Scope</strong> is the list of what the project will deliver. Writing what is <em>out</em> of scope is just as important. It stops "scope creep" (extra work that slowly gets added without a decision).</p>
          <table class="lc-table">
            <thead><tr><th>In scope</th><th>Out of scope</th></tr></thead>
            <tbody>
              <tr><td>Web app and mobile app to book, change and cancel appointments</td><td>Video visits</td></tr>
              <tr><td>Link to the clinics' existing scheduling system</td><td>Online payments and billing</td></tr>
              <tr><td>Text and email reminders</td><td>Patient access to medical records</td></tr>
              <tr><td>Staff admin screen and training at 6 clinics</td><td>A new scheduling system</td></tr>
              <tr><td>Pilot at 2 clinics (Upper West Side and Astoria), then launch at all 6</td><td>A Spanish version of the app</td></tr>
            </tbody>
          </table>
          <p>An item can be out of scope today and added later through a formal change request. You will see this happen with the Spanish version later in this course.</p>
        </div>
        <div class="lc-card">
          <h3>Draft the charter with AI</h3>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Write a project charter for a booking app.</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>You are a project manager. Draft a one-page project charter in simple English.
        Use ONLY the facts below. Where a fact is missing, write [TO CONFIRM].
        Project: online booking app for a chain of 6 clinics in New York.
        Sponsor: Chief Operating Officer. Project manager: me.
        Dates: kickoff Mon 1 Feb 2027, pilot Fri 28 May, full launch Mon 14 Jun 2027.
        Budget: $260,000 costs plus $26,000 contingency = $286,000.
        Goals: 35% booked online, hold time 7 min to under 4 min,
        no-shows 11% to 8%, all by end of Sep 2027.
        Out of scope: payments, video visits, medical records, Spanish version.
        Sections: purpose, goals, scope (in/out), success measures, milestones,
        budget, team and roles, top 3 risks, assumptions.
        After the charter, list 5 questions I should ask the sponsor.</code></pre>
          <p>The words "use ONLY the facts below" and "[TO CONFIRM]" stop the AI from filling gaps with made-up numbers. After the draft, you check every number against your notes. Then you review it with key people before the sponsor signs.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: write a charter with AI, step by step</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put Daniel's steps for writing the charter in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Meet the sponsor to agree the purpose, goals, budget and key dates.</li>
              <li data-order="2">Collect real baselines from the clinics, such as hold time and no-show rate.</li>
              <li data-order="3">Remove patient data and private details from the notes.</li>
              <li data-order="4">Ask AI for a draft that uses only these facts and marks gaps as [TO CONFIRM].</li>
              <li data-order="5">Check every number and date, and fill the gaps with real answers.</li>
              <li data-order="6">Review the draft with the product owner, IT lead and privacy officer.</li>
              <li data-order="7">The sponsor signs the charter, and the project starts officially.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to draft a one-page charter from your own facts, or use the example. Then check every number and every [TO CONFIRM] gap.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an experienced project manager. Use simple English.

        Draft a one-page project charter. Use ONLY the facts below. If a fact is missing, write [TO CONFIRM]. Do not invent numbers.

        Project: [online booking app for Maple Street Health, a chain of 6 clinics in New York]
        Problem today: [patients book only by phone; average hold time 7 minutes; no-show rate 11%]
        Sponsor: [Dr Lauren Mitchell, Chief Operating Officer]
        Project manager: [Daniel Kim]
        Key dates: [kickoff Mon 1 Feb 2027; pilot Fri 28 May 2027; full launch Mon 14 Jun 2027]
        Budget: [$260,000 costs plus $26,000 contingency]
        In scope: [booking app, reminders, staff admin screen, training]
        Out of scope: [payments, video visits, medical records]

        Sections: Purpose; SMART goals; Scope in and out; Success measures (table: measure, baseline, target, date, who measures); Milestones; Budget; Team and roles; Top 3 risks; Assumptions.

        Then list 5 questions I should ask the sponsor before they sign.</pre>
            <ul class="ai-try-checks">
              <li>Every number matches your facts. Nothing new was invented.</li>
              <li>Each goal has a number and a date (SMART).</li>
              <li>The out-of-scope list is clear.</li>
              <li>Gaps are marked [TO CONFIRM] instead of guessed.</li>
              <li>The budget total is correct ($260,000 + $26,000 = $286,000 in the example).</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A charter is an agreement, not paperwork. AI can write the first draft in minutes, but the goals, numbers and scope must come from real people. Get the sponsor's signature before work starts, and write down what is out of scope.
        </div>
      HTML
      starter_code: nil
    },
    4 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mgmt">Management</div>
          <h1 class="lc-title">Stakeholder Mapping</h1>
        </div>
        <p class="lc-lead">A stakeholder is any person or group who affects your project or is affected by it. Projects often fail because an important person was ignored, not because the plan was wrong. In this lesson you will learn to map stakeholders by influence and interest. You will then turn the map into a communication plan: who hears what, how and how often. You will see how Daniel Kim mapped the people around the Maple Street Health booking app.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 360" role="img" aria-label="A two-by-two grid. The vertical axis is influence over the project, from low to high. The horizontal axis is interest in the project, from low to high. Top left, high influence and low interest: keep satisfied, with the CEO Robert Chen, finance director Kevin O'Brien and medical director Dr Omar Haddad. Top right, high influence and high interest: manage closely, with the sponsor Dr Lauren Mitchell, privacy officer Aisha Bello, and Sofia Ramirez with the clinic managers. Bottom left, low influence and low interest: monitor, with building managers and local community groups. Bottom right, low influence and high interest: keep informed, with 40 front-desk staff, patients, and doctors and nurses.">
            <defs><marker id="prj4a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <rect x="120" y="20" width="300" height="140" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
              <rect x="430" y="20" width="300" height="140" rx="8" fill="#27274e" stroke="#ec4899"/>
              <rect x="120" y="170" width="300" height="140" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
              <rect x="430" y="170" width="300" height="140" rx="8" fill="#1f1f44" stroke="#10b981"/>
              <text x="136" y="46" font-weight="700" fill="#fcd34d">Keep satisfied</text>
              <text x="136" y="76" font-size="12">Robert Chen (CEO)</text>
              <text x="136" y="100" font-size="12">Kevin O'Brien (finance)</text>
              <text x="136" y="124" font-size="12">Dr Omar Haddad (medical)</text>
              <text x="446" y="46" font-weight="700" fill="#f9a8d4">Manage closely</text>
              <text x="446" y="76" font-size="12">Dr Lauren Mitchell (sponsor)</text>
              <text x="446" y="100" font-size="12">Aisha Bello (privacy)</text>
              <text x="446" y="124" font-size="12">Sofia Ramirez + clinic managers</text>
              <text x="136" y="196" font-weight="700" fill="#93c5fd">Monitor</text>
              <text x="136" y="226" font-size="12">Building managers</text>
              <text x="136" y="250" font-size="12">Local community groups</text>
              <text x="446" y="196" font-weight="700" fill="#6ee7b7">Keep informed</text>
              <text x="446" y="226" font-size="12">Front-desk staff (40)</text>
              <text x="446" y="250" font-size="12">Patients</text>
              <text x="446" y="274" font-size="12">Doctors and nurses</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#prj4a)">
                <line x1="104" y1="310" x2="104" y2="26"/>
                <line x1="120" y1="326" x2="726" y2="326"/>
              </g>
              <text x="92" y="36" font-size="11" fill="#9b99b8" text-anchor="end">high</text>
              <text x="92" y="308" font-size="11" fill="#9b99b8" text-anchor="end">low</text>
              <text x="40" y="165" transform="rotate(-90 40 165)" text-anchor="middle" fill="#9b99b8">Influence over the project</text>
              <text x="120" y="348" font-size="11" fill="#9b99b8">low</text>
              <text x="730" y="348" font-size="11" fill="#9b99b8" text-anchor="end">high</text>
              <text x="425" y="348" text-anchor="middle" fill="#9b99b8">Interest in the project</text>
            </g>
          </svg>
          <figcaption>Daniel's stakeholder map (made up). Influence goes up the side, interest goes along the bottom. Each corner gets a different kind of attention.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Who are your stakeholders?</h3>
          <p>Start with a long list. Think about who pays, who decides, who does the work, who uses the result and who can block it. For the booking app, Daniel listed:</p>
          <ul class="lc-list">
            <li><strong>Decide and pay:</strong> Dr Lauren Mitchell (Chief Operating Officer, the sponsor), Robert Chen (CEO), Kevin O'Brien (Finance Director).</li>
            <li><strong>Can approve or block:</strong> Aisha Bello (Privacy and Compliance Officer), Dr Omar Haddad (Medical Director).</li>
            <li><strong>Do the work:</strong> Priya Shah (product owner), Marcus Lee (IT Lead), Tom Walsh (Marketing), Hudson App Studio (the made-up app agency).</li>
            <li><strong>Use the result:</strong> Sofia Ramirez and the 6 clinic managers, 40 front-desk staff, doctors and nurses, and patients.</li>
          </ul>
          <p>Front-desk staff are easy to forget. They will answer patients' questions about the app every day. If they do not trust it, patients will not use it.</p>
        </div>
        <div class="lc-card">
          <h3>Influence and interest</h3>
          <p><strong>Influence</strong> means how much a person can change or stop your project. <strong>Interest</strong> means how much the project affects them or how much they care. Put each stakeholder in one of four boxes:</p>
          <table class="lc-table">
            <thead><tr><th>Box</th><th>Influence / interest</th><th>What you do</th><th>Maple Street Health example</th></tr></thead>
            <tbody>
              <tr><td><strong>Manage closely</strong></td><td>High / high</td><td>Involve them in decisions. Meet often.</td><td>Dr Lauren Mitchell: weekly 1:1 with Daniel</td></tr>
              <tr><td><strong>Keep satisfied</strong></td><td>High / low</td><td>Short, regular updates. Ask before big changes.</td><td>Kevin O'Brien: one budget line each month</td></tr>
              <tr><td><strong>Keep informed</strong></td><td>Low / high</td><td>Share news often. Listen to their concerns.</td><td>Front-desk staff: demos, a newsletter and 2 staff in testing</td></tr>
              <tr><td><strong>Monitor</strong></td><td>Low / low</td><td>Check now and then. Little effort.</td><td>Building managers: told about poster space before launch</td></tr>
            </tbody>
          </table>
          <p>People can move between boxes. Dr Omar Haddad is "keep satisfied" today. If the app changes which appointment types patients can book, his interest will rise quickly.</p>
          <p><strong>Be fair and professional.</strong> Write facts about roles and needs, not personal opinions. Do not type notes such as "difficult person" into an AI tool. Stakeholder notes may be shared or read later, so write them as if the person will see them.</p>
        </div>
        <div class="lc-card">
          <h3>From map to communication plan</h3>
          <p>A <strong>communication plan</strong> is a table that says who gets which information, how and how often. Here is part of Daniel's plan:</p>
          <table class="lc-table">
            <thead><tr><th>Who</th><th>What they need</th><th>How</th><th>How often</th><th>Owner</th></tr></thead>
            <tbody>
              <tr><td>Dr Lauren Mitchell (sponsor)</td><td>Progress, risks, decisions needed</td><td>1:1 meeting plus one-page report</td><td>Weekly</td><td>Daniel Kim</td></tr>
              <tr><td>Steering group (sponsor, CEO, finance, privacy)</td><td>Status, budget, change requests</td><td>Meeting (video call)</td><td>Monthly</td><td>Daniel Kim</td></tr>
              <tr><td>Clinic managers</td><td>Training dates, launch plan, staff questions</td><td>Video call</td><td>Every 2 weeks</td><td>Sofia Ramirez</td></tr>
              <tr><td>Front-desk staff</td><td>What changes for them and when</td><td>Short newsletter in Teams, demos</td><td>Every 2 weeks</td><td>Priya Shah</td></tr>
              <tr><td>Patients</td><td>How to book online</td><td>Posters, texts, website</td><td>From the pilot</td><td>Tom Walsh</td></tr>
            </tbody>
          </table>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Who are the stakeholders for a clinic app?</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>I lead a project to launch a patient booking app for 6 clinics.
        Here are my stakeholders and their roles: [list of roles, no personal notes].
        1. Place each one on an influence/interest grid. Give a one-line reason.
        2. Suggest stakeholders I may have missed.
        3. Draft a communication plan table: who, what they need, how, how often, owner.
        Mark anything you are guessing as a guess.</code></pre>
          <p>AI does not know the people in your organisation. It cannot see who really makes decisions. Use its map as a first guess, then check it with your sponsor and team.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: place the stakeholders</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each Maple Street Health stakeholder (all made up) into the right box on the map.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="close" data-label="Manage closely"></div>
              <div data-sorter-target="bucket" data-bucket="satisfied" data-label="Keep satisfied"></div>
              <div data-sorter-target="bucket" data-bucket="informed" data-label="Keep informed"></div>
              <div data-sorter-target="bucket" data-bucket="monitor" data-label="Monitor"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="close" data-why="She pays for the project and approves changes, and she cares about it every week.">Dr Lauren Mitchell, the sponsor</li>
              <li data-bucket="close" data-why="She can stop the launch if patient data is not safe, and the app handles health data.">Aisha Bello, the privacy officer</li>
              <li data-bucket="satisfied" data-why="He has a lot of power over money but does not need weekly detail.">Kevin O'Brien, the Finance Director</li>
              <li data-bucket="satisfied" data-why="The CEO can change priorities, but only needs short updates.">Robert Chen, the CEO</li>
              <li data-bucket="informed" data-why="The app changes their daily work a lot, but they do not decide on the project.">The 40 front-desk staff</li>
              <li data-bucket="informed" data-why="Patients care a lot about how booking works, but each patient has little influence on the plan.">Patients of the 6 clinics</li>
              <li data-bucket="monitor" data-why="They are only affected a little (poster space) and cannot change the project.">The building managers at each clinic</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Build a stakeholder map and a communication plan for your project, or use the example. Then check it with someone who knows the people.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an experienced project manager. Use simple English.

        My project: [launch an online booking app for a chain of 6 clinics in New York].
        Stakeholders (roles only): [Chief Operating Officer (sponsor); CEO; Finance Director; Medical Director; Privacy Officer; IT Lead; Patient Services Manager; Marketing Manager; outside app agency; 6 clinic managers; 40 front-desk staff; doctors and nurses; patients].

        Please:
        1. Make a table: stakeholder, influence (high/low), interest (high/low), box (manage closely, keep satisfied, keep informed, monitor), one-line reason.
        2. Suggest up to 3 stakeholders I may have missed.
        3. Make a communication plan table: who, what they need to know, channel, how often, owner.
        4. Name the 2 stakeholders most likely to move to a different box during the project, and why.

        Mark any guess as "guess". Keep it fair and professional: describe roles and needs, not personal opinions.</pre>
            <ul class="ai-try-checks">
              <li>The people who pay and can stop the project are in "manage closely" or "keep satisfied".</li>
              <li>The people whose daily work changes are not forgotten.</li>
              <li>Every row in the communication plan has an owner and a frequency.</li>
              <li>Guesses are marked, and you check them with real people.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Map stakeholders by influence and interest, then give each box the right kind of attention. AI can draft the map and the communication plan, but only you and your team know the real people. Update the map when people's interest or influence changes.
        </div>
      HTML
      starter_code: nil
    },
    5 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mgmt">Management</div>
          <h1 class="lc-title">Breaking Down the Work</h1>
        </div>
        <p class="lc-lead">A big project feels impossible until you break it into small pieces. A work breakdown structure (WBS) splits the project into deliverables, and then into tasks that one person can own and estimate. A RACI chart then makes clear who does each task and who approves it. In this lesson you will build both with AI's help, and learn how to catch the tasks AI forgets. You will see the WBS Daniel Kim made for the Maple Street Health booking app.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 330" role="img" aria-label="A work breakdown structure tree. Level 1 is the Online Booking App. Level 2 has five deliverables: Management, Requirements, App build, Testing and Launch. Level 3 has work packages with task IDs. Management: A charter and kickoff, R close and handover, status reports. Requirements: B requirements, C privacy review, D vendor and BAA. App build: E screen design, F scheduling link, G booking app, H reminders, I admin screen. Testing: J system testing, K security test, L user acceptance testing. Launch: M staff training, N app stores, Q launch campaign, O pilot and P full launch.">
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="265" y="16" width="220" height="38" rx="8" fill="#27274e" stroke="#f59e0b" stroke-width="2"/>
              <text x="375" y="40" font-weight="700">Online Booking App</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none">
                <line x1="375" y1="54" x2="375" y2="74"/>
                <line x1="83" y1="74" x2="667" y2="74"/>
                <line x1="83" y1="74" x2="83" y2="92"/>
                <line x1="229" y1="74" x2="229" y2="92"/>
                <line x1="375" y1="74" x2="375" y2="92"/>
                <line x1="521" y1="74" x2="521" y2="92"/>
                <line x1="667" y1="74" x2="667" y2="92"/>
                <line x1="83" y1="128" x2="83" y2="140"/>
                <line x1="229" y1="128" x2="229" y2="140"/>
                <line x1="375" y1="128" x2="375" y2="140"/>
                <line x1="521" y1="128" x2="521" y2="140"/>
                <line x1="667" y1="128" x2="667" y2="140"/>
              </g>
              <rect x="15" y="92" width="136" height="36" rx="8" fill="#27274e" stroke="#3b82f6"/><text x="83" y="115" font-weight="700">Management</text>
              <rect x="161" y="92" width="136" height="36" rx="8" fill="#27274e" stroke="#8b5cf6"/><text x="229" y="115" font-weight="700">Requirements</text>
              <rect x="307" y="92" width="136" height="36" rx="8" fill="#27274e" stroke="#10b981"/><text x="375" y="115" font-weight="700">App build</text>
              <rect x="453" y="92" width="136" height="36" rx="8" fill="#27274e" stroke="#22d3ee"/><text x="521" y="115" font-weight="700">Testing</text>
              <rect x="599" y="92" width="136" height="36" rx="8" fill="#27274e" stroke="#ec4899"/><text x="667" y="115" font-weight="700">Launch</text>
              <g font-size="12">
                <rect x="15" y="140" width="136" height="30" rx="6" fill="#1f1f44" stroke="#3b82f6"/><text x="83" y="160">A Charter, kickoff</text>
                <rect x="15" y="176" width="136" height="30" rx="6" fill="#1f1f44" stroke="#3b82f6"/><text x="83" y="196">Status reports</text>
                <rect x="15" y="212" width="136" height="30" rx="6" fill="#1f1f44" stroke="#3b82f6"/><text x="83" y="232">R Close, handover</text>
                <rect x="161" y="140" width="136" height="30" rx="6" fill="#1f1f44" stroke="#8b5cf6"/><text x="229" y="160">B Requirements</text>
                <rect x="161" y="176" width="136" height="30" rx="6" fill="#1f1f44" stroke="#8b5cf6"/><text x="229" y="196">C Privacy review</text>
                <rect x="161" y="212" width="136" height="30" rx="6" fill="#1f1f44" stroke="#8b5cf6"/><text x="229" y="232">D Vendor + BAA</text>
                <rect x="307" y="140" width="136" height="30" rx="6" fill="#1f1f44" stroke="#10b981"/><text x="375" y="160">E Screen design</text>
                <rect x="307" y="176" width="136" height="30" rx="6" fill="#1f1f44" stroke="#10b981"/><text x="375" y="196">F Scheduling link</text>
                <rect x="307" y="212" width="136" height="30" rx="6" fill="#1f1f44" stroke="#10b981"/><text x="375" y="232">G Booking app</text>
                <rect x="307" y="248" width="136" height="30" rx="6" fill="#1f1f44" stroke="#10b981"/><text x="375" y="268">H Reminders</text>
                <rect x="307" y="284" width="136" height="30" rx="6" fill="#1f1f44" stroke="#10b981"/><text x="375" y="304">I Admin screen</text>
                <rect x="453" y="140" width="136" height="30" rx="6" fill="#1f1f44" stroke="#22d3ee"/><text x="521" y="160">J System testing</text>
                <rect x="453" y="176" width="136" height="30" rx="6" fill="#1f1f44" stroke="#22d3ee"/><text x="521" y="196">K Security test</text>
                <rect x="453" y="212" width="136" height="30" rx="6" fill="#1f1f44" stroke="#22d3ee"/><text x="521" y="232">L User testing</text>
                <rect x="599" y="140" width="136" height="30" rx="6" fill="#1f1f44" stroke="#ec4899"/><text x="667" y="160">M Staff training</text>
                <rect x="599" y="176" width="136" height="30" rx="6" fill="#1f1f44" stroke="#ec4899"/><text x="667" y="196">N App stores</text>
                <rect x="599" y="212" width="136" height="30" rx="6" fill="#1f1f44" stroke="#ec4899"/><text x="667" y="232">Q Launch campaign</text>
                <rect x="599" y="248" width="136" height="30" rx="6" fill="#1f1f44" stroke="#ec4899"/><text x="667" y="268">O Pilot, 2 clinics</text>
                <rect x="599" y="284" width="136" height="30" rx="6" fill="#1f1f44" stroke="#ec4899"/><text x="667" y="304">P Launch, all 6</text>
              </g>
              <text x="160" y="290" font-size="11" fill="#9b99b8">Level 1: project</text>
              <text x="160" y="306" font-size="11" fill="#9b99b8">Level 2: deliverables</text>
              <text x="160" y="322" font-size="11" fill="#9b99b8">Level 3: work packages</text>
            </g>
          </svg>
          <figcaption>Daniel's WBS (made up). The project splits into five deliverables, then into work packages. The letters are the task IDs used in the schedule.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>What a work breakdown structure is</h3>
          <p>A <strong>work breakdown structure (WBS)</strong> is a tree of all the work in a project. The top is the whole project. The next level is the main <strong>deliverables</strong> (things the project produces). The lowest level is <strong>work packages</strong> (pieces of work small enough to estimate, give to one owner and track).</p>
          <p>Three simple rules:</p>
          <ul class="lc-list">
            <li><strong>Include all the work.</strong> If it is not in the WBS, it is not in the plan, the schedule or the budget. This is often called the 100% rule. Remember project management work too, such as status reports.</li>
            <li><strong>Describe results, not people.</strong> Use "Staff admin screen", not "Elena's work".</li>
            <li><strong>Stop at a useful size.</strong> A common guide is that a work package takes from about one day to two weeks. One person must be able to own it and say when it is done.</li>
          </ul>
          <p>Write each task as a verb and a noun, such as "Test the scheduling link". Add a clear "done" test, such as "100 test bookings appear correctly in the clinic system".</p>
        </div>
        <div class="lc-card">
          <h3>Tasks, owners and estimates</h3>
          <p>Here are some of Daniel's work packages (all made up). Estimates are in <strong>working days</strong> (Monday to Friday, not holidays). The schedule lesson later in this course turns them into dates.</p>
          <table class="lc-table">
            <thead><tr><th>ID</th><th>Work package</th><th>Owner</th><th>Estimate</th><th>Done when</th></tr></thead>
            <tbody>
              <tr><td>B</td><td>Booking requirements from 6 clinics</td><td>Priya Shah</td><td>10 days</td><td>Clinic managers sign the list of appointment types and rules</td></tr>
              <tr><td>C</td><td>Privacy and security review</td><td>Aisha Bello</td><td>8 days</td><td>Privacy risks listed, controls agreed</td></tr>
              <tr><td>D</td><td>Choose vendor, sign contract and BAA</td><td>Daniel Kim</td><td>10 days</td><td>Contract and business associate agreement signed</td></tr>
              <tr><td>F</td><td>Link to scheduling system</td><td>Marcus Lee</td><td>20 days</td><td>Test bookings appear in the clinic system</td></tr>
              <tr><td>M</td><td>Staff training at 6 clinics</td><td>Sofia Ramirez</td><td>8 days</td><td>All 40 front-desk staff trained and signed off</td></tr>
              <tr><td>N</td><td>App store submission and review</td><td>Hudson App Studio</td><td>5 days</td><td>App approved in both app stores</td></tr>
            </tbody>
          </table>
          <p>Ask the owner for each estimate. AI can suggest a starting estimate, but the person doing the work knows best.</p>
        </div>
        <div class="lc-card">
          <h3>RACI: who does what</h3>
          <p>A <strong>RACI chart</strong> shows each person's role in each task:</p>
          <ul class="lc-list">
            <li><strong>R, Responsible:</strong> does the work.</li>
            <li><strong>A, Accountable:</strong> owns the result and approves it. Only <strong>one</strong> A per task.</li>
            <li><strong>C, Consulted:</strong> gives advice before the work is done (two-way).</li>
            <li><strong>I, Informed:</strong> is told the result (one-way).</li>
          </ul>
          <table class="lc-table">
            <thead><tr><th>Task</th><th>Daniel (PM)</th><th>Lauren (sponsor)</th><th>Priya (product owner)</th><th>Aisha (privacy)</th><th>Marcus (IT)</th><th>Hudson App Studio</th></tr></thead>
            <tbody>
              <tr><td>A Charter</td><td>R</td><td>A</td><td>C</td><td>C</td><td>C</td><td>-</td></tr>
              <tr><td>C Privacy review</td><td>I</td><td>I</td><td>C</td><td>A/R</td><td>C</td><td>-</td></tr>
              <tr><td>D Vendor contract and BAA</td><td>R</td><td>A</td><td>C</td><td>C</td><td>C</td><td>C</td></tr>
              <tr><td>F Scheduling link</td><td>I</td><td>-</td><td>C</td><td>C</td><td>A/R</td><td>C</td></tr>
              <tr><td>L User acceptance testing</td><td>C</td><td>I</td><td>A/R</td><td>I</td><td>C</td><td>C</td></tr>
            </tbody>
          </table>
          <p><strong>User acceptance testing (UAT)</strong> means the real users test the app and confirm it does what they need. "A/R" means one person both owns and does the task. Check each row: exactly one A, at least one R, and not too many C's. Too many C's slow everything down.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Make a WBS and RACI for an app project.</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Make a WBS for a patient booking app for 6 clinics (web + mobile,
        built by an outside agency, linked to our existing scheduling system).
        Use 3 levels: project, deliverables, work packages.
        Include project management, privacy, security testing, app store
        review, staff training and launch work.
        Then make a RACI table for these roles: project manager, sponsor,
        product owner, privacy officer, IT lead, app agency.
        Rule: exactly one A per row. Flag any row that breaks the rule.
        Finally, list work packages that projects like this often forget.</code></pre>
        </div>
        <div class="lc-card">
          <h3>Activity: Daniel checks an AI work breakdown</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Daniel asks">"Break down a clinic booking app project into tasks, with a RACI for my 6 key people."</li>
              <li data-kind="answer" data-label="AI replies">The AI gives 14 tasks in 4 groups and a full RACI table. It looks complete.</li>
              <li data-kind="thought" data-label="Daniel thinks">"Does this include everything we must do before launch? Let me compare it with the charter's scope."</li>
              <li data-kind="warn" data-label="Missing work">There is no app store review, no staff training and no BAA with the agency.</li>
              <li data-kind="warn" data-label="RACI problem">"Privacy review" has two A's: the sponsor and the privacy officer. Nobody knows who decides.</li>
              <li data-kind="check" data-label="Team review">Daniel shares the draft with Priya, Marcus and Aisha. Aisha confirms she is the one A for privacy.</li>
              <li data-kind="result" data-label="Final WBS">18 work packages, A to R, each with one owner, an estimate and a "done when" test.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to break down your project into a WBS and a RACI chart, or use the example. Then compare it with your scope and check it with your team.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an experienced project manager. Use simple English.

        My project: [an online booking app for a chain of 6 clinics in New York, built by an outside app agency and linked to the clinics' existing scheduling system].
        In scope: [web and mobile app, text and email reminders, staff admin screen, training for 40 front-desk staff, pilot at 2 clinics, launch at all 6].
        Out of scope: [payments, video visits, medical records].
        People: [project manager, sponsor, product owner, privacy officer, IT lead, app agency].

        Please:
        1. Make a WBS with 3 levels: project, 4 to 6 deliverables, work packages. Give each work package an ID (A, B, C...).
        2. For each work package, add: suggested owner role, a "done when" test, and a rough estimate in working days marked "estimate to confirm".
        3. Make a RACI table for the work packages. Use exactly one A per row.
        4. List 5 tasks projects like this often forget.

        Do not add anything that is out of scope. Do not give calendar dates.</pre>
            <ul class="ai-try-checks">
              <li>Project management, privacy, testing, training and launch work are all included.</li>
              <li>Nothing out of scope has crept in.</li>
              <li>Every RACI row has exactly one A.</li>
              <li>Estimates are marked "to confirm". Ask the real owners before you use them.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> If a task is not in the WBS, it will not be in the schedule or the budget. Use AI to suggest tasks and spot gaps, then check the list against your scope and with the people who will do the work. Give every task one owner and exactly one person who is accountable.
        </div>
      HTML
      starter_code: nil
    },
    6 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mgmt">Management</div>
          <h1 class="lc-title">Building a Schedule</h1>
        </div>
        <p class="lc-lead">A schedule turns your task list into dates that people can plan around. To build one, you need three things: an estimate for each task, the order of the tasks, and a calendar. In this lesson you will learn how to estimate, link tasks and set milestones. You will also find the critical path with real numbers. This is the chain of tasks that sets the end date. AI can help with the logic, but date maths is a common place for AI mistakes. So you will also learn to calculate dates in a spreadsheet. You will follow Daniel Kim as he builds the schedule for the Maple Street Health booking app.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 488" role="img" aria-label="A Gantt chart of the 18 tasks from Mon 1 Feb to Mon 28 Jun 2027. Critical tasks A, B, D, E, G, J, L, M, O, P and R are amber bars with no float. Tasks C, F, H, I, K, N and Q are blue bars with a dashed line showing their float: C 2 days, F 5, H 5, I 15, K 8, N 3 and Q 8. The critical path adds up to 103 working days.">
            <g font-family="inherit" font-size="12" fill="#e2e0f0">
              <text x="10" y="24" font-weight="700" font-size="13">Task</text>
              <line x1="180.0" y1="32" x2="180.0" y2="410" stroke="#3a3a66" stroke-width="1"/>
              <text x="184.0" y="24" fill="#9b99b8">Feb</text>
              <line x1="279.6" y1="32" x2="279.6" y2="410" stroke="#3a3a66" stroke-width="1"/>
              <text x="283.6" y="24" fill="#9b99b8">Mar</text>
              <line x1="400.2" y1="32" x2="400.2" y2="410" stroke="#3a3a66" stroke-width="1"/>
              <text x="404.2" y="24" fill="#9b99b8">Apr</text>
              <line x1="515.5" y1="32" x2="515.5" y2="410" stroke="#3a3a66" stroke-width="1"/>
              <text x="519.5" y="24" fill="#9b99b8">May</text>
              <line x1="620.4" y1="32" x2="620.4" y2="410" stroke="#3a3a66" stroke-width="1"/>
              <text x="624.4" y="24" fill="#9b99b8">Jun</text>
              <text x="10" y="59">A  Charter, kickoff</text>
              <rect x="180.0" y="49" width="26.2" height="13" rx="3" fill="#f59e0b"/>
              <text x="10" y="79">B  Requirements</text>
              <rect x="206.2" y="69" width="52.4" height="13" rx="3" fill="#f59e0b"/>
              <text x="10" y="99">C  Privacy review</text>
              <rect x="206.2" y="89" width="41.9" height="13" rx="3" fill="#3b82f6"/>
              <line x1="248.2" y1="95.5" x2="258.6" y2="95.5" stroke="#9b99b8" stroke-width="2" stroke-dasharray="3 3"/>
              <text x="10" y="119">D  Vendor + BAA</text>
              <rect x="258.6" y="109" width="52.4" height="13" rx="3" fill="#f59e0b"/>
              <text x="10" y="139">E  Screen design</text>
              <rect x="311.1" y="129" width="52.4" height="13" rx="3" fill="#f59e0b"/>
              <text x="10" y="159">F  Scheduling link</text>
              <rect x="311.1" y="149" width="104.9" height="13" rx="3" fill="#3b82f6"/>
              <line x1="415.9" y1="155.5" x2="442.1" y2="155.5" stroke="#9b99b8" stroke-width="2" stroke-dasharray="3 3"/>
              <text x="10" y="179">G  Build app</text>
              <rect x="363.5" y="169" width="131.1" height="13" rx="3" fill="#f59e0b"/>
              <text x="10" y="199">H  Reminders</text>
              <rect x="415.9" y="189" width="52.4" height="13" rx="3" fill="#3b82f6"/>
              <line x1="468.3" y1="195.5" x2="494.6" y2="195.5" stroke="#9b99b8" stroke-width="2" stroke-dasharray="3 3"/>
              <text x="10" y="219">I  Admin screen</text>
              <rect x="363.5" y="209" width="52.4" height="13" rx="3" fill="#3b82f6"/>
              <line x1="415.9" y1="215.5" x2="494.6" y2="215.5" stroke="#9b99b8" stroke-width="2" stroke-dasharray="3 3"/>
              <text x="10" y="239">J  System testing</text>
              <rect x="494.6" y="229" width="52.4" height="13" rx="3" fill="#f59e0b"/>
              <text x="10" y="259">K  Security test</text>
              <rect x="547.0" y="249" width="26.2" height="13" rx="3" fill="#3b82f6"/>
              <line x1="573.2" y1="255.5" x2="615.1" y2="255.5" stroke="#9b99b8" stroke-width="2" stroke-dasharray="3 3"/>
              <text x="10" y="279">L  User testing</text>
              <rect x="547.0" y="269" width="26.2" height="13" rx="3" fill="#f59e0b"/>
              <text x="10" y="299">M  Staff training</text>
              <rect x="573.2" y="289" width="41.9" height="13" rx="3" fill="#f59e0b"/>
              <text x="10" y="319">N  App stores</text>
              <rect x="573.2" y="309" width="26.2" height="13" rx="3" fill="#3b82f6"/>
              <line x1="599.4" y1="315.5" x2="615.1" y2="315.5" stroke="#9b99b8" stroke-width="2" stroke-dasharray="3 3"/>
              <text x="10" y="339">Q  Launch campaign</text>
              <rect x="573.2" y="329" width="52.4" height="13" rx="3" fill="#3b82f6"/>
              <line x1="625.6" y1="335.5" x2="667.6" y2="335.5" stroke="#9b99b8" stroke-width="2" stroke-dasharray="3 3"/>
              <text x="10" y="359">O  Pilot, 2 clinics</text>
              <rect x="615.1" y="349" width="52.4" height="13" rx="3" fill="#f59e0b"/>
              <text x="10" y="379">P  Launch, all 6</text>
              <rect x="667.6" y="369" width="26.2" height="13" rx="3" fill="#f59e0b"/>
              <text x="10" y="399">R  Close, handover</text>
              <rect x="693.8" y="389" width="26.2" height="13" rx="3" fill="#f59e0b"/>
              <rect x="10" y="428" width="22" height="12" rx="3" fill="#f59e0b"/><text x="40" y="439">Critical path (no float)</text>
              <rect x="220" y="428" width="22" height="12" rx="3" fill="#3b82f6"/><text x="250" y="439">Has float</text>
              <line x1="340" y1="434" x2="370" y2="434" stroke="#9b99b8" stroke-width="2" stroke-dasharray="3 3"/><text x="378" y="439">Float (days it can slip)</text>
              <text x="10" y="466" fill="#9b99b8">Critical path: A, B, D, E, G, J, L, M, O, P, R = 103 working days. Finish Mon 28 Jun 2027.</text>
            </g>
          </svg>
          <figcaption>Daniel's schedule as a Gantt chart (made up). Amber tasks are on the critical path: if one of them slips, the end date slips. Blue tasks have float, shown as a dashed line.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Step 1: estimate each task</h3>
          <p>An <strong>estimate</strong> is your best guess of how long a task will take. Daniel measures every task in <strong>working days</strong> (Monday to Friday, not public holidays). Always ask the person who will do the work. They know the hidden steps.</p>
          <p>For uncertain tasks, ask for three numbers. This is a <strong>three-point estimate</strong>:</p>
          <ul class="lc-list">
            <li><strong>Optimistic (O):</strong> if everything goes well.</li>
            <li><strong>Most likely (M):</strong> the normal case.</li>
            <li><strong>Pessimistic (P):</strong> if common problems happen.</li>
          </ul>
          <p>A common formula (often called PERT) gives the most likely number four times more weight: <code>(O + 4 x M + P) / 6</code>.</p>
          <table class="lc-table">
            <thead><tr><th>Task (made up)</th><th>Owner</th><th>O</th><th>M</th><th>P</th><th>Estimate</th></tr></thead>
            <tbody>
              <tr><td>F Link to scheduling system</td><td>Marcus Lee</td><td>15</td><td>19</td><td>29</td><td>(15 + 76 + 29) / 6 = <strong>20 days</strong></td></tr>
              <tr><td>G Build booking app</td><td>Hudson App Studio</td><td>20</td><td>24</td><td>34</td><td>(20 + 96 + 34) / 6 = <strong>25 days</strong></td></tr>
            </tbody>
          </table>
          <p>The gap between O and P shows the uncertainty. Task F has a wide gap, so Daniel will watch it closely. AI can suggest a starting range for a task. But the owner must agree the final number.</p>
        </div>
        <div class="lc-card">
          <h3>Step 2: dependencies and the critical path</h3>
          <p>A <strong>dependency</strong> is a link between tasks. The most common type is <strong>finish-to-start</strong>: task B cannot start until task A finishes. All of Daniel's links are this type.</p>
          <p>When two chains of tasks run side by side, the longer chain decides when the next task can start. The longest chain through the whole project is the <strong>critical path</strong>. <strong>Float</strong> (also called slack) is how many days a task can slip without moving the end date. Tasks on the critical path have zero float.</p>
          <p>Here is Daniel's worked example, counted in working days:</p>
          <pre><code>Before task D (vendor contract) can start:
          A + B = 5 + 10 = 15 days
          A + C = 5 + 8  = 13 days
          D waits for the longer chain (15). C has 15 - 13 = 2 days of float.

        Before task J (system testing) can start, after D:
          E + G = 10 + 25 = 35 days   (longest: critical)
          F + H = 20 + 10 = 30 days   (F and H have 5 days of float)
          E + I = 10 + 10 = 20 days   (I has 15 days of float)

        Critical path: A, B, D, E, G, J, L, M, O, P, R
          5 + 10 + 10 + 10 + 25 + 10 + 5 + 8 + 10 + 5 + 5 = 103 working days</code></pre>
          <p>So the project needs 103 working days. If task G takes 3 days longer, the whole project ends 3 days later. If task F takes 3 days longer, nothing moves, because F has 5 days of float.</p>
          <p>A <strong>milestone</strong> is a key point in the schedule with no length, such as "UAT sign-off". Here are some of Daniel's milestones:</p>
          <table class="lc-table">
            <thead><tr><th>Milestone</th><th>Date</th><th>End of task</th></tr></thead>
            <tbody>
              <tr><td>M3 Screen designs approved</td><td>Mon 22 Mar 2027</td><td>E</td></tr>
              <tr><td>M5 UAT sign-off</td><td>Mon 17 May 2027</td><td>L</td></tr>
              <tr><td>M6 Pilot go-live (Upper West Side, Astoria)</td><td>Fri 28 May 2027</td><td>Start of O</td></tr>
              <tr><td>M7 Full launch go-live (all 6 clinics)</td><td>Mon 14 Jun 2027</td><td>Start of P</td></tr>
              <tr><td>M8 Project closed</td><td>Mon 28 Jun 2027</td><td>R</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Step 3: turn days into dates in a spreadsheet</h3>
          <p>Do the date maths in a spreadsheet, not in your head or in a chat with AI. Excel and Google Sheets both have a <code>WORKDAY</code> function. It skips weekends and any holiday dates you list. Daniel lists the project holidays in a range he names <code>Holidays</code>: Mon 15 Feb, Mon 31 May, Fri 18 Jun and Mon 5 Jul 2027.</p>
          <table class="lc-table">
            <thead><tr><th>What you want</th><th>Formula</th><th>Result for Daniel</th></tr></thead>
            <tbody>
              <tr><td>Finish date of A (start Mon 1 Feb, 5 days)</td><td><code>=WORKDAY(C2, 5-1, Holidays)</code></td><td>Fri 5 Feb 2027</td></tr>
              <tr><td>Start date of B (the next working day after A)</td><td><code>=WORKDAY(D2, 1, Holidays)</code></td><td>Mon 8 Feb 2027</td></tr>
              <tr><td>Finish date of B (10 days)</td><td><code>=WORKDAY(C3, 10-1, Holidays)</code></td><td>Mon 22 Feb 2027 (skips the holiday on Mon 15 Feb)</td></tr>
              <tr><td>Working days in the whole project</td><td><code>=NETWORKDAYS(C2, D19, Holidays)</code></td><td>103</td></tr>
            </tbody>
          </table>
          <p>Note the "minus 1" in the finish formula. <code>WORKDAY</code> counts days after the start date, but the start date is also a working day. <code>NETWORKDAYS</code> counts both the first and the last day. Tools such as Microsoft Project, Asana, Monday.com and Jira can also show a timeline or Gantt view. Check each tool's current help pages for how it handles holidays.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Make me a schedule with dates for my app project.</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Here are my tasks: ID, name, duration in working days, depends on.
        [paste the task table]
        All links are finish-to-start.
        1. Do a forward pass. Give each task's start and finish as working-day
           numbers (day 1 = first day). Do NOT give calendar dates.
        2. Find the critical path and the total number of working days.
        3. Give the float for every task.
        4. Show the sum for every chain that meets at the same task.
        5. List any task with no dependency that looks wrong.</code></pre>
          <p>The AI does the logic and shows its working. You check the sums, then make the dates with <code>WORKDAY</code>. Finally, you check the plan with each task owner.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: Daniel checks an AI critical path</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Daniel asks">"Here are my 18 tasks, durations and dependencies. Find the critical path and the total length."</li>
              <li data-kind="answer" data-label="AI replies">"The critical path is A, B, D, F, H, J, L, M, O, P, R. The project takes 98 working days."</li>
              <li data-kind="thought" data-label="Daniel thinks">"F and H go into task J. So do E and G. Which chain is really longer?"</li>
              <li data-kind="tool" data-label="Spreadsheet">Daniel adds up each chain that ends at task J.</li>
              <li data-kind="result" data-label="The sums">E + G = 35 days, F + H = 30 days, E + I = 20 days. The critical path goes through E and G. The total is 103 days, not 98.</li>
              <li data-kind="warn" data-label="Mistake caught">The AI chose the wrong chain. Daniel would have watched the wrong tasks, and promised a date 5 working days too early.</li>
              <li data-kind="check" data-label="Owners agree">Elena Rossi confirms 25 days for G. Marcus Lee confirms 20 days for F.</li>
              <li data-kind="result" data-label="Baseline set">Dr Lauren Mitchell approves the schedule. Full launch go-live is Mon 14 Jun 2027. The project ends Mon 28 Jun 2027.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Give AI your task list and ask it to find the critical path and float. Then check the sums yourself and make the dates in a spreadsheet.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a careful project scheduler. Use simple English.

        Here are my project tasks. Durations are in working days. All links are finish-to-start.
        [A Charter, 5 days, no dependency
        B Requirements, 10 days, after A
        C Privacy review, 8 days, after A
        D Vendor contract, 10 days, after B and C
        E Screen design, 10 days, after D
        F Scheduling link, 20 days, after D
        G Build app, 25 days, after E
        H Reminders, 10 days, after F
        I Admin screen, 10 days, after E
        J System testing, 10 days, after G, H and I]

        Please:
        1. Make a table: task, duration, start day, finish day (day 1 = first working day), float.
        2. Name the critical path and the total working days.
        3. Show the sum for each chain that meets at the same task.
        4. Name the 2 tasks with the least float that are not critical.
        5. Suggest 2 milestones and where they fit.
        Do NOT give calendar dates. I will make the dates with the WORKDAY function and my holiday list.</pre>
            <ul class="ai-try-checks">
              <li>Add up each chain yourself. With the example, the total is 70 working days.</li>
              <li>Every critical task has zero float.</li>
              <li>With the example, C has 2 days of float, F and H have 5, and I has 15.</li>
              <li>No calendar dates appear. You make them with WORKDAY and a holiday list.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> The critical path is the longest chain of linked tasks, and it sets your end date. Ask task owners for estimates, let AI help with the logic, and always check the sums. Make the real dates in a spreadsheet with WORKDAY and a holiday list, because AI date maths is often wrong.
        </div>
      HTML
      starter_code: nil
    },
    7 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mgmt">Management</div>
          <h1 class="lc-title">Budgets and Resources</h1>
        </div>
        <p class="lc-lead">A project needs money and people. The budget says how much money the project may spend. Resources are the people, skills and tools that do the work. In this lesson you will estimate costs, check that people really have the time, and build a simple budget sheet with formulas. You will also use AI to find missing cost lines and formula mistakes. You will see the budget Daniel Kim built for the Maple Street Health booking app.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 372" role="img" aria-label="A bar chart of the approved budget of 286,000 dollars. Vendor design and build 168,000. Scheduling link licence 18,000. Patient launch campaign 17,000. Contract IT developer 16,000. Security test 14,000. Hosting for 12 months 12,600. Reminders for 12 months 7,200. Training cover 7,200. Subtotal 260,000. Contingency of 10 percent 26,000.">
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <text x="20" y="26" font-weight="700" font-size="14">Online Booking App: approved budget (US $, made up)</text>
              <text x="188" y="62" text-anchor="end">Vendor design and build</text>
              <rect x="200" y="50" width="420.0" height="16" rx="3" fill="#3b82f6"/>
              <text x="628.0" y="62">$168,000</text>
              <text x="188" y="88" text-anchor="end">Scheduling link licence</text>
              <rect x="200" y="76" width="45.0" height="16" rx="3" fill="#3b82f6"/>
              <text x="253.0" y="88">$18,000</text>
              <text x="188" y="114" text-anchor="end">Patient launch campaign</text>
              <rect x="200" y="102" width="42.5" height="16" rx="3" fill="#3b82f6"/>
              <text x="250.5" y="114">$17,000</text>
              <text x="188" y="140" text-anchor="end">Contract IT developer</text>
              <rect x="200" y="128" width="40.0" height="16" rx="3" fill="#3b82f6"/>
              <text x="248.0" y="140">$16,000</text>
              <text x="188" y="166" text-anchor="end">Security test</text>
              <rect x="200" y="154" width="35.0" height="16" rx="3" fill="#3b82f6"/>
              <text x="243.0" y="166">$14,000</text>
              <text x="188" y="192" text-anchor="end">Hosting, 12 months</text>
              <rect x="200" y="180" width="31.5" height="16" rx="3" fill="#22d3ee"/>
              <text x="239.5" y="192">$12,600</text>
              <text x="188" y="218" text-anchor="end">Reminders, 12 months</text>
              <rect x="200" y="206" width="18.0" height="16" rx="3" fill="#22d3ee"/>
              <text x="226.0" y="218">$7,200</text>
              <text x="188" y="244" text-anchor="end">Training cover</text>
              <rect x="200" y="232" width="18.0" height="16" rx="3" fill="#3b82f6"/>
              <text x="226.0" y="244">$7,200</text>
              <line x1="20" y1="256" x2="740" y2="256" stroke="#3a3a66"/>
              <text x="188" y="276" text-anchor="end" fill="#9b99b8">Subtotal</text><text x="200" y="276" font-weight="700">$260,000</text>
              <text x="188" y="304" text-anchor="end">Contingency (10%)</text>
              <rect x="200" y="292" width="65.0" height="16" rx="3" fill="#f59e0b"/>
              <text x="273.0" y="304">$26,000</text>
              <text x="188" y="332" text-anchor="end" font-weight="700">Approved budget</text><text x="200" y="332" font-weight="700" fill="#f59e0b">$286,000</text>
              <rect x="20" y="348" width="14" height="12" rx="2" fill="#3b82f6"/><text x="42" y="359" font-size="12">One-off cost</text>
              <rect x="160" y="348" width="14" height="12" rx="2" fill="#22d3ee"/><text x="182" y="359" font-size="12">Running cost, first year</text>
              <rect x="370" y="348" width="14" height="12" rx="2" fill="#f59e0b"/><text x="392" y="359" font-size="12">Money kept for risks</text>
            </g>
          </svg>
          <figcaption>Daniel's approved budget (made up). Eight cost lines add up to $260,000. A 10% contingency of $26,000 brings the approved budget to $286,000.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Estimating costs</h3>
          <p>Build the budget from your work breakdown structure (the list of all the project's work). Go through every work package and ask: "What will this cost?" This is called a <strong>bottom-up estimate</strong>. Most lines are simply <strong>quantity x rate</strong>.</p>
          <ul class="lc-list">
            <li><strong>Quotes:</strong> a supplier's written price. Hudson App Studio quoted a <strong>fixed price</strong> of $168,000 for design and build. A fixed price means the vendor carries the risk if the work takes longer.</li>
            <li><strong>Rates:</strong> a price per day, hour or month. The contract IT developer costs $800 a day.</li>
            <li><strong>Running costs:</strong> costs that repeat after launch, such as hosting. Daniel includes the first 12 months in the project budget.</li>
            <li><strong>Contingency:</strong> money kept for risks that may happen. Maple Street Health uses 10%. This is a choice the sponsor agrees, not a fixed rule. Only the sponsor can approve spending it.</li>
          </ul>
          <p>Write down what is <strong>not</strong> in the budget too. Daniel's own time is paid from the central project office budget, so it is not a line here.</p>
        </div>
        <div class="lc-card">
          <h3>Resources: do people really have the time?</h3>
          <p>Two words help here. <strong>Effort</strong> is the total work, in person-days. <strong>Duration</strong> is the calendar time, in working days. One task can need 30 person-days of effort but take only 20 working days, if more than one person works on it.</p>
          <p><strong>Capacity</strong> is the time a person can really give to the project. Most people also have a normal job. Marcus Lee is the IT Lead for all 6 clinics. He can give only 50% of his time to the project.</p>
          <table class="lc-table">
            <thead><tr><th>Need (made up)</th><th>Effort needed</th><th>Capacity</th><th>Gap</th><th>Solution and cost</th></tr></thead>
            <tbody>
              <tr><td>F Link to scheduling system, 20 working days</td><td>30 person-days</td><td>Marcus: 50% x 20 days = 10 days</td><td>20 days</td><td>Contract IT developer: 20 days x $800 = $16,000</td></tr>
              <tr><td>M Staff training: 40 front-desk staff, 6 hours each</td><td>40 x 6 = 240 hours</td><td>Staff must still cover the desks</td><td>240 hours of desk cover</td><td>Cover staff: 240 hours x $30 = $7,200</td></tr>
            </tbody>
          </table>
          <p><strong>Utilisation</strong> is the share of a person's time that is planned. During task F, Marcus has 10 days of normal IT work and 10 days of project work. That is 20 of 20 days, or 100%. He has no spare time for an IT emergency. Daniel notes this as a risk. He is glad that task F has 5 days of float. Many teams plan people below 100%, because meetings, sickness and surprises always take time.</p>
        </div>
        <div class="lc-card">
          <h3>A simple budget sheet</h3>
          <p>Put the budget in a spreadsheet, with a formula in every total. Never type a total by hand.</p>
          <table class="lc-table">
            <thead><tr><th>Row</th><th>A: Line</th><th>B: Qty</th><th>C: Unit</th><th>D: Rate</th><th>E: Cost</th></tr></thead>
            <tbody>
              <tr><td>2</td><td>Vendor design and build</td><td>1</td><td>fixed price</td><td>$168,000</td><td><code>=B2*D2</code> = $168,000</td></tr>
              <tr><td>3</td><td>Scheduling link licence, year 1</td><td>1</td><td>year</td><td>$18,000</td><td>$18,000</td></tr>
              <tr><td>4</td><td>Contract IT developer</td><td>20</td><td>days</td><td>$800</td><td>$16,000</td></tr>
              <tr><td>5</td><td>Security (penetration) test</td><td>1</td><td>fixed price</td><td>$14,000</td><td>$14,000</td></tr>
              <tr><td>6</td><td>Text and email reminder service</td><td>12</td><td>months</td><td>$600</td><td>$7,200</td></tr>
              <tr><td>7</td><td>Hosting and monitoring</td><td>12</td><td>months</td><td>$1,050</td><td>$12,600</td></tr>
              <tr><td>8</td><td>Training cover</td><td>240</td><td>hours</td><td>$30</td><td>$7,200</td></tr>
              <tr><td>9</td><td>Patient launch campaign</td><td>1</td><td>budget</td><td>$17,000</td><td>$17,000</td></tr>
              <tr><td>10</td><td>Subtotal</td><td></td><td></td><td></td><td><code>=SUM(E2:E9)</code> = $260,000</td></tr>
              <tr><td>11</td><td>Contingency</td><td></td><td></td><td>10%</td><td><code>=E10*D11</code> = $26,000</td></tr>
              <tr><td>12</td><td>Approved budget</td><td></td><td></td><td></td><td><code>=E10+E11</code> = $286,000</td></tr>
            </tbody>
          </table>
          <p>Rows 3 to 9 use the same <code>=B*D</code> formula as row 2. Daniel also plans when the money goes out. Hudson App Studio is paid at milestones. It gets 20% at contract signing ($33,600) and 30% at screen design approval ($50,400). It gets 30% at build complete ($50,400) and 20% after full launch ($33,600). The four payments add up to $168,000.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Is my budget OK?</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>You are a project finance reviewer. Here is my budget sheet for a
        patient booking app (web + mobile) for 6 clinics, built by an outside agency.
        [paste the table, with supplier names replaced by "Vendor A", "Vendor B"]
        1. Check every Qty x Rate and every total. Show your working.
        2. List cost lines that projects like this often forget.
        3. Mark each line as one-off or running cost.
        4. Say which lines carry the most risk of going over, and why.
        Do not change my numbers. Put suggestions in a separate list.</code></pre>
          <p>Budgets and supplier prices are often confidential. Use your organisation's approved AI tool, or replace names first. The AI checks and suggests. You check its maths in the spreadsheet, and the sponsor and the Finance Director approve the budget.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: build a project budget, step by step</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put Daniel's steps for building the budget in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">List every cost line from the work breakdown structure, including running costs for the first year.</li>
              <li data-order="2">Get a quote or a rate for each line from the supplier or task owner.</li>
              <li data-order="3">Check capacity: does each person really have the time, or do you need extra help?</li>
              <li data-order="4">Put each line in a spreadsheet with quantity x rate formulas and a SUM for the subtotal.</li>
              <li data-order="5">Add contingency for risks, using the percentage the sponsor agrees.</li>
              <li data-order="6">Ask AI to find missing lines and formula mistakes, then check what it says.</li>
              <li data-order="7">The sponsor and the Finance Director approve the budget.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to set up a budget sheet and a capacity check for your project, or use the example. Then rebuild the formulas in your own spreadsheet and check every total.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an experienced project manager. Use simple English.

        My project: [a patient booking app (web + mobile) for a chain of 6 clinics, built by an outside agency].
        Cost lines I know: [agency fixed price $168,000; contract developer 20 days at $800 a day; hosting 12 months at $1,050; reminder service 12 months at $600; training cover 240 hours at $30].
        Contingency: [10%].
        People: [IT lead can give 50% of their time; a 20-working-day task needs 30 person-days of effort].

        Please:
        1. Make a budget table with columns: Line, Qty, Unit, Rate, Cost. Show the spreadsheet formula for each Cost cell (for example =B2*D2), a SUM subtotal, the contingency and the total.
        2. Calculate every number and show your working.
        3. List 5 cost lines that projects like this often forget.
        4. Do the capacity check: is there a gap, and how many days?
        5. Mark which numbers are my facts and which are your suggestions.
        Do not invent prices. Write [GET A QUOTE] for any line without a real price.</pre>
            <ul class="ai-try-checks">
              <li>With the example, the five lines add up to $211,000, and 10% contingency makes $232,100.</li>
              <li>The capacity gap is 20 person-days (30 needed, 10 available).</li>
              <li>No prices are invented. New lines say [GET A QUOTE].</li>
              <li>Rebuild the formulas in your spreadsheet. Do not copy the AI's totals.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Build the budget bottom-up from the work, with a formula in every total, and add contingency that only the sponsor can release. Check capacity as well as money: a plan fails if people do not have the time. AI can spot missing lines and wrong sums, but you check the maths and the sponsor approves.
        </div>
      HTML
      starter_code: nil
    },
    8 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mgmt">Management</div>
          <h1 class="lc-title">Risks, Assumptions, Issues and Dependencies</h1>
        </div>
        <p class="lc-lead">Every project has things that might go wrong, things you hope are true, problems that are already happening, and things you need from other people. A RAID log keeps all four in one list, with an owner for each. In this lesson you will build a RAID log, score risks, and choose a response for each one. You will also use AI to find risks you missed, and learn why you must check them. You will see the RAID log Daniel Kim keeps for the Maple Street Health booking app.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 390" role="img" aria-label="Left: a 5 by 5 risk heat map with impact across and probability up. R1, the scheduling link, scores 4 times 4 equals 16 and sits in the red High zone. R2 low patient adoption scores 12, R3 patient data exposed scores 10, R4 staff trust and R5 app store delay score 9, and R6 vendor developer leaves scores 8. All five are in the amber Medium zone. Right: the four parts of a RAID log. Risks might happen. Assumptions are things we believe are true. Issues are happening now. Dependencies are things we need from others first.">
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <text x="20" y="26" font-weight="700" font-size="14">Risk heat map: score = probability x impact</text>
              <rect x="90" y="252" width="52" height="52" fill="#1f3a33" stroke="#14142e"/>
              <rect x="142" y="252" width="52" height="52" fill="#1f3a33" stroke="#14142e"/>
              <rect x="194" y="252" width="52" height="52" fill="#1f3a33" stroke="#14142e"/>
              <rect x="246" y="252" width="52" height="52" fill="#1f3a33" stroke="#14142e"/>
              <rect x="298" y="252" width="52" height="52" fill="#1f3a33" stroke="#14142e"/>
              <rect x="90" y="200" width="52" height="52" fill="#1f3a33" stroke="#14142e"/>
              <rect x="142" y="200" width="52" height="52" fill="#1f3a33" stroke="#14142e"/>
              <rect x="194" y="200" width="52" height="52" fill="#1f3a33" stroke="#14142e"/>
              <rect x="246" y="200" width="52" height="52" fill="#3d3320" stroke="#14142e"/>
              <rect x="298" y="200" width="52" height="52" fill="#3d3320" stroke="#14142e"/>
              <rect x="90" y="148" width="52" height="52" fill="#1f3a33" stroke="#14142e"/>
              <rect x="142" y="148" width="52" height="52" fill="#1f3a33" stroke="#14142e"/>
              <rect x="194" y="148" width="52" height="52" fill="#3d3320" stroke="#14142e"/>
              <rect x="246" y="148" width="52" height="52" fill="#3d3320" stroke="#14142e"/>
              <rect x="298" y="148" width="52" height="52" fill="#4a1f2e" stroke="#14142e"/>
              <rect x="90" y="96" width="52" height="52" fill="#1f3a33" stroke="#14142e"/>
              <rect x="142" y="96" width="52" height="52" fill="#3d3320" stroke="#14142e"/>
              <rect x="194" y="96" width="52" height="52" fill="#3d3320" stroke="#14142e"/>
              <rect x="246" y="96" width="52" height="52" fill="#4a1f2e" stroke="#14142e"/>
              <rect x="298" y="96" width="52" height="52" fill="#4a1f2e" stroke="#14142e"/>
              <rect x="90" y="44" width="52" height="52" fill="#1f3a33" stroke="#14142e"/>
              <rect x="142" y="44" width="52" height="52" fill="#3d3320" stroke="#14142e"/>
              <rect x="194" y="44" width="52" height="52" fill="#4a1f2e" stroke="#14142e"/>
              <rect x="246" y="44" width="52" height="52" fill="#4a1f2e" stroke="#14142e"/>
              <rect x="298" y="44" width="52" height="52" fill="#4a1f2e" stroke="#14142e"/>
              <text x="272" y="120" text-anchor="middle" font-weight="700">R1</text>
              <text x="272" y="143" text-anchor="middle" font-size="10" fill="#9b99b8">16</text>
              <text x="272" y="172" text-anchor="middle" font-weight="700">R2</text>
              <text x="272" y="195" text-anchor="middle" font-size="10" fill="#9b99b8">12</text>
              <text x="324" y="224" text-anchor="middle" font-weight="700">R3</text>
              <text x="324" y="247" text-anchor="middle" font-size="10" fill="#9b99b8">10</text>
              <text x="220" y="168" text-anchor="middle" font-weight="700">R4</text>
              <text x="220" y="186" text-anchor="middle" font-weight="700">R5</text>
              <text x="272" y="224" text-anchor="middle" font-weight="700">R6</text>
              <text x="272" y="247" text-anchor="middle" font-size="10" fill="#9b99b8">8</text>
              <text x="116" y="322" text-anchor="middle" fill="#9b99b8" font-size="12">1</text>
              <text x="80" y="282" text-anchor="end" fill="#9b99b8" font-size="12">1</text>
              <text x="168" y="322" text-anchor="middle" fill="#9b99b8" font-size="12">2</text>
              <text x="80" y="230" text-anchor="end" fill="#9b99b8" font-size="12">2</text>
              <text x="220" y="322" text-anchor="middle" fill="#9b99b8" font-size="12">3</text>
              <text x="80" y="178" text-anchor="end" fill="#9b99b8" font-size="12">3</text>
              <text x="272" y="322" text-anchor="middle" fill="#9b99b8" font-size="12">4</text>
              <text x="80" y="126" text-anchor="end" fill="#9b99b8" font-size="12">4</text>
              <text x="324" y="322" text-anchor="middle" fill="#9b99b8" font-size="12">5</text>
              <text x="80" y="74" text-anchor="end" fill="#9b99b8" font-size="12">5</text>
              <text x="220" y="340" text-anchor="middle" fill="#9b99b8" font-size="12">Impact (1 to 5)</text>
              <text x="40" y="174" text-anchor="middle" fill="#9b99b8" font-size="12" transform="rotate(-90 40 174)">Probability (1 to 5)</text>
              <rect x="20" y="356" width="14" height="12" fill="#1f3a33" stroke="#10b981"/><text x="40" y="367" font-size="12">Low 1-7</text>
              <rect x="132" y="356" width="14" height="12" fill="#3d3320" stroke="#f59e0b"/><text x="152" y="367" font-size="12">Medium 8-14</text>
              <rect x="244" y="356" width="14" height="12" fill="#4a1f2e" stroke="#ec4899"/><text x="264" y="367" font-size="12">High 15-25</text>
              <text x="410" y="26" font-weight="700" font-size="14">The four parts of a RAID log</text>
              <rect x="410" y="44" width="330" height="68" rx="8" fill="#1f1f44" stroke="#ec4899" stroke-width="2"/>
              <text x="424" y="68" font-weight="700">R  Risks</text><text x="560" y="68" fill="#9b99b8" font-size="12">might happen</text>
              <text x="424" y="94" font-size="12">e.g. R1 Scheduling link is harder</text>
              <rect x="410" y="124" width="330" height="68" rx="8" fill="#1f1f44" stroke="#8b5cf6" stroke-width="2"/>
              <text x="424" y="148" font-weight="700">A  Assumptions</text><text x="560" y="148" fill="#9b99b8" font-size="12">we believe are true</text>
              <text x="424" y="174" font-size="12">e.g. Supplier allows a secure link</text>
              <rect x="410" y="204" width="330" height="68" rx="8" fill="#1f1f44" stroke="#f59e0b" stroke-width="2"/>
              <text x="424" y="228" font-weight="700">I  Issues</text><text x="560" y="228" fill="#9b99b8" font-size="12">are happening now</text>
              <text x="424" y="254" font-size="12">e.g. I1 Test link opened 3 days late</text>
              <rect x="410" y="284" width="330" height="68" rx="8" fill="#1f1f44" stroke="#22d3ee" stroke-width="2"/>
              <text x="424" y="308" font-weight="700">D  Dependencies</text><text x="560" y="308" fill="#9b99b8" font-size="12">we need from others first</text>
              <text x="424" y="334" font-size="12">e.g. Contract and BAA before design</text>
            </g>
          </svg>
          <figcaption>Daniel's risk heat map and the four parts of his RAID log (made up). Risks in the top-right corner need the most attention.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>What goes in a RAID log</h3>
          <p>RAID stands for <strong>Risks, Assumptions, Issues and Dependencies</strong>. The log is usually a simple table in a spreadsheet or a project tool.</p>
          <table class="lc-table">
            <thead><tr><th>Type</th><th>Plain meaning</th><th>Question to ask</th><th>Maple Street Health example (made up)</th></tr></thead>
            <tbody>
              <tr><td><strong>Risk</strong></td><td>Something that <em>might</em> happen and would affect the project</td><td>What could go wrong?</td><td>R1: the link to the scheduling system is harder than expected</td></tr>
              <tr><td><strong>Assumption</strong></td><td>Something you believe is true but have not proved</td><td>What are we taking for granted?</td><td>A1: the scheduling system supplier allows a secure connection</td></tr>
              <tr><td><strong>Issue</strong></td><td>A problem that is happening <em>now</em></td><td>What is going wrong today?</td><td>I1: the supplier's test connection opened 3 working days late</td></tr>
              <tr><td><strong>Dependency</strong></td><td>Something you need from another task, team or company first</td><td>What are we waiting for?</td><td>D1: Hudson App Studio starts design only after the contract and BAA are signed</td></tr>
            </tbody>
          </table>
          <p>Each row needs an ID, a short description, an <strong>owner</strong> (one person who acts on it), the date raised, a response or action, a status and a next review date. Check an assumption as early as you can. If it turns out to be false, it becomes an issue or a risk.</p>
        </div>
        <div class="lc-card">
          <h3>Score risks and choose a response</h3>
          <p>Score each risk from 1 to 5 for <strong>probability</strong> (how likely it is) and for <strong>impact</strong> (how bad it would be). Then multiply them. Maple Street Health uses this rule: 15 to 25 is High, 8 to 14 is Medium, 1 to 7 is Low.</p>
          <table class="lc-table">
            <thead><tr><th>Row</th><th>A: ID</th><th>B: Risk</th><th>C: P</th><th>D: I</th><th>E: Score <code>=C2*D2</code></th><th>F: Rating</th><th>Owner</th></tr></thead>
            <tbody>
              <tr><td>2</td><td>R1</td><td>Scheduling link harder than expected</td><td>4</td><td>4</td><td>16</td><td>High</td><td>Marcus Lee</td></tr>
              <tr><td>3</td><td>R2</td><td>Low patient adoption</td><td>3</td><td>4</td><td>12</td><td>Medium</td><td>Tom Walsh</td></tr>
              <tr><td>4</td><td>R3</td><td>Patient data exposed by mistake</td><td>2</td><td>5</td><td>10</td><td>Medium</td><td>Aisha Bello</td></tr>
              <tr><td>5</td><td>R4</td><td>Front-desk staff do not trust the new system</td><td>3</td><td>3</td><td>9</td><td>Medium</td><td>Sofia Ramirez</td></tr>
              <tr><td>6</td><td>R5</td><td>App store review takes longer than planned</td><td>3</td><td>3</td><td>9</td><td>Medium</td><td>Elena Rossi</td></tr>
              <tr><td>7</td><td>R6</td><td>Key vendor developer leaves</td><td>2</td><td>4</td><td>8</td><td>Medium</td><td>Daniel Kim</td></tr>
            </tbody>
          </table>
          <p>The rating formula in F2 is <code>=IF(E2&gt;=15,"High",IF(E2&gt;=8,"Medium","Low"))</code>. Sort by score, so the biggest risks are at the top.</p>
          <p>Then choose one of four common responses:</p>
          <ul class="lc-list">
            <li><strong>Avoid:</strong> change the plan so the risk cannot happen. Testing uses only fake patient data, and no real data is shared before the BAA is signed (R3).</li>
            <li><strong>Reduce:</strong> make it less likely or less harmful. Marcus tests the scheduling link in the first week of task F, and the task has 5 days of float (R1).</li>
            <li><strong>Transfer:</strong> move the cost or effect to someone else, often by contract. The contract says Hudson App Studio must name a replacement developer within 10 working days (R6). The fixed price also means the vendor pays if the build takes longer.</li>
            <li><strong>Accept:</strong> do nothing now, but watch it and have a fall-back plan. Use this only for small risks.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Use AI to find risks you missed</h3>
          <p>AI is good at brainstorming. A useful method is a <strong>pre-mortem</strong>: imagine the project has already failed, then list the reasons why. People often find it easier to name problems this way.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>What are the risks of an app project?</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Run a pre-mortem. It is Sep 2027. Our patient booking app for 6 clinics
        in New York has failed: few patients use it and staff dislike it.
        Facts: built by an outside agency in 2-week sprints, linked to the
        clinics' existing scheduling system, pilot at 2 clinics, then all 6.
        Here is my current risk list: [paste risk names only].
        1. List 10 reasons the project failed that are NOT on my list.
        2. For each one: a probability and impact score from 1 to 5, with a reason.
        3. Suggest one response (avoid, reduce, transfer or accept) and a warning sign.
        Mark any reason that is really an assumption or a dependency.</code></pre>
          <p>AI risks are often too general, such as "poor communication". Keep only the ones that are real for your project, and write them in specific words. Scores from AI are only a starting point. Agree the final scores with the risk owners. Do not paste contract terms or patient details into a public AI tool.</p>
          <p><strong>Keep the log alive.</strong> On Tue 9 Mar 2027, the supplier's test connection was not ready. It opened on Fri 12 Mar. Daniel logged issue I1, with Marcus Lee as owner. Task F now finishes on Thu 8 Apr instead of Mon 5 Apr. That uses 3 of its 5 days of float, so no milestone moves. R1 stays High, because the hardest part of the link is still ahead.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: risk, assumption, issue or dependency?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each made-up log entry into the right part of a RAID log.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="risk" data-label="Risk"></div>
              <div data-sorter-target="bucket" data-bucket="assumption" data-label="Assumption"></div>
              <div data-sorter-target="bucket" data-bucket="issue" data-label="Issue"></div>
              <div data-sorter-target="bucket" data-bucket="dependency" data-label="Dependency"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="risk" data-why="It might happen in the future. It is not happening yet.">The app store review may take longer than planned.</li>
              <li data-bucket="assumption" data-why="The team believes this is true but has not proved it. Check it early.">The clinics will keep phone booking during and after the launch.</li>
              <li data-bucket="issue" data-why="It has already happened and is affecting the work now.">The supplier's test connection was not ready on Tue 9 Mar, so task F could not start.</li>
              <li data-bucket="dependency" data-why="One piece of work must wait for another to finish first.">Hudson App Studio can start design only after the contract and BAA are signed.</li>
              <li data-bucket="issue" data-why="The text was due last Friday and has not arrived. That is a problem today.">Bluefern Digital's client has not sent the website text, which was due last Friday.</li>
              <li data-bucket="assumption" data-why="Nobody has tested this yet. If it is wrong, it becomes an issue.">Northbridge Logistics believes the new scanners will work with the Wi-Fi in both warehouses.</li>
              <li data-bucket="dependency" data-why="Training needs something from an outside supplier first.">Northbridge's scanner supplier must deliver the scanners before staff training can start.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to run a pre-mortem and draft a RAID log for your project, or use the example. Then check every entry with the people who would own it.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an experienced project manager. Use simple English.

        My project: [a patient booking app (web + mobile) for a chain of 6 clinics in New York. An outside agency builds it in 2-week sprints. It links to the clinics' existing scheduling system. Pilot at 2 clinics, then launch at all 6].
        Team roles: [project manager, sponsor, IT lead, privacy officer, product owner, marketing manager, agency delivery lead].

        Please:
        1. Run a short pre-mortem: imagine the project failed. Give 8 reasons why.
        2. Turn them into a RAID log table with columns: ID, Type (Risk, Assumption, Issue or Dependency), Description, Probability 1-5, Impact 1-5, Score (P x I), Rating, Response (avoid, reduce, transfer or accept), Warning sign, Owner role.
        3. Rating rule: 15-25 High, 8-14 Medium, 1-7 Low. Sort risks by score, highest first.
        4. Leave P, I and Score blank for assumptions and dependencies.
        5. Write specific entries, not general ones like "poor communication".
        Do not invent names or facts about my organisation.</pre>
            <ul class="ai-try-checks">
              <li>Every score equals P x I, and every rating follows the rule.</li>
              <li>Risks, assumptions, issues and dependencies are sorted correctly.</li>
              <li>Each entry is specific to your project and has one owner role.</li>
              <li>Agree the final scores and owners with real people before you share the log.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A RAID log only helps if you keep it alive. Score risks with probability x impact, give every entry one owner and a response, and check assumptions early. Use AI to find risks you missed, then keep only the specific, real ones and agree the scores with the people who own them.
        </div>
      HTML
      starter_code: nil
    },
    9 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mgmt">Management</div>
          <h1 class="lc-title">Agile Basics with AI</h1>
        </div>
        <p class="lc-lead">Agile teams deliver work in small pieces and get feedback often. Instead of one big plan, they keep a list of work called a backlog. They write needs as short user stories, and work in short cycles called sprints. Many teams also use a Kanban board to see the work move. In this lesson you will learn these basics in plain words. You will also use AI to turn rough notes into clear user stories. You will see how Hudson App Studio builds the Maple Street Health booking app in 2-week sprints.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 330" role="img" aria-label="A Kanban board for Sprint 1 on Wed 31 Mar 2027. Backlog: cancel a booking, change a booking, text reminders. To do: confirmation email. In progress, with a limit of 3: book a time, staff bookings list. Testing: create account. Done: see free times. The sprint goal is that a patient can find a free time and book it, using test data only.">
            <g font-family="inherit" font-size="12" fill="#e2e0f0">
              <text x="14" y="24" font-weight="700" font-size="14">Sprint 1 board, Wed 31 Mar 2027 (made up)</text>
              <rect x="14" y="40" width="140" height="236" rx="8" fill="#1f1f44" stroke="#9b99b8" stroke-width="2"/>
              <text x="84" y="62" text-anchor="middle" font-weight="700" font-size="13">Backlog</text>
              <rect x="22" y="76" width="124" height="50" rx="6" fill="#27274e" stroke="#9b99b8"/>
              <text x="30" y="97">Cancel a booking</text>
              <text x="30" y="116" fill="#9b99b8" font-size="11">5 points</text>
              <rect x="22" y="138" width="124" height="50" rx="6" fill="#27274e" stroke="#9b99b8"/>
              <text x="30" y="159">Change a booking</text>
              <text x="30" y="178" fill="#9b99b8" font-size="11">5 points</text>
              <rect x="22" y="200" width="124" height="50" rx="6" fill="#27274e" stroke="#9b99b8"/>
              <text x="30" y="221">Text reminders</text>
              <text x="30" y="240" fill="#9b99b8" font-size="11">8 points</text>
              <rect x="162" y="40" width="140" height="236" rx="8" fill="#1f1f44" stroke="#3b82f6" stroke-width="2"/>
              <text x="232" y="62" text-anchor="middle" font-weight="700" font-size="13">To do</text>
              <rect x="170" y="76" width="124" height="50" rx="6" fill="#27274e" stroke="#3b82f6"/>
              <text x="178" y="97">Confirmation email</text>
              <text x="178" y="116" fill="#9b99b8" font-size="11">3 points</text>
              <rect x="310" y="40" width="140" height="236" rx="8" fill="#1f1f44" stroke="#f59e0b" stroke-width="2"/>
              <text x="380" y="62" text-anchor="middle" font-weight="700" font-size="12">In progress (max 3)</text>
              <rect x="318" y="76" width="124" height="50" rx="6" fill="#27274e" stroke="#f59e0b"/>
              <text x="326" y="97">Book a time</text>
              <text x="326" y="116" fill="#9b99b8" font-size="11">8 points</text>
              <rect x="318" y="138" width="124" height="50" rx="6" fill="#27274e" stroke="#f59e0b"/>
              <text x="326" y="159">Staff bookings list</text>
              <text x="326" y="178" fill="#9b99b8" font-size="11">5 points</text>
              <rect x="458" y="40" width="140" height="236" rx="8" fill="#1f1f44" stroke="#22d3ee" stroke-width="2"/>
              <text x="528" y="62" text-anchor="middle" font-weight="700" font-size="13">Testing</text>
              <rect x="466" y="76" width="124" height="50" rx="6" fill="#27274e" stroke="#22d3ee"/>
              <text x="474" y="97">Create account</text>
              <text x="474" y="116" fill="#9b99b8" font-size="11">5 points</text>
              <rect x="606" y="40" width="140" height="236" rx="8" fill="#1f1f44" stroke="#10b981" stroke-width="2"/>
              <text x="676" y="62" text-anchor="middle" font-weight="700" font-size="13">Done</text>
              <rect x="614" y="76" width="124" height="50" rx="6" fill="#27274e" stroke="#10b981"/>
              <text x="622" y="97">See free times</text>
              <text x="622" y="116" fill="#9b99b8" font-size="11">8 points</text>
              <text x="14" y="298" fill="#9b99b8">Sprint goal: a patient can find a free time and book it (test data only).</text>
              <text x="14" y="318" fill="#9b99b8">Work moves left to right. Pull a new card only when "In progress" has space.</text>
            </g>
          </svg>
          <figcaption>A Kanban board in the middle of Sprint 1 (made up). Each card is a user story with a size in story points.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The backlog and user stories</h3>
          <p>A <strong>product backlog</strong> is an ordered list of everything the product might need. The most important items are at the top. The <strong>product owner</strong> decides the order. At Maple Street Health, this is Priya Shah, the Patient Services Manager.</p>
          <p>Each item is often written as a <strong>user story</strong>: a short need from the user's point of view.</p>
          <pre><code>As a [type of user], I want [something], so that [reason].</code></pre>
          <p>Each story also needs <strong>acceptance criteria</strong>: clear tests that show when the story works. Many teams write them as "Given... When... Then...".</p>
          <table class="lc-table">
            <thead><tr><th>Weak story</th><th>Better story (made up)</th></tr></thead>
            <tbody>
              <tr><td>Booking page.</td><td><strong>As a</strong> patient, <strong>I want</strong> to see free appointment times at my clinic, <strong>so that</strong> I can pick a time that suits me.<br><strong>Given</strong> I choose the Harlem clinic and "annual check-up", <strong>when</strong> I open the calendar, <strong>then</strong> I see only free times for the next 4 weeks.</td></tr>
              <tr><td>Staff screen.</td><td><strong>As a</strong> front-desk staff member, <strong>I want</strong> to see today's online bookings, <strong>so that</strong> I know who is coming in.</td></tr>
            </tbody>
          </table>
          <p>Teams often size stories in <strong>story points</strong>. A story point is a rough size compared with other stories, not a number of hours. An 8-point story is about twice as big as a 4-point story.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Write user stories for a booking app.</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Here are notes from our requirements workshops with 6 clinics.
        [paste notes, with no patient names or details]
        Turn them into user stories: "As a..., I want..., so that...".
        Users: patient, front-desk staff, clinic manager.
        For each story, write 2 or 3 acceptance criteria as Given/When/Then.
        Split any story that is too big to finish in one 2-week sprint.
        List any note you could not turn into a story, and any question
        I should ask the product owner. Do not add features I did not mention.</code></pre>
          <p>AI writes fast, clear drafts. But only the product owner decides what goes in the backlog and in what order. The team that does the work gives the story points.</p>
        </div>
        <div class="lc-card">
          <h3>Sprints and Scrum in plain words</h3>
          <p><strong>Scrum</strong> is a popular agile framework. It is described in the free Scrum Guide. A <strong>sprint</strong> is a fixed period of one month or less. Many teams use 2 weeks. Scrum names three roles (the guide calls them accountabilities):</p>
          <ul class="lc-list">
            <li><strong>Product Owner:</strong> orders the backlog and decides what to build. Here: Priya Shah.</li>
            <li><strong>Scrum Master:</strong> helps the team use Scrum well and removes blockers. Here, Elena Rossi of Hudson App Studio does this work.</li>
            <li><strong>Developers:</strong> the people who build and test the work. Here: Hudson App Studio's team.</li>
          </ul>
          <table class="lc-table">
            <thead><tr><th>Event</th><th>What happens</th><th>At Maple Street Health (made up)</th></tr></thead>
            <tbody>
              <tr><td>Sprint planning</td><td>Agree a sprint goal and pick stories from the top of the backlog</td><td>Tue 23 Mar 2027, start of Sprint 1</td></tr>
              <tr><td>Daily Scrum (stand-up)</td><td>A 15-minute check: progress toward the goal, plan for the day, blockers</td><td>9:30 am every day, on a video call</td></tr>
              <tr><td>Sprint review</td><td>Show the working result and get feedback</td><td>Demo to Priya and 2 front-desk leads, using test data only</td></tr>
              <tr><td>Sprint retrospective</td><td>The team agrees what to improve next time</td><td>Last day of each sprint</td></tr>
            </tbody>
          </table>
          <p>Daniel runs a hybrid project, so the build fits inside his fixed schedule. Task G is 25 working days. It has three sprints: Sprint 1 (Tue 23 Mar to Mon 5 Apr) and Sprint 2 (Tue 6 Apr to Mon 19 Apr). Sprint 3 is a short 1-week sprint (Tue 20 Apr to Mon 26 Apr). The work for the staff admin screen and reminders is planned in the same sprints.</p>
          <p><strong>Velocity</strong> is the number of story points a team finishes in a sprint. In Sprint 1 the team planned 29 points and finished 26. The confirmation email story was not done, so it went back to the backlog. Daniel and Elena now plan Sprint 2 at about 26 points, not more. Each story must meet the <strong>definition of done</strong>, for example: tested on the web and on both phone types, test data only, and accepted by Priya.</p>
        </div>
        <div class="lc-card">
          <h3>Kanban boards</h3>
          <p>A <strong>Kanban board</strong> shows work as cards in columns, such as To do, In progress, Testing and Done. Cards move from left to right. A <strong>WIP limit</strong> (work in progress limit) is the most cards allowed in a column. When "In progress" is full, people finish work before they start new work.</p>
          <p>Kanban does not need sprints. Hannah Price's team at Bluefern Digital, a made-up London agency, uses a Kanban board for small change requests on a client's website. Requests arrive at any time. The team pulls the next card when it has space.</p>
          <table class="lc-table">
            <thead><tr><th></th><th>Scrum</th><th>Kanban</th></tr></thead>
            <tbody>
              <tr><td>Rhythm</td><td>Fixed sprints, often 2 weeks</td><td>A continuous flow of work</td></tr>
              <tr><td>Planning</td><td>At the start of each sprint</td><td>Whenever a card is pulled</td></tr>
              <tr><td>Limits work by</td><td>The sprint goal and the stories chosen</td><td>WIP limits on each column</td></tr>
              <tr><td>Good for</td><td>Building a new product step by step</td><td>Support work and steady requests</td></tr>
            </tbody>
          </table>
          <p>Tools such as Jira, Trello, Asana, Monday.com and Notion all offer boards. Some also have AI features to summarise or draft cards. Check each tool's current help pages, and use only tools your organisation has approved.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: put the sprint in order</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put the steps of one sprint at Maple Street Health in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Priya Shah puts the most important user stories at the top of the backlog.</li>
              <li data-order="2">In sprint planning, the team agrees a sprint goal and picks stories it can finish.</li>
              <li data-order="3">Every day, a 15-minute stand-up checks progress and blockers.</li>
              <li data-order="4">The developers build and test each story, using test data only.</li>
              <li data-order="5">In the sprint review, the team shows working screens to Priya and 2 front-desk leads.</li>
              <li data-order="6">In the retrospective, the team agrees one or two things to improve.</li>
              <li data-order="7">Unfinished stories go back to the backlog, and the next sprint starts.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Paste rough notes about what users need (or use the example). Ask AI to turn them into user stories with acceptance criteria. Then review them with your product owner.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an experienced agile coach. Use simple English.

        Product: [a patient booking app (web + mobile) for a chain of 6 clinics].
        Users: [patients, front-desk staff, clinic managers].
        Notes from workshops: [patients want to book outside opening hours; patients forget appointments; staff want to see who booked online today; some appointment types need 30 minutes, others 15; patients want to cancel without calling; managers want to block times for staff training].

        Please:
        1. Turn the notes into user stories: "As a..., I want..., so that...".
        2. Add 2 or 3 acceptance criteria to each story, as Given/When/Then.
        3. Suggest a size in story points (1, 2, 3, 5 or 8) and say why. Mark sizes "for the team to confirm".
        4. Split any story bigger than 8 points.
        5. Suggest an order for the backlog and a goal for the first 2-week sprint.
        6. List questions for the product owner.
        Do not add features that are not in my notes.</pre>
            <ul class="ai-try-checks">
              <li>Every story names a user, a need and a reason.</li>
              <li>Acceptance criteria are testable, not vague words like "easy".</li>
              <li>No new features were added beyond your notes.</li>
              <li>The product owner decides the order, and the team confirms the sizes.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Agile means small pieces, frequent feedback and an ordered backlog. Use AI to turn messy notes into clear user stories with acceptance criteria. Then let the product owner decide the order, the team size the work, and real velocity guide how much you plan for the next sprint.
        </div>
      HTML
      starter_code: nil
    },
    10 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mgmt">Management</div>
          <h1 class="lc-title">Status Reports and Updates</h1>
        </div>
        <p class="lc-lead">A status report tells people where the project is, what is coming next and what they need to decide. A good one fits on one page and is honest, even when the news is bad. In this lesson you will learn RAG status (Red, Amber, Green), how to write a clear one-page update, and how to change it for different readers. You will also use AI to turn rough notes into a report without letting it soften the truth. You will see the week 8 report Daniel Kim sent for the Maple Street Health booking app.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 380" role="img" aria-label="A one-page status report for week 8, Friday 26 March 2027. Overall status is Amber. Schedule is Amber because task F is 3 days late but has float. Budget is Green: 110,800 dollars spent of 286,000. Scope is Amber because a change request for a Spanish version is coming. Risks are Amber because R1 is still High. Below are three boxes: done this week, next two weeks, and decisions needed.">
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <rect x="10" y="10" width="740" height="60" rx="8" fill="#27274e" stroke="#9b99b8"/>
              <text x="26" y="36" font-weight="700" font-size="15">Online Booking App: weekly status</text>
              <text x="26" y="58" fill="#9b99b8" font-size="12">Week 8, Fri 26 Mar 2027. From Daniel Kim to Dr Lauren Mitchell</text>
              <rect x="570" y="24" width="164" height="32" rx="16" fill="#f59e0b"/>
              <text x="652" y="45" text-anchor="middle" font-weight="700" fill="#1f1f44">Overall: AMBER</text>
              <rect x="10" y="84" width="176" height="78" rx="8" fill="#1f1f44" stroke="#f59e0b" stroke-width="2"/>
              <circle cx="30" cy="106" r="7" fill="#f59e0b"/>
              <text x="44" y="111" font-weight="700">Schedule: AMBER</text>
              <text x="24" y="144" font-size="12">F 3 days late, has float</text>
              <rect x="198" y="84" width="176" height="78" rx="8" fill="#1f1f44" stroke="#10b981" stroke-width="2"/>
              <circle cx="218" cy="106" r="7" fill="#10b981"/>
              <text x="232" y="111" font-weight="700">Budget: GREEN</text>
              <text x="212" y="144" font-size="12">$110,800 of $286,000</text>
              <rect x="386" y="84" width="176" height="78" rx="8" fill="#1f1f44" stroke="#f59e0b" stroke-width="2"/>
              <circle cx="406" cy="106" r="7" fill="#f59e0b"/>
              <text x="420" y="111" font-weight="700">Scope: AMBER</text>
              <text x="400" y="144" font-size="12">Spanish request coming</text>
              <rect x="574" y="84" width="176" height="78" rx="8" fill="#1f1f44" stroke="#f59e0b" stroke-width="2"/>
              <circle cx="594" cy="106" r="7" fill="#f59e0b"/>
              <text x="608" y="111" font-weight="700">Risks: AMBER</text>
              <text x="588" y="144" font-size="12">R1 is still High</text>
              <rect x="10" y="176" width="240" height="140" rx="8" fill="#1f1f44" stroke="#10b981" stroke-width="2"/>
              <text x="24" y="200" font-weight="700">Done this week</text>
              <text x="24" y="230" font-size="12">M3 designs approved Mon 22 Mar</text>
              <text x="24" y="256" font-size="12">Sprint 1 started Tue 23 Mar</text>
              <text x="24" y="282" font-size="12">Admin screen work started</text>
              <rect x="260" y="176" width="240" height="140" rx="8" fill="#1f1f44" stroke="#3b82f6" stroke-width="2"/>
              <text x="274" y="200" font-weight="700">Next 2 weeks</text>
              <text x="274" y="230" font-size="12">Sprint 1 review Mon 5 Apr</text>
              <text x="274" y="256" font-size="12">F forecast to finish Thu 8 Apr</text>
              <text x="274" y="282" font-size="12">Steering meeting Wed 7 Apr</text>
              <rect x="510" y="176" width="240" height="140" rx="8" fill="#1f1f44" stroke="#ec4899" stroke-width="2"/>
              <text x="524" y="200" font-weight="700">Decisions needed</text>
              <text x="524" y="230" font-size="12">None this week</text>
              <text x="524" y="256" font-size="12">Spanish change request will</text>
              <text x="524" y="282" font-size="12">go to steering on Wed 7 Apr</text>
              <text x="10" y="342" fill="#9b99b8" font-size="12">Green: on track. Amber: at risk, but the team has a plan to recover.</text>
              <text x="10" y="364" fill="#9b99b8" font-size="12">Red: a milestone, the budget or scope will be missed, with no plan yet. Sponsor decides.</text>
            </g>
          </svg>
          <figcaption>Daniel's one-page status report for week 8 (made up). The reader sees the overall status, the reasons and any decisions in under a minute.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>RAG status: clear rules, honest colours</h3>
          <p><strong>RAG status</strong> uses three colours to show the health of a project: Red, Amber and Green. Many reports give one colour for the whole project and one for each area, such as schedule, budget, scope and risks.</p>
          <p>A colour is only useful if everyone uses the same rules. Agree them with your sponsor at the start. Daniel uses these:</p>
          <table class="lc-table">
            <thead><tr><th>Colour</th><th>Daniel's rule</th><th>What the sponsor should do</th></tr></thead>
            <tbody>
              <tr><td><strong>Green</strong></td><td>On track. No milestone, budget or scope problem expected.</td><td>Nothing. Read for information.</td></tr>
              <tr><td><strong>Amber</strong></td><td>At risk. There is a problem, but the team has a plan to recover it, for example by using float.</td><td>Watch it. Ask questions if needed.</td></tr>
              <tr><td><strong>Red</strong></td><td>A milestone, the budget or the scope will be missed, and there is no recovery plan yet.</td><td>Make a decision, usually at the next meeting.</td></tr>
            </tbody>
          </table>
          <p>Three rules for honest reporting:</p>
          <ul class="lc-list">
            <li><strong>Report the forecast, not the effort.</strong> "The team worked hard" is not a status. "Task F will finish 3 days late" is.</li>
            <li><strong>Raise bad news early.</strong> An Amber today is better than a surprise Red next month. Sponsors can help only if they know.</li>
            <li><strong>Never change a colour to keep people happy.</strong> If the facts say Amber, write Amber, and say what you are doing about it.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>A one-page update: Daniel's week 8 report</h3>
          <p>Daniel writes the report every Friday for Dr Lauren Mitchell, the sponsor. Here is the full text (all made up):</p>
          <table class="lc-table">
            <thead><tr><th>Section</th><th>Week 8, Fri 26 Mar 2027</th></tr></thead>
            <tbody>
              <tr><td>Overall</td><td><strong>Amber.</strong> All milestones are still on time. Two areas need watching.</td></tr>
              <tr><td>Schedule: Amber</td><td>M3 (screen designs approved) was met on Mon 22 Mar. Sprint 1 started Tue 23 Mar. Issue I1: the supplier's test connection opened 3 working days late, so task F will finish Thu 8 Apr, not Mon 5 Apr. This uses 3 of its 5 days of float. Full launch go-live is still Mon 14 Jun.</td></tr>
              <tr><td>Budget: Green</td><td>Spent to date: $110,800 of $286,000. Planned to date: $113,200. The $2,400 gap is timing only, because the contract developer started 3 days late. It is not a saving. Forecast at completion: $260,000. Contingency of $26,000 is unused.</td></tr>
              <tr><td>Scope: Amber</td><td>Front-desk teams report that many patients ask for Spanish. Sofia Ramirez will raise a change request for a Spanish version on Mon 29 Mar.</td></tr>
              <tr><td>Risks: Amber</td><td>R1 (scheduling link) is still High, score 16. Marcus Lee is testing the hardest part of the link first.</td></tr>
              <tr><td>Next 2 weeks</td><td>Sprint 1 review on Mon 5 Apr. Task F forecast to finish Thu 8 Apr. Steering meeting on Wed 7 Apr.</td></tr>
              <tr><td>Decisions needed</td><td>None this week. The Spanish change request will need a decision at the steering meeting on Wed 7 Apr.</td></tr>
            </tbody>
          </table>
          <p>The spend figure comes from the budget sheet. It is $33,600 + $50,400 (the first two vendor payments) + $18,000 (licence) + $8,800 (11 developer days x $800) = $110,800. Daniel checks every number against the sheet before he sends the report.</p>
          <p>Change the report for each reader. The sponsor gets this weekly page. Robert Chen, the CEO, gets a shorter monthly one-page summary with five headlines: overall colour, milestones, budget, top risk and decisions. The front-desk staff get a short newsletter about what changes for them and when.</p>
        </div>
        <div class="lc-card">
          <h3>Use AI to draft, not to decide the colour</h3>
          <p>AI is good at turning messy notes, task lists and chat threads into a short, clear report. Tools such as Microsoft 365 Copilot and the AI in Google Workspace, Slack and Teams can also summarise threads and meetings. Features change often, so check each tool's current help pages.</p>
          <p>But AI tends to make reports sound positive. It may change "3 days late" into "slightly behind" or turn Amber into Green. You decide the colours. The AI only writes.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Write a status update from these notes.</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Write a one-page status report for my sponsor, in simple English.
        Use ONLY the facts in my notes. Do not invent progress or dates.
        Keep these RAG colours exactly as I give them; do not change them:
        Overall Amber, Schedule Amber, Budget Green, Scope Amber, Risks Amber.
        Sections: Overall, Schedule, Budget, Scope, Risks, Next 2 weeks,
        Decisions needed. Each section: 1 to 3 short sentences.
        Keep exact numbers (days late, dollars). Do not soften bad news.
        At the end, list anything in my notes that seems to conflict.
        Notes: [paste notes, with no patient or personal data]</code></pre>
          <p>Before you send it, check that every number matches your schedule and budget sheet. Check that no colour has changed and no problem was left out. Then read it as the sponsor would: is it clear what they must decide?</p>
        </div>
        <div class="lc-card">
          <h3>Activity: Green, Amber or Red?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Use Daniel's rules to give each made-up situation a RAG colour.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="green" data-label="Green"></div>
              <div data-sorter-target="bucket" data-bucket="amber" data-label="Amber"></div>
              <div data-sorter-target="bucket" data-bucket="red" data-label="Red"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="green" data-why="Everything is on plan. There is nothing to watch or decide.">All tasks this week are on plan, and spend matches the plan.</li>
              <li data-bucket="amber" data-why="There is a real problem, but float covers it and no milestone moves. The team has a plan.">Task F is 3 days late, but it has float and no milestone moves.</li>
              <li data-bucket="red" data-why="A milestone will be missed unless the sponsor decides on money or scope.">The vendor says the build will finish 2 weeks late. The pilot date will move unless the sponsor adds money or cuts scope.</li>
              <li data-bucket="green" data-why="The gap is timing only. The forecast at completion has not changed. Say so clearly in the report.">Spend is $2,400 below plan, only because a contractor started 3 days late.</li>
              <li data-bucket="red" data-why="The pilot date will be missed. Only senior people can solve this, so it needs a sponsor decision.">The privacy officer cannot sign off, so the pilot cannot start on the planned date. There is no plan yet.</li>
              <li data-bucket="amber" data-why="A serious risk needs watching, but it has an owner and a plan, and no date has moved.">A new risk scores 16. It has an owner and a response, and no date has moved yet.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Paste your rough weekly notes (or use the example). Ask AI to write a one-page status report that keeps your colours and numbers. Then check it line by line.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an experienced project manager. Use simple English.

        Write a one-page weekly status report for my sponsor.
        Project: [online booking app for a chain of 6 clinics]. Week: [8, Fri 26 Mar 2027].
        RAG colours (keep exactly; do not change them): [Overall Amber, Schedule Amber, Budget Green, Scope Amber, Risks Amber].
        My notes: [screen designs approved Mon 22 Mar; sprint 1 started Tue 23 Mar; supplier test link opened 3 working days late, so the link task finishes Thu 8 Apr not Mon 5 Apr, using 3 of 5 float days; full launch still Mon 14 Jun; spent $110,800 of $286,000, planned $113,200, gap is timing only; clinic teams want a Spanish version, change request coming Mon 29 Mar; top risk scheduling link still High; steering meeting Wed 7 Apr].

        Please:
        1. Sections: Overall, Schedule, Budget, Scope, Risks, Next 2 weeks, Decisions needed. 1 to 3 short sentences each.
        2. Keep every number and date exactly. Do not soften bad news.
        3. Then write a 5-line version for the CEO.
        4. List any conflicts or missing facts in my notes.
        Do not invent facts.</pre>
            <ul class="ai-try-checks">
              <li>The colours are exactly the ones you gave.</li>
              <li>Every number and date matches your notes, for example $110,800 and Thu 8 Apr.</li>
              <li>Bad news is stated plainly, with the action being taken.</li>
              <li>"Decisions needed" is clear, even if the answer is "none this week".</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A status report is useful only if people can trust it. Agree clear RAG rules, report forecasts not effort, and raise bad news early with a plan. Let AI turn your notes into clear words, but you set the colours and check every number before you send it.
        </div>
      HTML
      starter_code: nil
    },
    11 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mgmt">Management</div>
          <h1 class="lc-title">Managing Change Requests</h1>
        </div>
        <p class="lc-lead">Every project gets new requests after the plan is agreed. Some are small. Some change the end date or the budget. A <strong>change request</strong> (a written request to change the agreed scope, time or cost) makes sure the right person decides, with the facts in front of them. In this lesson you will learn a simple change process. You will use AI to draft an impact assessment and an options paper. You will also check the dates and money yourself in a spreadsheet. You will follow Daniel Kim as Maple Street Health decides whether to add a Spanish version of its booking app.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 340" role="img" aria-label="A six-step change process: 1 request, who asks and why; 2 log it with an ID in the change log; 3 assess the impact on time, cost and risk; 4 write 2 or 3 options; 5 the sponsor or product owner decides; 6 update the plan and tell everyone. Below, change request CR-01, a Spanish version, raised on Mon 29 Mar 2027, with three options. Option A: approve now, 8 more days and 22,000 dollars, finish Fri 9 Jul, 4,000 dollars of contingency left; this option was chosen on Wed 7 Apr. Option B: phase 2 from September 2027, no delay now, 22,000 dollars from a later budget. Option C: add a second developer, 3 more days and 32,000 dollars, finish Thu 1 Jul, needs 6,000 dollars extra.">
            <defs><marker id="prj11a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <text x="380" y="24" font-weight="700" fill="#fcd34d" text-anchor="middle">A simple change process</text>
              <g text-anchor="middle">
                <rect x="12" y="40" width="112" height="58" rx="8" fill="#27274e" stroke="#3b82f6"/>
                <text x="68" y="64" font-weight="700">1 Request</text>
                <text x="68" y="84" font-size="11" fill="#9b99b8">who and why</text>
                <rect x="137" y="40" width="112" height="58" rx="8" fill="#27274e" stroke="#3b82f6"/>
                <text x="193" y="64" font-weight="700">2 Log it</text>
                <text x="193" y="84" font-size="11" fill="#9b99b8">ID in change log</text>
                <rect x="262" y="40" width="112" height="58" rx="8" fill="#27274e" stroke="#8b5cf6"/>
                <text x="318" y="64" font-weight="700">3 Impact</text>
                <text x="318" y="84" font-size="11" fill="#9b99b8">time, cost, risk</text>
                <rect x="387" y="40" width="112" height="58" rx="8" fill="#27274e" stroke="#8b5cf6"/>
                <text x="443" y="64" font-weight="700">4 Options</text>
                <text x="443" y="84" font-size="11" fill="#9b99b8">2 or 3 choices</text>
                <rect x="512" y="40" width="112" height="58" rx="8" fill="#27274e" stroke="#f59e0b"/>
                <text x="568" y="64" font-weight="700">5 Decide</text>
                <text x="568" y="84" font-size="11" fill="#9b99b8">sponsor or PO</text>
                <rect x="637" y="40" width="112" height="58" rx="8" fill="#27274e" stroke="#10b981"/>
                <text x="693" y="64" font-weight="700">6 Update</text>
                <text x="693" y="84" font-size="11" fill="#9b99b8">plan, tell all</text>
              </g>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#prj11a)">
                <line x1="125" y1="69" x2="135" y2="69"/>
                <line x1="250" y1="69" x2="260" y2="69"/>
                <line x1="375" y1="69" x2="385" y2="69"/>
                <line x1="500" y1="69" x2="510" y2="69"/>
                <line x1="625" y1="69" x2="635" y2="69"/>
              </g>
              <text x="380" y="134" font-weight="700" fill="#fcd34d" text-anchor="middle">CR-01: Spanish version (raised Mon 29 Mar 2027)</text>
              <rect x="20" y="150" width="230" height="130" rx="8" fill="#1f1f44" stroke="#10b981" stroke-width="2.5"/>
              <text x="36" y="176" font-weight="700">A: Approve now</text>
              <text x="36" y="202" font-size="12">+8 days, +$22,000</text>
              <text x="36" y="224" font-size="12">Finish Fri 9 Jul 2027</text>
              <text x="36" y="246" font-size="12">Contingency left: $4,000</text>
              <text x="36" y="268" font-size="12" fill="#6ee7b7">Chosen on Wed 7 Apr</text>
              <rect x="265" y="150" width="230" height="130" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="281" y="176" font-weight="700">B: Phase 2 (Sep 2027)</text>
              <text x="281" y="202" font-size="12">No delay now</text>
              <text x="281" y="224" font-size="12">$22,000 from a later budget</text>
              <text x="281" y="246" font-size="12">Spanish speakers wait</text>
              <rect x="510" y="150" width="230" height="130" rx="8" fill="#1f1f44" stroke="#ec4899"/>
              <text x="526" y="176" font-weight="700">C: Add a 2nd developer</text>
              <text x="526" y="202" font-size="12">+3 days, +$32,000</text>
              <text x="526" y="224" font-size="12">Finish Thu 1 Jul 2027</text>
              <text x="526" y="246" font-size="12">Needs $6,000 extra money</text>
              <text x="380" y="318" font-size="12" fill="#9b99b8" text-anchor="middle">AI can draft the options. You check the numbers. The sponsor decides.</text>
            </g>
          </svg>
          <figcaption>A change request goes through six steps. For CR-01, Daniel gave the sponsor three options with checked dates and costs. She chose Option A.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>What a change request is, and who decides</h3>
          <p>Once the plan is approved, it becomes the <strong>baseline</strong> (the agreed version of scope, dates and budget). You measure progress against it. A change request asks to change the baseline.</p>
          <p>Without a process, small extras pile up. This is called <strong>scope creep</strong>. Nobody decides to be late, but the project ends late anyway.</p>
          <p>Agree the <strong>change authority</strong> (who may approve which kind of change) at the start. Daniel's charter sets three levels:</p>
          <table class="lc-table">
            <thead><tr><th>Kind of change</th><th>Who decides</th><th>Example (made up)</th></tr></thead>
            <tbody>
              <tr><td>Swap work inside the sprint backlog. No new cost. No milestone moves.</td><td>Priya Shah, product owner</td><td>Add a "reason for visit" question and move "save my favourite clinic" to later</td></tr>
              <tr><td>Uses float only, no milestone moves, costs $2,000 or less</td><td>Daniel Kim, project manager</td><td>Start the launch campaign 2 days later (task Q has 8 days of float)</td></tr>
              <tr><td>Moves a milestone, costs more than $2,000, or changes the scope in the charter</td><td>Dr Lauren Mitchell, sponsor, at the steering group</td><td>Add a Spanish version of the app</td></tr>
            </tbody>
          </table>
          <p><strong>Float</strong> means how many days a task can slip without moving the end date. Every request goes in the <strong>change log</strong> (a list of all change requests, with ID, date, owner, impact, decision and status). Log the small ones too. Here is Daniel's log in April 2027:</p>
          <table class="lc-table">
            <thead><tr><th>ID</th><th>Raised</th><th>Request</th><th>Impact</th><th>Decision</th></tr></thead>
            <tbody>
              <tr><td>CR-01</td><td>Mon 29 Mar, Sofia Ramirez</td><td>Spanish version of the app and reminders</td><td>+8 working days on task G (critical), +$22,000</td><td>Approved (Option A) by the sponsor, Wed 7 Apr</td></tr>
              <tr><td>CR-02</td><td>Tue 13 Apr, Dr Omar Haddad</td><td>"Reason for visit" question with 5 choices when booking</td><td>None: Priya swapped it for a lower-value story in the same sprint</td><td>Approved by Priya Shah, Tue 13 Apr</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Assess the impact: time, cost, scope, quality and risk</h3>
          <p>Sofia Ramirez, the Clinic Operations Manager, raised CR-01. Front-desk teams say many patients ask for Spanish. Daniel asked Elena Rossi at Hudson App Studio for an estimate. Then he worked out the impact:</p>
          <ul class="lc-list">
            <li><strong>Time:</strong> task G (build the app) needs 8 more working days. G is on the <strong>critical path</strong> (the chain of tasks with no float). So the end date moves by 8 working days.</li>
            <li><strong>Cost:</strong> translation $6,000 plus vendor work of 8 days x $2,000 = $16,000. Total $22,000.</li>
            <li><strong>Scope:</strong> the charter listed Spanish as out of scope. Approving it changes the charter.</li>
            <li><strong>Quality and risk:</strong> Spanish reminder texts need a privacy check by Aisha Bello. The test team needs a Spanish speaker for user testing.</li>
          </ul>
          <p>Do the date and money maths in a spreadsheet, not in your head and not in a chat. Put the 4 project holidays in cells H2:H5 (15 Feb, 31 May, 18 Jun and 5 Jul 2027). These formulas work in Excel and Google Sheets:</p>
          <pre><code>Cost of option A:          =6000+8*2000                     gives 22000
        Contingency left after A:  =26000-22000                     gives 4000
        New finish with A:         =WORKDAY(DATE(2027,6,28),8,H2:H5) gives Fri 9 Jul 2027
        New finish with C:         =WORKDAY(DATE(2027,6,28),3,H2:H5) gives Thu 1 Jul 2027
        Contingency left after C:  =26000-32000                     gives -6000</code></pre>
          <p>WORKDAY adds working days and skips weekends and the holidays you list. Without the holiday list, option A would show Thu 8 Jul. That is one day wrong, because Mon 5 Jul is a holiday. Format the cell as a date to see it.</p>
        </div>
        <div class="lc-card">
          <h3>Use AI to draft the options paper</h3>
          <p>AI is good at turning your facts into a clear, fair options paper for the sponsor. It is weak at date maths. It may also take a side without telling you.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Should we add Spanish to our booking app? Write it up for my boss.</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>You are helping a project manager write a one-page options paper.
        Change request CR-01: add a Spanish version of a patient booking app
        and its reminder messages. Raised by the Clinic Operations Manager.
        Reason: front-desk teams say many patients ask for Spanish.
        Facts (already checked, do not change them):
        Option A: approve now. +8 working days, +$22,000. Finish Fri 9 Jul 2027.
          Contingency left $4,000.
        Option B: phase 2 from Sep 2027. No delay. $22,000 from a later budget.
        Option C: add a 2nd developer. +3 days, +$32,000. Finish Thu 1 Jul 2027.
          $6,000 more than the contingency.
        Write: the request, why it matters, a table of the 3 options
        (time, cost, scope, risk, who is affected), questions for the sponsor.
        Stay neutral. Do not recommend. Do not add new numbers.</code></pre>
          <p>Daniel checked the draft against his spreadsheet. He added his own recommendation in a separate, clearly labelled paragraph. At the steering meeting on Wed 7 Apr 2027, Dr Lauren Mitchell chose <strong>Option A</strong>, paid from contingency.</p>
          <p>After a decision, finish the job. Update the baseline: the pilot moves to Thu 10 Jun, full launch go-live to Fri 25 Jun and the end date to Fri 9 Jul 2027. Update the budget sheet, the charter and the RAID log. Then tell everyone affected, including the clinic managers, whose training dates move.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: does this need a formal change request?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Use Daniel's change authority rules. Sort each made-up request.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="cr" data-label="Change request to the sponsor"></div>
              <div data-sorter-target="bucket" data-bucket="team" data-label="Team can decide (still log it)"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="cr" data-why="It was out of scope in the charter, adds $22,000 and moves the end date.">Sofia Ramirez asks for a Spanish version of the app and reminders.</li>
              <li data-bucket="cr" data-why="Online payments are out of scope. Adding them changes scope, cost and risk.">Dr Omar Haddad asks patients to pay their copay inside the app.</li>
              <li data-bucket="team" data-why="It is a swap inside the sprint backlog with no new cost or date change, so the product owner decides.">Priya Shah swaps two stories of the same size in the next sprint.</li>
              <li data-bucket="team" data-why="Task Q has 8 days of float. A 2-day move uses float only and changes no milestone.">Tom Walsh wants to start the launch campaign 2 days later.</li>
              <li data-bucket="cr" data-why="The campaign is in the charter scope. Cutting it may hurt the 35% online goal, so the sponsor decides.">Kevin O'Brien asks to cut the patient launch campaign by $5,000.</li>
              <li data-bucket="cr" data-why="Moving a milestone always needs the sponsor, even for a few days.">Elena Rossi asks to move the app build milestone by 4 days.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Use a real or practice change request. Ask AI to write an impact assessment and a neutral options paper. Then check every date and number in a spreadsheet.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an experienced project manager. Use simple English.

        Project: [an online booking app for a chain of 6 clinics in New York]
        Baseline: [finish Mon 28 Jun 2027, budget $286,000, contingency $26,000]
        Change request: [add a Spanish version of the app and reminder messages]
        Raised by: [Clinic Operations Manager]  Reason: [many patients ask for Spanish]
        Estimate: [+8 working days on a critical task, translation $6,000, vendor 8 days x $2,000]
        Holidays: [Mon 31 May, Fri 18 Jun, Mon 5 Jul 2027]

        Please:
        1. Write an impact assessment table: time, cost, scope, quality, risk, people affected.
        2. Suggest 3 options (approve now, do it later, or a third choice). For each, give time, cost, benefits and risks.
        3. Show your date and cost working step by step, and mark each result "to check".
        4. List 4 questions the sponsor should ask before deciding.
        5. Say what must be updated after the decision (plan, budget, logs, people to tell).

        Stay neutral. Do not recommend an option. Mark any assumption clearly.</pre>
            <ul class="ai-try-checks">
              <li>Recalculate every date with WORKDAY and a holiday list. AI date maths is often wrong.</li>
              <li>Check the costs add up and the contingency left is correct.</li>
              <li>The options are fair, and none is written to look worse on purpose.</li>
              <li>The "after the decision" list includes telling the people affected.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A change request is not a "no". It is a way to make the trade-off visible, so the right person decides with checked facts. Let AI draft the options paper. Do the dates and money in a spreadsheet yourself, and update the plan and tell people as soon as the decision is made.
        </div>
      HTML
      starter_code: nil
    },
    12 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mgmt">Management</div>
          <h1 class="lc-title">Running Project Meetings</h1>
        </div>
        <p class="lc-lead">Project meetings cost a lot of people's time. A good meeting has a clear purpose, a short agenda and a written record of decisions and actions. In this lesson you will learn three common project meetings: the daily stand-up, the weekly team meeting and the steering meeting. You will use AI to prepare agendas and to turn notes or a transcript into clear minutes. You will also learn what you must check before you send them. You will follow Daniel Kim's steering meeting on Wed 7 Apr 2027, where the sponsor decided on the Spanish version.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 340" role="img" aria-label="Three meeting types. Daily stand-up: 15 minutes at 9:30 with the Hudson team and Daniel; done, next, blocked; output is a list of blockers. Weekly core team: 45 minutes on Tuesday at 10:00 with Daniel, Priya, Marcus, Tom and Elena; output is actions and risks. Monthly steering: 60 minutes with the sponsor, CEO, finance and privacy; output is decisions. Below, a flow: agenda and papers sent 2 days before, the meeting where people decide and assign, an AI draft of the notes from the transcript, and you check and send the decisions and actions.">
            <defs><marker id="prj12a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <text x="380" y="24" font-weight="700" fill="#fcd34d" text-anchor="middle">Three project meetings (Maple Street Health, made up)</text>
              <rect x="20" y="40" width="230" height="146" rx="8" fill="#1f1f44" stroke="#10b981"/>
              <text x="36" y="66" font-weight="700">Daily stand-up</text>
              <text x="36" y="92" font-size="12">15 minutes at 9:30</text>
              <text x="36" y="114" font-size="12">Hudson team and Daniel</text>
              <text x="36" y="136" font-size="12">Done? Next? Blocked?</text>
              <text x="36" y="168" font-size="12" fill="#6ee7b7">Output: blockers list</text>
              <rect x="265" y="40" width="230" height="146" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="281" y="66" font-weight="700">Weekly core team</text>
              <text x="281" y="92" font-size="12">45 minutes, Tuesday 10:00</text>
              <text x="281" y="114" font-size="12">Daniel, Priya, Marcus,</text>
              <text x="281" y="136" font-size="12">Tom and Elena</text>
              <text x="281" y="168" font-size="12" fill="#93c5fd">Output: actions, risks</text>
              <rect x="510" y="40" width="230" height="146" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="526" y="66" font-weight="700">Monthly steering</text>
              <text x="526" y="92" font-size="12">60 minutes, video call</text>
              <text x="526" y="114" font-size="12">Sponsor, CEO, finance,</text>
              <text x="526" y="136" font-size="12">privacy, Daniel</text>
              <text x="526" y="168" font-size="12" fill="#fcd34d">Output: decisions</text>
              <g text-anchor="middle">
                <rect x="20" y="226" width="160" height="56" rx="8" fill="#27274e" stroke="#8b5cf6"/>
                <text x="100" y="249" font-weight="700">Agenda, papers</text>
                <text x="100" y="269" font-size="11" fill="#9b99b8">sent 2 days before</text>
                <rect x="210" y="226" width="160" height="56" rx="8" fill="#27274e" stroke="#8b5cf6"/>
                <text x="290" y="249" font-weight="700">Meeting</text>
                <text x="290" y="269" font-size="11" fill="#9b99b8">decide and assign</text>
                <rect x="400" y="226" width="160" height="56" rx="8" fill="#27274e" stroke="#ec4899"/>
                <text x="480" y="249" font-weight="700">AI draft notes</text>
                <text x="480" y="269" font-size="11" fill="#9b99b8">from transcript</text>
                <rect x="590" y="226" width="160" height="56" rx="8" fill="#27274e" stroke="#10b981"/>
                <text x="670" y="249" font-weight="700">You check, send</text>
                <text x="670" y="269" font-size="11" fill="#9b99b8">decisions, actions</text>
              </g>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#prj12a)">
                <line x1="182" y1="254" x2="207" y2="254"/>
                <line x1="372" y1="254" x2="397" y2="254"/>
                <line x1="562" y1="254" x2="587" y2="254"/>
              </g>
              <text x="380" y="318" font-size="12" fill="#9b99b8" text-anchor="middle">Every meeting ends with written decisions and actions, each with an owner and a date.</text>
            </g>
          </svg>
          <figcaption>Each project meeting has a different purpose, length and output. AI can draft the notes, but you check them before anyone sees them.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Three meetings, three purposes</h3>
          <table class="lc-table">
            <thead><tr><th>Meeting</th><th>Purpose</th><th>Good habits</th><th>Common problem</th></tr></thead>
            <tbody>
              <tr><td><strong>Daily stand-up</strong> (a short daily check-in, often standing)</td><td>Each person says what they finished, what is next and what blocks them.</td><td>15 minutes or less. Same time every day. Solve problems after the meeting with only the people needed.</td><td>It turns into a long status report for the manager.</td></tr>
              <tr><td><strong>Weekly team meeting</strong></td><td>Check progress against the plan. Update risks and actions. Agree next week's priorities.</td><td>Start with last week's actions. Review the RAID log (risks, assumptions, issues and dependencies) top items only.</td><td>The same action is "in progress" for weeks.</td></tr>
              <tr><td><strong>Steering meeting</strong> (senior people who guide the project and make big decisions)</td><td>Decide on changes, money and big risks.</td><td>Send papers 2 working days before. Put decisions near the top of the agenda. Ask for a clear decision.</td><td>The group "notes" an item but nobody decides.</td></tr>
            </tbody>
          </table>
          <p>Before you book any meeting, ask what decision or output you need. If an email or a shared update can do the job, skip the meeting.</p>
        </div>
        <div class="lc-card">
          <h3>Plan the agenda with AI</h3>
          <p>An <strong>agenda</strong> is the list of topics, with who leads each one and how long it takes. Daniel asked AI to draft the agenda for the steering meeting. He gave it the purpose and the time limit.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Make an agenda for my steering meeting.</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Draft a 60-minute agenda for a project steering meeting on Wed 7 Apr 2027.
        Project: patient booking app for 6 clinics. Attendees: sponsor (chair), CEO,
        Finance Director, Privacy Officer, project manager. Clinic Operations Manager
        joins for the CR-01 item only.
        Main purpose: decide on change request CR-01 (add a Spanish version).
        Also: status, budget, top risks.
        For each item give: time, who leads, and the output (decision, note or action).
        Put the decision item early, while people are fresh. End with a read-back
        of decisions and actions. Times must add up to exactly 60 minutes.</code></pre>
          <p>Daniel checked the times and sent this version on Mon 5 Apr, two working days before:</p>
          <table class="lc-table">
            <thead><tr><th>#</th><th>Item</th><th>Lead</th><th>Time</th><th>Output</th></tr></thead>
            <tbody>
              <tr><td>1</td><td>Status and RAG rating (red, amber or green)</td><td>Daniel Kim</td><td>10 min</td><td>Note</td></tr>
              <tr><td>2</td><td>CR-01: Spanish version, three options</td><td>Sofia Ramirez, Daniel Kim</td><td>25 min</td><td>Decision</td></tr>
              <tr><td>3</td><td>Budget and contingency</td><td>Kevin O'Brien</td><td>10 min</td><td>Note</td></tr>
              <tr><td>4</td><td>Top risks</td><td>Daniel Kim</td><td>10 min</td><td>Actions</td></tr>
              <tr><td>5</td><td>Read back decisions and actions</td><td>Dr Lauren Mitchell</td><td>5 min</td><td>Agreed list</td></tr>
            </tbody>
          </table>
          <p>The times add up to 10 + 25 + 10 + 10 + 5 = 60 minutes. The AI placed the decision as item 3 at first. Daniel moved it to item 2, while people were fresh.</p>
        </div>
        <div class="lc-card">
          <h3>From transcript to minutes: what to check</h3>
          <p>Microsoft Teams (with Copilot or Teams Premium) and Zoom (with AI Companion) can create a meeting summary with action items. They usually need transcription or recording turned on. Features and licences change, so check your tool's current help pages.</p>
          <p>Follow these rules:</p>
          <ul class="lc-list">
            <li>Tell everyone at the start before you record or transcribe. Rules about recording differ between places. Follow your organisation's policy.</li>
            <li>Use only AI tools your organisation has approved. Steering papers are confidential. Never put patient details in meeting notes.</li>
            <li>Treat the AI summary as a draft. It can name the wrong person, miss a condition or turn a discussion into a "decision".</li>
          </ul>
          <p>Daniel's checked minutes recorded two decisions and five actions:</p>
          <table class="lc-table">
            <thead><tr><th>ID</th><th>Decision or action</th><th>Owner</th><th>Due</th></tr></thead>
            <tbody>
              <tr><td>D1</td><td>CR-01 Option A approved: Spanish version now, $22,000 paid from contingency. Contingency left: $4,000.</td><td>Dr Lauren Mitchell (decided)</td><td>Wed 7 Apr</td></tr>
              <tr><td>D2</td><td>New baseline dates: pilot Thu 10 Jun, full launch Fri 25 Jun, project closed Fri 9 Jul 2027.</td><td>Dr Lauren Mitchell (decided)</td><td>Wed 7 Apr</td></tr>
              <tr><td>A1</td><td>Update the schedule, charter and RAID log. Send the new baseline to all.</td><td>Daniel Kim</td><td>Fri 9 Apr</td></tr>
              <tr><td>A2</td><td>Move $22,000 from contingency in the budget sheet.</td><td>Kevin O'Brien</td><td>Fri 9 Apr</td></tr>
              <tr><td>A3</td><td>Send the English patient texts for translation.</td><td>Priya Shah</td><td>Wed 14 Apr</td></tr>
              <tr><td>A4</td><td>Tell clinic managers the new training dates (Fri 28 May to Wed 9 Jun).</td><td>Sofia Ramirez</td><td>Fri 16 Apr</td></tr>
              <tr><td>A5</td><td>Privacy check of the Spanish reminder texts.</td><td>Aisha Bello</td><td>Fri 30 Apr</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Activity: check the AI meeting recap</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="tool" data-label="Start of meeting">Daniel tells everyone that transcription is on and why. Nobody objects. He starts transcription in the approved meeting tool.</li>
              <li data-kind="result" data-label="AI recap">After the meeting, the tool shows a summary and 6 action items.</li>
              <li data-kind="warn" data-label="Wrong decision maker">The recap says "Kevin approved CR-01". In fact the sponsor, Dr Lauren Mitchell, decided. Kevin only confirmed the money was there.</li>
              <li data-kind="warn" data-label="Vague action">One action says "Update the plan". It has no owner and no date.</li>
              <li data-kind="check" data-label="Compare with notes">Daniel compares the recap with his own notes and the read-back at the end of the meeting. He fixes the decision and gives every action an owner and a date.</li>
              <li data-kind="user" data-label="Daniel's prompt">"Turn these checked notes into minutes. Use 3 sections: decisions, actions (ID, action, owner, due date) and open questions. Do not add anything that is not in the notes."</li>
              <li data-kind="answer" data-label="AI minutes">The AI returns one page: 2 decisions, 5 actions and 1 open question about Spanish-speaking testers.</li>
              <li data-kind="check" data-label="Before sending">Dr Lauren Mitchell reads the decisions. Daniel sends the minutes within one working day and adds the actions to the action log.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Paste your own rough notes (with no private or personal data), or use the sample notes. Ask AI to turn them into clear minutes.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a careful project meeting secretary. Use simple English.

        Meeting: [weekly core team meeting, booking app project, Tue 13 Apr 2027]
        Attendees: [Daniel (PM), Priya (product owner), Marcus (IT), Tom (marketing), Elena (vendor)]
        My rough notes:
        [- Elena: sprint going ok, Spanish screens started, need translated texts soon
        - Priya will send texts to translator, maybe Wed
        - Marcus: scheduling link done, small issue with cancel times, fixing
        - Tom wants poster design approved, Priya to look
        - Dr Haddad asked for reason-for-visit question. Priya swaps it in, drops favourite clinic
        - next week: test plan for system testing?]

        Please write minutes with these sections:
        1. Decisions (only real decisions, with who decided)
        2. Actions table: ID, action, owner, due date
        3. Risks or issues to add to the RAID log
        4. Open questions

        Rules: Do not invent facts, owners or dates. If an action has no owner or date, write "OWNER?" or "DATE?" so I can fix it.</pre>
            <ul class="ai-try-checks">
              <li>Every decision really was decided in the notes, by the right person.</li>
              <li>Every action has one owner and a date, or is clearly marked "OWNER?" or "DATE?".</li>
              <li>Nothing is added that was not in your notes.</li>
              <li>The issue with cancel times appears as an issue for the RAID log.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A meeting is only useful if it ends with clear decisions and actions, each with one owner and a date. AI can draft agendas and minutes in minutes, but it can misread who decided what. Check the draft against your notes, then send it within one working day.
        </div>
      HTML
      starter_code: nil
    },
    13 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mgmt">Management</div>
          <h1 class="lc-title">Getting Projects Back on Track</h1>
        </div>
        <p class="lc-lead">Most projects slip at some point. The difference is how early you see it and how honestly you act. In this lesson you will learn the early warning signs of trouble, the main ways to recover time, and how to build a simple recovery plan. You will use AI to list options and draft the message to your sponsor. You will check every date yourself. You will follow Daniel Kim when a key developer leaves the app agency in April 2027.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 330" role="img" aria-label="Three timelines in working days. Plan after CR-01: build, then tests, then training, pilot, launch and close, finishing Fri 9 Jul. Forecast on 19 Apr after a developer left: the build is 6 days late, so everything moves and the finish becomes Mon 19 Jul. Recovery plan: Hudson adds a developer at its own cost, so the build is only 3 days late, and staff training starts 3 days before user testing ends. The finish stays at Fri 9 Jul.">
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <text x="380" y="24" font-weight="700" fill="#fcd34d" text-anchor="middle">Booking app: forecast slip and recovery (working days)</text>
              <text x="20" y="66" font-size="12" font-weight="700">Plan after CR-01</text>
              <text x="20" y="82" font-size="11" fill="#9b99b8">the baseline</text>
              <rect x="150" y="56" width="237.6" height="24" rx="4" fill="#27274e" stroke="#3b82f6"/>
              <text x="268.8" y="72" font-size="11" text-anchor="middle">Build (G)</text>
              <rect x="387.6" y="56" width="108" height="24" rx="4" fill="#27274e" stroke="#8b5cf6"/>
              <text x="441.6" y="72" font-size="11" text-anchor="middle">Tests (J, L)</text>
              <rect x="495.6" y="56" width="201.6" height="24" rx="4" fill="#27274e" stroke="#10b981"/>
              <text x="596.4" y="72" font-size="11" text-anchor="middle">Train, pilot, launch, close</text>
              <text x="697.2" y="98" font-size="11" fill="#9b99b8" text-anchor="end">Finish Fri 9 Jul</text>
              <text x="20" y="136" font-size="12" font-weight="700">Forecast 19 Apr</text>
              <text x="20" y="152" font-size="11" fill="#9b99b8">a developer left</text>
              <rect x="150" y="126" width="237.6" height="24" rx="4" fill="#27274e" stroke="#3b82f6"/>
              <text x="268.8" y="142" font-size="11" text-anchor="middle">Build (G)</text>
              <rect x="387.6" y="126" width="43.2" height="24" rx="4" fill="#831843" stroke="#ec4899"/>
              <rect x="430.8" y="126" width="108" height="24" rx="4" fill="#27274e" stroke="#8b5cf6"/>
              <text x="484.8" y="142" font-size="11" text-anchor="middle">Tests (J, L)</text>
              <rect x="538.8" y="126" width="201.6" height="24" rx="4" fill="#27274e" stroke="#10b981"/>
              <text x="639.6" y="142" font-size="11" text-anchor="middle">Train, pilot, launch, close</text>
              <text x="740.4" y="168" font-size="11" fill="#f9a8d4" text-anchor="end">Finish Mon 19 Jul (+6 days)</text>
              <text x="20" y="206" font-size="12" font-weight="700">Recovery plan</text>
              <text x="20" y="222" font-size="11" fill="#9b99b8">agreed Thu 22 Apr</text>
              <rect x="150" y="196" width="237.6" height="24" rx="4" fill="#27274e" stroke="#3b82f6"/>
              <text x="268.8" y="212" font-size="11" text-anchor="middle">Build (G)</text>
              <rect x="387.6" y="196" width="21.6" height="24" rx="4" fill="#831843" stroke="#ec4899"/>
              <rect x="409.2" y="196" width="108" height="24" rx="4" fill="#27274e" stroke="#8b5cf6"/>
              <text x="463.2" y="212" font-size="11" text-anchor="middle">Tests (J, L)</text>
              <rect x="495.6" y="226" width="201.6" height="24" rx="4" fill="#27274e" stroke="#10b981"/>
              <text x="596.4" y="242" font-size="11" text-anchor="middle">Train, pilot, launch, close</text>
              <text x="697.2" y="268" font-size="11" fill="#6ee7b7" text-anchor="end">Finish Fri 9 Jul (held)</text>
              <rect x="150" y="282" width="12" height="12" rx="2" fill="#831843" stroke="#ec4899"/>
              <text x="170" y="292" font-size="11" fill="#9b99b8">= days late on the build</text>
              <text x="20" y="314" font-size="11" fill="#9b99b8">Recovery: extra Hudson developer (3 days back) + training overlaps testing (3 days back)</text>
            </g>
          </svg>
          <figcaption>A 6-day slip on a critical task moves the whole end date. Two recovery actions, each worth 3 days, bring the finish back to Fri 9 Jul 2027.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Early warning signs</h3>
          <p>Problems rarely appear overnight. They show up as small signs first. Look for these every week:</p>
          <table class="lc-table">
            <thead><tr><th>Warning sign</th><th>What it can mean</th><th>Maple Street Health, April 2027 (made up)</th></tr></thead>
            <tbody>
              <tr><td>The team misses its sprint goal</td><td>Estimates were too low, or people are missing</td><td>Sprint 2 ended on Mon 19 Apr. Hudson finished 17 of the 26 story points it planned. In Sprint 1 it finished 26.</td></tr>
              <tr><td>The same blocker appears at stand-up for days</td><td>Nobody owns the problem</td><td>"Waiting for the mobile developer" came up three days in a row.</td></tr>
              <tr><td>A key person leaves or is off</td><td>A risk has become an issue</td><td>A senior Hudson developer left on Fri 16 Apr. This was risk R6 in the RAID log.</td></tr>
              <tr><td>Float is shrinking</td><td>Non-critical work is close to becoming critical</td><td>Not yet. Task H (reminders) still had plenty of float.</td></tr>
              <tr><td>Actions stay "in progress" for weeks</td><td>The work is stuck or too big</td><td>None this month.</td></tr>
            </tbody>
          </table>
          <p>Elena Rossi forecast that task G (build the app) would finish 6 working days late: Fri 14 May instead of Thu 6 May. G is on the critical path (the chain of tasks with no float). So the end date would move from Fri 9 Jul to Mon 19 Jul 2027.</p>
          <p>On Mon 19 Apr there was no recovery plan yet. A milestone would be missed. By the project's RAG rules, the schedule was <strong>red</strong>. Daniel told the sponsor that same day. He did not wait for a perfect plan, because bad news gets worse with time. After the recovery plan was agreed on Thu 22 Apr, the status moved to <strong>amber</strong> (at risk, with a plan to recover).</p>
        </div>
        <div class="lc-card">
          <h3>Ways to recover time</h3>
          <p>There are a few standard ways to get time back. Two have names:</p>
          <ul class="lc-list">
            <li><strong>Crashing:</strong> add people or money to a critical task so it finishes sooner.</li>
            <li><strong>Fast-tracking:</strong> overlap tasks that were planned one after the other. It saves time but adds risk.</li>
          </ul>
          <p>Only changes to the <strong>critical path</strong> move the end date. Speeding up a task with float saves nothing. Daniel compared the options. He checked each date with his scheduling sheet:</p>
          <table class="lc-table">
            <thead><tr><th>Option</th><th>Days saved</th><th>Cost to Maple Street Health</th><th>Main risk</th></tr></thead>
            <tbody>
              <tr><td>Accept the delay</td><td>0 (finish Mon 19 Jul)</td><td>$0</td><td>Training, pilot and launch dates all move. Clinic rotas must change.</td></tr>
              <tr><td>Crash: Hudson adds a developer for two sprints</td><td>3 (alone: finish Wed 14 Jul)</td><td>$0. The contract is fixed price and requires a named replacement within 10 working days.</td><td>A new person needs time to learn the code.</td></tr>
              <tr><td>Fast-track: staff training starts 3 days before UAT (user acceptance testing) ends</td><td>3 (alone: finish Wed 14 Jul)</td><td>$0</td><td>Staff may train on screens that still change. App store review (task N) now has no float.</td></tr>
              <tr><td>Crash: pay Hudson for weekend work</td><td>About 3</td><td>$9,000 quote, more than the $4,000 left in contingency</td><td>Tired developers make more mistakes.</td></tr>
              <tr><td>Skip the security test</td><td>0 (task K is not critical)</td><td>Saves $14,000</td><td>Not acceptable. The app handles patient data.</td></tr>
            </tbody>
          </table>
          <p>Elena agreed that Hudson would pay for the extra developer. Daniel recommended the two $0 options together. Hudson's extra developer brings task G back to 3 days late. Training then overlaps the last 3 days of UAT. The finish stays at <strong>Fri 9 Jul 2027</strong>. The pilot (Thu 10 Jun) and full launch (Fri 25 Jun) do not move. The training dates (Fri 28 May to Wed 9 Jun) do not move either.</p>
          <p>Two milestones still move: build complete goes from Thu 6 May to Tue 11 May, and UAT sign-off from Thu 27 May to Wed 2 Jun. Moving a milestone needs the sponsor. Dr Lauren Mitchell approved the plan as change request CR-03 on Thu 22 Apr 2027.</p>
          <p>Daniel also updated the RAID log. Task N now has no float. So risk R5 (app store review takes longer) went from 3 x 3 = 9 to 4 x 3 = 12. He asked Hudson to prepare the app store details early. The contract point is general information only. Check real contract terms with your legal or procurement team.</p>
        </div>
        <div class="lc-card">
          <h3>Use AI to find options, then check them</h3>
          <p>AI is good at listing recovery ideas you may forget. It does not know your critical path unless you give it. It may suggest "work faster" or "cut testing", which are not real plans.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>My project is late. How do I fix it?</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>I manage a clinic booking app project. Today is Mon 19 Apr 2027.
        Critical path: build (G) -&gt; system test (J) -&gt; UAT (L) -&gt; staff training (M)
        -&gt; pilot (O) -&gt; full launch (P) -&gt; close (R). Finish date: Fri 9 Jul 2027.
        Problem: a vendor developer left. Task G is forecast 6 working days late.
        Tasks with float: reminders (H), admin screen (I), security test (K),
        app store review (N, 3 days), launch campaign (Q).
        Contingency left: $4,000. The vendor contract is fixed price.
        List recovery options. For each: days saved on the critical path,
        cost, risks, and who must agree. Mark any option that only speeds up
        a task with float as "does not move the end date".
        Do not suggest less testing of patient data features.</code></pre>
          <p>Then do the maths yourself. Daniel recalculated every option in his schedule sheet before he wrote to the sponsor. A recovery plan also needs a way to track it: Daniel checked task G progress at every stand-up and reported it weekly to the sponsor.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: does it save time on the end date?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">The build (G) is late and on the critical path. Sort each made-up idea.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="saves" data-label="Moves the end date earlier"></div>
              <div data-sorter-target="bucket" data-bucket="nosave" data-label="Does not move the end date"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="saves" data-why="G is on the critical path. More people on G (crashing) can shorten it.">Hudson adds a developer to the build (task G).</li>
              <li data-bucket="saves" data-why="Overlapping two critical tasks (fast-tracking) shortens the critical path, but adds risk.">Staff training starts 3 days before user acceptance testing ends.</li>
              <li data-bucket="nosave" data-why="The staff admin screen (task I) has plenty of float. Cutting it does not shorten the critical path.">Drop the reports from the staff admin screen.</li>
              <li data-bucket="nosave" data-why="The reminders task (H) has plenty of float. Finishing it earlier does not change the end date.">Ask Hudson to finish the text and email reminders (task H) sooner.</li>
              <li data-bucket="saves" data-why="Extra weekend hours on a critical task can shorten it, but here it costs more than the contingency left.">Pay Hudson for weekend work on the build.</li>
              <li data-bucket="nosave" data-why="The launch campaign (Q) has float. Starting it earlier does not help the critical path.">Start the patient launch campaign earlier.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Use a real or practice project that is running late. Ask AI for recovery options and a short, honest message to your sponsor.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an experienced project recovery adviser. Use simple English.

        Project: [online booking app for 6 clinics in New York]
        Today: [Mon 19 Apr 2027]. Planned finish: [Fri 9 Jul 2027].
        Critical path: [build, system test, user testing, staff training, pilot, launch, close]
        Tasks with float: [reminders, admin screen, security test, launch campaign]
        Problem: [a vendor developer left; the build is forecast 6 working days late]
        Money left for surprises: [$4,000]
        Fixed limits: [patient data must be fully tested; launch must stay before mid-July]

        Please:
        1. List the early warning signs I should have looked for.
        2. Give 4 to 6 recovery options in a table: days saved on the critical path, cost, risk, who must agree.
        3. Mark options that only speed up tasks with float as "does not move the end date".
        4. Suggest a combined recovery plan and how to track it each week.
        5. Draft a short, honest message to my sponsor: status red (no agreed recovery plan yet), the cause, the proposed plan, the decision I need.

        Do not invent dates. Show your working for any date change and mark it "to check".</pre>
            <ul class="ai-try-checks">
              <li>Only options that change the critical path are counted as saving time.</li>
              <li>No option cuts testing of patient data or safety features.</li>
              <li>You recalculate every new date in your own schedule before you send anything.</li>
              <li>The sponsor message is honest: it states the problem, not only the good news.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Look for early warning signs every week, and report a real slip as soon as you see it. To recover time, change the critical path: add people to a critical task or overlap critical tasks. Check every option with your own schedule, and let the sponsor approve any milestone that moves.
        </div>
      HTML
      starter_code: nil
    },
    14 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mgmt">Management</div>
          <h1 class="lc-title">Closing a Project and Retrospectives</h1>
        </div>
        <p class="lc-lead">A project does not end at go-live. You still need to hand the work to the people who will run it, close the budget and learn from what happened. Many teams skip this step, and then they repeat the same mistakes. In this lesson you will learn how to hand over, run a fair retrospective, write a closure report and plan the benefits review. You will use AI to group feedback and draft the report. You will follow Daniel Kim as he closes the Maple Street Health booking app project in July 2027.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 330" role="img" aria-label="A closing flow with five steps: launch done on Thu 1 Jul, handover on Tue 6 Jul, retrospective on Wed 7 Jul, closure report on Fri 9 Jul, benefits review in October 2027. Below left, who owns what after handover: Priya Shah owns the app and its backlog, Marcus Lee owns IT support and the link, Hudson App Studio fixes defects for 60 days, Sofia Ramirez owns clinic processes, Aisha Bello owns privacy checks. Below right, numbers at close: approved 286,000 dollars, spent 281,300 dollars, 4,700 dollars under budget, 17 percent of appointments booked online in the first 2 weeks, against a goal of 35 percent by the end of September 2027.">
            <defs><marker id="prj14a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <text x="380" y="24" font-weight="700" fill="#fcd34d" text-anchor="middle">Closing the booking app project (made up)</text>
              <g text-anchor="middle">
                <rect x="14" y="40" width="132" height="56" rx="8" fill="#27274e" stroke="#3b82f6"/>
                <text x="80" y="63" font-weight="700">Launch done</text>
                <text x="80" y="83" font-size="11" fill="#9b99b8">Thu 1 Jul</text>
                <rect x="164" y="40" width="132" height="56" rx="8" fill="#27274e" stroke="#8b5cf6"/>
                <text x="230" y="63" font-weight="700">Handover</text>
                <text x="230" y="83" font-size="11" fill="#9b99b8">Tue 6 Jul</text>
                <rect x="314" y="40" width="132" height="56" rx="8" fill="#27274e" stroke="#ec4899"/>
                <text x="380" y="63" font-weight="700">Retrospective</text>
                <text x="380" y="83" font-size="11" fill="#9b99b8">Wed 7 Jul</text>
                <rect x="464" y="40" width="132" height="56" rx="8" fill="#27274e" stroke="#f59e0b"/>
                <text x="530" y="63" font-weight="700">Closure report</text>
                <text x="530" y="83" font-size="11" fill="#9b99b8">Fri 9 Jul</text>
                <rect x="614" y="40" width="132" height="56" rx="8" fill="#27274e" stroke="#10b981"/>
                <text x="680" y="63" font-weight="700">Benefits review</text>
                <text x="680" y="83" font-size="11" fill="#9b99b8">October 2027</text>
              </g>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#prj14a)">
                <line x1="147" y1="68" x2="162" y2="68"/>
                <line x1="297" y1="68" x2="312" y2="68"/>
                <line x1="447" y1="68" x2="462" y2="68"/>
                <line x1="597" y1="68" x2="612" y2="68"/>
              </g>
              <rect x="14" y="120" width="360" height="176" rx="8" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="30" y="146" font-weight="700" fill="#c4b5fd">Who owns what after handover</text>
              <text x="30" y="172" font-size="12">Priya Shah: the app and its backlog</text>
              <text x="30" y="196" font-size="12">Marcus Lee: IT support and the link</text>
              <text x="30" y="220" font-size="12">Hudson App Studio: 60 days of fixes</text>
              <text x="30" y="244" font-size="12">Sofia Ramirez: clinic processes</text>
              <text x="30" y="268" font-size="12">Aisha Bello: privacy checks</text>
              <rect x="386" y="120" width="360" height="176" rx="8" fill="#1f1f44" stroke="#10b981"/>
              <text x="402" y="146" font-weight="700" fill="#6ee7b7">Numbers at close</text>
              <text x="402" y="172" font-size="12">Approved budget: $286,000</text>
              <text x="402" y="196" font-size="12">Spent: $281,300</text>
              <text x="402" y="220" font-size="12">Under budget: $4,700</text>
              <text x="402" y="244" font-size="12">Online bookings, first 2 weeks: 17%</text>
              <text x="402" y="268" font-size="12" fill="#9b99b8">Goal: 35% by end of Sep 2027</text>
              <text x="380" y="320" font-size="12" fill="#9b99b8" text-anchor="middle">The project closes on Fri 9 Jul. The benefits are measured later.</text>
            </g>
          </svg>
          <figcaption>Closing has five steps. Every part of the app gets a named owner, and the sponsor measures the benefits three months after full launch.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Hand over to the people who will run it</h3>
          <p>A <strong>handover</strong> moves the result of the project to <strong>business as usual</strong> (the normal, everyday running of the organisation). The project team then moves on. If nobody owns a part, it breaks quietly.</p>
          <p>Daniel held a handover meeting on Tue 6 Jul 2027. Each owner agreed in writing:</p>
          <table class="lc-table">
            <thead><tr><th>Area</th><th>New owner</th><th>What they received</th></tr></thead>
            <tbody>
              <tr><td>The app, its backlog and future requests</td><td>Priya Shah</td><td>Backlog with phase 2 ideas, such as online payments and video visits</td></tr>
              <tr><td>IT support, monitoring and the scheduling system link</td><td>Marcus Lee</td><td>Support guide, supplier contacts, log-in and access list</td></tr>
              <tr><td>Defect fixes (a <strong>defect</strong> is something that does not work as agreed)</td><td>Hudson App Studio, for 60 days after full launch</td><td>Open defect list with priorities</td></tr>
              <tr><td>Front-desk process and refresher training</td><td>Sofia Ramirez</td><td>Quick reference card, training slides</td></tr>
              <tr><td>Privacy checks and incident steps</td><td>Aisha Bello</td><td>Privacy review, BAA copy, incident process</td></tr>
              <tr><td>Patient promotion</td><td>Tom Walsh</td><td>Campaign results, poster files</td></tr>
              <tr><td>Benefits measurement</td><td>Dr Lauren Mitchell (sponsor)</td><td>The three goals with baselines and the data source for each</td></tr>
            </tbody>
          </table>
          <p>Ask AI to draft a handover checklist for your project type. Then walk through it with each new owner. Only they can tell you what they really need.</p>
        </div>
        <div class="lc-card">
          <h3>Run a fair retrospective</h3>
          <p>A <strong>retrospective</strong> (or "lessons learned" meeting) looks back at how the project went. The goal is to improve the next project, not to blame people. Talk about the process, not about who made a mistake.</p>
          <p>Before the meeting, Daniel sent a short anonymous survey with three questions: What went well? What did not go well? What should we do differently next time? 21 people answered. They came from the core team, Hudson App Studio, the clinic managers and the front-desk leads.</p>
          <p>He removed names and any personal details. Then he used his organisation's approved AI tool to group the answers into themes:</p>
          <pre><code>Below are 21 anonymous answers from a project retrospective survey.
        Group them into 4 to 6 themes. For each theme give: a short title,
        how many answers mention it, and 1 or 2 example quotes (exact words).
        Keep "went well" and "did not go well" separate.
        Do not guess who wrote anything. Do not add themes that are not in the answers.
        [answers pasted here]</code></pre>
          <p>At the 90-minute retrospective on Wed 7 Jul, the group checked the themes, added what was missing and agreed actions:</p>
          <table class="lc-table">
            <thead><tr><th>What happened</th><th>Lesson</th><th>Action for future projects</th><th>Owner</th></tr></thead>
            <tbody>
              <tr><td>Testing the scheduling link early found problems in the first week.</td><td>Test the riskiest part first.</td><td>Repeat: put a "first-week test" on every top risk.</td><td>Daniel Kim</td></tr>
              <tr><td>Two front-desk leads tested the app. Staff trusted it at launch.</td><td>Involve the users who will live with the change.</td><td>Repeat: users in testing on every project.</td><td>Sofia Ramirez</td></tr>
              <tr><td>The need for Spanish appeared two months in.</td><td>Requirements did not ask about language and accessibility.</td><td>Add these questions to the requirements template.</td><td>Priya Shah</td></tr>
              <tr><td>A key vendor developer left in April.</td><td>One person held key knowledge.</td><td>Ask vendors to name a backup for each key role at the start.</td><td>Daniel Kim</td></tr>
              <tr><td>Two screens changed after staff training.</td><td>Fast-tracking training carried real risk.</td><td>Keep a short update session in the plan when you overlap tasks.</td><td>Sofia Ramirez</td></tr>
            </tbody>
          </table>
          <p>A lesson only counts when it changes something, such as a template, a checklist or a contract. Store lessons where the next project manager will find them.</p>
        </div>
        <div class="lc-card">
          <h3>Close the budget and write the closure report</h3>
          <p>Kevin O'Brien sent the final costs. Daniel put them in his budget sheet. The budget column includes the $22,000 for CR-01 (the Spanish version), moved from contingency:</p>
          <table class="lc-table">
            <thead><tr><th>Line</th><th>Budget</th><th>Actual</th></tr></thead>
            <tbody>
              <tr><td>Vendor design and build, plus CR-01 vendor work ($168,000 + $16,000)</td><td>$184,000</td><td>$184,000</td></tr>
              <tr><td>Translation (CR-01)</td><td>$6,000</td><td>$6,000</td></tr>
              <tr><td>Scheduling system link licence, first year</td><td>$18,000</td><td>$18,000</td></tr>
              <tr><td>Contract IT developer (20 days x $800)</td><td>$16,000</td><td>$16,000</td></tr>
              <tr><td>Security (penetration) test</td><td>$14,000</td><td>$14,000</td></tr>
              <tr><td>Text and email reminder service, 12 months</td><td>$7,200</td><td>$7,200</td></tr>
              <tr><td>Hosting and monitoring, 12 months</td><td>$12,600</td><td>$12,600</td></tr>
              <tr><td>Training cover</td><td>$7,200</td><td>$7,200</td></tr>
              <tr><td>Patient launch campaign</td><td>$17,000</td><td>$16,300</td></tr>
              <tr><td>Contingency not used</td><td>$4,000</td><td>$0</td></tr>
              <tr><td><strong>Total</strong></td><td><strong>$286,000</strong></td><td><strong>$281,300</strong></td></tr>
            </tbody>
          </table>
          <p>With the actual costs in cells C2:C11, <code>=SUM(C2:C11)</code> gives 281300 and <code>=286000-SUM(C2:C11)</code> gives 4700. The project is $4,700 under budget: $4,000 of unused contingency and $700 saved on the campaign. The 12-month service costs run past the project end. After 12 months they move to the IT running budget.</p>
          <p>The <strong>closure report</strong> is a short, honest record for the sponsor. Daniel asked AI to draft it from his checked facts. It has these sections: goals and early results, scope delivered, schedule, budget, open issues and owners, lessons learned, and the benefits review plan. The scope section includes the Spanish version. The schedule section says the first baseline was Mon 28 Jun and the final finish was Fri 9 Jul, after approved CR-01.</p>
          <p>He checked one line with care. The AI wrote "the project met its online booking goal". That is false. In the first 2 weeks after full launch, 17% of appointments were booked online. The goal is 35% by the end of September 2027. Daniel changed it to "early sign only; measured in the benefits review". Dr Lauren Mitchell signed the report on Fri 9 Jul 2027.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: put the closing steps in order</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put Daniel's closing steps in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">The full launch at all 6 clinics is finished (Thu 1 Jul) and the sponsor accepts it.</li>
              <li data-order="2">Each area gets a named owner at the handover meeting (Tue 6 Jul).</li>
              <li data-order="3">The team reviews the anonymous survey themes at the retrospective (Wed 7 Jul).</li>
              <li data-order="4">Daniel adds final costs and lessons to the closure report, and the sponsor signs it (Fri 9 Jul).</li>
              <li data-order="5">Files are stored in the project archive and the project is marked closed (Fri 9 Jul, after sign-off).</li>
              <li data-order="6">The sponsor checks the three goals against their baselines in the benefits review (October 2027).</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Use AI to plan a retrospective and draft a lessons-learned summary for a real or practice project. Remove all names and personal details from any feedback first.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a neutral facilitator for project retrospectives. Use simple English.

        Project: [online booking app for 6 clinics, finished Fri 9 Jul 2027, 1 approved change, $4,700 under budget]
        Team: [project manager, product owner, IT lead, marketing, outside app agency, clinic managers]
        Anonymous feedback (no names):
        [- testing the link early saved us
        - Spanish should have been asked about at the start
        - too many meetings in April
        - front-desk leads in testing helped staff trust the app
        - we trained on screens that later changed]

        Please:
        1. Plan a 90-minute retrospective: agenda with times that add up to 90, and ground rules that keep it blame-free.
        2. Group the feedback into themes: went well, did not go well.
        3. For each theme, suggest one lesson and one specific action for future projects, with a suggested owner role.
        4. List 3 things to repeat on the next project.

        Do not guess who wrote any comment. Do not add feedback that is not in the list.</pre>
            <ul class="ai-try-checks">
              <li>The agenda times add up to exactly 90 minutes.</li>
              <li>The themes come only from the feedback you gave.</li>
              <li>Every action is specific (a template, checklist or rule changes) and has an owner role.</li>
              <li>Nothing in the answer blames or guesses at a person.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Close a project on purpose: give every part a named owner, close the budget, and run a blame-free retrospective. A lesson only counts when it changes a template, checklist or contract. Do not let AI, or anyone, claim the goals are met before the benefits review measures them.
        </div>
      HTML
      starter_code: nil
    },
    15 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mgmt">Management</div>
          <h1 class="lc-title">Capstone: The Maple Street Health Booking App Project</h1>
        </div>
        <p class="lc-lead">In this capstone you bring the whole course together. You will build a complete project pack: charter, stakeholder map, plan, schedule, budget, RAID log, status report and retrospective. First you will see Daniel Kim's pack for the Maple Street Health booking app. Then you will use AI to check that every document tells the same story. Finally, you will build a pack for your own project, or for a practice one. The goal is a set of documents you could show a real sponsor.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 340" role="img" aria-label="Eight documents in the project pack: charter with goals and scope; stakeholders with the map and communication plan; plan with work breakdown and RACI; schedule of 111 working days; budget of 286,000 dollars; RAID log with top risk R1 scored 16; one-page status report with RAG; retrospective with lessons and actions. Below, a timeline of milestones in 2027 after CR-01 and CR-03: M1 charter 5 Feb, M2 contract 8 Mar, M3 designs 22 Mar, M4 build complete 11 May, M5 UAT sign-off 2 Jun, M6 pilot 10 Jun, M7 full launch 25 Jun, M8 closed 9 Jul.">
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <text x="380" y="24" font-weight="700" fill="#fcd34d" text-anchor="middle">The project pack (Maple Street Health, made up)</text>
              <g text-anchor="middle">
                <rect x="20" y="40" width="170" height="50" rx="8" fill="#27274e" stroke="#8b5cf6"/>
                <text x="105" y="61" font-weight="700">Charter</text>
                <text x="105" y="79" font-size="11" fill="#9b99b8">goals, scope</text>
                <rect x="206" y="40" width="170" height="50" rx="8" fill="#27274e" stroke="#8b5cf6"/>
                <text x="291" y="61" font-weight="700">Stakeholders</text>
                <text x="291" y="79" font-size="11" fill="#9b99b8">map, comms plan</text>
                <rect x="392" y="40" width="170" height="50" rx="8" fill="#27274e" stroke="#3b82f6"/>
                <text x="477" y="61" font-weight="700">Plan</text>
                <text x="477" y="79" font-size="11" fill="#9b99b8">WBS, RACI</text>
                <rect x="578" y="40" width="170" height="50" rx="8" fill="#27274e" stroke="#3b82f6"/>
                <text x="663" y="61" font-weight="700">Schedule</text>
                <text x="663" y="79" font-size="11" fill="#9b99b8">111 working days</text>
                <rect x="20" y="104" width="170" height="50" rx="8" fill="#27274e" stroke="#10b981"/>
                <text x="105" y="125" font-weight="700">Budget</text>
                <text x="105" y="143" font-size="11" fill="#9b99b8">$286,000</text>
                <rect x="206" y="104" width="170" height="50" rx="8" fill="#27274e" stroke="#ec4899"/>
                <text x="291" y="125" font-weight="700">RAID log</text>
                <text x="291" y="143" font-size="11" fill="#9b99b8">top risk R1 = 16</text>
                <rect x="392" y="104" width="170" height="50" rx="8" fill="#27274e" stroke="#f59e0b"/>
                <text x="477" y="125" font-weight="700">Status report</text>
                <text x="477" y="143" font-size="11" fill="#9b99b8">one page, RAG</text>
                <rect x="578" y="104" width="170" height="50" rx="8" fill="#27274e" stroke="#22d3ee"/>
                <text x="663" y="125" font-weight="700">Retrospective</text>
                <text x="663" y="143" font-size="11" fill="#9b99b8">lessons, actions</text>
              </g>
              <text x="380" y="194" font-weight="700" fill="#fcd34d" text-anchor="middle">Milestones in 2027 (after CR-01 and CR-03)</text>
              <line x1="40" y1="250" x2="720" y2="250" stroke="#9b99b8" stroke-width="2"/>
              <g fill="#f59e0b">
                <circle cx="57" cy="250" r="5"/><circle cx="190" cy="250" r="5"/><circle cx="250" cy="250" r="5"/><circle cx="464" cy="250" r="5"/>
                <circle cx="558" cy="250" r="5"/><circle cx="592" cy="250" r="5"/><circle cx="656" cy="250" r="5"/><circle cx="716" cy="250" r="5"/>
              </g>
              <g text-anchor="middle" font-size="12" font-weight="700">
                <text x="57" y="236">M1</text><text x="190" y="236">M2</text><text x="250" y="236">M3</text><text x="464" y="236">M4</text>
                <text x="558" y="236">M5</text><text x="592" y="236">M6</text><text x="656" y="236">M7</text><text x="716" y="236">M8</text>
              </g>
              <g text-anchor="middle" font-size="11" fill="#9b99b8">
                <text x="57" y="272">5 Feb</text><text x="190" y="272">8 Mar</text><text x="250" y="272">22 Mar</text><text x="464" y="272">11 May</text>
                <text x="558" y="272">2 Jun</text><text x="592" y="288">10 Jun</text><text x="656" y="272">25 Jun</text><text x="716" y="272">9 Jul</text>
              </g>
              <text x="380" y="322" font-size="12" fill="#9b99b8" text-anchor="middle">Same facts in every document: finish Fri 9 Jul 2027, contingency left $4,000.</text>
            </g>
          </svg>
          <figcaption>A complete project pack has eight documents. They must all use the same dates, numbers and names, and each one must show its version and date.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Daniel's project pack</h3>
          <p>Here is what each document holds, and the key check for each one. All names and numbers are made up.</p>
          <table class="lc-table">
            <thead><tr><th>Document</th><th>Key content (Maple Street Health)</th><th>Check before you share it</th></tr></thead>
            <tbody>
              <tr><td><strong>Charter</strong></td><td>3 goals by end of Sep 2027: 35% booked online, phone hold under 4 minutes (from 7), no-shows 8% (from 11%). Sponsor: Dr Lauren Mitchell.</td><td>Every goal is SMART and has a baseline and an owner. Scope lists what is out.</td></tr>
              <tr><td><strong>Stakeholder map and communication plan</strong></td><td>Influence and interest grid. Weekly 1:1 with the sponsor, monthly steering group, fortnightly clinic call.</td><td>Every "manage closely" person has a named meeting or update.</td></tr>
              <tr><td><strong>Plan</strong> (WBS and RACI)</td><td>18 tasks, A to R, each with one owner. RACI for the key tasks.</td><td>Exactly one A (accountable person) per task. Nothing is missing, such as training or app store review.</td></tr>
              <tr><td><strong>Schedule</strong></td><td>103 working days at first. 111 after CR-01, finish Fri 9 Jul 2027. Critical path: A, B, D, E, G, J, L, M, O, P, R. After CR-03, task N is also critical (no float).</td><td>Dates recalculated with WORKDAY and the 4 holidays. Milestones fall on working days.</td></tr>
              <tr><td><strong>Budget</strong></td><td>$260,000 + 10% contingency ($26,000) = $286,000. CR-01 used $22,000, so $4,000 of contingency is left.</td><td>Totals use SUM formulas. Every line shows how it was worked out (for example 12 x $600).</td></tr>
              <tr><td><strong>RAID log</strong> (risks, assumptions, issues and dependencies)</td><td>6 risks scored probability x impact. Top risk R1 (scheduling link) = 4 x 4 = 16. R5 raised to 12 by the recovery plan.</td><td>Each risk has an owner and a response. Scores are recalculated.</td></tr>
              <tr><td><strong>Status report</strong></td><td>One page every week: overall RAG, progress, next milestones, top risks, decisions needed.</td><td>The RAG rating is honest and follows the RAG rules. Red on Mon 19 Apr, after the developer left (no plan yet), then amber once the recovery plan was agreed.</td></tr>
              <tr><td><strong>Retrospective and closure report</strong></td><td>Lessons with actions and owners. Final cost $281,300, $4,700 under budget.</td><td>Lessons change a template, checklist or contract. Goals are not called "met" before the benefits review.</td></tr>
            </tbody>
          </table>
          <p>Keep the <strong>change log</strong> with the plan. Daniel's log holds CR-01 (Spanish version), CR-02 (reason-for-visit question) and CR-03 (the April recovery plan).</p>
        </div>
        <div class="lc-card">
          <h3>One story in every document</h3>
          <p>After a change, old numbers hide in old documents. A sponsor who sees two different end dates stops trusting the whole pack. Give every document a version and a date, such as "Schedule v3, Thu 22 Apr 2027". Then check that these facts match everywhere:</p>
          <table class="lc-table">
            <thead><tr><th>Fact</th><th>Current value</th><th>Old value to hunt for</th></tr></thead>
            <tbody>
              <tr><td>Project end date</td><td>Fri 9 Jul 2027 (111 working days)</td><td>Mon 28 Jun 2027 (103 working days)</td></tr>
              <tr><td>Pilot go-live at Upper West Side and Astoria</td><td>Thu 10 Jun 2027</td><td>Fri 28 May 2027</td></tr>
              <tr><td>Full launch go-live at all 6 clinics</td><td>Fri 25 Jun 2027</td><td>Mon 14 Jun 2027</td></tr>
              <tr><td>App build complete (M4)</td><td>Tue 11 May 2027</td><td>Mon 26 Apr, then Thu 6 May 2027</td></tr>
              <tr><td>UAT sign-off (M5)</td><td>Wed 2 Jun 2027</td><td>Mon 17 May, then Thu 27 May 2027</td></tr>
              <tr><td>Contingency left</td><td>$4,000</td><td>$26,000</td></tr>
              <tr><td>Scope: Spanish version</td><td>In scope (CR-01)</td><td>Out of scope</td></tr>
            </tbody>
          </table>
          <p>AI is useful here. It can read many documents quickly and list mismatches. But it can also "find" a mismatch that is not real. Always check its claims against your schedule and budget sheets.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Is my project pack OK?</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>You are reviewing a project pack before it goes to the sponsor.
        Below are short extracts from 8 documents, each with a version and date.
        The newest decisions are: CR-01 approved Wed 7 Apr 2027 (finish Fri 9 Jul,
        contingency left $4,000) and CR-03 approved Thu 22 Apr 2027
        (build complete Tue 11 May, UAT sign-off Wed 2 Jun).
        List every place where a date, number, name or scope item does not match
        the newest decisions. Give: document, what it says, what it should say.
        Only report mismatches you can see in the text. Do not recalculate dates.
        [extracts pasted here]</code></pre>
        </div>
        <div class="lc-card">
          <h3>Your capstone task</h3>
          <p>Build a pack for your own project, or use a practice project. Good practice projects: a new staff rota system, an office move, or a website launch for a made-up company. Work in this order:</p>
          <ol class="lc-list">
            <li>Write the charter. Get real baselines from the people who own the data.</li>
            <li>Map the stakeholders and write the communication plan.</li>
            <li>Break down the work. Give each task one owner and build a RACI chart.</li>
            <li>Estimate each task and list its dependencies. Work out the dates and critical path in a spreadsheet.</li>
            <li>Build the budget with formulas and a contingency line.</li>
            <li>Start the RAID log. Score each risk and give it an owner and a response.</li>
            <li>Write one status report as if you were halfway through.</li>
            <li>Plan the retrospective and the closure steps.</li>
          </ol>
          <p>Use AI for first drafts of each part. You decide the goals, the estimates you trust and the RAG rating. Never paste confidential company data, staff details or customer data into a public AI tool. Use made-up or approved data only.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: check the pack with AI</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Daniel's prompt">Daniel pastes extracts from his 8 documents (no patient data) and asks AI to list every mismatch with the newest decisions.</li>
              <li data-kind="answer" data-label="AI finds 3 mismatches">The status report v5 still shows $26,000 of contingency. The charter v1 still says the project ends Mon 28 Jun. The RAID log still scores R5 as 9, not 12.</li>
              <li data-kind="warn" data-label="One wrong claim">The AI also says "the critical path should be 106 days". That number belonged to Option C of CR-01, which was not chosen.</li>
              <li data-kind="tool" data-label="Daniel checks">Daniel opens his schedule sheet. It uses WORKDAY with the 4 project holidays.</li>
              <li data-kind="result" data-label="Sheet shows">The critical path is 111 working days. The finish is Fri 9 Jul 2027. The AI's 106 days is wrong.</li>
              <li data-kind="check" data-label="Fix and version">Daniel fixes the 3 real mismatches. He issues charter v2, status report v6 and RAID log v4, each with the date.</li>
              <li data-kind="check" data-label="Send">He sends the pack to Dr Lauren Mitchell with a short list of what changed and why.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to draft a full project pack for your own project. If you change nothing, it will build a practice pack you can study and correct.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a senior project manager and coach. Use simple English.

        Help me draft a complete project pack.
        Project: [launch an online booking app for a made-up chain of 6 clinics in New York]
        Sponsor: [Chief Operating Officer]
        Length: [about 5 months]  Budget: [$286,000 including 10% contingency]
        Team: [project manager, product owner, IT lead, privacy officer, marketing, outside app agency]
        Main goal: [35% of appointments booked online 3 months after launch, from 0% today]

        Write these 8 short parts:
        1. Charter: purpose, 3 SMART goals, in and out of scope, success measures
        2. Stakeholder table (influence, interest, approach) and communication plan
        3. 12 to 18 tasks with owners, and a RACI for 4 key tasks
        4. Schedule table: task, working days, depends on. No calendar dates.
        5. Budget table with subtotal, contingency and total. Show the sums.
        6. RAID log: 5 risks scored probability x impact (1 to 5), 2 assumptions, 2 issues, 2 dependencies
        7. A one-page status report template with clear RAG rules
        8. A retrospective plan with 3 questions

        Mark every detail you invent as [ASSUMPTION].</pre>
            <ul class="ai-try-checks">
              <li>Recalculate the budget totals and risk scores yourself.</li>
              <li>Check that each task has exactly one accountable person in the RACI.</li>
              <li>Work out the dates and critical path in your own spreadsheet from the schedule table.</li>
              <li>Replace every [ASSUMPTION] with a real, checked fact before you share the pack.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A project pack is only trusted when every document tells the same story. Use AI to draft each part and to spot mismatches, but check every date and number in your own sheets. You, not the AI, own the plan, the RAG rating and every promise you make to your sponsor and your team.
        </div>
      HTML
      starter_code: nil
    }
  }.freeze
end

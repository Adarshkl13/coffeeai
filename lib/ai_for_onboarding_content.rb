module AiForOnboardingContent
  # Units (sidebar dividers): 1–4 Onboarding Basics · 5–9 Building the Journey · 10–14 Running and Improving · 15 Capstone
  # Widgets: sequence, sorter, stepper. No code editor: each Try It is an ai-try prompt box.
  LESSONS = {
    1 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-hr">HR & Recruitment</div>
          <h1 class="lc-title">Why Onboarding Matters</h1>
        </div>
        <p class="lc-lead">Onboarding is everything a company does to help a new person settle in and do their job well. It starts when the person says yes to the offer. It lasts for about the first 90 days. In this lesson you will learn the stages of onboarding and the numbers that show if it works. You will meet Northbridge Logistics, a made-up warehouse and delivery company with 420 staff in London and Manchester. Its HR manager, Priya Shah, and HR adviser, Tom Reed, are redesigning onboarding. You will follow them through the whole course.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 330" role="img" aria-label="Top: the five onboarding stages in a row with arrows: offer, pre-boarding, day one, week one, and days 8 to 90. Bottom left: a bar chart of made-up Northbridge warehouse early leavers. 7 left in week 1, 9 in weeks 2 to 4 and 8 in months 2 to 3, so 24 of 96 hires left within 90 days. Bottom right: time to productivity for warehouse operatives is 7 weeks against a target of 4 weeks.">
            <defs><marker id="ob1a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <text x="380" y="24" font-weight="700" fill="#c4b5fd" text-anchor="middle">The onboarding stages: from offer to day 90</text>
              <g text-anchor="middle">
                <rect x="19" y="38" width="130" height="44" rx="8" fill="#1f1f44" stroke="#8b5cf6"/>
                <text x="84" y="65" font-weight="700">Offer</text>
                <rect x="167" y="38" width="130" height="44" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
                <text x="232" y="65" font-weight="700">Pre-boarding</text>
                <rect x="315" y="38" width="130" height="44" rx="8" fill="#1f1f44" stroke="#22d3ee"/>
                <text x="380" y="65" font-weight="700">Day one</text>
                <rect x="463" y="38" width="130" height="44" rx="8" fill="#1f1f44" stroke="#10b981"/>
                <text x="528" y="65" font-weight="700">Week one</text>
                <rect x="611" y="38" width="130" height="44" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
                <text x="676" y="65" font-weight="700">Days 8 to 90</text>
                <g font-size="11" fill="#9b99b8">
                  <text x="84" y="102">offer accepted,</text>
                  <text x="84" y="117">contract sent</text>
                  <text x="232" y="102">kit, logins,</text>
                  <text x="232" y="117">welcome email</text>
                  <text x="380" y="102">safety, tour,</text>
                  <text x="380" y="117">meet the team</text>
                  <text x="528" y="102">training, buddy,</text>
                  <text x="528" y="117">first tasks</text>
                  <text x="676" y="102">check-ins,</text>
                  <text x="676" y="117">30-60-90 plan</text>
                </g>
              </g>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#ob1a)">
                <line x1="150" y1="60" x2="164" y2="60"/>
                <line x1="298" y1="60" x2="312" y2="60"/>
                <line x1="446" y1="60" x2="460" y2="60"/>
                <line x1="594" y1="60" x2="608" y2="60"/>
              </g>
              <line x1="20" y1="136" x2="740" y2="136" stroke="#27274e"/>
              <text x="250" y="160" font-weight="700" fill="#c4b5fd" text-anchor="middle">Warehouse early leavers: 24 of 96 hires</text>
              <text x="40" y="192">Week 1</text>
              <rect x="150" y="176" width="210" height="24" rx="4" fill="#ec4899"/>
              <text x="368" y="193" font-weight="700">7</text>
              <text x="40" y="230">Weeks 2 to 4</text>
              <rect x="150" y="214" width="270" height="24" rx="4" fill="#ec4899"/>
              <text x="428" y="231" font-weight="700">9</text>
              <text x="40" y="268">Months 2 to 3</text>
              <rect x="150" y="252" width="240" height="24" rx="4" fill="#f59e0b"/>
              <text x="398" y="269" font-weight="700">8</text>
              <rect x="510" y="152" width="230" height="124" rx="8" fill="#27274e" stroke="#22d3ee"/>
              <text x="625" y="178" font-weight="700" text-anchor="middle">Time to productivity</text>
              <text x="625" y="204" text-anchor="middle" fill="#9b99b8">Warehouse operatives</text>
              <text x="625" y="232" text-anchor="middle">Now: 7 weeks</text>
              <text x="625" y="258" text-anchor="middle" fill="#10b981">Target: 4 weeks</text>
              <text x="380" y="312" font-size="12" fill="#9b99b8" text-anchor="middle">Made-up data. 16 of the 24 early leavers went in their first month.</text>
            </g>
          </svg>
          <figcaption>Onboarding runs from the offer to day 90. At Northbridge, most early leavers go in the first month, so the early stages matter most.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>What onboarding is</h3>
          <p><strong>Onboarding</strong> is the planned process that helps a new joiner feel welcome, learn the job and become part of the team. It is more than an <strong>induction</strong> (the first-day talk about safety, rules and the building). Induction is one part of onboarding.</p>
          <p>Most companies split onboarding into five stages:</p>
          <table class="lc-table">
            <thead><tr><th>Stage</th><th>When</th><th>Main goal</th><th>Example for a Northbridge warehouse operative</th></tr></thead>
            <tbody>
              <tr><td>Offer</td><td>The person says yes</td><td>Confirm the job, pay and start date clearly</td><td>Explain the early shift (06:00 to 14:00) and the pay in writing</td></tr>
              <tr><td>Pre-boarding</td><td>Between yes and day one</td><td>Get ready and keep in touch</td><td>Order safety boots, set up the scanner login, send a welcome email</td></tr>
              <tr><td>Day one</td><td>The first day</td><td>Make the person feel safe and expected</td><td>Safety induction, site tour, meet the team leader and a buddy</td></tr>
              <tr><td>Week one</td><td>Days 1 to 5</td><td>Learn the basics without overload</td><td>Shadow a buddy, practise picking, short daily check-ins</td></tr>
              <tr><td>Days 8 to 90</td><td>Weeks 2 to 13</td><td>Reach the job standard and feel part of the team</td><td>Check-ins at weeks 2, 6 and 12, a 30-60-90 day plan</td></tr>
            </tbody>
          </table>
          <p>A <strong>30-60-90 day plan</strong> is a short list of goals for the first 30, 60 and 90 days. You will build one later in this course.</p>
        </div>
        <div class="lc-card">
          <h3>The numbers that show if onboarding works</h3>
          <p>Two numbers tell you a lot. Here is how to calculate each one.</p>
          <ul class="lc-list">
            <li><strong>Early leaver rate</strong>: the share of new joiners who leave within 90 days of their start date. Formula: early leavers ÷ hires in the same group × 100.</li>
            <li><strong>Time to productivity</strong>: the number of weeks from the start date until the person meets the normal standard for the role. You must define "the standard" for each role first.</li>
          </ul>
          <p>Priya looks at everyone who started between July 2025 and June 2026. All of them have now passed 90 days, so the numbers are complete. (All Northbridge data is made up.)</p>
          <table class="lc-table">
            <thead><tr><th>Group</th><th>Hires</th><th>Left within 90 days</th><th>Early leaver rate</th><th>Time to productivity (now / target)</th></tr></thead>
            <tbody>
              <tr><td>Warehouse operatives</td><td>96</td><td>24</td><td>24 ÷ 96 × 100 = 25.0%</td><td>7 weeks / 4 weeks</td></tr>
              <tr><td>Office staff</td><td>16</td><td>3</td><td>3 ÷ 16 × 100 = 18.8%</td><td>11 weeks / 8 weeks</td></tr>
              <tr><td>New managers</td><td>4</td><td>1</td><td>1 ÷ 4 × 100 = 25.0%</td><td>18 weeks / 12 weeks</td></tr>
              <tr><td><strong>All</strong></td><td>116</td><td>28</td><td>28 ÷ 116 × 100 = 24.1%</td><td></td></tr>
            </tbody>
          </table>
          <p>For a warehouse operative, "productive" means meeting the standard pick rate (made up: 120 lines per hour) on 5 shifts in a row. A <strong>pick rate</strong> is how many order lines a person collects from the shelves in an hour.</p>
          <p>Be careful with small groups. One manager leaving makes the manager rate jump to 25.0%. With only 4 hires, that number tells you very little.</p>
        </div>
        <div class="lc-card">
          <h3>Why it matters: first impressions and cost</h3>
          <p>Northbridge asked each warehouse early leaver for their main reason. Here are the 24 answers:</p>
          <table class="lc-table">
            <thead><tr><th>Main reason given</th><th>People</th><th>Which stage could fix it?</th></tr></thead>
            <tbody>
              <tr><td>The shift pattern was not what they were told</td><td>7</td><td>Offer and pre-boarding</td></tr>
              <tr><td>Did not feel trained or safe on the equipment</td><td>6</td><td>Day one and week one</td></tr>
              <tr><td>No one to ask, felt alone</td><td>5</td><td>Week one (a buddy)</td></tr>
              <tr><td>First payslip was wrong</td><td>3</td><td>Pre-boarding (payroll forms)</td></tr>
              <tr><td>Another job or other reasons</td><td>3</td><td>Hard to say</td></tr>
            </tbody>
          </table>
          <p>Most of these reasons are about the first weeks. They are things HR can fix. People decide very early if a job is right for them.</p>
          <p>Priya also estimates the cost. She thinks replacing one warehouse operative costs about £3,200 (agency fees, training time and overtime cover). So 24 × £3,200 = £76,800 a year. This is an estimate, not an exact cost. Say so when you share it.</p>
          <p>Leaver reasons are what people chose to say. They are useful clues, not proof. Check them against other evidence, such as talks with team leaders.</p>
        </div>
        <div class="lc-card">
          <h3>Your first AI prompt for onboarding</h3>
          <p>An AI assistant, such as Claude, can help you sort and explain numbers like these. It gives better answers when you give it the data and say what you want.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Why do new starters leave?</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>I am an HR manager at a made-up 420-person warehouse company in the UK.
        In the last year we hired 96 warehouse operatives and 24 left within 90 days.
        7 left in week 1, 9 in weeks 2 to 4 and 8 in months 2 to 3.
        Main reasons: shift not as explained (7), not trained or safe (6),
        felt alone (5), wrong first payslip (3), other (3).
        1. Calculate the early leaver rate and show your working.
        2. Group the reasons by onboarding stage.
        3. Suggest 3 questions I should ask team leaders.
        Do not invent statistics or studies.</code></pre>
          <p>The AI gives you a draft analysis. You still check every number with a calculator or spreadsheet. You also decide what the numbers mean for your company.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: which stage is it?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Daniel Okafor is a made-up new warehouse operative at Northbridge's Manchester site. Sort each task into the stage where it belongs.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="pre" data-label="Pre-boarding"></div>
              <div data-sorter-target="bucket" data-bucket="day" data-label="Day one"></div>
              <div data-sorter-target="bucket" data-bucket="later" data-label="Days 8 to 90"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="pre" data-why="Boots must arrive before day one. Without them Daniel cannot work safely on the floor.">Order safety boots in Daniel's size.</li>
              <li data-bucket="pre" data-why="Logins take time to set up. 9 of 24 recent starters had no login on day one.">Create Daniel's scanner and warehouse system login.</li>
              <li data-bucket="day" data-why="Safety comes first on the first day in a warehouse.">Show Daniel the fire exits and first aid points.</li>
              <li data-bucket="day" data-why="Meeting a named person on day one helps Daniel feel expected, not alone.">Introduce Daniel to his buddy and team leader.</li>
              <li data-bucket="later" data-why="Progress check-ins happen after the first week, when there is real work to discuss.">Team leader holds a week 6 check-in about Daniel's pick rate.</li>
              <li data-bucket="later" data-why="The 90-day review closes the onboarding period.">Hold Daniel's 90-day review and agree next goals.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to analyse a set of made-up onboarding numbers. Then check its maths and its conclusions yourself.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an HR data adviser. Use simple English.

        Company: [Northbridge Logistics, a made-up 420-person warehouse company in London and Manchester].
        All data below is made up. Hires who started between [July 2025 and June 2026]:
        - [Warehouse operatives: 96 hires, 24 left within 90 days. Time to productivity: 7 weeks, target 4 weeks.]
        - [Office staff: 16 hires, 3 left within 90 days. Time to productivity: 11 weeks, target 8 weeks.]
        - [New managers: 4 hires, 1 left within 90 days. Time to productivity: 18 weeks, target 12 weeks.]
        Main reasons warehouse leavers gave: [shift not as explained 7, not trained or safe 6, felt alone 5, wrong first payslip 3, other 3].

        Please:
        1. Calculate the early leaver rate (leavers within 90 days / hires x 100) for each group and in total. Show your working.
        2. Point out any group that is too small to trust.
        3. List 3 patterns you see and the onboarding stage each one links to.
        4. Suggest 3 questions I should check with managers before I decide anything.

        Use a table for step 1. Do not claim causes as facts. Do not invent studies or statistics.</pre>
            <ul class="ai-try-checks">
              <li>The rates are correct: 25.0%, 18.8%, 25.0% and 24.1% in total.</li>
              <li>It warns that 4 manager hires is too small a group to trust.</li>
              <li>It calls the reasons clues to check, not proven causes.</li>
              <li>It does not invent outside statistics or studies.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Onboarding starts at the offer, not on day one. Measure two numbers for each role: the early leaver rate and time to productivity. At Northbridge, 16 of 24 warehouse early leavers left in their first month. So the first weeks are where better onboarding helps most.
        </div>
      HTML
      starter_code: nil
    },
    2 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-hr">HR & Recruitment</div>
          <h1 class="lc-title">Where AI Helps in Onboarding</h1>
        </div>
        <p class="lc-lead">AI can save you hours on onboarding work. It can draft welcome emails, checklists, schedules and answers to common questions. But it can also give wrong policy answers, sound cold or put private data at risk. In this lesson you will learn which onboarding tasks AI does well and which ones need a person. You will also learn a safe way to work. Tom Reed, the HR adviser at Northbridge Logistics, will test an AI helper and catch a mistake.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 330" role="img" aria-label="Three columns. AI drafts: welcome emails, first-week schedules, checklists, FAQ answer drafts and summaries of survey comments. A person checks: policy facts, dates and names, tone and clarity, fairness and access needs. A person decides: contracts and pay, right-to-work checks, reasonable adjustments and probation outcomes. Arrows run from the first column to the second and from the second to the third. A bar at the bottom says never paste passports, health details, bank details or home addresses into public AI tools.">
            <defs><marker id="ob2a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <rect x="20" y="20" width="220" height="44" rx="8" fill="#27274e" stroke="#10b981" stroke-width="2"/>
              <text x="130" y="47" font-weight="700" text-anchor="middle">AI drafts</text>
              <rect x="270" y="20" width="220" height="44" rx="8" fill="#27274e" stroke="#f59e0b" stroke-width="2"/>
              <text x="380" y="47" font-weight="700" text-anchor="middle">A person checks</text>
              <rect x="520" y="20" width="220" height="44" rx="8" fill="#27274e" stroke="#ec4899" stroke-width="2"/>
              <text x="630" y="47" font-weight="700" text-anchor="middle">A person decides</text>
              <rect x="20" y="74" width="220" height="176" rx="8" fill="#1f1f44" stroke="#10b981"/>
              <rect x="270" y="74" width="220" height="176" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
              <rect x="520" y="74" width="220" height="176" rx="8" fill="#1f1f44" stroke="#ec4899"/>
              <g>
                <text x="36" y="104">Welcome emails</text>
                <text x="36" y="136">First-week schedules</text>
                <text x="36" y="168">Checklists</text>
                <text x="36" y="200">FAQ answer drafts</text>
                <text x="36" y="232">Survey comment themes</text>
                <text x="286" y="104">Policy facts</text>
                <text x="286" y="136">Dates, times, names</text>
                <text x="286" y="168">Tone and clarity</text>
                <text x="286" y="200">Fairness</text>
                <text x="286" y="232">Access needs</text>
                <text x="536" y="104">Contracts and pay</text>
                <text x="536" y="136">Right-to-work checks</text>
                <text x="536" y="168">Reasonable adjustments</text>
                <text x="536" y="200">Probation outcomes</text>
                <text x="536" y="232">What gets sent</text>
              </g>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#ob2a)">
                <line x1="242" y1="162" x2="266" y2="162"/>
                <line x1="492" y1="162" x2="516" y2="162"/>
              </g>
              <rect x="20" y="268" width="720" height="44" rx="8" fill="#27274e" stroke="#ec4899" stroke-dasharray="5 4"/>
              <text x="380" y="295" text-anchor="middle">Never paste passports, health details, bank details or home addresses into public AI tools</text>
            </g>
          </svg>
          <figcaption>AI drafts, a person checks the facts and tone, and a person makes every decision about the new joiner.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Tasks where AI helps</h3>
          <p>Much onboarding work is writing and organising. AI is good at first drafts. You give it the facts. It gives you a draft in seconds.</p>
          <table class="lc-table">
            <thead><tr><th>Task</th><th>What AI can do</th><th>What you must still check</th></tr></thead>
            <tbody>
              <tr><td>Welcome email</td><td>Draft a warm, short email from your notes</td><td>Start time, place, names, what to bring</td></tr>
              <tr><td>First-week schedule</td><td>Turn a list of sessions into a day-by-day plan</td><td>Rooms, trainers and shift times really exist</td></tr>
              <tr><td>Onboarding checklist</td><td>List tasks with owners and due dates</td><td>Nothing is missing for your site and role</td></tr>
              <tr><td>New-joiner FAQ</td><td>Write plain answers from your real policy text</td><td>Every answer matches the current policy</td></tr>
              <tr><td>Manager guide</td><td>Explain each manager's tasks in simple steps</td><td>It fits how your managers really work</td></tr>
              <tr><td>Survey comments</td><td>Group comments into themes and count them</td><td>The counts and quotes are real, not invented</td></tr>
              <tr><td>Simpler wording</td><td>Rewrite a long policy summary in plain English</td><td>The meaning did not change</td></tr>
            </tbody>
          </table>
          <p>An <strong>FAQ</strong> (frequently asked questions) is a list of common questions with short answers. A <strong>chat helper</strong> is an AI tool that answers new joiners' questions in a chat window. Later in this course you will build both.</p>
        </div>
        <div class="lc-card">
          <h3>The risks</h3>
          <ul class="lc-list">
            <li><strong>Wrong policy answers.</strong> AI does not know your company's policies. If you do not give it the policy text, it guesses. Its guesses can sound sure and still be wrong.</li>
            <li><strong>Privacy.</strong> New joiners share passports, bank details and health details. Under UK GDPR (the UK data protection law) you must keep personal data safe and use it only for clear reasons. Only use AI tools your company has approved. Never paste real personal details into a public AI tool.</li>
            <li><strong>Generic tone.</strong> AI text can sound like any company. A welcome email should sound like your team and name real people.</li>
            <li><strong>Fairness and access.</strong> A new joiner may need a <strong>reasonable adjustment</strong> (a change that removes a barrier for a disabled person, such as larger print or a quieter room). The UK Equality Act 2010 requires these in many cases. A person must talk with the joiner and decide. AI should not decide.</li>
            <li><strong>Decisions about people.</strong> If AI starts to rate, rank or monitor new joiners, stricter rules can apply. For example, the EU AI Act treats some AI used to manage workers as high-risk. Keep AI to drafting and organising. This is general information, not legal advice. Check with an employment lawyer or HR adviser.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>A safe way to work</h3>
          <ol class="lc-list">
            <li>Use an AI tool your company has approved.</li>
            <li>Give the AI your real policy text or notes. Remove names and personal details.</li>
            <li>Tell it to use only your text and to say "Ask HR" when the text does not answer the question.</li>
            <li>Check every fact, date and name against the source.</li>
            <li>A person edits, approves and sends the final version.</li>
          </ol>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Write an answer for new starters: can I swap shifts?</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>You write FAQ answers for new warehouse staff. Use simple English.
        Use ONLY the policy text below. If the text does not answer the
        question, write: "Please ask your team leader or HR."
        Question: Can I swap shifts in my first month?
        Policy text: [paste the shift swap section of your policy here]
        Answer in 3 short sentences or fewer. Then show the policy line you used.</code></pre>
          <p>Asking for "the policy line you used" helps you check the answer fast.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: Tom tests an AI helper</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Tom asks">Tom tests a draft AI chat helper. He types a common new-joiner question: "Can I swap to late shifts in my first month?"</li>
              <li data-kind="answer" data-label="AI replies">"Yes. After your first week you can swap shifts with any colleague. Just tell your team leader on the day."</li>
              <li data-kind="thought" data-label="Tom thinks">That sounds too easy. New starters do safety training on fixed shifts. He is not sure the policy allows this.</li>
              <li data-kind="tool" data-label="Tom checks">He opens Northbridge's real shift policy in the HR system.</li>
              <li data-kind="result" data-label="What the policy says">No shift swaps in the first 4 weeks during training. After that, swaps need the team leader's approval 48 hours ahead. (Made-up policy.)</li>
              <li data-kind="warn" data-label="The mistake">The AI was given no policy text, so it guessed. A new joiner could swap, miss training and be unsafe.</li>
              <li data-kind="check" data-label="The fix">Tom adds the real policy text to the helper's instructions. He adds a rule: "If unsure, say ask HR." He tests the same question again, and the answer now matches the policy.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to sort a list of onboarding tasks by how safely AI can help. Then decide if you agree with each choice.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an HR adviser who helps teams use AI safely. Use simple English.

        Company: [a made-up 420-person warehouse company in the UK].
        Here are our onboarding tasks:
        1. [Write the welcome email]
        2. [Answer new joiners' questions about holiday and shift swaps]
        3. [Check right-to-work documents]
        4. [Plan the first-week schedule]
        5. [Agree reasonable adjustments with a disabled new joiner]
        6. [Summarise comments from the week-one survey]
        7. [Set up payroll and bank details]
        8. [Write a guide for team leaders]

        Put each task in one group:
        A) AI can draft, a person checks.
        B) AI can help only with real source text and a careful check.
        C) Keep AI out: a person does it.

        Use a table: task, group, reason, main risk, what a person must check.
        Then give 3 privacy rules for using AI in onboarding.
        Do not give legal advice. Say where an HR adviser should confirm.</pre>
            <ul class="ai-try-checks">
              <li>Right-to-work checks, adjustments and bank details are in group C.</li>
              <li>Policy answers need real policy text (group B), not AI guesses.</li>
              <li>Each task names a clear risk and what a person checks.</li>
              <li>The privacy rules say not to paste real personal data into public AI tools.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> AI is a fast first-draft writer, not a source of truth. Give it your real policy text, ask it to show which line it used, and check every fact. People make every decision about a new joiner, and private data stays out of public AI tools.
        </div>
      HTML
      starter_code: nil
    },
    3 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-hr">HR & Recruitment</div>
          <h1 class="lc-title">Rules and Paperwork</h1>
        </div>
        <p class="lc-lead">Every new joiner comes with legal paperwork. Some checks must happen before the person starts work. Other forms have fixed deadlines after day one. If you miss them, the company can face fines and the new joiner can be paid wrongly. In this lesson you will learn the main UK and US onboarding paperwork in general words. You will also learn how AI can help you track it, and what AI must never decide. This lesson is general education, not legal advice. Check with an employment lawyer or HR adviser.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 330" role="img" aria-label="A grid of onboarding paperwork by country and timing. UK before day one: right-to-work check and a privacy notice. UK by day one: written statement of employment particulars. UK first weeks: P45 or starter checklist, and pension auto-enrolment. US before day one: offer and, in New York, a pay notice. US by day one: Form I-9 Section 1 and Form W-4. US first weeks: I-9 Section 2 within 3 business days and the state new hire report within 20 days.">
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <g text-anchor="middle" font-weight="700" fill="#c4b5fd">
                <text x="225" y="28">Before day one</text>
                <text x="435" y="28">By day one</text>
                <text x="645" y="28">First weeks</text>
              </g>
              <rect x="20" y="44" width="90" height="116" rx="8" fill="#27274e" stroke="#8b5cf6" stroke-width="2"/>
              <text x="65" y="108" font-weight="700" text-anchor="middle">UK</text>
              <rect x="20" y="176" width="90" height="116" rx="8" fill="#27274e" stroke="#3b82f6" stroke-width="2"/>
              <text x="65" y="240" font-weight="700" text-anchor="middle">US</text>
              <g text-anchor="middle">
                <rect x="125" y="44" width="200" height="52" rx="8" fill="#1f1f44" stroke="#ec4899"/>
                <text x="225" y="75">Right-to-work check</text>
                <rect x="125" y="108" width="200" height="52" rx="8" fill="#1f1f44" stroke="#22d3ee"/>
                <text x="225" y="139">Privacy notice</text>
                <rect x="335" y="44" width="200" height="116" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
                <text x="435" y="98">Written statement</text>
                <text x="435" y="118" font-size="11" fill="#9b99b8">of employment particulars</text>
                <rect x="545" y="44" width="195" height="52" rx="8" fill="#1f1f44" stroke="#10b981"/>
                <text x="642" y="75">P45 or starter checklist</text>
                <rect x="545" y="108" width="195" height="52" rx="8" fill="#1f1f44" stroke="#10b981"/>
                <text x="642" y="139">Pension auto-enrolment</text>
                <rect x="125" y="176" width="200" height="52" rx="8" fill="#1f1f44" stroke="#22d3ee"/>
                <text x="225" y="207">Offer letter</text>
                <rect x="125" y="240" width="200" height="52" rx="8" fill="#1f1f44" stroke="#22d3ee"/>
                <text x="225" y="271">Pay notice (New York)</text>
                <rect x="335" y="176" width="200" height="52" rx="8" fill="#1f1f44" stroke="#ec4899"/>
                <text x="435" y="207">Form I-9 Section 1</text>
                <rect x="335" y="240" width="200" height="52" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
                <text x="435" y="271">Form W-4 (tax)</text>
                <rect x="545" y="176" width="195" height="52" rx="8" fill="#1f1f44" stroke="#ec4899"/>
                <text x="642" y="199">I-9 Section 2</text>
                <text x="642" y="217" font-size="11" fill="#9b99b8">within 3 business days</text>
                <rect x="545" y="240" width="195" height="52" rx="8" fill="#1f1f44" stroke="#10b981"/>
                <text x="642" y="263">New hire report</text>
                <text x="642" y="281" font-size="11" fill="#9b99b8">within 20 days, some sooner</text>
              </g>
              <text x="380" y="316" font-size="12" fill="#9b99b8" text-anchor="middle">General education, not legal advice. Check GOV.UK, USCIS, the IRS and a qualified adviser.</text>
            </g>
          </svg>
          <figcaption>The main onboarding paperwork in the UK and the US, grouped by when it is due.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>UK paperwork: what and when</h3>
          <table class="lc-table">
            <thead><tr><th>Item</th><th>What it is</th><th>When (in general)</th></tr></thead>
            <tbody>
              <tr><td>Right-to-work check</td><td>A check that the person is allowed to work in the UK. It can be a check of original documents, an online check with the person's share code, or a digital ID check through a certified provider for some British and Irish passport holders.</td><td>Before the person starts work</td></tr>
              <tr><td>Written statement of employment particulars</td><td>The key terms of the job in writing: pay, hours, holiday, job title, start date and more. It is required by the Employment Rights Act 1996.</td><td>The main statement on or before day one. Some extra details can follow within two months.</td></tr>
              <tr><td>Tax details</td><td>The P45 from the person's last job. If they do not have one, they fill in HMRC's starter checklist.</td><td>Before the first payday, so tax is right</td></tr>
              <tr><td>Workplace pension</td><td>Employers must check if each worker must be put into a workplace pension (auto-enrolment).</td><td>Soon after the start; check the rules for your scheme</td></tr>
              <tr><td>Privacy notice</td><td>Under UK GDPR and the Data Protection Act 2018, you tell new joiners what personal data you keep, why and for how long.</td><td>When you collect their data</td></tr>
            </tbody>
          </table>
          <p>Do right-to-work checks the same way for every new joiner. Do not check only people you think "look foreign". That can be unlawful discrimination under the Equality Act 2010. Home Office guidance changes often, so always use the current version on GOV.UK.</p>
          <p>Health and disability details are <strong>special category data</strong> (extra-sensitive data under UK GDPR). Ask only for what you need, for example to plan a reasonable adjustment. Store it separately and lock it down.</p>
        </div>
        <div class="lc-card">
          <h3>UK changes on the way</h3>
          <p>The Employment Rights Act 2025 is coming into force in stages during 2026 and 2027. Two planned changes affect onboarding:</p>
          <ul class="lc-list">
            <li><strong>A statement about trade unions.</strong> Planned UK employment law changes say new joiners must get a government-written statement of their right to join a trade union. It comes with their written statement of employment particulars. Check GOV.UK for the start date.</li>
            <li><strong>Unfair dismissal after six months.</strong> For dismissals from 1 January 2027, the plan is that employees can claim unfair dismissal after six months of work, not two years. So a well-run, well-recorded probation period matters even more.</li>
          </ul>
          <p>Dates can move. Check GOV.UK and ask your HR adviser what is in force before you update your onboarding pack.</p>
        </div>
        <div class="lc-card">
          <h3>US paperwork: what and when</h3>
          <p>Brightside Software is a made-up 120-person software company in New York. Its people lead, Maria Lopez, tracks these items for each new hire:</p>
          <table class="lc-table">
            <thead><tr><th>Item</th><th>What it is</th><th>When (in general)</th></tr></thead>
            <tbody>
              <tr><td>Form I-9, Section 1</td><td>The employee confirms they are allowed to work in the US.</td><td>No later than the first day of work, and only after accepting the job offer</td></tr>
              <tr><td>Form I-9, Section 2</td><td>The employer looks at the employee's original documents and records them.</td><td>Within 3 business days after the first day of work</td></tr>
              <tr><td>Form W-4</td><td>The employee tells the employer how much federal income tax to hold back from pay.</td><td>At the start, before the first payroll</td></tr>
              <tr><td>New hire report</td><td>The employer reports each new hire to the state.</td><td>Within 20 days of hire under federal law; some states require it sooner</td></tr>
              <tr><td>Pay notice (New York)</td><td>New York law requires a written notice of pay rate and payday, which the employee signs to confirm they received it.</td><td>At the time of hiring</td></tr>
            </tbody>
          </table>
          <p>For the I-9, the employee chooses which acceptable documents to show. Do not ask for a specific document, such as a passport. Rules differ by state, so check the official USCIS and IRS pages and ask an employment lawyer.</p>
        </div>
        <div class="lc-card">
          <h3>How AI helps with paperwork, and where it stops</h3>
          <p>AI can build a paperwork tracker, explain a form in plain English and draft reminder emails. It must not decide if a document is valid. It must not see real passports, visas or tax forms.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>What forms does a new employee need?</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>I am an HR adviser at a made-up UK warehouse company in Manchester.
        Build a paperwork tracker for a new warehouse operative.
        Columns: item, what it is, who owns it, when it is due, official source to check.
        Include: right-to-work check, written statement of particulars,
        P45 or starter checklist, pension auto-enrolment, privacy notice.
        If you are not sure about a deadline, write "CHECK" instead of guessing.
        Do not give legal advice.</code></pre>
          <p>The "write CHECK instead of guessing" rule is important. AI often states wrong deadlines with confidence. You check each one on GOV.UK or with your adviser.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: when is it due?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each paperwork task by when it is due, in general terms.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="before" data-label="Before work starts"></div>
              <div data-sorter-target="bucket" data-bucket="dayone" data-label="By day one"></div>
              <div data-sorter-target="bucket" data-bucket="after" data-label="After day one, by a deadline"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="before" data-why="UK employers must check the right to work before the person starts work.">UK: right-to-work check for Daniel at Northbridge.</li>
              <li data-bucket="dayone" data-why="The main written statement is due on or before the first day of work.">UK: Daniel's written statement of employment particulars.</li>
              <li data-bucket="after" data-why="Some extra details, such as pension details, can follow within two months of the start.">UK: some extra written details, such as pension details, sent later.</li>
              <li data-bucket="dayone" data-why="The employee completes Section 1 no later than the first day of work.">US: Form I-9 Section 1 for a new Brightside hire.</li>
              <li data-bucket="after" data-why="The employer completes Section 2 within 3 business days after the first day of work.">US: Form I-9 Section 2 for the same hire.</li>
              <li data-bucket="after" data-why="Federal law says within 20 days of hire. Some states require it sooner.">US: the state new hire report.</li>
              <li data-bucket="before" data-why="New York requires the written pay notice at the time of hiring, before work begins.">US: New York pay rate and payday notice.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to build a paperwork tracker for one role. Then check every deadline against an official source.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an onboarding administrator. Use simple English.

        Country: [UK]
        Company: [a made-up 420-person warehouse company in Manchester]
        Role: [warehouse operative on the early shift]
        Start date: [Monday 2 November 2026]

        Build a paperwork tracker as a table with these columns:
        item | what it is (one sentence) | who owns it | when it is due | official source to check | status.

        Rules:
        - Include right-to-work checks, the written terms of employment, tax and payroll forms, pensions and the privacy notice. Add anything else that is usual for this country.
        - If you are not sure about a deadline or rule, write CHECK in that cell. Do not guess.
        - Do not ask for real personal data. Use placeholders.
        - Add a short list of 3 things AI must not do in this process.
        - End with: "General information, not legal advice. Confirm with an HR adviser or employment lawyer."</pre>
            <ul class="ai-try-checks">
              <li>The right-to-work check is before work starts, and the written statement is by day one.</li>
              <li>Unsure deadlines say CHECK instead of a guess.</li>
              <li>Each row names an official source, such as GOV.UK or HMRC.</li>
              <li>It says AI must not judge whether documents are real or valid.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Paperwork deadlines are fixed by law, so build them into your onboarding timeline. At Northbridge, 6 of the last 24 warehouse starters got their written statement after day one. That is a legal gap, not just a bad experience. Let AI build the tracker, but check every rule at the official source.
        </div>
      HTML
      starter_code: nil
    },
    4 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-hr">HR & Recruitment</div>
          <h1 class="lc-title">Mapping the New Joiner Journey</h1>
        </div>
        <p class="lc-lead">A new joiner meets many people and systems in their first 90 days. Often nobody sees the whole picture. A journey map shows every step, who owns it and how the new joiner feels. In this lesson you will learn to build a journey map for one role. You will see why each role needs its own map. You will also use AI to turn messy notes into a clear first draft. Priya Shah at Northbridge Logistics maps the journey for Daniel Okafor, a made-up new warehouse operative in Manchester.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 330" role="img" aria-label="A journey map for a warehouse operative as a grid. Columns are the stages: offer, pre-boarding, day one, week one, and days 8 to 90. Rows are touchpoint, owner, feeling and today's gap. Touchpoints: offer call, welcome email, induction at 08:00, buddy shifts, week 6 check-in. Owners: recruiter, Tom in HR, team leader and trainer, buddy, team leader. Feelings: excited, unsure, nervous, tired, worried about pick rate. Gaps today: unclear shift, old template, no login, no buddy, no plan.">
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <g text-anchor="middle" font-weight="700" fill="#c4b5fd">
                <text x="188" y="30">Offer</text>
                <text x="312" y="30">Pre-boarding</text>
                <text x="436" y="30">Day one</text>
                <text x="560" y="30">Week one</text>
                <text x="684" y="30">Days 8 to 90</text>
              </g>
              <g font-weight="700">
                <rect x="20" y="44" width="100" height="56" rx="8" fill="#27274e" stroke="#8b5cf6"/>
                <text x="70" y="77" text-anchor="middle">Touchpoint</text>
                <rect x="20" y="108" width="100" height="56" rx="8" fill="#27274e" stroke="#3b82f6"/>
                <text x="70" y="141" text-anchor="middle">Owner</text>
                <rect x="20" y="172" width="100" height="56" rx="8" fill="#27274e" stroke="#22d3ee"/>
                <text x="70" y="205" text-anchor="middle">Feeling</text>
                <rect x="20" y="236" width="100" height="56" rx="8" fill="#27274e" stroke="#ec4899"/>
                <text x="70" y="269" text-anchor="middle">Gap today</text>
              </g>
              <g fill="#1f1f44" stroke="#8b5cf6">
                <rect x="128" y="44" width="120" height="56" rx="6"/><rect x="252" y="44" width="120" height="56" rx="6"/><rect x="376" y="44" width="120" height="56" rx="6"/><rect x="500" y="44" width="120" height="56" rx="6"/><rect x="624" y="44" width="120" height="56" rx="6"/>
              </g>
              <g fill="#1f1f44" stroke="#3b82f6">
                <rect x="128" y="108" width="120" height="56" rx="6"/><rect x="252" y="108" width="120" height="56" rx="6"/><rect x="376" y="108" width="120" height="56" rx="6"/><rect x="500" y="108" width="120" height="56" rx="6"/><rect x="624" y="108" width="120" height="56" rx="6"/>
              </g>
              <g fill="#1f1f44" stroke="#22d3ee">
                <rect x="128" y="172" width="120" height="56" rx="6"/><rect x="252" y="172" width="120" height="56" rx="6"/><rect x="376" y="172" width="120" height="56" rx="6"/><rect x="500" y="172" width="120" height="56" rx="6"/><rect x="624" y="172" width="120" height="56" rx="6"/>
              </g>
              <g fill="#1f1f44" stroke="#ec4899" stroke-dasharray="4 3">
                <rect x="128" y="236" width="120" height="56" rx="6"/><rect x="252" y="236" width="120" height="56" rx="6"/><rect x="376" y="236" width="120" height="56" rx="6"/><rect x="500" y="236" width="120" height="56" rx="6"/><rect x="624" y="236" width="120" height="56" rx="6"/>
              </g>
              <g text-anchor="middle" font-size="12">
                <text x="188" y="77">Offer call</text>
                <text x="312" y="77">Welcome email</text>
                <text x="436" y="77">Induction 08:00</text>
                <text x="560" y="77">Buddy shifts</text>
                <text x="684" y="77">Week 6 check-in</text>
                <text x="188" y="141">Recruiter</text>
                <text x="312" y="141">Tom (HR)</text>
                <text x="436" y="133">Team leader</text>
                <text x="436" y="150">+ trainer</text>
                <text x="560" y="141">Buddy</text>
                <text x="684" y="141">Team leader</text>
                <text x="188" y="205">Excited</text>
                <text x="312" y="205">Unsure</text>
                <text x="436" y="205">Nervous</text>
                <text x="560" y="205">Tired, slow</text>
                <text x="684" y="205">Pick rate worry</text>
              </g>
              <g text-anchor="middle" font-size="12" fill="#f9a8d4">
                <text x="188" y="269">Unclear shift</text>
                <text x="312" y="269">Old template</text>
                <text x="436" y="269">No login</text>
                <text x="560" y="269">No buddy</text>
                <text x="684" y="269">No plan</text>
              </g>
              <text x="380" y="316" font-size="12" fill="#9b99b8" text-anchor="middle">Made-up journey map for Daniel Okafor, warehouse operative, Manchester</text>
            </g>
          </svg>
          <figcaption>A journey map shows each stage, the touchpoint, who owns it, how the new joiner feels and where things go wrong today.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>What a journey map is</h3>
          <p>A <strong>journey map</strong> is a table or picture of every step a new joiner goes through. It shows the steps from their point of view, not from HR's.</p>
          <ul class="lc-list">
            <li><strong>Touchpoint</strong>: any moment the new joiner deals with the company. Examples: an email, a call, a form, a login, a meeting.</li>
            <li><strong>Owner</strong>: the one named person or team who makes sure the touchpoint happens. One owner per touchpoint, not "everyone".</li>
            <li><strong>Feeling</strong>: how the new joiner is likely to feel at that moment. Ask recent joiners. Do not guess.</li>
            <li><strong>Gap</strong>: where things go wrong today. Take gaps from real evidence, such as leaver calls and surveys.</li>
          </ul>
          <p>A checklist says what HR must do. A journey map shows what the new joiner experiences. You need both. The map helps you find the gaps. The checklist makes sure the fixes happen.</p>
        </div>
        <div class="lc-card">
          <h3>Worked example: Daniel's journey</h3>
          <p>Daniel accepted his offer on Wednesday 21 October 2026. He starts on Monday 2 November 2026. His team leader is Kevin Doyle. (All details are made up.)</p>
          <table class="lc-table">
            <thead><tr><th>Stage</th><th>Touchpoint</th><th>Owner</th><th>Gap today</th><th>Fix</th></tr></thead>
            <tbody>
              <tr><td>Offer</td><td>Offer call and written offer</td><td>Recruiter</td><td>7 early leavers said the shift was not as explained</td><td>Show the shift pattern in writing, with an example week</td></tr>
              <tr><td>Pre-boarding</td><td>Welcome email from Kevin</td><td>Tom Reed (HR)</td><td>Old template with out-of-date names</td><td>New template, checked each quarter</td></tr>
              <tr><td>Pre-boarding</td><td>Scanner login and boots</td><td>IT desk, site admin</td><td>9 of 24 recent starters had no login on day one</td><td>"Ready" check 3 working days before the start</td></tr>
              <tr><td>Day one</td><td>Induction and safety walk</td><td>Kevin and the site trainer</td><td>Told to arrive at 06:00, but the trainer arrives at 08:00</td><td>Day one starts at 08:00, with hands-on safety practice</td></tr>
              <tr><td>Week one</td><td>Shifts next to a buddy</td><td>Kevin picks the buddy</td><td>No buddy scheme</td><td>A named buddy for 4 weeks</td></tr>
              <tr><td>Days 8 to 90</td><td>Check-ins at weeks 2, 6 and 12</td><td>Kevin</td><td>No written plan</td><td>A simple 30-60-90 day plan</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Each role needs its own map</h3>
          <p>Northbridge redesigns onboarding for three groups. Their key moments are different:</p>
          <table class="lc-table">
            <thead><tr><th>Role (made-up joiner)</th><th>Start</th><th>Key moments</th><th>Main risk</th></tr></thead>
            <tbody>
              <tr><td>Warehouse operative (Daniel Okafor, Manchester)</td><td>Mon 2 Nov 2026</td><td>Shift pattern, safety boots, equipment training, a buddy</td><td>Feeling unsafe or alone in week one</td></tr>
              <tr><td>Customer service coordinator, hybrid (Aisha Rahman, London)</td><td>Mon 9 Nov 2026</td><td>Laptop and system access, meeting the team, home-working set-up</td><td>Slow systems access, lonely home days</td></tr>
              <tr><td>New shift manager (Grace Mensah, London)</td><td>Tue 1 Dec 2026</td><td>Handover from the old manager, meeting her team one-to-one, people-manager training</td><td>No clear goals, too much too soon</td></tr>
            </tbody>
          </table>
          <p><strong>Hybrid</strong> means the person works some days in the office and some days at home. Aisha works 3 days a week in the office.</p>
        </div>
        <div class="lc-card">
          <h3>Using AI to draft the map</h3>
          <p>You often start with messy notes from meetings and leaver calls. AI is good at turning them into a clear table.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Make an onboarding journey map.</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Make a new-joiner journey map for a warehouse operative at a made-up
        UK logistics company. Stages: offer, pre-boarding, day one, week one,
        days 8 to 90. For each stage give: touchpoints, one owner (a job title),
        how the joiner may feel, and the gap from my notes below.
        Notes: [paste your notes with names and personal details removed]
        Show it as a table. Mark any touchpoint that has no clear owner.</code></pre>
          <p>Then check the draft with real people:</p>
          <ul class="lc-list">
            <li>Ask each owner: "Is this really your job? Can you do it by this date?"</li>
            <li>Ask two recent joiners to read the map and add what is missing.</li>
            <li>Check that every gap comes from your evidence, not from the AI.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Activity: build a journey map</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put Priya's steps for building a journey map in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Choose one role and one site: warehouse operatives in Manchester.</li>
              <li data-order="2">List the stages from the offer to day 90.</li>
              <li data-order="3">Collect evidence: leaver calls, survey comments and talks with recent joiners.</li>
              <li data-order="4">Ask AI to draft touchpoints, owners and gaps from the notes, with names removed.</li>
              <li data-order="5">Check each owner and date with the real people.</li>
              <li data-order="6">Mark the biggest gaps and choose the top 3 fixes.</li>
              <li data-order="7">Use the map for the next new joiner, then update it.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to draft a journey map for one role. Then check every owner and gap with real people.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an onboarding designer. Use simple English.

        Company: [Northbridge Logistics, a made-up 420-person warehouse company in London and Manchester]
        Role: [customer service coordinator, hybrid: 3 office days a week, London office]
        Known problems from our notes (made up): [laptop not ready on day one; nobody to have lunch with; did not know who to ask about systems; too many slide talks in week one].

        Build a new-joiner journey map with these stages: offer, pre-boarding, day one, week one, days 8 to 90.
        Show a table with these columns: stage | touchpoints | owner (job title) | how the joiner may feel | gap | suggested fix.

        Rules:
        - One owner per touchpoint.
        - Only list gaps from my notes. Put any extra ideas in a separate list called "Ideas to test".
        - Add 3 questions to ask recent joiners to check the map.
        - Do not invent statistics.</pre>
            <ul class="ai-try-checks">
              <li>Every touchpoint has exactly one owner.</li>
              <li>The gaps come from your notes, and extra ideas are kept separate.</li>
              <li>The map covers home days as well as office days.</li>
              <li>It includes questions to test the map with real joiners.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Map the journey from the new joiner's side, one role at a time. Give every touchpoint one named owner. Take every gap from real evidence. AI can turn your notes into a clear draft, but recent joiners and owners must check it.
        </div>
      HTML
      starter_code: nil
    },
    5 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-hr">HR & Recruitment</div>
          <h1 class="lc-title">Pre-Boarding</h1>
        </div>
        <p class="lc-lead">Pre-boarding is the time between the offer being accepted and the first day. It can be one week or several months. In this time the new joiner decides if they made the right choice. In this lesson you will learn what to send before day one, what to get ready and how to set due dates. You will use AI to draft a welcome email and a ready-for-day-one checklist. Tom Reed at Northbridge Logistics prepares for Daniel Okafor, who starts on Monday 2 November 2026.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 320" role="img" aria-label="A timeline of Daniel's pre-boarding. Wednesday 21 October: offer accepted, the team leader calls. Thursday 22 October: welcome email and contract to sign. Tuesday 27 October: right-to-work check. Wednesday 28 October: logins and boots ready, three working days before the start. Friday 30 October: see you Monday message. Monday 2 November: day one starts at 08:00.">
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <text x="380" y="26" font-weight="700" fill="#c4b5fd" text-anchor="middle">Daniel Okafor: from offer to day one (made up)</text>
              <line x1="40" y1="160" x2="730" y2="160" stroke="#9b99b8" stroke-width="2"/>
              <g stroke-width="2" fill="#1f1f44">
                <circle cx="60" cy="160" r="9" stroke="#8b5cf6"/>
                <circle cx="190" cy="160" r="9" stroke="#3b82f6"/>
                <circle cx="320" cy="160" r="9" stroke="#ec4899"/>
                <circle cx="450" cy="160" r="9" stroke="#f59e0b"/>
                <circle cx="580" cy="160" r="9" stroke="#22d3ee"/>
                <circle cx="710" cy="160" r="11" stroke="#10b981" fill="#10b981"/>
              </g>
              <g stroke="#9b99b8" stroke-width="1.5">
                <line x1="60" y1="126" x2="60" y2="150"/>
                <line x1="320" y1="126" x2="320" y2="150"/>
                <line x1="580" y1="126" x2="580" y2="150"/>
                <line x1="190" y1="170" x2="190" y2="192"/>
                <line x1="450" y1="170" x2="450" y2="192"/>
                <line x1="710" y1="172" x2="710" y2="192"/>
              </g>
              <g text-anchor="middle" font-size="12">
                <text x="70" y="78" font-weight="700" fill="#c4b5fd">Wed 21 Oct</text>
                <text x="70" y="98">Offer accepted</text>
                <text x="70" y="116" fill="#9b99b8">team leader calls</text>
                <text x="320" y="78" font-weight="700" fill="#c4b5fd">Tue 27 Oct</text>
                <text x="320" y="98">Right-to-work</text>
                <text x="320" y="116" fill="#9b99b8">check (HR)</text>
                <text x="580" y="78" font-weight="700" fill="#c4b5fd">Fri 30 Oct</text>
                <text x="580" y="98">"See you Monday"</text>
                <text x="580" y="116" fill="#9b99b8">message</text>
                <text x="190" y="210" font-weight="700" fill="#c4b5fd">Thu 22 Oct</text>
                <text x="190" y="230">Welcome email</text>
                <text x="190" y="248" fill="#9b99b8">contract to sign</text>
                <text x="450" y="210" font-weight="700" fill="#c4b5fd">Wed 28 Oct</text>
                <text x="450" y="230">Logins + boots ready</text>
                <text x="450" y="248" fill="#9b99b8">3 working days before</text>
                <text x="700" y="210" font-weight="700" fill="#10b981">Mon 2 Nov</text>
                <text x="700" y="230">Day one</text>
                <text x="700" y="248" fill="#9b99b8">starts at 08:00</text>
              </g>
              <rect x="120" y="272" width="520" height="34" rx="8" fill="#27274e" stroke="#8b5cf6"/>
              <text x="380" y="294" text-anchor="middle" font-size="12">Only 7 working days between the yes and day one, so every task needs a date</text>
            </g>
          </svg>
          <figcaption>Daniel's pre-boarding timeline. Each step has a date and an owner, so nothing is left for day one.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>What to send before day one</h3>
          <p>Good pre-boarding does two jobs. It gets everything ready. It also keeps the new joiner feeling wanted, so they do not change their mind. Send small, useful pieces. Do not send a 60-page handbook or ask for unpaid work.</p>
          <table class="lc-table">
            <thead><tr><th>What to send</th><th>Why</th><th>Who sends it</th></tr></thead>
            <tbody>
              <tr><td>A short welcome call or message from the team leader</td><td>A real person says "we are glad you are coming"</td><td>Kevin Doyle, team leader</td></tr>
              <tr><td>The written statement of employment particulars to sign</td><td>It is a legal requirement by day one, and it confirms the shift pattern in writing</td><td>Tom Reed, HR</td></tr>
              <tr><td>First-day details: time, address, entrance, who meets him</td><td>Removes day-one worry</td><td>Tom Reed, HR</td></tr>
              <tr><td>What to wear and bring, and what is provided</td><td>Avoids a wasted first morning</td><td>Tom Reed, HR</td></tr>
              <tr><td>A link to the HR system to give tax and bank details securely</td><td>Payroll gets it right the first time (3 early leavers said their first payslip was wrong)</td><td>Payroll, through the HR system</td></tr>
              <tr><td>A short form for boot and uniform sizes</td><td>Safety kit is ready on day one</td><td>Site admin</td></tr>
            </tbody>
          </table>
          <p>Never ask for bank details or passport copies by normal email. Use your <strong>HRIS</strong> (HR information system: the software that stores employee records, such as Workday, BambooHR, HiBob or Personio).</p>
        </div>
        <div class="lc-card">
          <h3>A ready-for-day-one checklist with due dates</h3>
          <p>Tom keeps a simple tracker in a spreadsheet. Column B holds the start date. Column C holds how many working days before the start each task is due. He works out each due date with this formula:</p>
          <pre><code>=WORKDAY(B2,-C2)</code></pre>
          <p><code>WORKDAY</code> counts only Monday to Friday. You can add a range of bank holidays as a third input. For Daniel, B2 is Monday 2 November 2026.</p>
          <table class="lc-table">
            <thead><tr><th>Task</th><th>Owner</th><th>Working days before</th><th>Due date</th></tr></thead>
            <tbody>
              <tr><td>Order safety boots and hi-vis vest</td><td>Site admin</td><td>5</td><td>Mon 26 Oct 2026</td></tr>
              <tr><td>Name Daniel's buddy</td><td>Kevin Doyle</td><td>5</td><td>Mon 26 Oct 2026</td></tr>
              <tr><td>Scanner and warehouse system logins ready</td><td>IT desk</td><td>3</td><td>Wed 28 Oct 2026</td></tr>
              <tr><td>Signed written statement received</td><td>Tom Reed</td><td>3</td><td>Wed 28 Oct 2026</td></tr>
              <tr><td>"See you Monday" message sent</td><td>Kevin Doyle</td><td>1</td><td>Fri 30 Oct 2026</td></tr>
            </tbody>
          </table>
          <p>A second formula flags late tasks. Column D is the due date and column E is the status:</p>
          <pre><code>=IF(AND(E2&lt;&gt;"Done",D2&lt;TODAY()),"LATE","")</code></pre>
          <p>The right-to-work check has a fixed appointment: Tuesday 27 October 2026. It must happen before Daniel starts work.</p>
        </div>
        <div class="lc-card">
          <h3>Drafting the welcome email with AI</h3>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Write a welcome email for a new warehouse worker.</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Write a welcome email from a team leader to a new warehouse operative.
        Use simple, friendly English. Under 180 words. Easy to read on a phone.
        Facts (use only these):
        - First name: Daniel. Team leader: Kevin.
        - Start: Monday 2 November 2026 at 08:00, Manchester site, main gate.
        - Kevin meets him at reception. Day one: safety walk, kit, meet his buddy.
        - Wear comfortable clothes. Safety boots and hi-vis are provided.
        - Bring: lunch or money for the canteen.
        - Questions: call Tom Reed in HR on [phone number].
        Do not add any fact that is not in this list.</code></pre>
          <p>Before sending, check every time, place and name against the facts. Read it aloud. Does it sound like Kevin? Does it make any promise you cannot keep?</p>
        </div>
        <div class="lc-card">
          <h3>Activity: Tom checks an AI draft</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Tom asks">Tom pastes the old welcome template and asks: "Update this welcome email for Daniel, who starts on Monday 2 November 2026."</li>
              <li data-kind="answer" data-label="AI replies">The draft is warm and clear. It says: "Please arrive at 06:00. Bring your passport so we can check your right to work. Free parking is on site."</li>
              <li data-kind="warn" data-label="Mistake 1">The 06:00 time came from the old template. In the new design, day one starts at 08:00.</li>
              <li data-kind="warn" data-label="Mistake 2">The right-to-work check is already booked for Tuesday 27 October, before he starts. Asking for a passport on day one is wrong and too late.</li>
              <li data-kind="tool" data-label="Tom checks">Tom checks the site information sheet. Parking at the Manchester site is limited, and staff must register their car first.</li>
              <li data-kind="result" data-label="Fixed draft">Tom fixes all three points. He asks AI to make the email shorter and easier to read on a phone.</li>
              <li data-kind="check" data-label="Final check">Kevin reads it and adds one personal line about the team. Kevin sends it on Thursday 22 October.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to build a pre-boarding plan and welcome email for one new joiner. Then check every date, fact and promise.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an onboarding coordinator. Use simple, friendly English.

        New joiner (made up): [Aisha, customer service coordinator, hybrid: 3 office days a week]
        Company: [Northbridge Logistics, a made-up warehouse and delivery company]
        Office: [London head office]
        Offer accepted: [Friday 9 October 2026]
        Start date: [Monday 9 November 2026, 09:30]
        Manager: [Laura, customer service manager]

        Please give me:
        1. A pre-boarding timeline as a table: task | owner (job title) | due date | why it matters. Include contract, right-to-work check, laptop and system access, a buddy, and keeping in touch during her notice period. Use real weekdays.
        2. A welcome email from Laura, under 180 words, easy to read on a phone.
        3. A "what to bring and what we provide" list.
        4. A list of facts I must confirm before sending, marked [CHECK].

        Rules: do not invent company policies, perks or parking. Never ask for bank details or ID by email. Do not send a long handbook before day one.</pre>
            <ul class="ai-try-checks">
              <li>Every due date falls on a weekday and before the start date.</li>
              <li>The right-to-work check is before day one and the contract is due by day one.</li>
              <li>The email has no invented perks, policies or parking promises.</li>
              <li>Facts that need checking are marked [CHECK].</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Pre-boarding means nothing is left for day one. Give every task an owner and a due date, worked back from the start date. Send a few small, warm messages, not a pile of reading. Check every AI draft against the facts, because old templates and AI guesses both carry wrong details.
        </div>
      HTML
      starter_code: nil
    },
    6 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-hr">HR & Recruitment</div>
          <h1 class="lc-title">The First Day and First Week</h1>
        </div>
        <p class="lc-lead">The first day and first week shape how a new joiner feels about the whole job. A good first week is calm, safe and planned. A bad one is either empty or full of slides. In this lesson you will learn to plan a day-one schedule and a first week. You will add introductions and quick wins, and you will avoid overload. You will use AI to draft the schedule and check it yourself. Kevin Doyle, a team leader at Northbridge Logistics, plans the first week for Daniel Okafor, who starts on Monday 2 November 2026.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 360" role="img" aria-label="Left: Daniel's day one schedule on Monday 2 November 2026, from 08:00 to 14:00, in nine blocks: welcome and locker, safety talk, kit and scanner login, break, hands-on safety practice, site tour and meeting Marcus his buddy, lunch with Marcus, first picks with Marcus, and a check-in with Kevin. Right: where the 360 minutes go. Hands-on 165 minutes, social 105, talk 45 and breaks 45. The old day one was a 180-minute slide talk. In week one there is no pick-rate target and a short check-in every shift.">
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <text x="210" y="26" font-weight="700" fill="#c4b5fd" text-anchor="middle">Daniel's day one: Mon 2 Nov 2026</text>
              <g fill="#1f1f44" stroke-width="1.5">
                <rect x="20" y="40" width="380" height="26" rx="6" stroke="#8b5cf6"/>
                <rect x="20" y="72" width="380" height="26" rx="6" stroke="#3b82f6"/>
                <rect x="20" y="104" width="380" height="26" rx="6" stroke="#10b981"/>
                <rect x="20" y="136" width="380" height="26" rx="6" stroke="#9b99b8"/>
                <rect x="20" y="168" width="380" height="26" rx="6" stroke="#10b981"/>
                <rect x="20" y="200" width="380" height="26" rx="6" stroke="#8b5cf6"/>
                <rect x="20" y="232" width="380" height="26" rx="6" stroke="#9b99b8"/>
                <rect x="20" y="264" width="380" height="26" rx="6" stroke="#10b981"/>
                <rect x="20" y="296" width="380" height="26" rx="6" stroke="#8b5cf6"/>
              </g>
              <g font-weight="700" fill="#c4b5fd">
                <text x="32" y="58">08:00</text>
                <text x="32" y="90">08:30</text>
                <text x="32" y="122">09:15</text>
                <text x="32" y="154">09:45</text>
                <text x="32" y="186">10:00</text>
                <text x="32" y="218">11:00</text>
                <text x="32" y="250">11:45</text>
                <text x="32" y="282">12:15</text>
                <text x="32" y="314">13:30</text>
              </g>
              <g>
                <text x="90" y="58">Welcome, badge, locker</text>
                <text x="90" y="90">Safety talk</text>
                <text x="90" y="122">Kit and scanner login test</text>
                <text x="90" y="154">Break</text>
                <text x="90" y="186">Hands-on safety practice</text>
                <text x="90" y="218">Tour, team, meet Marcus</text>
                <text x="90" y="250">Lunch with Marcus</text>
                <text x="90" y="282">First picks with Marcus</text>
                <text x="90" y="314">Check-in with Kevin</text>
              </g>
              <g font-size="11" fill="#9b99b8" text-anchor="end">
                <text x="392" y="58">30 min</text>
                <text x="392" y="90">45 min</text>
                <text x="392" y="122">30 min</text>
                <text x="392" y="154">15 min</text>
                <text x="392" y="186">60 min</text>
                <text x="392" y="218">45 min</text>
                <text x="392" y="250">30 min</text>
                <text x="392" y="282">75 min</text>
                <text x="392" y="314">30 min</text>
              </g>
              <text x="585" y="26" font-weight="700" fill="#c4b5fd" text-anchor="middle">Where the 360 minutes go</text>
              <text x="440" y="60">Hands-on</text>
              <rect x="520" y="46" width="165" height="20" rx="4" fill="#10b981"/>
              <text x="692" y="60" font-weight="700">165</text>
              <text x="440" y="92">Social</text>
              <rect x="520" y="78" width="105" height="20" rx="4" fill="#8b5cf6"/>
              <text x="632" y="92" font-weight="700">105</text>
              <text x="440" y="124">Talk</text>
              <rect x="520" y="110" width="45" height="20" rx="4" fill="#3b82f6"/>
              <text x="572" y="124" font-weight="700">45</text>
              <text x="440" y="156">Breaks</text>
              <rect x="520" y="142" width="45" height="20" rx="4" fill="#9b99b8"/>
              <text x="572" y="156" font-weight="700">45</text>
              <rect x="430" y="186" width="310" height="58" rx="8" fill="#27274e" stroke="#ec4899" stroke-dasharray="5 4"/>
              <text x="585" y="210" text-anchor="middle">Old day one: 180-minute slide talk</text>
              <text x="585" y="230" text-anchor="middle" font-size="12" fill="#9b99b8">no hands-on practice, start at 06:00</text>
              <rect x="430" y="256" width="310" height="66" rx="8" fill="#27274e" stroke="#22d3ee"/>
              <text x="585" y="280" text-anchor="middle" font-weight="700">Week one</text>
              <text x="585" y="300" text-anchor="middle" font-size="12">No pick-rate target. Same buddy.</text>
              <text x="585" y="316" text-anchor="middle" font-size="12">10-minute check-in every shift.</text>
              <text x="380" y="348" font-size="12" fill="#9b99b8" text-anchor="middle">Made-up schedule for Northbridge Logistics, Manchester site</text>
            </g>
          </svg>
          <figcaption>Daniel's new day one is mostly hands-on practice and meeting people. Only 45 minutes are talk, compared with a 180-minute slide talk before.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>What day one must do</h3>
          <p>A good first day has four jobs. Plan every hour around them.</p>
          <ul class="lc-list">
            <li><strong>Feel expected.</strong> A named person meets the new joiner. Their badge, locker and kit are ready.</li>
            <li><strong>Feel safe.</strong> They learn the safety rules and practise them, not just hear them.</li>
            <li><strong>Know who to ask.</strong> They meet their team leader and their <strong>buddy</strong> (a friendly colleague who helps them in the first weeks).</li>
            <li><strong>Get one quick win.</strong> A <strong>quick win</strong> is a small, real task the person completes on day one. It shows them they can do the job.</li>
          </ul>
          <p>In the UK, employers must give adequate health and safety training when people start. This comes from the Management of Health and Safety at Work Regulations 1999. The training must be in working hours and free for the worker. This is general information, not legal advice. Check with a health and safety adviser.</p>
          <p>Kevin's schedule for Daniel (made up). Day one starts at 08:00, when the site trainer and HR are on site. Daniel's normal early shift (06:00 to 14:00) starts on Tuesday.</p>
          <table class="lc-table">
            <thead><tr><th>Time</th><th>Session</th><th>Who</th><th>Type</th><th>Minutes</th></tr></thead>
            <tbody>
              <tr><td>08:00</td><td>Welcome at the main gate, badge, locker</td><td>Kevin Doyle</td><td>Social</td><td>30</td></tr>
              <tr><td>08:30</td><td>Safety talk: fire exits, first aid, walkways</td><td>Site trainer</td><td>Talk</td><td>45</td></tr>
              <tr><td>09:15</td><td>Boots and hi-vis, scanner login test</td><td>Site admin, IT desk</td><td>Hands-on</td><td>30</td></tr>
              <tr><td>09:45</td><td>Break</td><td></td><td>Break</td><td>15</td></tr>
              <tr><td>10:00</td><td>Safety practice on the floor: walking routes, safe lifting</td><td>Site trainer</td><td>Hands-on</td><td>60</td></tr>
              <tr><td>11:00</td><td>Site tour, meet the team and Marcus Hill (buddy)</td><td>Kevin Doyle</td><td>Social</td><td>45</td></tr>
              <tr><td>11:45</td><td>Lunch with Marcus</td><td>Marcus Hill</td><td>Break</td><td>30</td></tr>
              <tr><td>12:15</td><td>First picks with Marcus on a quiet aisle</td><td>Marcus Hill</td><td>Hands-on</td><td>75</td></tr>
              <tr><td>13:30</td><td>Check-in: how was today, plan for tomorrow</td><td>Kevin Doyle</td><td>Social</td><td>30</td></tr>
            </tbody>
          </table>
          <p>Kevin keeps the plan in a spreadsheet. Column D holds the type and column E holds the minutes. This formula adds up the talk time:</p>
          <pre><code>=SUMIFS(E2:E10,D2:D10,"Talk")</code></pre>
          <p>It gives 45. Hands-on gives 165, social gives 105 and breaks give 45. The total is 360 minutes, which is 08:00 to 14:00. If talk is bigger than hands-on, the day is probably too heavy.</p>
        </div>
        <div class="lc-card">
          <h3>Week one: build up slowly</h3>
          <p>New joiners can only take in a little new information each day. Too much at once means they forget most of it. This is <strong>overload</strong>. Spread the learning across the week.</p>
          <table class="lc-table">
            <thead><tr><th>Day</th><th>Main focus</th><th>Quick win</th><th>Check-in</th></tr></thead>
            <tbody>
              <tr><td>Mon 2 Nov</td><td>Day one schedule (08:00 to 14:00)</td><td>First order lines picked with Marcus</td><td>30 minutes with Kevin</td></tr>
              <tr><td>Tue 3 Nov</td><td>First early shift (06:00 to 14:00), work next to Marcus</td><td>Uses the scanner without help</td><td>10 minutes at the end of the shift</td></tr>
              <tr><td>Wed 4 Nov</td><td>Simple aisles alone, Marcus nearby. Tom Reed checks payroll details are complete</td><td>Picks a full order alone</td><td>10 minutes</td></tr>
              <tr><td>Thu 5 Nov</td><td>Practice with a hand pallet truck, with the trainer</td><td>Moves a pallet safely</td><td>10 minutes</td></tr>
              <tr><td>Fri 6 Nov</td><td>Normal picking, Marcus nearby</td><td>Knows the plan for week two</td><td>20-minute end-of-week chat, 3-question survey</td></tr>
            </tbody>
          </table>
          <p>Kevin follows three rules. No pick-rate target in week one. No more than one new system or machine per day. One short check-in every shift. The Wednesday payroll check matters, because 3 early leavers said their first payslip was wrong.</p>
        </div>
        <div class="lc-card">
          <h3>Using AI to draft the schedule</h3>
          <p>AI can turn a list of sessions into a clear day-by-day plan. It can also spot a day with too much talk. But it does not know your rooms, people or shift times. You must give it those facts.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Make a first week schedule for a new warehouse worker.</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Plan the first week for a new warehouse operative at a made-up UK site.
        Day one: Monday, 08:00 to 14:00. Tuesday to Friday: early shift 06:00 to 14:00.
        Sessions to include: 45-minute safety talk, 60 minutes of hands-on safety
        practice, kit and scanner login, site tour, meet buddy and team,
        first picks with the buddy, pallet truck practice with the trainer.
        Rules: talk time must be less than hands-on time each day.
        No more than one new system or machine per day. No pick-rate target.
        Add a short check-in with the team leader at the end of each shift.
        Show a table: day | time | session | who | type (talk, hands-on, social, break).
        Do not add sessions I did not list. Put extra ideas in a separate list.</code></pre>
          <p>Then check the draft:</p>
          <ul class="lc-list">
            <li>Are the trainer, buddy and rooms really free at those times?</li>
            <li>Do the minutes add up to the real shift length, with proper breaks?</li>
            <li>Does it fit someone who needs a reasonable adjustment, such as more breaks or written steps? Ask the new joiner. Do not guess.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Activity: when should it happen?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Kevin has a list of things Daniel needs. Sort each one into the right time, so Daniel is not overloaded.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="day" data-label="Day one"></div>
              <div data-sorter-target="bucket" data-bucket="week" data-label="Rest of week one"></div>
              <div data-sorter-target="bucket" data-bucket="later" data-label="After week one"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="day" data-why="Safety comes first. Daniel cannot go on the floor until he knows the exits and walking routes.">Learn the fire exits and walking routes.</li>
              <li data-bucket="day" data-why="Meeting a named buddy on day one means Daniel always knows who to ask.">Meet Marcus, his buddy.</li>
              <li data-bucket="week" data-why="One new machine per day. The pallet truck comes after he is used to the scanner.">Practise with a hand pallet truck.</li>
              <li data-bucket="week" data-why="Checking payroll details early helps make sure the first payslip is right.">Tom checks Daniel's payroll details are complete.</li>
              <li data-bucket="later" data-why="There is no pick-rate target in week one. The ramp starts in week two.">Reach 60 lines per hour (half the standard).</li>
              <li data-bucket="later" data-why="A second work area is extra learning. It belongs after the basics are steady.">Learn to work in the goods-in area.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to plan a first day and first week for an office role. Then check the times, the load and the people.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an onboarding coordinator. Use simple English.

        New joiner (made up): [Aisha, customer service coordinator]
        Company: [Northbridge Logistics, a made-up warehouse and delivery company]
        Office: [London head office]. Hybrid: [in the office Mon, Tue, Thu; home Wed, Fri]
        Start: [Monday 9 November 2026, 09:30 to 17:30]
        Manager: [Laura]. Buddy: [Chloe, a customer service coordinator]
        Systems to learn: [email, the customer service system, the phone system, the HR system]

        Please give me:
        1. A day-one schedule as a table: time | session | who | type (talk, hands-on, social, break) | minutes.
        2. A plan for the rest of week one, one row per day, with one quick win each day.
        3. A plan for her first home day: who calls her and when.
        4. A check: total talk minutes vs hands-on minutes on day one.

        Rules: no more than one new system per day. A short check-in with Laura each day. Lunch with a named person on day one. Mark any fact I must confirm as [CHECK]. Do not invent company policies.</pre>
            <ul class="ai-try-checks">
              <li>The day-one minutes add up to the real working day, with breaks.</li>
              <li>Talk time is less than hands-on time.</li>
              <li>Each new system has its own day.</li>
              <li>Her first home day includes a planned call, so she is not alone.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A great first week is planned hour by hour on day one, then builds up slowly. Use more hands-on practice than talk. Give one quick win each day and one short check-in each shift. AI can draft the timetable fast, but you check that the people, rooms and times are real.
        </div>
      HTML
      starter_code: nil
    },
    7 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-hr">HR & Recruitment</div>
          <h1 class="lc-title">30-60-90 Day Plans</h1>
        </div>
        <p class="lc-lead">A 30-60-90 day plan tells a new joiner what good looks like in their first three months. It turns "settle in" into clear goals with dates. In this lesson you will learn to write goals for each stage and set check-in points. You will see plans for three different roles. You will also use a spreadsheet formula to set review dates and AI to draft the plan. At Northbridge Logistics, no new manager had a written plan before. Priya Shah wants one for every new joiner.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 330" role="img" aria-label="Three stages of Daniel's 30-60-90 day plan. Days 1 to 30, learn: safe on all equipment, 120 lines per hour on 5 shifts in a row. Days 31 to 60, contribute: keeps the standard, learns the goods-in area. Days 61 to 90, own it: works alone on any aisle, shows a newer starter the walking routes. Below, a timeline of meetings: week 2 check-in on 13 November, day 30 review on 2 December, week 6 check-in on 11 December, day 60 review on 31 December, week 12 check-in on 22 January and the day 90 review on 29 January 2027.">
            <defs><marker id="ob7a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <text x="380" y="24" font-weight="700" fill="#c4b5fd" text-anchor="middle">Daniel Okafor's 30-60-90 day plan (made up)</text>
              <rect x="20" y="40" width="220" height="140" rx="8" fill="#1f1f44" stroke="#3b82f6" stroke-width="2"/>
              <rect x="270" y="40" width="220" height="140" rx="8" fill="#1f1f44" stroke="#8b5cf6" stroke-width="2"/>
              <rect x="520" y="40" width="220" height="140" rx="8" fill="#1f1f44" stroke="#10b981" stroke-width="2"/>
              <g text-anchor="middle" font-weight="700">
                <text x="130" y="66">Days 1 to 30: Learn</text>
                <text x="380" y="66">Days 31 to 60: Contribute</text>
                <text x="630" y="66">Days 61 to 90: Own it</text>
              </g>
              <g font-size="12">
                <text x="34" y="96">Safe on scanner and</text>
                <text x="34" y="114">hand pallet truck</text>
                <text x="34" y="140">120 lines per hour on</text>
                <text x="34" y="158">5 shifts in a row</text>
                <text x="284" y="96">Keeps the standard and</text>
                <text x="284" y="114">the accuracy target</text>
                <text x="284" y="140">Learns the goods-in</text>
                <text x="284" y="158">area with a trainer</text>
                <text x="534" y="96">Works alone on any aisle</text>
                <text x="534" y="114">and in goods-in</text>
                <text x="534" y="140">Shows a newer starter</text>
                <text x="534" y="158">the walking routes</text>
              </g>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#ob7a)">
                <line x1="242" y1="110" x2="266" y2="110"/>
                <line x1="492" y1="110" x2="516" y2="110"/>
              </g>
              <line x1="40" y1="236" x2="720" y2="236" stroke="#9b99b8" stroke-width="2"/>
              <g stroke-width="2">
                <circle cx="80" cy="236" r="7" fill="#1f1f44" stroke="#22d3ee"/>
                <circle cx="200" cy="236" r="10" fill="#3b82f6" stroke="#3b82f6"/>
                <circle cx="320" cy="236" r="7" fill="#1f1f44" stroke="#22d3ee"/>
                <circle cx="440" cy="236" r="10" fill="#8b5cf6" stroke="#8b5cf6"/>
                <circle cx="560" cy="236" r="7" fill="#1f1f44" stroke="#22d3ee"/>
                <circle cx="680" cy="236" r="10" fill="#10b981" stroke="#10b981"/>
              </g>
              <g text-anchor="middle" font-size="12">
                <text x="80" y="212" fill="#9b99b8">Week 2</text>
                <text x="320" y="212" fill="#9b99b8">Week 6</text>
                <text x="560" y="212" fill="#9b99b8">Week 12</text>
                <text x="80" y="266">Fri 13 Nov</text>
                <text x="320" y="266">Fri 11 Dec</text>
                <text x="560" y="266">Fri 22 Jan</text>
                <text x="200" y="212" font-weight="700">Day 30 review</text>
                <text x="440" y="212" font-weight="700">Day 60 review</text>
                <text x="680" y="212" font-weight="700">Day 90 review</text>
                <text x="200" y="266" font-weight="700">Wed 2 Dec</text>
                <text x="440" y="266" font-weight="700">Thu 31 Dec</text>
                <text x="680" y="266" font-weight="700">Fri 29 Jan</text>
              </g>
              <text x="380" y="310" font-size="12" fill="#9b99b8" text-anchor="middle">Small circles: short check-ins. Big circles: stage reviews. Start: Mon 2 Nov 2026.</text>
            </g>
          </svg>
          <figcaption>Each stage has two or three clear goals. Short check-ins and stage reviews are booked on real working days.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>What a 30-60-90 day plan is</h3>
          <p>A <strong>30-60-90 day plan</strong> splits the first three months into three stages. Each stage has a theme and two or three goals.</p>
          <ul class="lc-list">
            <li><strong>Days 1 to 30: Learn.</strong> Learn the job, the tools, the rules and the people.</li>
            <li><strong>Days 31 to 60: Contribute.</strong> Do the core work well with less help.</li>
            <li><strong>Days 61 to 90: Own it.</strong> Work alone, and start to help others or improve something.</li>
          </ul>
          <p>Good goals are specific and can be checked. "Get used to the scanner" is vague. "Pick 120 lines per hour on 5 shifts in a row" can be checked. Each goal also needs support: who helps, and what training is given.</p>
          <p>Northbridge defines time to productivity for warehouse operatives as 120 lines per hour on 5 shifts in a row. The target is 4 weeks, so it fits inside the first 30 days. Kevin plans a ramp. A <strong>ramp</strong> is a target that rises step by step.</p>
          <table class="lc-table">
            <thead><tr><th>Week</th><th>Target (lines per hour)</th><th>Share of the standard</th></tr></thead>
            <tbody>
              <tr><td>Week 1</td><td>No target</td><td>Learning only</td></tr>
              <tr><td>Week 2</td><td>60</td><td>60 ÷ 120 = 50%</td></tr>
              <tr><td>Week 3</td><td>90</td><td>90 ÷ 120 = 75%</td></tr>
              <tr><td>Week 4</td><td>120</td><td>120 ÷ 120 = 100%</td></tr>
            </tbody>
          </table>
          <p>A target is a guide, not a trap. If Daniel misses it, Kevin first asks why. Was the training enough? Was the scanner working? Does Daniel need an adjustment?</p>
        </div>
        <div class="lc-card">
          <h3>Plans for three roles</h3>
          <p>The structure stays the same. The goals change with the role. All three people are made up.</p>
          <table class="lc-table">
            <thead><tr><th>Stage</th><th>Daniel Okafor, warehouse operative</th><th>Aisha Rahman, customer service coordinator</th><th>Grace Mensah, late-shift manager</th></tr></thead>
            <tbody>
              <tr><td>Days 1 to 30</td><td>Safe on the scanner and pallet truck. 120 lines per hour on 5 shifts in a row.</td><td>Learns the customer service system. Handles simple calls with Chloe listening.</td><td>Meets each of her 24 team members. Shadows Steve Harris on 5 late shifts.</td></tr>
              <tr><td>Days 31 to 60</td><td>Keeps the standard. Learns goods-in with a trainer.</td><td>Handles calls and emails alone. Learns how to raise a delivery complaint.</td><td>Runs the late shift with Steve on call. Holds first one-to-ones with her 2 team leaders.</td></tr>
              <tr><td>Days 61 to 90</td><td>Works alone anywhere. Shows a newer starter the walking routes.</td><td>Works without checks. Manager signs off her core tasks.</td><td>Runs the shift alone. Shares one improvement idea with Steve.</td></tr>
              <tr><td>Time to productivity target</td><td>4 weeks</td><td>8 weeks</td><td>12 weeks</td></tr>
            </tbody>
          </table>
          <p>A <strong>one-to-one</strong> is a regular private meeting between a manager and one team member. Each plan matches the role's time-to-productivity target. For example, Grace's "runs the shift alone" goal fits her 12-week target.</p>
        </div>
        <div class="lc-card">
          <h3>Setting review dates with a formula</h3>
          <p>Day 30, day 60 and day 90 often fall on a weekend or bank holiday. Priya moves each review to the last working day on or before that date. B2 holds the start date. A range called <code>Holidays</code> lists the bank holidays: 25 Dec 2026, 28 Dec 2026 and 1 Jan 2027.</p>
          <pre><code>=WORKDAY(B2+60+1,-1,Holidays)</code></pre>
          <p>For Daniel, day 60 is Friday 1 January 2027. That is a bank holiday, so the formula gives Thursday 31 December 2026. Without the <code>Holidays</code> range, it would wrongly give 1 January.</p>
          <table class="lc-table">
            <thead><tr><th>Person</th><th>Start</th><th>Day 30 review</th><th>Day 60 review</th><th>Day 90 review</th></tr></thead>
            <tbody>
              <tr><td>Daniel</td><td>Mon 2 Nov 2026</td><td>Wed 2 Dec 2026</td><td>Thu 31 Dec 2026</td><td>Fri 29 Jan 2027</td></tr>
              <tr><td>Aisha</td><td>Mon 9 Nov 2026</td><td>Wed 9 Dec 2026</td><td>Fri 8 Jan 2027</td><td>Fri 5 Feb 2027</td></tr>
              <tr><td>Grace</td><td>Tue 1 Dec 2026</td><td>Thu 31 Dec 2026</td><td>Fri 29 Jan 2027</td><td>Mon 1 Mar 2027</td></tr>
            </tbody>
          </table>
          <p>Use 30 or 90 in place of 60 for the other columns. Some dates fall near Christmas, when people take holiday. Agree a nearby date with the new joiner if needed.</p>
        </div>
        <div class="lc-card">
          <h3>Using AI to draft the plan</h3>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Write a 30-60-90 day plan for a shift manager.</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Write a 30-60-90 day plan for a new late-shift manager (14:00 to 22:00)
        at a made-up UK warehouse. Team: 2 team leaders and 22 operatives.
        Productive means: runs the shift alone and has held first one-to-ones.
        Target: 12 weeks. Her manager is the site operations manager.
        For each stage give: 2 or 3 goals that can be checked, the support
        she gets, and what to discuss at the review.
        Do not include goals about personality or attitude.
        Mark anything that depends on our real processes as [CHECK].</code></pre>
          <p>Then the manager and new joiner agree the plan together, ideally in the first week. They change it if the job changes. The plan is for support and clear goals. AI must not score the new joiner against it. People make every decision about probation, using real evidence. Keep fair, dated notes at each review. This is general information, not legal advice.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: build a 30-60-90 day plan</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put Priya's steps for building Grace's 30-60-90 day plan in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Write down what "productive" means for the role, and the target time.</li>
              <li data-order="2">Ask AI to draft 2 or 3 goals per stage, with no personal data in the prompt.</li>
              <li data-order="3">Steve, her manager, checks each goal is real, fair and can be measured.</li>
              <li data-order="4">Set the review dates with WORKDAY and the bank holiday list.</li>
              <li data-order="5">Steve and Grace agree the plan together in her first week.</li>
              <li data-order="6">Hold each review, note the evidence and update the plan.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to draft a 30-60-90 day plan for a role you know. Then check that every goal is clear, fair and fits the target.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an onboarding adviser. Use simple English.

        Role (made up): [late-shift manager at a UK warehouse, shift 14:00 to 22:00]
        Team: [2 team leaders and 22 operatives]
        Start date: [Tuesday 1 December 2026]
        "Productive" means: [runs the shift alone and has held first one-to-ones]
        Target time to productivity: [12 weeks]
        Support available: [her manager, a mentor at another site, people-manager training]

        Please write a 30-60-90 day plan:
        1. A table: stage | theme | 2 or 3 goals that can be checked | support | how we will know.
        2. Check-in and review points. Move any review that falls on a weekend or UK bank holiday to the working day before. Show the dates.
        3. Three questions the manager should ask at each review.
        4. Two ways the plan could change for someone who needs a reasonable adjustment.

        Rules: no goals about personality or attitude. Do not suggest AI scoring of the person. Mark facts I must confirm as [CHECK].</pre>
            <ul class="ai-try-checks">
              <li>Every goal can be checked with a fact, not a feeling.</li>
              <li>The goals match the 12-week target.</li>
              <li>Review dates fall on working days and avoid UK bank holidays.</li>
              <li>A person makes all decisions about the new joiner.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A 30-60-90 day plan turns "settle in" into a few clear goals with dates and support. Build it from the role's definition of "productive". Set review dates with a formula that skips bank holidays. Agree the plan with the new joiner, and let people, not AI, judge progress.
        </div>
      HTML
      starter_code: nil
    },
    8 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-hr">HR & Recruitment</div>
          <h1 class="lc-title">Welcome Packs and Handbooks</h1>
        </div>
        <p class="lc-lead">A welcome pack gives new joiners the key facts about pay, shifts, holiday, sickness, safety and culture. A handbook holds the full policies. Many companies have long handbooks that nobody reads. AI can turn them into short, clear summaries. But a summary that gets one rule wrong can cost a new joiner money. In this lesson you will learn what goes in a welcome pack and how to write it simply. You will also learn to check every line against the real policy. Priya Shah at Northbridge Logistics turns a 60-page handbook into an 8-page pack for warehouse staff.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="A workflow in five steps with arrows: real policy text, AI plain summary, line-by-line check, policy owner signs off, then publish with a last-checked date. A loop arrow goes back from publish to the start, labelled review every 3 months or when a rule changes. Below: the old 60-page handbook becomes an 8-page welcome pack.">
            <defs>
              <marker id="ob8a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker>
              <marker id="ob8b" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#f59e0b"/></marker>
            </defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <g text-anchor="middle">
                <rect x="20" y="60" width="124" height="64" rx="8" fill="#1f1f44" stroke="#3b82f6" stroke-width="2"/>
                <text x="82" y="88" font-weight="700">Real policy</text>
                <text x="82" y="108" font-size="12" fill="#9b99b8">current version</text>
                <rect x="173" y="60" width="124" height="64" rx="8" fill="#1f1f44" stroke="#8b5cf6" stroke-width="2"/>
                <text x="235" y="88" font-weight="700">AI summary</text>
                <text x="235" y="108" font-size="12" fill="#9b99b8">plain English</text>
                <rect x="326" y="60" width="124" height="64" rx="8" fill="#1f1f44" stroke="#ec4899" stroke-width="2"/>
                <text x="388" y="88" font-weight="700">Line-by-line</text>
                <text x="388" y="108" font-size="12" fill="#9b99b8">check by HR</text>
                <rect x="479" y="60" width="124" height="64" rx="8" fill="#1f1f44" stroke="#22d3ee" stroke-width="2"/>
                <text x="541" y="88" font-weight="700">Owner signs</text>
                <text x="541" y="108" font-size="12" fill="#9b99b8">policy owner</text>
                <rect x="632" y="60" width="108" height="64" rx="8" fill="#1f1f44" stroke="#10b981" stroke-width="2"/>
                <text x="686" y="88" font-weight="700">Publish</text>
                <text x="686" y="108" font-size="12" fill="#9b99b8">with date</text>
              </g>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#ob8a)">
                <line x1="146" y1="92" x2="170" y2="92"/>
                <line x1="299" y1="92" x2="323" y2="92"/>
                <line x1="452" y1="92" x2="476" y2="92"/>
                <line x1="605" y1="92" x2="629" y2="92"/>
              </g>
              <path d="M686,58 L686,34 L82,34 L82,56" stroke="#f59e0b" stroke-width="1.5" fill="none" stroke-dasharray="5 4" marker-end="url(#ob8b)"/>
              <rect x="250" y="22" width="260" height="24" rx="6" fill="#27274e"/>
              <text x="380" y="39" text-anchor="middle" font-size="12" fill="#fcd34d">Review every 3 months or when a rule changes</text>
              <rect x="110" y="170" width="200" height="90" rx="8" fill="#27274e" stroke="#9b99b8" stroke-dasharray="5 4"/>
              <text x="210" y="208" text-anchor="middle" font-weight="700">Old handbook</text>
              <text x="210" y="230" text-anchor="middle" fill="#9b99b8">60 pages, out of date</text>
              <line x1="320" y1="215" x2="436" y2="215" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ob8a)"/>
              <rect x="450" y="170" width="200" height="90" rx="8" fill="#27274e" stroke="#10b981" stroke-width="2"/>
              <text x="550" y="208" text-anchor="middle" font-weight="700">Welcome pack</text>
              <text x="550" y="230" text-anchor="middle" fill="#9b99b8">8 pages, each with a source</text>
              <text x="380" y="288" font-size="12" fill="#9b99b8" text-anchor="middle">Made-up example: Northbridge Logistics warehouse welcome pack</text>
            </g>
          </svg>
          <figcaption>AI drafts the plain summary. HR checks it line by line against the real policy, the policy owner signs it off and every page shows when it was last checked.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>What goes in a welcome pack</h3>
          <p>A <strong>welcome pack</strong> is a short guide for new joiners. It covers what they need in the first weeks. A <strong>handbook</strong> is the full set of company policies. The pack points to the handbook for details.</p>
          <p>Priya's 8-page warehouse pack (made up):</p>
          <table class="lc-table">
            <thead><tr><th>Page</th><th>What it covers</th><th>Source policy</th><th>Owner</th></tr></thead>
            <tbody>
              <tr><td>1. Welcome</td><td>A note from the site manager, what Northbridge does</td><td>None (written by a person)</td><td>Site manager</td></tr>
              <tr><td>2. Your shifts</td><td>Early 06:00 to 14:00, late 14:00 to 22:00, breaks, shift swaps</td><td>Working time and shifts policy</td><td>Operations</td></tr>
              <tr><td>3. Your pay</td><td>Paid weekly on Fridays, one week behind. How to read a payslip.</td><td>Pay policy</td><td>Payroll</td></tr>
              <tr><td>4. Holiday</td><td>How much, how to book, peak-season rules</td><td>Holiday policy</td><td>HR</td></tr>
              <tr><td>5. Sickness</td><td>Who to call, by when, sick pay</td><td>Sickness absence policy</td><td>HR</td></tr>
              <tr><td>6. Safety</td><td>Top 6 site rules, how to report a near miss</td><td>Health and safety policy</td><td>Health and safety lead</td></tr>
              <tr><td>7. How we work</td><td>Values, with real examples from staff</td><td>Values statement</td><td>HR</td></tr>
              <tr><td>8. Who to ask</td><td>Names, roles and how to contact them</td><td>Contact list</td><td>HR</td></tr>
            </tbody>
          </table>
          <p>The handbook matters legally. In the UK, the written statement of employment particulars may point to another document for some details, such as sick pay and pensions. That document must be easy for the employee to read. So the handbook must be correct and easy to find. This is general information, not legal advice. Check with an HR adviser or employment lawyer.</p>
        </div>
        <div class="lc-card">
          <h3>Writing it simply</h3>
          <ul class="lc-list">
            <li>Use short sentences and everyday words. Many warehouse staff read English as a second language.</li>
            <li>Put the answer first: "Call your team leader at least 1 hour before your shift starts."</li>
            <li>Keep the policy's real words for rules: "must" stays "must", and "may" stays "may".</li>
            <li>Make culture real. "We are like a family" says nothing. "Team leaders walk the floor at 10:00 to ask how you are doing" says something true.</li>
            <li>Offer translated or large-print versions if people need them. A fluent speaker must check any AI translation.</li>
          </ul>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Summarise our sickness policy for new starters.</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Turn the policy text below into one welcome pack page for new warehouse
        staff in the UK. Use simple English, short sentences, answer first.
        Use ONLY the policy text. Keep every number, deadline and "must" exactly.
        After each point, show the policy section number in brackets.
        If something important is unclear or missing, list it under "Ask HR".
        Do not add any UK law details that are not in the text.
        Policy text: [paste the current sickness absence policy here]</code></pre>
        </div>
        <div class="lc-card">
          <h3>Checking against the real policy</h3>
          <p>Read the AI summary next to the policy, one line at a time. Look for these common mistakes:</p>
          <table class="lc-table">
            <thead><tr><th>Mistake type</th><th>Policy says (made up)</th><th>AI summary said</th><th>Problem</th></tr></thead>
            <tbody>
              <tr><td>Changed number</td><td>25 days' holiday plus bank holidays</td><td>28 days plus bank holidays</td><td>Promises 3 extra days</td></tr>
              <tr><td>Lost exception</td><td>No warehouse holiday from 16 Nov to 24 Dec unless the site manager agrees</td><td>Book holiday any time with 2 weeks' notice</td><td>Misses the peak-season rule</td></tr>
              <tr><td>Softer word</td><td>You must call at least 1 hour before your shift</td><td>Try to let us know early</td><td>"Must" became optional</td></tr>
              <tr><td>Old law</td><td>Current sick pay section, updated April 2026</td><td>"Sick pay starts on day four"</td><td>Came from an old version</td></tr>
            </tbody>
          </table>
          <p>The last example is real law. UK Statutory Sick Pay changed on 6 April 2026. It is now paid from the first day of sickness, not after three "waiting days". Old handbooks and AI tools may still show the old rule. Check GOV.UK for the current rules.</p>
          <p>Priya tracks each page in a spreadsheet. Column D holds the date it was last checked. The next review date is three months later:</p>
          <pre><code>=EDATE(D2,3)</code></pre>
          <p>A page checked on 1 October 2026 is due again on 1 January 2027. A second formula flags pages that are due: <code>=IF(E2&lt;=TODAY(),"REVIEW DUE","OK")</code>. Also review a page at once when its policy changes.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: Priya checks the holiday and sickness page</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Priya asks">Priya pastes the holiday and sickness sections from the handbook. She asks AI for one welcome pack page in simple English, with section numbers.</li>
              <li data-kind="answer" data-label="AI replies">The draft is short and clear. It says: "You get 25 days' holiday plus bank holidays. Book any time with 2 weeks' notice. Sick pay starts on your fourth day off sick."</li>
              <li data-kind="thought" data-label="Priya thinks">The holiday line has no peak-season rule. The sick pay line sounds like the old law.</li>
              <li data-kind="tool" data-label="Priya checks">She opens the handbook and finds two versions of the sickness section in the file. She had pasted the 2024 one.</li>
              <li data-kind="warn" data-label="The mistakes">The AI summarised the old version correctly, but the version was wrong. It also dropped the rule about no warehouse holiday from 16 November to 24 December.</li>
              <li data-kind="result" data-label="Fixed draft">Priya pastes the current section and asks again. She adds the peak-season rule and checks each line.</li>
              <li data-kind="check" data-label="Sign-off">The HR policy owner signs the page off. Priya adds the source, owner and "last checked: 1 October 2026" at the bottom.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to turn a policy section into a welcome pack page. Then check every line against the policy text.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You write welcome packs for new staff. Use simple English: short sentences, everyday words, answer first.

        Company: [a made-up UK warehouse company]
        Readers: [new warehouse operatives; many read English as a second language]
        Policy text (made up, replace with yours):
        [4.1 Holiday is 25 days plus bank holidays. The holiday year runs 1 January to 31 December.
        4.2 You must book holiday in the HR system at least 2 weeks ahead.
        4.3 Warehouse staff may not take holiday from 16 November to 24 December unless the site manager agrees.
        5.1 If you are sick, you must call your team leader at least 1 hour before your shift starts.]

        Please write:
        1. One welcome pack page, under 150 words, with the section number in brackets after each point.
        2. A table: policy line | my summary line | same meaning? (yes/no).
        3. A list called "Ask HR" for anything unclear or missing.

        Use ONLY the policy text. Keep every number and every "must" and "may not". Do not add legal details.</pre>
            <ul class="ai-try-checks">
              <li>Every number and date matches the policy text.</li>
              <li>"Must" and "may not" are still strict rules.</li>
              <li>The peak-season exception is still there.</li>
              <li>Each point shows its section number, so you can check it fast.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A welcome pack is only useful if it is right. Let AI write the plain summary, but feed it the current policy, ask for section numbers and check every line. Put a source, an owner and a "last checked" date on each page, and review it on a schedule.
        </div>
      HTML
      starter_code: nil
    },
    9 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-hr">HR & Recruitment</div>
          <h1 class="lc-title">Buddy and Mentor Programmes</h1>
        </div>
        <p class="lc-lead">New joiners have many small questions they do not want to ask their manager. A buddy answers them. A mentor helps with bigger, longer-term growth. At Northbridge Logistics, 5 of the 24 warehouse early leavers said "no one to ask, felt alone". There is no buddy scheme today. In this lesson you will learn the difference between a buddy, a mentor and a manager. You will learn how to choose buddies fairly and how many you need. You will also use AI to write a buddy guide with conversation starters.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="A timeline from week 0 to week 13 and beyond. Buddy row: Marcus helps Daniel from day one to the end of week 4. Manager row: Kevin holds the day one check-in, the week 2 check-in, the day 30 review, the week 6 check-in, the day 60 review, the week 12 check-in and the day 90 review. Mentor row: Ruth mentors Grace, a new manager, once a month for 6 months, so it carries on past day 90.">
            <defs><marker id="ob9a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#f59e0b"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <text x="380" y="24" font-weight="700" fill="#c4b5fd" text-anchor="middle">Who supports a new joiner, and for how long (made up)</text>
              <g font-size="11" fill="#9b99b8" text-anchor="middle">
                <text x="160" y="52">Wk 0</text>
                <text x="240" y="52">Wk 2</text>
                <text x="320" y="52">Wk 4</text>
                <text x="400" y="52">Wk 6</text>
                <text x="480" y="52">Wk 8</text>
                <text x="560" y="52">Wk 10</text>
                <text x="640" y="52">Wk 12</text>
              </g>
              <g stroke="#27274e">
                <line x1="160" y1="60" x2="160" y2="250"/>
                <line x1="240" y1="60" x2="240" y2="250"/>
                <line x1="320" y1="60" x2="320" y2="250"/>
                <line x1="400" y1="60" x2="400" y2="250"/>
                <line x1="480" y1="60" x2="480" y2="250"/>
                <line x1="560" y1="60" x2="560" y2="250"/>
                <line x1="640" y1="60" x2="640" y2="250"/>
              </g>
              <rect x="20" y="72" width="124" height="44" rx="8" fill="#27274e" stroke="#10b981"/>
              <text x="82" y="92" text-anchor="middle" font-weight="700">Buddy</text>
              <text x="82" y="108" text-anchor="middle" font-size="11" fill="#9b99b8">Marcus for Daniel</text>
              <rect x="160" y="80" width="160" height="28" rx="6" fill="#10b981"/>
              <text x="240" y="99" text-anchor="middle" fill="#0b0b1e" font-weight="700">Day one to week 4</text>
              <rect x="20" y="134" width="124" height="44" rx="8" fill="#27274e" stroke="#3b82f6"/>
              <text x="82" y="154" text-anchor="middle" font-weight="700">Manager</text>
              <text x="82" y="170" text-anchor="middle" font-size="11" fill="#9b99b8">Kevin for Daniel</text>
              <line x1="160" y1="156" x2="676" y2="156" stroke="#3b82f6" stroke-width="1.5"/>
              <g fill="#3b82f6">
                <circle cx="160" cy="156" r="6"/>
                <circle cx="240" cy="156" r="6"/>
                <circle cx="331" cy="156" r="9"/>
                <circle cx="400" cy="156" r="6"/>
                <circle cx="503" cy="156" r="9"/>
                <circle cx="640" cy="156" r="6"/>
                <circle cx="674" cy="156" r="9"/>
              </g>
              <rect x="20" y="196" width="124" height="44" rx="8" fill="#27274e" stroke="#f59e0b"/>
              <text x="82" y="216" text-anchor="middle" font-weight="700">Mentor</text>
              <text x="82" y="232" text-anchor="middle" font-size="11" fill="#9b99b8">Ruth for Grace</text>
              <line x1="160" y1="218" x2="732" y2="218" stroke="#f59e0b" stroke-width="1.5" stroke-dasharray="5 4" marker-end="url(#ob9a)"/>
              <g fill="#f59e0b">
                <circle cx="200" cy="218" r="6"/>
                <circle cx="360" cy="218" r="6"/>
                <circle cx="520" cy="218" r="6"/>
                <circle cx="680" cy="218" r="6"/>
              </g>
              <text x="690" y="244" font-size="11" fill="#9b99b8" text-anchor="middle">to month 6</text>
              <text x="380" y="282" font-size="12" fill="#9b99b8" text-anchor="middle">Big blue circles: stage reviews at day 30, 60 and 90. Orange: monthly video calls.</text>
            </g>
          </svg>
          <figcaption>The buddy helps every day for 4 weeks. The manager runs check-ins and reviews for 90 days. A mentor supports a new manager for longer.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Buddy, mentor and manager</h3>
          <p>These three roles help in different ways. Do not mix them up.</p>
          <table class="lc-table">
            <thead><tr><th></th><th>Buddy</th><th>Mentor</th><th>Manager</th></tr></thead>
            <tbody>
              <tr><td>Who</td><td>A peer in the same team, shift and site</td><td>An experienced person outside the joiner's team</td><td>The person the joiner reports to</td></tr>
              <tr><td>How long</td><td>About 4 weeks</td><td>Several months</td><td>Always</td></tr>
              <tr><td>Helps with</td><td>Where things are, how things really work, everyday questions</td><td>Career growth, confidence, hard situations</td><td>Goals, training, reviews, work decisions</td></tr>
              <tr><td>Northbridge example</td><td>Marcus Hill for Daniel</td><td>Ruth Clarke, a shift manager in Manchester, for Grace</td><td>Kevin Doyle for Daniel</td></tr>
            </tbody>
          </table>
          <p>A buddy is not a trainer or a judge. A buddy does not report on the new joiner's performance. This keeps the relationship safe, so the new joiner asks real questions.</p>
        </div>
        <div class="lc-card">
          <h3>Choosing buddies fairly, and how many you need</h3>
          <p>Northbridge's made-up buddy rules:</p>
          <ul class="lc-list">
            <li>At least 6 months in the role, with a clean safety record.</li>
            <li>Works the same shift and site as the new joiner.</li>
            <li>Volunteers for the role. Nobody is forced.</li>
            <li>Has done the 1-hour buddy briefing.</li>
            <li>Buddies one new joiner at a time.</li>
          </ul>
          <p>Open the role to everyone who meets the rules. Do not pick only friends of the manager. Match on work facts, such as site, shift and work area. Do not match on age, race, religion or other protected characteristics from the Equality Act 2010. If a new joiner asks for something specific, such as a buddy who speaks their first language, a person can try to help.</p>
          <p>In the peak month, Northbridge hired 14 warehouse operatives. Each buddy helps one person for about 4 weeks. Priya adds 20% spare buddies for holiday and sickness. Her formula, with 14 in B2:</p>
          <pre><code>=ROUNDUP(B2*1.2,0)</code></pre>
          <p>14 × 1.2 = 16.8, which rounds up to 17. So she needs 17 trained buddies across both sites before November.</p>
          <p>Thank buddies for their time. Give them time in the shift for the role, and recognise it in their own reviews.</p>
        </div>
        <div class="lc-card">
          <h3>A buddy guide with conversation starters</h3>
          <p>Buddies need a short guide. It tells them what to do each week and what to ask. AI is good at drafting this.</p>
          <table class="lc-table">
            <thead><tr><th>Week</th><th>Buddy's focus</th><th>Conversation starter</th></tr></thead>
            <tbody>
              <tr><td>Day one</td><td>Lunch together, show the canteen, lockers and toilets</td><td>"What was the most confusing thing this morning?"</td></tr>
              <tr><td>Week 1</td><td>Work side by side, show shortcuts on the scanner</td><td>"Is there anything you have not had a chance to ask Kevin?"</td></tr>
              <tr><td>Week 2</td><td>Step back a little, stay nearby</td><td>"How are the early starts going for you?"</td></tr>
              <tr><td>Weeks 3 to 4</td><td>Introduce people from other teams, talk about the next steps</td><td>"What would make next week easier?"</td></tr>
            </tbody>
          </table>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Write a buddy guide.</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Write a one-page guide for buddies of new warehouse operatives at a made-up
        UK logistics company. The buddy period is 4 weeks, same shift.
        Include: what a buddy does and does not do, a week-by-week plan,
        2 conversation starters per week, and when to tell the team leader or HR.
        Buddies must not judge performance. Use simple English.</code></pre>
          <p>Check the "when to tell someone" part carefully. If a new joiner mentions a safety risk, bullying, harassment or a health problem, the buddy must pass it on to the team leader or HR. A buddy should never keep that secret or handle it alone.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: buddy, mentor or manager?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Who should do each task? Sort them into the right role.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="buddy" data-label="Buddy"></div>
              <div data-sorter-target="bucket" data-bucket="mentor" data-label="Mentor"></div>
              <div data-sorter-target="bucket" data-bucket="manager" data-label="Manager"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="buddy" data-why="Everyday, practical help is the buddy's job.">Show Daniel where the canteen and lockers are.</li>
              <li data-bucket="buddy" data-why="A peer on the same shift knows the real shortcuts.">Show Daniel a faster way to use the scanner.</li>
              <li data-bucket="manager" data-why="Reviews and decisions about work belong to the manager, not the buddy.">Hold Daniel's day 30 review.</li>
              <li data-bucket="manager" data-why="Agreeing an adjustment is a manager and HR decision, made with the joiner.">Agree a reasonable adjustment with a new joiner.</li>
              <li data-bucket="mentor" data-why="Long-term growth and confidence as a leader is what a mentor helps with.">Help Grace think through her first hard conversation as a manager.</li>
              <li data-bucket="mentor" data-why="A mentor outside the team can share experience over several months.">Share how they planned their own career over the first 6 months.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to draft a buddy programme for a team you know. Then check the rules are fair and the escalation steps are clear.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an HR adviser setting up a buddy programme. Use simple English.

        Company (made up): [Northbridge Logistics, warehouse sites in London and Manchester]
        New joiners: [warehouse operatives on early (06:00 to 14:00) and late (14:00 to 22:00) shifts]
        Hires in our busiest month: [14]
        Buddy period: [4 weeks]

        Please give me:
        1. Fair rules for choosing buddies (5 rules or fewer). Base them on work facts only.
        2. How many buddies we need: hires in the busiest month x 1.2, rounded up. Show the working.
        3. A one-page buddy guide: what a buddy does and does not do, and a week-by-week plan with 2 conversation starters per week.
        4. A short "pass it on" list: things a buddy must tell the team leader or HR, such as safety risks or bullying.
        5. Three low-cost ways to thank buddies.

        Rules: buddies never judge performance. Do not match people on age, race, religion or other protected characteristics. Do not invent statistics.</pre>
            <ul class="ai-try-checks">
              <li>The buddy count is right: 14 x 1.2 = 16.8, rounded up to 17.</li>
              <li>Choosing rules use work facts only, such as shift and site.</li>
              <li>The guide says buddies do not judge performance.</li>
              <li>Safety risks, bullying and health concerns go to the team leader or HR.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A buddy fixes the "no one to ask" problem with everyday help. A mentor supports longer-term growth, and the manager owns goals and decisions. Choose buddies fairly using work facts, plan enough for your busiest month and give them a short guide with clear "pass it on" rules.
        </div>
      HTML
      starter_code: nil
    },
    10 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-hr">HR & Recruitment</div>
          <h1 class="lc-title">New Joiner FAQs and Chat Helpers</h1>
        </div>
        <p class="lc-lead">New joiners ask the same questions again and again. When is my first payday? Can I swap shifts? Who do I call if I am sick? An FAQ (frequently asked questions) gives approved answers. A chat helper is an AI tool that answers questions in a chat window. It can answer at 06:00 when HR is not in. But a chat helper that guesses can give wrong answers about pay or rights. In this lesson you will build approved answers with sources. You will set rules for handing questions to a person, and you will test the helper before new joiners use it. Tom Reed at Northbridge Logistics builds and tests a helper for warehouse starters.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 330" role="img" aria-label="A decision tree for a chat helper. A new joiner asks a question. First check: is it personal or sensitive, such as health, a pay problem, bullying or visas? If yes, hand over to HR with a named contact. If no, second check: is it in the approved FAQ? If yes, answer with the source and the last-checked date. If no, say I do not know and hand over to HR, and HR adds a new approved answer.">
            <defs><marker id="ob10a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <g text-anchor="middle">
                <rect x="20" y="40" width="160" height="56" rx="8" fill="#27274e" stroke="#8b5cf6" stroke-width="2"/>
                <text x="100" y="64" font-weight="700">New joiner</text>
                <text x="100" y="84" font-size="12" fill="#9b99b8">asks a question</text>
                <rect x="220" y="40" width="210" height="56" rx="8" fill="#1f1f44" stroke="#f59e0b" stroke-width="2"/>
                <text x="325" y="64" font-weight="700">Personal or sensitive?</text>
                <text x="325" y="84" font-size="12" fill="#9b99b8">health, pay problem, bullying</text>
                <rect x="520" y="40" width="220" height="56" rx="8" fill="#1f1f44" stroke="#ec4899" stroke-width="2"/>
                <text x="630" y="64" font-weight="700">Hand over to HR</text>
                <text x="630" y="84" font-size="12" fill="#9b99b8">named contact, no guessing</text>
                <rect x="220" y="150" width="210" height="56" rx="8" fill="#1f1f44" stroke="#f59e0b" stroke-width="2"/>
                <text x="325" y="174" font-weight="700">In the approved FAQ?</text>
                <text x="325" y="194" font-size="12" fill="#9b99b8">30 checked answers</text>
                <rect x="20" y="250" width="290" height="56" rx="8" fill="#1f1f44" stroke="#10b981" stroke-width="2"/>
                <text x="165" y="274" font-weight="700">Answer with the source</text>
                <text x="165" y="294" font-size="12" fill="#9b99b8">policy section and last-checked date</text>
                <rect x="400" y="250" width="340" height="56" rx="8" fill="#1f1f44" stroke="#ec4899" stroke-width="2"/>
                <text x="570" y="274" font-weight="700">"I do not know" and hand over</text>
                <text x="570" y="294" font-size="12" fill="#9b99b8">HR answers, then adds an approved answer</text>
              </g>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#ob10a)">
                <line x1="182" y1="68" x2="216" y2="68"/>
                <line x1="432" y1="68" x2="516" y2="68"/>
                <line x1="325" y1="98" x2="325" y2="146"/>
                <line x1="290" y1="208" x2="200" y2="246"/>
                <line x1="380" y1="208" x2="480" y2="246"/>
              </g>
              <g font-size="12" font-weight="700">
                <text x="474" y="60" text-anchor="middle" fill="#f9a8d4">Yes</text>
                <text x="345" y="126" fill="#6ee7b7">No</text>
                <text x="228" y="232" text-anchor="middle" fill="#6ee7b7">Yes</text>
                <text x="452" y="222" text-anchor="middle" fill="#f9a8d4">No</text>
              </g>
            </g>
          </svg>
          <figcaption>The helper checks for sensitive topics first. It only answers from approved text, and it hands everything else to a person.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Start with approved answers</h3>
          <p>A good chat helper is only as good as its answers. So build the FAQ first. An <strong>approved answer</strong> is an answer that the policy owner has checked and signed off. Each one needs a source, an owner and a review date.</p>
          <p>Some of Tom's 30 approved answers for warehouse starters (made up):</p>
          <table class="lc-table">
            <thead><tr><th>Question</th><th>Approved answer</th><th>Source</th><th>Owner</th><th>Next review</th></tr></thead>
            <tbody>
              <tr><td>When is my first payday?</td><td>Warehouse staff are paid weekly on Fridays, one week behind. If you start on a Monday, your first payday is the Friday of your second week.</td><td>Pay policy 2.1</td><td>Payroll</td><td>1 Jan 2027</td></tr>
              <tr><td>Can I swap shifts?</td><td>Not in your first 4 weeks, while you are training. After that, ask your team leader at least 48 hours ahead.</td><td>Shifts policy 3.4</td><td>Operations</td><td>1 Jan 2027</td></tr>
              <tr><td>What do I do if I am sick?</td><td>Call your team leader at least 1 hour before your shift starts.</td><td>Sickness policy 5.1</td><td>HR</td><td>1 Jan 2027</td></tr>
              <tr><td>Can I book holiday in November?</td><td>Warehouse staff cannot take holiday from 16 November to 24 December unless the site manager agrees.</td><td>Holiday policy 4.3</td><td>HR</td><td>1 Jan 2027</td></tr>
            </tbody>
          </table>
          <p>For Daniel, who starts on Monday 2 November 2026, the first payday is Friday 13 November 2026. Getting this answer right matters: 3 early leavers said their first payslip was wrong.</p>
        </div>
        <div class="lc-card">
          <h3>Rules for the chat helper</h3>
          <p>Many HR systems and workplace tools now offer AI helpers. Features change often, so check the tool's current help pages. Whatever the tool, give it clear written rules. These are often called <strong>instructions</strong> or a <strong>system prompt</strong>. Tom's rules:</p>
          <pre><code>You help new warehouse staff at Northbridge Logistics. Use simple English.
        Start each chat by saying you are an AI helper, not a person.
        Answer ONLY from the approved answers below. Give the source in brackets.
        If the answer is not in the approved answers, say:
        "I do not know. Please contact Tom Reed in HR: [contact details]."
        Never answer, and always hand over to HR, for: health or pregnancy,
        a pay problem on a payslip, bullying, harassment or discrimination,
        visas or right to work, complaints or grievances, anything about another person.
        Do not ask for personal details such as bank details or health information.
        Approved answers: [paste the approved FAQ here]</code></pre>
          <p>Saying "I am an AI helper" is good practice everywhere. In the EU, the AI Act now requires most chatbots to tell people they are talking to AI. This applies from 2 August 2026. A <strong>handover</strong> means the helper passes the question to a named person and says how to reach them. Sensitive topics always go to a person, because they need care and a real decision. This is general information, not legal advice.</p>
        </div>
        <div class="lc-card">
          <h3>Test before launch, then keep testing</h3>
          <p>Tom writes 20 test questions. Some have approved answers. Some should be handed over. Some are tricky, such as "My mate says we get double pay on bank holidays. True?" He records each result as Pass or Fail in column D:</p>
          <pre><code>=COUNTIF(D2:D21,"Pass")/COUNTA(D2:D21)</code></pre>
          <p>In the first test, 18 of 20 passed, which is 90%. Two failed:</p>
          <ul class="lc-list">
            <li>It answered the bank holiday pay question with a guess. The approved answers do not cover it, so it should have handed over.</li>
            <li>It answered "My payslip is £85 short" with general advice. A pay problem must go to a person.</li>
          </ul>
          <p>Tom tightens the rules and tests again. All 20 pass. 90% sounds good, but one wrong answer about pay can lose a new joiner. Each month, Tom reads a sample of real chats with names hidden. He adds new approved answers for common "I do not know" questions. Only use an AI tool your company has approved, and check how long it keeps chat records.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: Tom tests the helper</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Test 1">Tom types: "I started on Monday 2 November. When do I get paid?"</li>
              <li data-kind="answer" data-label="Helper replies">"Warehouse staff are paid weekly on Fridays, one week behind. Your first payday is Friday 13 November 2026. (Pay policy 2.1)"</li>
              <li data-kind="check" data-label="Tom checks">The answer matches the approved answer and shows the source. Pass.</li>
              <li data-kind="user" data-label="Test 2">Tom types: "My payslip is £85 short. What should I do?"</li>
              <li data-kind="answer" data-label="Helper replies">"Payslips can be wrong because of tax codes. Wait for next week's pay, as it usually sorts itself out."</li>
              <li data-kind="warn" data-label="The mistake">The helper guessed about pay. It should have handed over to a person. Waiting could leave a new joiner short of money.</li>
              <li data-kind="result" data-label="The fix">Tom adds "a pay problem on a payslip" to the handover list. Now the helper replies: "I cannot help with this. Please contact Payroll today: [contact details]."</li>
              <li data-kind="check" data-label="Retest">Tom runs all 20 test questions again. All 20 pass, so the helper is ready for the next group of starters.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to turn policy notes into approved FAQ answers, handover rules and test questions. Then check each answer against the notes.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an HR adviser building a new-joiner FAQ and chat helper. Use simple English.

        Company (made up): [a UK warehouse company]
        Policy notes (made up, replace with yours):
        [Pay: warehouse staff are paid weekly on Fridays, one week behind (Pay 2.1).
        Shift swaps: none in the first 4 weeks; after that, ask your team leader 48 hours ahead (Shifts 3.4).
        Sickness: call your team leader at least 1 hour before your shift (Sickness 5.1).
        Holiday: 25 days plus bank holidays; book 2 weeks ahead (Holiday 4.1, 4.2).]
        HR contact: [Tom Reed, HR adviser]

        Please give me:
        1. 6 FAQ answers as a table: question | answer (2 sentences or fewer) | source.
        2. Rules for a chat helper: answer only from the table, say it is an AI, and hand over to HR when unsure.
        3. A list of sensitive topics it must always hand to a person.
        4. 10 test questions: 5 it should answer, 3 it should hand over, 2 tricky ones not covered by the notes.

        Use ONLY my notes. If something is not in the notes, write "Not covered: ask HR".</pre>
            <ul class="ai-try-checks">
              <li>Every answer matches the notes and shows its source.</li>
              <li>Nothing is added that is not in the notes.</li>
              <li>Health, pay problems, bullying and visas are handed to a person.</li>
              <li>The tricky test questions are marked "Not covered: ask HR".</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A chat helper is only as good as its approved answers. Build the FAQ first, with a source, owner and review date for each answer. Tell the helper to say it is AI, to answer only from approved text and to hand sensitive or unknown questions to a named person. Test it before launch and keep checking real chats.
        </div>
      HTML
      starter_code: nil
    },
    11 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-hr">HR & Recruitment</div>
          <h1 class="lc-title">Remote and Hybrid Onboarding</h1>
        </div>
        <p class="lc-lead">Many new joiners now start from home for some or all of the week. They cannot turn to a colleague and ask a quick question. Their laptop may arrive by courier. Their team may be in another time zone. In this lesson you will learn how to plan an online first day and share hours across time zones. You will also learn how to help remote joiners feel part of the team. You will use AI to draft schedules and check every time yourself. You will follow two made-up joiners: Aisha Rahman, a hybrid joiner at Northbridge Logistics in London, and Sam Carter, a remote engineer at Brightside Software.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 340" role="img" aria-label="Top: Aisha Rahman's first week. Monday office: laptop, logins and meeting the team. Tuesday office: shadowing calls with her buddy. Wednesday home: online modules and a buddy video call. Thursday office: team meeting and practice on the system. Friday home: listening to calls and a check-in with her manager Laura. Bottom: a time bar in New York time. The New York team works 09:00 to 17:30. Sam in Denver works 09:00 to 17:30 Denver time, which is 11:00 to 19:30 New York time. The shared hours are 11:00 to 17:30 New York time, 6.5 hours.">
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <text x="380" y="22" font-weight="700" fill="#c4b5fd" text-anchor="middle">Aisha's first week: hybrid, London (made up)</text>
              <g fill="#1f1f44" stroke-width="2">
                <rect x="20" y="34" width="136" height="96" rx="8" stroke="#8b5cf6"/>
                <rect x="166" y="34" width="136" height="96" rx="8" stroke="#8b5cf6"/>
                <rect x="312" y="34" width="136" height="96" rx="8" stroke="#22d3ee"/>
                <rect x="458" y="34" width="136" height="96" rx="8" stroke="#8b5cf6"/>
                <rect x="604" y="34" width="136" height="96" rx="8" stroke="#22d3ee"/>
              </g>
              <g text-anchor="middle">
                <text x="88" y="56" font-weight="700">Mon 9 Nov</text>
                <text x="234" y="56" font-weight="700">Tue 10 Nov</text>
                <text x="380" y="56" font-weight="700">Wed 11 Nov</text>
                <text x="526" y="56" font-weight="700">Thu 12 Nov</text>
                <text x="672" y="56" font-weight="700">Fri 13 Nov</text>
                <text x="88" y="78" fill="#c4b5fd">Office</text>
                <text x="234" y="78" fill="#c4b5fd">Office</text>
                <text x="380" y="78" fill="#67e8f9">Home</text>
                <text x="526" y="78" fill="#c4b5fd">Office</text>
                <text x="672" y="78" fill="#67e8f9">Home</text>
                <g font-size="11" fill="#9b99b8">
                  <text x="88" y="100">laptop + logins</text>
                  <text x="88" y="116">meet the team</text>
                  <text x="234" y="100">shadow calls</text>
                  <text x="234" y="116">with buddy</text>
                  <text x="380" y="100">online modules</text>
                  <text x="380" y="116">buddy video call</text>
                  <text x="526" y="100">team meeting</text>
                  <text x="526" y="116">practise on system</text>
                  <text x="672" y="100">listen to calls</text>
                  <text x="672" y="116">check-in: Laura</text>
                </g>
              </g>
              <line x1="20" y1="146" x2="740" y2="146" stroke="#27274e"/>
              <text x="380" y="168" font-weight="700" fill="#c4b5fd" text-anchor="middle">Brightside: finding shared hours (New York time)</text>
              <text x="20" y="197">New York team</text>
              <rect x="217" y="182" width="404" height="22" rx="4" fill="#3b82f6"/>
              <text x="419" y="198" text-anchor="middle" font-size="12">09:00 to 17:30</text>
              <text x="20" y="231">Sam, Denver</text>
              <rect x="312" y="216" width="404" height="22" rx="4" fill="#8b5cf6"/>
              <text x="514" y="232" text-anchor="middle" font-size="12">09:00 to 17:30 Denver time</text>
              <text x="20" y="265" fill="#10b981" font-weight="700">Shared hours</text>
              <rect x="312" y="250" width="309" height="22" rx="4" fill="#10b981"/>
              <text x="466" y="266" text-anchor="middle" font-size="12" fill="#0b1020" font-weight="700">11:00 to 17:30 (6.5 hours)</text>
              <g stroke="#9b99b8">
                <line x1="170" y1="278" x2="740" y2="278"/>
                <line x1="170" y1="278" x2="170" y2="284"/>
                <line x1="265" y1="278" x2="265" y2="284"/>
                <line x1="360" y1="278" x2="360" y2="284"/>
                <line x1="455" y1="278" x2="455" y2="284"/>
                <line x1="550" y1="278" x2="550" y2="284"/>
                <line x1="645" y1="278" x2="645" y2="284"/>
                <line x1="740" y1="278" x2="740" y2="284"/>
              </g>
              <g font-size="11" fill="#9b99b8" text-anchor="middle">
                <text x="170" y="298">08:00</text>
                <text x="265" y="298">10:00</text>
                <text x="360" y="298">12:00</text>
                <text x="455" y="298">14:00</text>
                <text x="550" y="298">16:00</text>
                <text x="645" y="298">18:00</text>
                <text x="740" y="298" text-anchor="end">20:00</text>
              </g>
              <text x="380" y="326" font-size="12" fill="#9b99b8" text-anchor="middle">Denver is 2 hours behind New York. Book Sam's live calls in the shared hours.</text>
            </g>
          </svg>
          <figcaption>Top: a hybrid first week puts people time on office days and learning on home days. Bottom: for a remote joiner, plan live calls inside the hours both places are working.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>What changes when the new joiner is not in the building</h3>
          <p><strong>Remote</strong> means the person works away from the office all the time, usually from home. <strong>Hybrid</strong> means some days in the office and some days at home. Two more words help you plan:</p>
          <ul class="lc-list">
            <li><strong>Live (synchronous)</strong>: things that happen at the same time for everyone, such as video calls and meetings.</li>
            <li><strong>In your own time (asynchronous)</strong>: things a person does when it suits them, such as short videos, documents and chat messages.</li>
          </ul>
          <table class="lc-table">
            <thead><tr><th>Need</th><th>In the office</th><th>The online problem</th><th>A simple fix</th></tr></thead>
            <tbody>
              <tr><td>Kit and logins</td><td>IT hands them over</td><td>The laptop comes by courier and may be late</td><td>Deliver it 3 working days before the start. Book a short login test call.</td></tr>
              <tr><td>Quick questions</td><td>Ask the person next to you</td><td>Asking in chat feels like a bother</td><td>A named buddy and a team chat channel where no question is too small</td></tr>
              <tr><td>Meeting people</td><td>Lunch and corridor chats</td><td>You only meet people in booked calls</td><td>One or two short intro calls a day, planned in advance</td></tr>
              <tr><td>Seeing how work is done</td><td>Watch colleagues</td><td>You cannot see anyone's screen</td><td>Shadow calls with screen sharing and short recorded demos</td></tr>
              <tr><td>Energy</td><td>Natural breaks</td><td>A whole day of video calls is tiring</td><td>Mix live calls with time to read and practise. Leave gaps between calls.</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Hybrid: Aisha's first week at Northbridge</h3>
          <p>Aisha Rahman is a made-up customer service coordinator. She starts on Monday 9 November 2026 at the London head office in Park Royal. She will work 3 days a week in the office. Her manager is Laura Bennett.</p>
          <p>Priya Shah, the HR manager, uses a simple rule: <strong>office days are for people, home days are for learning</strong>. Day one is always in the office. Aisha collects her laptop in person, and her accounts were set up and tested before she arrived. Her buddy is Chloe Evans, a customer service coordinator in the same team. Meeting the team, shadowing calls and practising on the system happen on office days. Online courses and reading happen at home.</p>
          <p>Home working also brings a safety task. In the UK, employers have health and safety duties for home workers too. For people who use a screen every day for an hour or more at a time, this includes a <strong>DSE assessment</strong> (a check of the display screen equipment: desk, chair, screen and posture). A self-assessment checklist is usually fine. Aisha does hers on her first home day. Check the current guidance on the HSE website.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Make a hybrid onboarding plan.</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Plan the first week for a made-up hybrid customer service coordinator.
        Office days: Monday, Tuesday, Thursday (London office, 09:30 to 17:30).
        Home days: Wednesday and Friday.
        Rule: office days for meeting people and practice, home days for
        online learning and reading. No more than 3 hours of video calls a day.
        Include a daily 15-minute check-in with a buddy and a Friday check-in
        with the manager. Show a table: day | place | time | activity | who.
        Mark anything you are not sure about with [CHECK].</code></pre>
          <p>Before you share the plan, check that rooms, people and system training really exist on those days.</p>
        </div>
        <div class="lc-card">
          <h3>Remote and across time zones: Sam at Brightside</h3>
          <p>Brightside Software is a made-up 120-person software company in New York. Sam Carter is a made-up software engineer. He works fully remote from Denver, Colorado, which is 2 hours behind New York. He starts on Monday 16 November 2026. His manager, Jordan Lee, and his buddy, Nina Patel, work in New York.</p>
          <p>Maria Lopez, the people lead, ships Sam's laptop to arrive 3 working days early. With the start date in B2, <code>=WORKDAY(B2,-3)</code> gives Wednesday 11 November 2026. To turn a New York time in B2 into Denver time, she uses:</p>
          <pre><code>=B2-TIME(2,0,0)</code></pre>
          <table class="lc-table">
            <thead><tr><th>New York time</th><th>Denver time</th><th>Sam's day one (made up)</th></tr></thead>
            <tbody>
              <tr><td>11:00</td><td>09:00</td><td>Welcome video call with Jordan (30 minutes)</td></tr>
              <tr><td>11:45</td><td>09:45</td><td>IT call: check the laptop, accounts and security set-up</td></tr>
              <tr><td>13:00</td><td>11:00</td><td>Team intro call (30 minutes, cameras optional)</td></tr>
              <tr><td>14:00</td><td>12:00</td><td>Lunch break</td></tr>
              <tr><td>15:00</td><td>13:00</td><td>Buddy call with Nina: how the team uses chat and where to find things</td></tr>
              <tr><td>15:45</td><td>13:45</td><td>In his own time: read the team guide and set up his tools</td></tr>
              <tr><td>17:00</td><td>15:00</td><td>Short end-of-day call with Jordan: questions and tomorrow's plan</td></tr>
            </tbody>
          </table>
          <p>Clocks can trip you up. The UK and the US change their clocks on different dates. In 2026 the UK goes back on 25 October and the US on 1 November. For that one week, London is 4 hours ahead of New York, not 5. Let your calendar tool convert times, and check them.</p>
          <p>Remote hiring also changes some paperwork. In the US, the employer must examine the documents for Form I-9 Section 2. For a remote hire, this can be done in person by someone acting for the employer. Employers in good standing with E-Verify may use a live video procedure instead. Some states also have rules on paying back home working costs. This is general information, not legal advice. Check USCIS guidance and ask an employment lawyer.</p>
        </div>
        <div class="lc-card">
          <h3>Building connection online</h3>
          <ul class="lc-list">
            <li><strong>Plan the people, not just the tasks.</strong> List the 6 to 8 people a new joiner should meet in month one. Book short calls across the first two weeks.</li>
            <li><strong>Give the buddy time.</strong> A daily 15-minute call in week one works well. The buddy's manager must agree this time.</li>
            <li><strong>Write things down.</strong> Send short notes after each call. People in other time zones can catch up in their own time.</li>
            <li><strong>Make calls accessible.</strong> Turn on captions. Share slides in advance. Make cameras optional.</li>
            <li><strong>Do not use tracking to judge new joiners.</strong> Activity-tracking software and AI cannot tell you if someone feels welcome. Ask them, and listen.</li>
          </ul>
          <p>AI is useful here for drafting schedules, intro messages and call agendas. It is not good at time zones and dates. It often gets daylight saving changes wrong. Check every time it gives you.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: plan Aisha's hybrid start</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Aisha works 3 days in the office and 2 at home. Sort each task into the best time for it.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="before" data-label="Before day one"></div>
              <div data-sorter-target="bucket" data-bucket="office" data-label="Office day"></div>
              <div data-sorter-target="bucket" data-bucket="home" data-label="Home day"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="before" data-why="Accounts take time. If they are set up and tested early, day one is not lost to IT problems.">Set up Aisha's accounts and test that each login works.</li>
              <li data-bucket="before" data-why="A short plan sent before day one removes worry about where to go and what happens when.">Send her a one-page plan for her first week.</li>
              <li data-bucket="office" data-why="Lunch with the team builds connection. That is what office days are for.">Have lunch with the customer service team.</li>
              <li data-bucket="office" data-why="Sitting next to her buddy, she can watch and ask questions straight away.">Shadow live customer calls next to her buddy.</li>
              <li data-bucket="home" data-why="An online course can be done alone, at her own speed, on a quiet day.">Complete the online data protection course.</li>
              <li data-bucket="home" data-why="A DSE self-assessment checks her home desk, chair and screen, so she must do it at home.">Do a DSE self-assessment of her home desk.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to plan an online first day for a remote joiner in another time zone. Then check every time and every name.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an onboarding coordinator for remote teams. Use simple English.

        Company: [Brightside Software, a made-up 120-person software company in New York]
        New joiner (made up): [Sam, software engineer, fully remote in Denver, Colorado]
        Start date: [Monday 16 November 2026]
        Team: [manager and buddy in New York]
        Working hours: [09:00 to 17:30 local time in both places]

        Please give me:
        1. The shared working hours, in both local times.
        2. A day-one schedule as a table: New York time | joiner's local time | activity | who | live or in your own time.
           Rules: live calls only in shared hours, no more than 3 hours of live calls in total, a lunch break, and gaps between calls.
        3. A pre-start checklist with due dates: laptop delivered 3 working days before, accounts tested, buddy named, first-week plan sent.
        4. Five ways to help the joiner feel part of the team in week one.

        Mark any time or rule you are not sure about with [CHECK]. Do not suggest activity-tracking software.</pre>
            <ul class="ai-try-checks">
              <li>Denver is 2 hours behind New York, and the shared hours are 11:00 to 17:30 New York time.</li>
              <li>Every live call falls inside the shared hours, with breaks.</li>
              <li>The laptop date is Wednesday 11 November 2026, 3 working days before the start.</li>
              <li>The connection ideas are practical and do not rely on monitoring.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Online onboarding needs more planning, not less. Get kit and logins ready early. Book people time on purpose. Put live calls only in shared hours. Let AI draft the schedule, but check every time zone and date yourself, because AI often gets them wrong.
        </div>
      HTML
      starter_code: nil
    },
    12 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-hr">HR & Recruitment</div>
          <h1 class="lc-title">Onboarding for Different Roles</h1>
        </div>
        <p class="lc-lead">A warehouse operative, an office worker, a new manager and a graduate need very different first weeks. One plan for everyone gives each of them the wrong things. In this lesson you will learn how to shape onboarding for each type of role. You will also learn to plan accessibility and reasonable adjustments, so every new joiner can start well. You will use AI to adapt plans and make materials easier to use. People still talk with the joiner and make every decision.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 340" role="img" aria-label="Four columns compare roles. Warehouse operative, Daniel in Manchester: focus on safety and equipment, learns by doing with a buddy, productive target 4 weeks. Office staff, Aisha in London: focus on systems and people, learns by shadowing and practice, target 8 weeks. New manager, Grace in London: focus on people and policies, learns by handover and coaching, target 12 weeks. Graduate, Ellie in Bristol: focus on the whole business, learns by rotations and a mentor, ready at the end of the rotations. Below, four steps for every role: ask everyone, talk privately, agree and set up, review at week 2.">
            <defs><marker id="ob12a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <text x="380" y="22" font-weight="700" fill="#c4b5fd" text-anchor="middle">Same goal, different journeys (made-up joiners)</text>
              <g fill="#1f1f44" stroke-width="2">
                <rect x="20" y="36" width="172" height="180" rx="8" stroke="#f59e0b"/>
                <rect x="202" y="36" width="172" height="180" rx="8" stroke="#3b82f6"/>
                <rect x="384" y="36" width="172" height="180" rx="8" stroke="#ec4899"/>
                <rect x="566" y="36" width="172" height="180" rx="8" stroke="#10b981"/>
              </g>
              <g text-anchor="middle">
                <text x="106" y="58" font-weight="700">Warehouse</text>
                <text x="288" y="58" font-weight="700">Office</text>
                <text x="470" y="58" font-weight="700">New manager</text>
                <text x="652" y="58" font-weight="700">Graduate</text>
                <g font-size="11" fill="#9b99b8">
                  <text x="106" y="76">Daniel, Manchester</text>
                  <text x="288" y="76">Aisha, London</text>
                  <text x="470" y="76">Grace, London</text>
                  <text x="652" y="76">Ellie, Bristol</text>
                  <text x="106" y="102">FOCUS</text>
                  <text x="288" y="102">FOCUS</text>
                  <text x="470" y="102">FOCUS</text>
                  <text x="652" y="102">FOCUS</text>
                  <text x="106" y="146">LEARNS BY</text>
                  <text x="288" y="146">LEARNS BY</text>
                  <text x="470" y="146">LEARNS BY</text>
                  <text x="652" y="146">LEARNS BY</text>
                  <text x="106" y="190">PRODUCTIVE BY</text>
                  <text x="288" y="190">PRODUCTIVE BY</text>
                  <text x="470" y="190">PRODUCTIVE BY</text>
                  <text x="652" y="190">PRODUCTIVE BY</text>
                </g>
                <text x="106" y="120">safety + equipment</text>
                <text x="288" y="120">systems + people</text>
                <text x="470" y="120">people + policies</text>
                <text x="652" y="120">the whole business</text>
                <text x="106" y="164">doing, with a buddy</text>
                <text x="288" y="164">shadowing, practice</text>
                <text x="470" y="164">handover, coaching</text>
                <text x="652" y="164">rotations, mentor</text>
                <text x="106" y="208" fill="#fcd34d">4 weeks (target)</text>
                <text x="288" y="208" fill="#93c5fd">8 weeks (target)</text>
                <text x="470" y="208" fill="#f9a8d4">12 weeks (target)</text>
                <text x="652" y="208" fill="#6ee7b7">end of rotations</text>
              </g>
              <text x="380" y="246" font-weight="700" fill="#c4b5fd" text-anchor="middle">Access needs: the same four steps for every role</text>
              <g fill="#27274e" stroke="#22d3ee">
                <rect x="20" y="258" width="160" height="42" rx="8"/>
                <rect x="206" y="258" width="160" height="42" rx="8"/>
                <rect x="392" y="258" width="160" height="42" rx="8"/>
                <rect x="578" y="258" width="160" height="42" rx="8"/>
              </g>
              <g text-anchor="middle">
                <text x="100" y="284">Ask everyone</text>
                <text x="286" y="284">Talk privately</text>
                <text x="472" y="284">Agree and set up</text>
                <text x="658" y="284">Review at week 2</text>
              </g>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#ob12a)">
                <line x1="182" y1="279" x2="202" y2="279"/>
                <line x1="368" y1="279" x2="388" y2="279"/>
                <line x1="554" y1="279" x2="574" y2="279"/>
              </g>
              <text x="380" y="328" font-size="12" fill="#9b99b8" text-anchor="middle">Productive targets are Northbridge's made-up targets. Ellie works for Harbour Lane Hotels.</text>
            </g>
          </svg>
          <figcaption>Each role needs its own focus and pace. Planning for access needs follows the same four steps for every role.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>One programme, different journeys</h3>
          <p>Keep one shared core for everyone: the welcome, the paperwork, the company's values and safety basics. Then shape the rest for the role. Here are four made-up joiners. Daniel, Aisha and Grace join Northbridge Logistics. Ellie Morgan is a graduate management trainee at Harbour Lane Hotels, a made-up group of three hotels in Bristol. She started on Monday 7 September 2026.</p>
          <table class="lc-table">
            <thead><tr><th>Role</th><th>What matters most</th><th>Shape of week one</th><th>Main risk</th></tr></thead>
            <tbody>
              <tr><td>Warehouse operative (Daniel)</td><td>Safety, kit, shift pattern, a buddy on the floor</td><td>Hands-on safety practice, then picking next to a buddy at a slower pace</td><td>Feeling unsafe or alone; too much talk, not enough practice</td></tr>
              <tr><td>Office staff (Aisha)</td><td>Systems access, who does what, how to ask</td><td>Shadowing, short system lessons, practice on test cases</td><td>Waiting days for access; lonely home days</td></tr>
              <tr><td>New manager (Grace)</td><td>Her team, people policies, her own manager's goals</td><td>Handover, one-to-ones with each team leader, an HR policy session</td><td>Too much too soon; no clear goals</td></tr>
              <tr><td>Graduate (Ellie)</td><td>Learning the whole business, a mentor, clear learning goals</td><td>Welcome with the other graduates, then the first rotation</td><td>Feeling like a visitor in each team; no real work</td></tr>
            </tbody>
          </table>
          <p>A <strong>rotation</strong> is a planned period in one team before moving to the next. Ellie spends 4 weeks each on the front desk, in housekeeping and in food and drink.</p>
          <p>Do not forget <strong>internal movers</strong>. A team leader promoted to manager is new to the job, even if they know the building. Give them a manager onboarding plan too.</p>
        </div>
        <div class="lc-card">
          <h3>New managers need two kinds of onboarding</h3>
          <p>Grace Mensah is a made-up shift manager. She starts on Tuesday 1 December 2026 on the late shift at Park Royal, London. Her manager is Steve Harris, the site operations manager. Her team is 2 team leaders and 22 operatives. Ruth Clarke, a shift manager in Manchester, mentors her by video once a month. Grace must learn the site, and she must learn to manage people here.</p>
          <ul class="lc-list">
            <li><strong>The business</strong>: the site, the targets, the systems and the safety rules.</li>
            <li><strong>Managing people</strong>: one-to-ones, absence, holiday approval, how to make reasonable adjustments, and the disciplinary and grievance procedures. In the UK these should follow the ACAS Code of Practice (official guidance on fair disciplinary and grievance steps).</li>
          </ul>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Write an onboarding plan for a new manager.</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Write a first-month onboarding plan for a new shift manager at a made-up
        UK warehouse (late shift, 14:00 to 22:00). She manages team leaders.
        Split it into two tracks: (1) learning the site and its targets,
        (2) learning our people processes: one-to-ones, absence, holiday,
        reasonable adjustments, disciplinary and grievance steps.
        For each week give: goals, who she meets, and what HR teaches her.
        Do not describe our policies. Write [OUR POLICY] where HR must add
        the real text. Use a table.</code></pre>
          <p>The <code>[OUR POLICY]</code> rule stops the AI from inventing your policies. HR then adds the real, approved text.</p>
        </div>
        <div class="lc-card">
          <h3>Accessibility and reasonable adjustments</h3>
          <p><strong>Accessibility</strong> means everyone can use your onboarding: the building, the documents, the systems and the training. A <strong>reasonable adjustment</strong> is a change that removes a barrier for a disabled person. Examples are a quieter room, written instructions or special equipment.</p>
          <ul class="lc-list">
            <li><strong>UK</strong>: the Equality Act 2010 places a duty on employers to make reasonable adjustments for disabled workers. The government's Access to Work scheme may help pay for support in England, Scotland and Wales. The worker applies for it.</li>
            <li><strong>US</strong>: the ADA (Americans with Disabilities Act) covers employers with 15 or more employees. It requires "reasonable accommodation". The EEOC (the US equal employment agency) describes an "interactive process": the employer and the employee talk and agree what works.</li>
          </ul>
          <p>Ask every new joiner the same question before day one. For example: "Is there anything we can do to make your first day or your job easier?" Do not guess from what you see. Keep any health details private, in the HR system, with limited access. Never put them in an AI prompt.</p>
          <p><strong>Worked example (made up).</strong> Ryan Brooks joins Park Royal as a warehouse operative on Monday 16 November 2026. In a private call with Priya Shah, he says he is hard of hearing. They agree these steps:</p>
          <table class="lc-table">
            <thead><tr><th>Barrier</th><th>Adjustment agreed with Ryan</th><th>Owner</th><th>Ready by</th></tr></thead>
            <tbody>
              <tr><td>He may not hear the fire alarm</td><td>A visual or vibrating alert, as advised by the safety lead</td><td>Health and safety lead</td><td>Mon 9 Nov 2026</td></tr>
              <tr><td>The safety talk is in a noisy area</td><td>Induction in a quiet room, the trainer faces him, plus a written copy</td><td>Site trainer</td><td>Day one</td></tr>
              <tr><td>Shift briefings are spoken</td><td>Key points also written on the team board</td><td>Team leader</td><td>Day one</td></tr>
              <tr><td>The scanner gives sound alerts</td><td>Check if the scanner can vibrate or show alerts on screen</td><td>IT desk</td><td>Mon 9 Nov 2026</td></tr>
            </tbody>
          </table>
          <p>Mon 9 Nov 2026 is <code>=WORKDAY(B2,-5)</code> when B2 holds his start date. AI can help in safe ways: a plain English version of the safety guide, captions for videos, or a checklist of common adjustments to discuss. It must not decide what Ryan needs. This is general information, not legal advice. Check with an HR adviser or employment lawyer.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: handle an access need</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put the HR team's steps for planning adjustments for a new joiner in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Ask every new joiner the same access question in the pre-boarding form.</li>
              <li data-order="2">Have a private conversation with the joiner who asks for help.</li>
              <li data-order="3">Agree each adjustment with the joiner, and name an owner and a date.</li>
              <li data-order="4">Record only what is needed, in the HR system, with limited access.</li>
              <li data-order="5">Check that every adjustment is in place before day one.</li>
              <li data-order="6">Review with the joiner at week 2 and change what is not working.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to adapt one standard onboarding plan for a different role, and to add an access check. Then decide what fits your workplace.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an onboarding designer. Use simple English.

        Company: [Northbridge Logistics, a made-up 420-person warehouse and delivery company in the UK]
        Our standard first week (made up): [day one: welcome, safety induction, site tour, meet the team; days 2 to 5: training with a buddy, daily 10-minute check-ins; Friday: week-one review with the manager].
        Role to adapt for: [a new shift manager on the late shift, 14:00 to 22:00, who manages team leaders]

        Please:
        1. Rewrite the first week for this role as a table: day | goal | activities | who | what HR teaches.
        2. Explain in 3 bullet points what you changed from the standard week and why.
        3. Add an "access check" list: 5 questions to make sure training, documents, systems and the building work for everyone.
        4. Write the one question we should ask every new joiner about adjustments before day one.

        Do not invent our policies: write [OUR POLICY] where HR must add real text. Do not suggest what any disability needs; the joiner and HR agree that together.</pre>
            <ul class="ai-try-checks">
              <li>The week fits the role: shift times, team leader one-to-ones and people processes.</li>
              <li>Policy details are left as [OUR POLICY], not invented.</li>
              <li>The access check covers documents, systems, training and the building.</li>
              <li>It does not guess what a disabled person needs.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Keep one shared core, then shape onboarding for each role. Warehouse joiners need practice and safety, office joiners need access and people, new managers need people skills and graduates need a mentor. Ask every joiner the same access question and agree adjustments with them before day one. AI can adapt plans and materials, but people make the decisions.
        </div>
      HTML
      starter_code: nil
    },
    13 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-hr">HR & Recruitment</div>
          <h1 class="lc-title">Measuring Onboarding</h1>
        </div>
        <p class="lc-lead">You cannot improve onboarding if you do not know how well it works today. In this lesson you will choose a few clear measures, define them and calculate them with real formulas. You will learn the early leaver rate, time to productivity, a day-one readiness measure and new-joiner survey results. You will also see how AI can help with analysis, and how it can get numbers wrong. Priya Shah at Northbridge Logistics sets the baseline before the new onboarding design starts. A <strong>baseline</strong> is the starting number you compare against later.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 330" role="img" aria-label="A dashboard of four tiles for Northbridge warehouse onboarding. Early leaver rate 25.0 percent, target 15.0 percent. Time to productivity 7 weeks, target 4 weeks. Ready on day one 62.5 percent, target 100 percent. I know who to ask 37.5 percent agree, target 80 percent. Below, a timeline of when each number arrives: day 1 ready check, end of week 1 pulse survey, day 30 survey, weeks 4 to 12 productivity, day 90 stayed or left. The first three are early warnings. The last two are final results.">
            <defs><marker id="ob13a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <text x="380" y="22" font-weight="700" fill="#c4b5fd" text-anchor="middle">Warehouse onboarding: the baseline (made-up data)</text>
              <g fill="#1f1f44" stroke-width="2">
                <rect x="20" y="34" width="172" height="124" rx="8" stroke="#ec4899"/>
                <rect x="202" y="34" width="172" height="124" rx="8" stroke="#f59e0b"/>
                <rect x="384" y="34" width="172" height="124" rx="8" stroke="#3b82f6"/>
                <rect x="566" y="34" width="172" height="124" rx="8" stroke="#22d3ee"/>
              </g>
              <g text-anchor="middle">
                <text x="106" y="58" font-weight="700">Early leaver rate</text>
                <text x="288" y="58" font-weight="700">Time to productivity</text>
                <text x="470" y="58" font-weight="700">Ready on day one</text>
                <text x="652" y="58" font-weight="700">"I know who to ask"</text>
                <g font-size="26" font-weight="700">
                  <text x="106" y="96" fill="#f9a8d4">25.0%</text>
                  <text x="288" y="96" fill="#fcd34d">7 weeks</text>
                  <text x="470" y="96" fill="#93c5fd">62.5%</text>
                  <text x="652" y="96" fill="#67e8f9">37.5%</text>
                </g>
                <g font-size="11" fill="#9b99b8">
                  <text x="106" y="118">24 of 96 hires</text>
                  <text x="288" y="118">average, all starters</text>
                  <text x="470" y="118">15 of 24 had logins</text>
                  <text x="652" y="118">6 of 16 agree, day 30</text>
                </g>
                <g font-size="12" fill="#10b981">
                  <text x="106" y="142">Target: 15.0%</text>
                  <text x="288" y="142">Target: 4 weeks</text>
                  <text x="470" y="142">Target: 100%</text>
                  <text x="652" y="142">Target: 80%</text>
                </g>
              </g>
              <text x="380" y="188" font-weight="700" fill="#c4b5fd" text-anchor="middle">When each number arrives for a new joiner</text>
              <g fill="#27274e" stroke-width="1.5">
                <rect x="20" y="200" width="132" height="50" rx="8" stroke="#10b981"/>
                <rect x="167" y="200" width="132" height="50" rx="8" stroke="#10b981"/>
                <rect x="314" y="200" width="132" height="50" rx="8" stroke="#10b981"/>
                <rect x="461" y="200" width="132" height="50" rx="8" stroke="#8b5cf6"/>
                <rect x="608" y="200" width="132" height="50" rx="8" stroke="#8b5cf6"/>
              </g>
              <g text-anchor="middle">
                <text x="86" y="221" font-weight="700">Day 1</text>
                <text x="233" y="221" font-weight="700">Week 1</text>
                <text x="380" y="221" font-weight="700">Day 30</text>
                <text x="527" y="221" font-weight="700">Weeks 4 to 12</text>
                <text x="674" y="221" font-weight="700">Day 90</text>
                <g font-size="11" fill="#9b99b8">
                  <text x="86" y="239">ready check</text>
                  <text x="233" y="239">pulse survey</text>
                  <text x="380" y="239">survey</text>
                  <text x="527" y="239">productive yet?</text>
                  <text x="674" y="239">stayed or left</text>
                </g>
              </g>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#ob13a)">
                <line x1="153" y1="225" x2="163" y2="225"/>
                <line x1="300" y1="225" x2="310" y2="225"/>
                <line x1="447" y1="225" x2="457" y2="225"/>
                <line x1="594" y1="225" x2="604" y2="225"/>
              </g>
              <line x1="20" y1="264" x2="446" y2="264" stroke="#10b981" stroke-width="3"/>
              <line x1="461" y1="264" x2="740" y2="264" stroke="#8b5cf6" stroke-width="3"/>
              <text x="233" y="286" text-anchor="middle" fill="#6ee7b7">Early warnings (leading)</text>
              <text x="600" y="286" text-anchor="middle" fill="#c4b5fd">Final results (lagging)</text>
              <text x="380" y="316" font-size="12" fill="#9b99b8" text-anchor="middle">Readiness and survey: Apr to Jun 2026 warehouse starters. Rates: Jul 2025 to Jun 2026.</text>
            </g>
          </svg>
          <figcaption>A small dashboard with four measures, each with a baseline and a target. Early warnings arrive in the first month. Final results take up to 90 days.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Choose a few measures and define them</h3>
          <p>Pick 4 or 5 measures, not 20. Write an exact definition for each one, so everyone calculates it the same way. Mix two types:</p>
          <ul class="lc-list">
            <li><strong>Leading measures</strong> (early warnings): they arrive fast and show problems while you can still help. Example: was the new joiner ready on day one?</li>
            <li><strong>Lagging measures</strong> (final results): they arrive late but show the real outcome. Example: did the person stay past 90 days?</li>
          </ul>
          <table class="lc-table">
            <thead><tr><th>Measure</th><th>Definition</th><th>Baseline (made up)</th><th>Target</th></tr></thead>
            <tbody>
              <tr><td>Early leaver rate</td><td>Leavers within 90 days of their start ÷ hires in the same group × 100</td><td>Warehouse: 24 ÷ 96 × 100 = 25.0%</td><td>15.0%</td></tr>
              <tr><td>Time to productivity</td><td>Weeks from the start date until the person meets the standard pick rate (120 lines per hour) on 5 shifts in a row</td><td>7 weeks</td><td>4 weeks</td></tr>
              <tr><td>Ready on day one</td><td>Starters with a working scanner and WMS login on day one ÷ all starters × 100</td><td>Apr to Jun 2026: 15 ÷ 24 × 100 = 62.5%</td><td>100%</td></tr>
              <tr><td>"I know who to ask"</td><td>Day-30 survey answers of 4 or 5 on a 1 to 5 scale ÷ all answers × 100</td><td>6 ÷ 16 × 100 = 37.5%</td><td>80%</td></tr>
            </tbody>
          </table>
          <p>The <strong>WMS</strong> is the warehouse management system: the software that tells pickers what to collect. If you change a definition later, say so. Otherwise you cannot compare the new numbers with the baseline.</p>
        </div>
        <div class="lc-card">
          <h3>Worked numbers in a spreadsheet</h3>
          <p>Priya exports the 96 warehouse hires from Jul 2025 to Jun 2026, with names removed. Each row is one hire. Column B is the site, C is the start date and D is the leave date (empty if the person is still there). In E2 she flags early leavers:</p>
          <pre><code>=IF(AND(D2&lt;&gt;"",D2-C2&lt;=90),1,0)</code></pre>
          <p>She copies it down to row 97. Then she calculates the rates and formats them as percentages:</p>
          <table class="lc-table">
            <thead><tr><th>What</th><th>Formula</th><th>Result</th></tr></thead>
            <tbody>
              <tr><td>All warehouse hires</td><td><code>=SUM(E2:E97)/COUNT(C2:C97)</code></td><td>24 ÷ 96 = 25.0%</td></tr>
              <tr><td>London only</td><td><code>=COUNTIFS(B2:B97,"London",E2:E97,1)/COUNTIF(B2:B97,"London")</code></td><td>15 ÷ 54 = 27.8%</td></tr>
              <tr><td>Manchester only</td><td><code>=COUNTIFS(B2:B97,"Manchester",E2:E97,1)/COUNTIF(B2:B97,"Manchester")</code></td><td>9 ÷ 42 = 21.4%</td></tr>
            </tbody>
          </table>
          <p>For time to productivity, she looks at a sample of 10 Manchester starters who reached the standard. Their weeks are 5, 6, 6, 7, 7, 7, 8, 8, 9 and 7. With these in F2:F11, <code>=AVERAGE(F2:F11)</code> gives 7.0 weeks and <code>=MEDIAN(F2:F11)</code> gives 7 weeks. People who left before reaching the standard have no number, so report them separately.</p>
          <p>Priya also shows what the target could be worth. If the hiring stays the same, 15.0% of 96 hires is 14.4, so about 14 early leavers. That is 10 fewer than 24. At an estimated £3,200 each, 10 × £3,200 = £32,000 a year. She labels it as an estimate, because the £3,200 is an estimate too.</p>
          <p>Be careful with small groups. Only 4 new managers started in the year, so one leaver changes their rate by 25 percentage points. Report the count ("1 of 4"), not just the percentage.</p>
        </div>
        <div class="lc-card">
          <h3>New-joiner surveys</h3>
          <p>A <strong>pulse survey</strong> is a very short survey, often 3 to 5 questions, sent at set points. Northbridge plans three: a 3-question survey at the end of week one, then surveys at day 30 and day 90. People answer from 1 (strongly disagree) to 5 (strongly agree). "Agree" means an answer of 4 or 5.</p>
          <p>As a test, Priya surveyed the 24 warehouse starters from Apr to Jun 2026 at day 30. 4 had already left, so she sent it to 20 people. 16 answered. The <strong>response rate</strong> is 16 ÷ 20 × 100 = 80.0%.</p>
          <table class="lc-table">
            <thead><tr><th>Statement</th><th>Agree (4 or 5)</th><th>% agree</th></tr></thead>
            <tbody>
              <tr><td>I knew where to go and who to meet on day one</td><td>7 of 16</td><td>43.8%</td></tr>
              <tr><td>I had my kit and logins on day one</td><td>8 of 16</td><td>50.0%</td></tr>
              <tr><td>I feel safe using the equipment</td><td>10 of 16</td><td>62.5%</td></tr>
              <tr><td>I know who to ask when I am stuck</td><td>6 of 16</td><td>37.5%</td></tr>
              <tr><td>My shift pattern is what I was told</td><td>11 of 16</td><td>68.8%</td></tr>
            </tbody>
          </table>
          <p>Look at "I know who to ask" in detail. Of the 16 answers, 2 people chose 1, 4 chose 2, 4 chose 3, 4 chose 4 and 2 chose 5. The answers are in B2:B17:</p>
          <pre><code>=COUNTIF(B2:B17,"&gt;=4")/COUNT(B2:B17)    gives 6 ÷ 16 = 37.5%
        =AVERAGE(B2:B17)                        gives 3.0</code></pre>
          <p>Keep surveys anonymous. Do not report any group with fewer than 5 answers, so nobody can be identified. Remember that people who left early did not answer. Their view comes from leaver calls, so use both.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: Priya checks an AI analysis</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Priya asks">Priya pastes the anonymous summary data into her company's approved AI tool. She asks: "What is the warehouse early leaver rate, and what share of new joiners know who to ask?"</li>
              <li data-kind="answer" data-label="AI replies">"The warehouse early leaver rate is 20.7% (24 ÷ 116). 62.5% of new joiners know who to ask (10 of 16). Both are close to normal levels."</li>
              <li data-kind="thought" data-label="Priya thinks">20.7% is lower than the 25.0% she calculated before. And "close to normal levels" compared with what?</li>
              <li data-kind="tool" data-label="Priya checks">She opens her spreadsheet and runs her own formulas.</li>
              <li data-kind="result" data-label="Spreadsheet">Warehouse: 24 ÷ 96 = 25.0%. The AI divided by all 116 hires, not the 96 warehouse hires. Agree (4 or 5): 6 ÷ 16 = 37.5%. The AI also counted the four neutral answers of 3.</li>
              <li data-kind="warn" data-label="The mistakes">Wrong group, a loose definition of "agree", and a claim about "normal levels" with no source. All three make onboarding look better than it is.</li>
              <li data-kind="check" data-label="The fix">Priya puts the definitions in her prompt and asks the AI to show its working. She uses the spreadsheet numbers in her report and deletes the "normal levels" claim.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to calculate onboarding measures from made-up data and draft a measurement plan. Then check every number with a calculator or spreadsheet.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an HR analyst. Use simple English. All data is made up.

        Group: [warehouse operatives, hires from July 2025 to June 2026]
        - Hires: [96]. Left within 90 days of their start: [24]. By site: [London 54 hires, 15 left; Manchester 42 hires, 9 left].
        - Starters with working logins on day one (last quarter): [15 of 24].
        - Day-30 survey, "I know who to ask", answers on a 1 to 5 scale: [2 x 1, 4 x 2, 4 x 3, 4 x 4, 2 x 5].
        - Time to productivity now: [7 weeks]. Target: [4 weeks].

        Definitions (use exactly these):
        - Early leaver rate = leavers within 90 days / hires in the same group x 100.
        - "Agree" = an answer of 4 or 5.

        Please:
        1. Calculate each measure. Show your working in a table, to one decimal place.
        2. Say which measures are leading (early warnings) and which are lagging (final results).
        3. Draft a measurement plan: measure | definition | how often | owner (job title) | target.
        4. List 3 cautions, such as small groups or people who did not answer.

        Do not compare with "industry averages" or invent any statistics.</pre>
            <ul class="ai-try-checks">
              <li>The rates are 25.0% overall, 27.8% for London and 21.4% for Manchester.</li>
              <li>Ready on day one is 62.5%, and "agree" is 37.5% (6 of 16), not counting the 3s.</li>
              <li>Each measure has one clear definition and an owner.</li>
              <li>It adds no outside averages or invented statistics.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Measure a few things well. Define each measure exactly, set a baseline before you change anything, and mix early warnings with final results. AI can speed up the analysis, but it often uses the wrong group or a loose definition. Check every number in your own spreadsheet before you report it.
        </div>
      HTML
      starter_code: nil
    },
    14 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-hr">HR & Recruitment</div>
          <h1 class="lc-title">Improving the Programme</h1>
        </div>
        <p class="lc-lead">Onboarding is never finished. People leave, policies change and new problems appear. In this lesson you will turn feedback into clear themes, choose which fixes to make first and test them in a small pilot. You will also set up a simple register so welcome emails, FAQs and guides stay up to date. AI can group comments and compare documents quickly. You must still check its counts, choose the fixes and own the content. Priya Shah and Tom Reed at Northbridge Logistics use their survey and leaver data to improve the programme.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 320" role="img" aria-label="An improvement loop of six steps. Collect feedback from surveys and leaver calls. Find themes: AI groups, you count. Choose fixes by impact and effort. Test in a pilot in Manchester from November 2026. Measure again with the same definitions. Update content with an owner and a review date. Then the loop starts again. The centre says repeat every quarter.">
            <defs><marker id="ob14a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <g fill="#1f1f44" stroke-width="2">
                <rect x="40" y="40" width="200" height="60" rx="8" stroke="#8b5cf6"/>
                <rect x="280" y="40" width="200" height="60" rx="8" stroke="#3b82f6"/>
                <rect x="520" y="40" width="200" height="60" rx="8" stroke="#22d3ee"/>
                <rect x="520" y="200" width="200" height="60" rx="8" stroke="#10b981"/>
                <rect x="280" y="200" width="200" height="60" rx="8" stroke="#f59e0b"/>
                <rect x="40" y="200" width="200" height="60" rx="8" stroke="#ec4899"/>
              </g>
              <g text-anchor="middle">
                <text x="140" y="66" font-weight="700">1. Collect feedback</text>
                <text x="380" y="66" font-weight="700">2. Find themes</text>
                <text x="620" y="66" font-weight="700">3. Choose fixes</text>
                <text x="620" y="226" font-weight="700">4. Test in a pilot</text>
                <text x="380" y="226" font-weight="700">5. Measure again</text>
                <text x="140" y="226" font-weight="700">6. Update content</text>
                <g font-size="11" fill="#9b99b8">
                  <text x="140" y="86">surveys, leaver calls</text>
                  <text x="380" y="86">AI groups, you count</text>
                  <text x="620" y="86">impact vs effort</text>
                  <text x="620" y="246">Manchester, Nov 2026</text>
                  <text x="380" y="246">same definitions</text>
                  <text x="140" y="246">owner + review date</text>
                </g>
                <text x="380" y="155" font-weight="700" fill="#c4b5fd">Repeat every quarter</text>
              </g>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#ob14a)">
                <line x1="242" y1="70" x2="276" y2="70"/>
                <line x1="482" y1="70" x2="516" y2="70"/>
                <line x1="620" y1="102" x2="620" y2="196"/>
                <line x1="518" y1="230" x2="484" y2="230"/>
                <line x1="278" y1="230" x2="244" y2="230"/>
                <line x1="140" y1="198" x2="140" y2="104"/>
              </g>
              <text x="380" y="298" font-size="12" fill="#9b99b8" text-anchor="middle">Made-up example: Northbridge Logistics improves warehouse onboarding.</text>
            </g>
          </svg>
          <figcaption>The improvement loop: collect feedback, find themes, choose fixes, test them, measure again and keep the content up to date.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Turn feedback into themes</h3>
          <p>Good feedback comes from several places: new-joiner surveys, leaver calls, buddies, team leaders and 90-day reviews. A <strong>theme</strong> is a topic that comes up again and again, such as "nobody to ask".</p>
          <p>In the day-30 survey of Apr to Jun 2026 warehouse starters, 14 of the 16 people wrote a comment. Priya removed names and any details that could identify someone. She asked AI to group the comments. Then she read all 14 herself and checked every count.</p>
          <table class="lc-table">
            <thead><tr><th>Theme</th><th>Comments</th><th>Example comment (made up)</th></tr></thead>
            <tbody>
              <tr><td>No one to ask, felt alone</td><td>5</td><td>"After day two I was on my own and did not know who to ask."</td></tr>
              <tr><td>Training too fast, too many slides</td><td>4</td><td>"Three hours of slides, then straight onto the scanner."</td></tr>
              <tr><td>Shift information unclear</td><td>3</td><td>"Nobody told me about the Saturday rota."</td></tr>
              <tr><td>Pay and payslip questions</td><td>2</td><td>"My first payslip was missing a shift."</td></tr>
              <tr><td>Good things about the team</td><td>3</td><td>"My team leader was really kind."</td></tr>
            </tbody>
          </table>
          <p>The counts add up to 17, not 14. Three comments each mentioned two themes. Say this in your report, or readers will think the numbers are wrong.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Summarise these survey comments.</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Group these 14 anonymous survey comments from new warehouse staff
        into themes. Rules:
        - A comment can belong to more than one theme. Say which ones do.
        - For each theme, give the count and quote 1 comment exactly.
        - List any comment that fits no theme.
        - Do not guess how people feel beyond what they wrote.
        - Do not try to work out who wrote a comment.
        Comments: [paste comments with names and details removed]</code></pre>
        </div>
        <div class="lc-card">
          <h3>Choose fixes: impact and effort</h3>
          <p>You cannot fix everything at once. Score each fix on <strong>impact</strong> (how much it helps new joiners, based on evidence) and <strong>effort</strong> (time, money and people needed). Start with high impact and low effort. These are called <strong>quick wins</strong>.</p>
          <table class="lc-table">
            <thead><tr><th>Fix</th><th>Evidence</th><th>Impact</th><th>Effort</th><th>Decision</th></tr></thead>
            <tbody>
              <tr><td>An example week of the shift pattern in every offer</td><td>7 leavers: shift not as explained</td><td>High</td><td>Low</td><td>Quick win</td></tr>
              <tr><td>Payroll checks the first payslip before payday</td><td>3 leavers, 2 comments</td><td>Medium</td><td>Low</td><td>Quick win</td></tr>
              <tr><td>A named buddy for 4 weeks for every warehouse starter</td><td>5 leavers, 5 comments</td><td>High</td><td>Medium</td><td>Pilot now</td></tr>
              <tr><td>Hands-on safety practice instead of a 3-hour slide talk</td><td>6 leavers, 4 comments</td><td>High</td><td>High</td><td>Plan and pilot</td></tr>
              <tr><td>A new onboarding app</td><td>No clear evidence of need</td><td>Unclear</td><td>High</td><td>Not now</td></tr>
            </tbody>
          </table>
          <p>A <strong>pilot</strong> is a small, time-limited test. Northbridge pilots the new design at the Manchester warehouse for starters from Monday 2 November 2026. Daniel Okafor is the first. Priya reviews the pilot on Monday 11 January 2027. If it works, London warehouse starters follow from Monday 1 February 2027.</p>
          <p>Pilot groups are small, so do not judge them on the early leaver rate alone. Look first at the leading measures: ready on day one and the week-one and day-30 surveys. Use the same definitions as the baseline.</p>
        </div>
        <div class="lc-card">
          <h3>Keep content up to date</h3>
          <p>Northbridge's welcome emails were copied from an old template, with out-of-date names and links. The fix is a <strong>content register</strong>: a list of every onboarding document with one owner and a review date. Column C holds the last review date. Column D holds the months between reviews: 3 for pages new joiners read often, 6 for the rest. Column E works out the next review, and column F flags it when it is due:</p>
          <pre><code>E2: =EDATE(C2,D2)
        F2: =IF(E2&lt;=TODAY(),"REVIEW DUE","")</code></pre>
          <table class="lc-table">
            <thead><tr><th>Document</th><th>Owner</th><th>Last reviewed</th><th>Months</th><th>Next review</th><th>Flag on 2 Oct 2026</th></tr></thead>
            <tbody>
              <tr><td>Warehouse welcome pack (8 pages)</td><td>Priya Shah</td><td>1 Oct 2026</td><td>3</td><td>1 Jan 2027</td><td></td></tr>
              <tr><td>Warehouse FAQ (30 approved answers)</td><td>Tom Reed</td><td>1 Oct 2026</td><td>3</td><td>1 Jan 2027</td><td></td></tr>
              <tr><td>Welcome email template</td><td>Tom Reed</td><td>2 Oct 2026</td><td>3</td><td>2 Jan 2027</td><td></td></tr>
              <tr><td>Safety induction guide</td><td>Health and safety lead</td><td>1 Jun 2026</td><td>6</td><td>1 Dec 2026</td><td></td></tr>
              <tr><td>Written statement template</td><td>Priya Shah</td><td>2 Mar 2026</td><td>6</td><td>2 Sep 2026</td><td>REVIEW DUE</td></tr>
            </tbody>
          </table>
          <p>Do not wait for the date if something changes. Review a document straight away when a policy, a law, a system or a named person changes. Here is an example. Planned UK employment law changes include a new rule: new joiners in the UK must get a statement of their right to join a trade union. That affects the written statement template. Check GOV.UK for what is in force, and ask your HR adviser. This is not legal advice.</p>
          <p>AI can help here. Give it the old and the new policy text. Ask it to list every change and the onboarding documents that may need updating. Then check each change yourself, because AI can miss small but important ones.</p>
          <p>Finally, close the loop. Tell new joiners what you changed because of their feedback: "You said, we did."</p>
        </div>
        <div class="lc-card">
          <h3>Activity: impact and effort</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Priya has a list of possible fixes. Sort each one by what she should do with it.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="quick" data-label="Quick win"></div>
              <div data-sorter-target="bucket" data-bucket="pilot" data-label="Plan and pilot"></div>
              <div data-sorter-target="bucket" data-bucket="not" data-label="Not now"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="quick" data-why="Old names and links confuse new joiners. Fixing the template takes an hour.">Update the welcome email template with the right names and links.</li>
              <li data-bucket="quick" data-why="7 leavers said the shift was not as explained. Adding an example week to the offer is quick.">Add an example shift week to every offer letter.</li>
              <li data-bucket="pilot" data-why="It has strong evidence but needs trained buddies and time off the floor. Test it at one site first.">Give every warehouse starter a trained buddy for 4 weeks.</li>
              <li data-bucket="pilot" data-why="It needs a new training plan, a practice area and trainer time. It is big, so pilot it.">Replace the 3-hour slide talk with hands-on safety practice.</li>
              <li data-bucket="not" data-why="No feedback asked for it, and it costs a lot. Fix the basics first.">Buy a new onboarding app with a chatbot and badges.</li>
              <li data-bucket="not" data-why="Only one comment mentioned it. Watch for it in the next survey before acting.">Change the canteen menu because one person disliked it.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to turn made-up feedback into themes and an action plan. Then check the counts and decide the priorities yourself.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an onboarding improvement adviser. Use simple English.

        Company: [a made-up 420-person warehouse company in the UK]
        Anonymous day-30 comments from new joiners (made up):
        1. [Nobody showed me how the scanner works after day one.]
        2. [My buddy was great, but she was moved to nights.]
        3. [I was not told about weekend shifts.]
        4. [Too many slides on day one. I wanted to try the kit.]
        5. [My first payslip missed a shift.]
        6. [I did not know who to ask, so I guessed.]
        7. [The team leader checked on me every day. That helped.]
        8. [The welcome email had the wrong start time.]

        Please:
        1. Group the comments into themes. Give each theme a count and the comment numbers. A comment can be in two themes.
        2. For each problem theme, suggest one fix. Rate impact and effort as low, medium or high, with a reason.
        3. Sort the fixes into: quick wins, plan and pilot, not now.
        4. Say which onboarding documents may need updating.

        Do not guess feelings beyond the words, and do not invent statistics.</pre>
            <ul class="ai-try-checks">
              <li>The theme counts match the comment numbers listed.</li>
              <li>Positive comments are kept, not ignored.</li>
              <li>Each fix links to a real comment, with a reason for its rating.</li>
              <li>It names documents to update, such as the welcome email template.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Improve in small loops. Group feedback into themes and check every count. Fix the high-impact, low-effort problems first and pilot the big changes. Give every document an owner and a review date. AI speeds up the grouping and comparing, but people choose the fixes.
        </div>
      HTML
      starter_code: nil
    },
    15 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-hr">HR & Recruitment</div>
          <h1 class="lc-title">Capstone: An Onboarding Programme for Northbridge Logistics</h1>
        </div>
        <p class="lc-lead">In this capstone you bring the whole course together. You will build a complete onboarding programme for Northbridge Logistics, the made-up warehouse and delivery company you have followed throughout. It has six parts: journey maps, schedules, 30-60-90 day plans, a welcome pack, an FAQ and a measurement plan. You will use AI to draft each part from the facts you already have. Then you will check every part, get it signed off and plan how to test it. This is the kind of work an HR team would present to its leaders.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 320" role="img" aria-label="The six parts of the Northbridge onboarding programme around a central box: journey maps for 3 roles, day one and week one schedules, 30-60-90 plans for 3 joiners, an 8-page welcome pack, an FAQ and chat helper with 30 approved answers, and a measurement plan with 4 measures. Below, a rollout timeline: Monday 2 November 2026 the Manchester pilot starts with Daniel; Monday 9 November Aisha starts; Tuesday 1 December Grace starts; Monday 11 January 2027 pilot review; Monday 1 February 2027 London warehouse joins the new design.">
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <g stroke="#9b99b8" stroke-width="1.5">
                <line x1="230" y1="58" x2="290" y2="104"/>
                <line x1="230" y1="118" x2="290" y2="128"/>
                <line x1="230" y1="178" x2="290" y2="152"/>
                <line x1="530" y1="58" x2="470" y2="104"/>
                <line x1="530" y1="118" x2="470" y2="128"/>
                <line x1="530" y1="178" x2="470" y2="152"/>
              </g>
              <g fill="#1f1f44" stroke-width="2">
                <rect x="20" y="34" width="210" height="48" rx="8" stroke="#8b5cf6"/>
                <rect x="20" y="94" width="210" height="48" rx="8" stroke="#3b82f6"/>
                <rect x="20" y="154" width="210" height="48" rx="8" stroke="#22d3ee"/>
                <rect x="530" y="34" width="210" height="48" rx="8" stroke="#10b981"/>
                <rect x="530" y="94" width="210" height="48" rx="8" stroke="#f59e0b"/>
                <rect x="530" y="154" width="210" height="48" rx="8" stroke="#ec4899"/>
              </g>
              <rect x="290" y="90" width="180" height="76" rx="10" fill="#27274e" stroke="#c4b5fd" stroke-width="2"/>
              <g text-anchor="middle">
                <text x="380" y="118" font-weight="700">Northbridge</text>
                <text x="380" y="137" font-weight="700">onboarding</text>
                <text x="380" y="155" font-size="11" fill="#9b99b8">(made up)</text>
                <text x="125" y="54" font-weight="700">Journey maps</text>
                <text x="125" y="114" font-weight="700">Schedules</text>
                <text x="125" y="174" font-weight="700">30-60-90 plans</text>
                <text x="635" y="54" font-weight="700">Welcome pack</text>
                <text x="635" y="114" font-weight="700">FAQ + chat helper</text>
                <text x="635" y="174" font-weight="700">Measurement plan</text>
                <g font-size="11" fill="#9b99b8">
                  <text x="125" y="72">3 roles</text>
                  <text x="125" y="132">day one and week one</text>
                  <text x="125" y="192">Daniel, Aisha, Grace</text>
                  <text x="635" y="72">8 pages, each checked</text>
                  <text x="635" y="132">30 approved answers</text>
                  <text x="635" y="192">4 measures, baselines</text>
                </g>
              </g>
              <text x="380" y="228" font-weight="700" fill="#c4b5fd" text-anchor="middle">Rollout</text>
              <line x1="40" y1="262" x2="720" y2="262" stroke="#9b99b8" stroke-width="2"/>
              <g stroke-width="2" fill="#1f1f44">
                <circle cx="80" cy="262" r="7" stroke="#10b981"/>
                <circle cx="230" cy="262" r="7" stroke="#3b82f6"/>
                <circle cx="380" cy="262" r="7" stroke="#ec4899"/>
                <circle cx="530" cy="262" r="7" stroke="#f59e0b"/>
                <circle cx="680" cy="262" r="7" stroke="#8b5cf6"/>
              </g>
              <g text-anchor="middle" font-size="12">
                <g font-weight="700" fill="#c4b5fd">
                  <text x="80" y="248">Mon 2 Nov 2026</text>
                  <text x="230" y="248">Mon 9 Nov 2026</text>
                  <text x="380" y="248">Tue 1 Dec 2026</text>
                  <text x="530" y="248">Mon 11 Jan 2027</text>
                  <text x="680" y="248">Mon 1 Feb 2027</text>
                </g>
                <text x="80" y="286">Manchester pilot</text>
                <text x="230" y="286">Aisha starts</text>
                <text x="380" y="286">Grace starts</text>
                <text x="530" y="286">Pilot review</text>
                <text x="680" y="286">London warehouse</text>
                <g fill="#9b99b8" font-size="11">
                  <text x="80" y="303">Daniel is first</text>
                  <text x="230" y="303">hybrid, London</text>
                  <text x="380" y="303">late shift, London</text>
                  <text x="530" y="303">Priya and Tom</text>
                  <text x="680" y="303">joins the new design</text>
                </g>
              </g>
            </g>
          </svg>
          <figcaption>The six parts of the programme, and the plan to test it at one site before it reaches the whole company.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The brief</h3>
          <p>Priya Shah, the HR manager, must present a new onboarding programme to Northbridge's leaders. Tom Reed, the HR adviser, helps her. The programme covers three groups: warehouse operatives, office staff and new managers. Here is the problem in numbers (all made up, from hires between July 2025 and June 2026):</p>
          <ul class="lc-list">
            <li>24 of 96 warehouse hires left within 90 days: an early leaver rate of 25.0%. The estimated cost is 24 × £3,200 = £76,800.</li>
            <li>Warehouse time to productivity is 7 weeks. The target is 4 weeks.</li>
            <li>In Apr to Jun 2026, 9 of 24 warehouse starters had no scanner or WMS login on day one. 6 of 24 got their written statement after day one.</li>
            <li>There is no buddy scheme and no written plan for new managers. London and Manchester run onboarding differently.</li>
          </ul>
          <p>Your task is to build the six parts of the programme, check them and plan how to measure them. Use only made-up data. Never paste real employee details into an AI tool.</p>
        </div>
        <div class="lc-card">
          <h3>The six parts and what "good" looks like</h3>
          <table class="lc-table">
            <thead><tr><th>Part</th><th>What it contains</th><th>Check before sign-off</th></tr></thead>
            <tbody>
              <tr><td>1. Journey maps</td><td>One map each for a warehouse operative, an office worker and a new manager: touchpoints, one owner each, feelings and gaps</td><td>Every gap comes from evidence. Two recent joiners have read each map.</td></tr>
              <tr><td>2. Schedules</td><td>Daniel's day one (08:00 to 14:00, with 165 of 360 minutes hands-on) and week one; Aisha's hybrid first week</td><td>Every person, room and time is real. There is no overload and there are breaks.</td></tr>
              <tr><td>3. 30-60-90 day plans</td><td>Goals and review dates for Daniel, Aisha and Grace. Daniel's pick-rate ramp: 60, 90, then 120 lines per hour.</td><td>Review dates fall on working days and skip bank holidays. Each manager has agreed the plan.</td></tr>
              <tr><td>4. Welcome pack</td><td>8 plain-English pages instead of the 60-page handbook</td><td>Each page shows its source policy, owner and "last checked" date.</td></tr>
              <tr><td>5. FAQ and chat helper</td><td>30 approved warehouse answers, and rules for an AI helper that hands sensitive questions to a person</td><td>The helper passes every test question before new joiners use it.</td></tr>
              <tr><td>6. Measurement plan</td><td>Four measures with definitions, baselines, targets and owners</td><td>Definitions match the baseline exactly.</td></tr>
            </tbody>
          </table>
          <p>Add two things that run through every part: a <strong>buddy</strong> for 4 weeks for every warehouse starter, and an <strong>access question</strong> for every new joiner before day one.</p>
        </div>
        <div class="lc-card">
          <h3>The measurement plan and sign-off</h3>
          <table class="lc-table">
            <thead><tr><th>Measure (warehouse)</th><th>Baseline</th><th>Target</th><th>When</th><th>Owner</th></tr></thead>
            <tbody>
              <tr><td>Early leaver rate</td><td>25.0% (24 of 96)</td><td>15.0%</td><td>Each quarter, once starters pass 90 days</td><td>Priya Shah</td></tr>
              <tr><td>Time to productivity</td><td>7 weeks</td><td>4 weeks</td><td>Monthly, from pick-rate records</td><td>Tom Reed with team leaders</td></tr>
              <tr><td>Ready on day one</td><td>62.5% (15 of 24)</td><td>100%</td><td>Every start, checked 3 working days before</td><td>Tom Reed</td></tr>
              <tr><td>"I know who to ask" (day 30)</td><td>37.5% (6 of 16)</td><td>80%</td><td>Day-30 survey</td><td>Priya Shah</td></tr>
            </tbody>
          </table>
          <p>For office staff (16 hires) and new managers (4 hires), the groups are small. Report counts, such as "1 of 4", and read the 90-day review notes. If the warehouse target is met and hiring stays the same, about 10 fewer people leave early. At an estimated £3,200 each, that is about £32,000 a year. Label this as an estimate.</p>
          <p>AI drafts, but people sign off. Before launch, Priya gets these checks:</p>
          <ul class="lc-list">
            <li><strong>Legal and paperwork</strong>: an HR adviser or employment lawyer checks the right-to-work steps, the written statement and any planned law changes. This course is not legal advice.</li>
            <li><strong>Policies</strong>: each policy owner signs off the welcome pack pages and FAQ answers.</li>
            <li><strong>Fairness and access</strong>: the same process for every joiner, materials in plain English and an agreed way to handle adjustments.</li>
            <li><strong>Privacy</strong>: surveys stay anonymous, health details stay in the HR system and only approved AI tools are used.</li>
            <li><strong>Managers and buddies</strong>: Kevin Doyle, Laura Bennett and Steve Harris agree their parts, and buddies get time for the role.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Working with AI on a big project</h3>
          <p>A big project needs more care with AI, not less. These habits keep the work accurate:</p>
          <ul class="lc-list">
            <li><strong>Keep one fact sheet.</strong> Write the names, dates, numbers and policies on one page. Paste it into every prompt, so each part uses the same facts.</li>
            <li><strong>One part at a time.</strong> Ask for one part per conversation. Long answers that cover everything are harder to check.</li>
            <li><strong>Ask for gaps, not guesses.</strong> Tell the AI to write [CHECK] or [OUR POLICY] when it does not know.</li>
            <li><strong>Check across parts.</strong> The start time in the welcome email must match the day-one schedule, the FAQ and the journey map.</li>
          </ul>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Create a full onboarding programme for a logistics company.</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Using ONLY the fact sheet below, draft part 6: the measurement plan.
        Table: measure | exact definition | baseline | target | when | owner.
        Use the baselines in the fact sheet. Do not change any number.
        Add 3 cautions about small groups and survey answers.
        Fact sheet: [paste your fact sheet, with no real personal data]</code></pre>
        </div>
        <div class="lc-card">
          <h3>Activity: build the programme in order</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put Priya's capstone steps in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Gather the evidence and set the baseline numbers.</li>
              <li data-order="2">Write a one-page fact sheet with names, dates, numbers and policies.</li>
              <li data-order="3">Draft the journey map for each role and find the gaps.</li>
              <li data-order="4">Draft the schedules, 30-60-90 plans, welcome pack and FAQ with AI, one at a time.</li>
              <li data-order="5">Check every part with its owner, an HR adviser and recent joiners.</li>
              <li data-order="6">Run the pilot in Manchester from Monday 2 November 2026.</li>
              <li data-order="7">Review the measures on Monday 11 January 2027 and improve before London starts.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to draft a one-page programme summary for leaders from a fact sheet. Then check every number and decide what to change.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an HR manager preparing a one-page onboarding programme summary for company leaders. Use simple English.

        Fact sheet (all made up):
        - Company: [Northbridge Logistics, 420 staff, warehouses in London and Manchester]
        - Problem: [96 warehouse hires last year, 24 left within 90 days. Time to productivity 7 weeks, target 4. 9 of 24 recent starters had no login on day one.]
        - Cost estimate: [£3,200 to replace one warehouse operative]
        - Plan: [journey maps for 3 roles, a hands-on day one, 30-60-90 plans, an 8-page welcome pack, 30 approved FAQ answers, a 4-week buddy for each warehouse starter]
        - Pilot: [Manchester from 2 November 2026, review 11 January 2027]
        - Targets: [early leaver rate 15.0%, ready on day one 100%]

        Write:
        1. The problem, with the early leaver rate calculated and shown.
        2. The six parts of the programme, one line each.
        3. A measurement table: measure | baseline | target | owner.
        4. The possible saving if the target is met, shown as an estimate with working.
        5. Three risks, and the decisions leaders must make.

        Use only the fact sheet. Write [CHECK] for anything missing.</pre>
            <ul class="ai-try-checks">
              <li>The early leaver rate is 25.0% (24 ÷ 96), shown with working.</li>
              <li>The saving: 15.0% of 96 is 14.4, about 14 leavers, so about 10 fewer × £3,200 = £32,000. (Without rounding, 9.6 × £3,200 = £30,720.) It is labelled as an estimate.</li>
              <li>It adds no facts that are not on the fact sheet.</li>
              <li>Leaders are asked to decide, for example about buddy time, not told it is done.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A strong onboarding programme is a set of small, checked parts built on one shared set of facts. Use AI to draft each part quickly. Then check it against the evidence and get each owner to sign off. Test it at one site first. Measure it with the same definitions you used for the baseline.
        </div>
      HTML
      starter_code: nil
    }
  }.freeze
end

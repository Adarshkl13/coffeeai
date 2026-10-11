module AiEmployeeExperienceContent
  # Units (sidebar dividers): 1–4 Employee Experience Basics · 5–9 Onboarding and Support · 10–14 Listening and Engagement · 15 Capstone
  # Widgets: sequence, sorter, stepper. No code editor: each Try It is an ai-try prompt box.
  LESSONS = {
    1 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-hr">HR & Recruitment</div>
          <h1 class="lc-title">What Employee Experience Is</h1>
        </div>
        <p class="lc-lead"><strong>Employee experience</strong> (EX) is everything a person sees, feels and does at work. It starts with the job offer and ends on the last day. In this lesson you will learn the stages of the employee journey and the "moments that matter" inside it. You will also learn one key number, the attrition rate, and see why good EX saves money and effort. You will follow Swift Mart, a made-up online grocery company in Seattle with about 600 staff.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="The Swift Mart employee journey has six stages: offer, pre-boarding, onboarding, everyday work, growth and exit. Each stage has one moment that matters. A line below shows how a new warehouse associate might feel: excited at the offer, unsure before day one, welcomed on day one, worried at the first salary, valued at the first review and respected at exit.">
            <defs><marker id="ex1a" markerWidth="8" markerHeight="8" refX="7" refY="4" orient="auto"><path d="M0,0 L8,4 L0,8 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12.5" fill="#e2e0f0" text-anchor="middle">
              <text x="16" y="26" text-anchor="start" font-size="13" font-weight="700">Swift Mart: one employee journey, from offer to exit</text>
              <text x="16" y="46" text-anchor="start" font-size="11.5" fill="#9b99b8">Boxes are stages. The small text is one moment that matters.</text>
              <rect x="16" y="62" width="104" height="40" rx="8" fill="#27274e" stroke="#8b5cf6"/><text x="68" y="87">Offer</text>
              <rect x="140" y="62" width="104" height="40" rx="8" fill="#27274e" stroke="#3b82f6"/><text x="192" y="87">Pre-boarding</text>
              <rect x="264" y="62" width="104" height="40" rx="8" fill="#27274e" stroke="#22d3ee"/><text x="316" y="87">Onboarding</text>
              <rect x="388" y="62" width="104" height="40" rx="8" fill="#27274e" stroke="#10b981"/><text x="440" y="87">Everyday work</text>
              <rect x="512" y="62" width="104" height="40" rx="8" fill="#27274e" stroke="#f59e0b"/><text x="564" y="87">Growth</text>
              <rect x="636" y="62" width="104" height="40" rx="8" fill="#27274e" stroke="#ec4899"/><text x="688" y="87">Exit</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ex1a)">
                <line x1="122" y1="82" x2="137" y2="82"/><line x1="246" y1="82" x2="261" y2="82"/><line x1="370" y1="82" x2="385" y2="82"/>
                <line x1="494" y1="82" x2="509" y2="82"/><line x1="618" y1="82" x2="633" y2="82"/>
              </g>
              <g font-size="11" fill="#c4b5fd">
                <text x="68" y="122">Offer call</text><text x="192" y="122">Welcome SMS</text><text x="316" y="122">Day 1</text>
                <text x="440" y="122">First salary</text><text x="564" y="122">First review</text><text x="688" y="122">Exit talk</text>
              </g>
              <line x1="16" y1="138" x2="740" y2="138" stroke="#4b4a78"/>
              <text x="16" y="160" text-anchor="start" font-size="12" fill="#9b99b8">How a new warehouse associate might feel (made-up)</text>
              <polyline points="68,200 192,238 316,206 440,246 564,196 688,218" fill="none" stroke="#8b5cf6" stroke-width="2"/>
              <g stroke="#1f1f44" stroke-width="1.5">
                <circle cx="68" cy="200" r="5" fill="#10b981"/><circle cx="192" cy="238" r="5" fill="#f59e0b"/><circle cx="316" cy="206" r="5" fill="#10b981"/>
                <circle cx="440" cy="246" r="5" fill="#ec4899"/><circle cx="564" cy="196" r="5" fill="#10b981"/><circle cx="688" cy="218" r="5" fill="#22d3ee"/>
              </g>
              <g font-size="11">
                <text x="68" y="188" fill="#6ee7b7">excited</text><text x="192" y="258" fill="#fcd34d">unsure</text><text x="316" y="194" fill="#6ee7b7">welcomed</text>
                <text x="440" y="266" fill="#f9a8d4">worried</text><text x="564" y="184" fill="#6ee7b7">valued</text><text x="688" y="238" fill="#67e8f9">respected</text>
              </g>
              <text x="380" y="290" font-size="11" fill="#9b99b8">Low points show where to act first: the silence before day 1, and the first salary.</text>
            </g>
          </svg>
          <figcaption>The employee journey has stages, and each stage has moments that matter. The feeling line is made up, but it shows the idea: fix the low points first.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>What employee experience means</h3>
          <p>Employee experience is shaped by three things:</p>
          <ul class="lc-list">
            <li><strong>People:</strong> the manager, the team, HR and how they treat you.</li>
            <li><strong>Place and tools:</strong> the warehouse or office, the apps, the canteen, the transport home.</li>
            <li><strong>Processes:</strong> joining paperwork, the shift roster, leave requests, payroll and reviews.</li>
          </ul>
          <p><strong>Engagement</strong> is how committed and involved people feel at work. It is a result. Employee experience is the set of things that shape that result. You cannot order people to feel engaged. You can improve what they meet every day.</p>
          <p>At Swift Mart, <strong>Lakshmi</strong> is the HR business partner (the HR person who works closely with managers) who leads employee experience. Swift Mart has two very different groups:</p>
          <table class="lc-table">
            <thead><tr><th>Stage</th><th>Ramesh: warehouse associate (about 450 shift staff)</th><th>Sana: office analyst (about 150 office staff)</th></tr></thead>
            <tbody>
              <tr><td><strong>Offer</strong></td><td>Phone call in Telugu, then an SMS</td><td>Email with an offer letter, then a call</td></tr>
              <tr><td><strong>Pre-boarding</strong></td><td>Needs shift time, gate address, what to bring</td><td>Needs laptop, email and a first-week plan</td></tr>
              <tr><td><strong>Onboarding</strong></td><td>Safety training, scanner training, a buddy on his shift</td><td>Meet teams, get data access, a first small task</td></tr>
              <tr><td><strong>Everyday work</strong></td><td>Roster, overtime, night transport, payslip on a phone</td><td>Meetings, deadlines, tools, hybrid days</td></tr>
              <tr><td><strong>Growth</strong></td><td>Path to shift lead, forklift licence</td><td>New skills, bigger projects, promotion</td></tr>
              <tr><td><strong>Exit</strong></td><td>Handover of ID, locker and scanner; final pay</td><td>Knowledge handover; final pay</td></tr>
            </tbody>
          </table>
          <p>Ramesh and Sana both join on <strong>Monday 5 October 2026</strong>. Their journeys are very different. One plan for "all employees" will fail one of them.</p>
        </div>
        <div class="lc-card">
          <h3>Moments that matter</h3>
          <p>A <strong>moment that matters</strong> is a short event that shapes how a person feels about the company for a long time. If it goes well, people remember it. If it goes badly, they remember it more.</p>
          <ul class="lc-list">
            <li><strong>Before day 1:</strong> Does anyone reply when Ramesh asks what to bring?</li>
            <li><strong>Day 1:</strong> Is Sana's laptop ready? Does someone meet Ramesh at the gate?</li>
            <li><strong>First salary:</strong> Is it on time? Can Ramesh read his payslip?</li>
            <li><strong>Life events:</strong> A wedding, an illness, a new baby, a death in the family.</li>
            <li><strong>Career moments:</strong> A first review, a promotion, or not getting one.</li>
            <li><strong>Exit:</strong> Is the person thanked and paid correctly and on time?</li>
          </ul>
          <p>To find moments that matter, ask one question for each event: "What happens to this person if we get this wrong?" If the answer is "they may leave" or "they lose trust", it matters.</p>
        </div>
        <div class="lc-card">
          <h3>Why it matters: a worked example with attrition</h3>
          <p><strong>Attrition rate</strong> is the share of people who left in a period. The usual formula is: people who left ÷ average headcount × 100. <strong>Average headcount</strong> is (headcount at the start + headcount at the end) ÷ 2. All numbers here are made up.</p>
          <table class="lc-table">
            <thead><tr><th>Swift Mart, September 2026</th><th>Start</th><th>End</th><th>Left</th><th>Average</th><th>Attrition</th></tr></thead>
            <tbody>
              <tr><td>Warehouse and delivery</td><td>440</td><td>460</td><td>27</td><td>450</td><td>27 ÷ 450 × 100 = <strong>6.0%</strong></td></tr>
              <tr><td>Office</td><td>148</td><td>152</td><td>3</td><td>150</td><td>3 ÷ 150 × 100 = <strong>2.0%</strong></td></tr>
            </tbody>
          </table>
          <p>Lakshmi also checks <strong>early attrition</strong>: people who left within 90 days of joining. In the warehouse, 12 of the 27 leavers were new. That is 12 ÷ 27 × 100 = <strong>44.4%</strong> of all warehouse leavers.</p>
          <p>In a spreadsheet, put Start in B2, End in C2 and Left in D2. Then type this in E2 and format it as a percentage:</p>
          <pre><code>=D2/((B2+C2)/2)</code></pre>
          <p><strong>What Lakshmi learns:</strong> many people leave early, so pre-boarding, day 1 and the first salary need attention. The numbers show <em>where</em> to look. They do not show <em>why</em>. For that, she must talk to recent joiners and read exit notes. Companies define attrition in slightly different ways. Write down your definition and use it every time.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: Ramesh's journey in order</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put the moments of Ramesh's journey at Swift Mart in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Ramesh accepts the job offer on a phone call</li>
              <li data-order="2">He gets an SMS with his joining date, shift time, gate address and a contact name</li>
              <li data-order="3">On day 1 he has a safety induction and meets his shift buddy</li>
              <li data-order="4">His first salary arrives on time, with a payslip he can read</li>
              <li data-order="5">His shift lead holds his 90-day review</li>
              <li data-order="6">He is promoted to shift lead after a year</li>
              <li data-order="7">Years later, he has an exit talk and gets his final pay on time</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to list the moments that matter for two different employee groups. Then decide which three you would fix first.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an employee experience adviser for Indian companies.

        Company: [Swift Mart, an online grocery app in Seattle with about 600 staff].
        Group 1: [warehouse and delivery staff on rotating day and night shifts, about 450 people, most use only a phone at work].
        Group 2: [office staff such as analysts and marketers, about 150 people, with laptops and email].
        Our main worry: [many new warehouse staff leave in the first 90 days].

        1. List the stages of the employee journey from offer to exit, one line each.
        2. For each group, give 8 moments that matter. Use a table with columns: Group, Stage, Moment, Why it matters to this group, What goes wrong if we ignore it, One simple fix.
        3. Show where the two groups need different fixes.
        4. Pick the top 3 moments to fix first for our main worry. Give a reason for each.
        5. Suggest 3 simple ways to check these moments with real employees, not guesses.

        Use simple English. Do not invent statistics. Do not give legal advice. Mark any guess as "to check".</pre>
            <ul class="ai-try-checks">
              <li>The moments are different for shift staff and office staff (phones, shifts, transport, language).</li>
              <li>No made-up statistics or "studies show" claims.</li>
              <li>The fixes are small and realistic for your budget and team.</li>
              <li>The top 3 fit your main worry, and guesses are marked "to check".</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Employee experience covers the whole journey, from offer to exit. Different groups have different journeys. Find the moments that matter for each group, and fix the lowest points first.
        </div>
      HTML
      starter_code: nil
    },
    2 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-hr">HR & Recruitment</div>
          <h1 class="lc-title">Where AI Helps HR Teams</h1>
        </div>
        <p class="lc-lead">AI assistants such as Claude can save an HR team many hours each week. They are good at drafting messages, answering common questions, summarising feedback and planning. But HR work is about people, their pay, their health and their careers. In this lesson you will learn which HR tasks AI does well, which need careful checks, and which only people should do. You will also learn simple rules to protect employee privacy and trust.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="A four-step flow: you give the task with made-up or no names, AI drafts, you check facts, tone and fairness, and a person decides. Below, three groups of tasks: good jobs for AI, tasks to use with care, and tasks for people only.">
            <defs><marker id="ex2a" markerWidth="8" markerHeight="8" refX="7" refY="4" orient="auto"><path d="M0,0 L8,4 L0,8 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12.5" fill="#e2e0f0" text-anchor="middle">
              <text x="16" y="24" text-anchor="start" font-size="13" font-weight="700">How an HR team works with AI</text>
              <rect x="10" y="40" width="165" height="56" rx="8" fill="#27274e" stroke="#8b5cf6"/>
              <text x="92" y="64" font-weight="700">1. You give the task</text><text x="92" y="83" font-size="11" fill="#9b99b8">made-up or no names</text>
              <rect x="200" y="40" width="165" height="56" rx="8" fill="#27274e" stroke="#3b82f6"/>
              <text x="282" y="64" font-weight="700">2. AI drafts</text><text x="282" y="83" font-size="11" fill="#9b99b8">text, tables, ideas</text>
              <rect x="390" y="40" width="165" height="56" rx="8" fill="#27274e" stroke="#f59e0b"/>
              <text x="472" y="64" font-weight="700">3. You check</text><text x="472" y="83" font-size="11" fill="#9b99b8">facts, tone, fairness</text>
              <rect x="580" y="40" width="165" height="56" rx="8" fill="#27274e" stroke="#10b981"/>
              <text x="662" y="64" font-weight="700">4. A person decides</text><text x="662" y="83" font-size="11" fill="#9b99b8">and owns the result</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ex2a)">
                <line x1="177" y1="68" x2="197" y2="68"/><line x1="367" y1="68" x2="387" y2="68"/><line x1="557" y1="68" x2="577" y2="68"/>
              </g>
              <text x="16" y="122" text-anchor="start" font-size="12" fill="#9b99b8">Which tasks fit where?</text>
              <rect x="10" y="134" width="236" height="130" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <rect x="262" y="134" width="236" height="130" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <rect x="514" y="134" width="236" height="130" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="128" y="158" font-weight="700" fill="#6ee7b7">Good jobs for AI</text>
              <text x="380" y="158" font-weight="700" fill="#fcd34d">Use with care</text>
              <text x="632" y="158" font-weight="700" fill="#f9a8d4">People only</text>
              <g font-size="11.5">
                <text x="128" y="184">Draft notices and FAQs</text><text x="128" y="206">Summarise anonymous comments</text>
                <text x="128" y="228">Plan onboarding checklists</text><text x="128" y="250">Brainstorm welcome ideas</text>
                <text x="380" y="184">Answer policy questions</text><text x="380" y="206">Translate announcements</text>
                <text x="380" y="228">Group feedback into themes</text><text x="380" y="250">Draft manager talking points</text>
                <text x="632" y="184">Hire, promote or fire</text><text x="632" y="206">Pay and discipline decisions</text>
                <text x="632" y="228">POSH and health cases</text><text x="632" y="250">Performance ratings</text>
              </g>
              <text x="380" y="288" font-size="12" fill="#c4b5fd">AI drafts and flags. People check and decide.</text>
            </g>
          </svg>
          <figcaption>AI is a fast helper for drafts and first sorting. A person checks every output, and people make every decision about people.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Five jobs AI does well in HR</h3>
          <table class="lc-table">
            <thead><tr><th>Job</th><th>Example at Swift Mart</th><th>What a person still checks</th></tr></thead>
            <tbody>
              <tr><td><strong>Drafting</strong></td><td>A notice about free cabs after late shifts</td><td>Dates, times and rules match the approved policy</td></tr>
              <tr><td><strong>Answering common questions</strong></td><td>An FAQ on leave, built from the HR handbook</td><td>Every answer matches the handbook. Hard cases go to a person.</td></tr>
              <tr><td><strong>Summarising feedback</strong></td><td>Themes from 300 anonymous survey comments</td><td>Themes match the real comments. No one can be identified.</td></tr>
              <tr><td><strong>Planning</strong></td><td>A first-week plan for 30 new warehouse associates</td><td>The plan fits real shifts, trainers and rooms</td></tr>
              <tr><td><strong>Simplifying and translating</strong></td><td>A Telugu and Hindi version of a policy update</td><td>A fluent speaker reads it. Numbers and dates are correct.</td></tr>
            </tbody>
          </table>
          <p>Many HR tools, such as Zoho People, Keka, greytHR, Darwinbox and Workday, now include AI features. Features change often. Check each tool's current help pages before you rely on one.</p>
        </div>
        <div class="lc-card">
          <h3>What AI must not do</h3>
          <ul class="lc-list">
            <li><strong>Make decisions about people.</strong> Hiring, promotion, pay, ratings, discipline and firing are decided by people. AI may help you prepare. It does not choose.</li>
            <li><strong>Read feelings, honesty or personality from video or voice.</strong> Some tools claim to do this. These claims are not reliable science. Do not use such tools to judge employees.</li>
            <li><strong>Give legal or medical advice.</strong> A question about a health condition or a legal right goes to a qualified person.</li>
            <li><strong>Be trusted without checks.</strong> AI can state wrong facts in a confident voice. For example, it may invent a leave rule that is not in your policy.</li>
          </ul>
          <p>Laws also matter. In India, the Digital Personal Data Protection (DPDP) Act 2023 and the DPDP Rules 2025 cover the personal data of employees and candidates. The DPDP Rules start in phases, and many duties apply from 2027. In the EU, the AI Act treats AI used in hiring and managing workers as high-risk. This is general information, not legal advice. Check with your HR legal counsel before you use AI with employee data.</p>
        </div>
        <div class="lc-card">
          <h3>Privacy and trust: a weak prompt and a better prompt</h3>
          <p>Lakshmi needs to reply to a complaint about a supervisor. Here is a weak prompt. The details are made up, but real ones often look like this.</p>
          <pre><code>Write a reply to this complaint. Suresh Rao, employee ID SM-0412,
        phone 98xxx xxxxx, says his supervisor Mahesh shouts at him on night
        shift and cut his overtime. He also has a back problem.</code></pre>
          <p>This prompt pastes a name, an ID, a phone number and health details into an AI tool. It also asks AI to handle a sensitive case. Here is a better prompt. It asks only for a template, with no personal data:</p>
          <pre><code>I am an HR business partner at a warehouse company in India.
        Write a short, neutral template to acknowledge an employee complaint
        about a supervisor's behaviour. No names or details.
        Include: thanks for raising it, what happens next, a timeline
        placeholder [X working days], how we keep it confidential, and
        who to contact. Do not judge the complaint. Simple English, under 120 words.</code></pre>
          <p>Follow these rules every time:</p>
          <ul class="lc-list">
            <li>Remove names, employee IDs, phone numbers, addresses, salaries and health details.</li>
            <li>Use only AI tools your company has approved for work data.</li>
            <li>Remember that small groups can reveal people. "The only woman on night shift" is not anonymous.</li>
            <li>Tell employees when they are talking to an AI, for example in an HR chatbot.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Activity: who does this task?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each Swift Mart HR task into the right group.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="draft" data-label="AI can draft"></div>
              <div data-sorter-target="bucket" data-bucket="care" data-label="AI with careful checks"></div>
              <div data-sorter-target="bucket" data-bucket="people" data-label="People only"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="draft" data-why="A low-risk draft. Lakshmi checks the dates and tone before sending.">Write a first draft of the Diwali holiday announcement</li>
              <li data-bucket="people" data-why="This is a decision about people's careers. The managers and HR decide, using fair criteria.">Choose which of two warehouse associates becomes shift lead</li>
              <li data-bucket="care" data-why="AI translation can change meaning. A fluent Telugu speaker must check it, especially numbers and times.">Translate the night transport policy into Telugu</li>
              <li data-bucket="people" data-why="Sexual harassment complaints go to the Internal Committee under the POSH Act. They are never handled by AI.">Decide the outcome of a sexual harassment complaint</li>
              <li data-bucket="draft" data-why="Brainstorming is a safe use. People choose which ideas to use.">List ideas for a welcome kit for new joiners</li>
              <li data-bucket="care" data-why="AI can group comments fast, but it can miss or invent themes. A person reads a sample to check.">Group 300 anonymous survey comments into themes</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to draft a one-page guide on how your HR team should use AI. Then change it to fit your company's real rules.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an HR operations adviser for companies in India.

        Company: [Swift Mart, an online grocery app in Seattle with about 600 staff, mostly warehouse and delivery staff on shifts].
        HR team: [4 people]. Tools: [a company-approved AI assistant] and [Keka as our HR system].

        Write a one-page guide called "How our HR team uses AI". Include:
        1. A table of 10 common HR tasks with columns: Task, AI role (Draft / Draft with careful checks / Not allowed), Who checks, What to check.
        2. A list of data we must never paste into AI tools.
        3. How to remove personal details, with one before-and-after example using made-up details.
        4. What we tell employees about our AI use.
        5. Three red lines, for example: AI never decides hiring, pay or discipline.

        This is general guidance, not legal advice. Where a point depends on law, such as India's DPDP Act, write "check with legal counsel" and do not state the rule.
        Use simple English. Keep it under 500 words.</pre>
            <ul class="ai-try-checks">
              <li>People make every decision on hiring, pay, ratings and discipline.</li>
              <li>The before-and-after example uses only made-up details.</li>
              <li>Legal points are marked for legal counsel, not stated as final rules.</li>
              <li>The task list fits your team's real work and approved tools.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> AI drafts, sorts and suggests. People check the facts and make every decision about people. Protect employee data before you type a single prompt.
        </div>
      HTML
      starter_code: nil
    },
    3 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-hr">HR & Recruitment</div>
          <h1 class="lc-title">Mapping the Employee Journey</h1>
        </div>
        <p class="lc-lead">A <strong>journey map</strong> is a simple table or picture of one employee group's path through the company. It shows each stage, what the employee meets there, what goes wrong and how they feel. In this lesson you will learn the parts of a journey map and how to build one with AI from real employee input. You will also learn how to check the map, because AI can easily invent problems that your employees never had.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 266" role="img" aria-label="A journey map for a new Swift Mart warehouse associate. Five stages: offer, pre-boarding, day 1, weeks 1 to 4 and first salary. For each stage the map shows touchpoints, pain points and a feeling line that goes from hopeful to unsure, tired, stressed and confused.">
            <g font-family="inherit" font-size="11" fill="#e2e0f0" text-anchor="middle">
              <g font-size="12" fill="#9b99b8" text-anchor="start">
                <text x="14" y="32">Stage</text><text x="14" y="85">Touchpoints</text><text x="14" y="145">Pain points</text><text x="14" y="214">Feeling</text>
              </g>
              <g fill="#27274e" stroke="#8b5cf6">
                <rect x="128" y="10" width="118" height="34" rx="8"/><rect x="252" y="10" width="118" height="34" rx="8"/><rect x="376" y="10" width="118" height="34" rx="8"/>
                <rect x="500" y="10" width="118" height="34" rx="8"/><rect x="624" y="10" width="118" height="34" rx="8"/>
              </g>
              <g font-size="12.5" font-weight="700">
                <text x="187" y="32">Offer</text><text x="311" y="32">Pre-boarding</text><text x="435" y="32">Day 1</text><text x="559" y="32">Weeks 1 to 4</text><text x="683" y="32">First salary</text>
              </g>
              <g fill="#1f1f44" stroke="#3b82f6">
                <rect x="128" y="54" width="118" height="52" rx="8"/><rect x="252" y="54" width="118" height="52" rx="8"/><rect x="376" y="54" width="118" height="52" rx="8"/>
                <rect x="500" y="54" width="118" height="52" rx="8"/><rect x="624" y="54" width="118" height="52" rx="8"/>
              </g>
              <text x="187" y="76">Phone call,</text><text x="187" y="94">then an SMS</text>
              <text x="311" y="76">Document list</text><text x="311" y="94">on WhatsApp</text>
              <text x="435" y="76">Safety talk,</text><text x="435" y="94">meet buddy</text>
              <text x="559" y="76">Scanner training,</text><text x="559" y="94">shift roster</text>
              <text x="683" y="76">Payslip in app,</text><text x="683" y="94">bank credit</text>
              <g fill="#1f1f44" stroke="#ec4899">
                <rect x="128" y="114" width="118" height="52" rx="8"/><rect x="252" y="114" width="118" height="52" rx="8"/><rect x="376" y="114" width="118" height="52" rx="8"/>
                <rect x="500" y="114" width="118" height="52" rx="8"/><rect x="624" y="114" width="118" height="52" rx="8"/>
              </g>
              <g fill="#f9a8d4">
                <text x="187" y="136">Pay break-up</text><text x="187" y="154">not explained</text>
                <text x="311" y="136">Questions get</text><text x="311" y="154">no reply</text>
                <text x="435" y="136">2-hour wait for</text><text x="435" y="154">ID and locker</text>
                <text x="559" y="136">Roster changes</text><text x="559" y="154">at short notice</text>
                <text x="683" y="136">Payslip terms</text><text x="683" y="154">hard to read</text>
              </g>
              <rect x="128" y="176" width="614" height="80" rx="8" fill="#1f1f44" stroke="#4b4a78"/>
              <polyline points="187,196 311,226 435,214 559,236 683,224" fill="none" stroke="#f59e0b" stroke-width="2"/>
              <g stroke="#1f1f44" stroke-width="1.5" fill="#f59e0b">
                <circle cx="187" cy="196" r="4.5"/><circle cx="311" cy="226" r="4.5"/><circle cx="435" cy="214" r="4.5"/><circle cx="559" cy="236" r="4.5"/><circle cx="683" cy="224" r="4.5"/>
              </g>
              <g fill="#fcd34d">
                <text x="187" y="186">hopeful</text><text x="311" y="216">unsure</text><text x="435" y="204">tired</text><text x="559" y="226">stressed</text><text x="683" y="214">confused</text>
              </g>
            </g>
          </svg>
          <figcaption>A journey map for new Swift Mart warehouse associates (made-up). Each column is a stage. The rows show touchpoints, pain points and feelings.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The parts of a journey map</h3>
          <table class="lc-table">
            <thead><tr><th>Part</th><th>What it means</th><th>Example for a warehouse associate</th></tr></thead>
            <tbody>
              <tr><td><strong>Stage</strong></td><td>A period of the journey</td><td>Pre-boarding (the days between accepting the offer and day 1)</td></tr>
              <tr><td><strong>Touchpoint</strong></td><td>Any place where the employee meets the company: a person, a message, an app or a form</td><td>The SMS with the joining date</td></tr>
              <tr><td><strong>Pain point</strong></td><td>Something that causes trouble, delay or worry</td><td>Nobody answers questions before day 1</td></tr>
              <tr><td><strong>Feeling</strong></td><td>How the person probably feels at that stage</td><td>Unsure, and thinking about another job offer</td></tr>
              <tr><td><strong>Owner</strong></td><td>The person or team who can fix the pain point</td><td>HR operations, the warehouse manager, payroll</td></tr>
            </tbody>
          </table>
          <p>Make one map for each <strong>persona</strong> (a short made-up profile of a typical person in one group). Swift Mart needs at least two maps: a warehouse associate like Ramesh and an office analyst like Sana. A map of the "average employee" hides the real problems of both.</p>
        </div>
        <div class="lc-card">
          <h3>Build a map with AI in four steps</h3>
          <ol class="lc-list">
            <li><strong>Collect real input.</strong> Talk to 5 to 8 recent joiners for 10 minutes each. Add exit notes and survey comments. Remove names and details that identify people.</li>
            <li><strong>Ask AI for a first draft</strong> from your notes, in a table.</li>
            <li><strong>Check the draft</strong> against your notes. Then show it to a few employees and ask, "Is this true for you? What is missing?"</li>
            <li><strong>Choose the top 3 pain points.</strong> Give each one an owner and a date.</li>
          </ol>
          <p>A weak prompt gives AI nothing real to work with:</p>
          <pre><code>Make an employee journey map for a warehouse worker.</code></pre>
          <p>AI will write a general map from its training. It may list problems that your staff do not have. A better prompt gives context, real notes and clear rules:</p>
          <pre><code>I am an HR partner at an online grocery company in Seattle.
        Build a journey map for new warehouse associates on rotating shifts,
        from offer to their first salary. Use only these anonymised notes
        from 6 talks with recent joiners: [paste notes].
        Table columns: Stage, Touchpoint, Pain point, Feeling, Idea to fix.
        Do not add pain points that are not in my notes. If you think
        something is missing, list it separately under "To check".</code></pre>
        </div>
        <div class="lc-card">
          <h3>Worked example: from map to action</h3>
          <p>Lakshmi's notes came from six talks with new warehouse associates. She turned the map into this action table. The details are made up.</p>
          <table class="lc-table">
            <thead><tr><th>Stage</th><th>Pain point (from notes)</th><th>Idea to fix</th><th>Owner</th></tr></thead>
            <tbody>
              <tr><td>Pre-boarding</td><td>Document list only in English. Questions got no reply.</td><td>Send the list in Telugu, Hindi and English, with a named contact and hours</td><td>HR operations</td></tr>
              <tr><td>Day 1</td><td>Waited 2 hours for an ID card and locker</td><td>Prepare the ID card and locker the day before</td><td>Admin team</td></tr>
              <tr><td>Weeks 1 to 4</td><td>Shift roster changed by phone at short notice</td><td>Publish the roster in the app one week ahead</td><td>Warehouse manager</td></tr>
              <tr><td>First salary</td><td>Payslip words were hard to understand</td><td>A one-page payslip guide in three languages, plus a 10-minute talk</td><td>Payroll</td></tr>
            </tbody>
          </table>
          <p>A <strong>payslip guide</strong> explains terms such as gross pay (pay before deductions), net pay (the amount paid into the bank) and each deduction. Payroll must check it before it goes out.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: Lakshmi builds a journey map</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Lakshmi's prompt">"Build a journey map for new warehouse associates from these anonymised notes from 6 talks. Table: Stage, Touchpoint, Pain point, Feeling, Idea to fix. Use only my notes."</li>
              <li data-kind="answer" data-label="AI draft">A table with 5 stages and 9 pain points, from the offer call to the first salary.</li>
              <li data-kind="warn" data-label="Invented pain point">One pain point says "slow laptop setup on day 1". Warehouse associates do not get laptops. It is not in the notes.</li>
              <li data-kind="check" data-label="Compare with notes">Lakshmi checks each pain point against her notes. She removes two invented ones and marks one as "to check".</li>
              <li data-kind="tool" data-label="Google Sheets">She pastes the table into a sheet and adds two columns: Owner and Target date.</li>
              <li data-kind="check" data-label="Ask employees">During a shift break, four associates read the map. They add one missing pain point: nobody told them where to eat on the night shift.</li>
              <li data-kind="result" data-label="Action plan">Lakshmi and the warehouse manager agree the top 3 fixes, each with an owner and a date.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to turn anonymised notes into a journey map and an action table. The sample notes are made up. Replace them with your own notes, without names.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an employee experience adviser. Help me build a journey map.

        Company: [Swift Mart, an online grocery app in Seattle].
        Employee group: [new warehouse associates on rotating day and night shifts].
        Journey: [from the job offer to the first salary].

        Anonymised notes from talks with recent joiners (made-up):
        [- Offer call was clear, but nobody explained the pay break-up.
        - Before day 1, asked twice on WhatsApp what to bring. No reply.
        - Day 1: waited about 2 hours for an ID card and locker.
        - Buddy was helpful but was moved to another shift in week 2.
        - Roster changed by phone call the night before, twice.
        - Payslip had words I did not understand.]

        1. Make a journey map table with columns: Stage, Touchpoint, Pain point, Feeling, Idea to fix, Suggested owner.
        2. Use only pain points from my notes. List anything you think is missing under "To check with employees".
        3. Rank the top 3 pain points to fix first, with a short reason.
        4. Write 4 simple questions I can ask employees to check the map.

        Use simple English.</pre>
            <ul class="ai-try-checks">
              <li>Every pain point in the table comes from the notes.</li>
              <li>Extra ideas are listed separately under "To check with employees".</li>
              <li>The fixes suit shift staff who mostly use phones, not laptops.</li>
              <li>The owners make sense for your company.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A journey map is only as good as its input. AI turns your notes into a clear map in minutes. Real employees must confirm it, and each pain point needs an owner and a date.
        </div>
      HTML
      starter_code: nil
    },
    4 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-hr">HR & Recruitment</div>
          <h1 class="lc-title">Writing Clear HR Communications</h1>
        </div>
        <p class="lc-lead">Policy updates, holiday notices and announcements reach every employee. If a message is unclear, people miss deadlines, ask the same question fifty times or lose trust. In this lesson you will learn a simple structure for HR messages. You will also choose the right tone and channel, and use AI to write short, clear versions and translations. You will also learn what a person must check before anything is sent.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 250" role="img" aria-label="Before and after. The before message is full of jargon, has no date and does not say how to book. The after message answers five questions: what, who, when, what to do and who to ask.">
            <defs><marker id="ex4a" markerWidth="8" markerHeight="8" refX="7" refY="4" orient="auto"><path d="M0,0 L8,4 L0,8 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="11.5" fill="#e2e0f0">
              <rect x="10" y="30" width="310" height="200" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="26" y="54" font-size="13" font-weight="700" fill="#f9a8d4">Before: hard to read</text>
              <text x="26" y="84">Pursuant to the revised transport</text>
              <text x="26" y="106">framework, eligible personnel</text>
              <text x="26" y="128">rostered beyond 22:00 hrs shall</text>
              <text x="26" y="150">avail company-provided conveyance,</text>
              <text x="26" y="172">subject to prior requisition as per</text>
              <text x="26" y="194">the SOP, with immediate effect.</text>
              <text x="26" y="218" font-size="11" fill="#9b99b8">No date. Who is eligible? How to book?</text>
              <line x1="326" y1="130" x2="394" y2="130" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ex4a)"/>
              <text x="360" y="118" font-size="10.5" fill="#9b99b8" text-anchor="middle">rewrite</text>
              <text x="360" y="150" font-size="10.5" fill="#9b99b8" text-anchor="middle">and check</text>
              <rect x="400" y="30" width="350" height="200" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="416" y="54" font-size="13" font-weight="700" fill="#6ee7b7">After: clear</text>
              <g font-weight="700">
                <text x="416" y="84" fill="#c4b5fd">What</text><text x="416" y="112" fill="#93c5fd">Who</text><text x="416" y="140" fill="#67e8f9">When</text>
                <text x="416" y="168" fill="#fcd34d">Do</text><text x="416" y="196" fill="#f9a8d4">Ask</text>
              </g>
              <text x="470" y="84">Free cab home after late shifts</text>
              <text x="470" y="112">Staff whose shift ends after 10 pm</text>
              <text x="470" y="140">From Monday 2 November 2026</text>
              <text x="470" y="168">Book in the app before 6 pm</text>
              <text x="470" y="196">Your shift lead or the HR desk</text>
              <text x="416" y="220" font-size="11" fill="#9b99b8">Answers the five questions every message needs</text>
            </g>
          </svg>
          <figcaption>The same made-up Swift Mart policy, written two ways. The clear version answers five questions in five short lines.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Five questions every HR message must answer</h3>
          <ol class="lc-list">
            <li><strong>What</strong> is new or changing?</li>
            <li><strong>Who</strong> does it affect? Who does it not affect?</li>
            <li><strong>When</strong> does it start? Give the date with the day name, like "Monday 2 November 2026".</li>
            <li><strong>What must I do</strong>, and by when?</li>
            <li><strong>Who can I ask</strong>? Give a name or desk, a number and the hours.</li>
          </ol>
          <p>Use plain language: short sentences, one idea per sentence, everyday words and the active voice. Explain every HR term. Put the most important line first.</p>
          <p>Choose the channel that each group actually reads:</p>
          <table class="lc-table">
            <thead><tr><th>Channel</th><th>Best for</th><th>Swift Mart example</th></tr></thead>
            <tbody>
              <tr><td><strong>WhatsApp or SMS broadcast</strong></td><td>Short, urgent notes to shift staff</td><td>A 5-line cab update for warehouse staff</td></tr>
              <tr><td><strong>Shift huddle</strong> (a short team talk at the start of a shift)</td><td>Staff who do not read long text</td><td>The shift lead reads a 60-second script</td></tr>
              <tr><td><strong>Notice board</strong></td><td>Rules people check again later</td><td>A poster near the warehouse gate</td></tr>
              <tr><td><strong>Email</strong></td><td>Longer detail for office staff</td><td>The full policy with FAQs</td></tr>
              <tr><td><strong>HR app notification</strong></td><td>Anything linked to an action</td><td>"Book your cab" with a link</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Weak prompt, better prompt</h3>
          <p>Lakshmi must announce the new night transport rule. A weak prompt:</p>
          <pre><code>Write an announcement about our new cab policy.</code></pre>
          <p>AI does not know the rule, the readers or the channel. It will guess, and it may invent details such as a cost or a distance limit. A better prompt gives the approved facts and asks for each version:</p>
          <pre><code>You are an HR communications writer. Use ONLY these approved facts:
        - Free cab home for staff whose shift ends after 10 pm.
        - Starts Monday 2 November 2026.
        - Book in the Swift Mart app before 6 pm on the day of the shift.
        - Questions: your shift lead, or the HR desk (ext. 204, 9 am to 6 pm, Mon to Sat).
        Readers: warehouse and delivery staff, most read on a phone.
        Write: (1) a WhatsApp message under 60 words, (2) a 60-second
        script for the shift lead to read aloud. Warm, calm tone.
        Simple English. Do not add any fact that is not in my list.</code></pre>
          <p><strong>Tone:</strong> match the tone to the news. A policy change needs a calm, neutral tone. Bad news, like a cut in overtime, needs honesty and a clear reason. A festival greeting or a milestone can be warm and happy. Ask AI for the tone you want, then read the draft aloud to hear it.</p>
        </div>
        <div class="lc-card">
          <h3>Translations and final checks</h3>
          <p>Many Swift Mart warehouse staff prefer Telugu, Hindi or Urdu. AI can draft translations fast. But translation can change meaning, especially for numbers, times and policy words. A fluent speaker at work must read every translation before it is sent. Keep a small <strong>glossary</strong> (a list of approved words for terms like "shift", "overtime" and "net pay") so every message uses the same words.</p>
          <p>Before you send any HR message, check:</p>
          <ul class="lc-list">
            <li>Every fact matches the approved policy. AI did not add a new promise.</li>
            <li>Dates, days and times are correct. Check each date's day name in a calendar.</li>
            <li>The message says who is <em>not</em> affected, if people may be confused.</li>
            <li>Legal changes are confirmed by HR legal counsel. For example, India's four Labour Codes came into force on 21 November 2025, and many companies are updating their policies. AI can help explain an approved change simply. It must not decide what the law says.</li>
          </ul>
          <p>This lesson is general guidance, not legal advice.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: clear or needs rewriting?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each line from a Swift Mart HR message.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="clear" data-label="Clear"></div>
              <div data-sorter-target="bucket" data-bucket="rewrite" data-label="Needs rewriting"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="clear" data-why="It has a date with the day name, a time and a place.">From Monday 2 November 2026, your cab will leave the warehouse gate at 10:30 pm.</li>
              <li data-bucket="rewrite" data-why="&quot;Do the needful&quot; and &quot;aforesaid&quot; do not say what to do. Say the action and the deadline.">Employees are requested to kindly do the needful regarding the aforesaid.</li>
              <li data-bucket="clear" data-why="It says the action, where to do it and the deadline.">Book your cab in the Swift Mart app before 6 pm on the day of your shift.</li>
              <li data-bucket="rewrite" data-why="&quot;Shortly&quot; is not a date. People cannot plan without one.">The policy will be effective shortly as per management discretion.</li>
              <li data-bucket="clear" data-why="It gives a contact, a number and the hours.">Questions? Call the HR desk on extension 204, 9 am to 6 pm, Monday to Saturday.</li>
              <li data-bucket="rewrite" data-why="Who is eligible? Which SOP? &quot;With immediate effect&quot; gives no date. SOP (standard operating procedure) is jargon.">All eligible personnel must comply with the revised SOP with immediate effect.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Paste a policy update and ask AI for three clear versions. The sample update is made up. Use your own approved text, without personal data.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an HR communications writer for an Indian company. Rewrite a policy update so every employee understands it.

        Company: [Swift Mart, an online grocery app in Seattle].
        Readers: [warehouse and delivery staff on shifts who read on phones, and office staff who read email].
        Approved update (use ONLY these facts):
        [From Monday 2 November 2026, staff whose shift ends after 10 pm get a free cab home. Book in the Swift Mart app before 6 pm on the day of the shift. Questions: your shift lead, or the HR desk, ext. 204, 9 am to 6 pm, Monday to Saturday.]

        Write:
        1. A WhatsApp message under 60 words.
        2. A 60-second script a shift lead can read aloud at the start of a shift.
        3. An email for office staff, under 150 words, with 3 short FAQs.
        4. A Telugu and a Hindi version of the WhatsApp message.

        Each version must answer: what, who, when, what to do, who to ask.
        Use a calm, warm tone and simple words. Do not add any fact, cost or rule that is not in the update. At the end, list anything that is unclear in the update as a question for HR.</pre>
            <ul class="ai-try-checks">
              <li>Every version has the same facts as the approved update, and no new promises.</li>
              <li>The dates, day names and times are correct.</li>
              <li>A fluent speaker must check the Telugu and Hindi versions before use.</li>
              <li>The WhatsApp message is short enough to read on a phone in a few seconds.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A clear HR message answers five questions: what, who, when, what to do and who to ask. Give AI only the approved facts and ask it not to add any. A person checks every fact and every translation before sending.
        </div>
      HTML
      starter_code: nil
    },
    5 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-hr">HR & Recruitment</div>
          <h1 class="lc-title">Pre-Boarding and Onboarding Plans</h1>
        </div>
        <p class="lc-lead">The first weeks decide if a new person feels welcome and stays. <strong>Pre-boarding</strong> is the time between accepting the offer and the first day. <strong>Onboarding</strong> is how you help a new person settle in, learn the job and do good work, usually over the first 90 days. In this lesson you will plan both for two new Swift Mart joiners, Ramesh and Sana. You will build checklists, set up a buddy, and use AI to draft a plan that people then check.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 240" role="img" aria-label="An onboarding timeline for two made-up joiners. Stages: offer accepted on Wednesday 23 September, pre-boarding, day 1 on Monday 5 October, week 1, and days 30, 60 and 90. Ramesh, a warehouse associate, gets a Telugu offer call, safety induction, scanner training and check-ins with his shift lead. Sana, an office analyst, gets an offer email, a ready laptop, a team lunch, tool access and agreed goals.">
            <defs><marker id="ex5a" markerWidth="8" markerHeight="8" refX="7" refY="4" orient="auto"><path d="M0,0 L8,4 L0,8 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="11" fill="#e2e0f0" text-anchor="middle">
              <text x="10" y="18" text-anchor="start" font-size="12" fill="#9b99b8">Onboarding timeline for Ramesh and Sana (made-up), 2026</text>
              <g fill="#27274e" stroke="#8b5cf6">
                <rect x="10" y="30" width="140" height="44" rx="8"/><rect x="158" y="30" width="140" height="44" rx="8"/><rect x="306" y="30" width="140" height="44" rx="8"/>
                <rect x="454" y="30" width="140" height="44" rx="8"/><rect x="602" y="30" width="140" height="44" rx="8"/>
              </g>
              <g font-size="12.5" font-weight="700">
                <text x="80" y="50">Offer accepted</text><text x="228" y="50">Pre-boarding</text><text x="376" y="50">Day 1</text>
                <text x="524" y="50">Week 1</text><text x="672" y="50">Days 30, 60, 90</text>
              </g>
              <g font-size="10.5" fill="#9b99b8">
                <text x="80" y="66">Wed 23 Sep</text><text x="228" y="66">23 Sep to 4 Oct</text><text x="376" y="66">Mon 5 Oct</text>
                <text x="524" y="66">5 to 9 Oct</text><text x="672" y="66">Nov to early Jan</text>
              </g>
              <line x1="10" y1="84" x2="746" y2="84" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ex5a)"/>
              <g fill="#1f1f44" stroke="#f59e0b">
                <rect x="10" y="94" width="140" height="50" rx="8"/><rect x="158" y="94" width="140" height="50" rx="8"/><rect x="306" y="94" width="140" height="50" rx="8"/>
                <rect x="454" y="94" width="140" height="50" rx="8"/><rect x="602" y="94" width="140" height="50" rx="8"/>
              </g>
              <g fill="#fcd34d">
                <text x="80" y="115">Offer call in Telugu</text><text x="80" y="133">+ SMS summary</text>
                <text x="228" y="115">Shift time, gate,</text><text x="228" y="133">what to bring</text>
                <text x="376" y="115">Safety induction,</text><text x="376" y="133">meet shift buddy</text>
                <text x="524" y="115">Scanner training,</text><text x="524" y="133">shadow the buddy</text>
                <text x="672" y="115">Check-ins with</text><text x="672" y="133">the shift lead</text>
              </g>
              <g fill="#1f1f44" stroke="#3b82f6">
                <rect x="10" y="152" width="140" height="50" rx="8"/><rect x="158" y="152" width="140" height="50" rx="8"/><rect x="306" y="152" width="140" height="50" rx="8"/>
                <rect x="454" y="152" width="140" height="50" rx="8"/><rect x="602" y="152" width="140" height="50" rx="8"/>
              </g>
              <g fill="#93c5fd">
                <text x="80" y="173">Offer email</text><text x="80" y="191">+ call from manager</text>
                <text x="228" y="173">Laptop and email</text><text x="228" y="191">ready, welcome note</text>
                <text x="376" y="173">Team lunch,</text><text x="376" y="191">meet her buddy</text>
                <text x="524" y="173">Tool access,</text><text x="524" y="191">a first small task</text>
                <text x="672" y="173">Goals agreed,</text><text x="672" y="191">90-day review</text>
              </g>
              <rect x="10" y="216" width="12" height="12" rx="2" fill="#f59e0b"/>
              <text x="28" y="226" text-anchor="start" font-size="11.5">Ramesh: warehouse associate, morning shift</text>
              <rect x="330" y="216" width="12" height="12" rx="2" fill="#3b82f6"/>
              <text x="348" y="226" text-anchor="start" font-size="11.5">Sana: office analyst</text>
            </g>
          </svg>
          <figcaption>Both joiners start on Monday 5 October 2026. They follow the same stages, but each stage holds very different tasks.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>What a good onboarding plan covers</h3>
          <p>A good plan helps the new person with four things: feel welcome, be safe, know the people and learn the job. Every task in the plan has an <strong>owner</strong> (the person who does it) and a <strong>due date</strong>.</p>
          <table class="lc-table">
            <thead><tr><th>Stage</th><th>Ramesh (warehouse, morning shift)</th><th>Sana (office analyst)</th><th>Owner</th></tr></thead>
            <tbody>
              <tr><td><strong>Pre-boarding</strong></td><td>SMS with shift time, gate address, what to bring. A call 2 days before.</td><td>Welcome email, laptop and accounts ready, first-week plan</td><td>HR operations, IT</td></tr>
              <tr><td><strong>Day 1</strong></td><td>Safety induction, site tour, ID card, locker, safety shoes, meet buddy</td><td>Welcome by manager, team lunch, laptop set up, meet buddy</td><td>HR, manager</td></tr>
              <tr><td><strong>Week 1</strong></td><td>Scanner training, work beside the buddy, learn the roster app</td><td>Tool and data access, meet key teams, a first small task</td><td>Manager, buddy</td></tr>
              <tr><td><strong>Day 30</strong></td><td>Check-in: comfort, safety, pay questions</td><td>Check-in: agree 90-day goals</td><td>Manager, HR</td></tr>
              <tr><td><strong>Day 60 and 90</strong></td><td>Skills check, feedback, next steps</td><td>Progress on goals, 90-day review</td><td>Manager</td></tr>
            </tbody>
          </table>
          <p>Day 1 should also cover the basics every employee needs. These include how to raise a complaint, including the POSH Internal Committee (the group that handles sexual harassment complaints). They also include joining paperwork and statutory registrations, such as PF and ESI where they apply. Payroll and HR confirm what applies to each role.</p>
        </div>
        <div class="lc-card">
          <h3>A pre-boarding checklist and the buddy system</h3>
          <p>Here is Lakshmi's pre-boarding checklist for Ramesh. The days count back from day 1 (D).</p>
          <pre><code>PRE-BOARDING: Ramesh, warehouse associate, morning shift
        Day 1 (D): Monday 5 October 2026, 8:30 am, Medchal warehouse, Gate 2

        [ ] D-10  Welcome SMS in Telugu and English: date, time, gate, contact   HR ops
        [ ] D-10  Document request sent through the HR system link           HR ops
        [ ] D-5   Documents received and checked                             HR ops
        [ ] D-3   ID card, locker and safety shoes ready                     Admin
        [ ] D-3   Scanner login and roster app account created               IT
        [ ] D-3   Buddy chosen from the same shift and briefed               Shift lead
        [ ] D-2   Reminder call: "Any questions? See you Monday."            HR ops
        [ ] D-1   Day 1 plan shared with the security gate and shift lead    HR ops</code></pre>
          <p><strong>Privacy:</strong> collect only the documents you need. Use your HR system's secure upload, for example in Keka, greytHR or Zoho People. Do not collect ID documents on personal WhatsApp. Never paste ID numbers or bank details into an AI tool.</p>
          <p>A <strong>buddy</strong> is a colleague, not the manager, who answers everyday questions. For example: "Where can I get water during the shift?" A good buddy:</p>
          <ul class="lc-list">
            <li>works the same shift or in the same team,</li>
            <li>has been at the company for at least six months and is patient,</li>
            <li>gets a one-page buddy guide and time in their day to help,</li>
            <li>is thanked, for example with a note from the manager or a small reward.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Draft the plan with AI, then check it</h3>
          <p>A weak prompt:</p>
          <pre><code>Make an onboarding plan for a new employee.</code></pre>
          <p>The result will fit an office worker with a laptop. It will not fit Ramesh. A better prompt gives the role, the shift, the date and the rules:</p>
          <pre><code>Create an onboarding plan for a new warehouse associate at an online
        grocery warehouse in Seattle. Day 1: Monday 5 October 2026, 8:30 am.
        From week 2 he works the morning shift (6:00 am to 2:30 pm).
        He uses a phone, not a laptop.
        Include: a pre-boarding checklist (owner, days before joining),
        a Day 1 plan hour by hour, a Week 1 plan by day, and check-ins
        at days 30, 60 and 90. Do not invent company policies. Where a
        policy is needed, write [confirm with HR].</code></pre>
          <p>Then check the draft:</p>
          <ul class="lc-list">
            <li><strong>Fit:</strong> remove items that do not fit the role, like "set up your laptop" for Ramesh.</li>
            <li><strong>Load:</strong> Day 1 should not have nine training sessions. People remember little from an overloaded day.</li>
            <li><strong>Policy:</strong> probation length, leave, pay dates and allowances come from your real policy, not from AI.</li>
            <li><strong>Owners:</strong> every task has a real person and a date.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Activity: Ramesh's onboarding in order</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put Ramesh's onboarding tasks in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Send a welcome SMS with the joining date, time, gate and a contact name</li>
              <li data-order="2">Collect his joining documents through the HR system link</li>
              <li data-order="3">Prepare his ID card, locker, safety shoes and scanner login</li>
              <li data-order="4">Day 1: safety induction, site tour and meeting his shift buddy</li>
              <li data-order="5">Week 1: scanner training while he works beside his buddy</li>
              <li data-order="6">Day 30: first check-in with his shift lead</li>
              <li data-order="7">Day 90: review his progress and agree the next steps</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to draft a full onboarding plan for one role. Then mark every item you must confirm with HR or the manager.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an onboarding specialist for Indian companies. Draft an onboarding plan for one new joiner.

        Company: [Swift Mart, an online grocery app in Seattle, about 600 staff].
        Role: [warehouse associate, morning shift 6:00 am to 2:30 pm from week 2, uses a phone, not a laptop].
        Joining date: [Monday 5 October 2026]. Languages: [Telugu, Hindi, English].
        Manager: [a shift lead]. Buddy: [an associate on the same shift].

        Write:
        1. A pre-boarding checklist table: Task, Owner, Days before joining.
        2. A Day 1 plan, hour by hour, with no more than 3 short training sessions.
        3. A Week 1 plan, one line per day.
        4. Goals and check-in questions for days 30, 60 and 90.
        5. A half-page guide for the buddy.
        6. A list of "Confirm with HR" items.

        Rules: do not invent company policies such as pay dates, leave or probation. Write [confirm with HR] instead. Do not ask for personal data. Use simple English.</pre>
            <ul class="ai-try-checks">
              <li>The plan fits the role: shifts, phone use, safety, language.</li>
              <li>Day 1 is realistic and not overloaded.</li>
              <li>Every task has an owner and a timing.</li>
              <li>Policies are marked [confirm with HR], not invented.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Onboarding starts before day 1. Make a plan for each role, give every task an owner and a date, and give each joiner a buddy. AI drafts the plan fast, but your real policies and people make it work.
        </div>
      HTML
      starter_code: nil
    },
    6 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-hr">HR & Recruitment</div>
          <h1 class="lc-title">Onboarding Content with AI</h1>
        </div>
        <p class="lc-lead">New people need a lot of information in their first week. Where do I go? What time? Who is my buddy? What do I wear? <strong>Onboarding content</strong> is the set of guides, messages and FAQs that answers these questions. AI can draft this content quickly and in many languages. But AI also invents details that sound right. In this lesson, you will create a welcome guide, a role guide, an FAQ and a short quiz with AI. You will start from a fact sheet, and you will check every fact with HR before anyone sees it.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="A five-step workflow: HR writes a fact sheet, AI drafts the guide, FAQ and quiz, HR checks every fact, the content is translated, and it is published with an owner and a review date. Below, two panels compare content for Ramesh, a warehouse associate, and Sana, an office analyst.">
            <defs><marker id="ex6a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="10" y="20" width="130" height="66" rx="10" fill="#1f1f44" stroke="#3b82f6"/><text x="75" y="48">Fact sheet</text><text x="75" y="68" font-size="11" fill="#9b99b8">from HR, dated</text>
              <rect x="160" y="20" width="130" height="66" rx="10" fill="#1f1f44" stroke="#8b5cf6"/><text x="225" y="48">AI drafts</text><text x="225" y="68" font-size="11" fill="#9b99b8">guide, FAQ, quiz</text>
              <rect x="310" y="20" width="130" height="66" rx="10" fill="#1f1f44" stroke="#f59e0b"/><text x="375" y="48">HR checks facts</text><text x="375" y="68" font-size="11" fill="#9b99b8">line by line</text>
              <rect x="460" y="20" width="130" height="66" rx="10" fill="#1f1f44" stroke="#22d3ee"/><text x="525" y="48">Translate</text><text x="525" y="68" font-size="11" fill="#9b99b8">Telugu, Hindi</text>
              <rect x="610" y="20" width="130" height="66" rx="10" fill="#1f1f44" stroke="#10b981"/><text x="675" y="48">Publish</text><text x="675" y="68" font-size="11" fill="#9b99b8">owner + review date</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ex6a)">
                <line x1="142" y1="53" x2="156" y2="53"/><line x1="292" y1="53" x2="306" y2="53"/><line x1="442" y1="53" x2="456" y2="53"/><line x1="592" y1="53" x2="606" y2="53"/>
              </g>
              <rect x="10" y="110" width="365" height="178" rx="12" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="192" y="136" font-weight="700" fill="#fcd34d">For Ramesh (warehouse, shifts)</text>
              <g text-anchor="start" font-size="12.5">
                <text x="30" y="164">• Short pages that fit a phone screen</text>
                <text x="30" y="190">• Telugu, Hindi or English, with pictures</text>
                <text x="30" y="216">• A voice note from his shift lead</text>
                <text x="30" y="242">• Safety rules from the safety lead</text>
                <text x="30" y="268">• Quiz asked out loud on day 2</text>
              </g>
              <rect x="385" y="110" width="365" height="178" rx="12" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="567" y="136" font-weight="700" fill="#93c5fd">For Sana (office analyst)</text>
              <g text-anchor="start" font-size="12.5">
                <text x="405" y="164">• Welcome guide and role guide</text>
                <text x="405" y="190">• Tools, logins and first tasks</text>
                <text x="405" y="216">• FAQ in the HR app</text>
                <text x="405" y="242">• Who to ask for what</text>
                <text x="405" y="268">• A 5-question check, not a test</text>
              </g>
            </g>
          </svg>
          <figcaption>AI drafts from HR's facts. People check every fact. Each group gets content in the form and language that works for them.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>What onboarding content do you need?</h3>
          <p>Swift Mart is an online grocery company in Seattle. It has about 600 staff. About 450 work in warehouses and delivery on shifts. About 150 work in the office. Lakshmi, the HR business partner, leads employee experience. On Monday 5 October 2026, two people join: Ramesh, a warehouse associate, and Sana, an office analyst.</p>
          <p>They need different content. Ramesh reads on his phone, between shifts. He prefers Telugu. Sana reads on a laptop and needs to know her tools. Lakshmi lists the pieces first.</p>
          <table class="lc-table">
            <thead><tr><th>Content</th><th>What it answers</th><th>Who checks it</th></tr></thead>
            <tbody>
              <tr><td><strong>Welcome guide</strong></td><td>Where, when, what to bring, who meets you</td><td>Lakshmi (HR)</td></tr>
              <tr><td><strong>Role guide</strong></td><td>What you do in weeks 1 to 4, and what "good" looks like</td><td>The new joiner's manager</td></tr>
              <tr><td><strong>FAQ</strong> (frequently asked questions)</td><td>Pay day, leave, uniform, canteen, transport</td><td>HR and payroll</td></tr>
              <tr><td><strong>Safety induction</strong></td><td>Lifting, forklifts, cold room, emergency exits</td><td>The warehouse safety lead</td></tr>
              <tr><td><strong>Short quiz</strong></td><td>Did the key points make sense?</td><td>HR, with the manager</td></tr>
            </tbody>
          </table>
          <p>The quiz is not a test to pass or fail. It shows you which parts of your guide are unclear. If most new joiners miss the same question, fix the guide.</p>
        </div>
        <div class="lc-card">
          <h3>Start from a fact sheet, not from a blank prompt</h3>
          <p>Here is a weak prompt:</p>
          <pre><code>Write a welcome guide for new warehouse staff at Swift Mart.</code></pre>
          <p>The AI does not know Swift Mart. So it fills the gaps with guesses. It may add a free canteen, a bus service or a shift time that does not exist. The guess reads well, so nobody notices. A better prompt gives the facts and a clear rule:</p>
          <pre><code>You are an HR writer at Swift Mart, an online grocery company in Seattle.
        Write a welcome guide for a new warehouse associate.
        Reader: reads on a phone, simple English, will be translated to Telugu.
        Use ONLY the facts below. If something is missing, write [ASK HR].
        Do not add benefits, times, places or names that are not listed.
        Format: 6 short sections with headings. Under 250 words.
        Facts (checked by HR on 28 Sep 2026):
        - Day 1: Mon 5 Oct 2026, 8:30 am, Medchal warehouse, Gate 2
        - Ask for: Anil (your buddy, senior associate)
        - Bring: original ID proof and one passport photo
        - Swift Mart gives: 2 uniform T-shirts and safety shoes on day 1
        - Your shift from week 2: morning, 6:00 am to 2:30 pm
        - Pay day: 7th of every month</code></pre>
          <p>The rule "write [ASK HR]" is important. It turns a hidden guess into a visible gap. You can fill the gap with the right fact.</p>
        </div>
        <div class="lc-card">
          <h3>Check every fact before you publish</h3>
          <p>Lakshmi puts the AI draft next to the fact sheet. She checks each claim. Here is part of her check table.</p>
          <table class="lc-table">
            <thead><tr><th>Line in the AI draft</th><th>Fact sheet says</th><th>Action</th></tr></thead>
            <tbody>
              <tr><td>"Come to Gate 2 at 8:30 am on Monday 5 October."</td><td>Same</td><td>Keep</td></tr>
              <tr><td>"Enjoy a free lunch in our canteen every day."</td><td>Not in the facts</td><td>Remove. Ask the admin team what is true.</td></tr>
              <tr><td>"Your shift runs from 7:00 am to 3:30 pm."</td><td>6:00 am to 2:30 pm</td><td>Fix the time</td></tr>
              <tr><td>"Wear your own safety shoes."</td><td>Swift Mart gives safety shoes</td><td>Fix. A wrong line here can cause a safety problem.</td></tr>
              <tr><td>"[ASK HR] Is there transport for the early shift?"</td><td>Missing</td><td>Lakshmi asks the admin team and adds the answer</td></tr>
            </tbody>
          </table>
          <p>Three more checks matter:</p>
          <ul class="lc-list">
            <li><strong>Translation:</strong> AI translations can be stiff or wrong. Ask a Telugu-speaking supervisor to read the Telugu version before you send it.</li>
            <li><strong>Safety content:</strong> AI may only reformat safety rules. The words come from the safety lead, and the safety lead signs them off.</li>
            <li><strong>Owner and date:</strong> Add a line such as "Checked by Lakshmi, 28 Sep 2026. Next review: Jan 2027." Old guides with wrong facts cause many questions.</li>
          </ul>
          <p>Use made-up or general details when you practise. Do not paste a new joiner's phone number, address or ID numbers into a public AI tool.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: Lakshmi builds Ramesh's first-week guide</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Lakshmi's prompt">Write a first-week guide for a new warehouse associate. Use only the facts below. Write [ASK HR] for anything missing. Simple English, short sections, under 250 words. (Fact sheet pasted below.)</li>
              <li data-kind="answer" data-label="AI draft">A friendly guide with six sections: Day 1, Your buddy, What to bring, Uniform and safety shoes, Your shift, Pay day. It ends with "[ASK HR] Is there transport for the early shift?"</li>
              <li data-kind="check" data-label="Lakshmi checks">She compares each line with the fact sheet. Day 1 time, gate, buddy name and pay day all match.</li>
              <li data-kind="warn" data-label="Mistake caught">One line says "Free bus from Secunderabad station at 5:15 am." This is not in the facts. The AI invented it. Lakshmi deletes it.</li>
              <li data-kind="tool" data-label="Admin team">Lakshmi asks the admin team about early-shift transport. They say: a shared van leaves Kompally at 5:20 am. She adds this fact.</li>
              <li data-kind="thought" data-label="Translation">Ramesh prefers Telugu. Lakshmi asks the AI for a Telugu version. She does not send it yet.</li>
              <li data-kind="check" data-label="Human review">Shift lead Venkat reads the Telugu version. He changes two words that sounded too formal. Then he records a short voice note of the guide.</li>
              <li data-kind="result" data-label="Sent">Ramesh gets the guide and the voice note on Thursday 1 October. The footer says "Checked by Lakshmi, 1 Oct 2026."</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask the AI to turn a short fact sheet into a welcome message, an FAQ and a quiz. Then check that it added nothing new.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an HR writer at [Swift Mart, an online grocery company in Seattle].
        Create onboarding content for a new [warehouse associate] who joins on [Mon 5 Oct 2026].
        Reader: reads on a phone. Use simple English with short sentences.
        Use ONLY these facts. If a new joiner would need something that is not here, write [ASK HR] instead of guessing.
        Facts (made up for practice):
        - Day 1: 8:30 am, [Medchal warehouse, Gate 2]. Ask for [Anil], your buddy.
        - Bring: original ID proof and one passport photo.
        - Day 1 kit: 2 uniform T-shirts and safety shoes.
        - From week 2: [morning shift, 6:00 am to 2:30 pm], 30-minute break.
        - Leave: apply in the HR app at least 3 days before.
        - Pay day: 7th of every month.
        Give me:
        1. A welcome message under 120 words.
        2. An FAQ with 6 questions and answers.
        3. A 4-question multiple-choice quiz, with the answers, to find unclear parts of the guide.
        4. A list of every [ASK HR] gap you found.
        Last, list any sentence where you were unsure you stayed within the facts.</pre>
            <ul class="ai-try-checks">
              <li>Every time, place, name and date matches the fact sheet exactly.</li>
              <li>No new benefits appear, such as free meals, a bus or a bonus.</li>
              <li>Missing facts show as [ASK HR], not as guesses (for example, transport or canteen).</li>
              <li>The quiz asks about key facts (time, place, pay day), not trick details.</li>
              <li>Sentences are short enough to read on a phone and to translate.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> AI is a fast writer but a poor source of facts about your company. Give it a dated fact sheet, make it mark gaps as [ASK HR], and check every line before a new joiner reads it.
        </div>
      HTML
      starter_code: nil
    },
    7 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-hr">HR & Recruitment</div>
          <h1 class="lc-title">HR Policy Chatbots</h1>
        </div>
        <p class="lc-lead">HR teams answer the same questions every day. How do I apply for leave? When is pay day? Can I swap my shift? An <strong>HR policy chatbot</strong> is a chat tool that answers these questions from your company's own handbook. It can answer at 5 am, when a shift worker has time to ask. But a chatbot must also know what it must not answer. In this lesson, you will learn how a handbook chatbot works and how to write its rules. You will also learn when it must hand over to a person, and how to test it before launch.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 330" role="img" aria-label="A decision flow. An employee asks a question. If the topic is sensitive, such as harassment, health, safety or a pay dispute, the bot hands over to a person. If not, the bot checks the handbook. If the answer is there, it answers and names the section. If not, it says it does not know and logs the gap for HR.">
            <defs><marker id="ex7a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="10" y="125" width="130" height="54" rx="10" fill="#1f1f44" stroke="#3b82f6"/><text x="75" y="148">Employee asks</text><text x="75" y="167" font-size="11" fill="#9b99b8">in the HR app</text>
              <rect x="170" y="125" width="160" height="54" rx="10" fill="#27274e" stroke="#ec4899"/><text x="250" y="148">Sensitive topic?</text><text x="250" y="167" font-size="11" fill="#9b99b8">harassment, injury</text>
              <rect x="390" y="20" width="350" height="60" rx="10" fill="#1f1f44" stroke="#ec4899"/><text x="565" y="45" font-weight="700" fill="#f9a8d4">Hand over to a person</text><text x="565" y="66" font-size="11" fill="#9b99b8">HR, Internal Committee, safety lead or doctor</text>
              <rect x="390" y="125" width="150" height="54" rx="10" fill="#27274e" stroke="#f59e0b"/><text x="465" y="148">In the handbook?</text><text x="465" y="167" font-size="11" fill="#9b99b8">approved version</text>
              <rect x="580" y="115" width="160" height="54" rx="10" fill="#1f1f44" stroke="#10b981"/><text x="660" y="138" fill="#6ee7b7">Answer + section</text><text x="660" y="157" font-size="11" fill="#9b99b8">"Leave policy, 4.2"</text>
              <rect x="580" y="200" width="160" height="54" rx="10" fill="#1f1f44" stroke="#9b99b8"/><text x="660" y="223">"I don't know"</text><text x="660" y="242" font-size="11" fill="#9b99b8">log the gap for HR</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#ex7a)">
                <line x1="142" y1="152" x2="166" y2="152"/>
                <path d="M250,123 L250,50 L386,50"/>
                <line x1="332" y1="152" x2="386" y2="152"/>
                <line x1="542" y1="145" x2="576" y2="142"/>
                <path d="M465,181 L465,227 L576,227"/>
              </g>
              <g font-size="11.5" fill="#fcd34d">
                <text x="272" y="95">Yes</text>
                <text x="358" y="145">No</text>
                <text x="558" y="134">Yes</text>
                <text x="482" y="220">No</text>
              </g>
              <rect x="10" y="276" width="730" height="42" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="375" y="302" font-size="12.5">Rules: answer only from approved documents · no legal or medical advice · say it is a bot</text>
            </g>
          </svg>
          <figcaption>A good HR chatbot checks two things: is this sensitive, and is the answer in the handbook? Only then does it answer.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>How a handbook chatbot works</h3>
          <p>A normal AI assistant answers from its general training. It does not know Swift Mart's rules. So if you ask "How many days before must I apply for leave?", it guesses. A handbook chatbot works in a different way:</p>
          <ol class="lc-list">
            <li>HR adds approved documents, such as the employee handbook, the leave policy and the shift rules.</li>
            <li>An employee asks a question.</li>
            <li>The tool finds the parts of the documents that match the question.</li>
            <li>The AI writes a short answer from those parts only, and names the section.</li>
          </ol>
          <p>Answering only from given documents is called <strong>grounding</strong>. It cuts down guessing, but it does not stop it fully. So the bot should always name its source. Then the employee, or HR, can check it.</p>
          <p>Where do you build one? Many HR systems (HRMS: software for employee records, leave and payroll) now offer chatbot or AI helper features. You can also use a company-approved AI assistant where you upload documents, such as a Claude Project. Features change often, so check the tool's current help pages. Use only tools your company has approved for HR data.</p>
          <p><strong>Keep the documents clean.</strong> If the bot has the 2024 and the 2026 leave policy, it may mix them. Remove old versions. Put a date on every document.</p>
        </div>
        <div class="lc-card">
          <h3>Write the bot's rules</h3>
          <p>The rules are the instructions the bot follows in every chat. Here is a weak version:</p>
          <pre><code>You are a helpful HR assistant. Answer employee questions.</code></pre>
          <p>"Helpful" pushes the bot to always give an answer, even when it should not. Lakshmi writes clear rules for the Swift Mart HR Helper:</p>
          <pre><code>You are Swift Mart HR Helper, a chatbot. Always say you are a bot.
        1. Answer ONLY from the attached Swift Mart documents.
           Name the document and section in every answer.
        2. If the answer is not in the documents, say:
           "I don't know this one. Please ask HR at hr-help@swiftmart.example."
           Never guess numbers, dates or amounts.
        3. Hand over to a person, and do not try to solve it, if the question
           is about: harassment or abuse, an injury, illness or other medical
           issue, a pay dispute, a warning or dismissal, or the person is upset.
           For harassment, share only the Internal Committee contact. Do not
           ask for, store or summarise the details.
        4. Never give legal, medical, tax or financial advice.
        5. Never look up or discuss one person's pay, payslip or deductions.
           Send these questions to payroll.
        6. Do not ask for or repeat Aadhaar, PAN, bank or health details.
        7. Use simple English. Reply in Telugu or Hindi if the person writes in it.
        8. Keep answers under 80 words, with one clear next step.</code></pre>
          <p>Rule 2 matters most. A bot that says "I don't know" is safe. A bot that invents a leave rule creates real problems for people.</p>
        </div>
        <div class="lc-card">
          <h3>When to hand over to a person</h3>
          <table class="lc-table">
            <thead><tr><th>The employee says</th><th>What the bot does</th><th>Who takes over</th></tr></thead>
            <tbody>
              <tr><td>"My supervisor makes comments about my body."</td><td>Thanks them for telling. Shares how to reach the Internal Committee and HR. Asks no questions about details.</td><td>The Internal Committee (IC: the group that handles sexual harassment complaints under the POSH Act 2013)</td></tr>
              <tr><td>"I hurt my back lifting crates. Which tablet should I take?"</td><td>Gives no medical advice. Tells them to stop work, tell the shift lead and see a doctor.</td><td>Shift lead, safety lead, a doctor</td></tr>
              <tr><td>"Can the company fire me for this?"</td><td>Gives no legal opinion. Offers a private talk with HR.</td><td>HR business partner</td></tr>
              <tr><td>"My salary is ₹1,200 less this month. Why?"</td><td>Does not guess. Points to the payslip in the HR app and the payroll team.</td><td>Payroll team</td></tr>
              <tr><td>"I can't cope any more."</td><td>Responds kindly. Shares the company's emergency and support contacts. Alerts HR right away if the tool allows it.</td><td>HR, and the support contacts your company has chosen</td></tr>
            </tbody>
          </table>
          <p>Decide these handover paths with HR leaders, the Internal Committee and your legal team before launch. This lesson gives general information, not legal advice. Check with HR legal counsel.</p>
        </div>
        <div class="lc-card">
          <h3>Test before launch, and keep testing</h3>
          <p>Before launch, Lakshmi writes a <strong>test set</strong>: 30 real-style questions with the correct answers. She includes easy questions, tricky ones and sensitive ones. For each answer, she marks three things:</p>
          <ul class="lc-list">
            <li><strong>Correct?</strong> Does it match the handbook exactly?</li>
            <li><strong>Source shown?</strong> Does it name the right section?</li>
            <li><strong>Right behaviour?</strong> Did it hand over or say "I don't know" when it should?</li>
          </ul>
          <p>Her rule: every sensitive question must be handed over, every time. Even one wrong answer on a sensitive question means the bot is not ready. Run the same test set again after every policy change.</p>
          <p><strong>Privacy:</strong> Chat logs contain personal details. Decide who can read them and how long you keep them. In India, the DPDP Act 2023 (Digital Personal Data Protection Act) and its Rules cover employee data. Review logs for missing answers, not to watch people. Check with HR legal counsel for your rules.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: answer, hand over or act now?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">These questions reach the Swift Mart HR Helper. Sort each one.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="bot" data-label="Bot answers from the handbook"></div>
              <div data-sorter-target="bucket" data-bucket="person" data-label="Hand over to an HR person"></div>
              <div data-sorter-target="bucket" data-bucket="urgent" data-label="Urgent: safety or harassment"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="bot" data-why="This is a general rule. It is the same for everyone and it is written in the leave policy.">How many days before must I apply for leave?</li>
              <li data-bucket="bot" data-why="Shift swap rules are in the shift policy. The bot can answer and name the section.">Can I swap my Sunday shift with a colleague?</li>
              <li data-bucket="person" data-why="This needs Ramesh's own pay records. The bot must not guess. Payroll checks and replies.">My first salary is lower than my offer letter. Why?</li>
              <li data-bucket="person" data-why="This is a legal question about one person. The bot gives no legal opinion. An HR person talks to them privately.">Can I be dismissed for being late three times?</li>
              <li data-bucket="urgent" data-why="This may be sexual harassment. The bot shares the Internal Committee and HR contacts at once and asks no questions about details.">My team lead keeps touching my shoulder and I don't like it.</li>
              <li data-bucket="urgent" data-why="This is an injury. The bot gives no medical advice. The person needs first aid, the shift lead and a doctor.">I cut my hand on a crate. Which cream should I use?</li>
              <li data-bucket="person" data-why="The bot should not guess about a medical condition or promise changes. HR and the manager discuss it with the employee.">I have a back problem. Can I get lighter work?</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask the AI to act as a handbook chatbot with strict rules. Then see how it handles four test questions, including two it must not answer.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">Act as [Swift Mart] HR Helper, a chatbot for employees. Say you are a bot.
        Rules:
        - Answer ONLY from the handbook below. Name the section in every answer.
        - If the answer is not there, say "I don't know this one. Please ask HR." Never guess.
        - Hand over to a person for harassment, injury, health, pay disputes, warnings or distress. Give no legal or medical advice.
        - Never discuss one person's own pay. Send it to payroll.
        - Simple English, under 60 words per answer, one next step.
        Handbook (made up for practice):
        [2.1 Shift swap: swap with a colleague in the same role. Your shift lead approves it in the HR app at least 24 hours before.
        3.1 Leave: apply in the HR app at least 3 days before.
        5.2 Pay day: the 7th of every month.
        7.1 Harassment: contact the Internal Committee at ic@swiftmart.example or HR at hr-help@swiftmart.example.]
        Answer these test questions one by one:
        1. [Can I swap my Sunday shift with Anil?]
        2. [Does our health insurance cover dental treatment?]
        3. [My team lead shouts at me and touched my arm. What should I do?]
        4. [I have had a fever for 3 days. Which medicine should I take?]
        After the answers, make a table: question, rule used, handed over (yes or no).</pre>
            <ul class="ai-try-checks">
              <li>Question 1 names section 2.1 and says the shift lead must approve 24 hours before.</li>
              <li>Question 2 says "I don't know" because dental cover is not in the handbook.</li>
              <li>Question 3 shares the Internal Committee and HR contacts, and does not ask for details.</li>
              <li>Question 4 names no medicine and tells the person to see a doctor.</li>
              <li>No answer invents a number, date or policy.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A good HR chatbot is judged by what it refuses to do. It answers only from approved documents, names its source, says "I don't know" when it should, and hands every sensitive question to a person.
        </div>
      HTML
      starter_code: nil
    },
    8 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-hr">HR & Recruitment</div>
          <h1 class="lc-title">Leave, Payroll and Benefits Questions</h1>
        </div>
        <p class="lc-lead">Questions about leave, pay and benefits are the most common questions HR gets. They also matter most to people. A wrong answer about pay breaks trust fast. In this lesson, you will sort questions into general and personal ones. You will use AI to write clear answers from your own policy. You will learn the words on a payslip in plain English, and check every number yourself. This lesson is general education, not legal, tax or financial advice. Real rules come from your HR, payroll and legal teams.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 320" role="img" aria-label="An employee question splits two ways. A general question, such as how many leave days I get, has the same answer for everyone and goes to the FAQ, HR bot or policy. A personal question, such as why my October salary is lower, needs that person's records and goes to HR system self-service or the payroll team. A warning below says never paste payslips, salaries, bank, Aadhaar, PAN or UAN numbers into public AI tools.">
            <defs><marker id="ex8a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="280" y="10" width="200" height="44" rx="10" fill="#27274e" stroke="#8b5cf6"/><text x="380" y="37">An employee asks</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#ex8a)">
                <path d="M320,56 L190,86"/>
                <path d="M440,56 L570,86"/>
              </g>
              <rect x="10" y="90" width="360" height="160" rx="12" fill="#1f1f44" stroke="#10b981"/>
              <text x="190" y="116" font-weight="700" fill="#6ee7b7">General question</text>
              <g text-anchor="start" font-size="12.5">
                <text x="30" y="144">"How many earned leave days do I get?"</text>
                <text x="30" y="168">"What does ESI mean on my payslip?"</text>
                <text x="30" y="198" fill="#9b99b8">Same answer for everyone</text>
                <text x="30" y="228" fill="#6ee7b7">→ FAQ, HR bot or policy document</text>
              </g>
              <rect x="390" y="90" width="360" height="160" rx="12" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="570" y="116" font-weight="700" fill="#fcd34d">Personal question</text>
              <g text-anchor="start" font-size="12.5">
                <text x="410" y="144">"Why is my October salary lower?"</text>
                <text x="410" y="168">"How many leave days do I have left?"</text>
                <text x="410" y="198" fill="#9b99b8">Needs that person's own records</text>
                <text x="410" y="228" fill="#fcd34d">→ HRMS self-service or payroll team</text>
              </g>
              <rect x="10" y="268" width="740" height="42" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="380" y="294" font-size="12.5" fill="#f9a8d4">Never paste payslips, salaries, bank, Aadhaar, PAN or UAN numbers into public AI tools</text>
            </g>
          </svg>
          <figcaption>General questions can get one clear, checked answer for everyone. Personal questions need the person's own records, in a secure system.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>General or personal?</h3>
          <p>First, sort each question. A <strong>general question</strong> has the same answer for everyone in a group. A <strong>personal question</strong> needs one person's own records. AI can help with general answers. Personal answers come from the HRMS (HR management system: software such as Keka, greytHR, Zoho People, Darwinbox or Workday) or from the payroll team.</p>
          <table class="lc-table">
            <thead><tr><th>Question at Swift Mart</th><th>Type</th><th>Best place for the answer</th></tr></thead>
            <tbody>
              <tr><td>How do I apply for leave?</td><td>General</td><td>FAQ with screenshots of the HR app</td></tr>
              <tr><td>Can I carry forward unused leave?</td><td>General</td><td>Leave policy, section on carry forward</td></tr>
              <tr><td>What is "EPF" on my payslip?</td><td>General</td><td>Payslip guide</td></tr>
              <tr><td>How many leave days do I have left?</td><td>Personal</td><td>HRMS self-service (the employee checks in the app)</td></tr>
              <tr><td>Why is my first salary lower than my offer?</td><td>Personal</td><td>Payroll team, in a private reply</td></tr>
              <tr><td>Is my mother covered by the health insurance?</td><td>General, then personal</td><td>Benefits booklet, then HR to check the person's enrolment</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Write answers from your own policy</h3>
          <p>Leave and benefit rules differ by company, state and type of job. So AI cannot know your rules. Here is Swift Mart's policy. <strong>It is made up for this course.</strong></p>
          <table class="lc-table">
            <thead><tr><th>Swift Mart policy (made up)</th><th>Rule</th></tr></thead>
            <tbody>
              <tr><td>Earned leave</td><td>15 days a year, added at 1.25 days each month. Up to 30 days can be carried forward.</td></tr>
              <tr><td>Casual and sick leave</td><td>12 days a year. Cannot be carried forward.</td></tr>
              <tr><td>How to apply</td><td>In the HR app, at least 3 days before. Sick leave: tell your shift lead or manager before the shift starts.</td></tr>
              <tr><td>Pay day</td><td>The 7th of every month</td></tr>
              <tr><td>First month's pay</td><td>Paid for the days from the joining date to the month end: monthly gross × days worked ÷ days in the month</td></tr>
              <tr><td>Health insurance</td><td>Group health insurance for all staff. Details in the benefits booklet.</td></tr>
            </tbody>
          </table>
          <p><strong>Laws set the minimums.</strong> In India, the four Labour Codes came into force on 21 November 2025. They cover wages, social security, working conditions and more. The central rules were notified in May 2026, but some state rules were still being finalised. A company policy can give more than the law, not less. Do not ask AI what the law says and publish its answer. Check every rule with HR, payroll and legal counsel.</p>
          <p>Here is a weak prompt:</p>
          <pre><code>How much leave do warehouse workers get in India?</code></pre>
          <p>The AI will give a general answer. It may be out of date, or it may be for a different state or law. A better prompt uses your policy:</p>
          <pre><code>You are an HR helpdesk writer at Swift Mart.
        Answer the question below using ONLY the policy text I give you.
        Write for a warehouse associate: simple English, under 80 words.
        End with one next step. If the policy does not answer it, say so.
        Do not add any legal rules, rates or numbers that are not in the policy.
        Question: "Can I carry forward my unused leave to next year?"
        Policy: [paste the approved leave policy text]</code></pre>
        </div>
        <div class="lc-card">
          <h3>Payslip words in plain English</h3>
          <p>Many new joiners do not understand their first payslip. A short payslip guide saves many questions. AI can help you write it in simple English, Telugu or Hindi. Rates and limits change, so keep them out of the guide. Link to payroll instead.</p>
          <table class="lc-table">
            <thead><tr><th>Word on the payslip</th><th>Plain meaning</th></tr></thead>
            <tbody>
              <tr><td>Gross pay</td><td>Your total pay before anything is taken out</td></tr>
              <tr><td>Deductions</td><td>Amounts taken out of your gross pay</td></tr>
              <tr><td>Net pay</td><td>What reaches your bank account: gross pay minus deductions</td></tr>
              <tr><td>EPF (Employees' Provident Fund)</td><td>A retirement savings fund. You and the company both pay into it every month.</td></tr>
              <tr><td>UAN (Universal Account Number)</td><td>Your EPF account number. It stays the same when you change jobs.</td></tr>
              <tr><td>ESI (Employees' State Insurance)</td><td>A government health insurance scheme. It covers employees up to a wage limit set by law.</td></tr>
              <tr><td>Professional tax</td><td>A small tax on jobs that some states charge</td></tr>
              <tr><td>TDS (tax deducted at source)</td><td>Income tax that the company takes from your pay and sends to the government for you</td></tr>
            </tbody>
          </table>
          <p><strong>Worked example (made-up numbers).</strong> Ramesh joined on Monday 5 October 2026. His made-up monthly gross pay is ₹22,000. He worked from 5 to 31 October. That is 31 − 5 + 1 = 27 calendar days. October has 31 days. So his October gross pay is ₹22,000 × 27 ÷ 31 = ₹19,161 (rounded). In a spreadsheet:</p>
          <pre><code>=ROUND(22000*27/31, 0)        → 19161</code></pre>
          <p>An AI draft once said "₹22,000 × 27 ÷ 30 = ₹19,800". It used 30 days instead of 31. Always check AI maths in a spreadsheet or in the payroll system. Companies also count days in different ways. Some use calendar days, and some use a fixed 30 days. Use your own payroll rule.</p>
        </div>
        <div class="lc-card">
          <h3>Accuracy and privacy checks</h3>
          <ul class="lc-list">
            <li><strong>One source:</strong> every answer comes from the current, dated policy. Remove old versions.</li>
            <li><strong>Numbers:</strong> check every number in a spreadsheet or the HRMS. Never trust AI maths alone.</li>
            <li><strong>No invented rates:</strong> if a draft states an EPF rate, ESI limit or tax rate, remove it or ask payroll to confirm it.</li>
            <li><strong>Private replies:</strong> answer pay questions one to one. Never share one person's pay in a group chat.</li>
            <li><strong>No personal data in public AI:</strong> no payslips, salaries, bank details, Aadhaar, PAN or UAN. Use placeholders such as [gross pay].</li>
            <li><strong>Tax questions:</strong> give general guidance only. For personal tax decisions, suggest a chartered accountant.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Activity: answer Ramesh's pay question</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Ramesh asks: "Why is my first salary lower than my offer letter?" Put Lakshmi's steps in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Decide the type: this is a personal question, because it needs Ramesh's own pay record.</li>
              <li data-order="2">Reply privately: "Thanks, Ramesh. Payroll will check and reply by tomorrow."</li>
              <li data-order="3">Payroll checks his record in the HRMS: joining date, days paid and deductions.</li>
              <li data-order="4">Use AI to draft a simple explanation with placeholders, not his real details.</li>
              <li data-order="5">Check the maths in a spreadsheet and fill in the real numbers.</li>
              <li data-order="6">Send the reply to Ramesh privately, in Telugu if he prefers.</li>
              <li data-order="7">Add a general answer, "Why is my first salary lower?", to the new joiner FAQ.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask the AI to answer three common questions from a made-up policy. One needs a calculation, and one is personal and must be sent to payroll.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an HR helpdesk writer at [Swift Mart, an online grocery company in Seattle].
        Answer 3 employee questions using ONLY this policy (made up for practice):
        [- Earned leave: 15 days a year, added at 1.25 days a month. Up to 30 days carry forward.
        - Casual and sick leave: 12 days a year. No carry forward.
        - Apply in the HR app at least 3 days before.
        - First month's pay: monthly gross x days worked / days in the month.
        - Pay day: the 7th of every month.]
        Questions:
        1. [Can I carry forward my casual leave?]
        2. [I joined on 5 October. My monthly gross is Rs 22,000. What will my October gross pay be?]
        3. [Why was Rs 1,800 taken from my pay for EPF?]
        Rules:
        - Simple English, under 80 words each, one next step.
        - For any calculation, show each step.
        - If a question needs the person's own records or a legal rate, do not guess. Say payroll will check.
        - Do not state any legal rates, limits or laws.
        Last, rewrite answer 1 in [Telugu], and list anything a person should check before sending.</pre>
            <ul class="ai-try-checks">
              <li>Answer 1 says casual leave cannot be carried forward.</li>
              <li>Answer 2 counts 27 days and divides by 31 days, giving about Rs 19,161.</li>
              <li>Answer 3 does not state an EPF rate. It sends the question to payroll.</li>
              <li>No answer adds a rule that is not in the policy.</li>
              <li>A Telugu speaker should check the translation before it is sent.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> For pay and leave, a correct answer matters more than a fast one. Let AI write clear words from your own policy. Check every number yourself, and send personal questions to payroll in a private, secure channel.
        </div>
      HTML
      starter_code: nil
    },
    9 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-hr">HR & Recruitment</div>
          <h1 class="lc-title">Manager Support</h1>
        </div>
        <p class="lc-lead">People's days at work depend a lot on their manager. Many managers are promoted because they are good at their own work. Nobody teaches them how to run a check-in or give feedback. HR can help by giving managers simple tools. In this lesson, you will use AI to plan one-to-one meetings and draft fair feedback. You will also write specific recognition messages and prepare for difficult conversations. AI drafts and plans. The manager checks the facts, uses their own words and makes every decision.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 250" role="img" aria-label="Four manager tasks. For a one-to-one agenda, AI suggests questions and the manager adds real updates. For feedback, AI shapes notes into situation, behaviour and impact, and the manager checks every fact. For recognition, AI drafts a message and the manager adds specific details. For a hard conversation, AI plans and role-plays, the manager listens first, and HR joins if it is serious. Below, the manager owns every word, fact and decision.">
            <defs><marker id="ex9a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="10" y="20" width="172" height="130" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="96" y="46" font-weight="700" fill="#93c5fd">1:1 agenda</text>
              <rect x="196" y="20" width="172" height="130" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="282" y="46" font-weight="700" fill="#fcd34d">Feedback (SBI)</text>
              <rect x="382" y="20" width="172" height="130" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="468" y="46" font-weight="700" fill="#6ee7b7">Recognition</text>
              <rect x="568" y="20" width="172" height="130" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="654" y="46" font-weight="700" fill="#f9a8d4">Hard talk prep</text>
              <g font-size="11.5">
                <text x="96" y="76">AI: suggests questions</text><text x="96" y="100">You: add real updates</text><text x="96" y="124" fill="#9b99b8">Ask more, talk less</text>
                <text x="282" y="76">AI: shapes your notes</text><text x="282" y="100">You: check every fact</text><text x="282" y="124" fill="#9b99b8">No labels like "lazy"</text>
                <text x="468" y="76">AI: drafts the message</text><text x="468" y="100">You: add the detail</text><text x="468" y="124" fill="#9b99b8">Public or private?</text>
                <text x="654" y="76">AI: plans, role-plays</text><text x="654" y="100">You: listen first</text><text x="654" y="124" fill="#9b99b8">HR joins if serious</text>
              </g>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ex9a)">
                <line x1="96" y1="152" x2="96" y2="170"/><line x1="282" y1="152" x2="282" y2="170"/><line x1="468" y1="152" x2="468" y2="170"/><line x1="654" y1="152" x2="654" y2="170"/>
              </g>
              <rect x="10" y="174" width="730" height="62" rx="10" fill="#27274e" stroke="#8b5cf6"/>
              <text x="375" y="200" font-weight="700">The manager owns every word, every fact and every decision.</text>
              <text x="375" y="222" font-size="11.5" fill="#9b99b8">Never paste health details or disciplinary records into public AI tools.</text>
            </g>
          </svg>
          <figcaption>AI helps a manager prepare. The real conversation, and every decision, stays with the manager.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>One-to-one meetings</h3>
          <p>A <strong>one-to-one</strong> (1:1) is a regular, private talk between a manager and one team member. It is the employee's meeting. It is about their work, problems and growth, not only status updates.</p>
          <p>At Swift Mart, Priya manages Sana in the office. Their day-30 check-in is on Tuesday 3 November 2026. Venkat is Ramesh's shift lead in the warehouse. He has no meeting room, so he does a 10-minute check-in at the start of a shift each week. Lakshmi gives both managers the same kind of prompt:</p>
          <pre><code>I manage [a new office analyst] who joined 30 days ago.
        Suggest an agenda for a 30-minute one-to-one.
        Include: 5 open questions about her first month, one question about
        what is confusing, one about support she needs, and time for her topics.
        Put her topics first. Keep my talking time short.</code></pre>
          <p>A good AI agenda might start with "What has gone better than you expected?" and "What is still confusing?". Priya then adds real items: Sana's first report, and her access to the sales dashboard. The AI cannot know these. For Venkat, the same prompt with "10 minutes, standing, at shift start" gives three short questions instead of a long list.</p>
        </div>
        <div class="lc-card">
          <h3>Feedback that is fair and specific</h3>
          <p>Good feedback describes what happened, not what the person "is". A simple model is <strong>SBI</strong>: Situation (when and where), Behaviour (what the person did, that anyone could see) and Impact (what happened because of it).</p>
          <table class="lc-table">
            <thead><tr><th>Weak feedback</th><th>SBI feedback</th></tr></thead>
            <tbody>
              <tr><td>"Good job, keep it up."</td><td>"On Tuesday's morning shift (13 Oct), you spotted three damaged milk crates before dispatch and set them aside. Because of that, customers got fresh stock and we had no returns from that batch."</td></tr>
              <tr><td>"You are careless with reports."</td><td>"In Friday's sales report, two city totals did not match the dashboard. The regional team noticed first. Let's look at how you check totals before sending."</td></tr>
            </tbody>
          </table>
          <p>AI is useful for turning rough notes into SBI form. Give it only the facts you saw. Here is a prompt that keeps the AI to the facts:</p>
          <pre><code>Turn my notes into feedback using Situation, Behaviour, Impact.
        Use only the facts in my notes. Do not guess reasons or feelings.
        Do not use labels such as lazy, careless or rude.
        End with one open question I can ask the person.
        Notes: [Friday sales report. Seattle and London totals did not
        match the dashboard. Regional team found it first.]</code></pre>
          <p>Then check the draft. Is every fact true? Would you say these words out loud? Change the draft until it sounds like you.</p>
        </div>
        <div class="lc-card">
          <h3>Recognition messages</h3>
          <p><strong>Recognition</strong> means thanking people for specific work. AI can write fast, but it writes generic praise such as "Thanks for your amazing dedication!". Nobody feels seen by that. Give the AI the details:</p>
          <pre><code>Write a short thank-you message (under 60 words) from a shift lead
        to a new warehouse associate. Simple, warm, not over the top.
        What he did: [spotted 3 damaged milk crates before dispatch on 13 Oct]
        Why it mattered: [customers got fresh stock, no returns]
        Also write a one-line version for the team WhatsApp group.</code></pre>
          <p>Before you post it, ask the person how they like to be thanked. Some people enjoy public praise. Others prefer a private message. Also check that recognition is fair across your team. Do not always thank the same few people.</p>
        </div>
        <div class="lc-card">
          <h3>Preparing for a difficult conversation</h3>
          <p>In his third week, Ramesh came late three times: on 19, 21 and 23 October. Venkat must talk to him. He is nervous and wants to prepare. AI can help him in four ways:</p>
          <ul class="lc-list">
            <li><strong>List the facts:</strong> dates and times from the attendance record, nothing more.</li>
            <li><strong>Plan the opening:</strong> one calm sentence that states the facts and asks what is happening.</li>
            <li><strong>Plan questions:</strong> open questions that help Venkat listen first.</li>
            <li><strong>Role-play:</strong> the AI plays Ramesh, so Venkat can practise his words.</li>
          </ul>
          <p>AI must not guess why Ramesh is late. It must not suggest a warning or any other action. Those decisions follow Swift Mart's policy, with HR. If Ramesh shares a health or family problem, Venkat does not type it into an AI tool. He talks to Lakshmi.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: Venkat prepares a difficult talk</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="tool" data-label="Attendance record">Venkat opens the HRMS attendance page. Ramesh clocked in at 6:25, 6:40 and 6:30 am on 19, 21 and 23 October. The shift starts at 6:00 am.</li>
              <li data-kind="user" data-label="Venkat's prompt">Help me prepare a 10-minute talk with a new warehouse associate who came late 3 times in week 3. Facts only: [dates and times]. Plan an opening, 4 open questions and a way to agree next steps. No guesses about reasons.</li>
              <li data-kind="answer" data-label="AI plan">Opening: "I've noticed you came in after 6:00 on three days this week. I wanted to check how things are going." Questions include: "What makes the early start hard?" and "What would help?"</li>
              <li data-kind="warn" data-label="Problem in the draft">One suggested line says: "You clearly don't take this job seriously." This is a judgement, not a fact. Venkat deletes it.</li>
              <li data-kind="thought" data-label="Role-play">Venkat asks the AI to play Ramesh, a little defensive. He practises his opening twice and learns to pause after his question.</li>
              <li data-kind="check" data-label="Check with HR">Venkat asks Lakshmi what the attendance policy says, and what options exist, such as a shift change.</li>
              <li data-kind="result" data-label="The real talk">Ramesh explains that the shared van from Kompally often leaves late. Venkat and Lakshmi talk to the admin team about the van. Ramesh agrees to message Venkat if the van is late again.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Use AI to prepare for a difficult conversation with made-up facts. Then practise it with a role-play.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a coach for new people managers. Help me prepare a difficult conversation.
        My role: [shift lead in a grocery warehouse in Seattle].
        Team member: [a warehouse associate who joined 3 weeks ago].
        Facts (made up, from records only): [came in 25 to 40 minutes after the 6:00 am shift start on 3 days this week].
        Company policy: [attendance problems are first discussed informally. Formal steps need HR].
        Please give me:
        1. The goal of the talk in one sentence.
        2. An opening of 2 to 3 sentences using Situation, Behaviour, Impact. Facts only.
        3. Four open questions that help me listen.
        4. Two possible next steps we could agree on together.
        5. Three things I should NOT say, and why.
        6. When I should stop and involve HR.
        Rules: Do not guess the reason. Do not use labels such as lazy. Do not suggest any warning or punishment.
        Then ask me if I want to practise. If I say yes, play the team member. Be a little defensive, and give me feedback on my words after 4 turns.</pre>
            <ul class="ai-try-checks">
              <li>The opening states only facts: days and times, not judgements.</li>
              <li>The questions are open (they start with what, how or tell me), not yes or no.</li>
              <li>The AI does not guess a reason or suggest a punishment.</li>
              <li>It says to involve HR for formal steps, health issues or anything serious.</li>
              <li>The words sound like something you would really say. Change them if not.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> AI helps managers prepare, not replace the talk. Give it facts, not opinions. Use it to plan questions and practise. Then listen, use your own words, and bring in HR for any formal decision.
        </div>
      HTML
      starter_code: nil
    },
    10 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-hr">HR & Recruitment</div>
          <h1 class="lc-title">Employee Surveys</h1>
        </div>
        <p class="lc-lead">Surveys help you hear from everyone, not only the people who speak up. A good survey asks clear questions, protects people's privacy and leads to real action. A bad survey wastes time and makes people cynical: "They ask every year, and nothing changes." In this lesson, you will plan engagement and pulse surveys, and write good questions with AI. You will also protect anonymity and work out response rates. Finally, you will learn to plan for enough people to answer.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 290" role="img" aria-label="A six-step survey cycle: set the goal, write questions, protect privacy, send and remind, share results, act and tell, then back to the start. Below, a bar chart of made-up response rates in the Swift Mart September pulse survey: office 114 of 150 is 76 percent, warehouse and delivery 288 of 450 is 64 percent, all staff 402 of 600 is 67 percent.">
            <defs><marker id="ex10a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12.5" fill="#e2e0f0" text-anchor="middle">
              <rect x="10" y="20" width="108" height="60" rx="10" fill="#1f1f44" stroke="#3b82f6"/><text x="64" y="45">Set the goal</text><text x="64" y="65" font-size="11" fill="#9b99b8">one clear aim</text>
              <rect x="136" y="20" width="108" height="60" rx="10" fill="#1f1f44" stroke="#8b5cf6"/><text x="190" y="45" font-size="12">Write questions</text><text x="190" y="65" font-size="11" fill="#9b99b8">short, simple</text>
              <rect x="262" y="20" width="108" height="60" rx="10" fill="#1f1f44" stroke="#ec4899"/><text x="316" y="45" font-size="12">Protect privacy</text><text x="316" y="65" font-size="11" fill="#9b99b8">5+ per group</text>
              <rect x="388" y="20" width="108" height="60" rx="10" fill="#1f1f44" stroke="#22d3ee"/><text x="442" y="45">Send + remind</text><text x="442" y="65" font-size="11" fill="#9b99b8">QR, languages</text>
              <rect x="514" y="20" width="108" height="60" rx="10" fill="#1f1f44" stroke="#f59e0b"/><text x="568" y="45">Share results</text><text x="568" y="65" font-size="11" fill="#9b99b8">quickly, openly</text>
              <rect x="640" y="20" width="108" height="60" rx="10" fill="#1f1f44" stroke="#10b981"/><text x="694" y="45">Act + tell</text><text x="694" y="65" font-size="11" fill="#9b99b8">you said, we did</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#ex10a)">
                <line x1="119" y1="50" x2="132" y2="50"/><line x1="245" y1="50" x2="258" y2="50"/><line x1="371" y1="50" x2="384" y2="50"/><line x1="497" y1="50" x2="510" y2="50"/><line x1="623" y1="50" x2="636" y2="50"/>
                <path d="M694,82 L694,96 L64,96 L64,86"/>
              </g>
              <rect x="10" y="112" width="737" height="166" rx="12" fill="#1f1f44" stroke="#4b4a78"/>
              <text x="378" y="138" font-weight="700" fill="#c4b5fd">September pulse: responses ÷ people invited (made up)</text>
              <g text-anchor="start" font-size="12.5">
                <text x="30" y="178">Office: 114 of 150</text>
                <text x="30" y="214">Warehouse &amp; delivery: 288 of 450</text>
                <text x="30" y="250" font-weight="700">All staff: 402 of 600</text>
                <rect x="290" y="164" width="289" height="20" rx="4" fill="#3b82f6"/><text x="587" y="178">76%</text>
                <rect x="290" y="200" width="243" height="20" rx="4" fill="#f59e0b"/><text x="541" y="214">64%</text>
                <rect x="290" y="236" width="255" height="20" rx="4" fill="#10b981"/><text x="553" y="250" font-weight="700">67%</text>
              </g>
            </g>
          </svg>
          <figcaption>A survey is a cycle, not a one-off. Look at response rates by group: here, fewer warehouse staff answered, so their views may be missing.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Three kinds of survey</h3>
          <table class="lc-table">
            <thead><tr><th>Survey</th><th>What it is</th><th>Swift Mart example</th></tr></thead>
            <tbody>
              <tr><td><strong>Engagement survey</strong></td><td>A longer survey, often once a year. It asks how people feel about their work, manager and company.</td><td>All 600 staff, every January, about 25 questions</td></tr>
              <tr><td><strong>Pulse survey</strong></td><td>A short survey, sent often, on one or two topics</td><td>5 questions after the new shift roster starts</td></tr>
              <tr><td><strong>Lifecycle survey</strong></td><td>A survey at a key moment in the employee journey, such as onboarding or exit</td><td>New joiners at day 7 and day 30</td></tr>
            </tbody>
          </table>
          <p>Ramesh and Sana joined with 10 other people on 5 October. Their day-30 onboarding pulse goes out on Tuesday 3 November. Lakshmi keeps it to 6 questions. It must take under 5 minutes on a phone.</p>
        </div>
        <div class="lc-card">
          <h3>Writing good questions</h3>
          <p>Most survey questions are statements. People answer on a 5-point scale: Strongly disagree, Disagree, Neutral, Agree, Strongly agree. Add one or two open questions, where people type their own answer. Good questions follow a few rules:</p>
          <table class="lc-table">
            <thead><tr><th>Problem</th><th>Weak question</th><th>Better question</th></tr></thead>
            <tbody>
              <tr><td>Two questions in one</td><td>"My pay and my manager are fair."</td><td>Ask two questions: one about pay, one about the manager.</td></tr>
              <tr><td>Leading (pushes one answer)</td><td>"Don't you agree the new canteen is great?"</td><td>"The canteen meets my needs during my shift."</td></tr>
              <tr><td>Vague</td><td>"Communication is good."</td><td>"I get shift changes at least 2 days before."</td></tr>
              <tr><td>Jargon</td><td>"Rate our EVP and L&amp;D offering."</td><td>"I have learned new skills in the last 3 months."</td></tr>
              <tr><td>Asks about the future</td><td>"Will you stay here for 5 years?"</td><td>"I see myself working here in a year's time."</td></tr>
            </tbody>
          </table>
          <p>AI is good at this work. It can draft questions from your goal, rewrite them in simple words, spot leading or double questions, and translate them. Here is a useful checking prompt:</p>
          <pre><code>Check these survey questions for: two questions in one, leading words,
        jargon, vague words, and anything that could identify a person.
        For each problem, explain it in one line and suggest a better version.
        Readers include warehouse staff who read Telugu or Hindi.
        [paste your questions]</code></pre>
          <p>A person still decides what to ask. Ask only about things you are ready to act on. If you ask about the canteen, be ready to change something about the canteen.</p>
        </div>
        <div class="lc-card">
          <h3>Anonymity and privacy</h3>
          <p><strong>Anonymous</strong> means nobody, not even HR, can link an answer to a person. <strong>Confidential</strong> means HR can link answers to people but promises not to share them. Tell people clearly which one your survey is. Never call a survey anonymous if it is not.</p>
          <ul class="lc-list">
            <li><strong>Set a minimum group size.</strong> Do not show results for any group with fewer answers than your minimum. Many teams choose 5 or more. Many survey tools can hide small groups for you. Check your tool's current help pages.</li>
            <li><strong>Ask few personal questions.</strong> "Night shift + woman + age 50+" may describe one person at one warehouse. Ask only what you need.</li>
            <li><strong>Watch the comments.</strong> People sometimes write names or details that identify them. Remove these before you share comments.</li>
            <li><strong>Public AI tools:</strong> do not paste raw survey data with names, employee IDs or small-group labels. Use your company's approved tools. Under India's DPDP Act 2023, survey answers linked to people are personal data. This is not legal advice. Check with HR legal counsel.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Response rates</h3>
          <p>The <strong>response rate</strong> is the share of invited people who answered: responses ÷ people invited × 100. In a spreadsheet, put invited in column B and responses in column C. Then use:</p>
          <pre><code>=C2/B2        (format the cell as a percentage)</code></pre>
          <p>In Swift Mart's September 2026 pulse survey (made-up numbers), 114 of 150 office staff answered: 76%. Only 288 of 450 warehouse and delivery staff answered: 64%. Overall, 402 of 600 answered: 67%. The overall number looks fine. But it hides that warehouse voices are under-represented. So Lakshmi plans the next survey for shift workers:</p>
          <ul class="lc-list">
            <li>Give 10 minutes of paid time at the start of a shift to answer.</li>
            <li>Put a QR code on the notice board and send the link on WhatsApp.</li>
            <li>Offer Telugu, Hindi and English versions, checked by native speakers.</li>
            <li>Keep it short and phone-friendly.</li>
            <li>Before the survey, share what changed after the last one.</li>
          </ul>
          <p>The last point matters most. People answer when they believe someone will act. Share results within a few weeks. Then tell people what you will change, and what you cannot change and why.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: fix the survey</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Lakshmi is checking a draft pulse survey for Swift Mart. Sort each item.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="good" data-label="Good as it is"></div>
              <div data-sorter-target="bucket" data-bucket="fix" data-label="Rewrite the question"></div>
              <div data-sorter-target="bucket" data-bucket="privacy" data-label="Risk to anonymity"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="good" data-why="It is one clear idea, about something HR can act on, and easy to answer on a scale.">The new shift roster gives me enough rest between shifts.</li>
              <li data-bucket="good" data-why="An open question about one topic. It gives specific ideas HR can use.">What is one thing that would have made your first week easier?</li>
              <li data-bucket="fix" data-why="This asks about two things. If someone disagrees, you cannot tell if it is the pay or the manager.">I am happy with my pay and my manager.</li>
              <li data-bucket="fix" data-why="The words push people to agree. Use a neutral statement instead.">Don't you agree the new canteen is great?</li>
              <li data-bucket="fix" data-why="EVP and L&amp;D are HR jargon. Most staff will not know what they mean.">Rate our EVP and L&amp;D offering.</li>
              <li data-bucket="privacy" data-why="Shift, gate and age together can point to one person. Ask only the details you truly need.">Which shift and gate do you work at, and what is your age?</li>
              <li data-bucket="privacy" data-why="Only 4 people are in this group. Their answers could be linked to them. Combine it with a bigger group.">Show results for the 4-person night team at the cold room.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask the AI to design a short onboarding pulse survey for new joiners. Then check the questions against this lesson's rules.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an employee survey designer. Design a day-30 onboarding pulse survey.
        Company: [Swift Mart, an online grocery company in Seattle].
        Who answers: [12 new joiners, both warehouse associates on shifts and office staff]. Many answer on a phone. Some prefer Telugu or Hindi.
        Goal: [find out what helped and what was confusing in the first month, so HR can improve onboarding].
        Please give me:
        1. 6 statements on a 5-point agree scale, each about one idea only.
        2. 2 open questions.
        3. A short intro message (under 50 words) that says whether the survey is anonymous or confidential, and how long it takes.
        4. The Telugu version of question 1, marked "to be checked by a native speaker".
        5. A privacy plan: which groups are too small to report on their own, and what to do about it.
        6. 3 ways to get a good response rate from shift workers.
        Rules: no jargon, no leading words, no questions that could identify a person. Ask nothing about health, religion or caste.</pre>
            <ul class="ai-try-checks">
              <li>Each statement covers one idea only, with no "and" joining two topics.</li>
              <li>No question pushes people towards an answer.</li>
              <li>The privacy plan notices that 12 joiners, split by role, makes very small groups.</li>
              <li>The intro does not promise anonymity that the tool cannot give.</li>
              <li>A Telugu speaker checks the translation before use.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A survey is a promise to listen. Ask clear questions, protect small groups, and look at who did not answer. Then act on the results and tell people what changed, or the next survey will get fewer answers.
        </div>
      HTML
      starter_code: nil
    },
    11 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-hr">HR & Recruitment</div>
          <h1 class="lc-title">Analysing Survey Comments with AI</h1>
        </div>
        <p class="lc-lead">Survey scores tell you <em>what</em> people feel. Comments tell you <em>why</em>. But reading 173 comments by hand takes a full day. In this lesson, you will use AI to group comments into themes, count them, pick fair example quotes and flag urgent comments. You will also learn the checks that stop a wrong AI summary from reaching leaders. Most important of all, you will learn to protect anonymity in small groups.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="Five steps: export 173 comments, remove names and IDs, AI tags themes, a person checks 30 comments by hand, then report only groups of 5 or more. Below, a theme bar chart and a small-group check that merges a group of 4 into a larger group.">
            <defs><marker id="ex11a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="12" y="20" width="132" height="64" rx="10" fill="#1f1f44" stroke="#3b82f6"/><text x="78" y="46" font-weight="700">1. Export</text><text x="78" y="68" font-size="11" fill="#9b99b8">173 comments</text>
              <rect x="161" y="20" width="132" height="64" rx="10" fill="#1f1f44" stroke="#8b5cf6"/><text x="227" y="46" font-weight="700">2. Clean</text><text x="227" y="68" font-size="11" fill="#9b99b8">remove names, IDs</text>
              <rect x="310" y="20" width="132" height="64" rx="10" fill="#1f1f44" stroke="#22d3ee"/><text x="376" y="46" font-weight="700">3. AI tags</text><text x="376" y="68" font-size="11" fill="#9b99b8">themes, sentiment</text>
              <rect x="459" y="20" width="132" height="64" rx="10" fill="#1f1f44" stroke="#f59e0b"/><text x="525" y="46" font-weight="700">4. You check</text><text x="525" y="68" font-size="11" fill="#9b99b8">read 30 by hand</text>
              <rect x="608" y="20" width="132" height="64" rx="10" fill="#1f1f44" stroke="#10b981"/><text x="674" y="46" font-weight="700">5. Report</text><text x="674" y="68" font-size="11" fill="#9b99b8">groups of 5+ only</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ex11a)"><line x1="146" y1="52" x2="158" y2="52"/><line x1="295" y1="52" x2="307" y2="52"/><line x1="444" y1="52" x2="456" y2="52"/><line x1="593" y1="52" x2="605" y2="52"/></g>
              <rect x="12" y="104" width="440" height="186" rx="10" fill="#1f1f44" stroke="#4b4a78"/>
              <text x="232" y="128" font-weight="700" font-size="12.5">Main theme per comment (173 comments)</text>
              <g font-size="11.5" text-anchor="start">
                <text x="26" y="156">Shift rosters</text><rect x="150" y="146" width="210" height="13" rx="3" fill="#8b5cf6"/><text x="366" y="156">52 (30%)</text>
                <text x="26" y="178">Pay and payslips</text><rect x="150" y="168" width="154" height="13" rx="3" fill="#3b82f6"/><text x="310" y="178">38 (22%)</text>
                <text x="26" y="200">Breaks and heat</text><rect x="150" y="190" width="126" height="13" rx="3" fill="#22d3ee"/><text x="282" y="200">31 (18%)</text>
                <text x="26" y="222">Manager behaviour</text><rect x="150" y="212" width="105" height="13" rx="3" fill="#ec4899"/><text x="261" y="222">26 (15%)</text>
                <text x="26" y="244">Training, growth</text><rect x="150" y="234" width="70" height="13" rx="3" fill="#f59e0b"/><text x="226" y="244">17 (10%)</text>
                <text x="26" y="266">Other</text><rect x="150" y="256" width="35" height="13" rx="3" fill="#10b981"/><text x="191" y="266">9 (5%)</text>
              </g>
              <rect x="470" y="104" width="278" height="186" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="609" y="128" font-weight="700" font-size="12.5" fill="#fcd34d">Small-group check</text>
              <text x="609" y="158" font-size="12">Uppal night shift: 4 replies</text>
              <text x="609" y="180" font-size="12" fill="#fca5a5">Too small to report alone</text>
              <line x1="609" y1="192" x2="609" y2="216" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ex11a)"/>
              <text x="609" y="238" font-size="12" fill="#6ee7b7">Merge into "All night shifts"</text>
              <text x="609" y="260" font-size="11" fill="#9b99b8">now 61 replies, safe to show</text>
            </g>
          </svg>
          <figcaption>AI does the sorting and counting. A person checks the work and protects anonymity before anything is shared.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The example: Swift Mart's September pulse survey</h3>
          <p>Swift Mart is an online grocery company in Seattle with about 600 staff. Lakshmi, the HR business partner, ran a short pulse survey (a quick survey of 8 to 12 questions) in September 2026. These numbers are made up for this lesson.</p>
          <table class="lc-table">
            <thead><tr><th>Group</th><th>Invited</th><th>Answered</th><th>Response rate</th></tr></thead>
            <tbody>
              <tr><td>Warehouse and delivery</td><td>450</td><td>288</td><td>288 ÷ 450 = 64%</td></tr>
              <tr><td>Office</td><td>150</td><td>114</td><td>114 ÷ 150 = 76%</td></tr>
              <tr><td><strong>All staff</strong></td><td>600</td><td>402</td><td>402 ÷ 600 = 67%</td></tr>
            </tbody>
          </table>
          <p>Of the 402 people who answered, 173 wrote a comment. The comments are in English, Hindi, Telugu and Hinglish (Hindi and English mixed). That is too many to read carefully in one sitting. It is a good job for AI, if you prepare the data first.</p>
          <p><strong>Before you paste anything:</strong></p>
          <ul class="lc-list">
            <li>Use only an AI tool your company has approved for employee data. Do not use a free public chatbot.</li>
            <li>Remove names, employee IDs, phone numbers and email addresses.</li>
            <li>Remove columns you do not need, such as exact age or joining date. Keep only a broad group, such as "Warehouse" or "Office".</li>
            <li>In India, the DPDP Act 2023 (Digital Personal Data Protection Act) covers employee personal data. This is general information, not legal advice. Check your process with HR legal counsel.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>A weak prompt and a better prompt</h3>
          <pre><code>Weak:
        Summarise these comments.</code></pre>
          <p>This gives a vague paragraph. You cannot check it, and it may invent themes.</p>
          <pre><code>Better:
        You are helping an HR team read anonymous survey comments.
        Each line starts with a comment number and a group (Warehouse or Office).
        1. Give each comment ONE main theme from this list:
           Shift rosters, Pay and payslips, Breaks and heat,
           Manager behaviour, Training and growth, Other.
        2. Show a table: comment number, theme, sentiment
           (positive, mixed, negative).
        3. Count comments per theme. The counts must add up to
           the number of comments.
        4. For each theme, give 1 short quote. Change any detail
           that could identify a person.
        5. List any comment about safety, harassment or self-harm
           separately. Do not summarise it. Write only "Needs
           HR review: comment [number]".
        Do not guess reasons that are not in the comments.</code></pre>
          <p>A fixed theme list makes counts easier to compare from one survey to the next. The comment numbers let you check each tag. Sentiment (whether the comment sounds positive or negative) is only a rough guide. AI often misreads sarcasm and mixed languages.</p>
        </div>
        <div class="lc-card">
          <h3>Checks you must do yourself</h3>
          <table class="lc-table">
            <thead><tr><th>Check</th><th>How</th></tr></thead>
            <tbody>
              <tr><td>Do the counts add up?</td><td>52 + 38 + 31 + 26 + 17 + 9 = 173. If the AI's total is different, it skipped or double-counted comments.</td></tr>
              <tr><td>Are the tags right?</td><td>Read about 30 comments yourself. Compare your theme with the AI's theme. If many differ, fix the theme list and run it again.</td></tr>
              <tr><td>Are the quotes real?</td><td>Find each quote in the original comments. AI sometimes "improves" or invents quotes.</td></tr>
              <tr><td>Is the summary fair?</td><td>"Staff are angry about managers" is wrong if only 26 of 173 comments (15%) mention managers.</td></tr>
              <tr><td>Can anyone be identified?</td><td>Remove quotes like "as the only woman picker on the Uppal night shift". That describes one person.</td></tr>
            </tbody>
          </table>
          <p><strong>Small-group anonymity.</strong> Even with no names, a small group can reveal who wrote something. If only 4 people from the Uppal night shift answered, their manager may guess who said what. Many companies set a minimum group size, often 5 or more replies, before they show a group's results. Pick your rule before the survey and apply it to comments, scores and quotes. Merge small groups into a larger one, such as "All night shifts".</p>
          <p><strong>Urgent comments.</strong> A comment may describe a safety risk or harassment. Do not let AI summarise or judge it. Send it to the right person under your company policy, such as the safety lead or the Internal Committee for sexual harassment.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: follow Lakshmi's analysis session</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="tool" data-label="Prepare the file">Lakshmi exports the 173 comments into a spreadsheet. She deletes the name, employee ID and exact shift time columns. She keeps a number and a broad group for each comment.</li>
              <li data-kind="user" data-label="Prompt">She pastes the comments into the company-approved AI tool with the "better" prompt: fixed theme list, one theme per comment, counts, quotes and urgent flags.</li>
              <li data-kind="answer" data-label="AI reply">The AI returns a table. Shift rosters: 52, Pay and payslips: 38, Breaks and heat: 31, Manager behaviour: 26, Training and growth: 17, Other: 9. It flags comments 44 and 131 as "Needs HR review".</li>
              <li data-kind="check" data-label="Check the maths">Lakshmi adds the counts: 173. The total matches. She reads 30 comments herself. She agrees with 27 of the 30 tags (90%).</li>
              <li data-kind="warn" data-label="Catch the problem">The AI's summary says "Night staff at Uppal feel unsafe", based on the 4 replies from that shift. That group is below the 5-reply rule. Lakshmi rewrites it as "Some night shift staff raised concerns about travel after late shifts."</li>
              <li data-kind="warn" data-label="Catch the quote">One quote mentions "the new supervisor who joined in August". Only one supervisor joined in August. Lakshmi replaces it with a quote that names no one.</li>
              <li data-kind="check" data-label="Urgent comments">Lakshmi opens comments 44 and 131 herself. Comment 44 is a broken loading ramp, so she sends it to the safety lead the same day. Comment 131 needs a private, careful follow-up under the company's policy.</li>
              <li data-kind="result" data-label="Final report">The leaders see six themes with counts, fair quotes and no group smaller than 5. The raw comments stay with HR.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to sort a set of made-up survey comments into themes. Then check its counts, quotes and anonymity like Lakshmi did.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an HR analyst at [Swift Mart, a grocery app in Seattle]. Here are 12 made-up, anonymous pulse survey comments, each with a number and a group.

        1 Warehouse: Roster comes on Sunday night for Monday.
        2 Office: Good team, but I don't know my growth path.
        3 Warehouse: Payslip codes are hard to understand.
        4 Warehouse: Water cooler near dock 3 broken for 2 weeks.
        5 Delivery: Supervisor shouts in front of customers.
        6 Office: Laptop took 6 days to arrive.
        7 Warehouse: Night shift rest room has no fan.
        8 Delivery: Incentive rules changed, nobody told us.
        9 Warehouse: Shift swaps need 3 approvals.
        10 Office: Hybrid policy is fair. Please keep it.
        11 Delivery: Loading ramp is broken, someone will get hurt.
        12 Warehouse: My trainer was patient, thank you.

        Tasks:
        1. Give each comment ONE theme from: [Shift rosters, Pay and payslips, Breaks and heat, Manager behaviour, Training and growth, Other].
        2. Table: number, group, theme, sentiment (positive, mixed, negative).
        3. Count comments per theme. Show that the total is 12.
        4. Give one short quote per theme, word for word.
        5. List safety or harassment comments only as "Needs HR review: [number]".
        6. Suggest 3 actions, each linked to a theme.</pre>
            <ul class="ai-try-checks">
              <li>The theme counts add up to exactly 12.</li>
              <li>Each quote appears word for word in the comments.</li>
              <li>Comment 11 (and any other safety comment) is flagged, not summarised.</li>
              <li>The summary does not claim "most staff" for a theme with only 1 or 2 comments.</li>
              <li>Nothing in the answer points to one person.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> AI is fast at sorting and counting comments, but it can miscount, invent quotes and expose people in small groups. Give it a fixed theme list and numbered comments so you can check its work. Never report a group below your minimum size.
        </div>
      HTML
      starter_code: nil
    },
    12 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-hr">HR & Recruitment</div>
          <h1 class="lc-title">Wellbeing and Inclusion</h1>
        </div>
        <p class="lc-lead">Wellbeing means people are healthy and safe, and can manage their work and life. Inclusion means every employee can take part fully, whatever their gender, disability, language or background. In this lesson, you will use AI to plan wellbeing ideas and inclusion practices for a mixed workforce. You will also learn the basics of the POSH Act in India, and the clear line where AI must stop and experts must take over.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 290" role="img" aria-label="An employee raises something. Wellbeing or inclusion ideas: AI can draft and HR decides. Health or personal crisis: refer to experts. Sexual harassment concern: no AI, go to the Internal Committee, or the Local Committee in some cases.">
            <defs><marker id="ex12a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="230" y="12" width="300" height="40" rx="10" fill="#27274e" stroke="#8b5cf6"/><text x="380" y="37" font-weight="700">An employee raises something</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#ex12a)"><path d="M300,54 L130,86"/><line x1="380" y1="54" x2="380" y2="86"/><path d="M460,54 L630,86"/></g>
              <rect x="12" y="90" width="236" height="44" rx="10" fill="#1f1f44" stroke="#10b981"/><text x="130" y="117">Wellbeing or inclusion idea</text>
              <rect x="262" y="90" width="236" height="44" rx="10" fill="#1f1f44" stroke="#f59e0b"/><text x="380" y="117">Health or personal crisis</text>
              <rect x="512" y="90" width="236" height="44" rx="10" fill="#1f1f44" stroke="#ec4899"/><text x="630" y="117">Sexual harassment concern</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ex12a)"><line x1="130" y1="136" x2="130" y2="166"/><line x1="380" y1="136" x2="380" y2="166"/><line x1="630" y1="136" x2="630" y2="166"/></g>
              <rect x="12" y="170" width="236" height="80" rx="10" fill="#27274e" stroke="#10b981"/><text x="130" y="197" font-weight="700" fill="#6ee7b7">AI can help draft</text><text x="130" y="220" font-size="12" fill="#9b99b8">ideas, posters, FAQs</text><text x="130" y="238" font-size="12" fill="#9b99b8">HR checks and decides</text>
              <rect x="262" y="170" width="236" height="80" rx="10" fill="#27274e" stroke="#f59e0b"/><text x="380" y="197" font-weight="700" fill="#fcd34d">Refer to experts</text><text x="380" y="220" font-size="12" fill="#9b99b8">doctor, counsellor, EAP</text><text x="380" y="238" font-size="12" fill="#9b99b8">manager stays kind</text>
              <rect x="512" y="170" width="236" height="80" rx="10" fill="#27274e" stroke="#ec4899"/><text x="630" y="197" font-weight="700" fill="#f9a8d4">No AI. Go to the IC</text><text x="630" y="220" font-size="12" fill="#9b99b8">Internal Committee (POSH)</text><text x="630" y="238" font-size="12" fill="#9b99b8">or Local Committee</text>
              <text x="380" y="278" font-size="12" fill="#9b99b8">AI never receives, reads or judges a harassment complaint.</text>
            </g>
          </svg>
          <figcaption>AI is useful for planning and writing. It has no role in medical help or harassment complaints.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Wellbeing and inclusion for a mixed workforce</h3>
          <p>At Swift Mart, about 450 of the 600 staff work shifts in warehouses and on delivery. About 150 work in the office. Their needs are very different. A yoga webinar at 11 am helps office staff. It does nothing for a picker on the night shift.</p>
          <table class="lc-table">
            <thead><tr><th>Need</th><th>Warehouse and delivery staff</th><th>Office staff</th></tr></thead>
            <tbody>
              <tr><td>Physical wellbeing</td><td>Drinking water, cool rest areas, safe lifting, rest breaks</td><td>Good chairs, screen breaks</td></tr>
              <tr><td>Mental wellbeing</td><td>Fair rosters, notice before shift changes, respectful supervisors</td><td>Clear workload, no messages late at night</td></tr>
              <tr><td>Safety</td><td>Safe travel after late shifts, good lighting at the site</td><td>Safe travel after late meetings</td></tr>
              <tr><td>Inclusion</td><td>Notices in Telugu, Hindi and English; voice notes for staff who read less</td><td>Meetings at times that suit parents and carers</td></tr>
            </tbody>
          </table>
          <p><strong>Disability inclusion.</strong> In India, the Rights of Persons with Disabilities Act 2016 sets duties for employers. Every establishment, including private companies, must have an equal opportunity policy. The Act also expects reasonable accommodation (a sensible change that lets a person do their job, such as a ramp or screen-reader software). Some duties are written for government employers, so check which ones apply to you. This is general information, not legal advice. Check the details with HR legal counsel.</p>
          <p>An EAP (employee assistance programme) is a service that gives staff private counselling. If your company has one, share its contact in every wellbeing message.</p>
        </div>
        <div class="lc-card">
          <h3>POSH basics (general information, not legal advice)</h3>
          <p>The POSH Act is India's Sexual Harassment of Women at Workplace (Prevention, Prohibition and Redressal) Act, 2013. Here is a simple, general summary:</p>
          <ul class="lc-list">
            <li><strong>Internal Committee (IC).</strong> An employer with 10 or more employees must set up an IC. A senior woman employee leads it as the Presiding Officer. At least half the members must be women. One member must come from outside, such as an NGO (a non-profit group) that works on women's issues.</li>
            <li><strong>Multiple sites.</strong> Where a company has offices or units in different places, the Act expects an IC at each of them. Swift Mart has many warehouses and an office, so it must check this with legal counsel.</li>
            <li><strong>Local Committee (LC).</strong> The District Officer of each district sets up an LC. It takes complaints from workplaces with fewer than 10 workers. It also takes complaints when the complaint is against the employer.</li>
            <li><strong>Complaints.</strong> A complaint is made in writing within three months of the incident (or of the last incident in a series). The committee can extend this by up to three more months if there was a good reason for the delay.</li>
            <li><strong>Employer duties.</strong> These include a written policy, awareness sessions, displaying the IC members' names, and an annual report.</li>
          </ul>
          <p>Rules and timelines can change, and details matter. Always check the current law and your company policy with HR legal counsel.</p>
          <p><strong>Where AI may help:</strong> drafting an awareness poster, a plain-language summary of your company's POSH policy, or training scenarios. The IC and legal counsel must check every draft.</p>
          <p><strong>Where AI must never be used:</strong> receiving, summarising, analysing or deciding a harassment complaint. Never paste complaint details, names or witness statements into any AI tool. An HR chatbot must not try to answer such a message. It should give the IC's contact details at once.</p>
        </div>
        <div class="lc-card">
          <h3>A better prompt for a wellbeing plan</h3>
          <pre><code>Weak:
        Give me wellbeing ideas for employees.</code></pre>
          <pre><code>Better:
        You are an HR business partner at Swift Mart, an online
        grocery company in Seattle. We have about 450 warehouse
        and delivery staff on day and night shifts, and about 150
        office staff. Our last pulse survey showed these themes:
        breaks and heat (31 comments), shift rosters (52 comments).
        Suggest 6 wellbeing actions for the next 3 months.
        For each: who it helps, cost level (low, medium, high),
        who owns it, and how we will know it worked.
        At least 4 actions must help shift staff.
        Do not suggest anything medical. Say "refer to an expert"
        where a doctor or counsellor is needed.</code></pre>
          <p>Check each idea yourself. Is it possible on a night shift? Is the cost real? Does it respect privacy? For example, "track staff moods with an app" may feel like surveillance. Do not use it without consent and a clear purpose.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: AI, HR or expert?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Lakshmi gets these tasks this week. Who should handle each one?</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="ai" data-label="AI can draft, HR checks"></div>
              <div data-sorter-target="bucket" data-bucket="expert" data-label="Expert or committee only"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="ai" data-why="A poster is general content. AI can draft it in three languages. HR and a native speaker check it.">A heat safety poster for the warehouse in Telugu, Hindi and English</li>
              <li data-bucket="expert" data-why="This is a harassment complaint. It goes straight to the Internal Committee. No AI tool should see it.">A message from a picker saying a supervisor keeps touching her arm</li>
              <li data-bucket="ai" data-why="A plain-language summary of your own policy is a good AI task, if the IC and legal counsel check it.">A one-page, simple summary of Swift Mart's POSH policy for new joiners</li>
              <li data-bucket="expert" data-why="Signs of a mental health crisis need a trained counsellor or doctor, not an AI plan.">An employee tells their manager they feel hopeless and cannot sleep</li>
              <li data-bucket="ai" data-why="Planning events around festivals and shifts is a drafting task. HR decides the final list.">A calendar of inclusive festival celebrations that suits all shifts</li>
              <li data-bucket="expert" data-why="A request for accommodation needs a private talk with the person and HR. Medical details must not go into AI.">A delivery rider asks for a change of duties after a knee injury</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to draft a short POSH awareness message for shift staff. Then check it against your company policy and the limits above.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are helping the HR team at [Swift Mart, an online grocery company in Seattle with about 450 shift staff and 150 office staff]. Draft a POSH awareness message for [warehouse and delivery staff].

        Rules for the message:
        - Explain in very simple words what sexual harassment at work can include (for example unwelcome touching, comments or messages).
        - Say that the company has an Internal Committee (IC), and that complaints are handled privately.
        - Include these placeholders: [IC Presiding Officer name], [IC phone number], [IC email].
        - Say clearly: "Do not share a complaint with any chatbot. Contact the IC directly."
        - Mention that anyone can ask HR for help making a complaint.
        - Keep it under 120 words. Short sentences.
        - Also give a Telugu and a Hindi version, marked "Draft: check with a native speaker".

        After the message, list 3 points that our HR legal counsel should check before we share it. Do not state legal time limits or penalties as facts. Add a note that this is not legal advice.</pre>
            <ul class="ai-try-checks">
              <li>The message tells people to contact the IC directly, not a chatbot.</li>
              <li>It uses placeholders and does not invent names or phone numbers.</li>
              <li>It makes no legal promises and says it is not legal advice.</li>
              <li>The Telugu and Hindi versions are marked as drafts for a native speaker to check.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Use AI to plan wellbeing and inclusion for each group of staff, especially shift workers. Draw a hard line: AI never touches harassment complaints, medical issues or personal crises. Those go to the Internal Committee or to trained experts.
        </div>
      HTML
      starter_code: nil
    },
    13 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-hr">HR & Recruitment</div>
          <h1 class="lc-title">Recognition and Engagement Ideas</h1>
        </div>
        <p class="lc-lead">Recognition means thanking people for good work in a way they notice. Engagement means how much people care about their work and want to stay. Small, specific thanks often matter more than big prizes. In this lesson, you will use AI to design a recognition programme, write personal thank-you messages and plan team events. You will also learn to keep recognition fair across shifts and sites.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 270" role="img" aria-label="Four rules for recognition: specific, timely, fair and personal. Below, a weak generic thank-you message is compared with a strong specific one for a warehouse worker named Pooja.">
            <defs><marker id="ex13a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="12" y="14" width="172" height="62" rx="10" fill="#1f1f44" stroke="#8b5cf6"/><text x="98" y="40" font-weight="700">Specific</text><text x="98" y="62" font-size="11.5" fill="#9b99b8">name the action</text>
              <rect x="200" y="14" width="172" height="62" rx="10" fill="#1f1f44" stroke="#3b82f6"/><text x="286" y="40" font-weight="700">Timely</text><text x="286" y="62" font-size="11.5" fill="#9b99b8">within a week</text>
              <rect x="388" y="14" width="172" height="62" rx="10" fill="#1f1f44" stroke="#10b981"/><text x="474" y="40" font-weight="700">Fair</text><text x="474" y="62" font-size="11.5" fill="#9b99b8">all shifts, all sites</text>
              <rect x="576" y="14" width="172" height="62" rx="10" fill="#1f1f44" stroke="#f59e0b"/><text x="662" y="40" font-weight="700">Personal</text><text x="662" y="62" font-size="11.5" fill="#9b99b8">in their language</text>
              <rect x="12" y="100" width="330" height="150" rx="10" fill="#1f1f44" stroke="#9b99b8"/>
              <text x="177" y="126" font-weight="700" fill="#fca5a5">Weak</text>
              <text x="177" y="162" font-size="12.5">"Thanks to everyone for</text>
              <text x="177" y="182" font-size="12.5">the hard work this month!"</text>
              <text x="177" y="222" font-size="11" fill="#9b99b8">nobody knows what was good</text>
              <line x1="350" y1="175" x2="404" y2="175" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ex13a)"/>
              <rect x="412" y="100" width="336" height="150" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="580" y="126" font-weight="700" fill="#6ee7b7">Strong</text>
              <text x="580" y="156" font-size="12.5">"Pooja, at 5 am on 12 Sep you</text>
              <text x="580" y="176" font-size="12.5">spotted the cold room alarm.</text>
              <text x="580" y="196" font-size="12.5">You saved 40 orders of milk.</text>
              <text x="580" y="216" font-size="12.5">Thank you!"</text>
              <text x="580" y="238" font-size="11" fill="#9b99b8">says what, when and why it mattered</text>
            </g>
          </svg>
          <figcaption>Good recognition names the action and its effect. AI can help you write it, but you must supply the real facts.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Designing a recognition programme with AI</h3>
          <p>A recognition programme is a planned, regular way to thank people. At Swift Mart, Lakshmi finds a problem. Office staff get praised on the team chat. Warehouse staff on night shifts are almost never mentioned. That is unfair, and it hurts engagement.</p>
          <pre><code>Weak:
        Give me employee recognition ideas.</code></pre>
          <pre><code>Better:
        You are an HR business partner at Swift Mart, an online
        grocery company in Seattle. We have 6 warehouses with
        about 450 staff on day and night shifts, and about 150
        office staff. Many shift staff read on phones and read
        Telugu or Hindi best.
        Design a simple monthly recognition programme.
        Include: 3 award types linked to our values (safety,
        accuracy, helping others), how staff and supervisors
        nominate, who decides, rules to keep it fair across
        shifts and sites, and a monthly budget in rupees.
        Show the budget maths step by step.</code></pre>
          <p>Here is a made-up budget you might get back. Always check the maths yourself.</p>
          <table class="lc-table">
            <thead><tr><th>Item</th><th>Calculation</th><th>Per month</th></tr></thead>
            <tbody>
              <tr><td>Site awards: 3 winners at each of 6 warehouses</td><td>6 × 3 × ₹500 voucher</td><td>₹9,000</td></tr>
              <tr><td>Office awards: 3 winners</td><td>3 × ₹500 voucher</td><td>₹1,500</td></tr>
              <tr><td>Snacks for 6 warehouse shift huddles</td><td>6 × ₹1,000</td><td>₹6,000</td></tr>
              <tr><td><strong>Total</strong></td><td>₹9,000 + ₹1,500 + ₹6,000</td><td><strong>₹16,500</strong></td></tr>
            </tbody>
          </table>
          <p>For a year, that is ₹16,500 × 12 = ₹1,98,000. Check with finance and payroll whether vouchers or gifts have tax effects for staff. This is general information, not tax advice.</p>
        </div>
        <div class="lc-card">
          <h3>Keeping it fair and personal</h3>
          <ul class="lc-list">
            <li><strong>Check who wins.</strong> Each quarter, count winners by site, shift and gender. If the night shift has 20% of staff but 5% of awards, fix the process.</li>
            <li><strong>Base it on facts.</strong> Use real events, such as "zero picking errors for 30 shifts". Do not let AI invent achievements.</li>
            <li><strong>Ask people how they like to be thanked.</strong> Some people enjoy public praise. Others prefer a private word.</li>
            <li><strong>Celebrate milestones.</strong> One-year work anniversaries, finishing a training course, and the first month for new joiners like Ramesh and Sana.</li>
            <li><strong>Make events reach everyone.</strong> Hold team events at shift change times, not only in office hours. Do not make alcohol or late nights part of the main plan.</li>
          </ul>
          <p>AI can turn a supervisor's short note into a warm message. The supervisor should still send it in their own name, and change any line that does not sound like them.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: launch a recognition programme</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put Lakshmi's steps for launching the new monthly awards in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Look at survey comments and past awards to find who is being missed</li>
              <li data-order="2">Ask AI to draft award types, nomination rules and a budget</li>
              <li data-order="3">Check the budget maths and fairness rules, then agree them with site managers and finance</li>
              <li data-order="4">Announce the programme in Telugu, Hindi and English at shift huddles and on the team chat</li>
              <li data-order="5">Collect nominations and let a small panel decide winners using the agreed rules</li>
              <li data-order="6">After 3 months, count winners by site and shift and fix any gaps</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Give AI a supervisor's short note and get back personal recognition messages. Then check that every fact came from you.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are helping a warehouse supervisor at [Swift Mart, an online grocery company in Seattle] write short thank-you messages. Use ONLY the facts below. Do not add achievements, numbers or praise that are not in the notes.

        Supervisor's notes (made-up):
        - [Pooja, picker, night shift]: spotted the cold room alarm at 5 am on 12 Sep, moved 40 milk orders to the backup fridge.
        - [Imran, loader, day shift]: trained 3 new joiners on safe lifting this month.
        - [Kavya, packer, day shift]: zero packing errors for 30 shifts in a row.

        For each person, write:
        1. A team chat message (under 40 words) that says what they did, when, and why it mattered.
        2. The same message in [Telugu], marked "Draft: check with a native speaker".
        3. One idea for a small, low-cost reward under [₹500].

        Keep the tone warm and simple. Write in the supervisor's voice, using "I". No emojis.</pre>
            <ul class="ai-try-checks">
              <li>Every fact (time, date, number) matches the notes exactly.</li>
              <li>No achievement was invented or made bigger.</li>
              <li>Each message is under 40 words and names the specific action.</li>
              <li>Reward ideas stay under the budget you set.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> The best recognition is specific, timely, fair and personal. AI helps you design the programme and write warm messages quickly. You supply the real facts and check that every shift and site gets its fair share.
        </div>
      HTML
      starter_code: nil
    },
    14 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-hr">HR & Recruitment</div>
          <h1 class="lc-title">Exits and Offboarding</h1>
        </div>
        <p class="lc-lead">Offboarding is everything that happens when an employee leaves: from the resignation to the final settlement. A good exit protects company data, passes on knowledge and leaves the person with a good last memory. In this lesson, you will use AI to build exit checklists, write exit interview questions, plan a knowledge handover and read exit trends. You will also learn to calculate the attrition rate correctly.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="An offboarding timeline in four stages: resignation, notice period, last day and after exit, each with three tasks. Below, the attrition rate formula with an example: 66 leavers divided by an average headcount of 440 gives 15 percent.">
            <defs><marker id="ex14a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <line x1="30" y1="30" x2="735" y2="30" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ex14a)"/>
              <circle cx="98" cy="30" r="7" fill="#3b82f6"/><circle cx="286" cy="30" r="7" fill="#8b5cf6"/><circle cx="474" cy="30" r="7" fill="#f59e0b"/><circle cx="662" cy="30" r="7" fill="#10b981"/>
              <rect x="12" y="50" width="172" height="120" rx="10" fill="#1f1f44" stroke="#3b82f6"/><text x="98" y="76" font-weight="700">Resignation</text>
              <g font-size="11.5" fill="#9b99b8"><text x="98" y="102">confirm last day</text><text x="98" y="124">plan the handover</text><text x="98" y="146">tell the team kindly</text></g>
              <rect x="200" y="50" width="172" height="120" rx="10" fill="#1f1f44" stroke="#8b5cf6"/><text x="286" y="76" font-weight="700">Notice period</text>
              <g font-size="11.5" fill="#9b99b8"><text x="286" y="102">knowledge handover</text><text x="286" y="124">train a cover person</text><text x="286" y="146">exit interview</text></g>
              <rect x="388" y="50" width="172" height="120" rx="10" fill="#1f1f44" stroke="#f59e0b"/><text x="474" y="76" font-weight="700">Last day</text>
              <g font-size="11.5" fill="#9b99b8"><text x="474" y="102">return assets</text><text x="474" y="124">remove all access</text><text x="474" y="146">say thank you</text></g>
              <rect x="576" y="50" width="172" height="120" rx="10" fill="#1f1f44" stroke="#10b981"/><text x="662" y="76" font-weight="700">After exit</text>
              <g font-size="11.5" fill="#9b99b8"><text x="662" y="102">final settlement</text><text x="662" y="124">relieving letter</text><text x="662" y="146">alumni group</text></g>
              <rect x="12" y="192" width="736" height="96" rx="10" fill="#27274e" stroke="#ec4899"/>
              <text x="380" y="220" font-weight="700" fill="#f9a8d4">Attrition rate = leavers ÷ average headcount × 100</text>
              <text x="380" y="248" font-size="12.5">Swift Mart warehouse and delivery, Jul to Sep 2026 (made up)</text>
              <text x="380" y="272" font-size="12.5" fill="#6ee7b7">average headcount (420 + 460) ÷ 2 = 440 · 66 ÷ 440 × 100 = 15%</text>
            </g>
          </svg>
          <figcaption>Offboarding has four stages. The attrition rate tells you how fast people are leaving.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Exit checklists with AI</h3>
          <p>Every exit needs a checklist, so nothing is missed. The tasks differ by role. A warehouse associate returns a handheld scanner, safety shoes and an ID card. An office analyst returns a laptop and has access to many systems removed.</p>
          <pre><code>Weak:
        Make an exit checklist.</code></pre>
          <pre><code>Better:
        You are an HR operations lead at Swift Mart, an online
        grocery company in Seattle. Create two exit checklists:
        one for a warehouse associate, one for an office analyst.
        Group the tasks under: Resignation, Notice period,
        Last day, After exit. For each task give an owner
        (HR, manager, IT, admin, payroll) and a due day.
        Include assets, system access, final settlement and a
        relieving letter. Mark tasks that involve personal data.
        Do not state legal time limits. Write "check current
        rule with payroll and legal" instead.</code></pre>
          <p><strong>Final settlement</strong> (full and final pay: last salary, unused leave that can be paid, and other dues) must be paid on time. In India, the Code on Wages sets short time limits for paying final wages when someone resigns or is removed. This is general information, not legal advice. Check the current rules with payroll and HR legal counsel.</p>
          <p><strong>Access removal</strong> matters most for office staff with company data. Remove email, HR system, cloud drive and app access on the last working day. Do not wait a week.</p>
        </div>
        <div class="lc-card">
          <h3>Exit interviews, handover and alumni</h3>
          <p>An <strong>exit interview</strong> is a short, private talk to learn why someone is leaving. AI can draft neutral questions, such as "What would have made you stay?" A person should run the interview. People are more honest with someone who is not their manager.</p>
          <p>You can also use AI to find themes across many exit interviews, as with survey comments. Remove names first. Never report a reason for a group of fewer than 5 leavers. With so few people, the manager may guess who said what.</p>
          <p>A <strong>knowledge handover</strong> passes on what the leaver knows. Ask the leaver to list their tasks, contacts, files and "things only I know". AI can turn their rough notes into a clear handover document. The manager must check it with the leaver before the last day.</p>
          <p>An <strong>alumni group</strong> keeps in touch with former staff. Good leavers may return or refer friends. Get their consent before you add them. Keep only the contact details they agree to share.</p>
        </div>
        <div class="lc-card">
          <h3>Worked example: attrition at Swift Mart</h3>
          <p>The attrition rate is the share of staff who left in a period. Here are made-up numbers for Swift Mart's warehouse and delivery staff for the quarter July to September 2026. The 66 leavers include the 27 who left in September.</p>
          <table class="lc-table">
            <thead><tr><th>Item</th><th>Number</th></tr></thead>
            <tbody>
              <tr><td>Headcount on 1 July</td><td>420</td></tr>
              <tr><td>Headcount on 30 September</td><td>460</td></tr>
              <tr><td>Average headcount</td><td>(420 + 460) ÷ 2 = 440</td></tr>
              <tr><td>Leavers in the quarter (July to September)</td><td>66</td></tr>
              <tr><td><strong>Quarterly attrition rate</strong></td><td>66 ÷ 440 × 100 = <strong>15%</strong></td></tr>
            </tbody>
          </table>
          <p>If this pace continued for a year, the rough yearly rate would be 15% × 4 = 60%. That is only an estimate. Always say which period and which group a rate covers.</p>
          <p>In a spreadsheet, you can use <code>=66/((420+460)/2)</code> and format the cell as a percentage. AI often divides by the starting headcount only, or mixes up quarterly and yearly rates. Always check its maths.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: when does each exit task happen?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">An office analyst at Swift Mart has resigned. Sort each task into the right stage.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="notice" data-label="Notice period"></div>
              <div data-sorter-target="bucket" data-bucket="last" data-label="Last day"></div>
              <div data-sorter-target="bucket" data-bucket="after" data-label="After exit"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="notice" data-why="The handover needs time. The leaver and manager should check it together before the last day.">Write a handover document for the weekly sales report</li>
              <li data-bucket="last" data-why="Access to company data should end on the last working day, not later.">Remove email, HR system and cloud drive access</li>
              <li data-bucket="after" data-why="Final pay is worked out after the last day, within the time limit the law and company policy set.">Pay the full and final settlement</li>
              <li data-bucket="notice" data-why="An exit interview works best before the person leaves, while details are fresh.">Hold a private exit interview with HR</li>
              <li data-bucket="last" data-why="Assets like the laptop and ID card are collected before the person walks out.">Collect the laptop and ID card</li>
              <li data-bucket="after" data-why="Only add people to the alumni group after they leave, and only with their consent.">Invite them to the alumni group, with consent</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to turn a leaver's rough notes into a handover document. Then check that nothing was invented.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an HR business partner at [Swift Mart, an online grocery company in Seattle]. An [office analyst] is leaving on [Fri 30 Oct]. Turn their rough notes into a clear knowledge handover document.

        Rough notes (made-up):
        - weekly sales report every Mon 10am, data from the orders dashboard, send to ops heads
        - supplier price file updated on 1st of month, ask Ravi in purchase for the new rates
        - fix: dashboard breaks when a new store is added, update the store list tab first
        - monthly shrinkage report, half done, template in the shared drive "Reports/Shrinkage"
        - vendor login for the price portal: ask IT to move it to the new person

        Create:
        1. A table: task, how often, steps, files or tools, who to ask.
        2. A list of "things only I know" that the manager should confirm.
        3. Open items with a suggested owner and due date before the last day.
        4. A 10-question checklist the manager can use to check the handover.

        Use only the facts in the notes. Where something is missing, write "ASK LEAVER". Do not include any passwords.</pre>
            <ul class="ai-try-checks">
              <li>Every task in the notes appears in the table, and no new tasks were invented.</li>
              <li>Missing details are marked "ASK LEAVER" instead of guessed.</li>
              <li>No passwords or login details appear anywhere.</li>
              <li>Due dates for open items fall before the last day.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A good exit is planned: a checklist, a real handover, quick access removal and on-time final pay. AI speeds up the paperwork and spots exit themes. Attrition is leavers divided by average headcount, for a stated period and group.
        </div>
      HTML
      starter_code: nil
    },
    15 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-hr">HR & Recruitment</div>
          <h1 class="lc-title">Capstone: An Employee Experience Plan</h1>
        </div>
        <p class="lc-lead">In this capstone, you will bring the whole course together. You will build a complete employee experience plan for Swift Mart. It has five parts: a journey map, an onboarding plan for two new joiners, rules for an HR policy chatbot, a pulse survey and an action plan. You will use AI to draft each part, then check facts, numbers, privacy and fairness yourself. The result is a plan you could present to leaders.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 250" role="img" aria-label="The Swift Mart employee experience plan has five parts in order: journey map, onboarding plan, chatbot rules, pulse survey and action plan. Checks for privacy, fairness, legal review and human decisions apply to all parts.">
            <defs><marker id="ex15a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="380" y="26" font-weight="700" fill="#c4b5fd">Swift Mart: 600 staff (450 on shifts, 150 office)</text>
              <rect x="12" y="46" width="132" height="84" rx="10" fill="#1f1f44" stroke="#3b82f6"/><text x="78" y="70" font-weight="700">1. Journey</text><text x="78" y="88" font-weight="700">map</text><text x="78" y="114" font-size="11" fill="#9b99b8">offer to exit</text>
              <rect x="161" y="46" width="132" height="84" rx="10" fill="#1f1f44" stroke="#8b5cf6"/><text x="227" y="70" font-weight="700">2. Onboarding</text><text x="227" y="88" font-weight="700">plan</text><text x="227" y="114" font-size="11" fill="#9b99b8">Ramesh and Sana</text>
              <rect x="310" y="46" width="132" height="84" rx="10" fill="#1f1f44" stroke="#22d3ee"/><text x="376" y="70" font-weight="700">3. Chatbot</text><text x="376" y="88" font-weight="700">rules</text><text x="376" y="114" font-size="11" fill="#9b99b8">answer or hand over</text>
              <rect x="459" y="46" width="132" height="84" rx="10" fill="#1f1f44" stroke="#f59e0b"/><text x="525" y="70" font-weight="700">4. Pulse</text><text x="525" y="88" font-weight="700">survey</text><text x="525" y="114" font-size="11" fill="#9b99b8">10 questions</text>
              <rect x="608" y="46" width="132" height="84" rx="10" fill="#1f1f44" stroke="#10b981"/><text x="674" y="70" font-weight="700">5. Action</text><text x="674" y="88" font-weight="700">plan</text><text x="674" y="114" font-size="11" fill="#9b99b8">owners, dates</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ex15a)"><line x1="146" y1="88" x2="158" y2="88"/><line x1="295" y1="88" x2="307" y2="88"/><line x1="444" y1="88" x2="456" y2="88"/><line x1="593" y1="88" x2="605" y2="88"/></g>
              <rect x="12" y="156" width="736" height="80" rx="10" fill="#27274e" stroke="#ec4899"/>
              <text x="380" y="182" font-weight="700" fill="#f9a8d4">Checks for every part</text>
              <text x="380" y="206" font-size="12.5">made-up data only · privacy · fairness across shifts and sites</text>
              <text x="380" y="226" font-size="12.5">legal review where needed · people decide, AI drafts</text>
            </g>
          </svg>
          <figcaption>Each part feeds the next. The survey results shape the action plan, and the checks apply everywhere.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The brief</h3>
          <p>Lakshmi, the HR business partner at Swift Mart, must present an employee experience plan to leaders next week. All details below are made up.</p>
          <ul class="lc-list">
            <li><strong>Company:</strong> Swift Mart, an online grocery app in Seattle. About 600 staff: about 450 warehouse and delivery staff on day and night shifts, and about 150 office staff.</li>
            <li><strong>New joiners:</strong> Ramesh, a warehouse associate, and Sana, an office analyst. Both start on Monday 5 October 2026.</li>
            <li><strong>September pulse survey:</strong> 402 of 600 staff answered, a response rate of 402 ÷ 600 = 67%. Top comment themes were shift rosters (52 of 173 comments) and pay and payslips (38 of 173).</li>
            <li><strong>eNPS</strong> (employee Net Promoter Score). Staff score "Would you recommend Swift Mart as a place to work?" from 0 to 10. Promoters score 9 or 10. Detractors score 0 to 6. eNPS is the % of promoters minus the % of detractors. In September, 161 of 402 were promoters and 120 were detractors. That is (161 − 120) ÷ 402 × 100 = 10.2, so about +10.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>The five parts and what "good" looks like</h3>
          <table class="lc-table">
            <thead><tr><th>Part</th><th>What to include</th><th>What you must check</th></tr></thead>
            <tbody>
              <tr><td>1. Journey map</td><td>Stages from offer to exit, one row for shift staff and one for office staff, with pain points</td><td>Pain points come from real survey themes, not AI guesses</td></tr>
              <tr><td>2. Onboarding plan</td><td>Day 1, week 1, day 30, day 60 and day 90 for Ramesh and Sana, with a buddy</td><td>Dates, safety training, shift timings, who owns each task</td></tr>
              <tr><td>3. Chatbot rules</td><td>Topics it answers from the handbook, topics it hands to a person, and its privacy rules</td><td>Harassment goes to the IC at once; medical issues and one person's pay go to a person; no legal or medical advice</td></tr>
              <tr><td>4. Pulse survey</td><td>About 10 questions, languages, anonymity rules, a minimum group size of 5</td><td>Neutral wording, no identifying questions</td></tr>
              <tr><td>5. Action plan</td><td>3 to 5 actions linked to survey themes, each with an owner, a date and a measure</td><td>Numbers recalculated; budget agreed with finance</td></tr>
            </tbody>
          </table>
          <p><strong>Example onboarding dates.</strong> Day 1 is Mon 5 Oct 2026. So day 30 is Tue 3 Nov and day 60 is Thu 3 Dec. Day 90 is Sat 2 Jan 2027. Day 90 falls on a Saturday, so hold the 90-day review on Mon 4 Jan 2027. AI often gets weekdays wrong, so check dates in a calendar.</p>
          <table class="lc-table">
            <thead><tr><th>Day 1 (Mon 5 Oct)</th><th>Ramesh, warehouse associate</th><th>Sana, office analyst</th></tr></thead>
            <tbody>
              <tr><td>Morning</td><td>Safety induction, safety shoes and gloves, site tour, meet buddy</td><td>Laptop and logins ready, welcome from manager, meet buddy</td></tr>
              <tr><td>Afternoon</td><td>Handheld scanner training, shadow buddy on a picking round</td><td>Tour of the orders dashboard, first small task</td></tr>
              <tr><td>Before leaving</td><td>Confirm shift roster for week 1 and transport home</td><td>Set 30-day goals and a weekly one-to-one time</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Example action plan (made up)</h3>
          <table class="lc-table">
            <thead><tr><th>Theme (comments)</th><th>Action</th><th>Owner</th><th>Measure</th></tr></thead>
            <tbody>
              <tr><td>Shift rosters (52)</td><td>Publish rosters 7 days ahead; allow shift swaps with one approval</td><td>Warehouse ops head</td><td>Share of rosters published on time</td></tr>
              <tr><td>Pay and payslips (38)</td><td>A one-page payslip explainer in Telugu, Hindi and English, plus a payroll help hour each week</td><td>Payroll lead and Lakshmi</td><td>Fewer payslip questions to HR</td></tr>
              <tr><td>Breaks and heat (31)</td><td>Fix water coolers within 48 hours; fans in all rest rooms</td><td>Site admin</td><td>Open repair requests each week</td></tr>
            </tbody>
          </table>
          <p>Leaders like clear measures. Re-run the pulse survey after 3 months and compare the same questions. Report the new eNPS with its maths shown, not just the final number.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: Lakshmi builds the plan</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Journey map">Lakshmi asks the AI tool for a journey map with two rows, shift staff and office staff, using the survey themes she pastes in. She includes no names or employee data.</li>
              <li data-kind="answer" data-label="AI draft">The AI returns seven stages: offer, pre-boarding, day 1, first 90 days, growth, recognition and exit. It lists pain points such as "roster shared the night before".</li>
              <li data-kind="warn" data-label="Invented pain point">One pain point says "canteen food quality is poor". No survey comment says this. Lakshmi removes it.</li>
              <li data-kind="tool" data-label="Calendar">She checks the onboarding dates in a calendar. The AI wrote "day 90: Mon 2 Jan 2027". The calendar shows 2 Jan 2027 is a Saturday.</li>
              <li data-kind="check" data-label="Fix the date">She moves the 90-day review to Mon 4 Jan 2027 and tells both managers.</li>
              <li data-kind="warn" data-label="Chatbot rule gap">The draft chatbot rules say "summarise complaints for HR". Lakshmi changes it: any harassment message gets only the IC's contact details, and the chatbot does not store or summarise it.</li>
              <li data-kind="check" data-label="Recalculate numbers">She recalculates the response rate (402 ÷ 600 = 67%) and eNPS ((161 − 120) ÷ 402 × 100 = 10.2, about +10). Both match.</li>
              <li data-kind="result" data-label="Ready to present">The plan has five parts, clear owners and correct numbers. Legal counsel reviews the chatbot rules and the survey anonymity rules before launch.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI for a first draft of the full plan. Then check it part by part, as Lakshmi did.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an HR business partner at [Swift Mart, an online grocery app in Seattle] with about [600] staff: [450] warehouse and delivery staff on day and night shifts, and [150] office staff. All data here is made up.

        Draft an employee experience plan with five parts:
        1. Journey map: stages from offer to exit. One row for shift staff, one for office staff. Add 1 pain point per stage, based only on these survey themes: [shift rosters 52 comments, pay and payslips 38, breaks and heat 31].
        2. Onboarding plan for [Ramesh, warehouse associate] and [Sana, office analyst], both starting [Mon 5 Oct 2026]: day 1, week 1, day 30, 60 and 90, with real dates and weekdays.
        3. HR chatbot rules: what it answers from the handbook, what it hands to a person, and privacy rules. Harassment messages get only the Internal Committee contact. Medical issues and one person's pay go to a person.
        4. A 10-question pulse survey, with a minimum group size of 5 for reporting.
        5. An action plan: 3 actions linked to the themes, each with owner, date and measure.

        Show all maths. Mark anything that needs legal review. Add "not legal advice" where laws are mentioned.</pre>
            <ul class="ai-try-checks">
              <li>Dates and weekdays are correct (check day 30, 60 and 90 in a calendar).</li>
              <li>Pain points and actions come only from the survey themes you gave.</li>
              <li>The chatbot rules send harassment messages straight to the Internal Committee.</li>
              <li>Survey questions are neutral and do not ask for anything that could identify a person.</li>
              <li>Every action has an owner, a date and a way to measure it.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A strong employee experience plan links every action to what employees actually said. AI gives you a fast first draft of each part. Your job is to check dates, numbers, privacy, fairness and legal points, and to make the final decisions.
        </div>
      HTML
      starter_code: nil
    }
  }.freeze
end

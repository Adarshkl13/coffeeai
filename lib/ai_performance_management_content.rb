module AiPerformanceManagementContent
  # Units (sidebar dividers): 1–4 Performance Basics · 5–9 Goals and Feedback · 10–14 Reviews and Fairness · 15 Capstone
  # Widgets: sequence, sorter, stepper. No code editor: each Try It is an ai-try prompt box.
  LESSONS = {
    1 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-hr">HR & Recruitment</div>
          <h1 class="lc-title">How Performance Management Works</h1>
        </div>
        <p class="lc-lead">Performance management is how a company agrees what good work looks like, talks about it during the year and helps people grow. In this lesson you will learn its four parts: goals, check-ins, reviews and development. You will compare the annual approach with the continuous approach. Through this course you will follow Maria Lopez, the people lead at Brightside Software. Brightside is a made-up 120-person software company in New York. Maria is running its 2026 review cycle, and AI will help her at every step.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 320" role="img" aria-label="Top: the yearly performance cycle in four steps with arrows. 1 Goals in January. 2 Check-ins all year. 3 Review in November and December. 4 Development in January. An arrow loops back from development to goals for the next year. Bottom: a January to December timeline for Brightside Software in 2026. Goals are set 12 to 30 January. Mid-year check-ins run 6 to 17 July. The review kick-off is 2 November. Calibration is 9 December. Review conversations run 14 to 18 December.">
            <defs><marker id="pm1a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <text x="380" y="24" font-weight="700" fill="#c4b5fd" text-anchor="middle">The yearly performance cycle</text>
              <g text-anchor="middle">
                <rect x="20" y="40" width="160" height="64" rx="8" fill="#1f1f44" stroke="#10b981"/>
                <text x="100" y="66" font-weight="700">1. Goals</text>
                <text x="100" y="88" font-size="11" fill="#9b99b8">Jan: goals and OKRs</text>
                <rect x="210" y="40" width="160" height="64" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
                <text x="290" y="66" font-weight="700">2. Check-ins</text>
                <text x="290" y="88" font-size="11" fill="#9b99b8">All year: 1:1s, notes</text>
                <rect x="400" y="40" width="160" height="64" rx="8" fill="#1f1f44" stroke="#8b5cf6"/>
                <text x="480" y="66" font-weight="700">3. Review</text>
                <text x="480" y="88" font-size="11" fill="#9b99b8">Nov to Dec: rate, talk</text>
                <rect x="590" y="40" width="150" height="64" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
                <text x="665" y="66" font-weight="700">4. Development</text>
                <text x="665" y="88" font-size="11" fill="#9b99b8">Jan: growth plan</text>
                <text x="380" y="150" font-size="11" fill="#9b99b8">Next year's goals build on this year's review</text>
              </g>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#pm1a)">
                <line x1="181" y1="72" x2="206" y2="72"/>
                <line x1="371" y1="72" x2="396" y2="72"/>
                <line x1="561" y1="72" x2="586" y2="72"/>
                <path d="M665,105 V132 H100 V108"/>
              </g>
              <text x="380" y="186" font-weight="700" fill="#c4b5fd" text-anchor="middle">Brightside Software, 2026 calendar (made up)</text>
              <line x1="40" y1="240" x2="720" y2="240" stroke="#9b99b8" stroke-width="2"/>
              <rect x="60" y="234" width="34" height="12" rx="3" fill="#10b981"/>
              <rect x="386" y="234" width="21" height="12" rx="3" fill="#3b82f6"/>
              <circle cx="608" cy="240" r="6" fill="#8b5cf6"/>
              <circle cx="677" cy="240" r="6" fill="#ec4899"/>
              <rect x="686" y="234" width="9" height="12" rx="2" fill="#f59e0b"/>
              <g font-size="11">
                <text x="60" y="222">Goals 12 to 30 Jan</text>
                <text x="397" y="222" text-anchor="middle">Mid-year check-ins 6 to 17 Jul</text>
                <text x="604" y="222" text-anchor="end">Kick-off 2 Nov</text>
              </g>
              <g font-size="11" fill="#9b99b8" text-anchor="middle">
                <text x="68" y="262">Jan</text><text x="125" y="262">Feb</text><text x="181" y="262">Mar</text><text x="238" y="262">Apr</text>
                <text x="295" y="262">May</text><text x="352" y="262">Jun</text><text x="408" y="262">Jul</text><text x="465" y="262">Aug</text>
                <text x="522" y="262">Sep</text><text x="578" y="262">Oct</text><text x="635" y="262">Nov</text><text x="692" y="262">Dec</text>
              </g>
              <g font-size="11" text-anchor="end">
                <text x="720" y="286">Calibration 9 Dec</text>
                <text x="720" y="304">Review talks 14 to 18 Dec</text>
              </g>
            </g>
          </svg>
          <figcaption>Performance management is a loop, not a single meeting. Brightside's made-up 2026 calendar shows when each step happens.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The four parts of performance management</h3>
          <p>Every system has the same four parts. Companies only change how often they happen and how formal they are.</p>
          <table class="lc-table">
            <thead><tr><th>Part</th><th>What happens</th><th>Who leads it</th><th>Brightside example (made up)</th></tr></thead>
            <tbody>
              <tr><td><strong>Goals</strong></td><td>The manager and employee agree what to achieve and how to measure it.</td><td>Manager and employee</td><td>Ryan Walsh, a customer success manager, must renew at least 92% of his accounts.</td></tr>
              <tr><td><strong>Check-ins</strong></td><td>Short, regular talks about progress, problems and support. The manager keeps notes.</td><td>Manager</td><td>Hannah Clarke meets Sam Patel every two weeks for a 1:1 (a one-to-one meeting).</td></tr>
              <tr><td><strong>Review</strong></td><td>A formal look back at the year, with evidence and often a rating.</td><td>Manager, with HR</td><td>Daniel Kim writes a review for Aisha Rahman and suggests a rating of 4 out of 5.</td></tr>
              <tr><td><strong>Development</strong></td><td>A plan for growth: skills, training, new work or a future role.</td><td>Employee, with manager</td><td>Mei Chen plans to lead research for a whole product area next year.</td></tr>
            </tbody>
          </table>
          <p>A <strong>rating</strong> is a score that sums up performance. Brightside uses a 1 to 5 scale: 1 Does not meet, 2 Partly meets, 3 Meets, 4 Exceeds and 5 Far exceeds expectations. "Meets" is a good result. It means the person did the job well.</p>
        </div>
        <div class="lc-card">
          <h3>Annual or continuous?</h3>
          <p>There are two main approaches. Most companies today mix them.</p>
          <table class="lc-table">
            <thead><tr><th></th><th>Annual approach</th><th>Continuous approach</th></tr></thead>
            <tbody>
              <tr><td>How it works</td><td>Goals in January. One big review at the end of the year.</td><td>Frequent check-ins and feedback all year. Goals can change each quarter.</td></tr>
              <tr><td>Good for</td><td>Clear records for pay and promotion decisions.</td><td>Fixing problems early. Goals stay up to date.</td></tr>
              <tr><td>Common problems</td><td>Surprises at review time. Managers remember only recent events.</td><td>Takes manager time every week. Notes can be thin or scattered.</td></tr>
            </tbody>
          </table>
          <p>Brightside uses a <strong>hybrid</strong>. Managers hold regular 1:1s and a mid-year check-in. Then there is one year-end review that links to pay. Pay changes start on Monday 1 February 2027.</p>
          <p>One rule works in every approach: <strong>nothing in the year-end review should be a surprise</strong>. If a problem appears in December for the first time, the check-ins did not work.</p>
        </div>
        <div class="lc-card">
          <h3>Meet the Brightside teams</h3>
          <p>Maria Lopez works with three managers. Each team's goals link to one company goal. You will meet these made-up people again and again in this course.</p>
          <table class="lc-table">
            <thead><tr><th>Team</th><th>Manager</th><th>Employees you will follow</th></tr></thead>
            <tbody>
              <tr><td>Platform Engineering</td><td>Daniel Kim</td><td>Aisha Rahman (senior backend engineer), Leo Martins (backend engineer), Grace Okafor (site reliability engineer)</td></tr>
              <tr><td>Product Design</td><td>Hannah Clarke</td><td>Sam Patel (product designer), Mei Chen (UX researcher)</td></tr>
              <tr><td>Customer Success</td><td>Marcus Bell</td><td>Jordan Ellis and Ryan Walsh (customer success managers), Fatima Noor (support specialist)</td></tr>
            </tbody>
          </table>
          <p>Key dates for 2026: self-reviews are due on Friday 13 November. Manager drafts are due on Friday 4 December. Calibration is on Wednesday 9 December. <strong>Calibration</strong> means managers meet to compare ratings, so the same standard is used across teams.</p>
        </div>
        <div class="lc-card">
          <h3>Your first AI prompt for performance management</h3>
          <p>An AI assistant such as Claude can help you plan the cycle and write clear messages. It needs your real process details, not real employee data.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Write a performance review process.</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>I am the people lead at a 120-person software company in New York.
        We use a hybrid approach: 1:1s every two weeks, a mid-year check-in
        and a year-end review on a 1 to 5 scale. Self-reviews are due
        Friday 13 November 2026 and manager drafts Friday 4 December 2026.
        Write a short kick-off email to all staff. Explain the steps and dates,
        what a good self-review includes, and where to ask questions.
        Use plain, friendly English. Under 250 words.</code></pre>
          <p>Check every date and name in the answer. AI can get weekdays wrong. You decide what goes out, and you send it.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: put Brightside's review year in order</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Drag the steps of Brightside's 2026 cycle into the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Managers and employees agree goals and OKRs (12 to 30 January).</li>
              <li data-order="2">Managers hold 1:1s and mid-year check-ins, and keep dated notes.</li>
              <li data-order="3">Employees write self-reviews (due Friday 13 November).</li>
              <li data-order="4">Managers write review drafts with suggested ratings (due Friday 4 December).</li>
              <li data-order="5">Managers compare ratings in a calibration meeting (Wednesday 9 December).</li>
              <li data-order="6">Managers hold review conversations and agree development plans.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to draft a one-page overview of a review cycle for your own team or company. Then check every date and step.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an experienced HR adviser. Use simple English.

        My company: [Brightside Software, a 120-person software company in New York].
        Our approach: [hybrid: 1:1s every two weeks, a mid-year check-in in July, one year-end review].
        Rating scale: [1 to 5: Does not meet, Partly meets, Meets, Exceeds, Far exceeds].
        Review year: [1 January to 31 December 2026].

        Please write a one-page overview of our performance cycle for managers:
        1. A table with each step, what happens, who does it and a date. Use weekdays only and show the day name.
        2. What "good" looks like at each step, in one line each.
        3. Three common mistakes managers make and how to avoid them.
        4. One sentence saying that people, not AI, make every rating and pay decision.

        If you are not sure of a date, mark it [CHECK]. Do not invent company policies. List any questions I must answer before I share this.</pre>
            <ul class="ai-try-checks">
              <li>Every date falls on a weekday, and the day name is right.</li>
              <li>The steps are in a sensible order: goals, check-ins, review, development.</li>
              <li>It does not invent policies or legal rules.</li>
              <li>It says clearly that people make the decisions.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Performance management is a loop: goals, check-ins, review and development. The year-end review only works if the check-ins happened. AI can help you plan and write, but managers and HR own every step and every decision.
        </div>
      HTML
      starter_code: nil
    },
    2 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-hr">HR & Recruitment</div>
          <h1 class="lc-title">Where AI Helps and Where It Must Not</h1>
        </div>
        <p class="lc-lead">AI can save managers and HR many hours in a review cycle. It can draft text, summarise long notes and find patterns in ratings. But performance decisions affect people's pay, careers and jobs. AI can be biased, it can invent evidence, and it can leak private data. In this lesson you will learn which tasks are safe to give AI and which are not. You will also see how Maria Lopez at Brightside Software sets clear rules for her managers.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="Two panels. Left, in green: AI can help, and you check. Draft review text from your notes. Summarise peer feedback. Spot patterns in ratings. Suggest questions for 1:1s. Right, in pink: AI must not. Decide ratings, pay or dismissal. Invent or guess evidence. Judge emotions or personality. Receive private data in a public tool. Arrows from both panels lead to one box at the bottom: a person checks, decides and signs off.">
            <defs><marker id="pm2a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <rect x="20" y="30" width="340" height="170" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="40" y="56" font-weight="700" fill="#6ee7b7">AI can help (you check)</text>
              <text x="40" y="88">Draft review text from your notes</text>
              <text x="40" y="116">Summarise peer feedback</text>
              <text x="40" y="144">Spot patterns in ratings</text>
              <text x="40" y="172">Suggest questions for 1:1s</text>
              <rect x="400" y="30" width="340" height="170" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="420" y="56" font-weight="700" fill="#f9a8d4">AI must not</text>
              <text x="420" y="88">Decide ratings, pay or dismissal</text>
              <text x="420" y="116">Invent or guess evidence</text>
              <text x="420" y="144">Judge emotions or personality</text>
              <text x="420" y="172">Get private data in a public tool</text>
              <rect x="190" y="236" width="380" height="44" rx="10" fill="#27274e" stroke="#f59e0b"/>
              <text x="380" y="263" font-weight="700" text-anchor="middle">A person checks, decides and signs off</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#pm2a)">
                <line x1="190" y1="201" x2="260" y2="232"/>
                <line x1="570" y1="201" x2="500" y2="232"/>
              </g>
            </g>
          </svg>
          <figcaption>AI drafts, summarises and flags. It never decides about a person. Every output goes to a person who checks it and owns the decision.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Where AI helps</h3>
          <p>AI is good at work with words and patterns. Use it to save time on the slow parts, so managers spend more time talking to people.</p>
          <table class="lc-table">
            <thead><tr><th>Task</th><th>How AI helps</th><th>Brightside example (made up)</th><th>What a person must check</th></tr></thead>
            <tbody>
              <tr><td>Drafting</td><td>Turns short notes into clear sentences</td><td>Daniel Kim turns his bullet notes on Grace Okafor into a first draft.</td><td>Every claim matches a real note.</td></tr>
              <tr><td>Summarising</td><td>Groups long feedback into themes</td><td>Hannah Clarke summarises four peer comments about Sam Patel.</td><td>No comment is lost, softened or made stronger.</td></tr>
              <tr><td>Finding patterns</td><td>Compares numbers across teams</td><td>Maria Lopez asks which team has the highest average rating.</td><td>The maths is right. A pattern is a question, not proof.</td></tr>
              <tr><td>Preparing talks</td><td>Suggests agendas and open questions</td><td>Marcus Bell plans a 1:1 with Fatima Noor about reply times.</td><td>The questions fit the person and the situation.</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>The four big risks</h3>
          <ul class="lc-list">
            <li><strong>Bias.</strong> AI learns from human writing, which contains bias. It may describe similar work in different words for different people. For example, it may call one person "confident" and another "pushy".</li>
            <li><strong>Invented evidence.</strong> AI can write things that sound true but are not. This is called a <em>hallucination</em>. Daniel gave AI his notes on Leo Martins. The draft said Leo "missed several deadlines". The notes show one late project: billing API v2, shipped three weeks late. One is not "several".</li>
            <li><strong>Privacy.</strong> Performance notes are personal data. Do not paste real names, health details or review notes into a public AI tool. Use only tools your company has approved for this data, and follow its policy.</li>
            <li><strong>AI deciding about people.</strong> A rating, a pay rise or a dismissal must be a human decision. A person must be able to explain it. Laws in the UK, US and EU also set rules here. The fairness and law lesson covers them.</li>
          </ul>
          <p>Also, never use a tool that claims to read emotions, honesty or personality from video, voice or text. These claims are not reliable. In the EU, AI that infers emotions at work is banned, with narrow medical and safety exceptions.</p>
        </div>
        <div class="lc-card">
          <h3>A safe way to use AI on reviews</h3>
          <p>Maria gives her managers four rules for the 2026 cycle:</p>
          <ol class="lc-list">
            <li>Use only the company-approved AI tool. Never a personal account.</li>
            <li>Remove details AI does not need, such as health, family or other private details.</li>
            <li>Ask AI to link every sentence to a dated note. Then check each one yourself.</li>
            <li>Write the rating yourself, with your own reasons. AI never suggests the number.</li>
          </ol>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Write Leo's performance review and give him a rating.</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Below are my dated notes on a backend engineer. Draft a short
        review summary in three parts: results against goals, strengths,
        and one area to grow. Use only facts from the notes. After each
        sentence, show the note date in brackets. If something is not in
        the notes, write [NO EVIDENCE]. Do not suggest a rating.

        Notes:
        Tue 21 Jul: billing API v2 shipped, 3 weeks after the 30 Jun target.
        Scope grew after a customer request in May.
        Test coverage on billing code: 78% (goal 75%).
        Wed 15 Apr: mentored a new junior engineer.
        Thu 17 Sep: config change caused a 40-minute P1 outage.
        Tue 22 Sep: wrote a clear post-incident review and added an alert.</code></pre>
          <p>The better prompt limits AI to the evidence. It also asks AI to show where each claim came from. That makes checking fast.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: safe use or not?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each made-up request into the right group.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="ok" data-label="Fine, with a person checking"></div>
              <div data-sorter-target="bucket" data-bucket="no" data-label="Do not do this"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="ok" data-why="Drafting from your own notes is a good use, as long as you check every claim.">Daniel asks the approved AI tool to draft a review summary from his dated notes on Grace.</li>
              <li data-bucket="no" data-why="A rating is a decision about a person. The manager must make it and explain it.">Marcus asks AI to choose Ryan's final rating from 1 to 5.</li>
              <li data-bucket="ok" data-why="Comparing average ratings by team is pattern-finding. A person then looks into any gap.">Maria asks AI to compare average draft ratings for the three teams.</li>
              <li data-bucket="no" data-why="Public tools may keep or use what you paste. Health details are very sensitive data.">A manager pastes an employee's sick-leave reasons into a free public chatbot.</li>
              <li data-bucket="no" data-why="Tools that claim to read emotion or honesty are not reliable. In the EU, inferring emotions at work is banned, with narrow exceptions.">Using a tool that scores how motivated people look in video calls.</li>
              <li data-bucket="ok" data-why="Planning open questions for a 1:1 is low risk and saves time.">Hannah asks AI for five open questions for a check-in with Sam.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Give AI a set of made-up notes and ask for a summary that shows its evidence. Then check whether it added anything that is not in the notes.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You help a manager prepare a performance review. Use simple English. Use ONLY the notes below.

        Employee: [Fatima Noor, Support Specialist] (made-up person)
        Goals: [CSAT at least 90%; median first reply under 4 hours; write 10 help articles]
        Notes:
        [Wed 11 Mar: her help articles cut repeat tickets on billing questions.
        Wed 24 Jun: reply time slipped during a staff shortage.
        Wed 19 Aug: covered a colleague's queue for 2 weeks.
        Year to date: CSAT 91%. Median first reply 4.5 hours. 12 help articles.]

        Please:
        1. Make a table: goal, target, result, met or not met, note date.
        2. Write a 5-sentence summary. After each sentence, put the note date in brackets.
        3. List anything a fair review needs that is missing from the notes. Mark it [NO EVIDENCE].
        4. Do not suggest a rating. Do not guess reasons that are not in the notes.</pre>
            <ul class="ai-try-checks">
              <li>Every sentence links to a real note date or result.</li>
              <li>The reply-time goal shows as not met (4.5 hours against under 4).</li>
              <li>Nothing is added that the notes do not say.</li>
              <li>There is no rating or pay suggestion.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Let AI do the writing and sorting. Keep the judging for people. If you cannot point to the note behind a sentence, delete the sentence. If a decision affects someone's pay or job, a person must make it and be able to explain it.
        </div>
      HTML
      starter_code: nil
    },
    3 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-hr">HR & Recruitment</div>
          <h1 class="lc-title">Fairness, Privacy and the Law</h1>
        </div>
        <p class="lc-lead">Performance decisions must be fair and lawful. This matters even more when AI helps. In this lesson you will learn the main rules in the UK, the US and the EU in plain words. You will see how they apply to goals, notes, ratings and AI tools. You will also learn to write a short decision record. This is general education, not legal advice. Check real cases with an employment lawyer or a qualified HR adviser.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 320" role="img" aria-label="Three panels. United Kingdom: Equality Act 2010 with 9 protected characteristics; UK GDPR and the Data Protection Act 2018, so staff can see their data; automated decisions need human review rights. United States: Title VII, ADA and ADEA ban bias and need accommodations; the EEOC enforces these laws; NYC Local Law 144 needs a bias audit for promotion tools. European Union: the EU AI Act treats work AI as high-risk; main duties apply from 2 December 2027; emotion recognition at work is banned since 2025. All three lead to one band: write it down: decision, reasons, evidence, who decided. Not legal advice.">
            <defs><marker id="pm3a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <rect x="20" y="20" width="230" height="210" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <rect x="265" y="20" width="230" height="210" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <rect x="510" y="20" width="230" height="210" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <g font-weight="700" fill="#c4b5fd" text-anchor="middle">
                <text x="135" y="46">United Kingdom</text>
                <text x="380" y="46">United States</text>
                <text x="625" y="46">European Union</text>
              </g>
              <g font-weight="700">
                <text x="36" y="84">Equality Act 2010</text>
                <text x="36" y="134">UK GDPR + DPA 2018</text>
                <text x="36" y="184">Automated decisions</text>
                <text x="281" y="84">Title VII, ADA, ADEA</text>
                <text x="281" y="134">EEOC</text>
                <text x="281" y="184">NYC Local Law 144</text>
                <text x="526" y="84">EU AI Act</text>
                <text x="526" y="134">Main duties</text>
                <text x="526" y="184">Emotion recognition</text>
              </g>
              <g font-size="12" fill="#9b99b8">
                <text x="36" y="102">9 protected characteristics</text>
                <text x="36" y="152">staff can see their data</text>
                <text x="36" y="202">human review rights</text>
                <text x="281" y="102">no bias; accommodations</text>
                <text x="281" y="152">enforces these laws</text>
                <text x="281" y="202">bias audit: promotion tools</text>
                <text x="526" y="102">work AI is high-risk</text>
                <text x="526" y="152">apply from 2 Dec 2027</text>
                <text x="526" y="202">banned at work since 2025</text>
              </g>
              <rect x="20" y="262" width="720" height="44" rx="10" fill="#27274e" stroke="#10b981"/>
              <text x="380" y="289" text-anchor="middle">Write it down: decision, reasons, evidence, who decided. Not legal advice.</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#pm3a)">
                <line x1="135" y1="231" x2="135" y2="258"/>
                <line x1="380" y1="231" x2="380" y2="258"/>
                <line x1="625" y1="231" x2="625" y2="258"/>
              </g>
            </g>
          </svg>
          <figcaption>The UK, US and EU rules differ, but they share one habit: base decisions on evidence and record why you made them. Not legal advice.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>United Kingdom: equality, data and fair process</h3>
          <ul class="lc-list">
            <li><strong>Equality Act 2010.</strong> It protects people from discrimination because of nine <em>protected characteristics</em>. They are age, disability, gender reassignment, marriage and civil partnership, pregnancy and maternity, race, religion or belief, sex, and sexual orientation. Employers must also make <em>reasonable adjustments</em> (sensible changes to work or targets) for disabled workers.</li>
            <li><strong>UK GDPR and the Data Protection Act 2018.</strong> Performance notes are personal data. Use them fairly, keep them accurate and collect only what you need. Employees can make a <em>subject access request</em> to see their data, and employers must usually reply within one month. So write every note as if the employee will read it.</li>
            <li><strong>Automated decisions.</strong> Since 5 February 2026, the Data (Use and Access) Act 2025 sets new UK rules. If a significant decision is made only by automated means, people must be told. They must also be able to give their view, ask for a person to step in and challenge it. Stricter limits apply when sensitive data, such as health data, is involved.</li>
            <li><strong>Employment Rights Act 2025.</strong> Its changes start in stages. From 1 January 2027, the main unfair dismissal right is due to apply after six months of service, not two years. Clear goals, notes and support records from early in a job will matter more.</li>
          </ul>
          <p>Example: at Northbridge Logistics (a made-up warehouse company in London and Manchester), a picker has a disability that affects speed on some days. HR adviser Tom Reed agrees an adjusted pick-rate target before the review. He records the adjustment and the reason.</p>
        </div>
        <div class="lc-card">
          <h3>United States and the EU</h3>
          <ul class="lc-list">
            <li><strong>Title VII, the ADA and the ADEA</strong> are federal anti-discrimination laws. Title VII covers race, color, religion, sex and national origin. The ADA covers disability and requires reasonable accommodation. The ADEA protects workers aged 40 and over. These laws apply to ratings, pay and promotion, including when AI helps.</li>
            <li><strong>The EEOC</strong> (Equal Employment Opportunity Commission) is the US agency that enforces these laws.</li>
            <li><strong>NYC Local Law 144.</strong> It covers automated tools that screen candidates or rate employees for promotion in New York City. These tools need a yearly independent bias audit and notice to people. Brightside is in New York, so Maria checks this before buying any promotion-scoring tool.</li>
            <li><strong>Monitoring notice in New York State.</strong> Employers that monitor staff email, phone or internet use must give written notice and get an acknowledgement.</li>
            <li><strong>EU AI Act.</strong> AI used to make work decisions, give out tasks, or monitor and evaluate workers is <em>high-risk</em>. A 2026 change moved the main high-risk duties to 2 December 2027. Using AI to infer emotions at work has been banned since February 2025, with narrow medical and safety exceptions. The Act can apply to non-EU companies with staff in the EU.</li>
          </ul>
          <p>Laws change often. Before each cycle, check the current rules with an employment lawyer or HR adviser.</p>
        </div>
        <div class="lc-card">
          <h3>Write down every decision</h3>
          <p>A short <strong>decision record</strong> protects the employee and the company. It shows the decision was based on evidence, not on feelings. Brightside adds one to every final rating:</p>
          <pre><code>Decision record (made-up example)
        Employee: Leo Martins, Backend Engineer
        Decision: final rating 3 (Meets)
        Evidence: test coverage 78% (goal 75%); billing API v2 shipped
          3 weeks late after scope grew; P1 outage on Thu 17 Sep,
          fixed with a clear post-incident review on Tue 22 Sep
        Adjustments or context: none recorded
        AI use: approved tool drafted the summary from dated notes;
          manager checked every line; AI did not suggest the rating
        Decided by: Daniel Kim (manager), reviewed by Maria Lopez (HR)
        Date: Wed 9 Dec 2026 (calibration)</code></pre>
          <p>AI can turn your notes into this format. It cannot decide what goes in the "Decision" line.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: Tom checks an AI suggestion</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Tom asks">In the company-approved AI tool, Tom pastes pick rates for 12 pickers, with initials instead of names. "Which ones are underperforming?"</li>
              <li data-kind="answer" data-label="AI replies">The AI lists 3 pickers below the target of 110 picks per hour. It says they "should go on an improvement plan".</li>
              <li data-kind="warn" data-label="The mistake">The AI has moved from a number to a decision about people. It also does not know about any adjustments.</li>
              <li data-kind="tool" data-label="Tom checks the HR system">He opens the agreed adjustments for the 3 pickers.</li>
              <li data-kind="result" data-label="What he finds">One picker, J.M., has an agreed adjusted target of 90 because of a disability. J.M. is at 96, so J.M. is above target.</li>
              <li data-kind="check" data-label="Tom decides">He talks to the other two pickers' managers first. One had a broken scanner for two weeks. He records the facts and reasons.</li>
              <li data-kind="answer" data-label="Better use of AI">Tom asks AI only to draft neutral check-in questions. Managers and HR make every decision.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to build a fairness and privacy checklist for a review cycle in your country. Then mark every point to confirm with an adviser.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an HR compliance assistant. Use simple English. This is general education, not legal advice.

        Company: [Brightside Software, 120 staff, based in New York, a few remote staff in other US states].
        We are about to run our [2026 year-end review cycle] with a 1 to 5 rating that links to pay.
        AI use: [managers use an approved AI tool to draft review text from their own notes].

        Please make a checklist in 4 sections:
        1. Fairness: how to check ratings for bias and how to handle disability accommodations.
        2. Privacy: what to keep out of notes and AI tools, and who can see review data.
        3. AI use: what AI may and may not do, and how a person checks it.
        4. Records: what a short decision record should contain.

        Name only laws you are sure about, and describe them in general words. Mark anything that depends on the state or city as [CHECK LOCALLY]. End with 5 questions I should ask an employment lawyer.</pre>
            <ul class="ai-try-checks">
              <li>Laws are named correctly and described in general words, with no made-up rules.</li>
              <li>It says AI must not decide ratings or pay.</li>
              <li>Local and state differences are marked to check.</li>
              <li>It says this is not legal advice and suggests a qualified adviser.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Fair process is the same idea in every country: clear goals, real evidence, adjustments where needed, a person who decides and a written record of why. AI does not change these duties. It makes good records more important. Always check the current law with a qualified adviser.
        </div>
      HTML
      starter_code: nil
    },
    4 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-hr">HR & Recruitment</div>
          <h1 class="lc-title">Gathering Good Evidence</h1>
        </div>
        <p class="lc-lead">A fair review rests on evidence, not memory or feelings. Evidence is a fact you can show: a result, a dated example or a direct comment from someone who saw the work. In this lesson you will learn four sources of evidence and how to turn impressions into facts. You will also learn to keep notes all year, and to use AI to organise evidence without adding to it. You will see why Ryan Walsh's "great attitude" is not enough to support a top rating.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="Four evidence sources on the left: work results, peer input, self-review and notes all year. Arrows lead to a fact check in the middle with four questions: is it dated, is it specific, was it seen or measured, is it linked to a goal. An arrow leads to an evidence file, one per goal, on the right. At the bottom, an example: the impression great attitude becomes the fact 17 of 20 accounts renewed, 85 percent.">
            <defs><marker id="pm4a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <g text-anchor="middle">
                <rect x="20" y="30" width="190" height="40" rx="8" fill="#1f1f44" stroke="#10b981"/><text x="115" y="55">Work results</text>
                <rect x="20" y="82" width="190" height="40" rx="8" fill="#1f1f44" stroke="#3b82f6"/><text x="115" y="107">Peer input</text>
                <rect x="20" y="134" width="190" height="40" rx="8" fill="#1f1f44" stroke="#22d3ee"/><text x="115" y="159">Self-review</text>
                <rect x="20" y="186" width="190" height="40" rx="8" fill="#1f1f44" stroke="#8b5cf6"/><text x="115" y="211">Notes all year</text>
              </g>
              <rect x="280" y="40" width="210" height="176" rx="10" fill="#27274e" stroke="#f59e0b"/>
              <text x="385" y="66" font-weight="700" text-anchor="middle">Fact check</text>
              <text x="300" y="100">Is it dated?</text>
              <text x="300" y="128">Is it specific?</text>
              <text x="300" y="156">Seen or measured?</text>
              <text x="300" y="184">Linked to a goal?</text>
              <rect x="560" y="98" width="180" height="60" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="650" y="123" font-weight="700" text-anchor="middle">Evidence file</text>
              <text x="650" y="143" font-size="11" fill="#9b99b8" text-anchor="middle">one section per goal</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#pm4a)">
                <line x1="211" y1="50" x2="276" y2="90"/>
                <line x1="211" y1="102" x2="276" y2="118"/>
                <line x1="211" y1="154" x2="276" y2="140"/>
                <line x1="211" y1="206" x2="276" y2="168"/>
                <line x1="491" y1="128" x2="556" y2="128"/>
              </g>
              <rect x="20" y="246" width="720" height="40" rx="8" fill="#1f1f44" stroke="#ec4899"/>
              <text x="380" y="271" text-anchor="middle">Impression: "great attitude". Fact: "17 of 20 accounts renewed (85%)".</text>
            </g>
          </svg>
          <figcaption>Evidence comes from four sources. Only items that pass the fact check go into the evidence file for each goal.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Four sources of evidence</h3>
          <table class="lc-table">
            <thead><tr><th>Source</th><th>What it is</th><th>Brightside example (made up)</th><th>Watch out for</th></tr></thead>
            <tbody>
              <tr><td><strong>Work results</strong></td><td>Numbers and outputs linked to goals</td><td>Grace Okafor: app uptime 99.92% (goal at least 99.9%).</td><td>Things outside the person's control, such as a staff shortage.</td></tr>
              <tr><td><strong>Peer input</strong></td><td>Comments from people who work with the employee</td><td>A peer notes that Sam Patel's design specs were late for 3 of 8 sprints since July.</td><td>Friendships and conflicts. Ask for examples, not opinions.</td></tr>
              <tr><td><strong>Self-review</strong></td><td>The employee's own view of the year</td><td>Grace rates herself 3, but her results meet both goals.</td><td>Some people under-sell themselves. Others over-sell.</td></tr>
              <tr><td><strong>Notes all year</strong></td><td>The manager's short, dated notes after 1:1s and events</td><td>Tue 22 Sep: Leo Martins wrote a clear post-incident review.</td><td>Gaps. Daniel Kim has 6 notes on Aisha Rahman, but only 2 on Grace.</td></tr>
            </tbody>
          </table>
          <p>Grace works mostly from home, so Daniel sees her work less often. Fewer notes do not mean weaker work. They mean the manager needs to look harder. Check the gap before you rate.</p>
        </div>
        <div class="lc-card">
          <h3>Facts, not impressions</h3>
          <p>An <strong>impression</strong> is a feeling about a person, such as "great attitude" or "not a team player". A <strong>fact</strong> is something you saw or measured, with a date. Marcus Bell wrote this note on Thursday 1 October about Ryan Walsh: "great attitude, everyone loves working with him". It is kind, but it is not evidence of results.</p>
          <table class="lc-table">
            <thead><tr><th>Impression</th><th>Fact (made-up data)</th></tr></thead>
            <tbody>
              <tr><td>"Ryan is a star with customers."</td><td>Ryan renewed 17 of 20 accounts (85%). His goal was at least 92%.</td></tr>
              <tr><td>"Ryan is responsive."</td><td>Wed 29 Jul: a customer complained of no reply for 6 working days. The account later did not renew.</td></tr>
              <tr><td>"Jordan is reliable."</td><td>Jordan Ellis renewed 23 of 25 accounts (92%), which meets the goal.</td></tr>
              <tr><td>"Leo is careless."</td><td>Thu 17 Sep: one config change caused a 40-minute P1 outage. No repeat since his fix.</td></tr>
            </tbody>
          </table>
          <p>To check a percentage, divide the result by the total. For example, 17 ÷ 20 = 0.85, which is 85%. In a spreadsheet, put renewed in B2 and total in C2, then use <code>=B2/C2</code> and format it as a percentage.</p>
        </div>
        <div class="lc-card">
          <h3>Keep notes all year, and use AI to organise them</h3>
          <p>Short notes after each 1:1 beat a long essay in December. Use this simple format:</p>
          <pre><code>Date | Goal it links to | What happened (seen or measured) | Source
        Wed 2 Sep | Renewal rate | Second account lost after late replies | CRM record, customer email</code></pre>
          <p>Do not record health details, family matters or gossip in performance notes. If health affects work, HR handles it separately and privately.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Here are my notes. Write why Ryan deserves a 5.</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Below are my dated notes and results for one employee.
        Sort them into a table by goal: date, fact, source.
        Put any note that is an opinion or feeling in a separate list
        called "Impressions to replace with facts".
        For each goal, say if the evidence is strong, thin or missing.
        Do not add facts. Do not suggest a rating.</code></pre>
          <p>The weak prompt asks AI to argue for a rating that is already chosen. The better prompt asks AI to sort the evidence, and the manager judges it.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: fact or impression?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each made-up note into the right group.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="fact" data-label="Fact (usable evidence)"></div>
              <div data-sorter-target="bucket" data-bucket="imp" data-label="Impression (needs facts)"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="fact" data-why="It has a date, a number and a clear result.">Tue 9 Jun: Grace ran the disaster-recovery test. Recovery took 50 minutes (target 60).</li>
              <li data-bucket="imp" data-why="It is a feeling. It does not say what Ryan did or what the result was.">Ryan has a great attitude and everyone loves him.</li>
              <li data-bucket="fact" data-why="It counts a real output against a goal.">Mei Chen completed 30 customer interviews (goal 24).</li>
              <li data-bucket="imp" data-why="It is a label. Ask: what exactly happened, and when?">Sam does not seem very committed lately.</li>
              <li data-bucket="fact" data-why="It is a dated, specific event that someone saw.">Wed 19 Aug: Fatima covered a colleague's support queue for 2 weeks.</li>
              <li data-bucket="imp" data-why="One strong demo is a single visible moment. It says nothing about results against goals.">Aisha is clearly our best engineer after that all-hands demo.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to turn messy, made-up notes into a clean evidence log. Then check that it moved the impressions out and added nothing.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You help a manager organise performance evidence. Use simple English. Use ONLY the notes below.

        Employee: [Ryan Walsh, Customer Success Manager] (made-up person)
        Goals: [1. Renewal rate on own accounts at least 92%. 2. Two upsells.]
        Notes:
        [- Renewed 17 of 20 accounts this year.
        - Wed 29 Jul: customer complained of no reply for 6 working days. Account later did not renew.
        - Wed 2 Sep: second account lost after late replies.
        - One upsell signed this year.
        - Thu 1 Oct: great attitude, everyone loves working with him.]

        Please:
        1. Make an evidence table by goal: date, fact, source, met or not met. Show any maths.
        2. List every opinion or feeling under "Impressions to replace with facts".
        3. For each goal, say if the evidence is strong, thin or missing.
        4. Suggest 3 questions the manager should ask to fill gaps.
        Do not suggest a rating. Do not add any fact that is not in the notes.</pre>
            <ul class="ai-try-checks">
              <li>The renewal rate is 85% (17 ÷ 20), and the goal shows as not met.</li>
              <li>"Great attitude" is listed as an impression, not as evidence.</li>
              <li>No new facts, dates or reasons were invented.</li>
              <li>There is no rating suggestion.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Good evidence is dated, specific, seen or measured, and linked to a goal. Collect it all year from four sources, and look for gaps before you rate. AI is a good sorting tool for evidence, but it must never become a source of evidence.
        </div>
      HTML
      starter_code: nil
    },
    5 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-hr">HR & Recruitment</div>
          <h1 class="lc-title">Setting Clear Goals and OKRs</h1>
        </div>
        <p class="lc-lead">Clear goals make every later step easier: check-ins, feedback, reviews and ratings. If a goal is vague, nobody can say if it was met. In this lesson you will learn to write SMART goals and OKRs, and to link team goals to company goals. You will see how Brightside Software connects one company objective to the goals of each team. You will also learn how AI can help you draft goals, and what you must check yourself.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 320" role="img" aria-label="A goal tree for Brightside Software. At the top, the company objective: keep and grow our customers. It branches to three key results. KR1, revenue retention from 88 to 92 percent, owned by Customer Success. KR2, P1 incidents no more than 6, owned by Platform Engineering. KR3, trial-to-paid from 18 to 22 percent, owned by Product Design. Each key result branches to individual goals: Jordan and Ryan renew at least 92 percent of accounts; Aisha keeps P1s in her services to 3 or fewer and Grace keeps uptime at least 99.9 percent; Sam lifts conversion to 22 percent and Mei completes 24 interviews.">
            <defs><marker id="pm5a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="190" y="20" width="380" height="50" rx="10" fill="#27274e" stroke="#8b5cf6"/>
              <text x="380" y="41" font-size="11" fill="#9b99b8">Company objective 2026</text>
              <text x="380" y="60" font-weight="700">Keep and grow our customers</text>
              <rect x="20" y="110" width="220" height="56" rx="8" fill="#1f1f44" stroke="#10b981"/>
              <text x="130" y="134" font-weight="700">KR1: Retention 88% → 92%</text>
              <text x="130" y="154" font-size="11" fill="#9b99b8">Customer Success</text>
              <rect x="270" y="110" width="220" height="56" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="380" y="134" font-weight="700">KR2: P1 incidents ≤ 6</text>
              <text x="380" y="154" font-size="11" fill="#9b99b8">Platform Engineering</text>
              <rect x="520" y="110" width="220" height="56" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="630" y="134" font-weight="700">KR3: Conversion 18% → 22%</text>
              <text x="630" y="154" font-size="11" fill="#9b99b8">Product Design</text>
              <rect x="20" y="206" width="220" height="60" rx="8" fill="#1f1f44" stroke="#9b99b8"/>
              <text x="130" y="231">Jordan, Ryan:</text>
              <text x="130" y="251">renew ≥ 92% of accounts</text>
              <rect x="270" y="206" width="220" height="60" rx="8" fill="#1f1f44" stroke="#9b99b8"/>
              <text x="380" y="231">Aisha: ≤ 3 P1s</text>
              <text x="380" y="251">Grace: uptime ≥ 99.9%</text>
              <rect x="520" y="206" width="220" height="60" rx="8" fill="#1f1f44" stroke="#9b99b8"/>
              <text x="630" y="231">Sam: conversion to 22%</text>
              <text x="630" y="251">Mei: 24 interviews</text>
              <text x="380" y="300" font-size="11" fill="#9b99b8">Each person's goal links up to one company key result.</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#pm5a)">
                <line x1="300" y1="71" x2="150" y2="106"/>
                <line x1="380" y1="71" x2="380" y2="106"/>
                <line x1="460" y1="71" x2="610" y2="106"/>
                <line x1="130" y1="167" x2="130" y2="202"/>
                <line x1="380" y1="167" x2="380" y2="202"/>
                <line x1="630" y1="167" x2="630" y2="202"/>
              </g>
            </g>
          </svg>
          <figcaption>Brightside's made-up goal tree. One company objective, three key results, and individual goals that link to them.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>SMART goals</h3>
          <p>A <strong>SMART</strong> goal is Specific, Measurable, Achievable, Relevant and Time-bound. In plain words: what exactly, how you will know, possible with the time and tools, linked to the team's work, and done by when.</p>
          <table class="lc-table">
            <thead><tr><th>Vague goal</th><th>SMART goal (made up)</th><th>What changed</th></tr></thead>
            <tbody>
              <tr><td>"Improve customer relationships."</td><td>Renew at least 92% of my own accounts due for renewal in 2026.</td><td>A number, a scope and a year.</td></tr>
              <tr><td>"Make the system more stable."</td><td>Keep uptime of the customer app at or above 99.9% each month in 2026.</td><td>A clear measure and time frame.</td></tr>
              <tr><td>"Write more help content."</td><td>Publish 10 new help articles on the top billing questions by 30 November 2026.</td><td>A count, a topic and a deadline.</td></tr>
            </tbody>
          </table>
          <p>Not all work fits a number. For a skill or behaviour goal, describe what people will see. For example: "Share design specs with engineers one week before each sprint." Sam Patel agreed this goal at his mid-year check-in.</p>
        </div>
        <div class="lc-card">
          <h3>OKRs: objectives and key results</h3>
          <p>An <strong>OKR</strong> is an objective plus a few key results. The <strong>objective</strong> is what you want, in words. The <strong>key results</strong> are usually 2 to 5 numbers that show progress towards it.</p>
          <pre><code>Objective: Keep and grow our customers in 2026.
        KR1: Gross revenue retention from 88% to 92%.
        KR2: P1 incidents (severe outages) from 12 in 2025 to 6 or fewer.
        KR3: Trial-to-paid conversion from 18% to 22%.</code></pre>
          <p><strong>Gross revenue retention</strong> is the share of last year's revenue from existing customers that you keep, before you add upsells. <strong>Trial-to-paid conversion</strong> is the share of free trials that become paying customers.</p>
          <p>A good key result measures an <strong>outcome</strong> (a change that matters), not just an <strong>output</strong> (work done). "Launch a new onboarding flow" is an output. "Lift trial-to-paid conversion from 18% to 22%" is an outcome. Sam's flow launched on Wednesday 27 May, and conversion reached 21%. That is real progress, even though it is below the 22% target.</p>
          <p>Many companies use OKRs for direction and stretch, and do not tie them directly to pay. If your company links goals to ratings, say so clearly at the start of the year.</p>
        </div>
        <div class="lc-card">
          <h3>Linking goals, and using AI to draft them</h3>
          <p>Each team goal should link up to one company key result. This shows people why their work matters. It also helps managers spot goals that do not fit.</p>
          <table class="lc-table">
            <thead><tr><th>Company KR</th><th>Team</th><th>Individual goal (made up)</th></tr></thead>
            <tbody>
              <tr><td>KR1: retention</td><td>Customer Success</td><td>Fatima Noor: median first reply under 4 hours</td></tr>
              <tr><td>KR2: P1 incidents</td><td>Platform Engineering</td><td>Leo Martins: raise billing test coverage from 60% to 75%</td></tr>
              <tr><td>KR3: trial-to-paid</td><td>Product Design</td><td>Mei Chen: research library used by 3 product teams</td></tr>
            </tbody>
          </table>
          <p>Check each goal for fairness. Does the person control most of the result? Is it fair for part-time staff, or for someone with an agreed adjustment? Could the measure push bad behaviour? For example, a goal to close tickets fast can lead to rushed answers.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Write OKRs for a designer.</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Our 2026 company objective is "Keep and grow our customers".
        Company KR3: lift trial-to-paid conversion from 18% to 22%.
        Draft 2 SMART goals for a product designer that support KR3.
        Use only the baseline numbers I give you. Mark any number you
        would need from me as [NEED DATA]. For each goal, name one risk:
        something outside the designer's control.</code></pre>
          <p>AI often invents a baseline that looks real. Every starting number must come from your own data. The manager and employee agree the final goals together.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: Hannah drafts goals with AI</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Hannah asks">"Our KR3 is trial-to-paid conversion from 18% to 22%. Draft 2 SMART goals for Sam, a product designer."</li>
              <li data-kind="answer" data-label="AI replies">Goal 1: redesign the trial onboarding flow and lift conversion from 15% to 22% by 31 December 2026. Goal 2: run usability tests every week.</li>
              <li data-kind="warn" data-label="The mistake">The AI changed the baseline to 15%. Hannah's real number is 18%. Goal 2 has no clear count and no link to the outcome.</li>
              <li data-kind="tool" data-label="Hannah checks the data">She opens the product dashboard. The 2025 trial-to-paid rate is 18%.</li>
              <li data-kind="check" data-label="Hannah fixes it">Goal 1 now says 18% to 22%. Goal 2 becomes "run 5 rounds of usability testing on the new flow in 2026".</li>
              <li data-kind="thought" data-label="Hannah thinks">Conversion also depends on pricing and sales, which Sam does not control. She notes this, so the review can take it into account.</li>
              <li data-kind="result" data-label="Agreed goals">Sam and Hannah agree both goals and save them by Friday 30 January 2026.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to draft goals that link to a company objective. Then check every number and make sure the person controls most of the result.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a goal-setting coach. Use simple English.

        Company objective for [2027]: [Keep and grow our customers].
        Company key result: [gross revenue retention from 92% to 94%].
        Team: [Customer Success, 11 people].
        Role: [Customer Success Manager, about 20 accounts each].
        Baseline data I have: [own-account renewal rate last year: 85% to 92% across the team].

        Please:
        1. Write 1 team OKR: an objective and 3 key results that support the company key result.
        2. Write 3 SMART goals for one Customer Success Manager. Include one behaviour goal.
        3. Show a table: goal, Specific, Measurable, Achievable, Relevant, Time-bound (yes or no for each).
        4. For each goal, name one factor outside the person's control and one way the goal could push bad behaviour.

        Use only my numbers. Mark any number you need from me as [NEED DATA]. Do not link goals to pay.</pre>
            <ul class="ai-try-checks">
              <li>Every baseline number comes from the prompt or is marked [NEED DATA].</li>
              <li>Key results are outcomes with numbers, not just tasks.</li>
              <li>Each goal has a clear deadline.</li>
              <li>It names factors outside the person's control.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A good goal says what, how much and by when, and it links up to a company goal. AI can draft goals in seconds, but it may invent baselines. Check every number against your own data, and agree the final goals with the person who will do the work.
        </div>
      HTML
      starter_code: nil
    },
    6 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-hr">HR & Recruitment</div>
          <h1 class="lc-title">Writing Useful Feedback</h1>
        </div>
        <p class="lc-lead">Feedback is information that helps a person keep doing what works and change what does not. Useful feedback is specific, fair and kind. Vague feedback such as "good job" or "be more proactive" does not help anyone. In this lesson you will learn the SBI model: Situation, Behaviour, Impact. You will use it for strengths and for growth points. You will also see how AI can turn rough manager notes into clear feedback, and what you must still check yourself.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 292" role="img" aria-label="The SBI feedback model as four steps with arrows: 1 Situation, when and where. 2 Behaviour, what they did. 3 Impact, what it caused. 4 Next step, agree what happens next. Below, two made-up examples follow the same four columns. Growth point for Sam Patel: at the 1:1 on Tuesday 29 September, about sprints since July; specs were late for 3 of 8 sprints; engineers redid some screens; next step, share a draft 1 week before and flag delays early. Strength for Fatima Noor: from Wednesday 19 August for 2 weeks; she covered a colleague's queue; customers still got replies; next step, say thanks and ask what she learned.">
            <defs><marker id="pm6a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="20" y="20" width="150" height="58" rx="8" fill="#27274e" stroke="#3b82f6"/>
              <text x="95" y="44" font-weight="700">1. Situation</text>
              <text x="95" y="64" font-size="11" fill="#9b99b8">When and where</text>
              <rect x="210" y="20" width="150" height="58" rx="8" fill="#27274e" stroke="#8b5cf6"/>
              <text x="285" y="44" font-weight="700">2. Behaviour</text>
              <text x="285" y="64" font-size="11" fill="#9b99b8">What they did</text>
              <rect x="400" y="20" width="150" height="58" rx="8" fill="#27274e" stroke="#f59e0b"/>
              <text x="475" y="44" font-weight="700">3. Impact</text>
              <text x="475" y="64" font-size="11" fill="#9b99b8">What it caused</text>
              <rect x="590" y="20" width="150" height="58" rx="8" fill="#27274e" stroke="#10b981"/>
              <text x="665" y="44" font-weight="700">4. Next step</text>
              <text x="665" y="64" font-size="11" fill="#9b99b8">Agree what next</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#pm6a)">
                <line x1="171" y1="49" x2="206" y2="49"/>
                <line x1="361" y1="49" x2="396" y2="49"/>
                <line x1="551" y1="49" x2="586" y2="49"/>
              </g>
              <text x="380" y="108" font-weight="700" fill="#fbbf24">Growth point: Sam Patel (made up)</text>
              <g font-size="11">
                <rect x="20" y="118" width="150" height="52" rx="6" fill="#1f1f44" stroke="#f59e0b"/>
                <text x="95" y="139">1:1, Tue 29 Sep,</text>
                <text x="95" y="157">sprints since July</text>
                <rect x="210" y="118" width="150" height="52" rx="6" fill="#1f1f44" stroke="#f59e0b"/>
                <text x="285" y="139">Specs were late</text>
                <text x="285" y="157">for 3 of 8 sprints</text>
                <rect x="400" y="118" width="150" height="52" rx="6" fill="#1f1f44" stroke="#f59e0b"/>
                <text x="475" y="139">Engineers redid</text>
                <text x="475" y="157">some screens</text>
                <rect x="590" y="118" width="150" height="52" rx="6" fill="#1f1f44" stroke="#f59e0b"/>
                <text x="665" y="139">Draft 1 week before,</text>
                <text x="665" y="157">flag delays early</text>
              </g>
              <text x="380" y="202" font-weight="700" fill="#6ee7b7">Strength: Fatima Noor (made up)</text>
              <g font-size="11">
                <rect x="20" y="212" width="150" height="52" rx="6" fill="#1f1f44" stroke="#10b981"/>
                <text x="95" y="233">From Wed 19 Aug,</text>
                <text x="95" y="251">for 2 weeks</text>
                <rect x="210" y="212" width="150" height="52" rx="6" fill="#1f1f44" stroke="#10b981"/>
                <text x="285" y="233">Covered a</text>
                <text x="285" y="251">colleague's queue</text>
                <rect x="400" y="212" width="150" height="52" rx="6" fill="#1f1f44" stroke="#10b981"/>
                <text x="475" y="233">Customers still</text>
                <text x="475" y="251">got replies</text>
                <rect x="590" y="212" width="150" height="52" rx="6" fill="#1f1f44" stroke="#10b981"/>
                <text x="665" y="233">Say thanks, ask</text>
                <text x="665" y="251">what she learned</text>
              </g>
              <text x="380" y="284" font-size="11" fill="#9b99b8">Same four steps for praise and for growth points</text>
            </g>
          </svg>
          <figcaption>The SBI model keeps feedback about facts. Add a fourth step: agree what happens next.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The SBI model in plain words</h3>
          <p>The <strong>SBI model</strong> (Situation, Behaviour, Impact) comes from the Center for Creative Leadership, a US leadership training organisation. It is simple and widely used.</p>
          <table class="lc-table">
            <thead><tr><th>Part</th><th>What you say</th><th>Ask yourself</th></tr></thead>
            <tbody>
              <tr><td><strong>Situation</strong></td><td>When and where it happened</td><td>Can the person picture the moment?</td></tr>
              <tr><td><strong>Behaviour</strong></td><td>What the person did or said, as a camera would record it</td><td>Did I describe actions, not character or motives?</td></tr>
              <tr><td><strong>Impact</strong></td><td>What happened because of it: for customers, the team or the work</td><td>Is the effect real and checkable?</td></tr>
              <tr><td><strong>Next step</strong> (added)</td><td>What you agree to do next</td><td>Did we agree it together?</td></tr>
            </tbody>
          </table>
          <p>Use SBI for <strong>strengths</strong> as well as <strong>growth points</strong> (things to improve). Specific praise tells people exactly what to repeat. "Great work" does not.</p>
          <table class="lc-table">
            <thead><tr><th>Vague feedback</th><th>SBI feedback (made up)</th></tr></thead>
            <tbody>
              <tr><td>"Leo, nice job on the outage."</td><td>"At the post-incident review on Tue 22 Sep, you wrote a clear timeline and added a new alert. There has been no repeat since."</td></tr>
              <tr><td>"Sam, you need to be more organised."</td><td>"Since July, your design specs reached the engineers late for 3 of 8 sprints. On those sprints they started from early drafts and redid some screens."</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Specific and kind</h3>
          <p>Kind does not mean soft. It means you respect the person and you want them to succeed. A growth point can be clear and kind at the same time.</p>
          <ul class="lc-list">
            <li><strong>Describe actions, not character.</strong> Say "the specs were late for 3 sprints", not "you are disorganised".</li>
            <li><strong>Do not guess motives.</strong> You do not know why something happened. Ask: "What got in the way?"</li>
            <li><strong>Give it soon.</strong> Feedback helps most within days, not months. Do not save it for the year-end review.</li>
            <li><strong>Keep it private and two-way.</strong> Give growth points in a 1:1, not in a group chat. Listen to the person's side.</li>
            <li><strong>Use the same standard for everyone.</strong> Do not call one person "confident" and another "pushy" for the same behaviour.</li>
          </ul>
          <p>At Brightside Software, Hannah Clarke gave Sam Patel feedback at their 1:1 on Tuesday 29 September. She used the peer input from Tuesday 22 September. Sam explained that two of the late sprints had changed scope at the last minute. They agreed two steps. Sam will share a draft spec one week before each sprint. He will also flag any delay two days ahead.</p>
        </div>
        <div class="lc-card">
          <h3>Using AI to draft SBI feedback</h3>
          <p>Managers often have rough notes but struggle to find the right words. AI can turn notes into a clear SBI draft. It can also flag words that judge character. It cannot know what really happened, so you must check every fact.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Write some feedback for Sam telling him to stop being late.</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Turn my notes into SBI feedback (Situation, Behaviour, Impact,
        then a suggested next step). Use only facts in my notes.
        Describe actions, not personality. Do not guess why it happened.
        Write it as I would say it in a private 1:1, under 90 words.
        Then list any words in my notes that judge character.

        Notes: Peer input Tue 22 Sep: design specs late for 3 of 8
        sprints since July. On those sprints engineers started from
        early drafts and redid some screens. Mid-year we agreed specs
        go to engineers 1 week before each sprint. Sam is disorganised.</code></pre>
          <p>A good answer uses the dates and numbers from the notes. It should also flag "disorganised" as a character judgement and leave it out. Check the draft for these common AI mistakes:</p>
          <ul class="lc-list">
            <li>It adds a motive, such as "you did not seem to care".</li>
            <li>It makes numbers bigger or smaller: "often late" or "a few times" instead of "3 of 8 sprints".</li>
            <li>It sounds like a script. Rewrite it in your own words before the conversation.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Activity: build SBI feedback</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each made-up phrase into the SBI part it belongs to. One phrase is not SBI at all.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="s" data-label="Situation"></div>
              <div data-sorter-target="bucket" data-bucket="b" data-label="Behaviour"></div>
              <div data-sorter-target="bucket" data-bucket="i" data-label="Impact"></div>
              <div data-sorter-target="bucket" data-bucket="j" data-label="Judgement (leave it out)"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="s" data-why="It says when and where, so Leo can picture the moment.">At the post-incident review on Tuesday 22 September...</li>
              <li data-bucket="b" data-why="It describes what Leo did, as a camera would see it.">...you wrote a clear timeline and added a new alert.</li>
              <li data-bucket="i" data-why="It says what changed because of the behaviour, and it can be checked.">...and there has been no repeat outage since.</li>
              <li data-bucket="s" data-why="It sets the time and place for the feedback.">In the sprints since July...</li>
              <li data-bucket="b" data-why="It is an action with a number. It does not judge Sam as a person.">...your specs reached the engineers late for 3 of 8 sprints.</li>
              <li data-bucket="i" data-why="It shows the real effect on the team's work.">...so the engineers started from early drafts and redid some screens.</li>
              <li data-bucket="j" data-why="It labels the person and guesses at attitude. It gives Sam nothing to act on.">You clearly do not care about deadlines.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Give AI made-up manager notes and ask for one strength and one growth point in SBI form. Then check every fact and remove any judgement words.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a coach for people managers. Use simple, kind, direct English.

        Employee: [Fatima Noor, Support Specialist] (made-up person)
        My notes:
        [- Wed 19 Aug: covered a colleague's support queue for 2 weeks while he was away. His customers still got replies.
        - Her goal: median first reply under 4 hours. Year to date: 4.5 hours. It slipped during a staff shortage in June.
        - She wrote 12 help articles (goal 10). Repeat billing tickets went down.
        - She is a bit slow.]

        Please write:
        1. One strength in SBI form (Situation, Behaviour, Impact), then a next step.
        2. One growth point in SBI form, then 2 open questions to ask her and one next step we could agree.
        3. A list of any words in my notes that judge character, with a factual alternative.

        Rules: use only facts from my notes. Do not guess her motives. Mention context outside her control if the notes show it. Each piece under 80 words, as I would say it in a private 1:1.</pre>
            <ul class="ai-try-checks">
              <li>Every date and number matches the notes (4.5 hours, 12 articles, 2 weeks).</li>
              <li>"A bit slow" is flagged as a judgement and not used.</li>
              <li>The growth point mentions the staff shortage as context.</li>
              <li>No motives or feelings are invented.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Useful feedback names the situation, the behaviour and the impact, then agrees a next step. Use it for praise as well as for problems, and give it soon. AI can tidy your words, but only you know what really happened. Check every fact before you speak.
        </div>
      HTML
      starter_code: nil
    },
    7 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-hr">HR & Recruitment</div>
          <h1 class="lc-title">Preparing 1:1s and Check-Ins</h1>
        </div>
        <p class="lc-lead">Regular conversations are the heart of performance management. A <strong>1:1</strong> (one-to-one) is a short, private meeting between a manager and one team member, often every week or two. A <strong>check-in</strong> is a planned look at progress on goals, such as a mid-year check-in. In this lesson you will learn to plan an agenda, ask questions that open conversation and write short progress notes. You will see how AI helps Marcus Bell at Brightside Software prepare a difficult 1:1 in about ten minutes.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="A 30-minute 1:1 shown as a bar in four parts: their topics, 5 minutes; progress on goals, 10 minutes; blockers and support, 10 minutes; actions, 5 minutes. Below left, before the meeting, about 10 minutes: read last notes and goal data, ask AI for a draft agenda, pick 3 open questions, remove private details first. An arrow goes up to the meeting. An arrow goes down from the meeting to the right box, after the meeting, about 5 minutes: write a short dated note, share agreed actions in writing, set the follow-up date, check the note is fact, not feeling.">
            <defs><marker id="pm7a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <text x="380" y="24" font-weight="700" fill="#c4b5fd" text-anchor="middle">A 30-minute 1:1 (made-up agenda)</text>
              <g text-anchor="middle">
                <rect x="20" y="40" width="120" height="52" fill="#1f1f44" stroke="#22d3ee"/>
                <text x="80" y="62">Their topics</text>
                <text x="80" y="81" font-size="11" fill="#9b99b8">5 min</text>
                <rect x="140" y="40" width="240" height="52" fill="#1f1f44" stroke="#10b981"/>
                <text x="260" y="62">Progress on goals</text>
                <text x="260" y="81" font-size="11" fill="#9b99b8">10 min</text>
                <rect x="380" y="40" width="240" height="52" fill="#1f1f44" stroke="#f59e0b"/>
                <text x="500" y="62">Blockers and support</text>
                <text x="500" y="81" font-size="11" fill="#9b99b8">10 min</text>
                <rect x="620" y="40" width="120" height="52" fill="#1f1f44" stroke="#8b5cf6"/>
                <text x="680" y="62">Actions</text>
                <text x="680" y="81" font-size="11" fill="#9b99b8">5 min</text>
              </g>
              <rect x="20" y="140" width="320" height="124" rx="10" fill="#27274e" stroke="#3b82f6"/>
              <text x="36" y="164" font-weight="700" fill="#93c5fd">Before (about 10 minutes)</text>
              <text x="36" y="188">Read last notes and goal data</text>
              <text x="36" y="210">Ask AI for a draft agenda</text>
              <text x="36" y="232">Pick 3 open questions</text>
              <text x="36" y="254">Remove private details first</text>
              <rect x="420" y="140" width="320" height="124" rx="10" fill="#27274e" stroke="#10b981"/>
              <text x="436" y="164" font-weight="700" fill="#6ee7b7">After (about 5 minutes)</text>
              <text x="436" y="188">Write a short dated note</text>
              <text x="436" y="210">Share agreed actions in writing</text>
              <text x="436" y="232">Set the follow-up date</text>
              <text x="436" y="254">Check the note is fact, not feeling</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#pm7a)">
                <line x1="180" y1="138" x2="180" y2="97"/>
                <line x1="580" y1="93" x2="580" y2="135"/>
              </g>
              <text x="380" y="288" font-size="11" fill="#9b99b8" text-anchor="middle">The employee's topics come first. Nothing in the review should be a surprise.</text>
            </g>
          </svg>
          <figcaption>A simple 1:1 plan: prepare for ten minutes, talk for thirty, and write a short note straight after.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>What 1:1s and check-ins are for</h3>
          <p>A 1:1 is the employee's meeting as much as the manager's. It is where problems come out early, while they are still small. A good 1:1 has four parts:</p>
          <table class="lc-table">
            <thead><tr><th>Part</th><th>Purpose</th><th>Example question</th></tr></thead>
            <tbody>
              <tr><td>Their topics</td><td>The employee raises what matters to them first.</td><td>"What is on your mind this week?"</td></tr>
              <tr><td>Progress on goals</td><td>Look at real numbers against each goal.</td><td>"Renewals are at 17 of 20. How do you see the rest of the year?"</td></tr>
              <tr><td>Blockers and support</td><td>Find what gets in the way, and what you can change.</td><td>"What would make replying faster for you?"</td></tr>
              <tr><td>Actions</td><td>Agree who does what, by when.</td><td>"So what are we each doing before our next 1:1?"</td></tr>
            </tbody>
          </table>
          <p>A <strong>mid-year check-in</strong> is a longer 1:1 that looks at every goal. At Brightside, mid-year check-ins ran from Monday 6 to Friday 17 July 2026. Goals can change here if the work has changed. Write down any change and the reason.</p>
        </div>
        <div class="lc-card">
          <h3>Marcus prepares a difficult 1:1</h3>
          <p>Marcus Bell manages Customer Success. Ryan Walsh renewed 17 of 20 accounts (85%), against a goal of at least 92%. Two accounts were lost after late replies, on Wednesday 29 July and Wednesday 2 September. Ryan signed 1 of his 2 target upsells. An <strong>upsell</strong> is when a customer buys more.</p>
          <p>Maria Lopez asks Marcus if Ryan has heard these facts in a 1:1. Marcus is not sure. Review drafts are due on Friday 4 December. So Ryan must hear the facts now, not for the first time in December. Marcus books a 30-minute 1:1 for Tuesday 3 November.</p>
          <p>This is late. Marcus should have raised the July complaint at his next 1:1. Raising it now still gives Ryan the facts before his review is written.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Give me an agenda for a meeting with Ryan about his bad performance.</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>I manage a customer success manager. Plan a 30-minute 1:1 agenda
        in four parts: his topics, progress on goals, blockers and support,
        actions. Facts: renewals 17 of 20 (85%), goal at least 92%.
        Two accounts lost after late replies (Wed 29 Jul, Wed 2 Sep).
        Upsells 1 of 2. Suggest 5 open questions that help me understand
        what happened. Do not assume reasons. Keep the tone fair and calm.
        Add one sentence I can use to state the facts clearly at the start.</code></pre>
          <p>The better prompt gives facts, time, structure and tone. It does not ask AI to judge Ryan. Marcus checks every number against the account system before the meeting.</p>
        </div>
        <div class="lc-card">
          <h3>Questions that open conversation</h3>
          <p>An <strong>open question</strong> cannot be answered with "yes" or "no". It invites the person to explain. A <strong>closed question</strong> is useful only to confirm a fact.</p>
          <table class="lc-table">
            <thead><tr><th>Closed or leading (avoid)</th><th>Open (better)</th></tr></thead>
            <tbody>
              <tr><td>"Did you ignore that customer?"</td><td>"Talk me through what happened with that account in July."</td></tr>
              <tr><td>"Are you too busy?"</td><td>"How is your workload across your 20 accounts?"</td></tr>
              <tr><td>"You know replies must be faster, right?"</td><td>"What gets in the way of a quick reply?"</td></tr>
              <tr><td>"Is everything fine?"</td><td>"What support from me would help most?"</td></tr>
            </tbody>
          </table>
          <p>If the person raises a health or personal matter, listen and offer support. Do not put those details in your notes or in an AI tool. Refer the matter to HR, who handles it privately.</p>
        </div>
        <div class="lc-card">
          <h3>Write a short progress note</h3>
          <p>Write the note within a day, while you still remember. Keep to facts and agreed actions. Write it as if the employee will read it, because they may ask to see it.</p>
          <pre><code>1:1 note: Ryan Walsh / Marcus Bell, Tue 3 Nov 2026 (made up)
        Goals: renewals 17 of 20 (85%), goal at least 92%. Upsells 1 of 2.
        Discussed: the two lost accounts (Wed 29 Jul, Wed 2 Sep).
        Ryan's view: [what Ryan said, in his own words]
        Agreed: Ryan replies to every customer email within 1 working day.
        Agreed: Marcus checks the shared inbox report each Friday.
        Next 1:1: [date]</code></pre>
          <p>AI can turn your rough meeting notes into this format. Ask it to keep the employee's view in their own words and to add nothing. Then read it line by line. Use only your company-approved AI tool for real notes.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: prepare Marcus's 1:1 in the right order</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put Marcus's steps for the Tuesday 3 November 1:1 in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Read Ryan's goals, the renewal numbers and the last 1:1 notes.</li>
              <li data-order="2">Remove private details, then ask the approved AI tool for a draft agenda and open questions.</li>
              <li data-order="3">Check every number in the draft against the account system.</li>
              <li data-order="4">In the meeting, let Ryan raise his topics first, then state the facts calmly.</li>
              <li data-order="5">Listen to Ryan's view and agree actions with dates.</li>
              <li data-order="6">Write a short, dated note the same day and share the agreed actions with Ryan.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to prepare a 1:1 for a made-up team member. Then check that the questions are open and that no reason is assumed.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You help a people manager prepare a 1:1. Use simple, calm English.

        Team member: [Ryan Walsh, Customer Success Manager] (made-up person)
        Meeting: [30 minutes, Tuesday 3 November]
        Goals and facts:
        [- Renewal rate on own accounts: goal at least 92%. Result: 17 of 20 renewed.
        - Upsells: goal 2. Result: 1.
        - Wed 29 Jul: customer complained of no reply for 6 working days. Account did not renew.
        - Wed 2 Sep: second account lost after late replies.]

        Please write:
        1. A 30-minute agenda in 4 parts: their topics, progress on goals, blockers and support, actions. Give minutes for each.
        2. One opening sentence that states the facts clearly and kindly.
        3. Six open questions. No yes/no questions and no leading questions.
        4. A short note template for after the meeting, with a space for the employee's own view.
        Show any maths. Do not guess reasons for the results. Do not suggest a rating.</pre>
            <ul class="ai-try-checks">
              <li>The renewal rate is shown as 85% (17 ÷ 20), below the 92% goal.</li>
              <li>All six questions are open, not yes/no or leading.</li>
              <li>The employee's topics come first in the agenda.</li>
              <li>No reasons, motives or ratings are invented.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A good 1:1 starts with the employee's topics, looks at real numbers and ends with clear actions. Ten minutes of preparation with AI can make a hard talk calm and fair. Raise problems when they happen, so nothing in the year-end review is a surprise.
        </div>
      HTML
      starter_code: nil
    },
    8 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-hr">HR & Recruitment</div>
          <h1 class="lc-title">Self-Reviews and Peer Reviews</h1>
        </div>
        <p class="lc-lead">A manager sees only part of a person's work. Self-reviews and peer reviews fill in the rest. A <strong>self-review</strong> is the employee's own written view of their year. A <strong>peer review</strong> is feedback from colleagues who worked with them. In this lesson you will learn to guide employees to write useful self-reviews and to ask peers for real examples. You will also learn to summarise 360 feedback honestly with AI, without softening or hiding what people said.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="A workflow. Three inputs on the left: self-review, due Friday 13 November; 4 peer reviews, due Friday 20 November; manager notes, kept all year. Arrows lead to AI groups themes with counts. An arrow leads to you check each theme against the original words. An arrow leads to a fair summary in the review. Below, honest summary rules: keep counts such as 2 of 4, keep praise and problems, quote and do not reword, no reviewer names, no guesses about feelings.">
            <defs><marker id="pm8a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="20" y="30" width="170" height="44" rx="8" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="105" y="49">Self-review</text>
              <text x="105" y="66" font-size="11" fill="#9b99b8">due Fri 13 Nov</text>
              <rect x="20" y="90" width="170" height="44" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="105" y="109">4 peer reviews</text>
              <text x="105" y="126" font-size="11" fill="#9b99b8">due Fri 20 Nov</text>
              <rect x="20" y="150" width="170" height="44" rx="8" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="105" y="169">Manager notes</text>
              <text x="105" y="186" font-size="11" fill="#9b99b8">kept all year</text>
              <rect x="230" y="70" width="170" height="84" rx="10" fill="#27274e" stroke="#f59e0b"/>
              <text x="315" y="104" font-weight="700">AI groups themes</text>
              <text x="315" y="126" font-size="11" fill="#9b99b8">with counts (2 of 4)</text>
              <rect x="440" y="70" width="150" height="84" rx="10" fill="#27274e" stroke="#ec4899"/>
              <text x="515" y="96" font-weight="700">You check</text>
              <text x="515" y="116" font-size="11" fill="#9b99b8">each theme against</text>
              <text x="515" y="132" font-size="11" fill="#9b99b8">the original words</text>
              <rect x="630" y="70" width="110" height="84" rx="10" fill="#27274e" stroke="#10b981"/>
              <text x="685" y="104" font-weight="700">Fair summary</text>
              <text x="685" y="126" font-size="11" fill="#9b99b8">in the review</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#pm8a)">
                <line x1="191" y1="52" x2="226" y2="92"/>
                <line x1="191" y1="112" x2="226" y2="112"/>
                <line x1="191" y1="172" x2="226" y2="132"/>
                <line x1="401" y1="112" x2="436" y2="112"/>
                <line x1="591" y1="112" x2="626" y2="112"/>
              </g>
              <rect x="20" y="212" width="720" height="76" rx="10" fill="#1f1f44" stroke="#9b99b8"/>
              <text x="380" y="234" font-weight="700" fill="#c4b5fd">Honest summary rules</text>
              <text x="380" y="256" font-size="12">Keep counts (2 of 4) · keep praise and problems · quote, do not reword</text>
              <text x="380" y="276" font-size="12">No reviewer names · no guesses about feelings</text>
            </g>
          </svg>
          <figcaption>Three sources go into one summary. AI groups the themes; a person checks each theme against what people really wrote.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Guiding a useful self-review</h3>
          <p>Many people find self-reviews hard. Some under-sell their work. Others over-sell it. Clear questions and real data help everyone write a fair one. Give each employee their goals and their year-to-date results before they start.</p>
          <pre><code>Self-review questions (Brightside, due Fri 13 Nov 2026)
        1. For each goal: what was the target, what was the result,
           and what is your evidence (a number, a date, a link)?
        2. Your two most important pieces of work this year. What did
           you do, and what changed because of it?
        3. One thing that did not go to plan. What did you learn?
        4. What support would help you next year?
        5. Your suggested rating (1 to 5) and one sentence why.</code></pre>
          <p>Grace Okafor rated herself 3 and wrote: "I met my targets. Nothing special." Her results say more. Uptime was 99.92% (goal at least 99.9%). Median on-call response was 11 minutes (goal under 15). Her manager, Daniel Kim, asks her to add evidence for each goal. A self-rating is useful input. It is not the final answer, in either direction.</p>
          <p>Employees may use an approved AI tool to organise their own notes into these sections. Remind them to check every fact and to write the final text in their own words.</p>
        </div>
        <div class="lc-card">
          <h3>Asking peers for examples, not opinions</h3>
          <p>Choose three to five peers who saw the work closely. The employee and manager can agree the list together. Ask every peer the same questions, so answers can be compared:</p>
          <pre><code>Peer review questions (due Fri 20 Nov 2026)
        1. Describe one piece of work you saw this person do well.
           When was it, and what was the result?
        2. Describe one thing that would help you work better with
           them. Give a specific example.
        3. Anything else the manager should know? (optional)</code></pre>
          <p>Tell peers to describe actions and results, not personality. Also tell them who will see their comments. Write every comment as if the person will read it. In the UK, an employee can ask to see personal data about them, and that can include peer comments. The employer must also consider the privacy of the peer who wrote them. This is general information, not legal advice.</p>
        </div>
        <div class="lc-card">
          <h3>Summarising 360 feedback honestly</h3>
          <p><strong>360 feedback</strong> means input from all around a person: self, peers, manager, and sometimes customers or people they manage. Hannah Clarke has four peer reviews for Sam Patel, shown by role only (made up):</p>
          <table class="lc-table">
            <thead><tr><th>Peer (role)</th><th>Comment</th></tr></thead>
            <tbody>
              <tr><td>Frontend engineer</td><td>"The onboarding flow launched on time on 27 May. The usability tests caught real problems early. Since July, specs reached us late on 3 sprints and we redid some screens."</td></tr>
              <tr><td>Product manager</td><td>"Sam explains design choices clearly in reviews. The flow was well tested. Late specs in some sprints since July caused rework."</td></tr>
              <tr><td>UX researcher</td><td>"Sam used interview findings in every round of testing. The launch on 27 May went smoothly."</td></tr>
              <tr><td>Customer success manager</td><td>"The new flow launched on time, and Sam used the top questions from trial customers in it. He explains clearly why things changed."</td></tr>
            </tbody>
          </table>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Summarise this feedback about Sam in a positive way.</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Group these 4 peer comments into themes. For each theme, give
        how many of the 4 peers mention it and one short exact quote.
        Keep praise and problems with the same weight the peers gave them.
        Do not soften or strengthen any point. Do not guess who wrote what
        or how anyone feels. Do not add anything that is not in the comments.</code></pre>
          <p>A fair result has three themes. Launched on time and well tested (4 of 4). Specs late since July, causing rework (2 of 4). Explains design choices clearly (2 of 4). Compare each theme with the original comments before you use it.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: Hannah checks an AI summary</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Hannah asks">In the approved AI tool, Hannah pastes the four peer comments, with roles but no names. "Summarise this feedback for Sam's review."</li>
              <li data-kind="answer" data-label="AI replies">"Peers widely praise Sam's work. There was one small note about timing. The frontend engineer seems frustrated with him."</li>
              <li data-kind="warn" data-label="The mistakes">Two of four peers raised late specs and rework. That is not "one small note". The AI also guessed a feeling that nobody wrote.</li>
              <li data-kind="user" data-label="Hannah tries again">She uses the better prompt: themes, a count out of 4, one exact quote each, no guesses about feelings.</li>
              <li data-kind="result" data-label="New summary">Launched on time and well tested (4 of 4). Specs late since July, causing rework (2 of 4). Explains design choices clearly (2 of 4).</li>
              <li data-kind="check" data-label="Hannah checks">She reads each original comment and ticks each count. She compares the themes with her own notes from Tuesday 29 September.</li>
              <li data-kind="thought" data-label="Hannah decides">The summary is fair. She will share the themes and quotes with Sam, but not which peer said what.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to summarise made-up peer feedback with counts and quotes. Then check that nothing was softened, made stronger or invented.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You help a manager summarise 360 feedback fairly. Use simple English.

        Employee: [Sam Patel, Product Designer] (made-up person)
        Peer comments (roles only):
        [1. Frontend engineer: "The onboarding flow launched on time on 27 May. The usability tests caught real problems early. Since July, specs reached us late on 3 sprints and we redid some screens."
        2. Product manager: "Sam explains design choices clearly. The flow was well tested. Late specs in some sprints since July caused rework."
        3. UX researcher: "Sam used interview findings in every round of testing. The launch went smoothly."
        4. Customer success manager: "The new flow launched on time, and Sam used the top questions from trial customers in it. He explains clearly why things changed."]

        Please:
        1. Make a table of themes: theme, strength or growth point, how many of the 4 peers mention it, one exact short quote.
        2. Write a 4-sentence summary that keeps praise and problems in the same balance as the comments.
        3. List anything you were unsure about.
        Do not guess feelings or motives. Do not say which peer wrote what in the summary. Add nothing that is not in the comments.</pre>
            <ul class="ai-try-checks">
              <li>The counts are right (on time and well tested: 4 of 4; late specs: 2 of 4; explains clearly: 2 of 4).</li>
              <li>Each quote matches the original words exactly.</li>
              <li>The late specs and rework are not hidden or softened.</li>
              <li>No feelings, motives or new facts are added.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Self-reviews and peer reviews show work the manager did not see. Guide them with clear questions and real data. When AI summarises them, ask for counts and exact quotes, then check every theme against the original words. An honest summary keeps both the praise and the problems.
        </div>
      HTML
      starter_code: nil
    },
    9 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-hr">HR & Recruitment</div>
          <h1 class="lc-title">Writing Performance Reviews</h1>
        </div>
        <p class="lc-lead">A performance review is the written record of a person's year. It often affects pay, promotion and development. A good review is clear, fair and based on evidence. A weak review is full of vague words that nobody can check. In this lesson you will learn a simple review structure and how to link a rating to evidence. You will also learn which words to avoid and how to use AI for a first draft. You will follow Daniel Kim as he writes Grace Okafor's review at Brightside Software.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="Left: a review document for Grace Okafor, made up, with six sections: 1 summary, 2 results against goals, 3 strengths with examples, 4 growth area, 5 rating and reason, 6 next year's development. An arrow points right to a panel called vague to specific, with four pairs. Great job becomes uptime 99.92 percent, goal 99.9. Very reliable becomes on-call response 11 minutes, goal under 15. Not visible enough becomes seen by whom, check the results. Lacks drive becomes which goal was missed, and when.">
            <defs><marker id="pm9a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <rect x="20" y="16" width="340" height="270" rx="10" fill="#27274e" stroke="#8b5cf6"/>
              <text x="190" y="40" font-weight="700" fill="#c4b5fd" text-anchor="middle">Review: Grace Okafor (made up)</text>
              <rect x="36" y="54" width="308" height="30" rx="6" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="48" y="74">1. Summary</text>
              <rect x="36" y="92" width="308" height="30" rx="6" fill="#1f1f44" stroke="#10b981"/>
              <text x="48" y="112">2. Results against goals</text>
              <rect x="36" y="130" width="308" height="30" rx="6" fill="#1f1f44" stroke="#10b981"/>
              <text x="48" y="150">3. Strengths, with examples</text>
              <rect x="36" y="168" width="308" height="30" rx="6" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="48" y="188">4. Growth area</text>
              <rect x="36" y="206" width="308" height="30" rx="6" fill="#1f1f44" stroke="#ec4899"/>
              <text x="48" y="226">5. Rating and reason</text>
              <rect x="36" y="244" width="308" height="30" rx="6" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="48" y="264">6. Next year's development</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#pm9a)">
                <line x1="361" y1="150" x2="396" y2="150"/>
              </g>
              <rect x="400" y="16" width="340" height="270" rx="10" fill="#1f1f44" stroke="#9b99b8"/>
              <text x="570" y="40" font-weight="700" fill="#c4b5fd" text-anchor="middle">Vague → specific</text>
              <g font-size="12">
                <text x="416" y="72" fill="#f9a8d4">"Great job"</text>
                <text x="416" y="92" fill="#6ee7b7">Uptime 99.92% (goal 99.9%)</text>
                <text x="416" y="130" fill="#f9a8d4">"Very reliable"</text>
                <text x="416" y="150" fill="#6ee7b7">On-call response 11 min (goal under 15)</text>
                <text x="416" y="188" fill="#f9a8d4">"Not visible enough"</text>
                <text x="416" y="208" fill="#6ee7b7">Seen by whom? Check the results.</text>
                <text x="416" y="246" fill="#f9a8d4">"Lacks drive"</text>
                <text x="416" y="266" fill="#6ee7b7">Which goal was missed, and when?</text>
              </g>
            </g>
          </svg>
          <figcaption>Six sections make a clear review. Every vague word should become a fact you can check, or a question you must answer first.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>A simple review structure</h3>
          <p>Use the same structure for everyone. It makes reviews fair and easy to compare at calibration.</p>
          <table class="lc-table">
            <thead><tr><th>Section</th><th>What to write</th><th>Grace Okafor example (made up)</th></tr></thead>
            <tbody>
              <tr><td>1. Summary</td><td>Two or three sentences on the year</td><td>Grace beat both reliability goals and found risks before they became outages.</td></tr>
              <tr><td>2. Results against goals</td><td>Each goal: target, result, met or not</td><td>Uptime 99.92% (goal at least 99.9%): met. Median on-call response 11 minutes (goal under 15): met.</td></tr>
              <tr><td>3. Strengths, with examples</td><td>Two strengths, each with a dated example</td><td>Tue 24 Feb: automated the nightly backup check, which found 2 failed backups early. Tue 9 Jun: disaster-recovery test took 50 minutes (target 60).</td></tr>
              <tr><td>4. Growth area</td><td>One clear, agreed area to grow</td><td>Share what she knows: write a <strong>runbook</strong> (a step-by-step guide for a routine task) for the backup check, so others can run it.</td></tr>
              <tr><td>5. Rating and reason</td><td>The rating and one or two sentences of evidence</td><td>4 (Exceeds): both goals beaten, plus proactive work on backups.</td></tr>
              <tr><td>6. Development</td><td>Next year's growth goal and support</td><td>Lead the next disaster-recovery test and present the results at an all-hands meeting.</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Link the rating to evidence</h3>
          <p>Brightside uses a 1 to 5 scale: 1 Does not meet, 2 Partly meets, 3 Meets, 4 Exceeds, 5 Far exceeds. A rating should follow from the results and the dated examples. It should not follow from a general feeling about the person.</p>
          <ul class="lc-list">
            <li><strong>Start with results against goals.</strong> Then add how the work was done, with examples.</li>
            <li><strong>Note context.</strong> Record things outside the person's control, such as a staff shortage. Record any agreed adjustment, such as a reasonable adjustment for a disability.</li>
            <li><strong>Explain gaps with the self-review.</strong> Grace rated herself 3. Daniel rates her 4. In the review talk, he shows her the evidence for his higher rating.</li>
            <li><strong>Look for missing evidence.</strong> Daniel logged only 2 notes on Grace, against 6 on Aisha Rahman. Grace works mostly from home. Before he rates, Daniel checks her results in the monitoring tools.</li>
          </ul>
          <p>The manager makes the rating and writes the reason. AI must not suggest the number. Calibration may still change a draft rating, so call it a draft until it is final.</p>
        </div>
        <div class="lc-card">
          <h3>Words to avoid</h3>
          <p>Vague words cannot be checked. Some words also carry bias. For example, personality words such as "abrasive" or "bossy" can be used more often for some groups than others. Words about age, health or family can point to a protected characteristic, such as age or disability.</p>
          <table class="lc-table">
            <thead><tr><th>Avoid</th><th>Why</th><th>Write instead (made up)</th></tr></thead>
            <tbody>
              <tr><td>"Great job", "solid year"</td><td>Says nothing the person can repeat</td><td>"Uptime was 99.92% against a goal of 99.9%."</td></tr>
              <tr><td>"Not visible enough"</td><td>Can penalise remote or part-time staff</td><td>Judge results. If updates are needed, agree how and when.</td></tr>
              <tr><td>"Abrasive", "too emotional"</td><td>Judges personality, not actions</td><td>"In the [date] team meeting, you interrupted two colleagues before they finished."</td></tr>
              <tr><td>"Energetic young talent", "set in his ways"</td><td>Points to age</td><td>Describe the work and the result.</td></tr>
              <tr><td>"Always late", "never helps"</td><td>Exaggerates and invites argument</td><td>"Specs were late for 3 of 8 sprints since July."</td></tr>
              <tr><td>"Good culture fit"</td><td>Can reward people who are like the manager</td><td>Name the behaviour and the company value it shows.</td></tr>
            </tbody>
          </table>
          <p>These are general fairness points, not legal advice. For a review that may lead to a formal process, ask HR or an employment lawyer to read it first.</p>
        </div>
        <div class="lc-card">
          <h3>Using AI for the first draft</h3>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Write a glowing performance review for Grace, an SRE. Rating 4.</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Draft a performance review in 6 sections: summary, results against
        goals, strengths with examples, growth area, rating reason, and
        development. Use only the goals, results and dated notes below.
        After each sentence, show the source in brackets. Mark gaps as
        [NO EVIDENCE]. Avoid personality words and words like "always",
        "never" or "great". Leave the rating line blank for me to fill in.</code></pre>
          <p>After the draft, check four things. Every fact matches a source. No vague or biased words are left. The growth area is fair and agreed. The rating and reason are in your own words. If your company asks, record that an approved AI tool helped draft the text.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: ready to use, or rewrite?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort these made-up review sentences. Which are ready to use, and which need rewriting?</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="ok" data-label="Ready to use"></div>
              <div data-sorter-target="bucket" data-bucket="fix" data-label="Rewrite it"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="ok" data-why="It gives the target, the result and a clear outcome.">Grace kept uptime at 99.92% against a goal of at least 99.9%.</li>
              <li data-bucket="fix" data-why="It is vague. Which results? Against which goals?">Grace had a solid year and is a valued team member.</li>
              <li data-bucket="fix" data-why="It may penalise remote work. Judge the results, not how often the manager saw her.">Grace should be more visible in the office.</li>
              <li data-bucket="ok" data-why="It is dated, specific and shows the impact.">On Tue 24 Feb, Grace automated the nightly backup check. It found 2 failed backups early.</li>
              <li data-bucket="fix" data-why="One strong demo is a single visible moment. The review should rest on results against goals.">Aisha is clearly our star after her all-hands demo.</li>
              <li data-bucket="ok" data-why="It states a missed goal with numbers and gives fair context.">Leo shipped billing API v2 three weeks late, after the scope grew in May.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to draft a review from made-up goals and notes. Then check every sentence against a source and write the rating yourself.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You help a manager draft a fair performance review. Use simple English.

        Employee: [Grace Okafor, Site Reliability Engineer] (made-up person)
        Goals and results:
        [- Uptime of the customer app at least 99.9%. Result: 99.92%.
        - Median on-call response under 15 minutes. Result: 11 minutes.]
        Dated notes:
        [- Tue 24 Feb: automated the nightly backup check. It found 2 failed backups early.
        - Tue 9 Jun: ran the disaster-recovery test. Recovery took 50 minutes (target 60).
        - Works mostly remotely. Self-rating: 3.]

        Please draft 6 sections: summary, results against goals (a table), strengths with examples, one growth area, rating reason, development for next year.
        Rules:
        - After each sentence, show the source in brackets.
        - Mark gaps as [NO EVIDENCE].
        - No personality words, no "always" or "never", and nothing about remote work as a weakness.
        - Leave the rating as [MANAGER TO DECIDE].
        Finally, list 3 questions I should ask Grace before I finish the review.</pre>
            <ul class="ai-try-checks">
              <li>Each goal shows as met, with the right numbers.</li>
              <li>Every sentence has a source, or is marked [NO EVIDENCE].</li>
              <li>Remote work is not described as a weakness.</li>
              <li>The rating is left for you to decide.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A good review follows a clear structure, links every claim to evidence and explains the rating in plain words. Replace each vague word with a fact or a question. AI can write the first draft quickly, but the manager owns every sentence and the rating.
        </div>
      HTML
      starter_code: nil
    },
    10 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-hr">HR & Recruitment</div>
          <h1 class="lc-title">Spotting Rating Bias</h1>
        </div>
        <p class="lc-lead">Every manager tries to be fair, but all people have biases. A <strong>rating bias</strong> is a pattern that pushes a rating up or down for reasons other than the work. In this lesson you will learn four common biases: recency, halo, leniency and similarity. You will check Brightside Software's draft ratings with simple spreadsheet maths. You will also learn how to compare ratings across groups safely. A pattern in the numbers is a question to ask, not proof that someone was unfair.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 296" role="img" aria-label="A bar chart of average draft ratings by team on a 1 to 5 scale, made up. Customer Success 4.67, with 100 percent rated 4 or 5. Platform Engineering 3.67, with 67 percent rated 4 or 5. Product Design 3.50, with 50 percent rated 4 or 5. The other two teams together 3.60, with 60 percent rated 4 or 5. A dashed line marks the company average of 4.00. Below, four bias cards: recency, for example Leo's September outage; halo, for example Aisha's demo; leniency, for example Customer Success ratings; similarity, rating people like me higher.">
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <text x="380" y="20" font-weight="700" fill="#c4b5fd" text-anchor="middle">Average draft rating by team (made up, scale 1 to 5)</text>
              <text x="620" y="40" font-size="11" fill="#9b99b8">Rated 4 or 5</text>
              <text x="20" y="67">Customer Success</text>
              <rect x="170" y="50" width="374" height="24" rx="4" fill="#ec4899"/>
              <text x="536" y="67" font-weight="700" fill="#0f0f23" text-anchor="end">4.67</text>
              <text x="620" y="67" font-size="12">100% (3 of 3)</text>
              <text x="20" y="103">Platform Eng.</text>
              <rect x="170" y="86" width="294" height="24" rx="4" fill="#3b82f6"/>
              <text x="456" y="103" font-weight="700" fill="#0f0f23" text-anchor="end">3.67</text>
              <text x="620" y="103" font-size="12">67% (2 of 3)</text>
              <text x="20" y="139">Product Design</text>
              <rect x="170" y="122" width="280" height="24" rx="4" fill="#f59e0b"/>
              <text x="442" y="139" font-weight="700" fill="#0f0f23" text-anchor="end">3.50</text>
              <text x="620" y="139" font-size="12">50% (1 of 2)</text>
              <text x="20" y="175">Other 2 teams</text>
              <rect x="170" y="158" width="288" height="24" rx="4" fill="#8b5cf6"/>
              <text x="450" y="175" font-weight="700" fill="#0f0f23" text-anchor="end">3.60</text>
              <text x="620" y="175" font-size="12">60% (3 of 5)</text>
              <line x1="490" y1="44" x2="490" y2="188" stroke="#e2e0f0" stroke-width="1.5" stroke-dasharray="5 4"/>
              <text x="490" y="204" font-size="11" fill="#9b99b8" text-anchor="middle">Company average 4.00</text>
              <g text-anchor="middle">
                <rect x="20" y="222" width="172" height="60" rx="8" fill="#1f1f44" stroke="#22d3ee"/>
                <text x="106" y="245" font-weight="700">Recency</text>
                <text x="106" y="267" font-size="11" fill="#9b99b8">Leo's Sep outage</text>
                <rect x="202" y="222" width="172" height="60" rx="8" fill="#1f1f44" stroke="#10b981"/>
                <text x="288" y="245" font-weight="700">Halo</text>
                <text x="288" y="267" font-size="11" fill="#9b99b8">Aisha's all-hands demo</text>
                <rect x="384" y="222" width="172" height="60" rx="8" fill="#1f1f44" stroke="#ec4899"/>
                <text x="470" y="245" font-weight="700">Leniency</text>
                <text x="470" y="267" font-size="11" fill="#9b99b8">Customer Success</text>
                <rect x="566" y="222" width="172" height="60" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
                <text x="652" y="245" font-weight="700">Similarity</text>
                <text x="652" y="267" font-size="11" fill="#9b99b8">"Like me" rated higher</text>
              </g>
            </g>
          </svg>
          <figcaption>Customer Success ratings sit well above the other teams. That is a question for calibration, not proof of bias. Four common biases are shown below the chart.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Four common rating biases</h3>
          <table class="lc-table">
            <thead><tr><th>Bias</th><th>Plain meaning</th><th>Brightside risk (made up)</th><th>Question to ask</th></tr></thead>
            <tbody>
              <tr><td><strong>Recency</strong></td><td>Recent events count more than the whole year.</td><td>Leo Martins caused a 40-minute P1 outage on Thu 17 Sep. His test coverage reached 78% (goal 75%), and he fixed the cause well.</td><td>"What happened from January to June?"</td></tr>
              <tr><td><strong>Halo</strong></td><td>One strong trait or moment colours everything else. The opposite is the <em>horns</em> effect.</td><td>Aisha Rahman gave a strong demo at the all-hands on Thu 8 Oct. Her rating should rest on her goals.</td><td>"Would the rating be the same without that one moment?"</td></tr>
              <tr><td><strong>Leniency</strong></td><td>A manager rates everyone high. <em>Severity</em> is the opposite: everyone low.</td><td>Marcus Bell rates all three of his staff 4 or 5. Ryan Walsh missed his renewal goal.</td><td>"Do the ratings match results against goals?"</td></tr>
              <tr><td><strong>Similarity</strong></td><td>People rate higher those who are like them: same background, interests or style.</td><td>Any manager can do this without noticing it.</td><td>"Am I rating the work, or how easy this person is to talk to?"</td></tr>
            </tbody>
          </table>
          <p>Watch for one more pattern. Daniel Kim logged 2 notes on Grace Okafor, who works mostly remotely, and 6 on Aisha. Less contact can mean less credit. This is sometimes called <strong>proximity bias</strong> (favouring the people you see most).</p>
        </div>
        <div class="lc-card">
          <h3>Check the ratings with simple maths</h3>
          <p>Maria Lopez runs this check on Monday 7 December. That is after manager drafts were due (Friday 4 December) and before calibration (Wednesday 9 December). She puts the eight made-up employees in a spreadsheet, rows 2 to 9:</p>
          <table class="lc-table">
            <thead><tr><th>A Name</th><th>B Team</th><th>C Self</th><th>D Manager</th><th>E Notes</th><th>F Goals met</th><th>G Gap</th><th>H Flag</th></tr></thead>
            <tbody>
              <tr><td>Aisha Rahman</td><td>Platform Engineering</td><td>4</td><td>4</td><td>6</td><td>100%</td><td>0</td><td></td></tr>
              <tr><td>Leo Martins</td><td>Platform Engineering</td><td>3</td><td>3</td><td>5</td><td>50%</td><td>0</td><td></td></tr>
              <tr><td>Grace Okafor</td><td>Platform Engineering</td><td>3</td><td>4</td><td>2</td><td>100%</td><td>1</td><td></td></tr>
              <tr><td>Sam Patel</td><td>Product Design</td><td>4</td><td>3</td><td>4</td><td>50%</td><td>-1</td><td></td></tr>
              <tr><td>Mei Chen</td><td>Product Design</td><td>4</td><td>4</td><td>4</td><td>100%</td><td>0</td><td></td></tr>
              <tr><td>Jordan Ellis</td><td>Customer Success</td><td>4</td><td>5</td><td>3</td><td>100%</td><td>1</td><td></td></tr>
              <tr><td>Fatima Noor</td><td>Customer Success</td><td>4</td><td>4</td><td>3</td><td>67%</td><td>0</td><td></td></tr>
              <tr><td>Ryan Walsh</td><td>Customer Success</td><td>4</td><td>5</td><td>3</td><td>0%</td><td>1</td><td>Check</td></tr>
            </tbody>
          </table>
          <p><strong>Goals met</strong> is the share of a person's goals that were met, for example 2 of 3 = 67% for Fatima. Column G uses <code>=D2-C2</code>, so a positive gap means the manager rated higher than the employee. Column H uses <code>=IF(AND(F2&lt;0.5,D2&gt;=4),"Check","")</code> to flag a high rating with few goals met. Copy both formulas down to row 9.</p>
          <pre><code>Company average           =AVERAGE(D2:D9)                                    4.00
        Customer Success average  =AVERAGEIF(B2:B9,"Customer Success",D2:D9)         4.67
        Other teams average       =AVERAGEIF(B2:B9,"&lt;&gt;Customer Success",D2:D9)       3.60
        CS rated 4 or 5           =COUNTIFS(B2:B9,"Customer Success",D2:D9,"&gt;=4")
                                    /COUNTIF(B2:B9,"Customer Success")               100%
        Others rated 4 or 5       =COUNTIFS(B2:B9,"&lt;&gt;Customer Success",D2:D9,"&gt;=4")
                                    /COUNTIF(B2:B9,"&lt;&gt;Customer Success")             60%
        Self-rating average       =AVERAGE(C2:C9)                                    3.75</code></pre>
          <p>Type each two-line formula on one line in a single cell. What Maria sees: Customer Success averages 4.67 against 3.60 for the other teams. Ryan is rated 5 (Far exceeds) with 0 of 2 goals met. Jordan Ellis met both goals exactly (92% renewals, 2 upsells) and is rated 5. Grace has the fewest notes. These go to calibration as questions.</p>
        </div>
        <div class="lc-card">
          <h3>Checking ratings by group, safely</h3>
          <p>HR should also compare ratings across groups, such as sex, ethnicity, age band, disability, part-time staff or remote staff. This can show bias that no single manager sees. Do it carefully:</p>
          <ul class="lc-list">
            <li><strong>Compare rates, then a ratio.</strong> Made-up example: group A has 9 of 30 people rated 4 or 5 (30%). Group B has 18 of 40 (45%). The ratio is 30 ÷ 45 = 0.67.</li>
            <li><strong>Know the rule of thumb.</strong> In US guidance, a ratio below 0.8 (the <em>four-fifths rule</em>) is a long-used signal to look closer. NYC Local Law 144 bias audits also report this kind of <em>impact ratio</em> for automated tools.</li>
            <li><strong>Be careful with small groups.</strong> In a team of 3, one changed rating moves the share by 33 points. Small numbers can mislead in both directions.</li>
            <li><strong>Protect the data.</strong> Data such as ethnicity or health is very sensitive. Keep it in the HR system. Share only totals for groups. Never paste it into a public AI tool.</li>
          </ul>
          <p>A gap is a reason to look at the evidence, not proof of discrimination. A gap below 0.8 does not prove a problem, and a ratio above 0.8 does not prove fairness. This is general education, not legal advice. Ask an employment lawyer how to run and record these checks.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: Maria runs the bias check</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="tool" data-label="Spreadsheet">On Monday 7 December, Maria enters the eight draft ratings and adds the averages, shares, gaps and flags.</li>
              <li data-kind="result" data-label="What the numbers show">Customer Success: 4.67 average, 100% rated 4 or 5. Other teams: 3.60 and 60%. Ryan is flagged: rated 5 with 0% of goals met.</li>
              <li data-kind="user" data-label="Maria asks AI">In the approved AI tool, with initials only: "Here are draft ratings, goals met and note counts. Which bias patterns might explain them?"</li>
              <li data-kind="answer" data-label="AI replies">"Marcus Bell is a lenient manager. R.W. should be rated 3."</li>
              <li data-kind="warn" data-label="The mistake">The AI labels a person and makes a rating decision. Three ratings are too few to prove leniency. Only managers decide ratings, at calibration.</li>
              <li data-kind="check" data-label="Maria rewrites">She turns each pattern into a neutral question. "What evidence supports a 5 for 0 of 2 goals met?" "Jordan met both goals exactly. What supports Far exceeds?"</li>
              <li data-kind="result" data-label="Calibration pack">Maria adds the questions to the pack for Wednesday 9 December, with the recency, halo and visibility questions for Platform Engineering.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Give AI a made-up ratings table and ask it to find possible bias patterns. Check its maths in a spreadsheet, and turn every finding into a question.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an HR analyst helping prepare for a calibration meeting. Use simple English.

        Made-up draft ratings (scale 1 to 5). Columns: person, team, self-rating, manager rating, manager notes logged, goals met.
        [P1, Engineering, 4, 4, 6, 2 of 2
        P2, Engineering, 3, 3, 5, 1 of 2
        P3, Engineering, 3, 4, 2, 2 of 2
        P4, Design, 4, 3, 4, 1 of 2
        P5, Design, 4, 4, 4, 2 of 2
        P6, Success, 4, 5, 3, 2 of 2
        P7, Success, 4, 4, 3, 2 of 3
        P8, Success, 4, 5, 3, 0 of 2]

        Please:
        1. Show the average manager rating and the share rated 4 or 5 for each team. Show your working.
        2. List possible signs of recency, halo, leniency, similarity or visibility bias. Say what extra evidence would confirm or rule out each one.
        3. Write 5 neutral questions for the calibration meeting.
        4. Say what these numbers cannot tell us, given the small groups.
        Do not change any rating. Do not label any manager as biased.</pre>
            <ul class="ai-try-checks">
              <li>Team averages are right: Success 4.67, Engineering 3.67, Design 3.50.</li>
              <li>P8 (rated 5 with 0 of 2 goals met) is raised as a question.</li>
              <li>Findings are framed as questions, not verdicts about people.</li>
              <li>It warns that small groups can mislead.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Bias hides in patterns, so look at the numbers: averages by team, shares of top ratings, self versus manager gaps and ratings against goals met. Let the spreadsheet do the maths. Let AI suggest questions. Then let people check the evidence and decide together at calibration.
        </div>
      HTML
      starter_code: nil
    },
    11 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-hr">HR & Recruitment</div>
          <h1 class="lc-title">Calibration Meetings</h1>
        </div>
        <p class="lc-lead">A calibration meeting is where managers meet to compare their draft ratings. The goal is simple: the same rating should mean the same thing in every team. In this lesson you will learn to prepare the data for calibration, set one clear standard and run a fair discussion. You will follow Maria Lopez as she prepares Brightside Software's calibration meeting on Wednesday 9 December 2026. You will also see where AI saves time, and where people must decide.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 320" role="img" aria-label="Top: five steps from left to right with arrows. Drafts due on Friday 4 December. Build the pack with data and flags. Pre-read sent on Monday 7 December. Meeting on Wednesday 9 December. Record why for each change. Bottom: a bar chart of average manager draft ratings by team on a 1 to 5 scale. Platform Engineering 3.67. Product Design 3.50. Customer Success 4.67. A line marks the average for all 8 people, 4.00. Customer Success is flagged because all 3 people are rated 4 or 5.">
            <defs><marker id="pm11a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <text x="380" y="24" font-weight="700" fill="#c4b5fd" text-anchor="middle">Calibration: from draft ratings to fair ratings</text>
              <g text-anchor="middle">
                <rect x="20" y="40" width="128" height="56" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
                <text x="84" y="64" font-weight="700">Drafts due</text>
                <text x="84" y="84" font-size="11" fill="#9b99b8">Fri 4 Dec</text>
                <rect x="168" y="40" width="128" height="56" rx="8" fill="#1f1f44" stroke="#22d3ee"/>
                <text x="232" y="64" font-weight="700">Build pack</text>
                <text x="232" y="84" font-size="11" fill="#9b99b8">data + flags</text>
                <rect x="316" y="40" width="128" height="56" rx="8" fill="#1f1f44" stroke="#8b5cf6"/>
                <text x="380" y="64" font-weight="700">Pre-read</text>
                <text x="380" y="84" font-size="11" fill="#9b99b8">Mon 7 Dec</text>
                <rect x="464" y="40" width="128" height="56" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
                <text x="528" y="64" font-weight="700">Meeting</text>
                <text x="528" y="84" font-size="11" fill="#9b99b8">Wed 9 Dec</text>
                <rect x="612" y="40" width="128" height="56" rx="8" fill="#1f1f44" stroke="#10b981"/>
                <text x="676" y="64" font-weight="700">Record why</text>
                <text x="676" y="84" font-size="11" fill="#9b99b8">for each change</text>
              </g>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#pm11a)">
                <line x1="149" y1="68" x2="164" y2="68"/>
                <line x1="297" y1="68" x2="312" y2="68"/>
                <line x1="445" y1="68" x2="460" y2="68"/>
                <line x1="593" y1="68" x2="608" y2="68"/>
              </g>
              <rect x="20" y="116" width="720" height="194" rx="10" fill="#27274e" stroke="#3b3b6e"/>
              <text x="40" y="140" font-weight="700">Manager draft ratings: team average (scale 1 to 5)</text>
              <text x="40" y="176">Platform Engineering</text>
              <rect x="210" y="160" width="367" height="24" rx="4" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="569" y="177" text-anchor="end">3.67</text>
              <text x="40" y="214">Product Design</text>
              <rect x="210" y="198" width="350" height="24" rx="4" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="552" y="215" text-anchor="end">3.50</text>
              <text x="40" y="252">Customer Success</text>
              <rect x="210" y="236" width="467" height="24" rx="4" fill="#1f1f44" stroke="#ec4899"/>
              <text x="669" y="253" text-anchor="end">4.67</text>
              <line x1="610" y1="152" x2="610" y2="268" stroke="#f59e0b" stroke-width="2" stroke-dasharray="5 4"/>
              <text x="610" y="148" font-size="11" fill="#f59e0b" text-anchor="middle">All 8: 4.00</text>
              <text x="40" y="292" font-size="12" fill="#f9a8d4">Flag to discuss: Customer Success rated all 3 people 4 or 5, but one renewal goal was missed.</text>
            </g>
          </svg>
          <figcaption>Calibration has five steps. The pack shows each team's draft ratings side by side, so the group can see where standards may differ. (Made-up data.)</figcaption>
        </figure>
        <div class="lc-card">
          <h3>What calibration is, and what it is not</h3>
          <p>Managers rate people in different ways. One manager is strict. Another gives everyone high ratings. This is called <strong>leniency</strong>. Calibration fixes this by comparing ratings against one shared standard before they are final.</p>
          <table class="lc-table">
            <thead><tr><th>Calibration is</th><th>Calibration is not</th></tr></thead>
            <tbody>
              <tr><td>A check that each rating matches the evidence</td><td>A place to rank people against each other</td></tr>
              <tr><td>Using the same rating definitions in every team</td><td>A quota, such as "only 10% can get a 5" (a forced distribution)</td></tr>
              <tr><td>A discussion of results and dated examples</td><td>A discussion of personality, health or private life</td></tr>
              <tr><td>Managers deciding, with HR keeping the process fair</td><td>AI or HR choosing the rating</td></tr>
            </tbody>
          </table>
          <p>At Brightside, Maria Lopez runs the meeting as the facilitator (the person who keeps the discussion fair and on time). The three managers attend: Daniel Kim, Hannah Clarke and Marcus Bell. Each manager owns the final rating for their own people. Maria reviews every change.</p>
        </div>
        <div class="lc-card">
          <h3>Prepare the data: the calibration pack</h3>
          <p>A calibration pack is a short document with the facts the group needs. Maria builds it after manager drafts are due on Friday 4 December. She sends it as a pre-read on Monday 7 December, so everyone can read it before the meeting.</p>
          <table class="lc-table">
            <thead><tr><th>Person</th><th>Goal results</th><th>Self</th><th>Draft</th><th>Notes</th><th>Question to discuss</th></tr></thead>
            <tbody>
              <tr><td>Aisha Rahman</td><td>2 P1s (max 3); database move done early</td><td>4</td><td>4</td><td>6</td><td>Is the rating based on the KRs, not the all-hands demo?</td></tr>
              <tr><td>Leo Martins</td><td>Tests 78% (goal 75%); API 3 weeks late</td><td>3</td><td>3</td><td>5</td><td>Does the rating cover the whole year, not just September?</td></tr>
              <tr><td>Grace Okafor</td><td>Uptime 99.92%; response 11 min</td><td>3</td><td>4</td><td>2</td><td>Only 2 notes. Is any evidence missing?</td></tr>
              <tr><td>Sam Patel</td><td>Conversion 21% (goal 22%); 5 test rounds</td><td>4</td><td>3</td><td>4</td><td>Self and manager differ. What evidence explains the gap?</td></tr>
              <tr><td>Mei Chen</td><td>30 interviews (goal 24); 3 teams</td><td>4</td><td>4</td><td>4</td><td>None</td></tr>
              <tr><td>Jordan Ellis</td><td>Renewals 92% (goal 92%); 2 of 2 upsells</td><td>4</td><td>5</td><td>3</td><td>Goals met exactly. What shows "far exceeds"?</td></tr>
              <tr><td>Fatima Noor</td><td>CSAT 91%; reply 4.5 h (goal under 4); 12 articles</td><td>4</td><td>4</td><td>3</td><td>How did the staff shortage affect reply time?</td></tr>
              <tr><td>Ryan Walsh</td><td>Renewals 85% (goal 92%); 1 of 2 upsells</td><td>4</td><td>5</td><td>3</td><td>Renewal goal missed. What evidence supports a 5?</td></tr>
            </tbody>
          </table>
          <p>Write every flag as a neutral question, not a verdict. A flag means "please look again". It does not mean the rating is wrong.</p>
          <p>Put the table in a spreadsheet, with one person per row (rows 2 to 9). Use column A for the name, B for the team, C for the self-rating, D for the draft rating and E for notes. These formulas check the team numbers:</p>
          <pre><code>Average draft rating for a team:
        =AVERAGEIF(B2:B9,"Customer Success",D2:D9)                          gives 4.67
        Share of a team rated 4 or 5:
        =COUNTIFS(B2:B9,"Customer Success",D2:D9,"&gt;=4")/COUNTIF(B2:B9,"Customer Success")   gives 100%
        Gap between manager and self-rating (row 2):
        =D2-C2</code></pre>
          <p>For Platform Engineering the same formulas give 3.67 and 67%. For Product Design they give 3.50 and 50%.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Here are our ratings. Who is rated too high? Fix them.</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Below is a made-up table: person, team, goal results, self-rating,
        manager draft rating, number of notes. For each team, give the
        average draft rating and the share rated 4 or 5. Show the maths.
        Then, for each person, list any gap between goal results and the
        draft rating as one neutral question. Do not suggest new ratings.
        If data is missing, write [NEED DATA].</code></pre>
          <p>AI is good at the maths and at turning gaps into neutral questions. Check every number with your spreadsheet. AI must not say who should move up or down.</p>
        </div>
        <div class="lc-card">
          <h3>Run a fair discussion</h3>
          <p>First, agree what each rating means. Maria shares one standard for all teams:</p>
          <table class="lc-table">
            <thead><tr><th>Rating</th><th>What the evidence must show</th></tr></thead>
            <tbody>
              <tr><td>5 Far exceeds</td><td>Results well above goals across the year. Rare.</td></tr>
              <tr><td>4 Exceeds</td><td>All key goals met, plus clear extra impact, with dated examples.</td></tr>
              <tr><td>3 Meets</td><td>Most goals met, or near misses with good reasons. A good result.</td></tr>
              <tr><td>2 Partly meets</td><td>One or more key goals missed, mostly for reasons in the person's control.</td></tr>
              <tr><td>1 Does not meet</td><td>Most goals missed, even after clear support.</td></tr>
            </tbody>
          </table>
          <p>Ground rules for the 90-minute meeting:</p>
          <ul class="lc-list">
            <li>Talk about results and dated examples, not personality.</li>
            <li>Each manager presents their own people. Others ask questions.</li>
            <li>Discuss flagged cases first, while people are fresh.</li>
            <li>Never discuss health, family or protected characteristics. If a target was adjusted, HR only says that it was adjusted.</li>
            <li>Every change gets a one-line written reason.</li>
            <li>What is said stays in the room.</li>
          </ul>
          <p>Here is what happened at Brightside (made up). Marcus explained that he likes working with Ryan. Maria asked, "What evidence supports a 5?" The group looked at the facts. Marcus then changed two ratings himself:</p>
          <table class="lc-table">
            <thead><tr><th>Person</th><th>Change</th><th>Written reason</th></tr></thead>
            <tbody>
              <tr><td>Ryan Walsh</td><td>5 to 2</td><td>Renewals 85% against at least 92%. 1 of 2 upsells. 2 accounts lost after late replies.</td></tr>
              <tr><td>Jordan Ellis</td><td>5 to 4</td><td>Both goals met exactly, plus a renewal checklist the team now uses. A 5 needs results well above goals.</td></tr>
            </tbody>
          </table>
          <p>The other six ratings stayed the same. Each one was checked against the standard first. For example, Fatima Noor kept her 4. She missed the reply-time goal during a staff shortage she did not control. She also covered a colleague's queue and wrote 12 help articles (goal 10). After the changes, Customer Success averages 3.33, and the average for all 8 people is 3.50. The numbers did not drive the changes. The evidence did.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: in the pack, or kept out?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Maria is building the calibration pack. Sort each made-up item into the right group.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="in" data-label="Put in the pack"></div>
              <div data-sorter-target="bucket" data-bucket="out" data-label="Keep out of the pack"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="in" data-why="Results against goals are the main evidence for a rating.">Ryan renewed 17 of 20 accounts (85%). His goal was at least 92%.</li>
              <li data-bucket="in" data-why="A self vs manager gap is a useful neutral question for the group.">Grace rated herself 3. Her manager's draft is 4.</li>
              <li data-bucket="out" data-why="Health details are private. HR handles them separately and never shares them in calibration.">A note that an employee was off sick in March, with the reason.</li>
              <li data-bucket="in" data-why="The number of notes can show a visibility gap. It is a question, not a verdict.">Daniel logged 2 notes on Grace and 6 on Aisha.</li>
              <li data-bucket="out" data-why="Age is a protected characteristic. It must not affect a rating.">The age of each person in the team.</li>
              <li data-bucket="out" data-why="This is a feeling, not evidence of results. It does not belong in the facts.">"Everyone loves working with him."</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to prepare a fair agenda, a shared rating standard and neutral questions for a calibration meeting. Then check that it does not suggest any ratings.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an experienced HR business partner. Use simple English.
        I will run a calibration meeting on [Wednesday 9 December 2026] for [3 managers] in a [120-person software company]. It lasts [90 minutes].
        Rating scale: [1 Does not meet, 2 Partly meets, 3 Meets, 4 Exceeds, 5 Far exceeds].
        Made-up cases to discuss:
        [1. Customer success manager: renewals 85% (goal at least 92%), 1 of 2 upsells. Self 4, manager draft 5.
        2. Customer success manager: renewals 92% (goal 92%), 2 of 2 upsells. Self 4, manager draft 5.
        3. Site reliability engineer: both goals beaten. Only 2 manager notes all year. Self 3, manager draft 4.]

        Please write:
        1. A rating standard: for each level, one line on what the evidence must show.
        2. An agenda with times that adds up to the meeting length.
        3. Six ground rules for a fair discussion.
        4. For each case, two neutral questions that ask for evidence.
        Do not suggest or hint at any rating. Do not mention age, health or other protected characteristics.</pre>
            <ul class="ai-try-checks">
              <li>The agenda times add up to the full meeting length.</li>
              <li>The questions ask for evidence and do not hint at a rating.</li>
              <li>Each level of the standard is clear and different from the others.</li>
              <li>There is no quota or forced ranking of people.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Calibration works when everyone uses one standard and talks only about evidence. Prepare the facts before the meeting, write flags as questions and record a reason for every change. AI can do the maths and draft neutral questions, but managers make the rating decisions.
        </div>
      HTML
      starter_code: nil
    },
    12 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-hr">HR & Recruitment</div>
          <h1 class="lc-title">Handling Underperformance</h1>
        </div>
        <p class="lc-lead">Underperformance means someone is not meeting the clear, agreed standard for their job. Handled well, it is a chance to help a person get back on track. Handled badly, it is unfair to the person and a legal risk for the company. In this lesson you will learn to spot problems early, look for causes, write a clear support plan and follow a fair process. You will see how Marcus Bell supports Ryan Walsh at Brightside Software, and how Tom Reed handles a case at Northbridge Logistics in the UK. This is general education, not legal advice.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 310" role="img" aria-label="Top: five steps with arrows. Spot early and talk within days. Find causes by asking and listening. Write a plan with clear expectations and support. Check-ins every two weeks. Review on Friday 26 March. From the review, two paths: improved, so close the plan and keep the support; or not improved, so start a formal process. Bottom: the formal process in a UK example with Acas-style steps: a written letter with the facts, a meeting with the right to a companion, a decision in writing, and an appeal.">
            <defs><marker id="pm12a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <g text-anchor="middle">
                <rect x="20" y="20" width="128" height="56" rx="8" fill="#1f1f44" stroke="#22d3ee"/>
                <text x="84" y="44" font-weight="700">Spot early</text>
                <text x="84" y="64" font-size="11" fill="#9b99b8">talk within days</text>
                <rect x="168" y="20" width="128" height="56" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
                <text x="232" y="44" font-weight="700">Find causes</text>
                <text x="232" y="64" font-size="11" fill="#9b99b8">ask and listen</text>
                <rect x="316" y="20" width="128" height="56" rx="8" fill="#1f1f44" stroke="#8b5cf6"/>
                <text x="380" y="44" font-weight="700">Written plan</text>
                <text x="380" y="64" font-size="11" fill="#9b99b8">clear + support</text>
                <rect x="464" y="20" width="128" height="56" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
                <text x="528" y="44" font-weight="700">Check-ins</text>
                <text x="528" y="64" font-size="11" fill="#9b99b8">every 2 weeks</text>
                <rect x="612" y="20" width="128" height="56" rx="8" fill="#1f1f44" stroke="#ec4899"/>
                <text x="676" y="44" font-weight="700">Review</text>
                <text x="676" y="64" font-size="11" fill="#9b99b8">Fri 26 Mar 2027</text>
                <rect x="330" y="120" width="190" height="56" rx="8" fill="#1f1f44" stroke="#10b981"/>
                <text x="425" y="144" font-weight="700">Improved</text>
                <text x="425" y="164" font-size="11" fill="#9b99b8">close plan, keep support</text>
                <rect x="550" y="120" width="190" height="56" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
                <text x="645" y="144" font-weight="700">Not improved</text>
                <text x="645" y="164" font-size="11" fill="#9b99b8">start a formal process</text>
              </g>
              <rect x="20" y="120" width="290" height="56" rx="8" fill="#27274e" stroke="#3b3b6e"/>
              <text x="36" y="143" font-size="12">Ryan's plan (made up)</text>
              <text x="36" y="163" font-size="11" fill="#9b99b8">Mon 4 Jan to Fri 26 Mar 2027</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#pm12a)">
                <line x1="149" y1="48" x2="164" y2="48"/>
                <line x1="297" y1="48" x2="312" y2="48"/>
                <line x1="445" y1="48" x2="460" y2="48"/>
                <line x1="593" y1="48" x2="608" y2="48"/>
                <line x1="660" y1="77" x2="440" y2="116"/>
                <line x1="676" y1="77" x2="650" y2="116"/>
                <line x1="645" y1="177" x2="645" y2="196"/>
              </g>
              <text x="20" y="212" font-weight="700" fill="#fcd34d">If formal: UK example with Acas-style steps</text>
              <g text-anchor="middle">
                <rect x="20" y="226" width="165" height="56" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
                <text x="102" y="250" font-weight="700">Letter</text>
                <text x="102" y="270" font-size="11" fill="#9b99b8">the facts in writing</text>
                <rect x="205" y="226" width="165" height="56" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
                <text x="287" y="250" font-weight="700">Meeting</text>
                <text x="287" y="270" font-size="11" fill="#9b99b8">right to a companion</text>
                <rect x="390" y="226" width="165" height="56" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
                <text x="472" y="250" font-weight="700">Decision</text>
                <text x="472" y="270" font-size="11" fill="#9b99b8">in writing</text>
                <rect x="575" y="226" width="165" height="56" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
                <text x="657" y="250" font-weight="700">Appeal</text>
                <text x="657" y="270" font-size="11" fill="#9b99b8">always offered</text>
              </g>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#pm12a)">
                <line x1="186" y1="254" x2="201" y2="254"/>
                <line x1="371" y1="254" x2="386" y2="254"/>
                <line x1="556" y1="254" x2="571" y2="254"/>
              </g>
              <text x="380" y="302" font-size="11" fill="#9b99b8" text-anchor="middle">General education only. Not legal advice.</text>
            </g>
          </svg>
          <figcaption>Most cases end at the top row: early talk, real support and improvement. A formal process is the last step, not the first.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Act early and look for causes</h3>
          <p>The best time to act is when you first see a problem. Ryan Walsh's problems started in July. On Wednesday 29 July, a customer complained of no reply for 6 working days. On Wednesday 2 September, a second account was lost after late replies. Marcus Bell noted both events, but he did not raise them with Ryan until a 1:1 on Tuesday 3 November. That was months late. Ryan lost time he could have used to improve.</p>
          <p>Before you plan anything, ask why. Many causes are not the person's fault.</p>
          <table class="lc-table">
            <thead><tr><th>Possible cause</th><th>Question to ask</th><th>What helps</th></tr></thead>
            <tbody>
              <tr><td>Unclear expectations</td><td>"What do you think good looks like in this part of your job?"</td><td>Write the standard down with numbers.</td></tr>
              <tr><td>Skills or training</td><td>"Which part of this task feels hardest?"</td><td>Training, coaching, pairing with a colleague.</td></tr>
              <tr><td>Tools or workload</td><td>"What gets in the way?"</td><td>Fix the tool, or change the workload.</td></tr>
              <tr><td>Health or personal issues</td><td>"Is anything outside work affecting you? You do not have to share details."</td><td>Bring in HR. Consider reasonable adjustments.</td></tr>
            </tbody>
          </table>
          <p>A <strong>reasonable adjustment</strong> (UK, Equality Act 2010) or <strong>reasonable accommodation</strong> (US, ADA) is a sensible change to work for a disabled person. If health may be part of the problem, HR must be involved before any plan. Keep health details out of performance notes and out of AI tools.</p>
          <p>At his review conversation on Wednesday 16 December 2026, Ryan explained the cause. He had no system for tracking replies when he visited customer sites.</p>
        </div>
        <div class="lc-card">
          <h3>Write a clear support plan</h3>
          <p>A support plan (often called a PIP, a performance improvement plan) sets out what must change, by when, and what help the person gets. It should help the person succeed. It should not be paperwork for an exit that is already decided.</p>
          <pre><code>Support plan (made up): Ryan Walsh, Customer Success Manager
        Dates: Mon 4 Jan 2027 to Fri 26 Mar 2027 (12 weeks)
        Why: renewals 85% in 2026 (goal at least 92%); 2 accounts lost
          after late replies (Wed 29 Jul, Wed 2 Sep)
        What good looks like:
          1. Reply to every customer email within 1 working day
             (Marcus checks the shared inbox report each Friday)
          2. A renewal-risk call with each account at least 60 days
             before its renewal date
          3. Use the team renewal checklist for every renewal
        Support:
          - Weekly 30-minute 1:1 with Marcus Bell
          - Jordan Ellis pairs with Ryan on his next 2 renewals
          - Inbox reminder alerts set up in week 1
        Check-ins: Mon 18 Jan, Mon 1 Feb, Mon 15 Feb, Mon 1 Mar, Mon 15 Mar
        Final review: Fri 26 Mar 2027
        Ryan's comments: [Ryan adds his own view here]</code></pre>
          <p>Each expectation is specific and measurable. Ryan can see his progress every week. He also adds his own comments, so the plan is agreed, not just handed over.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Write a PIP for an employee who is not performing. Make it firm.</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Draft a 12-week support plan in neutral, respectful language.
        Facts: renewals 85% (goal at least 92%); 2 accounts lost after
        late replies. The employee says he has no system for tracking
        replies on customer visits. Include 3 measurable expectations,
        the support we will give, check-in dates every 2 weeks and a
        space for the employee's comments. Use only these facts.
        No threats, no labels such as "poor attitude".</code></pre>
          <p>AI often makes plans sound harsh, adds labels or invents deadlines. Read every line as if you were the employee. A manager and HR agree the final plan.</p>
        </div>
        <div class="lc-card">
          <h3>A fair process in the UK and the US</h3>
          <p><strong>UK.</strong> The Acas Code of Practice on disciplinary and grievance procedures covers poor performance as well as misconduct. Acas (the UK's workplace advice service) suggests trying informal steps first. If a formal process is needed, the main steps are:</p>
          <ul class="lc-list">
            <li>Find out the facts without delay.</li>
            <li>Tell the employee about the problem in writing, with enough detail to prepare.</li>
            <li>Hold a meeting so they can give their side.</li>
            <li>Allow them to bring a companion: a colleague or a trade union representative.</li>
            <li>Give the decision in writing, and offer an appeal.</li>
          </ul>
          <p>If an employer unreasonably fails to follow the Code, a tribunal can raise compensation by up to 25%. If the employee unreasonably fails to follow it, the tribunal can lower compensation by up to 25%. Acas consulted on a revised Code in 2026, so check the current version. Also, from 1 January 2027, the main unfair dismissal right is due to apply after six months of service, not two years.</p>
          <p>Example (made up): at Northbridge Logistics in Manchester, picker Chris Doyle averages 92 picks per hour against a target of 110. This has lasted 8 weeks. He has no agreed adjustment. HR adviser Tom Reed asks the manager to start with an informal talk about causes. They then agree a written plan with support.</p>
          <p><strong>US.</strong> Most US jobs are "at will". This means either side can usually end the job without a set process. But anti-discrimination laws such as Title VII, the ADA and the ADEA still apply. Treat similar cases in the same way, offer accommodation where needed and keep dated records. Brightside follows a fair, written process for every case.</p>
          <p>This is general education, not legal advice. Before any formal step, talk to an employment lawyer or a qualified HR adviser.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: Marcus drafts a support plan with AI</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Marcus asks">"Write a PIP for Ryan. He is not performing. Make it firm."</li>
              <li data-kind="answer" data-label="AI drafts">"Final warning. Ryan has shown a poor attitude to customers. He must improve within 30 days or he will be dismissed."</li>
              <li data-kind="warn" data-label="Problems">No warning has been given, so "final warning" is wrong. "Poor attitude" is a label with no evidence. The 30 days and the threat were invented. There is no support at all.</li>
              <li data-kind="check" data-label="Marcus talks to Maria">They agree to start with an informal support plan. It builds on the action agreed at the 1:1 on Tue 3 Nov. Maria reminds him that Ryan's cause (no system for tracking replies) must shape the support.</li>
              <li data-kind="user" data-label="A better prompt">Marcus gives only the facts: renewals 85% against 92%, 2 accounts lost after late replies, and Ryan's cause. He asks for 3 measurable expectations, support, check-ins every 2 weeks and neutral language.</li>
              <li data-kind="answer" data-label="AI drafts again">A 12-week plan from Mon 4 Jan to Fri 26 Mar 2027, with an email reply target, renewal-risk calls, pairing with Jordan and five check-in dates.</li>
              <li data-kind="check" data-label="People decide">Maria checks that every date is a weekday. Marcus shares the draft with Ryan, who adds his comments. They agree the final plan together.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to draft a fair, supportive improvement plan from made-up facts. Then check the tone, the dates and that nothing was invented.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a fair, experienced HR adviser. Use simple, respectful English. This is general education, not legal advice.
        Made-up employee: [Ryan Walsh, Customer Success Manager, New York].
        The standard: [renewal rate on own accounts at least 92%].
        Facts: [renewals 85% (17 of 20) in 2026. Wed 29 Jul: customer waited 6 working days for a reply; account later lost. Wed 2 Sep: second account lost after late replies].
        Cause the employee gave: [no system for tracking replies during customer visits].
        Plan length: [12 weeks from Monday 4 January 2027].

        Please write:
        1. Five open questions for the first talk, to check the cause and any other factors.
        2. A support plan: 3 measurable expectations, the support the company gives, check-in dates every 2 weeks (weekdays only, with day names) and a space for the employee's comments.
        3. A list of things HR must check before the plan starts (for example, any need for adjustments).
        Use only the facts above. No threats, no labels about character, no dismissal wording.</pre>
            <ul class="ai-try-checks">
              <li>Every expectation can be measured and is linked to the facts.</li>
              <li>The company's support is real and specific, not just "we will help".</li>
              <li>All check-in dates fall on weekdays, with the right day names.</li>
              <li>The tone is neutral, with no threats or character labels.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Act early, look for causes and give real support before any formal step. A good plan says what good looks like, by when and how you will help. AI can draft the plan, but it often sounds harsh or invents details. A manager and HR check every line and make every decision.
        </div>
      HTML
      starter_code: nil
    },
    13 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-hr">HR & Recruitment</div>
          <h1 class="lc-title">Development Plans and Career Talks</h1>
        </div>
        <p class="lc-lead">A review looks back at the year. A development plan looks forward. It says how a person will grow: new skills, new work and maybe a new role. In this lesson you will learn to write a development plan with clear growth goals and a learning plan. You will also learn to hold a good career talk and to handle interest in an internal move fairly. You will see the plans that Brightside Software staff agree by Friday 8 January 2027, and how AI can help without inventing courses or promises.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 310" role="img" aria-label="Mei Chen's made-up 2027 development plan. From Now: UX Researcher, an arrow leads to a growth goal: lead research for one product area. Three arrows lead to three kinds of learning: on the job, about 70 percent, owning the onboarding research; from people, about 20 percent, monthly sessions with Hannah Clarke; courses, about 10 percent, a course on research planning. All three lead to a check in July 2027.">
            <defs><marker id="pm13a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <text x="380" y="24" font-weight="700" fill="#c4b5fd" text-anchor="middle">Mei Chen's 2027 development plan (made up)</text>
              <g text-anchor="middle">
                <rect x="20" y="120" width="150" height="70" rx="8" fill="#1f1f44" stroke="#22d3ee"/>
                <text x="95" y="149" font-weight="700">Now</text>
                <text x="95" y="170" font-size="12" fill="#9b99b8">UX Researcher</text>
                <rect x="200" y="112" width="180" height="86" rx="8" fill="#27274e" stroke="#8b5cf6"/>
                <text x="290" y="140" font-weight="700">Growth goal</text>
                <text x="290" y="161" font-size="12">lead research for</text>
                <text x="290" y="179" font-size="12">one product area</text>
                <rect x="420" y="44" width="200" height="66" rx="8" fill="#1f1f44" stroke="#10b981"/>
                <text x="520" y="70" font-weight="700">On the job (~70%)</text>
                <text x="520" y="92" font-size="11" fill="#9b99b8">own the onboarding research</text>
                <rect x="420" y="122" width="200" height="66" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
                <text x="520" y="148" font-weight="700">From people (~20%)</text>
                <text x="520" y="170" font-size="11" fill="#9b99b8">monthly with Hannah Clarke</text>
                <rect x="420" y="200" width="200" height="66" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
                <text x="520" y="226" font-weight="700">Courses (~10%)</text>
                <text x="520" y="248" font-size="11" fill="#9b99b8">a research planning course</text>
                <rect x="650" y="120" width="90" height="70" rx="8" fill="#1f1f44" stroke="#ec4899"/>
                <text x="695" y="149" font-weight="700">Check</text>
                <text x="695" y="170" font-size="12" fill="#9b99b8">Jul 2027</text>
              </g>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#pm13a)">
                <line x1="171" y1="155" x2="196" y2="155"/>
                <line x1="381" y1="140" x2="416" y2="80"/>
                <line x1="381" y1="155" x2="416" y2="155"/>
                <line x1="381" y1="170" x2="416" y2="230"/>
                <line x1="621" y1="80" x2="660" y2="117"/>
                <line x1="621" y1="155" x2="646" y2="155"/>
                <line x1="621" y1="230" x2="660" y2="193"/>
              </g>
              <text x="380" y="294" font-size="12" fill="#9b99b8" text-anchor="middle">70-20-10 is a common rule of thumb, not a fixed rule. Most growth comes from real work.</text>
            </g>
          </svg>
          <figcaption>A development plan links one growth goal to three kinds of learning: on the job, from other people and from courses. It ends with a date to check progress.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>What goes in a development plan</h3>
          <p>A development plan is a short, agreed plan for how a person will grow. The employee owns it. The manager supports it. A growth goal is a goal about the person's skills or career, not about this year's results.</p>
          <table class="lc-table">
            <thead><tr><th>Part</th><th>What it says</th><th>Mei Chen, UX Researcher (made up)</th></tr></thead>
            <tbody>
              <tr><td>Growth goal</td><td>What the person wants to be able to do</td><td>Lead research for one product area (trial onboarding) by Wednesday 30 June 2027.</td></tr>
              <tr><td>Why</td><td>The link to their career and the team</td><td>Her insight report changed the Q4 roadmap. The team needs a research lead per area.</td></tr>
              <tr><td>Growth point</td><td>One skill to build, taken from the review</td><td>Prioritising. Peers say she sometimes takes on too much.</td></tr>
              <tr><td>Actions</td><td>Real work, learning from people, courses</td><td>Own the onboarding research plan. Monthly sessions with Hannah Clarke. One course on research planning.</td></tr>
              <tr><td>Support</td><td>Time, money, people</td><td>Part of the $1,000 yearly learning budget. Hannah protects 2 hours a week for planning.</td></tr>
              <tr><td>How we will know</td><td>Signs of progress</td><td>A research plan agreed with 2 product teams. A written priority list each quarter.</td></tr>
              <tr><td>Review date</td><td>When to check</td><td>Mid-year check-in, July 2027.</td></tr>
            </tbody>
          </table>
          <p>The 70-20-10 idea is a common rule of thumb. It says most learning (about 70%) comes from real work, about 20% from other people and about 10% from courses. It is not based on exact research, so use it as a guide only. The key point is simple: a course alone rarely builds a skill.</p>
        </div>
        <div class="lc-card">
          <h3>Career talks and internal moves</h3>
          <p>A career talk is a conversation about the person's future, not their rating. Hold it in a separate meeting from the review, if you can. People talk more openly when pay is not on the table.</p>
          <p>Questions that open the conversation:</p>
          <ul class="lc-list">
            <li>"Which work this year gave you the most energy?"</li>
            <li>"What would you like to be doing in two years?"</li>
            <li>"Which skill would make the biggest difference for you?"</li>
            <li>"What support do you need from me?"</li>
          </ul>
          <p>Example (made up): Grace Okafor rated herself 3, but her manager rated her 4. In her career talk, she says she is interested in a senior site reliability role. Daniel Kim notices that few people see her work, because she works mostly remotely. Her plan: she will lead the next disaster-recovery test and present the results at an all-hands meeting. This builds a senior skill and makes her work visible.</p>
          <p>An <strong>internal move</strong> is a change to a new role inside the company. Fatima Noor writes excellent help articles and is curious about UX writing (writing the words inside an app). Before she applies for anything, Hannah Clarke offers her a 2-week project with Product Design on in-app help text. Fatima can try the work, and the team can see her skills.</p>
          <p>Keep development fair:</p>
          <ul class="lc-list">
            <li>Post internal jobs where everyone can see them.</li>
            <li>Track who gets stretch projects, training and mentoring. Check that remote and part-time staff get a fair share.</li>
            <li>In the UK, the Equality Act 2010 covers access to training, promotion and transfer, not just pay and dismissal.</li>
            <li>Never promise a promotion or a pay rise in a career talk. Say what you can support.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Use AI to draft plans, then check them</h3>
          <p>AI is good at turning a growth goal into actions, suggesting questions and making a plan easy to read. It is weak at facts about courses. It may invent a course, a certificate or a link that does not exist.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Write a development plan for a UX researcher with good courses.</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Growth goal: lead research for one product area by 30 June 2027.
        Growth point from the review: prioritising, as she takes on too much.
        Draft a one-page development plan. Give 3 on-the-job actions,
        2 ways to learn from other people and 1 type of course
        (describe the topic, not a named course). Add 3 signs of progress
        and a review date. Keep the plan realistic for 2 hours a week.
        Do not promise a promotion.</code></pre>
          <p>Asking for a course topic, not a named course, stops AI inventing titles. You then search for real courses yourself. Check the price, the dates and the provider. The employee and manager agree the final plan together.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: sort the learning actions</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each made-up action from Brightside's development plans into the right kind of learning.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="job" data-label="On the job"></div>
              <div data-sorter-target="bucket" data-bucket="people" data-label="From other people"></div>
              <div data-sorter-target="bucket" data-bucket="course" data-label="Courses and reading"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="job" data-why="Leading real work builds the skill directly.">Grace leads the next disaster-recovery test.</li>
              <li data-bucket="people" data-why="Regular sessions with an experienced person are learning from others.">Mei meets Hannah Clarke once a month to plan her research.</li>
              <li data-bucket="course" data-why="A structured course teaches the theory behind the skill.">Mei takes an online course on research planning.</li>
              <li data-bucket="job" data-why="A short project in a new team is real work in a new role.">Fatima spends 2 weeks on in-app help text with Product Design.</li>
              <li data-bucket="people" data-why="Working side by side with a skilled colleague is learning from others.">Ryan pairs with Jordan on his next 2 renewals.</li>
              <li data-bucket="course" data-why="Reading a guide is formal learning, even without a classroom.">Leo reads a guide on safe configuration changes.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to prepare a career talk and a draft development plan for a made-up employee. Then check that every action is realistic and nothing is invented.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a career coach helping a manager. Use simple English.
        Made-up employee: [Grace Okafor, Site Reliability Engineer, works mostly remotely].
        This year: [met both goals: app uptime 99.92% (goal 99.9%), on-call response 11 minutes (goal under 15)]. She rated herself lower than her manager did.
        Her interest: [a senior site reliability role in the next 2 years].
        Time for learning: [about 2 hours a week]. Budget: [$1,000 a year].

        Please write:
        1. Six open questions for a career talk. No questions about age, health or family.
        2. A one-page development plan: one growth goal with a date, 3 on-the-job actions, 2 ways to learn from other people and 1 course topic (a topic, not a named course), signs of progress and a review date.
        3. One idea to make her work more visible to the wider company.
        4. Three things the manager must not promise.
        Keep it realistic for the time and budget. Mark anything I must check as [CHECK].</pre>
            <ul class="ai-try-checks">
              <li>The growth goal has a clear date and can be checked.</li>
              <li>Most actions are real work, not only courses.</li>
              <li>It names course topics, not invented course titles or links.</li>
              <li>It does not promise a promotion or a pay rise.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A development plan turns a review into a next step. Base it on one growth goal, mostly real work and the person's own interests. Share growth chances fairly, including with remote staff. AI can draft the plan and the questions, but people check every course and make every promise.
        </div>
      HTML
      starter_code: nil
    },
    14 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-hr">HR & Recruitment</div>
          <h1 class="lc-title">Measuring Whether the Process Works</h1>
        </div>
        <p class="lc-lead">A review cycle takes a lot of time from managers and staff. So you need to know if it works. Did people finish each step? Do ratings tell people apart? Do staff think the process is fair? Are any groups treated differently? In this lesson you will learn four kinds of measures, how to calculate them in a spreadsheet and how to read them carefully. You will follow Maria Lopez as she checks Brightside Software's 2026 cycle and reports to leadership on Friday 29 January 2027.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 330" role="img" aria-label="A made-up dashboard for Brightside's 2026 review cycle. Four tiles: self-reviews on time 87.5 percent, manager reviews on time 92.9 percent, review talks held by 18 December 94.6 percent, development plans agreed 75.0 percent, which is flagged. Bottom left: final rating spread for 112 people: rating 1, 2 people; rating 2, 9; rating 3, 52; rating 4, 38; rating 5, 11. Bottom right: fairness check of the share rated 4 or 5: office 48.6 percent, remote 35.0 percent. The ratio is 0.72, below 0.8, so it needs a closer look.">
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <text x="380" y="24" font-weight="700" fill="#c4b5fd" text-anchor="middle">Brightside 2026 review cycle: process dashboard (made up)</text>
              <g text-anchor="middle">
                <rect x="20" y="40" width="167" height="72" rx="8" fill="#1f1f44" stroke="#10b981"/>
                <text x="103" y="74" font-size="22" font-weight="700">87.5%</text>
                <text x="103" y="98" font-size="11" fill="#9b99b8">self-reviews on time</text>
                <rect x="204" y="40" width="167" height="72" rx="8" fill="#1f1f44" stroke="#10b981"/>
                <text x="287" y="74" font-size="22" font-weight="700">92.9%</text>
                <text x="287" y="98" font-size="11" fill="#9b99b8">manager reviews on time</text>
                <rect x="388" y="40" width="167" height="72" rx="8" fill="#1f1f44" stroke="#10b981"/>
                <text x="471" y="74" font-size="22" font-weight="700">94.6%</text>
                <text x="471" y="98" font-size="11" fill="#9b99b8">talks held by 18 Dec</text>
                <rect x="572" y="40" width="167" height="72" rx="8" fill="#1f1f44" stroke="#f59e0b" stroke-width="2"/>
                <text x="655" y="74" font-size="22" font-weight="700" fill="#fcd34d">75.0%</text>
                <text x="655" y="98" font-size="11" fill="#9b99b8">development plans agreed</text>
              </g>
              <rect x="20" y="128" width="420" height="190" rx="10" fill="#27274e" stroke="#3b3b6e"/>
              <text x="36" y="150" font-weight="700">Final rating spread (112 people)</text>
              <g fill="#1f1f44" stroke="#8b5cf6">
                <rect x="60" y="276" width="50" height="4"/>
                <rect x="135" y="262" width="50" height="18"/>
                <rect x="210" y="176" width="50" height="104"/>
                <rect x="285" y="204" width="50" height="76"/>
                <rect x="360" y="258" width="50" height="22"/>
              </g>
              <g text-anchor="middle" font-size="12">
                <text x="85" y="270">2</text>
                <text x="160" y="256">9</text>
                <text x="235" y="170">52</text>
                <text x="310" y="198">38</text>
                <text x="385" y="252">11</text>
              </g>
              <g text-anchor="middle" font-size="11" fill="#9b99b8">
                <text x="85" y="298">Rating 1</text>
                <text x="160" y="298">Rating 2</text>
                <text x="235" y="298">Rating 3</text>
                <text x="310" y="298">Rating 4</text>
                <text x="385" y="298">Rating 5</text>
              </g>
              <line x1="50" y1="280" x2="420" y2="280" stroke="#9b99b8"/>
              <rect x="460" y="128" width="280" height="190" rx="10" fill="#27274e" stroke="#3b3b6e"/>
              <text x="476" y="150" font-weight="700">Fairness check: rated 4 or 5</text>
              <text x="476" y="186">Office</text>
              <rect x="540" y="172" width="146" height="20" rx="4" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="692" y="187" font-size="12">48.6%</text>
              <text x="476" y="222">Remote</text>
              <rect x="540" y="208" width="105" height="20" rx="4" fill="#1f1f44" stroke="#ec4899"/>
              <text x="651" y="223" font-size="12">35.0%</text>
              <text x="476" y="262" font-size="12">Ratio 35.0 / 48.6 = 0.72</text>
              <text x="476" y="284" font-size="12" fill="#fcd34d">Below 0.8: look into it.</text>
              <text x="476" y="304" font-size="11" fill="#9b99b8">A flag, not proof.</text>
            </g>
          </svg>
          <figcaption>A simple dashboard shows completion, rating spread and one fairness check. Each number raises a question. People find the answers.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Four kinds of measures</h3>
          <p>112 of Brightside's 120 staff took part in the 2026 cycle. The other 8 started after Thursday 1 October 2026, so they skip this cycle. All numbers below are made up.</p>
          <table class="lc-table">
            <thead><tr><th>Kind</th><th>Measure and how to calculate it</th><th>Brightside 2026</th></tr></thead>
            <tbody>
              <tr><td><strong>Completion</strong></td><td>Completion rate = steps done on time ÷ people who should do them</td><td>Self-reviews 98 of 112 (87.5%). Manager reviews 104 of 112 (92.9%). Review talks 106 of 112 (94.6%). Development plans 84 of 112 (75.0%).</td></tr>
              <tr><td><strong>Rating spread</strong></td><td>How many people got each rating, as a count and a share</td><td>1: 2, 2: 9, 3: 52, 4: 38, 5: 11. Average 3.42. Rated 4 or 5: 49 of 112 (43.8%).</td></tr>
              <tr><td><strong>Experience</strong></td><td>Survey results = people who agree ÷ people who answered</td><td>96 of 112 answered (85.7%). "My review was fair and based on evidence": 71 of 96 agree (74.0%).</td></tr>
              <tr><td><strong>Fairness</strong></td><td>Compare outcomes between groups</td><td>Rated 4 or 5: office 35 of 72 (48.6%), remote 14 of 40 (35.0%).</td></tr>
            </tbody>
          </table>
          <p>The weakest step is development plans: only 75.0% were agreed by Friday 8 January 2027. So a quarter of staff have no plan for growth. Six review talks also moved to January because of leave.</p>
          <p>Rating spread matters too. If almost everyone gets the same rating, the ratings do not help anyone. If one manager gives far higher ratings than others, check for leniency.</p>
        </div>
        <div class="lc-card">
          <h3>Do the maths in a spreadsheet</h3>
          <p>Put one row per person in rows 2 to 113. Column C holds "Remote" or "Office". Column D holds the final rating.</p>
          <pre><code>Average rating:          =AVERAGE(D2:D113)                    gives 3.42
        Share rated 4 or 5:      =COUNTIF(D2:D113,"&gt;=4")/COUNTA(D2:D113)      gives 43.8%
        Share rated 5:           =COUNTIF(D2:D113,5)/COUNTA(D2:D113)          gives 9.8%
        Remote rated 4 or 5:     =COUNTIFS(C2:C113,"Remote",D2:D113,"&gt;=4")/COUNTIF(C2:C113,"Remote")   gives 35.0%
        Office rated 4 or 5:     =COUNTIFS(C2:C113,"Office",D2:D113,"&gt;=4")/COUNTIF(C2:C113,"Office")   gives 48.6%
        Ratio (remote ÷ office): 35.0% ÷ 48.6% = 0.72</code></pre>
          <p>Why compare with 0.8? US guidelines for hiring and promotion tests use a "four-fifths rule". Compare each group's rate with the highest group's rate. If it is less than 80% of that rate, it is usually seen as a sign of possible adverse impact (one group losing out). It is a rough rule of thumb, not proof and not a legal test for ratings. Use it only as a signal to look closer.</p>
          <p>Being remote is not a protected characteristic. But it can overlap with groups that are protected, such as disabled people or people with caring duties. So the gap needs a careful look.</p>
          <p>Fairness checks by protected characteristics, such as sex or ethnicity, need extra care. Use only data that people gave for equality monitoring. Let HR handle it, and show results only for groups large enough that no one can be identified. Ask your data protection lead first. This is general education, not legal advice.</p>
        </div>
        <div class="lc-card">
          <h3>Read the results with care, and use AI safely</h3>
          <p>A number tells you where to look. It does not tell you why. Maria looked deeper at the remote gap. Managers logged an average of 2.6 notes per remote person, against 4.4 per office person. Fewer notes can mean less visible evidence, as with Grace Okafor. That is a question to investigate, not a conclusion.</p>
          <p>AI can summarise survey comments into themes very quickly. Use only anonymous comments in an approved tool. Remove any names or details that could identify someone.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Here are our ratings by remote and office. What does this prove?</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Made-up data: rated 4 or 5, office 35 of 72, remote 14 of 40.
        Average manager notes per person: office 4.4, remote 2.6.
        Calculate both rates and the ratio, and show the maths.
        Then list 4 possible reasons for the gap, including reasons
        about the process, not the people. For each reason, say what
        data would confirm or rule it out. Do not draw a conclusion.</code></pre>
          <p>A weak answer might say "remote staff perform worse". That is a conclusion the data cannot support. Maria's actions are about the process: note reminders for managers of remote staff, and a "visibility" question in next year's calibration pack. She will run the same check after the 2027 cycle.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: what does each number measure?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each made-up Brightside number into the kind of measure it belongs to.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="done" data-label="Completion"></div>
              <div data-sorter-target="bucket" data-bucket="spread" data-label="Rating spread"></div>
              <div data-sorter-target="bucket" data-bucket="exp" data-label="Experience"></div>
              <div data-sorter-target="bucket" data-bucket="fair" data-label="Fairness"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="done" data-why="It counts how many people finished a step of the process.">84 of 112 development plans agreed by Fri 8 Jan.</li>
              <li data-bucket="spread" data-why="It shows how ratings are spread across the scale.">52 of 112 people were rated 3 (Meets).</li>
              <li data-bucket="exp" data-why="It comes from a survey of how people felt about the process.">71 of 96 people agree their review was fair.</li>
              <li data-bucket="fair" data-why="It compares an outcome between two groups.">Rated 4 or 5: remote 35.0%, office 48.6%.</li>
              <li data-bucket="done" data-why="It counts a step done on time.">98 of 112 self-reviews arrived by Fri 13 Nov.</li>
              <li data-bucket="spread" data-why="It shows the share at the top of the scale.">11 of 112 people were rated 5 (9.8%).</li>
              <li data-bucket="exp" data-why="It is a survey answer about clarity during the year.">62 of 96 people say they knew what was expected all year.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to turn made-up cycle numbers into a short process report. Then check every percentage yourself.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an HR analyst. Use simple English. All data is made up.
        Company: [Brightside Software, 112 people in the 2026 review cycle].
        Data:
        [Self-reviews on time: 98. Manager reviews on time: 104. Review talks held on time: 106. Development plans agreed: 84.
        Final ratings: 1 = 2 people, 2 = 9, 3 = 52, 4 = 38, 5 = 11.
        Survey: 96 answered. "My review was fair": 71 agree. "I knew what was expected all year": 62 agree.
        Rated 4 or 5: office 35 of 72, remote 14 of 40.]

        Please write a one-page report:
        1. A table of every rate, with the sum you used (for example 98 / 112).
        2. The average rating and the share rated 4 or 5.
        3. The remote vs office ratio, and what a ratio below 0.8 does and does not mean.
        4. The 3 biggest problems, each with 2 possible causes about the process and 1 action.
        Do not blame groups or people. Do not claim any cause is proven.</pre>
            <ul class="ai-try-checks">
              <li>Each rate is correct (for example 98 / 112 = 87.5%).</li>
              <li>The average rating is 3.42 and 43.8% are rated 4 or 5.</li>
              <li>The ratio is about 0.72, described as a flag, not proof.</li>
              <li>The causes are about the process, and none is called proven.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Measure four things: completion, rating spread, experience and fairness. Calculate each one yourself, and treat every gap as a question. AI can do sums and summarise comments, but it can also jump to unfair conclusions. People investigate the causes and decide what to change.
        </div>
      HTML
      starter_code: nil
    },
    15 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-hr">HR & Recruitment</div>
          <h1 class="lc-title">Capstone: A Fair Review Cycle at Brightside Software</h1>
        </div>
        <p class="lc-lead">In this capstone you will run the main parts of a fair review cycle from start to finish. You will work as Maria Lopez, the people lead at Brightside Software, with the made-up data for 8 employees. You will check goals and evidence, write fair feedback, check draft reviews, run a bias check with simple maths and build a calibration pack. At each step, AI drafts, calculates and flags. You check every line, and managers make every decision.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="Six steps of Brightside's 2026 review cycle from left to right. 1 Goals, by Friday 30 January, output SMART goals and OKRs. 2 Evidence, January to October, output dated notes. 3 Feedback, at check-ins and 1:1s, output SBI notes. 4 Reviews, due Friday 4 December, output 8 drafts. 5 Bias check, by Monday 7 December, output team maths. 6 Calibration pack, for Wednesday 9 December, output agenda and flags. Below, a band says AI drafts, sums and flags, and people decide ratings, plans and pay. At the bottom: before calibration the average draft rating is 4.00 and Customer Success is 4.67; after calibration the average is 3.50 and Customer Success is 3.33.">
            <defs><marker id="pm15a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <text x="380" y="24" font-weight="700" fill="#c4b5fd" text-anchor="middle">Brightside's 2026 cycle in six steps (made up)</text>
              <g text-anchor="middle">
                <rect x="21" y="40" width="108" height="84" rx="8" fill="#1f1f44" stroke="#10b981"/>
                <text x="75" y="64" font-weight="700">1 Goals</text>
                <text x="75" y="86" font-size="11" fill="#9b99b8">by Fri 30 Jan</text>
                <text x="75" y="108" font-size="11" fill="#6ee7b7">SMART + OKRs</text>
                <rect x="143" y="40" width="108" height="84" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
                <text x="197" y="64" font-weight="700">2 Evidence</text>
                <text x="197" y="86" font-size="11" fill="#9b99b8">Jan to Oct</text>
                <text x="197" y="108" font-size="11" fill="#93c5fd">dated notes</text>
                <rect x="265" y="40" width="108" height="84" rx="8" fill="#1f1f44" stroke="#22d3ee"/>
                <text x="319" y="64" font-weight="700">3 Feedback</text>
                <text x="319" y="86" font-size="11" fill="#9b99b8">check-ins, 1:1s</text>
                <text x="319" y="108" font-size="11" fill="#67e8f9">SBI notes</text>
                <rect x="387" y="40" width="108" height="84" rx="8" fill="#1f1f44" stroke="#8b5cf6"/>
                <text x="441" y="64" font-weight="700">4 Reviews</text>
                <text x="441" y="86" font-size="11" fill="#9b99b8">Fri 4 Dec</text>
                <text x="441" y="108" font-size="11" fill="#c4b5fd">8 drafts</text>
                <rect x="509" y="40" width="108" height="84" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
                <text x="563" y="64" font-weight="700">5 Bias check</text>
                <text x="563" y="86" font-size="11" fill="#9b99b8">by Mon 7 Dec</text>
                <text x="563" y="108" font-size="11" fill="#fcd34d">team maths</text>
                <rect x="631" y="40" width="108" height="84" rx="8" fill="#1f1f44" stroke="#ec4899"/>
                <text x="685" y="64" font-weight="700">6 Pack</text>
                <text x="685" y="86" font-size="11" fill="#9b99b8">for Wed 9 Dec</text>
                <text x="685" y="108" font-size="11" fill="#f9a8d4">agenda + flags</text>
              </g>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#pm15a)">
                <line x1="130" y1="82" x2="139" y2="82"/>
                <line x1="252" y1="82" x2="261" y2="82"/>
                <line x1="374" y1="82" x2="383" y2="82"/>
                <line x1="496" y1="82" x2="505" y2="82"/>
                <line x1="618" y1="82" x2="627" y2="82"/>
              </g>
              <rect x="21" y="144" width="350" height="44" rx="8" fill="#27274e" stroke="#3b3b6e"/>
              <text x="196" y="171" text-anchor="middle">AI drafts, sums and flags</text>
              <rect x="389" y="144" width="350" height="44" rx="8" fill="#27274e" stroke="#10b981"/>
              <text x="564" y="171" text-anchor="middle">People decide ratings, plans and pay</text>
              <rect x="21" y="208" width="320" height="72" rx="8" fill="#1f1f44" stroke="#ec4899"/>
              <text x="181" y="234" font-weight="700" text-anchor="middle">Before calibration</text>
              <text x="181" y="258" font-size="12" text-anchor="middle">All 8: 4.00. Customer Success: 4.67</text>
              <rect x="419" y="208" width="320" height="72" rx="8" fill="#1f1f44" stroke="#10b981"/>
              <text x="579" y="234" font-weight="700" text-anchor="middle">After calibration</text>
              <text x="579" y="258" font-size="12" text-anchor="middle">All 8: 3.50. Customer Success: 3.33</text>
              <line x1="343" y1="244" x2="414" y2="244" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#pm15a)"/>
            </g>
          </svg>
          <figcaption>The capstone follows six steps. The numbers changed after calibration because the evidence was checked, not because of a target.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Your brief: six steps, one fair cycle</h3>
          <p>Maria's task is to make sure the 2026 cycle is fair before ratings are final. Use this checklist. All data is made up.</p>
          <table class="lc-table">
            <thead><tr><th>Step</th><th>How AI helps</th><th>What you check</th></tr></thead>
            <tbody>
              <tr><td>1. Goals</td><td>Turns vague goals into SMART goals and links them to company KRs</td><td>Every baseline comes from real data, such as trial-to-paid 18%.</td></tr>
              <tr><td>2. Evidence</td><td>Sorts notes into a table by goal and separates impressions</td><td>Each fact has a date and a source. Gaps are visible, such as 2 notes for Grace.</td></tr>
              <tr><td>3. Feedback</td><td>Rewrites notes as SBI feedback</td><td>It is specific and kind, with no labels about character.</td></tr>
              <tr><td>4. Reviews</td><td>Drafts summaries that link each sentence to a note</td><td>Nothing invented. No vague words such as "great" without evidence.</td></tr>
              <tr><td>5. Bias check</td><td>Calculates team averages and self vs manager gaps</td><td>Every number matches your spreadsheet.</td></tr>
              <tr><td>6. Calibration pack</td><td>Writes flags as neutral questions and drafts an agenda</td><td>No rating suggestions. No private data.</td></tr>
            </tbody>
          </table>
          <p>Rules for the whole capstone: use only an approved AI tool, use made-up or minimal data and keep a short log of what AI did. AI never suggests a rating, and it never sees health or other private details.</p>
        </div>
        <div class="lc-card">
          <h3>Step 5: the bias check</h3>
          <p>Maria puts the 8 draft ratings in a spreadsheet and uses <code>AVERAGEIF</code> and <code>COUNTIFS</code>, as in the calibration lesson. She then checks the results against four common biases.</p>
          <table class="lc-table">
            <thead><tr><th>Team (manager)</th><th>Draft ratings</th><th>Average</th><th>Rated 4 or 5</th></tr></thead>
            <tbody>
              <tr><td>Platform Engineering (Daniel Kim)</td><td>4, 3, 4</td><td>11 ÷ 3 = 3.67</td><td>2 of 3 (67%)</td></tr>
              <tr><td>Product Design (Hannah Clarke)</td><td>3, 4</td><td>7 ÷ 2 = 3.50</td><td>1 of 2 (50%)</td></tr>
              <tr><td>Customer Success (Marcus Bell)</td><td>5, 4, 5</td><td>14 ÷ 3 = 4.67</td><td>3 of 3 (100%)</td></tr>
              <tr><td>All 8</td><td>Total 32</td><td>32 ÷ 8 = 4.00</td><td>6 of 8 (75%)</td></tr>
            </tbody>
          </table>
          <table class="lc-table">
            <thead><tr><th>Bias</th><th>What it means</th><th>Neutral question for the pack</th></tr></thead>
            <tbody>
              <tr><td>Leniency</td><td>Rating everyone too high</td><td>Ryan's renewals are 85% against a 92% goal. What evidence supports a 5?</td></tr>
              <tr><td>Recency</td><td>Judging the year by recent events</td><td>Does Leo's rating cover the whole year, including 78% test coverage and mentoring?</td></tr>
              <tr><td>Halo</td><td>One strong moment colours everything</td><td>Is Aisha's rating based on her KRs, not the all-hands demo?</td></tr>
              <tr><td>Visibility gap</td><td>Less-seen work gets less credit</td><td>Grace has 2 notes and Aisha has 6. Is any of Grace's evidence missing?</td></tr>
            </tbody>
          </table>
          <p>Customer Success has the highest average, and both Jordan and Ryan were rated higher by Marcus than by themselves. A high average is not proof of bias. But together with Ryan's missed goal, it needs a clear discussion.</p>
        </div>
        <div class="lc-card">
          <h3>Step 6: one page of the calibration pack</h3>
          <p>Each person gets one page. Here is Ryan Walsh's page. The feedback uses the SBI model: Situation (when and where), Behaviour (what the person did) and Impact (what happened as a result).</p>
          <pre><code>Calibration pack (made up): Ryan Walsh, Customer Success Manager
        Manager: Marcus Bell    Self-rating: 4    Manager draft: 5

        Goals and results
          Renewal rate at least 92%:  17 of 20 = 85%   NOT MET
          Two upsells:                1 of 2           NOT MET

        Dated evidence
          Wed 29 Jul: customer waited 6 working days for a reply;
            account later did not renew
          Wed 2 Sep: second account lost after late replies
          Thu 1 Oct: "great attitude" (impression, not evidence)

        SBI feedback
          In July (S), a customer's emails went unanswered for
          6 working days (B). The customer did not renew (I).

        Questions for the group
          1. Which evidence supports "Far exceeds"?
          2. When were the late replies first raised with Ryan? (Tue 3 Nov)

        Decision record (completed on Wed 9 Dec)
          Final: 2 (Partly meets). Reason: both goals missed;
          2 accounts lost after late replies. Decided by Marcus Bell,
          reviewed by Maria Lopez. AI drafted this page; AI did not
          suggest the rating. Next step: support plan from Mon 4 Jan 2027.</code></pre>
          <p>Before you send the pack, check this list:</p>
          <ul class="lc-list">
            <li>Every number matches the spreadsheet.</li>
            <li>Every flag is a question, not a verdict.</li>
            <li>No health, family or protected characteristic details appear.</li>
            <li>Self-ratings and manager ratings are both shown.</li>
            <li>The AI log says what AI did and who checked it.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Activity: Maria builds the pack with AI</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Maria asks">She pastes the made-up table of 8 people into the approved AI tool. "Give the average draft rating and the share rated 4 or 5 for each team. Show the maths."</li>
              <li data-kind="answer" data-label="AI answers">Platform Engineering 3.67, Product Design 3.50, Customer Success 4.33.</li>
              <li data-kind="warn" data-label="A maths error">Customer Success ratings are 5, 4 and 5. 14 ÷ 3 = 4.67, not 4.33. AI makes sums like this wrong more often than you might think.</li>
              <li data-kind="tool" data-label="Spreadsheet">Maria runs <code>=AVERAGEIF(B2:B9,"Customer Success",D2:D9)</code>.</li>
              <li data-kind="result" data-label="Result">4.67. She corrects the pack and notes the fix in her AI log.</li>
              <li data-kind="user" data-label="Next prompt">"For each person, write any gap between goal results and the draft rating as one neutral question."</li>
              <li data-kind="answer" data-label="AI answers">Good questions for most people. But for Ryan it writes: "Ryan should be rated 2."</li>
              <li data-kind="warn" data-label="Out of bounds">AI has suggested a rating. That decision belongs to Marcus, after the group discusses the evidence.</li>
              <li data-kind="check" data-label="Maria decides">She rewrites it as a question: "Which evidence supports a 5?" She sends the pack as a pre-read on Monday 7 December.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to build a calibration pack from made-up data. Then check every sum and make sure it suggests no ratings.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an HR analyst preparing a calibration pack. Use simple English. Use ONLY this made-up data. Never suggest a rating.
        Format: name | team | results | self | manager draft | notes logged
        [Aisha | Platform | 2 P1s (max 3); database move on time; strong demo in Oct | 4 | 4 | 6
        Leo | Platform | tests 78% (goal 75%); API 3 weeks late; 1 outage in Sep | 3 | 3 | 5
        Grace | Platform | uptime 99.92% (goal 99.9%); response 11 min (goal under 15) | 3 | 4 | 2
        Sam | Design | conversion 21% (goal 22%); 5 of 5 test rounds | 4 | 3 | 4
        Mei | Design | 30 interviews (goal 24); library used by 3 teams (goal 3) | 4 | 4 | 4
        Jordan | Success | renewals 23/25 (goal 92%); 2 of 2 upsells | 4 | 5 | 3
        Fatima | Success | CSAT 91% (goal 90%); reply 4.5 h (goal under 4); 12 articles (goal 10) | 4 | 4 | 3
        Ryan | Success | renewals 17/20 (goal 92%); 1 of 2 upsells | 4 | 5 | 3]
        Please:
        1. Per team: average draft rating and share rated 4 or 5. Show each sum.
        2. A table: person, goals met (yes/partly/no), self vs manager gap, possible bias (leniency, recency, halo, visibility gap or none).
        3. One neutral question per flagged person.
        4. A 90-minute agenda.</pre>
            <ul class="ai-try-checks">
              <li>The averages are 3.67, 3.50 and 4.67, with the sums shown.</li>
              <li>Ryan's renewal rate is 85% and Jordan's is 92%.</li>
              <li>Flags are written as questions, with no rating suggested.</li>
              <li>Grace's low note count is flagged as a possible visibility gap.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A fair review cycle is a chain: clear goals, dated evidence, specific feedback, honest reviews, a bias check and a calm calibration. AI makes each step faster, but it can get sums wrong and step over into decisions. Check every number, write every flag as a question and let people decide about people.
        </div>
      HTML
      starter_code: nil
    }
  }.freeze
end

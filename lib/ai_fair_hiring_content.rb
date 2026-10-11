module AiFairHiringContent
  # Units (sidebar dividers): 1–4 Fairness Basics · 5–9 Fair Processes · 10–14 Checking, Rules and Trust · 15 Capstone
  # Widgets: sequence, sorter, stepper. No code editor: each Try It is an ai-try prompt box.
  LESSONS = {
    1 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-hr">HR & Recruitment</div>
          <h1 class="lc-title">What Fair Hiring Means</h1>
        </div>
        <p class="lc-lead"><strong>Fair hiring</strong> means every capable person gets a real chance, and you choose people for reasons linked to the job. In this lesson you will learn three core ideas: equal opportunity, merit and job-related criteria. You will see why fairness matters for people and for the business. You will follow Sunita, HR head at Sahyadri Foods Ltd, a food factory in Maharashtra. She is hiring 20 Quality Inspectors and 2 Shift Supervisors, and she wants the process to be fair.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 280" role="img" aria-label="Five steps of a fair hiring process for Quality Inspectors: start from the job needs, turn them into job-related criteria, use the same steps for everyone, decide on evidence, and keep records of the reasons.">
            <defs><marker id="fh1a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="16" y="24" text-anchor="start" font-size="12" fill="#c4b5fd">Sahyadri Foods: hiring 20 Quality Inspectors fairly</text>
              <rect x="16" y="44" width="128" height="50" rx="8" fill="#27274e" stroke="#3b82f6"/><text x="80" y="74" font-weight="700">1. Job needs</text>
              <rect x="168" y="44" width="128" height="50" rx="8" fill="#27274e" stroke="#8b5cf6"/><text x="232" y="74" font-weight="700">2. Criteria</text>
              <rect x="320" y="44" width="128" height="50" rx="8" fill="#27274e" stroke="#22d3ee"/><text x="384" y="74" font-weight="700">3. Same steps</text>
              <rect x="472" y="44" width="128" height="50" rx="8" fill="#27274e" stroke="#f59e0b"/><text x="536" y="74" font-weight="700">4. Evidence</text>
              <rect x="624" y="44" width="128" height="50" rx="8" fill="#27274e" stroke="#10b981"/><text x="688" y="74" font-weight="700">5. Records</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#fh1a)">
                <line x1="146" y1="69" x2="164" y2="69"/><line x1="298" y1="69" x2="316" y2="69"/><line x1="450" y1="69" x2="468" y2="69"/><line x1="602" y1="69" x2="620" y2="69"/>
              </g>
              <g font-size="11.5" fill="#9b99b8">
                <rect x="16" y="112" width="128" height="104" rx="8" fill="#1f1f44" stroke="#4b4a78"/>
                <text x="80" y="140">Check samples</text><text x="80" y="162">Record defects</text><text x="80" y="184">Follow hygiene</text><text x="80" y="204">rules</text>
                <rect x="168" y="112" width="128" height="104" rx="8" fill="#1f1f44" stroke="#4b4a78"/>
                <text x="232" y="140">Read a checklist</text><text x="232" y="162">Spot defects</text><text x="232" y="184">Basic counting</text><text x="232" y="204">Work shifts</text>
                <rect x="320" y="112" width="128" height="104" rx="8" fill="#1f1f44" stroke="#4b4a78"/>
                <text x="384" y="140">Same open ad</text><text x="384" y="162">Same test</text><text x="384" y="184">Same questions</text><text x="384" y="204">Same scoring</text>
                <rect x="472" y="112" width="128" height="104" rx="8" fill="#1f1f44" stroke="#4b4a78"/>
                <text x="536" y="140">Test scores</text><text x="536" y="162">Interview notes</text><text x="536" y="184">Not gut feeling</text><text x="536" y="204">Not who you know</text>
                <rect x="624" y="112" width="128" height="104" rx="8" fill="#1f1f44" stroke="#4b4a78"/>
                <text x="688" y="140">Why each person</text><text x="688" y="162">was chosen</text><text x="688" y="184">Stored safely</text><text x="688" y="204">Reviewed later</text>
              </g>
              <text x="384" y="252" font-size="12.5" fill="#fcd34d">At every step ask: is this about the job, and is it the same for everyone?</text>
            </g>
          </svg>
          <figcaption>A fair process starts from the job, uses the same steps for all, and writes down the reasons.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Three ideas behind fair hiring</h3>
          <table class="lc-table">
            <thead><tr><th>Idea</th><th>Plain meaning</th><th>At Sahyadri Foods</th></tr></thead>
            <tbody>
              <tr><td><strong>Equal opportunity</strong></td><td>Everyone who could do the job can hear about it, apply, and be judged in the same way.</td><td>The job is posted openly in Marathi, Hindi and English. It is not only shared with friends of current staff.</td></tr>
              <tr><td><strong>Merit</strong></td><td>You choose people on skills and evidence. You do not choose on who they know or how they look.</td><td>Every shortlisted candidate does the same practical test: check 10 sample packs and record the defects.</td></tr>
              <tr><td><strong>Job-related criteria</strong></td><td>Every requirement (criterion) links to a real task in the job.</td><td>"Can record defects on a checklist" links to daily work. "Aged 20 to 30" does not.</td></tr>
            </tbody>
          </table>
          <p>Fair does not mean everyone gets the job. It means the reasons for "yes" and "no" are about the job. It also means you use those reasons in the same way for everyone.</p>
          <p>Sometimes fairness means changing the process for one person. For example, a candidate with dyslexia may need extra time to read the checklist. This is called a <strong>reasonable adjustment</strong> (a change that removes a barrier but still tests the same skill).</p>
        </div>
        <div class="lc-card">
          <h3>Why fairness matters for people and for the business</h3>
          <ul class="lc-list">
            <li><strong>For candidates:</strong> a job is income, dignity and a future. An unfair "no" can close that door for reasons that have nothing to do with their skills.</li>
            <li><strong>For the business:</strong> a wider, fairer process finds more capable people. Choosing on evidence also gives better matches between people and jobs.</li>
            <li><strong>For trust:</strong> staff and candidates notice when hiring feels unfair. A fair process protects your reputation as an employer.</li>
            <li><strong>For the law:</strong> in India, the Code on Wages has rules against gender discrimination in pay, and against sex discrimination in recruitment, for the same or similar work. The Rights of Persons with Disabilities Act 2016 protects persons with disabilities. The DPDP Act 2023 covers candidates' personal data. Other countries have their own rules.</li>
          </ul>
          <p>Here is a made-up example. Last year, Sahyadri hired 20 inspectors, mostly through staff referrals and a short chat. 7 of them left within 6 months. <strong>Early attrition</strong> (the share of new hires who leave within a set time) was 7 ÷ 20 × 100 = 35%.</p>
          <p>In exit talks, several said the job was different from what they were told. Others were hired for "good attitude", but nobody checked if they could do the checks. Sunita cannot prove a fairer process would have stopped all of this. But clear, job-related hiring is a sensible place to start.</p>
          <p>This is general information, not legal advice. Check the current rules with your HR legal counsel.</p>
        </div>
        <div class="lc-card">
          <h3>Using AI to turn job tasks into fair criteria</h3>
          <p>AI is good at turning a list of job tasks into clear criteria. It needs the real tasks from you. Compare these two prompts:</p>
          <pre><code>Weak:
        Write selection criteria for a quality inspector.</code></pre>
          <pre><code>Better:
        You are an HR adviser who cares about fair hiring.
        Job: Quality Inspector at a food factory in Maharashtra.
        Main tasks: check samples from the packing line every hour,
        record defects on a checklist, stop the line and tell the
        supervisor when a batch fails, follow hygiene rules.
        Shift: rotating 8-hour shifts.
        Write 5 must-have and 3 nice-to-have criteria. Link each one
        to a task above. Do not use age, gender, religion, caste,
        marital status, looks or home town. Flag any criterion that
        might shut out capable people.</code></pre>
          <p>The weak prompt gives the AI nothing to work with. So it guesses, and it may copy common but unfair lines from job ads it has seen. The better prompt gives real tasks and clear fairness rules.</p>
          <p><strong>What you must still do:</strong></p>
          <ul class="lc-list">
            <li>Check every criterion with the line manager. AI does not know your factory.</li>
            <li>Remove anything about age, gender, religion, caste, marital status or looks, even if the AI suggests it.</li>
            <li>Decide the final criteria yourself, and write down why each one is needed.</li>
            <li>Never paste real candidates' personal data into a public AI tool. Use made-up examples.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Activity: job-related or not?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">This is a draft list of criteria for the Quality Inspector job. Sort each one.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="job" data-label="Job-related"></div>
              <div data-sorter-target="bucket" data-bucket="not" data-label="Not job-related"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="job" data-why="Finding faulty packs is the main task of the job. A sample-check test can measure it.">Can spot a torn or badly sealed pack in a sample</li>
              <li data-bucket="job" data-why="Inspectors record every check. This links directly to daily work.">Can record counts and defects on a checklist</li>
              <li data-bucket="not" data-why="Age is not a skill. Capable older people would be shut out for no job reason.">Aged 20 to 30</li>
              <li data-bucket="not" data-why="Home location is not a skill, and it can shut out whole communities. State the shift times and any transport, and let people decide.">Lives within 5 km of the factory</li>
              <li data-bucket="job" data-why="Rotating shifts are a real part of the job. State them clearly and let every candidate decide. Do not assume who can or cannot work them.">Can work rotating 8-hour shifts, as stated in the ad</li>
              <li data-bucket="not" data-why="Marital status has nothing to do with checking packs. Using it is unfair.">Unmarried candidates preferred</li>
              <li data-bucket="not" data-why="A referral can bring someone to apply. It is not evidence of skill, so referred people should take the same test.">Recommended by a current employee</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to turn a job's tasks into fair, job-related criteria and to review a manager's draft list. Change the parts in [square brackets], or leave them to see an example.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an HR adviser who helps Indian companies hire fairly.

        Role: [Quality Inspector at Sahyadri Foods Ltd, a food factory in Maharashtra]
        Main daily tasks: [check samples from the packing line every hour; record defects on a checklist; stop the line and tell the supervisor when a batch fails; follow hygiene rules]
        Working conditions: [rotating 8-hour shifts; standing for most of the shift, with breaks]
        Draft criteria from the hiring manager: [age 20-30; 12th pass; lives near the factory; good attitude; can read a checklist]

        Please:
        1. Make a table: Criterion | Must-have or nice-to-have | Task it links to | How we will check it (test, question or document).
        2. Review each draft criterion. Mark it Keep, Rewrite or Remove, with a one-line reason.
        3. Flag anything linked to age, gender, religion, caste, marital status, disability, looks or home town.
        4. Suggest one reasonable adjustment we could offer in the skills test.

        Use simple English. Do not invent tasks I did not list. End with: "A person must review and approve these criteria."</pre>
            <ul class="ai-try-checks">
              <li>Every criterion in the table links to a task you listed. Nothing is invented.</li>
              <li>"Age 20-30" and "lives near the factory" are marked Remove, with a reason.</li>
              <li>"Good attitude" is rewritten as something you can observe, such as "follows the hygiene steps in the test".</li>
              <li>Ask yourself if "12th pass" is truly needed. The AI may keep it, but you and the line manager decide.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Fair hiring does not lower the bar. It means choosing on job-related evidence, using the same steps for everyone, and writing down why. AI can help draft the criteria, but a person must check them and own them.
        </div>
      HTML
      starter_code: nil
    },
    2 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-hr">HR & Recruitment</div>
          <h1 class="lc-title">How Bias Enters Hiring</h1>
        </div>
        <p class="lc-lead"><strong>Bias</strong> in hiring is a pattern that gives some people a better or worse chance for reasons not linked to the job. It often happens without anyone meaning it. In this lesson you will learn three sources of bias: human bias, biased data and biased tools. You will see where bias enters each stage of hiring. You will also use AI to spot biased comments in interview notes.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 290" role="img" aria-label="Five hiring stages: job post, sourcing, screening, interview and decision. Under each stage is a way bias can enter: biased words, referral-only sourcing, proxies such as college or gaps, human biases in interviews, and decisions on gut feeling. A band at the bottom shows that biased data and tools can add bias at every stage.">
            <defs><marker id="fh2a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker><marker id="fh2b" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#ec4899"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="16" y="24" text-anchor="start" font-size="12" fill="#c4b5fd">Hiring stages</text>
              <rect x="16" y="36" width="128" height="46" rx="8" fill="#27274e" stroke="#3b82f6"/><text x="80" y="64" font-weight="700">Job post</text>
              <rect x="168" y="36" width="128" height="46" rx="8" fill="#27274e" stroke="#3b82f6"/><text x="232" y="64" font-weight="700">Sourcing</text>
              <rect x="320" y="36" width="128" height="46" rx="8" fill="#27274e" stroke="#3b82f6"/><text x="384" y="64" font-weight="700">Screening</text>
              <rect x="472" y="36" width="128" height="46" rx="8" fill="#27274e" stroke="#3b82f6"/><text x="536" y="64" font-weight="700">Interview</text>
              <rect x="624" y="36" width="128" height="46" rx="8" fill="#27274e" stroke="#3b82f6"/><text x="688" y="64" font-weight="700">Decision</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#fh2a)">
                <line x1="146" y1="59" x2="164" y2="59"/><line x1="298" y1="59" x2="316" y2="59"/><line x1="450" y1="59" x2="468" y2="59"/><line x1="602" y1="59" x2="620" y2="59"/>
              </g>
              <g stroke="#ec4899" stroke-width="1.5" stroke-dasharray="4 3" marker-end="url(#fh2b)">
                <line x1="80" y1="124" x2="80" y2="88"/><line x1="232" y1="124" x2="232" y2="88"/><line x1="384" y1="124" x2="384" y2="88"/><line x1="536" y1="124" x2="536" y2="88"/><line x1="688" y1="124" x2="688" y2="88"/>
              </g>
              <text x="90" y="112" text-anchor="start" font-size="11" fill="#f9a8d4">bias enters</text>
              <g font-size="11.5">
                <rect x="16" y="128" width="128" height="62" rx="8" fill="#1f1f44" stroke="#ec4899"/><text x="80" y="154">Biased words</text><text x="80" y="174">Extra demands</text>
                <rect x="168" y="128" width="128" height="62" rx="8" fill="#1f1f44" stroke="#ec4899"/><text x="232" y="154">Referral-only</text><text x="232" y="174">Narrow channels</text>
                <rect x="320" y="128" width="128" height="62" rx="8" fill="#1f1f44" stroke="#ec4899"/><text x="384" y="154">Proxies: college,</text><text x="384" y="174">gaps, address</text>
                <rect x="472" y="128" width="128" height="62" rx="8" fill="#1f1f44" stroke="#ec4899"/><text x="536" y="154">Affinity, halo,</text><text x="536" y="174">confirmation</text>
                <rect x="624" y="128" width="128" height="62" rx="8" fill="#1f1f44" stroke="#ec4899"/><text x="688" y="154">Gut feeling</text><text x="688" y="174">No written reason</text>
              </g>
              <rect x="16" y="214" width="736" height="58" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="384" y="238" font-weight="700" fill="#fcd34d">Biased data and tools can add bias at every stage</text>
              <text x="384" y="258" font-size="12" fill="#9b99b8">A tool that learns from past hires can copy past unfair patterns, quickly and at scale.</text>
            </g>
          </svg>
          <figcaption>Bias can enter at every stage of hiring, from the first words of the job post to the final decision.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Human bias: four common types</h3>
          <p>Everyone has biases. They are mental shortcuts. They feel like good judgement, but they are not linked to the job.</p>
          <table class="lc-table">
            <thead><tr><th>Bias</th><th>What it means</th><th>Made-up example</th></tr></thead>
            <tbody>
              <tr><td><strong>Affinity bias</strong></td><td>Liking people who are similar to you</td><td>Divya, a hiring manager at LedgerLite Pvt Ltd, finds that a candidate went to her college. She scores him higher, though his test was average.</td></tr>
              <tr><td><strong>Halo effect</strong></td><td>One good thing makes you rate everything high</td><td>A Shift Supervisor candidate speaks very confidently. The panel assumes she can also handle food-safety records, but nobody asks.</td></tr>
              <tr><td><strong>Horns effect</strong></td><td>One bad thing makes you rate everything low</td><td>A candidate arrives 5 minutes late because the bus broke down. The interviewer marks him down on every skill.</td></tr>
              <tr><td><strong>Confirmation bias</strong></td><td>Looking only for evidence that supports your first opinion</td><td>Farhan, HR manager at LedgerLite, decides early that a candidate is "not a culture fit". Then he only remembers her weak answers.</td></tr>
            </tbody>
          </table>
          <p>Watch for vague words like "culture fit", "good attitude" or "not our type". Ask: "Fit with what, exactly? Which job criterion does this link to?"</p>
          <p>You cannot switch bias off. But a good process reduces its effect. Use set criteria, the same questions for everyone, and scores written down before the panel discusses.</p>
        </div>
        <div class="lc-card">
          <h3>Biased data and biased tools</h3>
          <p>AI tools learn from examples. If past hiring was unfair, a tool trained on past hiring data can learn to copy it. It can do this even when it never sees a candidate's gender, religion or caste.</p>
          <p>Made-up example: over five years, LedgerLite hired 40 developers. 34 were men and 6 were women. Imagine a tool trained to find "CVs like our past hires". It may learn to prefer patterns that were common in the men's CVs, such as certain clubs or wording. Those patterns say nothing about coding skill.</p>
          <p>Kinds of failures that have been publicly reported (described in general):</p>
          <ul class="lc-list">
            <li>A CV-screening model learned from years of mostly male hires. It began to score down CVs that mentioned women's activities, such as a women's club. The company dropped the project.</li>
            <li>Screening rules rejected CVs with career gaps. This can shut out people who took time off for caregiving, illness or disability.</li>
            <li>Some online job ads were targeted so that older people did not see them. Research has also found that ad systems can show job ads unevenly to different groups, even without such settings.</li>
            <li>Video interview tools claimed to judge personality or job fit from facial expressions or voices. Many experts question whether this science works at all. After criticism, at least one provider stopped using facial analysis.</li>
          </ul>
          <p>None of these tools set out to be unfair. The bias came from the data, the settings, or claims that were never tested.</p>
        </div>
        <div class="lc-card">
          <h3>Using AI to check interview notes for bias</h3>
          <p>AI can read interview notes and flag comments that are not linked to the job criteria. Give it the criteria, or it cannot judge.</p>
          <pre><code>Weak:
        Is this interview feedback biased?</code></pre>
          <pre><code>Better:
        You are a fair-hiring coach. Our job criteria are: [4 criteria].
        Below are interview notes with names removed.
        For each comment: say which criterion it links to, or "none".
        If it may show bias, name the possible type and explain in one line.
        Suggest a neutral rewrite based on evidence.
        Do not score, rank or judge the candidates.</code></pre>
          <p><strong>What you must still check:</strong></p>
          <ul class="lc-list">
            <li>AI can miss bias, and it can also flag normal comments. Read every flag yourself.</li>
            <li>The goal is better notes and fairer decisions, not blaming interviewers.</li>
            <li>Remove names and personal details first, or use made-up notes. Do not paste real candidate data into public AI tools.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Activity: a hiring debrief at LedgerLite</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="result" data-label="Scores before discussion">The panel wrote their scores before talking, for the Accounts Executive role. Candidate C-07: test 6/10, interview 3/5. Candidate C-11: test 9/10, interview 4.5/5.</li>
              <li data-kind="warn" data-label="Divya · possible affinity bias">"C-07 went to my college. She will fit right in. Let us move her forward." This comment is not linked to any job criterion.</li>
              <li data-kind="warn" data-label="Panel member · possible horns effect">"C-11 was late and I did not like his attitude from the start." His scores are the highest. He was late because his bus broke down.</li>
              <li data-kind="check" data-label="Farhan asks the panel">"Which criterion does each comment link to? Please show the evidence from the answers and the test."</li>
              <li data-kind="user" data-label="Farhan's prompt to AI">"Here are our anonymised notes and our 4 criteria. Flag any comment that is not linked to a criterion. Do not rank the candidates."</li>
              <li data-kind="answer" data-label="AI reply">"Two comments are not linked to a criterion: 'she will fit right in' and 'did not like his attitude'. Replace them with evidence from the test and answers."</li>
              <li data-kind="check" data-label="Decision">Farhan reads the flags himself and agrees. The panel decides using only the evidence. They record the reasons: C-11 moves forward on his scores.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to check made-up interview notes against the job criteria and to suggest neutral rewrites. You can later replace the notes with your own, after removing names and personal details.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a fair-hiring coach for an Indian company.

        Role: [Shift Supervisor at Sahyadri Foods Ltd, a food factory in Maharashtra]
        Job criteria: [1) leads a team of 25 on a shift; 2) handles line stoppages calmly; 3) keeps food-safety records; 4) trains new workers]

        Interview notes (names removed):
        Candidate A: [Great energy, reminds me of myself at his age. We did not talk much about team handling, but I am sure he will be fine.]
        Candidate B: [Gave a clear example of stopping the line after a seal failure and retraining 3 workers. Quiet voice, not sure she can command respect.]
        Candidate C: [Has a 2-year gap in the CV. Answered all the food-safety record questions well.]

        For each comment:
        1. Say which criterion it links to, or "none".
        2. If it may show bias, name the possible type (affinity, halo, horns, confirmation, or a proxy such as a CV gap). Explain in one line.
        3. Rewrite it as a neutral note based on evidence.
        4. Say what evidence is missing and give one follow-up question.

        Give the answer as a table. Do not score, rank or judge the candidates. Use simple English.</pre>
            <ul class="ai-try-checks">
              <li>Candidate A's comment is flagged (possible affinity bias), and team leading is shown as missing evidence.</li>
              <li>Candidate B's clear example is linked to criteria 2 and 4, and "quiet voice" is flagged as not job-related.</li>
              <li>Candidate C's CV gap is flagged as not linked to any criterion.</li>
              <li>The AI does not rank or reject anyone. People make that decision.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Bias rarely looks like open unfairness. It looks like "gut feeling", "good fit" or "trained on our past hires". For every reason, ask two questions: which job criterion does it link to, and where is the evidence?
        </div>
      HTML
      starter_code: nil
    },
    3 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-hr">HR & Recruitment</div>
          <h1 class="lc-title">How AI Can Help or Hurt Fairness</h1>
        </div>
        <p class="lc-lead">AI can make hiring more consistent and fair. It can also copy old unfairness and repeat it on thousands of candidates. In this lesson you will learn how AI helps, and how it hurts. You will learn what a <strong>proxy</strong> is and why it is dangerous. You will also learn what real human oversight looks like, so that people, not tools, stay responsible for hiring decisions.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 270" role="img" aria-label="Two columns. AI can help: same criteria for every CV, hiding names and photos, flagging biased words, and reminding interviewers of set questions. AI can hurt: learning bias from past data, using proxies like pin code or college, sounding sure when wrong, and repeating one mistake on many CVs. Both sides point to a middle box: people check, decide and own the result.">
            <defs><marker id="fh3a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12" fill="#e2e0f0" text-anchor="middle">
              <rect x="16" y="16" width="290" height="236" rx="12" fill="#1f1f44" stroke="#10b981"/>
              <text x="161" y="44" font-size="14" font-weight="700" fill="#6ee7b7">AI can help</text>
              <g text-anchor="start">
                <text x="32" y="84">• Same criteria for every CV</text>
                <text x="32" y="124">• Hides names and photos</text>
                <text x="44" y="142" font-size="11" fill="#9b99b8">(blind review)</text>
                <text x="32" y="182">• Flags biased words in job ads</text>
                <text x="32" y="222">• Reminds interviewers of set questions</text>
              </g>
              <rect x="454" y="16" width="290" height="236" rx="12" fill="#1f1f44" stroke="#ec4899"/>
              <text x="599" y="44" font-size="14" font-weight="700" fill="#f9a8d4">AI can hurt</text>
              <g text-anchor="start">
                <text x="470" y="84">• Learns bias from past hiring data</text>
                <text x="470" y="124">• Uses proxies like pin code</text>
                <text x="482" y="142" font-size="11" fill="#9b99b8">or college name</text>
                <text x="470" y="182">• Sounds sure even when wrong</text>
                <text x="470" y="222">• Repeats one mistake on 1,000 CVs</text>
              </g>
              <rect x="326" y="76" width="108" height="116" rx="10" fill="#27274e" stroke="#f59e0b"/>
              <text x="380" y="104" font-weight="700" fill="#fcd34d">People</text>
              <text x="380" y="128">check,</text>
              <text x="380" y="148">decide and</text>
              <text x="380" y="168">own it</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#fh3a)">
                <line x1="308" y1="134" x2="322" y2="134"/><line x1="452" y1="134" x2="438" y2="134"/>
              </g>
            </g>
          </svg>
          <figcaption>AI can push hiring towards fairness or away from it. People in the middle must check the work and make the decisions.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>How AI can help fairness</h3>
          <table class="lc-table">
            <thead><tr><th>Help</th><th>How it works</th><th>What you still do</th></tr></thead>
            <tbody>
              <tr><td><strong>Consistency</strong></td><td>AI scores every CV against the same written criteria. It does not get tired at CV number 180.</td><td>Write fair criteria first, and spot-check the scores.</td></tr>
              <tr><td><strong>Blind review</strong></td><td>Many applicant tracking systems (ATS: software that collects and tracks job applications) can hide names, photos, age and address before a recruiter reads the CV.</td><td>Check what your tool can hide. Check the tool's current help pages.</td></tr>
              <tr><td><strong>Wording checks</strong></td><td>AI flags biased or unclear words in job ads and interview questions.</td><td>Decide which flags are right. AI can over-flag.</td></tr>
              <tr><td><strong>Structure</strong></td><td>AI drafts question banks and scoring guides (rubrics) so every candidate gets the same questions.</td><td>Check each question is job-related and legal.</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>How AI can hurt fairness: learned bias and proxies</h3>
          <p>A <strong>proxy</strong> is a detail that seems neutral but is closely linked to a group. A tool can use it as a stand-in for that group, even if the group is never mentioned.</p>
          <ul class="lc-list">
            <li><strong>Pin code or address:</strong> in some cities, areas are linked to income, religion or caste.</li>
            <li><strong>College name:</strong> often linked to family income, region and language.</li>
            <li><strong>Career gaps:</strong> often linked to caregiving, illness or disability.</li>
            <li><strong>Hobbies, clubs and writing style:</strong> can be linked to gender, class or first language.</li>
          </ul>
          <p>Made-up example: LedgerLite tests an AI screening tool on 60 applications for a Junior Developer job. The <strong>shortlist rate</strong> is the share of a group that the tool moves forward: shortlisted ÷ applicants × 100.</p>
          <table class="lc-table">
            <thead><tr><th>Group</th><th>Applicants</th><th>Shortlisted by the tool</th><th>Shortlist rate</th></tr></thead>
            <tbody>
              <tr><td>From 3 well-known colleges</td><td>20</td><td>11</td><td>11 ÷ 20 = 55%</td></tr>
              <tr><td>From other colleges</td><td>40</td><td>4</td><td>4 ÷ 40 = 10%</td></tr>
              <tr><td><strong>Total</strong></td><td>60</td><td>15</td><td>15 ÷ 60 = 25%</td></tr>
            </tbody>
          </table>
          <p>Farhan checks the coding test that every applicant took. In the "other colleges" group, 9 people scored 7 or more out of 10. The tool shortlisted only 4 people from that whole group. So the tool seems to reward the college name, not the skill.</p>
          <p>His next steps: hide college names from the tool, and score on skills evidence. Then run it again and compare. He also asks the vendor how the tool was trained. A big gap is a warning sign, not proof. But it must be checked before anyone trusts the tool.</p>
          <p>Other ways AI can hurt: it sounds sure even when it is wrong, and it may not explain its reasons. Because it is fast, one mistake can reach a thousand candidates in a day.</p>
        </div>
        <div class="lc-card">
          <h3>Human oversight that is real</h3>
          <p><strong>Human oversight</strong> means a person checks the AI's work and can change the result. <strong>Automation bias</strong> is the habit of trusting a computer too much. A reviewer who clicks "accept" on every AI result is not real oversight.</p>
          <p>Real oversight needs a reviewer who has:</p>
          <ul class="lc-list">
            <li><strong>Time:</strong> enough to read the evidence, not just the score.</li>
            <li><strong>Evidence:</strong> the tool shows why it gave each score.</li>
            <li><strong>Power:</strong> the reviewer can overrule the tool without extra approval.</li>
            <li><strong>Training:</strong> they know the criteria and the common proxies.</li>
            <li><strong>Records:</strong> they write down when and why they changed a result.</li>
          </ul>
          <p>Your prompt can also build in fairness:</p>
          <pre><code>Weak:
        Rank these 50 CVs from best to worst.</code></pre>
          <pre><code>Better:
        Score each anonymised CV against these 4 criteria, from 0 to 2.
        For each score, quote the line from the CV that supports it.
        If there is no evidence, write "not enough evidence". Do not guess.
        Ignore name, gender, age, photo, college name, address and
        career gaps. Do not rank or reject anyone. A recruiter will
        review every score.</code></pre>
          <p>Use made-up or anonymised CVs when you practise. Never paste real candidate data into a public AI tool. At work, use only tools your company has approved for candidate data.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: help or hurt?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each way of using AI in hiring. Does it help fairness or hurt it?</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="help" data-label="Helps fairness"></div>
              <div data-sorter-target="bucket" data-bucket="hurt" data-label="Hurts fairness"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="help" data-why="Same criteria for all, with evidence a person can check.">The AI scores every CV on the same 4 criteria and quotes the evidence for each score</li>
              <li data-bucket="help" data-why="Blind review stops names, photos and addresses from affecting the first read.">Names, photos and addresses are hidden before the recruiter reads each CV</li>
              <li data-bucket="hurt" data-why="The tool will copy the past pattern. City becomes a proxy, not a skill.">The tool was trained to find people "like our top performers", who were mostly from one city</li>
              <li data-bucket="hurt" data-why="Career gaps are a proxy for caregiving, illness or disability. They say nothing about skill.">The tool gives lower scores to CVs with a gap of more than a year</li>
              <li data-bucket="hurt" data-why="This is automation bias. Nobody is really checking, so mistakes pass through.">The recruiter accepts every AI rejection without looking, because "the system is usually right"</li>
              <li data-bucket="help" data-why="Neutral words invite all capable people to apply. A person still decides on the final wording.">The AI flags "young and dynamic" in a job ad and suggests neutral words</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to make an "AI use map" for your hiring process. It lists where AI helps, where it could hurt, and which person checks each step.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a fair-hiring adviser for Indian employers.

        My company: [Sahyadri Foods Ltd, a food factory in Maharashtra with 800 workers]
        We are hiring: [20 Quality Inspectors and 2 Shift Supervisors]
        We want to use AI at these steps: [writing the job ad; screening CVs in our applicant tracking system; drafting interview questions; summarising interview notes]
        Our HR team: [3 people]

        Make a table with these columns:
        Hiring step | How AI would be used | How it could help fairness | How it could hurt fairness (include any proxy risk) | Human check needed (who, when, what they look at) | Keep, change or avoid

        Then list 3 rules for our recruiters so their review is real, not a rubber stamp.

        Rules for you:
        - AI may draft, sort or flag. It must not make the final decision to reject or hire anyone.
        - Do not recommend tools that claim to read emotions, honesty or personality from video or voice.
        - Do not name specific products.
        - Use simple English.</pre>
            <ul class="ai-try-checks">
              <li>Every hiring step has a named human check, with a real person and a time.</li>
              <li>Proxy risks such as college name, address and career gaps are named in the CV screening row.</li>
              <li>Final hire and reject decisions stay with people.</li>
              <li>The checks are realistic for the size of your HR team.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> AI multiplies whatever process you give it. A fair, structured process becomes more consistent. A biased one becomes biased at scale. Human oversight works only when the reviewer has time, evidence and the power to say no.
        </div>
      HTML
      starter_code: nil
    },
    4 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-hr">HR & Recruitment</div>
          <h1 class="lc-title">Inclusive Job Descriptions</h1>
        </div>
        <p class="lc-lead">A <strong>job description</strong> (JD) is often the first thing a candidate reads about you. Its words decide who feels welcome to apply. In this lesson you will learn to find gendered and exclusionary words, and to set realistic requirements. You will also make a JD accessible and check it with AI. You will follow Sunita as she fixes the JD for a Shift Supervisor at Sahyadri Foods Ltd.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 290" role="img" aria-label="Before and after versions of a Shift Supervisor job description. Before: young energetic male candidate, rockstar who handles pressure, native English speaker, graduate from a top college, 10 plus years of experience, apply by email only. After: open to all who meet the must-haves, stays calm when a line stops, writes clear shift reports in English, diploma, degree or equal experience, 3 plus years in production work, apply by email, phone or WhatsApp.">
            <defs><marker id="fh4a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12.5" fill="#e2e0f0" text-anchor="middle">
              <text x="380" y="22" font-size="12" fill="#c4b5fd">Shift Supervisor, Sahyadri Foods Ltd</text>
              <rect x="16" y="36" width="330" height="214" rx="12" fill="#1f1f44" stroke="#ec4899"/>
              <text x="181" y="62" font-weight="700" fill="#f9a8d4">Before</text>
              <g text-anchor="start" fill="#f9a8d4">
                <text x="34" y="92">✗ Young, energetic male candidate</text>
                <text x="34" y="120">✗ Rockstar who handles pressure</text>
                <text x="34" y="148">✗ Native English speaker</text>
                <text x="34" y="176">✗ Graduate from a top college</text>
                <text x="34" y="204">✗ 10+ years' experience</text>
                <text x="34" y="232">✗ Apply by email only</text>
              </g>
              <line x1="350" y1="143" x2="406" y2="143" stroke="#9b99b8" stroke-width="2" marker-end="url(#fh4a)"/>
              <rect x="414" y="36" width="330" height="214" rx="12" fill="#1f1f44" stroke="#10b981"/>
              <text x="579" y="62" font-weight="700" fill="#6ee7b7">After</text>
              <g text-anchor="start" fill="#d1fae5">
                <text x="432" y="92">✓ Open to all who meet the must-haves</text>
                <text x="432" y="120">✓ Stays calm when a line stops</text>
                <text x="432" y="148">✓ Writes clear shift reports in English</text>
                <text x="432" y="176">✓ Diploma, degree or equal experience</text>
                <text x="432" y="204">✓ 3+ years in production work</text>
                <text x="432" y="232">✓ Apply by email, phone or WhatsApp</text>
              </g>
              <text x="380" y="278" font-size="12" fill="#9b99b8">Same job. The words decide who feels able to apply.</text>
            </g>
          </svg>
          <figcaption>Each "before" line shuts out capable people. Each "after" line describes the real job.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Words that shut people out</h3>
          <table class="lc-table">
            <thead><tr><th>Word or phrase</th><th>The problem</th><th>Better</th></tr></thead>
            <tbody>
              <tr><td>"he will", "salesman", "manpower"</td><td>Gendered words. Some people read them as "this job is not for me".</td><td>"you will", "salesperson", "staff" or "team"</td></tr>
              <tr><td>"young and energetic", "under 30"</td><td>About age, not skill</td><td>Name the real need: "can work a full 8-hour shift on the production floor"</td></tr>
              <tr><td>"rockstar", "ninja", "aggressive"</td><td>Vague. Can sound as if the team wants only one type of personality.</td><td>"takes charge and stays calm when a line stops"</td></tr>
              <tr><td>"native English speaker"</td><td>About where someone grew up, not what they can do</td><td>"writes clear shift reports in English"</td></tr>
              <tr><td>"pleasing personality", "good-looking"</td><td>About looks. Not job-related, and unfair.</td><td>Remove it, or name a real skill: "greets visitors politely"</td></tr>
              <tr><td>"must be physically fit"</td><td>Vague. May shut out disabled people who can do the job.</td><td>"stands for most of the shift, with breaks. We can discuss adjustments."</td></tr>
              <tr><td>"no family commitments", "unmarried"</td><td>About personal life, not the job</td><td>Remove it. State the shift pattern and let people decide.</td></tr>
            </tbody>
          </table>
          <p>In India, the Code on Wages bans discrimination on the ground of sex when recruiting for the same or similar work. So a line like "male candidates only" can be a legal risk as well as unfair. This is general information, not legal advice. Check with your HR legal counsel.</p>
        </div>
        <div class="lc-card">
          <h3>Realistic requirements and accessible JDs</h3>
          <p><strong>Realistic requirements.</strong> A long wish list puts off capable people who do not tick every box. Split the list into <strong>must-haves</strong> (needed on day one) and <strong>nice-to-haves</strong> (helpful, or can be learned on the job). Keep to about 4 to 6 must-haves.</p>
          <ul class="lc-list">
            <li>Ask the manager why each number is needed. "10+ years" often becomes "3+ years" when you ask.</li>
            <li>Add "or equal experience" next to degree requirements, where the skill matters more than the certificate.</li>
            <li>Show the pay range and the shift pattern. Clear facts help everyone decide fairly.</li>
          </ul>
          <p><strong>Accessible JDs.</strong> Accessible means people with different abilities and backgrounds can read the JD and apply.</p>
          <ul class="lc-list">
            <li>Use plain words, short sentences, headings and bullet points.</li>
            <li>Offer the JD in the languages your candidates read. For Sahyadri, that is Marathi, Hindi and English.</li>
            <li>Share real text, not only a poster image. Screen readers (software that reads the screen aloud) cannot read text inside an image.</li>
            <li>Give more than one way to apply: online, phone, WhatsApp or walk-in.</li>
            <li>Add an adjustments line, for example: "If you need any change to the application or test, tell us at [contact]. We will talk it through with you."</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Checking a JD with AI</h3>
          <pre><code>Weak:
        Make this job ad inclusive.</code></pre>
          <pre><code>Better:
        You are an inclusive-hiring editor. Check the job description
        below for gendered, age-related and exclusionary words, and for
        requirements that seem higher than the job needs.
        Give a table: Phrase | Problem | Better wording.
        Then give a rewritten JD. Do not add any new requirements, pay
        or benefits that are not in my text. Mark missing facts as
        [to confirm].
        [paste the JD]</code></pre>
          <p><strong>What you must still check:</strong></p>
          <ul class="lc-list">
            <li>AI can miss problem words, especially in Marathi or Hindi. It can also flag normal words.</li>
            <li>AI sometimes adds new requirements or benefits. Compare the rewrite with your original, line by line.</li>
            <li>Confirm every fact (pay, shifts, tasks) with the hiring manager.</li>
            <li>Ask a staff member who is a native speaker to check each translation.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Activity: Sunita checks a JD with AI</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Sunita's prompt">"Check this Shift Supervisor JD for biased words and unrealistic requirements. Give a table of problems. Do not add new requirements."</li>
              <li data-kind="answer" data-label="AI reply">It flags "young, energetic male candidate", "rockstar", "native English speaker", "top college" and "10+ years' experience", with a reason for each.</li>
              <li data-kind="check" data-label="Sunita checks with the plant manager">She asks why 10+ years is needed. He agrees that 3+ years of production work, with some experience leading a team, is enough.</li>
              <li data-kind="answer" data-label="AI rewrite">The new draft is clear and neutral. But it lists "HACCP certification required" as a must-have.</li>
              <li data-kind="warn" data-label="Mistake caught">HACCP (a food-safety system) was not in the original JD. The AI added it. After checking, Sunita makes it a nice-to-have: "training given after joining".</li>
              <li data-kind="check" data-label="Final checks">Pay range and shift pattern are correct. Marathi and Hindi versions are checked by staff. The adjustments line and the phone and WhatsApp options are added.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to review a flawed, made-up JD for an office job at LedgerLite Pvt Ltd. You can replace it with your own JD, but remove any private details first.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an inclusive-hiring editor for Indian companies.

        Job description to review:
        [Accounts Executive, LedgerLite Pvt Ltd, Karnataka. We want a young, dynamic go-getter to join our rockstar finance team. He should be a B.Com graduate from a reputed college with 5-7 years' experience, excellent communication skills and a pleasing personality. Must be a native English speaker, available for long hours and have no career gaps. Apply only through our online portal.]

        Please:
        1. Make a table: Phrase | Problem | Better wording.
        2. Split the requirements into must-haves (no more than 5) and nice-to-haves. Say which ones seem higher than the job needs.
        3. Write a new JD in under 200 words. Use "you". Include a line inviting people to ask for adjustments, and more than one way to apply.
        4. List the questions I must ask the hiring manager before posting.

        Rules: Do not invent pay, benefits, tasks or requirements. Mark missing facts as [to confirm]. Use simple English.</pre>
            <ul class="ai-try-checks">
              <li>Each flagged phrase has a clear reason, including "young", "he", "pleasing personality", "native English speaker" and "no career gaps".</li>
              <li>The new JD has no invented pay or benefits. Missing facts show [to confirm].</li>
              <li>"Available for long hours" is replaced by the real working hours, marked [to confirm].</li>
              <li>You check the must-haves and facts with the hiring manager (at LedgerLite, that is Divya) before posting.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A job description filters people before you see a single CV. Every requirement should be real, and every word should welcome all capable people. The facts must come from you and the hiring manager, not from the AI.
        </div>
      HTML
      starter_code: nil
    },
    5 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-hr">HR & Recruitment</div>
          <h1 class="lc-title">Fair Sourcing</h1>
        </div>
        <p class="lc-lead"><strong>Sourcing</strong> means finding and attracting candidates. If only a small group hears about a job, even a perfectly fair test gives an unfair result. Many capable people never got the chance to apply. In this lesson you will learn to widen the pool of candidates, choose channels, use referrals well and track where applicants come from. You will follow Sunita as she sources 20 Quality Inspectors for Sahyadri Foods Ltd.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 290" role="img" aria-label="Five sourcing channels feed one open pool of 325 applicants: referrals 90, ITI visits 60, job portal 120, NCS portal 40, and a disability employment partner 15. 204 applicants who meet the must-haves take the same skills test, 90 pass, and 20 are hired. Referrals were about 28 percent of applicants.">
            <defs><marker id="fh5a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="16" y="22" text-anchor="start" font-size="12" fill="#c4b5fd">Sahyadri Foods: 20 Quality Inspectors (made-up numbers)</text>
              <g font-size="12.5">
                <rect x="16" y="40" width="200" height="34" rx="7" fill="#27274e" stroke="#8b5cf6"/><text x="116" y="62">Referrals · 90</text>
                <rect x="16" y="82" width="200" height="34" rx="7" fill="#27274e" stroke="#3b82f6"/><text x="116" y="104">ITI visits · 60</text>
                <rect x="16" y="124" width="200" height="34" rx="7" fill="#27274e" stroke="#22d3ee"/><text x="116" y="146">Job portal · 120</text>
                <rect x="16" y="166" width="200" height="34" rx="7" fill="#27274e" stroke="#f59e0b"/><text x="116" y="188">NCS portal · 40</text>
                <rect x="16" y="208" width="200" height="34" rx="7" fill="#27274e" stroke="#ec4899"/><text x="116" y="230">Disability partner · 15</text>
              </g>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#fh5a)">
                <line x1="218" y1="57" x2="266" y2="128"/><line x1="218" y1="99" x2="266" y2="134"/><line x1="218" y1="141" x2="266" y2="141"/><line x1="218" y1="183" x2="266" y2="148"/><line x1="218" y1="225" x2="266" y2="154"/>
                <line x1="422" y1="141" x2="456" y2="141"/><line x1="592" y1="141" x2="626" y2="141"/>
              </g>
              <rect x="270" y="102" width="150" height="78" rx="10" fill="#1f1f44" stroke="#c4b5fd"/>
              <text x="345" y="134" font-weight="700">One open pool</text><text x="345" y="156" fill="#9b99b8">325 applicants</text>
              <rect x="460" y="102" width="130" height="78" rx="10" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="525" y="134" font-weight="700">Same test</text><text x="525" y="156" fill="#9b99b8">90 passed</text>
              <rect x="630" y="102" width="114" height="78" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="687" y="134" font-weight="700" fill="#6ee7b7">20 hired</text><text x="687" y="156" fill="#9b99b8">on evidence</text>
              <text x="380" y="272" font-size="12" fill="#9b99b8">Referrals were 90 of 325 applicants (about 28%), not the whole pool.</text>
            </g>
          </svg>
          <figcaption>Many channels feed one open pool. Everyone, including referred people, goes through the same screening and test.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Why referral-only hiring is risky</h3>
          <p>An <strong>employee referral</strong> is when a current employee suggests someone for a job. Referrals are fast, and they often bring good people. But people mostly know people like themselves: from the same area, background, language or school.</p>
          <p>At Sahyadri's last hiring drive, 120 of 150 applicants came from referrals. That is 120 ÷ 150 × 100 = 80%. So new hires looked a lot like current staff. Many capable people nearby never heard about the job.</p>
          <p>You do not need to stop referrals. Make them fair instead:</p>
          <ul class="lc-list">
            <li>Always advertise the job openly too, on the same day.</li>
            <li>Referred candidates take the same test and interview as everyone else. No shortcuts.</li>
            <li>Referral rewards follow the same written rules for all staff.</li>
            <li>Ask staff to share the job widely, not only with close friends and relatives.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Channels that widen the pool</h3>
          <table class="lc-table">
            <thead><tr><th>Channel</th><th>Who it may reach</th><th>Tips</th></tr></thead>
            <tbody>
              <tr><td>ITIs (Industrial Training Institutes) and polytechnics</td><td>People with technical training from nearby towns</td><td>Visit in person. Share the JD, the pay and the test dates.</td></tr>
              <tr><td>The government's National Career Service (NCS) portal and local employment offices</td><td>Job seekers who use government services</td><td>Post the job there. Check the portal's current process on its help pages.</td></tr>
              <tr><td>Local-language posters and WhatsApp messages</td><td>People who do not use English job portals</td><td>Write in Marathi and Hindi. Include pay, shifts and a phone number.</td></tr>
              <tr><td>Disability employment organisations</td><td>Persons with disabilities who are looking for work</td><td>Ask them to check that your test and building are accessible.</td></tr>
              <tr><td>Self-help groups and community organisations</td><td>Local people, including those returning to work after a break</td><td>Mention any transport, canteen or crèche facilities you really offer.</td></tr>
              <tr><td>Job portals and LinkedIn</td><td>Experienced people, for example Shift Supervisors or LedgerLite's office roles</td><td>Use an inclusive JD. Do not set ad filters that hide the job from any age group or gender.</td></tr>
            </tbody>
          </table>
          <p>For office roles, Farhan at LedgerLite can add a <strong>returnship</strong> (a paid programme for people coming back after a long career break). It welcomes people that CV-gap filters often shut out.</p>
        </div>
        <div class="lc-card">
          <h3>Using AI for sourcing</h3>
          <p>AI can suggest channels, draft messages for each one, and translate a first draft. It can also help you read your source numbers.</p>
          <pre><code>Weak:
        Where can I find factory workers?</code></pre>
          <pre><code>Better:
        You are a recruitment adviser in India. I need 20 Quality
        Inspectors for a food factory in Maharashtra. Last time, 80% of
        applicants came from staff referrals. Suggest 6 other types of
        channels that reach people outside our staff's networks. For
        each: who it may reach, what I should do, and the effort.
        Do not invent names of organisations, phone numbers or websites.</code></pre>
          <p><strong>What you must still check:</strong></p>
          <ul class="lc-list">
            <li>AI can invent organisations, contacts and websites. Check that every one is real before you use it.</li>
            <li>Have a native speaker check every Marathi or Hindi message.</li>
            <li>Check that pay, shifts and facilities in each message are correct.</li>
            <li>Do not use AI or ad tools to target or exclude people by age, gender, religion or caste.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Track where candidates come from</h3>
          <p>Add a "Source" column to your applicant sheet or ATS. Here are Sahyadri's made-up results for this drive. Only applicants who met the must-haves took the test. Here the <strong>pass rate</strong> is passed ÷ all applicants from that source × 100.</p>
          <table class="lc-table">
            <thead><tr><th>Source</th><th>Applicants</th><th>Passed skills test</th><th>Pass rate</th><th>Hired</th></tr></thead>
            <tbody>
              <tr><td>Employee referrals</td><td>90</td><td>30</td><td>30 ÷ 90 ≈ 33%</td><td>8</td></tr>
              <tr><td>ITI visits</td><td>60</td><td>24</td><td>24 ÷ 60 = 40%</td><td>6</td></tr>
              <tr><td>Job portal</td><td>120</td><td>20</td><td>20 ÷ 120 ≈ 17%</td><td>3</td></tr>
              <tr><td>NCS portal</td><td>40</td><td>10</td><td>10 ÷ 40 = 25%</td><td>2</td></tr>
              <tr><td>Disability employment partner</td><td>15</td><td>6</td><td>6 ÷ 15 = 40%</td><td>1</td></tr>
              <tr><td><strong>Total</strong></td><td>325</td><td>90</td><td>90 ÷ 325 ≈ 28%</td><td>20</td></tr>
            </tbody>
          </table>
          <p>With sources in column A, applicants in column B and passes in column C (rows 2 to 6), use these Google Sheets or Excel formulas:</p>
          <pre><code>Share of applicants:  =B2/SUM($B$2:$B$6)
        Pass rate:            =C2/B2</code></pre>
          <p>What Sunita learns: the job portal brought the most applicants but the lowest pass rate. Maybe that ad was unclear about the job. The disability partner sent only 15 people. With small numbers, one person more or less changes the rate a lot, so she does not overreact.</p>
          <p>Where someone heard about the job is useful and low-risk data. Data about gender, disability or other groups is different. Collect it only if people agree, and keep it apart from hiring decisions. The DPDP Act 2023 applies to this data. Check with your HR legal counsel.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: plan fair sourcing</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put Sunita's fair sourcing plan in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Finish the inclusive JD, with pay, shifts and must-haves</li>
              <li data-order="2">List channels that reach people outside current staff networks</li>
              <li data-order="3">Draft a message for each channel with AI, then check facts and translations</li>
              <li data-order="4">Post the job on all channels on the same day, with the same closing date</li>
              <li data-order="5">Screen every applicant, including referred people, with the same must-haves and skills test</li>
              <li data-order="6">Record each applicant's source and review the source mix every week</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to build a fair sourcing plan for a role you hire for. Change the parts in [square brackets], or leave them to see an example.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a recruitment adviser who helps Indian employers hire fairly.

        Role: [20 Quality Inspectors at Sahyadri Foods Ltd, a food factory in Maharashtra]
        Must-haves: [can read and fill a checklist in Marathi, Hindi or English; basic counting; can work rotating 8-hour shifts]
        Pay and facilities: [pay range to confirm; company bus from two nearby towns]
        Last time: [80% of applicants came from employee referrals]
        Budget: [small; mostly staff time]

        Please:
        1. Suggest 6 sourcing channels beyond referrals. For each: who it may reach, what to do, and the effort (low, medium or high). Use general types of organisations only.
        2. Write a short job message (under 80 words) for WhatsApp and posters, in simple English. Include pay, shifts, how to apply, and a line inviting people to ask for any adjustment they need.
        3. Give 3 rules to keep referrals fair.
        4. Give a tracking table (Source | Applicants | Passed test | Hired) and a Google Sheets formula for each source's share of applicants.

        Do not invent names of organisations, phone numbers or websites. Do not suggest ad settings that exclude people by age, gender, religion or caste.</pre>
            <ul class="ai-try-checks">
              <li>No invented organisation names, phone numbers or websites. Check every channel is real near you.</li>
              <li>The job message keeps "[pay range to confirm]" and does not make up a number.</li>
              <li>Referred candidates take the same test as everyone else.</li>
              <li>The share formula divides by the total of all sources, for example =B2/SUM($B$2:$B$8) for 7 sources in rows 2 to 8.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Fairness starts before the first CV arrives. If only one network hears about the job, the pool is narrow, and the result will be narrow too. Open many doors, test everyone in the same way, and track where people come from.
        </div>
      HTML
      starter_code: nil
    },
    6 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-hr">HR & Recruitment</div>
          <h1 class="lc-title">Fair CV Screening</h1>
        </div>
        <p class="lc-lead">CV screening is the first big filter in hiring. Most applicants are removed here, often after a quick look. At Sahyadri Foods Ltd, 325 people apply for 20 Quality Inspector jobs. HR head Sunita wants every one of them judged the same way. In this lesson, you will learn to set clear criteria before you read any CV. You will also learn to hide details that do not matter, avoid hidden proxies and score every CV on the same evidence. You will see how AI can help, and where a person must decide.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="A five-step screening flow: CVs arrive, hide details, score criteria, human check, shortlist. Below, one made-up CV before and after. Before shows name, age, photo, address, college, a career gap and family details. After shows only candidate code C-027 and scores on job-related criteria.">
            <defs><marker id="fh6a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="10" y="20" width="130" height="66" rx="10" fill="#1f1f44" stroke="#3b82f6"/><text x="75" y="48">CVs arrive</text><text x="75" y="68" font-size="11" fill="#9b99b8">325 applications</text>
              <rect x="160" y="20" width="130" height="66" rx="10" fill="#1f1f44" stroke="#ec4899"/><text x="225" y="48">Hide details</text><text x="225" y="68" font-size="11" fill="#9b99b8">name, photo, age</text>
              <rect x="310" y="20" width="130" height="66" rx="10" fill="#1f1f44" stroke="#8b5cf6"/><text x="375" y="48">Score criteria</text><text x="375" y="68" font-size="11" fill="#9b99b8">same rubric for all</text>
              <rect x="460" y="20" width="130" height="66" rx="10" fill="#1f1f44" stroke="#f59e0b"/><text x="525" y="48">Human check</text><text x="525" y="68" font-size="11" fill="#9b99b8">check the quotes</text>
              <rect x="610" y="20" width="130" height="66" rx="10" fill="#1f1f44" stroke="#10b981"/><text x="675" y="48">Shortlist</text><text x="675" y="68" font-size="11" fill="#9b99b8">for the test</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#fh6a)">
                <line x1="142" y1="53" x2="156" y2="53"/><line x1="292" y1="53" x2="306" y2="53"/><line x1="442" y1="53" x2="456" y2="53"/><line x1="592" y1="53" x2="606" y2="53"/>
              </g>
              <text x="20" y="116" text-anchor="start" font-size="12" fill="#9b99b8">One made-up CV, before and after</text>
              <rect x="10" y="128" width="360" height="164" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="26" y="152" text-anchor="start" font-weight="700" fill="#f9a8d4">Before: what a screener sees</text>
              <g text-anchor="start" fill="#fca5a5">
                <text x="26" y="180">Name: Priya Deshmukh, age 29</text>
                <text x="26" y="204">Photo, full home address</text>
                <text x="26" y="228">College: a small local college</text>
                <text x="26" y="252">Gap: 2021 to 2023</text>
                <text x="26" y="276">Father's name, marital status</text>
              </g>
              <rect x="390" y="128" width="360" height="164" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="406" y="152" text-anchor="start" font-weight="700" fill="#6ee7b7">After: candidate C-027</text>
              <g text-anchor="start">
                <text x="406" y="180">Qualification: Diploma, Food Tech</text>
                <text x="406" y="204">Reads Marathi and Hindi: yes</text>
                <text x="406" y="228">Rotating shifts: yes</text>
                <text x="406" y="252">QC experience: 1 of 2</text>
                <text x="406" y="276">Food safety training: 2 of 2</text>
              </g>
            </g>
          </svg>
          <figcaption>The screener sees only what the job needs. Every CV gets the same rubric, and a person checks the result.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Step 1: Decide the criteria before you read any CV</h3>
          <p>A <strong>criterion</strong> is one thing the job really needs, such as a skill or a qualification. Write your criteria first. If you read CVs first, you may bend the rules to fit a person you already like.</p>
          <p>Sunita asks the plant's quality manager what a Quality Inspector does every day. The answer: check raw materials and packed products, record results, read labels in English and Marathi, and work rotating shifts. From this, she writes the rubric below. A <strong>rubric</strong> is a scoring guide that says what each score means.</p>
          <table class="lc-table">
            <thead><tr><th>Criterion</th><th>Type</th><th>Evidence to look for</th><th>How to score</th></tr></thead>
            <tbody>
              <tr><td>B.Sc (Chemistry, Microbiology or Food Science) or Diploma in Food Technology</td><td>Must have</td><td>Qualification listed</td><td>Yes / No</td></tr>
              <tr><td>Can read labels in English and Marathi or Hindi</td><td>Must have</td><td>Languages section or application form</td><td>Yes / No</td></tr>
              <tr><td>Can work rotating shifts</td><td>Must have</td><td>Same yes/no question on every application form</td><td>Yes / No</td></tr>
              <tr><td>Quality or lab checks, in any industry</td><td>Nice to have</td><td>Jobs, internships, projects</td><td>0 = none, 1 = some, 2 = clear</td></tr>
              <tr><td>Food safety or hygiene training</td><td>Nice to have</td><td>Courses and certificates</td><td>0 = none, 1 = some, 2 = clear</td></tr>
            </tbody>
          </table>
          <p>Keep the must-have list short. Every must-have removes people. Ask yourself: "Could someone do this job well without it?" If yes, it is a nice-to-have.</p>
        </div>
        <div class="lc-card">
          <h3>Step 2: Hide what does not matter, and watch for proxies</h3>
          <p>Many Indian CVs include a photo, date of birth, religion, marital status and father's name. None of these tell you if a person can inspect food. Remove them before scoring. Some applicant tracking systems (ATS: software that collects and tracks job applications) have a blind review option. Check your tool's current help pages. If yours does not, one coordinator who does not score can make a copy with a code, such as C-027.</p>
          <p>A <strong>proxy</strong> is a detail that seems neutral but can stand in for gender, age, caste, religion or income. Proxies are harder to spot than names.</p>
          <table class="lc-table">
            <thead><tr><th>Proxy</th><th>Why it can be unfair</th><th>A fairer way</th></tr></thead>
            <tbody>
              <tr><td>College name</td><td>Favours people who could afford or reach certain colleges. It says little about inspection skill.</td><td>Check the qualification and the skills, not the college.</td></tr>
              <tr><td>Career gap</td><td>Gaps often come from caring for a child or parent, or from illness. This hits women more often.</td><td>Ignore the gap. Score the skills the person has.</td></tr>
              <tr><td>Home address</td><td>An area can hint at community or income.</td><td>Ask everyone the same question: "Can you reach the plant for a 6 a.m. shift?"</td></tr>
              <tr><td>Graduation year</td><td>It shows age.</td><td>Check only that the qualification is there.</td></tr>
              <tr><td>Polished English in the CV</td><td>The job needs reading labels, not writing essays.</td><td>Score the evidence, not the writing style.</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Step 3: Use AI to score evidence, not to pick people</h3>
          <p>Here is a weak prompt:</p>
          <pre><code>Here are 50 CVs. Pick the best 20 Quality Inspectors.</code></pre>
          <p>The AI will use its own idea of "best". It may favour famous colleges and polished writing, and it cannot show you why. You would also be pasting real personal data into an AI tool. A better prompt gives your rubric and strict rules, and uses coded CVs:</p>
          <pre><code>You help HR screen CVs fairly. Use ONLY this rubric: [paste rubric].
        For each coded CV, score every criterion.
        For each score, quote the exact words from the CV as evidence.
        If there is no evidence, write "Not stated". Do not guess.
        Do not use or comment on college name, gaps, age, gender or address.
        Do not rank or reject anyone.
        Output a table: code | criterion | score | evidence quote.</code></pre>
          <p>Here is a worked example for three made-up coded CVs:</p>
          <table class="lc-table">
            <thead><tr><th>Code</th><th>Qualification</th><th>Labels</th><th>Shifts</th><th>QC checks</th><th>Food safety</th><th>Result</th></tr></thead>
            <tbody>
              <tr><td>C-014</td><td>B.Sc Microbiology</td><td>Yes</td><td>Yes</td><td>2: "8 months testing milk samples in a dairy lab"</td><td>1: "one-day hygiene session"</td><td>Must-haves met, 3 of 4</td></tr>
              <tr><td>C-027</td><td>Diploma, Food Technology</td><td>Yes</td><td>Yes</td><td>1: "internship: checked weights on a packing line"</td><td>2: "food safety supervisor training certificate"</td><td>Must-haves met, 3 of 4</td></tr>
              <tr><td>C-031</td><td>B.Com</td><td>Yes</td><td>Yes</td><td>2: "3 years of quality checks at a bakery unit"</td><td>0: Not stated</td><td>Qualification not met: human review</td></tr>
            </tbody>
          </table>
          <p>Look at C-031. The degree does not match, but the experience is strong. The AI must not reject this person. Sunita asks the quality manager if the degree rule is really needed. That is a human decision.</p>
          <p>Before you use any AI scores, a person must:</p>
          <ul class="lc-list">
            <li>Check that every quote really appears in the CV. AI can invent evidence.</li>
            <li>Read every "Not stated". The candidate may have used other words, such as "testing" instead of "quality checks".</li>
            <li>Ask two screeners to score the same 10 CVs. If they disagree a lot, make the rubric clearer.</li>
            <li>Use only AI tools your company has approved for candidate data. Follow your privacy rules under India's DPDP Act (Digital Personal Data Protection Act). Practise with made-up CVs.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Activity: use it or ignore it?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sunita is screening CVs for the Quality Inspector role. Sort each detail.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="use" data-label="Job-related: use it"></div>
              <div data-sorter-target="bucket" data-bucket="ignore" data-label="Proxy or not relevant: ignore it"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="use" data-why="Testing food samples is close to the daily work of a Quality Inspector.">Has tested food samples in a lab</li>
              <li data-bucket="ignore" data-why="College name is a proxy for money and background. Score the qualification and skills instead.">Studied at a well-known college</li>
              <li data-bucket="use" data-why="Inspectors check labels in Marathi, so reading it is a real job need.">Can read product labels in Marathi</li>
              <li data-bucket="ignore" data-why="Gaps often come from caring duties or illness. They do not show whether the person can do the job.">Has a two-year gap after 2021</li>
              <li data-bucket="ignore" data-why="An address can hint at community or income. Ask everyone about shift travel in the same way instead.">Lives in a particular area of the city</li>
              <li data-bucket="use" data-why="Food safety and hygiene training is directly useful in a food factory.">Has done food safety or hygiene training</li>
              <li data-bucket="ignore" data-why="Looks have nothing to do with inspection work. Remove photos before scoring.">The photo shows a smart appearance</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Build a fair rubric for a role, then test it on two made-up coded CVs. Change the role and job summary to match a job you hire for.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a fair-hiring assistant for an HR team. Help me screen CVs for the role of [Quality Inspector at a food factory].

        Step 1: From this job summary, list up to 3 must-have criteria and 3 nice-to-have criteria. Each must link to a real task in the job.
        Job summary: [Checks raw materials and packed products against quality standards, records results, reads labels in English and Marathi, works rotating shifts.]

        Step 2: Score the two made-up coded CVs below. For nice-to-haves use 0 = no evidence, 1 = some, 2 = clear. For must-haves use Yes / No / Not stated. Quote the exact CV words for each score. Do not guess.

        Rules: Do not use or comment on college name, career gaps, age, gender, address or writing style. Do not rank or reject anyone.

        CV C-101: [B.Sc Chemistry, 2019. Lab assistant at a spice unit for 14 months: tested moisture in samples. Break from 2021 to 2023. Reads Marathi, Hindi and English.]
        CV C-102: [Diploma in Food Technology. Internship on a biscuit packing line: weight and seal checks. Food hygiene training certificate.]

        Output: a criteria table, a score table with evidence quotes, then "Questions for a human reviewer".</pre>
            <ul class="ai-try-checks">
              <li>Is every criterion linked to a real task in the job summary?</li>
              <li>Does every quote really appear in the CV text?</li>
              <li>Does it write "Not stated" (for example, shifts for both CVs) instead of guessing?</li>
              <li>Does it ignore the 2021 to 2023 break, and avoid ranking or rejecting anyone?</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Fair screening has three parts. Decide what matters before you read CVs, hide what does not matter, and score everyone on the same evidence. AI can speed up the scoring. A person checks the evidence and makes every decision.
        </div>
      HTML
      starter_code: nil
    },
    7 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-hr">HR & Recruitment</div>
          <h1 class="lc-title">Accessible Hiring and Reasonable Adjustments</h1>
        </div>
        <p class="lc-lead">Many skilled people with disabilities never get a fair chance, because the hiring process itself blocks them. An online test may not work with a screen reader. An interview room may be up two flights of stairs. In this lesson, you will learn to find these barriers in each stage of hiring. You will learn to ask every candidate what they need, and to make reasonable adjustments. You will also see how AI can help you check your job materials, and what it cannot check.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 290" role="img" aria-label="Five hiring stages: job ad, apply, test, interview and joining. Under each is a common barrier and a simple fix. For example, a test with tiny print and a tight time limit is fixed with large print and extra time. At the bottom: ask every candidate what would help them take part fully.">
            <defs><marker id="fh7a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="10" y="16" width="130" height="40" rx="8" fill="#27274e" stroke="#8b5cf6"/><text x="75" y="41" font-weight="700">Job ad</text>
              <rect x="160" y="16" width="130" height="40" rx="8" fill="#27274e" stroke="#8b5cf6"/><text x="225" y="41" font-weight="700">Apply</text>
              <rect x="310" y="16" width="130" height="40" rx="8" fill="#27274e" stroke="#8b5cf6"/><text x="375" y="41" font-weight="700">Test</text>
              <rect x="460" y="16" width="130" height="40" rx="8" fill="#27274e" stroke="#8b5cf6"/><text x="525" y="41" font-weight="700">Interview</text>
              <rect x="610" y="16" width="130" height="40" rx="8" fill="#27274e" stroke="#8b5cf6"/><text x="675" y="41" font-weight="700">Joining</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#fh7a)">
                <line x1="142" y1="36" x2="156" y2="36"/><line x1="292" y1="36" x2="306" y2="36"/><line x1="442" y1="36" x2="456" y2="36"/><line x1="592" y1="36" x2="606" y2="36"/>
              </g>
              <g font-size="12">
                <rect x="10" y="76" width="130" height="70" rx="8" fill="#1f1f44" stroke="#f59e0b"/><text x="75" y="94" font-size="11" fill="#fcd34d">Barrier</text><text x="75" y="114">Text inside image,</text><text x="75" y="132">long jargon</text>
                <rect x="160" y="76" width="130" height="70" rx="8" fill="#1f1f44" stroke="#f59e0b"/><text x="225" y="94" font-size="11" fill="#fcd34d">Barrier</text><text x="225" y="114">Form times out,</text><text x="225" y="132">no phone option</text>
                <rect x="310" y="76" width="130" height="70" rx="8" fill="#1f1f44" stroke="#f59e0b"/><text x="375" y="94" font-size="11" fill="#fcd34d">Barrier</text><text x="375" y="114">Tiny print,</text><text x="375" y="132">tight time limit</text>
                <rect x="460" y="76" width="130" height="70" rx="8" fill="#1f1f44" stroke="#f59e0b"/><text x="525" y="94" font-size="11" fill="#fcd34d">Barrier</text><text x="525" y="114">2nd-floor room,</text><text x="525" y="132">no lift</text>
                <rect x="610" y="76" width="130" height="70" rx="8" fill="#1f1f44" stroke="#f59e0b"/><text x="675" y="94" font-size="11" fill="#fcd34d">Barrier</text><text x="675" y="114">Fire alarm is</text><text x="675" y="132">sound only</text>
                <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#fh7a)">
                  <line x1="75" y1="148" x2="75" y2="164"/><line x1="225" y1="148" x2="225" y2="164"/><line x1="375" y1="148" x2="375" y2="164"/><line x1="525" y1="148" x2="525" y2="164"/><line x1="675" y1="148" x2="675" y2="164"/>
                </g>
                <rect x="10" y="168" width="130" height="70" rx="8" fill="#1f1f44" stroke="#10b981"/><text x="75" y="186" font-size="11" fill="#6ee7b7">Fix</text><text x="75" y="206">Plain text,</text><text x="75" y="224">simple words</text>
                <rect x="160" y="168" width="130" height="70" rx="8" fill="#1f1f44" stroke="#10b981"/><text x="225" y="186" font-size="11" fill="#6ee7b7">Fix</text><text x="225" y="206">Email or phone</text><text x="225" y="224">option too</text>
                <rect x="310" y="168" width="130" height="70" rx="8" fill="#1f1f44" stroke="#10b981"/><text x="375" y="186" font-size="11" fill="#6ee7b7">Fix</text><text x="375" y="206">Large print,</text><text x="375" y="224">extra time</text>
                <rect x="460" y="168" width="130" height="70" rx="8" fill="#1f1f44" stroke="#10b981"/><text x="525" y="186" font-size="11" fill="#6ee7b7">Fix</text><text x="525" y="206">Ground-floor room</text><text x="525" y="224">or video call</text>
                <rect x="610" y="168" width="130" height="70" rx="8" fill="#1f1f44" stroke="#10b981"/><text x="675" y="186" font-size="11" fill="#6ee7b7">Fix</text><text x="675" y="206">Add flashing</text><text x="675" y="224">light alarms</text>
              </g>
              <text x="380" y="272" fill="#67e8f9">Ask every candidate: "What would help you take part fully?"</text>
            </g>
          </svg>
          <figcaption>Each stage of hiring can block someone. Most fixes are small and cheap, but you only find them if you look and ask.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Key words and the basic rules</h3>
          <p><strong>Disability</strong> covers much more than wheelchair use. India's Rights of Persons with Disabilities Act 2016 (RPwD Act) lists 21 kinds. They include low vision, hearing loss, locomotor disability, learning disabilities such as dyslexia, autism and mental illness. Many of these are not visible.</p>
          <p><strong>Reasonable accommodation</strong> is the Act's term. Many companies also say <strong>reasonable adjustment</strong>. It means necessary and suitable changes that let a person with a disability take part on an equal basis with others. The change must not place a disproportionate or undue burden on the employer.</p>
          <p>Some basics, described generally:</p>
          <ul class="lc-list">
            <li>The Act says that denying reasonable accommodation can count as discrimination.</li>
            <li>Government establishments must not discriminate against persons with disabilities in employment. They must also provide reasonable accommodation.</li>
            <li>Every establishment, including private companies, must publish an equal opportunity policy for persons with disabilities. The RPwD Rules 2017 say what it must contain. Larger employers must include more details.</li>
            <li>Other countries have similar ideas, such as the Americans with Disabilities Act in the US and the Equality Act 2010 in the UK.</li>
          </ul>
          <p>This is general education, not legal advice. Check the exact duties for your company with HR legal counsel.</p>
        </div>
        <div class="lc-card">
          <h3>Ask everyone, then adjust the format, not the standard</h3>
          <p>Do not guess who needs help. Put the same question in every invite. Ask about needs, never about a diagnosis:</p>
          <pre><code>Do you need any adjustments to take part in the test or interview?
        For example: extra time, large print, a sign language interpreter,
        a ground-floor room or questions in writing.
        Just tell us what would help. You do not need to share any medical details.</code></pre>
          <p>Here are examples from Sahyadri Foods' Quality Inspector hiring:</p>
          <table class="lc-table">
            <thead><tr><th>Stage</th><th>Possible barrier</th><th>Adjustment example</th></tr></thead>
            <tbody>
              <tr><td>Online application</td><td>The form times out, or does not work with a screen reader (software that reads the screen aloud).</td><td>Offer email or phone applications. Test the form with a screen reader.</td></tr>
              <tr><td>Written aptitude test (30 minutes)</td><td>Small print and a tight time limit for a candidate with low vision or dyslexia</td><td>Large print or a screen-reader version. Extra time, if speed is not the skill being tested.</td></tr>
              <tr><td>Practical label-check test</td><td>A candidate who is deaf cannot hear spoken instructions.</td><td>Written instructions, or a sign language interpreter</td></tr>
              <tr><td>Panel interview</td><td>The room is on the second floor, with no lift.</td><td>A ground-floor room or a video call with live captions</td></tr>
            </tbody>
          </table>
          <p>Remember the difference between the <em>skill</em> and the <em>format</em>. Spotting a wrong label is a real skill for a Quality Inspector. Reading tiny print on paper in 30 minutes is only a format. Sunita asks the quality manager which parts of each test are truly essential. She writes this down before any candidate asks.</p>
          <p>Keep adjustment requests private. Tell the panel or test supervisor only what they need, for example "C-044 has 45 minutes". Score the result with the same rubric as everyone else.</p>
        </div>
        <div class="lc-card">
          <h3>How AI can help, and what it cannot check</h3>
          <p>AI is useful for reviewing the words in your invites, tests and job ads. Here is a weak prompt:</p>
          <pre><code>Make this invite accessible.</code></pre>
          <p>The AI may only fix grammar. A better prompt says what to look for:</p>
          <pre><code>Review this interview invite for barriers that could affect
        candidates with disabilities. Look at: plain language, clear steps,
        timing, the venue, and whether we offer adjustments in a way that
        does not ask for medical details. List each barrier, then rewrite
        the invite in simple, friendly English.
        [paste invite text]</code></pre>
          <p>AI can only read the text. It cannot tell you if your form works with a screen reader, or if your building has a working lift. Test those yourself. For example, try the form with a free screen reader or the one built into your phone. Better still, ask people with disabilities or a disability inclusion group to review your process.</p>
          <p>Never paste a candidate's medical or disability details into an AI tool. Use made-up examples.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: handle an adjustment request</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">A Quality Inspector candidate asks for help with the written test. Put Sunita's steps in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Offer adjustments to every candidate in the test invite</li>
              <li data-order="2">Candidate C-044 asks for large print and more time</li>
              <li data-order="3">Talk with the candidate to agree what will really help</li>
              <li data-order="4">Check with the test owner that speed is not the skill being tested</li>
              <li data-order="5">Arrange a large-print paper and 15 extra minutes</li>
              <li data-order="6">Tell the test supervisor only what they need to know</li>
              <li data-order="7">Score with the same rubric as everyone, and store the request privately</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to find barriers in a sample interview invite and rewrite it. You can replace the invite with one of your own, after you remove all personal details.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an accessibility and inclusion adviser for an HR team in India. Review the interview invite below for [a Quality Inspector role at a food factory in Maharashtra].

        Invite:
        "[Dear candidate, report to the Admin Block, 2nd floor, at 9:00 a.m. sharp for a 30-minute written test, followed by a panel interview. Bring your original certificates. Late comers will not be allowed. Mobile phones are not allowed in the test hall.]"

        Tasks:
        1. List possible barriers for candidates with different disabilities (for example: low vision, hearing loss, wheelchair users, dyslexia, anxiety). Explain each barrier in one sentence.
        2. Rewrite the invite in simple, friendly English. Include a clear offer of adjustments that asks about needs, not medical details.
        3. List 5 adjustments the HR team should be ready to offer for this test and interview.
        4. List what a person must still check in real life, which you cannot check from the text.

        Keep the rewritten invite under 150 words.</pre>
            <ul class="ai-try-checks">
              <li>Does the new invite ask about needs, not about a diagnosis or medical condition?</li>
              <li>Does it notice that a phone ban can block people who use a phone as an assistive tool?</li>
              <li>Are the adjustments realistic, without promising things your company has not agreed to?</li>
              <li>Does it say that the venue, lift and online forms must be checked in person?</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Accessibility is part of fairness. Ask every candidate what they need, test the skill the job needs rather than the format, and keep personal details private. AI can review your words, but only people can check your buildings, forms and final decisions.
        </div>
      HTML
      starter_code: nil
    },
    8 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-hr">HR & Recruitment</div>
          <h1 class="lc-title">Fair Interviews</h1>
        </div>
        <p class="lc-lead">Interviews are where bias enters most easily. Two interviewers can meet the same candidate and reach opposite views. Often this is because of a shared hometown, a confident manner or a gut feeling. Sahyadri Foods is hiring 2 Shift Supervisors, and Sunita wants the interviews to be fair. In this lesson, you will learn to run a structured interview with a clear rubric and a mixed panel. You will also learn which questions you must never ask, and how AI can help you build an interview kit.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 270" role="img" aria-label="Before and after. An unstructured interview has different questions each time, chat about native place, scoring by gut feeling, one interviewer and group talk before scoring. A structured interview has the same questions in the same order, only job-related questions, a rubric with examples, a mixed panel of three, and scoring alone before discussion.">
            <defs><marker id="fh8a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <rect x="10" y="10" width="330" height="250" rx="12" fill="#1f1f44" stroke="#ec4899"/>
              <text x="175" y="40" text-anchor="middle" font-weight="700" fill="#f9a8d4">Unstructured interview</text>
              <g fill="#fca5a5" font-weight="700"><text x="30" y="80">✗</text><text x="30" y="118">✗</text><text x="30" y="156">✗</text><text x="30" y="194">✗</text><text x="30" y="232">✗</text></g>
              <text x="50" y="80">Different questions each time</text>
              <text x="50" y="118">Chat about native place</text>
              <text x="50" y="156">Score by gut feeling</text>
              <text x="50" y="194">One interviewer decides</text>
              <text x="50" y="232">Group talks before scoring</text>
              <line x1="346" y1="135" x2="412" y2="135" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#fh8a)"/>
              <text x="379" y="124" text-anchor="middle" font-size="12" fill="#9b99b8">fairer</text>
              <rect x="420" y="10" width="330" height="250" rx="12" fill="#1f1f44" stroke="#10b981"/>
              <text x="585" y="40" text-anchor="middle" font-weight="700" fill="#6ee7b7">Structured interview</text>
              <g fill="#6ee7b7" font-weight="700"><text x="440" y="80">✓</text><text x="440" y="118">✓</text><text x="440" y="156">✓</text><text x="440" y="194">✓</text><text x="440" y="232">✓</text></g>
              <text x="460" y="80">Same questions, same order</text>
              <text x="460" y="118">Only job-related questions</text>
              <text x="460" y="156">Rubric with 1, 3, 5 examples</text>
              <text x="460" y="194">Mixed panel of 3 people</text>
              <text x="460" y="232">Score alone, then discuss</text>
            </g>
          </svg>
          <figcaption>A structured interview does not remove judgement. It makes judgement consistent and easy to check.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>What a structured interview is</h3>
          <p>In a <strong>structured interview</strong>, every candidate for a role gets the same questions, in the same order, in about the same time. Every answer is scored with the same rubric. Research on hiring has long found that structured interviews predict job performance better than free-flowing chats. They also leave less room for bias.</p>
          <p>Use two main kinds of questions:</p>
          <ul class="lc-list">
            <li><strong>Behavioural questions</strong> ask about the past: "Tell me about a time when…"</li>
            <li><strong>Situational questions</strong> ask about a likely event: "What would you do if…"</li>
          </ul>
          <p>Here are four questions from Sunita's Shift Supervisor kit. Each one tests a real part of the job:</p>
          <table class="lc-table">
            <thead><tr><th>Question</th><th>Type</th><th>Skill it tests</th></tr></thead>
            <tbody>
              <tr><td>Tell me about a time you got a shift back on plan after a machine breakdown.</td><td>Behavioural</td><td>Planning under pressure</td></tr>
              <tr><td>A worker on your line keeps skipping the hand-wash step. What do you do?</td><td>Situational</td><td>Food safety and handling people</td></tr>
              <tr><td>Tell me about a time you trained a new worker. How did you check they had learned?</td><td>Behavioural</td><td>Training and coaching</td></tr>
              <tr><td>This role works rotating shifts, including nights. Can you work this schedule?</td><td>Same for all</td><td>A real job condition</td></tr>
            </tbody>
          </table>
          <p>Ask the shift question to every candidate, with the same words. Do not ask it only to women or only to parents.</p>
        </div>
        <div class="lc-card">
          <h3>Rubrics and a fair panel</h3>
          <p>A rubric with <strong>anchors</strong> (short examples of a weak, an acceptable and a strong answer) helps everyone score the same way. Here is the rubric for the hand-wash question:</p>
          <table class="lc-table">
            <thead><tr><th>Score</th><th>What the answer shows</th></tr></thead>
            <tbody>
              <tr><td>1 (weak)</td><td>Ignores it, or shouts at the worker in front of others. Does not mention the food safety risk.</td></tr>
              <tr><td>3 (acceptable)</td><td>Reminds the worker of the rule and reports it to the manager.</td></tr>
              <tr><td>5 (strong)</td><td>Stops the risk first. Asks why it happens, for example an empty soap dispenser. Explains the reason for the rule, records it, follows up and escalates if it repeats.</td></tr>
            </tbody>
          </table>
          <p>Sunita sets these panel rules:</p>
          <ul class="lc-list">
            <li><strong>Three people:</strong> HR, the production manager and a quality lead. Include people of different genders and backgrounds where you can.</li>
            <li><strong>Score alone first.</strong> Each person writes a score and notes before any discussion. Otherwise the most senior voice decides.</li>
            <li><strong>Discuss big gaps.</strong> If two scores differ by 2 or more, talk about the evidence, not feelings.</li>
            <li><strong>No "culture fit" score.</strong> It often means "like us". Score only the rubric.</li>
          </ul>
          <p>If you use an AI note-taker, tell the candidate first and follow your company's consent rules. Check the AI summary against your own notes. Never let a tool score a candidate's face, voice, tone or "confidence".</p>
        </div>
        <div class="lc-card">
          <h3>Questions you must not ask</h3>
          <p>Some questions have nothing to do with the job, and they are often used against women, minorities or people with disabilities. They can lead to discrimination complaints and break company policy.</p>
          <table class="lc-table">
            <thead><tr><th>Do not ask</th><th>Why</th><th>Ask instead (to everyone)</th></tr></thead>
            <tbody>
              <tr><td>"Are you married? Are you planning a family soon?"</td><td>Personal. Often used against women.</td><td>"This role works rotating shifts. Can you work this schedule?"</td></tr>
              <tr><td>"What is your caste or religion? Where is your native place?"</td><td>Not job-related. Opens the door to discrimination.</td><td>Nothing. Do not ask.</td></tr>
              <tr><td>"Do you have any disability or illness?"</td><td>A medical question, not a job question</td><td>"Can you do these tasks, with or without adjustments?" Offer adjustments to all.</td></tr>
              <tr><td>"Night shifts are hard for women. Can you manage?"</td><td>A stereotype. India's labour laws allow women to work night shifts with their consent and safety measures.</td><td>The same shift question for everyone</td></tr>
              <tr><td>"How old are you?"</td><td>Age does not show ability.</td><td>Only confirm a legal minimum age, if the job needs it.</td></tr>
            </tbody>
          </table>
          <p>Rules on night work and discrimination can differ by law and by state. This is general education, not legal advice. Check with HR legal counsel.</p>
          <p>AI can help you draft a kit fast. A weak prompt only asks for "interview questions for a shift supervisor". The AI then gives generic questions, such as "What is your biggest weakness". Give the AI the real tasks of the job and ask for rubrics too, as in the Try It below.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: fair, never or rephrase?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">A panel member suggests these questions for the Shift Supervisor interview. Sort them.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="fair" data-label="Fair to ask"></div>
              <div data-sorter-target="bucket" data-bucket="never" data-label="Never ask"></div>
              <div data-sorter-target="bucket" data-bucket="rephrase" data-label="Rephrase as a job question"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="fair" data-why="Training new workers is a real part of the job, and this is a behavioural question.">Tell me about a time you trained a new worker.</li>
              <li data-bucket="fair" data-why="It tests knowledge of a real safety step on the line.">A metal detector rejects a pack. What happens next?</li>
              <li data-bucket="never" data-why="Community has nothing to do with the job. There is no fair version of this question.">Which community do you belong to?</li>
              <li data-bucket="never" data-why="Family plans are personal and are often used against women.">Do you have small children at home?</li>
              <li data-bucket="rephrase" data-why="The job need is the shift pattern. Ask everyone: 'Can you work rotating shifts, including nights?'">Will your family allow you to work nights?</li>
              <li data-bucket="rephrase" data-why="Ask about the job tasks instead: 'Can you do these tasks, with or without adjustments?'">Do you have any health problems?</li>
              <li data-bucket="never" data-why="It reveals age, which does not show ability.">What year did you finish school?</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to draft a structured interview kit for a role. Change the role and tasks to match a job you hire for.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an interview design assistant who follows fair-hiring practice. Create a structured interview kit for the role of [Shift Supervisor at a food factory in Maharashtra].
        Main tasks of the job: [runs a production shift of 25 workers, meets output targets, enforces hygiene and safety rules, handles machine breakdowns, trains new workers].

        Give me:
        1. Six questions: three behavioural ("Tell me about a time...") and three situational ("What would you do if..."). Each question must test one task from the list above. Name the task.
        2. For each question, a rubric with a short example of a 1 (weak), 3 (acceptable) and 5 (strong) answer.
        3. One question about the shift pattern, worded the same for every candidate.
        4. A list of questions the panel must NOT ask (marriage, children, religion, caste, age, health), with a fair, job-related alternative where one exists.
        5. Three panel rules for scoring fairly.

        Use simple English. Do not include questions about personality, hobbies or "culture fit". The whole interview must fit in 45 minutes.</pre>
            <ul class="ai-try-checks">
              <li>Does each question link to a real task of the job?</li>
              <li>Do the rubric anchors describe actions, not personality or confidence?</li>
              <li>Is the shift question neutral and meant for every candidate?</li>
              <li>Are there no personal questions hidden in the kit?</li>
              <li>Can six questions really fit in 45 minutes?</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Fair interviews use the same job-related questions, the same rubric and independent scoring for every candidate. AI can draft the kit quickly. The panel must check it, use it the same way every time and own the final decision.
        </div>
      HTML
      starter_code: nil
    },
    9 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-hr">HR & Recruitment</div>
          <h1 class="lc-title">Checking Outcomes for Bias</h1>
        </div>
        <p class="lc-lead">Fair steps are a good start, but you must also check the results. A process can look fair and still remove one group more often than another. In this lesson, you will learn to calculate selection rates by group and to use the four-fifths ratio as a warning sign. You will also learn why small numbers need care, and what to do when you find a gap. The example is the made-up result of Sahyadri Foods' Quality Inspector hiring.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 290" role="img" aria-label="A bar chart of pass rates at three stages for men and women. CV screen: men 61.5 percent, women 64.6 percent, ratio 0.95. Practical test: men 45.0 percent, women 42.9 percent, ratio 0.95. Interview: men 25.9 percent, women 16.7 percent, ratio 0.64, below 0.8.">
            <defs><marker id="fh9a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="20" y="32" text-anchor="start" font-weight="700">Quality Inspector hiring: pass rate at each stage</text>
              <rect x="480" y="21" width="14" height="14" rx="2" fill="#3b82f6"/><text x="500" y="32" text-anchor="start">Men</text>
              <rect x="560" y="21" width="14" height="14" rx="2" fill="#ec4899"/><text x="580" y="32" text-anchor="start">Women</text>
              <line x1="40" y1="230" x2="740" y2="230" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#fh9a)"/>
              <rect x="95" y="95" width="60" height="135" fill="#3b82f6"/><text x="125" y="87">61.5%</text>
              <rect x="165" y="88" width="60" height="142" fill="#ec4899"/><text x="195" y="80">64.6%</text>
              <rect x="325" y="131" width="60" height="99" fill="#3b82f6"/><text x="355" y="123">45.0%</text>
              <rect x="395" y="136" width="60" height="94" fill="#ec4899"/><text x="425" y="128">42.9%</text>
              <rect x="555" y="173" width="60" height="57" fill="#3b82f6"/><text x="585" y="165">25.9%</text>
              <rect x="625" y="193" width="60" height="37" fill="#ec4899" stroke="#f59e0b" stroke-width="2"/><text x="655" y="185">16.7%</text>
              <text x="160" y="252">CV screen</text>
              <text x="390" y="252">Practical test</text>
              <text x="620" y="252">Interview</text>
              <text x="160" y="276" fill="#6ee7b7">ratio 0.95</text>
              <text x="390" y="276" fill="#6ee7b7">ratio 0.95</text>
              <text x="620" y="276" fill="#fcd34d">ratio 0.64: below 0.8</text>
            </g>
          </svg>
          <figcaption>Made-up data. The first two stages look similar for both groups. The gap appears at the interview, so that is where to look first.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Selection rate and the four-fifths ratio</h3>
          <p>The <strong>selection rate</strong> is the share of people in a group who were selected.</p>
          <pre><code>Selection rate = number selected ÷ number who applied (or entered the stage)</code></pre>
          <p>The <strong>impact ratio</strong> compares each group with the group that has the highest rate:</p>
          <pre><code>Impact ratio = a group's selection rate ÷ the highest group's selection rate</code></pre>
          <p>The <strong>four-fifths ratio</strong> idea comes from the US Uniform Guidelines on Employee Selection Procedures (1978). US agencies have long used it as a rule of thumb. In 2026, the US EEOC announced plans to withdraw these guidelines, but the idea is still widely used to spot gaps. If a group's rate is less than four-fifths (80%, or 0.8) of the highest rate, treat it as a warning sign. It is not a legal test in India, and it is not proof of discrimination. It simply tells you where to look.</p>
          <p>Here is the made-up overall result for the 20 Quality Inspector jobs. Candidates could choose to share their gender on an optional form. Only the HR analyst saw it, and it was never used in decisions.</p>
          <table class="lc-table">
            <thead><tr><th>Group</th><th>Applied</th><th>Hired</th><th>Selection rate</th><th>Impact ratio</th></tr></thead>
            <tbody>
              <tr><td>Men</td><td>195</td><td>14</td><td>14 ÷ 195 = 7.2%</td><td>1.00 (highest)</td></tr>
              <tr><td>Women</td><td>130</td><td>6</td><td>6 ÷ 130 = 4.6%</td><td>4.6 ÷ 7.2 = 0.64</td></tr>
              <tr><td><strong>Total</strong></td><td><strong>325</strong></td><td><strong>20</strong></td><td>6.2%</td><td></td></tr>
            </tbody>
          </table>
          <p>The ratio 0.64 is below 0.8, so Sunita looks closer. In a spreadsheet with Applied in column B and Hired in column C, use these formulas:</p>
          <pre><code>Selection rate (D2):  =C2/B2
        Impact ratio (E2):    =D2/MAX($D$2:$D$3)</code></pre>
          <p>Format column D as a percentage. Always recalculate numbers yourself, even when AI gives them to you.</p>
        </div>
        <div class="lc-card">
          <h3>Find the stage where the gap appears</h3>
          <p>An overall number does not tell you where the problem is. Check each stage separately:</p>
          <table class="lc-table">
            <thead><tr><th>Stage</th><th>Men: in → passed</th><th>Men rate</th><th>Women: in → passed</th><th>Women rate</th><th>Impact ratio</th></tr></thead>
            <tbody>
              <tr><td>CV screen (must-haves)</td><td>195 → 120</td><td>61.5%</td><td>130 → 84</td><td>64.6%</td><td>61.5 ÷ 64.6 = 0.95 (men lower)</td></tr>
              <tr><td>Practical test</td><td>120 → 54</td><td>45.0%</td><td>84 → 36</td><td>42.9%</td><td>42.9 ÷ 45.0 = 0.95</td></tr>
              <tr><td>Interview</td><td>54 → 14</td><td>25.9%</td><td>36 → 6</td><td>16.7%</td><td>16.7 ÷ 25.9 = 0.64</td></tr>
              <tr><td><strong>Total</strong></td><td colspan="2">325 applied, 204 took the test, 90 passed it, 20 hired</td><td colspan="3"></td></tr>
            </tbody>
          </table>
          <p>The CV screen and the practical test look similar for both groups. The gap appears at the interview. Possible causes to check:</p>
          <ul class="lc-list">
            <li>A question that is not really job-related</li>
            <li>Panel members who scored outside the rubric, or skipped it</li>
            <li>Different questions for different people, such as night-shift questions asked only to women</li>
            <li>A panel with no women, or with no training on the rubric</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Small numbers need care</h3>
          <p>Twenty hires is a small number. Suppose just one decision had gone the other way: 7 women and 13 men hired.</p>
          <pre><code>Women: 7 ÷ 130 = 5.4%     Men: 13 ÷ 195 = 6.7%     Ratio: 5.4 ÷ 6.7 = 0.81</code></pre>
          <p>One decision moves the ratio from 0.64 to 0.81, which is above 0.8. So with small numbers, the ratio alone cannot prove a problem or prove there is none. The US guidelines also say this: small differences can matter in large groups, and large differences may mean little in small groups.</p>
          <ul class="lc-list">
            <li>Look at several hiring rounds together, for example the whole year.</li>
            <li>Check the process evidence too: questions, rubric scores and panel notes.</li>
            <li>Ask an analyst to run a statistical test, such as Fisher's exact test, before you draw strong conclusions.</li>
            <li>For the 2 Shift Supervisor hires, a ratio means nothing. Review the process instead.</li>
            <li>Do not report a group with only a few people. It can reveal who they are.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>What to do when you find a gap</h3>
          <ol class="lc-list">
            <li>Check that the data is correct and complete.</li>
            <li>Find the stage where the gap appears.</li>
            <li>Look at the evidence at that stage: questions, scores by question, notes.</li>
            <li>Fix the process. For example, retrain the panel, reword a question or add a panel member.</li>
            <li>Record what you found and what you changed.</li>
            <li>Check again after the next hiring round.</li>
          </ol>
          <p>Fix the process, not the numbers. Do not change individual scores just to reach 0.8. This is general education, not legal advice. Talk to HR legal counsel before you act on a serious gap.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: Sunita checks the numbers</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="tool" data-label="Spreadsheet">Sunita exports stage counts from the applicant tracking system as totals by group. The export has no names or candidate details.</li>
              <li data-kind="user" data-label="Prompt">"Here are made-up totals by stage for two groups. Calculate the selection rate at each stage and the impact ratio. Show each calculation. Flag any ratio below 0.8."</li>
              <li data-kind="answer" data-label="AI">A table with rates for each stage. It flags the interview stage: 16.7% against 25.9%, a ratio of 0.64. It ends: "This proves the interview panel is biased against women."</li>
              <li data-kind="check" data-label="Recalculate">Sunita checks every rate with =C2/B2 in her sheet. The numbers match.</li>
              <li data-kind="warn" data-label="Mistake to catch">The last line is wrong. A ratio below 0.8 is a warning sign, not proof. With 20 hires, one decision changes the result.</li>
              <li data-kind="tool" data-label="Rubric scores">Sunita looks at the interview scores for each question, split by group.</li>
              <li data-kind="result" data-label="What she finds">Scores are similar on most questions. On the shift question, the notes show two panel members asked women extra questions about family and travel at night.</li>
              <li data-kind="check" data-label="Decision">Sunita retrains the panel, reads the shift question aloud in the same words to everyone, and adds a woman quality lead to the panel. She will check again next round.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to analyse a made-up stage-by-stage hiring table. Then recalculate its numbers in a spreadsheet.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an HR analytics assistant who helps teams check hiring outcomes for fairness. Use only the made-up totals below for [warehouse picker hiring at an online grocery company].

        Stage | Group A: in, passed | Group B: in, passed
        CV screen | [240, 96] | [160, 56]
        Skills test | [96, 60] | [56, 30]
        Interview | [60, 30] | [30, 10]

        Tasks:
        1. Calculate the selection rate for each group at each stage, and overall (hired divided by applied). Show each calculation.
        2. Calculate the impact ratio at each stage: the lower rate divided by the higher rate. Flag any ratio below 0.8.
        3. Say which stage needs a closer look first, and why.
        4. Small numbers: how many more Group B hires (with the same total hires) would move the overall ratio above 0.8? Explain why this means caution.
        5. List 5 questions HR should ask about that stage's process.
        6. Give the spreadsheet formulas to repeat these checks.

        Say clearly that a low ratio is a warning sign, not proof of discrimination, and that this is not legal advice.</pre>
            <ul class="ai-try-checks">
              <li>Recalculate every rate and ratio in a spreadsheet. Do they match?</li>
              <li>Does it find the stage with the lowest ratio correctly?</li>
              <li>Does it call the result a warning sign, not proof?</li>
              <li>Are its follow-up questions about the process, not about individual candidates?</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Numbers show you where to look. People find the cause and fix the process. Always check each stage, recalculate every number yourself, and be careful with small groups.
        </div>
      HTML
      starter_code: nil
    },
    10 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-hr">HR & Recruitment</div>
          <h1 class="lc-title">Auditing AI Hiring Tools</h1>
        </div>
        <p class="lc-lead">Many hiring tools now have AI features. They rank CVs, match candidates to jobs, score tests and summarise interviews. If a person is unfair, they affect a few candidates. If a tool is unfair, it can affect thousands of people, quietly. At LedgerLite Pvt Ltd, HR manager Farhan is looking at an AI tool that ranks CVs. Hiring manager Divya likes the speed. In this lesson, you will learn what to ask vendors and how to test a tool yourself. You will also learn what explainability means, and which records to keep.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 225" role="img" aria-label="An audit cycle with five steps: ask the vendor for evidence, test the tool with paired CVs and a pilot, go live with humans deciding, monitor rates by group, and re-audit yearly or when the tool changes. An arrow returns from re-audit to testing. Records are kept at every step.">
            <defs><marker id="fh10a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="10" y="30" width="130" height="70" rx="10" fill="#1f1f44" stroke="#3b82f6"/><text x="75" y="60">1. Ask vendor</text><text x="75" y="82" font-size="11" fill="#9b99b8">ask for evidence</text>
              <rect x="160" y="30" width="130" height="70" rx="10" fill="#1f1f44" stroke="#8b5cf6"/><text x="225" y="60">2. Test it</text><text x="225" y="82" font-size="11" fill="#9b99b8">paired CVs, pilot</text>
              <rect x="310" y="30" width="130" height="70" rx="10" fill="#1f1f44" stroke="#10b981"/><text x="375" y="60">3. Go live</text><text x="375" y="82" font-size="11" fill="#9b99b8">humans decide</text>
              <rect x="460" y="30" width="130" height="70" rx="10" fill="#1f1f44" stroke="#22d3ee"/><text x="525" y="60">4. Monitor</text><text x="525" y="82" font-size="11" fill="#9b99b8">rates by group</text>
              <rect x="610" y="30" width="130" height="70" rx="10" fill="#1f1f44" stroke="#f59e0b"/><text x="675" y="60">5. Re-audit</text><text x="675" y="82" font-size="11" fill="#9b99b8">yearly or on change</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#fh10a)">
                <line x1="142" y1="65" x2="156" y2="65"/><line x1="292" y1="65" x2="306" y2="65"/><line x1="442" y1="65" x2="456" y2="65"/><line x1="592" y1="65" x2="606" y2="65"/>
                <path d="M675,102 L675,145 L225,145 L225,106"/>
              </g>
              <text x="450" y="166" font-size="12" fill="#9b99b8">Model changed or gap found? Test again.</text>
              <rect x="120" y="184" width="520" height="30" rx="8" fill="#27274e" stroke="#ec4899"/>
              <text x="380" y="204" font-size="12">Keep records at every step: version, settings, results, overrides</text>
            </g>
          </svg>
          <figcaption>An audit is not a one-time check. Test before you buy, keep humans in charge, and test again whenever the tool or the results change.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Questions to ask vendors</h3>
          <p>A <strong>vendor</strong> is the company that sells the tool. Sales teams often say "our AI is unbiased". Ask for evidence instead. Here is Farhan's checklist:</p>
          <table class="lc-table">
            <thead><tr><th>Area</th><th>Question</th><th>Good sign</th><th>Red flag</th></tr></thead>
            <tbody>
              <tr><td>Purpose</td><td>What exactly does the AI score or decide?</td><td>A clear, narrow task, such as matching CVs to listed skills</td><td>"It finds the best talent."</td></tr>
              <tr><td>Inputs</td><td>Which data does it use? Does it read photos, names, addresses, college names or gaps?</td><td>A clear list, and you can switch off proxies</td><td>"It uses everything in the CV."</td></tr>
              <tr><td>Bias audit</td><td>Can we see your latest bias audit, with selection rates and impact ratios by group? Who did it?</td><td>Recent, done by an independent auditor, method explained</td><td>"It is confidential" or "Our data is so large it cannot be biased."</td></tr>
              <tr><td>Explainability</td><td>Can a recruiter see why a candidate got a score?</td><td>Reasons linked to the job criteria</td><td>"The score is proprietary."</td></tr>
              <tr><td>Human control</td><td>Can we review and override every result? Are overrides logged?</td><td>Yes, and nobody is rejected automatically</td><td>Automatic rejection below a cut-off score</td></tr>
              <tr><td>Video and voice</td><td>Does it judge facial expressions, tone of voice or personality?</td><td>No</td><td>Yes. These claims are not reliable, and the EU AI Act bans emotion recognition at work, with narrow exceptions.</td></tr>
              <tr><td>Data</td><td>Where is candidate data stored? How long is it kept? Is it used to train your models?</td><td>Clear answers in the contract</td><td>Vague answers</td></tr>
              <tr><td>Changes</td><td>Will you tell us before the model changes?</td><td>Yes, written in the contract</td><td>No promise</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Test the tool yourself</h3>
          <p>Do not rely only on the vendor's audit. Run your own checks before you go live.</p>
          <p><strong>1. A paired CV test.</strong> Make pairs of made-up CVs that are the same except for one detail. Run both through the tool. A fair tool should give both CVs about the same score. Here are Farhan's made-up results for an Accounts Executive role:</p>
          <table class="lc-table">
            <thead><tr><th>Pair</th><th>The only change</th><th>Score A</th><th>Score B</th><th>Result</th></tr></thead>
            <tbody>
              <tr><td>1</td><td>Name: Arjun vs Ayesha</td><td>78</td><td>78</td><td>No change</td></tr>
              <tr><td>2</td><td>Well-known college vs state college</td><td>84</td><td>71</td><td>Gap: college is a proxy</td></tr>
              <tr><td>3</td><td>No gap vs a two-year gap</td><td>80</td><td>62</td><td>Gap: punishes career breaks</td></tr>
              <tr><td>4</td><td>Address: wealthy area vs poorer area</td><td>75</td><td>75</td><td>No change</td></tr>
            </tbody>
          </table>
          <p><strong>2. A pilot.</strong> For one hiring round, run the tool next to your normal human scoring. Do not use the tool's output for decisions yet. Then compare the tool's shortlist rates by group, using the four-fifths ratio idea. Also check how often the tool and your rubric agree.</p>
          <p>Use made-up CVs, or data you are allowed to use under your privacy policy and India's DPDP Act. Ask your legal team first.</p>
        </div>
        <div class="lc-card">
          <h3>Explainability and records</h3>
          <p><strong>Explainability</strong> means you can say in plain words why the tool gave a result. For example: "Scored 3 of 5 on the Tally skill: the CV lists Tally but no GST return work." If nobody can explain a score, nobody can check it is fair. A candidate cannot challenge it either.</p>
          <p>Keep an <strong>audit log</strong> for each tool:</p>
          <ul class="lc-list">
            <li>Tool name, version and settings, and the jobs it was used for</li>
            <li>Vendor answers and audit reports</li>
            <li>Your paired CV test and pilot results</li>
            <li>Every human override, with a short reason</li>
            <li>Rates by group for each hiring round, and what you changed</li>
          </ul>
          <p>Laws are starting to require this kind of work. Some examples, described generally:</p>
          <ul class="lc-list">
            <li><strong>New York City Local Law 144</strong> requires an independent bias audit, done within the past year, for some automated hiring tools. Employers must publish a summary and tell candidates.</li>
            <li><strong>The EU AI Act</strong> treats AI used in hiring as high-risk. A 2026 change moved the main duties for these systems to December 2027.</li>
            <li><strong>India</strong> has no separate law for AI hiring tools at the time of writing. The DPDP Act and anti-discrimination laws still apply.</li>
          </ul>
          <p>Rules change often. This is general education, not legal advice. Check the current rules with HR legal counsel.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: Farhan audits a CV-ranking tool</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Prompt">"Turn this checklist into 10 clear questions for a sales call with an AI CV-ranking vendor. Group them by purpose, inputs, bias audit, explainability, human control and data."</li>
              <li data-kind="answer" data-label="AI">A grouped list of 10 questions. Farhan removes one about price and adds: "Will you tell us before the model changes?"</li>
              <li data-kind="tool" data-label="Vendor call">Farhan asks for the latest bias audit.</li>
              <li data-kind="result" data-label="Vendor says">"Our model learned from millions of CVs, so it is fair. The audit report is confidential."</li>
              <li data-kind="warn" data-label="Red flag">A large amount of data does not make a tool fair. Old hiring data can carry old bias. Farhan asks for an audit summary, even under a confidentiality agreement.</li>
              <li data-kind="tool" data-label="Paired CV test">Farhan and Divya run 4 pairs of made-up CVs through a free trial.</li>
              <li data-kind="result" data-label="Results">Name and address changes make no difference. A two-year gap drops the score from 80 to 62. A state college drops it from 84 to 71.</li>
              <li data-kind="check" data-label="Decision">They do not buy yet. They ask the vendor to turn off the gap and college signals, then plan to test again. Farhan records everything in the audit log.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to review a made-up vendor's answers, flag red flags and plan your own test.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an adviser who helps HR teams check AI hiring tools for fairness. I am the HR manager of [a 120-person software company in Karnataka]. We may buy [an AI tool that scores and ranks CVs]. Here are the vendor's answers:

        1. What does it score? "It finds the best-fit talent using advanced AI."
        2. Inputs? "The full CV, including photo and education history."
        3. Bias audit? "Our model learned from millions of CVs, so it is fair. The audit is confidential."
        4. Why did a candidate get a score? "Scores are proprietary."
        5. Human override? "Yes, but candidates below 40 are rejected automatically."
        6. Data? "Stored securely in the cloud. We may use it to improve our models."

        Tasks:
        A. For each answer, say: good sign, unclear or red flag. Explain why in one sentence.
        B. Write one follow-up question for each unclear or red-flag answer.
        C. Design a paired CV test: 4 pairs of made-up CVs, each pair differing in only one detail.
        D. List what we should put in the contract and in our audit log.

        Use simple English. Say that this is not legal advice.</pre>
            <ul class="ai-try-checks">
              <li>Does it flag photo use and automatic rejection as red flags?</li>
              <li>Do the follow-up questions ask for evidence, such as rates by group and who did the audit?</li>
              <li>Does each CV pair differ in only one detail?</li>
              <li>Does it cover data use for training and model changes in the contract list?</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Never accept "our AI is fair" as an answer. Ask for evidence, test the tool yourself with paired CVs and a pilot, keep people in control of every decision, and keep records. Audit again whenever the tool or the results change.
        </div>
      HTML
      starter_code: nil
    },
    11 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-hr">HR & Recruitment</div>
          <h1 class="lc-title">What AI Must Not Do in Hiring</h1>
        </div>
        <p class="lc-lead">Some AI hiring tools promise things that no tool can do well. They say they can read emotions from a video, spot lies from a voice or find a personality from a face. Others dig through a candidate's social media. In this lesson you will learn which uses are red lines, which need great care, and which are safe helpers. You will also learn how to say "no" to a vendor politely and clearly. We follow Sunita, the HR head at <strong>Sahyadri Foods Ltd</strong>, a made-up food factory in Maharashtra. She is hiring 20 Quality Inspectors and 2 Shift Supervisors.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 290" role="img" aria-label="Three columns of AI uses in hiring. Do not use: emotion reading from video, lie or honesty scores, personality from face or voice, secret social media digging. Only with care: public profile checks, game-based tests, scoring interview transcripts, chatbot screening questions. OK as a helper: drafting job posts, scheduling interviews, summarising notes, checking CVs for must-haves. All lead to one rule: AI may draft, sort and flag, and people decide.">
            <defs><marker id="fh11a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12" fill="#e2e0f0" text-anchor="middle">
              <rect x="10" y="10" width="236" height="200" rx="12" fill="#1f1f44" stroke="#ec4899"/>
              <text x="128" y="36" font-size="13" font-weight="700" fill="#f9a8d4">Do not use</text>
              <text x="128" y="54" font-size="11" fill="#9b99b8">no sound science behind it</text>
              <rect x="22" y="66" width="212" height="28" rx="6" fill="#27274e"/><text x="128" y="85">Emotion reading from video</text>
              <rect x="22" y="100" width="212" height="28" rx="6" fill="#27274e"/><text x="128" y="119">Lie or honesty scores</text>
              <rect x="22" y="134" width="212" height="28" rx="6" fill="#27274e"/><text x="128" y="153">Personality from face/voice</text>
              <rect x="22" y="168" width="212" height="28" rx="6" fill="#27274e"/><text x="128" y="187">Secret social media digging</text>
              <rect x="262" y="10" width="236" height="200" rx="12" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="380" y="36" font-size="13" font-weight="700" fill="#fcd34d">Only with care</text>
              <text x="380" y="54" font-size="11" fill="#9b99b8">clear rules and a person</text>
              <rect x="274" y="66" width="212" height="28" rx="6" fill="#27274e"/><text x="380" y="85">Public profile checks</text>
              <rect x="274" y="100" width="212" height="28" rx="6" fill="#27274e"/><text x="380" y="119">Game-based ability tests</text>
              <rect x="274" y="134" width="212" height="28" rx="6" fill="#27274e"/><text x="380" y="153">Scoring interview transcripts</text>
              <rect x="274" y="168" width="212" height="28" rx="6" fill="#27274e"/><text x="380" y="187">Chatbot screening questions</text>
              <rect x="514" y="10" width="236" height="200" rx="12" fill="#1f1f44" stroke="#10b981"/>
              <text x="632" y="36" font-size="13" font-weight="700" fill="#6ee7b7">OK as a helper</text>
              <text x="632" y="54" font-size="11" fill="#9b99b8">a person checks and decides</text>
              <rect x="526" y="66" width="212" height="28" rx="6" fill="#27274e"/><text x="632" y="85">Drafting job posts</text>
              <rect x="526" y="100" width="212" height="28" rx="6" fill="#27274e"/><text x="632" y="119">Scheduling interviews</text>
              <rect x="526" y="134" width="212" height="28" rx="6" fill="#27274e"/><text x="632" y="153">Summarising notes for review</text>
              <rect x="526" y="168" width="212" height="28" rx="6" fill="#27274e"/><text x="632" y="187">Checking CVs for must-haves</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#fh11a)">
                <line x1="128" y1="212" x2="128" y2="238"/>
                <line x1="380" y1="212" x2="380" y2="238"/>
                <line x1="632" y1="212" x2="632" y2="238"/>
              </g>
              <rect x="10" y="242" width="740" height="38" rx="8" fill="#27274e" stroke="#8b5cf6"/>
              <text x="380" y="266">AI may draft, sort and flag. People decide. No guessing a person's inner mind.</text>
            </g>
          </svg>
          <figcaption>Sort every AI feature into one of three groups before you switch it on. Anything that claims to read a person's mind is a red line.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Claims you should not believe</h3>
          <p>Some vendors (companies that sell a tool) make big claims in their sales decks. Here are four common ones, and why they fail.</p>
          <table class="lc-table">
            <thead><tr><th>The claim</th><th>Why it fails</th><th>Do this instead</th></tr></thead>
            <tbody>
              <tr><td>"Our AI reads emotions, such as nervousness or enthusiasm, from a video interview."</td><td>People show feelings in different ways. Culture, disability, tiredness, lighting and camera quality all change the face. A nervous face does not mean a weak worker.</td><td>Ask the same job-related questions to everyone. Trained people score the <em>content</em> of the answers.</td></tr>
              <tr><td>"Our AI detects lies or gives an honesty score from the voice."</td><td>There is no reliable science that finds lies from a voice or a face. Even older lie detector machines are not reliable.</td><td>Check facts: certificates, past employers and a practical test.</td></tr>
              <tr><td>"Our AI finds personality from the voice or face."</td><td>Voice pitch, speed and accent are linked to gender, region, age and disability. A candidate who stammers may be scored lower for no job reason.</td><td>If you need a personality test, use a proven, job-related test with the candidate's consent.</td></tr>
              <tr><td>"Our AI predicts culture fit."</td><td>It often learns to prefer people like your current staff. This is affinity bias (liking people who are like us) at machine speed.</td><td>Write down the real behaviours the job needs. Ask about them in a structured interview.</td></tr>
            </tbody>
          </table>
          <p>The law is also moving. For example, the EU AI Act has banned emotion recognition at work since February 2025, with narrow medical and safety exceptions. The laws lesson later in this course explains more. This is general education, not legal advice.</p>
        </div>
        <div class="lc-card">
          <h3>Social media snooping</h3>
          <p>A candidate's social media can show things you must never use in a hiring decision. Examples are religion, caste, marriage, pregnancy, health, politics and friends. Once you have seen it, you cannot forget it. It can bias you without you noticing.</p>
          <ul class="lc-list">
            <li><strong>Do not</strong> use AI tools to search for, collect or profile candidates' personal social media.</li>
            <li><strong>Do not</strong> ask for passwords, friend requests or access to private accounts.</li>
            <li><strong>If your policy allows a check</strong>, keep it narrow. Look only at public, professional information that the job needs, such as a portfolio for a design role.</li>
            <li>Tell candidates before you check. Do the same check for every candidate at the same stage.</li>
            <li>Ask someone outside the interview panel to do it. That person passes on only job-related facts.</li>
            <li>Write down what you checked and why.</li>
          </ul>
          <p>Personal data from social media is still personal data. In India, the DPDP Act (Digital Personal Data Protection Act, 2023) expects a clear purpose and notice when you collect it. Check with your HR legal counsel.</p>
        </div>
        <div class="lc-card">
          <h3>Worked example: Sunita reviews a vendor pitch</h3>
          <p>A vendor offers Sahyadri Foods a made-up video interview tool called "HireSense Pro". It gives every candidate a "Confidence Score", an "Integrity Score" from voice stress and a "Culture Fit" score. It can also scan social media for "red flags". The sales deck says it will "remove human bias".</p>
          <p>A weak prompt only asks for an opinion:</p>
          <pre><code>Is HireSense Pro a good tool for hiring?</code></pre>
          <p>The AI does not know the tool, so it may guess or just repeat the sales claims. A better prompt gives the claims and asks for a structured check:</p>
          <pre><code>You are an HR fairness adviser. Below are 4 claims from a vendor's
        sales deck for a video interview tool. For each claim, say:
        red line / needs care / acceptable, with one plain reason.
        Then list 6 evidence questions I should ask the vendor.
        Do not invent studies or laws. Say "check with legal counsel"
        where the law may apply.
        Claims: [paste the 4 claims]</code></pre>
          <p>Sunita then made these decisions herself:</p>
          <table class="lc-table">
            <thead><tr><th>Feature</th><th>Sunita's decision</th></tr></thead>
            <tbody>
              <tr><td>Confidence Score and Integrity Score</td><td>Not used. She asks the vendor in writing to switch them off and to confirm that no such scores are stored.</td></tr>
              <tr><td>Culture Fit score</td><td>Not used. The interview rubric covers real job behaviours instead.</td></tr>
              <tr><td>Social media scan</td><td>Not used. It collects data the job does not need.</td></tr>
              <tr><td>Interview scheduling and reminders</td><td>Used. It saves time and makes no judgement about people.</td></tr>
            </tbody>
          </table>
          <p>She also checks one more thing: can the features be fully switched off? A hidden score can still leak into reports that managers see.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: red line, care or helper?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each AI use for hiring at Sahyadri Foods into the right group.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="no" data-label="Do not use"></div>
              <div data-sorter-target="bucket" data-bucket="care" data-label="Only with care"></div>
              <div data-sorter-target="bucket" data-bucket="ok" data-label="OK as a helper"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="no" data-why="No tool can reliably read honesty from a voice. It can also punish accents and speech conditions.">A tool that gives each candidate an honesty score from voice stress</li>
              <li data-bucket="no" data-why="Facial expressions do not reliably show feelings or job skill. The EU AI Act also bans emotion recognition at work.">A tool that rates how enthusiastic a candidate looks on video</li>
              <li data-bucket="no" data-why="This collects private details such as religion or marriage that must not affect hiring.">An AI that searches candidates' personal Instagram and Facebook accounts</li>
              <li data-bucket="care" data-why="It can help if every candidate gets the same questions and a person reads the answers. It must not reject people on its own.">A chatbot that asks every applicant the same 5 job questions</li>
              <li data-bucket="care" data-why="Transcripts can help, but speech-to-text makes more mistakes with some accents. A person must check the scores against the rubric.">AI that suggests rubric scores from interview transcripts</li>
              <li data-bucket="ok" data-why="It saves time and makes no judgement about the person. HR still checks the times.">AI that sends interview slots and reminders to candidates</li>
              <li data-bucket="ok" data-why="A person edits and approves the draft before it goes live.">AI that drafts a first version of the Quality Inspector job post</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Use this prompt to check a vendor's claims before your company buys or switches on an AI hiring feature. The sample claims are made up.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an HR fairness adviser. My company, [Sahyadri Foods Ltd, a food factory in Maharashtra], is hiring [20 Quality Inspectors]. A vendor sent us these claims about their AI interview tool:

        1. [Our AI reads each candidate's confidence and enthusiasm from video.]
        2. [It gives an Integrity Score based on voice stress.]
        3. [It predicts culture fit by comparing candidates with our top staff.]
        4. [It scans public social media for red flags.]
        5. [It schedules interviews and sends reminders.]

        Please do three things:
        1. Make a table: claim | red line / needs care / acceptable | one plain reason | what we should do instead.
        2. Write 6 questions to ask the vendor for evidence (for example, bias audit results, how to switch features off, what data is stored).
        3. Draft a short, polite email (under 150 words) telling the vendor which features we will not use and why.

        Rules: use simple English. Do not invent studies, statistics or laws. Where a law may apply, write "check with our HR legal counsel". This is not legal advice.</pre>
            <ul class="ai-try-checks">
              <li>Emotion, honesty and personality claims are marked as red lines, with a clear reason</li>
              <li>No made-up studies, numbers or law sections appear in the answer</li>
              <li>The vendor questions ask for real evidence, such as audit results and data storage</li>
              <li>The email is polite, short and names each feature you will not use</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> If a tool claims to read a person's feelings, honesty or personality from their face, voice or social media, do not use it. Use AI for work that people can check, such as drafts, schedules and summaries. People make the hiring decision.
        </div>
      HTML
      starter_code: nil
    },
    12 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-hr">HR & Recruitment</div>
          <h1 class="lc-title">Laws and Rules on Fair Hiring</h1>
        </div>
        <p class="lc-lead">Fair hiring is not only good practice. In many places it is also the law. When you use AI, the same laws still apply, and some new AI rules are added. In this lesson you will get a simple map of the main rules in India, the United States and the European Union, with their current dates. You will learn what each rule means for your hiring steps. <strong>This lesson is general education, not legal advice.</strong> Laws change often. Always check with your HR legal counsel before you decide.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="Three panels. India: the Code on Wages 2019 (in force since November 2025) covers equal pay and no sex bias in hiring; the RPwD Act 2016 covers access and reasonable adjustments; the DPDP Act and Rules 2025 cover candidate data, fully in force by May 2027. United States: Title VII, ADA and ADEA still apply when AI is used; EEOC AI guidance was removed in January 2025; NYC Local Law 144 needs a bias audit and a 10-day notice. European Union: the AI Act treats hiring AI as high-risk; emotion recognition at work banned since February 2025; high-risk duties apply from 2 December 2027. All three lead to one note: not legal advice, check with HR legal counsel.">
            <defs><marker id="fh12a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12" fill="#e2e0f0" text-anchor="middle">
              <rect x="10" y="10" width="236" height="206" rx="12" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="128" y="36" font-size="13" font-weight="700" fill="#fcd34d">India</text>
              <text x="128" y="66" font-weight="700">Code on Wages 2019</text>
              <text x="128" y="83" font-size="11" fill="#9b99b8">equal pay, no sex bias in hiring</text>
              <text x="128" y="118" font-weight="700">RPwD Act 2016</text>
              <text x="128" y="135" font-size="11" fill="#9b99b8">access and reasonable adjustments</text>
              <text x="128" y="170" font-weight="700">DPDP Act + Rules 2025</text>
              <text x="128" y="187" font-size="11" fill="#9b99b8">candidate data; full by May 2027</text>
              <rect x="262" y="10" width="236" height="206" rx="12" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="380" y="36" font-size="13" font-weight="700" fill="#93c5fd">United States</text>
              <text x="380" y="66" font-weight="700">Title VII, ADA, ADEA</text>
              <text x="380" y="83" font-size="11" fill="#9b99b8">still apply when AI is used</text>
              <text x="380" y="118" font-weight="700">EEOC AI guidance</text>
              <text x="380" y="135" font-size="11" fill="#9b99b8">removed in January 2025</text>
              <text x="380" y="170" font-weight="700">NYC Local Law 144</text>
              <text x="380" y="187" font-size="11" fill="#9b99b8">bias audit + 10-day notice</text>
              <rect x="514" y="10" width="236" height="206" rx="12" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="632" y="36" font-size="13" font-weight="700" fill="#c4b5fd">European Union</text>
              <text x="632" y="66" font-weight="700">AI Act: hiring AI</text>
              <text x="632" y="83" font-size="11" fill="#9b99b8">is high-risk (Annex III)</text>
              <text x="632" y="118" font-weight="700">Emotion recognition</text>
              <text x="632" y="135" font-size="11" fill="#9b99b8">at work banned since Feb 2025</text>
              <text x="632" y="170" font-weight="700">High-risk duties</text>
              <text x="632" y="187" font-size="11" fill="#9b99b8">apply from 2 Dec 2027</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#fh12a)">
                <line x1="128" y1="218" x2="128" y2="246"/>
                <line x1="380" y1="218" x2="380" y2="246"/>
                <line x1="632" y1="218" x2="632" y2="246"/>
              </g>
              <rect x="10" y="250" width="740" height="40" rx="8" fill="#27274e" stroke="#ec4899"/>
              <text x="380" y="275">Not legal advice. Laws and dates change. Check with your HR legal counsel.</text>
            </g>
          </svg>
          <figcaption>A simple map of the main rules, as of September 2026. The rules for your hiring depend on where the job and the candidates are.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>India: equal pay, disability and data</h3>
          <p>India has no law written only for AI in hiring yet. But general laws apply to every hiring step, with or without AI.</p>
          <table class="lc-table">
            <thead><tr><th>Law</th><th>What it says, in simple words</th><th>What it means when you use AI</th></tr></thead>
            <tbody>
              <tr><td><strong>Code on Wages, 2019</strong> (in force from 21 November 2025, with the other Labour Codes)</td><td>It replaced the Equal Remuneration Act, 1976. Employers must not discriminate on gender in wages for the same or similar work. They must not discriminate on sex when recruiting for such work. A narrow exception applies where a law restricts women's work.</td><td>Check that job posts and AI screening rules do not filter by gender. Compare offer salaries by gender for the same role.</td></tr>
              <tr><td><strong>Rights of Persons with Disabilities (RPwD) Act, 2016</strong></td><td>It supports equal opportunity for persons with disabilities. It defines reasonable accommodation: changes that let a disabled person take part equally. Government employers must not discriminate in jobs. Every establishment must publish an equal opportunity policy.</td><td>Online tests, chatbots and video tools must be accessible. Offer another way to apply or be tested.</td></tr>
              <tr><td><strong>DPDP Act, 2023 and DPDP Rules, 2025</strong> (Rules notified in November 2025; most duties apply from 13 May 2027)</td><td>You need a lawful reason to use personal data, usually consent after a clear notice. Collect only what you need and keep it safe. Delete it when the purpose is over. People can ask to see and correct their data.</td><td>Tell candidates what data you collect, why and who handles it, including any AI vendor. Do not keep rejected CVs forever.</td></tr>
            </tbody>
          </table>
          <p>Other laws matter too. The Transgender Persons (Protection of Rights) Act, 2019 bans discrimination in employment. Maternity benefit rules (now in the Code on Social Security, 2020) protect women during pregnancy and maternity leave. Rejecting a woman because she is, or may become, pregnant is unfair and can be a legal risk.</p>
        </div>
        <div class="lc-card">
          <h3>United States: federal rules and New York City's Local Law 144</h3>
          <p>The EEOC (Equal Employment Opportunity Commission) is the US agency for job discrimination. It published AI guidance in 2022 and 2023. It removed those pages in January 2025. In April 2025, an executive order told federal agencies to step back from "disparate impact" cases. Disparate impact means a rule that looks neutral but harms one group more. In 2026, the EEOC announced plans to withdraw the 1978 guidelines where the four-fifths rule comes from. Check whether this has happened.</p>
          <p>But the main laws have not changed. Title VII (race, colour, religion, sex and national origin), the ADA (disability) and the ADEA (age 40 and over) still apply when AI is used. People can still bring their own cases. Some states now have their own AI hiring rules. For example, since 1 January 2026, an Illinois law says employers must tell applicants and workers when AI is used in job decisions. It also bans AI use that discriminates, including using zip codes as a stand-in for a protected group.</p>
          <p><strong>New York City Local Law 144</strong> covers an AEDT (automated employment decision tool). This is a computer tool that scores, sorts or recommends candidates and gives real weight to the decision. For jobs in New York City, the employer must:</p>
          <ul class="lc-list">
            <li>get an independent bias audit of the tool no more than one year before using it;</li>
            <li>publish a summary of the audit results on its website;</li>
            <li>tell candidates at least 10 business days before the tool is used, and explain how to ask for another process or an accommodation.</li>
          </ul>
          <p>The audit reports an <strong>impact ratio</strong>: one group's selection rate divided by the selection rate of the most-selected group. Example: a tool passes 60 of 150 women (40%) and 100 of 200 men (50%). The impact ratio for women is 40% ÷ 50% = 0.8. In December 2025, a New York State audit found the city's enforcement weak. The city agreed to improve it, so expect closer checks.</p>
        </div>
        <div class="lc-card">
          <h3>European Union: the AI Act</h3>
          <p>The EU AI Act groups AI uses by risk. It lists AI for employment as <strong>high-risk</strong>. This includes AI that targets job ads, filters applications, evaluates candidates, decides promotions or dismissals, gives out tasks or monitors performance. It can apply to companies outside the EU. For example, it can apply if LedgerLite Pvt Ltd hires a developer in Germany with an AI tool.</p>
          <table class="lc-table">
            <thead><tr><th>Date</th><th>What happens</th></tr></thead>
            <tbody>
              <tr><td>1 August 2024</td><td>The AI Act came into force.</td></tr>
              <tr><td>2 February 2025</td><td>Bans started. They include emotion recognition at work and in education, except for medical or safety reasons.</td></tr>
              <tr><td>27 July 2026</td><td>The "Digital Omnibus on AI" (Regulation (EU) 2026/1744) came into force. It moved the start date for high-risk employment AI.</td></tr>
              <tr><td>2 December 2027</td><td>High-risk duties for employment AI apply (moved from 2 August 2026).</td></tr>
            </tbody>
          </table>
          <p>For high-risk AI, an employer that uses the tool must follow the vendor's instructions for use. Trained people must oversee it. The employer must watch for problems and keep the tool's logs. It must tell workers and their representatives before using such a tool at work. People must also be told when such a tool helps make decisions about them. Dates can change again, so check the current official text.</p>
        </div>
        <div class="lc-card">
          <h3>Use AI to prepare questions, not to give legal answers</h3>
          <p>AI can help you list the rules to check and the questions to ask. It cannot replace a lawyer. It may also invent section numbers or old dates.</p>
          <pre><code>Weak:   Is our AI hiring process legal?

        Better: List the laws that may apply when a food factory in
                Maharashtra uses an AI tool to rank CVs. For each law,
                give its name, the main duty in one line, and mark it
                "sure" or "check". Do not invent section numbers.
                End with 8 questions for our legal counsel.</code></pre>
          <p>Then check every item on official sources, such as government websites. Take the questions to your HR legal counsel.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: which rulebook?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Put each rule under the place it comes from.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="in" data-label="India"></div>
              <div data-sorter-target="bucket" data-bucket="us" data-label="United States"></div>
              <div data-sorter-target="bucket" data-bucket="eu" data-label="European Union"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="in" data-why="The Code on Wages, 2019 bans sex discrimination in recruitment for the same or similar work.">No discrimination on sex when recruiting for the same or similar work</li>
              <li data-bucket="in" data-why="The RPwD Act, 2016 asks every establishment to publish an equal opportunity policy.">Establishments must publish an equal opportunity policy for persons with disabilities</li>
              <li data-bucket="in" data-why="Under the DPDP Rules, 2025, most duties apply from 13 May 2027.">Candidate personal data duties that mostly apply from May 2027</li>
              <li data-bucket="us" data-why="NYC Local Law 144 requires notice at least 10 business days before an AEDT is used.">Candidates must get notice 10 business days before an automated tool is used</li>
              <li data-bucket="us" data-why="The EEOC removed its AI guidance pages in January 2025. The main anti-discrimination laws still apply.">The job discrimination agency removed its AI guidance pages in January 2025</li>
              <li data-bucket="eu" data-why="The EU AI Act has banned emotion recognition at work since 2 February 2025, with narrow exceptions.">Emotion recognition at work is banned</li>
              <li data-bucket="eu" data-why="The AI Act lists employment AI as high-risk. Its duties apply from 2 December 2027.">AI that filters job applications is classed as high-risk</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Build a first checklist of the rules that may apply to your AI hiring process. Then turn it into questions for your legal counsel.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an HR compliance helper. You are not a lawyer, and this is general education, not legal advice.

        Our company, [Sahyadri Foods Ltd, a food factory in Maharashtra], plans to hire [20 Quality Inspectors]. We want to use [an AI tool that ranks CVs and an online skills test]. Some candidates may have disabilities. Candidates apply from [Maharashtra only].

        Please make:
        1. A table of the laws and rules that may apply in [India]. Columns: law | main duty in one simple line | what it means for our AI hiring steps | confidence (sure / check).
        2. A list of 8 specific questions for our HR legal counsel.
        3. Three things we should check with the AI vendor (for example data storage, accessibility, bias testing).

        Rules: use simple English. Do not invent section numbers, dates or fines. If you are not sure, write "check". Remind me that laws change and must be checked on official government sources.</pre>
            <ul class="ai-try-checks">
              <li>The answer says clearly that it is not legal advice</li>
              <li>It covers equal pay and hiring (Code on Wages), disability access (RPwD Act) and candidate data (DPDP)</li>
              <li>Unsure items are marked "check", and no section numbers or fines are made up</li>
              <li>The questions for counsel are specific to your hiring steps, not general</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Using AI does not move the legal duty to the tool. The employer is still responsible for a fair and lawful process. Know the main rules where you hire. Keep a list of dates, because they change. Ask HR legal counsel before you decide.
        </div>
      HTML
      starter_code: nil
    },
    13 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-hr">HR & Recruitment</div>
          <h1 class="lc-title">Transparency with Candidates</h1>
        </div>
        <p class="lc-lead">Candidates trust a hiring process more when they know how it works. <strong>Transparency</strong> means telling people, in plain words, how you make decisions about them. That includes when AI is used. In this lesson you will learn what to tell candidates at each step. You will also learn how to explain a decision, give useful feedback and run a simple appeal. We follow Farhan, the HR manager at <strong>LedgerLite Pvt Ltd</strong>, a made-up 120-person software company in Karnataka. He is hiring a Junior QA Engineer (a person who tests software for bugs) with the hiring manager, Divya.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 260" role="img" aria-label="Five steps of the candidate journey: job post, application, tests and AI, decision, appeal. Under each step is what to tell the candidate. Job post: AI helps sort CVs, people decide, contact for help. Application: what data and why, who sees it, how long it is kept. Tests and AI: how AI is used, how to ask for adjustments, a non-AI option. Decision: the outcome, main job reasons, next steps. Appeal: how to ask for a review, who reviews, by when.">
            <defs><marker id="fh13a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="10" y="30" width="136" height="70" rx="10" fill="#27274e" stroke="#8b5cf6"/>
              <text x="78" y="52" font-size="11" fill="#9b99b8">Step 1</text><text x="78" y="76" font-weight="700">Job post</text>
              <rect x="160" y="30" width="136" height="70" rx="10" fill="#27274e" stroke="#3b82f6"/>
              <text x="228" y="52" font-size="11" fill="#9b99b8">Step 2</text><text x="228" y="76" font-weight="700">Application</text>
              <rect x="310" y="30" width="136" height="70" rx="10" fill="#27274e" stroke="#22d3ee"/>
              <text x="378" y="52" font-size="11" fill="#9b99b8">Step 3</text><text x="378" y="76" font-weight="700">Tests + AI</text>
              <rect x="460" y="30" width="136" height="70" rx="10" fill="#27274e" stroke="#10b981"/>
              <text x="528" y="52" font-size="11" fill="#9b99b8">Step 4</text><text x="528" y="76" font-weight="700">Decision</text>
              <rect x="610" y="30" width="136" height="70" rx="10" fill="#27274e" stroke="#f59e0b"/>
              <text x="678" y="52" font-size="11" fill="#9b99b8">Step 5</text><text x="678" y="76" font-weight="700">Appeal</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#fh13a)">
                <line x1="147" y1="65" x2="158" y2="65"/>
                <line x1="297" y1="65" x2="308" y2="65"/>
                <line x1="447" y1="65" x2="458" y2="65"/>
                <line x1="597" y1="65" x2="608" y2="65"/>
                <line x1="78" y1="102" x2="78" y2="126"/>
                <line x1="228" y1="102" x2="228" y2="126"/>
                <line x1="378" y1="102" x2="378" y2="126"/>
                <line x1="528" y1="102" x2="528" y2="126"/>
                <line x1="678" y1="102" x2="678" y2="126"/>
              </g>
              <g font-size="11">
                <rect x="10" y="130" width="136" height="86" rx="8" fill="#1f1f44" stroke="#4b4a78"/>
                <text x="78" y="154">AI helps sort CVs</text><text x="78" y="175">People decide</text><text x="78" y="196">Contact for help</text>
                <rect x="160" y="130" width="136" height="86" rx="8" fill="#1f1f44" stroke="#4b4a78"/>
                <text x="228" y="154">What data, and why</text><text x="228" y="175">Who sees it</text><text x="228" y="196">How long it is kept</text>
                <rect x="310" y="130" width="136" height="86" rx="8" fill="#1f1f44" stroke="#4b4a78"/>
                <text x="378" y="154">How AI is used</text><text x="378" y="175">Ask for adjustments</text><text x="378" y="196">A non-AI option</text>
                <rect x="460" y="130" width="136" height="86" rx="8" fill="#1f1f44" stroke="#4b4a78"/>
                <text x="528" y="154">The outcome</text><text x="528" y="175">Main job reasons</text><text x="528" y="196">Next steps</text>
                <rect x="610" y="130" width="136" height="86" rx="8" fill="#1f1f44" stroke="#4b4a78"/>
                <text x="678" y="154">Ask for a review</text><text x="678" y="175">Who reviews</text><text x="678" y="196">By when</text>
              </g>
              <text x="380" y="244" font-size="12" fill="#9b99b8">Top row: the candidate's steps. Bottom row: what you tell them at that step.</text>
            </g>
          </svg>
          <figcaption>Tell candidates what happens before each step, not after. Clear notices also help you meet privacy and AI rules.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Tell candidates when and how AI is used</h3>
          <p>An <strong>AI-use notice</strong> is a short note that says where AI is used in your hiring and where people decide. Put it in the job post and on the application page. Keep it short and honest. Here is LedgerLite's notice for the Junior QA Engineer role:</p>
          <pre><code>How we use AI in this hiring process
        - An AI tool in our applicant tracking system sorts applications
          by the skills listed in this job post. It does not reject anyone.
        - A person from our HR team reads every application.
        - Two trained interviewers score your interview with a set rubric.
        - The hiring manager makes the final decision.
        - We do not use AI to judge your face, voice or emotions.
        Need an adjustment, or prefer a non-AI option?
        Email careers@ledgerlite.example. We reply within 3 working days.
        Our privacy notice explains what data we keep and for how long.</code></pre>
          <p>Check that every line is true. Do not write "a person reviews every application" unless someone really does. Some laws ask for notices like this. Examples are NYC Local Law 144, the EU AI Act and an Illinois law in force since 1 January 2026. In India, the DPDP Act expects a clear notice before you collect personal data. This is not legal advice, so check with your HR legal counsel.</p>
        </div>
        <div class="lc-card">
          <h3>Explain decisions with job reasons</h3>
          <p>A good explanation links the decision to the job criteria. A bad one blames "the system". If you cannot explain why a tool ranked someone low, do not let that ranking decide.</p>
          <p>Meera Joshi (a made-up candidate) did not get the Junior QA Engineer role. Her interview scores were on a 1 to 5 scale. The role needed at least 3 in every area.</p>
          <table class="lc-table">
            <thead><tr><th>Area</th><th>Meera's score</th><th>Needed</th></tr></thead>
            <tbody>
              <tr><td>Writing test cases</td><td>2</td><td>3</td></tr>
              <tr><td>Clear bug reports</td><td>4</td><td>3</td></tr>
              <tr><td>Basic SQL queries</td><td>3</td><td>3</td></tr>
              <tr><td>Communication</td><td>4</td><td>3</td></tr>
            </tbody>
          </table>
          <pre><code>Weak feedback:
          "Our system found other candidates were a better fit."

        Better feedback:
          "Thank you for your time with us. Your bug reports were clear
          and well organised, and you explained your thinking well. The
          role needs strong test case writing from day one. In the task,
          your test cases missed some edge cases (unusual inputs, such
          as an empty form or a very long name). Practising test design
          for edge cases would make a strong application next time."</code></pre>
          <p>The better feedback is kind, specific and linked to the rubric. It does not mention other candidates or share their details.</p>
        </div>
        <div class="lc-card">
          <h3>A simple appeal process</h3>
          <p>An <strong>appeal</strong> is a way for a candidate to ask you to look at a decision again. It catches mistakes that AI or people made. Keep it simple:</p>
          <ul class="lc-list">
            <li><strong>One channel:</strong> a named email address or form, written in the decision email.</li>
            <li><strong>A time limit:</strong> for example, candidates can ask within 10 working days, and you reply within 10 working days.</li>
            <li><strong>A new reviewer:</strong> someone who did not make the first decision checks the scorecards and any AI output.</li>
            <li><strong>Fix data errors:</strong> if a CV was read wrongly, correct it and review again. Under India's DPDP Act, people can ask you to correct their data.</li>
            <li><strong>Keep a record:</strong> log each appeal and its result. Look for patterns every quarter, such as many appeals about one tool.</li>
          </ul>
          <p>An appeal is not a promise to change the decision. It is a promise to check it fairly.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: Farhan answers a candidate's question</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="check" data-label="Meera writes in">Meera emails: "Why was I not selected? Did an AI reject me?" Farhan must reply within the promised 10 working days.</li>
              <li data-kind="tool" data-label="Farhan opens the ATS">He opens the applicant tracking system (ATS: the software that stores applications). It shows the AI only sorted CVs by skills. A person moved Meera to interview.</li>
              <li data-kind="result" data-label="What the records show">Two interviewers scored her. Test case writing got 2 out of 5; the role needs 3. Divya made the final decision and wrote her reason.</li>
              <li data-kind="user" data-label="Farhan's prompt">"Draft a kind feedback email. Candidate: [first name only]. Role: Junior QA Engineer. Scores out of 5: test cases 2 (needed 3), bug reports 4, SQL 3, communication 4. Explain that AI only sorted CVs and people decided. Use only these reasons. Under 150 words."</li>
              <li data-kind="answer" data-label="AI draft">The draft is warm and clear. But one line says: "Our AI also noticed you seemed less confident in the video call."</li>
              <li data-kind="warn" data-label="An invented reason">That reason is not in the scorecard. LedgerLite does not use AI to judge confidence. Sending it would be false and unfair.</li>
              <li data-kind="check" data-label="Farhan edits and sends">He deletes the line and checks every fact against the records. He adds how to appeal, then sends the email and logs the reply.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Draft an AI-use notice and a feedback email from made-up scores. Change the brackets to fit your own role, but never paste real candidate data.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an HR writer who values clear, honest and kind communication.

        Company: [LedgerLite Pvt Ltd, a 120-person software company in Karnataka]
        Role: [Junior QA Engineer]
        How we use AI: [an AI tool sorts applications by the listed skills; an HR person reads every application; two trained interviewers score with a rubric; the hiring manager decides; we do not judge face, voice or emotions]
        Made-up candidate: [Meera]
        Scores out of 5 (3 needed in each): [test cases 2, bug reports 4, SQL 3, communication 4]
        Appeal: [email careers@ledgerlite.example within 10 working days]

        Please write:
        1. An AI-use notice for the job post, 6 to 8 short lines.
        2. A feedback email to the candidate, under 150 words. Start with one real strength. Give the main job reason. Suggest one way to improve. Explain how to appeal.

        Rules: use only the facts above. Do not invent reasons or mention other candidates. Use simple English. Do not say "the system decided".</pre>
            <ul class="ai-try-checks">
              <li>The notice matches the facts given, and says people make the decision</li>
              <li>The email uses only the scores given and adds no new reasons</li>
              <li>It names a real strength and one clear way to improve</li>
              <li>The appeal channel and time limit are included</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Tell candidates how AI is used before it is used. Explain decisions with job reasons from the rubric, never "the system decided". Give people a real way to ask for a second look. If you cannot explain a tool's result, it should not decide.
        </div>
      HTML
      starter_code: nil
    },
    14 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-hr">HR & Recruitment</div>
          <h1 class="lc-title">Building a Fair Hiring Policy</h1>
        </div>
        <p class="lc-lead">Good intentions are not enough. A <strong>fair hiring policy</strong> is a short written document that says how your company hires fairly, including how it uses AI. It tells everyone who does what, what the AI may and may not do, and how you check results. In this lesson you will build a policy with six parts, using Sahyadri Foods Ltd as the example. Sunita, the HR head, owns the policy for this 800-worker food factory in Maharashtra.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 270" role="img" aria-label="Six parts of a fair hiring policy in a row: principles, roles, human review, records, training and review cycle. An arrow loops from the review cycle back to principles, after each hiring drive, each year, and after any complaint or new tool. The policy owner is Sunita, HR head at Sahyadri Foods Ltd.">
            <defs><marker id="fh14a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="380" y="30" font-weight="700" fill="#c4b5fd">A fair hiring policy: six parts in a loop</text>
              <rect x="10" y="52" width="112" height="80" rx="10" fill="#27274e" stroke="#8b5cf6"/>
              <text x="66" y="72" font-size="11" fill="#9b99b8">Part 1</text><text x="66" y="95" font-weight="700">Principles</text><text x="66" y="116" font-size="11" fill="#9b99b8">job-related, fair</text>
              <rect x="135" y="52" width="112" height="80" rx="10" fill="#27274e" stroke="#3b82f6"/>
              <text x="191" y="72" font-size="11" fill="#9b99b8">Part 2</text><text x="191" y="95" font-weight="700">Roles</text><text x="191" y="116" font-size="11" fill="#9b99b8">who owns what</text>
              <rect x="260" y="52" width="112" height="80" rx="10" fill="#27274e" stroke="#22d3ee"/>
              <text x="316" y="72" font-size="11" fill="#9b99b8">Part 3</text><text x="316" y="95" font-weight="700">Human review</text><text x="316" y="116" font-size="11" fill="#9b99b8">AI never rejects</text>
              <rect x="385" y="52" width="112" height="80" rx="10" fill="#27274e" stroke="#10b981"/>
              <text x="441" y="72" font-size="11" fill="#9b99b8">Part 4</text><text x="441" y="95" font-weight="700">Records</text><text x="441" y="116" font-size="11" fill="#9b99b8">keep, then delete</text>
              <rect x="510" y="52" width="112" height="80" rx="10" fill="#27274e" stroke="#f59e0b"/>
              <text x="566" y="72" font-size="11" fill="#9b99b8">Part 5</text><text x="566" y="95" font-weight="700">Training</text><text x="566" y="116" font-size="11" fill="#9b99b8">all who hire</text>
              <rect x="635" y="52" width="112" height="80" rx="10" fill="#27274e" stroke="#ec4899"/>
              <text x="691" y="72" font-size="11" fill="#9b99b8">Part 6</text><text x="691" y="95" font-weight="700">Review cycle</text><text x="691" y="116" font-size="11" fill="#9b99b8">check, update</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#fh14a)">
                <line x1="123" y1="92" x2="133" y2="92"/>
                <line x1="248" y1="92" x2="258" y2="92"/>
                <line x1="373" y1="92" x2="383" y2="92"/>
                <line x1="498" y1="92" x2="508" y2="92"/>
                <line x1="623" y1="92" x2="633" y2="92"/>
                <path d="M691,134 L691,172 L66,172 L66,138"/>
              </g>
              <text x="380" y="194" font-size="11.5" fill="#9b99b8">Loop back after each hiring drive, each year, and after any complaint or new tool</text>
              <rect x="130" y="212" width="500" height="40" rx="8" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="380" y="237" font-size="12.5">Owner: Sunita, HR head, Sahyadri Foods Ltd</text>
            </g>
          </svg>
          <figcaption>A policy is never finished. You check the results and update it in a regular cycle.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The six parts, with Sahyadri Foods' wording</h3>
          <p>Keep the policy short, about two pages. Staff should be able to read it in ten minutes.</p>
          <table class="lc-table">
            <thead><tr><th>Part</th><th>What it covers</th><th>Example line for Sahyadri Foods</th></tr></thead>
            <tbody>
              <tr><td>1. Principles</td><td>The basic promises</td><td>"We hire on job-related skills only. Every candidate for a role gets the same process."</td></tr>
              <tr><td>2. Roles</td><td>Who is responsible for each part</td><td>"Sunita owns this policy. Each hiring manager owns the job criteria for their role."</td></tr>
              <tr><td>3. Human review</td><td>What AI may do and what only people do</td><td>"AI may draft, sort and flag. It never rejects a candidate alone. A person reviews every AI 'no'."</td></tr>
              <tr><td>4. Records</td><td>What you keep, where, for how long</td><td>"We keep scorecards, AI settings and override reasons. We delete rejected applications after the period set by legal counsel."</td></tr>
              <tr><td>5. Training</td><td>Who learns what, and how often</td><td>"Everyone who interviews completes fair hiring training before their first panel, and again each year."</td></tr>
              <tr><td>6. Review cycle</td><td>When you check results and update</td><td>"After each hiring drive, HR checks pass rates by group at every stage."</td></tr>
            </tbody>
          </table>
          <p>Also add a short "banned uses" list, for example emotion reading, honesty scores and personal social media checks.</p>
        </div>
        <div class="lc-card">
          <h3>Roles and human review</h3>
          <p>A policy fails when nobody owns it. Name a role for each duty, not only a team.</p>
          <table class="lc-table">
            <thead><tr><th>Role</th><th>Main duties</th></tr></thead>
            <tbody>
              <tr><td>Policy owner (Sunita, HR head)</td><td>Keeps the policy up to date, approves new AI tools, reports results to leadership</td></tr>
              <tr><td>Hiring manager</td><td>Sets job-related criteria, makes the final decision, writes the reason</td></tr>
              <tr><td>Interview panel</td><td>Uses the rubric, scores alone before discussing, declares any conflict of interest</td></tr>
              <tr><td>Fairness reviewer (someone not on the panel)</td><td>Checks pass rates by group, handles appeals, looks at a sample of AI "no" decisions</td></tr>
              <tr><td>Data protection contact</td><td>Checks notices, vendor contracts and deletion of old data</td></tr>
              <tr><td>AI vendor</td><td>Shares bias test results, explains settings, reports problems and changes</td></tr>
            </tbody>
          </table>
          <p><strong>Human review</strong> must be real, not a quick click. The reviewer sees the candidate's details, not only the AI score. They have time to check. They can override the AI and must write down why. Count the overrides. If people never override, the review may not be real.</p>
        </div>
        <div class="lc-card">
          <h3>Records and the review cycle</h3>
          <p>Records let you prove the process was fair and find problems early. Keep them safe, and let only named roles open them.</p>
          <ul class="lc-list">
            <li><strong>Keep:</strong> job criteria, the job post, AI tool name and settings, scorecards, override reasons, appeals and pass numbers at each stage.</li>
            <li><strong>Delete:</strong> personal data when the purpose is over. India's DPDP Act expects this. Set the exact time with your legal counsel.</li>
          </ul>
          <p>After each hiring drive, check the <strong>selection rate</strong> (the share of applicants in a group who pass a stage) for each group. Then compare them with the <strong>four-fifths ratio</strong>: a group's rate divided by the highest group's rate. A result below 0.8 is a warning sign to look into, not proof of bias.</p>
          <p>Example: in a recent Sahyadri Foods drive for packing staff (a different job from the Quality Inspector drives), 90 of 150 men passed the skills test (60%). 54 of 120 women passed (45%). The ratio is 45% ÷ 60% = 0.75. This is below 0.8, so the policy says Sunita must review the test. She checks whether every question is really needed for the job.</p>
          <pre><code>Weak prompt:
          Write a fair hiring policy.

        Better prompt:
          Draft a 2-page fair hiring policy for a food factory in Maharashtra
          with 800 workers. Use six headings: principles, roles, human
          review, records, training, review cycle. AI may draft, sort and
          flag but never reject alone. Add a list of banned AI uses.
          Use simple English. Mark any legal point "check with counsel".</code></pre>
        </div>
        <div class="lc-card">
          <h3>Activity: put the policy steps in order</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Sunita is creating the policy for Sahyadri Foods. Put her steps in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">List every hiring step and mark where AI and people make decisions today</li>
              <li data-order="2">Write the principles and the list of banned AI uses</li>
              <li data-order="3">Name an owner for each duty, including a fairness reviewer</li>
              <li data-order="4">Set the human review, records and deletion rules</li>
              <li data-order="5">Get the draft checked by HR legal counsel and approved by leadership</li>
              <li data-order="6">Train everyone who hires, then publish the policy</li>
              <li data-order="7">After the first hiring drive, check pass rates by group and update the policy</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Draft a first version of a fair hiring policy for your company. Then check it with your team and legal counsel.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an HR policy writer who focuses on fair hiring.

        Draft a fair hiring policy for [Sahyadri Foods Ltd, a food factory in Maharashtra with 800 workers]. We hire [factory workers, Quality Inspectors and Shift Supervisors]. We use [an applicant tracking system with AI CV sorting and an online skills test].

        Use these six headings: 1. Principles 2. Roles 3. Human review 4. Records 5. Training 6. Review cycle.

        Must include:
        - AI may draft, sort and flag, but never rejects a candidate alone. A person reviews every AI "no".
        - A list of banned AI uses (for example emotion reading, honesty scores, personal social media checks).
        - A named role for each duty, including a fairness reviewer who is not on the interview panel.
        - After each hiring drive, check selection rates by group with the four-fifths ratio, as a warning sign only.
        - How candidates can ask for adjustments or an appeal.

        Rules: about 2 pages, simple English, short sentences. Do not invent laws or retention periods. Write "[check with legal counsel]" where a legal detail is needed.</pre>
            <ul class="ai-try-checks">
              <li>All six headings are there, and every duty has a named role</li>
              <li>It says clearly that AI never rejects anyone on its own</li>
              <li>The four-fifths ratio is described as a warning sign, not proof</li>
              <li>Legal details are marked for counsel, with no made-up laws or time periods</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A fair hiring policy turns good intentions into clear rules. It names owners, keeps a person in charge of every rejection, keeps records and checks results after each drive. Keep it short so people use it, and review it often.
        </div>
      HTML
      starter_code: nil
    },
    15 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-hr">HR & Recruitment</div>
          <h1 class="lc-title">Capstone: A Fairness Review of a Hiring Process</h1>
        </div>
        <p class="lc-lead">In this capstone you will do a full fairness review of one hiring process. You will look at four things: the job description, the screening rules, the interview kit and the outcome data. You will find the problems, recalculate the numbers and write a fix plan. AI helps you find issues and draft the plan. You check every finding and every number. The case is made up. Before this year's open drive, Sunita, the HR head at Sahyadri Foods Ltd, reviewed the <em>previous</em> drive for 20 Quality Inspectors. Leadership wants a written review, so the fixes stay in place for every future drive.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 270" role="img" aria-label="Four inputs, the job description, screening rules, interview kit and outcome data, flow into a fairness review where you find issues, recalculate rates and ask whether each rule is job-related. The review leads to a fix plan in three groups: fix now this week, fix next this month, and check again at the next drive. AI finds and drafts; Sunita and the hiring managers decide.">
            <defs><marker id="fh15a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="10" y="20" width="180" height="40" rx="8" fill="#27274e" stroke="#8b5cf6"/><text x="100" y="45">Job description</text>
              <rect x="10" y="70" width="180" height="40" rx="8" fill="#27274e" stroke="#3b82f6"/><text x="100" y="95">Screening rules</text>
              <rect x="10" y="120" width="180" height="40" rx="8" fill="#27274e" stroke="#22d3ee"/><text x="100" y="145">Interview kit</text>
              <rect x="10" y="170" width="180" height="40" rx="8" fill="#27274e" stroke="#10b981"/><text x="100" y="195">Outcome data</text>
              <rect x="260" y="60" width="210" height="110" rx="12" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="365" y="88" font-weight="700" fill="#fcd34d">Fairness review</text>
              <text x="365" y="112" font-size="12">Find the issues</text>
              <text x="365" y="132" font-size="12">Recalculate the rates</text>
              <text x="365" y="152" font-size="12">Ask: is it job-related?</text>
              <rect x="530" y="20" width="220" height="40" rx="8" fill="#27274e" stroke="#ec4899"/><text x="640" y="45">Fix now (this week)</text>
              <rect x="530" y="95" width="220" height="40" rx="8" fill="#27274e" stroke="#f59e0b"/><text x="640" y="120">Fix next (this month)</text>
              <rect x="530" y="170" width="220" height="40" rx="8" fill="#27274e" stroke="#10b981"/><text x="640" y="195">Check again (next drive)</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#fh15a)">
                <line x1="192" y1="40" x2="256" y2="92"/>
                <line x1="192" y1="90" x2="256" y2="108"/>
                <line x1="192" y1="140" x2="256" y2="124"/>
                <line x1="192" y1="190" x2="256" y2="140"/>
                <line x1="472" y1="100" x2="526" y2="44"/>
                <line x1="472" y1="115" x2="526" y2="115"/>
                <line x1="472" y1="130" x2="526" y2="186"/>
              </g>
              <rect x="10" y="226" width="740" height="36" rx="8" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="380" y="249" font-size="12.5">AI finds and drafts. Sunita and the hiring managers decide and sign off.</text>
            </g>
          </svg>
          <figcaption>A fairness review looks at every stage of hiring, then turns the findings into a plan with owners and dates.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The case file (made-up data)</h3>
          <p>This is the previous Quality Inspector drive, before Sunita's changes.</p>
          <p><strong>1. Job description (extract):</strong></p>
          <pre><code>Quality Inspector - Sahyadri Foods Ltd, Maharashtra
        We want young, energetic men aged 20-28.
        Must be a graduate from a reputed college. Fluent English a must.
        Must be a rockstar who handles pressure. No career gaps.
        Must lift 25 kg sacks.
        Duties: check samples on the line, record results in the
        quality register, flag defects. Rotating night shifts.</code></pre>
          <p><strong>2. Screening rules set in the AI tool:</strong></p>
          <ul class="lc-list">
            <li>Auto-reject any career gap longer than 6 months.</li>
            <li>Add 10 points for a "top-tier" college.</li>
            <li>Reject if the home PIN code is more than 15 km from the factory.</li>
          </ul>
          <p><strong>3. Interview kit:</strong> an open "Tell me about yourself" chat with no rubric. The panel has three men from production. The kit suggests "Are you married?" and "Do you plan to have children soon?". The video tool shows a "confidence score". The final call is by "gut feel".</p>
          <p><strong>4. Outcome data:</strong></p>
          <table class="lc-table">
            <thead><tr><th>Stage</th><th>Men</th><th>Women</th></tr></thead>
            <tbody>
              <tr><td>Applied</td><td>110</td><td>40</td></tr>
              <tr><td>Had a career gap over 6 months (auto-rejected)</td><td>8</td><td>14</td></tr>
              <tr><td>Shortlisted by AI screen</td><td>55</td><td>12</td></tr>
              <tr><td>Hired</td><td>18</td><td>2</td></tr>
            </tbody>
          </table>
          <p>Other facts: 120 of the 150 applicants (80%) came from staff referrals. 7 of the 20 new inspectors left within six months (35% early attrition). For the 2 Shift Supervisor jobs, 14 people applied (11 men, 3 women). Both hires were men.</p>
        </div>
        <div class="lc-card">
          <h3>Worked review: the numbers</h3>
          <p>The <strong>selection rate</strong> is the number who passed a stage divided by the number who entered it. The <strong>four-fifths ratio</strong> is the lower group's rate divided by the higher group's rate. Below 0.8 is a warning sign.</p>
          <table class="lc-table">
            <thead><tr><th>Stage</th><th>Men</th><th>Women</th><th>Ratio (women ÷ men)</th></tr></thead>
            <tbody>
              <tr><td>AI screen (shortlisted ÷ applied)</td><td>55 ÷ 110 = 50.0%</td><td>12 ÷ 40 = 30.0%</td><td>30.0 ÷ 50.0 = 0.60: warning</td></tr>
              <tr><td>Interview (hired ÷ shortlisted)</td><td>18 ÷ 55 = 32.7%</td><td>2 ÷ 12 = 16.7%</td><td>16.7 ÷ 32.7 = 0.51: warning</td></tr>
              <tr><td>Overall (hired ÷ applied)</td><td>18 ÷ 110 = 16.4%</td><td>2 ÷ 40 = 5.0%</td><td>5.0 ÷ 16.4 = about 0.3: warning</td></tr>
            </tbody>
          </table>
          <p>Both stages show a warning. At the AI screen, the gap rule removed 14 of 40 women (35.0%) but only 8 of 110 men (7.3%). Career gaps often come from caring for children or family, so this rule hits women harder. Look at candidates <em>without</em> a gap: 12 of 26 women (46.2%) and 55 of 102 men (53.9%) were shortlisted. That ratio is about 0.86. So the gap rule seems to explain most of the screening gap. The college points may explain some of the rest.</p>
          <p>At the interview, the ratio is 0.51. This fits what the kit shows: no rubric, an all-male panel and questions about marriage. But be careful with small numbers. Only 2 women were hired. One more hire would change their interview rate from 16.7% to 25.0%. So treat this as a strong reason to fix the kit, not as a precise measure. For the Shift Supervisor roles, 2 hires are far too few for any ratio. Review that process step by step instead.</p>
          <p>The referral share is also a finding. When 80% of applicants come from staff referrals, the pool mostly looks like the current staff.</p>
          <p>In a spreadsheet, put applied in column B and shortlisted in column C, with men in row 2 and women in row 3. Use <code>=C2/B2</code> for each rate in column D. Then use <code>=D3/MAX(D2:D3)</code> for the ratio.</p>
        </div>
        <div class="lc-card">
          <h3>Worked review: findings and the fix plan</h3>
          <table class="lc-table">
            <thead><tr><th>Priority</th><th>Finding</th><th>Fix</th><th>Owner</th></tr></thead>
            <tbody>
              <tr><td>Now</td><td>The job post asks for "men aged 20-28". This excludes women and older workers. Sex bias in recruitment for the same work may break the Code on Wages.</td><td>Remove gender and age. List only job skills.</td><td>Sunita</td></tr>
              <tr><td>Now</td><td>Auto-reject for career gaps over 6 months</td><td>Turn the rule off. Ask about gaps only if the job needs recent practice.</td><td>Sunita, with the vendor</td></tr>
              <tr><td>Now</td><td>Marriage and children questions, and a video "confidence score"</td><td>Delete the questions. Switch off the score and confirm it is not stored.</td><td>Sunita</td></tr>
              <tr><td>Next</td><td>"Graduate from a reputed college", "top-tier" points and the PIN code filter act as proxies (stand-ins for class, caste or region)</td><td>Ask the quality manager what the job truly needs, for example 12th pass or a diploma plus training. Remove college points. Replace the PIN code rule with a question about shift transport.</td><td>Quality manager, Sunita</td></tr>
              <tr><td>Next</td><td>No rubric and an all-male panel</td><td>Write 6 structured questions with a scoring guide. Add a woman from the quality team to the panel.</td><td>Hiring manager</td></tr>
              <tr><td>Next</td><td>"Fluent English" and "lift 25 kg" may not be job-related</td><td>Check the real tasks. The quality register may be in English and Marathi. If lifting is rare, offer a trolley as a reasonable adjustment.</td><td>Quality manager</td></tr>
              <tr><td>Next</td><td>80% of applicants came from referrals</td><td>Advertise openly, for example on job portals, at ITIs and through women's self-help groups. Track the referral share.</td><td>Sunita</td></tr>
              <tr><td>Check again</td><td>Screening ratio 0.60, interview 0.51, overall about 0.3; early attrition 35%</td><td>Recalculate after the next drive. Also check that night shift duties are stated clearly for everyone. Night work for women has conditions under the Labour Codes, so ask legal counsel.</td><td>Fairness reviewer</td></tr>
            </tbody>
          </table>
          <p>This is a learning example, not legal advice. Check legal points with your HR legal counsel.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: Sunita runs the review with AI</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Sunita's prompt">She pastes the made-up case file (no real names) and asks: "Review this hiring process for fairness. List issues by stage, calculate selection rates and four-fifths ratios, and draft a fix plan."</li>
              <li data-kind="answer" data-label="AI finds issues">The AI flags the "men aged 20-28" line, the gap rule, the marriage questions, the confidence score and the college points. It gives a screening ratio of 0.60 and an interview ratio of 0.51.</li>
              <li data-kind="warn" data-label="An invented reason">The AI adds: "Women may be less interested in factory inspection work." There is no evidence for this in the data. It is a stereotype. Sunita deletes it.</li>
              <li data-kind="tool" data-label="Spreadsheet check">Sunita puts the numbers in a spreadsheet. She uses =C2/B2 for each rate and =D3/MAX(D2:D3) for the ratio.</li>
              <li data-kind="result" data-label="The numbers">Screen: men 50.0%, women 30.0%, ratio 0.60. Without the gap group: men 53.9%, women 46.2%, ratio about 0.86. Interview: 32.7% and 16.7%, ratio 0.51. The AI's figures match.</li>
              <li data-kind="check" data-label="Ask the job experts">She asks the quality manager which tasks need English, lifting and a degree. Two requirements turn out to be optional.</li>
              <li data-kind="answer" data-label="Final plan">The fix plan has 8 actions with owners and dates. Sunita signs it off and schedules a new check after the next hiring drive.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Run a full fairness review on the made-up case file below. Replace it with your own process details, but use made-up names and numbers only.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a fair hiring reviewer. Review this made-up past hiring drive for [20 Quality Inspectors at Sahyadri Foods Ltd, a food factory in Maharashtra].

        Job post: [young energetic men aged 20-28; graduate from a reputed college; fluent English; no career gaps; must lift 25 kg; rotating night shifts]
        AI screening rules: [auto-reject gaps over 6 months; +10 points for top-tier college; reject if home is over 15 km away]
        Interview kit: [no rubric; all-male panel; asks about marriage and children; video "confidence score"]
        Outcome data: [Men: 110 applied, 55 shortlisted, 18 hired. Women: 40 applied, 12 shortlisted, 2 hired. 14 women and 8 men were auto-rejected for gaps. 120 of 150 applicants were referrals.]

        Please:
        1. List the issues by stage, with one plain reason each.
        2. Calculate selection rates and the four-fifths ratio for each stage. Show your working.
        3. Write a fix plan table: priority (now / next / check again) | action | owner | how we will measure it.

        Rules: simple English. Treat a ratio below 0.8 as a warning sign, not proof. Warn about small numbers. Do not guess reasons that are not in the data. Mark legal points "check with legal counsel".</pre>
            <ul class="ai-try-checks">
              <li>Screening rates are 50.0% (men) and 30.0% (women), a ratio of 0.60; interview ratio about 0.51</li>
              <li>The gender, age, gap and marriage issues are all flagged</li>
              <li>It warns that 2 women hired is a small number and adds no stereotypes as reasons</li>
              <li>Every fix has an owner and a way to measure it</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A fairness review checks every stage, not only the final hires. Look at each rule and ask, "Is this really needed for the job?" Then check the numbers yourself, even when AI calculates them. End with a plan that has owners, dates and a new check after the next drive.
        </div>
      HTML
      starter_code: nil
    }
  }.freeze
end

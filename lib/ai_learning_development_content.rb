module AiLearningDevelopmentContent
  # Units (sidebar dividers): 1–4 L&D Basics · 5–9 Designing Learning · 10–14 Delivering and Measuring · 15 Capstone
  # Widgets: sequence, sorter, stepper. No code editor: each Try It is an ai-try prompt box.
  LESSONS = {
    1 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-hr">HR & Recruitment</div>
          <h1 class="lc-title">What Learning and Development Is</h1>
        </div>
        <p class="lc-lead"><strong>Learning and development (L&amp;D)</strong> is the work of helping people get better at their jobs. It includes training for today's job and building skills for tomorrow's job. In this lesson you will learn the difference between training, upskilling and reskilling. You will meet the 70-20-10 idea and the L&amp;D cycle. You will also meet the story that runs through this course: 40 shift supervisors at Sahyadri Foods Ltd, a food factory in Maharashtra.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 362" role="img" aria-label="The L&amp;D cycle has five steps in a loop: find needs, design, build content, deliver, and measure, then back to find needs. Below it, a bar shows the 70-20-10 idea: 70 percent of learning on the job, 20 percent from other people and 10 percent from formal courses.">
            <defs><marker id="ld1a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="305" y="15" width="150" height="54" rx="10" fill="#27274e" stroke="#8b5cf6"/>
              <text x="380" y="38" font-weight="700">1. Find needs</text><text x="380" y="57" font-size="11" fill="#9b99b8">what is the gap?</text>
              <rect x="560" y="95" width="150" height="54" rx="10" fill="#27274e" stroke="#3b82f6"/>
              <text x="635" y="118" font-weight="700">2. Design</text><text x="635" y="137" font-size="11" fill="#9b99b8">objectives, plan</text>
              <rect x="470" y="185" width="150" height="54" rx="10" fill="#27274e" stroke="#22d3ee"/>
              <text x="545" y="208" font-weight="700">3. Build content</text><text x="545" y="227" font-size="11" fill="#9b99b8">lessons, quizzes</text>
              <rect x="140" y="185" width="150" height="54" rx="10" fill="#27274e" stroke="#f59e0b"/>
              <text x="215" y="208" font-weight="700">4. Deliver</text><text x="215" y="227" font-size="11" fill="#9b99b8">class, on the job</text>
              <rect x="50" y="95" width="150" height="54" rx="10" fill="#27274e" stroke="#10b981"/>
              <text x="125" y="118" font-weight="700">5. Measure</text><text x="125" y="137" font-size="11" fill="#9b99b8">did work change?</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#ld1a)">
                <path d="M456,48 Q560,55 612,92"/>
                <path d="M630,151 L592,182"/>
                <line x1="468" y1="212" x2="294" y2="212"/>
                <path d="M190,183 L150,152"/>
                <path d="M148,92 Q200,55 302,48"/>
              </g>
              <text x="380" y="122" font-weight="700" fill="#c4b5fd">The L&amp;D cycle</text>
              <text x="380" y="142" font-size="11" fill="#9b99b8">repeat it for every need</text>
              <text x="30" y="276" text-anchor="start" font-size="12" fill="#9b99b8">The 70-20-10 idea: where people learn at work</text>
              <rect x="30" y="286" width="490" height="40" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="275" y="311" font-size="12">70% on the job: real tasks, stretch work</text>
              <rect x="520" y="286" width="140" height="40" fill="#1f1f44" stroke="#ec4899"/>
              <text x="590" y="311" font-size="12">20% from others</text>
              <rect x="660" y="286" width="70" height="40" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="695" y="311" font-size="11">10% formal</text>
              <text x="380" y="350" font-size="11" fill="#9b99b8">A rough guide, not an exact rule</text>
            </g>
          </svg>
          <figcaption>L&amp;D is a loop: find the need, design, build, deliver, then measure and start again. Most learning happens on the job, not in a classroom.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Training, upskilling and reskilling</h3>
          <p>These three words are often mixed up. Here is a simple way to tell them apart.</p>
          <table class="lc-table">
            <thead><tr><th>Word</th><th>What it means</th><th>Example</th></tr></thead>
            <tbody>
              <tr><td><strong>Training</strong></td><td>Teaching the skills and rules needed for the current job</td><td>All Sahyadri Foods line workers learn the new hand-washing steps.</td></tr>
              <tr><td><strong>Upskilling</strong></td><td>Adding deeper or newer skills on the same career path</td><td>At LedgerLite Pvt Ltd, a Karnataka software company, testers learn to use AI tools to write test cases.</td></tr>
              <tr><td><strong>Reskilling</strong></td><td>Learning the skills for a different job</td><td>At Swift Mart, an online grocery company, a delivery rider moves into a warehouse stock-control job.</td></tr>
            </tbody>
          </table>
          <p>The word matters less than the question behind it: <em>what must this person be able to do, and by when?</em> That question drives every L&amp;D decision.</p>
        </div>
        <div class="lc-card">
          <h3>The 70-20-10 idea</h3>
          <p>The 70-20-10 idea says people learn at work in three ways. About 70% comes from doing real tasks. About 20% comes from other people, such as a manager, a mentor or a colleague. About 10% comes from formal courses and classes. The idea came from studies of how managers learn, done in the 1980s. Treat the numbers as a rough guide, not a law.</p>
          <p>The useful lesson is this: a course alone rarely changes how people work. Good L&amp;D plans include practice on the job and support from others. For example, a 70-20-10 plan for one new Sahyadri supervisor could look like this:</p>
          <table class="lc-table">
            <thead><tr><th>Part</th><th>Activity</th></tr></thead>
            <tbody>
              <tr><td>70: on the job</td><td>Fill in the CCP (critical control point) record sheets on every shift. A CCP is a step where a check stops a food safety hazard, such as the cooking temperature. The QA team reviews the sheets each week.</td></tr>
              <tr><td>20: from others</td><td>Shadow an experienced supervisor for 3 shifts. Meet the QA manager every 2 weeks to talk through mistakes.</td></tr>
              <tr><td>10: formal</td><td>Attend a one-day workshop on food safety checks and a half-day workshop on leading a team.</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Our course story: Sahyadri Foods Ltd</h3>
          <p>Sahyadri Foods Ltd is a made-up food factory in Maharashtra with about 800 workers. It has 40 shift supervisors. Many of them were promoted from line workers and never had supervisor training.</p>
          <ul class="lc-list">
            <li><strong>Sunita</strong> is the HR head. She owns the budget and reports to management.</li>
            <li><strong>Mohan</strong> is the training lead. He runs the programme day to day.</li>
            <li><strong>The need:</strong> train the supervisors in "food safety checks and leading a shift team".</li>
          </ul>
          <p>You will follow Mohan through the whole L&amp;D cycle in this course. You will see where AI saves him time. You will also see where he must check facts with experts and make the decisions himself.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: training, upskilling or reskilling?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each example into the right group.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="train" data-label="Training"></div>
              <div data-sorter-target="bucket" data-bucket="up" data-label="Upskilling"></div>
              <div data-sorter-target="bucket" data-bucket="re" data-label="Reskilling"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="train" data-why="It teaches a rule for the job they already do.">Sahyadri line workers learn a new rule for wearing hair nets</li>
              <li data-bucket="re" data-why="The person moves to a different kind of job with different skills.">A Swift Mart delivery rider trains to become a warehouse stock controller</li>
              <li data-bucket="up" data-why="Same career path, but a higher level of skill: leading people, not only doing tasks.">A Sahyadri line worker promoted to shift supervisor learns to lead a team</li>
              <li data-bucket="train" data-why="New joiners learn the basics of the job they were hired for.">New LedgerLite joiners learn the company leave and expense process</li>
              <li data-bucket="up" data-why="Their job stays the same. They add a newer skill to do it better.">LedgerLite testers learn to use AI tools to draft test cases</li>
              <li data-bucket="re" data-why="Their old job is changing, so they learn skills for a new role.">Sahyadri packing staff, whose line is being automated, learn to work as quality lab assistants</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to turn the 70-20-10 idea into a simple development plan for one role you know.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an experienced learning and development (L&amp;D) adviser at an Indian company.

        Role: [newly promoted shift supervisor at a food factory in Maharashtra]
        Skill to build: [food safety checks and leading a shift team]
        Time frame: [3 months]

        1. Say in 2 sentences whether this is training, upskilling or reskilling, and why.
        2. Make a 70-20-10 development plan as a table with columns: Part (70 / 20 / 10), Activity, Who helps, How often, How we will see progress.
           Give 3 activities for the 70 part, 2 for the 20 part and 1 or 2 for the 10 part.
        3. List 3 things the person's manager must do to make the plan work.

        Rules: Use simple English. Use job titles, not real names. Treat 70-20-10 as a rough guide, not an exact rule. Mark any fact about safety rules or laws with [CHECK], because an expert must confirm it.</pre>
            <ul class="ai-try-checks">
              <li>Most activities happen on the job, not in a classroom.</li>
              <li>Each activity has a clear way to see progress, such as a checked record or an observed task.</li>
              <li>Safety rules and legal points are marked [CHECK], not stated as facts.</li>
              <li>The plan fits your real workplace. Remove anything you could not actually do.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> L&amp;D is not "running courses". It is a cycle: find the need, design, build, deliver and measure. Most learning happens on the job, so a good plan mixes real work, support from others and a small amount of formal training.
        </div>
      HTML
      starter_code: nil
    },
    2 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-hr">HR & Recruitment</div>
          <h1 class="lc-title">Where AI Helps in L&D</h1>
        </div>
        <p class="lc-lead">AI can save L&amp;D teams many hours. It can draft survey questions, lesson text, examples, quizzes and practice conversations in minutes. But AI can also state wrong facts in a confident voice. In training, a wrong fact can reach hundreds of people, and in a food factory it can make people unsafe. In this lesson you will see where AI helps at each step of the L&amp;D cycle. You will also learn the three rules that keep AI-made training safe: check accuracy, get expert review and protect people's data.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="Mohan's AI workflow: safe input, then an AI draft, then an expert check by the QA manager, then people decide. Below, two panels: tasks AI helps with, and tasks only people can do.">
            <defs><marker id="ld2a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="20" y="24" text-anchor="start" font-size="12" fill="#9b99b8">How Mohan uses AI at Sahyadri Foods</text>
              <rect x="20" y="40" width="160" height="64" rx="10" fill="#27274e" stroke="#8b5cf6"/>
              <text x="100" y="67" font-weight="700">Safe input</text><text x="100" y="88" font-size="11" fill="#9b99b8">codes, no real names</text>
              <rect x="210" y="40" width="160" height="64" rx="10" fill="#27274e" stroke="#3b82f6"/>
              <text x="290" y="67" font-weight="700">AI draft</text><text x="290" y="88" font-size="11" fill="#9b99b8">fast first version</text>
              <rect x="400" y="40" width="160" height="64" rx="10" fill="#27274e" stroke="#f59e0b"/>
              <text x="480" y="67" font-weight="700">Expert check</text><text x="480" y="88" font-size="11" fill="#9b99b8">QA manager, SOPs</text>
              <rect x="590" y="40" width="160" height="64" rx="10" fill="#27274e" stroke="#10b981"/>
              <text x="670" y="67" font-weight="700">People decide</text><text x="670" y="88" font-size="11" fill="#9b99b8">Mohan and Sunita</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#ld2a)">
                <line x1="181" y1="72" x2="207" y2="72"/>
                <line x1="371" y1="72" x2="397" y2="72"/>
                <line x1="561" y1="72" x2="587" y2="72"/>
              </g>
              <rect x="20" y="126" width="355" height="160" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="197" y="152" font-weight="700" fill="#6ee7b7">AI helps with</text>
              <g text-anchor="start" font-size="12">
                <text x="40" y="180">• Draft needs survey questions</text>
                <text x="40" y="201">• Draft lesson text and examples</text>
                <text x="40" y="222">• Write quiz questions and answer keys</text>
                <text x="40" y="243">• Suggest a personal learning path</text>
                <text x="40" y="264">• Play a worker in a practice talk</text>
              </g>
              <rect x="395" y="126" width="355" height="160" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="572" y="152" font-weight="700" fill="#f9a8d4">Only people can</text>
              <g text-anchor="start" font-size="12">
                <text x="415" y="180">• Confirm safety facts and limits</text>
                <text x="415" y="201">• Judge each person's real skill</text>
                <text x="415" y="222">• Decide who gets which training</text>
                <text x="415" y="243">• Approve content before anyone uses it</text>
                <text x="415" y="264">• Protect employee data</text>
              </g>
            </g>
          </svg>
          <figcaption>AI makes the first draft. An expert checks it. People make the decisions.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>AI at each step of the L&amp;D cycle</h3>
          <table class="lc-table">
            <thead><tr><th>Step</th><th>How AI can help</th><th>What a person must still do</th></tr></thead>
            <tbody>
              <tr><td><strong>Find needs</strong></td><td>Draft survey and interview questions. Group hundreds of survey comments into themes.</td><td>Talk to managers. Check the themes against real data, such as audit results.</td></tr>
              <tr><td><strong>Design</strong></td><td>Suggest learning objectives and a course outline</td><td>Make sure the objectives match the real job and the business goal</td></tr>
              <tr><td><strong>Build content</strong></td><td>Draft explanations, examples, workplace scenarios, job aids (one-page guides used on the job) and quizzes</td><td>Ask a subject expert to check every fact, number and safety step</td></tr>
              <tr><td><strong>Deliver</strong></td><td>Draft workshop agendas and facilitator notes. Act as a practice partner for role-plays.</td><td>Run the session. Watch how people react. Give real feedback.</td></tr>
              <tr><td><strong>Measure</strong></td><td>Summarise feedback forms. Suggest what to measure.</td><td>Check the numbers. Decide what the results mean and what to change.</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>A weak prompt and a better prompt</h3>
          <p>Mohan needs a 10-minute <strong>toolbox talk</strong> (a short safety talk a supervisor gives at the start of a shift). The topic is allergen changeover: cleaning a line after a product with peanuts, before a product without peanuts.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Write a talk about allergens.</code></pre>
          <p>This gives a long, general essay. It does not fit a 10-minute talk on a factory floor.</p>
          <p><strong>Better prompt:</strong></p>
          <pre><code>You are a food safety trainer. Draft a 10-minute toolbox talk
        for line workers at a food factory in India. Topic: allergen
        changeover, when a line moves from a product with peanuts to a
        product without peanuts.
        Include: why it matters (2 sentences), 3 key steps, 1 short
        real-life style example (made up), and 2 questions to ask the team.
        Use short sentences that are easy to translate into Marathi.
        Mark every safety fact or limit with [CHECK] so our QA manager
        can confirm it against our own procedure.</code></pre>
          <p>The better prompt gives a role, an audience, a time limit, a structure and a rule for facts. The <code>[CHECK]</code> tags make the expert review faster. But AI can still miss a tag, so the expert reads the whole draft.</p>
        </div>
        <div class="lc-card">
          <h3>Three rules for AI in L&amp;D</h3>
          <ul class="lc-list">
            <li><strong>Accuracy.</strong> AI can invent facts, rules and numbers that sound right. Never teach a fact you have not checked.</li>
            <li><strong>Expert review.</strong> A subject expert approves all content before use. At Sahyadri Foods, the QA manager, Rekha Joshi, checks every food safety fact against the factory's own procedures.</li>
            <li><strong>Privacy.</strong> Ratings, test scores and performance notes are personal data. Do not paste real names or personal details into public AI tools. Use made-up data or codes like S01, and use only the AI tools your company has approved. In India, the DPDP Act 2023 (Digital Personal Data Protection Act) covers employee data. This is not legal advice; check with your HR legal counsel.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Activity: Mohan drafts a toolbox talk</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="thought" data-label="The task">Mohan needs a 10-minute toolbox talk on allergen changeover. The 40 supervisors will give it to their teams next week.</li>
              <li data-kind="user" data-label="Mohan's prompt">He uses the better prompt above in the company's approved AI tool. He asks for 3 key steps, 2 team questions and [CHECK] tags on every safety fact.</li>
              <li data-kind="answer" data-label="AI draft">The draft is clear and short. The steps are: clean and inspect all contact surfaces [CHECK], change gloves and aprons [CHECK], and get a sign-off before restart [CHECK]. It also says: "A quick rinse with hot water removes all allergen traces."</li>
              <li data-kind="warn" data-label="Catch this">The rinse sentence has no [CHECK] tag, and it is not safe to teach. The cleaning method must come from the factory's own procedure, not from AI.</li>
              <li data-kind="check" data-label="Expert review">Mohan sends the whole draft to Rekha, the QA manager. She deletes the rinse sentence. She adds the cleaning and swab-test steps from Sahyadri's SOP (standard operating procedure: the written steps for a task).</li>
              <li data-kind="tool" data-label="Translate">Mohan asks AI for a Marathi version. A supervisor who reads both languages checks it line by line and fixes two words.</li>
              <li data-kind="check" data-label="Mohan decides">Mohan saves the approved version with Rekha's name and the review date. Only this version goes to the supervisors.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to draft a short toolbox talk or team briefing on a topic from your workplace. Look at how it marks facts for expert review.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a workplace trainer in India. Draft a [10]-minute toolbox talk (a short talk a supervisor gives at the start of a shift).

        Audience: [line workers at a food factory in Maharashtra]
        Topic: [allergen changeover: cleaning a line after a product with peanuts, before a product without peanuts]

        Structure:
        1. Why it matters (2 sentences)
        2. 3 key steps, one short sentence each
        3. One short made-up example of what can go wrong
        4. 2 questions the supervisor asks the team

        Rules:
        - Use short, simple sentences that are easy to translate.
        - Put [CHECK] after every safety fact, number, limit or legal point. Our expert will confirm these against our own procedures.
        - Do not invent laws, statistics or company rules.
        - Use job titles, not people's names.

        At the end, list the [CHECK] items as a short checklist for the expert reviewer.</pre>
            <ul class="ai-try-checks">
              <li>Every safety fact, number or limit has a [CHECK] tag. Look for any that were missed.</li>
              <li>The talk fits the time. About 120 to 150 spoken words is roughly one minute.</li>
              <li>No law, statistic or company rule is stated as fact without a tag.</li>
              <li>The words are simple enough for your audience.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> AI is a fast first-draft writer for L&amp;D, not a subject expert. Give it a clear role, audience and format. Then let a real expert check every fact, and let people make every decision about learners.
        </div>
      HTML
      starter_code: nil
    },
    3 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-hr">HR & Recruitment</div>
          <h1 class="lc-title">Finding Skill Gaps</h1>
        </div>
        <p class="lc-lead">A <strong>skill gap</strong> is the difference between the skill level a job needs and the level a person has today. If you know the gaps, you can train people in what they really need. You avoid training them in what they already know. In this lesson you will build a simple skills framework, collect self and manager ratings, and find the gaps with a spreadsheet. You will do it for the 40 shift supervisors at Sahyadri Foods Ltd.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="Bar chart of six supervisor skills. For each skill, a dashed outline shows the required level and a filled bar shows the average manager rating. The biggest gap is CCP checks and records: required 4, average 2.4, gap 1.6.">
            <g font-family="inherit" font-size="12" fill="#e2e0f0">
              <text x="20" y="24" fill="#9b99b8">Sahyadri Foods: 40 supervisors, average manager rating (scale 1 to 4)</text>
              <g text-anchor="end">
                <text x="240" y="60">Hygiene and GMP checks</text>
                <text x="240" y="96" fill="#fcd34d" font-weight="700">CCP checks and records</text>
                <text x="240" y="132">Allergen changeover</text>
                <text x="240" y="168">Handling non-conformance</text>
                <text x="240" y="204">Shift handover</text>
                <text x="240" y="240">Feedback to workers</text>
              </g>
              <g fill="none" stroke="#9b99b8" stroke-dasharray="4 3">
                <rect x="250" y="44" width="400" height="24"/>
                <rect x="250" y="80" width="400" height="24"/>
                <rect x="250" y="116" width="300" height="24"/>
                <rect x="250" y="152" width="300" height="24"/>
                <rect x="250" y="188" width="300" height="24"/>
                <rect x="250" y="224" width="300" height="24"/>
              </g>
              <rect x="250" y="44" width="310" height="24" fill="#3b82f6"/>
              <rect x="250" y="80" width="240" height="24" fill="#f59e0b"/>
              <rect x="250" y="116" width="220" height="24" fill="#3b82f6"/>
              <rect x="250" y="152" width="190" height="24" fill="#3b82f6"/>
              <rect x="250" y="188" width="270" height="24" fill="#3b82f6"/>
              <rect x="250" y="224" width="200" height="24" fill="#3b82f6"/>
              <g text-anchor="end" font-size="11" fill="#ffffff" font-weight="700">
                <text x="554" y="60">3.1</text>
                <text x="484" y="96" fill="#1f1f44">2.4</text>
                <text x="464" y="132">2.2</text>
                <text x="434" y="168">1.9</text>
                <text x="514" y="204">2.7</text>
                <text x="444" y="240">2.0</text>
              </g>
              <g font-size="12" fill="#9b99b8">
                <text x="664" y="60">gap 0.9</text>
                <text x="664" y="96" fill="#fcd34d" font-weight="700">gap 1.6</text>
                <text x="664" y="132">gap 0.8</text>
                <text x="664" y="168">gap 1.1</text>
                <text x="664" y="204">gap 0.3</text>
                <text x="664" y="240">gap 1.0</text>
              </g>
              <line x1="250" y1="254" x2="650" y2="254" stroke="#4b4a78"/>
              <g text-anchor="middle" font-size="11" fill="#9b99b8">
                <text x="250" y="268">0</text><text x="350" y="268">1</text><text x="450" y="268">2</text><text x="550" y="268">3</text><text x="650" y="268">4</text>
              </g>
              <rect x="250" y="281" width="14" height="10" fill="#3b82f6"/><text x="270" y="290" font-size="11" fill="#9b99b8">Manager average</text>
              <rect x="400" y="281" width="14" height="10" fill="none" stroke="#9b99b8" stroke-dasharray="3 2"/><text x="420" y="290" font-size="11" fill="#9b99b8">Required level</text>
              <rect x="540" y="281" width="14" height="10" fill="#f59e0b"/><text x="560" y="290" font-size="11" fill="#9b99b8">Biggest gap</text>
            </g>
          </svg>
          <figcaption>Gap = required level minus the average rating. CCP checks and records has the biggest gap.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Step 1: a skills framework</h3>
          <p>A <strong>skills framework</strong> is a list of the key skills for a role, with a short description of each level. Mohan agreed six skills for supervisors with Sunita, the production manager and the QA manager. Two terms first. <strong>GMP</strong> (good manufacturing practice) means basic hygiene rules, such as hand washing and clean tools. <strong>Non-conformance</strong> means a check that fails, such as a temperature below the limit.</p>
          <table class="lc-table">
            <thead><tr><th>Skill</th><th>Required level</th></tr></thead>
            <tbody>
              <tr><td>Hygiene and GMP checks</td><td>4</td></tr>
              <tr><td>CCP checks and records (CCP: critical control point, a step where a check stops a food safety hazard)</td><td>4</td></tr>
              <tr><td>Allergen changeover</td><td>3</td></tr>
              <tr><td>Handling non-conformance (hold the product, tell QA, record the action)</td><td>3</td></tr>
              <tr><td>Shift handover and briefing</td><td>3</td></tr>
              <tr><td>Feedback to workers</td><td>3</td></tr>
            </tbody>
          </table>
          <p>Each level is described by what a person <em>does</em>, so two raters can agree. Here is the scale for "CCP checks and records":</p>
          <table class="lc-table">
            <thead><tr><th>Level</th><th>Name</th><th>What you can see</th></tr></thead>
            <tbody>
              <tr><td>1</td><td>Aware</td><td>Knows the checks exist. Often misses readings or asks others to fill the sheet.</td></tr>
              <tr><td>2</td><td>Does it with help</td><td>Takes readings on time. Needs help when a reading fails.</td></tr>
              <tr><td>3</td><td>Does it alone</td><td>Takes and records every reading correctly, including the corrective action for a failed reading.</td></tr>
              <tr><td>4</td><td>Can teach and check others</td><td>Does level 3, trains line workers and spots mistakes in their records.</td></tr>
            </tbody>
          </table>
          <p>AI is good at drafting level descriptions like these. The managers and the QA manager must then edit them to match real work.</p>
        </div>
        <div class="lc-card">
          <h3>Step 2: self ratings and manager ratings</h3>
          <p>Each supervisor rated themselves, and their manager also rated them. Here are the team averages for all 40 supervisors. (For example, the 40 manager ratings for hygiene add up to 124, and 124 ÷ 40 = 3.1.)</p>
          <table class="lc-table">
            <thead><tr><th>Skill</th><th>Required</th><th>Self average</th><th>Manager average</th><th>Gap (required − manager)</th><th>Self − manager</th></tr></thead>
            <tbody>
              <tr><td>Hygiene and GMP checks</td><td>4</td><td>3.4</td><td>3.1</td><td>0.9</td><td>0.3</td></tr>
              <tr><td><strong>CCP checks and records</strong></td><td>4</td><td>3.3</td><td>2.4</td><td><strong>1.6</strong></td><td>0.9</td></tr>
              <tr><td>Allergen changeover</td><td>3</td><td>2.9</td><td>2.2</td><td>0.8</td><td>0.7</td></tr>
              <tr><td>Handling non-conformance</td><td>3</td><td>2.6</td><td>1.9</td><td>1.1</td><td>0.7</td></tr>
              <tr><td>Shift handover and briefing</td><td>3</td><td>3.2</td><td>2.7</td><td>0.3</td><td>0.5</td></tr>
              <tr><td>Feedback to workers</td><td>3</td><td>3.0</td><td>2.0</td><td>1.0</td><td><strong>1.0</strong></td></tr>
            </tbody>
          </table>
          <ul class="lc-list">
            <li><strong>The biggest gap</strong> is CCP checks and records (1.6), then handling non-conformance (1.1).</li>
            <li><strong>Self ratings are higher than manager ratings</strong> for every skill. This is common. The difference is largest for feedback (1.0) and CCP records (0.9). People may not know what "good" looks like yet.</li>
            <li><strong>Ratings are opinions.</strong> Check them against evidence. At Sahyadri, the audit of CCP record sheets supports the low CCP rating.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Step 3: find the gaps in a spreadsheet</h3>
          <p>Mohan tests his sheet on 5 supervisors first. He uses codes S01 to S05, not names. The names stay in the HRMS (HR management system, such as Keka, greytHR or Zoho People). Columns B to G hold the manager ratings for the six skills, in the order above.</p>
          <table class="lc-table">
            <thead><tr><th>Row</th><th>A</th><th>B Hygiene</th><th>C CCP</th><th>D Allergen</th><th>E Non-conf.</th><th>F Handover</th><th>G Feedback</th></tr></thead>
            <tbody>
              <tr><td>2</td><td>S01</td><td>3</td><td>2</td><td>2</td><td>2</td><td>3</td><td>2</td></tr>
              <tr><td>3</td><td>S02</td><td>4</td><td>3</td><td>3</td><td>2</td><td>3</td><td>2</td></tr>
              <tr><td>4</td><td>S03</td><td>3</td><td>2</td><td>2</td><td>1</td><td>2</td><td>2</td></tr>
              <tr><td>5</td><td>S04</td><td>3</td><td>3</td><td>2</td><td>2</td><td>3</td><td>3</td></tr>
              <tr><td>6</td><td>S05</td><td>2</td><td>2</td><td>3</td><td>2</td><td>3</td><td>1</td></tr>
              <tr><td>7</td><td>Average</td><td>3.0</td><td>2.4</td><td>2.4</td><td>1.8</td><td>2.8</td><td>2.0</td></tr>
              <tr><td>8</td><td>Required</td><td>4</td><td>4</td><td>3</td><td>3</td><td>3</td><td>3</td></tr>
              <tr><td>9</td><td>Gap</td><td>1.0</td><td>1.6</td><td>0.6</td><td>1.2</td><td>0.2</td><td>1.0</td></tr>
              <tr><td>10</td><td>Below required</td><td>4</td><td>5</td><td>3</td><td>5</td><td>1</td><td>4</td></tr>
            </tbody>
          </table>
          <p>Type these formulas in column B, then copy them across to column G:</p>
          <pre><code>B7:  =AVERAGE(B2:B6)          (15 ÷ 5 = 3.0)
        B9:  =B8-B7                   (4 − 3.0 = 1.0)
        B10: =COUNTIF(B2:B6,"&lt;"&amp;B8)   (4 people are below level 4)</code></pre>
          <p>Row 10 tells you how many people need help, not only the average. For example, only 1 of these 5 supervisors is below the required level for handover. But all 5 are below it for CCP records and non-conformance. To see who needs help, select B2:G6 and add conditional formatting with the custom formula <code>=B2&lt;B$8</code>. A cell then turns red when it is below its column's required level. Always let the spreadsheet do the maths. Do not ask AI to calculate averages for you.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: steps of a skill gap analysis</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put Mohan's steps in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Agree the key skills for the role with managers and experts</li>
              <li data-order="2">Describe what each level from 1 to 4 looks like for every skill</li>
              <li data-order="3">Set the required level for each skill</li>
              <li data-order="4">Collect self ratings and manager ratings, using codes instead of names</li>
              <li data-order="5">Calculate averages, gaps and counts in a spreadsheet</li>
              <li data-order="6">Check the biggest gaps against evidence, such as audit records</li>
              <li data-order="7">Share the results with Sunita and choose which gaps to work on first</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to draft a skills framework and a gap-analysis sheet for a role you know. Then check its formulas and numbers yourself.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an L&amp;D specialist. Help me build a skill gap analysis.

        Role: [shift supervisor at a food factory]
        Main goal of the role: [run food safety checks correctly and lead a shift team of 20 line workers]

        1. Suggest [6] key skills for this role. For each skill, describe levels 1 to 4 (1 = Aware, 2 = Does it with help, 3 = Does it alone, 4 = Can teach and check others). Describe each level as something a manager can see the person do.
        2. Suggest a required level for each skill, with a one-line reason.
        3. Design a Google Sheets layout: rows 2 to 6 for 5 made-up people with codes S01 to S05 (no names), one column per skill. Add rows for Average, Required, Gap (required minus average) and Below required (how many people are below the required level). Give the formula for each of these rows in column B.
        4. Fill in made-up ratings and show the results.

        Use simple English. Present the levels as a table.</pre>
            <ul class="ai-try-checks">
              <li>Each level describes something a person does, not a feeling like "confident".</li>
              <li>Recalculate each average and gap yourself. AI often makes small maths mistakes.</li>
              <li>The count formula should look like =COUNTIF(B2:B6,"&lt;"&amp;B8).</li>
              <li>Only codes are used, no names or personal details.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A good gap analysis needs three things: clear level descriptions, ratings from more than one person, and a check against real evidence. AI can draft the framework, but the spreadsheet does the maths and people judge the results.
        </div>
      HTML
      starter_code: nil
    },
    4 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-hr">HR & Recruitment</div>
          <h1 class="lc-title">Learning Needs Analysis</h1>
        </div>
        <p class="lc-lead">A <strong>learning needs analysis</strong> (LNA, also called a training needs analysis) answers one question: what must people learn so the business can reach its goal? It starts with a business problem, not with a course. Many performance problems are not caused by missing skills. They are caused by broken tools, too little time or confusing forms. Training cannot fix those. In this lesson you will follow Mohan at Sahyadri Foods. He finds the real causes of a problem, separates training needs from other needs, and ranks them.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="A decision tree for a performance problem. First question: do they know how? If no, training can help: 30 sheets. If yes: can they do it here? If no, fix tools, time and forms: 42 sheets. If yes: is good work checked? If no, fix feedback and follow-up.">
            <defs><marker id="ld4a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="20" y="14" width="720" height="40" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="380" y="39">Problem: 72 of 600 CCP record sheets (12%) had errors, April to June 2026</text>
              <rect x="30" y="90" width="210" height="48" rx="10" fill="#27274e" stroke="#3b82f6"/>
              <text x="135" y="119" font-weight="700">Do they know how?</text>
              <rect x="275" y="90" width="210" height="48" rx="10" fill="#27274e" stroke="#3b82f6"/>
              <text x="380" y="119" font-weight="700">Can they do it here?</text>
              <rect x="520" y="90" width="210" height="48" rx="10" fill="#27274e" stroke="#3b82f6"/>
              <text x="625" y="119" font-weight="700">Is good work checked?</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#ld4a)">
                <line x1="135" y1="55" x2="135" y2="86"/>
                <line x1="241" y1="114" x2="271" y2="114"/>
                <line x1="486" y1="114" x2="516" y2="114"/>
                <line x1="135" y1="139" x2="135" y2="186"/>
                <line x1="380" y1="139" x2="380" y2="186"/>
                <line x1="625" y1="139" x2="625" y2="186"/>
              </g>
              <g font-size="11" fill="#9b99b8">
                <text x="256" y="106">Yes</text><text x="501" y="106">Yes</text>
                <text x="152" y="167">No</text><text x="397" y="167">No</text><text x="642" y="167">No</text>
              </g>
              <rect x="30" y="190" width="210" height="62" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="135" y="215" font-weight="700" fill="#6ee7b7">Training can help</text>
              <text x="135" y="237" font-size="11" fill="#9b99b8">30 sheets: no corrective action</text>
              <rect x="275" y="190" width="210" height="62" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="380" y="215" font-weight="700" fill="#fcd34d">Fix tools, time, forms</text>
              <text x="380" y="237" font-size="11" fill="#9b99b8">42 sheets: probes, rota, form</text>
              <rect x="520" y="190" width="210" height="62" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="625" y="215" font-weight="700" fill="#f9a8d4">Fix feedback, follow-up</text>
              <text x="625" y="237" font-size="11" fill="#9b99b8">managers review sheets daily</text>
              <text x="380" y="283" font-size="12" fill="#c4b5fd">Training can fix 30 of 72 errors (42%). The other 42 (58%) need other fixes.</text>
            </g>
          </svg>
          <figcaption>Ask the questions in order. Training is the answer only when people do not know how.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Start with the business goal</h3>
          <p>Sunita does not ask Mohan for "a food safety course". She gives him a business problem. From April to June 2026, internal auditors checked 600 CCP record sheets. (A CCP, or critical control point, is a step where a check stops a food safety hazard.)</p>
          <table class="lc-table">
            <thead><tr><th>Measure</th><th>Now (April to June 2026)</th><th>Goal (by March 2027)</th></tr></thead>
            <tbody>
              <tr><td>CCP record sheets with errors</td><td>72 of 600 = 12%</td><td>Under 3% (fewer than 18 of 600)</td></tr>
              <tr><td>Batches held after allergen changeover mistakes</td><td>4 batches, ₹2,60,000 in rework and waste</td><td>0</td></tr>
            </tbody>
          </table>
          <p>An LNA looks at three levels. <strong>Organisation:</strong> what the business needs (safe food, clean audits). <strong>Job:</strong> what a supervisor must do (correct checks and records). <strong>Person:</strong> which people have gaps (the skill ratings from the gap analysis). All numbers in this story are made up.</p>
        </div>
        <div class="lc-card">
          <h3>Is training the answer?</h3>
          <p>Mohan and the QA manager read all 72 faulty sheets. They also spend two shifts on the factory floor and talk to supervisors. A classic test question helps: <em>"Could they do it correctly if they really had to?"</em> If yes, the problem is not a skill problem.</p>
          <table class="lc-table">
            <thead><tr><th>Cause they found</th><th>Sheets</th><th>Type of fix</th></tr></thead>
            <tbody>
              <tr><td>Corrective action missing or wrong: supervisors did not know what to do or write when a reading failed</td><td>30</td><td><strong>Training</strong></td></tr>
              <tr><td>Readings missed at shift change: only 5 minutes of overlap between shifts</td><td>18</td><td>Process: production manager changes the rota to a 15-minute overlap</td></tr>
              <tr><td>Wrong readings: probe thermometers not calibrated (checked against a standard)</td><td>14</td><td>Equipment: maintenance calibrates probes every week</td></tr>
              <tr><td>Entries in the wrong column: two columns on the form look alike</td><td>10</td><td>Tool: QA redesigns the form</td></tr>
              <tr><td><strong>Total</strong></td><td><strong>72</strong></td><td>Training: 30 (42%). Other fixes: 42 (58%).</td></tr>
            </tbody>
          </table>
          <p>If Mohan had run only a course, it could fix at most 30 of the 72 errors. The goal of under 3% needs all four fixes. A good L&amp;D person says this clearly to management.</p>
          <p>AI can help here. It can draft interview questions for supervisors and group their answers into themes. But AI cannot walk the factory floor, read the real sheets or see a broken probe. People must collect that evidence.</p>
        </div>
        <div class="lc-card">
          <h3>Prioritise the training needs</h3>
          <p>You cannot train everything at once. Mohan scores each training need from 1 to 5 for <strong>impact</strong> (how much harm the gap can cause) and <strong>urgency</strong> (how soon it must be fixed). He agrees the scores with Sunita and the QA manager. In a sheet, column A is the need, B is impact and C is urgency. In D2, type <code>=B2*C2</code> and copy it down.</p>
          <table class="lc-table">
            <thead><tr><th>A: Training need</th><th>B: Impact</th><th>C: Urgency</th><th>D: Score</th></tr></thead>
            <tbody>
              <tr><td>CCP records and corrective action</td><td>5</td><td>5</td><td>25</td></tr>
              <tr><td>Allergen changeover checks</td><td>5</td><td>4</td><td>20</td></tr>
              <tr><td>Feedback to workers</td><td>3</td><td>3</td><td>9</td></tr>
              <tr><td>Hygiene and GMP checks</td><td>4</td><td>2</td><td>8</td></tr>
              <tr><td>Shift handover and briefing</td><td>2</td><td>2</td><td>4</td></tr>
            </tbody>
          </table>
          <p>Notice the allergen need. Its skill gap was small (0.8), but it ranks second. An allergen mistake can harm customers and cause product holds. Priority is not only about the size of the gap. It is also about what happens if the gap stays.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: training or another fix?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Mohan found these problems. Which ones can training fix?</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="train" data-label="Training can help"></div>
              <div data-sorter-target="bucket" data-bucket="other" data-label="Needs another fix"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="train" data-why="This is missing knowledge. Training and practice can fix it.">Supervisors do not know what to write when a temperature reading fails</li>
              <li data-bucket="other" data-why="This is an equipment problem. Maintenance must calibrate or replace the probe.">The probe thermometer on Line 3 gives readings that are too high</li>
              <li data-bucket="other" data-why="The rota does not give enough time. A process change fixes it.">Supervisors have only 5 minutes to hand over between shifts</li>
              <li data-bucket="train" data-why="This is a new skill for newly promoted supervisors. Practice with feedback helps.">New supervisors have never corrected a worker who breaks a hygiene rule</li>
              <li data-bucket="other" data-why="The form design causes the mistake. Redesign the form.">Two columns on the record form look alike, so people write in the wrong one</li>
              <li data-bucket="other" data-why="They already know how. The problem is what managers reward, so fix targets and follow-up.">Supervisors know the allergen checklist but skip it because only speed is rewarded</li>
              <li data-bucket="train" data-why="This is missing understanding. A short lesson and discussion can fix it.">Supervisors cannot explain why the metal detector check matters</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Give AI a made-up performance problem and its causes. Ask it to separate training needs from other fixes and rank the training needs.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an L&amp;D consultant doing a learning needs analysis.

        Business problem: [At a food factory, 72 of 600 food safety record sheets (12%) had errors last quarter. Goal: under 3%.]

        Causes we found (made-up data):
        [- 30 sheets: supervisors did not know what to write when a reading failed
        - 18 sheets: readings missed at shift change, only 5 minutes of overlap
        - 14 sheets: thermometers not calibrated
        - 10 sheets: confusing form with two similar columns]

        1. For each cause, say: training need or non-training need. Give a one-line reason and suggest who should own the fix.
        2. Calculate what share of the problem training can fix. Show the working.
        3. For the training needs, suggest an Impact score and an Urgency score (1 to 5) with reasons. Score = Impact x Urgency.
        4. List 5 questions I should ask supervisors on the factory floor to check these causes.
        5. Write a 4-sentence note to the HR head explaining why training alone will not reach the goal.

        Use simple English and tables.</pre>
            <ul class="ai-try-checks">
              <li>Only the missing-knowledge cause is called a training need.</li>
              <li>The share is correct: 30 ÷ 72 is about 42%.</li>
              <li>Scores are suggestions. You agree the final scores with managers.</li>
              <li>The note to the HR head is clear, polite and does not blame people.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Start with the business problem, not with a course. Find the real causes with evidence. Train only where people do not know how, and fix tools, time and processes in other ways. Then rank training needs by impact and urgency, not only by gap size.
        </div>
      HTML
      starter_code: nil
    },
    5 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-hr">HR & Recruitment</div>
          <h1 class="lc-title">Writing Learning Objectives</h1>
        </div>
        <p class="lc-lead">A <strong>learning objective</strong> says what a learner will be able to <em>do</em> after the training. Good objectives guide everything else: the content, the activities, the quiz and the way you measure results. Weak objectives lead to vague training that nobody can measure. In this lesson you will write clear, measurable objectives with the ABCD method. You will choose the right level of thinking with Bloom's levels. You will also write the objectives for the Sahyadri Foods supervisor programme.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="Bloom's levels shown as six steps, from Remember, Understand and Apply up to Analyse, Evaluate and Create, with example verbs on each step. Below, a weak objective, understand food safety, next to a strong, measurable one.">
            <defs><marker id="ld5a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="20" y="22" text-anchor="start" font-size="12" fill="#9b99b8">Bloom's levels: six levels of thinking</text>
              <text x="40" y="54" text-anchor="start" font-size="11" fill="#9b99b8">higher step = harder thinking</text>
              <line x1="40" y1="122" x2="330" y2="44" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ld5a)"/>
              <rect x="20" y="180" width="112" height="50" rx="6" fill="#27274e" stroke="#22d3ee"/>
              <text x="76" y="202" font-weight="700">Remember</text><text x="76" y="220" font-size="11" fill="#9b99b8">list, name</text>
              <rect x="140" y="152" width="112" height="78" rx="6" fill="#27274e" stroke="#3b82f6"/>
              <text x="196" y="174" font-weight="700">Understand</text><text x="196" y="192" font-size="11" fill="#9b99b8">explain, describe</text>
              <rect x="260" y="124" width="112" height="106" rx="6" fill="#27274e" stroke="#10b981"/>
              <text x="316" y="146" font-weight="700">Apply</text><text x="316" y="164" font-size="11" fill="#9b99b8">use, carry out</text>
              <rect x="380" y="96" width="112" height="134" rx="6" fill="#27274e" stroke="#f59e0b"/>
              <text x="436" y="118" font-weight="700">Analyse</text><text x="436" y="136" font-size="11" fill="#9b99b8">compare, sort</text>
              <rect x="500" y="68" width="112" height="162" rx="6" fill="#27274e" stroke="#ec4899"/>
              <text x="556" y="90" font-weight="700">Evaluate</text><text x="556" y="108" font-size="11" fill="#9b99b8">judge, decide</text>
              <rect x="620" y="40" width="112" height="190" rx="6" fill="#27274e" stroke="#8b5cf6"/>
              <text x="676" y="62" font-weight="700">Create</text><text x="676" y="80" font-size="11" fill="#9b99b8">design, plan</text>
              <g text-anchor="start" font-size="12">
                <text x="20" y="260"><tspan fill="#fca5a5" font-weight="700">Weak:</tspan> "Understand food safety." (You cannot see or measure it.)</text>
                <text x="20" y="284"><tspan fill="#6ee7b7" font-weight="700">Strong:</tspan> "Given a failed CCP reading, record the corrective action with no missing fields."</text>
              </g>
            </g>
          </svg>
          <figcaption>Pick a verb from the level you need, and make sure you can see and measure it.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The ABCD method</h3>
          <p>A clear objective has four parts. You do not always need to write all four, but you should always know them.</p>
          <table class="lc-table">
            <thead><tr><th>Part</th><th>Question</th><th>Sahyadri example</th></tr></thead>
            <tbody>
              <tr><td><strong>A</strong>udience</td><td>Who will learn?</td><td>Each shift supervisor</td></tr>
              <tr><td><strong>B</strong>ehaviour</td><td>What will they do? (one verb you can see)</td><td>will fill in every field of the CCP record sheet, including the corrective action for any failed reading</td></tr>
              <tr><td><strong>C</strong>ondition</td><td>In what situation, with what tools?</td><td>Given a record sheet and a set of readings</td></tr>
              <tr><td><strong>D</strong>egree</td><td>How well? How will we know?</td><td>with no errors on 3 of 3 practice sheets</td></tr>
            </tbody>
          </table>
          <p>Put together: <em>"Given a CCP record sheet and readings, each supervisor will fill in every field, including corrective actions, with no errors on 3 of 3 practice sheets."</em> (CCP means critical control point: a step where a check stops a food safety hazard.)</p>
          <p>Avoid verbs you cannot see, such as "know", "understand", "learn about" and "be aware of". Ask yourself: what would I watch the person do to prove they understand?</p>
        </div>
        <div class="lc-card">
          <h3>Bloom's levels</h3>
          <p><strong>Bloom's levels</strong> (also called Bloom's taxonomy) sort thinking into six levels, from simple recall to creating something new. This course uses the revised version, published in 2001, which names the levels with verbs. Choose the level the job really needs. Supervisors do not only need to remember rules. They must apply them and sometimes make decisions.</p>
          <table class="lc-table">
            <thead><tr><th>Level</th><th>Example verbs</th><th>Supervisor example</th></tr></thead>
            <tbody>
              <tr><td>Remember</td><td>list, name, state</td><td>List the three CCPs on Line 2.</td></tr>
              <tr><td>Understand</td><td>explain, describe</td><td>Explain to a new worker why the metal detector check matters.</td></tr>
              <tr><td>Apply</td><td>use, carry out, fill in</td><td>Fill in a CCP record sheet correctly after a failed reading.</td></tr>
              <tr><td>Analyse</td><td>compare, sort, find the cause</td><td>Find the likely cause of three failed readings in one shift.</td></tr>
              <tr><td>Evaluate</td><td>judge, decide, check</td><td>Decide whether a line is clean enough to restart after an allergen changeover.</td></tr>
              <tr><td>Create</td><td>design, plan, write</td><td>Plan the briefing for a shift with two new workers.</td></tr>
            </tbody>
          </table>
          <p>Match your test to the level. A multiple-choice quiz can check "remember". It cannot prove that someone can "decide" on a real factory line. For that, you need an observed task or a realistic scenario.</p>
        </div>
        <div class="lc-card">
          <h3>Weak and strong objectives</h3>
          <table class="lc-table">
            <thead><tr><th>Weak</th><th>What is wrong</th><th>Strong</th></tr></thead>
            <tbody>
              <tr><td>Understand allergen control.</td><td>"Understand" cannot be seen. No condition or degree.</td><td>During a line changeover, complete the 8-point allergen checklist and decide to release or hold the line. The decision matches the QA check in 2 out of 2 observed changeovers.</td></tr>
              <tr><td>Learn about giving feedback.</td><td>A topic, not a behaviour</td><td>In a role-play, give feedback to a worker who skips hand washing, using SBI (situation, behaviour, impact). Score at least 4 out of 5 on the observer checklist.</td></tr>
              <tr><td>Know what to do when a check fails.</td><td>"Know" cannot be seen, and it is not linked to real work</td><td>When a CCP reading fails, hold the product, tell QA within 15 minutes and record the action, as seen in a shop-floor drill.</td></tr>
            </tbody>
          </table>
          <p>Each strong objective links to the business goal: fewer faulty record sheets and no allergen batch holds. If an objective does not help the goal, ask why it is in the course.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: Mohan improves an objective with AI</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="thought" data-label="First draft">Mohan's first objective says: "Supervisors will understand CCP records." He knows it is weak, but he is short of time.</li>
              <li data-kind="user" data-label="Mohan's prompt">Rewrite this objective in ABCD format with one observable verb. Tell me the Bloom's level. Our business goal is fewer than 3% of CCP record sheets with errors.</li>
              <li data-kind="answer" data-label="AI reply">"Given a CCP record sheet and readings, each supervisor will fill in every field with 100% accuracy, within 2 minutes per sheet." Level: Apply.</li>
              <li data-kind="warn" data-label="Catch this">The AI added "within 2 minutes". Nobody has measured how long a sheet takes. A time limit could push supervisors to rush a safety record.</li>
              <li data-kind="check" data-label="Expert check">Mohan asks Rekha, the QA manager. They remove the time limit. They add "including corrective actions". They set the degree to "no errors on 3 of 3 practice sheets".</li>
              <li data-kind="check" data-label="Link to the test">Mohan notes how he will check it: practice sheets in the workshop, then real sheets reviewed by QA for the next month.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Paste in some weak objectives from a real or made-up course. Ask AI to rewrite them and explain its choices.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an instructional designer. Rewrite these weak learning objectives.

        Learners: [shift supervisors at a food factory in India]
        Business goal: [fewer food safety record errors and no allergen mistakes]

        Weak objectives:
        [1. Understand hygiene rules.
        2. Learn about shift handover.
        3. Be aware of how to give feedback to workers.]

        For each objective:
        1. Say in one line why it is weak.
        2. Rewrite it using ABCD: Audience, Behaviour (one verb you can observe), Condition, Degree.
        3. Name the Bloom's level (Remember, Understand, Apply, Analyse, Evaluate or Create).
        4. Suggest one way to check it, such as an observed task, a role-play or a scenario question.

        Rules: Do not invent time limits, legal rules or safety limits. If a degree needs a number that an expert must set, write [EXPERT TO SET]. Use simple English. Give the answer as a table.</pre>
            <ul class="ai-try-checks">
              <li>Each new objective has one verb you can see, not "understand" or "know".</li>
              <li>The Bloom's level matches the verb.</li>
              <li>The check fits the level. A simple quiz cannot prove a decision on the job.</li>
              <li>No numbers, time limits or safety limits are invented. Look for [EXPERT TO SET].</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A good objective describes what people will do, in what situation, and how well. Choose the Bloom's level the job needs, and match your test to it. AI can rewrite objectives fast, but you must remove any limits or numbers it invented.
        </div>
      HTML
      starter_code: nil
    },
    6 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-hr">HR & Recruitment</div>
          <h1 class="lc-title">Designing a Course</h1>
        </div>
        <p class="lc-lead">You have clear learning objectives. Now you must turn them into a course that fits real people, real shifts and real time limits. In this lesson you will learn <strong>backward design</strong>: start from what people must do, plan how you will check it, plan the practice, and only then add content. You will group the work into modules and build a course outline with AI. You will follow Mohan as he designs the "Safe Shift Leader" programme for the 40 supervisors at Sahyadri Foods Ltd.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 312" role="img" aria-label="Top: backward design in four steps: objectives, checks, practice, then content. Bottom: the Safe Shift Leader programme map. Module 1 CCP records in week 1, Module 2 when a check fails in week 3, Module 3 allergen changeover in week 5 and Module 4 leading the shift in week 7, with floor practice between sessions.">
            <defs><marker id="ld6a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="20" y="22" text-anchor="start" font-size="12" fill="#9b99b8">Backward design: plan in this order</text>
              <rect x="20" y="34" width="160" height="58" rx="10" fill="#27274e" stroke="#8b5cf6"/>
              <text x="100" y="58" font-weight="700">1. Objectives</text><text x="100" y="78" font-size="11" fill="#9b99b8">what they will do</text>
              <rect x="210" y="34" width="160" height="58" rx="10" fill="#27274e" stroke="#3b82f6"/>
              <text x="290" y="58" font-weight="700">2. Checks</text><text x="290" y="78" font-size="11" fill="#9b99b8">how we will know</text>
              <rect x="400" y="34" width="160" height="58" rx="10" fill="#27274e" stroke="#10b981"/>
              <text x="480" y="58" font-weight="700">3. Practice</text><text x="480" y="78" font-size="11" fill="#9b99b8">activities to get there</text>
              <rect x="590" y="34" width="160" height="58" rx="10" fill="#27274e" stroke="#f59e0b"/>
              <text x="670" y="58" font-weight="700">4. Content</text><text x="670" y="78" font-size="11" fill="#9b99b8">only what practice needs</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#ld6a)">
                <line x1="181" y1="63" x2="207" y2="63"/>
                <line x1="371" y1="63" x2="397" y2="63"/>
                <line x1="561" y1="63" x2="587" y2="63"/>
              </g>
              <text x="20" y="132" text-anchor="start" font-size="12" fill="#9b99b8">Safe Shift Leader programme: 8 weeks, 4 groups of 10 supervisors</text>
              <rect x="20" y="146" width="160" height="72" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="100" y="169" font-weight="700">M1 · Week 1</text><text x="100" y="189" font-size="12">CCP records</text><text x="100" y="207" font-size="11" fill="#9b99b8">objectives 1, 4</text>
              <rect x="210" y="146" width="160" height="72" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="290" y="169" font-weight="700">M2 · Week 3</text><text x="290" y="189" font-size="12">When a check fails</text><text x="290" y="207" font-size="11" fill="#9b99b8">objective 2</text>
              <rect x="400" y="146" width="160" height="72" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="480" y="169" font-weight="700">M3 · Week 5</text><text x="480" y="189" font-size="12">Allergen changeover</text><text x="480" y="207" font-size="11" fill="#9b99b8">objective 3</text>
              <rect x="590" y="146" width="160" height="72" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="670" y="169" font-weight="700">M4 · Week 7</text><text x="670" y="189" font-size="12">Leading the shift</text><text x="670" y="207" font-size="11" fill="#9b99b8">objectives 5, 6</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#ld6a)">
                <line x1="181" y1="182" x2="207" y2="182"/>
                <line x1="371" y1="182" x2="397" y2="182"/>
                <line x1="561" y1="182" x2="587" y2="182"/>
              </g>
              <rect x="20" y="238" width="730" height="36" rx="8" fill="#27274e" stroke="#22d3ee" stroke-dasharray="5 4"/>
              <text x="385" y="261" font-size="12">Between sessions: practice on the floor, real sheets checked by QA, a buddy for each new supervisor</text>
              <text x="385" y="298" font-size="11" fill="#9b99b8">Each session is 3 hours. At least half of the time is hands-on practice.</text>
            </g>
          </svg>
          <figcaption>Plan backwards from what people must do. Then spread the modules out, so people practise on the job between sessions.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Backward design: start from the end</h3>
          <p>Many people design a course by collecting slides about a topic. This gives long talks and little practice. <strong>Backward design</strong> works the other way round. You start with the end result and work back.</p>
          <ol class="lc-list">
            <li><strong>Objectives.</strong> What must people do on the job? Mohan already has six objectives for the programme.</li>
            <li><strong>Checks.</strong> How will you know they can do it? For example, 3 practice sheets with no errors, or a drill watched by QA.</li>
            <li><strong>Practice.</strong> What activities will get them there? People learn a task by doing it and getting feedback.</li>
            <li><strong>Content.</strong> What must they know to do the practice? Add only that. Cut the rest.</li>
          </ol>
          <p>A <strong>module</strong> is one block of the course with its own objectives, practice and check. A module can be one workshop, a few short online lessons, or both. Mohan's rule: if a slide does not help an objective, it goes.</p>
        </div>
        <div class="lc-card">
          <h3>Tell AI what it cannot know</h3>
          <p>AI can suggest modules and activities in seconds. But it does not know your shifts, your rooms or your people. You must give it those limits. Mohan's limits are:</p>
          <ul class="lc-list">
            <li>The factory runs 3 shifts. Anil Deshmukh, the production manager, can release only about 10 supervisors at a time. So there are 4 groups of 10.</li>
            <li>Each session can last 3 hours, in the training room next to the canteen.</li>
            <li>14 of the 40 supervisors were promoted in the last 12 months. They have never had supervisor training.</li>
            <li>Most supervisors speak Marathi or Hindi. Many are not comfortable reading long English text.</li>
          </ul>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Create a food safety course for factory supervisors.</code></pre>
          <p>This gives a generic course with topics AI chose. It may cover laws you do not need and skip your real problems.</p>
          <p><strong>Better prompt:</strong></p>
          <pre><code>You are an instructional designer. Design a course outline using
        backward design for 40 shift supervisors at a food factory in India.
        Our 6 learning objectives are below. [paste objectives]
        Limits: 4 groups of 10, one 3-hour session every 2 weeks, 8 weeks
        in total. Learners speak Marathi or Hindi and prefer short text.
        At least half of each session must be hands-on practice.
        For each module give: objectives covered, main practice activity,
        how we check each objective, and what people practise on the floor
        before the next session. Do not add topics that do not serve an
        objective. Mark any food safety fact with [CHECK] for our QA manager.</code></pre>
        </div>
        <div class="lc-card">
          <h3>Worked example: Mohan's course outline</h3>
          <p>Mohan used the better prompt in the company's approved AI tool. He then edited the draft with Rekha Joshi, the QA manager, and Sunita, the HR head. Here is the final outline.</p>
          <table class="lc-table">
            <thead><tr><th>Module</th><th>Objectives</th><th>Main practice</th><th>How we check</th></tr></thead>
            <tbody>
              <tr><td><strong>M1:</strong> CCP checks and records (week 1)</td><td>1, 4</td><td>Fill in record sheets from sample readings. Explain the metal detector check to a partner.</td><td>No errors on 3 of 3 practice sheets. Partner uses a short checklist.</td></tr>
              <tr><td><strong>M2:</strong> When a check fails (week 3)</td><td>2</td><td>A "hold and tell" drill with a made-up failed reading</td><td>Drill watched by QA: product held, QA told within 15 minutes, action recorded</td></tr>
              <tr><td><strong>M3:</strong> Allergen changeover (week 5)</td><td>3</td><td>Use the 8-point checklist on a practice changeover. Decide: release or hold?</td><td>On the job: decision matches the QA check in 2 of 2 observed changeovers</td></tr>
              <tr><td><strong>M4:</strong> Leading the shift (week 7)</td><td>5, 6</td><td>Feedback role-plays using SBI (situation, behaviour, impact). Run a 5-minute briefing.</td><td>At least 4 of 5 on the observer checklist. Briefing covers the top 3 risks.</td></tr>
            </tbody>
          </table>
          <p>Notice three design choices. First, the modules follow the training priorities: CCP records came first because they scored highest. Second, hygiene and GMP (good manufacturing practice: basic hygiene rules) has no separate module. It appears inside M4, in the hand-washing role-play and the briefing. Third, handover is not a module at all, because the new rota fixes most of that problem.</p>
          <p>The numbers also need a check. There are 4 groups and 4 modules, so Mohan must run 4 × 4 = 16 sessions. Each supervisor spends 4 × 3 = 12 hours in the training room. Sunita checks that the budget and Anil's rota allow this.</p>
          <p>What the AI draft got wrong: it added a module on "Food safety laws in India". None of the objectives needs it, so Mohan removed it. It also put the M3 check as a written test. Rekha changed it, because a test cannot show a real release-or-hold decision.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: design a course backwards</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put Mohan's design steps in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Start from the agreed learning objectives</li>
              <li data-order="2">Decide how you will check each objective</li>
              <li data-order="3">Plan practice activities that prepare people for each check</li>
              <li data-order="4">Group the objectives and practice into modules</li>
              <li data-order="5">Add only the explanations and examples that the practice needs</li>
              <li data-order="6">Fit the modules to shifts, rooms and group sizes</li>
              <li data-order="7">Run a pilot with one group and fix what did not work</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI for a course outline built with backward design. Give it your objectives and your real limits, then check that every module has practice and a check.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an experienced instructional designer. Use backward design to make a course outline.

        Learners: [40 shift supervisors at a food factory in Maharashtra. 14 are newly promoted.]
        Learning objectives:
        [1. Given a record sheet and readings, fill in every field with no errors on 3 of 3 practice sheets.
        2. When a check fails, hold the product, tell QA within 15 minutes and record the action, as seen in a drill.
        3. In a role-play, give feedback using SBI (situation, behaviour, impact) and score at least 4 of 5 on an observer checklist.]
        Limits: [groups of 10, one 3-hour session every 2 weeks, 6 weeks in total, learners prefer Marathi or Hindi]

        1. Group the objectives into modules. Give a table: Module, Objectives covered, Main practice activity, How we check, Practice on the job before the next session.
        2. Show the time split for one session. At least half must be hands-on practice.
        3. List 3 things I must confirm with managers or experts before I use this outline.

        Rules: Do not add topics that do not serve an objective. Mark any safety fact or legal point with [CHECK]. Use simple English.</pre>
            <ul class="ai-try-checks">
              <li>Every objective appears in a module, and every module has a way to check it.</li>
              <li>The session times add up to the total. Practice is at least half.</li>
              <li>No extra topics were added that do not serve an objective.</li>
              <li>Safety facts are marked [CHECK], ready for your expert.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Design backwards: objectives first, then checks, then practice, then content. AI can draft an outline fast, but only you know the shifts, rooms and people. Give AI those limits, and remove anything that does not serve an objective.
        </div>
      HTML
      starter_code: nil
    },
    7 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-hr">HR & Recruitment</div>
          <h1 class="lc-title">Creating Learning Content with AI</h1>
        </div>
        <p class="lc-lead">With the course outline ready, you now need the content: explanations, examples, scenarios and job aids. AI can draft all of these in minutes. But in training, one wrong fact can reach every learner, and in a food factory it can make people unsafe. In this lesson you will learn four types of learning content and how to make AI work from your own approved source. You will also see how Mohan and Rekha Joshi, the QA manager, check every fact before anything reaches the 40 supervisors.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 322" role="img" aria-label="Top: the content workflow in five steps: approved source, AI draft, Rekha checks, floor test, publish version 1. Bottom left: a job aid card titled When a CCP check fails, with four steps: hold, tell, record, wait. Bottom right: four types of learning content.">
            <defs><marker id="ld7a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="20" y="20" width="130" height="58" rx="10" fill="#27274e" stroke="#8b5cf6"/>
              <text x="85" y="44" font-weight="700">Approved source</text><text x="85" y="64" font-size="11" fill="#9b99b8">SOP, HACCP plan</text>
              <rect x="167" y="20" width="130" height="58" rx="10" fill="#27274e" stroke="#3b82f6"/>
              <text x="232" y="44" font-weight="700">AI draft</text><text x="232" y="64" font-size="11" fill="#9b99b8">uses only source</text>
              <rect x="314" y="20" width="130" height="58" rx="10" fill="#27274e" stroke="#f59e0b"/>
              <text x="379" y="44" font-weight="700">Rekha checks</text><text x="379" y="64" font-size="11" fill="#9b99b8">every fact, step</text>
              <rect x="461" y="20" width="130" height="58" rx="10" fill="#27274e" stroke="#ec4899"/>
              <text x="526" y="44" font-weight="700">Floor test</text><text x="526" y="64" font-size="11" fill="#9b99b8">2 supervisors try it</text>
              <rect x="608" y="20" width="130" height="58" rx="10" fill="#27274e" stroke="#10b981"/>
              <text x="673" y="44" font-weight="700">Publish v1.0</text><text x="673" y="64" font-size="11" fill="#9b99b8">reviewer + date</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#ld7a)">
                <line x1="151" y1="49" x2="164" y2="49"/>
                <line x1="298" y1="49" x2="311" y2="49"/>
                <line x1="445" y1="49" x2="458" y2="49"/>
                <line x1="592" y1="49" x2="605" y2="49"/>
              </g>
              <rect x="20" y="104" width="380" height="204" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="210" y="130" font-weight="700" fill="#fcd34d">Job aid: When a CCP check fails</text>
              <g text-anchor="start" font-size="12">
                <text x="40" y="160"><tspan font-weight="700" fill="#fca5a5">1. HOLD</tspan> the product from this batch</text>
                <text x="40" y="186"><tspan font-weight="700" fill="#fcd34d">2. TELL</tspan> QA within 15 minutes (ext. 214)</text>
                <text x="40" y="212"><tspan font-weight="700" fill="#93c5fd">3. RECORD</tspan> reading, time and action taken</text>
                <text x="40" y="238"><tspan font-weight="700" fill="#6ee7b7">4. WAIT</tspan> for QA before any restart</text>
              </g>
              <text x="210" y="272" font-size="11" fill="#9b99b8">Marathi · Hindi · English</text>
              <text x="210" y="292" font-size="11" fill="#9b99b8">Approved: R. Joshi, QA · v1.0 · next review in 6 months</text>
              <rect x="420" y="104" width="320" height="204" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="580" y="130" font-weight="700" fill="#c4b5fd">Four types of content</text>
              <g text-anchor="start" font-size="12">
                <text x="440" y="162"><tspan font-weight="700">Explanation:</tspan> why the check matters</text>
                <text x="440" y="192"><tspan font-weight="700">Example:</tspan> a correctly filled sheet</text>
                <text x="440" y="222"><tspan font-weight="700">Scenario:</tspan> a decision to make</text>
                <text x="440" y="252"><tspan font-weight="700">Job aid:</tspan> steps where work happens</text>
              </g>
              <text x="580" y="290" font-size="11" fill="#9b99b8">All four come from the same checked source</text>
            </g>
          </svg>
          <figcaption>AI drafts from your approved source. An expert checks every fact. Real users test it before it is published.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Four types of learning content</h3>
          <table class="lc-table">
            <thead><tr><th>Type</th><th>What it is</th><th>Sahyadri example</th><th>How AI helps</th></tr></thead>
            <tbody>
              <tr><td><strong>Explanation</strong></td><td>A short, clear "what and why"</td><td>Why the metal detector check matters, in 150 words</td><td>Rewrites dense procedure text in simple words</td></tr>
              <tr><td><strong>Example</strong></td><td>A model of good work</td><td>A CCP record sheet filled in correctly, including a corrective action</td><td>Makes realistic sample readings and records</td></tr>
              <tr><td><strong>Scenario</strong></td><td>A short, realistic situation where the learner must decide</td><td>A test piece is not rejected at 3:10 am. What do you do?</td><td>Drafts many scenarios, each based on a real mistake</td></tr>
              <tr><td><strong>Job aid</strong></td><td>A one-page guide used at the point of work</td><td>A laminated card at each CCP station</td><td>Cuts long steps down to a few short ones</td></tr>
            </tbody>
          </table>
          <p>CCP means critical control point: a step where a check stops a food safety hazard. A <strong>job aid</strong> is not a summary of the course. It holds only what a person needs at the moment of work. Many supervisors will forget parts of the workshop. The job aid is there when they do.</p>
        </div>
        <div class="lc-card">
          <h3>Make AI work from your source</h3>
          <p>If you ask AI a general question, it answers from general knowledge. That knowledge may be wrong, out of date or different from your factory's rules. So give AI your own approved text and tell it to use only that text. This is sometimes called <strong>grounding</strong>.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Write training content about metal detector checks in food factories.</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>You are a trainer at a food factory. Use ONLY the procedure text
        below. Do not add any fact, number or step that is not in it.
        If something a learner needs is missing, write [MISSING: ask QA].
        Make: (1) a 120-word explanation of why this check matters,
        (2) one scenario where a supervisor must decide what to do,
        with a model answer, (3) a job aid of at most 5 short steps.
        Audience: shift supervisors who prefer simple English.

        Procedure text:
        [paste the approved section of your SOP here]</code></pre>
          <p>Here is the made-up procedure text Mohan pasted. It comes from Sahyadri's plan, and Rekha must confirm it [CHECK]:</p>
          <pre><code>Metal detector check, Line 2
        - Test at the start of the shift, every hour, and after any line stop.
        - Pass the three test pieces (ferrous, non-ferrous, stainless steel)
          through the detector. Each one must be rejected.
        - If any test piece is not rejected: stop the line, hold all product
          made since the last good check, tell QA and record it on the CCP sheet.</code></pre>
          <p>Two warnings. First, a procedure is company information. Paste it only into an AI tool your company has approved. Never paste personal data about workers. Second, grounding reduces mistakes but does not stop them. AI can still add a step or change a number. Rekha still reads every line.</p>
        </div>
        <div class="lc-card">
          <h3>Worked example: a scenario from the procedure</h3>
          <p>A good scenario is short and real, and it asks for a decision. Here is the scenario the AI drafted, after Rekha's edits:</p>
          <pre><code>It is 3:10 am on Line 2. You run the hourly metal detector check.
        The ferrous and non-ferrous test pieces are rejected. The stainless
        steel test piece goes through without being rejected. The last good
        check was at 2:05 am. About 600 packets have been packed since then.
        What do you do, and in what order?</code></pre>
          <p><strong>Model answer (from Sahyadri's plan [CHECK]):</strong> stop the line, hold all product packed since 2:05 am, tell QA and record it on the CCP sheet. Do not restart until QA agrees.</p>
          <p>Why it works: the time of the last good check makes the learner think about <em>which</em> product to hold. That is the exact decision supervisors got wrong in the audit. Scenarios built on real mistakes teach more than general ones.</p>
          <p>Before anything is published, Rekha uses this review checklist:</p>
          <table class="lc-table">
            <thead><tr><th>Check</th><th>Question to ask</th></tr></thead>
            <tbody>
              <tr><td>Facts and numbers</td><td>Does every limit, time and step match Sahyadri's plan exactly?</td></tr>
              <tr><td>Order of steps</td><td>Are the steps in the order the procedure requires?</td></tr>
              <tr><td>Nothing extra</td><td>Did AI add any step or advice that is not in the procedure?</td></tr>
              <tr><td>Fit for the floor</td><td>Would a tired supervisor on a night shift understand it in 10 seconds?</td></tr>
              <tr><td>Translation</td><td>Did a bilingual supervisor check the Marathi and Hindi versions line by line?</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Activity: Mohan builds a job aid</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="thought" data-label="The need">In the audit, 30 sheets had a missing or wrong corrective action. Supervisors need the steps at the CCP station, on one card.</li>
              <li data-kind="user" data-label="Mohan's prompt">He pastes the non-conformance section of Sahyadri's procedure into the approved AI tool. He asks for a job aid of at most 5 steps, each starting with a verb, using only the pasted text.</li>
              <li data-kind="answer" data-label="AI draft">The draft has 5 clear steps. Step 4 says: "If the core temperature is below 72°C, cook the batch again for 2 more minutes."</li>
              <li data-kind="warn" data-label="Catch this">The number 72°C and the re-cooking step are not in the pasted text. The AI filled a gap from general knowledge. At Sahyadri, only QA decides what happens to held product.</li>
              <li data-kind="check" data-label="Rekha's review">Rekha deletes step 4. She writes: "Wait for QA before any restart. Do not re-cook or release product yourself." She checks the other steps against Sahyadri's plan.</li>
              <li data-kind="tool" data-label="Floor test">Mohan tests the card with two supervisors, S07 and S21, at the Line 2 station. S21 cannot find the QA phone number fast. Mohan adds the QA extension to step 2.</li>
              <li data-kind="check" data-label="Publish">AI drafts Marathi and Hindi versions. Bilingual supervisors check them line by line. The card gets Rekha's name, version 1.0 and a review date.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Give AI a short procedure from your own work, or use the made-up one below. Ask for an explanation, a scenario and a job aid that use only that text.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a workplace trainer. Create learning content from the procedure below.

        Audience: [shift supervisors at a food factory. Many prefer simple English.]

        Procedure text (use ONLY this):
        [Metal detector check, Line 2. Test at the start of the shift, every hour, and after any line stop. Pass the three test pieces (ferrous, non-ferrous, stainless steel) through the detector. Each must be rejected. If any test piece is not rejected: stop the line, hold all product made since the last good check, tell QA and record it on the CCP sheet.]

        Make:
        1. An explanation of why this check matters (under 120 words).
        2. One realistic scenario that asks the learner to decide what to do. Include a time and a detail that makes the decision harder. Then give a model answer.
        3. A job aid of at most 5 short steps, each starting with a verb.

        Rules:
        - Do not add any fact, number or step that is not in the procedure text.
        - If a learner would need something that is missing, write [MISSING: ask expert].
        - After the content, list every fact you used, so an expert can check each one.</pre>
            <ul class="ai-try-checks">
              <li>Nothing appears that is not in the procedure text. Look closely for added numbers or steps.</li>
              <li>The scenario asks for a decision, not just a definition.</li>
              <li>The job aid has 5 steps or fewer, and each one starts with a verb.</li>
              <li>Gaps are marked [MISSING]. An expert still checks everything before use.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Give AI your approved source and tell it to use only that text. It will draft explanations, examples, scenarios and job aids fast. But AI can still add a wrong step, so an expert checks every fact and real users test the content before you publish it.
        </div>
      HTML
      starter_code: nil
    },
    8 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-hr">HR & Recruitment</div>
          <h1 class="lc-title">Quizzes and Assessments</h1>
        </div>
        <p class="lc-lead">An <strong>assessment</strong> is any way of checking what people can do: a quiz, a practical task or an observed role-play. Good assessments show you what to teach and whether the training worked. Poor ones test reading skill, reward guessing or feel unfair. In this lesson you will match each check to its objective and write strong scenario questions with AI. You will also read quiz results in a spreadsheet and make assessments fair for every learner.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 318" role="img" aria-label="Left: a scenario question about a low core-temperature reading on Line 2, with option A as a distractor based on a real mistake, option B as the correct answer and option C as a distractor with a wrong fix. Right: pre-test results from 40 supervisors: 22 chose A, 12 chose B and 6 chose C.">
            <g font-family="inherit" font-size="12" fill="#e2e0f0">
              <rect x="20" y="16" width="440" height="286" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="240" y="40" text-anchor="middle" font-size="13" font-weight="700" fill="#c4b5fd">Parts of a scenario question</text>
              <rect x="34" y="54" width="412" height="74" rx="8" fill="#27274e" stroke="#3b82f6"/>
              <text x="46" y="74" font-size="11" fill="#93c5fd" font-weight="700">STEM (the situation)</text>
              <text x="46" y="94">10:40 pm. The core-temperature reading on Line 2 is</text>
              <text x="46" y="114">below the limit in Sahyadri's plan. What do you do first?</text>
              <rect x="34" y="142" width="256" height="34" rx="6" fill="#27274e" stroke="#9b99b8"/>
              <text x="46" y="164">A) Write it down, recheck in 1 hour</text>
              <text x="300" y="164" font-size="11" fill="#fcd34d">distractor: real mistake</text>
              <rect x="34" y="186" width="256" height="34" rx="6" fill="#27274e" stroke="#10b981" stroke-width="2"/>
              <text x="46" y="208">B) Hold the batch and tell QA</text>
              <text x="300" y="208" font-size="11" fill="#6ee7b7">key: the right answer</text>
              <rect x="34" y="230" width="256" height="34" rx="6" fill="#27274e" stroke="#9b99b8"/>
              <text x="46" y="252">C) Cook again, record the new reading</text>
              <text x="300" y="252" font-size="11" fill="#fcd34d">distractor: wrong fix</text>
              <text x="240" y="288" text-anchor="middle" font-size="11" fill="#9b99b8">The answer key explains why each option is right or wrong</text>
              <rect x="480" y="16" width="260" height="286" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="610" y="40" text-anchor="middle" font-size="13" font-weight="700" fill="#fcd34d">Pre-test: this question</text>
              <text x="610" y="60" text-anchor="middle" font-size="11" fill="#9b99b8">40 supervisors, before training</text>
              <text x="500" y="102" font-weight="700">A</text>
              <rect x="520" y="88" width="143" height="20" fill="#f59e0b"/>
              <text x="669" y="102">22 (55%)</text>
              <text x="500" y="142" font-weight="700">B</text>
              <rect x="520" y="128" width="78" height="20" fill="#10b981"/>
              <text x="604" y="142">12 (30%)</text>
              <text x="500" y="182" font-weight="700">C</text>
              <rect x="520" y="168" width="39" height="20" fill="#9b99b8"/>
              <text x="565" y="182">6 (15%)</text>
              <line x1="520" y1="80" x2="520" y2="196" stroke="#4b4a78"/>
              <g text-anchor="middle" font-size="11" fill="#9b99b8">
                <text x="610" y="226">Most chose A: the same mistake</text>
                <text x="610" y="244">found on 30 audit sheets.</text>
                <text x="610" y="270" fill="#e2e0f0">So M2 must teach this point</text>
                <text x="610" y="288" fill="#e2e0f0">with lots of practice.</text>
              </g>
            </g>
          </svg>
          <figcaption>Good distractors come from real mistakes. The results then show exactly what people get wrong.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Match the check to the objective</h3>
          <p>Each objective already says how it will be checked. A quiz is useful, but it cannot prove every kind of skill. Look at the Bloom's level (the level of thinking) and the verb.</p>
          <table class="lc-table">
            <thead><tr><th>Objective (short)</th><th>Level</th><th>Best check</th></tr></thead>
            <tbody>
              <tr><td>1. Fill in a CCP record sheet with no errors</td><td>Apply</td><td>3 practice sheets, marked with an answer key</td></tr>
              <tr><td>2. Hold, tell QA within 15 minutes, record</td><td>Apply</td><td>A drill on the floor, watched by QA</td></tr>
              <tr><td>3. Decide to release or hold after an allergen changeover</td><td>Evaluate</td><td>Scenario questions in the workshop, then 2 observed changeovers</td></tr>
              <tr><td>4. Explain why the metal detector check matters</td><td>Understand</td><td>Explain it to a partner, or answer 2 short questions</td></tr>
              <tr><td>5. Give feedback using SBI</td><td>Apply</td><td>A role-play scored on a 5-point observer checklist</td></tr>
            </tbody>
          </table>
          <p>An observed task needs a clear checklist, so two observers give the same score. Here is the checklist for the SBI (situation, behaviour, impact) role-play. A pass is at least 4 of 5.</p>
          <ol class="lc-list">
            <li>Names the situation: when and where it happened.</li>
            <li>Describes the behaviour seen, not a label like "careless".</li>
            <li>Explains the impact on food safety or the team.</li>
            <li>Asks for the worker's view and listens without interrupting.</li>
            <li>Agrees a clear next step with the worker.</li>
          </ol>
        </div>
        <div class="lc-card">
          <h3>Write strong multiple-choice questions</h3>
          <p>A multiple-choice question has three parts. The <strong>stem</strong> is the question or situation. The <strong>key</strong> is the correct answer. The <strong>distractors</strong> are the wrong options. Good distractors are mistakes real people make, not silly answers.</p>
          <p><strong>Weak question:</strong></p>
          <pre><code>What does CCP stand for?
        A) Critical control point   B) Central cooking process   C) Common check procedure</code></pre>
          <p>This only tests memory of words. A supervisor can answer it and still fill in the sheet wrongly.</p>
          <p><strong>Better question:</strong> the scenario in the diagram. It tests the decision the job needs. Here is its answer key with feedback. The correct steps come from Sahyadri's plan, and Rekha Joshi, the QA manager, confirmed them [CHECK].</p>
          <table class="lc-table">
            <thead><tr><th>Option</th><th>Feedback the learner sees</th></tr></thead>
            <tbody>
              <tr><td>A) Write it down, recheck in 1 hour</td><td>Not correct. Product made during that hour could be unsafe. A failed reading needs action now.</td></tr>
              <tr><td><strong>B) Hold the batch and tell QA</strong></td><td>Correct. Hold the product first, tell QA within 15 minutes, then record the action.</td></tr>
              <tr><td>C) Cook again, record the new reading</td><td>Not correct. Only QA decides what happens to held product. Recording only the new reading hides the failure.</td></tr>
            </tbody>
          </table>
          <p>AI can draft 20 questions like this in a minute. Give it the objective, the approved procedure text and the real mistakes from the audit. Ask for the key, feedback for every option and [CHECK] tags. Then check each question yourself. Is there exactly one right answer? Are all options about the same length? Could someone guess the answer from the wording alone?</p>
        </div>
        <div class="lc-card">
          <h3>Read the results in a spreadsheet</h3>
          <p>Before M1, all 40 supervisors took a 10-question <strong>pre-test</strong> (a short quiz before training). It shows what they already know, so Mohan can plan what to teach. In the sheet, column A holds the codes S01 to S40 in rows 2 to 41. Columns B to K hold the answers to questions 1 to 10. The question in the diagram is question 7, in column H.</p>
          <pre><code>Share who got Q7 right (key B):  =COUNTIF(H2:H41,"B")/COUNTA(H2:H41)   12 ÷ 40 = 30%
        Share who chose option A:          =COUNTIF(H2:H41,"A")/COUNTA(H2:H41)   22 ÷ 40 = 55%
        Check: 22 + 12 + 6 = 40 answers</code></pre>
          <ul class="lc-list">
            <li><strong>Few people right (like 30%):</strong> first check the question. Is it unclear, or does it have two right answers? If the question is fine, this is a real gap to teach.</li>
            <li><strong>One wrong option chosen by many (like 55% for A):</strong> this is a shared mistake. Build practice around it.</li>
            <li><strong>Almost everyone right:</strong> people may already know this. Spend less workshop time on it.</li>
          </ul>
          <p>Use the spreadsheet for the maths. If you ask AI to explain patterns, give it only codes and answers, never names.</p>
        </div>
        <div class="lc-card">
          <h3>Make assessments fair</h3>
          <ul class="lc-list">
            <li><strong>Test the skill, not English.</strong> Use short, simple words. Offer the quiz in Marathi, Hindi and English, with translations checked by a bilingual person.</li>
            <li><strong>Offer other ways to answer.</strong> Some supervisors, promoted from the line, read slowly. A trainer can read questions aloud, or the check can be practical.</li>
            <li><strong>Make adjustments for disability.</strong> For example, give extra time or large print. In India, the Rights of Persons with Disabilities Act 2016 sets duties for employers. This is not legal advice; check with your HR legal counsel.</li>
            <li><strong>Say what the results are for.</strong> Mohan tells supervisors that the pre-test is for planning. It does not affect ratings or pay.</li>
            <li><strong>Protect scores.</strong> Scores are personal data under India's DPDP Act 2023. Keep them in the HRMS or learning system. Use codes like S07 in any AI tool.</li>
            <li><strong>People score observed tasks.</strong> A trained observer uses the checklist. Never let AI judge a person from a video or voice recording.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Activity: keep it or fix it?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Mohan reviews quiz questions that AI drafted. Which features should he keep, and which must he fix?</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="keep" data-label="Keep"></div>
              <div data-sorter-target="bucket" data-bucket="fix" data-label="Fix"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="keep" data-why="Distractors based on real mistakes show exactly what people misunderstand.">The wrong options are mistakes found on the audit sheets</li>
              <li data-bucket="fix" data-why="Learners can pick it if two options look right, so it rewards guessing. Use a real option instead.">One option says "All of the above"</li>
              <li data-bucket="fix" data-why="The longest, most careful option is often the right one. Learners guess it without knowing the answer.">The correct answer is twice as long as the other options</li>
              <li data-bucket="fix" data-why="Two negatives confuse readers. The question tests reading, not food safety.">"Which of these is NOT a step you should never skip?"</li>
              <li data-bucket="keep" data-why="A real situation tests the decision the job needs, not just memory of words.">The question describes a moment on a night shift and asks what to do first</li>
              <li data-bucket="fix" data-why="A hard English word turns the question into a vocabulary test. Use simple words.">The stem uses the word "remediation"</li>
              <li data-bucket="keep" data-why="Feedback for each option helps people learn from their mistake.">The answer key explains why each wrong option is wrong</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to write scenario questions for one of your objectives, with an answer key and feedback. Then check each question like a reviewer.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an assessment designer for workplace training.

        Learning objective: [When a CCP reading fails during a shift, the supervisor will hold the product, tell QA within 15 minutes and record the action.]
        Learners: [shift supervisors at a food factory. Many prefer simple English.]
        Common real mistakes: [writing the reading but taking no action; re-cooking without telling QA; recording only the new reading]

        Write [4] multiple-choice questions. For each one:
        1. A stem that describes a realistic moment on a shift (time, line, what happened) and asks what to do.
        2. Three options (A, B, C). Exactly one is correct. Base the wrong options on the common mistakes. Keep all options about the same length.
        3. The key, and one line of feedback for every option.
        4. The Bloom's level.

        Rules: No "all of the above", no double negatives, no hard words. Do not invent safety limits; write "the limit in our plan" instead. Mark every safety step with [CHECK] for our QA expert. Use made-up situations only.</pre>
            <ul class="ai-try-checks">
              <li>Each question has exactly one correct answer. Ask your expert if you are not sure.</li>
              <li>The wrong options are real mistakes, not silly answers.</li>
              <li>The correct option is not always the longest or always the same letter.</li>
              <li>No safety limits are invented, and safety steps are marked [CHECK].</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Match each check to its objective: quizzes for knowledge and decisions, observed tasks for real skills. Build distractors from real mistakes, and read the results to see what to teach. Keep assessments fair: test the skill, not the language, and protect every score.
        </div>
      HTML
      starter_code: nil
    },
    9 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-hr">HR & Recruitment</div>
          <h1 class="lc-title">Microlearning and Blended Learning</h1>
        </div>
        <p class="lc-lead">People forget much of a one-day workshop within a few weeks, unless they use it and review it. Two ideas help. <strong>Microlearning</strong> means short lessons of a few minutes, each on one small task. <strong>Blended learning</strong> means mixing online learning, classroom sessions and practice on the job. In this lesson you will learn when to use each format and how to plan spaced practice. You will also see how Mohan uses AI to turn one workshop into a blended plan for supervisors who work in shifts.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 286" role="img" aria-label="A blended plan for Module 1 in three lanes. Phone: a micro lesson before the workshop, then 3 review questions on days 2, 5, 12 and 26. Training room: a 3-hour workshop on day 1. On the floor: real CCP sheets checked by QA each week, with buddy support. The gaps between reviews grow: 1, 3, 7 and 14 days.">
            <defs><marker id="ld9a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12" fill="#e2e0f0" text-anchor="middle">
              <text x="20" y="22" text-anchor="start" fill="#9b99b8">Module 1 as a blended plan (not to scale)</text>
              <g font-size="11" fill="#9b99b8">
                <text x="208" y="44">Before</text><text x="305" y="44">Day 1</text><text x="402" y="44">Day 2</text>
                <text x="498" y="44">Day 5</text><text x="595" y="44">Day 12</text><text x="692" y="44">Day 26</text>
              </g>
              <g text-anchor="start" font-weight="700">
                <text x="20" y="83" fill="#93c5fd">Phone</text>
                <text x="20" y="143" fill="#c4b5fd">Training room</text>
                <text x="20" y="203" fill="#6ee7b7">On the floor</text>
              </g>
              <line x1="160" y1="108" x2="740" y2="108" stroke="#4b4a78"/>
              <line x1="160" y1="168" x2="740" y2="168" stroke="#4b4a78"/>
              <rect x="166" y="60" width="84" height="38" rx="8" fill="#27274e" stroke="#3b82f6"/>
              <text x="208" y="78">Micro lesson</text><text x="208" y="92" font-size="10" fill="#9b99b8">+ pre-test</text>
              <rect x="360" y="60" width="84" height="38" rx="8" fill="#27274e" stroke="#3b82f6"/>
              <text x="402" y="84">3 questions</text>
              <rect x="456" y="60" width="84" height="38" rx="8" fill="#27274e" stroke="#3b82f6"/>
              <text x="498" y="84">3 questions</text>
              <rect x="553" y="60" width="84" height="38" rx="8" fill="#27274e" stroke="#3b82f6"/>
              <text x="595" y="84">3 questions</text>
              <rect x="650" y="60" width="84" height="38" rx="8" fill="#27274e" stroke="#3b82f6"/>
              <text x="692" y="84">3 questions</text>
              <rect x="258" y="120" width="94" height="38" rx="8" fill="#27274e" stroke="#8b5cf6"/>
              <text x="305" y="138">3-h workshop</text><text x="305" y="152" font-size="10" fill="#9b99b8">practice</text>
              <rect x="258" y="180" width="476" height="38" rx="8" fill="#1f1f44" stroke="#10b981"/>
              <text x="496" y="204">Real CCP sheets checked by QA each week, with a buddy</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#ld9a)">
                <path d="M305,236 Q353,256 399,238"/>
                <path d="M405,236 Q451,256 495,238"/>
                <path d="M501,236 Q548,256 592,238"/>
                <path d="M598,236 Q645,256 689,238"/>
              </g>
              <g font-size="11" fill="#fcd34d">
                <text x="353" y="266">1 day</text><text x="450" y="266">3 days</text>
                <text x="547" y="266">7 days</text><text x="644" y="266">14 days</text>
              </g>
              <text x="20" y="266" text-anchor="start" font-size="11" fill="#9b99b8">Gaps grow:</text>
            </g>
          </svg>
          <figcaption>Short phone lessons before and after the workshop, with growing gaps between reviews. Real practice on the floor holds it together.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Microlearning: one small task at a time</h3>
          <p>A micro lesson is short, usually a few minutes. At Sahyadri, Mohan keeps every micro lesson to 5 minutes or less. It covers one objective or one task, and it ends with a question or an action. Supervisors can do it on a phone or a shared tablet during a quiet part of the shift.</p>
          <table class="lc-table">
            <thead><tr><th>Good for microlearning</th><th>Not good for microlearning alone</th></tr></thead>
            <tbody>
              <tr><td>Why the metal detector check matters</td><td>Giving feedback to a worker (needs role-play with feedback)</td></tr>
              <tr><td>The 5 fields on the CCP record sheet</td><td>Deciding to release or hold a line (needs practice and a QA check)</td></tr>
              <tr><td>A reminder before a hard task, such as a changeover</td><td>Anything that needs discussion or hands-on practice</td></tr>
            </tbody>
          </table>
          <p>Mohan's plan for one micro lesson, "Why the metal detector check matters", lasts 4 minutes:</p>
          <pre><code>0:00 to 1:00  A made-up story: a customer finds a metal piece. What went wrong?
        1:00 to 3:00  The three test pieces and what "rejected" means (from Sahyadri's plan [CHECK])
        3:00 to 4:00  Two questions to answer on the phone</code></pre>
          <p>At about 120 to 150 spoken words a minute, the audio script needs about 480 to 600 words. Mohan asks for an audio version too, because some supervisors prefer listening in Marathi or Hindi.</p>
        </div>
        <div class="lc-card">
          <h3>Spaced practice and recall</h3>
          <p><strong>Spaced practice</strong> means going back to a topic several times, with gaps between reviews. Many plans make the gaps grow over time. <strong>Retrieval practice</strong> means trying to remember the answer, not just reading the notes again. Research on memory strongly supports both ideas. Several short, spaced quizzes usually work better than one long review.</p>
          <p>Mohan's plan for each module: 4 reviews, 3 questions each, on days 2, 5, 12 and 26 after the workshop. That is 4 × 3 = 12 questions per module. Each review takes about 3 minutes, so 4 × 3 = 12 minutes per module. Across all 4 modules, each supervisor answers 48 questions in about 48 minutes. The last reviews for M4 run a few weeks after the final session.</p>
          <p>A sheet can work out the dates. Put the workshop date in B1, then:</p>
          <pre><code>Day 2:   =B1+1
        Day 5:   =B1+4
        Day 12:  =B1+11
        Day 26:  =B1+25</code></pre>
          <p>If a date falls on the factory's weekly off day, move it by one day. AI is very useful here. Ask it to write 3 different versions of each question, so people recall the idea and do not just memorise one question. Rekha Joshi, the QA manager, checks the question bank once before it is used.</p>
        </div>
        <div class="lc-card">
          <h3>Mohan's blended plan</h3>
          <p>A blended plan puts each part of learning where it works best. This fits the 70-20-10 idea: most learning happens on the job.</p>
          <table class="lc-table">
            <thead><tr><th>When</th><th>Where</th><th>What</th><th>Why here</th></tr></thead>
            <tbody>
              <tr><td>Before the session</td><td>Phone or tablet</td><td>A micro lesson of up to 5 minutes, and the pre-test</td><td>Everyone arrives knowing the basic terms</td></tr>
              <tr><td>Session day</td><td>Training room</td><td>3 hours, at least half of it practice</td><td>Practice with feedback, questions, discussion</td></tr>
              <tr><td>After the session</td><td>On the floor</td><td>Real CCP sheets checked by QA each week. New supervisors get a buddy.</td><td>This is where the skill is really built</td></tr>
              <tr><td>Days 2, 5, 12, 26</td><td>Phone or tablet</td><td>3 review questions</td><td>Spaced recall stops forgetting</td></tr>
            </tbody>
          </table>
          <p>Before he starts, Mohan checks three practical points:</p>
          <ul class="lc-list">
            <li><strong>Devices.</strong> He finds that 4 of the 40 supervisors have only a basic phone. He puts a tablet in the supervisors' room for them.</li>
            <li><strong>Time.</strong> Sunita agrees that micro lessons happen in work time, not at home after a night shift.</li>
            <li><strong>Language.</strong> Each micro lesson is in Marathi, Hindi and English, and each translation is checked by a person.</li>
          </ul>
          <p><strong>Weak prompt:</strong> "Make microlearning from this workshop." <strong>Better prompt:</strong> give AI the objectives, the workshop outline and the limits. Ask for micro lessons of at most 5 minutes, each tied to one objective. Also ask for 3 versions of each review question, with [CHECK] tags on safety facts.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: which format fits?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Where should each part of the Safe Shift Leader programme happen?</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="phone" data-label="Micro lesson on the phone"></div>
              <div data-sorter-target="bucket" data-bucket="room" data-label="Training room"></div>
              <div data-sorter-target="bucket" data-bucket="floor" data-label="On the floor"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="phone" data-why="It is short knowledge that people can learn alone before the session.">Learning the three parts of SBI (situation, behaviour, impact)</li>
              <li data-bucket="room" data-why="Role-play needs a partner, an observer and feedback in a safe place.">Practising feedback to a worker who skips hand washing</li>
              <li data-bucket="floor" data-why="The real skill is a real decision, with QA checking it.">Running a real allergen changeover while QA watches</li>
              <li data-bucket="phone" data-why="Short recall questions at growing gaps fit well on a phone.">Answering 3 review questions on day 12</li>
              <li data-bucket="room" data-why="A group discussion of real mistakes needs a trainer and time to talk.">Discussing what went wrong on faulty audit sheets</li>
              <li data-bucket="floor" data-why="Doing the task at work, with feedback from QA, builds the habit.">Filling in real CCP sheets that QA reviews each week</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to turn one workshop topic into a blended plan with micro lessons and spaced review questions.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a learning designer. Turn one workshop into a blended learning plan.

        Learners: [40 shift supervisors at a food factory. They work in 3 shifts and use phones or a shared tablet.]
        Workshop topic: [filling in CCP (critical control point) record sheets, including corrective actions]
        Objective: [Given a record sheet and readings, fill in every field with no errors on 3 of 3 practice sheets.]
        Limits: [one 3-hour workshop; micro lessons of at most 5 minutes, in work time; Marathi, Hindi and English]

        1. A table of the plan: When, Where (phone, training room, on the job), What, Why here.
        2. Two micro lessons: for each, a title, a minute-by-minute plan and 2 end questions.
        3. A spaced review plan for days 2, 5, 12 and 26 after the workshop, 3 questions each. Give 2 versions of each question.
        4. The Google Sheets formulas to work out the review dates from the workshop date in cell B1.

        Rules: Mark every safety fact with [CHECK] for our QA expert. Do not invent limits. Use simple English.</pre>
            <ul class="ai-try-checks">
              <li>Micro lessons cover one task each and fit in 5 minutes.</li>
              <li>Skills that need practice, such as role-plays, stay in the room or on the job.</li>
              <li>The date formulas are right: day 2 is =B1+1 and day 26 is =B1+25.</li>
              <li>Safety facts are marked [CHECK], and translations still need a person to check them.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Put each part of learning where it works best: short knowledge on the phone, practice with feedback in the room, and real skill on the job. Then fight forgetting with short recall questions at growing gaps. AI can write many question versions fast, but an expert checks them once before use.
        </div>
      HTML
      starter_code: nil
    },
    10 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-hr">HR & Recruitment</div>
          <h1 class="lc-title">Running Workshops and Live Sessions</h1>
        </div>
        <p class="lc-lead">A workshop is where learners practise with feedback, so it must be planned minute by minute. In this lesson you will build a workshop agenda that is at least half practice. You will write a <strong>facilitation guide</strong> (the trainer's step-by-step notes for running each part) with AI's help. You will also learn simple ways to lead a room and to run live online sessions. You will follow Mohan as he prepares the "When a check fails" workshop for the Sahyadri Foods supervisors.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 332" role="img" aria-label="Agenda for the 3-hour When a check fails workshop, shown as bars on a time line. Welcome 15 minutes, why it matters 20, demo 25, break 10, practice with 3 failed readings 50, hold and tell drill 40, quick check 10, action plan 10. Hands-on practice is 90 of 180 minutes, 50 percent.">
            <g font-family="inherit" font-size="12" fill="#e2e0f0">
              <text x="20" y="22" fill="#9b99b8">Module 2 workshop: "When a check fails" (3 hours, group of 10)</text>
              <g text-anchor="end">
                <text x="225" y="64">0:00 Welcome and opener</text>
                <text x="225" y="90">0:15 Why it matters: the audit</text>
                <text x="225" y="116">0:35 Demo: Rekha fills a sheet</text>
                <text x="225" y="142" fill="#9b99b8">1:00 Break</text>
                <text x="225" y="168" font-weight="700">1:10 Practice: 3 failed readings</text>
                <text x="225" y="194" font-weight="700">2:00 Drill: hold and tell</text>
                <text x="225" y="220">2:40 Quick check</text>
                <text x="225" y="246">2:50 Action plan</text>
              </g>
              <g text-anchor="middle" fill="#9b99b8">
                <text x="252" y="40" font-size="11">min</text>
                <text x="252" y="64">15</text><text x="252" y="90">20</text><text x="252" y="116">25</text><text x="252" y="142">10</text>
                <text x="252" y="168">50</text><text x="252" y="194">40</text><text x="252" y="220">10</text><text x="252" y="246">10</text>
              </g>
              <rect x="280" y="50" width="37.5" height="20" rx="3" fill="#8b5cf6"/>
              <rect x="317.5" y="76" width="50" height="20" rx="3" fill="#3b82f6"/>
              <rect x="367.5" y="102" width="62.5" height="20" rx="3" fill="#3b82f6"/>
              <rect x="430" y="128" width="25" height="20" rx="3" fill="#4b4a78"/>
              <rect x="455" y="154" width="125" height="20" rx="3" fill="#10b981"/>
              <rect x="580" y="180" width="100" height="20" rx="3" fill="#10b981"/>
              <rect x="680" y="206" width="25" height="20" rx="3" fill="#f59e0b"/>
              <rect x="705" y="232" width="25" height="20" rx="3" fill="#8b5cf6"/>
              <line x1="280" y1="262" x2="730" y2="262" stroke="#4b4a78"/>
              <g stroke="#4b4a78"><line x1="280" y1="258" x2="280" y2="266"/><line x1="430" y1="258" x2="430" y2="266"/><line x1="580" y1="258" x2="580" y2="266"/><line x1="730" y1="258" x2="730" y2="266"/></g>
              <g text-anchor="middle" font-size="11" fill="#9b99b8">
                <text x="280" y="280">0</text><text x="430" y="280">60</text><text x="580" y="280">120</text><text x="730" y="280">180 min</text>
              </g>
              <g font-size="11" fill="#9b99b8">
                <rect x="20" y="296" width="12" height="10" fill="#10b981"/><text x="38" y="305">Hands-on practice</text>
                <rect x="160" y="296" width="12" height="10" fill="#3b82f6"/><text x="178" y="305">Explain and show</text>
                <rect x="295" y="296" width="12" height="10" fill="#f59e0b"/><text x="313" y="305">Check</text>
                <rect x="365" y="296" width="12" height="10" fill="#8b5cf6"/><text x="383" y="305">Start and close</text>
                <rect x="490" y="296" width="12" height="10" fill="#4b4a78"/><text x="508" y="305">Break</text>
              </g>
              <text x="20" y="326" font-weight="700" fill="#6ee7b7">Practice: 50 + 40 = 90 of 180 minutes (50%)</text>
            </g>
          </svg>
          <figcaption>Every minute has a purpose. The two practice blocks take half of the session, and the break comes before the long practice.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Plan the agenda</h3>
          <p>An <strong>agenda</strong> for a workshop lists each part, its time and its purpose. Mohan follows five simple rules:</p>
          <ul class="lc-list">
            <li><strong>Start with why.</strong> Show the real problem first: 30 of the 72 faulty audit sheets had a missing or wrong corrective action.</li>
            <li><strong>Show, then do.</strong> Rekha Joshi, the QA manager, fills in one sheet while everyone watches. Then the supervisors practise.</li>
            <li><strong>Practice is at least half.</strong> Here it is 50 + 40 = 90 of 180 minutes, which is 50%.</li>
            <li><strong>Break before the long practice.</strong> People focus better after a short rest.</li>
            <li><strong>End with a check and an action.</strong> A 10-minute quick check, then each person writes one thing they will do on their next shift.</li>
          </ul>
          <p>Mohan also plans the groups. There are 14 newly promoted supervisors among the 40. He spreads them across the 4 groups as 4, 4, 3 and 3 (4 + 4 + 3 + 3 = 14). In practice, each new supervisor works in a pair with an experienced one.</p>
          <p>Always add up the times yourself. A simple sheet with the minutes in B2 to B9 and <code>=SUM(B2:B9)</code> in B10 should show 180.</p>
        </div>
        <div class="lc-card">
          <h3>The facilitation guide</h3>
          <p>A facilitation guide lets any trained person run the session the same way. For each part it gives the purpose, the set-up, what to say and do, what to watch for and the timing. AI is very good at drafting this. You give it the agenda, the objective and the group.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Write trainer notes for a food safety workshop.</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>You are an experienced trainer. Write a facilitation guide for the
        segment below. Group: 10 shift supervisors, 3 or 4 newly promoted.
        Objective: when a CCP reading fails, hold the product, tell QA within
        15 minutes and record the action.
        Segment: "Drill: hold and tell", 40 minutes, in pairs.
        For each step give: time, what the trainer says (short lines),
        what learners do, materials, what to watch for, debrief questions.
        The step times must add up to exactly 40 minutes.
        Do not state any safety limit or rule. Write [FROM QA] where our
        QA manager must add it.</code></pre>
          <p>Here is part of the final guide, after Rekha checked it:</p>
          <table class="lc-table">
            <thead><tr><th>Time</th><th>What happens</th></tr></thead>
            <tbody>
              <tr><td>5 min</td><td><strong>Explain the drill.</strong> "Each pair gets case cards. One of you is the supervisor, one is the observer. Then you swap."</td></tr>
              <tr><td>25 min</td><td><strong>Pairs run the cases.</strong> 5 pairs, 2 made-up case cards each. The "supervisor" calls Rekha, who plays QA. The observer ticks the checklist: product held, QA told within 15 minutes, action recorded.</td></tr>
              <tr><td>10 min</td><td><strong>Debrief.</strong> Ask: "What did you do first? Why?" and "What could stop you calling QA quickly on a real shift?"</td></tr>
            </tbody>
          </table>
          <p>Materials: a mock CCP station, 10 case cards, a phone, a stopwatch and 10 observer checklists. Watch for: anyone who records only a new reading, or restarts before QA agrees (from Sahyadri's plan [CHECK]). The step times add up: 5 + 25 + 10 = 40 minutes.</p>
        </div>
        <div class="lc-card">
          <h3>Leading the room, and live online sessions</h3>
          <ul class="lc-list">
            <li><strong>Ask, then wait.</strong> Ask an open question, then wait a few seconds. Someone will usually answer.</li>
            <li><strong>Pairs before the group.</strong> Quiet people speak more easily to one partner first.</li>
            <li><strong>Use experience.</strong> If an experienced supervisor says "we always did it this way", ask them to share. Then look at the audit data together.</li>
            <li><strong>Allow local languages.</strong> Supervisors may discuss in Marathi or Hindi. Clear understanding matters more than English.</li>
            <li><strong>Make mistakes safe.</strong> Mistakes in the drill are for learning. Mohan tells the group that drill results are not sent to their managers.</li>
          </ul>
          <p>Live online sessions suit office teams better than a factory floor. At LedgerLite Pvt Ltd, a Karnataka software company, Farhan, the HR manager, runs a 60-minute online session for 12 team leads on giving feedback:</p>
          <table class="lc-table">
            <thead><tr><th>Minutes</th><th>Part</th></tr></thead>
            <tbody>
              <tr><td>5</td><td>Welcome and a quick poll: "When did you last give feedback?"</td></tr>
              <tr><td>10</td><td>SBI (situation, behaviour, impact) explained with one example</td></tr>
              <tr><td>5</td><td>Short demo: Farhan and a colleague role-play once</td></tr>
              <tr><td>20</td><td>Breakout rooms of 3 people (12 ÷ 3 = 4 rooms). Each person plays the manager once.</td></tr>
              <tr><td>15</td><td>Debrief in the main room: what worked, what was hard</td></tr>
              <tr><td>5</td><td>Each person types one action in the chat</td></tr>
            </tbody>
          </table>
          <p>The parts add up to 5 + 10 + 5 + 20 + 15 + 5 = 60 minutes. Online, people lose focus faster, so give them something to do every 10 minutes or so. Ask a co-host (a second person) to manage chat, polls and breakout rooms. Send role-play cards before the session. Most video tools, such as Zoom, Microsoft Teams and Google Meet, offer polls and breakout rooms. Features depend on your plan, so check the tool's current help pages. Record a session only if your company policy allows it, and tell people first.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: Mohan prepares the workshop with AI</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Mohan's prompt">Mohan gives the approved AI tool the objective, the 3-hour limit and the group details. He asks for a full agenda and a facilitation guide for each part.</li>
              <li data-kind="answer" data-label="AI draft">The draft is clear and practical. It says the total is 180 minutes. The opener asks each supervisor to "share the worst mistake your team made last month".</li>
              <li data-kind="tool" data-label="Add it up">Mohan types the minutes into a sheet and uses =SUM(B2:B9).</li>
              <li data-kind="result" data-label="Sheet shows">The total is 195 minutes, not 180. The AI made the drill 55 minutes but still wrote "180" as the total.</li>
              <li data-kind="warn" data-label="Catch this too">The opener could shame supervisors and expose details about their workers. Mohan replaces it with a made-up case card that everyone discusses.</li>
              <li data-kind="check" data-label="Expert check">Rekha reads the demo script. She removes a cooking temperature the AI had written. She adds the limit from Sahyadri's plan to the case cards herself.</li>
              <li data-kind="check" data-label="Pilot">Mohan runs the session with Group 1. The drill runs 10 minutes over, and supervisors ask for more practice cases. He adjusts the plan before Group 2.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to draft a workshop agenda and facilitation guide for a topic you teach. Then add up the times yourself.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an experienced workplace trainer. Plan a workshop.

        Topic: [what a shift supervisor must do when a food safety check fails]
        Objective: [When a check fails, the supervisor will hold the product, tell QA within 15 minutes and record the action, as seen in a drill.]
        Group: [10 supervisors, 3 of them newly promoted. Many prefer Marathi or Hindi.]
        Length: [3 hours], in a training room. [In person]

        1. An agenda table: Start time, Minutes, Part, Purpose. At least half of the time must be hands-on practice. Include one break.
        2. A facilitation guide for the longest practice part: what the trainer says (short lines), what learners do, materials, what to watch for and 3 debrief questions.
        3. How to pair new and experienced learners.
        4. The total minutes, and the share of time spent on practice, with the working shown.

        Rules: Do not state any safety limit or rule; write [FROM EXPERT] where one is needed. No activity may ask people to share real mistakes by colleagues' names. Use simple English.</pre>
            <ul class="ai-try-checks">
              <li>Add up the minutes yourself. They must match the total the AI states.</li>
              <li>Practice is at least half of the time, and the maths for the share is right.</li>
              <li>No safety limits are invented. Look for [FROM EXPERT].</li>
              <li>No activity could shame people or expose private details.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A good workshop is mostly practice, with every minute planned in an agenda and a facilitation guide. AI drafts both quickly, but you must add up the times, remove anything that could shame people, and let the expert check every safety fact. Then pilot it with one group and improve it.
        </div>
      HTML
      starter_code: nil
    },
    11 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-hr">HR & Recruitment</div>
          <h1 class="lc-title">Personalised Learning Paths</h1>
        </div>
        <p class="lc-lead">A <strong>personalised learning path</strong> is a planned set of learning steps for one person. It is based on their role and on their skill level today. Everyone aims for the same required level, but each person takes a different route. This saves time, because nobody sits through training they do not need. In this lesson you will build learning paths for the Sahyadri Foods supervisors from their skill ratings. You will also see what an AI tutor can do, and where its limits are.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 330" role="img" aria-label="A route map for the skill CCP checks and records. A skill rating goes to a gap check. A gap of 2 or more leads to extra support, a gap of 1 leads to the standard route, and no gap leads to the helper route. All routes end with a job check where QA reviews real sheets. A note says the AI tutor explains and quizzes, but people decide who is ready.">
            <defs><marker id="ld11a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="20" y="20" text-anchor="start" font-size="12" fill="#9b99b8">Same 4 workshops, different support around them: CCP records (required 4)</text>
              <rect x="20" y="125" width="150" height="60" rx="10" fill="#27274e" stroke="#8b5cf6"/>
              <text x="95" y="150" font-weight="700">Skill rating</text>
              <text x="95" y="170" font-size="11" fill="#9b99b8">codes S01 to S40</text>
              <rect x="200" y="125" width="160" height="60" rx="10" fill="#27274e" stroke="#3b82f6"/>
              <text x="280" y="150" font-weight="700">Gap to required?</text>
              <text x="280" y="170" font-size="11" fill="#9b99b8">required − rating</text>
              <rect x="400" y="30" width="205" height="58" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="502" y="53" font-weight="700" fill="#fcd34d">Gap 2+: Extra support</text>
              <text x="502" y="73" font-size="11" fill="#9b99b8">buddy shifts, extra practice</text>
              <rect x="400" y="126" width="205" height="58" rx="10" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="502" y="149" font-weight="700" fill="#67e8f9">Gap 1: Standard</text>
              <text x="502" y="169" font-size="11" fill="#9b99b8">workshops + spaced reviews</text>
              <rect x="400" y="222" width="205" height="58" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="502" y="245" font-weight="700" fill="#6ee7b7">No gap: Helper</text>
              <text x="502" y="265" font-size="11" fill="#9b99b8">pairs with a new supervisor</text>
              <rect x="630" y="125" width="115" height="60" rx="10" fill="#27274e" stroke="#ec4899"/>
              <text x="687" y="148" font-weight="700">Job check</text>
              <text x="687" y="165" font-size="11" fill="#9b99b8">QA reviews</text>
              <text x="687" y="179" font-size="11" fill="#9b99b8">real sheets</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#ld11a)">
                <line x1="171" y1="155" x2="196" y2="155"/>
                <line x1="361" y1="145" x2="396" y2="64"/>
                <line x1="361" y1="155" x2="396" y2="155"/>
                <line x1="361" y1="165" x2="396" y2="246"/>
                <line x1="606" y1="59" x2="626" y2="138"/>
                <line x1="606" y1="155" x2="626" y2="155"/>
                <line x1="606" y1="251" x2="626" y2="172"/>
              </g>
              <rect x="20" y="292" width="720" height="30" rx="8" fill="#1f1f44" stroke="#8b5cf6" stroke-dasharray="4 3"/>
              <text x="380" y="312" font-size="12" fill="#c4b5fd">AI tutor: explains and quizzes from approved job aids. People decide who is ready.</text>
            </g>
          </svg>
          <figcaption>Each supervisor starts from their own rating and takes the route that fits the gap. Every route ends with a check of real work.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Roles, levels and routes</h3>
          <p>A learning path has an end point and a start point. The end point comes from the <strong>role</strong>: the required level for each skill in the skills framework. The start point is the person's <strong>level</strong> today. At Sahyadri Foods, levels run from 1 (Aware) to 4 (Can teach and check others).</p>
          <p>Every supervisor attends the same 4 module workshops (12 classroom hours). The personal path changes what happens around the workshops. Mohan, the training lead, uses one simple rule for every skill. He agreed it with Sunita, the HR head, and Rekha Joshi, the QA manager. The <strong>gap</strong> is the required level minus the manager's rating.</p>
          <table class="lc-table">
            <thead><tr><th>Gap</th><th>Route</th><th>What the supervisor does</th></tr></thead>
            <tbody>
              <tr><td>2 or more</td><td><strong>Extra support</strong></td><td>The workshop, plus 3 buddy shifts with an experienced supervisor, extra practice sheets and a weekly QA review of their real sheets with feedback</td></tr>
              <tr><td>1</td><td><strong>Standard</strong></td><td>The workshop, the spaced review questions and the usual weekly QA check of real sheets</td></tr>
              <tr><td>0 (at or above required)</td><td><strong>Helper</strong></td><td>The workshop, where they pair with a newly promoted supervisor. A supervisor rated 4 can also become a mentor.</td></tr>
            </tbody>
          </table>
          <p><strong>Roles matter too.</strong> 14 of the 40 supervisors were promoted from line worker in the last 12 months. They have never led a team. So they also get a mentor, whatever their ratings. Paths can also differ in format. For example, the 4 supervisors who have only a basic phone do their micro lessons on the shared tablet in the supervisors' room.</p>
        </div>
        <div class="lc-card">
          <h3>Build the paths in a spreadsheet</h3>
          <p>Mohan adds two columns to his skill gap sheet for S01 to S05. Rows 2 to 6 hold the manager ratings, with column C for CCP checks and records. Row 8 holds the required levels. (CCP means critical control point: a step where a check stops a food safety hazard.)</p>
          <pre><code>H2 (CCP route):          =IF(C$8-C2&gt;=2,"Extra support",IF(C$8-C2=1,"Standard","Helper"))
        I2 (skills below level): =SUMPRODUCT(--(B2:G2&lt;B$8:G$8))</code></pre>
          <p>Copy both formulas down to row 6. In column I, the <code>--</code> turns each TRUE or FALSE into 1 or 0, so SUMPRODUCT counts the skills below the required level. This works in Excel and Google Sheets.</p>
          <table class="lc-table">
            <thead><tr><th>Code</th><th>C: CCP rating</th><th>CCP gap (4 − rating)</th><th>H: CCP route</th><th>I: Skills below required (of 6)</th></tr></thead>
            <tbody>
              <tr><td>S01</td><td>2</td><td>2</td><td>Extra support</td><td>5</td></tr>
              <tr><td>S02</td><td>3</td><td>1</td><td>Standard</td><td>3</td></tr>
              <tr><td>S03</td><td>2</td><td>2</td><td>Extra support</td><td>6</td></tr>
              <tr><td>S04</td><td>3</td><td>1</td><td>Standard</td><td>4</td></tr>
              <tr><td>S05</td><td>2</td><td>2</td><td>Extra support</td><td>4</td></tr>
            </tbody>
          </table>
          <p>S03 is below the required level in all 6 skills, so S03 needs the most support. S02 is below in only 3 skills. Before Mohan fixes any path, he checks the ratings against evidence, such as QA's review of real record sheets. Ratings are opinions.</p>
          <p><strong>Where AI helps:</strong> AI can turn each row into a short, plain-language plan for the supervisor and their manager. Give it codes and ratings only, never names. Mohan reads every plan before anyone sees it.</p>
        </div>
        <div class="lc-card">
          <h3>AI tutors and their limits</h3>
          <p>An <strong>AI tutor</strong> is an AI assistant set up to help learners study. It can explain a topic again in simple words, answer questions at any hour and quiz the learner. Night-shift supervisors at Sahyadri cannot always reach Mohan or QA. A tutor on the shared tablet in the supervisors' room could help them.</p>
          <p>Many AI tools let you save instructions and documents for a project or a custom assistant. Features differ between tools, so check the tool's current help pages. Mohan gives the tutor only the job aids that Rekha has approved, plus these instructions:</p>
          <pre><code>You are a study helper for shift supervisors at Sahyadri Foods.
        Answer only from the attached approved job aids.
        If the answer is not in them, say: "I do not know. Please ask QA."
        Never give a temperature, time or other limit that is not in the job aids.
        Never say that a batch is safe to release. QA decides that.
        Quiz the learner one question at a time and explain each answer.
        Reply in the language the learner uses: English, Hindi or Marathi.
        Do not ask for names or personal details.</code></pre>
          <table class="lc-table">
            <thead><tr><th>An AI tutor can</th><th>An AI tutor cannot</th></tr></thead>
            <tbody>
              <tr><td>Explain a rule again, in a different way</td><td>Promise that its answers are correct. It can still invent facts.</td></tr>
              <tr><td>Quiz a learner and explain wrong answers</td><td>See how a supervisor really works on the floor</td></tr>
              <tr><td>Answer a question at 3 am on a night shift</td><td>Decide if a person is ready. People decide that from real evidence.</td></tr>
              <tr><td>Give practice in Hindi or Marathi</td><td>Replace QA when a real food safety problem happens</td></tr>
            </tbody>
          </table>
          <p>Two more rules. First, tell supervisors what the tool stores and who can see their chats. On a shared tablet, each person must log out after use. Do not use tutor chats to rate or punish anyone. Second, some people prefer talking or paper to typing. Keep a non-AI option so nobody is left out.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: Mohan tests the AI tutor before launch</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="thought" data-label="The plan">Before any supervisor uses the tutor, Mohan tests it with 20 questions that supervisors really ask. Rekha has written the correct answer to each one.</li>
              <li data-kind="user" data-label="Test question 1">"The cooking reading is below the limit. Can I cook the batch longer and just write the new reading?"</li>
              <li data-kind="answer" data-label="Tutor reply">"No. Follow the job aid 'When a CCP check fails': hold the product, tell QA within 15 minutes, record the reading, time and action, and wait for QA before restart." This matches Rekha's answer.</li>
              <li data-kind="user" data-label="Test question 2">"What is the core temperature limit for Line 2?"</li>
              <li data-kind="warn" data-label="Catch this">The tutor gives a number. That number is not in the job aid. It came from the AI's general knowledge and may not match Sahyadri's plan.</li>
              <li data-kind="tool" data-label="Fix the setup">Mohan makes the rule stronger: "If a number is not in the job aid, say you do not know. Point to the limit printed on the CCP sheet, and to QA."</li>
              <li data-kind="check" data-label="Test again">Mohan runs all 20 questions again. Rekha compares the replies with her answers, and all 20 now match. Mohan will repeat the test every time a job aid changes.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Give AI a small set of made-up skill ratings and a clear routing rule. Ask it to draft a personalised learning path for each person.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an L&amp;D specialist. Build personalised learning paths from skill ratings.

        Role: [shift supervisor at a food factory]
        Skills and required levels (scale 1 to 4): [Hygiene 4, CCP records 4, Allergen changeover 3, Non-conformance 3, Handover 3, Feedback 3]
        Manager ratings (made-up, codes only, same skill order):
        [S01: 3,2,2,2,3,2
        S02: 4,3,3,2,3,2
        S03: 3,2,2,1,2,2
        S04: 3,3,2,2,3,3
        S05: 2,2,3,2,3,1]

        Everyone attends the same workshops. Support rule: Gap = required minus rating. Gap 2 or more = Extra support (buddy shifts, extra practice, weekly feedback on real work). Gap 1 = Standard (workshop and review questions). Gap 0 or less = Helper (pairs with a newer colleague).

        1. Make a table: Code, Skill, Rating, Required, Gap, Support level.
        2. For each code, write a short path: the skills to focus on in priority order ([CCP records first, then allergen changeover]), one on-the-job activity and one "learn from others" activity.
        3. Say which people need the most support, and why.
        4. List 3 questions to ask each manager before the paths are final.

        Rules: Simple English. Codes only. Judge skills only, never personality or attitude.</pre>
            <ul class="ai-try-checks">
              <li>Check some gaps yourself. For example, S03 non-conformance is 3 − 1 = 2, so Extra support.</li>
              <li>S03 should be below the required level in all 6 skills. S05 should have the most Extra support skills (3).</li>
              <li>Nobody gets extra support for a skill they already have at the required level.</li>
              <li>The answer uses codes only and makes no comments about personality.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A personalised path starts from the role's required level and the person's real level. A simple, agreed rule decides how much support each person gets. An AI tutor can explain and quiz at any hour, but only from approved content. People check the real work and decide who is ready.
        </div>
      HTML
      starter_code: nil
    },
    12 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-hr">HR & Recruitment</div>
          <h1 class="lc-title">Coaching and Mentoring</h1>
        </div>
        <p class="lc-lead">A workshop teaches a skill once. Coaching and mentoring help people use it every day. This is the "20" in the 70-20-10 idea: learning from other people. In this lesson you will learn how coaching and mentoring differ. You will follow a coaching conversation that uses the GROW model. You will plan a mentoring programme for the 14 newly promoted supervisors at Sahyadri Foods. You will also use AI as a safe practice partner for hard conversations.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 292" role="img" aria-label="Top: the GROW model in four steps with arrows: Goal, Reality, Options and Way forward, each with an example question. Bottom: three kinds of support compared: a coach asks questions, a mentor shares experience, and an AI practice partner plays a worker in a role-play but does not score your skill.">
            <defs><marker id="ld12a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="20" y="22" text-anchor="start" font-size="12" fill="#9b99b8">The GROW model: four steps in a coaching talk</text>
              <rect x="20" y="34" width="160" height="84" rx="10" fill="#27274e" stroke="#8b5cf6"/>
              <text x="100" y="58" font-weight="700">G: Goal</text>
              <text x="100" y="82" font-size="11" fill="#9b99b8">What do you want</text>
              <text x="100" y="98" font-size="11" fill="#9b99b8">to change?</text>
              <rect x="205" y="34" width="160" height="84" rx="10" fill="#27274e" stroke="#3b82f6"/>
              <text x="285" y="58" font-weight="700">R: Reality</text>
              <text x="285" y="82" font-size="11" fill="#9b99b8">What happens now?</text>
              <text x="285" y="98" font-size="11" fill="#9b99b8">What have you tried?</text>
              <rect x="390" y="34" width="160" height="84" rx="10" fill="#27274e" stroke="#10b981"/>
              <text x="470" y="58" font-weight="700">O: Options</text>
              <text x="470" y="82" font-size="11" fill="#9b99b8">What could you do?</text>
              <text x="470" y="98" font-size="11" fill="#9b99b8">What else?</text>
              <rect x="575" y="34" width="160" height="84" rx="10" fill="#27274e" stroke="#f59e0b"/>
              <text x="655" y="58" font-weight="700">W: Way forward</text>
              <text x="655" y="82" font-size="11" fill="#9b99b8">What will you do,</text>
              <text x="655" y="98" font-size="11" fill="#9b99b8">and by when?</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#ld12a)">
                <line x1="181" y1="76" x2="201" y2="76"/>
                <line x1="366" y1="76" x2="386" y2="76"/>
                <line x1="551" y1="76" x2="571" y2="76"/>
              </g>
              <text x="20" y="150" text-anchor="start" font-size="12" fill="#9b99b8">Three kinds of support for new supervisors</text>
              <rect x="20" y="162" width="230" height="118" rx="10" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="135" y="188" font-weight="700" fill="#67e8f9">Coach</text>
              <text x="135" y="212" font-size="12">Asks questions and listens</text>
              <text x="135" y="232" font-size="12">The person finds the answer</text>
              <text x="135" y="256" font-size="11" fill="#9b99b8">Example: Anil with S12</text>
              <rect x="265" y="162" width="230" height="118" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="380" y="188" font-weight="700" fill="#f9a8d4">Mentor</text>
              <text x="380" y="212" font-size="12">Shares their own experience</text>
              <text x="380" y="232" font-size="12">Meets every 2 weeks</text>
              <text x="380" y="256" font-size="11" fill="#9b99b8">Example: senior supervisor</text>
              <rect x="510" y="162" width="230" height="118" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="625" y="188" font-weight="700" fill="#c4b5fd">AI practice partner</text>
              <text x="625" y="212" font-size="12">Plays a worker in a role-play</text>
              <text x="625" y="232" font-size="12">Safe place to make mistakes</text>
              <text x="625" y="256" font-size="11" fill="#9b99b8">Does not score your skill</text>
            </g>
          </svg>
          <figcaption>A coach helps a person find their own answer. A mentor shares experience. AI gives safe practice, but people judge the skill.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Training, coaching and mentoring</h3>
          <table class="lc-table">
            <thead><tr><th></th><th>Training</th><th>Coaching</th><th>Mentoring</th></tr></thead>
            <tbody>
              <tr><td><strong>What it is</strong></td><td>Teaching set knowledge and skills</td><td>Helping a person find their own way to improve, mostly by asking questions</td><td>An experienced person shares what they have learned</td></tr>
              <tr><td><strong>Focus</strong></td><td>Everyone learns the same content</td><td>One person's performance now</td><td>One person's growth over months</td></tr>
              <tr><td><strong>Who does it</strong></td><td>Trainer or expert</td><td>Manager or trained coach</td><td>A senior colleague, often not the person's manager</td></tr>
              <tr><td><strong>Sahyadri example</strong></td><td>Workshop on CCP records</td><td>Anil, the production manager, coaches a new supervisor</td><td>A senior supervisor guides a new one for 12 weeks</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>A coaching conversation with GROW</h3>
          <p>The <strong>GROW model</strong> is a simple structure for a coaching talk: Goal, Reality, Options and Way forward. Anil Deshmukh coaches S12, a newly promoted supervisor. Last week QA sent back 3 of S12's CCP record sheets because the corrective action was missing. (A CCP, or critical control point, is a step where a check stops a food safety hazard.)</p>
          <table class="lc-table">
            <thead><tr><th>Step</th><th>Anil asks</th><th>S12 says</th></tr></thead>
            <tbody>
              <tr><td>Goal</td><td>"What would you like to be different by the end of this month?"</td><td>"No sheets sent back by QA."</td></tr>
              <tr><td>Reality</td><td>"Walk me through what happens when a reading fails on your shift."</td><td>"I hold the product and call QA. Then the line gets busy and I forget to write the action."</td></tr>
              <tr><td>Options</td><td>"What could help you remember? What else?"</td><td>"I could write it before I leave the line. Or my line leader could remind me."</td></tr>
              <tr><td>Way forward</td><td>"Which one will you try? When shall we look at it together?"</td><td>"I will write it before I leave the line, from tomorrow. Let's check my sheets next Friday."</td></tr>
            </tbody>
          </table>
          <p>Anil does not give the answer. S12 chooses it, so S12 owns it. But notice one limit. Coaching is about <em>how</em> to do the job well, not <em>whether</em> to follow the rules. "Hold the product, tell QA, record the action" comes from Sahyadri's plan. It is never one of the "options".</p>
        </div>
        <div class="lc-card">
          <h3>Plan a mentoring programme</h3>
          <p>Mohan plans a 12-week mentoring programme for the 14 newly promoted supervisors. Each person in the programme is a <strong>mentee</strong> (the person being mentored).</p>
          <table class="lc-table">
            <thead><tr><th>Part</th><th>Mohan's plan</th></tr></thead>
            <tbody>
              <tr><td>Mentors</td><td>7 experienced supervisors, each with 2 mentees (7 × 2 = 14). All volunteer. Each is rated 4 (can teach and check others) in at least one food safety skill.</td></tr>
              <tr><td>Matching</td><td>Same shift, so they can meet. A shared language. Mohan and Sunita make every match. AI does not.</td></tr>
              <tr><td>Time</td><td>30 minutes every 2 weeks (6 meetings), plus 2 shadow shifts. Anil agrees this time off the line.</td></tr>
              <tr><td>Ground rules</td><td>Talks stay private, with one exception: any food safety problem goes to QA at once.</td></tr>
              <tr><td>Check-ins</td><td>Mohan checks with each pair at week 6 and asks both for feedback at week 12.</td></tr>
            </tbody>
          </table>
          <p>AI can draft the mentor guide in minutes. For example:</p>
          <pre><code>You are an L&amp;D adviser. Draft a short mentor guide for a
        12-week mentoring programme at a food factory in India.
        Mentors: experienced shift supervisors. Mentees: supervisors
        promoted from line worker in the last year.
        Include: the mentor's role in 5 points, ground rules (talks
        are private, but safety problems always go to QA), a plan for
        6 meetings of 30 minutes, 3 good questions for each meeting,
        and a one-page meeting log with no personal details.
        Use simple English that is easy to translate into Marathi.</code></pre>
          <p>Mohan then edits the guide. Rekha checks any safety content in it.</p>
        </div>
        <div class="lc-card">
          <h3>AI as a practice partner</h3>
          <p>Giving feedback is hard for new supervisors. They may have worked beside the same workers for years. AI can play a worker in a <strong>role-play</strong> (a practice conversation), so supervisors can practise before the real talk. At Sahyadri, they practise with <strong>SBI</strong>: Situation, Behaviour, Impact. For example:</p>
          <pre><code>Situation: "At 6:10 this morning, at the Line 2 entry..."
        Behaviour: "...you went onto the line without washing your hands."
        Impact:    "Germs from hands can get into food that customers eat."</code></pre>
          <p>Know the limits of an AI practice partner:</p>
          <ul class="lc-list">
            <li><strong>It is not a real person.</strong> It may give in too easily or argue too much. Ask it to push back in a realistic way.</li>
            <li><strong>It is practice, not a test.</strong> The real score comes from a person using the observer checklist.</li>
            <li><strong>It cannot read tone, feelings or personality.</strong> Do not trust any tool that claims to detect emotions or honesty from voice or video.</li>
            <li><strong>Keep it made-up.</strong> Never type a real worker's name or a real incident.</li>
          </ul>
          <p>After two or three AI practice rounds, the supervisor practises once more with their mentor watching.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: order a GROW coaching talk</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put the steps of Anil's coaching talk in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Agree the time, the topic and what stays private</li>
              <li data-order="2">Goal: ask what the supervisor wants to change</li>
              <li data-order="3">Reality: ask what happens now, using real examples from the sheets</li>
              <li data-order="4">Options: ask for possible actions, and add ideas only if needed</li>
              <li data-order="5">Way forward: agree one or two actions and a date to review them</li>
              <li data-order="6">Follow up on that date and point out any progress</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Use AI as a practice partner for a feedback conversation. Play the supervisor. AI plays the worker, then gives you feedback.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">Let's do a role-play so I can practise giving feedback.

        You play: [a line worker at a food factory who has worked there for 8 years]
        I play: [a newly promoted shift supervisor who used to work beside you]
        Situation: [This morning, you went onto the production line without washing your hands.]

        Rules for the role-play:
        - Stay in role. Reply in 1 to 3 sentences, like a real person.
        - Push back a little in a realistic way (for example, you were late, or the line was already starting). Calm down if I stay respectful and clear.
        - Speak in [simple English].
        - Wait for my first message before you start.

        When I type END, step out of role. Score me from 0 to 5, one point for each item:
        1. I described the situation (when and where).
        2. I described the behaviour as a fact, not a label like "careless".
        3. I explained the impact on food safety.
        4. I asked for your view and listened.
        5. We agreed a clear next step.
        Quote my words for each point. Then suggest one better sentence I could use next time.</pre>
            <ul class="ai-try-checks">
              <li>The AI stays in role and pushes back in a realistic way, not too hard and not too easily.</li>
              <li>The score quotes your real words for each checklist item.</li>
              <li>Treat the score as practice only. A person with the observer checklist gives the real score.</li>
              <li>You used a made-up situation, not a real worker or incident.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Coaching asks questions so people find their own way to improve. Mentoring shares experience over time. AI is a safe place to practise hard conversations, but it is not a judge of skill. People decide the matches, give the real feedback and keep safety rules outside the "options".
        </div>
      HTML
      starter_code: nil
    },
    13 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-hr">HR & Recruitment</div>
          <h1 class="lc-title">Measuring Training Impact</h1>
        </div>
        <p class="lc-lead">Managers do not only ask "Did people like the training?" They ask "Did work get better?" In this lesson you will use <strong>Kirkpatrick's four levels</strong> to measure training, from people's reactions to business results. You will read made-up results from the Safe Shift Leader programme at Sahyadri Foods. You will also learn the most important rule of measurement: when other things change at the same time, you cannot say that training alone caused the result. You need a fair comparison.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 336" role="img" aria-label="Left: Kirkpatrick's four levels with made-up Sahyadri results. Level 1 Reaction: 4.4 out of 5. Level 2 Learning: test score rose from 55 percent to 86 percent. Level 3 Behaviour: 32 of 40 passed a surprise floor drill. Level 4 Results: sheets with errors fell from 12 percent to 4 percent. Right: a bar chart of faulty sheets per 600 by cause. Corrective action errors fell from 30 to 6, down 80 percent. Errors from other causes fell from 42 to 18, down 57 percent.">
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <text x="20" y="24" font-size="12" fill="#9b99b8">Kirkpatrick's four levels (all 40 supervisors, made-up)</text>
              <rect x="20" y="40" width="420" height="55" rx="8" fill="#27274e" stroke="#10b981"/>
              <text x="36" y="63" font-weight="700">4. Results</text>
              <text x="36" y="82" font-size="11" fill="#9b99b8">did the business measure change?</text>
              <text x="424" y="63" text-anchor="end" font-weight="700" fill="#6ee7b7">12% → 4%</text>
              <text x="424" y="82" text-anchor="end" font-size="11" fill="#9b99b8">sheets with errors</text>
              <rect x="20" y="103" width="420" height="55" rx="8" fill="#27274e" stroke="#f59e0b"/>
              <text x="36" y="126" font-weight="700">3. Behaviour</text>
              <text x="36" y="145" font-size="11" fill="#9b99b8">do they do it on the job?</text>
              <text x="424" y="126" text-anchor="end" font-weight="700" fill="#fcd34d">32 of 40</text>
              <text x="424" y="145" text-anchor="end" font-size="11" fill="#9b99b8">passed a surprise floor drill</text>
              <rect x="20" y="166" width="420" height="55" rx="8" fill="#27274e" stroke="#3b82f6"/>
              <text x="36" y="189" font-weight="700">2. Learning</text>
              <text x="36" y="208" font-size="11" fill="#9b99b8">did they learn it?</text>
              <text x="424" y="189" text-anchor="end" font-weight="700" fill="#93c5fd">55% → 86%</text>
              <text x="424" y="208" text-anchor="end" font-size="11" fill="#9b99b8">10-question test, before and after</text>
              <rect x="20" y="229" width="420" height="55" rx="8" fill="#27274e" stroke="#8b5cf6"/>
              <text x="36" y="252" font-weight="700">1. Reaction</text>
              <text x="36" y="271" font-size="11" fill="#9b99b8">did they find it useful?</text>
              <text x="424" y="252" text-anchor="end" font-weight="700" fill="#c4b5fd">4.4 of 5</text>
              <text x="424" y="271" text-anchor="end" font-size="11" fill="#9b99b8">feedback forms after M2</text>
              <text x="605" y="24" text-anchor="middle" font-size="12" fill="#9b99b8">Faulty sheets per 600, by cause</text>
              <rect x="480" y="36" width="10" height="10" fill="#f59e0b"/>
              <text x="496" y="45" font-size="11" fill="#9b99b8">Before</text>
              <rect x="570" y="36" width="10" height="10" fill="#10b981"/>
              <text x="586" y="45" font-size="11" fill="#9b99b8">8 weeks after</text>
              <rect x="480" y="150" width="40" height="120" fill="#f59e0b"/>
              <rect x="530" y="246" width="40" height="24" fill="#10b981"/>
              <rect x="620" y="102" width="40" height="168" fill="#f59e0b"/>
              <rect x="670" y="198" width="40" height="72" fill="#10b981"/>
              <line x1="470" y1="270" x2="740" y2="270" stroke="#4b4a78"/>
              <g text-anchor="middle" font-weight="700" font-size="11">
                <text x="500" y="143">30</text>
                <text x="550" y="239">6 (−80%)</text>
                <text x="640" y="95">42</text>
                <text x="690" y="191">18 (−57%)</text>
              </g>
              <g text-anchor="middle" font-size="11" fill="#9b99b8">
                <text x="525" y="288">Corrective action</text><text x="665" y="288">Other causes</text>
                <text x="525" y="303">(training target)</text><text x="665" y="303">(rota, probe, form)</text>
              </g>
              <text x="20" y="326" font-size="11" fill="#9b99b8">Made-up data. All sheets: 72 of 600 (12%) before, 24 of 600 (4%) after. Goal: under 3% by March 2027.</text>
            </g>
          </svg>
          <figcaption>Measure at all four levels. At level 4, both kinds of error fell, because training and three other fixes happened at the same time.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Kirkpatrick's four levels</h3>
          <p>Donald Kirkpatrick described four levels for evaluating training. Each level answers a harder question, and each one matters more to the business.</p>
          <table class="lc-table">
            <thead><tr><th>Level</th><th>Question</th><th>Sahyadri measure</th><th>When</th></tr></thead>
            <tbody>
              <tr><td>1. Reaction</td><td>Did people find it useful and relevant?</td><td>Anonymous feedback form, 1 to 5 scale, plus comments</td><td>End of each workshop</td></tr>
              <tr><td>2. Learning</td><td>Did they gain the knowledge and skill?</td><td>The 10-question pre-test before M1, and a similar test after M4. 3 practice CCP sheets in M1.</td><td>Before and during the programme</td></tr>
              <tr><td>3. Behaviour</td><td>Do they do it on the job?</td><td>A surprise floor drill run by QA. Observed allergen changeovers. New manager ratings.</td><td>2 to 8 weeks after each module</td></tr>
              <tr><td>4. Results</td><td>Did the business measure change?</td><td>Share of CCP record sheets with errors, by cause. Batches held after allergen changeovers.</td><td>8 weeks after the programme, then the March 2027 audit</td></tr>
            </tbody>
          </table>
          <p><strong>Completion data is not a level.</strong> "40 of 40 attended all 4 modules" tells you who was in the room. It does not tell you what they learned or do now. Report it, but never stop there.</p>
        </div>
        <div class="lc-card">
          <h3>Levels 1 to 3: the results</h3>
          <p>All 40 supervisors went through the 8-week programme in 4 groups of 10. Mohan keeps the results in a sheet with the codes S01 to S40 in rows 2 to 41. Column L holds each pre-test score (out of 10) and column M the end-of-programme test score. Column N holds the practice sheets result and column O the floor drill result.</p>
          <table class="lc-table">
            <thead><tr><th>Level</th><th>Result (made-up)</th><th>Formula</th><th>Working</th></tr></thead>
            <tbody>
              <tr><td>1. Reaction</td><td>"Useful for my job" after M2: 4.4 of 5 (40 forms)</td><td><code>=AVERAGE(B2:B41)</code> in the separate, anonymous forms sheet</td><td>176 ÷ 40 = 4.4</td></tr>
              <tr><td>2. Learning</td><td>Test score: 55% before, 86% after</td><td><code>=AVERAGE(L2:L41)/10</code> and <code>=AVERAGE(M2:M41)/10</code></td><td>5.5 ÷ 10 = 55%; 8.6 ÷ 10 = 86%</td></tr>
              <tr><td>2. Learning</td><td>The "low cooking reading" question: 12 of 40 right before, 36 of 40 after</td><td><code>=COUNTIF(...,"B")</code> on that question's column</td><td>30% → 90%</td></tr>
              <tr><td>2. Learning</td><td>34 of 40 passed 3 of 3 practice sheets in M1</td><td><code>=COUNTIF(N2:N41,"Pass")</code></td><td>The other 6 retried with a buddy</td></tr>
              <tr><td>3. Behaviour</td><td>32 of 40 passed a surprise floor drill: hold, tell QA within 15 minutes, record</td><td><code>=COUNTIF(O2:O41,"Pass")/COUNTA(O2:O41)</code></td><td>32 ÷ 40 = 80%</td></tr>
              <tr><td>3. Behaviour</td><td>CCP manager rating: 2.4 → 3.2</td><td><code>=AVERAGE(...)</code> of the new ratings</td><td>Sum of ratings: 96 → 128, each ÷ 40</td></tr>
            </tbody>
          </table>
          <p>Keep the feedback forms anonymous and in a separate sheet. People give more honest answers when their code is not on the form. Report results as totals. Use them to plan coaching for the 8 who did not pass the drill, not to punish anyone.</p>
        </div>
        <div class="lc-card">
          <h3>Level 4: results, and what you can honestly say</h3>
          <p>QA checked 600 sheets from the 8 weeks after the programme, the same number as the audit. But the rota, probe and form fixes also started during those weeks, for every shift. So Mohan does not only count the total. He counts errors <strong>by cause</strong>, because each fix aimed at a different cause. In D2, type <code>=(B2-C2)/B2</code>, format it as a percentage and copy it down.</p>
          <table class="lc-table">
            <thead><tr><th>Row</th><th>A: Cause (who fixes it)</th><th>B: Before (of 600)</th><th>C: After (of 600)</th><th>D: Fall</th></tr></thead>
            <tbody>
              <tr><td>2</td><td>Corrective action missing or wrong (training)</td><td>30</td><td>6</td><td>80%</td></tr>
              <tr><td>3</td><td>Readings missed at shift change (rota)</td><td>18</td><td>7</td><td>61%</td></tr>
              <tr><td>4</td><td>Probe not calibrated (maintenance)</td><td>14</td><td>5</td><td>64%</td></tr>
              <tr><td>5</td><td>Entry in the wrong column (new form)</td><td>10</td><td>6</td><td>40%</td></tr>
              <tr><td>6</td><td>Total</td><td>72</td><td>24</td><td>67%</td></tr>
            </tbody>
          </table>
          <p>Error rate: <code>=B6/600</code> gives 12.0% and <code>=C6/600</code> gives 4.0%. That is a fall of 8 <strong>percentage points</strong> (the gap between two percentages). The non-training causes together fell from 42 to 18, which is (42 − 18) ÷ 42 = 57%. Sahyadri is closer to the goal, but 4% is not yet under 3%.</p>
          <table class="lc-table">
            <thead><tr><th>You can say</th><th>You cannot say</th></tr></thead>
            <tbody>
              <tr><td>"After the programme and the three other fixes, faulty sheets fell from 12% to 4%."</td><td>"Training cut errors from 12% to 4%." The other fixes aimed at 42 of the 72 errors, and those errors fell too.</td></tr>
              <tr><td>"Missing corrective actions, the cause the training aimed at, fell the most: 80%, against 57% for the other causes."</td><td>"Training caused the 80% fall." Everyone knew about the audit, and managers now check sheets more often. Both can reduce every kind of error.</td></tr>
              <tr><td>"No batches were held after allergen changeovers in these 8 weeks. We will keep watching."</td><td>"Training stopped batch holds." There were only 4 holds in the whole April to June quarter, so 8 weeks is too short to judge.</td></tr>
            </tbody>
          </table>
          <p><strong>How to get stronger evidence.</strong> All 40 supervisors trained in the same 8 weeks, so there is no untrained <strong>comparison group</strong> (similar people who have not had the training yet). Next time, Mohan can create one. When new supervisors are promoted, he splits them by drawing lots. One half trains first and the other half trains 8 weeks later. Both halves have the same rota, probes and form. If the trained half makes clearly fewer corrective-action errors, the link to training is much stronger.</p>
        </div>
        <div class="lc-card">
          <h3>Where AI helps, and where it must not</h3>
          <ul class="lc-list">
            <li><strong>Themes from comments.</strong> Paste the anonymous comments. Ask AI to group them into themes, count each theme and quote one example. Check that the counts add up to the number of comments.</li>
            <li><strong>Draft the report.</strong> Give AI your calculated numbers and ask for a one-page summary by level.</li>
            <li><strong>Check your claims.</strong> Ask: "Which sentences in this report claim more than the data shows?"</li>
            <li><strong>Not the maths.</strong> The spreadsheet calculates the rates. AI can make small maths mistakes.</li>
            <li><strong>Not named data.</strong> Use codes. Test scores and drill results are personal data.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Activity: which Kirkpatrick level is it?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each piece of evidence into the level it measures.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="l1" data-label="1. Reaction"></div>
              <div data-sorter-target="bucket" data-bucket="l2" data-label="2. Learning"></div>
              <div data-sorter-target="bucket" data-bucket="l3" data-label="3. Behaviour"></div>
              <div data-sorter-target="bucket" data-bucket="l4" data-label="4. Results"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="l1" data-why="It shows how people felt about the training, not what they can do.">Supervisors rate the M2 workshop 4.4 out of 5 for "useful for my job"</li>
              <li data-bucket="l2" data-why="It measures knowledge gained, before and after the programme.">The 10-question test score rises from 55% to 86%</li>
              <li data-bucket="l2" data-why="The practice happens in the workshop, not in real work, so it shows learning.">34 of 40 supervisors complete 3 practice sheets with no errors</li>
              <li data-bucket="l3" data-why="QA sees what supervisors really do on the floor after the training.">In a surprise floor drill, 32 of 40 hold the product, tell QA and record the action</li>
              <li data-bucket="l3" data-why="Managers rate what they see supervisors do on the job.">Manager ratings for CCP records rise from 2.4 to 3.2</li>
              <li data-bucket="l4" data-why="This is the business measure that started the whole programme.">The share of CCP sheets with errors falls from 12% to 4%</li>
              <li data-bucket="l4" data-why="Money lost from held batches is a business result.">Rework and waste from held batches, compared with the ₹2,60,000 in April to June</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Give AI a set of made-up training results. Ask it to report them by Kirkpatrick level and to say honestly what the data can and cannot show.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an L&amp;D analyst. Write an honest evaluation of a training programme.

        Programme: [food safety records training for 40 shift supervisors, 4 groups of 10, 8 weeks]
        Other changes at the same time: [new shift rota, weekly probe calibration, a redesigned record form]
        Made-up results:
        [- Feedback: 4.4 of 5 for "useful for my job"
        - Test: 55% before, 86% after
        - Surprise floor drill: 32 of 40 passed
        - Faulty sheets per 600, before then after: missing corrective action 30 then 6; shift change 18 then 7; probe 14 then 5; wrong column 10 then 6]

        1. Make a table with Kirkpatrick's four levels: level, measure, result, what it tells us.
        2. Calculate the total error rate before and after, and the fall for each cause. Show your working.
        3. List what we CAN and CANNOT conclude about the effect of the training.
        4. Give 3 other reasons the errors could have fallen.
        5. Design a fair comparison group for the next programme, in 4 simple steps.

        Rules: Simple English. Do not say training caused a change unless a comparison supports it. Say how sure we can be.</pre>
            <ul class="ai-try-checks">
              <li>The totals are right: 72 of 600 = 12% before, 24 of 600 = 4% after.</li>
              <li>The falls are right: corrective action 80%, shift change 61%, probe 64%, wrong column 40%.</li>
              <li>It does not say training alone cut errors from 12% to 4%.</li>
              <li>The comparison group idea is fair, for example a group chosen by drawing lots that trains later.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Measure at all four levels, but judge training by behaviour and results. When other fixes happen at the same time, break the results down by cause and plan a comparison group for next time. Say only what the data shows, and say how sure you are.
        </div>
      HTML
      starter_code: nil
    },
    14 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-hr">HR & Recruitment</div>
          <h1 class="lc-title">Content Quality, Copyright and Accessibility</h1>
        </div>
        <p class="lc-lead">AI helps you make training content fast. Fast content still has to be correct, fair to its sources and usable by every learner. In this lesson you will set up an accuracy review with a review log. You will learn how to use sources fairly. You will make content accessible, which means people with disabilities, low literacy or a noisy workplace can use it too. You will also make safe translations into the languages your learners speak.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="A six-step quality check for training content, in two rows. 1 AI draft with facts tagged, 2 fact check by the QA manager against Sahyadri's plan, 3 sources and rights, 4 accessibility, 5 languages with a human check, 6 publish with version, owner and review date. A dashed arrow from step 6 back to step 2 shows that content returns to the fact check if the plan or SOP changes.">
            <defs>
              <marker id="ld14a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker>
              <marker id="ld14b" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#f59e0b"/></marker>
            </defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="20" y="22" text-anchor="start" font-size="12" fill="#9b99b8">Mohan's quality check for every piece of training content</text>
              <rect x="20" y="40" width="200" height="70" rx="10" fill="#27274e" stroke="#8b5cf6"/>
              <text x="120" y="68" font-weight="700">1. AI draft</text>
              <text x="120" y="90" font-size="11" fill="#9b99b8">facts tagged with [CHECK]</text>
              <rect x="280" y="40" width="200" height="70" rx="10" fill="#27274e" stroke="#f59e0b"/>
              <text x="380" y="68" font-weight="700">2. Fact check</text>
              <text x="380" y="90" font-size="11" fill="#9b99b8">QA manager vs Sahyadri's plan</text>
              <rect x="540" y="40" width="200" height="70" rx="10" fill="#27274e" stroke="#3b82f6"/>
              <text x="640" y="68" font-weight="700">3. Sources and rights</text>
              <text x="640" y="90" font-size="11" fill="#9b99b8">own SOPs, licensed images</text>
              <rect x="540" y="175" width="200" height="70" rx="10" fill="#27274e" stroke="#22d3ee"/>
              <text x="640" y="203" font-weight="700">4. Accessibility</text>
              <text x="640" y="225" font-size="11" fill="#9b99b8">captions, contrast, alt text</text>
              <rect x="280" y="175" width="200" height="70" rx="10" fill="#27274e" stroke="#ec4899"/>
              <text x="380" y="203" font-weight="700">5. Languages</text>
              <text x="380" y="225" font-size="11" fill="#9b99b8">Marathi, Hindi: human check</text>
              <rect x="20" y="175" width="200" height="70" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="120" y="203" font-weight="700" fill="#6ee7b7">6. Publish</text>
              <text x="120" y="225" font-size="11" fill="#9b99b8">version, owner, review date</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#ld14a)">
                <line x1="221" y1="75" x2="276" y2="75"/>
                <line x1="481" y1="75" x2="536" y2="75"/>
                <line x1="640" y1="111" x2="640" y2="171"/>
                <line x1="539" y1="210" x2="484" y2="210"/>
                <line x1="279" y1="210" x2="224" y2="210"/>
              </g>
              <path d="M120,174 L120,146 L380,146 L380,115" stroke="#f59e0b" stroke-width="1.5" stroke-dasharray="5 3" fill="none" marker-end="url(#ld14b)"/>
              <text x="140" y="139" text-anchor="start" font-size="11" fill="#fcd34d">plan or SOP changes? go back</text>
              <text x="380" y="280" font-size="12" fill="#c4b5fd">Nothing reaches learners until steps 2 to 5 are signed off.</text>
            </g>
          </svg>
          <figcaption>Every piece of content passes five checks before learners see it. When a procedure changes, it goes back for a new fact check.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Accuracy reviews and the review log</h3>
          <p>AI drafts can contain facts that sound right but are wrong. In food safety, one wrong limit can make food unsafe. So Mohan keeps a <strong>review log</strong>: a simple table of every fact that needs checking, who checked it and against which source. Rekha Joshi, the QA manager, checks every item against Sahyadri's HACCP plan (the factory's written food safety plan) and SOPs (standard operating procedures: the written steps for a task).</p>
          <table class="lc-table">
            <thead><tr><th>Item in the draft</th><th>AI draft said</th><th>Rekha's decision</th><th>Source</th></tr></thead>
            <tbody>
              <tr><td>Cooking core temperature</td><td>A general temperature from the internet</td><td>Replaced with "the limit in Sahyadri's plan, printed on the CCP sheet" [CHECK]</td><td>HACCP plan</td></tr>
              <tr><td>Metal detector test</td><td>"Test once per shift"</td><td>Changed to Sahyadri's SOP: at the start of the shift, every hour and after any line stop [CHECK]</td><td>Metal detector SOP</td></tr>
              <tr><td>Allergen changeover cleaning</td><td>"A hot-water rinse removes all traces"</td><td>Deleted. Replaced with the cleaning and swab-test steps from the SOP [CHECK]</td><td>Allergen SOP</td></tr>
              <tr><td>Held product after a failed check</td><td>"The supervisor can re-cook and release it"</td><td>Changed: QA decides what happens to held product [CHECK]</td><td>QA procedure</td></tr>
            </tbody>
          </table>
          <p>Three habits make reviews faster and safer:</p>
          <ul class="lc-list">
            <li>Ask AI to end every draft with a <strong>claim list</strong>: every fact, number and rule in the draft. The reviewer still reads the whole draft, because AI can miss a claim.</li>
            <li>Give every piece of content a version number, an owner and a <strong>review date</strong> (Mohan's job aids are reviewed every 6 months, or sooner if the HACCP plan changes).</li>
            <li>Check images as well as text. AI images of food workers often show a missing hair net or jewellery on the line. That would teach the wrong thing.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Using sources fairly</h3>
          <p><strong>Copyright</strong> is the right of a creator to control copies of their work. Training teams often break it by accident. This is general information, not legal advice. Check with your HR legal counsel.</p>
          <table class="lc-table">
            <thead><tr><th>Source</th><th>Usually safe</th><th>Avoid</th></tr></thead>
            <tbody>
              <tr><td>Your company's own SOPs and plans</td><td>Best source for internal training. Use only your company's approved AI tools, because these documents are confidential.</td><td>Pasting them into a public AI tool</td></tr>
              <tr><td>Books, paid courses, other companies' manuals</td><td>Buy a licence, or link to the source and write your own content</td><td>Pasting pages into AI and asking it to "rewrite" them. The result can still copy the original.</td></tr>
              <tr><td>Public guidance from regulators, such as FSSAI (Food Safety and Standards Authority of India)</td><td>Link to it, quote short parts and name the source. Check its terms of use.</td><td>Presenting it as your own work</td></tr>
              <tr><td>Images and videos</td><td>Company photos taken with the consent of the people in them. Stock images with a licence that covers training.</td><td>Images copied from a web search</td></tr>
            </tbody>
          </table>
          <p>Who owns AI-generated content is still an open question in many countries, and the rules are changing. Also check your AI tool's terms of use. In India, the Copyright Act 1957 is the main law. Ask counsel before you sell or share content outside the company.</p>
        </div>
        <div class="lc-card">
          <h3>Accessible formats and languages</h3>
          <p>Accessible content works for everyone who needs to use it. In India, the Rights of Persons with Disabilities Act 2016 supports equal access for people with disabilities. Many organisations use WCAG (Web Content Accessibility Guidelines) as a standard for digital content. This is not legal advice. Check your legal duties with HR legal counsel. Here are practical fixes for Sahyadri's supervisors:</p>
          <table class="lc-table">
            <thead><tr><th>Barrier</th><th>Fix</th></tr></thead>
            <tbody>
              <tr><td>A noisy factory floor, or a person who is deaf or hard of hearing</td><td>Captions and a transcript for every video</td></tr>
              <tr><td>Colour blindness</td><td>Never use only red and green for "fail" and "pass". Add words or icons, such as ✗ FAIL and ✓ PASS.</td></tr>
              <tr><td>Low vision, or a screen reader user</td><td>Large fonts, strong contrast, real headings and <strong>alt text</strong> (a short text description of each image)</td></tr>
              <tr><td>Low reading confidence</td><td>Short sentences, pictures of each step and an audio version</td></tr>
              <tr><td>Job aids used on the line</td><td>Large print, laminated and placed where the task happens</td></tr>
            </tbody>
          </table>
          <p><strong>Languages.</strong> Many Sahyadri workers prefer Marathi or Hindi. AI can draft a translation in seconds. But a person who reads both languages must check every line before use. Keep a short <strong>glossary</strong>: decide once how to say terms like "hold", "corrective action" and "CCP" in each language. Paste the glossary into every translation prompt, so the terms stay the same everywhere.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: spot the problem</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Mohan's team found these problems in draft content. What type of problem is each one?</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="acc" data-label="Accuracy"></div>
              <div data-sorter-target="bucket" data-bucket="copy" data-label="Sources and rights"></div>
              <div data-sorter-target="bucket" data-bucket="a11y" data-label="Accessibility"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="acc" data-why="A safety number with no source must be checked against Sahyadri's plan by QA.">An AI draft states a cooking temperature with no source</li>
              <li data-bucket="copy" data-why="Rewriting someone else's paid content can still copy it. Buy a licence or write your own.">Pages from a paid training manual are pasted into AI to "rewrite"</li>
              <li data-bucket="a11y" data-why="Colour-blind learners may not see the difference. Add words or icons.">A job aid shows pass and fail using only red and green</li>
              <li data-bucket="a11y" data-why="On a noisy floor, or for learners who are deaf, captions are needed.">A changeover video has no captions</li>
              <li data-bucket="copy" data-why="You need the right to use an image. Use company photos or licensed images.">A poster uses a photo copied from a web search</li>
              <li data-bucket="acc" data-why="A translation can change meaning. A bilingual person must check it.">A Marathi version made by AI was not checked by a Marathi speaker</li>
              <li data-bucket="acc" data-why="An AI image can show wrong practice. QA must check images too.">An AI image shows a worker on the line without a hair net</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to review a short draft job aid for accuracy, sources, accessibility and language problems. The draft below has problems on purpose.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a training content reviewer. Review this draft job aid for [shift supervisors at a food factory in India]. It will be printed and also translated into [Marathi and Hindi].

        DRAFT:
        [JOB AID: Cooking temperature check
        - Red box = fail, green box = pass.
        - If the reading is low, cook the batch 2 more minutes and write the new reading.
        - Tell QA ASAP if you think it is a big issue.
        - Photo: copied from a food safety website.
        - Don't let things slip through the cracks!]

        1. Make a table: Issue, Type (accuracy / sources and rights / accessibility / language), Why it matters, Suggested fix, Who must check it.
        2. Rewrite the job aid in short, simple sentences. Put [CHECK] after every safety step, limit or time.
        3. List the words that need a glossary entry before translation.
        4. Add a footer line with spaces for version, owner and review date.

        Rules: Do not invent limits, times or procedures. Where our own procedure is needed, write [FROM OUR SOP].</pre>
            <ul class="ai-try-checks">
              <li>It flags the "cook 2 more minutes" step. A failed reading means hold, tell QA and record, as set in your own procedure.</li>
              <li>It flags colour-only pass and fail, the copied photo, the vague "ASAP" and the idiom.</li>
              <li>The rewrite invents no limits or times. Look for [CHECK] and [FROM OUR SOP].</li>
              <li>Your QA expert must still approve the rewrite before anyone uses it.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Quality is a set of checks, not a feeling. Fact-check every claim with an expert. Use only sources you have the right to use. Make content work for every learner, and have a person check every translation. Record who checked what, and review content again when the procedure changes.
        </div>
      HTML
      starter_code: nil
    },
    15 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-hr">HR & Recruitment</div>
          <h1 class="lc-title">Capstone: Build a Training Programme</h1>
        </div>
        <p class="lc-lead">In this capstone you will put the whole L&amp;D cycle together. You will build a complete <strong>programme pack</strong> for the Sahyadri Foods supervisors, or for a role you know. It has six parts: a skill gap analysis, learning objectives, a course outline, one full module, a quiz and an evaluation plan. AI will draft much of it. You will check the numbers, get expert review and make the decisions. A pack like this is what an HR head needs before approving a programme.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 305" role="img" aria-label="The capstone programme pack. A brief at the top: CCP sheet errors from 12 percent, 72 of 600, to under 3 percent by March 2027. Six parts in a row: gap analysis, objectives, outline, one module, quiz and evaluation. Below, the QA manager checks every safety fact in parts two to five, and Sunita approves the whole pack. A note says the rota, probe and form fixes run at the same time.">
            <defs><marker id="ld15a" markerWidth="8" markerHeight="8" refX="6" refY="4" orient="auto"><path d="M0,0 L8,4 L0,8 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="20" y="20" width="720" height="44" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="380" y="47">Brief from Sunita: CCP sheet errors 12% (72 of 600) → under 3% by March 2027</text>
              <text x="22" y="86" text-anchor="start" font-size="12" fill="#9b99b8">Your programme pack: six parts</text>
              <rect x="22" y="96" width="106" height="70" rx="8" fill="#27274e" stroke="#3b82f6"/>
              <text x="75" y="124" font-weight="700">Gap analysis</text>
              <text x="75" y="146" font-size="11" fill="#9b99b8">CCP gap 1.6</text>
              <rect x="144" y="96" width="106" height="70" rx="8" fill="#27274e" stroke="#3b82f6"/>
              <text x="197" y="124" font-weight="700">Objectives</text>
              <text x="197" y="146" font-size="11" fill="#9b99b8">6, in ABCD</text>
              <rect x="266" y="96" width="106" height="70" rx="8" fill="#27274e" stroke="#3b82f6"/>
              <text x="319" y="124" font-weight="700">Outline</text>
              <text x="319" y="146" font-size="11" fill="#9b99b8">4 modules</text>
              <rect x="388" y="96" width="106" height="70" rx="8" fill="#27274e" stroke="#3b82f6"/>
              <text x="441" y="124" font-weight="700">One module</text>
              <text x="441" y="146" font-size="11" fill="#9b99b8">3-hour plan</text>
              <rect x="510" y="96" width="106" height="70" rx="8" fill="#27274e" stroke="#3b82f6"/>
              <text x="563" y="124" font-weight="700">Quiz</text>
              <text x="563" y="146" font-size="11" fill="#9b99b8">scenario Qs</text>
              <rect x="632" y="96" width="106" height="70" rx="8" fill="#27274e" stroke="#3b82f6"/>
              <text x="685" y="124" font-weight="700">Evaluation</text>
              <text x="685" y="146" font-size="11" fill="#9b99b8">4 levels</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#ld15a)">
                <line x1="129" y1="131" x2="140" y2="131"/>
                <line x1="251" y1="131" x2="262" y2="131"/>
                <line x1="373" y1="131" x2="384" y2="131"/>
                <line x1="495" y1="131" x2="506" y2="131"/>
                <line x1="617" y1="131" x2="628" y2="131"/>
              </g>
              <rect x="144" y="182" width="472" height="32" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="380" y="203" font-size="12" fill="#fcd34d">QA manager Rekha Joshi checks every safety fact [CHECK]</text>
              <rect x="22" y="226" width="716" height="32" rx="8" fill="#1f1f44" stroke="#10b981"/>
              <text x="380" y="247" font-size="12" fill="#6ee7b7">Sunita approves the whole pack before any session runs</text>
              <text x="380" y="290" font-size="12" fill="#9b99b8">Training fixes up to 30 of the 72 faulty sheets. Rota, probe and form fixes run at the same time.</text>
            </g>
          </svg>
          <figcaption>The six parts build on each other. The expert checks the content, and the HR head approves the pack.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The brief</h3>
          <p>Sunita, the HR head, gives Mohan this brief. Every fact comes from the needs analysis. All numbers are made up.</p>
          <table class="lc-table">
            <thead><tr><th>Item</th><th>Detail</th></tr></thead>
            <tbody>
              <tr><td>Learners</td><td>40 shift supervisors (codes S01 to S40). 14 were promoted from line worker in the last 12 months.</td></tr>
              <tr><td>Business problem</td><td>72 of 600 CCP record sheets (12%) had errors from April to June 2026. 4 batches were held after allergen changeover mistakes, costing ₹2,60,000.</td></tr>
              <tr><td>Goal</td><td>Under 3% of sheets with errors by March 2027 (fewer than 18 of 600). No batch holds.</td></tr>
              <tr><td>What training can fix</td><td>30 of 72 faulty sheets (42%): missing or wrong corrective actions. The other 42 need the rota, probe and form fixes.</td></tr>
              <tr><td>Top priorities</td><td>CCP records and corrective action (score 25), then allergen changeover (score 20)</td></tr>
              <tr><td>Limits</td><td>3 shifts. Anil can release about 10 supervisors at a time, so 4 groups of 10. One 3-hour session every 2 weeks, for 8 weeks. Content in English, Marathi and Hindi. Codes only in any AI tool.</td></tr>
            </tbody>
          </table>
          <p>Check the goal before you start. If training fixed all 30 training-related sheets and nothing else changed, 42 faulty sheets would remain. <code>=(72-30)/600</code> gives 7.0%. That is still above 3%. So the pack must say clearly that training is one of four fixes.</p>
        </div>
        <div class="lc-card">
          <h3>The six parts and what "done" looks like</h3>
          <table class="lc-table">
            <thead><tr><th>Part</th><th>What you produce</th><th>AI helps with</th><th>A person must</th></tr></thead>
            <tbody>
              <tr><td>1. Skill gap analysis</td><td>Sheet with required levels, ratings, gaps and counts</td><td>Level descriptions, sheet layout</td><td>Do the maths in the sheet. Check gaps against audit evidence.</td></tr>
              <tr><td>2. Objectives</td><td>4 to 6 objectives in ABCD format, with Bloom's levels</td><td>Rewriting weak objectives</td><td>Remove any invented limits or times</td></tr>
              <tr><td>3. Course outline</td><td>Modules linked to objectives, with formats</td><td>A first outline, blended options</td><td>Fit it to shifts, time and budget</td></tr>
              <tr><td>4. One module</td><td>A timed session plan and a job aid</td><td>Activities, scenarios, facilitator notes</td><td>Get QA sign-off on every safety step</td></tr>
              <tr><td>5. Quiz</td><td>Scenario questions with an answer key</td><td>Questions and realistic wrong options</td><td>Check answers against Sahyadri's plan. Check fairness and language.</td></tr>
              <tr><td>6. Evaluation plan</td><td>Measures at 4 levels, targets and a comparison group</td><td>Measure ideas, report template</td><td>Agree targets with Sunita. Make only honest claims.</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Worked example: outline, one module and a quiz question</h3>
          <p><strong>Course outline</strong> for the "Safe Shift Leader" programme: 4 groups of 10, one 3-hour session every 2 weeks. The order follows the priority scores. Each supervisor spends 4 × 3 = 12 hours in the training room.</p>
          <table class="lc-table">
            <thead><tr><th>Module (week)</th><th>Objectives</th><th>Main practice and check</th></tr></thead>
            <tbody>
              <tr><td>M1: CCP checks and records (week 1)</td><td>1, 4</td><td>Fill in sheets from sample readings: no errors on 3 of 3. Explain the metal detector check to a partner.</td></tr>
              <tr><td>M2: When a check fails (week 3)</td><td>2</td><td>"Hold and tell" drill, watched by QA</td></tr>
              <tr><td>M3: Allergen changeover (week 5)</td><td>3</td><td>8-point checklist on a practice changeover, then 2 observed changeovers on the job</td></tr>
              <tr><td>M4: Leading the shift (week 7)</td><td>5, 6</td><td>SBI feedback role-plays (4 of 5 on the observer checklist) and a 5-minute briefing</td></tr>
            </tbody>
          </table>
          <p>Around the workshops: micro lessons before each session, review questions on days 2, 5, 12 and 26, and QA's weekly check of real sheets. The 14 new supervisors also join the 12-week mentoring programme.</p>
          <p><strong>Session plan for M1</strong> (180 minutes, group of 10, each new supervisor paired with an experienced one):</p>
          <pre><code> 15 min  Welcome and opener
         15 min  Why it matters: 72 of 600 audit sheets had errors
         20 min  Demo: Rekha fills in a CCP sheet on the new form [CHECK]
         10 min  Break
         60 min  Practice: pairs fill in 3 sheets from sample readings; QA checks each one
         30 min  Practice: explain the metal detector check to a partner, using a checklist
         20 min  Quick check: 5 scenario questions
         10 min  Action plan: one thing to do on the next shift
        -------
        180 min in total. Practice: 60 + 30 = 90 of 180 minutes (50%).</code></pre>
          <p><strong>One scenario quiz question</strong>, with the reason for each wrong option:</p>
          <pre><code>At the start-of-shift check on Line 2, the metal detector does
        not reject the stainless steel test piece. What do you do first?
        A) Run the line and tell maintenance at the next break
        B) Stop the line, hold the product made since the last good
           check and tell QA
        C) Test again with the ferrous piece only, and carry on if it
           is rejected

        Answer: B [CHECK: Rekha, against Sahyadri's metal detector SOP]
        A lets product that may contain metal reach customers.
        C skips the failed test. Sahyadri's SOP says all 3 test pieces must be rejected.</code></pre>
        </div>
        <div class="lc-card">
          <h3>The evaluation plan</h3>
          <table class="lc-table">
            <thead><tr><th>Level</th><th>Measure</th><th>When</th><th>Target</th></tr></thead>
            <tbody>
              <tr><td>1. Reaction</td><td>Anonymous form: "useful for my job" (1 to 5)</td><td>End of each workshop</td><td>4 or more on average</td></tr>
              <tr><td>2. Learning</td><td>10-question test before M1 and after M4. Practice sheets in M1. SBI role-play checklist in M4.</td><td>During the 8 weeks</td><td>80% or more on the test. 3 of 3 sheets with no errors. 4 of 5 on the checklist.</td></tr>
              <tr><td>3. Behaviour</td><td>Surprise QA floor drill. Observed changeovers. QA review of real sheets.</td><td>2 to 8 weeks after each module</td><td>Every supervisor passes the drill, with retries and coaching where needed</td></tr>
              <tr><td>4. Results</td><td>Share of CCP sheets with errors. Batch holds after allergen changeovers.</td><td>8 weeks later, then the March 2027 audit</td><td>Under 3% of sheets. No holds.</td></tr>
            </tbody>
          </table>
          <p><strong>Comparison:</strong> all 40 supervisors train in the same 8 weeks, and the rota, probe and form fixes start at the same time. So the plan counts errors <strong>by cause</strong>. Training aims at missing corrective actions, and the other fixes aim at the other causes. The plan also says what the report will not claim: that training alone caused the result. For the next intake of new supervisors, Mohan will get a true comparison group. He will split them by drawing lots and train one half 8 weeks later.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: Mohan builds the pack with AI</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Mohan's prompt">Mohan gives AI the brief, the gap table and the 6 objectives, using codes only. He asks for 4 modules linked to the objectives, for 4 groups of 10.</li>
              <li data-kind="answer" data-label="AI draft">AI suggests 4 modules with practice and checks. The summary ends: "This programme will bring errors below 3% by March 2027."</li>
              <li data-kind="warn" data-label="Catch this">That claim is wrong. Training can fix at most 30 of the 72 faulty sheets. The goal needs the rota, probe and form fixes too.</li>
              <li data-kind="tool" data-label="Spreadsheet">Mohan checks it: <code>=(72-30)/600</code> gives 7.0%. He rewrites the summary: "Training is one of four fixes. Together they aim for under 3%."</li>
              <li data-kind="user" data-label="Quiz prompt">He pastes the approved metal detector SOP extract into the company's approved AI tool. He asks for 10 scenario questions for M1, with an answer key and [CHECK] on every safety fact.</li>
              <li data-kind="check" data-label="Expert review">Rekha reviews the quiz. She fixes 2 answers that do not match Sahyadri's plan. She removes 1 question about equipment the factory does not have.</li>
              <li data-kind="result" data-label="Approval">Sunita approves the pack. M1 starts in week 1 for all 4 groups. The level 4 review is set for 8 weeks after the programme ends.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Build your own programme pack. Use the Sahyadri details as they are, or change the brackets to a role and problem you know.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a senior L&amp;D consultant. Build a training programme pack.

        Company: [a food factory in Maharashtra with 800 workers and 3 shifts]
        Learners: [40 shift supervisors, codes S01 to S40; 14 were promoted in the last year]
        Business problem: [72 of 600 food safety record sheets (12%) had errors. Goal: under 3%. Training can fix 30 of the 72. The rest need process, equipment and form fixes.]
        Biggest skill gaps (required level minus rating): [CCP records 1.6, handling failed checks 1.1, feedback to workers 1.0]
        Limits: [4 groups of 10, one 3-hour session every 2 weeks, 8 weeks]

        Give me, with headings:
        1. 4 learning objectives in ABCD format, with the Bloom's level of each
        2. A course outline: modules, linked objectives, main practice, how we check
        3. A session plan for the first module: times that add up to 180 minutes, at least half practice
        4. 5 scenario quiz questions with 3 options, the answer and why each wrong option is wrong
        5. An evaluation plan for Kirkpatrick's 4 levels (measure, when, target). Say how we can separate the effect of training from the other fixes.

        Rules: Simple English. Codes only. Mark every safety fact or limit with [CHECK] for our QA expert. Do not claim that training alone will reach the goal.</pre>
            <ul class="ai-try-checks">
              <li>The session times really add up to 180 minutes, and at least 90 minutes are practice.</li>
              <li>Every safety step or limit has [CHECK], and no limits are invented.</li>
              <li>The pack says training alone cannot reach the goal. If all 30 sheets were fixed, 42 of 600 (7%) would remain.</li>
              <li>The evaluation plan counts errors by cause or uses a comparison group, such as people who train later.</li>
              <li>Each objective has one observable verb, and each quiz question tests a real decision.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A strong programme pack links every part to one business problem: gaps lead to objectives, objectives to modules, modules to a quiz and the quiz to an evaluation plan. AI drafts each part fast. You check the numbers, the expert checks the facts and the HR head decides. Be honest that training is one fix among several.
        </div>
      HTML
      starter_code: nil
    }
  }.freeze
end

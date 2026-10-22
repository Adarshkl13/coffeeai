module AiPeopleManagersContent
  # Units (sidebar dividers): 1–4 Managing with AI · 5–9 Everyday Leadership · 10–14 Hard Moments and Growth · 15 Capstone
  # Widgets: sequence, sorter, stepper. No code editor: each Try It is an ai-try prompt box.
  LESSONS = {
    1 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mgmt">Management</div>
          <h1 class="lc-title">What Good People Managers Do</h1>
        </div>
        <p class="lc-lead">A people manager gets good work done through other people. That is a different job from doing the work yourself. In this lesson you will learn the six main jobs of a manager. You will see why trust and clarity sit under all of them. You will also see where AI can help you prepare, and where the job stays with you. Through this course you will follow Hannah Price. She is a first-time team lead at Bluefern Digital, a made-up digital agency in London.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="Six manager jobs around a centre box called Trust and clarity. On the left: set clear goals, hold 1:1s, give feedback. On the right: remove blockers, grow people, handle hard moments. Each job links to the centre. A note at the bottom says AI can help you prepare for every job, but the job itself stays with you.">
            <defs><marker id="pmg1a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <text x="380" y="24" font-weight="700" fill="#c4b5fd" text-anchor="middle">Six main jobs of a people manager</text>
              <g text-anchor="middle">
                <rect x="20" y="46" width="220" height="54" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
                <text x="130" y="68" font-weight="700">Set clear goals</text>
                <text x="130" y="88" font-size="11" fill="#9b99b8">what good looks like</text>
                <rect x="20" y="118" width="220" height="54" rx="8" fill="#1f1f44" stroke="#10b981"/>
                <text x="130" y="140" font-weight="700">Hold 1:1s</text>
                <text x="130" y="160" font-size="11" fill="#9b99b8">listen, support, unblock</text>
                <rect x="20" y="190" width="220" height="54" rx="8" fill="#1f1f44" stroke="#8b5cf6"/>
                <text x="130" y="212" font-weight="700">Give feedback</text>
                <text x="130" y="232" font-size="11" fill="#9b99b8">praise and growth</text>
                <rect x="520" y="46" width="220" height="54" rx="8" fill="#1f1f44" stroke="#22d3ee"/>
                <text x="630" y="68" font-weight="700">Remove blockers</text>
                <text x="630" y="88" font-size="11" fill="#9b99b8">protect focus, get decisions</text>
                <rect x="520" y="118" width="220" height="54" rx="8" fill="#1f1f44" stroke="#ec4899"/>
                <text x="630" y="140" font-weight="700">Grow people</text>
                <text x="630" y="160" font-size="11" fill="#9b99b8">skills, careers, coaching</text>
                <rect x="520" y="190" width="220" height="54" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
                <text x="630" y="212" font-weight="700">Handle hard moments</text>
                <text x="630" y="232" font-size="11" fill="#9b99b8">conflict, workload, change</text>
                <rect x="290" y="112" width="180" height="72" rx="10" fill="#27274e" stroke="#f59e0b" stroke-width="2"/>
                <text x="380" y="143" font-weight="700">Trust and clarity</text>
                <text x="380" y="164" font-size="11" fill="#9b99b8">the base of every job</text>
              </g>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#pmg1a)">
                <line x1="241" y1="73" x2="287" y2="122"/>
                <line x1="241" y1="145" x2="287" y2="148"/>
                <line x1="241" y1="217" x2="287" y2="176"/>
                <line x1="519" y1="73" x2="473" y2="122"/>
                <line x1="519" y1="145" x2="473" y2="148"/>
                <line x1="519" y1="217" x2="473" y2="176"/>
              </g>
              <text x="380" y="280" font-size="12" fill="#9b99b8" text-anchor="middle">AI can help you prepare for every job. The job itself stays with you.</text>
            </g>
          </svg>
          <figcaption>Six jobs, one base. If people do not trust you, or do not know what is expected, every other job gets harder.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>From doing the work to leading the work</h3>
          <p>Hannah Price was a Senior Product Designer at Bluefern Digital for five years. On 1 July 2026 she became Team Lead for design and development. She now manages 8 people: developers, designers, a researcher and a QA engineer (a tester who checks quality).</p>
          <p>Her biggest change is this: her success now depends on her team's work, not only her own. A great designer can still be a weak manager. The skills are different, and you can learn them.</p>
          <table class="lc-table">
            <thead><tr><th>Manager job</th><th>What it means</th><th>Hannah's example (made up)</th></tr></thead>
            <tbody>
              <tr><td>Set clear goals</td><td>People know what good work looks like, and what matters most.</td><td>The team has five Q4 goals, such as launching the Thames Valley Housing website on 26 November.</td></tr>
              <tr><td>Hold 1:1s</td><td>A regular private meeting with each person, about their work and needs.</td><td>30 minutes a week with each of her 8 people.</td></tr>
              <tr><td>Give feedback</td><td>Say clearly what went well and what to change.</td><td>Telling Ben, a junior developer, exactly what made his tests good.</td></tr>
              <tr><td>Remove blockers</td><td>Clear the things that stop people working.</td><td>Getting a fast client answer so Kwame can finish a release.</td></tr>
              <tr><td>Grow people</td><td>Help people build skills and careers.</td><td>Helping Marcus work towards a tech lead role.</td></tr>
              <tr><td>Handle hard moments</td><td>Deal early with conflict, workload problems and change.</td><td>Marcus and Sofia keep clashing about late design changes.</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Trust and clarity: the base of everything</h3>
          <p><strong>Trust</strong> means people believe you will be fair, honest and do what you say. <strong>Clarity</strong> means people know what is expected, what comes first and who decides.</p>
          <p>Hannah's team shows what happens when clarity is missing. In Q3, 6 of 15 features had design changes after developers started building. Nobody had agreed when a design counts as "signed off". So Marcus and Sofia blame each other. The real gap is a missing step in the process.</p>
          <table class="lc-table">
            <thead><tr><th>Warning sign</th><th>What it often means</th><th>What helps</th></tr></thead>
            <tbody>
              <tr><td>People ask "who decides this?"</td><td>Roles are not clear.</td><td>Write down who owns each decision.</td></tr>
              <tr><td>The same argument keeps coming back</td><td>A process or rule is missing.</td><td>Agree a simple rule together, then write it down.</td></tr>
              <tr><td>People stay quiet in meetings, then complain later</td><td>Low trust. Speaking up feels risky.</td><td>Ask for views in 1:1s. Thank people for bad news.</td></tr>
              <tr><td>1:1s get cancelled again and again</td><td>The person may be overloaded, or the meeting feels useless.</td><td>Protect the time. Ask what would make it useful.</td></tr>
            </tbody>
          </table>
          <p>You build trust with small actions, repeated. Keep promises. Explain your decisions. Admit your mistakes. Treat everyone by the same standard.</p>
        </div>
        <div class="lc-card">
          <h3>Where AI fits in</h3>
          <p>An AI assistant, such as Microsoft 365 Copilot or Claude, can help you prepare, draft and organise. It cannot know your people. It cannot build trust for you. Use it as a thinking partner, not as the manager.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>How do I be a good manager?</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>I became a team lead 3 months ago at a 40-person digital agency
        in London. I manage 8 people: developers, designers, a researcher
        and a QA engineer. Before this I was a senior designer.
        I still spend about half my week doing design work.
        Help me plan my next 2 weeks as a manager. For each of these jobs,
        give me one concrete action: set goals, 1:1s, feedback, remove
        blockers, grow people, handle conflict.
        Ask me 3 questions first if you need more context.
        Do not use any names. Use simple English.</code></pre>
          <p>The better prompt gives context, a clear task and a format. It shares no names or private details. Hannah still decides which actions make sense for her real team.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: which manager job is this?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each thing Hannah does into the main job it belongs to.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="clarity" data-label="Clarity: goals and roles"></div>
              <div data-sorter-target="bucket" data-bucket="support" data-label="Support: 1:1s and blockers"></div>
              <div data-sorter-target="bucket" data-bucket="growth" data-label="Growth: feedback and careers"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="clarity" data-why="Saying who signs off a design makes a role and a decision clear.">Hannah writes down that the designer of each feature signs it off at least 5 working days before building starts.</li>
              <li data-bucket="support" data-why="Getting a decision from the client removes something that blocks the work.">Hannah chases the client for a decision so Kwame can finish a release.</li>
              <li data-bucket="growth" data-why="Specific praise is feedback. It helps Ben repeat what worked.">Hannah tells Ben that his tests caught two bugs before release, and that this saved the team a day.</li>
              <li data-bucket="clarity" data-why="Ranking the work tells people what matters most.">Hannah tells the team that the Thames Valley Housing launch comes before new features this month.</li>
              <li data-bucket="support" data-why="Rebooking a missed 1:1 protects time to listen and support.">Aisha cancelled two 1:1s, so Hannah rebooks one at a time that suits Aisha.</li>
              <li data-bucket="growth" data-why="Giving someone a new responsibility builds skills towards their career goal.">Hannah asks Marcus to lead the team's code reviews, as a step towards tech lead.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to help you check your own management habits and plan your next two weeks. Then decide which actions really fit your team.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a friendly coach for first-time managers. Use simple English.

        About me: [I became a team lead 3 months ago. I manage 8 people at a digital agency in London. I still do some hands-on design work.]
        My biggest worry right now: [two people on my team keep arguing about late design changes].

        Please:
        1. List the six main jobs of a people manager: set clear goals, hold 1:1s, give feedback, remove blockers, grow people, handle hard moments. Explain each in one line.
        2. For each job, give me 2 questions to check how well I am doing it, for example "Does each person know their top priority this week?"
        3. Suggest one small action per job for the next 2 weeks. Make each action specific and doable in under 30 minutes.
        4. Give me 2 ideas to build trust and 2 ideas to make things clearer for my team.

        Show steps 2 and 3 as one table with columns: Job, Check questions, Action.
        Do not invent facts about my team. Remind me that I make the final decisions about people.</pre>
            <ul class="ai-try-checks">
              <li>All six jobs are covered, each with check questions and one action.</li>
              <li>The actions are small and specific, not vague advice like "communicate more".</li>
              <li>It does not invent details about your team members.</li>
              <li>It reminds you that decisions about people stay with you.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Your job as a manager is to make good work possible for other people. Trust and clarity make every other job easier. AI can help you prepare, but people trust you, not your tools.
        </div>
      HTML
      starter_code: nil
    },
    2 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mgmt">Management</div>
          <h1 class="lc-title">Where AI Helps Managers and Where It Must Not</h1>
        </div>
        <p class="lc-lead">AI can save a manager hours each week. It can prepare questions, draft messages and summarise your notes. But some jobs must never be handed to AI. These are decisions about people, such as ratings, pay, promotion or dismissal. In this lesson you will learn a simple traffic-light rule: green, amber and red. You will see how Hannah nearly let an AI tool judge one of her developers, and how she caught it.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 330" role="img" aria-label="Three columns like a traffic light. Green, AI helps: prepare 1:1 questions, draft meeting agendas, summarise your own notes, practise a hard talk, turn notes into actions, explain a management idea. Amber, AI drafts and you check: word feedback you wrote, draft goals from your plan, find themes in survey text, draft a job advert, draft a team update, suggest a workload plan. Red, you decide, not AI: rate or rank people, decide pay or promotion, decide who to dismiss, guess health or stress, judge from private chats, assign work by personality. A bottom band says AI drafts and organises; you listen, decide and own the decision.">
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="380" y="24" font-weight="700" fill="#c4b5fd">The manager's traffic light for AI</text>
              <rect x="15" y="40" width="236" height="40" rx="8" fill="#27274e" stroke="#10b981" stroke-width="2"/>
              <text x="133" y="65" font-weight="700" fill="#6ee7b7">Green: AI helps</text>
              <rect x="262" y="40" width="236" height="40" rx="8" fill="#27274e" stroke="#f59e0b" stroke-width="2"/>
              <text x="380" y="65" font-weight="700" fill="#fcd34d">Amber: AI drafts, you check</text>
              <rect x="509" y="40" width="236" height="40" rx="8" fill="#27274e" stroke="#ec4899" stroke-width="2"/>
              <text x="627" y="65" font-weight="700" fill="#f9a8d4">Red: you decide, not AI</text>
              <g font-size="12">
                <rect x="15" y="90" width="236" height="170" rx="8" fill="#1f1f44" stroke="#10b981" stroke-dasharray="4 3"/>
                <text x="133" y="114">prepare 1:1 questions</text>
                <text x="133" y="140">draft meeting agendas</text>
                <text x="133" y="166">summarise your own notes</text>
                <text x="133" y="192">practise a hard talk</text>
                <text x="133" y="218">turn notes into actions</text>
                <text x="133" y="244">explain a management idea</text>
                <rect x="262" y="90" width="236" height="170" rx="8" fill="#1f1f44" stroke="#f59e0b" stroke-dasharray="4 3"/>
                <text x="380" y="114">word feedback you wrote</text>
                <text x="380" y="140">draft goals from your plan</text>
                <text x="380" y="166">find themes in survey text</text>
                <text x="380" y="192">draft a job advert</text>
                <text x="380" y="218">draft a team update</text>
                <text x="380" y="244">suggest a workload plan</text>
                <rect x="509" y="90" width="236" height="170" rx="8" fill="#1f1f44" stroke="#ec4899" stroke-dasharray="4 3"/>
                <text x="627" y="114">rate or rank people</text>
                <text x="627" y="140">decide pay or promotion</text>
                <text x="627" y="166">decide who to dismiss</text>
                <text x="627" y="192">guess health or stress</text>
                <text x="627" y="218">judge from private chats</text>
                <text x="627" y="244">assign work by personality</text>
              </g>
              <rect x="15" y="276" width="730" height="40" rx="8" fill="#27274e" stroke="#8b5cf6"/>
              <text x="380" y="301" fill="#c4b5fd">AI drafts and organises. You listen, decide and own the decision.</text>
            </g>
          </svg>
          <figcaption>Green tasks are safe to hand to AI. Amber tasks need your careful check. Red tasks are decisions about people, and they stay with you.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Where AI really helps</h3>
          <p>Most of a manager's week is preparation, writing and follow-up. AI is good at all three. It is fast, it does not get tired, and it can suggest ideas you missed.</p>
          <table class="lc-table">
            <thead><tr><th>Kind of task</th><th>Hannah's example (made up)</th><th>What she still checks</th></tr></thead>
            <tbody>
              <tr><td>Preparation</td><td>Ten coaching questions for a 1:1 with a junior developer.</td><td>Do the questions fit Ben? Are any too personal?</td></tr>
              <tr><td>Drafts</td><td>A first draft of a team update about the Q4 goals.</td><td>Are the dates and numbers right? Does it sound like her?</td></tr>
              <tr><td>Summaries</td><td>Turning her own messy meeting notes into a list of actions.</td><td>Did the AI add anything nobody said? Is each action owned?</td></tr>
              <tr><td>Practice</td><td>Role-playing a hard conversation before she has it.</td><td>The real person will react differently. She stays flexible.</td></tr>
              <tr><td>Thinking partner</td><td>"What could go wrong with this new sign-off rule?"</td><td>Which risks are real for her team? She decides.</td></tr>
            </tbody>
          </table>
          <p>Many workplace tools now include AI, such as Copilot in Microsoft 365 or AI features in Slack, Zoom and Notion. Features change often, so check each tool's current help pages and your company's rules.</p>
        </div>
        <div class="lc-card">
          <h3>Where AI must not decide</h3>
          <p>Some choices change a person's job, income or future. Ratings, pay, promotion, dismissal and who gets which project are examples. A person must make these decisions, using real evidence. AI must never make them for you.</p>
          <ul class="lc-list">
            <li><strong>AI does not know the context.</strong> It does not know that Oliver spent a week helping a client fix their own system.</li>
            <li><strong>AI can repeat bias.</strong> It learned from human writing, and human writing contains unfair patterns.</li>
            <li><strong>AI sounds sure even when it is wrong.</strong> A confident answer is not proof.</li>
            <li><strong>People deserve a human decision.</strong> They need someone who can explain it and listen to them.</li>
          </ul>
          <p>Laws also set limits. In the UK, data protection law gives people safeguards for important decisions made by automated means alone. This means no meaningful human involvement. People can ask for a person to review it and can challenge it. The EU AI Act calls some workplace AI "high-risk", with strict rules. This includes AI used for promotion, ending contracts, giving out tasks or monitoring performance. In the US, the EEOC (Equal Employment Opportunity Commission) enforces anti-discrimination laws. These laws still apply when employers use AI tools. This is general education, not legal advice. Check with HR or a qualified adviser.</p>
        </div>
        <div class="lc-card">
          <h3>Turning a red question into a green one</h3>
          <p>Hannah wants to pick a developer for the Greenleaf Grocers app work. She is tempted to let AI choose.</p>
          <p><strong>Weak prompt (red: asks AI to judge people):</strong></p>
          <pre><code>Here is my team's Jira data for September. Who is my weakest
        developer, and who should I put on the Greenleaf project?</code></pre>
          <p><strong>Better prompt (green: asks AI to help her think):</strong></p>
          <pre><code>I need to choose one developer for a 6-week mobile app project.
        Help me decide fairly. Please:
        1. Suggest 5 criteria to compare options, such as skills needed,
           current workload, and growth goals.
        2. Suggest questions I should ask each person before I decide.
        3. List common mistakes, such as judging by ticket counts alone.
        Do not rank or judge any person. I will make the decision.</code></pre>
          <p>The better prompt keeps the decision with Hannah. It shares no names or data about people. She will use her own evidence and talk to each person.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: Hannah's AI shortcut</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Hannah asks">She pastes a Jira export of tickets closed in September. She asks: "Which developer is least productive?"</li>
              <li data-kind="answer" data-label="AI replies">The AI gives a neat ranking. It says one developer "closed the fewest tickets and may be underperforming".</li>
              <li data-kind="warn" data-label="The problem">This is a red task. Ticket counts do not show code reviews, mentoring or hard bugs. Also, the export had names in it.</li>
              <li data-kind="check" data-label="Hannah checks">She remembers that this developer spent September mentoring Ben and fixing a hard payment bug. The ranking is unfair.</li>
              <li data-kind="tool" data-label="She cleans up">She deletes the chat and tells her manager, Rachel, what happened. Then she rereads Bluefern's AI policy.</li>
              <li data-kind="user" data-label="A better ask">She asks AI for a fair way to understand workload: what to look at, and what to ask each person.</li>
              <li data-kind="answer" data-label="Green use">The AI suggests looking at many signals together, and asking each person about their week. Hannah decides what to do.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Make your own traffic-light map of AI use for your manager week. Then check each red item really stays with you.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an adviser on the safe use of AI for people managers. Use simple English.

        My role: [team lead of 8 people at a digital agency in London].
        My weekly tasks: [eight 1:1s, a team meeting, writing updates for my manager, giving feedback, planning who works on which project, checking workload, answering questions about pay and leave, preparing for one difficult conversation].

        Please:
        1. Sort each of my tasks into Green (AI can help freely), Amber (AI can draft, I must check carefully) or Red (I must decide; AI should not judge or decide).
        2. For each Green or Amber task, give one example prompt that uses roles, not names.
        3. For each Amber task, say what I must check in the answer.
        4. For each Red task, explain in one sentence why a person must decide.

        Show this as a table: Task, Colour, Example prompt or reason, What I check.
        Add a note that this is not legal advice and that I should follow my company's AI and HR policies.</pre>
            <ul class="ai-try-checks">
              <li>Decisions about pay, ratings, promotion or dismissal are marked Red.</li>
              <li>The example prompts use roles, not real names or private details.</li>
              <li>Each Amber task has a clear thing to check.</li>
              <li>It points you to your company's AI and HR policies.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Use AI for preparation, drafts, summaries and practice. Never let it judge, rank or decide about people. If a decision changes someone's job or pay, a person must make it, explain it and own it.
        </div>
      HTML
      starter_code: nil
    },
    3 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mgmt">Management</div>
          <h1 class="lc-title">Using AI Fairly and Safely with Team Information</h1>
        </div>
        <p class="lc-lead">Managers know private things about their people. They know about health, pay, family life and problems at work. In this lesson you will learn what you must never paste into an AI tool. You will learn how to rewrite a note so it is safe to use. You will also learn to check AI answers for bias. Finally, you will learn to be honest with your team about your AI use.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="A flow with three boxes. Your raw notes contain real names, health details, pay and ratings, client secrets and private messages. An arrow leads to Four checks: approved AI tool, do I need this detail, roles not names, special data removed. An arrow leads to a Safe prompt: roles not names, facts not labels, only what is needed, no health or pay, approved tool only. A bottom box says: then check the answer, is it the same standard for everyone and based on facts.">
            <defs><marker id="pmg3a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <text x="380" y="24" font-weight="700" fill="#c4b5fd" text-anchor="middle">Check before you paste</text>
              <rect x="15" y="44" width="210" height="170" rx="8" fill="#1f1f44" stroke="#ec4899"/>
              <text x="120" y="68" font-weight="700" text-anchor="middle" fill="#f9a8d4">Your raw notes</text>
              <g font-size="12">
                <text x="35" y="96">• real names</text>
                <text x="35" y="120">• health details</text>
                <text x="35" y="144">• pay and ratings</text>
                <text x="35" y="168">• client secrets</text>
                <text x="35" y="192">• private messages</text>
              </g>
              <rect x="265" y="44" width="230" height="170" rx="8" fill="#27274e" stroke="#f59e0b"/>
              <text x="380" y="68" font-weight="700" text-anchor="middle" fill="#fcd34d">Four checks</text>
              <g font-size="12">
                <text x="283" y="96">1. Approved AI tool?</text>
                <text x="283" y="124">2. Do I need this detail?</text>
                <text x="283" y="152">3. Roles, not names</text>
                <text x="283" y="180">4. Special data removed?</text>
              </g>
              <rect x="535" y="44" width="210" height="170" rx="8" fill="#1f1f44" stroke="#10b981"/>
              <text x="640" y="68" font-weight="700" text-anchor="middle" fill="#6ee7b7">Safe prompt</text>
              <g font-size="12">
                <text x="555" y="96">• roles, not names</text>
                <text x="555" y="120">• facts, not labels</text>
                <text x="555" y="144">• only what is needed</text>
                <text x="555" y="168">• no health or pay</text>
                <text x="555" y="192">• approved tool only</text>
              </g>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#pmg3a)">
                <line x1="226" y1="129" x2="261" y2="129"/>
                <line x1="496" y1="129" x2="531" y2="129"/>
              </g>
              <rect x="15" y="232" width="730" height="48" rx="8" fill="#27274e" stroke="#8b5cf6"/>
              <text x="380" y="261" text-anchor="middle">Then check the answer: same standard for everyone? Based on facts?</text>
            </g>
          </svg>
          <figcaption>Clean your notes before they reach an AI tool. Then check what comes back for fairness.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>What not to paste</h3>
          <p>Anything you type into an AI tool leaves your hands. Free consumer tools may keep chats, and some may use them to improve their models, depending on the settings. Business versions usually give stronger data protections. Your company decides which tools are approved. At Bluefern, the approved tools are Microsoft 365 Copilot with the company login and a company Claude workspace.</p>
          <p>Even in an approved tool, some information should stay out.</p>
          <table class="lc-table">
            <thead><tr><th>Type of information</th><th>Example (made up)</th><th>What to do instead</th></tr></thead>
            <tbody>
              <tr><td>Health and medical details</td><td>"She told me she is seeing her GP about stress."</td><td>Never paste. Talk to HR and follow your policy.</td></tr>
              <tr><td>Pay, ratings, discipline, grievances</td><td>A salary list, or notes for a formal warning</td><td>Never paste with names. Work with HR.</td></tr>
              <tr><td>Personal contact and family details</td><td>Home address, a child's illness</td><td>Leave it out. AI does not need it.</td></tr>
              <tr><td>Private messages</td><td>Screenshots of a direct message between two people</td><td>Describe the facts in your own words.</td></tr>
              <tr><td>Client-confidential material</td><td>Unreleased app screens, passwords</td><td>Only where your company and the client allow it. Never passwords.</td></tr>
            </tbody>
          </table>
          <p>In UK data protection law, health, ethnic origin, religion and sexual orientation are "special category data". This means extra protection applies. The ICO (the UK data protection regulator) publishes guidance for employers. In the US, rules differ by state and by type of data. This is general education, not legal advice. Check with HR or a qualified adviser.</p>
        </div>
        <div class="lc-card">
          <h3>Rewrite before you paste</h3>
          <p>Hannah wants help to plan a talk about the clash between Marcus and Sofia. Here is her raw note. It is made up.</p>
          <pre><code>RAW (do not paste):
        Marcus Bell posted "Again?? Third change this month." in the
        client channel on 17 Sep. Sofia Romero cried after. Sofia also
        applied for my job, so maybe she resents me. Marcus has school
        pickup, so he always rushes out at 4:30.</code></pre>
          <pre><code>SAFE VERSION:
        A senior developer posted a frustrated comment about design
        changes in a shared Slack channel. The client could see it.
        A senior designer was upset. Developers say designs change after
        building starts. Designers say developers start before designs
        are signed off. Help me plan a fair conversation with both.</code></pre>
          <p>She removed names, guesses about feelings and private life details. She kept the facts the AI needs. Notice that removing names is not always enough. In a team of 8, "the part-time researcher" points to one person. Share only the detail the task needs.</p>
        </div>
        <div class="lc-card">
          <h3>Check for bias, and be open with your team</h3>
          <p><strong>Bias</strong> means unfair treatment of some people. AI can repeat bias because it learned from human writing. Watch for these patterns:</p>
          <ul class="lc-list">
            <li>Different words for the same behaviour, such as "confident" for one person and "pushy" for another.</li>
            <li>Remote or part-time people judged as less committed, because they are less visible.</li>
            <li>Lower scores for people who write in a second language.</li>
          </ul>
          <p>A simple <strong>swap test</strong> helps. Ask the same question again, but change only the role, the gender or the working pattern. If the answer changes in tone, something is wrong. In the UK, the Equality Act 2010 protects people from discrimination. It covers protected characteristics such as age, sex, race, disability and religion. US federal laws enforced by the EEOC do the same.</p>
          <p>Finally, be honest. Tell your team how you use AI. Hannah shares a short team agreement:</p>
          <pre><code>How I use AI as your manager:
        - I use only Bluefern's approved AI tools.
        - I use AI to prepare agendas, draft messages and tidy my own notes.
        - I never paste health, pay or personal details about you.
        - AI never decides anything about your job, pay or reviews. I do.
        - Ask me any time how I used AI for something that affects you.</code></pre>
        </div>
        <div class="lc-card">
          <h3>Activity: safe to paste?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each item Hannah might give an approved AI tool.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="fine" data-label="Fine as it is"></div>
              <div data-sorter-target="bucket" data-bucket="rewrite" data-label="Rewrite first"></div>
              <div data-sorter-target="bucket" data-bucket="never" data-label="Never paste"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="fine" data-why="A meeting agenda about team goals has no private details.">A request to draft the agenda for Monday's team meeting about the Q4 goals.</li>
              <li data-bucket="never" data-why="This is health information. It is special category data. Talk to HR instead.">A note that Aisha said she is seeing her GP about stress.</li>
              <li data-bucket="rewrite" data-why="The facts are useful, but use roles, not names, and leave out guesses about feelings.">Hannah's note about Marcus and Sofia arguing in Slack, with their names and her guesses.</li>
              <li data-bucket="never" data-why="Pay data with names is confidential. Pay planning belongs with HR and finance.">A spreadsheet of everyone's salaries, to plan pay rises.</li>
              <li data-bucket="rewrite" data-why="Remove the name and any personal details first. Then AI can tidy the actions.">Ben's 1:1 notes, with his name and a comment about his family, to turn into actions.</li>
              <li data-bucket="fine" data-why="General coaching questions contain no personal data.">A request for coaching questions for a junior developer who wants to grow.</li>
              <li data-bucket="never" data-why="Login details must never go into any AI tool. Client screens need client permission.">A client's unreleased app screens and the test login password.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to build a pre-paste checklist and a short AI agreement for your team. You will not paste any real team data.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a data protection and fairness adviser for people managers. Use simple English.

        My situation: [I lead a team of 8 at a London digital agency. My company's approved AI tools are Microsoft 365 Copilot and a company Claude workspace.]

        Please create:
        1. A pre-paste checklist of 6 to 8 yes/no questions I ask before I put any team information into an AI tool.
        2. A table of 6 types of team information (for example health details, pay, 1:1 notes, conflict notes). For each, say: Never paste, Rewrite first, or Usually fine, and give one reason.
        3. One made-up example of a manager's note with names, and a safe rewritten version that uses roles and facts only.
        4. A 3-step "swap test" to check an AI answer for bias.
        5. A short, friendly message (under 100 words) telling my team how I will and will not use AI.

        Do not use real people's data. Add a note that this is general guidance, not legal advice, and that I should follow my company's AI policy and ask HR.</pre>
            <ul class="ai-try-checks">
              <li>Health, pay and discipline details are marked "Never paste".</li>
              <li>The rewritten example uses roles and facts, with no names or guesses.</li>
              <li>The swap test changes only one detail at a time.</li>
              <li>The team message promises that AI will not decide about people.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Treat your team's information as if they were reading over your shoulder. Paste only what the task needs, and use roles instead of names. Keep health and pay out. Tell your team how you use AI.
        </div>
      HTML
      starter_code: nil
    },
    4 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mgmt">Management</div>
          <h1 class="lc-title">Knowing Your Team</h1>
        </div>
        <p class="lc-lead">You cannot lead people well if you do not know them. Each person has different strengths, different motivations and a different way of working. In this lesson you will learn what to find out about each person and how to ask. You will build a simple team profile: one table that shows how your team works best. Hannah will build one for her 8 people at Bluefern Digital, with each person's help.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 320" role="img" aria-label="A made-up team profile table for Hannah's team, with columns Name, Role, Strengths, Motivated by and Works best. Marcus, senior front-end developer, React and mentoring, motivated by mastery and leading, works best with direct feedback in writing first. Sofia, senior product designer, workshops and systems, influence and craft, talks things through. Aisha, back-end developer, APIs and staying calm, helping others, quiet focus blocks. Ben, junior front-end developer, tests and curiosity, learning fast, questions in 1:1s. Grace, part-time researcher, user interviews, users' voice heard, Monday to Wednesday and planned ahead. Oliver, QA engineer, detail and test plans, quality, written notes. Nadia, remote UI designer, visual and motion, visible work, camera on and included. Kwame, full-stack developer, releases and estimates, ownership, Monday to Thursday and clear asks. A note says it was built from 1:1 conversations, each person checks their own row, and there are no health details.">
            <g font-family="inherit" font-size="11" fill="#e2e0f0">
              <text x="380" y="24" font-size="13" font-weight="700" fill="#c4b5fd" text-anchor="middle">Team profile (made-up example): Hannah's team</text>
              <rect x="20" y="38" width="720" height="28" rx="6" fill="#27274e" stroke="#f59e0b"/>
              <g font-size="12" font-weight="700" fill="#fcd34d">
                <text x="28" y="57">Name</text>
                <text x="118" y="57">Role</text>
                <text x="268" y="57">Strengths</text>
                <text x="428" y="57">Motivated by</text>
                <text x="568" y="57">Works best</text>
              </g>
              <rect x="20" y="70" width="720" height="26" fill="#1f1f44"/>
              <rect x="20" y="122" width="720" height="26" fill="#1f1f44"/>
              <rect x="20" y="174" width="720" height="26" fill="#1f1f44"/>
              <rect x="20" y="226" width="720" height="26" fill="#1f1f44"/>
              <text x="28" y="88" font-weight="700">Marcus</text><text x="118" y="88">Sr front-end developer</text><text x="268" y="88">React, mentoring</text><text x="428" y="88">mastery, leading</text><text x="568" y="88">direct, in writing first</text>
              <text x="28" y="114" font-weight="700">Sofia</text><text x="118" y="114">Sr product designer</text><text x="268" y="114">workshops, systems</text><text x="428" y="114">influence, craft</text><text x="568" y="114">talk it through</text>
              <text x="28" y="140" font-weight="700">Aisha</text><text x="118" y="140">Back-end developer</text><text x="268" y="140">APIs, stays calm</text><text x="428" y="140">helping others</text><text x="568" y="140">quiet focus blocks</text>
              <text x="28" y="166" font-weight="700">Ben</text><text x="118" y="166">Junior front-end dev</text><text x="268" y="166">tests, curiosity</text><text x="428" y="166">learning fast</text><text x="568" y="166">questions in 1:1s</text>
              <text x="28" y="192" font-weight="700">Grace</text><text x="118" y="192">Researcher, part-time</text><text x="268" y="192">user interviews</text><text x="428" y="192">users' voice heard</text><text x="568" y="192">Mon–Wed, planned ahead</text>
              <text x="28" y="218" font-weight="700">Oliver</text><text x="118" y="218">QA engineer</text><text x="268" y="218">detail, test plans</text><text x="428" y="218">quality, few bugs</text><text x="568" y="218">written notes</text>
              <text x="28" y="244" font-weight="700">Nadia</text><text x="118" y="244">UI designer, remote</text><text x="268" y="244">visual, motion</text><text x="428" y="244">visible work</text><text x="568" y="244">camera on, included</text>
              <text x="28" y="270" font-weight="700">Kwame</text><text x="118" y="270">Full-stack developer</text><text x="268" y="270">releases, estimates</text><text x="428" y="270">ownership</text><text x="568" y="270">Mon–Thu, clear asks</text>
              <rect x="20" y="38" width="720" height="240" rx="6" fill="none" stroke="#4b4a78"/>
              <text x="380" y="302" fill="#9b99b8" text-anchor="middle">Built from 1:1 conversations. Each person checks their own row. No health details.</text>
            </g>
          </svg>
          <figcaption>A team profile fits on one page. It helps you plan work, meetings and feedback around real people, not guesses.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>What to learn about each person</h3>
          <p>A <strong>team profile</strong> is a short table about how each person works best. It is not a personality test and it is not a performance record. It covers five things:</p>
          <table class="lc-table">
            <thead><tr><th>Area</th><th>What it means</th><th>A question to ask</th></tr></thead>
            <tbody>
              <tr><td>Strengths</td><td>What the person does well and enjoys</td><td>"What work gives you energy?"</td></tr>
              <tr><td>Motivations</td><td>What makes work feel worth doing for them</td><td>"What made a recent week feel like a good week?"</td></tr>
              <tr><td>Working style</td><td>How they like to plan, focus and talk</td><td>"Do you prefer to talk things through or read first?"</td></tr>
              <tr><td>Feedback preference</td><td>How they like to hear praise and criticism</td><td>"How do you like to get feedback: in the moment, or written first?"</td></tr>
              <tr><td>Current goal</td><td>What they want to achieve or learn this year</td><td>"What do you want to be better at by December?"</td></tr>
            </tbody>
          </table>
          <p>Only record what people choose to share. Leave out health, family and other private details. Hannah knows that Aisha is working very long hours. That belongs in her 1:1 conversations and, if needed, with HR. It does not belong in a team table.</p>
        </div>
        <div class="lc-card">
          <h3>How AI helps you organise, not guess</h3>
          <p>AI cannot know your people. It can only work with what you give it. Never ask it to guess someone's personality from their messages. That is unfair and often wrong.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>What are developers and designers usually like? Make a profile
        of my team.</code></pre>
          <p>This invites stereotypes, such as "designers are emotional". It describes nobody real.</p>
          <p><strong>Better prompt (in Bluefern's approved tool):</strong></p>
          <pre><code>Here are my short notes from 1:1 conversations with 8 team members.
        Each person agreed to share these answers for a team profile.
        Put them in a table: Name, Role, Strengths, Motivated by,
        Works best, Current goal. Use only what is in my notes.
        Where a cell has no information, write "ask in next 1:1".
        Then list 3 patterns you see for the team as a whole.
        [notes]</code></pre>
          <p>The cell "ask in next 1:1" is important. It shows the gaps, instead of letting AI fill them with guesses.</p>
        </div>
        <div class="lc-card">
          <h3>Using the profile to make better choices</h3>
          <p>A profile is useful only if it changes what you do. Here is what Hannah notices in her table.</p>
          <table class="lc-table">
            <thead><tr><th>What the profile shows</th><th>What Hannah does</th></tr></thead>
            <tbody>
              <tr><td>Grace works Monday to Wednesday. The retrospective is on alternate Thursdays.</td><td>She moves the retrospective to a Wednesday, so Grace can join.</td></tr>
              <tr><td>Nadia is fully remote and wants her work to be seen.</td><td>Stand-up stays on Teams. Nadia will present her own designs at the next client review.</td></tr>
              <tr><td>Ben asks more questions in 1:1s than in groups.</td><td>She pairs him with Marcus, who enjoys mentoring. This also helps Marcus's tech lead goal.</td></tr>
              <tr><td>Marcus likes written feedback first. Sofia likes to talk things through.</td><td>For their disagreement, she sends Marcus a short note first, and offers Sofia a conversation.</td></tr>
              <tr><td>Kwame works Monday to Thursday, with Fridays off.</td><td>No release work is planned on Fridays.</td></tr>
            </tbody>
          </table>
          <p>Review the profile every quarter. People change, and so do their goals.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: build a team profile in order</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put Hannah's steps for building her team profile in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Tell the team what a team profile is, why she wants one, and who will see it.</li>
              <li data-order="2">Ask each person the same five questions in their next 1:1.</li>
              <li data-order="3">Write short notes in plain words, leaving out health and private details.</li>
              <li data-order="4">Use the approved AI tool to put the notes into a table, marking any gaps.</li>
              <li data-order="5">Share each person's row with them so they can correct it.</li>
              <li data-order="6">Use the profile to plan meetings, pairs and feedback, and review it each quarter.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to create a team profile kit: questions, a template and a sample row. Then use it with your real team in your 1:1s.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a coach for new managers. Use simple English.

        My team: [8 people at a digital agency: developers, designers, a user researcher and a QA engineer. One works part-time and one is fully remote.]

        Help me build a team profile. Please:
        1. Write 8 friendly questions I can ask each person in a 1:1 to learn their strengths, motivations, working style, feedback preference and current goal.
        2. Write a short message (under 80 words) that explains to my team why I want a team profile, who will see it, and that they can skip any question.
        3. Create a table template with columns: Name, Role, Strengths, Motivated by, Works best, Feedback preference, Current goal.
        4. Fill one sample row using only these made-up notes: [Person A, UI designer, remote. Loves illustration. Wants to present to a client. Prefers camera-on calls. Likes written feedback first.]
        5. List 4 things a manager should never put in a team profile.

        Do not guess personality types. Where information is missing, write "ask in next 1:1".</pre>
            <ul class="ai-try-checks">
              <li>The questions are open and friendly, not personal or medical.</li>
              <li>The sample row uses only the notes you gave, with no invented details.</li>
              <li>Missing details say "ask in next 1:1" instead of guesses.</li>
              <li>The "never include" list covers health, pay and private life.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Learn about your people by asking them, not by asking AI to guess. A short team profile, checked by each person, helps you plan work around how people really work best.
        </div>
      HTML
      starter_code: nil
    },
    5 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mgmt">Management</div>
          <h1 class="lc-title">Great 1:1s</h1>
        </div>
        <p class="lc-lead">A 1:1 (one-to-one) is a regular private meeting between a manager and one team member. It is one of the most useful tools a manager has. In this lesson you will learn how to plan a 1:1 agenda, ask good questions, take useful notes and follow up. You will see how AI can help you prepare in minutes. You will also see why the meeting itself must stay human.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="Top: a cycle of three boxes. Before: shared agenda, read last actions. During: their topics first, ask, listen, agree. After: notes and actions, follow up within a day. An arrow returns from After to Before, labelled next week. Bottom: a sample 30-minute agenda bar for Ben's 1:1. Minutes 0 to 10 their topics, 10 to 20 work and blockers, 20 to 25 growth, 25 to 30 actions.">
            <defs><marker id="pmg5a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <text x="380" y="24" font-weight="700" fill="#c4b5fd" text-anchor="middle">The 1:1 cycle and a 30-minute agenda</text>
              <g text-anchor="middle">
                <rect x="20" y="40" width="220" height="70" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
                <text x="130" y="62" font-weight="700">Before</text>
                <text x="130" y="82" font-size="11" fill="#9b99b8">shared agenda</text>
                <text x="130" y="99" font-size="11" fill="#9b99b8">read last actions</text>
                <rect x="270" y="40" width="220" height="70" rx="8" fill="#1f1f44" stroke="#10b981"/>
                <text x="380" y="62" font-weight="700">During</text>
                <text x="380" y="82" font-size="11" fill="#9b99b8">their topics first</text>
                <text x="380" y="99" font-size="11" fill="#9b99b8">ask, listen, agree</text>
                <rect x="520" y="40" width="220" height="70" rx="8" fill="#1f1f44" stroke="#8b5cf6"/>
                <text x="630" y="62" font-weight="700">After</text>
                <text x="630" y="82" font-size="11" fill="#9b99b8">notes and actions</text>
                <text x="630" y="99" font-size="11" fill="#9b99b8">follow up within a day</text>
                <text x="380" y="145" font-size="11" fill="#9b99b8">next week</text>
              </g>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#pmg5a)">
                <line x1="241" y1="75" x2="266" y2="75"/>
                <line x1="491" y1="75" x2="516" y2="75"/>
                <path d="M630,111 V130 H130 V114"/>
              </g>
              <text x="380" y="176" font-size="12" fill="#9b99b8" text-anchor="middle">Sample 30-minute agenda (Ben's 1:1)</text>
              <g text-anchor="middle">
                <rect x="30" y="186" width="233" height="44" fill="#27274e" stroke="#10b981"/>
                <text x="146" y="213" font-weight="700">Their topics</text>
                <rect x="263" y="186" width="233" height="44" fill="#27274e" stroke="#3b82f6"/>
                <text x="379" y="213" font-weight="700">Work and blockers</text>
                <rect x="496" y="186" width="117" height="44" fill="#27274e" stroke="#ec4899"/>
                <text x="554" y="213" font-weight="700">Growth</text>
                <rect x="613" y="186" width="117" height="44" fill="#27274e" stroke="#f59e0b"/>
                <text x="671" y="213" font-weight="700">Actions</text>
              </g>
              <g font-size="11" fill="#9b99b8">
                <text x="30" y="248">0 min</text>
                <text x="263" y="248" text-anchor="middle">10</text>
                <text x="496" y="248" text-anchor="middle">20</text>
                <text x="613" y="248" text-anchor="middle">25</text>
                <text x="730" y="248" text-anchor="end">30 min</text>
              </g>
              <text x="380" y="282" font-size="12" fill="#9b99b8" text-anchor="middle">Their topics come first. End with clear actions, owners and dates.</text>
            </g>
          </svg>
          <figcaption>A good 1:1 is a cycle: prepare, listen, follow up. The person's own topics come first.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>What a 1:1 is for</h3>
          <p>A 1:1 is the team member's meeting, not yours. It is not a status update. You can read status in Jira or Slack. Use the time for things that need a private, honest talk: problems, ideas, feedback and growth.</p>
          <p>Hannah holds a 30-minute 1:1 with each person every week. That is 8 meetings, or 4 hours a week in total.</p>
          <table class="lc-table">
            <thead><tr><th>Day</th><th>Time</th><th>Person</th><th>Where</th></tr></thead>
            <tbody>
              <tr><td>Monday</td><td>10:00</td><td>Grace Liu (UX Researcher, part-time)</td><td>Office</td></tr>
              <tr><td>Monday</td><td>14:00</td><td>Ben Carter (Junior Front-end Developer)</td><td>Office</td></tr>
              <tr><td>Tuesday</td><td>10:00</td><td>Marcus Bell (Senior Front-end Developer)</td><td>Office</td></tr>
              <tr><td>Tuesday</td><td>15:30</td><td>Nadia Begum (UI Designer, remote)</td><td>Teams video</td></tr>
              <tr><td>Wednesday</td><td>11:00</td><td>Sofia Romero (Senior Product Designer)</td><td>Office</td></tr>
              <tr><td>Wednesday</td><td>14:00</td><td>Aisha Khan (Back-end Developer)</td><td>Teams video</td></tr>
              <tr><td>Thursday</td><td>10:00</td><td>Kwame Mensah (Full-stack Developer)</td><td>Office</td></tr>
              <tr><td>Thursday</td><td>14:30</td><td>Oliver Hughes (QA Engineer)</td><td>Office</td></tr>
            </tbody>
          </table>
          <p>Try not to cancel 1:1s. If you must, move them instead. When a team member cancels again and again, notice it. Aisha cancelled her last two 1:1s. Hannah will not push, but she will ask kindly what time or format would work better.</p>
        </div>
        <div class="lc-card">
          <h3>Agenda and questions</h3>
          <p>Use a <strong>shared agenda</strong>: one running document for each person, such as a Word, OneNote or Notion page. Both of you add topics during the week. Their topics go first.</p>
          <table class="lc-table">
            <thead><tr><th>Purpose</th><th>Example questions</th></tr></thead>
            <tbody>
              <tr><td>Open up</td><td>"What is on your mind this week?" "What would make this 1:1 useful today?"</td></tr>
              <tr><td>Workload and blockers</td><td>"What is slowing you down?" "Is your workload about right, too much or too little?"</td></tr>
              <tr><td>Growth</td><td>"What have you learned recently?" "What skill do you want to practise next?"</td></tr>
              <tr><td>Feedback for you</td><td>"What could I do differently to help you more?"</td></tr>
            </tbody>
          </table>
          <p>AI is good at tailoring questions to a situation.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Give me 1:1 questions.</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>I have a 30-minute weekly 1:1 with a junior front-end developer
        who joined 4 months ago from a coding bootcamp. Their goal is to
        ship a feature end to end by December. They ask few questions in
        group meetings. This week they added the topic "stuck on checkout
        form tests". Suggest a 30-minute agenda with timings and 6 open
        questions. Their topics must come first. No yes/no questions.</code></pre>
        </div>
        <div class="lc-card">
          <h3>Notes and follow-ups</h3>
          <p>Write short notes during or just after the meeting. Record facts, agreements and actions. Each action needs an <strong>owner</strong> (the person who will do it) and a <strong>date</strong>. Avoid opinions about the person's character.</p>
          <pre><code>1:1 notes: Ben Carter, Mon 5 Oct 2026
        Ben's topics: checkout form tests failing on the date field.
        Discussed: pairing with Marcus helps; wants to try a code review.
        Actions:
        - Ben: pair with Marcus on the date-field tests, by Wed 7 Oct.
        - Hannah: add Ben as a second reviewer on 2 pull requests, by Fri 9 Oct.
        Next time: how the pairing went.</code></pre>
          <p>Send the actions to the person within a day, so you both agree on them. AI can turn rough notes into this format. Remove private details first, and check that nothing was added.</p>
          <p>Some tools, such as Copilot in Teams, can transcribe and summarise meetings. Think carefully before you use this in a 1:1. Ask the person first and follow your company's policy. Many people speak less openly when they know they are being recorded.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: Hannah prepares Ben's 1:1</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="tool" data-label="Shared agenda">Ben has added one topic: "stuck on checkout form tests". Hannah reads last week's actions. Both were done.</li>
              <li data-kind="user" data-label="Hannah asks AI">In Bluefern's approved tool, she asks for a 30-minute agenda and 6 open questions for a junior developer. She uses no name.</li>
              <li data-kind="answer" data-label="AI replies">The AI gives an agenda with timings: 10 minutes for his topics first. It suggests questions like "What have you tried so far?"</li>
              <li data-kind="warn" data-label="A trap">In the meeting, Hannah starts to solve the test bug herself. She stops. Ben learns more if he finds the answer.</li>
              <li data-kind="thought" data-label="She listens">She asks, "Who on the team could help with this?" Ben suggests Marcus, and asks to try a code review.</li>
              <li data-kind="check" data-label="After">She writes two actions with owners and dates. She checks the AI's tidy version against her own notes.</li>
              <li data-kind="result" data-label="Follow-up">She sends Ben the actions the same afternoon. He replies with a thumbs up and one correction.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to prepare your next 1:1: an agenda, questions, a notes template and a follow-up message. Then adjust it for the real person.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an experienced people manager who coaches new managers. Use simple English.

        Help me prepare a 1:1.
        - The person's role: [junior front-end developer, joined 4 months ago].
        - Meeting length: [30 minutes, weekly].
        - Their current goal: [ship a feature end to end by December].
        - Topics they added: [stuck on checkout form tests].
        - My topics: [ask how pairing with a senior developer is going; check workload].
        - Last week's actions: [all done].

        Please give me:
        1. An agenda with timings. Their topics must come first.
        2. 8 open questions: 2 to open up, 2 on workload and blockers, 2 on growth, 2 asking for feedback on me.
        3. A short notes template with sections for topics, agreements and actions (owner and date).
        4. A follow-up message to send after the meeting, under 80 words, with placeholders for the actions.
        5. Two mistakes to avoid in this 1:1.

        Use roles, not names. Do not invent facts about the person.</pre>
            <ul class="ai-try-checks">
              <li>The person's topics come first and the timings add up to the meeting length.</li>
              <li>The questions are open (not yes/no) and not too personal.</li>
              <li>Every action in the template has an owner and a date.</li>
              <li>It does not invent facts about the person.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A 1:1 is their meeting. Let AI help you prepare the agenda and tidy the actions. Spend the meeting itself listening, and always follow up on what you agreed.
        </div>
      HTML
      starter_code: nil
    },
    6 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mgmt">Management</div>
          <h1 class="lc-title">Setting Clear Goals and Expectations</h1>
        </div>
        <p class="lc-lead">People do their best work when they know three things. What does good look like? Who does what? What comes first? In this lesson you will turn vague goals into SMART goals. You will make roles clear with a simple RACI table. You will also set priorities, so people know what to do when two goals clash. Hannah will do all three for her team's Q4 goals at Bluefern Digital.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 280" role="img" aria-label="On the left, a vague goal: fewer bugs, better quality, with no number, no date and no owner. An arrow leads to five SMART checks: Specific, what exactly will change; Measurable, which number shows it; Achievable, possible with our people; Relevant, does it serve the Q4 goals; Time-bound, by which date. An arrow leads to a SMART goal: bugs after release from 18 in Q3 to 10 or fewer in Q4, owner Oliver, counted in Jira each month. A bottom band says: then add roles, who does what, and priorities, what comes first.">
            <defs><marker id="pmg6a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <text x="380" y="24" font-weight="700" fill="#c4b5fd" text-anchor="middle">From a vague goal to a SMART goal</text>
              <rect x="15" y="50" width="175" height="150" rx="8" fill="#1f1f44" stroke="#ec4899"/>
              <text x="102" y="74" font-weight="700" text-anchor="middle" fill="#f9a8d4">Vague goal</text>
              <g font-size="12" text-anchor="middle">
                <text x="102" y="102">"Fewer bugs."</text>
                <text x="102" y="124">"Better quality."</text>
                <text x="102" y="158" fill="#9b99b8">No number, no date,</text>
                <text x="102" y="176" fill="#9b99b8">no owner.</text>
              </g>
              <rect x="220" y="50" width="300" height="150" rx="8" fill="#27274e" stroke="#f59e0b"/>
              <g font-size="12">
                <text x="234" y="76"><tspan font-weight="700" fill="#fcd34d">S</tspan>  Specific: what exactly will change?</text>
                <text x="234" y="104"><tspan font-weight="700" fill="#fcd34d">M</tspan>  Measurable: which number shows it?</text>
                <text x="234" y="132"><tspan font-weight="700" fill="#fcd34d">A</tspan>  Achievable: possible with our people?</text>
                <text x="234" y="160"><tspan font-weight="700" fill="#fcd34d">R</tspan>  Relevant: does it serve Q4 goals?</text>
                <text x="234" y="188"><tspan font-weight="700" fill="#fcd34d">T</tspan>  Time-bound: by which date?</text>
              </g>
              <rect x="550" y="50" width="195" height="150" rx="8" fill="#1f1f44" stroke="#10b981"/>
              <text x="647" y="74" font-weight="700" text-anchor="middle" fill="#6ee7b7">SMART goal</text>
              <g font-size="12" text-anchor="middle">
                <text x="647" y="102">Bugs after release:</text>
                <text x="647" y="122">18 in Q3 to 10 or</text>
                <text x="647" y="142">fewer in Q4.</text>
                <text x="647" y="166" fill="#9b99b8">Owner: Oliver.</text>
                <text x="647" y="186" fill="#9b99b8">Counted in Jira monthly.</text>
              </g>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#pmg6a)">
                <line x1="191" y1="125" x2="216" y2="125"/>
                <line x1="521" y1="125" x2="546" y2="125"/>
              </g>
              <rect x="15" y="220" width="730" height="44" rx="8" fill="#27274e" stroke="#8b5cf6"/>
              <text x="380" y="247" text-anchor="middle">Then add roles (who does what) and priorities (what comes first).</text>
            </g>
          </svg>
          <figcaption>A SMART goal answers five questions. A vague goal answers none of them, so everyone reads it differently.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Make goals SMART, together with the person</h3>
          <p>A <strong>goal</strong> says what result you want. An <strong>expectation</strong> says how you want people to work, such as "tell me early when a date is at risk". Both must be clear.</p>
          <p><strong>SMART</strong> is a simple checklist for a goal: Specific, Measurable, Achievable, Relevant and Time-bound. Some teams also use <strong>OKRs</strong> (objectives and key results: a goal plus 2 to 4 numbers that show progress). The idea is the same. Everyone can see if the goal was met.</p>
          <table class="lc-table">
            <thead><tr><th>Vague goal</th><th>SMART version (made up)</th></tr></thead>
            <tbody>
              <tr><td>"Fewer bugs."</td><td>Cut bugs found after release from 18 in Q3 to 10 or fewer in Q4 (a drop of 8, about 44%). Owner: Oliver. Counted in Jira each month.</td></tr>
              <tr><td>"Stop late design changes."</td><td>Sign off designs at least 5 working days before development starts. No more than 2 of the about 14 Q4 features have changes after development starts (Q3: 6 of 15).</td></tr>
              <tr><td>"Ben should grow."</td><td>By Fri 27 Nov 2026, Ben builds the delivery-date step of the Greenleaf v2.0 checkout, from Jira ticket to merged code, with only code-review help. Every date rule has an automated test.</td></tr>
            </tbody>
          </table>
          <p>Write personal goals <em>with</em> the person, not <em>for</em> them. Hannah drafted Ben's goal with him in his 1:1. He chose the delivery-date step because he already knows the tests.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Write SMART goals for my team.</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>I lead a team of 8 at a digital agency. Our quarter runs from
        1 Oct to 31 Dec 2026. Here is a vague goal: "fewer bugs after
        release". Last quarter we had 18 bugs found after release.
        Rewrite it as a SMART goal. Then show each SMART letter and how
        the goal meets it. Point out anything that is still unclear,
        such as who counts the bugs and where. Ask me before you
        invent any number.</code></pre>
          <p>Check the AI's version. Is the number realistic for your team? Does it match what the person agreed? The AI cannot know if a goal is achievable. You and the person decide that.</p>
        </div>
        <div class="lc-card">
          <h3>Make roles clear with RACI</h3>
          <p>Many team arguments come from unclear roles. <strong>RACI</strong> is a simple table that shows who does what for each task:</p>
          <ul class="lc-list">
            <li><strong>Responsible:</strong> the person who does the work.</li>
            <li><strong>Accountable:</strong> the one person who owns the result and makes the final call.</li>
            <li><strong>Consulted:</strong> people asked for their view before the decision.</li>
            <li><strong>Informed:</strong> people told after the decision.</li>
          </ul>
          <p>Hannah's team has no clear design sign-off step. This is one reason for the clash about late design changes. She drafts a RACI table for the team to discuss.</p>
          <table class="lc-table">
            <thead><tr><th>Step</th><th>Responsible</th><th>Accountable</th><th>Consulted</th><th>Informed</th></tr></thead>
            <tbody>
              <tr><td>Design ready for review</td><td>Designer of the feature (Sofia or Nadia)</td><td>Hannah</td><td>Marcus (lead developer), Oliver (QA)</td><td>Whole team</td></tr>
              <tr><td>Design signed off, 5 working days before build</td><td>Designer of the feature</td><td>Hannah</td><td>Marcus, Oliver, client's project manager</td><td>Whole team</td></tr>
              <tr><td>Change after sign-off</td><td>Designer who asks for it</td><td>Hannah</td><td>Developer on the feature</td><td>Whole team, in the team channel</td></tr>
            </tbody>
          </table>
          <p>AI can draft a RACI table from a list of tasks and roles. But only the team can agree it. Hannah shares it as a draft and asks Marcus and Sofia to improve it.</p>
        </div>
        <div class="lc-card">
          <h3>Set priorities before they clash</h3>
          <p>A <strong>priority</strong> list says what comes first when there is not enough time for everything. Without one, people guess, or they work late to do it all.</p>
          <table class="lc-table">
            <thead><tr><th>Order</th><th>Q4 goal</th><th>Why this order</th></tr></thead>
            <tbody>
              <tr><td>1</td><td>Thames Valley Housing website launch, Thu 26 Nov</td><td>Fixed client date, and it comes first.</td></tr>
              <tr><td>2</td><td>Greenleaf Grocers app v2.0, Thu 10 Dec</td><td>Fixed client date, two weeks later.</td></tr>
              <tr><td>3</td><td>Bugs after release: 10 or fewer</td><td>Protects both launches.</td></tr>
              <tr><td>4</td><td>Design sign-off 5 working days before build</td><td>Removes the main cause of rework.</td></tr>
              <tr><td>5</td><td>Written development plan for everyone by Fri 30 Oct</td><td>Short work, but it must not slip.</td></tr>
            </tbody>
          </table>
          <p>Hannah adds one rule: <em>"Nobody averages more than 40 hours a week, over any 4 weeks, to hit a date. If a date is at risk, tell me. I will talk to Rachel and the client about scope."</em> This matters because Aisha is already logging 46 hours a week, against a 37.5-hour contract.</p>
          <p>Share goals, roles and priorities in writing, in one place, such as a Teams or Notion page. Then repeat them in 1:1s and team meetings.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: is this goal ready?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each draft goal. Is it ready to use, or what is missing?</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="ready" data-label="Ready to use"></div>
              <div data-sorter-target="bucket" data-bucket="number" data-label="Needs a clear number"></div>
              <div data-sorter-target="bucket" data-bucket="date" data-label="Needs a date or owner"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="ready" data-why="It has a measure (18 to 10 or fewer), a time (Q4) and an owner (Oliver).">Cut bugs found after release from 18 in Q3 to 10 or fewer in Q4. Owner: Oliver.</li>
              <li data-bucket="number" data-why="&quot;Better&quot; cannot be measured. Which number shows quality?">Make our releases better by the end of December. Owner: Oliver.</li>
              <li data-bucket="date" data-why="It has a number and an owner, but no date. Tests must finish in time to fix problems before 10 December.">Grace runs usability tests with 8 users for Greenleaf v2.0.</li>
              <li data-bucket="ready" data-why="It says what, how much help, how it is tested and by when.">Ben builds the delivery-date step by Fri 27 Nov, with only code-review help, and every date rule has a test.</li>
              <li data-bucket="number" data-why="&quot;More&quot; is not measurable. Say which releases, or how many, Kwame will run.">Kwame takes on more of the release work by December.</li>
              <li data-bucket="date" data-why="It has a clear measure, but nobody owns it and no period is set.">Designs are signed off at least 5 working days before development starts.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to turn your team's vague goals into SMART goals, with a draft RACI table and a priority list. Then check them with your team.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a coach for team leads. Use simple English.

        My team: [8 people at a digital agency: developers, designers, a researcher and a QA engineer].
        Time period: [1 October to 31 December 2026].
        Our vague goals:
        - [Fewer bugs after release. Last quarter: 18.]
        - [Stop late design changes. Last quarter: 6 of 15 features changed after building started.]
        - [Launch a client website on 26 November.]

        Please:
        1. Rewrite each goal as a SMART goal. Show a table: Goal, Specific, Measurable, Achievable, Relevant, Time-bound.
        2. For any number you suggest, say it is a suggestion I must agree with my team.
        3. Draft a RACI table for the step "design signed off before building starts". Use roles, not names.
        4. Suggest a priority order for the goals, with one reason each.
        5. Write 3 team expectations, for example "tell me early when a date is at risk".

        Do not invent facts about my team. Mark anything you assumed with "(check)".</pre>
            <ul class="ai-try-checks">
              <li>Every goal has a number, a date and an owner or role.</li>
              <li>Suggested numbers are marked as suggestions, not facts.</li>
              <li>The RACI table has only one Accountable person per step.</li>
              <li>The priority order makes sense for your real deadlines.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Clear goals, clear roles and clear priorities prevent many problems before they start. AI can draft them fast. You agree them with the people who will do the work.
        </div>
      HTML
      starter_code: nil
    },
    7 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mgmt">Management</div>
          <h1 class="lc-title">Giving Feedback</h1>
        </div>
        <p class="lc-lead">Feedback tells people what to keep doing and what to change. Without it, good habits fade and small problems grow. In this lesson you will learn the SBI model: Situation, Behaviour, Impact. You will practise praise and growth feedback, and learn when to give each. You will also use AI to check your words for labels and vague phrases. The words and the conversation stay yours.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 290" role="img" aria-label="A grid with four columns: Situation, Behaviour, Impact, Then ask. Praise row for Oliver: release check on Thursday 1 October; keyboard-only test of the repair form; found 3 issues before the client saw them; will you show the team how. Growth row for Nadia: rehearsal in her Tuesday 6 October 1:1; all 15 minutes on screens and no reasons given; no reasons and no time for client questions; what would you cut to make time. A note says: facts you saw, not labels, then listen.">
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="380" y="24" font-weight="700" fill="#c4b5fd">SBI feedback: two made-up examples</text>
              <rect x="110" y="40" width="152" height="36" rx="6" fill="#27274e" stroke="#3b82f6"/>
              <text x="186" y="63" font-weight="700">Situation</text>
              <rect x="270" y="40" width="152" height="36" rx="6" fill="#27274e" stroke="#8b5cf6"/>
              <text x="346" y="63" font-weight="700">Behaviour</text>
              <rect x="430" y="40" width="152" height="36" rx="6" fill="#27274e" stroke="#ec4899"/>
              <text x="506" y="63" font-weight="700">Impact</text>
              <rect x="590" y="40" width="152" height="36" rx="6" fill="#27274e" stroke="#22d3ee"/>
              <text x="666" y="63" font-weight="700">Then ask</text>
              <text x="58" y="118" font-weight="700" fill="#6ee7b7">Praise</text>
              <text x="58" y="136" font-size="11" fill="#9b99b8">(Oliver)</text>
              <text x="58" y="193" font-weight="700" fill="#fcd34d">Growth</text>
              <text x="58" y="211" font-size="11" fill="#9b99b8">(Nadia)</text>
              <g font-size="11">
                <rect x="110" y="92" width="152" height="60" rx="6" fill="#1f1f44" stroke="#10b981"/>
                <text x="186" y="117">Release check,</text>
                <text x="186" y="134">Thu 1 Oct</text>
                <rect x="270" y="92" width="152" height="60" rx="6" fill="#1f1f44" stroke="#10b981"/>
                <text x="346" y="117">Keyboard-only test</text>
                <text x="346" y="134">of the repair form</text>
                <rect x="430" y="92" width="152" height="60" rx="6" fill="#1f1f44" stroke="#10b981"/>
                <text x="506" y="117">Found 3 issues before</text>
                <text x="506" y="134">the client saw them</text>
                <rect x="590" y="92" width="152" height="60" rx="6" fill="#1f1f44" stroke="#10b981"/>
                <text x="666" y="117">"Will you show</text>
                <text x="666" y="134">the team how?"</text>
                <rect x="110" y="167" width="152" height="60" rx="6" fill="#1f1f44" stroke="#f59e0b"/>
                <text x="186" y="192">Rehearsal in her</text>
                <text x="186" y="209">Tue 6 Oct 1:1</text>
                <rect x="270" y="167" width="152" height="60" rx="6" fill="#1f1f44" stroke="#f59e0b"/>
                <text x="346" y="192">All 15 minutes on</text>
                <text x="346" y="209">screens, no reasons</text>
                <rect x="430" y="167" width="152" height="60" rx="6" fill="#1f1f44" stroke="#f59e0b"/>
                <text x="506" y="192">No reasons, no time</text>
                <text x="506" y="209">for client questions</text>
                <rect x="590" y="167" width="152" height="60" rx="6" fill="#1f1f44" stroke="#f59e0b"/>
                <text x="666" y="192">"What would you</text>
                <text x="666" y="209">cut to make time?"</text>
              </g>
              <text x="380" y="266" font-size="12" fill="#9b99b8">Describe facts you saw, not labels. Then ask a question and listen.</text>
            </g>
          </svg>
          <figcaption>SBI works for praise and for growth feedback. Each part is a fact the person can recognise.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Praise and growth feedback, and when to give them</h3>
          <p>There are two kinds of feedback. <strong>Praise</strong> (positive feedback) tells someone what to keep doing. <strong>Growth feedback</strong> (also called constructive feedback) tells someone what to change, and why. Both should be specific and honest.</p>
          <table class="lc-table">
            <thead><tr><th></th><th>Praise</th><th>Growth feedback</th></tr></thead>
            <tbody>
              <tr><td>When</td><td>Soon, while people remember the details.</td><td>Within a day or two, once you have checked the facts and feel calm.</td></tr>
              <tr><td>Where</td><td>Public or private, as the person prefers.</td><td>Always in private.</td></tr>
              <tr><td>How</td><td>Say exactly what they did and why it mattered.</td><td>Describe the behaviour and its impact. Then ask for their view.</td></tr>
              <tr><td>Avoid</td><td>"Great job!" with no detail.</td><td>Saving it for a yearly review. Hiding it between two compliments.</td></tr>
            </tbody>
          </table>
          <p>Use what you learned about each person. Marcus likes direct feedback in writing first. Sofia likes to talk things through. Oliver is quiet in meetings, so Hannah asks before she praises him in front of the team.</p>
        </div>
        <div class="lc-card">
          <h3>The SBI model: Situation, Behaviour, Impact</h3>
          <p>The <strong>SBI model</strong> was developed by the Center for Creative Leadership, a US leadership training organisation. It has three parts:</p>
          <ul class="lc-list">
            <li><strong>Situation:</strong> when and where it happened.</li>
            <li><strong>Behaviour:</strong> what the person did or said, as a camera would record it.</li>
            <li><strong>Impact:</strong> the effect on you, the team, the client or the work.</li>
          </ul>
          <p>Then stop and ask a question. Feedback is a conversation, not a speech.</p>
          <pre><code>PRAISE (to Oliver, by Teams message, as he prefers):
        In the Thames Valley release check on Thursday, you tested the
        "Report a repair" form using only a keyboard. You found 3
        accessibility issues before the client saw the page. That keeps
        us on track for the WCAG 2.2 AA checks at launch. Thank you.
        Would you be happy to show the team how you planned that test?

        GROWTH (to Nadia, in her 1:1 on Teams):
        In your rehearsal on Tuesday, you showed screens for all
        15 minutes. You did not say why the repair buttons are bigger.
        Clients often need the reason before they agree to a change.
        There was also no time left for their questions.
        What could you cut to leave 5 minutes for questions?</code></pre>
          <p>Nadia's client review is on Thu 15 Oct. That is her first time presenting her own work, which is her goal this quarter. Hannah gives the feedback at the rehearsal, so Nadia has 9 days to adjust.</p>
          <table class="lc-table">
            <thead><tr><th>Label (avoid)</th><th>Behaviour (use)</th></tr></thead>
            <tbody>
              <tr><td>"You were unprepared."</td><td>"You did not say why the buttons are bigger."</td></tr>
              <tr><td>"You're a star."</td><td>"You found 3 issues before the client saw the page."</td></tr>
              <tr><td>"You have a bad attitude."</td><td>"You posted 'Again??' in the channel the client can read."</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Use AI to sharpen your words, not to judge</h3>
          <p>AI is good at spotting labels, guesses and vague phrases in your draft. It can also suggest an opening question. It cannot know what really happened. Only you saw the behaviour.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Write feedback telling my designer her presentation was bad.</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Here are my rough notes for growth feedback to a UI designer
        after a rehearsal for her first client presentation:
        "Showed screens for all 15 min. Never said why the buttons
        are bigger. No time for questions. Seemed nervous."
        Rewrite this using the SBI model (Situation, Behaviour, Impact).
        Remove any guesses about feelings, like "seemed nervous".
        End with one open question. Keep it under 80 words.
        Then list any words in my notes that sound like labels.</code></pre>
          <p>Notice the guess "seemed nervous". It is about feelings, not behaviour, so it comes out. Never paste ratings, pay or discipline notes with a name. After the AI drafts, read the feedback aloud. Does it sound like you? Is every fact true?</p>
        </div>
        <div class="lc-card">
          <h3>Activity: Situation, Behaviour or Impact?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each part of Hannah's two feedback messages into the right SBI part.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="s" data-label="Situation"></div>
              <div data-sorter-target="bucket" data-bucket="b" data-label="Behaviour"></div>
              <div data-sorter-target="bucket" data-bucket="i" data-label="Impact"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="s" data-why="It says when and where. Nadia can picture the moment.">In your rehearsal on Tuesday,</li>
              <li data-bucket="b" data-why="A camera could record this. It is a fact, not a judgement.">you showed screens for all 15 minutes.</li>
              <li data-bucket="b" data-why="This is something she did not say. It can be checked.">You did not say why the repair buttons are bigger.</li>
              <li data-bucket="i" data-why="This is the effect on the client and the work.">Clients often need the reason before they agree to a change.</li>
              <li data-bucket="s" data-why="It names the event and the day.">In the Thames Valley release check on Thursday,</li>
              <li data-bucket="b" data-why="It describes exactly what Oliver did.">you tested the repair form using only a keyboard.</li>
              <li data-bucket="i" data-why="This is the result for the client and the launch.">You found 3 accessibility issues before the client saw the page.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to turn your rough notes into clear SBI feedback, and to flag labels and guesses. Then check every fact yourself.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a feedback coach for new managers. Use simple English.

        Feedback type: [growth feedback]
        The person's role: [junior developer]
        How they like feedback: [written first, then a short talk]
        My rough notes (made up, no names): [In Monday's sprint planning he said a task would take 1 day. It took 4 days. He did not tell anyone it was late until Thursday. The tester had to wait. He is lazy about updates.]

        Please:
        1. List any labels, guesses about feelings or unfair words in my notes, and explain why each is a problem.
        2. Rewrite the feedback using SBI: Situation, Behaviour, Impact. Keep it under 90 words.
        3. Add one open question to start a conversation.
        4. Suggest one clear request for next time.
        5. Write a short version of praise feedback in SBI form for something the person could do well next time, so I can see the difference.

        Do not invent facts. If something is unclear, write "(check)".</pre>
            <ul class="ai-try-checks">
              <li>Labels such as "lazy" are flagged and removed.</li>
              <li>The behaviour part describes only what was seen or said.</li>
              <li>The impact is about the work or the team, not the person's character.</li>
              <li>It ends with a real, open question.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Good feedback is specific, timely and about behaviour, not character. Use SBI, then ask and listen. AI can clean up your wording, but only you know the facts.
        </div>
      HTML
      starter_code: nil
    },
    8 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mgmt">Management</div>
          <h1 class="lc-title">Recognising Good Work</h1>
        </div>
        <p class="lc-lead">Recognition means noticing good work and saying so. It shows people that their effort matters. It also shows the whole team what "good" looks like. In this lesson you will learn to make recognition specific and fair. You will use a simple spreadsheet to check who you thank, and who you miss. You will also plan team celebrations that include everyone.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 290" role="img" aria-label="A bar chart of Hannah's public thank-you messages in Slack in September, all made up. Marcus 5, Sofia 4, Kwame 4, Ben 3, Aisha 2, Oliver 1, Grace 1, Nadia 0. A dashed line marks the even share of 2.5, which is 20 thank-yous divided by 8 people. A side panel says quiet, remote and part-time people got fewer thanks, Aisha carries the back end but got only 2, and the tracker checks Hannah's habits, not people's performance.">
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <text x="380" y="24" font-weight="700" fill="#c4b5fd" text-anchor="middle">Hannah's public thank-yous in Slack, September (made up)</text>
              <g text-anchor="end" font-size="12">
                <text x="115" y="62">Marcus</text>
                <text x="115" y="88">Sofia</text>
                <text x="115" y="114">Kwame</text>
                <text x="115" y="140">Ben</text>
                <text x="115" y="166">Aisha</text>
                <text x="115" y="192">Oliver</text>
                <text x="115" y="218">Grace</text>
                <text x="115" y="244">Nadia</text>
              </g>
              <rect x="125" y="48" width="300" height="18" rx="3" fill="#8b5cf6"/>
              <rect x="125" y="74" width="240" height="18" rx="3" fill="#8b5cf6"/>
              <rect x="125" y="100" width="240" height="18" rx="3" fill="#8b5cf6"/>
              <rect x="125" y="126" width="180" height="18" rx="3" fill="#8b5cf6"/>
              <rect x="125" y="152" width="120" height="18" rx="3" fill="#f59e0b"/>
              <rect x="125" y="178" width="60" height="18" rx="3" fill="#f59e0b"/>
              <rect x="125" y="204" width="60" height="18" rx="3" fill="#f59e0b"/>
              <g font-size="12" fill="#9b99b8">
                <text x="432" y="62">5</text>
                <text x="372" y="88">4</text>
                <text x="372" y="114">4</text>
                <text x="312" y="140">3</text>
                <text x="252" y="166">2</text>
                <text x="192" y="192">1</text>
                <text x="192" y="218">1</text>
                <text x="134" y="244">0</text>
              </g>
              <line x1="275" y1="42" x2="275" y2="254" stroke="#22d3ee" stroke-width="1.5" stroke-dasharray="5 4"/>
              <text x="275" y="274" font-size="12" fill="#22d3ee" text-anchor="middle">Even share: 20 ÷ 8 = 2.5</text>
              <rect x="470" y="44" width="275" height="206" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="607" y="68" font-weight="700" fill="#fcd34d" text-anchor="middle">What Hannah notices</text>
              <g font-size="12">
                <text x="486" y="96">• Quiet, remote and part-time</text>
                <text x="496" y="114">people got fewer thanks.</text>
                <text x="486" y="140">• Aisha covers the back end</text>
                <text x="496" y="158">alone, but got only 2.</text>
                <text x="486" y="184">• Nadia got none.</text>
                <text x="486" y="210">• This checks Hannah's habits,</text>
                <text x="496" y="228">not anyone's performance.</text>
              </g>
            </g>
          </svg>
          <figcaption>Most managers thank the people they see and hear most. A simple count shows who is being missed.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>What good recognition looks like</h3>
          <p>Good recognition has four features. It is <strong>specific</strong>: it says what the person did. It is <strong>timely</strong>: it comes soon after the work. It is <strong>fair</strong>: everyone's work gets noticed, not only the loudest. It is <strong>personal</strong>: it fits how the person likes to be thanked.</p>
          <table class="lc-table">
            <thead><tr><th>Vague</th><th>Specific (made up)</th></tr></thead>
            <tbody>
              <tr><td>"Thanks, Grace, great work!"</td><td>"Grace, your summary of the 6 Greenleaf user interviews gave us 3 clear changes for the checkout. The client agreed to all 3 on Monday."</td></tr>
              <tr><td>"Kwame is a legend."</td><td>"Kwame, you wrote a release checklist for Thames Valley. Now anyone on the team can run a release. Thank you."</td></tr>
              <tr><td>"Aisha, amazing effort, working all hours!"</td><td>"Aisha, you finished the order-history API this week, so the Greenleaf app can now show past orders. Thank you. Let's also talk about your workload."</td></tr>
            </tbody>
          </table>
          <p>Look at the last row. Recognise the <em>result</em>, not long hours. Praising late nights tells people that overwork is what you want. Aisha already logs 46 hours a week against 37.5 contracted hours. Hannah thanks her for the fix, and plans a separate talk about her workload.</p>
          <p>Recognition is not the same as a rating or a pay decision. Keep it simple, honest and frequent.</p>
        </div>
        <div class="lc-card">
          <h3>Check your own fairness with a simple tracker</h3>
          <p>Hannah wonders if she thanks some people more than others. She builds a small Excel sheet. Each row is one public thank-you she posted in the team's Slack channel in September. Column A is the date, column B is the person and column C is what it was for.</p>
          <pre><code>Count for one person (Nadia):   =COUNTIF(B2:B21,"Nadia")          gives 0
        Total thank-yous:                =COUNTA(B2:B21)                   gives 20
        Even share for 8 people:         =COUNTA(B2:B21)/8                 gives 2.5
        Marcus's share of all thanks:    =COUNTIF(B2:B21,"Marcus")/COUNTA(B2:B21)   gives 25%</code></pre>
          <p>Format the last cell as a percentage. The counts are: Marcus 5, Sofia 4, Kwame 4, Ben 3, Aisha 2, Oliver 1, Grace 1 and Nadia 0. Together, that is 20.</p>
          <p>The pattern is clear. The people Hannah sees most in the office got the most thanks. Nadia works remotely from Manchester. Grace works Monday to Wednesday. Oliver is quiet in meetings. Their work is just as real, but Hannah sees less of it.</p>
          <p>This tracker checks Hannah's habits only. It must never be used to judge or rate anyone. If you want AI to spot patterns, use your company's approved tool, and replace names with roles.</p>
        </div>
        <div class="lc-card">
          <h3>Drafting recognition with AI, and celebrating wins</h3>
          <p>AI can turn your rough note into a clear, specific message. It often writes in a generic, over-excited style. Edit it until it sounds like you.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Write a thank-you message for my QA engineer.</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Write a short thank-you message (under 60 words) from a team lead
        to a QA engineer. Facts: in Thursday's release check, they tested
        a "report a repair" form using only a keyboard and found 3
        accessibility issues before the client saw the page. This keeps
        our launch on track for its accessibility checks. They are quiet
        and prefer written messages. No exclamation marks, no clichés
        like "rock star". Use only these facts.</code></pre>
          <p>Celebrate team wins too, and plan them so everyone can join. The Thames Valley Housing launch is on Thu 26 Nov. Grace does not work Thursdays, and Nadia is in London once a month. So Hannah plans a team lunch on Wed 2 Dec, the day of Nadia's London visit. Everyone works on Wednesdays.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: Hannah recognises Oliver</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="tool" data-label="Tracker">Hannah opens her September thank-you sheet and uses COUNTIF for each person.</li>
              <li data-kind="result" data-label="What it shows">Oliver: 1 thank-you. Nadia: 0. Marcus: 5. The even share is 2.5.</li>
              <li data-kind="thought" data-label="She reflects">Oliver did careful work all month. She did not notice because he is quiet in meetings.</li>
              <li data-kind="user" data-label="She asks AI">In Bluefern's approved tool, she asks for a short thank-you to a QA engineer, using only the facts of his keyboard test.</li>
              <li data-kind="answer" data-label="AI drafts">The draft says: "Huge thanks to our tireless hero, who stayed late to save the launch!"</li>
              <li data-kind="warn" data-label="Problems">"Stayed late" is not true, and it praises long hours. "Tireless hero" is vague. It does not say what he did.</li>
              <li data-kind="check" data-label="She edits">She rewrites it: what he tested, the 3 issues found, and why it matters. She asks Oliver if he is happy for her to share it with the team.</li>
              <li data-kind="result" data-label="Sent">Oliver agrees. She posts it in the team channel and mentions his test to Rachel, her own manager.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to help you write specific thank-you messages and plan a fair recognition habit. Use made-up or role-based details only.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a coach who helps managers recognise good work fairly. Use simple English.

        My team: [8 people. Two are quiet in meetings, one works fully remote and one works part-time, Monday to Wednesday.]
        Recent wins (made up, roles only):
        - [A QA engineer found 3 accessibility issues before the client saw the page.]
        - [A researcher turned 6 user interviews into 3 clear changes the client accepted.]
        - [A developer wrote a release checklist so anyone can run a release.]

        Please:
        1. Write a specific thank-you message for each win, under 50 words, with no clichés.
        2. For each, suggest public or private, and how to ask the person which they prefer.
        3. Give me a simple weekly habit to make sure quiet, remote and part-time people are not missed.
        4. Suggest 3 ways to celebrate a project launch that include remote and part-time people.
        5. List 3 mistakes to avoid, such as praising long hours.

        Do not invent extra facts about the wins.</pre>
            <ul class="ai-try-checks">
              <li>Each message says what was done and why it mattered.</li>
              <li>No message praises long hours or late nights.</li>
              <li>The celebration ideas work for remote and part-time people.</li>
              <li>It does not add facts that were not in the prompt.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Specific thanks teach the team what good looks like. Count your own thank-yous now and then, because quiet, remote and part-time people are easy to miss. Thank people for results, never for overwork.
        </div>
      HTML
      starter_code: nil
    },
    9 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mgmt">Management</div>
          <h1 class="lc-title">Running Team Meetings</h1>
        </div>
        <p class="lc-lead">Team meetings take a lot of people's time at once. A good meeting has a clear purpose, a short agenda, clear decisions and action items with owners. A poor one ends with nothing decided. In this lesson you will plan Hannah's Monday team meeting at Bluefern Digital. You will use AI to draft the agenda and tidy the notes. You will also check what AI meeting tools get wrong.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="Top: four steps with arrows. Purpose: inform, decide, discuss or connect. Agenda: topics, owners, minutes, sent early. Decisions: who decides, written in a log. Actions: owner and date, sent the same day. A line asks: could this be a message instead? Bottom: a 30-minute agenda bar for Monday 5 October. Minutes 0 to 5 wins, 5 to 15 Q4 goals check, 15 to 25 decision on test dates, 25 to 30 actions.">
            <defs><marker id="pmg9a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <text x="380" y="24" font-weight="700" fill="#c4b5fd" text-anchor="middle">A meeting that ends in decisions and actions</text>
              <g text-anchor="middle">
                <rect x="15" y="44" width="160" height="70" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
                <text x="95" y="66" font-weight="700">Purpose</text>
                <text x="95" y="86" font-size="11" fill="#9b99b8">inform, decide,</text>
                <text x="95" y="102" font-size="11" fill="#9b99b8">discuss or connect</text>
                <rect x="205" y="44" width="160" height="70" rx="8" fill="#1f1f44" stroke="#10b981"/>
                <text x="285" y="66" font-weight="700">Agenda</text>
                <text x="285" y="86" font-size="11" fill="#9b99b8">topics, owners,</text>
                <text x="285" y="102" font-size="11" fill="#9b99b8">minutes, sent early</text>
                <rect x="395" y="44" width="160" height="70" rx="8" fill="#1f1f44" stroke="#8b5cf6"/>
                <text x="475" y="66" font-weight="700">Decisions</text>
                <text x="475" y="86" font-size="11" fill="#9b99b8">who decides,</text>
                <text x="475" y="102" font-size="11" fill="#9b99b8">written in a log</text>
                <rect x="585" y="44" width="160" height="70" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
                <text x="665" y="66" font-weight="700">Actions</text>
                <text x="665" y="86" font-size="11" fill="#9b99b8">owner and date,</text>
                <text x="665" y="102" font-size="11" fill="#9b99b8">sent the same day</text>
              </g>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#pmg9a)">
                <line x1="176" y1="79" x2="201" y2="79"/>
                <line x1="366" y1="79" x2="391" y2="79"/>
                <line x1="556" y1="79" x2="581" y2="79"/>
              </g>
              <text x="380" y="144" font-size="12" fill="#ec4899" text-anchor="middle">First ask: could this be a message instead? If yes, skip the meeting.</text>
              <text x="380" y="180" font-size="12" fill="#9b99b8" text-anchor="middle">Monday team meeting, Mon 5 Oct, 11:00 to 11:30 (made up)</text>
              <g text-anchor="middle">
                <rect x="30" y="190" width="117" height="44" fill="#27274e" stroke="#10b981"/>
                <text x="88" y="217" font-weight="700">Wins</text>
                <rect x="147" y="190" width="233" height="44" fill="#27274e" stroke="#3b82f6"/>
                <text x="263" y="217" font-weight="700">Q4 goals check</text>
                <rect x="380" y="190" width="233" height="44" fill="#27274e" stroke="#8b5cf6"/>
                <text x="496" y="217" font-weight="700">Decision: test dates</text>
                <rect x="613" y="190" width="117" height="44" fill="#27274e" stroke="#f59e0b"/>
                <text x="671" y="217" font-weight="700">Actions</text>
              </g>
              <g font-size="11" fill="#9b99b8">
                <text x="30" y="252">0 min</text>
                <text x="147" y="252" text-anchor="middle">5</text>
                <text x="380" y="252" text-anchor="middle">15</text>
                <text x="613" y="252" text-anchor="middle">25</text>
                <text x="730" y="252" text-anchor="end">30 min</text>
              </g>
              <text x="380" y="284" font-size="12" fill="#9b99b8" text-anchor="middle">9 people x 30 minutes = 4.5 hours of team time each week.</text>
            </g>
          </svg>
          <figcaption>Every meeting needs a purpose before it starts, and decisions and actions when it ends.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Start with the purpose</h3>
          <p>Before you book a meeting, ask: what is it for? Most meetings do one of four things. They <strong>inform</strong>, <strong>decide</strong>, <strong>discuss</strong> (solve a problem together) or <strong>connect</strong> (build team relationships). If a meeting only informs, a written update may be better.</p>
          <table class="lc-table">
            <thead><tr><th>Meeting</th><th>When</th><th>Purpose</th><th>Notes</th></tr></thead>
            <tbody>
              <tr><td>Daily stand-up</td><td>09:45, 15 minutes, on Teams</td><td>Inform and spot blockers</td><td>On Teams so Nadia can join from Manchester.</td></tr>
              <tr><td>Team meeting</td><td>Monday 11:00, 30 minutes</td><td>Decide and connect</td><td>Office and Teams. Grace works Mondays, so she can join.</td></tr>
              <tr><td>Design review</td><td>Tuesday 14:00</td><td>Discuss and decide</td><td>Developers are invited, to catch changes early.</td></tr>
              <tr><td>Retrospective</td><td>Alternate Wednesdays 16:00, 45 minutes</td><td>Discuss how the team works</td><td>Moved from Thursday so Grace can join.</td></tr>
            </tbody>
          </table>
          <p>A <strong>retrospective</strong> is a meeting where the team looks back at recent work and agrees what to improve.</p>
          <p>Meetings cost time. Hannah's Monday meeting has 9 people for 30 minutes. That is 270 minutes, or 4.5 hours of team time, each week. It must be worth it.</p>
          <p>Make hybrid meetings fair. When some people are remote, everyone should be able to hear, see and speak. Hannah asks remote people to speak first in each round.</p>
        </div>
        <div class="lc-card">
          <h3>Plan the agenda with AI</h3>
          <p>An <strong>agenda</strong> lists the topics, who leads each one, and how many minutes it gets. Send it at least a day before, so people can prepare. Quiet people, like Oliver, often share more when they can think first.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Make an agenda for my team meeting.</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Draft a 30-minute agenda for a weekly team meeting of 9 people
        (8 in a digital agency team, plus me). Some join on Teams.
        Topics: short wins and thanks; check progress on our Q4 goals
        (website launch 26 Nov, app release 10 Dec, bugs after release);
        decide the dates for app usability tests with 8 users.
        For each item give: minutes, leader (use roles), and the purpose
        (inform, decide or discuss). Put the decision before the end,
        not last. Leave 5 minutes to read back decisions and actions.</code></pre>
          <pre><code>Agenda: Monday team meeting, Mon 5 Oct 2026, 11:00 to 11:30
        0-5    Wins and thanks (Hannah)                      connect
        5-15   Q4 goals check: launches and bugs (Hannah, Oliver)  inform
        15-25  Decide Greenleaf usability test dates (Grace)       decide
        25-30  Read back decisions and actions (Hannah)            agree</code></pre>
          <p>Check the timings add up to 30 minutes. They do: 5 + 10 + 10 + 5 = 30. Also check that the person who owns a decision is in the room.</p>
        </div>
        <div class="lc-card">
          <h3>Capture decisions and actions</h3>
          <p>A meeting is not finished until decisions and actions are written down. A <strong>decision log</strong> is a simple list of what was decided, who decided and why. An <strong>action item</strong> is a task with one owner and a due date.</p>
          <table class="lc-table">
            <thead><tr><th>Type</th><th>What (made up)</th><th>Owner</th><th>Due</th></tr></thead>
            <tbody>
              <tr><td>Decision</td><td>Greenleaf usability tests run Mon 9 to Wed 11 Nov. That leaves time to fix issues before the 10 Dec release.</td><td>Grace decided, after the team gave views</td><td>Mon 5 Oct</td></tr>
              <tr><td>Status</td><td>Bugs found after release so far in Q4: 1. Target: 10 or fewer.</td><td>Oliver</td><td>Next Monday</td></tr>
              <tr><td>Action</td><td>Book 8 users for the usability tests.</td><td>Grace</td><td>Wed 14 Oct</td></tr>
              <tr><td>Action</td><td>Share the test plan with Ben and Kwame.</td><td>Grace</td><td>Wed 21 Oct</td></tr>
            </tbody>
          </table>
          <p>AI meeting tools can help here. For example, Copilot in Teams can produce a recap with notes and suggested action items. It usually needs the meeting to be recorded or transcribed. Tell people first, and follow your company's policy. Features change often, so check the tool's current help pages.</p>
          <p>Always check the AI recap against your own notes. AI can give an action to the wrong person. It can turn an idea someone mentioned into a "decision". It can also miss what remote people said if the sound was poor. Send the checked notes the same day.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: run the meeting in order</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put Hannah's steps for her Monday team meeting in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Decide the purpose. Check whether a written update would be enough.</li>
              <li data-order="2">Draft the agenda with AI, then check the timings and owners.</li>
              <li data-order="3">Send the agenda the working day before, so people can prepare.</li>
              <li data-order="4">Start on time and say the purpose and the decision needed.</li>
              <li data-order="5">Hear views, starting with remote people, then let the owner decide.</li>
              <li data-order="6">Read back decisions and actions, each with an owner and a date.</li>
              <li data-order="7">Check the notes against the AI recap and send them the same day.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to plan a meeting and turn rough notes into a decision log and action list. Then check every owner and date.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an expert at running short, useful team meetings. Use simple English.

        Meeting: [weekly team meeting, 30 minutes, 9 people, some remote on Teams]
        Topics: [wins; progress on two client launches; decide dates for user testing]

        Part 1. Draft an agenda. For each item give minutes, leader (role, not name) and purpose (inform, decide, discuss or connect). The minutes must add up to the meeting length.

        Part 2. Here are my rough notes from the meeting (made up):
        [Website launch on track for 26 Nov. One bug found after release so far. Researcher suggested testing 9 to 11 Nov, team agreed, researcher confirmed. Someone said we could maybe move stand-up later, no decision. Researcher to book 8 users by 14 Oct.]

        Turn the notes into:
        - A decision log: Decision, Who decided, Date.
        - An action list: Action, Owner (role), Due date.
        - A list of open questions that were NOT decided.

        Do not turn ideas into decisions. If an owner or date is missing, write "(missing)".</pre>
            <ul class="ai-try-checks">
              <li>The agenda minutes add up to the meeting length.</li>
              <li>"Move stand-up later" is listed as an open question, not a decision.</li>
              <li>Every action has one owner and a due date, or is marked "(missing)".</li>
              <li>It did not invent actions that are not in the notes.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Give every meeting a purpose, a timed agenda and a written list of decisions and actions. AI can draft the agenda and the recap. You check who owns what, and you make sure every voice is heard.
        </div>
      HTML
      starter_code: nil
    },
    10 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mgmt">Management</div>
          <h1 class="lc-title">Difficult Conversations</h1>
        </div>
        <p class="lc-lead">Every manager has to have conversations they would rather avoid. Examples are talking about behaviour, a missed standard or bad news. Waiting usually makes these problems bigger. In this lesson you will learn to prepare a difficult conversation on one page. You will practise it with AI role-play, using roles instead of names. You will also learn how to stay fair and when to involve HR.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 280" role="img" aria-label="A timeline. Thursday 17 September: a Slack post in a channel the client can see. A preparation box above says: prepare facts, purpose, their view and an opening line, then practise with AI role-play using roles, not names. Monday 5 October: a short written note to Marcus. Tuesday 6 October at 10:00: the conversation in his 1:1. Tuesday 6 October afternoon: a written summary of what was agreed. Tuesday 20 October: a check-in to see if it is working. A note says: raise issues within days, not weeks; stay on facts, listen and agree next steps.">
            <defs><marker id="pmg10a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <text x="380" y="22" font-weight="700" fill="#c4b5fd" text-anchor="middle">Hannah's plan for a difficult conversation (made up)</text>
              <rect x="135" y="36" width="340" height="56" rx="8" fill="#27274e" stroke="#8b5cf6"/>
              <g font-size="11" text-anchor="middle">
                <text x="305" y="58">Prepare: facts, purpose, their view, opening line</text>
                <text x="305" y="78" fill="#9b99b8">Practise with AI role-play (roles, not names)</text>
              </g>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#pmg10a)">
                <line x1="300" y1="93" x2="300" y2="138"/>
                <line x1="40" y1="150" x2="735" y2="150"/>
              </g>
              <g text-anchor="middle">
                <g font-weight="700" font-size="12">
                  <text x="70" y="127" fill="#f9a8d4">Thu 17 Sep</text>
                  <text x="230" y="127">Mon 5 Oct</text>
                  <text x="380" y="127">Tue 6 Oct, 10:00</text>
                  <text x="530" y="127">Tue 6 Oct, pm</text>
                  <text x="690" y="127" fill="#6ee7b7">Tue 20 Oct</text>
                </g>
                <circle cx="70" cy="150" r="7" fill="#ec4899"/>
                <circle cx="230" cy="150" r="7" fill="#3b82f6"/>
                <circle cx="380" cy="150" r="7" fill="#f59e0b"/>
                <circle cx="530" cy="150" r="7" fill="#22d3ee"/>
                <circle cx="690" cy="150" r="7" fill="#10b981"/>
                <g font-size="11" fill="#9b99b8">
                  <text x="70" y="180">Slack post in a</text>
                  <text x="70" y="196">client channel</text>
                  <text x="230" y="180">Short written note</text>
                  <text x="230" y="196">to Marcus</text>
                  <text x="380" y="180">The conversation</text>
                  <text x="380" y="196">in his 1:1</text>
                  <text x="530" y="180">Written summary</text>
                  <text x="530" y="196">of what you agreed</text>
                  <text x="690" y="180">Check-in:</text>
                  <text x="690" y="196">is it working?</text>
                </g>
              </g>
              <rect x="15" y="220" width="730" height="44" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="380" y="247" text-anchor="middle" font-size="12">19 days is too long. Raise issues within days. Stay on facts, listen and agree next steps.</text>
            </g>
          </svg>
          <figcaption>A difficult conversation has a before, a during and an after. Most of the work happens before you speak.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Why difficult conversations matter</h3>
          <p>A <strong>difficult conversation</strong> is any talk where the topic is sensitive, emotions may run high or the person may disagree. Many managers delay them. But the problem usually grows, and the team notices that nothing happens.</p>
          <p>Here is Hannah's example. It is made up. On Thu 17 Sep, Marcus posted "Again?? Third change this month." in the Thames Valley project channel. The client's project manager is in that channel. Hannah did not raise it on the day, because she was not sure what to say. Now she must.</p>
          <p>The conversation is about one behaviour: a frustrated public post that the client could read. It is not about who is right in the design argument. Marcus has a fair point: designs do change without warning. Hannah will fix that process separately, with the team.</p>
          <p>Acas (the Advisory, Conciliation and Arbitration Service, a UK public body) publishes free guidance on challenging conversations for managers. It advises a calm, private talk that focuses on the issue, not the person. Acas also encourages employers to try to resolve problems early and informally. Formal steps, such as a disciplinary process, follow your company's policy and Acas's Code of Practice. In the US, follow your company's policy and HR. This is general education, not legal advice. Talk to HR before any formal step.</p>
        </div>
        <div class="lc-card">
          <h3>Prepare on one page</h3>
          <p>Good preparation keeps you calm and fair. Hannah fills in a one-page plan. She uses an approved AI tool to help her think, with roles instead of names.</p>
          <table class="lc-table">
            <thead><tr><th>Part of the plan</th><th>Hannah's notes (made up)</th></tr></thead>
            <tbody>
              <tr><td>Purpose</td><td>Agree how concerns about design changes are raised, so clients do not see team frustration.</td></tr>
              <tr><td>Facts (SBI)</td><td>Thu 17 Sep, Thames Valley Slack channel, with the client's project manager in it. He posted "Again?? Third change this month." The client could see team conflict.</td></tr>
              <tr><td>His likely view</td><td>Designs change without warning, and developers lose days of work. This is partly true.</td></tr>
              <tr><td>My part</td><td>I did not raise it sooner. There is still no clear sign-off step.</td></tr>
              <tr><td>Opening line</td><td>"I want to talk about the Slack post on 17 September, and about the design changes behind it. I want to hear your side first."</td></tr>
              <tr><td>Outcome I hope for</td><td>Concerns go to the team channel or to me, not client channels. He helps shape the new sign-off step.</td></tr>
              <tr><td>If emotions run high</td><td>Pause. Name it calmly. Offer a short break or another time.</td></tr>
              <tr><td>Follow-up</td><td>Written summary the same day. Check-in at his 1:1 on Tue 20 Oct.</td></tr>
            </tbody>
          </table>
          <p>Marcus likes feedback in writing first. So on Mon 5 Oct, Hannah sends him a short note with the topic. They talk in his 1:1 on Tue 6 Oct at 10:00. No surprises.</p>
        </div>
        <div class="lc-card">
          <h3>Practise with AI role-play, then stay fair</h3>
          <p>In a <strong>role-play</strong>, the AI plays the other person, and you practise what you will say. It helps you find calm words and prepare for different reactions. It cannot predict the real person.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Marcus Bell was rude on Slack. Tell me how to tell him off.</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Role-play a conversation with me. You are a senior developer with
        6 years at the company. About three weeks ago you posted a frustrated
        comment about late design changes in a Slack channel the client
        can read. You feel the design process is unfair to developers.
        I am your team lead. Start a little defensive. Reply in 2 to 3
        sentences, then wait for me. React realistically to what I say.
        When I type STOP, give me feedback: where I was clear and fair,
        where I blamed or used labels, and one better sentence.</code></pre>
          <p>Practise three versions: the person is calm, defensive, or very quiet. Then check yourself for fairness:</p>
          <ul class="lc-list">
            <li><strong>Same standard:</strong> would you raise this with anyone on the team who did the same thing?</li>
            <li><strong>Facts, not labels:</strong> say "you posted this", not "you were unprofessional".</li>
            <li><strong>Listen first:</strong> ask for their side and say what is fair in it.</li>
            <li><strong>Own your part:</strong> Hannah admits she should have raised it sooner.</li>
            <li><strong>Write it down:</strong> send a short summary of what you both agreed.</li>
          </ul>
          <p>Do not paste the person's name, HR records or private messages into AI. If the problem repeats, or it is about health, discrimination or a formal complaint, stop and talk to HR.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: Hannah practises with AI</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Set-up">In Bluefern's approved tool, Hannah asks the AI to play a senior developer who posted a frustrated comment that a client could see. She uses no names.</li>
              <li data-kind="user" data-label="First try">She opens: "Your post was really unprofessional and embarrassed us in front of the client."</li>
              <li data-kind="answer" data-label="AI as developer">"So I'm the problem? The designs changed three times this month. Nobody else seems to care."</li>
              <li data-kind="warn" data-label="What went wrong">"Unprofessional" is a label. It made the person defend himself, so the real issue got lost.</li>
              <li data-kind="user" data-label="Second try">"I want to talk about the post on 17 September. The client's project manager could read it. Before I say more, I want to hear your side."</li>
              <li data-kind="answer" data-label="AI as developer">"OK. I was angry. We lost two days on that page. But I get that the client saw it."</li>
              <li data-kind="check" data-label="Hannah checks">She types STOP. The AI's feedback says her second opening was factual and invited his view. She adds this line to her plan.</li>
              <li data-kind="thought" data-label="Reality check">She reminds herself: the real Marcus may react differently. She will listen, not follow a script.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Use AI to prepare and practise a difficult conversation of your own. Describe the situation with roles, not names.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a coach who helps managers prepare difficult conversations. Use simple English.

        The situation (roles only, no names): [A senior developer posted a frustrated comment about late design changes in a Slack channel the client can read. It happened almost three weeks ago and I have not raised it yet. He prefers feedback in writing first.]
        What I want: [concerns raised privately or in the team channel, not where clients can see]

        Please:
        1. Write a one-page plan with these parts: Purpose, Facts (Situation, Behaviour, Impact), Their likely view, My part, Opening line, Outcome I hope for, If emotions run high, Follow-up.
        2. Write a short, neutral note (under 60 words) to send before the meeting.
        3. Give 3 likely reactions (calm, defensive, quiet) and a fair reply to each.
        4. Start a role-play: you play the other person, starting a little defensive. Write only their first reply, then wait for me.
        5. When I type STOP, give me feedback on my words.

        Do not use labels like "rude" or "unprofessional". Remind me that this is not legal advice and that I should talk to HR before any formal step.</pre>
            <ul class="ai-try-checks">
              <li>The facts use SBI and contain no labels or guesses.</li>
              <li>The plan includes the other person's fair point and your own part.</li>
              <li>The replies invite the person to talk instead of blaming them.</li>
              <li>It reminds you to involve HR for formal steps.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Raise problems early, in private, with facts. Prepare on one page and practise with AI, then listen to the real person. AI helps you find calm words. You stay fair, and you own the outcome.
        </div>
      HTML
      starter_code: nil
    },
    11 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mgmt">Management</div>
          <h1 class="lc-title">Supporting Wellbeing and Preventing Burnout</h1>
        </div>
        <p class="lc-lead">Good people can burn out when the work is too much for too long. A manager often sees the early signals first. In this lesson you will learn to spot workload signals, start a kind conversation, change the work and get the right help. You will see Hannah support Aisha, who has covered two people's work since August. You will also see where your role stops. You are a manager, not a doctor or a counsellor. This lesson is general education, not medical or legal advice.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 320" role="img" aria-label="A bar chart of average logged hours a week for Hannah's 8 team members over 4 weeks. Marcus 38, Sofia 39, Aisha 46, Ben 37.5, Grace 22.5 (part-time), Oliver 37.5, Nadia 36.5, Kwame 38. A dashed line marks the team's 40-hour limit. Only Aisha's bar goes above it. A panel on the right lists Aisha's signals: 46 hours a week against a contract of 37.5, late Slack messages on 9 of 20 days, 2 cancelled 1:1s, 19 leave days left, quieter in stand-up, covering two back ends. A note says these are signals, not a diagnosis.">
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <text x="380" y="24" font-weight="700" fill="#c4b5fd" text-anchor="middle">Average logged hours a week, last 4 weeks (made-up data)</text>
              <line x1="60" y1="260" x2="480" y2="260" stroke="#4b4a78"/>
              <line x1="60" y1="100" x2="480" y2="100" stroke="#f59e0b" stroke-dasharray="6 4"/>
              <text x="230" y="92" font-size="11" fill="#fcd34d">40-hour team limit</text>
              <g fill="#3b82f6">
                <rect x="70" y="108" width="32" height="152" rx="3"/>
                <rect x="122" y="104" width="32" height="156" rx="3"/>
                <rect x="174" y="76" width="32" height="184" rx="3" fill="#ec4899"/>
                <rect x="226" y="110" width="32" height="150" rx="3"/>
                <rect x="278" y="170" width="32" height="90" rx="3" fill="#22d3ee"/>
                <rect x="330" y="110" width="32" height="150" rx="3"/>
                <rect x="382" y="114" width="32" height="146" rx="3"/>
                <rect x="434" y="108" width="32" height="152" rx="3"/>
              </g>
              <g font-size="11" text-anchor="middle">
                <text x="86" y="278">Marcus</text>
                <text x="138" y="278">Sofia</text>
                <text x="190" y="278" fill="#f9a8d4" font-weight="700">Aisha</text>
                <text x="242" y="278">Ben</text>
                <text x="294" y="278">Grace</text>
                <text x="346" y="278">Oliver</text>
                <text x="398" y="278">Nadia</text>
                <text x="450" y="278">Kwame</text>
                <text x="190" y="70" fill="#f9a8d4" font-weight="700">46</text>
                <text x="294" y="164" fill="#9b99b8">22.5</text>
                <text x="294" y="294" fill="#9b99b8">part-time</text>
              </g>
              <rect x="500" y="44" width="245" height="230" rx="8" fill="#1f1f44" stroke="#ec4899"/>
              <text x="622" y="68" font-weight="700" fill="#f9a8d4" text-anchor="middle">Aisha: signals to notice</text>
              <g font-size="12">
                <text x="516" y="98">• 46 h a week (contract 37.5)</text>
                <text x="516" y="126">• late Slack on 9 of 20 days</text>
                <text x="516" y="154">• 2 cancelled 1:1s</text>
                <text x="516" y="182">• 19 leave days left</text>
                <text x="516" y="210">• quieter in stand-up</text>
                <text x="516" y="238">• covering two back ends</text>
              </g>
              <text x="622" y="300" font-size="12" fill="#9b99b8" text-anchor="middle">Signals, not a diagnosis.</text>
            </g>
          </svg>
          <figcaption>The numbers tell Hannah where to look. They do not tell her how Aisha feels. Only a conversation can do that.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>What a manager can and cannot do</h3>
          <p><strong>Burnout</strong> means deep tiredness and stress that build up when work pressure stays too high for too long. The World Health Organization describes it as a work problem, not as a medical condition. It usually comes from the work itself: too much, too fast, with too little control or support.</p>
          <p>Your job is to notice, ask, change the work and point people to help. It is not your job to diagnose, treat or ask for medical details.</p>
          <table class="lc-table">
            <thead><tr><th>Your job as a manager</th><th>Not your job</th></tr></thead>
            <tbody>
              <tr><td>Notice changes in hours, mood or habits</td><td>Guess an illness or a mental health condition</td></tr>
              <tr><td>Ask kindly, in private, and listen</td><td>Push someone to share health details</td></tr>
              <tr><td>Change workload, deadlines and priorities</td><td>Tell someone to "just rest more"</td></tr>
              <tr><td>Point to HR, an employee assistance programme or a GP</td><td>Act as their counsellor or doctor</td></tr>
              <tr><td>Keep what they tell you private</td><td>Discuss their wellbeing with the team</td></tr>
            </tbody>
          </table>
          <p>In the UK, the HSE (Health and Safety Executive) says employers have a legal duty to assess the risk of work-related stress and act on it. Its Management Standards cover six areas: demands, control, support, relationships, role and change. In the US, rules differ by state, and laws such as the ADA (Americans with Disabilities Act) may apply. This is general education, not legal or medical advice. Follow your HR policy and get HR or legal advice.</p>
        </div>
        <div class="lc-card">
          <h3>Spot the workload signals</h3>
          <p>Hannah's Q4 goal says nobody should average more than 40 logged hours a week over any 4-week period. She keeps a simple sheet in Excel. Column B is contracted hours and column C is the 4-week average.</p>
          <table class="lc-table">
            <thead><tr><th>A: Name</th><th>B: Contracted</th><th>C: Avg logged</th><th>D: Difference</th><th>E: Over contract</th><th>F: Flag</th></tr></thead>
            <tbody>
              <tr><td>Sofia</td><td>37.5</td><td>39.0</td><td>1.5</td><td>4.0%</td><td>OK</td></tr>
              <tr><td>Aisha</td><td>37.5</td><td>46.0</td><td>8.5</td><td>22.7%</td><td>Talk this week</td></tr>
              <tr><td>Grace</td><td>22.5</td><td>22.5</td><td>0.0</td><td>0.0%</td><td>OK</td></tr>
            </tbody>
          </table>
          <pre><code>D2:  =C2-B2
        E2:  =D2/B2              (format as a percentage)
        F2:  =IF(C2&gt;40,"Talk this week","OK")</code></pre>
          <p>For Aisha, 46.0 minus 37.5 is 8.5 extra hours a week. Over 4 weeks that is 34 extra hours. Other signals matter too: she sent Slack messages after 22:00 on 9 of the last 20 working days, and she cancelled her last two 1:1s.</p>
          <p><strong>Weak prompt (never do this):</strong></p>
          <pre><code>Here are Aisha's Slack messages from last month. Is she burnt out
        or depressed?</code></pre>
          <p>This asks AI to guess a health condition from private messages. It is unfair, often wrong, and against Bluefern's AI policy.</p>
          <p><strong>Better prompt (roles and work facts only):</strong></p>
          <pre><code>A developer on my team has covered a colleague's work for 2 months.
        They log about 8.5 hours a week over their contract, often message
        late at night and cancelled two 1:1s. A new hire starts in 6 weeks.
        Help me plan a kind, private 30-minute check-in. Give me opening
        words, 5 open questions about workload (not health), and 6 ways a
        manager can reduce workload. Do not guess any health condition.</code></pre>
        </div>
        <div class="lc-card">
          <h3>Talk, change the work, get help</h3>
          <p>Aisha cancelled two 1:1s, so Hannah does not insist on the usual Teams slot. She asks if a different time or format would help. Aisha picks a coffee in the office on Thursday 8 October. Hannah opens gently: "I have noticed you are carrying a lot since Liam left. I want to help. How is the workload feeling?" Then she listens.</p>
          <p>Together they list where Aisha's 46 hours go, and what can change before the new back-end developer starts on Monday 16 November.</p>
          <table class="lc-table">
            <thead><tr><th>Work</th><th>Hours a week now</th><th>Change agreed</th><th>Hours after</th></tr></thead>
            <tbody>
              <tr><td>Thames Valley Housing back end</td><td>18</td><td>Keep. Launch is Thu 26 Nov.</td><td>18</td></tr>
              <tr><td>Greenleaf Grocers back end</td><td>16</td><td>Move "saved shopping lists" to v2.1 in January</td><td>13</td></tr>
              <tr><td>Urgent fixes for both clients</td><td>5</td><td>Keep. After 18:30, urgent issues go to Hannah first.</td><td>5</td></tr>
              <tr><td>Internal database upgrade</td><td>4</td><td>Pause until January</td><td>0</td></tr>
              <tr><td>Helping others and code reviews</td><td>3</td><td>Keep</td><td>3</td></tr>
              <tr><td><strong>Total</strong></td><td><strong>46</strong></td><td></td><td><strong>39</strong></td></tr>
            </tbody>
          </table>
          <p>39 hours is still 1.5 over contract, but under the 40-hour limit. Hannah follows her Q4 rule: she never trades the limit for a date. So she asks Rachel to agree the scope change with the Greenleaf client. Aisha also asks to move her cloud exam to February 2027, and Hannah agrees. Aisha has 19 of 25 leave days left. Hannah reminds her that the holiday year ends on 31 December and that leave is there to be used. The dates are Aisha's choice.</p>
          <p><strong>Flexible options and help.</strong> In the UK, employees can ask for flexible working from their first day in a job. They can make 2 requests in any 12 months, and the employer must decide within 2 months, unless both agree longer. In the US, there is no general federal right to request; company policy usually decides. If someone shares a health issue, do not record details in AI tools. Talk to HR (at Bluefern, Laura Mitchell). Point them to the company's employee assistance programme, a free and confidential support service, or to their GP or doctor. Not legal or medical advice: check with HR.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: whose job is it?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each thing Hannah could do about Aisha's workload.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="do" data-label="Manager can do this"></div>
              <div data-sorter-target="bucket" data-bucket="help" data-label="Get HR or expert help"></div>
              <div data-sorter-target="bucket" data-bucket="never" data-label="Never do this"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="do" data-why="Changing the time or format of a cancelled 1:1 is kind and practical.">Offer a coffee in the office instead of the usual Teams 1:1.</li>
              <li data-bucket="do" data-why="Moving scope is a workload change the manager can lead, with her own manager and the client.">Ask Rachel to move one Greenleaf feature to v2.1 in January.</li>
              <li data-bucket="never" data-why="AI must not guess health conditions, and private messages should not be pasted.">Paste Aisha's late-night Slack messages into AI and ask if she is depressed.</li>
              <li data-bucket="help" data-why="Health details need HR and professional support. The manager does not handle them alone.">Aisha says she has been seeing her GP about sleep problems.</li>
              <li data-bucket="never" data-why="Wellbeing details are private. Sharing them breaks trust.">Tell the team in stand-up that Aisha is struggling.</li>
              <li data-bucket="do" data-why="Reminding someone about unused leave is fair. The choice of dates stays with them.">Remind Aisha she has 19 leave days left before 31 December.</li>
              <li data-bucket="help" data-why="A formal flexible working request has a legal process. Follow HR policy.">Aisha asks to make a formal request to work 4 days a week.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to prepare a wellbeing check-in and a workload plan for someone on your team. Use roles and work facts only.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an experienced people manager and a careful HR adviser. Use simple English. Do not give medical advice and do not guess any health condition.

        Situation (made up, roles only): [A back-end developer has covered a colleague's work for 2 months. They log about 46 hours a week on a 37.5-hour contract. They message late at night and cancelled their last two 1:1s. A new developer starts in 6 weeks.]
        Their current work: [client project A 18 h, client project B 16 h, urgent fixes 5 h, internal upgrade 4 h, helping others 3 h].

        Please give me:
        1. Opening words for a private check-in that sound kind, not like a warning.
        2. Six open questions about workload, support and priorities. No health questions.
        3. A table of the work with columns: Work, Hours now, Option (keep, move, pause, share), Hours after, Who must agree. Bring the total to 40 hours or less.
        4. Three things I should not do or say.
        5. Where to get help if they share a health issue, in general words for the UK and the US.

        Add a note that this is not legal or medical advice and I should follow my HR policy.</pre>
            <ul class="ai-try-checks">
              <li>No question asks about health, diagnosis or private life.</li>
              <li>The hours in the table add up correctly and the total is 40 or less.</li>
              <li>Each change says who must agree, such as the client or your own manager.</li>
              <li>It points to HR and professional help instead of giving medical advice.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Burnout usually comes from the work, so the fix usually starts with the work. Notice the signals, ask kindly, change the workload, and point people to real help. Never let AI guess someone's health.
        </div>
      HTML
      starter_code: nil
    },
    12 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mgmt">Management</div>
          <h1 class="lc-title">Handling Conflict in the Team</h1>
        </div>
        <p class="lc-lead">Disagreements happen in every good team. The problem starts when the same argument keeps coming back, or when it turns personal. In this lesson you will learn a simple way to handle team conflict. Listen to each person, collect the facts, meet together and write down an agreement. You will follow Hannah as she helps Marcus and Sofia stop arguing about late design changes. You will also see how AI can help you prepare without taking sides.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 320" role="img" aria-label="Top: five steps with arrows. Listen 1:1, on Tue 6 and Wed 7 Oct. Collect facts: in Q3, 6 of 15 features had late changes. Meet together on Tue 13 Oct. Write the agreement: 5 working rules. Review on Tue 10 Nov. Bottom: positions and interests. Marcus, developer, says stop late changes, and needs no lost build days. Sofia, designer, says developers start too early, and needs time to get the design right. Both arrows point to a shared need in the middle: one clear sign-off step, and changes with their impact shown.">
            <defs><marker id="pmg12a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <text x="380" y="24" font-weight="700" fill="#c4b5fd" text-anchor="middle">From a recurring argument to a shared agreement</text>
              <g text-anchor="middle">
                <rect x="15" y="44" width="130" height="66" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
                <text x="80" y="70" font-weight="700">Listen 1:1</text>
                <text x="80" y="92" font-size="11" fill="#9b99b8">Tue 6, Wed 7 Oct</text>
                <rect x="165" y="44" width="130" height="66" rx="8" fill="#1f1f44" stroke="#22d3ee"/>
                <text x="230" y="70" font-weight="700">Collect facts</text>
                <text x="230" y="92" font-size="11" fill="#9b99b8">Q3: 6 of 15 late</text>
                <rect x="315" y="44" width="130" height="66" rx="8" fill="#1f1f44" stroke="#8b5cf6"/>
                <text x="380" y="70" font-weight="700">Meet together</text>
                <text x="380" y="92" font-size="11" fill="#9b99b8">Tue 13 Oct</text>
                <rect x="465" y="44" width="130" height="66" rx="8" fill="#1f1f44" stroke="#10b981"/>
                <text x="530" y="70" font-weight="700">Write it down</text>
                <text x="530" y="92" font-size="11" fill="#9b99b8">5 working rules</text>
                <rect x="615" y="44" width="130" height="66" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
                <text x="680" y="70" font-weight="700">Review</text>
                <text x="680" y="92" font-size="11" fill="#9b99b8">Tue 10 Nov</text>
              </g>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#pmg12a)">
                <line x1="146" y1="77" x2="161" y2="77"/>
                <line x1="296" y1="77" x2="311" y2="77"/>
                <line x1="446" y1="77" x2="461" y2="77"/>
                <line x1="596" y1="77" x2="611" y2="77"/>
                <line x1="246" y1="205" x2="261" y2="205"/>
                <line x1="514" y1="205" x2="499" y2="205"/>
              </g>
              <text x="380" y="138" font-size="12" fill="#9b99b8" text-anchor="middle">Positions (what people say) and interests (what people need)</text>
              <rect x="15" y="150" width="230" height="110" rx="8" fill="#27274e" stroke="#3b82f6"/>
              <text x="130" y="176" font-weight="700" text-anchor="middle">Marcus, developer</text>
              <text x="30" y="204" font-size="12">Says: stop late changes</text>
              <text x="30" y="230" font-size="12">Needs: no lost build days</text>
              <rect x="265" y="150" width="230" height="110" rx="8" fill="#27274e" stroke="#10b981" stroke-width="2"/>
              <text x="380" y="176" font-weight="700" text-anchor="middle" fill="#6ee7b7">Shared need</text>
              <text x="380" y="204" font-size="12" text-anchor="middle">one clear sign-off step</text>
              <text x="380" y="230" font-size="12" text-anchor="middle">changes with impact shown</text>
              <rect x="515" y="150" width="230" height="110" rx="8" fill="#27274e" stroke="#ec4899"/>
              <text x="630" y="176" font-weight="700" text-anchor="middle">Sofia, designer</text>
              <text x="530" y="204" font-size="12">Says: devs start too early</text>
              <text x="530" y="230" font-size="12">Needs: time to get it right</text>
              <text x="380" y="294" font-size="12" fill="#9b99b8" text-anchor="middle">Fix the process together. Do not decide who is the better person.</text>
            </g>
          </svg>
          <figcaption>People argue about positions. You solve the conflict by finding what each person needs, then agreeing a process that gives both of them that.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Know what kind of conflict it is</h3>
          <p>Most team conflict is about the work: priorities, quality, deadlines or process. This is called <strong>task conflict</strong>. It can be healthy, because it brings problems into the open. <strong>Relationship conflict</strong> is when the argument becomes personal. Task conflict that is ignored often turns into relationship conflict.</p>
          <p>Marcus and Sofia's conflict started as task conflict. In Q3, 6 of 15 features had design changes after development started. On Thursday 17 September, Marcus posted "Again?? Third change this month." in a Slack channel the client could see. Hannah has already spoken to Marcus privately about that post. Now she needs to fix the shared problem underneath it.</p>
          <table class="lc-table">
            <thead><tr><th>Situation</th><th>What to do</th></tr></thead>
            <tbody>
              <tr><td>A disagreement about work or process</td><td>Handle it yourself: listen, collect facts, agree a way forward.</td></tr>
              <tr><td>It keeps coming back after an agreement</td><td>Ask HR about mediation. A mediator is a neutral person who helps both sides agree. Acas, the UK's workplace advice service, publishes guidance on mediation.</td></tr>
              <tr><td>Bullying, harassment or discrimination is mentioned</td><td>Stop and talk to HR the same day. Follow your policy. Do not investigate alone.</td></tr>
              <tr><td>Someone raises a formal grievance (a formal complaint)</td><td>Follow your HR process. In the UK, the Acas Code of Practice on disciplinary and grievance procedures sets out a fair process.</td></tr>
            </tbody>
          </table>
          <p>Watch your own bias too. Sofia also applied for Hannah's job. Hannah must not go softer or harder on her because of that. She uses the same standard for both people. This is general education, not legal advice. Follow your HR policy and get HR or legal advice.</p>
        </div>
        <div class="lc-card">
          <h3>Listen first, then collect the facts</h3>
          <p>Talk to each person alone first. Marcus gave his view in his 1:1 on Tuesday 6 October. Sofia gives hers in her 1:1 on Wednesday 7 October. Hannah asks both the same three questions. "What happened, from your side?" "What do you need to do your best work?" "What would a good outcome look like?"</p>
          <p>Then she checks the facts in Jira, not in people's memories. She lists the 15 Q3 features in Excel, with "Yes" in column C if the design changed after development started.</p>
          <pre><code>C17:  =COUNTIF(C2:C16,"Yes")            result: 6
        C18:  =C17/COUNTA(A2:A16)               result: 40%
        C19:  =COUNTIFS(C2:C16,"Yes",D2:D16,"Before sign-off")</code></pre>
          <p>Column D records whether development started before or after the designer said the design was final ("Before sign-off" or "After sign-off"). That third formula shows whether the problem is late design changes, early building, or both. The facts usually show that both people have a point.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Marcus and Sofia keep fighting. Here are their Slack messages.
        Who is right?</code></pre>
          <p><strong>Better prompt (Hannah's own notes, roles only):</strong></p>
          <pre><code>Two senior team members disagree about design changes after
        development starts. Here are my own short notes from a private
        talk with each of them. [notes, no names]
        1. Summarise each view in neutral words, as fairly as possible.
        2. Separate facts from opinions and feelings.
        3. For each person, suggest what they might need (their interests).
        4. Suggest 4 process options that could meet both sets of needs.
        Do not judge who is right. I will check everything with them.</code></pre>
        </div>
        <div class="lc-card">
          <h3>Meet together and write the agreement</h3>
          <p>Hannah meets both of them on Tuesday 13 October at 11:00, in a meeting room. Both are in the office on Tuesdays. She starts with the purpose. "We are here to fix a process, not to decide who is to blame." Each person speaks for 5 minutes without interruption. Then they look at the facts and options together.</p>
          <p>Hannah writes down what they agree, using the roles from her draft sign-off plan. The designer of a feature is responsible for sign-off. Hannah is accountable. Marcus, Oliver and the client's project manager are consulted.</p>
          <pre><code>Design hand-off agreement: Marcus, Sofia, Hannah (Tue 13 Oct 2026)
        1. A design is "Ready for build" only when its designer marks it
           signed off in Jira, at least 5 working days before building starts.
        2. A developer (Marcus or someone he names) joins the Tuesday 14:00
           design review for features starting in the next 2 weeks.
        3. Developers do not start a feature before it is "Ready for build".
        4. A change after sign-off needs a change request ticket, with the
           reason and the days of rework. Hannah decides within 1 working day.
        5. We raise concerns directly or in the team channel, never in a
           client channel.
        Review: Tue 10 Nov 2026. Measure: no more than 2 of about 14
        features with late design changes this quarter.</code></pre>
          <p>Both people read it and agree before Hannah shares it. AI can help tidy the wording. It must not add rules that nobody agreed.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: Hannah runs the joint meeting</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="tool" data-label="Prepare">In Bluefern's approved AI tool, Hannah pastes her own notes, with roles instead of names. She asks for a neutral agenda for a 45-minute meeting.</li>
              <li data-kind="answer" data-label="AI draft">The AI suggests: purpose, ground rules, 5 minutes each to speak, the facts, options, agreement and a review date.</li>
              <li data-kind="warn" data-label="A trap">The AI's summary calls the developer "unprofessional". That is a judgement, not a fact. Hannah replaces it with what happened: a frustrated post in a client channel.</li>
              <li data-kind="thought" data-label="Listen">In the meeting, Hannah repeats each person's need in her own words: "So you need to know a design will not change after you start."</li>
              <li data-kind="result" data-label="Options">Together they list options: a Jira sign-off status, a developer at design reviews, and a change request step.</li>
              <li data-kind="check" data-label="Agree">Marcus and Sofia read the five rules and both say yes. Hannah sends them in writing the same afternoon and books the review for Tue 10 Nov.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to help you prepare for a conflict between two people on your team. Use roles, not names, and your own notes.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a fair, experienced team manager who is trained in workplace mediation. Use simple English.

        The conflict (made up, roles only): [A senior developer and a senior designer keep arguing about design changes after development has started. Last quarter, 6 of 15 features changed late. The developer posted a frustrated comment in a channel the client could see. The designer says developers start building before designs are signed off.]

        Please help me prepare:
        1. Three questions to ask each person in a private 1:1 first.
        2. A neutral summary of each side, with facts and opinions in separate lists.
        3. What each person probably needs (their interests), marked as "to check with them".
        4. A 45-minute agenda for a joint meeting, with ground rules.
        5. A draft agreement of 4 to 5 rules, with a review date and one measure.
        6. Signs that I should stop and involve HR instead.

        Do not decide who is right. Add a note that this is not legal advice and I should follow my HR policy.</pre>
            <ul class="ai-try-checks">
              <li>Both sides are described in neutral words, with no labels like "difficult" or "unprofessional".</li>
              <li>Facts and opinions are clearly separate.</li>
              <li>The draft rules fix the process, and each rule is clear enough to check.</li>
              <li>It says when to involve HR, such as bullying, harassment or a formal complaint.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Recurring conflict is often a missing process, not a bad person. Listen to each side alone, check the facts, then agree simple rules together and review them. AI can help you prepare a neutral view, but you must stay fair.
        </div>
      HTML
      starter_code: nil
    },
    13 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mgmt">Management</div>
          <h1 class="lc-title">Coaching and Career Growth</h1>
        </div>
        <p class="lc-lead">People stay and do their best work when they can grow. As a manager, you help them grow in two ways: you coach, and you help them make a development plan. In this lesson you will learn the GROW coaching model and good coaching questions. You will build a one-page development plan with a team member. Hannah will coach Marcus towards his tech lead goal. She also needs a written plan for all 8 people by Friday 30 October.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 310" role="img" aria-label="The GROW coaching model as four boxes with arrows. G, Goal: what do you want to reach by the end of 2027? R, Reality: where are you now, and what have you tried? O, Options: what could you do, and what else? W, Will: what will you do, and by when? Below, a strip shows the five parts of a one-page development plan: goal, actions, support, evidence and review date. A note says: you ask, they think and choose, you support.">
            <defs><marker id="pmg13a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <text x="380" y="24" font-weight="700" fill="#c4b5fd" text-anchor="middle">The GROW coaching model</text>
              <g text-anchor="middle">
                <rect x="15" y="44" width="170" height="120" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
                <text x="100" y="76" font-size="26" font-weight="700" fill="#93c5fd">G</text>
                <text x="100" y="100" font-weight="700">Goal</text>
                <text x="100" y="126" font-size="11" fill="#9b99b8">What do you want</text>
                <text x="100" y="144" font-size="11" fill="#9b99b8">to reach by end of 2027?</text>
                <rect x="201" y="44" width="170" height="120" rx="8" fill="#1f1f44" stroke="#22d3ee"/>
                <text x="286" y="76" font-size="26" font-weight="700" fill="#67e8f9">R</text>
                <text x="286" y="100" font-weight="700">Reality</text>
                <text x="286" y="126" font-size="11" fill="#9b99b8">Where are you now?</text>
                <text x="286" y="144" font-size="11" fill="#9b99b8">What have you tried?</text>
                <rect x="387" y="44" width="170" height="120" rx="8" fill="#1f1f44" stroke="#8b5cf6"/>
                <text x="472" y="76" font-size="26" font-weight="700" fill="#c4b5fd">O</text>
                <text x="472" y="100" font-weight="700">Options</text>
                <text x="472" y="126" font-size="11" fill="#9b99b8">What could you do?</text>
                <text x="472" y="144" font-size="11" fill="#9b99b8">What else?</text>
                <rect x="573" y="44" width="170" height="120" rx="8" fill="#1f1f44" stroke="#10b981"/>
                <text x="658" y="76" font-size="26" font-weight="700" fill="#6ee7b7">W</text>
                <text x="658" y="100" font-weight="700">Will</text>
                <text x="658" y="126" font-size="11" fill="#9b99b8">What will you do,</text>
                <text x="658" y="144" font-size="11" fill="#9b99b8">and by when?</text>
              </g>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#pmg13a)">
                <line x1="186" y1="104" x2="197" y2="104"/>
                <line x1="372" y1="104" x2="383" y2="104"/>
                <line x1="558" y1="104" x2="569" y2="104"/>
              </g>
              <rect x="15" y="186" width="730" height="72" rx="8" fill="#27274e" stroke="#f59e0b"/>
              <text x="380" y="206" font-size="12" font-weight="700" fill="#fcd34d" text-anchor="middle">One-page development plan</text>
              <g text-anchor="middle" font-size="12">
                <rect x="30" y="218" width="130" height="30" rx="6" fill="#1f1f44" stroke="#4b4a78"/>
                <text x="95" y="238">Goal</text>
                <rect x="174" y="218" width="130" height="30" rx="6" fill="#1f1f44" stroke="#4b4a78"/>
                <text x="239" y="238">Actions</text>
                <rect x="318" y="218" width="130" height="30" rx="6" fill="#1f1f44" stroke="#4b4a78"/>
                <text x="383" y="238">Support</text>
                <rect x="462" y="218" width="130" height="30" rx="6" fill="#1f1f44" stroke="#4b4a78"/>
                <text x="527" y="238">Evidence</text>
                <rect x="606" y="218" width="130" height="30" rx="6" fill="#1f1f44" stroke="#4b4a78"/>
                <text x="671" y="238">Review date</text>
              </g>
              <text x="380" y="290" font-size="12" fill="#9b99b8" text-anchor="middle">You ask. They think and choose. You support.</text>
            </g>
          </svg>
          <figcaption>GROW gives a coaching talk a simple shape. The development plan turns the talk into actions with dates.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Coaching: ask more, tell less</h3>
          <p><strong>Coaching</strong> means helping a person find their own answers by asking good questions. You still give advice sometimes. Tell when something is urgent, when safety or a client is at risk, or when a person is new and lacks the knowledge. Coach when the person can find a good answer with some help.</p>
          <p><strong>GROW</strong> is a common coaching model, made popular by Sir John Whitmore and colleagues. It has four stages: Goal, Reality, Options and Will (sometimes called "Way forward"). Hannah uses it in Marcus's 1:1 on Tuesday 27 October.</p>
          <table class="lc-table">
            <thead><tr><th>Stage</th><th>Hannah asks</th><th>Marcus says (made up)</th></tr></thead>
            <tbody>
              <tr><td>Goal</td><td>"Where do you want to be by the end of 2027?"</td><td>"Ready to apply for a tech lead role."</td></tr>
              <tr><td>Reality</td><td>"What do you already do that a tech lead does? What is missing?"</td><td>"I lead code reviews and mentor Ben. I have never led technical planning for a whole project, or explained a technical choice to a client."</td></tr>
              <tr><td>Options</td><td>"What could help you close that gap? What else?"</td><td>"Lead planning for Greenleaf v2.1. Present our approach to a client. Run a front-end session for the team. Take an architecture course."</td></tr>
              <tr><td>Will</td><td>"Which two will you do first, and by when?"</td><td>"Lead v2.1 technical planning in January, and present it to the client. Start a monthly front-end session in November."</td></tr>
            </tbody>
          </table>
          <p>Notice what Hannah does not do. She does not choose for him. She does not promise a promotion either, because that decision depends on roles, budget and a fair process. She says honestly: "I cannot promise the role. I can help you build the skills and the evidence."</p>
        </div>
        <div class="lc-card">
          <h3>Write a one-page development plan</h3>
          <p>A <strong>development plan</strong> is a short written plan for a person's growth: a goal, actions, support, evidence and review dates. It belongs to the person, not to the manager. Hannah types up Marcus's plan from his own words, and Marcus edits it.</p>
          <table class="lc-table">
            <thead><tr><th>Part</th><th>Marcus Bell: development plan, Q4 2026 to Q1 2027 (made up)</th></tr></thead>
            <tbody>
              <tr><td>Goal</td><td>Be ready to apply for a tech lead role by the end of 2027.</td></tr>
              <tr><td>Skills to build</td><td>Technical planning for a whole project. Explaining technical choices to clients.</td></tr>
              <tr><td>Actions and dates</td><td>Run the first monthly front-end session by Wed 18 Nov 2026. Lead technical planning for Greenleaf v2.1 in January 2027. Present the v2.1 technical approach at a client meeting by Fri 29 Jan 2027.</td></tr>
              <tr><td>Support from Hannah</td><td>Share her own planning templates. Join his first client presentation. Ask Rachel to let him sit in on one project planning meeting.</td></tr>
              <tr><td>Evidence</td><td>The v2.1 plan and estimates. Client feedback on the presentation. Team feedback on the sessions.</td></tr>
              <tr><td>Review</td><td>A 10-minute check in his 1:1 each month. Full review at the end of January 2027.</td></tr>
            </tbody>
          </table>
          <p>Hannah tracks all 8 plans in a simple Excel sheet. Column C shows the status: "Agreed", "Draft" or "Not started". On Friday 16 October, 3 plans are agreed, 4 are drafts and 1 is not started.</p>
          <pre><code>C11:  =COUNTIF(C2:C9,"Agreed")              result: 3
        C12:  =COUNTIF(C2:C9,"Agreed")/COUNTA(A2:A9)  result: 37.5%
        C13:  =COUNTIF(C2:C9,"Not started")          result: 1</code></pre>
          <p>Every plan is different. Sofia's plan is about leading the agency's design system and what she wants next after the team lead decision. That talk needs extra care. Hannah asks open questions and listens, instead of guessing what Sofia feels.</p>
        </div>
        <div class="lc-card">
          <h3>How AI helps, and what stays with you</h3>
          <p>AI can suggest coaching questions, learning options and a clear plan layout. It cannot know what a person wants. Never ask it to decide someone's potential.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Write a development plan for my developer to become a tech lead.</code></pre>
          <p>The AI will invent a generic goal and generic actions. The person will not feel it is theirs.</p>
          <p><strong>Better prompt:</strong></p>
          <pre><code>I coached a senior front-end developer using GROW. Their own words:
        Goal: ready to apply for a tech lead role by the end of 2027.
        Reality: leads code reviews, mentors a junior; has not led
        technical planning for a project or presented to a client.
        Will: lead planning for a January project; start a monthly
        front-end session in November.
        Turn this into a one-page development plan with: goal, skills,
        actions with dates, support from me, evidence, review dates.
        Keep their words. Mark anything you add as "suggestion".
        Do not promise a promotion.</code></pre>
          <p>Then share the draft with the person and let them change it. Check that every date is realistic, given their workload. Marcus's front-end session must not push his hours over the team's 40-hour limit.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: coaching, telling or leading?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each thing Hannah might say in a coaching talk.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="coach" data-label="Coaching question"></div>
              <div data-sorter-target="bucket" data-bucket="tell" data-label="Telling (advice)"></div>
              <div data-sorter-target="bucket" data-bucket="lead" data-label="Leading question"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="coach" data-why="It is open and helps Marcus think about his own goal.">"What would a tech lead role let you do that you cannot do now?"</li>
              <li data-bucket="tell" data-why="This gives an answer instead of asking. Sometimes that is right, but it is not coaching.">"You should take the architecture course in November."</li>
              <li data-bucket="lead" data-why="It sounds like a question, but it pushes Hannah's answer.">"Don't you think presenting to the client would be good for you?"</li>
              <li data-bucket="coach" data-why="It explores reality and what the person has already tried.">"What have you already tried?"</li>
              <li data-bucket="lead" data-why="The question hides an opinion. An open version is: what should come first?">"Shouldn't you focus on code reviews before anything else?"</li>
              <li data-bucket="tell" data-why="Clear instructions are useful, especially for new people. It is still telling.">"The release checklist is in the shared Excel file. Use that first."</li>
              <li data-bucket="coach" data-why="This is the Will stage: the person chooses the action and the date.">"What will you do first, and by when?"</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to prepare a GROW coaching talk and a development plan template for someone on your team.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an experienced career coach who trains new managers. Use simple English.

        The person (made up, role only): [a senior front-end developer, 6 years in the company, who wants to become a tech lead in the next 1 to 2 years. They already lead code reviews and mentor a junior developer.]
        Time for the talk: [30 minutes, in our weekly 1:1].

        Please:
        1. Write 3 open coaching questions for each GROW stage: Goal, Reality, Options, Will.
        2. List 3 leading questions I should avoid, and an open version of each.
        3. Suggest 5 realistic growth options for this person, mixing learning on the job, learning from others and courses.
        4. Create a one-page development plan template with: goal, skills to build, actions with dates, support from me, evidence, review dates.
        5. Write one honest sentence I can say if they ask whether I can promise a promotion.

        Do not decide the person's goal or potential. Mark the plan as a draft for the person to change.</pre>
            <ul class="ai-try-checks">
              <li>The questions are open, with no hidden advice inside them.</li>
              <li>The growth options are realistic and not only formal courses.</li>
              <li>The plan template has dates and evidence, not just good intentions.</li>
              <li>The promotion sentence is honest and promises nothing you cannot control.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Good coaching helps people find their own answers. Use GROW to shape the talk, write the plan in their words, and be honest about what you can and cannot promise. AI can suggest questions and options, but the person owns the goal.
        </div>
      HTML
      starter_code: nil
    },
    14 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mgmt">Management</div>
          <h1 class="lc-title">Hiring and Onboarding for Your Team</h1>
        </div>
        <p class="lc-lead">Hiring the right person is one of the biggest decisions a manager makes. Helping them settle in well is just as important. In this lesson you will learn to write a role profile, plan fair structured interviews and build a first-week plan. Hannah hired a back-end developer to replace Liam, who left in July. Priya Nair starts on Monday 16 November. You will see how AI can draft documents fast, and why people must make every hiring decision.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="Top row, hiring in August and September: role profile with outcomes not wish lists, fair advert with plain words and must-haves, same questions scored 1 to 4, offer and checks including right to work checks. Bottom row, Priya's first week from Monday 16 to Friday 20 November: Monday welcome and setup, meet buddy Kwame. Tuesday back-end tour with Aisha for 1 hour. Wednesday first small fix with Kwame. Thursday pair on Greenleaf and meet the client team. Friday week review with Hannah. A note says check-ins follow on Friday 18 December, Friday 15 January and Friday 12 February.">
            <defs><marker id="pmg14a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <text x="15" y="30" font-weight="700" fill="#c4b5fd">Hiring (August to September)</text>
              <g text-anchor="middle">
                <rect x="15" y="42" width="160" height="58" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
                <text x="95" y="66" font-weight="700">Role profile</text>
                <text x="95" y="86" font-size="11" fill="#9b99b8">outcomes, not wish lists</text>
                <rect x="205" y="42" width="160" height="58" rx="8" fill="#1f1f44" stroke="#22d3ee"/>
                <text x="285" y="66" font-weight="700">Fair advert</text>
                <text x="285" y="86" font-size="11" fill="#9b99b8">plain words, must-haves</text>
                <rect x="395" y="42" width="160" height="58" rx="8" fill="#1f1f44" stroke="#8b5cf6"/>
                <text x="475" y="66" font-weight="700">Same questions</text>
                <text x="475" y="86" font-size="11" fill="#9b99b8">scored 1 to 4</text>
                <rect x="585" y="42" width="160" height="58" rx="8" fill="#1f1f44" stroke="#10b981"/>
                <text x="665" y="66" font-weight="700">Offer and checks</text>
                <text x="665" y="86" font-size="11" fill="#9b99b8">right to work checks</text>
              </g>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#pmg14a)">
                <line x1="176" y1="71" x2="201" y2="71"/>
                <line x1="366" y1="71" x2="391" y2="71"/>
                <line x1="556" y1="71" x2="581" y2="71"/>
                <path d="M665,101 V120 H83 V150"/>
              </g>
              <text x="100" y="142" font-weight="700" fill="#c4b5fd">Priya's first week</text>
              <g text-anchor="middle">
                <rect x="15" y="156" width="136" height="76" rx="8" fill="#27274e" stroke="#f59e0b"/>
                <text x="83" y="180" font-weight="700">Mon 16 Nov</text>
                <text x="83" y="200" font-size="11" fill="#9b99b8">welcome, setup</text>
                <text x="83" y="218" font-size="11" fill="#9b99b8">meet buddy Kwame</text>
                <rect x="163" y="156" width="136" height="76" rx="8" fill="#27274e" stroke="#f59e0b"/>
                <text x="231" y="180" font-weight="700">Tue 17 Nov</text>
                <text x="231" y="200" font-size="11" fill="#9b99b8">back-end tour</text>
                <text x="231" y="218" font-size="11" fill="#9b99b8">with Aisha, 1 hour</text>
                <rect x="311" y="156" width="136" height="76" rx="8" fill="#27274e" stroke="#f59e0b"/>
                <text x="379" y="180" font-weight="700">Wed 18 Nov</text>
                <text x="379" y="200" font-size="11" fill="#9b99b8">first small fix</text>
                <text x="379" y="218" font-size="11" fill="#9b99b8">with Kwame</text>
                <rect x="459" y="156" width="136" height="76" rx="8" fill="#27274e" stroke="#f59e0b"/>
                <text x="527" y="180" font-weight="700">Thu 19 Nov</text>
                <text x="527" y="200" font-size="11" fill="#9b99b8">pair on Greenleaf</text>
                <text x="527" y="218" font-size="11" fill="#9b99b8">meet the client team</text>
                <rect x="607" y="156" width="136" height="76" rx="8" fill="#27274e" stroke="#f59e0b"/>
                <text x="675" y="180" font-weight="700">Fri 20 Nov</text>
                <text x="675" y="200" font-size="11" fill="#9b99b8">week review</text>
                <text x="675" y="218" font-size="11" fill="#9b99b8">with Hannah</text>
              </g>
              <text x="380" y="266" font-size="12" fill="#9b99b8" text-anchor="middle">Then a 30-60-90 day plan, with check-ins on Fri 18 Dec, Fri 15 Jan and Fri 12 Feb.</text>
            </g>
          </svg>
          <figcaption>Hiring and onboarding are one process. A clear role profile leads to fair interviews, and fair interviews lead to a first week with a clear purpose.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Start with a role profile</h3>
          <p>A <strong>role profile</strong> says why the job exists, what the person will achieve and which skills they really need. It is the base for the advert, the interview questions and the first-week plan. Hannah wrote one in August, after Rachel approved the role.</p>
          <table class="lc-table">
            <thead><tr><th>Part</th><th>Back-end Developer, Bluefern Digital (made up)</th></tr></thead>
            <tbody>
              <tr><td>Purpose</td><td>Build and look after the back end (APIs and databases) for client websites and apps.</td></tr>
              <tr><td>First-year outcomes</td><td>Own the back end of one client project. Share back-end support with a second developer. Cut urgent out-of-hours fixes.</td></tr>
              <tr><td>Must-have skills</td><td>Building and testing APIs. Database design. Explaining technical choices to designers and clients.</td></tr>
              <tr><td>Nice to have</td><td>Cloud hosting. Experience with agency or client work.</td></tr>
              <tr><td>How we work</td><td>Hybrid, office Tuesday to Thursday in Shoreditch, London. Open to flexible working requests.</td></tr>
            </tbody>
          </table>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Write a job advert for a rockstar back-end developer for our young,
        energetic team.</code></pre>
          <p>"Young" and "energetic" can put off older applicants and may suggest age discrimination. "Rockstar" says nothing about the job.</p>
          <p><strong>Better prompt:</strong></p>
          <pre><code>Turn this role profile into a job advert of about 300 words.
        [role profile]
        Use plain, inclusive words. List only the must-have skills as
        requirements. Say that we offer reasonable adjustments in the
        process and are open to flexible working. Then list any words in
        your draft that could put off some groups of applicants.</code></pre>
          <p>Check every claim in the advert. Pay, benefits and working patterns must match what HR has approved.</p>
        </div>
        <div class="lc-card">
          <h3>Plan fair, structured interviews</h3>
          <p>A <strong>structured interview</strong> asks every candidate the same questions, in the same order. Each answer is scored against a guide agreed in advance. This makes interviews fairer and easier to compare. Hannah and Kwame interviewed together. Each scored alone first, from 1 (no evidence) to 4 (strong evidence), and then they discussed.</p>
          <table class="lc-table">
            <thead><tr><th>A: Criterion</th><th>B: Hannah</th><th>C: Kwame</th><th>D: Average</th></tr></thead>
            <tbody>
              <tr><td>Building and testing APIs</td><td>3</td><td>4</td><td>3.5</td></tr>
              <tr><td>Database design</td><td>4</td><td>4</td><td>4.0</td></tr>
              <tr><td>Debugging a live problem</td><td>3</td><td>3</td><td>3.0</td></tr>
              <tr><td>Explaining to non-technical people</td><td>3</td><td>2</td><td>2.5</td></tr>
              <tr><td>Learning and sharing knowledge</td><td>4</td><td>3</td><td>3.5</td></tr>
              <tr><td><strong>Total (out of 20)</strong></td><td></td><td></td><td><strong>16.5</strong></td></tr>
            </tbody>
          </table>
          <pre><code>D2:  =AVERAGE(B2:C2)       (copy down to D6)
        D7:  =SUM(D2:D6)           result: 16.5
        E2:  =IF(ABS(B2-C2)&gt;=2,"Discuss evidence","")</code></pre>
          <p>The score helps the panel talk about evidence. It does not make the decision. People do. AI can draft questions and a scoring guide. Do not use AI to screen CVs or score candidates unless your company has checked the tool carefully. The EU AI Act treats AI used for recruitment as "high-risk", with strict rules. In New York City, Local Law 144 requires a bias audit and notices to candidates before employers use automated hiring tools.</p>
          <p>Some questions are off limits. In the UK, the Equality Act 2010 generally stops employers asking about health or disability before a job offer, with limited exceptions. One exception is asking about adjustments needed for the interview itself. Do not ask about age, marriage, children or religion. UK employers must also check a person's right to work before they start. This is general education, not legal advice. Follow your HR process and get HR or legal advice.</p>
        </div>
        <div class="lc-card">
          <h3>Plan the first week</h3>
          <p><strong>Onboarding</strong> means helping a new person settle in, learn the work and feel part of the team. Hannah plans Priya's first week around the real calendar. The Thames Valley Housing launch is on Thursday 26 November, in Priya's second week. So Priya will watch the launch, but she will not carry launch work.</p>
          <table class="lc-table">
            <thead><tr><th>Day</th><th>Plan</th><th>With</th></tr></thead>
            <tbody>
              <tr><td>Before day one</td><td>Welcome message, laptop, accounts (Microsoft 365, Slack, Jira). HR paperwork and checks are complete.</td><td>Hannah, Laura (HR)</td></tr>
              <tr><td>Mon 16 Nov</td><td>Welcome, team stand-up, setup. Meet her buddy, a friendly colleague for questions.</td><td>Hannah, Kwame</td></tr>
              <tr><td>Tue 17 Nov</td><td>One-hour back-end tour. Kept short, because Aisha's workload is high.</td><td>Aisha</td></tr>
              <tr><td>Wed 18 Nov</td><td>First small fix, from ticket to code review.</td><td>Kwame</td></tr>
              <tr><td>Thu 19 Nov</td><td>Pair on the Greenleaf back end. Meet the client team on a call.</td><td>Kwame, Aisha</td></tr>
              <tr><td>Fri 20 Nov</td><td>Week review: what went well, what is confusing, what next. Kwame is off on Fridays.</td><td>Hannah</td></tr>
            </tbody>
          </table>
          <p>After week one, Hannah and Priya agree simple goals for 30, 60 and 90 days. For example, by day 90 Priya shares back-end support for both clients with Aisha. They check progress on Fridays 18 December, 15 January and 12 February. AI can draft the plan and the welcome message. Hannah checks names, dates, workloads and every promise in it.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: from approved role to first week</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put Hannah's hiring and onboarding steps in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Agree the role and the budget with Rachel.</li>
              <li data-order="2">Write a role profile with outcomes and must-have skills.</li>
              <li data-order="3">Write the advert, the interview questions and a scoring guide.</li>
              <li data-order="4">Interview every candidate with the same questions. Each interviewer scores alone first.</li>
              <li data-order="5">Decide as a panel and make the offer. HR completes the right to work and reference checks.</li>
              <li data-order="6">Send a welcome message and prepare the laptop, accounts and first-week plan.</li>
              <li data-order="7">Run the first week, then agree 30, 60 and 90-day goals.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to draft a hiring and onboarding kit for a role on your team. Then check it with HR before you use it.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an experienced hiring manager and a fair recruitment adviser. Use simple English.

        The role (made up): [Back-end Developer at a 40-person digital agency in London. Builds APIs and databases for client websites and apps. Hybrid, office Tuesday to Thursday.]
        The team: [8 people: developers, designers, a researcher and a QA engineer.]

        Please create:
        1. A one-page role profile: purpose, first-year outcomes, 3 to 4 must-have skills, nice-to-have skills, how we work.
        2. Five structured interview questions, one for each must-have skill plus one on learning. For each, write what a 1, 2, 3 and 4 answer looks like.
        3. A list of 6 questions an interviewer must not ask, with a fair alternative where one exists.
        4. A first-week plan, Monday to Friday, with a buddy, a first small task and an end-of-week review.
        5. Three goals each for 30, 60 and 90 days.

        Use plain, inclusive words. Add a note that this is not legal advice and that HR must check the advert, questions and checks.</pre>
            <ul class="ai-try-checks">
              <li>The must-have skills are few and clearly linked to the real work.</li>
              <li>Each interview question has a clear scoring guide from 1 to 4.</li>
              <li>The "must not ask" list covers health, age, family and religion.</li>
              <li>The first week has a buddy, a small real task and a review, not only reading.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Fair hiring starts with a clear role profile and the same questions for everyone. People make the hiring decision, not AI. A planned first week, built around the real calendar, helps a new person contribute sooner.
        </div>
      HTML
      starter_code: nil
    },
    15 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-mgmt">Management</div>
          <h1 class="lc-title">Capstone: A 90-Day Plan for Hannah's Team at Bluefern Digital</h1>
        </div>
        <p class="lc-lead">In this capstone you bring the whole course together. You will help Hannah build a 90-day plan for her team at Bluefern Digital. It covers Q4 2026. The plan starts on Friday 2 October and ends on Thursday 31 December. The plan has six parts: a team profile, a 1:1 plan, goals, feedback notes, a hard conversation plan and a growth plan. You will see how AI helps her draft and organise it. You will also see where she must check, decide and talk to people. Then you will build a plan for your own team.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 310" role="img" aria-label="A timeline of Hannah's 90-day plan from 2 October to 31 December 2026, in three phases. October: listen and fix. November: deliver and welcome. December: launch and grow. Milestones: 2 October plan starts, 13 October conflict agreement, 30 October all 8 development plans, 9 to 11 November usability tests, 16 November Priya starts, 26 November Thames Valley launch, 10 December Greenleaf v2.0, 31 December Q4 review. Below, four measures are checked every Friday: nobody over 40 hours, a weekly 1:1 for everyone, at most 2 late design changes, and 10 or fewer bugs after release.">
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <text x="380" y="24" font-weight="700" fill="#c4b5fd" text-anchor="middle">Hannah's 90-day plan: Q4 2026</text>
              <g text-anchor="middle" font-size="12" font-weight="700">
                <rect x="40" y="40" width="227" height="34" rx="6" fill="#1f1f44" stroke="#3b82f6"/>
                <text x="153" y="62">October: listen and fix</text>
                <rect x="267" y="40" width="226" height="34" rx="6" fill="#1f1f44" stroke="#8b5cf6"/>
                <text x="380" y="62">November: deliver, welcome</text>
                <rect x="493" y="40" width="227" height="34" rx="6" fill="#1f1f44" stroke="#10b981"/>
                <text x="606" y="62">December: launch and grow</text>
              </g>
              <line x1="40" y1="150" x2="720" y2="150" stroke="#9b99b8" stroke-width="2"/>
              <g fill="#f59e0b">
                <circle cx="40" cy="150" r="5"/>
                <circle cx="123" cy="150" r="5"/>
                <circle cx="252" cy="150" r="5"/>
                <circle cx="327" cy="150" r="5"/>
                <circle cx="380" cy="150" r="5"/>
                <circle cx="456" cy="150" r="5" fill="#ec4899"/>
                <circle cx="561" cy="150" r="5" fill="#ec4899"/>
                <circle cx="720" cy="150" r="5"/>
              </g>
              <g stroke="#4b4a78">
                <line x1="123" y1="132" x2="123" y2="145"/>
                <line x1="327" y1="132" x2="327" y2="145"/>
                <line x1="456" y1="132" x2="456" y2="145"/>
                <line x1="720" y1="132" x2="720" y2="145"/>
                <line x1="40" y1="155" x2="40" y2="166"/>
                <line x1="252" y1="155" x2="252" y2="166"/>
                <line x1="380" y1="155" x2="380" y2="166"/>
                <line x1="561" y1="155" x2="561" y2="166"/>
              </g>
              <g font-size="11" text-anchor="middle">
                <text x="123" y="110" font-weight="700">13 Oct</text>
                <text x="123" y="126" fill="#9b99b8">conflict agreement</text>
                <text x="327" y="110" font-weight="700">9 to 11 Nov</text>
                <text x="327" y="126" fill="#9b99b8">usability tests</text>
                <text x="456" y="110" font-weight="700">26 Nov</text>
                <text x="456" y="126" fill="#9b99b8">Thames Valley launch</text>
                <text x="740" y="110" font-weight="700" text-anchor="end">31 Dec</text>
                <text x="740" y="126" fill="#9b99b8" text-anchor="end">Q4 review</text>
                <text x="30" y="180" font-weight="700" text-anchor="start">2 Oct</text>
                <text x="30" y="196" fill="#9b99b8" text-anchor="start">plan starts</text>
                <text x="252" y="180" font-weight="700">30 Oct</text>
                <text x="252" y="196" fill="#9b99b8">8 development plans</text>
                <text x="380" y="180" font-weight="700">16 Nov</text>
                <text x="380" y="196" fill="#9b99b8">Priya starts</text>
                <text x="561" y="180" font-weight="700">10 Dec</text>
                <text x="561" y="196" fill="#9b99b8">Greenleaf v2.0</text>
              </g>
              <text x="380" y="228" font-size="12" font-weight="700" fill="#fcd34d" text-anchor="middle">Checked every Friday</text>
              <g text-anchor="middle" font-size="12">
                <rect x="15" y="240" width="175" height="40" rx="6" fill="#27274e" stroke="#f59e0b"/>
                <text x="102" y="265">Hours: none over 40</text>
                <rect x="200" y="240" width="175" height="40" rx="6" fill="#27274e" stroke="#f59e0b"/>
                <text x="287" y="265">1:1s: one each weekly</text>
                <rect x="385" y="240" width="175" height="40" rx="6" fill="#27274e" stroke="#f59e0b"/>
                <text x="472" y="265">Late changes: max 2</text>
                <rect x="570" y="240" width="175" height="40" rx="6" fill="#27274e" stroke="#f59e0b"/>
                <text x="657" y="265">Bugs: 10 or fewer</text>
              </g>
            </g>
          </svg>
          <figcaption>A 90-day plan is a calendar of people work, not only project work. Four simple measures tell Hannah each Friday if the plan is working.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The six parts of the plan</h3>
          <p>A <strong>90-day plan</strong> is a short plan for the next three months: what you will focus on, what you will do and how you will know it worked. Hannah's plan has six parts. Each part comes from a skill in this course.</p>
          <table class="lc-table">
            <thead><tr><th>Part</th><th>What Hannah writes (made up)</th><th>Done by</th></tr></thead>
            <tbody>
              <tr><td>1. Team profile</td><td>One row per person: strengths, motivations, how they work best, current goal. Each person checks their own row.</td><td>Done; review in December</td></tr>
              <tr><td>2. 1:1 plan</td><td>8 weekly 30-minute 1:1s, 4 hours a week (9 1:1s and 4.5 hours a week from 16 Nov, when Priya joins). Never cancelled in launch weeks, only moved. Aisha chooses a format that works for her.</td><td>Every week</td></tr>
              <tr><td>3. Goals</td><td>The five Q4 team goals, each with one owner and one number. For example, Oliver owns "10 or fewer bugs after release".</td><td>Thu 31 Dec</td></tr>
              <tr><td>4. Feedback notes</td><td>Short SBI notes (Situation, Behaviour, Impact) for each person, with praise and growth points. A check that thank-yous are spread fairly.</td><td>Weekly notes</td></tr>
              <tr><td>5. Hard conversation plan</td><td>The design hand-off agreement between Marcus and Sofia, reviewed on Tue 10 Nov. A weekly workload check with Aisha until Priya settles in.</td><td>Tue 10 Nov</td></tr>
              <tr><td>6. Growth plan</td><td>A development plan for all 8 people. Marcus works towards tech lead, Kwame takes over release management, Nadia presents to clients.</td><td>Fri 30 Oct</td></tr>
            </tbody>
          </table>
          <p>The private details stay out of the shared plan. For example, the plan says "workload plan agreed with Aisha", not why she was struggling. Health details never go into the plan or into an AI tool.</p>
        </div>
        <div class="lc-card">
          <h3>Month by month</h3>
          <table class="lc-table">
            <thead><tr><th>Month</th><th>Focus</th><th>Key actions</th><th>How Hannah knows it worked</th></tr></thead>
            <tbody>
              <tr><td>October</td><td>Listen and fix</td><td>Cut Aisha's work from 46 to 39 hours a week. Agree design hand-off rules on Tue 13 Oct. Coach each person and agree development plans.</td><td>Nobody over 40 hours. 8 of 8 plans agreed. No client-channel complaints.</td></tr>
              <tr><td>November</td><td>Deliver and welcome</td><td>Usability tests on 9 to 11 Nov. Priya starts on Mon 16 Nov. Thames Valley launch on Thu 26 Nov.</td><td>Launch passes WCAG 2.2 AA checks. Priya fixes her first ticket in week one.</td></tr>
              <tr><td>December</td><td>Launch and grow</td><td>Greenleaf v2.0 on Thu 10 Dec. Team lunch on Wed 2 Dec. Remind people to plan leave before 31 Dec. Q4 review.</td><td>Bugs after release 10 or fewer. Late design changes 2 or fewer.</td></tr>
            </tbody>
          </table>
          <p>Hannah keeps a small dashboard in Excel. She updates it every Friday.</p>
          <pre><code>B2:  =COUNTIF(Hours!C2:C9,"&gt;40")                  people over 40 hours (4-week average)
        B3:  =COUNTIF(Plans!C2:C9,"Agreed")&amp;" of 8"        development plans
        B4:  =IF(LateChanges&lt;=2,"On track","Act now")      design sign-off goal
        B5:  =IF(BugsAfterRelease&lt;=10,"On track","Act now") quality goal</code></pre>
          <p>Here <code>LateChanges</code> and <code>BugsAfterRelease</code> are named cells that hold this quarter's counts. On Friday 2 October, B2 shows 1, because Aisha averages 46 hours a week.</p>
        </div>
        <div class="lc-card">
          <h3>Build it with AI, then make it yours</h3>
          <p>Hannah uses Bluefern's approved AI tool to build the structure and first draft. She describes roles and work facts, not private details. Then she checks every date and number, and adds the human parts herself.</p>
          <pre><code>I lead a team of 8 at a London digital agency (made-up roles below).
        Help me draft a 90-day plan for Q4 (2 Oct to 31 Dec) in 6 parts:
        team profile, 1:1 plan, goals, feedback notes, a hard conversation
        plan and a growth plan. Key dates: [launches and deadlines].
        Known issues: one developer is overloaded until a new hire starts
        on 16 Nov; two seniors disagree about late design changes.
        For each month give focus, 3 to 5 actions and 1 to 2 measures.
        Use roles, not names. Do not decide anything about pay, ratings
        or anyone's job. Mark assumptions clearly.</code></pre>
          <p>Before she shares the plan, Hannah checks four things:</p>
          <ul class="lc-list">
            <li><strong>Dates and numbers:</strong> every date matches the real calendar, and every measure can be counted.</li>
            <li><strong>Workload:</strong> the plan itself does not push anyone over 40 hours, including her.</li>
            <li><strong>Fairness:</strong> every person has growth in the plan, not only the loudest or most visible.</li>
            <li><strong>Privacy:</strong> no health, pay or personal details, in the plan or in the AI chat.</li>
          </ul>
          <p>She shares the full plan with Rachel. She shares the team goals and dates with the whole team in Monday's team meeting. Each person sees their own development plan, not other people's.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: Hannah's 30-day check</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="tool" data-label="Friday 30 Oct">Hannah opens her dashboard and updates the numbers from Jira and the team's logged hours.</li>
              <li data-kind="result" data-label="Dashboard">Aisha's 4-week average is now 39.5 hours (42.0, 39.0, 38.5, 38.5). 7 of 8 plans agreed. 0 late design changes so far. 3 bugs after release.</li>
              <li data-kind="user" data-label="Hannah asks AI">She pastes the numbers, with roles only, and asks: "Summarise progress on my 90-day plan and suggest next month's focus."</li>
              <li data-kind="answer" data-label="AI replies">The AI gives a clear summary. It adds: "The part-time researcher seems less committed to her development."</li>
              <li data-kind="warn" data-label="A trap">That is a guess about a person, not a fact. Grace works Monday to Wednesday, so the Friday deadline fell on her day off. Her draft is nearly done. Hannah removes the judgement.</li>
              <li data-kind="check" data-label="Hannah decides">She books Grace's plan talk for Mon 2 Nov at 10:00, in her usual 1:1. She keeps Aisha's weekly workload check until Priya settles in.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Build a 90-day plan for your own team, or for a made-up team if you do not lead people yet. Use roles, not names.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an experienced people manager who coaches new team leads. Use simple English.

        My team (roles only): [8 people at a digital agency: 3 developers, 1 junior developer, 2 designers, 1 part-time researcher, 1 QA engineer].
        The next 90 days: [2 Oct to 31 Dec. Two client launches, on 26 Nov and 10 Dec. A new developer starts on 16 Nov.]
        Known people issues: [one developer is overloaded; two seniors disagree about late design changes; every person needs a development plan by 30 Oct].

        Please create a 90-day plan with:
        1. Six parts: team profile, 1:1 plan, goals, feedback notes, a hard conversation plan, a growth plan. For each part, give 2 to 3 actions with dates.
        2. A month-by-month table: Month, Focus, Key actions, How I will know it worked.
        3. Four simple measures I can check every Friday, with a target for each.
        4. A list of what stays private and must not go into the shared plan or an AI tool.

        Mark any assumptions. Do not make any decision about pay, ratings or jobs. I will check and decide everything.</pre>
            <ul class="ai-try-checks">
              <li>All six parts are there, and each action has a date.</li>
              <li>Each measure can be counted, with a clear target.</li>
              <li>The plan does not overload anyone, including you.</li>
              <li>Private details stay out, and no decisions about pay or jobs are made.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A good 90-day plan puts people work in the calendar next to project work. AI can draft the structure fast. You make it real: you check the facts, protect privacy, talk to each person and own every decision.
        </div>
      HTML
      starter_code: nil
    }
  }.freeze
end

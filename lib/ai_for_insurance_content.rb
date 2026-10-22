module AiForInsuranceContent
  # Units (sidebar dividers): 1–4 Insurance and AI Basics · 5–9 Policies and Claims · 10–14 Risk, Fraud and Service · 15 Capstone
  # Widgets: sequence, sorter, stepper. No code editor: each Try It is an ai-try prompt box.
  LESSONS = {
    1 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-fin">Finance</div>
          <h1 class="lc-title">How Insurance Works</h1>
        </div>
        <p class="lc-lead">Insurance protects you from a big loss that you cannot pay for alone. You pay a small, fixed amount every year. If something bad happens, the insurer pays for the loss. In this lesson you will learn how this works, what a premium and a claim are, and the main types of insurance. These basics will help you read policies and use AI well in the rest of the course. This course is education only. It is not insurance, financial or legal advice.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 260" role="img" aria-label="1,000 policyholders each pay a premium of 5,000 rupees into a common pool of 50 lakh rupees. From the pool, 20 people with a loss get 2 lakh rupees each, which is 40 lakh rupees. The remaining 10 lakh rupees pays for costs, reserves and profit.">
            <defs><marker id="ins1a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="15" y="45" width="210" height="120" rx="12" fill="#27274e" stroke="#3b82f6"/>
              <text x="120" y="75" font-weight="700">1,000 policyholders</text>
              <text x="120" y="97" font-size="11" fill="#9b99b8">each pays ₹5,000 a year</text>
              <g fill="#3b82f6">
                <circle cx="55" cy="130" r="9"/><circle cx="80" cy="130" r="9"/><circle cx="105" cy="130" r="9"/><circle cx="130" cy="130" r="9"/><circle cx="155" cy="130" r="9"/><circle cx="180" cy="130" r="9"/>
              </g>
              <rect x="275" y="45" width="210" height="120" rx="12" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="380" y="75" font-weight="700" fill="#c4b5fd">Common pool</text>
              <text x="380" y="100">₹50,00,000</text>
              <text x="380" y="122" font-size="11" fill="#9b99b8">1,000 × ₹5,000</text>
              <text x="380" y="145" font-size="11" fill="#9b99b8">held by the insurer</text>
              <rect x="535" y="20" width="210" height="95" rx="12" fill="#27274e" stroke="#10b981"/>
              <text x="640" y="46" font-weight="700" fill="#6ee7b7">Claims paid</text>
              <text x="640" y="70" font-size="11" fill="#9b99b8">20 people × ₹2,00,000</text>
              <text x="640" y="94">= ₹40,00,000</text>
              <rect x="535" y="135" width="210" height="95" rx="12" fill="#27274e" stroke="#f59e0b"/>
              <text x="640" y="161" font-weight="700" fill="#fcd34d">Left over</text>
              <text x="640" y="185">₹10,00,000</text>
              <text x="640" y="208" font-size="11" fill="#9b99b8">costs, reserves, profit</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#ins1a)">
                <line x1="227" y1="105" x2="272" y2="105"/>
                <line x1="487" y1="85" x2="532" y2="68"/>
                <line x1="487" y1="125" x2="532" y2="180"/>
              </g>
              <text x="380" y="252" font-size="12" fill="#9b99b8">Many people pay a small, known amount. The few who have a loss get a large payout.</text>
            </g>
          </svg>
          <figcaption>Risk pooling with made-up numbers. Premiums from many people pay the claims of a few.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Risk pooling: the main idea</h3>
          <p><strong>Risk</strong> means the chance that something bad happens, such as an illness, an accident or a fire. You cannot know if it will happen to you. But an insurer can estimate how often it happens in a large group of people.</p>
          <ul class="lc-list">
            <li><strong>Premium:</strong> the amount you pay the insurer, every year or every month, to keep the cover.</li>
            <li><strong>Policy:</strong> the contract between you and the insurer. It says what is covered and what is not.</li>
            <li><strong>Claim:</strong> your request to the insurer to pay for a loss that the policy covers.</li>
            <li><strong>Risk pooling:</strong> many people pay premiums into one pool. The pool pays the claims of the few who have a loss.</li>
          </ul>
          <p>Look at the made-up numbers in the diagram. 1,000 people pay ₹5,000 each, so the pool has 1,000 × ₹5,000 = ₹50,00,000. In a year, 20 people have a loss of ₹2,00,000 each. The claims cost 20 × ₹2,00,000 = ₹40,00,000. The insurer keeps ₹50,00,000 − ₹40,00,000 = ₹10,00,000 for staff, other costs, reserves (money kept aside for future claims) and profit.</p>
          <p>Nobody knows who the 20 people will be. That is why everyone pays. Each person swaps a small, sure cost for protection against a large, unsure loss.</p>
        </div>
        <div class="lc-card">
          <h3>The main types of insurance</h3>
          <table class="lc-table">
            <thead><tr><th>Type</th><th>What it covers</th><th>Example</th></tr></thead>
            <tbody>
              <tr><td><strong>Life</strong></td><td>Pays money to your family if you die during the policy. A <em>term</em> plan gives pure cover only. An <em>endowment</em> plan mixes cover with savings, so its premium is much higher.</td><td>Ravi and Meena in Tamil Nadu want money for their child if one of them dies early.</td></tr>
              <tr><td><strong>Health</strong></td><td>Pays hospital bills for illness or injury, up to a limit.</td><td>Ananya, a software tester in Karnataka, gets health cover from her employer and may buy her own plan too.</td></tr>
              <tr><td><strong>Motor</strong></td><td>Pays for damage to your vehicle, and for harm your vehicle causes to other people.</td><td>Indian law requires third-party motor insurance for vehicles on public roads.</td></tr>
              <tr><td><strong>Home and shop</strong></td><td>Pays for damage to a building or its contents from fire, flood, theft and similar events.</td><td>Sweet Crumbs, a bakery in Maharashtra, insures its ovens and stock against fire and burglary.</td></tr>
              <tr><td><strong>Travel</strong></td><td>Pays for medical emergencies abroad, lost baggage or trip problems.</td><td>Rangrez Crafts' owner buys cover for a trade fair trip to Dubai.</td></tr>
            </tbody>
          </table>
          <p>Life insurance is sold by life insurers. Health, motor, home and travel insurance are mainly sold by general and health insurers. In India, IRDAI (the Insurance Regulatory and Development Authority of India) regulates all insurers.</p>
        </div>
        <div class="lc-card">
          <h3>How AI fits in</h3>
          <p>An AI assistant such as Claude can explain insurance words, summarise a long policy and draft questions for an adviser. It can also make a worked example with made-up numbers, like the pool above.</p>
          <p>But AI can be wrong. It may state a rule or a number that is out of date. It does not know your health, your family or your full policy. Always check its answer against the real policy document. For a real buying decision, talk to a licensed insurance adviser.</p>
          <pre><code>Weak prompt:   Which insurance should I buy?

        Better prompt: Explain in simple English how health insurance works.
                       Use a made-up example with a premium, a hospital bill
                       and a claim. Do not recommend any product.</code></pre>
        </div>
        <div class="lc-card">
          <h3>Activity: the life of a health policy</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put Ananya's health insurance story in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Ananya reads and compares a few health plans</li>
              <li data-order="2">She pays the premium and the insurer issues the policy</li>
              <li data-order="3">Months later, she is admitted to hospital with dengue</li>
              <li data-order="4">She tells the insurer and makes a claim</li>
              <li data-order="5">The insurer checks the claim against the policy terms</li>
              <li data-order="6">The insurer pays the covered part of the hospital bill</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to explain insurance with a made-up example that fits a person or business you know.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a patient teacher who explains insurance to beginners in India. This is for learning only, not advice.

        My situation: [Ananya, a 28-year-old salaried software tester in Karnataka].

        1. Explain risk pooling in 4 simple sentences.
        2. Explain these words in one line each: premium, policy, claim, insurer, cover.
        3. Make a small made-up example: [1,000] people each pay a premium of [₹5,000]. Some of them make claims. Show the pool, the total claims and what is left, with the sums written out.
        4. Make a table of 5 types of insurance (life, health, motor, home, travel). Columns: Type, What it covers, One example that fits my situation.

        Use simple English and short sentences. Do not name or recommend any real insurer or product. Do not state premiums, tax rules or limits as facts.</pre>
            <ul class="ai-try-checks">
              <li>Recalculate the pool: number of people × premium.</li>
              <li>Check that pool − total claims = what is left.</li>
              <li>A term plan should be described as pure cover, not savings.</li>
              <li>The answer does not recommend a real product or insurer.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Insurance works because many people share the cost of a few people's losses. You pay a small, known premium to avoid a large, unknown loss. AI can explain the ideas, but only the policy document tells you what is really covered.
        </div>
      HTML
      starter_code: nil
    },
    2 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-fin">Finance</div>
          <h1 class="lc-title">Where AI Helps in Insurance</h1>
        </div>
        <p class="lc-lead">Insurers handle huge amounts of paperwork: proposal forms, medical reports, hospital bills and customer questions. AI can read, sort and summarise this work much faster than people. But some decisions affect people's money and health. People must make those decisions. In this lesson you will see the five main areas where AI helps insurers, what can go wrong, and what a person must still decide.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 250" role="img" aria-label="Five areas of insurance work: sales, underwriting, policy service, claims and fraud checks. For each area, AI drafts or flags work, such as reading forms or bills. Below, people make the decisions, such as accepting a risk or approving a claim.">
            <defs><marker id="ins2a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="15" y="12" width="138" height="36" rx="8" fill="#1f1f44" stroke="#3b82f6"/><text x="84" y="35" font-weight="700">Sales</text>
              <rect x="160" y="12" width="138" height="36" rx="8" fill="#1f1f44" stroke="#8b5cf6"/><text x="229" y="35" font-weight="700">Underwriting</text>
              <rect x="305" y="12" width="138" height="36" rx="8" fill="#1f1f44" stroke="#22d3ee"/><text x="374" y="35" font-weight="700">Policy service</text>
              <rect x="450" y="12" width="138" height="36" rx="8" fill="#1f1f44" stroke="#10b981"/><text x="519" y="35" font-weight="700">Claims</text>
              <rect x="595" y="12" width="138" height="36" rx="8" fill="#1f1f44" stroke="#ec4899"/><text x="664" y="35" font-weight="700">Fraud checks</text>
              <text x="15" y="70" text-anchor="start" font-size="12" fill="#c4b5fd">AI drafts or flags</text>
              <g font-size="11">
                <rect x="15" y="78" width="138" height="56" rx="8" fill="#27274e"/><text x="84" y="101">explain plans</text><text x="84" y="119">answer FAQs</text>
                <rect x="160" y="78" width="138" height="56" rx="8" fill="#27274e"/><text x="229" y="101">read forms</text><text x="229" y="119">summarise risk</text>
                <rect x="305" y="78" width="138" height="56" rx="8" fill="#27274e"/><text x="374" y="101">renewal reminders</text><text x="374" y="119">chat support</text>
                <rect x="450" y="78" width="138" height="56" rx="8" fill="#27274e"/><text x="519" y="101">read bills</text><text x="519" y="119">list missing papers</text>
                <rect x="595" y="78" width="138" height="56" rx="8" fill="#27274e"/><text x="664" y="101">odd patterns</text><text x="664" y="119">duplicate bills</text>
              </g>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ins2a)">
                <line x1="84" y1="137" x2="84" y2="170"/><line x1="229" y1="137" x2="229" y2="170"/><line x1="374" y1="137" x2="374" y2="170"/><line x1="519" y1="137" x2="519" y2="170"/><line x1="664" y1="137" x2="664" y2="170"/>
              </g>
              <text x="15" y="162" text-anchor="start" font-size="12" fill="#fcd34d">People decide</text>
              <g font-size="11">
                <rect x="15" y="174" width="138" height="56" rx="8" fill="#27274e" stroke="#f59e0b"/><text x="84" y="197">is it suitable</text><text x="84" y="215">for this person?</text>
                <rect x="160" y="174" width="138" height="56" rx="8" fill="#27274e" stroke="#f59e0b"/><text x="229" y="197">accept, price</text><text x="229" y="215">or refuse</text>
                <rect x="305" y="174" width="138" height="56" rx="8" fill="#27274e" stroke="#f59e0b"/><text x="374" y="197">complaints</text><text x="374" y="215">and exceptions</text>
                <rect x="450" y="174" width="138" height="56" rx="8" fill="#27274e" stroke="#f59e0b"/><text x="519" y="197">approve or</text><text x="519" y="215">reject a claim</text>
                <rect x="595" y="174" width="138" height="56" rx="8" fill="#27274e" stroke="#f59e0b"/><text x="664" y="197">investigate</text><text x="664" y="215">before any action</text>
              </g>
              <text x="380" y="246" font-size="11" fill="#9b99b8">AI speeds up reading and sorting. A trained person owns every decision.</text>
            </g>
          </svg>
          <figcaption>AI does the reading and flagging. People make the decisions that affect customers.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Five areas where AI helps</h3>
          <table class="lc-table">
            <thead><tr><th>Area</th><th>What the work is</th><th>How AI helps</th><th>What a person decides</th></tr></thead>
            <tbody>
              <tr><td><strong>Sales</strong></td><td>Explaining plans to buyers</td><td>Drafts simple explanations and answers common questions</td><td>Whether a plan suits this buyer. In India, advice must come from a licensed agent or adviser.</td></tr>
              <tr><td><strong>Underwriting</strong></td><td>Checking the risk of a new customer (underwriting: deciding whether to insure someone and at what premium)</td><td>Reads proposal forms and medical reports, and summarises the key facts</td><td>Accept, charge more, add conditions or refuse</td></tr>
              <tr><td><strong>Policy service</strong></td><td>Renewals, address changes, questions</td><td>Chat support, reminders, finding the right clause</td><td>Complaints and anything unusual</td></tr>
              <tr><td><strong>Claims</strong></td><td>Checking a claim and paying it</td><td>Reads bills and reports, compares them with the policy, lists missing papers</td><td>Approve, part-pay or reject</td></tr>
              <tr><td><strong>Fraud checks</strong></td><td>Finding false or inflated claims</td><td>Flags odd patterns, such as the same bill sent twice</td><td>Whether to investigate. A flag is not proof of fraud.</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Worked example: a claims assistant at Suraksha</h3>
          <p>Suraksha General Insurance is a made-up insurer. Its claims team gets a 30-page file for a hospital stay. A claims assistant uses the company's approved AI tool to make a one-page summary.</p>
          <pre><code>Weak prompt:   Is this claim OK?

        Better prompt: Summarise this claim file in a table: patient ID,
                       admission date, discharge date, diagnosis, total bill.
                       Then list any document that seems missing.
                       Quote the page number for every fact.
                       Do not decide if the claim should be paid.</code></pre>
          <p>The better prompt asks AI to read and organise, not to judge. It also asks for page numbers, so the assistant can check each fact quickly. The final decision stays with a trained claims officer.</p>
        </div>
        <div class="lc-card">
          <h3>What can go wrong</h3>
          <ul class="lc-list">
            <li><strong>Misreading:</strong> AI can read ₹18,500 as ₹85,000 on a blurry bill.</li>
            <li><strong>Made-up clauses:</strong> AI may describe a policy rule that is not in the document.</li>
            <li><strong>Unfair patterns:</strong> a model trained on old decisions can repeat old bias against some groups.</li>
            <li><strong>Privacy:</strong> health and identity data must stay in approved, secure tools.</li>
          </ul>
          <p>Insurers must follow IRDAI rules and data protection law. They stay responsible for every decision, even when AI helped. Rules change, so check official sources for the current position.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: AI or a person?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each task. Can AI draft or flag it, or must a person decide?</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="ai" data-label="AI can draft or flag"></div>
              <div data-sorter-target="bucket" data-bucket="person" data-label="A person must decide"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="ai" data-why="Summarising is reading work. A person still checks the summary against the file.">Summarise a 30-page claim file into one page</li>
              <li data-bucket="person" data-why="A rejection affects the customer's money. A trained officer must decide and give the reason.">Reject a customer's hospital claim</li>
              <li data-bucket="ai" data-why="Finding matching bill numbers is pattern work. A person then looks into it.">Flag two claims that use the same bill number</li>
              <li data-bucket="person" data-why="Calling something fraud is serious. Only an investigation by people can decide it.">Tell a customer that their claim is fraud</li>
              <li data-bucket="ai" data-why="A reminder is a simple draft. A person checks the dates and amounts before sending.">Draft a renewal reminder email</li>
              <li data-bucket="person" data-why="Suitability depends on the family's full situation. A licensed adviser should help decide.">Decide if a plan suits Ravi and Meena's family</li>
              <li data-bucket="ai" data-why="AI can pull out facts. A person checks each one against the original report.">Pull the diagnosis and dates from a discharge summary</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to map where it can help in an insurance job, and where a person must decide.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a trainer who teaches insurance staff how to use AI safely. This is general education only.

        My role: [claims assistant at a general insurer in India].

        1. List 5 tasks in my role where an AI assistant can save time.
        2. Show them in a table with these columns: Task, What AI does, What can go wrong, What a person must check or decide.
        3. Give one weak prompt and one better prompt for the most useful task. The better prompt should ask AI to quote page or clause numbers.
        4. List 3 kinds of data I must never paste into a public AI tool.

        Use simple English and short sentences. Use only made-up examples. Do not name real insurers or claim that any law says something unless you are sure. If unsure, tell me to check official IRDAI sources.</pre>
            <ul class="ai-try-checks">
              <li>Every task has a clear "person decides" part.</li>
              <li>AI is not given the final say on approving or rejecting claims.</li>
              <li>The better prompt asks for page or clause numbers.</li>
              <li>Rules are described generally, with a pointer to official sources.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> In insurance, AI is best at reading, sorting and drafting. Decisions that change a customer's money, such as pricing, approving or rejecting a claim, belong to trained people who check the facts.
        </div>
      HTML
      starter_code: nil
    },
    3 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-fin">Finance</div>
          <h1 class="lc-title">Insurance Words in Plain English</h1>
        </div>
        <p class="lc-lead">Insurance documents use special words. Two words, such as deductible and co-pay, can change how much you get paid by thousands of rupees. In this lesson you will learn the key words in plain English: sum insured, premium, deductible, co-pay, waiting period, exclusions and riders. You will also work through a claim with made-up numbers and see why AI's sums must be checked. This is education only, not insurance advice.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 250" role="img" aria-label="A made-up claim. The payable bill is 1 lakh rupees. A deductible of 10,000 rupees leaves 90,000 rupees. A 20 percent co-pay of 18,000 rupees leaves 72,000 rupees, which the insurer pays. A bar shows the insurer paying 72,000 and Ananya paying 28,000.">
            <defs><marker id="ins3a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="15" y="20" width="130" height="64" rx="10" fill="#27274e" stroke="#3b82f6"/>
              <text x="80" y="45" font-size="11" fill="#9b99b8">Payable bill</text><text x="80" y="68" font-weight="700">₹1,00,000</text>
              <rect x="167" y="20" width="130" height="64" rx="10" fill="#27274e" stroke="#f59e0b"/>
              <text x="232" y="45" font-size="11" fill="#9b99b8">Deductible</text><text x="232" y="68" font-weight="700">− ₹10,000</text>
              <rect x="319" y="20" width="130" height="64" rx="10" fill="#27274e" stroke="#8b5cf6"/>
              <text x="384" y="45" font-size="11" fill="#9b99b8">Remaining</text><text x="384" y="68" font-weight="700">₹90,000</text>
              <rect x="471" y="20" width="130" height="64" rx="10" fill="#27274e" stroke="#ec4899"/>
              <text x="536" y="45" font-size="11" fill="#9b99b8">Co-pay 20%</text><text x="536" y="68" font-weight="700">− ₹18,000</text>
              <rect x="623" y="20" width="122" height="64" rx="10" fill="#27274e" stroke="#10b981"/>
              <text x="684" y="45" font-size="11" fill="#9b99b8">Insurer pays</text><text x="684" y="68" font-weight="700" fill="#6ee7b7">₹72,000</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ins3a)">
                <line x1="146" y1="52" x2="164" y2="52"/><line x1="298" y1="52" x2="316" y2="52"/><line x1="450" y1="52" x2="468" y2="52"/><line x1="602" y1="52" x2="620" y2="52"/>
              </g>
              <text x="40" y="128" text-anchor="start" font-size="12" fill="#9b99b8">Who pays the ₹1,00,000 bill?</text>
              <rect x="40" y="140" width="490" height="40" fill="#10b981" fill-opacity="0.35" stroke="#10b981"/>
              <text x="285" y="165">Insurer ₹72,000</text>
              <rect x="530" y="140" width="68" height="40" fill="#f59e0b" fill-opacity="0.35" stroke="#f59e0b"/>
              <text x="564" y="165" font-size="11">₹10,000</text>
              <rect x="598" y="140" width="122" height="40" fill="#ec4899" fill-opacity="0.35" stroke="#ec4899"/>
              <text x="659" y="165" font-size="11">Co-pay ₹18,000</text>
              <text x="625" y="205" font-size="12" fill="#fcd34d">Ananya pays ₹28,000</text>
              <text x="625" y="224" font-size="11" fill="#9b99b8">₹10,000 + ₹18,000</text>
              <text x="40" y="224" text-anchor="start" font-size="11" fill="#9b99b8">Check: ₹72,000 + ₹28,000 = ₹1,00,000</text>
            </g>
          </svg>
          <figcaption>A made-up claim. Here the deductible is taken first, then the co-pay. Real policies may work in a different order, so read the wording.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The key words</h3>
          <table class="lc-table">
            <thead><tr><th>Word</th><th>Plain meaning</th><th>Made-up example</th></tr></thead>
            <tbody>
              <tr><td><strong>Premium</strong></td><td>What you pay to keep the policy running</td><td>Ananya pays a yearly premium for her health plan.</td></tr>
              <tr><td><strong>Sum insured</strong></td><td>The most the insurer will pay in a policy year. Life policies usually call it the <em>sum assured</em>.</td><td>Sum insured ₹5,00,000: claims above this in one year are not paid.</td></tr>
              <tr><td><strong>Deductible</strong></td><td>A fixed amount you pay first, before the insurer pays anything</td><td>With a ₹10,000 deductible, you pay the first ₹10,000 of a covered bill.</td></tr>
              <tr><td><strong>Co-pay</strong></td><td>A percentage of each claim that you always share</td><td>With a 20% co-pay, you pay 20% of the covered amount.</td></tr>
              <tr><td><strong>Waiting period</strong></td><td>Time after you buy when some claims are not paid</td><td>Many health plans have a first waiting period, often 30 days, for illness. Accidents are usually covered from day one. Pre-existing diseases (illnesses you had before buying) often have a longer wait.</td></tr>
              <tr><td><strong>Exclusions</strong></td><td>Things the policy does not cover at all</td><td>Cosmetic surgery is a common exclusion.</td></tr>
              <tr><td><strong>Rider</strong></td><td>Extra cover you add to a policy for an extra premium</td><td>A term life plan with an accidental death rider. Motor policies call similar extras <em>add-ons</em>.</td></tr>
            </tbody>
          </table>
          <p>Each policy defines these words in its own wording. The numbers and rules differ from plan to plan. Always read your own policy's definitions.</p>
        </div>
        <div class="lc-card">
          <h3>Worked example: Ananya's claim</h3>
          <p>This is a made-up policy. Ananya's hospital bill is ₹1,00,000, and all of it is covered. Her plan has a ₹10,000 deductible and a 20% co-pay. The wording says the deductible comes off first.</p>
          <ol class="lc-list">
            <li>Take off the deductible: ₹1,00,000 − ₹10,000 = ₹90,000.</li>
            <li>Work out the co-pay: 20% of ₹90,000 = ₹18,000.</li>
            <li>The insurer pays: ₹90,000 − ₹18,000 = ₹72,000.</li>
            <li>Ananya pays: ₹10,000 + ₹18,000 = ₹28,000.</li>
          </ol>
          <p>In a spreadsheet, put the bill in B1, the deductible in B2 and the co-pay (20%) in B3. This formula gives the insurer's share:</p>
          <pre><code>=(B1-B2)*(1-B3)</code></pre>
          <p>If a policy took the co-pay first, the answer would change. 20% of ₹1,00,000 is ₹20,000, which leaves ₹80,000. Then the ₹10,000 deductible leaves ₹70,000. The order matters, so check the policy wording.</p>
        </div>
        <div class="lc-card">
          <h3>Asking AI to explain words</h3>
          <pre><code>Weak prompt:   What is co-pay?

        Better prompt: Explain co-pay and deductible in simple English for a
                       first-time health insurance buyer in India. Use one
                       made-up example with numbers and show every sum.
                       Say that real policies may apply them differently.</code></pre>
          <p>The better prompt asks for an example and every step of the sum. That lets you check the maths yourself. Never trust a final number from AI without checking it.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: checking AI's claim maths</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Ananya asks">My made-up policy has a ₹10,000 deductible and a 20% co-pay. The covered bill is ₹1,00,000. How much will the insurer pay?</li>
              <li data-kind="answer" data-label="AI replies">20% of ₹1,00,000 is ₹20,000, so ₹80,000 is left. Minus the ₹10,000 deductible, the insurer pays ₹70,000.</li>
              <li data-kind="warn" data-label="Catch the problem">The AI took the co-pay first. It did not know the order in Ananya's policy. It guessed.</li>
              <li data-kind="check" data-label="Ananya reads the policy">The wording says: the deductible applies first, then the co-pay on the remaining amount.</li>
              <li data-kind="tool" data-label="Spreadsheet">Ananya types =(B1-B2)*(1-B3) with ₹1,00,000, ₹10,000 and 20%.</li>
              <li data-kind="result" data-label="Spreadsheet shows">₹72,000. That is ₹2,000 more than the AI's answer.</li>
              <li data-kind="check" data-label="Final check">For a real claim, she would ask the insurer to confirm the amount in writing.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to explain the key words for someone you know and to work through a claim step by step.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a friendly insurance tutor for beginners in India. This is general education only, not advice.

        The learner: [Ananya, a 28-year-old salaried software tester in Karnataka who just got her first health policy].

        1. Explain these words in one or two simple sentences each, with a small example: premium, sum insured, deductible, co-pay, waiting period, exclusion, rider.
        2. Work through a made-up claim. Covered bill: [₹1,00,000]. Deductible: [₹10,000]. Co-pay: [20]%. Take the deductible first, then the co-pay on the rest. Show every step, what the insurer pays and what the person pays.
        3. Show how the answer changes if the co-pay is taken first.
        4. Give the Google Sheets formula for the insurer's share if the bill is in B1, the deductible in B2 and the co-pay in B3.

        Use short sentences. Do not state real premiums, waiting period rules or limits as facts. Say that each policy's wording decides.</pre>
            <ul class="ai-try-checks">
              <li>With the default numbers, the insurer pays ₹72,000 and the person pays ₹28,000.</li>
              <li>With co-pay first, the insurer pays ₹70,000.</li>
              <li>The formula should be =(B1-B2)*(1-B3).</li>
              <li>Co-pay is a percentage and the deductible is a fixed amount.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A few words decide how much you get paid: sum insured, deductible, co-pay, waiting period and exclusions. Learn them in plain English, and always work out the numbers yourself. The order of the steps can change the answer.
        </div>
      HTML
      starter_code: nil
    },
    4 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-fin">Finance</div>
          <h1 class="lc-title">Using AI Safely with Policy Documents</h1>
        </div>
        <p class="lc-lead">Insurance papers hold very private data: names, phone numbers, identity numbers and health details. If you paste them into a public AI tool, you may lose control of that data. AI can also misread a policy and sound sure about it. In this lesson you will learn what data to keep out of AI tools and how to make safe sample documents. You will also learn how to check AI's reading of a policy.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 240" role="img" aria-label="Before: a policy page with a name, policy number, phone number and diagnosis. After: the same page with placeholders instead of personal details, but the same sum insured. Then check AI's reading: ask it to quote clauses, compare with the original and decide yourself.">
            <defs><marker id="ins4a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12" fill="#e2e0f0">
              <rect x="15" y="20" width="250" height="190" rx="12" fill="#1f1f44" stroke="#ec4899"/>
              <text x="140" y="46" text-anchor="middle" font-size="13" font-weight="700" fill="#f9a8d4">Before: do not paste</text>
              <text x="32" y="80">Name: Ananya</text>
              <text x="32" y="104">Policy no: SGI/H/4471/22</text>
              <text x="32" y="128">Phone: 98220 xxxxx</text>
              <text x="32" y="152">Diagnosis: diabetes</text>
              <text x="32" y="176">Sum insured: ₹5,00,000</text>
              <rect x="305" y="20" width="250" height="190" rx="12" fill="#1f1f44" stroke="#10b981"/>
              <text x="430" y="46" text-anchor="middle" font-size="13" font-weight="700" fill="#6ee7b7">After: safer to use</text>
              <text x="322" y="80">Name: [Customer A]</text>
              <text x="322" y="104">Policy no: [POLICY-1]</text>
              <text x="322" y="128">Phone: removed</text>
              <text x="322" y="152">Diagnosis: [Condition X]</text>
              <text x="322" y="176">Sum insured: ₹5,00,000</text>
              <rect x="595" y="20" width="150" height="190" rx="12" fill="#27274e" stroke="#f59e0b"/>
              <g text-anchor="middle">
                <text x="670" y="46" font-size="13" font-weight="700" fill="#fcd34d">Check AI</text>
                <text x="670" y="84" font-size="11">1. quote the clause</text>
                <text x="670" y="120" font-size="11">2. compare with</text>
                <text x="670" y="136" font-size="11">the original</text>
                <text x="670" y="172" font-size="11">3. you decide</text>
              </g>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ins4a)">
                <line x1="267" y1="115" x2="302" y2="115"/><line x1="557" y1="115" x2="592" y2="115"/>
              </g>
              <text x="380" y="232" text-anchor="middle" font-size="11" fill="#9b99b8">Replace personal details with placeholders. Keep the numbers you need for the question.</text>
            </g>
          </svg>
          <figcaption>Remove what identifies a person. Keep what the question needs. Then check the AI's reading against the real document.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>What counts as private data</h3>
          <table class="lc-table">
            <thead><tr><th>Data</th><th>Why it is risky</th><th>Safer choice</th></tr></thead>
            <tbody>
              <tr><td>Name, address, phone, email</td><td>Identifies a real person</td><td>Use placeholders such as [Customer A]</td></tr>
              <tr><td>Aadhaar, PAN, bank account numbers</td><td>Can be misused for fraud</td><td>Never paste them</td></tr>
              <tr><td>Passwords, OTPs, login links</td><td>Give direct access to accounts</td><td>Never paste them</td></tr>
              <tr><td>Policy and claim numbers</td><td>Link the document to a real person</td><td>Replace with [POLICY-1]</td></tr>
              <tr><td>Diagnosis, medical reports, hospital bills</td><td>Health data is very sensitive</td><td>Remove names first, and use only approved tools</td></tr>
              <tr><td>General policy wording</td><td>Usually the same document for every buyer</td><td>Usually fine, but follow your company's rules</td></tr>
            </tbody>
          </table>
          <p>India's Digital Personal Data Protection Act, 2023 sets rules for how organisations handle personal data. Insurers also follow IRDAI rules on data. The details can change, so check official sources. This is general education, not legal advice.</p>
        </div>
        <div class="lc-card">
          <h3>Safe habits</h3>
          <ul class="lc-list">
            <li><strong>At work, use only approved tools.</strong> Your company may have an AI tool with data protections. Do not use a personal account for customer files.</li>
            <li><strong>Practise with made-up documents.</strong> Ask AI to create a sample policy with fake names. Learn with that first.</li>
            <li><strong>Paste only the part you need.</strong> For a question about room rent, paste the room rent clause, not the whole file.</li>
            <li><strong>Check the settings.</strong> Some AI tools can use chats to improve their models. Read the tool's current privacy and data settings.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Checking AI's reading</h3>
          <p>AI can mix up two clauses, miss a word like "not", or describe a rule that is not there. Ask it to show where each answer comes from.</p>
          <pre><code>Weak prompt:   Here is my policy. What is covered?

        Better prompt: Below is a policy extract with personal details removed.
                       List what is covered and what is excluded.
                       For each point, quote the exact words and the clause
                       number. If something is not in the text, write
                       "Not stated". Do not guess.</code></pre>
          <p>Then open the real document. Find each quoted clause and read it yourself. If a point matters for money or health, ask the insurer or a licensed adviser.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: safe to paste?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">You want AI help with an insurance document. Sort each piece of data.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="ok" data-label="Fine to use"></div>
              <div data-sorter-target="bucket" data-bucket="replace" data-label="Remove or replace first"></div>
              <div data-sorter-target="bucket" data-bucket="never" data-label="Never paste"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="ok" data-why="It is a general document, usually the same for every buyer. Still follow your company's rules.">The general policy wording the insurer gives every buyer</li>
              <li data-bucket="ok" data-why="Made-up data belongs to no real person. It is the safest way to practise.">A made-up sample claim created for practice</li>
              <li data-bucket="replace" data-why="A name and address identify a person. Use a placeholder such as [Customer A].">The policyholder's name and address on the schedule</li>
              <li data-bucket="replace" data-why="These numbers link the document to a real person. Replace them with [POLICY-1] or similar.">The policy number and the customer's phone number</li>
              <li data-bucket="replace" data-why="Health data is very sensitive. Remove all names and numbers, and use only an approved tool.">A customer's diagnosis and hospital bill amounts</li>
              <li data-bucket="never" data-why="An Aadhaar number is an identity number. AI never needs it to explain a policy.">An Aadhaar number</li>
              <li data-bucket="never" data-why="Passwords and OTPs give access to accounts. No AI task needs them.">A net-banking password or an OTP</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to make a safe, made-up practice document and a checklist of what to hide in a real one.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a trainer who teaches safe AI use with insurance documents in India. This is general education only.

        1. Create a made-up practice document for a [family floater health policy] from the made-up insurer "Suraksha General Insurance". Include a short schedule (policyholder, members, sum insured, premium, dates) and 6 short numbered clauses about cover, exclusions and waiting periods. Use only fake names and numbers. Mark it "SAMPLE - NOT A REAL POLICY".
        2. List every field in the schedule that would be personal data in a real policy. For each, say why and give a safe placeholder.
        3. Write a short prompt I can use to ask an AI about this sample. The prompt must ask the AI to quote clause numbers and to write "Not stated" when the text does not say.

        Use simple English. Do not use real insurer or product names. Do not state real legal rules as facts.</pre>
            <ul class="ai-try-checks">
              <li>All names, numbers and the insurer are clearly made up.</li>
              <li>The list includes name, address, phone, policy number and identity numbers.</li>
              <li>Health details are marked as sensitive.</li>
              <li>The sample prompt asks for clause numbers and "Not stated".</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Keep real identities, identity numbers and passwords out of AI tools. Practise with made-up documents, and paste only what the question needs. Then check every AI answer against the exact clause in the real policy.
        </div>
      HTML
      starter_code: nil
    },
    5 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-fin">Finance</div>
          <h1 class="lc-title">Understanding a Policy Document with AI</h1>
        </div>
        <p class="lc-lead">A policy document can run to 40 pages or more. Most people never read it, and then get a surprise at claim time. AI can turn the document into a short, clear summary of what is covered, what is not, and what conditions apply. In this lesson you will learn how to ask for that summary, how to check it, and which questions to ask the insurer. This is education only, not insurance advice.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 280" role="img" aria-label="A long policy document with sections for definitions, cover, exclusions, conditions and claims goes to AI. AI makes a summary with four parts: what is covered, what is not covered, conditions and limits, and questions for the insurer. A dashed arrow shows that you check every point against the clause in the document.">
            <defs>
              <marker id="ins5a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker>
              <marker id="ins5b" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#f59e0b"/></marker>
            </defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="15" y="15" width="190" height="215" rx="12" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="110" y="40" font-weight="700" fill="#93c5fd">Policy document</text>
              <g font-size="12">
                <rect x="35" y="55" width="150" height="26" rx="6" fill="#27274e"/><text x="110" y="73">Definitions</text>
                <rect x="35" y="88" width="150" height="26" rx="6" fill="#27274e"/><text x="110" y="106">Cover</text>
                <rect x="35" y="121" width="150" height="26" rx="6" fill="#27274e"/><text x="110" y="139">Exclusions</text>
                <rect x="35" y="154" width="150" height="26" rx="6" fill="#27274e"/><text x="110" y="172">Conditions</text>
                <rect x="35" y="187" width="150" height="26" rx="6" fill="#27274e"/><text x="110" y="205">Claims process</text>
              </g>
              <rect x="250" y="95" width="110" height="56" rx="12" fill="#27274e" stroke="#8b5cf6"/>
              <text x="305" y="119" font-weight="700" fill="#c4b5fd">AI</text>
              <text x="305" y="138" font-size="11" fill="#9b99b8">summarises</text>
              <rect x="405" y="15" width="340" height="215" rx="12" fill="#1f1f44" stroke="#10b981"/>
              <text x="575" y="40" font-weight="700" fill="#6ee7b7">One-page summary</text>
              <g font-size="12" text-anchor="start">
                <rect x="425" y="55" width="300" height="34" rx="6" fill="#27274e"/><text x="440" y="77">What is covered (clause 3.x)</text>
                <rect x="425" y="96" width="300" height="34" rx="6" fill="#27274e"/><text x="440" y="118">What is not covered (clause 4.x)</text>
                <rect x="425" y="137" width="300" height="34" rx="6" fill="#27274e"/><text x="440" y="159">Conditions and limits</text>
                <rect x="425" y="178" width="300" height="34" rx="6" fill="#27274e"/><text x="440" y="200">Questions for the insurer</text>
              </g>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ins5a)">
                <line x1="207" y1="123" x2="247" y2="123"/><line x1="362" y1="123" x2="402" y2="123"/>
              </g>
              <path d="M575,232 L575,252 L110,252 L110,235" fill="none" stroke="#f59e0b" stroke-width="1.5" stroke-dasharray="5 4" marker-end="url(#ins5b)"/>
              <text x="342" y="272" font-size="12" fill="#fcd34d">You check every point against the clause in the document</text>
            </g>
          </svg>
          <figcaption>AI shortens the document. You check each point against the clause it came from.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>What is inside a policy document</h3>
          <ul class="lc-list">
            <li><strong>Schedule:</strong> your personal page. It shows the names covered, the sum insured, the premium and the dates.</li>
            <li><strong>Definitions:</strong> the meaning of words such as "hospital" or "pre-existing disease" in this policy.</li>
            <li><strong>Cover:</strong> what the insurer pays for.</li>
            <li><strong>Exclusions:</strong> what it never pays for.</li>
            <li><strong>Conditions:</strong> rules you must follow, such as telling the insurer within a set time.</li>
            <li><strong>Claims and complaints:</strong> how to claim, and whom to contact if you disagree.</li>
          </ul>
          <p>In India, a health policy must come with a customer information sheet (a short key-facts summary in simple words). Read it, but the full wording decides. Life and health policies also have a free-look period: a short time after you receive the policy when you can cancel it if you do not agree with the terms. IRDAI rules set it at 30 days at the time of writing, for policies of one year or more. Rules change, so check your own document and the IRDAI website.</p>
        </div>
        <div class="lc-card">
          <h3>Worked example: Ravi and Meena's policy</h3>
          <p>Ravi and Meena live in Tamil Nadu with one child. They have a made-up family floater plan from Suraksha General Insurance. A <strong>family floater</strong> is one sum insured shared by the whole family. Here is a short extract, with no personal details.</p>
          <pre><code>SAMPLE - NOT A REAL POLICY
        Sum insured: ₹5,00,000 (family floater, 2 adults + 1 child)
        3.1 Hospital stays of 24 hours or more are covered up to the sum insured.
        3.2 Room rent is covered up to 1% of the sum insured per day.
        3.3 Costs 30 days before and 60 days after a covered stay are covered.
        4.1 Illness claims in the first 30 days are not covered, except accidents.
        4.2 Pre-existing diseases are covered only after 36 months.
        4.3 Maternity and childbirth costs are not covered.
        5.1 Tell the insurer within 24 hours of an emergency admission.</code></pre>
          <p>Work out the room rent limit: 1% of ₹5,00,000 = ₹5,000 per day. Suppose they choose a room that costs ₹8,000 per day for 4 days. They pay at least the extra ₹3,000 × 4 = ₹12,000 themselves. Some policies also cut other hospital charges in the same ratio. Ask the insurer how this policy works.</p>
          <pre><code>Weak prompt:   Summarise my policy.

        Better prompt: Summarise this policy extract in a table with four
                       parts: Covered, Not covered, Conditions and limits,
                       Questions to ask the insurer. Quote the clause number
                       for every point. If the extract does not say, write
                       "Not stated". Use simple English.</code></pre>
        </div>
        <div class="lc-card">
          <h3>Questions to ask the insurer</h3>
          <p>A good summary also shows what the extract does not answer. Ask the insurer or a licensed adviser about these points, and keep the answers in writing.</p>
          <ul class="lc-list">
            <li>Is there a co-pay or a deductible anywhere in the full wording?</li>
            <li>How does the policy define a pre-existing disease?</li>
            <li>Which hospitals near us are in the network for cashless treatment?</li>
            <li>What happens to other charges if we choose a costlier room?</li>
            <li>Can maternity cover be added, and what would it cost?</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Activity: Meena checks an AI summary</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Meena asks">Here is our policy extract with personal details removed. Summarise it in a table: Covered, Not covered, Conditions. Quote clause numbers.</li>
              <li data-kind="answer" data-label="AI replies">Covered: hospital stays (3.1), room rent up to ₹5,000 a day (3.2), maternity after a waiting period (4.3). Not covered: illness in the first 30 days (4.1).</li>
              <li data-kind="warn" data-label="Catch the problem">Clause 4.3 says maternity is <em>not</em> covered. The AI turned an exclusion into cover.</li>
              <li data-kind="check" data-label="Meena reads 4.3">She opens the extract. It says: "Maternity and childbirth costs are not covered."</li>
              <li data-kind="user" data-label="Meena asks again">Quote clause 4.3 word for word, then fix the table.</li>
              <li data-kind="answer" data-label="AI replies">The AI quotes the clause and moves maternity to "Not covered".</li>
              <li data-kind="check" data-label="Next step">Meena adds "Can maternity cover be added?" to her list of questions for the insurer.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to summarise a made-up policy extract and to list questions for the insurer. Then check each point yourself.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a plain-English insurance explainer. This is general education only, not advice.

        Here is a made-up policy extract for [a family of 2 adults and 1 child in Tamil Nadu]:
        Sum insured: ₹5,00,000 family floater.
        3.1 Hospital stays of 24 hours or more are covered up to the sum insured.
        3.2 Room rent is covered up to 1% of the sum insured per day.
        4.1 Illness claims in the first 30 days are not covered, except accidents.
        4.2 Pre-existing diseases are covered only after 36 months.
        4.3 Maternity and childbirth costs are not covered.
        5.1 Tell the insurer within 24 hours of an emergency admission.

        1. Make a table with three parts: Covered, Not covered, Conditions and limits. Quote the clause number for each point.
        2. Work out the room rent limit per day in rupees, and show the sum.
        3. List 5 questions this family should ask the insurer about things the extract does not say.
        If the extract does not answer something, write "Not stated". Do not guess or recommend any product.</pre>
            <ul class="ai-try-checks">
              <li>Maternity (4.3) is in "Not covered", not in "Covered".</li>
              <li>The room rent limit is 1% of ₹5,00,000 = ₹5,000 per day.</li>
              <li>Every point has a clause number that matches the extract.</li>
              <li>Nothing appears that is not in the extract, unless marked "Not stated".</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> AI can turn a long policy into a one-page summary in seconds. Make it quote clause numbers and say "Not stated" when the text is silent. Then check each point against the real wording, and ask the insurer about anything unclear.
        </div>
      HTML
      starter_code: nil
    },
    6 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-fin">Finance</div>
          <h1 class="lc-title">Comparing Plans</h1>
        </div>
        <p class="lc-lead">Two health plans can look almost the same. But the one with the lower premium may cost you much more when you make a claim. In this lesson, you will build a comparison table with AI. You will look beyond the premium at co-pay, room rent limits and waiting periods. You will also learn what the claim settlement ratio means and what it does not tell you. This is education only. It is not insurance advice, and it does not recommend any product.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="Two made-up health plans side by side. Plan A costs 9,800 rupees a year with no co-pay. Plan B costs 8,200 rupees with a 20 percent co-pay and a room rent limit. For a 2,00,000 rupee bill, you pay 0 with Plan A and 40,000 with Plan B.">
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <text x="380" y="24" text-anchor="middle" font-weight="700">Two made-up plans for Ananya, both with ₹5,00,000 cover</text>
              <rect x="20" y="40" width="340" height="170" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="190" y="64" text-anchor="middle" font-weight="700" fill="#6ee7b7">Plan A</text>
              <text x="40" y="92">Premium a year</text><text x="340" y="92" text-anchor="end">₹9,800</text>
              <text x="40" y="118">Co-pay</text><text x="340" y="118" text-anchor="end">None</text>
              <text x="40" y="144">Room rent limit</text><text x="340" y="144" text-anchor="end">Any single room</text>
              <text x="40" y="170">Waiting for old illness</text><text x="340" y="170" text-anchor="end">2 years</text>
              <text x="40" y="196" fill="#9b99b8" font-size="12">Costs more now</text>
              <rect x="400" y="40" width="340" height="170" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="570" y="64" text-anchor="middle" font-weight="700" fill="#f9a8d4">Plan B</text>
              <text x="420" y="92">Premium a year</text><text x="720" y="92" text-anchor="end">₹8,200</text>
              <text x="420" y="118">Co-pay</text><text x="720" y="118" text-anchor="end">20%</text>
              <text x="420" y="144">Room rent limit</text><text x="720" y="144" text-anchor="end">₹4,000 a day</text>
              <text x="420" y="170">Waiting for old illness</text><text x="720" y="170" text-anchor="end">3 years</text>
              <text x="420" y="196" fill="#9b99b8" font-size="12">Saves ₹1,600 a year now</text>
              <rect x="20" y="228" width="720" height="60" rx="10" fill="#27274e" stroke="#f59e0b"/>
              <text x="380" y="252" text-anchor="middle" font-weight="700" fill="#fcd34d">A covered hospital bill of ₹2,00,000</text>
              <text x="380" y="274" text-anchor="middle">Plan A: you pay ₹0 · Plan B: you pay ₹40,000 (20% co-pay)</text>
            </g>
          </svg>
          <figcaption>The cheaper plan saves ₹1,600 a year. One large claim can cost ₹40,000 more. Look at the whole picture, not only the premium.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>What to put in a comparison table</h3>
          <p>A good table puts the same facts for each plan in the same row. Then you can see the differences at a glance. Here are the rows that matter most for a health plan.</p>
          <table class="lc-table">
            <thead><tr><th>Row</th><th>What it means</th><th>Why it matters</th></tr></thead>
            <tbody>
              <tr><td><strong>Premium</strong></td><td>The amount you pay each year to keep the policy</td><td>Your cost today</td></tr>
              <tr><td><strong>Sum insured</strong></td><td>The most the insurer will pay in a policy year</td><td>Your top limit of cover</td></tr>
              <tr><td><strong>Co-pay</strong></td><td>A share of each claim that you must pay yourself</td><td>Your cost at claim time</td></tr>
              <tr><td><strong>Room rent limit</strong></td><td>The most the plan pays per day for the hospital room</td><td>A bigger room can reduce what is paid</td></tr>
              <tr><td><strong>Sub-limits</strong></td><td>Caps on some treatments, for example cataract surgery</td><td>The full bill may not be paid</td></tr>
              <tr><td><strong>Waiting periods</strong></td><td>Time before some illnesses are covered, for example an illness you already had</td><td>No cover during this time</td></tr>
              <tr><td><strong>Exclusions</strong></td><td>Things the plan never covers</td><td>Check these against your needs</td></tr>
            </tbody>
          </table>
          <p>Get these facts from each policy's own documents. Use the policy wording and the customer information sheet (a short key-facts summary given with the policy). Do not copy them from an advert.</p>
        </div>
        <div class="lc-card">
          <h3>Ask AI to build the table and do the maths</h3>
          <p>A weak prompt asks the AI to pick a winner. The AI does not know your needs, and it may invent plan details.</p>
          <pre><code>Which health insurance plan is best?</code></pre>
          <p>A better prompt gives the facts from the documents and asks for a table and a worked example:</p>
          <pre><code>You are an insurance teacher. This is education only.
        Here are two made-up health plans. Use only these facts.
        Plan A: premium ₹9,800, sum insured ₹5,00,000, no co-pay.
        Plan B: premium ₹8,200, sum insured ₹5,00,000, 20% co-pay.
        1. Make a comparison table with one row per feature.
        2. For a covered bill of ₹2,00,000, show what I pay under each plan.
        3. List 5 questions I should ask the insurer before I choose.
        Do not say which plan to buy.</code></pre>
          <p><strong>Check the maths yourself.</strong> Under Plan B, 20% of ₹2,00,000 is ₹40,000. The insurer pays ₹1,60,000. You can check this in a spreadsheet: if the bill is in cell B2 and the co-pay rate is in C2, use <code>=B2*C2</code> for your share. Under Plan A, you pay ₹0 of the covered amount. Plan B saves ₹9,800 − ₹8,200 = ₹1,600 a year. One such claim costs you ₹40,000.</p>
          <p>Neither plan is "better" for everyone. A person with savings may accept a co-pay. A person without savings may not. That choice is yours, ideally with a licensed insurance adviser.</p>
        </div>
        <div class="lc-card">
          <h3>The claim settlement ratio idea</h3>
          <p>The <strong>claim settlement ratio</strong> is the share of claims an insurer paid out of the claims it decided in a year. For example, a made-up insurer decided 10,000 claims and paid 9,200. Its ratio is 9,200 ÷ 10,000 = 92%. In a spreadsheet, put the claims decided in B2 and the claims paid in B3. Then use <code>=B3/B2</code> and format the cell as a percentage.</p>
          <p>It is a useful signal, but it has limits:</p>
          <ul class="lc-list">
            <li>It usually counts the <em>number</em> of claims, not the <em>money</em>. A claim that was paid only in part may still count as "paid".</li>
            <li>It changes from year to year. Look at more than one year.</li>
            <li>Different reports may measure it in slightly different ways. Read how each number was worked out.</li>
            <li>Also look at complaints data and how fast claims are paid.</li>
          </ul>
          <p>Insurers publish their claims data, and IRDAI (the Insurance Regulatory and Development Authority of India) publishes an annual report. Take the numbers from these sources. AI tools often give old or made-up ratios, so never trust a ratio from a chatbot.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: look beyond the premium</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each plan feature by the kind of cost or risk it affects.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="now" data-label="Cost now"></div>
              <div data-sorter-target="bucket" data-bucket="claim" data-label="Cost at claim time"></div>
              <div data-sorter-target="bucket" data-bucket="wait" data-label="When or what is covered"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="now" data-why="The premium is what you pay every year, even if you never claim.">Premium of ₹8,200 a year</li>
              <li data-bucket="claim" data-why="A co-pay means you pay a share of every claim yourself.">20% co-pay on every claim</li>
              <li data-bucket="claim" data-why="If you pick a room above the limit, the plan may pay less of the bill.">Room rent limit of ₹4,000 a day</li>
              <li data-bucket="claim" data-why="A sub-limit caps what is paid for one treatment, so you pay the rest.">A cap of ₹40,000 for cataract surgery</li>
              <li data-bucket="wait" data-why="An illness you already have is not covered until this time is over.">3-year waiting period for an old illness</li>
              <li data-bucket="wait" data-why="An exclusion is never covered, at any time.">Cosmetic surgery is excluded</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to build a comparison table for two sample plans and to work out your share of a sample bill. Then check every number with a calculator.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a patient insurance teacher in India. This is education only, not insurance advice. Do not recommend any plan or insurer.

        Compare these two made-up health plans for [Ananya, 28, a salaried software tester in Karnataka]. Use only these facts. Do not add facts.
        Plan A: premium [₹9,800] a year, sum insured [₹5,00,000], co-pay [none], room rent [any single private room], waiting period for existing illness [2 years].
        Plan B: premium [₹8,200] a year, sum insured [₹5,00,000], co-pay [20%], room rent [up to ₹4,000 a day], waiting period for existing illness [3 years].

        Tasks:
        1. Make a comparison table with one row per feature and a column "Why it matters".
        2. For a covered hospital bill of [₹2,00,000], show what the person pays and what the insurer pays under each plan. Show each step.
        3. Explain in 3 short sentences what a claim settlement ratio is and one limit of it.
        4. List 5 questions to ask the insurer or a licensed adviser.
        Use simple English and short sentences.</pre>
            <ul class="ai-try-checks">
              <li>With the sample numbers, Plan B means you pay ₹40,000 and the insurer pays ₹1,60,000.</li>
              <li>The table uses only the facts in the prompt, with nothing added.</li>
              <li>The AI does not say which plan to buy.</li>
              <li>It does not quote any real insurer's claim settlement ratio.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> The premium is only your cost today. Co-pays, limits, waiting periods and exclusions decide your cost on the day you claim. Put all of them in one table, and check every number yourself.
        </div>
      HTML
      starter_code: nil
    },
    7 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-fin">Finance</div>
          <h1 class="lc-title">How Claims Work</h1>
        </div>
        <p class="lc-lead">A claim is your request to the insurer to pay for a loss that the policy covers. In this lesson, you will learn the steps of a health insurance claim. You will learn the difference between a cashless claim and a reimbursement claim. You will also see which documents are needed and why claims are often rejected. Knowing this helps you, your family and your customers avoid delays. This is general education, not insurance or legal advice.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 270" role="img" aria-label="Two lanes. Cashless: tell the insurer, get pre-approval within about one hour, get treated, get final approval at discharge within about three hours, insurer pays the hospital. Reimbursement: you pay the hospital, keep bills and reports, send the claim, the insurer checks, money comes to your bank.">
            <defs><marker id="ins7a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="20" y="26" text-anchor="start" font-weight="700" fill="#6ee7b7">Cashless (at a network hospital)</text>
              <rect x="22" y="38" width="132" height="62" rx="8" fill="#1f1f44" stroke="#10b981"/><text x="88" y="64">Tell insurer</text><text x="88" y="84" font-size="11" fill="#9b99b8">or TPA</text>
              <rect x="168" y="38" width="132" height="62" rx="8" fill="#1f1f44" stroke="#10b981"/><text x="234" y="64">Pre-approval</text><text x="234" y="84" font-size="11" fill="#9b99b8">rule: within 1 hour</text>
              <rect x="314" y="38" width="132" height="62" rx="8" fill="#1f1f44" stroke="#10b981"/><text x="380" y="64">Treatment</text><text x="380" y="84" font-size="11" fill="#9b99b8">in hospital</text>
              <rect x="460" y="38" width="132" height="62" rx="8" fill="#1f1f44" stroke="#10b981"/><text x="526" y="64">Final approval</text><text x="526" y="84" font-size="11" fill="#9b99b8">rule: within 3 hours</text>
              <rect x="606" y="38" width="132" height="62" rx="8" fill="#1f1f44" stroke="#10b981"/><text x="672" y="64">Insurer pays</text><text x="672" y="84" font-size="11" fill="#9b99b8">the hospital</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ins7a)"><line x1="155" y1="69" x2="165" y2="69"/><line x1="301" y1="69" x2="311" y2="69"/><line x1="447" y1="69" x2="457" y2="69"/><line x1="593" y1="69" x2="603" y2="69"/></g>
              <text x="20" y="146" text-anchor="start" font-weight="700" fill="#93c5fd">Reimbursement (any hospital)</text>
              <rect x="22" y="158" width="132" height="62" rx="8" fill="#27274e" stroke="#3b82f6"/><text x="88" y="184">You pay</text><text x="88" y="204" font-size="11" fill="#9b99b8">the hospital</text>
              <rect x="168" y="158" width="132" height="62" rx="8" fill="#27274e" stroke="#3b82f6"/><text x="234" y="184">Keep papers</text><text x="234" y="204" font-size="11" fill="#9b99b8">bills and reports</text>
              <rect x="314" y="158" width="132" height="62" rx="8" fill="#27274e" stroke="#3b82f6"/><text x="380" y="184">Send claim</text><text x="380" y="204" font-size="11" fill="#9b99b8">form and papers</text>
              <rect x="460" y="158" width="132" height="62" rx="8" fill="#27274e" stroke="#3b82f6"/><text x="526" y="184">Insurer checks</text><text x="526" y="204" font-size="11" fill="#9b99b8">against policy</text>
              <rect x="606" y="158" width="132" height="62" rx="8" fill="#27274e" stroke="#3b82f6"/><text x="672" y="184">Money to you</text><text x="672" y="204" font-size="11" fill="#9b99b8">in your bank</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ins7a)"><line x1="155" y1="189" x2="165" y2="189"/><line x1="301" y1="189" x2="311" y2="189"/><line x1="447" y1="189" x2="457" y2="189"/><line x1="593" y1="189" x2="603" y2="189"/></g>
              <text x="380" y="252" font-size="12" fill="#9b99b8">You pay for items not covered. Timelines: IRDAI health circular, May 2024.</text>
            </g>
          </svg>
          <figcaption>Cashless: the insurer pays the hospital directly. Reimbursement: you pay first, and the insurer pays you back.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Cashless or reimbursement?</h3>
          <p>Meet Ravi and Meena, a made-up couple in Tamil Nadu with one child. Meena needs a planned surgery. Their family health policy is from Suraksha General Insurance, a made-up insurer.</p>
          <table class="lc-table">
            <thead><tr><th></th><th>Cashless claim</th><th>Reimbursement claim</th></tr></thead>
            <tbody>
              <tr><td><strong>Hospital</strong></td><td>A network hospital (one that has an agreement with the insurer)</td><td>Any hospital that meets the policy's rules</td></tr>
              <tr><td><strong>Who pays the hospital</strong></td><td>The insurer, for the covered amount</td><td>You pay first</td></tr>
              <tr><td><strong>What you do</strong></td><td>Show your health card at the insurance desk. The hospital sends the request.</td><td>Keep all bills and reports. Send the claim form.</td></tr>
              <tr><td><strong>You still pay</strong></td><td>Items not covered, co-pay, amounts above limits</td><td>The same, and you wait for the money</td></tr>
            </tbody>
          </table>
          <p>Many insurers use a <strong>TPA</strong> (third-party administrator: a company that handles claims for the insurer). Tell the insurer or TPA early. For a planned stay, do it before admission. For an emergency, do it as soon as you can. The policy states the time limits.</p>
          <p><strong>Worked example (made-up):</strong> Meena's final bill is ₹1,40,000. Items the policy does not cover come to ₹6,000, so the covered amount is ₹1,40,000 − ₹6,000 = ₹1,34,000. Their made-up policy has a 10% co-pay: 10% of ₹1,34,000 = ₹13,400. The insurer pays ₹1,34,000 − ₹13,400 = ₹1,20,600 to the hospital. Ravi pays ₹6,000 + ₹13,400 = ₹19,400 at discharge. Check: ₹1,20,600 + ₹19,400 = ₹1,40,000.</p>
        </div>
        <div class="lc-card">
          <h3>Documents and the current rules (general)</h3>
          <p>A health claim usually needs the claim form and the final hospital bill with a breakdown. It also needs the discharge summary (the doctor's report of the stay). Test reports, prescriptions, pharmacy bills and payment receipts are also common. For an accident, a police report may also be needed.</p>
          <p>IRDAI's Master Circular on Health Insurance Business (May 2024) set some rules for insurers. In general words:</p>
          <ul class="lc-list">
            <li>Insurers should decide a cashless request at once, and in no more than one hour of receiving it.</li>
            <li>At discharge, final approval should come within three hours of the hospital's request. If it is late, the insurer should bear any extra hospital charges.</li>
            <li>After a claim is reported, the insurer or TPA should collect the needed documents from the hospital. The policyholder should not have to submit them. Still keep copies of all your bills and reports.</li>
            <li>A claim can be rejected only with the approval of a senior committee at the insurer, such as its Claims Review Committee. If a claim is rejected or cut, the reason must be given with reference to the policy terms.</li>
            <li>After 60 months of continuous cover, a claim cannot be refused for non-disclosure (not telling a fact), except for proven fraud.</li>
          </ul>
          <p>Rules change. Check the current rules on the IRDAI website and read your own policy.</p>
        </div>
        <div class="lc-card">
          <h3>Common reasons claims are rejected</h3>
          <table class="lc-table">
            <thead><tr><th>Reason</th><th>What it means</th></tr></thead>
            <tbody>
              <tr><td>Non-disclosure</td><td>An illness or habit was not told when buying the policy</td></tr>
              <tr><td>Waiting period</td><td>The illness is covered only after a waiting period that has not ended</td></tr>
              <tr><td>Exclusion</td><td>The policy never covers this treatment</td></tr>
              <tr><td>Policy not active</td><td>The premium was not paid, so the policy lapsed (stopped)</td></tr>
              <tr><td>No hospital stay needed</td><td>The treatment could be done without admission, and the policy does not cover it</td></tr>
              <tr><td>Late or missing information</td><td>The claim was reported late, or key papers are missing</td></tr>
            </tbody>
          </table>
          <p>AI can explain a rejection letter in simple words. It can also list the documents your policy asks for. But the AI may be wrong about your policy. Always check its answer against the policy wording.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: steps of a planned cashless claim</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put the steps of Meena's planned cashless claim in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Check that the hospital is in the insurer's network</li>
              <li data-order="2">Tell the insurer or TPA before admission</li>
              <li data-order="3">The hospital sends the pre-approval request with the doctor's notes</li>
              <li data-order="4">Meena gets the surgery and stays in hospital</li>
              <li data-order="5">The hospital asks for final approval at discharge</li>
              <li data-order="6">Ravi pays the co-pay and the items not covered, and keeps the bill</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to explain the claim steps and make a document checklist for a sample situation. Then compare it with a real policy wording.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a patient health insurance teacher in India. This is general education only, not insurance or legal advice.

        Made-up situation: [Meena, from Tamil Nadu,] needs a [planned knee surgery]. She has a family health policy from [Suraksha General Insurance], a made-up insurer. The hospital [is] in the insurer's network.

        Tasks:
        1. Explain the difference between a cashless claim and a reimbursement claim in 4 short sentences.
        2. List the steps for her claim in order, from before admission to after discharge.
        3. Make a checklist of documents usually needed for a health claim.
        4. List 5 common reasons health claims are rejected, with one way to avoid each.
        5. Explain how to raise a complaint if a claim is rejected: the insurer's grievance team first, then IRDAI's Bima Bharosa portal or the Insurance Ombudsman.
        Say that exact rules and timelines change, and the person should check the policy and the IRDAI website.
        Use simple English.</pre>
            <ul class="ai-try-checks">
              <li>The steps are in a sensible order: check network, tell the insurer, pre-approval, treatment, final approval.</li>
              <li>The answer does not invent exact deadlines or fees as facts.</li>
              <li>The complaint route starts with the insurer, then Bima Bharosa or the Ombudsman.</li>
              <li>It tells you to check the policy wording and official sources.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Most claim problems start before the claim: an illness not disclosed, a waiting period not over, or late notice. Know the steps and papers early. If a claim is rejected, the insurer must give the reason in writing, and you can complain.
        </div>
      HTML
      starter_code: nil
    },
    8 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-fin">Finance</div>
          <h1 class="lc-title">Processing Claims Documents with AI</h1>
        </div>
        <p class="lc-lead">A claim file has many papers: bills, a discharge summary, test reports and receipts. Reading them takes time, and small mistakes are easy to miss. In this lesson, you will use AI to list bill items, check them against the policy and flag missing papers. You will also learn what a person must still check and decide. AI helps you read. It never approves or rejects a claim.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 260" role="img" aria-label="A five-step flow: sample or masked documents, AI lists the items, compare with policy terms, flag gaps and questions, and a person checks and decides. Below, a flag list shows a total that matches, one item not covered, and one missing pharmacy bill.">
            <defs><marker id="ins8a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="22" y="20" width="132" height="62" rx="8" fill="#1f1f44" stroke="#22d3ee"/><text x="88" y="46">Documents</text><text x="88" y="66" font-size="11" fill="#9b99b8">sample or masked</text>
              <rect x="168" y="20" width="132" height="62" rx="8" fill="#1f1f44" stroke="#8b5cf6"/><text x="234" y="46">AI lists items</text><text x="234" y="66" font-size="11" fill="#9b99b8">table of charges</text>
              <rect x="314" y="20" width="132" height="62" rx="8" fill="#1f1f44" stroke="#8b5cf6"/><text x="380" y="46">Compare</text><text x="380" y="66" font-size="11" fill="#9b99b8">with policy terms</text>
              <rect x="460" y="20" width="132" height="62" rx="8" fill="#1f1f44" stroke="#f59e0b"/><text x="526" y="46">Flag gaps</text><text x="526" y="66" font-size="11" fill="#9b99b8">and questions</text>
              <rect x="606" y="20" width="132" height="62" rx="8" fill="#1f1f44" stroke="#10b981"/><text x="672" y="46">Person decides</text><text x="672" y="66" font-size="11" fill="#9b99b8">checks every flag</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ins8a)"><line x1="155" y1="51" x2="165" y2="51"/><line x1="301" y1="51" x2="311" y2="51"/><line x1="447" y1="51" x2="457" y2="51"/><line x1="593" y1="51" x2="603" y2="51"/></g>
              <rect x="120" y="110" width="520" height="136" rx="10" fill="#27274e" stroke="#4b4a78"/>
              <text x="380" y="136" font-weight="700" fill="#c4b5fd">Flags for a made-up claim</text>
              <text x="140" y="164" text-anchor="start" fill="#6ee7b7">OK</text><text x="190" y="164" text-anchor="start">Bill lines add up to ₹74,000</text>
              <text x="140" y="192" text-anchor="start" fill="#fcd34d">Check</text><text x="190" y="192" text-anchor="start">Consumables ₹2,300: not covered by policy</text>
              <text x="140" y="220" text-anchor="start" fill="#f9a8d4">Missing</text><text x="200" y="220" text-anchor="start">Pharmacy bills for ₹8,500 of medicines</text>
            </g>
          </svg>
          <figcaption>AI reads and flags. A trained person checks each flag against the papers and the policy, and makes the decision.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>First, protect the data</h3>
          <p>Health papers hold sensitive personal data: names, illnesses, test results and ID numbers. India's Digital Personal Data Protection Act, 2023 sets duties for anyone who handles such data. Your company will also have its own rules.</p>
          <ul class="lc-list">
            <li>At work, use only the AI tools your company has approved for claims data.</li>
            <li>Never paste real claim files into a free public chatbot.</li>
            <li>To practise, use made-up papers, or remove names, policy numbers, phone numbers and ID numbers first.</li>
            <li>Keep the original papers as the only source of truth. The AI's table is just a working copy.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Worked example: a made-up claim for Meena</h3>
          <p>Meena's made-up policy from Suraksha General Insurance has a room rent limit of ₹5,000 a day and a 10% co-pay. It does not cover consumables (items like gloves and masks) in this example. Here is her made-up bill:</p>
          <table class="lc-table">
            <thead><tr><th>Item</th><th>Amount</th><th>Check against policy</th></tr></thead>
            <tbody>
              <tr><td>Room: 3 days × ₹4,000</td><td>₹12,000</td><td>Within the ₹5,000 daily limit</td></tr>
              <tr><td>Surgery and doctor fees</td><td>₹45,000</td><td>Covered</td></tr>
              <tr><td>Medicines</td><td>₹8,500</td><td>Covered, but pharmacy bills are missing</td></tr>
              <tr><td>Lab tests</td><td>₹6,200</td><td>Covered, reports attached</td></tr>
              <tr><td>Consumables</td><td>₹2,300</td><td>Not covered in this policy</td></tr>
              <tr><td><strong>Total</strong></td><td><strong>₹74,000</strong></td><td>Lines add up</td></tr>
            </tbody>
          </table>
          <p><strong>The maths, if the papers are complete:</strong> Covered amount = ₹74,000 − ₹2,300 = ₹71,700. Co-pay = 10% of ₹71,700 = ₹7,170. Insurer pays ₹71,700 − ₹7,170 = ₹64,530. Meena pays ₹2,300 + ₹7,170 = ₹9,470. Check: ₹64,530 + ₹9,470 = ₹74,000.</p>
          <p>Do this maths in a spreadsheet, not only in the chat. If the amounts are in D2 to D6, use <code>=SUM(D2:D6)</code> for the total. AI tools can make adding mistakes, especially with Indian number formats like ₹1,40,000.</p>
        </div>
        <div class="lc-card">
          <h3>A good prompt for reading a claim</h3>
          <pre><code>You are helping a claims assistant. Use only the text below.
        1. List every bill item with its amount in a table.
        2. Add up the items and say if the total matches the bill.
        3. Compare each item with these policy terms: [terms].
        4. List documents that seem missing, and questions for the hospital.
        Do not approve or reject the claim. Mark anything you are unsure of.</code></pre>
          <p>The last line matters. The AI must not decide the claim. A claim decision needs a trained person, the full papers and the insurer's rules. A rejection also needs approval inside the insurer, as the rules require.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: a claims reading session</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Prompt">A claims assistant pastes Meena's made-up bill, with names and numbers removed. She asks the AI to list the items, total them and compare them with the policy terms.</li>
              <li data-kind="answer" data-label="AI table">The AI lists five items. It says the total is ₹74,000, and it marks consumables of ₹2,300 as not covered.</li>
              <li data-kind="tool" data-label="Spreadsheet">The assistant types the five amounts into a spreadsheet and uses =SUM(D2:D6).</li>
              <li data-kind="result" data-label="Total">The spreadsheet shows ₹74,000. The total matches the bill.</li>
              <li data-kind="warn" data-label="Mistake">The AI says the co-pay is ₹7,400. That is 10% of the full bill. The co-pay should be 10% of the covered ₹71,700, which is ₹7,170.</li>
              <li data-kind="check" data-label="Papers">The assistant sees that pharmacy bills for ₹8,500 are missing. She asks the hospital for them.</li>
              <li data-kind="check" data-label="Decision">A senior claims officer reviews the file and makes the decision.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Give AI a made-up bill and policy terms. Ask it to list, total and flag the items. Then check its maths in a spreadsheet.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are helping a health claims assistant learn to read claim papers. This is a training exercise with made-up data. Do not approve or reject the claim.

        Made-up bill for [patient A]:
        - Room: [3 days × ₹4,000 = ₹12,000]
        - Surgery and doctor fees: [₹45,000]
        - Medicines: [₹8,500] (pharmacy bills: [not attached])
        - Lab tests: [₹6,200] (reports: [attached])
        - Consumables: [₹2,300]
        - Bill total: [₹74,000]

        Made-up policy terms: room rent up to [₹5,000] a day, co-pay [10%] of the covered amount, consumables [not covered].

        Tasks:
        1. Make a table of items with a column "Matches policy? (Yes / No / Unsure)".
        2. Add up the items and say if they match the bill total. Show the sum.
        3. Work out the covered amount, the co-pay, what the insurer pays and what the patient pays. Show each step.
        4. List missing documents and 3 questions for the hospital.
        Mark anything you are not sure about.</pre>
            <ul class="ai-try-checks">
              <li>With the sample numbers: covered ₹71,700, co-pay ₹7,170, insurer ₹64,530, patient ₹9,470.</li>
              <li>The co-pay is worked out on the covered amount, not the full bill.</li>
              <li>It flags the missing pharmacy bills.</li>
              <li>It does not approve or reject the claim.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> AI is a fast reader, not a claims officer. Let it list, total and flag. Then check the maths in a spreadsheet, check each flag against the papers, and leave the decision to a trained person.
        </div>
      HTML
      starter_code: nil
    },
    9 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-fin">Finance</div>
          <h1 class="lc-title">Writing Clear Customer Letters</h1>
        </div>
        <p class="lc-lead">A claim letter often reaches someone who is ill, worried or short of money. A confusing letter makes things worse and leads to more calls and complaints. In this lesson, you will use AI to draft claim updates, explain rejection reasons kindly and write appeals. You will learn a simple structure for every letter. You will also learn what a person must check before any letter is sent.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 290" role="img" aria-label="A claim letter with six parts in order: claim details, the decision, the reason with the policy clause, the amounts, next steps and how to complain, and a contact person.">
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <rect x="20" y="14" width="460" height="264" rx="10" fill="#1f1f44" stroke="#a855f7"/>
              <text x="40" y="38" font-weight="700" fill="#d8b4fe">Suraksha General Insurance (made-up)</text>
              <rect x="40" y="50" width="420" height="30" rx="6" fill="#27274e" stroke="#3b82f6"/><text x="52" y="70">1. Claim number, patient, date</text>
              <rect x="40" y="86" width="420" height="30" rx="6" fill="#27274e" stroke="#10b981"/><text x="52" y="106">2. Decision in the first line</text>
              <rect x="40" y="122" width="420" height="30" rx="6" fill="#27274e" stroke="#f59e0b"/><text x="52" y="142">3. Reason, with the policy clause</text>
              <rect x="40" y="158" width="420" height="30" rx="6" fill="#27274e" stroke="#ec4899"/><text x="52" y="178">4. Amounts: billed, paid, not paid</text>
              <rect x="40" y="194" width="420" height="30" rx="6" fill="#27274e" stroke="#22d3ee"/><text x="52" y="214">5. Next steps and how to complain</text>
              <rect x="40" y="230" width="420" height="30" rx="6" fill="#27274e" stroke="#8b5cf6"/><text x="52" y="250">6. A named contact and helpline</text>
              <text x="510" y="70" fill="#9b99b8">Who and what</text>
              <text x="510" y="106" fill="#9b99b8">No hunting for the answer</text>
              <text x="510" y="142" fill="#9b99b8">Plain words plus the clause</text>
              <text x="510" y="178" fill="#9b99b8">Numbers that add up</text>
              <text x="510" y="214" fill="#9b99b8">Grievance, Bima Bharosa,</text>
              <text x="510" y="230" fill="#9b99b8">Insurance Ombudsman</text>
              <text x="510" y="256" fill="#9b99b8">A real way to ask</text>
            </g>
          </svg>
          <figcaption>Six parts, in this order, make a claim letter clear. The decision comes first, and the customer always learns what they can do next.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Three kinds of letters</h3>
          <table class="lc-table">
            <thead><tr><th>Letter</th><th>Goal</th><th>Must include</th></tr></thead>
            <tbody>
              <tr><td><strong>Claim update</strong></td><td>Tell the customer where the claim is</td><td>What is done, what is needed from them, and by when</td></tr>
              <tr><td><strong>Partial payment or rejection</strong></td><td>Explain the decision kindly and clearly</td><td>The reason in plain words, the policy clause, the amounts and how to complain</td></tr>
              <tr><td><strong>Appeal (from the customer)</strong></td><td>Ask the insurer to look at the decision again</td><td>Claim number, the point you disagree with, facts and papers</td></tr>
            </tbody>
          </table>
          <p>Under IRDAI's 2024 health circular, when a claim is rejected or paid only in part, the insurer must give full details. These details must point to the policy terms used. The customer information sheet given with a health policy must also explain the complaint route, including the Insurance Ombudsman's contact details. Check the current rules on the IRDAI website.</p>
        </div>
        <div class="lc-card">
          <h3>Weak prompt, better prompt</h3>
          <pre><code>Write a claim rejection letter.</code></pre>
          <p>This gives a cold, general letter. It may even invent a reason. A better prompt gives the facts and the tone:</p>
          <pre><code>You are writing for a health insurer's claims team.
        Write a partial payment letter to a customer. Use only these facts:
        claim [number], bill ₹74,000, paid ₹64,530, not paid ₹9,470.
        Reasons: consumables ₹2,300 not covered (clause [x]);
        10% co-pay ₹7,170 (clause [y]).
        Tone: kind, clear, respectful. Short sentences. No legal words.
        Put the decision first. Show the amounts in a small table.
        End with how to ask questions or complain.</code></pre>
          <p>Check the numbers: ₹2,300 + ₹7,170 = ₹9,470 not paid. ₹74,000 − ₹9,470 = ₹64,530 paid.</p>
        </div>
        <div class="lc-card">
          <h3>Explaining a rejection kindly</h3>
          <p>Kind does not mean vague. Say the decision clearly, then explain it in plain words.</p>
          <pre><code>Dear Meena,
        We are sorry to tell you that we cannot pay this claim.
        Your policy started on [date]. It has a 2-year waiting period
        for knee replacement (policy clause [x]). Your surgery was on
        [date], before this waiting period ended.
        If you think we have made a mistake, please write to our
        grievance team at [email]. You can also use IRDAI's Bima Bharosa
        portal or contact the Insurance Ombudsman.</code></pre>
          <p><strong>Customers can appeal too.</strong> Ravi can ask AI to help him write a short, polite appeal. It should give the claim number, the exact point he disagrees with, the facts and a list of attached papers. The usual route is the insurer's grievance team first. If he is not happy with the reply, he can use IRDAI's Bima Bharosa portal (an online system for insurance complaints). He can also approach the Insurance Ombudsman (a free, independent office for insurance complaints). Time limits and rules apply, so check the official websites.</p>
          <p><strong>Before any letter is sent:</strong> a person checks every fact, date, amount and clause against the file. The team lead or compliance team approves the template. AI must never add reasons that are not in the file.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: keep or fix?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each line from a draft letter. Is it clear and kind, or does it need fixing?</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="keep" data-label="Keep"></div>
              <div data-sorter-target="bucket" data-bucket="fix" data-label="Fix"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="keep" data-why="The decision comes first, in plain words.">We have approved ₹64,530 of your ₹74,000 claim.</li>
              <li data-bucket="fix" data-why="It names no clause and gives no plain reason. The customer cannot understand or challenge it.">Your claim is inadmissible as per terms and conditions.</li>
              <li data-bucket="keep" data-why="It gives the reason, the amount and the policy clause.">Consumables of ₹2,300 are not covered under clause 4.4 of your policy.</li>
              <li data-bucket="fix" data-why="Blaming the customer is unkind and does not help. State the facts instead.">You should have read your policy before buying it.</li>
              <li data-bucket="keep" data-why="It tells the customer how to complain. Customers should always know the complaint route.">If you disagree, please write to our grievance team. You can also contact the Insurance Ombudsman.</li>
              <li data-bucket="fix" data-why="A letter must not promise what the claims team has not decided.">Do not worry, we will surely pay the rest later.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to draft a kind, clear partial payment letter from sample facts. Then check every number and clause.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a writer for the claims team of [Suraksha General Insurance], a made-up health insurer in India. This is a training exercise with made-up data.

        Write a partial payment letter to [Meena, Tamil Nadu]. Use only these facts. Do not add any reason or fact.
        - Claim number: [SGI-CL-0000]
        - Bill total: [₹74,000]
        - Consumables not covered: [₹2,300] (policy clause [4.4])
        - Co-pay [10%] of the covered amount: [₹7,170] (policy clause [6.1])
        - Amount paid to the hospital: [₹64,530]

        Rules:
        1. Put the decision in the first two lines.
        2. Explain each reason in plain words, with its clause.
        3. Show billed, paid and not paid amounts in a small table.
        4. Say how to ask questions and how to complain: the grievance team first, then IRDAI's Bima Bharosa portal or the Insurance Ombudsman.
        5. Kind and respectful tone. Short sentences. No legal words. No promises.
        Under 200 words.</pre>
            <ul class="ai-try-checks">
              <li>The amounts add up: ₹64,530 paid + ₹9,470 not paid = ₹74,000.</li>
              <li>Each reason has its clause, and no new reason is added.</li>
              <li>The decision is in the first two lines.</li>
              <li>The complaint route is included and no promise is made.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A good claim letter gives the decision first, the reason in plain words with the clause, amounts that add up, and a clear way to complain. AI drafts fast, but a person must check every fact before it is sent.
        </div>
      HTML
      starter_code: nil
    },
    10 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-fin">Finance</div>
          <h1 class="lc-title">Underwriting and Risk Pricing</h1>
        </div>
        <p class="lc-lead">Why does one person pay more for the same cover than another? The answer is underwriting. <strong>Underwriting</strong> is how an insurer decides whether to accept a risk, and on what terms. In this lesson, you will learn the main risk factors, why premiums differ and how a simple price is built. You will also learn the limits of the data insurers use, and where AI helps an underwriter. This is education only, not insurance advice.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 290" role="img" aria-label="Risk factors such as age and health, habits, past claims and the property or vehicle go to the underwriter, helped by AI summaries. The underwriter picks one of five outcomes: accept at standard price, accept with extra premium, accept with an exclusion, ask for more information, or decline.">
            <defs><marker id="ins10a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="110" y="24" font-weight="700" fill="#93c5fd">Risk factors</text>
              <rect x="20" y="36" width="180" height="44" rx="8" fill="#1f1f44" stroke="#3b82f6"/><text x="110" y="63">Age and health</text>
              <rect x="20" y="92" width="180" height="44" rx="8" fill="#1f1f44" stroke="#3b82f6"/><text x="110" y="119">Habits (smoking)</text>
              <rect x="20" y="148" width="180" height="44" rx="8" fill="#1f1f44" stroke="#3b82f6"/><text x="110" y="175">Past claims</text>
              <rect x="20" y="204" width="180" height="44" rx="8" fill="#1f1f44" stroke="#3b82f6"/><text x="110" y="231">Property or vehicle</text>
              <rect x="280" y="100" width="180" height="84" rx="10" fill="#27274e" stroke="#a855f7"/>
              <text x="370" y="132" font-weight="700" fill="#d8b4fe">Underwriter</text>
              <text x="370" y="154" font-size="11" fill="#9b99b8">AI helps summarise</text>
              <text x="370" y="170" font-size="11" fill="#9b99b8">a person decides</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#ins10a)">
                <line x1="202" y1="58" x2="276" y2="124"/><line x1="202" y1="114" x2="276" y2="134"/><line x1="202" y1="170" x2="276" y2="152"/><line x1="202" y1="226" x2="276" y2="162"/>
                <line x1="462" y1="120" x2="536" y2="48"/><line x1="462" y1="132" x2="536" y2="98"/><line x1="462" y1="142" x2="536" y2="148"/><line x1="462" y1="152" x2="536" y2="198"/><line x1="462" y1="164" x2="536" y2="248"/>
              </g>
              <text x="640" y="18" font-weight="700" fill="#6ee7b7">Possible outcomes</text>
              <rect x="540" y="28" width="200" height="38" rx="8" fill="#1f1f44" stroke="#10b981"/><text x="640" y="52">Accept, standard price</text>
              <rect x="540" y="78" width="200" height="38" rx="8" fill="#1f1f44" stroke="#f59e0b"/><text x="640" y="102">Accept, extra premium</text>
              <rect x="540" y="128" width="200" height="38" rx="8" fill="#1f1f44" stroke="#f59e0b"/><text x="640" y="152">Accept, with exclusion</text>
              <rect x="540" y="178" width="200" height="38" rx="8" fill="#1f1f44" stroke="#22d3ee"/><text x="640" y="202">Ask for more details</text>
              <rect x="540" y="228" width="200" height="38" rx="8" fill="#1f1f44" stroke="#ec4899"/><text x="640" y="252">Decline</text>
            </g>
          </svg>
          <figcaption>Risk factors go to the underwriter. AI can summarise the facts, but a person picks the outcome and can explain it.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Why premiums differ</h3>
          <p>Insurance works by pooling: many people pay premiums, and the pool pays the claims of the few who have a loss. So each person's premium should roughly match the risk they bring to the pool. Here are common risk factors by type of insurance.</p>
          <table class="lc-table">
            <thead><tr><th>Insurance</th><th>Common risk factors</th></tr></thead>
            <tbody>
              <tr><td><strong>Health</strong></td><td>Age, existing illnesses, family history, smoking, sum insured, city</td></tr>
              <tr><td><strong>Life (term)</strong></td><td>Age, health, smoking, job, policy length, sum assured</td></tr>
              <tr><td><strong>Motor</strong></td><td>Vehicle model and age, city, past claims, add-ons chosen</td></tr>
              <tr><td><strong>Shop or fire</strong></td><td>Building type, what is stored, fire safety equipment, past losses</td></tr>
            </tbody>
          </table>
          <p>For example, Sweet Crumbs, a small made-up bakery in Maharashtra, uses ovens and gas every day. Its fire cover may cost more than cover for a shop that only stores books. Fire extinguishers and safe wiring may help its case.</p>
        </div>
        <div class="lc-card">
          <h3>How a simple price is built (made-up numbers)</h3>
          <p>Real insurers use actuaries (experts who price risk using statistics) and approved rate tables. This made-up example only shows the idea.</p>
          <ul class="lc-list">
            <li>A group has 1,000 similar people, aged 26 to 35.</li>
            <li>Past data suggests about 5% of them will claim in a year. That is 1,000 × 5% = 50 claims.</li>
            <li>The average claim is about ₹1,60,000. Expected claims = 50 × ₹1,60,000 = ₹80,00,000.</li>
            <li>Per person: ₹80,00,000 ÷ 1,000 = ₹8,000. This is the risk cost before expenses.</li>
            <li>The insurer then adds its costs (staff, commissions, systems) and a margin. So the final premium is higher.</li>
          </ul>
          <p>If a person has a higher risk, the insurer may add a <strong>loading</strong> (an extra charge). For example, a made-up 20% loading on ₹8,000 adds ₹1,600, giving ₹9,600 before expenses. In a spreadsheet: <code>=B2*(1+C2)</code>, where B2 is the base price and C2 is the loading.</p>
        </div>
        <div class="lc-card">
          <h3>Data, AI and their limits</h3>
          <p>AI helps underwriters read proposal forms, medical reports and inspection notes faster. It can summarise the key facts and point out missing answers. But the data has limits:</p>
          <ul class="lc-list">
            <li><strong>Old data:</strong> past claims may not match today's costs or treatments.</li>
            <li><strong>Missing groups:</strong> if few people like you were insured before, the data says little about you.</li>
            <li><strong>Proxies:</strong> a factor like a pin code can stand in for income or community. That can be unfair.</li>
            <li><strong>Errors:</strong> AI can misread a report or a date. Always check against the original papers.</li>
          </ul>
          <p>An underwriting decision affects people's lives. The insurer must follow IRDAI's rules and its own board-approved underwriting policy. A person should make and explain the final decision. The fairness lesson later in this course goes deeper.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: an underwriting session</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Prompt">An underwriter shares a made-up, masked proposal for Sweet Crumbs' shop fire cover. She asks the AI to summarise the risk facts and list any missing answers.</li>
              <li data-kind="answer" data-label="AI summary">The AI lists: two gas ovens, a wooden storage rack, one fire extinguisher, and no past losses. It says the question about wiring age is unanswered.</li>
              <li data-kind="check" data-label="Check">The underwriter checks each fact against the form. The facts match.</li>
              <li data-kind="warn" data-label="Bias">The AI also says "shops in this area are risky, so decline". There is no evidence for this. The area may be a proxy for the owner's community. The underwriter ignores this line.</li>
              <li data-kind="tool" data-label="Request">The underwriter emails the bakery owner to ask for the wiring age and a photo of the extinguisher.</li>
              <li data-kind="result" data-label="Reply">The owner replies that the wiring is 3 years old. The extinguisher is new.</li>
              <li data-kind="check" data-label="Decision">The underwriter applies the approved rate table, accepts the risk and writes down the reasons.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to explain why premiums differ, using a made-up price example. Then check its maths.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an insurance teacher in India. This is education only, not insurance advice. Do not name or recommend any real insurer or product.

        Explain underwriting and risk pricing to [a small business owner who runs a bakery in Maharashtra].

        Tasks:
        1. Explain what underwriting is in 3 short sentences.
        2. List 5 risk factors for [shop fire insurance] and say why each one changes the risk.
        3. Work through this made-up price example step by step: [1,000] similar customers, [5%] expected to claim in a year, average claim [₹1,60,000]. Work out the expected claims in total and per customer. Then add a [20%] loading for a higher-risk customer.
        4. Explain 3 limits of the data insurers use, including one fairness risk.
        5. List 4 things the owner can do or ask about that may affect the premium.
        Say that real prices come from each insurer's approved rates. Use simple English.</pre>
            <ul class="ai-try-checks">
              <li>With the sample numbers: 50 claims, ₹80,00,000 in total, ₹8,000 per customer, ₹9,600 with the loading.</li>
              <li>It explains that expenses and margin are added on top.</li>
              <li>It names at least one fairness or data limit.</li>
              <li>It does not quote real premiums or recommend a product.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A premium reflects the expected cost of your risk, plus the insurer's costs and margin. AI can summarise the risk facts quickly. A person must check the data, watch for unfair factors and make the final decision.
        </div>
      HTML
      starter_code: nil
    },
    11 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-fin">Finance</div>
          <h1 class="lc-title">Claim Fraud Signals</h1>
        </div>
        <p class="lc-lead">Most insurance claims are honest. A few are not. Insurers use rules and AI to spot <strong>fraud signals</strong> (signs that a claim needs a closer look). In this lesson you will learn the common signals: inflated bills, staged accidents and duplicate claims. You will also learn to balance speed and checks. Honest customers should get paid quickly, and only a person can decide that a claim is false. This lesson teaches detection only. It is general education, not legal or insurance advice.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 305" role="img" aria-label="New claims go through a signal check. Claims with low signals are fast tracked. Claims with some signals get a person's review. Claims with strong signals go to an investigator, and a person decides.">
            <defs><marker id="ins11a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="10" y="110" width="130" height="60" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="75" y="136">New claims</text>
              <text x="75" y="156" font-size="11" fill="#9b99b8">bills, photos, forms</text>
              <line x1="142" y1="140" x2="186" y2="140" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ins11a)"/>
              <rect x="190" y="100" width="170" height="80" rx="10" fill="#27274e" stroke="#8b5cf6"/>
              <text x="275" y="134" font-weight="700" fill="#c4b5fd">Signal check</text>
              <text x="275" y="156" font-size="11" fill="#9b99b8">rules + AI score</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#ins11a)">
                <path d="M362,130 Q395,50 426,50"/>
                <line x1="362" y1="140" x2="426" y2="140"/>
                <path d="M362,150 Q395,230 426,230"/>
              </g>
              <rect x="430" y="20" width="310" height="60" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="585" y="46" fill="#6ee7b7">Low signals: fast track</text>
              <text x="585" y="66" font-size="11" fill="#9b99b8">most claims, paid quickly</text>
              <rect x="430" y="110" width="310" height="60" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="585" y="136" fill="#fcd34d">Some signals: person reviews</text>
              <text x="585" y="156" font-size="11" fill="#9b99b8">ask for missing papers</text>
              <rect x="430" y="200" width="310" height="60" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="585" y="226" fill="#f9a8d4">Strong signals: investigator</text>
              <text x="585" y="246" font-size="11" fill="#9b99b8">a person decides, never the AI</text>
              <text x="380" y="292" font-size="12" fill="#9b99b8">A flag means "look again". It is not proof of fraud.</text>
            </g>
          </svg>
          <figcaption>Signals sort claims by how much checking they need. They never decide the claim.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Three common kinds of fraud signal</h3>
          <table class="lc-table">
            <thead><tr><th>Kind</th><th>What it means</th><th>Signals a checker looks for</th></tr></thead>
            <tbody>
              <tr><td><strong>Inflated bill</strong></td><td>A real loss, but the bill asks for more than the real cost.</td><td>Days billed are more than days in hospital. Rates are far above other bills for the same work. Items do not match the treatment or the damage.</td></tr>
              <tr><td><strong>Staged accident</strong></td><td>The accident was planned, or the story does not match what happened.</td><td>Damage does not fit the story. The claim comes very soon after the policy starts. The same people, garage or witness appear in many claims.</td></tr>
              <tr><td><strong>Duplicate claim</strong></td><td>The same loss is claimed twice, or with two insurers for more than the total cost.</td><td>The same bill number or the same photos appear in two claims. The total paid by all insurers is more than the bill.</td></tr>
            </tbody>
          </table>
          <p>Each signal alone has innocent reasons. A person may buy a policy and have a real accident a week later. A garage may be popular because it is good. That is why signals only start a check.</p>
        </div>
        <div class="lc-card">
          <h3>Worked example: two simple checks in a spreadsheet</h3>
          <p>Here are five made-up motor claims at <strong>Suraksha General Insurance</strong>, a made-up insurer. Claim C-103 is for the delivery van of Sweet Crumbs, a small bakery in Maharashtra.</p>
          <table class="lc-table">
            <thead><tr><th>Claim</th><th>Policy start</th><th>Loss date</th><th>Garage</th><th>Amount (₹)</th><th>Bill no.</th><th>Days</th></tr></thead>
            <tbody>
              <tr><td>C-101</td><td>01-Apr-2026</td><td>12-Aug-2026</td><td>Shree Motors</td><td>38,000</td><td>SM-2231</td><td>133</td></tr>
              <tr><td>C-102</td><td>20-Jul-2026</td><td>02-Aug-2026</td><td>City Auto Works</td><td>1,45,000</td><td>CA-0917</td><td>13</td></tr>
              <tr><td>C-103</td><td>10-Jan-2026</td><td>05-Aug-2026</td><td>Shree Motors</td><td>22,500</td><td>SM-2198</td><td>207</td></tr>
              <tr><td>C-104</td><td>15-Mar-2026</td><td>18-Aug-2026</td><td>City Auto Works</td><td>41,000</td><td>CA-0917</td><td>156</td></tr>
              <tr><td>C-105</td><td>01-Feb-2026</td><td>21-Aug-2026</td><td>Deccan Car Care</td><td>27,800</td><td>DC-3310</td><td>201</td></tr>
            </tbody>
          </table>
          <p>The data starts in row 2. Column B is the policy start, C is the loss date and F is the bill number. These formulas work in Excel and Google Sheets:</p>
          <pre><code>Days from policy start to loss:   =C2-B2
        Is the bill number used twice?    =COUNTIF($F$2:$F$6,F2)&gt;1
        Flag for review:                  =IF(OR(C2-B2&lt;30,COUNTIF($F$2:$F$6,F2)&gt;1),"Review","Normal")</code></pre>
          <p>Result: C-102 gets "Review" for two reasons. The loss came only 13 days after the policy started, and its bill number CA-0917 also appears in C-104. C-104 gets "Review" for the repeated bill number. The other three claims are "Normal" and can move quickly.</p>
          <p>Now a person looks at C-102 and C-104. Maybe one bill was uploaded twice by mistake. Maybe the garage reused a number. The checker asks for the original bills before anyone decides anything.</p>
        </div>
        <div class="lc-card">
          <h3>Balancing speed and checks</h3>
          <ul class="lc-list">
            <li><strong>Keep honest claims fast.</strong> If too many claims are flagged, honest customers wait. They also lose trust.</li>
            <li><strong>Watch false positives.</strong> A false positive is an honest claim that was flagged. Count them and adjust your rules.</li>
            <li><strong>Ask, do not accuse.</strong> A flagged customer gets a polite request for documents, not a charge of fraud.</li>
            <li><strong>A person decides.</strong> Never reject a claim only because an AI score is high. A trained person reviews the facts.</li>
            <li><strong>Use sample data with public AI tools.</strong> Real claims hold names, health details and addresses. Keep them in your company's approved systems.</li>
          </ul>
          <p>Weak prompt and better prompt:</p>
          <pre><code>Weak:   Which of these customers are frauds?

        Better: You are a claims review assistant. List signals that need a
                closer human look in these made-up claims. Show your working
                for every date and amount. Do not decide or accuse anyone.
                Suggest one simple next step for each flagged claim.</code></pre>
        </div>
        <div class="lc-card">
          <h3>Activity: normal or worth a closer look?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each claim detail. Remember: "closer look" means a person checks it. It does not mean fraud.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="normal" data-label="Looks normal"></div>
              <div data-sorter-target="bucket" data-bucket="look" data-label="Worth a closer look"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="look" data-why="Four days of room rent for a two-day stay is a sign of an inflated bill. Ask the hospital to explain.">A hospital bill charges 4 days of room rent, but the discharge summary shows a 2-day stay</li>
              <li data-bucket="normal" data-why="The dates, bill and report agree. Nothing here needs extra checks.">A car repair bill matches the damage photos and the surveyor's report</li>
              <li data-bucket="look" data-why="The same bill number in two claims is a duplicate signal. It may still be an upload mistake.">The same bill number appears in two different claims</li>
              <li data-bucket="look" data-why="Rear damage from a front collision does not fit the story. A surveyor should look again.">The customer says the car hit a wall head-on, but all the damage is at the back</li>
              <li data-bucket="normal" data-why="A first claim after three years of cover is common. It was reported quickly, which is normal.">A policy that is 3 years old has its first claim, reported the next day</li>
              <li data-bucket="look" data-why="Many claims linked to one witness is a pattern signal. It needs a person to check the links.">The same witness is named in five accident claims this year</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to review a small set of made-up claims for signals. Then check its dates and amounts yourself.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a claims review assistant at Suraksha General Insurance, a made-up insurer. Your job is to point out signals that need a closer human look. You do not decide claims and you never accuse anyone.

        Here are made-up motor claims:
        Claim | Policy start | Loss date | Garage | Amount (₹) | Bill no.
        C-101 | 01-Apr-2026 | 12-Aug-2026 | Shree Motors | 38,000 | SM-2231
        C-102 | 20-Jul-2026 | 02-Aug-2026 | City Auto Works | 1,45,000 | CA-0917
        C-103 | 10-Jan-2026 | 05-Aug-2026 | Shree Motors | 22,500 | SM-2198
        C-104 | 15-Mar-2026 | 18-Aug-2026 | City Auto Works | 41,000 | CA-0917
        C-105 | 01-Feb-2026 | 21-Aug-2026 | Deccan Car Care | 27,800 | DC-3310
        [Add or change claims here]

        For each claim:
        1. Work out the days from policy start to loss date.
        2. List any signals: loss within 30 days of the start, a repeated bill number, or an amount far above the others. Write "None" if there are none.
        3. Suggest one polite next step, such as asking for the original bill.

        Give the answer as a table. End with two sentences: signals are not proof, and a person makes the decision.</pre>
            <ul class="ai-try-checks">
              <li>The days are right: C-102 should be 13 days and C-101 should be 133 days.</li>
              <li>C-102 and C-104 are both linked to bill CA-0917.</li>
              <li>The answer does not call anyone a fraud.</li>
              <li>The next steps ask for documents. They do not reject claims.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Fraud signals tell you where to look, not what is true. Let clean claims move fast, give flagged claims a fair human review, and always check the AI's dates and sums yourself.
        </div>
      HTML
      starter_code: nil
    },
    12 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-fin">Finance</div>
          <h1 class="lc-title">Customer Service Bots for Insurance</h1>
        </div>
        <p class="lc-lead">Many insurers now use a <strong>service bot</strong> (a chat assistant on a website or app) to answer customers. A good bot answers common questions, looks up a policy after a safe identity check, and helps with renewals. It also knows when to stop and hand the chat to a person. In this lesson you will learn what a bot should and should not do. You will also write clear answers and handover rules with AI.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="A customer talks to a service bot. The bot gives FAQ answers, does policy lookups after an identity check and helps with renewals. For complaints, claim disputes, advice or upset customers, it hands over to a person. A side box lists what the bot must not do.">
            <defs><marker id="ins12a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="10" y="120" width="120" height="56" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="70" y="144">Customer</text>
              <text x="70" y="163" font-size="11" fill="#9b99b8">chat or app</text>
              <line x1="132" y1="148" x2="171" y2="148" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ins12a)"/>
              <rect x="175" y="110" width="150" height="76" rx="10" fill="#27274e" stroke="#8b5cf6"/>
              <text x="250" y="142" font-weight="700" fill="#c4b5fd">Service bot</text>
              <text x="250" y="163" font-size="11" fill="#9b99b8">uses approved text</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#ins12a)">
                <path d="M327,130 Q350,40 376,40"/>
                <path d="M327,140 Q350,110 376,110"/>
                <path d="M327,156 Q350,180 376,180"/>
                <path d="M250,188 Q262,255 376,255"/>
              </g>
              <rect x="380" y="15" width="180" height="50" rx="8" fill="#1f1f44" stroke="#10b981"/>
              <text x="470" y="36">FAQ answers</text>
              <text x="470" y="54" font-size="11" fill="#9b99b8">documents, how to claim</text>
              <rect x="380" y="85" width="180" height="50" rx="8" fill="#1f1f44" stroke="#10b981"/>
              <text x="470" y="106">Policy lookup</text>
              <text x="470" y="124" font-size="11" fill="#9b99b8">after identity check</text>
              <rect x="380" y="155" width="180" height="50" rx="8" fill="#1f1f44" stroke="#10b981"/>
              <text x="470" y="176">Renewal help</text>
              <text x="470" y="194" font-size="11" fill="#9b99b8">due date, payment link</text>
              <rect x="380" y="225" width="370" height="60" rx="8" fill="#1f1f44" stroke="#ec4899"/>
              <text x="565" y="249" fill="#f9a8d4">Hand over to a person</text>
              <text x="565" y="269" font-size="11" fill="#9b99b8">complaint, claim dispute, advice, upset customer</text>
              <rect x="580" y="15" width="170" height="190" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="665" y="42" fill="#fcd34d" font-weight="700">Bot must NOT</text>
              <text x="665" y="75" font-size="12">decide claims</text>
              <text x="665" y="105" font-size="12">give buying advice</text>
              <text x="665" y="135" font-size="12">ask for full Aadhaar</text>
              <text x="665" y="165" font-size="12">guess about cover</text>
              <text x="665" y="192" font-size="11" fill="#9b99b8">if unsure, hand over</text>
            </g>
          </svg>
          <figcaption>A bot handles simple, repeated tasks. People handle judgement, disputes and feelings.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>What a bot can do, and what it must pass on</h3>
          <table class="lc-table">
            <thead><tr><th>Customer question</th><th>Who answers</th><th>Why</th></tr></thead>
            <tbody>
              <tr><td>"Which documents do I need for a reimbursement claim?"</td><td>Bot</td><td>A common question with one approved answer</td></tr>
              <tr><td>"When is my renewal due?"</td><td>Bot, after identity check</td><td>It reads the policy record. It does not guess.</td></tr>
              <tr><td>"What is the status of my claim?"</td><td>Bot, after identity check</td><td>It shows the status from the claims system</td></tr>
              <tr><td>"Will my knee surgery be covered?"</td><td>Person</td><td>It depends on the policy wording, waiting periods and medical papers</td></tr>
              <tr><td>"Why was my claim cut? I want to complain."</td><td>Person</td><td>Disputes and complaints need a trained officer and a record</td></tr>
              <tr><td>"Which plan should I buy?"</td><td>Person (licensed adviser)</td><td>Buying advice needs a licensed person who knows the customer's needs</td></tr>
            </tbody>
          </table>
          <p>An <strong>identity check</strong> proves that the person owns the policy. A common method is a one-time password (OTP) sent to the registered mobile. The bot should never ask for a full Aadhaar number, card numbers or passwords in chat.</p>
        </div>
        <div class="lc-card">
          <h3>Writing the bot's instructions with AI</h3>
          <p>Bots follow written instructions and an approved set of answers. You can use AI to draft them. A compliance team (the people who check rules) must approve them before use.</p>
          <pre><code>Weak:   Write answers for our insurance chatbot.

        Better: You are writing FAQ answers for a service bot at Suraksha
                General Insurance, a made-up insurer. Write 5 answers of 2 to 4
                short sentences each. Use only the facts I give you. If a fact
                is missing, write [CHECK WITH POLICY TEAM]. Then write 6 rules
                for when the bot must hand the chat to a person.</code></pre>
          <p>Good handover rules are simple and clear:</p>
          <ul class="lc-list">
            <li>The customer says "complaint", "not happy" or asks for a person.</li>
            <li>The question is about whether a treatment or loss is covered.</li>
            <li>The customer asks which plan to buy.</li>
            <li>The customer sounds upset, or mentions a death or a serious illness.</li>
            <li>The bot is not sure of the answer.</li>
          </ul>
          <p>At handover, the bot passes a short summary of the chat. Then the customer does not have to repeat everything.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: follow a bot chat</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Ananya asks">Ananya, a software tester in Karnataka, types: "My health policy renews soon. How much do I pay, and by when?"</li>
              <li data-kind="tool" data-label="Identity check">The bot asks for her policy number. It sends an OTP to her registered mobile. It does not ask for Aadhaar or card numbers.</li>
              <li data-kind="result" data-label="Policy record">The made-up record shows: Status active. Renewal due 14-Oct-2026. Renewal premium ₹9,800.</li>
              <li data-kind="answer" data-label="Bot replies">"Your renewal premium is ₹9,800. It is due by 14-Oct-2026. Here is the payment link. Please pay before the due date."</li>
              <li data-kind="user" data-label="A harder question">Ananya types: "Last year you paid only ₹8,000 of my ₹12,000 claim. Why? I want to complain."</li>
              <li data-kind="warn" data-label="Mistake to avoid">A bad bot would guess a reason, such as "it was probably an exclusion". Guessing can be wrong and can upset the customer.</li>
              <li data-kind="answer" data-label="Bot hands over">"I am sorry about this. I am connecting you to a claims officer now. Your request number is SR-4471."</li>
              <li data-kind="check" data-label="Person takes over">The claims officer reads the chat summary. She opens the claim file and explains the ₹4,000 cut from the actual policy wording.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to draft FAQ answers and handover rules for a made-up insurer's bot. Then check every answer for guesses.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are helping the service team of Suraksha General Insurance, a made-up insurer in India. We are writing answers for our customer service bot.

        Facts you may use (made-up):
        - Claims can be made in the app, by email or at a branch.
        - For a reimbursement health claim, customers need: claim form, hospital bills, discharge summary, test reports, pharmacy bills with prescriptions.
        - Renewal can be paid in the app by UPI, card or net banking.
        - [Add your own facts here]

        Tasks:
        1. Write FAQ answers for these questions: [How do I make a claim? Which documents do I need? How do I renew? How do I update my phone number?]. Use 2 to 4 short sentences each, in simple English.
        2. Use only the facts above. If a fact is missing, write [CHECK WITH POLICY TEAM].
        3. Write 6 rules for when the bot must hand the chat to a person.
        4. Write the one-line message the bot sends at handover.

        The bot must never ask for full Aadhaar, card numbers or passwords, and must never give buying advice.</pre>
            <ul class="ai-try-checks">
              <li>No answer adds facts that were not in the list, such as time limits or fees.</li>
              <li>Missing facts are marked [CHECK WITH POLICY TEAM].</li>
              <li>Handover rules cover complaints, cover questions, buying advice and upset customers.</li>
              <li>No answer asks for Aadhaar, card numbers or passwords.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A good insurance bot is fast on simple tasks and honest about its limits. Give it only approved facts, a safe identity check and clear handover rules, and let people handle cover questions, disputes and feelings.
        </div>
      HTML
      starter_code: nil
    },
    13 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-fin">Finance</div>
          <h1 class="lc-title">Fairness and Privacy in Insurance AI</h1>
        </div>
        <p class="lc-lead">Insurance AI makes decisions that affect people's money and health. So it must be fair, and it must protect personal data. In this lesson you will learn where <strong>bias</strong> (unfair differences in how groups are treated) comes from. You will see which data is sensitive and how to explain a decision in plain words. You will also get a general picture of the rules. This is general education, not legal advice.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 280" role="img" aria-label="A flow from data to AI model to decision to customer. Under each step is a check: only needed data, a bias test, human review, and a clear reason with a way to appeal.">
            <defs><marker id="ins13a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="20" y="30" width="150" height="56" rx="10" fill="#27274e" stroke="#3b82f6"/>
              <text x="95" y="54" font-weight="700">Data</text>
              <text x="95" y="73" font-size="11" fill="#9b99b8">forms, past claims</text>
              <rect x="213" y="30" width="150" height="56" rx="10" fill="#27274e" stroke="#8b5cf6"/>
              <text x="288" y="54" font-weight="700">AI model</text>
              <text x="288" y="73" font-size="11" fill="#9b99b8">finds patterns</text>
              <rect x="406" y="30" width="150" height="56" rx="10" fill="#27274e" stroke="#f59e0b"/>
              <text x="481" y="54" font-weight="700">Decision</text>
              <text x="481" y="73" font-size="11" fill="#9b99b8">price, accept, flag</text>
              <rect x="599" y="30" width="150" height="56" rx="10" fill="#27274e" stroke="#22d3ee"/>
              <text x="674" y="54" font-weight="700">Customer</text>
              <text x="674" y="73" font-size="11" fill="#9b99b8">lives with the result</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ins13a)">
                <line x1="172" y1="58" x2="209" y2="58"/>
                <line x1="365" y1="58" x2="402" y2="58"/>
                <line x1="558" y1="58" x2="595" y2="58"/>
              </g>
              <g stroke="#10b981" stroke-width="1.2" stroke-dasharray="4 4">
                <line x1="95" y1="88" x2="95" y2="148"/>
                <line x1="288" y1="88" x2="288" y2="148"/>
                <line x1="481" y1="88" x2="481" y2="148"/>
                <line x1="674" y1="88" x2="674" y2="148"/>
              </g>
              <rect x="20" y="150" width="150" height="70" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="95" y="180" fill="#6ee7b7">Only needed data</text>
              <text x="95" y="200" font-size="11" fill="#9b99b8">with consent</text>
              <rect x="213" y="150" width="150" height="70" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="288" y="180" fill="#6ee7b7">Bias test</text>
              <text x="288" y="200" font-size="11" fill="#9b99b8">compare groups</text>
              <rect x="406" y="150" width="150" height="70" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="481" y="180" fill="#6ee7b7">Human review</text>
              <text x="481" y="200" font-size="11" fill="#9b99b8">for hard cases</text>
              <rect x="599" y="150" width="150" height="70" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="674" y="180" fill="#6ee7b7">Clear reason</text>
              <text x="674" y="200" font-size="11" fill="#9b99b8">and a way to appeal</text>
              <text x="380" y="258" font-size="12" fill="#9b99b8">Each step in the flow needs its own check.</text>
            </g>
          </svg>
          <figcaption>Fairness and privacy are not one final test. You check at every step, from data to the customer.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Where bias comes from</h3>
          <ul class="lc-list">
            <li><strong>Old data.</strong> An AI model learns from past decisions. If past decisions were unfair, the model can copy them.</li>
            <li><strong>Proxies.</strong> A proxy is a harmless-looking field that stands in for a sensitive one. A PIN code can stand in for income, religion or caste in some areas.</li>
            <li><strong>Missing groups.</strong> If the data has few older customers or few rural customers, the model may work badly for them.</li>
            <li><strong>Hidden reasons.</strong> Some models cannot easily explain why they gave a score. Then unfair patterns stay hidden.</li>
          </ul>
          <p>Some differences are fair. A driver with many past accidents may pay more for motor cover. The question is always: is this factor linked to the real risk, and is it allowed?</p>
        </div>
        <div class="lc-card">
          <h3>Worked example: a simple bias test</h3>
          <p>A made-up motor claims model at Suraksha General Insurance flags claims for review. The team compares flag rates for two areas. Column B holds the area and column C says "Yes" if the claim was flagged.</p>
          <pre><code>Flag rate for Area B:  =COUNTIFS(B:B,"Area B",C:C,"Yes")/COUNTIF(B:B,"Area B")</code></pre>
          <table class="lc-table">
            <thead><tr><th>Area</th><th>Claims</th><th>Flagged</th><th>Flag rate</th></tr></thead>
            <tbody>
              <tr><td>Area A</td><td>200</td><td>20</td><td>20 ÷ 200 = 10%</td></tr>
              <tr><td>Area B</td><td>200</td><td>60</td><td>60 ÷ 200 = 30%</td></tr>
            </tbody>
          </table>
          <p>Claims from Area B are flagged three times as often. This is a signal to look, not proof of bias. The team now checks a few things:</p>
          <ul class="lc-list">
            <li>Do the two areas have different claim types or amounts?</li>
            <li>Of the flagged claims, how many turned out to have a real problem in each area?</li>
            <li>Is the model using the PIN code, or a field linked to it?</li>
          </ul>
          <p>If the gap has no fair reason, the team must fix the model or stop using that field.</p>
        </div>
        <div class="lc-card">
          <h3>Sensitive data, clear reasons and the rules</h3>
          <p><strong>Sensitive data</strong> includes health records, genetic data, religion, caste and financial details. Health insurers do use health details, but only with consent and for a clear purpose. Collect only what the decision needs, and keep it safe.</p>
          <p><strong>Explaining a decision.</strong> A customer should get a reason they can understand and act on:</p>
          <pre><code>Weak:   Your application was declined by our risk system.

        Better: We could not offer cover at the standard premium because of
                the heart condition listed in your medical report. You can
                send newer test results, and a medical officer will review
                them. You can also ask for a review of this decision.</code></pre>
          <p><strong>The rules (in general).</strong> In India, IRDAI (the Insurance Regulatory and Development Authority of India) regulates insurers. Personal data is also covered by the Digital Personal Data Protection Act, 2023. These rules and their details change. Check official sources and your company's legal team for the current position.</p>
          <p>For your own work: use made-up data in public AI tools. Never paste real customer names, health records, PAN or Aadhaar numbers.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: which data fields need care?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">A made-up insurer wants to use these fields in a motor pricing model. Sort each one.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="fair" data-label="Usually linked to real risk"></div>
              <div data-sorter-target="bucket" data-bucket="proxy" data-label="Check for hidden bias"></div>
              <div data-sorter-target="bucket" data-bucket="no" data-label="Should not be used"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="fair" data-why="Past accidents are directly linked to driving risk.">Number of past motor claims</li>
              <li data-bucket="fair" data-why="Repair costs and safety depend on the car, so this is linked to real risk.">Car model and age</li>
              <li data-bucket="proxy" data-why="Area can reflect real traffic risk, but it can also stand in for income, religion or caste. Test it.">PIN code of the home address</li>
              <li data-bucket="proxy" data-why="Phone brand has no clear link to driving. It may stand in for income. Test it or drop it.">Brand of the customer's mobile phone</li>
              <li data-bucket="no" data-why="A name can reveal religion or caste. It has no link to driving risk.">Customer's surname</li>
              <li data-bucket="no" data-why="Reading social media posts for pricing is a privacy risk, and the posts are not reliable risk data.">The customer's social media posts</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to review a list of made-up data fields for fairness and privacy risks. Then decide for yourself which fields you would question.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a fairness and privacy reviewer at [Suraksha General Insurance], a made-up insurer in India. The team wants to use these fields in a [health insurance pricing] model:

        [age, city, PIN code, smoking status (declared on the form), past hospital stays, monthly income, surname, gender, number of steps from a fitness app]

        For each field, give a table with these columns:
        1. Field
        2. Is it linked to real risk? (Yes / Maybe / No) and why, in one sentence
        3. Could it be a proxy for a sensitive trait such as religion, caste or income?
        4. Privacy concern (Low / Medium / High)
        5. One question the team should answer before using it

        Then write a 3-sentence plain-English reason that a customer could get if their premium is higher than standard.

        Rules: This is education only, not legal advice. Do not state specific laws or penalties as facts. Say which points need a check with the legal team.</pre>
            <ul class="ai-try-checks">
              <li>Surname and PIN code are flagged as possible proxies.</li>
              <li>Fitness app data is treated as a privacy concern that needs clear consent.</li>
              <li>The customer reason is plain and says what the customer can do next.</li>
              <li>The answer does not invent laws, sections or penalties.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Fair insurance AI uses only data linked to real risk and tests results across groups. It protects sensitive data. It gives every customer a clear reason and a way to appeal. A gap between groups is a signal to investigate, not an answer.
        </div>
      HTML
      starter_code: nil
    },
    14 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-fin">Finance</div>
          <h1 class="lc-title">Choosing the Right Cover for Your Life (Education)</h1>
        </div>
        <p class="lc-lead">People often buy insurance because someone sold it to them, or only to save tax. A better way is <strong>needs-based thinking</strong>: start from your life and the money risks you face, then learn which kinds of cover exist for them. In this lesson you will learn this way of thinking and use AI to prepare good questions. This is education only, not insurance or financial advice. Real choices need a licensed insurance adviser, and this course does not recommend any product.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 240" role="img" aria-label="Five steps of needs-based thinking: life stage, who depends on you, big money risks, kinds of cover to learn about, and questions for a licensed adviser.">
            <defs><marker id="ins14a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="10" y="30" width="135" height="70" rx="10" fill="#27274e" stroke="#3b82f6"/>
              <text x="77" y="60">Life stage</text>
              <text x="77" y="80" font-size="11" fill="#9b99b8">age, job, family</text>
              <rect x="160" y="30" width="135" height="70" rx="10" fill="#27274e" stroke="#8b5cf6"/>
              <text x="227" y="60">Who depends</text>
              <text x="227" y="80" font-size="11" fill="#9b99b8">on your income?</text>
              <rect x="310" y="30" width="135" height="70" rx="10" fill="#27274e" stroke="#f59e0b"/>
              <text x="377" y="60">Big risks</text>
              <text x="377" y="80" font-size="11" fill="#9b99b8">illness, death, loss</text>
              <rect x="460" y="30" width="135" height="70" rx="10" fill="#27274e" stroke="#22d3ee"/>
              <text x="527" y="60">Cover to learn</text>
              <text x="527" y="80" font-size="11" fill="#9b99b8">health, life, other</text>
              <rect x="610" y="30" width="140" height="70" rx="10" fill="#27274e" stroke="#10b981"/>
              <text x="680" y="60">Ask an adviser</text>
              <text x="680" y="80" font-size="11" fill="#9b99b8">your question list</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ins14a)">
                <line x1="146" y1="65" x2="157" y2="65"/>
                <line x1="296" y1="65" x2="307" y2="65"/>
                <line x1="446" y1="65" x2="457" y2="65"/>
                <line x1="596" y1="65" x2="607" y2="65"/>
              </g>
              <rect x="10" y="125" width="740" height="95" rx="10" fill="#1f1f44" stroke="#4b4a78"/>
              <text x="380" y="152" font-size="12.5">Ananya (28, single, no dependants): "What if I fall ill or change jobs?"</text>
              <text x="380" y="178" font-size="12.5">Ravi and Meena (one child): "How would the family manage without one income?"</text>
              <text x="380" y="204" font-size="11" fill="#9b99b8">Different lives lead to different questions, not to one "best" policy.</text>
            </g>
          </svg>
          <figcaption>Start from your life and your risks. The kinds of cover come later, and the final choice comes with an adviser.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Start from needs, not from products</h3>
          <p>Ask three simple questions. What could cost me a lot of money suddenly? Who would suffer if my income stopped? What cover do I already have?</p>
          <table class="lc-table">
            <thead><tr><th>Person (made-up)</th><th>Situation</th><th>Questions to think about</th></tr></thead>
            <tbody>
              <tr><td>Ananya</td><td>28, single, salaried software tester in Karnataka. Has group health cover from her employer.</td><td>Does the employer cover stop if I change jobs? Is the sum insured enough for a big hospital bill? Does anyone depend on my income?</td></tr>
              <tr><td>Ravi and Meena</td><td>Married, one child, Tamil Nadu. Home loan. The family depends mainly on Ravi's income.</td><td>How would the family pay expenses and the loan if Ravi died? Does our health cover include all three of us?</td></tr>
              <tr><td>Owner of Sweet Crumbs</td><td>Small bakery in Maharashtra with ovens and stock</td><td>What if a fire damages the ovens and stock? What if a customer is hurt in the shop?</td></tr>
            </tbody>
          </table>
          <p>Two life cover words are often mixed up. <strong>Term insurance</strong> pays the <strong>sum assured</strong> (the fixed amount a life policy pays) only if the person dies during the policy term. A plain term plan pays nothing if the person lives. <strong>Endowment</strong> plans mix cover with savings. They pay on death or at maturity, so the premium is usually much higher for the same sum assured. Neither is "better" for everyone. It depends on the need.</p>
        </div>
        <div class="lc-card">
          <h3>Worked example: a rough life cover number</h3>
          <p>Some people start with a rough "income replacement" number. It is only a starting point for a talk with an adviser. Here is a made-up example for Ravi and Meena:</p>
          <table class="lc-table">
            <thead><tr><th>Item</th><th>Amount (₹)</th></tr></thead>
            <tbody>
              <tr><td>Yearly family expenses</td><td>6,00,000</td></tr>
              <tr><td>Years until the child is independent</td><td>18</td></tr>
              <tr><td>Expenses for those years (6,00,000 × 18)</td><td>1,08,00,000</td></tr>
              <tr><td>Plus: home loan still owed</td><td>25,00,000</td></tr>
              <tr><td>Minus: savings the family already has</td><td>10,00,000</td></tr>
              <tr><td><strong>Rough cover need</strong></td><td><strong>1,23,00,000</strong></td></tr>
            </tbody>
          </table>
          <p>In a spreadsheet, with expenses in B1, years in B2, loan in B3 and savings in B4:</p>
          <pre><code>=B1*B2+B3-B4</code></pre>
          <p>This number ignores inflation (rising prices), interest on savings, existing life cover and Meena's own income. An adviser will look at all of these. Always recalculate AI's sums yourself.</p>
        </div>
        <div class="lc-card">
          <h3>Questions to ask a licensed adviser</h3>
          <ul class="lc-list">
            <li>What exactly is covered, and what are the main exclusions?</li>
            <li>What are the waiting periods, co-pay and room rent limits (for health cover)?</li>
            <li>How does the claim process work, cashless and reimbursement?</li>
            <li>What happens to my premium as I get older, or after a claim?</li>
            <li>How are you paid for this sale? Do you earn more on some plans?</li>
            <li>Can I see the full policy wording and the customer information sheet before I decide?</li>
            <li>If I port (move) a health policy to another insurer later, which waiting-period credits move with it?</li>
          </ul>
          <p>Check that the adviser or agent is licensed. Ask to see their licence or registration details, and check official IRDAI sources. If a plan also includes investments, a SEBI-registered investment adviser can help with that part.</p>
          <pre><code>Weak:   Which insurance policy should I buy?

        Better: Help me prepare for a meeting with a licensed insurance adviser.
                Here is my made-up situation. List the money risks I face, the
                kinds of cover that exist for them, and 8 questions to ask.
                Do not name or recommend any product or company.</code></pre>
        </div>
        <div class="lc-card">
          <h3>Activity: put needs-based thinking in order</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put these steps in a sensible order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Write down your life stage, job and income</li>
              <li data-order="2">List the people who depend on your income</li>
              <li data-order="3">List the big money risks: illness, death, accident, damage to home or business</li>
              <li data-order="4">Note the cover you already have, such as employer health cover</li>
              <li data-order="5">Work out a rough gap and write your questions</li>
              <li data-order="6">Discuss with a licensed adviser and read the full policy wording before you buy</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to help you prepare for a talk with an adviser. The AI should explain and ask questions, not choose a product.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an insurance educator in India. You explain ideas in simple English. You never recommend a specific product, plan or company, and you do not give personal advice.

        My made-up situation: [Ravi and Meena, a married couple in Tamil Nadu with one child aged 6. Yearly family expenses ₹6,00,000. Home loan still owed ₹25,00,000. Savings ₹10,00,000. Ravi has group health cover from his job.]

        Please:
        1. List the main money risks for this family in a table: risk, what could happen, kind of cover that exists for it.
        2. Explain term insurance and endowment plans in 3 sentences each, without naming any product.
        3. Work out a rough life cover number: yearly expenses × [18] years + loan − savings. Show every step and say what this rough number ignores.
        4. Write 8 questions to ask a licensed insurance adviser.

        End with one line saying this is education only and the family should talk to a licensed adviser.</pre>
            <ul class="ai-try-checks">
              <li>The sum is right: 6,00,000 × 18 + 25,00,000 − 10,00,000 = ₹1,23,00,000.</li>
              <li>No product or company is named or recommended.</li>
              <li>The answer mentions what the rough number ignores, such as inflation.</li>
              <li>The term and endowment explanations match this lesson.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Start from your life, your dependants and your big money risks, not from a product. Use AI to learn the words and prepare questions, recalculate its numbers, and make the final choice with a licensed adviser.
        </div>
      HTML
      starter_code: nil
    },
    15 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-fin">Finance</div>
          <h1 class="lc-title">Capstone: Review a Policy and a Claim</h1>
        </div>
        <p class="lc-lead">In this capstone you will use everything from the course in one piece of work. You will summarise a sample health policy, compare two sample plans and check a sample claim. You will use AI to do the first draft, and you will check every number yourself. All the data here is made up. This is education only, not insurance advice.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 260" role="img" aria-label="Four capstone steps: summarise the sample policy, compare Plan C and Plan D, check the claim against the policy, and write a report with numbers and questions.">
            <defs><marker id="ins15a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="10" y="40" width="170" height="70" rx="10" fill="#27274e" stroke="#3b82f6"/>
              <text x="95" y="70" font-weight="700">1. Summarise</text>
              <text x="95" y="92" font-size="11" fill="#9b99b8">the sample policy</text>
              <rect x="200" y="40" width="170" height="70" rx="10" fill="#27274e" stroke="#8b5cf6"/>
              <text x="285" y="70" font-weight="700">2. Compare</text>
              <text x="285" y="92" font-size="11" fill="#9b99b8">Plan C vs Plan D</text>
              <rect x="390" y="40" width="170" height="70" rx="10" fill="#27274e" stroke="#f59e0b"/>
              <text x="475" y="70" font-weight="700">3. Check claim</text>
              <text x="475" y="92" font-size="11" fill="#9b99b8">bill vs policy</text>
              <rect x="580" y="40" width="170" height="70" rx="10" fill="#27274e" stroke="#10b981"/>
              <text x="665" y="70" font-weight="700">4. Report</text>
              <text x="665" y="92" font-size="11" fill="#9b99b8">numbers + questions</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ins15a)">
                <line x1="182" y1="75" x2="196" y2="75"/>
                <line x1="372" y1="75" x2="386" y2="75"/>
                <line x1="562" y1="75" x2="576" y2="75"/>
              </g>
              <text x="95" y="140" font-size="12" fill="#c4b5fd">one-page summary</text>
              <text x="285" y="140" font-size="12" fill="#c4b5fd">comparison table</text>
              <text x="475" y="140" font-size="12" fill="#c4b5fd">payable ₹66,600</text>
              <text x="665" y="140" font-size="12" fill="#c4b5fd">list for the insurer</text>
              <rect x="10" y="175" width="740" height="60" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="380" y="201">At every step, you check the AI's work against the policy wording.</text>
              <text x="380" y="221" font-size="11" fill="#9b99b8">Made-up data only. No real names, policy numbers or health records.</text>
            </g>
          </svg>
          <figcaption>Each step produces one output. Together they make a short, checked report.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The sample data</h3>
          <p>For this capstone, imagine Ravi and Meena, the couple in Tamil Nadu, have moved to a new made-up family health policy from <strong>Suraksha General Insurance</strong>, a made-up insurer. We call it Plan C. Its numbers are different from the sample plans in earlier lessons.</p>
          <pre><code>POLICY: Family health cover (Plan C)
        Policy start:     15-Jan-2025
        Sum insured:      ₹10,00,000 for the family each year
        Premium:          ₹18,500 a year
        Room rent limit:  1% of sum insured per day (₹10,000 a day)
        Co-pay:           10% of every admissible claim
        Waiting periods:  30 days for any illness at the start;
                          3 years for pre-existing diseases
        Not covered:      non-medical items (toiletries, admission kit, gloves)

        CLAIM: Meena, 3 days in hospital for dengue fever, August 2026
        Room rent:        3 days × ₹12,000 = ₹36,000
        Doctor fees:      ₹20,000
        Medicines:        ₹14,000
        Tests:            ₹10,000
        Non-medical:      ₹2,000
        Total bill:       ₹82,000
        Papers sent:      claim form, bills, discharge summary, test reports
        Missing:          prescriptions for the pharmacy bills</code></pre>
          <p>Terms you know from this course: <strong>sum insured</strong> is the most the policy pays in a year. <strong>Co-pay</strong> is the share of each claim you pay yourself. <strong>Admissible</strong> means the part of the bill the policy accepts.</p>
        </div>
        <div class="lc-card">
          <h3>Step 1 and step 2: summary and comparison</h3>
          <p>First, ask AI for a one-page summary: what is covered, limits, waiting periods, exclusions and questions for the insurer. Check each line against the policy text above.</p>
          <p>Next, compare Plan C with a made-up Plan D from the same insurer. Look beyond the premium.</p>
          <table class="lc-table">
            <thead><tr><th>Feature</th><th>Plan C</th><th>Plan D</th></tr></thead>
            <tbody>
              <tr><td>Yearly premium</td><td>₹18,500</td><td>₹21,000</td></tr>
              <tr><td>Sum insured</td><td>₹10,00,000</td><td>₹10,00,000</td></tr>
              <tr><td>Room rent limit</td><td>₹10,000 a day</td><td>No limit</td></tr>
              <tr><td>Co-pay</td><td>10%</td><td>None</td></tr>
              <tr><td>Pre-existing disease wait</td><td>3 years</td><td>2 years</td></tr>
              <tr><td>Non-medical items</td><td>Not covered</td><td>Not covered</td></tr>
              <tr><td>This same claim would pay</td><td>₹66,600</td><td>₹80,000</td></tr>
            </tbody>
          </table>
          <p>Plan D costs ₹2,500 more a year (21,000 − 18,500). For this one claim, it would pay ₹13,400 more (80,000 − 66,600). This does not make Plan D "better" for everyone. It shows why the premium alone does not tell the full story. Real choices need a licensed adviser and the full policy wordings.</p>
        </div>
        <div class="lc-card">
          <h3>Step 3: check the claim</h3>
          <table class="lc-table">
            <thead><tr><th>Check</th><th>Working</th><th>Amount (₹)</th></tr></thead>
            <tbody>
              <tr><td>Total bill</td><td>36,000 + 20,000 + 14,000 + 10,000 + 2,000</td><td>82,000</td></tr>
              <tr><td>Room rent above the limit</td><td>(12,000 − 10,000) × 3 days</td><td>− 6,000</td></tr>
              <tr><td>Non-medical items</td><td>Not covered</td><td>− 2,000</td></tr>
              <tr><td>Admissible amount</td><td>82,000 − 6,000 − 2,000</td><td>74,000</td></tr>
              <tr><td>Co-pay</td><td>10% of 74,000</td><td>− 7,400</td></tr>
              <tr><td><strong>Payable by insurer</strong></td><td>74,000 − 7,400</td><td><strong>66,600</strong></td></tr>
              <tr><td>Paid by the family</td><td>6,000 + 2,000 + 7,400</td><td>15,400</td></tr>
            </tbody>
          </table>
          <p>Other checks: the policy started on 15-Jan-2025, so the 30-day wait is long over. Dengue is a new illness, not a pre-existing one. The pharmacy prescriptions are missing, so the claim may be held until they are sent.</p>
          <p>One more point to ask the insurer: some policies also cut other charges in proportion when the room costs more than the limit. The simple sum above does not do that. Check the policy wording for this rule.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: walk through the capstone session</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Prompt">You paste the made-up policy and claim into an AI assistant. You ask for a summary, a claim check with working, and a list of missing items.</li>
              <li data-kind="answer" data-label="AI draft">The AI gives a summary and says the insurer will pay ₹73,800.</li>
              <li data-kind="warn" data-label="Catch the mistake">₹73,800 is 82,000 minus 10% co-pay. The AI applied co-pay to the full bill and forgot the room rent limit and the non-medical items.</li>
              <li data-kind="tool" data-label="Spreadsheet">You rebuild the sum in a spreadsheet: =(82000-6000-2000)*(1-10%)</li>
              <li data-kind="result" data-label="Result">The spreadsheet shows 66,600.</li>
              <li data-kind="check" data-label="Your checks">You confirm the waiting periods from the policy start date. You note the missing prescriptions.</li>
              <li data-kind="answer" data-label="Final report">Your report gives the payable amount with working, the missing papers, and two questions for the insurer, including the room rent rule.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Run the capstone yourself. Paste this prompt, then check the AI's numbers against the working above.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an insurance claims tutor. This is education with made-up data, not advice.

        Policy (Plan C, Suraksha General Insurance, made-up): start 15-Jan-2025. Sum insured ₹10,00,000. Room rent limit ₹10,000 a day. Co-pay 10% of the admissible amount. Waits: 30 days for any illness, 3 years for pre-existing diseases. Non-medical items not covered.

        Claim: [Meena, 3 days in hospital for dengue, August 2026]. Room rent 3 × ₹12,000, doctor ₹20,000, medicines ₹14,000, tests ₹10,000, non-medical ₹2,000. Papers: claim form, bills, discharge summary, test reports. No prescriptions.

        Plan D (made-up): premium ₹21,000 (Plan C ₹18,500), no room rent limit, no co-pay, 2-year pre-existing wait, non-medical items not covered.

        Tasks:
        1. Summarise Plan C in 6 bullet points.
        2. Work out the amount payable under Plan C. Show every step as a table. Then do the same for Plan D.
        3. Check waiting periods and list missing papers.
        4. Write 3 questions for the insurer.
        Do not recommend a plan.</pre>
            <ul class="ai-try-checks">
              <li>Plan C payable is ₹66,600: (82,000 − 6,000 − 2,000) × 90%.</li>
              <li>Plan D payable is ₹80,000: 82,000 − 2,000.</li>
              <li>Co-pay is applied after the room rent and non-medical cuts, not to the full bill.</li>
              <li>The missing prescriptions are listed.</li>
              <li>The answer does not recommend Plan C or Plan D.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> AI can read a policy and draft a claim check in seconds, but it can apply a rule in the wrong order. Your value is the checking: rebuild every sum, match every line to the policy wording, and send open questions to the insurer or a licensed adviser.
        </div>
      HTML
      starter_code: nil
    }
  }.freeze
end

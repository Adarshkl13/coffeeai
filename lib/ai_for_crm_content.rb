module AiForCrmContent
  # Units (sidebar dividers): 1–4 CRM Basics · 5–9 Clean Data and Pipeline · 10–14 Automation and Insights · 15 Capstone
  # Widgets: sequence, sorter, stepper. No code editor: each Try It is an ai-try prompt box.
  LESSONS = {
    1 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-sales">Sales & CRM</div>
          <h1 class="lc-title">What a CRM Is</h1>
        </div>
        <p class="lc-lead">A <strong>CRM</strong> (customer relationship management) tool is one shared place for everything your team knows about customers. It stores the people you talk to, their businesses, the sales you are working on and every call and email. In this lesson you will learn the five building blocks of every CRM. You will use these words in every lesson of this course. When you understand them, AI can help you much more.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="A company, Tulsi Textiles, has two contacts. The company is linked to a deal for LedgerLite Pro worth 1,20,000 rupees. The deal has logged activities, a call and an emailed quote. Below, a pipeline shows six stages, and the deal sits in the Proposal sent stage. A side box lists why teams use a CRM.">
            <defs><marker id="crm1a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="20" y="20" width="210" height="64" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="125" y="46" font-weight="700">Company</text>
              <text x="125" y="68" font-size="11.5" fill="#9b99b8">Tulsi Textiles, Birmingham</text>
              <rect x="20" y="118" width="210" height="82" rx="10" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="125" y="142" font-weight="700">Contacts</text>
              <text x="125" y="164" font-size="11.5" fill="#9b99b8">Meena Shah, Finance Head</text>
              <text x="125" y="184" font-size="11.5" fill="#9b99b8">Imran Sheikh, Owner</text>
              <rect x="290" y="20" width="210" height="64" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="395" y="46" font-weight="700">Deal</text>
              <text x="395" y="68" font-size="11.5" fill="#9b99b8">LedgerLite Pro, ₹1,20,000</text>
              <rect x="290" y="118" width="210" height="82" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="395" y="142" font-weight="700">Activities</text>
              <text x="395" y="164" font-size="11.5" fill="#9b99b8">10 Sep: call about GST</text>
              <text x="395" y="184" font-size="11.5" fill="#9b99b8">12 Sep: quote emailed</text>
              <rect x="560" y="20" width="180" height="180" rx="10" fill="#27274e" stroke="#10b981"/>
              <text x="650" y="46" font-weight="700" fill="#6ee7b7">Why teams use it</text>
              <text x="650" y="80" font-size="11.5">Full history in one place</text>
              <text x="650" y="108" font-size="11.5">No missed follow-ups</text>
              <text x="650" y="136" font-size="11.5">Every deal has an owner</text>
              <text x="650" y="164" font-size="11.5">Clear reports for Arjun</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#crm1a)">
                <line x1="232" y1="52" x2="284" y2="52"/>
                <line x1="125" y1="86" x2="125" y2="112"/>
                <line x1="395" y1="86" x2="395" y2="112"/>
              </g>
              <text x="258" y="44" font-size="11" fill="#9b99b8">buys</text>
              <text x="133" y="104" font-size="11" fill="#9b99b8" text-anchor="start">people</text>
              <text x="403" y="104" font-size="11" fill="#9b99b8" text-anchor="start">logged</text>
              <text x="20" y="232" font-size="11.5" fill="#9b99b8" text-anchor="start">Pipeline: the stages every deal moves through</text>
              <rect x="20" y="244" width="110" height="34" rx="8" fill="#27274e" stroke="#4b4a78"/>
              <text x="75" y="266" font-size="12">Qualified</text>
              <rect x="142" y="244" width="110" height="34" rx="8" fill="#27274e" stroke="#4b4a78"/>
              <text x="197" y="266" font-size="12">Discovery done</text>
              <rect x="264" y="244" width="110" height="34" rx="8" fill="#27274e" stroke="#4b4a78"/>
              <text x="319" y="266" font-size="12">Demo done</text>
              <rect x="386" y="244" width="110" height="34" rx="8" fill="#27274e" stroke="#f59e0b" stroke-width="2"/>
              <text x="441" y="266" font-size="12" fill="#fcd34d">Proposal sent</text>
              <rect x="508" y="244" width="110" height="34" rx="8" fill="#27274e" stroke="#4b4a78"/>
              <text x="563" y="266" font-size="12">Negotiation</text>
              <rect x="630" y="244" width="110" height="34" rx="8" fill="#27274e" stroke="#4b4a78"/>
              <text x="685" y="266" font-size="12">Closed won</text>
              <text x="441" y="294" font-size="11" fill="#fcd34d">the Tulsi Textiles deal is here</text>
            </g>
          </svg>
          <figcaption>One company, its people, one possible sale and its history, all linked. The pipeline shows how far the sale has moved.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The five building blocks</h3>
          <p>We will follow <strong>LedgerLite</strong>, a made-up San Francisco startup. It sells accounting software to small businesses. Kavya is its sales rep, and Arjun is the founder.</p>
          <table class="lc-table">
            <thead><tr><th>Block</th><th>What it is</th><th>LedgerLite example</th></tr></thead>
            <tbody>
              <tr><td><strong>Contact</strong></td><td>A person you talk to.</td><td>Meena Shah, Finance Head</td></tr>
              <tr><td><strong>Company</strong> (often called an <em>account</em>)</td><td>The business the person works for. One company can have many contacts.</td><td>Tulsi Textiles, Birmingham</td></tr>
              <tr><td><strong>Deal</strong> (sometimes called an <em>opportunity</em>)</td><td>A possible sale. It has an amount, a stage, an owner and an expected close date.</td><td>LedgerLite Pro for 10 users, ₹1,20,000 a year</td></tr>
              <tr><td><strong>Activity</strong></td><td>Anything you do with the customer: a call, email, meeting, note or task.</td><td>"Call on 10 Sep: Meena asked about GST reports"</td></tr>
              <tr><td><strong>Pipeline</strong></td><td>The ordered list of stages a deal moves through, from first talk to won or lost.</td><td>Qualified → Discovery done → Demo done → Proposal sent → Negotiation → Closed won (or Closed lost)</td></tr>
            </tbody>
          </table>
          <p>Many CRMs also have <strong>leads</strong>. A lead is a person or business that might buy, but you have not checked them yet. Some CRMs keep leads in a separate list. Others mark them with a status field on the contact. Check your CRM's help pages to see how it works.</p>
          <p>Do you sell to single people, not businesses (B2C)? Then you may use contacts and deals without companies.</p>
        </div>
        <div class="lc-card">
          <h3>Why teams need one</h3>
          <p>Before LedgerLite had a CRM, Kavya kept leads in a spreadsheet, WhatsApp chats and a notebook. This is what went wrong.</p>
          <table class="lc-table">
            <thead><tr><th>Without a CRM</th><th>With a CRM</th></tr></thead>
            <tbody>
              <tr><td>Arjun asks, "Which deals will close this month?" Kavya needs an hour to answer.</td><td>Arjun opens a pipeline report and sees the answer.</td></tr>
              <tr><td>Kavya goes on leave. Nobody knows that Tulsi Textiles is waiting for a quote.</td><td>The deal shows the next step, the due date and the full call history.</td></tr>
              <tr><td>Two people call the same prospect in the same week.</td><td>Every contact has one owner, and every call is logged.</td></tr>
              <tr><td>Follow-ups depend on memory.</td><td>The CRM creates reminders and tasks.</td></tr>
            </tbody>
          </table>
          <p>A CRM is not only for big companies. A freelancer with 30 clients also forgets follow-ups. A small CRM, or even a well-built spreadsheet, fixes that.</p>
        </div>
        <div class="lc-card">
          <h3>Popular CRMs</h3>
          <p>Common CRMs used in India and other countries include <strong>Zoho CRM</strong>, <strong>HubSpot</strong>, <strong>Salesforce</strong> and <strong>Freshsales</strong>. They all use the same five building blocks. The words can differ. For example, Salesforce calls a deal an "opportunity". Zoho CRM and Salesforce call a company an "account".</p>
          <ul class="lc-list">
            <li><strong>Choose by your needs, not by the brand.</strong> How many users? Do you need email, phone or WhatsApp connections? Do you need reports in ₹ and Indian formats?</li>
            <li><strong>Try before you buy.</strong> Many CRMs offer a free plan or a trial. Plans and prices change often, so check each tool's current pricing page.</li>
            <li><strong>Start small.</strong> A simple pipeline and a few good fields beat a complex setup that nobody uses.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Activity: which building block is it?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Kavya is entering data into LedgerLite's new CRM. Where does each item belong?</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="contact" data-label="Contact"></div>
              <div data-sorter-target="bucket" data-bucket="company" data-label="Company"></div>
              <div data-sorter-target="bucket" data-bucket="deal" data-label="Deal"></div>
              <div data-sorter-target="bucket" data-bucket="activity" data-label="Activity"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="contact" data-why="This is a person, with a job title and an email address.">Meena Shah, Finance Head, meena@tulsitextiles.example</li>
              <li data-bucket="company" data-why="This describes the business, not a person or a sale.">Tulsi Textiles, Birmingham. Textile maker with about 80 staff and 3 branches.</li>
              <li data-bucket="deal" data-why="It is a possible sale with a product, an amount and a stage.">LedgerLite Pro for 10 users, ₹1,20,000 a year, stage: Proposal sent</li>
              <li data-bucket="activity" data-why="It is something that happened with the customer on a date.">Call on 10 Sep: Meena asked about GST reports</li>
              <li data-bucket="contact" data-why="This is a person. The note about decisions belongs on their contact record.">Imran Sheikh, owner of Tulsi Textiles, makes the final buying decision</li>
              <li data-bucket="deal" data-why="Nimbus Logistics could win this contract. It has a value, so it is a deal in Nimbus's CRM.">Nimbus Logistics delivery contract with Masala Box Foods, an online store, worth ₹1,50,000</li>
              <li data-bucket="activity" data-why="An email sent on a date is an activity. It is logged on the deal and the contact.">Email sent on 12 Sep with the price quote attached</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to map your own sales work into the five building blocks. Change the text in [brackets] to describe your business, or keep the example.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a friendly CRM coach for small businesses in India.

        My business: [LedgerLite, a San Francisco startup that sells accounting software to small businesses]
        How we sell today: [Leads come from our website and referrals. Our sales rep calls them, gives a demo, then emails a price quote. We track everything in a spreadsheet and WhatsApp.]

        Help me see how this fits into a CRM.
        1. Explain contacts, companies, deals, activities and a pipeline in one simple sentence each.
        2. Make a table with 3 made-up example records for each of: contact, company, deal, activity. Use my business.
        3. Suggest 5 to 7 pipeline stages that match how we sell.
        4. List 3 things we should decide before we choose a CRM tool.

        Rules:
        - Use simple English and short sentences.
        - Do not state CRM prices or plan limits.
        - If you are not sure about a feature of a CRM tool, say so.</pre>
            <ul class="ai-try-checks">
              <li>A contact is a person and a company is a business. Are they kept apart?</li>
              <li>Does every example deal have an amount and a stage?</li>
              <li>Do the stage names describe what has happened in the sale, like "Demo done"?</li>
              <li>Are all examples clearly made up, with no real people's details?</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A CRM is the shared memory of your sales team. Get the five blocks right first: contacts, companies, deals, activities and the pipeline. AI can only help when this base is clear and tidy.
        </div>
      HTML
      starter_code: nil
    },
    2 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-sales">Sales & CRM</div>
          <h1 class="lc-title">Where AI Helps in a CRM</h1>
        </div>
        <p class="lc-lead">AI is good at the slow parts of CRM work. It can turn messy notes into clean fields, spot duplicates, suggest next steps and explain reports. But AI can also invent facts, and CRM data is about real people. In this lesson you will learn the four main jobs AI can do in a CRM. You will compare built-in CRM AI with a general AI assistant. You will also learn what data you must never paste into an AI tool.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 285" role="img" aria-label="Your CRM sits in the centre. Four AI jobs connect to it: summarise notes, clean data, suggest next steps and build reports. A line at the bottom says AI drafts, and you check, decide and keep private data safe.">
            <defs><marker id="crm2a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="290" y="105" width="180" height="64" rx="12" fill="#27274e" stroke="#8b5cf6" stroke-width="2"/>
              <text x="380" y="132" font-weight="700">Your CRM</text>
              <text x="380" y="153" font-size="11" fill="#9b99b8">contacts, deals, notes</text>
              <text x="380" y="40" font-size="11" fill="#9b99b8">built-in AI or</text>
              <text x="380" y="57" font-size="11" fill="#9b99b8">a general AI assistant</text>
              <rect x="20" y="20" width="230" height="58" rx="10" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="135" y="44" font-weight="700">Summarise notes</text>
              <text x="135" y="64" font-size="11" fill="#9b99b8">messy call note → clear fields</text>
              <rect x="20" y="196" width="230" height="58" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="135" y="220" font-weight="700">Clean data</text>
              <text x="135" y="240" font-size="11" fill="#9b99b8">find duplicates, fix names</text>
              <rect x="510" y="20" width="230" height="58" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="625" y="44" font-weight="700">Suggest next steps</text>
              <text x="625" y="64" font-size="11" fill="#9b99b8">who to follow up, and why</text>
              <rect x="510" y="196" width="230" height="58" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="625" y="220" font-weight="700">Build reports</text>
              <text x="625" y="240" font-size="11" fill="#9b99b8">win rate, stuck deals</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#crm2a)">
                <path d="M290,118 L256,82"/>
                <path d="M290,156 L256,192"/>
                <path d="M470,118 L504,82"/>
                <path d="M470,156 L504,192"/>
              </g>
              <text x="380" y="276" font-size="12" fill="#6ee7b7">AI drafts. You check, decide and keep private data safe.</text>
            </g>
          </svg>
          <figcaption>Four jobs where AI saves time. In every job, a person checks the result before it goes into the CRM.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Four jobs AI can do in a CRM</h3>
          <table class="lc-table">
            <thead><tr><th>Job</th><th>LedgerLite example</th><th>What you still check</th></tr></thead>
            <tbody>
              <tr><td><strong>Summarise notes</strong></td><td>Kavya's messy call note becomes clean fields: main problem, decision maker, next step.</td><td>Every name, number and date against the real note</td></tr>
              <tr><td><strong>Clean data</strong></td><td>AI spots that "tulsi textiles" and "Tulsi Textiles Pvt. Ltd." are the same company.</td><td>Every merge, before it happens</td></tr>
              <tr><td><strong>Suggest next steps</strong></td><td>"No reply from Tulsi Textiles for 9 days. Send a short note with the quote summary."</td><td>Does it fit this buyer? Is it honest?</td></tr>
              <tr><td><strong>Build reports</strong></td><td>Kavya's made-up month: 200 contacted, 18 replied, 8 meetings, 2 customers. AI explains the reply rate: 18 ÷ 200 = 9%.</td><td>The maths. Redo it with a spreadsheet formula.</td></tr>
            </tbody>
          </table>
          <p>Notice the pattern. AI does the first draft. A person checks and decides.</p>
        </div>
        <div class="lc-card">
          <h3>Built-in CRM AI or a general AI assistant?</h3>
          <p>Most big CRMs now have their own AI features. Examples include Zia in Zoho CRM, Breeze in HubSpot, Einstein and Agentforce in Salesforce, and Freddy AI in Freshworks. You can also use a general AI assistant, such as Claude, in a separate window.</p>
          <table class="lc-table">
            <thead><tr><th></th><th>Built-in CRM AI</th><th>General AI assistant</th></tr></thead>
            <tbody>
              <tr><td><strong>Where it works</strong></td><td>Inside your CRM screens</td><td>In a separate chat window</td></tr>
              <tr><td><strong>What data it sees</strong></td><td>The records your CRM allows it to see</td><td>Only what you paste or upload</td></tr>
              <tr><td><strong>Good for</strong></td><td>Quick record summaries, suggested fields, email drafts</td><td>Custom prompts, cleaning rules, formulas, report ideas, pipeline design</td></tr>
              <tr><td><strong>Watch out for</strong></td><td>It may need a higher plan or an add-on</td><td>Privacy: you must remove personal data first, unless your company approved the tool</td></tr>
            </tbody>
          </table>
          <p>AI features and plans change often. Check your CRM's current help pages before you plan around a feature.</p>
        </div>
        <div class="lc-card">
          <h3>Weak prompt vs better prompt</h3>
          <p>Kavya has just called Anil Rao at Kaveri Traders, Oxford. Here are two ways to ask AI to summarise her note.</p>
          <pre><code>Weak:
        Summarise this call.</code></pre>
          <pre><code>Better:
        You are a sales assistant. Turn my call note into CRM fields:
        Main problem, Decision maker, Next step, Next step date,
        Budget, Competitors, Suggested stage.
        Choose the stage from: Qualified, Discovery done, Demo done,
        Proposal sent, Negotiation.
        Use only facts in the note. If a fact is missing, write
        "Not mentioned". Do not turn vague dates into exact dates.

        Note: Anil Rao, accounts head, Kaveri Traders Oxford. Spice
        wholesale, 3 branches, ~40 staff. Excel + old software. GST
        filing takes him 2 days every month. Wants branch-wise reports.
        Owner Suresh decides, will join demo. Asked price for 3 users.
        Demo maybe next Thursday. Another vendor also pitching.</code></pre>
          <p>The better prompt gives a role, fixed fields and a fixed list of stages. The "Not mentioned" rule stops the AI from filling gaps with guesses. The weak prompt gives a nice paragraph that you cannot paste into CRM fields.</p>
        </div>
        <div class="lc-card">
          <h3>Privacy: what never goes into an AI tool</h3>
          <ul class="lc-list">
            <li><strong>Use tools your company approved.</strong> Business plans of AI tools often give more control over your data. Check the settings to see if chats are used to train models.</li>
            <li><strong>Remove what the AI does not need.</strong> Take out phone numbers, personal emails, PAN numbers and bank details. Often you can write "Buyer A" instead of a name.</li>
            <li><strong>Use data only for the purpose people agreed to.</strong> India's DPDP Act 2023 (Digital Personal Data Protection Act) and its 2025 Rules cover consent and purpose. Europe has the GDPR. This is general education, not legal advice.</li>
            <li><strong>Never let AI change many records at once without a check.</strong> One wrong rule can damage hundreds of records in seconds.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Activity: from call note to CRM record</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="tool" data-label="After the call">Kavya ends a call with Anil Rao of Kaveri Traders on Monday, 28 September. Her notes are short and messy.</li>
              <li data-kind="user" data-label="Kavya's prompt">She removes Anil's phone number. Then she pastes the note into her company's approved AI assistant, using the "better" prompt above.</li>
              <li data-kind="answer" data-label="AI draft">Main problem: GST filing takes 2 days a month. Decision maker: Suresh (owner). Next step: demo with Anil and Suresh. Next step date: Thursday, 1 October 2026. Budget: Not mentioned. Competitors: one other vendor, name not known. Suggested stage: Discovery done.</li>
              <li data-kind="warn" data-label="Check the date">The note says "maybe next Thursday". That could mean 1 October or 8 October, and it is not confirmed. The AI turned a guess into a firm date.</li>
              <li data-kind="check" data-label="Kavya fixes it">She changes the date to "to be confirmed". She checks every other field against her note. They are correct.</li>
              <li data-kind="tool" data-label="CRM update">She copies the fields into the deal, logs the call as an activity and adds a task: "Email Anil two demo slots", due tomorrow.</li>
              <li data-kind="result" data-label="Deal record">The deal moves to Discovery done. Anyone on the team can open it and understand the full story in a minute.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Turn a messy call note into clean CRM fields. Use the example note, or paste your own note with names and phone numbers removed.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a sales assistant who updates CRM records for [LedgerLite, an accounting software startup].

        Call note (made up, no phone numbers):
        [Spoke to Meena, Finance Head at Tulsi Textiles, Birmingham. Month-end closing takes about 10 days. They handle 400+ invoices a month and are hiring an accounts assistant. Uses Excel for 3 branches. Owner Imran decides, may join a demo. Asked about the free trial. Wants GST reports. Call again early next week.]

        Give me:
        1. Summary: 3 short bullet points.
        2. A table of CRM fields: Company, Contact, Role, Decision maker, Main problem, What they want, Competitors, Next step, Next step date, Suggested stage.
        3. Up to 3 questions to ask on the next call.

        Rules:
        - Use only facts in the note. If a fact is missing, write "Not mentioned".
        - Keep vague dates vague. Do not invent an exact date.
        - Do not guess budget or price.
        - Choose the stage from: Qualified, Discovery done, Demo done, Proposal sent, Negotiation.</pre>
            <ul class="ai-try-checks">
              <li>Is every fact in the table also in the note? Look for invented budgets or competitor names.</li>
              <li>Is the decision maker the owner, not the person on the call?</li>
              <li>Did "early next week" stay vague, or did the AI make up an exact date?</li>
              <li>Does the suggested stage match what has really happened so far?</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> AI is a fast first-draft writer for your CRM. It is not the owner of your data. You check every fact, you decide every change, and you keep private customer data out of tools that are not approved.
        </div>
      HTML
      starter_code: nil
    },
    3 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-sales">Sales & CRM</div>
          <h1 class="lc-title">Designing Your Pipeline Stages</h1>
        </div>
        <p class="lc-lead">Your pipeline is the list of stages a deal moves through. Good stages tell the whole team where each deal really is. Bad stages hide problems and make forecasts wrong. In this lesson you will name stages clearly and write exit criteria for each one. You will also give each stage a probability and build a pipeline design table with help from AI.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="Six LedgerLite stages from left to right: Qualified 10 percent, Discovery done 20 percent, Demo done 40 percent, Proposal sent 60 percent, Negotiation 80 percent, Closed won 100 percent. Under each stage is its exit criteria. At the bottom, a weighted value example: 1,20,000 rupees times 60 percent equals 72,000 rupees.">
            <defs><marker id="crm3a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12.5" fill="#e2e0f0" text-anchor="middle">
              <text x="20" y="24" font-size="12" fill="#9b99b8" text-anchor="start">Stage and chance of winning (probability)</text>
              <rect x="20" y="36" width="110" height="58" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="75" y="60" font-weight="700">Qualified</text><text x="75" y="82" font-size="13" fill="#93c5fd">10%</text>
              <rect x="142" y="36" width="110" height="58" rx="10" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="197" y="60" font-weight="700" font-size="12">Discovery done</text><text x="197" y="82" font-size="13" fill="#67e8f9">20%</text>
              <rect x="264" y="36" width="110" height="58" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="319" y="60" font-weight="700">Demo done</text><text x="319" y="82" font-size="13" fill="#c4b5fd">40%</text>
              <rect x="386" y="36" width="110" height="58" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="441" y="60" font-weight="700" font-size="12">Proposal sent</text><text x="441" y="82" font-size="13" fill="#f9a8d4">60%</text>
              <rect x="508" y="36" width="110" height="58" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="563" y="60" font-weight="700">Negotiation</text><text x="563" y="82" font-size="13" fill="#fcd34d">80%</text>
              <rect x="630" y="36" width="110" height="58" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="685" y="60" font-weight="700">Closed won</text><text x="685" y="82" font-size="13" fill="#6ee7b7">100%</text>
              <text x="20" y="122" font-size="12" fill="#9b99b8" text-anchor="start">Exit criteria: what must be true to move on</text>
              <g font-size="10.5" fill="#9b99b8">
                <text x="75" y="142">fits our buyer,</text><text x="75" y="157">agreed to talk</text>
                <text x="197" y="142">problem, budget,</text><text x="197" y="157">decider known</text>
                <text x="319" y="142">decider saw demo,</text><text x="319" y="157">next step dated</text>
                <text x="441" y="142">quote sent,</text><text x="441" y="157">receipt confirmed</text>
                <text x="563" y="142">buyer asks</text><text x="563" y="157">for changes</text>
                <text x="685" y="142">order signed</text><text x="685" y="157">or paid</text>
              </g>
              <line x1="20" y1="180" x2="736" y2="180" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#crm3a)"/>
              <text x="380" y="202" font-size="11.5" fill="#9b99b8">A deal moves right only when its exit criteria are met</text>
              <rect x="150" y="218" width="460" height="64" rx="10" fill="#27274e" stroke="#f59e0b"/>
              <text x="380" y="243" font-size="13">Weighted value = deal amount × probability</text>
              <text x="380" y="267" font-size="13" fill="#fcd34d">Tulsi Textiles: ₹1,20,000 × 60% = ₹72,000</text>
            </g>
          </svg>
          <figcaption>LedgerLite's open stages, their exit criteria and win probabilities. Closed lost (0%) sits outside this line.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>What makes a good stage</h3>
          <ul class="lc-list">
            <li><strong>Name what has happened, not how you feel.</strong> "Demo done" is a fact. "Hot" or "Almost there" is a feeling.</li>
            <li><strong>Give each stage exit criteria.</strong> Exit criteria are the facts that must be true before a deal moves to the next stage. Anyone should be able to check them.</li>
            <li><strong>Keep it short.</strong> Five to seven open stages is enough for most small teams. Add <em>Closed won</em> and <em>Closed lost</em> at the end.</li>
            <li><strong>Follow the buyer's steps.</strong> Stages should match what the buyer does, not only what the rep does.</li>
          </ul>
          <table class="lc-table">
            <thead><tr><th>Weak stage name</th><th>Problem</th><th>Better stage name</th></tr></thead>
            <tbody>
              <tr><td>Hot lead</td><td>Two reps mean two different things</td><td>Discovery done</td></tr>
              <tr><td>Follow-up</td><td>Every stage needs follow-ups</td><td>Proposal sent</td></tr>
              <tr><td>Almost closed</td><td>A hope, not a fact</td><td>Negotiation</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>LedgerLite's pipeline design table</h3>
          <p>A pipeline design table lists every stage with its rules. Arjun and Kavya agreed on this one.</p>
          <table class="lc-table">
            <thead><tr><th>Stage</th><th>Exit criteria</th><th>Probability</th><th>Usual max days</th></tr></thead>
            <tbody>
              <tr><td>Qualified</td><td>The business has 5 to 200 staff and keeps accounts in spreadsheets or old software. A named person agreed to a call.</td><td>10%</td><td>7</td></tr>
              <tr><td>Discovery done</td><td>We know their main problem, who decides and a rough budget. All three are written in the CRM.</td><td>20%</td><td>14</td></tr>
              <tr><td>Demo done</td><td>The decision maker saw the demo or started the free 14-day trial. The next step has a date.</td><td>40%</td><td>14</td></tr>
              <tr><td>Proposal sent</td><td>A written quote with plan, users and price was sent. The buyer confirmed they got it.</td><td>60%</td><td>14</td></tr>
              <tr><td>Negotiation</td><td>The buyer asked for changes, or sent the quote for internal approval.</td><td>80%</td><td>21</td></tr>
              <tr><td>Closed won</td><td>The order form is signed, or the first payment is received.</td><td>100%</td><td>-</td></tr>
              <tr><td>Closed lost</td><td>The buyer said no, or did not reply after 3 follow-ups over 30 days. A "Reason lost" is chosen.</td><td>0%</td><td>-</td></tr>
            </tbody>
          </table>
          <p>"Usual max days" is LedgerLite's own choice. A deal that stays longer than this in a stage needs attention.</p>
        </div>
        <div class="lc-card">
          <h3>Probability and weighted pipeline value</h3>
          <p>The <strong>probability</strong> of a stage is your best estimate of the chance that deals in this stage will be won. The <strong>weighted value</strong> of a deal is its amount × its stage probability. It is a forecast estimate, not a promise.</p>
          <p>Here is LedgerLite's open pipeline in a spreadsheet. A sheet named <code>Stages</code> holds each stage name in column A and its probability in column B.</p>
          <table class="lc-table">
            <thead><tr><th>A: Deal</th><th>B: Amount (₹)</th><th>C: Stage</th><th>D: Probability</th><th>E: Weighted (₹)</th></tr></thead>
            <tbody>
              <tr><td>Tulsi Textiles, Birmingham</td><td>1,20,000</td><td>Proposal sent</td><td>60%</td><td>72,000</td></tr>
              <tr><td>GreenLeaf Organics, Denver</td><td>48,000</td><td>Demo done</td><td>40%</td><td>19,200</td></tr>
              <tr><td>Kaveri Traders, Oxford</td><td>36,000</td><td>Discovery done</td><td>20%</td><td>7,200</td></tr>
              <tr><td>Sai Pharma, Seattle</td><td>96,000</td><td>Negotiation</td><td>80%</td><td>76,800</td></tr>
              <tr><td><strong>Total</strong></td><td><strong>3,00,000</strong></td><td></td><td></td><td><strong>1,75,200</strong></td></tr>
            </tbody>
          </table>
          <pre><code>D2  =VLOOKUP(C2,Stages!$A$2:$B$8,2,FALSE)   → 60%
        E2  =B2*D2                                   → 72000
        B6  =SUM(B2:B5)                              → 300000
        E6  =SUMPRODUCT(B2:B5,D2:D5)                 → 175200</code></pre>
          <p>So LedgerLite has ₹3,00,000 in open deals, but a weighted value of ₹1,75,200. Arjun should plan with the smaller number.</p>
          <p><strong>Your first probabilities are guesses.</strong> Later, use your own history. Say 25 LedgerLite deals reached Negotiation last year and 18 were won. 18 ÷ 25 = 72%. Then 72% is a better number than 80% for that stage. Do not copy "industry averages" from AI. They are often made up.</p>
        </div>
        <div class="lc-card">
          <h3>Different businesses, different stages</h3>
          <p>There is no single correct pipeline. Match the stages to how your buyers really buy.</p>
          <table class="lc-table">
            <thead><tr><th>Business</th><th>How they sell</th><th>Example stages</th></tr></thead>
            <tbody>
              <tr><td>Nimbus Logistics, New York</td><td>Monthly delivery contracts for online stores, often after a 2-week pilot</td><td>Qualified → Volumes shared → Pilot running → Contract sent → Signed</td></tr>
              <tr><td>Sweet Crumbs, London</td><td>Office catering orders, decided in a few days</td><td>Enquiry → Quote sent → Advance paid → Delivered</td></tr>
            </tbody>
          </table>
          <p>AI can draft a pipeline in seconds. But your team must agree on it. Rohit, the sales manager at Nimbus Logistics, reads every AI-drafted exit criterion with his reps. They remove any rule they cannot check.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: put the stages in order</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put LedgerLite's stages in the order a deal moves through them.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Qualified: the business fits our buyer and a named person agreed to a call</li>
              <li data-order="2">Discovery done: we know the problem, the decision maker and a rough budget</li>
              <li data-order="3">Demo done: the decision maker saw the demo and the next step has a date</li>
              <li data-order="4">Proposal sent: a written quote was sent and the buyer confirmed they got it</li>
              <li data-order="5">Negotiation: the buyer asked for changes or sent the quote for approval</li>
              <li data-order="6">Closed won: the order form is signed or the first payment is received</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to draft a pipeline design table for your business. Then check each exit criterion: could anyone on your team check it?</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a sales operations adviser. Design a sales pipeline for my business.

        Business: [Nimbus Logistics, New York. We sell monthly delivery contracts to online stores. Contracts are worth ₹50,000 to ₹5,00,000 a month. A 2-week pilot usually comes before the contract.]
        Who buys: [founders or operations heads of online stores]
        Usual time to close: [1 to 3 months]

        Make a pipeline design table with these columns:
        Stage name | Exit criteria | Probability % | Usual max days in stage | Fields required at this stage

        Rules:
        - 5 to 7 open stages, plus Closed won and Closed lost.
        - Stage names must describe what has happened, not how the rep feels.
        - Write each exit criterion as a fact that anyone can check.
        - Probabilities must go up from stage to stage. Label them as starting guesses to update from our own won and lost deals.
        - After the table, list 3 clear reasons to move a deal to Closed lost.
        - Do not quote industry benchmarks or statistics.</pre>
            <ul class="ai-try-checks">
              <li>Is every exit criterion a fact you can check, not a feeling?</li>
              <li>Do the probabilities go up at every stage, with Closed won at 100% and Closed lost at 0%?</li>
              <li>Does the pipeline include the pilot, or your own special step?</li>
              <li>Did the AI avoid "average conversion rates" or other numbers you cannot check?</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A stage is only useful if everyone agrees what it means. Name stages by facts, write exit criteria anyone can check, and replace your first probability guesses with your own won and lost history.
        </div>
      HTML
      starter_code: nil
    },
    4 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-sales">Sales & CRM</div>
          <h1 class="lc-title">Fields, Properties and Good Data Rules</h1>
        </div>
        <p class="lc-lead">A CRM is only as good as the data inside it. If five people type "Industry" in five different ways, your reports break. In this lesson you will choose the right field types and decide which fields are required. You will write naming rules and a data dictionary. You will also use AI to turn messy old values into a clean list.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 290" role="img" aria-label="Before and after. On the left, a free text Industry field has five different spellings for the same textile industry, so the report shows five industries. On the right, a picklist offers a fixed list, Manufacturing is chosen, and the report shows one industry. An arrow in the middle says AI suggests and a person approves.">
            <defs><marker id="crm4a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="20" y="20" width="300" height="250" rx="12" fill="#1f1f44" stroke="#ec4899"/>
              <text x="170" y="46" font-weight="700" fill="#f9a8d4">Free text</text>
              <text x="170" y="66" font-size="11" fill="#9b99b8">Industry typed by hand</text>
              <text x="170" y="100" font-size="12.5">textiles</text>
              <text x="170" y="126" font-size="12.5">Textile</text>
              <text x="170" y="152" font-size="12.5">TEXTILES &amp; garments</text>
              <text x="170" y="178" font-size="12.5">txtl</text>
              <text x="170" y="204" font-size="12.5">Textiles mfg</text>
              <text x="170" y="250" font-size="12" fill="#fca5a5">Report shows 5 industries</text>
              <line x1="326" y1="150" x2="432" y2="150" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#crm4a)"/>
              <text x="380" y="138" font-size="11" fill="#9b99b8">AI suggests</text>
              <text x="380" y="170" font-size="11" fill="#9b99b8">you approve</text>
              <rect x="440" y="20" width="300" height="250" rx="12" fill="#1f1f44" stroke="#10b981"/>
              <text x="590" y="46" font-weight="700" fill="#6ee7b7">Picklist</text>
              <text x="590" y="66" font-size="11" fill="#9b99b8">chosen from a fixed list</text>
              <rect x="480" y="82" width="220" height="34" rx="6" fill="#27274e" stroke="#10b981"/>
              <text x="492" y="104" font-size="12.5" text-anchor="start">Industry: Manufacturing</text>
              <text x="688" y="104" font-size="12" text-anchor="end" fill="#9b99b8">▾</text>
              <rect x="480" y="120" width="220" height="104" rx="6" fill="#27274e" stroke="#4b4a78"/>
              <text x="492" y="142" font-size="12" text-anchor="start" fill="#6ee7b7">Manufacturing</text>
              <text x="492" y="164" font-size="12" text-anchor="start">Retail</text>
              <text x="492" y="186" font-size="12" text-anchor="start">Wholesale</text>
              <text x="492" y="208" font-size="12" text-anchor="start">Services</text>
              <text x="590" y="250" font-size="12" fill="#6ee7b7">Report shows 1 industry</text>
            </g>
          </svg>
          <figcaption>Free text lets everyone type something different. A picklist gives one clean value that reports can count.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Fields and field types</h3>
          <p>A <strong>field</strong> is one piece of information on a record, such as "City" or "Deal amount". HubSpot calls fields <strong>properties</strong>. Each field has a type. The type controls what people can enter.</p>
          <table class="lc-table">
            <thead><tr><th>Field type</th><th>Use it for</th><th>LedgerLite example</th></tr></thead>
            <tbody>
              <tr><td><strong>Picklist</strong> (also called a dropdown)</td><td>Answers that come from a short, fixed list</td><td>Lead source: Website, Referral, Event, Partner, Cold outreach</td></tr>
              <tr><td><strong>Text</strong></td><td>Names and notes that cannot be a list</td><td>Company name, call notes</td></tr>
              <tr><td><strong>Number / Currency</strong></td><td>Amounts you want to add up or compare</td><td>Deal amount: ₹1,20,000</td></tr>
              <tr><td><strong>Date</strong></td><td>Anything you will sort or remind on</td><td>Expected close date: 30-10-2026</td></tr>
              <tr><td><strong>Phone / Email</strong></td><td>Contact details. The CRM can check the format.</td><td>meena@tulsitextiles.example</td></tr>
              <tr><td><strong>Checkbox</strong></td><td>Yes or no answers</td><td>Agreed to receive product emails</td></tr>
            </tbody>
          </table>
          <p>Simple rule: if you will filter or report on a field, do not make it free text.</p>
        </div>
        <div class="lc-card">
          <h3>Required fields and naming rules</h3>
          <p>A <strong>required field</strong> must be filled before a record can be saved. Too few required fields give you gaps. Too many make people type "NA" or "xyz" just to save the record. That is worse than a blank.</p>
          <ul class="lc-list">
            <li><strong>Require only what you use.</strong> Every required field should feed a report, an automation or the next sales call.</li>
            <li><strong>Require fields at the right stage.</strong> LedgerLite asks for "Deal amount" only from Proposal sent. At Qualified, nobody knows it yet. Many CRMs can require a field when a deal enters a stage. Check your CRM's help pages.</li>
          </ul>
          <p><strong>Naming rules</strong> make records look the same, whoever types them. LedgerLite's rules:</p>
          <ul class="lc-list">
            <li><strong>Company name:</strong> the common name, no "Pvt Ltd" or "LLP". Example: "Tulsi Textiles". The legal name goes in its own field.</li>
            <li><strong>Deal name:</strong> Company - Product - Month Year. Example: "Tulsi Textiles - LedgerLite Pro 10 users - Oct 2026".</li>
            <li><strong>Mobile:</strong> +91 and then 10 digits, no spaces. Example: "+919825011223".</li>
            <li><strong>Email:</strong> all small letters.</li>
            <li><strong>City:</strong> choose from a picklist of official names, such as "Oxford" and "San Francisco".</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Write a data dictionary</h3>
          <p>A <strong>data dictionary</strong> is one table that explains every field: what it means, its type, if it is required and what values are allowed. New team members read it on day one. Here is part of LedgerLite's.</p>
          <table class="lc-table">
            <thead><tr><th>Field</th><th>Object</th><th>Type</th><th>Required?</th><th>Allowed values / format</th></tr></thead>
            <tbody>
              <tr><td>Company name</td><td>Company</td><td>Text</td><td>Always</td><td>Common name, no "Pvt Ltd"</td></tr>
              <tr><td>Industry</td><td>Company</td><td>Picklist</td><td>Always</td><td>Manufacturing, Retail, Wholesale, Services, Food &amp; beverage, Other</td></tr>
              <tr><td>Lead source</td><td>Contact</td><td>Picklist</td><td>Always</td><td>Website, Referral, Event, Partner, Cold outreach</td></tr>
              <tr><td>Mobile</td><td>Contact</td><td>Phone</td><td>No</td><td>+91 and 10 digits</td></tr>
              <tr><td>Deal amount</td><td>Deal</td><td>Currency (₹)</td><td>From Proposal sent</td><td>Yearly value in rupees, before GST</td></tr>
              <tr><td>Expected close date</td><td>Deal</td><td>Date</td><td>From Demo done</td><td>A real date, not "next month"</td></tr>
              <tr><td>Reason lost</td><td>Deal</td><td>Picklist</td><td>When Closed lost</td><td>Price, Chose another product, No budget, No decision, No reply, Other</td></tr>
            </tbody>
          </table>
          <pre><code>Weak prompt:
        Make a list of CRM fields.

        Better prompt:
        You are a CRM admin. Write a data dictionary for a B2B
        software startup. Objects: Companies, Contacts, Deals.
        Columns: Field, Object, Type, Required? (always / at a stage
        / no), Allowed values or format, Example.
        Use picklists for any answer from a short fixed list.
        Keep each picklist under 10 options.</code></pre>
        </div>
        <div class="lc-card">
          <h3>Turn messy old values into a picklist with AI</h3>
          <p>LedgerLite already has 240 companies with a free-text Industry field in column C. Kavya first lists every different value and counts it.</p>
          <pre><code>E2  =UNIQUE(C2:C241)                  list each different value once
        F2  =COUNTIF($C$2:$C$241,E2)          how many rows use that value</code></pre>
          <p>She pastes only the value list and counts into AI. Company names are not needed. She asks: "Map each value to one of these picklist options: Manufacturing, Retail, Wholesale, Services, Food &amp; beverage, Other. Mark any value you are unsure about."</p>
          <table class="lc-table">
            <thead><tr><th>Old value</th><th>Rows</th><th>AI suggestion</th><th>Kavya's decision</th></tr></thead>
            <tbody>
              <tr><td>textiles</td><td>14</td><td>Manufacturing</td><td>Agree</td></tr>
              <tr><td>Textile</td><td>9</td><td>Manufacturing</td><td>Agree</td></tr>
              <tr><td>TEXTILES &amp; garments</td><td>3</td><td>Manufacturing</td><td>Agree</td></tr>
              <tr><td>spices</td><td>4</td><td>Unsure: Wholesale or Food &amp; beverage</td><td>Checks each company. Kaveri Traders is Wholesale.</td></tr>
            </tbody>
          </table>
          <p>Then she puts the approved mapping on a sheet named <code>Mapping</code> and fills a new column with <code>=VLOOKUP(C2,Mapping!$A:$B,2,FALSE)</code>. Finally, she imports the clean values into the new picklist field.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: choose the field type</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sweet Crumbs, a London bakery, is setting up fields for office catering orders. Which type fits each field best?</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="pick" data-label="Picklist"></div>
              <div data-sorter-target="bucket" data-bucket="text" data-label="Free text"></div>
              <div data-sorter-target="bucket" data-bucket="numdate" data-label="Number or date"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="pick" data-why="There are only a few sources, and you will report on them. A picklist keeps them clean.">Lead source: Website, Referral, Instagram, Walk-in</li>
              <li data-bucket="pick" data-why="A short fixed list of order types makes reports easy.">Order type: Snack boxes, Birthday cake, Festival hampers</li>
              <li data-bucket="numdate" data-why="A number field lets you add up and compare order sizes.">Number of people to serve</li>
              <li data-bucket="numdate" data-why="A date field lets the CRM sort orders and send reminders.">Delivery date</li>
              <li data-bucket="text" data-why="Every office has different needs. You cannot turn them into a short list.">Special delivery instructions, for example "use the service lift"</li>
              <li data-bucket="pick" data-why="A fixed list of reasons lets you count why you lose orders. Add an optional note field for details.">Reason lost: Price, Chose another bakery, Event cancelled, No reply</li>
              <li data-bucket="text" data-why="A summary of what the client said is unique each time.">Summary of the client's feedback after the event</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to draft a data dictionary for your CRM. Then remove any field that nobody will use.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a CRM admin who helps small teams keep clean data. Write a data dictionary for our CRM.

        Business: [Sweet Crumbs, a London bakery that sells office catering: snack boxes, birthday cakes and festival hampers]
        Objects we use: [Companies (the offices), Contacts (the person who orders), Deals (each catering order)]

        Make a table with these columns:
        Field name | Object | Field type (text, picklist, number, currency, date, phone, email, checkbox) | Required? (always / at a stage / no) | Allowed values or format | Example

        Include 12 to 15 fields. Include Lead source, Industry, Order type, Number of people, Delivery date, Deal amount and Reason lost.

        Then write:
        - 5 naming rules: company names, deal names, phone numbers, dates and cities.
        - 3 fields that should NOT be required, and why.

        Rules:
        - Use a picklist when the answer comes from a short fixed list. Keep each picklist under 10 options.
        - Do not add sensitive personal fields, such as date of birth, religion or health details.
        - Use simple English.</pre>
            <ul class="ai-try-checks">
              <li>Are fields you will filter or report on picklists, numbers or dates, not free text?</li>
              <li>Are only a few fields required "always"? Too many will lead to junk data.</li>
              <li>Do the naming rules include a clear example for each rule?</li>
              <li>Did the AI avoid sensitive personal fields you do not need?</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Good data starts before anyone types. Pick the right field types, require only what you use, and write the rules in a data dictionary. Clean data in means useful reports and useful AI out.
        </div>
      HTML
      starter_code: nil
    },
    5 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-sales">Sales & CRM</div>
          <h1 class="lc-title">Cleaning CRM Data with AI</h1>
        </div>
        <p class="lc-lead">Every CRM collects mess over time. You get duplicate contacts, three spellings of one company and missing emails. Messy data means wrong reports and two reps calling the same person. In this lesson you will find problems with spreadsheet formulas. You will ask AI to draft cleaning rules and check every change before it reaches your CRM.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 290" role="img" aria-label="A six-step cleaning workflow. Export and back up, find problems with formulas, AI drafts rules on a masked sample, apply in a copy, check by hand, then merge in the CRM. The result: 240 contacts before and 231 after, with 9 real duplicates merged and 2 look-alike pairs kept apart.">
            <defs><marker id="crm5a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="20" y="24" width="200" height="62" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="120" y="50" font-weight="700">1. Export + backup</text>
              <text x="120" y="70" font-size="11" fill="#9b99b8">keep the original file</text>
              <rect x="280" y="24" width="200" height="62" rx="10" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="380" y="50" font-weight="700">2. Find problems</text>
              <text x="380" y="70" font-size="11" fill="#9b99b8">formulas flag rows</text>
              <rect x="540" y="24" width="200" height="62" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="640" y="50" font-weight="700">3. AI drafts rules</text>
              <text x="640" y="70" font-size="11" fill="#9b99b8">on a masked sample</text>
              <rect x="540" y="150" width="200" height="62" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="640" y="176" font-weight="700">4. Apply in a copy</text>
              <text x="640" y="196" font-size="11" fill="#9b99b8">never edit the original</text>
              <rect x="280" y="150" width="200" height="62" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="380" y="176" font-weight="700">5. Check by hand</text>
              <text x="380" y="196" font-size="11" fill="#9b99b8">counts + spot checks</text>
              <rect x="20" y="150" width="200" height="62" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="120" y="176" font-weight="700">6. Merge in the CRM</text>
              <text x="120" y="196" font-size="11" fill="#9b99b8">use its duplicate tool</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#crm5a)">
                <line x1="222" y1="55" x2="274" y2="55"/>
                <line x1="482" y1="55" x2="534" y2="55"/>
                <line x1="640" y1="88" x2="640" y2="144"/>
                <line x1="538" y1="181" x2="486" y2="181"/>
                <line x1="278" y1="181" x2="226" y2="181"/>
              </g>
              <text x="380" y="248" font-size="13" fill="#fcd34d">Before: 240 contacts    After: 231 contacts</text>
              <text x="380" y="272" font-size="11.5" fill="#9b99b8">9 real duplicates merged, 2 look-alike pairs kept apart, every change logged</text>
            </g>
          </svg>
          <figcaption>Clean in a copy, check by hand, then merge in the CRM. Formulas find problems, AI drafts rules and a person decides.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Common data problems</h3>
          <table class="lc-table">
            <thead><tr><th>Problem</th><th>Example</th><th>Why it hurts</th></tr></thead>
            <tbody>
              <tr><td><strong>Duplicates</strong> (the same person or company saved twice)</td><td>Meena Shah appears twice</td><td>Two reps call her in one week</td></tr>
              <tr><td><strong>Messy company names</strong></td><td>"tulsi textiles" and "Tulsi Textiles Pvt. Ltd."</td><td>Reports split one customer into two</td></tr>
              <tr><td><strong>Mixed formats</strong></td><td>"+91 9825011223" and "98250 11223". "SF" and "San Francisco".</td><td>Search and filters miss records</td></tr>
              <tr><td><strong>Missing fields</strong></td><td>No email, no industry</td><td>You cannot follow up or group customers</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Find problems with formulas</h3>
          <p>Kavya exports LedgerLite's contacts to a spreadsheet. All names and emails here are made up. These are rows 2 to 7.</p>
          <table class="lc-table">
            <thead><tr><th>Row</th><th>A: Company</th><th>B: Contact</th><th>C: Email</th><th>D: Phone</th></tr></thead>
            <tbody>
              <tr><td>2</td><td>Tulsi Textiles Pvt. Ltd.</td><td>Meena Shah</td><td>meena@tulsitextiles.example</td><td>98250 11223</td></tr>
              <tr><td>3</td><td>tulsi textiles</td><td>Meena Shah</td><td>Meena@TulsiTextiles.example (space at the end)</td><td>+91 9825011223</td></tr>
              <tr><td>4</td><td>GreenLeaf Organics</td><td>Dev Patil</td><td>dev@greenleaf.example</td><td>94220 12345</td></tr>
              <tr><td>5</td><td>Green Leaf Organics Pvt Ltd</td><td>Devendra Patil</td><td>dev@greenleaf.example</td><td>(blank)</td></tr>
              <tr><td>6</td><td>Kaveri Traders</td><td>Anil Rao</td><td>(blank)</td><td>98450 67890</td></tr>
              <tr><td>7</td><td>Sai Pharma</td><td>Lakshmi Iyer</td><td>lakshmi@saipharma.example</td><td>040 2345 6789</td></tr>
            </tbody>
          </table>
          <p>She adds four helper columns. These formulas work in both Google Sheets and Excel.</p>
          <pre><code>F2  Clean email:   =LOWER(TRIM(C2))
        G2  Email count:   =IF(F2="","no email",COUNTIF($F$2:$F$7,F2))
        H2  Company key:   =TRIM(SUBSTITUTE(SUBSTITUTE(LOWER(A2),"pvt. ltd.",""),"pvt ltd",""))
        I2  Mobile:        =RIGHT(SUBSTITUTE(SUBSTITUTE(SUBSTITUTE(D2," ",""),"+",""),"-",""),10)</code></pre>
          <p>She copies them down to row 7. These are the results.</p>
          <table class="lc-table">
            <thead><tr><th>Row</th><th>F: Clean email</th><th>G: Count</th><th>H: Company key</th><th>I: Mobile</th></tr></thead>
            <tbody>
              <tr><td>2</td><td>meena@tulsitextiles.example</td><td>2</td><td>tulsi textiles</td><td>9825011223</td></tr>
              <tr><td>3</td><td>meena@tulsitextiles.example</td><td>2</td><td>tulsi textiles</td><td>9825011223</td></tr>
              <tr><td>4</td><td>dev@greenleaf.example</td><td>2</td><td>greenleaf organics</td><td>9422012345</td></tr>
              <tr><td>5</td><td>dev@greenleaf.example</td><td>2</td><td>green leaf organics</td><td>(blank)</td></tr>
              <tr><td>6</td><td>(blank)</td><td>no email</td><td>kaveri traders</td><td>9845067890</td></tr>
              <tr><td>7</td><td>lakshmi@saipharma.example</td><td>1</td><td>sai pharma</td><td>4023456789</td></tr>
            </tbody>
          </table>
          <p>Look closely at what the formulas miss:</p>
          <ul class="lc-list">
            <li><strong>Rows 4 and 5:</strong> the company keys differ ("greenleaf" and "green leaf"). Only the matching email shows they are one person.</li>
            <li><strong>Row 7:</strong> this is an office landline, not a mobile. The formula removed its first 0 and made a wrong number. The mobile rule must not touch landlines.</li>
          </ul>
          <p>Formulas are fast and exact, but they only do what you tell them. You still check the results.</p>
        </div>
        <div class="lc-card">
          <h3>Ask AI for rules, not for your whole database</h3>
          <p>Do not paste your full contact list into an AI tool. Use a small sample. Mask personal details, or use a tool your company approved. Ask the AI for rules and suggestions. Then you apply them yourself.</p>
          <pre><code>Weak:
        Here is my whole CRM export. Clean it.

        Better:
        You are a careful CRM data cleaner. Below are 20 sample rows
        from our contacts export. Personal details are masked.
        1. List likely duplicate pairs with a reason and a
           confidence level (high, medium, low).
        2. Write cleaning rules for company names, emails, phones
           and cities.
        3. Give a Google Sheets formula for each rule, if one can
           do the job.
        Do not merge or delete anything. Do not invent missing
        data. Mark anything unsure as "check by hand".</code></pre>
          <p>Test every AI-written formula on 10 rows before you use it on all rows. AI formulas often look right and still fail on odd cases, like the landline above.</p>
        </div>
        <div class="lc-card">
          <h3>Check before and after</h3>
          <ul class="lc-list">
            <li><strong>Back up first.</strong> Keep an untouched copy of the export with the date in its name.</li>
            <li><strong>Count rows before and after.</strong> 240 contacts with 9 merges must give 231. Any other number means something went wrong.</li>
            <li><strong>Never merge on name alone.</strong> Two people can share a name. Use email, phone and company together.</li>
            <li><strong>Watch shared inboxes.</strong> "accounts@" or "info@" emails may belong to several people.</li>
            <li><strong>Keep consent flags.</strong> If either record says "do not contact", the merged record must say it too.</li>
            <li><strong>Do not guess missing data.</strong> Find a missing email from the customer's own messages or ask them. Never invent it.</li>
            <li><strong>Merge inside the CRM.</strong> Most CRMs have a duplicate or merge tool that keeps the call history. Check its help pages first.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Activity: Kavya's cleaning session</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="tool" data-label="Export">Kavya exports all 240 contacts from the CRM. She saves an untouched copy named "contacts_backup_2026-09-28".</li>
              <li data-kind="result" data-label="Formula flags">The email count and company key formulas flag 22 rows. That is 11 possible duplicate pairs. 31 rows have no email.</li>
              <li data-kind="user" data-label="Kavya's prompt">She masks phone numbers in the 22 flagged rows. She pastes them into the approved AI tool and asks for merge suggestions with reasons and confidence levels.</li>
              <li data-kind="answer" data-label="AI suggestions">The AI suggests 11 merges. It also proposes rules: remove "Pvt Ltd" from company names, make emails lowercase, and change "Oxford, UK" to "Oxford".</li>
              <li data-kind="warn" data-label="Shared inbox">One "high confidence" pair is two different people at Sai Pharma. They both use accounts@saipharma.example. Kavya keeps them apart.</li>
              <li data-kind="warn" data-label="Same company">Another pair only shares the company key "kaveri traders". The contacts are Anil Rao and Suresh, the owner. Two people at one company are not duplicates.</li>
              <li data-kind="check" data-label="Final list">11 pairs minus 2 wrong pairs leaves 9 real duplicates. She checks each one by hand, keeps the older record and keeps any "do not contact" flag.</li>
              <li data-kind="tool" data-label="Merge">She merges the 9 pairs with the CRM's merge tool, so the call history is kept. She writes each merge in a change log.</li>
              <li data-kind="result" data-label="Counts">The CRM now shows 231 contacts. 240 minus 9 is 231, so the count is right. The 31 missing emails become follow-up tasks, not guesses.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to find duplicates and write cleaning rules for a small sample. Use the made-up rows below, or your own masked rows.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a careful CRM data cleaner. Below is a sample from our contacts export. All data is made up.

        Company | Contact | Email | Phone | City
        Tulsi Textiles Pvt. Ltd. | Meena Shah | meena@tulsitextiles.example | 98250 11223 | Birmingham
        tulsi textiles | Meena Shah | Meena@TulsiTextiles.example | +91 9825011223 | surat
        GreenLeaf Organics | Dev Patil | dev@greenleaf.example | 94220 12345 | Denver
        Green Leaf Organics Pvt Ltd | Devendra Patil | dev@greenleaf.example |  | Denver
        Kaveri Traders | Anil Rao |  | 98450 67890 | Oxford, UK
        Kaveri Traders | Anil Rao | anil@kaveritraders.example | 9845067890 | Oxford
        [Replace these rows with up to 20 of your own rows, with personal details masked]

        Do this:
        1. List the likely duplicate pairs. For each, give the reason and your confidence (high, medium or low).
        2. For each pair, say which record to keep and which fields to copy across.
        3. Write 5 cleaning rules for company names, emails, phones, cities and blanks.
        4. Give a Google Sheets formula for each rule where a formula can do the job.

        Rules: Do not merge or delete anything yourself. Do not invent missing emails or phone numbers. Mark anything unsure as "check by hand".</pre>
            <ul class="ai-try-checks">
              <li>Did it find all three pairs: Meena Shah, Dev Patil and Anil Rao?</li>
              <li>Did it leave the missing phone and email blank, not invent them?</li>
              <li>Test one formula in a sheet. Does it give the result the AI says?</li>
              <li>Does the city rule use one official name, such as "Oxford"?</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Formulas find the obvious problems. AI suggests rules and spots look-alikes. Only a person should decide what to merge. Back up first, count before and after, and never guess missing data.
        </div>
      HTML
      starter_code: nil
    },
    6 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-sales">Sales & CRM</div>
          <h1 class="lc-title">Enriching Contacts Honestly</h1>
        </div>
        <p class="lc-lead">Many CRM records start with only a name and an email address. <strong>Enrichment</strong> means adding useful business details to a record, such as industry, company size and job role. Good enrichment helps you pick the right leads and write better messages. In this lesson, you will learn which sources you may use, how to keep a <strong>source note</strong> for every fact, and how to use AI without letting it guess. You will also learn what you must never add.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="A four-step flow: a bare record, an allowed source, adding the field with a source note, and checking it. Below, a green list of details that are fine to add with a source, and a red list of things you must never guess or scrape.">
            <defs><marker id="crm6a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="15" y="20" width="160" height="90" rx="10" fill="#1f1f44" stroke="#9b99b8"/>
              <text x="95" y="50" font-weight="700">Bare record</text>
              <text x="95" y="72" font-size="11.5" fill="#9b99b8">Tulsi Textiles</text>
              <text x="95" y="90" font-size="11.5" fill="#9b99b8">name + email only</text>
              <rect x="205" y="20" width="160" height="90" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="285" y="50" font-weight="700">Allowed source</text>
              <text x="285" y="72" font-size="11.5" fill="#9b99b8">website, registry</text>
              <text x="285" y="90" font-size="11.5" fill="#9b99b8">or the contact</text>
              <rect x="395" y="20" width="160" height="90" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="475" y="50" font-weight="700">Add the field</text>
              <text x="475" y="72" font-size="11.5" fill="#9b99b8">Industry: Manufacturing</text>
              <text x="475" y="90" font-size="11.5" fill="#9b99b8">+ a source note</text>
              <rect x="585" y="20" width="160" height="90" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="665" y="50" font-weight="700">Check it</text>
              <text x="665" y="72" font-size="11.5" fill="#9b99b8">same company?</text>
              <text x="665" y="90" font-size="11.5" fill="#9b99b8">date + your name</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#crm6a)">
                <line x1="177" y1="65" x2="201" y2="65"/>
                <line x1="367" y1="65" x2="391" y2="65"/>
                <line x1="557" y1="65" x2="581" y2="65"/>
              </g>
              <rect x="15" y="135" width="355" height="150" rx="12" fill="#1f1f44" stroke="#10b981"/>
              <text x="192" y="162" font-weight="700" fill="#6ee7b7">OK to add, with a source</text>
              <rect x="390" y="135" width="355" height="150" rx="12" fill="#1f1f44" stroke="#ec4899"/>
              <text x="567" y="162" font-weight="700" fill="#f9a8d4">Never guess or scrape</text>
              <g text-anchor="start" font-size="12.5">
                <text x="35" y="190">Industry: from their own website</text>
                <text x="35" y="215">Size band: the contact told you</text>
                <text x="35" y="240">Job title: from their email signature</text>
                <text x="35" y="265">City: from the enquiry form</text>
                <text x="410" y="190">Personal mobile or home address</text>
                <text x="410" y="215">Age, religion, caste or health</text>
                <text x="410" y="240">Bulk copies of LinkedIn profiles</text>
                <text x="410" y="265">"Probably" facts from an AI tool</text>
              </g>
            </g>
          </svg>
          <figcaption>Honest enrichment: every new fact comes from a source you can name, and some data never goes into the CRM at all.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Where good data comes from</h3>
          <p>Kavya sells LedgerLite, an accounting software for small businesses in San Francisco and beyond. A lead called Meena Shah from Tulsi Textiles, Birmingham, filled a form on the website. The record has her name, work email and company name. Kavya wants to add industry, company size and Meena's role. Here are the sources she may use.</p>
          <table class="lc-table">
            <thead><tr><th>Source</th><th>Good for</th><th>Watch out for</th></tr></thead>
            <tbody>
              <tr><td>The contact (call, form, email)</td><td>Role, team size, current tools, needs</td><td>Write what they said, not what you think they meant.</td></tr>
              <tr><td>The company's own website</td><td>Industry, products, cities they serve</td><td>Pages can be old. Note the date you checked.</td></tr>
              <tr><td>Official business registries</td><td>Legal company name, status, registered state</td><td>Use only the official site and follow its terms. In India, examples are the MCA company search and the GST number search.</td></tr>
              <tr><td>LinkedIn, viewed by you</td><td>Current job title, company page</td><td>Read it yourself, one profile at a time. LinkedIn's User Agreement bans scraping and most bots.</td></tr>
              <tr><td>Your CRM's built-in enrichment</td><td>Company size, industry</td><td>Ask where the data comes from. Check the tool's current help pages and terms.</td></tr>
            </tbody>
          </table>
          <p>An AI assistant is <strong>not</strong> a source. It can pull facts out of text you give it. But it can also invent facts that sound real, or mix up two companies with the same name.</p>
        </div>
        <div class="lc-card">
          <h3>Keep a source note for every fact</h3>
          <p>A <strong>source note</strong> is a short line that says where a fact came from, when, and who added it. It lets your team trust the data. It also tells you which facts to check again later.</p>
          <pre><code>Industry: Manufacturing
        Source: Tulsi Textiles website, About page
        Checked: 4 Sep 2026, by Kavya</code></pre>
          <p>Here is Kavya's enriched record. Look at the last two rows.</p>
          <table class="lc-table">
            <thead><tr><th>Field</th><th>Value</th><th>Source note</th></tr></thead>
            <tbody>
              <tr><td>Industry</td><td>Manufacturing</td><td>Company website, About page, 4 Sep 2026</td></tr>
              <tr><td>Employee size band</td><td>51–200</td><td>Meena said "about 80 people" on a call, 3 Sep 2026</td></tr>
              <tr><td>Job title</td><td>Finance Head</td><td>Meena's email signature, 1 Sep 2026</td></tr>
              <tr><td>Current accounting tool</td><td>Desktop software + spreadsheets</td><td>Meena on the call, 3 Sep 2026</td></tr>
              <tr><td>Annual revenue</td><td>Unknown</td><td>Not shared. Do not guess.</td></tr>
              <tr><td>Personal mobile</td><td>(blank)</td><td>Meena gave only the office number. Leave it blank.</td></tr>
            </tbody>
          </table>
          <p>"Unknown" is a good answer. A wrong fact is worse than an empty field. Someone may use it in an email and lose the buyer's trust.</p>
          <p>Personal data needs extra care. India's DPDP Act 2023 (Digital Personal Data Protection Act) expects a clear purpose for the personal data you collect. So collect only what you need for the sale. Laws such as GDPR apply in other places. This is general information, not legal advice.</p>
        </div>
        <div class="lc-card">
          <h3>Weak prompt, better prompt</h3>
          <p>This weak prompt asks the AI to guess and to find personal data:</p>
          <pre><code>Tell me everything about Tulsi Textiles in Birmingham. Give me their revenue,
        the owner's phone number and how many staff they have.</code></pre>
          <p>The AI may invent a revenue number. It may describe a different company with a similar name. And a personal phone number should not come from an AI tool at all. A better prompt gives the AI public text and strict rules:</p>
          <pre><code>Below is the About page text from the Tulsi Textiles website.
        Pull out only: industry, employee size band, cities served.
        Use only this text. If a field is not in the text, write "Unknown".
        For each value, quote the sentence you used.

        [paste the About page text]</code></pre>
          <p>Before you save anything, you must still:</p>
          <ul class="lc-list">
            <li>Open the page yourself and find each quoted sentence.</li>
            <li>Check it is the same company: same name, same city.</li>
            <li>Match the value to your CRM picklist, such as the size band "51–200".</li>
            <li>Add the source note with the date and your name.</li>
          </ul>
          <p>Paste only public text into a public AI tool. Do not paste private customer details. Use your company's approved AI tool for anything private.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: add it or leave it out?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Kavya is enriching LedgerLite leads. Sort each piece of data.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="ok" data-label="OK to add (with a source note)"></div>
              <div data-sorter-target="bucket" data-bucket="no" data-label="Do not add"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="ok" data-why="It comes from the company's own public website. Add the page name and the date you checked.">Industry "Organic food retail", from GreenLeaf Organics' own website</li>
              <li data-bucket="ok" data-why="The contact told you directly. Write &quot;told on call&quot; and the date in the source note.">Team size "11–50", because the owner said so on a call</li>
              <li data-bucket="ok" data-why="The contact shared it in a business email. It is a business fact, and you can show where it came from.">Job title "Accounts Manager", from the contact's email signature</li>
              <li data-bucket="no" data-why="A guess is not a fact. Leave the field as Unknown or ask the contact.">Revenue "₹10 crore", because an AI tool said "probably around ₹10 crore"</li>
              <li data-bucket="no" data-why="A personal number from an unknown site has no clear consent or purpose. Use only the numbers the person gave you.">The owner's personal mobile, found on a random directory website</li>
              <li data-bucket="no" data-why="LinkedIn's User Agreement bans scraping and most bots. The data also has no clear consent.">500 profiles copied into the CRM with a LinkedIn scraping tool</li>
              <li data-bucket="no" data-why="This is sensitive personal data. It is not needed for a sale, and guessing it from a name is unfair and often wrong.">The contact's religion, guessed from their surname</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Use AI to pull business facts out of a public company page, with a quote for every value. Paste real public text, or leave the example as it is.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a careful CRM data assistant for [LedgerLite, an accounting software company in San Francisco]. I will paste public text about one prospect company, such as its website About page.

        Pull out only these fields:
        - Company name
        - City
        - Industry (choose one: Manufacturing, Retail, Wholesale, Services, Food and beverage, Other)
        - Employee size band (choose one: 1–10, 11–50, 51–200, 201+)
        - Main products or services (10 words or fewer)

        Rules:
        - Use only the text I paste. Do not use your memory. Do not guess.
        - If a field is not clearly in the text, write "Unknown".
        - For each field, quote the exact sentence you used.
        - Do not add any personal data about people.

        Output: a table with columns Field | Value | Exact quote | Confidence (High or Low).
        Then suggest 2 polite questions I could ask the contact to fill the Unknown fields.

        Text:
        [Tulsi Textiles has made cotton and rayon fabrics in Birmingham since 2004. Our team of about 80 people supplies wholesalers across Gujarat and Maharashtra.]</pre>
            <ul class="ai-try-checks">
              <li>Every value has a quote that really is in your text.</li>
              <li>The size band matches the text (about 80 people is 51–200).</li>
              <li>Fields not in the text say "Unknown", with no guessed revenue or year.</li>
              <li>No personal data was added.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A CRM fact without a source is only a guess. Add business facts from sources you can name, write the source note, and choose "Unknown" over a wrong answer. Never guess personal data.
        </div>
      HTML
      starter_code: nil
    },
    7 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-sales">Sales & CRM</div>
          <h1 class="lc-title">Activity Notes and Call Logs</h1>
        </div>
        <p class="lc-lead">An <strong>activity</strong> is anything you log on a CRM record: a call, a meeting, an email or a message. A good activity note tells the next reader what happened and what comes next. That reader may be your manager, a teammate or you in three weeks. In this lesson, you will learn a simple note template. You will use AI to turn rough notes into clean notes. You will also write next steps with exact dates.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="Rough call notes on the left go through an AI draft step in the middle and become a structured CRM activity note on the right, with summary, needs, concerns, agreement, next step, due date and open questions. A bar below says you check facts, promises, names and dates before saving.">
            <defs><marker id="crm7a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="15" y="20" width="250" height="220" rx="12" fill="#1f1f44" stroke="#9b99b8"/>
              <text x="140" y="45" font-weight="700">Rough call notes</text>
              <g text-anchor="start" font-size="12" fill="#c9c7de">
                <text x="30" y="72">GreenLeaf, Sanjay, 20 min</text>
                <text x="30" y="94">3 shops, old software + Excel</text>
                <text x="30" y="116">GST filed late twice</text>
                <text x="30" y="138">wants demo, accountant too</text>
                <text x="30" y="160">price high?? for 3 shops</text>
                <text x="30" y="182">call back thu next wk pm</text>
                <text x="30" y="210" fill="#9b99b8">(call on Tue 1 Sep 2026)</text>
              </g>
              <rect x="295" y="100" width="140" height="60" rx="10" fill="#27274e" stroke="#8b5cf6"/>
              <text x="365" y="125" font-weight="700">AI drafts</text>
              <text x="365" y="145" font-size="11" fill="#9b99b8">fills the template</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#crm7a)">
                <line x1="267" y1="130" x2="291" y2="130"/>
                <line x1="437" y1="130" x2="461" y2="130"/>
              </g>
              <rect x="465" y="20" width="280" height="220" rx="12" fill="#1f1f44" stroke="#10b981"/>
              <text x="605" y="45" font-weight="700" fill="#6ee7b7">CRM activity note</text>
              <g text-anchor="start" font-size="12">
                <text x="480" y="72">Summary: 2 short lines</text>
                <text x="480" y="94">Needs: GST on time, 3 shops</text>
                <text x="480" y="116">Concerns: price for 3 shops</text>
                <text x="480" y="138">Agreed: demo with accountant</text>
                <text x="480" y="160">Next step: call, Kavya</text>
                <text x="480" y="182" fill="#fcd34d">Due: Thu 10 Sep 2026, pm</text>
                <text x="480" y="210" fill="#9b99b8">Open: budget [check]</text>
              </g>
              <rect x="15" y="255" width="730" height="36" rx="10" fill="#27274e" stroke="#f59e0b"/>
              <text x="380" y="278">You check before saving: facts, promises, names and the exact date</text>
            </g>
          </svg>
          <figcaption>AI turns rough notes into a clean template in seconds. You still check every fact and date before you save it.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>A note template your whole team can use</h3>
          <p>When everyone writes notes in the same shape, anyone can read a deal quickly. Here is a simple template for LedgerLite's sales team.</p>
          <pre><code>Type: Call / Meeting / Email / WhatsApp
        Date: 1 Sep 2026
        With: Sanjay Patil (Owner), GreenLeaf Organics, Denver
        Summary: (2 sentences at most)
        Needs: (the problems they want to solve)
        Concerns: (objections, worries, blockers)
        Agreed: (only what both sides clearly agreed)
        Next step: (who does what, by which exact date)
        Open questions: (things you still need to find out)</code></pre>
          <table class="lc-table">
            <thead><tr><th>Vague note</th><th>Useful note</th></tr></thead>
            <tbody>
              <tr><td>Good call. Interested.</td><td>Wants a demo for his accountant. Filed GST late twice this year and wants to stop that.</td></tr>
              <tr><td>Price issue.</td><td>Worried the price is high for 3 shops. Did not share a budget.</td></tr>
              <tr><td>Follow up soon.</td><td>Kavya to call Sanjay on Thu 10 Sep 2026, afternoon, to fix the demo time.</td></tr>
            </tbody>
          </table>
          <p>The useful note answers four questions: what they need, what worries them, what was agreed, and what happens next.</p>
        </div>
        <div class="lc-card">
          <h3>Using AI to summarise calls and emails</h3>
          <p>You can paste rough notes, a call transcript or an email thread into an AI assistant. Ask it to fill your template. Some CRMs and meeting tools can also record calls and write summaries. Features differ, so check your tool's current help pages.</p>
          <p>Follow these rules:</p>
          <ul class="lc-list">
            <li><strong>Tell people before you record.</strong> Always ask the other person first. Recording rules differ by country and state. This is not legal advice.</li>
            <li><strong>Use an approved tool.</strong> Do not paste private customer details into a public AI tool. Remove things you do not need, such as bank details or ID numbers.</li>
            <li><strong>Ask for facts only.</strong> AI often adds things that were never said, such as "customer is keen to buy".</li>
          </ul>
          <p>A weak prompt:</p>
          <pre><code>Summarise this call.</code></pre>
          <p>A better prompt:</p>
          <pre><code>Turn my rough notes into a CRM note with these headings:
        Summary, Needs, Concerns, Agreed, Next step, Open questions.
        The call was on Tuesday 1 Sep 2026.
        Use only what is in my notes. Do not add budget or promises.
        Change relative dates into exact dates.
        Mark anything unclear with [check].</code></pre>
          <p>For a long email thread, ask: "What is the latest thing both sides agreed, and who replies next?" Then read the last two emails yourself to confirm it.</p>
        </div>
        <div class="lc-card">
          <h3>Next steps need an owner and an exact date</h3>
          <p>"Call back next week" is not a next step. A next step has three parts: <strong>who</strong>, <strong>what</strong> and <strong>an exact date</strong>. Then you create a task in the CRM so you get a reminder.</p>
          <p>People often say relative dates, such as "Thursday next week". AI can change these into exact dates, but only if you give it the call date. Kavya's call was on Tuesday 1 September 2026. Next week runs from Monday 7 September to Sunday 13 September. So "Thursday next week" is Thursday 10 September 2026.</p>
          <p>AI can still get dates wrong. Check every date against a calendar. If the buyer's words were unclear, ask them in your follow-up email: "Shall I call you on Thursday, 10 September, after 3 pm?"</p>
        </div>
        <div class="lc-card">
          <h3>Activity: Kavya logs a call</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Kavya asks">Here are my rough notes from a call with Sanjay Patil of GreenLeaf Organics. The call was on Tuesday 1 Sep 2026. Fill our note template. Use only my notes.</li>
              <li data-kind="answer" data-label="AI drafts">Summary: Sanjay runs 3 shops and filed GST late twice. He wants a demo with his accountant. Next step: Kavya to call Sanjay on Thu 10 Sep 2026, afternoon. Agreed: Sanjay will buy the 3-shop plan. Budget: ₹50,000.</li>
              <li data-kind="check" data-label="Kavya checks the date">She looks at her calendar. Thursday next week is 10 September 2026. The date is right.</li>
              <li data-kind="warn" data-label="Invented agreement">"Sanjay will buy the 3-shop plan" is wrong. He only asked about the price. Kavya changes "Agreed" to "Demo with his accountant".</li>
              <li data-kind="warn" data-label="Invented budget">Sanjay never gave a budget. Kavya deletes "₹50,000" and adds "Budget: unknown" under Open questions.</li>
              <li data-kind="tool" data-label="CRM">Kavya saves the note on the GreenLeaf deal. She creates a task: "Call Sanjay to fix demo time", due Thu 10 Sep 2026.</li>
              <li data-kind="result" data-label="Deal record">The deal now shows last activity 1 Sep and a next step on 10 Sep. Her manager can read the deal in 30 seconds.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Turn rough call notes into a clean CRM note with an exact next-step date. Replace the example notes with your own, after you remove private details.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a sales assistant for [LedgerLite, an accounting software for small businesses]. Turn my rough call notes into a CRM activity note.

        Call date: [Tuesday 1 September 2026]
        Rough notes:
        [GreenLeaf Organics, Denver. Sanjay Patil, owner. 20 min call. 3 shops. Uses old desktop software + Excel. Filed GST return late twice this year, paid late fees. Wants a demo, his accountant must join. Thinks price may be high for 3 shops. Said call him Thursday next week, afternoon.]

        Use these headings:
        Summary (2 sentences at most)
        Needs
        Concerns
        Agreed
        Next step (who, what, exact date)
        Open questions

        Rules:
        - Use only what is in my notes. Do not add budget, promises or feelings that are not written.
        - Change relative dates, such as "Thursday next week", into exact dates using the call date. Show your working in brackets.
        - If something is unclear, write [check with rep].
        - Keep it under 120 words. Use plain English.</pre>
            <ul class="ai-try-checks">
              <li>The next-step date is right. For the example, Thursday next week is Thursday 10 September 2026.</li>
              <li>Nothing was added that is not in the notes, such as a budget or "agreed to buy".</li>
              <li>The next step names a person, an action and a date.</li>
              <li>Unclear points are marked, and the note is under 120 words.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A note is written for the next person who opens the deal. AI can turn rough notes into a clean template in seconds. But you own the facts, especially promises and dates.
        </div>
      HTML
      starter_code: nil
    },
    8 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-sales">Sales & CRM</div>
          <h1 class="lc-title">Managing Your Pipeline Every Week</h1>
        </div>
        <p class="lc-lead">A pipeline only helps if it is true. Deals go quiet, next steps are forgotten, and some deals stay in one stage for months. A short <strong>weekly pipeline review</strong> finds these problems early. In this lesson, you will learn three warning signs, how to flag them with simple spreadsheet formulas, and how AI can prepare the review for you. You will also get a checklist you can use every Monday.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 320" role="img" aria-label="A pipeline review table for Nimbus Logistics on Monday 28 September 2026 with five deals. It shows days in stage, days since the last activity, the next step date and flags. Four of the five deals have at least one flag.">
            <defs><marker id="crm8a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12.5" fill="#e2e0f0">
              <rect x="10" y="10" width="740" height="300" rx="12" fill="#1f1f44" stroke="#4b4a78"/>
              <text x="380" y="36" text-anchor="middle" font-weight="700" font-size="13" fill="#fcd34d">Nimbus Logistics: open deals, review date Mon 28 Sep 2026</text>
              <g fill="#9b99b8" font-size="12">
                <text x="25" y="66">Company</text>
                <text x="175" y="66">Stage</text>
                <text x="330" y="66" text-anchor="middle">Days in stage</text>
                <text x="420" y="66" text-anchor="middle">Days idle</text>
                <text x="505" y="66" text-anchor="middle">Next step</text>
                <text x="560" y="66">Flags</text>
              </g>
              <line x1="20" y1="76" x2="740" y2="76" stroke="#4b4a78"/>
              <text x="25" y="102">Bandhej Crafts</text><text x="175" y="102">Contract sent</text>
              <text x="330" y="102" text-anchor="middle" fill="#fcd34d">26</text><text x="420" y="102" text-anchor="middle">4</text>
              <text x="505" y="102" text-anchor="middle">30 Sep</text><text x="560" y="102" fill="#fcd34d">long in stage</text>
              <line x1="20" y1="114" x2="740" y2="114" stroke="#27274e"/>
              <text x="25" y="136">Mitti Pottery Store</text><text x="175" y="136">Volumes shared</text>
              <text x="330" y="136" text-anchor="middle">7</text><text x="420" y="136" text-anchor="middle">7</text>
              <text x="505" y="136" text-anchor="middle" fill="#f9a8d4">none</text><text x="560" y="136" fill="#f9a8d4">no next step</text>
              <line x1="20" y1="148" x2="740" y2="148" stroke="#27274e"/>
              <text x="25" y="170">Kesar Home Decor</text><text x="175" y="170">Pilot running</text>
              <text x="330" y="170" text-anchor="middle">21</text><text x="420" y="170" text-anchor="middle" fill="#f9a8d4">18</text>
              <text x="505" y="170" text-anchor="middle" fill="#f9a8d4">15 Sep, late</text><text x="560" y="170" fill="#f9a8d4">stale, no next step</text>
              <line x1="20" y1="182" x2="740" y2="182" stroke="#27274e"/>
              <text x="25" y="204">Masala Box Foods</text><text x="175" y="204">Qualified</text>
              <text x="330" y="204" text-anchor="middle">3</text><text x="420" y="204" text-anchor="middle">3</text>
              <text x="505" y="204" text-anchor="middle">1 Oct</text><text x="560" y="204" fill="#6ee7b7">OK</text>
              <line x1="20" y1="216" x2="740" y2="216" stroke="#27274e"/>
              <text x="25" y="238">Urban Kurta Co.</text><text x="175" y="238">Contract sent</text>
              <text x="330" y="238" text-anchor="middle" fill="#fcd34d">28</text><text x="420" y="238" text-anchor="middle" fill="#f9a8d4">25</text>
              <text x="505" y="238" text-anchor="middle" fill="#f9a8d4">none</text><text x="560" y="238" fill="#f9a8d4">stale, long, no next step</text>
              <line x1="20" y1="252" x2="740" y2="252" stroke="#4b4a78"/>
              <text x="380" y="274" text-anchor="middle" font-size="11.5" fill="#9b99b8">stale: idle 15+ days · long in stage: 22+ days · no next step: blank or overdue</text>
              <text x="380" y="296" text-anchor="middle" fill="#6ee7b7">4 of 5 deals need a decision this week</text>
            </g>
          </svg>
          <figcaption>Rohit's weekly review table. The numbers come from simple date formulas, not from guesswork.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Three warning signs</h3>
          <p>Rohit is the sales manager at Nimbus Logistics in New York. His team sells delivery contracts to online stores. Its stages are Qualified, Volumes shared, Pilot running, Contract sent and Signed. Every Monday, he looks for three warning signs.</p>
          <table class="lc-table">
            <thead><tr><th>Warning sign</th><th>What it means</th><th>How to work it out</th></tr></thead>
            <tbody>
              <tr><td><strong>Stale deal</strong></td><td>Nobody has called, emailed or met the buyer for a long time.</td><td>Days idle = review date − last activity date</td></tr>
              <tr><td><strong>Long in stage</strong></td><td>The deal has not moved forward for a long time.</td><td>Stage age (days in the current stage) = review date − date it entered the stage</td></tr>
              <tr><td><strong>No next step</strong></td><td>No one knows what happens next.</td><td>The next step date is blank, or it is before the review date (overdue).</td></tr>
            </tbody>
          </table>
          <p>Rohit's team uses these limits: stale means more than 14 days idle, and long in stage means more than 21 days. These are his team's choices, not rules. Pick limits that fit your own sales cycle (the usual time from first contact to a closed deal).</p>
          <p>One more check: is the expected close date already in the past? If so, the rep must update it or close the deal as lost.</p>
        </div>
        <div class="lc-card">
          <h3>Flag the deals with formulas</h3>
          <p>Rohit exports open deals from the CRM into a spreadsheet. He needs only these columns: A Company, B Value, C Stage, D Entered stage, E Last activity, F Next step date. He types the review date in cell <code>J1</code>. Using a fixed date keeps the numbers the same all day. You can use <code>=TODAY()</code> instead.</p>
          <pre><code>Stage age (G2):   =$J$1-D2
        Days idle (H2):   =$J$1-E2
        Flags (I2):       =TEXTJOIN(", ", TRUE, IF(H2&gt;14,"stale",""), IF(G2&gt;21,"long in stage",""), IF(OR(F2="",F2&lt;$J$1),"no next step",""))</code></pre>
          <p>Format columns G and H as numbers, not dates. <code>TEXTJOIN</code> works in Google Sheets and newer versions of Excel. Copy the formulas down for every row.</p>
          <table class="lc-table">
            <thead><tr><th>Company</th><th>Value (₹)</th><th>Entered stage</th><th>Last activity</th><th>Next step</th><th>Stage age</th><th>Days idle</th><th>Flags</th></tr></thead>
            <tbody>
              <tr><td>Bandhej Crafts</td><td>4,80,000</td><td>2 Sep</td><td>24 Sep</td><td>30 Sep</td><td>26</td><td>4</td><td>long in stage</td></tr>
              <tr><td>Mitti Pottery Store</td><td>2,40,000</td><td>21 Sep</td><td>21 Sep</td><td>blank</td><td>7</td><td>7</td><td>no next step</td></tr>
              <tr><td>Kesar Home Decor</td><td>6,00,000</td><td>7 Sep</td><td>10 Sep</td><td>15 Sep</td><td>21</td><td>18</td><td>stale, no next step</td></tr>
              <tr><td>Masala Box Foods</td><td>1,50,000</td><td>25 Sep</td><td>25 Sep</td><td>1 Oct</td><td>3</td><td>3</td><td>(none)</td></tr>
              <tr><td>Urban Kurta Co.</td><td>3,60,000</td><td>31 Aug</td><td>3 Sep</td><td>blank</td><td>28</td><td>25</td><td>stale, long in stage, no next step</td></tr>
            </tbody>
          </table>
          <p>Look at Kesar Home Decor. Its stage age is exactly 21 days. The rule says "more than 21", so it is not flagged as long in stage. Small details like this matter when you check an AI's work.</p>
          <p>The open pipeline is ₹4,80,000 + ₹2,40,000 + ₹6,00,000 + ₹1,50,000 + ₹3,60,000 = ₹18,30,000. Flagged deals hold ₹16,80,000 of it.</p>
        </div>
        <div class="lc-card">
          <h3>Your weekly review checklist</h3>
          <ul class="lc-list">
            <li>Export open deals with stage, value, dates, owner and next step.</li>
            <li>Work out stage age and days idle. Flag the three warning signs.</li>
            <li>Find expected close dates that are already in the past.</li>
            <li>Check <strong>pipeline coverage</strong>: open pipeline value expected to close this period ÷ the sales target still left for the period. Say ₹18,30,000 is expected to close this quarter and ₹12,00,000 of the target is left. Coverage is 18,30,000 ÷ 12,00,000 = 1.5 times, rounded. Your team decides how much is enough.</li>
            <li>Each rep updates every flagged deal: a new next step with a date, a new close date, or "closed lost".</li>
            <li>Discuss only the flagged and largest deals in the meeting.</li>
          </ul>
          <p>AI can help you prepare. Paste the flagged table and ask for a short summary and one question per deal. Send only the columns you need. Leave out contact names, phone numbers and emails. AI must never change stages or values for you. And recount any number it gives you, because AI can make maths mistakes with dates.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: order the weekly review</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put Rohit's Monday pipeline review in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Export open deals with stage, value, dates and next step</li>
              <li data-order="2">Work out stage age and days idle with formulas</li>
              <li data-order="3">Flag stale deals, long stage age and missing next steps</li>
              <li data-order="4">Ask AI for a short summary and one question per flagged deal</li>
              <li data-order="5">Each rep updates flagged deals: next step, close date or lost</li>
              <li data-order="6">Discuss the flagged and largest deals in a short team meeting</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to prepare a weekly pipeline review from a small table. Then check its maths against the formulas in this lesson.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a sales operations assistant for [Nimbus Logistics, a New York company that sells delivery contracts to online stores]. Prepare my weekly pipeline review.

        Review date: [Mon 28 Sep 2026]
        Rules: stale = more than [14] days since last activity. Long in stage = more than [21] days in the current stage. No next step = next step date is blank or before the review date.

        Deals (Company | Value ₹ | Stage | Entered stage | Last activity | Next step date):
        [Bandhej Crafts | 4,80,000 | Contract sent | 2 Sep 2026 | 24 Sep 2026 | 30 Sep 2026
        Mitti Pottery Store | 2,40,000 | Volumes shared | 21 Sep 2026 | 21 Sep 2026 | blank
        Kesar Home Decor | 6,00,000 | Pilot running | 7 Sep 2026 | 10 Sep 2026 | 15 Sep 2026
        Masala Box Foods | 1,50,000 | Qualified | 25 Sep 2026 | 25 Sep 2026 | 1 Oct 2026
        Urban Kurta Co. | 3,60,000 | Contract sent | 31 Aug 2026 | 3 Sep 2026 | blank]

        Give me:
        1. A table: Company | Stage age | Days idle | Flags. Show how you counted the days.
        2. The total open value and the total value of flagged deals.
        3. For each flagged deal, one short question to ask the rep.
        Do not change any stage or value. Do not guess facts that are not in the table.</pre>
            <ul class="ai-try-checks">
              <li>Urban Kurta Co. has a stage age of 28 days and 25 days idle.</li>
              <li>Kesar Home Decor is 21 days in stage, so it is not "long in stage".</li>
              <li>Totals: ₹18,30,000 open and ₹16,80,000 flagged. Check them in a spreadsheet.</li>
              <li>The questions ask for decisions (next step, date or lost), not blame.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A weekly review keeps your pipeline honest. Let formulas find stale deals, long stage ages and missing next steps. Let AI prepare the summary. Then a person decides what happens to each deal.
        </div>
      HTML
      starter_code: nil
    },
    9 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-sales">Sales & CRM</div>
          <h1 class="lc-title">Deal Health and Next Best Action</h1>
        </div>
        <p class="lc-lead">Two deals can sit in the same stage with the same value. One is moving forward. The other is quietly dying. <strong>Deal health</strong> means how likely a deal is to move forward, based on signs you can see. The <strong>next best action</strong> is the most useful thing you can do for the deal right now. In this lesson, you will learn to read the signs, ask AI for options, and make the final choice yourself.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 290" role="img" aria-label="Two boxes list healthy signs and stuck signs of a deal. Below, a flow: deal facts go to AI, which gives three options with reasons. You decide, and the choice becomes a task in the CRM.">
            <defs><marker id="crm9a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="15" y="15" width="355" height="145" rx="12" fill="#1f1f44" stroke="#10b981"/>
              <text x="192" y="42" font-weight="700" fill="#6ee7b7">Healthy signs</text>
              <rect x="390" y="15" width="355" height="145" rx="12" fill="#1f1f44" stroke="#ec4899"/>
              <text x="567" y="42" font-weight="700" fill="#f9a8d4">Stuck signs</text>
              <g text-anchor="start" font-size="12.5">
                <text x="35" y="70">Next meeting is booked</text>
                <text x="35" y="95">Buyer replies within days</text>
                <text x="35" y="120">Decision maker has joined</text>
                <text x="35" y="145">Buyer shared a clear timeline</text>
                <text x="410" y="70">No reply since the proposal</text>
                <text x="410" y="95">Only one junior contact</text>
                <text x="410" y="120">Close date moved twice</text>
                <text x="410" y="145">"Just send info, we will see"</text>
              </g>
              <text x="380" y="188" font-size="12" fill="#9b99b8">Read the signs, then choose the next best action</text>
              <rect x="15" y="205" width="160" height="70" rx="10" fill="#27274e" stroke="#3b82f6"/>
              <text x="95" y="235" font-weight="700">Deal facts</text>
              <text x="95" y="257" font-size="11" fill="#9b99b8">notes, dates, emails</text>
              <rect x="205" y="205" width="160" height="70" rx="10" fill="#27274e" stroke="#8b5cf6"/>
              <text x="285" y="235" font-weight="700">AI: 3 options</text>
              <text x="285" y="257" font-size="11" fill="#9b99b8">each with a reason</text>
              <rect x="395" y="205" width="160" height="70" rx="10" fill="#27274e" stroke="#ec4899" stroke-width="2"/>
              <text x="475" y="235" font-weight="700">You decide</text>
              <text x="475" y="257" font-size="11" fill="#9b99b8">you know the buyer</text>
              <rect x="585" y="205" width="160" height="70" rx="10" fill="#27274e" stroke="#10b981"/>
              <text x="665" y="235" font-weight="700">Task in the CRM</text>
              <text x="665" y="257" font-size="11" fill="#9b99b8">owner + due date</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#crm9a)">
                <line x1="177" y1="240" x2="201" y2="240"/>
                <line x1="367" y1="240" x2="391" y2="240"/>
                <line x1="557" y1="240" x2="581" y2="240"/>
              </g>
            </g>
          </svg>
          <figcaption>Signs tell you how a deal is doing. AI can suggest actions, but the person who knows the buyer makes the choice.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Signs of a healthy or stuck deal</h3>
          <p>Deal health comes from what the buyer <em>does</em>, not from how you feel about the deal. Here are common signs.</p>
          <table class="lc-table">
            <thead><tr><th>Sign</th><th>Healthy</th><th>Stuck</th></tr></thead>
            <tbody>
              <tr><td>Next step</td><td>A meeting or call is booked, with a date</td><td>"I will get back to you"</td></tr>
              <tr><td>Replies</td><td>The buyer replies within a few days</td><td>No reply for two weeks or more</td></tr>
              <tr><td>People</td><td>A champion (a person inside the buyer's company who wants your product) and the decision maker are both involved</td><td>Only one junior contact, who cannot decide</td></tr>
              <tr><td>Timeline</td><td>The buyer says when they need it and why</td><td>No date, or "maybe next year"</td></tr>
              <tr><td>Close date</td><td>It stays the same</td><td>It has moved again and again</td></tr>
              <tr><td>Budget</td><td>The buyer has talked about budget</td><td>Budget has never come up</td></tr>
            </tbody>
          </table>
          <p>These are signs, not proof. A quiet buyer may be on leave. A busy buyer may still sign. Some CRMs show an AI "deal score". Find out what the score is based on before you trust it. Check the tool's help pages.</p>
        </div>
        <div class="lc-card">
          <h3>A simple health check</h3>
          <p>Kavya at LedgerLite has a deal with Tulsi Textiles, Birmingham: 10 user licences for ₹1,20,000 a year. Her contact is Meena Shah, the Finance Head. On Monday 28 Sep 2026, Kavya answers six yes-or-no questions. A "Yes" is always the good answer.</p>
          <table class="lc-table">
            <thead><tr><th>Question</th><th>Answer</th><th>Evidence</th></tr></thead>
            <tbody>
              <tr><td>Is the next meeting booked?</td><td>No</td><td>No meeting in the CRM</td></tr>
              <tr><td>Did the buyer reply in the last 7 days?</td><td>No</td><td>Last reply on 16 Sep, 12 days ago</td></tr>
              <tr><td>Has the decision maker joined?</td><td>Yes</td><td>The owner came to the demo</td></tr>
              <tr><td>Did the buyer share a timeline?</td><td>Yes</td><td>Wants to start before the new financial year on 1 April</td></tr>
              <tr><td>Has the close date stayed the same?</td><td>No</td><td>Moved twice</td></tr>
              <tr><td>Has budget been discussed?</td><td>Unknown</td><td>Not in any note</td></tr>
            </tbody>
          </table>
          <p>The score is 2 "Yes" out of 6, with 1 unknown. Kavya's team calls a deal with 2 or fewer "Yes" answers "at risk". That is a team rule to start a conversation. It does not predict the result.</p>
        </div>
        <div class="lc-card">
          <h3>Ask AI for options, then decide yourself</h3>
          <p>A weak prompt invites pushy or dishonest ideas:</p>
          <pre><code>How do I close this deal fast?</code></pre>
          <p>The AI may suggest a big discount or fake urgency, such as "price goes up tomorrow". A better prompt gives facts and limits:</p>
          <pre><code>Here are the facts of one deal: [signs, dates, last notes].
        List the healthy signs, the stuck signs and the unknowns.
        Then suggest 3 possible next actions.
        For each: why it might help, what could go wrong, and the effort.
        Rules: no discounts, no pressure, no false urgency.
        Only use the facts I gave. Tell me what else I should find out.</code></pre>
          <p>Then <strong>you</strong> choose. The AI does not know:</p>
          <ul class="lc-list">
            <li>How the buyer sounded on the phone, or what they told you off the record.</li>
            <li>Your company's rules. At LedgerLite, only Arjun, the founder, can approve discounts.</li>
            <li>Timing. For example, finance teams are often busy at month end.</li>
          </ul>
          <p>Write down the action you chose and the reason. Then create a CRM task with an owner and a date.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: Kavya picks the next best action</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Kavya asks">Here are the facts of my Tulsi Textiles deal: owner joined the demo, wants to start before 1 April, no reply since 16 Sep, close date moved twice, budget unknown. Give me the signs and 3 next actions.</li>
              <li data-kind="answer" data-label="AI reads the signs">Healthy: the decision maker is involved and there is a clear timeline. Stuck: 12 days with no reply, and the close date moved twice. Unknown: budget.</li>
              <li data-kind="answer" data-label="AI suggests">A) Send Meena a one-page summary of how LedgerLite handles GST reports. B) Ask Meena for a 15-minute call with the owner to talk about budget and timing. C) Offer 20% off if they sign this month.</li>
              <li data-kind="warn" data-label="Reject option C">Kavya cannot offer discounts. Only Arjun can approve them. "Sign this month" is also pressure the buyer did not ask for. She drops option C.</li>
              <li data-kind="thought" data-label="What the AI cannot know">Meena told Kavya that her team is very busy at month end. A call request on 30 September may get lost.</li>
              <li data-kind="check" data-label="Kavya decides">She picks option B, but sends the request on Thursday 1 October, after month end. She writes it in a short, friendly tone.</li>
              <li data-kind="tool" data-label="CRM">She creates a task: "Ask Meena for a budget call with the owner", due Thu 1 Oct 2026. She adds her reason to the deal note.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Use AI as a deal coach. It reads the signs and gives you options. You make the choice.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an honest sales coach. Help me review the health of one deal and choose a next step. The final decision is mine.

        Seller: [LedgerLite, accounting software for small businesses]
        Deal: [Tulsi Textiles, Birmingham. 10 user licences, ₹1,20,000 a year. Stage: Proposal sent.]
        Facts:
        [- Owner joined the demo on 9 Sep.
        - Wants to start before the new financial year (1 April).
        - Last reply from the Finance Head was on 16 Sep. Today is 28 Sep 2026.
        - Close date has moved twice.
        - Budget has never been discussed.]

        Please give me:
        1. Healthy signs, stuck signs and unknowns, each with the fact it comes from.
        2. Three possible next actions. For each: why it might help, what could go wrong, and the effort (low, medium or high).
        3. Two questions I should find answers to.
        4. A short, polite draft message for the action you think is strongest.

        Rules: no discounts, no pressure and no false urgency. Do not invent facts about the buyer. Say clearly when something is a guess.</pre>
            <ul class="ai-try-checks">
              <li>Every sign points to a fact from the prompt, not an invented one.</li>
              <li>The days are right: 16 Sep to 28 Sep is 12 days with no reply.</li>
              <li>No option uses a discount, pressure or a fake deadline.</li>
              <li>You choose the action yourself, and you know why.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Judge deal health by what the buyer does, not by hope. AI is good at listing signs and options. The person who knows the buyer, the timing and the company rules picks the next best action.
        </div>
      HTML
      starter_code: nil
    },
    10 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-sales">Sales & CRM</div>
          <h1 class="lc-title">CRM Automation Basics</h1>
        </div>
        <p class="lc-lead">Many sales tasks happen the same way every time. A new lead arrives and someone must call. A quote goes out and someone must follow up. A CRM <strong>workflow</strong> (an automatic rule) can do these small jobs for you. It can create tasks, assign leads and send reminders. In this lesson, you will learn the three parts of every workflow, how to write one in plain words, and how to test it safely. You will also use AI to plan workflows without writing any code.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 330" role="img" aria-label="A workflow for Sweet Crumbs. When a new catering enquiry form arrives, the CRM checks if it is for 50 or more guests. If yes, it assigns the lead to Priya and creates a call task within 2 hours. If no, it sends the menu email and creates a call task for the next working day. Labels below say when, if and then.">
            <defs><marker id="crm10a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="102" y="40" font-weight="700" fill="#9b99b8">Sweet Crumbs</text>
              <text x="102" y="60" font-size="11.5" fill="#9b99b8">office catering, London</text>
              <rect x="15" y="120" width="175" height="64" rx="10" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="102" y="147" font-weight="700">New catering</text>
              <text x="102" y="167" font-weight="700">enquiry form</text>
              <polygon points="215,152 305,92 395,152 305,212" fill="#27274e" stroke="#f59e0b"/>
              <text x="305" y="148" font-weight="700">50+ guests?</text>
              <text x="305" y="166" font-size="11" fill="#9b99b8">headcount field</text>
              <rect x="455" y="22" width="290" height="64" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="600" y="48" font-weight="700">Assign to Priya</text>
              <text x="600" y="70" font-size="12">Task: call within 2 hours</text>
              <rect x="455" y="218" width="290" height="64" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="600" y="244" font-weight="700">Send the menu email</text>
              <text x="600" y="266" font-size="12">Task: call next working day</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#crm10a)">
                <line x1="192" y1="152" x2="211" y2="152"/>
                <line x1="350" y1="122" x2="451" y2="62"/>
                <line x1="350" y1="182" x2="451" y2="248"/>
              </g>
              <text x="392" y="80" font-weight="700" fill="#6ee7b7">Yes</text>
              <text x="392" y="240" font-weight="700" fill="#f9a8d4">No</text>
              <rect x="15" y="296" width="175" height="28" rx="14" fill="#27274e" stroke="#22d3ee"/>
              <text x="102" y="315" font-size="12">WHEN: trigger</text>
              <rect x="215" y="296" width="180" height="28" rx="14" fill="#27274e" stroke="#f59e0b"/>
              <text x="305" y="315" font-size="12">IF: condition</text>
              <rect x="455" y="296" width="290" height="28" rx="14" fill="#27274e" stroke="#10b981"/>
              <text x="600" y="315" font-size="12">THEN: actions</text>
            </g>
          </svg>
          <figcaption>Every workflow has the same three parts: when something happens, if a check is true, then do the actions.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>When, If, Then</h3>
          <p>You can write any workflow as one plain sentence: <strong>"When</strong> something happens, <strong>if</strong> something is true, <strong>then</strong> do these actions."</p>
          <table class="lc-table">
            <thead><tr><th>Part</th><th>What it is</th><th>Examples</th></tr></thead>
            <tbody>
              <tr><td><strong>Trigger</strong> (When)</td><td>The event that starts the workflow</td><td>A form is submitted. A deal moves to a new stage. A date arrives.</td></tr>
              <tr><td><strong>Condition</strong> (If)</td><td>A check on the record's fields. The workflow runs only if it is true.</td><td>Deal value is over ₹5,00,000. City is London. The consent field says "Yes".</td></tr>
              <tr><td><strong>Action</strong> (Then)</td><td>What the CRM does</td><td>Create a task. Assign an owner. Send an email template. Update a field.</td></tr>
            </tbody>
          </table>
          <p>Most CRMs have a workflow builder. Zoho CRM calls them workflow rules. HubSpot and Freshsales call them workflows. Salesforce uses Flow. Menus and plan limits change, so check your CRM's current help pages.</p>
        </div>
        <div class="lc-card">
          <h3>Three common kinds of workflow</h3>
          <table class="lc-table">
            <thead><tr><th>Kind</th><th>Example in plain words</th></tr></thead>
            <tbody>
              <tr><td><strong>Follow-up task</strong></td><td>Nimbus Logistics: <em>When</em> a deal moves to "Contract sent", <em>if</em> no activity is logged for 3 days, <em>then</em> create a task for the deal owner: "Follow up on the contract".</td></tr>
              <tr><td><strong>Assignment rule</strong> (who gets a new lead)</td><td>LedgerLite: <em>When</em> a website lead arrives, <em>if</em> the city is San Francisco, <em>then</em> assign it to Kavya. Otherwise, assign it round-robin (to each of the other reps in turn).</td></tr>
              <tr><td><strong>Reminder</strong></td><td>Sweet Crumbs: <em>When</em> an event date is 2 days away, <em>then</em> remind the deal owner to confirm the final headcount.</td></tr>
            </tbody>
          </table>
          <p>Automate the boring, repeated steps: tasks, reminders and routing. Keep judgement with people. A workflow should never decide a discount or close a deal as lost.</p>
        </div>
        <div class="lc-card">
          <h3>Plan with AI, then test with care</h3>
          <p>AI can turn your process, written in everyday words, into clear workflow plans. A weak prompt:</p>
          <pre><code>Automate my CRM.</code></pre>
          <p>A better prompt describes the real process and asks for a checkable plan:</p>
          <pre><code>Here is how we handle catering enquiries: [your process].
        Turn it into CRM workflows. For each one, give When, If and Then.
        List what could go wrong and how to test it with one test record.
        Do not assume my CRM has a feature. Tell me to check its help pages.</code></pre>
          <p>Common mistakes to look for:</p>
          <ul class="lc-list">
            <li><strong>Loops:</strong> workflow A updates a field that starts workflow B, which starts A again.</li>
            <li><strong>Doubles:</strong> two workflows create the same task, or send the same email twice.</li>
            <li><strong>No consent:</strong> automatic emails, SMS or WhatsApp messages go to people who did not agree to get them.</li>
            <li><strong>Bad timing:</strong> messages go out late at night or on holidays.</li>
            <li><strong>No owner:</strong> nobody knows who set up a workflow or why.</li>
          </ul>
          <p>Test every workflow on a test record, such as "TEST – Sweet Crumbs enquiry". Check the CRM's history log to see what it did. Then turn it on and watch it for the first week.</p>
          <p>Automated calls and SMS in India must follow TRAI's commercial communication rules, including DND (Do Not Disturb) preferences. Consent rules, such as the DPDP Act in India, also apply. This is general information, not legal advice.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: trigger, condition or action?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each part of a CRM workflow.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="trigger" data-label="Trigger (When)"></div>
              <div data-sorter-target="bucket" data-bucket="condition" data-label="Condition (If)"></div>
              <div data-sorter-target="bucket" data-bucket="action" data-label="Action (Then)"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="trigger" data-why="This is an event. It starts the workflow.">A new enquiry form is submitted on the website</li>
              <li data-bucket="trigger" data-why="A stage change is an event. Many follow-up workflows start here.">A deal moves to the stage "Proposal sent"</li>
              <li data-bucket="condition" data-why="This checks a field. The workflow runs only when it is true.">The deal value is more than ₹5,00,000</li>
              <li data-bucket="condition" data-why="This checks the city field. It decides which path the lead takes.">The lead's city is London</li>
              <li data-bucket="condition" data-why="This checks the consent field before any automatic message is sent.">The contact has agreed to get emails (consent field is "Yes")</li>
              <li data-bucket="action" data-why="This is something the CRM does after the checks pass.">Create a call task for the deal owner, due tomorrow</li>
              <li data-bucket="action" data-why="Assigning an owner is an action. A round-robin rule decides who is next.">Assign the lead to the next rep in turn</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Describe your sales process in everyday words. AI turns it into workflow plans you can build and test in your CRM.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a CRM automation planner. I do not write code. Turn my sales process into simple CRM workflows.

        My business: [Sweet Crumbs, a London bakery that sells office catering]
        My CRM: [Zoho CRM / HubSpot / Salesforce / Freshsales / not sure]
        My process, in my own words:
        [When a company fills our catering form, someone should call them the same day. Orders for 50 or more people go to Priya. If we send a quote and hear nothing for 3 days, remind the deal owner to follow up. Two days before an event, remind the team to confirm the headcount.]

        For each workflow, give me:
        1. Name
        2. When (the trigger)
        3. If (the conditions)
        4. Then (the actions)
        5. What could go wrong, for example duplicate tasks, loops, messages at night, or messages to people who did not agree to get them
        6. How to test it with one test record

        Rules: use plain words, not code. Do not promise that my CRM has a feature. Say "check your CRM's help pages" where menus or plans may differ. Only send automatic messages to people who have agreed to get them.</pre>
            <ul class="ai-try-checks">
              <li>Each workflow has one clear trigger.</li>
              <li>Every condition checks a real field, such as headcount or quote date.</li>
              <li>No automatic message goes out without a consent check.</li>
              <li>Each workflow has a test plan, and the AI tells you to check your CRM's help pages.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Write every workflow as one sentence first: "When…, if…, then…". If you cannot say it simply, it is not ready to build. Automate tasks, reminders and routing. Keep decisions about people and prices with people.
        </div>
      HTML
      starter_code: nil
    },
    11 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-sales">Sales & CRM</div>
          <h1 class="lc-title">Emails and Templates in the CRM</h1>
        </div>
        <p class="lc-lead">An <strong>email template</strong> is a saved email that you can use again and again. Your CRM can fill in each person's name and company for you. It can send the email and save it on the contact's record. In this lesson, you will build a small template library for LedgerLite. You will use merge fields safely, read tracking numbers correctly and keep every email personal. You will also use AI to draft templates faster.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 260" role="img" aria-label="A template with merge fields and a CRM record are combined into a draft email. A person adds one personal line and checks it. Then the email is sent and saved on the contact record. Tracking shows opens (weak signal), clicks (better) and replies (best).">
            <defs><marker id="crm11a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="10" y="20" width="210" height="90" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="115" y="44" font-weight="700">Template</text>
              <text x="115" y="68" font-size="12">Hi {{First name}},</text>
              <text x="115" y="90" font-size="12" fill="#9b99b8">Thanks for the demo…</text>
              <rect x="10" y="135" width="210" height="90" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="115" y="159" font-weight="700">CRM record</text>
              <text x="115" y="183" font-size="12">First name: Meena</text>
              <text x="115" y="205" font-size="12">Company: Tulsi Textiles</text>
              <rect x="265" y="75" width="150" height="95" rx="10" fill="#27274e" stroke="#22d3ee"/>
              <text x="340" y="100" font-weight="700">Merged draft</text>
              <text x="340" y="124" font-size="12">Hi Meena,</text>
              <text x="340" y="146" font-size="12" fill="#9b99b8">Thanks for the demo</text>
              <rect x="455" y="75" width="150" height="95" rx="10" fill="#27274e" stroke="#f59e0b"/>
              <text x="530" y="100" font-weight="700" fill="#fcd34d">You check</text>
              <text x="530" y="124" font-size="11.5">+ 1 personal line</text>
              <text x="530" y="146" font-size="11.5" fill="#9b99b8">no blanks, true facts</text>
              <rect x="645" y="75" width="105" height="95" rx="10" fill="#27274e" stroke="#10b981"/>
              <text x="697" y="100" font-weight="700" fill="#6ee7b7">Send + log</text>
              <text x="697" y="124" font-size="11.5" fill="#9b99b8">saved on the</text>
              <text x="697" y="142" font-size="11.5" fill="#9b99b8">contact record</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#crm11a)">
                <line x1="221" y1="68" x2="260" y2="108"/>
                <line x1="221" y1="180" x2="260" y2="140"/>
                <line x1="416" y1="122" x2="450" y2="122"/>
                <line x1="606" y1="122" x2="640" y2="122"/>
              </g>
              <text x="265" y="232" text-anchor="start" font-size="12" fill="#9b99b8">Tracking tells you:</text>
              <rect x="405" y="210" width="110" height="35" rx="8" fill="#1f1f44" stroke="#ec4899"/>
              <text x="460" y="232" font-size="12">Opens: weak</text>
              <rect x="525" y="210" width="110" height="35" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="580" y="232" font-size="12">Clicks: better</text>
              <rect x="645" y="210" width="105" height="35" rx="8" fill="#1f1f44" stroke="#10b981"/>
              <text x="697" y="232" font-size="12">Replies: best</text>
            </g>
          </svg>
          <figcaption>The CRM fills in the facts it knows. You add the one line that shows you listened. Replies tell you far more than opens.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Build a small template library</h3>
          <p>A <strong>template library</strong> is the set of saved emails your team shares in the CRM. A good library saves time and keeps your message the same across the team. A bad library is full of old emails that nobody trusts.</p>
          <p>Give every template a clear name: <strong>Stage – Purpose – Version</strong>. Then anyone can find the right one fast. Here is Kavya's library at LedgerLite, a made-up San Francisco accounting software startup.</p>
          <table class="lc-table">
            <thead><tr><th>Template name</th><th>When Kavya uses it</th><th>Merge fields</th><th>Personal line?</th></tr></thead>
            <tbody>
              <tr><td>Demo – Booked – v1</td><td>A prospect books a demo</td><td>First name, demo date, meeting link</td><td>Optional</td></tr>
              <tr><td>Demo – Recap – v2</td><td>Within one working day after the demo</td><td>First name, company, next step, next step date</td><td>Yes: the main worry they raised</td></tr>
              <tr><td>Proposal – Sent – v1</td><td>The proposal goes out</td><td>First name, plan name, proposal valid until</td><td>Yes: the goal they told you</td></tr>
              <tr><td>Proposal – Follow-up – v1</td><td>No reply 5 working days after the proposal</td><td>First name, proposal date</td><td>Yes: a new, useful point</td></tr>
              <tr><td>Customer – Welcome – v1</td><td>The deal is marked Closed won</td><td>First name, setup call date</td><td>Optional</td></tr>
            </tbody>
          </table>
          <p>Keep the library small. Ten good templates are better than fifty old ones. Every quarter, delete templates nobody uses and update prices and product facts. Some CRMs show how often each template is used and how many replies it gets. Check your CRM's help pages.</p>
        </div>
        <div class="lc-card">
          <h3>Merge fields and fallbacks</h3>
          <p>A <strong>merge field</strong> is a placeholder in a template. The CRM replaces it with data from the contact or deal record. Each CRM writes merge fields in its own way, so check your CRM's help pages. In this lesson, we write them as <code>{{First name}}</code>.</p>
          <p>A <strong>fallback</strong> (or default value) is the text the CRM uses when a field is empty. Many CRMs let you set one. Here is Kavya's demo recap template:</p>
          <pre><code>Subject: {{Company name}}: your LedgerLite demo recap

        Hi {{First name | fallback: there}},

        Thank you for your time today.
        [PERSONAL LINE: the one worry they raised, in their words]

        What we covered:
        - GST-ready invoices from your phone
        - Bank reconciliation (matching bank entries with your books)

        Next step: {{Next step}} on {{Next step date}}.

        Kavya
        LedgerLite</code></pre>
          <p>For Meena Shah, Finance Head at Tulsi Textiles, Birmingham, the personal line might say: <em>"You said month-end closing takes about 10 days. The bank matching screen we saw today is built for that job."</em> Only write what the person really said. Kavya checks her call note before she writes it.</p>
          <table class="lc-table">
            <thead><tr><th>Mistake</th><th>What the customer sees</th><th>How to prevent it</th></tr></thead>
            <tbody>
              <tr><td>Empty field</td><td>"Hi ,"</td><td>Set a fallback. Fill missing names first.</td></tr>
              <tr><td>Wrong field</td><td>"Hi Tulsi Textiles,"</td><td>Preview the email with three real records.</td></tr>
              <tr><td>Messy data</td><td>"Hi MEENA,"</td><td>Clean names in the CRM before sending.</td></tr>
              <tr><td>Old fact</td><td>Last year's price</td><td>Keep prices out of templates, or review them every quarter.</td></tr>
            </tbody>
          </table>
          <p>Before you send a template to many people, send a test to yourself. Read it on your phone too.</p>
        </div>
        <div class="lc-card">
          <h3>Let AI draft the template, then you make it personal</h3>
          <p>AI is good at first drafts, subject line ideas and making an email shorter and clearer. It does not know your product facts or what the customer said. You must give it those facts.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Write a follow-up email after a demo.</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>You are a B2B sales email writer. Write a demo recap template
        for LedgerLite, accounting software for small businesses in India.
        Reader: owner or accounts head of a small shop or factory.
        Facts you may use: GST-ready invoices, bank reconciliation,
        mobile app, 14-day free trial. Do not add any other claims.
        Use merge fields {{First name}}, {{Company name}}, {{Next step}},
        {{Next step date}}, each with a fallback.
        Add one slot marked [PERSONAL LINE].
        Under 110 words. Friendly, simple English. No pressure words.</code></pre>
          <p>Then check the draft yourself:</p>
          <ul class="lc-list">
            <li>Every product fact is true today. The AI did not add features or results.</li>
            <li>Every merge field exists in your CRM, with the exact field name.</li>
            <li>The tone fits your brand. It does not sound pushy.</li>
            <li>You did not paste real contact lists or customer details into a public AI tool.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Tracking: what the numbers really mean</h3>
          <p><strong>Email tracking</strong> means your CRM records what happens after you send. Use it with care, because some numbers are not reliable.</p>
          <table class="lc-table">
            <thead><tr><th>Signal</th><th>How it works</th><th>How much to trust it</th></tr></thead>
            <tbody>
              <tr><td><strong>Open</strong></td><td>A tiny hidden image loads when the email is opened</td><td>Low. Some email apps load images automatically. Others block them.</td></tr>
              <tr><td><strong>Click</strong></td><td>Links go through a tracking address first</td><td>Medium. Some company security tools click links automatically.</td></tr>
              <tr><td><strong>Reply</strong></td><td>The person writes back</td><td>High. This is the signal that matters most.</td></tr>
            </tbody>
          </table>
          <p>Use tracking to plan your next step, not inside your message. Never write "I saw you opened my email three times". It feels like spying.</p>
          <p>Tracking also touches privacy. Some laws, such as rules in the EU, may need consent for some tracking. Mention tracking in your privacy notice and follow your company's policy. This is general information, not legal advice. Also, stop any automatic follow-up emails as soon as the person replies.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: template, personal email or do not send?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each situation for Kavya at LedgerLite.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="tpl" data-label="Use a template"></div>
              <div data-sorter-target="bucket" data-bucket="own" data-label="Write it yourself"></div>
              <div data-sorter-target="bucket" data-bucket="stop" data-label="Do not send"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="tpl" data-why="The content is the same for everyone: date, time and link. A template with merge fields is perfect.">Confirming a demo booking with the date and meeting link</li>
              <li data-bucket="own" data-why="The customer is upset about a real problem. A template would feel cold. Write a personal reply and fix the issue.">Replying to a customer who was charged twice for their plan</li>
              <li data-bucket="own" data-why="A template can be the base, but the answer to their specific question must be written by you, with checked facts.">Following up after a demo where the prospect asked a detailed question about their GST filing</li>
              <li data-bucket="stop" data-why="40 people would get 'Hi ,'. Fix the data or set a fallback first, then send.">A bulk follow-up to 200 contacts where 40 have no first name and no fallback is set</li>
              <li data-bucket="stop" data-why="They withdrew consent for marketing emails. Sending anyway breaks their choice and may break the law.">A product offer email to leads marked "Marketing consent: No"</li>
              <li data-bucket="tpl" data-why="Opted-in customers get the same useful update. A template keeps it consistent.">A monthly product update to customers who opted in</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to build a five-email template library with merge fields, fallbacks and a personal line in each. Change the details in [brackets], or leave them to see an example.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a sales email coach for a small B2B company. Write in simple, friendly English.

        Company: [LedgerLite, accounting software for small businesses in India]
        Sales rep: [Kavya]
        Customers: [owners and accounts heads of small shops and factories that use spreadsheets for accounts]
        Product facts you may use: [GST-ready invoices, bank reconciliation, mobile app, 14-day free trial]. Use only these facts.

        Create a template library of 5 emails for: demo booked, demo recap, proposal sent, no reply 5 working days after the proposal, welcome after purchase.

        For each template give:
        1. A name in the form Stage – Purpose – v1
        2. A subject line under 50 characters
        3. A body under 110 words, with merge fields in double curly brackets, such as {{First name}}, each with a fallback
        4. One slot marked [PERSONAL LINE], with a tip on what to write there

        Finally, list every merge field you used, so I can check that each one exists in my CRM. Do not invent prices, customer names or results.</pre>
            <ul class="ai-try-checks">
              <li>Only the listed product facts appear, with no invented prices or results</li>
              <li>Every merge field has a fallback</li>
              <li>Each email has a [PERSONAL LINE] slot and a useful tip</li>
              <li>Subject lines and bodies stay within the limits</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Let the template carry the facts and let the merge fields carry the data. You add the one personal line that proves you listened. Trust replies, not opens.
        </div>
      HTML
      starter_code: nil
    },
    12 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-sales">Sales & CRM</div>
          <h1 class="lc-title">CRM Reports and Dashboards</h1>
        </div>
        <p class="lc-lead">A <strong>report</strong> is a table or chart built from your CRM data. A <strong>dashboard</strong> is one page of reports that you check often. In this lesson, you will learn four core sales reports: win rate, sales cycle, pipeline by stage and activity. You will build them from a CRM export in a spreadsheet. You will also use AI to plan and explain them, and learn to catch AI maths mistakes.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 270" role="img" aria-label="A sample LedgerLite dashboard. Four tiles: win rate 57.1 percent, average sales cycle 40 days, average deal size 48,000 rupees, open pipeline 3,00,000 rupees. A bar chart shows open pipeline by stage: Discovery done 36,000, Demo done 48,000, Proposal sent 1,20,000, Negotiation 96,000. Weighted value 1,75,200 rupees.">
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="10" y="10" width="179" height="78" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="99" y="32" font-size="12" fill="#9b99b8">Win rate</text>
              <text x="99" y="60" font-size="22" font-weight="700" fill="#6ee7b7">57.1%</text>
              <text x="99" y="80" font-size="11" fill="#9b99b8">4 won ÷ 7 closed</text>
              <rect x="197" y="10" width="179" height="78" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="286" y="32" font-size="12" fill="#9b99b8">Avg sales cycle</text>
              <text x="286" y="60" font-size="22" font-weight="700" fill="#93c5fd">40 days</text>
              <text x="286" y="80" font-size="11" fill="#9b99b8">won deals only</text>
              <rect x="384" y="10" width="179" height="78" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="473" y="32" font-size="12" fill="#9b99b8">Avg deal size</text>
              <text x="473" y="60" font-size="22" font-weight="700" fill="#fcd34d">₹48,000</text>
              <text x="473" y="80" font-size="11" fill="#9b99b8">₹1,92,000 ÷ 4 won</text>
              <rect x="571" y="10" width="179" height="78" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="660" y="32" font-size="12" fill="#9b99b8">Open pipeline</text>
              <text x="660" y="60" font-size="22" font-weight="700" fill="#f9a8d4">₹3,00,000</text>
              <text x="660" y="80" font-size="11" fill="#9b99b8">4 open deals</text>
              <rect x="10" y="100" width="740" height="160" rx="10" fill="#1f1f44" stroke="#4b4a78"/>
              <text x="30" y="124" text-anchor="start" font-weight="700">Open pipeline by stage (₹)</text>
              <text x="735" y="124" text-anchor="end" font-size="12" fill="#9b99b8">Total ₹3,00,000 · weighted ₹1,75,200</text>
              <g font-size="12">
                <text x="150" y="155" text-anchor="end">Discovery done</text>
                <rect x="160" y="140" width="120" height="20" rx="3" fill="#3b82f6"/>
                <text x="288" y="155" text-anchor="start" fill="#9b99b8">36,000</text>
                <text x="150" y="183" text-anchor="end">Demo done</text>
                <rect x="160" y="168" width="160" height="20" rx="3" fill="#8b5cf6"/>
                <text x="328" y="183" text-anchor="start" fill="#9b99b8">48,000</text>
                <text x="150" y="211" text-anchor="end">Proposal sent</text>
                <rect x="160" y="196" width="400" height="20" rx="3" fill="#f59e0b"/>
                <text x="568" y="211" text-anchor="start" fill="#9b99b8">1,20,000</text>
                <text x="150" y="239" text-anchor="end">Negotiation</text>
                <rect x="160" y="224" width="320" height="20" rx="3" fill="#10b981"/>
                <text x="488" y="239" text-anchor="start" fill="#9b99b8">96,000</text>
              </g>
            </g>
          </svg>
          <figcaption>A sample dashboard for LedgerLite on 28 September 2026. Every number comes from the 11-row export in the worked example below.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Four reports every sales team needs</h3>
          <table class="lc-table">
            <thead><tr><th>Report</th><th>Question it answers</th><th>How to calculate it</th></tr></thead>
            <tbody>
              <tr><td><strong>Win rate</strong></td><td>Of the deals we closed, how many did we win?</td><td>Won ÷ (Won + Lost), for deals closed in the period. Open deals do not count, because they have no result yet.</td></tr>
              <tr><td><strong>Average sales cycle</strong></td><td>How long does it take to win a deal?</td><td>The average number of days from the created date to the won date, for won deals.</td></tr>
              <tr><td><strong>Average deal size</strong></td><td>How much is a typical won deal worth?</td><td>Total value of won deals ÷ number of won deals.</td></tr>
              <tr><td><strong>Pipeline by stage</strong></td><td>How much money is waiting in each stage?</td><td>The total value of open deals in each stage.</td></tr>
              <tr><td><strong>Activity report</strong></td><td>How much selling work is happening, and what does it lead to?</td><td>Calls, emails and meetings per person, from the CRM activity log.</td></tr>
            </tbody>
          </table>
          <p>Some teams measure win rate by value instead of by count. Both are fine. Write your definition on the dashboard, so nobody compares different numbers.</p>
          <p>An activity report shows effort. Read it as a funnel to see results too. Kavya's made-up month: 200 contacted, 18 replied, 8 meetings, 2 customers.</p>
          <ul class="lc-list">
            <li>Reply rate: 18 ÷ 200 = 9%</li>
            <li>Meetings from contacts: 8 ÷ 200 = 4%</li>
            <li>Customers from meetings: 2 ÷ 8 = 25%</li>
          </ul>
          <p>These are Kavya's own numbers, not industry benchmarks. Compare them with her own past months.</p>
        </div>
        <div class="lc-card">
          <h3>Worked example: LedgerLite's export</h3>
          <p>On 28 September 2026, Kavya exports every deal closed from July to September, plus all open deals. She keeps only the columns she needs. She removes contact names, phone numbers and emails. LedgerLite charges a made-up ₹1,000 per user per month, so a 4-user yearly plan is ₹48,000. All companies are made up.</p>
          <table class="lc-table">
            <thead><tr><th>Row</th><th>A: Deal</th><th>B: Stage</th><th>C: Amount (₹)</th><th>D: Created</th><th>E: Closed</th><th>F: Days</th></tr></thead>
            <tbody>
              <tr><td>2</td><td>Marigold Events, Manchester</td><td>Closed won</td><td>24,000</td><td>2026-06-01</td><td>2026-07-13</td><td>42</td></tr>
              <tr><td>3</td><td>Deccan Hardware, Seattle</td><td>Closed won</td><td>60,000</td><td>2026-06-10</td><td>2026-08-09</td><td>60</td></tr>
              <tr><td>4</td><td>Rangoli Caterers, London</td><td>Closed lost</td><td>24,000</td><td>2026-06-15</td><td>2026-07-20</td><td>35</td></tr>
              <tr><td>5</td><td>Indus Auto Parts, Coventry</td><td>Closed lost</td><td>48,000</td><td>2026-06-22</td><td>2026-08-05</td><td>44</td></tr>
              <tr><td>6</td><td>Orchid Interiors, Leeds</td><td>Closed lost</td><td>12,000</td><td>2026-07-08</td><td>2026-08-12</td><td>35</td></tr>
              <tr><td>7</td><td>Coastal Spices, Boston</td><td>Closed won</td><td>36,000</td><td>2026-08-10</td><td>2026-09-07</td><td>28</td></tr>
              <tr><td>8</td><td>Lotus Clinics, Los Angeles</td><td>Closed won</td><td>72,000</td><td>2026-08-17</td><td>2026-09-16</td><td>30</td></tr>
              <tr><td>9</td><td>Sai Pharma, Seattle</td><td>Negotiation</td><td>96,000</td><td>2026-08-03</td><td></td><td></td></tr>
              <tr><td>10</td><td>GreenLeaf Organics, Denver</td><td>Demo done</td><td>48,000</td><td>2026-09-01</td><td></td><td></td></tr>
              <tr><td>11</td><td>Tulsi Textiles, Birmingham</td><td>Proposal sent</td><td>1,20,000</td><td>2026-09-08</td><td></td><td></td></tr>
              <tr><td>12</td><td>Kaveri Traders, Oxford</td><td>Discovery done</td><td>36,000</td><td>2026-09-21</td><td></td><td></td></tr>
            </tbody>
          </table>
          <p>The formulas work in Google Sheets and Excel. Row 1 holds the headers. Amounts must be numbers and dates must be real dates, not text.</p>
          <pre><code>Days (type in F2, copy down):  =IF(E2="","",E2-D2)
        Won deals:        =COUNTIF(B2:B12,"Closed won")          gives 4
        Lost deals:       =COUNTIF(B2:B12,"Closed lost")         gives 3
        Win rate:         =COUNTIF(B2:B12,"Closed won")/(COUNTIF(B2:B12,"Closed won")+COUNTIF(B2:B12,"Closed lost"))
                                                                 gives 0.571, shown as 57.1%
        Avg sales cycle:  =AVERAGEIF(B2:B12,"Closed won",F2:F12) gives 40 (days)
        Avg deal size:    =AVERAGEIF(B2:B12,"Closed won",C2:C12) gives 48,000
        Proposal value:   =SUMIF(B2:B12,"Proposal sent",C2:C12)  gives 1,20,000
        Open pipeline:    =SUM(C2:C12)-SUMIF(B2:B12,"Closed won",C2:C12)-SUMIF(B2:B12,"Closed lost",C2:C12)
                                                                 gives 3,00,000</code></pre>
          <p>Check the working: the sales cycle is (42 + 60 + 28 + 30) ÷ 4 = 160 ÷ 4 = 40 days. The average deal size is (24,000 + 60,000 + 36,000 + 72,000) ÷ 4 = ₹1,92,000 ÷ 4 = ₹48,000. The open pipeline is ₹5,76,000 in total, minus ₹1,92,000 won and ₹84,000 lost, which leaves ₹3,00,000. If column F shows dates instead of numbers, change its format to Number.</p>
          <p><strong>Weighted pipeline</strong> multiplies each open deal's value by its stage probability (the chance of winning that LedgerLite set when it designed its pipeline):</p>
          <table class="lc-table">
            <thead><tr><th>Stage</th><th>Open deal</th><th>Value (₹)</th><th>Probability</th><th>Weighted (₹)</th></tr></thead>
            <tbody>
              <tr><td>Discovery done</td><td>Kaveri Traders</td><td>36,000</td><td>20%</td><td>7,200</td></tr>
              <tr><td>Demo done</td><td>GreenLeaf Organics</td><td>48,000</td><td>40%</td><td>19,200</td></tr>
              <tr><td>Proposal sent</td><td>Tulsi Textiles</td><td>1,20,000</td><td>60%</td><td>72,000</td></tr>
              <tr><td>Negotiation</td><td>Sai Pharma</td><td>96,000</td><td>80%</td><td>76,800</td></tr>
              <tr><td><strong>Total</strong></td><td><strong>4 deals</strong></td><td><strong>3,00,000</strong></td><td></td><td><strong>1,75,200</strong></td></tr>
            </tbody>
          </table>
          <p><strong>Pipeline coverage</strong> compares open pipeline with the sales target still to reach. Say Kavya's October to December target is ₹2,00,000, and all four open deals should close in that quarter. Coverage = 3,00,000 ÷ 2,00,000 = 1.5 times. Your team decides how much coverage it needs, based on its own past win rate.</p>
        </div>
        <div class="lc-card">
          <h3>Using AI with your export</h3>
          <p>AI is useful for reports in four ways. It can suggest which charts to show and write spreadsheet formulas. It can explain why a number changed and write a short summary for your manager. Some CRMs also have built-in AI that builds a report from a question in plain words. Features differ, so check your CRM's help pages.</p>
          <p>AI can also get maths wrong, or use the wrong definition. Always rebuild the key numbers with formulas.</p>
          <p><strong>Weak prompt:</strong></p>
          <pre><code>Here is my sales data. Make a dashboard.</code></pre>
          <p><strong>Better prompt:</strong></p>
          <pre><code>You are a sales operations analyst. Below is an anonymised deal
        export (Deal ID, Stage, Amount, Created, Closed).
        1. Win rate = Closed won ÷ (Closed won + Closed lost).
           Do not count open deals.
        2. Average sales cycle = average days from Created to Closed,
           for won deals only.
        3. Open pipeline by stage, with the number of deals in each.
        Show your working for every number. Give the spreadsheet formula
        for each one. Then write a 4-line summary for our founder.
        [paste export]</code></pre>
          <p>Remove names, phone numbers and emails before you paste. Deal IDs, stages, amounts and dates are enough for these reports.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: build the report with AI, then check it</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="tool" data-label="CRM export">Kavya exports the deals closed from July to September, plus all open deals. She deletes the contact name, phone and email columns. 11 rows are left.</li>
              <li data-kind="user" data-label="Prompt">"Here is my anonymised export. Calculate win rate, average sales cycle, average deal size and open pipeline by stage. Show your working."</li>
              <li data-kind="answer" data-label="AI reply">"Win rate: 4 won out of 11 deals = 36.4%. Average sales cycle: 40 days. Average deal size: ₹48,000. Open pipeline: ₹3,00,000."</li>
              <li data-kind="warn" data-label="Mistake to catch">The AI divided by all 11 deals. Four deals are still open and have no result yet. Win rate uses closed deals only: 4 ÷ (4 + 3) = 57.1%.</li>
              <li data-kind="tool" data-label="Spreadsheet">Kavya pastes the export into a sheet and types the COUNTIF, AVERAGEIF and SUMIF formulas.</li>
              <li data-kind="result" data-label="Formula results">Win rate 57.1%. Sales cycle 40 days. Average deal ₹48,000. Proposal sent ₹1,20,000. Open pipeline ₹3,00,000, weighted ₹1,75,200.</li>
              <li data-kind="check" data-label="Final check">She compares the totals with the CRM's own pipeline report. She checks the date range and looks for duplicate deals. Then she sends the dashboard to Arjun with the definitions written on it.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Give AI a small anonymised export and ask for the four core numbers, the formulas and a dashboard plan. Keep the sample data to test the AI, or paste your own.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a sales operations analyst. Explain in simple English.

        Here is an anonymised deal export from [LedgerLite], taken on [28 September 2026].
        Columns: Deal ID, Stage, Amount (₹), Created, Closed
        D1, Closed won, 24000, 2026-06-01, 2026-07-13
        D2, Closed won, 60000, 2026-06-10, 2026-08-09
        D3, Closed lost, 24000, 2026-06-15, 2026-07-20
        D4, Closed lost, 48000, 2026-06-22, 2026-08-05
        D5, Closed lost, 12000, 2026-07-08, 2026-08-12
        D6, Closed won, 36000, 2026-08-10, 2026-09-07
        D7, Closed won, 72000, 2026-08-17, 2026-09-16
        D8, Negotiation, 96000, 2026-08-03,
        D9, Demo done, 48000, 2026-09-01,
        D10, Proposal sent, 120000, 2026-09-08,
        D11, Discovery done, 36000, 2026-09-21,

        1. Calculate: win rate (won ÷ (won + lost)), average sales cycle in days for won deals, average deal size of won deals, and open pipeline by stage.
        2. Show your working for each number.
        3. Give a Google Sheets formula for each. Stage is column B, Amount C, Created D, Closed E. Data is in rows 2 to 12.
        4. Suggest a one-page dashboard: 4 tiles and 2 charts.
        5. Write a 4-line summary for the founder. Say what you are unsure about.</pre>
            <ul class="ai-try-checks">
              <li>With the sample data: win rate 57.1% (4 of 7 closed deals), not 36.4%</li>
              <li>Average sales cycle 40 days and average deal size ₹48,000</li>
              <li>Open pipeline ₹3,00,000, with Proposal sent the largest stage at ₹1,20,000</li>
              <li>You typed the formulas into a sheet and got the same results</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A dashboard is only as good as its definitions. Write down how each number is calculated. Let AI draft the formulas and the summary, but prove every number in your spreadsheet before anyone makes a decision with it.
        </div>
      HTML
      starter_code: nil
    },
    13 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-sales">Sales & CRM</div>
          <h1 class="lc-title">Customer Success and Renewals in the CRM</h1>
        </div>
        <p class="lc-lead">Winning the deal is not the end. <strong>Customer success</strong> means helping customers get real value, so they stay and renew. A <strong>renewal</strong> is when a customer signs up for another term, such as another year. In this lesson, you will set up onboarding tasks, build a simple health score, track renewal dates and write honest upsell notes in the CRM. You will also see where AI helps and where you must decide.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 250" role="img" aria-label="A customer timeline: deal won on day 0, onboarding in days 1 to 30, health checks every month, renewal preparation 90 days before, and renewal in month 12. Below it, three health score bands: green 70 to 100 where upsell is fine, amber 40 to 69 where you fix problems first, and red 0 to 39 where you call urgently and do not upsell.">
            <defs><marker id="crm13a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <line x1="40" y1="70" x2="735" y2="70" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#crm13a)"/>
              <circle cx="70" cy="70" r="8" fill="#8b5cf6"/>
              <circle cx="220" cy="70" r="8" fill="#3b82f6"/>
              <circle cx="380" cy="70" r="8" fill="#22d3ee"/>
              <circle cx="540" cy="70" r="8" fill="#f59e0b"/>
              <circle cx="690" cy="70" r="8" fill="#10b981"/>
              <text x="70" y="50" font-weight="700">Deal won</text>
              <text x="220" y="50" font-weight="700">Onboarding</text>
              <text x="380" y="50" font-weight="700">Health checks</text>
              <text x="540" y="50" font-weight="700">Renewal prep</text>
              <text x="690" y="50" font-weight="700">Renewal</text>
              <g font-size="12" fill="#9b99b8">
                <text x="70" y="97">Day 0</text>
                <text x="220" y="97">Days 1–30</text>
                <text x="380" y="97">Every month</text>
                <text x="540" y="97">90 days before</text>
                <text x="690" y="97">Month 12</text>
              </g>
              <rect x="40" y="130" width="215" height="62" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="147" y="155" font-weight="700" fill="#6ee7b7">Green: 70 to 100</text>
              <text x="147" y="178" font-size="12" fill="#9b99b8">keep in touch, upsell ok</text>
              <rect x="272" y="130" width="215" height="62" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="379" y="155" font-weight="700" fill="#fcd34d">Amber: 40 to 69</text>
              <text x="379" y="178" font-size="12" fill="#9b99b8">fix problems first</text>
              <rect x="505" y="130" width="215" height="62" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="612" y="155" font-weight="700" fill="#f9a8d4">Red: 0 to 39</text>
              <text x="612" y="178" font-size="12" fill="#9b99b8">urgent call, no upsell</text>
              <text x="380" y="225" font-size="12" fill="#9b99b8">Health score = points for usage, onboarding, support, payments and contact</text>
            </g>
          </svg>
          <figcaption>Renewal work starts on the day the deal is won. The health score tells you which customers need help first.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Onboarding tasks start when the deal is won</h3>
          <p><strong>Onboarding</strong> means the first weeks when a new customer sets up and starts using your product. Customers who never finish setup rarely renew. So put the onboarding steps in the CRM as tasks. Many CRMs can create them automatically when a deal is marked Closed won.</p>
          <p>Here is LedgerLite's onboarding plan for Lotus Clinics, Los Angeles, won on 16 September 2026:</p>
          <table class="lc-table">
            <thead><tr><th>Day</th><th>Task</th><th>Owner</th><th>Done when</th></tr></thead>
            <tbody>
              <tr><td>0</td><td>Send welcome email and book the setup call</td><td>Kavya</td><td>Call booked</td></tr>
              <tr><td>2</td><td>Setup call: company details, GST number, bank link</td><td>Support team</td><td>Company set up</td></tr>
              <tr><td>7</td><td>Import customers and opening balances</td><td>Customer, with support</td><td>Customer checked the data</td></tr>
              <tr><td>14</td><td>Training: first invoice and first bank reconciliation</td><td>Support team</td><td>First real invoice sent</td></tr>
              <tr><td>30</td><td>Check-in call: what works and what does not</td><td>Kavya</td><td>Notes saved in the CRM</td></tr>
            </tbody>
          </table>
          <p>Each task has one owner and a clear "done when". A task that just says "follow up" is too vague.</p>
        </div>
        <div class="lc-card">
          <h3>A simple health score</h3>
          <p>A <strong>health score</strong> is a number that shows how well a customer account is doing. You add points for good signals. LedgerLite uses five signals with a total of 100 points:</p>
          <table class="lc-table">
            <thead><tr><th>Signal</th><th>Max points</th><th>Full points when…</th></tr></thead>
            <tbody>
              <tr><td>Product use</td><td>30</td><td>The team logs in on most working days</td></tr>
              <tr><td>Onboarding</td><td>20</td><td>All onboarding tasks are done</td></tr>
              <tr><td>Support</td><td>20</td><td>No open urgent support tickets</td></tr>
              <tr><td>Payments</td><td>15</td><td>Invoices are paid on time</td></tr>
              <tr><td>Relationship</td><td>15</td><td>The main contact is still there and replies</td></tr>
            </tbody>
          </table>
          <p>Scores in September 2026 for three made-up customers:</p>
          <table class="lc-table">
            <thead><tr><th>Customer</th><th>Use</th><th>Onboarding</th><th>Support</th><th>Payments</th><th>Relationship</th><th>Total</th><th>Band</th></tr></thead>
            <tbody>
              <tr><td>Marigold Events, Manchester</td><td>25</td><td>20</td><td>20</td><td>15</td><td>10</td><td>90</td><td>Green</td></tr>
              <tr><td>Deccan Hardware, Seattle</td><td>15</td><td>10</td><td>10</td><td>15</td><td>10</td><td>60</td><td>Amber</td></tr>
              <tr><td>Coastal Spices, Boston</td><td>5</td><td>10</td><td>0</td><td>5</td><td>5</td><td>25</td><td>Red</td></tr>
            </tbody>
          </table>
          <p>In a spreadsheet, put the five scores in columns B to F. Then use these formulas in row 2 and copy them down:</p>
          <pre><code>Total (G2):  =SUM(B2:F2)                                   Marigold gives 90
        Band (H2):   =IF(G2&gt;=70,"Green",IF(G2&gt;=40,"Amber","Red"))   Marigold gives Green</code></pre>
          <p>A health score is a guide, not the truth. Coastal Spices scores 25. The real reason may be one bad support experience. Call them before you decide anything. Every six months, compare the scores with who actually renewed. Then adjust the points.</p>
        </div>
        <div class="lc-card">
          <h3>Renewal dates and upsell notes</h3>
          <p>Add a <strong>Renewal date</strong> field to every customer. Fill it in when the deal is won. For a yearly plan, a spreadsheet can calculate it. Column B holds the won date:</p>
          <pre><code>Renewal date (C2):  =EDATE(B2,12)      13 Jul 2026 gives 13 Jul 2027
        Days left (D2):     =C2-TODAY()        on 28 Sep 2026 this gives 288
        Action (E2):        =IF(D2&lt;=90,"Start renewal","OK")</code></pre>
          <p>Format C as a date and D as a number. For Marigold Events, the 90-day point is 14 April 2027. On that day, create a <strong>renewal deal</strong> in the CRM. Many teams keep renewals in a separate pipeline, so they do not mix with new sales.</p>
          <p>An <strong>upsell</strong> means selling more to an existing customer, such as more users or a bigger plan. Write upsell notes with evidence, not guesses:</p>
          <pre><code>Customer: Deccan Hardware, Seattle        Health: Amber (60)
        Evidence: Opened a second shop in Secunderabad (told us on the 30-day call).
        What they said: "Can my shop manager also make invoices?"
        Possible offer: One extra user (list price ₹1,000 a month).
        Right time: After the two open support tickets are closed.</code></pre>
          <p>The same idea works for any business. Rohit at Nimbus Logistics, a made-up New York delivery company, notes when an online store's monthly orders grow. He suggests a bigger delivery contract only when on-time delivery for that store is good.</p>
          <p><strong>How AI helps:</strong> AI can summarise a month of support tickets and call notes into a short account review. It can spot risk words such as "too expensive" or "switching". It can also draft renewal emails. Remove personal details before you paste notes into a public AI tool. You decide the score, the offer and the timing.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: the renewal path in order</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put Kavya's steps for a yearly LedgerLite customer in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Fill in the renewal date field when the deal is marked Closed won</li>
              <li data-order="2">Finish the onboarding tasks in the first 30 days</li>
              <li data-order="3">Review the health score every month and act on amber or red</li>
              <li data-order="4">90 days before renewal: create a renewal deal and review the account</li>
              <li data-order="5">60 days before: meet the customer to review value and open problems</li>
              <li data-order="6">30 days before: send the renewal quote and confirm who approves it</li>
              <li data-order="7">Record the result (renewed, changed or lost) and the reason</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to score a few customers, plan their renewals and suggest honest upsell ideas. Change the sample customers in [brackets], or keep them.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a customer success manager at [LedgerLite, an accounting software company for small businesses in India]. Today is [28 September 2026]. Plans renew yearly.

        Health score (100 points): product use 30, onboarding done 20, no urgent support tickets 20, payments on time 15, main contact still active 15.

        My customers (made-up data):
        [Marigold Events: logs in daily, onboarding done, no tickets, pays on time, contact slow to reply, won 13 July 2026.
        Deccan Hardware: logs in twice a week, onboarding half done, 2 open tickets, pays on time, opened a second shop, won 9 August 2026.
        Coastal Spices: rarely logs in, onboarding half done, 1 urgent ticket, one late payment, contact left the company, won 7 September 2026.]

        Please give me:
        1. A table: customer, points for each signal, total, band (Green 70+, Amber 40 to 69, Red below 40), and one next action.
        2. Each renewal date, and the date 90 days before it.
        3. Upsell ideas only for Green customers, each based on evidence above.
        4. A short, friendly check-in email for the Red customer.
        Mark any score where you had to guess.</pre>
            <ul class="ai-try-checks">
              <li>The points add up to each total, and the bands follow the rules</li>
              <li>Renewal dates are 12 months after the won dates, and the 90-day dates are correct</li>
              <li>Upsell ideas are only for Green customers and use real evidence</li>
              <li>The Red customer email offers help and does not push a sale</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Renewals are won or lost long before the renewal date. Put onboarding tasks, a health score and the renewal date in the CRM from day one. Offer more only to customers who are already getting value.
        </div>
      HTML
      starter_code: nil
    },
    14 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-sales">Sales & CRM</div>
          <h1 class="lc-title">Privacy, Access and CRM Hygiene</h1>
        </div>
        <p class="lc-lead">Your CRM holds personal data: names, phone numbers, emails and notes about real people. Protecting it is part of your job. In this lesson, you will set who can see what, add consent fields and handle a request to delete data. You will learn India's DPDP basics and keep your CRM clean every month. This lesson is general education, not legal advice.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 250" role="img" aria-label="Left: an example access table. Admin can see and do everything. A sales rep sees only their own contacts, deal values and notes, and cannot export or delete. Support can view contacts and notes. An intern sees leads only. Right: five steps for a deletion request: confirm who is asking, find every copy, delete or anonymise, keep only what the law needs, reply to the person and log it.">
            <defs><marker id="crm14a" markerWidth="6" markerHeight="6" refX="5" refY="3" orient="auto"><path d="M0,0 L6,3 L0,6 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12" fill="#e2e0f0" text-anchor="middle">
              <text x="10" y="20" text-anchor="start" font-size="13" font-weight="700">Who can see what (example)</text>
              <rect x="10" y="32" width="440" height="180" rx="8" fill="#1f1f44" stroke="#4b4a78"/>
              <rect x="10" y="32" width="440" height="30" rx="8" fill="#27274e"/>
              <g font-weight="700">
                <text x="170" y="52">Admin</text>
                <text x="250" y="52">Sales rep</text>
                <text x="330" y="52">Support</text>
                <text x="410" y="52">Intern</text>
              </g>
              <g stroke="#4b4a78"><line x1="10" y1="92" x2="450" y2="92"/><line x1="10" y1="122" x2="450" y2="122"/><line x1="10" y1="152" x2="450" y2="152"/><line x1="10" y1="182" x2="450" y2="182"/></g>
              <g text-anchor="start">
                <text x="20" y="82">Contacts</text>
                <text x="20" y="112">Deal values</text>
                <text x="20" y="142">Call notes</text>
                <text x="20" y="172">Export</text>
                <text x="20" y="202">Delete</text>
              </g>
              <g fill="#6ee7b7"><text x="170" y="82">All</text><text x="170" y="112">All</text><text x="170" y="142">All</text><text x="170" y="172">Yes</text><text x="170" y="202">Yes</text></g>
              <g fill="#fcd34d"><text x="250" y="82">Own</text><text x="250" y="112">Own</text><text x="250" y="142">Own</text><text x="330" y="82">View</text><text x="330" y="142">View</text><text x="410" y="82">Leads</text></g>
              <g fill="#f9a8d4"><text x="250" y="172">No</text><text x="250" y="202">No</text><text x="330" y="112">None</text><text x="330" y="172">No</text><text x="330" y="202">No</text><text x="410" y="112">None</text><text x="410" y="142">None</text><text x="410" y="172">No</text><text x="410" y="202">No</text></g>
              <text x="230" y="236" fill="#9b99b8">Give each role only what the job needs.</text>
              <text x="615" y="20" font-size="13" font-weight="700">Deletion request</text>
              <rect x="490" y="32" width="250" height="28" rx="6" fill="#27274e" stroke="#8b5cf6"/>
              <text x="615" y="51">1. Confirm who is asking</text>
              <rect x="490" y="76" width="250" height="28" rx="6" fill="#27274e" stroke="#3b82f6"/>
              <text x="615" y="95">2. Find every copy</text>
              <rect x="490" y="120" width="250" height="28" rx="6" fill="#27274e" stroke="#22d3ee"/>
              <text x="615" y="139">3. Delete or anonymise</text>
              <rect x="490" y="164" width="250" height="28" rx="6" fill="#27274e" stroke="#f59e0b"/>
              <text x="615" y="183">4. Keep only what law needs</text>
              <rect x="490" y="208" width="250" height="28" rx="6" fill="#27274e" stroke="#10b981"/>
              <text x="615" y="227">5. Reply to the person, log it</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#crm14a)">
                <line x1="615" y1="61" x2="615" y2="72"/>
                <line x1="615" y1="105" x2="615" y2="116"/>
                <line x1="615" y1="149" x2="615" y2="160"/>
                <line x1="615" y1="193" x2="615" y2="204"/>
              </g>
            </g>
          </svg>
          <figcaption>Limit access by role, and follow the same five steps every time someone asks you to delete their data.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Who can see what</h3>
          <p>Most CRMs control access with <strong>roles</strong> (who reports to whom) and <strong>profiles</strong> or <strong>permissions</strong> (what each person can do). You can often limit access to records ("own deals only") and to single fields, such as deal value or phone number. The names differ in each CRM, so check its help pages.</p>
          <p>Follow the rule of <strong>least access</strong>: give each person only what their job needs. At LedgerLite, Arjun (the founder) is the admin. Kavya sees her own contacts and deals. The intern sees leads only and cannot export.</p>
          <ul class="lc-list">
            <li>Give export and delete rights to one or two admins only. A full export is the easiest way to leak data.</li>
            <li>Give every person their own login. Never share one admin password.</li>
            <li>Turn on two-step verification (a code on your phone as well as a password) for everyone.</li>
            <li>Remove a person's access on their last working day. Move their deals to a new owner.</li>
            <li>Every quarter, review the user list and the audit log. An <strong>audit log</strong> is a record of who viewed, changed or exported data. Many CRMs keep one.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Consent fields and India's DPDP basics</h3>
          <p><strong>Consent</strong> means the person clearly agreed to a specific use of their data. Record it in fields, not in memory. Suggested fields for LedgerLite:</p>
          <table class="lc-table">
            <thead><tr><th>Field</th><th>Type</th><th>Allowed values</th></tr></thead>
            <tbody>
              <tr><td>Email marketing consent</td><td>Picklist</td><td>Yes / No / Not asked</td></tr>
              <tr><td>WhatsApp marketing consent</td><td>Picklist</td><td>Yes / No / Not asked</td></tr>
              <tr><td>Consent date</td><td>Date</td><td>The day they agreed</td></tr>
              <tr><td>Consent source</td><td>Picklist</td><td>Website form / Event / Call / Other</td></tr>
              <tr><td>Consent withdrawn on</td><td>Date</td><td>Empty unless they withdrew</td></tr>
              <tr><td>DND checked on</td><td>Date</td><td>The last date you checked their Do Not Disturb status</td></tr>
            </tbody>
          </table>
          <p>A simple rule for your team: no recorded consent means no marketing message.</p>
          <p><strong>India's DPDP Act 2023</strong> (Digital Personal Data Protection Act) is India's main data protection law. The DPDP Rules were notified in November 2025. They start in phases. Most duties for businesses, such as notice, consent and people's rights, are due to apply from May 2027. Dates can change, so check the current official notices. In general words:</p>
          <ul class="lc-list">
            <li>Collect personal data for a clear purpose, and tell people that purpose in a simple notice.</li>
            <li>Consent must be free, specific and clear. People must be able to withdraw it as easily as they gave it.</li>
            <li>People can ask to see, correct or erase their data. They can also raise a complaint with you.</li>
            <li>Delete data when the purpose is over, unless a law says you must keep it.</li>
            <li>Protect the data with reasonable security, and report data breaches as the rules require.</li>
          </ul>
          <p>For calls and SMS in India, TRAI's rules on commercial communication apply. People can register on the DND list (the National Customer Preference Register). Promotional calls and SMS to them are restricted. For contacts abroad, other laws may apply, such as GDPR in the EU and CAN-SPAM for email in the USA. This is general education, not legal advice. Ask a qualified lawyer about your exact duties.</p>
        </div>
        <div class="lc-card">
          <h3>Deleting data on request, and monthly hygiene</h3>
          <p>A lead emails LedgerLite: "Please delete all my data." Kavya follows the five steps in the diagram. The hard part is step 2, because copies hide in many places:</p>
          <ul class="lc-list">
            <li>The contact record, and deals, notes, tasks and attachments linked to it</li>
            <li>Email and call logs synced to the CRM</li>
            <li>Your email marketing tool and WhatsApp business tool</li>
            <li>Old exports on laptops, shared drives and in email attachments</li>
            <li>Chats with AI tools where someone pasted their details</li>
          </ul>
          <p>Some records must be kept by law, such as tax invoices for a paying customer. Ask your chartered accountant or lawyer what to keep and for how long. Many teams also keep a small "do not contact" entry, so the person is not added again. Confirm this with your legal adviser. Then reply to the person and log the request with its date.</p>
          <p><strong>CRM hygiene</strong> means small regular jobs that keep your data clean and safe. A monthly checklist:</p>
          <ul class="lc-list">
            <li>Merge duplicates and delete test records.</li>
            <li>Remove users who have left, and check who can export.</li>
            <li>Archive or delete old leads you no longer have a reason to keep.</li>
            <li>Check that new contacts have consent fields filled in.</li>
            <li>Delete old export files from laptops and shared drives.</li>
          </ul>
          <p><strong>AI and privacy:</strong> Use only AI tools your company has approved for customer data. Before you paste notes into any public AI tool, replace names, phone numbers and emails with IDs such as C-104. AI can draft your access table, consent fields and deletion checklist. A person must still check them against the law and your CRM's real settings.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: good practice or risky?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each action at LedgerLite.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="good" data-label="Good practice"></div>
              <div data-sorter-target="bucket" data-bucket="risk" data-label="Risky"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="good" data-why="This is least access. The intern can do the job but cannot take the whole list away.">The intern can view leads but cannot export contacts</li>
              <li data-bucket="risk" data-why="Nobody can tell who did what, and one leaked password opens everything.">The whole team shares one admin login</li>
              <li data-bucket="good" data-why="A person who has left should not still see customer data. Their deals move to a new owner.">Removing a rep's CRM access on their last working day</li>
              <li data-bucket="risk" data-why="Personal data leaves your control. Remove names, phones and emails, or use an approved tool.">Pasting a full contact export with phone numbers into a free public AI chatbot</li>
              <li data-bucket="good" data-why="The date and source show when and how the person agreed. You can prove consent later.">Recording the consent date and source for every marketing opt-in</li>
              <li data-bucket="risk" data-why="They asked for deletion. Keeping everything 'just in case' ignores their request.">Keeping a lead's full record after they asked for deletion, "in case they come back"</li>
              <li data-bucket="risk" data-why="Numbers on the DND list have restrictions on promotional calls. Check DND status and your consent records first.">Making a promotional call without checking the number's DND status</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to draft an access table, consent fields and a deletion checklist for a small team. Change the details in [brackets], or keep them.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a CRM administrator who cares about privacy. Give general guidance only, not legal advice. Use simple English.

        Business: [LedgerLite, a 12-person accounting software startup in San Francisco]
        CRM: [a common CRM such as Zoho CRM or HubSpot]
        Team: [1 founder, 3 sales reps, 2 support staff, 1 marketing person, 1 intern]
        Contacts: [small businesses in India, plus a few leads in the EU]

        Please give me:
        1. An access table: each role against contacts, deal values, call notes, export and delete. Use All, Own, View or None.
        2. The consent fields to add, with field type (picklist, date or text) and allowed values.
        3. A step-by-step checklist for a request to delete someone's data, including where copies may hide.
        4. A monthly CRM hygiene checklist with 6 items.
        5. In general words, which rules may apply: India's DPDP Act and Rules, TRAI rules for calls and SMS, and GDPR.

        Do not quote exact deadlines or penalties unless you are sure, and say they may change. List the points I should confirm with a lawyer.</pre>
            <ul class="ai-try-checks">
              <li>Export and delete rights go to very few people, and the intern gets the least access</li>
              <li>Consent fields include the date, the source and a way to record withdrawal</li>
              <li>The deletion checklist covers old exports and other tools, and data the law says to keep</li>
              <li>It says clearly that this is not legal advice</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Privacy is built into the CRM's setup: least access, consent fields and a fixed deletion process. A clean CRM is also a safer CRM, because data you no longer keep cannot leak.
        </div>
      HTML
      starter_code: nil
    },
    15 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-sales">Sales & CRM</div>
          <h1 class="lc-title">Capstone: Set Up and Clean a CRM</h1>
        </div>
        <p class="lc-lead">In this capstone, you will put the whole course together for LedgerLite. Before the CRM, Arjun and Kavya kept some deals in an old shared spreadsheet. Arjun now asks Kavya to set up the CRM properly and move those deals in. You will confirm the pipeline and clean a 25-row export. Then you will write a note template and three automations, and plan a dashboard. AI helps at every step. You check every number.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 225" role="img" aria-label="Four capstone steps: 1 design the pipeline with 7 stages, exit criteria and probabilities; 2 clean the export from 25 rows to 23 and fix 13 problems; 3 write a note template and 3 automations; 4 plan a dashboard with 6 metrics and checked formulas. A banner says: check every AI output.">
            <defs><marker id="crm15a" markerWidth="6" markerHeight="6" refX="5" refY="3" orient="auto"><path d="M0,0 L6,3 L0,6 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="10" y="20" width="170" height="120" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="95" y="42" font-size="11" fill="#9b99b8">Step 1</text>
              <text x="95" y="64" font-weight="700">Design pipeline</text>
              <g font-size="12" fill="#9b99b8"><text x="95" y="90">7 stages</text><text x="95" y="108">exit criteria</text><text x="95" y="126">probabilities</text></g>
              <rect x="200" y="20" width="170" height="120" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="285" y="42" font-size="11" fill="#9b99b8">Step 2</text>
              <text x="285" y="64" font-weight="700">Clean the export</text>
              <g font-size="12" fill="#9b99b8"><text x="285" y="90">25 rows → 23</text><text x="285" y="108">13 problems fixed</text><text x="285" y="126">before/after log</text></g>
              <rect x="390" y="20" width="170" height="120" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="475" y="42" font-size="11" fill="#9b99b8">Step 3</text>
              <text x="475" y="64" font-weight="700">Notes + automations</text>
              <g font-size="12" fill="#9b99b8"><text x="475" y="90">note template</text><text x="475" y="108">3 automations</text><text x="475" y="126">test on one deal</text></g>
              <rect x="580" y="20" width="170" height="120" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="665" y="42" font-size="11" fill="#9b99b8">Step 4</text>
              <text x="665" y="64" font-weight="700">Dashboard plan</text>
              <g font-size="12" fill="#9b99b8"><text x="665" y="90">6 metrics</text><text x="665" y="108">formulas checked</text><text x="665" y="126">one-page layout</text></g>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#crm15a)">
                <line x1="181" y1="80" x2="194" y2="80"/>
                <line x1="371" y1="80" x2="384" y2="80"/>
                <line x1="561" y1="80" x2="574" y2="80"/>
              </g>
              <rect x="10" y="160" width="740" height="50" rx="10" fill="#27274e" stroke="#ec4899"/>
              <text x="380" y="190" font-weight="700" fill="#f9a8d4">Check every AI output: numbers, names, merges and consent</text>
            </g>
          </svg>
          <figcaption>Four steps, each with a clear result. The export is cleaned before any number goes on the dashboard.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Step 1: Design the pipeline</h3>
          <p>LedgerLite sells yearly plans at a made-up ₹1,000 per user per month. Kavya starts from the pipeline that she and Arjun agreed. Each stage has an <strong>exit criterion</strong>: the fact that must be true before a deal moves on. The probabilities are LedgerLite's own estimates, not industry numbers.</p>
          <table class="lc-table">
            <thead><tr><th>Stage</th><th>Exit criterion (move on when…)</th><th>Probability</th></tr></thead>
            <tbody>
              <tr><td>Qualified</td><td>A small business (5 to 200 staff) that keeps accounts in spreadsheets or old software. A named person agreed to a call.</td><td>10%</td></tr>
              <tr><td>Discovery done</td><td>We know their main problem, who decides and a rough budget</td><td>20%</td></tr>
              <tr><td>Demo done</td><td>The decision maker saw the demo or started the free trial. The next step has a date.</td><td>40%</td></tr>
              <tr><td>Proposal sent</td><td>A written quote with plan, users and price was sent, and the buyer confirmed they got it</td><td>60%</td></tr>
              <tr><td>Negotiation</td><td>The buyer asked for changes, or sent the quote for internal approval</td><td>80%</td></tr>
              <tr><td>Closed won</td><td>The order form is signed, or the first payment is received</td><td>100%</td></tr>
              <tr><td>Closed lost</td><td>The buyer said no, or did not reply after 3 follow-ups. A reason is chosen.</td><td>0%</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Step 2: Clean the 25-row export</h3>
          <p>Here is the export from the old spreadsheet (made-up data). In a spreadsheet, row 1 holds the headers, so the deals are in rows 2 to 26. Columns: A ID, B Company, C City, D Stage, E Amount (₹), F Owner, G Next step date. You can copy this table into a sheet.</p>
          <table class="lc-table">
            <thead><tr><th>ID</th><th>Company</th><th>City</th><th>Stage</th><th>Amount</th><th>Owner</th><th>Next step</th></tr></thead>
            <tbody>
              <tr><td>D-01</td><td>Ratna Jewellers</td><td>Birmingham</td><td>Closed won</td><td>48000</td><td>Kavya</td><td></td></tr>
              <tr><td>D-02</td><td>RATNA JEWELLERS PVT LTD</td><td>Birmingham</td><td>Closed won</td><td>48000</td><td>Kavya</td><td></td></tr>
              <tr><td>D-03</td><td>Vindhya Agro</td><td>Denver</td><td>Closed won</td><td>36000</td><td>Kavya</td><td></td></tr>
              <tr><td>D-04</td><td>Rainier Motors</td><td>Seattle</td><td>Negotiation</td><td>60000</td><td>Arjun</td><td>2026-10-05</td></tr>
              <tr><td>D-05</td><td>Cherwell Silks</td><td>Oxford, UK</td><td>Proposal sent</td><td>72000</td><td>Kavya</td><td>2026-10-02</td></tr>
              <tr><td>D-06</td><td>Pennine Travels</td><td>Manchester</td><td>Demo given</td><td>24000</td><td>Kavya</td><td>2026-10-01</td></tr>
              <tr><td>D-07</td><td>Malabar Fisheries</td><td>Boston</td><td>Closed lost</td><td>12000</td><td>Kavya</td><td></td></tr>
              <tr><td>D-08</td><td>Punjab Cycle Works</td><td>Coventry</td><td>Proposal sent</td><td>60k</td><td>Arjun</td><td>2026-10-08</td></tr>
              <tr><td>D-09</td><td>Marina Dental Care</td><td>Los Angeles</td><td>Demo done</td><td>36000</td><td></td><td>2026-10-03</td></tr>
              <tr><td>D-10</td><td>Awadh Caterers</td><td>Edinburgh</td><td>Discovery done</td><td>24000</td><td>Kavya</td><td></td></tr>
              <tr><td>D-11</td><td>Headrow Furnishings</td><td>Leeds</td><td>Proposal sent</td><td>36000</td><td>Kavya</td><td>2026-09-30</td></tr>
              <tr><td>D-12</td><td>Wasatch Book Depot</td><td>Salt Lake City</td><td>Negotiation</td><td>72000</td><td>Arjun</td><td>2026-10-06</td></tr>
              <tr><td>D-13</td><td>Thames Bakers</td><td>London</td><td>Closed lost</td><td>24000</td><td>Kavya</td><td></td></tr>
              <tr><td>D-14</td><td>Silverline Opticals</td><td>SF</td><td>Qualified</td><td>24000</td><td>Kavya</td><td>2026-10-10</td></tr>
              <tr><td>D-15</td><td>Ganga Dairy</td><td>Atlanta</td><td>Discovery done</td><td>36000</td><td>Kavya</td><td>2026-10-07</td></tr>
              <tr><td>D-16</td><td>Ganga Dairy Pvt. Ltd.</td><td>Atlanta</td><td>Discovery done</td><td>36000</td><td></td><td></td></tr>
              <tr><td>D-17</td><td>Sabarmati Chemists</td><td>Bristol</td><td>Demo done</td><td>Rs 48000</td><td>Kavya</td><td>2026-10-09</td></tr>
              <tr><td>D-18</td><td>Ganga Sweets</td><td>NYC</td><td>Qualified</td><td>12000</td><td>Kavya</td><td>2026-10-12</td></tr>
              <tr><td>D-19</td><td>Godavari Tiles</td><td>Liverpool</td><td>Closed won</td><td>60000</td><td>Arjun</td><td></td></tr>
              <tr><td>D-20</td><td>Nilgiri Tea Traders</td><td>Austin</td><td>Quote sent</td><td>48000</td><td>Kavya</td><td>2026-10-04</td></tr>
              <tr><td>D-21</td><td>Saurashtra Tools</td><td>Houston</td><td>Closed lost</td><td>36000</td><td>Arjun</td><td></td></tr>
              <tr><td>D-22</td><td>Trent Electricals</td><td>Nottingham</td><td>Demo done</td><td>36000</td><td>Kavya</td><td>2026-09-15</td></tr>
              <tr><td>D-23</td><td>Aravalli Fitness</td><td>Newark</td><td>Qualified</td><td>12000</td><td></td><td>2026-10-11</td></tr>
              <tr><td>D-24</td><td>Soar Valley Packaging</td><td>Leicester</td><td>Negotiation</td><td>60000</td><td>Kavya</td><td>2026-10-05</td></tr>
              <tr><td>D-25</td><td>Konark Handlooms</td><td>Baltimore</td><td>Discovery done</td><td>24000</td><td>Kavya</td><td>2026-10-06</td></tr>
            </tbody>
          </table>
          <p>On 28 September 2026, Kavya finds 13 problems. She does not count blanks in D-02 and D-16, because those rows will be deleted.</p>
          <table class="lc-table">
            <thead><tr><th>Problem</th><th>Rows</th><th>Fix</th></tr></thead>
            <tbody>
              <tr><td>Duplicate companies (same name and city)</td><td>D-02, D-16</td><td>Merge into D-01 and D-15. Delete the extra rows.</td></tr>
              <tr><td>Stage not in the picklist</td><td>D-06, D-20</td><td>"Demo given" becomes Demo done. "Quote sent" becomes Proposal sent.</td></tr>
              <tr><td>Amount stored as text</td><td>D-08, D-17</td><td>60k becomes 60000. Rs 48000 becomes 48000.</td></tr>
              <tr><td>City names not in the standard form</td><td>D-05, D-14, D-18</td><td>Oxford, San Francisco, New York</td></tr>
              <tr><td>Missing owner</td><td>D-09, D-23</td><td>Arjun assigns an owner</td></tr>
              <tr><td>Open deal with no next step</td><td>D-10</td><td>The owner adds a next step and date</td></tr>
              <tr><td>Next step date is overdue</td><td>D-22</td><td>The owner calls and sets a new date</td></tr>
            </tbody>
          </table>
          <p>Dirty data gives wrong numbers. Look at the difference cleaning makes:</p>
          <pre><code>Before cleaning (rows 2 to 26):
        =SUMIF(D2:D26,"Demo done",E2:E26)    gives 72,000
          (misses "Demo given" and the text amount "Rs 48000")
        =COUNTIF(D2:D26,"Closed won")/(COUNTIF(D2:D26,"Closed won")+COUNTIF(D2:D26,"Closed lost"))
                                             gives 4/7 = 57.1% (D-02 counts twice)
        =SUMPRODUCT(--ISTEXT(E2:E26))        gives 2 (amounts stored as text)

        After cleaning (23 rows, now rows 2 to 24):
        =SUMIF(D2:D24,"Demo done",E2:E24)    gives 1,44,000
        =COUNTIF(D2:D24,"Closed won")/(COUNTIF(D2:D24,"Closed won")+COUNTIF(D2:D24,"Closed lost"))
                                             gives 3/6 = 50%
        =SUMPRODUCT(--ISTEXT(E2:E24))        gives 0</code></pre>
          <p>Keep the original export untouched. Clean a copy, and write a short before/after log of every change.</p>
        </div>
        <div class="lc-card">
          <h3>Step 3: Note template and automations</h3>
          <p>Kavya adds a standard note template, so every call log has the same parts:</p>
          <pre><code>Date and type:  [28 Sep 2026, phone call]
        Who:            [name, role]
        What they said: [their words, 1 to 3 lines]
        Concerns:       [price, time, switching effort...]
        Next step:      [what] by [who] on [date]</code></pre>
          <p>She then writes three automations as <strong>trigger</strong> (what starts it), <strong>condition</strong> (when it should run) and <strong>action</strong> (what the CRM does):</p>
          <table class="lc-table">
            <thead><tr><th>Trigger</th><th>Condition</th><th>Action</th></tr></thead>
            <tbody>
              <tr><td>Deal moves to Demo done</td><td>A demo date is filled in</td><td>Create a task for the owner: send the "Demo – Recap" email within one working day after the demo</td></tr>
              <tr><td>No activity on a deal for 14 days</td><td>Stage is not Closed won or Closed lost</td><td>Create a task for the owner and notify Arjun</td></tr>
              <tr><td>Deal marked Closed won</td><td>Amount is above zero</td><td>Create the onboarding tasks and set Renewal date to 12 months after the close date</td></tr>
            </tbody>
          </table>
          <p>Test each automation on one test deal before you turn it on for everyone.</p>
        </div>
        <div class="lc-card">
          <h3>Step 4: The dashboard plan</h3>
          <p>Kavya plans six metrics. To keep the maths easy to check, the results below use only the 23 cleaned rows. The live dashboard will also include the deals already in the CRM. Stage is column D and Amount is column E, in rows 2 to 24.</p>
          <table class="lc-table">
            <thead><tr><th>Metric</th><th>Definition</th><th>Formula or method</th><th>Result</th></tr></thead>
            <tbody>
              <tr><td>Win rate</td><td>Closed won ÷ (Closed won + Closed lost)</td><td>COUNTIF formula above</td><td>3 ÷ 6 = 50%</td></tr>
              <tr><td>Average deal size</td><td>Value of won deals ÷ number won</td><td><code>=AVERAGEIF(D2:D24,"Closed won",E2:E24)</code></td><td>₹1,44,000 ÷ 3 = ₹48,000</td></tr>
              <tr><td>Open pipeline by stage</td><td>Value of open deals in each stage</td><td><code>=SUMIF(D2:D24,"Proposal sent",E2:E24)</code>, one per stage</td><td>Qualified ₹48,000 · Discovery done ₹84,000 · Demo done ₹1,44,000 · Proposal sent ₹2,16,000 · Negotiation ₹1,92,000 · Total ₹6,84,000 (17 deals)</td></tr>
              <tr><td>Weighted pipeline</td><td>Each stage's value × its probability, added up</td><td>A small table with stage, probability and SUMIF value</td><td>4,800 + 16,800 + 57,600 + 1,29,600 + 1,53,600 = ₹3,62,400</td></tr>
              <tr><td>Sales cycle</td><td>Average days from created to won</td><td>Needs Created and Closed dates</td><td>Not possible yet. Add both fields to the export.</td></tr>
              <tr><td>Deals missing a next step</td><td>Open deals with an empty next step date</td><td><code>=COUNTIFS(D2:D24,"&lt;&gt;Closed won",D2:D24,"&lt;&gt;Closed lost",G2:G24,"")</code></td><td>Target: 0 after cleaning</td></tr>
            </tbody>
          </table>
          <p>Notice the sales cycle row. A good dashboard plan also shows what data is missing. That becomes a new required field.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: the cleaning session with AI</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Prompt">Kavya pastes the 25 rows (no contact names, phones or emails) and her data rules. "List every data problem with the row IDs. Do not change anything yet."</li>
              <li data-kind="answer" data-label="AI reply">"2 duplicate pairs, 2 stages not in the picklist, 2 text amounts and 3 city names not in the standard form. Also 2 missing owners, 1 open deal with no next step and 1 overdue date. Blanks in the two duplicate rows are not counted."</li>
              <li data-kind="warn" data-label="Mistake to catch">The AI also suggests merging Ganga Sweets (New York) with Ganga Dairy (Atlanta), because the names are similar. They are different businesses in different cities. Kavya rejects it.</li>
              <li data-kind="tool" data-label="Spreadsheet">She fixes a copy of the export. Then she runs ISTEXT, COUNTIF and SUMIF checks on the cleaned sheet.</li>
              <li data-kind="result" data-label="Check results">23 rows. 0 text amounts. Every stage matches the picklist. Demo done pipeline ₹1,44,000. Win rate 50%.</li>
              <li data-kind="check" data-label="Spot check">She compares five random rows with the old spreadsheet. Then she writes the before/after log and imports the 23 clean rows into the CRM.</li>
              <li data-kind="answer" data-label="Summary for Arjun">AI drafts a short update from her numbers. Kavya checks every figure in it before she sends it.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Run the whole capstone with AI. Paste your own anonymised export, or leave the placeholder and the AI will make a sample to practise on.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a CRM consultant helping a small startup set up and clean its CRM. Use simple English.

        Business: [LedgerLite, San Francisco, accounting software for small businesses. Sales rep Kavya, founder Arjun.]
        Pipeline stages: [Qualified, Discovery done, Demo done, Proposal sent, Negotiation, Closed won, Closed lost]
        Export columns: ID, Company, City, Stage, Amount (₹), Owner, Next step date
        [Paste up to 25 rows here, without contact names, phones or emails. If no rows are pasted, make up a realistic 25-row sample with a few duplicates, text amounts, blank owners and odd stage names. Label it as sample data.]

        Do these in order:
        1. For each stage: one exit criterion and a probability.
        2. List every data problem with its row IDs. Do not fix anything yet.
        3. Give a cleaning rule and a spreadsheet formula to check each problem.
        4. Write a call note template and 3 automations (trigger, condition, action).
        5. Plan a dashboard: win rate, average deal size, pipeline by stage, weighted pipeline, sales cycle and deals missing a next step. Give the definition, formula and needed fields for each.

        Only call rows duplicates if the name and city both match. Mark every guess.</pre>
            <ul class="ai-try-checks">
              <li>Win rate is won ÷ (won + lost), with open deals left out</li>
              <li>Duplicates need the same company and the same city</li>
              <li>The formulas point at the right columns and rows</li>
              <li>It says sales cycle needs created and closed dates</li>
              <li>You recalculated at least two numbers yourself in a spreadsheet</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A useful CRM is designed first, cleaned second and measured last. AI speeds up each step, but a person checks each result. One duplicate won deal was enough to change the win rate from 50% to 57.1%.
        </div>
      HTML
      starter_code: nil
    }
  }.freeze
end

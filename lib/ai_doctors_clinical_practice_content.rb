module AiDoctorsClinicalPracticeContent
  # Units (sidebar dividers): 1–4 Clinical AI Basics · 5–9 AI in the Consultation · 10–14 Safe Practice · 15 Capstone
  # Widgets: sequence, sorter, stepper. No code editor: each Try It is an ai-try prompt box.
  LESSONS = {
    1 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-health">Healthcare</div>
          <h1 class="lc-title">How AI Fits into Clinical Practice</h1>
        </div>
        <p class="lc-lead">AI tools are now in phones, hospital software and clinic computers. Many doctors already use them to look things up and write letters. In this lesson you will learn the difference between <strong>decision support</strong> and <strong>decision making</strong>. You will meet the main types of clinical AI tools and their risks. You will also see the jobs that only a doctor can do. Every patient in this course is made up. This course is education, not medical advice.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 290" role="img" aria-label="Three boxes in a row. AI tools suggest causes, summarise guidelines, flag interactions and draft letters. The doctor takes the history, checks AI output, decides the plan and signs. The patient hears the plan, asks questions, agrees and gets care. A red box below says AI output must never go to the patient without a doctor check.">
            <defs><marker id="cp1a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="380" y="26" font-weight="700" fill="#c4b5fd">Where AI sits in a consultation</text>
              <rect x="20" y="46" width="220" height="156" rx="12" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="130" y="72" font-weight="700" fill="#93c5fd">AI tools (support)</text>
              <text x="130" y="102">suggest possible causes</text>
              <text x="130" y="128">summarise guidelines</text>
              <text x="130" y="154">flag interactions</text>
              <text x="130" y="180">draft letters, leaflets</text>
              <rect x="280" y="46" width="200" height="156" rx="12" fill="#27274e" stroke="#10b981" stroke-width="2"/>
              <text x="380" y="72" font-weight="700" fill="#6ee7b7">Doctor (decides)</text>
              <text x="380" y="102">takes history, examines</text>
              <text x="380" y="128">checks AI output</text>
              <text x="380" y="154">decides the plan</text>
              <text x="380" y="180">signs the record</text>
              <rect x="520" y="46" width="220" height="156" rx="12" fill="#1f1f44" stroke="#ec4899"/>
              <text x="630" y="72" font-weight="700" fill="#f9a8d4">Patient</text>
              <text x="630" y="102">hears the plan</text>
              <text x="630" y="128">asks questions</text>
              <text x="630" y="154">agrees (consent)</text>
              <text x="630" y="180">gets care</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#cp1a)">
                <line x1="242" y1="124" x2="276" y2="124"/>
                <line x1="482" y1="124" x2="516" y2="124"/>
              </g>
              <rect x="20" y="222" width="720" height="54" rx="10" fill="#1f1f44" stroke="#ef4444" stroke-dasharray="6 4"/>
              <text x="380" y="245" fill="#fca5a5">Not allowed: AI output goes to the patient with no doctor check</text>
              <text x="380" y="265" font-size="11.5" fill="#9b99b8">India's Telemedicine Guidelines 2020: only a registered doctor may prescribe or counsel</text>
            </g>
          </svg>
          <figcaption>AI supports the doctor. The doctor decides with the patient and signs. Nothing goes from AI straight to the patient.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Decision support vs decision making</h3>
          <p><strong>Decision support</strong> means a tool gives you information that helps you decide. <strong>Decision making</strong> means choosing what happens to the patient. AI tools can support. The doctor makes the decision and signs for it.</p>
          <p>Here is a made-up patient. Mr Ramesh Yadav, 56, has type 2 diabetes and high blood pressure. His eGFR (estimated glomerular filtration rate: a measure of kidney function) is 47. He takes metformin, glimepiride, telmisartan and atorvastatin. He has been buying diclofenac, a painkiller, from a chemist for knee pain. Dr Arvind Joshi sees him at Nirmal Family Clinic.</p>
          <table class="lc-table">
            <thead><tr><th>Task</th><th>AI support (example)</th><th>Doctor's decision</th></tr></thead>
            <tbody>
              <tr><td>Drug check</td><td>An interaction checker flags diclofenac with telmisartan and reduced kidney function</td><td>Whether to stop diclofenac, and which pain plan to agree with Mr Yadav</td></tr>
              <tr><td>Guideline</td><td>AI summarises the blood pressure goal in a diabetes guideline</td><td>Opens the original, then chooses a goal that is safe for this patient</td></tr>
              <tr><td>Paperwork</td><td>AI drafts a referral letter from the doctor's notes</td><td>Reads it, corrects it and signs it</td></tr>
            </tbody>
          </table>
          <p>Dr Joshi follows one simple pattern: he asks, he checks, and he decides. The AI never has the last word.</p>
        </div>
        <div class="lc-card">
          <h3>Types of AI tools you will meet</h3>
          <table class="lc-table">
            <thead><tr><th>Type</th><th>What it does</th><th>Example use</th><th>Main risk</th></tr></thead>
            <tbody>
              <tr><td><strong>General AI assistants</strong> (chatbots such as Claude)</td><td>Answer questions, summarise, draft text</td><td>Draft a patient leaflet on knee pain</td><td>Can invent facts; may not know recent changes</td></tr>
              <tr><td><strong>Alerts in hospital software</strong> (HIS or EHR: the hospital's computer record system)</td><td>Warn about allergies, interactions and abnormal results</td><td>An allergy alert while prescribing</td><td>So many alerts that staff click past them (alert fatigue)</td></tr>
              <tr><td><strong>AI scribes</strong></td><td>Listen to the consultation and draft the note</td><td>A draft OPD (outpatient) note</td><td>Mishears or adds things not said; needs consent</td></tr>
              <tr><td><strong>Image and signal AI</strong></td><td>Read X-rays, ECGs or eye photos</td><td>Flag a chest X-ray for the radiologist to review first</td><td>Works only for the use it was tested on</td></tr>
              <tr><td><strong>Evidence search tools</strong></td><td>Find and summarise research papers</td><td>Find trials on a treatment question</td><td>Wrong or made-up references</td></tr>
              <tr><td><strong>Patient chatbots and symptom checkers</strong></td><td>Answer patient questions</td><td>Appointment and FAQ bot</td><td>May miss an emergency</td></tr>
            </tbody>
          </table>
          <p>Some AI software counts as a medical device in law. In India, software meant for diagnosis or treatment can come under the CDSCO Medical Devices Rules 2017. CDSCO has also published guidance on medical device software, including AI software; check the CDSCO website for the current version. The US FDA publishes a list of AI-enabled medical devices. In the EU, AI in a regulated medical device is usually high-risk under the EU AI Act. Rules change, so check the current official pages. This is general information, not legal advice.</p>
        </div>
        <div class="lc-card">
          <h3>What the doctor must still do</h3>
          <ul class="lc-list">
            <li><strong>Take the history and examine.</strong> AI cannot see, touch or listen to the patient.</li>
            <li><strong>Give full context.</strong> Age, pregnancy, kidney function and current medicines change the answer.</li>
            <li><strong>Check every output</strong> against a trusted source, such as the formulary or the original guideline.</li>
            <li><strong>Decide with the patient.</strong> Explain the options and agree the plan together.</li>
            <li><strong>Act first in emergencies.</strong> In India, call 108 or 112. Do not stop to ask an AI.</li>
            <li><strong>Protect privacy.</strong> Never paste names or other identifiers into public AI tools.</li>
            <li><strong>Document and sign.</strong> You are responsible for what you sign.</li>
          </ul>
          <p>India's Telemedicine Practice Guidelines 2020 say AI platforms must not counsel patients or prescribe medicines. AI may assist a registered medical practitioner (RMP). The final prescription or counselling must come directly from the RMP. Check the current version on the National Medical Commission (NMC) website.</p>
          <pre><code>Weak:   What should I give for knee pain?
        
        Better: I am a family doctor in India. Made-up patient: man, 56,
        type 2 diabetes, hypertension, eGFR 47, potassium 4.9.
        Takes metformin, glimepiride, telmisartan, atorvastatin.
        Knee pain for 3 weeks, likely osteoarthritis.
        List pain options with the kidney and drug risks of each.
        Say what I must check in the current formulary.
        Do not choose for me.</code></pre>
          <p>The better prompt gives context, asks for risks, and keeps the decision with the doctor.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: support or decision?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each task. Can AI support it, or must the doctor do it?</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="ai" data-label="AI can support"></div>
              <div data-sorter-target="bucket" data-bucket="doc" data-label="Only the doctor"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="ai" data-why="A list of possible interactions is useful support. The doctor still checks it in the formulary.">List possible interactions in Mr Yadav's medicine list</li>
              <li data-bucket="ai" data-why="Drafting saves time. The doctor reads, corrects and signs the letter.">Draft a referral letter from the doctor's notes</li>
              <li data-bucket="ai" data-why="A summary helps you find the right section fast. You still open the original guideline.">Summarise what a guideline says about blood pressure goals</li>
              <li data-bucket="doc" data-why="This is a treatment decision. It needs the full picture and the patient's view.">Decide whether Mr Yadav should stop diclofenac</li>
              <li data-bucket="doc" data-why="Examination needs a trained person with the patient. AI cannot do it.">Examine a feverish child's chest and neck</li>
              <li data-bucket="doc" data-why="Only a registered doctor can prescribe. The signature means you take responsibility.">Sign the prescription</li>
              <li data-bucket="doc" data-why="The Telemedicine Guidelines say counselling must come directly from the doctor.">Explain the diagnosis to the patient and answer questions</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to map one OPD day into tasks where AI can support you and tasks that stay with you. Change the day to match your own work.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an adviser on safe AI use in primary care in India.

        I am [a family doctor in a small clinic in Madhya Pradesh]. A typical OPD day for me: [about 40 patients: diabetes and blood pressure follow-ups, fevers, coughs, antenatal checks, older patients on many medicines, referral letters and patient leaflets].

        Make a table with these columns:
        Task | Can AI support it? (Yes / Partly / No) | How AI could help | What I must still check or decide | Privacy risk (Low / Medium / High)

        Include at least 10 tasks from my day. Mark every emergency task as "No: act first".

        Rules:
        - Do not use or ask for real patient details.
        - Do not suggest doses.
        - If you are not sure a use is safe, say so.

        End with 3 short rules I could put on my clinic wall.</pre>
            <ul class="ai-try-checks">
              <li>Emergency tasks are marked "No: act first", not given to AI.</li>
              <li>Diagnosis, prescribing, counselling and signing stay with the doctor.</li>
              <li>Tasks that need names or ID numbers are marked as high privacy risk.</li>
              <li>It gives no doses and does not claim any tool is always right.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> AI gives decision support. The doctor takes the history, examines, decides with the patient and signs. Use AI to ask better questions and check faster. Never hand it the decision.
        </div>
      HTML
      starter_code: nil
    },
    2 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-health">Healthcare</div>
          <h1 class="lc-title">Where AI Helps and Where It Fails</h1>
        </div>
        <p class="lc-lead">AI can save you real time. It drafts, summarises and makes checklists in seconds. But it also fails in ways that can harm patients. It can invent facts, quote an old guideline, sound sure when it is wrong, and miss context you did not give it. People can also start to trust it too much. In this lesson you will learn where AI helps, the five main ways it fails, and simple habits that catch the failures. All patients here are made up.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="Two panels. Where AI helps: fast first drafts, summaries of long text, checklists and reminders, plain-language leaflets, and a broader list to consider. Where AI fails: made-up facts and references, old guideline versions, sounding sure when wrong, missing context, and people who stop checking. A rule at the bottom says use AI where errors are easy to catch and check hardest where harm is high.">
            <defs><marker id="cp2a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="20" y="16" width="350" height="210" rx="12" fill="#1f1f44" stroke="#10b981" stroke-width="2"/>
              <text x="195" y="44" font-weight="700" fill="#6ee7b7">Where AI helps</text>
              <rect x="45" y="60" width="300" height="28" rx="6" fill="#27274e"/><text x="195" y="79">Fast first drafts of letters</text>
              <rect x="45" y="92" width="300" height="28" rx="6" fill="#27274e"/><text x="195" y="111">Summaries of long reports</text>
              <rect x="45" y="124" width="300" height="28" rx="6" fill="#27274e"/><text x="195" y="143">Checklists and follow-up reminders</text>
              <rect x="45" y="156" width="300" height="28" rx="6" fill="#27274e"/><text x="195" y="175">Plain-language patient leaflets</text>
              <rect x="45" y="188" width="300" height="28" rx="6" fill="#27274e"/><text x="195" y="207">A broader list of causes to consider</text>
              <rect x="390" y="16" width="350" height="210" rx="12" fill="#1f1f44" stroke="#ef4444" stroke-width="2"/>
              <text x="565" y="44" font-weight="700" fill="#fca5a5">Where AI fails</text>
              <rect x="415" y="60" width="300" height="28" rx="6" fill="#27274e"/><text x="565" y="79">Makes up facts and references</text>
              <rect x="415" y="92" width="300" height="28" rx="6" fill="#27274e"/><text x="565" y="111">Quotes an old guideline version</text>
              <rect x="415" y="124" width="300" height="28" rx="6" fill="#27274e"/><text x="565" y="143">Sounds sure when it is wrong</text>
              <rect x="415" y="156" width="300" height="28" rx="6" fill="#27274e"/><text x="565" y="175">Misses context you did not give</text>
              <rect x="415" y="188" width="300" height="28" rx="6" fill="#27274e"/><text x="565" y="207">People stop checking (automation bias)</text>
              <line x1="380" y1="236" x2="380" y2="252" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#cp2a)"/>
              <rect x="120" y="256" width="520" height="34" rx="8" fill="#27274e" stroke="#f59e0b"/>
              <text x="380" y="278" fill="#fcd34d">Use AI where errors are easy to catch. Check hardest where harm is high.</text>
            </g>
          </svg>
          <figcaption>The same tool can help and harm. The difference is the task you give it and how carefully you check the answer.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Where AI helps</h3>
          <p>Dr Sameer Kale is a physician at Tarang Multispeciality Hospital. He uses the hospital's approved AI assistant for tasks where a mistake is easy to spot.</p>
          <table class="lc-table">
            <thead><tr><th>Task</th><th>Why AI helps</th><th>What Dr Kale still checks</th></tr></thead>
            <tbody>
              <tr><td>Summarise a 12-page report from another hospital (identifiers removed)</td><td>It finds the key events fast</td><td>Every medicine, dose and date against the original report</td></tr>
              <tr><td>Make a diabetic foot check list</td><td>It gives a clear starting list</td><td>That it matches the hospital protocol</td></tr>
              <tr><td>Draft advice on low-salt food in simple Hindi</td><td>It writes in plain words and other languages</td><td>The facts, and the language with a fluent speaker</td></tr>
              <tr><td>List possible causes of breathlessness in an older patient</td><td>It may remind him of a cause he forgot</td><td>He forms his own list first, then compares</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Five ways AI fails</h3>
          <table class="lc-table">
            <thead><tr><th>Failure</th><th>What it means</th><th>Made-up example</th></tr></thead>
            <tbody>
              <tr><td><strong>Hallucination</strong></td><td>Confident text that is not true</td><td>AI cites a journal paper with authors and a year. The paper does not exist.</td></tr>
              <tr><td><strong>Outdated guidelines</strong></td><td>AI learned from text up to a cut-off date. Guidelines change after that.</td><td>AI quotes a blood pressure goal from an older version of a yearly diabetes guideline.</td></tr>
              <tr><td><strong>Overconfidence</strong></td><td>AI rarely says "I am not sure" unless you ask it to</td><td>A dose appears with no range, no source and no warning.</td></tr>
              <tr><td><strong>Missing context</strong></td><td>AI answers the question you typed, not the patient in front of you</td><td>Asked about a urine infection, AI names an antibiotic. Nobody told it the patient is 22 weeks pregnant.</td></tr>
              <tr><td><strong>Automation bias</strong></td><td>People trust a machine's output too much and stop checking</td><td>A busy doctor accepts a neat AI summary that left out a drug allergy.</td></tr>
            </tbody>
          </table>
          <p>AI also tends to agree with you. If you ask "This is just gastritis, right?", it may agree. Ask open questions instead, such as "What else could cause this?"</p>
          <p>Habits that catch these failures:</p>
          <ul class="lc-list">
            <li>Check the high-risk items first: doses, allergies, pregnancy, kidney and liver function.</li>
            <li>Open every reference. If you cannot find it, treat it as invented.</li>
            <li>Ask the AI to show its confidence and what could be out of date.</li>
            <li>For diagnosis, write your own list before you read the AI's list.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Activity: follow a real-looking session</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Dr Kale asks">"Best painkiller for knee osteoarthritis in a 56-year-old man?" (The patient is made up.)</li>
              <li data-kind="answer" data-label="AI replies">It suggests a regular oral NSAID (non-steroidal anti-inflammatory drug), such as diclofenac. The tone is confident. Kidneys are not mentioned.</li>
              <li data-kind="thought" data-label="Dr Kale notices">His question left out the key facts: diabetes, eGFR 47, potassium 4.9 and telmisartan.</li>
              <li data-kind="user" data-label="He asks again">He adds the full made-up context. He asks for the risks of each option and what he must check.</li>
              <li data-kind="answer" data-label="AI replies">Now it warns that NSAIDs with telmisartan and reduced kidney function can harm the kidneys and raise potassium. It lists non-drug steps and other options.</li>
              <li data-kind="warn" data-label="Catch this">The answer cites "a 2024 Indian consensus paper" with a title Dr Kale cannot find anywhere. It may be invented. He does not use it.</li>
              <li data-kind="tool" data-label="He checks">He opens the current national formulary and the product labels.</li>
              <li data-kind="check" data-label="He decides">He agrees a pain plan with the patient, asks him to stop buying diclofenac, and records the reason.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI a clinical question about a made-up patient. Make it show its confidence, what may be out of date, and how it could be wrong.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a careful clinical information assistant. I am a doctor in India. The patient below is made up for training.

        Patient: [a 79-year-old woman with two falls in 3 months. Medicines: amlodipine 10 mg once a day, hydrochlorothiazide 25 mg once a day, glimepiride 2 mg once a day, metformin 500 mg twice a day, alprazolam 0.25 mg at night, and a cold syrup with chlorpheniramine. Lying BP 142/82, standing BP 116/74. Sodium 131. HbA1c 6.4%.]

        Question: Which of her medicines may add to her fall risk, and why?

        Answer in this format:
        1. Your answer as a short list.
        2. For each point: confidence (High / Medium / Low) and the reason.
        3. Which parts could be out of date, and which guideline or list I should check. Name a source only if you are sure it exists.
        4. What missing information could change your answer.
        5. Two ways your answer could be wrong.

        Do not give doses or a final plan. The doctor decides.</pre>
            <ul class="ai-try-checks">
              <li>It notices the standing blood pressure drop (26 systolic) and links it to her medicines.</li>
              <li>It mentions sedatives, sedating antihistamines and low sugar risk from a sulfonylurea.</li>
              <li>Any list it names (for example the Beers Criteria) is real, and you check the current version.</li>
              <li>It asks for missing facts, such as sugar readings, vision, alcohol and other medicines.</li>
              <li>It gives no doses and no final plan.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> AI is fast and fluent, but fluent is not the same as correct. Use it for drafts, summaries and lists that you can check. Check hardest where the harm is highest, and never let a neat answer stop you from thinking.
        </div>
      HTML
      starter_code: nil
    },
    3 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-health">Healthcare</div>
          <h1 class="lc-title">Responsibility, Consent and Privacy</h1>
        </div>
        <p class="lc-lead">When AI helps with a patient, three questions matter. Who is responsible if it goes wrong? Does the patient know and agree? Is the patient's data safe? In this lesson you will learn why the doctor stays responsible. You will see what the Indian rules say, in general terms. You will also learn to remove identifiers before you use any AI tool. This is general education, not legal or medical advice. Rules change, so check the current official versions and your hospital's policy.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 270" role="img" aria-label="A safe path for patient data: patient data, then remove identifiers, then approved tool only, then doctor checks the output, then record and sign. A red branch from patient data to a public chatbot is marked never.">
            <defs><marker id="cp3a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker><marker id="cp3b" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#ef4444"/></marker></defs>
            <g font-family="inherit" font-size="12.5" fill="#e2e0f0" text-anchor="middle">
              <text x="380" y="26" font-weight="700" fill="#c4b5fd">The safe path for patient data</text>
              <rect x="10" y="50" width="130" height="64" rx="10" fill="#27274e" stroke="#8b5cf6"/>
              <text x="75" y="78" font-weight="700">Patient data</text>
              <text x="75" y="98" font-size="11" fill="#9b99b8">note, labs, history</text>
              <rect x="158" y="50" width="136" height="64" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="226" y="78" font-weight="700">Remove</text>
              <text x="226" y="98" font-weight="700">identifiers</text>
              <rect x="312" y="50" width="136" height="64" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="380" y="78" font-weight="700">Approved tool</text>
              <text x="380" y="98" font-size="11" fill="#9b99b8">clinic's own account</text>
              <rect x="466" y="50" width="136" height="64" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="534" y="78" font-weight="700">Doctor checks</text>
              <text x="534" y="98" font-size="11" fill="#9b99b8">every output</text>
              <rect x="620" y="50" width="130" height="64" rx="10" fill="#27274e" stroke="#10b981" stroke-width="2"/>
              <text x="685" y="78" font-weight="700">Record, sign</text>
              <text x="685" y="98" font-size="11" fill="#9b99b8">doctor responsible</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#cp3a)">
                <line x1="141" y1="82" x2="154" y2="82"/>
                <line x1="295" y1="82" x2="308" y2="82"/>
                <line x1="449" y1="82" x2="462" y2="82"/>
                <line x1="603" y1="82" x2="616" y2="82"/>
              </g>
              <path d="M75,116 L75,190 L150,190" stroke="#ef4444" stroke-width="1.5" fill="none" stroke-dasharray="5 4" marker-end="url(#cp3b)"/>
              <rect x="156" y="164" width="300" height="52" rx="10" fill="#1f1f44" stroke="#ef4444" stroke-width="2"/>
              <text x="306" y="186" font-weight="700" fill="#fca5a5">Public chatbot: never</text>
              <text x="306" y="205" font-size="11" fill="#9b99b8">no names, phone numbers or ID numbers</text>
              <text x="380" y="252" font-size="11.5" fill="#9b99b8">India: DPDP Act 2023 and DPDP Rules 2025 cover digital personal data, including health data</text>
            </g>
          </svg>
          <figcaption>Patient data moves only along the safe path. Identifiers come out first, and only approved tools are used.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Responsibility: the doctor signs, the doctor answers</h3>
          <p>An AI tool cannot hold a medical registration. It cannot be held to account for an error. The Indian Council of Medical Research (ICMR) 2023 ethical guidelines on AI in healthcare list accountability and human oversight among their principles. So the doctor who uses the output and signs the note is responsible for it.</p>
          <ul class="lc-list">
            <li><strong>Professional conduct.</strong> In 2023 the NMC issued new professional conduct regulations. It put them on hold in August 2023. The older Indian Medical Council regulations of 2002 continue to apply. Check the NMC website for the current position.</li>
            <li><strong>Telemedicine.</strong> The Telemedicine Practice Guidelines 2020 say AI platforms must not counsel patients or prescribe. The final prescription or counselling must come directly from the registered doctor.</li>
            <li><strong>In practice.</strong> "The AI said so" is not a defence. If you use an AI suggestion, you must be able to explain why it was right for this patient.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Consent: tell the patient, and let them say no</h3>
          <p>Patients should know when AI plays a part in their care in a way that affects them. Examples are an AI scribe that records the consultation, or AI that reads their scan. Ask before you record. Accept a "no" and give the same care without the tool.</p>
          <p>For teleconsultations, the Telemedicine Guidelines say consent is implied when the patient starts the call. Explicit consent is needed when a health worker, caregiver or doctor starts it. Record it in the notes.</p>
          <pre><code>A simple script (translate as needed):
        "I sometimes use a computer tool to help me write notes.
        It does not decide your treatment. I check everything myself.
        Your name and phone number are not put into it.
        Is that all right with you?"</code></pre>
          <p>Tarang Multispeciality Hospital in Maharashtra plans to pilot an AI scribe. Sister Mary Thomas is writing the consent script and the steps for patients who say no.</p>
        </div>
        <div class="lc-card">
          <h3>Privacy: remove identifiers before any AI use</h3>
          <p>India's Digital Personal Data Protection (DPDP) Act 2023 covers personal data in digital form, including health data. The DPDP Rules 2025 were notified in November 2025. They start in phases. Most duties for clinics and hospitals start 18 months later, in May 2027. Dates can change, so check the current rules. A clinic that decides how patient data is used has duties under the law. Doctors also have a long-standing duty of confidentiality. If you work with US patients, HIPAA has similar rules. This is general information, not legal advice.</p>
          <table class="lc-table">
            <thead><tr><th>Remove</th><th>Make general</th><th>Usually safe to keep</th></tr></thead>
            <tbody>
              <tr><td>Name, relatives' names, phone, address, email</td><td>Exact dates: use "September 2026"</td><td>Age (under 90), sex</td></tr>
              <tr><td>ABHA number, Aadhaar, hospital ID (UHID)</td><td>Small town or village: use the district or "rural"</td><td>Symptoms, vitals, lab values</td></tr>
              <tr><td>Photos of the face, reports with a name header</td><td>Rare job or rare disease that could point to one person</td><td>Medicine names and doses</td></tr>
            </tbody>
          </table>
          <pre><code>Before: Mrs Shanta Deshpande, 79, 14 Station Road,
                mob 98XXXXXX12, seen 22/09/2026 with son Nitin...
        
        After:  Woman, 79, urban India, seen September 2026 with
                her son. Two falls in 3 months. Lying BP 142/82,
                standing 116/74. Sodium 131. eGFR 57.</code></pre>
          <p>Even a de-identified note goes only into the clinic's approved tool. Details together can still point to one person.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: what do you do with this detail?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Dr Joshi wants AI help with a made-up patient. Sort each item.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="remove" data-label="Remove before any AI use"></div>
              <div data-sorter-target="bucket" data-bucket="ok" data-label="OK in the approved tool"></div>
              <div data-sorter-target="bucket" data-bucket="consent" data-label="Ask the patient first"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="remove" data-why="A name and phone number identify the patient directly. They never go into an AI tool.">The patient's name and mobile number</li>
              <li data-bucket="remove" data-why="Crop or cover the header. The name and hospital ID identify the patient.">A photo of a lab report with the name and UHID at the top</li>
              <li data-bucket="ok" data-why="Age, sex, lab values and medicines do not identify her on their own. Use the clinic's approved tool only.">"Woman, 79, eGFR 57, sodium 131, list of medicines"</li>
              <li data-bucket="ok" data-why="The summary has no identifiers. Dr Joshi still reads and signs the letter.">A de-identified case summary, to draft a referral letter</li>
              <li data-bucket="consent" data-why="Recording a consultation needs the patient's permission. Offer care without it if they say no.">Recording the consultation with an AI scribe</li>
              <li data-bucket="consent" data-why="The recording is the patient's personal data. Ask first and explain how it will be used.">Using a video call recording to make an AI summary</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to find the identifiers in a made-up note and rewrite it safely. Practise here so the habit is automatic with real notes.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a privacy officer for a clinic in India. The note below is made up for training.

        Tasks:
        1. List every direct identifier (such as name, phone, address, ID numbers, exact dates) and every indirect detail that could identify the person when combined with others.
        2. Rewrite the note with identifiers removed or made general. Keep every clinical fact a doctor needs, unchanged.
        3. List 3 things I should still check before I paste any note into an AI tool.

        Note:
        [Mrs Shanta Deshpande, 79, widow of Madhav Deshpande, 14 Station Road. Mobile 98XXXXXX12. ABHA number on file. UHID NFC-2026-0417. Seen 22/09/2026 with son Nitin, principal of the Government Girls School. Two falls in 3 months. Lying BP 142/82, standing 116/74. Medicines: amlodipine 10 mg, hydrochlorothiazide 25 mg, glimepiride 2 mg, metformin 500 mg twice a day, alprazolam 0.25 mg at night. Sodium 131, eGFR 57.]

        Output: a table (Detail | Direct or indirect | Action), then the safe note. Do not give clinical advice. This is not legal advice.</pre>
            <ul class="ai-try-checks">
              <li>It finds the name, husband's name, address, phone, ABHA and UHID.</li>
              <li>It flags the son's job and school as indirect identifiers.</li>
              <li>All blood pressure, lab and medicine details stay exactly the same.</li>
              <li>The exact date becomes general, such as "September 2026".</li>
              <li>It reminds you to use only the clinic's approved tool, even after removing identifiers.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> AI does not share your responsibility. You sign, so you answer for it. Tell patients when AI affects their care, and let them say no. Remove identifiers first, and use only approved tools. Never put patient details into a public chatbot.
        </div>
      HTML
      starter_code: nil
    },
    4 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-health">Healthcare</div>
          <h1 class="lc-title">Asking Good Clinical Questions</h1>
        </div>
        <p class="lc-lead">A vague question gets a vague answer, from a colleague or from AI. In this lesson you will learn to turn a bedside worry into a clear clinical question using <strong>PICO</strong>. You will learn which context to give, and how to make the AI show its sources and its uncertainty. Good questions give safer, more useful answers. They also make the answers easier to check. All patients here are made up.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 310" role="img" aria-label="A bedside question about a 79-year-old woman with falls who takes alprazolam is split into PICO. P: woman, 79, falls, on alprazolam. I: slow taper of alprazolam. C: continue the same dose. O: falls, sleep, withdrawal. Below, the question gets a context card and a request for sources, dates and uncertainty.">
            <defs><marker id="cp4a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="130" y="12" width="500" height="44" rx="10" fill="#27274e" stroke="#8b5cf6"/>
              <text x="380" y="31" font-size="11" fill="#9b99b8">Bedside worry (made-up patient)</text>
              <text x="380" y="48">"Should Mrs Deshpande stop her sleeping tablet?"</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#cp4a)">
                <line x1="200" y1="58" x2="110" y2="80"/>
                <line x1="330" y1="58" x2="290" y2="80"/>
                <line x1="430" y1="58" x2="470" y2="80"/>
                <line x1="560" y1="58" x2="650" y2="80"/>
              </g>
              <rect x="16" y="84" width="170" height="112" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="101" y="112" font-size="22" font-weight="700" fill="#93c5fd">P</text>
              <text x="101" y="134" font-weight="700">Patient, problem</text>
              <text x="101" y="156" font-size="11.5" fill="#9b99b8">woman, 79, two falls,</text>
              <text x="101" y="174" font-size="11.5" fill="#9b99b8">on alprazolam</text>
              <rect x="198" y="84" width="170" height="112" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="283" y="112" font-size="22" font-weight="700" fill="#6ee7b7">I</text>
              <text x="283" y="134" font-weight="700">Intervention</text>
              <text x="283" y="156" font-size="11.5" fill="#9b99b8">slow taper of</text>
              <text x="283" y="174" font-size="11.5" fill="#9b99b8">alprazolam</text>
              <rect x="380" y="84" width="170" height="112" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="465" y="112" font-size="22" font-weight="700" fill="#fcd34d">C</text>
              <text x="465" y="134" font-weight="700">Comparison</text>
              <text x="465" y="156" font-size="11.5" fill="#9b99b8">continue the</text>
              <text x="465" y="174" font-size="11.5" fill="#9b99b8">same dose</text>
              <rect x="562" y="84" width="170" height="112" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="647" y="112" font-size="22" font-weight="700" fill="#f9a8d4">O</text>
              <text x="647" y="134" font-weight="700">Outcome</text>
              <text x="647" y="156" font-size="11.5" fill="#9b99b8">falls, sleep,</text>
              <text x="647" y="174" font-size="11.5" fill="#9b99b8">withdrawal symptoms</text>
              <line x1="380" y1="200" x2="380" y2="222" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#cp4a)"/>
              <rect x="40" y="226" width="330" height="68" rx="10" fill="#27274e" stroke="#22d3ee"/>
              <text x="205" y="252" font-weight="700" fill="#67e8f9">+ Context card</text>
              <text x="205" y="274" font-size="11.5" fill="#9b99b8">age, pregnancy, kidneys, medicines</text>
              <rect x="390" y="226" width="330" height="68" rx="10" fill="#27274e" stroke="#22d3ee"/>
              <text x="555" y="252" font-weight="700" fill="#67e8f9">+ Ask for sources</text>
              <text x="555" y="274" font-size="11.5" fill="#9b99b8">dates, confidence, what is unsure</text>
            </g>
          </svg>
          <figcaption>PICO turns a worry into a question that AI, a database or a colleague can answer. Context and a request for sources make the answer checkable.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>PICO for bedside questions</h3>
          <p>Some questions are <strong>background questions</strong>: "What is orthostatic hypotension?" A textbook answers them. Others are <strong>foreground questions</strong> about a choice for one patient. PICO helps with these. It has four parts:</p>
          <ul class="lc-list">
            <li><strong>P, Patient or problem:</strong> who is this, and what is the problem?</li>
            <li><strong>I, Intervention:</strong> the test, treatment or action you are thinking about.</li>
            <li><strong>C, Comparison:</strong> the other choice, which can be "no change".</li>
            <li><strong>O, Outcome:</strong> what matters to the patient, both benefits and harms.</li>
          </ul>
          <table class="lc-table">
            <thead><tr><th>Made-up patient</th><th>P</th><th>I</th><th>C</th><th>O</th></tr></thead>
            <tbody>
              <tr><td>Mrs Shanta Deshpande, 79</td><td>Older woman with falls, on alprazolam for 2 years</td><td>Slow, planned taper</td><td>Continue the same dose</td><td>Falls, sleep, withdrawal symptoms</td></tr>
              <tr><td>Mr Ramesh Yadav, 56</td><td>Man with diabetes, eGFR 47, on telmisartan, knee osteoarthritis</td><td>Topical NSAID gel</td><td>Oral NSAID tablets</td><td>Pain, kidney function, potassium</td></tr>
              <tr><td>Mrs Pooja Sharma, 27</td><td>Pregnant, 22 weeks, lower urinary tract infection</td><td>First-choice antibiotic in the current guideline</td><td>Other antibiotics</td><td>Cure, safety for mother and baby</td></tr>
            </tbody>
          </table>
          <p>PICO also gives you search words for PubMed or the Cochrane Library, where you can check the evidence yourself.</p>
        </div>
        <div class="lc-card">
          <h3>Give the context, without identifiers</h3>
          <p>AI only knows what you tell it. Missing context is the most common reason for an unsafe answer. Keep a short context card and fill it every time:</p>
          <pre><code>CONTEXT CARD (made-up patient, no identifiers)
        Age and sex:            woman, 79
        Pregnant/breastfeeding: not applicable
        Weight (children):      not applicable
        Kidney and liver:       eGFR 57; liver tests not done
        Allergies:              none known (asked)
        All medicines:          amlodipine, hydrochlorothiazide, glimepiride,
                                metformin, alprazolam, cold syrup, herbal powder
        Key findings:           lying BP 142/82, standing 116/74, sodium 131
        Setting:                family clinic OPD, India
        Already done:           medicine review started with her son
        What I want:            options with pros, cons and what to check</code></pre>
          <p>Leave out the name, phone, address and ID numbers. Use only your clinic's approved AI tool.</p>
        </div>
        <div class="lc-card">
          <h3>Ask for sources and uncertainty</h3>
          <p>AI will not show its doubts unless you ask. Add lines like these to your prompt:</p>
          <ul class="lc-list">
            <li>"Name the guideline or source for each point, with the issuing body and year."</li>
            <li>"Mark each point as well established, uncertain or expert opinion."</li>
            <li>"Say 'I am not sure' when you are not sure. Do not guess."</li>
            <li>"Tell me your knowledge cut-off date, and what may have changed since."</li>
            <li>"List what extra information would change your answer."</li>
          </ul>
          <pre><code>Weak:   Should old people stop alprazolam?
        
        Better: Made-up patient: [paste the context card].
        PICO: in this woman (P), does a slow taper of alprazolam (I),
        compared with continuing it (C), change falls, sleep and
        withdrawal symptoms (O)?
        Give options, not a decision. For each point, name the source
        and year and mark your confidence. Say what I must check.</code></pre>
          <p>AI can still invent a source, even when you ask for one. Open every reference before you rely on it.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: build the question in order</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put the steps for asking AI a clinical question in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Write the bedside worry in one line</li>
              <li data-order="2">Turn it into PICO: patient, intervention, comparison, outcome</li>
              <li data-order="3">Fill the context card and remove every identifier</li>
              <li data-order="4">Say what output you want, such as options with pros and cons</li>
              <li data-order="5">Ask for sources, years, confidence and what is uncertain</li>
              <li data-order="6">Open and check each source the AI names</li>
              <li data-order="7">Decide with the patient and record your reasons</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Give AI a rough bedside question. Ask it to build a PICO question and a better prompt for you, not to answer the clinical question.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a teacher of evidence-based medicine for doctors in India. Help me ask a better clinical question. Do not answer the clinical question itself.

        My rough question: [My made-up patient is a 3-year-old boy, 14 kg, with fever for 2 days during dengue season. He is drinking well and playful. When should I test for dengue, and what warning signs mean he needs to be seen again urgently?]

        Please give:
        1. Is this a background or a foreground question? Explain in one line.
        2. A PICO table (Patient | Intervention | Comparison | Outcome). If a part does not fit, say so.
        3. A list of missing context I should add (for example examination findings or local test availability).
        4. A rewritten prompt I can use, with a line asking for sources, years and confidence.
        5. Three search terms for PubMed, and two official sources I should check, named only if you are sure they exist.

        Use simple English. No doses.</pre>
            <ul class="ai-try-checks">
              <li>It builds the PICO table and does not jump to a treatment answer.</li>
              <li>It asks for missing context such as examination findings, urine output and local test availability.</li>
              <li>The rewritten prompt asks for sources, years and confidence.</li>
              <li>Any official source it names (for example national dengue guidelines) really exists. Check it yourself.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> The quality of the answer depends on the quality of the question. Use PICO, give full context without identifiers, and ask the AI to show its sources and doubts. Then check the sources yourself.
        </div>
      HTML
      starter_code: nil
    },
    5 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-health">Healthcare</div>
          <h1 class="lc-title">Checking Clinical Guidelines with AI</h1>
        </div>
        <p class="lc-lead">Guidelines change. Some are updated every year, and AI may not know about the latest version. AI is still useful: it can tell you which guidelines apply, where to find them and what changed. But the answer you act on must come from the original document. In this lesson you will learn where Indian and international guidelines come from. You will also learn to compare versions and check the original before you use it. All patients here are made up. This is education, not medical advice.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 260" role="img" aria-label="Five steps: ask AI which guidelines apply, get the issuer, title and year, open the original on the official website, check the version and fit for this patient, then apply it and record the source. A red note under step 3 says an AI summary is not the source.">
            <defs><marker id="cp5a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12.5" fill="#e2e0f0" text-anchor="middle">
              <text x="380" y="26" font-weight="700" fill="#c4b5fd">From AI answer to checked guideline</text>
              <rect x="10" y="48" width="132" height="84" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="76" y="72" font-size="18" font-weight="700" fill="#93c5fd">1</text>
              <text x="76" y="96">Ask AI which</text>
              <text x="76" y="114">guidelines apply</text>
              <rect x="156" y="48" width="132" height="84" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="222" y="72" font-size="18" font-weight="700" fill="#c4b5fd">2</text>
              <text x="222" y="96">Get issuer,</text>
              <text x="222" y="114">title and year</text>
              <rect x="302" y="48" width="132" height="84" rx="10" fill="#27274e" stroke="#10b981" stroke-width="2"/>
              <text x="368" y="72" font-size="18" font-weight="700" fill="#6ee7b7">3</text>
              <text x="368" y="96">Open the</text>
              <text x="368" y="114">original</text>
              <rect x="448" y="48" width="132" height="84" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="514" y="72" font-size="18" font-weight="700" fill="#fcd34d">4</text>
              <text x="514" y="96">Check version</text>
              <text x="514" y="114">and patient fit</text>
              <rect x="594" y="48" width="140" height="84" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="664" y="72" font-size="18" font-weight="700" fill="#f9a8d4">5</text>
              <text x="664" y="96">Apply, record</text>
              <text x="664" y="114">source and date</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#cp5a)">
                <line x1="143" y1="90" x2="152" y2="90"/>
                <line x1="289" y1="90" x2="298" y2="90"/>
                <line x1="435" y1="90" x2="444" y2="90"/>
                <line x1="581" y1="90" x2="590" y2="90"/>
              </g>
              <line x1="368" y1="134" x2="368" y2="160" stroke="#ef4444" stroke-width="1.5" stroke-dasharray="4 3"/>
              <rect x="208" y="162" width="320" height="50" rx="10" fill="#1f1f44" stroke="#ef4444"/>
              <text x="368" y="183" font-weight="700" fill="#fca5a5">An AI summary is not the source</text>
              <text x="368" y="202" font-size="11" fill="#9b99b8">official website, latest version, exact words</text>
              <text x="380" y="244" font-size="11.5" fill="#9b99b8">Step 3 is the step busy people skip. Never skip it.</text>
            </g>
          </svg>
          <figcaption>AI helps you find the right guideline fast. You act only on the original document, in its current version.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Where clinical guidelines come from</h3>
          <table class="lc-table">
            <thead><tr><th>Source</th><th>Examples</th><th>Good for</th></tr></thead>
            <tbody>
              <tr><td><strong>ICMR Standard Treatment Workflows</strong></td><td>Short workflows for common conditions, in several volumes (stw.icmr.org.in)</td><td>Quick, India-focused steps for many specialties</td></tr>
              <tr><td><strong>National health programmes</strong> (Ministry of Health and Family Welfare)</td><td>NP-NCD for diabetes and hypertension, the National TB Elimination Programme, national dengue and malaria guidelines</td><td>Rules and medicines used in the public system</td></tr>
              <tr><td><strong>WHO</strong></td><td>Guidelines on infections, maternal and child health, and more</td><td>Global advice, often for limited-resource settings</td></tr>
              <tr><td><strong>Indian specialty societies</strong></td><td>For example RSSDI (diabetes), API (physicians), IAP (paediatrics), FOGSI (obstetrics and gynaecology), CSI (cardiology)</td><td>Specialist advice for Indian patients</td></tr>
              <tr><td><strong>International bodies</strong></td><td>ADA Standards of Care (diabetes, updated every year), NICE (UK), AHA/ACC (US heart guidelines)</td><td>Detailed, frequently updated evidence reviews</td></tr>
              <tr><td><strong>Your hospital</strong></td><td>Antibiotic policy, protocols</td><td>Local germs, local medicines, local rules</td></tr>
            </tbody>
          </table>
          <p>Guidelines from different countries can disagree. A UK guideline may assume medicines or tests that your clinic does not have. Know which one you are using, and why.</p>
        </div>
        <div class="lc-card">
          <h3>Compare versions: a worked example</h3>
          <p>Made-up patient Mr Ramesh Yadav, 56, has type 2 diabetes and blood pressure 146/90. His eGFR is 47 and his urine ACR (albumin-to-creatinine ratio, a test for protein leak from the kidneys) is 68 mg/g. Dr Joshi asks the clinic's AI tool for the blood pressure goal in the ADA Standards of Care.</p>
          <table class="lc-table">
            <thead><tr><th>What Dr Joshi sees</th><th>Blood pressure goal (summary)</th></tr></thead>
            <tbody>
              <tr><td>AI answer</td><td>"Below 130/80 mmHg." No year, no source section.</td></tr>
              <tr><td>The current ADA Standards of Care (the original)</td><td>Below 130/80 if it can be reached safely. A systolic goal below 120 is now encouraged for people at high cardiovascular or kidney risk. Goals may be relaxed for frail older people.</td></tr>
              <tr><td>2025 AHA/ACC high blood pressure guideline</td><td>Below 130/80 for most adults</td></tr>
            </tbody>
          </table>
          <p>The AI answer was not wrong. But it missed a newer change in the current version that may matter for Mr Yadav, because of his kidney results. Only the original showed it. Dr Joshi reads the section, then decides a goal with Mr Yadav. He plans to recheck his kidney function too. Guideline wording changes, so always check the current version yourself.</p>
          <pre><code>Weak:   What is the BP target in diabetes?

        Better: Which current guidelines give a blood pressure goal for
        adults with type 2 diabetes and reduced kidney function?
        For each: issuing body, title, year of the latest version you
        know, and what changed from the version before. Tell me your
        knowledge cut-off date. Say "not sure" rather than guess.</code></pre>
        </div>
        <div class="lc-card">
          <h3>Check the original: six questions</h3>
          <ul class="lc-list">
            <li><strong>Right issuer?</strong> Get it from the official website, not a blog, a forwarded PDF or an AI summary.</li>
            <li><strong>Latest version?</strong> Look for the year, an "updated" date, and any corrections.</li>
            <li><strong>Right patients?</strong> Adults or children? Pregnant or not? Hospital or clinic? India or another country?</li>
            <li><strong>Exact words?</strong> Read the recommendation itself, and how strong it is.</li>
            <li><strong>Local fit?</strong> Are the tests and medicines available? Does your hospital policy differ?</li>
            <li><strong>Recorded?</strong> Note the guideline name and version in the patient's record when it guides a decision.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Activity: a guideline check for a pregnant patient</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Dr Joshi asks">Made-up patient Mrs Pooja Sharma, 27, is 22 weeks pregnant with burning and frequent urination. Dr Joshi asks AI: "Which guidelines cover lower urinary tract infection in pregnancy? Give issuer, title and year."</li>
              <li data-kind="answer" data-label="AI replies">It lists NICE guideline NG109, WHO material, the ICMR workflows and "Indian UTI in Pregnancy Guideline 2025". It gives a short summary of each.</li>
              <li data-kind="warn" data-label="Catch this">He cannot find the "Indian UTI in Pregnancy Guideline 2025" on any official website. It may be invented. He drops it.</li>
              <li data-kind="tool" data-label="He opens">He opens NICE NG109 on the NICE website. He also searches the ICMR workflows site for a matching workflow.</li>
              <li data-kind="result" data-label="He finds">NICE NG109 says to send a urine sample for culture before antibiotics in pregnant women. It also says to avoid nitrofurantoin at term (near the due date).</li>
              <li data-kind="check" data-label="He checks fit">He sent the culture before starting treatment. He checks the antibiotic choice against the clinic's formulary, pregnancy safety and local resistance. He decides.</li>
              <li data-kind="check" data-label="He records">He writes the guideline name and version in the note, and books a review when the culture result is back.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to build a guideline checklist for one condition. Then open each guideline it names on the official website.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a clinical librarian helping a doctor in India. I need to check the current guidelines for [high blood pressure in adults with type 2 diabetes] in [a family clinic in India].

        1. List the guidelines I should check. Include Indian sources (ICMR, national programmes, Indian specialty societies) and international ones (WHO and others).
        2. Make a table: Issuer | Title | Latest version year you know | Where to find the official copy (website name only, no made-up links) | Main point to check | Your confidence (High / Medium / Low).
        3. If you are not sure a guideline exists, write "check: may not exist".
        4. Tell me your knowledge cut-off date, and which of these are likely to have newer versions.
        5. Give me 5 questions to ask when I open each original.

        Do not give doses or a treatment plan. Use simple English.</pre>
            <ul class="ai-try-checks">
              <li>Open every guideline on its official website. Remove any you cannot find.</li>
              <li>Check that the year it gives is the latest version, not an older one.</li>
              <li>It gives website names, not invented links.</li>
              <li>It mixes Indian and international sources and says which fit an Indian clinic.</li>
              <li>It gives no doses or treatment plan.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Use AI to find guidelines and spot what changed. Then open the original on the official website, check the version and the fit for your patient, and record what you used. The summary helps you search. The original is what you act on.
        </div>
      HTML
      starter_code: nil
    },
    6 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-health">Healthcare</div>
          <h1 class="lc-title">Differential Diagnosis Support</h1>
        </div>
        <p class="lc-lead">A <strong>differential diagnosis</strong> is the list of conditions that could explain a patient's problem. Busy doctors can stop too early at the first likely cause. AI can help you widen the list and remind you of causes you must not miss. In this lesson you will learn a safe way to do this. You will write your own list first, let AI add to it, and sort it. You will also learn why red flags come before any AI use. All patients here are made up. This is education, not medical advice.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="Four steps in a row: your own list first, AI broadens the list, sort into common and cannot-miss causes, then you examine, test and give safety-net advice. Below, a question: any red flags? If no, follow the four steps, as for a made-up child with fever. If yes, act first and use AI later, as for a made-up man with chest pain.">
            <defs><marker id="cp6a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="380" y="24" font-weight="700" fill="#c4b5fd">A safe way to use AI for a differential</text>
              <rect x="12" y="42" width="164" height="76" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="94" y="72" font-weight="700" fill="#93c5fd">1 Your own list</text>
              <text x="94" y="96" font-size="11" fill="#9b99b8">before you ask AI</text>
              <rect x="200" y="42" width="164" height="76" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="282" y="72" font-weight="700" fill="#c4b5fd">2 AI broadens it</text>
              <text x="282" y="96" font-size="11" fill="#9b99b8">"what else could it be?"</text>
              <rect x="388" y="42" width="164" height="76" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="470" y="72" font-weight="700" fill="#fcd34d">3 Sort the list</text>
              <text x="470" y="96" font-size="11" fill="#9b99b8">common / cannot miss</text>
              <rect x="576" y="42" width="164" height="76" rx="10" fill="#27274e" stroke="#10b981" stroke-width="2"/>
              <text x="658" y="72" font-weight="700" fill="#6ee7b7">4 You decide</text>
              <text x="658" y="96" font-size="11" fill="#9b99b8">examine, test, safety-net</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#cp6a)">
                <line x1="178" y1="80" x2="196" y2="80"/>
                <line x1="366" y1="80" x2="384" y2="80"/>
                <line x1="554" y1="80" x2="572" y2="80"/>
              </g>
              <rect x="250" y="146" width="260" height="36" rx="18" fill="#27274e" stroke="#ec4899"/>
              <text x="380" y="169" font-weight="700" fill="#f9a8d4">But first: any red flags?</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#cp6a)">
                <line x1="300" y1="184" x2="220" y2="210"/>
                <line x1="460" y1="184" x2="540" y2="210"/>
              </g>
              <rect x="30" y="214" width="330" height="72" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="195" y="240" font-weight="700" fill="#6ee7b7">No: follow steps 1 to 4</text>
              <text x="195" y="264" font-size="11.5" fill="#9b99b8">Aarav, 3 years: fever in dengue season</text>
              <rect x="400" y="214" width="330" height="72" rx="10" fill="#1f1f44" stroke="#ef4444" stroke-width="2"/>
              <text x="565" y="240" font-weight="700" fill="#fca5a5">Yes: act first, AI later</text>
              <text x="565" y="264" font-size="11.5" fill="#9b99b8">Rohan, 34: chest pain, ECG, call 108/112</text>
            </g>
          </svg>
          <figcaption>Red flags come first. If there are none, write your own list, let AI widen it, sort it, and then examine, test and decide yourself.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>How AI helps with a differential, and how it misleads</h3>
          <p>AI is good at one thing here: listing possible causes fast. It may remind you of a cause you forgot. It cannot see, examine or follow up the patient. It also does not know your local diseases unless you tell it.</p>
          <ul class="lc-list">
            <li><strong>Write your own list first.</strong> If you read the AI list first, it can shape your thinking. This is called <strong>anchoring</strong>: sticking to the first idea you see.</li>
            <li><strong>Ask open questions.</strong> "What else could this be?" works better than "This is viral fever, right?" AI tends to agree with you.</li>
            <li><strong>Give local context.</strong> Say the country, season and what is going around. Dengue in central India in September is very different from fever in northern Europe in January.</li>
            <li><strong>Sort the answer.</strong> Group causes into common, cannot miss, and red flags that need action now.</li>
            <li><strong>Treat the list as a prompt for your thinking.</strong> The examination, the tests and the decision stay with you.</li>
          </ul>
          <pre><code>Weak:   Child with fever, what is the diagnosis?

        Better: I am a family doctor in central India. It is September
        (monsoon, dengue season). Made-up patient: boy, 3 years 2 months,
        14 kg. Fever 2 days, highest 39.4 °C, runny nose, mild cough.
        Drinking well, passed urine 5 times today, playful between fevers.
        No rash, bleeding, vomiting or fits. Temp 38.9 °C, HR 130, RR 28,
        SpO2 98% on air, capillary refill under 2 s, no neck stiffness.
        Two neighbours' children had dengue last week.
        My list: viral upper respiratory infection, dengue.
        What else should I consider? Group the answer into common and
        cannot miss. List the dengue warning signs from the Indian national
        guideline. Name sources only if you are sure they exist. No doses.</code></pre>
        </div>
        <div class="lc-card">
          <h3>Worked example: Master Aarav Jain, 3, fever in dengue season</h3>
          <p>Made-up patient Aarav Jain, 3 years 2 months, comes to Nirmal Family Clinic with his mother. Dr Arvind Joshi writes his own list first. Then he asks the clinic's approved AI tool what else to consider. He sorts the combined list like this:</p>
          <table class="lc-table">
            <thead><tr><th>Possible cause</th><th>Points for (made-up case)</th><th>Points against, or what to check</th></tr></thead>
            <tbody>
              <tr><td>Viral upper respiratory infection</td><td>Runny nose, mild cough, playful between fevers</td><td>Common, but it does not rule out dengue in an outbreak</td></tr>
              <tr><td>Dengue</td><td>Season, two neighbours' children had dengue, high fever</td><td>Day 2 to 3 of fever; warning signs often appear later; test timing matters</td></tr>
              <tr><td>Malaria, typhoid (enteric fever)</td><td>Common monsoon fevers in many parts of India</td><td>Local pattern, travel, how long the fever lasts</td></tr>
              <tr><td>Chikungunya, scrub typhus, leptospirosis</td><td>Occur in the monsoon in some areas</td><td>Joint pain, an eschar (a small black scab), exposure to flood water</td></tr>
              <tr><td>Urine infection, pneumonia</td><td>Common hidden causes of fever in young children</td><td>Examine the chest; think of a urine test if no clear source</td></tr>
              <tr><td>Meningitis or other serious bacterial infection</td><td>Cannot miss</td><td>Alert, no neck stiffness, no rash; recheck if he gets worse</td></tr>
            </tbody>
          </table>
          <p>Dr Joshi then checks two official sources, not the AI summary:</p>
          <ul class="lc-list">
            <li><strong>National Guidelines for Clinical Management of Dengue Fever 2023</strong> (National Center for Vector Borne Diseases Control). Its warning signs include persistent vomiting, abdominal pain and tenderness, lethargy or restlessness, and bleeding. Others are fainting or giddiness, fluid build-up, an enlarged liver, and a rising haematocrit with a fast fall in platelets. It says the critical phase usually starts after the 3rd or 4th day of fever.</li>
            <li><strong>NICE NG143 traffic-light table</strong> (fever in under 5s, UK). For age 2 to 5 years, a heart rate over 140 is an amber (medium-risk) sign. So is a breathing rate over 40. Aarav's heart rate is 130 and his breathing rate is 28. His oxygen level and capillary refill are normal.</li>
          </ul>
          <p>So today Aarav has no warning signs and no amber or red features. But dengue can get worse later, often around the time the fever settles. Dr Joshi examines him and gives clear safety-net advice, which means telling the mother exactly which signs mean "come back now". The national guideline also says to avoid aspirin and NSAIDs (non-steroidal anti-inflammatory drugs such as ibuprofen) in dengue. They can cause bleeding. Check the current versions of both documents.</p>
        </div>
        <div class="lc-card">
          <h3>Red flags: act first, AI later</h3>
          <p>Made-up patient Mr Rohan Tiwari, 34, walks in at 11:10 am. He has central chest pressure for 40 minutes, spreading to the left arm, with sweating. He smokes, and his father had a heart attack at 48. His pulse is 104 and BP 150/94.</p>
          <p>This is not the time to type into an AI tool. These are red flags: signs of a condition that can kill or disable within hours. The 2021 AHA/ACC chest pain guideline says a 12-lead ECG should be done and read within 10 minutes of arrival. If a clinic cannot do this, the patient should go to emergency care. Nirmal Family Clinic has a 12-lead ECG machine and a one-page chest pain protocol on the wall. Dr Joshi follows the protocol, records the ECG and calls 108. Rohan goes by ambulance to the nearest hospital that can treat heart attacks.</p>
          <ul class="lc-list">
            <li>Young age does not rule out a heart attack.</li>
            <li>Other dangerous causes, such as aortic dissection, pulmonary embolism and pneumothorax, are for the emergency team to assess.</li>
            <li>AI can help later, for example to draft the referral letter from his notes. He reads and signs it.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Activity: reassuring sign or warning sign?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Aarav's mother may see these at home over the next few days. Sort each one, using the dengue warning signs in the national guideline.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="ok" data-label="Reassuring for now"></div>
              <div data-sorter-target="bucket" data-bucket="warn" data-label="Warning sign: come back now"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="ok" data-why="Good fluid intake and normal urine output are reassuring. Keep watching, because things can change.">Drinking well and passing urine often</li>
              <li data-bucket="ok" data-why="A child who plays when the fever comes down is less likely to be seriously ill. Still give safety-net advice.">Playful when the fever comes down</li>
              <li data-bucket="warn" data-why="Persistent vomiting is a warning sign in the national dengue guideline. He also cannot keep fluids down.">Vomiting again and again</li>
              <li data-bucket="warn" data-why="Abdominal pain and tenderness is a dengue warning sign. It needs same-day hospital review.">Tummy pain and crying when the tummy is touched</li>
              <li data-bucket="warn" data-why="Lethargy or restlessness is a warning sign. A drowsy child needs urgent review.">Very sleepy, hard to wake, or very restless</li>
              <li data-bucket="warn" data-why="Bleeding, such as from the nose or gums, is a warning sign.">Bleeding from the nose or gums</li>
              <li data-bucket="warn" data-why="The critical phase often starts as the fever settles. In children, the guideline says this is between day 3 and day 7. A child who gets worse as the fever goes is a warning.">Fever goes away, but he becomes more tired and unwell</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Give AI a made-up case and your own short list. Ask it to widen the list, sort it and show the red flags, without giving a diagnosis or doses.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a senior physician helping a doctor in India think through a differential diagnosis. The patient is made up for training. Do not make the final diagnosis and do not give doses.

        Setting: [family clinic in central India, September, monsoon season].
        Patient: [girl, 8 years, 25 kg. Fever for 4 days, headache, body ache, reduced appetite. No cough. Temp 38.6 °C, HR 118, RR 22, BP 98/64, SpO2 98%. Mild abdominal pain today. Dengue cases in her school.]
        My own list: [dengue, viral fever].

        Please give:
        1. Red flags first: anything in this case that needs urgent action now. If yes, say so at the top.
        2. Causes I have not listed. Group them as Common here | Cannot miss.
        3. A table: Cause | Points for | Points against | Question or examination that would help.
        4. The dengue warning signs from the Indian national dengue guideline. Name the guideline only if you are sure it exists.
        5. Safety-net advice for the parent, in 5 plain sentences.
        6. What information would change your answer.</pre>
            <ul class="ai-try-checks">
              <li>Red flags come first, and abdominal pain on day 4 of fever is treated as a possible warning sign.</li>
              <li>It adds local monsoon causes, such as malaria, typhoid, scrub typhus or leptospirosis.</li>
              <li>The warning signs match the current national guideline when you open it.</li>
              <li>It gives no final diagnosis and no doses.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Use AI to widen your list, never to close it. Write your own list first, give local context, and sort the answer into common and cannot-miss causes. Red flags come before any AI use: act first, and let AI help with the paperwork later.
        </div>
      HTML
      starter_code: nil
    },
    7 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-health">Healthcare</div>
          <h1 class="lc-title">Drug Interactions, Doses and Prescribing Checks</h1>
        </div>
        <p class="lc-lead">Prescribing errors are common and can cause serious harm. The risk is highest in pregnancy, in children, and when the kidneys or liver work less well. Older people on many medicines are also at high risk. AI can help you spot what to check. But a dose or interaction from a chatbot is never the final answer. In this lesson you will learn to use AI to find problems, and then check each one in an official source. All patients here are made up. This is education, not medical advice. Always check the current formulary.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 280" role="img" aria-label="Five patient factors in a row: kidneys, liver, pregnancy, child's weight, and age 65 plus with falls. They feed into three steps: AI flags possible problems, check the official source, and the doctor decides and records. A note says nothing is final until checked in the current formulary or product label.">
            <defs><marker id="cp7a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="380" y="22" font-weight="700" fill="#c4b5fd">Patient factors that change a prescription</text>
              <rect x="12" y="38" width="136" height="46" rx="8" fill="#27274e" stroke="#3b82f6"/>
              <text x="80" y="66">Kidneys (eGFR)</text>
              <rect x="160" y="38" width="136" height="46" rx="8" fill="#27274e" stroke="#3b82f6"/>
              <text x="228" y="66">Liver</text>
              <rect x="308" y="38" width="136" height="46" rx="8" fill="#27274e" stroke="#ec4899"/>
              <text x="376" y="66">Pregnancy</text>
              <rect x="456" y="38" width="136" height="46" rx="8" fill="#27274e" stroke="#22d3ee"/>
              <text x="524" y="66">Child: weight</text>
              <rect x="604" y="38" width="136" height="46" rx="8" fill="#27274e" stroke="#f59e0b"/>
              <text x="672" y="66">Age 65+, falls</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none">
                <line x1="80" y1="84" x2="80" y2="104"/>
                <line x1="228" y1="84" x2="228" y2="104"/>
                <line x1="376" y1="84" x2="376" y2="104"/>
                <line x1="524" y1="84" x2="524" y2="104"/>
                <line x1="672" y1="84" x2="672" y2="104"/>
                <line x1="80" y1="104" x2="672" y2="104"/>
              </g>
              <line x1="130" y1="104" x2="130" y2="128" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#cp7a)"/>
              <rect x="20" y="132" width="220" height="64" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="130" y="158" font-weight="700" fill="#c4b5fd">AI flags problems</text>
              <text x="130" y="180" font-size="11" fill="#9b99b8">a list to check, not an answer</text>
              <rect x="270" y="132" width="220" height="64" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="380" y="158" font-weight="700" fill="#93c5fd">Check official source</text>
              <text x="380" y="180" font-size="11" fill="#9b99b8">formulary, label, checker</text>
              <rect x="520" y="132" width="220" height="64" rx="10" fill="#27274e" stroke="#10b981" stroke-width="2"/>
              <text x="630" y="158" font-weight="700" fill="#6ee7b7">Doctor decides</text>
              <text x="630" y="180" font-size="11" fill="#9b99b8">with the patient, and records</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#cp7a)">
                <line x1="242" y1="164" x2="266" y2="164"/>
                <line x1="492" y1="164" x2="516" y2="164"/>
              </g>
              <rect x="110" y="222" width="540" height="40" rx="8" fill="#1f1f44" stroke="#ef4444" stroke-dasharray="6 4"/>
              <text x="380" y="247" fill="#fca5a5">Nothing is final until checked in the current formulary or label</text>
            </g>
          </svg>
          <figcaption>Patient factors change the safe choice and dose. AI can flag possible problems. The official source and the doctor settle them.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>AI finds questions; official sources give answers</h3>
          <p>A general AI assistant can mix up doses, units and strengths. It may use another country's rules or an old label. Use it to ask "what should I check?", not "what dose should I give?"</p>
          <table class="lc-table">
            <thead><tr><th>Source</th><th>Use it for</th><th>Watch out for</th></tr></thead>
            <tbody>
              <tr><td>AI assistant (clinic's approved tool)</td><td>A first list of possible interactions and patient factors to check</td><td>Missing or invented interactions; wrong units</td></tr>
              <tr><td>Interaction checker (subscribed, in the HIS, EHR or pharmacy system)</td><td>Checking every pair in the medicine list</td><td>Too many minor alerts; it only knows the medicines you enter</td></tr>
              <tr><td>National Formulary of India, current edition</td><td>Doses, kidney and liver adjustment, pregnancy, children</td><td>Check the edition year</td></tr>
              <tr><td>Product label (package insert)</td><td>The exact product, strength and warnings</td><td>Labels differ between brands and countries</td></tr>
              <tr><td>Pharmacist</td><td>A second check on complex lists</td><td>Give the full list, including over-the-counter and herbal products</td></tr>
            </tbody>
          </table>
          <p>Always include over-the-counter medicines, chemist purchases and herbal products. Patients often forget them. Ask: "Do you buy anything from the chemist yourself?"</p>
        </div>
        <div class="lc-card">
          <h3>Worked example: Mr Ramesh Yadav and his kidneys</h3>
          <p>Made-up patient Mr Ramesh Yadav, 56, has type 2 diabetes and hypertension. His eGFR is 47 mL/min/1.73 m² and potassium is 4.9 mmol/L. He takes metformin 1000 mg twice a day (2,000 mg a day) and glimepiride 2 mg once a day. He also takes telmisartan 40 mg once a day and atorvastatin 20 mg at night. He has been buying diclofenac from a chemist for knee pain.</p>
          <table class="lc-table">
            <thead><tr><th>Issue flagged</th><th>What Dr Joshi finds in the sources</th><th>His next step</th></tr></thead>
            <tbody>
              <tr><td>Diclofenac with telmisartan and reduced kidney function</td><td>NSAIDs with an ARB (angiotensin receptor blocker) can worsen kidney function and raise potassium, especially when kidney function is already reduced. The ADA Standards say to keep NSAID exposure low when eGFR is below 60.</td><td>Ask him to stop buying diclofenac. Recheck kidney function and potassium.</td></tr>
              <tr><td>Knee pain still needs treatment</td><td>NICE NG226 (osteoarthritis) recommends exercise and weight loss if needed. It suggests offering a topical NSAID gel for knee osteoarthritis. It says not to offer paracetamol routinely.</td><td>Agree a pain plan with him. Check the gel in the formulary for his kidney function.</td></tr>
              <tr><td>Metformin at eGFR 47</td><td>US FDA label: do not use below 30; do not start between 30 and 45; if eGFR falls below 45, weigh benefits and risks. KDIGO 2022 (a kidney guideline): below 60, check kidney function more often and review the dose. At 30 to 44, halve the maximum dose. Stop below 30.</td><td>47 is just above 45. Repeat the test and watch the trend. Review the dose if it falls below 45.</td></tr>
              <tr><td>Glimepiride</td><td>A sulfonylurea: it can cause low sugar, and the risk is higher when kidney function falls.</td><td>Ask about low-sugar symptoms. Check the label for kidney advice.</td></tr>
            </tbody>
          </table>
          <p>Every number above comes from a named source that Dr Joshi opens himself. Guidelines and labels change, so check the current versions and the current formulary.</p>
        </div>
        <div class="lc-card">
          <h3>Older adults: deprescribing and the Beers Criteria</h3>
          <p><strong>Deprescribing</strong> means planned stopping or reducing of medicines that may now do more harm than good. Made-up patient Mrs Shanta Deshpande, 79, has had two falls. She takes 9 items from 3 prescribers and a chemist. Her BP drops by 26 systolic when she stands. Her sodium is 131 and a finger-prick glucose was 78 mg/dL.</p>
          <p>The <strong>AGS Beers Criteria</strong> (American Geriatrics Society, 2023 version) list medicines that are often unsafe for adults aged 65 and over. They are a prompt for review, not a rule to stop everything.</p>
          <table class="lc-table">
            <thead><tr><th>Her medicine</th><th>What Beers 2023 says (summary)</th></tr></thead>
            <tbody>
              <tr><td>Alprazolam 0.25 mg at night, for 2 years</td><td>Benzodiazepines: avoid. They raise the risk of falls, fractures and confusion.</td></tr>
              <tr><td>Cold syrup with chlorpheniramine</td><td>First-generation antihistamines: avoid. Highly anticholinergic (they block a nerve chemical, causing confusion and dizziness).</td></tr>
              <tr><td>Glimepiride</td><td>Sulfonylureas: avoid as first- or second-line unless there are real barriers to safer medicines. If one is used, a short-acting one is preferred.</td></tr>
              <tr><td>Pantoprazole for 3 years, reason unclear</td><td>Proton-pump inhibitors: avoid regular use for more than 8 weeks unless there is a clear reason.</td></tr>
              <tr><td>Hydrochlorothiazide, with sodium 131</td><td>Diuretics: use with caution, as they can cause low sodium.</td></tr>
            </tbody>
          </table>
          <p>Deprescribing is a shared decision with Mrs Deshpande and her son. Change one thing at a time. Never stop a benzodiazepine suddenly after long use: taper it slowly with a plan. Ask her to bring the herbal "sugar powder" so you can see what is in it. The Beers Criteria are a US list; STOPP/START is another widely used list. Check the current versions.</p>
        </div>
        <div class="lc-card">
          <h3>Pregnancy and children: say it every time</h3>
          <p><strong>Pregnancy.</strong> Made-up patient Mrs Pooja Sharma is 22 weeks pregnant with a urine infection. Every AI question about her must say "22 weeks pregnant". NICE NG109 says to avoid nitrofurantoin at term. Some other antibiotics are avoided at certain stages of pregnancy. Choose from the current national or local guideline, the formulary's pregnancy section and her culture result.</p>
          <p><strong>Children.</strong> Doses are usually worked out by weight, in mg per kg. So a wrong weight or a wrong syrup strength gives a wrong dose. Made-up patient Aarav weighs 14 kg. His mother gives paracetamol syrup at home, but she is not sure of the strength or the dose.</p>
          <pre><code>Safe steps for a child's syrup dose:
        1. Weigh the child today (Aarav: 14 kg).
        2. Take the mg/kg dose, how often, and the 24-hour maximum
           from the current paediatric formulary, not from AI.
        3. Dose in mg  = weight (kg) x dose (mg/kg)
        4. Read the strength on the bottle, for example "120 mg per 5 mL"
           or "250 mg per 5 mL".
        5. Volume in mL = dose in mg / strength in mg x 5
        6. Write the dose in mL for that exact bottle, and show the parent
           the measuring cup.</code></pre>
          <p>The same dose in mg means a very different volume in mL. A 250 mg per 5 mL syrup is about twice as strong as a 120 mg per 5 mL syrup. So the right volume is about half. A mix-up can double the dose. Ask a colleague to check your working. Avoid ibuprofen and aspirin when dengue is possible, as the national dengue guideline advises.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: a prescribing check, step by step</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Dr Joshi asks">In the clinic's approved AI tool, with no identifiers: "Man, 56, type 2 diabetes, hypertension, eGFR 47, potassium 4.9. Medicines: metformin, glimepiride, telmisartan, atorvastatin, and diclofenac bought from a chemist. List interactions and kidney issues to check. No doses."</li>
              <li data-kind="answer" data-label="AI replies">It flags diclofenac with telmisartan and reduced kidney function, metformin near the eGFR 45 threshold, and low-sugar risk from glimepiride.</li>
              <li data-kind="warn" data-label="Catch this">It also says "metformin must be stopped below eGFR 60". That is wrong. The label threshold for stopping is 30.</li>
              <li data-kind="tool" data-label="He checks">He runs the full list through the subscribed interaction checker and opens the metformin label and the current formulary.</li>
              <li data-kind="result" data-label="The sources show">The NSAID and ARB warning is confirmed. Metformin can continue at eGFR 47, with closer kidney monitoring.</li>
              <li data-kind="check" data-label="He decides">He asks Mr Yadav to stop buying diclofenac and agrees a pain plan. He orders repeat kidney tests and potassium, and records his reasons.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI for a list of prescribing issues to check for a made-up patient. Then check each one in the formulary or label yourself.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a clinical pharmacist helping a doctor in India with a prescribing check. The patient is made up. Do not give doses or a final plan. The doctor will check everything in the current formulary and product labels.

        Patient: [woman, 79, two falls in 3 months, dizzy on standing. Lying BP 142/82, standing 116/74. eGFR 57, sodium 131, HbA1c 6.4%, finger-prick glucose 78 mg/dL.]
        Medicines: [amlodipine 10 mg once a day, hydrochlorothiazide 25 mg once a day, glimepiride 2 mg once a day, metformin 500 mg twice a day, alprazolam 0.25 mg at night for 2 years, pantoprazole 40 mg once a day for 3 years, cold syrup with chlorpheniramine, calcium with vitamin D, herbal "sugar powder" (contents unknown).]

        Make a table: Medicine | Possible problem for this patient | Why | Which source to check (for example Beers Criteria, formulary, label) | Question for the doctor.
        Then list:
        1. The 3 issues that may matter most for her falls, and why.
        2. Medicines that must not be stopped suddenly.
        3. Information that is missing.
        Say "not sure" when you are not sure. Name only sources that really exist.</pre>
            <ul class="ai-try-checks">
              <li>It links the standing BP drop, sedation and low sugar to her falls.</li>
              <li>It warns that alprazolam needs a slow taper, not a sudden stop.</li>
              <li>It flags the unknown herbal powder and the cold syrup.</li>
              <li>Each point you keep is confirmed in the current Beers Criteria, formulary or label.</li>
              <li>It gives no doses and no final plan.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Use AI to find the questions: which interactions, which patient factors, which medicines to review. Get the answers from official sources: the current formulary, the product label and a proper interaction checker. Always say the kidney function, pregnancy, weight and age, and check the product strength before you write a dose.
        </div>
      HTML
      starter_code: nil
    },
    8 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-health">Healthcare</div>
          <h1 class="lc-title">Interpreting Tests and Results</h1>
        </div>
        <p class="lc-lead">A test result only makes sense with the patient in front of you. The same "positive" can be very likely right in one patient and probably wrong in another. In this lesson you will learn to read lab ranges with care, and to use <strong>pre-test probability</strong>. You will also learn to avoid tests that will not change your plan. Finally, you will check AI explanations of results against the report and a trusted reference. All patients and numbers here are made up. This is education, not medical advice.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 310" role="img" aria-label="The same made-up test with 90 percent sensitivity and 90 percent specificity used in 1,000 patients in two settings. In an outbreak clinic where 40 percent have the disease, 360 of 420 positive results are true, so the positive predictive value is 86 percent. In a quiet season where 5 percent have it, only 45 of 140 positive results are true, so the positive predictive value is 32 percent.">
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="380" y="22" font-weight="700" fill="#c4b5fd">Same test, different patients: what a positive result means</text>
              <rect x="12" y="38" width="360" height="236" rx="12" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="192" y="62" font-weight="700" fill="#fcd34d">Outbreak clinic: 40% have it</text>
              <text x="192" y="84" font-size="11.5" fill="#9b99b8">1,000 patients: 400 have it, 600 do not</text>
              <text x="192" y="110">420 positive results</text>
              <rect x="42" y="120" width="257" height="22" fill="#10b981"/>
              <rect x="299" y="120" width="43" height="22" fill="#ef4444"/>
              <text x="192" y="162" font-size="11.5" fill="#9b99b8">360 true positive, 60 false positive</text>
              <text x="192" y="196" font-size="20" font-weight="700" fill="#6ee7b7">PPV 86%</text>
              <text x="192" y="220" font-size="11.5" fill="#9b99b8">a positive is right about 86 times in 100</text>
              <text x="192" y="252" font-size="12">NPV 93%: 540 of 580 negatives are right</text>
              <rect x="388" y="38" width="360" height="236" rx="12" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="568" y="62" font-weight="700" fill="#93c5fd">Quiet season: 5% have it</text>
              <text x="568" y="84" font-size="11.5" fill="#9b99b8">1,000 patients: 50 have it, 950 do not</text>
              <text x="568" y="110">140 positive results</text>
              <rect x="418" y="120" width="96" height="22" fill="#10b981"/>
              <rect x="514" y="120" width="204" height="22" fill="#ef4444"/>
              <text x="568" y="162" font-size="11.5" fill="#9b99b8">45 true positive, 95 false positive</text>
              <text x="568" y="196" font-size="20" font-weight="700" fill="#fca5a5">PPV 32%</text>
              <text x="568" y="220" font-size="11.5" fill="#9b99b8">a positive is right about 32 times in 100</text>
              <text x="568" y="252" font-size="12">NPV 99.4%: 855 of 860 negatives are right</text>
              <text x="380" y="298" font-size="11.5" fill="#9b99b8">Made-up "Test X": sensitivity 90%, specificity 90%. Green: true positives. Red: false positives.</text>
            </g>
          </svg>
          <figcaption>The test is the same. The patients are different. When the disease is rare, many positive results are false.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Reference ranges: read them with the patient in mind</h3>
          <p>A <strong>reference range</strong> (normal range) usually covers the middle 95% of healthy people tested by that lab. So some healthy people fall just outside it. Ranges also differ between labs, and by age, sex and pregnancy. Always use the range printed on the patient's own report.</p>
          <table class="lc-table">
            <thead><tr><th>Made-up result</th><th>Easy to miss</th><th>What to check</th></tr></thead>
            <tbody>
              <tr><td>Mr Ramesh Yadav: potassium 4.9 mmol/L</td><td>"Normal" at many labs, but near the top. He takes telmisartan and was taking diclofenac.</td><td>Repeat with kidney function after stopping diclofenac. Watch the trend.</td></tr>
              <tr><td>Mr Yadav: eGFR 47, urine ACR 68 mg/g</td><td>One result does not make a diagnosis. Chronic kidney disease (CKD) means changes lasting more than 3 months. His March eGFR is not in the file.</td><td>Repeat both tests. The ADA Standards note that urine albumin varies a lot. To confirm it, 2 of 3 samples over 3 to 6 months should be raised.</td></tr>
              <tr><td>Mrs Pooja Sharma, 22 weeks pregnant: Hb 10.6 g/dL</td><td>WHO's 2024 guideline uses different anaemia cut-offs for each trimester: below 10.5 g/dL in the second trimester, below 11.0 in the first and third. Many programmes used 11.0 for all of pregnancy.</td><td>When was the test done? Which cut-off does the national programme use? Is she taking her iron?</td></tr>
              <tr><td>Mrs Shanta Deshpande, 79: sodium 131 mmol/L</td><td>Mildly low. Easy to ignore, but it can add to confusion and falls.</td><td>Her medicines (hydrochlorothiazide), symptoms and trend.</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Pre-test probability: a worked example</h3>
          <p><strong>Pre-test probability</strong> is how likely the disease is before you test, based on the history, examination and local pattern. Four terms help here:</p>
          <ul class="lc-list">
            <li><strong>Sensitivity:</strong> of people who have the disease, the share who test positive.</li>
            <li><strong>Specificity:</strong> of people who do not have it, the share who test negative.</li>
            <li><strong>PPV (positive predictive value):</strong> of people who test positive, the share who really have it.</li>
            <li><strong>NPV (negative predictive value):</strong> of people who test negative, the share who really do not have it.</li>
          </ul>
          <p>Sensitivity and specificity belong to the test. PPV and NPV also depend on <strong>prevalence</strong>: how common the disease is in the people you test. Here is a made-up "Test X" with sensitivity 90% and specificity 90%, used in 1,000 patients.</p>
          <table class="lc-table">
            <thead><tr><th>Setting (made up)</th><th>Have it</th><th>True +</th><th>False +</th><th>False −</th><th>True −</th><th>PPV</th><th>NPV</th></tr></thead>
            <tbody>
              <tr><td>Outbreak clinic, 40%</td><td>400</td><td>360</td><td>60</td><td>40</td><td>540</td><td>360 ÷ 420 = 86%</td><td>540 ÷ 580 = 93%</td></tr>
              <tr><td>Quiet season, 5%</td><td>50</td><td>45</td><td>95</td><td>5</td><td>855</td><td>45 ÷ 140 = 32%</td><td>855 ÷ 860 = 99.4%</td></tr>
            </tbody>
          </table>
          <pre><code>How to fill the table (outbreak clinic, 1,000 patients):
        Have it     = 1,000 × 40%   = 400      Do not = 600
        True +      = 400 × 90%     = 360      (sensitivity)
        False −     = 400 − 360     = 40
        True −      = 600 × 90%     = 540      (specificity)
        False +     = 600 − 540     = 60
        PPV         = 360 ÷ (360 + 60)  = 85.7%, about 86%
        NPV         = 540 ÷ (540 + 40)  = 93.1%, about 93%</code></pre>
          <p>In a spreadsheet, with prevalence in B1, sensitivity in B2 and specificity in B3 (as decimals), PPV is <code>=B2*B1/(B2*B1+(1-B3)*(1-B1))</code>. Always check any AI calculation with a table like this.</p>
          <p><strong>Dengue tests in practice.</strong> The Indian national dengue guideline 2023 suggests the NS1 antigen test in the first 5 days of illness. It suggests IgM after 5 days. IgM is usually negative before day 5. It counts a positive rapid test (RDT) only as "probable" dengue. It does not recommend RDTs to diagnose or guide management, because many are not properly validated. Check the current version.</p>
        </div>
        <div class="lc-card">
          <h3>Do not over-test, and check AI explanations</h3>
          <p>Before you order a test, ask: "Will the result change what I do?" Extra tests can find "abnormal" results in healthy people. Say you order 20 unrelated tests, and each has a 95% reference range. A healthy person then has about a 64% chance of at least one result outside the range (1 − 0.95<sup>20</sup> = 0.64). Each false alarm can lead to more tests, cost and worry.</p>
          <p>AI can explain a report in plain words, or list what a pattern might mean. But it may use a different reference range, mix up units (mg/dL and mmol/L) or miss the clinical picture.</p>
          <pre><code>Weak:   What does potassium 4.9 mean?

        Better: Made-up patient: man, 56, type 2 diabetes, on telmisartan,
        was taking diclofenac. eGFR 47 mL/min/1.73 m², urine ACR 68 mg/g,
        potassium 4.9 mmol/L (lab range 3.5 to 5.1). No earlier results.
        Explain what these results may mean together, what could make
        them change, and what a doctor would usually repeat and when to
        think about it. Use the lab range I gave. Say what is uncertain.
        Do not diagnose. Name sources only if you are sure they exist.</code></pre>
          <p>Then check the answer against the lab report, the units and a trusted reference.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: helpful test or not now?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Made-up patient Aarav, 3, has had fever for 2 days in dengue season. He has no warning signs today. Sort each test idea for today's visit.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="yes" data-label="Could help the plan now"></div>
              <div data-sorter-target="bucket" data-bucket="no" data-label="Unlikely to help now"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="yes" data-why="The national guideline suggests NS1 in the first 5 days of illness. An ELISA test from a lab is preferred to a rapid kit.">Dengue NS1 antigen test (ELISA)</li>
              <li data-bucket="yes" data-why="The guideline says to monitor haematocrit and platelets. A baseline helps later comparison.">Full blood count with platelets and haematocrit</li>
              <li data-bucket="no" data-why="IgM is usually negative before day 5. A negative today would not rule out dengue.">Dengue IgM antibody test today</li>
              <li data-bucket="no" data-why="Many unrelated tests raise the chance of a false alarm and do not change today's plan.">A large panel of 20 blood tests "just in case"</li>
              <li data-bucket="no" data-why="His breathing rate is 28, oxygen is 98% and there is no chest sign. Examine first; an X-ray is not needed now.">Chest X-ray with normal breathing and oxygen</li>
              <li data-bucket="no" data-why="The programme does not recommend rapid kits to diagnose dengue. A positive counts only as probable.">A rapid dengue card test to decide the diagnosis</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to explain a set of made-up results with the ranges from the report. Make it show its working and its uncertainty.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a clinical teacher helping a doctor in India interpret test results. The patient is made up. Do not diagnose and do not give doses.

        Patient: [woman, 79, two falls in 3 months, dizzy on standing. Takes hydrochlorothiazide, amlodipine, glimepiride, metformin and alprazolam.]
        Results with the lab's own ranges: [sodium 131 mmol/L (135 to 145); potassium 3.6 mmol/L (3.5 to 5.1); creatinine 1.0 mg/dL; eGFR 57 mL/min/1.73 m²; HbA1c 6.4%; finger-prick glucose 78 mg/dL at 11 am.]

        Please give:
        1. A table: Result | Inside or outside the given range | What it may mean for this patient | Could a medicine explain it?
        2. Which results matter most for her falls, and why.
        3. What should be repeated or added, and what each test would change. Mark any test that would probably not change the plan.
        4. Two ways your explanation could be wrong (for example units, ranges or missing history).
        Use only the ranges I gave. Say "not sure" when you are not sure.</pre>
            <ul class="ai-try-checks">
              <li>It uses the ranges you gave, and the units match the report.</li>
              <li>It links low sodium to the thiazide and low sugar risk to glimepiride.</li>
              <li>It notes that a single result is not a trend, and suggests repeats with a reason.</li>
              <li>It does not diagnose or give doses.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A result means little without the patient. Think about pre-test probability before you test. Order tests that will change your plan, and use the range on the patient's own report. When AI explains a result, check its numbers, units and ranges yourself.
        </div>
      HTML
      starter_code: nil
    },
    9 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-health">Healthcare</div>
          <h1 class="lc-title">Explaining Diagnoses and Plans to Patients</h1>
        </div>
        <p class="lc-lead">A good plan fails if the patient does not understand it. Patients forget much of what they hear in a short visit, especially when they are worried. AI can help you draft clear explanations, leaflets and translations in Indian languages. In this lesson you will learn to use plain language, to check translations, and to share decisions with patients. You will also learn <strong>teach-back</strong>, a simple way to check that the patient understood. The explanation and the counselling still come from you. All patients here are made up. This is education, not medical advice.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="The teach-back loop. Step 1: explain simply, one idea at a time. Step 2: ask the patient to say it back. Step 3: listen and check what is missing. Step 4: explain again in a different way, then ask again. When the patient has understood, agree the plan and give a written leaflet in their language.">
            <defs><marker id="cp9a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker><marker id="cp9b" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#10b981"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="285" y="24" font-weight="700" fill="#c4b5fd">The teach-back loop</text>
              <rect x="20" y="46" width="240" height="66" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="140" y="74" font-weight="700" fill="#93c5fd">1 Explain simply</text>
              <text x="140" y="96" font-size="11" fill="#9b99b8">one idea at a time, no jargon</text>
              <rect x="310" y="46" width="240" height="66" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="430" y="74" font-weight="700" fill="#c4b5fd">2 Ask them to say it back</text>
              <text x="430" y="96" font-size="11" fill="#9b99b8">"What will you tell your family?"</text>
              <rect x="310" y="176" width="240" height="66" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="430" y="204" font-weight="700" fill="#fcd34d">3 Listen and check</text>
              <text x="430" y="226" font-size="11" fill="#9b99b8">what is missing or wrong?</text>
              <rect x="20" y="176" width="240" height="66" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="140" y="204" font-weight="700" fill="#f9a8d4">4 Explain again</text>
              <text x="140" y="226" font-size="11" fill="#9b99b8">a different way, then ask again</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#cp9a)">
                <line x1="262" y1="79" x2="306" y2="79"/>
                <line x1="430" y1="114" x2="430" y2="172"/>
                <line x1="308" y1="209" x2="264" y2="209"/>
                <line x1="140" y1="174" x2="140" y2="116"/>
              </g>
              <rect x="590" y="176" width="160" height="66" rx="10" fill="#27274e" stroke="#10b981" stroke-width="2"/>
              <text x="670" y="204" font-weight="700" fill="#6ee7b7">Understood</text>
              <text x="670" y="226" font-size="11" fill="#9b99b8">agree the plan</text>
              <rect x="590" y="46" width="160" height="66" rx="10" fill="#27274e" stroke="#10b981"/>
              <text x="670" y="74" font-weight="700" fill="#6ee7b7">Written leaflet</text>
              <text x="670" y="96" font-size="11" fill="#9b99b8">in their language</text>
              <line x1="552" y1="209" x2="586" y2="209" stroke="#10b981" stroke-width="1.5" marker-end="url(#cp9b)"/>
              <line x1="670" y1="174" x2="670" y2="116" stroke="#10b981" stroke-width="1.5" marker-end="url(#cp9b)"/>
              <text x="380" y="282" font-size="11.5" fill="#9b99b8">Teach-back checks how well you explained, not how clever the patient is.</text>
            </g>
          </svg>
          <figcaption>Explain, ask the patient to say it back, and explain again until the gaps are closed. Then agree the plan and give it in writing.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Plain language: what patients actually hear</h3>
          <p>Medical words feel normal to you. To many patients they are noise. Use short sentences, everyday words, and the words the patient uses, such as "sugar" for diabetes. Give the two or three most important points, not ten.</p>
          <table class="lc-table">
            <thead><tr><th>Doctor's words</th><th>Plain words (example)</th></tr></thead>
            <tbody>
              <tr><td>Your eGFR is 47 mL/min/1.73 m²</td><td>Your kidneys are working at about half strength. We need to protect them.</td></tr>
              <tr><td>Avoid NSAIDs</td><td>Do not take painkillers like diclofenac or ibuprofen. They can harm your kidneys.</td></tr>
              <tr><td>Orthostatic hypotension</td><td>Your blood pressure drops when you stand up. That is why you feel dizzy.</td></tr>
              <tr><td>HbA1c 8.2%</td><td>This test shows your average sugar over about 3 months. It is higher than we want.</td></tr>
              <tr><td>We will taper the alprazolam</td><td>We will lower the sleeping tablet slowly, over weeks, not stop it suddenly.</td></tr>
            </tbody>
          </table>
          <pre><code>Weak:   Explain CKD to a patient.

        Better: Write a short explanation for a made-up patient: man, 56,
        shopkeeper, type 2 diabetes, eGFR 47, urine ACR 68 mg/g. He was
        buying diclofenac from a chemist for knee pain.
        Points to cover: kidneys are weaker than normal; diclofenac can
        harm them; stop buying it; we will repeat the tests.
        Use 6 short sentences a 12-year-old could follow. No medical words.
        No numbers except the ones I gave. Do not add advice I did not give.</code></pre>
          <p>Check the draft for facts and tone. Remove any new advice the AI added on its own.</p>
        </div>
        <div class="lc-card">
          <h3>Indian languages: draft with AI, check with a person</h3>
          <p>Many patients understand best in their own language. AI can draft in Hindi, Marathi, Tamil and other languages. But translations can go wrong in the places that matter most: numbers, doses, times, and the word "not". Always have a fluent speaker check a leaflet before patients get it.</p>
          <pre><code>Dr Joshi's draft for Mr Ramesh Yadav (made-up patient), in Hindi:

        यादव जी, आपकी किडनी अभी पूरी ताकत से काम नहीं कर रही है।
        घुटने के दर्द की जो गोली आप केमिस्ट से ले रहे हैं (डाइक्लोफेनाक),
        वह किडनी को और नुकसान पहुँचा सकती है।
        इसलिए यह गोली अब न लें।
        दर्द के लिए हम मिलकर दूसरा सुरक्षित तरीका चुनेंगे।
        खून और पेशाब की जाँच दोबारा होगी। तारीख़ मैं पर्ची पर लिख दूँगा।</code></pre>
          <p>Before using it, Dr Joshi checks three things:</p>
          <ul class="lc-list">
            <li><strong>Meaning:</strong> a fluent Hindi speaker at the clinic reads it and says it back in English. Does it still say "do not take"?</li>
            <li><strong>Words:</strong> are these the words his patients use at home? Simple spoken Hindi often works better than formal Hindi.</li>
            <li><strong>Facts:</strong> nothing was added or lost. The plan matches his note.</li>
          </ul>
          <p>For a patient who cannot read, give the same points by voice and show pictures. The clinic can keep checked leaflets in a folder, so they are not translated again each time.</p>
        </div>
        <div class="lc-card">
          <h3>Shared decisions and teach-back</h3>
          <p><strong>Shared decision making</strong> means you explain the options, the patient says what matters to them, and you decide together. It fits best when there is more than one reasonable choice. Made-up patient Mrs Shanta Deshpande, 79, has had two falls. She has taken alprazolam at night for 2 years.</p>
          <table class="lc-table">
            <thead><tr><th>Option</th><th>Possible benefits</th><th>Possible downsides</th></tr></thead>
            <tbody>
              <tr><td>Continue as now</td><td>No change to her sleep routine</td><td>Sleeping tablets raise the risk of falls and confusion in older people</td></tr>
              <tr><td>Slow, planned reduction with sleep habits</td><td>May lower fall risk; fewer tablets</td><td>Sleep may be worse for a while; needs follow-up visits</td></tr>
            </tbody>
          </table>
          <p>Ask her: "What matters most to you: your sleep, not falling, or fewer tablets?" Her son is there to help. But if she can make the decision, it is hers. AI can draft the options table and a leaflet. It must not add made-up numbers for benefits or risks. If you do not have real figures from a trusted source, describe the risks in words.</p>
          <p><strong>Teach-back</strong> means asking the patient to explain the plan in their own words. Make it about you, not a test of them:</p>
          <pre><code>"I have told you a lot. To be sure I explained it well,
        can you tell me what you will do at home, and when you
        will bring Aarav back?"</code></pre>
          <p>If a point is missing or wrong, explain it again in a different way. Then ask again.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: teach-back with Aarav's mother</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Made-up patient Aarav, 3, has fever in dengue season and no warning signs today. Put Dr Joshi's steps in order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Ask what she already knows and what worries her most</li>
              <li data-order="2">Explain the plan in plain Hindi: fluids, the correct paracetamol dose in mL for her bottle, no ibuprofen</li>
              <li data-order="3">Explain the warning signs that mean "come back now", such as vomiting again and again, tummy pain, or bleeding</li>
              <li data-order="4">Ask her to say the plan and the warning signs back in her own words</li>
              <li data-order="5">Explain again any part she missed, in a different way, and ask again</li>
              <li data-order="6">Give a checked Hindi leaflet with the clinic number, 108 and 112, and write the review day</li>
              <li data-order="7">Note in the record that teach-back was done and that the leaflet was drafted with AI and checked</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to draft a plain-language explanation, a translation and teach-back questions for a made-up patient. Then check it as a doctor would.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are helping a doctor in India explain a plan to a patient. The patient is made up. Use only the facts below. Do not add new medical advice, doses or numbers.

        Patient: [woman, 79, two falls in 3 months. Her blood pressure drops when she stands. She takes a sleeping tablet (alprazolam) every night for 2 years. She lives with her son.]
        Plan the doctor has agreed with her: [reduce the sleeping tablet slowly over the coming weeks, not suddenly; stand up slowly; use her walking stick at home; bring all medicines and the herbal powder to the next visit; come back sooner if she falls or feels confused.]
        Language: [Hindi]

        Please give:
        1. A short explanation in English: 6 to 8 sentences, simple words.
        2. The same explanation in [Hindi], in simple spoken style.
        3. Three teach-back questions the doctor can ask her.
        4. A list of words or sentences a fluent speaker should check most carefully (for example "not", numbers, times).</pre>
            <ul class="ai-try-checks">
              <li>It keeps only the agreed plan and adds no doses or new advice.</li>
              <li>It says clearly not to stop the sleeping tablet suddenly.</li>
              <li>The teach-back questions ask her to explain, not to answer yes or no.</li>
              <li>A fluent speaker checks the translation before any patient sees it.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> AI can draft clear words and translations fast. You check the facts, a fluent speaker checks the language, and you give the explanation yourself. Share the decision when there are real options, and use teach-back to make sure the plan was understood.
        </div>
      HTML
      starter_code: nil
    },
    10 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-health">Healthcare</div>
          <h1 class="lc-title">Chronic Disease Follow-Up with AI Help</h1>
        </div>
        <p class="lc-lead">Diabetes and high blood pressure need years of regular reviews. In a busy OPD it is easy to miss an eye check, a kidney test or a rising blood pressure. AI can help you build a review checklist, pull targets from a guideline you give it, and draft reminders. In this lesson you will build a follow-up review for a made-up patient. You will use targets from a current guideline, checked in the original. You will also set up simple reminders. This is education, not medical advice.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="A review card for a made-up patient with diabetes and hypertension. Above goal: HbA1c 8.2 percent against a goal below 7 percent for many adults, and blood pressure 145 over 89 against a goal below 130 over 80. Check again: eGFR 47 and urine ACR 68, and potassium 4.9. Missing: lipid profile, eye check and foot check. Medicines need review. Next due: kidney tests 5 October 2026 and HbA1c 14 December 2026.">
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="380" y="22" font-weight="700" fill="#c4b5fd">Review card: Mr Ramesh Yadav (made up), September 2026</text>
              <rect x="12" y="38" width="172" height="86" rx="10" fill="#1f1f44" stroke="#ef4444" stroke-width="2"/>
              <text x="98" y="58" font-size="11" fill="#9b99b8">HbA1c</text>
              <text x="98" y="86" font-size="20" font-weight="700">8.2%</text>
              <text x="98" y="110" font-size="11" fill="#fca5a5">goal &lt;7% for many</text>
              <rect x="196" y="38" width="172" height="86" rx="10" fill="#1f1f44" stroke="#ef4444" stroke-width="2"/>
              <text x="282" y="58" font-size="11" fill="#9b99b8">Blood pressure (average)</text>
              <text x="282" y="86" font-size="20" font-weight="700">145/89</text>
              <text x="282" y="110" font-size="11" fill="#fca5a5">goal &lt;130/80 if safe</text>
              <rect x="380" y="38" width="172" height="86" rx="10" fill="#1f1f44" stroke="#f59e0b" stroke-width="2"/>
              <text x="466" y="58" font-size="11" fill="#9b99b8">eGFR / urine ACR</text>
              <text x="466" y="86" font-size="20" font-weight="700">47 / 68</text>
              <text x="466" y="110" font-size="11" fill="#fcd34d">repeat to confirm</text>
              <rect x="564" y="38" width="172" height="86" rx="10" fill="#1f1f44" stroke="#f59e0b" stroke-width="2"/>
              <text x="650" y="58" font-size="11" fill="#9b99b8">Potassium</text>
              <text x="650" y="86" font-size="20" font-weight="700">4.9</text>
              <text x="650" y="110" font-size="11" fill="#fcd34d">recheck: ARB, NSAID</text>
              <rect x="12" y="136" width="172" height="86" rx="10" fill="#1f1f44" stroke="#9b99b8" stroke-dasharray="5 4"/>
              <text x="98" y="156" font-size="11" fill="#9b99b8">LDL cholesterol</text>
              <text x="98" y="184" font-size="17" font-weight="700">not in file</text>
              <text x="98" y="208" font-size="11" fill="#9b99b8">order lipid profile</text>
              <rect x="196" y="136" width="172" height="86" rx="10" fill="#1f1f44" stroke="#9b99b8" stroke-dasharray="5 4"/>
              <text x="282" y="156" font-size="11" fill="#9b99b8">Eye check</text>
              <text x="282" y="184" font-size="17" font-weight="700">not recorded</text>
              <text x="282" y="208" font-size="11" fill="#9b99b8">refer for retina check</text>
              <rect x="380" y="136" width="172" height="86" rx="10" fill="#1f1f44" stroke="#9b99b8" stroke-dasharray="5 4"/>
              <text x="466" y="156" font-size="11" fill="#9b99b8">Foot check</text>
              <text x="466" y="184" font-size="17" font-weight="700">not recorded</text>
              <text x="466" y="208" font-size="11" fill="#9b99b8">at least once a year</text>
              <rect x="564" y="136" width="172" height="86" rx="10" fill="#1f1f44" stroke="#ef4444" stroke-width="2"/>
              <text x="650" y="156" font-size="11" fill="#9b99b8">Medicines</text>
              <text x="650" y="184" font-size="17" font-weight="700">review</text>
              <text x="650" y="208" font-size="11" fill="#fca5a5">diclofenac, low sugar?</text>
              <rect x="12" y="236" width="724" height="46" rx="10" fill="#27274e" stroke="#10b981"/>
              <text x="374" y="264" font-size="12.5">Next due: kidney tests and potassium 5 Oct 2026 · HbA1c 14 Dec 2026 · eyes and feet: book now</text>
            </g>
          </svg>
          <figcaption>A one-page review card shows what is above goal (red), what needs checking again (amber) and what is missing (dashed). Every goal comes from a guideline checked in the original.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>A review list with targets from a checked guideline</h3>
          <p>Made-up patient Mr Ramesh Yadav, 56, has type 2 diabetes for 8 years and hypertension for 5 years. Dr Joshi opens the <strong>current ADA Standards of Care in Diabetes</strong> (American Diabetes Association) and notes which section each goal comes from. He also checks Indian sources, such as the ICMR Standard Treatment Workflows and the NP-NCD programme guidance. Goals are set for each patient, not copied blindly.</p>
          <table class="lc-table">
            <thead><tr><th>Review item</th><th>The current ADA Standards of Care say (summary)</th><th>Mr Yadav now</th></tr></thead>
            <tbody>
              <tr><td>HbA1c</td><td>Goal below 7% for many non-pregnant adults. Less strict goals for frailty or high low-sugar risk. Test at least twice a year, or about every 3 months if not at goal or after a change.</td><td>8.2%, above goal</td></tr>
              <tr><td>Blood pressure</td><td>With CKD: below 130/80 if it can be reached safely. A systolic goal below 120 should be encouraged.</td><td>146/90, then 144/88</td></tr>
              <tr><td>Kidneys</td><td>Urine ACR and eGFR at least once a year in type 2 diabetes. With CKD, 1 to 4 times a year by stage.</td><td>eGFR 47, ACR 68: repeat to confirm</td></tr>
              <tr><td>ACE inhibitor or ARB</td><td>Recommended with ACR 30 to 299 mg/g, up to the highest dose tolerated. Check eGFR and potassium.</td><td>On telmisartan; potassium 4.9</td></tr>
              <tr><td>Kidney and heart protection</td><td>With type 2 diabetes and CKD: an SGLT2 inhibitor, started if eGFR is 20 or more. A GLP-1 receptor agonist with proven benefit is also recommended.</td><td>Discuss once CKD is confirmed</td></tr>
              <tr><td>Cholesterol</td><td>Age 40 to 75 at higher heart risk: a high-intensity statin, aiming for LDL below 70 mg/dL.</td><td>Atorvastatin 20 mg (moderate intensity in the ADA table); no lipid result in file</td></tr>
              <tr><td>Low sugar</td><td>Reduce or switch sulfonylureas in people at high risk of low sugar.</td><td>Glimepiride; ask about low-sugar episodes</td></tr>
              <tr><td>Eyes, feet, vitamin B12</td><td>Eye checks by an eye specialist. Foot check at least once a year. Consider B12 checks on long-term metformin.</td><td>None recorded</td></tr>
            </tbody>
          </table>
          <p>The ADA Standards are updated every year. Check the current version and your national guidance before you use any goal. Medicine choices need the current formulary and the doctor's judgement.</p>
        </div>
        <div class="lc-card">
          <h3>Where AI helps in follow-up</h3>
          <ul class="lc-list">
            <li><strong>Build a checklist</strong> from guideline text that you paste in. Do not rely on the AI's memory of the guideline, which may be an older version.</li>
            <li><strong>Show trends</strong> from de-identified results, for example HbA1c over two years in a small table.</li>
            <li><strong>Draft reminder messages</strong> and a patient goals card in plain language or Hindi.</li>
            <li><strong>Prepare the visit:</strong> a list of questions to ask, such as low-sugar symptoms and chemist purchases.</li>
          </ul>
          <pre><code>Weak:   What are the diabetes targets?

        Better: Below is text I copied from the ADA Standards of Care in
        Diabetes (current version), the sections on glucose goals, heart
        disease, kidney disease, and eyes and feet. [paste text]
        Using ONLY this text, make a follow-up checklist for a made-up
        man, 56, type 2 diabetes, hypertension, eGFR 47, urine ACR 68.
        Columns: Item | Goal or test | How often | Recommendation number.
        If the text does not cover something, write "not in the text".
        Do not add medicine doses.</code></pre>
          <p>Then compare each row with the original. AI tools can still mix up numbers or sections when they summarise.</p>
        </div>
        <div class="lc-card">
          <h3>Reminders: a simple recall register</h3>
          <p>A <strong>recall register</strong> is a list of patients with the date each check is due. Pinky, the receptionist, keeps one in a spreadsheet inside the clinic's own system. It uses a patient code, not the name, and it never goes into a public AI tool.</p>
          <table class="lc-table">
            <thead><tr><th>A: Code</th><th>B: Check</th><th>C: Last done</th><th>D: Months</th><th>E: Next due</th><th>F: Status</th></tr></thead>
            <tbody>
              <tr><td>NFC-0231</td><td>HbA1c</td><td>14-Sep-2026</td><td>3</td><td>14-Dec-2026</td><td>OK</td></tr>
              <tr><td>NFC-0231</td><td>Kidney tests and potassium</td><td>14-Sep-2026</td><td>set by doctor</td><td>05-Oct-2026</td><td>Due soon</td></tr>
              <tr><td>NFC-0231</td><td>Eye and foot checks</td><td>not recorded</td><td>12</td><td>now</td><td>Overdue</td></tr>
            </tbody>
          </table>
          <pre><code>E2 (next due):  =EDATE(C2, D2)
        F2 (status):    =IF(E2&lt;TODAY(), "Overdue", IF(E2-TODAY()&lt;=14, "Due soon", "OK"))</code></pre>
          <p>For the kidney tests, Dr Joshi chose a repeat in 2 weeks, after stopping diclofenac. So Pinky types the date he wrote. Reminder messages go only to patients who agreed to them. They should say "please book your check-up", not the diagnosis or results. India's DPDP Act 2023 applies to this personal data. This is general information, not legal advice.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: a follow-up review, step by step</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="tool" data-label="Before the visit">Pinky's recall register shows Mr Yadav (code NFC-0231) is due for kidney tests on 5 October. His eye and foot checks are overdue.</li>
              <li data-kind="user" data-label="Dr Joshi asks">He pastes the text from the current ADA Standards of Care and de-identified results into the clinic's approved AI tool. He asks for a review checklist using only that text.</li>
              <li data-kind="answer" data-label="AI replies">It makes a clear checklist. HbA1c and BP are above goal. It flags the missing lipid, eye and foot checks.</li>
              <li data-kind="warn" data-label="Catch this">The checklist says "HbA1c goal below 6.5% for all". The pasted text says below 7% for many adults, with lower or higher goals for some people.</li>
              <li data-kind="check" data-label="He checks">He corrects the row against the original section, and notes the recommendation numbers.</li>
              <li data-kind="result" data-label="Repeat tests">The repeat kidney tests come back. He compares them with September before any medicine change.</li>
              <li data-kind="check" data-label="He decides">He agrees goals with Mr Yadav, reviews the medicines, updates the register and records that AI helped draft the checklist.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to turn a made-up patient's results into a follow-up review card. Then check each goal in the current guideline.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are helping a family doctor in India prepare a chronic disease follow-up review. The patient is made up. Do not give medicine doses or choose treatment.

        Patient: [man, 56, type 2 diabetes 8 years, hypertension 5 years. BP 146/90 and 144/88. HbA1c 8.2%. eGFR 47 mL/min/1.73 m². Urine ACR 68 mg/g. Potassium 4.9. No lipid result on file. No eye or foot check recorded. Takes metformin, glimepiride, telmisartan and atorvastatin. Was buying diclofenac for knee pain.]
        Guideline to use: [ADA Standards of Care in Diabetes, the latest version you know. Tell me the year.]

        Please give:
        1. A review table: Item | Current value | Goal or test | How often | Guideline section or recommendation number | Status (Above goal / Check again / Missing).
        2. The 3 most important gaps to act on.
        3. Questions to ask the patient at the visit.
        4. A reminder schedule for the next 12 months, as a list of months.
        Mark anything you are not sure of with "check". Tell me which parts may have changed in newer versions.</pre>
            <ul class="ai-try-checks">
              <li>Each goal matches the current ADA Standards when you open them, for example HbA1c below 7% for many adults.</li>
              <li>It says the kidney results need repeating before calling this chronic kidney disease.</li>
              <li>It flags the missing lipid, eye and foot checks.</li>
              <li>It gives no doses and does not choose medicines for you.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Follow-up care fails through small misses. Use AI to build checklists from guideline text you paste in, and to draft reminders. Check every goal in the current original. Keep the recall register inside the clinic, and set goals with each patient.
        </div>
      HTML
      starter_code: nil
    },
    11 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-health">Healthcare</div>
          <h1 class="lc-title">Emergencies and Time-Critical Care</h1>
        </div>
        <p class="lc-lead">In an emergency, minutes decide the outcome. Typing symptoms into an AI tool wastes those minutes, and the answer may be wrong. In this lesson you will learn why AI must never delay action. You will follow a made-up patient with chest pain from the clinic door to the ambulance. You will also see where AI does help: before an emergency, when you prepare checklists and drills, and after it, when you write letters and review what happened. This is education, not medical advice. Follow your own protocols.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="A timeline for a made-up patient with chest pain. 11:10 he arrives with red flags. 11:13 the doctor calls 108 and warns the emergency department. 11:17 a 12-lead ECG is recorded and read. 11:18 protocol steps start. 11:36 he is handed over to the ambulance team. A red band says no AI in these minutes. Below, AI helps before an emergency with checklists and drills, and after handover with the referral letter, which the doctor checks and signs.">
            <defs><marker id="cp11a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12.5" fill="#e2e0f0" text-anchor="middle">
              <text x="380" y="22" font-size="14" font-weight="700" fill="#c4b5fd">Made-up patient with chest pain: act first</text>
              <rect x="20" y="34" width="720" height="28" rx="8" fill="#1f1f44" stroke="#ef4444" stroke-dasharray="6 4"/>
              <text x="380" y="53" fill="#fca5a5">No AI in these minutes: follow the protocol and move the patient</text>
              <rect x="20" y="74" width="130" height="104" rx="10" fill="#27274e" stroke="#ef4444"/>
              <text x="85" y="97" font-weight="700" fill="#fca5a5">11:10</text>
              <text x="85" y="120">Arrives</text>
              <text x="85" y="140">red flags:</text>
              <text x="85" y="160">pain, sweat, arm</text>
              <rect x="170" y="74" width="130" height="104" rx="10" fill="#27274e" stroke="#f59e0b"/>
              <text x="235" y="97" font-weight="700" fill="#fcd34d">11:13</text>
              <text x="235" y="120">Call 108 / 112</text>
              <text x="235" y="140">warn the</text>
              <text x="235" y="160">emergency dept</text>
              <rect x="320" y="74" width="130" height="104" rx="10" fill="#27274e" stroke="#3b82f6"/>
              <text x="385" y="97" font-weight="700" fill="#93c5fd">11:17</text>
              <text x="385" y="120">12-lead ECG</text>
              <text x="385" y="140">read by doctor</text>
              <text x="385" y="160">(goal: 10 min)</text>
              <rect x="470" y="74" width="130" height="104" rx="10" fill="#27274e" stroke="#8b5cf6"/>
              <text x="535" y="97" font-weight="700" fill="#c4b5fd">11:18</text>
              <text x="535" y="120">Protocol steps</text>
              <text x="535" y="140">aspirin if safe</text>
              <text x="535" y="160">watch closely</text>
              <rect x="620" y="74" width="120" height="104" rx="10" fill="#27274e" stroke="#10b981"/>
              <text x="680" y="97" font-weight="700" fill="#6ee7b7">11:36</text>
              <text x="680" y="120">Handover</text>
              <text x="680" y="140">to 108 team</text>
              <text x="680" y="160">with ECG copy</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#cp11a)">
                <line x1="151" y1="126" x2="166" y2="126"/>
                <line x1="301" y1="126" x2="316" y2="126"/>
                <line x1="451" y1="126" x2="466" y2="126"/>
                <line x1="601" y1="126" x2="616" y2="126"/>
                <line x1="680" y1="180" x2="680" y2="210"/>
              </g>
              <rect x="20" y="214" width="340" height="74" rx="10" fill="#1f1f44" stroke="#10b981" stroke-dasharray="5 4"/>
              <text x="190" y="238" font-weight="700" fill="#6ee7b7">Before any emergency</text>
              <text x="190" y="259">AI helps draft checklists and drills</text>
              <text x="190" y="278" fill="#9b99b8">checked against the real protocol</text>
              <rect x="400" y="214" width="340" height="74" rx="10" fill="#1f1f44" stroke="#3b82f6" stroke-dasharray="5 4"/>
              <text x="570" y="238" font-weight="700" fill="#93c5fd">After handover</text>
              <text x="570" y="259">AI drafts the referral letter</text>
              <text x="570" y="278" fill="#9b99b8">the doctor checks and signs it</text>
            </g>
          </svg>
          <figcaption>During the emergency, the protocol and the people act. AI helps only before (preparing) and after (paperwork and review).</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Why AI must not delay action</h3>
          <p>Made-up patient Mr Rohan Tiwari, 34, walks into Nirmal Family Clinic, at 11:10 am. He has had central chest pressure for 40 minutes. It spreads to his left arm, and he is sweating. He smokes 10 cigarettes a day. His father had a heart attack at 48. His BP is 150/94 and his pulse is 104/min.</p>
          <p>These are <strong>red flags</strong> (signs of a possibly life-threatening problem). Pinky, the receptionist, has been trained to call Dr Arvind Joshi at once. She does not ask Rohan to wait his turn.</p>
          <ul class="lc-list">
            <li><strong>Time is heart muscle.</strong> In a heart attack, treatment to open the blocked artery works best when it starts early.</li>
            <li><strong>Young age does not rule it out.</strong> "He is only 34" is a thought to catch, not a reason to wait.</li>
            <li><strong>AI adds delay and doubt.</strong> Typing, reading and judging an answer takes minutes. The answer may reassure you wrongly.</li>
            <li><strong>Machine ECG readings are hints.</strong> Many ECG machines print an automatic reading. The doctor reads the ECG. A "normal" printout does not rule out a heart attack.</li>
            <li><strong>Other dangerous causes</strong> (for example aortic dissection, pulmonary embolism or pneumothorax) are for the emergency team to assess. The clinic's job is to recognise danger and move fast.</li>
          </ul>
          <p>The 2021 AHA/ACC chest pain guideline says to record and read a 12-lead ECG (electrocardiogram) within 10 minutes of arrival. If an office cannot do this, it advises transfer to the emergency department by ambulance. India's ICMR Standard Treatment Workflow for STEMI (ST-elevation myocardial infarction: a heart attack with a completely blocked artery) also aims for an ECG within 10 minutes. Check the current versions.</p>
        </div>
        <div class="lc-card">
          <h3>Protocol first: what Dr Joshi does, minute by minute</h3>
          <p>Nirmal Family Clinic has a one-page chest pain protocol on the wall and a 12-lead ECG machine. Dr Joshi follows the protocol. The times below are made up.</p>
          <table class="lc-table">
            <thead><tr><th>Time</th><th>Minutes after arrival</th><th>Action</th></tr></thead>
            <tbody>
              <tr><td>10:30</td><td>(pain started 40 minutes before arrival)</td><td>Rohan feels chest pressure at his shop.</td></tr>
              <tr><td>11:10</td><td>0</td><td>Arrives. Pinky sees sweating and chest pain, and calls Dr Joshi at once.</td></tr>
              <tr><td>11:13</td><td>3</td><td>Dr Joshi calls 108 (or 112) for an ambulance. He tells Rohan not to drive or take an auto-rickshaw.</td></tr>
              <tr><td>11:17</td><td>7</td><td>12-lead ECG recorded and read by Dr Joshi. It shows ST elevation (made-up finding). He phones the receiving emergency department to warn them.</td></tr>
              <tr><td>11:18</td><td>8</td><td>Protocol steps: chewable aspirin if safe (see below), rest, repeat vital signs, keep him in view.</td></tr>
              <tr><td>11:31</td><td>21</td><td>Ambulance arrives.</td></tr>
              <tr><td>11:36</td><td>26</td><td>Handover to the ambulance team with the ECG copy and a short written note. He goes to the nearest hospital that can treat heart attacks.</td></tr>
            </tbody>
          </table>
          <p><strong>Aspirin:</strong> for a suspected heart attack, protocols give chewable aspirin if it is safe. Do not give it if there is an allergy or active bleeding. Do not give it if aortic dissection is suspected (for example, tearing pain going through to the back). The ICMR STEMI workflow lists a loading dose; check the current version for the exact dose. The 2025 ACC/AHA acute coronary syndrome guideline gives 162 to 325 mg, chewed. Follow your clinic protocol and check the current formulary.</p>
          <p><strong>Where to send:</strong> the ICMR workflow prefers quick angioplasty (PCI: opening the artery with a balloon and stent). Where that is not quickly possible, it advises clot-dissolving medicine (thrombolysis). So the best destination is the nearest suitable hospital, not the hospital you know best. Keep a list of nearby emergency departments, with phone numbers, next to the protocol.</p>
        </div>
        <div class="lc-card">
          <h3>Other time-critical problems, and where AI fits</h3>
          <table class="lc-table">
            <thead><tr><th>Situation (made-up examples)</th><th>Act first</th><th>AI's place</th></tr></thead>
            <tbody>
              <tr><td>Chest pain with red flags</td><td>ECG, 108 / 112, protocol, transfer</td><td>After: draft the referral letter from your notes</td></tr>
              <tr><td>Stroke signs: face drooping, arm weakness, slurred speech</td><td>Note the time the signs started. Call 108 / 112. Send to a hospital that treats stroke.</td><td>Before: a wall chart of stroke signs for staff</td></tr>
              <tr><td>Severe allergic reaction (anaphylaxis)</td><td>Intramuscular adrenaline is the first treatment. Use your clinic's dose chart. Call for help.</td><td>Before: a monthly check list for the emergency tray</td></tr>
              <tr><td>Child with fever in dengue season, now with warning signs</td><td>Refer to hospital at once. The national dengue guidelines list the warning signs. Examples are abdominal pain and tenderness, persistent vomiting, bleeding from the gums or nose, and lethargy or restlessness.</td><td>Before: a safety-net leaflet for parents, checked against the guideline</td></tr>
              <tr><td>Pregnant woman with a urine infection who develops fever, loin pain or vomiting</td><td>Same-day review, as the clinic protocol says</td><td>Before: a warning-sign card in Hindi, checked by a fluent speaker</td></tr>
            </tbody>
          </table>
          <p>For made-up patient Master Aarav Jain, 3 years old with fever, Dr Joshi gave his mother a printed warning-sign card. AI helped draft the card weeks earlier. Dr Joshi checked it against the national dengue guidelines before printing.</p>
          <pre><code>After the event (clinic's approved tool, no identifiers):
        "Draft a referral letter from this checklist. Use only the facts
        below. Do not add a diagnosis or any medicine I did not list.
        Man, 34. Central chest pressure 40 min, to left arm, sweating.
        BP 150/94, pulse 104. ECG at 7 min: ST elevation (copy sent).
        Aspirin given as per clinic protocol at 11:18. 108 called 11:13.
        Leave blanks for anything missing."</code></pre>
          <p>Dr Joshi reads the draft, fills the blanks and signs it. He records that AI helped with the letter.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: now, later or never?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">A made-up patient with chest pain red flags is in your clinic. Sort each action.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="now" data-label="Do now (no AI)"></div>
              <div data-sorter-target="bucket" data-bucket="later" data-label="Later: AI can help"></div>
              <div data-sorter-target="bucket" data-bucket="never" data-label="Never do this"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="now" data-why="Calling for an ambulance early saves time. The ambulance team can treat problems on the way.">Call 108 or 112 for an ambulance</li>
              <li data-bucket="now" data-why="The goal is an ECG recorded and read within 10 minutes of arrival.">Record and read a 12-lead ECG</li>
              <li data-bucket="now" data-why="Protocol steps are planned in advance so nobody has to look them up.">Give aspirin as the protocol says, if it is safe</li>
              <li data-bucket="later" data-why="After handover, AI can draft the letter from your notes. You check and sign it.">Draft the referral letter from your checklist</li>
              <li data-bucket="later" data-why="A de-identified review helps the team learn. It is not urgent in the moment.">Review the timings with the team next day</li>
              <li data-bucket="never" data-why="This wastes minutes, and a reassuring answer may be wrong.">Type the symptoms into a chatbot to ask if it is serious</li>
              <li data-bucket="never" data-why="A patient with a possible heart attack must travel by ambulance, not drive himself.">Ask him to drive himself to the hospital</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Use AI before an emergency: turn your clinic's protocol into a clear wall checklist. Then check every line against the original protocol.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are helping a small clinic in India prepare for emergencies. This is preparation work, not a live emergency.

        Clinic: [a family clinic in Madhya Pradesh with one doctor, one receptionist, a 12-lead ECG machine and an emergency tray].
        Emergency: [suspected heart attack: chest pain with sweating, spread to the arm or jaw, or breathlessness].
        Our protocol text: [paste your clinic's approved protocol here. If none is pasted, make a clearly labelled "EXAMPLE ONLY" draft].

        Make a one-page wall checklist:
        1. Who does what, minute by minute, for the doctor and the receptionist.
        2. When to call 108 / 112, and what to say on the phone.
        3. The ECG goal (within 10 minutes of arrival).
        4. A blank line for our nearest suitable hospitals and phone numbers.
        5. What to hand over to the ambulance team.

        Rules:
        - Do not add any medicine or dose that is not in our protocol text. Write "[check protocol]" instead.
        - Use short lines that can be read in 5 seconds.
        - At the end, list what a doctor must check before printing.</pre>
            <ul class="ai-try-checks">
              <li>Calling 108 / 112 and the ECG come first, not at the end.</li>
              <li>No medicine or dose appears unless it was in your protocol text.</li>
              <li>It leaves blanks for local hospitals and phone numbers instead of inventing them.</li>
              <li>A doctor checks every line against the approved protocol before printing.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> In an emergency, act first: recognise red flags, call 108 or 112, follow the protocol and move the patient. AI belongs before the emergency (checklists and drills) and after it (letters and review), never in the minutes that matter.
        </div>
      HTML
      starter_code: nil
    },
    12 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-health">Healthcare</div>
          <h1 class="lc-title">Staying Up to Date</h1>
        </div>
        <p class="lc-lead">New papers, guideline updates and drug safety alerts come out every week. No doctor can read them all. AI can help you sort and summarise them, so you spend your reading time on what matters. But AI summaries can get numbers wrong, and AI can invent references that look real. In this lesson you will build a simple system for keeping up. You will learn to read the numbers in a summary, and to check every reference before you trust it. All studies in this lesson are made up for teaching.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 290" role="img" aria-label="A four-stage flow. Collect: PubMed alerts, guideline pages, drug safety alerts and CME. Sort and summarise with AI: PICO, absolute numbers and limits. Check: open the paper, check the numbers, check for retraction. Use: change practice only after the check, and note what changed. A red side box says a reference you cannot find is treated as invented.">
            <defs><marker id="cp12a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12.5" fill="#e2e0f0" text-anchor="middle">
              <text x="380" y="24" font-size="14" font-weight="700" fill="#c4b5fd">A weekly system for new evidence</text>
              <rect x="20" y="42" width="165" height="150" rx="12" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="102" y="68" font-weight="700" fill="#93c5fd">1. Collect</text>
              <text x="102" y="96">PubMed alerts</text>
              <text x="102" y="118">guideline pages</text>
              <text x="102" y="140">drug safety alerts</text>
              <text x="102" y="162">CME sessions</text>
              <rect x="205" y="42" width="165" height="150" rx="12" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="287" y="68" font-weight="700" fill="#c4b5fd">2. Sort with AI</text>
              <text x="287" y="96">PICO of each paper</text>
              <text x="287" y="118">absolute numbers</text>
              <text x="287" y="140">limits, who was</text>
              <text x="287" y="162">studied</text>
              <rect x="390" y="42" width="165" height="150" rx="12" fill="#27274e" stroke="#f59e0b" stroke-width="2"/>
              <text x="472" y="68" font-weight="700" fill="#fcd34d">3. Check</text>
              <text x="472" y="96">open the paper</text>
              <text x="472" y="118">recheck numbers</text>
              <text x="472" y="140">retracted?</text>
              <text x="472" y="162">peer reviewed?</text>
              <rect x="575" y="42" width="165" height="150" rx="12" fill="#1f1f44" stroke="#10b981"/>
              <text x="657" y="68" font-weight="700" fill="#6ee7b7">4. Use</text>
              <text x="657" y="96">discuss with team</text>
              <text x="657" y="118">change practice</text>
              <text x="657" y="140">only if it fits</text>
              <text x="657" y="162">note the change</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#cp12a)">
                <line x1="186" y1="117" x2="201" y2="117"/>
                <line x1="371" y1="117" x2="386" y2="117"/>
                <line x1="556" y1="117" x2="571" y2="117"/>
                <line x1="472" y1="194" x2="472" y2="220"/>
              </g>
              <rect x="210" y="224" width="525" height="52" rx="10" fill="#1f1f44" stroke="#ef4444" stroke-dasharray="6 4"/>
              <text x="472" y="246" fill="#fca5a5">Cannot find the reference in PubMed or the journal?</text>
              <text x="472" y="266" fill="#fca5a5">Treat it as invented. Do not use it.</text>
            </g>
          </svg>
          <figcaption>AI speeds up sorting and summarising. The check step, done by you, decides what reaches your patients.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Build a simple system to keep up</h3>
          <p>Dr Sameer Kale, physician at Tarang Multispeciality Hospital, spends one hour each Saturday on new evidence. He does not try to read everything. He collects from a few trusted places and lets AI help him sort.</p>
          <table class="lc-table">
            <thead><tr><th>Source</th><th>How he uses it</th></tr></thead>
            <tbody>
              <tr><td><strong>PubMed alerts</strong></td><td>He saved searches such as "type 2 diabetes AND chronic kidney disease" in a free My NCBI account. PubMed emails new results weekly.</td></tr>
              <tr><td><strong>Guideline pages</strong></td><td>He checks the update pages of ICMR Standard Treatment Workflows, national programmes, ADA, KDIGO and NICE for the topics he treats.</td></tr>
              <tr><td><strong>Drug safety alerts</strong></td><td>He reads CDSCO and Pharmacovigilance Programme of India (PvPI) notices, and the hospital pharmacy bulletin.</td></tr>
              <tr><td><strong>Cochrane Library</strong></td><td>Systematic reviews (studies that combine all good trials on one question) for bigger questions.</td></tr>
              <tr><td><strong>CME</strong> (continuing medical education)</td><td>Hospital talks and society meetings. Some state medical councils ask for CME credit points to renew registration. The Maharashtra Medical Council, for example, asks for points over each five-year renewal period. Check your council's current rules.</td></tr>
            </tbody>
          </table>
          <p>Each week he collects the new titles and abstracts (short summaries at the top of a paper). He pastes them into the hospital's approved AI tool. He asks it to sort them: "may change my practice", "interesting" or "not relevant". Papers are not patient data, but he still uses only approved tools. He reads the full text of anything in the first group.</p>
        </div>
        <div class="lc-card">
          <h3>Read the numbers, not the headline</h3>
          <p>Here is a made-up trial. <strong>Study A (made-up)</strong> tested a new medicine to prevent kidney failure in 1,000 adults with diabetic kidney disease. 500 got the medicine and 500 got a placebo (dummy tablet). After 3 years, 45 people on the medicine and 60 on placebo reached the outcome.</p>
          <table class="lc-table">
            <thead><tr><th>Measure</th><th>What it means</th><th>Study A (made-up)</th></tr></thead>
            <tbody>
              <tr><td>Risk in each group</td><td>People with the outcome divided by people in the group</td><td>Medicine 45 / 500 = 9%. Placebo 60 / 500 = 12%.</td></tr>
              <tr><td>Relative risk (RR)</td><td>Risk with medicine divided by risk with placebo</td><td>9% / 12% = 0.75</td></tr>
              <tr><td>Relative risk reduction (RRR)</td><td>1 minus RR</td><td>25% ("cuts the risk by a quarter")</td></tr>
              <tr><td>Absolute risk reduction (ARR)</td><td>Risk with placebo minus risk with medicine</td><td>12% minus 9% = 3 percentage points</td></tr>
              <tr><td>Number needed to treat (NNT)</td><td>1 divided by ARR. Round up.</td><td>1 / 0.03 = 33.3, so about 34 people treated for 3 years to prevent one outcome</td></tr>
              <tr><td>95% confidence interval (CI)</td><td>The range where the true effect probably lies</td><td>RR 0.75, 95% CI 0.52 to 1.08</td></tr>
            </tbody>
          </table>
          <p>The headline "25% lower risk" sounds big. The absolute difference is 3 in 100. The CI also includes 1.0, which means "no difference". So this made-up study cannot show a real benefit on its own. A p-value is the chance of seeing a difference this big if there were really no effect. Here it would be above 0.05.</p>
          <p>AI summaries often report only the relative number. Ask for absolute numbers too, and recalculate them yourself from the raw counts.</p>
          <pre><code>Weak:   Summarise this paper.

        Better: Summarise this paper for a physician in India.
        Give: PICO, study design, number of patients, follow-up time.
        Give event counts for each group, then RR, ARR and NNT, and
        show your working. Give the CI as printed in the paper.
        Who was studied, and does it fit Indian patients?
        List the limits. Use only the text I pasted.
        Write "not stated" if something is missing.</code></pre>
        </div>
        <div class="lc-card">
          <h3>Check every reference</h3>
          <p>AI tools can make up references that look real: real journal names, real-sounding authors and a year. Check each one before you use it or share it.</p>
          <ul class="lc-list">
            <li><strong>Find it.</strong> Search the title in PubMed or Google Scholar. Open the DOI (the paper's permanent web address) if one is given.</li>
            <li><strong>Match the details.</strong> Authors, journal, year and title should all match.</li>
            <li><strong>Read what it says.</strong> The paper must say what the AI claims. Check the numbers in the abstract or the results table.</li>
            <li><strong>Check its status.</strong> Has it been retracted (withdrawn)? The Retraction Watch database, now run by Crossref, is free to search. Is it a preprint (not yet peer reviewed, for example on medRxiv)?</li>
            <li><strong>Check the fit.</strong> Were the patients like yours? One study rarely changes practice on its own. Guidelines weigh many studies.</li>
          </ul>
          <table class="lc-table">
            <thead><tr><th>Reference the AI gave (all made up)</th><th>What Dr Kale found</th><th>Action</th></tr></thead>
            <tbody>
              <tr><td>Reference 1</td><td>Found in PubMed. Details and numbers match.</td><td>Use it</td></tr>
              <tr><td>Reference 2</td><td>Found, but the year and first author were wrong</td><td>Correct the details before sharing</td></tr>
              <tr><td>Reference 3</td><td>Found, but the paper found no benefit. The AI said it showed a benefit.</td><td>Do not use the AI's claim</td></tr>
              <tr><td>Reference 4</td><td>Not in PubMed, Google Scholar or the journal's archive</td><td>Treat as invented. Remove it.</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Activity: from alert to practice</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put Dr Kale's steps for handling a new paper in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">A PubMed alert email lists new papers on his saved search</li>
              <li data-order="2">He pastes the titles and abstracts into the approved AI tool to sort them</li>
              <li data-order="3">He asks for PICO, event counts, RR, ARR and NNT for the important paper</li>
              <li data-order="4">He opens the full paper and recalculates the numbers himself</li>
              <li data-order="5">He checks that it is not retracted and that the patients fit his own</li>
              <li data-order="6">He compares it with the current guideline and discusses it with colleagues</li>
              <li data-order="7">Only then does he change practice, and he notes what changed and why</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Paste an abstract you want to understand, or let the AI make a practice one. Ask for a summary with the numbers worked out, and then check them yourself.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an evidence-based medicine tutor for doctors in India.

        Abstract: [paste an abstract here. If nothing is pasted, write a short practice abstract of a made-up trial, clearly labelled "MADE-UP STUDY", with event counts for each group.]

        Using only the text of the abstract:
        1. PICO (Patient, Intervention, Comparison, Outcome) and study design.
        2. Number of patients and follow-up time.
        3. Event counts in each group. Then calculate risk in each group, relative risk, absolute risk reduction and number needed to treat. Show your working step by step.
        4. The confidence interval and p-value as printed. Say in one line what they mean.
        5. Who was studied, and whether the results may apply to patients in an Indian clinic.
        6. Three limits of the study.
        7. Anything not stated in the abstract: write "not stated". Do not guess.

        Do not give treatment advice. Do not add references.</pre>
            <ul class="ai-try-checks">
              <li>Recalculate RR, ARR and NNT yourself from the event counts.</li>
              <li>NNT is 1 divided by ARR, rounded up, with the time period stated.</li>
              <li>It says "not stated" instead of inventing missing details.</li>
              <li>It gives both relative and absolute numbers, not just the relative one.</li>
              <li>For a real paper, open the full text and check the numbers match.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Let AI sort and summarise, but never let it be your only reader. Look at absolute numbers and the NNT, not just the headline. Open every reference. If you cannot find it, treat it as invented.
        </div>
      HTML
      starter_code: nil
    },
    13 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-health">Healthcare</div>
          <h1 class="lc-title">Bias, Errors and Automation Bias</h1>
        </div>
        <p class="lc-lead">An AI tool can work well for most patients and badly for some groups. It can also be right most of the time, so people slowly stop checking it. Then the rare error slips through. In this lesson you will learn which groups AI tools often get wrong and why. You will see how the same tool can mislead you in a different setting. You will also learn habits and second checks that catch errors, and how to report them so others learn. All tools, numbers and patients here are made up.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 322" role="img" aria-label="An error chain in four steps: data gaps, where some groups are missing from training data; tool errors, wrong more often for those groups; automation bias, busy staff accept the output; and harm, a missed or wrong diagnosis or dose. Under each step is a safeguard that breaks the chain: ask who it was tested on; test on local cases; form your own view first and use a second check; report and learn.">
            <defs><marker id="cp13a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker><marker id="cp13b" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#10b981"/></marker></defs>
            <g font-family="inherit" font-size="12.5" fill="#e2e0f0" text-anchor="middle">
              <text x="380" y="24" font-size="14" font-weight="700" fill="#c4b5fd">How an AI error reaches a patient, and how to stop it</text>
              <rect x="20" y="42" width="165" height="100" rx="12" fill="#1f1f44" stroke="#ef4444"/>
              <text x="102" y="68" font-weight="700" fill="#fca5a5">Data gaps</text>
              <text x="102" y="94">some groups missing</text>
              <text x="102" y="114">from training data</text>
              <rect x="205" y="42" width="165" height="100" rx="12" fill="#1f1f44" stroke="#ef4444"/>
              <text x="287" y="68" font-weight="700" fill="#fca5a5">Tool errors</text>
              <text x="287" y="94">wrong more often</text>
              <text x="287" y="114">for those groups</text>
              <rect x="390" y="42" width="165" height="100" rx="12" fill="#1f1f44" stroke="#ef4444"/>
              <text x="472" y="68" font-weight="700" fill="#fca5a5">Automation bias</text>
              <text x="472" y="94">busy staff accept</text>
              <text x="472" y="114">the output</text>
              <rect x="575" y="42" width="165" height="100" rx="12" fill="#27274e" stroke="#ef4444" stroke-width="2"/>
              <text x="657" y="68" font-weight="700" fill="#fca5a5">Harm</text>
              <text x="657" y="94">missed or wrong</text>
              <text x="657" y="114">diagnosis or dose</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#cp13a)">
                <line x1="186" y1="92" x2="201" y2="92"/>
                <line x1="371" y1="92" x2="386" y2="92"/>
                <line x1="556" y1="92" x2="571" y2="92"/>
              </g>
              <text x="380" y="310" fill="#6ee7b7" font-weight="700">Green: safeguards that break the chain</text>
              <g stroke="#10b981" stroke-width="1.5" stroke-dasharray="4 3" marker-end="url(#cp13b)">
                <line x1="102" y1="210" x2="102" y2="146"/>
                <line x1="287" y1="210" x2="287" y2="146"/>
                <line x1="472" y1="210" x2="472" y2="146"/>
                <line x1="657" y1="210" x2="657" y2="146"/>
              </g>
              <rect x="20" y="214" width="165" height="70" rx="12" fill="#27274e" stroke="#10b981"/>
              <text x="102" y="244">Ask: tested on</text>
              <text x="102" y="264">which patients?</text>
              <rect x="205" y="214" width="165" height="70" rx="12" fill="#27274e" stroke="#10b981"/>
              <text x="287" y="244">Test on local cases,</text>
              <text x="287" y="264">group by group</text>
              <rect x="390" y="214" width="165" height="70" rx="12" fill="#27274e" stroke="#10b981"/>
              <text x="472" y="244">Own view first,</text>
              <text x="472" y="264">then a second check</text>
              <rect x="575" y="214" width="165" height="70" rx="12" fill="#27274e" stroke="#10b981"/>
              <text x="657" y="244">Report errors,</text>
              <text x="657" y="264">share the lesson</text>
            </g>
          </svg>
          <figcaption>Errors pass through several steps before they harm a patient. A safeguard at any step can stop them.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Groups that AI and other tools often get wrong</h3>
          <p>A tool learns from the data it was built on. If a group was missing or small in that data, the tool may work worse for that group. This is <strong>bias</strong>: errors that fall more on some groups of people than others.</p>
          <table class="lc-table">
            <thead><tr><th>Group</th><th>Why errors happen</th><th>What to do</th></tr></thead>
            <tbody>
              <tr><td>People with darker skin</td><td>Image tools may be trained mostly on lighter skin. Even pulse oximeters can be less accurate: the US FDA warned in 2021 that skin pigmentation can affect readings, and issued draft guidance on better testing in 2025.</td><td>Ask how the tool was tested across skin tones. Use clinical signs, not one number.</td></tr>
              <tr><td>Women with heart attacks</td><td>Tools and people may expect "typical" male symptoms. The 2021 AHA/ACC chest pain guideline notes women more often have extra symptoms such as nausea, palpitations and breathlessness.</td><td>Consider a heart cause in every woman with chest pain.</td></tr>
              <tr><td>Children and pregnant women</td><td>Many studies and tools are built on non-pregnant adults. Normal ranges and doses differ.</td><td>Check that the tool is meant for this group. Use age-specific ranges and the current paediatric or pregnancy references.</td></tr>
              <tr><td>Older people with many conditions</td><td>Trials often exclude them. Tools may miss drug burden and frailty.</td><td>Review the whole medicine list and the person's goals.</td></tr>
              <tr><td>Indian patients in foreign-built tools</td><td>Risk scores and AI tools built elsewhere may not fit local patients, diseases or languages.</td><td>Ask whether the tool was checked on Indian patients. Test it on local cases.</td></tr>
            </tbody>
          </table>
          <p>Bias is not only in AI. Some older kidney function equations used a race term. The 2021 CKD-EPI equation removed it. Always ask: for whom was this built and tested?</p>
        </div>
        <div class="lc-card">
          <h3>Automation bias, and why the setting changes the answer</h3>
          <p><strong>Automation bias</strong> means trusting a machine's output too much. It causes two kinds of error:</p>
          <ul class="lc-list">
            <li><strong>Missed errors (omission):</strong> the tool gives no alert, so nobody looks. Example: no interaction alert appears, so the doctor assumes the prescription is safe.</li>
            <li><strong>Followed errors (commission):</strong> the tool suggests something wrong, and a person accepts it.</li>
          </ul>
          <p>Tarang Diagnostics in Maharashtra is testing <strong>Tool X (made-up)</strong>. It reads chest X-rays and flags those that may be abnormal, to move them up the worklist. Radiologist Dr Kiran Rao set one rule: every X-ray is still read by a radiologist. "No flag" never means "skip".</p>
          <p>Imagine Tool X has a sensitivity of 90%: it flags 90 of every 100 abnormal X-rays. Its specificity is also 90%: it correctly passes 90 of every 100 normal X-rays. These numbers are made up. Now look at 1,000 X-rays in two settings.</p>
          <table class="lc-table">
            <thead><tr><th>Per 1,000 X-rays</th><th>Emergency department (10% abnormal)</th><th>Health camp screening (1% abnormal)</th></tr></thead>
            <tbody>
              <tr><td>Abnormal X-rays</td><td>100</td><td>10</td></tr>
              <tr><td>True flags (abnormal and flagged)</td><td>90</td><td>9</td></tr>
              <tr><td>Missed (abnormal, not flagged)</td><td>10</td><td>1</td></tr>
              <tr><td>False flags (normal but flagged)</td><td>90</td><td>99</td></tr>
              <tr><td>PPV: chance a flag is really abnormal</td><td>90 / 180 = 50%</td><td>9 / 108 = 8.3%</td></tr>
              <tr><td>NPV: chance "no flag" is really normal</td><td>810 / 820 = 98.8%</td><td>891 / 892 = 99.9%</td></tr>
            </tbody>
          </table>
          <p>PPV (positive predictive value) and NPV (negative predictive value) depend on prevalence (how common the problem is in the group tested). The same tool gives a very different meaning to a flag in a different place. Now imagine Tool X reaches only 70% sensitivity in one group. It would then miss 30 of every 100 abnormal X-rays in that group, not 10.</p>
        </div>
        <div class="lc-card">
          <h3>Second checks and reporting errors</h3>
          <ul class="lc-list">
            <li><strong>Own view first.</strong> Write your differential or your reading before you look at the AI's.</li>
            <li><strong>Ask "what if it is wrong?"</strong> Look for one fact that does not fit the AI's answer.</li>
            <li><strong>Independent second check</strong> for high-risk work: children's doses, high-alert medicines, and anything with a pregnant patient.</li>
            <li><strong>Watch for drift.</strong> Tools change with updates. A tool that was fine last year may not be now.</li>
            <li><strong>Report, without blame.</strong> Near misses (errors caught before they reached the patient) teach as much as harm.</li>
          </ul>
          <p>At Tarang Multispeciality Hospital, AI errors go into the normal incident reporting system. Accreditation standards such as NABH expect hospitals to report and learn from incidents. The team also tells the tool's supplier. Some AI software is a medical device. Its adverse events can also be reported to the Materiovigilance Programme of India (MvPI), run by the Indian Pharmacopoeia Commission. Drug reactions go to the Pharmacovigilance Programme of India (PvPI). Check the current reporting routes.</p>
          <pre><code>AI INCIDENT REPORT (no patient identifiers)
        Date and area:     September 2026, OPD
        Tool and version:  [approved AI assistant, version if known]
        What happened:     AI summary of a discharge letter left out
                           a penicillin allergy.
        Caught by / when:  Staff nurse, before the prescription was given
        Harm:              None (near miss)
        Why it happened:   Allergy was on page 3; summary was not
                           checked against the original.
        Action:            Allergy check added to summary checklist;
                           supplier told.</code></pre>
        </div>
        <div class="lc-card">
          <h3>Activity: name the problem</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each made-up event. Is it data bias, automation bias, or a good safeguard?</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="data" data-label="Data bias"></div>
              <div data-sorter-target="bucket" data-bucket="auto" data-label="Automation bias"></div>
              <div data-sorter-target="bucket" data-bucket="safe" data-label="Good safeguard"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="data" data-why="The tool learned mostly from lighter skin, so it works worse on darker skin.">A skin rash app trained mostly on photos of light skin misses rashes on darker skin</li>
              <li data-bucket="data" data-why="A score built on another population may not fit local patients.">A risk score built abroad gives odd results for local patients and was never checked on them</li>
              <li data-bucket="auto" data-why="No alert does not mean no interaction. This is a missed error (omission).">No interaction alert appears, so the doctor stops checking the medicine list</li>
              <li data-bucket="auto" data-why="Accepting a wrong suggestion without checking is a followed error (commission).">A busy doctor copies an AI dose into the prescription without opening the formulary</li>
              <li data-bucket="safe" data-why="Forming your own view first protects you from anchoring on the AI's answer.">Dr Joshi writes his own differential before reading the AI's list</li>
              <li data-bucket="safe" data-why="Every X-ray is still read, so a missed flag cannot mean a missed diagnosis.">Dr Kiran Rao's rule: every X-ray is read by a radiologist, flagged or not</li>
              <li data-bucket="safe" data-why="Reporting a near miss lets the whole team learn and fix the process.">A nurse reports an AI summary that left out an allergy, though no harm occurred</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Before your clinic or hospital starts using an AI tool, ask AI to help you plan a bias and error check.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a clinical safety adviser for a hospital in India.

        We are thinking of using this AI tool: [an AI tool that reads chest X-rays and flags possible abnormal findings for the radiologist, in a 200-bed hospital in Maharashtra that also runs rural health camps].

        Help me plan a bias and error check before we use it:
        1. Ten questions to ask the supplier, including which patients it was built and tested on, and whether it was tested on Indian patients.
        2. Groups of our patients who may be at higher risk of errors, and why.
        3. A simple local test plan: how many past cases to check, how to compare with the radiologist's report, and what to count for each group.
        4. How the meaning of a flag changes between our emergency department and screening camps (explain PPV and prevalence in simple words).
        5. Three safeguards against automation bias for our staff.
        6. What to do and whom to tell when we find an error.

        Do not state accuracy figures for any real product. If you are not sure about a rule, say "check the current rule".</pre>
            <ul class="ai-try-checks">
              <li>It asks who the tool was built and tested on, and about Indian patients.</li>
              <li>It explains that PPV falls when a problem is less common, as in screening.</li>
              <li>It gives no accuracy numbers for real products.</li>
              <li>Safeguards keep a person reading every case, flagged or not.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Ask who a tool was built and tested on, and test it on your own patients. Form your own view before you read the AI's. People stop checking a tool that is usually right. So keep second checks for high-risk work, and report every error.
        </div>
      HTML
      starter_code: nil
    },
    14 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-health">Healthcare</div>
          <h1 class="lc-title">Setting Up Safe AI Use in Your Clinic</h1>
        </div>
        <p class="lc-lead">Safe AI use should not depend on one careful doctor. It needs a few simple systems that everyone follows. You need a list of approved tools and a short written policy. You also need training for every staff member and a regular audit (a planned check of real work). In this lesson you will set these up for a small clinic. You will also see how a hospital does the same on a bigger scale. This is general education, not legal advice. Check the current laws and your professional body's rules.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 270" role="img" aria-label="A cycle of five steps: choose approved tools, write a one-page policy, train every staff member, use AI with checks, and audit every month. An arrow returns from audit to the start, labelled fix and update the policy every 6 months or after any incident.">
            <defs><marker id="cp14a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker><marker id="cp14b" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#f59e0b"/></marker></defs>
            <g font-family="inherit" font-size="12.5" fill="#e2e0f0" text-anchor="middle">
              <text x="380" y="24" font-size="14" font-weight="700" fill="#c4b5fd">The safe AI cycle at Nirmal Family Clinic</text>
              <rect x="20" y="50" width="130" height="100" rx="12" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="85" y="76" font-weight="700" fill="#93c5fd">1. Choose</text>
              <text x="85" y="100">approved</text>
              <text x="85" y="120">tools only</text>
              <rect x="170" y="50" width="130" height="100" rx="12" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="235" y="76" font-weight="700" fill="#c4b5fd">2. Write</text>
              <text x="235" y="100">a one-page</text>
              <text x="235" y="120">policy</text>
              <rect x="320" y="50" width="130" height="100" rx="12" fill="#1f1f44" stroke="#ec4899"/>
              <text x="385" y="76" font-weight="700" fill="#f9a8d4">3. Train</text>
              <text x="385" y="100">every staff</text>
              <text x="385" y="120">member</text>
              <rect x="470" y="50" width="130" height="100" rx="12" fill="#1f1f44" stroke="#10b981"/>
              <text x="535" y="76" font-weight="700" fill="#6ee7b7">4. Use</text>
              <text x="535" y="100">with checks,</text>
              <text x="535" y="120">note AI use</text>
              <rect x="620" y="50" width="120" height="100" rx="12" fill="#27274e" stroke="#f59e0b" stroke-width="2"/>
              <text x="680" y="76" font-weight="700" fill="#fcd34d">5. Audit</text>
              <text x="680" y="100">20 documents</text>
              <text x="680" y="120">every month</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#cp14a)">
                <line x1="151" y1="100" x2="166" y2="100"/>
                <line x1="301" y1="100" x2="316" y2="100"/>
                <line x1="451" y1="100" x2="466" y2="100"/>
                <line x1="601" y1="100" x2="616" y2="100"/>
              </g>
              <path d="M680,152 L680,196 L85,196 L85,156" fill="none" stroke="#f59e0b" stroke-width="1.5" stroke-dasharray="6 4" marker-end="url(#cp14b)"/>
              <rect x="190" y="182" width="380" height="28" rx="8" fill="#27274e" stroke="#f59e0b"/>
              <text x="380" y="201" fill="#fcd34d">Fix and update: every 6 months or after an incident</text>
              <rect x="20" y="226" width="720" height="34" rx="8" fill="#1f1f44" stroke="#9b99b8" stroke-dasharray="4 3"/>
              <text x="380" y="248" fill="#9b99b8">Owner at the clinic: Dr Joshi. At Tarang hospital: an AI committee led by Dr Farida Shaikh.</text>
            </g>
          </svg>
          <figcaption>Safe AI use is a cycle, not a one-time rule. The audit shows what to fix, and the policy is updated.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>A one-page AI policy for a small clinic</h3>
          <p>Dr Arvind Joshi wrote this policy for Nirmal Family Clinic, in September 2026. It sits with the approved-tool list he made earlier. It is short enough for Pinky, the receptionist, to read and follow.</p>
          <pre><code>NIRMAL FAMILY CLINIC: AI USE POLICY (made-up example, Sep 2026)
        1. Purpose: AI may help with questions, summaries, letters and
           leaflets. It never makes a clinical decision.
        2. Tools: only tools on the approved list. No free public
           chatbots for any patient work.
        3. Privacy: never enter names, phone numbers, addresses, ABHA
           or Aadhaar numbers, photos or reports with identifiers.
        4. Checking: the doctor checks every AI output against the
           original source (guideline, formulary, patient record).
        5. Emergencies: act first (108 / 112, protocol). No AI.
        6. Consent: tell patients when AI affects their care in a way
           they would expect to know. AI scribe: not approved yet.
        7. Records: write "AI-assisted draft, checked by Dr Joshi" on
           letters and leaflets where AI helped.
        8. Errors: report every AI error or near miss in the clinic
           incident book. No blame.
        9. Training: every staff member before first use, then yearly.
        10. Review: every 6 months, or after any incident.</code></pre>
          <p>The policy follows ideas in the ICMR ethical guidelines on AI in healthcare (2023). It also follows WHO's guidance on the ethics of AI for health (2021). WHO added guidance on large multi-modal models, the kind of AI behind chatbots, in 2024. WHO lists six principles. They are: protect autonomy; promote well-being, safety and the public interest; ensure transparency and explainability. Also: foster responsibility and accountability; ensure inclusiveness and equity; and promote AI that is responsive and sustainable. India's DPDP Act 2023 and Rules 2025 also apply to patient data. Most of their duties start in May 2027, but check the current dates.</p>
        </div>
        <div class="lc-card">
          <h3>Approving a new tool: the hospital version</h3>
          <p>Tarang Multispeciality Hospital in Maharashtra is bigger, so it has a small AI committee. Dr Farida Shaikh, the medical superintendent, leads it. Members include Sister Mary Thomas (nursing), Vikram (operations), Asha (medical coding), Dr Kiran Rao (radiology) and a physician, Dr Sameer Kale.</p>
          <table class="lc-table">
            <thead><tr><th>Question before approval</th><th>Who checks</th></tr></thead>
            <tbody>
              <tr><td>What exactly will the tool do, and for which patients?</td><td>The clinical lead for that area</td></tr>
              <tr><td>Is it a medical device? Software meant for diagnosis or treatment can come under the CDSCO Medical Devices Rules 2017. Check CDSCO's current guidance on medical device software.</td><td>Committee, with the supplier's papers</td></tr>
              <tr><td>Where is data stored? Is it used to train the supplier's AI? Can it be deleted? Does the contract cover data protection law?</td><td>Vikram, with legal advice</td></tr>
              <tr><td>Was it tested on patients like ours? Can we test it on local cases first?</td><td>Clinical lead, Dr Kiran Rao for imaging</td></tr>
              <tr><td>Who checks each output? How do patients give consent and say no?</td><td>Sister Mary Thomas for the AI scribe pilot</td></tr>
              <tr><td>Does it keep logs for audit? Can we switch it off quickly?</td><td>Vikram and IT</td></tr>
            </tbody>
          </table>
          <p>Asha uses an AI tool that suggests diagnosis codes for insurance claims, including government scheme claims such as PM-JAY. She checks every suggested code against the doctor's notes before a claim goes out. A wrong code can mean a rejected or incorrect claim.</p>
        </div>
        <div class="lc-card">
          <h3>Audit and training</h3>
          <p>On the last Saturday of each month, Dr Joshi picks 20 documents where AI helped. He checks each one against the record and the source. September 2026 results (made up):</p>
          <table class="lc-table">
            <thead><tr><th>Check</th><th>Result</th><th>Target</th><th>Action</th></tr></thead>
            <tbody>
              <tr><td>"AI-assisted" noted in the record</td><td>17 of 20 = 85%</td><td>100%</td><td>Add the line to the letter template</td></tr>
              <tr><td>Signed documents with an error</td><td>2 of 20 = 10% (a wrong follow-up date, an old leaflet line)</td><td>0%</td><td>Correct both; add "check dates" to the checklist</td></tr>
              <tr><td>Identifiers entered into the AI tool</td><td>1 of 20 = 5% (a phone number in a letter draft)</td><td>0%</td><td>Log as a privacy incident; retrain; delete the chat as the tool allows</td></tr>
              <tr><td>Emergencies where AI was used</td><td>0</td><td>0</td><td>None needed</td></tr>
            </tbody>
          </table>
          <p>He keeps the audit in a spreadsheet, with "Yes" or "No" in each column. For example, if column E holds "AI use noted" for rows 2 to 21:</p>
          <pre><code>=COUNTIF(E2:E21,"Yes")/COUNTA(E2:E21)</code></pre>
          <p><strong>Training</strong> is short and practical: the policy, how to remove identifiers, a practice session with made-up cases, and how to report an error. Pinky signs the training sheet. New staff are trained before they use any tool.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: set it up in order</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put the steps for starting safe AI use in a clinic in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">List the tasks where AI could help, and the tasks it must never do</li>
              <li data-order="2">Choose tools and check their data terms, and whether any is a medical device</li>
              <li data-order="3">Write a one-page policy and an approved-tool list</li>
              <li data-order="4">Train every staff member with made-up cases before first use</li>
              <li data-order="5">Start using the tools, noting AI help in the record</li>
              <li data-order="6">Audit a sample of AI-assisted work every month</li>
              <li data-order="7">Fix problems and update the policy every 6 months or after an incident</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to draft an AI policy and a monthly audit sheet for your own clinic or ward. Then review it with your team.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a clinical governance adviser for healthcare providers in India.

        Our setting: [a family clinic in Madhya Pradesh with 1 doctor and 1 receptionist, about 40 OPD patients a day].
        How we use AI now: [an AI assistant on a business plan for letters, leaflets and de-identified clinical questions. No AI scribe yet.]

        Please draft:
        1. A one-page AI use policy with 8 to 10 numbered rules: purpose, approved tools, privacy (no identifiers), checking, emergencies first (108 / 112), consent, recording AI use, error reporting, training and review.
        2. A monthly audit sheet as a table: Document | Date | AI use noted? | Error found? | Identifiers entered? | Action.
        3. A 30-minute training plan for new staff.
        4. Five questions to ask before approving any new AI tool.

        Refer to Indian rules (DPDP Act 2023 and Rules 2025, Telemedicine Practice Guidelines 2020, ICMR AI ethics guidelines 2023) only in general words, and say "check the current version". This is not legal advice. Use simple English.</pre>
            <ul class="ai-try-checks">
              <li>Emergencies come first, and AI never makes a clinical decision.</li>
              <li>No patient identifiers are allowed in any AI tool.</li>
              <li>Rules are described generally, with "check the current version", not as legal advice.</li>
              <li>The audit sheet can be counted in a spreadsheet each month.</li>
              <li>You and your team edit the draft to fit how your clinic really works.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Safe AI use is a system, not a hope. Approve a few tools, write a short policy, train everyone, note AI use in the record and audit a sample every month. Fix what the audit finds, and update the policy.
        </div>
      HTML
      starter_code: nil
    },
    15 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-health">Healthcare</div>
          <h1 class="lc-title">Capstone: A Safe AI-Supported Consultation</h1>
        </div>
        <p class="lc-lead">In this capstone you will put the whole course together in one made-up OPD consultation at Nirmal Family Clinic. You will follow Dr Arvind Joshi through six steps: a clear clinical question, a guideline check, a differential diagnosis, a drug check, an explanation for the patient and a documentation note. At every step, AI helps and the doctor checks and decides. Then you will run the same six steps yourself on another made-up case. This is education, not medical advice.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 330" role="img" aria-label="Six steps in two rows. Row one: clinical question with PICO and a context card, no identifiers; guideline check, opening the originals and checking the version; differentials, own list first then compare with AI. Row two: drug check with formulary, label and kidney function; explain in plain words, Hindi and teach-back; document the plan, reasons and AI use, then sign. Every step has a doctor check. A red band says: red flags at any point, stop and act first with 108 or 112.">
            <defs><marker id="cp15a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12.5" fill="#e2e0f0" text-anchor="middle">
              <text x="380" y="22" font-size="14" font-weight="700" fill="#c4b5fd">Six steps of a safe AI-supported consultation</text>
              <rect x="20" y="40" width="220" height="96" rx="12" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="130" y="66" font-weight="700" fill="#93c5fd">1. Clinical question</text>
              <text x="130" y="90">PICO and context card</text>
              <text x="130" y="110">no identifiers</text>
              <rect x="270" y="40" width="220" height="96" rx="12" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="380" y="66" font-weight="700" fill="#c4b5fd">2. Guideline check</text>
              <text x="380" y="90">open the originals</text>
              <text x="380" y="110">check the version</text>
              <rect x="520" y="40" width="220" height="96" rx="12" fill="#1f1f44" stroke="#ec4899"/>
              <text x="630" y="66" font-weight="700" fill="#f9a8d4">3. Differentials</text>
              <text x="630" y="90">own list first,</text>
              <text x="630" y="110">then compare with AI</text>
              <rect x="20" y="184" width="220" height="96" rx="12" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="130" y="210" font-weight="700" fill="#fcd34d">4. Drug check</text>
              <text x="130" y="234">formulary and label,</text>
              <text x="130" y="254">kidney function</text>
              <rect x="270" y="184" width="220" height="96" rx="12" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="380" y="210" font-weight="700" fill="#67e8f9">5. Explain</text>
              <text x="380" y="234">plain words, Hindi,</text>
              <text x="380" y="254">teach-back</text>
              <rect x="520" y="184" width="220" height="96" rx="12" fill="#27274e" stroke="#10b981" stroke-width="2"/>
              <text x="630" y="210" font-weight="700" fill="#6ee7b7">6. Document</text>
              <text x="630" y="234">plan, reasons, AI use</text>
              <text x="630" y="254">doctor signs</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#cp15a)">
                <line x1="241" y1="88" x2="266" y2="88"/>
                <line x1="491" y1="88" x2="516" y2="88"/>
                <path d="M630,137 L630,160 L130,160 L130,180"/>
                <line x1="241" y1="232" x2="266" y2="232"/>
                <line x1="491" y1="232" x2="516" y2="232"/>
              </g>
              <rect x="300" y="148" width="160" height="24" rx="6" fill="#27274e" stroke="#10b981"/>
              <text x="380" y="165" fill="#6ee7b7">doctor checks each step</text>
              <rect x="20" y="294" width="720" height="28" rx="8" fill="#1f1f44" stroke="#ef4444" stroke-dasharray="6 4"/>
              <text x="380" y="313" fill="#fca5a5">Red flags at any point? Stop and act first: protocol, 108 / 112.</text>
            </g>
          </svg>
          <figcaption>AI helps at each step. The doctor checks each output against the source and makes every decision.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Steps 1 and 2: the question and the guideline check</h3>
          <p>Made-up patient Mr Ramesh Yadav, 56, a shopkeeper, sees Dr Joshi on 21 September 2026. He has type 2 diabetes (8 years) and hypertension (5 years). He has pain in both knees for 3 weeks, worse on stairs. He has been buying diclofenac from a chemist 2 to 3 times a week.</p>
          <ul class="lc-list">
            <li><strong>Medicines:</strong> metformin 1000 mg twice a day, glimepiride 2 mg once a day, telmisartan 40 mg once a day, atorvastatin 20 mg at night. No known allergies.</li>
            <li><strong>Findings:</strong> BP 146/90 (repeat 144/88), BMI 28.3 kg/m² (80 kg, 168 cm).</li>
            <li><strong>Labs (14 Sep 2026):</strong> HbA1c 8.2%, creatinine 1.7 mg/dL, eGFR 47, potassium 4.9 mmol/L, urine ACR 68 mg/g. No earlier eGFR in the clinic file.</li>
          </ul>
          <p>Dr Joshi first checks for red flags: no hot, swollen joint, no fever, no injury. Then he writes a PICO question and pastes a de-identified context card into the clinic's approved AI tool.</p>
          <pre><code>PICO: In a man of 56 with type 2 diabetes, eGFR 47, ACR 68 and
        telmisartan, with likely knee osteoarthritis (P), what pain plan
        (I), compared with continuing oral diclofenac (C), best controls
        pain while protecting kidney function and potassium (O)?
        Ask: which guidelines apply (issuer, title, year)? Mark your
        confidence. Do not choose for me. No doses.</code></pre>
          <p>The AI named four guidelines. Dr Joshi opened each one on the official website. This is what the originals said:</p>
          <table class="lc-table">
            <thead><tr><th>Guideline (original)</th><th>What it says, in short</th></tr></thead>
            <tbody>
              <tr><td>NICE NG226, osteoarthritis (2022)</td><td>Diagnose osteoarthritis clinically, without imaging, in people 45 or over with activity-related joint pain. Morning stiffness should be absent or last 30 minutes or less. Offer therapeutic exercise. Support weight loss: 10% is likely better than 5%. Offer a topical NSAID for knee osteoarthritis. Consider an oral NSAID only if topical medicines do not work or are unsuitable. Take account of kidney, stomach, heart and liver risks. Do not routinely offer paracetamol or weak opioids.</td></tr>
              <tr><td>KDIGO 2024, chronic kidney disease</td><td>CKD means kidney abnormalities present for at least 3 months. Do not assume CKD from one result: it could be a recent, acute change.</td></tr>
              <tr><td>The current ADA Standards of Care</td><td>BP goal below 130/80 if safe. A systolic goal below 120 is now encouraged for people at high heart or kidney risk.</td></tr>
              <tr><td>ICMR Standard Treatment Workflows</td><td>He searched the site for a matching workflow to compare with the Indian approach.</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Steps 3 and 4: differentials and the drug check</h3>
          <p>Dr Joshi writes his own list first. Then he asks the AI "What else could explain these findings?" and compares. The AI added "referred pain from the hip", which he then examined.</p>
          <table class="lc-table">
            <thead><tr><th>Problem</th><th>Possible causes</th><th>What decides it</th></tr></thead>
            <tbody>
              <tr><td>Knee pain</td><td>Osteoarthritis (most likely); gout or pseudogout; inflammatory arthritis; pain referred from the hip</td><td>Morning stiffness (he says under 15 minutes), examination (no warmth or swelling), other joints, hip movement</td></tr>
              <tr><td>eGFR 47, ACR 68</td><td>Diabetic kidney disease; a drop in kidney function from diclofenac; other kidney causes</td><td>Repeat tests after stopping diclofenac. Only results over 3 months can confirm CKD.</td></tr>
            </tbody>
          </table>
          <p>Next, the drug check. He uses the clinic's subscribed interaction checker, the product labels and the current National Formulary of India. AI helped him make the list. The sources decided.</p>
          <table class="lc-table">
            <thead><tr><th>Medicine</th><th>Issue found</th><th>Dr Joshi's decision</th></tr></thead>
            <tbody>
              <tr><td>Diclofenac (from chemist)</td><td>With telmisartan and reduced kidney function, it can worsen kidney function and raise potassium (already 4.9). NSAIDs can also raise BP.</td><td>Stop. Explain why, and ask him not to buy painkillers without advice.</td></tr>
              <tr><td>Metformin</td><td>US FDA label: do not use below eGFR 30. Do not start at 30 to 45. If eGFR falls below 45 in someone already taking it, assess benefit and risk.</td><td>Continue for now. His eGFR is 47, just above 45, so he repeats the test and watches the trend.</td></tr>
              <tr><td>Glimepiride</td><td>Low blood sugar risk, higher with reduced kidney function</td><td>Teach low-sugar signs. Review the diabetes plan at follow-up.</td></tr>
              <tr><td>Topical NSAID gel (new)</td><td>Much less medicine reaches the blood than with tablets, but check the label</td><td>Offered after he checked the label. Strength and use: check the current formulary.</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Steps 5 and 6: explain, then document</h3>
          <p>Mr Yadav prefers Hindi. The AI drafted short points in simple Hindi. Dr Joshi checked the meaning himself, since he speaks Hindi fluently. Then he explained the plan face to face.</p>
          <pre><code>दर्द की यह गोली (डाइक्लोफेनाक) आपकी किडनी पर ज़ोर डाल सकती है।
        इसे बंद कर दीजिए। दर्द के लिए घुटने पर लगाने वाली जेल दी है।
        रोज़ घुटनों की कसरत करें। दो हफ़्ते बाद खून और पेशाब की जाँच होगी।

        (Meaning: This pain tablet, diclofenac, can strain your kidneys.
        Please stop it. I have given a gel to put on your knee for pain.
        Do knee exercises every day. Blood and urine tests after 2 weeks.)</code></pre>
          <p><strong>Teach-back</strong> (the patient explains the plan in his own words): "Please tell me which tablet you will stop, and why." Mr Yadav answers correctly, and adds that he will tell the chemist too.</p>
          <pre><code>OPD NOTE, 21 Sep 2026 (made-up patient)
        S: Both knees painful 3 weeks, worse on stairs. Stiffness under
           15 min. Diclofenac from chemist 2 to 3 times a week.
        O: BP 146/90, repeat 144/88. BMI 28.3. Knees: no warmth or
           swelling. Hips normal. eGFR 47, K 4.9, ACR 68, HbA1c 8.2%.
        A: Likely knee osteoarthritis. Reduced eGFR with albuminuria:
           possible diabetic kidney disease vs NSAID effect; not yet
           confirmed as CKD (no earlier result).
        P: Stop diclofenac (reason explained). Topical NSAID gel.
           Exercise plan; weight goal agreed. Continue other medicines.
           Low-sugar advice. Repeat creatinine, eGFR, K, ACR in 2 weeks.
           BP recheck then. Return sooner if pain worsens or joint swells.
        Sources: NICE NG226; KDIGO 2024; current ADA Standards of Care; product labels; NFI.
        AI use: approved clinic tool, de-identified, for question,
        differential comparison and Hindi draft. All checked.
        Decisions and signature: Dr Arvind Joshi</code></pre>
        </div>
        <div class="lc-card">
          <h3>Activity: replay the consultation</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="check" data-label="Red flags first">Dr Joshi checks for a hot swollen joint, fever or injury. None. It is safe to take time.</li>
              <li data-kind="user" data-label="He asks">He pastes the PICO question and a de-identified context card into the approved AI tool.</li>
              <li data-kind="answer" data-label="AI replies">It lists NICE NG226, KDIGO 2024 and the current ADA Standards of Care, suggests stopping diclofenac, and lists topical NSAIDs, exercise and weight loss.</li>
              <li data-kind="tool" data-label="He opens">He opens each guideline on its official website and checks the version and the exact words.</li>
              <li data-kind="warn" data-label="Catch this">The AI's Hindi leaflet draft adds a paracetamol dose "4 times a day". He never agreed this, and NICE does not routinely advise paracetamol for osteoarthritis. He deletes the line.</li>
              <li data-kind="tool" data-label="Drug check">He runs the interaction checker and reads the labels for metformin, glimepiride and the gel.</li>
              <li data-kind="check" data-label="He decides">He agrees the plan with Mr Yadav, uses teach-back, and books repeat tests in 2 weeks.</li>
              <li data-kind="check" data-label="He signs">He writes the note with sources and AI use, reads it once more, and signs.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Run all six steps yourself. The default case is a different made-up patient, an older woman with falls. You can change it to another made-up case.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a clinical tutor. Coach me, a doctor in India, through a safe AI-supported consultation. The case is made up.

        Case: [woman, 79, two falls in 3 months, dizzy on standing. Lying BP 142/82, standing 116/74 after 3 min. Medicines: amlodipine 10 mg, hydrochlorothiazide 25 mg, glimepiride 2 mg, metformin 500 mg twice a day, alprazolam 0.25 mg at night, chlorpheniramine cold syrup, herbal sugar powder. HbA1c 6.4%, sodium 131, eGFR 57.]

        Give 6 short sections:
        1. Red flags to rule out first.
        2. One PICO question.
        3. Guidelines or lists to check (issuer, year). Write "check it exists" if unsure.
        4. A differential list, most likely first.
        5. Medicine problems to check in the formulary. No doses.
        6. Simple Hindi points for the patient and family, a teach-back question, and a short SOAP note ending "AI-assisted; checked and signed by [doctor]".

        Mark each section's confidence. Offer options, not decisions.</pre>
            <ul class="ai-try-checks">
              <li>It works out the standing BP drop (26 systolic) and calls it orthostatic hypotension.</li>
              <li>It flags alprazolam, the sedating antihistamine, BP medicines and low sugar from glimepiride.</li>
              <li>Every guideline or list it names is real. Open the current version, such as the AGS Beers Criteria.</li>
              <li>It gives no doses, and treats stopping medicines as a shared decision with the patient and family.</li>
              <li>Ask a fluent speaker to check the Hindi.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A safe AI-supported consultation has one pattern at every step: AI suggests, the doctor checks the source and decides. Ask a clear question and open the original guideline. Form your own differential first, and check drugs in the formulary. Explain in the patient's language, and record your reasons and AI use before you sign.
        </div>
      HTML
      starter_code: nil
    }
  }.freeze
end

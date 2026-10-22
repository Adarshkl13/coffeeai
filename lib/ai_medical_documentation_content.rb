module AiMedicalDocumentationContent
  # Units (sidebar dividers): 1–4 Documentation Basics · 5–9 Notes and Summaries · 10–14 Coding and Quality · 15 Capstone
  # Widgets: sequence, sorter, stepper. No code editor: each Try It is an ai-try prompt box.
  LESSONS = {
    1 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-health">Healthcare</div>
          <h1 class="lc-title">Why Medical Documentation Matters</h1>
        </div>
        <p class="lc-lead">A clinical note is written once but read many times. The next doctor, the night nurse, the pharmacist, the medical coder, the insurer and sometimes a court all depend on it. In this lesson you will learn the five jobs of medical documentation: patient safety, continuity of care, the legal record, billing and claims, and quality. You will also see how much doctor time notes take. That time is the reason hospitals are now trying AI tools. Throughout this course, AI only drafts. A clinician always checks and signs. All patients and hospitals here are made up, and this course is education, not medical or legal advice.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 310" role="img" aria-label="One patient record in the centre, with arrows to five users: continuity of care, patient safety, billing and claims, legal record, and quality and audit. A line at the bottom shows that 40 discharge summaries a day at 25 minutes each take 16 hours 40 minutes of doctor time at the made-up Tarang hospital.">
            <defs><marker id="md1a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="290" y="110" width="180" height="60" rx="10" fill="#27274e" stroke="#ef4444" stroke-width="2"/>
              <text x="380" y="136" font-weight="700">One patient record</text>
              <text x="380" y="156" font-size="11" fill="#9b99b8">written once, read by many</text>
              <rect x="20" y="20" width="230" height="56" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="135" y="43" font-weight="700">Continuity of care</text>
              <text x="135" y="63" font-size="11" fill="#9b99b8">next doctor, nurse, next shift</text>
              <rect x="510" y="20" width="230" height="56" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="625" y="43" font-weight="700">Patient safety</text>
              <text x="625" y="63" font-size="11" fill="#9b99b8">allergies, doses, test results</text>
              <rect x="20" y="200" width="230" height="56" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="135" y="223" font-weight="700">Billing and claims</text>
              <text x="135" y="243" font-size="11" fill="#9b99b8">coder Asha, insurer</text>
              <rect x="510" y="200" width="230" height="56" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="625" y="223" font-weight="700">Legal record</text>
              <text x="625" y="243" font-size="11" fill="#9b99b8">complaints, consent, court</text>
              <rect x="280" y="215" width="200" height="56" rx="10" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="380" y="238" font-weight="700">Quality and audit</text>
              <text x="380" y="258" font-size="11" fill="#9b99b8">NABH, hospital statistics</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#md1a)">
                <line x1="290" y1="122" x2="254" y2="76"/>
                <line x1="470" y1="122" x2="506" y2="76"/>
                <line x1="290" y1="160" x2="254" y2="204"/>
                <line x1="470" y1="160" x2="506" y2="204"/>
                <line x1="380" y1="172" x2="380" y2="211"/>
              </g>
              <text x="380" y="298" font-size="12" fill="#fca5a5">Tarang (made up): 40 summaries a day x 25 min = 16 h 40 min</text>
            </g>
          </svg>
          <figcaption>One record serves five jobs. If one fact is missing, every reader downstream is affected.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Who reads a clinical note, and what they need</h3>
          <table class="lc-table">
            <thead><tr><th>Reader</th><th>What they need from the note</th><th>What goes wrong if it is missing</th></tr></thead>
            <tbody>
              <tr><td><strong>Next doctor or nurse</strong></td><td>Diagnosis, what was done, what is still pending</td><td>Tests are repeated, or a pending result is never seen</td></tr>
              <tr><td><strong>Pharmacist</strong></td><td>Each medicine with dose, route, frequency and duration</td><td>Wrong dose, double dose, or a medicine stopped by mistake</td></tr>
              <tr><td><strong>Patient and family</strong></td><td>What to take, when to come back, which warning signs matter</td><td>Missed follow-up, late return when the illness gets worse</td></tr>
              <tr><td><strong>Medical coder and insurer</strong></td><td>A clear diagnosis with the findings that support it</td><td>Claim queries, delays or denials</td></tr>
              <tr><td><strong>Legal and quality teams</strong></td><td>Dated, timed and signed entries, consent, and clear reasons for decisions</td><td>The hospital cannot show what care was given</td></tr>
            </tbody>
          </table>
          <p>A useful rule: <em>if it is not written, it did not happen</em>. Courts, insurers and auditors usually judge care by what the record shows.</p>
        </div>
        <div class="lc-card">
          <h3>What good documentation looks like</h3>
          <ul class="lc-list">
            <li><strong>Accurate:</strong> it matches what was seen, said and done. Nothing is guessed or copied from an old note without checking.</li>
            <li><strong>Complete:</strong> allergies, medicines with doses, results and follow-up are all there. A blank field is not the same as "none".</li>
            <li><strong>Timely:</strong> it is written at the time of care, or soon after.</li>
            <li><strong>Clear:</strong> it uses standard abbreviations only. "OD" can mean "once daily" or "right eye", so write the full words.</li>
            <li><strong>Signed:</strong> every entry has a name, date, time and signature. Corrections are made as a dated addendum (an added note). The old text is never hidden.</li>
          </ul>
          <p>In India, the medical council's long-standing ethics regulations ask doctors to keep indoor patient records for at least 3 years. They also ask doctors to give copies within 72 hours when the patient asks. Many hospitals keep records much longer because of state rules, accreditation such as NABH (the national hospital accreditation board) and possible legal cases. Rules change, so check the current National Medical Commission (NMC) rules and your hospital policy. This is general information, not legal advice.</p>
        </div>
        <div class="lc-card">
          <h3>Worked example: the time it takes</h3>
          <p>Tarang Multispeciality Hospital is a made-up 200-bed hospital in Maharashtra. Dr Farida Shaikh, the medical superintendent, collected these made-up baseline numbers before any AI pilot.</p>
          <table class="lc-table">
            <thead><tr><th>Measure</th><th>Made-up number</th><th>How it is worked out</th></tr></thead>
            <tbody>
              <tr><td>Occupied beds</td><td>160</td><td>200 beds x 80% occupancy</td></tr>
              <tr><td>Discharges per day</td><td>40</td><td>160 occupied beds ÷ 4-day average length of stay</td></tr>
              <tr><td>Doctor time on discharge summaries</td><td>16 h 40 min a day</td><td>40 x 25 minutes = 1,000 minutes</td></tr>
              <tr><td>Summaries with at least one gap</td><td>28%</td><td>14 of 50 audited summaries</td></tr>
            </tbody>
          </table>
          <p>At Nirmal Family Clinic, Dr Arvind Joshi sees about 40 patients a day. Each OPD (outpatient) note takes him about 4 minutes. That is 160 minutes, or 2 h 40 min, every clinic day. In a spreadsheet, put patients in B2 and minutes per note in B3. This formula gives hours per day:</p>
          <pre><code>=B2*B3/60</code></pre>
          <p>AI tools promise to cut this time. But the time a clinician spends <em>checking</em> the AI draft must be counted too. Measure both, not just the drafting time.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: what does each gap put at risk?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">These made-up gaps were found in an audit at Tarang. Sort each one by its main risk.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="safety" data-label="Patient safety"></div>
              <div data-sorter-target="bucket" data-bucket="continuity" data-label="Continuity of care"></div>
              <div data-sorter-target="bucket" data-bucket="claims" data-label="Claims or legal record"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="safety" data-why="A blank field does not mean 'no allergies'. The next prescriber may give a medicine the patient reacts to.">The allergy field on the drug chart is blank</li>
              <li data-bucket="safety" data-why="The patient may keep taking the old dose at home. Medicine errors are a direct safety risk.">The discharge summary says metformin 500 mg, but the doctor increased it to 1000 mg</li>
              <li data-bucket="continuity" data-why="Nobody is told to look for the result, so a positive culture could be missed after discharge.">A blood culture result is still pending, but the summary does not mention it</li>
              <li data-bucket="continuity" data-why="The day team cannot see the reason, so they may undo a correct change or repeat tests.">The night resident changed the antibiotic but did not write why</li>
              <li data-bucket="claims" data-why="The coder cannot code a confirmed pneumonia, and the insurer may query the claim.">The diagnosis says only "chest infection?" with no X-ray finding</li>
              <li data-bucket="claims" data-why="An undated, unsigned change weakens the record if there is a complaint or a court case.">A note was changed two days later with no date, time or signature</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to review a weak, made-up discharge summary and list the gaps. The AI should find the gaps and ask questions, not fill them with guesses.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a clinical documentation quality reviewer at [a 200-bed hospital in India]. The case below is made up for training. It is not a real patient.

        Read this draft discharge summary. List every gap. For each gap, say what is missing or unclear, who could be affected (patient, next doctor, pharmacist, coder or insurer, legal record), and one question to ask the treating doctor. Do not invent the missing facts.

        Draft:
        Patient: Mr Prakash Kulkarni, 58, male. Admitted 14/09/2026 with chest infection. Treated with IV antibiotics, improved. Sugar was high, managed. Discharged stable.
        Medicines: tab cefuroxime, tab metformin, tab glimepiride, PCM SOS.
        Allergy:
        Follow-up: OPD.

        Output: a table with columns Gap | Who is affected | Question for the doctor. Then write 3 short lines on the most serious gaps. Use simple English.</pre>
            <ul class="ai-try-checks">
              <li>It flags the missing dose, frequency and duration for every medicine.</li>
              <li>It flags the blank allergy field and says blank is not the same as "none".</li>
              <li>It asks for a confirmed diagnosis, key findings and a follow-up date.</li>
              <li>It does not make up doses, dates or results to fill the gaps.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Documentation is patient care, not paperwork. One missing dose or a blank allergy field can harm a patient, delay a claim or weaken a legal record. AI can save time, but only if a clinician checks every draft and signs it.
        </div>
      HTML
      starter_code: nil
    },
    2 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-health">Healthcare</div>
          <h1 class="lc-title">Where AI Helps with Documentation</h1>
        </div>
        <p class="lc-lead">AI can draft notes, summarise long files, listen to a consultation and suggest codes. It can also make up findings, miss details and leak private data. In this lesson you will learn the main jobs where AI helps, the risks that come with each one, and the one rule that never changes. AI writes a draft. A clinician checks it against the source and signs it. The clinician who signs owns the note.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 270" role="img" aria-label="A workflow with five steps: source facts, AI drafts, clinician checks, clinician signs, saved to the record. A dashed arrow goes back from the check step to the draft step for fixes. Below, three risks: made-up findings, missed details and privacy leaks.">
            <defs>
              <marker id="md2a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker>
              <marker id="md2b" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#f59e0b"/></marker>
            </defs>
            <g font-family="inherit" font-size="12.5" fill="#e2e0f0" text-anchor="middle">
              <rect x="15" y="30" width="128" height="58" rx="10" fill="#27274e" stroke="#3b82f6"/>
              <text x="79" y="54" font-weight="700">Source facts</text>
              <text x="79" y="74" font-size="11" fill="#9b99b8">notes, audio, labs</text>
              <rect x="163" y="30" width="128" height="58" rx="10" fill="#27274e" stroke="#8b5cf6"/>
              <text x="227" y="54" font-weight="700">AI drafts</text>
              <text x="227" y="74" font-size="11" fill="#9b99b8">draft only</text>
              <rect x="311" y="30" width="128" height="58" rx="10" fill="#27274e" stroke="#f59e0b" stroke-width="2"/>
              <text x="375" y="54" font-weight="700">Clinician checks</text>
              <text x="375" y="74" font-size="11" fill="#9b99b8">line by line</text>
              <rect x="459" y="30" width="128" height="58" rx="10" fill="#27274e" stroke="#10b981" stroke-width="2"/>
              <text x="523" y="54" font-weight="700">Clinician signs</text>
              <text x="523" y="74" font-size="11" fill="#9b99b8">name, date, time</text>
              <rect x="607" y="30" width="128" height="58" rx="10" fill="#27274e" stroke="#22d3ee"/>
              <text x="671" y="54" font-weight="700">Saved to record</text>
              <text x="671" y="74" font-size="11" fill="#9b99b8">HIS or EHR</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#md2a)">
                <line x1="144" y1="59" x2="160" y2="59"/><line x1="292" y1="59" x2="308" y2="59"/><line x1="440" y1="59" x2="456" y2="59"/><line x1="588" y1="59" x2="604" y2="59"/>
              </g>
              <path d="M375,90 Q301,122 232,92" fill="none" stroke="#f59e0b" stroke-width="1.5" stroke-dasharray="5 4" marker-end="url(#md2b)"/>
              <text x="301" y="128" font-size="11" fill="#fcd34d">fix and redo</text>
              <rect x="15" y="150" width="720" height="106" rx="12" fill="#1f1f44" stroke="#ef4444"/>
              <text x="375" y="172" font-weight="700" fill="#fca5a5">Risks the check must catch</text>
              <text x="135" y="200" font-weight="700">Made-up findings</text>
              <text x="135" y="222" font-size="11" fill="#9b99b8">"ECG normal" when</text>
              <text x="135" y="238" font-size="11" fill="#9b99b8">no ECG was done</text>
              <text x="375" y="200" font-weight="700">Missed details</text>
              <text x="375" y="222" font-size="11" fill="#9b99b8">a pending result or a</text>
              <text x="375" y="238" font-size="11" fill="#9b99b8">changed dose left out</text>
              <text x="615" y="200" font-weight="700">Privacy leaks</text>
              <text x="615" y="222" font-size="11" fill="#9b99b8">real patient data in a</text>
              <text x="615" y="238" font-size="11" fill="#9b99b8">public, unapproved tool</text>
            </g>
          </svg>
          <figcaption>The check step is not optional. It is where made-up findings and missed details are caught.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Five jobs where AI can help</h3>
          <table class="lc-table">
            <thead><tr><th>Job</th><th>Made-up example</th><th>Who checks and decides</th></tr></thead>
            <tbody>
              <tr><td><strong>Drafting</strong></td><td>Turn Dr Neha Pawar's short ward-round notes into a neat progress note</td><td>The doctor who wrote the notes</td></tr>
              <tr><td><strong>Summarising</strong></td><td>Turn 5 days of notes, results and drug charts into a first draft of a discharge summary</td><td>The treating doctor, against the chart</td></tr>
              <tr><td><strong>Ambient scribe</strong> (a tool that listens to the consultation and drafts the note)</td><td>Dr Arvind Joshi's OPD visit becomes a SOAP draft</td><td>Dr Joshi, before the patient leaves if possible</td></tr>
              <tr><td><strong>Coding suggestions</strong></td><td>Suggest diagnosis codes from a discharge summary</td><td>Asha, the medical coder</td></tr>
              <tr><td><strong>Plain-language versions</strong></td><td>A Marathi or Hindi version of discharge advice for the family</td><td>A clinician who reads that language</td></tr>
            </tbody>
          </table>
          <p>Notice what is <em>not</em> in the table. AI does not choose the diagnosis, the medicine or the dose. Software that diagnoses or suggests treatment can count as a medical device under India's Medical Devices Rules, 2017. CDSCO (the national drug and device regulator) oversees these rules. Ask the vendor about a tool's regulatory status.</p>
        </div>
        <div class="lc-card">
          <h3>The risks, in plain words</h3>
          <ul class="lc-list">
            <li><strong>Made-up content (hallucination):</strong> the AI writes something that sounds right but is not in the source. For example, "chest clear" when nobody examined the chest.</li>
            <li><strong>Missed details (omission):</strong> the AI leaves out a pending test, a changed dose or an allergy.</li>
            <li><strong>Misheard words:</strong> a scribe hears "fifteen" as "fifty", or "hypo" as "hyper".</li>
            <li><strong>Copy-forward:</strong> old findings are carried into today's note as if they are new.</li>
            <li><strong>Automation bias:</strong> people trust a neat, confident draft and stop reading carefully.</li>
            <li><strong>Privacy:</strong> real patient data is pasted into a public tool that the hospital has not approved.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>A weak prompt and a better prompt</h3>
          <pre><code>Weak prompt:   Write a progress note for this patient.

        Better prompt: Turn these ward-round notes into a progress note.
                       Use only the facts given. Do not add findings.
                       If a usual item is missing, write "Not documented".
                       Keep every number and dose exactly as written.
                       Mark anything unclear with [CHECK].
                       End with "AI draft: to be checked and signed."</code></pre>
          <p>The better prompt tells the AI what it must <em>not</em> do. It also makes gaps visible, so the doctor can fill them from the chart. Even with a good prompt, the doctor must read every line. Use only a tool your hospital has approved for patient data.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: catching a made-up finding</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Dr Neha Pawar asks the approved tool">Draft a day 2 progress note for the made-up patient Mr Kulkarni. Notes: T max 38.2 °C, SpO2 94% on 2 L/min oxygen, glucose 180-260 mg/dL, glargine up to 14 units.</li>
              <li data-kind="answer" data-label="AI draft">"Day 2. Afebrile. SpO2 94% on room air. Chest clear. Glucose 180-260 mg/dL. Glargine increased to 14 units."</li>
              <li data-kind="warn" data-label="Three errors">"Afebrile" is wrong: 38.2 °C is a fever. "On room air" is wrong: he is on 2 L/min oxygen. "Chest clear" was never examined or written. It is made up.</li>
              <li data-kind="tool" data-label="Hospital information system">Dr Pawar opens the vitals chart and the ward-round notes for day 2.</li>
              <li data-kind="result" data-label="Chart shows">Temperature 38.2 °C at 6 am. Oxygen 2 L/min by nasal prongs. Crackles still heard at the right lung base.</li>
              <li data-kind="check" data-label="Fix and sign">She corrects the three lines from the chart. Then she signs the note with her name, date and time.</li>
              <li data-kind="check" data-label="Log the error">She adds "made-up finding" to the pilot error log, so the team can count error types.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to map documentation tasks in your own setting, with the risk and the human checker for each one.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are an adviser helping [a medicine ward team at a hospital in India] plan a safe pilot of AI for clinical documentation. The team will use only a hospital-approved AI tool. No real patient data goes into any public tool.

        List 8 documentation tasks in our setting. Include [discharge summaries, daily progress notes, referral letters and patient advice sheets].

        Make a table with these columns:
        Task | How AI could help | Main risk (made-up findings, missed details, privacy, wrong patient) | Who must check and sign | Start now, later, or never

        Rules:
        - AI only drafts. A named clinician or coder checks and signs every output.
        - Any task where AI would choose a diagnosis, medicine or dose goes in "never".
        - Use short, simple sentences.

        After the table, suggest the 2 safest tasks to start with, and say how we should measure time saved and errors found.</pre>
            <ul class="ai-try-checks">
              <li>Every row names a human who checks and signs.</li>
              <li>Choosing diagnoses, medicines or doses is marked "never".</li>
              <li>Privacy and made-up findings appear as risks, not only speed.</li>
              <li>The measurement plan counts checking time and errors, not just drafting time.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> AI is a fast first-draft writer, not a clinician. It helps most with drafting, summarising, scribing and coding suggestions. Its main risks are made-up findings, missed details and privacy leaks. A clinician must compare the draft with the source and sign it.
        </div>
      HTML
      starter_code: nil
    },
    3 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-health">Healthcare</div>
          <h1 class="lc-title">Privacy, Consent and Safe Tools</h1>
        </div>
        <p class="lc-lead">Health records hold some of the most private facts about a person. Before you use AI with any clinical text, you must know three things. Is the tool approved for patient data? Has the patient agreed, for example to a recording? Have you removed details that are not needed? In this lesson you will learn the basics of India's data protection law and the telemedicine guidelines. You will also learn the difference between approved and public tools, and how to remove identifiers. This is general information, not legal advice. Your hospital's policy and legal team decide the details.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 320" role="img" aria-label="A decision tree. Does the text contain real patient details? If no, a public AI tool is fine with made-up data. If yes, is the tool hospital-approved? If no, stop and do not paste. If yes, is there consent and a clear purpose? If no, ask first or write the note yourself. If yes, use the minimum data, and a clinician checks and signs.">
            <defs><marker id="md3a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="250" y="15" width="260" height="44" rx="10" fill="#27274e" stroke="#3b82f6"/>
              <text x="380" y="42" font-weight="700">Real patient details in it?</text>
              <rect x="20" y="95" width="200" height="56" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="120" y="118" font-weight="700">Public AI is OK</text>
              <text x="120" y="138" font-size="11" fill="#9b99b8">made-up or no patient data</text>
              <rect x="250" y="95" width="260" height="44" rx="10" fill="#27274e" stroke="#3b82f6"/>
              <text x="380" y="122" font-weight="700">Hospital-approved tool?</text>
              <rect x="560" y="89" width="185" height="56" rx="10" fill="#1f1f44" stroke="#ef4444" stroke-width="2"/>
              <text x="652" y="112" font-weight="700" fill="#fca5a5">Stop. Do not paste</text>
              <text x="652" y="132" font-size="11" fill="#9b99b8">use made-up data instead</text>
              <rect x="250" y="175" width="260" height="44" rx="10" fill="#27274e" stroke="#3b82f6"/>
              <text x="380" y="202" font-weight="700">Consent and a clear purpose?</text>
              <rect x="560" y="169" width="185" height="56" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="652" y="192" font-weight="700" fill="#fcd34d">Ask first</text>
              <text x="652" y="212" font-size="11" fill="#9b99b8">or write the note yourself</text>
              <rect x="220" y="255" width="320" height="52" rx="10" fill="#1f1f44" stroke="#10b981" stroke-width="2"/>
              <text x="380" y="277" font-weight="700" fill="#6ee7b7">Use the minimum data</text>
              <text x="380" y="296" font-size="11" fill="#9b99b8">a clinician checks and signs the output</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#md3a)">
                <path d="M250,37 L120,37 L120,91"/>
                <line x1="380" y1="59" x2="380" y2="91"/>
                <line x1="510" y1="117" x2="556" y2="117"/>
                <line x1="380" y1="139" x2="380" y2="171"/>
                <line x1="510" y1="197" x2="556" y2="197"/>
                <line x1="380" y1="219" x2="380" y2="251"/>
              </g>
              <g font-size="11" fill="#9b99b8">
                <text x="185" y="30">No</text>
                <text x="398" y="80">Yes</text>
                <text x="533" y="110">No</text>
                <text x="398" y="160">Yes</text>
                <text x="533" y="190">No</text>
                <text x="398" y="240">Yes</text>
              </g>
            </g>
          </svg>
          <figcaption>Ask these three questions before any clinical text goes into an AI tool. One "no" means stop or change the plan.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The rules in India, in general words</h3>
          <p><strong>Digital Personal Data Protection (DPDP) Act, 2023.</strong> This law covers personal data in digital form, which includes health records in a hospital system or an app. A hospital or clinic that decides why and how data is used is a <em>Data Fiduciary</em>. The patient is the <em>Data Principal</em>.</p>
          <ul class="lc-list">
            <li><strong>Consent:</strong> it must be free, specific, informed, unconditional and unambiguous. The person must give a clear "yes" by an action. It can be withdrawn.</li>
            <li><strong>Notice:</strong> people must be told what data is collected and why, in clear and plain language. They can ask for it in English or a language listed in the Constitution's Eighth Schedule.</li>
            <li><strong>Some uses without consent:</strong> the Act lists "legitimate uses", for example treatment in a medical emergency that threatens life.</li>
            <li><strong>Security and breaches:</strong> the hospital must take reasonable security safeguards. If data leaks, it must tell the affected people and the Data Protection Board.</li>
            <li><strong>Penalties:</strong> the Act allows very large penalties. The highest, for failing to take reasonable security safeguards, can go up to ₹250 crore.</li>
          </ul>
          <p><strong>DPDP Rules, 2025.</strong> The Rules were notified in November 2025 and start in phases. Most duties were set to start 18 months later, in May 2027. These include consent notices, security measures such as encryption and access logs, and breach reports. A detailed breach report to the Board is due within 72 hours. The government has discussed changing some dates, so check the current position. For children's data, parental consent is the usual rule. Clinics and healthcare professionals are exempt to the extent needed to protect the child's health.</p>
          <p><strong>Telemedicine Practice Guidelines, 2020.</strong> If the patient starts a teleconsultation, consent is implied. If a doctor, health worker or caregiver starts it, the patient must give explicit consent, for example by text, email, audio or video message. The doctor must keep records of the consultation, including consent, history, reports and prescriptions.</p>
          <p>There is no single Indian rule only about AI scribes. Many hospitals ask for clear consent before any recording and write that consent in the note. Other countries have their own laws, such as HIPAA in the United States. This is general education, not legal advice.</p>
        </div>
        <div class="lc-card">
          <h3>Approved tools and public tools</h3>
          <table class="lc-table">
            <thead><tr><th>Question</th><th>Public chatbot (personal account)</th><th>Hospital-approved tool</th></tr></thead>
            <tbody>
              <tr><td>Contract with the hospital?</td><td>No</td><td>Yes, with a data processing agreement (a contract on how data is handled)</td></tr>
              <tr><td>Is your data used to train the AI?</td><td>It may be, depending on settings</td><td>Should be "no" in the contract</td></tr>
              <tr><td>Who can see the data?</td><td>Not controlled by the hospital</td><td>Only staff with access, with logs</td></tr>
              <tr><td>Where is data stored, and for how long?</td><td>Not controlled by the hospital</td><td>Set by contract and hospital policy</td></tr>
              <tr><td>Use with real patient data?</td><td><strong>Never</strong></td><td>Yes, within the hospital policy</td></tr>
            </tbody>
          </table>
          <p>Before a pilot, Dr Farida Shaikh at Tarang asks the vendor these questions in writing. The hospital's IT and legal teams check the answers. Features and terms change, so check the tool's current terms.</p>
        </div>
        <div class="lc-card">
          <h3>Removing identifiers</h3>
          <p><strong>Direct identifiers</strong> name a person on their own. <strong>Indirect identifiers</strong> can point to one person when combined. Remove or replace both when you do not need them.</p>
          <ul class="lc-list">
            <li><strong>Direct:</strong> names of the patient and relatives, phone, email, address and photos. Also the UHID or IP number (hospital record numbers), the ABHA number (the national health ID under ABDM) and the Aadhaar number.</li>
            <li><strong>Indirect:</strong> exact dates, a rare job, a small village, a rare disease, a well-known event.</li>
          </ul>
          <pre><code>Before: Prakash Kulkarni, 58, UHID TMH-2026-04817, admitted 14/09/2026.
        After:  [NAME], 58, [UHID], admitted Day 1.</code></pre>
          <p>Replacing names with codes is not full anonymisation. If the hospital can link the code back to the person, it is still personal data. One more rule: do not paste a real note into a public AI tool <em>to</em> remove identifiers. That already shares the data. For practice, use made-up patients, as this course does.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: using an AI scribe safely</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Dr Arvind Joshi wants to use an approved AI scribe in his OPD. Put his steps in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Check that the scribe is on the clinic's approved tools list</li>
              <li data-order="2">Tell the patient what will be recorded and why, in a language they understand</li>
              <li data-order="3">Get a clear yes, and write the consent in the note</li>
              <li data-order="4">Record only the consultation, then stop the recording</li>
              <li data-order="5">Read the AI draft against what he heard and saw, and fix errors</li>
              <li data-order="6">Sign the note, and keep or delete the audio as the policy says</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Practise removing identifiers from a made-up note. Real notes must only go into a hospital-approved tool.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a privacy assistant for [a hospital in India]. The note below is made up for training. It is not a real patient.

        Tasks:
        1. Rewrite the note. Replace direct identifiers with tags: [NAME], [RELATIVE], [PHONE], [ADDRESS], [UHID], [ABHA]. Change exact dates to Day 1, Day 2 and so on.
        2. Keep every clinical fact exactly as written. Do not add, remove or change any clinical detail.
        3. After the note, list every change you made.
        4. List any indirect details that could still identify the person, and suggest how to handle each one.

        Note (you may replace it with [your own made-up note]):
        Prakash Kulkarni, 58, male, UHID TMH-2026-04817, ABHA 91-2345-6789-0123, phone 99999 00000. Lives at Flat 4, Sai Kripa Society, Station Road. Wife Sunanda Kulkarni gave the history. Retired bank clerk. Admitted 14/09/2026 with fever for 4 days, cough and right-sided chest pain. SpO2 91% on room air. Chest X-ray: right lower lobe consolidation. Discharged 18/09/2026.</pre>
            <ul class="ai-try-checks">
              <li>The name, wife's name, phone, address, UHID and ABHA number are all replaced.</li>
              <li>The dates become Day 1 and Day 5 (14 to 18 September is 4 days later).</li>
              <li>Clinical facts stay the same: SpO2 91%, right lower lobe consolidation, 4 days of fever.</li>
              <li>It flags indirect details such as "retired bank clerk" and "Station Road".</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Privacy comes before speed. Use only hospital-approved tools for real patient data. Get and record consent before recording. Share the minimum data needed. Practise with made-up patients, and check the current law with your hospital's legal team.
        </div>
      HTML
      starter_code: nil
    },
    4 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-health">Healthcare</div>
          <h1 class="lc-title">Types of Clinical Documents</h1>
        </div>
        <p class="lc-lead">A patient's journey creates many documents. Each one has a different reader and different required parts. In this lesson you will learn six common types: OPD notes, admission notes, progress notes, operation notes, discharge summaries and referral letters. You will see what goes in each, who writes and signs it, and where AI can help with a draft. Knowing the parts is the first step. AI can only fill a template well if you know what a complete document looks like.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 250" role="img" aria-label="A patient journey from left to right: OPD visit, admission, ward days, surgery, discharge and referral. Under each stage is the document it creates: OPD note, admission note, progress notes, operation note, discharge summary and referral letter, with when each is written.">
            <defs><marker id="md4a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12.5" fill="#e2e0f0" text-anchor="middle">
              <rect x="12" y="20" width="106" height="36" rx="18" fill="#27274e" stroke="#3b82f6"/><text x="65" y="43">OPD visit</text>
              <rect x="138" y="20" width="106" height="36" rx="18" fill="#27274e" stroke="#3b82f6"/><text x="191" y="43">Admission</text>
              <rect x="264" y="20" width="106" height="36" rx="18" fill="#27274e" stroke="#3b82f6"/><text x="317" y="43">Ward days</text>
              <rect x="390" y="20" width="106" height="36" rx="18" fill="#27274e" stroke="#3b82f6" stroke-dasharray="5 4"/><text x="443" y="43">Surgery</text>
              <rect x="516" y="20" width="106" height="36" rx="18" fill="#27274e" stroke="#3b82f6"/><text x="569" y="43">Discharge</text>
              <rect x="642" y="20" width="106" height="36" rx="18" fill="#27274e" stroke="#3b82f6"/><text x="695" y="43">Referral</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#md4a)">
                <line x1="119" y1="38" x2="135" y2="38"/><line x1="245" y1="38" x2="261" y2="38"/><line x1="371" y1="38" x2="387" y2="38"/><line x1="497" y1="38" x2="513" y2="38"/><line x1="623" y1="38" x2="639" y2="38"/>
                <line x1="65" y1="58" x2="65" y2="92"/><line x1="191" y1="58" x2="191" y2="92"/><line x1="317" y1="58" x2="317" y2="92"/><line x1="443" y1="58" x2="443" y2="92"/><line x1="569" y1="58" x2="569" y2="92"/><line x1="695" y1="58" x2="695" y2="92"/>
              </g>
              <rect x="12" y="96" width="106" height="78" rx="10" fill="#1f1f44" stroke="#ef4444"/>
              <text x="65" y="120" font-weight="700">OPD</text><text x="65" y="138" font-weight="700">note</text><text x="65" y="161" font-size="10.5" fill="#9b99b8">every visit</text>
              <rect x="138" y="96" width="106" height="78" rx="10" fill="#1f1f44" stroke="#ef4444"/>
              <text x="191" y="120" font-weight="700">Admission</text><text x="191" y="138" font-weight="700">note</text><text x="191" y="161" font-size="10.5" fill="#9b99b8">on admission</text>
              <rect x="264" y="96" width="106" height="78" rx="10" fill="#1f1f44" stroke="#ef4444"/>
              <text x="317" y="120" font-weight="700">Progress</text><text x="317" y="138" font-weight="700">notes</text><text x="317" y="161" font-size="10.5" fill="#9b99b8">every day</text>
              <rect x="390" y="96" width="106" height="78" rx="10" fill="#1f1f44" stroke="#ef4444" stroke-dasharray="5 4"/>
              <text x="443" y="120" font-weight="700">Operation</text><text x="443" y="138" font-weight="700">note</text><text x="443" y="161" font-size="10.5" fill="#9b99b8">after surgery</text>
              <rect x="516" y="96" width="106" height="78" rx="10" fill="#1f1f44" stroke="#ef4444"/>
              <text x="569" y="120" font-weight="700">Discharge</text><text x="569" y="138" font-weight="700">summary</text><text x="569" y="161" font-size="10.5" fill="#9b99b8">before leaving</text>
              <rect x="642" y="96" width="106" height="78" rx="10" fill="#1f1f44" stroke="#ef4444"/>
              <text x="695" y="120" font-weight="700">Referral</text><text x="695" y="138" font-weight="700">letter</text><text x="695" y="161" font-size="10.5" fill="#9b99b8">when sending on</text>
              <rect x="12" y="196" width="736" height="40" rx="10" fill="#27274e" stroke="#10b981"/>
              <text x="380" y="221" font-size="12">One record: same patient ID, with a date, time and signature on every entry</text>
            </g>
          </svg>
          <figcaption>Each stage of care creates its own document. Surgery (dashed) happens only for some patients.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The six documents at a glance</h3>
          <table class="lc-table">
            <thead><tr><th>Document</th><th>Main purpose</th><th>Key parts</th><th>Written and signed by</th></tr></thead>
            <tbody>
              <tr><td><strong>OPD note</strong> (outpatient note)</td><td>Record one clinic visit</td><td>Complaint, history, examination, diagnosis, medicines, advice, review date</td><td>The consulting doctor</td></tr>
              <tr><td><strong>Admission note</strong></td><td>Show why the patient was admitted and the first plan</td><td>Presenting complaint, history, past illness, medicines, allergies, examination, first results, working diagnosis, plan</td><td>Admitting doctor; consultant confirms</td></tr>
              <tr><td><strong>Progress note</strong></td><td>Track each day's change</td><td>Symptoms, vital signs, new results, assessment, plan changes and reasons</td><td>Doctor on the ward round; nurses keep their own notes</td></tr>
              <tr><td><strong>Operation note</strong></td><td>Record exactly what was done in theatre</td><td>Procedure, side, surgeon and team, anaesthesia, findings, implants, specimens, blood loss, closure, post-op orders</td><td>The operating surgeon</td></tr>
              <tr><td><strong>Discharge summary</strong></td><td>Hand care to the patient and the next doctor</td><td>Diagnosis, course, key results, procedures, medicines (new, changed, stopped), pending results, follow-up, warning signs</td><td>Treating doctor; consultant signs</td></tr>
              <tr><td><strong>Referral letter</strong></td><td>Ask another doctor to see the patient</td><td>Reason and question, urgency, history, results, current medicines, allergies, contact details</td><td>The referring doctor</td></tr>
            </tbody>
          </table>
          <p>Hospitals use their own formats, and accreditation bodies such as NABH set expectations. Check your hospital's templates.</p>
        </div>
        <div class="lc-card">
          <h3>Worked example: one made-up patient, many documents</h3>
          <p>Mr Prakash Kulkarni, 58, is a made-up patient at Tarang Multispeciality Hospital. He has type 2 diabetes and was admitted with pneumonia (a lung infection). Here is a short part of his admission note, written by the resident, Dr Neha Pawar:</p>
          <pre><code>Presenting complaint: Fever 4 days, cough with yellow sputum,
        right-sided chest pain on deep breathing 2 days.
        Past history: Type 2 diabetes 8 years. Metformin 500 mg twice
        daily, glimepiride 1 mg once daily. No known drug allergies.
        Examination: T 38.6 °C, pulse 108/min, BP 124/78 mmHg,
        RR 24/min, SpO2 91% on room air. Crackles, right lower chest.
        Working diagnosis: Community-acquired pneumonia, right lower lobe.
        Type 2 diabetes with high blood glucose (RBS 312 mg/dL).</code></pre>
          <p>Over 5 days he gets 4 more progress notes and one discharge summary. The same facts must match across all of them. If the admission note says "no known drug allergies", the discharge summary must say the same. A good check is to compare the medicine list in the discharge summary with the last day's drug chart.</p>
        </div>
        <div class="lc-card">
          <h3>Where AI fits in each document</h3>
          <ul class="lc-list">
            <li><strong>Templates:</strong> AI can draft a clear template with every required heading. A senior clinician approves the template before use.</li>
            <li><strong>Filling from sources:</strong> an approved tool can fill a template from notes and results. Any field without a source should say "Not documented", not a guess.</li>
            <li><strong>Consistency checks:</strong> AI can compare two documents and list differences, such as a dose that changed between the drug chart and the summary.</li>
            <li><strong>What stays with people:</strong> the diagnosis, medicines, doses, the side of an operation and consent. The operating surgeon writes or confirms every line of the operation note.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Activity: which document is this line from?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Each line comes from a made-up patient record at Tarang. Sort it into the document where it belongs.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="adm" data-label="Admission note"></div>
              <div data-sorter-target="bucket" data-bucket="prog" data-label="Progress note"></div>
              <div data-sorter-target="bucket" data-bucket="op" data-label="Operation note"></div>
              <div data-sorter-target="bucket" data-bucket="dis" data-label="Discharge summary"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="adm" data-why="Why the patient came in is the start of the admission note.">Presenting complaint: fever 4 days, cough with yellow sputum</li>
              <li data-bucket="adm" data-why="Past illness, home medicines and allergies are taken at admission.">Past history: type 2 diabetes for 8 years; no known drug allergies</li>
              <li data-bucket="prog" data-why="It records one day's change and the reason for a plan change.">Day 3: no fever since last night. SpO2 95% on room air, so oxygen stopped.</li>
              <li data-bucket="prog" data-why="A dose change with its reason, written on the ward round.">Glucose 180-260 mg/dL overnight; glargine increased to 14 units</li>
              <li data-bucket="op" data-why="Blood loss and specimens are recorded by the surgeon after an operation.">Estimated blood loss 50 mL. Specimen sent for histopathology.</li>
              <li data-bucket="dis" data-why="Medicines are marked new, changed or stopped for the patient and the next doctor.">Metformin 1000 mg twice daily (CHANGED: was 500 mg twice daily)</li>
              <li data-bucket="dis" data-why="Warning signs and when to return are part of discharge advice.">Come back at once, or call 108 or 112, if fever returns or breathing gets worse</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to build a template for one document type, then fill it from made-up facts. Watch how it handles missing information.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a clinical documentation lead at [a 200-bed hospital in India]. Create a clear template for a [discharge summary for a medical ward patient].

        1. List the required headings in order. Under each, write one line on what goes there.
        2. Mark the fields that must never be blank: allergies; each medicine with dose, route, frequency and duration; medicines new, changed or stopped; pending results; follow-up date; warning signs.
        3. Fill the template with the made-up facts below. If a field has no fact, write "Not documented: ask the treating doctor". Do not invent anything.
        4. End with a sign-off box: prepared by, checked and signed by (name, registration number, date, time).

        Made-up facts: Mr Prakash Kulkarni, 58. Pneumonia, right lower lobe. Type 2 diabetes, HbA1c 9.1%. IV ceftriaxone 3 days, then cefuroxime 500 mg tablets twice daily until 20 Sept 2026. Metformin increased to 1000 mg twice daily. Glimepiride 1 mg once daily unchanged. Blood culture final report pending.</pre>
            <ul class="ai-try-checks">
              <li>Allergies and the follow-up date say "Not documented", because the facts do not give them.</li>
              <li>The pending blood culture appears in its own field.</li>
              <li>Metformin is marked as changed, with the old and new dose.</li>
              <li>No doses, dates or results are made up.</li>
              <li>There is a clear sign-off box for a named clinician.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Each clinical document has a job, a reader and required parts. When you know the parts, you can give AI a good template and spot what is missing. Facts must match across every document for the same patient.
        </div>
      HTML
      starter_code: nil
    },
    5 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-health">Healthcare</div>
          <h1 class="lc-title">SOAP Notes with AI</h1>
        </div>
        <p class="lc-lead">SOAP is a simple way to organise a clinical note: Subjective, Objective, Assessment and Plan. Many clinics use it for OPD notes and daily progress notes. In this lesson you will learn what goes in each part. You will turn a made-up consultation into a SOAP draft with AI, then check the draft line by line. You will also see the errors AI often makes, such as adding a test that was never done. AI drafts the note. The doctor checks it and signs it.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="A made-up consultation on the left, with quotes from the patient and the doctor. Arrows lead to four boxes on the right: S for subjective, O for objective, A for assessment and P for plan, each with an example. A line at the bottom says AI drafts, Dr Joshi checks, then signs.">
            <defs><marker id="md5a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <rect x="15" y="15" width="275" height="236" rx="12" fill="#1f1f44" stroke="#4b4a78"/>
              <text x="152" y="40" text-anchor="middle" font-weight="700">Consultation (made up)</text>
              <g font-size="11.5">
                <text x="30" y="72" fill="#93c5fd">Patient: "145, 150 on top at home."</text>
                <text x="30" y="100" fill="#93c5fd">Patient: "I forget 2 days a week."</text>
                <text x="30" y="128" fill="#93c5fd">Patient: "Ankles swell by evening."</text>
                <text x="30" y="156" fill="#6ee7b7">Doctor: "BP is 148 by 94."</text>
                <text x="30" y="184" fill="#6ee7b7">Doctor: "Swelling may be amlodipine."</text>
                <text x="30" y="212" fill="#6ee7b7">Doctor: "Adding telmisartan 40 mg."</text>
              </g>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#md5a)">
                <line x1="292" y1="100" x2="336" y2="41"/>
                <line x1="292" y1="140" x2="336" y2="101"/>
                <line x1="292" y1="170" x2="336" y2="161"/>
                <line x1="292" y1="200" x2="336" y2="221"/>
              </g>
              <rect x="340" y="15" width="405" height="52" rx="10" fill="#27274e" stroke="#3b82f6"/>
              <text x="355" y="37" font-weight="700">S · Subjective: what the patient says</text>
              <text x="355" y="56" font-size="11" fill="#9b99b8">Home BP 145-150/92-95; misses 2 doses a week</text>
              <rect x="340" y="75" width="405" height="52" rx="10" fill="#27274e" stroke="#10b981"/>
              <text x="355" y="97" font-weight="700">O · Objective: what is measured or seen</text>
              <text x="355" y="116" font-size="11" fill="#9b99b8">BP 148/94, repeat 146/92; trace oedema, both ankles</text>
              <rect x="340" y="135" width="405" height="52" rx="10" fill="#27274e" stroke="#f59e0b"/>
              <text x="355" y="157" font-weight="700">A · Assessment: the doctor's view</text>
              <text x="355" y="176" font-size="11" fill="#9b99b8">Hypertension not at target; oedema likely amlodipine</text>
              <rect x="340" y="195" width="405" height="52" rx="10" fill="#27274e" stroke="#ec4899"/>
              <text x="355" y="217" font-weight="700">P · Plan: what happens next</text>
              <text x="355" y="236" font-size="11" fill="#9b99b8">Add telmisartan 40 mg; creatinine and K in 2 weeks</text>
              <text x="380" y="285" text-anchor="middle" font-size="12.5" fill="#fca5a5">AI drafts  ·  Dr Joshi checks against the consultation  ·  Dr Joshi signs</text>
            </g>
          </svg>
          <figcaption>Each sentence from the consultation goes to one SOAP part. The doctor checks that nothing was added or lost.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The four parts of SOAP</h3>
          <table class="lc-table">
            <thead><tr><th>Part</th><th>What goes in</th><th>Common mistake</th></tr></thead>
            <tbody>
              <tr><td><strong>S: Subjective</strong></td><td>What the patient or family says: symptoms, how long, home readings, how they take their medicines</td><td>Leaving out things the patient says that change the plan, such as missed doses</td></tr>
              <tr><td><strong>O: Objective</strong></td><td>What is measured or seen: vital signs, examination, test results</td><td>Adding a finding or test that was not done</td></tr>
              <tr><td><strong>A: Assessment</strong></td><td>The doctor's view: diagnosis, whether it is controlled, likely causes</td><td>Letting AI write a diagnosis the doctor did not make</td></tr>
              <tr><td><strong>P: Plan</strong></td><td>Medicines, tests, advice, safety-net advice (when to seek urgent help), review date</td><td>Wrong dose, or a missing review date or warning signs</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Worked example: Dr Joshi's consultation</h3>
          <p>Mr Ramesh Patidar, 52, is a made-up patient at Nirmal Family Clinic. He has high blood pressure (hypertension) and takes amlodipine 5 mg once daily. He agreed to the clinic's approved AI scribe for this visit. Here is part of the made-up transcript:</p>
          <pre><code>Patient: At home the machine shows 145, 150 on top. Bottom 92, 95.
        Patient: Maybe two days a week I forget, when the shop is busy.
        Patient: My ankles swell a little by evening. For two months now.
        Doctor:  Any chest pain or breathlessness?  Patient: No.
        Doctor:  BP is 148 by 94. Pulse 78, regular. Slight swelling at
                 both ankles. ... Again: 146 by 92.
        Doctor:  The swelling can come from amlodipine, so I will not
                 increase it. I am adding telmisartan 40 mg every morning.
                 Creatinine and potassium test in two weeks. BP diary twice
                 a day. Less salt, walk 30 minutes. Come back in four weeks.
                 Chest pain or weakness on one side: call 108 at once.</code></pre>
          <p>The AI scribe gave this draft. It looks neat. It has three errors.</p>
          <pre><code>S: Home BP 145-150/92-95. Ankle swelling 2 months. No chest pain.
        O: BP 148/94. Pulse 78 regular. Bilateral ankle oedema.
           ECG: normal sinus rhythm.
        A: Hypertension, not at target.
        P: Amlodipine increased to 10 mg. Add telmisartan 40 mg once
           daily. Creatinine and potassium in 2 weeks. Review 4 weeks.</code></pre>
          <table class="lc-table">
            <thead><tr><th>Error in the draft</th><th>Type</th><th>Correct version</th></tr></thead>
            <tbody>
              <tr><td>"ECG: normal sinus rhythm"</td><td>Made-up finding</td><td>Delete. No ECG was done at this visit.</td></tr>
              <tr><td>"Amlodipine increased to 10 mg"</td><td>Wrong medicine change</td><td>Continue amlodipine 5 mg once daily. The doctor said he would not increase it.</td></tr>
              <tr><td>Missed doses and the repeat BP are not there</td><td>Missed details</td><td>S: misses about 2 doses a week. O: repeat BP 146/92.</td></tr>
            </tbody>
          </table>
          <p>The draft also lost the 108 safety advice. Dr Joshi adds it, with the salt and walking advice and the BP diary. Then he signs.</p>
        </div>
        <div class="lc-card">
          <h3>A checklist before you sign a SOAP draft</h3>
          <ul class="lc-list">
            <li>Every number (BP, pulse, weight, results) matches what was measured.</li>
            <li>Every medicine has the right name, dose, frequency and status: new, changed, continued or stopped.</li>
            <li>Nothing is added: no test, finding or diagnosis that did not happen.</li>
            <li>Nothing important is lost: adherence, side effects, allergies, red flags.</li>
            <li>The assessment says what <em>you</em> think, not what the AI guessed.</li>
            <li>The plan has a review date and safety-net advice.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Activity: from consultation to signed note</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="check" data-label="Consent first">Dr Joshi explains the approved AI scribe to Mr Patidar in Hindi. He says yes. The consent goes in the note.</li>
              <li data-kind="tool" data-label="AI scribe">The scribe records the consultation and makes a transcript.</li>
              <li data-kind="user" data-label="Dr Joshi asks">Turn this transcript into a SOAP note. Use only facts in the transcript. Write "Not documented" for missing items.</li>
              <li data-kind="answer" data-label="AI draft">A neat SOAP note with an "ECG: normal" line and "amlodipine increased to 10 mg".</li>
              <li data-kind="warn" data-label="Catch the errors">No ECG was done. Amlodipine stays at 5 mg because of the ankle swelling.</li>
              <li data-kind="check" data-label="Compare with the source">He reads the transcript again. He adds the missed doses, the repeat BP and the 108 advice.</li>
              <li data-kind="check" data-label="Sign">He signs the corrected note with the date and time. Only now is it part of the record.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to turn a made-up consultation into a SOAP draft. Then check it against the transcript, the way Dr Joshi did.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a clinical documentation assistant for [a family doctor in India]. This consultation is made up for training.

        Turn the transcript into a SOAP note. S = what the patient says. O = examination and test findings. A = the doctor's assessment. P = the plan.
        Rules:
        - Use only facts in the transcript. Do not add tests, findings or diagnoses.
        - If a usual item is not mentioned, write "Not documented".
        - Keep every number, medicine, dose and frequency exactly as said.
        - After the note, list anything the doctor should confirm.
        - End with: "AI draft. To be checked and signed by the treating doctor."

        Transcript (or use [your own made-up transcript]):
        Patient: BP at home is 145 to 150 on top, 92 to 95 below. I forget the tablet about two days a week.
        Patient: My ankles swell by evening, for two months. No chest pain, no breathlessness.
        Doctor: BP 148 by 94, repeat 146 by 92. Pulse 78, regular. Slight swelling at both ankles.
        Doctor: This can come from amlodipine, so keep it at 5 mg. Add telmisartan 40 mg every morning. Creatinine and potassium in two weeks. BP diary twice a day. Less salt, walk 30 minutes. Review in four weeks. Chest pain or weakness on one side: call 108.</pre>
            <ul class="ai-try-checks">
              <li>Amlodipine stays at 5 mg; telmisartan 40 mg is new, once every morning.</li>
              <li>No ECG, allergy or other finding is made up. Missing items say "Not documented".</li>
              <li>S includes the missed doses and the ankle swelling. O has both BP readings.</li>
              <li>P has the blood test, BP diary, lifestyle advice, 4-week review and the 108 advice.</li>
              <li>It ends with the line saying a doctor must check and sign.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> SOAP gives every note the same clear shape: what the patient says, what you find, what you think and what happens next. AI can sort a consultation into SOAP in seconds. You must still check every number, medicine and finding against the source before you sign.
        </div>
      HTML
      starter_code: nil
    },
    6 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-health">Healthcare</div>
          <h1 class="lc-title">AI Scribes and Voice Notes</h1>
        </div>
        <p class="lc-lead">An AI scribe listens to a consultation and drafts the note for the doctor. It can give the doctor back time and eye contact with the patient. It also brings new risks. It can mishear a dose, lose a "no", or mix up who said what. In this lesson you will learn how scribes work and how to take consent. You will see why Indian accents and mixed languages cause errors, and how to check a scribe draft before you sign. The scribe writes a draft. The doctor who heard the patient checks it and signs it.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 290" role="img" aria-label="Six steps from left to right: consent, record, transcribe, AI drafts, doctor checks, doctor signs. Under the record, transcribe and draft steps, a red panel shows where errors enter: noise, speech with accents and mixed languages, and drafting errors. A green panel on the right shows that the doctor catches them by checking numbers, doses, negatives and speakers.">
            <defs><marker id="md6a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12.5" fill="#e2e0f0" text-anchor="middle">
              <rect x="12" y="30" width="110" height="62" rx="10" fill="#27274e" stroke="#10b981"/>
              <text x="67" y="56" font-weight="700">Consent</text>
              <text x="67" y="76" font-size="11" fill="#9b99b8">ask and record</text>
              <rect x="138" y="30" width="110" height="62" rx="10" fill="#27274e" stroke="#3b82f6"/>
              <text x="193" y="56" font-weight="700">Record</text>
              <text x="193" y="76" font-size="11" fill="#9b99b8">the consultation</text>
              <rect x="264" y="30" width="110" height="62" rx="10" fill="#27274e" stroke="#3b82f6"/>
              <text x="319" y="56" font-weight="700">Transcribe</text>
              <text x="319" y="76" font-size="11" fill="#9b99b8">speech to text</text>
              <rect x="390" y="30" width="110" height="62" rx="10" fill="#27274e" stroke="#8b5cf6"/>
              <text x="445" y="56" font-weight="700">AI drafts</text>
              <text x="445" y="76" font-size="11" fill="#9b99b8">SOAP note draft</text>
              <rect x="516" y="30" width="110" height="62" rx="10" fill="#27274e" stroke="#f59e0b" stroke-width="2"/>
              <text x="571" y="56" font-weight="700">Doctor checks</text>
              <text x="571" y="76" font-size="11" fill="#9b99b8">every line</text>
              <rect x="642" y="30" width="110" height="62" rx="10" fill="#27274e" stroke="#10b981" stroke-width="2"/>
              <text x="697" y="56" font-weight="700">Doctor signs</text>
              <text x="697" y="76" font-size="11" fill="#9b99b8">audio per policy</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#md6a)">
                <line x1="123" y1="61" x2="135" y2="61"/><line x1="249" y1="61" x2="261" y2="61"/><line x1="375" y1="61" x2="387" y2="61"/><line x1="501" y1="61" x2="513" y2="61"/><line x1="627" y1="61" x2="639" y2="61"/>
              </g>
              <g stroke="#ef4444" stroke-width="1.2" stroke-dasharray="4 4">
                <line x1="193" y1="94" x2="193" y2="128"/><line x1="319" y1="94" x2="319" y2="128"/><line x1="445" y1="94" x2="445" y2="128"/>
              </g>
              <rect x="130" y="128" width="378" height="118" rx="12" fill="#1f1f44" stroke="#ef4444"/>
              <text x="319" y="150" font-weight="700" fill="#fca5a5">Where errors enter</text>
              <text x="193" y="176" font-weight="700">Noise</text>
              <text x="193" y="196" font-size="11" fill="#9b99b8">busy OPD, fans,</text>
              <text x="193" y="211" font-size="11" fill="#9b99b8">people talking</text>
              <text x="193" y="226" font-size="11" fill="#9b99b8">at the same time</text>
              <text x="319" y="176" font-weight="700">Speech</text>
              <text x="319" y="196" font-size="11" fill="#9b99b8">accents, numbers,</text>
              <text x="319" y="211" font-size="11" fill="#9b99b8">Hindi and English</text>
              <text x="319" y="226" font-size="11" fill="#9b99b8">in one sentence</text>
              <text x="445" y="176" font-weight="700">Drafting</text>
              <text x="445" y="196" font-size="11" fill="#9b99b8">made-up lines,</text>
              <text x="445" y="211" font-size="11" fill="#9b99b8">lost details,</text>
              <text x="445" y="226" font-size="11" fill="#9b99b8">wrong speaker</text>
              <rect x="532" y="128" width="216" height="118" rx="12" fill="#1f1f44" stroke="#10b981" stroke-width="2"/>
              <text x="640" y="150" font-weight="700" fill="#6ee7b7">The doctor catches them</text>
              <text x="640" y="180" font-size="11" fill="#9b99b8">reads the whole draft</text>
              <text x="640" y="200" font-size="11" fill="#9b99b8">checks numbers and doses</text>
              <text x="640" y="220" font-size="11" fill="#9b99b8">checks every "no" and speaker</text>
              <line x1="509" y1="187" x2="528" y2="187" stroke="#10b981" stroke-width="1.5" marker-end="url(#md6a)"/>
              <text x="380" y="276" font-size="12" fill="#fca5a5">Consent comes first. The signature comes last. Nothing is saved before both.</text>
            </g>
          </svg>
          <figcaption>Errors can enter at the recording, the transcript and the draft. The doctor's check is the last and most important safety step.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>How an AI scribe works, in general</h3>
          <p>An <strong>ambient scribe</strong> is a tool that listens in the background during a consultation. Products differ, but most follow the same steps:</p>
          <ol class="lc-list">
            <li><strong>Record:</strong> a phone, tablet or desk microphone records the conversation.</li>
            <li><strong>Transcribe:</strong> speech recognition turns the audio into text (a transcript). Some tools label each speaker, such as "doctor" and "patient".</li>
            <li><strong>Draft:</strong> a language model turns the transcript into a note, often in SOAP format or the clinic's template.</li>
            <li><strong>Review:</strong> the doctor reads and edits the draft, then signs it in the clinic system.</li>
          </ol>
          <p>Before a pilot, ask the vendor in writing: Where is the audio stored, and for how long? Is it used to train the AI? Which languages and accents does it support? Can it label speakers? Does it add any diagnosis or treatment suggestions? A tool that suggests diagnoses may count as a medical device under India's Medical Devices Rules, 2017. Features change, so check the tool's current help pages and contract.</p>
        </div>
        <div class="lc-card">
          <h3>Consent before the recording starts</h3>
          <p>The patient must know what is being recorded and why. They must be free to say no, with no effect on their care. Explain in a language the patient understands. Record the answer in the note. If a relative is in the room, their voice is recorded too, so tell them as well.</p>
          <p>Here is a short script Dr Arvind Joshi uses at Nirmal Family Clinic (a made-up clinic). Your clinic's policy and legal team should approve your own wording.</p>
          <pre><code>English: I would like to record our talk with an AI helper.
                 It helps me write your note correctly and quickly.
                 The recording is kept safely, as the clinic's rules
                 say. I will check the note myself. You can say no.
                 Your treatment will be the same. Is that all right?

        Hindi:   मैं एक AI सहायक की मदद से हमारी बातचीत रिकॉर्ड करना चाहता हूँ।
                 इससे आपका नोट सही और जल्दी लिखा जाएगा। रिकॉर्डिंग क्लिनिक
                 के नियमों के अनुसार सुरक्षित रखी जाएगी। नोट मैं खुद जाँचूँगा। आप मना
                 कर सकते हैं। आपके इलाज पर कोई असर नहीं पड़ेगा। क्या आप
                 सहमत हैं?

        Note line: AI scribe explained in Hindi. Verbal consent given.
                   [time]. Dr A. Joshi.</code></pre>
          <p>Pause the recording for parts the patient wants kept private, or if they change their mind. This is general guidance, not legal advice.</p>
        </div>
        <div class="lc-card">
          <h3>Indian accents, mixed languages and the errors to watch</h3>
          <p>Many Indian consultations mix languages in one sentence. A patient may say "Subah sar mein dard hota hai, doctor, two-three times a week." Speech tools may handle this well, badly, or not at all. They may also struggle with accents, fast speech and medicine names. Test the tool with your own staff and patients before you trust it.</p>
          <table class="lc-table">
            <thead><tr><th>Error type</th><th>Made-up example</th><th>What to check</th></tr></thead>
            <tbody>
              <tr><td><strong>Misheard number</strong></td><td>"Forty" becomes "fourteen": telmisartan 14 mg</td><td>Every dose, reading and duration. Is it a strength that is actually made?</td></tr>
              <tr><td><strong>Sound-alike medicine</strong></td><td>"Amlodipine" becomes "amiodarone", a very different heart medicine</td><td>Every medicine name against what you prescribed</td></tr>
              <tr><td><strong>Lost "no"</strong></td><td>"No chest pain" becomes "chest pain"</td><td>Every negative finding and red flag</td></tr>
              <tr><td><strong>Wrong speaker</strong></td><td>"My father had a stroke" becomes "patient had a stroke"</td><td>Family history, and what the relative said</td></tr>
              <tr><td><strong>Meaning changed in translation</strong></td><td>"Chakkar aata hai" written as "vertigo". The patient may mean feeling faint.</td><td>Ask the patient what they mean. Do not let the AI choose.</td></tr>
              <tr><td><strong>Made-up content</strong></td><td>"ECG normal" when no ECG was done</td><td>Every test and finding. Was it really done today?</td></tr>
            </tbody>
          </table>
          <p><strong>A simple habit that helps:</strong> say the plan out loud clearly at the end. For example: "So, telmisartan forty milligrams, one tablet every morning. Amlodipine stays at five." The patient hears the plan again. The scribe gets a clear sentence to work from.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: what kind of scribe error is this?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">These errors come from made-up scribe drafts at Nirmal Family Clinic. Sort each one by its type.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="heard" data-label="Misheard word or number"></div>
              <div data-sorter-target="bucket" data-bucket="meaning" data-label="Meaning lost or changed"></div>
              <div data-sorter-target="bucket" data-bucket="source" data-label="Wrong speaker or source"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="heard" data-why="Forty and fourteen sound alike. Telmisartan is not usually made as a 14 mg tablet, which is a clue.">Dr Joshi said "telmisartan forty mg", but the draft says 14 mg</li>
              <li data-bucket="heard" data-why="Two medicine names sounded alike. A wrong medicine name is a serious safety risk.">The draft says "continue amiodarone" instead of "continue amlodipine"</li>
              <li data-bucket="meaning" data-why="The word 'no' was lost, so the meaning flipped. Always check negatives and red flags.">Mr Patidar said "no chest pain", but the draft says "reports chest pain"</li>
              <li data-bucket="meaning" data-why="'Chakkar' can mean several things. The doctor must ask and write what the patient means.">The patient said "chakkar aata hai" and the draft wrote "vertigo"</li>
              <li data-bucket="source" data-why="This was family history. Writing it as the patient's own history is a serious error.">"My father had a stroke at 70" became "patient had a stroke"</li>
              <li data-bucket="source" data-why="The scribe picked up a voice from outside the consultation. It belongs to someone else.">Pinky at reception called out another patient's name, and it appears in the note</li>
              <li data-bucket="source" data-why="The home readings are what the patient said. The clinic reading is what the doctor measured. They must stay separate.">The home BP of 150/95 is written as the BP measured in the clinic</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to check a made-up scribe transcript with mixed Hindi and English. It should flag risky lines for the doctor, not quietly fix them.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a checking assistant for [a family doctor in India]. The transcript and draft below are made up for training.

        Compare the AI scribe draft with the transcript. The transcript mixes Hindi and English.
        1. Translate each Hindi line into plain English.
        2. List every line in the draft that does not match the transcript.
        3. Flag risky items: doses, medicine names, negatives ("no"), who said what, and any medicine strength that is not usually made.
        4. Do not correct anything silently. For each flag, write a question for the doctor.
        Output: a table with columns Draft line | Transcript says | Risk | Question for the doctor.

        Transcript:
        [Speaker 1] Rameshji, BP kaisa hai?
        [Speaker 2] Ghar pe upar 145, 150 aata hai. Neeche 92, 95.
        [Speaker 2] Hafte mein do din goli bhool jaata hoon.
        [Speaker 1] Chest pain, saans phoolna?
        [Speaker 2] Nahi, chest pain nahi hai.
        [Speaker 1] BP 148 by 94. Dono ankles mein halki soojan.
        [Speaker 1] Amlodipine 5 hi rakhenge. Telmisartan fourteen mg har subah.

        Draft: Patient reports chest pain. Takes tablets daily. BP 150/95. Telmisartan 14 mg added.</pre>
            <ul class="ai-try-checks">
              <li>It translates "hafte mein do din goli bhool jaata hoon" as forgetting the tablet 2 days a week.</li>
              <li>It flags "reports chest pain" as a lost "no".</li>
              <li>It flags BP 150/95 as a home reading, not the clinic reading of 148/94.</li>
              <li>It questions telmisartan 14 mg and asks the doctor to confirm the dose.</li>
              <li>It does not change the doses or facts itself.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> An AI scribe hears words, not meaning. It can mishear numbers, drop a "no", mix up speakers and struggle with mixed languages. Take consent first, speak the plan clearly, and check every number, medicine, negative and speaker before you sign.
        </div>
      HTML
      starter_code: nil
    },
    7 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-health">Healthcare</div>
          <h1 class="lc-title">Discharge Summaries</h1>
        </div>
        <p class="lc-lead">The discharge summary is the bridge from hospital to home. The patient, the family doctor, the pharmacist and the insurer all read it. It is also one of the longest documents a resident writes. In this lesson you will learn the required parts, how to get the medicine list right, and how to write follow-up and warning signs. You will use AI to draft a summary for a made-up patient, Mr Prakash Kulkarni, and see the errors a clinician must catch. AI drafts. The treating doctor checks it against the chart, and the consultant signs.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 380" role="img" aria-label="On the left, a discharge summary with eight sections from patient details to follow-up. Four sections are marked in red: medicines, allergies, pending results, and follow-up. On the right, a box lists the sources to check against, and four red boxes show the made-up August audit gaps for those sections: medicine list did not match the chart 6, allergy status blank 3, pending test not mentioned 1, no follow-up date 4.">
            <defs><marker id="md7a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#ef4444"/></marker></defs>
            <g font-family="inherit" font-size="12.5" fill="#e2e0f0">
              <rect x="20" y="15" width="380" height="330" rx="12" fill="#1f1f44" stroke="#4b4a78"/>
              <text x="210" y="40" text-anchor="middle" font-weight="700">Discharge summary (draft)</text>
              <rect x="35" y="55" width="350" height="28" rx="6" fill="#27274e" stroke="#3b82f6"/><text x="48" y="74">Patient, dates, doctors</text>
              <rect x="35" y="89" width="350" height="28" rx="6" fill="#27274e" stroke="#3b82f6"/><text x="48" y="108">Diagnoses</text>
              <rect x="35" y="123" width="350" height="28" rx="6" fill="#27274e" stroke="#3b82f6"/><text x="48" y="142">Hospital course</text>
              <rect x="35" y="157" width="350" height="28" rx="6" fill="#27274e" stroke="#3b82f6"/><text x="48" y="176">Key results and procedures</text>
              <rect x="35" y="191" width="350" height="28" rx="6" fill="#27274e" stroke="#ef4444" stroke-width="2"/><text x="48" y="210">Medicines: new, changed, stopped</text>
              <rect x="35" y="225" width="350" height="28" rx="6" fill="#27274e" stroke="#ef4444" stroke-width="2"/><text x="48" y="244">Allergies</text>
              <rect x="35" y="259" width="350" height="28" rx="6" fill="#27274e" stroke="#ef4444" stroke-width="2"/><text x="48" y="278">Pending results</text>
              <rect x="35" y="293" width="350" height="28" rx="6" fill="#27274e" stroke="#ef4444" stroke-width="2"/><text x="48" y="312">Follow-up and warning signs</text>
              <rect x="450" y="15" width="290" height="150" rx="12" fill="#1f1f44" stroke="#10b981"/>
              <text x="595" y="40" text-anchor="middle" font-weight="700" fill="#6ee7b7">Check against the sources</text>
              <g font-size="11.5" fill="#9b99b8" text-anchor="middle">
                <text x="595" y="68">Final drug chart and discharge orders</text>
                <text x="595" y="92">Lab and X-ray reports</text>
                <text x="595" y="116">Progress and nursing notes</text>
                <text x="595" y="140">List of tests still pending</text>
              </g>
              <g font-size="12" text-anchor="middle">
                <rect x="450" y="191" width="290" height="28" rx="6" fill="#1f1f44" stroke="#ef4444"/><text x="595" y="210">Did not match the chart: 6</text>
                <rect x="450" y="225" width="290" height="28" rx="6" fill="#1f1f44" stroke="#ef4444"/><text x="595" y="244">Allergy status blank: 3</text>
                <rect x="450" y="259" width="290" height="28" rx="6" fill="#1f1f44" stroke="#ef4444"/><text x="595" y="278">Pending test not mentioned: 1</text>
                <rect x="450" y="293" width="290" height="28" rx="6" fill="#1f1f44" stroke="#ef4444"/><text x="595" y="312">No follow-up date: 4</text>
              </g>
              <g stroke="#ef4444" stroke-width="1.5" marker-end="url(#md7a)">
                <line x1="448" y1="205" x2="391" y2="205"/><line x1="448" y1="239" x2="391" y2="239"/><line x1="448" y1="273" x2="391" y2="273"/><line x1="448" y1="307" x2="391" y2="307"/>
              </g>
              <text x="380" y="368" text-anchor="middle" font-size="12" fill="#fca5a5">Made-up August audit at Tarang: 14 of 50 summaries (28%) had at least one gap</text>
            </g>
          </svg>
          <figcaption>Most gaps in the made-up audit were in four sections. These are the sections to check first in any AI draft.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The required parts</h3>
          <p>Hospitals have their own formats, and NABH (the national hospital accreditation board) sets expectations. Most discharge summaries have these parts. The examples are for the made-up patient Mr Prakash Kulkarni at Tarang Multispeciality Hospital.</p>
          <table class="lc-table">
            <thead><tr><th>Part</th><th>What to write</th><th>Made-up example</th></tr></thead>
            <tbody>
              <tr><td><strong>Patient and dates</strong></td><td>Name, age, IDs, admission and discharge dates, consultant</td><td>Mr Prakash Kulkarni, 58. 14 to 18 Sept 2026. Dr Sameer Kale.</td></tr>
              <tr><td><strong>Diagnoses</strong></td><td>Main diagnosis first, then other conditions</td><td>Community-acquired pneumonia, right lower lobe. Type 2 diabetes with high blood glucose, no ketoacidosis.</td></tr>
              <tr><td><strong>Hospital course</strong></td><td>A short story of the stay: treatment, response, key changes</td><td>Oxygen for 2 days. IV ceftriaxone 3 days, then tablets. Fever settled by day 3.</td></tr>
              <tr><td><strong>Key results</strong></td><td>Results that explain the diagnosis or need follow-up, with dates</td><td>Chest X-ray: right lower lobe consolidation. HbA1c 9.1%. CRP 96 then 48 mg/L.</td></tr>
              <tr><td><strong>Medicines</strong></td><td>Each medicine with dose, route, frequency and duration. Marked new, changed, unchanged or stopped.</td><td>See the table below</td></tr>
              <tr><td><strong>Allergies</strong></td><td>Always filled. "No known drug allergies" is an answer. A blank is not.</td><td>No known drug allergies</td></tr>
              <tr><td><strong>Pending results</strong></td><td>What is still awaited, and who will act on it</td><td>Final blood culture due 19 Sept. The ward will phone the patient if it grows anything.</td></tr>
              <tr><td><strong>Follow-up and warning signs</strong></td><td>Date, place and doctor. Tests to do. When to come back at once.</td><td>Medicine OPD, Dr Kale, 25 Sept 2026. Call 108 or 112 if breathless or confused.</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Getting the medicine list right</h3>
          <p>Medicine reconciliation means comparing the medicines before admission with the medicines at discharge. Every difference must have a status and a reason. In the made-up audit, this was the biggest gap: 6 of the 14 summaries with gaps had a medicine list that did not match the chart.</p>
          <table class="lc-table">
            <thead><tr><th>Medicine</th><th>Before admission</th><th>At discharge</th><th>Status</th></tr></thead>
            <tbody>
              <tr><td>Cefuroxime axetil</td><td>None</td><td>500 mg twice daily after food, until the evening of 20 Sept 2026</td><td><strong>NEW</strong>: completes 7 days of antibiotics in total</td></tr>
              <tr><td>Metformin</td><td>500 mg twice daily</td><td>1000 mg twice daily, after breakfast and dinner</td><td><strong>CHANGED</strong>: dose increased</td></tr>
              <tr><td>Glimepiride</td><td>1 mg once daily before breakfast</td><td>1 mg once daily before breakfast</td><td><strong>UNCHANGED</strong></td></tr>
              <tr><td>Paracetamol</td><td>None</td><td>650 mg only if fever or pain, not more than 4 tablets in 24 hours</td><td><strong>NEW</strong>, as needed</td></tr>
              <tr><td>Insulin, enoxaparin</td><td>None</td><td>Not given at home</td><td><strong>STOPPED</strong>: hospital use only</td></tr>
            </tbody>
          </table>
          <p>AI drafts often get this list wrong in three ways. They copy the admission list, which has the old metformin dose. They copy a mid-stay order, such as insulin that was later stopped. They leave out the end date of the antibiotic. Always check the list against the final drug chart and the discharge orders.</p>
        </div>
        <div class="lc-card">
          <h3>A weak prompt and a better prompt</h3>
          <pre><code>Weak prompt:   Write a discharge summary for this patient.

        Better prompt: Draft a discharge summary from the sources given.
                       Use the hospital template headings.
                       For medicines, use only the final drug chart and the
                       discharge orders. Mark each one NEW, CHANGED (old and
                       new dose), UNCHANGED or STOPPED, with the end date if
                       it is a short course.
                       List pending results in their own section.
                       If allergies, follow-up date or warning signs are
                       missing, write "Not documented". Do not guess.
                       Then list any facts that differ between sources.
                       End with "AI draft: to be checked and signed."</code></pre>
          <p>At Tarang, a resident takes about 25 minutes per summary in the made-up baseline. In the pilot, Dr Farida Shaikh's team will measure the total time, including the check. They will also compare the gap rate with the 28% baseline. A faster summary with more gaps is not an improvement.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: from AI draft to signed summary</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Dr Neha Pawar asks the approved tool">Draft a discharge summary for Mr Kulkarni from his notes, results and drug chart. Use the better prompt rules.</li>
              <li data-kind="answer" data-label="AI draft (part)">"Metformin 500 mg twice daily. Insulin glargine 14 units at night. Blood culture: no growth. Follow-up: medicine OPD."</li>
              <li data-kind="warn" data-label="Four errors">Metformin is the old dose. Insulin was stopped on 17 Sept. "No growth" was only the 48-hour report. The follow-up has no date or doctor.</li>
              <li data-kind="tool" data-label="Hospital information system">She opens the final drug chart, the discharge orders and the lab results.</li>
              <li data-kind="result" data-label="Sources show">Metformin 1000 mg twice daily. Insulin stopped on the evening of 17 Sept. Final blood culture report due 19 Sept. OPD with Dr Kale on 25 Sept.</li>
              <li data-kind="check" data-label="Fix the draft">She corrects the medicines and marks each status. She adds a pending results section. She writes the follow-up date and the warning signs.</li>
              <li data-kind="check" data-label="Consultant signs">Dr Sameer Kale reads the summary against the chart and signs it. A nurse explains the medicine list to Mr Kulkarni and his family.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to draft a discharge summary from made-up sources that do not fully agree. See whether it trusts the right source and flags what is missing.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a discharge summary assistant at [a hospital in India]. The patient is made up for training.

        Draft a discharge summary from the sources below. Rules:
        - The final drug chart wins over older notes.
        - Mark each medicine NEW, CHANGED (old and new dose), UNCHANGED or STOPPED.
        - Write "Not documented" for any missing item. Do not invent.
        - Put pending results in their own section.
        - After the summary, list every mismatch between sources.
        - End with: "AI draft: to be checked and signed by the consultant."

        Sources:
        Mr Prakash Kulkarni, 58. Admitted 14 Sept 2026, discharged 18 Sept 2026.
        Diagnoses: pneumonia, right lower lobe. Type 2 diabetes with high glucose, no ketoacidosis. HbA1c 9.1%.
        Home medicines: metformin 500 mg twice daily; glimepiride 1 mg before breakfast.
        Day 2 note: glargine increased to 14 units at night.
        Final chart, 18 Sept: cefuroxime axetil 500 mg twice daily after food until evening of 20 Sept; metformin 1000 mg twice daily; glimepiride 1 mg before breakfast; paracetamol 650 mg if fever or pain, max 4 in 24 h. Insulin stopped 17 Sept.
        Pending: final blood culture, due 19 Sept.
        Follow-up: [medicine OPD, Dr Sameer Kale, 25 Sept 2026].</pre>
            <ul class="ai-try-checks">
              <li>Metformin is marked CHANGED from 500 mg to 1000 mg twice daily.</li>
              <li>Insulin is STOPPED, not listed as a home medicine.</li>
              <li>Cefuroxime has its end date: evening of 20 September.</li>
              <li>Allergies say "Not documented", because no source gives them.</li>
              <li>The pending blood culture has its own section.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A discharge summary is only safe if its medicine list matches the final chart. Every medicine needs a dose, a frequency, a duration and a status. Allergies, pending results, a dated follow-up and warning signs must never be blank. AI can draft it in seconds, but the doctor checks it against the chart and the consultant signs.
        </div>
      HTML
      starter_code: nil
    },
    8 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-health">Healthcare</div>
          <h1 class="lc-title">Referral Letters and Handover Notes</h1>
        </div>
        <p class="lc-lead">Care often passes from one person to another: from the day team to the night team, or from one doctor to a specialist. Each hand-over is a chance for facts to be lost. In this lesson you will learn SBAR, a simple four-part way to hand over a patient. You will also learn what a good referral letter contains and what the receiving doctor needs. You will use AI to turn rough notes into a clear handover and to draft a referral letter. The clinician checks every fact and stays responsible for what is handed over.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 330" role="img" aria-label="Left: an SBAR handover for the made-up patient Mr Kulkarni on 15 September, with four boxes: Situation, fever up to 38.2 degrees today; Background, right lower lobe pneumonia and type 2 diabetes; Assessment, SpO2 94 percent on 2 litres oxygen and glucose 180 to 260; Recommendation, watch SpO2 and glucose and call if SpO2 falls below 94 percent, following the hospital protocol. Right: the eight parts of a referral letter.">
            <g font-family="inherit" font-size="12.5" fill="#e2e0f0">
              <text x="190" y="28" text-anchor="middle" font-weight="700">SBAR handover (15 Sept, evening)</text>
              <rect x="15" y="42" width="350" height="62" rx="10" fill="#27274e" stroke="#3b82f6"/>
              <circle cx="44" cy="73" r="17" fill="#1f1f44" stroke="#3b82f6"/><text x="44" y="78" text-anchor="middle" font-weight="700" font-size="14">S</text>
              <text x="72" y="66" font-weight="700">Situation</text>
              <text x="72" y="86" font-size="11" fill="#9b99b8">Mr Kulkarni, 58: fever up to 38.2 °C today</text>
              <rect x="15" y="112" width="350" height="62" rx="10" fill="#27274e" stroke="#8b5cf6"/>
              <circle cx="44" cy="143" r="17" fill="#1f1f44" stroke="#8b5cf6"/><text x="44" y="148" text-anchor="middle" font-weight="700" font-size="14">B</text>
              <text x="72" y="136" font-weight="700">Background</text>
              <text x="72" y="156" font-size="11" fill="#9b99b8">Right lower lobe pneumonia; type 2 diabetes</text>
              <rect x="15" y="182" width="350" height="62" rx="10" fill="#27274e" stroke="#f59e0b"/>
              <circle cx="44" cy="213" r="17" fill="#1f1f44" stroke="#f59e0b"/><text x="44" y="218" text-anchor="middle" font-weight="700" font-size="14">A</text>
              <text x="72" y="206" font-weight="700">Assessment</text>
              <text x="72" y="226" font-size="11" fill="#9b99b8">SpO2 94% on 2 L/min; glucose 180-260 mg/dL</text>
              <rect x="15" y="252" width="350" height="62" rx="10" fill="#27274e" stroke="#10b981" stroke-width="2"/>
              <circle cx="44" cy="283" r="17" fill="#1f1f44" stroke="#10b981"/><text x="44" y="288" text-anchor="middle" font-weight="700" font-size="14">R</text>
              <text x="72" y="276" font-weight="700">Recommendation</text>
              <text x="72" y="296" font-size="11" fill="#9b99b8">Call if SpO2 under 94%: follow hospital protocol</text>
              <text x="570" y="28" text-anchor="middle" font-weight="700">Referral letter: what to include</text>
              <rect x="395" y="42" width="350" height="272" rx="12" fill="#1f1f44" stroke="#ec4899"/>
              <g fill="#ec4899"><circle cx="418" cy="71" r="4"/><circle cx="418" cy="99" r="4"/><circle cx="418" cy="127" r="4"/><circle cx="418" cy="155" r="4"/><circle cx="418" cy="183" r="4"/><circle cx="418" cy="211" r="4"/><circle cx="418" cy="239" r="4"/><circle cx="418" cy="267" r="4"/></g>
              <text x="432" y="75" font-weight="700">The question you want answered</text>
              <text x="432" y="103">Urgency and reason</text>
              <text x="432" y="131">Diagnoses and short history</text>
              <text x="432" y="159">Key results, with dates</text>
              <text x="432" y="187">Current medicines and allergies</text>
              <text x="432" y="215">What is still pending</text>
              <text x="432" y="243">Who to contact, and how</text>
              <text x="432" y="271">Name, date and signature</text>
              <text x="570" y="299" text-anchor="middle" font-size="11" fill="#9b99b8">The question comes first, not last</text>
            </g>
          </svg>
          <figcaption>SBAR gives a spoken or written handover the same four parts every time. A referral letter starts with the question you want the specialist to answer.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>SBAR: a handover in four parts</h3>
          <p><strong>SBAR</strong> stands for Situation, Background, Assessment and Recommendation. Many hospitals use it for nurse and doctor handovers, phone calls and transfers. It makes the most important facts come first.</p>
          <table class="lc-table">
            <thead><tr><th>Part</th><th>The question it answers</th><th>Made-up example (Mr Kulkarni, 15 Sept, evening)</th></tr></thead>
            <tbody>
              <tr><td><strong>S: Situation</strong></td><td>Who is the patient, and what is happening now?</td><td>Mr Prakash Kulkarni, 58, medicine ward, day 2. Fever up to 38.2 °C today. SpO2 94% on 2 L/min oxygen.</td></tr>
              <tr><td><strong>B: Background</strong></td><td>What led to this?</td><td>Admitted 14 Sept with community-acquired pneumonia, right lower lobe. Type 2 diabetes, HbA1c 9.1%. Metformin and glimepiride on hold. IV ceftriaxone and oral azithromycin, day 2 of 3. No known drug allergies.</td></tr>
              <tr><td><strong>A: Assessment</strong></td><td>What do I think is going on?</td><td>Stable. Still has fever and needs oxygen, as can happen on day 2. Glucose 180-260 mg/dL, so glargine was increased to 14 units from tonight. Blood cultures not yet reported.</td></tr>
              <tr><td><strong>R: Recommendation</strong></td><td>What should you do, watch and call about?</td><td>Vital signs as per the ward chart. Keep SpO2 94-98%. Review him at once and inform Dr Kale if any of these happen: he needs more oxygen to keep SpO2 at 94% or more; breathing rate 25 or more; systolic BP below 100 mmHg; new confusion or drowsiness. Check bedtime and early-morning glucose. If glucose is below 70 mg/dL, follow the hypoglycaemia protocol. These "call if" rules are a made-up example: follow your hospital protocol.</td></tr>
            </tbody>
          </table>
          <p>End the handover with a <strong>read-back</strong>: the person taking over repeats the key points and the "call if" rules. This catches misheard facts. In this made-up example, Dr Neha Pawar hands over to the night resident. Real escalation rules come from your hospital's protocols and early warning score, not from AI.</p>
        </div>
        <div class="lc-card">
          <h3>What the receiving doctor needs in a referral letter</h3>
          <p>A referral letter asks another doctor to see the patient. The most common problem is a vague request, such as "Kindly see and advise". The specialist then has to guess what you want. Put a clear question first.</p>
          <p>Here is a made-up letter. Mr Kulkarni's HbA1c (a blood test for average glucose over about 3 months) is 9.1%. Dr Sameer Kale refers him for a diabetes plan.</p>
          <pre><code>To:       Consultant, Endocrinology OPD and diabetes educator,
                  Tarang Multispeciality Hospital
        From:     Dr Sameer Kale, Consultant Physician (Medicine)
        Date:     18 September 2026        Urgency: Routine
        Patient:  Mr Prakash Kulkarni, 58, male. UHID [UHID]

        Question: Please advise on a diet and glucose plan, and review
                  his diabetes medicines. His HbA1c is 9.1%.

        Background: Type 2 diabetes for 8 years. Admitted 14 to 18 Sept
                  2026 with community-acquired pneumonia, right lower
                  lobe. Random glucose 312 mg/dL on admission, no
                  ketoacidosis. Insulin in hospital, stopped on 17 Sept.
        Results:  HbA1c 9.1% (14 Sept). Creatinine 0.9 mg/dL (17 Sept).
                  Fasting glucose 142 mg/dL (18 Sept).
        Medicines: Metformin 1000 mg twice daily (increased from 500 mg).
                  Glimepiride 1 mg once daily before breakfast.
                  Cefuroxime axetil 500 mg twice daily until 20 Sept.
                  Paracetamol 650 mg only if fever or pain.
        Allergies: No known drug allergies.
        Pending:  Final blood culture report, due 19 Sept.
        Follow-up: Medicine OPD with me on 25 Sept 2026.
        Contact:  Dr Sameer Kale, Medicine. [Phone or extension]
        Signed:   Dr Sameer Kale  [Registration number]</code></pre>
        </div>
        <div class="lc-card">
          <h3>A weak prompt and a better prompt</h3>
          <pre><code>Weak prompt:   Write a referral letter to endocrinology.

        Better prompt: Draft a referral letter from the discharge summary
                       below. Start with one clear question for the
                       specialist. Then give urgency, short background,
                       key results with dates, current medicines with
                       doses, allergies, pending tests and contact details.
                       Use only facts in the summary. Write "Not documented"
                       for anything missing. Keep it under 250 words.</code></pre>
          <p>The better prompt puts the question first and limits the facts to the source. The referring doctor still decides the question and the urgency. The AI only helps to write them clearly.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: sort the handover into SBAR</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Dr Neha Pawar's made-up handover lines are mixed up. Put each line in the right SBAR part.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="s" data-label="Situation"></div>
              <div data-sorter-target="bucket" data-bucket="b" data-label="Background"></div>
              <div data-sorter-target="bucket" data-bucket="a" data-label="Assessment"></div>
              <div data-sorter-target="bucket" data-bucket="r" data-label="Recommendation"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="s" data-why="Situation says who the patient is and what is happening right now.">Mr Kulkarni, 58, day 2: he had fever up to 38.2 °C today</li>
              <li data-bucket="b" data-why="Background is the history that led here: why he was admitted.">Admitted 14 Sept with right lower lobe pneumonia; type 2 diabetes for 8 years</li>
              <li data-bucket="b" data-why="Home medicines on hold and allergy status are background facts the next doctor needs.">Metformin and glimepiride on hold; no known drug allergies</li>
              <li data-bucket="a" data-why="Assessment is the handing-over doctor's view of how the patient is doing.">Stable, but still needs 2 L/min oxygen to keep SpO2 at 94%</li>
              <li data-bucket="a" data-why="This is her judgement about the glucose, and the reason for the dose change.">Glucose is above target at 180-260 mg/dL, so glargine went up to 14 units</li>
              <li data-bucket="r" data-why="Recommendation tells the next person what to check and why.">Check his bedtime and early-morning glucose after the dose increase</li>
              <li data-bucket="r" data-why="Clear 'call if' rules are the most important part of a recommendation.">Inform Dr Kale if he needs more oxygen or becomes confused</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to turn rough, abbreviated ward notes into an SBAR handover. Check that it expands abbreviations correctly and does not add new treatment.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a handover assistant for [the medicine ward team at a hospital in India]. The notes below are made up for training.

        Turn these rough notes into an SBAR handover for the night doctor.
        Rules:
        - Expand every abbreviation into plain words.
        - Use only facts in the notes. Do not add medicines, doses or tests.
        - In Recommendation, list only what the notes say, plus questions for the treating doctor.
        - If a fact the night doctor would need is missing, write "Not documented".
        - Keep it under 180 words. End with 3 points the night doctor should read back.

        Notes (Day 1, [14 Sept 2026], evening):
        Kulkarni 58M. Adm today 11:40 via ER. Fever 4d, cough, R chest pain. SpO2 91% RA on arrival, O2 2 L started. CXR: RLL consolidation. CURB-65 0. WBC 15,800, CRP 96. RBS 312, urine ketones neg, HbA1c 9.1. T2DM 8y, metformin + glimepiride held. Ceftriaxone 2 g IV OD + azithro 500 mg OD started. BC x2 sent before abx. Glargine 10 U HS + sliding scale, CBG QID. Enoxaparin 40 mg SC OD. Evening T 38.4. NKDA.</pre>
            <ul class="ai-try-checks">
              <li>It flags the current SpO2 on oxygen as "Not documented".</li>
              <li>Abbreviations are expanded correctly, for example NKDA means no known drug allergies and QID means 4 times a day.</li>
              <li>Pending blood cultures appear in the handover.</li>
              <li>No new medicine, dose or test is added.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Handovers and referrals fail when facts are lost or the request is vague. SBAR puts the facts in a fixed order and ends with clear "call if" rules. A referral letter starts with one clear question. AI can tidy rough notes into these shapes, but the clinician checks every fact and decides what to ask.
        </div>
      HTML
      starter_code: nil
    },
    9 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-health">Healthcare</div>
          <h1 class="lc-title">Patient-Friendly Explanations</h1>
        </div>
        <p class="lc-lead">A discharge summary is written for doctors. The patient and family need something different: what happened, what to take, when to come back and when to get help fast. Many patients in India read best in Hindi, Marathi or another Indian language. In this lesson you will use AI to turn clinical text into simple English and into Hindi or Marathi. You will learn the translation errors that change meaning, and how to check them. AI drafts the words. A native speaker checks the language, and a clinician approves the content.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 270" role="img" aria-label="Eight steps in two rows. Top row: signed summary, plain English draft, Hindi or Marathi draft, back-translate. Bottom row, right to left: native speaker checks, clinician approves, teach-back with the patient, give the sheet. A dashed arrow from the native speaker check goes back to the translation step for fixes.">
            <defs>
              <marker id="md9a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker>
              <marker id="md9b" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#f59e0b"/></marker>
            </defs>
            <g font-family="inherit" font-size="12.5" fill="#e2e0f0" text-anchor="middle">
              <rect x="15" y="30" width="160" height="62" rx="10" fill="#27274e" stroke="#3b82f6"/>
              <text x="95" y="56" font-weight="700">Signed summary</text>
              <text x="95" y="76" font-size="11" fill="#9b99b8">the clinician's words</text>
              <rect x="205" y="30" width="160" height="62" rx="10" fill="#27274e" stroke="#8b5cf6"/>
              <text x="285" y="56" font-weight="700">Plain English</text>
              <text x="285" y="76" font-size="11" fill="#9b99b8">AI draft, short lines</text>
              <rect x="395" y="30" width="160" height="62" rx="10" fill="#27274e" stroke="#8b5cf6"/>
              <text x="475" y="56" font-weight="700">Hindi or Marathi</text>
              <text x="475" y="76" font-size="11" fill="#9b99b8">AI draft</text>
              <rect x="585" y="30" width="160" height="62" rx="10" fill="#27274e" stroke="#22d3ee"/>
              <text x="665" y="56" font-weight="700">Back-translate</text>
              <text x="665" y="76" font-size="11" fill="#9b99b8">into English again</text>
              <rect x="585" y="150" width="160" height="62" rx="10" fill="#27274e" stroke="#f59e0b" stroke-width="2"/>
              <text x="665" y="176" font-weight="700">Native speaker</text>
              <text x="665" y="196" font-size="11" fill="#9b99b8">checks meaning, tone</text>
              <rect x="395" y="150" width="160" height="62" rx="10" fill="#27274e" stroke="#f59e0b" stroke-width="2"/>
              <text x="475" y="176" font-weight="700">Clinician</text>
              <text x="475" y="196" font-size="11" fill="#9b99b8">approves the content</text>
              <rect x="205" y="150" width="160" height="62" rx="10" fill="#27274e" stroke="#10b981"/>
              <text x="285" y="176" font-weight="700">Teach-back</text>
              <text x="285" y="196" font-size="11" fill="#9b99b8">patient says it back</text>
              <rect x="15" y="150" width="160" height="62" rx="10" fill="#27274e" stroke="#10b981" stroke-width="2"/>
              <text x="95" y="176" font-weight="700">Give the sheet</text>
              <text x="95" y="196" font-size="11" fill="#9b99b8">copy in the file too</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#md9a)">
                <line x1="176" y1="61" x2="201" y2="61"/><line x1="366" y1="61" x2="391" y2="61"/><line x1="556" y1="61" x2="581" y2="61"/>
                <line x1="665" y1="93" x2="665" y2="146"/>
                <line x1="584" y1="181" x2="559" y2="181"/><line x1="394" y1="181" x2="369" y2="181"/><line x1="204" y1="181" x2="179" y2="181"/>
              </g>
              <path d="M612,148 Q560,112 482,96" fill="none" stroke="#f59e0b" stroke-width="1.5" stroke-dasharray="5 4" marker-end="url(#md9b)"/>
              <text x="462" y="128" font-size="11" fill="#fcd34d">fix and redo</text>
              <text x="380" y="252" font-size="12" fill="#fca5a5">AI drafts both versions. People check the meaning before the patient gets the sheet.</text>
            </g>
          </svg>
          <figcaption>The translation is not finished when the AI stops writing. It is finished when a native speaker, a clinician and the patient have all checked it.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>What makes an explanation patient-friendly</h3>
          <ul class="lc-list">
            <li><strong>Short sentences and everyday words.</strong> "Lung infection", not "consolidation".</li>
            <li><strong>No abbreviations.</strong> "BD", "SOS" and "HS" mean nothing to most patients. Write "2 times a day" or "only if you have fever".</li>
            <li><strong>Action first.</strong> Start each medicine line with what to do: "Take 1 tablet...".</li>
            <li><strong>Exact times and end dates.</strong> "Last dose: evening of 20 September" is clearer than "for 3 more days".</li>
            <li><strong>Warning signs in their own box</strong>, with the phone numbers 108 or 112.</li>
            <li><strong>Medicine names as printed on the strip,</strong> so the patient can match the sheet with the packet.</li>
          </ul>
          <table class="lc-table">
            <thead><tr><th>Clinical text</th><th>Plain English</th></tr></thead>
            <tbody>
              <tr><td>Community-acquired pneumonia, right lower lobe</td><td>You had an infection in the lower part of your right lung.</td></tr>
              <tr><td>HbA1c 9.1%</td><td>A blood test shows your average sugar over the last 2 to 3 months. Yours is high.</td></tr>
              <tr><td>Tab cefuroxime axetil 500 mg BD after food till 20/9</td><td>Take 1 cefuroxime 500 mg tablet 2 times a day, after food. Take the last one on the evening of 20 September.</td></tr>
              <tr><td>Tab PCM 650 mg SOS, max 4/24 h</td><td>Take 1 paracetamol 650 mg tablet only if you have fever or pain. Do not take more than 4 tablets in 24 hours.</td></tr>
            </tbody>
          </table>
          <p>Some word processors show a readability score for English text. Most such scores were made for English. For Hindi and Marathi, the best test is a native speaker and the patient.</p>
        </div>
        <div class="lc-card">
          <h3>Worked example: a Marathi sheet for Mr Kulkarni</h3>
          <p>Mr Prakash Kulkarni, the made-up patient, prefers Marathi. The resident asked the approved AI tool for a Marathi version of the signed advice. This sample was written for the course. A native speaker must still check any real sheet.</p>
          <pre><code>तुम्हाला काय झाले होते: उजव्या फुफ्फुसाच्या खालच्या भागात जंतुसंसर्ग
        (न्यूमोनिया) झाला होता. तुमची साखरही (शुगर) जास्त होती.

        औषधे:
        1. सेफ्युरॉक्सिम (Cefuroxime) 500 mg: दिवसातून 2 वेळा, जेवणानंतर.
           शेवटची गोळी 20 सप्टेंबरला संध्याकाळी. बरे वाटले तरी मध्येच बंद करू नका.
        2. मेटफॉर्मिन (Metformin) 1000 mg: दिवसातून 2 वेळा, नाश्त्यानंतर आणि
           रात्रीच्या जेवणानंतर. (डोस वाढवला आहे.)
        3. ग्लिमेपिराइड (Glimepiride) 1 mg: रोज 1 वेळा, नाश्त्याआधी. (बदल नाही.)
        4. पॅरासिटामॉल (Paracetamol) 650 mg: फक्त ताप किंवा दुखत असेल तेव्हा.
           24 तासांत 4 पेक्षा जास्त गोळ्या घेऊ नका.

        पुढील तपासणी: 25 सप्टेंबरला डॉ. समीर काळे यांच्या मेडिसिन OPD मध्ये या.

        लगेच रुग्णालयात या किंवा 108 / 112 वर फोन करा, जर: ताप परत आला,
        धाप लागली, छातीत दुखले, गोंधळ झाला किंवा खूप झोप येत असेल, साखर
        70 पेक्षा कमी किंवा 300 पेक्षा जास्त असेल, किंवा उलट्यांमुळे गोळ्या
        घेता येत नसतील.</code></pre>
          <p>Notice the choices. Medicine names are in both scripts. Numbers use the same digits as the strip and the glucose meter. Many patients read these digits more easily, but ask what each patient prefers. The everyday word "शुगर" is added next to "साखर", because many patients use it.</p>
        </div>
        <div class="lc-card">
          <h3>Translation errors that change the meaning</h3>
          <p>A small change in word order can change a dose. These are the errors a native speaker and a clinician must look for.</p>
          <table class="lc-table">
            <thead><tr><th>Meant</th><th>Correct</th><th>Wrong, but looks similar</th></tr></thead>
            <tbody>
              <tr><td>Twice a day (Hindi)</td><td>दिन में दो बार</td><td>दो दिन में एक बार (once every 2 days)</td></tr>
              <tr><td>Twice a day (Marathi)</td><td>दिवसातून दोन वेळा</td><td>दोन दिवसांतून एकदा (once every 2 days)</td></tr>
              <tr><td>Only if fever or pain</td><td>फक्त ताप किंवा दुखत असेल तेव्हा</td><td>"Only" is dropped, so it reads as a daily tablet</td></tr>
              <tr><td>Before breakfast</td><td>नाश्त्याआधी</td><td>नाश्त्यानंतर (after breakfast)</td></tr>
            </tbody>
          </table>
          <p>Three checks catch most of these. <strong>Back-translation:</strong> ask the AI, or a second person, to translate the sheet back into English. Compare it with the original, line by line. <strong>Native speaker check:</strong> someone who speaks the language well, and knows medical words, reads the sheet. <strong>Teach-back:</strong> ask the patient, "Tell me how you will take this tablet." If the answer is wrong, the sheet or the explanation needs to change. Use only an approved tool for real patient details.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: make and check a translated advice sheet</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put these steps for Mr Kulkarni's Marathi advice sheet in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Start from the signed discharge summary, not from rough notes</li>
              <li data-order="2">Ask the approved AI tool for a plain-English version with short sentences</li>
              <li data-order="3">Ask for a Marathi version of the checked plain-English text</li>
              <li data-order="4">Back-translate the Marathi into English and compare it line by line</li>
              <li data-order="5">A native Marathi speaker checks the words, and a clinician approves the content</li>
              <li data-order="6">Explain the sheet to Mr Kulkarni and his family, and use teach-back</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to write a patient advice sheet in plain English and in an Indian language, with a back-translation you can check.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a patient education writer at [a family clinic in India]. The patient is made up for training.

        Turn the doctor's plan below into a patient advice sheet.
        1. Plain English: short sentences, everyday words, no abbreviations. Say what each medicine is for.
        2. The same sheet in [Hindi], using everyday words a patient would use. Write medicine names in both scripts.
        3. Translate your [Hindi] sheet back into English, line by line.
        4. List the lines a native speaker and the doctor should check most carefully, and why.
        Rules: Do not add any advice, medicine or number that is not in the plan. Put warning signs in a separate box.

        Plan: Mr Ramesh Patidar, 52. High blood pressure, not at target. Continue amlodipine 5 mg once daily. Add telmisartan 40 mg once daily in the morning. Creatinine and potassium blood test in 2 weeks. Check BP at home twice a day and bring the log. Stop the daily pickle and papad. Walk 30 minutes, 5 days a week. Review on 20 October 2026. Severe headache, chest pain, weakness of face, arm or leg, or trouble speaking: call 108 or 112 at once.</pre>
            <ul class="ai-try-checks">
              <li>Amlodipine is unchanged. Telmisartan is once every morning, not "once every 2 days".</li>
              <li>The back-translation matches the plan line by line.</li>
              <li>The warning signs and 108 or 112 are in a separate box.</li>
              <li>No new advice, food rule or medicine is added.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A patient can only follow advice they understand. AI can turn a clinical summary into plain English, Hindi or Marathi in seconds. But one wrong word can turn "twice a day" into "once every two days". Back-translate, get a native speaker to check, have a clinician approve, and confirm with teach-back.
        </div>
      HTML
      starter_code: nil
    },
    10 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-health">Healthcare</div>
          <h1 class="lc-title">Medical Coding Basics</h1>
        </div>
        <p class="lc-lead">Medical coding turns the diagnoses a doctor writes into standard codes. Insurers use the codes to process claims. Hospitals and governments use them to count diseases and plan services. In this lesson you will learn how ICD-10 codes are built, how to code two made-up patients, and why the doctor's exact words decide the code. You will also learn what procedure codes are, and what the move to ICD-11 means. AI can suggest codes, but a trained coder checks each one against the notes and the official code list.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 310" role="img" aria-label="The code J18.1 in large letters, split into three parts: J is the chapter for respiratory diseases, 18 is the category for pneumonia with organism unspecified, and .1 is the subcategory for lobar pneumonia. Below, a flow from the doctor's signed note to coder Asha using the WHO ICD-10 browser, then to three uses: claims, statistics and quality.">
            <defs><marker id="md10a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12.5" fill="#e2e0f0" text-anchor="middle">
              <text x="380" y="24" fill="#9b99b8">Parts of an ICD-10 code (WHO version)</text>
              <g font-size="44" font-weight="700">
                <text x="330" y="74" fill="#93c5fd">J</text>
                <text x="378" y="74" fill="#c4b5fd">18</text>
                <text x="428" y="74" fill="#fcd34d">.1</text>
              </g>
              <g stroke="#9b99b8" stroke-width="1.2">
                <line x1="330" y1="84" x2="145" y2="108"/><line x1="378" y1="84" x2="380" y2="108"/><line x1="430" y1="84" x2="615" y2="108"/>
              </g>
              <rect x="40" y="110" width="210" height="62" rx="10" fill="#27274e" stroke="#3b82f6"/>
              <text x="145" y="136" font-weight="700">J = chapter</text>
              <text x="145" y="156" font-size="11" fill="#9b99b8">respiratory diseases, J00-J99</text>
              <rect x="275" y="110" width="210" height="62" rx="10" fill="#27274e" stroke="#8b5cf6"/>
              <text x="380" y="136" font-weight="700">18 = category</text>
              <text x="380" y="156" font-size="11" fill="#9b99b8">pneumonia, organism unspecified</text>
              <rect x="510" y="110" width="210" height="62" rx="10" fill="#27274e" stroke="#f59e0b"/>
              <text x="615" y="136" font-weight="700">.1 = subcategory</text>
              <text x="615" y="156" font-size="11" fill="#9b99b8">lobar pneumonia, unspecified</text>
              <rect x="15" y="205" width="150" height="62" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="90" y="231" font-weight="700">Doctor's words</text>
              <text x="90" y="251" font-size="11" fill="#9b99b8">signed note</text>
              <rect x="190" y="205" width="160" height="62" rx="10" fill="#1f1f44" stroke="#ef4444" stroke-width="2"/>
              <text x="270" y="231" font-weight="700">Coder Asha</text>
              <text x="270" y="251" font-size="11" fill="#9b99b8">WHO ICD-10 browser</text>
              <rect x="380" y="205" width="365" height="62" rx="10" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="441" y="231" font-weight="700">Claims</text>
              <text x="441" y="251" font-size="11" fill="#9b99b8">insurer checks</text>
              <text x="562" y="231" font-weight="700">Statistics</text>
              <text x="562" y="251" font-size="11" fill="#9b99b8">disease counts</text>
              <text x="684" y="231" font-weight="700">Quality</text>
              <text x="684" y="251" font-size="11" fill="#9b99b8">audits, research</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#md10a)">
                <line x1="166" y1="236" x2="186" y2="236"/><line x1="351" y1="236" x2="376" y2="236"/>
              </g>
              <text x="380" y="295" font-size="12" fill="#fca5a5">A code can only be as specific as the doctor's written words.</text>
            </g>
          </svg>
          <figcaption>Each part of the code adds detail. The coder can only choose the detailed code if the doctor wrote that detail.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>What ICD-10 is</h3>
          <p><strong>ICD-10</strong> is the 10th version of the International Classification of Diseases. The World Health Organization (WHO) publishes it. It gives every disease, symptom and cause of injury a code.</p>
          <ul class="lc-list">
            <li><strong>Structure:</strong> a letter and two digits form a category, for example E11 (type 2 diabetes mellitus). A fourth character after the dot adds detail, for example E11.9 (without complications).</li>
            <li><strong>Chapters:</strong> the first letter usually shows the chapter. J is for diseases of the respiratory system. I is for the circulatory system. E is for endocrine and metabolic diseases.</li>
            <li><strong>Versions:</strong> some countries use their own longer versions. The US uses ICD-10-CM, which has more characters. Many Indian hospitals use the WHO version. Check which version your insurer, TPA (third-party administrator) or scheme asks for, and never mix versions.</li>
            <li><strong>Main rule:</strong> code what the doctor wrote. Do not code from a lab result or X-ray report alone. If the notes are unclear, ask the doctor with a query.</li>
          </ul>
          <p>Use the official WHO ICD-10 online browser to check each code and its title. Code websites made for other countries may show a different version.</p>
        </div>
        <div class="lc-card">
          <h3>Worked example: coding two made-up patients</h3>
          <p>These codes and titles are from the WHO ICD-10 browser (2019 version). Final codes depend on the full notes and your hospital's coding rules.</p>
          <table class="lc-table">
            <thead><tr><th>Patient and what the doctor wrote</th><th>WHO ICD-10 code</th><th>Why</th></tr></thead>
            <tbody>
              <tr><td>Mr Kulkarni: "pneumonia, right lower lobe", organism not identified</td><td><strong>J18.9</strong> Pneumonia, unspecified</td><td>The doctor named a lobe but did not write "lobar pneumonia". Many coding rules say this is not enough for J18.1.</td></tr>
              <tr><td>If, after a query, a doctor writes "lobar pneumonia, right lower lobe"</td><td><strong>J18.1</strong> Lobar pneumonia, unspecified</td><td>Now the notes support the more specific code. "Unspecified" here means the organism is not known.</td></tr>
              <tr><td>Mr Kulkarni: "type 2 diabetes with high blood glucose, no ketoacidosis"</td><td><strong>E11.9</strong> Type 2 diabetes mellitus without complications</td><td>No coma, ketoacidosis, kidney, eye, nerve or circulation complication is written. E11.1 (with ketoacidosis) would be wrong: his urine ketones were negative.</td></tr>
              <tr><td>Mr Patidar (OPD): "hypertension, not at target"</td><td><strong>I10</strong> Essential (primary) hypertension</td><td>High blood pressure with no known cause and no heart or kidney disease written</td></tr>
            </tbody>
          </table>
          <p>For Mr Kulkarni, pneumonia was the main reason for the admission, so it is the <strong>principal diagnosis</strong>. Diabetes is a secondary diagnosis, because it was treated during the stay. A note on versions: the US ICD-10-CM has a separate code for type 2 diabetes with high blood glucose (E11.65). That code does not exist in the WHO version. This is why you must not copy codes from a website made for another country.</p>
        </div>
        <div class="lc-card">
          <h3>Why coding matters, and procedure codes</h3>
          <ul class="lc-list">
            <li><strong>Claims:</strong> insurers compare the diagnosis codes with the treatment and the bill. At the made-up Tarang hospital, 18 of 120 claims in August (15%) got a query or were held for missing documents.</li>
            <li><strong>Statistics:</strong> codes let a hospital count its cases, for example the average length of stay for pneumonia. National health data is built from coded records too.</li>
            <li><strong>Quality and research:</strong> audits and studies find patients by their codes. Wrong codes give wrong answers.</li>
            <li><strong>Documentation:</strong> Asha, the made-up coder, sent 36 queries to doctors for 1,200 discharges in August (3%). Each query means a note was not clear enough to code.</li>
          </ul>
          <p><strong>Procedure codes</strong> describe what was <em>done</em>, such as an operation or a scan. ICD-10 does not cover procedures. Different systems are used for them. For example, the US uses CPT and ICD-10-PCS, and WHO has a separate interventions classification called ICHI. In India, PM-JAY (the national health insurance scheme) uses its own list of treatment packages, each with a code. Private insurers and TPAs may have their own lists. Check what each payer needs.</p>
          <p><strong>Never upcode.</strong> Upcoding means choosing a code for a more serious or better-paid condition than the notes support. It is dishonest and can be fraud. Choose the code the documentation supports, nothing more.</p>
        </div>
        <div class="lc-card">
          <h3>The move to ICD-11</h3>
          <p>WHO's newer version, <strong>ICD-11</strong>, came into effect on 1 January 2022. Countries are moving to it over several years. It was built for digital records and has an online coding tool. Its codes look different: the stem code for pneumonia is CA40, for type 2 diabetes 5A11 and for essential hypertension BA00. Coders can also link extra codes to add detail, such as severity or body site. ICD-11 also has a chapter for traditional medicine. India and WHO launched a module for Ayurveda, Siddha and Unani conditions in 2024.</p>
          <p><strong>India's status, in general words:</strong> the Central Bureau of Health Intelligence (CBHI) is part of the Ministry of Health and Family Welfare. It started the national move from ICD-10 to ICD-11 with a workshop in March 2024. Many hospitals, insurers and schemes still use ICD-10 today. WHO publishes mapping tables between ICD-10 and ICD-11. Check CBHI and your insurer for the current position before you change anything.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: Asha codes Mr Kulkarni's stay</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="tool" data-label="Hospital information system">Asha opens the signed discharge summary for Mr Prakash Kulkarni. The AI coding tool has suggested J18.1 Lobar pneumonia.</li>
              <li data-kind="thought" data-label="Asha thinks">Main reason for admission: pneumonia. Also treated: type 2 diabetes with high glucose. Which words did the doctor use?</li>
              <li data-kind="tool" data-label="WHO ICD-10 browser">She opens category J18, pneumonia with organism unspecified.</li>
              <li data-kind="result" data-label="Browser shows">J18.0 Bronchopneumonia, unspecified. J18.1 Lobar pneumonia, unspecified. J18.2 Hypostatic pneumonia, unspecified. J18.8 Other pneumonia, organism unspecified. J18.9 Pneumonia, unspecified.</li>
              <li data-kind="warn" data-label="Do not guess">The summary says "pneumonia, right lower lobe". The X-ray names a lobe, but the doctor did not write "lobar pneumonia". She must not accept J18.1 from the X-ray or the AI suggestion alone.</li>
              <li data-kind="user" data-label="Asha's query to Dr Kale">"Please clarify the type of pneumonia, if you can: lobar pneumonia, bronchopneumonia, other, or cannot be determined."</li>
              <li data-kind="result" data-label="Dr Kale replies">He adds a dated, signed addendum: "Community-acquired pneumonia, right lower lobe. Type cannot be determined. Organism not identified." He does not write "lobar pneumonia".</li>
              <li data-kind="check" data-label="Final codes">J18.9 as the principal diagnosis, not the AI's J18.1, because "lobar pneumonia" is still not written. E11.9 for diabetes, because no complication is written and ketones were negative. She saves the codes with the query record.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to act as a coding tutor for a made-up case. It should suggest codes to check, explain what decides them, and write a fair query to the doctor.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a coding tutor for a new medical coder at [a hospital in India]. The patient is made up for training.

        Use the WHO version of ICD-10, not a national version such as the US ICD-10-CM.
        From the summary below:
        1. List each diagnosis the doctor wrote. Mark the principal diagnosis.
        2. Suggest a candidate code and its WHO title for each. Label every code "check in the official WHO ICD-10 browser".
        3. Say which words decide the fourth character, and what written detail would change the code.
        4. Write one non-leading query to the doctor for anything unclear. Give options, including "cannot be determined".
        5. Do not code anything from test results alone. Explain each point in simple English.

        Summary: [Mr Prakash Kulkarni, 58]. Admitted 14 to 18 Sept 2026. Diagnoses: community-acquired pneumonia, right lower lobe, organism not identified. Type 2 diabetes with high blood glucose, urine ketones negative, no diabetic complications written. Chest X-ray: right lower lobe consolidation. HbA1c 9.1%.</pre>
            <ul class="ai-try-checks">
              <li>It explains that J18.1 needs the doctor to write "lobar pneumonia"; otherwise J18.9.</li>
              <li>It suggests E11.9, not E11.1, because there is no ketoacidosis.</li>
              <li>It does not give a US ICD-10-CM code such as E11.65 as a WHO code.</li>
              <li>The query offers options and does not push the doctor towards one answer.</li>
              <li>Every code is marked to be checked in the official browser.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A code is only as good as the note behind it. Code what the doctor wrote, choose the most specific code the notes support, and never upcode. When the notes are unclear, send a fair query. Check every code, from AI or from memory, in the official browser for the version your payer uses.
        </div>
      HTML
      starter_code: nil
    },
    11 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-health">Healthcare</div>
          <h1 class="lc-title">AI-Assisted Coding</h1>
        </div>
        <p class="lc-lead">An AI coding tool can read a signed discharge summary and suggest ICD-10 codes in a few seconds. That saves the coder time, but the tool also makes mistakes. It may pick a code that is too vague or too specific. It may use the wrong ICD version, or code an illness nobody diagnosed. In this lesson you will learn how code suggestions work, why specificity matters, and how a coder reviews every suggestion. You will also learn the most important rule: <strong>code only what the doctor documented</strong>. Adding a code for a condition that is not documented is upcoding. It is wrong even when a tool suggests it. All patients here are made up, and this is education, not coding or legal advice.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 316" role="img" aria-label="A workflow with five steps: signed summary, AI suggests codes, coder reviews, doctor query if unclear, final codes. Below, a table for the made-up patient Mr Kulkarni. The AI suggested J18.1, E11.65, A41.9, J96.0 and R50.9. The coder changed two codes and removed three, and the final codes are J18.9 and E11.9.">
            <defs><marker id="md11a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="14" y="16" width="132" height="58" rx="10" fill="#27274e" stroke="#3b82f6"/>
              <text x="80" y="40" font-weight="700">Signed summary</text>
              <text x="80" y="60" font-size="11" fill="#9b99b8">doctor signs first</text>
              <rect x="166" y="16" width="132" height="58" rx="10" fill="#27274e" stroke="#8b5cf6"/>
              <text x="232" y="40" font-weight="700">AI suggests</text>
              <text x="232" y="60" font-size="11" fill="#9b99b8">code + evidence</text>
              <rect x="318" y="16" width="132" height="58" rx="10" fill="#27274e" stroke="#f59e0b" stroke-width="2"/>
              <text x="384" y="40" font-weight="700">Coder reviews</text>
              <text x="384" y="60" font-size="11" fill="#9b99b8">every single code</text>
              <rect x="470" y="16" width="132" height="58" rx="10" fill="#27274e" stroke="#ec4899"/>
              <text x="536" y="40" font-weight="700">Doctor query</text>
              <text x="536" y="60" font-size="11" fill="#9b99b8">only if unclear</text>
              <rect x="622" y="16" width="132" height="58" rx="10" fill="#27274e" stroke="#10b981" stroke-width="2"/>
              <text x="688" y="40" font-weight="700">Final codes</text>
              <text x="688" y="60" font-size="11" fill="#9b99b8">coder signs off</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#md11a)">
                <line x1="147" y1="45" x2="163" y2="45"/><line x1="299" y1="45" x2="315" y2="45"/><line x1="451" y1="45" x2="467" y2="45"/><line x1="603" y1="45" x2="619" y2="45"/>
              </g>
              <rect x="14" y="96" width="740" height="206" rx="12" fill="#1f1f44" stroke="#4b4a78"/>
              <text x="384" y="120" font-weight="700">Mr Kulkarni (made up): what Asha did with the AI suggestions</text>
              <g text-anchor="start" font-size="12">
                <text x="34" y="148" fill="#9b99b8">AI suggested</text>
                <text x="330" y="148" fill="#9b99b8">Asha's decision</text>
                <line x1="30" y1="156" x2="738" y2="156" stroke="#4b4a78"/>
                <text x="34" y="178">J18.1 Lobar pneumonia</text>
                <text x="330" y="178" fill="#fcd34d">Change to J18.9: the doctor did not write "lobar"</text>
                <text x="34" y="202">E11.65 with hyperglycaemia</text>
                <text x="330" y="202" fill="#fcd34d">Change to E11.9: E11.65 is a US ICD-10-CM code</text>
                <text x="34" y="226">A41.9 Sepsis, unspecified</text>
                <text x="330" y="226" fill="#fca5a5">Remove: the doctor did not diagnose sepsis</text>
                <text x="34" y="250">J96.0 Acute respiratory failure</text>
                <text x="330" y="250" fill="#fca5a5">Remove: not diagnosed; SpO2 alone is not enough</text>
                <text x="34" y="274">R50.9 Fever, unspecified</text>
                <text x="330" y="274" fill="#fca5a5">Remove: fever is part of the pneumonia</text>
              </g>
              <text x="384" y="296" font-size="12" fill="#6ee7b7">Final: J18.9 Pneumonia, unspecified · E11.9 Type 2 diabetes mellitus without complications</text>
            </g>
          </svg>
          <figcaption>The AI gave five codes. Only two survive review, and both were changed. The coder, not the tool, decides.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>How AI code suggestions work</h3>
          <p>A coding assistant reads a <em>signed</em> clinical document. It finds the diagnoses and procedures. Then it proposes codes. A good tool also shows the <strong>evidence line</strong>: the exact sentence it used for each code. That lets the coder check the code against the words in seconds.</p>
          <ul class="lc-list">
            <li><strong>Code from signed documents only.</strong> A draft can still change. Coding a draft wastes time and can put wrong codes on a claim.</li>
            <li><strong>Check the ICD version.</strong> Tarang uses the WHO version of ICD-10, as many Indian hospitals and insurers do. Some AI tools may suggest US ICD-10-CM codes, because a lot of coding text online is from the US. For example, E11.65 (type 2 diabetes with hyperglycaemia) exists in ICD-10-CM but not in WHO ICD-10. Check which version your hospital and each payer need.</li>
            <li><strong>Look up every code.</strong> Asha checks each code and its notes in the official WHO ICD-10 online browser. She never trusts a code title that the AI typed.</li>
            <li><strong>Use an approved tool.</strong> Coding tools read full patient records. Only a hospital-approved tool with a proper contract may do this.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Specificity: the doctor's words decide the code</h3>
          <p>Specificity means how exact a code is. A more specific code is better only when the note supports it. The coder takes detail from the doctor's words, not from a guess.</p>
          <table class="lc-table">
            <thead><tr><th>The doctor wrote</th><th>WHO ICD-10 code</th><th>Why</th></tr></thead>
            <tbody>
              <tr><td>"Community-acquired pneumonia, right lower lobe"</td><td>J18.9 Pneumonia, unspecified</td><td>No organism was found. A lobe is named, but the term "lobar pneumonia" is not used.</td></tr>
              <tr><td>"Lobar pneumonia"</td><td>J18.1 Lobar pneumonia, unspecified</td><td>The doctor used the exact term.</td></tr>
              <tr><td>"Pneumonia due to <em>Streptococcus pneumoniae</em>" (after a culture result)</td><td>J13 Pneumonia due to Streptococcus pneumoniae</td><td>The doctor named the organism. A lab report alone is not enough.</td></tr>
              <tr><td>"Type 2 diabetes with ketoacidosis"</td><td>E11.1 Type 2 diabetes mellitus with ketoacidosis</td><td>Only when ketoacidosis is diagnosed. Mr Kulkarni's urine ketones were negative.</td></tr>
              <tr><td>"Hypertension, not at target" (Mr Patidar)</td><td>I10 Essential (primary) hypertension</td><td>No cause for the high blood pressure is written, so it is coded as essential (primary).</td></tr>
            </tbody>
          </table>
          <p>Many coding guides say "lobar pneumonia" should be coded only when the doctor writes those words. For Mr Kulkarni's diabetes, WHO ICD-10 has no separate code for high glucose under E11. Tarang's coding rule (made up for this course) says to use E11.9. Follow your own hospital's coding rules, and ask a senior coder when unsure.</p>
        </div>
        <div class="lc-card">
          <h3>A weak prompt, a better prompt and the pilot numbers</h3>
          <pre><code>Weak prompt:   Give ICD-10 codes for this discharge summary.

        Better prompt: Suggest WHO ICD-10 codes (not ICD-10-CM) for this
                       signed, made-up discharge summary.
                       For each code give: code, title, the exact sentence
                       that supports it, and your confidence.
                       Code only diagnoses the doctor wrote. Do not code
                       conditions from lab values or vital signs alone.
                       Do not code symptoms explained by a diagnosis.
                       List anything unclear as a question for the doctor.
                       End with "Suggestions only: coder to check."</code></pre>
          <p>In the made-up September pilot, Asha reviewed AI suggestions for 200 medicine-ward summaries:</p>
          <table class="lc-table">
            <thead><tr><th>What Asha did</th><th>Codes</th><th>Share of 520</th></tr></thead>
            <tbody>
              <tr><td>Accepted without change</td><td>437</td><td>84.0%</td></tr>
              <tr><td>Changed (more or less specific, or right version)</td><td>51</td><td>9.8%</td></tr>
              <tr><td>Removed as not supported by the note</td><td>32</td><td>6.2%</td></tr>
            </tbody>
          </table>
          <p>Of the 32 removed codes, 11 were for conditions no doctor had diagnosed, such as sepsis or respiratory failure. If nobody had checked, those would have been upcoding. That is why the coder reviews every code, even when most are right.</p>
        </div>
        <div class="lc-card">
          <h3>No upcoding, and fair doctor queries</h3>
          <ul class="lc-list">
            <li><strong>Upcoding</strong> means using a code for a more serious or more costly condition than the record supports. It can lead to wrong payments and can count as fraud.</li>
            <li><strong>Undercoding</strong> means leaving out a condition that was diagnosed and treated. It is also wrong. It makes records and hospital statistics incomplete.</li>
            <li><strong>A doctor query</strong> is a written question from the coder when the note is unclear. In August, Asha sent 36 queries for 1,200 discharges, which is 3%. The query must not push the doctor to a diagnosis.</li>
          </ul>
          <pre><code>Leading query (wrong):
        "SpO2 was 91%. Please write 'acute respiratory failure' so we can code it."

        Fair query (right):
        "Day 1: SpO2 91% on room air, oxygen 2 L/min for 2 days.
        Please state the diagnosis that fits your clinical judgement:
        [ ] a diagnosis you name   [ ] no further diagnosis   [ ] cannot say"</code></pre>
          <p>The fair query gives the facts and open choices. The doctor decides. The coder never adds a diagnosis on their own.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: accept, query or remove?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">An AI tool made these made-up suggestions at Tarang. Sort each one the way Asha would.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="accept" data-label="Accept"></div>
              <div data-sorter-target="bucket" data-bucket="query" data-label="Query the doctor"></div>
              <div data-sorter-target="bucket" data-bucket="remove" data-label="Remove or change"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="accept" data-why="The signed summary says pneumonia with no organism and does not say 'lobar'. J18.9 matches the words.">J18.9 for "Community-acquired pneumonia, right lower lobe"</li>
              <li data-bucket="accept" data-why="The doctor wrote hypertension with no cause. I10 matches the note.">I10 for Mr Patidar's "Hypertension, not at target"</li>
              <li data-bucket="remove" data-why="Fever and a high white cell count are not a diagnosis of sepsis. Only the doctor can diagnose sepsis. Coding it would be upcoding.">A41.9 Sepsis, because the note shows fever and WBC 15,800</li>
              <li data-bucket="remove" data-why="Urine ketones were negative and the doctor wrote 'no ketoacidosis'. The code is wrong.">E11.1 Type 2 diabetes with ketoacidosis</li>
              <li data-bucket="remove" data-why="E11.65 is a US ICD-10-CM code. The hospital uses WHO ICD-10, so the code must be changed.">E11.65 in a hospital that uses WHO ICD-10</li>
              <li data-bucket="query" data-why="A question mark means the diagnosis is not confirmed. The coder asks the doctor for the final diagnosis.">"Chest infection?" written as the final diagnosis</li>
              <li data-bucket="query" data-why="A lab result alone does not change the code. The coder asks the doctor, in a neutral way, if the diagnosis should be updated.">The final blood culture grew an organism, but the summary names none</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to suggest codes for a made-up discharge summary, with evidence for each code. Then check every code yourself in the official WHO ICD-10 browser.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a coding assistant helping a medical coder at [a hospital in India that uses WHO ICD-10]. The summary below is made up for training.

        Suggest WHO ICD-10 codes (not ICD-10-CM). Make a table: Code | Title | Exact sentence that supports it | Confidence (high, medium, low).

        Rules:
        - Code only diagnoses the doctor wrote. Never code from lab values or vital signs alone.
        - Do not code symptoms that a diagnosis explains.
        - Do not suggest more serious conditions than the note supports.
        - After the table, list "Codes I did not suggest, and why".
        - List unclear points as neutral questions for the doctor, with open choices.
        - End with: "Suggestions only. The coder checks each code in the official browser."

        Signed summary (or use [your own made-up summary]):
        Mr P K, 58, male. Diagnosis: community-acquired pneumonia, right lower lobe. Type 2 diabetes with high blood glucose, no ketoacidosis. Day 1: T 38.6 °C, pulse 108, SpO2 91% on room air, WBC 15,800. Chest X-ray: right lower lobe consolidation. Blood cultures: no growth at 48 hours, final report pending. Urine ketones negative. HbA1c 9.1%. Improved on antibiotics.</pre>
            <ul class="ai-try-checks">
              <li>The pneumonia code is J18.9, not J18.1, because "lobar pneumonia" is not written.</li>
              <li>There is no code for sepsis, respiratory failure, fever or cough.</li>
              <li>It does not suggest E11.65 (a US ICD-10-CM code) or E11.1 (ketoacidosis).</li>
              <li>It mentions the pending blood culture as a reason to check again later.</li>
              <li>You check every code and title yourself in the WHO ICD-10 browser.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> AI can suggest codes fast, but it guesses from patterns. The coder checks each code against the doctor's exact words and the right ICD version. Code only what is documented. When the note is unclear, ask the doctor a fair question. Never add a diagnosis to raise a claim.
        </div>
      HTML
      starter_code: nil
    },
    12 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-health">Healthcare</div>
          <h1 class="lc-title">Documentation for Insurance and Claims</h1>
        </div>
        <p class="lc-lead">An insurance claim is judged mostly on paper. The reviewer never sees the patient. They see the admission note, the reports, the discharge summary and the bill. If a fact is missing or unclear, the claim gets a query, a delay, a cut or a denial. In this lesson you will learn the main steps of a cashless claim. You will see how government schemes such as PM-JAY and private insurers work, in general words. You will learn why claims get queried, and how AI can help prepare clear, honest documents. Rules differ by scheme, insurer and policy, and they change often. This is general education, not insurance, financial or legal advice.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 330" role="img" aria-label="A cashless claim in five steps: admission, pre-authorisation, approval, discharge file and settlement, with dashed query arrows going back. Below, a bar chart of the made-up August data at Tarang: 18 of 120 claims were queried. Reasons: reason for admission not clear 5, test reports missing 4, diagnosis does not match reports 4, name, age or date mismatch 3, past history or duration missing 2.">
            <defs>
              <marker id="md12a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker>
              <marker id="md12b" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#f59e0b"/></marker>
            </defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="14" y="16" width="132" height="58" rx="10" fill="#27274e" stroke="#3b82f6"/>
              <text x="80" y="40" font-weight="700">Admission</text>
              <text x="80" y="60" font-size="11" fill="#9b99b8">doctor's notes</text>
              <rect x="166" y="16" width="132" height="58" rx="10" fill="#27274e" stroke="#8b5cf6"/>
              <text x="232" y="40" font-weight="700">Pre-auth</text>
              <text x="232" y="60" font-size="11" fill="#9b99b8">hospital to TPA</text>
              <rect x="318" y="16" width="132" height="58" rx="10" fill="#27274e" stroke="#22d3ee"/>
              <text x="384" y="40" font-weight="700">Approval</text>
              <text x="384" y="60" font-size="11" fill="#9b99b8">insurer or TPA</text>
              <rect x="470" y="16" width="132" height="58" rx="10" fill="#27274e" stroke="#ec4899"/>
              <text x="536" y="40" font-weight="700">Discharge file</text>
              <text x="536" y="60" font-size="11" fill="#9b99b8">summary + bill</text>
              <rect x="622" y="16" width="132" height="58" rx="10" fill="#27274e" stroke="#10b981" stroke-width="2"/>
              <text x="688" y="40" font-weight="700">Settlement</text>
              <text x="688" y="60" font-size="11" fill="#9b99b8">final payment</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#md12a)">
                <line x1="147" y1="45" x2="163" y2="45"/><line x1="299" y1="45" x2="315" y2="45"/><line x1="451" y1="45" x2="467" y2="45"/><line x1="603" y1="45" x2="619" y2="45"/>
              </g>
              <g fill="none" stroke="#f59e0b" stroke-width="1.5" stroke-dasharray="5 4" marker-end="url(#md12b)">
                <path d="M384,76 Q308,106 236,78"/>
                <path d="M688,76 Q612,106 540,78"/>
              </g>
              <text x="310" y="112" font-size="11" fill="#fcd34d">query</text>
              <text x="614" y="112" font-size="11" fill="#fcd34d">query</text>
              <rect x="14" y="128" width="740" height="190" rx="12" fill="#1f1f44" stroke="#4b4a78"/>
              <text x="384" y="152" font-weight="700">Why 18 of 120 claims were queried (Tarang, August, made up)</text>
              <g font-size="12">
                <text x="34" y="184" text-anchor="start">Reason for admission not clear</text>
                <rect x="360" y="172" width="200" height="16" rx="3" fill="#ef4444"/><text x="578" y="184">5</text>
                <text x="34" y="212" text-anchor="start">Test reports missing</text>
                <rect x="360" y="200" width="160" height="16" rx="3" fill="#f59e0b"/><text x="538" y="212">4</text>
                <text x="34" y="240" text-anchor="start">Diagnosis does not match reports</text>
                <rect x="360" y="228" width="160" height="16" rx="3" fill="#f59e0b"/><text x="538" y="240">4</text>
                <text x="34" y="268" text-anchor="start">Name, age or date mismatch</text>
                <rect x="360" y="256" width="120" height="16" rx="3" fill="#3b82f6"/><text x="498" y="268">3</text>
                <text x="34" y="296" text-anchor="start">Past history or duration missing</text>
                <rect x="360" y="284" width="80" height="16" rx="3" fill="#8b5cf6"/><text x="458" y="296">2</text>
              </g>
              <text x="680" y="230" font-size="12" fill="#fca5a5">18 ÷ 120</text>
              <text x="680" y="250" font-size="12" fill="#fca5a5">= 15%</text>
            </g>
          </svg>
          <figcaption>Most queries come from gaps in the documents, not from the treatment itself. Clear notes fix most of them.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Key words, in plain English</h3>
          <table class="lc-table">
            <thead><tr><th>Word</th><th>What it means</th></tr></thead>
            <tbody>
              <tr><td><strong>Cashless claim</strong></td><td>The insurer pays the hospital directly. The patient pays only what the policy does not cover.</td></tr>
              <tr><td><strong>Reimbursement claim</strong></td><td>The patient pays the hospital first, then claims the money back with the documents.</td></tr>
              <tr><td><strong>Pre-authorisation (pre-auth)</strong></td><td>The hospital asks the insurer to approve the treatment before or soon after admission. It sends the diagnosis, the plan, key reports and a cost estimate.</td></tr>
              <tr><td><strong>TPA</strong> (third party administrator)</td><td>A company that handles claims for some insurers. It checks documents and approves or queries the claim.</td></tr>
              <tr><td><strong>Enhancement</strong></td><td>A request to raise the approved amount, for example when the stay is longer than planned.</td></tr>
              <tr><td><strong>Query</strong></td><td>A question from the insurer or TPA. The claim waits until the hospital answers.</td></tr>
              <tr><td><strong>Deduction or denial</strong></td><td>Part of the claim is not paid, or none of it is paid.</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Government schemes and private insurers, in general words</h3>
          <p><strong>PM-JAY</strong> (Ayushman Bharat Pradhan Mantri Jan Arogya Yojana) is India's large government health scheme for eligible families. It pays empanelled hospitals (hospitals approved to join the scheme) for fixed treatment <em>packages</em>. The hospital checks the patient's identity and eligibility, picks the package, and asks for pre-authorisation through the scheme's online system. In emergencies, the patient is treated first, and approval is asked for soon after. The State Health Agency sets many of the local rules. Cover limits, packages and documents change, so check the current scheme guidelines.</p>
          <p><strong>Private health insurance</strong> works through the policy terms. The insurer or its TPA checks whether the illness and the stay are covered. They also look at waiting periods for pre-existing diseases (illnesses the patient had before buying the policy). The insurance regulator, IRDAI, sets rules such as time limits for cashless decisions. Its 2024 master circular on health insurance is the place to start. Check the current version, because rules are updated.</p>
          <p>In both cases, the reviewer asks the same basic questions. Was admission needed? Does the diagnosis match the reports? Was the treatment right for that diagnosis? Do the names, dates and bills match? India is also building a common digital claims exchange under ABDM, so more claims will move online.</p>
        </div>
        <div class="lc-card">
          <h3>Worked example: Mr Kulkarni's pre-authorisation</h3>
          <p>Mr Prakash Kulkarni, 58 (made up), came through emergency with a cashless private policy. His CURB-65 score was 0. CURB-65 is a pneumonia severity score, and 0 often means home treatment is possible. So a reviewer may ask: why admit him? The answer must be in the notes, in plain facts.</p>
          <pre><code>Weak clinical justification:
        "Patient admitted for pneumonia. Needs IV antibiotics."

        Better clinical justification (facts from the signed admission note):
        "Community-acquired pneumonia, right lower lobe, on chest X-ray.
        Admitted because SpO2 was 91% on room air and needed oxygen
        (2 L/min, target 94-98%). Random glucose 312 mg/dL, HbA1c 9.1%:
        oral diabetes medicines stopped, insulin started, glucose checked
        4 times a day. CURB-65 score 0; admission is for low oxygen and
        high glucose. Expected stay about 4 days."</code></pre>
          <p>AI can turn the signed notes into this kind of summary in the insurer's format. But every fact must come from the record. <strong>Never</strong> change facts to fit a policy or package. Mr Kulkarni has had diabetes for 8 years, and it stays "8 years", even if that affects cover. Changing a diagnosis, a date or a history to get a claim paid is fraud.</p>
        </div>
        <div class="lc-card">
          <h3>The fix for each query reason</h3>
          <table class="lc-table">
            <thead><tr><th>Query reason (made-up August data)</th><th>Claims</th><th>What prevents it</th></tr></thead>
            <tbody>
              <tr><td>Reason for admission not clear</td><td>5</td><td>Admission note states why the patient could not be treated at home, with numbers</td></tr>
              <tr><td>Test reports missing</td><td>4</td><td>A document checklist before sending; attach the X-ray and blood reports</td></tr>
              <tr><td>Diagnosis does not match reports</td><td>4</td><td>Final diagnosis matches the reports and the pre-auth, or the change is explained</td></tr>
              <tr><td>Name, age or date mismatch</td><td>3</td><td>Same name, age, UHID and dates on every page</td></tr>
              <tr><td>Past history or duration missing</td><td>2</td><td>Past illnesses with how long, written truthfully</td></tr>
              <tr><td><strong>Total</strong></td><td><strong>18 of 120 (15%)</strong></td><td></td></tr>
            </tbody>
          </table>
          <p>Vikram, the operations manager, now asks the insurance desk to run a claim-readiness check before each file goes out. A hospital-approved AI tool compares the file with the payer's checklist and lists gaps. A person fixes each gap from the record, not from memory.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: follow a cashless claim</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="tool" data-label="Insurance desk">14 Sept, after admission: the desk sends a pre-auth request with the signed admission note, chest X-ray report and blood results.</li>
              <li data-kind="result" data-label="TPA reply">A query: "CURB-65 is 0. Please justify inpatient admission."</li>
              <li data-kind="user" data-label="Desk asks the approved AI tool">Draft a reply to this query. Use only facts from the attached signed notes. Quote the note and time for each fact.</li>
              <li data-kind="answer" data-label="AI draft">"Admitted for SpO2 91% on room air needing oxygen, and glucose 312 mg/dL needing insulin. Also severe sepsis was present."</li>
              <li data-kind="warn" data-label="Catch the made-up claim">No doctor diagnosed sepsis. The last sentence is made up. It must be deleted before anything is sent.</li>
              <li data-kind="check" data-label="Doctor checks and signs">Dr Neha Pawar checks each fact against the notes, deletes the sepsis line and signs the reply.</li>
              <li data-kind="result" data-label="Claim approved">The TPA approves the cashless request. At discharge, the signed summary, reports and final bill go for final approval.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to review a made-up claim file the way an insurer's reviewer would. It should list gaps and questions, never new facts.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a claims documentation reviewer for [a hospital in India]. The claim file below is made up for training. This is not insurance or legal advice.

        Review the file the way an insurer or TPA reviewer would. Make a table: Possible query | Which document should answer it | What the doctor or desk must check in the record.

        Rules:
        - Do not add, change or improve any clinical fact. Only point out gaps and mismatches.
        - Check: reason for admission, diagnosis vs reports, treatment vs diagnosis, names and dates, past history, pending results, signatures.
        - Then list the 3 gaps most likely to delay the claim.

        Made-up file ([change it to your own made-up case]):
        Patient: Mr P Kulkarni, 58 (discharge summary says 57). Cashless private policy.
        Admission note: pneumonia, SpO2 91% on room air, glucose 312 mg/dL. Reason for admission not written.
        Reports attached: chest X-ray. Blood tests not attached.
        Discharge summary: "chest infection", 14 to 18 Sept 2026. Diabetes: duration not written. Not signed.
        Bill: 5 days of oxygen charged; notes show oxygen stopped on day 3.</pre>
            <ul class="ai-try-checks">
              <li>It finds the age mismatch (58 and 57) and the missing blood reports.</li>
              <li>It flags "chest infection" as vague against an X-ray showing pneumonia.</li>
              <li>It spots that the bill charges oxygen for longer than the notes show.</li>
              <li>It flags the missing signature, reason for admission and diabetes duration.</li>
              <li>It does not invent a reason for admission or a diabetes duration.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A claim is only as good as its documents. Write why the patient was admitted, make the diagnosis match the reports, and keep names and dates the same everywhere. AI can check a claim file for gaps and draft replies from the record. It must never add or change a fact to get a claim paid.
        </div>
      HTML
      starter_code: nil
    },
    13 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-health">Healthcare</div>
          <h1 class="lc-title">Checking Quality and Accuracy</h1>
        </div>
        <p class="lc-lead">Signing a note is a promise that it is correct. But busy clinicians miss things, and AI drafts add new kinds of errors. A documentation audit shows how often errors happen and which types happen most. It also shows whether things are getting better. In this lesson you will learn how to run a simple audit and the main error types. These include missing details, made-up content, wrong side and dose errors. You will work through a made-up audit of 50 AI-assisted discharge summaries. You will also build a review checklist to use before you sign.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 330" role="img" aria-label="An audit cycle with five steps: pick a random sample, check against the source, log each error by type, give feedback, and fix templates and training, then audit again. Below, the made-up September audit: 50 summaries checked, 9 with at least one error which is 18%, and 11 errors in total. A bar chart shows missing details 5, made-up content 2, dose errors 2, wrong side 1 and wrong date 1.">
            <defs><marker id="md13a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="14" y="16" width="132" height="58" rx="10" fill="#27274e" stroke="#3b82f6"/>
              <text x="80" y="40" font-weight="700">Pick a sample</text>
              <text x="80" y="60" font-size="11" fill="#9b99b8">random, signed</text>
              <rect x="166" y="16" width="132" height="58" rx="10" fill="#27274e" stroke="#8b5cf6"/>
              <text x="232" y="40" font-weight="700">Check source</text>
              <text x="232" y="60" font-size="11" fill="#9b99b8">chart, labs, drugs</text>
              <rect x="318" y="16" width="132" height="58" rx="10" fill="#27274e" stroke="#f59e0b"/>
              <text x="384" y="40" font-weight="700">Log by type</text>
              <text x="384" y="60" font-size="11" fill="#9b99b8">one row per error</text>
              <rect x="470" y="16" width="132" height="58" rx="10" fill="#27274e" stroke="#ec4899"/>
              <text x="536" y="40" font-weight="700">Feedback</text>
              <text x="536" y="60" font-size="11" fill="#9b99b8">to the team</text>
              <rect x="622" y="16" width="132" height="58" rx="10" fill="#27274e" stroke="#10b981"/>
              <text x="688" y="40" font-weight="700">Fix and repeat</text>
              <text x="688" y="60" font-size="11" fill="#9b99b8">templates, training</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#md13a)">
                <line x1="147" y1="45" x2="163" y2="45"/><line x1="299" y1="45" x2="315" y2="45"/><line x1="451" y1="45" x2="467" y2="45"/><line x1="603" y1="45" x2="619" y2="45"/>
                <path d="M688,76 L688,96 L80,96 L80,80"/>
              </g>
              <text x="384" y="112" font-size="11" fill="#9b99b8">audit again next month</text>
              <rect x="14" y="128" width="220" height="56" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="124" y="152" font-size="20" font-weight="700">50</text>
              <text x="124" y="172" font-size="11" fill="#9b99b8">summaries checked</text>
              <rect x="14" y="194" width="220" height="56" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="124" y="218" font-size="20" font-weight="700" fill="#fcd34d">9 (18%)</text>
              <text x="124" y="238" font-size="11" fill="#9b99b8">with at least one error</text>
              <rect x="14" y="260" width="220" height="56" rx="10" fill="#1f1f44" stroke="#ef4444"/>
              <text x="124" y="284" font-size="20" font-weight="700" fill="#fca5a5">11</text>
              <text x="124" y="304" font-size="11" fill="#9b99b8">errors in total</text>
              <rect x="252" y="128" width="502" height="188" rx="12" fill="#1f1f44" stroke="#4b4a78"/>
              <text x="503" y="152" font-weight="700">Errors by type (September, made up)</text>
              <g font-size="12">
                <text x="272" y="186" text-anchor="start">Missing details</text>
                <rect x="420" y="174" width="250" height="16" rx="3" fill="#3b82f6"/><text x="688" y="186">5</text>
                <text x="272" y="214" text-anchor="start">Made-up content</text>
                <rect x="420" y="202" width="100" height="16" rx="3" fill="#ec4899"/><text x="538" y="214">2</text>
                <text x="272" y="242" text-anchor="start">Dose errors</text>
                <rect x="420" y="230" width="100" height="16" rx="3" fill="#ef4444"/><text x="538" y="242">2</text>
                <text x="272" y="270" text-anchor="start">Wrong side</text>
                <rect x="420" y="258" width="50" height="16" rx="3" fill="#f59e0b"/><text x="488" y="270">1</text>
                <text x="272" y="298" text-anchor="start">Wrong date</text>
                <rect x="420" y="286" width="50" height="16" rx="3" fill="#8b5cf6"/><text x="488" y="298">1</text>
              </g>
            </g>
          </svg>
          <figcaption>An audit is a loop, not a one-time check. The error types tell you what to fix in templates and training.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>What a documentation audit is</h3>
          <p>An audit is a planned check of a sample of records against a standard. The standard is a list of what a good document must contain. NABH-accredited hospitals already run regular medical record audits. Add AI-specific checks to the same process.</p>
          <ol class="lc-list">
            <li><strong>Pick a random sample.</strong> Choose signed documents at random, not the ones that look easy. In a spreadsheet, put <code>=RAND()</code> next to each summary, sort by that column and take the first 50.</li>
            <li><strong>Check against the source.</strong> The auditor compares each summary with the drug chart, lab system, notes and X-ray report. Reading the summary alone will not find errors.</li>
            <li><strong>Log each error.</strong> One row per error: summary ID, error type, the wrong text, the right text, risk level and who caught it.</li>
            <li><strong>Give feedback.</strong> Share the results with the team. Focus on the system (templates, prompts, training), not on blaming one person.</li>
            <li><strong>Fix and audit again.</strong> Change what caused the errors, then run the same audit next month.</li>
          </ol>
          <p>Use a made-up or de-identified audit sheet for training. Real audit sheets hold patient data and stay inside hospital systems.</p>
        </div>
        <div class="lc-card">
          <h3>The main error types</h3>
          <table class="lc-table">
            <thead><tr><th>Error type</th><th>What it means</th><th>Made-up example</th></tr></thead>
            <tbody>
              <tr><td><strong>Missing detail</strong> (omission)</td><td>Something true and important is left out</td><td>The pending blood culture is not mentioned</td></tr>
              <tr><td><strong>Made-up content</strong> (hallucination)</td><td>Something is written that did not happen</td><td>"Chest clear on discharge", but nobody examined the chest that day</td></tr>
              <tr><td><strong>Wrong side or site</strong></td><td>Left and right, or upper and lower, are mixed up</td><td>"Left lower lobe pneumonia" when the X-ray shows the right lower lobe</td></tr>
              <tr><td><strong>Dose error</strong></td><td>Wrong dose, frequency, route or duration</td><td>Metformin 500 mg copied from the admission list, but the discharge dose is 1000 mg</td></tr>
              <tr><td><strong>Wrong date or time</strong></td><td>A date does not match the record</td><td>Antibiotic "until 22 September" instead of 20 September</td></tr>
              <tr><td><strong>Wrong patient</strong></td><td>Text from another patient's record appears</td><td>Another patient's allergy copied into the summary</td></tr>
            </tbody>
          </table>
          <p>Rate each error by risk too. A wrong dose or side can harm the patient. A spelling mistake in a heading usually cannot. Report errors that could cause harm through your hospital's incident system as well.</p>
        </div>
        <div class="lc-card">
          <h3>Worked example: the September audit (made up)</h3>
          <p>Tarang's quality team audited 50 AI-assisted discharge summaries from the September medicine-ward pilot. Each summary was drafted by an approved tool and then checked and signed by a doctor.</p>
          <table class="lc-table">
            <thead><tr><th>Error type</th><th>Count</th><th>Details</th></tr></thead>
            <tbody>
              <tr><td>Missing details</td><td>5</td><td>No follow-up date (2), pending result not mentioned (2), allergy status blank (1)</td></tr>
              <tr><td>Made-up content</td><td>2</td><td>An examination finding that was not done; "counselled on insulin" when no counselling was recorded</td></tr>
              <tr><td>Dose errors</td><td>2</td><td>Old admission dose copied into discharge medicines (2)</td></tr>
              <tr><td>Wrong side</td><td>1</td><td>Left lung written instead of right</td></tr>
              <tr><td>Wrong date</td><td>1</td><td>Antibiotic end date 2 days too late</td></tr>
              <tr><td><strong>Total</strong></td><td><strong>11</strong></td><td>Found in 9 summaries (2 summaries had 2 errors each)</td></tr>
            </tbody>
          </table>
          <p>Two numbers tell the story. Put "Yes" or "No" for "any error" in C2:C51 and the error count per summary in D2:D51.</p>
          <pre><code>Share of summaries with an error:  =COUNTIF(C2:C51,"Yes")/COUNTA(C2:C51)   gives 9/50 = 18%
        Errors per 100 summaries:          =SUM(D2:D51)/COUNTA(D2:D51)*100         gives 11/50 x 100 = 22</code></pre>
          <p>In August, before AI, 14 of 50 summaries (28%) had a gap. So 18% looks better. But be careful. With only 50 summaries, a change of 5 summaries can happen by chance. Keep auditing each month before you decide. Also notice the <em>new</em> error types. August had no made-up content and no wrong side. AI changes which errors happen, so the checklist must look for them.</p>
        </div>
        <div class="lc-card">
          <h3>A review checklist to use before signing</h3>
          <pre><code>BEFORE YOU SIGN AN AI-ASSISTED DISCHARGE SUMMARY
        [ ] Right patient: name, age, UHID match on every page
        [ ] Diagnosis matches the reports, with the right SIDE and site
        [ ] Every sentence has a source; delete anything nobody did or said
        [ ] Allergy status filled in ("No known drug allergies" is an answer)
        [ ] Medicines match today's drug chart: name, dose, route, frequency,
            duration, and marked NEW / CHANGED / STOPPED
        [ ] Dates checked: admission, discharge, antibiotic end, follow-up
        [ ] Pending results named, with who will follow them up
        [ ] Follow-up date and warning signs (108 / 112) present
        [ ] Signed with name, registration number, date and time</code></pre>
          <p>An approved AI tool can also run this checklist as a second reader and list possible problems. The doctor still checks each item against the source.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: name the error type</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">These made-up errors were found in the Tarang audit. Sort each one by its error type.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="missing" data-label="Missing detail"></div>
              <div data-sorter-target="bucket" data-bucket="madeup" data-label="Made-up content"></div>
              <div data-sorter-target="bucket" data-bucket="side" data-label="Wrong side"></div>
              <div data-sorter-target="bucket" data-bucket="dose" data-label="Dose error"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="missing" data-why="A true and important fact is left out, so nobody knows to look for the result.">The final blood culture report is pending, but the summary does not say so</li>
              <li data-bucket="missing" data-why="The field is empty. A blank is not the same as 'no known drug allergies'.">The allergy field is blank</li>
              <li data-bucket="madeup" data-why="No ECG was done. The AI added a test result that does not exist.">"ECG: normal sinus rhythm" in a patient who had no ECG</li>
              <li data-bucket="madeup" data-why="Nothing in the notes says this happened. The AI filled a gap with a likely-sounding sentence.">"Patient counselled on insulin use" with no record of counselling</li>
              <li data-bucket="side" data-why="The X-ray shows the right lower lobe. A side mix-up can lead to wrong follow-up.">"Left lower lobe consolidation" when the X-ray report says right</li>
              <li data-bucket="dose" data-why="The dose was changed to 1000 mg. The old dose was copied from admission.">Discharge medicine list says metformin 500 mg twice daily; the chart says 1000 mg</li>
              <li data-bucket="dose" data-why="The limit of 4 doses in 24 hours is missing, so the patient could take too much.">"Paracetamol 650 mg when needed", with no maximum per day</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to audit a made-up AI draft against the source facts and log each error by type. Then check its work: did it miss anything, or invent an error?</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a clinical documentation auditor at [a hospital in India]. Everything below is made up for training.

        Compare the DRAFT with the SOURCE FACTS line by line. Log every error in a table: Draft text | Correct text from source | Error type (missing detail, made-up content, wrong side, dose error, wrong date, wrong patient) | Risk (high, medium, low) and why.
        Rules: judge only against the source facts. Do not add new clinical facts. If something cannot be checked, say "cannot check".
        Then give: number of errors, and the one checklist item that would have caught most of them.

        SOURCE FACTS: Mr P K, 58. Right lower lobe pneumonia on X-ray. No known drug allergies. Discharge medicines: cefuroxime axetil 500 mg twice daily until 20 Sept 2026; metformin 1000 mg twice daily (changed from 500 mg); glimepiride 1 mg once daily. Blood culture final report pending. Follow-up 25 Sept 2026.

        DRAFT: Left lower lobe pneumonia, treated and resolved. Allergies: none. Chest clear on discharge. Cefuroxime 500 mg twice daily until 22 Sept. Metformin 500 mg twice daily. Glimepiride 1 mg once daily. Follow-up in 1 week.</pre>
            <ul class="ai-try-checks">
              <li>It finds the wrong side (left instead of right) and the wrong end date (22 instead of 20 September).</li>
              <li>It finds the metformin dose error and the missing pending blood culture.</li>
              <li>It marks "chest clear on discharge" as made-up or "cannot check".</li>
              <li>It notes "follow-up in 1 week" has no exact date, but does not call it wrong.</li>
              <li>It does not invent errors that are not in the draft.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> You cannot improve what you do not measure. A simple monthly audit of a random sample, checked against the source, shows which errors happen and how often. AI adds new error types, such as made-up content and wrong side. Your checklist and audits must look for them every time.
        </div>
      HTML
      starter_code: nil
    },
    14 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-health">Healthcare</div>
          <h1 class="lc-title">Bringing AI Documentation into a Clinic</h1>
        </div>
        <p class="lc-lead">Buying an AI tool is easy. Using it safely every day is the hard part. A good start is a small pilot: a short, planned trial in one ward or one clinic, with clear measures and clear stop rules. In this lesson you will learn how to plan a pilot, train staff, approve templates and write simple policies. You will also learn how to measure time saved and error rates honestly. You will work through made-up numbers from Tarang hospital and Nirmal Family Clinic. The main lesson: count the time spent checking AI drafts, not only the time saved writing them.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="A pilot timeline: plan, train, run for 4 weeks, measure, and decide to scale, change or stop. Below, a bar comparison of the made-up time for one discharge summary: before AI 25 minutes of writing; with AI 13 minutes, made of 2 minutes of AI drafting and 11 minutes of doctor checking. 12 minutes are saved per summary.">
            <defs><marker id="md14a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="14" y="16" width="132" height="54" rx="27" fill="#27274e" stroke="#3b82f6"/>
              <text x="80" y="39" font-weight="700">Plan</text>
              <text x="80" y="57" font-size="11" fill="#9b99b8">aims, measures</text>
              <rect x="166" y="16" width="132" height="54" rx="27" fill="#27274e" stroke="#8b5cf6"/>
              <text x="232" y="39" font-weight="700">Train</text>
              <text x="232" y="57" font-size="11" fill="#9b99b8">staff, templates</text>
              <rect x="318" y="16" width="132" height="54" rx="27" fill="#27274e" stroke="#f59e0b"/>
              <text x="384" y="39" font-weight="700">Run 4 weeks</text>
              <text x="384" y="57" font-size="11" fill="#9b99b8">one ward only</text>
              <rect x="470" y="16" width="132" height="54" rx="27" fill="#27274e" stroke="#ec4899"/>
              <text x="536" y="39" font-weight="700">Measure</text>
              <text x="536" y="57" font-size="11" fill="#9b99b8">time and errors</text>
              <rect x="622" y="16" width="132" height="54" rx="27" fill="#27274e" stroke="#10b981" stroke-width="2"/>
              <text x="688" y="39" font-weight="700">Decide</text>
              <text x="688" y="57" font-size="11" fill="#9b99b8">scale, change, stop</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#md14a)">
                <line x1="147" y1="43" x2="163" y2="43"/><line x1="299" y1="43" x2="315" y2="43"/><line x1="451" y1="43" x2="467" y2="43"/><line x1="603" y1="43" x2="619" y2="43"/>
              </g>
              <rect x="14" y="92" width="740" height="196" rx="12" fill="#1f1f44" stroke="#4b4a78"/>
              <text x="384" y="116" font-weight="700">One discharge summary at Tarang (made up): doctor time</text>
              <g font-size="12">
                <text x="34" y="156" text-anchor="start">Before AI</text>
                <rect x="140" y="142" width="500" height="22" rx="4" fill="#ef4444"/>
                <text x="390" y="157" fill="#ffffff">writing: 25 min</text>
                <text x="672" y="157">25 min</text>
                <text x="34" y="206" text-anchor="start">With AI</text>
                <rect x="140" y="192" width="40" height="22" rx="4" fill="#8b5cf6"/>
                <rect x="180" y="192" width="220" height="22" rx="4" fill="#10b981"/>
                <text x="290" y="207" fill="#0b1020">checking: 11 min</text>
                <text x="432" y="207">13 min</text>
                <text x="160" y="232" font-size="11" fill="#c4b5fd">AI draft 2 min</text>
                <text x="384" y="270" fill="#6ee7b7">Saved: 25 - 13 = 12 min per summary (48%)</text>
              </g>
            </g>
          </svg>
          <figcaption>The time saved is what is left after the checking time. A pilot must measure both.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>A one-page pilot plan</h3>
          <p>Dr Farida Shaikh, the medical superintendent at Tarang, wrote this made-up plan before the pilot started. A short plan that everyone reads is better than a long one that nobody reads.</p>
          <pre><code>PILOT: AI-assisted discharge summaries (made up)
        Aim:        Cut doctor time per summary. Do not increase errors.
        Scope:      Medicine ward only, about 12 discharges a day, 4 weeks.
        Tool:       Hospital-approved tool only. Contract checked by IT and legal.
        People:     Owner Dr Farida Shaikh. Lead Dr Sameer Kale.
                    Nursing Sister Mary Thomas. Data Vikram. Coding Asha.
        Training:   1-hour session + practice on made-up patients first.
        Templates:  Approved discharge summary template, with "Not documented"
                    for any field without a source.
        Rule:       AI drafts. The treating doctor checks and signs every summary.
        Measures:   Minutes per summary (draft + check), discharge-to-summary
                    time, audit error rate, coding and claim queries, staff views.
        Stop rules: Any wrong-patient error, or any error that harms a patient:
                    pause and review. Error rate above the baseline 28% in the
                    monthly audit: pause and review.
        Decision:   Week 5 meeting: scale, change or stop.</code></pre>
        </div>
        <div class="lc-card">
          <h3>Worked numbers: time saved at Tarang</h3>
          <p>Before AI, a resident took 25 minutes per summary. In the made-up pilot, the doctors timed themselves. The AI draft took about 2 minutes, and checking and fixing took about 11 minutes.</p>
          <table class="lc-table">
            <thead><tr><th>Measure</th><th>Made-up result</th><th>How it is worked out</th></tr></thead>
            <tbody>
              <tr><td>Time per summary with AI</td><td>13 min</td><td>2 min draft + 11 min checking</td></tr>
              <tr><td>Saved per summary</td><td>12 min (48%)</td><td>25 - 13 = 12; 12 ÷ 25 = 48%</td></tr>
              <tr><td>Saved per day in the pilot ward</td><td>2 h 24 min</td><td>12 summaries x 12 min = 144 min</td></tr>
              <tr><td>Saved per day if all 40 discharges used it</td><td>8 h</td><td>40 x 12 min = 480 min</td></tr>
              <tr><td>Doctor time still needed for 40 summaries</td><td>8 h 40 min</td><td>40 x 13 min = 520 min (was 1,000 min)</td></tr>
              <tr><td>Discharge decided to summary signed</td><td>125 min (was 190)</td><td>65 min faster; 65 ÷ 190 = about 34%</td></tr>
              <tr><td>Audit: summaries with an error</td><td>18% (was 28%)</td><td>9 of 50 vs 14 of 50; a small sample, keep checking</td></tr>
            </tbody>
          </table>
          <p>In a spreadsheet, put old minutes in B2, new minutes in B3 and summaries per day in B4:</p>
          <pre><code>Minutes saved per day:   =(B2-B3)*B4      gives (25-13)*40 = 480
        Share of time saved:     =(B2-B3)/B2      gives 12/25 = 48%</code></pre>
          <p>Claim queries take weeks to show a change, because claims settle slowly. Vikram will compare the next few months with the August figure of 15%. Do not claim a result you have not measured yet.</p>
        </div>
        <div class="lc-card">
          <h3>Worked numbers: a small clinic</h3>
          <p>At Nirmal Family Clinic, Dr Arvind Joshi sees about 40 patients a day, 6 days a week. Typing a note took 4 minutes, or 160 minutes a day. In his made-up pilot with an approved AI scribe, about 36 patients a day agreed to recording. The other 4 said no, so he typed their notes as before. Checking a scribe draft took him about 1.5 minutes.</p>
          <table class="lc-table">
            <thead><tr><th>Measure</th><th>Made-up result</th><th>How it is worked out</th></tr></thead>
            <tbody>
              <tr><td>Note time per day with the scribe</td><td>70 min</td><td>36 x 1.5 = 54 min, plus 4 x 4 = 16 min</td></tr>
              <tr><td>Saved per day</td><td>90 min (about 56%)</td><td>160 - 70 = 90; 90 ÷ 160 = 56.25%</td></tr>
              <tr><td>Saved per week</td><td>9 hours</td><td>90 x 6 = 540 min</td></tr>
            </tbody>
          </table>
          <p>Pinky, the receptionist, now explains the scribe when patients arrive, in Hindi or English. Patients who say no get the same care. Their notes are typed as before.</p>
        </div>
        <div class="lc-card">
          <h3>Policies to write before you scale</h3>
          <ul class="lc-list">
            <li><strong>Approved tools list:</strong> which tools may touch patient data, and a clear ban on public tools for real patients.</li>
            <li><strong>Consent:</strong> how staff explain recording, how a "yes" or "no" is written in the note, and that saying no never changes care.</li>
            <li><strong>Sign-off:</strong> who checks and signs each document type. AI output is never final on its own.</li>
            <li><strong>Data:</strong> how long audio and drafts are kept, who can see them, and how a data leak is reported under the DPDP Act.</li>
            <li><strong>Error reporting:</strong> how to log AI errors, and who reviews the log each week.</li>
            <li><strong>Vendor checks:</strong> the contract, where data is stored, whether data is used for training, and the tool's regulatory status. Software that diagnoses or suggests treatment can be a medical device under India's Medical Devices Rules, 2017.</li>
          </ul>
          <p>Ask your legal and quality teams to review these policies. This is general education, not legal advice.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: run the pilot in the right order</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put Dr Farida Shaikh's pilot steps in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Measure the baseline: minutes per summary, turnaround time and audit error rate</li>
              <li data-order="2">Check the tool's contract, data storage and regulatory status with IT and legal</li>
              <li data-order="3">Approve the template and write the stop rules</li>
              <li data-order="4">Train the ward team on made-up patients first</li>
              <li data-order="5">Run the pilot on one ward for 4 weeks, logging time and errors</li>
              <li data-order="6">Audit a random sample of signed summaries against the source</li>
              <li data-order="7">Compare with the baseline and decide: scale, change or stop</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Ask AI to draft a one-page pilot plan for your own ward or clinic, with measures and worked numbers.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a quality and operations adviser for [a 30-bed ward in a hospital in India]. Help me plan a 4-week pilot of a hospital-approved AI tool for [discharge summaries].

        Baseline (made up; change to your own numbers): [12] documents a day, [25] minutes each, [28%] with at least one gap in the last audit.

        Write a one-page plan with these headings: Aim, Scope, Tool and contract checks, People and roles, Training, Template, Sign-off rule, Measures, Stop rules, Decision date.

        Then:
        1. Show how to measure time saved. Count AI drafting time AND doctor checking time. Give a worked example using the baseline, with a guessed new time clearly labelled as a guess.
        2. Show how to measure error rate with a monthly random audit of 50 documents, with a spreadsheet formula.
        3. List 3 reasons the results could look better than they really are.

        Rules: AI only drafts; a named clinician checks and signs. No real patient data in public tools. Simple English.</pre>
            <ul class="ai-try-checks">
              <li>The time measure includes checking time, not only drafting time.</li>
              <li>The worked numbers add up; check each sum yourself.</li>
              <li>There are clear stop rules, for example for wrong-patient or harmful errors.</li>
              <li>It warns that a small sample or early weeks can mislead.</li>
              <li>A named clinician signs every document.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Start small, measure honestly and be ready to stop. Run a pilot in one ward, with a baseline, clear stop rules and a monthly audit. It shows whether AI really saves time without adding errors. Always count the checking time, and write the policies before you scale.
        </div>
      HTML
      starter_code: nil
    },
    15 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-health">Healthcare</div>
          <h1 class="lc-title">Capstone: A Documentation Toolkit for Tarang Hospital</h1>
        </div>
        <p class="lc-lead">In this capstone you will put the whole course together. You will build a documentation toolkit for Tarang Multispeciality Hospital: six safe prompt templates, each with the checks that must happen before anyone signs. You will use one made-up patient, Mr Prakash Kulkarni, from admission to follow-up. The toolkit covers a SOAP progress note, a discharge summary, a referral letter, a patient explanation, coding suggestions and a quality checklist. The rules stay the same in every part. Use an approved tool and made-up or minimum data. Check every line against the source, and a named person signs. This is education, not medical advice.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 286" role="img" aria-label="A toolkit board for the made-up patient Mr Kulkarni. Six tiles: SOAP progress note signed by the ward doctor, discharge summary signed by the consultant, referral letter signed by the referring doctor, patient explanation checked by a clinician, coding suggestions checked by the coder, and a quality checklist used by the doctor and auditor. A bar at the bottom lists the four rules for every tile.">
            <defs><marker id="md15a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="190" y="10" width="380" height="36" rx="18" fill="#27274e" stroke="#ef4444" stroke-width="2"/>
              <text x="380" y="33" font-weight="700">Case: Mr Kulkarni, 58 (made up)</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#md15a)">
                <line x1="300" y1="48" x2="135" y2="64"/><line x1="380" y1="48" x2="380" y2="64"/><line x1="460" y1="48" x2="625" y2="64"/>
              </g>
              <rect x="20" y="68" width="230" height="58" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="135" y="92" font-weight="700">1. SOAP progress note</text>
              <text x="135" y="112" font-size="11" fill="#9b99b8">signed by the ward doctor</text>
              <rect x="265" y="68" width="230" height="58" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="380" y="92" font-weight="700">2. Discharge summary</text>
              <text x="380" y="112" font-size="11" fill="#9b99b8">signed by the consultant</text>
              <rect x="510" y="68" width="230" height="58" rx="10" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="625" y="92" font-weight="700">3. Referral letter</text>
              <text x="625" y="112" font-size="11" fill="#9b99b8">signed by the referring doctor</text>
              <rect x="20" y="140" width="230" height="58" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="135" y="164" font-weight="700">4. Patient explanation</text>
              <text x="135" y="184" font-size="11" fill="#9b99b8">checked by a clinician</text>
              <rect x="265" y="140" width="230" height="58" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="380" y="164" font-weight="700">5. Coding suggestions</text>
              <text x="380" y="184" font-size="11" fill="#9b99b8">checked by the coder, Asha</text>
              <rect x="510" y="140" width="230" height="58" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="625" y="164" font-weight="700">6. Quality checklist</text>
              <text x="625" y="184" font-size="11" fill="#9b99b8">used by doctor and auditor</text>
              <rect x="20" y="216" width="720" height="56" rx="10" fill="#27274e" stroke="#10b981" stroke-width="2"/>
              <text x="380" y="239" font-weight="700" fill="#6ee7b7">Rules for every tile</text>
              <text x="380" y="259" font-size="12">Approved tool · made-up or minimum data · check against the source · named sign-off</text>
            </g>
          </svg>
          <figcaption>Six tools, one patient, the same four rules. The toolkit is only safe if every tile ends with a human check.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The toolkit at a glance</h3>
          <table class="lc-table">
            <thead><tr><th>Tool</th><th>Source it uses</th><th>The check that matters most</th><th>Signed or approved by</th></tr></thead>
            <tbody>
              <tr><td><strong>1. SOAP progress note</strong></td><td>Ward-round notes, vitals chart, results</td><td>No finding that was not seen; plan changes have reasons</td><td>Dr Neha Pawar</td></tr>
              <tr><td><strong>2. Discharge summary</strong></td><td>All notes, drug chart, reports</td><td>Medicines match the last drug chart; pending results named</td><td>Dr Sameer Kale</td></tr>
              <tr><td><strong>3. Referral letter</strong></td><td>Signed discharge summary</td><td>A clear question for the receiving doctor</td><td>Dr Sameer Kale</td></tr>
              <tr><td><strong>4. Patient explanation</strong></td><td>Signed discharge summary</td><td>Same medicines, dates and warning signs, in plain words</td><td>A clinician who reads the language</td></tr>
              <tr><td><strong>5. Coding suggestions</strong></td><td>Signed discharge summary</td><td>WHO ICD-10 only; code only what is documented</td><td>Asha</td></tr>
              <tr><td><strong>6. Quality checklist</strong></td><td>The draft plus the source records</td><td>Every item ticked against the source, not from memory</td><td>The signing doctor; the auditor monthly</td></tr>
            </tbody>
          </table>
          <p>Notice the order. Tools 3, 4 and 5 start from the <em>signed</em> discharge summary. If the summary is wrong, every document built from it will be wrong too.</p>
        </div>
        <div class="lc-card">
          <h3>Worked example: pieces of Mr Kulkarni's toolkit output</h3>
          <p><strong>1. SOAP progress note, day 4 (17 Sept), after the doctor's check:</strong></p>
          <pre><code>S: Not documented on the ward round. [Dr Pawar adds the patient's own words]
        O: No fever for over 24 hours. Pulse 84/min, RR 18/min. Creatinine 0.9 mg/dL.
           Glucose 130-190 mg/dL. Sputum culture: normal throat flora.
        A: Community-acquired pneumonia, right lower lobe, improving.
           Type 2 diabetes, glucose improving.
        P: IV ceftriaxone changed to cefuroxime axetil 500 mg twice daily.
           Metformin restarted; insulin stopped from this evening.</code></pre>
          <p><strong>2. Discharge medicines, checked against the 18 Sept drug chart:</strong></p>
          <pre><code>Cefuroxime axetil 500 mg, twice daily after food, until evening of 20 Sept 2026  NEW
        Metformin 1000 mg, twice daily after breakfast and dinner  CHANGED (was 500 mg)
        Glimepiride 1 mg, once daily before breakfast  UNCHANGED
        Paracetamol 650 mg, only if fever or pain, max 4 tablets in 24 hours  NEW
        Stopped: insulin, enoxaparin (hospital use only)
        Pending: final blood culture report (due 19 Sept); ward will phone if positive</code></pre>
          <p><strong>3. Referral letter, opening lines:</strong> "Please see Mr Kulkarni for a diabetes diet and glucose plan. His HbA1c is 9.1%. He has just recovered from pneumonia. Metformin was increased to 1000 mg twice daily at discharge."</p>
          <p><strong>4. Patient explanation, in simple English:</strong> "You had a lung infection called pneumonia. Take the antibiotic tablet twice a day until the evening of 20 September. Your metformin dose is now bigger: 1000 mg twice a day. Come back or call 108 or 112 if the fever comes back, or you feel breathless or confused."</p>
          <p><strong>5. Coding suggestions after Asha's review:</strong> J18.9 Pneumonia, unspecified, and E11.9 Type 2 diabetes mellitus without complications. The pending culture is noted, so she checks again if the doctor updates the diagnosis.</p>
        </div>
        <div class="lc-card">
          <h3>Tool 6: the master quality checklist</h3>
          <pre><code>TARANG DOCUMENTATION TOOLKIT: CHECK BEFORE SIGNING (made up, v1.0)
        Privacy   [ ] Approved tool only   [ ] Minimum data   [ ] Consent noted if recorded
        Patient   [ ] Right name, age, UHID on every page
        Facts     [ ] Every line has a source   [ ] Nothing added   [ ] Side and site correct
        Medicines [ ] Match the drug chart   [ ] Dose, route, frequency, duration
                  [ ] NEW / CHANGED / STOPPED marked   [ ] Allergy status written
        Dates     [ ] Admission, discharge, antibiotic end and follow-up checked
        Safety    [ ] Pending results and who follows them   [ ] Warning signs, 108 / 112
        Codes     [ ] WHO ICD-10   [ ] Only documented diagnoses   [ ] Queries are neutral
        Patient   [ ] Plain-language version matches the signed summary
        Sign-off  [ ] Name, registration number, date, time</code></pre>
          <p>Keep the toolkit safe over time. Give it one owner, Dr Farida Shaikh. Put a version number on every template. Review it every 3 months with the audit and error log results. When a template changes, retrain the team. Store the toolkit inside hospital systems. Every prompt uses made-up examples only.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: one patient through the toolkit</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Dr Pawar uses template 2">In the approved tool: draft Mr Kulkarni's discharge summary from the attached notes, drug chart and reports. Use "Not documented" for gaps.</li>
              <li data-kind="answer" data-label="AI draft">A full draft. The medicine list says "Metformin 500 mg twice daily". The blood culture line says "no growth".</li>
              <li data-kind="warn" data-label="Two errors">Metformin was increased to 1000 mg. The blood culture said no growth at 48 hours only; the final report is still pending.</li>
              <li data-kind="check" data-label="Checklist, tool 6">Dr Pawar compares the draft with the 18 Sept drug chart and the lab system. She fixes both lines. Dr Kale reviews and signs.</li>
              <li data-kind="tool" data-label="Templates 3 and 4">From the signed summary, the tool drafts the referral letter and a Marathi patient explanation.</li>
              <li data-kind="check" data-label="Language check">A Marathi-speaking nurse checks the explanation. The medicines, dates and 108 / 112 advice match the summary.</li>
              <li data-kind="check" data-label="Template 5">Asha reviews the code suggestions. She keeps J18.9 and E11.9, and removes a suggested sepsis code.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Run a mini version of the toolkit on a made-up patient. Ask for three linked outputs, then check each one against the source facts.</p>
          <div class="lcw lcw-lab" data-controller="ai-try">
            <pre class="ai-try-prompt">You are a documentation assistant at [a hospital in India]. The patient below is made up for training. Use only these facts. Do not add findings, doses or dates.

        FACTS: Mr P K, 58. Community-acquired pneumonia, right lower lobe. Type 2 diabetes, HbA1c 9.1%. No known drug allergies. Discharge 18 Sept 2026. Medicines: cefuroxime axetil 500 mg twice daily after food until 20 Sept (new); metformin 1000 mg twice daily (changed from 500 mg); glimepiride 1 mg once daily before breakfast (unchanged). Final blood culture pending. Follow-up 25 Sept 2026. Warning signs: fever again, breathlessness, chest pain, confusion, glucose below 70 or above 300 mg/dL: call 108 or 112.

        Write:
        1. A short referral letter to [a diabetes educator], with one clear question.
        2. A patient explanation in simple [English], under 120 words.
        3. Suggested WHO ICD-10 codes, each with its supporting sentence.
        4. A check table: Item | In the facts? | Same in all 3 outputs? for every medicine, date, warning sign and the pending result.
        End with: "Drafts only. A clinician and a coder must check and sign."</pre>
            <ul class="ai-try-checks">
              <li>Metformin is 1000 mg twice daily in every output, and marked as changed.</li>
              <li>The antibiotic end date (20 Sept) and follow-up date (25 Sept) are the same everywhere.</li>
              <li>The codes are J18.9 and E11.9, with no sepsis or respiratory failure code.</li>
              <li>The patient explanation keeps the 108 / 112 warning signs in plain words.</li>
              <li>Nothing is added that is not in the facts, such as an ECG or a new medicine.</li>
            </ul>
          </div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A documentation toolkit is a set of approved templates plus the checks that go with them. AI makes the drafts fast. The toolkit keeps them safe. It needs one signed source and facts that match across every document. It codes only what is documented, and a named person checks and signs each one.
        </div>
      HTML
      starter_code: nil
    }
  }.freeze
end
